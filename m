Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4832CCB5548
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 10:17:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EF3EA84D1A;
	Thu, 11 Dec 2025 09:17:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wBD7wCPdQyi4; Thu, 11 Dec 2025 09:17:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0BA7D84D59
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765444639;
	bh=QehT18dgA0psaiFEm/AdMgfBSok2KmGuIupSAcuifAs=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yQDwYwWptMF2DMx+AZ87zBE2g1RJGNHKBUBl+G/RJQOMsW2yTLPjsR5y78KY6WPwk
	 f0I2umlZWlW/wbjWCUm3KcYxQyYYMJQWyLXNdJ1zoO7L7M1xoY9nRO5bK23eE0l8FI
	 3A25YV8DeawxGP8SNaIeJz1vWIJXXVDFSLgxgALu+SWe7wljDhqfnO0gfsjnD4xo78
	 YKnF8Tvev7Uroa2ZRoIiPYi7Br2aecI7DpbmqBaMzHpAd7To/Gs+/JLM+wiA2ZlZnf
	 jLs1tUhVcTcAjIolJSWGm7m9jevIX371WMwawzrPTgTZ8yX7uBK0MHqTxhBmXD8Y52
	 EeUEcPIt6QiwQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0BA7D84D59;
	Thu, 11 Dec 2025 09:17:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2E2012C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 09:17:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 14AE540FEE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 09:17:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DDis-0AtEoVJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Dec 2025 09:17:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=35.162.73.231;
 helo=pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=43358fca2=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 77FF340F94
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 77FF340F94
Received: from pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [35.162.73.231])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 77FF340F94
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 09:17:16 +0000 (UTC)
X-CSE-ConnectionGUID: daNCYUFBQYag3G5gswl9MQ==
X-CSE-MsgGUID: wvGxRvz2SUuXfad5beOJNg==
X-IronPort-AV: E=Sophos;i="6.20,265,1758585600"; 
   d="scan'208";a="8684349"
Received: from ip-10-5-6-203.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.6.203])
 by internal-pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Dec 2025 09:17:13 +0000
Received: from EX19MTAUWA001.ant.amazon.com [205.251.233.236:7464]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.40.9:2525] with
 esmtp (Farcaster)
 id ccba5c44-004f-4032-b7db-7a4cca8a9336; Thu, 11 Dec 2025 09:17:13 +0000 (UTC)
X-Farcaster-Flow-ID: ccba5c44-004f-4032-b7db-7a4cca8a9336
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWA001.ant.amazon.com (10.250.64.218) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.29;
 Thu, 11 Dec 2025 09:17:13 +0000
Received: from b0be8375a521.amazon.com (10.37.245.7) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.29;
 Thu, 11 Dec 2025 09:17:10 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Jedrzej
 Jagielski" <jedrzej.jagielski@intel.com>, Stefan Wegrzyn
 <stefan.wegrzyn@intel.com>, Simon Horman <horms@kernel.org>, Jacob Keller
 <jacob.e.keller@intel.com>, <kohei@enjuk.org>, Kohei Enju <enjuk@amazon.com>
Date: Thu, 11 Dec 2025 18:15:31 +0900
Message-ID: <20251211091636.57722-2-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251211091636.57722-1-enjuk@amazon.com>
References: <20251211091636.57722-1-enjuk@amazon.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.245.7]
X-ClientProxiedBy: EX19D044UWB002.ant.amazon.com (10.13.139.188) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1765444636; x=1796980636;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QehT18dgA0psaiFEm/AdMgfBSok2KmGuIupSAcuifAs=;
 b=bj7DUr1WVqKIS1niprWD6i4dxbiPpJE4BrXj9hyJEikfMcODr/RzzLVm
 kCMRBCPjOOS+0Iq9fFiNQGJrrjNBCAGppDY4WCG5nGbnMBzTkEuadJYCb
 m6YEVGKAa9LVA1JvbvpEY6b1rbzd/gpaGPR8BHn/kuL0jBEDpjEl3yalV
 n6iXj+X4xvfO8Q2I6yRwHqLzkKSXvecmou0Dn6ajiMXwyEhLzLoabxYan
 1vt1zeQ+bYgia7MUNaznEURDDumC4m8qTLpCnAjPDe6A+5EghaHnwqz5p
 4UDJsu9ZvpQCYSl3+H2nFv+YaPXvzHLJ2x7FMiChPw6YOlDQynqTB1Rou
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=bj7DUr1W
Subject: [Intel-wired-lan] [PATCH iwl-net v2 1/2] ixgbe: fix memory leaks in
 the ixgbe_recovery_probe() path
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

When ixgbe_recovery_probe() is invoked and this function fails,
allocated resources in advance are not completely freed, because
ixgbe_probe() returns ixgbe_recovery_probe() directly and
ixgbe_recovery_probe() only frees partial resources, resulting in memory
leaks including:
- adapter->io_addr
- adapter->jump_tables[0]
- adapter->mac_table
- adapter->rss_key
- adapter->af_xdp_zc_qps

The leaked MMIO region can be observed in /proc/vmallocinfo, and the
remaining leaks are reported by kmemleak.

Don't return ixgbe_recovery_probe() directly, and instead let
ixgbe_probe() to clean up resources on failures.

Fixes: 29cb3b8d95c7 ("ixgbe: add E610 implementation of FW recovery mode")
Signed-off-by: Kohei Enju <enjuk@amazon.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 20 ++++++++-----------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 4af3b3e71ff1..85023bb4e5a5 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -11468,14 +11468,12 @@ static void ixgbe_set_fw_version(struct ixgbe_adapter *adapter)
  */
 static int ixgbe_recovery_probe(struct ixgbe_adapter *adapter)
 {
-	struct net_device *netdev = adapter->netdev;
 	struct pci_dev *pdev = adapter->pdev;
 	struct ixgbe_hw *hw = &adapter->hw;
-	bool disable_dev;
 	int err = -EIO;
 
 	if (hw->mac.type != ixgbe_mac_e610)
-		goto clean_up_probe;
+		return err;
 
 	ixgbe_get_hw_control(adapter);
 	mutex_init(&hw->aci.lock);
@@ -11507,13 +11505,6 @@ static int ixgbe_recovery_probe(struct ixgbe_adapter *adapter)
 shutdown_aci:
 	mutex_destroy(&adapter->hw.aci.lock);
 	ixgbe_release_hw_control(adapter);
-clean_up_probe:
-	disable_dev = !test_and_set_bit(__IXGBE_DISABLED, &adapter->state);
-	free_netdev(netdev);
-	devlink_free(adapter->devlink);
-	pci_release_mem_regions(pdev);
-	if (disable_dev)
-		pci_disable_device(pdev);
 	return err;
 }
 
@@ -11655,8 +11646,13 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (err)
 		goto err_sw_init;
 
-	if (ixgbe_check_fw_error(adapter))
-		return ixgbe_recovery_probe(adapter);
+	if (ixgbe_check_fw_error(adapter)) {
+		err = ixgbe_recovery_probe(adapter);
+		if (err)
+			goto err_sw_init;
+
+		return 0;
+	}
 
 	if (adapter->hw.mac.type == ixgbe_mac_e610) {
 		err = ixgbe_get_caps(&adapter->hw);
-- 
2.52.0

