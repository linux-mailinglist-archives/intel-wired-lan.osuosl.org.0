Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 537E22C1E56
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Nov 2020 07:37:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CDBFF85A22;
	Tue, 24 Nov 2020 06:37:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id THTIzHnNlakY; Tue, 24 Nov 2020 06:37:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B20E485A60;
	Tue, 24 Nov 2020 06:37:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C8F411BF31B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Nov 2020 06:37:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C451187150
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Nov 2020 06:37:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QLKPnx19R7-P for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Nov 2020 06:37:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DBC6587143
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Nov 2020 06:37:51 +0000 (UTC)
IronPort-SDR: 7u6tGNAunHSPNQzUo8Ma22BTOAbHeNf5I9TqD1tXyu/oXcFqOpZmk7IWI2r7wILULnLYEbF10q
 M50ZkJzZ6tFQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9814"; a="171994748"
X-IronPort-AV: E=Sophos;i="5.78,365,1599548400"; d="scan'208";a="171994748"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 22:37:50 -0800
IronPort-SDR: 5UoA/yEx5tXJVpkv2k0t9yvzTkMyf+6NE97VJeDk7vizZQzvqi0kfOj+S3M4uLW3DB7zVpG8eS
 Om1b0vY5HyCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,365,1599548400"; d="scan'208";a="361747149"
Received: from npg-dpdk-haiyue-3.sh.intel.com ([10.67.118.203])
 by fmsmga004.fm.intel.com with ESMTP; 23 Nov 2020 22:37:47 -0800
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Nov 2020 14:23:50 +0800
Message-Id: <20201124062410.6824-1-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC 00/20] Enable Intel VF flow director with DDP
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
Cc: cunming.liang@intel.com, qi.z.zhang@intel.com, kuba@kernel.org,
 davem@davemloft.net
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
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |  524 +++-
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |    3 +-
 .../net/ethernet/intel/ice/ice_flex_type.h    |   78 +
 drivers/net/ethernet/intel/ice/ice_flow.c     |  810 +++++-
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
 include/linux/avf/virtchnl.h                  |  293 +++
 29 files changed, 7087 insertions(+), 76 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_fdir.c
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_fdir.h
 create mode 100644 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h

-- 
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
