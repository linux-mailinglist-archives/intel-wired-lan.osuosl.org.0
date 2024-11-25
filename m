Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5BB9D8F4F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Nov 2024 00:51:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D3EC260A4C;
	Mon, 25 Nov 2024 23:51:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rxwU81gBwdTX; Mon, 25 Nov 2024 23:51:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1682D60899
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732578717;
	bh=FkfaPT2KsG8Ow5MeIBXZ5op32UhNzkV+oe+7lXGMSeU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pGZ6P6xRwkbwmvmYUL6rETNcItbM2MHT0bviThSSQKXYLYUwmsa6urJhbwGrWj59i
	 e4Tc46x2PN4yunHSM/UkkrE7Ze7wERMwRK23TDgkWoM2/Yjp7j7i1mSaC4aScN6LLr
	 Te7YjjuN99m6DaJk8iViXxgCVNyHnxJBCuNa98XhYugYs9Nl+sityJjN+cU/4V/SeA
	 L3uU72ymmHopMBjr6PJ8N4YkOs/ebBkhJPN7lInncM7FVG9yy/niJYOnDlmpyX72Ao
	 8Zs5+jEWOrMJrJt7E1uEj/qR+DYAYZeo9qj5KlZXBFuVmzhIqMGaIQ4/1YIA+wN62q
	 +9lI078tltGNA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1682D60899;
	Mon, 25 Nov 2024 23:51:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D0A434E8F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Nov 2024 23:51:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B1DDA60702
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Nov 2024 23:51:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3X-zcFe5y2rF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Nov 2024 23:51:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C01C96062B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C01C96062B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C01C96062B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Nov 2024 23:51:52 +0000 (UTC)
X-CSE-ConnectionGUID: BUkEqeY/QQunJPqzbLAb2w==
X-CSE-MsgGUID: MscPssWhQpSyLEybnGHysQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11267"; a="44108297"
X-IronPort-AV: E=Sophos;i="6.12,184,1728975600"; d="scan'208";a="44108297"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2024 15:51:52 -0800
X-CSE-ConnectionGUID: K3V+x2kcTLqnZ+ndJcgMzQ==
X-CSE-MsgGUID: +kokG/I9QIiHRRh0FCO27g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,184,1728975600"; d="scan'208";a="92239627"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.13])
 by orviesa008.jf.intel.com with ESMTP; 25 Nov 2024 15:51:52 -0800
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: przemyslaw.kitszel@intel.com, michal.kubiak@intel.com,
 aleksander.lobakin@intel.com, madhu.chittim@intel.com,
 netdev@vger.kernel.org, Joshua Hay <joshua.a.hay@intel.com>
Date: Mon, 25 Nov 2024 15:58:54 -0800
Message-Id: <20241125235855.64850-2-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241125235855.64850-1-joshua.a.hay@intel.com>
References: <20241125235855.64850-1-joshua.a.hay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732578713; x=1764114713;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uGdnYzxKg5GKHi0/ysL3ebuO6MTfJE1bncXU0G0FT9I=;
 b=Isbem7ZmBOav8YDEGy2jiGmgOWAH2X5WYI4cVYtTdrNbg9JPUjDtHbz5
 o8/aS3ETi93q2HmdplF9+ITvn0OJGA4X08hGn0jfsiSlfy6fdGi+OHa6B
 msaJ3jE2Xjz8R5TqijWMoywMNCr0pONCKM/bbZ5lGGkwtHiqWv6wM6j9V
 D3fzzHgzpFW8vdp3zjRhWziHLH7YJ//GxZGE6JLjsNx13GDpO1fdswJww
 Mf9cC3qI687c1Jl7NASHd+s6lV/AQ3uAPjmE7q6pptc3NGU4PuRqM7dhe
 SBgtp5mPZzQaNHdo/mLNlmWNQJQ6mkc/9mrtrqu4DoZ8ViOaunlcU+CtO
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Isbem7Zm
Subject: [Intel-wired-lan] [PATCH iwl-net 1/2] idpf: add support for SW
 triggered interrupts
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SW triggered interrupts are guaranteed to fire after their timer
expires, unlike Tx and Rx interrupts which will only fire after the
timer expires _and_ a descriptor write back is available to be processed
by the driver.

Add the necessary fields, defines, and initializations to enable a SW
triggered interrupt in the vector's dyn_ctl register.

Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_dev.c    | 3 +++
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   | 8 +++++++-
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c | 3 +++
 3 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_dev.c
index 6c913a703df6..41e4bd49402a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_dev.c
@@ -101,6 +101,9 @@ static int idpf_intr_reg_init(struct idpf_vport *vport)
 		intr->dyn_ctl_itridx_s = PF_GLINT_DYN_CTL_ITR_INDX_S;
 		intr->dyn_ctl_intrvl_s = PF_GLINT_DYN_CTL_INTERVAL_S;
 		intr->dyn_ctl_wb_on_itr_m = PF_GLINT_DYN_CTL_WB_ON_ITR_M;
+		intr->dyn_ctl_swint_trig_m = PF_GLINT_DYN_CTL_SWINT_TRIG_M;
+		intr->dyn_ctl_sw_itridx_ena_m =
+			PF_GLINT_DYN_CTL_SW_ITR_INDX_ENA_M;
 
 		spacing = IDPF_ITR_IDX_SPACING(reg_vals[vec_id].itrn_index_spacing,
 					       IDPF_PF_ITR_IDX_SPACING);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index b59aa7d8de2c..cd9a20c9cc7f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -335,6 +335,8 @@ struct idpf_vec_regs {
  * @dyn_ctl_itridx_m: Mask for ITR index
  * @dyn_ctl_intrvl_s: Register bit offset for ITR interval
  * @dyn_ctl_wb_on_itr_m: Mask for WB on ITR feature
+ * @dyn_ctl_sw_itridx_ena_m: Mask for SW ITR index
+ * @dyn_ctl_swint_trig_m: Mask for dyn_ctl SW triggered interrupt enable
  * @rx_itr: RX ITR register
  * @tx_itr: TX ITR register
  * @icr_ena: Interrupt cause register offset
@@ -348,6 +350,8 @@ struct idpf_intr_reg {
 	u32 dyn_ctl_itridx_m;
 	u32 dyn_ctl_intrvl_s;
 	u32 dyn_ctl_wb_on_itr_m;
+	u32 dyn_ctl_sw_itridx_ena_m;
+	u32 dyn_ctl_swint_trig_m;
 	void __iomem *rx_itr;
 	void __iomem *tx_itr;
 	void __iomem *icr_ena;
@@ -418,7 +422,7 @@ struct idpf_q_vector {
 	cpumask_var_t affinity_mask;
 	__cacheline_group_end_aligned(cold);
 };
-libeth_cacheline_set_assert(struct idpf_q_vector, 112,
+libeth_cacheline_set_assert(struct idpf_q_vector, 120,
 			    24 + sizeof(struct napi_struct) +
 			    2 * sizeof(struct dim),
 			    8 + sizeof(cpumask_var_t));
@@ -452,6 +456,8 @@ struct idpf_tx_queue_stats {
 #define IDPF_ITR_IS_DYNAMIC(itr_mode) (itr_mode)
 #define IDPF_ITR_TX_DEF		IDPF_ITR_20K
 #define IDPF_ITR_RX_DEF		IDPF_ITR_20K
+/* Index used for 'SW ITR' update in DYN_CTL register */
+#define IDPF_SW_ITR_UPDATE_IDX	2
 /* Index used for 'No ITR' update in DYN_CTL register */
 #define IDPF_NO_ITR_UPDATE_IDX	3
 #define IDPF_ITR_IDX_SPACING(spacing, dflt)	(spacing ? spacing : dflt)
diff --git a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
index aad62e270ae4..aba828abcb17 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
@@ -101,6 +101,9 @@ static int idpf_vf_intr_reg_init(struct idpf_vport *vport)
 		intr->dyn_ctl_itridx_s = VF_INT_DYN_CTLN_ITR_INDX_S;
 		intr->dyn_ctl_intrvl_s = VF_INT_DYN_CTLN_INTERVAL_S;
 		intr->dyn_ctl_wb_on_itr_m = VF_INT_DYN_CTLN_WB_ON_ITR_M;
+		intr->dyn_ctl_swint_trig_m = VF_INT_DYN_CTLN_SWINT_TRIG_M;
+		intr->dyn_ctl_sw_itridx_ena_m =
+			VF_INT_DYN_CTLN_SW_ITR_INDX_ENA_M;
 
 		spacing = IDPF_ITR_IDX_SPACING(reg_vals[vec_id].itrn_index_spacing,
 					       IDPF_VF_ITR_IDX_SPACING);
-- 
2.39.2

