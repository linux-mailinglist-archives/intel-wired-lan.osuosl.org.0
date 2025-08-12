Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5151CB21C6B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 06:54:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA5A041E16;
	Tue, 12 Aug 2025 04:54:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gk4c8M1L-oJG; Tue, 12 Aug 2025 04:54:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8885F41E1B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754974471;
	bh=ybkp3GKBezlt5+cssOS2AjE53Yh3QhL13x0QVsuZvuQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Vk58/9tGFWT7ZiI9Q0ryqklipTCpHmXo2GC7uFhVG2WqrxFVVuBK5xj1AB/lEZbbJ
	 V8fS9r+oZ6w1Cr7u2ttmxLsl6KgUu0t4bz8opwfHP/Yf+JVgT7KzzT2srce+nvqui8
	 IjkCprzqn9yz1XRKNcnDwgAtGboRt2D2q0Fl+Wmq1Dmw4MZ0hU1tDfOGvWabrrpLB3
	 GHVd5wJyS+cMBXdqHMumOi1dOtQPvm9DQ3vBmC+CepPn3U1PgdJqeV6+Fn2NYzQ1Nb
	 oBePn4hZr9R+FFFUtjRk4ZywjgjfApr1BpUsrkpicHzOYG0UqDm1eRATfYnieuyLB8
	 gS2+nk1tqUsJg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8885F41E1B;
	Tue, 12 Aug 2025 04:54:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7B71D183
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:54:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6D4358291A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:54:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3YDGUO46WngA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 04:54:26 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 143F2827DD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 143F2827DD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 143F2827DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:54:26 +0000 (UTC)
X-CSE-ConnectionGUID: YqBCaWI3TT+Pgs0GmtGYNA==
X-CSE-MsgGUID: +2CB7nppQ5iO28p1fsg/Mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="68612772"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="68612772"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 21:47:18 -0700
X-CSE-ConnectionGUID: p0hgxg4jSIWgIPDjSvn6sA==
X-CSE-MsgGUID: aY41Tk2sT5yKenBl8Qr38w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="165327919"
Received: from unknown (HELO os-delivery.igk.intel.com) ([10.102.21.165])
 by orviesa010.jf.intel.com with ESMTP; 11 Aug 2025 21:47:16 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 dawid.osuchowski@linux.intel.com, horms@kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Tue, 12 Aug 2025 06:23:33 +0200
Message-ID: <20250812042337.1356907-13-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250812042337.1356907-1-michal.swiatkowski@linux.intel.com>
References: <20250812042337.1356907-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754974466; x=1786510466;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oZ3UesQ/fjABjfBhlRXbYSQKFcHxMlboNmOVdiX58aQ=;
 b=lkHNm87YmCkJkpoBNyHNWOg4orsxI2BHg/HN/VqLV1hWu837FvI0RaYZ
 YFWnuc7pTqi0kM4Q09fD9kGk2ZukYIQ9aafCftBd6hdYhq8+Ef4zDzVzu
 4u8FzHoyU2AE2CD9I45CfR8k9dQ8IvseQtyJC8aOIhUQ/G6cjrgt1U+zP
 ABWEF3Z00GvAqHMRXfGK7hItKuveEu0TlwqPzeDtFxGZoeTTZLmchNwCQ
 gKAdBX57FkiuOOAn2GHz8+KRNaNirVlGFbrtkX56KDdv5HzpbqNy03NCB
 vkh3v3naopyaFcZSMAUwA0guqyGJTG4iXh8bwQB4HwIHA8R18bPs8TcVj
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lkHNm87Y
Subject: [Intel-wired-lan] [PATCH iwl-next v2 12/15] ice: prepare for moving
 file to libie
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

s/ice/libie

There is no function for filling default descriptor in libie. Zero
descriptor structure and set opcode without calling the function.

Make functions that are caled only in ice_fwlog.c static.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c |   6 +-
 drivers/net/ethernet/intel/ice/ice_fwlog.c  | 624 ++++++++++----------
 drivers/net/ethernet/intel/ice/ice_fwlog.h  |  78 ++-
 drivers/net/ethernet/intel/ice/ice_main.c   |   4 +-
 drivers/net/ethernet/intel/ice/ice_type.h   |   2 +-
 include/linux/net/intel/libie/adminq.h      |   1 +
 6 files changed, 359 insertions(+), 356 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 5a365f65c0e3..30675cd6b08b 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -995,7 +995,7 @@ static int __fwlog_send_cmd(void *priv, struct libie_aq_desc *desc, void *buf,
 static int __fwlog_init(struct ice_hw *hw)
 {
 	struct ice_pf *pf = hw->back;
-	struct ice_fwlog_api api = {
+	struct libie_fwlog_api api = {
 		.pdev = pf->pdev,
 		.send_cmd = __fwlog_send_cmd,
 		.priv = hw,
@@ -1012,7 +1012,7 @@ static int __fwlog_init(struct ice_hw *hw)
 
 	api.debugfs_root = pf->ice_debugfs_pf;
 
-	return ice_fwlog_init(&hw->fwlog, &api);
+	return libie_fwlog_init(&hw->fwlog, &api);
 }
 
 /**
@@ -1197,7 +1197,7 @@ static void __fwlog_deinit(struct ice_hw *hw)
 		return;
 
 	ice_debugfs_pf_deinit(hw->back);
-	ice_fwlog_deinit(&hw->fwlog);
+	libie_fwlog_deinit(&hw->fwlog);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
index aaf6e20f934f..775581163e04 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
@@ -12,13 +12,13 @@
 /* create a define that has an extra module that doesn't really exist. this
  * is so we can add a module 'all' to easily enable/disable all the modules
  */
-#define ICE_NR_FW_LOG_MODULES (LIBIE_AQC_FW_LOG_ID_MAX + 1)
+#define LIBIE_NR_FW_LOG_MODULES (LIBIE_AQC_FW_LOG_ID_MAX + 1)
 
 /* the ordering in this array is important. it matches the ordering of the
  * values in the FW so the index is the same value as in
  * libie_aqc_fw_logging_mod
  */
-static const char * const ice_fwlog_module_string[] = {
+static const char * const libie_fwlog_module_string[] = {
 	"general",
 	"ctrl",
 	"link",
@@ -55,9 +55,9 @@ static const char * const ice_fwlog_module_string[] = {
 };
 
 /* the ordering in this array is important. it matches the ordering of the
- * values in the FW so the index is the same value as in ice_fwlog_level
+ * values in the FW so the index is the same value as in libie_fwlog_level
  */
-static const char * const ice_fwlog_level_string[] = {
+static const char * const libie_fwlog_level_string[] = {
 	"none",
 	"error",
 	"warning",
@@ -65,7 +65,7 @@ static const char * const ice_fwlog_level_string[] = {
 	"verbose",
 };
 
-static const char * const ice_fwlog_log_size[] = {
+static const char * const libie_fwlog_log_size[] = {
 	"128K",
 	"256K",
 	"512K",
@@ -73,43 +73,43 @@ static const char * const ice_fwlog_log_size[] = {
 	"2M",
 };
 
-static bool ice_fwlog_ring_empty(struct ice_fwlog_ring *rings)
+static bool libie_fwlog_ring_empty(struct libie_fwlog_ring *rings)
 {
 	return rings->head == rings->tail;
 }
 
-static void ice_fwlog_ring_increment(u16 *item, u16 size)
+static void libie_fwlog_ring_increment(u16 *item, u16 size)
 {
 	*item = (*item + 1) & (size - 1);
 }
 
-static int ice_fwlog_alloc_ring_buffs(struct ice_fwlog_ring *rings)
+static int libie_fwlog_alloc_ring_buffs(struct libie_fwlog_ring *rings)
 {
 	int i, nr_bytes;
 	u8 *mem;
 
-	nr_bytes = rings->size * ICE_AQ_MAX_BUF_LEN;
+	nr_bytes = rings->size * LIBIE_AQ_MAX_BUF_LEN;
 	mem = vzalloc(nr_bytes);
 	if (!mem)
 		return -ENOMEM;
 
 	for (i = 0; i < rings->size; i++) {
-		struct ice_fwlog_data *ring = &rings->rings[i];
+		struct libie_fwlog_data *ring = &rings->rings[i];
 
-		ring->data_size = ICE_AQ_MAX_BUF_LEN;
+		ring->data_size = LIBIE_AQ_MAX_BUF_LEN;
 		ring->data = mem;
-		mem += ICE_AQ_MAX_BUF_LEN;
+		mem += LIBIE_AQ_MAX_BUF_LEN;
 	}
 
 	return 0;
 }
 
-static void ice_fwlog_free_ring_buffs(struct ice_fwlog_ring *rings)
+static void libie_fwlog_free_ring_buffs(struct libie_fwlog_ring *rings)
 {
 	int i;
 
 	for (i = 0; i < rings->size; i++) {
-		struct ice_fwlog_data *ring = &rings->rings[i];
+		struct libie_fwlog_data *ring = &rings->rings[i];
 
 		/* the first ring is the base memory for the whole range so
 		 * free it
@@ -122,16 +122,16 @@ static void ice_fwlog_free_ring_buffs(struct ice_fwlog_ring *rings)
 	}
 }
 
-#define ICE_FWLOG_INDEX_TO_BYTES(n) ((128 * 1024) << (n))
+#define LIBIE_FWLOG_INDEX_TO_BYTES(n) ((128 * 1024) << (n))
 /**
- * ice_fwlog_realloc_rings - reallocate the FW log rings
+ * libie_fwlog_realloc_rings - reallocate the FW log rings
  * @fwlog: pointer to the fwlog structure
  * @index: the new index to use to allocate memory for the log data
  *
  */
-static void ice_fwlog_realloc_rings(struct ice_fwlog *fwlog, int index)
+static void libie_fwlog_realloc_rings(struct libie_fwlog *fwlog, int index)
 {
-	struct ice_fwlog_ring ring;
+	struct libie_fwlog_ring ring;
 	int status, ring_size;
 
 	/* convert the number of bytes into a number of 4K buffers. externally
@@ -143,7 +143,7 @@ static void ice_fwlog_realloc_rings(struct ice_fwlog *fwlog, int index)
 	 * the user the driver knows that the data is correct and the FW log
 	 * can be correctly parsed by the tools
 	 */
-	ring_size = ICE_FWLOG_INDEX_TO_BYTES(index) / ICE_AQ_MAX_BUF_LEN;
+	ring_size = LIBIE_FWLOG_INDEX_TO_BYTES(index) / LIBIE_AQ_MAX_BUF_LEN;
 	if (ring_size == fwlog->ring.size)
 		return;
 
@@ -157,15 +157,15 @@ static void ice_fwlog_realloc_rings(struct ice_fwlog *fwlog, int index)
 
 	ring.size = ring_size;
 
-	status = ice_fwlog_alloc_ring_buffs(&ring);
+	status = libie_fwlog_alloc_ring_buffs(&ring);
 	if (status) {
 		dev_warn(&fwlog->pdev->dev, "Unable to allocate memory for FW log ring data buffers\n");
-		ice_fwlog_free_ring_buffs(&ring);
+		libie_fwlog_free_ring_buffs(&ring);
 		kfree(ring.rings);
 		return;
 	}
 
-	ice_fwlog_free_ring_buffs(&fwlog->ring);
+	libie_fwlog_free_ring_buffs(&fwlog->ring);
 	kfree(fwlog->ring.rings);
 
 	fwlog->ring.rings = ring.rings;
@@ -176,23 +176,174 @@ static void ice_fwlog_realloc_rings(struct ice_fwlog *fwlog, int index)
 }
 
 /**
- * ice_fwlog_print_module_cfg - print current FW logging module configuration
+ * libie_fwlog_supported - Cached for whether FW supports FW logging or not
+ * @fwlog: pointer to the fwlog structure
+ *
+ * This will always return false if called before libie_init_hw(), so it must be
+ * called after libie_init_hw().
+ */
+static bool libie_fwlog_supported(struct libie_fwlog *fwlog)
+{
+	return fwlog->supported;
+}
+
+/**
+ * libie_aq_fwlog_set - Set FW logging configuration AQ command (0xFF30)
+ * @fwlog: pointer to the fwlog structure
+ * @entries: entries to configure
+ * @num_entries: number of @entries
+ * @options: options from libie_fwlog_cfg->options structure
+ * @log_resolution: logging resolution
+ */
+static int
+libie_aq_fwlog_set(struct libie_fwlog *fwlog,
+		   struct libie_fwlog_module_entry *entries, u16 num_entries,
+		   u16 options, u16 log_resolution)
+{
+	struct libie_aqc_fw_log_cfg_resp *fw_modules;
+	struct libie_aq_desc desc = {0};
+	struct libie_aqc_fw_log *cmd;
+	int status;
+	int i;
+
+	fw_modules = kcalloc(num_entries, sizeof(*fw_modules), GFP_KERNEL);
+	if (!fw_modules)
+		return -ENOMEM;
+
+	for (i = 0; i < num_entries; i++) {
+		fw_modules[i].module_identifier =
+			cpu_to_le16(entries[i].module_id);
+		fw_modules[i].log_level = entries[i].log_level;
+	}
+
+	desc.opcode = cpu_to_le16(libie_aqc_opc_fw_logs_config);
+	desc.flags = cpu_to_le16(LIBIE_AQ_FLAG_SI) |
+		     cpu_to_le16(LIBIE_AQ_FLAG_RD);
+
+	cmd = libie_aq_raw(&desc);
+
+	cmd->cmd_flags = LIBIE_AQC_FW_LOG_CONF_SET_VALID;
+	cmd->ops.cfg.log_resolution = cpu_to_le16(log_resolution);
+	cmd->ops.cfg.mdl_cnt = cpu_to_le16(num_entries);
+
+	if (options & LIBIE_FWLOG_OPTION_ARQ_ENA)
+		cmd->cmd_flags |= LIBIE_AQC_FW_LOG_CONF_AQ_EN;
+	if (options & LIBIE_FWLOG_OPTION_UART_ENA)
+		cmd->cmd_flags |= LIBIE_AQC_FW_LOG_CONF_UART_EN;
+
+	status = fwlog->send_cmd(fwlog->priv, &desc, fw_modules,
+				 sizeof(*fw_modules) * num_entries);
+
+	kfree(fw_modules);
+
+	return status;
+}
+
+/**
+ * libie_fwlog_set - Set the firmware logging settings
+ * @fwlog: pointer to the fwlog structure
+ * @cfg: config used to set firmware logging
+ *
+ * This function should be called whenever the driver needs to set the firmware
+ * logging configuration. It can be called on initialization, reset, or during
+ * runtime.
+ *
+ * If the PF wishes to receive FW logging then it must register via
+ * libie_fwlog_register. Note, that libie_fwlog_register does not need to be called
+ * for init.
+ */
+static int libie_fwlog_set(struct libie_fwlog *fwlog,
+			   struct libie_fwlog_cfg *cfg)
+{
+	if (!libie_fwlog_supported(fwlog))
+		return -EOPNOTSUPP;
+
+	return libie_aq_fwlog_set(fwlog, cfg->module_entries,
+				LIBIE_AQC_FW_LOG_ID_MAX, cfg->options,
+				cfg->log_resolution);
+}
+
+/**
+ * libie_aq_fwlog_register - Register PF for firmware logging events (0xFF31)
+ * @fwlog: pointer to the fwlog structure
+ * @reg: true to register and false to unregister
+ */
+static int libie_aq_fwlog_register(struct libie_fwlog *fwlog, bool reg)
+{
+	struct libie_aq_desc desc = {0};
+	struct libie_aqc_fw_log *cmd;
+
+	desc.opcode = cpu_to_le16(libie_aqc_opc_fw_logs_register);
+	desc.flags = cpu_to_le16(LIBIE_AQ_FLAG_SI);
+	cmd = libie_aq_raw(&desc);
+
+	if (reg)
+		cmd->cmd_flags = LIBIE_AQC_FW_LOG_AQ_REGISTER;
+
+	return fwlog->send_cmd(fwlog->priv, &desc, NULL, 0);
+}
+
+/**
+ * libie_fwlog_register - Register the PF for firmware logging
+ * @fwlog: pointer to the fwlog structure
+ *
+ * After this call the PF will start to receive firmware logging based on the
+ * configuration set in libie_fwlog_set.
+ */
+int libie_fwlog_register(struct libie_fwlog *fwlog)
+{
+	int status;
+
+	if (!libie_fwlog_supported(fwlog))
+		return -EOPNOTSUPP;
+
+	status = libie_aq_fwlog_register(fwlog, true);
+	if (status)
+		dev_dbg(&fwlog->pdev->dev, "Failed to register for firmware logging events over ARQ\n");
+	else
+		fwlog->cfg.options |= LIBIE_FWLOG_OPTION_IS_REGISTERED;
+
+	return status;
+}
+
+/**
+ * libie_fwlog_unregister - Unregister the PF from firmware logging
+ * @fwlog: pointer to the fwlog structure
+ */
+static int libie_fwlog_unregister(struct libie_fwlog *fwlog)
+{
+	int status;
+
+	if (!libie_fwlog_supported(fwlog))
+		return -EOPNOTSUPP;
+
+	status = libie_aq_fwlog_register(fwlog, false);
+	if (status)
+		dev_dbg(&fwlog->pdev->dev, "Failed to unregister from firmware logging events over ARQ\n");
+	else
+		fwlog->cfg.options &= ~LIBIE_FWLOG_OPTION_IS_REGISTERED;
+
+	return status;
+}
+
+/**
+ * libie_fwlog_print_module_cfg - print current FW logging module configuration
  * @cfg: pointer to the fwlog cfg structure
  * @module: module to print
  * @s: the seq file to put data into
  */
 static void
-ice_fwlog_print_module_cfg(struct ice_fwlog_cfg *cfg, int module,
-			   struct seq_file *s)
+libie_fwlog_print_module_cfg(struct libie_fwlog_cfg *cfg, int module,
+			     struct seq_file *s)
 {
-	struct ice_fwlog_module_entry *entry;
+	struct libie_fwlog_module_entry *entry;
 
 	if (module != LIBIE_AQC_FW_LOG_ID_MAX) {
 		entry =	&cfg->module_entries[module];
 
 		seq_printf(s, "\tModule: %s, Log Level: %s\n",
-			   ice_fwlog_module_string[entry->module_id],
-			   ice_fwlog_level_string[entry->log_level]);
+			   libie_fwlog_module_string[entry->module_id],
+			   libie_fwlog_level_string[entry->log_level]);
 	} else {
 		int i;
 
@@ -200,19 +351,19 @@ ice_fwlog_print_module_cfg(struct ice_fwlog_cfg *cfg, int module,
 			entry =	&cfg->module_entries[i];
 
 			seq_printf(s, "\tModule: %s, Log Level: %s\n",
-				   ice_fwlog_module_string[entry->module_id],
-				   ice_fwlog_level_string[entry->log_level]);
+				   libie_fwlog_module_string[entry->module_id],
+				   libie_fwlog_level_string[entry->log_level]);
 		}
 	}
 }
 
-static int ice_find_module_by_dentry(struct dentry **modules, struct dentry *d)
+static int libie_find_module_by_dentry(struct dentry **modules, struct dentry *d)
 {
 	int i, module;
 
 	module = -1;
 	/* find the module based on the dentry */
-	for (i = 0; i < ICE_NR_FW_LOG_MODULES; i++) {
+	for (i = 0; i < LIBIE_NR_FW_LOG_MODULES; i++) {
 		if (d == modules[i]) {
 			module = i;
 			break;
@@ -223,47 +374,47 @@ static int ice_find_module_by_dentry(struct dentry **modules, struct dentry *d)
 }
 
 /**
- * ice_debugfs_module_show - read from 'module' file
+ * libie_debugfs_module_show - read from 'module' file
  * @s: the opened file
  * @v: pointer to the offset
  */
-static int ice_debugfs_module_show(struct seq_file *s, void *v)
+static int libie_debugfs_module_show(struct seq_file *s, void *v)
 {
-	struct ice_fwlog *fwlog = s->private;
+	struct libie_fwlog *fwlog = s->private;
 	const struct file *filp = s->file;
 	struct dentry *dentry;
 	int module;
 
 	dentry = file_dentry(filp);
 
-	module = ice_find_module_by_dentry(fwlog->debugfs_modules, dentry);
+	module = libie_find_module_by_dentry(fwlog->debugfs_modules, dentry);
 	if (module < 0) {
 		dev_info(&fwlog->pdev->dev, "unknown module\n");
 		return -EINVAL;
 	}
 
-	ice_fwlog_print_module_cfg(&fwlog->cfg, module, s);
+	libie_fwlog_print_module_cfg(&fwlog->cfg, module, s);
 
 	return 0;
 }
 
-static int ice_debugfs_module_open(struct inode *inode, struct file *filp)
+static int libie_debugfs_module_open(struct inode *inode, struct file *filp)
 {
-	return single_open(filp, ice_debugfs_module_show, inode->i_private);
+	return single_open(filp, libie_debugfs_module_show, inode->i_private);
 }
 
 /**
- * ice_debugfs_module_write - write into 'module' file
+ * libie_debugfs_module_write - write into 'module' file
  * @filp: the opened file
  * @buf: where to find the user's data
  * @count: the length of the user's data
  * @ppos: file position offset
  */
 static ssize_t
-ice_debugfs_module_write(struct file *filp, const char __user *buf,
-			 size_t count, loff_t *ppos)
+libie_debugfs_module_write(struct file *filp, const char __user *buf,
+			   size_t count, loff_t *ppos)
 {
-	struct ice_fwlog *fwlog = file_inode(filp)->i_private;
+	struct libie_fwlog *fwlog = file_inode(filp)->i_private;
 	struct dentry *dentry = file_dentry(filp);
 	struct device *dev = &fwlog->pdev->dev;
 	char user_val[16], *cmd_buf;
@@ -277,7 +428,7 @@ ice_debugfs_module_write(struct file *filp, const char __user *buf,
 	if (IS_ERR(cmd_buf))
 		return PTR_ERR(cmd_buf);
 
-	module = ice_find_module_by_dentry(fwlog->debugfs_modules, dentry);
+	module = libie_find_module_by_dentry(fwlog->debugfs_modules, dentry);
 	if (module < 0) {
 		dev_info(dev, "unknown module\n");
 		return -EINVAL;
@@ -287,7 +438,7 @@ ice_debugfs_module_write(struct file *filp, const char __user *buf,
 	if (cnt != 1)
 		return -EINVAL;
 
-	log_level = sysfs_match_string(ice_fwlog_level_string, user_val);
+	log_level = sysfs_match_string(libie_fwlog_level_string, user_val);
 	if (log_level < 0) {
 		dev_info(dev, "unknown log level '%s'\n", user_val);
 		return -EINVAL;
@@ -308,26 +459,26 @@ ice_debugfs_module_write(struct file *filp, const char __user *buf,
 	return count;
 }
 
-static const struct file_operations ice_debugfs_module_fops = {
+static const struct file_operations libie_debugfs_module_fops = {
 	.owner = THIS_MODULE,
-	.open  = ice_debugfs_module_open,
+	.open  = libie_debugfs_module_open,
 	.read = seq_read,
 	.release = single_release,
-	.write = ice_debugfs_module_write,
+	.write = libie_debugfs_module_write,
 };
 
 /**
- * ice_debugfs_nr_messages_read - read from 'nr_messages' file
+ * libie_debugfs_nr_messages_read - read from 'nr_messages' file
  * @filp: the opened file
  * @buffer: where to write the data for the user to read
  * @count: the size of the user's buffer
  * @ppos: file position offset
  */
-static ssize_t ice_debugfs_nr_messages_read(struct file *filp,
-					    char __user *buffer, size_t count,
-					    loff_t *ppos)
+static ssize_t libie_debugfs_nr_messages_read(struct file *filp,
+					      char __user *buffer, size_t count,
+					      loff_t *ppos)
 {
-	struct ice_fwlog *fwlog = filp->private_data;
+	struct libie_fwlog *fwlog = filp->private_data;
 	char buff[32] = {};
 
 	snprintf(buff, sizeof(buff), "%d\n",
@@ -337,17 +488,17 @@ static ssize_t ice_debugfs_nr_messages_read(struct file *filp,
 }
 
 /**
- * ice_debugfs_nr_messages_write - write into 'nr_messages' file
+ * libie_debugfs_nr_messages_write - write into 'nr_messages' file
  * @filp: the opened file
  * @buf: where to find the user's data
  * @count: the length of the user's data
  * @ppos: file position offset
  */
 static ssize_t
-ice_debugfs_nr_messages_write(struct file *filp, const char __user *buf,
-			      size_t count, loff_t *ppos)
+libie_debugfs_nr_messages_write(struct file *filp, const char __user *buf,
+				size_t count, loff_t *ppos)
 {
-	struct ice_fwlog *fwlog = filp->private_data;
+	struct libie_fwlog *fwlog = filp->private_data;
 	struct device *dev = &fwlog->pdev->dev;
 	char user_val[8], *cmd_buf;
 	s16 nr_messages;
@@ -382,46 +533,46 @@ ice_debugfs_nr_messages_write(struct file *filp, const char __user *buf,
 	return count;
 }
 
-static const struct file_operations ice_debugfs_nr_messages_fops = {
+static const struct file_operations libie_debugfs_nr_messages_fops = {
 	.owner = THIS_MODULE,
 	.open  = simple_open,
-	.read = ice_debugfs_nr_messages_read,
-	.write = ice_debugfs_nr_messages_write,
+	.read = libie_debugfs_nr_messages_read,
+	.write = libie_debugfs_nr_messages_write,
 };
 
 /**
- * ice_debugfs_enable_read - read from 'enable' file
+ * libie_debugfs_enable_read - read from 'enable' file
  * @filp: the opened file
  * @buffer: where to write the data for the user to read
  * @count: the size of the user's buffer
  * @ppos: file position offset
  */
-static ssize_t ice_debugfs_enable_read(struct file *filp,
-				       char __user *buffer, size_t count,
-				       loff_t *ppos)
+static ssize_t libie_debugfs_enable_read(struct file *filp,
+					 char __user *buffer, size_t count,
+					 loff_t *ppos)
 {
-	struct ice_fwlog *fwlog = filp->private_data;
+	struct libie_fwlog *fwlog = filp->private_data;
 	char buff[32] = {};
 
 	snprintf(buff, sizeof(buff), "%u\n",
 		 (u16)(fwlog->cfg.options &
-		 ICE_FWLOG_OPTION_IS_REGISTERED) >> 3);
+		 LIBIE_FWLOG_OPTION_IS_REGISTERED) >> 3);
 
 	return simple_read_from_buffer(buffer, count, ppos, buff, strlen(buff));
 }
 
 /**
- * ice_debugfs_enable_write - write into 'enable' file
+ * libie_debugfs_enable_write - write into 'enable' file
  * @filp: the opened file
  * @buf: where to find the user's data
  * @count: the length of the user's data
  * @ppos: file position offset
  */
 static ssize_t
-ice_debugfs_enable_write(struct file *filp, const char __user *buf,
-			 size_t count, loff_t *ppos)
+libie_debugfs_enable_write(struct file *filp, const char __user *buf,
+			   size_t count, loff_t *ppos)
 {
-	struct ice_fwlog *fwlog = filp->private_data;
+	struct libie_fwlog *fwlog = filp->private_data;
 	char user_val[8], *cmd_buf;
 	bool enable;
 	ssize_t ret;
@@ -443,18 +594,18 @@ ice_debugfs_enable_write(struct file *filp, const char __user *buf,
 		goto enable_write_error;
 
 	if (enable)
-		fwlog->cfg.options |= ICE_FWLOG_OPTION_ARQ_ENA;
+		fwlog->cfg.options |= LIBIE_FWLOG_OPTION_ARQ_ENA;
 	else
-		fwlog->cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
+		fwlog->cfg.options &= ~LIBIE_FWLOG_OPTION_ARQ_ENA;
 
-	ret = ice_fwlog_set(fwlog, &fwlog->cfg);
+	ret = libie_fwlog_set(fwlog, &fwlog->cfg);
 	if (ret)
 		goto enable_write_error;
 
 	if (enable)
-		ret = ice_fwlog_register(fwlog);
+		ret = libie_fwlog_register(fwlog);
 	else
-		ret = ice_fwlog_unregister(fwlog);
+		ret = libie_fwlog_unregister(fwlog);
 
 	if (ret)
 		goto enable_write_error;
@@ -475,46 +626,46 @@ ice_debugfs_enable_write(struct file *filp, const char __user *buf,
 	return ret;
 }
 
-static const struct file_operations ice_debugfs_enable_fops = {
+static const struct file_operations libie_debugfs_enable_fops = {
 	.owner = THIS_MODULE,
 	.open  = simple_open,
-	.read = ice_debugfs_enable_read,
-	.write = ice_debugfs_enable_write,
+	.read = libie_debugfs_enable_read,
+	.write = libie_debugfs_enable_write,
 };
 
 /**
- * ice_debugfs_log_size_read - read from 'log_size' file
+ * libie_debugfs_log_size_read - read from 'log_size' file
  * @filp: the opened file
  * @buffer: where to write the data for the user to read
  * @count: the size of the user's buffer
  * @ppos: file position offset
  */
-static ssize_t ice_debugfs_log_size_read(struct file *filp,
-					 char __user *buffer, size_t count,
-					 loff_t *ppos)
+static ssize_t libie_debugfs_log_size_read(struct file *filp,
+					   char __user *buffer, size_t count,
+					   loff_t *ppos)
 {
-	struct ice_fwlog *fwlog = filp->private_data;
+	struct libie_fwlog *fwlog = filp->private_data;
 	char buff[32] = {};
 	int index;
 
 	index = fwlog->ring.index;
-	snprintf(buff, sizeof(buff), "%s\n", ice_fwlog_log_size[index]);
+	snprintf(buff, sizeof(buff), "%s\n", libie_fwlog_log_size[index]);
 
 	return simple_read_from_buffer(buffer, count, ppos, buff, strlen(buff));
 }
 
 /**
- * ice_debugfs_log_size_write - write into 'log_size' file
+ * libie_debugfs_log_size_write - write into 'log_size' file
  * @filp: the opened file
  * @buf: where to find the user's data
  * @count: the length of the user's data
  * @ppos: file position offset
  */
 static ssize_t
-ice_debugfs_log_size_write(struct file *filp, const char __user *buf,
-			   size_t count, loff_t *ppos)
+libie_debugfs_log_size_write(struct file *filp, const char __user *buf,
+			     size_t count, loff_t *ppos)
 {
-	struct ice_fwlog *fwlog = filp->private_data;
+	struct libie_fwlog *fwlog = filp->private_data;
 	struct device *dev = &fwlog->pdev->dev;
 	char user_val[8], *cmd_buf;
 	ssize_t ret;
@@ -532,20 +683,20 @@ ice_debugfs_log_size_write(struct file *filp, const char __user *buf,
 	if (ret != 1)
 		return -EINVAL;
 
-	index = sysfs_match_string(ice_fwlog_log_size, user_val);
+	index = sysfs_match_string(libie_fwlog_log_size, user_val);
 	if (index < 0) {
 		dev_info(dev, "Invalid log size '%s'. The value must be one of 128K, 256K, 512K, 1M, 2M\n",
 			 user_val);
 		ret = -EINVAL;
 		goto log_size_write_error;
-	} else if (fwlog->cfg.options & ICE_FWLOG_OPTION_IS_REGISTERED) {
+	} else if (fwlog->cfg.options & LIBIE_FWLOG_OPTION_IS_REGISTERED) {
 		dev_info(dev, "FW logging is currently running. Please disable FW logging to change log_size\n");
 		ret = -EINVAL;
 		goto log_size_write_error;
 	}
 
 	/* free all the buffers and the tracking info and resize */
-	ice_fwlog_realloc_rings(fwlog, index);
+	libie_fwlog_realloc_rings(fwlog, index);
 
 	/* if we get here, nothing went wrong; return count since we didn't
 	 * really write anything
@@ -563,32 +714,32 @@ ice_debugfs_log_size_write(struct file *filp, const char __user *buf,
 	return ret;
 }
 
-static const struct file_operations ice_debugfs_log_size_fops = {
+static const struct file_operations libie_debugfs_log_size_fops = {
 	.owner = THIS_MODULE,
 	.open  = simple_open,
-	.read = ice_debugfs_log_size_read,
-	.write = ice_debugfs_log_size_write,
+	.read = libie_debugfs_log_size_read,
+	.write = libie_debugfs_log_size_write,
 };
 
 /**
- * ice_debugfs_data_read - read from 'data' file
+ * libie_debugfs_data_read - read from 'data' file
  * @filp: the opened file
  * @buffer: where to write the data for the user to read
  * @count: the size of the user's buffer
  * @ppos: file position offset
  */
-static ssize_t ice_debugfs_data_read(struct file *filp, char __user *buffer,
-				     size_t count, loff_t *ppos)
+static ssize_t libie_debugfs_data_read(struct file *filp, char __user *buffer,
+				       size_t count, loff_t *ppos)
 {
-	struct ice_fwlog *fwlog = filp->private_data;
+	struct libie_fwlog *fwlog = filp->private_data;
 	int data_copied = 0;
 	bool done = false;
 
-	if (ice_fwlog_ring_empty(&fwlog->ring))
+	if (libie_fwlog_ring_empty(&fwlog->ring))
 		return 0;
 
-	while (!ice_fwlog_ring_empty(&fwlog->ring) && !done) {
-		struct ice_fwlog_data *log;
+	while (!libie_fwlog_ring_empty(&fwlog->ring) && !done) {
+		struct libie_fwlog_data *log;
 		u16 cur_buf_len;
 
 		log = &fwlog->ring.rings[fwlog->ring.head];
@@ -610,24 +761,24 @@ static ssize_t ice_debugfs_data_read(struct file *filp, char __user *buffer,
 		buffer += cur_buf_len;
 		count -= cur_buf_len;
 		*ppos += cur_buf_len;
-		ice_fwlog_ring_increment(&fwlog->ring.head, fwlog->ring.size);
+		libie_fwlog_ring_increment(&fwlog->ring.head, fwlog->ring.size);
 	}
 
 	return data_copied;
 }
 
 /**
- * ice_debugfs_data_write - write into 'data' file
+ * libie_debugfs_data_write - write into 'data' file
  * @filp: the opened file
  * @buf: where to find the user's data
  * @count: the length of the user's data
  * @ppos: file position offset
  */
 static ssize_t
-ice_debugfs_data_write(struct file *filp, const char __user *buf, size_t count,
-		       loff_t *ppos)
+libie_debugfs_data_write(struct file *filp, const char __user *buf, size_t count,
+			 loff_t *ppos)
 {
-	struct ice_fwlog *fwlog = filp->private_data;
+	struct libie_fwlog *fwlog = filp->private_data;
 	struct device *dev = &fwlog->pdev->dev;
 	ssize_t ret;
 
@@ -638,7 +789,7 @@ ice_debugfs_data_write(struct file *filp, const char __user *buf, size_t count,
 	/* any value is allowed to clear the buffer so no need to even look at
 	 * what the value is
 	 */
-	if (!(fwlog->cfg.options & ICE_FWLOG_OPTION_IS_REGISTERED)) {
+	if (!(fwlog->cfg.options & LIBIE_FWLOG_OPTION_IS_REGISTERED)) {
 		fwlog->ring.head = 0;
 		fwlog->ring.tail = 0;
 	} else {
@@ -663,19 +814,20 @@ ice_debugfs_data_write(struct file *filp, const char __user *buf, size_t count,
 	return ret;
 }
 
-static const struct file_operations ice_debugfs_data_fops = {
+static const struct file_operations libie_debugfs_data_fops = {
 	.owner = THIS_MODULE,
 	.open  = simple_open,
-	.read = ice_debugfs_data_read,
-	.write = ice_debugfs_data_write,
+	.read = libie_debugfs_data_read,
+	.write = libie_debugfs_data_write,
 };
 
 /**
- * ice_debugfs_fwlog_init - setup the debugfs directory
+ * libie_debugfs_fwlog_init - setup the debugfs directory
  * @fwlog: pointer to the fwlog structure
  * @root: debugfs root entry on which fwlog director will be registered
  */
-static void ice_debugfs_fwlog_init(struct ice_fwlog *fwlog, struct dentry *root)
+static void libie_debugfs_fwlog_init(struct libie_fwlog *fwlog,
+				     struct dentry *root)
 {
 	struct dentry *fw_modules_dir;
 	struct dentry **fw_modules;
@@ -684,7 +836,7 @@ static void ice_debugfs_fwlog_init(struct ice_fwlog *fwlog, struct dentry *root)
 	/* allocate space for this first because if it fails then we don't
 	 * need to unwind
 	 */
-	fw_modules = kcalloc(ICE_NR_FW_LOG_MODULES, sizeof(*fw_modules),
+	fw_modules = kcalloc(LIBIE_NR_FW_LOG_MODULES, sizeof(*fw_modules),
 			     GFP_KERNEL);
 	if (!fw_modules)
 		return;
@@ -697,27 +849,27 @@ static void ice_debugfs_fwlog_init(struct ice_fwlog *fwlog, struct dentry *root)
 	if (IS_ERR(fw_modules_dir))
 		goto err_create_module_files;
 
-	for (i = 0; i < ICE_NR_FW_LOG_MODULES; i++) {
-		fw_modules[i] = debugfs_create_file(ice_fwlog_module_string[i],
+	for (i = 0; i < LIBIE_NR_FW_LOG_MODULES; i++) {
+		fw_modules[i] = debugfs_create_file(libie_fwlog_module_string[i],
 						    0600, fw_modules_dir, fwlog,
-						    &ice_debugfs_module_fops);
+						    &libie_debugfs_module_fops);
 		if (IS_ERR(fw_modules[i]))
 			goto err_create_module_files;
 	}
 
 	debugfs_create_file("nr_messages", 0600, fwlog->debugfs, fwlog,
-			    &ice_debugfs_nr_messages_fops);
+			    &libie_debugfs_nr_messages_fops);
 
 	fwlog->debugfs_modules = fw_modules;
 
 	debugfs_create_file("enable", 0600, fwlog->debugfs, fwlog,
-			    &ice_debugfs_enable_fops);
+			    &libie_debugfs_enable_fops);
 
 	debugfs_create_file("log_size", 0600, fwlog->debugfs, fwlog,
-			    &ice_debugfs_log_size_fops);
+			    &libie_debugfs_log_size_fops);
 
 	debugfs_create_file("data", 0600, fwlog->debugfs, fwlog,
-			    &ice_debugfs_data_fops);
+			    &libie_debugfs_data_fops);
 
 	return;
 
@@ -726,7 +878,7 @@ static void ice_debugfs_fwlog_init(struct ice_fwlog *fwlog, struct dentry *root)
 	kfree(fw_modules);
 }
 
-static bool ice_fwlog_ring_full(struct ice_fwlog_ring *rings)
+static bool libie_fwlog_ring_full(struct libie_fwlog_ring *rings)
 {
 	u16 head, tail;
 
@@ -742,27 +894,16 @@ static bool ice_fwlog_ring_full(struct ice_fwlog_ring *rings)
 }
 
 /**
- * ice_fwlog_supported - Cached for whether FW supports FW logging or not
- * @fwlog: pointer to the fwlog structure
- *
- * This will always return false if called before ice_init_hw(), so it must be
- * called after ice_init_hw().
- */
-static bool ice_fwlog_supported(struct ice_fwlog *fwlog)
-{
-	return fwlog->supported;
-}
-
-/**
- * ice_aq_fwlog_get - Get the current firmware logging configuration (0xFF32)
+ * libie_aq_fwlog_get - Get the current firmware logging configuration (0xFF32)
  * @fwlog: pointer to the fwlog structure
  * @cfg: firmware logging configuration to populate
  */
-static int ice_aq_fwlog_get(struct ice_fwlog *fwlog, struct ice_fwlog_cfg *cfg)
+static int libie_aq_fwlog_get(struct libie_fwlog *fwlog,
+			      struct libie_fwlog_cfg *cfg)
 {
 	struct libie_aqc_fw_log_cfg_resp *fw_modules;
+	struct libie_aq_desc desc = {0};
 	struct libie_aqc_fw_log *cmd;
-	struct libie_aq_desc desc;
 	u16 module_id_cnt;
 	int status;
 	void *buf;
@@ -770,16 +911,17 @@ static int ice_aq_fwlog_get(struct ice_fwlog *fwlog, struct ice_fwlog_cfg *cfg)
 
 	memset(cfg, 0, sizeof(*cfg));
 
-	buf = kzalloc(ICE_AQ_MAX_BUF_LEN, GFP_KERNEL);
+	buf = kzalloc(LIBIE_AQ_MAX_BUF_LEN, GFP_KERNEL);
 	if (!buf)
 		return -ENOMEM;
 
-	ice_fill_dflt_direct_cmd_desc(&desc, libie_aqc_opc_fw_logs_query);
+	desc.opcode = cpu_to_le16(libie_aqc_opc_fw_logs_query);
+	desc.flags = cpu_to_le16(LIBIE_AQ_FLAG_SI);
 	cmd = libie_aq_raw(&desc);
 
 	cmd->cmd_flags = LIBIE_AQC_FW_LOG_AQ_QUERY;
 
-	status = fwlog->send_cmd(fwlog->priv, &desc, buf, ICE_AQ_MAX_BUF_LEN);
+	status = fwlog->send_cmd(fwlog->priv, &desc, buf, LIBIE_AQ_MAX_BUF_LEN);
 	if (status) {
 		dev_dbg(&fwlog->pdev->dev, "Failed to get FW log configuration\n");
 		goto status_out;
@@ -796,11 +938,11 @@ static int ice_aq_fwlog_get(struct ice_fwlog *fwlog, struct ice_fwlog_cfg *cfg)
 
 	cfg->log_resolution = le16_to_cpu(cmd->ops.cfg.log_resolution);
 	if (cmd->cmd_flags & LIBIE_AQC_FW_LOG_CONF_AQ_EN)
-		cfg->options |= ICE_FWLOG_OPTION_ARQ_ENA;
+		cfg->options |= LIBIE_FWLOG_OPTION_ARQ_ENA;
 	if (cmd->cmd_flags & LIBIE_AQC_FW_LOG_CONF_UART_EN)
-		cfg->options |= ICE_FWLOG_OPTION_UART_ENA;
+		cfg->options |= LIBIE_FWLOG_OPTION_UART_ENA;
 	if (cmd->cmd_flags & LIBIE_AQC_FW_LOG_QUERY_REGISTERED)
-		cfg->options |= ICE_FWLOG_OPTION_IS_REGISTERED;
+		cfg->options |= LIBIE_FWLOG_OPTION_IS_REGISTERED;
 
 	fw_modules = (struct libie_aqc_fw_log_cfg_resp *)buf;
 
@@ -818,18 +960,18 @@ static int ice_aq_fwlog_get(struct ice_fwlog *fwlog, struct ice_fwlog_cfg *cfg)
 }
 
 /**
- * ice_fwlog_set_supported - Set if FW logging is supported by FW
+ * libie_fwlog_set_supported - Set if FW logging is supported by FW
  * @fwlog: pointer to the fwlog structure
  *
- * If FW returns success to the ice_aq_fwlog_get call then it supports FW
+ * If FW returns success to the libie_aq_fwlog_get call then it supports FW
  * logging, else it doesn't. Set the fwlog_supported flag accordingly.
  *
  * This function is only meant to be called during driver init to determine if
  * the FW support FW logging.
  */
-static void ice_fwlog_set_supported(struct ice_fwlog *fwlog)
+static void libie_fwlog_set_supported(struct libie_fwlog *fwlog)
 {
-	struct ice_fwlog_cfg *cfg;
+	struct libie_fwlog_cfg *cfg;
 	int status;
 
 	fwlog->supported = false;
@@ -838,9 +980,9 @@ static void ice_fwlog_set_supported(struct ice_fwlog *fwlog)
 	if (!cfg)
 		return;
 
-	status = ice_aq_fwlog_get(fwlog, cfg);
+	status = libie_aq_fwlog_get(fwlog, cfg);
 	if (status)
-		dev_dbg(&fwlog->pdev->dev, "ice_aq_fwlog_get failed, FW logging is not supported on this version of FW, status %d\n",
+		dev_dbg(&fwlog->pdev->dev, "libie_aq_fwlog_get failed, FW logging is not supported on this version of FW, status %d\n",
 			status);
 	else
 		fwlog->supported = true;
@@ -849,28 +991,28 @@ static void ice_fwlog_set_supported(struct ice_fwlog *fwlog)
 }
 
 /**
- * ice_fwlog_init - Initialize FW logging configuration
+ * libie_fwlog_init - Initialize FW logging configuration
  * @fwlog: pointer to the fwlog structure
  * @api: api structure to init fwlog
  *
  * This function should be called on driver initialization during
- * ice_init_hw().
+ * libie_init_hw().
  */
-int ice_fwlog_init(struct ice_fwlog *fwlog, struct ice_fwlog_api *api)
+int libie_fwlog_init(struct libie_fwlog *fwlog, struct libie_fwlog_api *api)
 {
 
 	fwlog->api = *api;
-	ice_fwlog_set_supported(fwlog);
+	libie_fwlog_set_supported(fwlog);
 
-	if (ice_fwlog_supported(fwlog)) {
+	if (libie_fwlog_supported(fwlog)) {
 		int status;
 
 		/* read the current config from the FW and store it */
-		status = ice_aq_fwlog_get(fwlog, &fwlog->cfg);
+		status = libie_aq_fwlog_get(fwlog, &fwlog->cfg);
 		if (status)
 			return status;
 
-		fwlog->ring.rings = kcalloc(ICE_FWLOG_RING_SIZE_DFLT,
+		fwlog->ring.rings = kcalloc(LIBIE_FWLOG_RING_SIZE_DFLT,
 					    sizeof(*fwlog->ring.rings),
 					    GFP_KERNEL);
 		if (!fwlog->ring.rings) {
@@ -878,18 +1020,18 @@ int ice_fwlog_init(struct ice_fwlog *fwlog, struct ice_fwlog_api *api)
 			return -ENOMEM;
 		}
 
-		fwlog->ring.size = ICE_FWLOG_RING_SIZE_DFLT;
-		fwlog->ring.index = ICE_FWLOG_RING_SIZE_INDEX_DFLT;
+		fwlog->ring.size = LIBIE_FWLOG_RING_SIZE_DFLT;
+		fwlog->ring.index = LIBIE_FWLOG_RING_SIZE_INDEX_DFLT;
 
-		status = ice_fwlog_alloc_ring_buffs(&fwlog->ring);
+		status = libie_fwlog_alloc_ring_buffs(&fwlog->ring);
 		if (status) {
 			dev_warn(&fwlog->pdev->dev, "Unable to allocate memory for FW log ring data buffers\n");
-			ice_fwlog_free_ring_buffs(&fwlog->ring);
+			libie_fwlog_free_ring_buffs(&fwlog->ring);
 			kfree(fwlog->ring.rings);
 			return status;
 		}
 
-		ice_debugfs_fwlog_init(fwlog, api->debugfs_root);
+		libie_debugfs_fwlog_init(fwlog, api->debugfs_root);
 	} else {
 		dev_warn(&fwlog->pdev->dev, "FW logging is not supported in this NVM image. Please update the NVM to get FW log support\n");
 	}
@@ -898,20 +1040,20 @@ int ice_fwlog_init(struct ice_fwlog *fwlog, struct ice_fwlog_api *api)
 }
 
 /**
- * ice_fwlog_deinit - unroll FW logging configuration
+ * libie_fwlog_deinit - unroll FW logging configuration
  * @fwlog: pointer to the fwlog structure
  *
- * This function should be called in ice_deinit_hw().
+ * This function should be called in libie_deinit_hw().
  */
-void ice_fwlog_deinit(struct ice_fwlog *fwlog)
+void libie_fwlog_deinit(struct libie_fwlog *fwlog)
 {
 	int status;
 
 	/* make sure FW logging is disabled to not put the FW in a weird state
 	 * for the next driver load
 	 */
-	fwlog->cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
-	status = ice_fwlog_set(fwlog, &fwlog->cfg);
+	fwlog->cfg.options &= ~LIBIE_FWLOG_OPTION_ARQ_ENA;
+	status = libie_fwlog_set(fwlog, &fwlog->cfg);
 	if (status)
 		dev_warn(&fwlog->pdev->dev, "Unable to turn off FW logging, status: %d\n",
 			 status);
@@ -920,162 +1062,26 @@ void ice_fwlog_deinit(struct ice_fwlog *fwlog)
 
 	fwlog->debugfs_modules = NULL;
 
-	status = ice_fwlog_unregister(fwlog);
+	status = libie_fwlog_unregister(fwlog);
 	if (status)
 		dev_warn(&fwlog->pdev->dev, "Unable to unregister FW logging, status: %d\n",
 			 status);
 
 	if (fwlog->ring.rings) {
-		ice_fwlog_free_ring_buffs(&fwlog->ring);
+		libie_fwlog_free_ring_buffs(&fwlog->ring);
 		kfree(fwlog->ring.rings);
 	}
 }
 
 /**
- * ice_aq_fwlog_set - Set FW logging configuration AQ command (0xFF30)
- * @fwlog: pointer to the fwlog structure
- * @entries: entries to configure
- * @num_entries: number of @entries
- * @options: options from ice_fwlog_cfg->options structure
- * @log_resolution: logging resolution
- */
-static int
-ice_aq_fwlog_set(struct ice_fwlog *fwlog,
-		 struct ice_fwlog_module_entry *entries, u16 num_entries,
-		 u16 options, u16 log_resolution)
-{
-	struct libie_aqc_fw_log_cfg_resp *fw_modules;
-	struct libie_aqc_fw_log *cmd;
-	struct libie_aq_desc desc;
-	int status;
-	int i;
-
-	fw_modules = kcalloc(num_entries, sizeof(*fw_modules), GFP_KERNEL);
-	if (!fw_modules)
-		return -ENOMEM;
-
-	for (i = 0; i < num_entries; i++) {
-		fw_modules[i].module_identifier =
-			cpu_to_le16(entries[i].module_id);
-		fw_modules[i].log_level = entries[i].log_level;
-	}
-
-	ice_fill_dflt_direct_cmd_desc(&desc, libie_aqc_opc_fw_logs_config);
-	desc.flags |= cpu_to_le16(LIBIE_AQ_FLAG_RD);
-
-	cmd = libie_aq_raw(&desc);
-
-	cmd->cmd_flags = LIBIE_AQC_FW_LOG_CONF_SET_VALID;
-	cmd->ops.cfg.log_resolution = cpu_to_le16(log_resolution);
-	cmd->ops.cfg.mdl_cnt = cpu_to_le16(num_entries);
-
-	if (options & ICE_FWLOG_OPTION_ARQ_ENA)
-		cmd->cmd_flags |= LIBIE_AQC_FW_LOG_CONF_AQ_EN;
-	if (options & ICE_FWLOG_OPTION_UART_ENA)
-		cmd->cmd_flags |= LIBIE_AQC_FW_LOG_CONF_UART_EN;
-
-	status = fwlog->send_cmd(fwlog->priv, &desc, fw_modules,
-				 sizeof(*fw_modules) * num_entries);
-
-	kfree(fw_modules);
-
-	return status;
-}
-
-/**
- * ice_fwlog_set - Set the firmware logging settings
- * @fwlog: pointer to the fwlog structure
- * @cfg: config used to set firmware logging
- *
- * This function should be called whenever the driver needs to set the firmware
- * logging configuration. It can be called on initialization, reset, or during
- * runtime.
- *
- * If the PF wishes to receive FW logging then it must register via
- * ice_fwlog_register. Note, that ice_fwlog_register does not need to be called
- * for init.
- */
-int ice_fwlog_set(struct ice_fwlog *fwlog, struct ice_fwlog_cfg *cfg)
-{
-	if (!ice_fwlog_supported(fwlog))
-		return -EOPNOTSUPP;
-
-	return ice_aq_fwlog_set(fwlog, cfg->module_entries,
-				LIBIE_AQC_FW_LOG_ID_MAX, cfg->options,
-				cfg->log_resolution);
-}
-
-/**
- * ice_aq_fwlog_register - Register PF for firmware logging events (0xFF31)
- * @fwlog: pointer to the fwlog structure
- * @reg: true to register and false to unregister
- */
-static int ice_aq_fwlog_register(struct ice_fwlog *fwlog, bool reg)
-{
-	struct libie_aqc_fw_log *cmd;
-	struct libie_aq_desc desc;
-
-	ice_fill_dflt_direct_cmd_desc(&desc, libie_aqc_opc_fw_logs_register);
-	cmd = libie_aq_raw(&desc);
-
-	if (reg)
-		cmd->cmd_flags = LIBIE_AQC_FW_LOG_AQ_REGISTER;
-
-	return fwlog->send_cmd(fwlog->priv, &desc, NULL, 0);
-}
-
-/**
- * ice_fwlog_register - Register the PF for firmware logging
- * @fwlog: pointer to the fwlog structure
- *
- * After this call the PF will start to receive firmware logging based on the
- * configuration set in ice_fwlog_set.
- */
-int ice_fwlog_register(struct ice_fwlog *fwlog)
-{
-	int status;
-
-	if (!ice_fwlog_supported(fwlog))
-		return -EOPNOTSUPP;
-
-	status = ice_aq_fwlog_register(fwlog, true);
-	if (status)
-		dev_dbg(&fwlog->pdev->dev, "Failed to register for firmware logging events over ARQ\n");
-	else
-		fwlog->cfg.options |= ICE_FWLOG_OPTION_IS_REGISTERED;
-
-	return status;
-}
-
-/**
- * ice_fwlog_unregister - Unregister the PF from firmware logging
- * @fwlog: pointer to the fwlog structure
- */
-int ice_fwlog_unregister(struct ice_fwlog *fwlog)
-{
-	int status;
-
-	if (!ice_fwlog_supported(fwlog))
-		return -EOPNOTSUPP;
-
-	status = ice_aq_fwlog_register(fwlog, false);
-	if (status)
-		dev_dbg(&fwlog->pdev->dev, "Failed to unregister from firmware logging events over ARQ\n");
-	else
-		fwlog->cfg.options &= ~ICE_FWLOG_OPTION_IS_REGISTERED;
-
-	return status;
-}
-
-/**
- * ice_get_fwlog_data - copy the FW log data from ARQ event
+ * libie_get_fwlog_data - copy the FW log data from ARQ event
  * @fwlog: fwlog that the FW log event is associated with
  * @buf: event buffer pointer
  * @len: len of event descriptor
  */
-void ice_get_fwlog_data(struct ice_fwlog *fwlog, u8 *buf, u16 len)
+void libie_get_fwlog_data(struct libie_fwlog *fwlog, u8 *buf, u16 len)
 {
-	struct ice_fwlog_data *log;
+	struct libie_fwlog_data *log;
 
 	log = &fwlog->ring.rings[fwlog->ring.tail];
 
@@ -1083,10 +1089,10 @@ void ice_get_fwlog_data(struct ice_fwlog *fwlog, u8 *buf, u16 len)
 	log->data_size = len;
 
 	memcpy(log->data, buf, log->data_size);
-	ice_fwlog_ring_increment(&fwlog->ring.tail, fwlog->ring.size);
+	libie_fwlog_ring_increment(&fwlog->ring.tail, fwlog->ring.size);
 
-	if (ice_fwlog_ring_full(&fwlog->ring)) {
+	if (libie_fwlog_ring_full(&fwlog->ring)) {
 		/* the rings are full so bump the head to create room */
-		ice_fwlog_ring_increment(&fwlog->ring.head, fwlog->ring.size);
+		libie_fwlog_ring_increment(&fwlog->ring.head, fwlog->ring.size);
 	}
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.h b/drivers/net/ethernet/intel/ice/ice_fwlog.h
index d5868b9e4de6..3698759c8ebb 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.h
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.h
@@ -1,77 +1,75 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 /* Copyright (C) 2022, Intel Corporation. */
 
-#ifndef _ICE_FWLOG_H_
-#define _ICE_FWLOG_H_
+#ifndef _LIBIE_FWLOG_H_
+#define _LIBIE_FWLOG_H_
 #include "ice_adminq_cmd.h"
 
-struct ice_hw;
-
 /* Only a single log level should be set and all log levels under the set value
- * are enabled, e.g. if log level is set to ICE_FW_LOG_LEVEL_VERBOSE, then all
- * other log levels are included (except ICE_FW_LOG_LEVEL_NONE)
+ * are enabled, e.g. if log level is set to LIBIE_FW_LOG_LEVEL_VERBOSE, then all
+ * other log levels are included (except LIBIE_FW_LOG_LEVEL_NONE)
  */
-enum ice_fwlog_level {
-	ICE_FWLOG_LEVEL_NONE = 0,
-	ICE_FWLOG_LEVEL_ERROR = 1,
-	ICE_FWLOG_LEVEL_WARNING = 2,
-	ICE_FWLOG_LEVEL_NORMAL = 3,
-	ICE_FWLOG_LEVEL_VERBOSE = 4,
-	ICE_FWLOG_LEVEL_INVALID, /* all values >= this entry are invalid */
+enum libie_fwlog_level {
+	LIBIE_FWLOG_LEVEL_NONE = 0,
+	LIBIE_FWLOG_LEVEL_ERROR = 1,
+	LIBIE_FWLOG_LEVEL_WARNING = 2,
+	LIBIE_FWLOG_LEVEL_NORMAL = 3,
+	LIBIE_FWLOG_LEVEL_VERBOSE = 4,
+	LIBIE_FWLOG_LEVEL_INVALID, /* all values >= this entry are invalid */
 };
 
-struct ice_fwlog_module_entry {
+struct libie_fwlog_module_entry {
 	/* module ID for the corresponding firmware logging event */
 	u16 module_id;
 	/* verbosity level for the module_id */
 	u8 log_level;
 };
 
-struct ice_fwlog_cfg {
+struct libie_fwlog_cfg {
 	/* list of modules for configuring log level */
-	struct ice_fwlog_module_entry module_entries[LIBIE_AQC_FW_LOG_ID_MAX];
+	struct libie_fwlog_module_entry module_entries[LIBIE_AQC_FW_LOG_ID_MAX];
 	/* options used to configure firmware logging */
 	u16 options;
-#define ICE_FWLOG_OPTION_ARQ_ENA		BIT(0)
-#define ICE_FWLOG_OPTION_UART_ENA		BIT(1)
-	/* set before calling ice_fwlog_init() so the PF registers for firmware
-	 * logging on initialization
+#define LIBIE_FWLOG_OPTION_ARQ_ENA		BIT(0)
+#define LIBIE_FWLOG_OPTION_UART_ENA		BIT(1)
+	/* set before calling libie_fwlog_init() so the PF registers for
+	 * firmware logging on initialization
 	 */
-#define ICE_FWLOG_OPTION_REGISTER_ON_INIT	BIT(2)
-	/* set in the ice_aq_fwlog_get() response if the PF is registered for FW
-	 * logging events over ARQ
+#define LIBIE_FWLOG_OPTION_REGISTER_ON_INIT	BIT(2)
+	/* set in the libie_aq_fwlog_get() response if the PF is registered for
+	 * FW logging events over ARQ
 	 */
-#define ICE_FWLOG_OPTION_IS_REGISTERED		BIT(3)
+#define LIBIE_FWLOG_OPTION_IS_REGISTERED	BIT(3)
 
 	/* minimum number of log events sent per Admin Receive Queue event */
 	u16 log_resolution;
 };
 
-struct ice_fwlog_data {
+struct libie_fwlog_data {
 	u16 data_size;
 	u8 *data;
 };
 
-struct ice_fwlog_ring {
-	struct ice_fwlog_data *rings;
+struct libie_fwlog_ring {
+	struct libie_fwlog_data *rings;
 	u16 index;
 	u16 size;
 	u16 head;
 	u16 tail;
 };
 
-#define ICE_FWLOG_RING_SIZE_INDEX_DFLT 3
-#define ICE_FWLOG_RING_SIZE_DFLT 256
-#define ICE_FWLOG_RING_SIZE_MAX 512
+#define LIBIE_FWLOG_RING_SIZE_INDEX_DFLT 3
+#define LIBIE_FWLOG_RING_SIZE_DFLT 256
+#define LIBIE_FWLOG_RING_SIZE_MAX 512
 
-struct ice_fwlog {
-	struct ice_fwlog_cfg cfg;
+struct libie_fwlog {
+	struct libie_fwlog_cfg cfg;
 	bool supported; /* does hardware support FW logging? */
-	struct ice_fwlog_ring ring;
+	struct libie_fwlog_ring ring;
 	struct dentry *debugfs;
 	/* keep track of all the dentrys for FW log modules */
 	struct dentry **debugfs_modules;
-	struct_group_tagged(ice_fwlog_api, api,
+	struct_group_tagged(libie_fwlog_api, api,
 		struct pci_dev *pdev;
 		int (*send_cmd)(void *, struct libie_aq_desc *, void *, u16);
 		void *priv;
@@ -79,10 +77,8 @@ struct ice_fwlog {
 	);
 };
 
-int ice_fwlog_init(struct ice_fwlog *fwlog, struct ice_fwlog_api *api);
-void ice_fwlog_deinit(struct ice_fwlog *fwlog);
-int ice_fwlog_set(struct ice_fwlog *fwlog, struct ice_fwlog_cfg *cfg);
-int ice_fwlog_register(struct ice_fwlog *fwlog);
-int ice_fwlog_unregister(struct ice_fwlog *fwlog);
-void ice_get_fwlog_data(struct ice_fwlog *fwlog, u8 *buf, u16 len);
-#endif /* _ICE_FWLOG_H_ */
+int libie_fwlog_init(struct libie_fwlog *fwlog, struct libie_fwlog_api *api);
+void libie_fwlog_deinit(struct libie_fwlog *fwlog);
+int libie_fwlog_register(struct libie_fwlog *fwlog);
+void libie_get_fwlog_data(struct libie_fwlog *fwlog, u8 *buf, u16 len);
+#endif /* _LIBIE_FWLOG_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 62bc804d7ee5..c71540214396 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1540,8 +1540,8 @@ static int __ice_clean_ctrlq(struct ice_pf *pf, enum ice_ctl_q q_type)
 			}
 			break;
 		case ice_aqc_opc_fw_logs_event:
-			ice_get_fwlog_data(&hw->fwlog, event.msg_buf,
-					   le16_to_cpu(event.desc.datalen));
+			libie_get_fwlog_data(&hw->fwlog, event.msg_buf,
+					     le16_to_cpu(event.desc.datalen));
 			break;
 		case ice_aqc_opc_lldp_set_mib_change:
 			ice_dcb_process_lldp_set_mib_change(pf, &event);
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 643d84cc78df..14296bccc4c9 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -948,7 +948,7 @@ struct ice_hw {
 	u8 fw_patch;		/* firmware patch version */
 	u32 fw_build;		/* firmware build number */
 
-	struct ice_fwlog fwlog;
+	struct libie_fwlog fwlog;
 
 /* Device max aggregate bandwidths corresponding to the GL_PWR_MODE_CTL
  * register. Used for determining the ITR/INTRL granularity during
diff --git a/include/linux/net/intel/libie/adminq.h b/include/linux/net/intel/libie/adminq.h
index f7d90e9acfe4..0df4c9326621 100644
--- a/include/linux/net/intel/libie/adminq.h
+++ b/include/linux/net/intel/libie/adminq.h
@@ -9,6 +9,7 @@
 
 #define LIBIE_CHECK_STRUCT_LEN(n, X)	\
 	static_assert((n) == sizeof(struct X))
+#define LIBIE_AQ_MAX_BUF_LEN 4096
 
 /**
  * struct libie_aqc_generic - Generic structure used in adminq communication
-- 
2.49.0

