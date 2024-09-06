Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 664B296E79B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Sep 2024 04:18:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 832004032A;
	Fri,  6 Sep 2024 02:18:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C81EDpTUREUq; Fri,  6 Sep 2024 02:18:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C866D40374
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725589091;
	bh=5TT8xdsCmk+8IqEfUImoDN2/EEbxvgsTV+2khwPLNfo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=8DjtGZzssckVcmLwHwJ4CO/kLr+26pu+KXkPlqtFwZ2WQ0/SMrKUuXfoXRRunkskH
	 +B+uf62pCdRZP8kmyOo9ha7LH7gqZuwrbWG9hM1CRqVGzKRp7gvHxayb6YZfV3TKan
	 /uIN7sOltZ1wPmMuJfLkLfyHlUwa8cUxJhxb3YnfCMMwpgN7dx8F5Gu/8DEX4osVxB
	 PWyCd0KCJ5BmohQx2fsYxuqOLnWFGuRREh7UkLlYnoSNuNv3mJb9a6Dv6QDSht3ya4
	 vXqxyUvps48jdspl7kh5vMEaw4WNNZGNGwGBunjYvjq4T85sDNKkqO+daW+l8FWd2N
	 oQTK5oejdNC5A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C866D40374;
	Fri,  6 Sep 2024 02:18:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 866201BF398
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 02:18:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6CFDE60B4A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 02:18:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xD9AuioIrWIf for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Sep 2024 02:18:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=207.171.190.10;
 helo=smtp-fw-33001.amazon.com;
 envelope-from=prvs=972109e13=takamitz@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6E66060B3A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E66060B3A
Received: from smtp-fw-33001.amazon.com (smtp-fw-33001.amazon.com
 [207.171.190.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6E66060B3A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 02:18:01 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="6.10,206,1719878400"; d="scan'208";a="366478080"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO
 smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.43.8.6])
 by smtp-border-fw-33001.sea14.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Sep 2024 02:18:00 +0000
Received: from EX19MTAUWA002.ant.amazon.com [10.0.38.20:37237]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.61.84:2525]
 with esmtp (Farcaster)
 id 993dfbd4-fd5b-473d-beb9-0afd4cb6a4fb; Fri, 6 Sep 2024 02:17:58 +0000 (UTC)
X-Farcaster-Flow-ID: 993dfbd4-fd5b-473d-beb9-0afd4cb6a4fb
Received: from EX19D005ANA004.ant.amazon.com (10.37.240.178) by
 EX19MTAUWA002.ant.amazon.com (10.250.64.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.34;
 Fri, 6 Sep 2024 02:17:58 +0000
Received: from 682f678c4465.ant.amazon.com (10.118.248.64) by
 EX19D005ANA004.ant.amazon.com (10.37.240.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.35;
 Fri, 6 Sep 2024 02:17:54 +0000
From: Takamitsu Iwai <takamitz@amazon.co.jp>
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "Przemek
 Kitszel" <przemyslaw.kitszel@intel.com>
Date: Fri, 6 Sep 2024 11:17:19 +0900
Message-ID: <20240906021719.37754-1-takamitz@amazon.co.jp>
X-Mailer: git-send-email 2.39.3 (Apple Git-145)
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.118.248.64]
X-ClientProxiedBy: EX19D031UWA002.ant.amazon.com (10.13.139.96) To
 EX19D005ANA004.ant.amazon.com (10.37.240.178)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.co.jp; i=@amazon.co.jp; q=dns/txt;
 s=amazon201209; t=1725589083; x=1757125083;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5TT8xdsCmk+8IqEfUImoDN2/EEbxvgsTV+2khwPLNfo=;
 b=goESFkrP/zgnlN1YAm5LKWAjYfboqm6jDKP2GkovOc7yZ9XBRWkiUGSu
 b5RqK5X+IKPIFI3WHuLlK4jGZgXzL1vRSkDt0V5UEcX0f5FXzKP8bKNDn
 kRPgXm0pH7T29CbJcb8YJSbap77KNWsOWy4wJSodCneG/+quhyC/s/Q1V
 I=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.co.jp
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amazon.co.jp header.i=@amazon.co.jp header.a=rsa-sha256
 header.s=amazon201209 header.b=goESFkrP
Subject: [Intel-wired-lan] [PATCH v2 net-next] e1000e: Remove duplicated
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
Cc: netdev@vger.kernel.org, Kohei Enju <enjuk@amazon.com>,
 intel-wired-lan@lists.osuosl.org, Takamitsu Iwai <takamitz@amazon.co.jp>
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

This patch modifies the sequence of register writing, but removing
these writes is safe because the same writes were already there before
the commit.

I also have checked the datasheets [0] [1] and have not found any
description that we need to write RDH, RDT, TDH and TDT registers
twice at initialization. Furthermore, we have tested this patch on an
I219-V device physically.

Link: https://www.intel.com/content/dam/www/public/us/en/documents/datasheets/82577-gbe-phy-datasheet.pdf [0]
Link: https://www.intel.com/content/www/us/en/content-details/613460/intel-82583v-gbe-controller-datasheet.html [1]
Tested-by: Kohei Enju <enjuk@amazon.com>
Signed-off-by: Takamitsu Iwai <takamitz@amazon.co.jp>
---

v1->v2
modify commit message to explain the reason why we can remove these writes safely.

v1 link
https://lore.kernel.org/netdev/20240902061454.85744-1-takamitz@amazon.co.jp/

 drivers/net/ethernet/intel/e1000e/netdev.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index da5c59daf8ba..89c57be89c88 100644
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
2.40.1

