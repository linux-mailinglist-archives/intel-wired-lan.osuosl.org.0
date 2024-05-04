Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A898BD39C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 May 2024 19:07:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6ECAE60764;
	Mon,  6 May 2024 17:07:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R9AKbCsLi4_S; Mon,  6 May 2024 17:07:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8E2D607E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715015270;
	bh=C8Kofj1ZyBHDmZYcmXojZWo3hu/d2i51pj5kFfkAZ8E=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CooVUSTkxZf8rOFmnxD+3UItsjNWTJqrjNG2iYhduYzuGE/tNrnnB06uOIOIiFLHp
	 Pl60NrfWTuBmeUeTrl2jNbrRBctUl/EDTCAxiS9gD34CCBn08g7ka0xDi0zeiAVDIs
	 83QzzBCYJgsCss2lGU6tyhg01bxfloFcw/m39xuHb4V5A8TA3f0FdEr/ppPs49Hz9X
	 o9bz5l5HBFRXkXd3S9T9npZMdAowouZ6fmBtlqHxhi38EccCKN6xHZdzYl8Q0NAKC6
	 cyncAVVTK/GVwus3u55fZT2DYfLcS6zVDT2CQeyBhEiCjMeox2/2S8aVh4cx2zJwmK
	 ihoRFpBx36Vgg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C8E2D607E3;
	Mon,  6 May 2024 17:07:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B3BBA1BF41C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 May 2024 13:29:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9D7A740669
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 May 2024 13:29:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DYnON8micusz for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 May 2024 13:29:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.83.229.9;
 helo=mail.ycharbi.fr; envelope-from=kernel.org-fo5k2w@ycharbi.fr;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B783040663
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B783040663
Received: from mail.ycharbi.fr (mail.ycharbi.fr [45.83.229.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B783040663
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 May 2024 13:29:11 +0000 (UTC)
Message-ID: <e16d08bf-49f6-4c51-85fa-7c368d1887b4@ycharbi.fr>
Date: Sat, 4 May 2024 15:29:05 +0200
MIME-Version: 1.0
To: jacob.e.keller@intel.com
References: <cbe874db-9ac9-42b8-afa0-88ea910e1e99@intel.com>
Content-Language: fr
From: kernel.org-fo5k2w@ycharbi.fr
In-Reply-To: <cbe874db-9ac9-42b8-afa0-88ea910e1e99@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 06 May 2024 17:07:49 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=ycharbi.fr; s=mail; 
 t=1714829345; bh=ZyrqETqdF+poEC5f456ZnYg7ybkSEECrPRnpUBISzmM=;
 h=Date:To:Cc:References:Subject:From:In-Reply-To:List-Unsubscribe:
 From;
 b=uWfK6I7h5pqVkYkBk7m2pV1B2MgG/toAqqVFKbdXjmRHEAkS8QHRXsvLarM3bqYre
 3Ci9QBKGTQczrKS+XtfCBFRG8bvcOD7L24vPDx13Q+fykJeLqzGBKzeVGUl7ZO3MgN
 s7SIK9nx4keCZuOwmcFEhfBSeZw9BrDLRCfy/Wr4IN/BpQGc/kx1l2pbhQ+odIYiBU
 Zn7uGsdsPp/EIdqLnoxMgMZxc+czVBMecFPWuDNG4m5nbX9o3PvZjf2ol6z5jgm975
 Vka+Lckwvel4jI+XABC+abROlkY7alR3qrNPXYfuP5nWMFj7vSxjYO3Y5n84qasYwB
 wHI2BIXBdeYZJBvayWhwVJbCgxKMb6eorDFsAPYZdQ0JUm4WOJT7qYbWVjA8VQ45Hf
 mG/6rGm9RDCfTAdEUDmnoNzC2ByOnQ+Q4HxsDNHoSwIni2BvZ1O7RaaoqDYXDKBc+T
 n18Jw8ojBd0y8XlC4mmXtP4RkaAsbMamUPraRxzHU4i/2KzMALodLaI7rgAWiatdsq
 upK8uoGwOKghsDmA2lwgRxOwk7NTSSUNHO44yyyqNPSd3HLkr6EnG4cVaqZyvaHvPg
 ph6sjRbdNWZZwpXuWSuQXZ3JSRUTKBeHfVhROuzi0+8JxCgfRBNSbN6qRmj11bL08E
 b4U2UnXs8O0yFqNixTWLF7qA=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=ycharbi.fr
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=ycharbi.fr header.i=@ycharbi.fr header.a=rsa-sha256
 header.s=mail header.b=uWfK6I7h
Subject: Re: [Intel-wired-lan] Non-functional ixgbe driver between Intel
 X553 chipset and Cisco switch via kernel >=6.1 under Debian
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: intel-wired-lan@lists.osuosl.org, kernel.org-fo5k2w@ycharbi.fr,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

 > I haven't touched the ixgbe driver and hardware in many years, but I'll
try to see what I can do to help.

Thank you very much for your reply. I'll answer you point by point.
I upgraded the Qoton to Debian 13 (testing) with kernel 6.6.15 (amd64) 
to be even more up to date.
A quick test with Fedora 40 shows the same problem.


 > So everything works when connected back to back with the Connectx-3. Ok.

Yes, exactly. Everything works as expected with the Connectx-3.


 > To confirm, you use the same cable in both cases?

Yes, the same cable. I tested two different models:
- 1 Cisco SFP-H10GB-CU1M (1 mètre)
- 1 Cisco SFP-H10GB-CU3M (3 mètres)

I'm only using the SFP-H10GB-CU3M for the rest for convenience.


 > But on the switch, the link is reported up until we bring the interface
 > up in ixgbe, and then link drops and stays down indefinitely?

After initial start-up of the Qotom :
# Port 10Gbe LEDs are green (please note that the MAC address OID - 
20:7c:14 - is registered to Qotom, not Intel).
ip link show dev eno1
7: eno1: <BROADCAST,MULTICAST> mtu 1500 qdisc noop state DOWN mode 
DEFAULT group default qlen 1000
     link/ether 20:7c:14:xx:xx:xx brd ff:ff:ff:ff:ff:ff
     altname enp11s0f0

# Cisco (Green LEDs - port mounted)
show running-config | section interface TenGigabitEthernet1/0/1
interface TenGigabitEthernet1/0/1
  no cdp enable

show interface status | include Te1/0/1
Te1/0/1   --- Vers Qotom --- connected    trunk        full    10G 
SFP-10GBase-CX1

show ip interface brief | include Te1/0/1 | Status
Interface              IP-Address      OK? Method Status                
Protocol
Te1/0/1                unassigned      YES unset up                    up

The Cisco and Qotom ports are lit and flashing as if they were 
exchanging ARP or STP traffic. A mirror port on the Cisco's 10Gbe 
interface, however, shows no frame exchange. I connected a PC to port 
g1/0/13 with Wireshark for this test.

monitor session 1 source interface t1/0/1 both
monitor session 1 destination interface g1/0/13

Port switch-on test :
# Starting up the Qotom 10Gbe network interface
ip link set eno1 up
[ 1770.476075] pps pps5: new PPS source ptp5
[ 1770.480784] ixgbe 0000:0b:00.0: registered PHC device on eno1
[ 1770.575496] ixgbe 0000:0b:00.0 eno1: detected SFP+: 3

# The ports on both devices switch off immediately.
# There's no going back:
ip link set eno1 down
[ 1831.329797] ixgbe 0000:0b:00.0: removed PHC on eno1

# The ports are always off on both sides even when unloading the ixgbe 
core module and plugging/unplugging the Cisco SFP-H10GB-CU3M :
rmmod ixgbe
[ 1872.503663] ixgbe 0000:0d:00.1: complete
[ 1872.547628] ixgbe 0000:0d:00.0: complete
[ 1872.591645] ixgbe 0000:0b:00.1: complete
[ 1872.631725] ixgbe 0000:0b:00.0: complete

A reboot is the only way to restore this port switch-on state.
On startup, the Cisco switch displays the following logs (the date is 
not configured):
Sep 30 14:33:00: %LINK-3-UPDOWN: Interface TenGigabitEthernet1/0/1, 
changed state to up
Sep 30 14:33:01: %LINEPROTO-5-UPDOWN: Line protocol on Interface 
TenGigabitEthernet1/0/1, changed state to up


 > But if you use the out-of-tree ixgbe driver everything works. Hmm.

Yes, that's exactly it. The driver on the Intel site works perfectly.

 > I tried checking the out-of-tree versions to see if there were any
 > obvious fixes. I didn't find anything. The code between the in-kernel
 > and out-of-tree is so different that it is hard to track down. At first
 > I wondered if this might be a regression due to recent changes to
 > support new hardware, but it appears that v6.1 is from before a lot of
 > that work went in.

If it helps, vesalius' post of December 3, 2023 on one of the links in 
my original post 
(https://forum.proxmox.com/threads/intel-x553-sfp-ixgbe-no-go-on-pve8.135129/post-612291) 
reports that the following commit has been suspected as the culprit: 
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?h=v6.1.63&id=565736048bd5f9888990569993c6b6bfdf6dcb6d

I quote the end of his message:
"An amazon employee states reverting this commit and recompiling the 
kernel allows their similar network hardware to use the current in-tree 
6.1 ixgbe driver. Otherwise as stated in the VyOS forum thread linked 
above compiling the linux kernel with the out-of-tree intel ixgbe driver 
5.19.6 works too."


 > 1. The kernel message logs from when you bring up the interface. You can
get this from dmesg or journalctl -k if you have systemd.

The kernel returns only the following three lines after a "ip link set 
eno1 up" :
mai 04 12:01:21 servyo kernel: pps pps5: new PPS source ptp5
mai 04 12:01:21 servyo kernel: ixgbe 0000:0b:00.0: registered PHC device 
on eno1
mai 04 12:01:21 servyo kernel: ixgbe 0000:0b:00.0 eno1: detected SFP+: 3

 > 2. "ethtool eno1" after you bring the interface up to see what it
reports about link

ethtool eno1
Settings for eno1:
     Supported ports: [ FIBRE ]
     Supported link modes:   10000baseT/Full
     Supported pause frame use: Symmetric
     Supports auto-negotiation: No
     Supported FEC modes: Not reported
     Advertised link modes:  10000baseT/Full
     Advertised pause frame use: Symmetric
     Advertised auto-negotiation: No
     Advertised FEC modes: Not reported
     Speed: Unknown!
     Duplex: Unknown! (255)
     Auto-negotiation: off
     Port: Direct Attach Copper
     PHYAD: 0
     Transceiver: internal
     Supports Wake-on: d
     Wake-on: d
         Current message level: 0x00000007 (7)
                                drv probe link
     Link detected: no


 > 3. "ethtool -S eno1" to see if any other stats are reported that might
help us isolate whats going on.

ethtool -S eno1
NIC statistics:
      rx_packets: 0
      tx_packets: 0
      rx_bytes: 0
      tx_bytes: 0
      rx_pkts_nic: 0
      tx_pkts_nic: 0
      rx_bytes_nic: 0
      tx_bytes_nic: 0
      lsc_int: 1
      tx_busy: 0
      non_eop_descs: 0
      rx_errors: 0
      tx_errors: 0
      rx_dropped: 0
      tx_dropped: 0
      multicast: 0
      broadcast: 0
      rx_no_buffer_count: 0
      collisions: 0
      rx_over_errors: 0
      rx_crc_errors: 0
      rx_frame_errors: 0
      hw_rsc_aggregated: 0
      hw_rsc_flushed: 0
      fdir_match: 0
      fdir_miss: 0
      fdir_overflow: 0
      rx_fifo_errors: 0
      rx_missed_errors: 0
      tx_aborted_errors: 0
      tx_carrier_errors: 0
      tx_fifo_errors: 0
      tx_heartbeat_errors: 0
      tx_timeout_count: 0
      tx_restart_queue: 0
      rx_length_errors: 0
      rx_long_length_errors: 0
      rx_short_length_errors: 0
      tx_flow_control_xon: 0
      rx_flow_control_xon: 0
      tx_flow_control_xoff: 0
      rx_flow_control_xoff: 0
      rx_csum_offload_errors: 0
      alloc_rx_page: 4088
      alloc_rx_page_failed: 0
      alloc_rx_buff_failed: 0
      rx_no_dma_resources: 0
      os2bmc_rx_by_bmc: 0
      os2bmc_tx_by_bmc: 0
      os2bmc_tx_by_host: 0
      os2bmc_rx_by_host: 0
      tx_hwtstamp_timeouts: 0
      tx_hwtstamp_skipped: 0
      rx_hwtstamp_cleared: 0
      tx_ipsec: 0
      rx_ipsec: 0
      fcoe_bad_fccrc: 0
      rx_fcoe_dropped: 0
      rx_fcoe_packets: 0
      rx_fcoe_dwords: 0
      fcoe_noddp: 0
      fcoe_noddp_ext_buff: 0
      tx_fcoe_packets: 0
      tx_fcoe_dwords: 0
      tx_queue_0_packets: 0
      tx_queue_0_bytes: 0
      tx_queue_1_packets: 0
      tx_queue_1_bytes: 0
      tx_queue_2_packets: 0
      tx_queue_2_bytes: 0
      tx_queue_3_packets: 0
      tx_queue_3_bytes: 0
      tx_queue_4_packets: 0
      tx_queue_4_bytes: 0
      tx_queue_5_packets: 0
      tx_queue_5_bytes: 0
      tx_queue_6_packets: 0
      tx_queue_6_bytes: 0
      tx_queue_7_packets: 0
      tx_queue_7_bytes: 0
      tx_queue_8_packets: 0
      tx_queue_8_bytes: 0
      tx_queue_9_packets: 0
      tx_queue_9_bytes: 0
      tx_queue_10_packets: 0
      tx_queue_10_bytes: 0
      tx_queue_11_packets: 0
      tx_queue_11_bytes: 0
      tx_queue_12_packets: 0
      tx_queue_12_bytes: 0
      tx_queue_13_packets: 0
      tx_queue_13_bytes: 0
      tx_queue_14_packets: 0
      tx_queue_14_bytes: 0
      tx_queue_15_packets: 0
      tx_queue_15_bytes: 0
      tx_queue_16_packets: 0
      tx_queue_16_bytes: 0
      tx_queue_17_packets: 0
      tx_queue_17_bytes: 0
      tx_queue_18_packets: 0
      tx_queue_18_bytes: 0
      tx_queue_19_packets: 0
      tx_queue_19_bytes: 0
      tx_queue_20_packets: 0
      tx_queue_20_bytes: 0
      tx_queue_21_packets: 0
      tx_queue_21_bytes: 0
      tx_queue_22_packets: 0
      tx_queue_22_bytes: 0
      tx_queue_23_packets: 0
      tx_queue_23_bytes: 0
      tx_queue_24_packets: 0
      tx_queue_24_bytes: 0
      tx_queue_25_packets: 0
      tx_queue_25_bytes: 0
      tx_queue_26_packets: 0
      tx_queue_26_bytes: 0
      tx_queue_27_packets: 0
      tx_queue_27_bytes: 0
      tx_queue_28_packets: 0
      tx_queue_28_bytes: 0
      tx_queue_29_packets: 0
      tx_queue_29_bytes: 0
      tx_queue_30_packets: 0
      tx_queue_30_bytes: 0
      tx_queue_31_packets: 0
      tx_queue_31_bytes: 0
      tx_queue_32_packets: 0
      tx_queue_32_bytes: 0
      tx_queue_33_packets: 0
      tx_queue_33_bytes: 0
      tx_queue_34_packets: 0
      tx_queue_34_bytes: 0
      tx_queue_35_packets: 0
      tx_queue_35_bytes: 0
      tx_queue_36_packets: 0
      tx_queue_36_bytes: 0
      tx_queue_37_packets: 0
      tx_queue_37_bytes: 0
      tx_queue_38_packets: 0
      tx_queue_38_bytes: 0
      tx_queue_39_packets: 0
      tx_queue_39_bytes: 0
      tx_queue_40_packets: 0
      tx_queue_40_bytes: 0
      tx_queue_41_packets: 0
      tx_queue_41_bytes: 0
      tx_queue_42_packets: 0
      tx_queue_42_bytes: 0
      tx_queue_43_packets: 0
      tx_queue_43_bytes: 0
      tx_queue_44_packets: 0
      tx_queue_44_bytes: 0
      tx_queue_45_packets: 0
      tx_queue_45_bytes: 0
      tx_queue_46_packets: 0
      tx_queue_46_bytes: 0
      tx_queue_47_packets: 0
      tx_queue_47_bytes: 0
      tx_queue_48_packets: 0
      tx_queue_48_bytes: 0
      tx_queue_49_packets: 0
      tx_queue_49_bytes: 0
      tx_queue_50_packets: 0
      tx_queue_50_bytes: 0
      tx_queue_51_packets: 0
      tx_queue_51_bytes: 0
      tx_queue_52_packets: 0
      tx_queue_52_bytes: 0
      tx_queue_53_packets: 0
      tx_queue_53_bytes: 0
      tx_queue_54_packets: 0
      tx_queue_54_bytes: 0
      tx_queue_55_packets: 0
      tx_queue_55_bytes: 0
      tx_queue_56_packets: 0
      tx_queue_56_bytes: 0
      tx_queue_57_packets: 0
      tx_queue_57_bytes: 0
      tx_queue_58_packets: 0
      tx_queue_58_bytes: 0
      tx_queue_59_packets: 0
      tx_queue_59_bytes: 0
      tx_queue_60_packets: 0
      tx_queue_60_bytes: 0
      tx_queue_61_packets: 0
      tx_queue_61_bytes: 0
      tx_queue_62_packets: 0
      tx_queue_62_bytes: 0
      tx_queue_63_packets: 0
      tx_queue_63_bytes: 0
      rx_queue_0_packets: 0
      rx_queue_0_bytes: 0
      rx_queue_1_packets: 0
      rx_queue_1_bytes: 0
      rx_queue_2_packets: 0
      rx_queue_2_bytes: 0
      rx_queue_3_packets: 0
      rx_queue_3_bytes: 0
      rx_queue_4_packets: 0
      rx_queue_4_bytes: 0
      rx_queue_5_packets: 0
      rx_queue_5_bytes: 0
      rx_queue_6_packets: 0
      rx_queue_6_bytes: 0
      rx_queue_7_packets: 0
      rx_queue_7_bytes: 0
      rx_queue_8_packets: 0
      rx_queue_8_bytes: 0
      rx_queue_9_packets: 0
      rx_queue_9_bytes: 0
      rx_queue_10_packets: 0
      rx_queue_10_bytes: 0
      rx_queue_11_packets: 0
      rx_queue_11_bytes: 0
      rx_queue_12_packets: 0
      rx_queue_12_bytes: 0
      rx_queue_13_packets: 0
      rx_queue_13_bytes: 0
      rx_queue_14_packets: 0
      rx_queue_14_bytes: 0
      rx_queue_15_packets: 0
      rx_queue_15_bytes: 0
      rx_queue_16_packets: 0
      rx_queue_16_bytes: 0
      rx_queue_17_packets: 0
      rx_queue_17_bytes: 0
      rx_queue_18_packets: 0
      rx_queue_18_bytes: 0
      rx_queue_19_packets: 0
      rx_queue_19_bytes: 0
      rx_queue_20_packets: 0
      rx_queue_20_bytes: 0
      rx_queue_21_packets: 0
      rx_queue_21_bytes: 0
      rx_queue_22_packets: 0
      rx_queue_22_bytes: 0
      rx_queue_23_packets: 0
      rx_queue_23_bytes: 0
      rx_queue_24_packets: 0
      rx_queue_24_bytes: 0
      rx_queue_25_packets: 0
      rx_queue_25_bytes: 0
      rx_queue_26_packets: 0
      rx_queue_26_bytes: 0
      rx_queue_27_packets: 0
      rx_queue_27_bytes: 0
      rx_queue_28_packets: 0
      rx_queue_28_bytes: 0
      rx_queue_29_packets: 0
      rx_queue_29_bytes: 0
      rx_queue_30_packets: 0
      rx_queue_30_bytes: 0
      rx_queue_31_packets: 0
      rx_queue_31_bytes: 0
      rx_queue_32_packets: 0
      rx_queue_32_bytes: 0
      rx_queue_33_packets: 0
      rx_queue_33_bytes: 0
      rx_queue_34_packets: 0
      rx_queue_34_bytes: 0
      rx_queue_35_packets: 0
      rx_queue_35_bytes: 0
      rx_queue_36_packets: 0
      rx_queue_36_bytes: 0
      rx_queue_37_packets: 0
      rx_queue_37_bytes: 0
      rx_queue_38_packets: 0
      rx_queue_38_bytes: 0
      rx_queue_39_packets: 0
      rx_queue_39_bytes: 0
      rx_queue_40_packets: 0
      rx_queue_40_bytes: 0
      rx_queue_41_packets: 0
      rx_queue_41_bytes: 0
      rx_queue_42_packets: 0
      rx_queue_42_bytes: 0
      rx_queue_43_packets: 0
      rx_queue_43_bytes: 0
      rx_queue_44_packets: 0
      rx_queue_44_bytes: 0
      rx_queue_45_packets: 0
      rx_queue_45_bytes: 0
      rx_queue_46_packets: 0
      rx_queue_46_bytes: 0
      rx_queue_47_packets: 0
      rx_queue_47_bytes: 0
      rx_queue_48_packets: 0
      rx_queue_48_bytes: 0
      rx_queue_49_packets: 0
      rx_queue_49_bytes: 0
      rx_queue_50_packets: 0
      rx_queue_50_bytes: 0
      rx_queue_51_packets: 0
      rx_queue_51_bytes: 0
      rx_queue_52_packets: 0
      rx_queue_52_bytes: 0
      rx_queue_53_packets: 0
      rx_queue_53_bytes: 0
      rx_queue_54_packets: 0
      rx_queue_54_bytes: 0
      rx_queue_55_packets: 0
      rx_queue_55_bytes: 0
      rx_queue_56_packets: 0
      rx_queue_56_bytes: 0
      rx_queue_57_packets: 0
      rx_queue_57_bytes: 0
      rx_queue_58_packets: 0
      rx_queue_58_bytes: 0
      rx_queue_59_packets: 0
      rx_queue_59_bytes: 0
      rx_queue_60_packets: 0
      rx_queue_60_bytes: 0
      rx_queue_61_packets: 0
      rx_queue_61_bytes: 0
      rx_queue_62_packets: 0
      rx_queue_62_bytes: 0
      rx_queue_63_packets: 0
      rx_queue_63_bytes: 0
      tx_pb_0_pxon: 0
      tx_pb_0_pxoff: 0
      tx_pb_1_pxon: 0
      tx_pb_1_pxoff: 0
      tx_pb_2_pxon: 0
      tx_pb_2_pxoff: 0
      tx_pb_3_pxon: 0
      tx_pb_3_pxoff: 0
      tx_pb_4_pxon: 0
      tx_pb_4_pxoff: 0
      tx_pb_5_pxon: 0
      tx_pb_5_pxoff: 0
      tx_pb_6_pxon: 0
      tx_pb_6_pxoff: 0
      tx_pb_7_pxon: 0
      tx_pb_7_pxoff: 0
      rx_pb_0_pxon: 0
      rx_pb_0_pxoff: 0
      rx_pb_1_pxon: 0
      rx_pb_1_pxoff: 0
      rx_pb_2_pxon: 0
      rx_pb_2_pxoff: 0
      rx_pb_3_pxon: 0
      rx_pb_3_pxoff: 0
      rx_pb_4_pxon: 0
      rx_pb_4_pxoff: 0
      rx_pb_5_pxon: 0
      rx_pb_5_pxoff: 0
      rx_pb_6_pxon: 0
      rx_pb_6_pxoff: 0
      rx_pb_7_pxon: 0
      rx_pb_7_pxoff: 0


 > Do you happen to know if any particular in-kernel driver version worked?
 > It would help limit the search for regressing commits.

I can't retrieve the driver version itself via a “modinfo ixgbe” (no 
field mentions it) but the driver built into Debian 11 kernel 
5.10.0-10-amd64 works perfectly. Debian 12's 6.1.76-amd64 and Debian 
13's 6.6.15-amd64 are problematic. If you have a method of retrieving 
more precise information, I'd be delighted to provide it.
The problem therefore “spread” between the release of Linux >5.10 and >=6.1.

On Linux 5.10.0-10, an ethtool returns this (the port works):
ethtool eno1
Settings for eno1:
     Supported ports: [ FIBRE ]
     Supported link modes:   10000baseT/Full
     Supported pause frame use: Symmetric
     Supports auto-negotiation: No
     Supported FEC modes: Not reported
     Advertised link modes:  10000baseT/Full
     Advertised pause frame use: Symmetric
     Advertised auto-negotiation: No
     Advertised FEC modes: Not reported
     Speed: 10000Mb/s
     Duplex: Full
     Auto-negotiation: off
     Port: Direct Attach Copper
     PHYAD: 0
     Transceiver: internal
     Supports Wake-on: d
     Wake-on: d
         Current message level: 0x00000007 (7)
                                drv probe link
     Link detected: yes


 > Ideally, if you could use git bisect on the setup that could
 > efficiently locate what regressed the behavior.

I really want to, but I have no idea how to go about it. Can you write 
me the command lines to satisfy your request?


Best regards.

