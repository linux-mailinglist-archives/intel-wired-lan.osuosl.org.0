Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0232131CAD
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Jan 2020 01:13:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 66A6C88302;
	Tue,  7 Jan 2020 00:13:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eibQORk8E9dq; Tue,  7 Jan 2020 00:13:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 70209882FB;
	Tue,  7 Jan 2020 00:12:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 53EBB1BF97F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2020 00:09:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3D334873C9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2020 00:09:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sl3QiD-JvoJB for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jan 2020 00:09:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F008D86E0A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2020 00:09:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jan 2020 16:09:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,404,1571727600"; d="scan'208";a="215359055"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.74])
 by orsmga008.jf.intel.com with ESMTP; 06 Jan 2020 16:09:35 -0800
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  6 Jan 2020 16:09:33 -0800
Message-Id: <20200107000933.906614-1-jeffrey.t.kirsher@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 07 Jan 2020 00:12:55 +0000
Subject: [Intel-wired-lan] [net-next v3] i40e: remove unused defines
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

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

Remove all the unused defines as they are just dead weight.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
v2: fix patch to apply to current dev-queue branch (where i40e_client.h
    has moved to include/linux/net/intel/)
v3: add back 2 defines that were still in use

 drivers/net/ethernet/intel/i40e/i40e.h        |   20 -
 .../net/ethernet/intel/i40e/i40e_adminq_cmd.h |  482 +-
 drivers/net/ethernet/intel/i40e/i40e_common.c |    4 -
 drivers/net/ethernet/intel/i40e/i40e_dcb.h    |    5 -
 .../net/ethernet/intel/i40e/i40e_debugfs.c    |    1 -
 drivers/net/ethernet/intel/i40e/i40e_devids.h |    3 -
 drivers/net/ethernet/intel/i40e/i40e_hmc.h    |    1 -
 drivers/net/ethernet/intel/i40e/i40e_main.c   |    3 -
 drivers/net/ethernet/intel/i40e/i40e_osdep.h  |    1 -
 .../net/ethernet/intel/i40e/i40e_register.h   | 4664 -----------------
 drivers/net/ethernet/intel/i40e/i40e_txrx.h   |   25 -
 drivers/net/ethernet/intel/i40e/i40e_type.h   |   81 -
 .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |    1 -
 include/linux/net/intel/i40e_client.h         |    5 -
 14 files changed, 1 insertion(+), 5295 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 9aa85546a7aa..46f439e46908 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -60,17 +60,14 @@
 		(((pf)->hw_features & I40E_HW_RSS_AQ_CAPABLE) ? 4 : 1)
 #define I40E_DEFAULT_QUEUES_PER_VF	4
 #define I40E_MAX_VF_QUEUES		16
-#define I40E_DEFAULT_QUEUES_PER_TC	1 /* should be a power of 2 */
 #define i40e_pf_get_max_q_per_tc(pf) \
 		(((pf)->hw_features & I40E_HW_128_QP_RSS_CAPABLE) ? 128 : 64)
-#define I40E_FDIR_RING			0
 #define I40E_FDIR_RING_COUNT		32
 #define I40E_MAX_AQ_BUF_SIZE		4096
 #define I40E_AQ_LEN			256
 #define I40E_AQ_WORK_LIMIT		66 /* max number of VFs + a little */
 #define I40E_MAX_USER_PRIORITY		8
 #define I40E_DEFAULT_TRAFFIC_CLASS	BIT(0)
-#define I40E_DEFAULT_MSG_ENABLE		4
 #define I40E_QUEUE_WAIT_RETRY_LIMIT	10
 #define I40E_INT_NAME_STR_LEN		(IFNAMSIZ + 16)
 
@@ -93,8 +90,6 @@
 #define I40E_OEM_RELEASE_MASK		0x0000ffff
 
 /* The values in here are decimal coded as hex as is the case in the NVM map*/
-#define I40E_CURRENT_NVM_VERSION_HI	0x2
-#define I40E_CURRENT_NVM_VERSION_LO	0x40
 
 #define I40E_RX_DESC(R, i)	\
 	(&(((union i40e_32byte_rx_desc *)((R)->desc))[i]))
@@ -106,7 +101,6 @@
 	(&(((struct i40e_filter_program_desc *)((R)->desc))[i]))
 
 /* default to trying for four seconds */
-#define I40E_TRY_LINK_TIMEOUT	(4 * HZ)
 
 /* BW rate limiting */
 #define I40E_BW_CREDIT_DIVISOR		50 /* 50Mbps per BW credit */
@@ -295,9 +289,6 @@ struct i40e_cloud_filter {
 	u8 tunnel_type;
 };
 
-#define I40E_DCB_PRIO_TYPE_STRICT	0
-#define I40E_DCB_PRIO_TYPE_ETS		1
-#define I40E_DCB_STRICT_PRIO_CREDITS	127
 /* DCB per TC information data structure */
 struct i40e_tc_info {
 	u16	qoffset;	/* Queue offset from base queue */
@@ -357,15 +348,6 @@ struct i40e_ddp_old_profile_list {
 					     I40E_FLEX_SET_FSIZE(fsize) | \
 					     I40E_FLEX_SET_SRC_WORD(src))
 
-#define I40E_FLEX_PIT_GET_SRC(flex) (((flex) & \
-				     I40E_PRTQF_FLX_PIT_SOURCE_OFF_MASK) >> \
-				     I40E_PRTQF_FLX_PIT_SOURCE_OFF_SHIFT)
-#define I40E_FLEX_PIT_GET_DST(flex) (((flex) & \
-				     I40E_PRTQF_FLX_PIT_DEST_OFF_MASK) >> \
-				     I40E_PRTQF_FLX_PIT_DEST_OFF_SHIFT)
-#define I40E_FLEX_PIT_GET_FSIZE(flex) (((flex) & \
-				       I40E_PRTQF_FLX_PIT_FSIZE_MASK) >> \
-				       I40E_PRTQF_FLX_PIT_FSIZE_SHIFT)
 
 #define I40E_MAX_FLEX_SRC_OFFSET 0x1F
 
@@ -390,7 +372,6 @@ struct i40e_ddp_old_profile_list {
 #define I40E_L4_GLQF_ORT_IDX		35
 
 /* Flex PIT register index */
-#define I40E_FLEX_PIT_IDX_START_L2	0
 #define I40E_FLEX_PIT_IDX_START_L3	3
 #define I40E_FLEX_PIT_IDX_START_L4	6
 
@@ -531,7 +512,6 @@ struct i40e_pf {
 #define I40E_HW_GENEVE_OFFLOAD_CAPABLE		BIT(9)
 #define I40E_HW_PTP_L4_CAPABLE			BIT(10)
 #define I40E_HW_WOL_MC_MAGIC_PKT_WAKE		BIT(11)
-#define I40E_HW_MPLS_HDR_OFFLOAD_CAPABLE	BIT(12)
 #define I40E_HW_HAVE_CRT_RETIMER		BIT(13)
 #define I40E_HW_OUTER_UDP_CSUM_CAPABLE		BIT(14)
 #define I40E_HW_PHY_CONTROLS_LEDS		BIT(15)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
index aa5f1c0aa721..12bc19a7716e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
@@ -55,29 +55,17 @@ struct i40e_aq_desc {
  */
 
 /* command flags and offsets*/
-#define I40E_AQ_FLAG_DD_SHIFT	0
-#define I40E_AQ_FLAG_CMP_SHIFT	1
 #define I40E_AQ_FLAG_ERR_SHIFT	2
-#define I40E_AQ_FLAG_VFE_SHIFT	3
 #define I40E_AQ_FLAG_LB_SHIFT	9
 #define I40E_AQ_FLAG_RD_SHIFT	10
-#define I40E_AQ_FLAG_VFC_SHIFT	11
 #define I40E_AQ_FLAG_BUF_SHIFT	12
 #define I40E_AQ_FLAG_SI_SHIFT	13
-#define I40E_AQ_FLAG_EI_SHIFT	14
-#define I40E_AQ_FLAG_FE_SHIFT	15
 
-#define I40E_AQ_FLAG_DD		BIT(I40E_AQ_FLAG_DD_SHIFT)  /* 0x1    */
-#define I40E_AQ_FLAG_CMP	BIT(I40E_AQ_FLAG_CMP_SHIFT) /* 0x2    */
 #define I40E_AQ_FLAG_ERR	BIT(I40E_AQ_FLAG_ERR_SHIFT) /* 0x4    */
-#define I40E_AQ_FLAG_VFE	BIT(I40E_AQ_FLAG_VFE_SHIFT) /* 0x8    */
 #define I40E_AQ_FLAG_LB		BIT(I40E_AQ_FLAG_LB_SHIFT)  /* 0x200  */
 #define I40E_AQ_FLAG_RD		BIT(I40E_AQ_FLAG_RD_SHIFT)  /* 0x400  */
-#define I40E_AQ_FLAG_VFC	BIT(I40E_AQ_FLAG_VFC_SHIFT) /* 0x800  */
 #define I40E_AQ_FLAG_BUF	BIT(I40E_AQ_FLAG_BUF_SHIFT) /* 0x1000 */
 #define I40E_AQ_FLAG_SI		BIT(I40E_AQ_FLAG_SI_SHIFT)  /* 0x2000 */
-#define I40E_AQ_FLAG_EI		BIT(I40E_AQ_FLAG_EI_SHIFT)  /* 0x4000 */
-#define I40E_AQ_FLAG_FE		BIT(I40E_AQ_FLAG_FE_SHIFT)  /* 0x8000 */
 
 /* error codes */
 enum i40e_admin_queue_err {
@@ -362,12 +350,6 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_set_pf_context);
 /* Request resource ownership (direct 0x0008)
  * Release resource ownership (direct 0x0009)
  */
-#define I40E_AQ_RESOURCE_NVM			1
-#define I40E_AQ_RESOURCE_SDP			2
-#define I40E_AQ_RESOURCE_ACCESS_READ		1
-#define I40E_AQ_RESOURCE_ACCESS_WRITE		2
-#define I40E_AQ_RESOURCE_NVM_READ_TIMEOUT	3000
-#define I40E_AQ_RESOURCE_NVM_WRITE_TIMEOUT	180000
 
 struct i40e_aqc_request_resource {
 	__le16	resource_id;
@@ -384,7 +366,6 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_request_resource);
  */
 struct i40e_aqc_list_capabilites {
 	u8 command_flags;
-#define I40E_AQ_LIST_CAP_PF_INDEX_EN	1
 	u8 pf_index;
 	u8 reserved[2];
 	__le32 count;
@@ -411,8 +392,6 @@ struct i40e_aqc_list_capabilities_element_resp {
 #define I40E_AQ_CAP_ID_NPAR_ACTIVE	0x0003
 #define I40E_AQ_CAP_ID_OS2BMC_CAP	0x0004
 #define I40E_AQ_CAP_ID_FUNCTIONS_VALID	0x0005
-#define I40E_AQ_CAP_ID_ALTERNATE_RAM	0x0006
-#define I40E_AQ_CAP_ID_WOL_AND_PROXY	0x0008
 #define I40E_AQ_CAP_ID_SRIOV		0x0012
 #define I40E_AQ_CAP_ID_VF		0x0013
 #define I40E_AQ_CAP_ID_VMDQ		0x0014
@@ -441,11 +420,6 @@ struct i40e_aqc_list_capabilities_element_resp {
 /* Set CPPM Configuration (direct 0x0103) */
 struct i40e_aqc_cppm_configuration {
 	__le16	command_flags;
-#define I40E_AQ_CPPM_EN_LTRC	0x0800
-#define I40E_AQ_CPPM_EN_DMCTH	0x1000
-#define I40E_AQ_CPPM_EN_DMCTLX	0x2000
-#define I40E_AQ_CPPM_EN_HPTC	0x4000
-#define I40E_AQ_CPPM_EN_DMARC	0x8000
 	__le16	ttlx;
 	__le32	dmacr;
 	__le16	dmcth;
@@ -459,15 +433,8 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_cppm_configuration);
 /* Set ARP Proxy command / response (indirect 0x0104) */
 struct i40e_aqc_arp_proxy_data {
 	__le16	command_flags;
-#define I40E_AQ_ARP_INIT_IPV4	0x0800
-#define I40E_AQ_ARP_UNSUP_CTL	0x1000
-#define I40E_AQ_ARP_ENA		0x2000
-#define I40E_AQ_ARP_ADD_IPV4	0x4000
-#define I40E_AQ_ARP_DEL_IPV4	0x8000
 	__le16	table_id;
 	__le32	enabled_offloads;
-#define I40E_AQ_ARP_DIRECTED_OFFLOAD_ENABLE	0x00000020
-#define I40E_AQ_ARP_OFFLOAD_ENABLE		0x00000800
 	__le32	ip_addr;
 	u8	mac_addr[6];
 	u8	reserved[2];
@@ -482,19 +449,6 @@ struct i40e_aqc_ns_proxy_data {
 	__le16	table_idx_ipv6_0;
 	__le16	table_idx_ipv6_1;
 	__le16	control;
-#define I40E_AQ_NS_PROXY_ADD_0		0x0001
-#define I40E_AQ_NS_PROXY_DEL_0		0x0002
-#define I40E_AQ_NS_PROXY_ADD_1		0x0004
-#define I40E_AQ_NS_PROXY_DEL_1		0x0008
-#define I40E_AQ_NS_PROXY_ADD_IPV6_0	0x0010
-#define I40E_AQ_NS_PROXY_DEL_IPV6_0	0x0020
-#define I40E_AQ_NS_PROXY_ADD_IPV6_1	0x0040
-#define I40E_AQ_NS_PROXY_DEL_IPV6_1	0x0080
-#define I40E_AQ_NS_PROXY_COMMAND_SEQ	0x0100
-#define I40E_AQ_NS_PROXY_INIT_IPV6_TBL	0x0200
-#define I40E_AQ_NS_PROXY_INIT_MAC_TBL	0x0400
-#define I40E_AQ_NS_PROXY_OFFLOAD_ENABLE	0x0800
-#define I40E_AQ_NS_PROXY_DIRECTED_OFFLOAD_ENABLE	0x1000
 	u8	mac_addr_0[6];
 	u8	mac_addr_1[6];
 	u8	local_mac_addr[6];
@@ -507,7 +461,6 @@ I40E_CHECK_STRUCT_LEN(0x3c, i40e_aqc_ns_proxy_data);
 /* Manage LAA Command (0x0106) - obsolete */
 struct i40e_aqc_mng_laa {
 	__le16	command_flags;
-#define I40E_AQ_LAA_FLAG_WR	0x8000
 	u8	reserved[2];
 	__le32	sal;
 	__le16	sah;
@@ -520,11 +473,7 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_mng_laa);
 struct i40e_aqc_mac_address_read {
 	__le16	command_flags;
 #define I40E_AQC_LAN_ADDR_VALID		0x10
-#define I40E_AQC_SAN_ADDR_VALID		0x20
 #define I40E_AQC_PORT_ADDR_VALID	0x40
-#define I40E_AQC_WOL_ADDR_VALID		0x80
-#define I40E_AQC_MC_MAG_EN_VALID	0x100
-#define I40E_AQC_ADDR_VALID_MASK	0x3F0
 	u8	reserved[6];
 	__le32	addr_high;
 	__le32	addr_low;
@@ -548,9 +497,7 @@ struct i40e_aqc_mac_address_write {
 #define I40E_AQC_WOL_PRESERVE_ON_PFR	0x0200
 #define I40E_AQC_WRITE_TYPE_LAA_ONLY	0x0000
 #define I40E_AQC_WRITE_TYPE_LAA_WOL	0x4000
-#define I40E_AQC_WRITE_TYPE_PORT	0x8000
 #define I40E_AQC_WRITE_TYPE_UPDATE_MC_MAG	0xC000
-#define I40E_AQC_WRITE_TYPE_MASK	0xC000
 
 	__le16	mac_sah;
 	__le32	mac_sal;
@@ -573,22 +520,9 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_clear_pxe);
 
 struct i40e_aqc_set_wol_filter {
 	__le16 filter_index;
-#define I40E_AQC_MAX_NUM_WOL_FILTERS	8
-#define I40E_AQC_SET_WOL_FILTER_TYPE_MAGIC_SHIFT	15
-#define I40E_AQC_SET_WOL_FILTER_TYPE_MAGIC_MASK	(0x1 << \
-		I40E_AQC_SET_WOL_FILTER_TYPE_MAGIC_SHIFT)
-
-#define I40E_AQC_SET_WOL_FILTER_INDEX_SHIFT		0
-#define I40E_AQC_SET_WOL_FILTER_INDEX_MASK	(0x7 << \
-		I40E_AQC_SET_WOL_FILTER_INDEX_SHIFT)
+
 	__le16 cmd_flags;
-#define I40E_AQC_SET_WOL_FILTER				0x8000
-#define I40E_AQC_SET_WOL_FILTER_NO_TCO_WOL		0x4000
-#define I40E_AQC_SET_WOL_FILTER_ACTION_CLEAR		0
-#define I40E_AQC_SET_WOL_FILTER_ACTION_SET		1
 	__le16 valid_flags;
-#define I40E_AQC_SET_WOL_FILTER_ACTION_VALID		0x8000
-#define I40E_AQC_SET_WOL_FILTER_NO_TCO_ACTION_VALID	0x4000
 	u8 reserved[2];
 	__le32	address_high;
 	__le32	address_low;
@@ -608,12 +542,6 @@ I40E_CHECK_STRUCT_LEN(0x90, i40e_aqc_set_wol_filter_data);
 struct i40e_aqc_get_wake_reason_completion {
 	u8 reserved_1[2];
 	__le16 wake_reason;
-#define I40E_AQC_GET_WAKE_UP_REASON_WOL_REASON_MATCHED_INDEX_SHIFT	0
-#define I40E_AQC_GET_WAKE_UP_REASON_WOL_REASON_MATCHED_INDEX_MASK (0xFF << \
-		I40E_AQC_GET_WAKE_UP_REASON_WOL_REASON_MATCHED_INDEX_SHIFT)
-#define I40E_AQC_GET_WAKE_UP_REASON_WOL_REASON_RESERVED_SHIFT	8
-#define I40E_AQC_GET_WAKE_UP_REASON_WOL_REASON_RESERVED_MASK	(0xFF << \
-		I40E_AQC_GET_WAKE_UP_REASON_WOL_REASON_RESERVED_SHIFT)
 	u8 reserved_2[12];
 };
 
@@ -646,25 +574,12 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_get_switch_config_header_resp);
 
 struct i40e_aqc_switch_config_element_resp {
 	u8	element_type;
-#define I40E_AQ_SW_ELEM_TYPE_MAC	1
-#define I40E_AQ_SW_ELEM_TYPE_PF		2
-#define I40E_AQ_SW_ELEM_TYPE_VF		3
-#define I40E_AQ_SW_ELEM_TYPE_EMP	4
-#define I40E_AQ_SW_ELEM_TYPE_BMC	5
-#define I40E_AQ_SW_ELEM_TYPE_PV		16
-#define I40E_AQ_SW_ELEM_TYPE_VEB	17
-#define I40E_AQ_SW_ELEM_TYPE_PA		18
-#define I40E_AQ_SW_ELEM_TYPE_VSI	19
 	u8	revision;
-#define I40E_AQ_SW_ELEM_REV_1		1
 	__le16	seid;
 	__le16	uplink_seid;
 	__le16	downlink_seid;
 	u8	reserved[3];
 	u8	connection_type;
-#define I40E_AQ_CONN_TYPE_REGULAR	0x1
-#define I40E_AQ_CONN_TYPE_DEFAULT	0x2
-#define I40E_AQ_CONN_TYPE_CASCADED	0x3
 	__le16	scheduler_id;
 	__le16	element_info;
 };
@@ -697,12 +612,7 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_add_remove_statistics);
 /* Set Port Parameters command (direct 0x0203) */
 struct i40e_aqc_set_port_parameters {
 	__le16	command_flags;
-#define I40E_AQ_SET_P_PARAMS_SAVE_BAD_PACKETS	1
-#define I40E_AQ_SET_P_PARAMS_PAD_SHORT_PACKETS	2 /* must set! */
-#define I40E_AQ_SET_P_PARAMS_DOUBLE_VLAN_ENA	4
 	__le16	bad_frame_vsi;
-#define I40E_AQ_SET_P_PARAMS_BFRAME_SEID_SHIFT	0x0
-#define I40E_AQ_SET_P_PARAMS_BFRAME_SEID_MASK	0x3FF
 	__le16	default_seid;        /* reserved for command */
 	u8	reserved[10];
 };
@@ -722,25 +632,6 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_get_switch_resource_alloc);
 /* expect an array of these structs in the response buffer */
 struct i40e_aqc_switch_resource_alloc_element_resp {
 	u8	resource_type;
-#define I40E_AQ_RESOURCE_TYPE_VEB		0x0
-#define I40E_AQ_RESOURCE_TYPE_VSI		0x1
-#define I40E_AQ_RESOURCE_TYPE_MACADDR		0x2
-#define I40E_AQ_RESOURCE_TYPE_STAG		0x3
-#define I40E_AQ_RESOURCE_TYPE_ETAG		0x4
-#define I40E_AQ_RESOURCE_TYPE_MULTICAST_HASH	0x5
-#define I40E_AQ_RESOURCE_TYPE_UNICAST_HASH	0x6
-#define I40E_AQ_RESOURCE_TYPE_VLAN		0x7
-#define I40E_AQ_RESOURCE_TYPE_VSI_LIST_ENTRY	0x8
-#define I40E_AQ_RESOURCE_TYPE_ETAG_LIST_ENTRY	0x9
-#define I40E_AQ_RESOURCE_TYPE_VLAN_STAT_POOL	0xA
-#define I40E_AQ_RESOURCE_TYPE_MIRROR_RULE	0xB
-#define I40E_AQ_RESOURCE_TYPE_QUEUE_SETS	0xC
-#define I40E_AQ_RESOURCE_TYPE_VLAN_FILTERS	0xD
-#define I40E_AQ_RESOURCE_TYPE_INNER_MAC_FILTERS	0xF
-#define I40E_AQ_RESOURCE_TYPE_IP_FILTERS	0x10
-#define I40E_AQ_RESOURCE_TYPE_GRE_VN_KEYS	0x11
-#define I40E_AQ_RESOURCE_TYPE_VN2_KEYS		0x12
-#define I40E_AQ_RESOURCE_TYPE_TUNNEL_PORTS	0x13
 	u8	reserved1;
 	__le16	guaranteed;
 	__le16	total;
@@ -756,7 +647,6 @@ struct i40e_aqc_set_switch_config {
 	__le16	flags;
 /* flags used for both fields below */
 #define I40E_AQ_SET_SWITCH_CFG_PROMISC		0x0001
-#define I40E_AQ_SET_SWITCH_CFG_L2_FILTER	0x0002
 	__le16	valid_flags;
 	/* The ethertype in switch_tag is dropped on ingress and used
 	 * internally by the switch. Set this to zero for the default
@@ -789,17 +679,10 @@ struct i40e_aqc_set_switch_config {
 	 */
 #define I40E_AQ_SET_SWITCH_BIT7_VALID		0x80
 
-#define I40E_AQ_SET_SWITCH_L4_SRC_PORT		0x40
 
-#define I40E_AQ_SET_SWITCH_L4_TYPE_RSVD		0x00
 #define I40E_AQ_SET_SWITCH_L4_TYPE_TCP		0x10
-#define I40E_AQ_SET_SWITCH_L4_TYPE_UDP		0x20
-#define I40E_AQ_SET_SWITCH_L4_TYPE_BOTH		0x30
 
-#define I40E_AQ_SET_SWITCH_MODE_DEFAULT		0x00
-#define I40E_AQ_SET_SWITCH_MODE_L4_PORT		0x01
 #define I40E_AQ_SET_SWITCH_MODE_NON_TUNNEL	0x02
-#define I40E_AQ_SET_SWITCH_MODE_TUNNEL		0x03
 	u8	mode;
 	u8	rsvd5[5];
 };
@@ -834,19 +717,13 @@ struct i40e_aqc_add_get_update_vsi {
 	__le16	uplink_seid;
 	u8	connection_type;
 #define I40E_AQ_VSI_CONN_TYPE_NORMAL	0x1
-#define I40E_AQ_VSI_CONN_TYPE_DEFAULT	0x2
-#define I40E_AQ_VSI_CONN_TYPE_CASCADED	0x3
 	u8	reserved1;
 	u8	vf_id;
 	u8	reserved2;
 	__le16	vsi_flags;
-#define I40E_AQ_VSI_TYPE_SHIFT		0x0
-#define I40E_AQ_VSI_TYPE_MASK		(0x3 << I40E_AQ_VSI_TYPE_SHIFT)
 #define I40E_AQ_VSI_TYPE_VF		0x0
 #define I40E_AQ_VSI_TYPE_VMDQ2		0x1
 #define I40E_AQ_VSI_TYPE_PF		0x2
-#define I40E_AQ_VSI_TYPE_EMP_MNG	0x3
-#define I40E_AQ_VSI_FLAG_CASCADED_PV	0x4
 	__le32	addr_high;
 	__le32	addr_low;
 };
@@ -870,24 +747,18 @@ struct i40e_aqc_vsi_properties_data {
 #define I40E_AQ_VSI_PROP_SWITCH_VALID		0x0001
 #define I40E_AQ_VSI_PROP_SECURITY_VALID		0x0002
 #define I40E_AQ_VSI_PROP_VLAN_VALID		0x0004
-#define I40E_AQ_VSI_PROP_CAS_PV_VALID		0x0008
-#define I40E_AQ_VSI_PROP_INGRESS_UP_VALID	0x0010
-#define I40E_AQ_VSI_PROP_EGRESS_UP_VALID	0x0020
 #define I40E_AQ_VSI_PROP_QUEUE_MAP_VALID	0x0040
 #define I40E_AQ_VSI_PROP_QUEUE_OPT_VALID	0x0080
-#define I40E_AQ_VSI_PROP_OUTER_UP_VALID		0x0100
 #define I40E_AQ_VSI_PROP_SCHED_VALID		0x0200
 	/* switch section */
 	__le16	switch_id; /* 12bit id combined with flags below */
 #define I40E_AQ_VSI_SW_ID_SHIFT		0x0000
 #define I40E_AQ_VSI_SW_ID_MASK		(0xFFF << I40E_AQ_VSI_SW_ID_SHIFT)
-#define I40E_AQ_VSI_SW_ID_FLAG_NOT_STAG	0x1000
 #define I40E_AQ_VSI_SW_ID_FLAG_ALLOW_LB	0x2000
 #define I40E_AQ_VSI_SW_ID_FLAG_LOCAL_LB	0x4000
 	u8	sw_reserved[2];
 	/* security section */
 	u8	sec_flags;
-#define I40E_AQ_VSI_SEC_FLAG_ALLOW_DEST_OVRD	0x01
 #define I40E_AQ_VSI_SEC_FLAG_ENABLE_VLAN_CHK	0x02
 #define I40E_AQ_VSI_SEC_FLAG_ENABLE_MAC_CHK	0x04
 	u8	sec_reserved;
@@ -899,78 +770,33 @@ struct i40e_aqc_vsi_properties_data {
 #define I40E_AQ_VSI_PVLAN_MODE_MASK	(0x03 << \
 					 I40E_AQ_VSI_PVLAN_MODE_SHIFT)
 #define I40E_AQ_VSI_PVLAN_MODE_TAGGED	0x01
-#define I40E_AQ_VSI_PVLAN_MODE_UNTAGGED	0x02
 #define I40E_AQ_VSI_PVLAN_MODE_ALL	0x03
 #define I40E_AQ_VSI_PVLAN_INSERT_PVID	0x04
 #define I40E_AQ_VSI_PVLAN_EMOD_SHIFT	0x03
 #define I40E_AQ_VSI_PVLAN_EMOD_MASK	(0x3 << \
 					 I40E_AQ_VSI_PVLAN_EMOD_SHIFT)
 #define I40E_AQ_VSI_PVLAN_EMOD_STR_BOTH	0x0
-#define I40E_AQ_VSI_PVLAN_EMOD_STR_UP	0x08
 #define I40E_AQ_VSI_PVLAN_EMOD_STR	0x10
 #define I40E_AQ_VSI_PVLAN_EMOD_NOTHING	0x18
 	u8	pvlan_reserved[3];
 	/* ingress egress up sections */
 	__le32	ingress_table; /* bitmap, 3 bits per up */
-#define I40E_AQ_VSI_UP_TABLE_UP0_SHIFT	0
-#define I40E_AQ_VSI_UP_TABLE_UP0_MASK	(0x7 << \
-					 I40E_AQ_VSI_UP_TABLE_UP0_SHIFT)
-#define I40E_AQ_VSI_UP_TABLE_UP1_SHIFT	3
-#define I40E_AQ_VSI_UP_TABLE_UP1_MASK	(0x7 << \
-					 I40E_AQ_VSI_UP_TABLE_UP1_SHIFT)
-#define I40E_AQ_VSI_UP_TABLE_UP2_SHIFT	6
-#define I40E_AQ_VSI_UP_TABLE_UP2_MASK	(0x7 << \
-					 I40E_AQ_VSI_UP_TABLE_UP2_SHIFT)
-#define I40E_AQ_VSI_UP_TABLE_UP3_SHIFT	9
-#define I40E_AQ_VSI_UP_TABLE_UP3_MASK	(0x7 << \
-					 I40E_AQ_VSI_UP_TABLE_UP3_SHIFT)
-#define I40E_AQ_VSI_UP_TABLE_UP4_SHIFT	12
-#define I40E_AQ_VSI_UP_TABLE_UP4_MASK	(0x7 << \
-					 I40E_AQ_VSI_UP_TABLE_UP4_SHIFT)
-#define I40E_AQ_VSI_UP_TABLE_UP5_SHIFT	15
-#define I40E_AQ_VSI_UP_TABLE_UP5_MASK	(0x7 << \
-					 I40E_AQ_VSI_UP_TABLE_UP5_SHIFT)
-#define I40E_AQ_VSI_UP_TABLE_UP6_SHIFT	18
-#define I40E_AQ_VSI_UP_TABLE_UP6_MASK	(0x7 << \
-					 I40E_AQ_VSI_UP_TABLE_UP6_SHIFT)
-#define I40E_AQ_VSI_UP_TABLE_UP7_SHIFT	21
-#define I40E_AQ_VSI_UP_TABLE_UP7_MASK	(0x7 << \
-					 I40E_AQ_VSI_UP_TABLE_UP7_SHIFT)
 	__le32	egress_table;   /* same defines as for ingress table */
 	/* cascaded PV section */
 	__le16	cas_pv_tag;
 	u8	cas_pv_flags;
-#define I40E_AQ_VSI_CAS_PV_TAGX_SHIFT		0x00
-#define I40E_AQ_VSI_CAS_PV_TAGX_MASK		(0x03 << \
-						 I40E_AQ_VSI_CAS_PV_TAGX_SHIFT)
-#define I40E_AQ_VSI_CAS_PV_TAGX_LEAVE		0x00
-#define I40E_AQ_VSI_CAS_PV_TAGX_REMOVE		0x01
-#define I40E_AQ_VSI_CAS_PV_TAGX_COPY		0x02
-#define I40E_AQ_VSI_CAS_PV_INSERT_TAG		0x10
-#define I40E_AQ_VSI_CAS_PV_ETAG_PRUNE		0x20
-#define I40E_AQ_VSI_CAS_PV_ACCEPT_HOST_TAG	0x40
 	u8	cas_pv_reserved;
 	/* queue mapping section */
 	__le16	mapping_flags;
 #define I40E_AQ_VSI_QUE_MAP_CONTIG	0x0
 #define I40E_AQ_VSI_QUE_MAP_NONCONTIG	0x1
 	__le16	queue_mapping[16];
-#define I40E_AQ_VSI_QUEUE_SHIFT		0x0
-#define I40E_AQ_VSI_QUEUE_MASK		(0x7FF << I40E_AQ_VSI_QUEUE_SHIFT)
 	__le16	tc_mapping[8];
 #define I40E_AQ_VSI_TC_QUE_OFFSET_SHIFT	0
-#define I40E_AQ_VSI_TC_QUE_OFFSET_MASK	(0x1FF << \
-					 I40E_AQ_VSI_TC_QUE_OFFSET_SHIFT)
 #define I40E_AQ_VSI_TC_QUE_NUMBER_SHIFT	9
-#define I40E_AQ_VSI_TC_QUE_NUMBER_MASK	(0x7 << \
-					 I40E_AQ_VSI_TC_QUE_NUMBER_SHIFT)
 	/* queueing option section */
 	u8	queueing_opt_flags;
-#define I40E_AQ_VSI_QUE_OPT_MULTICAST_UDP_ENA	0x04
-#define I40E_AQ_VSI_QUE_OPT_UNICAST_UDP_ENA	0x08
 #define I40E_AQ_VSI_QUE_OPT_TCP_ENA	0x10
-#define I40E_AQ_VSI_QUE_OPT_FCOE_ENA	0x20
-#define I40E_AQ_VSI_QUE_OPT_RSS_LUT_PF	0x00
 #define I40E_AQ_VSI_QUE_OPT_RSS_LUT_VSI	0x40
 	u8	queueing_opt_reserved[3];
 	/* scheduler section */
@@ -995,10 +821,6 @@ I40E_CHECK_STRUCT_LEN(128, i40e_aqc_vsi_properties_data);
  */
 struct i40e_aqc_add_update_pv {
 	__le16	command_flags;
-#define I40E_AQC_PV_FLAG_PV_TYPE		0x1
-#define I40E_AQC_PV_FLAG_FWD_UNKNOWN_STAG_EN	0x2
-#define I40E_AQC_PV_FLAG_FWD_UNKNOWN_ETAG_EN	0x4
-#define I40E_AQC_PV_FLAG_IS_CTRL_PORT		0x8
 	__le16	uplink_seid;
 	__le16	connected_seid;
 	u8	reserved[10];
@@ -1009,10 +831,6 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_add_update_pv);
 struct i40e_aqc_add_update_pv_completion {
 	/* reserved for update; for add also encodes error if rc == ENOSPC */
 	__le16	pv_seid;
-#define I40E_AQC_PV_ERR_FLAG_NO_PV	0x1
-#define I40E_AQC_PV_ERR_FLAG_NO_SCHED	0x2
-#define I40E_AQC_PV_ERR_FLAG_NO_COUNTER	0x4
-#define I40E_AQC_PV_ERR_FLAG_NO_ENTRY	0x8
 	u8	reserved[14];
 };
 
@@ -1026,9 +844,6 @@ struct i40e_aqc_get_pv_params_completion {
 	__le16	seid;
 	__le16	default_stag;
 	__le16	pv_flags; /* same flags as add_pv */
-#define I40E_AQC_GET_PV_PV_TYPE			0x1
-#define I40E_AQC_GET_PV_FRWD_UNKNOWN_STAG	0x2
-#define I40E_AQC_GET_PV_FRWD_UNKNOWN_ETAG	0x4
 	u8	reserved[8];
 	__le16	default_port_seid;
 };
@@ -1041,12 +856,8 @@ struct i40e_aqc_add_veb {
 	__le16	downlink_seid;
 	__le16	veb_flags;
 #define I40E_AQC_ADD_VEB_FLOATING		0x1
-#define I40E_AQC_ADD_VEB_PORT_TYPE_SHIFT	1
-#define I40E_AQC_ADD_VEB_PORT_TYPE_MASK		(0x3 << \
-					I40E_AQC_ADD_VEB_PORT_TYPE_SHIFT)
 #define I40E_AQC_ADD_VEB_PORT_TYPE_DEFAULT	0x2
 #define I40E_AQC_ADD_VEB_PORT_TYPE_DATA		0x4
-#define I40E_AQC_ADD_VEB_ENABLE_L2_FILTER	0x8     /* deprecated */
 #define I40E_AQC_ADD_VEB_ENABLE_DISABLE_STATS	0x10
 	u8	enable_tcs;
 	u8	reserved[9];
@@ -1059,10 +870,6 @@ struct i40e_aqc_add_veb_completion {
 	__le16	switch_seid;
 	/* also encodes error if rc == ENOSPC; codes are the same as add_pv */
 	__le16	veb_seid;
-#define I40E_AQC_VEB_ERR_FLAG_NO_VEB		0x1
-#define I40E_AQC_VEB_ERR_FLAG_NO_SCHED		0x2
-#define I40E_AQC_VEB_ERR_FLAG_NO_COUNTER	0x4
-#define I40E_AQC_VEB_ERR_FLAG_NO_ENTRY		0x8
 	__le16	statistic_index;
 	__le16	vebs_used;
 	__le16	vebs_free;
@@ -1095,9 +902,6 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_get_veb_parameters_completion);
 struct i40e_aqc_macvlan {
 	__le16	num_addresses;
 	__le16	seid[3];
-#define I40E_AQC_MACVLAN_CMD_SEID_NUM_SHIFT	0
-#define I40E_AQC_MACVLAN_CMD_SEID_NUM_MASK	(0x3FF << \
-					I40E_AQC_MACVLAN_CMD_SEID_NUM_SHIFT)
 #define I40E_AQC_MACVLAN_CMD_SEID_VALID		0x8000
 	__le32	addr_high;
 	__le32	addr_low;
@@ -1111,18 +915,11 @@ struct i40e_aqc_add_macvlan_element_data {
 	__le16	vlan_tag;
 	__le16	flags;
 #define I40E_AQC_MACVLAN_ADD_PERFECT_MATCH	0x0001
-#define I40E_AQC_MACVLAN_ADD_HASH_MATCH		0x0002
 #define I40E_AQC_MACVLAN_ADD_IGNORE_VLAN	0x0004
-#define I40E_AQC_MACVLAN_ADD_TO_QUEUE		0x0008
 #define I40E_AQC_MACVLAN_ADD_USE_SHARED_MAC	0x0010
 	__le16	queue_number;
-#define I40E_AQC_MACVLAN_CMD_QUEUE_SHIFT	0
-#define I40E_AQC_MACVLAN_CMD_QUEUE_MASK		(0x7FF << \
-					I40E_AQC_MACVLAN_CMD_SEID_NUM_SHIFT)
 	/* response section */
 	u8	match_method;
-#define I40E_AQC_MM_PERFECT_MATCH	0x01
-#define I40E_AQC_MM_HASH_MATCH		0x02
 #define I40E_AQC_MM_ERR_NO_RES		0xFF
 	u8	reserved1[3];
 };
@@ -1148,14 +945,10 @@ struct i40e_aqc_remove_macvlan_element_data {
 	__le16	vlan_tag;
 	u8	flags;
 #define I40E_AQC_MACVLAN_DEL_PERFECT_MATCH	0x01
-#define I40E_AQC_MACVLAN_DEL_HASH_MATCH		0x02
 #define I40E_AQC_MACVLAN_DEL_IGNORE_VLAN	0x08
-#define I40E_AQC_MACVLAN_DEL_ALL_VSIS		0x10
 	u8	reserved[3];
 	/* reply section */
 	u8	error_code;
-#define I40E_AQC_REMOVE_MACVLAN_SUCCESS		0x0
-#define I40E_AQC_REMOVE_MACVLAN_FAIL		0xFF
 	u8	reply_reserved[3];
 };
 
@@ -1167,29 +960,11 @@ struct i40e_aqc_add_remove_vlan_element_data {
 	__le16	vlan_tag;
 	u8	vlan_flags;
 /* flags for add VLAN */
-#define I40E_AQC_ADD_VLAN_LOCAL			0x1
-#define I40E_AQC_ADD_PVLAN_TYPE_SHIFT		1
-#define I40E_AQC_ADD_PVLAN_TYPE_MASK	(0x3 << I40E_AQC_ADD_PVLAN_TYPE_SHIFT)
-#define I40E_AQC_ADD_PVLAN_TYPE_REGULAR		0x0
-#define I40E_AQC_ADD_PVLAN_TYPE_PRIMARY		0x2
-#define I40E_AQC_ADD_PVLAN_TYPE_SECONDARY	0x4
-#define I40E_AQC_VLAN_PTYPE_SHIFT		3
-#define I40E_AQC_VLAN_PTYPE_MASK	(0x3 << I40E_AQC_VLAN_PTYPE_SHIFT)
-#define I40E_AQC_VLAN_PTYPE_REGULAR_VSI		0x0
-#define I40E_AQC_VLAN_PTYPE_PROMISC_VSI		0x8
-#define I40E_AQC_VLAN_PTYPE_COMMUNITY_VSI	0x10
-#define I40E_AQC_VLAN_PTYPE_ISOLATED_VSI	0x18
 /* flags for remove VLAN */
-#define I40E_AQC_REMOVE_VLAN_ALL	0x1
 	u8	reserved;
 	u8	result;
 /* flags for add VLAN */
-#define I40E_AQC_ADD_VLAN_SUCCESS	0x0
-#define I40E_AQC_ADD_VLAN_FAIL_REQUEST	0xFE
-#define I40E_AQC_ADD_VLAN_FAIL_RESOURCE	0xFF
 /* flags for remove VLAN */
-#define I40E_AQC_REMOVE_VLAN_SUCCESS	0x0
-#define I40E_AQC_REMOVE_VLAN_FAIL	0xFF
 	u8	reserved1[3];
 };
 
@@ -1213,9 +988,7 @@ struct i40e_aqc_set_vsi_promiscuous_modes {
 #define I40E_AQC_SET_VSI_PROMISC_VLAN		0x10
 #define I40E_AQC_SET_VSI_PROMISC_TX		0x8000
 	__le16	seid;
-#define I40E_AQC_VSI_PROM_CMD_SEID_MASK		0x3FF
 	__le16	vlan_tag;
-#define I40E_AQC_SET_VSI_VLAN_MASK		0x0FFF
 #define I40E_AQC_SET_VSI_VLAN_VALID		0x8000
 	u8	reserved[8];
 };
@@ -1227,11 +1000,7 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_set_vsi_promiscuous_modes);
  */
 struct i40e_aqc_add_tag {
 	__le16	flags;
-#define I40E_AQC_ADD_TAG_FLAG_TO_QUEUE		0x0001
 	__le16	seid;
-#define I40E_AQC_ADD_TAG_CMD_SEID_NUM_SHIFT	0
-#define I40E_AQC_ADD_TAG_CMD_SEID_NUM_MASK	(0x3FF << \
-					I40E_AQC_ADD_TAG_CMD_SEID_NUM_SHIFT)
 	__le16	tag;
 	__le16	queue_number;
 	u8	reserved[8];
@@ -1252,9 +1021,6 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_add_remove_tag_completion);
  */
 struct i40e_aqc_remove_tag {
 	__le16	seid;
-#define I40E_AQC_REMOVE_TAG_CMD_SEID_NUM_SHIFT	0
-#define I40E_AQC_REMOVE_TAG_CMD_SEID_NUM_MASK	(0x3FF << \
-					I40E_AQC_REMOVE_TAG_CMD_SEID_NUM_SHIFT)
 	__le16	tag;
 	u8	reserved[12];
 };
@@ -1290,9 +1056,6 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_add_remove_mcast_etag_completion);
 /* Update S/E-Tag (direct 0x0259) */
 struct i40e_aqc_update_tag {
 	__le16	seid;
-#define I40E_AQC_UPDATE_TAG_CMD_SEID_NUM_SHIFT	0
-#define I40E_AQC_UPDATE_TAG_CMD_SEID_NUM_MASK	(0x3FF << \
-					I40E_AQC_UPDATE_TAG_CMD_SEID_NUM_SHIFT)
 	__le16	old_tag;
 	__le16	new_tag;
 	u8	reserved[10];
@@ -1319,13 +1082,8 @@ struct i40e_aqc_add_remove_control_packet_filter {
 	__le16	flags;
 #define I40E_AQC_ADD_CONTROL_PACKET_FLAGS_IGNORE_MAC	0x0001
 #define I40E_AQC_ADD_CONTROL_PACKET_FLAGS_DROP		0x0002
-#define I40E_AQC_ADD_CONTROL_PACKET_FLAGS_TO_QUEUE	0x0004
 #define I40E_AQC_ADD_CONTROL_PACKET_FLAGS_TX		0x0008
-#define I40E_AQC_ADD_CONTROL_PACKET_FLAGS_RX		0x0000
 	__le16	seid;
-#define I40E_AQC_ADD_CONTROL_PACKET_CMD_SEID_NUM_SHIFT	0
-#define I40E_AQC_ADD_CONTROL_PACKET_CMD_SEID_NUM_MASK	(0x3FF << \
-				I40E_AQC_ADD_CONTROL_PACKET_CMD_SEID_NUM_SHIFT)
 	__le16	queue;
 	u8	reserved[2];
 };
@@ -1351,9 +1109,6 @@ struct i40e_aqc_add_remove_cloud_filters {
 	u8	num_filters;
 	u8	reserved;
 	__le16	seid;
-#define I40E_AQC_ADD_CLOUD_CMD_SEID_NUM_SHIFT	0
-#define I40E_AQC_ADD_CLOUD_CMD_SEID_NUM_MASK	(0x3FF << \
-					I40E_AQC_ADD_CLOUD_CMD_SEID_NUM_SHIFT)
 	u8	big_buffer_flag;
 #define I40E_AQC_ADD_CLOUD_CMD_BB	1
 	u8	reserved2[3];
@@ -1380,9 +1135,6 @@ struct i40e_aqc_cloud_filters_element_data {
 		} raw_v6;
 	} ipaddr;
 	__le16	flags;
-#define I40E_AQC_ADD_CLOUD_FILTER_SHIFT			0
-#define I40E_AQC_ADD_CLOUD_FILTER_MASK	(0x3F << \
-					I40E_AQC_ADD_CLOUD_FILTER_SHIFT)
 /* 0x0000 reserved */
 /* 0x0001 reserved */
 /* 0x0002 reserved */
@@ -1404,36 +1156,20 @@ struct i40e_aqc_cloud_filters_element_data {
 #define I40E_AQC_ADD_CLOUD_FILTER_MAC_PORT		0x0011 /* Dest MAC + L4 Port */
 #define I40E_AQC_ADD_CLOUD_FILTER_MAC_VLAN_PORT		0x0012 /* Dest MAC + VLAN + L4 Port */
 
-#define I40E_AQC_ADD_CLOUD_FLAGS_TO_QUEUE		0x0080
-#define I40E_AQC_ADD_CLOUD_VNK_SHIFT			6
-#define I40E_AQC_ADD_CLOUD_VNK_MASK			0x00C0
 #define I40E_AQC_ADD_CLOUD_FLAGS_IPV4			0
 #define I40E_AQC_ADD_CLOUD_FLAGS_IPV6			0x0100
 
 #define I40E_AQC_ADD_CLOUD_TNL_TYPE_SHIFT		9
 #define I40E_AQC_ADD_CLOUD_TNL_TYPE_MASK		0x1E00
-#define I40E_AQC_ADD_CLOUD_TNL_TYPE_VXLAN		0
-#define I40E_AQC_ADD_CLOUD_TNL_TYPE_NVGRE_OMAC		1
 #define I40E_AQC_ADD_CLOUD_TNL_TYPE_GENEVE		2
-#define I40E_AQC_ADD_CLOUD_TNL_TYPE_IP			3
-#define I40E_AQC_ADD_CLOUD_TNL_TYPE_RESERVED		4
-#define I40E_AQC_ADD_CLOUD_TNL_TYPE_VXLAN_GPE		5
 
-#define I40E_AQC_ADD_CLOUD_FLAGS_SHARED_OUTER_MAC	0x2000
-#define I40E_AQC_ADD_CLOUD_FLAGS_SHARED_INNER_MAC	0x4000
-#define I40E_AQC_ADD_CLOUD_FLAGS_SHARED_OUTER_IP	0x8000
 
 	__le32	tenant_id;
 	u8	reserved[4];
 	__le16	queue_number;
-#define I40E_AQC_ADD_CLOUD_QUEUE_SHIFT		0
-#define I40E_AQC_ADD_CLOUD_QUEUE_MASK		(0x7FF << \
-						 I40E_AQC_ADD_CLOUD_QUEUE_SHIFT)
 	u8	reserved2[14];
 	/* response section */
 	u8	allocation_result;
-#define I40E_AQC_ADD_CLOUD_FILTER_SUCCESS	0x0
-#define I40E_AQC_ADD_CLOUD_FILTER_FAIL		0xFF
 	u8	response_reserved[7];
 };
 
@@ -1445,37 +1181,7 @@ I40E_CHECK_STRUCT_LEN(0x40, i40e_aqc_cloud_filters_element_data);
 struct i40e_aqc_cloud_filters_element_bb {
 	struct i40e_aqc_cloud_filters_element_data element;
 	u16     general_fields[32];
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X10_WORD0	0
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X10_WORD1	1
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X10_WORD2	2
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X11_WORD0	3
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X11_WORD1	4
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X11_WORD2	5
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X12_WORD0	6
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X12_WORD1	7
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X12_WORD2	8
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X13_WORD0	9
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X13_WORD1	10
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X13_WORD2	11
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X14_WORD0	12
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X14_WORD1	13
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X14_WORD2	14
 #define I40E_AQC_ADD_CLOUD_FV_FLU_0X16_WORD0	15
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X16_WORD1	16
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X16_WORD2	17
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X16_WORD3	18
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X16_WORD4	19
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X16_WORD5	20
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X16_WORD6	21
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X16_WORD7	22
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X17_WORD0	23
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X17_WORD1	24
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X17_WORD2	25
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X17_WORD3	26
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X17_WORD4	27
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X17_WORD5	28
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X17_WORD6	29
-#define I40E_AQC_ADD_CLOUD_FV_FLU_0X17_WORD7	30
 };
 
 I40E_CHECK_STRUCT_LEN(0x80, i40e_aqc_cloud_filters_element_bb);
@@ -1504,11 +1210,6 @@ I40E_CHECK_STRUCT_LEN(4, i40e_filter_data);
 
 struct i40e_aqc_replace_cloud_filters_cmd {
 	u8      valid_flags;
-#define I40E_AQC_REPLACE_L1_FILTER		0x0
-#define I40E_AQC_REPLACE_CLOUD_FILTER		0x1
-#define I40E_AQC_GET_CLOUD_FILTERS		0x2
-#define I40E_AQC_MIRROR_CLOUD_FILTER		0x4
-#define I40E_AQC_HIGH_PRIORITY_CLOUD_FILTER	0x8
 	u8      old_filter_type;
 	u8      new_filter_type;
 	u8      tr_bit;
@@ -1522,24 +1223,11 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_replace_cloud_filters_cmd);
 struct i40e_aqc_replace_cloud_filters_cmd_buf {
 	u8      data[32];
 /* Filter type INPUT codes*/
-#define I40E_AQC_REPLACE_CLOUD_CMD_INPUT_ENTRIES_MAX	3
-#define I40E_AQC_REPLACE_CLOUD_CMD_INPUT_VALIDATED	BIT(7)
 
 /* Field Vector offsets */
-#define I40E_AQC_REPLACE_CLOUD_CMD_INPUT_FV_MAC_DA	0
-#define I40E_AQC_REPLACE_CLOUD_CMD_INPUT_FV_STAG_ETH	6
-#define I40E_AQC_REPLACE_CLOUD_CMD_INPUT_FV_STAG	7
-#define I40E_AQC_REPLACE_CLOUD_CMD_INPUT_FV_VLAN	8
-#define I40E_AQC_REPLACE_CLOUD_CMD_INPUT_FV_STAG_OVLAN	9
-#define I40E_AQC_REPLACE_CLOUD_CMD_INPUT_FV_STAG_IVLAN	10
-#define I40E_AQC_REPLACE_CLOUD_CMD_INPUT_FV_TUNNLE_KEY	11
-#define I40E_AQC_REPLACE_CLOUD_CMD_INPUT_FV_IMAC	12
 /* big FLU */
-#define I40E_AQC_REPLACE_CLOUD_CMD_INPUT_FV_IP_DA	14
 /* big FLU */
-#define I40E_AQC_REPLACE_CLOUD_CMD_INPUT_FV_OIP_DA	15
 
-#define I40E_AQC_REPLACE_CLOUD_CMD_INPUT_FV_INNER_VLAN	37
 	struct i40e_filter_data filters[8];
 };
 
@@ -1556,8 +1244,6 @@ struct i40e_aqc_add_delete_mirror_rule {
 #define I40E_AQC_MIRROR_RULE_TYPE_SHIFT		0
 #define I40E_AQC_MIRROR_RULE_TYPE_MASK		(0x7 << \
 						I40E_AQC_MIRROR_RULE_TYPE_SHIFT)
-#define I40E_AQC_MIRROR_RULE_TYPE_VPORT_INGRESS	1
-#define I40E_AQC_MIRROR_RULE_TYPE_VPORT_EGRESS	2
 #define I40E_AQC_MIRROR_RULE_TYPE_VLAN		3
 #define I40E_AQC_MIRROR_RULE_TYPE_ALL_INGRESS	4
 #define I40E_AQC_MIRROR_RULE_TYPE_ALL_EGRESS	5
@@ -1600,8 +1286,6 @@ struct i40e_aqc_write_ddp_resp {
 
 struct i40e_aqc_get_applied_profiles {
 	u8      flags;
-#define I40E_AQC_GET_DDP_GET_CONF	0x1
-#define I40E_AQC_GET_DDP_GET_RDPU_CONF	0x2
 	u8      rsv[3];
 	__le32  reserved;
 	__le32  addr_high;
@@ -1618,8 +1302,6 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_get_applied_profiles);
 struct i40e_aqc_pfc_ignore {
 	u8	tc_bitmap;
 	u8	command_flags; /* unused on response */
-#define I40E_AQC_PFC_IGNORE_SET		0x80
-#define I40E_AQC_PFC_IGNORE_CLEAR	0x0
 	u8	reserved[14];
 };
 
@@ -1736,7 +1418,6 @@ struct i40e_aqc_configure_switching_comp_ets_data {
 	u8	reserved[4];
 	u8	tc_valid_bits;
 	u8	seepage;
-#define I40E_AQ_ETS_SEEPAGE_EN_MASK	0x1
 	u8	tc_strict_priority_flags;
 	u8	reserved1[17];
 	u8	tc_bw_share_credits[8];
@@ -1977,40 +1658,18 @@ struct i40e_aq_get_phy_abilities_resp {
 	u8	abilities;
 #define I40E_AQ_PHY_FLAG_PAUSE_TX	0x01
 #define I40E_AQ_PHY_FLAG_PAUSE_RX	0x02
-#define I40E_AQ_PHY_FLAG_LOW_POWER	0x04
-#define I40E_AQ_PHY_LINK_ENABLED	0x08
-#define I40E_AQ_PHY_AN_ENABLED		0x10
-#define I40E_AQ_PHY_FLAG_MODULE_QUAL	0x20
-#define I40E_AQ_PHY_FEC_ABILITY_KR	0x40
-#define I40E_AQ_PHY_FEC_ABILITY_RS	0x80
 	__le16	eee_capability;
-#define I40E_AQ_EEE_100BASE_TX		0x0002
-#define I40E_AQ_EEE_1000BASE_T		0x0004
-#define I40E_AQ_EEE_10GBASE_T		0x0008
-#define I40E_AQ_EEE_1000BASE_KX		0x0010
-#define I40E_AQ_EEE_10GBASE_KX4		0x0020
-#define I40E_AQ_EEE_10GBASE_KR		0x0040
 	__le32	eeer_val;
 	u8	d3_lpan;
-#define I40E_AQ_SET_PHY_D3_LPAN_ENA	0x01
 	u8	phy_type_ext;
 #define I40E_AQ_PHY_TYPE_EXT_25G_KR	0X01
 #define I40E_AQ_PHY_TYPE_EXT_25G_CR	0X02
 #define I40E_AQ_PHY_TYPE_EXT_25G_SR	0x04
 #define I40E_AQ_PHY_TYPE_EXT_25G_LR	0x08
-#define I40E_AQ_PHY_TYPE_EXT_25G_AOC	0x10
-#define I40E_AQ_PHY_TYPE_EXT_25G_ACC	0x20
-#define I40E_AQ_PHY_TYPE_EXT_2_5GBASE_T	0x40
-#define I40E_AQ_PHY_TYPE_EXT_5GBASE_T	0x80
 	u8	fec_cfg_curr_mod_ext_info;
-#define I40E_AQ_ENABLE_FEC_KR		0x01
-#define I40E_AQ_ENABLE_FEC_RS		0x02
 #define I40E_AQ_REQUEST_FEC_KR		0x04
 #define I40E_AQ_REQUEST_FEC_RS		0x08
 #define I40E_AQ_ENABLE_FEC_AUTO		0x10
-#define I40E_AQ_FEC
-#define I40E_AQ_MODULE_TYPE_EXT_MASK	0xE0
-#define I40E_AQ_MODULE_TYPE_EXT_SHIFT	5
 
 	u8	ext_comp_code;
 	u8	phy_id[4];
@@ -2028,7 +1687,6 @@ struct i40e_aq_set_phy_config { /* same bits as above in all */
 	u8	link_speed;
 	u8	abilities;
 /* bits 0-2 use the values from get_phy_abilities_resp */
-#define I40E_AQ_PHY_ENABLE_LINK		0x08
 #define I40E_AQ_PHY_ENABLE_AN		0x10
 #define I40E_AQ_PHY_ENABLE_ATOMIC_LINK	0x20
 	__le16	eee_capability;
@@ -2056,21 +1714,6 @@ I40E_CHECK_CMD_LENGTH(i40e_aq_set_phy_config);
 struct i40e_aq_set_mac_config {
 	__le16	max_frame_size;
 	u8	params;
-#define I40E_AQ_SET_MAC_CONFIG_CRC_EN			0x04
-#define I40E_AQ_SET_MAC_CONFIG_PACING_MASK		0x78
-#define I40E_AQ_SET_MAC_CONFIG_PACING_SHIFT		3
-#define I40E_AQ_SET_MAC_CONFIG_PACING_NONE		0x0
-#define I40E_AQ_SET_MAC_CONFIG_PACING_1B_13TX		0xF
-#define I40E_AQ_SET_MAC_CONFIG_PACING_1DW_9TX		0x9
-#define I40E_AQ_SET_MAC_CONFIG_PACING_1DW_4TX		0x8
-#define I40E_AQ_SET_MAC_CONFIG_PACING_3DW_7TX		0x7
-#define I40E_AQ_SET_MAC_CONFIG_PACING_2DW_3TX		0x6
-#define I40E_AQ_SET_MAC_CONFIG_PACING_1DW_1TX		0x5
-#define I40E_AQ_SET_MAC_CONFIG_PACING_3DW_2TX		0x4
-#define I40E_AQ_SET_MAC_CONFIG_PACING_7DW_3TX		0x3
-#define I40E_AQ_SET_MAC_CONFIG_PACING_4DW_1TX		0x2
-#define I40E_AQ_SET_MAC_CONFIG_PACING_9DW_1TX		0x1
-#define I40E_AQ_SET_MAC_CONFIG_DROP_BLOCKING_PACKET_EN	0x80
 	u8	tx_timer_priority; /* bitmap */
 	__le16	tx_timer_value;
 	__le16	fc_refresh_threshold;
@@ -2092,8 +1735,6 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_set_link_restart_an);
 /* Get Link Status cmd & response data structure (direct 0x0607) */
 struct i40e_aqc_get_link_status {
 	__le16	command_flags; /* only field set on command */
-#define I40E_AQ_LSE_MASK		0x3
-#define I40E_AQ_LSE_NOP			0x0
 #define I40E_AQ_LSE_DISABLE		0x2
 #define I40E_AQ_LSE_ENABLE		0x3
 /* only response uses this flag */
@@ -2102,44 +1743,17 @@ struct i40e_aqc_get_link_status {
 	u8	link_speed;  /* i40e_aq_link_speed */
 	u8	link_info;
 #define I40E_AQ_LINK_UP			0x01    /* obsolete */
-#define I40E_AQ_LINK_UP_FUNCTION	0x01
-#define I40E_AQ_LINK_FAULT		0x02
-#define I40E_AQ_LINK_FAULT_TX		0x04
-#define I40E_AQ_LINK_FAULT_RX		0x08
-#define I40E_AQ_LINK_FAULT_REMOTE	0x10
-#define I40E_AQ_LINK_UP_PORT		0x20
 #define I40E_AQ_MEDIA_AVAILABLE		0x40
-#define I40E_AQ_SIGNAL_DETECT		0x80
 	u8	an_info;
 #define I40E_AQ_AN_COMPLETED		0x01
-#define I40E_AQ_LP_AN_ABILITY		0x02
-#define I40E_AQ_PD_FAULT		0x04
-#define I40E_AQ_FEC_EN			0x08
-#define I40E_AQ_PHY_LOW_POWER		0x10
 #define I40E_AQ_LINK_PAUSE_TX		0x20
 #define I40E_AQ_LINK_PAUSE_RX		0x40
 #define I40E_AQ_QUALIFIED_MODULE	0x80
 	u8	ext_info;
-#define I40E_AQ_LINK_PHY_TEMP_ALARM	0x01
-#define I40E_AQ_LINK_XCESSIVE_ERRORS	0x02
-#define I40E_AQ_LINK_TX_SHIFT		0x02
-#define I40E_AQ_LINK_TX_MASK		(0x03 << I40E_AQ_LINK_TX_SHIFT)
-#define I40E_AQ_LINK_TX_ACTIVE		0x00
-#define I40E_AQ_LINK_TX_DRAINED		0x01
-#define I40E_AQ_LINK_TX_FLUSHED		0x03
-#define I40E_AQ_LINK_FORCED_40G		0x10
 /* 25G Error Codes */
-#define I40E_AQ_25G_NO_ERR		0X00
-#define I40E_AQ_25G_NOT_PRESENT		0X01
-#define I40E_AQ_25G_NVM_CRC_ERR		0X02
-#define I40E_AQ_25G_SBUS_UCODE_ERR	0X03
-#define I40E_AQ_25G_SERDES_UCODE_ERR	0X04
-#define I40E_AQ_25G_NIMB_UCODE_ERR	0X05
 	u8	loopback; /* use defines from i40e_aqc_set_lb_mode */
 /* Since firmware API 1.7 loopback field keeps power class info as well */
 #define I40E_AQ_LOOPBACK_MASK		0x07
-#define I40E_AQ_PWR_CLASS_SHIFT_LB	6
-#define I40E_AQ_PWR_CLASS_MASK_LB	(0x03 << I40E_AQ_PWR_CLASS_SHIFT_LB)
 	__le16	max_frame_size;
 	u8	config;
 #define I40E_AQ_CONFIG_FEC_KR_ENA	0x01
@@ -2149,11 +1763,6 @@ struct i40e_aqc_get_link_status {
 	union {
 		struct {
 			u8	power_desc;
-#define I40E_AQ_LINK_POWER_CLASS_1	0x00
-#define I40E_AQ_LINK_POWER_CLASS_2	0x01
-#define I40E_AQ_LINK_POWER_CLASS_3	0x02
-#define I40E_AQ_LINK_POWER_CLASS_4	0x03
-#define I40E_AQ_PWR_CLASS_MASK		0x03
 			u8	reserved[4];
 		};
 		struct {
@@ -2171,13 +1780,7 @@ struct i40e_aqc_set_phy_int_mask {
 	__le16	event_mask;
 #define I40E_AQ_EVENT_LINK_UPDOWN	0x0002
 #define I40E_AQ_EVENT_MEDIA_NA		0x0004
-#define I40E_AQ_EVENT_LINK_FAULT	0x0008
-#define I40E_AQ_EVENT_PHY_TEMP_ALARM	0x0010
-#define I40E_AQ_EVENT_EXCESSIVE_ERRORS	0x0020
-#define I40E_AQ_EVENT_SIGNAL_DETECT	0x0040
-#define I40E_AQ_EVENT_AN_COMPLETED	0x0080
 #define I40E_AQ_EVENT_MODULE_QUAL_FAIL	0x0100
-#define I40E_AQ_EVENT_PORT_TX_SUSPENDED	0x0200
 	u8	reserved1[6];
 };
 
@@ -2209,13 +1812,6 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_set_lb_mode);
 /* Set PHY Debug command (0x0622) */
 struct i40e_aqc_set_phy_debug {
 	u8	command_flags;
-#define I40E_AQ_PHY_DEBUG_RESET_INTERNAL	0x02
-#define I40E_AQ_PHY_DEBUG_RESET_EXTERNAL_SHIFT	2
-#define I40E_AQ_PHY_DEBUG_RESET_EXTERNAL_MASK	(0x03 << \
-					I40E_AQ_PHY_DEBUG_RESET_EXTERNAL_SHIFT)
-#define I40E_AQ_PHY_DEBUG_RESET_EXTERNAL_NONE	0x00
-#define I40E_AQ_PHY_DEBUG_RESET_EXTERNAL_HARD	0x01
-#define I40E_AQ_PHY_DEBUG_RESET_EXTERNAL_SOFT	0x02
 /* Disable link manageability on a single port */
 #define I40E_AQ_PHY_DEBUG_DISABLE_LINK_FW	0x10
 /* Disable link manageability on all ports */
@@ -2247,7 +1843,6 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_run_phy_activity);
 /* Get PHY Register command (0x0629) */
 struct i40e_aqc_phy_register_access {
 	u8	phy_interface;
-#define I40E_AQ_PHY_REG_ACCESS_INTERNAL	0
 #define I40E_AQ_PHY_REG_ACCESS_EXTERNAL	1
 #define I40E_AQ_PHY_REG_ACCESS_EXTERNAL_MODULE	2
 	u8	dev_address;
@@ -2274,9 +1869,7 @@ struct i40e_aqc_nvm_update {
 #define I40E_AQ_NVM_LAST_CMD			0x01
 #define I40E_AQ_NVM_REARRANGE_TO_FLAT		0x20
 #define I40E_AQ_NVM_REARRANGE_TO_STRUCT		0x40
-#define I40E_AQ_NVM_FLASH_ONLY			0x80
 #define I40E_AQ_NVM_PRESERVATION_FLAGS_SHIFT	1
-#define I40E_AQ_NVM_PRESERVATION_FLAGS_MASK	0x03
 #define I40E_AQ_NVM_PRESERVATION_FLAGS_SELECTED	0x03
 #define I40E_AQ_NVM_PRESERVATION_FLAGS_ALL	0x01
 	u8	module_pointer;
@@ -2291,9 +1884,6 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_nvm_update);
 /* NVM Config Read (indirect 0x0704) */
 struct i40e_aqc_nvm_config_read {
 	__le16	cmd_flags;
-#define I40E_AQ_ANVM_SINGLE_OR_MULTIPLE_FEATURES_MASK	1 
-#define I40E_AQ_ANVM_READ_SINGLE_FEATURE		0 
-#define I40E_AQ_ANVM_READ_MULTIPLE_FEATURES		1
 	__le16	element_count;
 	__le16	element_id;	/* Feature/field ID */
 	__le16	element_id_msw;	/* MSWord of field ID */
@@ -2315,16 +1905,8 @@ struct i40e_aqc_nvm_config_write {
 I40E_CHECK_CMD_LENGTH(i40e_aqc_nvm_config_write);
 
 /* Used for 0x0704 as well as for 0x0705 commands */
-#define I40E_AQ_ANVM_FEATURE_OR_IMMEDIATE_SHIFT		1
-#define I40E_AQ_ANVM_FEATURE_OR_IMMEDIATE_MASK \
-				BIT(I40E_AQ_ANVM_FEATURE_OR_IMMEDIATE_SHIFT)
-#define I40E_AQ_ANVM_FEATURE		0
-#define I40E_AQ_ANVM_IMMEDIATE_FIELD	BIT(FEATURE_OR_IMMEDIATE_SHIFT)
 struct i40e_aqc_nvm_config_data_feature {
 	__le16 feature_id;
-#define I40E_AQ_ANVM_FEATURE_OPTION_OEM_ONLY		0x01
-#define I40E_AQ_ANVM_FEATURE_OPTION_DWORD_MAP		0x08
-#define I40E_AQ_ANVM_FEATURE_OPTION_POR_CSR		0x10
 	__le16 feature_options;
 	__le16 feature_selection;
 };
@@ -2344,7 +1926,6 @@ I40E_CHECK_STRUCT_LEN(0xc, i40e_aqc_nvm_config_data_immediate_field);
  * no command data struct used
  */
 struct i40e_aqc_nvm_oem_post_update {
-#define I40E_AQ_NVM_OEM_POST_UPDATE_EXTERNAL_DATA	0x01
 	u8 sel_data;
 	u8 reserved[7];
 };
@@ -2366,9 +1947,6 @@ I40E_CHECK_STRUCT_LEN(0x28, i40e_aqc_nvm_oem_post_update_buffer);
  */
 struct i40e_aqc_thermal_sensor {
 	u8 sensor_action;
-#define I40E_AQ_THERMAL_SENSOR_READ_CONFIG	0
-#define I40E_AQ_THERMAL_SENSOR_SET_CONFIG	1
-#define I40E_AQ_THERMAL_SENSOR_READ_TEMP	2
 	u8 reserved[7];
 	__le32	addr_high;
 	__le32	addr_low;
@@ -2421,10 +1999,6 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_alternate_ind_write);
  */
 struct i40e_aqc_alternate_write_done {
 	__le16	cmd_flags;
-#define I40E_AQ_ALTERNATE_MODE_BIOS_MASK	1
-#define I40E_AQ_ALTERNATE_MODE_BIOS_LEGACY	0
-#define I40E_AQ_ALTERNATE_MODE_BIOS_UEFI	1
-#define I40E_AQ_ALTERNATE_RESET_NEEDED		2
 	u8	reserved[14];
 };
 
@@ -2433,8 +2007,6 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_alternate_write_done);
 /* Set OEM mode (direct 0x0905) */
 struct i40e_aqc_alternate_set_mode {
 	__le32	mode;
-#define I40E_AQ_ALTERNATE_MODE_NONE	0
-#define I40E_AQ_ALTERNATE_MODE_OEM	1
 	u8	reserved[12];
 };
 
@@ -2460,13 +2032,9 @@ struct i40e_aqc_lldp_get_mib {
 #define I40E_AQ_LLDP_MIB_TYPE_MASK		0x3
 #define I40E_AQ_LLDP_MIB_LOCAL			0x0
 #define I40E_AQ_LLDP_MIB_REMOTE			0x1
-#define I40E_AQ_LLDP_MIB_LOCAL_AND_REMOTE	0x2
 #define I40E_AQ_LLDP_BRIDGE_TYPE_MASK		0xC
 #define I40E_AQ_LLDP_BRIDGE_TYPE_SHIFT		0x2
 #define I40E_AQ_LLDP_BRIDGE_TYPE_NEAREST_BRIDGE	0x0
-#define I40E_AQ_LLDP_BRIDGE_TYPE_NON_TPMR	0x1
-#define I40E_AQ_LLDP_TX_SHIFT			0x4
-#define I40E_AQ_LLDP_TX_MASK			(0x03 << I40E_AQ_LLDP_TX_SHIFT)
 /* TX pause flags use I40E_AQ_LINK_TX_* above */
 	__le16	local_len;
 	__le16	remote_len;
@@ -2482,7 +2050,6 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_lldp_get_mib);
  */
 struct i40e_aqc_lldp_update_mib {
 	u8	command;
-#define I40E_AQ_LLDP_MIB_UPDATE_ENABLE	0x0
 #define I40E_AQ_LLDP_MIB_UPDATE_DISABLE	0x1
 	u8	reserved[7];
 	__le32	addr_high;
@@ -2521,7 +2088,6 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_lldp_update_tlv);
 /* Stop LLDP (direct 0x0A05) */
 struct i40e_aqc_lldp_stop {
 	u8	command;
-#define I40E_AQ_LLDP_AGENT_STOP			0x0
 #define I40E_AQ_LLDP_AGENT_SHUTDOWN		0x1
 #define I40E_AQ_LLDP_AGENT_STOP_PERSIST		0x2
 	u8	reserved[15];
@@ -2627,13 +2193,6 @@ I40E_CHECK_STRUCT_LEN(0x20, i40e_aqc_get_cee_dcb_cfg_resp);
  *	Used to replace the local MIB of a given LLDP agent. e.g. DCBx
  */
 struct i40e_aqc_lldp_set_local_mib {
-#define SET_LOCAL_MIB_AC_TYPE_DCBX_SHIFT	0
-#define SET_LOCAL_MIB_AC_TYPE_DCBX_MASK	BIT(SET_LOCAL_MIB_AC_TYPE_DCBX_SHIFT)
-#define SET_LOCAL_MIB_AC_TYPE_LOCAL_MIB	0x0
-#define SET_LOCAL_MIB_AC_TYPE_NON_WILLING_APPS_SHIFT	(1)
-#define SET_LOCAL_MIB_AC_TYPE_NON_WILLING_APPS_MASK \
-			BIT(SET_LOCAL_MIB_AC_TYPE_NON_WILLING_APPS_SHIFT)
-#define SET_LOCAL_MIB_AC_TYPE_NON_WILLING_APPS		0x1
 	u8	type;
 	u8	reserved0;
 	__le16	length;
@@ -2648,9 +2207,6 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_lldp_set_local_mib);
  *	Used for stopping/starting specific LLDP agent. e.g. DCBx
  */
 struct i40e_aqc_lldp_stop_start_specific_agent {
-#define I40E_AQC_START_SPECIFIC_AGENT_SHIFT	0
-#define I40E_AQC_START_SPECIFIC_AGENT_MASK \
-				BIT(I40E_AQC_START_SPECIFIC_AGENT_SHIFT)
 	u8	command;
 	u8	reserved[15];
 };
@@ -2660,7 +2216,6 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_lldp_stop_start_specific_agent);
 /* Restore LLDP Agent factory settings (direct 0x0A0A) */
 struct i40e_aqc_lldp_restore {
 	u8	command;
-#define I40E_AQ_LLDP_AGENT_RESTORE_NOT		0x0
 #define I40E_AQ_LLDP_AGENT_RESTORE		0x1
 	u8	reserved[15];
 };
@@ -2674,8 +2229,6 @@ struct i40e_aqc_add_udp_tunnel {
 	u8	protocol_type;
 #define I40E_AQC_TUNNEL_TYPE_VXLAN	0x00
 #define I40E_AQC_TUNNEL_TYPE_NGE	0x01
-#define I40E_AQC_TUNNEL_TYPE_TEREDO	0x10
-#define I40E_AQC_TUNNEL_TYPE_VXLAN_GPE	0x11
 	u8	reserved1[10];
 };
 
@@ -2685,8 +2238,6 @@ struct i40e_aqc_add_udp_tunnel_completion {
 	__le16	udp_port;
 	u8	filter_entry_index;
 	u8	multiple_pfs;
-#define I40E_AQC_SINGLE_PF		0x0
-#define I40E_AQC_MULTIPLE_PFS		0x1
 	u8	total_filters;
 	u8	reserved[11];
 };
@@ -2759,16 +2310,8 @@ struct i40e_aqc_tunnel_key_structure {
 	u8	key1_len;  /* 0 to 15 */
 	u8	key2_len;  /* 0 to 15 */
 	u8	flags;
-#define I40E_AQC_TUNNEL_KEY_STRUCT_OVERRIDE	0x01
 /* response flags */
-#define I40E_AQC_TUNNEL_KEY_STRUCT_SUCCESS	0x01
-#define I40E_AQC_TUNNEL_KEY_STRUCT_MODIFIED	0x02
-#define I40E_AQC_TUNNEL_KEY_STRUCT_OVERRIDDEN	0x03
 	u8	network_key_index;
-#define I40E_AQC_NETWORK_KEY_INDEX_VXLAN		0x0
-#define I40E_AQC_NETWORK_KEY_INDEX_NGE			0x1
-#define I40E_AQC_NETWORK_KEY_INDEX_FLEX_MAC_IN_UDP	0x2
-#define I40E_AQC_NETWORK_KEY_INDEX_GRE			0x3
 	u8	reserved[10];
 };
 
@@ -2777,9 +2320,6 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_tunnel_key_structure);
 /* OEM mode commands (direct 0xFE0x) */
 struct i40e_aqc_oem_param_change {
 	__le32	param_type;
-#define I40E_AQ_OEM_PARAM_TYPE_PF_CTL	0
-#define I40E_AQ_OEM_PARAM_TYPE_BW_CTL	1
-#define I40E_AQ_OEM_PARAM_MAC		2
 	__le32	param_value1;
 	__le16	param_value2;
 	u8	reserved[6];
@@ -2789,8 +2329,6 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_oem_param_change);
 
 struct i40e_aqc_oem_state_change {
 	__le32	state;
-#define I40E_AQ_OEM_STATE_LINK_DOWN	0x0
-#define I40E_AQ_OEM_STATE_LINK_UP	0x1
 	u8	reserved[12];
 };
 
@@ -2826,14 +2364,8 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_opc_oem_ocbb_initialize);
 
 struct i40e_acq_set_test_mode {
 	u8	mode;
-#define I40E_AQ_TEST_PARTIAL	0
-#define I40E_AQ_TEST_FULL	1
-#define I40E_AQ_TEST_NVM	2
 	u8	reserved[3];
 	u8	command;
-#define I40E_AQ_TEST_OPEN	0
-#define I40E_AQ_TEST_CLOSE	1
-#define I40E_AQ_TEST_INC	2
 	u8	reserved2[3];
 	__le32	address_high;
 	__le32	address_low;
@@ -2875,18 +2407,6 @@ I40E_CHECK_CMD_LENGTH(i40e_aqc_debug_modify_reg);
 
 /* dump internal data (0xFF08, indirect) */
 
-#define I40E_AQ_CLUSTER_ID_AUX		0
-#define I40E_AQ_CLUSTER_ID_SWITCH_FLU	1
-#define I40E_AQ_CLUSTER_ID_TXSCHED	2
-#define I40E_AQ_CLUSTER_ID_HMC		3
-#define I40E_AQ_CLUSTER_ID_MAC0		4
-#define I40E_AQ_CLUSTER_ID_MAC1		5
-#define I40E_AQ_CLUSTER_ID_MAC2		6
-#define I40E_AQ_CLUSTER_ID_MAC3		7
-#define I40E_AQ_CLUSTER_ID_DCB		8
-#define I40E_AQ_CLUSTER_ID_EMP_MEM	9
-#define I40E_AQ_CLUSTER_ID_PKT_BUF	10
-#define I40E_AQ_CLUSTER_ID_ALTRAM	11
 
 struct i40e_aqc_debug_dump_internals {
 	u8	cluster_id;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index d4055037af89..7f982fdecbae 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -1455,10 +1455,6 @@ static u32 i40e_led_is_mine(struct i40e_hw *hw, int idx)
 	return gpio_val;
 }
 
-#define I40E_COMBINED_ACTIVITY 0xA
-#define I40E_FILTER_ACTIVITY 0xE
-#define I40E_LINK_ACTIVITY 0xC
-#define I40E_MAC_ACTIVITY 0xD
 #define I40E_FW_LED BIT(4)
 #define I40E_LED_MODE_VALID (I40E_GLGEN_GPIO_CTL_LED_MODE_MASK >> \
 			     I40E_GLGEN_GPIO_CTL_LED_MODE_SHIFT)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_dcb.h b/drivers/net/ethernet/intel/i40e/i40e_dcb.h
index ba86ad833bee..2b1a2e81ac73 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_dcb.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_dcb.h
@@ -6,10 +6,8 @@
 
 #include "i40e_type.h"
 
-#define I40E_DCBX_STATUS_NOT_STARTED	0
 #define I40E_DCBX_STATUS_IN_PROGRESS	1
 #define I40E_DCBX_STATUS_DONE		2
-#define I40E_DCBX_STATUS_MULTIPLE_PEERS	3
 #define I40E_DCBX_STATUS_DISABLED	7
 
 #define I40E_TLV_TYPE_END		0
@@ -24,7 +22,6 @@
 #define I40E_CEE_DCBX_OUI		0x001b21
 #define I40E_CEE_DCBX_TYPE		2
 
-#define I40E_CEE_SUBTYPE_CTRL		1
 #define I40E_CEE_SUBTYPE_PG_CFG		2
 #define I40E_CEE_SUBTYPE_PFC_CFG	3
 #define I40E_CEE_SUBTYPE_APP_PRI	4
@@ -105,9 +102,7 @@ struct i40e_cee_ctrl_tlv {
 struct i40e_cee_feat_tlv {
 	struct i40e_cee_tlv_hdr hdr;
 	u8 en_will_err; /* Bits: |En|Will|Err|Reserved(5)| */
-#define I40E_CEE_FEAT_TLV_ENABLE_MASK	0x80
 #define I40E_CEE_FEAT_TLV_WILLING_MASK	0x40
-#define I40E_CEE_FEAT_TLV_ERR_MASK	0x20
 	u8 subtype;
 	u8 tlvinfo[1];
 };
diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index 99ea543dd245..9cb9b781451c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -688,7 +688,6 @@ static void i40e_dbg_dump_vf_all(struct i40e_pf *pf)
 			i40e_dbg_dump_vf(pf, i);
 }
 
-#define I40E_MAX_DEBUG_OUT_BUFFER (4096*4)
 /**
  * i40e_dbg_command_write - write into command datum
  * @filp: the opened file
diff --git a/drivers/net/ethernet/intel/i40e/i40e_devids.h b/drivers/net/ethernet/intel/i40e/i40e_devids.h
index bf15a868292f..33df3bf2f73b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_devids.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_devids.h
@@ -32,8 +32,5 @@
 #define I40E_DEV_ID_10G_BASE_T_X722	0x37D2
 #define I40E_DEV_ID_SFP_I_X722		0x37D3
 
-#define i40e_is_40G_device(d)		((d) == I40E_DEV_ID_QSFP_A  || \
-					 (d) == I40E_DEV_ID_QSFP_B  || \
-					 (d) == I40E_DEV_ID_QSFP_C)
 
 #endif /* _I40E_DEVIDS_H_ */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_hmc.h b/drivers/net/ethernet/intel/i40e/i40e_hmc.h
index 1c78de838857..3113792afaff 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_hmc.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_hmc.h
@@ -14,7 +14,6 @@ struct i40e_hw;
 #define I40E_HMC_DIRECT_BP_SIZE		0x200000 /* 2M */
 #define I40E_HMC_PAGED_BP_SIZE		4096
 #define I40E_HMC_PD_BP_BUF_ALIGNMENT	4096
-#define I40E_FIRST_VF_FPM_ID		16
 
 struct i40e_hmc_obj_info {
 	u64 base;	/* base addr in FPM */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 8c3e753bfb9d..87382368c4c3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -6484,8 +6484,6 @@ static int i40e_init_pf_dcb(struct i40e_pf *pf)
 	return err;
 }
 #endif /* CONFIG_I40E_DCB */
-#define SPEED_SIZE 14
-#define FC_SIZE 8
 /**
  * i40e_print_link_message - print link up or down
  * @vsi: the VSI for which link needs a message
@@ -8947,7 +8945,6 @@ u32 i40e_get_current_atr_cnt(struct i40e_pf *pf)
  * filter miss error on Rx queue 0. Accumulating enough error messages before
  * reacting will make sure we don't cause flush too often.
  */
-#define I40E_MAX_FD_PROGRAM_ERROR 256
 
 /**
  * i40e_fdir_reinit_subtask - Worker thread to reinit FDIR filter table
diff --git a/drivers/net/ethernet/intel/i40e/i40e_osdep.h b/drivers/net/ethernet/intel/i40e/i40e_osdep.h
index c302ef2524f8..2f6815b2f8df 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_osdep.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_osdep.h
@@ -26,7 +26,6 @@ do {										\
 #define wr32(a, reg, value)	writel((value), ((a)->hw_addr + (reg)))
 #define rd32(a, reg)		readl((a)->hw_addr + (reg))
 
-#define wr64(a, reg, value)	writeq((value), ((a)->hw_addr + (reg)))
 #define rd64(a, reg)		readq((a)->hw_addr + (reg))
 #define i40e_flush(a)		readl((a)->hw_addr + I40E_GLGEN_STAT)
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_register.h b/drivers/net/ethernet/intel/i40e/i40e_register.h
index d35d690ca10f..0653b3bed2f2 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_register.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_register.h
@@ -4,53 +4,14 @@
 #ifndef _I40E_REGISTER_H_
 #define _I40E_REGISTER_H_
 
-#define I40E_GL_ARQBAH 0x000801C0 /* Reset: EMPR */
-#define I40E_GL_ARQBAH_ARQBAH_SHIFT 0
-#define I40E_GL_ARQBAH_ARQBAH_MASK I40E_MASK(0xFFFFFFFF, I40E_GL_ARQBAH_ARQBAH_SHIFT)
-#define I40E_GL_ARQBAL 0x000800C0 /* Reset: EMPR */
-#define I40E_GL_ARQBAL_ARQBAL_SHIFT 0
-#define I40E_GL_ARQBAL_ARQBAL_MASK I40E_MASK(0xFFFFFFFF, I40E_GL_ARQBAL_ARQBAL_SHIFT)
-#define I40E_GL_ARQH 0x000803C0 /* Reset: EMPR */
-#define I40E_GL_ARQH_ARQH_SHIFT 0
-#define I40E_GL_ARQH_ARQH_MASK I40E_MASK(0x3FF, I40E_GL_ARQH_ARQH_SHIFT)
-#define I40E_GL_ARQT 0x000804C0 /* Reset: EMPR */
-#define I40E_GL_ARQT_ARQT_SHIFT 0
-#define I40E_GL_ARQT_ARQT_MASK I40E_MASK(0x3FF, I40E_GL_ARQT_ARQT_SHIFT)
-#define I40E_GL_ATQBAH 0x00080140 /* Reset: EMPR */
-#define I40E_GL_ATQBAH_ATQBAH_SHIFT 0
-#define I40E_GL_ATQBAH_ATQBAH_MASK I40E_MASK(0xFFFFFFFF, I40E_GL_ATQBAH_ATQBAH_SHIFT)
-#define I40E_GL_ATQBAL 0x00080040 /* Reset: EMPR */
-#define I40E_GL_ATQBAL_ATQBAL_SHIFT 0
-#define I40E_GL_ATQBAL_ATQBAL_MASK I40E_MASK(0xFFFFFFFF, I40E_GL_ATQBAL_ATQBAL_SHIFT)
-#define I40E_GL_ATQH 0x00080340 /* Reset: EMPR */
-#define I40E_GL_ATQH_ATQH_SHIFT 0
-#define I40E_GL_ATQH_ATQH_MASK I40E_MASK(0x3FF, I40E_GL_ATQH_ATQH_SHIFT)
-#define I40E_GL_ATQLEN 0x00080240 /* Reset: EMPR */
-#define I40E_GL_ATQLEN_ATQLEN_SHIFT 0
-#define I40E_GL_ATQLEN_ATQLEN_MASK I40E_MASK(0x3FF, I40E_GL_ATQLEN_ATQLEN_SHIFT)
-#define I40E_GL_ATQLEN_ATQVFE_SHIFT 28
-#define I40E_GL_ATQLEN_ATQVFE_MASK I40E_MASK(0x1, I40E_GL_ATQLEN_ATQVFE_SHIFT)
-#define I40E_GL_ATQLEN_ATQOVFL_SHIFT 29
-#define I40E_GL_ATQLEN_ATQOVFL_MASK I40E_MASK(0x1, I40E_GL_ATQLEN_ATQOVFL_SHIFT)
 #define I40E_GL_ATQLEN_ATQCRIT_SHIFT 30
 #define I40E_GL_ATQLEN_ATQCRIT_MASK I40E_MASK(0x1, I40E_GL_ATQLEN_ATQCRIT_SHIFT)
-#define I40E_GL_ATQLEN_ATQENABLE_SHIFT 31
-#define I40E_GL_ATQLEN_ATQENABLE_MASK I40E_MASK(0x1, I40E_GL_ATQLEN_ATQENABLE_SHIFT)
-#define I40E_GL_ATQT 0x00080440 /* Reset: EMPR */
-#define I40E_GL_ATQT_ATQT_SHIFT 0
-#define I40E_GL_ATQT_ATQT_MASK I40E_MASK(0x3FF, I40E_GL_ATQT_ATQT_SHIFT)
 #define I40E_PF_ARQBAH 0x00080180 /* Reset: EMPR */
-#define I40E_PF_ARQBAH_ARQBAH_SHIFT 0
-#define I40E_PF_ARQBAH_ARQBAH_MASK I40E_MASK(0xFFFFFFFF, I40E_PF_ARQBAH_ARQBAH_SHIFT)
 #define I40E_PF_ARQBAL 0x00080080 /* Reset: EMPR */
-#define I40E_PF_ARQBAL_ARQBAL_SHIFT 0
-#define I40E_PF_ARQBAL_ARQBAL_MASK I40E_MASK(0xFFFFFFFF, I40E_PF_ARQBAL_ARQBAL_SHIFT)
 #define I40E_PF_ARQH 0x00080380 /* Reset: EMPR */
 #define I40E_PF_ARQH_ARQH_SHIFT 0
 #define I40E_PF_ARQH_ARQH_MASK I40E_MASK(0x3FF, I40E_PF_ARQH_ARQH_SHIFT)
 #define I40E_PF_ARQLEN 0x00080280 /* Reset: EMPR */
-#define I40E_PF_ARQLEN_ARQLEN_SHIFT 0
-#define I40E_PF_ARQLEN_ARQLEN_MASK I40E_MASK(0x3FF, I40E_PF_ARQLEN_ARQLEN_SHIFT)
 #define I40E_PF_ARQLEN_ARQVFE_SHIFT 28
 #define I40E_PF_ARQLEN_ARQVFE_MASK I40E_MASK(0x1, I40E_PF_ARQLEN_ARQVFE_SHIFT)
 #define I40E_PF_ARQLEN_ARQOVFL_SHIFT 29
@@ -60,20 +21,10 @@
 #define I40E_PF_ARQLEN_ARQENABLE_SHIFT 31
 #define I40E_PF_ARQLEN_ARQENABLE_MASK I40E_MASK(0x1u, I40E_PF_ARQLEN_ARQENABLE_SHIFT)
 #define I40E_PF_ARQT 0x00080480 /* Reset: EMPR */
-#define I40E_PF_ARQT_ARQT_SHIFT 0
-#define I40E_PF_ARQT_ARQT_MASK I40E_MASK(0x3FF, I40E_PF_ARQT_ARQT_SHIFT)
 #define I40E_PF_ATQBAH 0x00080100 /* Reset: EMPR */
-#define I40E_PF_ATQBAH_ATQBAH_SHIFT 0
-#define I40E_PF_ATQBAH_ATQBAH_MASK I40E_MASK(0xFFFFFFFF, I40E_PF_ATQBAH_ATQBAH_SHIFT)
 #define I40E_PF_ATQBAL 0x00080000 /* Reset: EMPR */
-#define I40E_PF_ATQBAL_ATQBAL_SHIFT 0
-#define I40E_PF_ATQBAL_ATQBAL_MASK I40E_MASK(0xFFFFFFFF, I40E_PF_ATQBAL_ATQBAL_SHIFT)
 #define I40E_PF_ATQH 0x00080300 /* Reset: EMPR */
-#define I40E_PF_ATQH_ATQH_SHIFT 0
-#define I40E_PF_ATQH_ATQH_MASK I40E_MASK(0x3FF, I40E_PF_ATQH_ATQH_SHIFT)
 #define I40E_PF_ATQLEN 0x00080200 /* Reset: EMPR */
-#define I40E_PF_ATQLEN_ATQLEN_SHIFT 0
-#define I40E_PF_ATQLEN_ATQLEN_MASK I40E_MASK(0x3FF, I40E_PF_ATQLEN_ATQLEN_SHIFT)
 #define I40E_PF_ATQLEN_ATQVFE_SHIFT 28
 #define I40E_PF_ATQLEN_ATQVFE_MASK I40E_MASK(0x1, I40E_PF_ATQLEN_ATQVFE_SHIFT)
 #define I40E_PF_ATQLEN_ATQOVFL_SHIFT 29
@@ -83,284 +34,13 @@
 #define I40E_PF_ATQLEN_ATQENABLE_SHIFT 31
 #define I40E_PF_ATQLEN_ATQENABLE_MASK I40E_MASK(0x1u, I40E_PF_ATQLEN_ATQENABLE_SHIFT)
 #define I40E_PF_ATQT 0x00080400 /* Reset: EMPR */
-#define I40E_PF_ATQT_ATQT_SHIFT 0
-#define I40E_PF_ATQT_ATQT_MASK I40E_MASK(0x3FF, I40E_PF_ATQT_ATQT_SHIFT)
-#define I40E_VF_ARQBAH(_VF) (0x00081400 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: EMPR */
-#define I40E_VF_ARQBAH_MAX_INDEX 127
-#define I40E_VF_ARQBAH_ARQBAH_SHIFT 0
-#define I40E_VF_ARQBAH_ARQBAH_MASK I40E_MASK(0xFFFFFFFF, I40E_VF_ARQBAH_ARQBAH_SHIFT)
-#define I40E_VF_ARQBAL(_VF) (0x00080C00 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: EMPR */
-#define I40E_VF_ARQBAL_MAX_INDEX 127
-#define I40E_VF_ARQBAL_ARQBAL_SHIFT 0
-#define I40E_VF_ARQBAL_ARQBAL_MASK I40E_MASK(0xFFFFFFFF, I40E_VF_ARQBAL_ARQBAL_SHIFT)
-#define I40E_VF_ARQH(_VF) (0x00082400 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: EMPR */
-#define I40E_VF_ARQH_MAX_INDEX 127
-#define I40E_VF_ARQH_ARQH_SHIFT 0
-#define I40E_VF_ARQH_ARQH_MASK I40E_MASK(0x3FF, I40E_VF_ARQH_ARQH_SHIFT)
-#define I40E_VF_ARQLEN(_VF) (0x00081C00 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: EMPR */
-#define I40E_VF_ARQLEN_MAX_INDEX 127
-#define I40E_VF_ARQLEN_ARQLEN_SHIFT 0
-#define I40E_VF_ARQLEN_ARQLEN_MASK I40E_MASK(0x3FF, I40E_VF_ARQLEN_ARQLEN_SHIFT)
-#define I40E_VF_ARQLEN_ARQVFE_SHIFT 28
-#define I40E_VF_ARQLEN_ARQVFE_MASK I40E_MASK(0x1, I40E_VF_ARQLEN_ARQVFE_SHIFT)
-#define I40E_VF_ARQLEN_ARQOVFL_SHIFT 29
-#define I40E_VF_ARQLEN_ARQOVFL_MASK I40E_MASK(0x1, I40E_VF_ARQLEN_ARQOVFL_SHIFT)
-#define I40E_VF_ARQLEN_ARQCRIT_SHIFT 30
-#define I40E_VF_ARQLEN_ARQCRIT_MASK I40E_MASK(0x1, I40E_VF_ARQLEN_ARQCRIT_SHIFT)
-#define I40E_VF_ARQLEN_ARQENABLE_SHIFT 31
-#define I40E_VF_ARQLEN_ARQENABLE_MASK I40E_MASK(0x1u, I40E_VF_ARQLEN_ARQENABLE_SHIFT)
-#define I40E_VF_ARQT(_VF) (0x00082C00 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: EMPR */
-#define I40E_VF_ARQT_MAX_INDEX 127
-#define I40E_VF_ARQT_ARQT_SHIFT 0
-#define I40E_VF_ARQT_ARQT_MASK I40E_MASK(0x3FF, I40E_VF_ARQT_ARQT_SHIFT)
-#define I40E_VF_ATQBAH(_VF) (0x00081000 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: EMPR */
-#define I40E_VF_ATQBAH_MAX_INDEX 127
-#define I40E_VF_ATQBAH_ATQBAH_SHIFT 0
-#define I40E_VF_ATQBAH_ATQBAH_MASK I40E_MASK(0xFFFFFFFF, I40E_VF_ATQBAH_ATQBAH_SHIFT)
-#define I40E_VF_ATQBAL(_VF) (0x00080800 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: EMPR */
-#define I40E_VF_ATQBAL_MAX_INDEX 127
-#define I40E_VF_ATQBAL_ATQBAL_SHIFT 0
-#define I40E_VF_ATQBAL_ATQBAL_MASK I40E_MASK(0xFFFFFFFF, I40E_VF_ATQBAL_ATQBAL_SHIFT)
-#define I40E_VF_ATQH(_VF) (0x00082000 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: EMPR */
-#define I40E_VF_ATQH_MAX_INDEX 127
-#define I40E_VF_ATQH_ATQH_SHIFT 0
-#define I40E_VF_ATQH_ATQH_MASK I40E_MASK(0x3FF, I40E_VF_ATQH_ATQH_SHIFT)
-#define I40E_VF_ATQLEN(_VF) (0x00081800 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: EMPR */
-#define I40E_VF_ATQLEN_MAX_INDEX 127
-#define I40E_VF_ATQLEN_ATQLEN_SHIFT 0
-#define I40E_VF_ATQLEN_ATQLEN_MASK I40E_MASK(0x3FF, I40E_VF_ATQLEN_ATQLEN_SHIFT)
-#define I40E_VF_ATQLEN_ATQVFE_SHIFT 28
-#define I40E_VF_ATQLEN_ATQVFE_MASK I40E_MASK(0x1, I40E_VF_ATQLEN_ATQVFE_SHIFT)
-#define I40E_VF_ATQLEN_ATQOVFL_SHIFT 29
-#define I40E_VF_ATQLEN_ATQOVFL_MASK I40E_MASK(0x1, I40E_VF_ATQLEN_ATQOVFL_SHIFT)
-#define I40E_VF_ATQLEN_ATQCRIT_SHIFT 30
-#define I40E_VF_ATQLEN_ATQCRIT_MASK I40E_MASK(0x1, I40E_VF_ATQLEN_ATQCRIT_SHIFT)
-#define I40E_VF_ATQLEN_ATQENABLE_SHIFT 31
-#define I40E_VF_ATQLEN_ATQENABLE_MASK I40E_MASK(0x1u, I40E_VF_ATQLEN_ATQENABLE_SHIFT)
-#define I40E_VF_ATQT(_VF) (0x00082800 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: EMPR */
-#define I40E_VF_ATQT_MAX_INDEX 127
-#define I40E_VF_ATQT_ATQT_SHIFT 0
-#define I40E_VF_ATQT_ATQT_MASK I40E_MASK(0x3FF, I40E_VF_ATQT_ATQT_SHIFT)
-#define I40E_PRT_L2TAGSEN 0x001C0B20 /* Reset: CORER */
-#define I40E_PRT_L2TAGSEN_ENABLE_SHIFT 0
-#define I40E_PRT_L2TAGSEN_ENABLE_MASK I40E_MASK(0xFF, I40E_PRT_L2TAGSEN_ENABLE_SHIFT)
-#define I40E_PFCM_LAN_ERRDATA 0x0010C080 /* Reset: PFR */
-#define I40E_PFCM_LAN_ERRDATA_ERROR_CODE_SHIFT 0
-#define I40E_PFCM_LAN_ERRDATA_ERROR_CODE_MASK I40E_MASK(0xF, I40E_PFCM_LAN_ERRDATA_ERROR_CODE_SHIFT)
-#define I40E_PFCM_LAN_ERRDATA_Q_TYPE_SHIFT 4
-#define I40E_PFCM_LAN_ERRDATA_Q_TYPE_MASK I40E_MASK(0x7, I40E_PFCM_LAN_ERRDATA_Q_TYPE_SHIFT)
-#define I40E_PFCM_LAN_ERRDATA_Q_NUM_SHIFT 8
-#define I40E_PFCM_LAN_ERRDATA_Q_NUM_MASK I40E_MASK(0xFFF, I40E_PFCM_LAN_ERRDATA_Q_NUM_SHIFT)
-#define I40E_PFCM_LAN_ERRINFO 0x0010C000 /* Reset: PFR */
-#define I40E_PFCM_LAN_ERRINFO_ERROR_VALID_SHIFT 0
-#define I40E_PFCM_LAN_ERRINFO_ERROR_VALID_MASK I40E_MASK(0x1, I40E_PFCM_LAN_ERRINFO_ERROR_VALID_SHIFT)
-#define I40E_PFCM_LAN_ERRINFO_ERROR_INST_SHIFT 4
-#define I40E_PFCM_LAN_ERRINFO_ERROR_INST_MASK I40E_MASK(0x7, I40E_PFCM_LAN_ERRINFO_ERROR_INST_SHIFT)
-#define I40E_PFCM_LAN_ERRINFO_DBL_ERROR_CNT_SHIFT 8
-#define I40E_PFCM_LAN_ERRINFO_DBL_ERROR_CNT_MASK I40E_MASK(0xFF, I40E_PFCM_LAN_ERRINFO_DBL_ERROR_CNT_SHIFT)
-#define I40E_PFCM_LAN_ERRINFO_RLU_ERROR_CNT_SHIFT 16
-#define I40E_PFCM_LAN_ERRINFO_RLU_ERROR_CNT_MASK I40E_MASK(0xFF, I40E_PFCM_LAN_ERRINFO_RLU_ERROR_CNT_SHIFT)
-#define I40E_PFCM_LAN_ERRINFO_RLS_ERROR_CNT_SHIFT 24
-#define I40E_PFCM_LAN_ERRINFO_RLS_ERROR_CNT_MASK I40E_MASK(0xFF, I40E_PFCM_LAN_ERRINFO_RLS_ERROR_CNT_SHIFT)
-#define I40E_PFCM_LANCTXCTL 0x0010C300 /* Reset: CORER */
-#define I40E_PFCM_LANCTXCTL_QUEUE_NUM_SHIFT 0
-#define I40E_PFCM_LANCTXCTL_QUEUE_NUM_MASK I40E_MASK(0xFFF, I40E_PFCM_LANCTXCTL_QUEUE_NUM_SHIFT)
-#define I40E_PFCM_LANCTXCTL_SUB_LINE_SHIFT 12
-#define I40E_PFCM_LANCTXCTL_SUB_LINE_MASK I40E_MASK(0x7, I40E_PFCM_LANCTXCTL_SUB_LINE_SHIFT)
-#define I40E_PFCM_LANCTXCTL_QUEUE_TYPE_SHIFT 15
-#define I40E_PFCM_LANCTXCTL_QUEUE_TYPE_MASK I40E_MASK(0x3, I40E_PFCM_LANCTXCTL_QUEUE_TYPE_SHIFT)
-#define I40E_PFCM_LANCTXCTL_OP_CODE_SHIFT 17
-#define I40E_PFCM_LANCTXCTL_OP_CODE_MASK I40E_MASK(0x3, I40E_PFCM_LANCTXCTL_OP_CODE_SHIFT)
-#define I40E_PFCM_LANCTXDATA(_i) (0x0010C100 + ((_i) * 128)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_PFCM_LANCTXDATA_MAX_INDEX 3
-#define I40E_PFCM_LANCTXDATA_DATA_SHIFT 0
-#define I40E_PFCM_LANCTXDATA_DATA_MASK I40E_MASK(0xFFFFFFFF, I40E_PFCM_LANCTXDATA_DATA_SHIFT)
-#define I40E_PFCM_LANCTXSTAT 0x0010C380 /* Reset: CORER */
-#define I40E_PFCM_LANCTXSTAT_CTX_DONE_SHIFT 0
-#define I40E_PFCM_LANCTXSTAT_CTX_DONE_MASK I40E_MASK(0x1, I40E_PFCM_LANCTXSTAT_CTX_DONE_SHIFT)
-#define I40E_PFCM_LANCTXSTAT_CTX_MISS_SHIFT 1
-#define I40E_PFCM_LANCTXSTAT_CTX_MISS_MASK I40E_MASK(0x1, I40E_PFCM_LANCTXSTAT_CTX_MISS_SHIFT)
-#define I40E_VFCM_PE_ERRDATA1(_VF) (0x00138800 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: VFR */
-#define I40E_VFCM_PE_ERRDATA1_MAX_INDEX 127
-#define I40E_VFCM_PE_ERRDATA1_ERROR_CODE_SHIFT 0
-#define I40E_VFCM_PE_ERRDATA1_ERROR_CODE_MASK I40E_MASK(0xF, I40E_VFCM_PE_ERRDATA1_ERROR_CODE_SHIFT)
-#define I40E_VFCM_PE_ERRDATA1_Q_TYPE_SHIFT 4
-#define I40E_VFCM_PE_ERRDATA1_Q_TYPE_MASK I40E_MASK(0x7, I40E_VFCM_PE_ERRDATA1_Q_TYPE_SHIFT)
-#define I40E_VFCM_PE_ERRDATA1_Q_NUM_SHIFT 8
-#define I40E_VFCM_PE_ERRDATA1_Q_NUM_MASK I40E_MASK(0x3FFFF, I40E_VFCM_PE_ERRDATA1_Q_NUM_SHIFT)
-#define I40E_VFCM_PE_ERRINFO1(_VF) (0x00138400 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: VFR */
-#define I40E_VFCM_PE_ERRINFO1_MAX_INDEX 127
-#define I40E_VFCM_PE_ERRINFO1_ERROR_VALID_SHIFT 0
-#define I40E_VFCM_PE_ERRINFO1_ERROR_VALID_MASK I40E_MASK(0x1, I40E_VFCM_PE_ERRINFO1_ERROR_VALID_SHIFT)
-#define I40E_VFCM_PE_ERRINFO1_ERROR_INST_SHIFT 4
-#define I40E_VFCM_PE_ERRINFO1_ERROR_INST_MASK I40E_MASK(0x7, I40E_VFCM_PE_ERRINFO1_ERROR_INST_SHIFT)
-#define I40E_VFCM_PE_ERRINFO1_DBL_ERROR_CNT_SHIFT 8
-#define I40E_VFCM_PE_ERRINFO1_DBL_ERROR_CNT_MASK I40E_MASK(0xFF, I40E_VFCM_PE_ERRINFO1_DBL_ERROR_CNT_SHIFT)
-#define I40E_VFCM_PE_ERRINFO1_RLU_ERROR_CNT_SHIFT 16
-#define I40E_VFCM_PE_ERRINFO1_RLU_ERROR_CNT_MASK I40E_MASK(0xFF, I40E_VFCM_PE_ERRINFO1_RLU_ERROR_CNT_SHIFT)
-#define I40E_VFCM_PE_ERRINFO1_RLS_ERROR_CNT_SHIFT 24
-#define I40E_VFCM_PE_ERRINFO1_RLS_ERROR_CNT_MASK I40E_MASK(0xFF, I40E_VFCM_PE_ERRINFO1_RLS_ERROR_CNT_SHIFT)
-#define I40E_GLDCB_GENC 0x00083044 /* Reset: CORER */
-#define I40E_GLDCB_GENC_PCIRTT_SHIFT 0
-#define I40E_GLDCB_GENC_PCIRTT_MASK I40E_MASK(0xFFFF, I40E_GLDCB_GENC_PCIRTT_SHIFT)
-#define I40E_GLDCB_RUPTI 0x00122618 /* Reset: CORER */
-#define I40E_GLDCB_RUPTI_PFCTIMEOUT_UP_SHIFT 0
-#define I40E_GLDCB_RUPTI_PFCTIMEOUT_UP_MASK I40E_MASK(0xFFFFFFFF, I40E_GLDCB_RUPTI_PFCTIMEOUT_UP_SHIFT)
-#define I40E_PRTDCB_FCCFG 0x001E4640 /* Reset: GLOBR */
-#define I40E_PRTDCB_FCCFG_TFCE_SHIFT 3
-#define I40E_PRTDCB_FCCFG_TFCE_MASK I40E_MASK(0x3, I40E_PRTDCB_FCCFG_TFCE_SHIFT)
-#define I40E_PRTDCB_FCRTV 0x001E4600 /* Reset: GLOBR */
-#define I40E_PRTDCB_FCRTV_FC_REFRESH_TH_SHIFT 0
-#define I40E_PRTDCB_FCRTV_FC_REFRESH_TH_MASK I40E_MASK(0xFFFF, I40E_PRTDCB_FCRTV_FC_REFRESH_TH_SHIFT)
-#define I40E_PRTDCB_FCTTVN(_i) (0x001E4580 + ((_i) * 32)) /* _i=0...3 */ /* Reset: GLOBR */
-#define I40E_PRTDCB_FCTTVN_MAX_INDEX 3
-#define I40E_PRTDCB_FCTTVN_TTV_2N_SHIFT 0
-#define I40E_PRTDCB_FCTTVN_TTV_2N_MASK I40E_MASK(0xFFFF, I40E_PRTDCB_FCTTVN_TTV_2N_SHIFT)
-#define I40E_PRTDCB_FCTTVN_TTV_2N_P1_SHIFT 16
-#define I40E_PRTDCB_FCTTVN_TTV_2N_P1_MASK I40E_MASK(0xFFFF, I40E_PRTDCB_FCTTVN_TTV_2N_P1_SHIFT)
 #define I40E_PRTDCB_GENC 0x00083000 /* Reset: CORER */
-#define I40E_PRTDCB_GENC_RESERVED_1_SHIFT 0
-#define I40E_PRTDCB_GENC_RESERVED_1_MASK I40E_MASK(0x3, I40E_PRTDCB_GENC_RESERVED_1_SHIFT)
-#define I40E_PRTDCB_GENC_NUMTC_SHIFT 2
-#define I40E_PRTDCB_GENC_NUMTC_MASK I40E_MASK(0xF, I40E_PRTDCB_GENC_NUMTC_SHIFT)
-#define I40E_PRTDCB_GENC_FCOEUP_SHIFT 6
-#define I40E_PRTDCB_GENC_FCOEUP_MASK I40E_MASK(0x7, I40E_PRTDCB_GENC_FCOEUP_SHIFT)
-#define I40E_PRTDCB_GENC_FCOEUP_VALID_SHIFT 9
-#define I40E_PRTDCB_GENC_FCOEUP_VALID_MASK I40E_MASK(0x1, I40E_PRTDCB_GENC_FCOEUP_VALID_SHIFT)
 #define I40E_PRTDCB_GENC_PFCLDA_SHIFT 16
 #define I40E_PRTDCB_GENC_PFCLDA_MASK I40E_MASK(0xFFFF, I40E_PRTDCB_GENC_PFCLDA_SHIFT)
 #define I40E_PRTDCB_GENS 0x00083020 /* Reset: CORER */
 #define I40E_PRTDCB_GENS_DCBX_STATUS_SHIFT 0
 #define I40E_PRTDCB_GENS_DCBX_STATUS_MASK I40E_MASK(0x7, I40E_PRTDCB_GENS_DCBX_STATUS_SHIFT)
-#define I40E_PRTDCB_MFLCN 0x001E2400 /* Reset: GLOBR */
-#define I40E_PRTDCB_MFLCN_PMCF_SHIFT 0
-#define I40E_PRTDCB_MFLCN_PMCF_MASK I40E_MASK(0x1, I40E_PRTDCB_MFLCN_PMCF_SHIFT)
-#define I40E_PRTDCB_MFLCN_DPF_SHIFT 1
-#define I40E_PRTDCB_MFLCN_DPF_MASK I40E_MASK(0x1, I40E_PRTDCB_MFLCN_DPF_SHIFT)
-#define I40E_PRTDCB_MFLCN_RPFCM_SHIFT 2
-#define I40E_PRTDCB_MFLCN_RPFCM_MASK I40E_MASK(0x1, I40E_PRTDCB_MFLCN_RPFCM_SHIFT)
-#define I40E_PRTDCB_MFLCN_RFCE_SHIFT 3
-#define I40E_PRTDCB_MFLCN_RFCE_MASK I40E_MASK(0x1, I40E_PRTDCB_MFLCN_RFCE_SHIFT)
-#define I40E_PRTDCB_MFLCN_RPFCE_SHIFT 4
-#define I40E_PRTDCB_MFLCN_RPFCE_MASK I40E_MASK(0xFF, I40E_PRTDCB_MFLCN_RPFCE_SHIFT)
-#define I40E_PRTDCB_RETSC 0x001223E0 /* Reset: CORER */
-#define I40E_PRTDCB_RETSC_ETS_MODE_SHIFT 0
-#define I40E_PRTDCB_RETSC_ETS_MODE_MASK I40E_MASK(0x1, I40E_PRTDCB_RETSC_ETS_MODE_SHIFT)
-#define I40E_PRTDCB_RETSC_NON_ETS_MODE_SHIFT 1
-#define I40E_PRTDCB_RETSC_NON_ETS_MODE_MASK I40E_MASK(0x1, I40E_PRTDCB_RETSC_NON_ETS_MODE_SHIFT)
-#define I40E_PRTDCB_RETSC_ETS_MAX_EXP_SHIFT 2
-#define I40E_PRTDCB_RETSC_ETS_MAX_EXP_MASK I40E_MASK(0xF, I40E_PRTDCB_RETSC_ETS_MAX_EXP_SHIFT)
-#define I40E_PRTDCB_RETSC_LLTC_SHIFT 8
-#define I40E_PRTDCB_RETSC_LLTC_MASK I40E_MASK(0xFF, I40E_PRTDCB_RETSC_LLTC_SHIFT)
-#define I40E_PRTDCB_RETSTCC(_i) (0x00122180 + ((_i) * 32)) /* _i=0...7 */ /* Reset: CORER */
-#define I40E_PRTDCB_RETSTCC_MAX_INDEX 7
-#define I40E_PRTDCB_RETSTCC_BWSHARE_SHIFT 0
-#define I40E_PRTDCB_RETSTCC_BWSHARE_MASK I40E_MASK(0x7F, I40E_PRTDCB_RETSTCC_BWSHARE_SHIFT)
-#define I40E_PRTDCB_RETSTCC_UPINTC_MODE_SHIFT 30
-#define I40E_PRTDCB_RETSTCC_UPINTC_MODE_MASK I40E_MASK(0x1, I40E_PRTDCB_RETSTCC_UPINTC_MODE_SHIFT)
-#define I40E_PRTDCB_RETSTCC_ETSTC_SHIFT 31
-#define I40E_PRTDCB_RETSTCC_ETSTC_MASK I40E_MASK(0x1u, I40E_PRTDCB_RETSTCC_ETSTC_SHIFT)
-#define I40E_PRTDCB_RPPMC 0x001223A0 /* Reset: CORER */
-#define I40E_PRTDCB_RPPMC_LANRPPM_SHIFT 0
-#define I40E_PRTDCB_RPPMC_LANRPPM_MASK I40E_MASK(0xFF, I40E_PRTDCB_RPPMC_LANRPPM_SHIFT)
-#define I40E_PRTDCB_RPPMC_RDMARPPM_SHIFT 8
-#define I40E_PRTDCB_RPPMC_RDMARPPM_MASK I40E_MASK(0xFF, I40E_PRTDCB_RPPMC_RDMARPPM_SHIFT)
-#define I40E_PRTDCB_RPPMC_RX_FIFO_SIZE_SHIFT 16
-#define I40E_PRTDCB_RPPMC_RX_FIFO_SIZE_MASK I40E_MASK(0xFF, I40E_PRTDCB_RPPMC_RX_FIFO_SIZE_SHIFT)
-#define I40E_PRTDCB_RUP 0x001C0B00 /* Reset: CORER */
-#define I40E_PRTDCB_RUP_NOVLANUP_SHIFT 0
-#define I40E_PRTDCB_RUP_NOVLANUP_MASK I40E_MASK(0x7, I40E_PRTDCB_RUP_NOVLANUP_SHIFT)
-#define I40E_PRTDCB_RUP2TC 0x001C09A0 /* Reset: CORER */
-#define I40E_PRTDCB_RUP2TC_UP0TC_SHIFT 0
-#define I40E_PRTDCB_RUP2TC_UP0TC_MASK I40E_MASK(0x7, I40E_PRTDCB_RUP2TC_UP0TC_SHIFT)
-#define I40E_PRTDCB_RUP2TC_UP1TC_SHIFT 3
-#define I40E_PRTDCB_RUP2TC_UP1TC_MASK I40E_MASK(0x7, I40E_PRTDCB_RUP2TC_UP1TC_SHIFT)
-#define I40E_PRTDCB_RUP2TC_UP2TC_SHIFT 6
-#define I40E_PRTDCB_RUP2TC_UP2TC_MASK I40E_MASK(0x7, I40E_PRTDCB_RUP2TC_UP2TC_SHIFT)
-#define I40E_PRTDCB_RUP2TC_UP3TC_SHIFT 9
-#define I40E_PRTDCB_RUP2TC_UP3TC_MASK I40E_MASK(0x7, I40E_PRTDCB_RUP2TC_UP3TC_SHIFT)
-#define I40E_PRTDCB_RUP2TC_UP4TC_SHIFT 12
-#define I40E_PRTDCB_RUP2TC_UP4TC_MASK I40E_MASK(0x7, I40E_PRTDCB_RUP2TC_UP4TC_SHIFT)
-#define I40E_PRTDCB_RUP2TC_UP5TC_SHIFT 15
-#define I40E_PRTDCB_RUP2TC_UP5TC_MASK I40E_MASK(0x7, I40E_PRTDCB_RUP2TC_UP5TC_SHIFT)
-#define I40E_PRTDCB_RUP2TC_UP6TC_SHIFT 18
-#define I40E_PRTDCB_RUP2TC_UP6TC_MASK I40E_MASK(0x7, I40E_PRTDCB_RUP2TC_UP6TC_SHIFT)
-#define I40E_PRTDCB_RUP2TC_UP7TC_SHIFT 21
-#define I40E_PRTDCB_RUP2TC_UP7TC_MASK I40E_MASK(0x7, I40E_PRTDCB_RUP2TC_UP7TC_SHIFT)
-#define I40E_PRTDCB_RUPTQ(_i) (0x00122400 + ((_i) * 32)) /* _i=0...7 */ /* Reset: CORER */
-#define I40E_PRTDCB_RUPTQ_MAX_INDEX 7
-#define I40E_PRTDCB_RUPTQ_RXQNUM_SHIFT 0
-#define I40E_PRTDCB_RUPTQ_RXQNUM_MASK I40E_MASK(0x3FFF, I40E_PRTDCB_RUPTQ_RXQNUM_SHIFT)
-#define I40E_PRTDCB_TC2PFC 0x001C0980 /* Reset: CORER */
-#define I40E_PRTDCB_TC2PFC_TC2PFC_SHIFT 0
-#define I40E_PRTDCB_TC2PFC_TC2PFC_MASK I40E_MASK(0xFF, I40E_PRTDCB_TC2PFC_TC2PFC_SHIFT)
-#define I40E_PRTDCB_TCMSTC(_i) (0x000A0040 + ((_i) * 32)) /* _i=0...7 */ /* Reset: CORER */
-#define I40E_PRTDCB_TCMSTC_MAX_INDEX 7
-#define I40E_PRTDCB_TCMSTC_MSTC_SHIFT 0
-#define I40E_PRTDCB_TCMSTC_MSTC_MASK I40E_MASK(0xFFFFF, I40E_PRTDCB_TCMSTC_MSTC_SHIFT)
-#define I40E_PRTDCB_TCPMC 0x000A21A0 /* Reset: CORER */
-#define I40E_PRTDCB_TCPMC_CPM_SHIFT 0
-#define I40E_PRTDCB_TCPMC_CPM_MASK I40E_MASK(0x1FFF, I40E_PRTDCB_TCPMC_CPM_SHIFT)
-#define I40E_PRTDCB_TCPMC_LLTC_SHIFT 13
-#define I40E_PRTDCB_TCPMC_LLTC_MASK I40E_MASK(0xFF, I40E_PRTDCB_TCPMC_LLTC_SHIFT)
-#define I40E_PRTDCB_TCPMC_TCPM_MODE_SHIFT 30
-#define I40E_PRTDCB_TCPMC_TCPM_MODE_MASK I40E_MASK(0x1, I40E_PRTDCB_TCPMC_TCPM_MODE_SHIFT)
-#define I40E_PRTDCB_TCWSTC(_i) (0x000A2040 + ((_i) * 32)) /* _i=0...7 */ /* Reset: CORER */
-#define I40E_PRTDCB_TCWSTC_MAX_INDEX 7
-#define I40E_PRTDCB_TCWSTC_MSTC_SHIFT 0
-#define I40E_PRTDCB_TCWSTC_MSTC_MASK I40E_MASK(0xFFFFF, I40E_PRTDCB_TCWSTC_MSTC_SHIFT)
-#define I40E_PRTDCB_TDPMC 0x000A0180 /* Reset: CORER */
-#define I40E_PRTDCB_TDPMC_DPM_SHIFT 0
-#define I40E_PRTDCB_TDPMC_DPM_MASK I40E_MASK(0xFF, I40E_PRTDCB_TDPMC_DPM_SHIFT)
-#define I40E_PRTDCB_TDPMC_TCPM_MODE_SHIFT 30
-#define I40E_PRTDCB_TDPMC_TCPM_MODE_MASK I40E_MASK(0x1, I40E_PRTDCB_TDPMC_TCPM_MODE_SHIFT)
-#define I40E_PRTDCB_TETSC_TCB 0x000AE060 /* Reset: CORER */
-#define I40E_PRTDCB_TETSC_TCB_EN_LL_STRICT_PRIORITY_SHIFT 0
-#define I40E_PRTDCB_TETSC_TCB_EN_LL_STRICT_PRIORITY_MASK I40E_MASK(0x1, I40E_PRTDCB_TETSC_TCB_EN_LL_STRICT_PRIORITY_SHIFT)
-#define I40E_PRTDCB_TETSC_TCB_LLTC_SHIFT 8
-#define I40E_PRTDCB_TETSC_TCB_LLTC_MASK I40E_MASK(0xFF, I40E_PRTDCB_TETSC_TCB_LLTC_SHIFT)
-#define I40E_PRTDCB_TETSC_TPB 0x00098060 /* Reset: CORER */
-#define I40E_PRTDCB_TETSC_TPB_EN_LL_STRICT_PRIORITY_SHIFT 0
-#define I40E_PRTDCB_TETSC_TPB_EN_LL_STRICT_PRIORITY_MASK I40E_MASK(0x1, I40E_PRTDCB_TETSC_TPB_EN_LL_STRICT_PRIORITY_SHIFT)
-#define I40E_PRTDCB_TETSC_TPB_LLTC_SHIFT 8
-#define I40E_PRTDCB_TETSC_TPB_LLTC_MASK I40E_MASK(0xFF, I40E_PRTDCB_TETSC_TPB_LLTC_SHIFT)
-#define I40E_PRTDCB_TFCS 0x001E4560 /* Reset: GLOBR */
-#define I40E_PRTDCB_TFCS_TXOFF_SHIFT 0
-#define I40E_PRTDCB_TFCS_TXOFF_MASK I40E_MASK(0x1, I40E_PRTDCB_TFCS_TXOFF_SHIFT)
-#define I40E_PRTDCB_TFCS_TXOFF0_SHIFT 8
-#define I40E_PRTDCB_TFCS_TXOFF0_MASK I40E_MASK(0x1, I40E_PRTDCB_TFCS_TXOFF0_SHIFT)
-#define I40E_PRTDCB_TFCS_TXOFF1_SHIFT 9
-#define I40E_PRTDCB_TFCS_TXOFF1_MASK I40E_MASK(0x1, I40E_PRTDCB_TFCS_TXOFF1_SHIFT)
-#define I40E_PRTDCB_TFCS_TXOFF2_SHIFT 10
-#define I40E_PRTDCB_TFCS_TXOFF2_MASK I40E_MASK(0x1, I40E_PRTDCB_TFCS_TXOFF2_SHIFT)
-#define I40E_PRTDCB_TFCS_TXOFF3_SHIFT 11
-#define I40E_PRTDCB_TFCS_TXOFF3_MASK I40E_MASK(0x1, I40E_PRTDCB_TFCS_TXOFF3_SHIFT)
-#define I40E_PRTDCB_TFCS_TXOFF4_SHIFT 12
-#define I40E_PRTDCB_TFCS_TXOFF4_MASK I40E_MASK(0x1, I40E_PRTDCB_TFCS_TXOFF4_SHIFT)
-#define I40E_PRTDCB_TFCS_TXOFF5_SHIFT 13
-#define I40E_PRTDCB_TFCS_TXOFF5_MASK I40E_MASK(0x1, I40E_PRTDCB_TFCS_TXOFF5_SHIFT)
-#define I40E_PRTDCB_TFCS_TXOFF6_SHIFT 14
-#define I40E_PRTDCB_TFCS_TXOFF6_MASK I40E_MASK(0x1, I40E_PRTDCB_TFCS_TXOFF6_SHIFT)
-#define I40E_PRTDCB_TFCS_TXOFF7_SHIFT 15
-#define I40E_PRTDCB_TFCS_TXOFF7_MASK I40E_MASK(0x1, I40E_PRTDCB_TFCS_TXOFF7_SHIFT)
-#define I40E_PRTDCB_TPFCTS(_i) (0x001E4660 + ((_i) * 32)) /* _i=0...7 */ /* Reset: GLOBR */
-#define I40E_PRTDCB_TPFCTS_MAX_INDEX 7
-#define I40E_PRTDCB_TPFCTS_PFCTIMER_SHIFT 0
-#define I40E_PRTDCB_TPFCTS_PFCTIMER_MASK I40E_MASK(0x3FFF, I40E_PRTDCB_TPFCTS_PFCTIMER_SHIFT)
-#define I40E_GLFCOE_RCTL 0x00269B94 /* Reset: CORER */
-#define I40E_GLFCOE_RCTL_FCOEVER_SHIFT 0
-#define I40E_GLFCOE_RCTL_FCOEVER_MASK I40E_MASK(0xF, I40E_GLFCOE_RCTL_FCOEVER_SHIFT)
-#define I40E_GLFCOE_RCTL_SAVBAD_SHIFT 4
-#define I40E_GLFCOE_RCTL_SAVBAD_MASK I40E_MASK(0x1, I40E_GLFCOE_RCTL_SAVBAD_SHIFT)
-#define I40E_GLFCOE_RCTL_ICRC_SHIFT 5
-#define I40E_GLFCOE_RCTL_ICRC_MASK I40E_MASK(0x1, I40E_GLFCOE_RCTL_ICRC_SHIFT)
-#define I40E_GLFCOE_RCTL_MAX_SIZE_SHIFT 16
-#define I40E_GLFCOE_RCTL_MAX_SIZE_MASK I40E_MASK(0x3FFF, I40E_GLFCOE_RCTL_MAX_SIZE_SHIFT)
 #define I40E_GL_FWSTS 0x00083048 /* Reset: POR */
-#define I40E_GL_FWSTS_FWS0B_SHIFT 0
-#define I40E_GL_FWSTS_FWS0B_MASK I40E_MASK(0xFF, I40E_GL_FWSTS_FWS0B_SHIFT)
-#define I40E_GL_FWSTS_FWRI_SHIFT 9
-#define I40E_GL_FWSTS_FWRI_MASK I40E_MASK(0x1, I40E_GL_FWSTS_FWRI_SHIFT)
 #define I40E_GL_FWSTS_FWS1B_SHIFT 16
 #define I40E_GL_FWSTS_FWS1B_MASK I40E_MASK(0xFF, I40E_GL_FWSTS_FWS1B_SHIFT)
 #define I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_CORER_MASK I40E_MASK(0x30, I40E_GL_FWSTS_FWS1B_SHIFT)
@@ -369,500 +49,119 @@
 #define I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_NVM_MASK I40E_MASK(0x33, I40E_GL_FWSTS_FWS1B_SHIFT)
 #define I40E_X722_GL_FWSTS_FWS1B_REC_MOD_CORER_MASK I40E_MASK(0xB, I40E_GL_FWSTS_FWS1B_SHIFT)
 #define I40E_X722_GL_FWSTS_FWS1B_REC_MOD_GLOBR_MASK I40E_MASK(0xC, I40E_GL_FWSTS_FWS1B_SHIFT)
-#define I40E_GLGEN_CLKSTAT 0x000B8184 /* Reset: POR */
-#define I40E_GLGEN_CLKSTAT_CLKMODE_SHIFT 0
-#define I40E_GLGEN_CLKSTAT_CLKMODE_MASK I40E_MASK(0x1, I40E_GLGEN_CLKSTAT_CLKMODE_SHIFT)
-#define I40E_GLGEN_CLKSTAT_U_CLK_SPEED_SHIFT 4
-#define I40E_GLGEN_CLKSTAT_U_CLK_SPEED_MASK I40E_MASK(0x3, I40E_GLGEN_CLKSTAT_U_CLK_SPEED_SHIFT)
-#define I40E_GLGEN_CLKSTAT_P0_CLK_SPEED_SHIFT 8
-#define I40E_GLGEN_CLKSTAT_P0_CLK_SPEED_MASK I40E_MASK(0x7, I40E_GLGEN_CLKSTAT_P0_CLK_SPEED_SHIFT)
-#define I40E_GLGEN_CLKSTAT_P1_CLK_SPEED_SHIFT 12
-#define I40E_GLGEN_CLKSTAT_P1_CLK_SPEED_MASK I40E_MASK(0x7, I40E_GLGEN_CLKSTAT_P1_CLK_SPEED_SHIFT)
-#define I40E_GLGEN_CLKSTAT_P2_CLK_SPEED_SHIFT 16
-#define I40E_GLGEN_CLKSTAT_P2_CLK_SPEED_MASK I40E_MASK(0x7, I40E_GLGEN_CLKSTAT_P2_CLK_SPEED_SHIFT)
-#define I40E_GLGEN_CLKSTAT_P3_CLK_SPEED_SHIFT 20
-#define I40E_GLGEN_CLKSTAT_P3_CLK_SPEED_MASK I40E_MASK(0x7, I40E_GLGEN_CLKSTAT_P3_CLK_SPEED_SHIFT)
 #define I40E_GLGEN_GPIO_CTL(_i) (0x00088100 + ((_i) * 4)) /* _i=0...29 */ /* Reset: POR */
 #define I40E_GLGEN_GPIO_CTL_MAX_INDEX 29
 #define I40E_GLGEN_GPIO_CTL_PRT_NUM_SHIFT 0
 #define I40E_GLGEN_GPIO_CTL_PRT_NUM_MASK I40E_MASK(0x3, I40E_GLGEN_GPIO_CTL_PRT_NUM_SHIFT)
 #define I40E_GLGEN_GPIO_CTL_PRT_NUM_NA_SHIFT 3
 #define I40E_GLGEN_GPIO_CTL_PRT_NUM_NA_MASK I40E_MASK(0x1, I40E_GLGEN_GPIO_CTL_PRT_NUM_NA_SHIFT)
-#define I40E_GLGEN_GPIO_CTL_PIN_DIR_SHIFT 4
-#define I40E_GLGEN_GPIO_CTL_PIN_DIR_MASK I40E_MASK(0x1, I40E_GLGEN_GPIO_CTL_PIN_DIR_SHIFT)
-#define I40E_GLGEN_GPIO_CTL_TRI_CTL_SHIFT 5
-#define I40E_GLGEN_GPIO_CTL_TRI_CTL_MASK I40E_MASK(0x1, I40E_GLGEN_GPIO_CTL_TRI_CTL_SHIFT)
-#define I40E_GLGEN_GPIO_CTL_OUT_CTL_SHIFT 6
-#define I40E_GLGEN_GPIO_CTL_OUT_CTL_MASK I40E_MASK(0x1, I40E_GLGEN_GPIO_CTL_OUT_CTL_SHIFT)
 #define I40E_GLGEN_GPIO_CTL_PIN_FUNC_SHIFT 7
 #define I40E_GLGEN_GPIO_CTL_PIN_FUNC_MASK I40E_MASK(0x7, I40E_GLGEN_GPIO_CTL_PIN_FUNC_SHIFT)
-#define I40E_GLGEN_GPIO_CTL_LED_INVRT_SHIFT 10
-#define I40E_GLGEN_GPIO_CTL_LED_INVRT_MASK I40E_MASK(0x1, I40E_GLGEN_GPIO_CTL_LED_INVRT_SHIFT)
 #define I40E_GLGEN_GPIO_CTL_LED_BLINK_SHIFT 11
-#define I40E_GLGEN_GPIO_CTL_LED_BLINK_MASK I40E_MASK(0x1, I40E_GLGEN_GPIO_CTL_LED_BLINK_SHIFT)
 #define I40E_GLGEN_GPIO_CTL_LED_MODE_SHIFT 12
 #define I40E_GLGEN_GPIO_CTL_LED_MODE_MASK I40E_MASK(0x1F, I40E_GLGEN_GPIO_CTL_LED_MODE_SHIFT)
-#define I40E_GLGEN_GPIO_CTL_INT_MODE_SHIFT 17
-#define I40E_GLGEN_GPIO_CTL_INT_MODE_MASK I40E_MASK(0x3, I40E_GLGEN_GPIO_CTL_INT_MODE_SHIFT)
-#define I40E_GLGEN_GPIO_CTL_OUT_DEFAULT_SHIFT 19
-#define I40E_GLGEN_GPIO_CTL_OUT_DEFAULT_MASK I40E_MASK(0x1, I40E_GLGEN_GPIO_CTL_OUT_DEFAULT_SHIFT)
-#define I40E_GLGEN_GPIO_CTL_PHY_PIN_NAME_SHIFT 20
-#define I40E_GLGEN_GPIO_CTL_PHY_PIN_NAME_MASK I40E_MASK(0x3F, I40E_GLGEN_GPIO_CTL_PHY_PIN_NAME_SHIFT)
-#define I40E_GLGEN_GPIO_CTL_PRT_BIT_MAP_SHIFT 26
-#define I40E_GLGEN_GPIO_CTL_PRT_BIT_MAP_MASK I40E_MASK(0xF, I40E_GLGEN_GPIO_CTL_PRT_BIT_MAP_SHIFT)
-#define I40E_GLGEN_GPIO_SET 0x00088184 /* Reset: POR */
-#define I40E_GLGEN_GPIO_SET_GPIO_INDX_SHIFT 0
-#define I40E_GLGEN_GPIO_SET_GPIO_INDX_MASK I40E_MASK(0x1F, I40E_GLGEN_GPIO_SET_GPIO_INDX_SHIFT)
-#define I40E_GLGEN_GPIO_SET_SDP_DATA_SHIFT 5
-#define I40E_GLGEN_GPIO_SET_SDP_DATA_MASK I40E_MASK(0x1, I40E_GLGEN_GPIO_SET_SDP_DATA_SHIFT)
-#define I40E_GLGEN_GPIO_SET_DRIVE_SDP_SHIFT 6
-#define I40E_GLGEN_GPIO_SET_DRIVE_SDP_MASK I40E_MASK(0x1, I40E_GLGEN_GPIO_SET_DRIVE_SDP_SHIFT)
-#define I40E_GLGEN_GPIO_STAT 0x0008817C /* Reset: POR */
-#define I40E_GLGEN_GPIO_STAT_GPIO_VALUE_SHIFT 0
-#define I40E_GLGEN_GPIO_STAT_GPIO_VALUE_MASK I40E_MASK(0x3FFFFFFF, I40E_GLGEN_GPIO_STAT_GPIO_VALUE_SHIFT)
-#define I40E_GLGEN_GPIO_TRANSIT 0x00088180 /* Reset: POR */
-#define I40E_GLGEN_GPIO_TRANSIT_GPIO_TRANSITION_SHIFT 0
-#define I40E_GLGEN_GPIO_TRANSIT_GPIO_TRANSITION_MASK I40E_MASK(0x3FFFFFFF, I40E_GLGEN_GPIO_TRANSIT_GPIO_TRANSITION_SHIFT)
-#define I40E_GLGEN_I2CCMD(_i) (0x000881E0 + ((_i) * 4)) /* _i=0...3 */ /* Reset: POR */
-#define I40E_GLGEN_I2CCMD_MAX_INDEX 3
-#define I40E_GLGEN_I2CCMD_DATA_SHIFT 0
-#define I40E_GLGEN_I2CCMD_DATA_MASK I40E_MASK(0xFFFF, I40E_GLGEN_I2CCMD_DATA_SHIFT)
-#define I40E_GLGEN_I2CCMD_REGADD_SHIFT 16
-#define I40E_GLGEN_I2CCMD_REGADD_MASK I40E_MASK(0xFF, I40E_GLGEN_I2CCMD_REGADD_SHIFT)
-#define I40E_GLGEN_I2CCMD_PHYADD_SHIFT 24
-#define I40E_GLGEN_I2CCMD_PHYADD_MASK I40E_MASK(0x7, I40E_GLGEN_I2CCMD_PHYADD_SHIFT)
-#define I40E_GLGEN_I2CCMD_OP_SHIFT 27
-#define I40E_GLGEN_I2CCMD_OP_MASK I40E_MASK(0x1, I40E_GLGEN_I2CCMD_OP_SHIFT)
-#define I40E_GLGEN_I2CCMD_RESET_SHIFT 28
-#define I40E_GLGEN_I2CCMD_RESET_MASK I40E_MASK(0x1, I40E_GLGEN_I2CCMD_RESET_SHIFT)
-#define I40E_GLGEN_I2CCMD_R_SHIFT 29
-#define I40E_GLGEN_I2CCMD_R_MASK I40E_MASK(0x1, I40E_GLGEN_I2CCMD_R_SHIFT)
-#define I40E_GLGEN_I2CCMD_E_SHIFT 31
-#define I40E_GLGEN_I2CCMD_E_MASK I40E_MASK(0x1, I40E_GLGEN_I2CCMD_E_SHIFT)
-#define I40E_GLGEN_I2CPARAMS(_i) (0x000881AC + ((_i) * 4)) /* _i=0...3 */ /* Reset: POR */
-#define I40E_GLGEN_I2CPARAMS_MAX_INDEX 3
-#define I40E_GLGEN_I2CPARAMS_WRITE_TIME_SHIFT 0
-#define I40E_GLGEN_I2CPARAMS_WRITE_TIME_MASK I40E_MASK(0x1F, I40E_GLGEN_I2CPARAMS_WRITE_TIME_SHIFT)
-#define I40E_GLGEN_I2CPARAMS_READ_TIME_SHIFT 5
-#define I40E_GLGEN_I2CPARAMS_READ_TIME_MASK I40E_MASK(0x7, I40E_GLGEN_I2CPARAMS_READ_TIME_SHIFT)
-#define I40E_GLGEN_I2CPARAMS_I2CBB_EN_SHIFT 8
-#define I40E_GLGEN_I2CPARAMS_I2CBB_EN_MASK I40E_MASK(0x1, I40E_GLGEN_I2CPARAMS_I2CBB_EN_SHIFT)
-#define I40E_GLGEN_I2CPARAMS_CLK_SHIFT 9
-#define I40E_GLGEN_I2CPARAMS_CLK_MASK I40E_MASK(0x1, I40E_GLGEN_I2CPARAMS_CLK_SHIFT)
-#define I40E_GLGEN_I2CPARAMS_DATA_OUT_SHIFT 10
-#define I40E_GLGEN_I2CPARAMS_DATA_OUT_MASK I40E_MASK(0x1, I40E_GLGEN_I2CPARAMS_DATA_OUT_SHIFT)
-#define I40E_GLGEN_I2CPARAMS_DATA_OE_N_SHIFT 11
-#define I40E_GLGEN_I2CPARAMS_DATA_OE_N_MASK I40E_MASK(0x1, I40E_GLGEN_I2CPARAMS_DATA_OE_N_SHIFT)
-#define I40E_GLGEN_I2CPARAMS_DATA_IN_SHIFT 12
-#define I40E_GLGEN_I2CPARAMS_DATA_IN_MASK I40E_MASK(0x1, I40E_GLGEN_I2CPARAMS_DATA_IN_SHIFT)
-#define I40E_GLGEN_I2CPARAMS_CLK_OE_N_SHIFT 13
-#define I40E_GLGEN_I2CPARAMS_CLK_OE_N_MASK I40E_MASK(0x1, I40E_GLGEN_I2CPARAMS_CLK_OE_N_SHIFT)
-#define I40E_GLGEN_I2CPARAMS_CLK_IN_SHIFT 14
-#define I40E_GLGEN_I2CPARAMS_CLK_IN_MASK I40E_MASK(0x1, I40E_GLGEN_I2CPARAMS_CLK_IN_SHIFT)
-#define I40E_GLGEN_I2CPARAMS_CLK_STRETCH_DIS_SHIFT 15
-#define I40E_GLGEN_I2CPARAMS_CLK_STRETCH_DIS_MASK I40E_MASK(0x1, I40E_GLGEN_I2CPARAMS_CLK_STRETCH_DIS_SHIFT)
-#define I40E_GLGEN_I2CPARAMS_I2C_DATA_ORDER_SHIFT 31
-#define I40E_GLGEN_I2CPARAMS_I2C_DATA_ORDER_MASK I40E_MASK(0x1, I40E_GLGEN_I2CPARAMS_I2C_DATA_ORDER_SHIFT)
-#define I40E_GLGEN_LED_CTL 0x00088178 /* Reset: POR */
-#define I40E_GLGEN_LED_CTL_GLOBAL_BLINK_MODE_SHIFT 0
-#define I40E_GLGEN_LED_CTL_GLOBAL_BLINK_MODE_MASK I40E_MASK(0x1, I40E_GLGEN_LED_CTL_GLOBAL_BLINK_MODE_SHIFT)
-#define I40E_GLGEN_MDIO_CTRL(_i) (0x000881D0 + ((_i) * 4)) /* _i=0...3 */ /* Reset: POR */
-#define I40E_GLGEN_MDIO_CTRL_MAX_INDEX 3
-#define I40E_GLGEN_MDIO_CTRL_LEGACY_RSVD2_SHIFT 0
-#define I40E_GLGEN_MDIO_CTRL_LEGACY_RSVD2_MASK I40E_MASK(0x1FFFF, I40E_GLGEN_MDIO_CTRL_LEGACY_RSVD2_SHIFT)
-#define I40E_GLGEN_MDIO_CTRL_CONTMDC_SHIFT 17
-#define I40E_GLGEN_MDIO_CTRL_CONTMDC_MASK I40E_MASK(0x1, I40E_GLGEN_MDIO_CTRL_CONTMDC_SHIFT)
-#define I40E_GLGEN_MDIO_CTRL_LEGACY_RSVD1_SHIFT 18
-#define I40E_GLGEN_MDIO_CTRL_LEGACY_RSVD1_MASK I40E_MASK(0x7FF, I40E_GLGEN_MDIO_CTRL_LEGACY_RSVD1_SHIFT)
-#define I40E_GLGEN_MDIO_CTRL_LEGACY_RSVD0_SHIFT 29
-#define I40E_GLGEN_MDIO_CTRL_LEGACY_RSVD0_MASK I40E_MASK(0x7, I40E_GLGEN_MDIO_CTRL_LEGACY_RSVD0_SHIFT)
 #define I40E_GLGEN_MDIO_I2C_SEL(_i) (0x000881C0 + ((_i) * 4)) /* _i=0...3 */ /* Reset: POR */
-#define I40E_GLGEN_MDIO_I2C_SEL_MAX_INDEX 3
-#define I40E_GLGEN_MDIO_I2C_SEL_MDIO_I2C_SEL_SHIFT 0
-#define I40E_GLGEN_MDIO_I2C_SEL_MDIO_I2C_SEL_MASK I40E_MASK(0x1, I40E_GLGEN_MDIO_I2C_SEL_MDIO_I2C_SEL_SHIFT)
-#define I40E_GLGEN_MDIO_I2C_SEL_PHY_PORT_NUM_SHIFT 1
-#define I40E_GLGEN_MDIO_I2C_SEL_PHY_PORT_NUM_MASK I40E_MASK(0xF, I40E_GLGEN_MDIO_I2C_SEL_PHY_PORT_NUM_SHIFT)
-#define I40E_GLGEN_MDIO_I2C_SEL_PHY0_ADDRESS_SHIFT 5
-#define I40E_GLGEN_MDIO_I2C_SEL_PHY0_ADDRESS_MASK I40E_MASK(0x1F, I40E_GLGEN_MDIO_I2C_SEL_PHY0_ADDRESS_SHIFT)
-#define I40E_GLGEN_MDIO_I2C_SEL_PHY1_ADDRESS_SHIFT 10
-#define I40E_GLGEN_MDIO_I2C_SEL_PHY1_ADDRESS_MASK I40E_MASK(0x1F, I40E_GLGEN_MDIO_I2C_SEL_PHY1_ADDRESS_SHIFT)
-#define I40E_GLGEN_MDIO_I2C_SEL_PHY2_ADDRESS_SHIFT 15
-#define I40E_GLGEN_MDIO_I2C_SEL_PHY2_ADDRESS_MASK I40E_MASK(0x1F, I40E_GLGEN_MDIO_I2C_SEL_PHY2_ADDRESS_SHIFT)
-#define I40E_GLGEN_MDIO_I2C_SEL_PHY3_ADDRESS_SHIFT 20
-#define I40E_GLGEN_MDIO_I2C_SEL_PHY3_ADDRESS_MASK I40E_MASK(0x1F, I40E_GLGEN_MDIO_I2C_SEL_PHY3_ADDRESS_SHIFT)
-#define I40E_GLGEN_MDIO_I2C_SEL_MDIO_IF_MODE_SHIFT 25
-#define I40E_GLGEN_MDIO_I2C_SEL_MDIO_IF_MODE_MASK I40E_MASK(0xF, I40E_GLGEN_MDIO_I2C_SEL_MDIO_IF_MODE_SHIFT)
-#define I40E_GLGEN_MDIO_I2C_SEL_EN_FAST_MODE_SHIFT 31
-#define I40E_GLGEN_MDIO_I2C_SEL_EN_FAST_MODE_MASK I40E_MASK(0x1, I40E_GLGEN_MDIO_I2C_SEL_EN_FAST_MODE_SHIFT)
 #define I40E_GLGEN_MSCA(_i) (0x0008818C + ((_i) * 4)) /* _i=0...3 */ /* Reset: POR */
-#define I40E_GLGEN_MSCA_MAX_INDEX 3
 #define I40E_GLGEN_MSCA_MDIADD_SHIFT 0
-#define I40E_GLGEN_MSCA_MDIADD_MASK I40E_MASK(0xFFFF, I40E_GLGEN_MSCA_MDIADD_SHIFT)
 #define I40E_GLGEN_MSCA_DEVADD_SHIFT 16
-#define I40E_GLGEN_MSCA_DEVADD_MASK I40E_MASK(0x1F, I40E_GLGEN_MSCA_DEVADD_SHIFT)
 #define I40E_GLGEN_MSCA_PHYADD_SHIFT 21
-#define I40E_GLGEN_MSCA_PHYADD_MASK I40E_MASK(0x1F, I40E_GLGEN_MSCA_PHYADD_SHIFT)
 #define I40E_GLGEN_MSCA_OPCODE_SHIFT 26
-#define I40E_GLGEN_MSCA_OPCODE_MASK I40E_MASK(0x3, I40E_GLGEN_MSCA_OPCODE_SHIFT)
 #define I40E_GLGEN_MSCA_STCODE_SHIFT 28
-#define I40E_GLGEN_MSCA_STCODE_MASK I40E_MASK(0x3, I40E_GLGEN_MSCA_STCODE_SHIFT)
 #define I40E_GLGEN_MSCA_MDICMD_SHIFT 30
 #define I40E_GLGEN_MSCA_MDICMD_MASK I40E_MASK(0x1, I40E_GLGEN_MSCA_MDICMD_SHIFT)
 #define I40E_GLGEN_MSCA_MDIINPROGEN_SHIFT 31
 #define I40E_GLGEN_MSCA_MDIINPROGEN_MASK I40E_MASK(0x1u, I40E_GLGEN_MSCA_MDIINPROGEN_SHIFT)
 #define I40E_GLGEN_MSRWD(_i) (0x0008819C + ((_i) * 4)) /* _i=0...3 */ /* Reset: POR */
-#define I40E_GLGEN_MSRWD_MAX_INDEX 3
 #define I40E_GLGEN_MSRWD_MDIWRDATA_SHIFT 0
-#define I40E_GLGEN_MSRWD_MDIWRDATA_MASK I40E_MASK(0xFFFF, I40E_GLGEN_MSRWD_MDIWRDATA_SHIFT)
 #define I40E_GLGEN_MSRWD_MDIRDDATA_SHIFT 16
 #define I40E_GLGEN_MSRWD_MDIRDDATA_MASK I40E_MASK(0xFFFF, I40E_GLGEN_MSRWD_MDIRDDATA_SHIFT)
-#define I40E_GLGEN_PCIFCNCNT 0x001C0AB4 /* Reset: PCIR */
-#define I40E_GLGEN_PCIFCNCNT_PCIPFCNT_SHIFT 0
-#define I40E_GLGEN_PCIFCNCNT_PCIPFCNT_MASK I40E_MASK(0x1F, I40E_GLGEN_PCIFCNCNT_PCIPFCNT_SHIFT)
-#define I40E_GLGEN_PCIFCNCNT_PCIVFCNT_SHIFT 16
-#define I40E_GLGEN_PCIFCNCNT_PCIVFCNT_MASK I40E_MASK(0xFF, I40E_GLGEN_PCIFCNCNT_PCIVFCNT_SHIFT)
 #define I40E_GLGEN_RSTAT 0x000B8188 /* Reset: POR */
 #define I40E_GLGEN_RSTAT_DEVSTATE_SHIFT 0
 #define I40E_GLGEN_RSTAT_DEVSTATE_MASK I40E_MASK(0x3, I40E_GLGEN_RSTAT_DEVSTATE_SHIFT)
 #define I40E_GLGEN_RSTAT_RESET_TYPE_SHIFT 2
 #define I40E_GLGEN_RSTAT_RESET_TYPE_MASK I40E_MASK(0x3, I40E_GLGEN_RSTAT_RESET_TYPE_SHIFT)
-#define I40E_GLGEN_RSTAT_CORERCNT_SHIFT 4
-#define I40E_GLGEN_RSTAT_CORERCNT_MASK I40E_MASK(0x3, I40E_GLGEN_RSTAT_CORERCNT_SHIFT)
-#define I40E_GLGEN_RSTAT_GLOBRCNT_SHIFT 6
-#define I40E_GLGEN_RSTAT_GLOBRCNT_MASK I40E_MASK(0x3, I40E_GLGEN_RSTAT_GLOBRCNT_SHIFT)
-#define I40E_GLGEN_RSTAT_EMPRCNT_SHIFT 8
-#define I40E_GLGEN_RSTAT_EMPRCNT_MASK I40E_MASK(0x3, I40E_GLGEN_RSTAT_EMPRCNT_SHIFT)
-#define I40E_GLGEN_RSTAT_TIME_TO_RST_SHIFT 10
-#define I40E_GLGEN_RSTAT_TIME_TO_RST_MASK I40E_MASK(0x3F, I40E_GLGEN_RSTAT_TIME_TO_RST_SHIFT)
 #define I40E_GLGEN_RSTCTL 0x000B8180 /* Reset: POR */
 #define I40E_GLGEN_RSTCTL_GRSTDEL_SHIFT 0
 #define I40E_GLGEN_RSTCTL_GRSTDEL_MASK I40E_MASK(0x3F, I40E_GLGEN_RSTCTL_GRSTDEL_SHIFT)
-#define I40E_GLGEN_RSTCTL_ECC_RST_ENA_SHIFT 8
-#define I40E_GLGEN_RSTCTL_ECC_RST_ENA_MASK I40E_MASK(0x1, I40E_GLGEN_RSTCTL_ECC_RST_ENA_SHIFT)
 #define I40E_GLGEN_RTRIG 0x000B8190 /* Reset: CORER */
 #define I40E_GLGEN_RTRIG_CORER_SHIFT 0
 #define I40E_GLGEN_RTRIG_CORER_MASK I40E_MASK(0x1, I40E_GLGEN_RTRIG_CORER_SHIFT)
 #define I40E_GLGEN_RTRIG_GLOBR_SHIFT 1
 #define I40E_GLGEN_RTRIG_GLOBR_MASK I40E_MASK(0x1, I40E_GLGEN_RTRIG_GLOBR_SHIFT)
-#define I40E_GLGEN_RTRIG_EMPFWR_SHIFT 2
-#define I40E_GLGEN_RTRIG_EMPFWR_MASK I40E_MASK(0x1, I40E_GLGEN_RTRIG_EMPFWR_SHIFT)
 #define I40E_GLGEN_STAT 0x000B612C /* Reset: POR */
-#define I40E_GLGEN_STAT_HWRSVD0_SHIFT 0
-#define I40E_GLGEN_STAT_HWRSVD0_MASK I40E_MASK(0x3, I40E_GLGEN_STAT_HWRSVD0_SHIFT)
-#define I40E_GLGEN_STAT_DCBEN_SHIFT 2
-#define I40E_GLGEN_STAT_DCBEN_MASK I40E_MASK(0x1, I40E_GLGEN_STAT_DCBEN_SHIFT)
-#define I40E_GLGEN_STAT_VTEN_SHIFT 3
-#define I40E_GLGEN_STAT_VTEN_MASK I40E_MASK(0x1, I40E_GLGEN_STAT_VTEN_SHIFT)
-#define I40E_GLGEN_STAT_FCOEN_SHIFT 4
-#define I40E_GLGEN_STAT_FCOEN_MASK I40E_MASK(0x1, I40E_GLGEN_STAT_FCOEN_SHIFT)
-#define I40E_GLGEN_STAT_EVBEN_SHIFT 5
-#define I40E_GLGEN_STAT_EVBEN_MASK I40E_MASK(0x1, I40E_GLGEN_STAT_EVBEN_SHIFT)
-#define I40E_GLGEN_STAT_HWRSVD1_SHIFT 6
-#define I40E_GLGEN_STAT_HWRSVD1_MASK I40E_MASK(0x3, I40E_GLGEN_STAT_HWRSVD1_SHIFT)
 #define I40E_GLGEN_VFLRSTAT(_i) (0x00092600 + ((_i) * 4)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLGEN_VFLRSTAT_MAX_INDEX 3
-#define I40E_GLGEN_VFLRSTAT_VFLRE_SHIFT 0
-#define I40E_GLGEN_VFLRSTAT_VFLRE_MASK I40E_MASK(0xFFFFFFFF, I40E_GLGEN_VFLRSTAT_VFLRE_SHIFT)
 #define I40E_GLVFGEN_TIMER 0x000881BC /* Reset: CORER */
-#define I40E_GLVFGEN_TIMER_GTIME_SHIFT 0
-#define I40E_GLVFGEN_TIMER_GTIME_MASK I40E_MASK(0xFFFFFFFF, I40E_GLVFGEN_TIMER_GTIME_SHIFT)
 #define I40E_PFGEN_CTRL 0x00092400 /* Reset: PFR */
 #define I40E_PFGEN_CTRL_PFSWR_SHIFT 0
 #define I40E_PFGEN_CTRL_PFSWR_MASK I40E_MASK(0x1, I40E_PFGEN_CTRL_PFSWR_SHIFT)
-#define I40E_PFGEN_DRUN 0x00092500 /* Reset: CORER */
-#define I40E_PFGEN_DRUN_DRVUNLD_SHIFT 0
-#define I40E_PFGEN_DRUN_DRVUNLD_MASK I40E_MASK(0x1, I40E_PFGEN_DRUN_DRVUNLD_SHIFT)
 #define I40E_PFGEN_PORTNUM 0x001C0480 /* Reset: CORER */
 #define I40E_PFGEN_PORTNUM_PORT_NUM_SHIFT 0
 #define I40E_PFGEN_PORTNUM_PORT_NUM_MASK I40E_MASK(0x3, I40E_PFGEN_PORTNUM_PORT_NUM_SHIFT)
-#define I40E_PFGEN_STATE 0x00088000 /* Reset: CORER */
-#define I40E_PFGEN_STATE_RESERVED_0_SHIFT 0
-#define I40E_PFGEN_STATE_RESERVED_0_MASK I40E_MASK(0x1, I40E_PFGEN_STATE_RESERVED_0_SHIFT)
-#define I40E_PFGEN_STATE_PFFCEN_SHIFT 1
-#define I40E_PFGEN_STATE_PFFCEN_MASK I40E_MASK(0x1, I40E_PFGEN_STATE_PFFCEN_SHIFT)
-#define I40E_PFGEN_STATE_PFLINKEN_SHIFT 2
-#define I40E_PFGEN_STATE_PFLINKEN_MASK I40E_MASK(0x1, I40E_PFGEN_STATE_PFLINKEN_SHIFT)
-#define I40E_PFGEN_STATE_PFSCEN_SHIFT 3
-#define I40E_PFGEN_STATE_PFSCEN_MASK I40E_MASK(0x1, I40E_PFGEN_STATE_PFSCEN_SHIFT)
 #define I40E_PRTGEN_CNF 0x000B8120 /* Reset: POR */
 #define I40E_PRTGEN_CNF_PORT_DIS_SHIFT 0
 #define I40E_PRTGEN_CNF_PORT_DIS_MASK I40E_MASK(0x1, I40E_PRTGEN_CNF_PORT_DIS_SHIFT)
-#define I40E_PRTGEN_CNF_ALLOW_PORT_DIS_SHIFT 1
-#define I40E_PRTGEN_CNF_ALLOW_PORT_DIS_MASK I40E_MASK(0x1, I40E_PRTGEN_CNF_ALLOW_PORT_DIS_SHIFT)
-#define I40E_PRTGEN_CNF_EMP_PORT_DIS_SHIFT 2
-#define I40E_PRTGEN_CNF_EMP_PORT_DIS_MASK I40E_MASK(0x1, I40E_PRTGEN_CNF_EMP_PORT_DIS_SHIFT)
-#define I40E_PRTGEN_CNF2 0x000B8160 /* Reset: POR */
-#define I40E_PRTGEN_CNF2_ACTIVATE_PORT_LINK_SHIFT 0
-#define I40E_PRTGEN_CNF2_ACTIVATE_PORT_LINK_MASK I40E_MASK(0x1, I40E_PRTGEN_CNF2_ACTIVATE_PORT_LINK_SHIFT)
 #define I40E_PRTGEN_STATUS 0x000B8100 /* Reset: POR */
-#define I40E_PRTGEN_STATUS_PORT_VALID_SHIFT 0
-#define I40E_PRTGEN_STATUS_PORT_VALID_MASK I40E_MASK(0x1, I40E_PRTGEN_STATUS_PORT_VALID_SHIFT)
-#define I40E_PRTGEN_STATUS_PORT_ACTIVE_SHIFT 1
-#define I40E_PRTGEN_STATUS_PORT_ACTIVE_MASK I40E_MASK(0x1, I40E_PRTGEN_STATUS_PORT_ACTIVE_SHIFT)
 #define I40E_VFGEN_RSTAT1(_VF) (0x00074400 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: VFR */
-#define I40E_VFGEN_RSTAT1_MAX_INDEX 127
-#define I40E_VFGEN_RSTAT1_VFR_STATE_SHIFT 0
-#define I40E_VFGEN_RSTAT1_VFR_STATE_MASK I40E_MASK(0x3, I40E_VFGEN_RSTAT1_VFR_STATE_SHIFT)
 #define I40E_VPGEN_VFRSTAT(_VF) (0x00091C00 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: CORER */
-#define I40E_VPGEN_VFRSTAT_MAX_INDEX 127
 #define I40E_VPGEN_VFRSTAT_VFRD_SHIFT 0
 #define I40E_VPGEN_VFRSTAT_VFRD_MASK I40E_MASK(0x1, I40E_VPGEN_VFRSTAT_VFRD_SHIFT)
 #define I40E_VPGEN_VFRTRIG(_VF) (0x00091800 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: CORER */
-#define I40E_VPGEN_VFRTRIG_MAX_INDEX 127
 #define I40E_VPGEN_VFRTRIG_VFSWR_SHIFT 0
 #define I40E_VPGEN_VFRTRIG_VFSWR_MASK I40E_MASK(0x1, I40E_VPGEN_VFRTRIG_VFSWR_SHIFT)
-#define I40E_VSIGEN_RSTAT(_VSI) (0x00090800 + ((_VSI) * 4)) /* _i=0...383 */ /* Reset: CORER */
-#define I40E_VSIGEN_RSTAT_MAX_INDEX 383
-#define I40E_VSIGEN_RSTAT_VMRD_SHIFT 0
-#define I40E_VSIGEN_RSTAT_VMRD_MASK I40E_MASK(0x1, I40E_VSIGEN_RSTAT_VMRD_SHIFT)
-#define I40E_VSIGEN_RTRIG(_VSI) (0x00090000 + ((_VSI) * 4)) /* _i=0...383 */ /* Reset: CORER */
-#define I40E_VSIGEN_RTRIG_MAX_INDEX 383
-#define I40E_VSIGEN_RTRIG_VMSWR_SHIFT 0
-#define I40E_VSIGEN_RTRIG_VMSWR_MASK I40E_MASK(0x1, I40E_VSIGEN_RTRIG_VMSWR_SHIFT)
 #define I40E_GLHMC_FCOEDDPBASE(_i) (0x000C6600 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_FCOEDDPBASE_MAX_INDEX 15
 #define I40E_GLHMC_FCOEDDPBASE_FPMFCOEDDPBASE_SHIFT 0
 #define I40E_GLHMC_FCOEDDPBASE_FPMFCOEDDPBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_FCOEDDPBASE_FPMFCOEDDPBASE_SHIFT)
 #define I40E_GLHMC_FCOEDDPCNT(_i) (0x000C6700 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_FCOEDDPCNT_MAX_INDEX 15
-#define I40E_GLHMC_FCOEDDPCNT_FPMFCOEDDPCNT_SHIFT 0
-#define I40E_GLHMC_FCOEDDPCNT_FPMFCOEDDPCNT_MASK I40E_MASK(0xFFFFF, I40E_GLHMC_FCOEDDPCNT_FPMFCOEDDPCNT_SHIFT)
 #define I40E_GLHMC_FCOEDDPOBJSZ 0x000C2010 /* Reset: CORER */
-#define I40E_GLHMC_FCOEDDPOBJSZ_PMFCOEDDPOBJSZ_SHIFT 0
-#define I40E_GLHMC_FCOEDDPOBJSZ_PMFCOEDDPOBJSZ_MASK I40E_MASK(0xF, I40E_GLHMC_FCOEDDPOBJSZ_PMFCOEDDPOBJSZ_SHIFT)
 #define I40E_GLHMC_FCOEFBASE(_i) (0x000C6800 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_FCOEFBASE_MAX_INDEX 15
 #define I40E_GLHMC_FCOEFBASE_FPMFCOEFBASE_SHIFT 0
 #define I40E_GLHMC_FCOEFBASE_FPMFCOEFBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_FCOEFBASE_FPMFCOEFBASE_SHIFT)
 #define I40E_GLHMC_FCOEFCNT(_i) (0x000C6900 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_FCOEFCNT_MAX_INDEX 15
-#define I40E_GLHMC_FCOEFCNT_FPMFCOEFCNT_SHIFT 0
-#define I40E_GLHMC_FCOEFCNT_FPMFCOEFCNT_MASK I40E_MASK(0x7FFFFF, I40E_GLHMC_FCOEFCNT_FPMFCOEFCNT_SHIFT)
 #define I40E_GLHMC_FCOEFMAX 0x000C20D0 /* Reset: CORER */
 #define I40E_GLHMC_FCOEFMAX_PMFCOEFMAX_SHIFT 0
 #define I40E_GLHMC_FCOEFMAX_PMFCOEFMAX_MASK I40E_MASK(0xFFFF, I40E_GLHMC_FCOEFMAX_PMFCOEFMAX_SHIFT)
 #define I40E_GLHMC_FCOEFOBJSZ 0x000C2018 /* Reset: CORER */
-#define I40E_GLHMC_FCOEFOBJSZ_PMFCOEFOBJSZ_SHIFT 0
-#define I40E_GLHMC_FCOEFOBJSZ_PMFCOEFOBJSZ_MASK I40E_MASK(0xF, I40E_GLHMC_FCOEFOBJSZ_PMFCOEFOBJSZ_SHIFT)
 #define I40E_GLHMC_FCOEMAX 0x000C2014 /* Reset: CORER */
-#define I40E_GLHMC_FCOEMAX_PMFCOEMAX_SHIFT 0
-#define I40E_GLHMC_FCOEMAX_PMFCOEMAX_MASK I40E_MASK(0x1FFF, I40E_GLHMC_FCOEMAX_PMFCOEMAX_SHIFT)
-#define I40E_GLHMC_FSIAVBASE(_i) (0x000C5600 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_FSIAVBASE_MAX_INDEX 15
-#define I40E_GLHMC_FSIAVBASE_FPMFSIAVBASE_SHIFT 0
-#define I40E_GLHMC_FSIAVBASE_FPMFSIAVBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_FSIAVBASE_FPMFSIAVBASE_SHIFT)
-#define I40E_GLHMC_FSIAVCNT(_i) (0x000C5700 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_FSIAVCNT_MAX_INDEX 15
-#define I40E_GLHMC_FSIAVCNT_FPMFSIAVCNT_SHIFT 0
-#define I40E_GLHMC_FSIAVCNT_FPMFSIAVCNT_MASK I40E_MASK(0x1FFFFFFF, I40E_GLHMC_FSIAVCNT_FPMFSIAVCNT_SHIFT)
-#define I40E_GLHMC_FSIAVCNT_RSVD_SHIFT 29
-#define I40E_GLHMC_FSIAVCNT_RSVD_MASK I40E_MASK(0x7, I40E_GLHMC_FSIAVCNT_RSVD_SHIFT)
-#define I40E_GLHMC_FSIAVMAX 0x000C2068 /* Reset: CORER */
-#define I40E_GLHMC_FSIAVMAX_PMFSIAVMAX_SHIFT 0
-#define I40E_GLHMC_FSIAVMAX_PMFSIAVMAX_MASK I40E_MASK(0x1FFFF, I40E_GLHMC_FSIAVMAX_PMFSIAVMAX_SHIFT)
-#define I40E_GLHMC_FSIAVOBJSZ 0x000C2064 /* Reset: CORER */
-#define I40E_GLHMC_FSIAVOBJSZ_PMFSIAVOBJSZ_SHIFT 0
-#define I40E_GLHMC_FSIAVOBJSZ_PMFSIAVOBJSZ_MASK I40E_MASK(0xF, I40E_GLHMC_FSIAVOBJSZ_PMFSIAVOBJSZ_SHIFT)
-#define I40E_GLHMC_FSIMCBASE(_i) (0x000C6000 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_FSIMCBASE_MAX_INDEX 15
-#define I40E_GLHMC_FSIMCBASE_FPMFSIMCBASE_SHIFT 0
-#define I40E_GLHMC_FSIMCBASE_FPMFSIMCBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_FSIMCBASE_FPMFSIMCBASE_SHIFT)
-#define I40E_GLHMC_FSIMCCNT(_i) (0x000C6100 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_FSIMCCNT_MAX_INDEX 15
-#define I40E_GLHMC_FSIMCCNT_FPMFSIMCSZ_SHIFT 0
-#define I40E_GLHMC_FSIMCCNT_FPMFSIMCSZ_MASK I40E_MASK(0x1FFFFFFF, I40E_GLHMC_FSIMCCNT_FPMFSIMCSZ_SHIFT)
-#define I40E_GLHMC_FSIMCMAX 0x000C2060 /* Reset: CORER */
-#define I40E_GLHMC_FSIMCMAX_PMFSIMCMAX_SHIFT 0
-#define I40E_GLHMC_FSIMCMAX_PMFSIMCMAX_MASK I40E_MASK(0x3FFF, I40E_GLHMC_FSIMCMAX_PMFSIMCMAX_SHIFT)
-#define I40E_GLHMC_FSIMCOBJSZ 0x000C205c /* Reset: CORER */
-#define I40E_GLHMC_FSIMCOBJSZ_PMFSIMCOBJSZ_SHIFT 0
-#define I40E_GLHMC_FSIMCOBJSZ_PMFSIMCOBJSZ_MASK I40E_MASK(0xF, I40E_GLHMC_FSIMCOBJSZ_PMFSIMCOBJSZ_SHIFT)
 #define I40E_GLHMC_LANQMAX 0x000C2008 /* Reset: CORER */
-#define I40E_GLHMC_LANQMAX_PMLANQMAX_SHIFT 0
-#define I40E_GLHMC_LANQMAX_PMLANQMAX_MASK I40E_MASK(0x7FF, I40E_GLHMC_LANQMAX_PMLANQMAX_SHIFT)
 #define I40E_GLHMC_LANRXBASE(_i) (0x000C6400 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_LANRXBASE_MAX_INDEX 15
 #define I40E_GLHMC_LANRXBASE_FPMLANRXBASE_SHIFT 0
 #define I40E_GLHMC_LANRXBASE_FPMLANRXBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_LANRXBASE_FPMLANRXBASE_SHIFT)
 #define I40E_GLHMC_LANRXCNT(_i) (0x000C6500 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_LANRXCNT_MAX_INDEX 15
-#define I40E_GLHMC_LANRXCNT_FPMLANRXCNT_SHIFT 0
-#define I40E_GLHMC_LANRXCNT_FPMLANRXCNT_MASK I40E_MASK(0x7FF, I40E_GLHMC_LANRXCNT_FPMLANRXCNT_SHIFT)
 #define I40E_GLHMC_LANRXOBJSZ 0x000C200c /* Reset: CORER */
-#define I40E_GLHMC_LANRXOBJSZ_PMLANRXOBJSZ_SHIFT 0
-#define I40E_GLHMC_LANRXOBJSZ_PMLANRXOBJSZ_MASK I40E_MASK(0xF, I40E_GLHMC_LANRXOBJSZ_PMLANRXOBJSZ_SHIFT)
 #define I40E_GLHMC_LANTXBASE(_i) (0x000C6200 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_LANTXBASE_MAX_INDEX 15
 #define I40E_GLHMC_LANTXBASE_FPMLANTXBASE_SHIFT 0
 #define I40E_GLHMC_LANTXBASE_FPMLANTXBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_LANTXBASE_FPMLANTXBASE_SHIFT)
-#define I40E_GLHMC_LANTXBASE_RSVD_SHIFT 24
-#define I40E_GLHMC_LANTXBASE_RSVD_MASK I40E_MASK(0xFF, I40E_GLHMC_LANTXBASE_RSVD_SHIFT)
 #define I40E_GLHMC_LANTXCNT(_i) (0x000C6300 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_LANTXCNT_MAX_INDEX 15
-#define I40E_GLHMC_LANTXCNT_FPMLANTXCNT_SHIFT 0
-#define I40E_GLHMC_LANTXCNT_FPMLANTXCNT_MASK I40E_MASK(0x7FF, I40E_GLHMC_LANTXCNT_FPMLANTXCNT_SHIFT)
 #define I40E_GLHMC_LANTXOBJSZ 0x000C2004 /* Reset: CORER */
-#define I40E_GLHMC_LANTXOBJSZ_PMLANTXOBJSZ_SHIFT 0
-#define I40E_GLHMC_LANTXOBJSZ_PMLANTXOBJSZ_MASK I40E_MASK(0xF, I40E_GLHMC_LANTXOBJSZ_PMLANTXOBJSZ_SHIFT)
-#define I40E_GLHMC_PFASSIGN(_i) (0x000C0c00 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_PFASSIGN_MAX_INDEX 15
-#define I40E_GLHMC_PFASSIGN_PMFCNPFASSIGN_SHIFT 0
-#define I40E_GLHMC_PFASSIGN_PMFCNPFASSIGN_MASK I40E_MASK(0xF, I40E_GLHMC_PFASSIGN_PMFCNPFASSIGN_SHIFT)
-#define I40E_GLHMC_SDPART(_i) (0x000C0800 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_SDPART_MAX_INDEX 15
-#define I40E_GLHMC_SDPART_PMSDBASE_SHIFT 0
-#define I40E_GLHMC_SDPART_PMSDBASE_MASK I40E_MASK(0xFFF, I40E_GLHMC_SDPART_PMSDBASE_SHIFT)
-#define I40E_GLHMC_SDPART_PMSDSIZE_SHIFT 16
-#define I40E_GLHMC_SDPART_PMSDSIZE_MASK I40E_MASK(0x1FFF, I40E_GLHMC_SDPART_PMSDSIZE_SHIFT)
 #define I40E_PFHMC_ERRORDATA 0x000C0500 /* Reset: PFR */
-#define I40E_PFHMC_ERRORDATA_HMC_ERROR_DATA_SHIFT 0
-#define I40E_PFHMC_ERRORDATA_HMC_ERROR_DATA_MASK I40E_MASK(0x3FFFFFFF, I40E_PFHMC_ERRORDATA_HMC_ERROR_DATA_SHIFT)
 #define I40E_PFHMC_ERRORINFO 0x000C0400 /* Reset: PFR */
-#define I40E_PFHMC_ERRORINFO_PMF_INDEX_SHIFT 0
-#define I40E_PFHMC_ERRORINFO_PMF_INDEX_MASK I40E_MASK(0x1F, I40E_PFHMC_ERRORINFO_PMF_INDEX_SHIFT)
-#define I40E_PFHMC_ERRORINFO_PMF_ISVF_SHIFT 7
-#define I40E_PFHMC_ERRORINFO_PMF_ISVF_MASK I40E_MASK(0x1, I40E_PFHMC_ERRORINFO_PMF_ISVF_SHIFT)
-#define I40E_PFHMC_ERRORINFO_HMC_ERROR_TYPE_SHIFT 8
-#define I40E_PFHMC_ERRORINFO_HMC_ERROR_TYPE_MASK I40E_MASK(0xF, I40E_PFHMC_ERRORINFO_HMC_ERROR_TYPE_SHIFT)
-#define I40E_PFHMC_ERRORINFO_HMC_OBJECT_TYPE_SHIFT 16
-#define I40E_PFHMC_ERRORINFO_HMC_OBJECT_TYPE_MASK I40E_MASK(0x1F, I40E_PFHMC_ERRORINFO_HMC_OBJECT_TYPE_SHIFT)
-#define I40E_PFHMC_ERRORINFO_ERROR_DETECTED_SHIFT 31
-#define I40E_PFHMC_ERRORINFO_ERROR_DETECTED_MASK I40E_MASK(0x1, I40E_PFHMC_ERRORINFO_ERROR_DETECTED_SHIFT)
 #define I40E_PFHMC_PDINV 0x000C0300 /* Reset: PFR */
 #define I40E_PFHMC_PDINV_PMSDIDX_SHIFT 0
-#define I40E_PFHMC_PDINV_PMSDIDX_MASK I40E_MASK(0xFFF, I40E_PFHMC_PDINV_PMSDIDX_SHIFT)
 #define I40E_PFHMC_PDINV_PMPDIDX_SHIFT 16
-#define I40E_PFHMC_PDINV_PMPDIDX_MASK I40E_MASK(0x1FF, I40E_PFHMC_PDINV_PMPDIDX_SHIFT)
 #define I40E_PFHMC_SDCMD 0x000C0000 /* Reset: PFR */
-#define I40E_PFHMC_SDCMD_PMSDIDX_SHIFT 0
-#define I40E_PFHMC_SDCMD_PMSDIDX_MASK I40E_MASK(0xFFF, I40E_PFHMC_SDCMD_PMSDIDX_SHIFT)
 #define I40E_PFHMC_SDCMD_PMSDWR_SHIFT 31
-#define I40E_PFHMC_SDCMD_PMSDWR_MASK I40E_MASK(0x1, I40E_PFHMC_SDCMD_PMSDWR_SHIFT)
 #define I40E_PFHMC_SDDATAHIGH 0x000C0200 /* Reset: PFR */
-#define I40E_PFHMC_SDDATAHIGH_PMSDDATAHIGH_SHIFT 0
-#define I40E_PFHMC_SDDATAHIGH_PMSDDATAHIGH_MASK I40E_MASK(0xFFFFFFFF, I40E_PFHMC_SDDATAHIGH_PMSDDATAHIGH_SHIFT)
 #define I40E_PFHMC_SDDATALOW 0x000C0100 /* Reset: PFR */
 #define I40E_PFHMC_SDDATALOW_PMSDVALID_SHIFT 0
-#define I40E_PFHMC_SDDATALOW_PMSDVALID_MASK I40E_MASK(0x1, I40E_PFHMC_SDDATALOW_PMSDVALID_SHIFT)
 #define I40E_PFHMC_SDDATALOW_PMSDTYPE_SHIFT 1
-#define I40E_PFHMC_SDDATALOW_PMSDTYPE_MASK I40E_MASK(0x1, I40E_PFHMC_SDDATALOW_PMSDTYPE_SHIFT)
 #define I40E_PFHMC_SDDATALOW_PMSDBPCOUNT_SHIFT 2
-#define I40E_PFHMC_SDDATALOW_PMSDBPCOUNT_MASK I40E_MASK(0x3FF, I40E_PFHMC_SDDATALOW_PMSDBPCOUNT_SHIFT)
-#define I40E_PFHMC_SDDATALOW_PMSDDATALOW_SHIFT 12
-#define I40E_PFHMC_SDDATALOW_PMSDDATALOW_MASK I40E_MASK(0xFFFFF, I40E_PFHMC_SDDATALOW_PMSDDATALOW_SHIFT)
-#define I40E_GL_GP_FUSE(_i) (0x0009400C + ((_i) * 4)) /* _i=0...28 */ /* Reset: POR */
-#define I40E_GL_GP_FUSE_MAX_INDEX 28
-#define I40E_GL_GP_FUSE_GL_GP_FUSE_SHIFT 0
-#define I40E_GL_GP_FUSE_GL_GP_FUSE_MASK I40E_MASK(0xFFFFFFFF, I40E_GL_GP_FUSE_GL_GP_FUSE_SHIFT)
-#define I40E_GL_UFUSE 0x00094008 /* Reset: POR */
-#define I40E_GL_UFUSE_FOUR_PORT_ENABLE_SHIFT 1
-#define I40E_GL_UFUSE_FOUR_PORT_ENABLE_MASK I40E_MASK(0x1, I40E_GL_UFUSE_FOUR_PORT_ENABLE_SHIFT)
-#define I40E_GL_UFUSE_NIC_ID_SHIFT 2
-#define I40E_GL_UFUSE_NIC_ID_MASK I40E_MASK(0x1, I40E_GL_UFUSE_NIC_ID_SHIFT)
-#define I40E_GL_UFUSE_ULT_LOCKOUT_SHIFT 10
-#define I40E_GL_UFUSE_ULT_LOCKOUT_MASK I40E_MASK(0x1, I40E_GL_UFUSE_ULT_LOCKOUT_SHIFT)
-#define I40E_GL_UFUSE_CLS_LOCKOUT_SHIFT 11
-#define I40E_GL_UFUSE_CLS_LOCKOUT_MASK I40E_MASK(0x1, I40E_GL_UFUSE_CLS_LOCKOUT_SHIFT)
-#define I40E_EMPINT_GPIO_ENA 0x00088188 /* Reset: POR */
-#define I40E_EMPINT_GPIO_ENA_GPIO0_ENA_SHIFT 0
-#define I40E_EMPINT_GPIO_ENA_GPIO0_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO0_ENA_SHIFT)
-#define I40E_EMPINT_GPIO_ENA_GPIO1_ENA_SHIFT 1
-#define I40E_EMPINT_GPIO_ENA_GPIO1_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO1_ENA_SHIFT)
-#define I40E_EMPINT_GPIO_ENA_GPIO2_ENA_SHIFT 2
-#define I40E_EMPINT_GPIO_ENA_GPIO2_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO2_ENA_SHIFT)
-#define I40E_EMPINT_GPIO_ENA_GPIO3_ENA_SHIFT 3
-#define I40E_EMPINT_GPIO_ENA_GPIO3_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO3_ENA_SHIFT)
-#define I40E_EMPINT_GPIO_ENA_GPIO4_ENA_SHIFT 4
-#define I40E_EMPINT_GPIO_ENA_GPIO4_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO4_ENA_SHIFT)
-#define I40E_EMPINT_GPIO_ENA_GPIO5_ENA_SHIFT 5
-#define I40E_EMPINT_GPIO_ENA_GPIO5_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO5_ENA_SHIFT)
-#define I40E_EMPINT_GPIO_ENA_GPIO6_ENA_SHIFT 6
-#define I40E_EMPINT_GPIO_ENA_GPIO6_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO6_ENA_SHIFT)
-#define I40E_EMPINT_GPIO_ENA_GPIO7_ENA_SHIFT 7
-#define I40E_EMPINT_GPIO_ENA_GPIO7_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO7_ENA_SHIFT)
-#define I40E_EMPINT_GPIO_ENA_GPIO8_ENA_SHIFT 8
-#define I40E_EMPINT_GPIO_ENA_GPIO8_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO8_ENA_SHIFT)
-#define I40E_EMPINT_GPIO_ENA_GPIO9_ENA_SHIFT 9
-#define I40E_EMPINT_GPIO_ENA_GPIO9_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO9_ENA_SHIFT)
-#define I40E_EMPINT_GPIO_ENA_GPIO10_ENA_SHIFT 10
-#define I40E_EMPINT_GPIO_ENA_GPIO10_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO10_ENA_SHIFT)
-#define I40E_EMPINT_GPIO_ENA_GPIO11_ENA_SHIFT 11
-#define I40E_EMPINT_GPIO_ENA_GPIO11_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO11_ENA_SHIFT)
-#define I40E_EMPINT_GPIO_ENA_GPIO12_ENA_SHIFT 12
-#define I40E_EMPINT_GPIO_ENA_GPIO12_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO12_ENA_SHIFT)
-#define I40E_EMPINT_GPIO_ENA_GPIO13_ENA_SHIFT 13
-#define I40E_EMPINT_GPIO_ENA_GPIO13_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO13_ENA_SHIFT)
-#define I40E_EMPINT_GPIO_ENA_GPIO14_ENA_SHIFT 14
-#define I40E_EMPINT_GPIO_ENA_GPIO14_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO14_ENA_SHIFT)
-#define I40E_EMPINT_GPIO_ENA_GPIO15_ENA_SHIFT 15
-#define I40E_EMPINT_GPIO_ENA_GPIO15_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO15_ENA_SHIFT)
-#define I40E_EMPINT_GPIO_ENA_GPIO16_ENA_SHIFT 16
-#define I40E_EMPINT_GPIO_ENA_GPIO16_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO16_ENA_SHIFT)
-#define I40E_EMPINT_GPIO_ENA_GPIO17_ENA_SHIFT 17
-#define I40E_EMPINT_GPIO_ENA_GPIO17_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO17_ENA_SHIFT)
-#define I40E_EMPINT_GPIO_ENA_GPIO18_ENA_SHIFT 18
-#define I40E_EMPINT_GPIO_ENA_GPIO18_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO18_ENA_SHIFT)
-#define I40E_EMPINT_GPIO_ENA_GPIO19_ENA_SHIFT 19
-#define I40E_EMPINT_GPIO_ENA_GPIO19_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO19_ENA_SHIFT)
-#define I40E_EMPINT_GPIO_ENA_GPIO20_ENA_SHIFT 20
-#define I40E_EMPINT_GPIO_ENA_GPIO20_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO20_ENA_SHIFT)
-#define I40E_EMPINT_GPIO_ENA_GPIO21_ENA_SHIFT 21
-#define I40E_EMPINT_GPIO_ENA_GPIO21_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO21_ENA_SHIFT)
-#define I40E_EMPINT_GPIO_ENA_GPIO22_ENA_SHIFT 22
-#define I40E_EMPINT_GPIO_ENA_GPIO22_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO22_ENA_SHIFT)
-#define I40E_EMPINT_GPIO_ENA_GPIO23_ENA_SHIFT 23
-#define I40E_EMPINT_GPIO_ENA_GPIO23_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO23_ENA_SHIFT)
-#define I40E_EMPINT_GPIO_ENA_GPIO24_ENA_SHIFT 24
-#define I40E_EMPINT_GPIO_ENA_GPIO24_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO24_ENA_SHIFT)
-#define I40E_EMPINT_GPIO_ENA_GPIO25_ENA_SHIFT 25
-#define I40E_EMPINT_GPIO_ENA_GPIO25_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO25_ENA_SHIFT)
-#define I40E_EMPINT_GPIO_ENA_GPIO26_ENA_SHIFT 26
-#define I40E_EMPINT_GPIO_ENA_GPIO26_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO26_ENA_SHIFT)
-#define I40E_EMPINT_GPIO_ENA_GPIO27_ENA_SHIFT 27
-#define I40E_EMPINT_GPIO_ENA_GPIO27_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO27_ENA_SHIFT)
-#define I40E_EMPINT_GPIO_ENA_GPIO28_ENA_SHIFT 28
-#define I40E_EMPINT_GPIO_ENA_GPIO28_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO28_ENA_SHIFT)
-#define I40E_EMPINT_GPIO_ENA_GPIO29_ENA_SHIFT 29
-#define I40E_EMPINT_GPIO_ENA_GPIO29_ENA_MASK I40E_MASK(0x1, I40E_EMPINT_GPIO_ENA_GPIO29_ENA_SHIFT)
 #define I40E_PFGEN_PORTMDIO_NUM 0x0003F100 /* Reset: CORER */
-#define I40E_PFGEN_PORTMDIO_NUM_PORT_NUM_SHIFT 0
-#define I40E_PFGEN_PORTMDIO_NUM_PORT_NUM_MASK I40E_MASK(0x3, I40E_PFGEN_PORTMDIO_NUM_PORT_NUM_SHIFT)
 #define I40E_PFGEN_PORTMDIO_NUM_VFLINK_STAT_ENA_SHIFT 4
 #define I40E_PFGEN_PORTMDIO_NUM_VFLINK_STAT_ENA_MASK I40E_MASK(0x1, I40E_PFGEN_PORTMDIO_NUM_VFLINK_STAT_ENA_SHIFT)
 #define I40E_PFINT_AEQCTL 0x00038700 /* Reset: CORER */
 #define I40E_PFINT_AEQCTL_MSIX_INDX_SHIFT 0
-#define I40E_PFINT_AEQCTL_MSIX_INDX_MASK I40E_MASK(0xFF, I40E_PFINT_AEQCTL_MSIX_INDX_SHIFT)
 #define I40E_PFINT_AEQCTL_ITR_INDX_SHIFT 11
-#define I40E_PFINT_AEQCTL_ITR_INDX_MASK I40E_MASK(0x3, I40E_PFINT_AEQCTL_ITR_INDX_SHIFT)
-#define I40E_PFINT_AEQCTL_MSIX0_INDX_SHIFT 13
-#define I40E_PFINT_AEQCTL_MSIX0_INDX_MASK I40E_MASK(0x7, I40E_PFINT_AEQCTL_MSIX0_INDX_SHIFT)
 #define I40E_PFINT_AEQCTL_CAUSE_ENA_SHIFT 30
 #define I40E_PFINT_AEQCTL_CAUSE_ENA_MASK I40E_MASK(0x1, I40E_PFINT_AEQCTL_CAUSE_ENA_SHIFT)
-#define I40E_PFINT_AEQCTL_INTEVENT_SHIFT 31
-#define I40E_PFINT_AEQCTL_INTEVENT_MASK I40E_MASK(0x1, I40E_PFINT_AEQCTL_INTEVENT_SHIFT)
 #define I40E_PFINT_CEQCTL(_INTPF) (0x00036800 + ((_INTPF) * 4)) /* _i=0...511 */ /* Reset: CORER */
-#define I40E_PFINT_CEQCTL_MAX_INDEX 511
 #define I40E_PFINT_CEQCTL_MSIX_INDX_SHIFT 0
-#define I40E_PFINT_CEQCTL_MSIX_INDX_MASK I40E_MASK(0xFF, I40E_PFINT_CEQCTL_MSIX_INDX_SHIFT)
 #define I40E_PFINT_CEQCTL_ITR_INDX_SHIFT 11
-#define I40E_PFINT_CEQCTL_ITR_INDX_MASK I40E_MASK(0x3, I40E_PFINT_CEQCTL_ITR_INDX_SHIFT)
-#define I40E_PFINT_CEQCTL_MSIX0_INDX_SHIFT 13
-#define I40E_PFINT_CEQCTL_MSIX0_INDX_MASK I40E_MASK(0x7, I40E_PFINT_CEQCTL_MSIX0_INDX_SHIFT)
 #define I40E_PFINT_CEQCTL_NEXTQ_INDX_SHIFT 16
-#define I40E_PFINT_CEQCTL_NEXTQ_INDX_MASK I40E_MASK(0x7FF, I40E_PFINT_CEQCTL_NEXTQ_INDX_SHIFT)
-#define I40E_PFINT_CEQCTL_NEXTQ_TYPE_SHIFT 27
-#define I40E_PFINT_CEQCTL_NEXTQ_TYPE_MASK I40E_MASK(0x3, I40E_PFINT_CEQCTL_NEXTQ_TYPE_SHIFT)
 #define I40E_PFINT_CEQCTL_CAUSE_ENA_SHIFT 30
 #define I40E_PFINT_CEQCTL_CAUSE_ENA_MASK I40E_MASK(0x1, I40E_PFINT_CEQCTL_CAUSE_ENA_SHIFT)
-#define I40E_PFINT_CEQCTL_INTEVENT_SHIFT 31
-#define I40E_PFINT_CEQCTL_INTEVENT_MASK I40E_MASK(0x1, I40E_PFINT_CEQCTL_INTEVENT_SHIFT)
 #define I40E_GLINT_CTL 0x0003F800 /* Reset: CORER */
-#define I40E_GLINT_CTL_DIS_AUTOMASK_PF0_SHIFT 0
-#define I40E_GLINT_CTL_DIS_AUTOMASK_PF0_MASK I40E_MASK(0x1, I40E_GLINT_CTL_DIS_AUTOMASK_PF0_SHIFT)
 #define I40E_GLINT_CTL_DIS_AUTOMASK_VF0_SHIFT 1
 #define I40E_GLINT_CTL_DIS_AUTOMASK_VF0_MASK I40E_MASK(0x1, I40E_GLINT_CTL_DIS_AUTOMASK_VF0_SHIFT)
-#define I40E_GLINT_CTL_DIS_AUTOMASK_N_SHIFT 2
-#define I40E_GLINT_CTL_DIS_AUTOMASK_N_MASK I40E_MASK(0x1, I40E_GLINT_CTL_DIS_AUTOMASK_N_SHIFT)
 #define I40E_PFINT_DYN_CTL0 0x00038480 /* Reset: PFR */
 #define I40E_PFINT_DYN_CTL0_INTENA_SHIFT 0
 #define I40E_PFINT_DYN_CTL0_INTENA_MASK I40E_MASK(0x1, I40E_PFINT_DYN_CTL0_INTENA_SHIFT)
@@ -872,8 +171,6 @@
 #define I40E_PFINT_DYN_CTL0_SWINT_TRIG_MASK I40E_MASK(0x1, I40E_PFINT_DYN_CTL0_SWINT_TRIG_SHIFT)
 #define I40E_PFINT_DYN_CTL0_ITR_INDX_SHIFT 3
 #define I40E_PFINT_DYN_CTL0_ITR_INDX_MASK I40E_MASK(0x3, I40E_PFINT_DYN_CTL0_ITR_INDX_SHIFT)
-#define I40E_PFINT_DYN_CTL0_INTERVAL_SHIFT 5
-#define I40E_PFINT_DYN_CTL0_INTERVAL_MASK I40E_MASK(0xFFF, I40E_PFINT_DYN_CTL0_INTERVAL_SHIFT)
 #define I40E_PFINT_DYN_CTL0_SW_ITR_INDX_ENA_SHIFT 24
 #define I40E_PFINT_DYN_CTL0_SW_ITR_INDX_ENA_MASK I40E_MASK(0x1, I40E_PFINT_DYN_CTL0_SW_ITR_INDX_ENA_SHIFT)
 #define I40E_PFINT_DYN_CTL0_SW_ITR_INDX_SHIFT 25
@@ -881,7 +178,6 @@
 #define I40E_PFINT_DYN_CTL0_INTENA_MSK_SHIFT 31
 #define I40E_PFINT_DYN_CTL0_INTENA_MSK_MASK I40E_MASK(0x1, I40E_PFINT_DYN_CTL0_INTENA_MSK_SHIFT)
 #define I40E_PFINT_DYN_CTLN(_INTPF) (0x00034800 + ((_INTPF) * 4)) /* _i=0...511 */ /* Reset: PFR */
-#define I40E_PFINT_DYN_CTLN_MAX_INDEX 511
 #define I40E_PFINT_DYN_CTLN_INTENA_SHIFT 0
 #define I40E_PFINT_DYN_CTLN_INTENA_MASK I40E_MASK(0x1, I40E_PFINT_DYN_CTLN_INTENA_SHIFT)
 #define I40E_PFINT_DYN_CTLN_CLEARPBA_SHIFT 1
@@ -891,93 +187,13 @@
 #define I40E_PFINT_DYN_CTLN_ITR_INDX_SHIFT 3
 #define I40E_PFINT_DYN_CTLN_ITR_INDX_MASK I40E_MASK(0x3, I40E_PFINT_DYN_CTLN_ITR_INDX_SHIFT)
 #define I40E_PFINT_DYN_CTLN_INTERVAL_SHIFT 5
-#define I40E_PFINT_DYN_CTLN_INTERVAL_MASK I40E_MASK(0xFFF, I40E_PFINT_DYN_CTLN_INTERVAL_SHIFT)
 #define I40E_PFINT_DYN_CTLN_SW_ITR_INDX_ENA_SHIFT 24
 #define I40E_PFINT_DYN_CTLN_SW_ITR_INDX_ENA_MASK I40E_MASK(0x1, I40E_PFINT_DYN_CTLN_SW_ITR_INDX_ENA_SHIFT)
-#define I40E_PFINT_DYN_CTLN_SW_ITR_INDX_SHIFT 25
-#define I40E_PFINT_DYN_CTLN_SW_ITR_INDX_MASK I40E_MASK(0x3, I40E_PFINT_DYN_CTLN_SW_ITR_INDX_SHIFT)
-#define I40E_PFINT_DYN_CTLN_INTENA_MSK_SHIFT 31
-#define I40E_PFINT_DYN_CTLN_INTENA_MSK_MASK I40E_MASK(0x1, I40E_PFINT_DYN_CTLN_INTENA_MSK_SHIFT)
-#define I40E_PFINT_GPIO_ENA 0x00088080 /* Reset: CORER */
-#define I40E_PFINT_GPIO_ENA_GPIO0_ENA_SHIFT 0
-#define I40E_PFINT_GPIO_ENA_GPIO0_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO0_ENA_SHIFT)
-#define I40E_PFINT_GPIO_ENA_GPIO1_ENA_SHIFT 1
-#define I40E_PFINT_GPIO_ENA_GPIO1_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO1_ENA_SHIFT)
-#define I40E_PFINT_GPIO_ENA_GPIO2_ENA_SHIFT 2
-#define I40E_PFINT_GPIO_ENA_GPIO2_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO2_ENA_SHIFT)
-#define I40E_PFINT_GPIO_ENA_GPIO3_ENA_SHIFT 3
-#define I40E_PFINT_GPIO_ENA_GPIO3_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO3_ENA_SHIFT)
-#define I40E_PFINT_GPIO_ENA_GPIO4_ENA_SHIFT 4
-#define I40E_PFINT_GPIO_ENA_GPIO4_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO4_ENA_SHIFT)
-#define I40E_PFINT_GPIO_ENA_GPIO5_ENA_SHIFT 5
-#define I40E_PFINT_GPIO_ENA_GPIO5_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO5_ENA_SHIFT)
-#define I40E_PFINT_GPIO_ENA_GPIO6_ENA_SHIFT 6
-#define I40E_PFINT_GPIO_ENA_GPIO6_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO6_ENA_SHIFT)
-#define I40E_PFINT_GPIO_ENA_GPIO7_ENA_SHIFT 7
-#define I40E_PFINT_GPIO_ENA_GPIO7_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO7_ENA_SHIFT)
-#define I40E_PFINT_GPIO_ENA_GPIO8_ENA_SHIFT 8
-#define I40E_PFINT_GPIO_ENA_GPIO8_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO8_ENA_SHIFT)
-#define I40E_PFINT_GPIO_ENA_GPIO9_ENA_SHIFT 9
-#define I40E_PFINT_GPIO_ENA_GPIO9_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO9_ENA_SHIFT)
-#define I40E_PFINT_GPIO_ENA_GPIO10_ENA_SHIFT 10
-#define I40E_PFINT_GPIO_ENA_GPIO10_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO10_ENA_SHIFT)
-#define I40E_PFINT_GPIO_ENA_GPIO11_ENA_SHIFT 11
-#define I40E_PFINT_GPIO_ENA_GPIO11_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO11_ENA_SHIFT)
-#define I40E_PFINT_GPIO_ENA_GPIO12_ENA_SHIFT 12
-#define I40E_PFINT_GPIO_ENA_GPIO12_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO12_ENA_SHIFT)
-#define I40E_PFINT_GPIO_ENA_GPIO13_ENA_SHIFT 13
-#define I40E_PFINT_GPIO_ENA_GPIO13_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO13_ENA_SHIFT)
-#define I40E_PFINT_GPIO_ENA_GPIO14_ENA_SHIFT 14
-#define I40E_PFINT_GPIO_ENA_GPIO14_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO14_ENA_SHIFT)
-#define I40E_PFINT_GPIO_ENA_GPIO15_ENA_SHIFT 15
-#define I40E_PFINT_GPIO_ENA_GPIO15_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO15_ENA_SHIFT)
-#define I40E_PFINT_GPIO_ENA_GPIO16_ENA_SHIFT 16
-#define I40E_PFINT_GPIO_ENA_GPIO16_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO16_ENA_SHIFT)
-#define I40E_PFINT_GPIO_ENA_GPIO17_ENA_SHIFT 17
-#define I40E_PFINT_GPIO_ENA_GPIO17_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO17_ENA_SHIFT)
-#define I40E_PFINT_GPIO_ENA_GPIO18_ENA_SHIFT 18
-#define I40E_PFINT_GPIO_ENA_GPIO18_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO18_ENA_SHIFT)
-#define I40E_PFINT_GPIO_ENA_GPIO19_ENA_SHIFT 19
-#define I40E_PFINT_GPIO_ENA_GPIO19_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO19_ENA_SHIFT)
-#define I40E_PFINT_GPIO_ENA_GPIO20_ENA_SHIFT 20
-#define I40E_PFINT_GPIO_ENA_GPIO20_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO20_ENA_SHIFT)
-#define I40E_PFINT_GPIO_ENA_GPIO21_ENA_SHIFT 21
-#define I40E_PFINT_GPIO_ENA_GPIO21_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO21_ENA_SHIFT)
-#define I40E_PFINT_GPIO_ENA_GPIO22_ENA_SHIFT 22
-#define I40E_PFINT_GPIO_ENA_GPIO22_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO22_ENA_SHIFT)
-#define I40E_PFINT_GPIO_ENA_GPIO23_ENA_SHIFT 23
-#define I40E_PFINT_GPIO_ENA_GPIO23_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO23_ENA_SHIFT)
-#define I40E_PFINT_GPIO_ENA_GPIO24_ENA_SHIFT 24
-#define I40E_PFINT_GPIO_ENA_GPIO24_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO24_ENA_SHIFT)
-#define I40E_PFINT_GPIO_ENA_GPIO25_ENA_SHIFT 25
-#define I40E_PFINT_GPIO_ENA_GPIO25_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO25_ENA_SHIFT)
-#define I40E_PFINT_GPIO_ENA_GPIO26_ENA_SHIFT 26
-#define I40E_PFINT_GPIO_ENA_GPIO26_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO26_ENA_SHIFT)
-#define I40E_PFINT_GPIO_ENA_GPIO27_ENA_SHIFT 27
-#define I40E_PFINT_GPIO_ENA_GPIO27_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO27_ENA_SHIFT)
-#define I40E_PFINT_GPIO_ENA_GPIO28_ENA_SHIFT 28
-#define I40E_PFINT_GPIO_ENA_GPIO28_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO28_ENA_SHIFT)
-#define I40E_PFINT_GPIO_ENA_GPIO29_ENA_SHIFT 29
-#define I40E_PFINT_GPIO_ENA_GPIO29_ENA_MASK I40E_MASK(0x1, I40E_PFINT_GPIO_ENA_GPIO29_ENA_SHIFT)
 #define I40E_PFINT_ICR0 0x00038780 /* Reset: CORER */
 #define I40E_PFINT_ICR0_INTEVENT_SHIFT 0
 #define I40E_PFINT_ICR0_INTEVENT_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_INTEVENT_SHIFT)
 #define I40E_PFINT_ICR0_QUEUE_0_SHIFT 1
 #define I40E_PFINT_ICR0_QUEUE_0_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_QUEUE_0_SHIFT)
-#define I40E_PFINT_ICR0_QUEUE_1_SHIFT 2
-#define I40E_PFINT_ICR0_QUEUE_1_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_QUEUE_1_SHIFT)
-#define I40E_PFINT_ICR0_QUEUE_2_SHIFT 3
-#define I40E_PFINT_ICR0_QUEUE_2_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_QUEUE_2_SHIFT)
-#define I40E_PFINT_ICR0_QUEUE_3_SHIFT 4
-#define I40E_PFINT_ICR0_QUEUE_3_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_QUEUE_3_SHIFT)
-#define I40E_PFINT_ICR0_QUEUE_4_SHIFT 5
-#define I40E_PFINT_ICR0_QUEUE_4_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_QUEUE_4_SHIFT)
-#define I40E_PFINT_ICR0_QUEUE_5_SHIFT 6
-#define I40E_PFINT_ICR0_QUEUE_5_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_QUEUE_5_SHIFT)
-#define I40E_PFINT_ICR0_QUEUE_6_SHIFT 7
-#define I40E_PFINT_ICR0_QUEUE_6_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_QUEUE_6_SHIFT)
-#define I40E_PFINT_ICR0_QUEUE_7_SHIFT 8
-#define I40E_PFINT_ICR0_QUEUE_7_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_QUEUE_7_SHIFT)
 #define I40E_PFINT_ICR0_ECC_ERR_SHIFT 16
 #define I40E_PFINT_ICR0_ECC_ERR_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_ECC_ERR_SHIFT)
 #define I40E_PFINT_ICR0_MAL_DETECT_SHIFT 19
@@ -986,14 +202,8 @@
 #define I40E_PFINT_ICR0_GRST_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_GRST_SHIFT)
 #define I40E_PFINT_ICR0_PCI_EXCEPTION_SHIFT 21
 #define I40E_PFINT_ICR0_PCI_EXCEPTION_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_PCI_EXCEPTION_SHIFT)
-#define I40E_PFINT_ICR0_GPIO_SHIFT 22
-#define I40E_PFINT_ICR0_GPIO_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_GPIO_SHIFT)
 #define I40E_PFINT_ICR0_TIMESYNC_SHIFT 23
 #define I40E_PFINT_ICR0_TIMESYNC_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_TIMESYNC_SHIFT)
-#define I40E_PFINT_ICR0_STORM_DETECT_SHIFT 24
-#define I40E_PFINT_ICR0_STORM_DETECT_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_STORM_DETECT_SHIFT)
-#define I40E_PFINT_ICR0_LINK_STAT_CHANGE_SHIFT 25
-#define I40E_PFINT_ICR0_LINK_STAT_CHANGE_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_LINK_STAT_CHANGE_SHIFT)
 #define I40E_PFINT_ICR0_HMC_ERR_SHIFT 26
 #define I40E_PFINT_ICR0_HMC_ERR_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_HMC_ERR_SHIFT)
 #define I40E_PFINT_ICR0_PE_CRITERR_SHIFT 28
@@ -1017,10 +227,6 @@
 #define I40E_PFINT_ICR0_ENA_GPIO_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_ENA_GPIO_SHIFT)
 #define I40E_PFINT_ICR0_ENA_TIMESYNC_SHIFT 23
 #define I40E_PFINT_ICR0_ENA_TIMESYNC_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_ENA_TIMESYNC_SHIFT)
-#define I40E_PFINT_ICR0_ENA_STORM_DETECT_SHIFT 24
-#define I40E_PFINT_ICR0_ENA_STORM_DETECT_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_ENA_STORM_DETECT_SHIFT)
-#define I40E_PFINT_ICR0_ENA_LINK_STAT_CHANGE_SHIFT 25
-#define I40E_PFINT_ICR0_ENA_LINK_STAT_CHANGE_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_ENA_LINK_STAT_CHANGE_SHIFT)
 #define I40E_PFINT_ICR0_ENA_HMC_ERR_SHIFT 26
 #define I40E_PFINT_ICR0_ENA_HMC_ERR_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_ENA_HMC_ERR_SHIFT)
 #define I40E_PFINT_ICR0_ENA_PE_CRITERR_SHIFT 28
@@ -1029,43 +235,17 @@
 #define I40E_PFINT_ICR0_ENA_VFLR_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_ENA_VFLR_SHIFT)
 #define I40E_PFINT_ICR0_ENA_ADMINQ_SHIFT 30
 #define I40E_PFINT_ICR0_ENA_ADMINQ_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_ENA_ADMINQ_SHIFT)
-#define I40E_PFINT_ICR0_ENA_RSVD_SHIFT 31
-#define I40E_PFINT_ICR0_ENA_RSVD_MASK I40E_MASK(0x1, I40E_PFINT_ICR0_ENA_RSVD_SHIFT)
 #define I40E_PFINT_ITR0(_i) (0x00038000 + ((_i) * 128)) /* _i=0...2 */ /* Reset: PFR */
-#define I40E_PFINT_ITR0_MAX_INDEX 2
-#define I40E_PFINT_ITR0_INTERVAL_SHIFT 0
-#define I40E_PFINT_ITR0_INTERVAL_MASK I40E_MASK(0xFFF, I40E_PFINT_ITR0_INTERVAL_SHIFT)
 #define I40E_PFINT_ITRN(_i, _INTPF) (0x00030000 + ((_i) * 2048 + (_INTPF) * 4)) /* _i=0...2, _INTPF=0...511 */ /* Reset: PFR */
-#define I40E_PFINT_ITRN_MAX_INDEX 2
-#define I40E_PFINT_ITRN_INTERVAL_SHIFT 0
-#define I40E_PFINT_ITRN_INTERVAL_MASK I40E_MASK(0xFFF, I40E_PFINT_ITRN_INTERVAL_SHIFT)
 #define I40E_PFINT_LNKLST0 0x00038500 /* Reset: PFR */
 #define I40E_PFINT_LNKLST0_FIRSTQ_INDX_SHIFT 0
-#define I40E_PFINT_LNKLST0_FIRSTQ_INDX_MASK I40E_MASK(0x7FF, I40E_PFINT_LNKLST0_FIRSTQ_INDX_SHIFT)
-#define I40E_PFINT_LNKLST0_FIRSTQ_TYPE_SHIFT 11
-#define I40E_PFINT_LNKLST0_FIRSTQ_TYPE_MASK I40E_MASK(0x3, I40E_PFINT_LNKLST0_FIRSTQ_TYPE_SHIFT)
 #define I40E_PFINT_LNKLSTN(_INTPF) (0x00035000 + ((_INTPF) * 4)) /* _i=0...511 */ /* Reset: PFR */
-#define I40E_PFINT_LNKLSTN_MAX_INDEX 511
 #define I40E_PFINT_LNKLSTN_FIRSTQ_INDX_SHIFT 0
 #define I40E_PFINT_LNKLSTN_FIRSTQ_INDX_MASK I40E_MASK(0x7FF, I40E_PFINT_LNKLSTN_FIRSTQ_INDX_SHIFT)
 #define I40E_PFINT_LNKLSTN_FIRSTQ_TYPE_SHIFT 11
-#define I40E_PFINT_LNKLSTN_FIRSTQ_TYPE_MASK I40E_MASK(0x3, I40E_PFINT_LNKLSTN_FIRSTQ_TYPE_SHIFT)
-#define I40E_PFINT_RATE0 0x00038580 /* Reset: PFR */
-#define I40E_PFINT_RATE0_INTERVAL_SHIFT 0
-#define I40E_PFINT_RATE0_INTERVAL_MASK I40E_MASK(0x3F, I40E_PFINT_RATE0_INTERVAL_SHIFT)
-#define I40E_PFINT_RATE0_INTRL_ENA_SHIFT 6
-#define I40E_PFINT_RATE0_INTRL_ENA_MASK I40E_MASK(0x1, I40E_PFINT_RATE0_INTRL_ENA_SHIFT)
 #define I40E_PFINT_RATEN(_INTPF) (0x00035800 + ((_INTPF) * 4)) /* _i=0...511 */ /* Reset: PFR */
-#define I40E_PFINT_RATEN_MAX_INDEX 511
-#define I40E_PFINT_RATEN_INTERVAL_SHIFT 0
-#define I40E_PFINT_RATEN_INTERVAL_MASK I40E_MASK(0x3F, I40E_PFINT_RATEN_INTERVAL_SHIFT)
-#define I40E_PFINT_RATEN_INTRL_ENA_SHIFT 6
-#define I40E_PFINT_RATEN_INTRL_ENA_MASK I40E_MASK(0x1, I40E_PFINT_RATEN_INTRL_ENA_SHIFT)
 #define I40E_PFINT_STAT_CTL0 0x00038400 /* Reset: CORER */
-#define I40E_PFINT_STAT_CTL0_OTHER_ITR_INDX_SHIFT 2
-#define I40E_PFINT_STAT_CTL0_OTHER_ITR_INDX_MASK I40E_MASK(0x3, I40E_PFINT_STAT_CTL0_OTHER_ITR_INDX_SHIFT)
 #define I40E_QINT_RQCTL(_Q) (0x0003A000 + ((_Q) * 4)) /* _i=0...1535 */ /* Reset: CORER */
-#define I40E_QINT_RQCTL_MAX_INDEX 1535
 #define I40E_QINT_RQCTL_MSIX_INDX_SHIFT 0
 #define I40E_QINT_RQCTL_MSIX_INDX_MASK I40E_MASK(0xFF, I40E_QINT_RQCTL_MSIX_INDX_SHIFT)
 #define I40E_QINT_RQCTL_ITR_INDX_SHIFT 11
@@ -1075,13 +255,11 @@
 #define I40E_QINT_RQCTL_NEXTQ_INDX_SHIFT 16
 #define I40E_QINT_RQCTL_NEXTQ_INDX_MASK I40E_MASK(0x7FF, I40E_QINT_RQCTL_NEXTQ_INDX_SHIFT)
 #define I40E_QINT_RQCTL_NEXTQ_TYPE_SHIFT 27
-#define I40E_QINT_RQCTL_NEXTQ_TYPE_MASK I40E_MASK(0x3, I40E_QINT_RQCTL_NEXTQ_TYPE_SHIFT)
 #define I40E_QINT_RQCTL_CAUSE_ENA_SHIFT 30
 #define I40E_QINT_RQCTL_CAUSE_ENA_MASK I40E_MASK(0x1, I40E_QINT_RQCTL_CAUSE_ENA_SHIFT)
 #define I40E_QINT_RQCTL_INTEVENT_SHIFT 31
 #define I40E_QINT_RQCTL_INTEVENT_MASK I40E_MASK(0x1, I40E_QINT_RQCTL_INTEVENT_SHIFT)
 #define I40E_QINT_TQCTL(_Q) (0x0003C000 + ((_Q) * 4)) /* _i=0...1535 */ /* Reset: CORER */
-#define I40E_QINT_TQCTL_MAX_INDEX 1535
 #define I40E_QINT_TQCTL_MSIX_INDX_SHIFT 0
 #define I40E_QINT_TQCTL_MSIX_INDX_MASK I40E_MASK(0xFF, I40E_QINT_TQCTL_MSIX_INDX_SHIFT)
 #define I40E_QINT_TQCTL_ITR_INDX_SHIFT 11
@@ -1091,160 +269,45 @@
 #define I40E_QINT_TQCTL_NEXTQ_INDX_SHIFT 16
 #define I40E_QINT_TQCTL_NEXTQ_INDX_MASK I40E_MASK(0x7FF, I40E_QINT_TQCTL_NEXTQ_INDX_SHIFT)
 #define I40E_QINT_TQCTL_NEXTQ_TYPE_SHIFT 27
-#define I40E_QINT_TQCTL_NEXTQ_TYPE_MASK I40E_MASK(0x3, I40E_QINT_TQCTL_NEXTQ_TYPE_SHIFT)
 #define I40E_QINT_TQCTL_CAUSE_ENA_SHIFT 30
 #define I40E_QINT_TQCTL_CAUSE_ENA_MASK I40E_MASK(0x1, I40E_QINT_TQCTL_CAUSE_ENA_SHIFT)
 #define I40E_QINT_TQCTL_INTEVENT_SHIFT 31
 #define I40E_QINT_TQCTL_INTEVENT_MASK I40E_MASK(0x1, I40E_QINT_TQCTL_INTEVENT_SHIFT)
 #define I40E_VFINT_DYN_CTL0(_VF) (0x0002A400 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: VFR */
-#define I40E_VFINT_DYN_CTL0_MAX_INDEX 127
-#define I40E_VFINT_DYN_CTL0_INTENA_SHIFT 0
-#define I40E_VFINT_DYN_CTL0_INTENA_MASK I40E_MASK(0x1, I40E_VFINT_DYN_CTL0_INTENA_SHIFT)
-#define I40E_VFINT_DYN_CTL0_CLEARPBA_SHIFT 1
-#define I40E_VFINT_DYN_CTL0_CLEARPBA_MASK I40E_MASK(0x1, I40E_VFINT_DYN_CTL0_CLEARPBA_SHIFT)
-#define I40E_VFINT_DYN_CTL0_SWINT_TRIG_SHIFT 2
-#define I40E_VFINT_DYN_CTL0_SWINT_TRIG_MASK I40E_MASK(0x1, I40E_VFINT_DYN_CTL0_SWINT_TRIG_SHIFT)
-#define I40E_VFINT_DYN_CTL0_ITR_INDX_SHIFT 3
-#define I40E_VFINT_DYN_CTL0_ITR_INDX_MASK I40E_MASK(0x3, I40E_VFINT_DYN_CTL0_ITR_INDX_SHIFT)
-#define I40E_VFINT_DYN_CTL0_INTERVAL_SHIFT 5
-#define I40E_VFINT_DYN_CTL0_INTERVAL_MASK I40E_MASK(0xFFF, I40E_VFINT_DYN_CTL0_INTERVAL_SHIFT)
-#define I40E_VFINT_DYN_CTL0_SW_ITR_INDX_ENA_SHIFT 24
-#define I40E_VFINT_DYN_CTL0_SW_ITR_INDX_ENA_MASK I40E_MASK(0x1, I40E_VFINT_DYN_CTL0_SW_ITR_INDX_ENA_SHIFT)
-#define I40E_VFINT_DYN_CTL0_SW_ITR_INDX_SHIFT 25
-#define I40E_VFINT_DYN_CTL0_SW_ITR_INDX_MASK I40E_MASK(0x3, I40E_VFINT_DYN_CTL0_SW_ITR_INDX_SHIFT)
-#define I40E_VFINT_DYN_CTL0_INTENA_MSK_SHIFT 31
-#define I40E_VFINT_DYN_CTL0_INTENA_MSK_MASK I40E_MASK(0x1, I40E_VFINT_DYN_CTL0_INTENA_MSK_SHIFT)
 #define I40E_VFINT_DYN_CTLN(_INTVF) (0x00024800 + ((_INTVF) * 4)) /* _i=0...511 */ /* Reset: VFR */
-#define I40E_VFINT_DYN_CTLN_MAX_INDEX 511
-#define I40E_VFINT_DYN_CTLN_INTENA_SHIFT 0
-#define I40E_VFINT_DYN_CTLN_INTENA_MASK I40E_MASK(0x1, I40E_VFINT_DYN_CTLN_INTENA_SHIFT)
 #define I40E_VFINT_DYN_CTLN_CLEARPBA_SHIFT 1
 #define I40E_VFINT_DYN_CTLN_CLEARPBA_MASK I40E_MASK(0x1, I40E_VFINT_DYN_CTLN_CLEARPBA_SHIFT)
-#define I40E_VFINT_DYN_CTLN_SWINT_TRIG_SHIFT 2
-#define I40E_VFINT_DYN_CTLN_SWINT_TRIG_MASK I40E_MASK(0x1, I40E_VFINT_DYN_CTLN_SWINT_TRIG_SHIFT)
-#define I40E_VFINT_DYN_CTLN_ITR_INDX_SHIFT 3
-#define I40E_VFINT_DYN_CTLN_ITR_INDX_MASK I40E_MASK(0x3, I40E_VFINT_DYN_CTLN_ITR_INDX_SHIFT)
-#define I40E_VFINT_DYN_CTLN_INTERVAL_SHIFT 5
-#define I40E_VFINT_DYN_CTLN_INTERVAL_MASK I40E_MASK(0xFFF, I40E_VFINT_DYN_CTLN_INTERVAL_SHIFT)
-#define I40E_VFINT_DYN_CTLN_SW_ITR_INDX_ENA_SHIFT 24
-#define I40E_VFINT_DYN_CTLN_SW_ITR_INDX_ENA_MASK I40E_MASK(0x1, I40E_VFINT_DYN_CTLN_SW_ITR_INDX_ENA_SHIFT)
-#define I40E_VFINT_DYN_CTLN_SW_ITR_INDX_SHIFT 25
-#define I40E_VFINT_DYN_CTLN_SW_ITR_INDX_MASK I40E_MASK(0x3, I40E_VFINT_DYN_CTLN_SW_ITR_INDX_SHIFT)
-#define I40E_VFINT_DYN_CTLN_INTENA_MSK_SHIFT 31
-#define I40E_VFINT_DYN_CTLN_INTENA_MSK_MASK I40E_MASK(0x1, I40E_VFINT_DYN_CTLN_INTENA_MSK_SHIFT)
-#define I40E_VFINT_ICR0(_VF) (0x0002BC00 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: CORER */
-#define I40E_VFINT_ICR0_MAX_INDEX 127
-#define I40E_VFINT_ICR0_INTEVENT_SHIFT 0
-#define I40E_VFINT_ICR0_INTEVENT_MASK I40E_MASK(0x1, I40E_VFINT_ICR0_INTEVENT_SHIFT)
-#define I40E_VFINT_ICR0_QUEUE_0_SHIFT 1
-#define I40E_VFINT_ICR0_QUEUE_0_MASK I40E_MASK(0x1, I40E_VFINT_ICR0_QUEUE_0_SHIFT)
-#define I40E_VFINT_ICR0_QUEUE_1_SHIFT 2
-#define I40E_VFINT_ICR0_QUEUE_1_MASK I40E_MASK(0x1, I40E_VFINT_ICR0_QUEUE_1_SHIFT)
-#define I40E_VFINT_ICR0_QUEUE_2_SHIFT 3
-#define I40E_VFINT_ICR0_QUEUE_2_MASK I40E_MASK(0x1, I40E_VFINT_ICR0_QUEUE_2_SHIFT)
-#define I40E_VFINT_ICR0_QUEUE_3_SHIFT 4
-#define I40E_VFINT_ICR0_QUEUE_3_MASK I40E_MASK(0x1, I40E_VFINT_ICR0_QUEUE_3_SHIFT)
-#define I40E_VFINT_ICR0_LINK_STAT_CHANGE_SHIFT 25
-#define I40E_VFINT_ICR0_LINK_STAT_CHANGE_MASK I40E_MASK(0x1, I40E_VFINT_ICR0_LINK_STAT_CHANGE_SHIFT)
-#define I40E_VFINT_ICR0_ADMINQ_SHIFT 30
-#define I40E_VFINT_ICR0_ADMINQ_MASK I40E_MASK(0x1, I40E_VFINT_ICR0_ADMINQ_SHIFT)
-#define I40E_VFINT_ICR0_SWINT_SHIFT 31
-#define I40E_VFINT_ICR0_SWINT_MASK I40E_MASK(0x1, I40E_VFINT_ICR0_SWINT_SHIFT)
-#define I40E_VFINT_ICR0_ENA(_VF) (0x0002C000 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: CORER */
-#define I40E_VFINT_ICR0_ENA_MAX_INDEX 127
-#define I40E_VFINT_ICR0_ENA_LINK_STAT_CHANGE_SHIFT 25
-#define I40E_VFINT_ICR0_ENA_LINK_STAT_CHANGE_MASK I40E_MASK(0x1, I40E_VFINT_ICR0_ENA_LINK_STAT_CHANGE_SHIFT)
-#define I40E_VFINT_ICR0_ENA_ADMINQ_SHIFT 30
-#define I40E_VFINT_ICR0_ENA_ADMINQ_MASK I40E_MASK(0x1, I40E_VFINT_ICR0_ENA_ADMINQ_SHIFT)
-#define I40E_VFINT_ICR0_ENA_RSVD_SHIFT 31
-#define I40E_VFINT_ICR0_ENA_RSVD_MASK I40E_MASK(0x1, I40E_VFINT_ICR0_ENA_RSVD_SHIFT)
-#define I40E_VFINT_ITR0(_i, _VF) (0x00028000 + ((_i) * 1024 + (_VF) * 4)) /* _i=0...2, _VF=0...127 */ /* Reset: VFR */
-#define I40E_VFINT_ITR0_MAX_INDEX 2
-#define I40E_VFINT_ITR0_INTERVAL_SHIFT 0
-#define I40E_VFINT_ITR0_INTERVAL_MASK I40E_MASK(0xFFF, I40E_VFINT_ITR0_INTERVAL_SHIFT)
-#define I40E_VFINT_ITRN(_i, _INTVF) (0x00020000 + ((_i) * 2048 + (_INTVF) * 4)) /* _i=0...2, _INTVF=0...511 */ /* Reset: VFR */
-#define I40E_VFINT_ITRN_MAX_INDEX 2
-#define I40E_VFINT_ITRN_INTERVAL_SHIFT 0
-#define I40E_VFINT_ITRN_INTERVAL_MASK I40E_MASK(0xFFF, I40E_VFINT_ITRN_INTERVAL_SHIFT)
-#define I40E_VFINT_STAT_CTL0(_VF) (0x0002A000 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: CORER */
-#define I40E_VFINT_STAT_CTL0_MAX_INDEX 127
-#define I40E_VFINT_STAT_CTL0_OTHER_ITR_INDX_SHIFT 2
-#define I40E_VFINT_STAT_CTL0_OTHER_ITR_INDX_MASK I40E_MASK(0x3, I40E_VFINT_STAT_CTL0_OTHER_ITR_INDX_SHIFT)
 #define I40E_VPINT_AEQCTL(_VF) (0x0002B800 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: CORER */
-#define I40E_VPINT_AEQCTL_MAX_INDEX 127
 #define I40E_VPINT_AEQCTL_MSIX_INDX_SHIFT 0
-#define I40E_VPINT_AEQCTL_MSIX_INDX_MASK I40E_MASK(0xFF, I40E_VPINT_AEQCTL_MSIX_INDX_SHIFT)
 #define I40E_VPINT_AEQCTL_ITR_INDX_SHIFT 11
-#define I40E_VPINT_AEQCTL_ITR_INDX_MASK I40E_MASK(0x3, I40E_VPINT_AEQCTL_ITR_INDX_SHIFT)
-#define I40E_VPINT_AEQCTL_MSIX0_INDX_SHIFT 13
-#define I40E_VPINT_AEQCTL_MSIX0_INDX_MASK I40E_MASK(0x7, I40E_VPINT_AEQCTL_MSIX0_INDX_SHIFT)
 #define I40E_VPINT_AEQCTL_CAUSE_ENA_SHIFT 30
 #define I40E_VPINT_AEQCTL_CAUSE_ENA_MASK I40E_MASK(0x1, I40E_VPINT_AEQCTL_CAUSE_ENA_SHIFT)
-#define I40E_VPINT_AEQCTL_INTEVENT_SHIFT 31
-#define I40E_VPINT_AEQCTL_INTEVENT_MASK I40E_MASK(0x1, I40E_VPINT_AEQCTL_INTEVENT_SHIFT)
 #define I40E_VPINT_CEQCTL(_INTVF) (0x00026800 + ((_INTVF) * 4)) /* _i=0...511 */ /* Reset: CORER */
-#define I40E_VPINT_CEQCTL_MAX_INDEX 511
 #define I40E_VPINT_CEQCTL_MSIX_INDX_SHIFT 0
-#define I40E_VPINT_CEQCTL_MSIX_INDX_MASK I40E_MASK(0xFF, I40E_VPINT_CEQCTL_MSIX_INDX_SHIFT)
 #define I40E_VPINT_CEQCTL_ITR_INDX_SHIFT 11
-#define I40E_VPINT_CEQCTL_ITR_INDX_MASK I40E_MASK(0x3, I40E_VPINT_CEQCTL_ITR_INDX_SHIFT)
-#define I40E_VPINT_CEQCTL_MSIX0_INDX_SHIFT 13
-#define I40E_VPINT_CEQCTL_MSIX0_INDX_MASK I40E_MASK(0x7, I40E_VPINT_CEQCTL_MSIX0_INDX_SHIFT)
 #define I40E_VPINT_CEQCTL_NEXTQ_INDX_SHIFT 16
 #define I40E_VPINT_CEQCTL_NEXTQ_INDX_MASK I40E_MASK(0x7FF, I40E_VPINT_CEQCTL_NEXTQ_INDX_SHIFT)
 #define I40E_VPINT_CEQCTL_NEXTQ_TYPE_SHIFT 27
 #define I40E_VPINT_CEQCTL_NEXTQ_TYPE_MASK I40E_MASK(0x3, I40E_VPINT_CEQCTL_NEXTQ_TYPE_SHIFT)
 #define I40E_VPINT_CEQCTL_CAUSE_ENA_SHIFT 30
 #define I40E_VPINT_CEQCTL_CAUSE_ENA_MASK I40E_MASK(0x1, I40E_VPINT_CEQCTL_CAUSE_ENA_SHIFT)
-#define I40E_VPINT_CEQCTL_INTEVENT_SHIFT 31
-#define I40E_VPINT_CEQCTL_INTEVENT_MASK I40E_MASK(0x1, I40E_VPINT_CEQCTL_INTEVENT_SHIFT)
 #define I40E_VPINT_LNKLST0(_VF) (0x0002A800 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: VFR */
-#define I40E_VPINT_LNKLST0_MAX_INDEX 127
 #define I40E_VPINT_LNKLST0_FIRSTQ_INDX_SHIFT 0
 #define I40E_VPINT_LNKLST0_FIRSTQ_INDX_MASK I40E_MASK(0x7FF, I40E_VPINT_LNKLST0_FIRSTQ_INDX_SHIFT)
-#define I40E_VPINT_LNKLST0_FIRSTQ_TYPE_SHIFT 11
-#define I40E_VPINT_LNKLST0_FIRSTQ_TYPE_MASK I40E_MASK(0x3, I40E_VPINT_LNKLST0_FIRSTQ_TYPE_SHIFT)
 #define I40E_VPINT_LNKLSTN(_INTVF) (0x00025000 + ((_INTVF) * 4)) /* _i=0...511 */ /* Reset: VFR */
-#define I40E_VPINT_LNKLSTN_MAX_INDEX 511
 #define I40E_VPINT_LNKLSTN_FIRSTQ_INDX_SHIFT 0
 #define I40E_VPINT_LNKLSTN_FIRSTQ_INDX_MASK I40E_MASK(0x7FF, I40E_VPINT_LNKLSTN_FIRSTQ_INDX_SHIFT)
 #define I40E_VPINT_LNKLSTN_FIRSTQ_TYPE_SHIFT 11
 #define I40E_VPINT_LNKLSTN_FIRSTQ_TYPE_MASK I40E_MASK(0x3, I40E_VPINT_LNKLSTN_FIRSTQ_TYPE_SHIFT)
-#define I40E_VPINT_RATE0(_VF) (0x0002AC00 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: VFR */
-#define I40E_VPINT_RATE0_MAX_INDEX 127
-#define I40E_VPINT_RATE0_INTERVAL_SHIFT 0
-#define I40E_VPINT_RATE0_INTERVAL_MASK I40E_MASK(0x3F, I40E_VPINT_RATE0_INTERVAL_SHIFT)
-#define I40E_VPINT_RATE0_INTRL_ENA_SHIFT 6
-#define I40E_VPINT_RATE0_INTRL_ENA_MASK I40E_MASK(0x1, I40E_VPINT_RATE0_INTRL_ENA_SHIFT)
-#define I40E_VPINT_RATEN(_INTVF) (0x00025800 + ((_INTVF) * 4)) /* _i=0...511 */ /* Reset: VFR */
-#define I40E_VPINT_RATEN_MAX_INDEX 511
-#define I40E_VPINT_RATEN_INTERVAL_SHIFT 0
-#define I40E_VPINT_RATEN_INTERVAL_MASK I40E_MASK(0x3F, I40E_VPINT_RATEN_INTERVAL_SHIFT)
-#define I40E_VPINT_RATEN_INTRL_ENA_SHIFT 6
-#define I40E_VPINT_RATEN_INTRL_ENA_MASK I40E_MASK(0x1, I40E_VPINT_RATEN_INTRL_ENA_SHIFT)
-#define I40E_GL_RDPU_CNTRL 0x00051060 /* Reset: CORER */
-#define I40E_GL_RDPU_CNTRL_RX_PAD_EN_SHIFT 0
-#define I40E_GL_RDPU_CNTRL_RX_PAD_EN_MASK I40E_MASK(0x1, I40E_GL_RDPU_CNTRL_RX_PAD_EN_SHIFT)
-#define I40E_GL_RDPU_CNTRL_ECO_SHIFT 1
-#define I40E_GL_RDPU_CNTRL_ECO_MASK I40E_MASK(0x7FFFFFFF, I40E_GL_RDPU_CNTRL_ECO_SHIFT)
 #define I40E_GLLAN_RCTL_0 0x0012A500 /* Reset: CORER */
 #define I40E_GLLAN_RCTL_0_PXE_MODE_SHIFT 0
 #define I40E_GLLAN_RCTL_0_PXE_MODE_MASK I40E_MASK(0x1, I40E_GLLAN_RCTL_0_PXE_MODE_SHIFT)
 #define I40E_GLLAN_TSOMSK_F 0x000442D8 /* Reset: CORER */
-#define I40E_GLLAN_TSOMSK_F_TCPMSKF_SHIFT 0
-#define I40E_GLLAN_TSOMSK_F_TCPMSKF_MASK I40E_MASK(0xFFF, I40E_GLLAN_TSOMSK_F_TCPMSKF_SHIFT)
 #define I40E_GLLAN_TSOMSK_L 0x000442E0 /* Reset: CORER */
-#define I40E_GLLAN_TSOMSK_L_TCPMSKL_SHIFT 0
-#define I40E_GLLAN_TSOMSK_L_TCPMSKL_MASK I40E_MASK(0xFFF, I40E_GLLAN_TSOMSK_L_TCPMSKL_SHIFT)
 #define I40E_GLLAN_TSOMSK_M 0x000442DC /* Reset: CORER */
-#define I40E_GLLAN_TSOMSK_M_TCPMSKM_SHIFT 0
-#define I40E_GLLAN_TSOMSK_M_TCPMSKM_MASK I40E_MASK(0xFFF, I40E_GLLAN_TSOMSK_M_TCPMSKM_SHIFT)
 #define I40E_GLLAN_TXPRE_QDIS(_i) (0x000e6500 + ((_i) * 4)) /* _i=0...11 */ /* Reset: CORER */
-#define I40E_GLLAN_TXPRE_QDIS_MAX_INDEX 11
 #define I40E_GLLAN_TXPRE_QDIS_QINDX_SHIFT 0
 #define I40E_GLLAN_TXPRE_QDIS_QINDX_MASK I40E_MASK(0x7FF, I40E_GLLAN_TXPRE_QDIS_QINDX_SHIFT)
-#define I40E_GLLAN_TXPRE_QDIS_QDIS_STAT_SHIFT 16
-#define I40E_GLLAN_TXPRE_QDIS_QDIS_STAT_MASK I40E_MASK(0x1, I40E_GLLAN_TXPRE_QDIS_QDIS_STAT_SHIFT)
 #define I40E_GLLAN_TXPRE_QDIS_SET_QDIS_SHIFT 30
 #define I40E_GLLAN_TXPRE_QDIS_SET_QDIS_MASK I40E_MASK(0x1, I40E_GLLAN_TXPRE_QDIS_SET_QDIS_SHIFT)
 #define I40E_GLLAN_TXPRE_QDIS_CLEAR_QDIS_SHIFT 31
@@ -1257,19 +320,12 @@
 #define I40E_PFLAN_QALLOC_VALID_SHIFT 31
 #define I40E_PFLAN_QALLOC_VALID_MASK I40E_MASK(0x1u, I40E_PFLAN_QALLOC_VALID_SHIFT)
 #define I40E_QRX_ENA(_Q) (0x00120000 + ((_Q) * 4)) /* _i=0...1535 */ /* Reset: PFR */
-#define I40E_QRX_ENA_MAX_INDEX 1535
 #define I40E_QRX_ENA_QENA_REQ_SHIFT 0
 #define I40E_QRX_ENA_QENA_REQ_MASK I40E_MASK(0x1, I40E_QRX_ENA_QENA_REQ_SHIFT)
-#define I40E_QRX_ENA_FAST_QDIS_SHIFT 1
-#define I40E_QRX_ENA_FAST_QDIS_MASK I40E_MASK(0x1, I40E_QRX_ENA_FAST_QDIS_SHIFT)
 #define I40E_QRX_ENA_QENA_STAT_SHIFT 2
 #define I40E_QRX_ENA_QENA_STAT_MASK I40E_MASK(0x1, I40E_QRX_ENA_QENA_STAT_SHIFT)
 #define I40E_QRX_TAIL(_Q) (0x00128000 + ((_Q) * 4)) /* _i=0...1535 */ /* Reset: CORER */
-#define I40E_QRX_TAIL_MAX_INDEX 1535
-#define I40E_QRX_TAIL_TAIL_SHIFT 0
-#define I40E_QRX_TAIL_TAIL_MASK I40E_MASK(0x1FFF, I40E_QRX_TAIL_TAIL_SHIFT)
 #define I40E_QTX_CTL(_Q) (0x00104000 + ((_Q) * 4)) /* _i=0...1535 */ /* Reset: CORER */
-#define I40E_QTX_CTL_MAX_INDEX 1535
 #define I40E_QTX_CTL_PFVF_Q_SHIFT 0
 #define I40E_QTX_CTL_PFVF_Q_MASK I40E_MASK(0x3, I40E_QTX_CTL_PFVF_Q_SHIFT)
 #define I40E_QTX_CTL_PF_INDX_SHIFT 2
@@ -1277,834 +333,63 @@
 #define I40E_QTX_CTL_VFVM_INDX_SHIFT 7
 #define I40E_QTX_CTL_VFVM_INDX_MASK I40E_MASK(0x1FF, I40E_QTX_CTL_VFVM_INDX_SHIFT)
 #define I40E_QTX_ENA(_Q) (0x00100000 + ((_Q) * 4)) /* _i=0...1535 */ /* Reset: PFR */
-#define I40E_QTX_ENA_MAX_INDEX 1535
 #define I40E_QTX_ENA_QENA_REQ_SHIFT 0
 #define I40E_QTX_ENA_QENA_REQ_MASK I40E_MASK(0x1, I40E_QTX_ENA_QENA_REQ_SHIFT)
-#define I40E_QTX_ENA_FAST_QDIS_SHIFT 1
-#define I40E_QTX_ENA_FAST_QDIS_MASK I40E_MASK(0x1, I40E_QTX_ENA_FAST_QDIS_SHIFT)
 #define I40E_QTX_ENA_QENA_STAT_SHIFT 2
 #define I40E_QTX_ENA_QENA_STAT_MASK I40E_MASK(0x1, I40E_QTX_ENA_QENA_STAT_SHIFT)
 #define I40E_QTX_HEAD(_Q) (0x000E4000 + ((_Q) * 4)) /* _i=0...1535 */ /* Reset: CORER */
-#define I40E_QTX_HEAD_MAX_INDEX 1535
-#define I40E_QTX_HEAD_HEAD_SHIFT 0
-#define I40E_QTX_HEAD_HEAD_MASK I40E_MASK(0x1FFF, I40E_QTX_HEAD_HEAD_SHIFT)
-#define I40E_QTX_HEAD_RS_PENDING_SHIFT 16
-#define I40E_QTX_HEAD_RS_PENDING_MASK I40E_MASK(0x1, I40E_QTX_HEAD_RS_PENDING_SHIFT)
 #define I40E_QTX_TAIL(_Q) (0x00108000 + ((_Q) * 4)) /* _i=0...1535 */ /* Reset: PFR */
-#define I40E_QTX_TAIL_MAX_INDEX 1535
-#define I40E_QTX_TAIL_TAIL_SHIFT 0
-#define I40E_QTX_TAIL_TAIL_MASK I40E_MASK(0x1FFF, I40E_QTX_TAIL_TAIL_SHIFT)
 #define I40E_VPLAN_MAPENA(_VF) (0x00074000 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: VFR */
-#define I40E_VPLAN_MAPENA_MAX_INDEX 127
 #define I40E_VPLAN_MAPENA_TXRX_ENA_SHIFT 0
 #define I40E_VPLAN_MAPENA_TXRX_ENA_MASK I40E_MASK(0x1, I40E_VPLAN_MAPENA_TXRX_ENA_SHIFT)
 #define I40E_VPLAN_QTABLE(_i, _VF) (0x00070000 + ((_i) * 1024 + (_VF) * 4)) /* _i=0...15, _VF=0...127 */ /* Reset: VFR */
-#define I40E_VPLAN_QTABLE_MAX_INDEX 15
 #define I40E_VPLAN_QTABLE_QINDEX_SHIFT 0
 #define I40E_VPLAN_QTABLE_QINDEX_MASK I40E_MASK(0x7FF, I40E_VPLAN_QTABLE_QINDEX_SHIFT)
 #define I40E_VSILAN_QBASE(_VSI) (0x0020C800 + ((_VSI) * 4)) /* _i=0...383 */ /* Reset: PFR */
-#define I40E_VSILAN_QBASE_MAX_INDEX 383
-#define I40E_VSILAN_QBASE_VSIBASE_SHIFT 0
-#define I40E_VSILAN_QBASE_VSIBASE_MASK I40E_MASK(0x7FF, I40E_VSILAN_QBASE_VSIBASE_SHIFT)
 #define I40E_VSILAN_QBASE_VSIQTABLE_ENA_SHIFT 11
 #define I40E_VSILAN_QBASE_VSIQTABLE_ENA_MASK I40E_MASK(0x1, I40E_VSILAN_QBASE_VSIQTABLE_ENA_SHIFT)
 #define I40E_VSILAN_QTABLE(_i, _VSI) (0x00200000 + ((_i) * 2048 + (_VSI) * 4)) /* _i=0...7, _VSI=0...383 */ /* Reset: PFR */
-#define I40E_VSILAN_QTABLE_MAX_INDEX 7
-#define I40E_VSILAN_QTABLE_QINDEX_0_SHIFT 0
-#define I40E_VSILAN_QTABLE_QINDEX_0_MASK I40E_MASK(0x7FF, I40E_VSILAN_QTABLE_QINDEX_0_SHIFT)
-#define I40E_VSILAN_QTABLE_QINDEX_1_SHIFT 16
-#define I40E_VSILAN_QTABLE_QINDEX_1_MASK I40E_MASK(0x7FF, I40E_VSILAN_QTABLE_QINDEX_1_SHIFT)
-#define I40E_PRTGL_SAH 0x001E2140 /* Reset: GLOBR */
-#define I40E_PRTGL_SAH_FC_SAH_SHIFT 0
-#define I40E_PRTGL_SAH_FC_SAH_MASK I40E_MASK(0xFFFF, I40E_PRTGL_SAH_FC_SAH_SHIFT)
-#define I40E_PRTGL_SAH_MFS_SHIFT 16
-#define I40E_PRTGL_SAH_MFS_MASK I40E_MASK(0xFFFF, I40E_PRTGL_SAH_MFS_SHIFT)
-#define I40E_PRTGL_SAL 0x001E2120 /* Reset: GLOBR */
-#define I40E_PRTGL_SAL_FC_SAL_SHIFT 0
-#define I40E_PRTGL_SAL_FC_SAL_MASK I40E_MASK(0xFFFFFFFF, I40E_PRTGL_SAL_FC_SAL_SHIFT)
-#define I40E_PRTMAC_HSEC_CTL_RX_ENABLE_GCP 0x001E30E0 /* Reset: GLOBR */
-#define I40E_PRTMAC_HSEC_CTL_RX_ENABLE_GCP_HSEC_CTL_RX_ENABLE_GCP_SHIFT 0
-#define I40E_PRTMAC_HSEC_CTL_RX_ENABLE_GCP_HSEC_CTL_RX_ENABLE_GCP_MASK I40E_MASK(0x1, I40E_PRTMAC_HSEC_CTL_RX_ENABLE_GCP_HSEC_CTL_RX_ENABLE_GCP_SHIFT)
-#define I40E_PRTMAC_HSEC_CTL_RX_ENABLE_GPP 0x001E3260 /* Reset: GLOBR */
-#define I40E_PRTMAC_HSEC_CTL_RX_ENABLE_GPP_HSEC_CTL_RX_ENABLE_GPP_SHIFT 0
-#define I40E_PRTMAC_HSEC_CTL_RX_ENABLE_GPP_HSEC_CTL_RX_ENABLE_GPP_MASK I40E_MASK(0x1, I40E_PRTMAC_HSEC_CTL_RX_ENABLE_GPP_HSEC_CTL_RX_ENABLE_GPP_SHIFT)
-#define I40E_PRTMAC_HSEC_CTL_RX_ENABLE_PPP 0x001E32E0 /* Reset: GLOBR */
-#define I40E_PRTMAC_HSEC_CTL_RX_ENABLE_PPP_HSEC_CTL_RX_ENABLE_PPP_SHIFT 0
-#define I40E_PRTMAC_HSEC_CTL_RX_ENABLE_PPP_HSEC_CTL_RX_ENABLE_PPP_MASK I40E_MASK(0x1, I40E_PRTMAC_HSEC_CTL_RX_ENABLE_PPP_HSEC_CTL_RX_ENABLE_PPP_SHIFT)
-#define I40E_PRTMAC_HSEC_CTL_RX_FORWARD_CONTROL 0x001E3360 /* Reset: GLOBR */
-#define I40E_PRTMAC_HSEC_CTL_RX_FORWARD_CONTROL_HSEC_CTL_RX_FORWARD_CONTROL_SHIFT 0
-#define I40E_PRTMAC_HSEC_CTL_RX_FORWARD_CONTROL_HSEC_CTL_RX_FORWARD_CONTROL_MASK I40E_MASK(0x1, I40E_PRTMAC_HSEC_CTL_RX_FORWARD_CONTROL_HSEC_CTL_RX_FORWARD_CONTROL_SHIFT)
-#define I40E_PRTMAC_HSEC_CTL_RX_PAUSE_DA_UCAST_PART1 0x001E3110 /* Reset: GLOBR */
-#define I40E_PRTMAC_HSEC_CTL_RX_PAUSE_DA_UCAST_PART1_HSEC_CTL_RX_PAUSE_DA_UCAST_PART1_SHIFT 0
-#define I40E_PRTMAC_HSEC_CTL_RX_PAUSE_DA_UCAST_PART1_HSEC_CTL_RX_PAUSE_DA_UCAST_PART1_MASK I40E_MASK(0xFFFFFFFF, I40E_PRTMAC_HSEC_CTL_RX_PAUSE_DA_UCAST_PART1_HSEC_CTL_RX_PAUSE_DA_UCAST_PART1_SHIFT)
-#define I40E_PRTMAC_HSEC_CTL_RX_PAUSE_DA_UCAST_PART2 0x001E3120 /* Reset: GLOBR */
-#define I40E_PRTMAC_HSEC_CTL_RX_PAUSE_DA_UCAST_PART2_HSEC_CTL_RX_PAUSE_DA_UCAST_PART2_SHIFT 0
-#define I40E_PRTMAC_HSEC_CTL_RX_PAUSE_DA_UCAST_PART2_HSEC_CTL_RX_PAUSE_DA_UCAST_PART2_MASK I40E_MASK(0xFFFF, I40E_PRTMAC_HSEC_CTL_RX_PAUSE_DA_UCAST_PART2_HSEC_CTL_RX_PAUSE_DA_UCAST_PART2_SHIFT)
-#define I40E_PRTMAC_HSEC_CTL_RX_PAUSE_ENABLE 0x001E30C0 /* Reset: GLOBR */
-#define I40E_PRTMAC_HSEC_CTL_RX_PAUSE_ENABLE_HSEC_CTL_RX_PAUSE_ENABLE_SHIFT 0
-#define I40E_PRTMAC_HSEC_CTL_RX_PAUSE_ENABLE_HSEC_CTL_RX_PAUSE_ENABLE_MASK I40E_MASK(0x1FF, I40E_PRTMAC_HSEC_CTL_RX_PAUSE_ENABLE_HSEC_CTL_RX_PAUSE_ENABLE_SHIFT)
-#define I40E_PRTMAC_HSEC_CTL_RX_PAUSE_SA_PART1 0x001E3140 /* Reset: GLOBR */
-#define I40E_PRTMAC_HSEC_CTL_RX_PAUSE_SA_PART1_HSEC_CTL_RX_PAUSE_SA_PART1_SHIFT 0
-#define I40E_PRTMAC_HSEC_CTL_RX_PAUSE_SA_PART1_HSEC_CTL_RX_PAUSE_SA_PART1_MASK I40E_MASK(0xFFFFFFFF, I40E_PRTMAC_HSEC_CTL_RX_PAUSE_SA_PART1_HSEC_CTL_RX_PAUSE_SA_PART1_SHIFT)
-#define I40E_PRTMAC_HSEC_CTL_RX_PAUSE_SA_PART2 0x001E3150 /* Reset: GLOBR */
-#define I40E_PRTMAC_HSEC_CTL_RX_PAUSE_SA_PART2_HSEC_CTL_RX_PAUSE_SA_PART2_SHIFT 0
-#define I40E_PRTMAC_HSEC_CTL_RX_PAUSE_SA_PART2_HSEC_CTL_RX_PAUSE_SA_PART2_MASK I40E_MASK(0xFFFF, I40E_PRTMAC_HSEC_CTL_RX_PAUSE_SA_PART2_HSEC_CTL_RX_PAUSE_SA_PART2_SHIFT)
-#define I40E_PRTMAC_HSEC_CTL_TX_PAUSE_ENABLE 0x001E30D0 /* Reset: GLOBR */
-#define I40E_PRTMAC_HSEC_CTL_TX_PAUSE_ENABLE_HSEC_CTL_TX_PAUSE_ENABLE_SHIFT 0
-#define I40E_PRTMAC_HSEC_CTL_TX_PAUSE_ENABLE_HSEC_CTL_TX_PAUSE_ENABLE_MASK I40E_MASK(0x1FF, I40E_PRTMAC_HSEC_CTL_TX_PAUSE_ENABLE_HSEC_CTL_TX_PAUSE_ENABLE_SHIFT)
-#define I40E_PRTMAC_HSEC_CTL_TX_PAUSE_QUANTA(_i) (0x001E3370 + ((_i) * 16)) /* _i=0...8 */ /* Reset: GLOBR */
-#define I40E_PRTMAC_HSEC_CTL_TX_PAUSE_QUANTA_MAX_INDEX 8
-#define I40E_PRTMAC_HSEC_CTL_TX_PAUSE_QUANTA_HSEC_CTL_TX_PAUSE_QUANTA_SHIFT 0
-#define I40E_PRTMAC_HSEC_CTL_TX_PAUSE_QUANTA_HSEC_CTL_TX_PAUSE_QUANTA_MASK I40E_MASK(0xFFFF, I40E_PRTMAC_HSEC_CTL_TX_PAUSE_QUANTA_HSEC_CTL_TX_PAUSE_QUANTA_SHIFT)
-#define I40E_PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER(_i) (0x001E3400 + ((_i) * 16)) /* _i=0...8 */ /* Reset: GLOBR */
-#define I40E_PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER_MAX_INDEX 8
-#define I40E_PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER_HSEC_CTL_TX_PAUSE_REFRESH_TIMER_SHIFT 0
-#define I40E_PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER_HSEC_CTL_TX_PAUSE_REFRESH_TIMER_MASK I40E_MASK(0xFFFF, I40E_PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER_HSEC_CTL_TX_PAUSE_REFRESH_TIMER_SHIFT)
-#define I40E_PRTMAC_HSEC_CTL_TX_SA_PART1 0x001E34B0 /* Reset: GLOBR */
-#define I40E_PRTMAC_HSEC_CTL_TX_SA_PART1_HSEC_CTL_TX_SA_PART1_SHIFT 0
-#define I40E_PRTMAC_HSEC_CTL_TX_SA_PART1_HSEC_CTL_TX_SA_PART1_MASK I40E_MASK(0xFFFFFFFF, I40E_PRTMAC_HSEC_CTL_TX_SA_PART1_HSEC_CTL_TX_SA_PART1_SHIFT)
-#define I40E_PRTMAC_HSEC_CTL_TX_SA_PART2 0x001E34C0 /* Reset: GLOBR */
-#define I40E_PRTMAC_HSEC_CTL_TX_SA_PART2_HSEC_CTL_TX_SA_PART2_SHIFT 0
-#define I40E_PRTMAC_HSEC_CTL_TX_SA_PART2_HSEC_CTL_TX_SA_PART2_MASK I40E_MASK(0xFFFF, I40E_PRTMAC_HSEC_CTL_TX_SA_PART2_HSEC_CTL_TX_SA_PART2_SHIFT)
-#define I40E_PRTMAC_PCS_XAUI_SWAP_A 0x0008C480 /* Reset: GLOBR */
-#define I40E_PRTMAC_PCS_XAUI_SWAP_A_SWAP_TX_LANE3_SHIFT 0
-#define I40E_PRTMAC_PCS_XAUI_SWAP_A_SWAP_TX_LANE3_MASK I40E_MASK(0x3, I40E_PRTMAC_PCS_XAUI_SWAP_A_SWAP_TX_LANE3_SHIFT)
-#define I40E_PRTMAC_PCS_XAUI_SWAP_A_SWAP_TX_LANE2_SHIFT 2
-#define I40E_PRTMAC_PCS_XAUI_SWAP_A_SWAP_TX_LANE2_MASK I40E_MASK(0x3, I40E_PRTMAC_PCS_XAUI_SWAP_A_SWAP_TX_LANE2_SHIFT)
-#define I40E_PRTMAC_PCS_XAUI_SWAP_A_SWAP_TX_LANE1_SHIFT 4
-#define I40E_PRTMAC_PCS_XAUI_SWAP_A_SWAP_TX_LANE1_MASK I40E_MASK(0x3, I40E_PRTMAC_PCS_XAUI_SWAP_A_SWAP_TX_LANE1_SHIFT)
-#define I40E_PRTMAC_PCS_XAUI_SWAP_A_SWAP_TX_LANE0_SHIFT 6
-#define I40E_PRTMAC_PCS_XAUI_SWAP_A_SWAP_TX_LANE0_MASK I40E_MASK(0x3, I40E_PRTMAC_PCS_XAUI_SWAP_A_SWAP_TX_LANE0_SHIFT)
-#define I40E_PRTMAC_PCS_XAUI_SWAP_A_SWAP_RX_LANE3_SHIFT 8
-#define I40E_PRTMAC_PCS_XAUI_SWAP_A_SWAP_RX_LANE3_MASK I40E_MASK(0x3, I40E_PRTMAC_PCS_XAUI_SWAP_A_SWAP_RX_LANE3_SHIFT)
-#define I40E_PRTMAC_PCS_XAUI_SWAP_A_SWAP_RX_LANE2_SHIFT 10
-#define I40E_PRTMAC_PCS_XAUI_SWAP_A_SWAP_RX_LANE2_MASK I40E_MASK(0x3, I40E_PRTMAC_PCS_XAUI_SWAP_A_SWAP_RX_LANE2_SHIFT)
-#define I40E_PRTMAC_PCS_XAUI_SWAP_A_SWAP_RX_LANE1_SHIFT 12
-#define I40E_PRTMAC_PCS_XAUI_SWAP_A_SWAP_RX_LANE1_MASK I40E_MASK(0x3, I40E_PRTMAC_PCS_XAUI_SWAP_A_SWAP_RX_LANE1_SHIFT)
-#define I40E_PRTMAC_PCS_XAUI_SWAP_A_SWAP_RX_LANE0_SHIFT 14
-#define I40E_PRTMAC_PCS_XAUI_SWAP_A_SWAP_RX_LANE0_MASK I40E_MASK(0x3, I40E_PRTMAC_PCS_XAUI_SWAP_A_SWAP_RX_LANE0_SHIFT)
-#define I40E_PRTMAC_PCS_XAUI_SWAP_B 0x0008C484 /* Reset: GLOBR */
-#define I40E_PRTMAC_PCS_XAUI_SWAP_B_SWAP_TX_LANE3_SHIFT 0
-#define I40E_PRTMAC_PCS_XAUI_SWAP_B_SWAP_TX_LANE3_MASK I40E_MASK(0x3, I40E_PRTMAC_PCS_XAUI_SWAP_B_SWAP_TX_LANE3_SHIFT)
-#define I40E_PRTMAC_PCS_XAUI_SWAP_B_SWAP_TX_LANE2_SHIFT 2
-#define I40E_PRTMAC_PCS_XAUI_SWAP_B_SWAP_TX_LANE2_MASK I40E_MASK(0x3, I40E_PRTMAC_PCS_XAUI_SWAP_B_SWAP_TX_LANE2_SHIFT)
-#define I40E_PRTMAC_PCS_XAUI_SWAP_B_SWAP_TX_LANE1_SHIFT 4
-#define I40E_PRTMAC_PCS_XAUI_SWAP_B_SWAP_TX_LANE1_MASK I40E_MASK(0x3, I40E_PRTMAC_PCS_XAUI_SWAP_B_SWAP_TX_LANE1_SHIFT)
-#define I40E_PRTMAC_PCS_XAUI_SWAP_B_SWAP_TX_LANE0_SHIFT 6
-#define I40E_PRTMAC_PCS_XAUI_SWAP_B_SWAP_TX_LANE0_MASK I40E_MASK(0x3, I40E_PRTMAC_PCS_XAUI_SWAP_B_SWAP_TX_LANE0_SHIFT)
-#define I40E_PRTMAC_PCS_XAUI_SWAP_B_SWAP_RX_LANE3_SHIFT 8
-#define I40E_PRTMAC_PCS_XAUI_SWAP_B_SWAP_RX_LANE3_MASK I40E_MASK(0x3, I40E_PRTMAC_PCS_XAUI_SWAP_B_SWAP_RX_LANE3_SHIFT)
-#define I40E_PRTMAC_PCS_XAUI_SWAP_B_SWAP_RX_LANE2_SHIFT 10
-#define I40E_PRTMAC_PCS_XAUI_SWAP_B_SWAP_RX_LANE2_MASK I40E_MASK(0x3, I40E_PRTMAC_PCS_XAUI_SWAP_B_SWAP_RX_LANE2_SHIFT)
-#define I40E_PRTMAC_PCS_XAUI_SWAP_B_SWAP_RX_LANE1_SHIFT 12
-#define I40E_PRTMAC_PCS_XAUI_SWAP_B_SWAP_RX_LANE1_MASK I40E_MASK(0x3, I40E_PRTMAC_PCS_XAUI_SWAP_B_SWAP_RX_LANE1_SHIFT)
-#define I40E_PRTMAC_PCS_XAUI_SWAP_B_SWAP_RX_LANE0_SHIFT 14
-#define I40E_PRTMAC_PCS_XAUI_SWAP_B_SWAP_RX_LANE0_MASK I40E_MASK(0x3, I40E_PRTMAC_PCS_XAUI_SWAP_B_SWAP_RX_LANE0_SHIFT)
-#define I40E_GL_FWRESETCNT 0x00083100 /* Reset: POR */
-#define I40E_GL_FWRESETCNT_FWRESETCNT_SHIFT 0
-#define I40E_GL_FWRESETCNT_FWRESETCNT_MASK I40E_MASK(0xFFFFFFFF, I40E_GL_FWRESETCNT_FWRESETCNT_SHIFT)
-#define I40E_GL_MNG_FWSM 0x000B6134 /* Reset: POR */
-#define I40E_GL_MNG_FWSM_FW_MODES_SHIFT 0
-#define I40E_GL_MNG_FWSM_FW_MODES_MASK I40E_MASK(0x3, I40E_GL_MNG_FWSM_FW_MODES_SHIFT)
-#define I40E_GL_MNG_FWSM_EEP_RELOAD_IND_SHIFT 10
-#define I40E_GL_MNG_FWSM_EEP_RELOAD_IND_MASK I40E_MASK(0x1, I40E_GL_MNG_FWSM_EEP_RELOAD_IND_SHIFT)
-#define I40E_GL_MNG_FWSM_CRC_ERROR_MODULE_SHIFT 11
-#define I40E_GL_MNG_FWSM_CRC_ERROR_MODULE_MASK I40E_MASK(0xF, I40E_GL_MNG_FWSM_CRC_ERROR_MODULE_SHIFT)
-#define I40E_GL_MNG_FWSM_FW_STATUS_VALID_SHIFT 15
-#define I40E_GL_MNG_FWSM_FW_STATUS_VALID_MASK I40E_MASK(0x1, I40E_GL_MNG_FWSM_FW_STATUS_VALID_SHIFT)
-#define I40E_GL_MNG_FWSM_RESET_CNT_SHIFT 16
-#define I40E_GL_MNG_FWSM_RESET_CNT_MASK I40E_MASK(0x7, I40E_GL_MNG_FWSM_RESET_CNT_SHIFT)
-#define I40E_GL_MNG_FWSM_EXT_ERR_IND_SHIFT 19
-#define I40E_GL_MNG_FWSM_EXT_ERR_IND_MASK I40E_MASK(0x3F, I40E_GL_MNG_FWSM_EXT_ERR_IND_SHIFT)
-#define I40E_GL_MNG_FWSM_PHY_SERDES0_CONFIG_ERR_SHIFT 26
-#define I40E_GL_MNG_FWSM_PHY_SERDES0_CONFIG_ERR_MASK I40E_MASK(0x1, I40E_GL_MNG_FWSM_PHY_SERDES0_CONFIG_ERR_SHIFT)
-#define I40E_GL_MNG_FWSM_PHY_SERDES1_CONFIG_ERR_SHIFT 27
-#define I40E_GL_MNG_FWSM_PHY_SERDES1_CONFIG_ERR_MASK I40E_MASK(0x1, I40E_GL_MNG_FWSM_PHY_SERDES1_CONFIG_ERR_SHIFT)
-#define I40E_GL_MNG_FWSM_PHY_SERDES2_CONFIG_ERR_SHIFT 28
-#define I40E_GL_MNG_FWSM_PHY_SERDES2_CONFIG_ERR_MASK I40E_MASK(0x1, I40E_GL_MNG_FWSM_PHY_SERDES2_CONFIG_ERR_SHIFT)
-#define I40E_GL_MNG_FWSM_PHY_SERDES3_CONFIG_ERR_SHIFT 29
-#define I40E_GL_MNG_FWSM_PHY_SERDES3_CONFIG_ERR_MASK I40E_MASK(0x1, I40E_GL_MNG_FWSM_PHY_SERDES3_CONFIG_ERR_SHIFT)
-#define I40E_GL_MNG_HWARB_CTRL 0x000B6130 /* Reset: POR */
-#define I40E_GL_MNG_HWARB_CTRL_NCSI_ARB_EN_SHIFT 0
-#define I40E_GL_MNG_HWARB_CTRL_NCSI_ARB_EN_MASK I40E_MASK(0x1, I40E_GL_MNG_HWARB_CTRL_NCSI_ARB_EN_SHIFT)
-#define I40E_PRT_MNG_FTFT_DATA(_i) (0x000852A0 + ((_i) * 32)) /* _i=0...31 */ /* Reset: POR */
-#define I40E_PRT_MNG_FTFT_DATA_MAX_INDEX 31
-#define I40E_PRT_MNG_FTFT_DATA_DWORD_SHIFT 0
-#define I40E_PRT_MNG_FTFT_DATA_DWORD_MASK I40E_MASK(0xFFFFFFFF, I40E_PRT_MNG_FTFT_DATA_DWORD_SHIFT)
-#define I40E_PRT_MNG_FTFT_LENGTH 0x00085260 /* Reset: POR */
-#define I40E_PRT_MNG_FTFT_LENGTH_LENGTH_SHIFT 0
-#define I40E_PRT_MNG_FTFT_LENGTH_LENGTH_MASK I40E_MASK(0xFF, I40E_PRT_MNG_FTFT_LENGTH_LENGTH_SHIFT)
-#define I40E_PRT_MNG_FTFT_MASK(_i) (0x00085160 + ((_i) * 32)) /* _i=0...7 */ /* Reset: POR */
-#define I40E_PRT_MNG_FTFT_MASK_MAX_INDEX 7
-#define I40E_PRT_MNG_FTFT_MASK_MASK_SHIFT 0
-#define I40E_PRT_MNG_FTFT_MASK_MASK_MASK I40E_MASK(0xFFFF, I40E_PRT_MNG_FTFT_MASK_MASK_SHIFT)
-#define I40E_PRT_MNG_MANC 0x00256A20 /* Reset: POR */
-#define I40E_PRT_MNG_MANC_FLOW_CONTROL_DISCARD_SHIFT 0
-#define I40E_PRT_MNG_MANC_FLOW_CONTROL_DISCARD_MASK I40E_MASK(0x1, I40E_PRT_MNG_MANC_FLOW_CONTROL_DISCARD_SHIFT)
-#define I40E_PRT_MNG_MANC_NCSI_DISCARD_SHIFT 1
-#define I40E_PRT_MNG_MANC_NCSI_DISCARD_MASK I40E_MASK(0x1, I40E_PRT_MNG_MANC_NCSI_DISCARD_SHIFT)
-#define I40E_PRT_MNG_MANC_RCV_TCO_EN_SHIFT 17
-#define I40E_PRT_MNG_MANC_RCV_TCO_EN_MASK I40E_MASK(0x1, I40E_PRT_MNG_MANC_RCV_TCO_EN_SHIFT)
-#define I40E_PRT_MNG_MANC_RCV_ALL_SHIFT 19
-#define I40E_PRT_MNG_MANC_RCV_ALL_MASK I40E_MASK(0x1, I40E_PRT_MNG_MANC_RCV_ALL_SHIFT)
-#define I40E_PRT_MNG_MANC_FIXED_NET_TYPE_SHIFT 25
-#define I40E_PRT_MNG_MANC_FIXED_NET_TYPE_MASK I40E_MASK(0x1, I40E_PRT_MNG_MANC_FIXED_NET_TYPE_SHIFT)
-#define I40E_PRT_MNG_MANC_NET_TYPE_SHIFT 26
-#define I40E_PRT_MNG_MANC_NET_TYPE_MASK I40E_MASK(0x1, I40E_PRT_MNG_MANC_NET_TYPE_SHIFT)
-#define I40E_PRT_MNG_MANC_EN_BMC2OS_SHIFT 28
-#define I40E_PRT_MNG_MANC_EN_BMC2OS_MASK I40E_MASK(0x1, I40E_PRT_MNG_MANC_EN_BMC2OS_SHIFT)
-#define I40E_PRT_MNG_MANC_EN_BMC2NET_SHIFT 29
-#define I40E_PRT_MNG_MANC_EN_BMC2NET_MASK I40E_MASK(0x1, I40E_PRT_MNG_MANC_EN_BMC2NET_SHIFT)
-#define I40E_PRT_MNG_MAVTV(_i) (0x00255900 + ((_i) * 32)) /* _i=0...7 */ /* Reset: POR */
-#define I40E_PRT_MNG_MAVTV_MAX_INDEX 7
-#define I40E_PRT_MNG_MAVTV_VID_SHIFT 0
-#define I40E_PRT_MNG_MAVTV_VID_MASK I40E_MASK(0xFFF, I40E_PRT_MNG_MAVTV_VID_SHIFT)
-#define I40E_PRT_MNG_MDEF(_i) (0x00255D00 + ((_i) * 32)) /* _i=0...7 */ /* Reset: POR */
-#define I40E_PRT_MNG_MDEF_MAX_INDEX 7
-#define I40E_PRT_MNG_MDEF_MAC_EXACT_AND_SHIFT 0
-#define I40E_PRT_MNG_MDEF_MAC_EXACT_AND_MASK I40E_MASK(0xF, I40E_PRT_MNG_MDEF_MAC_EXACT_AND_SHIFT)
-#define I40E_PRT_MNG_MDEF_BROADCAST_AND_SHIFT 4
-#define I40E_PRT_MNG_MDEF_BROADCAST_AND_MASK I40E_MASK(0x1, I40E_PRT_MNG_MDEF_BROADCAST_AND_SHIFT)
-#define I40E_PRT_MNG_MDEF_VLAN_AND_SHIFT 5
-#define I40E_PRT_MNG_MDEF_VLAN_AND_MASK I40E_MASK(0xFF, I40E_PRT_MNG_MDEF_VLAN_AND_SHIFT)
-#define I40E_PRT_MNG_MDEF_IPV4_ADDRESS_AND_SHIFT 13
-#define I40E_PRT_MNG_MDEF_IPV4_ADDRESS_AND_MASK I40E_MASK(0xF, I40E_PRT_MNG_MDEF_IPV4_ADDRESS_AND_SHIFT)
-#define I40E_PRT_MNG_MDEF_IPV6_ADDRESS_AND_SHIFT 17
-#define I40E_PRT_MNG_MDEF_IPV6_ADDRESS_AND_MASK I40E_MASK(0xF, I40E_PRT_MNG_MDEF_IPV6_ADDRESS_AND_SHIFT)
-#define I40E_PRT_MNG_MDEF_MAC_EXACT_OR_SHIFT 21
-#define I40E_PRT_MNG_MDEF_MAC_EXACT_OR_MASK I40E_MASK(0xF, I40E_PRT_MNG_MDEF_MAC_EXACT_OR_SHIFT)
-#define I40E_PRT_MNG_MDEF_BROADCAST_OR_SHIFT 25
-#define I40E_PRT_MNG_MDEF_BROADCAST_OR_MASK I40E_MASK(0x1, I40E_PRT_MNG_MDEF_BROADCAST_OR_SHIFT)
-#define I40E_PRT_MNG_MDEF_MULTICAST_AND_SHIFT 26
-#define I40E_PRT_MNG_MDEF_MULTICAST_AND_MASK I40E_MASK(0x1, I40E_PRT_MNG_MDEF_MULTICAST_AND_SHIFT)
-#define I40E_PRT_MNG_MDEF_ARP_REQUEST_OR_SHIFT 27
-#define I40E_PRT_MNG_MDEF_ARP_REQUEST_OR_MASK I40E_MASK(0x1, I40E_PRT_MNG_MDEF_ARP_REQUEST_OR_SHIFT)
-#define I40E_PRT_MNG_MDEF_ARP_RESPONSE_OR_SHIFT 28
-#define I40E_PRT_MNG_MDEF_ARP_RESPONSE_OR_MASK I40E_MASK(0x1, I40E_PRT_MNG_MDEF_ARP_RESPONSE_OR_SHIFT)
-#define I40E_PRT_MNG_MDEF_NEIGHBOR_DISCOVERY_134_OR_SHIFT 29
-#define I40E_PRT_MNG_MDEF_NEIGHBOR_DISCOVERY_134_OR_MASK I40E_MASK(0x1, I40E_PRT_MNG_MDEF_NEIGHBOR_DISCOVERY_134_OR_SHIFT)
-#define I40E_PRT_MNG_MDEF_PORT_0X298_OR_SHIFT 30
-#define I40E_PRT_MNG_MDEF_PORT_0X298_OR_MASK I40E_MASK(0x1, I40E_PRT_MNG_MDEF_PORT_0X298_OR_SHIFT)
-#define I40E_PRT_MNG_MDEF_PORT_0X26F_OR_SHIFT 31
-#define I40E_PRT_MNG_MDEF_PORT_0X26F_OR_MASK I40E_MASK(0x1, I40E_PRT_MNG_MDEF_PORT_0X26F_OR_SHIFT)
-#define I40E_PRT_MNG_MDEF_EXT(_i) (0x00255F00 + ((_i) * 32)) /* _i=0...7 */ /* Reset: POR */
-#define I40E_PRT_MNG_MDEF_EXT_MAX_INDEX 7
-#define I40E_PRT_MNG_MDEF_EXT_L2_ETHERTYPE_AND_SHIFT 0
-#define I40E_PRT_MNG_MDEF_EXT_L2_ETHERTYPE_AND_MASK I40E_MASK(0xF, I40E_PRT_MNG_MDEF_EXT_L2_ETHERTYPE_AND_SHIFT)
-#define I40E_PRT_MNG_MDEF_EXT_L2_ETHERTYPE_OR_SHIFT 4
-#define I40E_PRT_MNG_MDEF_EXT_L2_ETHERTYPE_OR_MASK I40E_MASK(0xF, I40E_PRT_MNG_MDEF_EXT_L2_ETHERTYPE_OR_SHIFT)
-#define I40E_PRT_MNG_MDEF_EXT_FLEX_PORT_OR_SHIFT 8
-#define I40E_PRT_MNG_MDEF_EXT_FLEX_PORT_OR_MASK I40E_MASK(0xFFFF, I40E_PRT_MNG_MDEF_EXT_FLEX_PORT_OR_SHIFT)
-#define I40E_PRT_MNG_MDEF_EXT_FLEX_TCO_SHIFT 24
-#define I40E_PRT_MNG_MDEF_EXT_FLEX_TCO_MASK I40E_MASK(0x1, I40E_PRT_MNG_MDEF_EXT_FLEX_TCO_SHIFT)
-#define I40E_PRT_MNG_MDEF_EXT_NEIGHBOR_DISCOVERY_135_OR_SHIFT 25
-#define I40E_PRT_MNG_MDEF_EXT_NEIGHBOR_DISCOVERY_135_OR_MASK I40E_MASK(0x1, I40E_PRT_MNG_MDEF_EXT_NEIGHBOR_DISCOVERY_135_OR_SHIFT)
-#define I40E_PRT_MNG_MDEF_EXT_NEIGHBOR_DISCOVERY_136_OR_SHIFT 26
-#define I40E_PRT_MNG_MDEF_EXT_NEIGHBOR_DISCOVERY_136_OR_MASK I40E_MASK(0x1, I40E_PRT_MNG_MDEF_EXT_NEIGHBOR_DISCOVERY_136_OR_SHIFT)
-#define I40E_PRT_MNG_MDEF_EXT_NEIGHBOR_DISCOVERY_137_OR_SHIFT 27
-#define I40E_PRT_MNG_MDEF_EXT_NEIGHBOR_DISCOVERY_137_OR_MASK I40E_MASK(0x1, I40E_PRT_MNG_MDEF_EXT_NEIGHBOR_DISCOVERY_137_OR_SHIFT)
-#define I40E_PRT_MNG_MDEF_EXT_ICMP_OR_SHIFT 28
-#define I40E_PRT_MNG_MDEF_EXT_ICMP_OR_MASK I40E_MASK(0x1, I40E_PRT_MNG_MDEF_EXT_ICMP_OR_SHIFT)
-#define I40E_PRT_MNG_MDEF_EXT_MLD_SHIFT 29
-#define I40E_PRT_MNG_MDEF_EXT_MLD_MASK I40E_MASK(0x1, I40E_PRT_MNG_MDEF_EXT_MLD_SHIFT)
-#define I40E_PRT_MNG_MDEF_EXT_APPLY_TO_NETWORK_TRAFFIC_SHIFT 30
-#define I40E_PRT_MNG_MDEF_EXT_APPLY_TO_NETWORK_TRAFFIC_MASK I40E_MASK(0x1, I40E_PRT_MNG_MDEF_EXT_APPLY_TO_NETWORK_TRAFFIC_SHIFT)
-#define I40E_PRT_MNG_MDEF_EXT_APPLY_TO_HOST_TRAFFIC_SHIFT 31
-#define I40E_PRT_MNG_MDEF_EXT_APPLY_TO_HOST_TRAFFIC_MASK I40E_MASK(0x1, I40E_PRT_MNG_MDEF_EXT_APPLY_TO_HOST_TRAFFIC_SHIFT)
-#define I40E_PRT_MNG_MDEFVSI(_i) (0x00256580 + ((_i) * 32)) /* _i=0...3 */ /* Reset: POR */
-#define I40E_PRT_MNG_MDEFVSI_MAX_INDEX 3
-#define I40E_PRT_MNG_MDEFVSI_MDEFVSI_2N_SHIFT 0
-#define I40E_PRT_MNG_MDEFVSI_MDEFVSI_2N_MASK I40E_MASK(0xFFFF, I40E_PRT_MNG_MDEFVSI_MDEFVSI_2N_SHIFT)
-#define I40E_PRT_MNG_MDEFVSI_MDEFVSI_2NP1_SHIFT 16
-#define I40E_PRT_MNG_MDEFVSI_MDEFVSI_2NP1_MASK I40E_MASK(0xFFFF, I40E_PRT_MNG_MDEFVSI_MDEFVSI_2NP1_SHIFT)
-#define I40E_PRT_MNG_METF(_i) (0x00256780 + ((_i) * 32)) /* _i=0...3 */ /* Reset: POR */
-#define I40E_PRT_MNG_METF_MAX_INDEX 3
-#define I40E_PRT_MNG_METF_ETYPE_SHIFT 0
-#define I40E_PRT_MNG_METF_ETYPE_MASK I40E_MASK(0xFFFF, I40E_PRT_MNG_METF_ETYPE_SHIFT)
-#define I40E_PRT_MNG_METF_POLARITY_SHIFT 30
-#define I40E_PRT_MNG_METF_POLARITY_MASK I40E_MASK(0x1, I40E_PRT_MNG_METF_POLARITY_SHIFT)
-#define I40E_PRT_MNG_MFUTP(_i) (0x00254E00 + ((_i) * 32)) /* _i=0...15 */ /* Reset: POR */
-#define I40E_PRT_MNG_MFUTP_MAX_INDEX 15
-#define I40E_PRT_MNG_MFUTP_MFUTP_N_SHIFT 0
-#define I40E_PRT_MNG_MFUTP_MFUTP_N_MASK I40E_MASK(0xFFFF, I40E_PRT_MNG_MFUTP_MFUTP_N_SHIFT)
-#define I40E_PRT_MNG_MFUTP_UDP_SHIFT 16
-#define I40E_PRT_MNG_MFUTP_UDP_MASK I40E_MASK(0x1, I40E_PRT_MNG_MFUTP_UDP_SHIFT)
-#define I40E_PRT_MNG_MFUTP_TCP_SHIFT 17
-#define I40E_PRT_MNG_MFUTP_TCP_MASK I40E_MASK(0x1, I40E_PRT_MNG_MFUTP_TCP_SHIFT)
-#define I40E_PRT_MNG_MFUTP_SOURCE_DESTINATION_SHIFT 18
-#define I40E_PRT_MNG_MFUTP_SOURCE_DESTINATION_MASK I40E_MASK(0x1, I40E_PRT_MNG_MFUTP_SOURCE_DESTINATION_SHIFT)
-#define I40E_PRT_MNG_MIPAF4(_i) (0x00256280 + ((_i) * 32)) /* _i=0...3 */ /* Reset: POR */
-#define I40E_PRT_MNG_MIPAF4_MAX_INDEX 3
-#define I40E_PRT_MNG_MIPAF4_MIPAF_SHIFT 0
-#define I40E_PRT_MNG_MIPAF4_MIPAF_MASK I40E_MASK(0xFFFFFFFF, I40E_PRT_MNG_MIPAF4_MIPAF_SHIFT)
-#define I40E_PRT_MNG_MIPAF6(_i) (0x00254200 + ((_i) * 32)) /* _i=0...15 */ /* Reset: POR */
-#define I40E_PRT_MNG_MIPAF6_MAX_INDEX 15
-#define I40E_PRT_MNG_MIPAF6_MIPAF_SHIFT 0
-#define I40E_PRT_MNG_MIPAF6_MIPAF_MASK I40E_MASK(0xFFFFFFFF, I40E_PRT_MNG_MIPAF6_MIPAF_SHIFT)
-#define I40E_PRT_MNG_MMAH(_i) (0x00256380 + ((_i) * 32)) /* _i=0...3 */ /* Reset: POR */
-#define I40E_PRT_MNG_MMAH_MAX_INDEX 3
-#define I40E_PRT_MNG_MMAH_MMAH_SHIFT 0
-#define I40E_PRT_MNG_MMAH_MMAH_MASK I40E_MASK(0xFFFF, I40E_PRT_MNG_MMAH_MMAH_SHIFT)
-#define I40E_PRT_MNG_MMAL(_i) (0x00256480 + ((_i) * 32)) /* _i=0...3 */ /* Reset: POR */
-#define I40E_PRT_MNG_MMAL_MAX_INDEX 3
-#define I40E_PRT_MNG_MMAL_MMAL_SHIFT 0
-#define I40E_PRT_MNG_MMAL_MMAL_MASK I40E_MASK(0xFFFFFFFF, I40E_PRT_MNG_MMAL_MMAL_SHIFT)
-#define I40E_PRT_MNG_MNGONLY 0x00256A60 /* Reset: POR */
-#define I40E_PRT_MNG_MNGONLY_EXCLUSIVE_TO_MANAGEABILITY_SHIFT 0
-#define I40E_PRT_MNG_MNGONLY_EXCLUSIVE_TO_MANAGEABILITY_MASK I40E_MASK(0xFF, I40E_PRT_MNG_MNGONLY_EXCLUSIVE_TO_MANAGEABILITY_SHIFT)
-#define I40E_PRT_MNG_MSFM 0x00256AA0 /* Reset: POR */
-#define I40E_PRT_MNG_MSFM_PORT_26F_UDP_SHIFT 0
-#define I40E_PRT_MNG_MSFM_PORT_26F_UDP_MASK I40E_MASK(0x1, I40E_PRT_MNG_MSFM_PORT_26F_UDP_SHIFT)
-#define I40E_PRT_MNG_MSFM_PORT_26F_TCP_SHIFT 1
-#define I40E_PRT_MNG_MSFM_PORT_26F_TCP_MASK I40E_MASK(0x1, I40E_PRT_MNG_MSFM_PORT_26F_TCP_SHIFT)
-#define I40E_PRT_MNG_MSFM_PORT_298_UDP_SHIFT 2
-#define I40E_PRT_MNG_MSFM_PORT_298_UDP_MASK I40E_MASK(0x1, I40E_PRT_MNG_MSFM_PORT_298_UDP_SHIFT)
-#define I40E_PRT_MNG_MSFM_PORT_298_TCP_SHIFT 3
-#define I40E_PRT_MNG_MSFM_PORT_298_TCP_MASK I40E_MASK(0x1, I40E_PRT_MNG_MSFM_PORT_298_TCP_SHIFT)
-#define I40E_PRT_MNG_MSFM_IPV6_0_MASK_SHIFT 4
-#define I40E_PRT_MNG_MSFM_IPV6_0_MASK_MASK I40E_MASK(0x1, I40E_PRT_MNG_MSFM_IPV6_0_MASK_SHIFT)
-#define I40E_PRT_MNG_MSFM_IPV6_1_MASK_SHIFT 5
-#define I40E_PRT_MNG_MSFM_IPV6_1_MASK_MASK I40E_MASK(0x1, I40E_PRT_MNG_MSFM_IPV6_1_MASK_SHIFT)
-#define I40E_PRT_MNG_MSFM_IPV6_2_MASK_SHIFT 6
-#define I40E_PRT_MNG_MSFM_IPV6_2_MASK_MASK I40E_MASK(0x1, I40E_PRT_MNG_MSFM_IPV6_2_MASK_SHIFT)
-#define I40E_PRT_MNG_MSFM_IPV6_3_MASK_SHIFT 7
-#define I40E_PRT_MNG_MSFM_IPV6_3_MASK_MASK I40E_MASK(0x1, I40E_PRT_MNG_MSFM_IPV6_3_MASK_SHIFT)
-#define I40E_MSIX_PBA(_i) (0x00001000 + ((_i) * 4)) /* _i=0...5 */ /* Reset: FLR */
-#define I40E_MSIX_PBA_MAX_INDEX 5
-#define I40E_MSIX_PBA_PENBIT_SHIFT 0
-#define I40E_MSIX_PBA_PENBIT_MASK I40E_MASK(0xFFFFFFFF, I40E_MSIX_PBA_PENBIT_SHIFT)
-#define I40E_MSIX_TADD(_i) (0x00000000 + ((_i) * 16)) /* _i=0...128 */ /* Reset: FLR */
-#define I40E_MSIX_TADD_MAX_INDEX 128
-#define I40E_MSIX_TADD_MSIXTADD10_SHIFT 0
-#define I40E_MSIX_TADD_MSIXTADD10_MASK I40E_MASK(0x3, I40E_MSIX_TADD_MSIXTADD10_SHIFT)
-#define I40E_MSIX_TADD_MSIXTADD_SHIFT 2
-#define I40E_MSIX_TADD_MSIXTADD_MASK I40E_MASK(0x3FFFFFFF, I40E_MSIX_TADD_MSIXTADD_SHIFT)
-#define I40E_MSIX_TMSG(_i) (0x00000008 + ((_i) * 16)) /* _i=0...128 */ /* Reset: FLR */
-#define I40E_MSIX_TMSG_MAX_INDEX 128
-#define I40E_MSIX_TMSG_MSIXTMSG_SHIFT 0
-#define I40E_MSIX_TMSG_MSIXTMSG_MASK I40E_MASK(0xFFFFFFFF, I40E_MSIX_TMSG_MSIXTMSG_SHIFT)
-#define I40E_MSIX_TUADD(_i) (0x00000004 + ((_i) * 16)) /* _i=0...128 */ /* Reset: FLR */
-#define I40E_MSIX_TUADD_MAX_INDEX 128
-#define I40E_MSIX_TUADD_MSIXTUADD_SHIFT 0
-#define I40E_MSIX_TUADD_MSIXTUADD_MASK I40E_MASK(0xFFFFFFFF, I40E_MSIX_TUADD_MSIXTUADD_SHIFT)
-#define I40E_MSIX_TVCTRL(_i) (0x0000000C + ((_i) * 16)) /* _i=0...128 */ /* Reset: FLR */
-#define I40E_MSIX_TVCTRL_MAX_INDEX 128
-#define I40E_MSIX_TVCTRL_MASK_SHIFT 0
-#define I40E_MSIX_TVCTRL_MASK_MASK I40E_MASK(0x1, I40E_MSIX_TVCTRL_MASK_SHIFT)
-#define I40E_VFMSIX_PBA1(_i) (0x00002000 + ((_i) * 4)) /* _i=0...19 */ /* Reset: VFLR */
-#define I40E_VFMSIX_PBA1_MAX_INDEX 19
-#define I40E_VFMSIX_PBA1_PENBIT_SHIFT 0
-#define I40E_VFMSIX_PBA1_PENBIT_MASK I40E_MASK(0xFFFFFFFF, I40E_VFMSIX_PBA1_PENBIT_SHIFT)
-#define I40E_VFMSIX_TADD1(_i) (0x00002100 + ((_i) * 16)) /* _i=0...639 */ /* Reset: VFLR */
-#define I40E_VFMSIX_TADD1_MAX_INDEX 639
-#define I40E_VFMSIX_TADD1_MSIXTADD10_SHIFT 0
-#define I40E_VFMSIX_TADD1_MSIXTADD10_MASK I40E_MASK(0x3, I40E_VFMSIX_TADD1_MSIXTADD10_SHIFT)
-#define I40E_VFMSIX_TADD1_MSIXTADD_SHIFT 2
-#define I40E_VFMSIX_TADD1_MSIXTADD_MASK I40E_MASK(0x3FFFFFFF, I40E_VFMSIX_TADD1_MSIXTADD_SHIFT)
-#define I40E_VFMSIX_TMSG1(_i) (0x00002108 + ((_i) * 16)) /* _i=0...639 */ /* Reset: VFLR */
-#define I40E_VFMSIX_TMSG1_MAX_INDEX 639
-#define I40E_VFMSIX_TMSG1_MSIXTMSG_SHIFT 0
-#define I40E_VFMSIX_TMSG1_MSIXTMSG_MASK I40E_MASK(0xFFFFFFFF, I40E_VFMSIX_TMSG1_MSIXTMSG_SHIFT)
-#define I40E_VFMSIX_TUADD1(_i) (0x00002104 + ((_i) * 16)) /* _i=0...639 */ /* Reset: VFLR */
-#define I40E_VFMSIX_TUADD1_MAX_INDEX 639
-#define I40E_VFMSIX_TUADD1_MSIXTUADD_SHIFT 0
-#define I40E_VFMSIX_TUADD1_MSIXTUADD_MASK I40E_MASK(0xFFFFFFFF, I40E_VFMSIX_TUADD1_MSIXTUADD_SHIFT)
-#define I40E_VFMSIX_TVCTRL1(_i) (0x0000210C + ((_i) * 16)) /* _i=0...639 */ /* Reset: VFLR */
-#define I40E_VFMSIX_TVCTRL1_MAX_INDEX 639
-#define I40E_VFMSIX_TVCTRL1_MASK_SHIFT 0
-#define I40E_VFMSIX_TVCTRL1_MASK_MASK I40E_MASK(0x1, I40E_VFMSIX_TVCTRL1_MASK_SHIFT)
 #define I40E_GLNVM_FLA 0x000B6108 /* Reset: POR */
-#define I40E_GLNVM_FLA_FL_SCK_SHIFT 0
-#define I40E_GLNVM_FLA_FL_SCK_MASK I40E_MASK(0x1, I40E_GLNVM_FLA_FL_SCK_SHIFT)
-#define I40E_GLNVM_FLA_FL_CE_SHIFT 1
-#define I40E_GLNVM_FLA_FL_CE_MASK I40E_MASK(0x1, I40E_GLNVM_FLA_FL_CE_SHIFT)
-#define I40E_GLNVM_FLA_FL_SI_SHIFT 2
-#define I40E_GLNVM_FLA_FL_SI_MASK I40E_MASK(0x1, I40E_GLNVM_FLA_FL_SI_SHIFT)
-#define I40E_GLNVM_FLA_FL_SO_SHIFT 3
-#define I40E_GLNVM_FLA_FL_SO_MASK I40E_MASK(0x1, I40E_GLNVM_FLA_FL_SO_SHIFT)
-#define I40E_GLNVM_FLA_FL_REQ_SHIFT 4
-#define I40E_GLNVM_FLA_FL_REQ_MASK I40E_MASK(0x1, I40E_GLNVM_FLA_FL_REQ_SHIFT)
-#define I40E_GLNVM_FLA_FL_GNT_SHIFT 5
-#define I40E_GLNVM_FLA_FL_GNT_MASK I40E_MASK(0x1, I40E_GLNVM_FLA_FL_GNT_SHIFT)
 #define I40E_GLNVM_FLA_LOCKED_SHIFT 6
 #define I40E_GLNVM_FLA_LOCKED_MASK I40E_MASK(0x1, I40E_GLNVM_FLA_LOCKED_SHIFT)
-#define I40E_GLNVM_FLA_FL_SADDR_SHIFT 18
-#define I40E_GLNVM_FLA_FL_SADDR_MASK I40E_MASK(0x7FF, I40E_GLNVM_FLA_FL_SADDR_SHIFT)
-#define I40E_GLNVM_FLA_FL_BUSY_SHIFT 30
-#define I40E_GLNVM_FLA_FL_BUSY_MASK I40E_MASK(0x1, I40E_GLNVM_FLA_FL_BUSY_SHIFT)
-#define I40E_GLNVM_FLA_FL_DER_SHIFT 31
-#define I40E_GLNVM_FLA_FL_DER_MASK I40E_MASK(0x1, I40E_GLNVM_FLA_FL_DER_SHIFT)
-#define I40E_GLNVM_FLASHID 0x000B6104 /* Reset: POR */
-#define I40E_GLNVM_FLASHID_FLASHID_SHIFT 0
-#define I40E_GLNVM_FLASHID_FLASHID_MASK I40E_MASK(0xFFFFFF, I40E_GLNVM_FLASHID_FLASHID_SHIFT)
-#define I40E_GLNVM_FLASHID_FLEEP_PERF_SHIFT 31
-#define I40E_GLNVM_FLASHID_FLEEP_PERF_MASK I40E_MASK(0x1, I40E_GLNVM_FLASHID_FLEEP_PERF_SHIFT)
 #define I40E_GLNVM_GENS 0x000B6100 /* Reset: POR */
-#define I40E_GLNVM_GENS_NVM_PRES_SHIFT 0
-#define I40E_GLNVM_GENS_NVM_PRES_MASK I40E_MASK(0x1, I40E_GLNVM_GENS_NVM_PRES_SHIFT)
 #define I40E_GLNVM_GENS_SR_SIZE_SHIFT 5
 #define I40E_GLNVM_GENS_SR_SIZE_MASK I40E_MASK(0x7, I40E_GLNVM_GENS_SR_SIZE_SHIFT)
-#define I40E_GLNVM_GENS_BANK1VAL_SHIFT 8
-#define I40E_GLNVM_GENS_BANK1VAL_MASK I40E_MASK(0x1, I40E_GLNVM_GENS_BANK1VAL_SHIFT)
-#define I40E_GLNVM_GENS_ALT_PRST_SHIFT 23
-#define I40E_GLNVM_GENS_ALT_PRST_MASK I40E_MASK(0x1, I40E_GLNVM_GENS_ALT_PRST_SHIFT)
-#define I40E_GLNVM_GENS_FL_AUTO_RD_SHIFT 25
-#define I40E_GLNVM_GENS_FL_AUTO_RD_MASK I40E_MASK(0x1, I40E_GLNVM_GENS_FL_AUTO_RD_SHIFT)
-#define I40E_GLNVM_PROTCSR(_i) (0x000B6010 + ((_i) * 4)) /* _i=0...59 */ /* Reset: POR */
-#define I40E_GLNVM_PROTCSR_MAX_INDEX 59
-#define I40E_GLNVM_PROTCSR_ADDR_BLOCK_SHIFT 0
-#define I40E_GLNVM_PROTCSR_ADDR_BLOCK_MASK I40E_MASK(0xFFFFFF, I40E_GLNVM_PROTCSR_ADDR_BLOCK_SHIFT)
 #define I40E_GLNVM_SRCTL 0x000B6110 /* Reset: POR */
-#define I40E_GLNVM_SRCTL_SRBUSY_SHIFT 0
-#define I40E_GLNVM_SRCTL_SRBUSY_MASK I40E_MASK(0x1, I40E_GLNVM_SRCTL_SRBUSY_SHIFT)
 #define I40E_GLNVM_SRCTL_ADDR_SHIFT 14
-#define I40E_GLNVM_SRCTL_ADDR_MASK I40E_MASK(0x7FFF, I40E_GLNVM_SRCTL_ADDR_SHIFT)
-#define I40E_GLNVM_SRCTL_WRITE_SHIFT 29
-#define I40E_GLNVM_SRCTL_WRITE_MASK I40E_MASK(0x1, I40E_GLNVM_SRCTL_WRITE_SHIFT)
 #define I40E_GLNVM_SRCTL_START_SHIFT 30
-#define I40E_GLNVM_SRCTL_START_MASK I40E_MASK(0x1, I40E_GLNVM_SRCTL_START_SHIFT)
 #define I40E_GLNVM_SRCTL_DONE_SHIFT 31
 #define I40E_GLNVM_SRCTL_DONE_MASK I40E_MASK(0x1u, I40E_GLNVM_SRCTL_DONE_SHIFT)
 #define I40E_GLNVM_SRDATA 0x000B6114 /* Reset: POR */
-#define I40E_GLNVM_SRDATA_WRDATA_SHIFT 0
-#define I40E_GLNVM_SRDATA_WRDATA_MASK I40E_MASK(0xFFFF, I40E_GLNVM_SRDATA_WRDATA_SHIFT)
 #define I40E_GLNVM_SRDATA_RDDATA_SHIFT 16
 #define I40E_GLNVM_SRDATA_RDDATA_MASK I40E_MASK(0xFFFF, I40E_GLNVM_SRDATA_RDDATA_SHIFT)
 #define I40E_GLNVM_ULD 0x000B6008 /* Reset: POR */
-#define I40E_GLNVM_ULD_CONF_PCIR_DONE_SHIFT 0
-#define I40E_GLNVM_ULD_CONF_PCIR_DONE_MASK I40E_MASK(0x1, I40E_GLNVM_ULD_CONF_PCIR_DONE_SHIFT)
-#define I40E_GLNVM_ULD_CONF_PCIRTL_DONE_SHIFT 1
-#define I40E_GLNVM_ULD_CONF_PCIRTL_DONE_MASK I40E_MASK(0x1, I40E_GLNVM_ULD_CONF_PCIRTL_DONE_SHIFT)
-#define I40E_GLNVM_ULD_CONF_LCB_DONE_SHIFT 2
-#define I40E_GLNVM_ULD_CONF_LCB_DONE_MASK I40E_MASK(0x1, I40E_GLNVM_ULD_CONF_LCB_DONE_SHIFT)
 #define I40E_GLNVM_ULD_CONF_CORE_DONE_SHIFT 3
 #define I40E_GLNVM_ULD_CONF_CORE_DONE_MASK I40E_MASK(0x1, I40E_GLNVM_ULD_CONF_CORE_DONE_SHIFT)
 #define I40E_GLNVM_ULD_CONF_GLOBAL_DONE_SHIFT 4
 #define I40E_GLNVM_ULD_CONF_GLOBAL_DONE_MASK I40E_MASK(0x1, I40E_GLNVM_ULD_CONF_GLOBAL_DONE_SHIFT)
-#define I40E_GLNVM_ULD_CONF_POR_DONE_SHIFT 5
-#define I40E_GLNVM_ULD_CONF_POR_DONE_MASK I40E_MASK(0x1, I40E_GLNVM_ULD_CONF_POR_DONE_SHIFT)
-#define I40E_GLNVM_ULD_CONF_PCIE_ANA_DONE_SHIFT 6
-#define I40E_GLNVM_ULD_CONF_PCIE_ANA_DONE_MASK I40E_MASK(0x1, I40E_GLNVM_ULD_CONF_PCIE_ANA_DONE_SHIFT)
-#define I40E_GLNVM_ULD_CONF_PHY_ANA_DONE_SHIFT 7
-#define I40E_GLNVM_ULD_CONF_PHY_ANA_DONE_MASK I40E_MASK(0x1, I40E_GLNVM_ULD_CONF_PHY_ANA_DONE_SHIFT)
-#define I40E_GLNVM_ULD_CONF_EMP_DONE_SHIFT 8
-#define I40E_GLNVM_ULD_CONF_EMP_DONE_MASK I40E_MASK(0x1, I40E_GLNVM_ULD_CONF_EMP_DONE_SHIFT)
-#define I40E_GLNVM_ULD_CONF_PCIALT_DONE_SHIFT 9
-#define I40E_GLNVM_ULD_CONF_PCIALT_DONE_MASK I40E_MASK(0x1, I40E_GLNVM_ULD_CONF_PCIALT_DONE_SHIFT)
-#define I40E_GLPCI_BYTCTH 0x0009C484 /* Reset: PCIR */
-#define I40E_GLPCI_BYTCTH_PCI_COUNT_BW_BCT_SHIFT 0
-#define I40E_GLPCI_BYTCTH_PCI_COUNT_BW_BCT_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPCI_BYTCTH_PCI_COUNT_BW_BCT_SHIFT)
-#define I40E_GLPCI_BYTCTL 0x0009C488 /* Reset: PCIR */
-#define I40E_GLPCI_BYTCTL_PCI_COUNT_BW_BCT_SHIFT 0
-#define I40E_GLPCI_BYTCTL_PCI_COUNT_BW_BCT_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPCI_BYTCTL_PCI_COUNT_BW_BCT_SHIFT)
-#define I40E_GLPCI_CAPCTRL 0x000BE4A4 /* Reset: PCIR */
-#define I40E_GLPCI_CAPCTRL_VPD_EN_SHIFT 0
-#define I40E_GLPCI_CAPCTRL_VPD_EN_MASK I40E_MASK(0x1, I40E_GLPCI_CAPCTRL_VPD_EN_SHIFT)
 #define I40E_GLPCI_CAPSUP 0x000BE4A8 /* Reset: PCIR */
-#define I40E_GLPCI_CAPSUP_PCIE_VER_SHIFT 0
-#define I40E_GLPCI_CAPSUP_PCIE_VER_MASK I40E_MASK(0x1, I40E_GLPCI_CAPSUP_PCIE_VER_SHIFT)
-#define I40E_GLPCI_CAPSUP_LTR_EN_SHIFT 2
-#define I40E_GLPCI_CAPSUP_LTR_EN_MASK I40E_MASK(0x1, I40E_GLPCI_CAPSUP_LTR_EN_SHIFT)
-#define I40E_GLPCI_CAPSUP_TPH_EN_SHIFT 3
-#define I40E_GLPCI_CAPSUP_TPH_EN_MASK I40E_MASK(0x1, I40E_GLPCI_CAPSUP_TPH_EN_SHIFT)
 #define I40E_GLPCI_CAPSUP_ARI_EN_SHIFT 4
 #define I40E_GLPCI_CAPSUP_ARI_EN_MASK I40E_MASK(0x1, I40E_GLPCI_CAPSUP_ARI_EN_SHIFT)
-#define I40E_GLPCI_CAPSUP_IOV_EN_SHIFT 5
-#define I40E_GLPCI_CAPSUP_IOV_EN_MASK I40E_MASK(0x1, I40E_GLPCI_CAPSUP_IOV_EN_SHIFT)
-#define I40E_GLPCI_CAPSUP_ACS_EN_SHIFT 6
-#define I40E_GLPCI_CAPSUP_ACS_EN_MASK I40E_MASK(0x1, I40E_GLPCI_CAPSUP_ACS_EN_SHIFT)
-#define I40E_GLPCI_CAPSUP_SEC_EN_SHIFT 7
-#define I40E_GLPCI_CAPSUP_SEC_EN_MASK I40E_MASK(0x1, I40E_GLPCI_CAPSUP_SEC_EN_SHIFT)
-#define I40E_GLPCI_CAPSUP_ECRC_GEN_EN_SHIFT 16
-#define I40E_GLPCI_CAPSUP_ECRC_GEN_EN_MASK I40E_MASK(0x1, I40E_GLPCI_CAPSUP_ECRC_GEN_EN_SHIFT)
-#define I40E_GLPCI_CAPSUP_ECRC_CHK_EN_SHIFT 17
-#define I40E_GLPCI_CAPSUP_ECRC_CHK_EN_MASK I40E_MASK(0x1, I40E_GLPCI_CAPSUP_ECRC_CHK_EN_SHIFT)
-#define I40E_GLPCI_CAPSUP_IDO_EN_SHIFT 18
-#define I40E_GLPCI_CAPSUP_IDO_EN_MASK I40E_MASK(0x1, I40E_GLPCI_CAPSUP_IDO_EN_SHIFT)
-#define I40E_GLPCI_CAPSUP_MSI_MASK_SHIFT 19
-#define I40E_GLPCI_CAPSUP_MSI_MASK_MASK I40E_MASK(0x1, I40E_GLPCI_CAPSUP_MSI_MASK_SHIFT)
-#define I40E_GLPCI_CAPSUP_CSR_CONF_EN_SHIFT 20
-#define I40E_GLPCI_CAPSUP_CSR_CONF_EN_MASK I40E_MASK(0x1, I40E_GLPCI_CAPSUP_CSR_CONF_EN_SHIFT)
-#define I40E_GLPCI_CAPSUP_LOAD_SUBSYS_ID_SHIFT 30
-#define I40E_GLPCI_CAPSUP_LOAD_SUBSYS_ID_MASK I40E_MASK(0x1, I40E_GLPCI_CAPSUP_LOAD_SUBSYS_ID_SHIFT)
-#define I40E_GLPCI_CAPSUP_LOAD_DEV_ID_SHIFT 31
-#define I40E_GLPCI_CAPSUP_LOAD_DEV_ID_MASK I40E_MASK(0x1, I40E_GLPCI_CAPSUP_LOAD_DEV_ID_SHIFT)
-#define I40E_GLPCI_CNF 0x000BE4C0 /* Reset: POR */
-#define I40E_GLPCI_CNF_FLEX10_SHIFT 1
-#define I40E_GLPCI_CNF_FLEX10_MASK I40E_MASK(0x1, I40E_GLPCI_CNF_FLEX10_SHIFT)
-#define I40E_GLPCI_CNF_WAKE_PIN_EN_SHIFT 2
-#define I40E_GLPCI_CNF_WAKE_PIN_EN_MASK I40E_MASK(0x1, I40E_GLPCI_CNF_WAKE_PIN_EN_SHIFT)
 #define I40E_GLPCI_CNF2 0x000BE494 /* Reset: PCIR */
-#define I40E_GLPCI_CNF2_RO_DIS_SHIFT 0
-#define I40E_GLPCI_CNF2_RO_DIS_MASK I40E_MASK(0x1, I40E_GLPCI_CNF2_RO_DIS_SHIFT)
-#define I40E_GLPCI_CNF2_CACHELINE_SIZE_SHIFT 1
-#define I40E_GLPCI_CNF2_CACHELINE_SIZE_MASK I40E_MASK(0x1, I40E_GLPCI_CNF2_CACHELINE_SIZE_SHIFT)
 #define I40E_GLPCI_CNF2_MSI_X_PF_N_SHIFT 2
 #define I40E_GLPCI_CNF2_MSI_X_PF_N_MASK I40E_MASK(0x7FF, I40E_GLPCI_CNF2_MSI_X_PF_N_SHIFT)
 #define I40E_GLPCI_CNF2_MSI_X_VF_N_SHIFT 13
 #define I40E_GLPCI_CNF2_MSI_X_VF_N_MASK I40E_MASK(0x7FF, I40E_GLPCI_CNF2_MSI_X_VF_N_SHIFT)
-#define I40E_GLPCI_DREVID 0x0009C480 /* Reset: PCIR */
-#define I40E_GLPCI_DREVID_DEFAULT_REVID_SHIFT 0
-#define I40E_GLPCI_DREVID_DEFAULT_REVID_MASK I40E_MASK(0xFF, I40E_GLPCI_DREVID_DEFAULT_REVID_SHIFT)
-#define I40E_GLPCI_GSCL_1 0x0009C48C /* Reset: PCIR */
-#define I40E_GLPCI_GSCL_1_GIO_COUNT_EN_0_SHIFT 0
-#define I40E_GLPCI_GSCL_1_GIO_COUNT_EN_0_MASK I40E_MASK(0x1, I40E_GLPCI_GSCL_1_GIO_COUNT_EN_0_SHIFT)
-#define I40E_GLPCI_GSCL_1_GIO_COUNT_EN_1_SHIFT 1
-#define I40E_GLPCI_GSCL_1_GIO_COUNT_EN_1_MASK I40E_MASK(0x1, I40E_GLPCI_GSCL_1_GIO_COUNT_EN_1_SHIFT)
-#define I40E_GLPCI_GSCL_1_GIO_COUNT_EN_2_SHIFT 2
-#define I40E_GLPCI_GSCL_1_GIO_COUNT_EN_2_MASK I40E_MASK(0x1, I40E_GLPCI_GSCL_1_GIO_COUNT_EN_2_SHIFT)
-#define I40E_GLPCI_GSCL_1_GIO_COUNT_EN_3_SHIFT 3
-#define I40E_GLPCI_GSCL_1_GIO_COUNT_EN_3_MASK I40E_MASK(0x1, I40E_GLPCI_GSCL_1_GIO_COUNT_EN_3_SHIFT)
-#define I40E_GLPCI_GSCL_1_LBC_ENABLE_0_SHIFT 4
-#define I40E_GLPCI_GSCL_1_LBC_ENABLE_0_MASK I40E_MASK(0x1, I40E_GLPCI_GSCL_1_LBC_ENABLE_0_SHIFT)
-#define I40E_GLPCI_GSCL_1_LBC_ENABLE_1_SHIFT 5
-#define I40E_GLPCI_GSCL_1_LBC_ENABLE_1_MASK I40E_MASK(0x1, I40E_GLPCI_GSCL_1_LBC_ENABLE_1_SHIFT)
-#define I40E_GLPCI_GSCL_1_LBC_ENABLE_2_SHIFT 6
-#define I40E_GLPCI_GSCL_1_LBC_ENABLE_2_MASK I40E_MASK(0x1, I40E_GLPCI_GSCL_1_LBC_ENABLE_2_SHIFT)
-#define I40E_GLPCI_GSCL_1_LBC_ENABLE_3_SHIFT 7
-#define I40E_GLPCI_GSCL_1_LBC_ENABLE_3_MASK I40E_MASK(0x1, I40E_GLPCI_GSCL_1_LBC_ENABLE_3_SHIFT)
-#define I40E_GLPCI_GSCL_1_PCI_COUNT_LAT_EN_SHIFT 8
-#define I40E_GLPCI_GSCL_1_PCI_COUNT_LAT_EN_MASK I40E_MASK(0x1, I40E_GLPCI_GSCL_1_PCI_COUNT_LAT_EN_SHIFT)
-#define I40E_GLPCI_GSCL_1_PCI_COUNT_LAT_EV_SHIFT 9
-#define I40E_GLPCI_GSCL_1_PCI_COUNT_LAT_EV_MASK I40E_MASK(0x1F, I40E_GLPCI_GSCL_1_PCI_COUNT_LAT_EV_SHIFT)
-#define I40E_GLPCI_GSCL_1_PCI_COUNT_BW_EN_SHIFT 14
-#define I40E_GLPCI_GSCL_1_PCI_COUNT_BW_EN_MASK I40E_MASK(0x1, I40E_GLPCI_GSCL_1_PCI_COUNT_BW_EN_SHIFT)
-#define I40E_GLPCI_GSCL_1_PCI_COUNT_BW_EV_SHIFT 15
-#define I40E_GLPCI_GSCL_1_PCI_COUNT_BW_EV_MASK I40E_MASK(0x1F, I40E_GLPCI_GSCL_1_PCI_COUNT_BW_EV_SHIFT)
-#define I40E_GLPCI_GSCL_1_GIO_64_BIT_EN_SHIFT 28
-#define I40E_GLPCI_GSCL_1_GIO_64_BIT_EN_MASK I40E_MASK(0x1, I40E_GLPCI_GSCL_1_GIO_64_BIT_EN_SHIFT)
-#define I40E_GLPCI_GSCL_1_GIO_COUNT_RESET_SHIFT 29
-#define I40E_GLPCI_GSCL_1_GIO_COUNT_RESET_MASK I40E_MASK(0x1, I40E_GLPCI_GSCL_1_GIO_COUNT_RESET_SHIFT)
-#define I40E_GLPCI_GSCL_1_GIO_COUNT_STOP_SHIFT 30
-#define I40E_GLPCI_GSCL_1_GIO_COUNT_STOP_MASK I40E_MASK(0x1, I40E_GLPCI_GSCL_1_GIO_COUNT_STOP_SHIFT)
-#define I40E_GLPCI_GSCL_1_GIO_COUNT_START_SHIFT 31
-#define I40E_GLPCI_GSCL_1_GIO_COUNT_START_MASK I40E_MASK(0x1, I40E_GLPCI_GSCL_1_GIO_COUNT_START_SHIFT)
-#define I40E_GLPCI_GSCL_2 0x0009C490 /* Reset: PCIR */
-#define I40E_GLPCI_GSCL_2_GIO_EVENT_NUM_0_SHIFT 0
-#define I40E_GLPCI_GSCL_2_GIO_EVENT_NUM_0_MASK I40E_MASK(0xFF, I40E_GLPCI_GSCL_2_GIO_EVENT_NUM_0_SHIFT)
-#define I40E_GLPCI_GSCL_2_GIO_EVENT_NUM_1_SHIFT 8
-#define I40E_GLPCI_GSCL_2_GIO_EVENT_NUM_1_MASK I40E_MASK(0xFF, I40E_GLPCI_GSCL_2_GIO_EVENT_NUM_1_SHIFT)
-#define I40E_GLPCI_GSCL_2_GIO_EVENT_NUM_2_SHIFT 16
-#define I40E_GLPCI_GSCL_2_GIO_EVENT_NUM_2_MASK I40E_MASK(0xFF, I40E_GLPCI_GSCL_2_GIO_EVENT_NUM_2_SHIFT)
-#define I40E_GLPCI_GSCL_2_GIO_EVENT_NUM_3_SHIFT 24
-#define I40E_GLPCI_GSCL_2_GIO_EVENT_NUM_3_MASK I40E_MASK(0xFF, I40E_GLPCI_GSCL_2_GIO_EVENT_NUM_3_SHIFT)
-#define I40E_GLPCI_GSCL_5_8(_i) (0x0009C494 + ((_i) * 4)) /* _i=0...3 */ /* Reset: PCIR */
-#define I40E_GLPCI_GSCL_5_8_MAX_INDEX 3
-#define I40E_GLPCI_GSCL_5_8_LBC_THRESHOLD_N_SHIFT 0
-#define I40E_GLPCI_GSCL_5_8_LBC_THRESHOLD_N_MASK I40E_MASK(0xFFFF, I40E_GLPCI_GSCL_5_8_LBC_THRESHOLD_N_SHIFT)
-#define I40E_GLPCI_GSCL_5_8_LBC_TIMER_N_SHIFT 16
-#define I40E_GLPCI_GSCL_5_8_LBC_TIMER_N_MASK I40E_MASK(0xFFFF, I40E_GLPCI_GSCL_5_8_LBC_TIMER_N_SHIFT)
-#define I40E_GLPCI_GSCN_0_3(_i) (0x0009C4A4 + ((_i) * 4)) /* _i=0...3 */ /* Reset: PCIR */
-#define I40E_GLPCI_GSCN_0_3_MAX_INDEX 3
-#define I40E_GLPCI_GSCN_0_3_EVENT_COUNTER_SHIFT 0
-#define I40E_GLPCI_GSCN_0_3_EVENT_COUNTER_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPCI_GSCN_0_3_EVENT_COUNTER_SHIFT)
 #define I40E_GLPCI_LBARCTRL 0x000BE484 /* Reset: POR */
-#define I40E_GLPCI_LBARCTRL_PREFBAR_SHIFT 0
-#define I40E_GLPCI_LBARCTRL_PREFBAR_MASK I40E_MASK(0x1, I40E_GLPCI_LBARCTRL_PREFBAR_SHIFT)
-#define I40E_GLPCI_LBARCTRL_BAR32_SHIFT 1
-#define I40E_GLPCI_LBARCTRL_BAR32_MASK I40E_MASK(0x1, I40E_GLPCI_LBARCTRL_BAR32_SHIFT)
-#define I40E_GLPCI_LBARCTRL_FLASH_EXPOSE_SHIFT 3
-#define I40E_GLPCI_LBARCTRL_FLASH_EXPOSE_MASK I40E_MASK(0x1, I40E_GLPCI_LBARCTRL_FLASH_EXPOSE_SHIFT)
-#define I40E_GLPCI_LBARCTRL_RSVD_4_SHIFT 4
-#define I40E_GLPCI_LBARCTRL_RSVD_4_MASK I40E_MASK(0x3, I40E_GLPCI_LBARCTRL_RSVD_4_SHIFT)
 #define I40E_GLPCI_LBARCTRL_FL_SIZE_SHIFT 6
 #define I40E_GLPCI_LBARCTRL_FL_SIZE_MASK I40E_MASK(0x7, I40E_GLPCI_LBARCTRL_FL_SIZE_SHIFT)
-#define I40E_GLPCI_LBARCTRL_RSVD_10_SHIFT 10
-#define I40E_GLPCI_LBARCTRL_RSVD_10_MASK I40E_MASK(0x1, I40E_GLPCI_LBARCTRL_RSVD_10_SHIFT)
-#define I40E_GLPCI_LBARCTRL_EXROM_SIZE_SHIFT 11
-#define I40E_GLPCI_LBARCTRL_EXROM_SIZE_MASK I40E_MASK(0x7, I40E_GLPCI_LBARCTRL_EXROM_SIZE_SHIFT)
-#define I40E_GLPCI_LINKCAP 0x000BE4AC /* Reset: PCIR */
-#define I40E_GLPCI_LINKCAP_LINK_SPEEDS_VECTOR_SHIFT 0
-#define I40E_GLPCI_LINKCAP_LINK_SPEEDS_VECTOR_MASK I40E_MASK(0x3F, I40E_GLPCI_LINKCAP_LINK_SPEEDS_VECTOR_SHIFT)
-#define I40E_GLPCI_LINKCAP_MAX_PAYLOAD_SHIFT 6
-#define I40E_GLPCI_LINKCAP_MAX_PAYLOAD_MASK I40E_MASK(0x7, I40E_GLPCI_LINKCAP_MAX_PAYLOAD_SHIFT)
-#define I40E_GLPCI_LINKCAP_MAX_LINK_WIDTH_SHIFT 9
-#define I40E_GLPCI_LINKCAP_MAX_LINK_WIDTH_MASK I40E_MASK(0xF, I40E_GLPCI_LINKCAP_MAX_LINK_WIDTH_SHIFT)
-#define I40E_GLPCI_PCIERR 0x000BE4FC /* Reset: PCIR */
-#define I40E_GLPCI_PCIERR_PCIE_ERR_REP_SHIFT 0
-#define I40E_GLPCI_PCIERR_PCIE_ERR_REP_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPCI_PCIERR_PCIE_ERR_REP_SHIFT)
-#define I40E_GLPCI_PKTCT 0x0009C4BC /* Reset: PCIR */
-#define I40E_GLPCI_PKTCT_PCI_COUNT_BW_PCT_SHIFT 0
-#define I40E_GLPCI_PKTCT_PCI_COUNT_BW_PCT_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPCI_PKTCT_PCI_COUNT_BW_PCT_SHIFT)
-#define I40E_GLPCI_PM_MUX_NPQ 0x0009C4F4 /* Reset: PCIR */
-#define I40E_GLPCI_PM_MUX_NPQ_NPQ_NUM_PORT_SEL_SHIFT 0
-#define I40E_GLPCI_PM_MUX_NPQ_NPQ_NUM_PORT_SEL_MASK I40E_MASK(0x7, I40E_GLPCI_PM_MUX_NPQ_NPQ_NUM_PORT_SEL_SHIFT)
-#define I40E_GLPCI_PM_MUX_NPQ_INNER_NPQ_SEL_SHIFT 16
-#define I40E_GLPCI_PM_MUX_NPQ_INNER_NPQ_SEL_MASK I40E_MASK(0x1F, I40E_GLPCI_PM_MUX_NPQ_INNER_NPQ_SEL_SHIFT)
-#define I40E_GLPCI_PM_MUX_PFB 0x0009C4F0 /* Reset: PCIR */
-#define I40E_GLPCI_PM_MUX_PFB_PFB_PORT_SEL_SHIFT 0
-#define I40E_GLPCI_PM_MUX_PFB_PFB_PORT_SEL_MASK I40E_MASK(0x1F, I40E_GLPCI_PM_MUX_PFB_PFB_PORT_SEL_SHIFT)
-#define I40E_GLPCI_PM_MUX_PFB_INNER_PORT_SEL_SHIFT 16
-#define I40E_GLPCI_PM_MUX_PFB_INNER_PORT_SEL_MASK I40E_MASK(0x7, I40E_GLPCI_PM_MUX_PFB_INNER_PORT_SEL_SHIFT)
-#define I40E_GLPCI_PMSUP 0x000BE4B0 /* Reset: PCIR */
-#define I40E_GLPCI_PMSUP_ASPM_SUP_SHIFT 0
-#define I40E_GLPCI_PMSUP_ASPM_SUP_MASK I40E_MASK(0x3, I40E_GLPCI_PMSUP_ASPM_SUP_SHIFT)
-#define I40E_GLPCI_PMSUP_L0S_EXIT_LAT_SHIFT 2
-#define I40E_GLPCI_PMSUP_L0S_EXIT_LAT_MASK I40E_MASK(0x7, I40E_GLPCI_PMSUP_L0S_EXIT_LAT_SHIFT)
-#define I40E_GLPCI_PMSUP_L1_EXIT_LAT_SHIFT 5
-#define I40E_GLPCI_PMSUP_L1_EXIT_LAT_MASK I40E_MASK(0x7, I40E_GLPCI_PMSUP_L1_EXIT_LAT_SHIFT)
-#define I40E_GLPCI_PMSUP_L0S_ACC_LAT_SHIFT 8
-#define I40E_GLPCI_PMSUP_L0S_ACC_LAT_MASK I40E_MASK(0x7, I40E_GLPCI_PMSUP_L0S_ACC_LAT_SHIFT)
-#define I40E_GLPCI_PMSUP_L1_ACC_LAT_SHIFT 11
-#define I40E_GLPCI_PMSUP_L1_ACC_LAT_MASK I40E_MASK(0x7, I40E_GLPCI_PMSUP_L1_ACC_LAT_SHIFT)
-#define I40E_GLPCI_PMSUP_SLOT_CLK_SHIFT 14
-#define I40E_GLPCI_PMSUP_SLOT_CLK_MASK I40E_MASK(0x1, I40E_GLPCI_PMSUP_SLOT_CLK_SHIFT)
-#define I40E_GLPCI_PMSUP_OBFF_SUP_SHIFT 15
-#define I40E_GLPCI_PMSUP_OBFF_SUP_MASK I40E_MASK(0x3, I40E_GLPCI_PMSUP_OBFF_SUP_SHIFT)
-#define I40E_GLPCI_PQ_MAX_USED_SPC 0x0009C4EC /* Reset: PCIR */
-#define I40E_GLPCI_PQ_MAX_USED_SPC_GLPCI_PQ_MAX_USED_SPC_12_SHIFT 0
-#define I40E_GLPCI_PQ_MAX_USED_SPC_GLPCI_PQ_MAX_USED_SPC_12_MASK I40E_MASK(0xFF, I40E_GLPCI_PQ_MAX_USED_SPC_GLPCI_PQ_MAX_USED_SPC_12_SHIFT)
-#define I40E_GLPCI_PQ_MAX_USED_SPC_GLPCI_PQ_MAX_USED_SPC_13_SHIFT 8
-#define I40E_GLPCI_PQ_MAX_USED_SPC_GLPCI_PQ_MAX_USED_SPC_13_MASK I40E_MASK(0xFF, I40E_GLPCI_PQ_MAX_USED_SPC_GLPCI_PQ_MAX_USED_SPC_13_SHIFT)
-#define I40E_GLPCI_PWRDATA 0x000BE490 /* Reset: PCIR */
-#define I40E_GLPCI_PWRDATA_D0_POWER_SHIFT 0
-#define I40E_GLPCI_PWRDATA_D0_POWER_MASK I40E_MASK(0xFF, I40E_GLPCI_PWRDATA_D0_POWER_SHIFT)
-#define I40E_GLPCI_PWRDATA_COMM_POWER_SHIFT 8
-#define I40E_GLPCI_PWRDATA_COMM_POWER_MASK I40E_MASK(0xFF, I40E_GLPCI_PWRDATA_COMM_POWER_SHIFT)
-#define I40E_GLPCI_PWRDATA_D3_POWER_SHIFT 16
-#define I40E_GLPCI_PWRDATA_D3_POWER_MASK I40E_MASK(0xFF, I40E_GLPCI_PWRDATA_D3_POWER_SHIFT)
-#define I40E_GLPCI_PWRDATA_DATA_SCALE_SHIFT 24
-#define I40E_GLPCI_PWRDATA_DATA_SCALE_MASK I40E_MASK(0x3, I40E_GLPCI_PWRDATA_DATA_SCALE_SHIFT)
-#define I40E_GLPCI_REVID 0x000BE4B4 /* Reset: PCIR */
-#define I40E_GLPCI_REVID_NVM_REVID_SHIFT 0
-#define I40E_GLPCI_REVID_NVM_REVID_MASK I40E_MASK(0xFF, I40E_GLPCI_REVID_NVM_REVID_SHIFT)
-#define I40E_GLPCI_SERH 0x000BE49C /* Reset: PCIR */
-#define I40E_GLPCI_SERH_SER_NUM_H_SHIFT 0
-#define I40E_GLPCI_SERH_SER_NUM_H_MASK I40E_MASK(0xFFFF, I40E_GLPCI_SERH_SER_NUM_H_SHIFT)
-#define I40E_GLPCI_SERL 0x000BE498 /* Reset: PCIR */
-#define I40E_GLPCI_SERL_SER_NUM_L_SHIFT 0
-#define I40E_GLPCI_SERL_SER_NUM_L_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPCI_SERL_SER_NUM_L_SHIFT)
-#define I40E_GLPCI_SPARE_BITS_0 0x0009C4F8 /* Reset: PCIR */
-#define I40E_GLPCI_SPARE_BITS_0_SPARE_BITS_SHIFT 0
-#define I40E_GLPCI_SPARE_BITS_0_SPARE_BITS_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPCI_SPARE_BITS_0_SPARE_BITS_SHIFT)
-#define I40E_GLPCI_SPARE_BITS_1 0x0009C4FC /* Reset: PCIR */
-#define I40E_GLPCI_SPARE_BITS_1_SPARE_BITS_SHIFT 0
-#define I40E_GLPCI_SPARE_BITS_1_SPARE_BITS_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPCI_SPARE_BITS_1_SPARE_BITS_SHIFT)
-#define I40E_GLPCI_SUBVENID 0x000BE48C /* Reset: PCIR */
-#define I40E_GLPCI_SUBVENID_SUB_VEN_ID_SHIFT 0
-#define I40E_GLPCI_SUBVENID_SUB_VEN_ID_MASK I40E_MASK(0xFFFF, I40E_GLPCI_SUBVENID_SUB_VEN_ID_SHIFT)
-#define I40E_GLPCI_UPADD 0x000BE4F8 /* Reset: PCIR */
-#define I40E_GLPCI_UPADD_ADDRESS_SHIFT 1
-#define I40E_GLPCI_UPADD_ADDRESS_MASK I40E_MASK(0x7FFFFFFF, I40E_GLPCI_UPADD_ADDRESS_SHIFT)
-#define I40E_GLPCI_VENDORID 0x000BE518 /* Reset: PCIR */
-#define I40E_GLPCI_VENDORID_VENDORID_SHIFT 0
-#define I40E_GLPCI_VENDORID_VENDORID_MASK I40E_MASK(0xFFFF, I40E_GLPCI_VENDORID_VENDORID_SHIFT)
-#define I40E_GLPCI_VFSUP 0x000BE4B8 /* Reset: PCIR */
-#define I40E_GLPCI_VFSUP_VF_PREFETCH_SHIFT 0
-#define I40E_GLPCI_VFSUP_VF_PREFETCH_MASK I40E_MASK(0x1, I40E_GLPCI_VFSUP_VF_PREFETCH_SHIFT)
-#define I40E_GLPCI_VFSUP_VR_BAR_TYPE_SHIFT 1
-#define I40E_GLPCI_VFSUP_VR_BAR_TYPE_MASK I40E_MASK(0x1, I40E_GLPCI_VFSUP_VR_BAR_TYPE_SHIFT)
-#define I40E_GLTPH_CTRL 0x000BE480 /* Reset: PCIR */
-#define I40E_GLTPH_CTRL_DESC_PH_SHIFT 9
-#define I40E_GLTPH_CTRL_DESC_PH_MASK I40E_MASK(0x3, I40E_GLTPH_CTRL_DESC_PH_SHIFT)
-#define I40E_GLTPH_CTRL_DATA_PH_SHIFT 11
-#define I40E_GLTPH_CTRL_DATA_PH_MASK I40E_MASK(0x3, I40E_GLTPH_CTRL_DATA_PH_SHIFT)
 #define I40E_PF_FUNC_RID 0x0009C000 /* Reset: PCIR */
-#define I40E_PF_FUNC_RID_FUNCTION_NUMBER_SHIFT 0
-#define I40E_PF_FUNC_RID_FUNCTION_NUMBER_MASK I40E_MASK(0x7, I40E_PF_FUNC_RID_FUNCTION_NUMBER_SHIFT)
-#define I40E_PF_FUNC_RID_DEVICE_NUMBER_SHIFT 3
-#define I40E_PF_FUNC_RID_DEVICE_NUMBER_MASK I40E_MASK(0x1F, I40E_PF_FUNC_RID_DEVICE_NUMBER_SHIFT)
-#define I40E_PF_FUNC_RID_BUS_NUMBER_SHIFT 8
-#define I40E_PF_FUNC_RID_BUS_NUMBER_MASK I40E_MASK(0xFF, I40E_PF_FUNC_RID_BUS_NUMBER_SHIFT)
 #define I40E_PF_PCI_CIAA 0x0009C080 /* Reset: FLR */
-#define I40E_PF_PCI_CIAA_ADDRESS_SHIFT 0
-#define I40E_PF_PCI_CIAA_ADDRESS_MASK I40E_MASK(0xFFF, I40E_PF_PCI_CIAA_ADDRESS_SHIFT)
 #define I40E_PF_PCI_CIAA_VF_NUM_SHIFT 12
-#define I40E_PF_PCI_CIAA_VF_NUM_MASK I40E_MASK(0x7F, I40E_PF_PCI_CIAA_VF_NUM_SHIFT)
 #define I40E_PF_PCI_CIAD 0x0009C100 /* Reset: FLR */
-#define I40E_PF_PCI_CIAD_DATA_SHIFT 0
-#define I40E_PF_PCI_CIAD_DATA_MASK I40E_MASK(0xFFFFFFFF, I40E_PF_PCI_CIAD_DATA_SHIFT)
-#define I40E_PFPCI_CLASS 0x000BE400 /* Reset: PCIR */
-#define I40E_PFPCI_CLASS_STORAGE_CLASS_SHIFT 0
-#define I40E_PFPCI_CLASS_STORAGE_CLASS_MASK I40E_MASK(0x1, I40E_PFPCI_CLASS_STORAGE_CLASS_SHIFT)
-#define I40E_PFPCI_CLASS_RESERVED_1_SHIFT 1
-#define I40E_PFPCI_CLASS_RESERVED_1_MASK I40E_MASK(0x1, I40E_PFPCI_CLASS_RESERVED_1_SHIFT)
-#define I40E_PFPCI_CLASS_PF_IS_LAN_SHIFT 2
-#define I40E_PFPCI_CLASS_PF_IS_LAN_MASK I40E_MASK(0x1, I40E_PFPCI_CLASS_PF_IS_LAN_SHIFT)
-#define I40E_PFPCI_CNF 0x000BE000 /* Reset: PCIR */
-#define I40E_PFPCI_CNF_MSI_EN_SHIFT 2
-#define I40E_PFPCI_CNF_MSI_EN_MASK I40E_MASK(0x1, I40E_PFPCI_CNF_MSI_EN_SHIFT)
-#define I40E_PFPCI_CNF_EXROM_DIS_SHIFT 3
-#define I40E_PFPCI_CNF_EXROM_DIS_MASK I40E_MASK(0x1, I40E_PFPCI_CNF_EXROM_DIS_SHIFT)
-#define I40E_PFPCI_CNF_IO_BAR_SHIFT 4
-#define I40E_PFPCI_CNF_IO_BAR_MASK I40E_MASK(0x1, I40E_PFPCI_CNF_IO_BAR_SHIFT)
-#define I40E_PFPCI_CNF_INT_PIN_SHIFT 5
-#define I40E_PFPCI_CNF_INT_PIN_MASK I40E_MASK(0x3, I40E_PFPCI_CNF_INT_PIN_SHIFT)
-#define I40E_PFPCI_DEVID 0x000BE080 /* Reset: PCIR */
-#define I40E_PFPCI_DEVID_PF_DEV_ID_SHIFT 0
-#define I40E_PFPCI_DEVID_PF_DEV_ID_MASK I40E_MASK(0xFFFF, I40E_PFPCI_DEVID_PF_DEV_ID_SHIFT)
-#define I40E_PFPCI_DEVID_VF_DEV_ID_SHIFT 16
-#define I40E_PFPCI_DEVID_VF_DEV_ID_MASK I40E_MASK(0xFFFF, I40E_PFPCI_DEVID_VF_DEV_ID_SHIFT)
-#define I40E_PFPCI_FACTPS 0x0009C180 /* Reset: FLR */
-#define I40E_PFPCI_FACTPS_FUNC_POWER_STATE_SHIFT 0
-#define I40E_PFPCI_FACTPS_FUNC_POWER_STATE_MASK I40E_MASK(0x3, I40E_PFPCI_FACTPS_FUNC_POWER_STATE_SHIFT)
-#define I40E_PFPCI_FACTPS_FUNC_AUX_EN_SHIFT 3
-#define I40E_PFPCI_FACTPS_FUNC_AUX_EN_MASK I40E_MASK(0x1, I40E_PFPCI_FACTPS_FUNC_AUX_EN_SHIFT)
-#define I40E_PFPCI_FUNC 0x000BE200 /* Reset: POR */
-#define I40E_PFPCI_FUNC_FUNC_DIS_SHIFT 0
-#define I40E_PFPCI_FUNC_FUNC_DIS_MASK I40E_MASK(0x1, I40E_PFPCI_FUNC_FUNC_DIS_SHIFT)
-#define I40E_PFPCI_FUNC_ALLOW_FUNC_DIS_SHIFT 1
-#define I40E_PFPCI_FUNC_ALLOW_FUNC_DIS_MASK I40E_MASK(0x1, I40E_PFPCI_FUNC_ALLOW_FUNC_DIS_SHIFT)
-#define I40E_PFPCI_FUNC_DIS_FUNC_ON_PORT_DIS_SHIFT 2
-#define I40E_PFPCI_FUNC_DIS_FUNC_ON_PORT_DIS_MASK I40E_MASK(0x1, I40E_PFPCI_FUNC_DIS_FUNC_ON_PORT_DIS_SHIFT)
-#define I40E_PFPCI_FUNC2 0x000BE180 /* Reset: PCIR */
-#define I40E_PFPCI_FUNC2_EMP_FUNC_DIS_SHIFT 0
-#define I40E_PFPCI_FUNC2_EMP_FUNC_DIS_MASK I40E_MASK(0x1, I40E_PFPCI_FUNC2_EMP_FUNC_DIS_SHIFT)
-#define I40E_PFPCI_ICAUSE 0x0009C200 /* Reset: PFR */
-#define I40E_PFPCI_ICAUSE_PCIE_ERR_CAUSE_SHIFT 0
-#define I40E_PFPCI_ICAUSE_PCIE_ERR_CAUSE_MASK I40E_MASK(0xFFFFFFFF, I40E_PFPCI_ICAUSE_PCIE_ERR_CAUSE_SHIFT)
-#define I40E_PFPCI_IENA 0x0009C280 /* Reset: PFR */
-#define I40E_PFPCI_IENA_PCIE_ERR_EN_SHIFT 0
-#define I40E_PFPCI_IENA_PCIE_ERR_EN_MASK I40E_MASK(0xFFFFFFFF, I40E_PFPCI_IENA_PCIE_ERR_EN_SHIFT)
-#define I40E_PFPCI_PF_FLUSH_DONE 0x0009C800 /* Reset: PCIR */
-#define I40E_PFPCI_PF_FLUSH_DONE_FLUSH_DONE_SHIFT 0
-#define I40E_PFPCI_PF_FLUSH_DONE_FLUSH_DONE_MASK I40E_MASK(0x1, I40E_PFPCI_PF_FLUSH_DONE_FLUSH_DONE_SHIFT)
-#define I40E_PFPCI_PM 0x000BE300 /* Reset: POR */
-#define I40E_PFPCI_PM_PME_EN_SHIFT 0
-#define I40E_PFPCI_PM_PME_EN_MASK I40E_MASK(0x1, I40E_PFPCI_PM_PME_EN_SHIFT)
-#define I40E_PFPCI_STATUS1 0x000BE280 /* Reset: POR */
-#define I40E_PFPCI_STATUS1_FUNC_VALID_SHIFT 0
-#define I40E_PFPCI_STATUS1_FUNC_VALID_MASK I40E_MASK(0x1, I40E_PFPCI_STATUS1_FUNC_VALID_SHIFT)
-#define I40E_PFPCI_SUBSYSID 0x000BE100 /* Reset: PCIR */
-#define I40E_PFPCI_SUBSYSID_PF_SUBSYS_ID_SHIFT 0
-#define I40E_PFPCI_SUBSYSID_PF_SUBSYS_ID_MASK I40E_MASK(0xFFFF, I40E_PFPCI_SUBSYSID_PF_SUBSYS_ID_SHIFT)
-#define I40E_PFPCI_SUBSYSID_VF_SUBSYS_ID_SHIFT 16
-#define I40E_PFPCI_SUBSYSID_VF_SUBSYS_ID_MASK I40E_MASK(0xFFFF, I40E_PFPCI_SUBSYSID_VF_SUBSYS_ID_SHIFT)
-#define I40E_PFPCI_VF_FLUSH_DONE 0x0000E400 /* Reset: PCIR */
-#define I40E_PFPCI_VF_FLUSH_DONE_FLUSH_DONE_SHIFT 0
-#define I40E_PFPCI_VF_FLUSH_DONE_FLUSH_DONE_MASK I40E_MASK(0x1, I40E_PFPCI_VF_FLUSH_DONE_FLUSH_DONE_SHIFT)
-#define I40E_PFPCI_VF_FLUSH_DONE1(_VF) (0x0009C600 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: PCIR */
-#define I40E_PFPCI_VF_FLUSH_DONE1_MAX_INDEX 127
-#define I40E_PFPCI_VF_FLUSH_DONE1_FLUSH_DONE_SHIFT 0
-#define I40E_PFPCI_VF_FLUSH_DONE1_FLUSH_DONE_MASK I40E_MASK(0x1, I40E_PFPCI_VF_FLUSH_DONE1_FLUSH_DONE_SHIFT)
-#define I40E_PFPCI_VM_FLUSH_DONE 0x0009C880 /* Reset: PCIR */
-#define I40E_PFPCI_VM_FLUSH_DONE_FLUSH_DONE_SHIFT 0
-#define I40E_PFPCI_VM_FLUSH_DONE_FLUSH_DONE_MASK I40E_MASK(0x1, I40E_PFPCI_VM_FLUSH_DONE_FLUSH_DONE_SHIFT)
-#define I40E_PFPCI_VMINDEX 0x0009C300 /* Reset: PCIR */
-#define I40E_PFPCI_VMINDEX_VMINDEX_SHIFT 0
-#define I40E_PFPCI_VMINDEX_VMINDEX_MASK I40E_MASK(0x1FF, I40E_PFPCI_VMINDEX_VMINDEX_SHIFT)
-#define I40E_PFPCI_VMPEND 0x0009C380 /* Reset: PCIR */
-#define I40E_PFPCI_VMPEND_PENDING_SHIFT 0
-#define I40E_PFPCI_VMPEND_PENDING_MASK I40E_MASK(0x1, I40E_PFPCI_VMPEND_PENDING_SHIFT)
 #define I40E_PRTPM_EEE_STAT 0x001E4320 /* Reset: GLOBR */
-#define I40E_PRTPM_EEE_STAT_EEE_NEG_SHIFT 29
-#define I40E_PRTPM_EEE_STAT_EEE_NEG_MASK I40E_MASK(0x1, I40E_PRTPM_EEE_STAT_EEE_NEG_SHIFT)
 #define I40E_PRTPM_EEE_STAT_RX_LPI_STATUS_SHIFT 30
 #define I40E_PRTPM_EEE_STAT_RX_LPI_STATUS_MASK I40E_MASK(0x1, I40E_PRTPM_EEE_STAT_RX_LPI_STATUS_SHIFT)
 #define I40E_PRTPM_EEE_STAT_TX_LPI_STATUS_SHIFT 31
 #define I40E_PRTPM_EEE_STAT_TX_LPI_STATUS_MASK I40E_MASK(0x1, I40E_PRTPM_EEE_STAT_TX_LPI_STATUS_SHIFT)
-#define I40E_PRTPM_EEEC 0x001E4380 /* Reset: GLOBR */
-#define I40E_PRTPM_EEEC_TW_WAKE_MIN_SHIFT 16
-#define I40E_PRTPM_EEEC_TW_WAKE_MIN_MASK I40E_MASK(0x3F, I40E_PRTPM_EEEC_TW_WAKE_MIN_SHIFT)
-#define I40E_PRTPM_EEEC_TX_LU_LPI_DLY_SHIFT 24
-#define I40E_PRTPM_EEEC_TX_LU_LPI_DLY_MASK I40E_MASK(0x3, I40E_PRTPM_EEEC_TX_LU_LPI_DLY_SHIFT)
-#define I40E_PRTPM_EEEC_TEEE_DLY_SHIFT 26
-#define I40E_PRTPM_EEEC_TEEE_DLY_MASK I40E_MASK(0x3F, I40E_PRTPM_EEEC_TEEE_DLY_SHIFT)
-#define I40E_PRTPM_EEEFWD 0x001E4400 /* Reset: GLOBR */
-#define I40E_PRTPM_EEEFWD_EEE_FW_CONFIG_DONE_SHIFT 31
-#define I40E_PRTPM_EEEFWD_EEE_FW_CONFIG_DONE_MASK I40E_MASK(0x1, I40E_PRTPM_EEEFWD_EEE_FW_CONFIG_DONE_SHIFT)
-#define I40E_PRTPM_EEER 0x001E4360 /* Reset: GLOBR */
-#define I40E_PRTPM_EEER_TW_SYSTEM_SHIFT 0
-#define I40E_PRTPM_EEER_TW_SYSTEM_MASK I40E_MASK(0xFFFF, I40E_PRTPM_EEER_TW_SYSTEM_SHIFT)
-#define I40E_PRTPM_EEER_TX_LPI_EN_SHIFT 16
-#define I40E_PRTPM_EEER_TX_LPI_EN_MASK I40E_MASK(0x1, I40E_PRTPM_EEER_TX_LPI_EN_SHIFT)
-#define I40E_PRTPM_EEETXC 0x001E43E0 /* Reset: GLOBR */
-#define I40E_PRTPM_EEETXC_TW_PHY_SHIFT 0
-#define I40E_PRTPM_EEETXC_TW_PHY_MASK I40E_MASK(0xFFFF, I40E_PRTPM_EEETXC_TW_PHY_SHIFT)
-#define I40E_PRTPM_GC 0x000B8140 /* Reset: POR */
-#define I40E_PRTPM_GC_EMP_LINK_ON_SHIFT 0
-#define I40E_PRTPM_GC_EMP_LINK_ON_MASK I40E_MASK(0x1, I40E_PRTPM_GC_EMP_LINK_ON_SHIFT)
-#define I40E_PRTPM_GC_MNG_VETO_SHIFT 1
-#define I40E_PRTPM_GC_MNG_VETO_MASK I40E_MASK(0x1, I40E_PRTPM_GC_MNG_VETO_SHIFT)
-#define I40E_PRTPM_GC_RATD_SHIFT 2
-#define I40E_PRTPM_GC_RATD_MASK I40E_MASK(0x1, I40E_PRTPM_GC_RATD_SHIFT)
-#define I40E_PRTPM_GC_LCDMP_SHIFT 3
-#define I40E_PRTPM_GC_LCDMP_MASK I40E_MASK(0x1, I40E_PRTPM_GC_LCDMP_SHIFT)
-#define I40E_PRTPM_GC_LPLU_ASSERTED_SHIFT 31
-#define I40E_PRTPM_GC_LPLU_ASSERTED_MASK I40E_MASK(0x1, I40E_PRTPM_GC_LPLU_ASSERTED_SHIFT)
 #define I40E_PRTPM_RLPIC 0x001E43A0 /* Reset: GLOBR */
-#define I40E_PRTPM_RLPIC_ERLPIC_SHIFT 0
-#define I40E_PRTPM_RLPIC_ERLPIC_MASK I40E_MASK(0xFFFFFFFF, I40E_PRTPM_RLPIC_ERLPIC_SHIFT)
 #define I40E_PRTPM_TLPIC 0x001E43C0 /* Reset: GLOBR */
-#define I40E_PRTPM_TLPIC_ETLPIC_SHIFT 0
-#define I40E_PRTPM_TLPIC_ETLPIC_MASK I40E_MASK(0xFFFFFFFF, I40E_PRTPM_TLPIC_ETLPIC_SHIFT)
-#define I40E_GL_PRS_FVBM(_i) (0x00269760 + ((_i) * 4)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GL_PRS_FVBM_MAX_INDEX 3
-#define I40E_GL_PRS_FVBM_FV_BYTE_INDX_SHIFT 0
-#define I40E_GL_PRS_FVBM_FV_BYTE_INDX_MASK I40E_MASK(0x7F, I40E_GL_PRS_FVBM_FV_BYTE_INDX_SHIFT)
-#define I40E_GL_PRS_FVBM_RULE_BUS_INDX_SHIFT 8
-#define I40E_GL_PRS_FVBM_RULE_BUS_INDX_MASK I40E_MASK(0x3F, I40E_GL_PRS_FVBM_RULE_BUS_INDX_SHIFT)
-#define I40E_GL_PRS_FVBM_MSK_ENA_SHIFT 31
-#define I40E_GL_PRS_FVBM_MSK_ENA_MASK I40E_MASK(0x1, I40E_GL_PRS_FVBM_MSK_ENA_SHIFT)
-#define I40E_GLRPB_DPSS 0x000AC828 /* Reset: CORER */
-#define I40E_GLRPB_DPSS_DPS_TCN_SHIFT 0
-#define I40E_GLRPB_DPSS_DPS_TCN_MASK I40E_MASK(0xFFFFF, I40E_GLRPB_DPSS_DPS_TCN_SHIFT)
-#define I40E_GLRPB_GHW 0x000AC830 /* Reset: CORER */
-#define I40E_GLRPB_GHW_GHW_SHIFT 0
-#define I40E_GLRPB_GHW_GHW_MASK I40E_MASK(0xFFFFF, I40E_GLRPB_GHW_GHW_SHIFT)
-#define I40E_GLRPB_GLW 0x000AC834 /* Reset: CORER */
-#define I40E_GLRPB_GLW_GLW_SHIFT 0
-#define I40E_GLRPB_GLW_GLW_MASK I40E_MASK(0xFFFFF, I40E_GLRPB_GLW_GLW_SHIFT)
-#define I40E_GLRPB_PHW 0x000AC844 /* Reset: CORER */
-#define I40E_GLRPB_PHW_PHW_SHIFT 0
-#define I40E_GLRPB_PHW_PHW_MASK I40E_MASK(0xFFFFF, I40E_GLRPB_PHW_PHW_SHIFT)
-#define I40E_GLRPB_PLW 0x000AC848 /* Reset: CORER */
-#define I40E_GLRPB_PLW_PLW_SHIFT 0
-#define I40E_GLRPB_PLW_PLW_MASK I40E_MASK(0xFFFFF, I40E_GLRPB_PLW_PLW_SHIFT)
-#define I40E_PRTRPB_DHW(_i) (0x000AC100 + ((_i) * 32)) /* _i=0...7 */ /* Reset: CORER */
-#define I40E_PRTRPB_DHW_MAX_INDEX 7
-#define I40E_PRTRPB_DHW_DHW_TCN_SHIFT 0
-#define I40E_PRTRPB_DHW_DHW_TCN_MASK I40E_MASK(0xFFFFF, I40E_PRTRPB_DHW_DHW_TCN_SHIFT)
-#define I40E_PRTRPB_DLW(_i) (0x000AC220 + ((_i) * 32)) /* _i=0...7 */ /* Reset: CORER */
-#define I40E_PRTRPB_DLW_MAX_INDEX 7
-#define I40E_PRTRPB_DLW_DLW_TCN_SHIFT 0
-#define I40E_PRTRPB_DLW_DLW_TCN_MASK I40E_MASK(0xFFFFF, I40E_PRTRPB_DLW_DLW_TCN_SHIFT)
-#define I40E_PRTRPB_DPS(_i) (0x000AC320 + ((_i) * 32)) /* _i=0...7 */ /* Reset: CORER */
-#define I40E_PRTRPB_DPS_MAX_INDEX 7
-#define I40E_PRTRPB_DPS_DPS_TCN_SHIFT 0
-#define I40E_PRTRPB_DPS_DPS_TCN_MASK I40E_MASK(0xFFFFF, I40E_PRTRPB_DPS_DPS_TCN_SHIFT)
-#define I40E_PRTRPB_SHT(_i) (0x000AC480 + ((_i) * 32)) /* _i=0...7 */ /* Reset: CORER */
-#define I40E_PRTRPB_SHT_MAX_INDEX 7
-#define I40E_PRTRPB_SHT_SHT_TCN_SHIFT 0
-#define I40E_PRTRPB_SHT_SHT_TCN_MASK I40E_MASK(0xFFFFF, I40E_PRTRPB_SHT_SHT_TCN_SHIFT)
-#define I40E_PRTRPB_SHW 0x000AC580 /* Reset: CORER */
-#define I40E_PRTRPB_SHW_SHW_SHIFT 0
-#define I40E_PRTRPB_SHW_SHW_MASK I40E_MASK(0xFFFFF, I40E_PRTRPB_SHW_SHW_SHIFT)
-#define I40E_PRTRPB_SLT(_i) (0x000AC5A0 + ((_i) * 32)) /* _i=0...7 */ /* Reset: CORER */
-#define I40E_PRTRPB_SLT_MAX_INDEX 7
-#define I40E_PRTRPB_SLT_SLT_TCN_SHIFT 0
-#define I40E_PRTRPB_SLT_SLT_TCN_MASK I40E_MASK(0xFFFFF, I40E_PRTRPB_SLT_SLT_TCN_SHIFT)
-#define I40E_PRTRPB_SLW 0x000AC6A0 /* Reset: CORER */
-#define I40E_PRTRPB_SLW_SLW_SHIFT 0
-#define I40E_PRTRPB_SLW_SLW_MASK I40E_MASK(0xFFFFF, I40E_PRTRPB_SLW_SLW_SHIFT)
-#define I40E_PRTRPB_SPS 0x000AC7C0 /* Reset: CORER */
-#define I40E_PRTRPB_SPS_SPS_SHIFT 0
-#define I40E_PRTRPB_SPS_SPS_MASK I40E_MASK(0xFFFFF, I40E_PRTRPB_SPS_SPS_SHIFT)
-#define I40E_GLQF_CTL 0x00269BA4 /* Reset: CORER */
-#define I40E_GLQF_CTL_HTOEP_SHIFT 1
-#define I40E_GLQF_CTL_HTOEP_MASK I40E_MASK(0x1, I40E_GLQF_CTL_HTOEP_SHIFT)
-#define I40E_GLQF_CTL_HTOEP_FCOE_SHIFT 2
-#define I40E_GLQF_CTL_HTOEP_FCOE_MASK I40E_MASK(0x1, I40E_GLQF_CTL_HTOEP_FCOE_SHIFT)
-#define I40E_GLQF_CTL_PCNT_ALLOC_SHIFT 3
-#define I40E_GLQF_CTL_PCNT_ALLOC_MASK I40E_MASK(0x7, I40E_GLQF_CTL_PCNT_ALLOC_SHIFT)
-#define I40E_GLQF_CTL_FD_AUTO_PCTYPE_SHIFT 6
-#define I40E_GLQF_CTL_FD_AUTO_PCTYPE_MASK I40E_MASK(0x1, I40E_GLQF_CTL_FD_AUTO_PCTYPE_SHIFT)
-#define I40E_GLQF_CTL_RSVD_SHIFT 7
-#define I40E_GLQF_CTL_RSVD_MASK I40E_MASK(0x1, I40E_GLQF_CTL_RSVD_SHIFT)
-#define I40E_GLQF_CTL_MAXPEBLEN_SHIFT 8
-#define I40E_GLQF_CTL_MAXPEBLEN_MASK I40E_MASK(0x7, I40E_GLQF_CTL_MAXPEBLEN_SHIFT)
-#define I40E_GLQF_CTL_MAXFCBLEN_SHIFT 11
-#define I40E_GLQF_CTL_MAXFCBLEN_MASK I40E_MASK(0x7, I40E_GLQF_CTL_MAXFCBLEN_SHIFT)
-#define I40E_GLQF_CTL_MAXFDBLEN_SHIFT 14
-#define I40E_GLQF_CTL_MAXFDBLEN_MASK I40E_MASK(0x7, I40E_GLQF_CTL_MAXFDBLEN_SHIFT)
-#define I40E_GLQF_CTL_FDBEST_SHIFT 17
-#define I40E_GLQF_CTL_FDBEST_MASK I40E_MASK(0xFF, I40E_GLQF_CTL_FDBEST_SHIFT)
-#define I40E_GLQF_CTL_PROGPRIO_SHIFT 25
-#define I40E_GLQF_CTL_PROGPRIO_MASK I40E_MASK(0x1, I40E_GLQF_CTL_PROGPRIO_SHIFT)
-#define I40E_GLQF_CTL_INVALPRIO_SHIFT 26
-#define I40E_GLQF_CTL_INVALPRIO_MASK I40E_MASK(0x1, I40E_GLQF_CTL_INVALPRIO_SHIFT)
-#define I40E_GLQF_CTL_IGNORE_IP_SHIFT 27
-#define I40E_GLQF_CTL_IGNORE_IP_MASK I40E_MASK(0x1, I40E_GLQF_CTL_IGNORE_IP_SHIFT)
 #define I40E_GLQF_FDCNT_0 0x00269BAC /* Reset: CORER */
 #define I40E_GLQF_FDCNT_0_GUARANT_CNT_SHIFT 0
 #define I40E_GLQF_FDCNT_0_GUARANT_CNT_MASK I40E_MASK(0x1FFF, I40E_GLQF_FDCNT_0_GUARANT_CNT_SHIFT)
@@ -2112,36 +397,7 @@
 #define I40E_GLQF_FDCNT_0_BESTCNT_MASK I40E_MASK(0x1FFF, I40E_GLQF_FDCNT_0_BESTCNT_SHIFT)
 #define I40E_GLQF_HKEY(_i) (0x00270140 + ((_i) * 4)) /* _i=0...12 */ /* Reset: CORER */
 #define I40E_GLQF_HKEY_MAX_INDEX 12
-#define I40E_GLQF_HKEY_KEY_0_SHIFT 0
-#define I40E_GLQF_HKEY_KEY_0_MASK I40E_MASK(0xFF, I40E_GLQF_HKEY_KEY_0_SHIFT)
-#define I40E_GLQF_HKEY_KEY_1_SHIFT 8
-#define I40E_GLQF_HKEY_KEY_1_MASK I40E_MASK(0xFF, I40E_GLQF_HKEY_KEY_1_SHIFT)
-#define I40E_GLQF_HKEY_KEY_2_SHIFT 16
-#define I40E_GLQF_HKEY_KEY_2_MASK I40E_MASK(0xFF, I40E_GLQF_HKEY_KEY_2_SHIFT)
-#define I40E_GLQF_HKEY_KEY_3_SHIFT 24
-#define I40E_GLQF_HKEY_KEY_3_MASK I40E_MASK(0xFF, I40E_GLQF_HKEY_KEY_3_SHIFT)
-#define I40E_GLQF_HSYM(_i) (0x00269D00 + ((_i) * 4)) /* _i=0...63 */ /* Reset: CORER */
-#define I40E_GLQF_HSYM_MAX_INDEX 63
-#define I40E_GLQF_HSYM_SYMH_ENA_SHIFT 0
-#define I40E_GLQF_HSYM_SYMH_ENA_MASK I40E_MASK(0x1, I40E_GLQF_HSYM_SYMH_ENA_SHIFT)
 #define I40E_GLQF_PCNT(_i) (0x00266800 + ((_i) * 4)) /* _i=0...511 */ /* Reset: CORER */
-#define I40E_GLQF_PCNT_MAX_INDEX 511
-#define I40E_GLQF_PCNT_PCNT_SHIFT 0
-#define I40E_GLQF_PCNT_PCNT_MASK I40E_MASK(0xFFFFFFFF, I40E_GLQF_PCNT_PCNT_SHIFT)
-#define I40E_GLQF_SWAP(_i, _j) (0x00267E00 + ((_i) * 4 + (_j) * 8)) /* _i=0...1, _j=0...63 */ /* Reset: CORER */
-#define I40E_GLQF_SWAP_MAX_INDEX 1
-#define I40E_GLQF_SWAP_OFF0_SRC0_SHIFT 0
-#define I40E_GLQF_SWAP_OFF0_SRC0_MASK I40E_MASK(0x3F, I40E_GLQF_SWAP_OFF0_SRC0_SHIFT)
-#define I40E_GLQF_SWAP_OFF0_SRC1_SHIFT 6
-#define I40E_GLQF_SWAP_OFF0_SRC1_MASK I40E_MASK(0x3F, I40E_GLQF_SWAP_OFF0_SRC1_SHIFT)
-#define I40E_GLQF_SWAP_FLEN0_SHIFT 12
-#define I40E_GLQF_SWAP_FLEN0_MASK I40E_MASK(0xF, I40E_GLQF_SWAP_FLEN0_SHIFT)
-#define I40E_GLQF_SWAP_OFF1_SRC0_SHIFT 16
-#define I40E_GLQF_SWAP_OFF1_SRC0_MASK I40E_MASK(0x3F, I40E_GLQF_SWAP_OFF1_SRC0_SHIFT)
-#define I40E_GLQF_SWAP_OFF1_SRC1_SHIFT 22
-#define I40E_GLQF_SWAP_OFF1_SRC1_MASK I40E_MASK(0x3F, I40E_GLQF_SWAP_OFF1_SRC1_SHIFT)
-#define I40E_GLQF_SWAP_FLEN1_SHIFT 28
-#define I40E_GLQF_SWAP_FLEN1_MASK I40E_MASK(0xF, I40E_GLQF_SWAP_FLEN1_SHIFT)
 #define I40E_PFQF_CTL_0 0x001C0AC0 /* Reset: CORER */
 #define I40E_PFQF_CTL_0_PEHSIZE_SHIFT 0
 #define I40E_PFQF_CTL_0_PEHSIZE_MASK I40E_MASK(0x1F, I40E_PFQF_CTL_0_PEHSIZE_SHIFT)
@@ -2159,54 +415,19 @@
 #define I40E_PFQF_CTL_0_ETYPE_ENA_MASK I40E_MASK(0x1, I40E_PFQF_CTL_0_ETYPE_ENA_SHIFT)
 #define I40E_PFQF_CTL_0_MACVLAN_ENA_SHIFT 19
 #define I40E_PFQF_CTL_0_MACVLAN_ENA_MASK I40E_MASK(0x1, I40E_PFQF_CTL_0_MACVLAN_ENA_SHIFT)
-#define I40E_PFQF_CTL_0_VFFCHSIZE_SHIFT 20
-#define I40E_PFQF_CTL_0_VFFCHSIZE_MASK I40E_MASK(0xF, I40E_PFQF_CTL_0_VFFCHSIZE_SHIFT)
-#define I40E_PFQF_CTL_0_VFFCDSIZE_SHIFT 24
-#define I40E_PFQF_CTL_0_VFFCDSIZE_MASK I40E_MASK(0x3, I40E_PFQF_CTL_0_VFFCDSIZE_SHIFT)
 #define I40E_PFQF_CTL_1 0x00245D80 /* Reset: CORER */
 #define I40E_PFQF_CTL_1_CLEARFDTABLE_SHIFT 0
 #define I40E_PFQF_CTL_1_CLEARFDTABLE_MASK I40E_MASK(0x1, I40E_PFQF_CTL_1_CLEARFDTABLE_SHIFT)
-#define I40E_PFQF_FDALLOC 0x00246280 /* Reset: CORER */
-#define I40E_PFQF_FDALLOC_FDALLOC_SHIFT 0
-#define I40E_PFQF_FDALLOC_FDALLOC_MASK I40E_MASK(0xFF, I40E_PFQF_FDALLOC_FDALLOC_SHIFT)
-#define I40E_PFQF_FDALLOC_FDBEST_SHIFT 8
-#define I40E_PFQF_FDALLOC_FDBEST_MASK I40E_MASK(0xFF, I40E_PFQF_FDALLOC_FDBEST_SHIFT)
 #define I40E_PFQF_FDSTAT 0x00246380 /* Reset: CORER */
 #define I40E_PFQF_FDSTAT_GUARANT_CNT_SHIFT 0
 #define I40E_PFQF_FDSTAT_GUARANT_CNT_MASK I40E_MASK(0x1FFF, I40E_PFQF_FDSTAT_GUARANT_CNT_SHIFT)
 #define I40E_PFQF_FDSTAT_BEST_CNT_SHIFT 16
 #define I40E_PFQF_FDSTAT_BEST_CNT_MASK I40E_MASK(0x1FFF, I40E_PFQF_FDSTAT_BEST_CNT_SHIFT)
 #define I40E_PFQF_HENA(_i) (0x00245900 + ((_i) * 128)) /* _i=0...1 */ /* Reset: CORER */
-#define I40E_PFQF_HENA_MAX_INDEX 1
-#define I40E_PFQF_HENA_PTYPE_ENA_SHIFT 0
-#define I40E_PFQF_HENA_PTYPE_ENA_MASK I40E_MASK(0xFFFFFFFF, I40E_PFQF_HENA_PTYPE_ENA_SHIFT)
 #define I40E_PFQF_HKEY(_i) (0x00244800 + ((_i) * 128)) /* _i=0...12 */ /* Reset: CORER */
 #define I40E_PFQF_HKEY_MAX_INDEX 12
-#define I40E_PFQF_HKEY_KEY_0_SHIFT 0
-#define I40E_PFQF_HKEY_KEY_0_MASK I40E_MASK(0xFF, I40E_PFQF_HKEY_KEY_0_SHIFT)
-#define I40E_PFQF_HKEY_KEY_1_SHIFT 8
-#define I40E_PFQF_HKEY_KEY_1_MASK I40E_MASK(0xFF, I40E_PFQF_HKEY_KEY_1_SHIFT)
-#define I40E_PFQF_HKEY_KEY_2_SHIFT 16
-#define I40E_PFQF_HKEY_KEY_2_MASK I40E_MASK(0xFF, I40E_PFQF_HKEY_KEY_2_SHIFT)
-#define I40E_PFQF_HKEY_KEY_3_SHIFT 24
-#define I40E_PFQF_HKEY_KEY_3_MASK I40E_MASK(0xFF, I40E_PFQF_HKEY_KEY_3_SHIFT)
 #define I40E_PFQF_HLUT(_i) (0x00240000 + ((_i) * 128)) /* _i=0...127 */ /* Reset: CORER */
 #define I40E_PFQF_HLUT_MAX_INDEX 127
-#define I40E_PFQF_HLUT_LUT0_SHIFT 0
-#define I40E_PFQF_HLUT_LUT0_MASK I40E_MASK(0x3F, I40E_PFQF_HLUT_LUT0_SHIFT)
-#define I40E_PFQF_HLUT_LUT1_SHIFT 8
-#define I40E_PFQF_HLUT_LUT1_MASK I40E_MASK(0x3F, I40E_PFQF_HLUT_LUT1_SHIFT)
-#define I40E_PFQF_HLUT_LUT2_SHIFT 16
-#define I40E_PFQF_HLUT_LUT2_MASK I40E_MASK(0x3F, I40E_PFQF_HLUT_LUT2_SHIFT)
-#define I40E_PFQF_HLUT_LUT3_SHIFT 24
-#define I40E_PFQF_HLUT_LUT3_MASK I40E_MASK(0x3F, I40E_PFQF_HLUT_LUT3_SHIFT)
-#define I40E_PRTQF_CTL_0 0x00256E60 /* Reset: CORER */
-#define I40E_PRTQF_CTL_0_HSYM_ENA_SHIFT 0
-#define I40E_PRTQF_CTL_0_HSYM_ENA_MASK I40E_MASK(0x1, I40E_PRTQF_CTL_0_HSYM_ENA_SHIFT)
-#define I40E_PRTQF_FD_FLXINSET(_i) (0x00253800 + ((_i) * 32)) /* _i=0...63 */ /* Reset: CORER */
-#define I40E_PRTQF_FD_FLXINSET_MAX_INDEX 63
-#define I40E_PRTQF_FD_FLXINSET_INSET_SHIFT 0
-#define I40E_PRTQF_FD_FLXINSET_INSET_MASK I40E_MASK(0xFF, I40E_PRTQF_FD_FLXINSET_INSET_SHIFT)
 #define I40E_PRTQF_FD_INSET(_i, _j) (0x00250000 + ((_i) * 64 + (_j) * 32)) /* _i=0...63, _j=0...1 */ /* Reset: CORER */
 #define I40E_PRTQF_FD_INSET_MAX_INDEX 63
 #define I40E_PRTQF_FD_INSET_INSET_SHIFT 0
@@ -2215,14 +436,7 @@
 #define I40E_PRTQF_FD_INSET_MAX_INDEX 63
 #define I40E_PRTQF_FD_INSET_INSET_SHIFT 0
 #define I40E_PRTQF_FD_INSET_INSET_MASK I40E_MASK(0xFFFFFFFF, I40E_PRTQF_FD_INSET_INSET_SHIFT)
-#define I40E_PRTQF_FD_MSK(_i, _j) (0x00252000 + ((_i) * 64 + (_j) * 32)) /* _i=0...63, _j=0...1 */ /* Reset: CORER */
-#define I40E_PRTQF_FD_MSK_MAX_INDEX 63
-#define I40E_PRTQF_FD_MSK_MASK_SHIFT 0
-#define I40E_PRTQF_FD_MSK_MASK_MASK I40E_MASK(0xFFFF, I40E_PRTQF_FD_MSK_MASK_SHIFT)
-#define I40E_PRTQF_FD_MSK_OFFSET_SHIFT 16
-#define I40E_PRTQF_FD_MSK_OFFSET_MASK I40E_MASK(0x3F, I40E_PRTQF_FD_MSK_OFFSET_SHIFT)
 #define I40E_PRTQF_FLX_PIT(_i) (0x00255200 + ((_i) * 32)) /* _i=0...8 */ /* Reset: CORER */
-#define I40E_PRTQF_FLX_PIT_MAX_INDEX 8
 #define I40E_PRTQF_FLX_PIT_SOURCE_OFF_SHIFT 0
 #define I40E_PRTQF_FLX_PIT_SOURCE_OFF_MASK I40E_MASK(0x1F, I40E_PRTQF_FLX_PIT_SOURCE_OFF_SHIFT)
 #define I40E_PRTQF_FLX_PIT_FSIZE_SHIFT 5
@@ -2230,775 +444,148 @@
 #define I40E_PRTQF_FLX_PIT_DEST_OFF_SHIFT 10
 #define I40E_PRTQF_FLX_PIT_DEST_OFF_MASK I40E_MASK(0x3F, I40E_PRTQF_FLX_PIT_DEST_OFF_SHIFT)
 #define I40E_VFQF_HENA1(_i, _VF) (0x00230800 + ((_i) * 1024 + (_VF) * 4)) /* _i=0...1, _VF=0...127 */ /* Reset: CORER */
-#define I40E_VFQF_HENA1_MAX_INDEX 1
-#define I40E_VFQF_HENA1_PTYPE_ENA_SHIFT 0
-#define I40E_VFQF_HENA1_PTYPE_ENA_MASK I40E_MASK(0xFFFFFFFF, I40E_VFQF_HENA1_PTYPE_ENA_SHIFT)
 #define I40E_VFQF_HKEY1(_i, _VF) (0x00228000 + ((_i) * 1024 + (_VF) * 4)) /* _i=0...12, _VF=0...127 */ /* Reset: CORER */
 #define I40E_VFQF_HKEY1_MAX_INDEX 12
-#define I40E_VFQF_HKEY1_KEY_0_SHIFT 0
-#define I40E_VFQF_HKEY1_KEY_0_MASK I40E_MASK(0xFF, I40E_VFQF_HKEY1_KEY_0_SHIFT)
-#define I40E_VFQF_HKEY1_KEY_1_SHIFT 8
-#define I40E_VFQF_HKEY1_KEY_1_MASK I40E_MASK(0xFF, I40E_VFQF_HKEY1_KEY_1_SHIFT)
-#define I40E_VFQF_HKEY1_KEY_2_SHIFT 16
-#define I40E_VFQF_HKEY1_KEY_2_MASK I40E_MASK(0xFF, I40E_VFQF_HKEY1_KEY_2_SHIFT)
-#define I40E_VFQF_HKEY1_KEY_3_SHIFT 24
-#define I40E_VFQF_HKEY1_KEY_3_MASK I40E_MASK(0xFF, I40E_VFQF_HKEY1_KEY_3_SHIFT)
 #define I40E_VFQF_HLUT1(_i, _VF) (0x00220000 + ((_i) * 1024 + (_VF) * 4)) /* _i=0...15, _VF=0...127 */ /* Reset: CORER */
 #define I40E_VFQF_HLUT1_MAX_INDEX 15
-#define I40E_VFQF_HLUT1_LUT0_SHIFT 0
-#define I40E_VFQF_HLUT1_LUT0_MASK I40E_MASK(0xF, I40E_VFQF_HLUT1_LUT0_SHIFT)
-#define I40E_VFQF_HLUT1_LUT1_SHIFT 8
-#define I40E_VFQF_HLUT1_LUT1_MASK I40E_MASK(0xF, I40E_VFQF_HLUT1_LUT1_SHIFT)
-#define I40E_VFQF_HLUT1_LUT2_SHIFT 16
-#define I40E_VFQF_HLUT1_LUT2_MASK I40E_MASK(0xF, I40E_VFQF_HLUT1_LUT2_SHIFT)
-#define I40E_VFQF_HLUT1_LUT3_SHIFT 24
-#define I40E_VFQF_HLUT1_LUT3_MASK I40E_MASK(0xF, I40E_VFQF_HLUT1_LUT3_SHIFT)
-#define I40E_VFQF_HREGION1(_i, _VF) (0x0022E000 + ((_i) * 1024 + (_VF) * 4)) /* _i=0...7, _VF=0...127 */ /* Reset: CORER */
-#define I40E_VFQF_HREGION1_MAX_INDEX 7
-#define I40E_VFQF_HREGION1_OVERRIDE_ENA_0_SHIFT 0
-#define I40E_VFQF_HREGION1_OVERRIDE_ENA_0_MASK I40E_MASK(0x1, I40E_VFQF_HREGION1_OVERRIDE_ENA_0_SHIFT)
-#define I40E_VFQF_HREGION1_REGION_0_SHIFT 1
-#define I40E_VFQF_HREGION1_REGION_0_MASK I40E_MASK(0x7, I40E_VFQF_HREGION1_REGION_0_SHIFT)
-#define I40E_VFQF_HREGION1_OVERRIDE_ENA_1_SHIFT 4
-#define I40E_VFQF_HREGION1_OVERRIDE_ENA_1_MASK I40E_MASK(0x1, I40E_VFQF_HREGION1_OVERRIDE_ENA_1_SHIFT)
-#define I40E_VFQF_HREGION1_REGION_1_SHIFT 5
-#define I40E_VFQF_HREGION1_REGION_1_MASK I40E_MASK(0x7, I40E_VFQF_HREGION1_REGION_1_SHIFT)
-#define I40E_VFQF_HREGION1_OVERRIDE_ENA_2_SHIFT 8
-#define I40E_VFQF_HREGION1_OVERRIDE_ENA_2_MASK I40E_MASK(0x1, I40E_VFQF_HREGION1_OVERRIDE_ENA_2_SHIFT)
-#define I40E_VFQF_HREGION1_REGION_2_SHIFT 9
-#define I40E_VFQF_HREGION1_REGION_2_MASK I40E_MASK(0x7, I40E_VFQF_HREGION1_REGION_2_SHIFT)
-#define I40E_VFQF_HREGION1_OVERRIDE_ENA_3_SHIFT 12
-#define I40E_VFQF_HREGION1_OVERRIDE_ENA_3_MASK I40E_MASK(0x1, I40E_VFQF_HREGION1_OVERRIDE_ENA_3_SHIFT)
-#define I40E_VFQF_HREGION1_REGION_3_SHIFT 13
-#define I40E_VFQF_HREGION1_REGION_3_MASK I40E_MASK(0x7, I40E_VFQF_HREGION1_REGION_3_SHIFT)
-#define I40E_VFQF_HREGION1_OVERRIDE_ENA_4_SHIFT 16
-#define I40E_VFQF_HREGION1_OVERRIDE_ENA_4_MASK I40E_MASK(0x1, I40E_VFQF_HREGION1_OVERRIDE_ENA_4_SHIFT)
-#define I40E_VFQF_HREGION1_REGION_4_SHIFT 17
-#define I40E_VFQF_HREGION1_REGION_4_MASK I40E_MASK(0x7, I40E_VFQF_HREGION1_REGION_4_SHIFT)
-#define I40E_VFQF_HREGION1_OVERRIDE_ENA_5_SHIFT 20
-#define I40E_VFQF_HREGION1_OVERRIDE_ENA_5_MASK I40E_MASK(0x1, I40E_VFQF_HREGION1_OVERRIDE_ENA_5_SHIFT)
-#define I40E_VFQF_HREGION1_REGION_5_SHIFT 21
-#define I40E_VFQF_HREGION1_REGION_5_MASK I40E_MASK(0x7, I40E_VFQF_HREGION1_REGION_5_SHIFT)
-#define I40E_VFQF_HREGION1_OVERRIDE_ENA_6_SHIFT 24
-#define I40E_VFQF_HREGION1_OVERRIDE_ENA_6_MASK I40E_MASK(0x1, I40E_VFQF_HREGION1_OVERRIDE_ENA_6_SHIFT)
-#define I40E_VFQF_HREGION1_REGION_6_SHIFT 25
-#define I40E_VFQF_HREGION1_REGION_6_MASK I40E_MASK(0x7, I40E_VFQF_HREGION1_REGION_6_SHIFT)
-#define I40E_VFQF_HREGION1_OVERRIDE_ENA_7_SHIFT 28
-#define I40E_VFQF_HREGION1_OVERRIDE_ENA_7_MASK I40E_MASK(0x1, I40E_VFQF_HREGION1_OVERRIDE_ENA_7_SHIFT)
-#define I40E_VFQF_HREGION1_REGION_7_SHIFT 29
-#define I40E_VFQF_HREGION1_REGION_7_MASK I40E_MASK(0x7, I40E_VFQF_HREGION1_REGION_7_SHIFT)
-#define I40E_VPQF_CTL(_VF) (0x001C0000 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: VFR */
-#define I40E_VPQF_CTL_MAX_INDEX 127
-#define I40E_VPQF_CTL_PEHSIZE_SHIFT 0
-#define I40E_VPQF_CTL_PEHSIZE_MASK I40E_MASK(0x1F, I40E_VPQF_CTL_PEHSIZE_SHIFT)
-#define I40E_VPQF_CTL_PEDSIZE_SHIFT 5
-#define I40E_VPQF_CTL_PEDSIZE_MASK I40E_MASK(0x1F, I40E_VPQF_CTL_PEDSIZE_SHIFT)
-#define I40E_VPQF_CTL_FCHSIZE_SHIFT 10
-#define I40E_VPQF_CTL_FCHSIZE_MASK I40E_MASK(0xF, I40E_VPQF_CTL_FCHSIZE_SHIFT)
-#define I40E_VPQF_CTL_FCDSIZE_SHIFT 14
-#define I40E_VPQF_CTL_FCDSIZE_MASK I40E_MASK(0x3, I40E_VPQF_CTL_FCDSIZE_SHIFT)
-#define I40E_VSIQF_CTL(_VSI) (0x0020D800 + ((_VSI) * 4)) /* _i=0...383 */ /* Reset: PFR */
-#define I40E_VSIQF_CTL_MAX_INDEX 383
-#define I40E_VSIQF_CTL_FCOE_ENA_SHIFT 0
-#define I40E_VSIQF_CTL_FCOE_ENA_MASK I40E_MASK(0x1, I40E_VSIQF_CTL_FCOE_ENA_SHIFT)
-#define I40E_VSIQF_CTL_PETCP_ENA_SHIFT 1
-#define I40E_VSIQF_CTL_PETCP_ENA_MASK I40E_MASK(0x1, I40E_VSIQF_CTL_PETCP_ENA_SHIFT)
-#define I40E_VSIQF_CTL_PEUUDP_ENA_SHIFT 2
-#define I40E_VSIQF_CTL_PEUUDP_ENA_MASK I40E_MASK(0x1, I40E_VSIQF_CTL_PEUUDP_ENA_SHIFT)
-#define I40E_VSIQF_CTL_PEMUDP_ENA_SHIFT 3
-#define I40E_VSIQF_CTL_PEMUDP_ENA_MASK I40E_MASK(0x1, I40E_VSIQF_CTL_PEMUDP_ENA_SHIFT)
-#define I40E_VSIQF_CTL_PEUFRAG_ENA_SHIFT 4
-#define I40E_VSIQF_CTL_PEUFRAG_ENA_MASK I40E_MASK(0x1, I40E_VSIQF_CTL_PEUFRAG_ENA_SHIFT)
-#define I40E_VSIQF_CTL_PEMFRAG_ENA_SHIFT 5
-#define I40E_VSIQF_CTL_PEMFRAG_ENA_MASK I40E_MASK(0x1, I40E_VSIQF_CTL_PEMFRAG_ENA_SHIFT)
-#define I40E_VSIQF_TCREGION(_i, _VSI) (0x00206000 + ((_i) * 2048 + (_VSI) * 4)) /* _i=0...3, _VSI=0...383 */ /* Reset: PFR */
-#define I40E_VSIQF_TCREGION_MAX_INDEX 3
-#define I40E_VSIQF_TCREGION_TC_OFFSET_SHIFT 0
-#define I40E_VSIQF_TCREGION_TC_OFFSET_MASK I40E_MASK(0x1FF, I40E_VSIQF_TCREGION_TC_OFFSET_SHIFT)
-#define I40E_VSIQF_TCREGION_TC_SIZE_SHIFT 9
-#define I40E_VSIQF_TCREGION_TC_SIZE_MASK I40E_MASK(0x7, I40E_VSIQF_TCREGION_TC_SIZE_SHIFT)
-#define I40E_VSIQF_TCREGION_TC_OFFSET2_SHIFT 16
-#define I40E_VSIQF_TCREGION_TC_OFFSET2_MASK I40E_MASK(0x1FF, I40E_VSIQF_TCREGION_TC_OFFSET2_SHIFT)
-#define I40E_VSIQF_TCREGION_TC_SIZE2_SHIFT 25
-#define I40E_VSIQF_TCREGION_TC_SIZE2_MASK I40E_MASK(0x7, I40E_VSIQF_TCREGION_TC_SIZE2_SHIFT)
-#define I40E_GL_FCOECRC(_i) (0x00314d80 + ((_i) * 8)) /* _i=0...143 */ /* Reset: CORER */
-#define I40E_GL_FCOECRC_MAX_INDEX 143
-#define I40E_GL_FCOECRC_FCOECRC_SHIFT 0
-#define I40E_GL_FCOECRC_FCOECRC_MASK I40E_MASK(0xFFFFFFFF, I40E_GL_FCOECRC_FCOECRC_SHIFT)
-#define I40E_GL_FCOEDDPC(_i) (0x00314480 + ((_i) * 8)) /* _i=0...143 */ /* Reset: CORER */
-#define I40E_GL_FCOEDDPC_MAX_INDEX 143
-#define I40E_GL_FCOEDDPC_FCOEDDPC_SHIFT 0
-#define I40E_GL_FCOEDDPC_FCOEDDPC_MASK I40E_MASK(0xFFFFFFFF, I40E_GL_FCOEDDPC_FCOEDDPC_SHIFT)
-#define I40E_GL_FCOEDIFEC(_i) (0x00318480 + ((_i) * 8)) /* _i=0...143 */ /* Reset: CORER */
-#define I40E_GL_FCOEDIFEC_MAX_INDEX 143
-#define I40E_GL_FCOEDIFEC_FCOEDIFRC_SHIFT 0
-#define I40E_GL_FCOEDIFEC_FCOEDIFRC_MASK I40E_MASK(0xFFFFFFFF, I40E_GL_FCOEDIFEC_FCOEDIFRC_SHIFT)
-#define I40E_GL_FCOEDIFTCL(_i) (0x00354000 + ((_i) * 8)) /* _i=0...143 */ /* Reset: CORER */
-#define I40E_GL_FCOEDIFTCL_MAX_INDEX 143
-#define I40E_GL_FCOEDIFTCL_FCOEDIFTC_SHIFT 0
-#define I40E_GL_FCOEDIFTCL_FCOEDIFTC_MASK I40E_MASK(0xFFFFFFFF, I40E_GL_FCOEDIFTCL_FCOEDIFTC_SHIFT)
-#define I40E_GL_FCOEDIXEC(_i) (0x0034c000 + ((_i) * 8)) /* _i=0...143 */ /* Reset: CORER */
-#define I40E_GL_FCOEDIXEC_MAX_INDEX 143
-#define I40E_GL_FCOEDIXEC_FCOEDIXEC_SHIFT 0
-#define I40E_GL_FCOEDIXEC_FCOEDIXEC_MASK I40E_MASK(0xFFFFFFFF, I40E_GL_FCOEDIXEC_FCOEDIXEC_SHIFT)
-#define I40E_GL_FCOEDIXVC(_i) (0x00350000 + ((_i) * 8)) /* _i=0...143 */ /* Reset: CORER */
-#define I40E_GL_FCOEDIXVC_MAX_INDEX 143
-#define I40E_GL_FCOEDIXVC_FCOEDIXVC_SHIFT 0
-#define I40E_GL_FCOEDIXVC_FCOEDIXVC_MASK I40E_MASK(0xFFFFFFFF, I40E_GL_FCOEDIXVC_FCOEDIXVC_SHIFT)
-#define I40E_GL_FCOEDWRCH(_i) (0x00320004 + ((_i) * 8)) /* _i=0...143 */ /* Reset: CORER */
-#define I40E_GL_FCOEDWRCH_MAX_INDEX 143
-#define I40E_GL_FCOEDWRCH_FCOEDWRCH_SHIFT 0
-#define I40E_GL_FCOEDWRCH_FCOEDWRCH_MASK I40E_MASK(0xFFFF, I40E_GL_FCOEDWRCH_FCOEDWRCH_SHIFT)
-#define I40E_GL_FCOEDWRCL(_i) (0x00320000 + ((_i) * 8)) /* _i=0...143 */ /* Reset: CORER */
-#define I40E_GL_FCOEDWRCL_MAX_INDEX 143
-#define I40E_GL_FCOEDWRCL_FCOEDWRCL_SHIFT 0
-#define I40E_GL_FCOEDWRCL_FCOEDWRCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GL_FCOEDWRCL_FCOEDWRCL_SHIFT)
-#define I40E_GL_FCOEDWTCH(_i) (0x00348084 + ((_i) * 8)) /* _i=0...143 */ /* Reset: CORER */
-#define I40E_GL_FCOEDWTCH_MAX_INDEX 143
-#define I40E_GL_FCOEDWTCH_FCOEDWTCH_SHIFT 0
-#define I40E_GL_FCOEDWTCH_FCOEDWTCH_MASK I40E_MASK(0xFFFF, I40E_GL_FCOEDWTCH_FCOEDWTCH_SHIFT)
-#define I40E_GL_FCOEDWTCL(_i) (0x00348080 + ((_i) * 8)) /* _i=0...143 */ /* Reset: CORER */
-#define I40E_GL_FCOEDWTCL_MAX_INDEX 143
-#define I40E_GL_FCOEDWTCL_FCOEDWTCL_SHIFT 0
-#define I40E_GL_FCOEDWTCL_FCOEDWTCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GL_FCOEDWTCL_FCOEDWTCL_SHIFT)
-#define I40E_GL_FCOELAST(_i) (0x00314000 + ((_i) * 8)) /* _i=0...143 */ /* Reset: CORER */
-#define I40E_GL_FCOELAST_MAX_INDEX 143
-#define I40E_GL_FCOELAST_FCOELAST_SHIFT 0
-#define I40E_GL_FCOELAST_FCOELAST_MASK I40E_MASK(0xFFFFFFFF, I40E_GL_FCOELAST_FCOELAST_SHIFT)
-#define I40E_GL_FCOEPRC(_i) (0x00315200 + ((_i) * 8)) /* _i=0...143 */ /* Reset: CORER */
-#define I40E_GL_FCOEPRC_MAX_INDEX 143
-#define I40E_GL_FCOEPRC_FCOEPRC_SHIFT 0
-#define I40E_GL_FCOEPRC_FCOEPRC_MASK I40E_MASK(0xFFFFFFFF, I40E_GL_FCOEPRC_FCOEPRC_SHIFT)
-#define I40E_GL_FCOEPTC(_i) (0x00344C00 + ((_i) * 8)) /* _i=0...143 */ /* Reset: CORER */
-#define I40E_GL_FCOEPTC_MAX_INDEX 143
-#define I40E_GL_FCOEPTC_FCOEPTC_SHIFT 0
-#define I40E_GL_FCOEPTC_FCOEPTC_MASK I40E_MASK(0xFFFFFFFF, I40E_GL_FCOEPTC_FCOEPTC_SHIFT)
-#define I40E_GL_FCOERPDC(_i) (0x00324000 + ((_i) * 8)) /* _i=0...143 */ /* Reset: CORER */
-#define I40E_GL_FCOERPDC_MAX_INDEX 143
-#define I40E_GL_FCOERPDC_FCOERPDC_SHIFT 0
-#define I40E_GL_FCOERPDC_FCOERPDC_MASK I40E_MASK(0xFFFFFFFF, I40E_GL_FCOERPDC_FCOERPDC_SHIFT)
-#define I40E_GL_RXERR1_L(_i) (0x00318000 + ((_i) * 8)) /* _i=0...143 */ /* Reset: CORER */
-#define I40E_GL_RXERR1_L_MAX_INDEX 143
-#define I40E_GL_RXERR1_L_FCOEDIFRC_SHIFT 0
-#define I40E_GL_RXERR1_L_FCOEDIFRC_MASK I40E_MASK(0xFFFFFFFF, I40E_GL_RXERR1_L_FCOEDIFRC_SHIFT)
-#define I40E_GL_RXERR2_L(_i) (0x0031c000 + ((_i) * 8)) /* _i=0...143 */ /* Reset: CORER */
-#define I40E_GL_RXERR2_L_MAX_INDEX 143
-#define I40E_GL_RXERR2_L_FCOEDIXAC_SHIFT 0
-#define I40E_GL_RXERR2_L_FCOEDIXAC_MASK I40E_MASK(0xFFFFFFFF, I40E_GL_RXERR2_L_FCOEDIXAC_SHIFT)
 #define I40E_GLPRT_BPRCH(_i) (0x003005E4 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_BPRCH_MAX_INDEX 3
-#define I40E_GLPRT_BPRCH_BPRCH_SHIFT 0
-#define I40E_GLPRT_BPRCH_BPRCH_MASK I40E_MASK(0xFFFF, I40E_GLPRT_BPRCH_BPRCH_SHIFT)
 #define I40E_GLPRT_BPRCL(_i) (0x003005E0 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_BPRCL_MAX_INDEX 3
-#define I40E_GLPRT_BPRCL_BPRCL_SHIFT 0
-#define I40E_GLPRT_BPRCL_BPRCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_BPRCL_BPRCL_SHIFT)
 #define I40E_GLPRT_BPTCH(_i) (0x00300A04 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_BPTCH_MAX_INDEX 3
-#define I40E_GLPRT_BPTCH_BPTCH_SHIFT 0
-#define I40E_GLPRT_BPTCH_BPTCH_MASK I40E_MASK(0xFFFF, I40E_GLPRT_BPTCH_BPTCH_SHIFT)
 #define I40E_GLPRT_BPTCL(_i) (0x00300A00 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_BPTCL_MAX_INDEX 3
-#define I40E_GLPRT_BPTCL_BPTCL_SHIFT 0
-#define I40E_GLPRT_BPTCL_BPTCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_BPTCL_BPTCL_SHIFT)
 #define I40E_GLPRT_CRCERRS(_i) (0x00300080 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_CRCERRS_MAX_INDEX 3
-#define I40E_GLPRT_CRCERRS_CRCERRS_SHIFT 0
-#define I40E_GLPRT_CRCERRS_CRCERRS_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_CRCERRS_CRCERRS_SHIFT)
 #define I40E_GLPRT_GORCH(_i) (0x00300004 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_GORCH_MAX_INDEX 3
-#define I40E_GLPRT_GORCH_GORCH_SHIFT 0
-#define I40E_GLPRT_GORCH_GORCH_MASK I40E_MASK(0xFFFF, I40E_GLPRT_GORCH_GORCH_SHIFT)
 #define I40E_GLPRT_GORCL(_i) (0x00300000 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_GORCL_MAX_INDEX 3
-#define I40E_GLPRT_GORCL_GORCL_SHIFT 0
-#define I40E_GLPRT_GORCL_GORCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_GORCL_GORCL_SHIFT)
 #define I40E_GLPRT_GOTCH(_i) (0x00300684 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_GOTCH_MAX_INDEX 3
-#define I40E_GLPRT_GOTCH_GOTCH_SHIFT 0
-#define I40E_GLPRT_GOTCH_GOTCH_MASK I40E_MASK(0xFFFF, I40E_GLPRT_GOTCH_GOTCH_SHIFT)
 #define I40E_GLPRT_GOTCL(_i) (0x00300680 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_GOTCL_MAX_INDEX 3
-#define I40E_GLPRT_GOTCL_GOTCL_SHIFT 0
-#define I40E_GLPRT_GOTCL_GOTCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_GOTCL_GOTCL_SHIFT)
 #define I40E_GLPRT_ILLERRC(_i) (0x003000E0 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_ILLERRC_MAX_INDEX 3
-#define I40E_GLPRT_ILLERRC_ILLERRC_SHIFT 0
-#define I40E_GLPRT_ILLERRC_ILLERRC_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_ILLERRC_ILLERRC_SHIFT)
-#define I40E_GLPRT_LDPC(_i) (0x00300620 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_LDPC_MAX_INDEX 3
-#define I40E_GLPRT_LDPC_LDPC_SHIFT 0
-#define I40E_GLPRT_LDPC_LDPC_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_LDPC_LDPC_SHIFT)
 #define I40E_GLPRT_LXOFFRXC(_i) (0x00300160 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_LXOFFRXC_MAX_INDEX 3
-#define I40E_GLPRT_LXOFFRXC_LXOFFRXCNT_SHIFT 0
-#define I40E_GLPRT_LXOFFRXC_LXOFFRXCNT_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_LXOFFRXC_LXOFFRXCNT_SHIFT)
 #define I40E_GLPRT_LXOFFTXC(_i) (0x003009A0 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_LXOFFTXC_MAX_INDEX 3
-#define I40E_GLPRT_LXOFFTXC_LXOFFTXC_SHIFT 0
-#define I40E_GLPRT_LXOFFTXC_LXOFFTXC_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_LXOFFTXC_LXOFFTXC_SHIFT)
 #define I40E_GLPRT_LXONRXC(_i) (0x00300140 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_LXONRXC_MAX_INDEX 3
-#define I40E_GLPRT_LXONRXC_LXONRXCNT_SHIFT 0
-#define I40E_GLPRT_LXONRXC_LXONRXCNT_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_LXONRXC_LXONRXCNT_SHIFT)
 #define I40E_GLPRT_LXONTXC(_i) (0x00300980 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_LXONTXC_MAX_INDEX 3
-#define I40E_GLPRT_LXONTXC_LXONTXC_SHIFT 0
-#define I40E_GLPRT_LXONTXC_LXONTXC_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_LXONTXC_LXONTXC_SHIFT)
 #define I40E_GLPRT_MLFC(_i) (0x00300020 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_MLFC_MAX_INDEX 3
-#define I40E_GLPRT_MLFC_MLFC_SHIFT 0
-#define I40E_GLPRT_MLFC_MLFC_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_MLFC_MLFC_SHIFT)
 #define I40E_GLPRT_MPRCH(_i) (0x003005C4 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_MPRCH_MAX_INDEX 3
-#define I40E_GLPRT_MPRCH_MPRCH_SHIFT 0
-#define I40E_GLPRT_MPRCH_MPRCH_MASK I40E_MASK(0xFFFF, I40E_GLPRT_MPRCH_MPRCH_SHIFT)
 #define I40E_GLPRT_MPRCL(_i) (0x003005C0 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_MPRCL_MAX_INDEX 3
-#define I40E_GLPRT_MPRCL_MPRCL_SHIFT 0
-#define I40E_GLPRT_MPRCL_MPRCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_MPRCL_MPRCL_SHIFT)
 #define I40E_GLPRT_MPTCH(_i) (0x003009E4 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_MPTCH_MAX_INDEX 3
-#define I40E_GLPRT_MPTCH_MPTCH_SHIFT 0
-#define I40E_GLPRT_MPTCH_MPTCH_MASK I40E_MASK(0xFFFF, I40E_GLPRT_MPTCH_MPTCH_SHIFT)
 #define I40E_GLPRT_MPTCL(_i) (0x003009E0 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_MPTCL_MAX_INDEX 3
-#define I40E_GLPRT_MPTCL_MPTCL_SHIFT 0
-#define I40E_GLPRT_MPTCL_MPTCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_MPTCL_MPTCL_SHIFT)
 #define I40E_GLPRT_MRFC(_i) (0x00300040 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_MRFC_MAX_INDEX 3
-#define I40E_GLPRT_MRFC_MRFC_SHIFT 0
-#define I40E_GLPRT_MRFC_MRFC_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_MRFC_MRFC_SHIFT)
 #define I40E_GLPRT_PRC1023H(_i) (0x00300504 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_PRC1023H_MAX_INDEX 3
-#define I40E_GLPRT_PRC1023H_PRC1023H_SHIFT 0
-#define I40E_GLPRT_PRC1023H_PRC1023H_MASK I40E_MASK(0xFFFF, I40E_GLPRT_PRC1023H_PRC1023H_SHIFT)
 #define I40E_GLPRT_PRC1023L(_i) (0x00300500 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_PRC1023L_MAX_INDEX 3
-#define I40E_GLPRT_PRC1023L_PRC1023L_SHIFT 0
-#define I40E_GLPRT_PRC1023L_PRC1023L_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_PRC1023L_PRC1023L_SHIFT)
 #define I40E_GLPRT_PRC127H(_i) (0x003004A4 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_PRC127H_MAX_INDEX 3
-#define I40E_GLPRT_PRC127H_PRC127H_SHIFT 0
-#define I40E_GLPRT_PRC127H_PRC127H_MASK I40E_MASK(0xFFFF, I40E_GLPRT_PRC127H_PRC127H_SHIFT)
 #define I40E_GLPRT_PRC127L(_i) (0x003004A0 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_PRC127L_MAX_INDEX 3
-#define I40E_GLPRT_PRC127L_PRC127L_SHIFT 0
-#define I40E_GLPRT_PRC127L_PRC127L_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_PRC127L_PRC127L_SHIFT)
 #define I40E_GLPRT_PRC1522H(_i) (0x00300524 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_PRC1522H_MAX_INDEX 3
-#define I40E_GLPRT_PRC1522H_PRC1522H_SHIFT 0
-#define I40E_GLPRT_PRC1522H_PRC1522H_MASK I40E_MASK(0xFFFF, I40E_GLPRT_PRC1522H_PRC1522H_SHIFT)
 #define I40E_GLPRT_PRC1522L(_i) (0x00300520 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_PRC1522L_MAX_INDEX 3
-#define I40E_GLPRT_PRC1522L_PRC1522L_SHIFT 0
-#define I40E_GLPRT_PRC1522L_PRC1522L_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_PRC1522L_PRC1522L_SHIFT)
 #define I40E_GLPRT_PRC255H(_i) (0x003004C4 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_PRC255H_MAX_INDEX 3
-#define I40E_GLPRT_PRC255H_PRTPRC255H_SHIFT 0
-#define I40E_GLPRT_PRC255H_PRTPRC255H_MASK I40E_MASK(0xFFFF, I40E_GLPRT_PRC255H_PRTPRC255H_SHIFT)
 #define I40E_GLPRT_PRC255L(_i) (0x003004C0 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_PRC255L_MAX_INDEX 3
-#define I40E_GLPRT_PRC255L_PRC255L_SHIFT 0
-#define I40E_GLPRT_PRC255L_PRC255L_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_PRC255L_PRC255L_SHIFT)
 #define I40E_GLPRT_PRC511H(_i) (0x003004E4 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_PRC511H_MAX_INDEX 3
-#define I40E_GLPRT_PRC511H_PRC511H_SHIFT 0
-#define I40E_GLPRT_PRC511H_PRC511H_MASK I40E_MASK(0xFFFF, I40E_GLPRT_PRC511H_PRC511H_SHIFT)
 #define I40E_GLPRT_PRC511L(_i) (0x003004E0 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_PRC511L_MAX_INDEX 3
-#define I40E_GLPRT_PRC511L_PRC511L_SHIFT 0
-#define I40E_GLPRT_PRC511L_PRC511L_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_PRC511L_PRC511L_SHIFT)
 #define I40E_GLPRT_PRC64H(_i) (0x00300484 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_PRC64H_MAX_INDEX 3
-#define I40E_GLPRT_PRC64H_PRC64H_SHIFT 0
-#define I40E_GLPRT_PRC64H_PRC64H_MASK I40E_MASK(0xFFFF, I40E_GLPRT_PRC64H_PRC64H_SHIFT)
 #define I40E_GLPRT_PRC64L(_i) (0x00300480 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_PRC64L_MAX_INDEX 3
-#define I40E_GLPRT_PRC64L_PRC64L_SHIFT 0
-#define I40E_GLPRT_PRC64L_PRC64L_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_PRC64L_PRC64L_SHIFT)
 #define I40E_GLPRT_PRC9522H(_i) (0x00300544 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_PRC9522H_MAX_INDEX 3
-#define I40E_GLPRT_PRC9522H_PRC1522H_SHIFT 0
-#define I40E_GLPRT_PRC9522H_PRC1522H_MASK I40E_MASK(0xFFFF, I40E_GLPRT_PRC9522H_PRC1522H_SHIFT)
 #define I40E_GLPRT_PRC9522L(_i) (0x00300540 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_PRC9522L_MAX_INDEX 3
-#define I40E_GLPRT_PRC9522L_PRC1522L_SHIFT 0
-#define I40E_GLPRT_PRC9522L_PRC1522L_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_PRC9522L_PRC1522L_SHIFT)
 #define I40E_GLPRT_PTC1023H(_i) (0x00300724 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_PTC1023H_MAX_INDEX 3
-#define I40E_GLPRT_PTC1023H_PTC1023H_SHIFT 0
-#define I40E_GLPRT_PTC1023H_PTC1023H_MASK I40E_MASK(0xFFFF, I40E_GLPRT_PTC1023H_PTC1023H_SHIFT)
 #define I40E_GLPRT_PTC1023L(_i) (0x00300720 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_PTC1023L_MAX_INDEX 3
-#define I40E_GLPRT_PTC1023L_PTC1023L_SHIFT 0
-#define I40E_GLPRT_PTC1023L_PTC1023L_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_PTC1023L_PTC1023L_SHIFT)
 #define I40E_GLPRT_PTC127H(_i) (0x003006C4 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_PTC127H_MAX_INDEX 3
-#define I40E_GLPRT_PTC127H_PTC127H_SHIFT 0
-#define I40E_GLPRT_PTC127H_PTC127H_MASK I40E_MASK(0xFFFF, I40E_GLPRT_PTC127H_PTC127H_SHIFT)
 #define I40E_GLPRT_PTC127L(_i) (0x003006C0 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_PTC127L_MAX_INDEX 3
-#define I40E_GLPRT_PTC127L_PTC127L_SHIFT 0
-#define I40E_GLPRT_PTC127L_PTC127L_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_PTC127L_PTC127L_SHIFT)
 #define I40E_GLPRT_PTC1522H(_i) (0x00300744 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_PTC1522H_MAX_INDEX 3
-#define I40E_GLPRT_PTC1522H_PTC1522H_SHIFT 0
-#define I40E_GLPRT_PTC1522H_PTC1522H_MASK I40E_MASK(0xFFFF, I40E_GLPRT_PTC1522H_PTC1522H_SHIFT)
 #define I40E_GLPRT_PTC1522L(_i) (0x00300740 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_PTC1522L_MAX_INDEX 3
-#define I40E_GLPRT_PTC1522L_PTC1522L_SHIFT 0
-#define I40E_GLPRT_PTC1522L_PTC1522L_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_PTC1522L_PTC1522L_SHIFT)
 #define I40E_GLPRT_PTC255H(_i) (0x003006E4 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_PTC255H_MAX_INDEX 3
-#define I40E_GLPRT_PTC255H_PTC255H_SHIFT 0
-#define I40E_GLPRT_PTC255H_PTC255H_MASK I40E_MASK(0xFFFF, I40E_GLPRT_PTC255H_PTC255H_SHIFT)
 #define I40E_GLPRT_PTC255L(_i) (0x003006E0 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_PTC255L_MAX_INDEX 3
-#define I40E_GLPRT_PTC255L_PTC255L_SHIFT 0
-#define I40E_GLPRT_PTC255L_PTC255L_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_PTC255L_PTC255L_SHIFT)
 #define I40E_GLPRT_PTC511H(_i) (0x00300704 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_PTC511H_MAX_INDEX 3
-#define I40E_GLPRT_PTC511H_PTC511H_SHIFT 0
-#define I40E_GLPRT_PTC511H_PTC511H_MASK I40E_MASK(0xFFFF, I40E_GLPRT_PTC511H_PTC511H_SHIFT)
 #define I40E_GLPRT_PTC511L(_i) (0x00300700 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_PTC511L_MAX_INDEX 3
-#define I40E_GLPRT_PTC511L_PTC511L_SHIFT 0
-#define I40E_GLPRT_PTC511L_PTC511L_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_PTC511L_PTC511L_SHIFT)
 #define I40E_GLPRT_PTC64H(_i) (0x003006A4 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_PTC64H_MAX_INDEX 3
-#define I40E_GLPRT_PTC64H_PTC64H_SHIFT 0
-#define I40E_GLPRT_PTC64H_PTC64H_MASK I40E_MASK(0xFFFF, I40E_GLPRT_PTC64H_PTC64H_SHIFT)
 #define I40E_GLPRT_PTC64L(_i) (0x003006A0 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_PTC64L_MAX_INDEX 3
-#define I40E_GLPRT_PTC64L_PTC64L_SHIFT 0
-#define I40E_GLPRT_PTC64L_PTC64L_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_PTC64L_PTC64L_SHIFT)
 #define I40E_GLPRT_PTC9522H(_i) (0x00300764 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_PTC9522H_MAX_INDEX 3
-#define I40E_GLPRT_PTC9522H_PTC9522H_SHIFT 0
-#define I40E_GLPRT_PTC9522H_PTC9522H_MASK I40E_MASK(0xFFFF, I40E_GLPRT_PTC9522H_PTC9522H_SHIFT)
 #define I40E_GLPRT_PTC9522L(_i) (0x00300760 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_PTC9522L_MAX_INDEX 3
-#define I40E_GLPRT_PTC9522L_PTC9522L_SHIFT 0
-#define I40E_GLPRT_PTC9522L_PTC9522L_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_PTC9522L_PTC9522L_SHIFT)
 #define I40E_GLPRT_PXOFFRXC(_i, _j) (0x00300280 + ((_i) * 8 + (_j) * 32)) /* _i=0...3, _j=0...7 */ /* Reset: CORER */
-#define I40E_GLPRT_PXOFFRXC_MAX_INDEX 3
-#define I40E_GLPRT_PXOFFRXC_PRPXOFFRXCNT_SHIFT 0
-#define I40E_GLPRT_PXOFFRXC_PRPXOFFRXCNT_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_PXOFFRXC_PRPXOFFRXCNT_SHIFT)
 #define I40E_GLPRT_PXOFFTXC(_i, _j) (0x00300880 + ((_i) * 8 + (_j) * 32)) /* _i=0...3, _j=0...7 */ /* Reset: CORER */
-#define I40E_GLPRT_PXOFFTXC_MAX_INDEX 3
-#define I40E_GLPRT_PXOFFTXC_PRPXOFFTXCNT_SHIFT 0
-#define I40E_GLPRT_PXOFFTXC_PRPXOFFTXCNT_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_PXOFFTXC_PRPXOFFTXCNT_SHIFT)
 #define I40E_GLPRT_PXONRXC(_i, _j) (0x00300180 + ((_i) * 8 + (_j) * 32)) /* _i=0...3, _j=0...7 */ /* Reset: CORER */
-#define I40E_GLPRT_PXONRXC_MAX_INDEX 3
-#define I40E_GLPRT_PXONRXC_PRPXONRXCNT_SHIFT 0
-#define I40E_GLPRT_PXONRXC_PRPXONRXCNT_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_PXONRXC_PRPXONRXCNT_SHIFT)
 #define I40E_GLPRT_PXONTXC(_i, _j) (0x00300780 + ((_i) * 8 + (_j) * 32)) /* _i=0...3, _j=0...7 */ /* Reset: CORER */
-#define I40E_GLPRT_PXONTXC_MAX_INDEX 3
-#define I40E_GLPRT_PXONTXC_PRPXONTXC_SHIFT 0
-#define I40E_GLPRT_PXONTXC_PRPXONTXC_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_PXONTXC_PRPXONTXC_SHIFT)
 #define I40E_GLPRT_RDPC(_i) (0x00300600 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_RDPC_MAX_INDEX 3
-#define I40E_GLPRT_RDPC_RDPC_SHIFT 0
-#define I40E_GLPRT_RDPC_RDPC_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_RDPC_RDPC_SHIFT)
 #define I40E_GLPRT_RFC(_i) (0x00300560 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_RFC_MAX_INDEX 3
-#define I40E_GLPRT_RFC_RFC_SHIFT 0
-#define I40E_GLPRT_RFC_RFC_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_RFC_RFC_SHIFT)
 #define I40E_GLPRT_RJC(_i) (0x00300580 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_RJC_MAX_INDEX 3
-#define I40E_GLPRT_RJC_RJC_SHIFT 0
-#define I40E_GLPRT_RJC_RJC_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_RJC_RJC_SHIFT)
 #define I40E_GLPRT_RLEC(_i) (0x003000A0 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_RLEC_MAX_INDEX 3
-#define I40E_GLPRT_RLEC_RLEC_SHIFT 0
-#define I40E_GLPRT_RLEC_RLEC_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_RLEC_RLEC_SHIFT)
 #define I40E_GLPRT_ROC(_i) (0x00300120 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_ROC_MAX_INDEX 3
-#define I40E_GLPRT_ROC_ROC_SHIFT 0
-#define I40E_GLPRT_ROC_ROC_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_ROC_ROC_SHIFT)
 #define I40E_GLPRT_RUC(_i) (0x00300100 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_RUC_MAX_INDEX 3
-#define I40E_GLPRT_RUC_RUC_SHIFT 0
-#define I40E_GLPRT_RUC_RUC_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_RUC_RUC_SHIFT)
-#define I40E_GLPRT_RUPP(_i) (0x00300660 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_RUPP_MAX_INDEX 3
-#define I40E_GLPRT_RUPP_RUPP_SHIFT 0
-#define I40E_GLPRT_RUPP_RUPP_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_RUPP_RUPP_SHIFT)
 #define I40E_GLPRT_RXON2OFFCNT(_i, _j) (0x00300380 + ((_i) * 8 + (_j) * 32)) /* _i=0...3, _j=0...7 */ /* Reset: CORER */
-#define I40E_GLPRT_RXON2OFFCNT_MAX_INDEX 3
-#define I40E_GLPRT_RXON2OFFCNT_PRRXON2OFFCNT_SHIFT 0
-#define I40E_GLPRT_RXON2OFFCNT_PRRXON2OFFCNT_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_RXON2OFFCNT_PRRXON2OFFCNT_SHIFT)
 #define I40E_GLPRT_TDOLD(_i) (0x00300A20 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_TDOLD_MAX_INDEX 3
-#define I40E_GLPRT_TDOLD_GLPRT_TDOLD_SHIFT 0
-#define I40E_GLPRT_TDOLD_GLPRT_TDOLD_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_TDOLD_GLPRT_TDOLD_SHIFT)
 #define I40E_GLPRT_UPRCH(_i) (0x003005A4 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_UPRCH_MAX_INDEX 3
-#define I40E_GLPRT_UPRCH_UPRCH_SHIFT 0
-#define I40E_GLPRT_UPRCH_UPRCH_MASK I40E_MASK(0xFFFF, I40E_GLPRT_UPRCH_UPRCH_SHIFT)
 #define I40E_GLPRT_UPRCL(_i) (0x003005A0 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_UPRCL_MAX_INDEX 3
-#define I40E_GLPRT_UPRCL_UPRCL_SHIFT 0
-#define I40E_GLPRT_UPRCL_UPRCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_UPRCL_UPRCL_SHIFT)
 #define I40E_GLPRT_UPTCH(_i) (0x003009C4 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_UPTCH_MAX_INDEX 3
-#define I40E_GLPRT_UPTCH_UPTCH_SHIFT 0
-#define I40E_GLPRT_UPTCH_UPTCH_MASK I40E_MASK(0xFFFF, I40E_GLPRT_UPTCH_UPTCH_SHIFT)
 #define I40E_GLPRT_UPTCL(_i) (0x003009C0 + ((_i) * 8)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_GLPRT_UPTCL_MAX_INDEX 3
-#define I40E_GLPRT_UPTCL_VUPTCH_SHIFT 0
-#define I40E_GLPRT_UPTCL_VUPTCH_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPRT_UPTCL_VUPTCH_SHIFT)
 #define I40E_GLSW_BPRCH(_i) (0x00370104 + ((_i) * 8)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLSW_BPRCH_MAX_INDEX 15
-#define I40E_GLSW_BPRCH_BPRCH_SHIFT 0
-#define I40E_GLSW_BPRCH_BPRCH_MASK I40E_MASK(0xFFFF, I40E_GLSW_BPRCH_BPRCH_SHIFT)
 #define I40E_GLSW_BPRCL(_i) (0x00370100 + ((_i) * 8)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLSW_BPRCL_MAX_INDEX 15
-#define I40E_GLSW_BPRCL_BPRCL_SHIFT 0
-#define I40E_GLSW_BPRCL_BPRCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLSW_BPRCL_BPRCL_SHIFT)
 #define I40E_GLSW_BPTCH(_i) (0x00340104 + ((_i) * 8)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLSW_BPTCH_MAX_INDEX 15
-#define I40E_GLSW_BPTCH_BPTCH_SHIFT 0
-#define I40E_GLSW_BPTCH_BPTCH_MASK I40E_MASK(0xFFFF, I40E_GLSW_BPTCH_BPTCH_SHIFT)
 #define I40E_GLSW_BPTCL(_i) (0x00340100 + ((_i) * 8)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLSW_BPTCL_MAX_INDEX 15
-#define I40E_GLSW_BPTCL_BPTCL_SHIFT 0
-#define I40E_GLSW_BPTCL_BPTCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLSW_BPTCL_BPTCL_SHIFT)
 #define I40E_GLSW_GORCH(_i) (0x0035C004 + ((_i) * 8)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLSW_GORCH_MAX_INDEX 15
-#define I40E_GLSW_GORCH_GORCH_SHIFT 0
-#define I40E_GLSW_GORCH_GORCH_MASK I40E_MASK(0xFFFF, I40E_GLSW_GORCH_GORCH_SHIFT)
 #define I40E_GLSW_GORCL(_i) (0x0035c000 + ((_i) * 8)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLSW_GORCL_MAX_INDEX 15
-#define I40E_GLSW_GORCL_GORCL_SHIFT 0
-#define I40E_GLSW_GORCL_GORCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLSW_GORCL_GORCL_SHIFT)
 #define I40E_GLSW_GOTCH(_i) (0x0032C004 + ((_i) * 8)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLSW_GOTCH_MAX_INDEX 15
-#define I40E_GLSW_GOTCH_GOTCH_SHIFT 0
-#define I40E_GLSW_GOTCH_GOTCH_MASK I40E_MASK(0xFFFF, I40E_GLSW_GOTCH_GOTCH_SHIFT)
 #define I40E_GLSW_GOTCL(_i) (0x0032c000 + ((_i) * 8)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLSW_GOTCL_MAX_INDEX 15
-#define I40E_GLSW_GOTCL_GOTCL_SHIFT 0
-#define I40E_GLSW_GOTCL_GOTCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLSW_GOTCL_GOTCL_SHIFT)
 #define I40E_GLSW_MPRCH(_i) (0x00370084 + ((_i) * 8)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLSW_MPRCH_MAX_INDEX 15
-#define I40E_GLSW_MPRCH_MPRCH_SHIFT 0
-#define I40E_GLSW_MPRCH_MPRCH_MASK I40E_MASK(0xFFFF, I40E_GLSW_MPRCH_MPRCH_SHIFT)
 #define I40E_GLSW_MPRCL(_i) (0x00370080 + ((_i) * 8)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLSW_MPRCL_MAX_INDEX 15
-#define I40E_GLSW_MPRCL_MPRCL_SHIFT 0
-#define I40E_GLSW_MPRCL_MPRCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLSW_MPRCL_MPRCL_SHIFT)
 #define I40E_GLSW_MPTCH(_i) (0x00340084 + ((_i) * 8)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLSW_MPTCH_MAX_INDEX 15
-#define I40E_GLSW_MPTCH_MPTCH_SHIFT 0
-#define I40E_GLSW_MPTCH_MPTCH_MASK I40E_MASK(0xFFFF, I40E_GLSW_MPTCH_MPTCH_SHIFT)
 #define I40E_GLSW_MPTCL(_i) (0x00340080 + ((_i) * 8)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLSW_MPTCL_MAX_INDEX 15
-#define I40E_GLSW_MPTCL_MPTCL_SHIFT 0
-#define I40E_GLSW_MPTCL_MPTCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLSW_MPTCL_MPTCL_SHIFT)
 #define I40E_GLSW_RUPP(_i) (0x00370180 + ((_i) * 8)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLSW_RUPP_MAX_INDEX 15
-#define I40E_GLSW_RUPP_RUPP_SHIFT 0
-#define I40E_GLSW_RUPP_RUPP_MASK I40E_MASK(0xFFFFFFFF, I40E_GLSW_RUPP_RUPP_SHIFT)
 #define I40E_GLSW_TDPC(_i) (0x00348000 + ((_i) * 8)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLSW_TDPC_MAX_INDEX 15
-#define I40E_GLSW_TDPC_TDPC_SHIFT 0
-#define I40E_GLSW_TDPC_TDPC_MASK I40E_MASK(0xFFFFFFFF, I40E_GLSW_TDPC_TDPC_SHIFT)
 #define I40E_GLSW_UPRCH(_i) (0x00370004 + ((_i) * 8)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLSW_UPRCH_MAX_INDEX 15
-#define I40E_GLSW_UPRCH_UPRCH_SHIFT 0
-#define I40E_GLSW_UPRCH_UPRCH_MASK I40E_MASK(0xFFFF, I40E_GLSW_UPRCH_UPRCH_SHIFT)
 #define I40E_GLSW_UPRCL(_i) (0x00370000 + ((_i) * 8)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLSW_UPRCL_MAX_INDEX 15
-#define I40E_GLSW_UPRCL_UPRCL_SHIFT 0
-#define I40E_GLSW_UPRCL_UPRCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLSW_UPRCL_UPRCL_SHIFT)
 #define I40E_GLSW_UPTCH(_i) (0x00340004 + ((_i) * 8)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLSW_UPTCH_MAX_INDEX 15
-#define I40E_GLSW_UPTCH_UPTCH_SHIFT 0
-#define I40E_GLSW_UPTCH_UPTCH_MASK I40E_MASK(0xFFFF, I40E_GLSW_UPTCH_UPTCH_SHIFT)
 #define I40E_GLSW_UPTCL(_i) (0x00340000 + ((_i) * 8)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLSW_UPTCL_MAX_INDEX 15
-#define I40E_GLSW_UPTCL_UPTCL_SHIFT 0
-#define I40E_GLSW_UPTCL_UPTCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLSW_UPTCL_UPTCL_SHIFT)
 #define I40E_GLV_BPRCH(_i) (0x0036D804 + ((_i) * 8)) /* _i=0...383 */ /* Reset: CORER */
-#define I40E_GLV_BPRCH_MAX_INDEX 383
-#define I40E_GLV_BPRCH_BPRCH_SHIFT 0
-#define I40E_GLV_BPRCH_BPRCH_MASK I40E_MASK(0xFFFF, I40E_GLV_BPRCH_BPRCH_SHIFT)
 #define I40E_GLV_BPRCL(_i) (0x0036d800 + ((_i) * 8)) /* _i=0...383 */ /* Reset: CORER */
-#define I40E_GLV_BPRCL_MAX_INDEX 383
-#define I40E_GLV_BPRCL_BPRCL_SHIFT 0
-#define I40E_GLV_BPRCL_BPRCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLV_BPRCL_BPRCL_SHIFT)
 #define I40E_GLV_BPTCH(_i) (0x0033D804 + ((_i) * 8)) /* _i=0...383 */ /* Reset: CORER */
-#define I40E_GLV_BPTCH_MAX_INDEX 383
-#define I40E_GLV_BPTCH_BPTCH_SHIFT 0
-#define I40E_GLV_BPTCH_BPTCH_MASK I40E_MASK(0xFFFF, I40E_GLV_BPTCH_BPTCH_SHIFT)
 #define I40E_GLV_BPTCL(_i) (0x0033d800 + ((_i) * 8)) /* _i=0...383 */ /* Reset: CORER */
-#define I40E_GLV_BPTCL_MAX_INDEX 383
-#define I40E_GLV_BPTCL_BPTCL_SHIFT 0
-#define I40E_GLV_BPTCL_BPTCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLV_BPTCL_BPTCL_SHIFT)
 #define I40E_GLV_GORCH(_i) (0x00358004 + ((_i) * 8)) /* _i=0...383 */ /* Reset: CORER */
-#define I40E_GLV_GORCH_MAX_INDEX 383
-#define I40E_GLV_GORCH_GORCH_SHIFT 0
-#define I40E_GLV_GORCH_GORCH_MASK I40E_MASK(0xFFFF, I40E_GLV_GORCH_GORCH_SHIFT)
 #define I40E_GLV_GORCL(_i) (0x00358000 + ((_i) * 8)) /* _i=0...383 */ /* Reset: CORER */
-#define I40E_GLV_GORCL_MAX_INDEX 383
-#define I40E_GLV_GORCL_GORCL_SHIFT 0
-#define I40E_GLV_GORCL_GORCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLV_GORCL_GORCL_SHIFT)
 #define I40E_GLV_GOTCH(_i) (0x00328004 + ((_i) * 8)) /* _i=0...383 */ /* Reset: CORER */
-#define I40E_GLV_GOTCH_MAX_INDEX 383
-#define I40E_GLV_GOTCH_GOTCH_SHIFT 0
-#define I40E_GLV_GOTCH_GOTCH_MASK I40E_MASK(0xFFFF, I40E_GLV_GOTCH_GOTCH_SHIFT)
 #define I40E_GLV_GOTCL(_i) (0x00328000 + ((_i) * 8)) /* _i=0...383 */ /* Reset: CORER */
-#define I40E_GLV_GOTCL_MAX_INDEX 383
-#define I40E_GLV_GOTCL_GOTCL_SHIFT 0
-#define I40E_GLV_GOTCL_GOTCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLV_GOTCL_GOTCL_SHIFT)
 #define I40E_GLV_MPRCH(_i) (0x0036CC04 + ((_i) * 8)) /* _i=0...383 */ /* Reset: CORER */
-#define I40E_GLV_MPRCH_MAX_INDEX 383
-#define I40E_GLV_MPRCH_MPRCH_SHIFT 0
-#define I40E_GLV_MPRCH_MPRCH_MASK I40E_MASK(0xFFFF, I40E_GLV_MPRCH_MPRCH_SHIFT)
 #define I40E_GLV_MPRCL(_i) (0x0036cc00 + ((_i) * 8)) /* _i=0...383 */ /* Reset: CORER */
-#define I40E_GLV_MPRCL_MAX_INDEX 383
-#define I40E_GLV_MPRCL_MPRCL_SHIFT 0
-#define I40E_GLV_MPRCL_MPRCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLV_MPRCL_MPRCL_SHIFT)
 #define I40E_GLV_MPTCH(_i) (0x0033CC04 + ((_i) * 8)) /* _i=0...383 */ /* Reset: CORER */
-#define I40E_GLV_MPTCH_MAX_INDEX 383
-#define I40E_GLV_MPTCH_MPTCH_SHIFT 0
-#define I40E_GLV_MPTCH_MPTCH_MASK I40E_MASK(0xFFFF, I40E_GLV_MPTCH_MPTCH_SHIFT)
 #define I40E_GLV_MPTCL(_i) (0x0033cc00 + ((_i) * 8)) /* _i=0...383 */ /* Reset: CORER */
-#define I40E_GLV_MPTCL_MAX_INDEX 383
-#define I40E_GLV_MPTCL_MPTCL_SHIFT 0
-#define I40E_GLV_MPTCL_MPTCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLV_MPTCL_MPTCL_SHIFT)
 #define I40E_GLV_RDPC(_i) (0x00310000 + ((_i) * 8)) /* _i=0...383 */ /* Reset: CORER */
-#define I40E_GLV_RDPC_MAX_INDEX 383
-#define I40E_GLV_RDPC_RDPC_SHIFT 0
-#define I40E_GLV_RDPC_RDPC_MASK I40E_MASK(0xFFFFFFFF, I40E_GLV_RDPC_RDPC_SHIFT)
 #define I40E_GLV_RUPP(_i) (0x0036E400 + ((_i) * 8)) /* _i=0...383 */ /* Reset: CORER */
-#define I40E_GLV_RUPP_MAX_INDEX 383
-#define I40E_GLV_RUPP_RUPP_SHIFT 0
-#define I40E_GLV_RUPP_RUPP_MASK I40E_MASK(0xFFFFFFFF, I40E_GLV_RUPP_RUPP_SHIFT)
 #define I40E_GLV_TEPC(_i) (0x00344000 + ((_i) * 8)) /* _i=0...383 */ /* Reset: CORER */
-#define I40E_GLV_TEPC_MAX_INDEX 383
-#define I40E_GLV_TEPC_TEPC_SHIFT 0
-#define I40E_GLV_TEPC_TEPC_MASK I40E_MASK(0xFFFFFFFF, I40E_GLV_TEPC_TEPC_SHIFT)
 #define I40E_GLV_UPRCH(_i) (0x0036C004 + ((_i) * 8)) /* _i=0...383 */ /* Reset: CORER */
-#define I40E_GLV_UPRCH_MAX_INDEX 383
-#define I40E_GLV_UPRCH_UPRCH_SHIFT 0
-#define I40E_GLV_UPRCH_UPRCH_MASK I40E_MASK(0xFFFF, I40E_GLV_UPRCH_UPRCH_SHIFT)
 #define I40E_GLV_UPRCL(_i) (0x0036c000 + ((_i) * 8)) /* _i=0...383 */ /* Reset: CORER */
-#define I40E_GLV_UPRCL_MAX_INDEX 383
-#define I40E_GLV_UPRCL_UPRCL_SHIFT 0
-#define I40E_GLV_UPRCL_UPRCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLV_UPRCL_UPRCL_SHIFT)
 #define I40E_GLV_UPTCH(_i) (0x0033C004 + ((_i) * 8)) /* _i=0...383 */ /* Reset: CORER */
-#define I40E_GLV_UPTCH_MAX_INDEX 383
-#define I40E_GLV_UPTCH_GLVUPTCH_SHIFT 0
-#define I40E_GLV_UPTCH_GLVUPTCH_MASK I40E_MASK(0xFFFF, I40E_GLV_UPTCH_GLVUPTCH_SHIFT)
 #define I40E_GLV_UPTCL(_i) (0x0033c000 + ((_i) * 8)) /* _i=0...383 */ /* Reset: CORER */
-#define I40E_GLV_UPTCL_MAX_INDEX 383
-#define I40E_GLV_UPTCL_UPTCL_SHIFT 0
-#define I40E_GLV_UPTCL_UPTCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLV_UPTCL_UPTCL_SHIFT)
 #define I40E_GLVEBTC_RBCH(_i, _j) (0x00364004 + ((_i) * 8 + (_j) * 64)) /* _i=0...7, _j=0...15 */ /* Reset: CORER */
-#define I40E_GLVEBTC_RBCH_MAX_INDEX 7
-#define I40E_GLVEBTC_RBCH_TCBCH_SHIFT 0
-#define I40E_GLVEBTC_RBCH_TCBCH_MASK I40E_MASK(0xFFFF, I40E_GLVEBTC_RBCH_TCBCH_SHIFT)
 #define I40E_GLVEBTC_RBCL(_i, _j) (0x00364000 + ((_i) * 8 + (_j) * 64)) /* _i=0...7, _j=0...15 */ /* Reset: CORER */
-#define I40E_GLVEBTC_RBCL_MAX_INDEX 7
-#define I40E_GLVEBTC_RBCL_TCBCL_SHIFT 0
-#define I40E_GLVEBTC_RBCL_TCBCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLVEBTC_RBCL_TCBCL_SHIFT)
 #define I40E_GLVEBTC_RPCH(_i, _j) (0x00368004 + ((_i) * 8 + (_j) * 64)) /* _i=0...7, _j=0...15 */ /* Reset: CORER */
-#define I40E_GLVEBTC_RPCH_MAX_INDEX 7
-#define I40E_GLVEBTC_RPCH_TCPCH_SHIFT 0
-#define I40E_GLVEBTC_RPCH_TCPCH_MASK I40E_MASK(0xFFFF, I40E_GLVEBTC_RPCH_TCPCH_SHIFT)
 #define I40E_GLVEBTC_RPCL(_i, _j) (0x00368000 + ((_i) * 8 + (_j) * 64)) /* _i=0...7, _j=0...15 */ /* Reset: CORER */
-#define I40E_GLVEBTC_RPCL_MAX_INDEX 7
-#define I40E_GLVEBTC_RPCL_TCPCL_SHIFT 0
-#define I40E_GLVEBTC_RPCL_TCPCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLVEBTC_RPCL_TCPCL_SHIFT)
 #define I40E_GLVEBTC_TBCH(_i, _j) (0x00334004 + ((_i) * 8 + (_j) * 64)) /* _i=0...7, _j=0...15 */ /* Reset: CORER */
-#define I40E_GLVEBTC_TBCH_MAX_INDEX 7
-#define I40E_GLVEBTC_TBCH_TCBCH_SHIFT 0
-#define I40E_GLVEBTC_TBCH_TCBCH_MASK I40E_MASK(0xFFFF, I40E_GLVEBTC_TBCH_TCBCH_SHIFT)
 #define I40E_GLVEBTC_TBCL(_i, _j) (0x00334000 + ((_i) * 8 + (_j) * 64)) /* _i=0...7, _j=0...15 */ /* Reset: CORER */
-#define I40E_GLVEBTC_TBCL_MAX_INDEX 7
-#define I40E_GLVEBTC_TBCL_TCBCL_SHIFT 0
-#define I40E_GLVEBTC_TBCL_TCBCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLVEBTC_TBCL_TCBCL_SHIFT)
 #define I40E_GLVEBTC_TPCH(_i, _j) (0x00338004 + ((_i) * 8 + (_j) * 64)) /* _i=0...7, _j=0...15 */ /* Reset: CORER */
-#define I40E_GLVEBTC_TPCH_MAX_INDEX 7
-#define I40E_GLVEBTC_TPCH_TCPCH_SHIFT 0
-#define I40E_GLVEBTC_TPCH_TCPCH_MASK I40E_MASK(0xFFFF, I40E_GLVEBTC_TPCH_TCPCH_SHIFT)
 #define I40E_GLVEBTC_TPCL(_i, _j) (0x00338000 + ((_i) * 8 + (_j) * 64)) /* _i=0...7, _j=0...15 */ /* Reset: CORER */
-#define I40E_GLVEBTC_TPCL_MAX_INDEX 7
-#define I40E_GLVEBTC_TPCL_TCPCL_SHIFT 0
-#define I40E_GLVEBTC_TPCL_TCPCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLVEBTC_TPCL_TCPCL_SHIFT)
-#define I40E_GLVEBVL_BPCH(_i) (0x00374804 + ((_i) * 8)) /* _i=0...127 */ /* Reset: CORER */
-#define I40E_GLVEBVL_BPCH_MAX_INDEX 127
-#define I40E_GLVEBVL_BPCH_VLBPCH_SHIFT 0
-#define I40E_GLVEBVL_BPCH_VLBPCH_MASK I40E_MASK(0xFFFF, I40E_GLVEBVL_BPCH_VLBPCH_SHIFT)
-#define I40E_GLVEBVL_BPCL(_i) (0x00374800 + ((_i) * 8)) /* _i=0...127 */ /* Reset: CORER */
-#define I40E_GLVEBVL_BPCL_MAX_INDEX 127
-#define I40E_GLVEBVL_BPCL_VLBPCL_SHIFT 0
-#define I40E_GLVEBVL_BPCL_VLBPCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLVEBVL_BPCL_VLBPCL_SHIFT)
-#define I40E_GLVEBVL_GORCH(_i) (0x00360004 + ((_i) * 8)) /* _i=0...127 */ /* Reset: CORER */
-#define I40E_GLVEBVL_GORCH_MAX_INDEX 127
-#define I40E_GLVEBVL_GORCH_VLBCH_SHIFT 0
-#define I40E_GLVEBVL_GORCH_VLBCH_MASK I40E_MASK(0xFFFF, I40E_GLVEBVL_GORCH_VLBCH_SHIFT)
-#define I40E_GLVEBVL_GORCL(_i) (0x00360000 + ((_i) * 8)) /* _i=0...127 */ /* Reset: CORER */
-#define I40E_GLVEBVL_GORCL_MAX_INDEX 127
-#define I40E_GLVEBVL_GORCL_VLBCL_SHIFT 0
-#define I40E_GLVEBVL_GORCL_VLBCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLVEBVL_GORCL_VLBCL_SHIFT)
-#define I40E_GLVEBVL_GOTCH(_i) (0x00330004 + ((_i) * 8)) /* _i=0...127 */ /* Reset: CORER */
-#define I40E_GLVEBVL_GOTCH_MAX_INDEX 127
-#define I40E_GLVEBVL_GOTCH_VLBCH_SHIFT 0
-#define I40E_GLVEBVL_GOTCH_VLBCH_MASK I40E_MASK(0xFFFF, I40E_GLVEBVL_GOTCH_VLBCH_SHIFT)
-#define I40E_GLVEBVL_GOTCL(_i) (0x00330000 + ((_i) * 8)) /* _i=0...127 */ /* Reset: CORER */
-#define I40E_GLVEBVL_GOTCL_MAX_INDEX 127
-#define I40E_GLVEBVL_GOTCL_VLBCL_SHIFT 0
-#define I40E_GLVEBVL_GOTCL_VLBCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLVEBVL_GOTCL_VLBCL_SHIFT)
-#define I40E_GLVEBVL_MPCH(_i) (0x00374404 + ((_i) * 8)) /* _i=0...127 */ /* Reset: CORER */
-#define I40E_GLVEBVL_MPCH_MAX_INDEX 127
-#define I40E_GLVEBVL_MPCH_VLMPCH_SHIFT 0
-#define I40E_GLVEBVL_MPCH_VLMPCH_MASK I40E_MASK(0xFFFF, I40E_GLVEBVL_MPCH_VLMPCH_SHIFT)
-#define I40E_GLVEBVL_MPCL(_i) (0x00374400 + ((_i) * 8)) /* _i=0...127 */ /* Reset: CORER */
-#define I40E_GLVEBVL_MPCL_MAX_INDEX 127
-#define I40E_GLVEBVL_MPCL_VLMPCL_SHIFT 0
-#define I40E_GLVEBVL_MPCL_VLMPCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLVEBVL_MPCL_VLMPCL_SHIFT)
-#define I40E_GLVEBVL_UPCH(_i) (0x00374004 + ((_i) * 8)) /* _i=0...127 */ /* Reset: CORER */
-#define I40E_GLVEBVL_UPCH_MAX_INDEX 127
-#define I40E_GLVEBVL_UPCH_VLUPCH_SHIFT 0
-#define I40E_GLVEBVL_UPCH_VLUPCH_MASK I40E_MASK(0xFFFF, I40E_GLVEBVL_UPCH_VLUPCH_SHIFT)
-#define I40E_GLVEBVL_UPCL(_i) (0x00374000 + ((_i) * 8)) /* _i=0...127 */ /* Reset: CORER */
-#define I40E_GLVEBVL_UPCL_MAX_INDEX 127
-#define I40E_GLVEBVL_UPCL_VLUPCL_SHIFT 0
-#define I40E_GLVEBVL_UPCL_VLUPCL_MASK I40E_MASK(0xFFFFFFFF, I40E_GLVEBVL_UPCL_VLUPCL_SHIFT)
-#define I40E_GL_MTG_FLU_MSK_H 0x00269F4C /* Reset: CORER */
-#define I40E_GL_MTG_FLU_MSK_H_MASK_HIGH_SHIFT 0
-#define I40E_GL_MTG_FLU_MSK_H_MASK_HIGH_MASK I40E_MASK(0xFFFF, I40E_GL_MTG_FLU_MSK_H_MASK_HIGH_SHIFT)
-#define I40E_GL_SWR_DEF_ACT(_i) (0x00270200 + ((_i) * 4)) /* _i=0...35 */ /* Reset: CORER */
-#define I40E_GL_SWR_DEF_ACT_MAX_INDEX 35
-#define I40E_GL_SWR_DEF_ACT_DEF_ACTION_SHIFT 0
-#define I40E_GL_SWR_DEF_ACT_DEF_ACTION_MASK I40E_MASK(0xFFFFFFFF, I40E_GL_SWR_DEF_ACT_DEF_ACTION_SHIFT)
-#define I40E_GL_SWR_DEF_ACT_EN(_i) (0x0026CFB8 + ((_i) * 4)) /* _i=0...1 */ /* Reset: CORER */
-#define I40E_GL_SWR_DEF_ACT_EN_MAX_INDEX 1
-#define I40E_GL_SWR_DEF_ACT_EN_DEF_ACT_EN_BITMAP_SHIFT 0
-#define I40E_GL_SWR_DEF_ACT_EN_DEF_ACT_EN_BITMAP_MASK I40E_MASK(0xFFFFFFFF, I40E_GL_SWR_DEF_ACT_EN_DEF_ACT_EN_BITMAP_SHIFT)
-#define I40E_PRTTSYN_ADJ 0x001E4280 /* Reset: GLOBR */
-#define I40E_PRTTSYN_ADJ_TSYNADJ_SHIFT 0
-#define I40E_PRTTSYN_ADJ_TSYNADJ_MASK I40E_MASK(0x7FFFFFFF, I40E_PRTTSYN_ADJ_TSYNADJ_SHIFT)
-#define I40E_PRTTSYN_ADJ_SIGN_SHIFT 31
-#define I40E_PRTTSYN_ADJ_SIGN_MASK I40E_MASK(0x1, I40E_PRTTSYN_ADJ_SIGN_SHIFT)
-#define I40E_PRTTSYN_AUX_0(_i) (0x001E42A0 + ((_i) * 32)) /* _i=0...1 */ /* Reset: GLOBR */
-#define I40E_PRTTSYN_AUX_0_MAX_INDEX 1
-#define I40E_PRTTSYN_AUX_0_OUT_ENA_SHIFT 0
-#define I40E_PRTTSYN_AUX_0_OUT_ENA_MASK I40E_MASK(0x1, I40E_PRTTSYN_AUX_0_OUT_ENA_SHIFT)
-#define I40E_PRTTSYN_AUX_0_OUTMOD_SHIFT 1
-#define I40E_PRTTSYN_AUX_0_OUTMOD_MASK I40E_MASK(0x3, I40E_PRTTSYN_AUX_0_OUTMOD_SHIFT)
-#define I40E_PRTTSYN_AUX_0_OUTLVL_SHIFT 3
-#define I40E_PRTTSYN_AUX_0_OUTLVL_MASK I40E_MASK(0x1, I40E_PRTTSYN_AUX_0_OUTLVL_SHIFT)
-#define I40E_PRTTSYN_AUX_0_PULSEW_SHIFT 8
-#define I40E_PRTTSYN_AUX_0_PULSEW_MASK I40E_MASK(0xF, I40E_PRTTSYN_AUX_0_PULSEW_SHIFT)
-#define I40E_PRTTSYN_AUX_0_EVNTLVL_SHIFT 16
-#define I40E_PRTTSYN_AUX_0_EVNTLVL_MASK I40E_MASK(0x3, I40E_PRTTSYN_AUX_0_EVNTLVL_SHIFT)
-#define I40E_PRTTSYN_AUX_1(_i) (0x001E42E0 + ((_i) * 32)) /* _i=0...1 */ /* Reset: GLOBR */
-#define I40E_PRTTSYN_AUX_1_MAX_INDEX 1
-#define I40E_PRTTSYN_AUX_1_INSTNT_SHIFT 0
-#define I40E_PRTTSYN_AUX_1_INSTNT_MASK I40E_MASK(0x1, I40E_PRTTSYN_AUX_1_INSTNT_SHIFT)
-#define I40E_PRTTSYN_AUX_1_SAMPLE_TIME_SHIFT 1
-#define I40E_PRTTSYN_AUX_1_SAMPLE_TIME_MASK I40E_MASK(0x1, I40E_PRTTSYN_AUX_1_SAMPLE_TIME_SHIFT)
-#define I40E_PRTTSYN_CLKO(_i) (0x001E4240 + ((_i) * 32)) /* _i=0...1 */ /* Reset: GLOBR */
-#define I40E_PRTTSYN_CLKO_MAX_INDEX 1
-#define I40E_PRTTSYN_CLKO_TSYNCLKO_SHIFT 0
-#define I40E_PRTTSYN_CLKO_TSYNCLKO_MASK I40E_MASK(0xFFFFFFFF, I40E_PRTTSYN_CLKO_TSYNCLKO_SHIFT)
 #define I40E_PRTTSYN_CTL0 0x001E4200 /* Reset: GLOBR */
-#define I40E_PRTTSYN_CTL0_CLEAR_TSYNTIMER_SHIFT 0
-#define I40E_PRTTSYN_CTL0_CLEAR_TSYNTIMER_MASK I40E_MASK(0x1, I40E_PRTTSYN_CTL0_CLEAR_TSYNTIMER_SHIFT)
 #define I40E_PRTTSYN_CTL0_TXTIME_INT_ENA_SHIFT 1
 #define I40E_PRTTSYN_CTL0_TXTIME_INT_ENA_MASK I40E_MASK(0x1, I40E_PRTTSYN_CTL0_TXTIME_INT_ENA_SHIFT)
-#define I40E_PRTTSYN_CTL0_EVENT_INT_ENA_SHIFT 2
-#define I40E_PRTTSYN_CTL0_EVENT_INT_ENA_MASK I40E_MASK(0x1, I40E_PRTTSYN_CTL0_EVENT_INT_ENA_SHIFT)
-#define I40E_PRTTSYN_CTL0_TGT_INT_ENA_SHIFT 3
-#define I40E_PRTTSYN_CTL0_TGT_INT_ENA_MASK I40E_MASK(0x1, I40E_PRTTSYN_CTL0_TGT_INT_ENA_SHIFT)
 #define I40E_PRTTSYN_CTL0_PF_ID_SHIFT 8
 #define I40E_PRTTSYN_CTL0_PF_ID_MASK I40E_MASK(0xF, I40E_PRTTSYN_CTL0_PF_ID_SHIFT)
-#define I40E_PRTTSYN_CTL0_TSYNACT_SHIFT 12
-#define I40E_PRTTSYN_CTL0_TSYNACT_MASK I40E_MASK(0x3, I40E_PRTTSYN_CTL0_TSYNACT_SHIFT)
 #define I40E_PRTTSYN_CTL0_TSYNENA_SHIFT 31
 #define I40E_PRTTSYN_CTL0_TSYNENA_MASK I40E_MASK(0x1, I40E_PRTTSYN_CTL0_TSYNENA_SHIFT)
 #define I40E_PRTTSYN_CTL1 0x00085020 /* Reset: CORER */
 #define I40E_PRTTSYN_CTL1_V1MESSTYPE0_SHIFT 0
 #define I40E_PRTTSYN_CTL1_V1MESSTYPE0_MASK I40E_MASK(0xFF, I40E_PRTTSYN_CTL1_V1MESSTYPE0_SHIFT)
-#define I40E_PRTTSYN_CTL1_V1MESSTYPE1_SHIFT 8
-#define I40E_PRTTSYN_CTL1_V1MESSTYPE1_MASK I40E_MASK(0xFF, I40E_PRTTSYN_CTL1_V1MESSTYPE1_SHIFT)
 #define I40E_PRTTSYN_CTL1_V2MESSTYPE0_SHIFT 16
 #define I40E_PRTTSYN_CTL1_V2MESSTYPE0_MASK I40E_MASK(0xF, I40E_PRTTSYN_CTL1_V2MESSTYPE0_SHIFT)
-#define I40E_PRTTSYN_CTL1_V2MESSTYPE1_SHIFT 20
-#define I40E_PRTTSYN_CTL1_V2MESSTYPE1_MASK I40E_MASK(0xF, I40E_PRTTSYN_CTL1_V2MESSTYPE1_SHIFT)
 #define I40E_PRTTSYN_CTL1_TSYNTYPE_SHIFT 24
-#define I40E_PRTTSYN_CTL1_TSYNTYPE_MASK I40E_MASK(0x3, I40E_PRTTSYN_CTL1_TSYNTYPE_SHIFT)
 #define I40E_PRTTSYN_CTL1_UDP_ENA_SHIFT 26
 #define I40E_PRTTSYN_CTL1_UDP_ENA_MASK I40E_MASK(0x3, I40E_PRTTSYN_CTL1_UDP_ENA_SHIFT)
 #define I40E_PRTTSYN_CTL1_TSYNENA_SHIFT 31
 #define I40E_PRTTSYN_CTL1_TSYNENA_MASK I40E_MASK(0x1, I40E_PRTTSYN_CTL1_TSYNENA_SHIFT)
-#define I40E_PRTTSYN_EVNT_H(_i) (0x001E40C0 + ((_i) * 32)) /* _i=0...1 */ /* Reset: GLOBR */
-#define I40E_PRTTSYN_EVNT_H_MAX_INDEX 1
-#define I40E_PRTTSYN_EVNT_H_TSYNEVNT_H_SHIFT 0
-#define I40E_PRTTSYN_EVNT_H_TSYNEVNT_H_MASK I40E_MASK(0xFFFFFFFF, I40E_PRTTSYN_EVNT_H_TSYNEVNT_H_SHIFT)
-#define I40E_PRTTSYN_EVNT_L(_i) (0x001E4080 + ((_i) * 32)) /* _i=0...1 */ /* Reset: GLOBR */
-#define I40E_PRTTSYN_EVNT_L_MAX_INDEX 1
-#define I40E_PRTTSYN_EVNT_L_TSYNEVNT_L_SHIFT 0
-#define I40E_PRTTSYN_EVNT_L_TSYNEVNT_L_MASK I40E_MASK(0xFFFFFFFF, I40E_PRTTSYN_EVNT_L_TSYNEVNT_L_SHIFT)
 #define I40E_PRTTSYN_INC_H 0x001E4060 /* Reset: GLOBR */
-#define I40E_PRTTSYN_INC_H_TSYNINC_H_SHIFT 0
-#define I40E_PRTTSYN_INC_H_TSYNINC_H_MASK I40E_MASK(0x3F, I40E_PRTTSYN_INC_H_TSYNINC_H_SHIFT)
 #define I40E_PRTTSYN_INC_L 0x001E4040 /* Reset: GLOBR */
-#define I40E_PRTTSYN_INC_L_TSYNINC_L_SHIFT 0
-#define I40E_PRTTSYN_INC_L_TSYNINC_L_MASK I40E_MASK(0xFFFFFFFF, I40E_PRTTSYN_INC_L_TSYNINC_L_SHIFT)
 #define I40E_PRTTSYN_RXTIME_H(_i) (0x00085040 + ((_i) * 32)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_PRTTSYN_RXTIME_H_MAX_INDEX 3
-#define I40E_PRTTSYN_RXTIME_H_RXTIEM_H_SHIFT 0
-#define I40E_PRTTSYN_RXTIME_H_RXTIEM_H_MASK I40E_MASK(0xFFFFFFFF, I40E_PRTTSYN_RXTIME_H_RXTIEM_H_SHIFT)
 #define I40E_PRTTSYN_RXTIME_L(_i) (0x000850C0 + ((_i) * 32)) /* _i=0...3 */ /* Reset: CORER */
-#define I40E_PRTTSYN_RXTIME_L_MAX_INDEX 3
-#define I40E_PRTTSYN_RXTIME_L_RXTIEM_L_SHIFT 0
-#define I40E_PRTTSYN_RXTIME_L_RXTIEM_L_MASK I40E_MASK(0xFFFFFFFF, I40E_PRTTSYN_RXTIME_L_RXTIEM_L_SHIFT)
 #define I40E_PRTTSYN_STAT_0 0x001E4220 /* Reset: GLOBR */
-#define I40E_PRTTSYN_STAT_0_EVENT0_SHIFT 0
-#define I40E_PRTTSYN_STAT_0_EVENT0_MASK I40E_MASK(0x1, I40E_PRTTSYN_STAT_0_EVENT0_SHIFT)
-#define I40E_PRTTSYN_STAT_0_EVENT1_SHIFT 1
-#define I40E_PRTTSYN_STAT_0_EVENT1_MASK I40E_MASK(0x1, I40E_PRTTSYN_STAT_0_EVENT1_SHIFT)
-#define I40E_PRTTSYN_STAT_0_TGT0_SHIFT 2
-#define I40E_PRTTSYN_STAT_0_TGT0_MASK I40E_MASK(0x1, I40E_PRTTSYN_STAT_0_TGT0_SHIFT)
-#define I40E_PRTTSYN_STAT_0_TGT1_SHIFT 3
-#define I40E_PRTTSYN_STAT_0_TGT1_MASK I40E_MASK(0x1, I40E_PRTTSYN_STAT_0_TGT1_SHIFT)
 #define I40E_PRTTSYN_STAT_0_TXTIME_SHIFT 4
 #define I40E_PRTTSYN_STAT_0_TXTIME_MASK I40E_MASK(0x1, I40E_PRTTSYN_STAT_0_TXTIME_SHIFT)
 #define I40E_PRTTSYN_STAT_1 0x00085140 /* Reset: CORER */
-#define I40E_PRTTSYN_STAT_1_RXT0_SHIFT 0
-#define I40E_PRTTSYN_STAT_1_RXT0_MASK I40E_MASK(0x1, I40E_PRTTSYN_STAT_1_RXT0_SHIFT)
-#define I40E_PRTTSYN_STAT_1_RXT1_SHIFT 1
-#define I40E_PRTTSYN_STAT_1_RXT1_MASK I40E_MASK(0x1, I40E_PRTTSYN_STAT_1_RXT1_SHIFT)
-#define I40E_PRTTSYN_STAT_1_RXT2_SHIFT 2
-#define I40E_PRTTSYN_STAT_1_RXT2_MASK I40E_MASK(0x1, I40E_PRTTSYN_STAT_1_RXT2_SHIFT)
-#define I40E_PRTTSYN_STAT_1_RXT3_SHIFT 3
-#define I40E_PRTTSYN_STAT_1_RXT3_MASK I40E_MASK(0x1, I40E_PRTTSYN_STAT_1_RXT3_SHIFT)
-#define I40E_PRTTSYN_TGT_H(_i) (0x001E4180 + ((_i) * 32)) /* _i=0...1 */ /* Reset: GLOBR */
-#define I40E_PRTTSYN_TGT_H_MAX_INDEX 1
-#define I40E_PRTTSYN_TGT_H_TSYNTGTT_H_SHIFT 0
-#define I40E_PRTTSYN_TGT_H_TSYNTGTT_H_MASK I40E_MASK(0xFFFFFFFF, I40E_PRTTSYN_TGT_H_TSYNTGTT_H_SHIFT)
-#define I40E_PRTTSYN_TGT_L(_i) (0x001E4140 + ((_i) * 32)) /* _i=0...1 */ /* Reset: GLOBR */
-#define I40E_PRTTSYN_TGT_L_MAX_INDEX 1
-#define I40E_PRTTSYN_TGT_L_TSYNTGTT_L_SHIFT 0
-#define I40E_PRTTSYN_TGT_L_TSYNTGTT_L_MASK I40E_MASK(0xFFFFFFFF, I40E_PRTTSYN_TGT_L_TSYNTGTT_L_SHIFT)
 #define I40E_PRTTSYN_TIME_H 0x001E4120 /* Reset: GLOBR */
-#define I40E_PRTTSYN_TIME_H_TSYNTIME_H_SHIFT 0
-#define I40E_PRTTSYN_TIME_H_TSYNTIME_H_MASK I40E_MASK(0xFFFFFFFF, I40E_PRTTSYN_TIME_H_TSYNTIME_H_SHIFT)
 #define I40E_PRTTSYN_TIME_L 0x001E4100 /* Reset: GLOBR */
-#define I40E_PRTTSYN_TIME_L_TSYNTIME_L_SHIFT 0
-#define I40E_PRTTSYN_TIME_L_TSYNTIME_L_MASK I40E_MASK(0xFFFFFFFF, I40E_PRTTSYN_TIME_L_TSYNTIME_L_SHIFT)
 #define I40E_PRTTSYN_TXTIME_H 0x001E41E0 /* Reset: GLOBR */
-#define I40E_PRTTSYN_TXTIME_H_TXTIEM_H_SHIFT 0
-#define I40E_PRTTSYN_TXTIME_H_TXTIEM_H_MASK I40E_MASK(0xFFFFFFFF, I40E_PRTTSYN_TXTIME_H_TXTIEM_H_SHIFT)
 #define I40E_PRTTSYN_TXTIME_L 0x001E41C0 /* Reset: GLOBR */
-#define I40E_PRTTSYN_TXTIME_L_TXTIEM_L_SHIFT 0
-#define I40E_PRTTSYN_TXTIME_L_TXTIEM_L_MASK I40E_MASK(0xFFFFFFFF, I40E_PRTTSYN_TXTIME_L_TXTIEM_L_SHIFT)
 #define I40E_GL_MDET_RX 0x0012A510 /* Reset: CORER */
 #define I40E_GL_MDET_RX_FUNCTION_SHIFT 0
 #define I40E_GL_MDET_RX_FUNCTION_MASK I40E_MASK(0xFF, I40E_GL_MDET_RX_FUNCTION_SHIFT)
@@ -3033,2304 +620,53 @@
 #define I40E_PF_VT_PFALLOC_VALID_SHIFT 31
 #define I40E_PF_VT_PFALLOC_VALID_MASK I40E_MASK(0x1u, I40E_PF_VT_PFALLOC_VALID_SHIFT)
 #define I40E_VP_MDET_RX(_VF) (0x0012A000 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: CORER */
-#define I40E_VP_MDET_RX_MAX_INDEX 127
 #define I40E_VP_MDET_RX_VALID_SHIFT 0
 #define I40E_VP_MDET_RX_VALID_MASK I40E_MASK(0x1, I40E_VP_MDET_RX_VALID_SHIFT)
 #define I40E_VP_MDET_TX(_VF) (0x000E6000 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: CORER */
-#define I40E_VP_MDET_TX_MAX_INDEX 127
 #define I40E_VP_MDET_TX_VALID_SHIFT 0
 #define I40E_VP_MDET_TX_VALID_MASK I40E_MASK(0x1, I40E_VP_MDET_TX_VALID_SHIFT)
-#define I40E_GLPM_WUMC 0x0006C800 /* Reset: POR */
-#define I40E_GLPM_WUMC_NOTCO_SHIFT 0
-#define I40E_GLPM_WUMC_NOTCO_MASK I40E_MASK(0x1, I40E_GLPM_WUMC_NOTCO_SHIFT)
-#define I40E_GLPM_WUMC_SRST_PIN_VAL_SHIFT 1
-#define I40E_GLPM_WUMC_SRST_PIN_VAL_MASK I40E_MASK(0x1, I40E_GLPM_WUMC_SRST_PIN_VAL_SHIFT)
-#define I40E_GLPM_WUMC_ROL_MODE_SHIFT 2
-#define I40E_GLPM_WUMC_ROL_MODE_MASK I40E_MASK(0x1, I40E_GLPM_WUMC_ROL_MODE_SHIFT)
-#define I40E_GLPM_WUMC_RESERVED_4_SHIFT 3
-#define I40E_GLPM_WUMC_RESERVED_4_MASK I40E_MASK(0x1FFF, I40E_GLPM_WUMC_RESERVED_4_SHIFT)
-#define I40E_GLPM_WUMC_MNG_WU_PF_SHIFT 16
-#define I40E_GLPM_WUMC_MNG_WU_PF_MASK I40E_MASK(0xFFFF, I40E_GLPM_WUMC_MNG_WU_PF_SHIFT)
 #define I40E_PFPM_APM 0x000B8080 /* Reset: POR */
 #define I40E_PFPM_APM_APME_SHIFT 0
 #define I40E_PFPM_APM_APME_MASK I40E_MASK(0x1, I40E_PFPM_APM_APME_SHIFT)
-#define I40E_PFPM_FHFT_LENGTH(_i) (0x0006A000 + ((_i) * 128)) /* _i=0...7 */ /* Reset: POR */
-#define I40E_PFPM_FHFT_LENGTH_MAX_INDEX 7
-#define I40E_PFPM_FHFT_LENGTH_LENGTH_SHIFT 0
-#define I40E_PFPM_FHFT_LENGTH_LENGTH_MASK I40E_MASK(0xFF, I40E_PFPM_FHFT_LENGTH_LENGTH_SHIFT)
-#define I40E_PFPM_WUC 0x0006B200 /* Reset: POR */
-#define I40E_PFPM_WUC_EN_APM_D0_SHIFT 5
-#define I40E_PFPM_WUC_EN_APM_D0_MASK I40E_MASK(0x1, I40E_PFPM_WUC_EN_APM_D0_SHIFT)
 #define I40E_PFPM_WUFC 0x0006B400 /* Reset: POR */
-#define I40E_PFPM_WUFC_LNKC_SHIFT 0
-#define I40E_PFPM_WUFC_LNKC_MASK I40E_MASK(0x1, I40E_PFPM_WUFC_LNKC_SHIFT)
 #define I40E_PFPM_WUFC_MAG_SHIFT 1
 #define I40E_PFPM_WUFC_MAG_MASK I40E_MASK(0x1, I40E_PFPM_WUFC_MAG_SHIFT)
-#define I40E_PFPM_WUFC_MNG_SHIFT 3
-#define I40E_PFPM_WUFC_MNG_MASK I40E_MASK(0x1, I40E_PFPM_WUFC_MNG_SHIFT)
-#define I40E_PFPM_WUFC_FLX0_ACT_SHIFT 4
-#define I40E_PFPM_WUFC_FLX0_ACT_MASK I40E_MASK(0x1, I40E_PFPM_WUFC_FLX0_ACT_SHIFT)
-#define I40E_PFPM_WUFC_FLX1_ACT_SHIFT 5
-#define I40E_PFPM_WUFC_FLX1_ACT_MASK I40E_MASK(0x1, I40E_PFPM_WUFC_FLX1_ACT_SHIFT)
-#define I40E_PFPM_WUFC_FLX2_ACT_SHIFT 6
-#define I40E_PFPM_WUFC_FLX2_ACT_MASK I40E_MASK(0x1, I40E_PFPM_WUFC_FLX2_ACT_SHIFT)
-#define I40E_PFPM_WUFC_FLX3_ACT_SHIFT 7
-#define I40E_PFPM_WUFC_FLX3_ACT_MASK I40E_MASK(0x1, I40E_PFPM_WUFC_FLX3_ACT_SHIFT)
-#define I40E_PFPM_WUFC_FLX4_ACT_SHIFT 8
-#define I40E_PFPM_WUFC_FLX4_ACT_MASK I40E_MASK(0x1, I40E_PFPM_WUFC_FLX4_ACT_SHIFT)
-#define I40E_PFPM_WUFC_FLX5_ACT_SHIFT 9
-#define I40E_PFPM_WUFC_FLX5_ACT_MASK I40E_MASK(0x1, I40E_PFPM_WUFC_FLX5_ACT_SHIFT)
-#define I40E_PFPM_WUFC_FLX6_ACT_SHIFT 10
-#define I40E_PFPM_WUFC_FLX6_ACT_MASK I40E_MASK(0x1, I40E_PFPM_WUFC_FLX6_ACT_SHIFT)
-#define I40E_PFPM_WUFC_FLX7_ACT_SHIFT 11
-#define I40E_PFPM_WUFC_FLX7_ACT_MASK I40E_MASK(0x1, I40E_PFPM_WUFC_FLX7_ACT_SHIFT)
-#define I40E_PFPM_WUFC_FLX0_SHIFT 16
-#define I40E_PFPM_WUFC_FLX0_MASK I40E_MASK(0x1, I40E_PFPM_WUFC_FLX0_SHIFT)
-#define I40E_PFPM_WUFC_FLX1_SHIFT 17
-#define I40E_PFPM_WUFC_FLX1_MASK I40E_MASK(0x1, I40E_PFPM_WUFC_FLX1_SHIFT)
-#define I40E_PFPM_WUFC_FLX2_SHIFT 18
-#define I40E_PFPM_WUFC_FLX2_MASK I40E_MASK(0x1, I40E_PFPM_WUFC_FLX2_SHIFT)
-#define I40E_PFPM_WUFC_FLX3_SHIFT 19
-#define I40E_PFPM_WUFC_FLX3_MASK I40E_MASK(0x1, I40E_PFPM_WUFC_FLX3_SHIFT)
-#define I40E_PFPM_WUFC_FLX4_SHIFT 20
-#define I40E_PFPM_WUFC_FLX4_MASK I40E_MASK(0x1, I40E_PFPM_WUFC_FLX4_SHIFT)
-#define I40E_PFPM_WUFC_FLX5_SHIFT 21
-#define I40E_PFPM_WUFC_FLX5_MASK I40E_MASK(0x1, I40E_PFPM_WUFC_FLX5_SHIFT)
-#define I40E_PFPM_WUFC_FLX6_SHIFT 22
-#define I40E_PFPM_WUFC_FLX6_MASK I40E_MASK(0x1, I40E_PFPM_WUFC_FLX6_SHIFT)
-#define I40E_PFPM_WUFC_FLX7_SHIFT 23
-#define I40E_PFPM_WUFC_FLX7_MASK I40E_MASK(0x1, I40E_PFPM_WUFC_FLX7_SHIFT)
-#define I40E_PFPM_WUFC_FW_RST_WK_SHIFT 31
-#define I40E_PFPM_WUFC_FW_RST_WK_MASK I40E_MASK(0x1, I40E_PFPM_WUFC_FW_RST_WK_SHIFT)
-#define I40E_PFPM_WUS 0x0006B600 /* Reset: POR */
-#define I40E_PFPM_WUS_LNKC_SHIFT 0
-#define I40E_PFPM_WUS_LNKC_MASK I40E_MASK(0x1, I40E_PFPM_WUS_LNKC_SHIFT)
-#define I40E_PFPM_WUS_MAG_SHIFT 1
-#define I40E_PFPM_WUS_MAG_MASK I40E_MASK(0x1, I40E_PFPM_WUS_MAG_SHIFT)
-#define I40E_PFPM_WUS_PME_STATUS_SHIFT 2
-#define I40E_PFPM_WUS_PME_STATUS_MASK I40E_MASK(0x1, I40E_PFPM_WUS_PME_STATUS_SHIFT)
-#define I40E_PFPM_WUS_MNG_SHIFT 3
-#define I40E_PFPM_WUS_MNG_MASK I40E_MASK(0x1, I40E_PFPM_WUS_MNG_SHIFT)
-#define I40E_PFPM_WUS_FLX0_SHIFT 16
-#define I40E_PFPM_WUS_FLX0_MASK I40E_MASK(0x1, I40E_PFPM_WUS_FLX0_SHIFT)
-#define I40E_PFPM_WUS_FLX1_SHIFT 17
-#define I40E_PFPM_WUS_FLX1_MASK I40E_MASK(0x1, I40E_PFPM_WUS_FLX1_SHIFT)
-#define I40E_PFPM_WUS_FLX2_SHIFT 18
-#define I40E_PFPM_WUS_FLX2_MASK I40E_MASK(0x1, I40E_PFPM_WUS_FLX2_SHIFT)
-#define I40E_PFPM_WUS_FLX3_SHIFT 19
-#define I40E_PFPM_WUS_FLX3_MASK I40E_MASK(0x1, I40E_PFPM_WUS_FLX3_SHIFT)
-#define I40E_PFPM_WUS_FLX4_SHIFT 20
-#define I40E_PFPM_WUS_FLX4_MASK I40E_MASK(0x1, I40E_PFPM_WUS_FLX4_SHIFT)
-#define I40E_PFPM_WUS_FLX5_SHIFT 21
-#define I40E_PFPM_WUS_FLX5_MASK I40E_MASK(0x1, I40E_PFPM_WUS_FLX5_SHIFT)
-#define I40E_PFPM_WUS_FLX6_SHIFT 22
-#define I40E_PFPM_WUS_FLX6_MASK I40E_MASK(0x1, I40E_PFPM_WUS_FLX6_SHIFT)
-#define I40E_PFPM_WUS_FLX7_SHIFT 23
-#define I40E_PFPM_WUS_FLX7_MASK I40E_MASK(0x1, I40E_PFPM_WUS_FLX7_SHIFT)
-#define I40E_PFPM_WUS_FW_RST_WK_SHIFT 31
-#define I40E_PFPM_WUS_FW_RST_WK_MASK I40E_MASK(0x1, I40E_PFPM_WUS_FW_RST_WK_SHIFT)
-#define I40E_PRTPM_FHFHR 0x0006C000 /* Reset: POR */
-#define I40E_PRTPM_FHFHR_UNICAST_SHIFT 0
-#define I40E_PRTPM_FHFHR_UNICAST_MASK I40E_MASK(0x1, I40E_PRTPM_FHFHR_UNICAST_SHIFT)
-#define I40E_PRTPM_FHFHR_MULTICAST_SHIFT 1
-#define I40E_PRTPM_FHFHR_MULTICAST_MASK I40E_MASK(0x1, I40E_PRTPM_FHFHR_MULTICAST_SHIFT)
-#define I40E_PRTPM_SAH(_i) (0x001E44C0 + ((_i) * 32)) /* _i=0...3 */ /* Reset: PFR */
-#define I40E_PRTPM_SAH_MAX_INDEX 3
-#define I40E_PRTPM_SAH_PFPM_SAH_SHIFT 0
-#define I40E_PRTPM_SAH_PFPM_SAH_MASK I40E_MASK(0xFFFF, I40E_PRTPM_SAH_PFPM_SAH_SHIFT)
-#define I40E_PRTPM_SAH_PF_NUM_SHIFT 26
-#define I40E_PRTPM_SAH_PF_NUM_MASK I40E_MASK(0xF, I40E_PRTPM_SAH_PF_NUM_SHIFT)
-#define I40E_PRTPM_SAH_MC_MAG_EN_SHIFT 30
-#define I40E_PRTPM_SAH_MC_MAG_EN_MASK I40E_MASK(0x1, I40E_PRTPM_SAH_MC_MAG_EN_SHIFT)
-#define I40E_PRTPM_SAH_AV_SHIFT 31
-#define I40E_PRTPM_SAH_AV_MASK I40E_MASK(0x1, I40E_PRTPM_SAH_AV_SHIFT)
-#define I40E_PRTPM_SAL(_i) (0x001E4440 + ((_i) * 32)) /* _i=0...3 */ /* Reset: PFR */
-#define I40E_PRTPM_SAL_MAX_INDEX 3
-#define I40E_PRTPM_SAL_PFPM_SAL_SHIFT 0
-#define I40E_PRTPM_SAL_PFPM_SAL_MASK I40E_MASK(0xFFFFFFFF, I40E_PRTPM_SAL_PFPM_SAL_SHIFT)
 #define I40E_VF_ARQBAH1 0x00006000 /* Reset: EMPR */
-#define I40E_VF_ARQBAH1_ARQBAH_SHIFT 0
-#define I40E_VF_ARQBAH1_ARQBAH_MASK I40E_MASK(0xFFFFFFFF, I40E_VF_ARQBAH1_ARQBAH_SHIFT)
 #define I40E_VF_ARQBAL1 0x00006C00 /* Reset: EMPR */
-#define I40E_VF_ARQBAL1_ARQBAL_SHIFT 0
-#define I40E_VF_ARQBAL1_ARQBAL_MASK I40E_MASK(0xFFFFFFFF, I40E_VF_ARQBAL1_ARQBAL_SHIFT)
 #define I40E_VF_ARQH1 0x00007400 /* Reset: EMPR */
-#define I40E_VF_ARQH1_ARQH_SHIFT 0
-#define I40E_VF_ARQH1_ARQH_MASK I40E_MASK(0x3FF, I40E_VF_ARQH1_ARQH_SHIFT)
 #define I40E_VF_ARQLEN1 0x00008000 /* Reset: EMPR */
-#define I40E_VF_ARQLEN1_ARQLEN_SHIFT 0
-#define I40E_VF_ARQLEN1_ARQLEN_MASK I40E_MASK(0x3FF, I40E_VF_ARQLEN1_ARQLEN_SHIFT)
-#define I40E_VF_ARQLEN1_ARQVFE_SHIFT 28
-#define I40E_VF_ARQLEN1_ARQVFE_MASK I40E_MASK(0x1, I40E_VF_ARQLEN1_ARQVFE_SHIFT)
-#define I40E_VF_ARQLEN1_ARQOVFL_SHIFT 29
-#define I40E_VF_ARQLEN1_ARQOVFL_MASK I40E_MASK(0x1, I40E_VF_ARQLEN1_ARQOVFL_SHIFT)
-#define I40E_VF_ARQLEN1_ARQCRIT_SHIFT 30
-#define I40E_VF_ARQLEN1_ARQCRIT_MASK I40E_MASK(0x1, I40E_VF_ARQLEN1_ARQCRIT_SHIFT)
-#define I40E_VF_ARQLEN1_ARQENABLE_SHIFT 31
-#define I40E_VF_ARQLEN1_ARQENABLE_MASK I40E_MASK(0x1u, I40E_VF_ARQLEN1_ARQENABLE_SHIFT)
 #define I40E_VF_ARQT1 0x00007000 /* Reset: EMPR */
-#define I40E_VF_ARQT1_ARQT_SHIFT 0
-#define I40E_VF_ARQT1_ARQT_MASK I40E_MASK(0x3FF, I40E_VF_ARQT1_ARQT_SHIFT)
 #define I40E_VF_ATQBAH1 0x00007800 /* Reset: EMPR */
-#define I40E_VF_ATQBAH1_ATQBAH_SHIFT 0
-#define I40E_VF_ATQBAH1_ATQBAH_MASK I40E_MASK(0xFFFFFFFF, I40E_VF_ATQBAH1_ATQBAH_SHIFT)
 #define I40E_VF_ATQBAL1 0x00007C00 /* Reset: EMPR */
-#define I40E_VF_ATQBAL1_ATQBAL_SHIFT 0
-#define I40E_VF_ATQBAL1_ATQBAL_MASK I40E_MASK(0xFFFFFFFF, I40E_VF_ATQBAL1_ATQBAL_SHIFT)
 #define I40E_VF_ATQH1 0x00006400 /* Reset: EMPR */
-#define I40E_VF_ATQH1_ATQH_SHIFT 0
-#define I40E_VF_ATQH1_ATQH_MASK I40E_MASK(0x3FF, I40E_VF_ATQH1_ATQH_SHIFT)
 #define I40E_VF_ATQLEN1 0x00006800 /* Reset: EMPR */
-#define I40E_VF_ATQLEN1_ATQLEN_SHIFT 0
-#define I40E_VF_ATQLEN1_ATQLEN_MASK I40E_MASK(0x3FF, I40E_VF_ATQLEN1_ATQLEN_SHIFT)
-#define I40E_VF_ATQLEN1_ATQVFE_SHIFT 28
-#define I40E_VF_ATQLEN1_ATQVFE_MASK I40E_MASK(0x1, I40E_VF_ATQLEN1_ATQVFE_SHIFT)
-#define I40E_VF_ATQLEN1_ATQOVFL_SHIFT 29
-#define I40E_VF_ATQLEN1_ATQOVFL_MASK I40E_MASK(0x1, I40E_VF_ATQLEN1_ATQOVFL_SHIFT)
-#define I40E_VF_ATQLEN1_ATQCRIT_SHIFT 30
-#define I40E_VF_ATQLEN1_ATQCRIT_MASK I40E_MASK(0x1, I40E_VF_ATQLEN1_ATQCRIT_SHIFT)
-#define I40E_VF_ATQLEN1_ATQENABLE_SHIFT 31
-#define I40E_VF_ATQLEN1_ATQENABLE_MASK I40E_MASK(0x1u, I40E_VF_ATQLEN1_ATQENABLE_SHIFT)
 #define I40E_VF_ATQT1 0x00008400 /* Reset: EMPR */
-#define I40E_VF_ATQT1_ATQT_SHIFT 0
-#define I40E_VF_ATQT1_ATQT_MASK I40E_MASK(0x3FF, I40E_VF_ATQT1_ATQT_SHIFT)
-#define I40E_VFGEN_RSTAT 0x00008800 /* Reset: VFR */
-#define I40E_VFGEN_RSTAT_VFR_STATE_SHIFT 0
-#define I40E_VFGEN_RSTAT_VFR_STATE_MASK I40E_MASK(0x3, I40E_VFGEN_RSTAT_VFR_STATE_SHIFT)
-#define I40E_VFINT_DYN_CTL01 0x00005C00 /* Reset: VFR */
-#define I40E_VFINT_DYN_CTL01_INTENA_SHIFT 0
-#define I40E_VFINT_DYN_CTL01_INTENA_MASK I40E_MASK(0x1, I40E_VFINT_DYN_CTL01_INTENA_SHIFT)
-#define I40E_VFINT_DYN_CTL01_CLEARPBA_SHIFT 1
-#define I40E_VFINT_DYN_CTL01_CLEARPBA_MASK I40E_MASK(0x1, I40E_VFINT_DYN_CTL01_CLEARPBA_SHIFT)
-#define I40E_VFINT_DYN_CTL01_SWINT_TRIG_SHIFT 2
-#define I40E_VFINT_DYN_CTL01_SWINT_TRIG_MASK I40E_MASK(0x1, I40E_VFINT_DYN_CTL01_SWINT_TRIG_SHIFT)
-#define I40E_VFINT_DYN_CTL01_ITR_INDX_SHIFT 3
-#define I40E_VFINT_DYN_CTL01_ITR_INDX_MASK I40E_MASK(0x3, I40E_VFINT_DYN_CTL01_ITR_INDX_SHIFT)
-#define I40E_VFINT_DYN_CTL01_INTERVAL_SHIFT 5
-#define I40E_VFINT_DYN_CTL01_INTERVAL_MASK I40E_MASK(0xFFF, I40E_VFINT_DYN_CTL01_INTERVAL_SHIFT)
-#define I40E_VFINT_DYN_CTL01_SW_ITR_INDX_ENA_SHIFT 24
-#define I40E_VFINT_DYN_CTL01_SW_ITR_INDX_ENA_MASK I40E_MASK(0x1, I40E_VFINT_DYN_CTL01_SW_ITR_INDX_ENA_SHIFT)
-#define I40E_VFINT_DYN_CTL01_SW_ITR_INDX_SHIFT 25
-#define I40E_VFINT_DYN_CTL01_SW_ITR_INDX_MASK I40E_MASK(0x3, I40E_VFINT_DYN_CTL01_SW_ITR_INDX_SHIFT)
-#define I40E_VFINT_DYN_CTL01_INTENA_MSK_SHIFT 31
-#define I40E_VFINT_DYN_CTL01_INTENA_MSK_MASK I40E_MASK(0x1, I40E_VFINT_DYN_CTL01_INTENA_MSK_SHIFT)
-#define I40E_VFINT_DYN_CTLN1(_INTVF) (0x00003800 + ((_INTVF) * 4)) /* _i=0...15 */ /* Reset: VFR */
-#define I40E_VFINT_DYN_CTLN1_MAX_INDEX 15
-#define I40E_VFINT_DYN_CTLN1_INTENA_SHIFT 0
-#define I40E_VFINT_DYN_CTLN1_INTENA_MASK I40E_MASK(0x1, I40E_VFINT_DYN_CTLN1_INTENA_SHIFT)
-#define I40E_VFINT_DYN_CTLN1_CLEARPBA_SHIFT 1
-#define I40E_VFINT_DYN_CTLN1_CLEARPBA_MASK I40E_MASK(0x1, I40E_VFINT_DYN_CTLN1_CLEARPBA_SHIFT)
-#define I40E_VFINT_DYN_CTLN1_SWINT_TRIG_SHIFT 2
-#define I40E_VFINT_DYN_CTLN1_SWINT_TRIG_MASK I40E_MASK(0x1, I40E_VFINT_DYN_CTLN1_SWINT_TRIG_SHIFT)
-#define I40E_VFINT_DYN_CTLN1_ITR_INDX_SHIFT 3
-#define I40E_VFINT_DYN_CTLN1_ITR_INDX_MASK I40E_MASK(0x3, I40E_VFINT_DYN_CTLN1_ITR_INDX_SHIFT)
-#define I40E_VFINT_DYN_CTLN1_INTERVAL_SHIFT 5
-#define I40E_VFINT_DYN_CTLN1_INTERVAL_MASK I40E_MASK(0xFFF, I40E_VFINT_DYN_CTLN1_INTERVAL_SHIFT)
-#define I40E_VFINT_DYN_CTLN1_SW_ITR_INDX_ENA_SHIFT 24
-#define I40E_VFINT_DYN_CTLN1_SW_ITR_INDX_ENA_MASK I40E_MASK(0x1, I40E_VFINT_DYN_CTLN1_SW_ITR_INDX_ENA_SHIFT)
-#define I40E_VFINT_DYN_CTLN1_SW_ITR_INDX_SHIFT 25
-#define I40E_VFINT_DYN_CTLN1_SW_ITR_INDX_MASK I40E_MASK(0x3, I40E_VFINT_DYN_CTLN1_SW_ITR_INDX_SHIFT)
-#define I40E_VFINT_DYN_CTLN1_INTENA_MSK_SHIFT 31
-#define I40E_VFINT_DYN_CTLN1_INTENA_MSK_MASK I40E_MASK(0x1, I40E_VFINT_DYN_CTLN1_INTENA_MSK_SHIFT)
-#define I40E_VFINT_ICR0_ENA1 0x00005000 /* Reset: CORER */
-#define I40E_VFINT_ICR0_ENA1_LINK_STAT_CHANGE_SHIFT 25
-#define I40E_VFINT_ICR0_ENA1_LINK_STAT_CHANGE_MASK I40E_MASK(0x1, I40E_VFINT_ICR0_ENA1_LINK_STAT_CHANGE_SHIFT)
-#define I40E_VFINT_ICR0_ENA1_ADMINQ_SHIFT 30
-#define I40E_VFINT_ICR0_ENA1_ADMINQ_MASK I40E_MASK(0x1, I40E_VFINT_ICR0_ENA1_ADMINQ_SHIFT)
-#define I40E_VFINT_ICR0_ENA1_RSVD_SHIFT 31
-#define I40E_VFINT_ICR0_ENA1_RSVD_MASK I40E_MASK(0x1, I40E_VFINT_ICR0_ENA1_RSVD_SHIFT)
-#define I40E_VFINT_ICR01 0x00004800 /* Reset: CORER */
-#define I40E_VFINT_ICR01_INTEVENT_SHIFT 0
-#define I40E_VFINT_ICR01_INTEVENT_MASK I40E_MASK(0x1, I40E_VFINT_ICR01_INTEVENT_SHIFT)
-#define I40E_VFINT_ICR01_QUEUE_0_SHIFT 1
-#define I40E_VFINT_ICR01_QUEUE_0_MASK I40E_MASK(0x1, I40E_VFINT_ICR01_QUEUE_0_SHIFT)
-#define I40E_VFINT_ICR01_QUEUE_1_SHIFT 2
-#define I40E_VFINT_ICR01_QUEUE_1_MASK I40E_MASK(0x1, I40E_VFINT_ICR01_QUEUE_1_SHIFT)
-#define I40E_VFINT_ICR01_QUEUE_2_SHIFT 3
-#define I40E_VFINT_ICR01_QUEUE_2_MASK I40E_MASK(0x1, I40E_VFINT_ICR01_QUEUE_2_SHIFT)
-#define I40E_VFINT_ICR01_QUEUE_3_SHIFT 4
-#define I40E_VFINT_ICR01_QUEUE_3_MASK I40E_MASK(0x1, I40E_VFINT_ICR01_QUEUE_3_SHIFT)
-#define I40E_VFINT_ICR01_LINK_STAT_CHANGE_SHIFT 25
-#define I40E_VFINT_ICR01_LINK_STAT_CHANGE_MASK I40E_MASK(0x1, I40E_VFINT_ICR01_LINK_STAT_CHANGE_SHIFT)
-#define I40E_VFINT_ICR01_ADMINQ_SHIFT 30
-#define I40E_VFINT_ICR01_ADMINQ_MASK I40E_MASK(0x1, I40E_VFINT_ICR01_ADMINQ_SHIFT)
-#define I40E_VFINT_ICR01_SWINT_SHIFT 31
-#define I40E_VFINT_ICR01_SWINT_MASK I40E_MASK(0x1, I40E_VFINT_ICR01_SWINT_SHIFT)
-#define I40E_VFINT_ITR01(_i) (0x00004C00 + ((_i) * 4)) /* _i=0...2 */ /* Reset: VFR */
-#define I40E_VFINT_ITR01_MAX_INDEX 2
-#define I40E_VFINT_ITR01_INTERVAL_SHIFT 0
-#define I40E_VFINT_ITR01_INTERVAL_MASK I40E_MASK(0xFFF, I40E_VFINT_ITR01_INTERVAL_SHIFT)
-#define I40E_VFINT_ITRN1(_i, _INTVF) (0x00002800 + ((_i) * 64 + (_INTVF) * 4)) /* _i=0...2, _INTVF=0...15 */ /* Reset: VFR */
-#define I40E_VFINT_ITRN1_MAX_INDEX 2
-#define I40E_VFINT_ITRN1_INTERVAL_SHIFT 0
-#define I40E_VFINT_ITRN1_INTERVAL_MASK I40E_MASK(0xFFF, I40E_VFINT_ITRN1_INTERVAL_SHIFT)
-#define I40E_VFINT_STAT_CTL01 0x00005400 /* Reset: CORER */
-#define I40E_VFINT_STAT_CTL01_OTHER_ITR_INDX_SHIFT 2
-#define I40E_VFINT_STAT_CTL01_OTHER_ITR_INDX_MASK I40E_MASK(0x3, I40E_VFINT_STAT_CTL01_OTHER_ITR_INDX_SHIFT)
-#define I40E_QRX_TAIL1(_Q) (0x00002000 + ((_Q) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_QRX_TAIL1_MAX_INDEX 15
-#define I40E_QRX_TAIL1_TAIL_SHIFT 0
-#define I40E_QRX_TAIL1_TAIL_MASK I40E_MASK(0x1FFF, I40E_QRX_TAIL1_TAIL_SHIFT)
-#define I40E_QTX_TAIL1(_Q) (0x00000000 + ((_Q) * 4)) /* _i=0...15 */ /* Reset: PFR */
-#define I40E_QTX_TAIL1_MAX_INDEX 15
-#define I40E_QTX_TAIL1_TAIL_SHIFT 0
-#define I40E_QTX_TAIL1_TAIL_MASK I40E_MASK(0x1FFF, I40E_QTX_TAIL1_TAIL_SHIFT)
-#define I40E_VFMSIX_PBA 0x00002000 /* Reset: VFLR */
-#define I40E_VFMSIX_PBA_PENBIT_SHIFT 0
-#define I40E_VFMSIX_PBA_PENBIT_MASK I40E_MASK(0xFFFFFFFF, I40E_VFMSIX_PBA_PENBIT_SHIFT)
-#define I40E_VFMSIX_TADD(_i) (0x00000000 + ((_i) * 16)) /* _i=0...16 */ /* Reset: VFLR */
-#define I40E_VFMSIX_TADD_MAX_INDEX 16
-#define I40E_VFMSIX_TADD_MSIXTADD10_SHIFT 0
-#define I40E_VFMSIX_TADD_MSIXTADD10_MASK I40E_MASK(0x3, I40E_VFMSIX_TADD_MSIXTADD10_SHIFT)
-#define I40E_VFMSIX_TADD_MSIXTADD_SHIFT 2
-#define I40E_VFMSIX_TADD_MSIXTADD_MASK I40E_MASK(0x3FFFFFFF, I40E_VFMSIX_TADD_MSIXTADD_SHIFT)
-#define I40E_VFMSIX_TMSG(_i) (0x00000008 + ((_i) * 16)) /* _i=0...16 */ /* Reset: VFLR */
-#define I40E_VFMSIX_TMSG_MAX_INDEX 16
-#define I40E_VFMSIX_TMSG_MSIXTMSG_SHIFT 0
-#define I40E_VFMSIX_TMSG_MSIXTMSG_MASK I40E_MASK(0xFFFFFFFF, I40E_VFMSIX_TMSG_MSIXTMSG_SHIFT)
-#define I40E_VFMSIX_TUADD(_i) (0x00000004 + ((_i) * 16)) /* _i=0...16 */ /* Reset: VFLR */
-#define I40E_VFMSIX_TUADD_MAX_INDEX 16
-#define I40E_VFMSIX_TUADD_MSIXTUADD_SHIFT 0
-#define I40E_VFMSIX_TUADD_MSIXTUADD_MASK I40E_MASK(0xFFFFFFFF, I40E_VFMSIX_TUADD_MSIXTUADD_SHIFT)
-#define I40E_VFMSIX_TVCTRL(_i) (0x0000000C + ((_i) * 16)) /* _i=0...16 */ /* Reset: VFLR */
-#define I40E_VFMSIX_TVCTRL_MAX_INDEX 16
-#define I40E_VFMSIX_TVCTRL_MASK_SHIFT 0
-#define I40E_VFMSIX_TVCTRL_MASK_MASK I40E_MASK(0x1, I40E_VFMSIX_TVCTRL_MASK_SHIFT)
-#define I40E_VFCM_PE_ERRDATA 0x0000DC00 /* Reset: VFR */
-#define I40E_VFCM_PE_ERRDATA_ERROR_CODE_SHIFT 0
-#define I40E_VFCM_PE_ERRDATA_ERROR_CODE_MASK I40E_MASK(0xF, I40E_VFCM_PE_ERRDATA_ERROR_CODE_SHIFT)
-#define I40E_VFCM_PE_ERRDATA_Q_TYPE_SHIFT 4
-#define I40E_VFCM_PE_ERRDATA_Q_TYPE_MASK I40E_MASK(0x7, I40E_VFCM_PE_ERRDATA_Q_TYPE_SHIFT)
-#define I40E_VFCM_PE_ERRDATA_Q_NUM_SHIFT 8
-#define I40E_VFCM_PE_ERRDATA_Q_NUM_MASK I40E_MASK(0x3FFFF, I40E_VFCM_PE_ERRDATA_Q_NUM_SHIFT)
-#define I40E_VFCM_PE_ERRINFO 0x0000D800 /* Reset: VFR */
-#define I40E_VFCM_PE_ERRINFO_ERROR_VALID_SHIFT 0
-#define I40E_VFCM_PE_ERRINFO_ERROR_VALID_MASK I40E_MASK(0x1, I40E_VFCM_PE_ERRINFO_ERROR_VALID_SHIFT)
-#define I40E_VFCM_PE_ERRINFO_ERROR_INST_SHIFT 4
-#define I40E_VFCM_PE_ERRINFO_ERROR_INST_MASK I40E_MASK(0x7, I40E_VFCM_PE_ERRINFO_ERROR_INST_SHIFT)
-#define I40E_VFCM_PE_ERRINFO_DBL_ERROR_CNT_SHIFT 8
-#define I40E_VFCM_PE_ERRINFO_DBL_ERROR_CNT_MASK I40E_MASK(0xFF, I40E_VFCM_PE_ERRINFO_DBL_ERROR_CNT_SHIFT)
-#define I40E_VFCM_PE_ERRINFO_RLU_ERROR_CNT_SHIFT 16
-#define I40E_VFCM_PE_ERRINFO_RLU_ERROR_CNT_MASK I40E_MASK(0xFF, I40E_VFCM_PE_ERRINFO_RLU_ERROR_CNT_SHIFT)
-#define I40E_VFCM_PE_ERRINFO_RLS_ERROR_CNT_SHIFT 24
-#define I40E_VFCM_PE_ERRINFO_RLS_ERROR_CNT_MASK I40E_MASK(0xFF, I40E_VFCM_PE_ERRINFO_RLS_ERROR_CNT_SHIFT)
-#define I40E_VFQF_HENA(_i) (0x0000C400 + ((_i) * 4)) /* _i=0...1 */ /* Reset: CORER */
-#define I40E_VFQF_HENA_MAX_INDEX 1
-#define I40E_VFQF_HENA_PTYPE_ENA_SHIFT 0
-#define I40E_VFQF_HENA_PTYPE_ENA_MASK I40E_MASK(0xFFFFFFFF, I40E_VFQF_HENA_PTYPE_ENA_SHIFT)
-#define I40E_VFQF_HKEY(_i) (0x0000CC00 + ((_i) * 4)) /* _i=0...12 */ /* Reset: CORER */
-#define I40E_VFQF_HKEY_MAX_INDEX 12
-#define I40E_VFQF_HKEY_KEY_0_SHIFT 0
-#define I40E_VFQF_HKEY_KEY_0_MASK I40E_MASK(0xFF, I40E_VFQF_HKEY_KEY_0_SHIFT)
-#define I40E_VFQF_HKEY_KEY_1_SHIFT 8
-#define I40E_VFQF_HKEY_KEY_1_MASK I40E_MASK(0xFF, I40E_VFQF_HKEY_KEY_1_SHIFT)
-#define I40E_VFQF_HKEY_KEY_2_SHIFT 16
-#define I40E_VFQF_HKEY_KEY_2_MASK I40E_MASK(0xFF, I40E_VFQF_HKEY_KEY_2_SHIFT)
-#define I40E_VFQF_HKEY_KEY_3_SHIFT 24
-#define I40E_VFQF_HKEY_KEY_3_MASK I40E_MASK(0xFF, I40E_VFQF_HKEY_KEY_3_SHIFT)
-#define I40E_VFQF_HLUT(_i) (0x0000D000 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
 #define I40E_VFQF_HLUT_MAX_INDEX 15
-#define I40E_VFQF_HLUT_LUT0_SHIFT 0
-#define I40E_VFQF_HLUT_LUT0_MASK I40E_MASK(0xF, I40E_VFQF_HLUT_LUT0_SHIFT)
-#define I40E_VFQF_HLUT_LUT1_SHIFT 8
-#define I40E_VFQF_HLUT_LUT1_MASK I40E_MASK(0xF, I40E_VFQF_HLUT_LUT1_SHIFT)
-#define I40E_VFQF_HLUT_LUT2_SHIFT 16
-#define I40E_VFQF_HLUT_LUT2_MASK I40E_MASK(0xF, I40E_VFQF_HLUT_LUT2_SHIFT)
-#define I40E_VFQF_HLUT_LUT3_SHIFT 24
-#define I40E_VFQF_HLUT_LUT3_MASK I40E_MASK(0xF, I40E_VFQF_HLUT_LUT3_SHIFT)
-#define I40E_VFQF_HREGION(_i) (0x0000D400 + ((_i) * 4)) /* _i=0...7 */ /* Reset: CORER */
-#define I40E_VFQF_HREGION_MAX_INDEX 7
-#define I40E_VFQF_HREGION_OVERRIDE_ENA_0_SHIFT 0
-#define I40E_VFQF_HREGION_OVERRIDE_ENA_0_MASK I40E_MASK(0x1, I40E_VFQF_HREGION_OVERRIDE_ENA_0_SHIFT)
-#define I40E_VFQF_HREGION_REGION_0_SHIFT 1
-#define I40E_VFQF_HREGION_REGION_0_MASK I40E_MASK(0x7, I40E_VFQF_HREGION_REGION_0_SHIFT)
-#define I40E_VFQF_HREGION_OVERRIDE_ENA_1_SHIFT 4
-#define I40E_VFQF_HREGION_OVERRIDE_ENA_1_MASK I40E_MASK(0x1, I40E_VFQF_HREGION_OVERRIDE_ENA_1_SHIFT)
-#define I40E_VFQF_HREGION_REGION_1_SHIFT 5
-#define I40E_VFQF_HREGION_REGION_1_MASK I40E_MASK(0x7, I40E_VFQF_HREGION_REGION_1_SHIFT)
-#define I40E_VFQF_HREGION_OVERRIDE_ENA_2_SHIFT 8
-#define I40E_VFQF_HREGION_OVERRIDE_ENA_2_MASK I40E_MASK(0x1, I40E_VFQF_HREGION_OVERRIDE_ENA_2_SHIFT)
-#define I40E_VFQF_HREGION_REGION_2_SHIFT 9
-#define I40E_VFQF_HREGION_REGION_2_MASK I40E_MASK(0x7, I40E_VFQF_HREGION_REGION_2_SHIFT)
-#define I40E_VFQF_HREGION_OVERRIDE_ENA_3_SHIFT 12
-#define I40E_VFQF_HREGION_OVERRIDE_ENA_3_MASK I40E_MASK(0x1, I40E_VFQF_HREGION_OVERRIDE_ENA_3_SHIFT)
-#define I40E_VFQF_HREGION_REGION_3_SHIFT 13
-#define I40E_VFQF_HREGION_REGION_3_MASK I40E_MASK(0x7, I40E_VFQF_HREGION_REGION_3_SHIFT)
-#define I40E_VFQF_HREGION_OVERRIDE_ENA_4_SHIFT 16
-#define I40E_VFQF_HREGION_OVERRIDE_ENA_4_MASK I40E_MASK(0x1, I40E_VFQF_HREGION_OVERRIDE_ENA_4_SHIFT)
-#define I40E_VFQF_HREGION_REGION_4_SHIFT 17
-#define I40E_VFQF_HREGION_REGION_4_MASK I40E_MASK(0x7, I40E_VFQF_HREGION_REGION_4_SHIFT)
-#define I40E_VFQF_HREGION_OVERRIDE_ENA_5_SHIFT 20
-#define I40E_VFQF_HREGION_OVERRIDE_ENA_5_MASK I40E_MASK(0x1, I40E_VFQF_HREGION_OVERRIDE_ENA_5_SHIFT)
-#define I40E_VFQF_HREGION_REGION_5_SHIFT 21
-#define I40E_VFQF_HREGION_REGION_5_MASK I40E_MASK(0x7, I40E_VFQF_HREGION_REGION_5_SHIFT)
-#define I40E_VFQF_HREGION_OVERRIDE_ENA_6_SHIFT 24
-#define I40E_VFQF_HREGION_OVERRIDE_ENA_6_MASK I40E_MASK(0x1, I40E_VFQF_HREGION_OVERRIDE_ENA_6_SHIFT)
-#define I40E_VFQF_HREGION_REGION_6_SHIFT 25
-#define I40E_VFQF_HREGION_REGION_6_MASK I40E_MASK(0x7, I40E_VFQF_HREGION_REGION_6_SHIFT)
-#define I40E_VFQF_HREGION_OVERRIDE_ENA_7_SHIFT 28
-#define I40E_VFQF_HREGION_OVERRIDE_ENA_7_MASK I40E_MASK(0x1, I40E_VFQF_HREGION_OVERRIDE_ENA_7_SHIFT)
-#define I40E_VFQF_HREGION_REGION_7_SHIFT 29
-#define I40E_VFQF_HREGION_REGION_7_MASK I40E_MASK(0x7, I40E_VFQF_HREGION_REGION_7_SHIFT)
 
-#define I40E_MNGSB_FDCRC 0x000B7050 /* Reset: POR */
-#define I40E_MNGSB_FDCRC_CRC_RES_SHIFT 0
-#define I40E_MNGSB_FDCRC_CRC_RES_MASK I40E_MASK(0xFF, I40E_MNGSB_FDCRC_CRC_RES_SHIFT)
-#define I40E_MNGSB_FDCS 0x000B7040 /* Reset: POR */
-#define I40E_MNGSB_FDCS_CRC_CONT_SHIFT 2
-#define I40E_MNGSB_FDCS_CRC_CONT_MASK I40E_MASK(0x1, I40E_MNGSB_FDCS_CRC_CONT_SHIFT)
-#define I40E_MNGSB_FDCS_CRC_SEED_EN_SHIFT 3
-#define I40E_MNGSB_FDCS_CRC_SEED_EN_MASK I40E_MASK(0x1, I40E_MNGSB_FDCS_CRC_SEED_EN_SHIFT)
-#define I40E_MNGSB_FDCS_CRC_WR_INH_SHIFT 4
-#define I40E_MNGSB_FDCS_CRC_WR_INH_MASK I40E_MASK(0x1, I40E_MNGSB_FDCS_CRC_WR_INH_SHIFT)
-#define I40E_MNGSB_FDCS_CRC_SEED_SHIFT 8
-#define I40E_MNGSB_FDCS_CRC_SEED_MASK I40E_MASK(0xFF, I40E_MNGSB_FDCS_CRC_SEED_SHIFT)
-#define I40E_MNGSB_FDS 0x000B7048 /* Reset: POR */
-#define I40E_MNGSB_FDS_START_BC_SHIFT 0
-#define I40E_MNGSB_FDS_START_BC_MASK I40E_MASK(0xFFF, I40E_MNGSB_FDS_START_BC_SHIFT)
-#define I40E_MNGSB_FDS_LAST_BC_SHIFT 16
-#define I40E_MNGSB_FDS_LAST_BC_MASK I40E_MASK(0xFFF, I40E_MNGSB_FDS_LAST_BC_SHIFT)
 
-#define I40E_GL_VF_CTRL_RX(_VF) (0x00083600 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: EMPR */
-#define I40E_GL_VF_CTRL_RX_MAX_INDEX 127
-#define I40E_GL_VF_CTRL_RX_AQ_RX_EN_SHIFT 0
-#define I40E_GL_VF_CTRL_RX_AQ_RX_EN_MASK I40E_MASK(0x1, I40E_GL_VF_CTRL_RX_AQ_RX_EN_SHIFT)
-#define I40E_GL_VF_CTRL_TX(_VF) (0x00083400 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: EMPR */
-#define I40E_GL_VF_CTRL_TX_MAX_INDEX 127
-#define I40E_GL_VF_CTRL_TX_AQ_TX_EN_SHIFT 0
-#define I40E_GL_VF_CTRL_TX_AQ_TX_EN_MASK I40E_MASK(0x1, I40E_GL_VF_CTRL_TX_AQ_TX_EN_SHIFT)
 
-#define I40E_GLCM_LAN_CACHESIZE 0x0010C4D8 /* Reset: CORER */
-#define I40E_GLCM_LAN_CACHESIZE_WORD_SIZE_SHIFT 0
-#define I40E_GLCM_LAN_CACHESIZE_WORD_SIZE_MASK I40E_MASK(0xFFF, I40E_GLCM_LAN_CACHESIZE_WORD_SIZE_SHIFT)
-#define I40E_GLCM_LAN_CACHESIZE_SETS_SHIFT 12
-#define I40E_GLCM_LAN_CACHESIZE_SETS_MASK I40E_MASK(0xF, I40E_GLCM_LAN_CACHESIZE_SETS_SHIFT)
-#define I40E_GLCM_LAN_CACHESIZE_WAYS_SHIFT 16
-#define I40E_GLCM_LAN_CACHESIZE_WAYS_MASK I40E_MASK(0x3FF, I40E_GLCM_LAN_CACHESIZE_WAYS_SHIFT)
-#define I40E_GLCM_PE_CACHESIZE 0x00138FE4 /* Reset: CORER */
-#define I40E_GLCM_PE_CACHESIZE_WORD_SIZE_SHIFT 0
-#define I40E_GLCM_PE_CACHESIZE_WORD_SIZE_MASK I40E_MASK(0xFFF, I40E_GLCM_PE_CACHESIZE_WORD_SIZE_SHIFT)
-#define I40E_GLCM_PE_CACHESIZE_SETS_SHIFT 12
-#define I40E_GLCM_PE_CACHESIZE_SETS_MASK I40E_MASK(0xF, I40E_GLCM_PE_CACHESIZE_SETS_SHIFT)
-#define I40E_GLCM_PE_CACHESIZE_WAYS_SHIFT 16
-#define I40E_GLCM_PE_CACHESIZE_WAYS_MASK I40E_MASK(0x1FF, I40E_GLCM_PE_CACHESIZE_WAYS_SHIFT)
-#define I40E_PFCM_PE_ERRDATA 0x00138D00 /* Reset: PFR */
-#define I40E_PFCM_PE_ERRDATA_ERROR_CODE_SHIFT 0
-#define I40E_PFCM_PE_ERRDATA_ERROR_CODE_MASK I40E_MASK(0xF, I40E_PFCM_PE_ERRDATA_ERROR_CODE_SHIFT)
-#define I40E_PFCM_PE_ERRDATA_Q_TYPE_SHIFT 4
-#define I40E_PFCM_PE_ERRDATA_Q_TYPE_MASK I40E_MASK(0x7, I40E_PFCM_PE_ERRDATA_Q_TYPE_SHIFT)
-#define I40E_PFCM_PE_ERRDATA_Q_NUM_SHIFT 8
-#define I40E_PFCM_PE_ERRDATA_Q_NUM_MASK I40E_MASK(0x3FFFF, I40E_PFCM_PE_ERRDATA_Q_NUM_SHIFT)
-#define I40E_PFCM_PE_ERRINFO 0x00138C80 /* Reset: PFR */
-#define I40E_PFCM_PE_ERRINFO_ERROR_VALID_SHIFT 0
-#define I40E_PFCM_PE_ERRINFO_ERROR_VALID_MASK I40E_MASK(0x1, I40E_PFCM_PE_ERRINFO_ERROR_VALID_SHIFT)
-#define I40E_PFCM_PE_ERRINFO_ERROR_INST_SHIFT 4
-#define I40E_PFCM_PE_ERRINFO_ERROR_INST_MASK I40E_MASK(0x7, I40E_PFCM_PE_ERRINFO_ERROR_INST_SHIFT)
-#define I40E_PFCM_PE_ERRINFO_DBL_ERROR_CNT_SHIFT 8
-#define I40E_PFCM_PE_ERRINFO_DBL_ERROR_CNT_MASK I40E_MASK(0xFF, I40E_PFCM_PE_ERRINFO_DBL_ERROR_CNT_SHIFT)
-#define I40E_PFCM_PE_ERRINFO_RLU_ERROR_CNT_SHIFT 16
-#define I40E_PFCM_PE_ERRINFO_RLU_ERROR_CNT_MASK I40E_MASK(0xFF, I40E_PFCM_PE_ERRINFO_RLU_ERROR_CNT_SHIFT)
-#define I40E_PFCM_PE_ERRINFO_RLS_ERROR_CNT_SHIFT 24
-#define I40E_PFCM_PE_ERRINFO_RLS_ERROR_CNT_MASK I40E_MASK(0xFF, I40E_PFCM_PE_ERRINFO_RLS_ERROR_CNT_SHIFT)
 
-#define I40E_PRTDCB_TFMSTC(_i) (0x000A0040 + ((_i) * 32)) /* _i=0...7 */ /* Reset: CORER */
-#define I40E_PRTDCB_TFMSTC_MAX_INDEX 7
-#define I40E_PRTDCB_TFMSTC_MSTC_SHIFT 0
-#define I40E_PRTDCB_TFMSTC_MSTC_MASK I40E_MASK(0xFFFFF, I40E_PRTDCB_TFMSTC_MSTC_SHIFT)
-#define I40E_GL_FWSTS_FWROWD_SHIFT 8
-#define I40E_GL_FWSTS_FWROWD_MASK I40E_MASK(0x1, I40E_GL_FWSTS_FWROWD_SHIFT)
-#define I40E_GLFOC_CACHESIZE 0x000AA0DC /* Reset: CORER */
-#define I40E_GLFOC_CACHESIZE_WORD_SIZE_SHIFT 0
-#define I40E_GLFOC_CACHESIZE_WORD_SIZE_MASK I40E_MASK(0xFF, I40E_GLFOC_CACHESIZE_WORD_SIZE_SHIFT)
-#define I40E_GLFOC_CACHESIZE_SETS_SHIFT 8
-#define I40E_GLFOC_CACHESIZE_SETS_MASK I40E_MASK(0xFFF, I40E_GLFOC_CACHESIZE_SETS_SHIFT)
-#define I40E_GLFOC_CACHESIZE_WAYS_SHIFT 20
-#define I40E_GLFOC_CACHESIZE_WAYS_MASK I40E_MASK(0xF, I40E_GLFOC_CACHESIZE_WAYS_SHIFT)
-#define I40E_GLHMC_APBVTINUSEBASE(_i) (0x000C4a00 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_APBVTINUSEBASE_MAX_INDEX 15
-#define I40E_GLHMC_APBVTINUSEBASE_FPMAPBINUSEBASE_SHIFT 0
-#define I40E_GLHMC_APBVTINUSEBASE_FPMAPBINUSEBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_APBVTINUSEBASE_FPMAPBINUSEBASE_SHIFT)
-#define I40E_GLHMC_CEQPART(_i) (0x001312C0 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_CEQPART_MAX_INDEX 15
-#define I40E_GLHMC_CEQPART_PMCEQBASE_SHIFT 0
-#define I40E_GLHMC_CEQPART_PMCEQBASE_MASK I40E_MASK(0xFF, I40E_GLHMC_CEQPART_PMCEQBASE_SHIFT)
-#define I40E_GLHMC_CEQPART_PMCEQSIZE_SHIFT 16
-#define I40E_GLHMC_CEQPART_PMCEQSIZE_MASK I40E_MASK(0x1FF, I40E_GLHMC_CEQPART_PMCEQSIZE_SHIFT)
-#define I40E_GLHMC_DBCQMAX 0x000C20F0 /* Reset: CORER */
-#define I40E_GLHMC_DBCQMAX_GLHMC_DBCQMAX_SHIFT 0
-#define I40E_GLHMC_DBCQMAX_GLHMC_DBCQMAX_MASK I40E_MASK(0x3FFFF, I40E_GLHMC_DBCQMAX_GLHMC_DBCQMAX_SHIFT)
-#define I40E_GLHMC_DBCQPART(_i) (0x00131240 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_DBCQPART_MAX_INDEX 15
-#define I40E_GLHMC_DBCQPART_PMDBCQBASE_SHIFT 0
-#define I40E_GLHMC_DBCQPART_PMDBCQBASE_MASK I40E_MASK(0x3FFF, I40E_GLHMC_DBCQPART_PMDBCQBASE_SHIFT)
-#define I40E_GLHMC_DBCQPART_PMDBCQSIZE_SHIFT 16
-#define I40E_GLHMC_DBCQPART_PMDBCQSIZE_MASK I40E_MASK(0x7FFF, I40E_GLHMC_DBCQPART_PMDBCQSIZE_SHIFT)
-#define I40E_GLHMC_DBQPMAX 0x000C20EC /* Reset: CORER */
-#define I40E_GLHMC_DBQPMAX_GLHMC_DBQPMAX_SHIFT 0
-#define I40E_GLHMC_DBQPMAX_GLHMC_DBQPMAX_MASK I40E_MASK(0x7FFFF, I40E_GLHMC_DBQPMAX_GLHMC_DBQPMAX_SHIFT)
-#define I40E_GLHMC_DBQPPART(_i) (0x00138D80 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_DBQPPART_MAX_INDEX 15
-#define I40E_GLHMC_DBQPPART_PMDBQPBASE_SHIFT 0
-#define I40E_GLHMC_DBQPPART_PMDBQPBASE_MASK I40E_MASK(0x3FFF, I40E_GLHMC_DBQPPART_PMDBQPBASE_SHIFT)
-#define I40E_GLHMC_DBQPPART_PMDBQPSIZE_SHIFT 16
-#define I40E_GLHMC_DBQPPART_PMDBQPSIZE_MASK I40E_MASK(0x7FFF, I40E_GLHMC_DBQPPART_PMDBQPSIZE_SHIFT)
-#define I40E_GLHMC_PEARPBASE(_i) (0x000C4800 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_PEARPBASE_MAX_INDEX 15
-#define I40E_GLHMC_PEARPBASE_FPMPEARPBASE_SHIFT 0
-#define I40E_GLHMC_PEARPBASE_FPMPEARPBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_PEARPBASE_FPMPEARPBASE_SHIFT)
-#define I40E_GLHMC_PEARPCNT(_i) (0x000C4900 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_PEARPCNT_MAX_INDEX 15
-#define I40E_GLHMC_PEARPCNT_FPMPEARPCNT_SHIFT 0
-#define I40E_GLHMC_PEARPCNT_FPMPEARPCNT_MASK I40E_MASK(0x1FFFFFFF, I40E_GLHMC_PEARPCNT_FPMPEARPCNT_SHIFT)
-#define I40E_GLHMC_PEARPMAX 0x000C2038 /* Reset: CORER */
-#define I40E_GLHMC_PEARPMAX_PMPEARPMAX_SHIFT 0
-#define I40E_GLHMC_PEARPMAX_PMPEARPMAX_MASK I40E_MASK(0x1FFFF, I40E_GLHMC_PEARPMAX_PMPEARPMAX_SHIFT)
-#define I40E_GLHMC_PEARPOBJSZ 0x000C2034 /* Reset: CORER */
-#define I40E_GLHMC_PEARPOBJSZ_PMPEARPOBJSZ_SHIFT 0
-#define I40E_GLHMC_PEARPOBJSZ_PMPEARPOBJSZ_MASK I40E_MASK(0x7, I40E_GLHMC_PEARPOBJSZ_PMPEARPOBJSZ_SHIFT)
-#define I40E_GLHMC_PECQBASE(_i) (0x000C4200 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_PECQBASE_MAX_INDEX 15
-#define I40E_GLHMC_PECQBASE_FPMPECQBASE_SHIFT 0
-#define I40E_GLHMC_PECQBASE_FPMPECQBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_PECQBASE_FPMPECQBASE_SHIFT)
-#define I40E_GLHMC_PECQCNT(_i) (0x000C4300 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_PECQCNT_MAX_INDEX 15
-#define I40E_GLHMC_PECQCNT_FPMPECQCNT_SHIFT 0
-#define I40E_GLHMC_PECQCNT_FPMPECQCNT_MASK I40E_MASK(0x1FFFFFFF, I40E_GLHMC_PECQCNT_FPMPECQCNT_SHIFT)
-#define I40E_GLHMC_PECQOBJSZ 0x000C2020 /* Reset: CORER */
-#define I40E_GLHMC_PECQOBJSZ_PMPECQOBJSZ_SHIFT 0
-#define I40E_GLHMC_PECQOBJSZ_PMPECQOBJSZ_MASK I40E_MASK(0xF, I40E_GLHMC_PECQOBJSZ_PMPECQOBJSZ_SHIFT)
-#define I40E_GLHMC_PEHTCNT(_i) (0x000C4700 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_PEHTCNT_MAX_INDEX 15
-#define I40E_GLHMC_PEHTCNT_FPMPEHTCNT_SHIFT 0
-#define I40E_GLHMC_PEHTCNT_FPMPEHTCNT_MASK I40E_MASK(0x1FFFFFFF, I40E_GLHMC_PEHTCNT_FPMPEHTCNT_SHIFT)
-#define I40E_GLHMC_PEHTEBASE(_i) (0x000C4600 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_PEHTEBASE_MAX_INDEX 15
-#define I40E_GLHMC_PEHTEBASE_FPMPEHTEBASE_SHIFT 0
-#define I40E_GLHMC_PEHTEBASE_FPMPEHTEBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_PEHTEBASE_FPMPEHTEBASE_SHIFT)
-#define I40E_GLHMC_PEHTEOBJSZ 0x000C202c /* Reset: CORER */
-#define I40E_GLHMC_PEHTEOBJSZ_PMPEHTEOBJSZ_SHIFT 0
-#define I40E_GLHMC_PEHTEOBJSZ_PMPEHTEOBJSZ_MASK I40E_MASK(0xF, I40E_GLHMC_PEHTEOBJSZ_PMPEHTEOBJSZ_SHIFT)
-#define I40E_GLHMC_PEHTMAX 0x000C2030 /* Reset: CORER */
-#define I40E_GLHMC_PEHTMAX_PMPEHTMAX_SHIFT 0
-#define I40E_GLHMC_PEHTMAX_PMPEHTMAX_MASK I40E_MASK(0x1FFFFF, I40E_GLHMC_PEHTMAX_PMPEHTMAX_SHIFT)
-#define I40E_GLHMC_PEMRBASE(_i) (0x000C4c00 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_PEMRBASE_MAX_INDEX 15
-#define I40E_GLHMC_PEMRBASE_FPMPEMRBASE_SHIFT 0
-#define I40E_GLHMC_PEMRBASE_FPMPEMRBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_PEMRBASE_FPMPEMRBASE_SHIFT)
-#define I40E_GLHMC_PEMRCNT(_i) (0x000C4d00 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_PEMRCNT_MAX_INDEX 15
-#define I40E_GLHMC_PEMRCNT_FPMPEMRSZ_SHIFT 0
-#define I40E_GLHMC_PEMRCNT_FPMPEMRSZ_MASK I40E_MASK(0x1FFFFFFF, I40E_GLHMC_PEMRCNT_FPMPEMRSZ_SHIFT)
-#define I40E_GLHMC_PEMRMAX 0x000C2040 /* Reset: CORER */
-#define I40E_GLHMC_PEMRMAX_PMPEMRMAX_SHIFT 0
-#define I40E_GLHMC_PEMRMAX_PMPEMRMAX_MASK I40E_MASK(0x7FFFFF, I40E_GLHMC_PEMRMAX_PMPEMRMAX_SHIFT)
-#define I40E_GLHMC_PEMROBJSZ 0x000C203c /* Reset: CORER */
-#define I40E_GLHMC_PEMROBJSZ_PMPEMROBJSZ_SHIFT 0
-#define I40E_GLHMC_PEMROBJSZ_PMPEMROBJSZ_MASK I40E_MASK(0xF, I40E_GLHMC_PEMROBJSZ_PMPEMROBJSZ_SHIFT)
-#define I40E_GLHMC_PEPBLBASE(_i) (0x000C5800 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_PEPBLBASE_MAX_INDEX 15
-#define I40E_GLHMC_PEPBLBASE_FPMPEPBLBASE_SHIFT 0
-#define I40E_GLHMC_PEPBLBASE_FPMPEPBLBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_PEPBLBASE_FPMPEPBLBASE_SHIFT)
-#define I40E_GLHMC_PEPBLCNT(_i) (0x000C5900 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_PEPBLCNT_MAX_INDEX 15
-#define I40E_GLHMC_PEPBLCNT_FPMPEPBLCNT_SHIFT 0
-#define I40E_GLHMC_PEPBLCNT_FPMPEPBLCNT_MASK I40E_MASK(0x1FFFFFFF, I40E_GLHMC_PEPBLCNT_FPMPEPBLCNT_SHIFT)
-#define I40E_GLHMC_PEPBLMAX 0x000C206c /* Reset: CORER */
-#define I40E_GLHMC_PEPBLMAX_PMPEPBLMAX_SHIFT 0
-#define I40E_GLHMC_PEPBLMAX_PMPEPBLMAX_MASK I40E_MASK(0x1FFFFFFF, I40E_GLHMC_PEPBLMAX_PMPEPBLMAX_SHIFT)
-#define I40E_GLHMC_PEPFFIRSTSD 0x000C20E4 /* Reset: CORER */
-#define I40E_GLHMC_PEPFFIRSTSD_GLHMC_PEPFFIRSTSD_SHIFT 0
-#define I40E_GLHMC_PEPFFIRSTSD_GLHMC_PEPFFIRSTSD_MASK I40E_MASK(0xFFF, I40E_GLHMC_PEPFFIRSTSD_GLHMC_PEPFFIRSTSD_SHIFT)
-#define I40E_GLHMC_PEQ1BASE(_i) (0x000C5200 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_PEQ1BASE_MAX_INDEX 15
-#define I40E_GLHMC_PEQ1BASE_FPMPEQ1BASE_SHIFT 0
-#define I40E_GLHMC_PEQ1BASE_FPMPEQ1BASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_PEQ1BASE_FPMPEQ1BASE_SHIFT)
-#define I40E_GLHMC_PEQ1CNT(_i) (0x000C5300 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_PEQ1CNT_MAX_INDEX 15
-#define I40E_GLHMC_PEQ1CNT_FPMPEQ1CNT_SHIFT 0
-#define I40E_GLHMC_PEQ1CNT_FPMPEQ1CNT_MASK I40E_MASK(0x1FFFFFFF, I40E_GLHMC_PEQ1CNT_FPMPEQ1CNT_SHIFT)
-#define I40E_GLHMC_PEQ1FLBASE(_i) (0x000C5400 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_PEQ1FLBASE_MAX_INDEX 15
-#define I40E_GLHMC_PEQ1FLBASE_FPMPEQ1FLBASE_SHIFT 0
-#define I40E_GLHMC_PEQ1FLBASE_FPMPEQ1FLBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_PEQ1FLBASE_FPMPEQ1FLBASE_SHIFT)
-#define I40E_GLHMC_PEQ1FLMAX 0x000C2058 /* Reset: CORER */
-#define I40E_GLHMC_PEQ1FLMAX_PMPEQ1FLMAX_SHIFT 0
-#define I40E_GLHMC_PEQ1FLMAX_PMPEQ1FLMAX_MASK I40E_MASK(0x3FFFFFF, I40E_GLHMC_PEQ1FLMAX_PMPEQ1FLMAX_SHIFT)
-#define I40E_GLHMC_PEQ1MAX 0x000C2054 /* Reset: CORER */
-#define I40E_GLHMC_PEQ1MAX_PMPEQ1MAX_SHIFT 0
-#define I40E_GLHMC_PEQ1MAX_PMPEQ1MAX_MASK I40E_MASK(0x3FFFFFF, I40E_GLHMC_PEQ1MAX_PMPEQ1MAX_SHIFT)
-#define I40E_GLHMC_PEQ1OBJSZ 0x000C2050 /* Reset: CORER */
-#define I40E_GLHMC_PEQ1OBJSZ_PMPEQ1OBJSZ_SHIFT 0
-#define I40E_GLHMC_PEQ1OBJSZ_PMPEQ1OBJSZ_MASK I40E_MASK(0xF, I40E_GLHMC_PEQ1OBJSZ_PMPEQ1OBJSZ_SHIFT)
-#define I40E_GLHMC_PEQPBASE(_i) (0x000C4000 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_PEQPBASE_MAX_INDEX 15
-#define I40E_GLHMC_PEQPBASE_FPMPEQPBASE_SHIFT 0
-#define I40E_GLHMC_PEQPBASE_FPMPEQPBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_PEQPBASE_FPMPEQPBASE_SHIFT)
-#define I40E_GLHMC_PEQPCNT(_i) (0x000C4100 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_PEQPCNT_MAX_INDEX 15
-#define I40E_GLHMC_PEQPCNT_FPMPEQPCNT_SHIFT 0
-#define I40E_GLHMC_PEQPCNT_FPMPEQPCNT_MASK I40E_MASK(0x1FFFFFFF, I40E_GLHMC_PEQPCNT_FPMPEQPCNT_SHIFT)
-#define I40E_GLHMC_PEQPOBJSZ 0x000C201c /* Reset: CORER */
-#define I40E_GLHMC_PEQPOBJSZ_PMPEQPOBJSZ_SHIFT 0
-#define I40E_GLHMC_PEQPOBJSZ_PMPEQPOBJSZ_MASK I40E_MASK(0xF, I40E_GLHMC_PEQPOBJSZ_PMPEQPOBJSZ_SHIFT)
-#define I40E_GLHMC_PESRQBASE(_i) (0x000C4400 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_PESRQBASE_MAX_INDEX 15
-#define I40E_GLHMC_PESRQBASE_FPMPESRQBASE_SHIFT 0
-#define I40E_GLHMC_PESRQBASE_FPMPESRQBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_PESRQBASE_FPMPESRQBASE_SHIFT)
-#define I40E_GLHMC_PESRQCNT(_i) (0x000C4500 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_PESRQCNT_MAX_INDEX 15
-#define I40E_GLHMC_PESRQCNT_FPMPESRQCNT_SHIFT 0
-#define I40E_GLHMC_PESRQCNT_FPMPESRQCNT_MASK I40E_MASK(0x1FFFFFFF, I40E_GLHMC_PESRQCNT_FPMPESRQCNT_SHIFT)
-#define I40E_GLHMC_PESRQMAX 0x000C2028 /* Reset: CORER */
-#define I40E_GLHMC_PESRQMAX_PMPESRQMAX_SHIFT 0
-#define I40E_GLHMC_PESRQMAX_PMPESRQMAX_MASK I40E_MASK(0xFFFF, I40E_GLHMC_PESRQMAX_PMPESRQMAX_SHIFT)
-#define I40E_GLHMC_PESRQOBJSZ 0x000C2024 /* Reset: CORER */
-#define I40E_GLHMC_PESRQOBJSZ_PMPESRQOBJSZ_SHIFT 0
-#define I40E_GLHMC_PESRQOBJSZ_PMPESRQOBJSZ_MASK I40E_MASK(0xF, I40E_GLHMC_PESRQOBJSZ_PMPESRQOBJSZ_SHIFT)
-#define I40E_GLHMC_PETIMERBASE(_i) (0x000C5A00 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_PETIMERBASE_MAX_INDEX 15
-#define I40E_GLHMC_PETIMERBASE_FPMPETIMERBASE_SHIFT 0
-#define I40E_GLHMC_PETIMERBASE_FPMPETIMERBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_PETIMERBASE_FPMPETIMERBASE_SHIFT)
-#define I40E_GLHMC_PETIMERCNT(_i) (0x000C5B00 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_PETIMERCNT_MAX_INDEX 15
-#define I40E_GLHMC_PETIMERCNT_FPMPETIMERCNT_SHIFT 0
-#define I40E_GLHMC_PETIMERCNT_FPMPETIMERCNT_MASK I40E_MASK(0x1FFFFFFF, I40E_GLHMC_PETIMERCNT_FPMPETIMERCNT_SHIFT)
-#define I40E_GLHMC_PETIMERMAX 0x000C2084 /* Reset: CORER */
-#define I40E_GLHMC_PETIMERMAX_PMPETIMERMAX_SHIFT 0
-#define I40E_GLHMC_PETIMERMAX_PMPETIMERMAX_MASK I40E_MASK(0x1FFFFFFF, I40E_GLHMC_PETIMERMAX_PMPETIMERMAX_SHIFT)
-#define I40E_GLHMC_PETIMEROBJSZ 0x000C2080 /* Reset: CORER */
-#define I40E_GLHMC_PETIMEROBJSZ_PMPETIMEROBJSZ_SHIFT 0
-#define I40E_GLHMC_PETIMEROBJSZ_PMPETIMEROBJSZ_MASK I40E_MASK(0xF, I40E_GLHMC_PETIMEROBJSZ_PMPETIMEROBJSZ_SHIFT)
-#define I40E_GLHMC_PEXFBASE(_i) (0x000C4e00 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_PEXFBASE_MAX_INDEX 15
-#define I40E_GLHMC_PEXFBASE_FPMPEXFBASE_SHIFT 0
-#define I40E_GLHMC_PEXFBASE_FPMPEXFBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_PEXFBASE_FPMPEXFBASE_SHIFT)
-#define I40E_GLHMC_PEXFCNT(_i) (0x000C4f00 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_PEXFCNT_MAX_INDEX 15
-#define I40E_GLHMC_PEXFCNT_FPMPEXFCNT_SHIFT 0
-#define I40E_GLHMC_PEXFCNT_FPMPEXFCNT_MASK I40E_MASK(0x1FFFFFFF, I40E_GLHMC_PEXFCNT_FPMPEXFCNT_SHIFT)
-#define I40E_GLHMC_PEXFFLBASE(_i) (0x000C5000 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_PEXFFLBASE_MAX_INDEX 15
-#define I40E_GLHMC_PEXFFLBASE_FPMPEXFFLBASE_SHIFT 0
-#define I40E_GLHMC_PEXFFLBASE_FPMPEXFFLBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_PEXFFLBASE_FPMPEXFFLBASE_SHIFT)
-#define I40E_GLHMC_PEXFFLMAX 0x000C204c /* Reset: CORER */
-#define I40E_GLHMC_PEXFFLMAX_PMPEXFFLMAX_SHIFT 0
-#define I40E_GLHMC_PEXFFLMAX_PMPEXFFLMAX_MASK I40E_MASK(0x1FFFFFF, I40E_GLHMC_PEXFFLMAX_PMPEXFFLMAX_SHIFT)
-#define I40E_GLHMC_PEXFMAX 0x000C2048 /* Reset: CORER */
-#define I40E_GLHMC_PEXFMAX_PMPEXFMAX_SHIFT 0
-#define I40E_GLHMC_PEXFMAX_PMPEXFMAX_MASK I40E_MASK(0x3FFFFFF, I40E_GLHMC_PEXFMAX_PMPEXFMAX_SHIFT)
-#define I40E_GLHMC_PEXFOBJSZ 0x000C2044 /* Reset: CORER */
-#define I40E_GLHMC_PEXFOBJSZ_PMPEXFOBJSZ_SHIFT 0
-#define I40E_GLHMC_PEXFOBJSZ_PMPEXFOBJSZ_MASK I40E_MASK(0xF, I40E_GLHMC_PEXFOBJSZ_PMPEXFOBJSZ_SHIFT)
-#define I40E_GLHMC_PFPESDPART(_i) (0x000C0880 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLHMC_PFPESDPART_MAX_INDEX 15
-#define I40E_GLHMC_PFPESDPART_PMSDBASE_SHIFT 0
-#define I40E_GLHMC_PFPESDPART_PMSDBASE_MASK I40E_MASK(0xFFF, I40E_GLHMC_PFPESDPART_PMSDBASE_SHIFT)
-#define I40E_GLHMC_PFPESDPART_PMSDSIZE_SHIFT 16
-#define I40E_GLHMC_PFPESDPART_PMSDSIZE_MASK I40E_MASK(0x1FFF, I40E_GLHMC_PFPESDPART_PMSDSIZE_SHIFT)
-#define I40E_GLHMC_VFAPBVTINUSEBASE(_i) (0x000Cca00 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFAPBVTINUSEBASE_MAX_INDEX 31
-#define I40E_GLHMC_VFAPBVTINUSEBASE_FPMAPBINUSEBASE_SHIFT 0
-#define I40E_GLHMC_VFAPBVTINUSEBASE_FPMAPBINUSEBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_VFAPBVTINUSEBASE_FPMAPBINUSEBASE_SHIFT)
-#define I40E_GLHMC_VFCEQPART(_i) (0x00132240 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFCEQPART_MAX_INDEX 31
-#define I40E_GLHMC_VFCEQPART_PMCEQBASE_SHIFT 0
-#define I40E_GLHMC_VFCEQPART_PMCEQBASE_MASK I40E_MASK(0xFF, I40E_GLHMC_VFCEQPART_PMCEQBASE_SHIFT)
-#define I40E_GLHMC_VFCEQPART_PMCEQSIZE_SHIFT 16
-#define I40E_GLHMC_VFCEQPART_PMCEQSIZE_MASK I40E_MASK(0x1FF, I40E_GLHMC_VFCEQPART_PMCEQSIZE_SHIFT)
-#define I40E_GLHMC_VFDBCQPART(_i) (0x00132140 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFDBCQPART_MAX_INDEX 31
-#define I40E_GLHMC_VFDBCQPART_PMDBCQBASE_SHIFT 0
-#define I40E_GLHMC_VFDBCQPART_PMDBCQBASE_MASK I40E_MASK(0x3FFF, I40E_GLHMC_VFDBCQPART_PMDBCQBASE_SHIFT)
-#define I40E_GLHMC_VFDBCQPART_PMDBCQSIZE_SHIFT 16
-#define I40E_GLHMC_VFDBCQPART_PMDBCQSIZE_MASK I40E_MASK(0x7FFF, I40E_GLHMC_VFDBCQPART_PMDBCQSIZE_SHIFT)
-#define I40E_GLHMC_VFDBQPPART(_i) (0x00138E00 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFDBQPPART_MAX_INDEX 31
-#define I40E_GLHMC_VFDBQPPART_PMDBQPBASE_SHIFT 0
-#define I40E_GLHMC_VFDBQPPART_PMDBQPBASE_MASK I40E_MASK(0x3FFF, I40E_GLHMC_VFDBQPPART_PMDBQPBASE_SHIFT)
-#define I40E_GLHMC_VFDBQPPART_PMDBQPSIZE_SHIFT 16
-#define I40E_GLHMC_VFDBQPPART_PMDBQPSIZE_MASK I40E_MASK(0x7FFF, I40E_GLHMC_VFDBQPPART_PMDBQPSIZE_SHIFT)
-#define I40E_GLHMC_VFFSIAVBASE(_i) (0x000Cd600 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFFSIAVBASE_MAX_INDEX 31
-#define I40E_GLHMC_VFFSIAVBASE_FPMFSIAVBASE_SHIFT 0
-#define I40E_GLHMC_VFFSIAVBASE_FPMFSIAVBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_VFFSIAVBASE_FPMFSIAVBASE_SHIFT)
-#define I40E_GLHMC_VFFSIAVCNT(_i) (0x000Cd700 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFFSIAVCNT_MAX_INDEX 31
-#define I40E_GLHMC_VFFSIAVCNT_FPMFSIAVCNT_SHIFT 0
-#define I40E_GLHMC_VFFSIAVCNT_FPMFSIAVCNT_MASK I40E_MASK(0x1FFFFFFF, I40E_GLHMC_VFFSIAVCNT_FPMFSIAVCNT_SHIFT)
-#define I40E_GLHMC_VFPDINV(_i) (0x000C8300 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFPDINV_MAX_INDEX 31
-#define I40E_GLHMC_VFPDINV_PMSDIDX_SHIFT 0
-#define I40E_GLHMC_VFPDINV_PMSDIDX_MASK I40E_MASK(0xFFF, I40E_GLHMC_VFPDINV_PMSDIDX_SHIFT)
-#define I40E_GLHMC_VFPDINV_PMSDPARTSEL_SHIFT 15
-#define I40E_GLHMC_VFPDINV_PMSDPARTSEL_MASK I40E_MASK(0x1, I40E_GLHMC_VFPDINV_PMSDPARTSEL_SHIFT)
-#define I40E_GLHMC_VFPDINV_PMPDIDX_SHIFT 16
-#define I40E_GLHMC_VFPDINV_PMPDIDX_MASK I40E_MASK(0x1FF, I40E_GLHMC_VFPDINV_PMPDIDX_SHIFT)
-#define I40E_GLHMC_VFPEARPBASE(_i) (0x000Cc800 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFPEARPBASE_MAX_INDEX 31
-#define I40E_GLHMC_VFPEARPBASE_FPMPEARPBASE_SHIFT 0
-#define I40E_GLHMC_VFPEARPBASE_FPMPEARPBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_VFPEARPBASE_FPMPEARPBASE_SHIFT)
-#define I40E_GLHMC_VFPEARPCNT(_i) (0x000Cc900 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFPEARPCNT_MAX_INDEX 31
-#define I40E_GLHMC_VFPEARPCNT_FPMPEARPCNT_SHIFT 0
-#define I40E_GLHMC_VFPEARPCNT_FPMPEARPCNT_MASK I40E_MASK(0x1FFFFFFF, I40E_GLHMC_VFPEARPCNT_FPMPEARPCNT_SHIFT)
-#define I40E_GLHMC_VFPECQBASE(_i) (0x000Cc200 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFPECQBASE_MAX_INDEX 31
-#define I40E_GLHMC_VFPECQBASE_FPMPECQBASE_SHIFT 0
-#define I40E_GLHMC_VFPECQBASE_FPMPECQBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_VFPECQBASE_FPMPECQBASE_SHIFT)
-#define I40E_GLHMC_VFPECQCNT(_i) (0x000Cc300 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFPECQCNT_MAX_INDEX 31
-#define I40E_GLHMC_VFPECQCNT_FPMPECQCNT_SHIFT 0
-#define I40E_GLHMC_VFPECQCNT_FPMPECQCNT_MASK I40E_MASK(0x1FFFFFFF, I40E_GLHMC_VFPECQCNT_FPMPECQCNT_SHIFT)
-#define I40E_GLHMC_VFPEHTCNT(_i) (0x000Cc700 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFPEHTCNT_MAX_INDEX 31
-#define I40E_GLHMC_VFPEHTCNT_FPMPEHTCNT_SHIFT 0
-#define I40E_GLHMC_VFPEHTCNT_FPMPEHTCNT_MASK I40E_MASK(0x1FFFFFFF, I40E_GLHMC_VFPEHTCNT_FPMPEHTCNT_SHIFT)
-#define I40E_GLHMC_VFPEHTEBASE(_i) (0x000Cc600 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFPEHTEBASE_MAX_INDEX 31
-#define I40E_GLHMC_VFPEHTEBASE_FPMPEHTEBASE_SHIFT 0
-#define I40E_GLHMC_VFPEHTEBASE_FPMPEHTEBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_VFPEHTEBASE_FPMPEHTEBASE_SHIFT)
-#define I40E_GLHMC_VFPEMRBASE(_i) (0x000Ccc00 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFPEMRBASE_MAX_INDEX 31
-#define I40E_GLHMC_VFPEMRBASE_FPMPEMRBASE_SHIFT 0
-#define I40E_GLHMC_VFPEMRBASE_FPMPEMRBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_VFPEMRBASE_FPMPEMRBASE_SHIFT)
-#define I40E_GLHMC_VFPEMRCNT(_i) (0x000Ccd00 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFPEMRCNT_MAX_INDEX 31
-#define I40E_GLHMC_VFPEMRCNT_FPMPEMRSZ_SHIFT 0
-#define I40E_GLHMC_VFPEMRCNT_FPMPEMRSZ_MASK I40E_MASK(0x1FFFFFFF, I40E_GLHMC_VFPEMRCNT_FPMPEMRSZ_SHIFT)
-#define I40E_GLHMC_VFPEPBLBASE(_i) (0x000Cd800 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFPEPBLBASE_MAX_INDEX 31
-#define I40E_GLHMC_VFPEPBLBASE_FPMPEPBLBASE_SHIFT 0
-#define I40E_GLHMC_VFPEPBLBASE_FPMPEPBLBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_VFPEPBLBASE_FPMPEPBLBASE_SHIFT)
-#define I40E_GLHMC_VFPEPBLCNT(_i) (0x000Cd900 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFPEPBLCNT_MAX_INDEX 31
-#define I40E_GLHMC_VFPEPBLCNT_FPMPEPBLCNT_SHIFT 0
-#define I40E_GLHMC_VFPEPBLCNT_FPMPEPBLCNT_MASK I40E_MASK(0x1FFFFFFF, I40E_GLHMC_VFPEPBLCNT_FPMPEPBLCNT_SHIFT)
-#define I40E_GLHMC_VFPEQ1BASE(_i) (0x000Cd200 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFPEQ1BASE_MAX_INDEX 31
-#define I40E_GLHMC_VFPEQ1BASE_FPMPEQ1BASE_SHIFT 0
-#define I40E_GLHMC_VFPEQ1BASE_FPMPEQ1BASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_VFPEQ1BASE_FPMPEQ1BASE_SHIFT)
-#define I40E_GLHMC_VFPEQ1CNT(_i) (0x000Cd300 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFPEQ1CNT_MAX_INDEX 31
-#define I40E_GLHMC_VFPEQ1CNT_FPMPEQ1CNT_SHIFT 0
-#define I40E_GLHMC_VFPEQ1CNT_FPMPEQ1CNT_MASK I40E_MASK(0x1FFFFFFF, I40E_GLHMC_VFPEQ1CNT_FPMPEQ1CNT_SHIFT)
-#define I40E_GLHMC_VFPEQ1FLBASE(_i) (0x000Cd400 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFPEQ1FLBASE_MAX_INDEX 31
-#define I40E_GLHMC_VFPEQ1FLBASE_FPMPEQ1FLBASE_SHIFT 0
-#define I40E_GLHMC_VFPEQ1FLBASE_FPMPEQ1FLBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_VFPEQ1FLBASE_FPMPEQ1FLBASE_SHIFT)
-#define I40E_GLHMC_VFPEQPBASE(_i) (0x000Cc000 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFPEQPBASE_MAX_INDEX 31
-#define I40E_GLHMC_VFPEQPBASE_FPMPEQPBASE_SHIFT 0
-#define I40E_GLHMC_VFPEQPBASE_FPMPEQPBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_VFPEQPBASE_FPMPEQPBASE_SHIFT)
-#define I40E_GLHMC_VFPEQPCNT(_i) (0x000Cc100 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFPEQPCNT_MAX_INDEX 31
-#define I40E_GLHMC_VFPEQPCNT_FPMPEQPCNT_SHIFT 0
-#define I40E_GLHMC_VFPEQPCNT_FPMPEQPCNT_MASK I40E_MASK(0x1FFFFFFF, I40E_GLHMC_VFPEQPCNT_FPMPEQPCNT_SHIFT)
-#define I40E_GLHMC_VFPESRQBASE(_i) (0x000Cc400 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFPESRQBASE_MAX_INDEX 31
-#define I40E_GLHMC_VFPESRQBASE_FPMPESRQBASE_SHIFT 0
-#define I40E_GLHMC_VFPESRQBASE_FPMPESRQBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_VFPESRQBASE_FPMPESRQBASE_SHIFT)
-#define I40E_GLHMC_VFPESRQCNT(_i) (0x000Cc500 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFPESRQCNT_MAX_INDEX 31
-#define I40E_GLHMC_VFPESRQCNT_FPMPESRQCNT_SHIFT 0
-#define I40E_GLHMC_VFPESRQCNT_FPMPESRQCNT_MASK I40E_MASK(0x1FFFFFFF, I40E_GLHMC_VFPESRQCNT_FPMPESRQCNT_SHIFT)
-#define I40E_GLHMC_VFPETIMERBASE(_i) (0x000CDA00 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFPETIMERBASE_MAX_INDEX 31
-#define I40E_GLHMC_VFPETIMERBASE_FPMPETIMERBASE_SHIFT 0
-#define I40E_GLHMC_VFPETIMERBASE_FPMPETIMERBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_VFPETIMERBASE_FPMPETIMERBASE_SHIFT)
-#define I40E_GLHMC_VFPETIMERCNT(_i) (0x000CDB00 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFPETIMERCNT_MAX_INDEX 31
-#define I40E_GLHMC_VFPETIMERCNT_FPMPETIMERCNT_SHIFT 0
-#define I40E_GLHMC_VFPETIMERCNT_FPMPETIMERCNT_MASK I40E_MASK(0x1FFFFFFF, I40E_GLHMC_VFPETIMERCNT_FPMPETIMERCNT_SHIFT)
-#define I40E_GLHMC_VFPEXFBASE(_i) (0x000Cce00 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFPEXFBASE_MAX_INDEX 31
-#define I40E_GLHMC_VFPEXFBASE_FPMPEXFBASE_SHIFT 0
-#define I40E_GLHMC_VFPEXFBASE_FPMPEXFBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_VFPEXFBASE_FPMPEXFBASE_SHIFT)
-#define I40E_GLHMC_VFPEXFCNT(_i) (0x000Ccf00 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFPEXFCNT_MAX_INDEX 31
-#define I40E_GLHMC_VFPEXFCNT_FPMPEXFCNT_SHIFT 0
-#define I40E_GLHMC_VFPEXFCNT_FPMPEXFCNT_MASK I40E_MASK(0x1FFFFFFF, I40E_GLHMC_VFPEXFCNT_FPMPEXFCNT_SHIFT)
-#define I40E_GLHMC_VFPEXFFLBASE(_i) (0x000Cd000 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFPEXFFLBASE_MAX_INDEX 31
-#define I40E_GLHMC_VFPEXFFLBASE_FPMPEXFFLBASE_SHIFT 0
-#define I40E_GLHMC_VFPEXFFLBASE_FPMPEXFFLBASE_MASK I40E_MASK(0xFFFFFF, I40E_GLHMC_VFPEXFFLBASE_FPMPEXFFLBASE_SHIFT)
-#define I40E_GLHMC_VFSDPART(_i) (0x000C8800 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLHMC_VFSDPART_MAX_INDEX 31
-#define I40E_GLHMC_VFSDPART_PMSDBASE_SHIFT 0
-#define I40E_GLHMC_VFSDPART_PMSDBASE_MASK I40E_MASK(0xFFF, I40E_GLHMC_VFSDPART_PMSDBASE_SHIFT)
-#define I40E_GLHMC_VFSDPART_PMSDSIZE_SHIFT 16
-#define I40E_GLHMC_VFSDPART_PMSDSIZE_MASK I40E_MASK(0x1FFF, I40E_GLHMC_VFSDPART_PMSDSIZE_SHIFT)
-#define I40E_GLPBLOC_CACHESIZE 0x000A80BC /* Reset: CORER */
-#define I40E_GLPBLOC_CACHESIZE_WORD_SIZE_SHIFT 0
-#define I40E_GLPBLOC_CACHESIZE_WORD_SIZE_MASK I40E_MASK(0xFF, I40E_GLPBLOC_CACHESIZE_WORD_SIZE_SHIFT)
-#define I40E_GLPBLOC_CACHESIZE_SETS_SHIFT 8
-#define I40E_GLPBLOC_CACHESIZE_SETS_MASK I40E_MASK(0xFFF, I40E_GLPBLOC_CACHESIZE_SETS_SHIFT)
-#define I40E_GLPBLOC_CACHESIZE_WAYS_SHIFT 20
-#define I40E_GLPBLOC_CACHESIZE_WAYS_MASK I40E_MASK(0xF, I40E_GLPBLOC_CACHESIZE_WAYS_SHIFT)
-#define I40E_GLPDOC_CACHESIZE 0x000D0088 /* Reset: CORER */
-#define I40E_GLPDOC_CACHESIZE_WORD_SIZE_SHIFT 0
-#define I40E_GLPDOC_CACHESIZE_WORD_SIZE_MASK I40E_MASK(0xFF, I40E_GLPDOC_CACHESIZE_WORD_SIZE_SHIFT)
-#define I40E_GLPDOC_CACHESIZE_SETS_SHIFT 8
-#define I40E_GLPDOC_CACHESIZE_SETS_MASK I40E_MASK(0xFFF, I40E_GLPDOC_CACHESIZE_SETS_SHIFT)
-#define I40E_GLPDOC_CACHESIZE_WAYS_SHIFT 20
-#define I40E_GLPDOC_CACHESIZE_WAYS_MASK I40E_MASK(0xF, I40E_GLPDOC_CACHESIZE_WAYS_SHIFT)
-#define I40E_GLPEOC_CACHESIZE 0x000A60E8 /* Reset: CORER */
-#define I40E_GLPEOC_CACHESIZE_WORD_SIZE_SHIFT 0
-#define I40E_GLPEOC_CACHESIZE_WORD_SIZE_MASK I40E_MASK(0xFF, I40E_GLPEOC_CACHESIZE_WORD_SIZE_SHIFT)
-#define I40E_GLPEOC_CACHESIZE_SETS_SHIFT 8
-#define I40E_GLPEOC_CACHESIZE_SETS_MASK I40E_MASK(0xFFF, I40E_GLPEOC_CACHESIZE_SETS_SHIFT)
-#define I40E_GLPEOC_CACHESIZE_WAYS_SHIFT 20
-#define I40E_GLPEOC_CACHESIZE_WAYS_MASK I40E_MASK(0xF, I40E_GLPEOC_CACHESIZE_WAYS_SHIFT)
-#define I40E_PFHMC_PDINV_PMSDPARTSEL_SHIFT 15
-#define I40E_PFHMC_PDINV_PMSDPARTSEL_MASK I40E_MASK(0x1, I40E_PFHMC_PDINV_PMSDPARTSEL_SHIFT)
-#define I40E_PFHMC_SDCMD_PMSDPARTSEL_SHIFT 15
-#define I40E_PFHMC_SDCMD_PMSDPARTSEL_MASK I40E_MASK(0x1, I40E_PFHMC_SDCMD_PMSDPARTSEL_SHIFT)
-#define I40E_GL_PPRS_SPARE 0x000856E0 /* Reset: CORER */
-#define I40E_GL_PPRS_SPARE_GL_PPRS_SPARE_SHIFT 0
-#define I40E_GL_PPRS_SPARE_GL_PPRS_SPARE_MASK I40E_MASK(0xFFFFFFFF, I40E_GL_PPRS_SPARE_GL_PPRS_SPARE_SHIFT)
-#define I40E_GL_TLAN_SPARE 0x000E64E0 /* Reset: CORER */
-#define I40E_GL_TLAN_SPARE_GL_TLAN_SPARE_SHIFT 0
-#define I40E_GL_TLAN_SPARE_GL_TLAN_SPARE_MASK I40E_MASK(0xFFFFFFFF, I40E_GL_TLAN_SPARE_GL_TLAN_SPARE_SHIFT)
-#define I40E_GL_TUPM_SPARE 0x000a2230 /* Reset: CORER */
-#define I40E_GL_TUPM_SPARE_GL_TUPM_SPARE_SHIFT 0
-#define I40E_GL_TUPM_SPARE_GL_TUPM_SPARE_MASK I40E_MASK(0xFFFFFFFF, I40E_GL_TUPM_SPARE_GL_TUPM_SPARE_SHIFT)
-#define I40E_GLGEN_CAR_DEBUG 0x000B81C0 /* Reset: POR */
-#define I40E_GLGEN_CAR_DEBUG_CAR_UPPER_CORE_CLK_EN_SHIFT 0
-#define I40E_GLGEN_CAR_DEBUG_CAR_UPPER_CORE_CLK_EN_MASK I40E_MASK(0x1, I40E_GLGEN_CAR_DEBUG_CAR_UPPER_CORE_CLK_EN_SHIFT)
-#define I40E_GLGEN_CAR_DEBUG_CAR_PCIE_HIU_CLK_EN_SHIFT 1
-#define I40E_GLGEN_CAR_DEBUG_CAR_PCIE_HIU_CLK_EN_MASK I40E_MASK(0x1, I40E_GLGEN_CAR_DEBUG_CAR_PCIE_HIU_CLK_EN_SHIFT)
-#define I40E_GLGEN_CAR_DEBUG_CAR_PE_CLK_EN_SHIFT 2
-#define I40E_GLGEN_CAR_DEBUG_CAR_PE_CLK_EN_MASK I40E_MASK(0x1, I40E_GLGEN_CAR_DEBUG_CAR_PE_CLK_EN_SHIFT)
-#define I40E_GLGEN_CAR_DEBUG_CAR_PCIE_PRIM_CLK_ACTIVE_SHIFT 3
-#define I40E_GLGEN_CAR_DEBUG_CAR_PCIE_PRIM_CLK_ACTIVE_MASK I40E_MASK(0x1, I40E_GLGEN_CAR_DEBUG_CAR_PCIE_PRIM_CLK_ACTIVE_SHIFT)
-#define I40E_GLGEN_CAR_DEBUG_CDC_PE_ACTIVE_SHIFT 4
-#define I40E_GLGEN_CAR_DEBUG_CDC_PE_ACTIVE_MASK I40E_MASK(0x1, I40E_GLGEN_CAR_DEBUG_CDC_PE_ACTIVE_SHIFT)
-#define I40E_GLGEN_CAR_DEBUG_CAR_PCIE_RAW_PRST_RESET_N_SHIFT 5
-#define I40E_GLGEN_CAR_DEBUG_CAR_PCIE_RAW_PRST_RESET_N_MASK I40E_MASK(0x1, I40E_GLGEN_CAR_DEBUG_CAR_PCIE_RAW_PRST_RESET_N_SHIFT)
-#define I40E_GLGEN_CAR_DEBUG_CAR_PCIE_RAW_SCLR_RESET_N_SHIFT 6
-#define I40E_GLGEN_CAR_DEBUG_CAR_PCIE_RAW_SCLR_RESET_N_MASK I40E_MASK(0x1, I40E_GLGEN_CAR_DEBUG_CAR_PCIE_RAW_SCLR_RESET_N_SHIFT)
-#define I40E_GLGEN_CAR_DEBUG_CAR_PCIE_RAW_IB_RESET_N_SHIFT 7
-#define I40E_GLGEN_CAR_DEBUG_CAR_PCIE_RAW_IB_RESET_N_MASK I40E_MASK(0x1, I40E_GLGEN_CAR_DEBUG_CAR_PCIE_RAW_IB_RESET_N_SHIFT)
-#define I40E_GLGEN_CAR_DEBUG_CAR_PCIE_RAW_IMIB_RESET_N_SHIFT 8
-#define I40E_GLGEN_CAR_DEBUG_CAR_PCIE_RAW_IMIB_RESET_N_MASK I40E_MASK(0x1, I40E_GLGEN_CAR_DEBUG_CAR_PCIE_RAW_IMIB_RESET_N_SHIFT)
-#define I40E_GLGEN_CAR_DEBUG_CAR_RAW_EMP_RESET_N_SHIFT 9
-#define I40E_GLGEN_CAR_DEBUG_CAR_RAW_EMP_RESET_N_MASK I40E_MASK(0x1, I40E_GLGEN_CAR_DEBUG_CAR_RAW_EMP_RESET_N_SHIFT)
-#define I40E_GLGEN_CAR_DEBUG_CAR_RAW_GLOBAL_RESET_N_SHIFT 10
-#define I40E_GLGEN_CAR_DEBUG_CAR_RAW_GLOBAL_RESET_N_MASK I40E_MASK(0x1, I40E_GLGEN_CAR_DEBUG_CAR_RAW_GLOBAL_RESET_N_SHIFT)
-#define I40E_GLGEN_CAR_DEBUG_CAR_RAW_LAN_POWER_GOOD_SHIFT 11
-#define I40E_GLGEN_CAR_DEBUG_CAR_RAW_LAN_POWER_GOOD_MASK I40E_MASK(0x1, I40E_GLGEN_CAR_DEBUG_CAR_RAW_LAN_POWER_GOOD_SHIFT)
-#define I40E_GLGEN_CAR_DEBUG_CDC_IOSF_PRIMERY_RST_B_SHIFT 12
-#define I40E_GLGEN_CAR_DEBUG_CDC_IOSF_PRIMERY_RST_B_MASK I40E_MASK(0x1, I40E_GLGEN_CAR_DEBUG_CDC_IOSF_PRIMERY_RST_B_SHIFT)
-#define I40E_GLGEN_CAR_DEBUG_GBE_GLOBALRST_B_SHIFT 13
-#define I40E_GLGEN_CAR_DEBUG_GBE_GLOBALRST_B_MASK I40E_MASK(0x1, I40E_GLGEN_CAR_DEBUG_GBE_GLOBALRST_B_SHIFT)
-#define I40E_GLGEN_CAR_DEBUG_FLEEP_AL_GLOBR_DONE_SHIFT 14
-#define I40E_GLGEN_CAR_DEBUG_FLEEP_AL_GLOBR_DONE_MASK I40E_MASK(0x1, I40E_GLGEN_CAR_DEBUG_FLEEP_AL_GLOBR_DONE_SHIFT)
-#define I40E_GLGEN_MISC_SPARE 0x000880E0 /* Reset: POR */
-#define I40E_GLGEN_MISC_SPARE_GLGEN_MISC_SPARE_SHIFT 0
-#define I40E_GLGEN_MISC_SPARE_GLGEN_MISC_SPARE_MASK I40E_MASK(0xFFFFFFFF, I40E_GLGEN_MISC_SPARE_GLGEN_MISC_SPARE_SHIFT)
-#define I40E_GL_UFUSE_SOC 0x000BE550 /* Reset: POR */
-#define I40E_GL_UFUSE_SOC_PORT_MODE_SHIFT 0
-#define I40E_GL_UFUSE_SOC_PORT_MODE_MASK I40E_MASK(0x3, I40E_GL_UFUSE_SOC_PORT_MODE_SHIFT)
-#define I40E_GL_UFUSE_SOC_NIC_ID_SHIFT 2
-#define I40E_GL_UFUSE_SOC_NIC_ID_MASK I40E_MASK(0x1, I40E_GL_UFUSE_SOC_NIC_ID_SHIFT)
-#define I40E_GL_UFUSE_SOC_SPARE_FUSES_SHIFT 3
-#define I40E_GL_UFUSE_SOC_SPARE_FUSES_MASK I40E_MASK(0x1FFF, I40E_GL_UFUSE_SOC_SPARE_FUSES_SHIFT)
 #define I40E_PFINT_DYN_CTL0_WB_ON_ITR_SHIFT 30
 #define I40E_PFINT_DYN_CTL0_WB_ON_ITR_MASK I40E_MASK(0x1, I40E_PFINT_DYN_CTL0_WB_ON_ITR_SHIFT)
 #define I40E_PFINT_DYN_CTLN_WB_ON_ITR_SHIFT 30
 #define I40E_PFINT_DYN_CTLN_WB_ON_ITR_MASK I40E_MASK(0x1, I40E_PFINT_DYN_CTLN_WB_ON_ITR_SHIFT)
-#define I40E_VFINT_DYN_CTL0_WB_ON_ITR_SHIFT 30
-#define I40E_VFINT_DYN_CTL0_WB_ON_ITR_MASK I40E_MASK(0x1, I40E_VFINT_DYN_CTL0_WB_ON_ITR_SHIFT)
-#define I40E_VFINT_DYN_CTLN_WB_ON_ITR_SHIFT 30
-#define I40E_VFINT_DYN_CTLN_WB_ON_ITR_MASK I40E_MASK(0x1, I40E_VFINT_DYN_CTLN_WB_ON_ITR_SHIFT)
-#define I40E_VPLAN_QBASE(_VF) (0x00074800 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: VFR */
-#define I40E_VPLAN_QBASE_MAX_INDEX 127
-#define I40E_VPLAN_QBASE_VFFIRSTQ_SHIFT 0
-#define I40E_VPLAN_QBASE_VFFIRSTQ_MASK I40E_MASK(0x7FF, I40E_VPLAN_QBASE_VFFIRSTQ_SHIFT)
-#define I40E_VPLAN_QBASE_VFNUMQ_SHIFT 11
-#define I40E_VPLAN_QBASE_VFNUMQ_MASK I40E_MASK(0xFF, I40E_VPLAN_QBASE_VFNUMQ_SHIFT)
-#define I40E_VPLAN_QBASE_VFQTABLE_ENA_SHIFT 31
-#define I40E_VPLAN_QBASE_VFQTABLE_ENA_MASK I40E_MASK(0x1, I40E_VPLAN_QBASE_VFQTABLE_ENA_SHIFT)
-#define I40E_PRTMAC_LINK_DOWN_COUNTER 0x001E2440 /* Reset: GLOBR */
-#define I40E_PRTMAC_LINK_DOWN_COUNTER_LINK_DOWN_COUNTER_SHIFT 0
-#define I40E_PRTMAC_LINK_DOWN_COUNTER_LINK_DOWN_COUNTER_MASK I40E_MASK(0xFFFF, I40E_PRTMAC_LINK_DOWN_COUNTER_LINK_DOWN_COUNTER_SHIFT)
-#define I40E_GLNVM_AL_REQ 0x000B6164 /* Reset: POR */
-#define I40E_GLNVM_AL_REQ_POR_SHIFT 0
-#define I40E_GLNVM_AL_REQ_POR_MASK I40E_MASK(0x1, I40E_GLNVM_AL_REQ_POR_SHIFT)
-#define I40E_GLNVM_AL_REQ_PCIE_IMIB_SHIFT 1
-#define I40E_GLNVM_AL_REQ_PCIE_IMIB_MASK I40E_MASK(0x1, I40E_GLNVM_AL_REQ_PCIE_IMIB_SHIFT)
-#define I40E_GLNVM_AL_REQ_GLOBR_SHIFT 2
-#define I40E_GLNVM_AL_REQ_GLOBR_MASK I40E_MASK(0x1, I40E_GLNVM_AL_REQ_GLOBR_SHIFT)
-#define I40E_GLNVM_AL_REQ_CORER_SHIFT 3
-#define I40E_GLNVM_AL_REQ_CORER_MASK I40E_MASK(0x1, I40E_GLNVM_AL_REQ_CORER_SHIFT)
-#define I40E_GLNVM_AL_REQ_PE_SHIFT 4
-#define I40E_GLNVM_AL_REQ_PE_MASK I40E_MASK(0x1, I40E_GLNVM_AL_REQ_PE_SHIFT)
-#define I40E_GLNVM_AL_REQ_PCIE_IMIB_ASSERT_SHIFT 5
-#define I40E_GLNVM_AL_REQ_PCIE_IMIB_ASSERT_MASK I40E_MASK(0x1, I40E_GLNVM_AL_REQ_PCIE_IMIB_ASSERT_SHIFT)
-#define I40E_GLNVM_ALTIMERS 0x000B6140 /* Reset: POR */
-#define I40E_GLNVM_ALTIMERS_PCI_ALTIMER_SHIFT 0
-#define I40E_GLNVM_ALTIMERS_PCI_ALTIMER_MASK I40E_MASK(0xFFF, I40E_GLNVM_ALTIMERS_PCI_ALTIMER_SHIFT)
-#define I40E_GLNVM_ALTIMERS_GEN_ALTIMER_SHIFT 12
-#define I40E_GLNVM_ALTIMERS_GEN_ALTIMER_MASK I40E_MASK(0xFFFFF, I40E_GLNVM_ALTIMERS_GEN_ALTIMER_SHIFT)
 #define I40E_GLNVM_FLA 0x000B6108 /* Reset: POR */
 #define I40E_GLNVM_FLA_LOCKED_SHIFT 6
 #define I40E_GLNVM_FLA_LOCKED_MASK I40E_MASK(0x1, I40E_GLNVM_FLA_LOCKED_SHIFT)
 
 #define I40E_GLNVM_ULD 0x000B6008 /* Reset: POR */
-#define I40E_GLNVM_ULD_PCIER_DONE_SHIFT 0
-#define I40E_GLNVM_ULD_PCIER_DONE_MASK I40E_MASK(0x1, I40E_GLNVM_ULD_PCIER_DONE_SHIFT)
-#define I40E_GLNVM_ULD_PCIER_DONE_1_SHIFT 1
-#define I40E_GLNVM_ULD_PCIER_DONE_1_MASK I40E_MASK(0x1, I40E_GLNVM_ULD_PCIER_DONE_1_SHIFT)
-#define I40E_GLNVM_ULD_CORER_DONE_SHIFT 3
-#define I40E_GLNVM_ULD_CORER_DONE_MASK I40E_MASK(0x1, I40E_GLNVM_ULD_CORER_DONE_SHIFT)
-#define I40E_GLNVM_ULD_GLOBR_DONE_SHIFT 4
-#define I40E_GLNVM_ULD_GLOBR_DONE_MASK I40E_MASK(0x1, I40E_GLNVM_ULD_GLOBR_DONE_SHIFT)
-#define I40E_GLNVM_ULD_POR_DONE_SHIFT 5
-#define I40E_GLNVM_ULD_POR_DONE_MASK I40E_MASK(0x1, I40E_GLNVM_ULD_POR_DONE_SHIFT)
-#define I40E_GLNVM_ULD_POR_DONE_1_SHIFT 8
-#define I40E_GLNVM_ULD_POR_DONE_1_MASK I40E_MASK(0x1, I40E_GLNVM_ULD_POR_DONE_1_SHIFT)
-#define I40E_GLNVM_ULD_PCIER_DONE_2_SHIFT 9
-#define I40E_GLNVM_ULD_PCIER_DONE_2_MASK I40E_MASK(0x1, I40E_GLNVM_ULD_PCIER_DONE_2_SHIFT)
-#define I40E_GLNVM_ULD_PE_DONE_SHIFT 10
-#define I40E_GLNVM_ULD_PE_DONE_MASK I40E_MASK(0x1, I40E_GLNVM_ULD_PE_DONE_SHIFT)
-#define I40E_GLNVM_ULT 0x000B6154 /* Reset: POR */
-#define I40E_GLNVM_ULT_CONF_PCIR_AE_SHIFT 0
-#define I40E_GLNVM_ULT_CONF_PCIR_AE_MASK I40E_MASK(0x1, I40E_GLNVM_ULT_CONF_PCIR_AE_SHIFT)
-#define I40E_GLNVM_ULT_CONF_PCIRTL_AE_SHIFT 1
-#define I40E_GLNVM_ULT_CONF_PCIRTL_AE_MASK I40E_MASK(0x1, I40E_GLNVM_ULT_CONF_PCIRTL_AE_SHIFT)
-#define I40E_GLNVM_ULT_RESERVED_1_SHIFT 2
-#define I40E_GLNVM_ULT_RESERVED_1_MASK I40E_MASK(0x1, I40E_GLNVM_ULT_RESERVED_1_SHIFT)
-#define I40E_GLNVM_ULT_CONF_CORE_AE_SHIFT 3
-#define I40E_GLNVM_ULT_CONF_CORE_AE_MASK I40E_MASK(0x1, I40E_GLNVM_ULT_CONF_CORE_AE_SHIFT)
-#define I40E_GLNVM_ULT_CONF_GLOBAL_AE_SHIFT 4
-#define I40E_GLNVM_ULT_CONF_GLOBAL_AE_MASK I40E_MASK(0x1, I40E_GLNVM_ULT_CONF_GLOBAL_AE_SHIFT)
-#define I40E_GLNVM_ULT_CONF_POR_AE_SHIFT 5
-#define I40E_GLNVM_ULT_CONF_POR_AE_MASK I40E_MASK(0x1, I40E_GLNVM_ULT_CONF_POR_AE_SHIFT)
-#define I40E_GLNVM_ULT_RESERVED_2_SHIFT 6
-#define I40E_GLNVM_ULT_RESERVED_2_MASK I40E_MASK(0x1, I40E_GLNVM_ULT_RESERVED_2_SHIFT)
-#define I40E_GLNVM_ULT_RESERVED_3_SHIFT 7
-#define I40E_GLNVM_ULT_RESERVED_3_MASK I40E_MASK(0x1, I40E_GLNVM_ULT_RESERVED_3_SHIFT)
-#define I40E_GLNVM_ULT_CONF_EMP_AE_SHIFT 8
-#define I40E_GLNVM_ULT_CONF_EMP_AE_MASK I40E_MASK(0x1, I40E_GLNVM_ULT_CONF_EMP_AE_SHIFT)
-#define I40E_GLNVM_ULT_CONF_PCIALT_AE_SHIFT 9
-#define I40E_GLNVM_ULT_CONF_PCIALT_AE_MASK I40E_MASK(0x1, I40E_GLNVM_ULT_CONF_PCIALT_AE_SHIFT)
-#define I40E_GLNVM_ULT_RESERVED_4_SHIFT 10
-#define I40E_GLNVM_ULT_RESERVED_4_MASK I40E_MASK(0x3FFFFF, I40E_GLNVM_ULT_RESERVED_4_SHIFT)
-#define I40E_MEM_INIT_DONE_STAT 0x000B615C /* Reset: POR */
-#define I40E_MEM_INIT_DONE_STAT_CMLAN_MEM_INIT_DONE_SHIFT 0
-#define I40E_MEM_INIT_DONE_STAT_CMLAN_MEM_INIT_DONE_MASK I40E_MASK(0x1, I40E_MEM_INIT_DONE_STAT_CMLAN_MEM_INIT_DONE_SHIFT)
-#define I40E_MEM_INIT_DONE_STAT_PMAT_MEM_INIT_DONE_SHIFT 1
-#define I40E_MEM_INIT_DONE_STAT_PMAT_MEM_INIT_DONE_MASK I40E_MASK(0x1, I40E_MEM_INIT_DONE_STAT_PMAT_MEM_INIT_DONE_SHIFT)
-#define I40E_MEM_INIT_DONE_STAT_RCU_MEM_INIT_DONE_SHIFT 2
-#define I40E_MEM_INIT_DONE_STAT_RCU_MEM_INIT_DONE_MASK I40E_MASK(0x1, I40E_MEM_INIT_DONE_STAT_RCU_MEM_INIT_DONE_SHIFT)
-#define I40E_MEM_INIT_DONE_STAT_TDPU_MEM_INIT_DONE_SHIFT 3
-#define I40E_MEM_INIT_DONE_STAT_TDPU_MEM_INIT_DONE_MASK I40E_MASK(0x1, I40E_MEM_INIT_DONE_STAT_TDPU_MEM_INIT_DONE_SHIFT)
-#define I40E_MEM_INIT_DONE_STAT_TLAN_MEM_INIT_DONE_SHIFT 4
-#define I40E_MEM_INIT_DONE_STAT_TLAN_MEM_INIT_DONE_MASK I40E_MASK(0x1, I40E_MEM_INIT_DONE_STAT_TLAN_MEM_INIT_DONE_SHIFT)
-#define I40E_MEM_INIT_DONE_STAT_RLAN_MEM_INIT_DONE_SHIFT 5
-#define I40E_MEM_INIT_DONE_STAT_RLAN_MEM_INIT_DONE_MASK I40E_MASK(0x1, I40E_MEM_INIT_DONE_STAT_RLAN_MEM_INIT_DONE_SHIFT)
-#define I40E_MEM_INIT_DONE_STAT_RDPU_MEM_INIT_DONE_SHIFT 6
-#define I40E_MEM_INIT_DONE_STAT_RDPU_MEM_INIT_DONE_MASK I40E_MASK(0x1, I40E_MEM_INIT_DONE_STAT_RDPU_MEM_INIT_DONE_SHIFT)
-#define I40E_MEM_INIT_DONE_STAT_PPRS_MEM_INIT_DONE_SHIFT 7
-#define I40E_MEM_INIT_DONE_STAT_PPRS_MEM_INIT_DONE_MASK I40E_MASK(0x1, I40E_MEM_INIT_DONE_STAT_PPRS_MEM_INIT_DONE_SHIFT)
-#define I40E_MEM_INIT_DONE_STAT_RPB_MEM_INIT_DONE_SHIFT 8
-#define I40E_MEM_INIT_DONE_STAT_RPB_MEM_INIT_DONE_MASK I40E_MASK(0x1, I40E_MEM_INIT_DONE_STAT_RPB_MEM_INIT_DONE_SHIFT)
-#define I40E_MEM_INIT_DONE_STAT_TPB_MEM_INIT_DONE_SHIFT 9
-#define I40E_MEM_INIT_DONE_STAT_TPB_MEM_INIT_DONE_MASK I40E_MASK(0x1, I40E_MEM_INIT_DONE_STAT_TPB_MEM_INIT_DONE_SHIFT)
-#define I40E_MEM_INIT_DONE_STAT_FOC_MEM_INIT_DONE_SHIFT 10
-#define I40E_MEM_INIT_DONE_STAT_FOC_MEM_INIT_DONE_MASK I40E_MASK(0x1, I40E_MEM_INIT_DONE_STAT_FOC_MEM_INIT_DONE_SHIFT)
-#define I40E_MEM_INIT_DONE_STAT_TSCD_MEM_INIT_DONE_SHIFT 11
-#define I40E_MEM_INIT_DONE_STAT_TSCD_MEM_INIT_DONE_MASK I40E_MASK(0x1, I40E_MEM_INIT_DONE_STAT_TSCD_MEM_INIT_DONE_SHIFT)
-#define I40E_MEM_INIT_DONE_STAT_TCB_MEM_INIT_DONE_SHIFT 12
-#define I40E_MEM_INIT_DONE_STAT_TCB_MEM_INIT_DONE_MASK I40E_MASK(0x1, I40E_MEM_INIT_DONE_STAT_TCB_MEM_INIT_DONE_SHIFT)
-#define I40E_MEM_INIT_DONE_STAT_RCB_MEM_INIT_DONE_SHIFT 13
-#define I40E_MEM_INIT_DONE_STAT_RCB_MEM_INIT_DONE_MASK I40E_MASK(0x1, I40E_MEM_INIT_DONE_STAT_RCB_MEM_INIT_DONE_SHIFT)
-#define I40E_MEM_INIT_DONE_STAT_WUC_MEM_INIT_DONE_SHIFT 14
-#define I40E_MEM_INIT_DONE_STAT_WUC_MEM_INIT_DONE_MASK I40E_MASK(0x1, I40E_MEM_INIT_DONE_STAT_WUC_MEM_INIT_DONE_SHIFT)
-#define I40E_MEM_INIT_DONE_STAT_STAT_MEM_INIT_DONE_SHIFT 15
-#define I40E_MEM_INIT_DONE_STAT_STAT_MEM_INIT_DONE_MASK I40E_MASK(0x1, I40E_MEM_INIT_DONE_STAT_STAT_MEM_INIT_DONE_SHIFT)
-#define I40E_MEM_INIT_DONE_STAT_ITR_MEM_INIT_DONE_SHIFT 16
-#define I40E_MEM_INIT_DONE_STAT_ITR_MEM_INIT_DONE_MASK I40E_MASK(0x1, I40E_MEM_INIT_DONE_STAT_ITR_MEM_INIT_DONE_SHIFT)
-#define I40E_MNGSB_DADD 0x000B7030 /* Reset: POR */
-#define I40E_MNGSB_DADD_ADDR_SHIFT 0
-#define I40E_MNGSB_DADD_ADDR_MASK I40E_MASK(0xFFFFFFFF, I40E_MNGSB_DADD_ADDR_SHIFT)
-#define I40E_MNGSB_DCNT 0x000B7034 /* Reset: POR */
-#define I40E_MNGSB_DCNT_BYTE_CNT_SHIFT 0
-#define I40E_MNGSB_DCNT_BYTE_CNT_MASK I40E_MASK(0xFFFFFFFF, I40E_MNGSB_DCNT_BYTE_CNT_SHIFT)
-#define I40E_MNGSB_MSGCTL 0x000B7020 /* Reset: POR */
-#define I40E_MNGSB_MSGCTL_HDR_DWS_SHIFT 0
-#define I40E_MNGSB_MSGCTL_HDR_DWS_MASK I40E_MASK(0x3, I40E_MNGSB_MSGCTL_HDR_DWS_SHIFT)
-#define I40E_MNGSB_MSGCTL_EXP_RDW_SHIFT 8
-#define I40E_MNGSB_MSGCTL_EXP_RDW_MASK I40E_MASK(0x1FF, I40E_MNGSB_MSGCTL_EXP_RDW_SHIFT)
-#define I40E_MNGSB_MSGCTL_MSG_MODE_SHIFT 26
-#define I40E_MNGSB_MSGCTL_MSG_MODE_MASK I40E_MASK(0x3, I40E_MNGSB_MSGCTL_MSG_MODE_SHIFT)
-#define I40E_MNGSB_MSGCTL_TOKEN_MODE_SHIFT 28
-#define I40E_MNGSB_MSGCTL_TOKEN_MODE_MASK I40E_MASK(0x3, I40E_MNGSB_MSGCTL_TOKEN_MODE_SHIFT)
-#define I40E_MNGSB_MSGCTL_BARCLR_SHIFT 30
-#define I40E_MNGSB_MSGCTL_BARCLR_MASK I40E_MASK(0x1, I40E_MNGSB_MSGCTL_BARCLR_SHIFT)
-#define I40E_MNGSB_MSGCTL_CMDV_SHIFT 31
-#define I40E_MNGSB_MSGCTL_CMDV_MASK I40E_MASK(0x1, I40E_MNGSB_MSGCTL_CMDV_SHIFT)
-#define I40E_MNGSB_RDATA 0x000B7300 /* Reset: POR */
-#define I40E_MNGSB_RDATA_DATA_SHIFT 0
-#define I40E_MNGSB_RDATA_DATA_MASK I40E_MASK(0xFFFFFFFF, I40E_MNGSB_RDATA_DATA_SHIFT)
-#define I40E_MNGSB_RHDR0 0x000B72FC /* Reset: POR */
-#define I40E_MNGSB_RHDR0_DESTINATION_SHIFT 0
-#define I40E_MNGSB_RHDR0_DESTINATION_MASK I40E_MASK(0xFF, I40E_MNGSB_RHDR0_DESTINATION_SHIFT)
-#define I40E_MNGSB_RHDR0_SOURCE_SHIFT 8
-#define I40E_MNGSB_RHDR0_SOURCE_MASK I40E_MASK(0xFF, I40E_MNGSB_RHDR0_SOURCE_SHIFT)
-#define I40E_MNGSB_RHDR0_OPCODE_SHIFT 16
-#define I40E_MNGSB_RHDR0_OPCODE_MASK I40E_MASK(0xFF, I40E_MNGSB_RHDR0_OPCODE_SHIFT)
-#define I40E_MNGSB_RHDR0_TAG_SHIFT 24
-#define I40E_MNGSB_RHDR0_TAG_MASK I40E_MASK(0x7, I40E_MNGSB_RHDR0_TAG_SHIFT)
-#define I40E_MNGSB_RHDR0_RESPONSE_SHIFT 27
-#define I40E_MNGSB_RHDR0_RESPONSE_MASK I40E_MASK(0x7, I40E_MNGSB_RHDR0_RESPONSE_SHIFT)
-#define I40E_MNGSB_RHDR0_EH_SHIFT 31
-#define I40E_MNGSB_RHDR0_EH_MASK I40E_MASK(0x1, I40E_MNGSB_RHDR0_EH_SHIFT)
-#define I40E_MNGSB_RSPCTL 0x000B7024 /* Reset: POR */
-#define I40E_MNGSB_RSPCTL_DMA_MSG_DWORDS_SHIFT 0
-#define I40E_MNGSB_RSPCTL_DMA_MSG_DWORDS_MASK I40E_MASK(0x1FF, I40E_MNGSB_RSPCTL_DMA_MSG_DWORDS_SHIFT)
-#define I40E_MNGSB_RSPCTL_RSP_MODE_SHIFT 26
-#define I40E_MNGSB_RSPCTL_RSP_MODE_MASK I40E_MASK(0x3, I40E_MNGSB_RSPCTL_RSP_MODE_SHIFT)
-#define I40E_MNGSB_RSPCTL_RSP_BAD_LEN_SHIFT 30
-#define I40E_MNGSB_RSPCTL_RSP_BAD_LEN_MASK I40E_MASK(0x1, I40E_MNGSB_RSPCTL_RSP_BAD_LEN_SHIFT)
-#define I40E_MNGSB_RSPCTL_RSP_ERR_SHIFT 31
-#define I40E_MNGSB_RSPCTL_RSP_ERR_MASK I40E_MASK(0x1, I40E_MNGSB_RSPCTL_RSP_ERR_SHIFT)
-#define I40E_MNGSB_WDATA 0x000B7100 /* Reset: POR */
-#define I40E_MNGSB_WDATA_DATA_SHIFT 0
-#define I40E_MNGSB_WDATA_DATA_MASK I40E_MASK(0xFFFFFFFF, I40E_MNGSB_WDATA_DATA_SHIFT)
-#define I40E_MNGSB_WHDR0 0x000B70F4 /* Reset: POR */
-#define I40E_MNGSB_WHDR0_RAW_DEST_SHIFT 0
-#define I40E_MNGSB_WHDR0_RAW_DEST_MASK I40E_MASK(0xFF, I40E_MNGSB_WHDR0_RAW_DEST_SHIFT)
-#define I40E_MNGSB_WHDR0_DEST_SEL_SHIFT 12
-#define I40E_MNGSB_WHDR0_DEST_SEL_MASK I40E_MASK(0xF, I40E_MNGSB_WHDR0_DEST_SEL_SHIFT)
-#define I40E_MNGSB_WHDR0_OPCODE_SEL_SHIFT 16
-#define I40E_MNGSB_WHDR0_OPCODE_SEL_MASK I40E_MASK(0xFF, I40E_MNGSB_WHDR0_OPCODE_SEL_SHIFT)
-#define I40E_MNGSB_WHDR0_TAG_SHIFT 24
-#define I40E_MNGSB_WHDR0_TAG_MASK I40E_MASK(0x7F, I40E_MNGSB_WHDR0_TAG_SHIFT)
-#define I40E_MNGSB_WHDR1 0x000B70F8 /* Reset: POR */
-#define I40E_MNGSB_WHDR1_ADDR_SHIFT 0
-#define I40E_MNGSB_WHDR1_ADDR_MASK I40E_MASK(0xFFFFFFFF, I40E_MNGSB_WHDR1_ADDR_SHIFT)
-#define I40E_MNGSB_WHDR2 0x000B70FC /* Reset: POR */
-#define I40E_MNGSB_WHDR2_LENGTH_SHIFT 0
-#define I40E_MNGSB_WHDR2_LENGTH_MASK I40E_MASK(0xFFFFFFFF, I40E_MNGSB_WHDR2_LENGTH_SHIFT)
 
-#define I40E_GLPCI_CAPSUP_WAKUP_EN_SHIFT 21
-#define I40E_GLPCI_CAPSUP_WAKUP_EN_MASK I40E_MASK(0x1, I40E_GLPCI_CAPSUP_WAKUP_EN_SHIFT)
 
-#define I40E_GLPCI_CUR_CLNT_COMMON 0x0009CA18 /* Reset: PCIR */
-#define I40E_GLPCI_CUR_CLNT_COMMON_DATA_LINES_SHIFT 0
-#define I40E_GLPCI_CUR_CLNT_COMMON_DATA_LINES_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_CLNT_COMMON_DATA_LINES_SHIFT)
-#define I40E_GLPCI_CUR_CLNT_COMMON_OSR_SHIFT 16
-#define I40E_GLPCI_CUR_CLNT_COMMON_OSR_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_CLNT_COMMON_OSR_SHIFT)
-#define I40E_GLPCI_CUR_CLNT_PIPEMON 0x0009CA20 /* Reset: PCIR */
-#define I40E_GLPCI_CUR_CLNT_PIPEMON_DATA_LINES_SHIFT 0
-#define I40E_GLPCI_CUR_CLNT_PIPEMON_DATA_LINES_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_CLNT_PIPEMON_DATA_LINES_SHIFT)
-#define I40E_GLPCI_CUR_MNG_ALWD 0x0009c514 /* Reset: PCIR */
-#define I40E_GLPCI_CUR_MNG_ALWD_DATA_LINES_SHIFT 0
-#define I40E_GLPCI_CUR_MNG_ALWD_DATA_LINES_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_MNG_ALWD_DATA_LINES_SHIFT)
-#define I40E_GLPCI_CUR_MNG_ALWD_OSR_SHIFT 16
-#define I40E_GLPCI_CUR_MNG_ALWD_OSR_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_MNG_ALWD_OSR_SHIFT)
-#define I40E_GLPCI_CUR_MNG_RSVD 0x0009c594 /* Reset: PCIR */
-#define I40E_GLPCI_CUR_MNG_RSVD_DATA_LINES_SHIFT 0
-#define I40E_GLPCI_CUR_MNG_RSVD_DATA_LINES_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_MNG_RSVD_DATA_LINES_SHIFT)
-#define I40E_GLPCI_CUR_MNG_RSVD_OSR_SHIFT 16
-#define I40E_GLPCI_CUR_MNG_RSVD_OSR_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_MNG_RSVD_OSR_SHIFT)
-#define I40E_GLPCI_CUR_PMAT_ALWD 0x0009c510 /* Reset: PCIR */
-#define I40E_GLPCI_CUR_PMAT_ALWD_DATA_LINES_SHIFT 0
-#define I40E_GLPCI_CUR_PMAT_ALWD_DATA_LINES_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_PMAT_ALWD_DATA_LINES_SHIFT)
-#define I40E_GLPCI_CUR_PMAT_ALWD_OSR_SHIFT 16
-#define I40E_GLPCI_CUR_PMAT_ALWD_OSR_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_PMAT_ALWD_OSR_SHIFT)
-#define I40E_GLPCI_CUR_PMAT_RSVD 0x0009c590 /* Reset: PCIR */
-#define I40E_GLPCI_CUR_PMAT_RSVD_DATA_LINES_SHIFT 0
-#define I40E_GLPCI_CUR_PMAT_RSVD_DATA_LINES_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_PMAT_RSVD_DATA_LINES_SHIFT)
-#define I40E_GLPCI_CUR_PMAT_RSVD_OSR_SHIFT 16
-#define I40E_GLPCI_CUR_PMAT_RSVD_OSR_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_PMAT_RSVD_OSR_SHIFT)
-#define I40E_GLPCI_CUR_RLAN_ALWD 0x0009c500 /* Reset: PCIR */
-#define I40E_GLPCI_CUR_RLAN_ALWD_DATA_LINES_SHIFT 0
-#define I40E_GLPCI_CUR_RLAN_ALWD_DATA_LINES_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_RLAN_ALWD_DATA_LINES_SHIFT)
-#define I40E_GLPCI_CUR_RLAN_ALWD_OSR_SHIFT 16
-#define I40E_GLPCI_CUR_RLAN_ALWD_OSR_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_RLAN_ALWD_OSR_SHIFT)
-#define I40E_GLPCI_CUR_RLAN_RSVD 0x0009c580 /* Reset: PCIR */
-#define I40E_GLPCI_CUR_RLAN_RSVD_DATA_LINES_SHIFT 0
-#define I40E_GLPCI_CUR_RLAN_RSVD_DATA_LINES_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_RLAN_RSVD_DATA_LINES_SHIFT)
-#define I40E_GLPCI_CUR_RLAN_RSVD_OSR_SHIFT 16
-#define I40E_GLPCI_CUR_RLAN_RSVD_OSR_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_RLAN_RSVD_OSR_SHIFT)
-#define I40E_GLPCI_CUR_RXPE_ALWD 0x0009c508 /* Reset: PCIR */
-#define I40E_GLPCI_CUR_RXPE_ALWD_DATA_LINES_SHIFT 0
-#define I40E_GLPCI_CUR_RXPE_ALWD_DATA_LINES_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_RXPE_ALWD_DATA_LINES_SHIFT)
-#define I40E_GLPCI_CUR_RXPE_ALWD_OSR_SHIFT 16
-#define I40E_GLPCI_CUR_RXPE_ALWD_OSR_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_RXPE_ALWD_OSR_SHIFT)
-#define I40E_GLPCI_CUR_RXPE_RSVD 0x0009c588 /* Reset: PCIR */
-#define I40E_GLPCI_CUR_RXPE_RSVD_DATA_LINES_SHIFT 0
-#define I40E_GLPCI_CUR_RXPE_RSVD_DATA_LINES_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_RXPE_RSVD_DATA_LINES_SHIFT)
-#define I40E_GLPCI_CUR_RXPE_RSVD_OSR_SHIFT 16
-#define I40E_GLPCI_CUR_RXPE_RSVD_OSR_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_RXPE_RSVD_OSR_SHIFT)
-#define I40E_GLPCI_CUR_TDPU_ALWD 0x0009c518 /* Reset: PCIR */
-#define I40E_GLPCI_CUR_TDPU_ALWD_DATA_LINES_SHIFT 0
-#define I40E_GLPCI_CUR_TDPU_ALWD_DATA_LINES_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_TDPU_ALWD_DATA_LINES_SHIFT)
-#define I40E_GLPCI_CUR_TDPU_ALWD_OSR_SHIFT 16
-#define I40E_GLPCI_CUR_TDPU_ALWD_OSR_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_TDPU_ALWD_OSR_SHIFT)
-#define I40E_GLPCI_CUR_TDPU_RSVD 0x0009c598 /* Reset: PCIR */
-#define I40E_GLPCI_CUR_TDPU_RSVD_DATA_LINES_SHIFT 0
-#define I40E_GLPCI_CUR_TDPU_RSVD_DATA_LINES_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_TDPU_RSVD_DATA_LINES_SHIFT)
-#define I40E_GLPCI_CUR_TDPU_RSVD_OSR_SHIFT 16
-#define I40E_GLPCI_CUR_TDPU_RSVD_OSR_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_TDPU_RSVD_OSR_SHIFT)
-#define I40E_GLPCI_CUR_TLAN_ALWD 0x0009c504 /* Reset: PCIR */
-#define I40E_GLPCI_CUR_TLAN_ALWD_DATA_LINES_SHIFT 0
-#define I40E_GLPCI_CUR_TLAN_ALWD_DATA_LINES_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_TLAN_ALWD_DATA_LINES_SHIFT)
-#define I40E_GLPCI_CUR_TLAN_ALWD_OSR_SHIFT 16
-#define I40E_GLPCI_CUR_TLAN_ALWD_OSR_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_TLAN_ALWD_OSR_SHIFT)
-#define I40E_GLPCI_CUR_TLAN_RSVD 0x0009c584 /* Reset: PCIR */
-#define I40E_GLPCI_CUR_TLAN_RSVD_DATA_LINES_SHIFT 0
-#define I40E_GLPCI_CUR_TLAN_RSVD_DATA_LINES_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_TLAN_RSVD_DATA_LINES_SHIFT)
-#define I40E_GLPCI_CUR_TLAN_RSVD_OSR_SHIFT 16
-#define I40E_GLPCI_CUR_TLAN_RSVD_OSR_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_TLAN_RSVD_OSR_SHIFT)
-#define I40E_GLPCI_CUR_TXPE_ALWD 0x0009c50C /* Reset: PCIR */
-#define I40E_GLPCI_CUR_TXPE_ALWD_DATA_LINES_SHIFT 0
-#define I40E_GLPCI_CUR_TXPE_ALWD_DATA_LINES_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_TXPE_ALWD_DATA_LINES_SHIFT)
-#define I40E_GLPCI_CUR_TXPE_ALWD_OSR_SHIFT 16
-#define I40E_GLPCI_CUR_TXPE_ALWD_OSR_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_TXPE_ALWD_OSR_SHIFT)
-#define I40E_GLPCI_CUR_TXPE_RSVD 0x0009c58c /* Reset: PCIR */
-#define I40E_GLPCI_CUR_TXPE_RSVD_DATA_LINES_SHIFT 0
-#define I40E_GLPCI_CUR_TXPE_RSVD_DATA_LINES_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_TXPE_RSVD_DATA_LINES_SHIFT)
-#define I40E_GLPCI_CUR_TXPE_RSVD_OSR_SHIFT 16
-#define I40E_GLPCI_CUR_TXPE_RSVD_OSR_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_TXPE_RSVD_OSR_SHIFT)
-#define I40E_GLPCI_CUR_WATMK_CLNT_COMMON 0x0009CA28 /* Reset: PCIR */
-#define I40E_GLPCI_CUR_WATMK_CLNT_COMMON_DATA_LINES_SHIFT 0
-#define I40E_GLPCI_CUR_WATMK_CLNT_COMMON_DATA_LINES_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_WATMK_CLNT_COMMON_DATA_LINES_SHIFT)
-#define I40E_GLPCI_CUR_WATMK_CLNT_COMMON_OSR_SHIFT 16
-#define I40E_GLPCI_CUR_WATMK_CLNT_COMMON_OSR_MASK I40E_MASK(0xFFFF, I40E_GLPCI_CUR_WATMK_CLNT_COMMON_OSR_SHIFT)
 
-#define I40E_GLPCI_LBARCTRL_PE_DB_SIZE_SHIFT 4
-#define I40E_GLPCI_LBARCTRL_PE_DB_SIZE_MASK I40E_MASK(0x3, I40E_GLPCI_LBARCTRL_PE_DB_SIZE_SHIFT)
-#define I40E_GLPCI_LBARCTRL_VF_PE_DB_SIZE_SHIFT 10
-#define I40E_GLPCI_LBARCTRL_VF_PE_DB_SIZE_MASK I40E_MASK(0x1, I40E_GLPCI_LBARCTRL_VF_PE_DB_SIZE_SHIFT)
-#define I40E_GLPCI_NPQ_CFG 0x0009CA00 /* Reset: PCIR */
-#define I40E_GLPCI_NPQ_CFG_EXTEND_TO_SHIFT 0
-#define I40E_GLPCI_NPQ_CFG_EXTEND_TO_MASK I40E_MASK(0x1, I40E_GLPCI_NPQ_CFG_EXTEND_TO_SHIFT)
-#define I40E_GLPCI_NPQ_CFG_SMALL_TO_SHIFT 1
-#define I40E_GLPCI_NPQ_CFG_SMALL_TO_MASK I40E_MASK(0x1, I40E_GLPCI_NPQ_CFG_SMALL_TO_SHIFT)
-#define I40E_GLPCI_NPQ_CFG_WEIGHT_AVG_SHIFT 2
-#define I40E_GLPCI_NPQ_CFG_WEIGHT_AVG_MASK I40E_MASK(0xF, I40E_GLPCI_NPQ_CFG_WEIGHT_AVG_SHIFT)
-#define I40E_GLPCI_NPQ_CFG_NPQ_SPARE_SHIFT 6
-#define I40E_GLPCI_NPQ_CFG_NPQ_SPARE_MASK I40E_MASK(0x3FF, I40E_GLPCI_NPQ_CFG_NPQ_SPARE_SHIFT)
-#define I40E_GLPCI_NPQ_CFG_NPQ_ERR_STAT_SHIFT 16
-#define I40E_GLPCI_NPQ_CFG_NPQ_ERR_STAT_MASK I40E_MASK(0xF, I40E_GLPCI_NPQ_CFG_NPQ_ERR_STAT_SHIFT)
-#define I40E_GLPCI_WATMK_CLNT_PIPEMON 0x0009CA30 /* Reset: PCIR */
-#define I40E_GLPCI_WATMK_CLNT_PIPEMON_DATA_LINES_SHIFT 0
-#define I40E_GLPCI_WATMK_CLNT_PIPEMON_DATA_LINES_MASK I40E_MASK(0xFFFF, I40E_GLPCI_WATMK_CLNT_PIPEMON_DATA_LINES_SHIFT)
-#define I40E_GLPCI_WATMK_MNG_ALWD 0x0009CB14 /* Reset: PCIR */
-#define I40E_GLPCI_WATMK_MNG_ALWD_DATA_LINES_SHIFT 0
-#define I40E_GLPCI_WATMK_MNG_ALWD_DATA_LINES_MASK I40E_MASK(0xFFFF, I40E_GLPCI_WATMK_MNG_ALWD_DATA_LINES_SHIFT)
-#define I40E_GLPCI_WATMK_MNG_ALWD_OSR_SHIFT 16
-#define I40E_GLPCI_WATMK_MNG_ALWD_OSR_MASK I40E_MASK(0xFFFF, I40E_GLPCI_WATMK_MNG_ALWD_OSR_SHIFT)
-#define I40E_GLPCI_WATMK_PMAT_ALWD 0x0009CB10 /* Reset: PCIR */
-#define I40E_GLPCI_WATMK_PMAT_ALWD_DATA_LINES_SHIFT 0
-#define I40E_GLPCI_WATMK_PMAT_ALWD_DATA_LINES_MASK I40E_MASK(0xFFFF, I40E_GLPCI_WATMK_PMAT_ALWD_DATA_LINES_SHIFT)
-#define I40E_GLPCI_WATMK_PMAT_ALWD_OSR_SHIFT 16
-#define I40E_GLPCI_WATMK_PMAT_ALWD_OSR_MASK I40E_MASK(0xFFFF, I40E_GLPCI_WATMK_PMAT_ALWD_OSR_SHIFT)
-#define I40E_GLPCI_WATMK_RLAN_ALWD 0x0009CB00 /* Reset: PCIR */
-#define I40E_GLPCI_WATMK_RLAN_ALWD_DATA_LINES_SHIFT 0
-#define I40E_GLPCI_WATMK_RLAN_ALWD_DATA_LINES_MASK I40E_MASK(0xFFFF, I40E_GLPCI_WATMK_RLAN_ALWD_DATA_LINES_SHIFT)
-#define I40E_GLPCI_WATMK_RLAN_ALWD_OSR_SHIFT 16
-#define I40E_GLPCI_WATMK_RLAN_ALWD_OSR_MASK I40E_MASK(0xFFFF, I40E_GLPCI_WATMK_RLAN_ALWD_OSR_SHIFT)
-#define I40E_GLPCI_WATMK_RXPE_ALWD 0x0009CB08 /* Reset: PCIR */
-#define I40E_GLPCI_WATMK_RXPE_ALWD_DATA_LINES_SHIFT 0
-#define I40E_GLPCI_WATMK_RXPE_ALWD_DATA_LINES_MASK I40E_MASK(0xFFFF, I40E_GLPCI_WATMK_RXPE_ALWD_DATA_LINES_SHIFT)
-#define I40E_GLPCI_WATMK_RXPE_ALWD_OSR_SHIFT 16
-#define I40E_GLPCI_WATMK_RXPE_ALWD_OSR_MASK I40E_MASK(0xFFFF, I40E_GLPCI_WATMK_RXPE_ALWD_OSR_SHIFT)
-#define I40E_GLPCI_WATMK_TLAN_ALWD 0x0009CB04 /* Reset: PCIR */
-#define I40E_GLPCI_WATMK_TLAN_ALWD_DATA_LINES_SHIFT 0
-#define I40E_GLPCI_WATMK_TLAN_ALWD_DATA_LINES_MASK I40E_MASK(0xFFFF, I40E_GLPCI_WATMK_TLAN_ALWD_DATA_LINES_SHIFT)
-#define I40E_GLPCI_WATMK_TLAN_ALWD_OSR_SHIFT 16
-#define I40E_GLPCI_WATMK_TLAN_ALWD_OSR_MASK I40E_MASK(0xFFFF, I40E_GLPCI_WATMK_TLAN_ALWD_OSR_SHIFT)
-#define I40E_GLPCI_WATMK_TPDU_ALWD 0x0009CB18 /* Reset: PCIR */
-#define I40E_GLPCI_WATMK_TPDU_ALWD_DATA_LINES_SHIFT 0
-#define I40E_GLPCI_WATMK_TPDU_ALWD_DATA_LINES_MASK I40E_MASK(0xFFFF, I40E_GLPCI_WATMK_TPDU_ALWD_DATA_LINES_SHIFT)
-#define I40E_GLPCI_WATMK_TPDU_ALWD_OSR_SHIFT 16
-#define I40E_GLPCI_WATMK_TPDU_ALWD_OSR_MASK I40E_MASK(0xFFFF, I40E_GLPCI_WATMK_TPDU_ALWD_OSR_SHIFT)
-#define I40E_GLPCI_WATMK_TXPE_ALWD 0x0009CB0c /* Reset: PCIR */
-#define I40E_GLPCI_WATMK_TXPE_ALWD_DATA_LINES_SHIFT 0
-#define I40E_GLPCI_WATMK_TXPE_ALWD_DATA_LINES_MASK I40E_MASK(0xFFFF, I40E_GLPCI_WATMK_TXPE_ALWD_DATA_LINES_SHIFT)
-#define I40E_GLPCI_WATMK_TXPE_ALWD_OSR_SHIFT 16
-#define I40E_GLPCI_WATMK_TXPE_ALWD_OSR_MASK I40E_MASK(0xFFFF, I40E_GLPCI_WATMK_TXPE_ALWD_OSR_SHIFT)
-#define I40E_GLPE_CPUSTATUS0 0x0000D040 /* Reset: PE_CORER */
-#define I40E_GLPE_CPUSTATUS0_PECPUSTATUS0_SHIFT 0
-#define I40E_GLPE_CPUSTATUS0_PECPUSTATUS0_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPE_CPUSTATUS0_PECPUSTATUS0_SHIFT)
-#define I40E_GLPE_CPUSTATUS1 0x0000D044 /* Reset: PE_CORER */
-#define I40E_GLPE_CPUSTATUS1_PECPUSTATUS1_SHIFT 0
-#define I40E_GLPE_CPUSTATUS1_PECPUSTATUS1_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPE_CPUSTATUS1_PECPUSTATUS1_SHIFT)
-#define I40E_GLPE_CPUSTATUS2 0x0000D048 /* Reset: PE_CORER */
-#define I40E_GLPE_CPUSTATUS2_PECPUSTATUS2_SHIFT 0
-#define I40E_GLPE_CPUSTATUS2_PECPUSTATUS2_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPE_CPUSTATUS2_PECPUSTATUS2_SHIFT)
-#define I40E_GLPE_CPUTRIG0 0x0000D060 /* Reset: PE_CORER */
-#define I40E_GLPE_CPUTRIG0_PECPUTRIG0_SHIFT 0
-#define I40E_GLPE_CPUTRIG0_PECPUTRIG0_MASK I40E_MASK(0xFFFF, I40E_GLPE_CPUTRIG0_PECPUTRIG0_SHIFT)
-#define I40E_GLPE_CPUTRIG0_TEPREQUEST0_SHIFT 17
-#define I40E_GLPE_CPUTRIG0_TEPREQUEST0_MASK I40E_MASK(0x1, I40E_GLPE_CPUTRIG0_TEPREQUEST0_SHIFT)
-#define I40E_GLPE_CPUTRIG0_OOPREQUEST0_SHIFT 18
-#define I40E_GLPE_CPUTRIG0_OOPREQUEST0_MASK I40E_MASK(0x1, I40E_GLPE_CPUTRIG0_OOPREQUEST0_SHIFT)
-#define I40E_GLPE_DUAL40_RUPM 0x0000DA04 /* Reset: PE_CORER */
-#define I40E_GLPE_DUAL40_RUPM_DUAL_40G_MODE_SHIFT 0
-#define I40E_GLPE_DUAL40_RUPM_DUAL_40G_MODE_MASK I40E_MASK(0x1, I40E_GLPE_DUAL40_RUPM_DUAL_40G_MODE_SHIFT)
-#define I40E_GLPE_PFAEQEDROPCNT(_i) (0x00131440 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLPE_PFAEQEDROPCNT_MAX_INDEX 15
-#define I40E_GLPE_PFAEQEDROPCNT_AEQEDROPCNT_SHIFT 0
-#define I40E_GLPE_PFAEQEDROPCNT_AEQEDROPCNT_MASK I40E_MASK(0xFFFF, I40E_GLPE_PFAEQEDROPCNT_AEQEDROPCNT_SHIFT)
-#define I40E_GLPE_PFCEQEDROPCNT(_i) (0x001313C0 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLPE_PFCEQEDROPCNT_MAX_INDEX 15
-#define I40E_GLPE_PFCEQEDROPCNT_CEQEDROPCNT_SHIFT 0
-#define I40E_GLPE_PFCEQEDROPCNT_CEQEDROPCNT_MASK I40E_MASK(0xFFFF, I40E_GLPE_PFCEQEDROPCNT_CEQEDROPCNT_SHIFT)
-#define I40E_GLPE_PFCQEDROPCNT(_i) (0x00131340 + ((_i) * 4)) /* _i=0...15 */ /* Reset: CORER */
-#define I40E_GLPE_PFCQEDROPCNT_MAX_INDEX 15
-#define I40E_GLPE_PFCQEDROPCNT_CQEDROPCNT_SHIFT 0
-#define I40E_GLPE_PFCQEDROPCNT_CQEDROPCNT_MASK I40E_MASK(0xFFFF, I40E_GLPE_PFCQEDROPCNT_CQEDROPCNT_SHIFT)
-#define I40E_GLPE_RUPM_CQPPOOL 0x0000DACC /* Reset: PE_CORER */
-#define I40E_GLPE_RUPM_CQPPOOL_CQPSPADS_SHIFT 0
-#define I40E_GLPE_RUPM_CQPPOOL_CQPSPADS_MASK I40E_MASK(0xFF, I40E_GLPE_RUPM_CQPPOOL_CQPSPADS_SHIFT)
-#define I40E_GLPE_RUPM_FLRPOOL 0x0000DAC4 /* Reset: PE_CORER */
-#define I40E_GLPE_RUPM_FLRPOOL_FLRSPADS_SHIFT 0
-#define I40E_GLPE_RUPM_FLRPOOL_FLRSPADS_MASK I40E_MASK(0xFF, I40E_GLPE_RUPM_FLRPOOL_FLRSPADS_SHIFT)
-#define I40E_GLPE_RUPM_GCTL 0x0000DA00 /* Reset: PE_CORER */
-#define I40E_GLPE_RUPM_GCTL_ALLOFFTH_SHIFT 0
-#define I40E_GLPE_RUPM_GCTL_ALLOFFTH_MASK I40E_MASK(0xFF, I40E_GLPE_RUPM_GCTL_ALLOFFTH_SHIFT)
-#define I40E_GLPE_RUPM_GCTL_RUPM_P0_DIS_SHIFT 26
-#define I40E_GLPE_RUPM_GCTL_RUPM_P0_DIS_MASK I40E_MASK(0x1, I40E_GLPE_RUPM_GCTL_RUPM_P0_DIS_SHIFT)
-#define I40E_GLPE_RUPM_GCTL_RUPM_P1_DIS_SHIFT 27
-#define I40E_GLPE_RUPM_GCTL_RUPM_P1_DIS_MASK I40E_MASK(0x1, I40E_GLPE_RUPM_GCTL_RUPM_P1_DIS_SHIFT)
-#define I40E_GLPE_RUPM_GCTL_RUPM_P2_DIS_SHIFT 28
-#define I40E_GLPE_RUPM_GCTL_RUPM_P2_DIS_MASK I40E_MASK(0x1, I40E_GLPE_RUPM_GCTL_RUPM_P2_DIS_SHIFT)
-#define I40E_GLPE_RUPM_GCTL_RUPM_P3_DIS_SHIFT 29
-#define I40E_GLPE_RUPM_GCTL_RUPM_P3_DIS_MASK I40E_MASK(0x1, I40E_GLPE_RUPM_GCTL_RUPM_P3_DIS_SHIFT)
-#define I40E_GLPE_RUPM_GCTL_RUPM_DIS_SHIFT 30
-#define I40E_GLPE_RUPM_GCTL_RUPM_DIS_MASK I40E_MASK(0x1, I40E_GLPE_RUPM_GCTL_RUPM_DIS_SHIFT)
-#define I40E_GLPE_RUPM_GCTL_SWLB_MODE_SHIFT 31
-#define I40E_GLPE_RUPM_GCTL_SWLB_MODE_MASK I40E_MASK(0x1, I40E_GLPE_RUPM_GCTL_SWLB_MODE_SHIFT)
-#define I40E_GLPE_RUPM_PTXPOOL 0x0000DAC8 /* Reset: PE_CORER */
-#define I40E_GLPE_RUPM_PTXPOOL_PTXSPADS_SHIFT 0
-#define I40E_GLPE_RUPM_PTXPOOL_PTXSPADS_MASK I40E_MASK(0xFF, I40E_GLPE_RUPM_PTXPOOL_PTXSPADS_SHIFT)
-#define I40E_GLPE_RUPM_PUSHPOOL 0x0000DAC0 /* Reset: PE_CORER */
-#define I40E_GLPE_RUPM_PUSHPOOL_PUSHSPADS_SHIFT 0
-#define I40E_GLPE_RUPM_PUSHPOOL_PUSHSPADS_MASK I40E_MASK(0xFF, I40E_GLPE_RUPM_PUSHPOOL_PUSHSPADS_SHIFT)
-#define I40E_GLPE_RUPM_TXHOST_EN 0x0000DA08 /* Reset: PE_CORER */
-#define I40E_GLPE_RUPM_TXHOST_EN_TXHOST_EN_SHIFT 0
-#define I40E_GLPE_RUPM_TXHOST_EN_TXHOST_EN_MASK I40E_MASK(0x1, I40E_GLPE_RUPM_TXHOST_EN_TXHOST_EN_SHIFT)
-#define I40E_GLPE_VFAEQEDROPCNT(_i) (0x00132540 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLPE_VFAEQEDROPCNT_MAX_INDEX 31
-#define I40E_GLPE_VFAEQEDROPCNT_AEQEDROPCNT_SHIFT 0
-#define I40E_GLPE_VFAEQEDROPCNT_AEQEDROPCNT_MASK I40E_MASK(0xFFFF, I40E_GLPE_VFAEQEDROPCNT_AEQEDROPCNT_SHIFT)
-#define I40E_GLPE_VFCEQEDROPCNT(_i) (0x00132440 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLPE_VFCEQEDROPCNT_MAX_INDEX 31
-#define I40E_GLPE_VFCEQEDROPCNT_CEQEDROPCNT_SHIFT 0
-#define I40E_GLPE_VFCEQEDROPCNT_CEQEDROPCNT_MASK I40E_MASK(0xFFFF, I40E_GLPE_VFCEQEDROPCNT_CEQEDROPCNT_SHIFT)
-#define I40E_GLPE_VFCQEDROPCNT(_i) (0x00132340 + ((_i) * 4)) /* _i=0...31 */ /* Reset: CORER */
-#define I40E_GLPE_VFCQEDROPCNT_MAX_INDEX 31
-#define I40E_GLPE_VFCQEDROPCNT_CQEDROPCNT_SHIFT 0
-#define I40E_GLPE_VFCQEDROPCNT_CQEDROPCNT_MASK I40E_MASK(0xFFFF, I40E_GLPE_VFCQEDROPCNT_CQEDROPCNT_SHIFT)
-#define I40E_GLPE_VFFLMOBJCTRL(_i) (0x0000D400 + ((_i) * 4)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPE_VFFLMOBJCTRL_MAX_INDEX 31
-#define I40E_GLPE_VFFLMOBJCTRL_XMIT_BLOCKSIZE_SHIFT 0
-#define I40E_GLPE_VFFLMOBJCTRL_XMIT_BLOCKSIZE_MASK I40E_MASK(0x7, I40E_GLPE_VFFLMOBJCTRL_XMIT_BLOCKSIZE_SHIFT)
-#define I40E_GLPE_VFFLMOBJCTRL_Q1_BLOCKSIZE_SHIFT 8
-#define I40E_GLPE_VFFLMOBJCTRL_Q1_BLOCKSIZE_MASK I40E_MASK(0x7, I40E_GLPE_VFFLMOBJCTRL_Q1_BLOCKSIZE_SHIFT)
-#define I40E_GLPE_VFFLMQ1ALLOCERR(_i) (0x0000C700 + ((_i) * 4)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPE_VFFLMQ1ALLOCERR_MAX_INDEX 31
-#define I40E_GLPE_VFFLMQ1ALLOCERR_ERROR_COUNT_SHIFT 0
-#define I40E_GLPE_VFFLMQ1ALLOCERR_ERROR_COUNT_MASK I40E_MASK(0xFFFF, I40E_GLPE_VFFLMQ1ALLOCERR_ERROR_COUNT_SHIFT)
-#define I40E_GLPE_VFFLMXMITALLOCERR(_i) (0x0000C600 + ((_i) * 4)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPE_VFFLMXMITALLOCERR_MAX_INDEX 31
-#define I40E_GLPE_VFFLMXMITALLOCERR_ERROR_COUNT_SHIFT 0
-#define I40E_GLPE_VFFLMXMITALLOCERR_ERROR_COUNT_MASK I40E_MASK(0xFFFF, I40E_GLPE_VFFLMXMITALLOCERR_ERROR_COUNT_SHIFT)
-#define I40E_GLPE_VFUDACTRL(_i) (0x0000C000 + ((_i) * 4)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPE_VFUDACTRL_MAX_INDEX 31
-#define I40E_GLPE_VFUDACTRL_IPV4MCFRAGRESBP_SHIFT 0
-#define I40E_GLPE_VFUDACTRL_IPV4MCFRAGRESBP_MASK I40E_MASK(0x1, I40E_GLPE_VFUDACTRL_IPV4MCFRAGRESBP_SHIFT)
-#define I40E_GLPE_VFUDACTRL_IPV4UCFRAGRESBP_SHIFT 1
-#define I40E_GLPE_VFUDACTRL_IPV4UCFRAGRESBP_MASK I40E_MASK(0x1, I40E_GLPE_VFUDACTRL_IPV4UCFRAGRESBP_SHIFT)
-#define I40E_GLPE_VFUDACTRL_IPV6MCFRAGRESBP_SHIFT 2
-#define I40E_GLPE_VFUDACTRL_IPV6MCFRAGRESBP_MASK I40E_MASK(0x1, I40E_GLPE_VFUDACTRL_IPV6MCFRAGRESBP_SHIFT)
-#define I40E_GLPE_VFUDACTRL_IPV6UCFRAGRESBP_SHIFT 3
-#define I40E_GLPE_VFUDACTRL_IPV6UCFRAGRESBP_MASK I40E_MASK(0x1, I40E_GLPE_VFUDACTRL_IPV6UCFRAGRESBP_SHIFT)
-#define I40E_GLPE_VFUDACTRL_UDPMCFRAGRESFAIL_SHIFT 4
-#define I40E_GLPE_VFUDACTRL_UDPMCFRAGRESFAIL_MASK I40E_MASK(0x1, I40E_GLPE_VFUDACTRL_UDPMCFRAGRESFAIL_SHIFT)
-#define I40E_GLPE_VFUDAUCFBQPN(_i) (0x0000C100 + ((_i) * 4)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPE_VFUDAUCFBQPN_MAX_INDEX 31
-#define I40E_GLPE_VFUDAUCFBQPN_QPN_SHIFT 0
-#define I40E_GLPE_VFUDAUCFBQPN_QPN_MASK I40E_MASK(0x3FFFF, I40E_GLPE_VFUDAUCFBQPN_QPN_SHIFT)
-#define I40E_GLPE_VFUDAUCFBQPN_VALID_SHIFT 31
-#define I40E_GLPE_VFUDAUCFBQPN_VALID_MASK I40E_MASK(0x1, I40E_GLPE_VFUDAUCFBQPN_VALID_SHIFT)
-#define I40E_PFPE_AEQALLOC 0x00131180 /* Reset: PFR */
-#define I40E_PFPE_AEQALLOC_AECOUNT_SHIFT 0
-#define I40E_PFPE_AEQALLOC_AECOUNT_MASK I40E_MASK(0xFFFFFFFF, I40E_PFPE_AEQALLOC_AECOUNT_SHIFT)
-#define I40E_PFPE_CCQPHIGH 0x00008200 /* Reset: PFR */
-#define I40E_PFPE_CCQPHIGH_PECCQPHIGH_SHIFT 0
-#define I40E_PFPE_CCQPHIGH_PECCQPHIGH_MASK I40E_MASK(0xFFFFFFFF, I40E_PFPE_CCQPHIGH_PECCQPHIGH_SHIFT)
-#define I40E_PFPE_CCQPLOW 0x00008180 /* Reset: PFR */
-#define I40E_PFPE_CCQPLOW_PECCQPLOW_SHIFT 0
-#define I40E_PFPE_CCQPLOW_PECCQPLOW_MASK I40E_MASK(0xFFFFFFFF, I40E_PFPE_CCQPLOW_PECCQPLOW_SHIFT)
-#define I40E_PFPE_CCQPSTATUS 0x00008100 /* Reset: PFR */
-#define I40E_PFPE_CCQPSTATUS_CCQP_DONE_SHIFT 0
-#define I40E_PFPE_CCQPSTATUS_CCQP_DONE_MASK I40E_MASK(0x1, I40E_PFPE_CCQPSTATUS_CCQP_DONE_SHIFT)
-#define I40E_PFPE_CCQPSTATUS_HMC_PROFILE_SHIFT 4
-#define I40E_PFPE_CCQPSTATUS_HMC_PROFILE_MASK I40E_MASK(0x7, I40E_PFPE_CCQPSTATUS_HMC_PROFILE_SHIFT)
-#define I40E_PFPE_CCQPSTATUS_RDMA_EN_VFS_SHIFT 16
-#define I40E_PFPE_CCQPSTATUS_RDMA_EN_VFS_MASK I40E_MASK(0x3F, I40E_PFPE_CCQPSTATUS_RDMA_EN_VFS_SHIFT)
-#define I40E_PFPE_CCQPSTATUS_CCQP_ERR_SHIFT 31
-#define I40E_PFPE_CCQPSTATUS_CCQP_ERR_MASK I40E_MASK(0x1, I40E_PFPE_CCQPSTATUS_CCQP_ERR_SHIFT)
-#define I40E_PFPE_CQACK 0x00131100 /* Reset: PFR */
-#define I40E_PFPE_CQACK_PECQID_SHIFT 0
-#define I40E_PFPE_CQACK_PECQID_MASK I40E_MASK(0x1FFFF, I40E_PFPE_CQACK_PECQID_SHIFT)
-#define I40E_PFPE_CQARM 0x00131080 /* Reset: PFR */
-#define I40E_PFPE_CQARM_PECQID_SHIFT 0
-#define I40E_PFPE_CQARM_PECQID_MASK I40E_MASK(0x1FFFF, I40E_PFPE_CQARM_PECQID_SHIFT)
-#define I40E_PFPE_CQPDB 0x00008000 /* Reset: PFR */
-#define I40E_PFPE_CQPDB_WQHEAD_SHIFT 0
-#define I40E_PFPE_CQPDB_WQHEAD_MASK I40E_MASK(0x7FF, I40E_PFPE_CQPDB_WQHEAD_SHIFT)
-#define I40E_PFPE_CQPERRCODES 0x00008880 /* Reset: PFR */
-#define I40E_PFPE_CQPERRCODES_CQP_MINOR_CODE_SHIFT 0
-#define I40E_PFPE_CQPERRCODES_CQP_MINOR_CODE_MASK I40E_MASK(0xFFFF, I40E_PFPE_CQPERRCODES_CQP_MINOR_CODE_SHIFT)
-#define I40E_PFPE_CQPERRCODES_CQP_MAJOR_CODE_SHIFT 16
-#define I40E_PFPE_CQPERRCODES_CQP_MAJOR_CODE_MASK I40E_MASK(0xFFFF, I40E_PFPE_CQPERRCODES_CQP_MAJOR_CODE_SHIFT)
-#define I40E_PFPE_CQPTAIL 0x00008080 /* Reset: PFR */
-#define I40E_PFPE_CQPTAIL_WQTAIL_SHIFT 0
-#define I40E_PFPE_CQPTAIL_WQTAIL_MASK I40E_MASK(0x7FF, I40E_PFPE_CQPTAIL_WQTAIL_SHIFT)
-#define I40E_PFPE_CQPTAIL_CQP_OP_ERR_SHIFT 31
-#define I40E_PFPE_CQPTAIL_CQP_OP_ERR_MASK I40E_MASK(0x1, I40E_PFPE_CQPTAIL_CQP_OP_ERR_SHIFT)
-#define I40E_PFPE_FLMQ1ALLOCERR 0x00008980 /* Reset: PFR */
-#define I40E_PFPE_FLMQ1ALLOCERR_ERROR_COUNT_SHIFT 0
-#define I40E_PFPE_FLMQ1ALLOCERR_ERROR_COUNT_MASK I40E_MASK(0xFFFF, I40E_PFPE_FLMQ1ALLOCERR_ERROR_COUNT_SHIFT)
-#define I40E_PFPE_FLMXMITALLOCERR 0x00008900 /* Reset: PFR */
-#define I40E_PFPE_FLMXMITALLOCERR_ERROR_COUNT_SHIFT 0
-#define I40E_PFPE_FLMXMITALLOCERR_ERROR_COUNT_MASK I40E_MASK(0xFFFF, I40E_PFPE_FLMXMITALLOCERR_ERROR_COUNT_SHIFT)
-#define I40E_PFPE_IPCONFIG0 0x00008280 /* Reset: PFR */
-#define I40E_PFPE_IPCONFIG0_PEIPID_SHIFT 0
-#define I40E_PFPE_IPCONFIG0_PEIPID_MASK I40E_MASK(0xFFFF, I40E_PFPE_IPCONFIG0_PEIPID_SHIFT)
-#define I40E_PFPE_IPCONFIG0_USEENTIREIDRANGE_SHIFT 16
-#define I40E_PFPE_IPCONFIG0_USEENTIREIDRANGE_MASK I40E_MASK(0x1, I40E_PFPE_IPCONFIG0_USEENTIREIDRANGE_SHIFT)
-#define I40E_PFPE_MRTEIDXMASK 0x00008600 /* Reset: PFR */
-#define I40E_PFPE_MRTEIDXMASK_MRTEIDXMASKBITS_SHIFT 0
-#define I40E_PFPE_MRTEIDXMASK_MRTEIDXMASKBITS_MASK I40E_MASK(0x1F, I40E_PFPE_MRTEIDXMASK_MRTEIDXMASKBITS_SHIFT)
-#define I40E_PFPE_RCVUNEXPECTEDERROR 0x00008680 /* Reset: PFR */
-#define I40E_PFPE_RCVUNEXPECTEDERROR_TCP_RX_UNEXP_ERR_SHIFT 0
-#define I40E_PFPE_RCVUNEXPECTEDERROR_TCP_RX_UNEXP_ERR_MASK I40E_MASK(0xFFFFFF, I40E_PFPE_RCVUNEXPECTEDERROR_TCP_RX_UNEXP_ERR_SHIFT)
-#define I40E_PFPE_TCPNOWTIMER 0x00008580 /* Reset: PFR */
-#define I40E_PFPE_TCPNOWTIMER_TCP_NOW_SHIFT 0
-#define I40E_PFPE_TCPNOWTIMER_TCP_NOW_MASK I40E_MASK(0xFFFFFFFF, I40E_PFPE_TCPNOWTIMER_TCP_NOW_SHIFT)
-#define I40E_PFPE_UDACTRL 0x00008700 /* Reset: PFR */
-#define I40E_PFPE_UDACTRL_IPV4MCFRAGRESBP_SHIFT 0
-#define I40E_PFPE_UDACTRL_IPV4MCFRAGRESBP_MASK I40E_MASK(0x1, I40E_PFPE_UDACTRL_IPV4MCFRAGRESBP_SHIFT)
-#define I40E_PFPE_UDACTRL_IPV4UCFRAGRESBP_SHIFT 1
-#define I40E_PFPE_UDACTRL_IPV4UCFRAGRESBP_MASK I40E_MASK(0x1, I40E_PFPE_UDACTRL_IPV4UCFRAGRESBP_SHIFT)
-#define I40E_PFPE_UDACTRL_IPV6MCFRAGRESBP_SHIFT 2
-#define I40E_PFPE_UDACTRL_IPV6MCFRAGRESBP_MASK I40E_MASK(0x1, I40E_PFPE_UDACTRL_IPV6MCFRAGRESBP_SHIFT)
-#define I40E_PFPE_UDACTRL_IPV6UCFRAGRESBP_SHIFT 3
-#define I40E_PFPE_UDACTRL_IPV6UCFRAGRESBP_MASK I40E_MASK(0x1, I40E_PFPE_UDACTRL_IPV6UCFRAGRESBP_SHIFT)
-#define I40E_PFPE_UDACTRL_UDPMCFRAGRESFAIL_SHIFT 4
-#define I40E_PFPE_UDACTRL_UDPMCFRAGRESFAIL_MASK I40E_MASK(0x1, I40E_PFPE_UDACTRL_UDPMCFRAGRESFAIL_SHIFT)
-#define I40E_PFPE_UDAUCFBQPN 0x00008780 /* Reset: PFR */
-#define I40E_PFPE_UDAUCFBQPN_QPN_SHIFT 0
-#define I40E_PFPE_UDAUCFBQPN_QPN_MASK I40E_MASK(0x3FFFF, I40E_PFPE_UDAUCFBQPN_QPN_SHIFT)
-#define I40E_PFPE_UDAUCFBQPN_VALID_SHIFT 31
-#define I40E_PFPE_UDAUCFBQPN_VALID_MASK I40E_MASK(0x1, I40E_PFPE_UDAUCFBQPN_VALID_SHIFT)
-#define I40E_PFPE_WQEALLOC 0x00138C00 /* Reset: PFR */
-#define I40E_PFPE_WQEALLOC_PEQPID_SHIFT 0
-#define I40E_PFPE_WQEALLOC_PEQPID_MASK I40E_MASK(0x3FFFF, I40E_PFPE_WQEALLOC_PEQPID_SHIFT)
-#define I40E_PFPE_WQEALLOC_WQE_DESC_INDEX_SHIFT 20
-#define I40E_PFPE_WQEALLOC_WQE_DESC_INDEX_MASK I40E_MASK(0xFFF, I40E_PFPE_WQEALLOC_WQE_DESC_INDEX_SHIFT)
-#define I40E_PRTDCB_RLPMC 0x0001F140 /* Reset: PE_CORER */
-#define I40E_PRTDCB_RLPMC_TC2PFC_SHIFT 0
-#define I40E_PRTDCB_RLPMC_TC2PFC_MASK I40E_MASK(0xFF, I40E_PRTDCB_RLPMC_TC2PFC_SHIFT)
-#define I40E_PRTDCB_TCMSTC_RLPM(_i) (0x0001F040 + ((_i) * 32)) /* _i=0...7 */ /* Reset: PE_CORER */
-#define I40E_PRTDCB_TCMSTC_RLPM_MAX_INDEX 7
-#define I40E_PRTDCB_TCMSTC_RLPM_MSTC_SHIFT 0
-#define I40E_PRTDCB_TCMSTC_RLPM_MSTC_MASK I40E_MASK(0xFFFFF, I40E_PRTDCB_TCMSTC_RLPM_MSTC_SHIFT)
-#define I40E_PRTDCB_TCPMC_RLPM 0x0001F1A0 /* Reset: PE_CORER */
-#define I40E_PRTDCB_TCPMC_RLPM_CPM_SHIFT 0
-#define I40E_PRTDCB_TCPMC_RLPM_CPM_MASK I40E_MASK(0x1FFF, I40E_PRTDCB_TCPMC_RLPM_CPM_SHIFT)
-#define I40E_PRTDCB_TCPMC_RLPM_LLTC_SHIFT 13
-#define I40E_PRTDCB_TCPMC_RLPM_LLTC_MASK I40E_MASK(0xFF, I40E_PRTDCB_TCPMC_RLPM_LLTC_SHIFT)
-#define I40E_PRTDCB_TCPMC_RLPM_TCPM_MODE_SHIFT 30
-#define I40E_PRTDCB_TCPMC_RLPM_TCPM_MODE_MASK I40E_MASK(0x1, I40E_PRTDCB_TCPMC_RLPM_TCPM_MODE_SHIFT)
-#define I40E_PRTE_RUPM_TCCNTR03 0x0000DAE0 /* Reset: PE_CORER */
-#define I40E_PRTE_RUPM_TCCNTR03_TC0COUNT_SHIFT 0
-#define I40E_PRTE_RUPM_TCCNTR03_TC0COUNT_MASK I40E_MASK(0xFF, I40E_PRTE_RUPM_TCCNTR03_TC0COUNT_SHIFT)
-#define I40E_PRTE_RUPM_TCCNTR03_TC1COUNT_SHIFT 8
-#define I40E_PRTE_RUPM_TCCNTR03_TC1COUNT_MASK I40E_MASK(0xFF, I40E_PRTE_RUPM_TCCNTR03_TC1COUNT_SHIFT)
-#define I40E_PRTE_RUPM_TCCNTR03_TC2COUNT_SHIFT 16
-#define I40E_PRTE_RUPM_TCCNTR03_TC2COUNT_MASK I40E_MASK(0xFF, I40E_PRTE_RUPM_TCCNTR03_TC2COUNT_SHIFT)
-#define I40E_PRTE_RUPM_TCCNTR03_TC3COUNT_SHIFT 24
-#define I40E_PRTE_RUPM_TCCNTR03_TC3COUNT_MASK I40E_MASK(0xFF, I40E_PRTE_RUPM_TCCNTR03_TC3COUNT_SHIFT)
-#define I40E_PRTPE_RUPM_CNTR 0x0000DB20 /* Reset: PE_CORER */
-#define I40E_PRTPE_RUPM_CNTR_COUNT_SHIFT 0
-#define I40E_PRTPE_RUPM_CNTR_COUNT_MASK I40E_MASK(0xFF, I40E_PRTPE_RUPM_CNTR_COUNT_SHIFT)
-#define I40E_PRTPE_RUPM_CTL 0x0000DA40 /* Reset: PE_CORER */
-#define I40E_PRTPE_RUPM_CTL_LLTC_SHIFT 13
-#define I40E_PRTPE_RUPM_CTL_LLTC_MASK I40E_MASK(0xFF, I40E_PRTPE_RUPM_CTL_LLTC_SHIFT)
-#define I40E_PRTPE_RUPM_CTL_RUPM_MODE_SHIFT 30
-#define I40E_PRTPE_RUPM_CTL_RUPM_MODE_MASK I40E_MASK(0x1, I40E_PRTPE_RUPM_CTL_RUPM_MODE_SHIFT)
-#define I40E_PRTPE_RUPM_PFCCTL 0x0000DA60 /* Reset: PE_CORER */
-#define I40E_PRTPE_RUPM_PFCCTL_TC2PFC_SHIFT 0
-#define I40E_PRTPE_RUPM_PFCCTL_TC2PFC_MASK I40E_MASK(0xFF, I40E_PRTPE_RUPM_PFCCTL_TC2PFC_SHIFT)
-#define I40E_PRTPE_RUPM_PFCPC 0x0000DA80 /* Reset: PE_CORER */
-#define I40E_PRTPE_RUPM_PFCPC_PORTOFFTH_SHIFT 0
-#define I40E_PRTPE_RUPM_PFCPC_PORTOFFTH_MASK I40E_MASK(0xFF, I40E_PRTPE_RUPM_PFCPC_PORTOFFTH_SHIFT)
-#define I40E_PRTPE_RUPM_PFCTCC 0x0000DAA0 /* Reset: PE_CORER */
-#define I40E_PRTPE_RUPM_PFCTCC_TCOFFTH_SHIFT 0
-#define I40E_PRTPE_RUPM_PFCTCC_TCOFFTH_MASK I40E_MASK(0xFF, I40E_PRTPE_RUPM_PFCTCC_TCOFFTH_SHIFT)
-#define I40E_PRTPE_RUPM_PFCTCC_LL_PRI_TH_SHIFT 16
-#define I40E_PRTPE_RUPM_PFCTCC_LL_PRI_TH_MASK I40E_MASK(0xFF, I40E_PRTPE_RUPM_PFCTCC_LL_PRI_TH_SHIFT)
-#define I40E_PRTPE_RUPM_PFCTCC_LL_PRI_EN_SHIFT 31
-#define I40E_PRTPE_RUPM_PFCTCC_LL_PRI_EN_MASK I40E_MASK(0x1, I40E_PRTPE_RUPM_PFCTCC_LL_PRI_EN_SHIFT)
-#define I40E_PRTPE_RUPM_PTCTCCNTR47 0x0000DB60 /* Reset: PE_CORER */
-#define I40E_PRTPE_RUPM_PTCTCCNTR47_TC4COUNT_SHIFT 0
-#define I40E_PRTPE_RUPM_PTCTCCNTR47_TC4COUNT_MASK I40E_MASK(0xFF, I40E_PRTPE_RUPM_PTCTCCNTR47_TC4COUNT_SHIFT)
-#define I40E_PRTPE_RUPM_PTCTCCNTR47_TC5COUNT_SHIFT 8
-#define I40E_PRTPE_RUPM_PTCTCCNTR47_TC5COUNT_MASK I40E_MASK(0xFF, I40E_PRTPE_RUPM_PTCTCCNTR47_TC5COUNT_SHIFT)
-#define I40E_PRTPE_RUPM_PTCTCCNTR47_TC6COUNT_SHIFT 16
-#define I40E_PRTPE_RUPM_PTCTCCNTR47_TC6COUNT_MASK I40E_MASK(0xFF, I40E_PRTPE_RUPM_PTCTCCNTR47_TC6COUNT_SHIFT)
-#define I40E_PRTPE_RUPM_PTCTCCNTR47_TC7COUNT_SHIFT 24
-#define I40E_PRTPE_RUPM_PTCTCCNTR47_TC7COUNT_MASK I40E_MASK(0xFF, I40E_PRTPE_RUPM_PTCTCCNTR47_TC7COUNT_SHIFT)
-#define I40E_PRTPE_RUPM_PTXTCCNTR03 0x0000DB40 /* Reset: PE_CORER */
-#define I40E_PRTPE_RUPM_PTXTCCNTR03_TC0COUNT_SHIFT 0
-#define I40E_PRTPE_RUPM_PTXTCCNTR03_TC0COUNT_MASK I40E_MASK(0xFF, I40E_PRTPE_RUPM_PTXTCCNTR03_TC0COUNT_SHIFT)
-#define I40E_PRTPE_RUPM_PTXTCCNTR03_TC1COUNT_SHIFT 8
-#define I40E_PRTPE_RUPM_PTXTCCNTR03_TC1COUNT_MASK I40E_MASK(0xFF, I40E_PRTPE_RUPM_PTXTCCNTR03_TC1COUNT_SHIFT)
-#define I40E_PRTPE_RUPM_PTXTCCNTR03_TC2COUNT_SHIFT 16
-#define I40E_PRTPE_RUPM_PTXTCCNTR03_TC2COUNT_MASK I40E_MASK(0xFF, I40E_PRTPE_RUPM_PTXTCCNTR03_TC2COUNT_SHIFT)
-#define I40E_PRTPE_RUPM_PTXTCCNTR03_TC3COUNT_SHIFT 24
-#define I40E_PRTPE_RUPM_PTXTCCNTR03_TC3COUNT_MASK I40E_MASK(0xFF, I40E_PRTPE_RUPM_PTXTCCNTR03_TC3COUNT_SHIFT)
-#define I40E_PRTPE_RUPM_TCCNTR47 0x0000DB00 /* Reset: PE_CORER */
-#define I40E_PRTPE_RUPM_TCCNTR47_TC4COUNT_SHIFT 0
-#define I40E_PRTPE_RUPM_TCCNTR47_TC4COUNT_MASK I40E_MASK(0xFF, I40E_PRTPE_RUPM_TCCNTR47_TC4COUNT_SHIFT)
-#define I40E_PRTPE_RUPM_TCCNTR47_TC5COUNT_SHIFT 8
-#define I40E_PRTPE_RUPM_TCCNTR47_TC5COUNT_MASK I40E_MASK(0xFF, I40E_PRTPE_RUPM_TCCNTR47_TC5COUNT_SHIFT)
-#define I40E_PRTPE_RUPM_TCCNTR47_TC6COUNT_SHIFT 16
-#define I40E_PRTPE_RUPM_TCCNTR47_TC6COUNT_MASK I40E_MASK(0xFF, I40E_PRTPE_RUPM_TCCNTR47_TC6COUNT_SHIFT)
-#define I40E_PRTPE_RUPM_TCCNTR47_TC7COUNT_SHIFT 24
-#define I40E_PRTPE_RUPM_TCCNTR47_TC7COUNT_MASK I40E_MASK(0xFF, I40E_PRTPE_RUPM_TCCNTR47_TC7COUNT_SHIFT)
-#define I40E_PRTPE_RUPM_THRES 0x0000DA20 /* Reset: PE_CORER */
-#define I40E_PRTPE_RUPM_THRES_MINSPADSPERTC_SHIFT 0
-#define I40E_PRTPE_RUPM_THRES_MINSPADSPERTC_MASK I40E_MASK(0xFF, I40E_PRTPE_RUPM_THRES_MINSPADSPERTC_SHIFT)
-#define I40E_PRTPE_RUPM_THRES_MAXSPADS_SHIFT 8
-#define I40E_PRTPE_RUPM_THRES_MAXSPADS_MASK I40E_MASK(0xFF, I40E_PRTPE_RUPM_THRES_MAXSPADS_SHIFT)
-#define I40E_PRTPE_RUPM_THRES_MAXSPADSPERTC_SHIFT 16
-#define I40E_PRTPE_RUPM_THRES_MAXSPADSPERTC_MASK I40E_MASK(0xFF, I40E_PRTPE_RUPM_THRES_MAXSPADSPERTC_SHIFT)
-#define I40E_VFPE_AEQALLOC(_VF) (0x00130C00 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: VFR */
-#define I40E_VFPE_AEQALLOC_MAX_INDEX 127
-#define I40E_VFPE_AEQALLOC_AECOUNT_SHIFT 0
-#define I40E_VFPE_AEQALLOC_AECOUNT_MASK I40E_MASK(0xFFFFFFFF, I40E_VFPE_AEQALLOC_AECOUNT_SHIFT)
-#define I40E_VFPE_CCQPHIGH(_VF) (0x00001000 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: VFR */
-#define I40E_VFPE_CCQPHIGH_MAX_INDEX 127
-#define I40E_VFPE_CCQPHIGH_PECCQPHIGH_SHIFT 0
-#define I40E_VFPE_CCQPHIGH_PECCQPHIGH_MASK I40E_MASK(0xFFFFFFFF, I40E_VFPE_CCQPHIGH_PECCQPHIGH_SHIFT)
-#define I40E_VFPE_CCQPLOW(_VF) (0x00000C00 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: VFR */
-#define I40E_VFPE_CCQPLOW_MAX_INDEX 127
-#define I40E_VFPE_CCQPLOW_PECCQPLOW_SHIFT 0
-#define I40E_VFPE_CCQPLOW_PECCQPLOW_MASK I40E_MASK(0xFFFFFFFF, I40E_VFPE_CCQPLOW_PECCQPLOW_SHIFT)
-#define I40E_VFPE_CCQPSTATUS(_VF) (0x00000800 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: VFR */
-#define I40E_VFPE_CCQPSTATUS_MAX_INDEX 127
-#define I40E_VFPE_CCQPSTATUS_CCQP_DONE_SHIFT 0
-#define I40E_VFPE_CCQPSTATUS_CCQP_DONE_MASK I40E_MASK(0x1, I40E_VFPE_CCQPSTATUS_CCQP_DONE_SHIFT)
-#define I40E_VFPE_CCQPSTATUS_HMC_PROFILE_SHIFT 4
-#define I40E_VFPE_CCQPSTATUS_HMC_PROFILE_MASK I40E_MASK(0x7, I40E_VFPE_CCQPSTATUS_HMC_PROFILE_SHIFT)
-#define I40E_VFPE_CCQPSTATUS_RDMA_EN_VFS_SHIFT 16
-#define I40E_VFPE_CCQPSTATUS_RDMA_EN_VFS_MASK I40E_MASK(0x3F, I40E_VFPE_CCQPSTATUS_RDMA_EN_VFS_SHIFT)
-#define I40E_VFPE_CCQPSTATUS_CCQP_ERR_SHIFT 31
-#define I40E_VFPE_CCQPSTATUS_CCQP_ERR_MASK I40E_MASK(0x1, I40E_VFPE_CCQPSTATUS_CCQP_ERR_SHIFT)
-#define I40E_VFPE_CQACK(_VF) (0x00130800 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: VFR */
-#define I40E_VFPE_CQACK_MAX_INDEX 127
-#define I40E_VFPE_CQACK_PECQID_SHIFT 0
-#define I40E_VFPE_CQACK_PECQID_MASK I40E_MASK(0x1FFFF, I40E_VFPE_CQACK_PECQID_SHIFT)
-#define I40E_VFPE_CQARM(_VF) (0x00130400 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: VFR */
-#define I40E_VFPE_CQARM_MAX_INDEX 127
-#define I40E_VFPE_CQARM_PECQID_SHIFT 0
-#define I40E_VFPE_CQARM_PECQID_MASK I40E_MASK(0x1FFFF, I40E_VFPE_CQARM_PECQID_SHIFT)
-#define I40E_VFPE_CQPDB(_VF) (0x00000000 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: VFR */
-#define I40E_VFPE_CQPDB_MAX_INDEX 127
-#define I40E_VFPE_CQPDB_WQHEAD_SHIFT 0
-#define I40E_VFPE_CQPDB_WQHEAD_MASK I40E_MASK(0x7FF, I40E_VFPE_CQPDB_WQHEAD_SHIFT)
-#define I40E_VFPE_CQPERRCODES(_VF) (0x00001800 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: VFR */
-#define I40E_VFPE_CQPERRCODES_MAX_INDEX 127
-#define I40E_VFPE_CQPERRCODES_CQP_MINOR_CODE_SHIFT 0
-#define I40E_VFPE_CQPERRCODES_CQP_MINOR_CODE_MASK I40E_MASK(0xFFFF, I40E_VFPE_CQPERRCODES_CQP_MINOR_CODE_SHIFT)
-#define I40E_VFPE_CQPERRCODES_CQP_MAJOR_CODE_SHIFT 16
-#define I40E_VFPE_CQPERRCODES_CQP_MAJOR_CODE_MASK I40E_MASK(0xFFFF, I40E_VFPE_CQPERRCODES_CQP_MAJOR_CODE_SHIFT)
-#define I40E_VFPE_CQPTAIL(_VF) (0x00000400 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: VFR */
-#define I40E_VFPE_CQPTAIL_MAX_INDEX 127
-#define I40E_VFPE_CQPTAIL_WQTAIL_SHIFT 0
-#define I40E_VFPE_CQPTAIL_WQTAIL_MASK I40E_MASK(0x7FF, I40E_VFPE_CQPTAIL_WQTAIL_SHIFT)
-#define I40E_VFPE_CQPTAIL_CQP_OP_ERR_SHIFT 31
-#define I40E_VFPE_CQPTAIL_CQP_OP_ERR_MASK I40E_MASK(0x1, I40E_VFPE_CQPTAIL_CQP_OP_ERR_SHIFT)
-#define I40E_VFPE_IPCONFIG0(_VF) (0x00001400 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: VFR */
-#define I40E_VFPE_IPCONFIG0_MAX_INDEX 127
-#define I40E_VFPE_IPCONFIG0_PEIPID_SHIFT 0
-#define I40E_VFPE_IPCONFIG0_PEIPID_MASK I40E_MASK(0xFFFF, I40E_VFPE_IPCONFIG0_PEIPID_SHIFT)
-#define I40E_VFPE_IPCONFIG0_USEENTIREIDRANGE_SHIFT 16
-#define I40E_VFPE_IPCONFIG0_USEENTIREIDRANGE_MASK I40E_MASK(0x1, I40E_VFPE_IPCONFIG0_USEENTIREIDRANGE_SHIFT)
-#define I40E_VFPE_MRTEIDXMASK(_VF) (0x00003000 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: VFR */
-#define I40E_VFPE_MRTEIDXMASK_MAX_INDEX 127
-#define I40E_VFPE_MRTEIDXMASK_MRTEIDXMASKBITS_SHIFT 0
-#define I40E_VFPE_MRTEIDXMASK_MRTEIDXMASKBITS_MASK I40E_MASK(0x1F, I40E_VFPE_MRTEIDXMASK_MRTEIDXMASKBITS_SHIFT)
-#define I40E_VFPE_RCVUNEXPECTEDERROR(_VF) (0x00003400 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: VFR */
-#define I40E_VFPE_RCVUNEXPECTEDERROR_MAX_INDEX 127
-#define I40E_VFPE_RCVUNEXPECTEDERROR_TCP_RX_UNEXP_ERR_SHIFT 0
-#define I40E_VFPE_RCVUNEXPECTEDERROR_TCP_RX_UNEXP_ERR_MASK I40E_MASK(0xFFFFFF, I40E_VFPE_RCVUNEXPECTEDERROR_TCP_RX_UNEXP_ERR_SHIFT)
-#define I40E_VFPE_TCPNOWTIMER(_VF) (0x00002C00 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: VFR */
-#define I40E_VFPE_TCPNOWTIMER_MAX_INDEX 127
-#define I40E_VFPE_TCPNOWTIMER_TCP_NOW_SHIFT 0
-#define I40E_VFPE_TCPNOWTIMER_TCP_NOW_MASK I40E_MASK(0xFFFFFFFF, I40E_VFPE_TCPNOWTIMER_TCP_NOW_SHIFT)
-#define I40E_VFPE_WQEALLOC(_VF) (0x00138000 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: VFR */
-#define I40E_VFPE_WQEALLOC_MAX_INDEX 127
-#define I40E_VFPE_WQEALLOC_PEQPID_SHIFT 0
-#define I40E_VFPE_WQEALLOC_PEQPID_MASK I40E_MASK(0x3FFFF, I40E_VFPE_WQEALLOC_PEQPID_SHIFT)
-#define I40E_VFPE_WQEALLOC_WQE_DESC_INDEX_SHIFT 20
-#define I40E_VFPE_WQEALLOC_WQE_DESC_INDEX_MASK I40E_MASK(0xFFF, I40E_VFPE_WQEALLOC_WQE_DESC_INDEX_SHIFT)
-#define I40E_GLPES_PFIP4RXDISCARD(_i) (0x00010600 + ((_i) * 4)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP4RXDISCARD_MAX_INDEX 15
-#define I40E_GLPES_PFIP4RXDISCARD_IP4RXDISCARD_SHIFT 0
-#define I40E_GLPES_PFIP4RXDISCARD_IP4RXDISCARD_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFIP4RXDISCARD_IP4RXDISCARD_SHIFT)
-#define I40E_GLPES_PFIP4RXFRAGSHI(_i) (0x00010804 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP4RXFRAGSHI_MAX_INDEX 15
-#define I40E_GLPES_PFIP4RXFRAGSHI_IP4RXFRAGSHI_SHIFT 0
-#define I40E_GLPES_PFIP4RXFRAGSHI_IP4RXFRAGSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFIP4RXFRAGSHI_IP4RXFRAGSHI_SHIFT)
-#define I40E_GLPES_PFIP4RXFRAGSLO(_i) (0x00010800 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP4RXFRAGSLO_MAX_INDEX 15
-#define I40E_GLPES_PFIP4RXFRAGSLO_IP4RXFRAGSLO_SHIFT 0
-#define I40E_GLPES_PFIP4RXFRAGSLO_IP4RXFRAGSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFIP4RXFRAGSLO_IP4RXFRAGSLO_SHIFT)
-#define I40E_GLPES_PFIP4RXMCOCTSHI(_i) (0x00010A04 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP4RXMCOCTSHI_MAX_INDEX 15
-#define I40E_GLPES_PFIP4RXMCOCTSHI_IP4RXMCOCTSHI_SHIFT 0
-#define I40E_GLPES_PFIP4RXMCOCTSHI_IP4RXMCOCTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFIP4RXMCOCTSHI_IP4RXMCOCTSHI_SHIFT)
-#define I40E_GLPES_PFIP4RXMCOCTSLO(_i) (0x00010A00 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP4RXMCOCTSLO_MAX_INDEX 15
-#define I40E_GLPES_PFIP4RXMCOCTSLO_IP4RXMCOCTSLO_SHIFT 0
-#define I40E_GLPES_PFIP4RXMCOCTSLO_IP4RXMCOCTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFIP4RXMCOCTSLO_IP4RXMCOCTSLO_SHIFT)
-#define I40E_GLPES_PFIP4RXMCPKTSHI(_i) (0x00010C04 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP4RXMCPKTSHI_MAX_INDEX 15
-#define I40E_GLPES_PFIP4RXMCPKTSHI_IP4RXMCPKTSHI_SHIFT 0
-#define I40E_GLPES_PFIP4RXMCPKTSHI_IP4RXMCPKTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFIP4RXMCPKTSHI_IP4RXMCPKTSHI_SHIFT)
-#define I40E_GLPES_PFIP4RXMCPKTSLO(_i) (0x00010C00 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP4RXMCPKTSLO_MAX_INDEX 15
-#define I40E_GLPES_PFIP4RXMCPKTSLO_IP4RXMCPKTSLO_SHIFT 0
-#define I40E_GLPES_PFIP4RXMCPKTSLO_IP4RXMCPKTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFIP4RXMCPKTSLO_IP4RXMCPKTSLO_SHIFT)
-#define I40E_GLPES_PFIP4RXOCTSHI(_i) (0x00010204 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP4RXOCTSHI_MAX_INDEX 15
-#define I40E_GLPES_PFIP4RXOCTSHI_IP4RXOCTSHI_SHIFT 0
-#define I40E_GLPES_PFIP4RXOCTSHI_IP4RXOCTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFIP4RXOCTSHI_IP4RXOCTSHI_SHIFT)
-#define I40E_GLPES_PFIP4RXOCTSLO(_i) (0x00010200 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP4RXOCTSLO_MAX_INDEX 15
-#define I40E_GLPES_PFIP4RXOCTSLO_IP4RXOCTSLO_SHIFT 0
-#define I40E_GLPES_PFIP4RXOCTSLO_IP4RXOCTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFIP4RXOCTSLO_IP4RXOCTSLO_SHIFT)
-#define I40E_GLPES_PFIP4RXPKTSHI(_i) (0x00010404 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP4RXPKTSHI_MAX_INDEX 15
-#define I40E_GLPES_PFIP4RXPKTSHI_IP4RXPKTSHI_SHIFT 0
-#define I40E_GLPES_PFIP4RXPKTSHI_IP4RXPKTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFIP4RXPKTSHI_IP4RXPKTSHI_SHIFT)
-#define I40E_GLPES_PFIP4RXPKTSLO(_i) (0x00010400 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP4RXPKTSLO_MAX_INDEX 15
-#define I40E_GLPES_PFIP4RXPKTSLO_IP4RXPKTSLO_SHIFT 0
-#define I40E_GLPES_PFIP4RXPKTSLO_IP4RXPKTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFIP4RXPKTSLO_IP4RXPKTSLO_SHIFT)
-#define I40E_GLPES_PFIP4RXTRUNC(_i) (0x00010700 + ((_i) * 4)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP4RXTRUNC_MAX_INDEX 15
-#define I40E_GLPES_PFIP4RXTRUNC_IP4RXTRUNC_SHIFT 0
-#define I40E_GLPES_PFIP4RXTRUNC_IP4RXTRUNC_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFIP4RXTRUNC_IP4RXTRUNC_SHIFT)
-#define I40E_GLPES_PFIP4TXFRAGSHI(_i) (0x00011E04 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP4TXFRAGSHI_MAX_INDEX 15
-#define I40E_GLPES_PFIP4TXFRAGSHI_IP4TXFRAGSHI_SHIFT 0
-#define I40E_GLPES_PFIP4TXFRAGSHI_IP4TXFRAGSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFIP4TXFRAGSHI_IP4TXFRAGSHI_SHIFT)
-#define I40E_GLPES_PFIP4TXFRAGSLO(_i) (0x00011E00 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP4TXFRAGSLO_MAX_INDEX 15
-#define I40E_GLPES_PFIP4TXFRAGSLO_IP4TXFRAGSLO_SHIFT 0
-#define I40E_GLPES_PFIP4TXFRAGSLO_IP4TXFRAGSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFIP4TXFRAGSLO_IP4TXFRAGSLO_SHIFT)
-#define I40E_GLPES_PFIP4TXMCOCTSHI(_i) (0x00012004 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP4TXMCOCTSHI_MAX_INDEX 15
-#define I40E_GLPES_PFIP4TXMCOCTSHI_IP4TXMCOCTSHI_SHIFT 0
-#define I40E_GLPES_PFIP4TXMCOCTSHI_IP4TXMCOCTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFIP4TXMCOCTSHI_IP4TXMCOCTSHI_SHIFT)
-#define I40E_GLPES_PFIP4TXMCOCTSLO(_i) (0x00012000 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP4TXMCOCTSLO_MAX_INDEX 15
-#define I40E_GLPES_PFIP4TXMCOCTSLO_IP4TXMCOCTSLO_SHIFT 0
-#define I40E_GLPES_PFIP4TXMCOCTSLO_IP4TXMCOCTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFIP4TXMCOCTSLO_IP4TXMCOCTSLO_SHIFT)
-#define I40E_GLPES_PFIP4TXMCPKTSHI(_i) (0x00012204 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP4TXMCPKTSHI_MAX_INDEX 15
-#define I40E_GLPES_PFIP4TXMCPKTSHI_IP4TXMCPKTSHI_SHIFT 0
-#define I40E_GLPES_PFIP4TXMCPKTSHI_IP4TXMCPKTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFIP4TXMCPKTSHI_IP4TXMCPKTSHI_SHIFT)
-#define I40E_GLPES_PFIP4TXMCPKTSLO(_i) (0x00012200 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP4TXMCPKTSLO_MAX_INDEX 15
-#define I40E_GLPES_PFIP4TXMCPKTSLO_IP4TXMCPKTSLO_SHIFT 0
-#define I40E_GLPES_PFIP4TXMCPKTSLO_IP4TXMCPKTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFIP4TXMCPKTSLO_IP4TXMCPKTSLO_SHIFT)
-#define I40E_GLPES_PFIP4TXNOROUTE(_i) (0x00012E00 + ((_i) * 4)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP4TXNOROUTE_MAX_INDEX 15
-#define I40E_GLPES_PFIP4TXNOROUTE_IP4TXNOROUTE_SHIFT 0
-#define I40E_GLPES_PFIP4TXNOROUTE_IP4TXNOROUTE_MASK I40E_MASK(0xFFFFFF, I40E_GLPES_PFIP4TXNOROUTE_IP4TXNOROUTE_SHIFT)
-#define I40E_GLPES_PFIP4TXOCTSHI(_i) (0x00011A04 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP4TXOCTSHI_MAX_INDEX 15
-#define I40E_GLPES_PFIP4TXOCTSHI_IP4TXOCTSHI_SHIFT 0
-#define I40E_GLPES_PFIP4TXOCTSHI_IP4TXOCTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFIP4TXOCTSHI_IP4TXOCTSHI_SHIFT)
-#define I40E_GLPES_PFIP4TXOCTSLO(_i) (0x00011A00 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP4TXOCTSLO_MAX_INDEX 15
-#define I40E_GLPES_PFIP4TXOCTSLO_IP4TXOCTSLO_SHIFT 0
-#define I40E_GLPES_PFIP4TXOCTSLO_IP4TXOCTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFIP4TXOCTSLO_IP4TXOCTSLO_SHIFT)
-#define I40E_GLPES_PFIP4TXPKTSHI(_i) (0x00011C04 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP4TXPKTSHI_MAX_INDEX 15
-#define I40E_GLPES_PFIP4TXPKTSHI_IP4TXPKTSHI_SHIFT 0
-#define I40E_GLPES_PFIP4TXPKTSHI_IP4TXPKTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFIP4TXPKTSHI_IP4TXPKTSHI_SHIFT)
-#define I40E_GLPES_PFIP4TXPKTSLO(_i) (0x00011C00 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP4TXPKTSLO_MAX_INDEX 15
-#define I40E_GLPES_PFIP4TXPKTSLO_IP4TXPKTSLO_SHIFT 0
-#define I40E_GLPES_PFIP4TXPKTSLO_IP4TXPKTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFIP4TXPKTSLO_IP4TXPKTSLO_SHIFT)
-#define I40E_GLPES_PFIP6RXDISCARD(_i) (0x00011200 + ((_i) * 4)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP6RXDISCARD_MAX_INDEX 15
-#define I40E_GLPES_PFIP6RXDISCARD_IP6RXDISCARD_SHIFT 0
-#define I40E_GLPES_PFIP6RXDISCARD_IP6RXDISCARD_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFIP6RXDISCARD_IP6RXDISCARD_SHIFT)
-#define I40E_GLPES_PFIP6RXFRAGSHI(_i) (0x00011404 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP6RXFRAGSHI_MAX_INDEX 15
-#define I40E_GLPES_PFIP6RXFRAGSHI_IP6RXFRAGSHI_SHIFT 0
-#define I40E_GLPES_PFIP6RXFRAGSHI_IP6RXFRAGSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFIP6RXFRAGSHI_IP6RXFRAGSHI_SHIFT)
-#define I40E_GLPES_PFIP6RXFRAGSLO(_i) (0x00011400 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP6RXFRAGSLO_MAX_INDEX 15
-#define I40E_GLPES_PFIP6RXFRAGSLO_IP6RXFRAGSLO_SHIFT 0
-#define I40E_GLPES_PFIP6RXFRAGSLO_IP6RXFRAGSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFIP6RXFRAGSLO_IP6RXFRAGSLO_SHIFT)
-#define I40E_GLPES_PFIP6RXMCOCTSHI(_i) (0x00011604 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP6RXMCOCTSHI_MAX_INDEX 15
-#define I40E_GLPES_PFIP6RXMCOCTSHI_IP6RXMCOCTSHI_SHIFT 0
-#define I40E_GLPES_PFIP6RXMCOCTSHI_IP6RXMCOCTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFIP6RXMCOCTSHI_IP6RXMCOCTSHI_SHIFT)
-#define I40E_GLPES_PFIP6RXMCOCTSLO(_i) (0x00011600 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP6RXMCOCTSLO_MAX_INDEX 15
-#define I40E_GLPES_PFIP6RXMCOCTSLO_IP6RXMCOCTSLO_SHIFT 0
-#define I40E_GLPES_PFIP6RXMCOCTSLO_IP6RXMCOCTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFIP6RXMCOCTSLO_IP6RXMCOCTSLO_SHIFT)
-#define I40E_GLPES_PFIP6RXMCPKTSHI(_i) (0x00011804 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP6RXMCPKTSHI_MAX_INDEX 15
-#define I40E_GLPES_PFIP6RXMCPKTSHI_IP6RXMCPKTSHI_SHIFT 0
-#define I40E_GLPES_PFIP6RXMCPKTSHI_IP6RXMCPKTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFIP6RXMCPKTSHI_IP6RXMCPKTSHI_SHIFT)
-#define I40E_GLPES_PFIP6RXMCPKTSLO(_i) (0x00011800 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP6RXMCPKTSLO_MAX_INDEX 15
-#define I40E_GLPES_PFIP6RXMCPKTSLO_IP6RXMCPKTSLO_SHIFT 0
-#define I40E_GLPES_PFIP6RXMCPKTSLO_IP6RXMCPKTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFIP6RXMCPKTSLO_IP6RXMCPKTSLO_SHIFT)
-#define I40E_GLPES_PFIP6RXOCTSHI(_i) (0x00010E04 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP6RXOCTSHI_MAX_INDEX 15
-#define I40E_GLPES_PFIP6RXOCTSHI_IP6RXOCTSHI_SHIFT 0
-#define I40E_GLPES_PFIP6RXOCTSHI_IP6RXOCTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFIP6RXOCTSHI_IP6RXOCTSHI_SHIFT)
-#define I40E_GLPES_PFIP6RXOCTSLO(_i) (0x00010E00 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP6RXOCTSLO_MAX_INDEX 15
-#define I40E_GLPES_PFIP6RXOCTSLO_IP6RXOCTSLO_SHIFT 0
-#define I40E_GLPES_PFIP6RXOCTSLO_IP6RXOCTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFIP6RXOCTSLO_IP6RXOCTSLO_SHIFT)
-#define I40E_GLPES_PFIP6RXPKTSHI(_i) (0x00011004 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP6RXPKTSHI_MAX_INDEX 15
-#define I40E_GLPES_PFIP6RXPKTSHI_IP6RXPKTSHI_SHIFT 0
-#define I40E_GLPES_PFIP6RXPKTSHI_IP6RXPKTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFIP6RXPKTSHI_IP6RXPKTSHI_SHIFT)
-#define I40E_GLPES_PFIP6RXPKTSLO(_i) (0x00011000 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP6RXPKTSLO_MAX_INDEX 15
-#define I40E_GLPES_PFIP6RXPKTSLO_IP6RXPKTSLO_SHIFT 0
-#define I40E_GLPES_PFIP6RXPKTSLO_IP6RXPKTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFIP6RXPKTSLO_IP6RXPKTSLO_SHIFT)
-#define I40E_GLPES_PFIP6RXTRUNC(_i) (0x00011300 + ((_i) * 4)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP6RXTRUNC_MAX_INDEX 15
-#define I40E_GLPES_PFIP6RXTRUNC_IP6RXTRUNC_SHIFT 0
-#define I40E_GLPES_PFIP6RXTRUNC_IP6RXTRUNC_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFIP6RXTRUNC_IP6RXTRUNC_SHIFT)
-#define I40E_GLPES_PFIP6TXFRAGSHI(_i) (0x00012804 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP6TXFRAGSHI_MAX_INDEX 15
-#define I40E_GLPES_PFIP6TXFRAGSHI_IP6TXFRAGSHI_SHIFT 0
-#define I40E_GLPES_PFIP6TXFRAGSHI_IP6TXFRAGSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFIP6TXFRAGSHI_IP6TXFRAGSHI_SHIFT)
-#define I40E_GLPES_PFIP6TXFRAGSLO(_i) (0x00012800 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP6TXFRAGSLO_MAX_INDEX 15
-#define I40E_GLPES_PFIP6TXFRAGSLO_IP6TXFRAGSLO_SHIFT 0
-#define I40E_GLPES_PFIP6TXFRAGSLO_IP6TXFRAGSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFIP6TXFRAGSLO_IP6TXFRAGSLO_SHIFT)
-#define I40E_GLPES_PFIP6TXMCOCTSHI(_i) (0x00012A04 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP6TXMCOCTSHI_MAX_INDEX 15
-#define I40E_GLPES_PFIP6TXMCOCTSHI_IP6TXMCOCTSHI_SHIFT 0
-#define I40E_GLPES_PFIP6TXMCOCTSHI_IP6TXMCOCTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFIP6TXMCOCTSHI_IP6TXMCOCTSHI_SHIFT)
-#define I40E_GLPES_PFIP6TXMCOCTSLO(_i) (0x00012A00 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP6TXMCOCTSLO_MAX_INDEX 15
-#define I40E_GLPES_PFIP6TXMCOCTSLO_IP6TXMCOCTSLO_SHIFT 0
-#define I40E_GLPES_PFIP6TXMCOCTSLO_IP6TXMCOCTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFIP6TXMCOCTSLO_IP6TXMCOCTSLO_SHIFT)
-#define I40E_GLPES_PFIP6TXMCPKTSHI(_i) (0x00012C04 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP6TXMCPKTSHI_MAX_INDEX 15
-#define I40E_GLPES_PFIP6TXMCPKTSHI_IP6TXMCPKTSHI_SHIFT 0
-#define I40E_GLPES_PFIP6TXMCPKTSHI_IP6TXMCPKTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFIP6TXMCPKTSHI_IP6TXMCPKTSHI_SHIFT)
-#define I40E_GLPES_PFIP6TXMCPKTSLO(_i) (0x00012C00 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP6TXMCPKTSLO_MAX_INDEX 15
-#define I40E_GLPES_PFIP6TXMCPKTSLO_IP6TXMCPKTSLO_SHIFT 0
-#define I40E_GLPES_PFIP6TXMCPKTSLO_IP6TXMCPKTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFIP6TXMCPKTSLO_IP6TXMCPKTSLO_SHIFT)
-#define I40E_GLPES_PFIP6TXNOROUTE(_i) (0x00012F00 + ((_i) * 4)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP6TXNOROUTE_MAX_INDEX 15
-#define I40E_GLPES_PFIP6TXNOROUTE_IP6TXNOROUTE_SHIFT 0
-#define I40E_GLPES_PFIP6TXNOROUTE_IP6TXNOROUTE_MASK I40E_MASK(0xFFFFFF, I40E_GLPES_PFIP6TXNOROUTE_IP6TXNOROUTE_SHIFT)
-#define I40E_GLPES_PFIP6TXOCTSHI(_i) (0x00012404 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP6TXOCTSHI_MAX_INDEX 15
-#define I40E_GLPES_PFIP6TXOCTSHI_IP6TXOCTSHI_SHIFT 0
-#define I40E_GLPES_PFIP6TXOCTSHI_IP6TXOCTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFIP6TXOCTSHI_IP6TXOCTSHI_SHIFT)
-#define I40E_GLPES_PFIP6TXOCTSLO(_i) (0x00012400 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP6TXOCTSLO_MAX_INDEX 15
-#define I40E_GLPES_PFIP6TXOCTSLO_IP6TXOCTSLO_SHIFT 0
-#define I40E_GLPES_PFIP6TXOCTSLO_IP6TXOCTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFIP6TXOCTSLO_IP6TXOCTSLO_SHIFT)
-#define I40E_GLPES_PFIP6TXPKTSHI(_i) (0x00012604 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP6TXPKTSHI_MAX_INDEX 15
-#define I40E_GLPES_PFIP6TXPKTSHI_IP6TXPKTSHI_SHIFT 0
-#define I40E_GLPES_PFIP6TXPKTSHI_IP6TXPKTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFIP6TXPKTSHI_IP6TXPKTSHI_SHIFT)
-#define I40E_GLPES_PFIP6TXPKTSLO(_i) (0x00012600 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFIP6TXPKTSLO_MAX_INDEX 15
-#define I40E_GLPES_PFIP6TXPKTSLO_IP6TXPKTSLO_SHIFT 0
-#define I40E_GLPES_PFIP6TXPKTSLO_IP6TXPKTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFIP6TXPKTSLO_IP6TXPKTSLO_SHIFT)
-#define I40E_GLPES_PFRDMARXRDSHI(_i) (0x00013E04 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFRDMARXRDSHI_MAX_INDEX 15
-#define I40E_GLPES_PFRDMARXRDSHI_RDMARXRDSHI_SHIFT 0
-#define I40E_GLPES_PFRDMARXRDSHI_RDMARXRDSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFRDMARXRDSHI_RDMARXRDSHI_SHIFT)
-#define I40E_GLPES_PFRDMARXRDSLO(_i) (0x00013E00 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFRDMARXRDSLO_MAX_INDEX 15
-#define I40E_GLPES_PFRDMARXRDSLO_RDMARXRDSLO_SHIFT 0
-#define I40E_GLPES_PFRDMARXRDSLO_RDMARXRDSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFRDMARXRDSLO_RDMARXRDSLO_SHIFT)
-#define I40E_GLPES_PFRDMARXSNDSHI(_i) (0x00014004 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFRDMARXSNDSHI_MAX_INDEX 15
-#define I40E_GLPES_PFRDMARXSNDSHI_RDMARXSNDSHI_SHIFT 0
-#define I40E_GLPES_PFRDMARXSNDSHI_RDMARXSNDSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFRDMARXSNDSHI_RDMARXSNDSHI_SHIFT)
-#define I40E_GLPES_PFRDMARXSNDSLO(_i) (0x00014000 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFRDMARXSNDSLO_MAX_INDEX 15
-#define I40E_GLPES_PFRDMARXSNDSLO_RDMARXSNDSLO_SHIFT 0
-#define I40E_GLPES_PFRDMARXSNDSLO_RDMARXSNDSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFRDMARXSNDSLO_RDMARXSNDSLO_SHIFT)
-#define I40E_GLPES_PFRDMARXWRSHI(_i) (0x00013C04 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFRDMARXWRSHI_MAX_INDEX 15
-#define I40E_GLPES_PFRDMARXWRSHI_RDMARXWRSHI_SHIFT 0
-#define I40E_GLPES_PFRDMARXWRSHI_RDMARXWRSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFRDMARXWRSHI_RDMARXWRSHI_SHIFT)
-#define I40E_GLPES_PFRDMARXWRSLO(_i) (0x00013C00 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFRDMARXWRSLO_MAX_INDEX 15
-#define I40E_GLPES_PFRDMARXWRSLO_RDMARXWRSLO_SHIFT 0
-#define I40E_GLPES_PFRDMARXWRSLO_RDMARXWRSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFRDMARXWRSLO_RDMARXWRSLO_SHIFT)
-#define I40E_GLPES_PFRDMATXRDSHI(_i) (0x00014404 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFRDMATXRDSHI_MAX_INDEX 15
-#define I40E_GLPES_PFRDMATXRDSHI_RDMARXRDSHI_SHIFT 0
-#define I40E_GLPES_PFRDMATXRDSHI_RDMARXRDSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFRDMATXRDSHI_RDMARXRDSHI_SHIFT)
-#define I40E_GLPES_PFRDMATXRDSLO(_i) (0x00014400 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFRDMATXRDSLO_MAX_INDEX 15
-#define I40E_GLPES_PFRDMATXRDSLO_RDMARXRDSLO_SHIFT 0
-#define I40E_GLPES_PFRDMATXRDSLO_RDMARXRDSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFRDMATXRDSLO_RDMARXRDSLO_SHIFT)
-#define I40E_GLPES_PFRDMATXSNDSHI(_i) (0x00014604 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFRDMATXSNDSHI_MAX_INDEX 15
-#define I40E_GLPES_PFRDMATXSNDSHI_RDMARXSNDSHI_SHIFT 0
-#define I40E_GLPES_PFRDMATXSNDSHI_RDMARXSNDSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFRDMATXSNDSHI_RDMARXSNDSHI_SHIFT)
-#define I40E_GLPES_PFRDMATXSNDSLO(_i) (0x00014600 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFRDMATXSNDSLO_MAX_INDEX 15
-#define I40E_GLPES_PFRDMATXSNDSLO_RDMARXSNDSLO_SHIFT 0
-#define I40E_GLPES_PFRDMATXSNDSLO_RDMARXSNDSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFRDMATXSNDSLO_RDMARXSNDSLO_SHIFT)
-#define I40E_GLPES_PFRDMATXWRSHI(_i) (0x00014204 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFRDMATXWRSHI_MAX_INDEX 15
-#define I40E_GLPES_PFRDMATXWRSHI_RDMARXWRSHI_SHIFT 0
-#define I40E_GLPES_PFRDMATXWRSHI_RDMARXWRSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFRDMATXWRSHI_RDMARXWRSHI_SHIFT)
-#define I40E_GLPES_PFRDMATXWRSLO(_i) (0x00014200 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFRDMATXWRSLO_MAX_INDEX 15
-#define I40E_GLPES_PFRDMATXWRSLO_RDMARXWRSLO_SHIFT 0
-#define I40E_GLPES_PFRDMATXWRSLO_RDMARXWRSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFRDMATXWRSLO_RDMARXWRSLO_SHIFT)
-#define I40E_GLPES_PFRDMAVBNDHI(_i) (0x00014804 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFRDMAVBNDHI_MAX_INDEX 15
-#define I40E_GLPES_PFRDMAVBNDHI_RDMAVBNDHI_SHIFT 0
-#define I40E_GLPES_PFRDMAVBNDHI_RDMAVBNDHI_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFRDMAVBNDHI_RDMAVBNDHI_SHIFT)
-#define I40E_GLPES_PFRDMAVBNDLO(_i) (0x00014800 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFRDMAVBNDLO_MAX_INDEX 15
-#define I40E_GLPES_PFRDMAVBNDLO_RDMAVBNDLO_SHIFT 0
-#define I40E_GLPES_PFRDMAVBNDLO_RDMAVBNDLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFRDMAVBNDLO_RDMAVBNDLO_SHIFT)
-#define I40E_GLPES_PFRDMAVINVHI(_i) (0x00014A04 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFRDMAVINVHI_MAX_INDEX 15
-#define I40E_GLPES_PFRDMAVINVHI_RDMAVINVHI_SHIFT 0
-#define I40E_GLPES_PFRDMAVINVHI_RDMAVINVHI_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFRDMAVINVHI_RDMAVINVHI_SHIFT)
-#define I40E_GLPES_PFRDMAVINVLO(_i) (0x00014A00 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFRDMAVINVLO_MAX_INDEX 15
-#define I40E_GLPES_PFRDMAVINVLO_RDMAVINVLO_SHIFT 0
-#define I40E_GLPES_PFRDMAVINVLO_RDMAVINVLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFRDMAVINVLO_RDMAVINVLO_SHIFT)
-#define I40E_GLPES_PFRXVLANERR(_i) (0x00010000 + ((_i) * 4)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFRXVLANERR_MAX_INDEX 15
-#define I40E_GLPES_PFRXVLANERR_RXVLANERR_SHIFT 0
-#define I40E_GLPES_PFRXVLANERR_RXVLANERR_MASK I40E_MASK(0xFFFFFF, I40E_GLPES_PFRXVLANERR_RXVLANERR_SHIFT)
-#define I40E_GLPES_PFTCPRTXSEG(_i) (0x00013600 + ((_i) * 4)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFTCPRTXSEG_MAX_INDEX 15
-#define I40E_GLPES_PFTCPRTXSEG_TCPRTXSEG_SHIFT 0
-#define I40E_GLPES_PFTCPRTXSEG_TCPRTXSEG_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFTCPRTXSEG_TCPRTXSEG_SHIFT)
-#define I40E_GLPES_PFTCPRXOPTERR(_i) (0x00013200 + ((_i) * 4)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFTCPRXOPTERR_MAX_INDEX 15
-#define I40E_GLPES_PFTCPRXOPTERR_TCPRXOPTERR_SHIFT 0
-#define I40E_GLPES_PFTCPRXOPTERR_TCPRXOPTERR_MASK I40E_MASK(0xFFFFFF, I40E_GLPES_PFTCPRXOPTERR_TCPRXOPTERR_SHIFT)
-#define I40E_GLPES_PFTCPRXPROTOERR(_i) (0x00013300 + ((_i) * 4)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFTCPRXPROTOERR_MAX_INDEX 15
-#define I40E_GLPES_PFTCPRXPROTOERR_TCPRXPROTOERR_SHIFT 0
-#define I40E_GLPES_PFTCPRXPROTOERR_TCPRXPROTOERR_MASK I40E_MASK(0xFFFFFF, I40E_GLPES_PFTCPRXPROTOERR_TCPRXPROTOERR_SHIFT)
-#define I40E_GLPES_PFTCPRXSEGSHI(_i) (0x00013004 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFTCPRXSEGSHI_MAX_INDEX 15
-#define I40E_GLPES_PFTCPRXSEGSHI_TCPRXSEGSHI_SHIFT 0
-#define I40E_GLPES_PFTCPRXSEGSHI_TCPRXSEGSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFTCPRXSEGSHI_TCPRXSEGSHI_SHIFT)
-#define I40E_GLPES_PFTCPRXSEGSLO(_i) (0x00013000 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFTCPRXSEGSLO_MAX_INDEX 15
-#define I40E_GLPES_PFTCPRXSEGSLO_TCPRXSEGSLO_SHIFT 0
-#define I40E_GLPES_PFTCPRXSEGSLO_TCPRXSEGSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFTCPRXSEGSLO_TCPRXSEGSLO_SHIFT)
-#define I40E_GLPES_PFTCPTXSEGHI(_i) (0x00013404 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFTCPTXSEGHI_MAX_INDEX 15
-#define I40E_GLPES_PFTCPTXSEGHI_TCPTXSEGHI_SHIFT 0
-#define I40E_GLPES_PFTCPTXSEGHI_TCPTXSEGHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFTCPTXSEGHI_TCPTXSEGHI_SHIFT)
-#define I40E_GLPES_PFTCPTXSEGLO(_i) (0x00013400 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFTCPTXSEGLO_MAX_INDEX 15
-#define I40E_GLPES_PFTCPTXSEGLO_TCPTXSEGLO_SHIFT 0
-#define I40E_GLPES_PFTCPTXSEGLO_TCPTXSEGLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFTCPTXSEGLO_TCPTXSEGLO_SHIFT)
-#define I40E_GLPES_PFUDPRXPKTSHI(_i) (0x00013804 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFUDPRXPKTSHI_MAX_INDEX 15
-#define I40E_GLPES_PFUDPRXPKTSHI_UDPRXPKTSHI_SHIFT 0
-#define I40E_GLPES_PFUDPRXPKTSHI_UDPRXPKTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFUDPRXPKTSHI_UDPRXPKTSHI_SHIFT)
-#define I40E_GLPES_PFUDPRXPKTSLO(_i) (0x00013800 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFUDPRXPKTSLO_MAX_INDEX 15
-#define I40E_GLPES_PFUDPRXPKTSLO_UDPRXPKTSLO_SHIFT 0
-#define I40E_GLPES_PFUDPRXPKTSLO_UDPRXPKTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFUDPRXPKTSLO_UDPRXPKTSLO_SHIFT)
-#define I40E_GLPES_PFUDPTXPKTSHI(_i) (0x00013A04 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFUDPTXPKTSHI_MAX_INDEX 15
-#define I40E_GLPES_PFUDPTXPKTSHI_UDPTXPKTSHI_SHIFT 0
-#define I40E_GLPES_PFUDPTXPKTSHI_UDPTXPKTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_PFUDPTXPKTSHI_UDPTXPKTSHI_SHIFT)
-#define I40E_GLPES_PFUDPTXPKTSLO(_i) (0x00013A00 + ((_i) * 8)) /* _i=0...15 */ /* Reset: PE_CORER */
-#define I40E_GLPES_PFUDPTXPKTSLO_MAX_INDEX 15
-#define I40E_GLPES_PFUDPTXPKTSLO_UDPTXPKTSLO_SHIFT 0
-#define I40E_GLPES_PFUDPTXPKTSLO_UDPTXPKTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_PFUDPTXPKTSLO_UDPTXPKTSLO_SHIFT)
-#define I40E_GLPES_RDMARXMULTFPDUSHI 0x0001E014 /* Reset: PE_CORER */
-#define I40E_GLPES_RDMARXMULTFPDUSHI_RDMARXMULTFPDUSHI_SHIFT 0
-#define I40E_GLPES_RDMARXMULTFPDUSHI_RDMARXMULTFPDUSHI_MASK I40E_MASK(0xFFFFFF, I40E_GLPES_RDMARXMULTFPDUSHI_RDMARXMULTFPDUSHI_SHIFT)
-#define I40E_GLPES_RDMARXMULTFPDUSLO 0x0001E010 /* Reset: PE_CORER */
-#define I40E_GLPES_RDMARXMULTFPDUSLO_RDMARXMULTFPDUSLO_SHIFT 0
-#define I40E_GLPES_RDMARXMULTFPDUSLO_RDMARXMULTFPDUSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_RDMARXMULTFPDUSLO_RDMARXMULTFPDUSLO_SHIFT)
-#define I40E_GLPES_RDMARXOOODDPHI 0x0001E01C /* Reset: PE_CORER */
-#define I40E_GLPES_RDMARXOOODDPHI_RDMARXOOODDPHI_SHIFT 0
-#define I40E_GLPES_RDMARXOOODDPHI_RDMARXOOODDPHI_MASK I40E_MASK(0xFFFFFF, I40E_GLPES_RDMARXOOODDPHI_RDMARXOOODDPHI_SHIFT)
-#define I40E_GLPES_RDMARXOOODDPLO 0x0001E018 /* Reset: PE_CORER */
-#define I40E_GLPES_RDMARXOOODDPLO_RDMARXOOODDPLO_SHIFT 0
-#define I40E_GLPES_RDMARXOOODDPLO_RDMARXOOODDPLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_RDMARXOOODDPLO_RDMARXOOODDPLO_SHIFT)
-#define I40E_GLPES_RDMARXOOONOMARK 0x0001E004 /* Reset: PE_CORER */
-#define I40E_GLPES_RDMARXOOONOMARK_RDMAOOONOMARK_SHIFT 0
-#define I40E_GLPES_RDMARXOOONOMARK_RDMAOOONOMARK_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_RDMARXOOONOMARK_RDMAOOONOMARK_SHIFT)
-#define I40E_GLPES_RDMARXUNALIGN 0x0001E000 /* Reset: PE_CORER */
-#define I40E_GLPES_RDMARXUNALIGN_RDMRXAUNALIGN_SHIFT 0
-#define I40E_GLPES_RDMARXUNALIGN_RDMRXAUNALIGN_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_RDMARXUNALIGN_RDMRXAUNALIGN_SHIFT)
-#define I40E_GLPES_TCPRXFOURHOLEHI 0x0001E044 /* Reset: PE_CORER */
-#define I40E_GLPES_TCPRXFOURHOLEHI_TCPRXFOURHOLEHI_SHIFT 0
-#define I40E_GLPES_TCPRXFOURHOLEHI_TCPRXFOURHOLEHI_MASK I40E_MASK(0xFFFFFF, I40E_GLPES_TCPRXFOURHOLEHI_TCPRXFOURHOLEHI_SHIFT)
-#define I40E_GLPES_TCPRXFOURHOLELO 0x0001E040 /* Reset: PE_CORER */
-#define I40E_GLPES_TCPRXFOURHOLELO_TCPRXFOURHOLELO_SHIFT 0
-#define I40E_GLPES_TCPRXFOURHOLELO_TCPRXFOURHOLELO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_TCPRXFOURHOLELO_TCPRXFOURHOLELO_SHIFT)
-#define I40E_GLPES_TCPRXONEHOLEHI 0x0001E02C /* Reset: PE_CORER */
-#define I40E_GLPES_TCPRXONEHOLEHI_TCPRXONEHOLEHI_SHIFT 0
-#define I40E_GLPES_TCPRXONEHOLEHI_TCPRXONEHOLEHI_MASK I40E_MASK(0xFFFFFF, I40E_GLPES_TCPRXONEHOLEHI_TCPRXONEHOLEHI_SHIFT)
-#define I40E_GLPES_TCPRXONEHOLELO 0x0001E028 /* Reset: PE_CORER */
-#define I40E_GLPES_TCPRXONEHOLELO_TCPRXONEHOLELO_SHIFT 0
-#define I40E_GLPES_TCPRXONEHOLELO_TCPRXONEHOLELO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_TCPRXONEHOLELO_TCPRXONEHOLELO_SHIFT)
-#define I40E_GLPES_TCPRXPUREACKHI 0x0001E024 /* Reset: PE_CORER */
-#define I40E_GLPES_TCPRXPUREACKHI_TCPRXPUREACKSHI_SHIFT 0
-#define I40E_GLPES_TCPRXPUREACKHI_TCPRXPUREACKSHI_MASK I40E_MASK(0xFFFFFF, I40E_GLPES_TCPRXPUREACKHI_TCPRXPUREACKSHI_SHIFT)
-#define I40E_GLPES_TCPRXPUREACKSLO 0x0001E020 /* Reset: PE_CORER */
-#define I40E_GLPES_TCPRXPUREACKSLO_TCPRXPUREACKLO_SHIFT 0
-#define I40E_GLPES_TCPRXPUREACKSLO_TCPRXPUREACKLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_TCPRXPUREACKSLO_TCPRXPUREACKLO_SHIFT)
-#define I40E_GLPES_TCPRXTHREEHOLEHI 0x0001E03C /* Reset: PE_CORER */
-#define I40E_GLPES_TCPRXTHREEHOLEHI_TCPRXTHREEHOLEHI_SHIFT 0
-#define I40E_GLPES_TCPRXTHREEHOLEHI_TCPRXTHREEHOLEHI_MASK I40E_MASK(0xFFFFFF, I40E_GLPES_TCPRXTHREEHOLEHI_TCPRXTHREEHOLEHI_SHIFT)
-#define I40E_GLPES_TCPRXTHREEHOLELO 0x0001E038 /* Reset: PE_CORER */
-#define I40E_GLPES_TCPRXTHREEHOLELO_TCPRXTHREEHOLELO_SHIFT 0
-#define I40E_GLPES_TCPRXTHREEHOLELO_TCPRXTHREEHOLELO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_TCPRXTHREEHOLELO_TCPRXTHREEHOLELO_SHIFT)
-#define I40E_GLPES_TCPRXTWOHOLEHI 0x0001E034 /* Reset: PE_CORER */
-#define I40E_GLPES_TCPRXTWOHOLEHI_TCPRXTWOHOLEHI_SHIFT 0
-#define I40E_GLPES_TCPRXTWOHOLEHI_TCPRXTWOHOLEHI_MASK I40E_MASK(0xFFFFFF, I40E_GLPES_TCPRXTWOHOLEHI_TCPRXTWOHOLEHI_SHIFT)
-#define I40E_GLPES_TCPRXTWOHOLELO 0x0001E030 /* Reset: PE_CORER */
-#define I40E_GLPES_TCPRXTWOHOLELO_TCPRXTWOHOLELO_SHIFT 0
-#define I40E_GLPES_TCPRXTWOHOLELO_TCPRXTWOHOLELO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_TCPRXTWOHOLELO_TCPRXTWOHOLELO_SHIFT)
-#define I40E_GLPES_TCPTXRETRANSFASTHI 0x0001E04C /* Reset: PE_CORER */
-#define I40E_GLPES_TCPTXRETRANSFASTHI_TCPTXRETRANSFASTHI_SHIFT 0
-#define I40E_GLPES_TCPTXRETRANSFASTHI_TCPTXRETRANSFASTHI_MASK I40E_MASK(0xFFFFFF, I40E_GLPES_TCPTXRETRANSFASTHI_TCPTXRETRANSFASTHI_SHIFT)
-#define I40E_GLPES_TCPTXRETRANSFASTLO 0x0001E048 /* Reset: PE_CORER */
-#define I40E_GLPES_TCPTXRETRANSFASTLO_TCPTXRETRANSFASTLO_SHIFT 0
-#define I40E_GLPES_TCPTXRETRANSFASTLO_TCPTXRETRANSFASTLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_TCPTXRETRANSFASTLO_TCPTXRETRANSFASTLO_SHIFT)
-#define I40E_GLPES_TCPTXTOUTSFASTHI 0x0001E054 /* Reset: PE_CORER */
-#define I40E_GLPES_TCPTXTOUTSFASTHI_TCPTXTOUTSFASTHI_SHIFT 0
-#define I40E_GLPES_TCPTXTOUTSFASTHI_TCPTXTOUTSFASTHI_MASK I40E_MASK(0xFFFFFF, I40E_GLPES_TCPTXTOUTSFASTHI_TCPTXTOUTSFASTHI_SHIFT)
-#define I40E_GLPES_TCPTXTOUTSFASTLO 0x0001E050 /* Reset: PE_CORER */
-#define I40E_GLPES_TCPTXTOUTSFASTLO_TCPTXTOUTSFASTLO_SHIFT 0
-#define I40E_GLPES_TCPTXTOUTSFASTLO_TCPTXTOUTSFASTLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_TCPTXTOUTSFASTLO_TCPTXTOUTSFASTLO_SHIFT)
-#define I40E_GLPES_TCPTXTOUTSHI 0x0001E05C /* Reset: PE_CORER */
-#define I40E_GLPES_TCPTXTOUTSHI_TCPTXTOUTSHI_SHIFT 0
-#define I40E_GLPES_TCPTXTOUTSHI_TCPTXTOUTSHI_MASK I40E_MASK(0xFFFFFF, I40E_GLPES_TCPTXTOUTSHI_TCPTXTOUTSHI_SHIFT)
-#define I40E_GLPES_TCPTXTOUTSLO 0x0001E058 /* Reset: PE_CORER */
-#define I40E_GLPES_TCPTXTOUTSLO_TCPTXTOUTSLO_SHIFT 0
-#define I40E_GLPES_TCPTXTOUTSLO_TCPTXTOUTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_TCPTXTOUTSLO_TCPTXTOUTSLO_SHIFT)
-#define I40E_GLPES_VFIP4RXDISCARD(_i) (0x00018600 + ((_i) * 4)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP4RXDISCARD_MAX_INDEX 31
-#define I40E_GLPES_VFIP4RXDISCARD_IP4RXDISCARD_SHIFT 0
-#define I40E_GLPES_VFIP4RXDISCARD_IP4RXDISCARD_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFIP4RXDISCARD_IP4RXDISCARD_SHIFT)
-#define I40E_GLPES_VFIP4RXFRAGSHI(_i) (0x00018804 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP4RXFRAGSHI_MAX_INDEX 31
-#define I40E_GLPES_VFIP4RXFRAGSHI_IP4RXFRAGSHI_SHIFT 0
-#define I40E_GLPES_VFIP4RXFRAGSHI_IP4RXFRAGSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFIP4RXFRAGSHI_IP4RXFRAGSHI_SHIFT)
-#define I40E_GLPES_VFIP4RXFRAGSLO(_i) (0x00018800 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP4RXFRAGSLO_MAX_INDEX 31
-#define I40E_GLPES_VFIP4RXFRAGSLO_IP4RXFRAGSLO_SHIFT 0
-#define I40E_GLPES_VFIP4RXFRAGSLO_IP4RXFRAGSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFIP4RXFRAGSLO_IP4RXFRAGSLO_SHIFT)
-#define I40E_GLPES_VFIP4RXMCOCTSHI(_i) (0x00018A04 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP4RXMCOCTSHI_MAX_INDEX 31
-#define I40E_GLPES_VFIP4RXMCOCTSHI_IP4RXMCOCTSHI_SHIFT 0
-#define I40E_GLPES_VFIP4RXMCOCTSHI_IP4RXMCOCTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFIP4RXMCOCTSHI_IP4RXMCOCTSHI_SHIFT)
-#define I40E_GLPES_VFIP4RXMCOCTSLO(_i) (0x00018A00 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP4RXMCOCTSLO_MAX_INDEX 31
-#define I40E_GLPES_VFIP4RXMCOCTSLO_IP4RXMCOCTSLO_SHIFT 0
-#define I40E_GLPES_VFIP4RXMCOCTSLO_IP4RXMCOCTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFIP4RXMCOCTSLO_IP4RXMCOCTSLO_SHIFT)
-#define I40E_GLPES_VFIP4RXMCPKTSHI(_i) (0x00018C04 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP4RXMCPKTSHI_MAX_INDEX 31
-#define I40E_GLPES_VFIP4RXMCPKTSHI_IP4RXMCPKTSHI_SHIFT 0
-#define I40E_GLPES_VFIP4RXMCPKTSHI_IP4RXMCPKTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFIP4RXMCPKTSHI_IP4RXMCPKTSHI_SHIFT)
-#define I40E_GLPES_VFIP4RXMCPKTSLO(_i) (0x00018C00 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP4RXMCPKTSLO_MAX_INDEX 31
-#define I40E_GLPES_VFIP4RXMCPKTSLO_IP4RXMCPKTSLO_SHIFT 0
-#define I40E_GLPES_VFIP4RXMCPKTSLO_IP4RXMCPKTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFIP4RXMCPKTSLO_IP4RXMCPKTSLO_SHIFT)
-#define I40E_GLPES_VFIP4RXOCTSHI(_i) (0x00018204 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP4RXOCTSHI_MAX_INDEX 31
-#define I40E_GLPES_VFIP4RXOCTSHI_IP4RXOCTSHI_SHIFT 0
-#define I40E_GLPES_VFIP4RXOCTSHI_IP4RXOCTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFIP4RXOCTSHI_IP4RXOCTSHI_SHIFT)
-#define I40E_GLPES_VFIP4RXOCTSLO(_i) (0x00018200 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP4RXOCTSLO_MAX_INDEX 31
-#define I40E_GLPES_VFIP4RXOCTSLO_IP4RXOCTSLO_SHIFT 0
-#define I40E_GLPES_VFIP4RXOCTSLO_IP4RXOCTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFIP4RXOCTSLO_IP4RXOCTSLO_SHIFT)
-#define I40E_GLPES_VFIP4RXPKTSHI(_i) (0x00018404 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP4RXPKTSHI_MAX_INDEX 31
-#define I40E_GLPES_VFIP4RXPKTSHI_IP4RXPKTSHI_SHIFT 0
-#define I40E_GLPES_VFIP4RXPKTSHI_IP4RXPKTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFIP4RXPKTSHI_IP4RXPKTSHI_SHIFT)
-#define I40E_GLPES_VFIP4RXPKTSLO(_i) (0x00018400 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP4RXPKTSLO_MAX_INDEX 31
-#define I40E_GLPES_VFIP4RXPKTSLO_IP4RXPKTSLO_SHIFT 0
-#define I40E_GLPES_VFIP4RXPKTSLO_IP4RXPKTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFIP4RXPKTSLO_IP4RXPKTSLO_SHIFT)
-#define I40E_GLPES_VFIP4RXTRUNC(_i) (0x00018700 + ((_i) * 4)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP4RXTRUNC_MAX_INDEX 31
-#define I40E_GLPES_VFIP4RXTRUNC_IP4RXTRUNC_SHIFT 0
-#define I40E_GLPES_VFIP4RXTRUNC_IP4RXTRUNC_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFIP4RXTRUNC_IP4RXTRUNC_SHIFT)
-#define I40E_GLPES_VFIP4TXFRAGSHI(_i) (0x00019E04 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP4TXFRAGSHI_MAX_INDEX 31
-#define I40E_GLPES_VFIP4TXFRAGSHI_IP4TXFRAGSHI_SHIFT 0
-#define I40E_GLPES_VFIP4TXFRAGSHI_IP4TXFRAGSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFIP4TXFRAGSHI_IP4TXFRAGSHI_SHIFT)
-#define I40E_GLPES_VFIP4TXFRAGSLO(_i) (0x00019E00 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP4TXFRAGSLO_MAX_INDEX 31
-#define I40E_GLPES_VFIP4TXFRAGSLO_IP4TXFRAGSLO_SHIFT 0
-#define I40E_GLPES_VFIP4TXFRAGSLO_IP4TXFRAGSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFIP4TXFRAGSLO_IP4TXFRAGSLO_SHIFT)
-#define I40E_GLPES_VFIP4TXMCOCTSHI(_i) (0x0001A004 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP4TXMCOCTSHI_MAX_INDEX 31
-#define I40E_GLPES_VFIP4TXMCOCTSHI_IP4TXMCOCTSHI_SHIFT 0
-#define I40E_GLPES_VFIP4TXMCOCTSHI_IP4TXMCOCTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFIP4TXMCOCTSHI_IP4TXMCOCTSHI_SHIFT)
-#define I40E_GLPES_VFIP4TXMCOCTSLO(_i) (0x0001A000 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP4TXMCOCTSLO_MAX_INDEX 31
-#define I40E_GLPES_VFIP4TXMCOCTSLO_IP4TXMCOCTSLO_SHIFT 0
-#define I40E_GLPES_VFIP4TXMCOCTSLO_IP4TXMCOCTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFIP4TXMCOCTSLO_IP4TXMCOCTSLO_SHIFT)
-#define I40E_GLPES_VFIP4TXMCPKTSHI(_i) (0x0001A204 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP4TXMCPKTSHI_MAX_INDEX 31
-#define I40E_GLPES_VFIP4TXMCPKTSHI_IP4TXMCPKTSHI_SHIFT 0
-#define I40E_GLPES_VFIP4TXMCPKTSHI_IP4TXMCPKTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFIP4TXMCPKTSHI_IP4TXMCPKTSHI_SHIFT)
-#define I40E_GLPES_VFIP4TXMCPKTSLO(_i) (0x0001A200 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP4TXMCPKTSLO_MAX_INDEX 31
-#define I40E_GLPES_VFIP4TXMCPKTSLO_IP4TXMCPKTSLO_SHIFT 0
-#define I40E_GLPES_VFIP4TXMCPKTSLO_IP4TXMCPKTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFIP4TXMCPKTSLO_IP4TXMCPKTSLO_SHIFT)
-#define I40E_GLPES_VFIP4TXNOROUTE(_i) (0x0001AE00 + ((_i) * 4)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP4TXNOROUTE_MAX_INDEX 31
-#define I40E_GLPES_VFIP4TXNOROUTE_IP4TXNOROUTE_SHIFT 0
-#define I40E_GLPES_VFIP4TXNOROUTE_IP4TXNOROUTE_MASK I40E_MASK(0xFFFFFF, I40E_GLPES_VFIP4TXNOROUTE_IP4TXNOROUTE_SHIFT)
-#define I40E_GLPES_VFIP4TXOCTSHI(_i) (0x00019A04 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP4TXOCTSHI_MAX_INDEX 31
-#define I40E_GLPES_VFIP4TXOCTSHI_IP4TXOCTSHI_SHIFT 0
-#define I40E_GLPES_VFIP4TXOCTSHI_IP4TXOCTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFIP4TXOCTSHI_IP4TXOCTSHI_SHIFT)
-#define I40E_GLPES_VFIP4TXOCTSLO(_i) (0x00019A00 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP4TXOCTSLO_MAX_INDEX 31
-#define I40E_GLPES_VFIP4TXOCTSLO_IP4TXOCTSLO_SHIFT 0
-#define I40E_GLPES_VFIP4TXOCTSLO_IP4TXOCTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFIP4TXOCTSLO_IP4TXOCTSLO_SHIFT)
-#define I40E_GLPES_VFIP4TXPKTSHI(_i) (0x00019C04 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP4TXPKTSHI_MAX_INDEX 31
-#define I40E_GLPES_VFIP4TXPKTSHI_IP4TXPKTSHI_SHIFT 0
-#define I40E_GLPES_VFIP4TXPKTSHI_IP4TXPKTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFIP4TXPKTSHI_IP4TXPKTSHI_SHIFT)
-#define I40E_GLPES_VFIP4TXPKTSLO(_i) (0x00019C00 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP4TXPKTSLO_MAX_INDEX 31
-#define I40E_GLPES_VFIP4TXPKTSLO_IP4TXPKTSLO_SHIFT 0
-#define I40E_GLPES_VFIP4TXPKTSLO_IP4TXPKTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFIP4TXPKTSLO_IP4TXPKTSLO_SHIFT)
-#define I40E_GLPES_VFIP6RXDISCARD(_i) (0x00019200 + ((_i) * 4)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP6RXDISCARD_MAX_INDEX 31
-#define I40E_GLPES_VFIP6RXDISCARD_IP6RXDISCARD_SHIFT 0
-#define I40E_GLPES_VFIP6RXDISCARD_IP6RXDISCARD_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFIP6RXDISCARD_IP6RXDISCARD_SHIFT)
-#define I40E_GLPES_VFIP6RXFRAGSHI(_i) (0x00019404 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP6RXFRAGSHI_MAX_INDEX 31
-#define I40E_GLPES_VFIP6RXFRAGSHI_IP6RXFRAGSHI_SHIFT 0
-#define I40E_GLPES_VFIP6RXFRAGSHI_IP6RXFRAGSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFIP6RXFRAGSHI_IP6RXFRAGSHI_SHIFT)
-#define I40E_GLPES_VFIP6RXFRAGSLO(_i) (0x00019400 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP6RXFRAGSLO_MAX_INDEX 31
-#define I40E_GLPES_VFIP6RXFRAGSLO_IP6RXFRAGSLO_SHIFT 0
-#define I40E_GLPES_VFIP6RXFRAGSLO_IP6RXFRAGSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFIP6RXFRAGSLO_IP6RXFRAGSLO_SHIFT)
-#define I40E_GLPES_VFIP6RXMCOCTSHI(_i) (0x00019604 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP6RXMCOCTSHI_MAX_INDEX 31
-#define I40E_GLPES_VFIP6RXMCOCTSHI_IP6RXMCOCTSHI_SHIFT 0
-#define I40E_GLPES_VFIP6RXMCOCTSHI_IP6RXMCOCTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFIP6RXMCOCTSHI_IP6RXMCOCTSHI_SHIFT)
-#define I40E_GLPES_VFIP6RXMCOCTSLO(_i) (0x00019600 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP6RXMCOCTSLO_MAX_INDEX 31
-#define I40E_GLPES_VFIP6RXMCOCTSLO_IP6RXMCOCTSLO_SHIFT 0
-#define I40E_GLPES_VFIP6RXMCOCTSLO_IP6RXMCOCTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFIP6RXMCOCTSLO_IP6RXMCOCTSLO_SHIFT)
-#define I40E_GLPES_VFIP6RXMCPKTSHI(_i) (0x00019804 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP6RXMCPKTSHI_MAX_INDEX 31
-#define I40E_GLPES_VFIP6RXMCPKTSHI_IP6RXMCPKTSHI_SHIFT 0
-#define I40E_GLPES_VFIP6RXMCPKTSHI_IP6RXMCPKTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFIP6RXMCPKTSHI_IP6RXMCPKTSHI_SHIFT)
-#define I40E_GLPES_VFIP6RXMCPKTSLO(_i) (0x00019800 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP6RXMCPKTSLO_MAX_INDEX 31
-#define I40E_GLPES_VFIP6RXMCPKTSLO_IP6RXMCPKTSLO_SHIFT 0
-#define I40E_GLPES_VFIP6RXMCPKTSLO_IP6RXMCPKTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFIP6RXMCPKTSLO_IP6RXMCPKTSLO_SHIFT)
-#define I40E_GLPES_VFIP6RXOCTSHI(_i) (0x00018E04 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP6RXOCTSHI_MAX_INDEX 31
-#define I40E_GLPES_VFIP6RXOCTSHI_IP6RXOCTSHI_SHIFT 0
-#define I40E_GLPES_VFIP6RXOCTSHI_IP6RXOCTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFIP6RXOCTSHI_IP6RXOCTSHI_SHIFT)
-#define I40E_GLPES_VFIP6RXOCTSLO(_i) (0x00018E00 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP6RXOCTSLO_MAX_INDEX 31
-#define I40E_GLPES_VFIP6RXOCTSLO_IP6RXOCTSLO_SHIFT 0
-#define I40E_GLPES_VFIP6RXOCTSLO_IP6RXOCTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFIP6RXOCTSLO_IP6RXOCTSLO_SHIFT)
-#define I40E_GLPES_VFIP6RXPKTSHI(_i) (0x00019004 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP6RXPKTSHI_MAX_INDEX 31
-#define I40E_GLPES_VFIP6RXPKTSHI_IP6RXPKTSHI_SHIFT 0
-#define I40E_GLPES_VFIP6RXPKTSHI_IP6RXPKTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFIP6RXPKTSHI_IP6RXPKTSHI_SHIFT)
-#define I40E_GLPES_VFIP6RXPKTSLO(_i) (0x00019000 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP6RXPKTSLO_MAX_INDEX 31
-#define I40E_GLPES_VFIP6RXPKTSLO_IP6RXPKTSLO_SHIFT 0
-#define I40E_GLPES_VFIP6RXPKTSLO_IP6RXPKTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFIP6RXPKTSLO_IP6RXPKTSLO_SHIFT)
-#define I40E_GLPES_VFIP6RXTRUNC(_i) (0x00019300 + ((_i) * 4)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP6RXTRUNC_MAX_INDEX 31
-#define I40E_GLPES_VFIP6RXTRUNC_IP6RXTRUNC_SHIFT 0
-#define I40E_GLPES_VFIP6RXTRUNC_IP6RXTRUNC_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFIP6RXTRUNC_IP6RXTRUNC_SHIFT)
-#define I40E_GLPES_VFIP6TXFRAGSHI(_i) (0x0001A804 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP6TXFRAGSHI_MAX_INDEX 31
-#define I40E_GLPES_VFIP6TXFRAGSHI_IP6TXFRAGSHI_SHIFT 0
-#define I40E_GLPES_VFIP6TXFRAGSHI_IP6TXFRAGSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFIP6TXFRAGSHI_IP6TXFRAGSHI_SHIFT)
-#define I40E_GLPES_VFIP6TXFRAGSLO(_i) (0x0001A800 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP6TXFRAGSLO_MAX_INDEX 31
-#define I40E_GLPES_VFIP6TXFRAGSLO_IP6TXFRAGSLO_SHIFT 0
-#define I40E_GLPES_VFIP6TXFRAGSLO_IP6TXFRAGSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFIP6TXFRAGSLO_IP6TXFRAGSLO_SHIFT)
-#define I40E_GLPES_VFIP6TXMCOCTSHI(_i) (0x0001AA04 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP6TXMCOCTSHI_MAX_INDEX 31
-#define I40E_GLPES_VFIP6TXMCOCTSHI_IP6TXMCOCTSHI_SHIFT 0
-#define I40E_GLPES_VFIP6TXMCOCTSHI_IP6TXMCOCTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFIP6TXMCOCTSHI_IP6TXMCOCTSHI_SHIFT)
-#define I40E_GLPES_VFIP6TXMCOCTSLO(_i) (0x0001AA00 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP6TXMCOCTSLO_MAX_INDEX 31
-#define I40E_GLPES_VFIP6TXMCOCTSLO_IP6TXMCOCTSLO_SHIFT 0
-#define I40E_GLPES_VFIP6TXMCOCTSLO_IP6TXMCOCTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFIP6TXMCOCTSLO_IP6TXMCOCTSLO_SHIFT)
-#define I40E_GLPES_VFIP6TXMCPKTSHI(_i) (0x0001AC04 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP6TXMCPKTSHI_MAX_INDEX 31
-#define I40E_GLPES_VFIP6TXMCPKTSHI_IP6TXMCPKTSHI_SHIFT 0
-#define I40E_GLPES_VFIP6TXMCPKTSHI_IP6TXMCPKTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFIP6TXMCPKTSHI_IP6TXMCPKTSHI_SHIFT)
-#define I40E_GLPES_VFIP6TXMCPKTSLO(_i) (0x0001AC00 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP6TXMCPKTSLO_MAX_INDEX 31
-#define I40E_GLPES_VFIP6TXMCPKTSLO_IP6TXMCPKTSLO_SHIFT 0
-#define I40E_GLPES_VFIP6TXMCPKTSLO_IP6TXMCPKTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFIP6TXMCPKTSLO_IP6TXMCPKTSLO_SHIFT)
-#define I40E_GLPES_VFIP6TXNOROUTE(_i) (0x0001AF00 + ((_i) * 4)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP6TXNOROUTE_MAX_INDEX 31
-#define I40E_GLPES_VFIP6TXNOROUTE_IP6TXNOROUTE_SHIFT 0
-#define I40E_GLPES_VFIP6TXNOROUTE_IP6TXNOROUTE_MASK I40E_MASK(0xFFFFFF, I40E_GLPES_VFIP6TXNOROUTE_IP6TXNOROUTE_SHIFT)
-#define I40E_GLPES_VFIP6TXOCTSHI(_i) (0x0001A404 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP6TXOCTSHI_MAX_INDEX 31
-#define I40E_GLPES_VFIP6TXOCTSHI_IP6TXOCTSHI_SHIFT 0
-#define I40E_GLPES_VFIP6TXOCTSHI_IP6TXOCTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFIP6TXOCTSHI_IP6TXOCTSHI_SHIFT)
-#define I40E_GLPES_VFIP6TXOCTSLO(_i) (0x0001A400 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP6TXOCTSLO_MAX_INDEX 31
-#define I40E_GLPES_VFIP6TXOCTSLO_IP6TXOCTSLO_SHIFT 0
-#define I40E_GLPES_VFIP6TXOCTSLO_IP6TXOCTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFIP6TXOCTSLO_IP6TXOCTSLO_SHIFT)
-#define I40E_GLPES_VFIP6TXPKTSHI(_i) (0x0001A604 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP6TXPKTSHI_MAX_INDEX 31
-#define I40E_GLPES_VFIP6TXPKTSHI_IP6TXPKTSHI_SHIFT 0
-#define I40E_GLPES_VFIP6TXPKTSHI_IP6TXPKTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFIP6TXPKTSHI_IP6TXPKTSHI_SHIFT)
-#define I40E_GLPES_VFIP6TXPKTSLO(_i) (0x0001A600 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFIP6TXPKTSLO_MAX_INDEX 31
-#define I40E_GLPES_VFIP6TXPKTSLO_IP6TXPKTSLO_SHIFT 0
-#define I40E_GLPES_VFIP6TXPKTSLO_IP6TXPKTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFIP6TXPKTSLO_IP6TXPKTSLO_SHIFT)
-#define I40E_GLPES_VFRDMARXRDSHI(_i) (0x0001BE04 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFRDMARXRDSHI_MAX_INDEX 31
-#define I40E_GLPES_VFRDMARXRDSHI_RDMARXRDSHI_SHIFT 0
-#define I40E_GLPES_VFRDMARXRDSHI_RDMARXRDSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFRDMARXRDSHI_RDMARXRDSHI_SHIFT)
-#define I40E_GLPES_VFRDMARXRDSLO(_i) (0x0001BE00 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFRDMARXRDSLO_MAX_INDEX 31
-#define I40E_GLPES_VFRDMARXRDSLO_RDMARXRDSLO_SHIFT 0
-#define I40E_GLPES_VFRDMARXRDSLO_RDMARXRDSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFRDMARXRDSLO_RDMARXRDSLO_SHIFT)
-#define I40E_GLPES_VFRDMARXSNDSHI(_i) (0x0001C004 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFRDMARXSNDSHI_MAX_INDEX 31
-#define I40E_GLPES_VFRDMARXSNDSHI_RDMARXSNDSHI_SHIFT 0
-#define I40E_GLPES_VFRDMARXSNDSHI_RDMARXSNDSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFRDMARXSNDSHI_RDMARXSNDSHI_SHIFT)
-#define I40E_GLPES_VFRDMARXSNDSLO(_i) (0x0001C000 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFRDMARXSNDSLO_MAX_INDEX 31
-#define I40E_GLPES_VFRDMARXSNDSLO_RDMARXSNDSLO_SHIFT 0
-#define I40E_GLPES_VFRDMARXSNDSLO_RDMARXSNDSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFRDMARXSNDSLO_RDMARXSNDSLO_SHIFT)
-#define I40E_GLPES_VFRDMARXWRSHI(_i) (0x0001BC04 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFRDMARXWRSHI_MAX_INDEX 31
-#define I40E_GLPES_VFRDMARXWRSHI_RDMARXWRSHI_SHIFT 0
-#define I40E_GLPES_VFRDMARXWRSHI_RDMARXWRSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFRDMARXWRSHI_RDMARXWRSHI_SHIFT)
-#define I40E_GLPES_VFRDMARXWRSLO(_i) (0x0001BC00 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFRDMARXWRSLO_MAX_INDEX 31
-#define I40E_GLPES_VFRDMARXWRSLO_RDMARXWRSLO_SHIFT 0
-#define I40E_GLPES_VFRDMARXWRSLO_RDMARXWRSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFRDMARXWRSLO_RDMARXWRSLO_SHIFT)
-#define I40E_GLPES_VFRDMATXRDSHI(_i) (0x0001C404 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFRDMATXRDSHI_MAX_INDEX 31
-#define I40E_GLPES_VFRDMATXRDSHI_RDMARXRDSHI_SHIFT 0
-#define I40E_GLPES_VFRDMATXRDSHI_RDMARXRDSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFRDMATXRDSHI_RDMARXRDSHI_SHIFT)
-#define I40E_GLPES_VFRDMATXRDSLO(_i) (0x0001C400 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFRDMATXRDSLO_MAX_INDEX 31
-#define I40E_GLPES_VFRDMATXRDSLO_RDMARXRDSLO_SHIFT 0
-#define I40E_GLPES_VFRDMATXRDSLO_RDMARXRDSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFRDMATXRDSLO_RDMARXRDSLO_SHIFT)
-#define I40E_GLPES_VFRDMATXSNDSHI(_i) (0x0001C604 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFRDMATXSNDSHI_MAX_INDEX 31
-#define I40E_GLPES_VFRDMATXSNDSHI_RDMARXSNDSHI_SHIFT 0
-#define I40E_GLPES_VFRDMATXSNDSHI_RDMARXSNDSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFRDMATXSNDSHI_RDMARXSNDSHI_SHIFT)
-#define I40E_GLPES_VFRDMATXSNDSLO(_i) (0x0001C600 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFRDMATXSNDSLO_MAX_INDEX 31
-#define I40E_GLPES_VFRDMATXSNDSLO_RDMARXSNDSLO_SHIFT 0
-#define I40E_GLPES_VFRDMATXSNDSLO_RDMARXSNDSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFRDMATXSNDSLO_RDMARXSNDSLO_SHIFT)
-#define I40E_GLPES_VFRDMATXWRSHI(_i) (0x0001C204 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFRDMATXWRSHI_MAX_INDEX 31
-#define I40E_GLPES_VFRDMATXWRSHI_RDMARXWRSHI_SHIFT 0
-#define I40E_GLPES_VFRDMATXWRSHI_RDMARXWRSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFRDMATXWRSHI_RDMARXWRSHI_SHIFT)
-#define I40E_GLPES_VFRDMATXWRSLO(_i) (0x0001C200 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFRDMATXWRSLO_MAX_INDEX 31
-#define I40E_GLPES_VFRDMATXWRSLO_RDMARXWRSLO_SHIFT 0
-#define I40E_GLPES_VFRDMATXWRSLO_RDMARXWRSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFRDMATXWRSLO_RDMARXWRSLO_SHIFT)
-#define I40E_GLPES_VFRDMAVBNDHI(_i) (0x0001C804 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFRDMAVBNDHI_MAX_INDEX 31
-#define I40E_GLPES_VFRDMAVBNDHI_RDMAVBNDHI_SHIFT 0
-#define I40E_GLPES_VFRDMAVBNDHI_RDMAVBNDHI_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFRDMAVBNDHI_RDMAVBNDHI_SHIFT)
-#define I40E_GLPES_VFRDMAVBNDLO(_i) (0x0001C800 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFRDMAVBNDLO_MAX_INDEX 31
-#define I40E_GLPES_VFRDMAVBNDLO_RDMAVBNDLO_SHIFT 0
-#define I40E_GLPES_VFRDMAVBNDLO_RDMAVBNDLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFRDMAVBNDLO_RDMAVBNDLO_SHIFT)
-#define I40E_GLPES_VFRDMAVINVHI(_i) (0x0001CA04 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFRDMAVINVHI_MAX_INDEX 31
-#define I40E_GLPES_VFRDMAVINVHI_RDMAVINVHI_SHIFT 0
-#define I40E_GLPES_VFRDMAVINVHI_RDMAVINVHI_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFRDMAVINVHI_RDMAVINVHI_SHIFT)
-#define I40E_GLPES_VFRDMAVINVLO(_i) (0x0001CA00 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFRDMAVINVLO_MAX_INDEX 31
-#define I40E_GLPES_VFRDMAVINVLO_RDMAVINVLO_SHIFT 0
-#define I40E_GLPES_VFRDMAVINVLO_RDMAVINVLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFRDMAVINVLO_RDMAVINVLO_SHIFT)
-#define I40E_GLPES_VFRXVLANERR(_i) (0x00018000 + ((_i) * 4)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFRXVLANERR_MAX_INDEX 31
-#define I40E_GLPES_VFRXVLANERR_RXVLANERR_SHIFT 0
-#define I40E_GLPES_VFRXVLANERR_RXVLANERR_MASK I40E_MASK(0xFFFFFF, I40E_GLPES_VFRXVLANERR_RXVLANERR_SHIFT)
-#define I40E_GLPES_VFTCPRTXSEG(_i) (0x0001B600 + ((_i) * 4)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFTCPRTXSEG_MAX_INDEX 31
-#define I40E_GLPES_VFTCPRTXSEG_TCPRTXSEG_SHIFT 0
-#define I40E_GLPES_VFTCPRTXSEG_TCPRTXSEG_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFTCPRTXSEG_TCPRTXSEG_SHIFT)
-#define I40E_GLPES_VFTCPRXOPTERR(_i) (0x0001B200 + ((_i) * 4)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFTCPRXOPTERR_MAX_INDEX 31
-#define I40E_GLPES_VFTCPRXOPTERR_TCPRXOPTERR_SHIFT 0
-#define I40E_GLPES_VFTCPRXOPTERR_TCPRXOPTERR_MASK I40E_MASK(0xFFFFFF, I40E_GLPES_VFTCPRXOPTERR_TCPRXOPTERR_SHIFT)
-#define I40E_GLPES_VFTCPRXPROTOERR(_i) (0x0001B300 + ((_i) * 4)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFTCPRXPROTOERR_MAX_INDEX 31
-#define I40E_GLPES_VFTCPRXPROTOERR_TCPRXPROTOERR_SHIFT 0
-#define I40E_GLPES_VFTCPRXPROTOERR_TCPRXPROTOERR_MASK I40E_MASK(0xFFFFFF, I40E_GLPES_VFTCPRXPROTOERR_TCPRXPROTOERR_SHIFT)
-#define I40E_GLPES_VFTCPRXSEGSHI(_i) (0x0001B004 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFTCPRXSEGSHI_MAX_INDEX 31
-#define I40E_GLPES_VFTCPRXSEGSHI_TCPRXSEGSHI_SHIFT 0
-#define I40E_GLPES_VFTCPRXSEGSHI_TCPRXSEGSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFTCPRXSEGSHI_TCPRXSEGSHI_SHIFT)
-#define I40E_GLPES_VFTCPRXSEGSLO(_i) (0x0001B000 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFTCPRXSEGSLO_MAX_INDEX 31
-#define I40E_GLPES_VFTCPRXSEGSLO_TCPRXSEGSLO_SHIFT 0
-#define I40E_GLPES_VFTCPRXSEGSLO_TCPRXSEGSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFTCPRXSEGSLO_TCPRXSEGSLO_SHIFT)
-#define I40E_GLPES_VFTCPTXSEGHI(_i) (0x0001B404 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFTCPTXSEGHI_MAX_INDEX 31
-#define I40E_GLPES_VFTCPTXSEGHI_TCPTXSEGHI_SHIFT 0
-#define I40E_GLPES_VFTCPTXSEGHI_TCPTXSEGHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFTCPTXSEGHI_TCPTXSEGHI_SHIFT)
-#define I40E_GLPES_VFTCPTXSEGLO(_i) (0x0001B400 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFTCPTXSEGLO_MAX_INDEX 31
-#define I40E_GLPES_VFTCPTXSEGLO_TCPTXSEGLO_SHIFT 0
-#define I40E_GLPES_VFTCPTXSEGLO_TCPTXSEGLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFTCPTXSEGLO_TCPTXSEGLO_SHIFT)
-#define I40E_GLPES_VFUDPRXPKTSHI(_i) (0x0001B804 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFUDPRXPKTSHI_MAX_INDEX 31
-#define I40E_GLPES_VFUDPRXPKTSHI_UDPRXPKTSHI_SHIFT 0
-#define I40E_GLPES_VFUDPRXPKTSHI_UDPRXPKTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFUDPRXPKTSHI_UDPRXPKTSHI_SHIFT)
-#define I40E_GLPES_VFUDPRXPKTSLO(_i) (0x0001B800 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFUDPRXPKTSLO_MAX_INDEX 31
-#define I40E_GLPES_VFUDPRXPKTSLO_UDPRXPKTSLO_SHIFT 0
-#define I40E_GLPES_VFUDPRXPKTSLO_UDPRXPKTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFUDPRXPKTSLO_UDPRXPKTSLO_SHIFT)
-#define I40E_GLPES_VFUDPTXPKTSHI(_i) (0x0001BA04 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFUDPTXPKTSHI_MAX_INDEX 31
-#define I40E_GLPES_VFUDPTXPKTSHI_UDPTXPKTSHI_SHIFT 0
-#define I40E_GLPES_VFUDPTXPKTSHI_UDPTXPKTSHI_MASK I40E_MASK(0xFFFF, I40E_GLPES_VFUDPTXPKTSHI_UDPTXPKTSHI_SHIFT)
-#define I40E_GLPES_VFUDPTXPKTSLO(_i) (0x0001BA00 + ((_i) * 8)) /* _i=0...31 */ /* Reset: PE_CORER */
-#define I40E_GLPES_VFUDPTXPKTSLO_MAX_INDEX 31
-#define I40E_GLPES_VFUDPTXPKTSLO_UDPTXPKTSLO_SHIFT 0
-#define I40E_GLPES_VFUDPTXPKTSLO_UDPTXPKTSLO_MASK I40E_MASK(0xFFFFFFFF, I40E_GLPES_VFUDPTXPKTSLO_UDPTXPKTSLO_SHIFT)
-#define I40E_GLGEN_PME_TO 0x000B81BC /* Reset: POR */
-#define I40E_GLGEN_PME_TO_PME_TO_FOR_PE_SHIFT 0
-#define I40E_GLGEN_PME_TO_PME_TO_FOR_PE_MASK I40E_MASK(0x1, I40E_GLGEN_PME_TO_PME_TO_FOR_PE_SHIFT)
-#define I40E_GLQF_APBVT(_i) (0x00260000 + ((_i) * 4)) /* _i=0...2047 */ /* Reset: CORER */
-#define I40E_GLQF_APBVT_MAX_INDEX 2047
-#define I40E_GLQF_APBVT_APBVT_SHIFT 0
-#define I40E_GLQF_APBVT_APBVT_MASK I40E_MASK(0xFFFFFFFF, I40E_GLQF_APBVT_APBVT_SHIFT)
-#define I40E_GLQF_FD_PCTYPES(_i) (0x00268000 + ((_i) * 4)) /* _i=0...63 */ /* Reset: POR */
-#define I40E_GLQF_FD_PCTYPES_MAX_INDEX 63
-#define I40E_GLQF_FD_PCTYPES_FD_PCTYPE_SHIFT 0
-#define I40E_GLQF_FD_PCTYPES_FD_PCTYPE_MASK I40E_MASK(0x3F, I40E_GLQF_FD_PCTYPES_FD_PCTYPE_SHIFT)
-#define I40E_GLQF_FD_MSK(_i, _j) (0x00267200 + ((_i) * 4 + (_j) * 8)) /* _i=0...1, _j=0...63 */ /* Reset: CORER */
-#define I40E_GLQF_FD_MSK_MAX_INDEX 1
-#define I40E_GLQF_FD_MSK_MASK_SHIFT 0
-#define I40E_GLQF_FD_MSK_MASK_MASK I40E_MASK(0xFFFF, I40E_GLQF_FD_MSK_MASK_SHIFT)
-#define I40E_GLQF_FD_MSK_OFFSET_SHIFT 16
-#define I40E_GLQF_FD_MSK_OFFSET_MASK I40E_MASK(0x3F, I40E_GLQF_FD_MSK_OFFSET_SHIFT)
 #define I40E_GLQF_HASH_INSET(_i, _j) (0x00267600 + ((_i) * 4 + (_j) * 8)) /* _i=0...1, _j=0...63 */ /* Reset: CORER */
-#define I40E_GLQF_HASH_INSET_MAX_INDEX 1
-#define I40E_GLQF_HASH_INSET_INSET_SHIFT 0
-#define I40E_GLQF_HASH_INSET_INSET_MASK I40E_MASK(0xFFFFFFFF, I40E_GLQF_HASH_INSET_INSET_SHIFT)
-#define I40E_GLQF_HASH_MSK(_i, _j) (0x00267A00 + ((_i) * 4 + (_j) * 8)) /* _i=0...1, _j=0...63 */ /* Reset: CORER */
-#define I40E_GLQF_HASH_MSK_MAX_INDEX 1
-#define I40E_GLQF_HASH_MSK_MASK_SHIFT 0
-#define I40E_GLQF_HASH_MSK_MASK_MASK I40E_MASK(0xFFFF, I40E_GLQF_HASH_MSK_MASK_SHIFT)
-#define I40E_GLQF_HASH_MSK_OFFSET_SHIFT 16
-#define I40E_GLQF_HASH_MSK_OFFSET_MASK I40E_MASK(0x3F, I40E_GLQF_HASH_MSK_OFFSET_SHIFT)
 #define I40E_GLQF_ORT(_i) (0x00268900 + ((_i) * 4)) /* _i=0...63 */ /* Reset: CORER */
-#define I40E_GLQF_ORT_MAX_INDEX 63
 #define I40E_GLQF_ORT_PIT_INDX_SHIFT 0
 #define I40E_GLQF_ORT_PIT_INDX_MASK I40E_MASK(0x1F, I40E_GLQF_ORT_PIT_INDX_SHIFT)
 #define I40E_GLQF_ORT_FIELD_CNT_SHIFT 5
 #define I40E_GLQF_ORT_FIELD_CNT_MASK I40E_MASK(0x3, I40E_GLQF_ORT_FIELD_CNT_SHIFT)
 #define I40E_GLQF_ORT_FLX_PAYLOAD_SHIFT 7
 #define I40E_GLQF_ORT_FLX_PAYLOAD_MASK I40E_MASK(0x1, I40E_GLQF_ORT_FLX_PAYLOAD_SHIFT)
-#define I40E_GLQF_PIT(_i) (0x00268C80 + ((_i) * 4)) /* _i=0...23 */ /* Reset: CORER */
-#define I40E_GLQF_PIT_MAX_INDEX 23
-#define I40E_GLQF_PIT_SOURCE_OFF_SHIFT 0
-#define I40E_GLQF_PIT_SOURCE_OFF_MASK I40E_MASK(0x1F, I40E_GLQF_PIT_SOURCE_OFF_SHIFT)
-#define I40E_GLQF_PIT_FSIZE_SHIFT 5
-#define I40E_GLQF_PIT_FSIZE_MASK I40E_MASK(0x1F, I40E_GLQF_PIT_FSIZE_SHIFT)
-#define I40E_GLQF_PIT_DEST_OFF_SHIFT 10
-#define I40E_GLQF_PIT_DEST_OFF_MASK I40E_MASK(0x3F, I40E_GLQF_PIT_DEST_OFF_SHIFT)
 #define I40E_GLQF_FDEVICTENA(_i) (0x00270384 + ((_i) * 4)) /* _i=0...1 */ /* Reset: CORER */
-#define I40E_GLQF_FDEVICTENA_MAX_INDEX 1
-#define I40E_GLQF_FDEVICTENA_GLQF_FDEVICTENA_SHIFT 0
-#define I40E_GLQF_FDEVICTENA_GLQF_FDEVICTENA_MASK I40E_MASK(0xFFFFFFFF, I40E_GLQF_FDEVICTENA_GLQF_FDEVICTENA_SHIFT)
-#define I40E_GLQF_FDEVICTFLAG 0x00270280 /* Reset: CORER */
-#define I40E_GLQF_FDEVICTFLAG_TX_FLAGS_SHIFT 0
-#define I40E_GLQF_FDEVICTFLAG_TX_FLAGS_MASK I40E_MASK(0xFF, I40E_GLQF_FDEVICTFLAG_TX_FLAGS_SHIFT)
-#define I40E_GLQF_FDEVICTFLAG_RX_FLAGS_SHIFT 8
-#define I40E_GLQF_FDEVICTFLAG_RX_FLAGS_MASK I40E_MASK(0xFF, I40E_GLQF_FDEVICTFLAG_RX_FLAGS_SHIFT)
-#define I40E_PFQF_CTL_2 0x00270300 /* Reset: CORER */
-#define I40E_PFQF_CTL_2_PEHSIZE_SHIFT 0
-#define I40E_PFQF_CTL_2_PEHSIZE_MASK I40E_MASK(0x1F, I40E_PFQF_CTL_2_PEHSIZE_SHIFT)
-#define I40E_PFQF_CTL_2_PEDSIZE_SHIFT 5
-#define I40E_PFQF_CTL_2_PEDSIZE_MASK I40E_MASK(0x1F, I40E_PFQF_CTL_2_PEDSIZE_SHIFT)
 /* Redefined for X722 family */
-#define I40E_X722_PFQF_HLUT(_i) (0x00240000 + ((_i) * 128)) /* _i=0...127 */ /* Reset: CORER */
-#define I40E_X722_PFQF_HLUT_MAX_INDEX 127
-#define I40E_X722_PFQF_HLUT_LUT0_SHIFT 0
-#define I40E_X722_PFQF_HLUT_LUT0_MASK I40E_MASK(0x7F, I40E_X722_PFQF_HLUT_LUT0_SHIFT)
-#define I40E_X722_PFQF_HLUT_LUT1_SHIFT 8
-#define I40E_X722_PFQF_HLUT_LUT1_MASK I40E_MASK(0x7F, I40E_X722_PFQF_HLUT_LUT1_SHIFT)
-#define I40E_X722_PFQF_HLUT_LUT2_SHIFT 16
-#define I40E_X722_PFQF_HLUT_LUT2_MASK I40E_MASK(0x7F, I40E_X722_PFQF_HLUT_LUT2_SHIFT)
-#define I40E_X722_PFQF_HLUT_LUT3_SHIFT 24
-#define I40E_X722_PFQF_HLUT_LUT3_MASK I40E_MASK(0x7F, I40E_X722_PFQF_HLUT_LUT3_SHIFT)
-#define I40E_PFQF_HREGION(_i) (0x00245400 + ((_i) * 128)) /* _i=0...7 */ /* Reset: CORER */
-#define I40E_PFQF_HREGION_MAX_INDEX 7
-#define I40E_PFQF_HREGION_OVERRIDE_ENA_0_SHIFT 0
-#define I40E_PFQF_HREGION_OVERRIDE_ENA_0_MASK I40E_MASK(0x1, I40E_PFQF_HREGION_OVERRIDE_ENA_0_SHIFT)
-#define I40E_PFQF_HREGION_REGION_0_SHIFT 1
-#define I40E_PFQF_HREGION_REGION_0_MASK I40E_MASK(0x7, I40E_PFQF_HREGION_REGION_0_SHIFT)
-#define I40E_PFQF_HREGION_OVERRIDE_ENA_1_SHIFT 4
-#define I40E_PFQF_HREGION_OVERRIDE_ENA_1_MASK I40E_MASK(0x1, I40E_PFQF_HREGION_OVERRIDE_ENA_1_SHIFT)
-#define I40E_PFQF_HREGION_REGION_1_SHIFT 5
-#define I40E_PFQF_HREGION_REGION_1_MASK I40E_MASK(0x7, I40E_PFQF_HREGION_REGION_1_SHIFT)
-#define I40E_PFQF_HREGION_OVERRIDE_ENA_2_SHIFT 8
-#define I40E_PFQF_HREGION_OVERRIDE_ENA_2_MASK I40E_MASK(0x1, I40E_PFQF_HREGION_OVERRIDE_ENA_2_SHIFT)
-#define I40E_PFQF_HREGION_REGION_2_SHIFT 9
-#define I40E_PFQF_HREGION_REGION_2_MASK I40E_MASK(0x7, I40E_PFQF_HREGION_REGION_2_SHIFT)
-#define I40E_PFQF_HREGION_OVERRIDE_ENA_3_SHIFT 12
-#define I40E_PFQF_HREGION_OVERRIDE_ENA_3_MASK I40E_MASK(0x1, I40E_PFQF_HREGION_OVERRIDE_ENA_3_SHIFT)
-#define I40E_PFQF_HREGION_REGION_3_SHIFT 13
-#define I40E_PFQF_HREGION_REGION_3_MASK I40E_MASK(0x7, I40E_PFQF_HREGION_REGION_3_SHIFT)
-#define I40E_PFQF_HREGION_OVERRIDE_ENA_4_SHIFT 16
-#define I40E_PFQF_HREGION_OVERRIDE_ENA_4_MASK I40E_MASK(0x1, I40E_PFQF_HREGION_OVERRIDE_ENA_4_SHIFT)
-#define I40E_PFQF_HREGION_REGION_4_SHIFT 17
-#define I40E_PFQF_HREGION_REGION_4_MASK I40E_MASK(0x7, I40E_PFQF_HREGION_REGION_4_SHIFT)
-#define I40E_PFQF_HREGION_OVERRIDE_ENA_5_SHIFT 20
-#define I40E_PFQF_HREGION_OVERRIDE_ENA_5_MASK I40E_MASK(0x1, I40E_PFQF_HREGION_OVERRIDE_ENA_5_SHIFT)
-#define I40E_PFQF_HREGION_REGION_5_SHIFT 21
-#define I40E_PFQF_HREGION_REGION_5_MASK I40E_MASK(0x7, I40E_PFQF_HREGION_REGION_5_SHIFT)
-#define I40E_PFQF_HREGION_OVERRIDE_ENA_6_SHIFT 24
-#define I40E_PFQF_HREGION_OVERRIDE_ENA_6_MASK I40E_MASK(0x1, I40E_PFQF_HREGION_OVERRIDE_ENA_6_SHIFT)
-#define I40E_PFQF_HREGION_REGION_6_SHIFT 25
-#define I40E_PFQF_HREGION_REGION_6_MASK I40E_MASK(0x7, I40E_PFQF_HREGION_REGION_6_SHIFT)
-#define I40E_PFQF_HREGION_OVERRIDE_ENA_7_SHIFT 28
-#define I40E_PFQF_HREGION_OVERRIDE_ENA_7_MASK I40E_MASK(0x1, I40E_PFQF_HREGION_OVERRIDE_ENA_7_SHIFT)
-#define I40E_PFQF_HREGION_REGION_7_SHIFT 29
-#define I40E_PFQF_HREGION_REGION_7_MASK I40E_MASK(0x7, I40E_PFQF_HREGION_REGION_7_SHIFT)
-#define I40E_VSIQF_CTL_RSS_LUT_TYPE_SHIFT 8
-#define I40E_VSIQF_CTL_RSS_LUT_TYPE_MASK I40E_MASK(0x1, I40E_VSIQF_CTL_RSS_LUT_TYPE_SHIFT)
-#define I40E_VSIQF_HKEY(_i, _VSI) (0x002A0000 + ((_i) * 2048 + (_VSI) * 4)) /* _i=0...12, _VSI=0...383 */ /* Reset: CORER */
-#define I40E_VSIQF_HKEY_MAX_INDEX 12
-#define I40E_VSIQF_HKEY_KEY_0_SHIFT 0
-#define I40E_VSIQF_HKEY_KEY_0_MASK I40E_MASK(0xFF, I40E_VSIQF_HKEY_KEY_0_SHIFT)
-#define I40E_VSIQF_HKEY_KEY_1_SHIFT 8
-#define I40E_VSIQF_HKEY_KEY_1_MASK I40E_MASK(0xFF, I40E_VSIQF_HKEY_KEY_1_SHIFT)
-#define I40E_VSIQF_HKEY_KEY_2_SHIFT 16
-#define I40E_VSIQF_HKEY_KEY_2_MASK I40E_MASK(0xFF, I40E_VSIQF_HKEY_KEY_2_SHIFT)
-#define I40E_VSIQF_HKEY_KEY_3_SHIFT 24
-#define I40E_VSIQF_HKEY_KEY_3_MASK I40E_MASK(0xFF, I40E_VSIQF_HKEY_KEY_3_SHIFT)
-#define I40E_VSIQF_HLUT(_i, _VSI) (0x00220000 + ((_i) * 2048 + (_VSI) * 4)) /* _i=0...15, _VSI=0...383 */ /* Reset: CORER */
-#define I40E_VSIQF_HLUT_MAX_INDEX 15
-#define I40E_VSIQF_HLUT_LUT0_SHIFT 0
-#define I40E_VSIQF_HLUT_LUT0_MASK I40E_MASK(0xF, I40E_VSIQF_HLUT_LUT0_SHIFT)
-#define I40E_VSIQF_HLUT_LUT1_SHIFT 8
-#define I40E_VSIQF_HLUT_LUT1_MASK I40E_MASK(0xF, I40E_VSIQF_HLUT_LUT1_SHIFT)
-#define I40E_VSIQF_HLUT_LUT2_SHIFT 16
-#define I40E_VSIQF_HLUT_LUT2_MASK I40E_MASK(0xF, I40E_VSIQF_HLUT_LUT2_SHIFT)
-#define I40E_VSIQF_HLUT_LUT3_SHIFT 24
-#define I40E_VSIQF_HLUT_LUT3_MASK I40E_MASK(0xF, I40E_VSIQF_HLUT_LUT3_SHIFT)
 #define I40E_GLGEN_STAT_CLEAR 0x00390004 /* Reset: CORER */
-#define I40E_GLGEN_STAT_CLEAR_GLGEN_STAT_CLEAR_SHIFT 0
-#define I40E_GLGEN_STAT_CLEAR_GLGEN_STAT_CLEAR_MASK I40E_MASK(0x1, I40E_GLGEN_STAT_CLEAR_GLGEN_STAT_CLEAR_SHIFT)
-#define I40E_GLGEN_STAT_HALT 0x00390000 /* Reset: CORER */
-#define I40E_GLGEN_STAT_HALT_HALT_CELLS_SHIFT 0
-#define I40E_GLGEN_STAT_HALT_HALT_CELLS_MASK I40E_MASK(0x3FFFFFFF, I40E_GLGEN_STAT_HALT_HALT_CELLS_SHIFT)
-#define I40E_VFINT_DYN_CTL01_WB_ON_ITR_SHIFT 30
-#define I40E_VFINT_DYN_CTL01_WB_ON_ITR_MASK I40E_MASK(0x1, I40E_VFINT_DYN_CTL01_WB_ON_ITR_SHIFT)
-#define I40E_VFINT_DYN_CTLN1_WB_ON_ITR_SHIFT 30
-#define I40E_VFINT_DYN_CTLN1_WB_ON_ITR_MASK I40E_MASK(0x1, I40E_VFINT_DYN_CTLN1_WB_ON_ITR_SHIFT)
-#define I40E_VFPE_AEQALLOC1 0x0000A400 /* Reset: VFR */
-#define I40E_VFPE_AEQALLOC1_AECOUNT_SHIFT 0
-#define I40E_VFPE_AEQALLOC1_AECOUNT_MASK I40E_MASK(0xFFFFFFFF, I40E_VFPE_AEQALLOC1_AECOUNT_SHIFT)
-#define I40E_VFPE_CCQPHIGH1 0x00009800 /* Reset: VFR */
-#define I40E_VFPE_CCQPHIGH1_PECCQPHIGH_SHIFT 0
-#define I40E_VFPE_CCQPHIGH1_PECCQPHIGH_MASK I40E_MASK(0xFFFFFFFF, I40E_VFPE_CCQPHIGH1_PECCQPHIGH_SHIFT)
-#define I40E_VFPE_CCQPLOW1 0x0000AC00 /* Reset: VFR */
-#define I40E_VFPE_CCQPLOW1_PECCQPLOW_SHIFT 0
-#define I40E_VFPE_CCQPLOW1_PECCQPLOW_MASK I40E_MASK(0xFFFFFFFF, I40E_VFPE_CCQPLOW1_PECCQPLOW_SHIFT)
-#define I40E_VFPE_CCQPSTATUS1 0x0000B800 /* Reset: VFR */
-#define I40E_VFPE_CCQPSTATUS1_CCQP_DONE_SHIFT 0
-#define I40E_VFPE_CCQPSTATUS1_CCQP_DONE_MASK I40E_MASK(0x1, I40E_VFPE_CCQPSTATUS1_CCQP_DONE_SHIFT)
-#define I40E_VFPE_CCQPSTATUS1_HMC_PROFILE_SHIFT 4
-#define I40E_VFPE_CCQPSTATUS1_HMC_PROFILE_MASK I40E_MASK(0x7, I40E_VFPE_CCQPSTATUS1_HMC_PROFILE_SHIFT)
-#define I40E_VFPE_CCQPSTATUS1_RDMA_EN_VFS_SHIFT 16
-#define I40E_VFPE_CCQPSTATUS1_RDMA_EN_VFS_MASK I40E_MASK(0x3F, I40E_VFPE_CCQPSTATUS1_RDMA_EN_VFS_SHIFT)
-#define I40E_VFPE_CCQPSTATUS1_CCQP_ERR_SHIFT 31
-#define I40E_VFPE_CCQPSTATUS1_CCQP_ERR_MASK I40E_MASK(0x1, I40E_VFPE_CCQPSTATUS1_CCQP_ERR_SHIFT)
-#define I40E_VFPE_CQACK1 0x0000B000 /* Reset: VFR */
-#define I40E_VFPE_CQACK1_PECQID_SHIFT 0
-#define I40E_VFPE_CQACK1_PECQID_MASK I40E_MASK(0x1FFFF, I40E_VFPE_CQACK1_PECQID_SHIFT)
-#define I40E_VFPE_CQARM1 0x0000B400 /* Reset: VFR */
-#define I40E_VFPE_CQARM1_PECQID_SHIFT 0
-#define I40E_VFPE_CQARM1_PECQID_MASK I40E_MASK(0x1FFFF, I40E_VFPE_CQARM1_PECQID_SHIFT)
-#define I40E_VFPE_CQPDB1 0x0000BC00 /* Reset: VFR */
-#define I40E_VFPE_CQPDB1_WQHEAD_SHIFT 0
-#define I40E_VFPE_CQPDB1_WQHEAD_MASK I40E_MASK(0x7FF, I40E_VFPE_CQPDB1_WQHEAD_SHIFT)
-#define I40E_VFPE_CQPERRCODES1 0x00009C00 /* Reset: VFR */
-#define I40E_VFPE_CQPERRCODES1_CQP_MINOR_CODE_SHIFT 0
-#define I40E_VFPE_CQPERRCODES1_CQP_MINOR_CODE_MASK I40E_MASK(0xFFFF, I40E_VFPE_CQPERRCODES1_CQP_MINOR_CODE_SHIFT)
-#define I40E_VFPE_CQPERRCODES1_CQP_MAJOR_CODE_SHIFT 16
-#define I40E_VFPE_CQPERRCODES1_CQP_MAJOR_CODE_MASK I40E_MASK(0xFFFF, I40E_VFPE_CQPERRCODES1_CQP_MAJOR_CODE_SHIFT)
-#define I40E_VFPE_CQPTAIL1 0x0000A000 /* Reset: VFR */
-#define I40E_VFPE_CQPTAIL1_WQTAIL_SHIFT 0
-#define I40E_VFPE_CQPTAIL1_WQTAIL_MASK I40E_MASK(0x7FF, I40E_VFPE_CQPTAIL1_WQTAIL_SHIFT)
-#define I40E_VFPE_CQPTAIL1_CQP_OP_ERR_SHIFT 31
-#define I40E_VFPE_CQPTAIL1_CQP_OP_ERR_MASK I40E_MASK(0x1, I40E_VFPE_CQPTAIL1_CQP_OP_ERR_SHIFT)
-#define I40E_VFPE_IPCONFIG01 0x00008C00 /* Reset: VFR */
-#define I40E_VFPE_IPCONFIG01_PEIPID_SHIFT 0
-#define I40E_VFPE_IPCONFIG01_PEIPID_MASK I40E_MASK(0xFFFF, I40E_VFPE_IPCONFIG01_PEIPID_SHIFT)
-#define I40E_VFPE_IPCONFIG01_USEENTIREIDRANGE_SHIFT 16
-#define I40E_VFPE_IPCONFIG01_USEENTIREIDRANGE_MASK I40E_MASK(0x1, I40E_VFPE_IPCONFIG01_USEENTIREIDRANGE_SHIFT)
-#define I40E_VFPE_MRTEIDXMASK1 0x00009000 /* Reset: VFR */
-#define I40E_VFPE_MRTEIDXMASK1_MRTEIDXMASKBITS_SHIFT 0
-#define I40E_VFPE_MRTEIDXMASK1_MRTEIDXMASKBITS_MASK I40E_MASK(0x1F, I40E_VFPE_MRTEIDXMASK1_MRTEIDXMASKBITS_SHIFT)
-#define I40E_VFPE_RCVUNEXPECTEDERROR1 0x00009400 /* Reset: VFR */
-#define I40E_VFPE_RCVUNEXPECTEDERROR1_TCP_RX_UNEXP_ERR_SHIFT 0
-#define I40E_VFPE_RCVUNEXPECTEDERROR1_TCP_RX_UNEXP_ERR_MASK I40E_MASK(0xFFFFFF, I40E_VFPE_RCVUNEXPECTEDERROR1_TCP_RX_UNEXP_ERR_SHIFT)
-#define I40E_VFPE_TCPNOWTIMER1 0x0000A800 /* Reset: VFR */
-#define I40E_VFPE_TCPNOWTIMER1_TCP_NOW_SHIFT 0
-#define I40E_VFPE_TCPNOWTIMER1_TCP_NOW_MASK I40E_MASK(0xFFFFFFFF, I40E_VFPE_TCPNOWTIMER1_TCP_NOW_SHIFT)
-#define I40E_VFPE_WQEALLOC1 0x0000C000 /* Reset: VFR */
-#define I40E_VFPE_WQEALLOC1_PEQPID_SHIFT 0
-#define I40E_VFPE_WQEALLOC1_PEQPID_MASK I40E_MASK(0x3FFFF, I40E_VFPE_WQEALLOC1_PEQPID_SHIFT)
-#define I40E_VFPE_WQEALLOC1_WQE_DESC_INDEX_SHIFT 20
-#define I40E_VFPE_WQEALLOC1_WQE_DESC_INDEX_MASK I40E_MASK(0xFFF, I40E_VFPE_WQEALLOC1_WQE_DESC_INDEX_SHIFT)
 #endif /* _I40E_REGISTER_H_ */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
index 36d37f31a287..9b8ca024e1c0 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
@@ -18,10 +18,7 @@
 #define I40E_ITR_DYNAMIC	0x8000	/* use top bit as a flag */
 #define I40E_ITR_MASK		0x1FFE	/* mask for ITR register value */
 #define I40E_MIN_ITR		     2	/* reg uses 2 usec resolution */
-#define I40E_ITR_100K		    10	/* all values below must be even */
-#define I40E_ITR_50K		    20
 #define I40E_ITR_20K		    50
-#define I40E_ITR_18K		    60
 #define I40E_ITR_8K		   122
 #define I40E_MAX_ITR		  8160	/* maximum value as per datasheet */
 #define ITR_TO_REG(setting) ((setting) & ~I40E_ITR_DYNAMIC)
@@ -52,9 +49,6 @@ static inline u16 i40e_intrl_usec_to_reg(int intrl)
 	else
 		return 0;
 }
-#define I40E_INTRL_8K              125     /* 8000 ints/sec */
-#define I40E_INTRL_62K             16      /* 62500 ints/sec */
-#define I40E_INTRL_83K             12      /* 83333 ints/sec */
 
 #define I40E_QUEUE_END_OF_LIST 0x7FF
 
@@ -73,7 +67,6 @@ enum i40e_dyn_idx_t {
 /* these are indexes into ITRN registers */
 #define I40E_RX_ITR    I40E_IDX_ITR0
 #define I40E_TX_ITR    I40E_IDX_ITR1
-#define I40E_PE_ITR    I40E_IDX_ITR2
 
 /* Supported RSS offloads */
 #define I40E_DEFAULT_RSS_HENA ( \
@@ -193,13 +186,6 @@ static inline bool i40e_test_staterr(union i40e_rx_desc *rx_desc,
 
 /* How many Rx Buffers do we bundle into one write to the hardware ? */
 #define I40E_RX_BUFFER_WRITE	32	/* Must be power of 2 */
-#define I40E_RX_INCREMENT(r, i) \
-	do {					\
-		(i)++;				\
-		if ((i) == (r)->count)		\
-			i = 0;			\
-		r->next_to_clean = i;		\
-	} while (0)
 
 #define I40E_RX_NEXT_DESC(r, i, n)		\
 	do {					\
@@ -209,11 +195,6 @@ static inline bool i40e_test_staterr(union i40e_rx_desc *rx_desc,
 		(n) = I40E_RX_DESC((r), (i));	\
 	} while (0)
 
-#define I40E_RX_NEXT_DESC_PREFETCH(r, i, n)		\
-	do {						\
-		I40E_RX_NEXT_DESC((r), (i), (n));	\
-		prefetch((n));				\
-	} while (0)
 
 #define I40E_MAX_BUFFER_TXD	8
 #define I40E_MIN_TX_LEN		17
@@ -262,15 +243,12 @@ static inline unsigned int i40e_txd_use_count(unsigned int size)
 
 /* Tx Descriptors needed, worst case */
 #define DESC_NEEDED (MAX_SKB_FRAGS + 6)
-#define I40E_MIN_DESC_PENDING	4
 
 #define I40E_TX_FLAGS_HW_VLAN		BIT(1)
 #define I40E_TX_FLAGS_SW_VLAN		BIT(2)
 #define I40E_TX_FLAGS_TSO		BIT(3)
 #define I40E_TX_FLAGS_IPV4		BIT(4)
 #define I40E_TX_FLAGS_IPV6		BIT(5)
-#define I40E_TX_FLAGS_FCCRC		BIT(6)
-#define I40E_TX_FLAGS_FSO		BIT(7)
 #define I40E_TX_FLAGS_TSYN		BIT(8)
 #define I40E_TX_FLAGS_FD_SB		BIT(9)
 #define I40E_TX_FLAGS_UDP_TUNNEL	BIT(10)
@@ -340,9 +318,7 @@ enum i40e_ring_state_t {
 /* some useful defines for virtchannel interface, which
  * is the only remaining user of header split
  */
-#define I40E_RX_DTYPE_NO_SPLIT      0
 #define I40E_RX_DTYPE_HEADER_SPLIT  1
-#define I40E_RX_DTYPE_SPLIT_ALWAYS  2
 #define I40E_RX_SPLIT_L2      0x1
 #define I40E_RX_SPLIT_IP      0x2
 #define I40E_RX_SPLIT_TCP_UDP 0x4
@@ -452,7 +428,6 @@ static inline void set_ring_xdp(struct i40e_ring *ring)
 #define I40E_ITR_ADAPTIVE_MAX_USECS	0x007e
 #define I40E_ITR_ADAPTIVE_LATENCY	0x8000
 #define I40E_ITR_ADAPTIVE_BULK		0x0000
-#define ITR_IS_BULK(x) (!((x) & I40E_ITR_ADAPTIVE_LATENCY))
 
 struct i40e_ring_container {
 	struct i40e_ring *ring;		/* pointer to linked list of ring(s) */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index 6ea2867ff60f..898e30f1097c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -84,8 +84,6 @@ enum i40e_debug_mask {
 						  I40E_GLGEN_MSCA_OPCODE_SHIFT)
 #define I40E_MDIO_CLAUSE45_OPCODE_WRITE_MASK	I40E_MASK(1, \
 						  I40E_GLGEN_MSCA_OPCODE_SHIFT)
-#define I40E_MDIO_CLAUSE45_OPCODE_READ_INC_ADDR_MASK	I40E_MASK(2, \
-						I40E_GLGEN_MSCA_OPCODE_SHIFT)
 #define I40E_MDIO_CLAUSE45_OPCODE_READ_MASK	I40E_MASK(3, \
 						I40E_GLGEN_MSCA_OPCODE_SHIFT)
 
@@ -178,21 +176,10 @@ struct i40e_link_status {
 	u8 module_type[3];
 	/* 1st byte: module identifier */
 #define I40E_MODULE_TYPE_SFP		0x03
-#define I40E_MODULE_TYPE_QSFP		0x0D
 	/* 2nd byte: ethernet compliance codes for 10/40G */
-#define I40E_MODULE_TYPE_40G_ACTIVE	0x01
-#define I40E_MODULE_TYPE_40G_LR4	0x02
-#define I40E_MODULE_TYPE_40G_SR4	0x04
-#define I40E_MODULE_TYPE_40G_CR4	0x08
-#define I40E_MODULE_TYPE_10G_BASE_SR	0x10
-#define I40E_MODULE_TYPE_10G_BASE_LR	0x20
-#define I40E_MODULE_TYPE_10G_BASE_LRM	0x40
-#define I40E_MODULE_TYPE_10G_BASE_ER	0x80
 	/* 3rd byte: ethernet compliance codes for 1G */
 #define I40E_MODULE_TYPE_1000BASE_SX	0x01
 #define I40E_MODULE_TYPE_1000BASE_LX	0x02
-#define I40E_MODULE_TYPE_1000BASE_CX	0x04
-#define I40E_MODULE_TYPE_1000BASE_T	0x08
 };
 
 struct i40e_phy_info {
@@ -262,9 +249,6 @@ struct i40e_phy_info {
 /* Capabilities of a PF or a VF or the whole device */
 struct i40e_hw_capabilities {
 	u32  switch_mode;
-#define I40E_NVM_IMAGE_TYPE_EVB		0x0
-#define I40E_NVM_IMAGE_TYPE_CLOUD	0x2
-#define I40E_NVM_IMAGE_TYPE_UDP_CLOUD	0x3
 
 	/* Cloud filter modes:
 	 * Mode1: Filter on L4 port only
@@ -273,14 +257,10 @@ struct i40e_hw_capabilities {
 	 */
 #define I40E_CLOUD_FILTER_MODE1	0x6
 #define I40E_CLOUD_FILTER_MODE2	0x7
-#define I40E_CLOUD_FILTER_MODE3	0x8
 #define I40E_SWITCH_MODE_MASK	0xF
 
 	u32  management_mode;
 	u32  mng_protocols_over_mctp;
-#define I40E_MNG_PROTOCOL_PLDM		0x2
-#define I40E_MNG_PROTOCOL_OEM_COMMANDS	0x4
-#define I40E_MNG_PROTOCOL_NCSI		0x8
 	u32  npar_enable;
 	u32  os2bmc;
 	u32  valid_functions;
@@ -294,13 +274,8 @@ struct i40e_hw_capabilities {
 	bool flex10_enable;
 	bool flex10_capable;
 	u32  flex10_mode;
-#define I40E_FLEX10_MODE_UNKNOWN	0x0
-#define I40E_FLEX10_MODE_DCC		0x1
-#define I40E_FLEX10_MODE_DCI		0x2
 
 	u32 flex10_status;
-#define I40E_FLEX10_STATUS_DCC_ERROR	0x1
-#define I40E_FLEX10_STATUS_VC_MODE	0x2
 
 	bool sec_rev_disabled;
 	bool update_disabled;
@@ -421,11 +396,8 @@ enum i40e_nvmupd_state {
 #define I40E_NVM_AQE				0xe
 #define I40E_NVM_EXEC				0xf
 
-#define I40E_NVM_ADAPT_SHIFT	16
-#define I40E_NVM_ADAPT_MASK	(0xffff << I40E_NVM_ADAPT_SHIFT)
 
 #define I40E_NVMUPD_MAX_DATA	4096
-#define I40E_NVMUPD_IFACE_TIMEOUT 2 /* seconds */
 
 struct i40e_nvm_access {
 	u32 command;
@@ -438,7 +410,6 @@ struct i40e_nvm_access {
 /* (Q)SFP module access definitions */
 #define I40E_I2C_EEPROM_DEV_ADDR	0xA0
 #define I40E_I2C_EEPROM_DEV_ADDR2	0xA2
-#define I40E_MODULE_TYPE_ADDR		0x00
 #define I40E_MODULE_REVISION_ADDR	0x01
 #define I40E_MODULE_SFF_8472_COMP	0x5E
 #define I40E_MODULE_SFF_8472_SWAP	0x5C
@@ -547,7 +518,6 @@ struct i40e_dcbx_config {
 #define I40E_DCBX_MODE_CEE	0x1
 #define I40E_DCBX_MODE_IEEE	0x2
 	u8  app_mode;
-#define I40E_DCBX_APPS_NON_WILLING	0x1
 	u32 numapps;
 	u32 tlv_status; /* CEE mode TLV status */
 	struct i40e_dcb_ets_config etscfg;
@@ -892,9 +862,6 @@ enum i40e_rx_ptype_payload_layer {
 #define I40E_RXD_QW1_LENGTH_PBUF_MASK	(0x3FFFULL << \
 					 I40E_RXD_QW1_LENGTH_PBUF_SHIFT)
 
-#define I40E_RXD_QW1_LENGTH_HBUF_SHIFT	52
-#define I40E_RXD_QW1_LENGTH_HBUF_MASK	(0x7FFULL << \
-					 I40E_RXD_QW1_LENGTH_HBUF_SHIFT)
 
 #define I40E_RXD_QW1_LENGTH_SPH_SHIFT	63
 #define I40E_RXD_QW1_LENGTH_SPH_MASK	BIT_ULL(I40E_RXD_QW1_LENGTH_SPH_SHIFT)
@@ -923,7 +890,6 @@ enum i40e_rx_desc_pe_status_bits {
 	I40E_RX_DESC_PE_STATUS_IPOPT_SHIFT	= 29
 };
 
-#define I40E_RX_PROG_STATUS_DESC_LENGTH_SHIFT		38
 #define I40E_RX_PROG_STATUS_DESC_LENGTH			0x2000000
 
 #define I40E_RX_PROG_STATUS_DESC_QW1_PROGID_SHIFT	2
@@ -960,8 +926,6 @@ struct i40e_tx_desc {
 	__le64 cmd_type_offset_bsz;
 };
 
-#define I40E_TXD_QW1_DTYPE_SHIFT	0
-#define I40E_TXD_QW1_DTYPE_MASK		(0xFUL << I40E_TXD_QW1_DTYPE_SHIFT)
 
 enum i40e_tx_desc_dtype_value {
 	I40E_TX_DESC_DTYPE_DATA		= 0x0,
@@ -977,7 +941,6 @@ enum i40e_tx_desc_dtype_value {
 };
 
 #define I40E_TXD_QW1_CMD_SHIFT	4
-#define I40E_TXD_QW1_CMD_MASK	(0x3FFUL << I40E_TXD_QW1_CMD_SHIFT)
 
 enum i40e_tx_desc_cmd_bits {
 	I40E_TX_DESC_CMD_EOP			= 0x0001,
@@ -1001,8 +964,6 @@ enum i40e_tx_desc_cmd_bits {
 };
 
 #define I40E_TXD_QW1_OFFSET_SHIFT	16
-#define I40E_TXD_QW1_OFFSET_MASK	(0x3FFFFULL << \
-					 I40E_TXD_QW1_OFFSET_SHIFT)
 
 enum i40e_tx_desc_length_fields {
 	/* Note: These are predefined bit offsets */
@@ -1012,11 +973,8 @@ enum i40e_tx_desc_length_fields {
 };
 
 #define I40E_TXD_QW1_TX_BUF_SZ_SHIFT	34
-#define I40E_TXD_QW1_TX_BUF_SZ_MASK	(0x3FFFULL << \
-					 I40E_TXD_QW1_TX_BUF_SZ_SHIFT)
 
 #define I40E_TXD_QW1_L2TAG1_SHIFT	48
-#define I40E_TXD_QW1_L2TAG1_MASK	(0xFFFFULL << I40E_TXD_QW1_L2TAG1_SHIFT)
 
 /* Context descriptors */
 struct i40e_tx_context_desc {
@@ -1026,11 +984,8 @@ struct i40e_tx_context_desc {
 	__le64 type_cmd_tso_mss;
 };
 
-#define I40E_TXD_CTX_QW1_DTYPE_SHIFT	0
-#define I40E_TXD_CTX_QW1_DTYPE_MASK	(0xFUL << I40E_TXD_CTX_QW1_DTYPE_SHIFT)
 
 #define I40E_TXD_CTX_QW1_CMD_SHIFT	4
-#define I40E_TXD_CTX_QW1_CMD_MASK	(0xFFFFUL << I40E_TXD_CTX_QW1_CMD_SHIFT)
 
 enum i40e_tx_ctx_desc_cmd_bits {
 	I40E_TX_CTX_DESC_TSO		= 0x01,
@@ -1045,19 +1000,10 @@ enum i40e_tx_ctx_desc_cmd_bits {
 };
 
 #define I40E_TXD_CTX_QW1_TSO_LEN_SHIFT	30
-#define I40E_TXD_CTX_QW1_TSO_LEN_MASK	(0x3FFFFULL << \
-					 I40E_TXD_CTX_QW1_TSO_LEN_SHIFT)
 
 #define I40E_TXD_CTX_QW1_MSS_SHIFT	50
-#define I40E_TXD_CTX_QW1_MSS_MASK	(0x3FFFULL << \
-					 I40E_TXD_CTX_QW1_MSS_SHIFT)
 
-#define I40E_TXD_CTX_QW1_VSI_SHIFT	50
-#define I40E_TXD_CTX_QW1_VSI_MASK	(0x1FFULL << I40E_TXD_CTX_QW1_VSI_SHIFT)
 
-#define I40E_TXD_CTX_QW0_EXT_IP_SHIFT	0
-#define I40E_TXD_CTX_QW0_EXT_IP_MASK	(0x3ULL << \
-					 I40E_TXD_CTX_QW0_EXT_IP_SHIFT)
 
 enum i40e_tx_ctx_desc_eipt_offload {
 	I40E_TX_CTX_EXT_IP_NONE		= 0x0,
@@ -1067,28 +1013,16 @@ enum i40e_tx_ctx_desc_eipt_offload {
 };
 
 #define I40E_TXD_CTX_QW0_EXT_IPLEN_SHIFT	2
-#define I40E_TXD_CTX_QW0_EXT_IPLEN_MASK	(0x3FULL << \
-					 I40E_TXD_CTX_QW0_EXT_IPLEN_SHIFT)
 
 #define I40E_TXD_CTX_QW0_NATT_SHIFT	9
-#define I40E_TXD_CTX_QW0_NATT_MASK	(0x3ULL << I40E_TXD_CTX_QW0_NATT_SHIFT)
 
 #define I40E_TXD_CTX_UDP_TUNNELING	BIT_ULL(I40E_TXD_CTX_QW0_NATT_SHIFT)
 #define I40E_TXD_CTX_GRE_TUNNELING	(0x2ULL << I40E_TXD_CTX_QW0_NATT_SHIFT)
 
-#define I40E_TXD_CTX_QW0_EIP_NOINC_SHIFT	11
-#define I40E_TXD_CTX_QW0_EIP_NOINC_MASK \
-				       BIT_ULL(I40E_TXD_CTX_QW0_EIP_NOINC_SHIFT)
 
-#define I40E_TXD_CTX_EIP_NOINC_IPID_CONST	I40E_TXD_CTX_QW0_EIP_NOINC_MASK
 
 #define I40E_TXD_CTX_QW0_NATLEN_SHIFT	12
-#define I40E_TXD_CTX_QW0_NATLEN_MASK	(0X7FULL << \
-					 I40E_TXD_CTX_QW0_NATLEN_SHIFT)
 
-#define I40E_TXD_CTX_QW0_DECTTL_SHIFT	19
-#define I40E_TXD_CTX_QW0_DECTTL_MASK	(0xFULL << \
-					 I40E_TXD_CTX_QW0_DECTTL_SHIFT)
 
 #define I40E_TXD_CTX_QW0_L4T_CS_SHIFT	23
 #define I40E_TXD_CTX_QW0_L4T_CS_MASK	BIT_ULL(I40E_TXD_CTX_QW0_L4T_CS_SHIFT)
@@ -1158,11 +1092,8 @@ enum i40e_filter_program_desc_fd_status {
 					 I40E_TXD_FLTR_QW0_DEST_VSI_SHIFT)
 
 #define I40E_TXD_FLTR_QW1_CMD_SHIFT	4
-#define I40E_TXD_FLTR_QW1_CMD_MASK	(0xFFFFULL << \
-					 I40E_TXD_FLTR_QW1_CMD_SHIFT)
 
 #define I40E_TXD_FLTR_QW1_PCMD_SHIFT	(0x0ULL + I40E_TXD_FLTR_QW1_CMD_SHIFT)
-#define I40E_TXD_FLTR_QW1_PCMD_MASK	(0x7ULL << I40E_TXD_FLTR_QW1_PCMD_SHIFT)
 
 enum i40e_filter_program_desc_pcmd {
 	I40E_FILTER_PROGRAM_DESC_PCMD_ADD_UPDATE	= 0x1,
@@ -1313,7 +1244,6 @@ struct i40e_hw_port_stats {
 #define I40E_NVM_OEM_VER_OFF			0x83
 #define I40E_SR_NVM_DEV_STARTER_VERSION		0x18
 #define I40E_SR_NVM_WAKE_ON_LAN			0x19
-#define I40E_SR_ALTERNATE_SAN_MAC_ADDRESS_PTR	0x27
 #define I40E_SR_NVM_EETRACK_LO			0x2D
 #define I40E_SR_NVM_EETRACK_HI			0x2E
 #define I40E_SR_VPD_PTR				0x2F
@@ -1326,7 +1256,6 @@ struct i40e_hw_port_stats {
 #define I40E_SR_PCIE_ALT_MODULE_MAX_SIZE	1024
 #define I40E_SR_CONTROL_WORD_1_SHIFT		0x06
 #define I40E_SR_CONTROL_WORD_1_MASK	(0x03 << I40E_SR_CONTROL_WORD_1_SHIFT)
-#define I40E_SR_CONTROL_WORD_1_NVM_BANK_VALID	BIT(5)
 #define I40E_SR_NVM_MAP_STRUCTURE_TYPE		BIT(12)
 #define I40E_PTR_TYPE				BIT(15)
 #define I40E_SR_OCP_CFG_WORD0			0x2B
@@ -1460,14 +1389,11 @@ struct i40e_lldp_variables {
 /* Offsets into Alternate Ram */
 #define I40E_ALT_STRUCT_FIRST_PF_OFFSET		0   /* in dwords */
 #define I40E_ALT_STRUCT_DWORDS_PER_PF		64   /* in dwords */
-#define I40E_ALT_STRUCT_OUTER_VLAN_TAG_OFFSET	0xD  /* in dwords */
-#define I40E_ALT_STRUCT_USER_PRIORITY_OFFSET	0xC  /* in dwords */
 #define I40E_ALT_STRUCT_MIN_BW_OFFSET		0xE  /* in dwords */
 #define I40E_ALT_STRUCT_MAX_BW_OFFSET		0xF  /* in dwords */
 
 /* Alternate Ram Bandwidth Masks */
 #define I40E_ALT_BW_VALUE_MASK		0xFF
-#define I40E_ALT_BW_RELATIVE_MASK	0x40000000
 #define I40E_ALT_BW_VALID_MASK		0x80000000
 
 /* RSS Hash Table Size */
@@ -1526,9 +1452,7 @@ struct i40e_package_header {
 /* Generic segment header */
 struct i40e_generic_seg_header {
 #define SEGMENT_TYPE_METADATA	0x00000001
-#define SEGMENT_TYPE_NOTES	0x00000002
 #define SEGMENT_TYPE_I40E	0x00000011
-#define SEGMENT_TYPE_X722	0x00000012
 	u32 type;
 	struct i40e_ddp_version version;
 	u32 size;
@@ -1538,7 +1462,6 @@ struct i40e_generic_seg_header {
 struct i40e_metadata_segment {
 	struct i40e_generic_seg_header header;
 	struct i40e_ddp_version version;
-#define I40E_DDP_TRACKID_RDONLY		0
 #define I40E_DDP_TRACKID_INVALID	0xFFFFFFFF
 	u32 track_id;
 	char name[I40E_DDP_NAME_SIZE];
@@ -1572,10 +1495,6 @@ struct i40e_profile_section_header {
 #define SECTION_TYPE_AQ		0x00000801
 #define SECTION_TYPE_RB_AQ	0x00001801
 #define SECTION_TYPE_NOTE	0x80000000
-#define SECTION_TYPE_NAME	0x80000001
-#define SECTION_TYPE_PROTO	0x80000002
-#define SECTION_TYPE_PCTYPE	0x80000003
-#define SECTION_TYPE_PTYPE	0x80000004
 		u32 type;
 		u32 offset;
 		u32 size;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
index 631248c0981a..5491215d81de 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
@@ -10,7 +10,6 @@
 
 #define I40E_VIRTCHNL_SUPPORTED_QTYPES 2
 
-#define I40E_DEFAULT_NUM_MDD_EVENTS_ALLOWED	3
 #define I40E_DEFAULT_NUM_INVALID_MSGS_ALLOWED	10
 
 #define I40E_VLAN_PRIORITY_SHIFT	13
diff --git a/include/linux/net/intel/i40e_client.h b/include/linux/net/intel/i40e_client.h
index 1ca9c1eae60e..90deb92eb901 100644
--- a/include/linux/net/intel/i40e_client.h
+++ b/include/linux/net/intel/i40e_client.h
@@ -44,7 +44,6 @@ struct i40e_client;
  * In order for us to keep the interface simple, SW will define a
  * unique type value for AEQ.
  */
-#define I40E_QUEUE_TYPE_PE_AEQ 0x80
 #define I40E_QUEUE_INVALID_IDX 0xFFFF
 
 struct i40e_qv_info {
@@ -59,7 +58,6 @@ struct i40e_qvlist_info {
 	struct i40e_qv_info qv_info[1];
 };
 
-#define I40E_CLIENT_MSIX_ALL 0xFFFFFFFF
 
 /* set of LAN parameters useful for clients managed by LAN */
 
@@ -91,7 +89,6 @@ struct i40e_info {
 	u8 __iomem *hw_addr;
 	u8 fid; /* function id, PF id or VF id */
 #define I40E_CLIENT_FTYPE_PF 0
-#define I40E_CLIENT_FTYPE_VF 1
 	u8 ftype; /* function type, PF or VF */
 	void *pf;
 
@@ -194,8 +191,6 @@ struct i40e_client {
 	unsigned long state;		/* client state */
 	atomic_t ref_cnt;  /* Count of all the client devices of this kind */
 	u32 flags;
-#define I40E_CLIENT_FLAGS_LAUNCH_ON_PROBE	BIT(0)
-#define I40E_TX_FLAGS_NOTIFY_OTHER_EVENTS	BIT(2)
 	u8 type;
 #define I40E_CLIENT_IWARP 0
 	const struct i40e_client_ops *ops; /* client ops provided by the client */
-- 
2.24.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
