Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4CE49F025
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jan 2022 01:54:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 081108330B;
	Fri, 28 Jan 2022 00:54:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZjVjHFFZpdgP; Fri, 28 Jan 2022 00:54:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C68882FDE;
	Fri, 28 Jan 2022 00:54:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CF1411C113E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 00:34:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 62C2A40153
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 00:34:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SrUmrzv9qKZC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jan 2022 00:34:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9791F40493
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 00:34:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643330078; x=1674866078;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lyd67+jwuJuuXpSnb3B2KciNuttNhfPyGCq0nfl09VI=;
 b=HO+xb08bIuKlJlQgo3ML1pRwpsaX/+VieH6KQPRxPb/350zgUxMni6eb
 Hf9K6tMIEFn756b4MSA9yT5iVeyNXODPAa0nabxnExa7rPNEeQFiRbRdy
 jNJ6+pwvDI62Qs1v1Ms9rNElF2KIIAdcIjDVXPiRI0cwg3WGOi7XVNVr0
 r14p7oWlNklJP7CH3SNqk0FIr4n4xy8k4stteiSn1gHYf0wRrTNMmuo7+
 LbgC3pGshuBXizwwunuCm5aIaou3X0FqUQLkTs0lQ5I2pXDbeXE1UI0o2
 3Mv63RAHwVEQkby2GiXVJLRDGLzrzXoSXvJtu2Xyr8x+CeuBiAcrZ+1Zv A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="234380417"
X-IronPort-AV: E=Sophos;i="5.88,322,1635231600"; d="scan'208";a="234380417"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 16:34:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,322,1635231600"; d="scan'208";a="563999694"
Received: from dev1-atbrady.jf.intel.com ([10.166.244.128])
 by orsmga001.jf.intel.com with ESMTP; 27 Jan 2022 16:34:25 -0800
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jan 2022 16:09:51 -0800
Message-Id: <20220128001009.721392-2-alan.brady@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220128001009.721392-1-alan.brady@intel.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 28 Jan 2022 00:54:26 +0000
Subject: [Intel-wired-lan] [PATCH net-next 01/19] virtchnl: Add new
 virtchnl2 ops
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
Cc: Phani Burra <phani.r.burra@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This extends the virtchnl interface to add new virtchnl ops and defines
needed to implement virtchnl 2.0.

Signed-off-by: Phani Burra <phani.r.burra@intel.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Signed-off-by: Alan Brady <alan.brady@intel.com>
---
 MAINTAINERS                           |    1 +
 include/linux/avf/virtchnl.h          | 1507 +++++++++++++++++++++++--
 include/linux/avf/virtchnl_2.h        | 1243 ++++++++++++++++++++
 include/linux/avf/virtchnl_lan_desc.h |  603 ++++++++++
 4 files changed, 3237 insertions(+), 117 deletions(-)
 create mode 100644 include/linux/avf/virtchnl_2.h
 create mode 100644 include/linux/avf/virtchnl_lan_desc.h

diff --git a/MAINTAINERS b/MAINTAINERS
index 0d7883977e9b..5685d64afd76 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9602,6 +9602,7 @@ F:	Documentation/networking/device_drivers/ethernet/intel/
 F:	drivers/net/ethernet/intel/
 F:	drivers/net/ethernet/intel/*/
 F:	include/linux/avf/virtchnl.h
+F:	include/linux/avf/virtchnl_2.h
 F:	include/linux/net/intel/iidc.h
 
 INTEL ETHERNET PROTOCOL DRIVER FOR RDMA
diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index 2ce27e8e4f19..aee5e2677e1c 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -14,8 +14,9 @@
 #define _VIRTCHNL_H_
 
 /* Description:
- * This header file describes the VF-PF communication protocol used
- * by the drivers for all devices starting from our 40G product line
+ * This header file describes the Virtual Function (VF) - Physical Function
+ * (PF) communication protocol used by the drivers for all devices starting
+ * from our 40G product line
  *
  * Admin queue buffer usage:
  * desc->opcode is always aqc_opc_send_msg_to_pf
@@ -29,8 +30,8 @@
  * have a maximum of sixteen queues for all of its VSIs.
  *
  * The PF is required to return a status code in v_retval for all messages
- * except RESET_VF, which does not require any response. The return value
- * is of status_code type, defined in the shared type.h.
+ * except RESET_VF, which does not require any response. The returned value
+ * is of virtchnl_status_code type, defined here.
  *
  * In general, VF driver initialization should roughly follow the order of
  * these opcodes. The VF driver must first validate the API version of the
@@ -45,7 +46,21 @@
  * value in current and future projects
  */
 
-/* Error Codes */
+/* These macros are used to generate compilation errors if a structure/union
+ * is not exactly the correct length. It gives a divide by zero error if the
+ * structure/union is not of the correct size, otherwise it creates an enum
+ * that is never used.
+ */
+#define VIRTCHNL_CHECK_STRUCT_LEN(n, X) enum virtchnl_static_assert_enum_##X \
+	{ virtchnl_static_assert_##X = (n) / ((sizeof(struct X) == (n)) ? 1 : 0) }
+#define VIRTCHNL_CHECK_UNION_LEN(n, X) enum virtchnl_static_asset_enum_##X \
+	{ virtchnl_static_assert_##X = (n) / ((sizeof(union X) == (n)) ? 1 : 0) }
+
+/* Error Codes
+ * Note that many older versions of various iAVF drivers convert the reported
+ * status code directly into an iavf_status enumeration. For this reason, it
+ * is important that the values of these enumerations line up.
+ */
 enum virtchnl_status_code {
 	VIRTCHNL_STATUS_SUCCESS				= 0,
 	VIRTCHNL_STATUS_ERR_PARAM			= -5,
@@ -92,6 +107,9 @@ enum virtchnl_rx_hsplit {
 	VIRTCHNL_RX_HSPLIT_SPLIT_SCTP    = 8,
 };
 
+enum virtchnl_bw_limit_type {
+	VIRTCHNL_BW_SHAPER = 0,
+};
 /* END GENERIC DEFINES */
 
 /* Opcodes for VF-PF communication. These are placed in the v_opcode field
@@ -136,11 +154,14 @@ enum virtchnl_ops {
 	VIRTCHNL_OP_DISABLE_CHANNELS = 31,
 	VIRTCHNL_OP_ADD_CLOUD_FILTER = 32,
 	VIRTCHNL_OP_DEL_CLOUD_FILTER = 33,
-	/* opcode 34 - 44 are reserved */
+	/* opcode 34 is reserved */
+	/* opcodes 38, 39, 40, 41, 42 and 43 are reserved */
+	VIRTCHNL_OP_GET_SUPPORTED_RXDIDS = 44,
 	VIRTCHNL_OP_ADD_RSS_CFG = 45,
 	VIRTCHNL_OP_DEL_RSS_CFG = 46,
 	VIRTCHNL_OP_ADD_FDIR_FILTER = 47,
 	VIRTCHNL_OP_DEL_FDIR_FILTER = 48,
+	VIRTCHNL_OP_GET_MAX_RSS_QREGION = 50,
 	VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS = 51,
 	VIRTCHNL_OP_ADD_VLAN_V2 = 52,
 	VIRTCHNL_OP_DEL_VLAN_V2 = 53,
@@ -148,31 +169,206 @@ enum virtchnl_ops {
 	VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2 = 55,
 	VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2 = 56,
 	VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2 = 57,
+	VIRTCHNL_OP_ENABLE_VLAN_FILTERING_V2 = 58,
+	VIRTCHNL_OP_DISABLE_VLAN_FILTERING_V2 = 59,
+	VIRTCHNL_OP_1588_PTP_GET_CAPS = 60,
+	VIRTCHNL_OP_1588_PTP_GET_TIME = 61,
+	VIRTCHNL_OP_1588_PTP_SET_TIME = 62,
+	VIRTCHNL_OP_1588_PTP_ADJ_TIME = 63,
+	VIRTCHNL_OP_1588_PTP_ADJ_FREQ = 64,
+	VIRTCHNL_OP_1588_PTP_TX_TIMESTAMP = 65,
+	VIRTCHNL_OP_GET_QOS_CAPS = 66,
+	VIRTCHNL_OP_CONFIG_QUEUE_TC_MAP = 67,
+	VIRTCHNL_OP_1588_PTP_GET_PIN_CFGS = 68,
+	VIRTCHNL_OP_1588_PTP_SET_PIN_CFG = 69,
+	VIRTCHNL_OP_1588_PTP_EXT_TIMESTAMP = 70,
+	VIRTCHNL_OP_ENABLE_QUEUES_V2 = 107,
+	VIRTCHNL_OP_DISABLE_QUEUES_V2 = 108,
+	VIRTCHNL_OP_MAP_QUEUE_VECTOR = 111,
+	/* New major set of opcodes introduced and so leaving room for
+	 * old misc opcodes to be added in future. Also these opcodes may only
+	 * be used if both the PF and VF have successfully negotiated the
+	 * VIRTCHNL version as 2.0 during VIRTCHNL_OP_VERSION exchange.
+	 */
+	VIRTCHNL2_OP_GET_CAPS = 500,
+	VIRTCHNL2_OP_CREATE_VPORT = 501,
+	VIRTCHNL2_OP_DESTROY_VPORT = 502,
+	VIRTCHNL2_OP_ENABLE_VPORT = 503,
+	VIRTCHNL2_OP_DISABLE_VPORT = 504,
+	VIRTCHNL2_OP_CONFIG_TX_QUEUES = 505,
+	VIRTCHNL2_OP_CONFIG_RX_QUEUES = 506,
+	VIRTCHNL2_OP_ENABLE_QUEUES = 507,
+	VIRTCHNL2_OP_DISABLE_QUEUES = 508,
+	VIRTCHNL2_OP_ADD_QUEUES = 509,
+	VIRTCHNL2_OP_DEL_QUEUES = 510,
+	VIRTCHNL2_OP_MAP_QUEUE_VECTOR = 511,
+	VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR = 512,
+	VIRTCHNL2_OP_GET_RSS_KEY = 513,
+	VIRTCHNL2_OP_SET_RSS_KEY = 514,
+	VIRTCHNL2_OP_GET_RSS_LUT = 515,
+	VIRTCHNL2_OP_SET_RSS_LUT = 516,
+	VIRTCHNL2_OP_GET_RSS_HASH = 517,
+	VIRTCHNL2_OP_SET_RSS_HASH = 518,
+	VIRTCHNL2_OP_SET_SRIOV_VFS = 519,
+	VIRTCHNL2_OP_ALLOC_VECTORS = 520,
+	VIRTCHNL2_OP_DEALLOC_VECTORS = 521,
+	VIRTCHNL2_OP_EVENT = 522,
+	VIRTCHNL2_OP_GET_STATS = 523,
+	VIRTCHNL2_OP_RESET_VF = 524,
+	/* opcode 525 is reserved */
+	VIRTCHNL2_OP_GET_PTYPE_INFO = 526,
+	/* opcode 527 and 528 are reserved for VIRTCHNL2_OP_GET_PTYPE_ID and
+	 * VIRTCHNL2_OP_GET_PTYPE_INFO_RAW
+	 */
+	/* opcodes 529, 530, and 531 are reserved */
 	VIRTCHNL_OP_MAX,
 };
 
-/* These macros are used to generate compilation errors if a structure/union
- * is not exactly the correct length. It gives a divide by zero error if the
- * structure/union is not of the correct size, otherwise it creates an enum
- * that is never used.
- */
-#define VIRTCHNL_CHECK_STRUCT_LEN(n, X) enum virtchnl_static_assert_enum_##X \
-	{ virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
-#define VIRTCHNL_CHECK_UNION_LEN(n, X) enum virtchnl_static_asset_enum_##X \
-	{ virtchnl_static_assert_##X = (n)/((sizeof(union X) == (n)) ? 1 : 0) }
-
-/* Virtual channel message descriptor. This overlays the admin queue
- * descriptor. All other data is passed in external buffers.
- */
-
-struct virtchnl_msg {
-	u8 pad[8];			 /* AQ flags/opcode/len/retval fields */
-	enum virtchnl_ops v_opcode; /* avoid confusion with desc->opcode */
-	enum virtchnl_status_code v_retval;  /* ditto for desc->retval */
-	u32 vfid;			 /* used by PF when sending to VF */
-};
+static inline const char *virtchnl_op_str(enum virtchnl_ops v_opcode)
+{
+	switch (v_opcode) {
+	case VIRTCHNL_OP_UNKNOWN:
+		return "VIRTCHNL_OP_UNKNOWN";
+	case VIRTCHNL_OP_VERSION:
+		return "VIRTCHNL_OP_VERSION";
+	case VIRTCHNL_OP_RESET_VF:
+		return "VIRTCHNL_OP_RESET_VF";
+	case VIRTCHNL_OP_GET_VF_RESOURCES:
+		return "VIRTCHNL_OP_GET_VF_RESOURCES";
+	case VIRTCHNL_OP_CONFIG_TX_QUEUE:
+		return "VIRTCHNL_OP_CONFIG_TX_QUEUE";
+	case VIRTCHNL_OP_CONFIG_RX_QUEUE:
+		return "VIRTCHNL_OP_CONFIG_RX_QUEUE";
+	case VIRTCHNL_OP_CONFIG_VSI_QUEUES:
+		return "VIRTCHNL_OP_CONFIG_VSI_QUEUES";
+	case VIRTCHNL_OP_CONFIG_IRQ_MAP:
+		return "VIRTCHNL_OP_CONFIG_IRQ_MAP";
+	case VIRTCHNL_OP_ENABLE_QUEUES:
+		return "VIRTCHNL_OP_ENABLE_QUEUES";
+	case VIRTCHNL_OP_DISABLE_QUEUES:
+		return "VIRTCHNL_OP_DISABLE_QUEUES";
+	case VIRTCHNL_OP_ADD_ETH_ADDR:
+		return "VIRTCHNL_OP_ADD_ETH_ADDR";
+	case VIRTCHNL_OP_DEL_ETH_ADDR:
+		return "VIRTCHNL_OP_DEL_ETH_ADDR";
+	case VIRTCHNL_OP_ADD_VLAN:
+		return "VIRTCHNL_OP_ADD_VLAN";
+	case VIRTCHNL_OP_DEL_VLAN:
+		return "VIRTCHNL_OP_DEL_VLAN";
+	case VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE:
+		return "VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE";
+	case VIRTCHNL_OP_GET_STATS:
+		return "VIRTCHNL_OP_GET_STATS";
+	case VIRTCHNL_OP_RSVD:
+		return "VIRTCHNL_OP_RSVD";
+	case VIRTCHNL_OP_EVENT:
+		return "VIRTCHNL_OP_EVENT";
+	case VIRTCHNL_OP_CONFIG_RSS_KEY:
+		return "VIRTCHNL_OP_CONFIG_RSS_KEY";
+	case VIRTCHNL_OP_CONFIG_RSS_LUT:
+		return "VIRTCHNL_OP_CONFIG_RSS_LUT";
+	case VIRTCHNL_OP_GET_RSS_HENA_CAPS:
+		return "VIRTCHNL_OP_GET_RSS_HENA_CAPS";
+	case VIRTCHNL_OP_SET_RSS_HENA:
+		return "VIRTCHNL_OP_SET_RSS_HENA";
+	case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING:
+		return "VIRTCHNL_OP_ENABLE_VLAN_STRIPPING";
+	case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING:
+		return "VIRTCHNL_OP_DISABLE_VLAN_STRIPPING";
+	case VIRTCHNL_OP_REQUEST_QUEUES:
+		return "VIRTCHNL_OP_REQUEST_QUEUES";
+	case VIRTCHNL_OP_ENABLE_CHANNELS:
+		return "VIRTCHNL_OP_ENABLE_CHANNELS";
+	case VIRTCHNL_OP_DISABLE_CHANNELS:
+		return "VIRTCHNL_OP_DISABLE_CHANNELS";
+	case VIRTCHNL_OP_ADD_CLOUD_FILTER:
+		return "VIRTCHNL_OP_ADD_CLOUD_FILTER";
+	case VIRTCHNL_OP_DEL_CLOUD_FILTER:
+		return "VIRTCHNL_OP_DEL_CLOUD_FILTER";
+	case VIRTCHNL_OP_GET_SUPPORTED_RXDIDS:
+		return "VIRTCHNL_OP_GET_SUPPORTED_RXDIDS";
+	case VIRTCHNL_OP_ADD_RSS_CFG:
+		return "VIRTCHNL_OP_ADD_RSS_CFG";
+	case VIRTCHNL_OP_DEL_RSS_CFG:
+		return "VIRTCHNL_OP_DEL_RSS_CFG";
+	case VIRTCHNL_OP_ADD_FDIR_FILTER:
+		return "VIRTCHNL_OP_ADD_FDIR_FILTER";
+	case VIRTCHNL_OP_DEL_FDIR_FILTER:
+		return "VIRTCHNL_OP_DEL_FDIR_FILTER";
+	case VIRTCHNL_OP_GET_MAX_RSS_QREGION:
+		return "VIRTCHNL_OP_GET_MAX_RSS_QREGION";
+	case VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS:
+		return "VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS";
+	case VIRTCHNL_OP_ADD_VLAN_V2:
+		return "VIRTCHNL_OP_ADD_VLAN_V2";
+	case VIRTCHNL_OP_DEL_VLAN_V2:
+		return "VIRTCHNL_OP_DEL_VLAN_V2";
+	case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2:
+		return "VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2";
+	case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2:
+		return "VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2";
+	case VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2:
+		return "VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2";
+	case VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2:
+		return "VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2";
+	case VIRTCHNL_OP_ENABLE_VLAN_FILTERING_V2:
+		return "VIRTCHNL_OP_ENABLE_VLAN_FILTERING_V2";
+	case VIRTCHNL_OP_DISABLE_VLAN_FILTERING_V2:
+		return "VIRTCHNL_OP_DISABLE_VLAN_FILTERING_V2";
+	case VIRTCHNL_OP_1588_PTP_GET_CAPS:
+		return "VIRTCHNL_OP_1588_PTP_GET_CAPS";
+	case VIRTCHNL_OP_1588_PTP_GET_TIME:
+		return "VIRTCHNL_OP_1588_PTP_GET_TIME";
+	case VIRTCHNL_OP_1588_PTP_SET_TIME:
+		return "VIRTCHNL_OP_1588_PTP_SET_TIME";
+	case VIRTCHNL_OP_1588_PTP_ADJ_TIME:
+		return "VIRTCHNL_OP_1588_PTP_ADJ_TIME";
+	case VIRTCHNL_OP_1588_PTP_ADJ_FREQ:
+		return "VIRTCHNL_OP_1588_PTP_ADJ_FREQ";
+	case VIRTCHNL_OP_1588_PTP_TX_TIMESTAMP:
+		return "VIRTCHNL_OP_1588_PTP_TX_TIMESTAMP";
+	case VIRTCHNL_OP_1588_PTP_GET_PIN_CFGS:
+		return "VIRTCHNL_OP_1588_PTP_GET_PIN_CFGS";
+	case VIRTCHNL_OP_1588_PTP_SET_PIN_CFG:
+		return "VIRTCHNL_OP_1588_PTP_SET_PIN_CFG";
+	case VIRTCHNL_OP_1588_PTP_EXT_TIMESTAMP:
+		return "VIRTCHNL_OP_1588_PTP_EXT_TIMESTAMP";
+	case VIRTCHNL_OP_ENABLE_QUEUES_V2:
+		return "VIRTCHNL_OP_ENABLE_QUEUES_V2";
+	case VIRTCHNL_OP_DISABLE_QUEUES_V2:
+		return "VIRTCHNL_OP_DISABLE_QUEUES_V2";
+	case VIRTCHNL_OP_MAP_QUEUE_VECTOR:
+		return "VIRTCHNL_OP_MAP_QUEUE_VECTOR";
+	case VIRTCHNL_OP_MAX:
+		return "VIRTCHNL_OP_MAX";
+	default:
+		return "Unsupported (update virtchnl.h)";
+	}
+}
 
-VIRTCHNL_CHECK_STRUCT_LEN(20, virtchnl_msg);
+static inline const char *virtchnl_stat_str(enum virtchnl_status_code v_status)
+{
+	switch (v_status) {
+	case VIRTCHNL_STATUS_SUCCESS:
+		return "VIRTCHNL_STATUS_SUCCESS";
+	case VIRTCHNL_STATUS_ERR_PARAM:
+		return "VIRTCHNL_STATUS_ERR_PARAM";
+	case VIRTCHNL_STATUS_ERR_NO_MEMORY:
+		return "VIRTCHNL_STATUS_ERR_NO_MEMORY";
+	case VIRTCHNL_STATUS_ERR_OPCODE_MISMATCH:
+		return "VIRTCHNL_STATUS_ERR_OPCODE_MISMATCH";
+	case VIRTCHNL_STATUS_ERR_CQP_COMPL_ERROR:
+		return "VIRTCHNL_STATUS_ERR_CQP_COMPL_ERROR";
+	case VIRTCHNL_STATUS_ERR_INVALID_VF_ID:
+		return "VIRTCHNL_STATUS_ERR_INVALID_VF_ID";
+	case VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR:
+		return "VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR";
+	case VIRTCHNL_STATUS_ERR_NOT_SUPPORTED:
+		return "VIRTCHNL_STATUS_ERR_NOT_SUPPORTED";
+	default:
+		return "Unknown status code (update virtchnl.h)";
+	}
+}
 
 /* Message descriptions and data structures. */
 
@@ -190,6 +386,8 @@ VIRTCHNL_CHECK_STRUCT_LEN(20, virtchnl_msg);
  */
 #define VIRTCHNL_VERSION_MAJOR		1
 #define VIRTCHNL_VERSION_MINOR		1
+#define VIRTCHNL_VERSION_MAJOR_2	2
+#define VIRTCHNL_VERSION_MINOR_0	0
 #define VIRTCHNL_VERSION_MINOR_NO_VF_CAPS	0
 
 struct virtchnl_version_info {
@@ -199,8 +397,9 @@ struct virtchnl_version_info {
 
 VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_version_info);
 
-#define VF_IS_V10(_v) (((_v)->major == 1) && ((_v)->minor == 0))
+#define VF_IS_V10(_ver) (((_ver)->major == 1) && ((_ver)->minor == 0))
 #define VF_IS_V11(_ver) (((_ver)->major == 1) && ((_ver)->minor == 1))
+#define VF_IS_V20(_ver) (((_ver)->major == 2) && ((_ver)->minor == 0))
 
 /* VIRTCHNL_OP_RESET_VF
  * VF sends this request to PF with no parameters
@@ -234,7 +433,9 @@ enum virtchnl_vsi_type {
 struct virtchnl_vsi_resource {
 	u16 vsi_id;
 	u16 num_queue_pairs;
-	enum virtchnl_vsi_type vsi_type;
+
+	/* see enum virtchnl_vsi_type */
+	s32 vsi_type;
 	u16 qset_handle;
 	u8 default_mac_addr[ETH_ALEN];
 };
@@ -247,12 +448,16 @@ VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_vsi_resource);
  */
 #define VIRTCHNL_VF_OFFLOAD_L2			BIT(0)
 #define VIRTCHNL_VF_OFFLOAD_IWARP		BIT(1)
+#define VIRTCHNL_VF_CAP_RDMA			VIRTCHNL_VF_OFFLOAD_IWARP
 #define VIRTCHNL_VF_OFFLOAD_RSS_AQ		BIT(3)
 #define VIRTCHNL_VF_OFFLOAD_RSS_REG		BIT(4)
 #define VIRTCHNL_VF_OFFLOAD_WB_ON_ITR		BIT(5)
 #define VIRTCHNL_VF_OFFLOAD_REQ_QUEUES		BIT(6)
 /* used to negotiate communicating link speeds in Mbps */
 #define VIRTCHNL_VF_CAP_ADV_LINK_SPEED		BIT(7)
+	/* BIT(8) is reserved */
+#define VIRTCHNL_VF_LARGE_NUM_QPAIRS		BIT(9)
+#define VIRTCHNL_VF_OFFLOAD_CRC			BIT(10)
 #define VIRTCHNL_VF_OFFLOAD_VLAN_V2		BIT(15)
 #define VIRTCHNL_VF_OFFLOAD_VLAN		BIT(16)
 #define VIRTCHNL_VF_OFFLOAD_RX_POLLING		BIT(17)
@@ -262,9 +467,14 @@ VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_vsi_resource);
 #define VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM		BIT(21)
 #define VIRTCHNL_VF_OFFLOAD_RX_ENCAP_CSUM	BIT(22)
 #define VIRTCHNL_VF_OFFLOAD_ADQ			BIT(23)
+#define VIRTCHNL_VF_OFFLOAD_ADQ_V2		BIT(24)
 #define VIRTCHNL_VF_OFFLOAD_USO			BIT(25)
+#define VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC	BIT(26)
 #define VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF		BIT(27)
 #define VIRTCHNL_VF_OFFLOAD_FDIR_PF		BIT(28)
+#define VIRTCHNL_VF_OFFLOAD_QOS			BIT(29)
+	/* BIT(30) is reserved */
+#define VIRTCHNL_VF_CAP_PTP			BIT(31)
 
 #define VF_BASE_MODE_OFFLOADS (VIRTCHNL_VF_OFFLOAD_L2 | \
 			       VIRTCHNL_VF_OFFLOAD_VLAN | \
@@ -303,10 +513,64 @@ struct virtchnl_txq_info {
 
 VIRTCHNL_CHECK_STRUCT_LEN(24, virtchnl_txq_info);
 
+/* RX descriptor IDs (range from 0 to 63) */
+enum virtchnl_rx_desc_ids {
+	VIRTCHNL_RXDID_0_16B_BASE		= 0,
+	/* 32B_BASE and FLEX_SPLITQ share desc ids as default descriptors
+	 * because they can be differentiated based on queue model; e.g. single
+	 * queue model can only use 32B_BASE and split queue model can only use
+	 * FLEX_SPLITQ.  Having these as 1 allows them to be used as default
+	 * descriptors without negotiation.
+	 */
+	VIRTCHNL_RXDID_1_32B_BASE		= 1,
+	VIRTCHNL_RXDID_1_FLEX_SPLITQ		= 1,
+	VIRTCHNL_RXDID_2_FLEX_SQ_NIC		= 2,
+	VIRTCHNL_RXDID_3_FLEX_SQ_SW		= 3,
+	VIRTCHNL_RXDID_4_FLEX_SQ_NIC_VEB	= 4,
+	VIRTCHNL_RXDID_5_FLEX_SQ_NIC_ACL	= 5,
+	VIRTCHNL_RXDID_6_FLEX_SQ_NIC_2		= 6,
+	VIRTCHNL_RXDID_7_HW_RSVD		= 7,
+	/* 9 through 15 are reserved */
+	VIRTCHNL_RXDID_16_COMMS_GENERIC		= 16,
+	VIRTCHNL_RXDID_17_COMMS_AUX_VLAN	= 17,
+	VIRTCHNL_RXDID_18_COMMS_AUX_IPV4	= 18,
+	VIRTCHNL_RXDID_19_COMMS_AUX_IPV6	= 19,
+	VIRTCHNL_RXDID_20_COMMS_AUX_FLOW	= 20,
+	VIRTCHNL_RXDID_21_COMMS_AUX_TCP		= 21,
+	/* 22 through 63 are reserved */
+};
+
+/* RX descriptor ID bitmasks */
+enum virtchnl_rx_desc_id_bitmasks {
+	VIRTCHNL_RXDID_0_16B_BASE_M		= BIT(VIRTCHNL_RXDID_0_16B_BASE),
+	VIRTCHNL_RXDID_1_32B_BASE_M		= BIT(VIRTCHNL_RXDID_1_32B_BASE),
+	VIRTCHNL_RXDID_1_FLEX_SPLITQ_M		= BIT(VIRTCHNL_RXDID_1_FLEX_SPLITQ),
+	VIRTCHNL_RXDID_2_FLEX_SQ_NIC_M		= BIT(VIRTCHNL_RXDID_2_FLEX_SQ_NIC),
+	VIRTCHNL_RXDID_3_FLEX_SQ_SW_M		= BIT(VIRTCHNL_RXDID_3_FLEX_SQ_SW),
+	VIRTCHNL_RXDID_4_FLEX_SQ_NIC_VEB_M	= BIT(VIRTCHNL_RXDID_4_FLEX_SQ_NIC_VEB),
+	VIRTCHNL_RXDID_5_FLEX_SQ_NIC_ACL_M	= BIT(VIRTCHNL_RXDID_5_FLEX_SQ_NIC_ACL),
+	VIRTCHNL_RXDID_6_FLEX_SQ_NIC_2_M	= BIT(VIRTCHNL_RXDID_6_FLEX_SQ_NIC_2),
+	VIRTCHNL_RXDID_7_HW_RSVD_M		= BIT(VIRTCHNL_RXDID_7_HW_RSVD),
+	/* 9 through 15 are reserved */
+	VIRTCHNL_RXDID_16_COMMS_GENERIC_M	= BIT(VIRTCHNL_RXDID_16_COMMS_GENERIC),
+	VIRTCHNL_RXDID_17_COMMS_AUX_VLAN_M	= BIT(VIRTCHNL_RXDID_17_COMMS_AUX_VLAN),
+	VIRTCHNL_RXDID_18_COMMS_AUX_IPV4_M	= BIT(VIRTCHNL_RXDID_18_COMMS_AUX_IPV4),
+	VIRTCHNL_RXDID_19_COMMS_AUX_IPV6_M	= BIT(VIRTCHNL_RXDID_19_COMMS_AUX_IPV6),
+	VIRTCHNL_RXDID_20_COMMS_AUX_FLOW_M	= BIT(VIRTCHNL_RXDID_20_COMMS_AUX_FLOW),
+	VIRTCHNL_RXDID_21_COMMS_AUX_TCP_M	= BIT(VIRTCHNL_RXDID_21_COMMS_AUX_TCP),
+	/* 22 through 63 are reserved */
+};
+
 /* VIRTCHNL_OP_CONFIG_RX_QUEUE
  * VF sends this message to set up parameters for one RX queue.
  * External data buffer contains one instance of virtchnl_rxq_info.
- * PF configures requested queue and returns a status code.
+ * PF configures requested queue and returns a status code. The
+ * crc_disable flag disables CRC stripping on the VF. Setting
+ * the crc_disable flag to 1 will disable CRC stripping for each
+ * queue in the VF where the flag is set. The VIRTCHNL_VF_OFFLOAD_CRC
+ * offload must have been set prior to sending this info or the PF
+ * will ignore the request. This flag should be set the same for
+ * all of the queues for a VF.
  */
 
 /* Rx queue config info */
@@ -318,20 +582,32 @@ struct virtchnl_rxq_info {
 	u16 splithdr_enabled; /* deprecated with AVF 1.0 */
 	u32 databuffer_size;
 	u32 max_pkt_size;
-	u32 pad1;
+	u8 crc_disable;
+	/* see enum virtchnl_rx_desc_ids;
+	 * only used when VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC is supported. Note
+	 * that when the offload is not supported, the descriptor format aligns
+	 * with VIRTCHNL_RXDID_1_32B_BASE.
+	 */
+	u8 rxdid;
+	u8 pad1[2];
 	u64 dma_ring_addr;
-	enum virtchnl_rx_hsplit rx_split_pos; /* deprecated with AVF 1.0 */
+
+	/* see enum virtchnl_rx_hsplit; deprecated with AVF 1.0 */
+	s32 rx_split_pos;
 	u32 pad2;
 };
 
 VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl_rxq_info);
 
 /* VIRTCHNL_OP_CONFIG_VSI_QUEUES
- * VF sends this message to set parameters for all active TX and RX queues
+ * VF sends this message to set parameters for active TX and RX queues
  * associated with the specified VSI.
  * PF configures queues and returns status.
  * If the number of queues specified is greater than the number of queues
  * associated with the VSI, an error is returned and no queues are configured.
+ * NOTE: The VF is not required to configure all queues in a single request.
+ * It may send multiple messages. PF drivers must correctly handle all VF
+ * requests.
  */
 struct virtchnl_queue_pair_info {
 	/* NOTE: vsi_id and queue_id should be identical for both queues. */
@@ -369,8 +645,13 @@ struct virtchnl_vf_res_request {
  * VF uses this message to map vectors to queues.
  * The rxq_map and txq_map fields are bitmaps used to indicate which queues
  * are to be associated with the specified vector.
- * The "other" causes are always mapped to vector 0.
+ * The "other" causes are always mapped to vector 0. The VF may not request
+ * that vector 0 be used for traffic.
  * PF configures interrupt mapping and returns status.
+ * NOTE: due to hardware requirements, all active queues (both TX and RX)
+ * should be mapped to interrupts, even if the driver intends to operate
+ * only in polling mode. In this case the interrupt may be disabled, but
+ * the ITR timer will still run to trigger writebacks.
  */
 struct virtchnl_vector_map {
 	u16 vsi_id;
@@ -397,6 +678,9 @@ VIRTCHNL_CHECK_STRUCT_LEN(14, virtchnl_irq_map_info);
  * (Currently, we only support 16 queues per VF, but we make the field
  * u32 to allow for expansion.)
  * PF performs requested action and returns status.
+ * NOTE: The VF is not required to enable/disable all queues in a single
+ * request. It may send multiple messages.
+ * PF drivers must correctly handle all VF requests.
  */
 struct virtchnl_queue_select {
 	u16 vsi_id;
@@ -407,6 +691,35 @@ struct virtchnl_queue_select {
 
 VIRTCHNL_CHECK_STRUCT_LEN(12, virtchnl_queue_select);
 
+/* VIRTCHNL_OP_GET_MAX_RSS_QREGION
+ *
+ * if VIRTCHNL_VF_LARGE_NUM_QPAIRS was negotiated in VIRTCHNL_OP_GET_VF_RESOURCES
+ * then this op must be supported.
+ *
+ * VF sends this message in order to query the max RSS queue region
+ * size supported by PF, when VIRTCHNL_VF_LARGE_NUM_QPAIRS is enabled.
+ * This information should be used when configuring the RSS LUT and/or
+ * configuring queue region based filters.
+ *
+ * The maximum RSS queue region is 2^qregion_width. So, a qregion_width
+ * of 6 would inform the VF that the PF supports a maximum RSS queue region
+ * of 64.
+ *
+ * A queue region represents a range of queues that can be used to configure
+ * a RSS LUT. For example, if a VF is given 64 queues, but only a max queue
+ * region size of 16 (i.e. 2^qregion_width = 16) then it will only be able
+ * to configure the RSS LUT with queue indices from 0 to 15. However, other
+ * filters can be used to direct packets to queues >15 via specifying a queue
+ * base/offset and queue region width.
+ */
+struct virtchnl_max_rss_qregion {
+	u16 vport_id;
+	u16 qregion_width;
+	u8 pad[4];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_max_rss_qregion);
+
 /* VIRTCHNL_OP_ADD_ETH_ADDR
  * VF sends this message in order to add one or more unicast or multicast
  * address filters for the specified VSI.
@@ -538,17 +851,17 @@ VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_vlan_filter_list);
  */
 enum virtchnl_vlan_support {
 	VIRTCHNL_VLAN_UNSUPPORTED =		0,
-	VIRTCHNL_VLAN_ETHERTYPE_8100 =		BIT(0),
-	VIRTCHNL_VLAN_ETHERTYPE_88A8 =		BIT(1),
-	VIRTCHNL_VLAN_ETHERTYPE_9100 =		BIT(2),
-	VIRTCHNL_VLAN_TAG_LOCATION_L2TAG1 =	BIT(8),
-	VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2 =	BIT(9),
-	VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2_2 =	BIT(10),
-	VIRTCHNL_VLAN_PRIO =			BIT(24),
-	VIRTCHNL_VLAN_FILTER_MASK =		BIT(28),
-	VIRTCHNL_VLAN_ETHERTYPE_AND =		BIT(29),
-	VIRTCHNL_VLAN_ETHERTYPE_XOR =		BIT(30),
-	VIRTCHNL_VLAN_TOGGLE =			BIT(31),
+	VIRTCHNL_VLAN_ETHERTYPE_8100 =		0x00000001,
+	VIRTCHNL_VLAN_ETHERTYPE_88A8 =		0x00000002,
+	VIRTCHNL_VLAN_ETHERTYPE_9100 =		0x00000004,
+	VIRTCHNL_VLAN_TAG_LOCATION_L2TAG1 =	0x00000100,
+	VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2 =	0x00000200,
+	VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2_2 =	0x00000400,
+	VIRTCHNL_VLAN_PRIO =			0x01000000,
+	VIRTCHNL_VLAN_FILTER_MASK =		0x10000000,
+	VIRTCHNL_VLAN_ETHERTYPE_AND =		0x20000000,
+	VIRTCHNL_VLAN_ETHERTYPE_XOR =		0x40000000,
+	VIRTCHNL_VLAN_TOGGLE =			0x80000000
 };
 
 /* This structure is used as part of the VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS
@@ -818,6 +1131,43 @@ VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl_vlan_filter_list_v2);
  *
  * virtchnl_vlan_setting.vport_id = vport_id or vsi_id assigned to the VF on
  * initialization.
+ *
+ * VIRTCHNL_OP_ENABLE_VLAN_FILTERING_V2
+ * VIRTCHNL_OP_DISABLE_VLAN_FILTERING_V2
+ *
+ * VF sends this message to enable or disable VLAN filtering. It also needs to
+ * specify an ethertype. The VF knows which VLAN ethertypes are allowed and
+ * whether or not it's allowed to enable/disable filtering via the
+ * VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS message. The VF needs to
+ * parse the virtchnl_vlan_caps.filtering fields to determine which, if any,
+ * filtering messages are allowed.
+ *
+ * For example, if the PF populates the virtchnl_vlan_caps.filtering in the
+ * following manner the VF will be allowed to enable/disable 0x8100 and 0x88a8
+ * outer VLAN filtering together. Note, that the VIRTCHNL_VLAN_ETHERTYPE_AND
+ * means that all filtering ethertypes will to be enabled and disabled together
+ * regardless of the request from the VF. This means that the underlying
+ * hardware only supports VLAN filtering for all VLAN the specified ethertypes
+ * or none of them.
+ *
+ * virtchnl_vlan_caps.filtering.filtering_support.outer =
+ *			VIRTCHNL_VLAN_TOGGLE |
+ *			VIRTCHNL_VLAN_ETHERTYPE_8100 |
+ *			VIRTHCNL_VLAN_ETHERTYPE_88A8 |
+ *			VIRTCHNL_VLAN_ETHERTYPE_9100 |
+ *			VIRTCHNL_VLAN_ETHERTYPE_AND;
+ *
+ * In order to enable outer VLAN filtering for 0x88a8 and 0x8100 VLANs (0x9100
+ * VLANs aren't supported by the VF driver), the VF would populate the
+ * virtchnl_vlan_setting structure in the following manner and send the
+ * VIRTCHNL_OP_ENABLE_VLAN_FILTERING_V2. The same message format would be used
+ * to disable outer VLAN filtering for 0x88a8 and 0x8100 VLANs, but the
+ * VIRTCHNL_OP_DISABLE_VLAN_FILTERING_V2 opcode is used.
+ *
+ * virtchnl_vlan_setting.outer_ethertype_setting =
+ *			VIRTCHNL_VLAN_ETHERTYPE_8100 |
+ *			VIRTCHNL_VLAN_ETHERTYPE_88A8;
+ *
  */
 struct virtchnl_vlan_setting {
 	u32 outer_ethertype_setting;
@@ -848,9 +1198,24 @@ VIRTCHNL_CHECK_STRUCT_LEN(4, virtchnl_promisc_info);
  * the virtchnl_queue_select struct to specify the VSI. The queue_id
  * field is ignored by the PF.
  *
- * PF replies with struct eth_stats in an external buffer.
+ * PF replies with struct virtchnl_eth_stats in an external buffer.
  */
 
+struct virtchnl_eth_stats {
+	u64 rx_bytes;			/* received bytes */
+	u64 rx_unicast;			/* received unicast pkts */
+	u64 rx_multicast;		/* received multicast pkts */
+	u64 rx_broadcast;		/* received broadcast pkts */
+	u64 rx_discards;
+	u64 rx_unknown_protocol;
+	u64 tx_bytes;			/* transmitted bytes */
+	u64 tx_unicast;			/* transmitted unicast pkts */
+	u64 tx_multicast;		/* transmitted multicast pkts */
+	u64 tx_broadcast;		/* transmitted broadcast pkts */
+	u64 tx_discards;
+	u64 tx_errors;
+};
+
 /* VIRTCHNL_OP_CONFIG_RSS_KEY
  * VIRTCHNL_OP_CONFIG_RSS_LUT
  * VF sends these messages to configure RSS. Only supported if both PF
@@ -889,6 +1254,21 @@ struct virtchnl_rss_hena {
 
 VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_rss_hena);
 
+/* Type of RSS algorithm */
+enum virtchnl_rss_algorithm {
+	VIRTCHNL_RSS_ALG_TOEPLITZ_ASYMMETRIC	= 0,
+	VIRTCHNL_RSS_ALG_R_ASYMMETRIC		= 1,
+	VIRTCHNL_RSS_ALG_TOEPLITZ_SYMMETRIC	= 2,
+	VIRTCHNL_RSS_ALG_XOR_SYMMETRIC		= 3,
+};
+
+/* This is used by PF driver to enforce how many channels can be supported.
+ * When ADQ_V2 capability is negotiated, it will allow 16 channels otherwise
+ * PF driver will allow only max 4 channels
+ */
+#define VIRTCHNL_MAX_ADQ_CHANNELS 4
+#define VIRTCHNL_MAX_ADQ_V2_CHANNELS 16
+
 /* VIRTCHNL_OP_ENABLE_CHANNELS
  * VIRTCHNL_OP_DISABLE_CHANNELS
  * VF sends these messages to enable or disable channels based on
@@ -924,6 +1304,11 @@ VIRTCHNL_CHECK_STRUCT_LEN(24, virtchnl_tc_info);
 struct virtchnl_l4_spec {
 	u8	src_mac[ETH_ALEN];
 	u8	dst_mac[ETH_ALEN];
+	/* vlan_prio is part of this 16 bit field even from OS perspective
+	 * vlan_id:12 is actual vlan_id, then vlanid:bit14..12 is vlan_prio
+	 * in future, when decided to offload vlan_prio, pass that information
+	 * as part of the "vlan_id" field, Bit14..12
+	 */
 	__be16	vlan_id;
 	__be16	pad; /* reserved for future use */
 	__be32	src_ip[4];
@@ -956,20 +1341,40 @@ enum virtchnl_flow_type {
 	/* flow types */
 	VIRTCHNL_TCP_V4_FLOW = 0,
 	VIRTCHNL_TCP_V6_FLOW,
+	VIRTCHNL_UDP_V4_FLOW,
+	VIRTCHNL_UDP_V6_FLOW,
 };
 
 struct virtchnl_filter {
-	union	virtchnl_flow_spec data;
-	union	virtchnl_flow_spec mask;
-	enum	virtchnl_flow_type flow_type;
-	enum	virtchnl_action action;
-	u32	action_meta;
-	u8	field_flags;
-	u8	pad[3];
+	union virtchnl_flow_spec data;
+	union virtchnl_flow_spec mask;
+
+	/* see enum virtchnl_flow_type */
+	s32 flow_type;
+
+	/* see enum virtchnl_action */
+	s32 action;
+	u32 action_meta;
+	u8 field_flags;
 };
 
 VIRTCHNL_CHECK_STRUCT_LEN(272, virtchnl_filter);
 
+struct virtchnl_shaper_bw {
+	/* Unit is Kbps */
+	u32 committed;
+	u32 peak;
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_shaper_bw);
+
+struct virtchnl_supported_rxdids {
+	/* see enum virtchnl_rx_desc_id_bitmasks */
+	u64 supported_rxdids;
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_supported_rxdids);
+
 /* VIRTCHNL_OP_EVENT
  * PF sends this message to inform the VF driver of events that may affect it.
  * No direct response is expected from the VF, though it may generate other
@@ -986,7 +1391,8 @@ enum virtchnl_event_codes {
 #define PF_EVENT_SEVERITY_CERTAIN_DOOM	255
 
 struct virtchnl_pf_event {
-	enum virtchnl_event_codes event;
+	/* see enum virtchnl_event_codes */
+	s32 event;
 	union {
 		/* If the PF driver does not support the new speed reporting
 		 * capabilities then use link_event else use link_event_adv to
@@ -999,6 +1405,7 @@ struct virtchnl_pf_event {
 		struct {
 			enum virtchnl_link_speed link_speed;
 			bool link_status;
+			u8 pad[3];
 		} link_event;
 		struct {
 			/* link_speed provided in Mbps */
@@ -1008,7 +1415,7 @@ struct virtchnl_pf_event {
 		} link_event_adv;
 	} event_data;
 
-	int severity;
+	s32 severity;
 };
 
 VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_pf_event);
@@ -1059,17 +1466,10 @@ enum virtchnl_vfr_states {
 	VIRTCHNL_VFR_VFACTIVE,
 };
 
-/* Type of RSS algorithm */
-enum virtchnl_rss_algorithm {
-	VIRTCHNL_RSS_ALG_TOEPLITZ_ASYMMETRIC	= 0,
-	VIRTCHNL_RSS_ALG_R_ASYMMETRIC		= 1,
-	VIRTCHNL_RSS_ALG_TOEPLITZ_SYMMETRIC	= 2,
-	VIRTCHNL_RSS_ALG_XOR_SYMMETRIC		= 3,
-};
-
 #define VIRTCHNL_MAX_NUM_PROTO_HDRS	32
 #define PROTO_HDR_SHIFT			5
-#define PROTO_HDR_FIELD_START(proto_hdr_type) ((proto_hdr_type) << PROTO_HDR_SHIFT)
+#define PROTO_HDR_FIELD_START(proto_hdr_type) \
+					((proto_hdr_type) << PROTO_HDR_SHIFT)
 #define PROTO_HDR_FIELD_MASK ((1UL << PROTO_HDR_SHIFT) - 1)
 
 /* VF use these macros to configure each protocol header.
@@ -1099,10 +1499,10 @@ enum virtchnl_rss_algorithm {
 #define VIRTCHNL_GET_PROTO_HDR_TYPE(hdr) \
 	(((hdr)->type) >> PROTO_HDR_SHIFT)
 #define VIRTCHNL_TEST_PROTO_HDR_TYPE(hdr, val) \
-	((hdr)->type == ((val) >> PROTO_HDR_SHIFT))
+	((hdr)->type == ((s32)((val) >> PROTO_HDR_SHIFT)))
 #define VIRTCHNL_TEST_PROTO_HDR(hdr, val) \
-	(VIRTCHNL_TEST_PROTO_HDR_TYPE((hdr), (val)) && \
-	 VIRTCHNL_TEST_PROTO_HDR_FIELD((hdr), (val)))
+	(VIRTCHNL_TEST_PROTO_HDR_TYPE(hdr, val) && \
+	 VIRTCHNL_TEST_PROTO_HDR_FIELD(hdr, val))
 
 /* Protocol header type within a packet segment. A segment consists of one or
  * more protocol headers that make up a logical group of protocol headers. Each
@@ -1128,6 +1528,17 @@ enum virtchnl_proto_hdr_type {
 	VIRTCHNL_PROTO_HDR_ESP,
 	VIRTCHNL_PROTO_HDR_AH,
 	VIRTCHNL_PROTO_HDR_PFCP,
+	VIRTCHNL_PROTO_HDR_GTPC,
+	VIRTCHNL_PROTO_HDR_ECPRI,
+	VIRTCHNL_PROTO_HDR_L2TPV2,
+	VIRTCHNL_PROTO_HDR_PPP,
+	/* IPv4 and IPv6 Fragment header types are only associated to
+	 * VIRTCHNL_PROTO_HDR_IPV4 and VIRTCHNL_PROTO_HDR_IPV6 respectively,
+	 * cannot be used independently.
+	 */
+	VIRTCHNL_PROTO_HDR_IPV4_FRAG,
+	VIRTCHNL_PROTO_HDR_IPV6_EH_FRAG,
+	VIRTCHNL_PROTO_HDR_GRE,
 };
 
 /* Protocol header field within a protocol header. */
@@ -1150,6 +1561,7 @@ enum virtchnl_proto_hdr_field {
 	VIRTCHNL_PROTO_HDR_IPV4_DSCP,
 	VIRTCHNL_PROTO_HDR_IPV4_TTL,
 	VIRTCHNL_PROTO_HDR_IPV4_PROT,
+	VIRTCHNL_PROTO_HDR_IPV4_CHKSUM,
 	/* IPV6 */
 	VIRTCHNL_PROTO_HDR_IPV6_SRC =
 		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_IPV6),
@@ -1157,18 +1569,34 @@ enum virtchnl_proto_hdr_field {
 	VIRTCHNL_PROTO_HDR_IPV6_TC,
 	VIRTCHNL_PROTO_HDR_IPV6_HOP_LIMIT,
 	VIRTCHNL_PROTO_HDR_IPV6_PROT,
+	/* IPV6 Prefix */
+	VIRTCHNL_PROTO_HDR_IPV6_PREFIX32_SRC,
+	VIRTCHNL_PROTO_HDR_IPV6_PREFIX32_DST,
+	VIRTCHNL_PROTO_HDR_IPV6_PREFIX40_SRC,
+	VIRTCHNL_PROTO_HDR_IPV6_PREFIX40_DST,
+	VIRTCHNL_PROTO_HDR_IPV6_PREFIX48_SRC,
+	VIRTCHNL_PROTO_HDR_IPV6_PREFIX48_DST,
+	VIRTCHNL_PROTO_HDR_IPV6_PREFIX56_SRC,
+	VIRTCHNL_PROTO_HDR_IPV6_PREFIX56_DST,
+	VIRTCHNL_PROTO_HDR_IPV6_PREFIX64_SRC,
+	VIRTCHNL_PROTO_HDR_IPV6_PREFIX64_DST,
+	VIRTCHNL_PROTO_HDR_IPV6_PREFIX96_SRC,
+	VIRTCHNL_PROTO_HDR_IPV6_PREFIX96_DST,
 	/* TCP */
 	VIRTCHNL_PROTO_HDR_TCP_SRC_PORT =
 		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_TCP),
 	VIRTCHNL_PROTO_HDR_TCP_DST_PORT,
+	VIRTCHNL_PROTO_HDR_TCP_CHKSUM,
 	/* UDP */
 	VIRTCHNL_PROTO_HDR_UDP_SRC_PORT =
 		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_UDP),
 	VIRTCHNL_PROTO_HDR_UDP_DST_PORT,
+	VIRTCHNL_PROTO_HDR_UDP_CHKSUM,
 	/* SCTP */
 	VIRTCHNL_PROTO_HDR_SCTP_SRC_PORT =
 		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_SCTP),
 	VIRTCHNL_PROTO_HDR_SCTP_DST_PORT,
+	VIRTCHNL_PROTO_HDR_SCTP_CHKSUM,
 	/* GTPU_IP */
 	VIRTCHNL_PROTO_HDR_GTPU_IP_TEID =
 		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_GTPU_IP),
@@ -1192,10 +1620,29 @@ enum virtchnl_proto_hdr_field {
 	VIRTCHNL_PROTO_HDR_PFCP_S_FIELD =
 		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_PFCP),
 	VIRTCHNL_PROTO_HDR_PFCP_SEID,
+	/* GTPC */
+	VIRTCHNL_PROTO_HDR_GTPC_TEID =
+		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_GTPC),
+	/* ECPRI */
+	VIRTCHNL_PROTO_HDR_ECPRI_MSG_TYPE =
+		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_ECPRI),
+	VIRTCHNL_PROTO_HDR_ECPRI_PC_RTC_ID,
+	/* IPv4 Dummy Fragment */
+	VIRTCHNL_PROTO_HDR_IPV4_FRAG_PKID =
+		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_IPV4_FRAG),
+	/* IPv6 Extension Fragment */
+	VIRTCHNL_PROTO_HDR_IPV6_EH_FRAG_PKID =
+		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_IPV6_EH_FRAG),
+	/* GTPU_DWN/UP */
+	VIRTCHNL_PROTO_HDR_GTPU_DWN_QFI =
+		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_GTPU_EH_PDU_DWN),
+	VIRTCHNL_PROTO_HDR_GTPU_UP_QFI =
+		PROTO_HDR_FIELD_START(VIRTCHNL_PROTO_HDR_GTPU_EH_PDU_UP),
 };
 
 struct virtchnl_proto_hdr {
-	enum virtchnl_proto_hdr_type type;
+	/* see enum virtchnl_proto_hdr_type */
+	s32 type;
 	u32 field_selector; /* a bit mask to select field for header type */
 	u8 buffer[64];
 	/**
@@ -1209,7 +1656,6 @@ VIRTCHNL_CHECK_STRUCT_LEN(72, virtchnl_proto_hdr);
 
 struct virtchnl_proto_hdrs {
 	u8 tunnel_level;
-	u8 pad[3];
 	/**
 	 * specify where protocol header start from.
 	 * 0 - from the outer layer
@@ -1225,15 +1671,18 @@ VIRTCHNL_CHECK_STRUCT_LEN(2312, virtchnl_proto_hdrs);
 
 struct virtchnl_rss_cfg {
 	struct virtchnl_proto_hdrs proto_hdrs;	   /* protocol headers */
-	enum virtchnl_rss_algorithm rss_algorithm; /* RSS algorithm type */
-	u8 reserved[128];			   /* reserve for future */
+
+	/* see enum virtchnl_rss_algorithm; rss algorithm type */
+	s32 rss_algorithm;
+	u8 reserved[128];                          /* reserve for future */
 };
 
 VIRTCHNL_CHECK_STRUCT_LEN(2444, virtchnl_rss_cfg);
 
 /* action configuration for FDIR */
 struct virtchnl_filter_action {
-	enum virtchnl_action type;
+	/* see enum virtchnl_action type */
+	s32 type;
 	union {
 		/* used for queue and qgroup action */
 		struct {
@@ -1275,7 +1724,7 @@ VIRTCHNL_CHECK_STRUCT_LEN(2604, virtchnl_fdir_rule);
 /* Status returned to VF after VF requests FDIR commands
  * VIRTCHNL_FDIR_SUCCESS
  * VF FDIR related request is successfully done by PF
- * The request can be OP_ADD/DEL.
+ * The request can be OP_ADD/DEL/QUERY_FDIR_FILTER.
  *
  * VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE
  * OP_ADD_FDIR_FILTER request is failed due to no Hardware resource.
@@ -1296,6 +1745,10 @@ VIRTCHNL_CHECK_STRUCT_LEN(2604, virtchnl_fdir_rule);
  * VIRTCHNL_FDIR_FAILURE_RULE_TIMEOUT
  * OP_ADD/DEL_FDIR_FILTER request is failed due to timing out
  * for programming.
+ *
+ * VIRTCHNL_FDIR_FAILURE_QUERY_INVALID
+ * OP_QUERY_FDIR_FILTER request is failed due to parameters validation,
+ * for example, VF query counter of a rule who has no counter action.
  */
 enum virtchnl_fdir_prgm_status {
 	VIRTCHNL_FDIR_SUCCESS = 0,
@@ -1305,6 +1758,7 @@ enum virtchnl_fdir_prgm_status {
 	VIRTCHNL_FDIR_FAILURE_RULE_NONEXIST,
 	VIRTCHNL_FDIR_FAILURE_RULE_INVALID,
 	VIRTCHNL_FDIR_FAILURE_RULE_TIMEOUT,
+	VIRTCHNL_FDIR_FAILURE_QUERY_INVALID,
 };
 
 /* VIRTCHNL_OP_ADD_FDIR_FILTER
@@ -1321,7 +1775,9 @@ struct virtchnl_fdir_add {
 	u16 validate_only; /* INPUT */
 	u32 flow_id;       /* OUTPUT */
 	struct virtchnl_fdir_rule rule_cfg; /* INPUT */
-	enum virtchnl_fdir_prgm_status status; /* OUTPUT */
+
+	/* see enum virtchnl_fdir_prgm_status; OUTPUT */
+	s32 status;
 };
 
 VIRTCHNL_CHECK_STRUCT_LEN(2616, virtchnl_fdir_add);
@@ -1334,11 +1790,743 @@ struct virtchnl_fdir_del {
 	u16 vsi_id;  /* INPUT */
 	u16 pad;
 	u32 flow_id; /* INPUT */
-	enum virtchnl_fdir_prgm_status status; /* OUTPUT */
+
+	/* see enum virtchnl_fdir_prgm_status; OUTPUT */
+	s32 status;
 };
 
 VIRTCHNL_CHECK_STRUCT_LEN(12, virtchnl_fdir_del);
 
+/* VIRTCHNL_OP_GET_QOS_CAPS
+ * VF sends this message to get its QoS Caps, such as
+ * TC number, Arbiter and Bandwidth.
+ */
+struct virtchnl_qos_cap_elem {
+	u8 tc_num;
+	u8 tc_prio;
+#define VIRTCHNL_ABITER_STRICT      0
+#define VIRTCHNL_ABITER_ETS         2
+	u8 arbiter;
+#define VIRTCHNL_STRICT_WEIGHT      1
+	u8 weight;
+	enum virtchnl_bw_limit_type type;
+	union {
+		struct virtchnl_shaper_bw shaper;
+		u8 pad2[32];
+	};
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl_qos_cap_elem);
+
+struct virtchnl_qos_cap_list {
+	u16 vsi_id;
+	u16 num_elem;
+	struct virtchnl_qos_cap_elem cap[1];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(44, virtchnl_qos_cap_list);
+
+/* VIRTCHNL_OP_CONFIG_QUEUE_TC_MAP
+ * VF sends message virtchnl_queue_tc_mapping to set queue to tc
+ * mapping for all the Tx and Rx queues with a specified VSI, and
+ * would get response about bitmap of valid user priorities
+ * associated with queues.
+ */
+struct virtchnl_queue_tc_mapping {
+	u16 vsi_id;
+	u16 num_tc;
+	u16 num_queue_pairs;
+	u8 pad[2];
+	union {
+		struct {
+			u16 start_queue_id;
+			u16 queue_count;
+		} req;
+		struct {
+#define VIRTCHNL_USER_PRIO_TYPE_UP	0
+#define VIRTCHNL_USER_PRIO_TYPE_DSCP	1
+			u16 prio_type;
+			u16 valid_prio_bitmap;
+		} resp;
+	} tc[1];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(12, virtchnl_queue_tc_mapping);
+
+/* queue types */
+enum virtchnl_queue_type {
+	VIRTCHNL_QUEUE_TYPE_TX			= 0,
+	VIRTCHNL_QUEUE_TYPE_RX			= 1,
+};
+
+/* structure to specify a chunk of contiguous queues */
+struct virtchnl_queue_chunk {
+	/* see enum virtchnl_queue_type */
+	s32 type;
+	u16 start_queue_id;
+	u16 num_queues;
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_queue_chunk);
+
+/* structure to specify several chunks of contiguous queues */
+struct virtchnl_queue_chunks {
+	u16 num_chunks;
+	u16 rsvd;
+	struct virtchnl_queue_chunk chunks[1];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(12, virtchnl_queue_chunks);
+
+/* VIRTCHNL_OP_ENABLE_QUEUES_V2
+ * VIRTCHNL_OP_DISABLE_QUEUES_V2
+ *
+ * These opcodes can be used if VIRTCHNL_VF_LARGE_NUM_QPAIRS was negotiated in
+ * VIRTCHNL_OP_GET_VF_RESOURCES
+ *
+ * VF sends virtchnl_ena_dis_queues struct to specify the queues to be
+ * enabled/disabled in chunks. Also applicable to single queue RX or
+ * TX. PF performs requested action and returns status.
+ */
+struct virtchnl_del_ena_dis_queues {
+	u16 vport_id;
+	u16 pad;
+	struct virtchnl_queue_chunks chunks;
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_del_ena_dis_queues);
+
+/* Virtchannel interrupt throttling rate index */
+enum virtchnl_itr_idx {
+	VIRTCHNL_ITR_IDX_0	= 0,
+	VIRTCHNL_ITR_IDX_1	= 1,
+	VIRTCHNL_ITR_IDX_NO_ITR	= 3,
+};
+
+/* Queue to vector mapping */
+struct virtchnl_queue_vector {
+	u16 queue_id;
+	u16 vector_id;
+	u8 pad[4];
+
+	/* see enum virtchnl_itr_idx */
+	s32 itr_idx;
+
+	/* see enum virtchnl_queue_type */
+	s32 queue_type;
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_queue_vector);
+
+/* VIRTCHNL_OP_MAP_QUEUE_VECTOR
+ *
+ * This opcode can be used only if VIRTCHNL_VF_LARGE_NUM_QPAIRS was negotiated
+ * in VIRTCHNL_OP_GET_VF_RESOURCES
+ *
+ * VF sends this message to map queues to vectors and ITR index registers.
+ * External data buffer contains virtchnl_queue_vector_maps structure
+ * that contains num_qv_maps of virtchnl_queue_vector structures.
+ * PF maps the requested queue vector maps after validating the queue and vector
+ * ids and returns a status code.
+ */
+struct virtchnl_queue_vector_maps {
+	u16 vport_id;
+	u16 num_qv_maps;
+	u8 pad[4];
+	struct virtchnl_queue_vector qv_maps[1];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(24, virtchnl_queue_vector_maps);
+
+/* VIRTCHNL_VF_CAP_PTP
+ *   VIRTCHNL_OP_1588_PTP_GET_CAPS
+ *   VIRTCHNL_OP_1588_PTP_GET_TIME
+ *   VIRTCHNL_OP_1588_PTP_SET_TIME
+ *   VIRTCHNL_OP_1588_PTP_ADJ_TIME
+ *   VIRTCHNL_OP_1588_PTP_ADJ_FREQ
+ *   VIRTCHNL_OP_1588_PTP_TX_TIMESTAMP
+ *   VIRTCHNL_OP_1588_PTP_GET_PIN_CFGS
+ *   VIRTCHNL_OP_1588_PTP_SET_PIN_CFG
+ *   VIRTCHNL_OP_1588_PTP_EXT_TIMESTAMP
+ *
+ * Support for offloading control of the device PTP hardware clock (PHC) is enabled
+ * by VIRTCHNL_VF_CAP_PTP. This capability allows a VF to request that PF
+ * enable Tx and Rx timestamps, and request access to read and/or write the
+ * PHC on the device, as well as query if the VF has direct access to the PHC
+ * time registers.
+ *
+ * The VF must set VIRTCHNL_VF_CAP_PTP in its capabilities when requesting
+ * resources. If the capability is set in reply, the VF must then send
+ * a VIRTCHNL_OP_1588_PTP_GET_CAPS request during initialization. The VF indicates
+ * what extended capabilities it wants by setting the appropriate flags in the
+ * caps field. The PF reply will indicate what features are enabled for
+ * that VF.
+ */
+#define VIRTCHNL_1588_PTP_CAP_TX_TSTAMP		BIT(0)
+#define VIRTCHNL_1588_PTP_CAP_RX_TSTAMP		BIT(1)
+#define VIRTCHNL_1588_PTP_CAP_READ_PHC		BIT(2)
+#define VIRTCHNL_1588_PTP_CAP_WRITE_PHC		BIT(3)
+#define VIRTCHNL_1588_PTP_CAP_PHC_REGS		BIT(4)
+#define VIRTCHNL_1588_PTP_CAP_PIN_CFG		BIT(5)
+
+/**
+ * virtchnl_phc_regs
+ *
+ * Structure defines how the VF should access PHC related registers. The VF
+ * must request VIRTCHNL_1588_PTP_CAP_PHC_REGS. If the VF has access to PHC
+ * registers, the PF will reply with the capability flag set, and with this
+ * structure detailing what PCIe region and what offsets to use. If direct
+ * access is not available, this entire structure is reserved and the fields
+ * will be zero.
+ *
+ * If necessary in a future extension, a separate capability mutually
+ * exclusive with VIRTCHNL_1588_PTP_CAP_PHC_REGS might be used to change the
+ * entire format of this structure within virtchnl_ptp_caps.
+ *
+ * @clock_hi: Register offset of the high 32 bits of clock time
+ * @clock_lo: Register offset of the low 32 bits of clock time
+ * @pcie_region: The PCIe region the registers are located in.
+ * @rsvd: Reserved bits for future extension
+ */
+struct virtchnl_phc_regs {
+	u32 clock_hi;
+	u32 clock_lo;
+	u8 pcie_region;
+	u8 rsvd[15];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(24, virtchnl_phc_regs);
+
+/* timestamp format enumeration
+ *
+ * VIRTCHNL_1588_PTP_TSTAMP_40BIT
+ *
+ *   This format indicates a timestamp that uses the 40bit format from the
+ *   flexible Rx descriptors. It is also the default Tx timestamp format used
+ *   today.
+ *
+ *   Such a timestamp has the following 40bit format:
+ *
+ *   *--------------------------------*-------------------------------*-----------*
+ *   | 32 bits of time in nanoseconds | 7 bits of sub-nanosecond time | valid bit |
+ *   *--------------------------------*-------------------------------*-----------*
+ *
+ *   The timestamp is passed in a u64, with the upper 24bits of the field
+ *   reserved as zero.
+ *
+ *   With this format, in order to report a full 64bit timestamp to userspace
+ *   applications, the VF is responsible for performing timestamp extension by
+ *   carefully comparing the timestamp with the PHC time. This can correctly
+ *   be achieved with a recent cached copy of the PHC time by doing delta
+ *   comparison between the 32bits of nanoseconds in the timestamp with the
+ *   lower 32 bits of the clock time. For this to work, the cached PHC time
+ *   must be from within 2^31 nanoseconds (~2.1 seconds) of when the timestamp
+ *   was captured.
+ *
+ * VIRTCHNL_1588_PTP_TSTAMP_64BIT_NS
+ *
+ *   This format indicates a timestamp that is 64 bits of nanoseconds.
+ */
+enum virtchnl_ptp_tstamp_format {
+	VIRTCHNL_1588_PTP_TSTAMP_40BIT = 0,
+	VIRTCHNL_1588_PTP_TSTAMP_64BIT_NS = 1,
+};
+
+/**
+ * virtchnl_ptp_caps
+ *
+ * Structure that defines the PTP capabilities available to the VF. The VF
+ * sends VIRTCHNL_OP_1588_PTP_GET_CAPS, and must fill in the ptp_caps field
+ * indicating what capabilities it is requesting. The PF will respond with the
+ * same message with the virtchnl_ptp_caps structure indicating what is
+ * enabled for the VF.
+ *
+ * @phc_regs: If VIRTCHNL_1588_PTP_CAP_PHC_REGS is set, contains information
+ *            on the PHC related registers available to the VF.
+ * @caps: On send, VF sets what capabilities it requests. On reply, PF
+ *        indicates what has been enabled for this VF. The PF shall not set
+ *        bits which were not requested by the VF.
+ * @max_adj: The maximum adjustment capable of being requested by
+ *           VIRTCHNL_OP_1588_PTP_ADJ_FREQ, in parts per billion. Note that 1 ppb
+ *           is approximately 65.5 scaled_ppm. The PF shall clamp any
+ *           frequency adjustment in VIRTCHNL_op_1588_ADJ_FREQ to +/- max_adj.
+ *           Use of ppb in this field allows fitting the value into 4 bytes
+ *           instead of potentially requiring 8 if scaled_ppm units were used.
+ * @tx_tstamp_idx: The Tx timestamp index to set in the transmit descriptor
+ *                 when requesting a timestamp for an outgoing packet.
+ *                 Reserved if VIRTCHNL_1588_PTP_CAP_TX_TSTAMP is not enabled.
+ * @n_ext_ts: Number of external timestamp functions available. Reserved
+ *            if VIRTCHNL_1588_PTP_CAP_PIN_CFG is not enabled.
+ * @n_per_out: Number of periodic output functions available. Reserved if
+ *             VIRTCHNL_1588_PTP_CAP_PIN_CFG is not enabled.
+ * @n_pins: Number of physical programmable pins able to be controlled.
+ *          Reserved if VIRTCHNL_1588_PTP_CAP_PIN_CFG is not enabled.
+ * @tx_tstamp_format: Format of the Tx timestamps. Valid formats are defined
+ *                    by the virtchnl_ptp_tstamp enumeration. Note that Rx
+ *                    timestamps are tied to the descriptor format, and do not
+ *                    have a separate format field.
+ * @rsvd: Reserved bits for future extension.
+ *
+ * PTP capabilities
+ *
+ * VIRTCHNL_1588_PTP_CAP_TX_TSTAMP indicates that the VF can request transmit
+ * timestamps for packets in its transmit descriptors. If this is unset,
+ * transmit timestamp requests are ignored. Note that only one outstanding Tx
+ * timestamp request will be honored at a time. The PF shall handle receipt of
+ * the timestamp from the hardware, and will forward this to the VF by sending
+ * a VIRTCHNL_OP_1588_TX_TIMESTAMP message.
+ *
+ * VIRTCHNL_1588_PTP_CAP_RX_TSTAMP indicates that the VF receive queues have
+ * receive timestamps enabled in the flexible descriptors. Note that this
+ * requires a VF to also negotiate to enable advanced flexible descriptors in
+ * the receive path instead of the default legacy descriptor format.
+ *
+ * For a detailed description of the current Tx and Rx timestamp format, see
+ * the section on virtchnl_phc_tx_tstamp. Future extensions may indicate
+ * timestamp format in the capability structure.
+ *
+ * VIRTCHNL_1588_PTP_CAP_READ_PHC indicates that the VF may read the PHC time
+ * via the VIRTCHNL_OP_1588_PTP_GET_TIME command, or by directly reading PHC
+ * registers if VIRTCHNL_1588_PTP_CAP_PHC_REGS is also set.
+ *
+ * VIRTCHNL_1588_PTP_CAP_WRITE_PHC indicates that the VF may request updates
+ * to the PHC time via VIRTCHNL_OP_1588_PTP_SET_TIME,
+ * VIRTCHNL_OP_1588_PTP_ADJ_TIME, and VIRTCHNL_OP_1588_PTP_ADJ_FREQ.
+ *
+ * VIRTCHNL_1588_PTP_CAP_PHC_REGS indicates that the VF has direct access to
+ * certain PHC related registers, primarily for lower latency access to the
+ * PHC time. If this is set, the VF shall read the virtchnl_phc_regs section
+ * of the capabilities to determine the location of the clock registers. If
+ * this capability is not set, the entire 24 bytes of virtchnl_phc_regs is
+ * reserved as zero. Future extensions define alternative formats for this
+ * data, in which case they will be mutually exclusive with this capability.
+ *
+ * VIRTCHNL_1588_PTP_CAP_PIN_CFG indicates that the VF has the capability to
+ * control software defined pins. These pins can be assigned either as an
+ * input to timestamp external events, or as an output to cause a periodic
+ * signal output.
+ *
+ * Note that in the future, additional capability flags may be added which
+ * indicate additional extended support. All fields marked as reserved by this
+ * header will be set to zero. VF implementations should verify this to ensure
+ * that future extensions do not break compatibility.
+ */
+struct virtchnl_ptp_caps {
+	struct virtchnl_phc_regs phc_regs;
+	u32 caps;
+	s32 max_adj;
+	u8 tx_tstamp_idx;
+	u8 n_ext_ts;
+	u8 n_per_out;
+	u8 n_pins;
+	/* see enum virtchnl_ptp_tstamp_format */
+	u8 tx_tstamp_format;
+	u8 rsvd[11];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(48, virtchnl_ptp_caps);
+
+/**
+ * virtchnl_phc_time
+ * @time: PHC time in nanoseconds
+ * @rsvd: Reserved for future extension
+ *
+ * Structure sent with VIRTCHNL_OP_1588_PTP_SET_TIME and received with
+ * VIRTCHNL_OP_1588_PTP_GET_TIME. Contains the 64bits of PHC clock time in
+ * nanoseconds.
+ *
+ * VIRTCHNL_OP_1588_PTP_SET_TIME may be sent by the VF if
+ * VIRTCHNL_1588_PTP_CAP_WRITE_PHC is set. This will request that the PHC time
+ * be set to the requested value. This operation is non-atomic and thus does
+ * not adjust for the delay between request and completion. It is recommended
+ * that the VF use VIRTCHNL_OP_1588_PTP_ADJ_TIME and
+ * VIRTCHNL_OP_1588_PTP_ADJ_FREQ when possible to steer the PHC clock.
+ *
+ * VIRTCHNL_OP_1588_PTP_GET_TIME may be sent to request the current time of
+ * the PHC. This op is available in case direct access via the PHC registers
+ * is not available.
+ */
+struct virtchnl_phc_time {
+	u64 time;
+	u8 rsvd[8];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_phc_time);
+
+/**
+ * virtchnl_phc_adj_time
+ * @delta: offset requested to adjust clock by
+ * @rsvd: reserved for future extension
+ *
+ * Sent with VIRTCHNL_OP_1588_PTP_ADJ_TIME. Used to request an adjustment of
+ * the clock time by the provided delta, with negative values representing
+ * subtraction. VIRTCHNL_OP_1588_PTP_ADJ_TIME may not be sent unless
+ * VIRTCHNL_1588_PTP_CAP_WRITE_PHC is set.
+ *
+ * The atomicity of this operation is not guaranteed. The PF should perform an
+ * atomic update using appropriate mechanisms if possible. However, this is
+ * not guaranteed.
+ */
+struct virtchnl_phc_adj_time {
+	s64 delta;
+	u8 rsvd[8];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_phc_adj_time);
+
+/**
+ * virtchnl_phc_adj_freq
+ * @scaled_ppm: frequency adjustment represented in scaled parts per million
+ * @rsvd: Reserved for future extension
+ *
+ * Sent with the VIRTCHNL_OP_1588_PTP_ADJ_FREQ to request an adjustment to the
+ * clock frequency. The adjustment is in scaled_ppm, which is parts per
+ * million with a 16bit binary fractional portion. 1 part per billion is
+ * approximately 65.5 scaled_ppm.
+ *
+ *  ppm = scaled_ppm / 2^16
+ *
+ *  ppb = scaled_ppm * 1000 / 2^16 or
+ *
+ *  ppb = scaled_ppm * 125 / 2^13
+ *
+ * The PF shall clamp any adjustment request to plus or minus the specified
+ * max_adj in the PTP capabilities.
+ *
+ * Requests for adjustment are always based off of nominal clock frequency and
+ * not compounding. To reset clock frequency, send a request with a scaled_ppm
+ * of 0.
+ */
+struct virtchnl_phc_adj_freq {
+	s64 scaled_ppm;
+	u8 rsvd[8];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_phc_adj_freq);
+
+/**
+ * virtchnl_phc_tx_stamp
+ * @tstamp: timestamp value
+ * @rsvd: Reserved for future extension
+ *
+ * Sent along with VIRTCHNL_OP_1588_PTP_TX_TIMESTAMP from the PF when a Tx
+ * timestamp for the index associated with this VF in the tx_tstamp_idx field
+ * is captured by hardware.
+ *
+ * If VIRTCHNL_1588_PTP_CAP_TX_TSTAMP is set, the VF may request a timestamp
+ * for a packet in its transmit context descriptor by setting the appropriate
+ * flag and setting the timestamp index provided by the PF. On transmission,
+ * the timestamp will be captured and sent to the PF. The PF will forward this
+ * timestamp to the VF via the VIRTCHNL_1588_PTP_CAP_TX_TSTAMP op.
+ *
+ * The timestamp format is defined by the tx_tstamp_format field of the
+ * virtchnl_ptp_caps structure.
+ */
+struct virtchnl_phc_tx_tstamp {
+	u64 tstamp;
+	u8 rsvd[8];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_phc_tx_tstamp);
+
+enum virtchnl_phc_pin_func {
+	VIRTCHNL_PHC_PIN_FUNC_NONE = 0, /* Not assigned to any function */
+	VIRTCHNL_PHC_PIN_FUNC_EXT_TS = 1, /* Assigned to external timestamp */
+	VIRTCHNL_PHC_PIN_FUNC_PER_OUT = 2, /* Assigned to periodic output */
+};
+
+/* Length of the pin configuration data. All pin configurations belong within
+ * the same union and *must* have this length in bytes.
+ */
+#define VIRTCHNL_PIN_CFG_LEN 64
+
+/* virtchnl_phc_ext_ts_mode
+ *
+ * Mode of the external timestamp, indicating which edges of the input signal
+ * to timestamp.
+ */
+enum virtchnl_phc_ext_ts_mode {
+	VIRTCHNL_PHC_EXT_TS_NONE = 0,
+	VIRTCHNL_PHC_EXT_TS_RISING_EDGE = 1,
+	VIRTCHNL_PHC_EXT_TS_FALLING_EDGE = 2,
+	VIRTCHNL_PHC_EXT_TS_BOTH_EDGES = 3,
+};
+
+/**
+ * virtchnl_phc_ext_ts
+ * @mode: mode of external timestamp request
+ * @rsvd: reserved for future extension
+ *
+ * External timestamp configuration. Defines the configuration for this
+ * external timestamp function.
+ *
+ * If mode is VIRTCHNL_PHC_EXT_TS_NONE, the function is essentially disabled,
+ * timestamping nothing.
+ *
+ * If mode is VIRTCHNL_PHC_EXT_TS_RISING_EDGE, the function shall timestamp
+ * the rising edge of the input when it transitions from low to high signal.
+ *
+ * If mode is VIRTCHNL_PHC_EXT_TS_FALLING_EDGE, the function shall timestamp
+ * the falling edge of the input when it transitions from high to low signal.
+ *
+ * If mode is VIRTCHNL_PHC_EXT_TS_BOTH_EDGES, the function shall timestamp
+ * both the rising and falling edge of the signal whenever it changes.
+ *
+ * The PF shall return an error if the requested mode cannot be implemented on
+ * the function.
+ */
+struct virtchnl_phc_ext_ts {
+	u8 mode; /* see virtchnl_phc_ext_ts_mode */
+	u8 rsvd[63];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(VIRTCHNL_PIN_CFG_LEN, virtchnl_phc_ext_ts);
+
+/* virtchnl_phc_per_out_flags
+ *
+ * Flags defining periodic output functionality.
+ */
+enum virtchnl_phc_per_out_flags {
+	VIRTCHNL_PHC_PER_OUT_PHASE_START = BIT(0),
+};
+
+/**
+ * virtchnl_phc_per_out
+ * @start: absolute start time (if VIRTCHNL_PHC_PER_OUT_PHASE_START unset)
+ * @phase: phase offset to start (if VIRTCHNL_PHC_PER_OUT_PHASE_START set)
+ * @period: time to complete a full clock cycle (low - > high -> low)
+ * @on: length of time the signal should stay high
+ * @flags: flags defining the periodic output operation.
+ * rsvd: reserved for future extension
+ *
+ * Configuration for a periodic output signal. Used to define the signal that
+ * should be generated on a given function.
+ *
+ * The period field determines the full length of the clock cycle, including
+ * both duration hold high transition and duration to hold low transition in
+ * nanoseconds.
+ *
+ * The on field determines how long the signal should remain high. For
+ * a traditional square wave clock that is on for some duration and off for
+ * the same duration, use an on length of precisely half the period. The duty
+ * cycle of the clock is period/on.
+ *
+ * If VIRTCHNL_PHC_PER_OUT_PHASE_START is unset, then the request is to start
+ * a clock an absolute time. This means that the clock should start precisely
+ * at the specified time in the start field. If the start time is in the past,
+ * then the periodic output should start at the next valid multiple of the
+ * period plus the start time:
+ *
+ *   new_start = (n * period) + start
+ *     (choose n such that new start is in the future)
+ *
+ * Note that the PF should not reject a start time in the past because it is
+ * possible that such a start time was valid when the request was made, but
+ * became invalid due to delay in programming the pin.
+ *
+ * If VIRTCHNL_PHC_PER_OUT_PHASE_START is set, then the request is to start
+ * the next multiple of the period plus the phase offset. The phase must be
+ * less than the period. In this case, the clock should start as soon possible
+ * at the next available multiple of the period. To calculate a start time
+ * when programming this mode, use:
+ *
+ *   start = (n * period) + phase
+ *     (choose n such that start is in the future)
+ *
+ * A period of zero should be treated as a request to disable the clock
+ * output.
+ */
+struct virtchnl_phc_per_out {
+	union {
+		u64 start;
+		u64 phase;
+	};
+	u64 period;
+	u64 on;
+	u32 flags;
+	u8 rsvd[36];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(VIRTCHNL_PIN_CFG_LEN, virtchnl_phc_per_out);
+
+/* virtchnl_phc_pin_cfg_flags
+ *
+ * Definition of bits in the flags field of the virtchnl_phc_pin_cfg
+ * structure.
+ */
+enum virtchnl_phc_pin_cfg_flags {
+	/* Valid for VIRTCHNL_OP_1588_PTP_SET_PIN_CFG. If set, indicates this
+	 * is a request to verify if the function can be assigned to the
+	 * provided pin. In this case, the ext_ts and per_out fields are
+	 * ignored, and the PF response must be an error if the pin cannot be
+	 * assigned to that function index.
+	 */
+	VIRTCHNL_PHC_PIN_CFG_VERIFY = BIT(0),
+};
+
+/**
+ * virtchnl_phc_set_pin
+ * @pin_index: The pin to get or set
+ * @func: the function type the pin is assigned to
+ * @func_index: the index of the function the pin is assigned to
+ * @ext_ts: external timestamp configuration
+ * @per_out: periodic output configuration
+ * @rsvd1: Reserved for future extension
+ * @rsvd2: Reserved for future extension
+ *
+ * Sent along with the VIRTCHNL_OP_1588_PTP_SET_PIN_CFG op.
+ *
+ * The VF issues a VIRTCHNL_OP_1588_PTP_SET_PIN_CFG to assign the pin to one
+ * of the functions. It must set the pin_index field, the func field, and
+ * the func_index field. The pin_index must be less than n_pins, and the
+ * func_index must be less than the n_ext_ts or n_per_out depending on which
+ * function type is selected. If func is for an external timestamp, the
+ * ext_ts field must be filled in with the desired configuration. Similarly,
+ * if the function is for a periodic output, the per_out field must be
+ * configured.
+ *
+ * If the VIRTCHNL_PHC_PIN_CFG_VERIFY bit of the flag field is set, this is
+ * a request only to verify the configuration, not to set it. In this case,
+ * the PF should simply report an error if the requested pin cannot be
+ * assigned to the requested function. This allows VF to determine whether or
+ * not a given function can be assigned to a specific pin. Other flag bits are
+ * currently reserved and must be verified as zero on both sides. They may be
+ * extended in the future.
+ */
+struct virtchnl_phc_set_pin {
+	u32 flags; /* see virtchnl_phc_pin_cfg_flags */
+	u8 pin_index;
+	u8 func; /* see virtchnl_phc_pin_func */
+	u8 func_index;
+	u8 rsvd1;
+	union {
+		struct virtchnl_phc_ext_ts ext_ts;
+		struct virtchnl_phc_per_out per_out;
+	};
+	u8 rsvd2[8];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(80, virtchnl_phc_set_pin);
+
+/**
+ * virtchnl_phc_pin
+ * @pin_index: The pin to get or set
+ * @func: the function type the pin is assigned to
+ * @func_index: the index of the function the pin is assigned to
+ * @rsvd: Reserved for future extension
+ * @name: human readable pin name, supplied by PF on GET_PIN_CFGS
+ *
+ * Sent by the PF as part of the VIRTCHNL_OP_1588_PTP_GET_PIN_CFGS response.
+ *
+ * The VF issues a VIRTCHNL_OP_1588_PTP_GET_PIN_CFGS request to the PF in
+ * order to obtain the current pin configuration for all of the pins that were
+ * assigned to this VF.
+ *
+ * This structure details the pin configuration state, including a pin name
+ * and which function is assigned to the pin currently.
+ */
+struct virtchnl_phc_pin {
+	u8 pin_index;
+	u8 func; /* see virtchnl_phc_pin_func */
+	u8 func_index;
+	u8 rsvd[5];
+	char name[64];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(72, virtchnl_phc_pin);
+
+/**
+ * virtchnl_phc_pin_cfg
+ * @len: length of the variable pin config array
+ * @pins: variable length pin configuration array
+ *
+ * Variable structure sent by the PF in reply to
+ * VIRTCHNL_OP_1588_PTP_GET_PIN_CFGS. The VF does not send this structure with
+ * its request of the operation.
+ *
+ * It is possible that the PF may need to send more pin configuration data
+ * than can be sent in one virtchnl message. To handle this, the PF should
+ * issue multiple VIRTCHNL_OP_1588_PTP_GET_PIN_CFGS responses. Each response
+ * will indicate the number of pins it covers. The VF should be ready to wait
+ * for multiple responses until it has received a total length equal to the
+ * number of n_pins negotiated during extended PTP capabilities exchange.
+ */
+struct virtchnl_phc_get_pins {
+	u8 len;
+	u8 rsvd[7];
+	struct virtchnl_phc_pin pins[1];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(80, virtchnl_phc_get_pins);
+
+/**
+ * virtchnl_phc_ext_stamp
+ * @tstamp: timestamp value
+ * @tstamp_rsvd: Reserved for future extension of the timestamp value.
+ * @tstamp_format: format of the timstamp
+ * @func_index: external timestamp function this timestamp is for
+ * @rsvd2: Reserved for future extension
+ *
+ * Sent along with the VIRTCHNL_OP_1588_PTP_EXT_TIMESTAMP from the PF when an
+ * external timestamp function is triggered.
+ *
+ * This will be sent only if one of the external timestamp functions is
+ * configured by the VF, and is only valid if VIRTCHNL_1588_PTP_CAP_PIN_CFG is
+ * negotiated with the PF.
+ *
+ * The timestamp format is defined by the tstamp_format field using the
+ * virtchnl_ptp_tstamp_format enumeration. The tstamp_rsvd field is
+ * exclusively reserved for possible future variants of the timestamp format,
+ * and its access will be controlled by the tstamp_format field.
+ */
+struct virtchnl_phc_ext_tstamp {
+	u64 tstamp;
+	u8 tstamp_rsvd[8];
+	u8 tstamp_format;
+	u8 func_index;
+	u8 rsvd2[6];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(24, virtchnl_phc_ext_tstamp);
+
+/* Since VF messages are limited by u16 size, precalculate the maximum possible
+ * values of nested elements in virtchnl structures that virtual channel can
+ * possibly handle in a single message.
+ */
+enum virtchnl_vector_limits {
+	VIRTCHNL_OP_CONFIG_VSI_QUEUES_MAX	=
+		((u16)(~0) - sizeof(struct virtchnl_vsi_queue_config_info)) /
+		sizeof(struct virtchnl_queue_pair_info),
+
+	VIRTCHNL_OP_CONFIG_IRQ_MAP_MAX		=
+		((u16)(~0) - sizeof(struct virtchnl_irq_map_info)) /
+		sizeof(struct virtchnl_vector_map),
+
+	VIRTCHNL_OP_ADD_DEL_ETH_ADDR_MAX	=
+		((u16)(~0) - sizeof(struct virtchnl_ether_addr_list)) /
+		sizeof(struct virtchnl_ether_addr),
+
+	VIRTCHNL_OP_ADD_DEL_VLAN_MAX		=
+		((u16)(~0) - sizeof(struct virtchnl_vlan_filter_list)) /
+		sizeof(u16),
+
+	VIRTCHNL_OP_ENABLE_CHANNELS_MAX		=
+		((u16)(~0) - sizeof(struct virtchnl_tc_info)) /
+		sizeof(struct virtchnl_channel_info),
+
+	VIRTCHNL_OP_ENABLE_DISABLE_DEL_QUEUES_V2_MAX	=
+		((u16)(~0) - sizeof(struct virtchnl_del_ena_dis_queues)) /
+		sizeof(struct virtchnl_queue_chunk),
+
+	VIRTCHNL_OP_MAP_UNMAP_QUEUE_VECTOR_MAX	=
+		((u16)(~0) - sizeof(struct virtchnl_queue_vector_maps)) /
+		sizeof(struct virtchnl_queue_vector),
+
+	VIRTCHNL_OP_ADD_DEL_VLAN_V2_MAX		=
+		((u16)(~0) - sizeof(struct virtchnl_vlan_filter_list_v2)) /
+		sizeof(struct virtchnl_vlan_filter),
+};
+
 /**
  * virtchnl_vc_validate_vf_msg
  * @ver: Virtchnl version info
@@ -1353,7 +2541,7 @@ virtchnl_vc_validate_vf_msg(struct virtchnl_version_info *ver, u32 v_opcode,
 			    u8 *msg, u16 msglen)
 {
 	bool err_msg_format = false;
-	int valid_len = 0;
+	u32 valid_len = 0;
 
 	/* Validate message length. */
 	switch (v_opcode) {
@@ -1377,11 +2565,16 @@ virtchnl_vc_validate_vf_msg(struct virtchnl_version_info *ver, u32 v_opcode,
 		if (msglen >= valid_len) {
 			struct virtchnl_vsi_queue_config_info *vqc =
 			    (struct virtchnl_vsi_queue_config_info *)msg;
+
+			if (vqc->num_queue_pairs == 0 || vqc->num_queue_pairs >
+			    VIRTCHNL_OP_CONFIG_VSI_QUEUES_MAX) {
+				err_msg_format = true;
+				break;
+			}
+
 			valid_len += (vqc->num_queue_pairs *
 				      sizeof(struct
 					     virtchnl_queue_pair_info));
-			if (vqc->num_queue_pairs == 0)
-				err_msg_format = true;
 		}
 		break;
 	case VIRTCHNL_OP_CONFIG_IRQ_MAP:
@@ -1389,26 +2582,38 @@ virtchnl_vc_validate_vf_msg(struct virtchnl_version_info *ver, u32 v_opcode,
 		if (msglen >= valid_len) {
 			struct virtchnl_irq_map_info *vimi =
 			    (struct virtchnl_irq_map_info *)msg;
+
+			if (vimi->num_vectors == 0 || vimi->num_vectors >
+			    VIRTCHNL_OP_CONFIG_IRQ_MAP_MAX) {
+				err_msg_format = true;
+				break;
+			}
+
 			valid_len += (vimi->num_vectors *
 				      sizeof(struct virtchnl_vector_map));
-			if (vimi->num_vectors == 0)
-				err_msg_format = true;
 		}
 		break;
 	case VIRTCHNL_OP_ENABLE_QUEUES:
 	case VIRTCHNL_OP_DISABLE_QUEUES:
 		valid_len = sizeof(struct virtchnl_queue_select);
 		break;
+	case VIRTCHNL_OP_GET_MAX_RSS_QREGION:
+		break;
 	case VIRTCHNL_OP_ADD_ETH_ADDR:
 	case VIRTCHNL_OP_DEL_ETH_ADDR:
 		valid_len = sizeof(struct virtchnl_ether_addr_list);
 		if (msglen >= valid_len) {
 			struct virtchnl_ether_addr_list *veal =
 			    (struct virtchnl_ether_addr_list *)msg;
+
+			if (veal->num_elements == 0 || veal->num_elements >
+			    VIRTCHNL_OP_ADD_DEL_ETH_ADDR_MAX) {
+				err_msg_format = true;
+				break;
+			}
+
 			valid_len += veal->num_elements *
 			    sizeof(struct virtchnl_ether_addr);
-			if (veal->num_elements == 0)
-				err_msg_format = true;
 		}
 		break;
 	case VIRTCHNL_OP_ADD_VLAN:
@@ -1417,9 +2622,14 @@ virtchnl_vc_validate_vf_msg(struct virtchnl_version_info *ver, u32 v_opcode,
 		if (msglen >= valid_len) {
 			struct virtchnl_vlan_filter_list *vfl =
 			    (struct virtchnl_vlan_filter_list *)msg;
-			valid_len += vfl->num_elements * sizeof(u16);
-			if (vfl->num_elements == 0)
+
+			if (vfl->num_elements == 0 || vfl->num_elements >
+			    VIRTCHNL_OP_ADD_DEL_VLAN_MAX) {
 				err_msg_format = true;
+				break;
+			}
+
+			valid_len += vfl->num_elements * sizeof(u16);
 		}
 		break;
 	case VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE:
@@ -1428,36 +2638,17 @@ virtchnl_vc_validate_vf_msg(struct virtchnl_version_info *ver, u32 v_opcode,
 	case VIRTCHNL_OP_GET_STATS:
 		valid_len = sizeof(struct virtchnl_queue_select);
 		break;
-	case VIRTCHNL_OP_IWARP:
-		/* These messages are opaque to us and will be validated in
-		 * the RDMA client code. We just need to check for nonzero
-		 * length. The firmware will enforce max length restrictions.
-		 */
-		if (msglen)
-			valid_len = msglen;
-		else
-			err_msg_format = true;
-		break;
-	case VIRTCHNL_OP_RELEASE_IWARP_IRQ_MAP:
-		break;
-	case VIRTCHNL_OP_CONFIG_IWARP_IRQ_MAP:
-		valid_len = sizeof(struct virtchnl_iwarp_qvlist_info);
-		if (msglen >= valid_len) {
-			struct virtchnl_iwarp_qvlist_info *qv =
-				(struct virtchnl_iwarp_qvlist_info *)msg;
-			if (qv->num_vectors == 0) {
-				err_msg_format = true;
-				break;
-			}
-			valid_len += ((qv->num_vectors - 1) *
-				sizeof(struct virtchnl_iwarp_qv_info));
-		}
-		break;
 	case VIRTCHNL_OP_CONFIG_RSS_KEY:
 		valid_len = sizeof(struct virtchnl_rss_key);
 		if (msglen >= valid_len) {
 			struct virtchnl_rss_key *vrk =
 				(struct virtchnl_rss_key *)msg;
+
+			if (vrk->key_len == 0) {
+				/* zero length is allowed as input */
+				break;
+			}
+
 			valid_len += vrk->key_len - 1;
 		}
 		break;
@@ -1466,6 +2657,12 @@ virtchnl_vc_validate_vf_msg(struct virtchnl_version_info *ver, u32 v_opcode,
 		if (msglen >= valid_len) {
 			struct virtchnl_rss_lut *vrl =
 				(struct virtchnl_rss_lut *)msg;
+
+			if (vrl->lut_entries == 0) {
+				/* zero entries is allowed as input */
+				break;
+			}
+
 			valid_len += vrl->lut_entries - 1;
 		}
 		break;
@@ -1485,20 +2682,25 @@ virtchnl_vc_validate_vf_msg(struct virtchnl_version_info *ver, u32 v_opcode,
 		if (msglen >= valid_len) {
 			struct virtchnl_tc_info *vti =
 				(struct virtchnl_tc_info *)msg;
+
+			if (vti->num_tc == 0 || vti->num_tc >
+			    VIRTCHNL_OP_ENABLE_CHANNELS_MAX) {
+				err_msg_format = true;
+				break;
+			}
+
 			valid_len += (vti->num_tc - 1) *
 				     sizeof(struct virtchnl_channel_info);
-			if (vti->num_tc == 0)
-				err_msg_format = true;
 		}
 		break;
 	case VIRTCHNL_OP_DISABLE_CHANNELS:
 		break;
 	case VIRTCHNL_OP_ADD_CLOUD_FILTER:
-		valid_len = sizeof(struct virtchnl_filter);
-		break;
 	case VIRTCHNL_OP_DEL_CLOUD_FILTER:
 		valid_len = sizeof(struct virtchnl_filter);
 		break;
+	case VIRTCHNL_OP_GET_SUPPORTED_RXDIDS:
+		break;
 	case VIRTCHNL_OP_ADD_RSS_CFG:
 	case VIRTCHNL_OP_DEL_RSS_CFG:
 		valid_len = sizeof(struct virtchnl_rss_cfg);
@@ -1509,6 +2711,21 @@ virtchnl_vc_validate_vf_msg(struct virtchnl_version_info *ver, u32 v_opcode,
 	case VIRTCHNL_OP_DEL_FDIR_FILTER:
 		valid_len = sizeof(struct virtchnl_fdir_del);
 		break;
+	case VIRTCHNL_OP_GET_QOS_CAPS:
+		break;
+	case VIRTCHNL_OP_CONFIG_QUEUE_TC_MAP:
+		valid_len = sizeof(struct virtchnl_queue_tc_mapping);
+		if (msglen >= valid_len) {
+			struct virtchnl_queue_tc_mapping *q_tc =
+				(struct virtchnl_queue_tc_mapping *)msg;
+			if (q_tc->num_tc == 0) {
+				err_msg_format = true;
+				break;
+			}
+			valid_len += (q_tc->num_tc - 1) *
+					 sizeof(q_tc->tc[0]);
+		}
+		break;
 	case VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS:
 		break;
 	case VIRTCHNL_OP_ADD_VLAN_V2:
@@ -1518,21 +2735,77 @@ virtchnl_vc_validate_vf_msg(struct virtchnl_version_info *ver, u32 v_opcode,
 			struct virtchnl_vlan_filter_list_v2 *vfl =
 			    (struct virtchnl_vlan_filter_list_v2 *)msg;
 
-			valid_len += (vfl->num_elements - 1) *
-				sizeof(struct virtchnl_vlan_filter);
-
-			if (vfl->num_elements == 0) {
+			if (vfl->num_elements == 0 || vfl->num_elements >
+			    VIRTCHNL_OP_ADD_DEL_VLAN_V2_MAX) {
 				err_msg_format = true;
 				break;
 			}
+
+			valid_len += (vfl->num_elements - 1) *
+				sizeof(struct virtchnl_vlan_filter);
 		}
 		break;
 	case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2:
 	case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2:
 	case VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2:
 	case VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2:
+	case VIRTCHNL_OP_ENABLE_VLAN_FILTERING_V2:
+	case VIRTCHNL_OP_DISABLE_VLAN_FILTERING_V2:
 		valid_len = sizeof(struct virtchnl_vlan_setting);
 		break;
+	case VIRTCHNL_OP_1588_PTP_GET_CAPS:
+		valid_len = sizeof(struct virtchnl_ptp_caps);
+		break;
+	case VIRTCHNL_OP_1588_PTP_GET_TIME:
+	case VIRTCHNL_OP_1588_PTP_SET_TIME:
+		valid_len = sizeof(struct virtchnl_phc_time);
+		break;
+	case VIRTCHNL_OP_1588_PTP_ADJ_TIME:
+		valid_len = sizeof(struct virtchnl_phc_adj_time);
+		break;
+	case VIRTCHNL_OP_1588_PTP_ADJ_FREQ:
+		valid_len = sizeof(struct virtchnl_phc_adj_freq);
+		break;
+	case VIRTCHNL_OP_1588_PTP_TX_TIMESTAMP:
+		valid_len = sizeof(struct virtchnl_phc_tx_tstamp);
+		break;
+	case VIRTCHNL_OP_1588_PTP_SET_PIN_CFG:
+		valid_len = sizeof(struct virtchnl_phc_set_pin);
+		break;
+	case VIRTCHNL_OP_1588_PTP_GET_PIN_CFGS:
+		break;
+	case VIRTCHNL_OP_1588_PTP_EXT_TIMESTAMP:
+		valid_len = sizeof(struct virtchnl_phc_ext_tstamp);
+		break;
+	case VIRTCHNL_OP_ENABLE_QUEUES_V2:
+	case VIRTCHNL_OP_DISABLE_QUEUES_V2:
+		valid_len = sizeof(struct virtchnl_del_ena_dis_queues);
+		if (msglen >= valid_len) {
+			struct virtchnl_del_ena_dis_queues *qs =
+				(struct virtchnl_del_ena_dis_queues *)msg;
+			if (qs->chunks.num_chunks == 0 ||
+			    qs->chunks.num_chunks > VIRTCHNL_OP_ENABLE_DISABLE_DEL_QUEUES_V2_MAX) {
+				err_msg_format = true;
+				break;
+			}
+			valid_len += (qs->chunks.num_chunks - 1) *
+				      sizeof(struct virtchnl_queue_chunk);
+		}
+		break;
+	case VIRTCHNL_OP_MAP_QUEUE_VECTOR:
+		valid_len = sizeof(struct virtchnl_queue_vector_maps);
+		if (msglen >= valid_len) {
+			struct virtchnl_queue_vector_maps *v_qp =
+				(struct virtchnl_queue_vector_maps *)msg;
+			if (v_qp->num_qv_maps == 0 ||
+			    v_qp->num_qv_maps > VIRTCHNL_OP_MAP_UNMAP_QUEUE_VECTOR_MAX) {
+				err_msg_format = true;
+				break;
+			}
+			valid_len += (v_qp->num_qv_maps - 1) *
+				      sizeof(struct virtchnl_queue_vector);
+		}
+		break;
 	/* These are always errors coming from the VF. */
 	case VIRTCHNL_OP_EVENT:
 	case VIRTCHNL_OP_UNKNOWN:
diff --git a/include/linux/avf/virtchnl_2.h b/include/linux/avf/virtchnl_2.h
new file mode 100644
index 000000000000..54a917713789
--- /dev/null
+++ b/include/linux/avf/virtchnl_2.h
@@ -0,0 +1,1243 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (c) 2020, Intel Corporation. */
+
+#ifndef _VIRTCHNL_2_H_
+#define _VIRTCHNL_2_H_
+
+/* All opcodes associated with virtchnl 2 are prefixed with virtchnl2 or
+ * VIRTCHNL2. This is done so opcodes, offloads/capabilities, structures,
+ * and defines used for virtchnl 1.x (i.e. VIRTCHNL_VF_OPCODE_*_V2,
+ * VIRTCHNL_VF_CAP_*_V2, virtchnl_*_v2) are clearly separated. Any future
+ * opcodes, offloads/capabilities, structures, and defines must be prefixed
+ * with virtchnl2 or VIRTCHNL2 to avoid confusion.
+ */
+
+#include "virtchnl_lan_desc.h"
+#include "virtchnl.h"
+
+#define VIRTCHNL2_MAX_NUM_PROTO_HDRS		32
+
+#define VIRTCHNL2_RDMA_INVALID_QUEUE_IDX	0xFFFF
+
+/* VIRTCHNL2_VPORT_TYPE
+ * Type of virtual port
+ */
+#define VIRTCHNL2_VPORT_TYPE_DEFAULT		0
+#define VIRTCHNL2_VPORT_TYPE_SRIOV		1
+#define VIRTCHNL2_VPORT_TYPE_SIOV		2
+#define VIRTCHNL2_VPORT_TYPE_SUBDEV		3
+#define VIRTCHNL2_VPORT_TYPE_MNG		4
+
+/* VIRTCHNL2_QUEUE_MODEL
+ * Type of queue model
+ *
+ * In the single queue model, the same transmit descriptor queue is used by
+ * software to post descriptors to hardware and by hardware to post completed
+ * descriptors to software.
+ * Likewise, the same receive descriptor queue is used by hardware to post
+ * completions to software and by software to post buffers to hardware.
+ */
+#define VIRTCHNL2_QUEUE_MODEL_SINGLE		0
+/* In the split queue model, hardware uses transmit completion queues to post
+ * descriptor/buffer completions to software, while software uses transmit
+ * descriptor queues to post descriptors to hardware.
+ * Likewise, hardware posts descriptor completions to the receive descriptor
+ * queue, while software uses receive buffer queues to post buffers to hardware.
+ */
+#define VIRTCHNL2_QUEUE_MODEL_SPLIT		1
+
+/* VIRTCHNL2_CHECKSUM_OFFLOAD_CAPS
+ * Checksum offload capability flags
+ */
+#define VIRTCHNL2_CAP_TX_CSUM_L3_IPV4		BIT(0)
+#define VIRTCHNL2_CAP_TX_CSUM_L4_IPV4_TCP	BIT(1)
+#define VIRTCHNL2_CAP_TX_CSUM_L4_IPV4_UDP	BIT(2)
+#define VIRTCHNL2_CAP_TX_CSUM_L4_IPV4_SCTP	BIT(3)
+#define VIRTCHNL2_CAP_TX_CSUM_L4_IPV6_TCP	BIT(4)
+#define VIRTCHNL2_CAP_TX_CSUM_L4_IPV6_UDP	BIT(5)
+#define VIRTCHNL2_CAP_TX_CSUM_L4_IPV6_SCTP	BIT(6)
+#define VIRTCHNL2_CAP_TX_CSUM_GENERIC		BIT(7)
+#define VIRTCHNL2_CAP_RX_CSUM_L3_IPV4		BIT(8)
+#define VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_TCP	BIT(9)
+#define VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_UDP	BIT(10)
+#define VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_SCTP	BIT(11)
+#define VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_TCP	BIT(12)
+#define VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_UDP	BIT(13)
+#define VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_SCTP	BIT(14)
+#define VIRTCHNL2_CAP_RX_CSUM_GENERIC		BIT(15)
+
+/* VIRTCHNL2_SEGMENTATION_OFFLOAD_CAPS
+ * Segmentation offload capability flags
+ */
+#define VIRTCHNL2_CAP_SEG_IPV4_TCP		BIT(0)
+#define VIRTCHNL2_CAP_SEG_IPV4_UDP		BIT(1)
+#define VIRTCHNL2_CAP_SEG_IPV4_SCTP		BIT(2)
+#define VIRTCHNL2_CAP_SEG_IPV6_TCP		BIT(3)
+#define VIRTCHNL2_CAP_SEG_IPV6_UDP		BIT(4)
+#define VIRTCHNL2_CAP_SEG_IPV6_SCTP		BIT(5)
+#define VIRTCHNL2_CAP_SEG_GENERIC		BIT(6)
+
+/* VIRTCHNL2_RSS_FLOW_TYPE_CAPS
+ * Receive Side Scaling Flow type capability flags
+ */
+#define VIRTCHNL2_CAP_RSS_IPV4_TCP		BIT(0)
+#define VIRTCHNL2_CAP_RSS_IPV4_UDP		BIT(1)
+#define VIRTCHNL2_CAP_RSS_IPV4_SCTP		BIT(2)
+#define VIRTCHNL2_CAP_RSS_IPV4_OTHER		BIT(3)
+#define VIRTCHNL2_CAP_RSS_IPV6_TCP		BIT(4)
+#define VIRTCHNL2_CAP_RSS_IPV6_UDP		BIT(5)
+#define VIRTCHNL2_CAP_RSS_IPV6_SCTP		BIT(6)
+#define VIRTCHNL2_CAP_RSS_IPV6_OTHER		BIT(7)
+#define VIRTCHNL2_CAP_RSS_IPV4_AH		BIT(8)
+#define VIRTCHNL2_CAP_RSS_IPV4_ESP		BIT(9)
+#define VIRTCHNL2_CAP_RSS_IPV4_AH_ESP		BIT(10)
+#define VIRTCHNL2_CAP_RSS_IPV6_AH		BIT(11)
+#define VIRTCHNL2_CAP_RSS_IPV6_ESP		BIT(12)
+#define VIRTCHNL2_CAP_RSS_IPV6_AH_ESP		BIT(13)
+
+/* VIRTCHNL2_HEADER_SPLIT_CAPS
+ * Header split capability flags
+ */
+/* for prepended metadata  */
+#define VIRTCHNL2_CAP_RX_HSPLIT_AT_L2		BIT(0)
+/* all VLANs go into header buffer */
+#define VIRTCHNL2_CAP_RX_HSPLIT_AT_L3		BIT(1)
+#define VIRTCHNL2_CAP_RX_HSPLIT_AT_L4V4		BIT(2)
+#define VIRTCHNL2_CAP_RX_HSPLIT_AT_L4V6		BIT(3)
+
+/* VIRTCHNL2_RSC_OFFLOAD_CAPS
+ * Receive Side Coalescing offload capability flags
+ */
+#define VIRTCHNL2_CAP_RSC_IPV4_TCP		BIT(0)
+#define VIRTCHNL2_CAP_RSC_IPV4_SCTP		BIT(1)
+#define VIRTCHNL2_CAP_RSC_IPV6_TCP		BIT(2)
+#define VIRTCHNL2_CAP_RSC_IPV6_SCTP		BIT(3)
+
+/* VIRTCHNL2_OTHER_CAPS
+ * Other capability flags
+ * SPLITQ_QSCHED: Queue based scheduling using split queue model
+ * TX_VLAN: VLAN tag insertion
+ * RX_VLAN: VLAN tag stripping
+ */
+#define VIRTCHNL2_CAP_RDMA			BIT(0)
+#define VIRTCHNL2_CAP_SRIOV			BIT(1)
+#define VIRTCHNL2_CAP_MACFILTER			BIT(2)
+#define VIRTCHNL2_CAP_FLOW_DIRECTOR		BIT(3)
+#define VIRTCHNL2_CAP_SPLITQ_QSCHED		BIT(4)
+#define VIRTCHNL2_CAP_CRC			BIT(5)
+#define VIRTCHNL2_CAP_ADQ			BIT(6)
+#define VIRTCHNL2_CAP_WB_ON_ITR			BIT(7)
+#define VIRTCHNL2_CAP_PROMISC			BIT(8)
+#define VIRTCHNL2_CAP_LINK_SPEED		BIT(9)
+#define VIRTCHNL2_CAP_INLINE_IPSEC		BIT(10)
+#define VIRTCHNL2_CAP_LARGE_NUM_QUEUES		BIT(11)
+/* require additional info */
+#define VIRTCHNL2_CAP_VLAN			BIT(12)
+#define VIRTCHNL2_CAP_PTP			BIT(13)
+#define VIRTCHNL2_CAP_ADV_RSS			BIT(15)
+#define VIRTCHNL2_CAP_FDIR			BIT(16)
+#define VIRTCHNL2_CAP_RX_FLEX_DESC		BIT(17)
+#define VIRTCHNL2_CAP_PTYPE			BIT(18)
+
+/* VIRTCHNL2_DEVICE_TYPE */
+/* underlying device type */
+#define VIRTCHNL2_MEV_DEVICE			0
+
+/* VIRTCHNL2_TXQ_SCHED_MODE
+ * Transmit Queue Scheduling Modes - Queue mode is the legacy mode i.e. inorder
+ * completions where descriptors and buffers are completed at the same time.
+ * Flow scheduling mode allows for out of order packet processing where
+ * descriptors are cleaned in order, but buffers can be completed out of order.
+ */
+#define VIRTCHNL2_TXQ_SCHED_MODE_QUEUE		0
+#define VIRTCHNL2_TXQ_SCHED_MODE_FLOW		1
+
+/* VIRTCHNL2_TXQ_FLAGS
+ * Transmit Queue feature flags
+ *
+ * Enable rule miss completion type; packet completion for a packet
+ * sent on exception path; only relevant in flow scheduling mode
+ */
+#define VIRTCHNL2_TXQ_ENABLE_MISS_COMPL		BIT(0)
+
+/* VIRTCHNL2_PEER_TYPE
+ * Transmit mailbox peer type
+ */
+#define VIRTCHNL2_RDMA_CPF			0
+#define VIRTCHNL2_NVME_CPF			1
+#define VIRTCHNL2_ATE_CPF			2
+#define VIRTCHNL2_LCE_CPF			3
+
+/* VIRTCHNL2_RXQ_FLAGS
+ * Receive Queue Feature flags
+ */
+#define VIRTCHNL2_RXQ_RSC			BIT(0)
+#define VIRTCHNL2_RXQ_HDR_SPLIT			BIT(1)
+/* When set, packet descriptors are flushed by hardware immediately after
+ * processing each packet.
+ */
+#define VIRTCHNL2_RXQ_IMMEDIATE_WRITE_BACK	BIT(2)
+#define VIRTCHNL2_RX_DESC_SIZE_16BYTE		BIT(3)
+#define VIRTCHNL2_RX_DESC_SIZE_32BYTE		BIT(4)
+
+/* VIRTCHNL2_RSS_ALGORITHM
+ * Type of RSS algorithm
+ */
+#define VIRTCHNL2_RSS_ALG_TOEPLITZ_ASYMMETRIC		0
+#define VIRTCHNL2_RSS_ALG_R_ASYMMETRIC			1
+#define VIRTCHNL2_RSS_ALG_TOEPLITZ_SYMMETRIC		2
+#define VIRTCHNL2_RSS_ALG_XOR_SYMMETRIC			3
+
+/* VIRTCHNL2_EVENT_CODES
+ * VIRTCHNL2_OP_EVENT
+ * CP sends this message to inform the PF/VF driver of events that may affect
+ * it. No direct response is expected from the driver, though it may generate
+ * other messages in response to this one.
+ */
+#define VIRTCHNL2_EVENT_UNKNOWN			0
+#define VIRTCHNL2_EVENT_LINK_CHANGE		1
+
+/* VIRTCHNL2_QUEUE_TYPE
+ * Transmit and Receive queue types are valid in legacy as well as split queue
+ * models. With Split Queue model, 2 additional types are introduced -
+ * TX_COMPLETION and RX_BUFFER. In split queue model, receive  corresponds to
+ * the queue where hardware posts completions.
+ */
+#define VIRTCHNL2_QUEUE_TYPE_TX			0
+#define VIRTCHNL2_QUEUE_TYPE_RX			1
+#define VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION	2
+#define VIRTCHNL2_QUEUE_TYPE_RX_BUFFER		3
+#define VIRTCHNL2_QUEUE_TYPE_CONFIG_TX		4
+#define VIRTCHNL2_QUEUE_TYPE_CONFIG_RX		5
+
+/* VIRTCHNL2_ITR_IDX
+ * Virtchannel interrupt throttling rate index
+ */
+#define VIRTCHNL2_ITR_IDX_0			0
+#define VIRTCHNL2_ITR_IDX_1			1
+#define VIRTCHNL2_ITR_IDX_2			2
+#define VIRTCHNL2_ITR_IDX_NO_ITR		3
+
+/* VIRTCHNL2_VECTOR_LIMITS
+ * Since PF/VF messages are limited by __le16 size, precalculate the maximum
+ * possible values of nested elements in virtchnl structures that virtual
+ * channel can possibly handle in a single message.
+ */
+
+#define VIRTCHNL2_OP_DEL_ENABLE_DISABLE_QUEUES_MAX (\
+		((__le16)(~0) - sizeof(struct virtchnl2_del_ena_dis_queues)) / \
+		sizeof(struct virtchnl2_queue_chunk))
+
+#define VIRTCHNL2_OP_MAP_UNMAP_QUEUE_VECTOR_MAX (\
+		((__le16)(~0) - sizeof(struct virtchnl2_queue_vector_maps)) / \
+		sizeof(struct virtchnl2_queue_vector))
+
+/* VIRTCHNL2_PROTO_HDR_TYPE
+ * Protocol header type within a packet segment. A segment consists of one or
+ * more protocol headers that make up a logical group of protocol headers. Each
+ * logical group of protocol headers encapsulates or is encapsulated using/by
+ * tunneling or encapsulation protocols for network virtualization.
+ */
+/* VIRTCHNL2_PROTO_HDR_ANY is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_ANY			0
+#define VIRTCHNL2_PROTO_HDR_PRE_MAC		1
+/* VIRTCHNL2_PROTO_HDR_MAC is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_MAC			2
+#define VIRTCHNL2_PROTO_HDR_POST_MAC		3
+#define VIRTCHNL2_PROTO_HDR_ETHERTYPE		4
+#define VIRTCHNL2_PROTO_HDR_VLAN		5
+#define VIRTCHNL2_PROTO_HDR_SVLAN		6
+#define VIRTCHNL2_PROTO_HDR_CVLAN		7
+#define VIRTCHNL2_PROTO_HDR_MPLS		8
+#define VIRTCHNL2_PROTO_HDR_UMPLS		9
+#define VIRTCHNL2_PROTO_HDR_MMPLS		10
+#define VIRTCHNL2_PROTO_HDR_PTP			11
+#define VIRTCHNL2_PROTO_HDR_CTRL		12
+#define VIRTCHNL2_PROTO_HDR_LLDP		13
+#define VIRTCHNL2_PROTO_HDR_ARP			14
+#define VIRTCHNL2_PROTO_HDR_ECP			15
+#define VIRTCHNL2_PROTO_HDR_EAPOL		16
+#define VIRTCHNL2_PROTO_HDR_PPPOD		17
+#define VIRTCHNL2_PROTO_HDR_PPPOE		18
+/* VIRTCHNL2_PROTO_HDR_IPV4 is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_IPV4		19
+/* IPv4 and IPv6 Fragment header types are only associated to
+ * VIRTCHNL2_PROTO_HDR_IPV4 and VIRTCHNL2_PROTO_HDR_IPV6 respectively,
+ * cannot be used independently.
+ */
+/* VIRTCHNL2_PROTO_HDR_IPV4_FRAG is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_IPV4_FRAG		20
+/* VIRTCHNL2_PROTO_HDR_IPV6 is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_IPV6		21
+/* VIRTCHNL2_PROTO_HDR_IPV6_FRAG is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_IPV6_FRAG		22
+#define VIRTCHNL2_PROTO_HDR_IPV6_EH		23
+/* VIRTCHNL2_PROTO_HDR_UDP is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_UDP			24
+/* VIRTCHNL2_PROTO_HDR_TCP is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_TCP			25
+/* VIRTCHNL2_PROTO_HDR_SCTP is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_SCTP		26
+/* VIRTCHNL2_PROTO_HDR_ICMP is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_ICMP		27
+/* VIRTCHNL2_PROTO_HDR_ICMPV6 is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_ICMPV6		28
+#define VIRTCHNL2_PROTO_HDR_IGMP		29
+#define VIRTCHNL2_PROTO_HDR_AH			30
+#define VIRTCHNL2_PROTO_HDR_ESP			31
+#define VIRTCHNL2_PROTO_HDR_IKE			32
+#define VIRTCHNL2_PROTO_HDR_NATT_KEEP		33
+/* VIRTCHNL2_PROTO_HDR_PAY is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_PAY			34
+#define VIRTCHNL2_PROTO_HDR_L2TPV2		35
+#define VIRTCHNL2_PROTO_HDR_L2TPV2_CONTROL	36
+#define VIRTCHNL2_PROTO_HDR_L2TPV3		37
+#define VIRTCHNL2_PROTO_HDR_GTP			38
+#define VIRTCHNL2_PROTO_HDR_GTP_EH		39
+#define VIRTCHNL2_PROTO_HDR_GTPCV2		40
+#define VIRTCHNL2_PROTO_HDR_GTPC_TEID		41
+#define VIRTCHNL2_PROTO_HDR_GTPU		42
+#define VIRTCHNL2_PROTO_HDR_GTPU_UL		43
+#define VIRTCHNL2_PROTO_HDR_GTPU_DL		44
+#define VIRTCHNL2_PROTO_HDR_ECPRI		45
+#define VIRTCHNL2_PROTO_HDR_VRRP		46
+#define VIRTCHNL2_PROTO_HDR_OSPF		47
+/* VIRTCHNL2_PROTO_HDR_TUN is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_TUN			48
+#define VIRTCHNL2_PROTO_HDR_GRE			49
+#define VIRTCHNL2_PROTO_HDR_NVGRE		50
+#define VIRTCHNL2_PROTO_HDR_VXLAN		51
+#define VIRTCHNL2_PROTO_HDR_VXLAN_GPE		52
+#define VIRTCHNL2_PROTO_HDR_GENEVE		53
+#define VIRTCHNL2_PROTO_HDR_NSH			54
+#define VIRTCHNL2_PROTO_HDR_QUIC		55
+#define VIRTCHNL2_PROTO_HDR_PFCP		56
+#define VIRTCHNL2_PROTO_HDR_PFCP_NODE		57
+#define VIRTCHNL2_PROTO_HDR_PFCP_SESSION	58
+#define VIRTCHNL2_PROTO_HDR_RTP			59
+#define VIRTCHNL2_PROTO_HDR_ROCE		60
+#define VIRTCHNL2_PROTO_HDR_ROCEV1		61
+#define VIRTCHNL2_PROTO_HDR_ROCEV2		62
+/* protocol ids upto 32767 are reserved for AVF use */
+/* 32768 - 65534 are used for user defined protocol ids */
+/* VIRTCHNL2_PROTO_HDR_NO_PROTO is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_NO_PROTO		65535
+
+/* VIRTCHNL2_OP_GET_CAPS
+ * Dataplane driver sends this message to CP to negotiate capabilities and
+ * provides a virtchnl2_get_capabilities structure with its desired
+ * capabilities, max_sriov_vfs and num_allocated_vectors.
+ * CP responds with a virtchnl2_get_capabilities structure updated
+ * with allowed capabilities and the other fields as below.
+ * If PF sets max_sriov_vfs as 0, CP will respond with max number of VFs
+ * that can be created by this PF. For any other value 'n', CP responds
+ * with max_sriov_vfs set to min(n, x) where x is the max number of VFs
+ * allowed by CP's policy. max_sriov_vfs is not applicable for VFs.
+ * If dataplane driver sets num_allocated_vectors as 0, CP will respond with 1
+ * which is default vector associated with the default mailbox. For any other
+ * value 'n', CP responds with a value <= n based on the CP's policy of
+ * max number of vectors for a PF.
+ * CP will respond with the vector ID of mailbox allocated to the PF in
+ * mailbox_vector_id and the number of itr index registers in itr_idx_map.
+ * It also responds with default number of vports that the dataplane driver
+ * should comeup with in default_num_vports and maximum number of vports that
+ * can be supported in max_vports
+ */
+struct virtchnl2_get_capabilities {
+	/* see VIRTCHNL2_CHECKSUM_OFFLOAD_CAPS definitions */
+	__le32 csum_caps;
+
+	/* see VIRTCHNL2_SEGMENTATION_OFFLOAD_CAPS definitions */
+	__le32 seg_caps;
+
+	/* see VIRTCHNL2_HEADER_SPLIT_CAPS definitions */
+	__le32 hsplit_caps;
+
+	/* see VIRTCHNL2_RSC_OFFLOAD_CAPS definitions */
+	__le32 rsc_caps;
+
+	/* see VIRTCHNL2_RSS_FLOW_TYPE_CAPS definitions  */
+	__le64 rss_caps;
+
+	/* see VIRTCHNL2_OTHER_CAPS definitions  */
+	__le64 other_caps;
+
+	/* DYN_CTL register offset and vector id for mailbox provided by CP */
+	__le32 mailbox_dyn_ctl;
+	__le16 mailbox_vector_id;
+	/* Maximum number of allocated vectors for the device */
+	__le16 num_allocated_vectors;
+
+	/* Maximum number of queues that can be supported */
+	__le16 max_rx_q;
+	__le16 max_tx_q;
+	__le16 max_rx_bufq;
+	__le16 max_tx_complq;
+
+	/* The PF sends the maximum VFs it is requesting. The CP responds with
+	 * the maximum VFs granted.
+	 */
+	__le16 max_sriov_vfs;
+
+	/* maximum number of vports that can be supported */
+	__le16 max_vports;
+	/* default number of vports driver should allocate on load */
+	__le16 default_num_vports;
+
+	/* Max header length hardware can parse/checksum, in bytes */
+	__le16 max_tx_hdr_size;
+
+	/* Max number of scatter gather buffers that can be sent per transmit
+	 * packet without needing to be linearized
+	 */
+	u8 max_sg_bufs_per_tx_pkt;
+
+	/* see VIRTCHNL2_ITR_IDX definition */
+	u8 itr_idx_map;
+
+	__le16 pad1;
+
+	/* version of Control Plane that is running */
+	__le16 oem_cp_ver_major;
+	__le16 oem_cp_ver_minor;
+	/* see VIRTCHNL2_DEVICE_TYPE definitions */
+	__le32 device_type;
+
+	u8 reserved[12];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(80, virtchnl2_get_capabilities);
+
+struct virtchnl2_queue_reg_chunk {
+	/* see VIRTCHNL2_QUEUE_TYPE definitions */
+	__le32 type;
+	__le32 start_queue_id;
+	__le32 num_queues;
+	__le32 pad;
+
+	/* Queue tail register offset and spacing provided by CP */
+	__le64 qtail_reg_start;
+	__le32 qtail_reg_spacing;
+
+	u8 reserved[4];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(32, virtchnl2_queue_reg_chunk);
+
+/* structure to specify several chunks of contiguous queues */
+struct virtchnl2_queue_reg_chunks {
+	__le16 num_chunks;
+	u8 reserved[6];
+	struct virtchnl2_queue_reg_chunk chunks[1];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl2_queue_reg_chunks);
+
+/* VIRTCHNL2_OP_CREATE_VPORT
+ * PF sends this message to CP to create a vport by filling in required
+ * fields of virtchnl2_create_vport structure.
+ * CP responds with the updated virtchnl2_create_vport structure containing the
+ * necessary fields followed by chunks which in turn will have an array of
+ * num_chunks entries of virtchnl2_queue_chunk structures.
+ */
+struct virtchnl2_create_vport {
+	/* PF/VF populates the following fields on request */
+	/* see VIRTCHNL2_VPORT_TYPE definitions */
+	__le16 vport_type;
+
+	/* see VIRTCHNL2_QUEUE_MODEL definitions */
+	__le16 txq_model;
+
+	/* see VIRTCHNL2_QUEUE_MODEL definitions */
+	__le16 rxq_model;
+	__le16 num_tx_q;
+	/* valid only if txq_model is split queue */
+	__le16 num_tx_complq;
+	__le16 num_rx_q;
+	/* valid only if rxq_model is split queue */
+	__le16 num_rx_bufq;
+	/* relative receive queue index to be used as default */
+	__le16 default_rx_q;
+	/* used to align PF and CP in case of default multiple vports, it is
+	 * filled by the PF and CP returns the same value, to enable the driver
+	 * to support multiple asynchronous parallel CREATE_VPORT requests and
+	 * associate a response to a specific request
+	 */
+	__le16 vport_index;
+
+	/* CP populates the following fields on response */
+	__le16 max_mtu;
+	__le32 vport_id;
+	u8 default_mac_addr[ETH_ALEN];
+	__le16 pad;
+	/* see VIRTCHNL2_RX_DESC_IDS definitions */
+	__le64 rx_desc_ids;
+	/* see VIRTCHNL2_TX_DESC_IDS definitions */
+	__le64 tx_desc_ids;
+
+#define MAX_Q_REGIONS 16
+	__le32 max_qs_per_qregion[MAX_Q_REGIONS];
+	__le32 qregion_total_qs;
+	__le16 qregion_type;
+	__le16 pad2;
+
+	/* see VIRTCHNL2_RSS_ALGORITHM definitions */
+	__le32 rss_algorithm;
+	__le16 rss_key_size;
+	__le16 rss_lut_size;
+
+	/* see VIRTCHNL2_HEADER_SPLIT_CAPS definitions */
+	__le32 rx_split_pos;
+
+	u8 reserved[20];
+	struct virtchnl2_queue_reg_chunks chunks;
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(192, virtchnl2_create_vport);
+
+/* VIRTCHNL2_OP_DESTROY_VPORT
+ * VIRTCHNL2_OP_ENABLE_VPORT
+ * VIRTCHNL2_OP_DISABLE_VPORT
+ * PF sends this message to CP to destroy, enable or disable a vport by filling
+ * in the vport_id in virtchnl2_vport structure.
+ * CP responds with the status of the requested operation.
+ */
+struct virtchnl2_vport {
+	__le32 vport_id;
+	u8 reserved[4];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl2_vport);
+
+/* Transmit queue config info */
+struct virtchnl2_txq_info {
+	__le64 dma_ring_addr;
+
+	/* see VIRTCHNL2_QUEUE_TYPE definitions */
+	__le32 type;
+
+	__le32 queue_id;
+	/* valid only if queue model is split and type is trasmit queue. Used
+	 * in many to one mapping of transmit queues to completion queue
+	 */
+	__le16 relative_queue_id;
+
+	/* see VIRTCHNL2_QUEUE_MODEL definitions */
+	__le16 model;
+
+	/* see VIRTCHNL2_TXQ_SCHED_MODE definitions */
+	__le16 sched_mode;
+
+	/* see VIRTCHNL2_TXQ_FLAGS definitions */
+	__le16 qflags;
+	__le16 ring_len;
+
+	/* valid only if queue model is split and type is transmit queue */
+	__le16 tx_compl_queue_id;
+	/* valid only if queue type is VIRTCHNL2_QUEUE_TYPE_MAILBOX_TX */
+	/* see VIRTCHNL2_PEER_TYPE definitions */
+	__le16 peer_type;
+	/* valid only if queue type is CONFIG_TX and used to deliver messages
+	 * for the respective CONFIG_TX queue
+	 */
+	__le16 peer_rx_queue_id;
+
+	/* value ranges from 0 to 15 */
+	__le16 qregion_id;
+	u8 pad[2];
+
+	/* Egress pasid is used for SIOV use case */
+	__le32 egress_pasid;
+	__le32 egress_hdr_pasid;
+	__le32 egress_buf_pasid;
+
+	u8 reserved[8];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(56, virtchnl2_txq_info);
+
+/* VIRTCHNL2_OP_CONFIG_TX_QUEUES
+ * PF sends this message to set up parameters for one or more transmit queues.
+ * This message contains an array of num_qinfo instances of virtchnl2_txq_info
+ * structures. CP configures requested queues and returns a status code. If
+ * num_qinfo specified is greater than the number of queues associated with the
+ * vport, an error is returned and no queues are configured.
+ */
+struct virtchnl2_config_tx_queues {
+	__le32 vport_id;
+	__le16 num_qinfo;
+
+	u8 reserved[10];
+	struct virtchnl2_txq_info qinfo[1];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(72, virtchnl2_config_tx_queues);
+
+/* Receive queue config info */
+struct virtchnl2_rxq_info {
+	/* see VIRTCHNL2_RX_DESC_IDS definitions */
+	__le64 desc_ids;
+	__le64 dma_ring_addr;
+
+	/* see VIRTCHNL2_QUEUE_TYPE definitions */
+	__le32 type;
+	__le32 queue_id;
+
+	/* see QUEUE_MODEL definitions */
+	__le16 model;
+
+	__le16 hdr_buffer_size;
+	__le32 data_buffer_size;
+	__le32 max_pkt_size;
+
+	__le16 ring_len;
+	u8 buffer_notif_stride;
+	u8 pad[1];
+
+	/* Applicable only for receive buffer queues */
+	__le64 dma_head_wb_addr;
+
+	/* Applicable only for receive completion queues */
+	/* see VIRTCHNL2_RXQ_FLAGS definitions */
+	__le16 qflags;
+
+	__le16 rx_buffer_low_watermark;
+
+	/* valid only in split queue model */
+	__le16 rx_bufq1_id;
+	/* valid only in split queue model */
+	__le16 rx_bufq2_id;
+	/* it indicates if there is a second buffer, rx_bufq2_id is valid only
+	 * if this field is set
+	 */
+	u8 bufq2_ena;
+	u8 pad2;
+
+	/* value ranges from 0 to 15 */
+	__le16 qregion_id;
+
+	/* Ingress pasid is used for SIOV use case */
+	__le32 ingress_pasid;
+	__le32 ingress_hdr_pasid;
+	__le32 ingress_buf_pasid;
+
+	u8 reserved[16];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(88, virtchnl2_rxq_info);
+
+/* VIRTCHNL2_OP_CONFIG_RX_QUEUES
+ * PF sends this message to set up parameters for one or more receive queues.
+ * This message contains an array of num_qinfo instances of virtchnl2_rxq_info
+ * structures. CP configures requested queues and returns a status code.
+ * If the number of queues specified is greater than the number of queues
+ * associated with the vport, an error is returned and no queues are configured.
+ */
+struct virtchnl2_config_rx_queues {
+	__le32 vport_id;
+	__le16 num_qinfo;
+
+	u8 reserved[18];
+	struct virtchnl2_rxq_info qinfo[1];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(112, virtchnl2_config_rx_queues);
+
+/* VIRTCHNL2_OP_ADD_QUEUES
+ * PF sends this message to request additional transmit/receive queues beyond
+ * the ones that were assigned via CREATE_VPORT request. virtchnl2_add_queues
+ * structure is used to specify the number of each type of queues.
+ * CP responds with the same structure with the actual number of queues assigned
+ * followed by num_chunks of virtchnl2_queue_chunk structures.
+ */
+struct virtchnl2_add_queues {
+	__le32 vport_id;
+	__le16 num_tx_q;
+	__le16 num_tx_complq;
+	__le16 num_rx_q;
+	__le16 num_rx_bufq;
+	u8 reserved[4];
+	struct virtchnl2_queue_reg_chunks chunks;
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(56, virtchnl2_add_queues);
+
+/* Structure to specify a chunk of contiguous interrupt vectors */
+struct virtchnl2_vector_chunk {
+	__le16 start_vector_id;
+	__le16 start_evv_id;
+	__le16 num_vectors;
+	__le16 pad1;
+
+	/* Register offsets and spacing provided by CP.
+	 * dynamic control registers are used for enabling/disabling/re-enabling
+	 * interrupts and updating interrupt rates in the hotpath. Any changes
+	 * to interrupt rates in the dynamic control registers will be reflected
+	 * in the interrupt throttling rate registers.
+	 * itrn registers are used to update interrupt rates for specific
+	 * interrupt indices without modifying the state of the interrupt.
+	 */
+	__le32 dynctl_reg_start;
+	__le32 dynctl_reg_spacing;
+
+	__le32 itrn_reg_start;
+	__le32 itrn_reg_spacing;
+	u8 reserved[8];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(32, virtchnl2_vector_chunk);
+
+/* Structure to specify several chunks of contiguous interrupt vectors */
+struct virtchnl2_vector_chunks {
+	__le16 num_vchunks;
+	u8 reserved[14];
+	struct virtchnl2_vector_chunk vchunks[1];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(48, virtchnl2_vector_chunks);
+
+/* VIRTCHNL2_OP_ALLOC_VECTORS
+ * PF sends this message to request additional interrupt vectors beyond the
+ * ones that were assigned via GET_CAPS request. virtchnl2_alloc_vectors
+ * structure is used to specify the number of vectors requested. CP responds
+ * with the same structure with the actual number of vectors assigned followed
+ * by virtchnl2_vector_chunks structure identifying the vector ids.
+ */
+struct virtchnl2_alloc_vectors {
+	__le16 num_vectors;
+	u8 reserved[14];
+	struct virtchnl2_vector_chunks vchunks;
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(64, virtchnl2_alloc_vectors);
+
+/* VIRTCHNL2_OP_DEALLOC_VECTORS
+ * PF sends this message to release the vectors.
+ * PF sends virtchnl2_vector_chunks struct to specify the vectors it is giving
+ * away. CP performs requested action and returns status.
+ */
+
+/* VIRTCHNL2_OP_GET_RSS_LUT
+ * VIRTCHNL2_OP_SET_RSS_LUT
+ * PF sends this message to get or set RSS lookup table. Only supported if
+ * both PF and CP drivers set the VIRTCHNL2_CAP_RSS bit during configuration
+ * negotiation. Uses the virtchnl2_rss_lut structure
+ */
+struct virtchnl2_rss_lut {
+	__le32 vport_id;
+	__le16 lut_entries_start;
+	__le16 lut_entries;
+	u8 reserved[4];
+	__le32 lut[1]; /* RSS lookup table */
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl2_rss_lut);
+
+struct virtchnl2_proto_hdr {
+	/* see VIRTCHNL2_PROTO_HDR_TYPE definitions */
+	__le32 type;
+	__le32 field_selector; /* a bit mask to select field for header type */
+	u8 buffer[64];
+	/*
+	 * binary buffer in network order for specific header type.
+	 * For example, if type = VIRTCHNL2_PROTO_HDR_IPV4, a IPv4
+	 * header is expected to be copied into the buffer.
+	 */
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(72, virtchnl2_proto_hdr);
+
+struct virtchnl2_proto_hdrs {
+	u8 tunnel_level;
+	/*
+	 * specify where protocol header start from.
+	 * 0 - from the outer layer
+	 * 1 - from the first inner layer
+	 * 2 - from the second inner layer
+	 * ....
+	 */
+	__le32 count; /* the proto layers must < VIRTCHNL2_MAX_NUM_PROTO_HDRS */
+	struct virtchnl2_proto_hdr proto_hdr[VIRTCHNL2_MAX_NUM_PROTO_HDRS];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(2312, virtchnl2_proto_hdrs);
+
+struct virtchnl2_rss_cfg {
+	struct virtchnl2_proto_hdrs proto_hdrs;
+
+	/* see VIRTCHNL2_RSS_ALGORITHM definitions */
+	__le32 rss_algorithm;
+	u8 reserved[128];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(2444, virtchnl2_rss_cfg);
+
+/* VIRTCHNL2_OP_GET_RSS_KEY
+ * PF sends this message to get RSS key. Only supported if both PF and CP
+ * drivers set the VIRTCHNL2_CAP_RSS bit during configuration negotiation. Uses
+ * the virtchnl2_rss_key structure
+ */
+
+/* VIRTCHNL2_OP_GET_RSS_HASH
+ * VIRTCHNL2_OP_SET_RSS_HASH
+ * PF sends these messages to get and set the hash filter enable bits for RSS.
+ * By default, the CP sets these to all possible traffic types that the
+ * hardware supports. The PF can query this value if it wants to change the
+ * traffic types that are hashed by the hardware.
+ * Only supported if both PF and CP drivers set the VIRTCHNL2_CAP_RSS bit
+ * during configuration negotiation.
+ */
+struct virtchnl2_rss_hash {
+	/* Packet Type Groups bitmap */
+	__le64 ptype_groups;
+	__le32 vport_id;
+	u8 reserved[4];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl2_rss_hash);
+
+/* VIRTCHNL2_OP_SET_SRIOV_VFS
+ * This message is used to set number of SRIOV VFs to be created. The actual
+ * allocation of resources for the VFs in terms of vport, queues and interrupts
+ * is done by CP. When this call completes, the APF driver calls
+ * pci_enable_sriov to let the OS instantiate the SRIOV PCIE devices.
+ * The number of VFs set to 0 will destroy all the VFs of this function.
+ */
+
+struct virtchnl2_sriov_vfs_info {
+	__le16 num_vfs;
+	__le16 pad;
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(4, virtchnl2_sriov_vfs_info);
+
+/* Based on the descriptor type the PF supports, CP fills ptype_id_10 or
+ * ptype_id_8 for flex and base descriptor respectively. If ptype_id_10 value
+ * is set to 0xFFFF, PF should consider this ptype as dummy one and it is the
+ * last ptype.
+ */
+struct virtchnl2_ptype {
+	__le16 ptype_id_10;
+	u8 ptype_id_8;
+	/* number of protocol ids the packet supports, maximum of 32
+	 * protocol ids are supported
+	 */
+	u8 proto_id_count;
+	__le16 pad;
+	/* proto_id_count decides the allocation of protocol id array */
+	/* see VIRTCHNL2_PROTO_HDR_TYPE */
+	__le16 proto_id[1];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl2_ptype);
+
+/* VIRTCHNL2_OP_GET_PTYPE_INFO
+ * PF sends this message to CP to get all supported packet types. It does by
+ * filling in start_ptype_id and num_ptypes. Depending on descriptor type the
+ * PF supports, it sets num_ptypes to 1024 (10-bit ptype) for flex descriptor
+ * and 256 (8-bit ptype) for base descriptor support. CP responds back to PF by
+ * populating start_ptype_id, num_ptypes and array of ptypes. If all ptypes
+ * doesn't fit into one mailbox buffer, CP splits ptype info into multiple
+ * messages, where each message will have the start ptype id, number of ptypes
+ * sent in that message and the ptype array itself. When CP is done updating
+ * all ptype information it extracted from the package (number of ptypes
+ * extracted might be less than what PF expects), it will append a dummy ptype
+ * (which has 'ptype_id_10' of 'struct virtchnl2_ptype' as 0xFFFF) to the ptype
+ * array. PF is expected to receive multiple VIRTCHNL2_OP_GET_PTYPE_INFO
+ * messages.
+ */
+struct virtchnl2_get_ptype_info {
+	__le16 start_ptype_id;
+	__le16 num_ptypes;
+	__le32 pad;
+	struct virtchnl2_ptype ptype[1];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl2_get_ptype_info);
+
+/* VIRTCHNL2_OP_GET_STATS
+ * PF/VF sends this message to CP to get the update stats by specifying the
+ * vport_id. CP responds with stats in struct virtchnl2_vport_stats.
+ */
+struct virtchnl2_vport_stats {
+	__le32 vport_id;
+	u8 pad[4];
+
+	__le64 rx_bytes;		/* received bytes */
+	__le64 rx_unicast;		/* received unicast pkts */
+	__le64 rx_multicast;		/* received multicast pkts */
+	__le64 rx_broadcast;		/* received broadcast pkts */
+	__le64 rx_discards;
+	__le64 rx_errors;
+	__le64 rx_unknown_protocol;
+	__le64 tx_bytes;		/* transmitted bytes */
+	__le64 tx_unicast;		/* transmitted unicast pkts */
+	__le64 tx_multicast;		/* transmitted multicast pkts */
+	__le64 tx_broadcast;		/* transmitted broadcast pkts */
+	__le64 tx_discards;
+	__le64 tx_errors;
+	u8 reserved[16];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(128, virtchnl2_vport_stats);
+
+struct virtchnl2_event {
+	/* see VIRTCHNL2_EVENT_CODES definitions */
+	__le32 event;
+	/* link_speed provided in Mbps */
+	__le32 link_speed;
+	__le32 vport_id;
+	u8 link_status;
+	u8 pad[3];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl2_event);
+
+/* VIRTCHNL2_OP_GET_RSS_KEY
+ * VIRTCHNL2_OP_SET_RSS_KEY
+ * PF/VF sends this message to get or set RSS key. Only supported if both
+ * PF/VF and CP drivers set the VIRTCHNL2_CAP_RSS bit during configuration
+ * negotiation. Uses the virtchnl2_rss_key structure
+ */
+struct virtchnl2_rss_key {
+	__le32 vport_id;
+	__le16 key_len;
+	u8 pad;
+	u8 key[1];         /* RSS hash key, packed bytes */
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl2_rss_key);
+
+/* structure to specify a chunk of contiguous queues */
+struct virtchnl2_queue_chunk {
+	/* see VIRTCHNL2_QUEUE_TYPE definitions */
+	__le32 type;
+	__le32 start_queue_id;
+	__le32 num_queues;
+	u8 reserved[4];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl2_queue_chunk);
+
+/* structure to specify several chunks of contiguous queues */
+struct virtchnl2_queue_chunks {
+	__le16 num_chunks;
+	u8 reserved[6];
+	struct virtchnl2_queue_chunk chunks[1];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(24, virtchnl2_queue_chunks);
+
+/* VIRTCHNL2_OP_ENABLE_QUEUES
+ * VIRTCHNL2_OP_DISABLE_QUEUES
+ * VIRTCHNL2_OP_DEL_QUEUES
+ *
+ * PF sends these messages to enable, disable or delete queues specified in
+ * chunks. PF sends virtchnl2_del_ena_dis_queues struct to specify the queues
+ * to be enabled/disabled/deleted. Also applicable to single queue receive or
+ * transmit. CP performs requested action and returns status.
+ */
+struct virtchnl2_del_ena_dis_queues {
+	__le32 vport_id;
+	u8 reserved[4];
+	struct virtchnl2_queue_chunks chunks;
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(32, virtchnl2_del_ena_dis_queues);
+
+/* Queue to vector mapping */
+struct virtchnl2_queue_vector {
+	__le32 queue_id;
+	__le16 vector_id;
+	u8 pad[2];
+
+	/* see VIRTCHNL2_ITR_IDX definitions */
+	__le32 itr_idx;
+
+	/* see VIRTCHNL2_QUEUE_TYPE definitions */
+	__le32 queue_type;
+	u8 reserved[8];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(24, virtchnl2_queue_vector);
+
+/* VIRTCHNL2_OP_MAP_QUEUE_VECTOR
+ * VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR
+ *
+ * PF sends this message to map or unmap queues to vectors and interrupt
+ * throttling rate index registers. External data buffer contains
+ * virtchnl2_queue_vector_maps structure that contains num_qv_maps of
+ * virtchnl2_queue_vector structures. CP maps the requested queue vector maps
+ * after validating the queue and vector ids and returns a status code.
+ */
+struct virtchnl2_queue_vector_maps {
+	__le32 vport_id;
+	__le16 num_qv_maps;
+	u8 pad[10];
+	struct virtchnl2_queue_vector qv_maps[1];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl2_queue_vector_maps);
+
+static inline const char *virtchnl2_op_str(enum virtchnl_ops v_opcode)
+{
+	switch (v_opcode) {
+	case VIRTCHNL2_OP_GET_CAPS:
+		return "VIRTCHNL2_OP_GET_CAPS";
+	case VIRTCHNL2_OP_CREATE_VPORT:
+		return "VIRTCHNL2_OP_CREATE_VPORT";
+	case VIRTCHNL2_OP_DESTROY_VPORT:
+		return "VIRTCHNL2_OP_DESTROY_VPORT";
+	case VIRTCHNL2_OP_ENABLE_VPORT:
+		return "VIRTCHNL2_OP_ENABLE_VPORT";
+	case VIRTCHNL2_OP_DISABLE_VPORT:
+		return "VIRTCHNL2_OP_DISABLE_VPORT";
+	case VIRTCHNL2_OP_CONFIG_TX_QUEUES:
+		return "VIRTCHNL2_OP_CONFIG_TX_QUEUES";
+	case VIRTCHNL2_OP_CONFIG_RX_QUEUES:
+		return "VIRTCHNL2_OP_CONFIG_RX_QUEUES";
+	case VIRTCHNL2_OP_ENABLE_QUEUES:
+		return "VIRTCHNL2_OP_ENABLE_QUEUES";
+	case VIRTCHNL2_OP_DISABLE_QUEUES:
+		return "VIRTCHNL2_OP_DISABLE_QUEUES";
+	case VIRTCHNL2_OP_ADD_QUEUES:
+		return "VIRTCHNL2_OP_ADD_QUEUES";
+	case VIRTCHNL2_OP_DEL_QUEUES:
+		return "VIRTCHNL2_OP_DEL_QUEUES";
+	case VIRTCHNL2_OP_MAP_QUEUE_VECTOR:
+		return "VIRTCHNL2_OP_MAP_QUEUE_VECTOR";
+	case VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR:
+		return "VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR";
+	case VIRTCHNL2_OP_GET_RSS_KEY:
+		return "VIRTCHNL2_OP_GET_RSS_KEY";
+	case VIRTCHNL2_OP_SET_RSS_KEY:
+		return "VIRTCHNL2_OP_SET_RSS_KEY";
+	case VIRTCHNL2_OP_GET_RSS_LUT:
+		return "VIRTCHNL2_OP_GET_RSS_LUT";
+	case VIRTCHNL2_OP_SET_RSS_LUT:
+		return "VIRTCHNL2_OP_SET_RSS_LUT";
+	case VIRTCHNL2_OP_GET_RSS_HASH:
+		return "VIRTCHNL2_OP_GET_RSS_HASH";
+	case VIRTCHNL2_OP_SET_RSS_HASH:
+		return "VIRTCHNL2_OP_SET_RSS_HASH";
+	case VIRTCHNL2_OP_SET_SRIOV_VFS:
+		return "VIRTCHNL2_OP_SET_SRIOV_VFS";
+	case VIRTCHNL2_OP_ALLOC_VECTORS:
+		return "VIRTCHNL2_OP_ALLOC_VECTORS";
+	case VIRTCHNL2_OP_DEALLOC_VECTORS:
+		return "VIRTCHNL2_OP_DEALLOC_VECTORS";
+	case VIRTCHNL2_OP_GET_PTYPE_INFO:
+		return "VIRTCHNL2_OP_GET_PTYPE_INFO";
+	case VIRTCHNL2_OP_GET_STATS:
+		return "VIRTCHNL2_OP_GET_STATS";
+	case VIRTCHNL2_OP_EVENT:
+		return "VIRTCHNL2_OP_EVENT";
+	case VIRTCHNL2_OP_RESET_VF:
+		return "VIRTCHNL2_OP_RESET_VF";
+	default:
+		return virtchnl_op_str(v_opcode);
+	}
+}
+
+/**
+ * virtchnl2_vc_validate_vf_msg
+ * @ver: Virtchnl version info
+ * @v_opcode: Opcode for the message
+ * @msg: pointer to the msg buffer
+ * @msglen: msg length
+ *
+ * validate msg format against struct for each opcode
+ */
+static inline int
+virtchnl2_vc_validate_vf_msg(struct virtchnl_version_info *ver, u32 v_opcode,
+			     u8 *msg, __le16 msglen)
+{
+	bool err_msg_format = false;
+	__le32 valid_len = 0;
+
+	/* Validate message length. */
+	switch (v_opcode) {
+	case VIRTCHNL_OP_VERSION:
+		valid_len = sizeof(struct virtchnl_version_info);
+		break;
+	case VIRTCHNL2_OP_GET_CAPS:
+		valid_len = sizeof(struct virtchnl2_get_capabilities);
+		break;
+	case VIRTCHNL2_OP_CREATE_VPORT:
+		valid_len = sizeof(struct virtchnl2_create_vport);
+		if (msglen >= valid_len) {
+			struct virtchnl2_create_vport *cvport =
+				(struct virtchnl2_create_vport *)msg;
+
+			if (cvport->chunks.num_chunks == 0) {
+				/* zero chunks is allowed as input */
+				break;
+			}
+
+			valid_len += (cvport->chunks.num_chunks - 1) *
+				      sizeof(struct virtchnl2_queue_reg_chunk);
+		}
+		break;
+	case VIRTCHNL2_OP_DESTROY_VPORT:
+	case VIRTCHNL2_OP_ENABLE_VPORT:
+	case VIRTCHNL2_OP_DISABLE_VPORT:
+		valid_len = sizeof(struct virtchnl2_vport);
+		break;
+	case VIRTCHNL2_OP_CONFIG_TX_QUEUES:
+		valid_len = sizeof(struct virtchnl2_config_tx_queues);
+		if (msglen >= valid_len) {
+			struct virtchnl2_config_tx_queues *ctq =
+				(struct virtchnl2_config_tx_queues *)msg;
+			if (ctq->num_qinfo == 0) {
+				err_msg_format = true;
+				break;
+			}
+			valid_len += (ctq->num_qinfo - 1) *
+				     sizeof(struct virtchnl2_txq_info);
+		}
+		break;
+	case VIRTCHNL2_OP_CONFIG_RX_QUEUES:
+		valid_len = sizeof(struct virtchnl2_config_rx_queues);
+		if (msglen >= valid_len) {
+			struct virtchnl2_config_rx_queues *crq =
+				(struct virtchnl2_config_rx_queues *)msg;
+			if (crq->num_qinfo == 0) {
+				err_msg_format = true;
+				break;
+			}
+			valid_len += (crq->num_qinfo - 1) *
+				     sizeof(struct virtchnl2_rxq_info);
+		}
+		break;
+	case VIRTCHNL2_OP_ADD_QUEUES:
+		valid_len = sizeof(struct virtchnl2_add_queues);
+		if (msglen >= valid_len) {
+			struct virtchnl2_add_queues *add_q =
+				(struct virtchnl2_add_queues *)msg;
+
+			if (add_q->chunks.num_chunks == 0) {
+				/* zero chunks is allowed as input */
+				break;
+			}
+
+			valid_len += (add_q->chunks.num_chunks - 1) *
+				      sizeof(struct virtchnl2_queue_reg_chunk);
+		}
+		break;
+	case VIRTCHNL2_OP_ENABLE_QUEUES:
+	case VIRTCHNL2_OP_DISABLE_QUEUES:
+	case VIRTCHNL2_OP_DEL_QUEUES:
+		valid_len = sizeof(struct virtchnl2_del_ena_dis_queues);
+		if (msglen >= valid_len) {
+			struct virtchnl2_del_ena_dis_queues *qs =
+				(struct virtchnl2_del_ena_dis_queues *)msg;
+			if (qs->chunks.num_chunks == 0 ||
+			    qs->chunks.num_chunks > VIRTCHNL2_OP_DEL_ENABLE_DISABLE_QUEUES_MAX) {
+				err_msg_format = true;
+				break;
+			}
+			valid_len += (qs->chunks.num_chunks - 1) *
+				      sizeof(struct virtchnl2_queue_chunk);
+		}
+		break;
+	case VIRTCHNL2_OP_MAP_QUEUE_VECTOR:
+	case VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR:
+		valid_len = sizeof(struct virtchnl2_queue_vector_maps);
+		if (msglen >= valid_len) {
+			struct virtchnl2_queue_vector_maps *v_qp =
+				(struct virtchnl2_queue_vector_maps *)msg;
+			if (v_qp->num_qv_maps == 0 ||
+			    v_qp->num_qv_maps > VIRTCHNL2_OP_MAP_UNMAP_QUEUE_VECTOR_MAX) {
+				err_msg_format = true;
+				break;
+			}
+			valid_len += (v_qp->num_qv_maps - 1) *
+				      sizeof(struct virtchnl2_queue_vector);
+		}
+		break;
+	case VIRTCHNL2_OP_ALLOC_VECTORS:
+		valid_len = sizeof(struct virtchnl2_alloc_vectors);
+		if (msglen >= valid_len) {
+			struct virtchnl2_alloc_vectors *v_av =
+				(struct virtchnl2_alloc_vectors *)msg;
+
+			if (v_av->vchunks.num_vchunks == 0) {
+				/* zero chunks is allowed as input */
+				break;
+			}
+
+			valid_len += (v_av->vchunks.num_vchunks - 1) *
+				      sizeof(struct virtchnl2_vector_chunk);
+		}
+		break;
+	case VIRTCHNL2_OP_DEALLOC_VECTORS:
+		valid_len = sizeof(struct virtchnl2_vector_chunks);
+		if (msglen >= valid_len) {
+			struct virtchnl2_vector_chunks *v_chunks =
+				(struct virtchnl2_vector_chunks *)msg;
+			if (v_chunks->num_vchunks == 0) {
+				err_msg_format = true;
+				break;
+			}
+			valid_len += (v_chunks->num_vchunks - 1) *
+				      sizeof(struct virtchnl2_vector_chunk);
+		}
+		break;
+	case VIRTCHNL2_OP_GET_RSS_KEY:
+	case VIRTCHNL2_OP_SET_RSS_KEY:
+		valid_len = sizeof(struct virtchnl2_rss_key);
+		if (msglen >= valid_len) {
+			struct virtchnl2_rss_key *vrk =
+				(struct virtchnl2_rss_key *)msg;
+
+			if (vrk->key_len == 0) {
+				/* zero length is allowed as input */
+				break;
+			}
+
+			valid_len += vrk->key_len - 1;
+		}
+		break;
+	case VIRTCHNL2_OP_GET_RSS_LUT:
+	case VIRTCHNL2_OP_SET_RSS_LUT:
+		valid_len = sizeof(struct virtchnl2_rss_lut);
+		if (msglen >= valid_len) {
+			struct virtchnl2_rss_lut *vrl =
+				(struct virtchnl2_rss_lut *)msg;
+
+			if (vrl->lut_entries == 0) {
+				/* zero entries is allowed as input */
+				break;
+			}
+
+			valid_len += (vrl->lut_entries - 1) * sizeof(__le16);
+		}
+		break;
+	case VIRTCHNL2_OP_GET_RSS_HASH:
+	case VIRTCHNL2_OP_SET_RSS_HASH:
+		valid_len = sizeof(struct virtchnl2_rss_hash);
+		break;
+	case VIRTCHNL2_OP_SET_SRIOV_VFS:
+		valid_len = sizeof(struct virtchnl2_sriov_vfs_info);
+		break;
+	case VIRTCHNL2_OP_GET_PTYPE_INFO:
+		valid_len = sizeof(struct virtchnl2_get_ptype_info);
+		break;
+	case VIRTCHNL2_OP_GET_STATS:
+		valid_len = sizeof(struct virtchnl2_vport_stats);
+		break;
+	case VIRTCHNL2_OP_RESET_VF:
+		break;
+	case VIRTCHNL2_OP_EVENT:
+		return VIRTCHNL_STATUS_ERR_PARAM;
+	default:
+		return virtchnl_vc_validate_vf_msg(ver, v_opcode, msg, msglen);
+	}
+	/* few more checks */
+	if (err_msg_format || valid_len != msglen)
+		return VIRTCHNL_STATUS_ERR_OPCODE_MISMATCH;
+
+	return 0;
+}
+
+#endif /* _VIRTCHNL_2_H_ */
diff --git a/include/linux/avf/virtchnl_lan_desc.h b/include/linux/avf/virtchnl_lan_desc.h
new file mode 100644
index 000000000000..0cd4a9e49395
--- /dev/null
+++ b/include/linux/avf/virtchnl_lan_desc.h
@@ -0,0 +1,603 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (c) 2020, Intel Corporation. */
+
+/*
+ * Copyright (C) 2019 Intel Corporation
+ *
+ * For licensing information, see the file 'LICENSE' in the root folder
+ */
+#ifndef _VIRTCHNL_LAN_DESC_H_
+#define _VIRTCHNL_LAN_DESC_H_
+
+/* VIRTCHNL2_TX_DESC_IDS
+ * Transmit descriptor ID flags
+ */
+#define VIRTCHNL2_TXDID_DATA				BIT(0)
+#define VIRTCHNL2_TXDID_CTX				BIT(1)
+#define VIRTCHNL2_TXDID_REINJECT_CTX			BIT(2)
+#define VIRTCHNL2_TXDID_FLEX_DATA			BIT(3)
+#define VIRTCHNL2_TXDID_FLEX_CTX			BIT(4)
+#define VIRTCHNL2_TXDID_FLEX_TSO_CTX			BIT(5)
+#define VIRTCHNL2_TXDID_FLEX_TSYN_L2TAG1		BIT(6)
+#define VIRTCHNL2_TXDID_FLEX_L2TAG1_L2TAG2		BIT(7)
+#define VIRTCHNL2_TXDID_FLEX_TSO_L2TAG2_PARSTAG_CTX	BIT(8)
+#define VIRTCHNL2_TXDID_FLEX_HOSTSPLIT_SA_TSO_CTX	BIT(9)
+#define VIRTCHNL2_TXDID_FLEX_HOSTSPLIT_SA_CTX		BIT(10)
+#define VIRTCHNL2_TXDID_FLEX_L2TAG2_CTX			BIT(11)
+#define VIRTCHNL2_TXDID_FLEX_FLOW_SCHED			BIT(12)
+#define VIRTCHNL2_TXDID_FLEX_HOSTSPLIT_TSO_CTX		BIT(13)
+#define VIRTCHNL2_TXDID_FLEX_HOSTSPLIT_CTX		BIT(14)
+#define VIRTCHNL2_TXDID_DESC_DONE			BIT(15)
+
+/* VIRTCHNL2_RX_DESC_IDS
+ * Receive descriptor IDs (range from 0 to 63)
+ */
+#define VIRTCHNL2_RXDID_0_16B_BASE			0
+/* 32B_BASE and FLEX_SPLITQ share desc ids as default descriptors
+ * because they can be differentiated based on queue model; e.g. single
+ * queue model can only use 32B_BASE and split queue model can only use
+ * FLEX_SPLITQ.  Having these as 1 allows them to be used as default
+ * descriptors without negotiation.
+ */
+#define VIRTCHNL2_RXDID_1_32B_BASE			1
+#define VIRTCHNL2_RXDID_1_FLEX_SPLITQ			1
+#define VIRTCHNL2_RXDID_2_FLEX_SQ_NIC			2
+#define VIRTCHNL2_RXDID_3_FLEX_SQ_SW			3
+#define VIRTCHNL2_RXDID_4_FLEX_SQ_NIC_VEB		4
+#define VIRTCHNL2_RXDID_5_FLEX_SQ_NIC_ACL		5
+#define VIRTCHNL2_RXDID_6_FLEX_SQ_NIC_2			6
+#define VIRTCHNL2_RXDID_7_HW_RSVD			7
+/* 9 through 15 are reserved */
+#define VIRTCHNL2_RXDID_16_COMMS_GENERIC		16
+#define VIRTCHNL2_RXDID_17_COMMS_AUX_VLAN		17
+#define VIRTCHNL2_RXDID_18_COMMS_AUX_IPV4		18
+#define VIRTCHNL2_RXDID_19_COMMS_AUX_IPV6		19
+#define VIRTCHNL2_RXDID_20_COMMS_AUX_FLOW		20
+#define VIRTCHNL2_RXDID_21_COMMS_AUX_TCP		21
+/* 22 through 63 are reserved */
+
+/* VIRTCHNL2_RX_DESC_ID_BITMASKS
+ * Receive descriptor ID bitmasks
+ */
+#define VIRTCHNL2_RXDID_0_16B_BASE_M		BIT(VIRTCHNL2_RXDID_0_16B_BASE)
+#define VIRTCHNL2_RXDID_1_32B_BASE_M		BIT(VIRTCHNL2_RXDID_1_32B_BASE)
+#define VIRTCHNL2_RXDID_1_FLEX_SPLITQ_M		BIT(VIRTCHNL2_RXDID_1_FLEX_SPLITQ)
+#define VIRTCHNL2_RXDID_2_FLEX_SQ_NIC_M		BIT(VIRTCHNL2_RXDID_2_FLEX_SQ_NIC)
+#define VIRTCHNL2_RXDID_3_FLEX_SQ_SW_M		BIT(VIRTCHNL2_RXDID_3_FLEX_SQ_SW)
+#define VIRTCHNL2_RXDID_4_FLEX_SQ_NIC_VEB_M	BIT(VIRTCHNL2_RXDID_4_FLEX_SQ_NIC_VEB)
+#define VIRTCHNL2_RXDID_5_FLEX_SQ_NIC_ACL_M	BIT(VIRTCHNL2_RXDID_5_FLEX_SQ_NIC_ACL)
+#define VIRTCHNL2_RXDID_6_FLEX_SQ_NIC_2_M	BIT(VIRTCHNL2_RXDID_6_FLEX_SQ_NIC_2)
+#define VIRTCHNL2_RXDID_7_HW_RSVD_M		BIT(VIRTCHNL2_RXDID_7_HW_RSVD)
+/* 9 through 15 are reserved */
+#define VIRTCHNL2_RXDID_16_COMMS_GENERIC_M	BIT(VIRTCHNL2_RXDID_16_COMMS_GENERIC)
+#define VIRTCHNL2_RXDID_17_COMMS_AUX_VLAN_M	BIT(VIRTCHNL2_RXDID_17_COMMS_AUX_VLAN)
+#define VIRTCHNL2_RXDID_18_COMMS_AUX_IPV4_M	BIT(VIRTCHNL2_RXDID_18_COMMS_AUX_IPV4)
+#define VIRTCHNL2_RXDID_19_COMMS_AUX_IPV6_M	BIT(VIRTCHNL2_RXDID_19_COMMS_AUX_IPV6)
+#define VIRTCHNL2_RXDID_20_COMMS_AUX_FLOW_M	BIT(VIRTCHNL2_RXDID_20_COMMS_AUX_FLOW)
+#define VIRTCHNL2_RXDID_21_COMMS_AUX_TCP_M	BIT(VIRTCHNL2_RXDID_21_COMMS_AUX_TCP)
+/* 22 through 63 are reserved */
+
+/* Rx */
+/* For splitq virtchnl2_rx_flex_desc_adv desc members */
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_RXDID_S		0
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_RXDID_M		\
+	MAKEMASK(0xFUL, VIRTCHNL2_RX_FLEX_DESC_ADV_RXDID_S)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_PTYPE_S		0
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_PTYPE_M		\
+	MAKEMASK(0x3FFUL, VIRTCHNL2_RX_FLEX_DESC_ADV_PTYPE_S)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_UMBCAST_S		10
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_UMBCAST_M		\
+	MAKEMASK(0x3UL, VIRTCHNL2_RX_FLEX_DESC_ADV_UMBCAST_S)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_FF0_S		12
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_FF0_M			\
+	MAKEMASK(0xFUL, VIRTCHNL2_RX_FLEX_DESC_ADV_FF0_S)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_PBUF_S		0
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_PBUF_M	\
+	MAKEMASK(0x3FFFUL, VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_PBUF_S)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_GEN_S		14
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_GEN_M			\
+	BIT_ULL(VIRTCHNL2_RX_FLEX_DESC_ADV_GEN_S)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_BUFQ_ID_S		15
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_BUFQ_ID_M		\
+	BIT_ULL(VIRTCHNL2_RX_FLEX_DESC_ADV_BUFQ_ID_S)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_HDR_S		0
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_HDR_M		\
+	MAKEMASK(0x3FFUL, VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_HDR_S)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_RSC_S		10
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_RSC_M			\
+	BIT_ULL(VIRTCHNL2_RX_FLEX_DESC_ADV_RSC_S)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_SPH_S		11
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_SPH_M			\
+	BIT_ULL(VIRTCHNL2_RX_FLEX_DESC_ADV_SPH_S)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_MISS_S		12
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_MISS_M		\
+	BIT_ULL(VIRTCHNL2_RX_FLEX_DESC_ADV_MISS_S)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_FF1_S		13
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_FF1_M			\
+	MAKEMASK(0x7UL, VIRTCHNL2_RX_FLEX_DESC_ADV_FF1_M)
+
+/* VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS_ERROR_0_QW1_BITS
+ * for splitq virtchnl2_rx_flex_desc_adv
+ * Note: These are predefined bit offsets
+ */
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_DD_S			0
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_EOF_S		1
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_HBO_S		2
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_L3L4P_S		3
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_IPE_S		4
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_L4E_S		5
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_EIPE_S		6
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_EUDPE_S		7
+
+/* VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS_ERROR_0_QW0_BITS
+ * for splitq virtchnl2_rx_flex_desc_adv
+ * Note: These are predefined bit offsets
+ */
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_LPBK_S		0
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_IPV6EXADD_S		1
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_RXE_S		2
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_CRCP_S		3
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_RSS_VALID_S		4
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_L2TAG1P_S		5
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XTRMD0_VALID_S	6
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XTRMD1_VALID_S	7
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_LAST			8 /* this entry must be last!!! */
+
+/* VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS_ERROR_1_BITS
+ * for splitq virtchnl2_rx_flex_desc_adv
+ * Note: These are predefined bit offsets
+ */
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_RSVD_S		0 /* 2 bits */
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_ATRAEFAIL_S		2
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_L2TAG2P_S		3
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_XTRMD2_VALID_S	4
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_XTRMD3_VALID_S	5
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_XTRMD4_VALID_S	6
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_XTRMD5_VALID_S	7
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_LAST			8 /* this entry must be last!!! */
+
+/* for singleq (flex) virtchnl2_rx_flex_desc fields */
+/* for virtchnl2_rx_flex_desc.ptype_flex_flags0 member */
+#define VIRTCHNL2_RX_FLEX_DESC_PTYPE_S			0
+#define VIRTCHNL2_RX_FLEX_DESC_PTYPE_M			\
+	MAKEMASK(0x3FFUL, VIRTCHNL2_RX_FLEX_DESC_PTYPE_S) /* 10 bits */
+
+/* for virtchnl2_rx_flex_desc.pkt_length member */
+#define VIRTCHNL2_RX_FLEX_DESC_PKT_LEN_S			0
+#define VIRTCHNL2_RX_FLEX_DESC_PKT_LEN_M			\
+	MAKEMASK(0x3FFFUL, VIRTCHNL2_RX_FLEX_DESC_PKT_LEN_S) /* 14 bits */
+
+/* VIRTCHNL2_RX_FLEX_DESC_STATUS_ERROR_0_BITS
+ * for singleq (flex) virtchnl2_rx_flex_desc
+ * Note: These are predefined bit offsets
+ */
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_DD_S			0
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_EOF_S			1
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_HBO_S			2
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_L3L4P_S			3
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_XSUM_IPE_S		4
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_XSUM_L4E_S		5
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_XSUM_EIPE_S		6
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_XSUM_EUDPE_S		7
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_LPBK_S			8
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_IPV6EXADD_S		9
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_RXE_S			10
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_CRCP_S			11
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_RSS_VALID_S		12
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_L2TAG1P_S		13
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_XTRMD0_VALID_S		14
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_XTRMD1_VALID_S		15
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_LAST			16 /* this entry must be last!!! */
+
+/* VIRTCHNL2_RX_FLEX_DESC_STATUS_ERROR_1_BITS
+ * for singleq (flex) virtchnl2_rx_flex_desc
+ * Note: These are predefined bit offsets
+ */
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS1_CPM_S			0 /* 4 bits */
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS1_NAT_S			4
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS1_CRYPTO_S			5
+/* [10:6] reserved */
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS1_L2TAG2P_S		11
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS1_XTRMD2_VALID_S		12
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS1_XTRMD3_VALID_S		13
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS1_XTRMD4_VALID_S		14
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS1_XTRMD5_VALID_S		15
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS1_LAST			16 /* this entry must be last!!! */
+
+/* For singleq (non flex) virtchnl2_singleq_base_rx_desc legacy desc members */
+#define VIRTCHNL2_RX_BASE_DESC_QW1_LEN_SPH_S	63
+#define VIRTCHNL2_RX_BASE_DESC_QW1_LEN_SPH_M	\
+	BIT_ULL(VIRTCHNL2_RX_BASE_DESC_QW1_LEN_SPH_S)
+#define VIRTCHNL2_RX_BASE_DESC_QW1_LEN_HBUF_S	52
+#define VIRTCHNL2_RX_BASE_DESC_QW1_LEN_HBUF_M	\
+	MAKEMASK(0x7FFULL, VIRTCHNL2_RX_BASE_DESC_QW1_LEN_HBUF_S)
+#define VIRTCHNL2_RX_BASE_DESC_QW1_LEN_PBUF_S	38
+#define VIRTCHNL2_RX_BASE_DESC_QW1_LEN_PBUF_M	\
+	MAKEMASK(0x3FFFULL, VIRTCHNL2_RX_BASE_DESC_QW1_LEN_PBUF_S)
+#define VIRTCHNL2_RX_BASE_DESC_QW1_PTYPE_S	30
+#define VIRTCHNL2_RX_BASE_DESC_QW1_PTYPE_M	\
+	MAKEMASK(0xFFULL, VIRTCHNL2_RX_BASE_DESC_QW1_PTYPE_S)
+#define VIRTCHNL2_RX_BASE_DESC_QW1_ERROR_S	19
+#define VIRTCHNL2_RX_BASE_DESC_QW1_ERROR_M	\
+	MAKEMASK(0xFFUL, VIRTCHNL2_RX_BASE_DESC_QW1_ERROR_S)
+#define VIRTCHNL2_RX_BASE_DESC_QW1_STATUS_S	0
+#define VIRTCHNL2_RX_BASE_DESC_QW1_STATUS_M	\
+	MAKEMASK(0x7FFFFUL, VIRTCHNL2_RX_BASE_DESC_QW1_STATUS_S)
+
+/* VIRTCHNL2_RX_BASE_DESC_STATUS_BITS
+ * for singleq (base) virtchnl2_rx_base_desc
+ * Note: These are predefined bit offsets
+ */
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_DD_S		0
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_EOF_S		1
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_L2TAG1P_S		2
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_L3L4P_S		3
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_CRCP_S		4
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_RSVD_S		5 /* 3 bits */
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_EXT_UDP_0_S	8
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_UMBCAST_S		9 /* 2 bits */
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_FLM_S		11
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_FLTSTAT_S		12 /* 2 bits */
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_LPBK_S		14
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_IPV6EXADD_S	15
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_RSVD1_S		16 /* 2 bits */
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_INT_UDP_0_S	18
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_LAST		19 /* this entry must be last!!! */
+
+/* VIRTCHNL2_RX_BASE_DESC_EXT_STATUS_BITS
+ * for singleq (base) virtchnl2_rx_base_desc
+ * Note: These are predefined bit offsets
+ */
+#define VIRTCHNL2_RX_BASE_DESC_EXT_STATUS_L2TAG2P_S	0
+
+/* VIRTCHNL2_RX_BASE_DESC_ERROR_BITS
+ * for singleq (base) virtchnl2_rx_base_desc
+ * Note: These are predefined bit offsets
+ */
+#define VIRTCHNL2_RX_BASE_DESC_ERROR_RXE_S		0
+#define VIRTCHNL2_RX_BASE_DESC_ERROR_ATRAEFAIL_S	1
+#define VIRTCHNL2_RX_BASE_DESC_ERROR_HBO_S		2
+#define VIRTCHNL2_RX_BASE_DESC_ERROR_L3L4E_S		3 /* 3 bits */
+#define VIRTCHNL2_RX_BASE_DESC_ERROR_IPE_S		3
+#define VIRTCHNL2_RX_BASE_DESC_ERROR_L4E_S		4
+#define VIRTCHNL2_RX_BASE_DESC_ERROR_EIPE_S		5
+#define VIRTCHNL2_RX_BASE_DESC_ERROR_OVERSIZE_S		6
+#define VIRTCHNL2_RX_BASE_DESC_ERROR_PPRS_S		7
+
+/* VIRTCHNL2_RX_BASE_DESC_FLTSTAT_VALUES
+ * for singleq (base) virtchnl2_rx_base_desc
+ * Note: These are predefined bit offsets
+ */
+#define VIRTCHNL2_RX_BASE_DESC_FLTSTAT_NO_DATA		0
+#define VIRTCHNL2_RX_BASE_DESC_FLTSTAT_FD_ID		1
+#define VIRTCHNL2_RX_BASE_DESC_FLTSTAT_RSV		2
+#define VIRTCHNL2_RX_BASE_DESC_FLTSTAT_RSS_HASH		3
+
+/* Receive Descriptors */
+/* splitq buf
+ * |                                       16|                   0|
+ * ----------------------------------------------------------------
+ * | RSV                                     | Buffer ID          |
+ * ----------------------------------------------------------------
+ * | Rx packet buffer adresss                                     |
+ * ----------------------------------------------------------------
+ * | Rx header buffer adresss                                     |
+ * ----------------------------------------------------------------
+ * | RSV                                                          |
+ * ----------------------------------------------------------------
+ * |                                                             0|
+ */
+struct virtchnl2_splitq_rx_buf_desc {
+	struct {
+		__le16  buf_id; /* Buffer Identifier */
+		__le16  rsvd0;
+		__le32  rsvd1;
+	} qword0;
+	__le64  pkt_addr; /* Packet buffer address */
+	__le64  hdr_addr; /* Header buffer address */
+	__le64  rsvd2;
+}; /* read used with buffer queues*/
+
+/* singleq buf
+ * |                                                             0|
+ * ----------------------------------------------------------------
+ * | Rx packet buffer adresss                                     |
+ * ----------------------------------------------------------------
+ * | Rx header buffer adresss                                     |
+ * ----------------------------------------------------------------
+ * | RSV                                                          |
+ * ----------------------------------------------------------------
+ * | RSV                                                          |
+ * ----------------------------------------------------------------
+ * |                                                             0|
+ */
+struct virtchnl2_singleq_rx_buf_desc {
+	__le64  pkt_addr; /* Packet buffer address */
+	__le64  hdr_addr; /* Header buffer address */
+	__le64  rsvd1;
+	__le64  rsvd2;
+}; /* read used with buffer queues*/
+
+union virtchnl2_rx_buf_desc {
+	struct virtchnl2_singleq_rx_buf_desc		read;
+	struct virtchnl2_splitq_rx_buf_desc		split_rd;
+};
+
+/* (0x00) singleq wb(compl) */
+struct virtchnl2_singleq_base_rx_desc {
+	struct {
+		struct {
+			__le16 mirroring_status;
+			__le16 l2tag1;
+		} lo_dword;
+		union {
+			__le32 rss; /* RSS Hash */
+			__le32 fd_id; /* Flow Director filter id */
+		} hi_dword;
+	} qword0;
+	struct {
+		/* status/error/PTYPE/length */
+		__le64 status_error_ptype_len;
+	} qword1;
+	struct {
+		__le16 ext_status; /* extended status */
+		__le16 rsvd;
+		__le16 l2tag2_1;
+		__le16 l2tag2_2;
+	} qword2;
+	struct {
+		__le32 reserved;
+		__le32 fd_id;
+	} qword3;
+}; /* writeback */
+
+/* (0x01) singleq flex compl */
+struct virtchnl2_rx_flex_desc {
+	/* Qword 0 */
+	u8 rxdid; /* descriptor builder profile id */
+	u8 mir_id_umb_cast; /* mirror=[5:0], umb=[7:6] */
+	__le16 ptype_flex_flags0; /* ptype=[9:0], ff0=[15:10] */
+	__le16 pkt_len; /* [15:14] are reserved */
+	__le16 hdr_len_sph_flex_flags1; /* header=[10:0] */
+					/* sph=[11:11] */
+					/* ff1/ext=[15:12] */
+
+	/* Qword 1 */
+	__le16 status_error0;
+	__le16 l2tag1;
+	__le16 flex_meta0;
+	__le16 flex_meta1;
+
+	/* Qword 2 */
+	__le16 status_error1;
+	u8 flex_flags2;
+	u8 time_stamp_low;
+	__le16 l2tag2_1st;
+	__le16 l2tag2_2nd;
+
+	/* Qword 3 */
+	__le16 flex_meta2;
+	__le16 flex_meta3;
+	union {
+		struct {
+			__le16 flex_meta4;
+			__le16 flex_meta5;
+		} flex;
+		__le32 ts_high;
+	} flex_ts;
+};
+
+/* (0x02) */
+struct virtchnl2_rx_flex_desc_nic {
+	/* Qword 0 */
+	u8 rxdid;
+	u8 mir_id_umb_cast;
+	__le16 ptype_flex_flags0;
+	__le16 pkt_len;
+	__le16 hdr_len_sph_flex_flags1;
+
+	/* Qword 1 */
+	__le16 status_error0;
+	__le16 l2tag1;
+	__le32 rss_hash;
+
+	/* Qword 2 */
+	__le16 status_error1;
+	u8 flexi_flags2;
+	u8 ts_low;
+	__le16 l2tag2_1st;
+	__le16 l2tag2_2nd;
+
+	/* Qword 3 */
+	__le32 flow_id;
+	union {
+		struct {
+			__le16 rsvd;
+			__le16 flow_id_ipv6;
+		} flex;
+		__le32 ts_high;
+	} flex_ts;
+};
+
+/* Rx Flex Descriptor Switch Profile
+ * RxDID Profile Id 3
+ * Flex-field 0: Source Vsi
+ */
+struct virtchnl2_rx_flex_desc_sw {
+	/* Qword 0 */
+	u8 rxdid;
+	u8 mir_id_umb_cast;
+	__le16 ptype_flex_flags0;
+	__le16 pkt_len;
+	__le16 hdr_len_sph_flex_flags1;
+
+	/* Qword 1 */
+	__le16 status_error0;
+	__le16 l2tag1;
+	__le16 src_vsi; /* [10:15] are reserved */
+	__le16 flex_md1_rsvd;
+
+	/* Qword 2 */
+	__le16 status_error1;
+	u8 flex_flags2;
+	u8 ts_low;
+	__le16 l2tag2_1st;
+	__le16 l2tag2_2nd;
+
+	/* Qword 3 */
+	__le32 rsvd; /* flex words 2-3 are reserved */
+	__le32 ts_high;
+};
+
+/* Rx Flex Descriptor NIC Profile
+ * RxDID Profile Id 6
+ * Flex-field 0: RSS hash lower 16-bits
+ * Flex-field 1: RSS hash upper 16-bits
+ * Flex-field 2: Flow Id lower 16-bits
+ * Flex-field 3: Source Vsi
+ * Flex-field 4: reserved, Vlan id taken from L2Tag
+ */
+struct virtchnl2_rx_flex_desc_nic_2 {
+	/* Qword 0 */
+	u8 rxdid;
+	u8 mir_id_umb_cast;
+	__le16 ptype_flex_flags0;
+	__le16 pkt_len;
+	__le16 hdr_len_sph_flex_flags1;
+
+	/* Qword 1 */
+	__le16 status_error0;
+	__le16 l2tag1;
+	__le32 rss_hash;
+
+	/* Qword 2 */
+	__le16 status_error1;
+	u8 flexi_flags2;
+	u8 ts_low;
+	__le16 l2tag2_1st;
+	__le16 l2tag2_2nd;
+
+	/* Qword 3 */
+	__le16 flow_id;
+	__le16 src_vsi;
+	union {
+		struct {
+			__le16 rsvd;
+			__le16 flow_id_ipv6;
+		} flex;
+		__le32 ts_high;
+	} flex_ts;
+};
+
+/* Rx Flex Descriptor Advanced (Split Queue Model)
+ * RxDID Profile Id 7
+ */
+struct virtchnl2_rx_flex_desc_adv {
+	/* Qword 0 */
+	u8 rxdid_ucast; /* profile_id=[3:0] */
+			/* rsvd=[5:4] */
+			/* ucast=[7:6] */
+	u8 status_err0_qw0;
+	__le16 ptype_err_fflags0;	/* ptype=[9:0] */
+					/* ip_hdr_err=[10:10] */
+					/* udp_len_err=[11:11] */
+					/* ff0=[15:12] */
+	__le16 pktlen_gen_bufq_id;	/* plen=[13:0] */
+					/* gen=[14:14]  only in splitq */
+					/* bufq_id=[15:15] only in splitq */
+	__le16 hdrlen_flags;		/* header=[9:0] */
+					/* rsc=[10:10] only in splitq */
+					/* sph=[11:11] only in splitq */
+					/* ext_udp_0=[12:12] */
+					/* int_udp_0=[13:13] */
+					/* trunc_mirr=[14:14] */
+					/* miss_prepend=[15:15] */
+	/* Qword 1 */
+	u8 status_err0_qw1;
+	u8 status_err1;
+	u8 fflags1;
+	u8 ts_low;
+	__le16 fmd0;
+	__le16 fmd1;
+	/* Qword 2 */
+	__le16 fmd2;
+	u8 fflags2;
+	u8 hash3;
+	__le16 fmd3;
+	__le16 fmd4;
+	/* Qword 3 */
+	__le16 fmd5;
+	__le16 fmd6;
+	__le16 fmd7_0;
+	__le16 fmd7_1;
+}; /* writeback */
+
+/* Rx Flex Descriptor Advanced (Split Queue Model) NIC Profile
+ * RxDID Profile Id 8
+ * Flex-field 0: BufferID
+ * Flex-field 1: Raw checksum/L2TAG1/RSC Seg Len (determined by HW)
+ * Flex-field 2: Hash[15:0]
+ * Flex-flags 2: Hash[23:16]
+ * Flex-field 3: L2TAG2
+ * Flex-field 5: L2TAG1
+ * Flex-field 7: Timestamp (upper 32 bits)
+ */
+struct virtchnl2_rx_flex_desc_adv_nic_3 {
+	/* Qword 0 */
+	u8 rxdid_ucast; /* profile_id=[3:0] */
+			/* rsvd=[5:4] */
+			/* ucast=[7:6] */
+	u8 status_err0_qw0;
+	__le16 ptype_err_fflags0;	/* ptype=[9:0] */
+					/* ip_hdr_err=[10:10] */
+					/* udp_len_err=[11:11] */
+					/* ff0=[15:12] */
+	__le16 pktlen_gen_bufq_id;	/* plen=[13:0] */
+					/* gen=[14:14]  only in splitq */
+					/* bufq_id=[15:15] only in splitq */
+	__le16 hdrlen_flags;		/* header=[9:0] */
+					/* rsc=[10:10] only in splitq */
+					/* sph=[11:11] only in splitq */
+					/* ext_udp_0=[12:12] */
+					/* int_udp_0=[13:13] */
+					/* trunc_mirr=[14:14] */
+					/* miss_prepend=[15:15] */
+	/* Qword 1 */
+	u8 status_err0_qw1;
+	u8 status_err1;
+	u8 fflags1;
+	u8 ts_low;
+	__le16 buf_id; /* only in splitq */
+	union {
+		__le16 raw_cs;
+		__le16 l2tag1;
+		__le16 rscseglen;
+	} misc;
+	/* Qword 2 */
+	__le16 hash1;
+	union {
+		u8 fflags2;
+		u8 mirrorid;
+		u8 hash2;
+	} ff2_mirrid_hash2;
+	u8 hash3;
+	__le16 l2tag2;
+	__le16 fmd4;
+	/* Qword 3 */
+	__le16 l2tag1;
+	__le16 fmd6;
+	__le32 ts_high;
+}; /* writeback */
+
+union virtchnl2_rx_desc {
+	struct virtchnl2_singleq_rx_buf_desc		read;
+	struct virtchnl2_singleq_base_rx_desc		base_wb;
+	struct virtchnl2_rx_flex_desc			flex_wb;
+	struct virtchnl2_rx_flex_desc_nic		flex_nic_wb;
+	struct virtchnl2_rx_flex_desc_sw		flex_sw_wb;
+	struct virtchnl2_rx_flex_desc_nic_2		flex_nic_2_wb;
+	struct virtchnl2_rx_flex_desc_adv		flex_adv_wb;
+	struct virtchnl2_rx_flex_desc_adv_nic_3		flex_adv_nic_3_wb;
+};
+
+#endif /* _VIRTCHNL_LAN_DESC_H_ */
-- 
2.33.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
