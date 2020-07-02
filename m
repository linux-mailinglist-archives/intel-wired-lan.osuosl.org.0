Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A796212FC1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Jul 2020 01:02:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2DF4F203DA;
	Thu,  2 Jul 2020 23:02:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u3fFbfnPV3xn; Thu,  2 Jul 2020 23:02:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2D2E7234BD;
	Thu,  2 Jul 2020 23:02:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 972E91BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 22:54:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 91B0A84B82
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 22:54:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id drBXrUsloEaQ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2020 22:54:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C7CA786B38
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 22:54:06 +0000 (UTC)
IronPort-SDR: 7JFz1mrrpOnnRztC3BBIQcb7qpw6MfFvr3m8ZBh53fqRjC8vtwtLmgm7xaL5D1KmxzGYvHXxl3
 72b55xBh1vvQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="146137125"
X-IronPort-AV: E=Sophos;i="5.75,305,1589266800"; d="scan'208";a="146137125"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 15:54:06 -0700
IronPort-SDR: EODXPqIpdHpsQOzxseJgKJcIp4iJHWk5IJk1Rgz/JiqWsDl0A+tyZMx4pl4LErF1qIJKr0Rl5P
 KbNbsteZ1riw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,305,1589266800"; d="scan'208";a="482168433"
Received: from dpdk51.sh.intel.com ([10.67.111.82])
 by fmsmga005.fm.intel.com with ESMTP; 02 Jul 2020 15:54:05 -0700
From: Qi Zhang <qi.z.zhang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  3 Jul 2020 06:57:51 +0800
Message-Id: <20200702225805.32167-1-qi.z.zhang@intel.com>
X-Mailer: git-send-email 2.13.6
X-Mailman-Approved-At: Thu, 02 Jul 2020 23:02:35 +0000
Subject: [Intel-wired-lan] [PATCH S48 v3 00/14] Support Advanced AVF features
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
patchset
added more protocol support which include GTP-U, L2TPv3, PFCF, ESP,
AH...

v3:
- fix couple coding style issue and typo
- use devm alloc/free for cross function memory
- squash patch 11/16 , 12/16 into 10/16.

v2:
- fix typo in commit log.

Qi Zhang (14):
  ice: Enable flexible descriptor RXDID querying and configuration
  ice: Add more basic protocol support for flow filter
  ice: Support non word aligned input set field
  ice: Add more advanced protocol support in flow filter
  ice: Support to separate GTP-U uplink and downlink
  ice: enhanced IPV4 and IPV6 flow filter
  ice: Enable RSS Configure for AVF
  ice: Support RSS configure removal for AVF
  ice: Add support for per VF ctrl VSI enabling
  ice: Support FDIR configure for AVF
  ice: Add non-IP Layer2 protocol FDIR filter for AVF
  ice: Add GTPU FDIR filter for AVF
  ice: Add more FDIR filter type for AVF
  ice: Check FDIR program status for AVF

 drivers/net/ethernet/intel/ice/Makefile            |    2 +-
 drivers/net/ethernet/intel/ice/ice.h               |    6 +-
 drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c  |    4 +
 drivers/net/ethernet/intel/ice/ice_fdir.c          |   29 +-
 drivers/net/ethernet/intel/ice/ice_fdir.h          |   39 +
 drivers/net/ethernet/intel/ice/ice_flex_pipe.c     |  524 ++++-
 drivers/net/ethernet/intel/ice/ice_flex_pipe.h     |    3 +-
 drivers/net/ethernet/intel/ice/ice_flex_type.h     |   78 +
 drivers/net/ethernet/intel/ice/ice_flow.c          |  890 +++++++-
 drivers/net/ethernet/intel/ice/ice_flow.h          |  168 +-
 drivers/net/ethernet/intel/ice/ice_hw_autogen.h    |   22 +
 drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h     |   22 +
 drivers/net/ethernet/intel/ice/ice_lib.c           |   64 +-
 drivers/net/ethernet/intel/ice/ice_main.c          |   11 +-
 drivers/net/ethernet/intel/ice/ice_protocol_type.h |   10 +
 drivers/net/ethernet/intel/ice/ice_txrx.c          |    5 +
 drivers/net/ethernet/intel/ice/ice_type.h          |   18 +
 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 2249 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h |   49 +
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c   |  660 +++++-
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h   |   11 +
 include/linux/avf/virtchnl.h                       |  324 ++-
 22 files changed, 5104 insertions(+), 84 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h

-- 
2.13.6

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
