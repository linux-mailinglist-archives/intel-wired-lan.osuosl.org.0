Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFAABE211E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Oct 2025 10:01:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 052C161ACC;
	Thu, 16 Oct 2025 08:01:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R8GR_sSpLiEQ; Thu, 16 Oct 2025 08:01:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 40837608CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760601670;
	bh=v9OUu5uCj1naHNCfBQlZa78ArU6EABtNXNPZP44pXfk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=EPvqtJl4uLaVCbz1FceO3rhOf58jj5KD2FQlyROhq4r/06mdYA6iO3e2o0p3hTDJP
	 XH0QaiRajq9G2eyDu2n8KsztfKWHV9eKwDYjwAxVN4bvz4hibxtMeNvxync2K1qyci
	 nZCZ63RgjLu/KR5W+O2ZebZjvIRqfP+QeOKwRQYPU7Y1SdCkmOSfeNB2/7YFgBPyvE
	 kr0b6quMi/AXtidIBNrvUYmRA9uYtbreM9BseCX/MjFKmhaoEkh+RJfRmryrqWJw3T
	 jA17V8FfUENzzcd97H0C2cRXJT/hWAH1D/npVJbw4U5r+ME/jMK/OZ6NEXI78XibHN
	 rmzKrgx6N03GQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 40837608CC;
	Thu, 16 Oct 2025 08:01:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3122593E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 08:01:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C5A1361AE4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 08:01:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KFl5nylBI989 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Oct 2025 08:01:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6F3AF608CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F3AF608CC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6F3AF608CC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 08:01:00 +0000 (UTC)
X-CSE-ConnectionGUID: G3aOCvHNT86UpBXfQtDcuA==
X-CSE-MsgGUID: +3jFEAL+QOOwHouJeIGQ3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="73070702"
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="73070702"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 01:00:59 -0700
X-CSE-ConnectionGUID: s3aezF74Q5urookK9cQ8Sw==
X-CSE-MsgGUID: 4LOPsJF4R0WMZS9Zy3qUwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="212986455"
Received: from os-delivery.igk.intel.com ([10.102.21.165])
 by orviesa002.jf.intel.com with ESMTP; 16 Oct 2025 01:00:55 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, jacob.e.keller@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Guenter Roeck <linux@roeck-us.net>
Date: Thu, 16 Oct 2025 09:29:40 +0200
Message-ID: <20251016072940.1661485-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760601661; x=1792137661;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=h+tjwbov4toO89eFNGZs8DnejPpuFk+UUy6nIXggJB4=;
 b=Il0BeYRcBT9NpPYkf/VfAJVM8tvJYMQcL/eUmjxpRf8qo9rEYcvxhkSt
 gro2CshqWRiOCKbS/MOM4Khdv8wgN7OLfK05vwICnszZAsG5BHAR/JvPG
 9ZE7g0P8lkUOb9UahJ4ho9dx6XSFX6Ad+6Bbsgtbqbwd5IF1NzDofy8BH
 rLXL6oYYA1X8X71NkwVgvmZBGGQeMP355dLSZiTj6283QDub5RPj/i1Kv
 DRJDsJXuuElydjUYpFjW154Vc8ChMljshivlcnRK4bUKLOzUdkEBcB95R
 TNNR3fpuMpB5rBi5UIdUj5XI9olQ1uJeN8NmPaD8MGEIEFGiucMpCM9Iz
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Il0BeYRc
Subject: [Intel-wired-lan] [PATCH iwl-net v2] libie: depend on DEBUG_FS when
 building LIBIE_FWLOG
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

LIBIE_FWLOG is unusable without DEBUG_FS. Mark it in Kconfig.

Fix build error on ixgbe when DEBUG_FS is not set. To not add another
layer of #if IS_ENABLED(LIBIE_FWLOG) in ixgbe fwlog code define debugfs
dentry even when DEBUG_FS isn't enabled. In this case the dummy
functions of LIBIE_FWLOG will be used, so not initialized dentry isn't a
problem.

Fixes: 641585bc978e ("ixgbe: fwlog support for e610")
Reported-by: Guenter Roeck <linux@roeck-us.net>
Closes: https://lore.kernel.org/lkml/f594c621-f9e1-49f2-af31-23fbcb176058@roeck-us.net/
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
v1 --> v2 [1]:
 * add DEBUG_FS dependency in LIBIE_FWLOG

[1] https://lore.kernel.org/netdev/20251014141110.751104-1-michal.swiatkowski@linux.intel.com/
---
 drivers/net/ethernet/intel/Kconfig       |  4 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe.h |  2 --
 include/linux/net/intel/libie/fwlog.h    | 12 ++++++++++++
 3 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index a563a94e2780..122ee23497e6 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -146,7 +146,7 @@ config IXGBE
 	tristate "Intel(R) 10GbE PCI Express adapters support"
 	depends on PCI
 	depends on PTP_1588_CLOCK_OPTIONAL
-	select LIBIE_FWLOG
+	select LIBIE_FWLOG if DEBUG_FS
 	select MDIO
 	select NET_DEVLINK
 	select PLDMFW
@@ -298,7 +298,7 @@ config ICE
 	select DIMLIB
 	select LIBIE
 	select LIBIE_ADMINQ
-	select LIBIE_FWLOG
+	select LIBIE_FWLOG if DEBUG_FS
 	select NET_DEVLINK
 	select PACKING
 	select PLDMFW
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index 14d275270123..dce4936708eb 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -821,9 +821,7 @@ struct ixgbe_adapter {
 #ifdef CONFIG_IXGBE_HWMON
 	struct hwmon_buff *ixgbe_hwmon_buff;
 #endif /* CONFIG_IXGBE_HWMON */
-#ifdef CONFIG_DEBUG_FS
 	struct dentry *ixgbe_dbg_adapter;
-#endif /*CONFIG_DEBUG_FS*/
 
 	u8 default_up;
 	/* Bitmask indicating in use pools */
diff --git a/include/linux/net/intel/libie/fwlog.h b/include/linux/net/intel/libie/fwlog.h
index 36b13fabca9e..7273c78c826b 100644
--- a/include/linux/net/intel/libie/fwlog.h
+++ b/include/linux/net/intel/libie/fwlog.h
@@ -78,8 +78,20 @@ struct libie_fwlog {
 	);
 };
 
+#if IS_ENABLED(CONFIG_LIBIE_FWLOG)
 int libie_fwlog_init(struct libie_fwlog *fwlog, struct libie_fwlog_api *api);
 void libie_fwlog_deinit(struct libie_fwlog *fwlog);
 void libie_fwlog_reregister(struct libie_fwlog *fwlog);
 void libie_get_fwlog_data(struct libie_fwlog *fwlog, u8 *buf, u16 len);
+#else
+static inline int libie_fwlog_init(struct libie_fwlog *fwlog,
+				   struct libie_fwlog_api *api)
+{
+	return -EOPNOTSUPP;
+}
+static inline void libie_fwlog_deinit(struct libie_fwlog *fwlog) { }
+static inline void libie_fwlog_reregister(struct libie_fwlog *fwlog) { }
+static inline void libie_get_fwlog_data(struct libie_fwlog *fwlog, u8 *buf,
+					u16 len) { }
+#endif /* CONFIG_LIBIE_FWLOG */
 #endif /* _LIBIE_FWLOG_H_ */
-- 
2.49.0

