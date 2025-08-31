Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1349BB3D52A
	for <lists+intel-wired-lan@lfdr.de>; Sun, 31 Aug 2025 22:33:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA6C68376D;
	Sun, 31 Aug 2025 20:33:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id onbs74JKK5Qu; Sun, 31 Aug 2025 20:33:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D1BD9835CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756672424;
	bh=9lXtsj+zOMk9a4ftfSw7UIbPSQIDGEcXmVpc9bndFeA=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7DisZKwzd+HCqKk8mxm5io3XVQbRvE5ua9uFpOYbx/cxCNKo4fEJ4n4NC1Pgf+kJB
	 l36w2M4YokvMSECreugFzRzP63R4H36hZby6fjJuaJvB+Z9n59cy4zXWNRerpOBasH
	 mTzVyVbkEg6J1ns4w7bT8183MVp1o7BhB+Knk0Hoa66d9YOSCADLDDujTMQsiqa5Ui
	 kg758xedhZwEgG9RzRV+mvThDdN2sjmd4dtxUcw2iRhOqskAObkB6iABjrPuHwC1r8
	 aHPjd90JPk2TOspkmyb5DpfddcNRfSx33D9ejom0SvPMY/fiuXW/Xu7FH1JrY/jmbf
	 MHFLnt3VaakRw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D1BD9835CF;
	Sun, 31 Aug 2025 20:33:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1535110E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Aug 2025 20:33:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0714A60DF0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Aug 2025 20:33:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5c-6BcIWzHTK for <intel-wired-lan@lists.osuosl.org>;
 Sun, 31 Aug 2025 20:33:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.12.53.23;
 helo=pdx-out-010.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=331fdf6a8=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2F61260D9D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F61260D9D
Received: from pdx-out-010.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-010.esa.us-west-2.outbound.mail-perimeter.amazon.com [52.12.53.23])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2F61260D9D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Aug 2025 20:33:41 +0000 (UTC)
X-CSE-ConnectionGUID: bTAjT5F5QgmVRp6kA0JgtQ==
X-CSE-MsgGUID: JN40oS72Sba1r503Cr5t+A==
X-IronPort-AV: E=Sophos;i="6.18,225,1751241600"; 
   d="scan'208";a="2009676"
Received: from ip-10-5-6-203.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.6.203])
 by internal-pdx-out-010.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2025 20:33:39 +0000
Received: from EX19MTAUWA002.ant.amazon.com [10.0.21.151:9664]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.12.13:2525]
 with esmtp (Farcaster)
 id 29d4a506-946c-4d77-88c8-5830e4a2e0af; Sun, 31 Aug 2025 20:33:39 +0000 (UTC)
X-Farcaster-Flow-ID: 29d4a506-946c-4d77-88c8-5830e4a2e0af
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWA002.ant.amazon.com (10.250.64.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.17;
 Sun, 31 Aug 2025 20:33:39 +0000
Received: from b0be8375a521.amazon.com (10.37.245.7) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Sun, 31 Aug 2025 20:33:37 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Stefan Wegrzyn
 <stefan.wegrzyn@intel.com>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>, Jedrzej Jagielski
 <jedrzej.jagielski@intel.com>, <kohei.enju@gmail.com>, Kohei Enju
 <enjuk@amazon.com>, Koichiro Den <den@valinux.co.jp>
Date: Mon, 1 Sep 2025 05:33:11 +0900
Message-ID: <20250831203327.53155-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.245.7]
X-ClientProxiedBy: EX19D041UWA004.ant.amazon.com (10.13.139.9) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1756672422; x=1788208422;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9lXtsj+zOMk9a4ftfSw7UIbPSQIDGEcXmVpc9bndFeA=;
 b=SVCWmDVuR44YgKXP8FT+KUYqO/9N4cDv7b62tHccsWB0Zc89lLXDfSQI
 +lzDDGGe21399rczyDRD95rgdga4WMhddSW+P8xJrqlNbiXRgxuYY7SZx
 wXLKXkshDJY90j+O2ov3rINf6VbHe1eVz/CNsryAdPeMIEBAPDAO1ZCqS
 HlHdFhDWFpqfgwgaocHVvyzVtKhASV5yE3dEF0FuOEBRQ2J6xgZse8i0g
 nVGSvkMcf4mfRxlDJOLBorRtgfP42T80zL4T/ORfiqNvc3NuFUIKAPKGu
 aOQ/fgHp1YuKyS9Z2CCvFq0NqfApxupTJibrwnSpRESx7kfyiXx+6/wBU
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=SVCWmDVu
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: fix memory leak and
 use-after-free in ixgbe_recovery_probe()
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

The error path of ixgbe_recovery_probe() has two memory bugs.

For non-E610 adapters, the function jumps to clean_up_probe without
calling devlink_free(), leaking the devlink instance and its embedded
adapter structure.

For E610 adapters, devlink_free() is called at shutdown_aci, but
clean_up_probe then accesses adapter->state, sometimes triggering
use-after-free because adapter is embedded in devlink. This UAF is
similar to the one recently reported in ixgbe_remove(). (Link)

Fix both issues by moving devlink_free() after adapter->state access,
aligning with the cleanup order in ixgbe_probe().

Link: https://lore.kernel.org/intel-wired-lan/20250828020558.1450422-1-den@valinux.co.jp/
Fixes: 29cb3b8d95c7 ("ixgbe: add E610 implementation of FW recovery mode")
Signed-off-by: Kohei Enju <enjuk@amazon.com>
---
Cc: Koichiro Den <den@valinux.co.jp>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index ff6e8ebda5ba..08368e2717c2 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -11510,10 +11510,10 @@ static int ixgbe_recovery_probe(struct ixgbe_adapter *adapter)
 shutdown_aci:
 	mutex_destroy(&adapter->hw.aci.lock);
 	ixgbe_release_hw_control(adapter);
-	devlink_free(adapter->devlink);
 clean_up_probe:
 	disable_dev = !test_and_set_bit(__IXGBE_DISABLED, &adapter->state);
 	free_netdev(netdev);
+	devlink_free(adapter->devlink);
 	pci_release_mem_regions(pdev);
 	if (disable_dev)
 		pci_disable_device(pdev);
-- 
2.51.0

