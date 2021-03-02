Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B0232A95B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 19:26:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E3B1606DE;
	Tue,  2 Mar 2021 18:26:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zN1WHYjdVCTM; Tue,  2 Mar 2021 18:26:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A6EBB606CC;
	Tue,  2 Mar 2021 18:26:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 372B71BF255
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 993D3606E3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yCJ7NgMMJXJ7 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Mar 2021 18:25:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EB485606BD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:19 +0000 (UTC)
IronPort-SDR: mFaaFPg9gP4h7vxaUg6wjDDYGZMYGHpW5Gn5ls50tq+maucLtogwGJnFc4qoHqdGxXqGUzFb92
 AiLbViADCYJQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="186263197"
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="186263197"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 10:25:18 -0800
IronPort-SDR: CZVCnmKB/njnq8YubvLEAikHp3zgjMj3LDnuuP1NHDPcFByEiQlYbzYqK5hytwNk8u6aGOKwZq
 LL0HNWz/ed1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="434915060"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Mar 2021 10:25:18 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Mar 2021 10:15:42 -0800
Message-Id: <20210302181545.51822-10-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
References: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S56 10/13] ice: cleanup style issues
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

From: Bruce Allan <bruce.w.allan@intel.com>

A few style issues reported by checkpatch have snuck into the code; resolve
the style issues.

COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses

Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_controlq.h  | 4 ++--
 drivers/net/ethernet/intel/ice/ice_flex_type.h | 4 ++--
 drivers/net/ethernet/intel/ice/ice_flow.c      | 6 +++---
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.h b/drivers/net/ethernet/intel/ice/ice_controlq.h
index 68866f4f0eb0..77c2307d4fb8 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.h
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.h
@@ -14,8 +14,8 @@
 	(&(((struct ice_aq_desc *)((R).desc_buf.va))[i]))
 
 #define ICE_CTL_Q_DESC_UNUSED(R) \
-	(u16)((((R)->next_to_clean > (R)->next_to_use) ? 0 : (R)->count) + \
-	      (R)->next_to_clean - (R)->next_to_use - 1)
+	((u16)((((R)->next_to_clean > (R)->next_to_use) ? 0 : (R)->count) + \
+	       (R)->next_to_clean - (R)->next_to_use - 1))
 
 /* Defines that help manage the driver vs FW API checks.
  * Take a look at ice_aq_ver_check in ice_controlq.c for actual usage.
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_type.h b/drivers/net/ethernet/intel/ice/ice_flex_type.h
index bc20cff7ab9d..d43b8360b1bb 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_type.h
@@ -497,8 +497,8 @@ struct ice_xlt1 {
 #define ICE_PF_NUM_S	13
 #define ICE_PF_NUM_M	(0x07 << ICE_PF_NUM_S)
 #define ICE_VSIG_VALUE(vsig, pf_id) \
-	(u16)((((u16)(vsig)) & ICE_VSIG_IDX_M) | \
-	      (((u16)(pf_id) << ICE_PF_NUM_S) & ICE_PF_NUM_M))
+	((u16)((((u16)(vsig)) & ICE_VSIG_IDX_M) | \
+	       (((u16)(pf_id) << ICE_PF_NUM_S) & ICE_PF_NUM_M)))
 #define ICE_DEFAULT_VSIG	0
 
 /* XLT2 Table */
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index 2eec44ef2346..56715decd496 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -2008,9 +2008,9 @@ ice_add_rss_list(struct ice_hw *hw, u16 vsi_handle, struct ice_flow_prof *prof)
  * [63] - Encapsulation flag, 0 if non-tunneled, 1 if tunneled
  */
 #define ICE_FLOW_GEN_PROFID(hash, hdr, segs_cnt) \
-	(u64)(((u64)(hash) & ICE_FLOW_PROF_HASH_M) | \
-	      (((u64)(hdr) << ICE_FLOW_PROF_HDR_S) & ICE_FLOW_PROF_HDR_M) | \
-	      ((u8)((segs_cnt) - 1) ? ICE_FLOW_PROF_ENCAP_M : 0))
+	((u64)(((u64)(hash) & ICE_FLOW_PROF_HASH_M) | \
+	       (((u64)(hdr) << ICE_FLOW_PROF_HDR_S) & ICE_FLOW_PROF_HDR_M) | \
+	       ((u8)((segs_cnt) - 1) ? ICE_FLOW_PROF_ENCAP_M : 0)))
 
 /**
  * ice_add_rss_cfg_sync - add an RSS configuration
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
