Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 327E52223F7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jul 2020 15:35:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DB62E8B0DE;
	Thu, 16 Jul 2020 13:35:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bha-FMywa34s; Thu, 16 Jul 2020 13:35:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D4A6F8ABA2;
	Thu, 16 Jul 2020 13:35:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 506AD1BF3EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 13:35:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 483C58A477
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 13:35:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aRZZYZJFr1A1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jul 2020 13:35:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 63EAD8A641
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 13:35:39 +0000 (UTC)
IronPort-SDR: LWdn1BWHhEJxFGF/YrDyup4gTNHP4l5wbuNzZ0ltndUcjIq0LVhcMI0Tai5JabMSqOA7ejura4
 M52Xlbwqjkzw==
X-IronPort-AV: E=McAfee;i="6000,8403,9683"; a="147366300"
X-IronPort-AV: E=Sophos;i="5.75,359,1589266800"; d="scan'208";a="147366300"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 06:35:38 -0700
IronPort-SDR: 6Ni2MmVqnXMnu5utNKMb/5dBVkfeWcD7q3Yizci6HiFWyb57pZdceM4xC3oWAWQFDVlhVIDRwD
 OijQZ6zm/pIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,359,1589266800"; d="scan'208";a="460474257"
Received: from dpdk51.sh.intel.com ([10.67.111.82])
 by orsmga005.jf.intel.com with ESMTP; 16 Jul 2020 06:35:37 -0700
From: Qi Zhang <qi.z.zhang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 16 Jul 2020 21:39:22 +0800
Message-Id: <20200716133938.46921-1-qi.z.zhang@intel.com>
X-Mailer: git-send-email 2.13.6
Subject: [Intel-wired-lan] [PATCH S48 v6 00/16] Support Advanced AVF features
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
Cc: qi.z.zhang@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The patchset add the backend code for below new advanced AVF features:
1. Flexible Description selection to offload metadata
2. FDIR filter rule adding / deleting.
3. Per flow configurable inputset RSS
besides support regular l3/l4 5 tuple inputset for FDIR and RSS, the
patchset added more protocol support which include GTP-U, L2TPv3, PFCF,
ESP, AH...

v6:
- fix couple bugs

v5:
- fix couple checkpatch warnings.
- rollback to for_each_set_bit in PATCH v4 03/16.

v4:
- fix coding style by removing unnecessary code wrap.
- decouple PATCH v2 10/14 that enable FDIR for VF into 3 patches:
  1) PATCH 10/16 focus on virtual channel message handle.
  2) PATCH 11/16 focus on pattern action parser.
  3) Enable new FDIR actions that only support VF.

v3:
- fix couple coding style issue and typo
- use devm alloc/free for cross function memory
- squash patch 11/16 , 12/16 into 10/16.

v2:
- fix typo in commit log. 

*** BLURB HERE ***

Qi Zhang (16):
  ice: Enable flexible descriptor RXDID querying and configuration
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

 drivers/net/ethernet/intel/ice/Makefile            |    2 +-
 drivers/net/ethernet/intel/ice/ice.h               |    6 +-
 drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c  |    4 +
 drivers/net/ethernet/intel/ice/ice_fdir.c          |  505 ++++-
 drivers/net/ethernet/intel/ice/ice_fdir.h          |   58 +
 drivers/net/ethernet/intel/ice/ice_flex_pipe.c     |  521 ++++-
 drivers/net/ethernet/intel/ice/ice_flex_pipe.h     |    3 +-
 drivers/net/ethernet/intel/ice/ice_flex_type.h     |   78 +
 drivers/net/ethernet/intel/ice/ice_flow.c          |  894 +++++++-
 drivers/net/ethernet/intel/ice/ice_flow.h          |  168 +-
 drivers/net/ethernet/intel/ice/ice_hw_autogen.h    |   22 +
 drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h     |   22 +
 drivers/net/ethernet/intel/ice/ice_lib.c           |   64 +-
 drivers/net/ethernet/intel/ice/ice_main.c          |   11 +-
 drivers/net/ethernet/intel/ice/ice_protocol_type.h |   10 +
 drivers/net/ethernet/intel/ice/ice_txrx.c          |    5 +
 drivers/net/ethernet/intel/ice/ice_type.h          |   18 +
 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 2208 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h |   49 +
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c   |  654 +++++-
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h   |   11 +
 include/linux/avf/virtchnl.h                       |  317 ++-
 22 files changed, 5555 insertions(+), 75 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h

-- 
2.13.6

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
