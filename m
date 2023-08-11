Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 16DF1778EC3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 14:11:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A1D7183FF2;
	Fri, 11 Aug 2023 12:11:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A1D7183FF2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691755895;
	bh=72UnLlV6itR9KNzuCYNV1WF1715hnruLJl+pdvMRRYQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5jnu+UXX+nob1XYGZERVzF/iaOzv+JwP8/p4Fnb9Ongr1eTZACjcXJpk4NS30+Qvr
	 SerH61+1lIUB9e994A7CSDieWBGaBicuo//OpBIjsektBEmvBHDilPbPdPoUPIafZx
	 m5Z4Ar4b4BEtBCwnLiVGHDKon6jx659niTdDdoYd3vvYKvgAmA41z1DTHUju3KCgcu
	 Bg8O594OntfrWSWb+2Tvla+oRnnxeHBlgCrBVhvMJoy2d7BBklW1POB2e8i85Me3/+
	 DMdr23sRK1EoLrcp0TzeO2NxxAy61jvmL0i4ji1WX2QC8uDce7SAVgHECpT1yxqmTS
	 NQjrHbWkVr24A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9oEizAqQjrCy; Fri, 11 Aug 2023 12:11:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A23783F1E;
	Fri, 11 Aug 2023 12:11:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A23783F1E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A21071BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 12:11:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 83AB960BD5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 12:11:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 83AB960BD5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zGRM7VR6TOgg for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Aug 2023 12:11:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4E66060BA5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 12:11:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E66060BA5
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="435557395"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="435557395"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2023 05:11:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="979222080"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="979222080"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga006.fm.intel.com with ESMTP; 11 Aug 2023 05:11:11 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 3094733BD0;
 Fri, 11 Aug 2023 13:11:11 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: Kees Cook <keescook@chromium.org>,
	netdev@vger.kernel.org
Date: Fri, 11 Aug 2023 08:08:13 -0400
Message-Id: <20230811120814.169952-7-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230811120814.169952-1-przemyslaw.kitszel@intel.com>
References: <20230811120814.169952-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691755874; x=1723291874;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kHT5VLpFxnW3y3muRx8bN91BLrmj1DCbAt4Yfl0iWZw=;
 b=P5QgasW9xjrq/3eeEYFwarmwWacaa8lD17gGtxPulReGrfcFl2Xbhejl
 qRYtr0rer5e5zDyVDNsyxBtEw6If4gFhSQAFxDe3EOB5cNaa3WpOrP7Xa
 WTubtP5h2SJQa1Piy1LjRMeZsdpUzvyYZbnbpJB0sNkxIDLdKyEdEeNjk
 eL3yJCIRx8BDPyUgEenJxmH2EL/pBjd59Xu/ysP4T4wTRxSPcBfVdiiIq
 nDNUCk+HxajU6K0WuXSE7KDKTjgxey48g1UhwrbcVKI8BbYVt3sJJ4hls
 DOMHZulzybLqbNGU9WTNi+bQpzQaOHC+/2tLBBFh7aK/Zrqr8kLHtmejY
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P5QgasW9
Subject: [Intel-wired-lan] [PATCH net-next v2 6/7] ice: make use of
 DEFINE_FLEX() for struct ice_aqc_dis_txq_item
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Steven Zou <steven.zou@intel.com>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use DEFINE_FLEX() macro for 1-elem flex array use case
of struct ice_aqc_dis_txq_item.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
add/remove: 0/0 grow/shrink: 1/1 up/down: 9/-18 (-9)
---
 drivers/net/ethernet/intel/ice/ice_common.c | 20 ++++----------------
 1 file changed, 4 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index a86255b529a0..158931424283 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -4734,11 +4734,11 @@ ice_dis_vsi_txq(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u8 num_queues,
 		enum ice_disq_rst_src rst_src, u16 vmvf_num,
 		struct ice_sq_cd *cd)
 {
-	struct ice_aqc_dis_txq_item *qg_list;
+	DEFINE_FLEX(struct ice_aqc_dis_txq_item, qg_list, q_id, 1);
+	u16 i, buf_size = __struct_size(qg_list);
 	struct ice_q_ctx *q_ctx;
 	int status = -ENOENT;
 	struct ice_hw *hw;
-	u16 i, buf_size;
 
 	if (!pi || pi->port_state != ICE_SCHED_PORT_STATE_READY)
 		return -EIO;
@@ -4756,11 +4756,6 @@ ice_dis_vsi_txq(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u8 num_queues,
 		return -EIO;
 	}
 
-	buf_size = struct_size(qg_list, q_id, 1);
-	qg_list = kzalloc(buf_size, GFP_KERNEL);
-	if (!qg_list)
-		return -ENOMEM;
-
 	mutex_lock(&pi->sched_lock);
 
 	for (i = 0; i < num_queues; i++) {
@@ -4793,7 +4788,6 @@ ice_dis_vsi_txq(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u8 num_queues,
 		q_ctx->q_teid = ICE_INVAL_TEID;
 	}
 	mutex_unlock(&pi->sched_lock);
-	kfree(qg_list);
 	return status;
 }
 
@@ -4962,22 +4956,17 @@ int
 ice_dis_vsi_rdma_qset(struct ice_port_info *pi, u16 count, u32 *qset_teid,
 		      u16 *q_id)
 {
-	struct ice_aqc_dis_txq_item *qg_list;
+	DEFINE_FLEX(struct ice_aqc_dis_txq_item, qg_list, q_id, 1);
+	u16 qg_size = __struct_size(qg_list);
 	struct ice_hw *hw;
 	int status = 0;
-	u16 qg_size;
 	int i;
 
 	if (!pi || pi->port_state != ICE_SCHED_PORT_STATE_READY)
 		return -EIO;
 
 	hw = pi->hw;
 
-	qg_size = struct_size(qg_list, q_id, 1);
-	qg_list = kzalloc(qg_size, GFP_KERNEL);
-	if (!qg_list)
-		return -ENOMEM;
-
 	mutex_lock(&pi->sched_lock);
 
 	for (i = 0; i < count; i++) {
@@ -5002,7 +4991,6 @@ ice_dis_vsi_rdma_qset(struct ice_port_info *pi, u16 count, u32 *qset_teid,
 	}
 
 	mutex_unlock(&pi->sched_lock);
-	kfree(qg_list);
 	return status;
 }
 
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
