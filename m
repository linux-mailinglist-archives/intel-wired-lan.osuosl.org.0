Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C28A98F134
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Oct 2024 16:18:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A8C2581EEA;
	Thu,  3 Oct 2024 14:18:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GrBWFyx9MNnP; Thu,  3 Oct 2024 14:18:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0114281EB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727965126;
	bh=kfLKvd0sVF853aPDA9XPWY2+gILqUtQVwi3jo6y9Zm0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VzVUIP2VUIe7MYgJsziX2PTeJozhG5dXgzefe9YB1X3Mij9baJXoTX0LY0J9Y26Ur
	 RBjfhxo4PZwTsaemTvuOet+6npl5vSSzYs6EIAbCQOXj771kPCN8csgWaWZRKbbncs
	 BAjRW/dWQz0jyEgT9T1O43LBaz8UPe/YnbyGQF5+JtpvB6rlg1Zm6A7I8XXV8JicqV
	 Ey2uwqohv81x/V+RWFXW8uDEfiZB9LGsDy8xYNkGRJ0XNNqqkn+Gm5pzGWkvNx0xH+
	 USlwDEa5+gbwJ0k7xkWoXrD3vE5w5Ex/VrHIDdpiapvHiOrX4qWrmLh443oCzGdgXd
	 h6ZQ31aF2m6gA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0114281EB4;
	Thu,  3 Oct 2024 14:18:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EE7541BF285
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 14:18:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E9A43405AE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 14:18:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VChZnsxRIkdu for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Oct 2024 14:18:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 15EB9405AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15EB9405AC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 15EB9405AC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 14:18:42 +0000 (UTC)
X-CSE-ConnectionGUID: oHmb5JY6RJCg8Ram6S53tw==
X-CSE-MsgGUID: p8YIW787RMCHIDiOw5ik8w==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="52567140"
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="52567140"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 07:18:42 -0700
X-CSE-ConnectionGUID: dllyQIXJSuqCqpzJHj921g==
X-CSE-MsgGUID: L+3Sus+zSG6lTFmLBwGItQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="74793918"
Received: from pkwapuli-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.245.117.83])
 by orviesa007.jf.intel.com with ESMTP; 03 Oct 2024 07:18:41 -0700
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  3 Oct 2024 16:16:45 +0200
Message-ID: <20241003141650.16524-3-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <20241003141650.16524-1-piotr.kwapulinski@intel.com>
References: <20241003141650.16524-1-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727965123; x=1759501123;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jPRyTBFoSRryTSFSv6aG/ijfPTHjfKDU6I7S3FjT8l4=;
 b=hATJZMp87D5WWHWzOFEXHFhDIsgd6qvLANEkAKib4qS3qFX+CTpd2CfM
 qR7Px+XamZnZ+TGQvB27lMvNvJE1w16+LEPkQ9Wa+HIKAh2cjjFRZ4xeF
 KzEDHo2gyIUzGuSlwQuVOvw2ycG3mdU+8a/7aer1S48g74tLMr/GWJFPC
 t+Rasw37j002IpItjS1+IEwc5AXwhAvgz9EJaim0v0i6X4RdxsQBTLUVU
 safGARa1AJPYBoJR/SK+wiNhzBFUKYxxnyLmmEDVjHwcg+c7ITHzLrRaC
 CW1eUgjxdrnC2XYRNnEYZOKl2svc2KfpyhMIWsKWs/SJeBp8JCFY68j/Y
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hATJZMp8
Subject: [Intel-wired-lan] [PATCH iwl-next v9 2/7] ixgbe: Add support for
 E610 device capabilities detection
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
Cc: Piotr Kwapulinski <piotr.kwapulinski@intel.com>, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Jan Sokolowski <jan.sokolowski@intel.com>,
 Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add low level support for E610 device capabilities detection. The
capabilities are discovered via the Admin Command Interface. Discover the
following capabilities:
- function caps: vmdq, dcb, rss, rx/tx qs, msix, nvm, orom, reset
- device caps: vsi, fdir, 1588
- phy caps

Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 540 ++++++++++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |  12 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   8 +
 3 files changed, 560 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 28bd7da..3bc88df 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -493,3 +493,543 @@ void ixgbe_release_res(struct ixgbe_hw *hw, enum ixgbe_aci_res_ids res)
 		total_delay++;
 	}
 }
+
+/**
+ * ixgbe_parse_e610_caps - Parse common device/function capabilities
+ * @hw: pointer to the HW struct
+ * @caps: pointer to common capabilities structure
+ * @elem: the capability element to parse
+ * @prefix: message prefix for tracing capabilities
+ *
+ * Given a capability element, extract relevant details into the common
+ * capability structure.
+ *
+ * Return: true if the capability matches one of the common capability ids,
+ * false otherwise.
+ */
+static bool ixgbe_parse_e610_caps(struct ixgbe_hw *hw,
+				  struct ixgbe_hw_caps *caps,
+				  struct ixgbe_aci_cmd_list_caps_elem *elem,
+				  const char *prefix)
+{
+	u32 logical_id = elem->logical_id;
+	u32 phys_id = elem->phys_id;
+	u32 number = elem->number;
+	u16 cap = elem->cap;
+
+	switch (cap) {
+	case IXGBE_ACI_CAPS_VALID_FUNCTIONS:
+		caps->valid_functions = number;
+		break;
+	case IXGBE_ACI_CAPS_SRIOV:
+		caps->sr_iov_1_1 = (number == 1);
+		break;
+	case IXGBE_ACI_CAPS_VMDQ:
+		caps->vmdq = (number == 1);
+		break;
+	case IXGBE_ACI_CAPS_DCB:
+		caps->dcb = (number == 1);
+		caps->active_tc_bitmap = logical_id;
+		caps->maxtc = phys_id;
+		break;
+	case IXGBE_ACI_CAPS_RSS:
+		caps->rss_table_size = number;
+		caps->rss_table_entry_width = logical_id;
+		break;
+	case IXGBE_ACI_CAPS_RXQS:
+		caps->num_rxq = number;
+		caps->rxq_first_id = phys_id;
+		break;
+	case IXGBE_ACI_CAPS_TXQS:
+		caps->num_txq = number;
+		caps->txq_first_id = phys_id;
+		break;
+	case IXGBE_ACI_CAPS_MSIX:
+		caps->num_msix_vectors = number;
+		caps->msix_vector_first_id = phys_id;
+		break;
+	case IXGBE_ACI_CAPS_NVM_VER:
+		break;
+	case IXGBE_ACI_CAPS_MAX_MTU:
+		caps->max_mtu = number;
+		break;
+	case IXGBE_ACI_CAPS_PCIE_RESET_AVOIDANCE:
+		caps->pcie_reset_avoidance = (number > 0);
+		break;
+	case IXGBE_ACI_CAPS_POST_UPDATE_RESET_RESTRICT:
+		caps->reset_restrict_support = (number == 1);
+		break;
+	case IXGBE_ACI_CAPS_EXT_TOPO_DEV_IMG0:
+	case IXGBE_ACI_CAPS_EXT_TOPO_DEV_IMG1:
+	case IXGBE_ACI_CAPS_EXT_TOPO_DEV_IMG2:
+	case IXGBE_ACI_CAPS_EXT_TOPO_DEV_IMG3:
+	{
+		u8 index = cap - IXGBE_ACI_CAPS_EXT_TOPO_DEV_IMG0;
+
+		caps->ext_topo_dev_img_ver_high[index] = number;
+		caps->ext_topo_dev_img_ver_low[index] = logical_id;
+		caps->ext_topo_dev_img_part_num[index] =
+			FIELD_GET(IXGBE_EXT_TOPO_DEV_IMG_PART_NUM_M, phys_id);
+		caps->ext_topo_dev_img_load_en[index] =
+			(phys_id & IXGBE_EXT_TOPO_DEV_IMG_LOAD_EN) != 0;
+		caps->ext_topo_dev_img_prog_en[index] =
+			(phys_id & IXGBE_EXT_TOPO_DEV_IMG_PROG_EN) != 0;
+		break;
+	}
+	default:
+		/* Not one of the recognized common capabilities */
+		return false;
+	}
+
+	return true;
+}
+
+/**
+ * ixgbe_parse_valid_functions_cap - Parse IXGBE_ACI_CAPS_VALID_FUNCTIONS caps
+ * @hw: pointer to the HW struct
+ * @dev_p: pointer to device capabilities structure
+ * @cap: capability element to parse
+ *
+ * Parse IXGBE_ACI_CAPS_VALID_FUNCTIONS for device capabilities.
+ */
+static void
+ixgbe_parse_valid_functions_cap(struct ixgbe_hw *hw,
+				struct ixgbe_hw_dev_caps *dev_p,
+				struct ixgbe_aci_cmd_list_caps_elem *cap)
+{
+	u32 number = cap->number;
+
+	dev_p->num_funcs = hweight32(number);
+}
+
+/**
+ * ixgbe_parse_vf_dev_caps - Parse IXGBE_ACI_CAPS_VF device caps
+ * @hw: pointer to the HW struct
+ * @dev_p: pointer to device capabilities structure
+ * @cap: capability element to parse
+ *
+ * Parse IXGBE_ACI_CAPS_VF for device capabilities.
+ */
+static void ixgbe_parse_vf_dev_caps(struct ixgbe_hw *hw,
+				    struct ixgbe_hw_dev_caps *dev_p,
+				    struct ixgbe_aci_cmd_list_caps_elem *cap)
+{
+	u32 number = cap->number;
+
+	dev_p->num_vfs_exposed = number;
+}
+
+/**
+ * ixgbe_parse_vsi_dev_caps - Parse IXGBE_ACI_CAPS_VSI device caps
+ * @hw: pointer to the HW struct
+ * @dev_p: pointer to device capabilities structure
+ * @cap: capability element to parse
+ *
+ * Parse IXGBE_ACI_CAPS_VSI for device capabilities.
+ */
+static void ixgbe_parse_vsi_dev_caps(struct ixgbe_hw *hw,
+				     struct ixgbe_hw_dev_caps *dev_p,
+				     struct ixgbe_aci_cmd_list_caps_elem *cap)
+{
+	u32 number = cap->number;
+
+	dev_p->num_vsi_allocd_to_host = number;
+}
+
+/**
+ * ixgbe_parse_fdir_dev_caps - Parse IXGBE_ACI_CAPS_FD device caps
+ * @hw: pointer to the HW struct
+ * @dev_p: pointer to device capabilities structure
+ * @cap: capability element to parse
+ *
+ * Parse IXGBE_ACI_CAPS_FD for device capabilities.
+ */
+static void ixgbe_parse_fdir_dev_caps(struct ixgbe_hw *hw,
+				      struct ixgbe_hw_dev_caps *dev_p,
+				      struct ixgbe_aci_cmd_list_caps_elem *cap)
+{
+	u32 number = cap->number;
+
+	dev_p->num_flow_director_fltr = number;
+}
+
+/**
+ * ixgbe_parse_dev_caps - Parse device capabilities
+ * @hw: pointer to the HW struct
+ * @dev_p: pointer to device capabilities structure
+ * @buf: buffer containing the device capability records
+ * @cap_count: the number of capabilities
+ *
+ * Helper device to parse device (0x000B) capabilities list. For
+ * capabilities shared between device and function, this relies on
+ * ixgbe_parse_e610_caps.
+ *
+ * Loop through the list of provided capabilities and extract the relevant
+ * data into the device capabilities structured.
+ */
+static void ixgbe_parse_dev_caps(struct ixgbe_hw *hw,
+				 struct ixgbe_hw_dev_caps *dev_p,
+				 void *buf, u32 cap_count)
+{
+	struct ixgbe_aci_cmd_list_caps_elem *cap_resp;
+	u32 i;
+
+	cap_resp = (struct ixgbe_aci_cmd_list_caps_elem *)buf;
+
+	memset(dev_p, 0, sizeof(*dev_p));
+
+	for (i = 0; i < cap_count; i++) {
+		u16 cap = cap_resp[i].cap;
+
+		ixgbe_parse_e610_caps(hw, &dev_p->common_cap, &cap_resp[i],
+				      "dev caps");
+
+		switch (cap) {
+		case IXGBE_ACI_CAPS_VALID_FUNCTIONS:
+			ixgbe_parse_valid_functions_cap(hw, dev_p,
+							&cap_resp[i]);
+			break;
+		case IXGBE_ACI_CAPS_VF:
+			ixgbe_parse_vf_dev_caps(hw, dev_p, &cap_resp[i]);
+			break;
+		case IXGBE_ACI_CAPS_VSI:
+			ixgbe_parse_vsi_dev_caps(hw, dev_p, &cap_resp[i]);
+			break;
+		case  IXGBE_ACI_CAPS_FD:
+			ixgbe_parse_fdir_dev_caps(hw, dev_p, &cap_resp[i]);
+			break;
+		default:
+			/* Don't list common capabilities as unknown */
+			break;
+		}
+	}
+}
+
+/**
+ * ixgbe_parse_vf_func_caps - Parse IXGBE_ACI_CAPS_VF function caps
+ * @hw: pointer to the HW struct
+ * @func_p: pointer to function capabilities structure
+ * @cap: pointer to the capability element to parse
+ *
+ * Extract function capabilities for IXGBE_ACI_CAPS_VF.
+ */
+static void ixgbe_parse_vf_func_caps(struct ixgbe_hw *hw,
+				     struct ixgbe_hw_func_caps *func_p,
+				     struct ixgbe_aci_cmd_list_caps_elem *cap)
+{
+	u32 logical_id = cap->logical_id;
+	u32 number = cap->number;
+
+	func_p->num_allocd_vfs = number;
+	func_p->vf_base_id = logical_id;
+}
+
+/**
+ * ixgbe_get_num_per_func - determine number of resources per PF
+ * @hw: pointer to the HW structure
+ * @max: value to be evenly split between each PF
+ *
+ * Determine the number of valid functions by going through the bitmap returned
+ * from parsing capabilities and use this to calculate the number of resources
+ * per PF based on the max value passed in.
+ *
+ * Return: the number of resources per PF or 0, if no PH are available.
+ */
+static u32 ixgbe_get_num_per_func(struct ixgbe_hw *hw, u32 max)
+{
+#define IXGBE_CAPS_VALID_FUNCS_M	GENMASK(7, 0)
+	u8 funcs = hweight8(hw->dev_caps.common_cap.valid_functions &
+			    IXGBE_CAPS_VALID_FUNCS_M);
+
+	return funcs ? (max / funcs) : 0;
+}
+
+/**
+ * ixgbe_parse_vsi_func_caps - Parse IXGBE_ACI_CAPS_VSI function caps
+ * @hw: pointer to the HW struct
+ * @func_p: pointer to function capabilities structure
+ * @cap: pointer to the capability element to parse
+ *
+ * Extract function capabilities for IXGBE_ACI_CAPS_VSI.
+ */
+static void ixgbe_parse_vsi_func_caps(struct ixgbe_hw *hw,
+				      struct ixgbe_hw_func_caps *func_p,
+				      struct ixgbe_aci_cmd_list_caps_elem *cap)
+{
+	func_p->guar_num_vsi = ixgbe_get_num_per_func(hw, IXGBE_MAX_VSI);
+}
+
+/**
+ * ixgbe_parse_func_caps - Parse function capabilities
+ * @hw: pointer to the HW struct
+ * @func_p: pointer to function capabilities structure
+ * @buf: buffer containing the function capability records
+ * @cap_count: the number of capabilities
+ *
+ * Helper function to parse function (0x000A) capabilities list. For
+ * capabilities shared between device and function, this relies on
+ * ixgbe_parse_e610_caps.
+ *
+ * Loop through the list of provided capabilities and extract the relevant
+ * data into the function capabilities structured.
+ */
+static void ixgbe_parse_func_caps(struct ixgbe_hw *hw,
+				  struct ixgbe_hw_func_caps *func_p,
+				  void *buf, u32 cap_count)
+{
+	struct ixgbe_aci_cmd_list_caps_elem *cap_resp;
+	u32 i;
+
+	cap_resp = (struct ixgbe_aci_cmd_list_caps_elem *)buf;
+
+	memset(func_p, 0, sizeof(*func_p));
+
+	for (i = 0; i < cap_count; i++) {
+		u16 cap = cap_resp[i].cap;
+
+		ixgbe_parse_e610_caps(hw, &func_p->common_cap,
+				      &cap_resp[i], "func caps");
+
+		switch (cap) {
+		case IXGBE_ACI_CAPS_VF:
+			ixgbe_parse_vf_func_caps(hw, func_p, &cap_resp[i]);
+			break;
+		case IXGBE_ACI_CAPS_VSI:
+			ixgbe_parse_vsi_func_caps(hw, func_p, &cap_resp[i]);
+			break;
+		default:
+			/* Don't list common capabilities as unknown */
+			break;
+		}
+	}
+}
+
+/**
+ * ixgbe_aci_list_caps - query function/device capabilities
+ * @hw: pointer to the HW struct
+ * @buf: a buffer to hold the capabilities
+ * @buf_size: size of the buffer
+ * @cap_count: if not NULL, set to the number of capabilities reported
+ * @opc: capabilities type to discover, device or function
+ *
+ * Get the function (0x000A) or device (0x000B) capabilities description from
+ * firmware and store it in the buffer.
+ *
+ * If the cap_count pointer is not NULL, then it is set to the number of
+ * capabilities firmware will report. Note that if the buffer size is too
+ * small, it is possible the command will return -ENOMEM. The
+ * cap_count will still be updated in this case. It is recommended that the
+ * buffer size be set to IXGBE_ACI_MAX_BUFFER_SIZE (the largest possible
+ * buffer that firmware could return) to avoid this.
+ *
+ * Return: the exit code of the operation.
+ * Exit code of -ENOMEM means the buffer size is too small.
+ */
+int ixgbe_aci_list_caps(struct ixgbe_hw *hw, void *buf, u16 buf_size,
+			u32 *cap_count, enum ixgbe_aci_opc opc)
+{
+	struct ixgbe_aci_cmd_list_caps *cmd;
+	struct ixgbe_aci_desc desc;
+	int err;
+
+	cmd = &desc.params.get_cap;
+
+	if (opc != ixgbe_aci_opc_list_func_caps &&
+	    opc != ixgbe_aci_opc_list_dev_caps)
+		return -EINVAL;
+
+	ixgbe_fill_dflt_direct_cmd_desc(&desc, opc);
+	err = ixgbe_aci_send_cmd(hw, &desc, buf, buf_size);
+
+	if (cap_count)
+		*cap_count = cmd->count;
+
+	return err;
+}
+
+/**
+ * ixgbe_discover_dev_caps - Read and extract device capabilities
+ * @hw: pointer to the hardware structure
+ * @dev_caps: pointer to device capabilities structure
+ *
+ * Read the device capabilities and extract them into the dev_caps structure
+ * for later use.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_discover_dev_caps(struct ixgbe_hw *hw,
+			    struct ixgbe_hw_dev_caps *dev_caps)
+{
+	u8 *cbuf __free(kfree);
+	u32 cap_count;
+	int err;
+
+	cbuf = kzalloc(IXGBE_ACI_MAX_BUFFER_SIZE, GFP_KERNEL);
+	if (!cbuf)
+		return -ENOMEM;
+	/* Although the driver doesn't know the number of capabilities the
+	 * device will return, we can simply send a 4KB buffer, the maximum
+	 * possible size that firmware can return.
+	 */
+	cap_count = IXGBE_ACI_MAX_BUFFER_SIZE /
+		    sizeof(struct ixgbe_aci_cmd_list_caps_elem);
+
+	err = ixgbe_aci_list_caps(hw, cbuf, IXGBE_ACI_MAX_BUFFER_SIZE,
+				  &cap_count,
+				  ixgbe_aci_opc_list_dev_caps);
+	if (err)
+		return err;
+
+	ixgbe_parse_dev_caps(hw, dev_caps, cbuf, cap_count);
+
+	return 0;
+}
+
+/**
+ * ixgbe_discover_func_caps - Read and extract function capabilities
+ * @hw: pointer to the hardware structure
+ * @func_caps: pointer to function capabilities structure
+ *
+ * Read the function capabilities and extract them into the func_caps structure
+ * for later use.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_discover_func_caps(struct ixgbe_hw *hw,
+			     struct ixgbe_hw_func_caps *func_caps)
+{
+	u8 *cbuf __free(kfree);
+	u32 cap_count;
+	int err;
+
+	cbuf = kzalloc(IXGBE_ACI_MAX_BUFFER_SIZE, GFP_KERNEL);
+	if (!cbuf)
+		return -ENOMEM;
+
+	/* Although the driver doesn't know the number of capabilities the
+	 * device will return, we can simply send a 4KB buffer, the maximum
+	 * possible size that firmware can return.
+	 */
+	cap_count = IXGBE_ACI_MAX_BUFFER_SIZE /
+		    sizeof(struct ixgbe_aci_cmd_list_caps_elem);
+
+	err = ixgbe_aci_list_caps(hw, cbuf, IXGBE_ACI_MAX_BUFFER_SIZE,
+				  &cap_count,
+				  ixgbe_aci_opc_list_func_caps);
+	if (err)
+		return err;
+
+	ixgbe_parse_func_caps(hw, func_caps, cbuf, cap_count);
+
+	return 0;
+}
+
+/**
+ * ixgbe_get_caps - get info about the HW
+ * @hw: pointer to the hardware structure
+ *
+ * Retrieve both device and function capabilities.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_get_caps(struct ixgbe_hw *hw)
+{
+	int err;
+
+	err = ixgbe_discover_dev_caps(hw, &hw->dev_caps);
+	if (err)
+		return err;
+
+	return ixgbe_discover_func_caps(hw, &hw->func_caps);
+}
+
+/**
+ * ixgbe_aci_disable_rxen - disable RX
+ * @hw: pointer to the HW struct
+ *
+ * Request a safe disable of Receive Enable using ACI command (0x000C).
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_aci_disable_rxen(struct ixgbe_hw *hw)
+{
+	struct ixgbe_aci_cmd_disable_rxen *cmd;
+	struct ixgbe_aci_desc desc;
+
+	cmd = &desc.params.disable_rxen;
+
+	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_disable_rxen);
+
+	cmd->lport_num = hw->bus.func;
+
+	return ixgbe_aci_send_cmd(hw, &desc, NULL, 0);
+}
+
+/**
+ * ixgbe_aci_get_phy_caps - returns PHY capabilities
+ * @hw: pointer to the HW struct
+ * @qual_mods: report qualified modules
+ * @report_mode: report mode capabilities
+ * @pcaps: structure for PHY capabilities to be filled
+ *
+ * Returns the various PHY capabilities supported on the Port
+ * using ACI command (0x0600).
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_aci_get_phy_caps(struct ixgbe_hw *hw, bool qual_mods, u8 report_mode,
+			   struct ixgbe_aci_cmd_get_phy_caps_data *pcaps)
+{
+	struct ixgbe_aci_cmd_get_phy_caps *cmd;
+	u16 pcaps_size = sizeof(*pcaps);
+	struct ixgbe_aci_desc desc;
+	int err;
+
+	cmd = &desc.params.get_phy;
+
+	if (!pcaps || (report_mode & ~IXGBE_ACI_REPORT_MODE_M))
+		return -EINVAL;
+
+	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_get_phy_caps);
+
+	if (qual_mods)
+		cmd->param0 |= IXGBE_ACI_GET_PHY_RQM;
+
+	cmd->param0 |= report_mode;
+	err = ixgbe_aci_send_cmd(hw, &desc, pcaps, pcaps_size);
+
+	if (!err && report_mode == IXGBE_ACI_REPORT_TOPO_CAP_MEDIA) {
+		hw->phy.phy_type_low = pcaps->phy_type_low;
+		hw->phy.phy_type_high = pcaps->phy_type_high;
+		memcpy(hw->link.link_info.module_type, &pcaps->module_type,
+		       sizeof(hw->link.link_info.module_type));
+	}
+
+	return err;
+}
+
+/**
+ * ixgbe_copy_phy_caps_to_cfg - Copy PHY ability data to configuration data
+ * @caps: PHY ability structure to copy data from
+ * @cfg: PHY configuration structure to copy data to
+ *
+ * Helper function to copy data from PHY capabilities data structure
+ * to PHY configuration data structure
+ */
+void ixgbe_copy_phy_caps_to_cfg(struct ixgbe_aci_cmd_get_phy_caps_data *caps,
+				struct ixgbe_aci_cmd_set_phy_cfg_data *cfg)
+{
+	if (!caps || !cfg)
+		return;
+
+	memset(cfg, 0, sizeof(*cfg));
+	cfg->phy_type_low = caps->phy_type_low;
+	cfg->phy_type_high = caps->phy_type_high;
+	cfg->caps = caps->caps;
+	cfg->low_power_ctrl_an = caps->low_power_ctrl_an;
+	cfg->eee_cap = caps->eee_cap;
+	cfg->eeer_value = caps->eeer_value;
+	cfg->link_fec_opt = caps->link_fec_options;
+	cfg->module_compliance_enforcement =
+		caps->module_compliance_enforcement;
+}
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
index 18b831b..5c5a676 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
@@ -15,5 +15,17 @@ void ixgbe_fill_dflt_direct_cmd_desc(struct ixgbe_aci_desc *desc, u16 opcode);
 int ixgbe_acquire_res(struct ixgbe_hw *hw, enum ixgbe_aci_res_ids res,
 		      enum ixgbe_aci_res_access_type access, u32 timeout);
 void ixgbe_release_res(struct ixgbe_hw *hw, enum ixgbe_aci_res_ids res);
+int ixgbe_aci_list_caps(struct ixgbe_hw *hw, void *buf, u16 buf_size,
+			u32 *cap_count, enum ixgbe_aci_opc opc);
+int ixgbe_discover_dev_caps(struct ixgbe_hw *hw,
+			    struct ixgbe_hw_dev_caps *dev_caps);
+int ixgbe_discover_func_caps(struct ixgbe_hw *hw,
+			     struct ixgbe_hw_func_caps *func_caps);
+int ixgbe_get_caps(struct ixgbe_hw *hw);
+int ixgbe_aci_disable_rxen(struct ixgbe_hw *hw);
+int ixgbe_aci_get_phy_caps(struct ixgbe_hw *hw, bool qual_mods, u8 report_mode,
+			   struct ixgbe_aci_cmd_get_phy_caps_data *pcaps);
+void ixgbe_copy_phy_caps_to_cfg(struct ixgbe_aci_cmd_get_phy_caps_data *caps,
+				struct ixgbe_aci_cmd_set_phy_cfg_data *cfg);
 
 #endif /* _IXGBE_E610_H_ */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 8b8404d..0302a21 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -43,6 +43,7 @@
 #include "ixgbe.h"
 #include "ixgbe_common.h"
 #include "ixgbe_dcb_82599.h"
+#include "ixgbe_e610.h"
 #include "ixgbe_phy.h"
 #include "ixgbe_sriov.h"
 #include "ixgbe_model.h"
@@ -10932,6 +10933,13 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (err)
 		goto err_sw_init;
 
+	if (adapter->hw.mac.type == ixgbe_mac_e610) {
+		err = ixgbe_get_caps(&adapter->hw);
+		if (err)
+			dev_err(&pdev->dev,
+				"ixgbe_get_caps failed %d\n", err);
+	}
+
 	if (adapter->hw.mac.type == ixgbe_mac_82599EB)
 		adapter->flags2 |= IXGBE_FLAG2_AUTO_DISABLE_VF;
 
-- 
2.43.0

