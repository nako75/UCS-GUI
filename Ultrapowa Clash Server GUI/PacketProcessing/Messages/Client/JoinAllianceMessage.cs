﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Threading.Tasks;
using Ultrapowa_Clash_Server_GUI.Core;
using Ultrapowa_Clash_Server_GUI.Helpers;
using Ultrapowa_Clash_Server_GUI.Logic;
using Ultrapowa_Clash_Server_GUI.Network;

namespace Ultrapowa_Clash_Server_GUI.PacketProcessing
{
    //Packet 14305
    class JoinAllianceMessage : Message
    {
        private long m_vAllianceId;

        public JoinAllianceMessage(Client client, BinaryReader br) : base (client, br)
        {
        }

        public override void Decode()
        {
            using (var br = new BinaryReader(new MemoryStream(GetData())))
            {
                m_vAllianceId = br.ReadInt64WithEndian();
            }
        }

        public override void Process(Level level)
        {
            var alliance = ObjectManager.GetAlliance(m_vAllianceId);
            if (alliance != null)
            {
                if(!alliance.IsAllianceFull())
                {
                    level.GetPlayerAvatar().SetAllianceId(alliance.GetAllianceId());
                    AllianceMemberEntry member = new AllianceMemberEntry(level.GetPlayerAvatar().GetId());
                    member.SetRole(1);
                    alliance.AddAllianceMember(member);

                    var joinAllianceCommand = new JoinAllianceCommand();
                    joinAllianceCommand.SetAlliance(alliance);
                    var availableServerCommandMessage = new AvailableServerCommandMessage(this.Client);
                    availableServerCommandMessage.SetCommandId(1);
                    availableServerCommandMessage.SetCommand(joinAllianceCommand);
                    PacketManager.ProcessOutgoingPacket(availableServerCommandMessage);
                    PacketManager.ProcessOutgoingPacket(new AllianceStreamMessage(this.Client, alliance));
                }
            }
        }
    }
}
