Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F9DCAA973
	for <lists+intel-wired-lan@lfdr.de>; Sat, 06 Dec 2025 16:52:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 21ABB40A0A;
	Sat,  6 Dec 2025 15:52:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RmjD48M6LYfa; Sat,  6 Dec 2025 15:52:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9002240A16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765036329;
	bh=OqhJCLL3Pwz/+JDuot93iS7Im0pUDlagFH9IXq0WS5A=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rROQoBdgXkAW7UCMzLmq7Zp481KGzffJv0aBcwWSiDD5LQp4+n5sgzbn5iDf+tBpr
	 CuJ8uTfNli+2O8+JxKE1moEMWNeaLCTXuT79J+31sYxT/FfyUBm7suoYzqcTm100zE
	 XfLL8fStguoNHs+BHoIqTlTeVA1vBim07MfDXNPQxGHqxXPV1ei09Hn2O3dAg+WUWo
	 3fX1gMXlDq2FwQxuV+QofUDeZ521BsWQKKPRzMyX8dOFiUbqJoMbB5zUSyXIauuHwG
	 IjVdIk9e5tmvDfI7GGLUIeEEfOGYqOyyUE4AwXGmF/EDeY7J3XMuijKET9MpgLM+B1
	 AZoO9P7V5uiVw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9002240A16;
	Sat,  6 Dec 2025 15:52:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D51D11A9
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Dec 2025 15:52:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BB34860A40
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Dec 2025 15:52:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KufvSnPDlFlf for <intel-wired-lan@lists.osuosl.org>;
 Sat,  6 Dec 2025 15:52:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=35.155.198.111;
 helo=pdx-out-009.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=428ebcc12=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7C4C260A38
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C4C260A38
Received: from pdx-out-009.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-009.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [35.155.198.111])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7C4C260A38
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Dec 2025 15:52:06 +0000 (UTC)
X-CSE-ConnectionGUID: hrx9Wn57TyWis9ZAvPSEzQ==
X-CSE-MsgGUID: Hku5RtYaSh2xWEo4Pcj7hA==
X-IronPort-AV: E=Sophos;i="6.20,255,1758585600"; 
   d="scan'208";a="8458722"
Received: from ip-10-5-6-203.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.6.203])
 by internal-pdx-out-009.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Dec 2025 15:52:03 +0000
Received: from EX19MTAUWB002.ant.amazon.com [205.251.233.111:30654]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.42.136:2525]
 with esmtp (Farcaster)
 id 3bbfd3c3-423c-4d08-9481-cf73ea8af8cc; Sat, 6 Dec 2025 15:52:03 +0000 (UTC)
X-Farcaster-Flow-ID: 3bbfd3c3-423c-4d08-9481-cf73ea8af8cc
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB002.ant.amazon.com (10.250.64.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.29;
 Sat, 6 Dec 2025 15:51:58 +0000
Received: from b0be8375a521.amazon.com (10.37.245.11) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.29;
 Sat, 6 Dec 2025 15:51:55 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Jedrzej
 Jagielski" <jedrzej.jagielski@intel.com>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>, Stefan Wegrzyn <stefan.wegrzyn@intel.com>,
 <kohei.enju@gmail.com>, Kohei Enju <enjuk@amazon.com>
Date: Sun, 7 Dec 2025 00:51:27 +0900
Message-ID: <20251206155146.95857-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.245.11]
X-ClientProxiedBy: EX19D046UWA004.ant.amazon.com (10.13.139.76) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1765036326; x=1796572326;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OqhJCLL3Pwz/+JDuot93iS7Im0pUDlagFH9IXq0WS5A=;
 b=ZzvAZ0HKTbpo93N691f7VqhMIXk8uMAF748Aa4pCdKgnQd/RIEMSwRRU
 jK92asP2IUaZ9/wLwxTkZZBcI3r41asUD1iyXKi7NCAn+Y3GsYn148STp
 4PUNqvbLRxuQZrt3MJDIs4aSdXyDIjwzcutjtPL3/N3nV6q5j4L8+yWs2
 79GQ1VxgwcV2ESDjq46h0BEbyc9ER1kQmOf/F2GW7lwEU+Zs/D9gFQm0y
 cMlAj6ctimy3jNbZawDHqotUKV1M4sm8bQffsJydGBfz9OB+vVVo6DjdK
 x76dyk+pIAzWAzhiMdAfoydzCLSv28sFkoCHViZOgu1bn3xt2sNhGILih
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=ZzvAZ0HK
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: fix memory leaks in
 ixgbe_recovery_probe()
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

ixgbe_recovery_probe() does not free the following resources in its
error path, unlike ixgbe_probe():
- adapter->io_addr
- adapter->jump_tables[0]
- adapter->mac_table
- adapter->rss_key
- adapter->af_xdp_zc_qps

The leaked MMIO region can be observed in /proc/vmallocinfo, and the
remaining leaks are reported by kmemleak.

Free these allocations and unmap the MMIO region on failure to avoid the
leaks.

Fixes: 29cb3b8d95c7 ("ixgbe: add E610 implementation of FW recovery mode")
Signed-off-by: Kohei Enju <enjuk@amazon.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 4af3b3e71ff1..1bfec3fffae0 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -11508,6 +11508,11 @@ static int ixgbe_recovery_probe(struct ixgbe_adapter *adapter)
 	mutex_destroy(&adapter->hw.aci.lock);
 	ixgbe_release_hw_control(adapter);
 clean_up_probe:
+	iounmap(adapter->io_addr);
+	kfree(adapter->jump_tables[0]);
+	kfree(adapter->mac_table);
+	kfree(adapter->rss_key);
+	bitmap_free(adapter->af_xdp_zc_qps);
 	disable_dev = !test_and_set_bit(__IXGBE_DISABLED, &adapter->state);
 	free_netdev(netdev);
 	devlink_free(adapter->devlink);
-- 
2.52.0

