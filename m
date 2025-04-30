Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5F4AA5266
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Apr 2025 19:12:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E9AB5406CA;
	Wed, 30 Apr 2025 17:12:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M-Mz3qKYeVcF; Wed, 30 Apr 2025 17:12:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD77140D56
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746033153;
	bh=dJ6FWk65pe8iijm/cg1SpM0Kbv/VNOjF0AfWt8Uw8ug=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YpdPyxmC56cyg1+Rx1Oyw0YSVGiwn8KL3uBRf3OnA/rULAZwD0pgcMM+kVApwkS7w
	 bIAVaglRsP+ORMiFnbK3LG723Fhuuytaio7cAqiljIMVq1i42KvXJsR/E8TmmTdT8X
	 RA7kQFY2pvaH98S29M+rL0qcOsucvzqyRV6SqI9IsbT22lx9dWHACIptKr0giVwN11
	 QltusHH8friHz6HWErE1J52PjaQrMx7BAmlxqRcR16Up0TlKRl0WCqLf1sa7KOAXlo
	 NkgXcu29UNgN9t9CufGobCO9U2PwuLeTnkKbj8A4QND+DgvTTkv2CZbZ13SSj2rTPu
	 fqBClXwDuMr7Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD77140D56;
	Wed, 30 Apr 2025 17:12:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D2D0E943
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 17:12:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C4326608C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 17:12:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2kqYdfkSIES0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Apr 2025 17:12:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3C8676062F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C8676062F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3C8676062F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 17:12:30 +0000 (UTC)
X-CSE-ConnectionGUID: 283wVVyAR0iI5x1vbWSx0A==
X-CSE-MsgGUID: jaE/D6L9TEiuvKxv4YBbig==
X-IronPort-AV: E=McAfee;i="6700,10204,11419"; a="51370087"
X-IronPort-AV: E=Sophos;i="6.15,252,1739865600"; d="scan'208";a="51370087"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 10:12:16 -0700
X-CSE-ConnectionGUID: CMmPABg7Q9GC/ku38GptEg==
X-CSE-MsgGUID: OjjvbOdzQRiDx5T41RUNPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,252,1739865600"; d="scan'208";a="139358954"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 10:12:15 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 30 Apr 2025 10:11:52 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250430-jk-hash-ena-refactor-v1-1-8310a4785472@intel.com>
References: <20250430-jk-hash-ena-refactor-v1-0-8310a4785472@intel.com>
In-Reply-To: <20250430-jk-hash-ena-refactor-v1-0-8310a4785472@intel.com>
To: netdev <netdev@vger.kernel.org>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746033151; x=1777569151;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=YPEZW/LdpLg+u/UaCkL4MW6CHoKodfUlve+DnLTtPgA=;
 b=Zer5fBUs5iRthulnPH1s7RYSjryJk/l6P0Dc4k+/YuboqXUVRxjO2F9k
 tpw/0VOhSmTvQqxutnNOJh+C5Agf4sdLWDmFPtlCOm8hXZazRhDEUpfxi
 ujgrkOugAh6/JB6Ya4jLxxPNRj4fIWgazOBP2cVb32QuVMP3XgNF4A6Fp
 EpC/U2JmLpr0cxfGRKA4TieCkPQ4BhcHqyuDzGsc8aE8hcM5XnKTCj4qE
 sRs80KKC9khlLLPtit5NLBeiq8EKMw2lrMGCCapDOnumul5TOY3lSpkwH
 w7kapyWJqxzK+KI7LFS6tlpjpO6UryqDZiYW4LepOflKEMiCMWBT8pBkD
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Zer5fBUs
Subject: [Intel-wired-lan] [PATCH iwl-next 1/2] net: intel: rename 'hena' to
 'hashcfg' for clarity
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

i40e, ice, and iAVF all use 'hena' as a shorthand for the "hash enable"
configuration. This comes originally from the X710 datasheet 'xxQF_HENA'
registers. In the context of the registers the meaning is fairly clear.

However, on its own, hena is a weird name that can be more difficult to
understand. This is especially true in ice. The E810 hardware doesn't even
have registers with HENA in the name.

Replace the shorthand 'hena' with 'hashcfg'. This makes it clear the
variables deal with the Hash configuration, not just a single boolean
on/off for all hashing.

Do not update the register names. These come directly from the datasheet
for X710 and X722, and it is more important that the names can be searched.

Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.h        |  8 ++--
 drivers/net/ethernet/intel/iavf/iavf.h             | 10 ++---
 drivers/net/ethernet/intel/iavf/iavf_txrx.h        |  4 +-
 drivers/net/ethernet/intel/ice/ice_flow.h          |  4 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl.h      |  4 +-
 include/linux/avf/virtchnl.h                       | 22 +++++------
 drivers/net/ethernet/intel/i40e/i40e_main.c        |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 46 +++++++++++-----------
 drivers/net/ethernet/intel/iavf/iavf_main.c        | 17 ++++----
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c    | 33 ++++++++--------
 drivers/net/ethernet/intel/ice/ice_lib.c           |  2 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c      | 44 ++++++++++-----------
 .../ethernet/intel/ice/ice_virtchnl_allowlist.c    |  2 +-
 13 files changed, 101 insertions(+), 97 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
index 7c26c9a2bf65d03285516da1e9ae8ec6e4de51a2..b007a84268a7ba0378bb6a99012be2cb2beb7e1e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
@@ -71,7 +71,7 @@ enum i40e_dyn_idx {
 #define I40E_SW_ITR    I40E_IDX_ITR2
 
 /* Supported RSS offloads */
-#define I40E_DEFAULT_RSS_HENA ( \
+#define I40E_DEFAULT_RSS_HASHCFG ( \
 	BIT_ULL(I40E_FILTER_PCTYPE_NONF_IPV4_UDP) | \
 	BIT_ULL(I40E_FILTER_PCTYPE_NONF_IPV4_SCTP) | \
 	BIT_ULL(I40E_FILTER_PCTYPE_NONF_IPV4_TCP) | \
@@ -84,7 +84,7 @@ enum i40e_dyn_idx {
 	BIT_ULL(I40E_FILTER_PCTYPE_FRAG_IPV6) | \
 	BIT_ULL(I40E_FILTER_PCTYPE_L2_PAYLOAD))
 
-#define I40E_DEFAULT_RSS_HENA_EXPANDED (I40E_DEFAULT_RSS_HENA | \
+#define I40E_DEFAULT_RSS_HASHCFG_EXPANDED (I40E_DEFAULT_RSS_HASHCFG | \
 	BIT_ULL(I40E_FILTER_PCTYPE_NONF_IPV4_TCP_SYN_NO_ACK) | \
 	BIT_ULL(I40E_FILTER_PCTYPE_NONF_UNICAST_IPV4_UDP) | \
 	BIT_ULL(I40E_FILTER_PCTYPE_NONF_MULTICAST_IPV4_UDP) | \
@@ -92,9 +92,9 @@ enum i40e_dyn_idx {
 	BIT_ULL(I40E_FILTER_PCTYPE_NONF_UNICAST_IPV6_UDP) | \
 	BIT_ULL(I40E_FILTER_PCTYPE_NONF_MULTICAST_IPV6_UDP))
 
-#define i40e_pf_get_default_rss_hena(pf) \
+#define i40e_pf_get_default_rss_hashcfg(pf) \
 	(test_bit(I40E_HW_CAP_MULTI_TCP_UDP_RSS_PCTYPE, (pf)->hw.caps) ? \
-	 I40E_DEFAULT_RSS_HENA_EXPANDED : I40E_DEFAULT_RSS_HENA)
+	 I40E_DEFAULT_RSS_HASHCFG_EXPANDED : I40E_DEFAULT_RSS_HASHCFG)
 
 /* Supported Rx Buffer Sizes (a multiple of 128) */
 #define I40E_RXBUFFER_256   256
diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 9de3e0ba37316c801bc8300e9eaf1a81502abcbd..ae07344cd1b8de17ec9a20899cde757ffa5f8674 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -316,8 +316,8 @@ struct iavf_adapter {
 #define IAVF_FLAG_AQ_CONFIGURE_RSS		BIT_ULL(9) /* direct AQ config */
 #define IAVF_FLAG_AQ_GET_CONFIG			BIT_ULL(10)
 /* Newer style, RSS done by the PF so we can ignore hardware vagaries. */
-#define IAVF_FLAG_AQ_GET_HENA			BIT_ULL(11)
-#define IAVF_FLAG_AQ_SET_HENA			BIT_ULL(12)
+#define IAVF_FLAG_AQ_GET_RSS_HASHCFG		BIT_ULL(11)
+#define IAVF_FLAG_AQ_SET_RSS_HASHCFG		BIT_ULL(12)
 #define IAVF_FLAG_AQ_SET_RSS_KEY		BIT_ULL(13)
 #define IAVF_FLAG_AQ_SET_RSS_LUT		BIT_ULL(14)
 #define IAVF_FLAG_AQ_SET_RSS_HFUNC		BIT_ULL(15)
@@ -457,7 +457,7 @@ struct iavf_adapter {
 	u32 aq_wait_count;
 	/* RSS stuff */
 	enum virtchnl_rss_algorithm hfunc;
-	u64 hena;
+	u64 rss_hashcfg;
 	u16 rss_key_size;
 	u16 rss_lut_size;
 	u8 *rss_key;
@@ -601,8 +601,8 @@ void iavf_set_promiscuous(struct iavf_adapter *adapter);
 bool iavf_promiscuous_mode_changed(struct iavf_adapter *adapter);
 void iavf_request_stats(struct iavf_adapter *adapter);
 int iavf_request_reset(struct iavf_adapter *adapter);
-void iavf_get_hena(struct iavf_adapter *adapter);
-void iavf_set_hena(struct iavf_adapter *adapter);
+void iavf_get_rss_hashcfg(struct iavf_adapter *adapter);
+void iavf_set_rss_hashcfg(struct iavf_adapter *adapter);
 void iavf_set_rss_key(struct iavf_adapter *adapter);
 void iavf_set_rss_lut(struct iavf_adapter *adapter);
 void iavf_set_rss_hfunc(struct iavf_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index 79ad554f2d53b35bf91a91bb9ab0cb2b8f52e7df..94b324f212bd9c909e3bc1c9d9f68c6e8f0ee994 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -59,7 +59,7 @@ enum iavf_dyn_idx_t {
 #define IAVF_PE_ITR    IAVF_IDX_ITR2
 
 /* Supported RSS offloads */
-#define IAVF_DEFAULT_RSS_HENA ( \
+#define IAVF_DEFAULT_RSS_HASHCFG ( \
 	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_IPV4_UDP) | \
 	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_IPV4_SCTP) | \
 	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_IPV4_TCP) | \
@@ -72,7 +72,7 @@ enum iavf_dyn_idx_t {
 	BIT_ULL(IAVF_FILTER_PCTYPE_FRAG_IPV6) | \
 	BIT_ULL(IAVF_FILTER_PCTYPE_L2_PAYLOAD))
 
-#define IAVF_DEFAULT_RSS_HENA_EXPANDED (IAVF_DEFAULT_RSS_HENA | \
+#define IAVF_DEFAULT_RSS_HASHCFG_EXPANDED (IAVF_DEFAULT_RSS_HASHCFG | \
 	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_IPV4_TCP_SYN_NO_ACK) | \
 	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_UNICAST_IPV4_UDP) | \
 	BIT_ULL(IAVF_FILTER_PCTYPE_NONF_MULTICAST_IPV4_UDP) | \
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index 6cb7bb879c98ead000fb30e8223beb698d60a2c4..b1313fb61677f0bbfedfb937a5ce3f87d4adc9e1 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -295,10 +295,10 @@ enum ice_flow_avf_hdr_field {
 };
 
 /* Supported RSS offloads  This macro is defined to support
- * VIRTCHNL_OP_GET_RSS_HENA_CAPS ops. PF driver sends the RSS hardware
+ * VIRTCHNL_OP_GET_RSS_HASHCFG_CAPS ops. PF driver sends the RSS hardware
  * capabilities to the caller of this ops.
  */
-#define ICE_DEFAULT_RSS_HENA ( \
+#define ICE_DEFAULT_RSS_HASHCFG ( \
 	BIT_ULL(ICE_AVF_FLOW_FIELD_IPV4_UDP) | \
 	BIT_ULL(ICE_AVF_FLOW_FIELD_IPV4_SCTP) | \
 	BIT_ULL(ICE_AVF_FLOW_FIELD_IPV4_TCP) | \
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.h b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
index 222990f229d5ed0810da5dda3ec5990895ff6f4a..b3eece8c67804a808e51875a975be2176b1cab37 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
@@ -57,8 +57,8 @@ struct ice_virtchnl_ops {
 	int (*add_vlan_msg)(struct ice_vf *vf, u8 *msg);
 	int (*remove_vlan_msg)(struct ice_vf *vf, u8 *msg);
 	int (*query_rxdid)(struct ice_vf *vf);
-	int (*get_rss_hena)(struct ice_vf *vf);
-	int (*set_rss_hena_msg)(struct ice_vf *vf, u8 *msg);
+	int (*get_rss_hashcfg)(struct ice_vf *vf);
+	int (*set_rss_hashcfg)(struct ice_vf *vf, u8 *msg);
 	int (*ena_vlan_stripping)(struct ice_vf *vf);
 	int (*dis_vlan_stripping)(struct ice_vf *vf);
 	int (*handle_rss_cfg_msg)(struct ice_vf *vf, u8 *msg, bool add);
diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index cf0afa60e4a7b25476504138bba96f3c51b87177..362d1cdc8cd8adc99467ebb1f7e6e28b1817f7cb 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -132,8 +132,8 @@ enum virtchnl_ops {
 	VIRTCHNL_OP_RELEASE_RDMA_IRQ_MAP = VIRTCHNL_OP_RELEASE_IWARP_IRQ_MAP,
 	VIRTCHNL_OP_CONFIG_RSS_KEY = 23,
 	VIRTCHNL_OP_CONFIG_RSS_LUT = 24,
-	VIRTCHNL_OP_GET_RSS_HENA_CAPS = 25,
-	VIRTCHNL_OP_SET_RSS_HENA = 26,
+	VIRTCHNL_OP_GET_RSS_HASHCFG_CAPS = 25,
+	VIRTCHNL_OP_SET_RSS_HASHCFG = 26,
 	VIRTCHNL_OP_ENABLE_VLAN_STRIPPING = 27,
 	VIRTCHNL_OP_DISABLE_VLAN_STRIPPING = 28,
 	VIRTCHNL_OP_REQUEST_QUEUES = 29,
@@ -974,18 +974,18 @@ struct virtchnl_rss_lut {
 VIRTCHNL_CHECK_STRUCT_LEN(4, virtchnl_rss_lut);
 #define virtchnl_rss_lut_LEGACY_SIZEOF	6
 
-/* VIRTCHNL_OP_GET_RSS_HENA_CAPS
- * VIRTCHNL_OP_SET_RSS_HENA
- * VF sends these messages to get and set the hash filter enable bits for RSS.
+/* VIRTCHNL_OP_GET_RSS_HASHCFG_CAPS
+ * VIRTCHNL_OP_SET_RSS_HASHCFG
+ * VF sends these messages to get and set the hash filter configuration for RSS.
  * By default, the PF sets these to all possible traffic types that the
  * hardware supports. The VF can query this value if it wants to change the
  * traffic types that are hashed by the hardware.
  */
-struct virtchnl_rss_hena {
-	u64 hena;
+struct virtchnl_rss_hashcfg {
+	u64 hashcfg;
 };
 
-VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_rss_hena);
+VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_rss_hashcfg);
 
 /* Type of RSS algorithm */
 enum virtchnl_rss_algorithm {
@@ -1779,10 +1779,10 @@ virtchnl_vc_validate_vf_msg(struct virtchnl_version_info *ver, u32 v_opcode,
 	case VIRTCHNL_OP_CONFIG_RSS_HFUNC:
 		valid_len = sizeof(struct virtchnl_rss_hfunc);
 		break;
-	case VIRTCHNL_OP_GET_RSS_HENA_CAPS:
+	case VIRTCHNL_OP_GET_RSS_HASHCFG_CAPS:
 		break;
-	case VIRTCHNL_OP_SET_RSS_HENA:
-		valid_len = sizeof(struct virtchnl_rss_hena);
+	case VIRTCHNL_OP_SET_RSS_HASHCFG:
+		valid_len = sizeof(struct virtchnl_rss_hashcfg);
 		break;
 	case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING:
 	case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING:
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 120d68654e3f74cef833a355ebbbd54c20142ee7..516e07b58161de8acf4c742c246fcf94d1e22c02 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -12507,7 +12507,7 @@ static int i40e_pf_config_rss(struct i40e_pf *pf)
 	/* By default we enable TCP/UDP with IPv4/IPv6 ptypes */
 	hena = (u64)i40e_read_rx_ctl(hw, I40E_PFQF_HENA(0)) |
 		((u64)i40e_read_rx_ctl(hw, I40E_PFQF_HENA(1)) << 32);
-	hena |= i40e_pf_get_default_rss_hena(pf);
+	hena |= i40e_pf_get_default_rss_hashcfg(pf);
 
 	i40e_write_rx_ctl(hw, I40E_PFQF_HENA(0), (u32)hena);
 	i40e_write_rx_ctl(hw, I40E_PFQF_HENA(1), (u32)(hena >> 32));
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 1120f8e4bb6703d55b50afda4eec29355125e6aa..2d9b7e51bbe1f497a3eca9dc10e818ac591b9c5b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -812,7 +812,7 @@ static int i40e_alloc_vsi_res(struct i40e_vf *vf, u8 idx)
 	}
 
 	if (!idx) {
-		u64 hena = i40e_pf_get_default_rss_hena(pf);
+		u64 hashcfg = i40e_pf_get_default_rss_hashcfg(pf);
 		u8 broadcast[ETH_ALEN];
 
 		vf->lan_vsi_idx = vsi->idx;
@@ -841,8 +841,9 @@ static int i40e_alloc_vsi_res(struct i40e_vf *vf, u8 idx)
 			dev_info(&pf->pdev->dev,
 				 "Could not allocate VF broadcast filter\n");
 		spin_unlock_bh(&vsi->mac_filter_hash_lock);
-		wr32(&pf->hw, I40E_VFQF_HENA1(0, vf->vf_id), (u32)hena);
-		wr32(&pf->hw, I40E_VFQF_HENA1(1, vf->vf_id), (u32)(hena >> 32));
+		wr32(&pf->hw, I40E_VFQF_HENA1(0, vf->vf_id), (u32)hashcfg);
+		wr32(&pf->hw, I40E_VFQF_HENA1(1, vf->vf_id),
+		     (u32)(hashcfg >> 32));
 		/* program mac filter only for VF VSI */
 		ret = i40e_sync_vsi_filters(vsi);
 		if (ret)
@@ -3447,15 +3448,15 @@ static int i40e_vc_config_rss_lut(struct i40e_vf *vf, u8 *msg)
 }
 
 /**
- * i40e_vc_get_rss_hena
+ * i40e_vc_get_rss_hashcfg
  * @vf: pointer to the VF info
  * @msg: pointer to the msg buffer
  *
- * Return the RSS HENA bits allowed by the hardware
+ * Return the RSS Hash configuration bits allowed by the hardware
  **/
-static int i40e_vc_get_rss_hena(struct i40e_vf *vf, u8 *msg)
+static int i40e_vc_get_rss_hashcfg(struct i40e_vf *vf, u8 *msg)
 {
-	struct virtchnl_rss_hena *vrh = NULL;
+	struct virtchnl_rss_hashcfg *vrh = NULL;
 	struct i40e_pf *pf = vf->pf;
 	int aq_ret = 0;
 	int len = 0;
@@ -3464,7 +3465,7 @@ static int i40e_vc_get_rss_hena(struct i40e_vf *vf, u8 *msg)
 		aq_ret = -EINVAL;
 		goto err;
 	}
-	len = sizeof(struct virtchnl_rss_hena);
+	len = sizeof(struct virtchnl_rss_hashcfg);
 
 	vrh = kzalloc(len, GFP_KERNEL);
 	if (!vrh) {
@@ -3472,26 +3473,26 @@ static int i40e_vc_get_rss_hena(struct i40e_vf *vf, u8 *msg)
 		len = 0;
 		goto err;
 	}
-	vrh->hena = i40e_pf_get_default_rss_hena(pf);
+	vrh->hashcfg = i40e_pf_get_default_rss_hashcfg(pf);
 err:
 	/* send the response back to the VF */
-	aq_ret = i40e_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_RSS_HENA_CAPS,
+	aq_ret = i40e_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_RSS_HASHCFG_CAPS,
 					aq_ret, (u8 *)vrh, len);
 	kfree(vrh);
 	return aq_ret;
 }
 
 /**
- * i40e_vc_set_rss_hena
+ * i40e_vc_set_rss_hashcfg
  * @vf: pointer to the VF info
  * @msg: pointer to the msg buffer
  *
- * Set the RSS HENA bits for the VF
+ * Set the RSS Hash configuration bits for the VF
  **/
-static int i40e_vc_set_rss_hena(struct i40e_vf *vf, u8 *msg)
+static int i40e_vc_set_rss_hashcfg(struct i40e_vf *vf, u8 *msg)
 {
-	struct virtchnl_rss_hena *vrh =
-		(struct virtchnl_rss_hena *)msg;
+	struct virtchnl_rss_hashcfg *vrh =
+		(struct virtchnl_rss_hashcfg *)msg;
 	struct i40e_pf *pf = vf->pf;
 	struct i40e_hw *hw = &pf->hw;
 	int aq_ret = 0;
@@ -3500,13 +3501,14 @@ static int i40e_vc_set_rss_hena(struct i40e_vf *vf, u8 *msg)
 		aq_ret = -EINVAL;
 		goto err;
 	}
-	i40e_write_rx_ctl(hw, I40E_VFQF_HENA1(0, vf->vf_id), (u32)vrh->hena);
+	i40e_write_rx_ctl(hw, I40E_VFQF_HENA1(0, vf->vf_id),
+			  (u32)vrh->hashcfg);
 	i40e_write_rx_ctl(hw, I40E_VFQF_HENA1(1, vf->vf_id),
-			  (u32)(vrh->hena >> 32));
+			  (u32)(vrh->hashcfg >> 32));
 
 	/* send the response to the VF */
 err:
-	return i40e_vc_send_resp_to_vf(vf, VIRTCHNL_OP_SET_RSS_HENA, aq_ret);
+	return i40e_vc_send_resp_to_vf(vf, VIRTCHNL_OP_SET_RSS_HASHCFG, aq_ret);
 }
 
 /**
@@ -4253,11 +4255,11 @@ int i40e_vc_process_vf_msg(struct i40e_pf *pf, s16 vf_id, u32 v_opcode,
 	case VIRTCHNL_OP_CONFIG_RSS_LUT:
 		ret = i40e_vc_config_rss_lut(vf, msg);
 		break;
-	case VIRTCHNL_OP_GET_RSS_HENA_CAPS:
-		ret = i40e_vc_get_rss_hena(vf, msg);
+	case VIRTCHNL_OP_GET_RSS_HASHCFG_CAPS:
+		ret = i40e_vc_get_rss_hashcfg(vf, msg);
 		break;
-	case VIRTCHNL_OP_SET_RSS_HENA:
-		ret = i40e_vc_set_rss_hena(vf, msg);
+	case VIRTCHNL_OP_SET_RSS_HASHCFG:
+		ret = i40e_vc_set_rss_hashcfg(vf, msg);
 		break;
 	case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING:
 		ret = i40e_vc_enable_vlan_stripping(vf, msg);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 6d7ba4d67a193346c50907558f3d83e2b130b251..39a18048cc4ae1d21a718b36396eed68c667d18d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1823,12 +1823,13 @@ static int iavf_init_rss(struct iavf_adapter *adapter)
 		/* Enable PCTYPES for RSS, TCP/UDP with IPv4/IPv6 */
 		if (adapter->vf_res->vf_cap_flags &
 		    VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2)
-			adapter->hena = IAVF_DEFAULT_RSS_HENA_EXPANDED;
+			adapter->rss_hashcfg =
+				IAVF_DEFAULT_RSS_HASHCFG_EXPANDED;
 		else
-			adapter->hena = IAVF_DEFAULT_RSS_HENA;
+			adapter->rss_hashcfg = IAVF_DEFAULT_RSS_HASHCFG;
 
-		wr32(hw, IAVF_VFQF_HENA(0), (u32)adapter->hena);
-		wr32(hw, IAVF_VFQF_HENA(1), (u32)(adapter->hena >> 32));
+		wr32(hw, IAVF_VFQF_HENA(0), (u32)adapter->rss_hashcfg);
+		wr32(hw, IAVF_VFQF_HENA(1), (u32)(adapter->rss_hashcfg >> 32));
 	}
 
 	iavf_fill_rss_lut(adapter);
@@ -2199,12 +2200,12 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
 		adapter->aq_required &= ~IAVF_FLAG_AQ_CONFIGURE_RSS;
 		return 0;
 	}
-	if (adapter->aq_required & IAVF_FLAG_AQ_GET_HENA) {
-		iavf_get_hena(adapter);
+	if (adapter->aq_required & IAVF_FLAG_AQ_GET_RSS_HASHCFG) {
+		iavf_get_rss_hashcfg(adapter);
 		return 0;
 	}
-	if (adapter->aq_required & IAVF_FLAG_AQ_SET_HENA) {
-		iavf_set_hena(adapter);
+	if (adapter->aq_required & IAVF_FLAG_AQ_SET_RSS_HASHCFG) {
+		iavf_set_rss_hashcfg(adapter);
 		return 0;
 	}
 	if (adapter->aq_required & IAVF_FLAG_AQ_SET_RSS_KEY) {
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index a6f0e5990be25050549770de4152b9251f886e68..1815cf3e28f48b1227cb795efbf905f61b6e57b5 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -1128,12 +1128,12 @@ void iavf_request_stats(struct iavf_adapter *adapter)
 }
 
 /**
- * iavf_get_hena
+ * iavf_get_rss_hashcfg
  * @adapter: adapter structure
  *
- * Request hash enable capabilities from PF
+ * Request RSS Hash enable bits from PF
  **/
-void iavf_get_hena(struct iavf_adapter *adapter)
+void iavf_get_rss_hashcfg(struct iavf_adapter *adapter)
 {
 	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
 		/* bail because we already have a command pending */
@@ -1141,20 +1141,20 @@ void iavf_get_hena(struct iavf_adapter *adapter)
 			adapter->current_op);
 		return;
 	}
-	adapter->current_op = VIRTCHNL_OP_GET_RSS_HENA_CAPS;
-	adapter->aq_required &= ~IAVF_FLAG_AQ_GET_HENA;
-	iavf_send_pf_msg(adapter, VIRTCHNL_OP_GET_RSS_HENA_CAPS, NULL, 0);
+	adapter->current_op = VIRTCHNL_OP_GET_RSS_HASHCFG_CAPS;
+	adapter->aq_required &= ~IAVF_FLAG_AQ_GET_RSS_HASHCFG;
+	iavf_send_pf_msg(adapter, VIRTCHNL_OP_GET_RSS_HASHCFG_CAPS, NULL, 0);
 }
 
 /**
- * iavf_set_hena
+ * iavf_set_rss_hashcfg
  * @adapter: adapter structure
  *
  * Request the PF to set our RSS hash capabilities
  **/
-void iavf_set_hena(struct iavf_adapter *adapter)
+void iavf_set_rss_hashcfg(struct iavf_adapter *adapter)
 {
-	struct virtchnl_rss_hena vrh;
+	struct virtchnl_rss_hashcfg vrh;
 
 	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
 		/* bail because we already have a command pending */
@@ -1162,10 +1162,10 @@ void iavf_set_hena(struct iavf_adapter *adapter)
 			adapter->current_op);
 		return;
 	}
-	vrh.hena = adapter->hena;
-	adapter->current_op = VIRTCHNL_OP_SET_RSS_HENA;
-	adapter->aq_required &= ~IAVF_FLAG_AQ_SET_HENA;
-	iavf_send_pf_msg(adapter, VIRTCHNL_OP_SET_RSS_HENA, (u8 *)&vrh,
+	vrh.hashcfg = adapter->rss_hashcfg;
+	adapter->current_op = VIRTCHNL_OP_SET_RSS_HASHCFG;
+	adapter->aq_required &= ~IAVF_FLAG_AQ_SET_RSS_HASHCFG;
+	iavf_send_pf_msg(adapter, VIRTCHNL_OP_SET_RSS_HASHCFG, (u8 *)&vrh,
 			 sizeof(vrh));
 }
 
@@ -2735,11 +2735,12 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		if (v_opcode != adapter->current_op)
 			return;
 		break;
-	case VIRTCHNL_OP_GET_RSS_HENA_CAPS: {
-		struct virtchnl_rss_hena *vrh = (struct virtchnl_rss_hena *)msg;
+	case VIRTCHNL_OP_GET_RSS_HASHCFG_CAPS: {
+		struct virtchnl_rss_hashcfg *vrh =
+			(struct virtchnl_rss_hashcfg *)msg;
 
 		if (msglen == sizeof(*vrh))
-			adapter->hena = vrh->hena;
+			adapter->rss_hashcfg = vrh->hashcfg;
 		else
 			dev_warn(&adapter->pdev->dev,
 				 "Invalid message %d from PF\n", v_opcode);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 03bb16191237e85e492855593695e963f3231558..2cc050db509f17e4c65dea8a3080119d803fcca9 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1579,7 +1579,7 @@ static void ice_vsi_set_vf_rss_flow_fld(struct ice_vsi *vsi)
 		return;
 	}
 
-	status = ice_add_avf_rss_cfg(&pf->hw, vsi, ICE_DEFAULT_RSS_HENA);
+	status = ice_add_avf_rss_cfg(&pf->hw, vsi, ICE_DEFAULT_RSS_HASHCFG);
 	if (status)
 		dev_dbg(dev, "ice_add_avf_rss_cfg failed for vsi = %d, error = %d\n",
 			vsi->vsi_num, status);
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index b147f6cf26151ec6e56eaf391ae85804e86d7725..97f094e2fb1e7cd8cad0018446ffa7d0c77e8c0f 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -2999,13 +2999,13 @@ static int ice_vc_dis_vlan_stripping(struct ice_vf *vf)
 }
 
 /**
- * ice_vc_get_rss_hena - return the RSS HENA bits allowed by the hardware
+ * ice_vc_get_rss_hashcfg - return the RSS Hash configuration
  * @vf: pointer to the VF info
  */
-static int ice_vc_get_rss_hena(struct ice_vf *vf)
+static int ice_vc_get_rss_hashcfg(struct ice_vf *vf)
 {
 	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
-	struct virtchnl_rss_hena *vrh = NULL;
+	struct virtchnl_rss_hashcfg *vrh = NULL;
 	int len = 0, ret;
 
 	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
@@ -3019,7 +3019,7 @@ static int ice_vc_get_rss_hena(struct ice_vf *vf)
 		goto err;
 	}
 
-	len = sizeof(struct virtchnl_rss_hena);
+	len = sizeof(struct virtchnl_rss_hashcfg);
 	vrh = kzalloc(len, GFP_KERNEL);
 	if (!vrh) {
 		v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
@@ -3027,23 +3027,23 @@ static int ice_vc_get_rss_hena(struct ice_vf *vf)
 		goto err;
 	}
 
-	vrh->hena = ICE_DEFAULT_RSS_HENA;
+	vrh->hashcfg = ICE_DEFAULT_RSS_HASHCFG;
 err:
 	/* send the response back to the VF */
-	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_RSS_HENA_CAPS, v_ret,
+	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_RSS_HASHCFG_CAPS, v_ret,
 				    (u8 *)vrh, len);
 	kfree(vrh);
 	return ret;
 }
 
 /**
- * ice_vc_set_rss_hena - set RSS HENA bits for the VF
+ * ice_vc_set_rss_hashcfg - set RSS Hash configuration bits for the VF
  * @vf: pointer to the VF info
  * @msg: pointer to the msg buffer
  */
-static int ice_vc_set_rss_hena(struct ice_vf *vf, u8 *msg)
+static int ice_vc_set_rss_hashcfg(struct ice_vf *vf, u8 *msg)
 {
-	struct virtchnl_rss_hena *vrh = (struct virtchnl_rss_hena *)msg;
+	struct virtchnl_rss_hashcfg *vrh = (struct virtchnl_rss_hashcfg *)msg;
 	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
 	struct ice_pf *pf = vf->pf;
 	struct ice_vsi *vsi;
@@ -3074,9 +3074,9 @@ static int ice_vc_set_rss_hena(struct ice_vf *vf, u8 *msg)
 	 * disable RSS
 	 */
 	status = ice_rem_vsi_rss_cfg(&pf->hw, vsi->idx);
-	if (status && !vrh->hena) {
+	if (status && !vrh->hashcfg) {
 		/* only report failure to clear the current RSS configuration if
-		 * that was clearly the VF's intention (i.e. vrh->hena = 0)
+		 * that was clearly the VF's intention (i.e. vrh->hashcfg = 0)
 		 */
 		v_ret = ice_err_to_virt_err(status);
 		goto err;
@@ -3089,14 +3089,14 @@ static int ice_vc_set_rss_hena(struct ice_vf *vf, u8 *msg)
 			 vf->vf_id);
 	}
 
-	if (vrh->hena) {
-		status = ice_add_avf_rss_cfg(&pf->hw, vsi, vrh->hena);
+	if (vrh->hashcfg) {
+		status = ice_add_avf_rss_cfg(&pf->hw, vsi, vrh->hashcfg);
 		v_ret = ice_err_to_virt_err(status);
 	}
 
 	/* send the response to the VF */
 err:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_SET_RSS_HENA, v_ret,
+	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_SET_RSS_HASHCFG, v_ret,
 				     NULL, 0);
 }
 
@@ -4243,8 +4243,8 @@ static const struct ice_virtchnl_ops ice_virtchnl_dflt_ops = {
 	.add_vlan_msg = ice_vc_add_vlan_msg,
 	.remove_vlan_msg = ice_vc_remove_vlan_msg,
 	.query_rxdid = ice_vc_query_rxdid,
-	.get_rss_hena = ice_vc_get_rss_hena,
-	.set_rss_hena_msg = ice_vc_set_rss_hena,
+	.get_rss_hashcfg = ice_vc_get_rss_hashcfg,
+	.set_rss_hashcfg = ice_vc_set_rss_hashcfg,
 	.ena_vlan_stripping = ice_vc_ena_vlan_stripping,
 	.dis_vlan_stripping = ice_vc_dis_vlan_stripping,
 	.handle_rss_cfg_msg = ice_vc_handle_rss_cfg,
@@ -4381,8 +4381,8 @@ static const struct ice_virtchnl_ops ice_virtchnl_repr_ops = {
 	.add_vlan_msg = ice_vc_add_vlan_msg,
 	.remove_vlan_msg = ice_vc_remove_vlan_msg,
 	.query_rxdid = ice_vc_query_rxdid,
-	.get_rss_hena = ice_vc_get_rss_hena,
-	.set_rss_hena_msg = ice_vc_set_rss_hena,
+	.get_rss_hashcfg = ice_vc_get_rss_hashcfg,
+	.set_rss_hashcfg = ice_vc_set_rss_hashcfg,
 	.ena_vlan_stripping = ice_vc_ena_vlan_stripping,
 	.dis_vlan_stripping = ice_vc_dis_vlan_stripping,
 	.handle_rss_cfg_msg = ice_vc_handle_rss_cfg,
@@ -4583,11 +4583,11 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
 	case VIRTCHNL_OP_GET_SUPPORTED_RXDIDS:
 		err = ops->query_rxdid(vf);
 		break;
-	case VIRTCHNL_OP_GET_RSS_HENA_CAPS:
-		err = ops->get_rss_hena(vf);
+	case VIRTCHNL_OP_GET_RSS_HASHCFG_CAPS:
+		err = ops->get_rss_hashcfg(vf);
 		break;
-	case VIRTCHNL_OP_SET_RSS_HENA:
-		err = ops->set_rss_hena_msg(vf, msg);
+	case VIRTCHNL_OP_SET_RSS_HASHCFG:
+		err = ops->set_rss_hashcfg(vf, msg);
 		break;
 	case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING:
 		err = ops->ena_vlan_stripping(vf);
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
index a3d1579a619a55428690a5d224f27569ae2003d4..4c2ec2337b38381a95a0c61537d8509080b76453 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
@@ -65,7 +65,7 @@ static const u32 vlan_v2_allowlist_opcodes[] = {
 /* VIRTCHNL_VF_OFFLOAD_RSS_PF */
 static const u32 rss_pf_allowlist_opcodes[] = {
 	VIRTCHNL_OP_CONFIG_RSS_KEY, VIRTCHNL_OP_CONFIG_RSS_LUT,
-	VIRTCHNL_OP_GET_RSS_HENA_CAPS, VIRTCHNL_OP_SET_RSS_HENA,
+	VIRTCHNL_OP_GET_RSS_HASHCFG_CAPS, VIRTCHNL_OP_SET_RSS_HASHCFG,
 	VIRTCHNL_OP_CONFIG_RSS_HFUNC,
 };
 

-- 
2.48.1.397.gec9d649cc640

