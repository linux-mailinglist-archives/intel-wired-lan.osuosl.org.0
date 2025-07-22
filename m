Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BC349B0D7B6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jul 2025 13:07:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 692B36F550;
	Tue, 22 Jul 2025 11:07:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 39XclZaK6Six; Tue, 22 Jul 2025 11:07:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA3256F551
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753182423;
	bh=D7k0m/3LjPa+u5vK3HeEZFhej1musWMw3M+LXp5AwHw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FRWsXWkDHHuv0EDlb4rtx3Yl5IzboV6ZOkDwKOerSs+ql7MaYwCm/raPzXCHrZALj
	 5PcDW+07cfmDNEk0uXqBhJxg8Y2/OqQ4XL/uOc8UeV37D6Wlgybx53ihtd3AQ6mFsV
	 9/UhLswkA14OvrRSRyK04+ylfhOcbodEdqTGKh/apgXy1whI4OerXrBFZxS5W3cyay
	 vxkUP1EIeD0q9+ifiTrI0wuGdmF7SCagFd+7KQ7ZteB0zA8Jg9p8npSHMA3qoJU9k9
	 fusSr3jExyPW8/yU4CP6pCOPwo1XCV+fCeuQXFfMPUjngeVd1SmEvQXfG8I/MaUfWc
	 h0Lo66F/t8SLQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA3256F551;
	Tue, 22 Jul 2025 11:07:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9E651127
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:07:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8198284B31
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:07:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 40VlRrBQaP2m for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jul 2025 11:07:02 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CF92284B21
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF92284B21
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CF92284B21
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:07:01 +0000 (UTC)
X-CSE-ConnectionGUID: eF6XMPj2QkCAdF2dBvD5sw==
X-CSE-MsgGUID: ajxvWsi7SSeniWob7xjpXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="59083586"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="59083586"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 04:07:02 -0700
X-CSE-ConnectionGUID: 5zWitBxBRZW+TnNJbxTvEg==
X-CSE-MsgGUID: U8PjrdKSTd+ZCA34uFRIBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="163153935"
Received: from os-delivery.igk.intel.com ([10.102.21.165])
 by fmviesa003.fm.intel.com with ESMTP; 22 Jul 2025 04:07:00 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 dawid.osuchowski@linux.intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>
Date: Tue, 22 Jul 2025 12:45:48 +0200
Message-ID: <20250722104600.10141-4-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
References: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753182422; x=1784718422;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8x47+Z+F76MmDeFE/G/x/ULdrEuvltAv9rYswrzQcl0=;
 b=HG1ZqOsr+NI+Ub/T4C1bJ7FfTjWijqQPim0LLQO1EEIZ73KW7M8e4IqQ
 1Xi0rQfv+JyDkBpZ+lRe3Jt2aHEzBIQE3pkWxQL1J3CXIlK5L0nYS3ry4
 LklmV3c17th+I+EmS7nIG3CEOlDNV5RTQM4n2vuqjvQ4SpXlGSIruCE1a
 ETpatHFY0GSg+vgZCB76z4zEsD1XB9215oe+b9tClB3FvZFjudWOeCGH3
 do/e05jfXq84W4MCnQ45UVRGQ5cnSbjCLQZa4qckI1nUMG9PeimIhehRp
 mtDH2G1gBdB8ohWH20qtJUEwljFPLw9dgBouGvZ02uSxYrvBExxnDbqOl
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HG1ZqOsr
Subject: [Intel-wired-lan] [PATCH iwl-next v1 03/15] ice: drop
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
index c2101853adf8..7f72b8d09d79 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4620,19 +4620,6 @@ static void ice_print_wake_reason(struct ice_pf *pf)
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

