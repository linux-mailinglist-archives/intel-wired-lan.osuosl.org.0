Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C73CA84782
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 17:15:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0EBCA820B3;
	Thu, 10 Apr 2025 15:15:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8HCXDu7QRjy6; Thu, 10 Apr 2025 15:15:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D77681E17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744298151;
	bh=6x/1T1qUjy8rhUBKouPVrCKaVyekLtLlKhwc7BkUPvU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=P7nzP28yGwttHZBermLEWpEaXOZH/CTyZwMTcZddm9xbDAM/gDM4IY+M0YYE7nkvV
	 Ssvf2mZKdA38Gd7wxUHjmXgLC58cX01HS9hQPI7D0afRgWMunYe3pMmlvbLPNjk3C1
	 8xsumBvy4TP3js+elCRX+UyL8vWU8TPBG0RZVoZjV88s6KjG3VOFuXaIH5ngYv5x4E
	 oaTvTqAf7pRso+pwzDaa4rQ/8LCc0hXAhafGs2Yv9AzGcrICTu/qWmNGJp7WYfS2KA
	 hTaF6xfuV1gmPgXqkHaWWCdX1/F3GeT/HXULCeFjl8qzglQaNtW+5Z6BJleqGhWSVu
	 CkARfoUxDmvNA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5D77681E17;
	Thu, 10 Apr 2025 15:15:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9B198108
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 10:01:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8CA154064D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 10:01:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WOytTovwT5_u for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 10:01:28 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 740694027C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 740694027C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 740694027C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 10:01:28 +0000 (UTC)
X-CSE-ConnectionGUID: mhZvS4oBTEey4aCV5myjHQ==
X-CSE-MsgGUID: 3392vpwuRD+fy57QopfedA==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="63183895"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="63183895"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 03:01:28 -0700
X-CSE-ConnectionGUID: eGPdgeXQRyaAW/p2DlgwxQ==
X-CSE-MsgGUID: zHh3lA1ETm6abXy4slt7Ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="159819685"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa001.fm.intel.com with ESMTP; 10 Apr 2025 03:01:25 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, aleksander.lobakin@intel.com,
 przemyslaw.kitszel@intel.com, piotr.kwapulinski@intel.com,
 aleksandr.loktionov@intel.com, jedrzej.jagielski@intel.com,
 larysa.zaremba@intel.com, anthony.l.nguyen@intel.com
Date: Thu, 10 Apr 2025 12:01:14 +0200
Message-ID: <20250410100121.2353754-2-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20250410100121.2353754-1-michal.swiatkowski@linux.intel.com>
References: <20250410100121.2353754-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 10 Apr 2025 15:15:50 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744279288; x=1775815288;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vg4QmVhPhdqwTpOXj4p6fs5WNtVLXoP5KNf9TWvmJv8=;
 b=LFhsyqLQlYJuB+B8lT9U01n8RdpHhDn3/fN/JHOmBPSuT5tazXzklGT2
 kQu+9afzZpPdOHMg+I2cwjdBHRg5HNYlxew/H8ksfBuvp6D3eiAAObjDZ
 Ni9zSDq9BwPIsJEbkqLNlwzLKhwHXuLBzVjpT/ps9yKzuURZuTNh+LYHB
 NanQ27rgySzcCbPzuI6BDf18vVk4mGhYKAbIhn1m2XqjTLSpAdQvLIZRq
 tG8fP6QNDY1fdQHhOnNhFtN0GijzqR3KBXAhTU19NjRmMk2WnPr6iWGv6
 USWWOcVfmEnxQmUb8eZVip+OShMJg00x4pKzQW1I0KqKZpXLNayWAyGnE
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LFhsyqLQ
Subject: [Intel-wired-lan] [iwl-next v2 1/8] ice,
 libie: move generic adminq descriptors to lib
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

The descriptor structure is the same in ice, ixgbe and i40e. Move it to
common libie header to use it across different driver.

Leave device specific adminq commands in separate folders. This lead to
a change that need to be done in filling/getting descriptor:
- previous: struct specific_desc *cmd;
	    cmd = &desc.params.specific_desc;
- now: struct specific_desc *cmd;
       cmd = libie_aq_raw(&desc);

Do this changes across the driver to allow clean build. The casting only
have to be done in case of specific descriptors, for generic one union
can still be used.

Changes beside code moving:
- change ICE_ prefix to LIBIE_ prefix (ice_ and libie_ too)
- remove shift variables not otherwise needed (in libie_aq_flags)
- fill/get descriptor data based on desc.params.raw whenever the
  descriptor isn't defined in libie
- move defines from the libie_aq_sth structure outside
- add libie_aq_raw helper and use it instead of explicit casting

Reviewed by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |   2 +-
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 269 +-----------
 drivers/net/ethernet/intel/ice/ice_common.h   |   6 +-
 drivers/net/ethernet/intel/ice/ice_controlq.h |   8 +-
 include/linux/net/intel/libie/adminq.h        | 269 ++++++++++++
 .../net/ethernet/intel/ice/devlink/health.c   |   4 +-
 drivers/net/ethernet/intel/ice/ice_common.c   | 388 +++++++++---------
 drivers/net/ethernet/intel/ice/ice_controlq.c |  53 +--
 drivers/net/ethernet/intel/ice/ice_dcb.c      |  36 +-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   2 +-
 drivers/net/ethernet/intel/ice/ice_ddp.c      |  47 +--
 .../net/ethernet/intel/ice/ice_fw_update.c    |  24 +-
 drivers/net/ethernet/intel/ice/ice_fwlog.c    |  16 +-
 drivers/net/ethernet/intel/ice/ice_lag.c      |   4 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |   6 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  34 +-
 drivers/net/ethernet/intel/ice/ice_nvm.c      |  38 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  20 +-
 drivers/net/ethernet/intel/ice/ice_sched.c    |  18 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c    |   4 +-
 drivers/net/ethernet/intel/ice/ice_switch.c   |  55 +--
 drivers/net/ethernet/intel/ice/ice_vf_mbx.c   |   6 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |   2 +-
 .../net/ethernet/intel/ice/ice_vlan_mode.c    |   6 +-
 24 files changed, 669 insertions(+), 648 deletions(-)
 create mode 100644 include/linux/net/intel/libie/adminq.h

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index fc127c0f9d66..5c2db1117d41 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -969,7 +969,7 @@ int ice_plug_aux_dev(struct ice_pf *pf);
 void ice_unplug_aux_dev(struct ice_pf *pf);
 int ice_init_rdma(struct ice_pf *pf);
 void ice_deinit_rdma(struct ice_pf *pf);
-const char *ice_aq_str(enum ice_aq_err aq_err);
+const char *ice_aq_str(enum libie_aq_err aq_err);
 bool ice_is_wol_supported(struct ice_hw *hw);
 void ice_fdir_del_all_fltrs(struct ice_vsi *vsi);
 int
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 2eaa4ab8e791..908bd25389df 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -4,6 +4,8 @@
 #ifndef _ICE_ADMINQ_CMD_H_
 #define _ICE_ADMINQ_CMD_H_
 
+#include <linux/net/intel/libie/adminq.h>
+
 /* This header file defines the Admin Queue commands, error codes and
  * descriptor format. It is shared between Firmware and Software.
  */
@@ -21,38 +23,6 @@ typedef struct __packed { u8 buf[ICE_RXQ_CTX_SZ]; } ice_rxq_ctx_buf_t;
 typedef struct __packed { u8 buf[ICE_TXQ_CTX_SZ]; } ice_txq_ctx_buf_t;
 typedef struct __packed { u8 buf[ICE_TXTIME_CTX_SZ]; } ice_txtime_ctx_buf_t;
 
-struct ice_aqc_generic {
-	__le32 param0;
-	__le32 param1;
-	__le32 addr_high;
-	__le32 addr_low;
-};
-
-/* Get version (direct 0x0001) */
-struct ice_aqc_get_ver {
-	__le32 rom_ver;
-	__le32 fw_build;
-	u8 fw_branch;
-	u8 fw_major;
-	u8 fw_minor;
-	u8 fw_patch;
-	u8 api_branch;
-	u8 api_major;
-	u8 api_minor;
-	u8 api_patch;
-};
-
-/* Send driver version (indirect 0x0002) */
-struct ice_aqc_driver_ver {
-	u8 major_ver;
-	u8 minor_ver;
-	u8 build_ver;
-	u8 subbuild_ver;
-	u8 reserved[4];
-	__le32 addr_high;
-	__le32 addr_low;
-};
-
 /* Queue Shutdown (direct 0x0003) */
 struct ice_aqc_q_shutdown {
 	u8 driver_unloading;
@@ -60,94 +30,6 @@ struct ice_aqc_q_shutdown {
 	u8 reserved[15];
 };
 
-/* Request resource ownership (direct 0x0008)
- * Release resource ownership (direct 0x0009)
- */
-struct ice_aqc_req_res {
-	__le16 res_id;
-#define ICE_AQC_RES_ID_NVM		1
-#define ICE_AQC_RES_ID_SDP		2
-#define ICE_AQC_RES_ID_CHNG_LOCK	3
-#define ICE_AQC_RES_ID_GLBL_LOCK	4
-	__le16 access_type;
-#define ICE_AQC_RES_ACCESS_READ		1
-#define ICE_AQC_RES_ACCESS_WRITE	2
-
-	/* Upon successful completion, FW writes this value and driver is
-	 * expected to release resource before timeout. This value is provided
-	 * in milliseconds.
-	 */
-	__le32 timeout;
-#define ICE_AQ_RES_NVM_READ_DFLT_TIMEOUT_MS	3000
-#define ICE_AQ_RES_NVM_WRITE_DFLT_TIMEOUT_MS	180000
-#define ICE_AQ_RES_CHNG_LOCK_DFLT_TIMEOUT_MS	1000
-#define ICE_AQ_RES_GLBL_LOCK_DFLT_TIMEOUT_MS	3000
-	/* For SDP: pin ID of the SDP */
-	__le32 res_number;
-	/* Status is only used for ICE_AQC_RES_ID_GLBL_LOCK */
-	__le16 status;
-#define ICE_AQ_RES_GLBL_SUCCESS		0
-#define ICE_AQ_RES_GLBL_IN_PROG		1
-#define ICE_AQ_RES_GLBL_DONE		2
-	u8 reserved[2];
-};
-
-/* Get function capabilities (indirect 0x000A)
- * Get device capabilities (indirect 0x000B)
- */
-struct ice_aqc_list_caps {
-	u8 cmd_flags;
-	u8 pf_index;
-	u8 reserved[2];
-	__le32 count;
-	__le32 addr_high;
-	__le32 addr_low;
-};
-
-/* Device/Function buffer entry, repeated per reported capability */
-struct ice_aqc_list_caps_elem {
-	__le16 cap;
-#define ICE_AQC_CAPS_VALID_FUNCTIONS			0x0005
-#define ICE_AQC_CAPS_SRIOV				0x0012
-#define ICE_AQC_CAPS_VF					0x0013
-#define ICE_AQC_CAPS_VSI				0x0017
-#define ICE_AQC_CAPS_DCB				0x0018
-#define ICE_AQC_CAPS_RSS				0x0040
-#define ICE_AQC_CAPS_RXQS				0x0041
-#define ICE_AQC_CAPS_TXQS				0x0042
-#define ICE_AQC_CAPS_MSIX				0x0043
-#define ICE_AQC_CAPS_FD					0x0045
-#define ICE_AQC_CAPS_1588				0x0046
-#define ICE_AQC_CAPS_MAX_MTU				0x0047
-#define ICE_AQC_CAPS_NVM_VER				0x0048
-#define ICE_AQC_CAPS_PENDING_NVM_VER			0x0049
-#define ICE_AQC_CAPS_OROM_VER				0x004A
-#define ICE_AQC_CAPS_PENDING_OROM_VER			0x004B
-#define ICE_AQC_CAPS_NET_VER				0x004C
-#define ICE_AQC_CAPS_PENDING_NET_VER			0x004D
-#define ICE_AQC_CAPS_RDMA				0x0051
-#define ICE_AQC_CAPS_SENSOR_READING			0x0067
-#define ICE_AQC_CAPS_PCIE_RESET_AVOIDANCE		0x0076
-#define ICE_AQC_CAPS_POST_UPDATE_RESET_RESTRICT		0x0077
-#define ICE_AQC_CAPS_NVM_MGMT				0x0080
-#define ICE_AQC_CAPS_TX_SCHED_TOPO_COMP_MODE		0x0085
-#define ICE_AQC_CAPS_NAC_TOPOLOGY			0x0087
-#define ICE_AQC_CAPS_FW_LAG_SUPPORT			0x0092
-#define ICE_AQC_BIT_ROCEV2_LAG				0x01
-#define ICE_AQC_BIT_SRIOV_LAG				0x02
-
-	u8 major_ver;
-	u8 minor_ver;
-	/* Number of resources described by this capability */
-	__le32 number;
-	/* Only meaningful for some types of resources */
-	__le32 logical_id;
-	/* Only meaningful for some types of resources */
-	__le32 phys_id;
-	__le64 rsvd1;
-	__le64 rsvd2;
-};
-
 /* Manage MAC address, read command - indirect (0x0107)
  * This struct is also used for the response
  */
@@ -2688,153 +2570,6 @@ struct ice_aqc_fw_log_cfg_resp {
 	u8 rsvd0;
 };
 
-/**
- * struct ice_aq_desc - Admin Queue (AQ) descriptor
- * @flags: ICE_AQ_FLAG_* flags
- * @opcode: AQ command opcode
- * @datalen: length in bytes of indirect/external data buffer
- * @retval: return value from firmware
- * @cookie_high: opaque data high-half
- * @cookie_low: opaque data low-half
- * @params: command-specific parameters
- *
- * Descriptor format for commands the driver posts on the Admin Transmit Queue
- * (ATQ). The firmware writes back onto the command descriptor and returns
- * the result of the command. Asynchronous events that are not an immediate
- * result of the command are written to the Admin Receive Queue (ARQ) using
- * the same descriptor format. Descriptors are in little-endian notation with
- * 32-bit words.
- */
-struct ice_aq_desc {
-	__le16 flags;
-	__le16 opcode;
-	__le16 datalen;
-	__le16 retval;
-	__le32 cookie_high;
-	__le32 cookie_low;
-	union {
-		u8 raw[16];
-		struct ice_aqc_generic generic;
-		struct ice_aqc_get_ver get_ver;
-		struct ice_aqc_driver_ver driver_ver;
-		struct ice_aqc_q_shutdown q_shutdown;
-		struct ice_aqc_req_res res_owner;
-		struct ice_aqc_manage_mac_read mac_read;
-		struct ice_aqc_manage_mac_write mac_write;
-		struct ice_aqc_clear_pxe clear_pxe;
-		struct ice_aqc_list_caps get_cap;
-		struct ice_aqc_get_phy_caps get_phy;
-		struct ice_aqc_set_phy_cfg set_phy;
-		struct ice_aqc_restart_an restart_an;
-		struct ice_aqc_set_phy_rec_clk_out set_phy_rec_clk_out;
-		struct ice_aqc_get_phy_rec_clk_out get_phy_rec_clk_out;
-		struct ice_aqc_get_sensor_reading get_sensor_reading;
-		struct ice_aqc_get_sensor_reading_resp get_sensor_reading_resp;
-		struct ice_aqc_gpio read_write_gpio;
-		struct ice_aqc_sff_eeprom read_write_sff_param;
-		struct ice_aqc_set_port_id_led set_port_id_led;
-		struct ice_aqc_get_port_options get_port_options;
-		struct ice_aqc_set_port_option set_port_option;
-		struct ice_aqc_get_sw_cfg get_sw_conf;
-		struct ice_aqc_set_port_params set_port_params;
-		struct ice_aqc_sw_rules sw_rules;
-		struct ice_aqc_add_get_recipe add_get_recipe;
-		struct ice_aqc_recipe_to_profile recipe_to_profile;
-		struct ice_aqc_get_topo get_topo;
-		struct ice_aqc_sched_elem_cmd sched_elem_cmd;
-		struct ice_aqc_query_txsched_res query_sched_res;
-		struct ice_aqc_query_port_ets port_ets;
-		struct ice_aqc_rl_profile rl_profile;
-		struct ice_aqc_nvm nvm;
-		struct ice_aqc_nvm_checksum nvm_checksum;
-		struct ice_aqc_nvm_pkg_data pkg_data;
-		struct ice_aqc_nvm_pass_comp_tbl pass_comp_tbl;
-		struct ice_aqc_pf_vf_msg virt;
-		struct ice_aqc_set_query_pfc_mode set_query_pfc_mode;
-		struct ice_aqc_lldp_get_mib lldp_get_mib;
-		struct ice_aqc_lldp_set_mib_change lldp_set_event;
-		struct ice_aqc_lldp_stop lldp_stop;
-		struct ice_aqc_lldp_start lldp_start;
-		struct ice_aqc_lldp_set_local_mib lldp_set_mib;
-		struct ice_aqc_lldp_stop_start_specific_agent lldp_agent_ctrl;
-		struct ice_aqc_lldp_filter_ctrl lldp_filter_ctrl;
-		struct ice_aqc_get_set_rss_lut get_set_rss_lut;
-		struct ice_aqc_get_set_rss_key get_set_rss_key;
-		struct ice_aqc_neigh_dev_req neigh_dev;
-		struct ice_aqc_add_txqs add_txqs;
-		struct ice_aqc_dis_txqs dis_txqs;
-		struct ice_aqc_cfg_txqs cfg_txqs;
-		struct ice_aqc_add_rdma_qset add_rdma_qset;
-		struct ice_aqc_set_txtimeqs set_txtimeqs;
-		struct ice_aqc_ena_dis_txtimeqs operate_txtimeqs;
-		struct ice_aqc_add_get_update_free_vsi vsi_cmd;
-		struct ice_aqc_add_update_free_vsi_resp add_update_free_vsi_res;
-		struct ice_aqc_download_pkg download_pkg;
-		struct ice_aqc_set_cgu_input_config set_cgu_input_config;
-		struct ice_aqc_get_cgu_input_config get_cgu_input_config;
-		struct ice_aqc_set_cgu_output_config set_cgu_output_config;
-		struct ice_aqc_get_cgu_output_config get_cgu_output_config;
-		struct ice_aqc_get_cgu_dpll_status get_cgu_dpll_status;
-		struct ice_aqc_set_cgu_dpll_config set_cgu_dpll_config;
-		struct ice_aqc_set_cgu_ref_prio set_cgu_ref_prio;
-		struct ice_aqc_get_cgu_ref_prio get_cgu_ref_prio;
-		struct ice_aqc_get_cgu_info get_cgu_info;
-		struct ice_aqc_driver_shared_params drv_shared_params;
-		struct ice_aqc_fw_log fw_log;
-		struct ice_aqc_set_mac_lb set_mac_lb;
-		struct ice_aqc_alloc_free_res_cmd sw_res_ctrl;
-		struct ice_aqc_set_mac_cfg set_mac_cfg;
-		struct ice_aqc_set_event_mask set_event_mask;
-		struct ice_aqc_get_link_status get_link_status;
-		struct ice_aqc_event_lan_overflow lan_overflow;
-		struct ice_aqc_get_link_topo get_link_topo;
-		struct ice_aqc_set_health_status_cfg set_health_status_cfg;
-		struct ice_aqc_get_health_status get_health_status;
-		struct ice_aqc_dnl_call_command dnl_call;
-		struct ice_aqc_i2c read_write_i2c;
-		struct ice_aqc_read_i2c_resp read_i2c_resp;
-		struct ice_aqc_get_set_tx_topo get_set_tx_topo;
-	} params;
-};
-
-/* FW defined boundary for a large buffer, 4k >= Large buffer > 512 bytes */
-#define ICE_AQ_LG_BUF	512
-
-#define ICE_AQ_FLAG_DD_S	0
-#define ICE_AQ_FLAG_CMP_S	1
-#define ICE_AQ_FLAG_ERR_S	2
-#define ICE_AQ_FLAG_LB_S	9
-#define ICE_AQ_FLAG_RD_S	10
-#define ICE_AQ_FLAG_BUF_S	12
-#define ICE_AQ_FLAG_SI_S	13
-
-#define ICE_AQ_FLAG_DD		BIT(ICE_AQ_FLAG_DD_S)  /* 0x1    */
-#define ICE_AQ_FLAG_CMP		BIT(ICE_AQ_FLAG_CMP_S) /* 0x2    */
-#define ICE_AQ_FLAG_ERR		BIT(ICE_AQ_FLAG_ERR_S) /* 0x4    */
-#define ICE_AQ_FLAG_LB		BIT(ICE_AQ_FLAG_LB_S)  /* 0x200  */
-#define ICE_AQ_FLAG_RD		BIT(ICE_AQ_FLAG_RD_S)  /* 0x400  */
-#define ICE_AQ_FLAG_BUF		BIT(ICE_AQ_FLAG_BUF_S) /* 0x1000 */
-#define ICE_AQ_FLAG_SI		BIT(ICE_AQ_FLAG_SI_S)  /* 0x2000 */
-
-/* error codes */
-enum ice_aq_err {
-	ICE_AQ_RC_OK		= 0,  /* Success */
-	ICE_AQ_RC_EPERM		= 1,  /* Operation not permitted */
-	ICE_AQ_RC_ENOENT	= 2,  /* No such element */
-	ICE_AQ_RC_ENOMEM	= 9,  /* Out of memory */
-	ICE_AQ_RC_EBUSY		= 12, /* Device or resource busy */
-	ICE_AQ_RC_EEXIST	= 13, /* Object already exists */
-	ICE_AQ_RC_EINVAL	= 14, /* Invalid argument */
-	ICE_AQ_RC_ENOSPC	= 16, /* No space left or allocation failure */
-	ICE_AQ_RC_ENOSYS	= 17, /* Function not implemented */
-	ICE_AQ_RC_EMODE		= 21, /* Op not allowed in current dev mode */
-	ICE_AQ_RC_ENOSEC	= 24, /* Missing security manifest */
-	ICE_AQ_RC_EBADSIG	= 25, /* Bad RSA signature */
-	ICE_AQ_RC_ESVN		= 26, /* SVN number prohibits this package */
-	ICE_AQ_RC_EBADMAN	= 27, /* Manifest hash mismatch */
-	ICE_AQ_RC_EBADBUF	= 28, /* Buffer hash mismatches manifest */
-};
-
 /* Admin Queue command opcodes */
 enum ice_adminq_opc {
 	/* AQ commands */
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index aefcf719e460..b1a754de92ee 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -68,7 +68,7 @@ bool ice_is_sbq_supported(struct ice_hw *hw);
 struct ice_ctl_q_info *ice_get_sbq(struct ice_hw *hw);
 int
 ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
-		struct ice_aq_desc *desc, void *buf, u16 buf_size,
+		struct libie_aq_desc *desc, void *buf, u16 buf_size,
 		struct ice_sq_cd *cd);
 void ice_clear_pxe_mode(struct ice_hw *hw);
 int ice_get_caps(struct ice_hw *hw);
@@ -91,14 +91,14 @@ ice_aq_set_rss_key(struct ice_hw *hw, u16 vsi_handle,
 
 bool ice_check_sq_alive(struct ice_hw *hw, struct ice_ctl_q_info *cq);
 int ice_aq_q_shutdown(struct ice_hw *hw, bool unloading);
-void ice_fill_dflt_direct_cmd_desc(struct ice_aq_desc *desc, u16 opcode);
+void ice_fill_dflt_direct_cmd_desc(struct libie_aq_desc *desc, u16 opcode);
 
 void ice_pack_txq_ctx(const struct ice_tlan_ctx *ctx, ice_txq_ctx_buf_t *buf);
 
 extern struct mutex ice_global_cfg_lock_sw;
 
 int
-ice_aq_send_cmd(struct ice_hw *hw, struct ice_aq_desc *desc,
+ice_aq_send_cmd(struct ice_hw *hw, struct libie_aq_desc *desc,
 		void *buf, u16 buf_size, struct ice_sq_cd *cd);
 int ice_aq_get_fw_ver(struct ice_hw *hw, struct ice_sq_cd *cd);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.h b/drivers/net/ethernet/intel/ice/ice_controlq.h
index ca97b7365a1b..788040dd662e 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.h
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.h
@@ -12,7 +12,7 @@
 #define ICE_SBQ_MAX_BUF_LEN 512
 
 #define ICE_CTL_Q_DESC(R, i) \
-	(&(((struct ice_aq_desc *)((R).desc_buf.va))[i]))
+	(&(((struct libie_aq_desc *)((R).desc_buf.va))[i]))
 
 #define ICE_CTL_Q_DESC_UNUSED(R) \
 	((u16)((((R)->next_to_clean > (R)->next_to_use) ? 0 : (R)->count) + \
@@ -76,12 +76,12 @@ struct ice_ctl_q_ring {
 
 /* sq transaction details */
 struct ice_sq_cd {
-	struct ice_aq_desc *wb_desc;
+	struct libie_aq_desc *wb_desc;
 };
 
 /* rq event information */
 struct ice_rq_event_info {
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	u16 msg_len;
 	u16 buf_len;
 	u8 *msg_buf;
@@ -96,7 +96,7 @@ struct ice_ctl_q_info {
 	u16 num_sq_entries;		/* send queue depth */
 	u16 rq_buf_size;		/* receive queue buffer size */
 	u16 sq_buf_size;		/* send queue buffer size */
-	enum ice_aq_err sq_last_status;	/* last status on send queue */
+	enum libie_aq_err sq_last_status;	/* last status on send queue */
 	struct mutex sq_lock;		/* Send queue lock */
 	struct mutex rq_lock;		/* Receive queue lock */
 };
diff --git a/include/linux/net/intel/libie/adminq.h b/include/linux/net/intel/libie/adminq.h
new file mode 100644
index 000000000000..568980ddf4c1
--- /dev/null
+++ b/include/linux/net/intel/libie/adminq.h
@@ -0,0 +1,269 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2025 Intel Corporation */
+
+#ifndef __LIBIE_ADMINQ_H
+#define __LIBIE_ADMINQ_H
+
+#include <linux/build_bug.h>
+#include <linux/types.h>
+
+#define LIBIE_CHECK_STRUCT_LEN(n, X)	\
+	static_assert((n) == sizeof(struct X))
+
+/**
+ * struct libie_aqc_generic - Generic structure used in adminq communication
+ * @param: generic parameter
+ * @addr: generic address
+ */
+struct libie_aqc_generic {
+	__le32 param0;
+	__le32 param1;
+	__le32 addr_high;
+	__le32 addr_low;
+};
+LIBIE_CHECK_STRUCT_LEN(16, libie_aqc_generic);
+
+/**
+ * struct libie_aqc_get_ver -  Used in command get version (direct 0x0001)
+ * @rom_ver: rom version
+ * @fw_build: number coressponding to firmware build
+ * @fw_branch: branch identifier of firmware version
+ * @fw_major: major number of firmware version
+ * @fw_minor: minor number of firmware version
+ * @fw_patch: patch of firmware version
+ * @api_branch: brancch identifier of API version
+ * @api_major: major number of API version
+ * @api_minor: minor number of API version
+ * @api_patch: patch of API version
+ */
+struct libie_aqc_get_ver {
+	__le32	rom_ver;
+	__le32	fw_build;
+	u8	fw_branch;
+	u8	fw_major;
+	u8	fw_minor;
+	u8	fw_patch;
+	u8	api_branch;
+	u8	api_major;
+	u8	api_minor;
+	u8	api_patch;
+};
+LIBIE_CHECK_STRUCT_LEN(16, libie_aqc_get_ver);
+
+/**
+ * struct libie_aqc_driver_ver - Used in command send driver version
+ * 				 (indirect 0x0002)
+ * @major_ver: driver major version
+ * @minor_ver: driver minor version
+ * @build_ver: driver build version
+ * @subbuild_ver: driver subbuild version
+ * @reserved: for feature use
+ * @addr_high: high part of response address buff
+ * @addr_low: low part of response address buff
+ */
+struct libie_aqc_driver_ver {
+	u8	major_ver;
+	u8	minor_ver;
+	u8	build_ver;
+	u8	subbuild_ver;
+	u8	reserved[4];
+	__le32	addr_high;
+	__le32	addr_low;
+};
+LIBIE_CHECK_STRUCT_LEN(16, libie_aqc_driver_ver);
+
+enum libie_aq_res_id {
+	LIBIE_AQC_RES_ID_NVM				= 1,
+	LIBIE_AQC_RES_ID_SDP				= 2,
+	LIBIE_AQC_RES_ID_CHNG_LOCK			= 3,
+	LIBIE_AQC_RES_ID_GLBL_LOCK			= 4,
+};
+
+enum libie_aq_res_access_type {
+	LIBIE_AQC_RES_ACCESS_READ			= 1,
+	LIBIE_AQC_RES_ACCESS_WRITE			= 2,
+};
+
+#define LIBIE_AQ_RES_NVM_READ_DFLT_TIMEOUT_MS		3000
+#define LIBIE_AQ_RES_NVM_WRITE_DFLT_TIMEOUT_MS		180000
+#define LIBIE_AQ_RES_CHNG_LOCK_DFLT_TIMEOUT_MS		1000
+#define LIBIE_AQ_RES_GLBL_LOCK_DFLT_TIMEOUT_MS		3000
+
+#define LIBIE_AQ_RES_GLBL_SUCCESS			0
+#define LIBIE_AQ_RES_GLBL_IN_PROG			1
+#define LIBIE_AQ_RES_GLBL_DONE				2
+
+/**
+ * struct libie_aqc_req_res - Request resource ownership
+ * @res_id: resource ID (look at enum definition above)
+ * @access_type: read or write (enum definition above)
+ * @timeout: Upon successful completion, FW writes this value and driver is
+ * expected to release resource before timeout. This value is provided in
+ * milliseconds.
+ * @res_number: for SDP, this is the pin ID of the SDP
+ * @status: status only used for LIBIE_AQC_RES_ID_GLBL_LOCK, for others reserved
+ * @reserved: reserved for future use
+ *
+ * Used in commands:
+ * request resource ownership (direct 0x0008)
+ * request resource ownership (direct 0x0009)
+ */
+struct libie_aqc_req_res {
+	__le16	res_id;
+	__le16	access_type;
+
+	__le32	timeout;
+	__le32	res_number;
+	__le16	status;
+	u8	reserved[2];
+};
+LIBIE_CHECK_STRUCT_LEN(16, libie_aqc_req_res);
+
+/**
+ * struct libie_aqc_list_caps - Getting capabilities
+ * @cmd_flags: command flags
+ * @pf_index: index of PF to get caps from
+ * @reserved: reserved for future use
+ * @count: number of capabilities records
+ * @addr_high: high part of response address buff
+ * @addr_low: low part of response address buff
+ *
+ * Used in commands:
+ * get function capabilities (indirect 0x000A)
+ * get device capabilities (indirect 0x000B)
+ */
+struct libie_aqc_list_caps {
+	u8	cmd_flags;
+	u8	pf_index;
+	u8	reserved[2];
+	__le32	count;
+	__le32	addr_high;
+	__le32	addr_low;
+};
+LIBIE_CHECK_STRUCT_LEN(16, libie_aqc_list_caps);
+
+/* Device/Function buffer entry, repeated per reported capability */
+#define LIBIE_AQC_CAPS_VALID_FUNCTIONS			0x0005
+#define LIBIE_AQC_CAPS_SRIOV				0x0012
+#define LIBIE_AQC_CAPS_VF				0x0013
+#define LIBIE_AQC_CAPS_VSI				0x0017
+#define LIBIE_AQC_CAPS_DCB				0x0018
+#define LIBIE_AQC_CAPS_RSS				0x0040
+#define LIBIE_AQC_CAPS_RXQS				0x0041
+#define LIBIE_AQC_CAPS_TXQS				0x0042
+#define LIBIE_AQC_CAPS_MSIX				0x0043
+#define LIBIE_AQC_CAPS_FD				0x0045
+#define LIBIE_AQC_CAPS_1588				0x0046
+#define LIBIE_AQC_CAPS_MAX_MTU				0x0047
+#define LIBIE_AQC_CAPS_NVM_VER				0x0048
+#define LIBIE_AQC_CAPS_PENDING_NVM_VER			0x0049
+#define LIBIE_AQC_CAPS_OROM_VER				0x004A
+#define LIBIE_AQC_CAPS_PENDING_OROM_VER			0x004B
+#define LIBIE_AQC_CAPS_NET_VER				0x004C
+#define LIBIE_AQC_CAPS_PENDING_NET_VER			0x004D
+#define LIBIE_AQC_CAPS_RDMA				0x0051
+#define LIBIE_AQC_CAPS_SENSOR_READING			0x0067
+#define LIBIE_AQC_CAPS_PCIE_RESET_AVOIDANCE		0x0076
+#define LIBIE_AQC_CAPS_POST_UPDATE_RESET_RESTRICT	0x0077
+#define LIBIE_AQC_CAPS_NVM_MGMT				0x0080
+#define LIBIE_AQC_CAPS_TX_SCHED_TOPO_COMP_MODE		0x0085
+#define LIBIE_AQC_CAPS_NAC_TOPOLOGY			0x0087
+#define LIBIE_AQC_CAPS_FW_LAG_SUPPORT			0x0092
+#define LIBIE_AQC_BIT_ROCEV2_LAG			0x01
+#define LIBIE_AQC_BIT_SRIOV_LAG				0x02
+
+/**
+ * struct libie_aqc_list_caps_elem - Getting list of caps elements
+ * @cap: one from the defines list above
+ * @major_ver: major version
+ * @minor_ver: minor version
+ * @number: number of resources described by this capability
+ * @logical_id: logical ID, only meaningful for some types of resources
+ * @phys_id: physical ID, only meaningful for some types of resources
+ * @rsvd1: reserved for future use
+ * @rsvd2: reserved for future use
+ */
+struct libie_aqc_list_caps_elem {
+	__le16	cap;
+
+	u8	major_ver;
+	u8	minor_ver;
+	__le32	number;
+	__le32	logical_id;
+	__le32	phys_id;
+	__le64	rsvd1;
+	__le64	rsvd2;
+};
+LIBIE_CHECK_STRUCT_LEN(32, libie_aqc_list_caps_elem);
+
+/**
+ * struct libie_aq_desc - Admin Queue (AQ) descriptor
+ * @flags: LIBIE_AQ_FLAG_* flags
+ * @opcode: AQ command opcode
+ * @datalen: length in bytes of indirect/external data buffer
+ * @retval: return value from firmware
+ * @cookie_high: opaque data high-half
+ * @cookie_low: opaque data low-half
+ * @params: command-specific parameters
+ *
+ * Descriptor format for commands the driver posts on the Admin Transmit Queue
+ * (ATQ). The firmware writes back onto the command descriptor and returns
+ * the result of the command. Asynchronous events that are not an immediate
+ * result of the command are written to the Admin Receive Queue (ARQ) using
+ * the same descriptor format. Descriptors are in little-endian notation with
+ * 32-bit words.
+ */
+struct libie_aq_desc {
+	__le16	flags;
+	__le16	opcode;
+	__le16	datalen;
+	__le16	retval;
+	__le32	cookie_high;
+	__le32	cookie_low;
+	union {
+		u8	raw[16];
+		struct	libie_aqc_generic generic;
+		struct	libie_aqc_get_ver get_ver;
+		struct	libie_aqc_driver_ver driver_ver;
+		struct	libie_aqc_req_res res_owner;
+		struct	libie_aqc_list_caps get_cap;
+	} params;
+};
+LIBIE_CHECK_STRUCT_LEN(32, libie_aq_desc);
+
+/* FW defined boundary for a large buffer, 4k >= Large buffer > 512 bytes */
+#define LIBIE_AQ_LG_BUF				512
+
+#define LIBIE_AQ_FLAG_DD			BIT(0)	/* 0x1    */
+#define LIBIE_AQ_FLAG_CMP			BIT(1)	/* 0x2    */
+#define LIBIE_AQ_FLAG_ERR			BIT(2)	/* 0x4    */
+#define LIBIE_AQ_FLAG_LB			BIT(9)	/* 0x200  */
+#define LIBIE_AQ_FLAG_RD			BIT(10)	/* 0x400  */
+#define LIBIE_AQ_FLAG_BUF			BIT(12)	/* 0x1000 */
+#define LIBIE_AQ_FLAG_SI			BIT(13)	/* 0x2000 */
+
+/* error codes */
+enum libie_aq_err {
+	LIBIE_AQ_RC_OK		= 0,  /* Success */
+	LIBIE_AQ_RC_EPERM	= 1,  /* Operation not permitted */
+	LIBIE_AQ_RC_ENOENT	= 2,  /* No such element */
+	LIBIE_AQ_RC_ENOMEM	= 9,  /* Out of memory */
+	LIBIE_AQ_RC_EBUSY	= 12, /* Device or resource busy */
+	LIBIE_AQ_RC_EEXIST	= 13, /* Object already exists */
+	LIBIE_AQ_RC_EINVAL	= 14, /* Invalid argument */
+	LIBIE_AQ_RC_ENOSPC	= 16, /* No space left or allocation failure */
+	LIBIE_AQ_RC_ENOSYS	= 17, /* Function not implemented */
+	LIBIE_AQ_RC_EMODE	= 21, /* Op not allowed in current dev mode */
+	LIBIE_AQ_RC_ENOSEC	= 24, /* Missing security manifest */
+	LIBIE_AQ_RC_EBADSIG	= 25, /* Bad RSA signature */
+	LIBIE_AQ_RC_ESVN	= 26, /* SVN number prohibits this package */
+	LIBIE_AQ_RC_EBADMAN	= 27, /* Manifest hash mismatch */
+	LIBIE_AQ_RC_EBADBUF	= 28, /* Buffer hash mismatches manifest */
+};
+
+static inline void *libie_aq_raw(struct libie_aq_desc *desc)
+{
+	return &desc->params.raw;
+}
+
+#endif /* __LIBIE_ADMINQ_H */
diff --git a/drivers/net/ethernet/intel/ice/devlink/health.c b/drivers/net/ethernet/intel/ice/devlink/health.c
index 19c3d37aa768..b149b8185449 100644
--- a/drivers/net/ethernet/intel/ice/devlink/health.c
+++ b/drivers/net/ethernet/intel/ice/devlink/health.c
@@ -217,10 +217,12 @@ static void ice_config_health_events(struct ice_pf *pf, bool enable)
 void ice_process_health_status_event(struct ice_pf *pf, struct ice_rq_event_info *event)
 {
 	const struct ice_aqc_health_status_elem *health_info;
+	const struct ice_aqc_get_health_status *cmd;
 	u16 count;
 
 	health_info = (struct ice_aqc_health_status_elem *)event->msg_buf;
-	count = le16_to_cpu(event->desc.params.get_health_status.health_status_count);
+	cmd = libie_aq_raw(&event->desc);
+	count = le16_to_cpu(cmd->health_status_count);
 
 	if (count > (event->buf_len / sizeof(*health_info))) {
 		dev_err(ice_pf_to_dev(pf), "Received a health status event with invalid element count\n");
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index f7fd0a2451de..6a9909b45d05 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -239,7 +239,7 @@ static bool ice_is_pf_c827(struct ice_hw *hw)
  */
 int ice_clear_pf_cfg(struct ice_hw *hw)
 {
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_clear_pf_cfg);
 
@@ -267,12 +267,12 @@ ice_aq_manage_mac_read(struct ice_hw *hw, void *buf, u16 buf_size,
 {
 	struct ice_aqc_manage_mac_read_resp *resp;
 	struct ice_aqc_manage_mac_read *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 	u16 flags;
 	u8 i;
 
-	cmd = &desc.params.mac_read;
+	cmd = libie_aq_raw(&desc);
 
 	if (buf_size < sizeof(*resp))
 		return -EINVAL;
@@ -321,12 +321,12 @@ ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
 {
 	struct ice_aqc_get_phy_caps *cmd;
 	u16 pcaps_size = sizeof(*pcaps);
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	const char *prefix;
 	struct ice_hw *hw;
 	int status;
 
-	cmd = &desc.params.get_phy;
+	cmd = libie_aq_raw(&desc);
 
 	if (!pcaps || (report_mode & ~ICE_AQC_REPORT_MODE_M) || !pi)
 		return -EINVAL;
@@ -415,9 +415,9 @@ ice_aq_get_link_topo_handle(struct ice_port_info *pi, u8 node_type,
 			    struct ice_sq_cd *cd)
 {
 	struct ice_aqc_get_link_topo *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
-	cmd = &desc.params.get_link_topo;
+	cmd = libie_aq_raw(&desc);
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_link_topo);
 
@@ -445,19 +445,20 @@ int
 ice_aq_get_netlist_node(struct ice_hw *hw, struct ice_aqc_get_link_topo *cmd,
 			u8 *node_part_number, u16 *node_handle)
 {
-	struct ice_aq_desc desc;
+	struct ice_aqc_get_link_topo *resp;
+	struct libie_aq_desc desc;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_link_topo);
-	desc.params.get_link_topo = *cmd;
+	resp = libie_aq_raw(&desc);
+	*resp = *cmd;
 
 	if (ice_aq_send_cmd(hw, &desc, NULL, 0, NULL))
 		return -EINTR;
 
 	if (node_handle)
-		*node_handle =
-			le16_to_cpu(desc.params.get_link_topo.addr.handle);
+		*node_handle = le16_to_cpu(resp->addr.handle);
 	if (node_part_number)
-		*node_part_number = desc.params.get_link_topo.node_part_num;
+		*node_part_number = resp->node_part_num;
 
 	return 0;
 }
@@ -680,8 +681,8 @@ ice_aq_get_link_info(struct ice_port_info *pi, bool ena_lse,
 	struct ice_link_status *li_old, *li;
 	enum ice_media_type *hw_media_type;
 	struct ice_fc_info *hw_fc_info;
+	struct libie_aq_desc desc;
 	bool tx_pause, rx_pause;
-	struct ice_aq_desc desc;
 	struct ice_hw *hw;
 	u16 cmd_flags;
 	int status;
@@ -696,7 +697,7 @@ ice_aq_get_link_info(struct ice_port_info *pi, bool ena_lse,
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_link_status);
 	cmd_flags = (ena_lse) ? ICE_AQ_LSE_ENA : ICE_AQ_LSE_DIS;
-	resp = &desc.params.get_link_status;
+	resp = libie_aq_raw(&desc);
 	resp->cmd_flags = cpu_to_le16(cmd_flags);
 	resp->lport_num = pi->lport;
 
@@ -825,9 +826,9 @@ int
 ice_aq_set_mac_cfg(struct ice_hw *hw, u16 max_frame_size, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_set_mac_cfg *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
-	cmd = &desc.params.set_mac_cfg;
+	cmd = libie_aq_raw(&desc);
 
 	if (max_frame_size == 0)
 		return -EINVAL;
@@ -1509,7 +1510,7 @@ ice_sbq_send_cmd(struct ice_hw *hw, struct ice_sbq_cmd_desc *desc,
 		 void *buf, u16 buf_size, struct ice_sq_cd *cd)
 {
 	return ice_sq_send_cmd(hw, ice_get_sbq(hw),
-			       (struct ice_aq_desc *)desc, buf, buf_size, cd);
+			       (struct libie_aq_desc *)desc, buf, buf_size, cd);
 }
 
 /**
@@ -1594,10 +1595,10 @@ static bool ice_should_retry_sq_send_cmd(u16 opcode)
  */
 static int
 ice_sq_send_cmd_retry(struct ice_hw *hw, struct ice_ctl_q_info *cq,
-		      struct ice_aq_desc *desc, void *buf, u16 buf_size,
+		      struct libie_aq_desc *desc, void *buf, u16 buf_size,
 		      struct ice_sq_cd *cd)
 {
-	struct ice_aq_desc desc_cpy;
+	struct libie_aq_desc desc_cpy;
 	bool is_cmd_for_retry;
 	u8 idx = 0;
 	u16 opcode;
@@ -1618,7 +1619,7 @@ ice_sq_send_cmd_retry(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 		status = ice_sq_send_cmd(hw, cq, desc, buf, buf_size, cd);
 
 		if (!is_cmd_for_retry || !status ||
-		    hw->adminq.sq_last_status != ICE_AQ_RC_EBUSY)
+		    hw->adminq.sq_last_status != LIBIE_AQ_RC_EBUSY)
 			break;
 
 		memcpy(desc, &desc_cpy, sizeof(desc_cpy));
@@ -1641,10 +1642,10 @@ ice_sq_send_cmd_retry(struct ice_hw *hw, struct ice_ctl_q_info *cq,
  * Helper function to send FW Admin Queue commands to the FW Admin Queue.
  */
 int
-ice_aq_send_cmd(struct ice_hw *hw, struct ice_aq_desc *desc, void *buf,
+ice_aq_send_cmd(struct ice_hw *hw, struct libie_aq_desc *desc, void *buf,
 		u16 buf_size, struct ice_sq_cd *cd)
 {
-	struct ice_aqc_req_res *cmd = &desc->params.res_owner;
+	struct libie_aqc_req_res *cmd = libie_aq_raw(desc);
 	bool lock_acquired = false;
 	int status;
 
@@ -1675,7 +1676,7 @@ ice_aq_send_cmd(struct ice_hw *hw, struct ice_aq_desc *desc, void *buf,
 	case ice_aqc_opc_get_recipe_to_profile:
 		break;
 	case ice_aqc_opc_release_res:
-		if (le16_to_cpu(cmd->res_id) == ICE_AQC_RES_ID_GLBL_LOCK)
+		if (le16_to_cpu(cmd->res_id) == LIBIE_AQC_RES_ID_GLBL_LOCK)
 			break;
 		fallthrough;
 	default:
@@ -1700,8 +1701,8 @@ ice_aq_send_cmd(struct ice_hw *hw, struct ice_aq_desc *desc, void *buf,
  */
 int ice_aq_get_fw_ver(struct ice_hw *hw, struct ice_sq_cd *cd)
 {
-	struct ice_aqc_get_ver *resp;
-	struct ice_aq_desc desc;
+	struct libie_aqc_get_ver *resp;
+	struct libie_aq_desc desc;
 	int status;
 
 	resp = &desc.params.get_ver;
@@ -1737,8 +1738,8 @@ int
 ice_aq_send_driver_ver(struct ice_hw *hw, struct ice_driver_ver *dv,
 		       struct ice_sq_cd *cd)
 {
-	struct ice_aqc_driver_ver *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aqc_driver_ver *cmd;
+	struct libie_aq_desc desc;
 	u16 len;
 
 	cmd = &desc.params.driver_ver;
@@ -1748,7 +1749,7 @@ ice_aq_send_driver_ver(struct ice_hw *hw, struct ice_driver_ver *dv,
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_driver_ver);
 
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 	cmd->major_ver = dv->major_ver;
 	cmd->minor_ver = dv->minor_ver;
 	cmd->build_ver = dv->build_ver;
@@ -1773,9 +1774,9 @@ ice_aq_send_driver_ver(struct ice_hw *hw, struct ice_driver_ver *dv,
 int ice_aq_q_shutdown(struct ice_hw *hw, bool unloading)
 {
 	struct ice_aqc_q_shutdown *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
-	cmd = &desc.params.q_shutdown;
+	cmd = libie_aq_raw(&desc);
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_q_shutdown);
 
@@ -1816,8 +1817,8 @@ ice_aq_req_res(struct ice_hw *hw, enum ice_aq_res_ids res,
 	       enum ice_aq_res_access_type access, u8 sdp_number, u32 *timeout,
 	       struct ice_sq_cd *cd)
 {
-	struct ice_aqc_req_res *cmd_resp;
-	struct ice_aq_desc desc;
+	struct libie_aqc_req_res *cmd_resp;
+	struct libie_aq_desc desc;
 	int status;
 
 	cmd_resp = &desc.params.res_owner;
@@ -1839,20 +1840,20 @@ ice_aq_req_res(struct ice_hw *hw, enum ice_aq_res_ids res,
 	/* Global config lock response utilizes an additional status field.
 	 *
 	 * If the Global config lock resource is held by some other driver, the
-	 * command completes with ICE_AQ_RES_GLBL_IN_PROG in the status field
+	 * command completes with LIBIE_AQ_RES_GLBL_IN_PROG in the status field
 	 * and the timeout field indicates the maximum time the current owner
 	 * of the resource has to free it.
 	 */
 	if (res == ICE_GLOBAL_CFG_LOCK_RES_ID) {
-		if (le16_to_cpu(cmd_resp->status) == ICE_AQ_RES_GLBL_SUCCESS) {
+		if (le16_to_cpu(cmd_resp->status) == LIBIE_AQ_RES_GLBL_SUCCESS) {
 			*timeout = le32_to_cpu(cmd_resp->timeout);
 			return 0;
 		} else if (le16_to_cpu(cmd_resp->status) ==
-			   ICE_AQ_RES_GLBL_IN_PROG) {
+			   LIBIE_AQ_RES_GLBL_IN_PROG) {
 			*timeout = le32_to_cpu(cmd_resp->timeout);
 			return -EIO;
 		} else if (le16_to_cpu(cmd_resp->status) ==
-			   ICE_AQ_RES_GLBL_DONE) {
+			   LIBIE_AQ_RES_GLBL_DONE) {
 			return -EALREADY;
 		}
 
@@ -1865,7 +1866,7 @@ ice_aq_req_res(struct ice_hw *hw, enum ice_aq_res_ids res,
 	 * with a busy return value and the timeout field indicates the maximum
 	 * time the current owner of the resource has to free it.
 	 */
-	if (!status || hw->adminq.sq_last_status == ICE_AQ_RC_EBUSY)
+	if (!status || hw->adminq.sq_last_status == LIBIE_AQ_RC_EBUSY)
 		*timeout = le32_to_cpu(cmd_resp->timeout);
 
 	return status;
@@ -1884,8 +1885,8 @@ static int
 ice_aq_release_res(struct ice_hw *hw, enum ice_aq_res_ids res, u8 sdp_number,
 		   struct ice_sq_cd *cd)
 {
-	struct ice_aqc_req_res *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aqc_req_res *cmd;
+	struct libie_aq_desc desc;
 
 	cmd = &desc.params.res_owner;
 
@@ -1994,16 +1995,16 @@ int ice_aq_alloc_free_res(struct ice_hw *hw,
 			  enum ice_adminq_opc opc)
 {
 	struct ice_aqc_alloc_free_res_cmd *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
-	cmd = &desc.params.sw_res_ctrl;
+	cmd = libie_aq_raw(&desc);
 
 	if (!buf || buf_size < flex_array_size(buf, elem, 1))
 		return -EINVAL;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, opc);
 
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 
 	cmd->num_entries = cpu_to_le16(1);
 
@@ -2117,7 +2118,7 @@ static u32 ice_get_num_per_func(struct ice_hw *hw, u32 max)
  */
 static bool
 ice_parse_common_caps(struct ice_hw *hw, struct ice_hw_common_caps *caps,
-		      struct ice_aqc_list_caps_elem *elem, const char *prefix)
+		      struct libie_aqc_list_caps_elem *elem, const char *prefix)
 {
 	u32 logical_id = le32_to_cpu(elem->logical_id);
 	u32 phys_id = le32_to_cpu(elem->phys_id);
@@ -2126,17 +2127,17 @@ ice_parse_common_caps(struct ice_hw *hw, struct ice_hw_common_caps *caps,
 	bool found = true;
 
 	switch (cap) {
-	case ICE_AQC_CAPS_VALID_FUNCTIONS:
+	case LIBIE_AQC_CAPS_VALID_FUNCTIONS:
 		caps->valid_functions = number;
 		ice_debug(hw, ICE_DBG_INIT, "%s: valid_functions (bitmap) = %d\n", prefix,
 			  caps->valid_functions);
 		break;
-	case ICE_AQC_CAPS_SRIOV:
+	case LIBIE_AQC_CAPS_SRIOV:
 		caps->sr_iov_1_1 = (number == 1);
 		ice_debug(hw, ICE_DBG_INIT, "%s: sr_iov_1_1 = %d\n", prefix,
 			  caps->sr_iov_1_1);
 		break;
-	case ICE_AQC_CAPS_DCB:
+	case LIBIE_AQC_CAPS_DCB:
 		caps->dcb = (number == 1);
 		caps->active_tc_bitmap = logical_id;
 		caps->maxtc = phys_id;
@@ -2145,7 +2146,7 @@ ice_parse_common_caps(struct ice_hw *hw, struct ice_hw_common_caps *caps,
 			  caps->active_tc_bitmap);
 		ice_debug(hw, ICE_DBG_INIT, "%s: maxtc = %d\n", prefix, caps->maxtc);
 		break;
-	case ICE_AQC_CAPS_RSS:
+	case LIBIE_AQC_CAPS_RSS:
 		caps->rss_table_size = number;
 		caps->rss_table_entry_width = logical_id;
 		ice_debug(hw, ICE_DBG_INIT, "%s: rss_table_size = %d\n", prefix,
@@ -2153,7 +2154,7 @@ ice_parse_common_caps(struct ice_hw *hw, struct ice_hw_common_caps *caps,
 		ice_debug(hw, ICE_DBG_INIT, "%s: rss_table_entry_width = %d\n", prefix,
 			  caps->rss_table_entry_width);
 		break;
-	case ICE_AQC_CAPS_RXQS:
+	case LIBIE_AQC_CAPS_RXQS:
 		caps->num_rxq = number;
 		caps->rxq_first_id = phys_id;
 		ice_debug(hw, ICE_DBG_INIT, "%s: num_rxq = %d\n", prefix,
@@ -2161,7 +2162,7 @@ ice_parse_common_caps(struct ice_hw *hw, struct ice_hw_common_caps *caps,
 		ice_debug(hw, ICE_DBG_INIT, "%s: rxq_first_id = %d\n", prefix,
 			  caps->rxq_first_id);
 		break;
-	case ICE_AQC_CAPS_TXQS:
+	case LIBIE_AQC_CAPS_TXQS:
 		caps->num_txq = number;
 		caps->txq_first_id = phys_id;
 		ice_debug(hw, ICE_DBG_INIT, "%s: num_txq = %d\n", prefix,
@@ -2169,7 +2170,7 @@ ice_parse_common_caps(struct ice_hw *hw, struct ice_hw_common_caps *caps,
 		ice_debug(hw, ICE_DBG_INIT, "%s: txq_first_id = %d\n", prefix,
 			  caps->txq_first_id);
 		break;
-	case ICE_AQC_CAPS_MSIX:
+	case LIBIE_AQC_CAPS_MSIX:
 		caps->num_msix_vectors = number;
 		caps->msix_vector_first_id = phys_id;
 		ice_debug(hw, ICE_DBG_INIT, "%s: num_msix_vectors = %d\n", prefix,
@@ -2177,56 +2178,56 @@ ice_parse_common_caps(struct ice_hw *hw, struct ice_hw_common_caps *caps,
 		ice_debug(hw, ICE_DBG_INIT, "%s: msix_vector_first_id = %d\n", prefix,
 			  caps->msix_vector_first_id);
 		break;
-	case ICE_AQC_CAPS_PENDING_NVM_VER:
+	case LIBIE_AQC_CAPS_PENDING_NVM_VER:
 		caps->nvm_update_pending_nvm = true;
 		ice_debug(hw, ICE_DBG_INIT, "%s: update_pending_nvm\n", prefix);
 		break;
-	case ICE_AQC_CAPS_PENDING_OROM_VER:
+	case LIBIE_AQC_CAPS_PENDING_OROM_VER:
 		caps->nvm_update_pending_orom = true;
 		ice_debug(hw, ICE_DBG_INIT, "%s: update_pending_orom\n", prefix);
 		break;
-	case ICE_AQC_CAPS_PENDING_NET_VER:
+	case LIBIE_AQC_CAPS_PENDING_NET_VER:
 		caps->nvm_update_pending_netlist = true;
 		ice_debug(hw, ICE_DBG_INIT, "%s: update_pending_netlist\n", prefix);
 		break;
-	case ICE_AQC_CAPS_NVM_MGMT:
+	case LIBIE_AQC_CAPS_NVM_MGMT:
 		caps->nvm_unified_update =
 			(number & ICE_NVM_MGMT_UNIFIED_UPD_SUPPORT) ?
 			true : false;
 		ice_debug(hw, ICE_DBG_INIT, "%s: nvm_unified_update = %d\n", prefix,
 			  caps->nvm_unified_update);
 		break;
-	case ICE_AQC_CAPS_RDMA:
+	case LIBIE_AQC_CAPS_RDMA:
 		if (IS_ENABLED(CONFIG_INFINIBAND_IRDMA))
 			caps->rdma = (number == 1);
 		ice_debug(hw, ICE_DBG_INIT, "%s: rdma = %d\n", prefix, caps->rdma);
 		break;
-	case ICE_AQC_CAPS_MAX_MTU:
+	case LIBIE_AQC_CAPS_MAX_MTU:
 		caps->max_mtu = number;
 		ice_debug(hw, ICE_DBG_INIT, "%s: max_mtu = %d\n",
 			  prefix, caps->max_mtu);
 		break;
-	case ICE_AQC_CAPS_PCIE_RESET_AVOIDANCE:
+	case LIBIE_AQC_CAPS_PCIE_RESET_AVOIDANCE:
 		caps->pcie_reset_avoidance = (number > 0);
 		ice_debug(hw, ICE_DBG_INIT,
 			  "%s: pcie_reset_avoidance = %d\n", prefix,
 			  caps->pcie_reset_avoidance);
 		break;
-	case ICE_AQC_CAPS_POST_UPDATE_RESET_RESTRICT:
+	case LIBIE_AQC_CAPS_POST_UPDATE_RESET_RESTRICT:
 		caps->reset_restrict_support = (number == 1);
 		ice_debug(hw, ICE_DBG_INIT,
 			  "%s: reset_restrict_support = %d\n", prefix,
 			  caps->reset_restrict_support);
 		break;
-	case ICE_AQC_CAPS_FW_LAG_SUPPORT:
-		caps->roce_lag = !!(number & ICE_AQC_BIT_ROCEV2_LAG);
+	case LIBIE_AQC_CAPS_FW_LAG_SUPPORT:
+		caps->roce_lag = !!(number & LIBIE_AQC_BIT_ROCEV2_LAG);
 		ice_debug(hw, ICE_DBG_INIT, "%s: roce_lag = %u\n",
 			  prefix, caps->roce_lag);
-		caps->sriov_lag = !!(number & ICE_AQC_BIT_SRIOV_LAG);
+		caps->sriov_lag = !!(number & LIBIE_AQC_BIT_SRIOV_LAG);
 		ice_debug(hw, ICE_DBG_INIT, "%s: sriov_lag = %u\n",
 			  prefix, caps->sriov_lag);
 		break;
-	case ICE_AQC_CAPS_TX_SCHED_TOPO_COMP_MODE:
+	case LIBIE_AQC_CAPS_TX_SCHED_TOPO_COMP_MODE:
 		caps->tx_sched_topo_comp_mode_en = (number == 1);
 		break;
 	default:
@@ -2280,7 +2281,7 @@ ice_recalc_port_limited_caps(struct ice_hw *hw, struct ice_hw_common_caps *caps)
  */
 static void
 ice_parse_vf_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
-		       struct ice_aqc_list_caps_elem *cap)
+		       struct libie_aqc_list_caps_elem *cap)
 {
 	u32 logical_id = le32_to_cpu(cap->logical_id);
 	u32 number = le32_to_cpu(cap->number);
@@ -2303,7 +2304,7 @@ ice_parse_vf_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
  */
 static void
 ice_parse_vsi_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
-			struct ice_aqc_list_caps_elem *cap)
+			struct libie_aqc_list_caps_elem *cap)
 {
 	func_p->guar_num_vsi = ice_get_num_per_func(hw, ICE_MAX_VSI);
 	ice_debug(hw, ICE_DBG_INIT, "func caps: guar_num_vsi (fw) = %d\n",
@@ -2322,7 +2323,7 @@ ice_parse_vsi_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
  */
 static void
 ice_parse_1588_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
-			 struct ice_aqc_list_caps_elem *cap)
+			 struct libie_aqc_list_caps_elem *cap)
 {
 	struct ice_ts_func_info *info = &func_p->ts_func_info;
 	u32 number = le32_to_cpu(cap->number);
@@ -2421,7 +2422,7 @@ static void
 ice_parse_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
 		    void *buf, u32 cap_count)
 {
-	struct ice_aqc_list_caps_elem *cap_resp;
+	struct libie_aqc_list_caps_elem *cap_resp;
 	u32 i;
 
 	cap_resp = buf;
@@ -2436,16 +2437,16 @@ ice_parse_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
 					      &cap_resp[i], "func caps");
 
 		switch (cap) {
-		case ICE_AQC_CAPS_VF:
+		case LIBIE_AQC_CAPS_VF:
 			ice_parse_vf_func_caps(hw, func_p, &cap_resp[i]);
 			break;
-		case ICE_AQC_CAPS_VSI:
+		case LIBIE_AQC_CAPS_VSI:
 			ice_parse_vsi_func_caps(hw, func_p, &cap_resp[i]);
 			break;
-		case ICE_AQC_CAPS_1588:
+		case LIBIE_AQC_CAPS_1588:
 			ice_parse_1588_func_caps(hw, func_p, &cap_resp[i]);
 			break;
-		case ICE_AQC_CAPS_FD:
+		case LIBIE_AQC_CAPS_FD:
 			ice_parse_fdir_func_caps(hw, func_p);
 			break;
 		default:
@@ -2489,7 +2490,7 @@ static int ice_func_id_to_logical_id(u32 active_function_bitmap, u8 pf_id)
  */
 static void
 ice_parse_valid_functions_cap(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
-			      struct ice_aqc_list_caps_elem *cap)
+			      struct libie_aqc_list_caps_elem *cap)
 {
 	u32 number = le32_to_cpu(cap->number);
 
@@ -2510,7 +2511,7 @@ ice_parse_valid_functions_cap(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
  */
 static void
 ice_parse_vf_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
-		      struct ice_aqc_list_caps_elem *cap)
+		      struct libie_aqc_list_caps_elem *cap)
 {
 	u32 number = le32_to_cpu(cap->number);
 
@@ -2529,7 +2530,7 @@ ice_parse_vf_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
  */
 static void
 ice_parse_vsi_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
-		       struct ice_aqc_list_caps_elem *cap)
+		       struct libie_aqc_list_caps_elem *cap)
 {
 	u32 number = le32_to_cpu(cap->number);
 
@@ -2548,7 +2549,7 @@ ice_parse_vsi_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
  */
 static void
 ice_parse_1588_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
-			struct ice_aqc_list_caps_elem *cap)
+			struct libie_aqc_list_caps_elem *cap)
 {
 	struct ice_ts_dev_info *info = &dev_p->ts_dev_info;
 	u32 logical_id = le32_to_cpu(cap->logical_id);
@@ -2609,7 +2610,7 @@ ice_parse_1588_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
  */
 static void
 ice_parse_fdir_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
-			struct ice_aqc_list_caps_elem *cap)
+			struct libie_aqc_list_caps_elem *cap)
 {
 	u32 number = le32_to_cpu(cap->number);
 
@@ -2629,7 +2630,7 @@ ice_parse_fdir_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
  */
 static void
 ice_parse_sensor_reading_cap(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
-			     struct ice_aqc_list_caps_elem *cap)
+			     struct libie_aqc_list_caps_elem *cap)
 {
 	dev_p->supported_sensors = le32_to_cpu(cap->number);
 
@@ -2648,7 +2649,7 @@ ice_parse_sensor_reading_cap(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
  */
 static void ice_parse_nac_topo_dev_caps(struct ice_hw *hw,
 					struct ice_hw_dev_caps *dev_p,
-					struct ice_aqc_list_caps_elem *cap)
+					struct libie_aqc_list_caps_elem *cap)
 {
 	dev_p->nac_topo.mode = le32_to_cpu(cap->number);
 	dev_p->nac_topo.id = le32_to_cpu(cap->phys_id) & ICE_NAC_TOPO_ID_M;
@@ -2684,7 +2685,7 @@ static void
 ice_parse_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
 		   void *buf, u32 cap_count)
 {
-	struct ice_aqc_list_caps_elem *cap_resp;
+	struct libie_aqc_list_caps_elem *cap_resp;
 	u32 i;
 
 	cap_resp = buf;
@@ -2699,25 +2700,25 @@ ice_parse_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
 					      &cap_resp[i], "dev caps");
 
 		switch (cap) {
-		case ICE_AQC_CAPS_VALID_FUNCTIONS:
+		case LIBIE_AQC_CAPS_VALID_FUNCTIONS:
 			ice_parse_valid_functions_cap(hw, dev_p, &cap_resp[i]);
 			break;
-		case ICE_AQC_CAPS_VF:
+		case LIBIE_AQC_CAPS_VF:
 			ice_parse_vf_dev_caps(hw, dev_p, &cap_resp[i]);
 			break;
-		case ICE_AQC_CAPS_VSI:
+		case LIBIE_AQC_CAPS_VSI:
 			ice_parse_vsi_dev_caps(hw, dev_p, &cap_resp[i]);
 			break;
-		case ICE_AQC_CAPS_1588:
+		case LIBIE_AQC_CAPS_1588:
 			ice_parse_1588_dev_caps(hw, dev_p, &cap_resp[i]);
 			break;
-		case ICE_AQC_CAPS_FD:
+		case LIBIE_AQC_CAPS_FD:
 			ice_parse_fdir_dev_caps(hw, dev_p, &cap_resp[i]);
 			break;
-		case ICE_AQC_CAPS_SENSOR_READING:
+		case LIBIE_AQC_CAPS_SENSOR_READING:
 			ice_parse_sensor_reading_cap(hw, dev_p, &cap_resp[i]);
 			break;
-		case ICE_AQC_CAPS_NAC_TOPOLOGY:
+		case LIBIE_AQC_CAPS_NAC_TOPOLOGY:
 			ice_parse_nac_topo_dev_caps(hw, dev_p, &cap_resp[i]);
 			break;
 		default:
@@ -2837,8 +2838,8 @@ int
 ice_aq_list_caps(struct ice_hw *hw, void *buf, u16 buf_size, u32 *cap_count,
 		 enum ice_adminq_opc opc, struct ice_sq_cd *cd)
 {
-	struct ice_aqc_list_caps *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aqc_list_caps *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	cmd = &desc.params.get_cap;
@@ -2879,7 +2880,7 @@ ice_discover_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_caps)
 	 * device will return, we can simply send a 4KB buffer, the maximum
 	 * possible size that firmware can return.
 	 */
-	cap_count = ICE_AQ_MAX_BUF_LEN / sizeof(struct ice_aqc_list_caps_elem);
+	cap_count = ICE_AQ_MAX_BUF_LEN / sizeof(struct libie_aqc_list_caps_elem);
 
 	status = ice_aq_list_caps(hw, cbuf, ICE_AQ_MAX_BUF_LEN, &cap_count,
 				  ice_aqc_opc_list_dev_caps, NULL);
@@ -2913,7 +2914,7 @@ ice_discover_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_caps)
 	 * device will return, we can simply send a 4KB buffer, the maximum
 	 * possible size that firmware can return.
 	 */
-	cap_count = ICE_AQ_MAX_BUF_LEN / sizeof(struct ice_aqc_list_caps_elem);
+	cap_count = ICE_AQ_MAX_BUF_LEN / sizeof(struct libie_aqc_list_caps_elem);
 
 	status = ice_aq_list_caps(hw, cbuf, ICE_AQ_MAX_BUF_LEN, &cap_count,
 				  ice_aqc_opc_list_func_caps, NULL);
@@ -3022,9 +3023,9 @@ ice_aq_manage_mac_write(struct ice_hw *hw, const u8 *mac_addr, u8 flags,
 			struct ice_sq_cd *cd)
 {
 	struct ice_aqc_manage_mac_write *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
-	cmd = &desc.params.mac_write;
+	cmd = libie_aq_raw(&desc);
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_manage_mac_write);
 
 	cmd->flags = flags;
@@ -3041,10 +3042,12 @@ ice_aq_manage_mac_write(struct ice_hw *hw, const u8 *mac_addr, u8 flags,
  */
 static int ice_aq_clear_pxe_mode(struct ice_hw *hw)
 {
-	struct ice_aq_desc desc;
+	struct ice_aqc_clear_pxe *cmd;
+	struct libie_aq_desc desc;
 
+	cmd = libie_aq_raw(&desc);
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_clear_pxe_mode);
-	desc.params.clear_pxe.rx_cnt = ICE_AQC_CLEAR_PXE_RX_CNT;
+	cmd->rx_cnt = ICE_AQC_CLEAR_PXE_RX_CNT;
 
 	return ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
 }
@@ -3077,10 +3080,10 @@ ice_aq_set_port_params(struct ice_port_info *pi, bool double_vlan,
 {
 	struct ice_aqc_set_port_params *cmd;
 	struct ice_hw *hw = pi->hw;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	u16 cmd_flags = 0;
 
-	cmd = &desc.params.set_port_params;
+	cmd = libie_aq_raw(&desc);
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_port_params);
 	if (double_vlan)
@@ -3318,7 +3321,8 @@ int
 ice_aq_set_phy_cfg(struct ice_hw *hw, struct ice_port_info *pi,
 		   struct ice_aqc_set_phy_cfg_data *cfg, struct ice_sq_cd *cd)
 {
-	struct ice_aq_desc desc;
+	struct ice_aqc_set_phy_cfg *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	if (!cfg)
@@ -3333,8 +3337,9 @@ ice_aq_set_phy_cfg(struct ice_hw *hw, struct ice_port_info *pi,
 	}
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_phy_cfg);
-	desc.params.set_phy.lport_num = pi->lport;
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+	cmd = libie_aq_raw(&desc);
+	cmd->lport_num = pi->lport;
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 
 	ice_debug(hw, ICE_DBG_LINK, "set phy cfg\n");
 	ice_debug(hw, ICE_DBG_LINK, "	phy_type_low = 0x%llx\n",
@@ -3350,7 +3355,7 @@ ice_aq_set_phy_cfg(struct ice_hw *hw, struct ice_port_info *pi,
 		  cfg->link_fec_opt);
 
 	status = ice_aq_send_cmd(hw, &desc, cfg, sizeof(*cfg), cd);
-	if (hw->adminq.sq_last_status == ICE_AQ_RC_EMODE)
+	if (hw->adminq.sq_last_status == LIBIE_AQ_RC_EMODE)
 		status = 0;
 
 	if (!status)
@@ -3407,17 +3412,17 @@ int ice_aq_get_phy_equalization(struct ice_hw *hw, u16 data_in, u16 op_code,
 {
 	struct ice_aqc_dnl_call_command *cmd;
 	struct ice_aqc_dnl_call buf = {};
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int err;
 
 	buf.sto.txrx_equa_reqs.data_in = cpu_to_le16(data_in);
 	buf.sto.txrx_equa_reqs.op_code_serdes_sel =
 		cpu_to_le16(op_code | (serdes_num & 0xF));
-	cmd = &desc.params.dnl_call;
+	cmd = libie_aq_raw(&desc);
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_dnl_call);
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_BUF |
-				  ICE_AQ_FLAG_RD |
-				  ICE_AQ_FLAG_SI);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_BUF |
+				  LIBIE_AQ_FLAG_RD |
+				  LIBIE_AQ_FLAG_SI);
 	desc.datalen = cpu_to_le16(sizeof(struct ice_aqc_dnl_call));
 	cmd->activity_id = cpu_to_le16(ICE_AQC_ACT_ID_DNL);
 
@@ -3455,7 +3460,7 @@ static const u32 fec_reg[][ICE_FEC_MAX] = {
 int ice_aq_get_fec_stats(struct ice_hw *hw, u16 pcs_quad, u16 pcs_port,
 			 enum ice_fec_stats_types fec_type, u32 *output)
 {
-	u16 flag = (ICE_AQ_FLAG_RD | ICE_AQ_FLAG_BUF | ICE_AQ_FLAG_SI);
+	u16 flag = (LIBIE_AQ_FLAG_RD | LIBIE_AQ_FLAG_BUF | LIBIE_AQ_FLAG_SI);
 	struct ice_sbq_msg_input msg = {};
 	u32 receiver_id, reg_offset;
 	int err;
@@ -3878,9 +3883,9 @@ ice_aq_set_link_restart_an(struct ice_port_info *pi, bool ena_link,
 			   struct ice_sq_cd *cd)
 {
 	struct ice_aqc_restart_an *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
-	cmd = &desc.params.restart_an;
+	cmd = libie_aq_raw(&desc);
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_restart_an);
 
@@ -3908,9 +3913,9 @@ ice_aq_set_event_mask(struct ice_hw *hw, u8 port_num, u16 mask,
 		      struct ice_sq_cd *cd)
 {
 	struct ice_aqc_set_event_mask *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
-	cmd = &desc.params.set_event_mask;
+	cmd = libie_aq_raw(&desc);
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_event_mask);
 
@@ -3932,9 +3937,9 @@ int
 ice_aq_set_mac_loopback(struct ice_hw *hw, bool ena_lpbk, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_set_mac_lb *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
-	cmd = &desc.params.set_mac_lb;
+	cmd = libie_aq_raw(&desc);
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_mac_lb);
 	if (ena_lpbk)
@@ -3957,9 +3962,9 @@ ice_aq_set_port_id_led(struct ice_port_info *pi, bool is_orig_mode,
 {
 	struct ice_aqc_set_port_id_led *cmd;
 	struct ice_hw *hw = pi->hw;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
-	cmd = &desc.params.set_port_id_led;
+	cmd = libie_aq_raw(&desc);
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_port_id_led);
 
@@ -3995,7 +4000,7 @@ ice_aq_get_port_options(struct ice_hw *hw,
 			u8 *pending_option_idx, bool *pending_option_valid)
 {
 	struct ice_aqc_get_port_options *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 	u8 i;
 
@@ -4003,7 +4008,7 @@ ice_aq_get_port_options(struct ice_hw *hw,
 	if (*option_count < ICE_AQC_PORT_OPT_COUNT_M)
 		return -EINVAL;
 
-	cmd = &desc.params.get_port_options;
+	cmd = libie_aq_raw(&desc);
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_port_options);
 
 	if (lport_valid)
@@ -4069,12 +4074,12 @@ ice_aq_set_port_option(struct ice_hw *hw, u8 lport, u8 lport_valid,
 		       u8 new_option)
 {
 	struct ice_aqc_set_port_option *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
 	if (new_option > ICE_AQC_PORT_OPT_COUNT_M)
 		return -EINVAL;
 
-	cmd = &desc.params.set_port_option;
+	cmd = libie_aq_raw(&desc);
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_port_option);
 
 	if (lport_valid)
@@ -4169,7 +4174,7 @@ ice_aq_sff_eeprom(struct ice_hw *hw, u16 lport, u8 bus_addr,
 		  bool write, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_sff_eeprom *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	u16 i2c_bus_addr;
 	int status;
 
@@ -4177,8 +4182,8 @@ ice_aq_sff_eeprom(struct ice_hw *hw, u16 lport, u8 bus_addr,
 		return -EINVAL;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_sff_eeprom);
-	cmd = &desc.params.read_write_sff_param;
-	desc.flags = cpu_to_le16(ICE_AQ_FLAG_RD);
+	cmd = libie_aq_raw(&desc);
+	desc.flags = cpu_to_le16(LIBIE_AQ_FLAG_RD);
 	cmd->lport_num = (u8)(lport & 0xff);
 	cmd->lport_num_valid = (u8)((lport >> 8) & 0x01);
 	i2c_bus_addr = FIELD_PREP(ICE_AQC_SFF_I2CBUS_7BIT_M, bus_addr >> 1) |
@@ -4238,7 +4243,7 @@ __ice_aq_get_set_rss_lut(struct ice_hw *hw,
 	struct ice_aqc_get_set_rss_lut *desc_params;
 	enum ice_aqc_lut_flags flags;
 	enum ice_lut_size lut_size;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	u8 *lut = params->lut;
 
 
@@ -4254,9 +4259,9 @@ __ice_aq_get_set_rss_lut(struct ice_hw *hw,
 	opcode = set ? ice_aqc_opc_set_rss_lut : ice_aqc_opc_get_rss_lut;
 	ice_fill_dflt_direct_cmd_desc(&desc, opcode);
 	if (set)
-		desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+		desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 
-	desc_params = &desc.params.get_set_rss_lut;
+	desc_params = libie_aq_raw(&desc);
 	vsi_id = ice_get_hw_vsi_num(hw, vsi_handle);
 	desc_params->vsi_id = cpu_to_le16(vsi_id | ICE_AQC_RSS_VSI_VALID);
 
@@ -4311,16 +4316,16 @@ __ice_aq_get_set_rss_key(struct ice_hw *hw, u16 vsi_id,
 {
 	struct ice_aqc_get_set_rss_key *desc_params;
 	u16 key_size = sizeof(*key);
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
 	if (set) {
 		ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_rss_key);
-		desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+		desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 	} else {
 		ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_rss_key);
 	}
 
-	desc_params = &desc.params.get_set_rss_key;
+	desc_params = libie_aq_raw(&desc);
 	desc_params->vsi_id = cpu_to_le16(vsi_id | ICE_AQC_RSS_VSI_VALID);
 
 	return ice_aq_send_cmd(hw, &desc, key, key_size, NULL);
@@ -4392,10 +4397,10 @@ ice_aq_add_lan_txq(struct ice_hw *hw, u8 num_qgrps,
 {
 	struct ice_aqc_add_tx_qgrp *list;
 	struct ice_aqc_add_txqs *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	u16 i, sum_size = 0;
 
-	cmd = &desc.params.add_txqs;
+	cmd = libie_aq_raw(&desc);
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_add_txqs);
 
@@ -4414,7 +4419,7 @@ ice_aq_add_lan_txq(struct ice_hw *hw, u8 num_qgrps,
 	if (buf_size != sum_size)
 		return -EINVAL;
 
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 
 	cmd->num_qgrps = num_qgrps;
 
@@ -4441,12 +4446,12 @@ ice_aq_dis_lan_txq(struct ice_hw *hw, u8 num_qgrps,
 {
 	struct ice_aqc_dis_txq_item *item;
 	struct ice_aqc_dis_txqs *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	u16 vmvf_and_timeout;
 	u16 i, sz = 0;
 	int status;
 
-	cmd = &desc.params.dis_txqs;
+	cmd = libie_aq_raw(&desc);
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_dis_txqs);
 
 	/* qg_list can be NULL only in VM/VF reset flow */
@@ -4487,7 +4492,7 @@ ice_aq_dis_lan_txq(struct ice_hw *hw, u8 num_qgrps,
 	/* set RD bit to indicate that command buffer is provided by the driver
 	 * and it needs to be read by the firmware
 	 */
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 
 	for (i = 0, item = qg_list; i < num_qgrps; i++) {
 		u16 item_size = struct_size(item, q_id, item->num_qs);
@@ -4539,12 +4544,12 @@ ice_aq_cfg_lan_txq(struct ice_hw *hw, struct ice_aqc_cfg_txqs_buf *buf,
 		   struct ice_sq_cd *cd)
 {
 	struct ice_aqc_cfg_txqs *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
-	cmd = &desc.params.cfg_txqs;
+	cmd = libie_aq_raw(&desc);
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_cfg_txqs);
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 
 	if (!buf)
 		return -EINVAL;
@@ -4580,10 +4585,10 @@ ice_aq_add_rdma_qsets(struct ice_hw *hw, u8 num_qset_grps,
 {
 	struct ice_aqc_add_rdma_qset_data *list;
 	struct ice_aqc_add_rdma_qset *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	u16 i, sum_size = 0;
 
-	cmd = &desc.params.add_rdma_qset;
+	cmd = libie_aq_raw(&desc);
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_add_rdma_qset);
 
@@ -4601,7 +4606,7 @@ ice_aq_add_rdma_qsets(struct ice_hw *hw, u8 num_qset_grps,
 	if (buf_size != sum_size)
 		return -EINVAL;
 
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 
 	cmd->num_qset_grps = num_qset_grps;
 
@@ -4626,7 +4631,7 @@ ice_aq_set_txtimeq(struct ice_hw *hw, u16 txtimeq, u8 q_count,
 		   struct ice_sq_cd *cd)
 {
 	struct ice_aqc_set_txtimeqs *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	u16 size;
 
 	if (!txtime_qg || txtimeq > ICE_TXTIME_MAX_QUEUE ||
@@ -4637,11 +4642,11 @@ ice_aq_set_txtimeq(struct ice_hw *hw, u16 txtimeq, u8 q_count,
 	if (buf_size != size)
 		return -EINVAL;
 
-	cmd = &desc.params.set_txtimeqs;
+	cmd = libie_aq_raw(&desc);
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_txtimeqs);
 
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 
 	cmd->q_id = cpu_to_le16(txtimeq);
 	cmd->q_amount = cpu_to_le16(q_count);
@@ -4667,17 +4672,17 @@ ice_aq_ena_dis_txtimeq(struct ice_hw *hw, u16 txtimeq, u16 q_count, bool q_ena,
 		       struct ice_sq_cd *cd)
 {
 	struct ice_aqc_ena_dis_txtimeqs *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
 	if (!txtime_qg || txtimeq > ICE_TXTIME_MAX_QUEUE ||
 	    q_count < 1 || q_count > ICE_OP_TXTIME_MAX_Q_AMOUNT)
 		return -EINVAL;
 
-	cmd = &desc.params.operate_txtimeqs;
+	cmd = libie_aq_raw(&desc);
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_ena_dis_txtimeqs);
 
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 
 	cmd->q_id = cpu_to_le16(txtimeq);
 	cmd->q_amount = cpu_to_le16(q_count);
@@ -5110,7 +5115,7 @@ int
 ice_aq_get_cgu_abilities(struct ice_hw *hw,
 			 struct ice_aqc_get_cgu_abilities *abilities)
 {
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_cgu_abilities);
 	return ice_aq_send_cmd(hw, &desc, abilities, sizeof(*abilities), NULL);
@@ -5133,10 +5138,10 @@ ice_aq_set_input_pin_cfg(struct ice_hw *hw, u8 input_idx, u8 flags1, u8 flags2,
 			 u32 freq, s32 phase_delay)
 {
 	struct ice_aqc_set_cgu_input_config *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_cgu_input_config);
-	cmd = &desc.params.set_cgu_input_config;
+	cmd = libie_aq_raw(&desc);
 	cmd->input_idx = input_idx;
 	cmd->flags1 = flags1;
 	cmd->flags2 = flags2;
@@ -5165,11 +5170,11 @@ ice_aq_get_input_pin_cfg(struct ice_hw *hw, u8 input_idx, u8 *status, u8 *type,
 			 u8 *flags1, u8 *flags2, u32 *freq, s32 *phase_delay)
 {
 	struct ice_aqc_get_cgu_input_config *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int ret;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_cgu_input_config);
-	cmd = &desc.params.get_cgu_input_config;
+	cmd = libie_aq_raw(&desc);
 	cmd->input_idx = input_idx;
 
 	ret = ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
@@ -5208,10 +5213,10 @@ ice_aq_set_output_pin_cfg(struct ice_hw *hw, u8 output_idx, u8 flags,
 			  u8 src_sel, u32 freq, s32 phase_delay)
 {
 	struct ice_aqc_set_cgu_output_config *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_cgu_output_config);
-	cmd = &desc.params.set_cgu_output_config;
+	cmd = libie_aq_raw(&desc);
 	cmd->output_idx = output_idx;
 	cmd->flags = flags;
 	cmd->src_sel = src_sel;
@@ -5238,11 +5243,11 @@ ice_aq_get_output_pin_cfg(struct ice_hw *hw, u8 output_idx, u8 *flags,
 			  u8 *src_sel, u32 *freq, u32 *src_freq)
 {
 	struct ice_aqc_get_cgu_output_config *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int ret;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_cgu_output_config);
-	cmd = &desc.params.get_cgu_output_config;
+	cmd = libie_aq_raw(&desc);
 	cmd->output_idx = output_idx;
 
 	ret = ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
@@ -5279,11 +5284,11 @@ ice_aq_get_cgu_dpll_status(struct ice_hw *hw, u8 dpll_num, u8 *ref_state,
 			   u8 *eec_mode)
 {
 	struct ice_aqc_get_cgu_dpll_status *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_cgu_dpll_status);
-	cmd = &desc.params.get_cgu_dpll_status;
+	cmd = libie_aq_raw(&desc);
 	cmd->dpll_num = dpll_num;
 
 	status = ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
@@ -5317,10 +5322,10 @@ ice_aq_set_cgu_dpll_config(struct ice_hw *hw, u8 dpll_num, u8 ref_state,
 			   u8 config, u8 eec_mode)
 {
 	struct ice_aqc_set_cgu_dpll_config *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_cgu_dpll_config);
-	cmd = &desc.params.set_cgu_dpll_config;
+	cmd = libie_aq_raw(&desc);
 	cmd->dpll_num = dpll_num;
 	cmd->ref_state = ref_state;
 	cmd->config = config;
@@ -5344,10 +5349,10 @@ ice_aq_set_cgu_ref_prio(struct ice_hw *hw, u8 dpll_num, u8 ref_idx,
 			u8 ref_priority)
 {
 	struct ice_aqc_set_cgu_ref_prio *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_cgu_ref_prio);
-	cmd = &desc.params.set_cgu_ref_prio;
+	cmd = libie_aq_raw(&desc);
 	cmd->dpll_num = dpll_num;
 	cmd->ref_idx = ref_idx;
 	cmd->ref_priority = ref_priority;
@@ -5370,11 +5375,11 @@ ice_aq_get_cgu_ref_prio(struct ice_hw *hw, u8 dpll_num, u8 ref_idx,
 			u8 *ref_prio)
 {
 	struct ice_aqc_get_cgu_ref_prio *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_cgu_ref_prio);
-	cmd = &desc.params.get_cgu_ref_prio;
+	cmd = libie_aq_raw(&desc);
 	cmd->dpll_num = dpll_num;
 	cmd->ref_idx = ref_idx;
 
@@ -5400,11 +5405,11 @@ ice_aq_get_cgu_info(struct ice_hw *hw, u32 *cgu_id, u32 *cgu_cfg_ver,
 		    u32 *cgu_fw_ver)
 {
 	struct ice_aqc_get_cgu_info *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_cgu_info);
-	cmd = &desc.params.get_cgu_info;
+	cmd = libie_aq_raw(&desc);
 
 	status = ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
 	if (!status) {
@@ -5431,11 +5436,11 @@ ice_aq_set_phy_rec_clk_out(struct ice_hw *hw, u8 phy_output, bool enable,
 			   u32 *freq)
 {
 	struct ice_aqc_set_phy_rec_clk_out *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_phy_rec_clk_out);
-	cmd = &desc.params.set_phy_rec_clk_out;
+	cmd = libie_aq_raw(&desc);
 	cmd->phy_output = phy_output;
 	cmd->port_num = ICE_AQC_SET_PHY_REC_CLK_OUT_CURR_PORT;
 	cmd->flags = enable & ICE_AQC_SET_PHY_REC_CLK_OUT_OUT_EN;
@@ -5464,11 +5469,11 @@ ice_aq_get_phy_rec_clk_out(struct ice_hw *hw, u8 *phy_output, u8 *port_num,
 			   u8 *flags, u16 *node_handle)
 {
 	struct ice_aqc_get_phy_rec_clk_out *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_phy_rec_clk_out);
-	cmd = &desc.params.get_phy_rec_clk_out;
+	cmd = libie_aq_raw(&desc);
 	cmd->phy_output = *phy_output;
 
 	status = ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
@@ -5496,11 +5501,11 @@ int ice_aq_get_sensor_reading(struct ice_hw *hw,
 			      struct ice_aqc_get_sensor_reading_resp *data)
 {
 	struct ice_aqc_get_sensor_reading *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_sensor_reading);
-	cmd = &desc.params.get_sensor_reading;
+	cmd = libie_aq_raw(&desc);
 #define ICE_INTERNAL_TEMP_SENSOR_FORMAT	0
 #define ICE_INTERNAL_TEMP_SENSOR	0
 	cmd->sensor = ICE_INTERNAL_TEMP_SENSOR;
@@ -5508,7 +5513,7 @@ int ice_aq_get_sensor_reading(struct ice_hw *hw,
 
 	status = ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
 	if (!status)
-		memcpy(data, &desc.params.get_sensor_reading_resp,
+		memcpy(data, &desc.params.raw,
 		       sizeof(*data));
 
 	return status;
@@ -5705,13 +5710,13 @@ ice_aq_read_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
 		u16 bus_addr, __le16 addr, u8 params, u8 *data,
 		struct ice_sq_cd *cd)
 {
-	struct ice_aq_desc desc = { 0 };
+	struct libie_aq_desc desc = { 0 };
 	struct ice_aqc_i2c *cmd;
 	u8 data_size;
 	int status;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_read_i2c);
-	cmd = &desc.params.read_write_i2c;
+	cmd = libie_aq_raw(&desc);
 
 	if (!data)
 		return -EINVAL;
@@ -5728,7 +5733,7 @@ ice_aq_read_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
 		struct ice_aqc_read_i2c_resp *resp;
 		u8 i;
 
-		resp = &desc.params.read_i2c_resp;
+		resp = libie_aq_raw(&desc);
 		for (i = 0; i < data_size; i++) {
 			*data = resp->i2c_data[i];
 			data++;
@@ -5760,12 +5765,12 @@ ice_aq_write_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
 		 u16 bus_addr, __le16 addr, u8 params, const u8 *data,
 		 struct ice_sq_cd *cd)
 {
-	struct ice_aq_desc desc = { 0 };
+	struct libie_aq_desc desc = { 0 };
 	struct ice_aqc_i2c *cmd;
 	u8 data_size;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_write_i2c);
-	cmd = &desc.params.read_write_i2c;
+	cmd = libie_aq_raw(&desc);
 
 	data_size = FIELD_GET(ICE_AQC_I2C_DATA_SIZE_M, params);
 
@@ -5797,7 +5802,7 @@ ice_aq_write_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
 int ice_get_pca9575_handle(struct ice_hw *hw, u16 *pca9575_handle)
 {
 	struct ice_aqc_get_link_topo *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int err;
 	u8 idx;
 
@@ -5820,7 +5825,7 @@ int ice_get_pca9575_handle(struct ice_hw *hw, u16 *pca9575_handle)
 
 	/* If handle was not detected read it from the netlist */
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_link_topo);
-	cmd = &desc.params.get_link_topo;
+	cmd = libie_aq_raw(&desc);
 	cmd->addr.topo_params.node_type_ctx =
 		ICE_AQC_LINK_TOPO_NODE_TYPE_GPIO_CTRL;
 	cmd->addr.topo_params.index = idx;
@@ -5830,13 +5835,12 @@ int ice_get_pca9575_handle(struct ice_hw *hw, u16 *pca9575_handle)
 		return -ENXIO;
 
 	/* Verify if we found the right IO expander type */
-	if (desc.params.get_link_topo.node_part_num !=
-	    ICE_AQC_GET_LINK_TOPO_NODE_NR_PCA9575)
+	if (cmd->node_part_num != ICE_AQC_GET_LINK_TOPO_NODE_NR_PCA9575)
 		return -ENXIO;
 
 	/* If present save the handle and return it */
 	hw->io_expander_handle =
-		le16_to_cpu(desc.params.get_link_topo.addr.handle);
+		le16_to_cpu(cmd->addr.handle);
 	*pca9575_handle = hw->io_expander_handle;
 
 	return 0;
@@ -5887,11 +5891,11 @@ int
 ice_aq_set_gpio(struct ice_hw *hw, u16 gpio_ctrl_handle, u8 pin_idx, bool value,
 		struct ice_sq_cd *cd)
 {
+	struct libie_aq_desc desc;
 	struct ice_aqc_gpio *cmd;
-	struct ice_aq_desc desc;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_gpio);
-	cmd = &desc.params.read_write_gpio;
+	cmd = libie_aq_raw(&desc);
 	cmd->gpio_ctrl_handle = cpu_to_le16(gpio_ctrl_handle);
 	cmd->gpio_num = pin_idx;
 	cmd->gpio_val = value ? 1 : 0;
@@ -5914,12 +5918,12 @@ int
 ice_aq_get_gpio(struct ice_hw *hw, u16 gpio_ctrl_handle, u8 pin_idx,
 		bool *value, struct ice_sq_cd *cd)
 {
+	struct libie_aq_desc desc;
 	struct ice_aqc_gpio *cmd;
-	struct ice_aq_desc desc;
 	int status;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_gpio);
-	cmd = &desc.params.read_write_gpio;
+	cmd = libie_aq_raw(&desc);
 	cmd->gpio_ctrl_handle = cpu_to_le16(gpio_ctrl_handle);
 	cmd->gpio_num = pin_idx;
 
@@ -6082,9 +6086,9 @@ bool ice_is_fw_health_report_supported(struct ice_hw *hw)
 int ice_aq_set_health_status_cfg(struct ice_hw *hw, u8 event_source)
 {
 	struct ice_aqc_set_health_status_cfg *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
-	cmd = &desc.params.set_health_status_cfg;
+	cmd = libie_aq_raw(&desc);
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_health_status_cfg);
 
@@ -6108,16 +6112,16 @@ ice_aq_set_lldp_mib(struct ice_hw *hw, u8 mib_type, void *buf, u16 buf_size,
 		    struct ice_sq_cd *cd)
 {
 	struct ice_aqc_lldp_set_local_mib *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
-	cmd = &desc.params.lldp_set_mib;
+	cmd = libie_aq_raw(&desc);
 
 	if (buf_size == 0 || !buf)
 		return -EINVAL;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_lldp_set_local_mib);
 
-	desc.flags |= cpu_to_le16((u16)ICE_AQ_FLAG_RD);
+	desc.flags |= cpu_to_le16((u16)LIBIE_AQ_FLAG_RD);
 	desc.datalen = cpu_to_le16(buf_size);
 
 	cmd->type = mib_type;
@@ -6153,12 +6157,12 @@ bool ice_fw_supports_lldp_fltr_ctrl(struct ice_hw *hw)
 int ice_lldp_fltr_add_remove(struct ice_hw *hw, struct ice_vsi *vsi, bool add)
 {
 	struct ice_aqc_lldp_filter_ctrl *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
 	if (vsi->type != ICE_VSI_PF || !ice_fw_supports_lldp_fltr_ctrl(hw))
 		return -EOPNOTSUPP;
 
-	cmd = &desc.params.lldp_filter_ctrl;
+	cmd = libie_aq_raw(&desc);
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_lldp_filter_ctrl);
 
@@ -6178,7 +6182,7 @@ int ice_lldp_fltr_add_remove(struct ice_hw *hw, struct ice_vsi *vsi, bool add)
  */
 int ice_lldp_execute_pending_mib(struct ice_hw *hw)
 {
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_lldp_execute_pending_mib);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
index e3959ad442a2..dcb837cadd18 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.c
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
@@ -90,7 +90,7 @@ bool ice_check_sq_alive(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 static int
 ice_alloc_ctrlq_sq_ring(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 {
-	size_t size = cq->num_sq_entries * sizeof(struct ice_aq_desc);
+	size_t size = cq->num_sq_entries * sizeof(struct libie_aq_desc);
 
 	cq->sq.desc_buf.va = dmam_alloc_coherent(ice_hw_to_dev(hw), size,
 						 &cq->sq.desc_buf.pa,
@@ -110,7 +110,7 @@ ice_alloc_ctrlq_sq_ring(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 static int
 ice_alloc_ctrlq_rq_ring(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 {
-	size_t size = cq->num_rq_entries * sizeof(struct ice_aq_desc);
+	size_t size = cq->num_rq_entries * sizeof(struct libie_aq_desc);
 
 	cq->rq.desc_buf.va = dmam_alloc_coherent(ice_hw_to_dev(hw), size,
 						 &cq->rq.desc_buf.pa,
@@ -159,7 +159,7 @@ ice_alloc_rq_bufs(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 
 	/* allocate the mapped buffers */
 	for (i = 0; i < cq->num_rq_entries; i++) {
-		struct ice_aq_desc *desc;
+		struct libie_aq_desc *desc;
 		struct ice_dma_mem *bi;
 
 		bi = &cq->rq.r.rq_bi[i];
@@ -173,9 +173,9 @@ ice_alloc_rq_bufs(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 		/* now configure the descriptors for use */
 		desc = ICE_CTL_Q_DESC(cq->rq, i);
 
-		desc->flags = cpu_to_le16(ICE_AQ_FLAG_BUF);
-		if (cq->rq_buf_size > ICE_AQ_LG_BUF)
-			desc->flags |= cpu_to_le16(ICE_AQ_FLAG_LB);
+		desc->flags = cpu_to_le16(LIBIE_AQ_FLAG_BUF);
+		if (cq->rq_buf_size > LIBIE_AQ_LG_BUF)
+			desc->flags |= cpu_to_le16(LIBIE_AQ_FLAG_LB);
 		desc->opcode = 0;
 		/* This is in accordance with control queue design, there is no
 		 * register for buffer size configuration
@@ -858,7 +858,7 @@ static u16 ice_clean_sq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 {
 	struct ice_ctl_q_ring *sq = &cq->sq;
 	u16 ntc = sq->next_to_clean;
-	struct ice_aq_desc *desc;
+	struct libie_aq_desc *desc;
 
 	desc = ICE_CTL_Q_DESC(*sq, ntc);
 
@@ -912,7 +912,7 @@ static const char *ice_ctl_q_str(enum ice_ctl_q qtype)
 static void ice_debug_cq(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 			 void *desc, void *buf, u16 buf_len, bool response)
 {
-	struct ice_aq_desc *cq_desc = desc;
+	struct libie_aq_desc *cq_desc = desc;
 	u16 datalen, flags;
 
 	if (!IS_ENABLED(CONFIG_DYNAMIC_DEBUG) &&
@@ -939,7 +939,8 @@ static void ice_debug_cq(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	 * by the DD and/or CMP flag set or a command with the RD flag set.
 	 */
 	if (buf && cq_desc->datalen &&
-	    (flags & (ICE_AQ_FLAG_DD | ICE_AQ_FLAG_CMP | ICE_AQ_FLAG_RD))) {
+	    (flags & (LIBIE_AQ_FLAG_DD | LIBIE_AQ_FLAG_CMP |
+		      LIBIE_AQ_FLAG_RD))) {
 		char prefix[] = KBUILD_MODNAME " 0x12341234 0x12341234 ";
 
 		sprintf(prefix, KBUILD_MODNAME " 0x%08X 0x%08X ",
@@ -992,11 +993,11 @@ static bool ice_sq_done(struct ice_hw *hw, struct ice_ctl_q_info *cq)
  */
 int
 ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
-		struct ice_aq_desc *desc, void *buf, u16 buf_size,
+		struct libie_aq_desc *desc, void *buf, u16 buf_size,
 		struct ice_sq_cd *cd)
 {
 	struct ice_dma_mem *dma_buf = NULL;
-	struct ice_aq_desc *desc_on_ring;
+	struct libie_aq_desc *desc_on_ring;
 	bool cmd_completed = false;
 	int status = 0;
 	u16 retval = 0;
@@ -1007,7 +1008,7 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 		return -EBUSY;
 	mutex_lock(&cq->sq_lock);
 
-	cq->sq_last_status = ICE_AQ_RC_OK;
+	cq->sq_last_status = LIBIE_AQ_RC_OK;
 
 	if (!cq->sq.count) {
 		ice_debug(hw, ICE_DBG_AQ_MSG, "Control Send queue not initialized.\n");
@@ -1028,9 +1029,9 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 			goto sq_send_command_error;
 		}
 
-		desc->flags |= cpu_to_le16(ICE_AQ_FLAG_BUF);
-		if (buf_size > ICE_AQ_LG_BUF)
-			desc->flags |= cpu_to_le16(ICE_AQ_FLAG_LB);
+		desc->flags |= cpu_to_le16(LIBIE_AQ_FLAG_BUF);
+		if (buf_size > LIBIE_AQ_LG_BUF)
+			desc->flags |= cpu_to_le16(LIBIE_AQ_FLAG_LB);
 	}
 
 	val = rd32(hw, cq->sq.head);
@@ -1112,9 +1113,9 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 			retval &= 0xff;
 		}
 		cmd_completed = true;
-		if (!status && retval != ICE_AQ_RC_OK)
+		if (!status && retval != LIBIE_AQ_RC_OK)
 			status = -EIO;
-		cq->sq_last_status = (enum ice_aq_err)retval;
+		cq->sq_last_status = (enum libie_aq_err)retval;
 	}
 
 	ice_debug(hw, ICE_DBG_AQ_MSG, "ATQ: desc and buffer writeback:\n");
@@ -1149,12 +1150,12 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
  *
  * Fill the desc with default values
  */
-void ice_fill_dflt_direct_cmd_desc(struct ice_aq_desc *desc, u16 opcode)
+void ice_fill_dflt_direct_cmd_desc(struct libie_aq_desc *desc, u16 opcode)
 {
 	/* zero out the desc */
 	memset(desc, 0, sizeof(*desc));
 	desc->opcode = cpu_to_le16(opcode);
-	desc->flags = cpu_to_le16(ICE_AQ_FLAG_SI);
+	desc->flags = cpu_to_le16(LIBIE_AQ_FLAG_SI);
 }
 
 /**
@@ -1172,9 +1173,9 @@ int
 ice_clean_rq_elem(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 		  struct ice_rq_event_info *e, u16 *pending)
 {
+	enum libie_aq_err rq_last_status;
 	u16 ntc = cq->rq.next_to_clean;
-	enum ice_aq_err rq_last_status;
-	struct ice_aq_desc *desc;
+	struct libie_aq_desc *desc;
 	struct ice_dma_mem *bi;
 	int ret_code = 0;
 	u16 desc_idx;
@@ -1207,9 +1208,9 @@ ice_clean_rq_elem(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	desc = ICE_CTL_Q_DESC(cq->rq, ntc);
 	desc_idx = ntc;
 
-	rq_last_status = (enum ice_aq_err)le16_to_cpu(desc->retval);
+	rq_last_status = (enum libie_aq_err)le16_to_cpu(desc->retval);
 	flags = le16_to_cpu(desc->flags);
-	if (flags & ICE_AQ_FLAG_ERR) {
+	if (flags & LIBIE_AQ_FLAG_ERR) {
 		ret_code = -EIO;
 		ice_debug(hw, ICE_DBG_AQ_MSG, "Control Receive Queue Event 0x%04X received with error 0x%X\n",
 			  le16_to_cpu(desc->opcode), rq_last_status);
@@ -1230,9 +1231,9 @@ ice_clean_rq_elem(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	bi = &cq->rq.r.rq_bi[ntc];
 	memset(desc, 0, sizeof(*desc));
 
-	desc->flags = cpu_to_le16(ICE_AQ_FLAG_BUF);
-	if (cq->rq_buf_size > ICE_AQ_LG_BUF)
-		desc->flags |= cpu_to_le16(ICE_AQ_FLAG_LB);
+	desc->flags = cpu_to_le16(LIBIE_AQ_FLAG_BUF);
+	if (cq->rq_buf_size > LIBIE_AQ_LG_BUF)
+		desc->flags |= cpu_to_le16(LIBIE_AQ_FLAG_LB);
 	desc->datalen = cpu_to_le16(bi->size);
 	desc->params.generic.addr_high = cpu_to_le32(upper_32_bits(bi->pa));
 	desc->params.generic.addr_low = cpu_to_le32(lower_32_bits(bi->pa));
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.c b/drivers/net/ethernet/intel/ice/ice_dcb.c
index 74418c445cc4..a41bc56c3911 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.c
@@ -24,10 +24,10 @@ ice_aq_get_lldp_mib(struct ice_hw *hw, u8 bridge_type, u8 mib_type, void *buf,
 		    struct ice_sq_cd *cd)
 {
 	struct ice_aqc_lldp_get_mib *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
-	cmd = &desc.params.lldp_get_mib;
+	cmd = libie_aq_raw(&desc);
 
 	if (buf_size == 0 || !buf)
 		return -EINVAL;
@@ -64,9 +64,9 @@ ice_aq_cfg_lldp_mib_change(struct ice_hw *hw, bool ena_update,
 			   struct ice_sq_cd *cd)
 {
 	struct ice_aqc_lldp_set_mib_change *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
-	cmd = &desc.params.lldp_set_event;
+	cmd = libie_aq_raw(&desc);
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_lldp_set_mib_change);
 
@@ -95,9 +95,9 @@ ice_aq_stop_lldp(struct ice_hw *hw, bool shutdown_lldp_agent, bool persist,
 		 struct ice_sq_cd *cd)
 {
 	struct ice_aqc_lldp_stop *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
-	cmd = &desc.params.lldp_stop;
+	cmd = libie_aq_raw(&desc);
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_lldp_stop);
 
@@ -121,9 +121,9 @@ ice_aq_stop_lldp(struct ice_hw *hw, bool shutdown_lldp_agent, bool persist,
 int ice_aq_start_lldp(struct ice_hw *hw, bool persist, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_lldp_start *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
-	cmd = &desc.params.lldp_start;
+	cmd = libie_aq_raw(&desc);
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_lldp_start);
 
@@ -677,11 +677,11 @@ ice_aq_start_stop_dcbx(struct ice_hw *hw, bool start_dcbx_agent,
 		       bool *dcbx_agent_status, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_lldp_stop_start_specific_agent *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	u16 opcode;
 	int status;
 
-	cmd = &desc.params.lldp_agent_ctrl;
+	cmd = libie_aq_raw(&desc);
 
 	opcode = ice_aqc_opc_lldp_stop_start_specific_agent;
 
@@ -714,7 +714,7 @@ ice_aq_get_cee_dcb_cfg(struct ice_hw *hw,
 		       struct ice_aqc_get_cee_dcb_cfg_resp *buff,
 		       struct ice_sq_cd *cd)
 {
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_cee_dcb_cfg);
 
@@ -733,13 +733,13 @@ ice_aq_get_cee_dcb_cfg(struct ice_hw *hw,
 int ice_aq_set_pfc_mode(struct ice_hw *hw, u8 pfc_mode, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_set_query_pfc_mode *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
 	if (pfc_mode > ICE_AQC_PFC_DSCP_BASED_PFC)
 		return -EINVAL;
 
-	cmd = &desc.params.set_query_pfc_mode;
+	cmd = libie_aq_raw(&desc);
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_pfc_mode);
 
@@ -914,7 +914,7 @@ static int ice_get_ieee_or_cee_dcb_cfg(struct ice_port_info *pi, u8 dcbx_mode)
 	ret = ice_aq_get_dcb_cfg(pi->hw, ICE_AQ_LLDP_MIB_REMOTE,
 				 ICE_AQ_LLDP_BRID_TYPE_NEAREST_BRID, dcbx_cfg);
 	/* Don't treat ENOENT as an error for Remote MIBs */
-	if (pi->hw->adminq.sq_last_status == ICE_AQ_RC_ENOENT)
+	if (pi->hw->adminq.sq_last_status == LIBIE_AQ_RC_ENOENT)
 		ret = 0;
 
 out:
@@ -941,7 +941,7 @@ int ice_get_dcb_cfg(struct ice_port_info *pi)
 		/* CEE mode */
 		ret = ice_get_ieee_or_cee_dcb_cfg(pi, ICE_DCBX_MODE_CEE);
 		ice_cee_to_dcb_cfg(&cee_cfg, pi);
-	} else if (pi->hw->adminq.sq_last_status == ICE_AQ_RC_ENOENT) {
+	} else if (pi->hw->adminq.sq_last_status == LIBIE_AQ_RC_ENOENT) {
 		/* CEE mode not enabled try querying IEEE data */
 		dcbx_cfg = &pi->qos_cfg.local_dcbx_cfg;
 		dcbx_cfg->dcbx_mode = ICE_DCBX_MODE_IEEE;
@@ -965,7 +965,7 @@ void ice_get_dcb_cfg_from_mib_change(struct ice_port_info *pi,
 	struct ice_aqc_lldp_get_mib *mib;
 	u8 change_type, dcbx_mode;
 
-	mib = (struct ice_aqc_lldp_get_mib *)&event->desc.params.raw;
+	mib = libie_aq_raw(&event->desc);
 
 	change_type = FIELD_GET(ICE_AQ_LLDP_MIB_TYPE_M, mib->type);
 	if (change_type == ICE_AQ_LLDP_MIB_REMOTE)
@@ -1537,12 +1537,12 @@ ice_aq_query_port_ets(struct ice_port_info *pi,
 		      struct ice_sq_cd *cd)
 {
 	struct ice_aqc_query_port_ets *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
 	if (!pi)
 		return -EINVAL;
-	cmd = &desc.params.port_ets;
+	cmd = libie_aq_raw(&desc);
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_query_port_ets);
 	cmd->port_teid = pi->root->info.node_teid;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 67988c7ab08e..db27ad1be90d 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -983,7 +983,7 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 	}
 
 	pi = pf->hw.port_info;
-	mib = (struct ice_aqc_lldp_get_mib *)&event->desc.params.raw;
+	mib = libie_aq_raw(&event->desc);
 
 	/* Ignore if event is not for Nearest Bridge */
 	mib_type = FIELD_GET(ICE_AQ_LLDP_BRID_TYPE_M, mib->type);
diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index 59323c019544..e7ae220158b5 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
@@ -1101,16 +1101,16 @@ struct ice_buf *ice_pkg_buf(struct ice_buf_build *bld)
 	return &bld->buf;
 }
 
-static enum ice_ddp_state ice_map_aq_err_to_ddp_state(enum ice_aq_err aq_err)
+static enum ice_ddp_state ice_map_aq_err_to_ddp_state(enum libie_aq_err aq_err)
 {
 	switch (aq_err) {
-	case ICE_AQ_RC_ENOSEC:
-	case ICE_AQ_RC_EBADSIG:
+	case LIBIE_AQ_RC_ENOSEC:
+	case LIBIE_AQ_RC_EBADSIG:
 		return ICE_DDP_PKG_FILE_SIGNATURE_INVALID;
-	case ICE_AQ_RC_ESVN:
+	case LIBIE_AQ_RC_ESVN:
 		return ICE_DDP_PKG_FILE_REVISION_TOO_LOW;
-	case ICE_AQ_RC_EBADMAN:
-	case ICE_AQ_RC_EBADBUF:
+	case LIBIE_AQ_RC_EBADMAN:
+	case LIBIE_AQ_RC_EBADBUF:
 		return ICE_DDP_PKG_LOAD_ERROR;
 	default:
 		return ICE_DDP_PKG_ERR;
@@ -1180,7 +1180,7 @@ ice_aq_download_pkg(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
 		    u32 *error_info, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_download_pkg *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
 	if (error_offset)
@@ -1188,9 +1188,9 @@ ice_aq_download_pkg(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
 	if (error_info)
 		*error_info = 0;
 
-	cmd = &desc.params.download_pkg;
+	cmd = libie_aq_raw(&desc);
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_download_pkg);
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 
 	if (last_buf)
 		cmd->flags |= ICE_AQC_DOWNLOAD_PKG_LAST_BUF;
@@ -1259,7 +1259,7 @@ static enum ice_ddp_state ice_ddp_send_hunk(struct ice_ddp_send_ctx *ctx,
 	struct ice_buf_hdr *prev_hunk = ctx->hdr;
 	struct ice_hw *hw = ctx->hw;
 	bool prev_was_last = !hunk;
-	enum ice_aq_err aq_err;
+	enum libie_aq_err aq_err;
 	u32 offset, info;
 	int attempt, err;
 
@@ -1278,7 +1278,8 @@ static enum ice_ddp_state ice_ddp_send_hunk(struct ice_ddp_send_ctx *ctx,
 					  prev_was_last, &offset, &info, NULL);
 
 		aq_err = hw->adminq.sq_last_status;
-		if (aq_err != ICE_AQ_RC_ENOSEC && aq_err != ICE_AQ_RC_EBADSIG)
+		if (aq_err != LIBIE_AQ_RC_ENOSEC &&
+		    aq_err != LIBIE_AQ_RC_EBADSIG)
 			break;
 	}
 
@@ -1537,7 +1538,7 @@ ice_post_dwnld_pkg_actions(struct ice_hw *hw)
 static enum ice_ddp_state
 ice_download_pkg_with_sig_seg(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr)
 {
-	enum ice_aq_err aq_err = hw->adminq.sq_last_status;
+	enum libie_aq_err aq_err = hw->adminq.sq_last_status;
 	enum ice_ddp_state state = ICE_DDP_PKG_ERR;
 	struct ice_ddp_send_ctx ctx = { .hw = hw };
 	int status;
@@ -1687,7 +1688,7 @@ static int ice_aq_get_pkg_info_list(struct ice_hw *hw,
 				    struct ice_aqc_get_pkg_info_resp *pkg_info,
 				    u16 buf_size, struct ice_sq_cd *cd)
 {
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_pkg_info_list);
 
@@ -1711,7 +1712,7 @@ static int ice_aq_update_pkg(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
 			     u32 *error_info, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_download_pkg *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
 	if (error_offset)
@@ -1719,9 +1720,9 @@ static int ice_aq_update_pkg(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
 	if (error_info)
 		*error_info = 0;
 
-	cmd = &desc.params.download_pkg;
+	cmd = libie_aq_raw(&desc);
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_update_pkg);
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 
 	if (last_buf)
 		cmd->flags |= ICE_AQC_DOWNLOAD_PKG_LAST_BUF;
@@ -1753,10 +1754,10 @@ static int ice_aq_update_pkg(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
 int ice_aq_upload_section(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
 			  u16 buf_size, struct ice_sq_cd *cd)
 {
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_upload_section);
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 
 	return ice_aq_send_cmd(hw, &desc, pkg_buf, buf_size, cd);
 }
@@ -2333,10 +2334,10 @@ ice_get_set_tx_topo(struct ice_hw *hw, u8 *buf, u16 buf_size,
 		    struct ice_sq_cd *cd, u8 *flags, bool set)
 {
 	struct ice_aqc_get_set_tx_topo *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
-	cmd = &desc.params.get_set_tx_topo;
+	cmd = libie_aq_raw(&desc);
 	if (set) {
 		ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_tx_topo);
 		cmd->set_flags = ICE_AQC_TX_TOPO_FLAGS_ISSUED;
@@ -2345,14 +2346,14 @@ ice_get_set_tx_topo(struct ice_hw *hw, u8 *buf, u16 buf_size,
 			cmd->set_flags |= ICE_AQC_TX_TOPO_FLAGS_SRC_RAM |
 					  ICE_AQC_TX_TOPO_FLAGS_LOAD_NEW;
 
-		desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+		desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 	} else {
 		ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_tx_topo);
 		cmd->get_flags = ICE_AQC_TX_TOPO_GET_RAM;
 
 		if (hw->mac_type == ICE_MAC_E810 ||
 		    hw->mac_type == ICE_MAC_GENERIC)
-			desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+			desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 	}
 
 	status = ice_aq_send_cmd(hw, &desc, buf, buf_size, cd);
@@ -2360,7 +2361,7 @@ ice_get_set_tx_topo(struct ice_hw *hw, u8 *buf, u16 buf_size,
 		return status;
 	/* read the return flag values (first byte) for get operation */
 	if (!set && flags)
-		*flags = desc.params.get_set_tx_topo.set_flags;
+		*flags = cmd->set_flags;
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
index 70c201f569ce..4d9ad92a44fe 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
@@ -299,7 +299,8 @@ int ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_aq_task task = {};
 	struct ice_hw *hw = &pf->hw;
-	struct ice_aq_desc *desc;
+	struct libie_aq_desc *desc;
+	struct ice_aqc_nvm *cmd;
 	u32 completion_offset;
 	int err;
 
@@ -333,11 +334,12 @@ int ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
 	}
 
 	desc = &task.event.desc;
-	completion_module = le16_to_cpu(desc->params.nvm.module_typeid);
+	cmd = libie_aq_raw(desc);
+	completion_module = le16_to_cpu(cmd->module_typeid);
 	completion_retval = le16_to_cpu(desc->retval);
 
-	completion_offset = le16_to_cpu(desc->params.nvm.offset_low);
-	completion_offset |= desc->params.nvm.offset_high << 16;
+	completion_offset = le16_to_cpu(cmd->offset_low);
+	completion_offset |= cmd->offset_high << 16;
 
 	if (completion_module != module) {
 		dev_err(dev, "Unexpected module_typeid in write completion: got 0x%x, expected 0x%x\n",
@@ -356,7 +358,7 @@ int ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
 	if (completion_retval) {
 		dev_err(dev, "Firmware failed to flash module 0x%02x with block of size %u at offset %u, err %s\n",
 			module, block_size, offset,
-			ice_aq_str((enum ice_aq_err)completion_retval));
+			ice_aq_str((enum libie_aq_err)completion_retval));
 		NL_SET_ERR_MSG_MOD(extack, "Firmware failed to program flash module");
 		return -EIO;
 	}
@@ -369,7 +371,7 @@ int ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
 	 */
 	if (reset_level && last_cmd && module == ICE_SR_1ST_NVM_BANK_PTR) {
 		if (hw->dev_caps.common_cap.pcie_reset_avoidance) {
-			*reset_level = desc->params.nvm.cmd_flags &
+			*reset_level = cmd->cmd_flags &
 				       ICE_AQC_NVM_RESET_LVL_M;
 			dev_dbg(dev, "Firmware reported required reset level as %u\n",
 				*reset_level);
@@ -487,7 +489,8 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 module, const char *component,
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_aq_task task = {};
 	struct ice_hw *hw = &pf->hw;
-	struct ice_aq_desc *desc;
+	struct libie_aq_desc *desc;
+	struct ice_aqc_nvm *cmd;
 	struct devlink *devlink;
 	int err;
 
@@ -518,7 +521,8 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 module, const char *component,
 	}
 
 	desc = &task.event.desc;
-	completion_module = le16_to_cpu(desc->params.nvm.module_typeid);
+	cmd = libie_aq_raw(desc);
+	completion_module = le16_to_cpu(cmd->module_typeid);
 	completion_retval = le16_to_cpu(desc->retval);
 
 	if (completion_module != module) {
@@ -532,7 +536,7 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 module, const char *component,
 	if (completion_retval) {
 		dev_err(dev, "Firmware failed to erase %s (module 0x02%x), aq_err %s\n",
 			component, module,
-			ice_aq_str((enum ice_aq_err)completion_retval));
+			ice_aq_str((enum libie_aq_err)completion_retval));
 		NL_SET_ERR_MSG_MOD(extack, "Firmware failed to erase flash");
 		err = -EIO;
 		goto out_notify_devlink;
@@ -611,7 +615,7 @@ ice_switch_flash_banks(struct ice_pf *pf, u8 activate_flags,
 	completion_retval = le16_to_cpu(task.event.desc.retval);
 	if (completion_retval) {
 		dev_err(dev, "Firmware failed to switch active flash banks aq_err %s\n",
-			ice_aq_str((enum ice_aq_err)completion_retval));
+			ice_aq_str((enum libie_aq_err)completion_retval));
 		NL_SET_ERR_MSG_MOD(extack, "Firmware failed to switch active flash banks");
 		return -EIO;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
index 4fd15387a7e5..a31bb026ad34 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
@@ -240,7 +240,7 @@ ice_aq_fwlog_set(struct ice_hw *hw, struct ice_fwlog_module_entry *entries,
 {
 	struct ice_aqc_fw_log_cfg_resp *fw_modules;
 	struct ice_aqc_fw_log *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 	int i;
 
@@ -255,9 +255,9 @@ ice_aq_fwlog_set(struct ice_hw *hw, struct ice_fwlog_module_entry *entries,
 	}
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_fw_logs_config);
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 
-	cmd = &desc.params.fw_log;
+	cmd = libie_aq_raw(&desc);
 
 	cmd->cmd_flags = ICE_AQC_FW_LOG_CONF_SET_VALID;
 	cmd->ops.cfg.log_resolution = cpu_to_le16(log_resolution);
@@ -309,7 +309,7 @@ static int ice_aq_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
 {
 	struct ice_aqc_fw_log_cfg_resp *fw_modules;
 	struct ice_aqc_fw_log *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	u16 module_id_cnt;
 	int status;
 	void *buf;
@@ -322,7 +322,7 @@ static int ice_aq_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
 		return -ENOMEM;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_fw_logs_query);
-	cmd = &desc.params.fw_log;
+	cmd = libie_aq_raw(&desc);
 
 	cmd->cmd_flags = ICE_AQC_FW_LOG_AQ_QUERY;
 
@@ -384,12 +384,14 @@ int ice_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
  */
 static int ice_aq_fwlog_register(struct ice_hw *hw, bool reg)
 {
-	struct ice_aq_desc desc;
+	struct ice_aqc_fw_log *cmd;
+	struct libie_aq_desc desc;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_fw_logs_register);
+	cmd = libie_aq_raw(&desc);
 
 	if (reg)
-		desc.params.fw_log.cmd_flags = ICE_AQC_FW_LOG_AQ_REGISTER;
+		cmd->cmd_flags = ICE_AQC_FW_LOG_AQ_REGISTER;
 
 	return ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 22371011c249..9bd52f1fbf73 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -1102,7 +1102,7 @@ ice_lag_set_swid(u16 primary_swid, struct ice_lag *local_lag,
 {
 	struct ice_aqc_alloc_free_res_elem *buf;
 	struct ice_aqc_set_port_params *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	u16 buf_len, swid;
 	int status, i;
 
@@ -1150,7 +1150,7 @@ ice_lag_set_swid(u16 primary_swid, struct ice_lag *local_lag,
 	else
 		swid = local_lag->pf->hw.port_info->sw_id;
 
-	cmd = &desc.params.set_port_params;
+	cmd = libie_aq_raw(&desc);
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_port_params);
 
 	cmd->swid = cpu_to_le16(ICE_AQC_PORT_SWID_VALID | swid);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index b857717441c3..78be8e9d4151 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3778,13 +3778,13 @@ int ice_set_link(struct ice_vsi *vsi, bool ena)
 
 	status = ice_aq_set_link_restart_an(pi, ena, NULL);
 
-	/* if link is owned by manageability, FW will return ICE_AQ_RC_EMODE.
+	/* if link is owned by manageability, FW will return LIBIE_AQ_RC_EMODE.
 	 * this is not a fatal error, so print a warning message and return
 	 * a success code. Return an error if FW returns an error code other
-	 * than ICE_AQ_RC_EMODE
+	 * than LIBIE_AQ_RC_EMODE
 	 */
 	if (status == -EIO) {
-		if (hw->adminq.sq_last_status == ICE_AQ_RC_EMODE)
+		if (hw->adminq.sq_last_status == LIBIE_AQ_RC_EMODE)
 			dev_dbg(dev, "can't set link to %s, err %d aq_err %s. not fatal, continuing\n",
 				(ena ? "ON" : "OFF"), status,
 				ice_aq_str(hw->adminq.sq_last_status));
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 6184345df5de..cc324a43296e 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -379,7 +379,7 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 		 * should go into promiscuous mode. There should be some
 		 * space reserved for promiscuous filters.
 		 */
-		if (hw->adminq.sq_last_status == ICE_AQ_RC_ENOSPC &&
+		if (hw->adminq.sq_last_status == LIBIE_AQ_RC_ENOSPC &&
 		    !test_and_set_bit(ICE_FLTR_OVERFLOW_PROMISC,
 				      vsi->state)) {
 			promisc_forced_on = true;
@@ -7935,38 +7935,38 @@ static int ice_eth_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
  * ice_aq_str - convert AQ err code to a string
  * @aq_err: the AQ error code to convert
  */
-const char *ice_aq_str(enum ice_aq_err aq_err)
+const char *ice_aq_str(enum libie_aq_err aq_err)
 {
 	switch (aq_err) {
-	case ICE_AQ_RC_OK:
+	case LIBIE_AQ_RC_OK:
 		return "OK";
-	case ICE_AQ_RC_EPERM:
+	case LIBIE_AQ_RC_EPERM:
 		return "ICE_AQ_RC_EPERM";
-	case ICE_AQ_RC_ENOENT:
+	case LIBIE_AQ_RC_ENOENT:
 		return "ICE_AQ_RC_ENOENT";
-	case ICE_AQ_RC_ENOMEM:
+	case LIBIE_AQ_RC_ENOMEM:
 		return "ICE_AQ_RC_ENOMEM";
-	case ICE_AQ_RC_EBUSY:
+	case LIBIE_AQ_RC_EBUSY:
 		return "ICE_AQ_RC_EBUSY";
-	case ICE_AQ_RC_EEXIST:
+	case LIBIE_AQ_RC_EEXIST:
 		return "ICE_AQ_RC_EEXIST";
-	case ICE_AQ_RC_EINVAL:
+	case LIBIE_AQ_RC_EINVAL:
 		return "ICE_AQ_RC_EINVAL";
-	case ICE_AQ_RC_ENOSPC:
+	case LIBIE_AQ_RC_ENOSPC:
 		return "ICE_AQ_RC_ENOSPC";
-	case ICE_AQ_RC_ENOSYS:
+	case LIBIE_AQ_RC_ENOSYS:
 		return "ICE_AQ_RC_ENOSYS";
-	case ICE_AQ_RC_EMODE:
+	case LIBIE_AQ_RC_EMODE:
 		return "ICE_AQ_RC_EMODE";
-	case ICE_AQ_RC_ENOSEC:
+	case LIBIE_AQ_RC_ENOSEC:
 		return "ICE_AQ_RC_ENOSEC";
-	case ICE_AQ_RC_EBADSIG:
+	case LIBIE_AQ_RC_EBADSIG:
 		return "ICE_AQ_RC_EBADSIG";
-	case ICE_AQ_RC_ESVN:
+	case LIBIE_AQ_RC_ESVN:
 		return "ICE_AQ_RC_ESVN";
-	case ICE_AQ_RC_EBADMAN:
+	case LIBIE_AQ_RC_EBADMAN:
 		return "ICE_AQ_RC_EBADMAN";
-	case ICE_AQ_RC_EBADBUF:
+	case LIBIE_AQ_RC_EBADBUF:
 		return "ICE_AQ_RC_EBADBUF";
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index 59e8879ac059..7e187a804dfa 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -22,10 +22,10 @@ int ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset,
 		    u16 length, void *data, bool last_command,
 		    bool read_shadow_ram, struct ice_sq_cd *cd)
 {
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	struct ice_aqc_nvm *cmd;
 
-	cmd = &desc.params.nvm;
+	cmd = libie_aq_raw(&desc);
 
 	if (offset > ICE_AQC_NVM_MAX_OFFSET)
 		return -EINVAL;
@@ -125,10 +125,10 @@ ice_aq_update_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset,
 		  u16 length, void *data, bool last_command, u8 command_flags,
 		  struct ice_sq_cd *cd)
 {
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	struct ice_aqc_nvm *cmd;
 
-	cmd = &desc.params.nvm;
+	cmd = libie_aq_raw(&desc);
 
 	/* In offset the highest byte must be zeroed. */
 	if (offset & 0xFF000000)
@@ -146,7 +146,7 @@ ice_aq_update_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset,
 	cmd->offset_high = (offset >> 16) & 0xFF;
 	cmd->length = cpu_to_le16(length);
 
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 
 	return ice_aq_send_cmd(hw, &desc, data, length, cd);
 }
@@ -161,10 +161,10 @@ ice_aq_update_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset,
  */
 int ice_aq_erase_nvm(struct ice_hw *hw, u16 module_typeid, struct ice_sq_cd *cd)
 {
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	struct ice_aqc_nvm *cmd;
 
-	cmd = &desc.params.nvm;
+	cmd = libie_aq_raw(&desc);
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_nvm_erase);
 
@@ -869,7 +869,7 @@ static int ice_discover_flash_size(struct ice_hw *hw)
 
 		status = ice_read_flat_nvm(hw, offset, &len, &data, false);
 		if (status == -EIO &&
-		    hw->adminq.sq_last_status == ICE_AQ_RC_EINVAL) {
+		    hw->adminq.sq_last_status == LIBIE_AQ_RC_EINVAL) {
 			ice_debug(hw, ICE_DBG_NVM, "%s: New upper bound of %u bytes\n",
 				  __func__, offset);
 			status = 0;
@@ -1182,14 +1182,14 @@ int ice_init_nvm(struct ice_hw *hw)
 int ice_nvm_validate_checksum(struct ice_hw *hw)
 {
 	struct ice_aqc_nvm_checksum *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
 	status = ice_acquire_nvm(hw, ICE_RES_READ);
 	if (status)
 		return status;
 
-	cmd = &desc.params.nvm_checksum;
+	cmd = libie_aq_raw(&desc);
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_nvm_checksum);
 	cmd->flags = ICE_AQC_NVM_CHECKSUM_VERIFY;
@@ -1226,11 +1226,11 @@ int ice_nvm_validate_checksum(struct ice_hw *hw)
  */
 int ice_nvm_write_activate(struct ice_hw *hw, u16 cmd_flags, u8 *response_flags)
 {
+	struct libie_aq_desc desc;
 	struct ice_aqc_nvm *cmd;
-	struct ice_aq_desc desc;
 	int err;
 
-	cmd = &desc.params.nvm;
+	cmd = libie_aq_raw(&desc);
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_nvm_write_activate);
 
 	cmd->cmd_flags = (u8)(cmd_flags & 0xFF);
@@ -1252,7 +1252,7 @@ int ice_nvm_write_activate(struct ice_hw *hw, u16 cmd_flags, u8 *response_flags)
  */
 int ice_aq_nvm_update_empr(struct ice_hw *hw)
 {
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_nvm_update_empr);
 
@@ -1278,15 +1278,15 @@ ice_nvm_set_pkg_data(struct ice_hw *hw, bool del_pkg_data_flag, u8 *data,
 		     u16 length, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_nvm_pkg_data *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
 	if (length != 0 && !data)
 		return -EINVAL;
 
-	cmd = &desc.params.pkg_data;
+	cmd = libie_aq_raw(&desc);
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_nvm_pkg_data);
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 
 	if (del_pkg_data_flag)
 		cmd->cmd_flags |= ICE_AQC_NVM_PKG_DELETE;
@@ -1316,17 +1316,17 @@ ice_nvm_pass_component_tbl(struct ice_hw *hw, u8 *data, u16 length,
 			   u8 *comp_response_code, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_nvm_pass_comp_tbl *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
 	if (!data || !comp_response || !comp_response_code)
 		return -EINVAL;
 
-	cmd = &desc.params.pass_comp_tbl;
+	cmd = libie_aq_raw(&desc);
 
 	ice_fill_dflt_direct_cmd_desc(&desc,
 				      ice_aqc_opc_nvm_pass_component_tbl);
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 
 	cmd->transfer_flag = transfer_flag;
 	status = ice_aq_send_cmd(hw, &desc, data, length, cd);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index ccac84eb34c9..0d17b7564cf7 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -245,7 +245,7 @@ static int ice_read_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 *val)
 	};
 	int err;
 
-	err = ice_sbq_rw_reg(hw, &cgu_msg, ICE_AQ_FLAG_RD);
+	err = ice_sbq_rw_reg(hw, &cgu_msg, LIBIE_AQ_FLAG_RD);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to read CGU register 0x%04x, err %d\n",
 			  addr, err);
@@ -278,7 +278,7 @@ static int ice_write_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 val)
 	};
 	int err;
 
-	err = ice_sbq_rw_reg(hw, &cgu_msg, ICE_AQ_FLAG_RD);
+	err = ice_sbq_rw_reg(hw, &cgu_msg, LIBIE_AQ_FLAG_RD);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to write CGU register 0x%04x, err %d\n",
 			  addr, err);
@@ -966,7 +966,7 @@ static int ice_write_phy_eth56g(struct ice_hw *hw, u8 port, u32 addr, u32 val)
 	};
 	int err;
 
-	err = ice_sbq_rw_reg(hw, &msg, ICE_AQ_FLAG_RD);
+	err = ice_sbq_rw_reg(hw, &msg, LIBIE_AQ_FLAG_RD);
 	if (err)
 		ice_debug(hw, ICE_DBG_PTP, "PTP failed to send msg to phy %d\n",
 			  err);
@@ -993,7 +993,7 @@ static int ice_read_phy_eth56g(struct ice_hw *hw, u8 port, u32 addr, u32 *val)
 	};
 	int err;
 
-	err = ice_sbq_rw_reg(hw, &msg, ICE_AQ_FLAG_RD);
+	err = ice_sbq_rw_reg(hw, &msg, LIBIE_AQ_FLAG_RD);
 	if (err)
 		ice_debug(hw, ICE_DBG_PTP, "PTP failed to send msg to phy %d\n",
 			  err);
@@ -2904,7 +2904,7 @@ ice_read_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 offset, u32 *val)
 	ice_fill_phy_msg_e82x(hw, &msg, port, offset);
 	msg.opcode = ice_sbq_msg_rd;
 
-	err = ice_sbq_rw_reg(hw, &msg, ICE_AQ_FLAG_RD);
+	err = ice_sbq_rw_reg(hw, &msg, LIBIE_AQ_FLAG_RD);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
 			  err);
@@ -2982,7 +2982,7 @@ ice_write_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 offset, u32 val)
 	msg.opcode = ice_sbq_msg_wr;
 	msg.data = val;
 
-	err = ice_sbq_rw_reg(hw, &msg, ICE_AQ_FLAG_RD);
+	err = ice_sbq_rw_reg(hw, &msg, LIBIE_AQ_FLAG_RD);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
 			  err);
@@ -3143,7 +3143,7 @@ ice_read_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 *val)
 
 	msg.opcode = ice_sbq_msg_rd;
 
-	err = ice_sbq_rw_reg(hw, &msg, ICE_AQ_FLAG_RD);
+	err = ice_sbq_rw_reg(hw, &msg, LIBIE_AQ_FLAG_RD);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
 			  err);
@@ -3178,7 +3178,7 @@ ice_write_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 val)
 	msg.opcode = ice_sbq_msg_wr;
 	msg.data = val;
 
-	err = ice_sbq_rw_reg(hw, &msg, ICE_AQ_FLAG_RD);
+	err = ice_sbq_rw_reg(hw, &msg, LIBIE_AQ_FLAG_RD);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
 			  err);
@@ -4829,7 +4829,7 @@ static int ice_read_phy_reg_e810(struct ice_hw *hw, u32 addr, u32 *val)
 	msg.opcode = ice_sbq_msg_rd;
 	msg.dest_dev = ice_sbq_dev_phy_0;
 
-	err = ice_sbq_rw_reg(hw, &msg, ICE_AQ_FLAG_RD);
+	err = ice_sbq_rw_reg(hw, &msg, LIBIE_AQ_FLAG_RD);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
 			  err);
@@ -4860,7 +4860,7 @@ static int ice_write_phy_reg_e810(struct ice_hw *hw, u32 addr, u32 val)
 	msg.dest_dev = ice_sbq_dev_phy_0;
 	msg.data = val;
 
-	err = ice_sbq_rw_reg(hw, &msg, ICE_AQ_FLAG_RD);
+	err = ice_sbq_rw_reg(hw, &msg, LIBIE_AQ_FLAG_RD);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
 			  err);
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index 6ca13c5dcb14..f4ec593f19e6 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -102,13 +102,13 @@ ice_aqc_send_sched_elem_cmd(struct ice_hw *hw, enum ice_adminq_opc cmd_opc,
 			    u16 *elems_resp, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_sched_elem_cmd *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
-	cmd = &desc.params.sched_elem_cmd;
+	cmd = libie_aq_raw(&desc);
 	ice_fill_dflt_direct_cmd_desc(&desc, cmd_opc);
 	cmd->num_elem_req = cpu_to_le16(elems_req);
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 	status = ice_aq_send_cmd(hw, &desc, buf, buf_size, cd);
 	if (!status && elems_resp)
 		*elems_resp = le16_to_cpu(cmd->num_elem_resp);
@@ -371,10 +371,10 @@ ice_aq_get_dflt_topo(struct ice_hw *hw, u8 lport,
 		     u8 *num_branches, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_get_topo *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
-	cmd = &desc.params.get_topo;
+	cmd = libie_aq_raw(&desc);
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_dflt_topo);
 	cmd->port_num = lport;
 	status = ice_aq_send_cmd(hw, &desc, buf, buf_size, cd);
@@ -497,7 +497,7 @@ ice_aq_query_sched_res(struct ice_hw *hw, u16 buf_size,
 		       struct ice_aqc_query_txsched_res_resp *buf,
 		       struct ice_sq_cd *cd)
 {
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_query_sched_res);
 	return ice_aq_send_cmd(hw, &desc, buf, buf_size, cd);
@@ -662,13 +662,13 @@ ice_aq_rl_profile(struct ice_hw *hw, enum ice_adminq_opc opcode,
 		  u16 buf_size, u16 *num_processed, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_rl_profile *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
-	cmd = &desc.params.rl_profile;
+	cmd = libie_aq_raw(&desc);
 
 	ice_fill_dflt_direct_cmd_desc(&desc, opcode);
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 	cmd->num_profiles = cpu_to_le16(num_profiles);
 	status = ice_aq_send_cmd(hw, &desc, buf, buf_size, cd);
 	if (!status && num_processed)
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 0e4dc1a5cff0..8d77c387357b 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1166,10 +1166,12 @@ static u32 ice_globalq_to_pfq(struct ice_pf *pf, u32 globalq)
 void
 ice_vf_lan_overflow_event(struct ice_pf *pf, struct ice_rq_event_info *event)
 {
+	struct ice_aqc_event_lan_overflow *cmd;
 	u32 gldcb_rtctq, queue;
 	struct ice_vf *vf;
 
-	gldcb_rtctq = le32_to_cpu(event->desc.params.lan_overflow.prtdcb_ruptq);
+	cmd = libie_aq_raw(&event->desc);
+	gldcb_rtctq = le32_to_cpu(cmd->prtdcb_ruptq);
 	dev_dbg(ice_pf_to_dev(pf), "GLDCB_RTCTQ: 0x%08x\n", gldcb_rtctq);
 
 	/* event returns device global Rx queue number */
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 9d9a7edd3618..84848f0123e7 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -1511,11 +1511,11 @@ ice_aq_get_sw_cfg(struct ice_hw *hw, struct ice_aqc_get_sw_cfg_resp_elem *buf,
 		  struct ice_sq_cd *cd)
 {
 	struct ice_aqc_get_sw_cfg *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_sw_cfg);
-	cmd = &desc.params.get_sw_conf;
+	cmd = libie_aq_raw(&desc);
 	cmd->element = cpu_to_le16(*req_desc);
 
 	status = ice_aq_send_cmd(hw, &desc, buf, buf_size, cd);
@@ -1541,11 +1541,11 @@ ice_aq_add_vsi(struct ice_hw *hw, struct ice_vsi_ctx *vsi_ctx,
 {
 	struct ice_aqc_add_update_free_vsi_resp *res;
 	struct ice_aqc_add_get_update_free_vsi *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
-	cmd = &desc.params.vsi_cmd;
-	res = &desc.params.add_update_free_vsi_res;
+	cmd = libie_aq_raw(&desc);
+	res = libie_aq_raw(&desc);
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_add_vsi);
 
@@ -1556,7 +1556,7 @@ ice_aq_add_vsi(struct ice_hw *hw, struct ice_vsi_ctx *vsi_ctx,
 
 	cmd->vsi_flags = cpu_to_le16(vsi_ctx->flags);
 
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 
 	status = ice_aq_send_cmd(hw, &desc, &vsi_ctx->info,
 				 sizeof(vsi_ctx->info), cd);
@@ -1585,11 +1585,11 @@ ice_aq_free_vsi(struct ice_hw *hw, struct ice_vsi_ctx *vsi_ctx,
 {
 	struct ice_aqc_add_update_free_vsi_resp *resp;
 	struct ice_aqc_add_get_update_free_vsi *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
-	cmd = &desc.params.vsi_cmd;
-	resp = &desc.params.add_update_free_vsi_res;
+	cmd = libie_aq_raw(&desc);
+	resp = libie_aq_raw(&desc);
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_free_vsi);
 
@@ -1620,17 +1620,17 @@ ice_aq_update_vsi(struct ice_hw *hw, struct ice_vsi_ctx *vsi_ctx,
 {
 	struct ice_aqc_add_update_free_vsi_resp *resp;
 	struct ice_aqc_add_get_update_free_vsi *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
-	cmd = &desc.params.vsi_cmd;
-	resp = &desc.params.add_update_free_vsi_res;
+	cmd = libie_aq_raw(&desc);
+	resp = libie_aq_raw(&desc);
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_update_vsi);
 
 	cmd->vsi_num = cpu_to_le16(vsi_ctx->vsi_num | ICE_AQ_VSI_IS_VALID);
 
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 
 	status = ice_aq_send_cmd(hw, &desc, &vsi_ctx->info,
 				 sizeof(vsi_ctx->info), cd);
@@ -1944,7 +1944,8 @@ int
 ice_aq_sw_rules(struct ice_hw *hw, void *rule_list, u16 rule_list_sz,
 		u8 num_rules, enum ice_adminq_opc opc, struct ice_sq_cd *cd)
 {
-	struct ice_aq_desc desc;
+	struct ice_aqc_sw_rules *cmd;
+	struct libie_aq_desc desc;
 	int status;
 
 	if (opc != ice_aqc_opc_add_sw_rules &&
@@ -1953,13 +1954,13 @@ ice_aq_sw_rules(struct ice_hw *hw, void *rule_list, u16 rule_list_sz,
 		return -EINVAL;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, opc);
+	cmd = libie_aq_raw(&desc);
 
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
-	desc.params.sw_rules.num_rules_fltr_entry_index =
-		cpu_to_le16(num_rules);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
+	cmd->num_rules_fltr_entry_index = cpu_to_le16(num_rules);
 	status = ice_aq_send_cmd(hw, &desc, rule_list, rule_list_sz, cd);
 	if (opc != ice_aqc_opc_add_sw_rules &&
-	    hw->adminq.sq_last_status == ICE_AQ_RC_ENOENT)
+	    hw->adminq.sq_last_status == LIBIE_AQ_RC_ENOENT)
 		status = -ENOENT;
 
 	if (!status) {
@@ -1989,14 +1990,14 @@ ice_aq_add_recipe(struct ice_hw *hw,
 		  u16 num_recipes, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_add_get_recipe *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	u16 buf_size;
 
-	cmd = &desc.params.add_get_recipe;
+	cmd = libie_aq_raw(&desc);
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_add_recipe);
 
 	cmd->num_sub_recipes = cpu_to_le16(num_recipes);
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 
 	buf_size = num_recipes * sizeof(*s_recipe_list);
 
@@ -2026,14 +2027,14 @@ ice_aq_get_recipe(struct ice_hw *hw,
 		  u16 *num_recipes, u16 recipe_root, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_add_get_recipe *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	u16 buf_size;
 	int status;
 
 	if (*num_recipes != ICE_MAX_NUM_RECIPES)
 		return -EINVAL;
 
-	cmd = &desc.params.add_get_recipe;
+	cmd = libie_aq_raw(&desc);
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_recipe);
 
 	cmd->return_index = cpu_to_le16(recipe_root);
@@ -2118,9 +2119,9 @@ ice_aq_map_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u64 r_assoc,
 			     struct ice_sq_cd *cd)
 {
 	struct ice_aqc_recipe_to_profile *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
-	cmd = &desc.params.recipe_to_profile;
+	cmd = libie_aq_raw(&desc);
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_recipe_to_profile);
 	cmd->profile_id = cpu_to_le16(profile_id);
 	/* Set the recipe ID bit in the bitmask to let the device know which
@@ -2144,10 +2145,10 @@ ice_aq_get_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u64 *r_assoc,
 			     struct ice_sq_cd *cd)
 {
 	struct ice_aqc_recipe_to_profile *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 	int status;
 
-	cmd = &desc.params.recipe_to_profile;
+	cmd = libie_aq_raw(&desc);
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_recipe_to_profile);
 	cmd->profile_id = cpu_to_le16(profile_id);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
index 75c8113e58ee..7798a5d4bc9d 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
@@ -23,18 +23,18 @@ ice_aq_send_msg_to_vf(struct ice_hw *hw, u16 vfid, u32 v_opcode, u32 v_retval,
 		      u8 *msg, u16 msglen, struct ice_sq_cd *cd)
 {
 	struct ice_aqc_pf_vf_msg *cmd;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_mbx_opc_send_msg_to_vf);
 
-	cmd = &desc.params.virt;
+	cmd = libie_aq_raw(&desc);
 	cmd->id = cpu_to_le32(vfid);
 
 	desc.cookie_high = cpu_to_le32(v_opcode);
 	desc.cookie_low = cpu_to_le32(v_retval);
 
 	if (msglen)
-		desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+		desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 
 	return ice_sq_send_cmd(hw, &hw->mailboxq, &desc, msg, msglen, cd);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 25a283c93f55..a61f1037226f 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -304,7 +304,7 @@ ice_vc_send_msg_to_vf(struct ice_vf *vf, u32 v_opcode,
 
 	aq_ret = ice_aq_send_msg_to_vf(&pf->hw, vf->vf_id, v_opcode, v_retval,
 				       msg, msglen, NULL);
-	if (aq_ret && pf->hw.mailboxq.sq_last_status != ICE_AQ_RC_ENOSYS) {
+	if (aq_ret && pf->hw.mailboxq.sq_last_status != LIBIE_AQ_RC_ENOSYS) {
 		dev_info(dev, "Unable to send the message to VF %d ret %d aq_err %s\n",
 			 vf->vf_id, aq_ret,
 			 ice_aq_str(pf->hw.mailboxq.sq_last_status));
diff --git a/drivers/net/ethernet/intel/ice/ice_vlan_mode.c b/drivers/net/ethernet/intel/ice/ice_vlan_mode.c
index 1279c1ffe31c..fb526cb84776 100644
--- a/drivers/net/ethernet/intel/ice/ice_vlan_mode.c
+++ b/drivers/net/ethernet/intel/ice/ice_vlan_mode.c
@@ -63,7 +63,7 @@ static int
 ice_aq_get_vlan_mode(struct ice_hw *hw,
 		     struct ice_aqc_get_vlan_mode *get_params)
 {
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
 	if (!get_params)
 		return -EINVAL;
@@ -275,7 +275,7 @@ ice_aq_set_vlan_mode(struct ice_hw *hw,
 		     struct ice_aqc_set_vlan_mode *set_params)
 {
 	u8 rdma_packet, mng_vlan_prot_id;
-	struct ice_aq_desc desc;
+	struct libie_aq_desc desc;
 
 	if (!set_params)
 		return -EINVAL;
@@ -295,7 +295,7 @@ ice_aq_set_vlan_mode(struct ice_hw *hw,
 
 	ice_fill_dflt_direct_cmd_desc(&desc,
 				      ice_aqc_opc_set_vlan_mode_parameters);
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
 
 	return ice_aq_send_cmd(hw, &desc, set_params, sizeof(*set_params),
 			       NULL);
-- 
2.42.0

