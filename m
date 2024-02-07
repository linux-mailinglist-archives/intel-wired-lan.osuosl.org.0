Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F7484D676
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Feb 2024 00:04:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA3A242FE4;
	Wed,  7 Feb 2024 23:04:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X9bN8C_moXxw; Wed,  7 Feb 2024 23:04:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93ECF4336C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707347083;
	bh=7aLthinSDbfqOxm/qwgXXi45DFGsKwn+jlZHtBC4Jjo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=CSbWFs8t2guV67gKesd3+cYa9hQbvAGPm9/BcWU53cDpyTcAoiL1ruuOAUpD4oQYz
	 jnlBJtKZQ/pFmbIgIOQrBwY7/PHQCja+tSu8uGOYnu0mM93NcymY/sFY81tFSlWutd
	 bm1mkP7OMBjAZ6rWeLbRX1Gu3SxxGxD7kY+TkLostbGvJSYEd8MPlnG49CCjsk6rJY
	 PiB12Hk94/ygEV61Xve4pqOgrIEktQxt6NWoYyc6gYnZwLiviMoEG6bhxN7x+4CM+0
	 JQHUPcdzxx2XuU8A9iqyFN1abHwc0kxLvEtl++J97JT9V9+qBv2xA1J9/OICI7kksK
	 j7nwFljl+3Xuw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 93ECF4336C;
	Wed,  7 Feb 2024 23:04:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7ACE41BF3C9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 23:04:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 675C742FDD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 23:04:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X0tw_Dy_iM41 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Feb 2024 23:04:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::635; helo=mail-pl1-x635.google.com;
 envelope-from=jmaxwell37@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 634B142FE4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 634B142FE4
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 634B142FE4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 23:04:40 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id
 d9443c01a7336-1d93f2c3701so7341215ad.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 07 Feb 2024 15:04:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707347080; x=1707951880;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=7aLthinSDbfqOxm/qwgXXi45DFGsKwn+jlZHtBC4Jjo=;
 b=k/zRK2PPauFZo/7awRK2ownoNCPt4Tjj5lbH2BoupJ+EGWqj3ISBMbV/HCxO1+TzMa
 9pGRAW3mw4efUHXhfK54GGpxSwjdDlmmUqaGMxJ4GmzlIVaPNdsESlTVjVgLI1t6EL4w
 Hj03Wx2lw2LYZlzMlqu9FbRsYyWj+jywGTtZC3d5cJMVlSrYn6XnADZYtDO7dco+sQCD
 Uld3mjdrSxJ3RZctLPU2dELn2QIgyIZqQC6EtEDwFCVjubWQOUcnP4+og3mBd4S0ND/U
 rRoXQ5nP/na3E+oCyMgQRU6hw7QL0RRSi1ol856spktvRsD5J7USZ1sKlG2hnuwbK76m
 ksKA==
X-Gm-Message-State: AOJu0YzccMdf/x5mw7+QOmrx2TykcOnTi5cqUG8PaDcPDUzf+4th2y00
 E5GQ/cdyPx5JRIr/xnripJdhgDUFd7RjWqMB2YdV0+TaBamhu6Vv
X-Google-Smtp-Source: AGHT+IGrWxgjE/tlbQm7JxTpNgXkvtA3tKPX9j970UvRHJ0jYkBuv6PnESI3VslLcyYS8rFPu+TD/Q==
X-Received: by 2002:a17:902:d54b:b0:1d9:7c1e:2f33 with SMTP id
 z11-20020a170902d54b00b001d97c1e2f33mr9392524plf.39.1707347079609; 
 Wed, 07 Feb 2024 15:04:39 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCWO3Ev9a+oA+EkSFoR7mvytaYy+pidk3t2RhAlUuxJ/LK2zIyS4TfNPIqlTwZ30/h6pZGRi8tiI5g5Wbu/cvhmv20zkLHhaQ4V/iidCvJq1kuHnIgcMNHfi+qP3cGlAXr6r7Vmdp1b0PqbD9+BGRSn9coWzxb+8XnZ6vAG1eBVckXN2waLqE/KlhUS0rhBOGjAUDdpBXPU+0Aiu5CEvS23pqazUhOeqfRB10CJiH+40hAJd24ibF+EzlR1GrtrC4YjgaWdlO1qKrEhylyEIQYgoe3Nvlc5rIUihVzWWqUjQROXhPq9tPoOdPTE=
Received: from jmaxwell.com ([203.220.178.35])
 by smtp.gmail.com with ESMTPSA id
 i12-20020a17090332cc00b001d6f7875f57sm2003695plr.162.2024.02.07.15.04.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 07 Feb 2024 15:04:39 -0800 (PST)
From: Jon Maxwell <jmaxwell37@gmail.com>
To: jesse.brandeburg@intel.com
Date: Thu,  8 Feb 2024 10:04:30 +1100
Message-Id: <20240207230430.82801-1-jmaxwell37@gmail.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1707347080; x=1707951880; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=7aLthinSDbfqOxm/qwgXXi45DFGsKwn+jlZHtBC4Jjo=;
 b=b2wKc7H22fgwC1EDGr9LcJI15qgIHeFt1YqfE5qGTk6qrLq88apAIMu8F5/B5sm8Rn
 eo70ErFHcsT2c581tIwUV8dHN2vld0kSmjZ+xZ8cpG+4eGYkNlAWDUrDTQFGGGLYDTE4
 76BfTW/vnRHvv3is8Ne8coH8NolVhSUjglPqLIMDee6h+hD0+wJUoOu27/SNHm9Qoryc
 OfDrgb6+O6R9veN2kWGWHbojUoc+ji8nfwluW2T12NwsLj+D9WjwRuvd8AnF5atWanm1
 YxaOFYVOkmbmMiHfweb3/rv6mu0bdC2q8aq16tW9fpIUa9iZafHW4L4isxv0yXIUAZWu
 VPiQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=b2wKc7H2
Subject: [Intel-wired-lan] [net-next] intel: make module parameters readable
 in sys filesystem
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 kuba@kernel.org, pabeni@redhat.com, jmaxwell37@gmail.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Linux users sometimes need an easy way to check current values of module
parameters. For example the module may be manually reloaded with different
parameters. Make these visible and readable in the /sys filesystem to allow
that.

Signed-off-by: Jon Maxwell <jmaxwell37@gmail.com>
---
 drivers/net/ethernet/intel/e100.c                 | 6 +++---
 drivers/net/ethernet/intel/e1000/e1000_main.c     | 2 +-
 drivers/net/ethernet/intel/e1000e/netdev.c        | 2 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c       | 2 +-
 drivers/net/ethernet/intel/igb/igb_main.c         | 4 ++--
 drivers/net/ethernet/intel/igbvf/netdev.c         | 2 +-
 drivers/net/ethernet/intel/igc/igc_main.c         | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c     | 6 +++---
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c | 2 +-
 9 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/e100.c b/drivers/net/ethernet/intel/e100.c
index 01f0f12035caeb7ca1657387538fcebf5c608322..2d879579fc888abda880e7105304941db5d4e263 100644
--- a/drivers/net/ethernet/intel/e100.c
+++ b/drivers/net/ethernet/intel/e100.c
@@ -170,9 +170,9 @@ MODULE_FIRMWARE(FIRMWARE_D102E);
 static int debug = 3;
 static int eeprom_bad_csum_allow = 0;
 static int use_io = 0;
-module_param(debug, int, 0);
-module_param(eeprom_bad_csum_allow, int, 0);
-module_param(use_io, int, 0);
+module_param(debug, int, 0444);
+module_param(eeprom_bad_csum_allow, int, 0444);
+module_param(use_io, int, 0444);
 MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all)");
 MODULE_PARM_DESC(eeprom_bad_csum_allow, "Allow bad eeprom checksums");
 MODULE_PARM_DESC(use_io, "Force use of i/o access mode");
diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
index 1d1e93686af2bc44c9d9330cc12096c88895339b..a20f23f36eb0acb26dfaffe30c6dc3cb88d9e1b0 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -195,7 +195,7 @@ MODULE_LICENSE("GPL v2");
 
 #define DEFAULT_MSG_ENABLE (NETIF_MSG_DRV|NETIF_MSG_PROBE|NETIF_MSG_LINK)
 static int debug = -1;
-module_param(debug, int, 0);
+module_param(debug, int, 0444);
 MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all)");
 
 /**
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index af5d9d97a0d6cb93d18cc8e6c5ea54a1bafe46ea..231dbb02c70a5abe79148bc4f4d62dc4ab33e3e0 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -34,7 +34,7 @@ char e1000e_driver_name[] = "e1000e";
 
 #define DEFAULT_MSG_ENABLE (NETIF_MSG_DRV|NETIF_MSG_PROBE|NETIF_MSG_LINK)
 static int debug = -1;
-module_param(debug, int, 0);
+module_param(debug, int, 0444);
 MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all)");
 
 static const struct e1000_info *e1000_info_tbl[] = {
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 6e7fd473abfd001eb45e8b5bda8978fff9eec26b..0abe169df7ff6e9e381e47657f377e3afeca6ff7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -95,7 +95,7 @@ MODULE_DEVICE_TABLE(pci, i40e_pci_tbl);
 
 #define I40E_MAX_VF_COUNT 128
 static int debug = -1;
-module_param(debug, uint, 0);
+module_param(debug, uint, 0444);
 MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all), Debug mask (0x8XXXXXXX)");
 
 MODULE_AUTHOR("Intel Corporation, <e1000-devel@lists.sourceforge.net>");
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 4df8d4153aa5f5ce7ac9dd566180d552be9f5b4f..1e8dbf9b700ba71f25a6c8c906633a4baa88941d 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -202,7 +202,7 @@ static struct notifier_block dca_notifier = {
 #endif
 #ifdef CONFIG_PCI_IOV
 static unsigned int max_vfs;
-module_param(max_vfs, uint, 0);
+module_param(max_vfs, uint, 0444);
 MODULE_PARM_DESC(max_vfs, "Maximum number of virtual functions to allocate per physical function");
 #endif /* CONFIG_PCI_IOV */
 
@@ -238,7 +238,7 @@ MODULE_LICENSE("GPL v2");
 
 #define DEFAULT_MSG_ENABLE (NETIF_MSG_DRV|NETIF_MSG_PROBE|NETIF_MSG_LINK)
 static int debug = -1;
-module_param(debug, int, 0);
+module_param(debug, int, 0444);
 MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all)");
 
 struct igb_reg_info {
diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
index a4d4f00e6a8761673857feb019de7ebaf34900ef..dc6a4f14cc28db60e849e674cda89118041245e3 100644
--- a/drivers/net/ethernet/intel/igbvf/netdev.c
+++ b/drivers/net/ethernet/intel/igbvf/netdev.c
@@ -32,7 +32,7 @@ static const char igbvf_copyright[] =
 
 #define DEFAULT_MSG_ENABLE (NETIF_MSG_DRV|NETIF_MSG_PROBE|NETIF_MSG_LINK)
 static int debug = -1;
-module_param(debug, int, 0);
+module_param(debug, int, 0444);
 MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all)");
 
 static int igbvf_poll(struct napi_struct *napi, int budget);
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index ba8d3fe186aedacd5a7959e6fd9da3408fe71843..704bb8f830df5ea7be733c529990f8fa891942c3 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -34,7 +34,7 @@ static int debug = -1;
 MODULE_AUTHOR("Intel Corporation, <linux.nics@intel.com>");
 MODULE_DESCRIPTION(DRV_SUMMARY);
 MODULE_LICENSE("GPL v2");
-module_param(debug, int, 0);
+module_param(debug, int, 0444);
 MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all)");
 
 char igc_driver_name[] = "igc";
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index bd541527c8c74d6922e8683e2f4493d9b361f67b..296baa10cb21e02252080f951f82d83774088719 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -147,19 +147,19 @@ static struct notifier_block dca_notifier = {
 
 #ifdef CONFIG_PCI_IOV
 static unsigned int max_vfs;
-module_param(max_vfs, uint, 0);
+module_param(max_vfs, uint, 0444);
 MODULE_PARM_DESC(max_vfs,
 		 "Maximum number of virtual functions to allocate per physical function - default is zero and maximum value is 63. (Deprecated)");
 #endif /* CONFIG_PCI_IOV */
 
 static bool allow_unsupported_sfp;
-module_param(allow_unsupported_sfp, bool, 0);
+module_param(allow_unsupported_sfp, bool, 0444);
 MODULE_PARM_DESC(allow_unsupported_sfp,
 		 "Allow unsupported and untested SFP+ modules on 82599-based adapters");
 
 #define DEFAULT_MSG_ENABLE (NETIF_MSG_DRV|NETIF_MSG_PROBE|NETIF_MSG_LINK)
 static int debug = -1;
-module_param(debug, int, 0);
+module_param(debug, int, 0444);
 MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all)");
 
 MODULE_AUTHOR("Intel Corporation, <linux.nics@intel.com>");
diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index a44e4bd561421a5ee398f29464ec591af32c8857..fc82d0914bdbb96c9548d17b3de47d064308a95c 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -82,7 +82,7 @@ MODULE_LICENSE("GPL v2");
 
 #define DEFAULT_MSG_ENABLE (NETIF_MSG_DRV|NETIF_MSG_PROBE|NETIF_MSG_LINK)
 static int debug = -1;
-module_param(debug, int, 0);
+module_param(debug, int, 0444);
 MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all)");
 
 static struct workqueue_struct *ixgbevf_wq;
-- 
2.39.3

