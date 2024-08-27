Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F13B961978
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2024 23:53:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 728E5406AA;
	Tue, 27 Aug 2024 21:53:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qefx4MnSQK2u; Tue, 27 Aug 2024 21:53:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5945D4068D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724795582;
	bh=JS8Oiy+aWEVcAZZQB/POkAX3kGVQHtnxdJPC3vvAwOk=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zFMjF5ilixUPnz7eFctcWMrzFd8dthoDbHuOanBgN81yzWgYIoJe93VGF4fFwp7nz
	 vY4SmHPbXW/am3auJ1VUgQ2TWomfEZnVvxaQ/lAT1G+uXxf63BCgHHqhc1NKpIwQ/k
	 rgIno4HOxLMg7WXdU3zMn/x1X+PvQoFcHcUFG5JX+7ew9iQSI3SsqgwrAimyGO4yeZ
	 XpDjjzCA3c0TzffE16ELdkAIXfcsACdP6RNxy0iXHN8vMr+hUchsb48JonZ2Oks63i
	 5U49ik7rGdQ6GTEpoiDnnSB4baFJZ9vAGgupvOIAo9P1cZWcNUg8VoC4cXNckDwf9r
	 Flte6GowHV+Xg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5945D4068D;
	Tue, 27 Aug 2024 21:53:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7129C1BF27E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 21:52:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A55DE40A64
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 21:52:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rFrCgGkenxUU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2024 21:52:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 80F2440A70
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 80F2440A70
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 80F2440A70
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 21:52:50 +0000 (UTC)
X-CSE-ConnectionGUID: kXAd61I7QdyZ6CcBNutJkA==
X-CSE-MsgGUID: MpnFVTbZQMaJwZTyykQ9VQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="27068853"
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="27068853"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 14:52:46 -0700
X-CSE-ConnectionGUID: 4cA8EUACQt6PqP3+rmdbtg==
X-CSE-MsgGUID: Z59/5KTkSPqO52QO0P/gkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="63189514"
Received: from jekeller-desk.jf.intel.com ([10.166.241.20])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 14:52:45 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 27 Aug 2024 14:52:14 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240827-e810-live-migration-jk-prep-ctx-functions-v1-11-0442e2e42d32@intel.com>
References: <20240827-e810-live-migration-jk-prep-ctx-functions-v1-0-0442e2e42d32@intel.com>
In-Reply-To: <20240827-e810-live-migration-jk-prep-ctx-functions-v1-0-0442e2e42d32@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Vladimir Oltean <olteanv@gmail.com>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 "netdev netdev"@vger.kernel.org
X-Mailer: b4 0.14.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724795571; x=1756331571;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=V1acaurmabWgeKzUrbMQzlQQd8zEZyjCmvgy0RAkW9U=;
 b=Cn0p2bW1qRrJrXdXsijDsgQiqFQsvCFV/3dRtg8VKhygQCNKMmwkIsWB
 ZNRb4tYaYtNcdlct95BILUCMS95DTVrw5mB7Cr9NHxDnHE1lcx1gvb0ao
 dbZvt38B0cXD5n3c9ANA/7uqKxGyWavqLZW3pT2mIiLxKY4IUvmhnbUgd
 61nRPy7DXc9QBU/CHZss+ckb/R7/65+FWdk9Rhkb7Nrbk4hGgfIlzFYmq
 it6zQXVbM1VPxtXnb1hk1ch2k3CZTF3EcQT8/7xLJo3k5Zh+7lX9/SlG+
 yzFn26hLlZKO4hjQ7CLbFHujZVMtgZgc6CnO0ZJdJth7hAWaDSrniWeLO
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Cn0p2bW1
Subject: [Intel-wired-lan] [PATCH iwl-next 11/13] ice: reduce size of queue
 context fields
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice_rlan_ctx and ice_tlan_ctx structures have some fields which are
intentionally sized larger necessary relative to the packed sizes the data
must fit into. This was done because the original ice_set_ctx() function
and its helpers did not correctly handle packing when the packed bits
straddled a byte. This is no longer the case with the use of the
<linux/packing.h> implementation.

Save some bytes in these structures by sizing the variables to the number
of bytes the actual bitpacked fields fit into.

There are a couple of gaps left in the structure, which is a result of the
fields being in the order they appear in the packed bit layout, but where
alignment forces some extra gaps. We could fix this, saving ~8 bytes from
each structure. However, these structures are not used heavily, and the
resulting savings is minimal:

$ bloat-o-meter ice-before-reorder.ko ice-after-reorder.ko
add/remove: 0/0 grow/shrink: 1/1 up/down: 26/-70 (-44)
Function                                     old     new   delta
ice_vsi_cfg_txq                             1873    1899     +26
ice_setup_rx_ctx.constprop                  1529    1459     -70
Total: Before=1459555, After=1459511, chg -0.00%

Thus, the fields are left in the same order as the packed bit layout,
despite the gaps this causes.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h | 32 ++++++++------------------
 1 file changed, 10 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
index 0e8ed8c226e6..4f68d2787d7d 100644
--- a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
+++ b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
@@ -377,23 +377,17 @@ enum ice_rx_flex_desc_status_error_1_bits {
 #define ICE_TX_DRBELL_Q_CTX_SIZE_DWORDS	5
 #define GLTCLAN_CQ_CNTX(i, CQ)		(GLTCLAN_CQ_CNTX0(CQ) + ((i) * 0x0800))
 
-/* RLAN Rx queue context data
- *
- * The sizes of the variables may be larger than needed due to crossing byte
- * boundaries. If we do not have the width of the variable set to the correct
- * size then we could end up shifting bits off the top of the variable when the
- * variable is at the top of a byte and crosses over into the next byte.
- */
+/* RLAN Rx queue context data */
 struct ice_rlan_ctx {
 	u16 head;
-	u16 cpuid; /* bigger than needed, see above for reason */
+	u8 cpuid;
 #define ICE_RLAN_BASE_S 7
 	u64 base;
 	u16 qlen;
 #define ICE_RLAN_CTX_DBUF_S 7
-	u16 dbuf; /* bigger than needed, see above for reason */
+	u8 dbuf;
 #define ICE_RLAN_CTX_HBUF_S 6
-	u16 hbuf; /* bigger than needed, see above for reason */
+	u8 hbuf;
 	u8 dtype;
 	u8 dsize;
 	u8 crcstrip;
@@ -401,12 +395,12 @@ struct ice_rlan_ctx {
 	u8 hsplit_0;
 	u8 hsplit_1;
 	u8 showiv;
-	u32 rxmax; /* bigger than needed, see above for reason */
+	u16 rxmax;
 	u8 tphrdesc_ena;
 	u8 tphwdesc_ena;
 	u8 tphdata_ena;
 	u8 tphhead_ena;
-	u16 lrxqthresh; /* bigger than needed, see above for reason */
+	u8 lrxqthresh;
 	u8 prefena;	/* NOTE: normally must be set to 1 at init */
 };
 
@@ -551,18 +545,12 @@ enum ice_tx_ctx_desc_eipt_offload {
 #define ICE_LAN_TXQ_MAX_QGRPS	127
 #define ICE_LAN_TXQ_MAX_QDIS	1023
 
-/* Tx queue context data
- *
- * The sizes of the variables may be larger than needed due to crossing byte
- * boundaries. If we do not have the width of the variable set to the correct
- * size then we could end up shifting bits off the top of the variable when the
- * variable is at the top of a byte and crosses over into the next byte.
- */
+/* Tx queue context data */
 struct ice_tlan_ctx {
 #define ICE_TLAN_CTX_BASE_S	7
 	u64 base;		/* base is defined in 128-byte units */
 	u8 port_num;
-	u16 cgd_num;		/* bigger than needed, see above for reason */
+	u8 cgd_num;
 	u8 pf_num;
 	u16 vmvf_num;
 	u8 vmvf_type;
@@ -573,7 +561,7 @@ struct ice_tlan_ctx {
 	u8 tsyn_ena;
 	u8 internal_usage_flag;
 	u8 alt_vlan;
-	u16 cpuid;		/* bigger than needed, see above for reason */
+	u8 cpuid;
 	u8 wb_mode;
 	u8 tphrd_desc;
 	u8 tphrd;
@@ -582,7 +570,7 @@ struct ice_tlan_ctx {
 	u16 qnum_in_func;
 	u8 itr_notification_mode;
 	u8 adjust_prof_id;
-	u32 qlen;		/* bigger than needed, see above for reason */
+	u16 qlen;
 	u8 quanta_prof_idx;
 	u8 tso_ena;
 	u16 tso_qnum;

-- 
2.46.0.124.g2dc1a81c8933

