Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4D8973938
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Sep 2024 15:59:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CA90040AE7;
	Tue, 10 Sep 2024 13:59:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eKUmS7BRz8_H; Tue, 10 Sep 2024 13:59:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0AFA940279
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725976752;
	bh=2HztyNoO1nGgjvlQC+D39X9viw9H/zBf9TVtd3wP/5E=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=3KWlZwMpTsfdiWS+LmAH4PCR6ZA6tuQLJ5ngezYDuYEWVkroEIToUXQa41mLceNSC
	 OP4SsMPZK/6MAaMbwC6m+xsa38WLOaoeUvidD7rVgrZ+xKMV5PCobA5bd+Ge2X4nrM
	 1Rwtp+QnuTkOK+7gcHZ1Xy+JPEiQuaafjbpeWd8KQpYL/lrJjV+6zzNZljUH7Dl1kP
	 SVEVC3TW21EfFduo9oOrpiXSMhiqY9XGInqsrRNZ9DlkmdiELH7GHNzaJJjsCqo0tC
	 nlMrQObff3LDGMXFwmvgBThwWO2Gncss4ZJByjoG06YSEbUk0agcDo058sqmeQZMte
	 pNbsZxSyWVwKg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0AFA940279;
	Tue, 10 Sep 2024 13:59:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 99D0F1BF20B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 13:59:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 77C6F60883
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 13:59:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v4-VsW_oqzJn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Sep 2024 13:59:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 42AEC60891
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 42AEC60891
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 42AEC60891
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 13:59:05 +0000 (UTC)
X-CSE-ConnectionGUID: KW8+WY9wRguiFkXnUUPiJw==
X-CSE-MsgGUID: 1hmDAVg8TTGMEFR0QZACBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="28614412"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="28614412"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 06:59:05 -0700
X-CSE-ConnectionGUID: iwDbtjOAQqijO85QWaeczg==
X-CSE-MsgGUID: 4YdcaoniSYyTC8dlThI46w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="66997721"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa009.jf.intel.com with ESMTP; 10 Sep 2024 06:59:02 -0700
Received: from pkitszel-desk.tendawifi.com (unknown [10.245.246.31])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id A1CB427BAD;
 Tue, 10 Sep 2024 14:59:00 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Tue, 10 Sep 2024 15:57:21 +0200
Message-ID: <20240910135814.35693-2-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725976746; x=1757512746;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=A9vnovoJ6RCpux/CpGxMIlLHjNbXDQ2+KzXezxtkdUo=;
 b=g9cf6jidMMMkb1LFizYRi7t+jc1tPSizUDRQa9OxsmWiwcluHeaD8qSW
 Hq+ThB2uiZ9u0Wm6ASyqsY74efhxEtns8VMPceX0vNwBX5LJLdTN5Gdwq
 v6H3BPnyg01taZ3wdrk2/pOLjlVCeCb/zVb/c7bp4xvkiuTZ3IibdXWDv
 BiK7xLvsOYhcnbwzHXd3mGamw/nik0SK4H4Am7sglGktGjHlZE8M8657n
 rB/k7e8g3IEhfxTinkpm1WUcWB6zTKxwEOIfOJAmU3l7Hxuceo/0XXZf/
 wSU8w1a9XXoJCmHHQwcUzk6Wv+esdXbWVqMNot6KXi2U//Cwzzm/2pWfm
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=g9cf6jid
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix memleak in
 ice_init_tx_topology()
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
Cc: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix leak of the FW blob (DDP pkg).

Make ice_cfg_tx_topo() const-correct, so ice_init_tx_topology() can avoid
copying whole FW blob. Copy just the topology section, and only when
needed. Reuse the buffer allocated for the read of the current topology.

This was found by kmemleak, with the following trace for each PF:
    [<ffffffff8761044d>] kmemdup_noprof+0x1d/0x50
    [<ffffffffc0a0a480>] ice_init_ddp_config+0x100/0x220 [ice]
    [<ffffffffc0a0da7f>] ice_init_dev+0x6f/0x200 [ice]
    [<ffffffffc0a0dc49>] ice_init+0x29/0x560 [ice]
    [<ffffffffc0a10c1d>] ice_probe+0x21d/0x310 [ice]

Constify ice_cfg_tx_topo() @buf parameter.
This cascades further down to few more functions.

Fixes: cc5776fe1832 ("ice: Enable switching default Tx scheduler topology")
CC: Larysa Zaremba <larysa.zaremba@intel.com>
CC: Jacob Keller <jacob.e.keller@intel.com>
CC: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>
CC: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
this patch obsoletes two other, so I'm dropping RB tags
v1, iwl-net: https://lore.kernel.org/netdev/20240904123306.14629-2-przemyslaw.kitszel@intel.com/
    wrong assumption that ice_get_set_tx_topo() does not modify the buffer
    on adminq SET variant, it sometimes does, to fill the response, thanks
    to Pucha Himasekhar Reddy for finding it out;
almost-const-correct iwl-next patch:
https://lore.kernel.org/intel-wired-lan/20240904093135.8795-2-przemyslaw.kitszel@intel.com
it was just some of this patch, now it is const-correct
---
 drivers/net/ethernet/intel/ice/ice_ddp.h  |  4 +-
 drivers/net/ethernet/intel/ice/ice_ddp.c  | 58 +++++++++++------------
 drivers/net/ethernet/intel/ice/ice_main.c |  8 +---
 3 files changed, 31 insertions(+), 39 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.h b/drivers/net/ethernet/intel/ice/ice_ddp.h
index 622543f08b43..00840e5a1077 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.h
@@ -430,7 +430,7 @@ struct ice_pkg_enum {
 	u32 buf_idx;
 
 	u32 type;
-	struct ice_buf_hdr *buf;
+	const struct ice_buf_hdr *buf;
 	u32 sect_idx;
 	void *sect;
 	u32 sect_type;
@@ -454,6 +454,6 @@ u16 ice_pkg_buf_get_active_sections(struct ice_buf_build *bld);
 void *ice_pkg_enum_section(struct ice_seg *ice_seg, struct ice_pkg_enum *state,
 			   u32 sect_type);
 
-int ice_cfg_tx_topo(struct ice_hw *hw, u8 *buf, u32 len);
+int ice_cfg_tx_topo(struct ice_hw *hw, const void *buf, u32 len);
 
 #endif
diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index f182179529b7..6b60b7c4de09 100644
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
@@ -2354,12 +2352,12 @@ ice_get_set_tx_topo(struct ice_hw *hw, u8 *buf, u16 buf_size,
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
+	u8 *new_topo = NULL, *topo __free(kfree) = NULL;
+	const struct ice_run_time_cfg_seg *seg;
+	const struct ice_buf_hdr *section;
+	const struct ice_pkg_hdr *pkg_hdr;
 	enum ice_ddp_state state;
 	u16 offset, size = 0;
 	u32 reg = 0;
@@ -2375,15 +2373,13 @@ int ice_cfg_tx_topo(struct ice_hw *hw, u8 *buf, u32 len)
 		return -EOPNOTSUPP;
 	}
 
-	current_topo = kzalloc(ICE_AQ_MAX_BUF_LEN, GFP_KERNEL);
-	if (!current_topo)
+	topo = kzalloc(ICE_AQ_MAX_BUF_LEN, GFP_KERNEL);
+	if (!topo)
 		return -ENOMEM;
 
-	/* Get the current Tx topology */
-	status = ice_get_set_tx_topo(hw, current_topo, ICE_AQ_MAX_BUF_LEN, NULL,
-				     &flags, false);
-
-	kfree(current_topo);
+	/* Get the current Tx topology flags */
+	status = ice_get_set_tx_topo(hw, topo, ICE_AQ_MAX_BUF_LEN, NULL, &flags,
+				     false);
 
 	if (status) {
 		ice_debug(hw, ICE_DBG_INIT, "Get current topology is failed\n");
@@ -2419,16 +2415,16 @@ int ice_cfg_tx_topo(struct ice_hw *hw, u8 *buf, u32 len)
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
@@ -2461,8 +2457,10 @@ int ice_cfg_tx_topo(struct ice_hw *hw, u8 *buf, u32 len)
 		return -EIO;
 	}
 
-	/* Get the new topology buffer */
-	new_topo = ((u8 *)section) + offset;
+	/* Get the new topology buffer, reuse current topo copy mem */
+	static_assert(ICE_PKG_BUF_SIZE == ICE_AQ_MAX_BUF_LEN);
+	new_topo = topo;
+	memcpy(new_topo, (u8 *)section + offset, size);
 
 update_topo:
 	/* Acquire global lock to make sure that set topology issued
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index c7db88b517da..30b94eca32b1 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4548,16 +4548,10 @@ ice_init_tx_topology(struct ice_hw *hw, const struct firmware *firmware)
 	u8 num_tx_sched_layers = hw->num_tx_sched_layers;
 	struct ice_pf *pf = hw->back;
 	struct device *dev;
-	u8 *buf_copy;
 	int err;
 
 	dev = ice_pf_to_dev(pf);
-	/* ice_cfg_tx_topo buf argument is not a constant,
-	 * so we have to make a copy
-	 */
-	buf_copy = kmemdup(firmware->data, firmware->size, GFP_KERNEL);
-
-	err = ice_cfg_tx_topo(hw, buf_copy, firmware->size);
+	err = ice_cfg_tx_topo(hw, firmware->data, firmware->size);
 	if (!err) {
 		if (hw->num_tx_sched_layers > num_tx_sched_layers)
 			dev_info(dev, "Tx scheduling layers switching feature disabled\n");

base-commit: b3c9e65eb227269ed72a115ba22f4f51b4e62b4d
-- 
2.46.0

