Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 719D564A495
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Dec 2022 17:08:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E794A60E25;
	Mon, 12 Dec 2022 16:08:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E794A60E25
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670861301;
	bh=ORR1Cx6kyS2ibdNfs1Qgc0k9HtdKon0TVHIjzKlvX1Y=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=JWg9L56o26clJR+P05iDVT22Q8fujyqZ8JOT9Z7YFez6SU5I4HHOWx460aLxH1EZk
	 5mG3DEx0YgVl+pEF9R5flnmquj8BEWUQS3dsPXzBWczLrxl5syE0QRJc0G+tsmzSpP
	 NSbW98P3G0L2CESjZjX9VjLSqbMtgtHhkHkGpkS8atvgHZPZhHjpsCKCzjR3QET7OT
	 KCK1xhqewaVmLtx2BbJ/4i39vwlU511yl6qcLg/xILFwuLTefaZeoc6HZ4mK5iyjuh
	 xhoLV8c0trB2+MApBoKdx6r14/oHY05x+1VZGDBjNoaPPI/TQTEM2RieTOqRO06ULK
	 wPPEJKfPF/xXA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eqgoeuDlG2PN; Mon, 12 Dec 2022 16:08:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2FCFF600D1;
	Mon, 12 Dec 2022 16:08:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2FCFF600D1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0D6341BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 15:38:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D4625404F8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 15:38:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D4625404F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7Mmyax9Y8uCy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Dec 2022 15:38:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1631D409E6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1631D409E6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 15:38:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="319024401"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="319024401"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 07:38:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="711722499"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="711722499"
Received: from stemerk-ws.elements.local ([10.102.102.30])
 by fmsmga008.fm.intel.com with ESMTP; 12 Dec 2022 07:38:11 -0800
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 12 Dec 2022 16:52:40 +0100
Message-Id: <20221212155240.1316504-1-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 12 Dec 2022 16:08:01 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670859495; x=1702395495;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SEIVW3tlF+Inobh1//UgLksEDt/knxdCiIbu+z+uTA0=;
 b=BAJ8hKTVlSe9srLPplnBl+e/CSo8bY7r+Fy8XmWJgi2ssV0dPPwqAjRH
 HU0F9t15yGN6X1T1xQ5QnltIhiPMZM+//xtzCymbw/0pMgKdL0JrZIBMc
 oxlK7Q5DQv1N1pMpzdSKBie6whoTe2VmdxHA8FIoShILO7VLWAhoo7BUf
 cHuunKTOrJfV17iTiPAr1W1liIiYmy8Y1lx40PvueGY7spqN8WIfEDkWO
 QW5wZBK8Cs2UFwWBWe8Da1p5Xt2OMV7GWHn+pt1QeBdZpCxy7iVTDIHsa
 ocwBXfKPjUOdiVC14MdnT/VAnds3cxP9GlyMyTtLIzY4+rOF8vL4Jh2JK
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BAJ8hKTV
Subject: [Intel-wired-lan] [PATCH net-next] ice: Split ice_flex_pipe.c into
 DDP and flexible processing parts
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Move the DDP functionality from ice_flex_pipe.c to ice_ddp.c.
This enables loading of the DDP package without the rest of the
flexible packet processing support code

Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile       |    1 +
 drivers/net/ethernet/intel/ice/ice_ddp.c      | 1910 ++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ddp.h      |  450 ++++
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 1962 +----------------
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |   69 -
 .../net/ethernet/intel/ice/ice_flex_type.h    |  337 +--
 6 files changed, 2391 insertions(+), 2338 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_ddp.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_ddp.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 060d8f2b4953..f269952d207d 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -28,6 +28,7 @@ ice-y := ice_main.o	\
 	 ice_flow.o	\
 	 ice_idc.o	\
 	 ice_devlink.o	\
+	 ice_ddp.o	\
 	 ice_fw_update.o \
 	 ice_lag.o	\
 	 ice_ethtool.o  \
diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
new file mode 100644
index 000000000000..72017fed7866
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
@@ -0,0 +1,1910 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c) 2022, Intel Corporation. */
+
+#include "ice_common.h"
+#include "ice.h"
+#include "ice_ddp.h"
+
+/* For supporting double VLAN mode, it is necessary to enable or disable certain
+ * boost tcam entries. The metadata labels names that match the following
+ * prefixes will be saved to allow enabling double VLAN mode.
+ */
+#define ICE_DVM_PRE	"BOOST_MAC_VLAN_DVM"	/* enable these entries */
+#define ICE_SVM_PRE	"BOOST_MAC_VLAN_SVM"	/* disable these entries */
+
+/* To support tunneling entries by PF, the package will append the PF number to
+ * the label; for example TNL_VXLAN_PF0, TNL_VXLAN_PF1, TNL_VXLAN_PF2, etc.
+ */
+#define ICE_TNL_PRE	"TNL_"
+static const struct ice_tunnel_type_scan tnls[] = {
+	{ TNL_VXLAN,		"TNL_VXLAN_PF" },
+	{ TNL_GENEVE,		"TNL_GENEVE_PF" },
+	{ TNL_LAST,		"" }
+};
+
+/**
+ * ice_verify_pkg - verify package
+ * @pkg: pointer to the package buffer
+ * @len: size of the package buffer
+ *
+ * Verifies various attributes of the package file, including length, format
+ * version, and the requirement of at least one segment.
+ */
+enum ice_ddp_state ice_verify_pkg(struct ice_pkg_hdr *pkg, u32 len)
+{
+	u32 seg_count;
+	u32 i;
+
+	if (len < struct_size(pkg, seg_offset, 1))
+		return ICE_DDP_PKG_INVALID_FILE;
+
+	if (pkg->pkg_format_ver.major != ICE_PKG_FMT_VER_MAJ ||
+	    pkg->pkg_format_ver.minor != ICE_PKG_FMT_VER_MNR ||
+	    pkg->pkg_format_ver.update != ICE_PKG_FMT_VER_UPD ||
+	    pkg->pkg_format_ver.draft != ICE_PKG_FMT_VER_DFT)
+		return ICE_DDP_PKG_INVALID_FILE;
+
+	/* pkg must have at least one segment */
+	seg_count = le32_to_cpu(pkg->seg_count);
+	if (seg_count < 1)
+		return ICE_DDP_PKG_INVALID_FILE;
+
+	/* make sure segment array fits in package length */
+	if (len < struct_size(pkg, seg_offset, seg_count))
+		return ICE_DDP_PKG_INVALID_FILE;
+
+	/* all segments must fit within length */
+	for (i = 0; i < seg_count; i++) {
+		u32 off = le32_to_cpu(pkg->seg_offset[i]);
+		struct ice_generic_seg_hdr *seg;
+
+		/* segment header must fit */
+		if (len < off + sizeof(*seg))
+			return ICE_DDP_PKG_INVALID_FILE;
+
+		seg = (struct ice_generic_seg_hdr *)((u8 *)pkg + off);
+
+		/* segment body must fit */
+		if (len < off + le32_to_cpu(seg->seg_size))
+			return ICE_DDP_PKG_INVALID_FILE;
+	}
+
+	return ICE_DDP_PKG_SUCCESS;
+}
+
+/**
+ * ice_free_seg - free package segment pointer
+ * @hw: pointer to the hardware structure
+ *
+ * Frees the package segment pointer in the proper manner, depending on if the
+ * segment was allocated or just the passed in pointer was stored.
+ */
+void ice_free_seg(struct ice_hw *hw)
+{
+	if (hw->pkg_copy) {
+		devm_kfree(ice_hw_to_dev(hw), hw->pkg_copy);
+		hw->pkg_copy = NULL;
+		hw->pkg_size = 0;
+	}
+	hw->seg = NULL;
+}
+
+/**
+ * ice_chk_pkg_version - check package version for compatibility with driver
+ * @pkg_ver: pointer to a version structure to check
+ *
+ * Check to make sure that the package about to be downloaded is compatible with
+ * the driver. To be compatible, the major and minor components of the package
+ * version must match our ICE_PKG_SUPP_VER_MAJ and ICE_PKG_SUPP_VER_MNR
+ * definitions.
+ */
+static enum ice_ddp_state ice_chk_pkg_version(struct ice_pkg_ver *pkg_ver)
+{
+	if (pkg_ver->major > ICE_PKG_SUPP_VER_MAJ ||
+	    (pkg_ver->major == ICE_PKG_SUPP_VER_MAJ &&
+	     pkg_ver->minor > ICE_PKG_SUPP_VER_MNR))
+		return ICE_DDP_PKG_FILE_VERSION_TOO_HIGH;
+	else if (pkg_ver->major < ICE_PKG_SUPP_VER_MAJ ||
+		 (pkg_ver->major == ICE_PKG_SUPP_VER_MAJ &&
+		  pkg_ver->minor < ICE_PKG_SUPP_VER_MNR))
+		return ICE_DDP_PKG_FILE_VERSION_TOO_LOW;
+
+	return ICE_DDP_PKG_SUCCESS;
+}
+
+/**
+ * ice_pkg_val_buf
+ * @buf: pointer to the ice buffer
+ *
+ * This helper function validates a buffer's header.
+ */
+struct ice_buf_hdr *ice_pkg_val_buf(struct ice_buf *buf)
+{
+	struct ice_buf_hdr *hdr;
+	u16 section_count;
+	u16 data_end;
+
+	hdr = (struct ice_buf_hdr *)buf->buf;
+	/* verify data */
+	section_count = le16_to_cpu(hdr->section_count);
+	if (section_count < ICE_MIN_S_COUNT || section_count > ICE_MAX_S_COUNT)
+		return NULL;
+
+	data_end = le16_to_cpu(hdr->data_end);
+	if (data_end < ICE_MIN_S_DATA_END || data_end > ICE_MAX_S_DATA_END)
+		return NULL;
+
+	return hdr;
+}
+
+/**
+ * ice_find_buf_table
+ * @ice_seg: pointer to the ice segment
+ *
+ * Returns the address of the buffer table within the ice segment.
+ */
+static struct ice_buf_table *ice_find_buf_table(struct ice_seg *ice_seg)
+{
+	struct ice_nvm_table *nvms;
+
+	nvms = (struct ice_nvm_table *)
+		(ice_seg->device_table +
+		 le32_to_cpu(ice_seg->device_table_count));
+
+	return (__force struct ice_buf_table *)
+		(nvms->vers + le32_to_cpu(nvms->table_count));
+}
+
+/**
+ * ice_pkg_enum_buf
+ * @ice_seg: pointer to the ice segment (or NULL on subsequent calls)
+ * @state: pointer to the enum state
+ *
+ * This function will enumerate all the buffers in the ice segment. The first
+ * call is made with the ice_seg parameter non-NULL; on subsequent calls,
+ * ice_seg is set to NULL which continues the enumeration. When the function
+ * returns a NULL pointer, then the end of the buffers has been reached, or an
+ * unexpected value has been detected (for example an invalid section count or
+ * an invalid buffer end value).
+ */
+static struct ice_buf_hdr *
+ice_pkg_enum_buf(struct ice_seg *ice_seg, struct ice_pkg_enum *state)
+{
+	if (ice_seg) {
+		state->buf_table = ice_find_buf_table(ice_seg);
+		if (!state->buf_table)
+			return NULL;
+
+		state->buf_idx = 0;
+		return ice_pkg_val_buf(state->buf_table->buf_array);
+	}
+
+	if (++state->buf_idx < le32_to_cpu(state->buf_table->buf_count))
+		return ice_pkg_val_buf(state->buf_table->buf_array +
+				       state->buf_idx);
+	else
+		return NULL;
+}
+
+/**
+ * ice_pkg_advance_sect
+ * @ice_seg: pointer to the ice segment (or NULL on subsequent calls)
+ * @state: pointer to the enum state
+ *
+ * This helper function will advance the section within the ice segment,
+ * also advancing the buffer if needed.
+ */
+static bool
+ice_pkg_advance_sect(struct ice_seg *ice_seg, struct ice_pkg_enum *state)
+{
+	if (!ice_seg && !state->buf)
+		return false;
+
+	if (!ice_seg && state->buf)
+		if (++state->sect_idx < le16_to_cpu(state->buf->section_count))
+			return true;
+
+	state->buf = ice_pkg_enum_buf(ice_seg, state);
+	if (!state->buf)
+		return false;
+
+	/* start of new buffer, reset section index */
+	state->sect_idx = 0;
+	return true;
+}
+
+/**
+ * ice_pkg_enum_section
+ * @ice_seg: pointer to the ice segment (or NULL on subsequent calls)
+ * @state: pointer to the enum state
+ * @sect_type: section type to enumerate
+ *
+ * This function will enumerate all the sections of a particular type in the
+ * ice segment. The first call is made with the ice_seg parameter non-NULL;
+ * on subsequent calls, ice_seg is set to NULL which continues the enumeration.
+ * When the function returns a NULL pointer, then the end of the matching
+ * sections has been reached.
+ */
+void *
+ice_pkg_enum_section(struct ice_seg *ice_seg, struct ice_pkg_enum *state,
+		     u32 sect_type)
+{
+	u16 offset, size;
+
+	if (ice_seg)
+		state->type = sect_type;
+
+	if (!ice_pkg_advance_sect(ice_seg, state))
+		return NULL;
+
+	/* scan for next matching section */
+	while (state->buf->section_entry[state->sect_idx].type !=
+	       cpu_to_le32(state->type))
+		if (!ice_pkg_advance_sect(NULL, state))
+			return NULL;
+
+	/* validate section */
+	offset = le16_to_cpu(state->buf->section_entry[state->sect_idx].offset);
+	if (offset < ICE_MIN_S_OFF || offset > ICE_MAX_S_OFF)
+		return NULL;
+
+	size = le16_to_cpu(state->buf->section_entry[state->sect_idx].size);
+	if (size < ICE_MIN_S_SZ || size > ICE_MAX_S_SZ)
+		return NULL;
+
+	/* make sure the section fits in the buffer */
+	if (offset + size > ICE_PKG_BUF_SIZE)
+		return NULL;
+
+	state->sect_type =
+		le32_to_cpu(state->buf->section_entry[state->sect_idx].type);
+
+	/* calc pointer to this section */
+	state->sect = ((u8 *)state->buf) +
+		le16_to_cpu(state->buf->section_entry[state->sect_idx].offset);
+
+	return state->sect;
+}
+
+/**
+ * ice_pkg_enum_entry
+ * @ice_seg: pointer to the ice segment (or NULL on subsequent calls)
+ * @state: pointer to the enum state
+ * @sect_type: section type to enumerate
+ * @offset: pointer to variable that receives the offset in the table (optional)
+ * @handler: function that handles access to the entries into the section type
+ *
+ * This function will enumerate all the entries in particular section type in
+ * the ice segment. The first call is made with the ice_seg parameter non-NULL;
+ * on subsequent calls, ice_seg is set to NULL which continues the enumeration.
+ * When the function returns a NULL pointer, then the end of the entries has
+ * been reached.
+ *
+ * Since each section may have a different header and entry size, the handler
+ * function is needed to determine the number and location entries in each
+ * section.
+ *
+ * The offset parameter is optional, but should be used for sections that
+ * contain an offset for each section table. For such cases, the section handler
+ * function must return the appropriate offset + index to give the absolution
+ * offset for each entry. For example, if the base for a section's header
+ * indicates a base offset of 10, and the index for the entry is 2, then
+ * section handler function should set the offset to 10 + 2 = 12.
+ */
+static void *
+ice_pkg_enum_entry(struct ice_seg *ice_seg, struct ice_pkg_enum *state,
+		   u32 sect_type, u32 *offset,
+		   void *(*handler)(u32 sect_type, void *section,
+				    u32 index, u32 *offset))
+{
+	void *entry;
+
+	if (ice_seg) {
+		if (!handler)
+			return NULL;
+
+		if (!ice_pkg_enum_section(ice_seg, state, sect_type))
+			return NULL;
+
+		state->entry_idx = 0;
+		state->handler = handler;
+	} else {
+		state->entry_idx++;
+	}
+
+	if (!state->handler)
+		return NULL;
+
+	/* get entry */
+	entry = state->handler(state->sect_type, state->sect, state->entry_idx,
+			       offset);
+	if (!entry) {
+		/* end of a section, look for another section of this type */
+		if (!ice_pkg_enum_section(NULL, state, 0))
+			return NULL;
+
+		state->entry_idx = 0;
+		entry = state->handler(state->sect_type, state->sect,
+				       state->entry_idx, offset);
+	}
+
+	return entry;
+}
+
+/**
+ * ice_sw_fv_handler
+ * @sect_type: section type
+ * @section: pointer to section
+ * @index: index of the field vector entry to be returned
+ * @offset: ptr to variable that receives the offset in the field vector table
+ *
+ * This is a callback function that can be passed to ice_pkg_enum_entry.
+ * This function treats the given section as of type ice_sw_fv_section and
+ * enumerates offset field. "offset" is an index into the field vector table.
+ */
+static void *
+ice_sw_fv_handler(u32 sect_type, void *section, u32 index, u32 *offset)
+{
+	struct ice_sw_fv_section *fv_section = section;
+
+	if (!section || sect_type != ICE_SID_FLD_VEC_SW)
+		return NULL;
+	if (index >= le16_to_cpu(fv_section->count))
+		return NULL;
+	if (offset)
+		/* "index" passed in to this function is relative to a given
+		 * 4k block. To get to the true index into the field vector
+		 * table need to add the relative index to the base_offset
+		 * field of this section
+		 */
+		*offset = le16_to_cpu(fv_section->base_offset) + index;
+	return fv_section->fv + index;
+}
+
+/**
+ * ice_get_prof_index_max - get the max profile index for used profile
+ * @hw: pointer to the HW struct
+ *
+ * Calling this function will get the max profile index for used profile
+ * and store the index number in struct ice_switch_info *switch_info
+ * in HW for following use.
+ */
+static int ice_get_prof_index_max(struct ice_hw *hw)
+{
+	u16 prof_index = 0, j, max_prof_index = 0;
+	struct ice_pkg_enum state;
+	struct ice_seg *ice_seg;
+	bool flag = false;
+	struct ice_fv *fv;
+	u32 offset;
+
+	memset(&state, 0, sizeof(state));
+
+	if (!hw->seg)
+		return -EINVAL;
+
+	ice_seg = hw->seg;
+
+	do {
+		fv = ice_pkg_enum_entry(ice_seg, &state, ICE_SID_FLD_VEC_SW,
+					&offset, ice_sw_fv_handler);
+		if (!fv)
+			break;
+		ice_seg = NULL;
+
+		/* in the profile that not be used, the prot_id is set to 0xff
+		 * and the off is set to 0x1ff for all the field vectors.
+		 */
+		for (j = 0; j < hw->blk[ICE_BLK_SW].es.fvw; j++)
+			if (fv->ew[j].prot_id != ICE_PROT_INVALID ||
+			    fv->ew[j].off != ICE_FV_OFFSET_INVAL)
+				flag = true;
+		if (flag && prof_index > max_prof_index)
+			max_prof_index = prof_index;
+
+		prof_index++;
+		flag = false;
+	} while (fv);
+
+	hw->switch_info->max_used_prof_index = max_prof_index;
+
+	return 0;
+}
+
+/**
+ * ice_get_ddp_pkg_state - get DDP pkg state after download
+ * @hw: pointer to the HW struct
+ * @already_loaded: indicates if pkg was already loaded onto the device
+ */
+static enum ice_ddp_state
+ice_get_ddp_pkg_state(struct ice_hw *hw, bool already_loaded)
+{
+	if (hw->pkg_ver.major == hw->active_pkg_ver.major &&
+	    hw->pkg_ver.minor == hw->active_pkg_ver.minor &&
+	    hw->pkg_ver.update == hw->active_pkg_ver.update &&
+	    hw->pkg_ver.draft == hw->active_pkg_ver.draft &&
+	    !memcmp(hw->pkg_name, hw->active_pkg_name, sizeof(hw->pkg_name))) {
+		if (already_loaded)
+			return ICE_DDP_PKG_SAME_VERSION_ALREADY_LOADED;
+		else
+			return ICE_DDP_PKG_SUCCESS;
+	} else if (hw->active_pkg_ver.major != ICE_PKG_SUPP_VER_MAJ ||
+		   hw->active_pkg_ver.minor != ICE_PKG_SUPP_VER_MNR) {
+		return ICE_DDP_PKG_ALREADY_LOADED_NOT_SUPPORTED;
+	} else if (hw->active_pkg_ver.major == ICE_PKG_SUPP_VER_MAJ &&
+		   hw->active_pkg_ver.minor == ICE_PKG_SUPP_VER_MNR) {
+		return ICE_DDP_PKG_COMPATIBLE_ALREADY_LOADED;
+	} else {
+		return ICE_DDP_PKG_ERR;
+	}
+}
+
+/**
+ * ice_init_pkg_regs - initialize additional package registers
+ * @hw: pointer to the hardware structure
+ */
+static void ice_init_pkg_regs(struct ice_hw *hw)
+{
+#define ICE_SW_BLK_INP_MASK_L 0xFFFFFFFF
+#define ICE_SW_BLK_INP_MASK_H 0x0000FFFF
+#define ICE_SW_BLK_IDX	0
+
+	/* setup Switch block input mask, which is 48-bits in two parts */
+	wr32(hw, GL_PREEXT_L2_PMASK0(ICE_SW_BLK_IDX), ICE_SW_BLK_INP_MASK_L);
+	wr32(hw, GL_PREEXT_L2_PMASK1(ICE_SW_BLK_IDX), ICE_SW_BLK_INP_MASK_H);
+}
+
+/**
+ * ice_marker_ptype_tcam_handler
+ * @sect_type: section type
+ * @section: pointer to section
+ * @index: index of the Marker PType TCAM entry to be returned
+ * @offset: pointer to receive absolute offset, always 0 for ptype TCAM sections
+ *
+ * This is a callback function that can be passed to ice_pkg_enum_entry.
+ * Handles enumeration of individual Marker PType TCAM entries.
+ */
+static void *
+ice_marker_ptype_tcam_handler(u32 sect_type, void *section, u32 index,
+			      u32 *offset)
+{
+	struct ice_marker_ptype_tcam_section *marker_ptype;
+
+	if (sect_type != ICE_SID_RXPARSER_MARKER_PTYPE)
+		return NULL;
+
+	if (index > ICE_MAX_MARKER_PTYPE_TCAMS_IN_BUF)
+		return NULL;
+
+	if (offset)
+		*offset = 0;
+
+	marker_ptype = section;
+	if (index >= le16_to_cpu(marker_ptype->count))
+		return NULL;
+
+	return marker_ptype->tcam + index;
+}
+
+/**
+ * ice_add_dvm_hint
+ * @hw: pointer to the HW structure
+ * @val: value of the boost entry
+ * @enable: true if entry needs to be enabled, or false if needs to be disabled
+ */
+static void ice_add_dvm_hint(struct ice_hw *hw, u16 val, bool enable)
+{
+	if (hw->dvm_upd.count < ICE_DVM_MAX_ENTRIES) {
+		hw->dvm_upd.tbl[hw->dvm_upd.count].boost_addr = val;
+		hw->dvm_upd.tbl[hw->dvm_upd.count].enable = enable;
+		hw->dvm_upd.count++;
+	}
+}
+
+/**
+ * ice_add_tunnel_hint
+ * @hw: pointer to the HW structure
+ * @label_name: label text
+ * @val: value of the tunnel port boost entry
+ */
+static void ice_add_tunnel_hint(struct ice_hw *hw, char *label_name, u16 val)
+{
+	if (hw->tnl.count < ICE_TUNNEL_MAX_ENTRIES) {
+		u16 i;
+
+		for (i = 0; tnls[i].type != TNL_LAST; i++) {
+			size_t len = strlen(tnls[i].label_prefix);
+
+			/* Look for matching label start, before continuing */
+			if (strncmp(label_name, tnls[i].label_prefix, len))
+				continue;
+
+			/* Make sure this label matches our PF. Note that the PF
+			 * character ('0' - '7') will be located where our
+			 * prefix string's null terminator is located.
+			 */
+			if ((label_name[len] - '0') == hw->pf_id) {
+				hw->tnl.tbl[hw->tnl.count].type = tnls[i].type;
+				hw->tnl.tbl[hw->tnl.count].valid = false;
+				hw->tnl.tbl[hw->tnl.count].boost_addr = val;
+				hw->tnl.tbl[hw->tnl.count].port = 0;
+				hw->tnl.count++;
+				break;
+			}
+		}
+	}
+}
+
+/**
+ * ice_label_enum_handler
+ * @sect_type: section type
+ * @section: pointer to section
+ * @index: index of the label entry to be returned
+ * @offset: pointer to receive absolute offset, always zero for label sections
+ *
+ * This is a callback function that can be passed to ice_pkg_enum_entry.
+ * Handles enumeration of individual label entries.
+ */
+static void *
+ice_label_enum_handler(u32 __always_unused sect_type, void *section, u32 index,
+		       u32 *offset)
+{
+	struct ice_label_section *labels;
+
+	if (!section)
+		return NULL;
+
+	if (index > ICE_MAX_LABELS_IN_BUF)
+		return NULL;
+
+	if (offset)
+		*offset = 0;
+
+	labels = section;
+	if (index >= le16_to_cpu(labels->count))
+		return NULL;
+
+	return labels->label + index;
+}
+
+/**
+ * ice_enum_labels
+ * @ice_seg: pointer to the ice segment (NULL on subsequent calls)
+ * @type: the section type that will contain the label (0 on subsequent calls)
+ * @state: ice_pkg_enum structure that will hold the state of the enumeration
+ * @value: pointer to a value that will return the label's value if found
+ *
+ * Enumerates a list of labels in the package. The caller will call
+ * ice_enum_labels(ice_seg, type, ...) to start the enumeration, then call
+ * ice_enum_labels(NULL, 0, ...) to continue. When the function returns a NULL
+ * the end of the list has been reached.
+ */
+static char *
+ice_enum_labels(struct ice_seg *ice_seg, u32 type, struct ice_pkg_enum *state,
+		u16 *value)
+{
+	struct ice_label *label;
+
+	/* Check for valid label section on first call */
+	if (type && !(type >= ICE_SID_LBL_FIRST && type <= ICE_SID_LBL_LAST))
+		return NULL;
+
+	label = ice_pkg_enum_entry(ice_seg, state, type, NULL,
+				   ice_label_enum_handler);
+	if (!label)
+		return NULL;
+
+	*value = le16_to_cpu(label->value);
+	return label->name;
+}
+
+/**
+ * ice_boost_tcam_handler
+ * @sect_type: section type
+ * @section: pointer to section
+ * @index: index of the boost TCAM entry to be returned
+ * @offset: pointer to receive absolute offset, always 0 for boost TCAM sections
+ *
+ * This is a callback function that can be passed to ice_pkg_enum_entry.
+ * Handles enumeration of individual boost TCAM entries.
+ */
+static void *
+ice_boost_tcam_handler(u32 sect_type, void *section, u32 index, u32 *offset)
+{
+	struct ice_boost_tcam_section *boost;
+
+	if (!section)
+		return NULL;
+
+	if (sect_type != ICE_SID_RXPARSER_BOOST_TCAM)
+		return NULL;
+
+	if (index > ICE_MAX_BST_TCAMS_IN_BUF)
+		return NULL;
+
+	if (offset)
+		*offset = 0;
+
+	boost = section;
+	if (index >= le16_to_cpu(boost->count))
+		return NULL;
+
+	return boost->tcam + index;
+}
+
+/**
+ * ice_find_boost_entry
+ * @ice_seg: pointer to the ice segment (non-NULL)
+ * @addr: Boost TCAM address of entry to search for
+ * @entry: returns pointer to the entry
+ *
+ * Finds a particular Boost TCAM entry and returns a pointer to that entry
+ * if it is found. The ice_seg parameter must not be NULL since the first call
+ * to ice_pkg_enum_entry requires a pointer to an actual ice_segment structure.
+ */
+static int
+ice_find_boost_entry(struct ice_seg *ice_seg, u16 addr,
+		     struct ice_boost_tcam_entry **entry)
+{
+	struct ice_boost_tcam_entry *tcam;
+	struct ice_pkg_enum state;
+
+	memset(&state, 0, sizeof(state));
+
+	if (!ice_seg)
+		return -EINVAL;
+
+	do {
+		tcam = ice_pkg_enum_entry(ice_seg, &state,
+					  ICE_SID_RXPARSER_BOOST_TCAM, NULL,
+					  ice_boost_tcam_handler);
+		if (tcam && le16_to_cpu(tcam->addr) == addr) {
+			*entry = tcam;
+			return 0;
+		}
+
+		ice_seg = NULL;
+	} while (tcam);
+
+	*entry = NULL;
+	return -EIO;
+}
+
+/**
+ * ice_is_init_pkg_successful - check if DDP init was successful
+ * @state: state of the DDP pkg after download
+ */
+bool ice_is_init_pkg_successful(enum ice_ddp_state state)
+{
+	switch (state) {
+	case ICE_DDP_PKG_SUCCESS:
+	case ICE_DDP_PKG_SAME_VERSION_ALREADY_LOADED:
+	case ICE_DDP_PKG_COMPATIBLE_ALREADY_LOADED:
+		return true;
+	default:
+		return false;
+	}
+}
+
+/**
+ * ice_pkg_buf_alloc
+ * @hw: pointer to the HW structure
+ *
+ * Allocates a package buffer and returns a pointer to the buffer header.
+ * Note: all package contents must be in Little Endian form.
+ */
+struct ice_buf_build *ice_pkg_buf_alloc(struct ice_hw *hw)
+{
+	struct ice_buf_build *bld;
+	struct ice_buf_hdr *buf;
+
+	bld = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*bld), GFP_KERNEL);
+	if (!bld)
+		return NULL;
+
+	buf = (struct ice_buf_hdr *)bld;
+	buf->data_end = cpu_to_le16(offsetof(struct ice_buf_hdr,
+					     section_entry));
+	return bld;
+}
+
+static bool ice_is_gtp_u_profile(u16 prof_idx)
+{
+	return (prof_idx >= ICE_PROFID_IPV6_GTPU_TEID &&
+		prof_idx <= ICE_PROFID_IPV6_GTPU_IPV6_TCP_INNER) ||
+	       prof_idx == ICE_PROFID_IPV4_GTPU_TEID;
+}
+
+static bool ice_is_gtp_c_profile(u16 prof_idx)
+{
+	switch (prof_idx) {
+	case ICE_PROFID_IPV4_GTPC_TEID:
+	case ICE_PROFID_IPV4_GTPC_NO_TEID:
+	case ICE_PROFID_IPV6_GTPC_TEID:
+	case ICE_PROFID_IPV6_GTPC_NO_TEID:
+		return true;
+	default:
+		return false;
+	}
+}
+
+/**
+ * ice_get_sw_prof_type - determine switch profile type
+ * @hw: pointer to the HW structure
+ * @fv: pointer to the switch field vector
+ * @prof_idx: profile index to check
+ */
+static enum ice_prof_type
+ice_get_sw_prof_type(struct ice_hw *hw, struct ice_fv *fv, u32 prof_idx)
+{
+	u16 i;
+
+	if (ice_is_gtp_c_profile(prof_idx))
+		return ICE_PROF_TUN_GTPC;
+
+	if (ice_is_gtp_u_profile(prof_idx))
+		return ICE_PROF_TUN_GTPU;
+
+	for (i = 0; i < hw->blk[ICE_BLK_SW].es.fvw; i++) {
+		/* UDP tunnel will have UDP_OF protocol ID and VNI offset */
+		if (fv->ew[i].prot_id == (u8)ICE_PROT_UDP_OF &&
+		    fv->ew[i].off == ICE_VNI_OFFSET)
+			return ICE_PROF_TUN_UDP;
+
+		/* GRE tunnel will have GRE protocol */
+		if (fv->ew[i].prot_id == (u8)ICE_PROT_GRE_OF)
+			return ICE_PROF_TUN_GRE;
+	}
+
+	return ICE_PROF_NON_TUN;
+}
+
+/**
+ * ice_get_sw_fv_bitmap - Get switch field vector bitmap based on profile type
+ * @hw: pointer to hardware structure
+ * @req_profs: type of profiles requested
+ * @bm: pointer to memory for returning the bitmap of field vectors
+ */
+void
+ice_get_sw_fv_bitmap(struct ice_hw *hw, enum ice_prof_type req_profs,
+		     unsigned long *bm)
+{
+	struct ice_pkg_enum state;
+	struct ice_seg *ice_seg;
+	struct ice_fv *fv;
+
+	if (req_profs == ICE_PROF_ALL) {
+		bitmap_set(bm, 0, ICE_MAX_NUM_PROFILES);
+		return;
+	}
+
+	memset(&state, 0, sizeof(state));
+	bitmap_zero(bm, ICE_MAX_NUM_PROFILES);
+	ice_seg = hw->seg;
+	do {
+		enum ice_prof_type prof_type;
+		u32 offset;
+
+		fv = ice_pkg_enum_entry(ice_seg, &state, ICE_SID_FLD_VEC_SW,
+					&offset, ice_sw_fv_handler);
+		ice_seg = NULL;
+
+		if (fv) {
+			/* Determine field vector type */
+			prof_type = ice_get_sw_prof_type(hw, fv, offset);
+
+			if (req_profs & prof_type)
+				set_bit((u16)offset, bm);
+		}
+	} while (fv);
+}
+
+/**
+ * ice_get_sw_fv_list
+ * @hw: pointer to the HW structure
+ * @lkups: list of protocol types
+ * @bm: bitmap of field vectors to consider
+ * @fv_list: Head of a list
+ *
+ * Finds all the field vector entries from switch block that contain
+ * a given protocol ID and offset and returns a list of structures of type
+ * "ice_sw_fv_list_entry". Every structure in the list has a field vector
+ * definition and profile ID information
+ * NOTE: The caller of the function is responsible for freeing the memory
+ * allocated for every list entry.
+ */
+int
+ice_get_sw_fv_list(struct ice_hw *hw, struct ice_prot_lkup_ext *lkups,
+		   unsigned long *bm, struct list_head *fv_list)
+{
+	struct ice_sw_fv_list_entry *fvl;
+	struct ice_sw_fv_list_entry *tmp;
+	struct ice_pkg_enum state;
+	struct ice_seg *ice_seg;
+	struct ice_fv *fv;
+	u32 offset;
+
+	memset(&state, 0, sizeof(state));
+
+	if (!lkups->n_val_words || !hw->seg)
+		return -EINVAL;
+
+	ice_seg = hw->seg;
+	do {
+		u16 i;
+
+		fv = ice_pkg_enum_entry(ice_seg, &state, ICE_SID_FLD_VEC_SW,
+					&offset, ice_sw_fv_handler);
+		if (!fv)
+			break;
+		ice_seg = NULL;
+
+		/* If field vector is not in the bitmap list, then skip this
+		 * profile.
+		 */
+		if (!test_bit((u16)offset, bm))
+			continue;
+
+		for (i = 0; i < lkups->n_val_words; i++) {
+			int j;
+
+			for (j = 0; j < hw->blk[ICE_BLK_SW].es.fvw; j++)
+				if (fv->ew[j].prot_id ==
+				    lkups->fv_words[i].prot_id &&
+				    fv->ew[j].off == lkups->fv_words[i].off)
+					break;
+			if (j >= hw->blk[ICE_BLK_SW].es.fvw)
+				break;
+			if (i + 1 == lkups->n_val_words) {
+				fvl = devm_kzalloc(ice_hw_to_dev(hw),
+						   sizeof(*fvl), GFP_KERNEL);
+				if (!fvl)
+					goto err;
+				fvl->fv_ptr = fv;
+				fvl->profile_id = offset;
+				list_add(&fvl->list_entry, fv_list);
+				break;
+			}
+		}
+	} while (fv);
+	if (list_empty(fv_list)) {
+		dev_warn(ice_hw_to_dev(hw), "Required profiles not found in currently loaded DDP package");
+		return -EIO;
+	}
+
+	return 0;
+
+err:
+	list_for_each_entry_safe(fvl, tmp, fv_list, list_entry) {
+		list_del(&fvl->list_entry);
+		devm_kfree(ice_hw_to_dev(hw), fvl);
+	}
+
+	return -ENOMEM;
+}
+
+/**
+ * ice_init_prof_result_bm - Initialize the profile result index bitmap
+ * @hw: pointer to hardware structure
+ */
+void ice_init_prof_result_bm(struct ice_hw *hw)
+{
+	struct ice_pkg_enum state;
+	struct ice_seg *ice_seg;
+	struct ice_fv *fv;
+
+	memset(&state, 0, sizeof(state));
+
+	if (!hw->seg)
+		return;
+
+	ice_seg = hw->seg;
+	do {
+		u32 off;
+		u16 i;
+
+		fv = ice_pkg_enum_entry(ice_seg, &state, ICE_SID_FLD_VEC_SW,
+					&off, ice_sw_fv_handler);
+		ice_seg = NULL;
+		if (!fv)
+			break;
+
+		bitmap_zero(hw->switch_info->prof_res_bm[off],
+			    ICE_MAX_FV_WORDS);
+
+		/* Determine empty field vector indices, these can be
+		 * used for recipe results. Skip index 0, since it is
+		 * always used for Switch ID.
+		 */
+		for (i = 1; i < ICE_MAX_FV_WORDS; i++)
+			if (fv->ew[i].prot_id == ICE_PROT_INVALID &&
+			    fv->ew[i].off == ICE_FV_OFFSET_INVAL)
+				set_bit(i, hw->switch_info->prof_res_bm[off]);
+	} while (fv);
+}
+
+/**
+ * ice_pkg_buf_free
+ * @hw: pointer to the HW structure
+ * @bld: pointer to pkg build (allocated by ice_pkg_buf_alloc())
+ *
+ * Frees a package buffer
+ */
+void ice_pkg_buf_free(struct ice_hw *hw, struct ice_buf_build *bld)
+{
+	devm_kfree(ice_hw_to_dev(hw), bld);
+}
+
+/**
+ * ice_pkg_buf_reserve_section
+ * @bld: pointer to pkg build (allocated by ice_pkg_buf_alloc())
+ * @count: the number of sections to reserve
+ *
+ * Reserves one or more section table entries in a package buffer. This routine
+ * can be called multiple times as long as they are made before calling
+ * ice_pkg_buf_alloc_section(). Once ice_pkg_buf_alloc_section()
+ * is called once, the number of sections that can be allocated will not be able
+ * to be increased; not using all reserved sections is fine, but this will
+ * result in some wasted space in the buffer.
+ * Note: all package contents must be in Little Endian form.
+ */
+int
+ice_pkg_buf_reserve_section(struct ice_buf_build *bld, u16 count)
+{
+	struct ice_buf_hdr *buf;
+	u16 section_count;
+	u16 data_end;
+
+	if (!bld)
+		return -EINVAL;
+
+	buf = (struct ice_buf_hdr *)&bld->buf;
+
+	/* already an active section, can't increase table size */
+	section_count = le16_to_cpu(buf->section_count);
+	if (section_count > 0)
+		return -EIO;
+
+	if (bld->reserved_section_table_entries + count > ICE_MAX_S_COUNT)
+		return -EIO;
+	bld->reserved_section_table_entries += count;
+
+	data_end = le16_to_cpu(buf->data_end) +
+		flex_array_size(buf, section_entry, count);
+	buf->data_end = cpu_to_le16(data_end);
+
+	return 0;
+}
+
+/**
+ * ice_pkg_buf_alloc_section
+ * @bld: pointer to pkg build (allocated by ice_pkg_buf_alloc())
+ * @type: the section type value
+ * @size: the size of the section to reserve (in bytes)
+ *
+ * Reserves memory in the buffer for a section's content and updates the
+ * buffers' status accordingly. This routine returns a pointer to the first
+ * byte of the section start within the buffer, which is used to fill in the
+ * section contents.
+ * Note: all package contents must be in Little Endian form.
+ */
+void *
+ice_pkg_buf_alloc_section(struct ice_buf_build *bld, u32 type, u16 size)
+{
+	struct ice_buf_hdr *buf;
+	u16 sect_count;
+	u16 data_end;
+
+	if (!bld || !type || !size)
+		return NULL;
+
+	buf = (struct ice_buf_hdr *)&bld->buf;
+
+	/* check for enough space left in buffer */
+	data_end = le16_to_cpu(buf->data_end);
+
+	/* section start must align on 4 byte boundary */
+	data_end = ALIGN(data_end, 4);
+
+	if ((data_end + size) > ICE_MAX_S_DATA_END)
+		return NULL;
+
+	/* check for more available section table entries */
+	sect_count = le16_to_cpu(buf->section_count);
+	if (sect_count < bld->reserved_section_table_entries) {
+		void *section_ptr = ((u8 *)buf) + data_end;
+
+		buf->section_entry[sect_count].offset = cpu_to_le16(data_end);
+		buf->section_entry[sect_count].size = cpu_to_le16(size);
+		buf->section_entry[sect_count].type = cpu_to_le32(type);
+
+		data_end += size;
+		buf->data_end = cpu_to_le16(data_end);
+
+		buf->section_count = cpu_to_le16(sect_count + 1);
+		return section_ptr;
+	}
+
+	/* no free section table entries */
+	return NULL;
+}
+
+/**
+ * ice_pkg_buf_alloc_single_section
+ * @hw: pointer to the HW structure
+ * @type: the section type value
+ * @size: the size of the section to reserve (in bytes)
+ * @section: returns pointer to the section
+ *
+ * Allocates a package buffer with a single section.
+ * Note: all package contents must be in Little Endian form.
+ */
+struct ice_buf_build *
+ice_pkg_buf_alloc_single_section(struct ice_hw *hw, u32 type, u16 size,
+				 void **section)
+{
+	struct ice_buf_build *buf;
+
+	if (!section)
+		return NULL;
+
+	buf = ice_pkg_buf_alloc(hw);
+	if (!buf)
+		return NULL;
+
+	if (ice_pkg_buf_reserve_section(buf, 1))
+		goto ice_pkg_buf_alloc_single_section_err;
+
+	*section = ice_pkg_buf_alloc_section(buf, type, size);
+	if (!*section)
+		goto ice_pkg_buf_alloc_single_section_err;
+
+	return buf;
+
+ice_pkg_buf_alloc_single_section_err:
+	ice_pkg_buf_free(hw, buf);
+	return NULL;
+}
+
+/**
+ * ice_pkg_buf_get_active_sections
+ * @bld: pointer to pkg build (allocated by ice_pkg_buf_alloc())
+ *
+ * Returns the number of active sections. Before using the package buffer
+ * in an update package command, the caller should make sure that there is at
+ * least one active section - otherwise, the buffer is not legal and should
+ * not be used.
+ * Note: all package contents must be in Little Endian form.
+ */
+u16 ice_pkg_buf_get_active_sections(struct ice_buf_build *bld)
+{
+	struct ice_buf_hdr *buf;
+
+	if (!bld)
+		return 0;
+
+	buf = (struct ice_buf_hdr *)&bld->buf;
+	return le16_to_cpu(buf->section_count);
+}
+
+/**
+ * ice_pkg_buf
+ * @bld: pointer to pkg build (allocated by ice_pkg_buf_alloc())
+ *
+ * Return a pointer to the buffer's header
+ */
+struct ice_buf *ice_pkg_buf(struct ice_buf_build *bld)
+{
+	if (!bld)
+		return NULL;
+
+	return &bld->buf;
+}
+
+static enum ice_ddp_state ice_map_aq_err_to_ddp_state(enum ice_aq_err aq_err)
+{
+	switch (aq_err) {
+	case ICE_AQ_RC_ENOSEC:
+	case ICE_AQ_RC_EBADSIG:
+		return ICE_DDP_PKG_FILE_SIGNATURE_INVALID;
+	case ICE_AQ_RC_ESVN:
+		return ICE_DDP_PKG_FILE_REVISION_TOO_LOW;
+	case ICE_AQ_RC_EBADMAN:
+	case ICE_AQ_RC_EBADBUF:
+		return ICE_DDP_PKG_LOAD_ERROR;
+	default:
+		return ICE_DDP_PKG_ERR;
+	}
+}
+
+/**
+ * ice_acquire_global_cfg_lock
+ * @hw: pointer to the HW structure
+ * @access: access type (read or write)
+ *
+ * This function will request ownership of the global config lock for reading
+ * or writing of the package. When attempting to obtain write access, the
+ * caller must check for the following two return values:
+ *
+ * 0         -  Means the caller has acquired the global config lock
+ *              and can perform writing of the package.
+ * -EALREADY - Indicates another driver has already written the
+ *             package or has found that no update was necessary; in
+ *             this case, the caller can just skip performing any
+ *             update of the package.
+ */
+static int
+ice_acquire_global_cfg_lock(struct ice_hw *hw,
+			    enum ice_aq_res_access_type access)
+{
+	int status;
+
+	status = ice_acquire_res(hw, ICE_GLOBAL_CFG_LOCK_RES_ID, access,
+				 ICE_GLOBAL_CFG_LOCK_TIMEOUT);
+
+	if (!status)
+		mutex_lock(&ice_global_cfg_lock_sw);
+	else if (status == -EALREADY)
+		ice_debug(hw, ICE_DBG_PKG, "Global config lock: No work to do\n");
+
+	return status;
+}
+
+/**
+ * ice_release_global_cfg_lock
+ * @hw: pointer to the HW structure
+ *
+ * This function will release the global config lock.
+ */
+static void ice_release_global_cfg_lock(struct ice_hw *hw)
+{
+	mutex_unlock(&ice_global_cfg_lock_sw);
+	ice_release_res(hw, ICE_GLOBAL_CFG_LOCK_RES_ID);
+}
+
+/**
+ * ice_dwnld_cfg_bufs
+ * @hw: pointer to the hardware structure
+ * @bufs: pointer to an array of buffers
+ * @count: the number of buffers in the array
+ *
+ * Obtains global config lock and downloads the package configuration buffers
+ * to the firmware. Metadata buffers are skipped, and the first metadata buffer
+ * found indicates that the rest of the buffers are all metadata buffers.
+ */
+static enum ice_ddp_state
+ice_dwnld_cfg_bufs(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
+{
+	enum ice_ddp_state state = ICE_DDP_PKG_SUCCESS;
+	struct ice_buf_hdr *bh;
+	enum ice_aq_err err;
+	u32 offset, info, i;
+	int status;
+
+	if (!bufs || !count)
+		return ICE_DDP_PKG_ERR;
+
+	/* If the first buffer's first section has its metadata bit set
+	 * then there are no buffers to be downloaded, and the operation is
+	 * considered a success.
+	 */
+	bh = (struct ice_buf_hdr *)bufs;
+	if (le32_to_cpu(bh->section_entry[0].type) & ICE_METADATA_BUF)
+		return ICE_DDP_PKG_SUCCESS;
+
+	status = ice_acquire_global_cfg_lock(hw, ICE_RES_WRITE);
+	if (status) {
+		if (status == -EALREADY)
+			return ICE_DDP_PKG_ALREADY_LOADED;
+		return ice_map_aq_err_to_ddp_state(hw->adminq.sq_last_status);
+	}
+
+	for (i = 0; i < count; i++) {
+		bool last = ((i + 1) == count);
+
+		if (!last) {
+			/* check next buffer for metadata flag */
+			bh = (struct ice_buf_hdr *)(bufs + i + 1);
+
+			/* A set metadata flag in the next buffer will signal
+			 * that the current buffer will be the last buffer
+			 * downloaded
+			 */
+			if (le16_to_cpu(bh->section_count))
+				if (le32_to_cpu(bh->section_entry[0].type) &
+				    ICE_METADATA_BUF)
+					last = true;
+		}
+
+		bh = (struct ice_buf_hdr *)(bufs + i);
+
+		status = ice_aq_download_pkg(hw, bh, ICE_PKG_BUF_SIZE, last,
+					     &offset, &info, NULL);
+
+		/* Save AQ status from download package */
+		if (status) {
+			ice_debug(hw, ICE_DBG_PKG, "Pkg download failed: err %d off %d inf %d\n",
+				  status, offset, info);
+			err = hw->adminq.sq_last_status;
+			state = ice_map_aq_err_to_ddp_state(err);
+			break;
+		}
+
+		if (last)
+			break;
+	}
+
+	if (!status) {
+		status = ice_set_vlan_mode(hw);
+		if (status)
+			ice_debug(hw, ICE_DBG_PKG, "Failed to set VLAN mode: err %d\n",
+				  status);
+	}
+
+	ice_release_global_cfg_lock(hw);
+
+	return state;
+}
+
+/**
+ * ice_aq_get_pkg_info_list
+ * @hw: pointer to the hardware structure
+ * @pkg_info: the buffer which will receive the information list
+ * @buf_size: the size of the pkg_info information buffer
+ * @cd: pointer to command details structure or NULL
+ *
+ * Get Package Info List (0x0C43)
+ */
+static int
+ice_aq_get_pkg_info_list(struct ice_hw *hw,
+			 struct ice_aqc_get_pkg_info_resp *pkg_info,
+			 u16 buf_size, struct ice_sq_cd *cd)
+{
+	struct ice_aq_desc desc;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_pkg_info_list);
+
+	return ice_aq_send_cmd(hw, &desc, pkg_info, buf_size, cd);
+}
+
+/**
+ * ice_download_pkg
+ * @hw: pointer to the hardware structure
+ * @ice_seg: pointer to the segment of the package to be downloaded
+ *
+ * Handles the download of a complete package.
+ */
+static enum ice_ddp_state
+ice_download_pkg(struct ice_hw *hw, struct ice_seg *ice_seg)
+{
+	struct ice_buf_table *ice_buf_tbl;
+	int status;
+
+	ice_debug(hw, ICE_DBG_PKG, "Segment format version: %d.%d.%d.%d\n",
+		  ice_seg->hdr.seg_format_ver.major,
+		  ice_seg->hdr.seg_format_ver.minor,
+		  ice_seg->hdr.seg_format_ver.update,
+		  ice_seg->hdr.seg_format_ver.draft);
+
+	ice_debug(hw, ICE_DBG_PKG, "Seg: type 0x%X, size %d, name %s\n",
+		  le32_to_cpu(ice_seg->hdr.seg_type),
+		  le32_to_cpu(ice_seg->hdr.seg_size), ice_seg->hdr.seg_id);
+
+	ice_buf_tbl = ice_find_buf_table(ice_seg);
+
+	ice_debug(hw, ICE_DBG_PKG, "Seg buf count: %d\n",
+		  le32_to_cpu(ice_buf_tbl->buf_count));
+
+	status = ice_dwnld_cfg_bufs(hw, ice_buf_tbl->buf_array,
+				    le32_to_cpu(ice_buf_tbl->buf_count));
+
+	ice_post_pkg_dwnld_vlan_mode_cfg(hw);
+
+	return status;
+}
+
+/**
+ * ice_aq_download_pkg
+ * @hw: pointer to the hardware structure
+ * @pkg_buf: the package buffer to transfer
+ * @buf_size: the size of the package buffer
+ * @last_buf: last buffer indicator
+ * @error_offset: returns error offset
+ * @error_info: returns error information
+ * @cd: pointer to command details structure or NULL
+ *
+ * Download Package (0x0C40)
+ */
+int
+ice_aq_download_pkg(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
+		    u16 buf_size, bool last_buf, u32 *error_offset,
+		    u32 *error_info, struct ice_sq_cd *cd)
+{
+	struct ice_aqc_download_pkg *cmd;
+	struct ice_aq_desc desc;
+	int status;
+
+	if (error_offset)
+		*error_offset = 0;
+	if (error_info)
+		*error_info = 0;
+
+	cmd = &desc.params.download_pkg;
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_download_pkg);
+	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+
+	if (last_buf)
+		cmd->flags |= ICE_AQC_DOWNLOAD_PKG_LAST_BUF;
+
+	status = ice_aq_send_cmd(hw, &desc, pkg_buf, buf_size, cd);
+	if (status == -EIO) {
+		/* Read error from buffer only when the FW returned an error */
+		struct ice_aqc_download_pkg_resp *resp;
+
+		resp = (struct ice_aqc_download_pkg_resp *)pkg_buf;
+		if (error_offset)
+			*error_offset = le32_to_cpu(resp->error_offset);
+		if (error_info)
+			*error_info = le32_to_cpu(resp->error_info);
+	}
+
+	return status;
+}
+
+/**
+ * ice_aq_upload_section
+ * @hw: pointer to the hardware structure
+ * @pkg_buf: the package buffer which will receive the section
+ * @buf_size: the size of the package buffer
+ * @cd: pointer to command details structure or NULL
+ *
+ * Upload Section (0x0C41)
+ */
+int
+ice_aq_upload_section(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
+		      u16 buf_size, struct ice_sq_cd *cd)
+{
+	struct ice_aq_desc desc;
+
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_upload_section);
+	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+
+	return ice_aq_send_cmd(hw, &desc, pkg_buf, buf_size, cd);
+}
+
+/**
+ * ice_aq_update_pkg
+ * @hw: pointer to the hardware structure
+ * @pkg_buf: the package cmd buffer
+ * @buf_size: the size of the package cmd buffer
+ * @last_buf: last buffer indicator
+ * @error_offset: returns error offset
+ * @error_info: returns error information
+ * @cd: pointer to command details structure or NULL
+ *
+ * Update Package (0x0C42)
+ */
+static int
+ice_aq_update_pkg(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf, u16 buf_size,
+		  bool last_buf, u32 *error_offset, u32 *error_info,
+		  struct ice_sq_cd *cd)
+{
+	struct ice_aqc_download_pkg *cmd;
+	struct ice_aq_desc desc;
+	int status;
+
+	if (error_offset)
+		*error_offset = 0;
+	if (error_info)
+		*error_info = 0;
+
+	cmd = &desc.params.download_pkg;
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_update_pkg);
+	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+
+	if (last_buf)
+		cmd->flags |= ICE_AQC_DOWNLOAD_PKG_LAST_BUF;
+
+	status = ice_aq_send_cmd(hw, &desc, pkg_buf, buf_size, cd);
+	if (status == -EIO) {
+		/* Read error from buffer only when the FW returned an error */
+		struct ice_aqc_download_pkg_resp *resp;
+
+		resp = (struct ice_aqc_download_pkg_resp *)pkg_buf;
+		if (error_offset)
+			*error_offset = le32_to_cpu(resp->error_offset);
+		if (error_info)
+			*error_info = le32_to_cpu(resp->error_info);
+	}
+
+	return status;
+}
+
+/**
+ * ice_update_pkg_no_lock
+ * @hw: pointer to the hardware structure
+ * @bufs: pointer to an array of buffers
+ * @count: the number of buffers in the array
+ */
+int
+ice_update_pkg_no_lock(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
+{
+	int status = 0;
+	u32 i;
+
+	for (i = 0; i < count; i++) {
+		struct ice_buf_hdr *bh = (struct ice_buf_hdr *)(bufs + i);
+		bool last = ((i + 1) == count);
+		u32 offset, info;
+
+		status = ice_aq_update_pkg(hw, bh, le16_to_cpu(bh->data_end),
+					   last, &offset, &info, NULL);
+
+		if (status) {
+			ice_debug(hw, ICE_DBG_PKG, "Update pkg failed: err %d off %d inf %d\n",
+				  status, offset, info);
+			break;
+		}
+	}
+
+	return status;
+}
+
+/**
+ * ice_update_pkg
+ * @hw: pointer to the hardware structure
+ * @bufs: pointer to an array of buffers
+ * @count: the number of buffers in the array
+ *
+ * Obtains change lock and updates package.
+ */
+int ice_update_pkg(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
+{
+	int status;
+
+	status = ice_acquire_change_lock(hw, ICE_RES_WRITE);
+	if (status)
+		return status;
+
+	status = ice_update_pkg_no_lock(hw, bufs, count);
+
+	ice_release_change_lock(hw);
+
+	return status;
+}
+
+/**
+ * ice_find_seg_in_pkg
+ * @hw: pointer to the hardware structure
+ * @seg_type: the segment type to search for (i.e., SEGMENT_TYPE_CPK)
+ * @pkg_hdr: pointer to the package header to be searched
+ *
+ * This function searches a package file for a particular segment type. On
+ * success it returns a pointer to the segment header, otherwise it will
+ * return NULL.
+ */
+struct ice_generic_seg_hdr *
+ice_find_seg_in_pkg(struct ice_hw *hw, u32 seg_type,
+		    struct ice_pkg_hdr *pkg_hdr)
+{
+	u32 i;
+
+	ice_debug(hw, ICE_DBG_PKG, "Package format version: %d.%d.%d.%d\n",
+		  pkg_hdr->pkg_format_ver.major, pkg_hdr->pkg_format_ver.minor,
+		  pkg_hdr->pkg_format_ver.update,
+		  pkg_hdr->pkg_format_ver.draft);
+
+	/* Search all package segments for the requested segment type */
+	for (i = 0; i < le32_to_cpu(pkg_hdr->seg_count); i++) {
+		struct ice_generic_seg_hdr *seg;
+
+		seg = (struct ice_generic_seg_hdr *)
+			((u8 *)pkg_hdr + le32_to_cpu(pkg_hdr->seg_offset[i]));
+
+		if (le32_to_cpu(seg->seg_type) == seg_type)
+			return seg;
+	}
+
+	return NULL;
+}
+
+/**
+ * ice_init_pkg_info
+ * @hw: pointer to the hardware structure
+ * @pkg_hdr: pointer to the driver's package hdr
+ *
+ * Saves off the package details into the HW structure.
+ */
+static enum ice_ddp_state
+ice_init_pkg_info(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr)
+{
+	struct ice_generic_seg_hdr *seg_hdr;
+
+	if (!pkg_hdr)
+		return ICE_DDP_PKG_ERR;
+
+	seg_hdr = ice_find_seg_in_pkg(hw, SEGMENT_TYPE_ICE, pkg_hdr);
+	if (seg_hdr) {
+		struct ice_meta_sect *meta;
+		struct ice_pkg_enum state;
+
+		memset(&state, 0, sizeof(state));
+
+		/* Get package information from the Metadata Section */
+		meta = ice_pkg_enum_section((struct ice_seg *)seg_hdr, &state,
+					    ICE_SID_METADATA);
+		if (!meta) {
+			ice_debug(hw, ICE_DBG_INIT, "Did not find ice metadata section in package\n");
+			return ICE_DDP_PKG_INVALID_FILE;
+		}
+
+		hw->pkg_ver = meta->ver;
+		memcpy(hw->pkg_name, meta->name, sizeof(meta->name));
+
+		ice_debug(hw, ICE_DBG_PKG, "Pkg: %d.%d.%d.%d, %s\n",
+			  meta->ver.major, meta->ver.minor, meta->ver.update,
+			  meta->ver.draft, meta->name);
+
+		hw->ice_seg_fmt_ver = seg_hdr->seg_format_ver;
+		memcpy(hw->ice_seg_id, seg_hdr->seg_id,
+		       sizeof(hw->ice_seg_id));
+
+		ice_debug(hw, ICE_DBG_PKG, "Ice Seg: %d.%d.%d.%d, %s\n",
+			  seg_hdr->seg_format_ver.major,
+			  seg_hdr->seg_format_ver.minor,
+			  seg_hdr->seg_format_ver.update,
+			  seg_hdr->seg_format_ver.draft,
+			  seg_hdr->seg_id);
+	} else {
+		ice_debug(hw, ICE_DBG_INIT, "Did not find ice segment in driver package\n");
+		return ICE_DDP_PKG_INVALID_FILE;
+	}
+
+	return ICE_DDP_PKG_SUCCESS;
+}
+
+/**
+ * ice_get_pkg_info
+ * @hw: pointer to the hardware structure
+ *
+ * Store details of the package currently loaded in HW into the HW structure.
+ */
+static enum ice_ddp_state ice_get_pkg_info(struct ice_hw *hw)
+{
+	enum ice_ddp_state state = ICE_DDP_PKG_SUCCESS;
+	struct ice_aqc_get_pkg_info_resp *pkg_info;
+	u16 size;
+	u32 i;
+
+	size = struct_size(pkg_info, pkg_info, ICE_PKG_CNT);
+	pkg_info = kzalloc(size, GFP_KERNEL);
+	if (!pkg_info)
+		return ICE_DDP_PKG_ERR;
+
+	if (ice_aq_get_pkg_info_list(hw, pkg_info, size, NULL)) {
+		state = ICE_DDP_PKG_ERR;
+		goto init_pkg_free_alloc;
+	}
+
+	for (i = 0; i < le32_to_cpu(pkg_info->count); i++) {
+#define ICE_PKG_FLAG_COUNT	4
+		char flags[ICE_PKG_FLAG_COUNT + 1] = { 0 };
+		u8 place = 0;
+
+		if (pkg_info->pkg_info[i].is_active) {
+			flags[place++] = 'A';
+			hw->active_pkg_ver = pkg_info->pkg_info[i].ver;
+			hw->active_track_id =
+				le32_to_cpu(pkg_info->pkg_info[i].track_id);
+			memcpy(hw->active_pkg_name,
+			       pkg_info->pkg_info[i].name,
+			       sizeof(pkg_info->pkg_info[i].name));
+			hw->active_pkg_in_nvm = pkg_info->pkg_info[i].is_in_nvm;
+		}
+		if (pkg_info->pkg_info[i].is_active_at_boot)
+			flags[place++] = 'B';
+		if (pkg_info->pkg_info[i].is_modified)
+			flags[place++] = 'M';
+		if (pkg_info->pkg_info[i].is_in_nvm)
+			flags[place++] = 'N';
+
+		ice_debug(hw, ICE_DBG_PKG, "Pkg[%d]: %d.%d.%d.%d,%s,%s\n",
+			  i, pkg_info->pkg_info[i].ver.major,
+			  pkg_info->pkg_info[i].ver.minor,
+			  pkg_info->pkg_info[i].ver.update,
+			  pkg_info->pkg_info[i].ver.draft,
+			  pkg_info->pkg_info[i].name, flags);
+	}
+
+init_pkg_free_alloc:
+	kfree(pkg_info);
+
+	return state;
+}
+
+/**
+ * ice_chk_pkg_compat
+ * @hw: pointer to the hardware structure
+ * @ospkg: pointer to the package hdr
+ * @seg: pointer to the package segment hdr
+ *
+ * This function checks the package version compatibility with driver and NVM
+ */
+static enum ice_ddp_state
+ice_chk_pkg_compat(struct ice_hw *hw, struct ice_pkg_hdr *ospkg,
+		   struct ice_seg **seg)
+{
+	struct ice_aqc_get_pkg_info_resp *pkg;
+	enum ice_ddp_state state;
+	u16 size;
+	u32 i;
+
+	/* Check package version compatibility */
+	state = ice_chk_pkg_version(&hw->pkg_ver);
+	if (state) {
+		ice_debug(hw, ICE_DBG_INIT, "Package version check failed.\n");
+		return state;
+	}
+
+	/* find ICE segment in given package */
+	*seg = (struct ice_seg *)ice_find_seg_in_pkg(hw, SEGMENT_TYPE_ICE,
+						     ospkg);
+	if (!*seg) {
+		ice_debug(hw, ICE_DBG_INIT, "no ice segment in package.\n");
+		return ICE_DDP_PKG_INVALID_FILE;
+	}
+
+	/* Check if FW is compatible with the OS package */
+	size = struct_size(pkg, pkg_info, ICE_PKG_CNT);
+	pkg = kzalloc(size, GFP_KERNEL);
+	if (!pkg)
+		return ICE_DDP_PKG_ERR;
+
+	if (ice_aq_get_pkg_info_list(hw, pkg, size, NULL)) {
+		state = ICE_DDP_PKG_LOAD_ERROR;
+		goto fw_ddp_compat_free_alloc;
+	}
+
+	for (i = 0; i < le32_to_cpu(pkg->count); i++) {
+		/* loop till we find the NVM package */
+		if (!pkg->pkg_info[i].is_in_nvm)
+			continue;
+		if ((*seg)->hdr.seg_format_ver.major !=
+			pkg->pkg_info[i].ver.major ||
+		    (*seg)->hdr.seg_format_ver.minor >
+			pkg->pkg_info[i].ver.minor) {
+			state = ICE_DDP_PKG_FW_MISMATCH;
+			ice_debug(hw, ICE_DBG_INIT, "OS package is not compatible with NVM.\n");
+		}
+		/* done processing NVM package so break */
+		break;
+	}
+fw_ddp_compat_free_alloc:
+	kfree(pkg);
+	return state;
+}
+
+/**
+ * ice_init_pkg_hints
+ * @hw: pointer to the HW structure
+ * @ice_seg: pointer to the segment of the package scan (non-NULL)
+ *
+ * This function will scan the package and save off relevant information
+ * (hints or metadata) for driver use. The ice_seg parameter must not be NULL
+ * since the first call to ice_enum_labels requires a pointer to an actual
+ * ice_seg structure.
+ */
+static void ice_init_pkg_hints(struct ice_hw *hw, struct ice_seg *ice_seg)
+{
+	struct ice_pkg_enum state;
+	char *label_name;
+	u16 val;
+	int i;
+
+	memset(&hw->tnl, 0, sizeof(hw->tnl));
+	memset(&state, 0, sizeof(state));
+
+	if (!ice_seg)
+		return;
+
+	label_name = ice_enum_labels(ice_seg, ICE_SID_LBL_RXPARSER_TMEM, &state,
+				     &val);
+
+	while (label_name) {
+		if (!strncmp(label_name, ICE_TNL_PRE, strlen(ICE_TNL_PRE)))
+			/* check for a tunnel entry */
+			ice_add_tunnel_hint(hw, label_name, val);
+
+		/* check for a dvm mode entry */
+		else if (!strncmp(label_name, ICE_DVM_PRE, strlen(ICE_DVM_PRE)))
+			ice_add_dvm_hint(hw, val, true);
+
+		/* check for a svm mode entry */
+		else if (!strncmp(label_name, ICE_SVM_PRE, strlen(ICE_SVM_PRE)))
+			ice_add_dvm_hint(hw, val, false);
+
+		label_name = ice_enum_labels(NULL, 0, &state, &val);
+	}
+
+	/* Cache the appropriate boost TCAM entry pointers for tunnels */
+	for (i = 0; i < hw->tnl.count; i++) {
+		ice_find_boost_entry(ice_seg, hw->tnl.tbl[i].boost_addr,
+				     &hw->tnl.tbl[i].boost_entry);
+		if (hw->tnl.tbl[i].boost_entry) {
+			hw->tnl.tbl[i].valid = true;
+			if (hw->tnl.tbl[i].type < __TNL_TYPE_CNT)
+				hw->tnl.valid_count[hw->tnl.tbl[i].type]++;
+		}
+	}
+
+	/* Cache the appropriate boost TCAM entry pointers for DVM and SVM */
+	for (i = 0; i < hw->dvm_upd.count; i++)
+		ice_find_boost_entry(ice_seg, hw->dvm_upd.tbl[i].boost_addr,
+				     &hw->dvm_upd.tbl[i].boost_entry);
+}
+
+/**
+ * ice_fill_hw_ptype - fill the enabled PTYPE bit information
+ * @hw: pointer to the HW structure
+ */
+static void ice_fill_hw_ptype(struct ice_hw *hw)
+{
+	struct ice_marker_ptype_tcam_entry *tcam;
+	struct ice_seg *seg = hw->seg;
+	struct ice_pkg_enum state;
+
+	bitmap_zero(hw->hw_ptype, ICE_FLOW_PTYPE_MAX);
+	if (!seg)
+		return;
+
+	memset(&state, 0, sizeof(state));
+
+	do {
+		tcam = ice_pkg_enum_entry(seg, &state,
+					  ICE_SID_RXPARSER_MARKER_PTYPE, NULL,
+					  ice_marker_ptype_tcam_handler);
+		if (tcam &&
+		    le16_to_cpu(tcam->addr) < ICE_MARKER_PTYPE_TCAM_ADDR_MAX &&
+		    le16_to_cpu(tcam->ptype) < ICE_FLOW_PTYPE_MAX)
+			set_bit(le16_to_cpu(tcam->ptype), hw->hw_ptype);
+
+		seg = NULL;
+	} while (tcam);
+}
+
+/**
+ * ice_init_pkg - initialize/download package
+ * @hw: pointer to the hardware structure
+ * @buf: pointer to the package buffer
+ * @len: size of the package buffer
+ *
+ * This function initializes a package. The package contains HW tables
+ * required to do packet processing. First, the function extracts package
+ * information such as version. Then it finds the ice configuration segment
+ * within the package; this function then saves a copy of the segment pointer
+ * within the supplied package buffer. Next, the function will cache any hints
+ * from the package, followed by downloading the package itself. Note, that if
+ * a previous PF driver has already downloaded the package successfully, then
+ * the current driver will not have to download the package again.
+ *
+ * The local package contents will be used to query default behavior and to
+ * update specific sections of the HW's version of the package (e.g. to update
+ * the parse graph to understand new protocols).
+ *
+ * This function stores a pointer to the package buffer memory, and it is
+ * expected that the supplied buffer will not be freed immediately. If the
+ * package buffer needs to be freed, such as when read from a file, use
+ * ice_copy_and_init_pkg() instead of directly calling ice_init_pkg() in this
+ * case.
+ */
+enum ice_ddp_state ice_init_pkg(struct ice_hw *hw, u8 *buf, u32 len)
+{
+	bool already_loaded = false;
+	enum ice_ddp_state state;
+	struct ice_pkg_hdr *pkg;
+	struct ice_seg *seg;
+
+	if (!buf || !len)
+		return ICE_DDP_PKG_ERR;
+
+	pkg = (struct ice_pkg_hdr *)buf;
+	state = ice_verify_pkg(pkg, len);
+	if (state) {
+		ice_debug(hw, ICE_DBG_INIT, "failed to verify pkg (err: %d)\n",
+			  state);
+		return state;
+	}
+
+	/* initialize package info */
+	state = ice_init_pkg_info(hw, pkg);
+	if (state)
+		return state;
+
+	/* before downloading the package, check package version for
+	 * compatibility with driver
+	 */
+	state = ice_chk_pkg_compat(hw, pkg, &seg);
+	if (state)
+		return state;
+
+	/* initialize package hints and then download package */
+	ice_init_pkg_hints(hw, seg);
+	state = ice_download_pkg(hw, seg);
+	if (state == ICE_DDP_PKG_ALREADY_LOADED) {
+		ice_debug(hw, ICE_DBG_INIT, "package previously loaded - no work.\n");
+		already_loaded = true;
+	}
+
+	/* Get information on the package currently loaded in HW, then make sure
+	 * the driver is compatible with this version.
+	 */
+	if (!state || state == ICE_DDP_PKG_ALREADY_LOADED) {
+		state = ice_get_pkg_info(hw);
+		if (!state)
+			state = ice_get_ddp_pkg_state(hw, already_loaded);
+	}
+
+	if (ice_is_init_pkg_successful(state)) {
+		hw->seg = seg;
+		/* on successful package download update other required
+		 * registers to support the package and fill HW tables
+		 * with package content.
+		 */
+		ice_init_pkg_regs(hw);
+		ice_fill_blk_tbls(hw);
+		ice_fill_hw_ptype(hw);
+		ice_get_prof_index_max(hw);
+	} else {
+		ice_debug(hw, ICE_DBG_INIT, "package load failed, %d\n",
+			  state);
+	}
+
+	return state;
+}
+
+/**
+ * ice_copy_and_init_pkg - initialize/download a copy of the package
+ * @hw: pointer to the hardware structure
+ * @buf: pointer to the package buffer
+ * @len: size of the package buffer
+ *
+ * This function copies the package buffer, and then calls ice_init_pkg() to
+ * initialize the copied package contents.
+ *
+ * The copying is necessary if the package buffer supplied is constant, or if
+ * the memory may disappear shortly after calling this function.
+ *
+ * If the package buffer resides in the data segment and can be modified, the
+ * caller is free to use ice_init_pkg() instead of ice_copy_and_init_pkg().
+ *
+ * However, if the package buffer needs to be copied first, such as when being
+ * read from a file, the caller should use ice_copy_and_init_pkg().
+ *
+ * This function will first copy the package buffer, before calling
+ * ice_init_pkg(). The caller is free to immediately destroy the original
+ * package buffer, as the new copy will be managed by this function and
+ * related routines.
+ */
+enum ice_ddp_state
+ice_copy_and_init_pkg(struct ice_hw *hw, const u8 *buf, u32 len)
+{
+	enum ice_ddp_state state;
+	u8 *buf_copy;
+
+	if (!buf || !len)
+		return ICE_DDP_PKG_ERR;
+
+	buf_copy = devm_kmemdup(ice_hw_to_dev(hw), buf, len, GFP_KERNEL);
+
+	state = ice_init_pkg(hw, buf_copy, len);
+	if (!ice_is_init_pkg_successful(state)) {
+		/* Free the copy, since we failed to initialize the package */
+		devm_kfree(ice_hw_to_dev(hw), buf_copy);
+	} else {
+		/* Track the copied pkg so we can free it later */
+		hw->pkg_copy = buf_copy;
+		hw->pkg_size = len;
+	}
+
+	return state;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.h b/drivers/net/ethernet/intel/ice/ice_ddp.h
new file mode 100644
index 000000000000..65c52fcd8e23
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.h
@@ -0,0 +1,450 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (c) 2022, Intel Corporation. */
+
+#ifndef _ICE_DDP_H_
+#define _ICE_DDP_H_
+
+#include "ice_type.h"
+
+/* Package minimal version supported */
+#define ICE_PKG_SUPP_VER_MAJ	1
+#define ICE_PKG_SUPP_VER_MNR	3
+
+/* Package format version */
+#define ICE_PKG_FMT_VER_MAJ	1
+#define ICE_PKG_FMT_VER_MNR	0
+#define ICE_PKG_FMT_VER_UPD	0
+#define ICE_PKG_FMT_VER_DFT	0
+
+#define ICE_PKG_CNT 4
+
+#define ICE_FV_OFFSET_INVAL	0x1FF
+
+/* Extraction Sequence (Field Vector) Table */
+struct ice_fv_word {
+	u8 prot_id;
+	u16 off;		/* Offset within the protocol header */
+	u8 resvrd;
+} __packed;
+
+#define ICE_MAX_NUM_PROFILES 256
+
+#define ICE_MAX_FV_WORDS 48
+struct ice_fv {
+	struct ice_fv_word ew[ICE_MAX_FV_WORDS];
+};
+
+enum ice_ddp_state {
+	/* Indicates that this call to ice_init_pkg
+	 * successfully loaded the requested DDP package
+	 */
+	ICE_DDP_PKG_SUCCESS			= 0,
+
+	/* Generic error for already loaded errors, it is mapped later to
+	 * the more specific one (one of the next 3)
+	 */
+	ICE_DDP_PKG_ALREADY_LOADED			= -1,
+
+	/* Indicates that a DDP package of the same version has already been
+	 * loaded onto the device by a previous call or by another PF
+	 */
+	ICE_DDP_PKG_SAME_VERSION_ALREADY_LOADED		= -2,
+
+	/* The device has a DDP package that is not supported by the driver */
+	ICE_DDP_PKG_ALREADY_LOADED_NOT_SUPPORTED	= -3,
+
+	/* The device has a compatible package
+	 * (but different from the request) already loaded
+	 */
+	ICE_DDP_PKG_COMPATIBLE_ALREADY_LOADED		= -4,
+
+	/* The firmware loaded on the device is not compatible with
+	 * the DDP package loaded
+	 */
+	ICE_DDP_PKG_FW_MISMATCH				= -5,
+
+	/* The DDP package file is invalid */
+	ICE_DDP_PKG_INVALID_FILE			= -6,
+
+	/* The version of the DDP package provided is higher than
+	 * the driver supports
+	 */
+	ICE_DDP_PKG_FILE_VERSION_TOO_HIGH		= -7,
+
+	/* The version of the DDP package provided is lower than the
+	 * driver supports
+	 */
+	ICE_DDP_PKG_FILE_VERSION_TOO_LOW		= -8,
+
+	/* The signature of the DDP package file provided is invalid */
+	ICE_DDP_PKG_FILE_SIGNATURE_INVALID		= -9,
+
+	/* The DDP package file security revision is too low and not
+	 * supported by firmware
+	 */
+	ICE_DDP_PKG_FILE_REVISION_TOO_LOW		= -10,
+
+	/* An error occurred in firmware while loading the DDP package */
+	ICE_DDP_PKG_LOAD_ERROR				= -11,
+
+	/* Other errors */
+	ICE_DDP_PKG_ERR					= -12
+};
+
+/* Package and segment headers and tables */
+struct ice_pkg_hdr {
+	struct ice_pkg_ver pkg_format_ver;
+	__le32 seg_count;
+	__le32 seg_offset[];
+};
+
+/* generic segment */
+struct ice_generic_seg_hdr {
+#define SEGMENT_TYPE_METADATA	      0x00000001
+#define SEGMENT_TYPE_ICE	      0x00000010
+#define SEGMENT_TYPE_ICE_RUN_TIME_CFG 0x00000020
+	__le32 seg_type;
+	struct ice_pkg_ver seg_format_ver;
+	__le32 seg_size;
+	char seg_id[ICE_PKG_NAME_SIZE];
+};
+
+/* ice specific segment */
+
+union ice_device_id {
+	struct {
+		__le16 device_id;
+		__le16 vendor_id;
+	} dev_vend_id;
+	__le32 id;
+};
+
+struct ice_device_id_entry {
+	union ice_device_id device;
+	union ice_device_id sub_device;
+};
+
+struct ice_seg {
+	struct ice_generic_seg_hdr hdr;
+	__le32 device_table_count;
+	struct ice_device_id_entry device_table[];
+};
+
+struct ice_nvm_table {
+	__le32 table_count;
+	__le32 vers[];
+};
+
+struct ice_buf {
+#define ICE_PKG_BUF_SIZE	4096
+	u8 buf[ICE_PKG_BUF_SIZE];
+};
+
+struct ice_buf_table {
+	__le32 buf_count;
+	struct ice_buf buf_array[];
+};
+
+struct ice_run_time_cfg_seg {
+	struct ice_generic_seg_hdr hdr;
+	u8 rsvd[8];
+	struct ice_buf_table buf_table;
+};
+
+/* global metadata specific segment */
+struct ice_global_metadata_seg {
+	struct ice_generic_seg_hdr hdr;
+	struct ice_pkg_ver pkg_ver;
+	__le32 rsvd;
+	char pkg_name[ICE_PKG_NAME_SIZE];
+};
+
+#define ICE_MIN_S_OFF		12
+#define ICE_MAX_S_OFF		4095
+#define ICE_MIN_S_SZ		1
+#define ICE_MAX_S_SZ		4084
+
+/* section information */
+struct ice_section_entry {
+	__le32 type;
+	__le16 offset;
+	__le16 size;
+};
+
+#define ICE_MIN_S_COUNT		1
+#define ICE_MAX_S_COUNT		511
+#define ICE_MIN_S_DATA_END	12
+#define ICE_MAX_S_DATA_END	4096
+
+#define ICE_METADATA_BUF	0x80000000
+
+struct ice_buf_hdr {
+	__le16 section_count;
+	__le16 data_end;
+	struct ice_section_entry section_entry[];
+};
+
+#define ICE_MAX_ENTRIES_IN_BUF(hd_sz, ent_sz) ((ICE_PKG_BUF_SIZE - \
+	struct_size((struct ice_buf_hdr *)0, section_entry, 1) - (hd_sz)) /\
+	(ent_sz))
+
+/* ice package section IDs */
+#define ICE_SID_METADATA		1
+#define ICE_SID_XLT0_SW			10
+#define ICE_SID_XLT_KEY_BUILDER_SW	11
+#define ICE_SID_XLT1_SW			12
+#define ICE_SID_XLT2_SW			13
+#define ICE_SID_PROFID_TCAM_SW		14
+#define ICE_SID_PROFID_REDIR_SW		15
+#define ICE_SID_FLD_VEC_SW		16
+#define ICE_SID_CDID_KEY_BUILDER_SW	17
+
+struct ice_meta_sect {
+	struct ice_pkg_ver ver;
+#define ICE_META_SECT_NAME_SIZE	28
+	char name[ICE_META_SECT_NAME_SIZE];
+	__le32 track_id;
+};
+
+#define ICE_SID_CDID_REDIR_SW		18
+
+#define ICE_SID_XLT0_ACL		20
+#define ICE_SID_XLT_KEY_BUILDER_ACL	21
+#define ICE_SID_XLT1_ACL		22
+#define ICE_SID_XLT2_ACL		23
+#define ICE_SID_PROFID_TCAM_ACL		24
+#define ICE_SID_PROFID_REDIR_ACL	25
+#define ICE_SID_FLD_VEC_ACL		26
+#define ICE_SID_CDID_KEY_BUILDER_ACL	27
+#define ICE_SID_CDID_REDIR_ACL		28
+
+#define ICE_SID_XLT0_FD			30
+#define ICE_SID_XLT_KEY_BUILDER_FD	31
+#define ICE_SID_XLT1_FD			32
+#define ICE_SID_XLT2_FD			33
+#define ICE_SID_PROFID_TCAM_FD		34
+#define ICE_SID_PROFID_REDIR_FD		35
+#define ICE_SID_FLD_VEC_FD		36
+#define ICE_SID_CDID_KEY_BUILDER_FD	37
+#define ICE_SID_CDID_REDIR_FD		38
+
+#define ICE_SID_XLT0_RSS		40
+#define ICE_SID_XLT_KEY_BUILDER_RSS	41
+#define ICE_SID_XLT1_RSS		42
+#define ICE_SID_XLT2_RSS		43
+#define ICE_SID_PROFID_TCAM_RSS		44
+#define ICE_SID_PROFID_REDIR_RSS	45
+#define ICE_SID_FLD_VEC_RSS		46
+#define ICE_SID_CDID_KEY_BUILDER_RSS	47
+#define ICE_SID_CDID_REDIR_RSS		48
+
+#define ICE_SID_RXPARSER_MARKER_PTYPE	55
+#define ICE_SID_RXPARSER_BOOST_TCAM	56
+#define ICE_SID_RXPARSER_METADATA_INIT	58
+#define ICE_SID_TXPARSER_BOOST_TCAM	66
+
+#define ICE_SID_XLT0_PE			80
+#define ICE_SID_XLT_KEY_BUILDER_PE	81
+#define ICE_SID_XLT1_PE			82
+#define ICE_SID_XLT2_PE			83
+#define ICE_SID_PROFID_TCAM_PE		84
+#define ICE_SID_PROFID_REDIR_PE		85
+#define ICE_SID_FLD_VEC_PE		86
+#define ICE_SID_CDID_KEY_BUILDER_PE	87
+#define ICE_SID_CDID_REDIR_PE		88
+
+/* Label Metadata section IDs */
+#define ICE_SID_LBL_FIRST		0x80000010
+#define ICE_SID_LBL_RXPARSER_TMEM	0x80000018
+/* The following define MUST be updated to reflect the last label section ID */
+#define ICE_SID_LBL_LAST		0x80000038
+
+/* Label ICE runtime configuration section IDs */
+#define ICE_SID_TX_5_LAYER_TOPO		0x10
+
+enum ice_block {
+	ICE_BLK_SW = 0,
+	ICE_BLK_ACL,
+	ICE_BLK_FD,
+	ICE_BLK_RSS,
+	ICE_BLK_PE,
+	ICE_BLK_COUNT
+};
+
+enum ice_sect {
+	ICE_XLT0 = 0,
+	ICE_XLT_KB,
+	ICE_XLT1,
+	ICE_XLT2,
+	ICE_PROF_TCAM,
+	ICE_PROF_REDIR,
+	ICE_VEC_TBL,
+	ICE_CDID_KB,
+	ICE_CDID_REDIR,
+	ICE_SECT_COUNT
+};
+
+/* package labels */
+struct ice_label {
+	__le16 value;
+#define ICE_PKG_LABEL_SIZE	64
+	char name[ICE_PKG_LABEL_SIZE];
+};
+
+struct ice_label_section {
+	__le16 count;
+	struct ice_label label[];
+};
+
+#define ICE_MAX_LABELS_IN_BUF ICE_MAX_ENTRIES_IN_BUF( \
+	struct_size((struct ice_label_section *)0, label, 1) - \
+	sizeof(struct ice_label), sizeof(struct ice_label))
+
+struct ice_sw_fv_section {
+	__le16 count;
+	__le16 base_offset;
+	struct ice_fv fv[];
+};
+
+struct ice_sw_fv_list_entry {
+	struct list_head list_entry;
+	u32 profile_id;
+	struct ice_fv *fv_ptr;
+};
+
+/* The BOOST TCAM stores the match packet header in reverse order, meaning
+ * the fields are reversed; in addition, this means that the normally big endian
+ * fields of the packet are now little endian.
+ */
+struct ice_boost_key_value {
+#define ICE_BOOST_REMAINING_HV_KEY	15
+	u8 remaining_hv_key[ICE_BOOST_REMAINING_HV_KEY];
+	__le16 hv_dst_port_key;
+	__le16 hv_src_port_key;
+	u8 tcam_search_key;
+} __packed;
+
+struct ice_boost_key {
+	struct ice_boost_key_value key;
+	struct ice_boost_key_value key2;
+};
+
+/* package Boost TCAM entry */
+struct ice_boost_tcam_entry {
+	__le16 addr;
+	__le16 reserved;
+	/* break up the 40 bytes of key into different fields */
+	struct ice_boost_key key;
+	u8 boost_hit_index_group;
+	/* The following contains bitfields which are not on byte boundaries.
+	 * These fields are currently unused by driver software.
+	 */
+#define ICE_BOOST_BIT_FIELDS		43
+	u8 bit_fields[ICE_BOOST_BIT_FIELDS];
+};
+
+struct ice_boost_tcam_section {
+	__le16 count;
+	__le16 reserved;
+	struct ice_boost_tcam_entry tcam[];
+};
+
+#define ICE_MAX_BST_TCAMS_IN_BUF ICE_MAX_ENTRIES_IN_BUF( \
+	struct_size((struct ice_boost_tcam_section *)0, tcam, 1) - \
+	sizeof(struct ice_boost_tcam_entry), \
+	sizeof(struct ice_boost_tcam_entry))
+
+/* package Marker Ptype TCAM entry */
+struct ice_marker_ptype_tcam_entry {
+#define ICE_MARKER_PTYPE_TCAM_ADDR_MAX	1024
+	__le16 addr;
+	__le16 ptype;
+	u8 keys[20];
+};
+
+struct ice_marker_ptype_tcam_section {
+	__le16 count;
+	__le16 reserved;
+	struct ice_marker_ptype_tcam_entry tcam[];
+};
+
+#define ICE_MAX_MARKER_PTYPE_TCAMS_IN_BUF	\
+	ICE_MAX_ENTRIES_IN_BUF(struct_size((struct ice_marker_ptype_tcam_section *)0, tcam, 1) - \
+	sizeof(struct ice_marker_ptype_tcam_entry), \
+	sizeof(struct ice_marker_ptype_tcam_entry))
+
+struct ice_xlt1_section {
+	__le16 count;
+	__le16 offset;
+	u8 value[];
+};
+
+struct ice_xlt2_section {
+	__le16 count;
+	__le16 offset;
+	__le16 value[];
+};
+
+struct ice_prof_redir_section {
+	__le16 count;
+	__le16 offset;
+	u8 redir_value[];
+};
+
+/* package buffer building */
+
+struct ice_buf_build {
+	struct ice_buf buf;
+	u16 reserved_section_table_entries;
+};
+
+struct ice_pkg_enum {
+	struct ice_buf_table *buf_table;
+	u32 buf_idx;
+
+	u32 type;
+	struct ice_buf_hdr *buf;
+	u32 sect_idx;
+	void *sect;
+	u32 sect_type;
+
+	u32 entry_idx;
+	void *(*handler)(u32 sect_type, void *section, u32 index, u32 *offset);
+};
+
+int
+ice_aq_download_pkg(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
+		    u16 buf_size, bool last_buf, u32 *error_offset,
+		    u32 *error_info, struct ice_sq_cd *cd);
+int
+ice_aq_upload_section(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
+		      u16 buf_size, struct ice_sq_cd *cd);
+
+void *
+ice_pkg_buf_alloc_section(struct ice_buf_build *bld, u32 type, u16 size);
+
+enum ice_ddp_state
+ice_verify_pkg(struct ice_pkg_hdr *pkg, u32 len);
+
+struct ice_buf_build *
+ice_pkg_buf_alloc(struct ice_hw *hw);
+
+struct ice_generic_seg_hdr *
+ice_find_seg_in_pkg(struct ice_hw *hw, u32 seg_type,
+		    struct ice_pkg_hdr *pkg_hdr);
+
+int
+ice_update_pkg_no_lock(struct ice_hw *hw, struct ice_buf *bufs, u32 count);
+int ice_update_pkg(struct ice_hw *hw, struct ice_buf *bufs, u32 count);
+
+int
+ice_pkg_buf_reserve_section(struct ice_buf_build *bld, u16 count);
+u16
+ice_pkg_buf_get_active_sections(struct ice_buf_build *bld);
+void *
+ice_pkg_enum_section(struct ice_seg *ice_seg, struct ice_pkg_enum *state,
+		     u32 sect_type);
+
+struct ice_buf_hdr *ice_pkg_val_buf(struct ice_buf *buf);
+
+#endif
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 68ebcc72609a..dc7d60354e4b 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -7,23 +7,6 @@
 #include "ice_sched.h"
 #include "ice.h"
 
-/* For supporting double VLAN mode, it is necessary to enable or disable certain
- * boost tcam entries. The metadata labels names that match the following
- * prefixes will be saved to allow enabling double VLAN mode.
- */
-#define ICE_DVM_PRE	"BOOST_MAC_VLAN_DVM"	/* enable these entries */
-#define ICE_SVM_PRE	"BOOST_MAC_VLAN_SVM"	/* disable these entries */
-
-/* To support tunneling entries by PF, the package will append the PF number to
- * the label; for example TNL_VXLAN_PF0, TNL_VXLAN_PF1, TNL_VXLAN_PF2, etc.
- */
-#define ICE_TNL_PRE	"TNL_"
-static const struct ice_tunnel_type_scan tnls[] = {
-	{ TNL_VXLAN,		"TNL_VXLAN_PF" },
-	{ TNL_GENEVE,		"TNL_GENEVE_PF" },
-	{ TNL_LAST,		"" }
-};
-
 static const u32 ice_sect_lkup[ICE_BLK_COUNT][ICE_SECT_COUNT] = {
 	/* SWITCH */
 	{
@@ -104,225 +87,6 @@ static u32 ice_sect_id(enum ice_block blk, enum ice_sect sect)
 	return ice_sect_lkup[blk][sect];
 }
 
-/**
- * ice_pkg_val_buf
- * @buf: pointer to the ice buffer
- *
- * This helper function validates a buffer's header.
- */
-static struct ice_buf_hdr *ice_pkg_val_buf(struct ice_buf *buf)
-{
-	struct ice_buf_hdr *hdr;
-	u16 section_count;
-	u16 data_end;
-
-	hdr = (struct ice_buf_hdr *)buf->buf;
-	/* verify data */
-	section_count = le16_to_cpu(hdr->section_count);
-	if (section_count < ICE_MIN_S_COUNT || section_count > ICE_MAX_S_COUNT)
-		return NULL;
-
-	data_end = le16_to_cpu(hdr->data_end);
-	if (data_end < ICE_MIN_S_DATA_END || data_end > ICE_MAX_S_DATA_END)
-		return NULL;
-
-	return hdr;
-}
-
-/**
- * ice_find_buf_table
- * @ice_seg: pointer to the ice segment
- *
- * Returns the address of the buffer table within the ice segment.
- */
-static struct ice_buf_table *ice_find_buf_table(struct ice_seg *ice_seg)
-{
-	struct ice_nvm_table *nvms;
-
-	nvms = (struct ice_nvm_table *)
-		(ice_seg->device_table +
-		 le32_to_cpu(ice_seg->device_table_count));
-
-	return (__force struct ice_buf_table *)
-		(nvms->vers + le32_to_cpu(nvms->table_count));
-}
-
-/**
- * ice_pkg_enum_buf
- * @ice_seg: pointer to the ice segment (or NULL on subsequent calls)
- * @state: pointer to the enum state
- *
- * This function will enumerate all the buffers in the ice segment. The first
- * call is made with the ice_seg parameter non-NULL; on subsequent calls,
- * ice_seg is set to NULL which continues the enumeration. When the function
- * returns a NULL pointer, then the end of the buffers has been reached, or an
- * unexpected value has been detected (for example an invalid section count or
- * an invalid buffer end value).
- */
-static struct ice_buf_hdr *
-ice_pkg_enum_buf(struct ice_seg *ice_seg, struct ice_pkg_enum *state)
-{
-	if (ice_seg) {
-		state->buf_table = ice_find_buf_table(ice_seg);
-		if (!state->buf_table)
-			return NULL;
-
-		state->buf_idx = 0;
-		return ice_pkg_val_buf(state->buf_table->buf_array);
-	}
-
-	if (++state->buf_idx < le32_to_cpu(state->buf_table->buf_count))
-		return ice_pkg_val_buf(state->buf_table->buf_array +
-				       state->buf_idx);
-	else
-		return NULL;
-}
-
-/**
- * ice_pkg_advance_sect
- * @ice_seg: pointer to the ice segment (or NULL on subsequent calls)
- * @state: pointer to the enum state
- *
- * This helper function will advance the section within the ice segment,
- * also advancing the buffer if needed.
- */
-static bool
-ice_pkg_advance_sect(struct ice_seg *ice_seg, struct ice_pkg_enum *state)
-{
-	if (!ice_seg && !state->buf)
-		return false;
-
-	if (!ice_seg && state->buf)
-		if (++state->sect_idx < le16_to_cpu(state->buf->section_count))
-			return true;
-
-	state->buf = ice_pkg_enum_buf(ice_seg, state);
-	if (!state->buf)
-		return false;
-
-	/* start of new buffer, reset section index */
-	state->sect_idx = 0;
-	return true;
-}
-
-/**
- * ice_pkg_enum_section
- * @ice_seg: pointer to the ice segment (or NULL on subsequent calls)
- * @state: pointer to the enum state
- * @sect_type: section type to enumerate
- *
- * This function will enumerate all the sections of a particular type in the
- * ice segment. The first call is made with the ice_seg parameter non-NULL;
- * on subsequent calls, ice_seg is set to NULL which continues the enumeration.
- * When the function returns a NULL pointer, then the end of the matching
- * sections has been reached.
- */
-static void *
-ice_pkg_enum_section(struct ice_seg *ice_seg, struct ice_pkg_enum *state,
-		     u32 sect_type)
-{
-	u16 offset, size;
-
-	if (ice_seg)
-		state->type = sect_type;
-
-	if (!ice_pkg_advance_sect(ice_seg, state))
-		return NULL;
-
-	/* scan for next matching section */
-	while (state->buf->section_entry[state->sect_idx].type !=
-	       cpu_to_le32(state->type))
-		if (!ice_pkg_advance_sect(NULL, state))
-			return NULL;
-
-	/* validate section */
-	offset = le16_to_cpu(state->buf->section_entry[state->sect_idx].offset);
-	if (offset < ICE_MIN_S_OFF || offset > ICE_MAX_S_OFF)
-		return NULL;
-
-	size = le16_to_cpu(state->buf->section_entry[state->sect_idx].size);
-	if (size < ICE_MIN_S_SZ || size > ICE_MAX_S_SZ)
-		return NULL;
-
-	/* make sure the section fits in the buffer */
-	if (offset + size > ICE_PKG_BUF_SIZE)
-		return NULL;
-
-	state->sect_type =
-		le32_to_cpu(state->buf->section_entry[state->sect_idx].type);
-
-	/* calc pointer to this section */
-	state->sect = ((u8 *)state->buf) +
-		le16_to_cpu(state->buf->section_entry[state->sect_idx].offset);
-
-	return state->sect;
-}
-
-/**
- * ice_pkg_enum_entry
- * @ice_seg: pointer to the ice segment (or NULL on subsequent calls)
- * @state: pointer to the enum state
- * @sect_type: section type to enumerate
- * @offset: pointer to variable that receives the offset in the table (optional)
- * @handler: function that handles access to the entries into the section type
- *
- * This function will enumerate all the entries in particular section type in
- * the ice segment. The first call is made with the ice_seg parameter non-NULL;
- * on subsequent calls, ice_seg is set to NULL which continues the enumeration.
- * When the function returns a NULL pointer, then the end of the entries has
- * been reached.
- *
- * Since each section may have a different header and entry size, the handler
- * function is needed to determine the number and location entries in each
- * section.
- *
- * The offset parameter is optional, but should be used for sections that
- * contain an offset for each section table. For such cases, the section handler
- * function must return the appropriate offset + index to give the absolution
- * offset for each entry. For example, if the base for a section's header
- * indicates a base offset of 10, and the index for the entry is 2, then
- * section handler function should set the offset to 10 + 2 = 12.
- */
-static void *
-ice_pkg_enum_entry(struct ice_seg *ice_seg, struct ice_pkg_enum *state,
-		   u32 sect_type, u32 *offset,
-		   void *(*handler)(u32 sect_type, void *section,
-				    u32 index, u32 *offset))
-{
-	void *entry;
-
-	if (ice_seg) {
-		if (!handler)
-			return NULL;
-
-		if (!ice_pkg_enum_section(ice_seg, state, sect_type))
-			return NULL;
-
-		state->entry_idx = 0;
-		state->handler = handler;
-	} else {
-		state->entry_idx++;
-	}
-
-	if (!state->handler)
-		return NULL;
-
-	/* get entry */
-	entry = state->handler(state->sect_type, state->sect, state->entry_idx,
-			       offset);
-	if (!entry) {
-		/* end of a section, look for another section of this type */
-		if (!ice_pkg_enum_section(NULL, state, 0))
-			return NULL;
-
-		state->entry_idx = 0;
-		entry = state->handler(state->sect_type, state->sect,
-				       state->entry_idx, offset);
-	}
-
-	return entry;
-}
-
 /**
  * ice_hw_ptype_ena - check if the PTYPE is enabled or not
  * @hw: pointer to the HW structure
@@ -334,310 +98,6 @@ bool ice_hw_ptype_ena(struct ice_hw *hw, u16 ptype)
 	       test_bit(ptype, hw->hw_ptype);
 }
 
-/**
- * ice_marker_ptype_tcam_handler
- * @sect_type: section type
- * @section: pointer to section
- * @index: index of the Marker PType TCAM entry to be returned
- * @offset: pointer to receive absolute offset, always 0 for ptype TCAM sections
- *
- * This is a callback function that can be passed to ice_pkg_enum_entry.
- * Handles enumeration of individual Marker PType TCAM entries.
- */
-static void *
-ice_marker_ptype_tcam_handler(u32 sect_type, void *section, u32 index,
-			      u32 *offset)
-{
-	struct ice_marker_ptype_tcam_section *marker_ptype;
-
-	if (sect_type != ICE_SID_RXPARSER_MARKER_PTYPE)
-		return NULL;
-
-	if (index > ICE_MAX_MARKER_PTYPE_TCAMS_IN_BUF)
-		return NULL;
-
-	if (offset)
-		*offset = 0;
-
-	marker_ptype = section;
-	if (index >= le16_to_cpu(marker_ptype->count))
-		return NULL;
-
-	return marker_ptype->tcam + index;
-}
-
-/**
- * ice_fill_hw_ptype - fill the enabled PTYPE bit information
- * @hw: pointer to the HW structure
- */
-static void ice_fill_hw_ptype(struct ice_hw *hw)
-{
-	struct ice_marker_ptype_tcam_entry *tcam;
-	struct ice_seg *seg = hw->seg;
-	struct ice_pkg_enum state;
-
-	bitmap_zero(hw->hw_ptype, ICE_FLOW_PTYPE_MAX);
-	if (!seg)
-		return;
-
-	memset(&state, 0, sizeof(state));
-
-	do {
-		tcam = ice_pkg_enum_entry(seg, &state,
-					  ICE_SID_RXPARSER_MARKER_PTYPE, NULL,
-					  ice_marker_ptype_tcam_handler);
-		if (tcam &&
-		    le16_to_cpu(tcam->addr) < ICE_MARKER_PTYPE_TCAM_ADDR_MAX &&
-		    le16_to_cpu(tcam->ptype) < ICE_FLOW_PTYPE_MAX)
-			set_bit(le16_to_cpu(tcam->ptype), hw->hw_ptype);
-
-		seg = NULL;
-	} while (tcam);
-}
-
-/**
- * ice_boost_tcam_handler
- * @sect_type: section type
- * @section: pointer to section
- * @index: index of the boost TCAM entry to be returned
- * @offset: pointer to receive absolute offset, always 0 for boost TCAM sections
- *
- * This is a callback function that can be passed to ice_pkg_enum_entry.
- * Handles enumeration of individual boost TCAM entries.
- */
-static void *
-ice_boost_tcam_handler(u32 sect_type, void *section, u32 index, u32 *offset)
-{
-	struct ice_boost_tcam_section *boost;
-
-	if (!section)
-		return NULL;
-
-	if (sect_type != ICE_SID_RXPARSER_BOOST_TCAM)
-		return NULL;
-
-	if (index > ICE_MAX_BST_TCAMS_IN_BUF)
-		return NULL;
-
-	if (offset)
-		*offset = 0;
-
-	boost = section;
-	if (index >= le16_to_cpu(boost->count))
-		return NULL;
-
-	return boost->tcam + index;
-}
-
-/**
- * ice_find_boost_entry
- * @ice_seg: pointer to the ice segment (non-NULL)
- * @addr: Boost TCAM address of entry to search for
- * @entry: returns pointer to the entry
- *
- * Finds a particular Boost TCAM entry and returns a pointer to that entry
- * if it is found. The ice_seg parameter must not be NULL since the first call
- * to ice_pkg_enum_entry requires a pointer to an actual ice_segment structure.
- */
-static int
-ice_find_boost_entry(struct ice_seg *ice_seg, u16 addr,
-		     struct ice_boost_tcam_entry **entry)
-{
-	struct ice_boost_tcam_entry *tcam;
-	struct ice_pkg_enum state;
-
-	memset(&state, 0, sizeof(state));
-
-	if (!ice_seg)
-		return -EINVAL;
-
-	do {
-		tcam = ice_pkg_enum_entry(ice_seg, &state,
-					  ICE_SID_RXPARSER_BOOST_TCAM, NULL,
-					  ice_boost_tcam_handler);
-		if (tcam && le16_to_cpu(tcam->addr) == addr) {
-			*entry = tcam;
-			return 0;
-		}
-
-		ice_seg = NULL;
-	} while (tcam);
-
-	*entry = NULL;
-	return -EIO;
-}
-
-/**
- * ice_label_enum_handler
- * @sect_type: section type
- * @section: pointer to section
- * @index: index of the label entry to be returned
- * @offset: pointer to receive absolute offset, always zero for label sections
- *
- * This is a callback function that can be passed to ice_pkg_enum_entry.
- * Handles enumeration of individual label entries.
- */
-static void *
-ice_label_enum_handler(u32 __always_unused sect_type, void *section, u32 index,
-		       u32 *offset)
-{
-	struct ice_label_section *labels;
-
-	if (!section)
-		return NULL;
-
-	if (index > ICE_MAX_LABELS_IN_BUF)
-		return NULL;
-
-	if (offset)
-		*offset = 0;
-
-	labels = section;
-	if (index >= le16_to_cpu(labels->count))
-		return NULL;
-
-	return labels->label + index;
-}
-
-/**
- * ice_enum_labels
- * @ice_seg: pointer to the ice segment (NULL on subsequent calls)
- * @type: the section type that will contain the label (0 on subsequent calls)
- * @state: ice_pkg_enum structure that will hold the state of the enumeration
- * @value: pointer to a value that will return the label's value if found
- *
- * Enumerates a list of labels in the package. The caller will call
- * ice_enum_labels(ice_seg, type, ...) to start the enumeration, then call
- * ice_enum_labels(NULL, 0, ...) to continue. When the function returns a NULL
- * the end of the list has been reached.
- */
-static char *
-ice_enum_labels(struct ice_seg *ice_seg, u32 type, struct ice_pkg_enum *state,
-		u16 *value)
-{
-	struct ice_label *label;
-
-	/* Check for valid label section on first call */
-	if (type && !(type >= ICE_SID_LBL_FIRST && type <= ICE_SID_LBL_LAST))
-		return NULL;
-
-	label = ice_pkg_enum_entry(ice_seg, state, type, NULL,
-				   ice_label_enum_handler);
-	if (!label)
-		return NULL;
-
-	*value = le16_to_cpu(label->value);
-	return label->name;
-}
-
-/**
- * ice_add_tunnel_hint
- * @hw: pointer to the HW structure
- * @label_name: label text
- * @val: value of the tunnel port boost entry
- */
-static void ice_add_tunnel_hint(struct ice_hw *hw, char *label_name, u16 val)
-{
-	if (hw->tnl.count < ICE_TUNNEL_MAX_ENTRIES) {
-		u16 i;
-
-		for (i = 0; tnls[i].type != TNL_LAST; i++) {
-			size_t len = strlen(tnls[i].label_prefix);
-
-			/* Look for matching label start, before continuing */
-			if (strncmp(label_name, tnls[i].label_prefix, len))
-				continue;
-
-			/* Make sure this label matches our PF. Note that the PF
-			 * character ('0' - '7') will be located where our
-			 * prefix string's null terminator is located.
-			 */
-			if ((label_name[len] - '0') == hw->pf_id) {
-				hw->tnl.tbl[hw->tnl.count].type = tnls[i].type;
-				hw->tnl.tbl[hw->tnl.count].valid = false;
-				hw->tnl.tbl[hw->tnl.count].boost_addr = val;
-				hw->tnl.tbl[hw->tnl.count].port = 0;
-				hw->tnl.count++;
-				break;
-			}
-		}
-	}
-}
-
-/**
- * ice_add_dvm_hint
- * @hw: pointer to the HW structure
- * @val: value of the boost entry
- * @enable: true if entry needs to be enabled, or false if needs to be disabled
- */
-static void ice_add_dvm_hint(struct ice_hw *hw, u16 val, bool enable)
-{
-	if (hw->dvm_upd.count < ICE_DVM_MAX_ENTRIES) {
-		hw->dvm_upd.tbl[hw->dvm_upd.count].boost_addr = val;
-		hw->dvm_upd.tbl[hw->dvm_upd.count].enable = enable;
-		hw->dvm_upd.count++;
-	}
-}
-
-/**
- * ice_init_pkg_hints
- * @hw: pointer to the HW structure
- * @ice_seg: pointer to the segment of the package scan (non-NULL)
- *
- * This function will scan the package and save off relevant information
- * (hints or metadata) for driver use. The ice_seg parameter must not be NULL
- * since the first call to ice_enum_labels requires a pointer to an actual
- * ice_seg structure.
- */
-static void ice_init_pkg_hints(struct ice_hw *hw, struct ice_seg *ice_seg)
-{
-	struct ice_pkg_enum state;
-	char *label_name;
-	u16 val;
-	int i;
-
-	memset(&hw->tnl, 0, sizeof(hw->tnl));
-	memset(&state, 0, sizeof(state));
-
-	if (!ice_seg)
-		return;
-
-	label_name = ice_enum_labels(ice_seg, ICE_SID_LBL_RXPARSER_TMEM, &state,
-				     &val);
-
-	while (label_name) {
-		if (!strncmp(label_name, ICE_TNL_PRE, strlen(ICE_TNL_PRE)))
-			/* check for a tunnel entry */
-			ice_add_tunnel_hint(hw, label_name, val);
-
-		/* check for a dvm mode entry */
-		else if (!strncmp(label_name, ICE_DVM_PRE, strlen(ICE_DVM_PRE)))
-			ice_add_dvm_hint(hw, val, true);
-
-		/* check for a svm mode entry */
-		else if (!strncmp(label_name, ICE_SVM_PRE, strlen(ICE_SVM_PRE)))
-			ice_add_dvm_hint(hw, val, false);
-
-		label_name = ice_enum_labels(NULL, 0, &state, &val);
-	}
-
-	/* Cache the appropriate boost TCAM entry pointers for tunnels */
-	for (i = 0; i < hw->tnl.count; i++) {
-		ice_find_boost_entry(ice_seg, hw->tnl.tbl[i].boost_addr,
-				     &hw->tnl.tbl[i].boost_entry);
-		if (hw->tnl.tbl[i].boost_entry) {
-			hw->tnl.tbl[i].valid = true;
-			if (hw->tnl.tbl[i].type < __TNL_TYPE_CNT)
-				hw->tnl.valid_count[hw->tnl.tbl[i].type]++;
-		}
-	}
-
-	/* Cache the appropriate boost TCAM entry pointers for DVM and SVM */
-	for (i = 0; i < hw->dvm_upd.count; i++)
-		ice_find_boost_entry(ice_seg, hw->dvm_upd.tbl[i].boost_addr,
-				     &hw->dvm_upd.tbl[i].boost_entry);
-}
-
 /* Key creation */
 
 #define ICE_DC_KEY	0x1	/* don't care */
@@ -808,51 +268,6 @@ ice_set_key(u8 *key, u16 size, u8 *val, u8 *upd, u8 *dc, u8 *nm, u16 off,
 	return 0;
 }
 
-/**
- * ice_acquire_global_cfg_lock
- * @hw: pointer to the HW structure
- * @access: access type (read or write)
- *
- * This function will request ownership of the global config lock for reading
- * or writing of the package. When attempting to obtain write access, the
- * caller must check for the following two return values:
- *
- * 0         -  Means the caller has acquired the global config lock
- *              and can perform writing of the package.
- * -EALREADY - Indicates another driver has already written the
- *             package or has found that no update was necessary; in
- *             this case, the caller can just skip performing any
- *             update of the package.
- */
-static int
-ice_acquire_global_cfg_lock(struct ice_hw *hw,
-			    enum ice_aq_res_access_type access)
-{
-	int status;
-
-	status = ice_acquire_res(hw, ICE_GLOBAL_CFG_LOCK_RES_ID, access,
-				 ICE_GLOBAL_CFG_LOCK_TIMEOUT);
-
-	if (!status)
-		mutex_lock(&ice_global_cfg_lock_sw);
-	else if (status == -EALREADY)
-		ice_debug(hw, ICE_DBG_PKG, "Global config lock: No work to do\n");
-
-	return status;
-}
-
-/**
- * ice_release_global_cfg_lock
- * @hw: pointer to the HW structure
- *
- * This function will release the global config lock.
- */
-static void ice_release_global_cfg_lock(struct ice_hw *hw)
-{
-	mutex_unlock(&ice_global_cfg_lock_sw);
-	ice_release_res(hw, ICE_GLOBAL_CFG_LOCK_RES_ID);
-}
-
 /**
  * ice_acquire_change_lock
  * @hw: pointer to the HW structure
@@ -879,949 +294,45 @@ void ice_release_change_lock(struct ice_hw *hw)
 }
 
 /**
- * ice_aq_download_pkg
- * @hw: pointer to the hardware structure
- * @pkg_buf: the package buffer to transfer
- * @buf_size: the size of the package buffer
- * @last_buf: last buffer indicator
- * @error_offset: returns error offset
- * @error_info: returns error information
+ * ice_get_set_tx_topo - get or set Tx topology
+ * @hw: pointer to the HW struct
+ * @buf: pointer to Tx topology buffer
+ * @buf_size: buffer size
  * @cd: pointer to command details structure or NULL
+ * @flags: pointer to descriptor flags
+ * @set: 0-get, 1-set topology
  *
- * Download Package (0x0C40)
+ * The function will get or set Tx topology
  */
 static int
-ice_aq_download_pkg(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
-		    u16 buf_size, bool last_buf, u32 *error_offset,
-		    u32 *error_info, struct ice_sq_cd *cd)
+ice_get_set_tx_topo(struct ice_hw *hw, u8 *buf, u16 buf_size,
+		    struct ice_sq_cd *cd, u8 *flags, bool set)
 {
-	struct ice_aqc_download_pkg *cmd;
+	struct ice_aqc_get_set_tx_topo *cmd;
 	struct ice_aq_desc desc;
 	int status;
 
-	if (error_offset)
-		*error_offset = 0;
-	if (error_info)
-		*error_info = 0;
-
-	cmd = &desc.params.download_pkg;
-	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_download_pkg);
+	cmd = &desc.params.get_set_tx_topo;
+	if (set) {
+		cmd->set_flags = ICE_AQC_TX_TOPO_FLAGS_ISSUED;
+		/* requested to update a new topology, not a default topology */
+		if (buf)
+			cmd->set_flags |= ICE_AQC_TX_TOPO_FLAGS_SRC_RAM |
+					  ICE_AQC_TX_TOPO_FLAGS_LOAD_NEW;
+	} else {
+		cmd->get_flags = ICE_AQC_TX_TOPO_GET_RAM;
+	}
+	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_tx_topo);
 	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+	status = ice_aq_send_cmd(hw, &desc, buf, buf_size, cd);
+	if (status)
+		return status;
+	/* read the return flag values (first byte) for get operation */
+	if (!set && flags)
+		*flags = desc.params.get_set_tx_topo.set_flags;
 
-	if (last_buf)
-		cmd->flags |= ICE_AQC_DOWNLOAD_PKG_LAST_BUF;
-
-	status = ice_aq_send_cmd(hw, &desc, pkg_buf, buf_size, cd);
-	if (status == -EIO) {
-		/* Read error from buffer only when the FW returned an error */
-		struct ice_aqc_download_pkg_resp *resp;
-
-		resp = (struct ice_aqc_download_pkg_resp *)pkg_buf;
-		if (error_offset)
-			*error_offset = le32_to_cpu(resp->error_offset);
-		if (error_info)
-			*error_info = le32_to_cpu(resp->error_info);
-	}
-
-	return status;
-}
-
-/**
- * ice_aq_upload_section
- * @hw: pointer to the hardware structure
- * @pkg_buf: the package buffer which will receive the section
- * @buf_size: the size of the package buffer
- * @cd: pointer to command details structure or NULL
- *
- * Upload Section (0x0C41)
- */
-int
-ice_aq_upload_section(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
-		      u16 buf_size, struct ice_sq_cd *cd)
-{
-	struct ice_aq_desc desc;
-
-	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_upload_section);
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
-
-	return ice_aq_send_cmd(hw, &desc, pkg_buf, buf_size, cd);
-}
-
-/**
- * ice_aq_update_pkg
- * @hw: pointer to the hardware structure
- * @pkg_buf: the package cmd buffer
- * @buf_size: the size of the package cmd buffer
- * @last_buf: last buffer indicator
- * @error_offset: returns error offset
- * @error_info: returns error information
- * @cd: pointer to command details structure or NULL
- *
- * Update Package (0x0C42)
- */
-static int
-ice_aq_update_pkg(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf, u16 buf_size,
-		  bool last_buf, u32 *error_offset, u32 *error_info,
-		  struct ice_sq_cd *cd)
-{
-	struct ice_aqc_download_pkg *cmd;
-	struct ice_aq_desc desc;
-	int status;
-
-	if (error_offset)
-		*error_offset = 0;
-	if (error_info)
-		*error_info = 0;
-
-	cmd = &desc.params.download_pkg;
-	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_update_pkg);
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
-
-	if (last_buf)
-		cmd->flags |= ICE_AQC_DOWNLOAD_PKG_LAST_BUF;
-
-	status = ice_aq_send_cmd(hw, &desc, pkg_buf, buf_size, cd);
-	if (status == -EIO) {
-		/* Read error from buffer only when the FW returned an error */
-		struct ice_aqc_download_pkg_resp *resp;
-
-		resp = (struct ice_aqc_download_pkg_resp *)pkg_buf;
-		if (error_offset)
-			*error_offset = le32_to_cpu(resp->error_offset);
-		if (error_info)
-			*error_info = le32_to_cpu(resp->error_info);
-	}
-
-	return status;
-}
-
-/**
- * ice_find_seg_in_pkg
- * @hw: pointer to the hardware structure
- * @seg_type: the segment type to search for (i.e., SEGMENT_TYPE_CPK)
- * @pkg_hdr: pointer to the package header to be searched
- *
- * This function searches a package file for a particular segment type. On
- * success it returns a pointer to the segment header, otherwise it will
- * return NULL.
- */
-static struct ice_generic_seg_hdr *
-ice_find_seg_in_pkg(struct ice_hw *hw, u32 seg_type,
-		    struct ice_pkg_hdr *pkg_hdr)
-{
-	u32 i;
-
-	ice_debug(hw, ICE_DBG_PKG, "Package format version: %d.%d.%d.%d\n",
-		  pkg_hdr->pkg_format_ver.major, pkg_hdr->pkg_format_ver.minor,
-		  pkg_hdr->pkg_format_ver.update,
-		  pkg_hdr->pkg_format_ver.draft);
-
-	/* Search all package segments for the requested segment type */
-	for (i = 0; i < le32_to_cpu(pkg_hdr->seg_count); i++) {
-		struct ice_generic_seg_hdr *seg;
-
-		seg = (struct ice_generic_seg_hdr *)
-			((u8 *)pkg_hdr + le32_to_cpu(pkg_hdr->seg_offset[i]));
-
-		if (le32_to_cpu(seg->seg_type) == seg_type)
-			return seg;
-	}
-
-	return NULL;
-}
-
-/**
- * ice_update_pkg_no_lock
- * @hw: pointer to the hardware structure
- * @bufs: pointer to an array of buffers
- * @count: the number of buffers in the array
- */
-static int
-ice_update_pkg_no_lock(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
-{
-	int status = 0;
-	u32 i;
-
-	for (i = 0; i < count; i++) {
-		struct ice_buf_hdr *bh = (struct ice_buf_hdr *)(bufs + i);
-		bool last = ((i + 1) == count);
-		u32 offset, info;
-
-		status = ice_aq_update_pkg(hw, bh, le16_to_cpu(bh->data_end),
-					   last, &offset, &info, NULL);
-
-		if (status) {
-			ice_debug(hw, ICE_DBG_PKG, "Update pkg failed: err %d off %d inf %d\n",
-				  status, offset, info);
-			break;
-		}
-	}
-
-	return status;
-}
-
-/**
- * ice_update_pkg
- * @hw: pointer to the hardware structure
- * @bufs: pointer to an array of buffers
- * @count: the number of buffers in the array
- *
- * Obtains change lock and updates package.
- */
-static int ice_update_pkg(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
-{
-	int status;
-
-	status = ice_acquire_change_lock(hw, ICE_RES_WRITE);
-	if (status)
-		return status;
-
-	status = ice_update_pkg_no_lock(hw, bufs, count);
-
-	ice_release_change_lock(hw);
-
-	return status;
-}
-
-static enum ice_ddp_state ice_map_aq_err_to_ddp_state(enum ice_aq_err aq_err)
-{
-	switch (aq_err) {
-	case ICE_AQ_RC_ENOSEC:
-	case ICE_AQ_RC_EBADSIG:
-		return ICE_DDP_PKG_FILE_SIGNATURE_INVALID;
-	case ICE_AQ_RC_ESVN:
-		return ICE_DDP_PKG_FILE_REVISION_TOO_LOW;
-	case ICE_AQ_RC_EBADMAN:
-	case ICE_AQ_RC_EBADBUF:
-		return ICE_DDP_PKG_LOAD_ERROR;
-	default:
-		return ICE_DDP_PKG_ERR;
-	}
-}
-
-/**
- * ice_dwnld_cfg_bufs
- * @hw: pointer to the hardware structure
- * @bufs: pointer to an array of buffers
- * @count: the number of buffers in the array
- *
- * Obtains global config lock and downloads the package configuration buffers
- * to the firmware. Metadata buffers are skipped, and the first metadata buffer
- * found indicates that the rest of the buffers are all metadata buffers.
- */
-static enum ice_ddp_state
-ice_dwnld_cfg_bufs(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
-{
-	enum ice_ddp_state state = ICE_DDP_PKG_SUCCESS;
-	struct ice_buf_hdr *bh;
-	enum ice_aq_err err;
-	u32 offset, info, i;
-	int status;
-
-	if (!bufs || !count)
-		return ICE_DDP_PKG_ERR;
-
-	/* If the first buffer's first section has its metadata bit set
-	 * then there are no buffers to be downloaded, and the operation is
-	 * considered a success.
-	 */
-	bh = (struct ice_buf_hdr *)bufs;
-	if (le32_to_cpu(bh->section_entry[0].type) & ICE_METADATA_BUF)
-		return ICE_DDP_PKG_SUCCESS;
-
-	status = ice_acquire_global_cfg_lock(hw, ICE_RES_WRITE);
-	if (status) {
-		if (status == -EALREADY)
-			return ICE_DDP_PKG_ALREADY_LOADED;
-		return ice_map_aq_err_to_ddp_state(hw->adminq.sq_last_status);
-	}
-
-	for (i = 0; i < count; i++) {
-		bool last = ((i + 1) == count);
-
-		if (!last) {
-			/* check next buffer for metadata flag */
-			bh = (struct ice_buf_hdr *)(bufs + i + 1);
-
-			/* A set metadata flag in the next buffer will signal
-			 * that the current buffer will be the last buffer
-			 * downloaded
-			 */
-			if (le16_to_cpu(bh->section_count))
-				if (le32_to_cpu(bh->section_entry[0].type) &
-				    ICE_METADATA_BUF)
-					last = true;
-		}
-
-		bh = (struct ice_buf_hdr *)(bufs + i);
-
-		status = ice_aq_download_pkg(hw, bh, ICE_PKG_BUF_SIZE, last,
-					     &offset, &info, NULL);
-
-		/* Save AQ status from download package */
-		if (status) {
-			ice_debug(hw, ICE_DBG_PKG, "Pkg download failed: err %d off %d inf %d\n",
-				  status, offset, info);
-			err = hw->adminq.sq_last_status;
-			state = ice_map_aq_err_to_ddp_state(err);
-			break;
-		}
-
-		if (last)
-			break;
-	}
-
-	if (!status) {
-		status = ice_set_vlan_mode(hw);
-		if (status)
-			ice_debug(hw, ICE_DBG_PKG, "Failed to set VLAN mode: err %d\n",
-				  status);
-	}
-
-	ice_release_global_cfg_lock(hw);
-
-	return state;
-}
-
-/**
- * ice_aq_get_pkg_info_list
- * @hw: pointer to the hardware structure
- * @pkg_info: the buffer which will receive the information list
- * @buf_size: the size of the pkg_info information buffer
- * @cd: pointer to command details structure or NULL
- *
- * Get Package Info List (0x0C43)
- */
-static int
-ice_aq_get_pkg_info_list(struct ice_hw *hw,
-			 struct ice_aqc_get_pkg_info_resp *pkg_info,
-			 u16 buf_size, struct ice_sq_cd *cd)
-{
-	struct ice_aq_desc desc;
-
-	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_pkg_info_list);
-
-	return ice_aq_send_cmd(hw, &desc, pkg_info, buf_size, cd);
-}
-
-/**
- * ice_download_pkg
- * @hw: pointer to the hardware structure
- * @ice_seg: pointer to the segment of the package to be downloaded
- *
- * Handles the download of a complete package.
- */
-static enum ice_ddp_state
-ice_download_pkg(struct ice_hw *hw, struct ice_seg *ice_seg)
-{
-	struct ice_buf_table *ice_buf_tbl;
-	int status;
-
-	ice_debug(hw, ICE_DBG_PKG, "Segment format version: %d.%d.%d.%d\n",
-		  ice_seg->hdr.seg_format_ver.major,
-		  ice_seg->hdr.seg_format_ver.minor,
-		  ice_seg->hdr.seg_format_ver.update,
-		  ice_seg->hdr.seg_format_ver.draft);
-
-	ice_debug(hw, ICE_DBG_PKG, "Seg: type 0x%X, size %d, name %s\n",
-		  le32_to_cpu(ice_seg->hdr.seg_type),
-		  le32_to_cpu(ice_seg->hdr.seg_size), ice_seg->hdr.seg_id);
-
-	ice_buf_tbl = ice_find_buf_table(ice_seg);
-
-	ice_debug(hw, ICE_DBG_PKG, "Seg buf count: %d\n",
-		  le32_to_cpu(ice_buf_tbl->buf_count));
-
-	status = ice_dwnld_cfg_bufs(hw, ice_buf_tbl->buf_array,
-				    le32_to_cpu(ice_buf_tbl->buf_count));
-
-	ice_post_pkg_dwnld_vlan_mode_cfg(hw);
-
-	return status;
-}
-
-/**
- * ice_init_pkg_info
- * @hw: pointer to the hardware structure
- * @pkg_hdr: pointer to the driver's package hdr
- *
- * Saves off the package details into the HW structure.
- */
-static enum ice_ddp_state
-ice_init_pkg_info(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr)
-{
-	struct ice_generic_seg_hdr *seg_hdr;
-
-	if (!pkg_hdr)
-		return ICE_DDP_PKG_ERR;
-
-	seg_hdr = ice_find_seg_in_pkg(hw, SEGMENT_TYPE_ICE, pkg_hdr);
-	if (seg_hdr) {
-		struct ice_meta_sect *meta;
-		struct ice_pkg_enum state;
-
-		memset(&state, 0, sizeof(state));
-
-		/* Get package information from the Metadata Section */
-		meta = ice_pkg_enum_section((struct ice_seg *)seg_hdr, &state,
-					    ICE_SID_METADATA);
-		if (!meta) {
-			ice_debug(hw, ICE_DBG_INIT, "Did not find ice metadata section in package\n");
-			return ICE_DDP_PKG_INVALID_FILE;
-		}
-
-		hw->pkg_ver = meta->ver;
-		memcpy(hw->pkg_name, meta->name, sizeof(meta->name));
-
-		ice_debug(hw, ICE_DBG_PKG, "Pkg: %d.%d.%d.%d, %s\n",
-			  meta->ver.major, meta->ver.minor, meta->ver.update,
-			  meta->ver.draft, meta->name);
-
-		hw->ice_seg_fmt_ver = seg_hdr->seg_format_ver;
-		memcpy(hw->ice_seg_id, seg_hdr->seg_id,
-		       sizeof(hw->ice_seg_id));
-
-		ice_debug(hw, ICE_DBG_PKG, "Ice Seg: %d.%d.%d.%d, %s\n",
-			  seg_hdr->seg_format_ver.major,
-			  seg_hdr->seg_format_ver.minor,
-			  seg_hdr->seg_format_ver.update,
-			  seg_hdr->seg_format_ver.draft,
-			  seg_hdr->seg_id);
-	} else {
-		ice_debug(hw, ICE_DBG_INIT, "Did not find ice segment in driver package\n");
-		return ICE_DDP_PKG_INVALID_FILE;
-	}
-
-	return ICE_DDP_PKG_SUCCESS;
-}
-
-/**
- * ice_get_pkg_info
- * @hw: pointer to the hardware structure
- *
- * Store details of the package currently loaded in HW into the HW structure.
- */
-static enum ice_ddp_state ice_get_pkg_info(struct ice_hw *hw)
-{
-	enum ice_ddp_state state = ICE_DDP_PKG_SUCCESS;
-	struct ice_aqc_get_pkg_info_resp *pkg_info;
-	u16 size;
-	u32 i;
-
-	size = struct_size(pkg_info, pkg_info, ICE_PKG_CNT);
-	pkg_info = kzalloc(size, GFP_KERNEL);
-	if (!pkg_info)
-		return ICE_DDP_PKG_ERR;
-
-	if (ice_aq_get_pkg_info_list(hw, pkg_info, size, NULL)) {
-		state = ICE_DDP_PKG_ERR;
-		goto init_pkg_free_alloc;
-	}
-
-	for (i = 0; i < le32_to_cpu(pkg_info->count); i++) {
-#define ICE_PKG_FLAG_COUNT	4
-		char flags[ICE_PKG_FLAG_COUNT + 1] = { 0 };
-		u8 place = 0;
-
-		if (pkg_info->pkg_info[i].is_active) {
-			flags[place++] = 'A';
-			hw->active_pkg_ver = pkg_info->pkg_info[i].ver;
-			hw->active_track_id =
-				le32_to_cpu(pkg_info->pkg_info[i].track_id);
-			memcpy(hw->active_pkg_name,
-			       pkg_info->pkg_info[i].name,
-			       sizeof(pkg_info->pkg_info[i].name));
-			hw->active_pkg_in_nvm = pkg_info->pkg_info[i].is_in_nvm;
-		}
-		if (pkg_info->pkg_info[i].is_active_at_boot)
-			flags[place++] = 'B';
-		if (pkg_info->pkg_info[i].is_modified)
-			flags[place++] = 'M';
-		if (pkg_info->pkg_info[i].is_in_nvm)
-			flags[place++] = 'N';
-
-		ice_debug(hw, ICE_DBG_PKG, "Pkg[%d]: %d.%d.%d.%d,%s,%s\n",
-			  i, pkg_info->pkg_info[i].ver.major,
-			  pkg_info->pkg_info[i].ver.minor,
-			  pkg_info->pkg_info[i].ver.update,
-			  pkg_info->pkg_info[i].ver.draft,
-			  pkg_info->pkg_info[i].name, flags);
-	}
-
-init_pkg_free_alloc:
-	kfree(pkg_info);
-
-	return state;
-}
-
-/**
- * ice_verify_pkg - verify package
- * @pkg: pointer to the package buffer
- * @len: size of the package buffer
- *
- * Verifies various attributes of the package file, including length, format
- * version, and the requirement of at least one segment.
- */
-static enum ice_ddp_state ice_verify_pkg(struct ice_pkg_hdr *pkg, u32 len)
-{
-	u32 seg_count;
-	u32 i;
-
-	if (len < struct_size(pkg, seg_offset, 1))
-		return ICE_DDP_PKG_INVALID_FILE;
-
-	if (pkg->pkg_format_ver.major != ICE_PKG_FMT_VER_MAJ ||
-	    pkg->pkg_format_ver.minor != ICE_PKG_FMT_VER_MNR ||
-	    pkg->pkg_format_ver.update != ICE_PKG_FMT_VER_UPD ||
-	    pkg->pkg_format_ver.draft != ICE_PKG_FMT_VER_DFT)
-		return ICE_DDP_PKG_INVALID_FILE;
-
-	/* pkg must have at least one segment */
-	seg_count = le32_to_cpu(pkg->seg_count);
-	if (seg_count < 1)
-		return ICE_DDP_PKG_INVALID_FILE;
-
-	/* make sure segment array fits in package length */
-	if (len < struct_size(pkg, seg_offset, seg_count))
-		return ICE_DDP_PKG_INVALID_FILE;
-
-	/* all segments must fit within length */
-	for (i = 0; i < seg_count; i++) {
-		u32 off = le32_to_cpu(pkg->seg_offset[i]);
-		struct ice_generic_seg_hdr *seg;
-
-		/* segment header must fit */
-		if (len < off + sizeof(*seg))
-			return ICE_DDP_PKG_INVALID_FILE;
-
-		seg = (struct ice_generic_seg_hdr *)((u8 *)pkg + off);
-
-		/* segment body must fit */
-		if (len < off + le32_to_cpu(seg->seg_size))
-			return ICE_DDP_PKG_INVALID_FILE;
-	}
-
-	return ICE_DDP_PKG_SUCCESS;
-}
-
-/**
- * ice_free_seg - free package segment pointer
- * @hw: pointer to the hardware structure
- *
- * Frees the package segment pointer in the proper manner, depending on if the
- * segment was allocated or just the passed in pointer was stored.
- */
-void ice_free_seg(struct ice_hw *hw)
-{
-	if (hw->pkg_copy) {
-		devm_kfree(ice_hw_to_dev(hw), hw->pkg_copy);
-		hw->pkg_copy = NULL;
-		hw->pkg_size = 0;
-	}
-	hw->seg = NULL;
-}
-
-/**
- * ice_init_pkg_regs - initialize additional package registers
- * @hw: pointer to the hardware structure
- */
-static void ice_init_pkg_regs(struct ice_hw *hw)
-{
-#define ICE_SW_BLK_INP_MASK_L 0xFFFFFFFF
-#define ICE_SW_BLK_INP_MASK_H 0x0000FFFF
-#define ICE_SW_BLK_IDX	0
-
-	/* setup Switch block input mask, which is 48-bits in two parts */
-	wr32(hw, GL_PREEXT_L2_PMASK0(ICE_SW_BLK_IDX), ICE_SW_BLK_INP_MASK_L);
-	wr32(hw, GL_PREEXT_L2_PMASK1(ICE_SW_BLK_IDX), ICE_SW_BLK_INP_MASK_H);
-}
-
-/**
- * ice_chk_pkg_version - check package version for compatibility with driver
- * @pkg_ver: pointer to a version structure to check
- *
- * Check to make sure that the package about to be downloaded is compatible with
- * the driver. To be compatible, the major and minor components of the package
- * version must match our ICE_PKG_SUPP_VER_MAJ and ICE_PKG_SUPP_VER_MNR
- * definitions.
- */
-static enum ice_ddp_state ice_chk_pkg_version(struct ice_pkg_ver *pkg_ver)
-{
-	if (pkg_ver->major > ICE_PKG_SUPP_VER_MAJ ||
-	    (pkg_ver->major == ICE_PKG_SUPP_VER_MAJ &&
-	     pkg_ver->minor > ICE_PKG_SUPP_VER_MNR))
-		return ICE_DDP_PKG_FILE_VERSION_TOO_HIGH;
-	else if (pkg_ver->major < ICE_PKG_SUPP_VER_MAJ ||
-		 (pkg_ver->major == ICE_PKG_SUPP_VER_MAJ &&
-		  pkg_ver->minor < ICE_PKG_SUPP_VER_MNR))
-		return ICE_DDP_PKG_FILE_VERSION_TOO_LOW;
-
-	return ICE_DDP_PKG_SUCCESS;
-}
-
-/**
- * ice_chk_pkg_compat
- * @hw: pointer to the hardware structure
- * @ospkg: pointer to the package hdr
- * @seg: pointer to the package segment hdr
- *
- * This function checks the package version compatibility with driver and NVM
- */
-static enum ice_ddp_state
-ice_chk_pkg_compat(struct ice_hw *hw, struct ice_pkg_hdr *ospkg,
-		   struct ice_seg **seg)
-{
-	struct ice_aqc_get_pkg_info_resp *pkg;
-	enum ice_ddp_state state;
-	u16 size;
-	u32 i;
-
-	/* Check package version compatibility */
-	state = ice_chk_pkg_version(&hw->pkg_ver);
-	if (state) {
-		ice_debug(hw, ICE_DBG_INIT, "Package version check failed.\n");
-		return state;
-	}
-
-	/* find ICE segment in given package */
-	*seg = (struct ice_seg *)ice_find_seg_in_pkg(hw, SEGMENT_TYPE_ICE,
-						     ospkg);
-	if (!*seg) {
-		ice_debug(hw, ICE_DBG_INIT, "no ice segment in package.\n");
-		return ICE_DDP_PKG_INVALID_FILE;
-	}
-
-	/* Check if FW is compatible with the OS package */
-	size = struct_size(pkg, pkg_info, ICE_PKG_CNT);
-	pkg = kzalloc(size, GFP_KERNEL);
-	if (!pkg)
-		return ICE_DDP_PKG_ERR;
-
-	if (ice_aq_get_pkg_info_list(hw, pkg, size, NULL)) {
-		state = ICE_DDP_PKG_LOAD_ERROR;
-		goto fw_ddp_compat_free_alloc;
-	}
-
-	for (i = 0; i < le32_to_cpu(pkg->count); i++) {
-		/* loop till we find the NVM package */
-		if (!pkg->pkg_info[i].is_in_nvm)
-			continue;
-		if ((*seg)->hdr.seg_format_ver.major !=
-			pkg->pkg_info[i].ver.major ||
-		    (*seg)->hdr.seg_format_ver.minor >
-			pkg->pkg_info[i].ver.minor) {
-			state = ICE_DDP_PKG_FW_MISMATCH;
-			ice_debug(hw, ICE_DBG_INIT, "OS package is not compatible with NVM.\n");
-		}
-		/* done processing NVM package so break */
-		break;
-	}
-fw_ddp_compat_free_alloc:
-	kfree(pkg);
-	return state;
-}
-
-/**
- * ice_sw_fv_handler
- * @sect_type: section type
- * @section: pointer to section
- * @index: index of the field vector entry to be returned
- * @offset: ptr to variable that receives the offset in the field vector table
- *
- * This is a callback function that can be passed to ice_pkg_enum_entry.
- * This function treats the given section as of type ice_sw_fv_section and
- * enumerates offset field. "offset" is an index into the field vector table.
- */
-static void *
-ice_sw_fv_handler(u32 sect_type, void *section, u32 index, u32 *offset)
-{
-	struct ice_sw_fv_section *fv_section = section;
-
-	if (!section || sect_type != ICE_SID_FLD_VEC_SW)
-		return NULL;
-	if (index >= le16_to_cpu(fv_section->count))
-		return NULL;
-	if (offset)
-		/* "index" passed in to this function is relative to a given
-		 * 4k block. To get to the true index into the field vector
-		 * table need to add the relative index to the base_offset
-		 * field of this section
-		 */
-		*offset = le16_to_cpu(fv_section->base_offset) + index;
-	return fv_section->fv + index;
-}
-
-/**
- * ice_get_prof_index_max - get the max profile index for used profile
- * @hw: pointer to the HW struct
- *
- * Calling this function will get the max profile index for used profile
- * and store the index number in struct ice_switch_info *switch_info
- * in HW for following use.
- */
-static int ice_get_prof_index_max(struct ice_hw *hw)
-{
-	u16 prof_index = 0, j, max_prof_index = 0;
-	struct ice_pkg_enum state;
-	struct ice_seg *ice_seg;
-	bool flag = false;
-	struct ice_fv *fv;
-	u32 offset;
-
-	memset(&state, 0, sizeof(state));
-
-	if (!hw->seg)
-		return -EINVAL;
-
-	ice_seg = hw->seg;
-
-	do {
-		fv = ice_pkg_enum_entry(ice_seg, &state, ICE_SID_FLD_VEC_SW,
-					&offset, ice_sw_fv_handler);
-		if (!fv)
-			break;
-		ice_seg = NULL;
-
-		/* in the profile that not be used, the prot_id is set to 0xff
-		 * and the off is set to 0x1ff for all the field vectors.
-		 */
-		for (j = 0; j < hw->blk[ICE_BLK_SW].es.fvw; j++)
-			if (fv->ew[j].prot_id != ICE_PROT_INVALID ||
-			    fv->ew[j].off != ICE_FV_OFFSET_INVAL)
-				flag = true;
-		if (flag && prof_index > max_prof_index)
-			max_prof_index = prof_index;
-
-		prof_index++;
-		flag = false;
-	} while (fv);
-
-	hw->switch_info->max_used_prof_index = max_prof_index;
-
-	return 0;
-}
-
-/**
- * ice_get_ddp_pkg_state - get DDP pkg state after download
- * @hw: pointer to the HW struct
- * @already_loaded: indicates if pkg was already loaded onto the device
- */
-static enum ice_ddp_state
-ice_get_ddp_pkg_state(struct ice_hw *hw, bool already_loaded)
-{
-	if (hw->pkg_ver.major == hw->active_pkg_ver.major &&
-	    hw->pkg_ver.minor == hw->active_pkg_ver.minor &&
-	    hw->pkg_ver.update == hw->active_pkg_ver.update &&
-	    hw->pkg_ver.draft == hw->active_pkg_ver.draft &&
-	    !memcmp(hw->pkg_name, hw->active_pkg_name, sizeof(hw->pkg_name))) {
-		if (already_loaded)
-			return ICE_DDP_PKG_SAME_VERSION_ALREADY_LOADED;
-		else
-			return ICE_DDP_PKG_SUCCESS;
-	} else if (hw->active_pkg_ver.major != ICE_PKG_SUPP_VER_MAJ ||
-		   hw->active_pkg_ver.minor != ICE_PKG_SUPP_VER_MNR) {
-		return ICE_DDP_PKG_ALREADY_LOADED_NOT_SUPPORTED;
-	} else if (hw->active_pkg_ver.major == ICE_PKG_SUPP_VER_MAJ &&
-		   hw->active_pkg_ver.minor == ICE_PKG_SUPP_VER_MNR) {
-		return ICE_DDP_PKG_COMPATIBLE_ALREADY_LOADED;
-	} else {
-		return ICE_DDP_PKG_ERR;
-	}
-}
-
-/**
- * ice_init_pkg - initialize/download package
- * @hw: pointer to the hardware structure
- * @buf: pointer to the package buffer
- * @len: size of the package buffer
- *
- * This function initializes a package. The package contains HW tables
- * required to do packet processing. First, the function extracts package
- * information such as version. Then it finds the ice configuration segment
- * within the package; this function then saves a copy of the segment pointer
- * within the supplied package buffer. Next, the function will cache any hints
- * from the package, followed by downloading the package itself. Note, that if
- * a previous PF driver has already downloaded the package successfully, then
- * the current driver will not have to download the package again.
- *
- * The local package contents will be used to query default behavior and to
- * update specific sections of the HW's version of the package (e.g. to update
- * the parse graph to understand new protocols).
- *
- * This function stores a pointer to the package buffer memory, and it is
- * expected that the supplied buffer will not be freed immediately. If the
- * package buffer needs to be freed, such as when read from a file, use
- * ice_copy_and_init_pkg() instead of directly calling ice_init_pkg() in this
- * case.
- */
-enum ice_ddp_state ice_init_pkg(struct ice_hw *hw, u8 *buf, u32 len)
-{
-	bool already_loaded = false;
-	enum ice_ddp_state state;
-	struct ice_pkg_hdr *pkg;
-	struct ice_seg *seg;
-
-	if (!buf || !len)
-		return ICE_DDP_PKG_ERR;
-
-	pkg = (struct ice_pkg_hdr *)buf;
-	state = ice_verify_pkg(pkg, len);
-	if (state) {
-		ice_debug(hw, ICE_DBG_INIT, "failed to verify pkg (err: %d)\n",
-			  state);
-		return state;
-	}
-
-	/* initialize package info */
-	state = ice_init_pkg_info(hw, pkg);
-	if (state)
-		return state;
-
-	/* before downloading the package, check package version for
-	 * compatibility with driver
-	 */
-	state = ice_chk_pkg_compat(hw, pkg, &seg);
-	if (state)
-		return state;
-
-	/* initialize package hints and then download package */
-	ice_init_pkg_hints(hw, seg);
-	state = ice_download_pkg(hw, seg);
-	if (state == ICE_DDP_PKG_ALREADY_LOADED) {
-		ice_debug(hw, ICE_DBG_INIT, "package previously loaded - no work.\n");
-		already_loaded = true;
-	}
-
-	/* Get information on the package currently loaded in HW, then make sure
-	 * the driver is compatible with this version.
-	 */
-	if (!state || state == ICE_DDP_PKG_ALREADY_LOADED) {
-		state = ice_get_pkg_info(hw);
-		if (!state)
-			state = ice_get_ddp_pkg_state(hw, already_loaded);
-	}
-
-	if (ice_is_init_pkg_successful(state)) {
-		hw->seg = seg;
-		/* on successful package download update other required
-		 * registers to support the package and fill HW tables
-		 * with package content.
-		 */
-		ice_init_pkg_regs(hw);
-		ice_fill_blk_tbls(hw);
-		ice_fill_hw_ptype(hw);
-		ice_get_prof_index_max(hw);
-	} else {
-		ice_debug(hw, ICE_DBG_INIT, "package load failed, %d\n",
-			  state);
-	}
-
-	return state;
-}
-
-/**
- * ice_copy_and_init_pkg - initialize/download a copy of the package
- * @hw: pointer to the hardware structure
- * @buf: pointer to the package buffer
- * @len: size of the package buffer
- *
- * This function copies the package buffer, and then calls ice_init_pkg() to
- * initialize the copied package contents.
- *
- * The copying is necessary if the package buffer supplied is constant, or if
- * the memory may disappear shortly after calling this function.
- *
- * If the package buffer resides in the data segment and can be modified, the
- * caller is free to use ice_init_pkg() instead of ice_copy_and_init_pkg().
- *
- * However, if the package buffer needs to be copied first, such as when being
- * read from a file, the caller should use ice_copy_and_init_pkg().
- *
- * This function will first copy the package buffer, before calling
- * ice_init_pkg(). The caller is free to immediately destroy the original
- * package buffer, as the new copy will be managed by this function and
- * related routines.
- */
-enum ice_ddp_state
-ice_copy_and_init_pkg(struct ice_hw *hw, const u8 *buf, u32 len)
-{
-	enum ice_ddp_state state;
-	u8 *buf_copy;
-
-	if (!buf || !len)
-		return ICE_DDP_PKG_ERR;
-
-	buf_copy = devm_kmemdup(ice_hw_to_dev(hw), buf, len, GFP_KERNEL);
-
-	state = ice_init_pkg(hw, buf_copy, len);
-	if (!ice_is_init_pkg_successful(state)) {
-		/* Free the copy, since we failed to initialize the package */
-		devm_kfree(ice_hw_to_dev(hw), buf_copy);
-	} else {
-		/* Track the copied pkg so we can free it later */
-		hw->pkg_copy = buf_copy;
-		hw->pkg_size = len;
-	}
-
-	return state;
-}
-
-/**
- * ice_is_init_pkg_successful - check if DDP init was successful
- * @state: state of the DDP pkg after download
- */
-bool ice_is_init_pkg_successful(enum ice_ddp_state state)
-{
-	switch (state) {
-	case ICE_DDP_PKG_SUCCESS:
-	case ICE_DDP_PKG_SAME_VERSION_ALREADY_LOADED:
-	case ICE_DDP_PKG_COMPATIBLE_ALREADY_LOADED:
-		return true;
-	default:
-		return false;
-	}
-}
-
-/**
- * ice_get_set_tx_topo - get or set Tx topology
- * @hw: pointer to the HW struct
- * @buf: pointer to Tx topology buffer
- * @buf_size: buffer size
- * @cd: pointer to command details structure or NULL
- * @flags: pointer to descriptor flags
- * @set: 0-get, 1-set topology
- *
- * The function will get or set Tx topology
- */
-static int
-ice_get_set_tx_topo(struct ice_hw *hw, u8 *buf, u16 buf_size,
-		    struct ice_sq_cd *cd, u8 *flags, bool set)
-{
-	struct ice_aqc_get_set_tx_topo *cmd;
-	struct ice_aq_desc desc;
-	int status;
-
-	cmd = &desc.params.get_set_tx_topo;
-	if (set) {
-		cmd->set_flags = ICE_AQC_TX_TOPO_FLAGS_ISSUED;
-		/* requested to update a new topology, not a default topology */
-		if (buf)
-			cmd->set_flags |= ICE_AQC_TX_TOPO_FLAGS_SRC_RAM |
-					  ICE_AQC_TX_TOPO_FLAGS_LOAD_NEW;
-	} else {
-		cmd->get_flags = ICE_AQC_TX_TOPO_GET_RAM;
-	}
-	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_tx_topo);
-	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
-	status = ice_aq_send_cmd(hw, &desc, buf, buf_size, cd);
-	if (status)
-		return status;
-	/* read the return flag values (first byte) for get operation */
-	if (!set && flags)
-		*flags = desc.params.get_set_tx_topo.set_flags;
-
-	return 0;
-}
+	return 0;
+}
 
 /**
  * ice_cfg_tx_topo - Initialize new Tx topology if available
@@ -1981,421 +492,6 @@ int ice_cfg_tx_topo(struct ice_hw *hw, u8 *buf, u32 len)
 	return 0;
 }
 
-/**
- * ice_pkg_buf_alloc
- * @hw: pointer to the HW structure
- *
- * Allocates a package buffer and returns a pointer to the buffer header.
- * Note: all package contents must be in Little Endian form.
- */
-static struct ice_buf_build *ice_pkg_buf_alloc(struct ice_hw *hw)
-{
-	struct ice_buf_build *bld;
-	struct ice_buf_hdr *buf;
-
-	bld = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*bld), GFP_KERNEL);
-	if (!bld)
-		return NULL;
-
-	buf = (struct ice_buf_hdr *)bld;
-	buf->data_end = cpu_to_le16(offsetof(struct ice_buf_hdr,
-					     section_entry));
-	return bld;
-}
-
-static bool ice_is_gtp_u_profile(u16 prof_idx)
-{
-	return (prof_idx >= ICE_PROFID_IPV6_GTPU_TEID &&
-		prof_idx <= ICE_PROFID_IPV6_GTPU_IPV6_TCP_INNER) ||
-	       prof_idx == ICE_PROFID_IPV4_GTPU_TEID;
-}
-
-static bool ice_is_gtp_c_profile(u16 prof_idx)
-{
-	switch (prof_idx) {
-	case ICE_PROFID_IPV4_GTPC_TEID:
-	case ICE_PROFID_IPV4_GTPC_NO_TEID:
-	case ICE_PROFID_IPV6_GTPC_TEID:
-	case ICE_PROFID_IPV6_GTPC_NO_TEID:
-		return true;
-	default:
-		return false;
-	}
-}
-
-/**
- * ice_get_sw_prof_type - determine switch profile type
- * @hw: pointer to the HW structure
- * @fv: pointer to the switch field vector
- * @prof_idx: profile index to check
- */
-static enum ice_prof_type
-ice_get_sw_prof_type(struct ice_hw *hw, struct ice_fv *fv, u32 prof_idx)
-{
-	u16 i;
-
-	if (ice_is_gtp_c_profile(prof_idx))
-		return ICE_PROF_TUN_GTPC;
-
-	if (ice_is_gtp_u_profile(prof_idx))
-		return ICE_PROF_TUN_GTPU;
-
-	for (i = 0; i < hw->blk[ICE_BLK_SW].es.fvw; i++) {
-		/* UDP tunnel will have UDP_OF protocol ID and VNI offset */
-		if (fv->ew[i].prot_id == (u8)ICE_PROT_UDP_OF &&
-		    fv->ew[i].off == ICE_VNI_OFFSET)
-			return ICE_PROF_TUN_UDP;
-
-		/* GRE tunnel will have GRE protocol */
-		if (fv->ew[i].prot_id == (u8)ICE_PROT_GRE_OF)
-			return ICE_PROF_TUN_GRE;
-	}
-
-	return ICE_PROF_NON_TUN;
-}
-
-/**
- * ice_get_sw_fv_bitmap - Get switch field vector bitmap based on profile type
- * @hw: pointer to hardware structure
- * @req_profs: type of profiles requested
- * @bm: pointer to memory for returning the bitmap of field vectors
- */
-void
-ice_get_sw_fv_bitmap(struct ice_hw *hw, enum ice_prof_type req_profs,
-		     unsigned long *bm)
-{
-	struct ice_pkg_enum state;
-	struct ice_seg *ice_seg;
-	struct ice_fv *fv;
-
-	if (req_profs == ICE_PROF_ALL) {
-		bitmap_set(bm, 0, ICE_MAX_NUM_PROFILES);
-		return;
-	}
-
-	memset(&state, 0, sizeof(state));
-	bitmap_zero(bm, ICE_MAX_NUM_PROFILES);
-	ice_seg = hw->seg;
-	do {
-		enum ice_prof_type prof_type;
-		u32 offset;
-
-		fv = ice_pkg_enum_entry(ice_seg, &state, ICE_SID_FLD_VEC_SW,
-					&offset, ice_sw_fv_handler);
-		ice_seg = NULL;
-
-		if (fv) {
-			/* Determine field vector type */
-			prof_type = ice_get_sw_prof_type(hw, fv, offset);
-
-			if (req_profs & prof_type)
-				set_bit((u16)offset, bm);
-		}
-	} while (fv);
-}
-
-/**
- * ice_get_sw_fv_list
- * @hw: pointer to the HW structure
- * @lkups: list of protocol types
- * @bm: bitmap of field vectors to consider
- * @fv_list: Head of a list
- *
- * Finds all the field vector entries from switch block that contain
- * a given protocol ID and offset and returns a list of structures of type
- * "ice_sw_fv_list_entry". Every structure in the list has a field vector
- * definition and profile ID information
- * NOTE: The caller of the function is responsible for freeing the memory
- * allocated for every list entry.
- */
-int
-ice_get_sw_fv_list(struct ice_hw *hw, struct ice_prot_lkup_ext *lkups,
-		   unsigned long *bm, struct list_head *fv_list)
-{
-	struct ice_sw_fv_list_entry *fvl;
-	struct ice_sw_fv_list_entry *tmp;
-	struct ice_pkg_enum state;
-	struct ice_seg *ice_seg;
-	struct ice_fv *fv;
-	u32 offset;
-
-	memset(&state, 0, sizeof(state));
-
-	if (!lkups->n_val_words || !hw->seg)
-		return -EINVAL;
-
-	ice_seg = hw->seg;
-	do {
-		u16 i;
-
-		fv = ice_pkg_enum_entry(ice_seg, &state, ICE_SID_FLD_VEC_SW,
-					&offset, ice_sw_fv_handler);
-		if (!fv)
-			break;
-		ice_seg = NULL;
-
-		/* If field vector is not in the bitmap list, then skip this
-		 * profile.
-		 */
-		if (!test_bit((u16)offset, bm))
-			continue;
-
-		for (i = 0; i < lkups->n_val_words; i++) {
-			int j;
-
-			for (j = 0; j < hw->blk[ICE_BLK_SW].es.fvw; j++)
-				if (fv->ew[j].prot_id ==
-				    lkups->fv_words[i].prot_id &&
-				    fv->ew[j].off == lkups->fv_words[i].off)
-					break;
-			if (j >= hw->blk[ICE_BLK_SW].es.fvw)
-				break;
-			if (i + 1 == lkups->n_val_words) {
-				fvl = devm_kzalloc(ice_hw_to_dev(hw),
-						   sizeof(*fvl), GFP_KERNEL);
-				if (!fvl)
-					goto err;
-				fvl->fv_ptr = fv;
-				fvl->profile_id = offset;
-				list_add(&fvl->list_entry, fv_list);
-				break;
-			}
-		}
-	} while (fv);
-	if (list_empty(fv_list)) {
-		dev_warn(ice_hw_to_dev(hw), "Required profiles not found in currently loaded DDP package");
-		return -EIO;
-	}
-
-	return 0;
-
-err:
-	list_for_each_entry_safe(fvl, tmp, fv_list, list_entry) {
-		list_del(&fvl->list_entry);
-		devm_kfree(ice_hw_to_dev(hw), fvl);
-	}
-
-	return -ENOMEM;
-}
-
-/**
- * ice_init_prof_result_bm - Initialize the profile result index bitmap
- * @hw: pointer to hardware structure
- */
-void ice_init_prof_result_bm(struct ice_hw *hw)
-{
-	struct ice_pkg_enum state;
-	struct ice_seg *ice_seg;
-	struct ice_fv *fv;
-
-	memset(&state, 0, sizeof(state));
-
-	if (!hw->seg)
-		return;
-
-	ice_seg = hw->seg;
-	do {
-		u32 off;
-		u16 i;
-
-		fv = ice_pkg_enum_entry(ice_seg, &state, ICE_SID_FLD_VEC_SW,
-					&off, ice_sw_fv_handler);
-		ice_seg = NULL;
-		if (!fv)
-			break;
-
-		bitmap_zero(hw->switch_info->prof_res_bm[off],
-			    ICE_MAX_FV_WORDS);
-
-		/* Determine empty field vector indices, these can be
-		 * used for recipe results. Skip index 0, since it is
-		 * always used for Switch ID.
-		 */
-		for (i = 1; i < ICE_MAX_FV_WORDS; i++)
-			if (fv->ew[i].prot_id == ICE_PROT_INVALID &&
-			    fv->ew[i].off == ICE_FV_OFFSET_INVAL)
-				set_bit(i, hw->switch_info->prof_res_bm[off]);
-	} while (fv);
-}
-
-/**
- * ice_pkg_buf_free
- * @hw: pointer to the HW structure
- * @bld: pointer to pkg build (allocated by ice_pkg_buf_alloc())
- *
- * Frees a package buffer
- */
-void ice_pkg_buf_free(struct ice_hw *hw, struct ice_buf_build *bld)
-{
-	devm_kfree(ice_hw_to_dev(hw), bld);
-}
-
-/**
- * ice_pkg_buf_reserve_section
- * @bld: pointer to pkg build (allocated by ice_pkg_buf_alloc())
- * @count: the number of sections to reserve
- *
- * Reserves one or more section table entries in a package buffer. This routine
- * can be called multiple times as long as they are made before calling
- * ice_pkg_buf_alloc_section(). Once ice_pkg_buf_alloc_section()
- * is called once, the number of sections that can be allocated will not be able
- * to be increased; not using all reserved sections is fine, but this will
- * result in some wasted space in the buffer.
- * Note: all package contents must be in Little Endian form.
- */
-static int
-ice_pkg_buf_reserve_section(struct ice_buf_build *bld, u16 count)
-{
-	struct ice_buf_hdr *buf;
-	u16 section_count;
-	u16 data_end;
-
-	if (!bld)
-		return -EINVAL;
-
-	buf = (struct ice_buf_hdr *)&bld->buf;
-
-	/* already an active section, can't increase table size */
-	section_count = le16_to_cpu(buf->section_count);
-	if (section_count > 0)
-		return -EIO;
-
-	if (bld->reserved_section_table_entries + count > ICE_MAX_S_COUNT)
-		return -EIO;
-	bld->reserved_section_table_entries += count;
-
-	data_end = le16_to_cpu(buf->data_end) +
-		flex_array_size(buf, section_entry, count);
-	buf->data_end = cpu_to_le16(data_end);
-
-	return 0;
-}
-
-/**
- * ice_pkg_buf_alloc_section
- * @bld: pointer to pkg build (allocated by ice_pkg_buf_alloc())
- * @type: the section type value
- * @size: the size of the section to reserve (in bytes)
- *
- * Reserves memory in the buffer for a section's content and updates the
- * buffers' status accordingly. This routine returns a pointer to the first
- * byte of the section start within the buffer, which is used to fill in the
- * section contents.
- * Note: all package contents must be in Little Endian form.
- */
-static void *
-ice_pkg_buf_alloc_section(struct ice_buf_build *bld, u32 type, u16 size)
-{
-	struct ice_buf_hdr *buf;
-	u16 sect_count;
-	u16 data_end;
-
-	if (!bld || !type || !size)
-		return NULL;
-
-	buf = (struct ice_buf_hdr *)&bld->buf;
-
-	/* check for enough space left in buffer */
-	data_end = le16_to_cpu(buf->data_end);
-
-	/* section start must align on 4 byte boundary */
-	data_end = ALIGN(data_end, 4);
-
-	if ((data_end + size) > ICE_MAX_S_DATA_END)
-		return NULL;
-
-	/* check for more available section table entries */
-	sect_count = le16_to_cpu(buf->section_count);
-	if (sect_count < bld->reserved_section_table_entries) {
-		void *section_ptr = ((u8 *)buf) + data_end;
-
-		buf->section_entry[sect_count].offset = cpu_to_le16(data_end);
-		buf->section_entry[sect_count].size = cpu_to_le16(size);
-		buf->section_entry[sect_count].type = cpu_to_le32(type);
-
-		data_end += size;
-		buf->data_end = cpu_to_le16(data_end);
-
-		buf->section_count = cpu_to_le16(sect_count + 1);
-		return section_ptr;
-	}
-
-	/* no free section table entries */
-	return NULL;
-}
-
-/**
- * ice_pkg_buf_alloc_single_section
- * @hw: pointer to the HW structure
- * @type: the section type value
- * @size: the size of the section to reserve (in bytes)
- * @section: returns pointer to the section
- *
- * Allocates a package buffer with a single section.
- * Note: all package contents must be in Little Endian form.
- */
-struct ice_buf_build *
-ice_pkg_buf_alloc_single_section(struct ice_hw *hw, u32 type, u16 size,
-				 void **section)
-{
-	struct ice_buf_build *buf;
-
-	if (!section)
-		return NULL;
-
-	buf = ice_pkg_buf_alloc(hw);
-	if (!buf)
-		return NULL;
-
-	if (ice_pkg_buf_reserve_section(buf, 1))
-		goto ice_pkg_buf_alloc_single_section_err;
-
-	*section = ice_pkg_buf_alloc_section(buf, type, size);
-	if (!*section)
-		goto ice_pkg_buf_alloc_single_section_err;
-
-	return buf;
-
-ice_pkg_buf_alloc_single_section_err:
-	ice_pkg_buf_free(hw, buf);
-	return NULL;
-}
-
-/**
- * ice_pkg_buf_get_active_sections
- * @bld: pointer to pkg build (allocated by ice_pkg_buf_alloc())
- *
- * Returns the number of active sections. Before using the package buffer
- * in an update package command, the caller should make sure that there is at
- * least one active section - otherwise, the buffer is not legal and should
- * not be used.
- * Note: all package contents must be in Little Endian form.
- */
-static u16 ice_pkg_buf_get_active_sections(struct ice_buf_build *bld)
-{
-	struct ice_buf_hdr *buf;
-
-	if (!bld)
-		return 0;
-
-	buf = (struct ice_buf_hdr *)&bld->buf;
-	return le16_to_cpu(buf->section_count);
-}
-
-/**
- * ice_pkg_buf
- * @bld: pointer to pkg build (allocated by ice_pkg_buf_alloc())
- *
- * Return a pointer to the buffer's header
- */
-struct ice_buf *ice_pkg_buf(struct ice_buf_build *bld)
-{
-	if (!bld)
-		return NULL;
-
-	return &bld->buf;
-}
-
 /**
  * ice_get_open_tunnel_port - retrieve an open tunnel port
  * @hw: pointer to the HW structure
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
index 9c530c86703e..7af7c8e9aa4e 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
@@ -6,75 +6,6 @@
 
 #include "ice_type.h"
 
-/* Package minimal version supported */
-#define ICE_PKG_SUPP_VER_MAJ	1
-#define ICE_PKG_SUPP_VER_MNR	3
-
-/* Package format version */
-#define ICE_PKG_FMT_VER_MAJ	1
-#define ICE_PKG_FMT_VER_MNR	0
-#define ICE_PKG_FMT_VER_UPD	0
-#define ICE_PKG_FMT_VER_DFT	0
-
-#define ICE_PKG_CNT 4
-
-enum ice_ddp_state {
-	/* Indicates that this call to ice_init_pkg
-	 * successfully loaded the requested DDP package
-	 */
-	ICE_DDP_PKG_SUCCESS			= 0,
-
-	/* Generic error for already loaded errors, it is mapped later to
-	 * the more specific one (one of the next 3)
-	 */
-	ICE_DDP_PKG_ALREADY_LOADED			= -1,
-
-	/* Indicates that a DDP package of the same version has already been
-	 * loaded onto the device by a previous call or by another PF
-	 */
-	ICE_DDP_PKG_SAME_VERSION_ALREADY_LOADED		= -2,
-
-	/* The device has a DDP package that is not supported by the driver */
-	ICE_DDP_PKG_ALREADY_LOADED_NOT_SUPPORTED	= -3,
-
-	/* The device has a compatible package
-	 * (but different from the request) already loaded
-	 */
-	ICE_DDP_PKG_COMPATIBLE_ALREADY_LOADED		= -4,
-
-	/* The firmware loaded on the device is not compatible with
-	 * the DDP package loaded
-	 */
-	ICE_DDP_PKG_FW_MISMATCH				= -5,
-
-	/* The DDP package file is invalid */
-	ICE_DDP_PKG_INVALID_FILE			= -6,
-
-	/* The version of the DDP package provided is higher than
-	 * the driver supports
-	 */
-	ICE_DDP_PKG_FILE_VERSION_TOO_HIGH		= -7,
-
-	/* The version of the DDP package provided is lower than the
-	 * driver supports
-	 */
-	ICE_DDP_PKG_FILE_VERSION_TOO_LOW		= -8,
-
-	/* The signature of the DDP package file provided is invalid */
-	ICE_DDP_PKG_FILE_SIGNATURE_INVALID		= -9,
-
-	/* The DDP package file security revision is too low and not
-	 * supported by firmware
-	 */
-	ICE_DDP_PKG_FILE_REVISION_TOO_LOW		= -10,
-
-	/* An error occurred in firmware while loading the DDP package */
-	ICE_DDP_PKG_LOAD_ERROR				= -11,
-
-	/* Other errors */
-	ICE_DDP_PKG_ERR					= -12
-};
-
 int
 ice_acquire_change_lock(struct ice_hw *hw, enum ice_aq_res_access_type access);
 void ice_release_change_lock(struct ice_hw *hw);
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_type.h b/drivers/net/ethernet/intel/ice/ice_flex_type.h
index ebbb5a1db8c7..9202b7b25477 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_type.h
@@ -4,214 +4,7 @@
 #ifndef _ICE_FLEX_TYPE_H_
 #define _ICE_FLEX_TYPE_H_
 
-#define ICE_FV_OFFSET_INVAL	0x1FF
-
-/* Extraction Sequence (Field Vector) Table */
-struct ice_fv_word {
-	u8 prot_id;
-	u16 off;		/* Offset within the protocol header */
-	u8 resvrd;
-} __packed;
-
-#define ICE_MAX_NUM_PROFILES 256
-
-#define ICE_MAX_FV_WORDS 48
-struct ice_fv {
-	struct ice_fv_word ew[ICE_MAX_FV_WORDS];
-};
-
-/* Package and segment headers and tables */
-struct ice_pkg_hdr {
-	struct ice_pkg_ver pkg_format_ver;
-	__le32 seg_count;
-	__le32 seg_offset[];
-};
-
-/* generic segment */
-struct ice_generic_seg_hdr {
-#define SEGMENT_TYPE_METADATA	      0x00000001
-#define SEGMENT_TYPE_ICE	      0x00000010
-#define SEGMENT_TYPE_ICE_RUN_TIME_CFG 0x00000020
-	__le32 seg_type;
-	struct ice_pkg_ver seg_format_ver;
-	__le32 seg_size;
-	char seg_id[ICE_PKG_NAME_SIZE];
-};
-
-/* ice specific segment */
-
-union ice_device_id {
-	struct {
-		__le16 device_id;
-		__le16 vendor_id;
-	} dev_vend_id;
-	__le32 id;
-};
-
-struct ice_device_id_entry {
-	union ice_device_id device;
-	union ice_device_id sub_device;
-};
-
-struct ice_seg {
-	struct ice_generic_seg_hdr hdr;
-	__le32 device_table_count;
-	struct ice_device_id_entry device_table[];
-};
-
-struct ice_nvm_table {
-	__le32 table_count;
-	__le32 vers[];
-};
-
-struct ice_buf {
-#define ICE_PKG_BUF_SIZE	4096
-	u8 buf[ICE_PKG_BUF_SIZE];
-};
-
-struct ice_buf_table {
-	__le32 buf_count;
-	struct ice_buf buf_array[];
-};
-
-struct ice_run_time_cfg_seg {
-	struct ice_generic_seg_hdr hdr;
-	u8 rsvd[8];
-	struct ice_buf_table buf_table;
-};
-
-/* global metadata specific segment */
-struct ice_global_metadata_seg {
-	struct ice_generic_seg_hdr hdr;
-	struct ice_pkg_ver pkg_ver;
-	__le32 rsvd;
-	char pkg_name[ICE_PKG_NAME_SIZE];
-};
-
-#define ICE_MIN_S_OFF		12
-#define ICE_MAX_S_OFF		4095
-#define ICE_MIN_S_SZ		1
-#define ICE_MAX_S_SZ		4084
-
-/* section information */
-struct ice_section_entry {
-	__le32 type;
-	__le16 offset;
-	__le16 size;
-};
-
-#define ICE_MIN_S_COUNT		1
-#define ICE_MAX_S_COUNT		511
-#define ICE_MIN_S_DATA_END	12
-#define ICE_MAX_S_DATA_END	4096
-
-#define ICE_METADATA_BUF	0x80000000
-
-struct ice_buf_hdr {
-	__le16 section_count;
-	__le16 data_end;
-	struct ice_section_entry section_entry[];
-};
-
-#define ICE_MAX_ENTRIES_IN_BUF(hd_sz, ent_sz) ((ICE_PKG_BUF_SIZE - \
-	struct_size((struct ice_buf_hdr *)0, section_entry, 1) - (hd_sz)) /\
-	(ent_sz))
-
-/* ice package section IDs */
-#define ICE_SID_METADATA		1
-#define ICE_SID_XLT0_SW			10
-#define ICE_SID_XLT_KEY_BUILDER_SW	11
-#define ICE_SID_XLT1_SW			12
-#define ICE_SID_XLT2_SW			13
-#define ICE_SID_PROFID_TCAM_SW		14
-#define ICE_SID_PROFID_REDIR_SW		15
-#define ICE_SID_FLD_VEC_SW		16
-#define ICE_SID_CDID_KEY_BUILDER_SW	17
-
-struct ice_meta_sect {
-	struct ice_pkg_ver ver;
-#define ICE_META_SECT_NAME_SIZE	28
-	char name[ICE_META_SECT_NAME_SIZE];
-	__le32 track_id;
-};
-
-#define ICE_SID_CDID_REDIR_SW		18
-
-#define ICE_SID_XLT0_ACL		20
-#define ICE_SID_XLT_KEY_BUILDER_ACL	21
-#define ICE_SID_XLT1_ACL		22
-#define ICE_SID_XLT2_ACL		23
-#define ICE_SID_PROFID_TCAM_ACL		24
-#define ICE_SID_PROFID_REDIR_ACL	25
-#define ICE_SID_FLD_VEC_ACL		26
-#define ICE_SID_CDID_KEY_BUILDER_ACL	27
-#define ICE_SID_CDID_REDIR_ACL		28
-
-#define ICE_SID_XLT0_FD			30
-#define ICE_SID_XLT_KEY_BUILDER_FD	31
-#define ICE_SID_XLT1_FD			32
-#define ICE_SID_XLT2_FD			33
-#define ICE_SID_PROFID_TCAM_FD		34
-#define ICE_SID_PROFID_REDIR_FD		35
-#define ICE_SID_FLD_VEC_FD		36
-#define ICE_SID_CDID_KEY_BUILDER_FD	37
-#define ICE_SID_CDID_REDIR_FD		38
-
-#define ICE_SID_XLT0_RSS		40
-#define ICE_SID_XLT_KEY_BUILDER_RSS	41
-#define ICE_SID_XLT1_RSS		42
-#define ICE_SID_XLT2_RSS		43
-#define ICE_SID_PROFID_TCAM_RSS		44
-#define ICE_SID_PROFID_REDIR_RSS	45
-#define ICE_SID_FLD_VEC_RSS		46
-#define ICE_SID_CDID_KEY_BUILDER_RSS	47
-#define ICE_SID_CDID_REDIR_RSS		48
-
-#define ICE_SID_RXPARSER_MARKER_PTYPE	55
-#define ICE_SID_RXPARSER_BOOST_TCAM	56
-#define ICE_SID_RXPARSER_METADATA_INIT	58
-#define ICE_SID_TXPARSER_BOOST_TCAM	66
-
-#define ICE_SID_XLT0_PE			80
-#define ICE_SID_XLT_KEY_BUILDER_PE	81
-#define ICE_SID_XLT1_PE			82
-#define ICE_SID_XLT2_PE			83
-#define ICE_SID_PROFID_TCAM_PE		84
-#define ICE_SID_PROFID_REDIR_PE		85
-#define ICE_SID_FLD_VEC_PE		86
-#define ICE_SID_CDID_KEY_BUILDER_PE	87
-#define ICE_SID_CDID_REDIR_PE		88
-
-/* Label Metadata section IDs */
-#define ICE_SID_LBL_FIRST		0x80000010
-#define ICE_SID_LBL_RXPARSER_TMEM	0x80000018
-/* The following define MUST be updated to reflect the last label section ID */
-#define ICE_SID_LBL_LAST		0x80000038
-
-/* Label ICE runtime configuration section IDs */
-#define ICE_SID_TX_5_LAYER_TOPO		0x10
-
-enum ice_block {
-	ICE_BLK_SW = 0,
-	ICE_BLK_ACL,
-	ICE_BLK_FD,
-	ICE_BLK_RSS,
-	ICE_BLK_PE,
-	ICE_BLK_COUNT
-};
-
-enum ice_sect {
-	ICE_XLT0 = 0,
-	ICE_XLT_KB,
-	ICE_XLT1,
-	ICE_XLT2,
-	ICE_PROF_TCAM,
-	ICE_PROF_REDIR,
-	ICE_VEC_TBL,
-	ICE_CDID_KB,
-	ICE_CDID_REDIR,
-	ICE_SECT_COUNT
-};
+#include "ice_ddp.h"
 
 /* Packet Type (PTYPE) values */
 #define ICE_PTYPE_MAC_PAY		1
@@ -293,134 +86,6 @@ struct ice_ptype_attributes {
 	enum ice_ptype_attrib_type attrib;
 };
 
-/* package labels */
-struct ice_label {
-	__le16 value;
-#define ICE_PKG_LABEL_SIZE	64
-	char name[ICE_PKG_LABEL_SIZE];
-};
-
-struct ice_label_section {
-	__le16 count;
-	struct ice_label label[];
-};
-
-#define ICE_MAX_LABELS_IN_BUF ICE_MAX_ENTRIES_IN_BUF( \
-	struct_size((struct ice_label_section *)0, label, 1) - \
-	sizeof(struct ice_label), sizeof(struct ice_label))
-
-struct ice_sw_fv_section {
-	__le16 count;
-	__le16 base_offset;
-	struct ice_fv fv[];
-};
-
-struct ice_sw_fv_list_entry {
-	struct list_head list_entry;
-	u32 profile_id;
-	struct ice_fv *fv_ptr;
-};
-
-/* The BOOST TCAM stores the match packet header in reverse order, meaning
- * the fields are reversed; in addition, this means that the normally big endian
- * fields of the packet are now little endian.
- */
-struct ice_boost_key_value {
-#define ICE_BOOST_REMAINING_HV_KEY	15
-	u8 remaining_hv_key[ICE_BOOST_REMAINING_HV_KEY];
-	__le16 hv_dst_port_key;
-	__le16 hv_src_port_key;
-	u8 tcam_search_key;
-} __packed;
-
-struct ice_boost_key {
-	struct ice_boost_key_value key;
-	struct ice_boost_key_value key2;
-};
-
-/* package Boost TCAM entry */
-struct ice_boost_tcam_entry {
-	__le16 addr;
-	__le16 reserved;
-	/* break up the 40 bytes of key into different fields */
-	struct ice_boost_key key;
-	u8 boost_hit_index_group;
-	/* The following contains bitfields which are not on byte boundaries.
-	 * These fields are currently unused by driver software.
-	 */
-#define ICE_BOOST_BIT_FIELDS		43
-	u8 bit_fields[ICE_BOOST_BIT_FIELDS];
-};
-
-struct ice_boost_tcam_section {
-	__le16 count;
-	__le16 reserved;
-	struct ice_boost_tcam_entry tcam[];
-};
-
-#define ICE_MAX_BST_TCAMS_IN_BUF ICE_MAX_ENTRIES_IN_BUF( \
-	struct_size((struct ice_boost_tcam_section *)0, tcam, 1) - \
-	sizeof(struct ice_boost_tcam_entry), \
-	sizeof(struct ice_boost_tcam_entry))
-
-/* package Marker Ptype TCAM entry */
-struct ice_marker_ptype_tcam_entry {
-#define ICE_MARKER_PTYPE_TCAM_ADDR_MAX	1024
-	__le16 addr;
-	__le16 ptype;
-	u8 keys[20];
-};
-
-struct ice_marker_ptype_tcam_section {
-	__le16 count;
-	__le16 reserved;
-	struct ice_marker_ptype_tcam_entry tcam[];
-};
-
-#define ICE_MAX_MARKER_PTYPE_TCAMS_IN_BUF	\
-	ICE_MAX_ENTRIES_IN_BUF(struct_size((struct ice_marker_ptype_tcam_section *)0, tcam, 1) - \
-	sizeof(struct ice_marker_ptype_tcam_entry), \
-	sizeof(struct ice_marker_ptype_tcam_entry))
-
-struct ice_xlt1_section {
-	__le16 count;
-	__le16 offset;
-	u8 value[];
-};
-
-struct ice_xlt2_section {
-	__le16 count;
-	__le16 offset;
-	__le16 value[];
-};
-
-struct ice_prof_redir_section {
-	__le16 count;
-	__le16 offset;
-	u8 redir_value[];
-};
-
-/* package buffer building */
-
-struct ice_buf_build {
-	struct ice_buf buf;
-	u16 reserved_section_table_entries;
-};
-
-struct ice_pkg_enum {
-	struct ice_buf_table *buf_table;
-	u32 buf_idx;
-
-	u32 type;
-	struct ice_buf_hdr *buf;
-	u32 sect_idx;
-	void *sect;
-	u32 sect_type;
-
-	u32 entry_idx;
-	void *(*handler)(u32 sect_type, void *section, u32 index, u32 *offset);
-};
-
 /* Tunnel enabling */
 
 enum ice_tunnel_type {
-- 
2.34.1

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-316 | Kapital zakladowy 200.000 PLN.
Spolka oswiadcza, ze posiada status duzego przedsiebiorcy w rozumieniu ustawy z dnia 8 marca 2013 r. o przeciwdzialaniu nadmiernym opoznieniom w transakcjach handlowych.

Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiekolwiek przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

