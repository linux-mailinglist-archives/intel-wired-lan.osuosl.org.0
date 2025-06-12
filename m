Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AD07FAD77BE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jun 2025 18:14:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B4C140898;
	Thu, 12 Jun 2025 16:14:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pa2PQnFjtyTx; Thu, 12 Jun 2025 16:14:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D57F24089D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749744842;
	bh=ihkZgVUzQqGvvmt/oKfsiY5SM+COVVcX+bS+R4pesBQ=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=s6d4+lvO/pnTpC1ewg6iWz4JLO2plQE3IxRmTxsqZtMFsQPk9y0SVpskdtr4vzoWA
	 a0KaX1wu3gE8YX2Fg22H1x3cyL6eHBA3EknzFD3xv+wgpMOB6j3Rmqq+gKFgn0tJsG
	 n2Sh3XokzhNlrIwnMCHN6DfrESktDjEEfe3GJ6ZM4zFdG30ZjQXfrCu1rfaM5D0ag7
	 H0U6pqkG4/3A3pf+LkUgu/4uvsInn6x033xviGEr6Rm4PJReLoM8OkaPK7rc1fqvIR
	 nr/NoQN1aFaOwMcl1RJrsWfROxl7L5xwmITUkrGaOOel/foJlqib2ZItdb7hOssdot
	 UN8df/+TbPtgA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D57F24089D;
	Thu, 12 Jun 2025 16:14:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 207B61E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:14:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 125DE838E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:14:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4kXKOI2Tangr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jun 2025 16:14:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=99.78.197.220;
 helo=smtp-fw-80009.amazon.com; envelope-from=prvs=251035ea3=enjuk@amazon.co.jp;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7908283410
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7908283410
Received: from smtp-fw-80009.amazon.com (smtp-fw-80009.amazon.com
 [99.78.197.220])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7908283410
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:14:00 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="6.16,231,1744070400"; d="scan'208";a="210882419"
Received: from pdx4-co-svc-p1-lb2-vlan2.amazon.com (HELO
 smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.25.36.210])
 by smtp-border-fw-80009.pdx80.corp.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jun 2025 16:13:59 +0000
Received: from EX19MTAUWA002.ant.amazon.com [10.0.21.151:58684]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.29.22:2525]
 with esmtp (Farcaster)
 id 95d2bb70-4aa7-4273-81da-24e1eb19dfa0; Thu, 12 Jun 2025 16:13:59 +0000 (UTC)
X-Farcaster-Flow-ID: 95d2bb70-4aa7-4273-81da-24e1eb19dfa0
Received: from EX19D003ANC003.ant.amazon.com (10.37.240.197) by
 EX19MTAUWA002.ant.amazon.com (10.250.64.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Thu, 12 Jun 2025 16:13:59 +0000
Received: from b0be8375a521.amazon.com (10.37.245.11) by
 EX19D003ANC003.ant.amazon.com (10.37.240.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Thu, 12 Jun 2025 16:13:55 +0000
From: Kohei Enju <enjuk@amazon.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Kohei Enju <kohei.enju@gmail.com>, Kohei Enju
 <enjuk@amazon.com>
Date: Fri, 13 Jun 2025 01:13:40 +0900
Message-ID: <20250612161343.66065-2-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.245.11]
X-ClientProxiedBy: EX19D044UWA004.ant.amazon.com (10.13.139.7) To
 EX19D003ANC003.ant.amazon.com (10.37.240.197)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1749744840; x=1781280840;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ihkZgVUzQqGvvmt/oKfsiY5SM+COVVcX+bS+R4pesBQ=;
 b=Ao77tH7ic5k5iEOb+DSCfXndVJaS6DO2F4c1D6XTJgwQui+Ves4Bi95B
 NLqgOJIi5iHTrl3QQrN/7IfE4Y0aBE2TFqEQ1P/SFPo1qzbx8eYHSyDuR
 GhmGGUXyPhqLN6s23r7CDmCYsOxdQ4YgoggmOdYka4jOMx2JBOn/jVvPk
 +7UhhHrNdAzKIU461hufsCIgBb7VbPSAmLhMB9dLLclsqelgjyXvL1Tli
 vXasrW9AAJ9xgAlzZRdi4kNeVk7QhegPEsBxeYquWiB6fA4Xp0S2r5ya1
 kpsp7FodXLckg8J7hfopyCPZqisYlbPoxWmgT55tqxO8ubnV7C4MhuNba
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=Ao77tH7i
Subject: [Intel-wired-lan] [PATCH iwl-next v1] igbvf: remove unused
 interrupt counter fields from struct igbvf_adapter
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

Remove `int_counter0` and `int_counter1` from struct igbvf_adapter since
they are only incremented in interrupt handlers igbvf_intr_msix_rx() and
igbvf_msix_other(), but never read or used anywhere in the driver.

Note that igbvf_intr_msix_tx() does not have similar counter increments,
suggesting that these were likely overlooked during development.

Eliminate the fields and their unnecessary accesses in interrupt
handlers.

Tested-by: Kohei Enju <enjuk@amazon.com>
Signed-off-by: Kohei Enju <enjuk@amazon.com>
---
 drivers/net/ethernet/intel/igbvf/igbvf.h  | 2 --
 drivers/net/ethernet/intel/igbvf/netdev.c | 4 ----
 2 files changed, 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/igbvf/igbvf.h b/drivers/net/ethernet/intel/igbvf/igbvf.h
index ca6e44245a7b..ba9c3fee6da7 100644
--- a/drivers/net/ethernet/intel/igbvf/igbvf.h
+++ b/drivers/net/ethernet/intel/igbvf/igbvf.h
@@ -238,8 +238,6 @@ struct igbvf_adapter {
 	int int_mode;
 	u32 eims_enable_mask;
 	u32 eims_other;
-	u32 int_counter0;
-	u32 int_counter1;
 
 	u32 eeprom_wol;
 	u32 wol;
diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
index beb01248600f..33104408007a 100644
--- a/drivers/net/ethernet/intel/igbvf/netdev.c
+++ b/drivers/net/ethernet/intel/igbvf/netdev.c
@@ -855,8 +855,6 @@ static irqreturn_t igbvf_msix_other(int irq, void *data)
 	struct igbvf_adapter *adapter = netdev_priv(netdev);
 	struct e1000_hw *hw = &adapter->hw;
 
-	adapter->int_counter1++;
-
 	hw->mac.get_link_status = 1;
 	if (!test_bit(__IGBVF_DOWN, &adapter->state))
 		mod_timer(&adapter->watchdog_timer, jiffies + 1);
@@ -899,8 +897,6 @@ static irqreturn_t igbvf_intr_msix_rx(int irq, void *data)
 	struct net_device *netdev = data;
 	struct igbvf_adapter *adapter = netdev_priv(netdev);
 
-	adapter->int_counter0++;
-
 	/* Write the ITR value calculated at the end of the
 	 * previous interrupt.
 	 */
-- 
2.49.0

