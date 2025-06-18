Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED82ADF961
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jun 2025 00:25:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AAF4860BE0;
	Wed, 18 Jun 2025 22:25:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QWkkZUQrP7IK; Wed, 18 Jun 2025 22:25:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3DEEC60BE7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750285515;
	bh=Jp+4e6u3GSi9wd7HY3IzxuXVT9OCdbbdYX+OjEXV6Rk=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qvUXKpvzyHn9H8dFqMtqiXGqnWzln1WEtAmOUCOoRiWntnLYMDTgmnIcWSKfw97Za
	 wDBi2Mzbv7EHhKRJfxrA1bv8Ya3766r7fTLzYklsgJ9oiyyJ9v1Ab64PLwznYoUMPN
	 OWKxQJ8T18UfRWbdS/a2TjJJlAelFybnNZOM8GF4AynRgzWgOvprJpONw/uuM/h+p2
	 KtQz1HlzM6DfWyFH2ywKsB49AODN1TWdezbPrwXMdC9PiB85FfpnMnTzsXP2V92zEl
	 Bqb3FX7cOumy0zDJN5CZfc+LYNFWVNpuSdq+pLcTmuF5barDe5fOYO2IjbWEOhr7EO
	 qfrFI+vZkF2qA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3DEEC60BE7;
	Wed, 18 Jun 2025 22:25:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 36F9CD94
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 22:25:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 55923405BB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 22:25:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UzhuME2FTpfI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jun 2025 22:25:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7D52040119
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D52040119
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7D52040119
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 22:25:06 +0000 (UTC)
X-CSE-ConnectionGUID: KjS8DFCCTqa/yjZyya402Q==
X-CSE-MsgGUID: OAhcwOwrT6e2fbD60xRx+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="52447740"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="52447740"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 15:25:05 -0700
X-CSE-ConnectionGUID: tb6mo+cFTou2PY7hx9Q+JA==
X-CSE-MsgGUID: OyrMPfc5RZuOcui2cuvQWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="149870007"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 15:25:04 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 18 Jun 2025 15:24:37 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250618-e810-live-migration-jk-migration-prep-v1-2-72a37485453e@intel.com>
References: <20250618-e810-live-migration-jk-migration-prep-v1-0-72a37485453e@intel.com>
In-Reply-To: <20250618-e810-live-migration-jk-migration-prep-v1-0-72a37485453e@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org, 
 Madhu Chittim <madhu.chittim@intel.com>, Yahui Cao <yahui.cao@intel.com>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750285506; x=1781821506;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=fdDJfM1F+lPpm83Fd+8XFPVC/+SRqq0bw3AA6B1F0PQ=;
 b=EhaaaHVEDsmbalReUh4TA1l4K1vszz0SyWdY5XMTTFg4BQ4XDoM8FNmA
 /ocBFEKYXL97K5SyslUQ6um0CrWddlNycDxoU3vRbxnb9bDha4A+Mvm4n
 fmyeK9X5tDEwUECASCb/f+TV3WKLr9NJwZpzI1cXfAU+1Nbm5fJ0jNKuz
 tj7d6X3J+dHbxN3w90/4EkjKpvpliKh8ZqhMwxnDCGTiDSbpmiuHI0L2W
 jl69OdfW4FmOVJK7Q+qdMQqHHSE59lN2rXjDcuO56e+ly8KCUT/r+aK1W
 d9/IyjIptnLTTHshjwTWvhAL+fM9fcIx7gK40xMG/3WJzMBc9cnJFP+6A
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EhaaaHVE
Subject: [Intel-wired-lan] [PATCH iwl-next 2/8] ice: add functions to get
 and set Tx queue context
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

The live migration driver will need to save and restore the Tx queue
context state from the hardware registers. This state contains both static
fields which do not change during Tx traffic as well as dynamic fields
which may change during Tx traffic.

Unlike the Rx context, the Tx queue context is accessed indirectly from
GLCOMM_QTX_CNTX_CTL and GLCOMM_QTX_CNTX_DATA registers. These registers are
shared by multiple PFs on the same PCIe card. Multiple PFs cannot safely
access the registers simultaneously, and there is no hardware semaphore or
logic to control access. To handle this, introduce the txq_ctx_lock to the
ice_adapter structure. This is similar to the ptp_gltsyn_time_lock. All PFs
on the same adapter share this structure, and use it to serialize access to
the registers to prevent error.

Add a new functions to get and set the Tx queue context through the
GLCOMM_QTX_CNTX_CTL interface. The hardware context values are stored in
the registers using the same packed format as the Admin Queue buffer.

The hardware buffer is 40 bytes wide, as it contains an additional 18 bytes
of internal state not sent with the Admin Queue buffer. For this reason, a
separate typedef and packing function must be used. We can share the same
packed fields definitions because we never need to unpack the internal
state. This is preferred, as it ensures the internal state is zero'd when
writing into HW, and avoids issues with reading by u32 registers into a
buffer of 22 bytes in length. Thanks to the typedefs, misuse of the API
with the wrong size buffer can easily be caught at compile time.

Note reading this data from hardware is essential because the current Tx
queue context may be different from the context as initially programmed by
the driver during VF initialization. When migrating a VF we must ensure the
target VF has identical context as the source VF did.

Co-developed-by: Yahui Cao <yahui.cao@intel.com>
Signed-off-by: Yahui Cao <yahui.cao@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_adapter.h    |   2 +
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |  14 +-
 drivers/net/ethernet/intel/ice/ice_common.h     |   4 +
 drivers/net/ethernet/intel/ice/ice_hw_autogen.h |  12 ++
 drivers/net/ethernet/intel/ice/ice_adapter.c    |   1 +
 drivers/net/ethernet/intel/ice/ice_common.c     | 173 +++++++++++++++++++++++-
 6 files changed, 202 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.h b/drivers/net/ethernet/intel/ice/ice_adapter.h
index ac15c0d2bc1a47b17999999713bbbfcb96b7c5a7..1f31b407e125fe6ca7eee4663ea907878d612b0a 100644
--- a/drivers/net/ethernet/intel/ice/ice_adapter.h
+++ b/drivers/net/ethernet/intel/ice/ice_adapter.h
@@ -38,6 +38,8 @@ struct ice_adapter {
 	refcount_t refcount;
 	/* For access to the GLTSYN_TIME register */
 	spinlock_t ptp_gltsyn_time_lock;
+	/* For access to GLCOMM_QTX_CNTX_CTL register */
+	spinlock_t txq_ctx_lock;
 
 	struct ice_pf *ctrl_pf;
 	struct ice_port_list ports;
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index dc39f0d772297befad1d99bc4fd703c83cb98d78..859b555efa634562fd469f380f275c92f379d981 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -16,11 +16,23 @@
 
 #define ICE_RXQ_CTX_SIZE_DWORDS		8
 #define ICE_RXQ_CTX_SZ			(ICE_RXQ_CTX_SIZE_DWORDS * sizeof(u32))
-#define ICE_TXQ_CTX_SZ			22
 
 typedef struct __packed { u8 buf[ICE_RXQ_CTX_SZ]; } ice_rxq_ctx_buf_t;
+
+/* The Tx queue context is 40 bytes, and includes some internal state. The
+ * Admin Queue buffers don't include the internal state, so only include the
+ * first 22 bytes of the context.
+ */
+#define ICE_TXQ_CTX_SZ			22
+
 typedef struct __packed { u8 buf[ICE_TXQ_CTX_SZ]; } ice_txq_ctx_buf_t;
 
+#define ICE_TXQ_CTX_FULL_SIZE_DWORDS	10
+#define ICE_TXQ_CTX_FULL_SZ \
+	(ICE_TXQ_CTX_FULL_SIZE_DWORDS * sizeof(u32))
+
+typedef struct __packed { u8 buf[ICE_TXQ_CTX_FULL_SZ]; } ice_txq_ctx_buf_full_t;
+
 /* Queue Shutdown (direct 0x0003) */
 struct ice_aqc_q_shutdown {
 	u8 driver_unloading;
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 5f15bf83f06a8992f8b260c128df2c625f0bb9f1..0c8705687b99ebaedcad5dcba64432ea85bdbc5d 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -120,6 +120,10 @@ int ice_write_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
 		      u32 rxq_index);
 int ice_read_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
 		     u32 rxq_index);
+int ice_read_txq_ctx(struct ice_hw *hw, struct ice_tlan_ctx *tlan_ctx,
+		     u32 txq_index);
+int ice_write_txq_ctx(struct ice_hw *hw, struct ice_tlan_ctx *tlan_ctx,
+		      u32 txq_index);
 
 int
 ice_aq_get_rss_lut(struct ice_hw *hw, struct ice_aq_get_set_rss_lut_params *get_params);
diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index aa4bfbcf85d28e23678c4401dfd9375ce189f2d3..dd520aa4d1d6aa4b19c501e3b873f4f068301db9 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -16,6 +16,7 @@
 #define GLCOMM_QUANTA_PROF_MAX_DESC_M		ICE_M(0x3F, 24)
 #define QTX_COMM_DBELL(_DBQM)			(0x002C0000 + ((_DBQM) * 4))
 #define QTX_COMM_HEAD(_DBQM)			(0x000E0000 + ((_DBQM) * 4))
+#define QTX_COMM_HEAD_MAX_INDEX			16383
 #define QTX_COMM_HEAD_HEAD_S			0
 #define QTX_COMM_HEAD_HEAD_M			ICE_M(0x1FFF, 0)
 #define PF_FW_ARQBAH				0x00080180
@@ -272,6 +273,8 @@
 #define VPINT_ALLOC_PCI_VALID_M			BIT(31)
 #define VPINT_MBX_CTL(_VSI)			(0x0016A000 + ((_VSI) * 4))
 #define VPINT_MBX_CTL_CAUSE_ENA_M		BIT(30)
+#define PFLAN_TX_QALLOC(_PF)			(0x001D2580 + ((_PF) * 4))
+#define PFLAN_TX_QALLOC_FIRSTQ_M		GENMASK(13, 0)
 #define GLLAN_RCTL_0				0x002941F8
 #define QRX_CONTEXT(_i, _QRX)			(0x00280000 + ((_i) * 8192 + (_QRX) * 4))
 #define QRX_CTRL(_QRX)				(0x00120000 + ((_QRX) * 4))
@@ -376,6 +379,15 @@
 #define GLNVM_ULD_POR_DONE_1_M			BIT(8)
 #define GLNVM_ULD_PCIER_DONE_2_M		BIT(9)
 #define GLNVM_ULD_PE_DONE_M			BIT(10)
+#define GLCOMM_QTX_CNTX_CTL			0x002D2DC8
+#define GLCOMM_QTX_CNTX_CTL_QUEUE_ID_M		GENMASK(13, 0)
+#define GLCOMM_QTX_CNTX_CTL_CMD_M		GENMASK(18, 16)
+#define GLCOMM_QTX_CNTX_CTL_CMD_READ		0
+#define GLCOMM_QTX_CNTX_CTL_CMD_WRITE		1
+#define GLCOMM_QTX_CNTX_CTL_CMD_RESET		3
+#define GLCOMM_QTX_CNTX_CTL_CMD_WRITE_NO_DYN	4
+#define GLCOMM_QTX_CNTX_CTL_CMD_EXEC_M		BIT(19)
+#define GLCOMM_QTX_CNTX_DATA(_i)		(0x002D2D40 + ((_i) * 4))
 #define GLPCI_CNF2				0x000BE004
 #define GLPCI_CNF2_CACHELINE_SIZE_M		BIT(1)
 #define PF_FUNC_RID				0x0009E880
diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net/ethernet/intel/ice/ice_adapter.c
index 66e070095d1bbe822842d0923e5c44872b0af076..9e4adc43e474c960b8ee4849380a691a0e5ef848 100644
--- a/drivers/net/ethernet/intel/ice/ice_adapter.c
+++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
@@ -32,6 +32,7 @@ static struct ice_adapter *ice_adapter_new(u64 dsn)
 
 	adapter->device_serial_number = dsn;
 	spin_lock_init(&adapter->ptp_gltsyn_time_lock);
+	spin_lock_init(&adapter->txq_ctx_lock);
 	refcount_set(&adapter->refcount, 1);
 
 	mutex_init(&adapter->ports.lock);
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 2800ec4763688c0d194d29686b470e555a457c1c..95e40779b176c0b1e7c8d5f44a0d50b7f66fa0f8 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1513,12 +1513,12 @@ static const struct packed_field_u8 ice_tlan_ctx_fields[] = {
 };
 
 /**
- * ice_pack_txq_ctx - Pack Tx queue context into a HW buffer
+ * ice_pack_txq_ctx - Pack Tx queue context into Admin Queue buffer
  * @ctx: the Tx queue context to pack
- * @buf: the HW buffer to pack into
+ * @buf: the Admin Queue HW buffer to pack into
  *
  * Pack the Tx queue context from the CPU-friendly unpacked buffer into its
- * bit-packed HW layout.
+ * bit-packed Admin Queue layout.
  */
 void ice_pack_txq_ctx(const struct ice_tlan_ctx *ctx, ice_txq_ctx_buf_t *buf)
 {
@@ -1526,6 +1526,173 @@ void ice_pack_txq_ctx(const struct ice_tlan_ctx *ctx, ice_txq_ctx_buf_t *buf)
 		    QUIRK_LITTLE_ENDIAN | QUIRK_LSW32_IS_FIRST);
 }
 
+/**
+ * ice_pack_txq_ctx_full - Pack Tx queue context into a HW buffer
+ * @ctx: the Tx queue context to pack
+ * @buf: the HW buffer to pack into
+ *
+ * Pack the Tx queue context from the CPU-friendly unpacked buffer into its
+ * bit-packed HW layout, including the internal data portion.
+ */
+static void ice_pack_txq_ctx_full(const struct ice_tlan_ctx *ctx,
+				  ice_txq_ctx_buf_full_t *buf)
+{
+	pack_fields(buf, sizeof(*buf), ctx, ice_tlan_ctx_fields,
+		    QUIRK_LITTLE_ENDIAN | QUIRK_LSW32_IS_FIRST);
+}
+
+/**
+ * ice_unpack_txq_ctx_full - Unpack Tx queue context from a HW buffer
+ * @buf: the HW buffer to unpack from
+ * @ctx: the Tx queue context to unpack
+ *
+ * Unpack the Tx queue context from the HW buffer (including the full internal
+ * state) into the CPU-friendly structure.
+ */
+static void ice_unpack_txq_ctx_full(const ice_txq_ctx_buf_full_t *buf,
+				    struct ice_tlan_ctx *ctx)
+{
+	unpack_fields(buf, sizeof(*buf), ctx, ice_tlan_ctx_fields,
+		      QUIRK_LITTLE_ENDIAN | QUIRK_LSW32_IS_FIRST);
+}
+
+/**
+ * ice_copy_txq_ctx_from_hw - Copy Tx Queue context from HW registers
+ * @hw: pointer to the hardware structure
+ * @txq_ctx: pointer to the packed Tx queue context, including internal state
+ * @txq_index: the index of the Tx queue
+ *
+ * Copy Tx Queue context from HW register space to dense structure
+ */
+static void ice_copy_txq_ctx_from_hw(struct ice_hw *hw,
+				     ice_txq_ctx_buf_full_t *txq_ctx,
+				     u32 txq_index)
+{
+	struct ice_pf *pf = container_of(hw, struct ice_pf, hw);
+	u32 *ctx = (u32 *)txq_ctx;
+	u32 txq_base, reg;
+
+	/* Get Tx queue base within card space */
+	txq_base = rd32(hw, PFLAN_TX_QALLOC(hw->pf_id));
+	txq_base = FIELD_GET(PFLAN_TX_QALLOC_FIRSTQ_M, txq_base);
+
+	reg = FIELD_PREP(GLCOMM_QTX_CNTX_CTL_CMD_M,
+			 GLCOMM_QTX_CNTX_CTL_CMD_READ) |
+	      FIELD_PREP(GLCOMM_QTX_CNTX_CTL_QUEUE_ID_M,
+			 txq_base + txq_index) |
+	      GLCOMM_QTX_CNTX_CTL_CMD_EXEC_M;
+
+	/* Prevent other PFs on the same adapter from accessing the Tx queue
+	 * context interface concurrently.
+	 */
+	spin_lock(&pf->adapter->txq_ctx_lock);
+
+	wr32(hw, GLCOMM_QTX_CNTX_CTL, reg);
+	ice_flush(hw);
+
+	/* Copy each dword separately from HW */
+	for (int i = 0; i < ICE_TXQ_CTX_FULL_SIZE_DWORDS; i++, ctx++) {
+		*ctx = rd32(hw, GLCOMM_QTX_CNTX_DATA(i));
+
+		ice_debug(hw, ICE_DBG_QCTX, "qtxdata[%d]: %08X\n", i, *ctx);
+	}
+
+	spin_unlock(&pf->adapter->txq_ctx_lock);
+}
+
+/**
+ * ice_copy_txq_ctx_to_hw - Copy Tx Queue context into HW registers
+ * @hw: pointer to the hardware structure
+ * @txq_ctx: pointer to the packed Tx queue context, including internal state
+ * @txq_index: the index of the Tx queue
+ */
+static void ice_copy_txq_ctx_to_hw(struct ice_hw *hw,
+				   const ice_txq_ctx_buf_full_t *txq_ctx,
+				   u32 txq_index)
+{
+	struct ice_pf *pf = container_of(hw, struct ice_pf, hw);
+	u32 txq_base, reg;
+
+	/* Get Tx queue base within card space */
+	txq_base = rd32(hw, PFLAN_TX_QALLOC(hw->pf_id));
+	txq_base = FIELD_GET(PFLAN_TX_QALLOC_FIRSTQ_M, txq_base);
+
+	reg = FIELD_PREP(GLCOMM_QTX_CNTX_CTL_CMD_M,
+			 GLCOMM_QTX_CNTX_CTL_CMD_WRITE_NO_DYN) |
+	      FIELD_PREP(GLCOMM_QTX_CNTX_CTL_QUEUE_ID_M,
+			 txq_base + txq_index) |
+	      GLCOMM_QTX_CNTX_CTL_CMD_EXEC_M;
+
+	/* Prevent other PFs on the same adapter from accessing the Tx queue
+	 * context interface concurrently.
+	 */
+	spin_lock(&pf->adapter->txq_ctx_lock);
+
+	/* Copy each dword separately to HW */
+	for (int i = 0; i < ICE_TXQ_CTX_FULL_SIZE_DWORDS; i++) {
+		u32 ctx = ((const u32 *)txq_ctx)[i];
+
+		wr32(hw, GLCOMM_QTX_CNTX_DATA(i), ctx);
+
+		ice_debug(hw, ICE_DBG_QCTX, "qtxdata[%d]: %08X\n", i, ctx);
+	}
+
+	wr32(hw, GLCOMM_QTX_CNTX_CTL, reg);
+	ice_flush(hw);
+
+	spin_unlock(&pf->adapter->txq_ctx_lock);
+}
+
+/**
+ * ice_read_txq_ctx - Read Tx queue context from HW
+ * @hw: pointer to the hardware structure
+ * @tlan_ctx: pointer to the Tx queue context
+ * @txq_index: the index of the Tx queue
+ *
+ * Read the Tx queue context from the HW registers, then unpack it into the
+ * ice_tlan_ctx structure for use.
+ *
+ * Returns: 0 on success, or -EINVAL on an invalid Tx queue index.
+ */
+int ice_read_txq_ctx(struct ice_hw *hw, struct ice_tlan_ctx *tlan_ctx,
+		     u32 txq_index)
+{
+	ice_txq_ctx_buf_full_t buf = {};
+
+	if (txq_index > QTX_COMM_HEAD_MAX_INDEX)
+		return -EINVAL;
+
+	ice_copy_txq_ctx_from_hw(hw, &buf, txq_index);
+	ice_unpack_txq_ctx_full(&buf, tlan_ctx);
+
+	return 0;
+}
+
+/**
+ * ice_write_txq_ctx - Write Tx queue context to HW
+ * @hw: pointer to the hardware structure
+ * @tlan_ctx: pointer to the Tx queue context
+ * @txq_index: the index of the Tx queue
+ *
+ * Pack the Tx queue context into the dense HW layout, then write it into the
+ * HW registers.
+ *
+ * Returns: 0 on success, or -EINVAL on an invalid Tx queue index.
+ */
+int ice_write_txq_ctx(struct ice_hw *hw, struct ice_tlan_ctx *tlan_ctx,
+		      u32 txq_index)
+{
+	ice_txq_ctx_buf_full_t buf = {};
+
+	if (txq_index > QTX_COMM_HEAD_MAX_INDEX)
+		return -EINVAL;
+
+	ice_pack_txq_ctx_full(tlan_ctx, &buf);
+	ice_copy_txq_ctx_to_hw(hw, &buf, txq_index);
+
+	return 0;
+}
+
 /* Sideband Queue command wrappers */
 
 /**

-- 
2.48.1.397.gec9d649cc640

