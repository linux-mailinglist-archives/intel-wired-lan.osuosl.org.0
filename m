Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B507341043
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Mar 2021 23:19:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB52C82B24;
	Thu, 18 Mar 2021 22:19:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MezdFzFPKquJ; Thu, 18 Mar 2021 22:19:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9077082A8D;
	Thu, 18 Mar 2021 22:19:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 36DE51BF2BB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Mar 2021 22:19:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2AF6146E38
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Mar 2021 22:19:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wlFaZPT9Wums for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Mar 2021 22:19:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 08FA94433C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Mar 2021 22:19:00 +0000 (UTC)
IronPort-SDR: P0EEMMTSSKmoQ+K/WQIePXIqozB+yKQdPBSfOmcJ/Ce3utY3MK5C96+PI1BIn8hxCKx8Y68rMn
 30t0ZZE06Y0w==
X-IronPort-AV: E=McAfee;i="6000,8403,9927"; a="209790320"
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="209790320"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2021 15:19:00 -0700
IronPort-SDR: AN3oRYbNlMlmcNoffSlqbjFvlxeNiCOqe67X/8xnEskDIaFl9yLj9phsNUm7yVvZxIo3U62jXf
 /0eO5M1yWqIg==
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="439870475"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2021 15:19:00 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 18 Mar 2021 15:18:44 -0700
Message-Id: <20210318221844.1795558-2-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210318221844.1795558-1-jesse.brandeburg@intel.com>
References: <20210318221844.1795558-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next dev-queue v1 2/2] intel: fix
 recently introduced warnings
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch shows the warnings introduced between
git log --oneline net-next...dev-queue

It is likely these should all be fixed on dev-queue before the
patches are sent.

make W=1 M=`pwd`/drivers/net/ethernet/intel

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_fdir.c             | 2 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c | 4 ++--
 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c      | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_fdir.c b/drivers/net/ethernet/intel/iavf/iavf_fdir.c
index 2a355cd6e7c8..3e687189d737 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_fdir.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_fdir.c
@@ -734,7 +734,7 @@ bool iavf_fdir_is_dup_fltr(struct iavf_adapter *adapter, struct iavf_fdir_fltr *
 }
 
 /**
- * iavf_fdir_fltr - find filter with location
+ * iavf_find_fdir_fltr_by_loc - find filter with location
  * @adapter: pointer to the VF adapter structure
  * @loc: location to find.
  *
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
index 64b1314d4761..58d395db4219 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
@@ -86,7 +86,7 @@ static const struct allowlist_opcode_info allowlist_opcodes[] = {
 };
 
 /**
- * ice_vc_opcode_is_allowed - check if this opcode is allowed on this VF
+ * ice_vc_is_opcode_allowed - check if this opcode is allowed on this VF
  * @vf: pointer to VF structure
  * @opcode: virtchnl opcode
  *
@@ -151,7 +151,7 @@ void ice_vc_set_working_allowlist(struct ice_vf *vf)
 }
 
 /**
- * ice_vc_set_allowlist_based_on_caps - allowlist VF opcodes according caps
+ * ice_vc_set_caps_allowlist - allowlist VF opcodes according caps
  * @vf: pointer to VF structure
  */
 void ice_vc_set_caps_allowlist(struct ice_vf *vf)
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index eb10ca79a42a..9ffe7ba865ee 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -513,7 +513,7 @@ ice_vc_fdir_set_flow_fld(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
 }
 
 /**
- * ice_vc_fdir_set_flow_fld - config the flow's packet segment header
+ * ice_vc_fdir_set_flow_hdr - config the flow's packet segment header
  * @vf: pointer to the VF structure
  * @conf: FDIR configuration for each filter
  * @seg: array of one or more packet segments that describe the flow
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
