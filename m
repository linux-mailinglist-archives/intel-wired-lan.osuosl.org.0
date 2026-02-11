Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2IFGD/hOjGmukgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 10:42:16 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 45556122D61
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 10:42:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 44D3B83794;
	Wed, 11 Feb 2026 09:42:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pCRbYuZuAmsg; Wed, 11 Feb 2026 09:42:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA6FB837B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770802931;
	bh=H9Wo1s6YuhSxjy+y8OwETdrybA3+q7mRorb9/+lKJek=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=8Z7r4PpW7oycYHOvj6vuC8067sbgI9fcsM5g5wwTlW6Js7aIa1VS//5PgyJiueLp7
	 1y5aqEBy38okgo6n9ZEEuEiPzBitq90TyrRDohlBLfta6UiUT0KDBWMBILiDfHNdaV
	 6871H3+WhmFgHMJxaJylRqM6Kb3UFIUcgUoTI5ECUq6hQMQvNZsHJhd1JHLtLxfPyF
	 xvHh7MoaKxoFLsp5EqVNN01K/ibfiqu7c/oLzt9oVdUa+/mcaZSEBAAeEwyvdq/5/o
	 /VQa+fC1LsM5VVs80Sp0zOju1TvD3pLv26ApVhaN01r/xO9HrGZRDiNcYOmAdcfafY
	 qP3X/V66ztMnw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA6FB837B6;
	Wed, 11 Feb 2026 09:42:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B76C123D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 09:42:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9CD6C408A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 09:42:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x69efEQPH2z9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Feb 2026 09:42:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 84A25404E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 84A25404E5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 84A25404E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 09:42:08 +0000 (UTC)
X-CSE-ConnectionGUID: 80opTlIiSSGsiS3JGNbTfg==
X-CSE-MsgGUID: mqKBIoFiQAqO35WpRx6llA==
X-IronPort-AV: E=McAfee;i="6800,10657,11697"; a="71988515"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="71988515"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 01:42:08 -0800
X-CSE-ConnectionGUID: uKKN/ziCREmnXY7XgyPUWA==
X-CSE-MsgGUID: 2YM07DmfTvmIWwAzO3RPxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="216361856"
Received: from os-delivery.igk.intel.com ([10.102.21.165])
 by orviesa003.jf.intel.com with ESMTP; 11 Feb 2026 01:42:06 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Wed, 11 Feb 2026 10:10:08 +0100
Message-ID: <20260211091008.236185-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770802928; x=1802338928;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=APntsk4MTWEO9YuK7mDQRF5/+R2iKfmtOW+Sf2X1qt4=;
 b=DUqQm8tu8QWZWjWjtjEZn4EqVA0IhhUNmZqu5SJPeQWm72pr2h1N/Jva
 9dX+km2LLM5QTx9yZMqVyBlROU73mJIYbk9BINHL9SziFObL3gnJ4099z
 pZFUATZoPF8nj1bPVXgnSlYtKh2Bj3bLFXylv9od645k/lmE5to3c6QN4
 +iw8ze8PeDqt1mAU9cwIlj2SaZqdwqA9slIgdMgWv+Eis7fEpWaHsoCCF
 Venp2DNdoWxTQGDWo+kOP1k4g6Cp7RGcci7mYzxetAEOrMkCC3SdIsRzY
 S9OinJFJwEimvfT4jNOFG7TyIPPY2iiAQaNSDtxNVb/S1KfAbhDateCOA
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DUqQm8tu
Subject: [Intel-wired-lan] [PATCH iwl-net v1] libie: prevent memleak in
 fwlog code
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.swiatkowski@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 45556122D61
X-Rspamd-Action: no action

All cmd_buf buffers are allocated and need to be freed after usage.
Add an error unwinding path that properly frees these buffers.

The memory leak  happens whenever fwlog configuration is changed. For
example:

$echo 256K > /sys/kernel/debug/ixgbe/0000\:32\:00.0/fwlog/log_size

Fixes: 96a9a9341cda ("ice: configure FW logging")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/libie/fwlog.c | 49 +++++++++++++++++-------
 1 file changed, 36 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/libie/fwlog.c b/drivers/net/ethernet/intel/libie/fwlog.c
index f39cc11cb7c5..30a6bd095f18 100644
--- a/drivers/net/ethernet/intel/libie/fwlog.c
+++ b/drivers/net/ethernet/intel/libie/fwlog.c
@@ -433,17 +433,21 @@ libie_debugfs_module_write(struct file *filp, const char __user *buf,
 	module = libie_find_module_by_dentry(fwlog->debugfs_modules, dentry);
 	if (module < 0) {
 		dev_info(dev, "unknown module\n");
-		return -EINVAL;
+		count = -EINVAL;
+		goto free_cmd_buf;
 	}
 
 	cnt = sscanf(cmd_buf, "%s", user_val);
-	if (cnt != 1)
-		return -EINVAL;
+	if (cnt != 1) {
+		count = -EINVAL;
+		goto free_cmd_buf;
+	}
 
 	log_level = sysfs_match_string(libie_fwlog_level_string, user_val);
 	if (log_level < 0) {
 		dev_info(dev, "unknown log level '%s'\n", user_val);
-		return -EINVAL;
+		count = -EINVAL;
+		goto free_cmd_buf;
 	}
 
 	if (module != LIBIE_AQC_FW_LOG_ID_MAX) {
@@ -458,6 +462,9 @@ libie_debugfs_module_write(struct file *filp, const char __user *buf,
 			fwlog->cfg.module_entries[i].log_level = log_level;
 	}
 
+free_cmd_buf:
+	kfree(cmd_buf);
+
 	return count;
 }
 
@@ -515,23 +522,31 @@ libie_debugfs_nr_messages_write(struct file *filp, const char __user *buf,
 		return PTR_ERR(cmd_buf);
 
 	ret = sscanf(cmd_buf, "%s", user_val);
-	if (ret != 1)
-		return -EINVAL;
+	if (ret != 1) {
+		count = -EINVAL;
+		goto free_cmd_buf;
+	}
 
 	ret = kstrtos16(user_val, 0, &nr_messages);
-	if (ret)
-		return ret;
+	if (ret) {
+		count = ret;
+		goto free_cmd_buf;
+	}
 
 	if (nr_messages < LIBIE_AQC_FW_LOG_MIN_RESOLUTION ||
 	    nr_messages > LIBIE_AQC_FW_LOG_MAX_RESOLUTION) {
 		dev_err(dev, "Invalid FW log number of messages %d, value must be between %d - %d\n",
 			nr_messages, LIBIE_AQC_FW_LOG_MIN_RESOLUTION,
 			LIBIE_AQC_FW_LOG_MAX_RESOLUTION);
-		return -EINVAL;
+		count = -EINVAL;
+		goto free_cmd_buf;
 	}
 
 	fwlog->cfg.log_resolution = nr_messages;
 
+free_cmd_buf:
+	kfree(cmd_buf);
+
 	return count;
 }
 
@@ -588,8 +603,10 @@ libie_debugfs_enable_write(struct file *filp, const char __user *buf,
 		return PTR_ERR(cmd_buf);
 
 	ret = sscanf(cmd_buf, "%s", user_val);
-	if (ret != 1)
-		return -EINVAL;
+	if (ret != 1) {
+		ret = -EINVAL;
+		goto free_cmd_buf;
+	}
 
 	ret = kstrtobool(user_val, &enable);
 	if (ret)
@@ -624,6 +641,8 @@ libie_debugfs_enable_write(struct file *filp, const char __user *buf,
 	 */
 	if (WARN_ON(ret != (ssize_t)count && ret >= 0))
 		ret = -EIO;
+free_cmd_buf:
+	kfree(cmd_buf);
 
 	return ret;
 }
@@ -682,8 +701,10 @@ libie_debugfs_log_size_write(struct file *filp, const char __user *buf,
 		return PTR_ERR(cmd_buf);
 
 	ret = sscanf(cmd_buf, "%s", user_val);
-	if (ret != 1)
-		return -EINVAL;
+	if (ret != 1) {
+		ret = -EINVAL;
+		goto free_cmd_buf;
+	}
 
 	index = sysfs_match_string(libie_fwlog_log_size, user_val);
 	if (index < 0) {
@@ -712,6 +733,8 @@ libie_debugfs_log_size_write(struct file *filp, const char __user *buf,
 	 */
 	if (WARN_ON(ret != (ssize_t)count && ret >= 0))
 		ret = -EIO;
+free_cmd_buf:
+	kfree(cmd_buf);
 
 	return ret;
 }
-- 
2.49.0

