Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7558221AC4C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 03:03:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D5E2B2D403;
	Fri, 10 Jul 2020 01:02:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1zxttbBBmYxs; Fri, 10 Jul 2020 01:02:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4EE192DDCE;
	Fri, 10 Jul 2020 01:02:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D0BAD1BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 01:02:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C8CB689168
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 01:02:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S3vpRKWACwAs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 01:02:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 93C00880B2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 01:02:46 +0000 (UTC)
IronPort-SDR: mqHKAGUxuxtuNzCIZvI1ZQuFDAo3ITAIUtPa9+pXyh4dxCrv+vgKb7Qkt8qJq9P9YsaH7Ktmey
 vOuXK0ti5olA==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="209662981"
X-IronPort-AV: E=Sophos;i="5.75,332,1589266800"; d="scan'208";a="209662981"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 18:02:45 -0700
IronPort-SDR: Go9IjX5hdF+v0QYBKLghQm5F14QBa+dxngg3ovVC92gQRt3hxYbsJqxfaeg2Zx59O+1O3UH3GD
 GIxy/TKCBIgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,332,1589266800"; d="scan'208";a="458118841"
Received: from dpdk51.sh.intel.com ([10.67.111.82])
 by orsmga005.jf.intel.com with ESMTP; 09 Jul 2020 18:02:44 -0700
From: Qi Zhang <qi.z.zhang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 10 Jul 2020 09:06:28 +0800
Message-Id: <20200710010644.33817-1-qi.z.zhang@intel.com>
X-Mailer: git-send-email 2.13.6
Subject: [Intel-wired-lan] [PATCH S48 v5 00/16] Support Advanced AVF features
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
 drivers/net/ethernet/intel/ice/ice_fdir.c          |   29 +-
 drivers/net/ethernet/intel/ice/ice_fdir.h          |   39 +
 drivers/net/ethernet/intel/ice/ice_flex_pipe.c     |  521 ++++-
 drivers/net/ethernet/intel/ice/ice_flex_pipe.h     |    3 +-
 drivers/net/ethernet/intel/ice/ice_flex_type.h     |   78 +
 drivers/net/ethernet/intel/ice/ice_flow.c          |  867 +++++++-
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
 include/linux/avf/virtchnl.h                       |  323 ++-
 22 files changed, 5038 insertions(+), 76 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h

-- 
2.13.6

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
