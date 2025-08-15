Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 76983B27924
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Aug 2025 08:27:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C20460C24;
	Fri, 15 Aug 2025 06:27:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 06_bSJtCUqc4; Fri, 15 Aug 2025 06:27:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A6E4660C21
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755239222;
	bh=W+4B1PE8JjAVZ4KWC2fx7ebRmgw7WuiLWGG2j2I/AbQ=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Qy41plG9L8qyhK/rjgy8XOiL1bk3CHNo+EbsOV/lguNMwl6GVQWOKUjSpGq40cNFU
	 mfxQ5ccl3Ow8Aniby/AABkl2aX6wKXNbpGvOhD/aGSPc+HpqxKUKN7Y8KBa3w0OQAd
	 518CFD6RIgUzY1CJC+fvDGEL5DBWKaPHLsXedZ8BAfrlbqPMGGK3JJ3I9cpgQXbQwV
	 sv7/xyLtsDX6qiOl/H8QYf+4murLryiL1QCut8hnOSZFEJlBXOhgfFgbjBeUuqoCzz
	 OA0meJwhiIzG9VpojYigrzG81JsYgh6gYwBgGqRvQP0pT/OBEUn7K9mrfEj7a5TL0z
	 IsXH4aaEY2how==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A6E4660C21;
	Fri, 15 Aug 2025 06:27:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 65AC91BA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 06:27:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5792A40905
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 06:27:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I4aLwi3wT7rP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Aug 2025 06:27:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.119.213.154;
 helo=smtp-fw-52004.amazon.com; envelope-from=prvs=3151d1874=enjuk@amazon.co.jp;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 949C540965
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 949C540965
Received: from smtp-fw-52004.amazon.com (smtp-fw-52004.amazon.com
 [52.119.213.154])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 949C540965
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 06:26:59 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="6.17,290,1747699200"; d="scan'208";a="322826890"
Received: from iad12-co-svc-p1-lb1-vlan2.amazon.com (HELO
 smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.43.8.2])
 by smtp-border-fw-52004.iad7.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Aug 2025 06:26:57 +0000
Received: from EX19MTAUWA002.ant.amazon.com [10.0.21.151:10183]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.5.153:2525]
 with esmtp (Farcaster)
 id 6ae1a36c-b381-4393-8862-bb5b35eeb403; Fri, 15 Aug 2025 06:26:56 +0000 (UTC)
X-Farcaster-Flow-ID: 6ae1a36c-b381-4393-8862-bb5b35eeb403
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWA002.ant.amazon.com (10.250.64.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Fri, 15 Aug 2025 06:26:56 +0000
Received: from b0be8375a521.amazon.com (10.37.245.10) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.17;
 Fri, 15 Aug 2025 06:26:54 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Alexander Duyck
 <alexander.h.duyck@intel.com>, <kohei.enju@gmail.com>, Kohei Enju
 <enjuk@amazon.com>
Date: Fri, 15 Aug 2025 15:26:31 +0900
Message-ID: <20250815062645.93732-2-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.245.10]
X-ClientProxiedBy: EX19D036UWC002.ant.amazon.com (10.13.139.242) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1755239221; x=1786775221;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=W+4B1PE8JjAVZ4KWC2fx7ebRmgw7WuiLWGG2j2I/AbQ=;
 b=r24eQSlvC0/8EHEZplbYK+D5TF9VI50jC3IhE8waxm4+iICGnBDdF/EP
 5riHvaYaaqKYYVSSwewuKh0ZjL9SfTnOMJGYbDYyVCma88ZzipuQhxTAy
 BdxTOL2+Fn5M+kMEDegybyx1SNKI0Yi0yseoogJ5mJ4N1CBgK+7a6eflc
 XX9uYiTOnrXV5pKVLZkK2GffFIxxzrtgfM4AdyEzN+JMnvUUfqQ4URlNx
 o0qoYyQ7fSA4udFfSUY9DStz9hUACs6Fq6ADBeyjTu8nWQRobeVrw2Ezr
 N+/zrPsQ6Ay2eXUAeWUyByZN3RFMycwH9FX2zX12waZFBhqB2BL73HwlE
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=r24eQSlv
Subject: [Intel-wired-lan] [PATCH v1 iwl-net] igb: fix link test skipping
 when interface is admin down
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

The igb driver incorrectly skips the link test when the network
interface is admin down (if_running == false), causing the test to
always report PASS regardless of the actual physical link state.

This behavior is inconsistent with other drivers (e.g. i40e, ice, ixgbe,
etc.) which correctly test the physical link state regardless of admin
state.
Remove the if_running check to ensure link test always reflects the
physical link state.

Fixes: 8d420a1b3ea6 ("igb: correct link test not being run when link is down")
Signed-off-by: Kohei Enju <enjuk@amazon.com>
---
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index ca6ccbc13954..6412c84e2d17 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -2081,11 +2081,8 @@ static void igb_diag_test(struct net_device *netdev,
 	} else {
 		dev_info(&adapter->pdev->dev, "online testing starting\n");
 
-		/* PHY is powered down when interface is down */
-		if (if_running && igb_link_test(adapter, &data[TEST_LINK]))
+		if (igb_link_test(adapter, &data[TEST_LINK]))
 			eth_test->flags |= ETH_TEST_FL_FAILED;
-		else
-			data[TEST_LINK] = 0;
 
 		/* Online tests aren't run; pass by default */
 		data[TEST_REG] = 0;
-- 
2.48.1

