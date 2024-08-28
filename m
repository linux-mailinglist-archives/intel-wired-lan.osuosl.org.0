Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5338A96282F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2024 15:04:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 93DA0400D1;
	Wed, 28 Aug 2024 13:04:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q0S_MlUO2oQC; Wed, 28 Aug 2024 13:04:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C4E8B40B0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724850262;
	bh=q5r0JlLAjKZnfmsp/h1E3PC4TQarmQ+5PBGhVmeeyVo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=4Ifur79wVNcVx22qd+f3fBuyW8g1qX8lBIw6moapa2EeKT3WtkeqDlXTXxqkefpOJ
	 ntrIF/vKSs6uy+u8OP3Kjj1bZuowd4JwfJqSHbGA1oKBrCg0bc2DVW1ZLoQKc/vxGg
	 iOIeziTGf9i64d3XLl55FGuVZrokBGW4Lfkv9MKu7jzxuIi5st0He5iJZKEpJ97o1h
	 2ZbCfTY9MfKw916qNjFS3cNess0D8xbR1NmmcTiKSllVlHwacmtlOOOJqcFuOvpleB
	 1DUS8gu4PHivrtp8aNFEw3IKBFxm0prAMEIM/Cr6Qvnr3UHFF8tE0HkjgN6y6oCIuU
	 oLpi3rWSWtIHw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C4E8B40B0B;
	Wed, 28 Aug 2024 13:04:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C65A11BF31A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 13:04:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B1A55401FB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 13:04:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0R1RseyiZRyE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Aug 2024 13:04:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8A3FB400D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A3FB400D1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8A3FB400D1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 13:04:19 +0000 (UTC)
X-CSE-ConnectionGUID: Q/jw0w5eSw68nolW/+ZnkA==
X-CSE-MsgGUID: GlzCzi6TSoKBPvY4zZqkbw==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="34755759"
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="34755759"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 06:04:18 -0700
X-CSE-ConnectionGUID: v0TyrOwkS6uwXPhaQCVVhw==
X-CSE-MsgGUID: 7WqSlfc+Rq+mZsN/AaEq+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="63917976"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa008.jf.intel.com with ESMTP; 28 Aug 2024 06:04:17 -0700
Received: from pkitszel-desk.tendawifi.com (unknown [10.245.246.88])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id BC0C62878A;
 Wed, 28 Aug 2024 14:04:14 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed, 28 Aug 2024 15:03:43 +0200
Message-ID: <20240828130403.14145-2-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.45.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724850260; x=1756386260;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=h6Xplaev56MVghDdVsifJpXM1VSaDABeH30RfpesMUw=;
 b=VOcs8di8Ekb3xUXgCZD5ZnhzPgDkC1BppiHPjj5qp7myehXrrxTPTZL7
 kcY0A4rnYG3qxAizrLvqPYumuF+a7O9p8Am9yAT5LHKp5Fobda/13gqXl
 kjjSkBqLy9prVPZcSlnVj9Rt/ghNFkH+V0ACi5xmNHTMgC+ZjRshpk0L3
 UJG4zhf2f/vrL3qjxzG8lLQa+u4wRV7//xHUvw1H6LRwLwxiUn/P+FHTm
 GceJhW4rsv8UMvV6KX30h3vI2wYc6E4WQIHSgdUkyrBu6slWbc6r1Vjka
 aMDcYE65ih5l6koIeic3V3/H9kz4fFFrFcEQKd09Itbf8zd5em+45nJ2F
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VOcs8di8
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: stop calling
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
 Larysa Zaremba <larysa.zaremba@intel.com>,
 Philipp Stanner <pstanner@redhat.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Our driver uses devres to manage resources, in particular we call
pcim_enable_device(), which recently has registered pcim_disable_device()
as device remove action (see cited "Fixes" commit). Since that, unloading
the driver yields following warn+splat:

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

CC: Philipp Stanner <pstanner@redhat.com>
Fixes: f748a07a0b64 ("PCI: Remove legacy pcim_release()")
Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
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
2.45.1

