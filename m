Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EA996A181
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Sep 2024 17:02:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7E48606B8;
	Tue,  3 Sep 2024 15:02:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kk7UFMo6UO-f; Tue,  3 Sep 2024 15:02:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 06C21606C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725375747;
	bh=SWdOw87/+51iqg586AVxL9Z/wKo8wamb0wgkXwwaRE0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Cgu4mA9zI+57h9918ZuS8w4dCM/NKJKFSrhtaB8dZYQH341APVvPQybnlx1BEJT15
	 RUVCtahCOmBQ0HoX4kotUL+BMc+iJZbA1vVD9g4bufqfp+r1hQhMKeym0FXUvi3/70
	 KpbS5zx9R2l3aagke6ahm+lVlKgOwgH4N/IdRfwZTzviCDwWeHxpZqVzobSoJb4pat
	 yX9yDDKYZ5Gr1wHVYa6i8BXAdF4Kq0sbuglrjwuop0WPQCzUGQnci9PmjiAMi+xtTs
	 9gIDv0aMu7pXoE9jN3WZm8uolEXW0TVxPIsgezNx7izYA98PScdGS6FWkLFTZKzyFT
	 BbVkmPKiRXdJg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 06C21606C7;
	Tue,  3 Sep 2024 15:02:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E698A1BF42C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 06:15:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D342560673
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 06:15:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QBJaeeKWpV27 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Sep 2024 06:15:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.119.213.152;
 helo=smtp-fw-52003.amazon.com;
 envelope-from=prvs=9686ec0e1=takamitz@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D8A8A6062E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D8A8A6062E
Received: from smtp-fw-52003.amazon.com (smtp-fw-52003.amazon.com
 [52.119.213.152])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D8A8A6062E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 06:15:40 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="6.10,195,1719878400"; d="scan'208";a="22718195"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO
 smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.43.8.6])
 by smtp-border-fw-52003.iad7.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Sep 2024 06:15:39 +0000
Received: from EX19MTAUWC001.ant.amazon.com [10.0.21.151:51579]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.21.120:2525]
 with esmtp (Farcaster)
 id f0cf710c-b7a4-4e55-bfa9-c836fc843b9b; Mon, 2 Sep 2024 06:15:38 +0000 (UTC)
X-Farcaster-Flow-ID: f0cf710c-b7a4-4e55-bfa9-c836fc843b9b
Received: from EX19D005ANA004.ant.amazon.com (10.37.240.178) by
 EX19MTAUWC001.ant.amazon.com (10.250.64.174) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.34;
 Mon, 2 Sep 2024 06:15:37 +0000
Received: from 682f678c4465.ant.amazon.com (10.37.244.7) by
 EX19D005ANA004.ant.amazon.com (10.37.240.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.35;
 Mon, 2 Sep 2024 06:15:33 +0000
From: Takamitsu Iwai <takamitz@amazon.co.jp>
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "Przemek
 Kitszel" <przemyslaw.kitszel@intel.com>
Date: Mon, 2 Sep 2024 15:14:54 +0900
Message-ID: <20240902061454.85744-1-takamitz@amazon.co.jp>
X-Mailer: git-send-email 2.39.3 (Apple Git-145)
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.7]
X-ClientProxiedBy: EX19D046UWB001.ant.amazon.com (10.13.139.187) To
 EX19D005ANA004.ant.amazon.com (10.37.240.178)
X-Mailman-Approved-At: Tue, 03 Sep 2024 15:02:25 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.co.jp; i=@amazon.co.jp; q=dns/txt;
 s=amazon201209; t=1725257741; x=1756793741;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SWdOw87/+51iqg586AVxL9Z/wKo8wamb0wgkXwwaRE0=;
 b=oRNh32krKN36oWobEo1OnZ2TVzsrmRkxOBjQ4+SaMWWRD7Szo8L3/7xP
 t2s6z2i3TBxrpNO/HIZgNvvsxY1O3g0aV3NYswz6bMVx2BL32kwfkGuOv
 TmVBkU1C5zA28Hm+VwvQfACnC0jaC7MrN2ltumma71nCcvbXAPauCAfQM
 8=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.co.jp
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amazon.co.jp header.i=@amazon.co.jp header.a=rsa-sha256
 header.s=amazon201209 header.b=oRNh32kr
Subject: [Intel-wired-lan] [PATCH v1 net-next] e1000e: Remove duplicated
 writel() in e1000_configure_tx/rx()
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Takamitsu Iwai <takamitz@amazon.co.jp>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Duplicated register initialization codes exist in e1000_configure_tx()
and e1000_configure_rx().

For example, writel(0, tx_ring->head) writes 0 to tx_ring->head, which
is adapter->hw.hw_addr + E1000_TDH(0).

This initialization is already done in ew32(TDH(0), 0).

ew32(TDH(0), 0) is equivalent to __ew32(hw, E1000_TDH(0), 0). It
executes writel(0, hw->hw_addr + E1000_TDH(0)). Since variable hw is
set to &adapter->hw, it is equal to writel(0, tx_ring->head).

We can remove similar four writel() in e1000_configure_tx() and
e1000_configure_rx().

commit 0845d45e900c ("e1000e: Modify Tx/Rx configurations to avoid
null pointer dereferences in e1000_open") has introduced these
writel(). This commit moved register writing to
e1000_configure_tx/rx(), and as result, it caused duplication in
e1000_configure_tx/rx().

Signed-off-by: Takamitsu Iwai <takamitz@amazon.co.jp>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 360ee26557f7..cf352befaeb9 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -2928,11 +2928,8 @@ static void e1000_configure_tx(struct e1000_adapter *adapter)
 	tx_ring->head = adapter->hw.hw_addr + E1000_TDH(0);
 	tx_ring->tail = adapter->hw.hw_addr + E1000_TDT(0);
 
-	writel(0, tx_ring->head);
 	if (adapter->flags2 & FLAG2_PCIM2PCI_ARBITER_WA)
 		e1000e_update_tdt_wa(tx_ring, 0);
-	else
-		writel(0, tx_ring->tail);
 
 	/* Set the Tx Interrupt Delay register */
 	ew32(TIDV, adapter->tx_int_delay);
@@ -3253,11 +3250,8 @@ static void e1000_configure_rx(struct e1000_adapter *adapter)
 	rx_ring->head = adapter->hw.hw_addr + E1000_RDH(0);
 	rx_ring->tail = adapter->hw.hw_addr + E1000_RDT(0);
 
-	writel(0, rx_ring->head);
 	if (adapter->flags2 & FLAG2_PCIM2PCI_ARBITER_WA)
 		e1000e_update_rdt_wa(rx_ring, 0);
-	else
-		writel(0, rx_ring->tail);
 
 	/* Enable Receive Checksum Offload for TCP and UDP */
 	rxcsum = er32(RXCSUM);
-- 
2.39.3 (Apple Git-145)

