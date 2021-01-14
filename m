Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 87BB22F5FD1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Jan 2021 12:29:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 01ABB86BBE;
	Thu, 14 Jan 2021 11:29:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qMArR-8-+7QW; Thu, 14 Jan 2021 11:29:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CC0EE86BC0;
	Thu, 14 Jan 2021 11:29:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1B12E1BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 11:29:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 16FF786BAF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 11:29:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CaSBFSwUNxZF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Jan 2021 11:29:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1FDB286BB5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 11:29:05 +0000 (UTC)
IronPort-SDR: WvpMRKZEWBrFr2GNVhEo1ZIpWd0agkxTsZkWQDGIokgp32aTIJkOP+3M54fyIc9HPK7CFLorNO
 Qhlx/DBYpDFA==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="166022116"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="166022116"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 03:29:01 -0800
IronPort-SDR: G/QikLsVi1hbeUYjGox2Hnzh05jcu7lIzSnqGDxvrRQtq49YeNavGFUUFVfSNgC/vJNo39YRtI
 +oiga3T2hp/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="424919443"
Received: from npg-dpdk-haiyue-3.sh.intel.com ([10.67.118.237])
 by orsmga001.jf.intel.com with ESMTP; 14 Jan 2021 03:29:00 -0800
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 14 Jan 2021 19:12:50 +0800
Message-Id: <20210114111310.97121-1-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [Patch v1 00/20] Enable Intel VF flow director
 with DDP
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
Cc: cunming.liang@intel.com, qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The Intel E810 Series supports a programmable pipeline for a domain
specific protocols classification, for example GTP by Dynamic Device
Personalization (DDP) profile.

The E810 PF has introduced flex-bytes support by ethtool user-def option
allowing for packet deeper matching based on an offset and value for DDP
usage.

For making VF also benefit from this flexible protocol classification, some
new virtchnl messages are defined and handled by PF, so VF can query this
new flow director capability, and use ethtool with extending the user-def
option to configure Rx flow classification.

The new user-def 0xAAAABBBBCCCCDDDD: BBBB is the 2 byte pattern while AAAA
corresponds to its offset in the packet. Similarly DDDD is the 2 byte
pattern with CCCC being the corresponding offset. The offset ranges from
0x0 to 0x1F7 (up to 504 bytes into the packet). The offset starts from
the beginning of the packet.

This feature can be used to allow customers to set flow director rules
for protocols headers that are beyond standard ones supported by ethtool
(e.g. PFCP or GTP-U).

Like for matching GTP-U's TEID value 0x10203040:
ethtool -N ens787f0v0 flow-type udp4 dst-port 2152 \
    user-def 0x002e102000303040 action 13

Haiyue Wang (5):
  iavf: Add framework to enable ethtool ntuple filters
  iavf: Support IPv4 Flow Director filters
  iavf: Support IPv6 Flow Director filters
  iavf: Support Ethernet Type Flow Director filters
  iavf: Enable flex-bytes support

Qi Zhang (15):
  ice: Add more basic protocol support for flow filter
  ice: Support non word aligned input set field
  ice: Add more advanced protocol support in flow filter
  ice: Support to separate GTP-U uplink and downlink
  ice: Enhanced IPv4 and IPv6 flow filter
  ice: Enable RSS Configure for AVF
  ice: Support RSS configure removal for AVF
  ice: Add support for per VF ctrl VSI enabling
  ice: Support FDIR configure for AVF
  ice: Add FDIR pattern action parser for VF
  ice: Add new actions support for VF FDIR
  ice: Add non-IP Layer2 protocol FDIR filter for AVF
  ice: Add GTPU FDIR filter for AVF
  ice: Add more FDIR filter type for AVF
  ice: Check FDIR program status for AVF

 drivers/net/ethernet/intel/iavf/Makefile      |    2 +-
 drivers/net/ethernet/intel/iavf/iavf.h        |   12 +
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |  631 +++++
 drivers/net/ethernet/intel/iavf/iavf_fdir.c   |  773 ++++++
 drivers/net/ethernet/intel/iavf/iavf_fdir.h   |  113 +
 drivers/net/ethernet/intel/iavf/iavf_main.c   |   27 +
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  195 ++
 drivers/net/ethernet/intel/ice/Makefile       |    2 +-
 drivers/net/ethernet/intel/ice/ice.h          |    5 +-
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c |    4 +
 drivers/net/ethernet/intel/ice/ice_fdir.c     |  505 +++-
 drivers/net/ethernet/intel/ice/ice_fdir.h     |   58 +
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |  528 +++-
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |    3 +-
 .../net/ethernet/intel/ice/ice_flex_type.h    |   78 +
 drivers/net/ethernet/intel/ice/ice_flow.c     |  817 +++++-
 drivers/net/ethernet/intel/ice/ice_flow.h     |  168 +-
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   19 +
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |   22 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |   64 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |   11 +-
 .../ethernet/intel/ice/ice_protocol_type.h    |   10 +
 drivers/net/ethernet/intel/ice/ice_txrx.c     |    5 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   18 +
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 2208 +++++++++++++++++
 .../ethernet/intel/ice/ice_virtchnl_fdir.h    |   49 +
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  546 +++-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |    8 +
 include/linux/avf/virtchnl.h                  |  301 +++
 29 files changed, 7098 insertions(+), 84 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_fdir.c
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_fdir.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h

-- 
2.30.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
