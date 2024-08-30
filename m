Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A9DDB966344
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2024 15:44:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 37107844A8;
	Fri, 30 Aug 2024 13:44:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rIQ8KkvrLzJ6; Fri, 30 Aug 2024 13:44:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EBC1D844AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725025466;
	bh=tPEIzA3O4KtwJ1fBLgVwmxkdaqoHe3TW44PE1vnBryw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=octiHIrw7yk455RmeP7XBroJZ39gyob1miyWSnf2hcGxqO3A68SMnypzBjMNK/G0g
	 7H7AKxTpug245lgfyC7DeTr2mPQoX7BDy2ae5/V9pLsH8Jhyr9GQuzwH2EvS+PZnto
	 c7wHN7JnVw2/tX5YVHDuGAPvFvyZYiEvO6G7TqAjSAVzhtP39gu2q5lwovI6zrYH7V
	 qOB47aaVO/r+zRw+rl5gnvN0XFThVXkr259LBW5XlnJmfRn0X9/HXXVF39NqVFX1dJ
	 WF7rV0RvtMx9rG7ejU8Gj4ayBNTESDYYEMMBDUfDg+KcoKinkc+7BhLNqrqkOsa5+S
	 nwjoJnO2sFd7A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBC1D844AD;
	Fri, 30 Aug 2024 13:44:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2EF721BF5B3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 13:44:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1A64D42427
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 13:44:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1MoHlZtNuqnv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2024 13:44:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C60D6423D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C60D6423D7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C60D6423D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 13:44:22 +0000 (UTC)
X-CSE-ConnectionGUID: qvr2u0LXThuOrN4RKUScYQ==
X-CSE-MsgGUID: Oogfj5ovSyilnhJOxxN5cA==
X-IronPort-AV: E=McAfee;i="6700,10204,11180"; a="23182161"
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="23182161"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 06:44:22 -0700
X-CSE-ConnectionGUID: W+Wc2OmQRy+uZPSEZZDgiw==
X-CSE-MsgGUID: VKBBEuNaQh6KIaSQGErj+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="64407074"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa007.jf.intel.com with ESMTP; 30 Aug 2024 06:44:20 -0700
Received: from pkitszel-desk.tendawifi.com (unknown [10.245.246.146])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id D746D2877D;
 Fri, 30 Aug 2024 14:44:18 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri, 30 Aug 2024 15:44:11 +0200
Message-ID: <20240830134416.26522-2-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725025463; x=1756561463;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ltcWQfpG9s2eAfsG+QyvrDMmiSSRpc33XXauI4RKtbI=;
 b=SNmjk1yPxASi4tP+Lg59CgiQ5b0SFrc3fYz404Mn46Kk1bM3N2qi4osR
 9r5FyyvnAxH4tD/tNpmK0PAg0vgjNyBIEhX4nmeIUNVDb/aaoh6pyAzVk
 wxP43PAkeTrs0IViqt5s/kOkBg/EcMf7DW9JZFySy9LmaGYXwBKlRuq5K
 DyHWPOvu1X5FEoPN17hsrcCSvh08IzkwPaDtFOWm4FwPaR+fowQKwxk3h
 IBG7pMCl54jpnDjyGskOnK9FDeCJypYRPssb66dZAgzW/MmcFhg5bZvbj
 o2WZokXBr0YsMg/aMhJMulgocKJVGzwUIOk3z+27tYV9eHnZj21zkVenp
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SNmjk1yP
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: stop calling
 pci_disable_device() as we use pcim
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
Cc: himasekharx.reddy.pucha@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Philipp Stanner <pstanner@redhat.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Our driver uses devres to manage resources, in particular we call
pcim_enable_device(), what also means we express the intent to get
automatic pci_disable_device() call at driver removal. Manual calls to
pci_disable_device() misuse the API.

Recent commit (see "Fixes" tag) has changed the removal action from
conditional (silent ignore of double call to pci_disable_device()) to
unconditional, but able to catch unwanted redundant calls; see cited
"Fixes" commit for details.

Since that, unloading the driver yields following warn+splat:

[70633.628490] ice 0000:af:00.7: disabling already-disabled device
[70633.628512] WARNING: CPU: 52 PID: 33890 at drivers/pci/pci.c:2250 pci_disable_device+0xf4/0x100
...
[70633.628744]  ? pci_disable_device+0xf4/0x100
[70633.628752]  release_nodes+0x4a/0x70
[70633.628759]  devres_release_all+0x8b/0xc0
[70633.628768]  device_unbind_cleanup+0xe/0x70
[70633.628774]  device_release_driver_internal+0x208/0x250
[70633.628781]  driver_detach+0x47/0x90
[70633.628786]  bus_remove_driver+0x80/0x100
[70633.628791]  pci_unregister_driver+0x2a/0xb0
[70633.628799]  ice_module_exit+0x11/0x3a [ice]

Note that this is the only Intel ethernet driver that needs such fix.

Fixes: f748a07a0b64 ("PCI: Remove legacy pcim_release()")
Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
Reviewed-by: Philipp Stanner <pstanner@redhat.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
v2: Reworded commit message to make it clear that removal action
    was there since long ago, Fixes commit just made it (properly)
    unconditional (Philipp Stanner).

v1:
https://lore.kernel.org/intel-wired-lan/20240828130403.14145-2-przemyslaw.kitszel@intel.com
---
 drivers/net/ethernet/intel/ice/ice_main.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 6f97ed471fe9..18e4950316f1 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5350,7 +5350,6 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	ice_deinit(pf);
 err_init:
 	ice_adapter_put(pdev);
-	pci_disable_device(pdev);
 	return err;
 }
 
@@ -5457,7 +5456,6 @@ static void ice_remove(struct pci_dev *pdev)
 	ice_set_wake(pf);
 
 	ice_adapter_put(pdev);
-	pci_disable_device(pdev);
 }
 
 /**

base-commit: 4186c8d9e6af57bab0687b299df10ebd47534a0a
-- 
2.46.0

