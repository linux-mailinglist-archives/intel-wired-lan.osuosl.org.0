Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BA641C5C8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Sep 2021 15:37:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D60660BE9;
	Wed, 29 Sep 2021 13:37:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DfRDnyOZQr-P; Wed, 29 Sep 2021 13:37:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDDF260BF5;
	Wed, 29 Sep 2021 13:37:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 638451BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 13:37:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4C22660BE6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 13:37:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fNP2VU377296 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Sep 2021 13:37:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EDB0660BF5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 13:37:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="204429322"
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="204429322"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 06:36:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="457033568"
Received: from amlin-019-051.igk.intel.com ([10.102.19.51])
 by orsmga002.jf.intel.com with ESMTP; 29 Sep 2021 06:36:52 -0700
From: Karen Sornek <karen.sornek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 Sep 2021 15:37:15 +0200
Message-Id: <20210929133715.149736-1-karen.sornek@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1] iavf: Add support for
 VIRTCHNL_VF_OFFLOAD_VLAN_V2
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
Cc: Karen Sornek <karen.sornek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Changes required for iavf patch "Add support for VIRTCHNL_VF_OFFLOAD_VLAN_V2"
to work properly.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Karen Sornek <karen.sornek@intel.com>
---
 include/linux/avf/virtchnl.h | 330 +++++++++++++++++++++++++++++++++++
 1 file changed, 330 insertions(+)

diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index b30a1bc74f..e895cb6363 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -141,6 +141,15 @@ enum virtchnl_ops {
 	VIRTCHNL_OP_DEL_RSS_CFG = 46,
 	VIRTCHNL_OP_ADD_FDIR_FILTER = 47,
 	VIRTCHNL_OP_DEL_FDIR_FILTER = 48,
+	VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS = 51,
+	VIRTCHNL_OP_ADD_VLAN_V2 = 52,
+	VIRTCHNL_OP_DEL_VLAN_V2 = 53,
+	VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2 = 54,
+	VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2 = 55,
+	VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2 = 56,
+	VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2 = 57,
+	VIRTCHNL_OP_ENABLE_VLAN_FILTERING_V2 = 58,
+	VIRTCHNL_OP_DISABLE_VLAN_FILTERING_V2 = 59,
 	VIRTCHNL_OP_MAX,
 };
 
@@ -246,6 +255,7 @@ VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_vsi_resource);
 #define VIRTCHNL_VF_OFFLOAD_REQ_QUEUES		BIT(6)
 /* used to negotiate communicating link speeds in Mbps */
 #define VIRTCHNL_VF_CAP_ADV_LINK_SPEED		BIT(7)
+#define VIRTCHNL_VF_OFFLOAD_VLAN_V2		BIT(15)
 #define VIRTCHNL_VF_OFFLOAD_VLAN		BIT(16)
 #define VIRTCHNL_VF_OFFLOAD_RX_POLLING		BIT(17)
 #define VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2	BIT(18)
@@ -475,6 +485,326 @@ struct virtchnl_vlan_filter_list {
 
 VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_vlan_filter_list);
 
+/* VIRTCHNL_OP_ADD_VLAN_V2
+ * VIRTCHNL_OP_DEL_VLAN_V2
+ *
+ * VF sends these messages to add/del one or more VLAN tag filters for Rx
+ * traffic.
+ *
+ * The PF attempts to add the filters and returns status.
+ *
+ * The VF should only ever attempt to add/del virtchnl_vlan_filter(s) using the
+ * supported fields negotiated via VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS.
+ */
+struct virtchnl_vlan_filter_list_v2 {
+	u16 vport_id;
+	u16 num_elements;
+	u8 pad[4];
+	struct virtchnl_vlan_filter *filters;
+};
+
+/* VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2
+ * VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2
+ * VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2
+ * VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2
+ *
+ * VF sends this message to enable or disable VLAN stripping or insertion. It
+ * also needs to specify an ethertype. The VF knows which VLAN ethertypes are
+ * allowed and whether or not it's allowed to enable/disable the specific
+ * offload via the VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS message. The VF needs to
+ * parse the virtchnl_vlan_caps.offloads fields to determine which offload
+ * messages are allowed.
+ *
+ * For example, if the PF populates the virtchnl_vlan_caps.offloads in the
+ * following manner the VF will be allowed to enable and/or disable 0x8100 inner
+ * VLAN insertion and/or stripping via the opcodes listed above. Inner in this
+ * case means the outer most or single VLAN from the VF's perspective. This is
+ * because no outer offloads are supported. See the comments above the
+ * virtchnl_vlan_supported_caps structure for more details.
+ *
+ * virtchnl_vlan_caps.offloads.stripping_support.inner =
+ *                      VIRTCHNL_VLAN_TOGGLE |
+ *                      VIRTCHNL_VLAN_ETHERTYPE_8100;
+ *
+ * virtchnl_vlan_caps.offloads.insertion_support.inner =
+ *                      VIRTCHNL_VLAN_TOGGLE |
+ *                      VIRTCHNL_VLAN_ETHERTYPE_8100;
+ * In order to enable inner (again note that in this case inner is the outer
+ * most or single VLAN from the VF's perspective) VLAN stripping for 0x8100
+ * VLANs, the VF would populate the virtchnl_vlan_setting structure in the
+ * following manner and send the VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2 message.
+ * virtchnl_vlan_setting.inner_ethertype_setting =
+ *                      VIRTCHNL_VLAN_ETHERTYPE_8100;
+ *
+ * virtchnl_vlan_setting.vport_id = vport_id or vsi_id assigned to the VF on
+ * initialization.
+ *
+ * The reason that VLAN TPID(s) are not being used for the
+ * outer_ethertype_setting and inner_ethertype_setting fields is because it's
+ * possible a device could support VLAN insertion and/or stripping offload on
+ * multiple ethertypes concurrently, so this method allows a VF to request
+ * multiple ethertypes in one message using the virtchnl_vlan_support
+ * enumeration.
+ *
+ * For example, if the PF populates the virtchnl_vlan_caps.offloads in the
+ * following manner the VF will be allowed to enable 0x8100 and 0x88a8 outer
+ * VLAN insertion and stripping simultaneously. The
+ * virtchnl_vlan_caps.offloads.ethertype_match field will also have to be
+ * populated based on what the PF can support.
+ *
+ * virtchnl_vlan_caps.offloads.stripping_support.outer =
+ *                      VIRTCHNL_VLAN_TOGGLE |
+ *                      VIRTCHNL_VLAN_ETHERTYPE_8100 |
+ *                      VIRTCHNL_VLAN_ETHERTYPE_88A8 |
+ *                      VIRTCHNL_VLAN_ETHERTYPE_AND;
+ * virtchnl_vlan_caps.offloads.insertion_support.outer =
+ *                      VIRTCHNL_VLAN_TOGGLE |
+ *                      VIRTCHNL_VLAN_ETHERTYPE_8100 |
+ *                      VIRTCHNL_VLAN_ETHERTYPE_88A8 |
+ *                      VIRTCHNL_VLAN_ETHERTYPE_AND;
+ * In order to enable outer VLAN stripping for 0x8100 and 0x88a8 VLANs, the VF
+ * would populate the virthcnl_vlan_offload_structure in the following manner
+ * and send the VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2 message.
+ *
+ * virtchnl_vlan_setting.outer_ethertype_setting =
+ *                      VIRTHCNL_VLAN_ETHERTYPE_8100 |
+ *                      VIRTHCNL_VLAN_ETHERTYPE_88A8;
+ *
+ * virtchnl_vlan_setting.vport_id = vport_id or vsi_id assigned to the VF on
+ * initialization.
+ *
+ * There is also the case where a PF and the underlying hardware can support
+ * VLAN offloads on multiple ethertypes, but not concurrently. For example, if
+ * the PF populates the virtchnl_vlan_caps.offloads in the following manner the
+ * VF will be allowed to enable and/or disable 0x8100 XOR 0x88a8 outer VLAN
+ * offloads. The ethertypes must match for stripping and insertion.
+ *
+ * virtchnl_vlan_caps.offloads.stripping_support.outer =
+ *                      VIRTCHNL_VLAN_TOGGLE |
+ *                      VIRTCHNL_VLAN_ETHERTYPE_8100 |
+ *                      VIRTCHNL_VLAN_ETHERTYPE_88A8 |
+ *                      VIRTCHNL_VLAN_ETHERTYPE_XOR;
+ * virtchnl_vlan_caps.offloads.insertion_support.outer =
+ *                      VIRTCHNL_VLAN_TOGGLE |
+ *                      VIRTCHNL_VLAN_ETHERTYPE_8100 |
+ *                      VIRTCHNL_VLAN_ETHERTYPE_88A8 |
+ *                      VIRTCHNL_VLAN_ETHERTYPE_XOR;
+ * virtchnl_vlan_caps.offloads.ethertype_match =
+ *                      VIRTCHNL_ETHERTYPE_STRIPPING_MATCHES_INSERTION;
+ *
+ * In order to enable outer VLAN stripping for 0x88a8 VLANs, the VF would
+ * populate the virtchnl_vlan_setting structure in the following manner and send
+ * the VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2. Also, this will change the
+ * ethertype for VLAN insertion if it's enabled. So, for completeness, a
+ * VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2 with the same ethertype should be sent.
+ *
+ * virtchnl_vlan_setting.outer_ethertype_setting = VIRTHCNL_VLAN_ETHERTYPE_88A8;
+ *
+ * virtchnl_vlan_setting.vport_id = vport_id or vsi_id assigned to the VF on
+ * initialization.
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
+ * For example, if the PF populates the virtchnl_vlan_caps.filtering in the
+ * following manner the VF will be allowed to enable/disable 0x8100 and 0x88a8
+ * outer VLAN filtering together. Note, that the VIRTCHNL_VLAN_ETHERTYPE_AND
+ * means that all filtering ethertypes will to be enabled and disabled together
+ * regardless of the request from the VF. This means that the underlying
+ * hardware only supports VLAN filtering for all VLAN the specified ethertypes
+ * or none of them.
+ *
+ * virtchnl_vlan_caps.filtering.filtering_support.outer =
+ *                      VIRTCHNL_VLAN_TOGGLE |
+ *                      VIRTCHNL_VLAN_ETHERTYPE_8100 |
+ *                      VIRTHCNL_VLAN_ETHERTYPE_88A8 |
+ *                      VIRTCHNL_VLAN_ETHERTYPE_9100 |
+ *                      VIRTCHNL_VLAN_ETHERTYPE_AND;
+ *
+ * In order to enable outer VLAN filtering for 0x88a8 and 0x8100 VLANs (0x9100
+ * VLANs aren't supported by the VF driver), the VF would populate the
+ * virtchnl_vlan_setting structure in the following manner and send the
+ * VIRTCHNL_OP_ENABLE_VLAN_FILTERING_V2. The same message format would be used
+ * to disable outer VLAN filtering for 0x88a8 and 0x8100 VLANs, but the
+ * VIRTCHNL_OP_DISABLE_VLAN_FILTERING_V2 opcode is used.
+ *
+ * virtchnl_vlan_setting.outer_ethertype_setting =
+ *                      VIRTCHNL_VLAN_ETHERTYPE_8100 |
+ *                      VIRTCHNL_VLAN_ETHERTYPE_88A8;
+ *
+ */
+struct virtchnl_vlan_setting {
+	u32 outer_ethertype_setting;
+	u32 inner_ethertype_setting;
+	u16 vport_id;
+	u8 pad[6];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_vlan_setting);
+
+/* This enum is used for all of the VIRTCHNL_VF_OFFLOAD_VLAN_V2_CAPS related
+ * structures and opcodes.
+ *
+ * VIRTCHNL_VLAN_UNSUPPORTED - This field is not supported and if a VF driver
+ * populates it the PF should return VIRTCHNL_STATUS_ERR_NOT_SUPPORTED.
+ *
+ * VIRTCHNL_VLAN_ETHERTYPE_8100 - This field supports 0x8100 ethertype.
+ * VIRTCHNL_VLAN_ETHERTYPE_88A8 - This field supports 0x88A8 ethertype.
+ *
+ * VIRTCHNL_VLAN_TAG_LOCATION_L2TAG1 - Used to tell the VF to insert and/or
+ * strip the VLAN tag using the L2TAG1 field of the Tx/Rx descriptors.
+ *
+ * VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2 - Used to tell the VF to insert hardware
+ * offloaded VLAN tags using the L2TAG2 field of the Tx descriptor.
+ *
+ * VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2 - Used to tell the VF to strip hardware
+ * offloaded VLAN tags using the L2TAG2_2 field of the Rx descriptor.
+ *
+ * VIRTCHNL_VLAN_TOGGLE - This field is used to say whether a
+ * certain VLAN capability can be toggled. For example if the underlying PF/CP
+ * allows the VF to toggle VLAN filtering, stripping, and/or insertion it should
+ * set this bit along with the supported ethertypes.
+ */
+enum virtchnl_vlan_support {
+	VIRTCHNL_VLAN_UNSUPPORTED =             0,
+	VIRTCHNL_VLAN_ETHERTYPE_8100 =          0x00000001,
+	VIRTCHNL_VLAN_ETHERTYPE_88A8 =          0x00000002,
+	VIRTCHNL_VLAN_TAG_LOCATION_L2TAG1 =     0x00000100,
+	VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2 =     0x00000200,
+	VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2_2 =   0x00000400,
+	VIRTCHNL_VLAN_TOGGLE =                  0x80000000
+};
+
+/* This structure is used as part of the VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS
+ * for filtering, insertion, and stripping capabilities.
+ *
+ * If only outer capabilities are supported (for filtering, insertion, and/or
+ * stripping) then this refers to the outer most or single VLAN from the VF's
+ * perspective.
+ *
+ * If only inner capabilities are supported (for filtering, insertion, and/or
+ * stripping) then this refers to the outer most or single VLAN from the VF's
+ * perspective. Functionally this is the same as if only outer capabilities are
+ * supported. The VF driver is just forced to use the inner fields when
+ * adding/deleting filters and enabling/disabling offloads (if supported).
+ *
+ * If both outer and inner capabilities are supported (for filtering, insertion,
+ * and/or stripping) then outer refers to the outer most or single VLAN and
+ * inner refers to the second VLAN, if it exists, in the packet.
+ *
+ * There is no support for tunneled VLAN offloads, so outer or inner are never
+ * referring to a tunneled packet from the VF's perspective.
+ */
+struct virtchnl_vlan_supported_caps {
+	u32 outer;
+	u32 inner;
+};
+
+/* The PF populates these fields based on the supported VLAN filtering. If a
+ * field is VIRTCHNL_VLAN_UNSUPPORTED then it's not supported and the PF will
+ * reject any VIRTCHNL_OP_ADD_VLAN_V2 or VIRTCHNL_OP_DEL_VLAN_V2 messages using
+ * the unsupported fields.
+ *
+ * Also, a VF is only allowed to toggle its VLAN filtering setting if the
+ * VIRTCHNL_VLAN_TOGGLE bit is set.
+ *
+ * The ethertype(s) specified in the ethertype_init field are the ethertypes
+ * enabled for VLAN filtering. VLAN filtering in this case refers to the outer
+ * most VLAN from the VF's perspective. If both inner and outer filtering are
+ * allowed then ethertype_init only refers to the outer most VLAN as only
+ * VLAN ethertype supported for inner VLAN filtering is
+ * VIRTCHNL_VLAN_ETHERTYPE_8100. By default, inner VLAN filtering is disabled
+ * when both inner and outer filtering are allowed.
+ *
+ * The max_filters field tells the VF how many VLAN filters it's allowed to have
+ * at any one time. If it exceeds this amount and tries to add another filter,
+ * then the request will be rejected by the PF. To prevent failures, the VF
+ * should keep track of how many VLAN filters it has added and not attempt to
+ * add more than max_filters.
+ */
+struct virtchnl_vlan_filtering_caps {
+	struct virtchnl_vlan_supported_caps filtering_support;
+	u32 ethertype_init;
+	u16 max_filters;
+	u8 pad[2];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_vlan_filtering_caps);
+
+/* The PF populates these fields based on the supported VLAN offloads. If a
+ * field is VIRTCHNL_VLAN_UNSUPPORTED then it's not supported and the PF will
+ * reject any VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2 or
+ * VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2 messages using the unsupported fields.
+ *
+ * Also, a VF is only allowed to toggle its VLAN offload setting if the
+ * VIRTCHNL_VLAN_TOGGLE_ALLOWED bit is set.
+ *
+ * The VF driver needs to be aware of how the tags are stripped by hardware and
+ * inserted by the VF driver based on the level of offload support. The PF will
+ * populate these fields based on where the VLAN tags are expected to be
+ * offloaded via the VIRTHCNL_VLAN_TAG_LOCATION_* bits. The VF will need to
+ * interpret these fields. See the definition of the
+ * VIRTCHNL_VLAN_TAG_LOCATION_* bits above the virtchnl_vlan_support
+ * enumeration.
+ */
+struct virtchnl_vlan_offload_caps {
+	struct virtchnl_vlan_supported_caps stripping_support;
+	struct virtchnl_vlan_supported_caps insertion_support;
+	u32 ethertype_init;
+	u8 ethertype_match;
+	u8 pad[3];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(24, virtchnl_vlan_offload_caps);
+
+/* VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS
+ * VF sends this message to determine its VLAN capabilities.
+ *
+ * PF will mark which capabilities it supports based on hardware support and
+ * current configuration. For example, if a port VLAN is configured the PF will
+ * not allow outer VLAN filtering, stripping, or insertion to be configured so
+ * it will block these features from the VF.
+ *
+ * The VF will need to cross reference its capabilities with the PFs
+ * capabilities in the response message from the PF to determine the VLAN
+ * support.
+ */
+struct virtchnl_vlan_caps {
+	struct virtchnl_vlan_filtering_caps filtering;
+	struct virtchnl_vlan_offload_caps offloads;
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(40, virtchnl_vlan_caps);
+
+struct virtchnl_vlan {
+	u16 tci;        /* tci[15:13] = PCP and tci[11:0] = VID */
+	u16 tci_mask;   /* only valid if VIRTCHNL_VLAN_FILTER_MASK set in
+	                 * filtering caps
+	                 */
+	u16 tpid;       /* 0x8100, 0x88a8, etc. and only type(s) set in
+	                 * filtering caps. Note that tpid here does not refer to
+	                 * VIRTCHNL_VLAN_ETHERTYPE_*, but it refers to the
+	                 * actual 2-byte VLAN TPID
+	                 */
+	u8 pad[2];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_vlan);
+
+struct virtchnl_vlan_filter {
+	struct virtchnl_vlan inner;
+	struct virtchnl_vlan outer;
+	u8 pad[16];
+};
+
+VIRTCHNL_CHECK_STRUCT_LEN(32, virtchnl_vlan_filter);
+
 /* VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE
  * VF sends VSI id and flags.
  * PF returns status code in retval.
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
