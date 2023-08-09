Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBE7776132
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Aug 2023 15:36:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 205F8414BF;
	Wed,  9 Aug 2023 13:36:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 205F8414BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691588165;
	bh=A3/fVdd6/PYcqk1Hl45fWzrP+4Hrkl69T9P+nx2slMA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XLR5qoPS77EvOzo9vVKj3ycGKErRGuezwoqNbwx00ydOuLWLVQIy2L3wiuFvRjJkx
	 9PqJ7Oz718Ii8Az4LgCdLKYf1OgnHniXK6+vzrtZNNNTT+aZRXEL7IzhfIPK8HtGK9
	 exnsvBxVvLPeojiRcDKOM8l56+UClSKrNdFsd6DWjpw0cMVSK/AEEJn6lnmMKCDjDR
	 Q/H7RSX9RMDydrgvYqs84gREeYi1Uz5Ry53+eyB96dRDxU371A4ZzZl6JTXZ4THsit
	 xa9c/KEH5IsN9XvErBOemiCv00a8p0qv3fiPaH0lBXI+Fxj2RD8FiNxDYP8QbdLLHN
	 fyTHPj9KmQdLA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rpy8IXp1PJpc; Wed,  9 Aug 2023 13:36:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 127DC40CBE;
	Wed,  9 Aug 2023 13:36:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 127DC40CBE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 736981BF842
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 13:35:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DB4BE611B8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 13:35:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB4BE611B8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mhR2nBrnVTHO for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Aug 2023 13:35:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 577FB60E96
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 13:35:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 577FB60E96
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="402086870"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="402086870"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 06:35:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="725401521"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="725401521"
Received: from s240.igk.intel.com (HELO DevelopmentVM.nql.local)
 ([10.102.18.202])
 by orsmga007.jf.intel.com with ESMTP; 09 Aug 2023 06:35:28 -0700
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Aug 2023 15:39:11 +0200
Message-Id: <20230809133913.2652736-6-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230809133913.2652736-1-jan.sokolowski@intel.com>
References: <20230809133913.2652736-1-jan.sokolowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691588147; x=1723124147;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kwyslcyn/m76CFVIYkGaSw6224xsFf7ss/Y/7SLO5Rc=;
 b=Ju6Qm94don9MoikQO6lJMcKbRSfbc57+/q3jGSdisAE6nOCvHpgxAOTT
 tW+RvAe7cuxl19ap0yqFeOyVuZ5BqEqUpCYSGgVGTdTZp8VrsYR63zoq0
 XGUm/6bDYBvwiyouilR6xh82CFfUmIGTXaxpTOIwpoJiRAMBF20sXhk5B
 /sLo4k6o6FxcLV9xqPjC0vwwh46g64iptFYNQbT2uEMfOAEMa9OJcTzM8
 lginhKyASOFgRDNN9AGkdSlEiU+PrhoNrGzAkdAW+n6kJ9U+DBdC6wAwY
 8j/vqSb6MllNR8aITMjUKlBCdsA7gQH8qjviFRmK2/QULBLYhyWB/uAvl
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ju6Qm94d
Subject: [Intel-wired-lan] [PATCH iwl-next v3 5/7] ice: refactor ice_sched
 to make functions static
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

As ice_sched_set_node_bw_lmt_per_tc is not used
outside of ice_sched, it can be made static.

Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sched.c | 2 +-
 drivers/net/ethernet/intel/ice/ice_sched.h | 4 ----
 2 files changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index f4677704b95e..c0533d7b66b9 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -3971,7 +3971,7 @@ ice_sched_get_node_by_id_type(struct ice_port_info *pi, u32 id,
  * This function sets BW limit of VSI or Aggregator scheduling node
  * based on TC information from passed in argument BW.
  */
-int
+static int
 ice_sched_set_node_bw_lmt_per_tc(struct ice_port_info *pi, u32 id,
 				 enum ice_agg_type agg_type, u8 tc,
 				 enum ice_rl_type rl_type, u32 bw)
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.h b/drivers/net/ethernet/intel/ice/ice_sched.h
index 8bd26353d76a..0055d9330c07 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.h
+++ b/drivers/net/ethernet/intel/ice/ice_sched.h
@@ -141,10 +141,6 @@ ice_cfg_vsi_bw_lmt_per_tc(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 int
 ice_cfg_vsi_bw_dflt_lmt_per_tc(struct ice_port_info *pi, u16 vsi_handle, u8 tc,
 			       enum ice_rl_type rl_type);
-int
-ice_sched_set_node_bw_lmt_per_tc(struct ice_port_info *pi, u32 id,
-				 enum ice_agg_type agg_type, u8 tc,
-				 enum ice_rl_type rl_type, u32 bw);
 int ice_cfg_rl_burst_size(struct ice_hw *hw, u32 bytes);
 int
 ice_sched_suspend_resume_elems(struct ice_hw *hw, u8 num_nodes, u32 *node_teids,
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
