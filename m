Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 761BE96B6B7
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 11:31:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7DEDE40264;
	Wed,  4 Sep 2024 09:31:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t9WSlkuFffcZ; Wed,  4 Sep 2024 09:31:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A62540204
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725442305;
	bh=oX39L8YkhMOR0Chk5POGbNdOn+3oG1kAzj6dddsuEv8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=WwHhi5mJ6fnPylpT5MpsAJxabWal4fTlhdBX8PZQ6N0g3mNPpJnwWax56sv2JRFb8
	 eqG+gUx2TIQZvjfg1/nUuSoC/xj9K+UsIrX7dtBY/aeJi0vUjx9EpDV/4oJgt1mvK4
	 hKbyYiqDALEwHcfE6xw7zkYOpCz3Lwq2t6ryKI7KIGtM5b+VMuVMZcrA7125MSDxXl
	 Cf+c+LhPZH0BXIoIey8RupJKG+XvVFC7+fTMi5KY9oK14RCWwn6W5yQxhHk1YKzKxi
	 jrvzhkrTo81tWunIqP9hNbP5HKFPFjBXzFOazJJaunK0gAjCrMq3SoXv2/0AXpVBcc
	 tbs/hBZKKUvpA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A62540204;
	Wed,  4 Sep 2024 09:31:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 831711BF97A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:31:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7A7E3607FC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:31:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yPxd08o12mly for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 09:31:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 95E9B607F8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95E9B607F8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 95E9B607F8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:31:41 +0000 (UTC)
X-CSE-ConnectionGUID: 8JPkOCriSVGV19S52ED+KQ==
X-CSE-MsgGUID: fQowEqaTQQujnViFilg9Cw==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="27977712"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="27977712"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 02:31:42 -0700
X-CSE-ConnectionGUID: 75lyWLWwR3iT2tOjt5SbQA==
X-CSE-MsgGUID: v+wQKCr+Qse8jnmC+eLNKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="65734243"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa007.jf.intel.com with ESMTP; 04 Sep 2024 02:31:39 -0700
Received: from pkitszel-desk.intel.com (unknown [10.245.246.22])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id B338527BC9;
 Wed,  4 Sep 2024 10:31:37 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed,  4 Sep 2024 11:31:16 +0200
Message-ID: <20240904093135.8795-2-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725442303; x=1756978303;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Z7bE3cBE5SpRVMUeiiUrcTguXGeAudqrrHO7AOWFFgk=;
 b=bbwCKww0uwiNKAVsAaAf5BP3KTkdDMbOUtzpPJBEbuP3t03LJzxAKQEX
 BneFS2jfPNAAKyRgM67UyYwO4/oOEMj51RiOvjexhAa53q9IR05cav/Eb
 gdv2f7XYCnJFZmRjYDQy/LBBF7v4Dm6HnszaRLIciPl7N8Lo34WeGD0dC
 1yb0ULUiXRzg6FvTXdDI707HNRPc/koAF5Vz4wPdX5iDISkf2xuHIugPi
 uUzp0wNIrauPPDlk4GSnn8fWj5/wZIEKtz7kHJaeH4sPivPg8YJyiHgOE
 bAuxj0+3JBKFH9j0eqe750QXlyNy0r2MRJmrlY0xwojL4viB+248IsxLi
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bbwCKww0
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: make ice_cfg_tx_topo()
 almost const-correct
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Constify ice_cfg_tx_topo() @buf parameter.
This cascades further down to few more functions.

I set the boundary on ice_get_set_tx_topo(), which could not be easily
constified as it is get-or-set, but it's set variant does not change
provided data, the same holds for ice_aqc_opc_set_tx_topo() in particular.
That's why there is (u8 *) cast to loose const prior to entering into AQ
world of const-obliviousness.

Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ddp.h |  4 +-
 drivers/net/ethernet/intel/ice/ice_ddp.c | 48 ++++++++++++------------
 2 files changed, 26 insertions(+), 26 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.h b/drivers/net/ethernet/intel/ice/ice_ddp.h
index 97f272317475..79551da2a4b0 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.h
@@ -438,7 +438,7 @@ struct ice_pkg_enum {
 	u32 buf_idx;
 
 	u32 type;
-	struct ice_buf_hdr *buf;
+	const struct ice_buf_hdr *buf;
 	u32 sect_idx;
 	void *sect;
 	u32 sect_type;
@@ -467,6 +467,6 @@ ice_pkg_enum_entry(struct ice_seg *ice_seg, struct ice_pkg_enum *state,
 void *ice_pkg_enum_section(struct ice_seg *ice_seg, struct ice_pkg_enum *state,
 			   u32 sect_type);
 
-int ice_cfg_tx_topo(struct ice_hw *hw, u8 *buf, u32 len);
+int ice_cfg_tx_topo(struct ice_hw *hw, const void *buf, u32 len);
 
 #endif
diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index 953262b88a58..f2ac1d265510 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
@@ -31,7 +31,7 @@ static const struct ice_tunnel_type_scan tnls[] = {
  * Verifies various attributes of the package file, including length, format
  * version, and the requirement of at least one segment.
  */
-static enum ice_ddp_state ice_verify_pkg(struct ice_pkg_hdr *pkg, u32 len)
+static enum ice_ddp_state ice_verify_pkg(const struct ice_pkg_hdr *pkg, u32 len)
 {
 	u32 seg_count;
 	u32 i;
@@ -57,13 +57,13 @@ static enum ice_ddp_state ice_verify_pkg(struct ice_pkg_hdr *pkg, u32 len)
 	/* all segments must fit within length */
 	for (i = 0; i < seg_count; i++) {
 		u32 off = le32_to_cpu(pkg->seg_offset[i]);
-		struct ice_generic_seg_hdr *seg;
+		const struct ice_generic_seg_hdr *seg;
 
 		/* segment header must fit */
 		if (len < off + sizeof(*seg))
 			return ICE_DDP_PKG_INVALID_FILE;
 
-		seg = (struct ice_generic_seg_hdr *)((u8 *)pkg + off);
+		seg = (void *)pkg + off;
 
 		/* segment body must fit */
 		if (len < off + le32_to_cpu(seg->seg_size))
@@ -119,13 +119,13 @@ static enum ice_ddp_state ice_chk_pkg_version(struct ice_pkg_ver *pkg_ver)
  *
  * This helper function validates a buffer's header.
  */
-static struct ice_buf_hdr *ice_pkg_val_buf(struct ice_buf *buf)
+static const struct ice_buf_hdr *ice_pkg_val_buf(const struct ice_buf *buf)
 {
-	struct ice_buf_hdr *hdr;
+	const struct ice_buf_hdr *hdr;
 	u16 section_count;
 	u16 data_end;
 
-	hdr = (struct ice_buf_hdr *)buf->buf;
+	hdr = (const struct ice_buf_hdr *)buf->buf;
 	/* verify data */
 	section_count = le16_to_cpu(hdr->section_count);
 	if (section_count < ICE_MIN_S_COUNT || section_count > ICE_MAX_S_COUNT)
@@ -165,8 +165,8 @@ static struct ice_buf_table *ice_find_buf_table(struct ice_seg *ice_seg)
  * unexpected value has been detected (for example an invalid section count or
  * an invalid buffer end value).
  */
-static struct ice_buf_hdr *ice_pkg_enum_buf(struct ice_seg *ice_seg,
-					    struct ice_pkg_enum *state)
+static const struct ice_buf_hdr *ice_pkg_enum_buf(struct ice_seg *ice_seg,
+						  struct ice_pkg_enum *state)
 {
 	if (ice_seg) {
 		state->buf_table = ice_find_buf_table(ice_seg);
@@ -1800,9 +1800,9 @@ int ice_update_pkg(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
  * success it returns a pointer to the segment header, otherwise it will
  * return NULL.
  */
-static struct ice_generic_seg_hdr *
+static const struct ice_generic_seg_hdr *
 ice_find_seg_in_pkg(struct ice_hw *hw, u32 seg_type,
-		    struct ice_pkg_hdr *pkg_hdr)
+		    const struct ice_pkg_hdr *pkg_hdr)
 {
 	u32 i;
 
@@ -1813,11 +1813,9 @@ ice_find_seg_in_pkg(struct ice_hw *hw, u32 seg_type,
 
 	/* Search all package segments for the requested segment type */
 	for (i = 0; i < le32_to_cpu(pkg_hdr->seg_count); i++) {
-		struct ice_generic_seg_hdr *seg;
+		const struct ice_generic_seg_hdr *seg;
 
-		seg = (struct ice_generic_seg_hdr
-			       *)((u8 *)pkg_hdr +
-				  le32_to_cpu(pkg_hdr->seg_offset[i]));
+		seg = (void *)pkg_hdr + le32_to_cpu(pkg_hdr->seg_offset[i]);
 
 		if (le32_to_cpu(seg->seg_type) == seg_type)
 			return seg;
@@ -2354,14 +2352,15 @@ ice_get_set_tx_topo(struct ice_hw *hw, u8 *buf, u16 buf_size,
  *
  * Return: zero when update was successful, negative values otherwise.
  */
-int ice_cfg_tx_topo(struct ice_hw *hw, u8 *buf, u32 len)
+int ice_cfg_tx_topo(struct ice_hw *hw, const void *buf, u32 len)
 {
-	u8 *current_topo, *new_topo = NULL;
-	struct ice_run_time_cfg_seg *seg;
-	struct ice_buf_hdr *section;
-	struct ice_pkg_hdr *pkg_hdr;
+	const struct ice_run_time_cfg_seg *seg;
+	const struct ice_buf_hdr *section;
+	const struct ice_pkg_hdr *pkg_hdr;
+	const u8 *new_topo = NULL;
 	enum ice_ddp_state state;
 	u16 offset, size = 0;
+	u8 *current_topo;
 	u32 reg = 0;
 	int status;
 	u8 flags;
@@ -2379,7 +2378,7 @@ int ice_cfg_tx_topo(struct ice_hw *hw, u8 *buf, u32 len)
 	if (!current_topo)
 		return -ENOMEM;
 
-	/* Get the current Tx topology */
+	/* Get the current Tx topology flags */
 	status = ice_get_set_tx_topo(hw, current_topo, ICE_AQ_MAX_BUF_LEN, NULL,
 				     &flags, false);
 
@@ -2419,16 +2418,16 @@ int ice_cfg_tx_topo(struct ice_hw *hw, u8 *buf, u32 len)
 		goto update_topo;
 	}
 
-	pkg_hdr = (struct ice_pkg_hdr *)buf;
+	pkg_hdr = (const struct ice_pkg_hdr *)buf;
 	state = ice_verify_pkg(pkg_hdr, len);
 	if (state) {
 		ice_debug(hw, ICE_DBG_INIT, "Failed to verify pkg (err: %d)\n",
 			  state);
 		return -EIO;
 	}
 
 	/* Find runtime configuration segment */
-	seg = (struct ice_run_time_cfg_seg *)
+	seg = (const struct ice_run_time_cfg_seg *)
 	      ice_find_seg_in_pkg(hw, SEGMENT_TYPE_ICE_RUN_TIME_CFG, pkg_hdr);
 	if (!seg) {
 		ice_debug(hw, ICE_DBG_INIT, "5 layer topology segment is missing\n");
@@ -2462,7 +2461,7 @@ int ice_cfg_tx_topo(struct ice_hw *hw, u8 *buf, u32 len)
 	}
 
 	/* Get the new topology buffer */
-	new_topo = ((u8 *)section) + offset;
+	new_topo = (const u8 *)section + offset;
 
 update_topo:
 	/* Acquire global lock to make sure that set topology issued
@@ -2485,7 +2484,8 @@ int ice_cfg_tx_topo(struct ice_hw *hw, u8 *buf, u32 len)
 	}
 
 	/* Set new topology */
-	status = ice_get_set_tx_topo(hw, new_topo, size, NULL, NULL, true);
+	status = ice_get_set_tx_topo(hw, (u8 *)new_topo, size, NULL, NULL,
+				     true);
 	if (status) {
 		ice_debug(hw, ICE_DBG_INIT, "Failed setting Tx topology\n");
 		return status;

base-commit: d6f75d86aa786740ef7a7607685e9e1039e30aab
-- 
2.46.0

