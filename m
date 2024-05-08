Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BB79B8BFEA4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 May 2024 15:23:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CFCC04019F;
	Wed,  8 May 2024 13:23:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QdKItAQYoziv; Wed,  8 May 2024 13:23:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 72F0A40102
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715174611;
	bh=cLPG0OL3SXlYQRtbiGpqR86GGeHKVf157Feju7XgT8Y=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=IxPPk1dYkijmxng3yXAXQeFsNzq3StzMuVaIMFr6PQq5UA7Tpe+8cYxbGrLiuCDSQ
	 sWjBHVCGAOyKA0+JshOxSMIG/MPqw8F7hCnJ4ImxkG/31ZscmDJOso5M28y/I8J4Hh
	 JFGWhxTeWZpU9PWVFsKERFvhZdWLR+cUR6dTyuCikOhyhSLe6AFeWUJ8V7Ml8AfS4E
	 reRXnVfUajFan0k2OOFXe1IVjNQk/TGdadBr1+m42w+mOZdpdaYsv0qfkoD6SgUslX
	 B9YVmLPjH3TcmQGZLQCVm1UZTrdJe9X8jQ7TzeM0mXTXS/vROWnNDlrvEwUETHrPp5
	 nbNUxjfQGa4vA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 72F0A40102;
	Wed,  8 May 2024 13:23:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 806FA1BF33A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 13:23:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6A8C1822CF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 13:23:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hKkWxypovT1y for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 May 2024 13:23:28 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D774D822EF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D774D822EF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D774D822EF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 13:23:27 +0000 (UTC)
X-CSE-ConnectionGUID: r7UgZ6vVS7ebevQeeugaow==
X-CSE-MsgGUID: t87H6vVCQJa8XUfRnHvj/Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11066"; a="36414240"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="36414240"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 06:23:27 -0700
X-CSE-ConnectionGUID: nl17En8nSgWa4E/1HF/puA==
X-CSE-MsgGUID: OrWG+csSRCip2uAzwaFf3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="33358923"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmviesa005.fm.intel.com with ESMTP; 08 May 2024 06:23:22 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 5917011F; Wed, 08 May 2024 16:23:21 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Date: Wed,  8 May 2024 16:23:15 +0300
Message-ID: <20240508132315.1121086-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.43.0.rc1.1336.g36b5255a03ac
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715174608; x=1746710608;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UZTuM19sfO6IyeO00FqUVca6+KRZ5NfpcA4zNw9xJg4=;
 b=OkqVlS2jQOVezaxY/a3iwgfbL554RsvdYuCZHp5oPBcK+7k7VKiTLD9I
 ueEWLawaaiaWKnHKgCJ87+zrHoaCsOGJh/2aWD4Wjgz8c8mUGMLGl4kwy
 oCIZ8TeypuYG56g09WjocKJ2IS1x1L/gEgnK4Iev35e/3sXCq80xwxXcD
 nhM8E9n+1d0wqDrnz//YiSyTKBazXTtqYiJh6DBsxd3nY+OYwNEDBLffk
 1FQRhNOj7cDOjv6Z4dJBIN5YnPZSP39FXN9x/I2PfOUnU4rO1Lo2dagKx
 R1S0AvAX78DbP2mTGHS/TSLKYOatBkoLHalL+7e0Z9lqWPWC5sCD+pjzb
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OkqVlS2j
Subject: [Intel-wired-lan] [PATCH net-next v1 1/1] net: intel: Use *-y
 instead of *-objs in Makefile
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Richard Cochran <richardcochran@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

*-objs suffix is reserved rather for (user-space) host programs while
usually *-y suffix is used for kernel drivers (although *-objs works
for that purpose for now).

Let's correct the old usages of *-objs in Makefiles.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/net/ethernet/intel/e1000/Makefile   | 2 +-
 drivers/net/ethernet/intel/e1000e/Makefile  | 7 +++----
 drivers/net/ethernet/intel/i40e/Makefile    | 2 +-
 drivers/net/ethernet/intel/iavf/Makefile    | 5 ++---
 drivers/net/ethernet/intel/igb/Makefile     | 6 +++---
 drivers/net/ethernet/intel/igbvf/Makefile   | 6 +-----
 drivers/net/ethernet/intel/igc/Makefile     | 4 ++--
 drivers/net/ethernet/intel/ixgbe/Makefile   | 8 ++++----
 drivers/net/ethernet/intel/ixgbevf/Makefile | 6 +-----
 drivers/net/ethernet/intel/libeth/Makefile  | 2 +-
 drivers/net/ethernet/intel/libie/Makefile   | 2 +-
 11 files changed, 20 insertions(+), 30 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/Makefile b/drivers/net/ethernet/intel/e1000/Makefile
index 314c52d44b7c..79491dec47e1 100644
--- a/drivers/net/ethernet/intel/e1000/Makefile
+++ b/drivers/net/ethernet/intel/e1000/Makefile
@@ -7,4 +7,4 @@
 
 obj-$(CONFIG_E1000) += e1000.o
 
-e1000-objs := e1000_main.o e1000_hw.o e1000_ethtool.o e1000_param.o
+e1000-y := e1000_main.o e1000_hw.o e1000_ethtool.o e1000_param.o
diff --git a/drivers/net/ethernet/intel/e1000e/Makefile b/drivers/net/ethernet/intel/e1000e/Makefile
index 0baa15503c38..18f22b6374d5 100644
--- a/drivers/net/ethernet/intel/e1000e/Makefile
+++ b/drivers/net/ethernet/intel/e1000e/Makefile
@@ -10,7 +10,6 @@ subdir-ccflags-y += -I$(src)
 
 obj-$(CONFIG_E1000E) += e1000e.o
 
-e1000e-objs := 82571.o ich8lan.o 80003es2lan.o \
-	       mac.o manage.o nvm.o phy.o \
-	       param.o ethtool.o netdev.o ptp.o
-
+e1000e-y := 82571.o ich8lan.o 80003es2lan.o \
+	    mac.o manage.o nvm.o phy.o \
+	    param.o ethtool.o netdev.o ptp.o
diff --git a/drivers/net/ethernet/intel/i40e/Makefile b/drivers/net/ethernet/intel/i40e/Makefile
index cad93f323bd5..9faa4339a76c 100644
--- a/drivers/net/ethernet/intel/i40e/Makefile
+++ b/drivers/net/ethernet/intel/i40e/Makefile
@@ -10,7 +10,7 @@ subdir-ccflags-y += -I$(src)
 
 obj-$(CONFIG_I40E) += i40e.o
 
-i40e-objs := i40e_main.o \
+i40e-y := i40e_main.o \
 	i40e_ethtool.o	\
 	i40e_adminq.o	\
 	i40e_common.o	\
diff --git a/drivers/net/ethernet/intel/iavf/Makefile b/drivers/net/ethernet/intel/iavf/Makefile
index 2d154a4e2fd7..356ac9faa5bf 100644
--- a/drivers/net/ethernet/intel/iavf/Makefile
+++ b/drivers/net/ethernet/intel/iavf/Makefile
@@ -11,6 +11,5 @@ subdir-ccflags-y += -I$(src)
 
 obj-$(CONFIG_IAVF) += iavf.o
 
-iavf-objs := iavf_main.o iavf_ethtool.o iavf_virtchnl.o iavf_fdir.o \
-	     iavf_adv_rss.o \
-	     iavf_txrx.o iavf_common.o iavf_adminq.o
+iavf-y := iavf_main.o iavf_ethtool.o iavf_virtchnl.o iavf_fdir.o \
+	  iavf_adv_rss.o iavf_txrx.o iavf_common.o iavf_adminq.o
diff --git a/drivers/net/ethernet/intel/igb/Makefile b/drivers/net/ethernet/intel/igb/Makefile
index 394c1e0656b9..463c0d26b9d4 100644
--- a/drivers/net/ethernet/intel/igb/Makefile
+++ b/drivers/net/ethernet/intel/igb/Makefile
@@ -6,6 +6,6 @@
 
 obj-$(CONFIG_IGB) += igb.o
 
-igb-objs := igb_main.o igb_ethtool.o e1000_82575.o \
-	    e1000_mac.o e1000_nvm.o e1000_phy.o e1000_mbx.o \
-	    e1000_i210.o igb_ptp.o igb_hwmon.o
+igb-y := igb_main.o igb_ethtool.o e1000_82575.o \
+	 e1000_mac.o e1000_nvm.o e1000_phy.o e1000_mbx.o \
+	 e1000_i210.o igb_ptp.o igb_hwmon.o
diff --git a/drivers/net/ethernet/intel/igbvf/Makefile b/drivers/net/ethernet/intel/igbvf/Makefile
index afd3e36eae75..902711d5e691 100644
--- a/drivers/net/ethernet/intel/igbvf/Makefile
+++ b/drivers/net/ethernet/intel/igbvf/Makefile
@@ -6,8 +6,4 @@
 
 obj-$(CONFIG_IGBVF) += igbvf.o
 
-igbvf-objs := vf.o \
-              mbx.o \
-              ethtool.o \
-              netdev.o
-
+igbvf-y := vf.o mbx.o ethtool.o netdev.o
diff --git a/drivers/net/ethernet/intel/igc/Makefile b/drivers/net/ethernet/intel/igc/Makefile
index ebffd3054285..a64c734740f6 100644
--- a/drivers/net/ethernet/intel/igc/Makefile
+++ b/drivers/net/ethernet/intel/igc/Makefile
@@ -8,5 +8,5 @@
 obj-$(CONFIG_IGC) += igc.o
 igc-$(CONFIG_IGC_LEDS) += igc_leds.o
 
-igc-objs := igc_main.o igc_mac.o igc_i225.o igc_base.o igc_nvm.o igc_phy.o \
-igc_diag.o igc_ethtool.o igc_ptp.o igc_dump.o igc_tsn.o igc_xdp.o
+igc-y := igc_main.o igc_mac.o igc_i225.o igc_base.o igc_nvm.o igc_phy.o \
+	 igc_diag.o igc_ethtool.o igc_ptp.o igc_dump.o igc_tsn.o igc_xdp.o
diff --git a/drivers/net/ethernet/intel/ixgbe/Makefile b/drivers/net/ethernet/intel/ixgbe/Makefile
index 4fb0d9e3f2da..965e5ce1b326 100644
--- a/drivers/net/ethernet/intel/ixgbe/Makefile
+++ b/drivers/net/ethernet/intel/ixgbe/Makefile
@@ -6,10 +6,10 @@
 
 obj-$(CONFIG_IXGBE) += ixgbe.o
 
-ixgbe-objs := ixgbe_main.o ixgbe_common.o ixgbe_ethtool.o \
-              ixgbe_82599.o ixgbe_82598.o ixgbe_phy.o ixgbe_sriov.o \
-              ixgbe_mbx.o ixgbe_x540.o ixgbe_x550.o ixgbe_lib.o ixgbe_ptp.o \
-              ixgbe_xsk.o
+ixgbe-y := ixgbe_main.o ixgbe_common.o ixgbe_ethtool.o \
+           ixgbe_82599.o ixgbe_82598.o ixgbe_phy.o ixgbe_sriov.o \
+           ixgbe_mbx.o ixgbe_x540.o ixgbe_x550.o ixgbe_lib.o ixgbe_ptp.o \
+           ixgbe_xsk.o
 
 ixgbe-$(CONFIG_IXGBE_DCB) +=  ixgbe_dcb.o ixgbe_dcb_82598.o \
                               ixgbe_dcb_82599.o ixgbe_dcb_nl.o
diff --git a/drivers/net/ethernet/intel/ixgbevf/Makefile b/drivers/net/ethernet/intel/ixgbevf/Makefile
index 186a4bb24fde..01d3e892f3fa 100644
--- a/drivers/net/ethernet/intel/ixgbevf/Makefile
+++ b/drivers/net/ethernet/intel/ixgbevf/Makefile
@@ -6,9 +6,5 @@
 
 obj-$(CONFIG_IXGBEVF) += ixgbevf.o
 
-ixgbevf-objs := vf.o \
-                mbx.o \
-                ethtool.o \
-                ixgbevf_main.o
+ixgbevf-y := vf.o mbx.o ethtool.o ixgbevf_main.o
 ixgbevf-$(CONFIG_IXGBEVF_IPSEC) += ipsec.o
-
diff --git a/drivers/net/ethernet/intel/libeth/Makefile b/drivers/net/ethernet/intel/libeth/Makefile
index cb99203d1dd2..52492b081132 100644
--- a/drivers/net/ethernet/intel/libeth/Makefile
+++ b/drivers/net/ethernet/intel/libeth/Makefile
@@ -3,4 +3,4 @@
 
 obj-$(CONFIG_LIBETH)		+= libeth.o
 
-libeth-objs			+= rx.o
+libeth-y			:= rx.o
diff --git a/drivers/net/ethernet/intel/libie/Makefile b/drivers/net/ethernet/intel/libie/Makefile
index bf42c5aeeedd..ffd27fab916a 100644
--- a/drivers/net/ethernet/intel/libie/Makefile
+++ b/drivers/net/ethernet/intel/libie/Makefile
@@ -3,4 +3,4 @@
 
 obj-$(CONFIG_LIBIE)	+= libie.o
 
-libie-objs		+= rx.o
+libie-y			:= rx.o
-- 
2.43.0.rc1.1336.g36b5255a03ac

