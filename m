Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC51B21C5F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 06:54:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4AF2541E01;
	Tue, 12 Aug 2025 04:54:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PLHntSR_1DVB; Tue, 12 Aug 2025 04:54:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 98BCA41DFF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754974447;
	bh=Ev+QNoBfHGvSwoev4uJSujZCHX9UrsWVvnlDtkz167o=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WK7ATUFXxRN+vXaXkjQ3zOHBlOS9EN/+jyH6SaAtDyP7cJlPRmGjop3/2civPms62
	 vYoFwteqQoCohuOvuy15QOq+OepoWiFyyj/b6XsOkKsnbNQf6Of/VW+VJ6ZQK6issm
	 rO13wytHoNYQ8N2hii3/5qF0zYgrKgzH3hZkU5PyLji7mbqqDNMqr9TkmbPmqHj6wj
	 2WQEt3SniEZREOdMnr+lTcVMsJvJPSXuD0KlU6g6H1aIUjIWfRec5fFn5ERvDCq59M
	 o1pZ8IawlJ4j/nLlpl2O6uGxBGs5hAj2RV/WRP8XwfIJ+mDSrYBL/2ztFB17+6Tan9
	 3iC1usjqp9xpA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98BCA41DFF;
	Tue, 12 Aug 2025 04:54:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8001B158
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:54:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6EA83612A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:54:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i61NTdKS22nH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 04:54:04 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C363A61271
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C363A61271
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C363A61271
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:54:04 +0000 (UTC)
X-CSE-ConnectionGUID: vZxOkA7HTaeRGpbLYXkGlw==
X-CSE-MsgGUID: Ynl4yFfrRUKedE7dfTKujg==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="68612732"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="68612732"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 21:46:58 -0700
X-CSE-ConnectionGUID: wav7H8lBRZi4r02d4qYlHg==
X-CSE-MsgGUID: fKr5GQw8SW6k70Hc+gFkCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="165327876"
Received: from unknown (HELO os-delivery.igk.intel.com) ([10.102.21.165])
 by orviesa010.jf.intel.com with ESMTP; 11 Aug 2025 21:46:57 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 dawid.osuchowski@linux.intel.com, horms@kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>
Date: Tue, 12 Aug 2025 06:23:24 +0200
Message-ID: <20250812042337.1356907-4-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250812042337.1356907-1-michal.swiatkowski@linux.intel.com>
References: <20250812042337.1356907-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754974445; x=1786510445;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PaZZF0HWeOxzeShIIUkYktbU75Xpo9jQY2Rd+3NRG2A=;
 b=Ol/EF5NAK/mFoFaClNTaQYEzM5Z9CAWQKxfi2XzVuyh0qd80vjzNCSFE
 NEgh2w0o/G2qfpTnwzrJ85B5ievTYfEfiErDNxUz+RfHOFZW/D4WbkwWm
 ODcdJBQ73Su+LLt4JHQHs/D7DfWtqPGYbd420dBIomqxZ18MBONLlRBm7
 IlBB+XnHrS+urAF0189p/gX7W08D1buR3NSDa3id4DMij53RDNfjA+HZZ
 w5Smx+mC88MQLaJqdtIGwNEEU5XU/hyzIqhadY+Atoxre6SGL+6wcLETL
 L2yUMazlB7ghvw461TcwNJSlU05mthmOKHMNOrHp6TTWwlWzPoOMHT3pG
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ol/EF5NA
Subject: [Intel-wired-lan] [PATCH iwl-next v2 03/15] ice: drop
 ice_pf_fwlog_update_module()
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

Any other access to fwlog_cfg isn't done through a function. Follow
scheme that is used to access other fwlog_cfg elements from debugfs and
write to the log_level directly.

ice_pf_fwlog_update_module() is called only twice (from one function).
Remove it.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |  1 -
 drivers/net/ethernet/intel/ice/ice_debugfs.c |  5 +++--
 drivers/net/ethernet/intel/ice/ice_main.c    | 13 -------------
 3 files changed, 3 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index e952d67388bf..a6803b344540 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -912,7 +912,6 @@ void ice_debugfs_fwlog_init(struct ice_pf *pf);
 void ice_debugfs_pf_deinit(struct ice_pf *pf);
 void ice_debugfs_init(void);
 void ice_debugfs_exit(void);
-void ice_pf_fwlog_update_module(struct ice_pf *pf, int log_level, int module);
 
 bool netif_is_ice(const struct net_device *dev);
 int ice_vsi_setup_tx_rings(struct ice_vsi *vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
index cb71eca6a85b..170050548e74 100644
--- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
@@ -164,6 +164,7 @@ ice_debugfs_module_write(struct file *filp, const char __user *buf,
 	struct ice_pf *pf = file_inode(filp)->i_private;
 	struct dentry *dentry = file_dentry(filp);
 	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_hw *hw = &pf->hw;
 	char user_val[16], *cmd_buf;
 	int module, log_level, cnt;
 
@@ -192,7 +193,7 @@ ice_debugfs_module_write(struct file *filp, const char __user *buf,
 	}
 
 	if (module != ICE_AQC_FW_LOG_ID_MAX) {
-		ice_pf_fwlog_update_module(pf, log_level, module);
+		hw->fwlog_cfg.module_entries[module].log_level = log_level;
 	} else {
 		/* the module 'all' is a shortcut so that we can set
 		 * all of the modules to the same level quickly
@@ -200,7 +201,7 @@ ice_debugfs_module_write(struct file *filp, const char __user *buf,
 		int i;
 
 		for (i = 0; i < ICE_AQC_FW_LOG_ID_MAX; i++)
-			ice_pf_fwlog_update_module(pf, log_level, i);
+			hw->fwlog_cfg.module_entries[i].log_level = log_level;
 	}
 
 	return count;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 6b8eedc86b69..156e47927a5a 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4624,19 +4624,6 @@ static void ice_print_wake_reason(struct ice_pf *pf)
 	dev_info(ice_pf_to_dev(pf), "Wake reason: %s", wake_str);
 }
 
-/**
- * ice_pf_fwlog_update_module - update 1 module
- * @pf: pointer to the PF struct
- * @log_level: log_level to use for the @module
- * @module: module to update
- */
-void ice_pf_fwlog_update_module(struct ice_pf *pf, int log_level, int module)
-{
-	struct ice_hw *hw = &pf->hw;
-
-	hw->fwlog_cfg.module_entries[module].log_level = log_level;
-}
-
 /**
  * ice_register_netdev - register netdev
  * @vsi: pointer to the VSI struct
-- 
2.49.0

