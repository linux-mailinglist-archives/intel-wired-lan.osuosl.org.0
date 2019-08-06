Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 833228394C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2019 21:04:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 329E22202C;
	Tue,  6 Aug 2019 19:04:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EJ6o8oU8FEkh; Tue,  6 Aug 2019 19:04:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4AF802201C;
	Tue,  6 Aug 2019 19:04:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ADE7C1BF20F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2019 09:59:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A9FAF82580
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2019 09:59:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2vxbuEOogZoP for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Aug 2019 09:59:01 +0000 (UTC)
X-Greylist: delayed 00:21:36 by SQLgrey-1.7.6
Received: from m4a0040g.houston.softwaregrp.com
 (m4a0040g.houston.softwaregrp.com [15.124.2.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 14A6482441
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2019 09:58:59 +0000 (UTC)
Received: FROM m4a0040g.houston.softwaregrp.com (15.120.17.146) BY
 m4a0040g.houston.softwaregrp.com WITH ESMTP; 
 Tue,  6 Aug 2019 09:58:46 +0000
Received: from M4W0335.microfocus.com (2002:f78:1193::f78:1193) by
 M4W0334.microfocus.com (2002:f78:1192::f78:1192) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Tue, 6 Aug 2019 09:29:53 +0000
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (15.124.8.13) by
 M4W0335.microfocus.com (15.120.17.147) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10 via Frontend Transport; Tue, 6 Aug 2019 09:29:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UmLgRLBKqW+rOdTe67HtDaDSo4kne+jTUY1qM1/KhxiOsvm/PQa+jW3x5RT9hdYTqJ9BvmueiImDZF6x7o15/DRg/4Hs0AgTASlI3Wyp0mykKPZexcUT3mAsSpusnM1LNwT7LeMdqnnxt4jfvF7r/SlfqxP82P29LliZWQbPiZ7ATJlJe+mrsNmswHAS9LNpxhtBVBGbEormbG14eJe3ewSab4qye6YIEWxTPeWlM1kdo3yU8n6krOMO00j7AH9GSyQxTBIp/fgXIM3ZqhCJZa37lAeMtrAfnsJREYOAVi+afNOdTj0180SC6JmcgH+Yht8ZIgxBduPE/H1MUgS0nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sBs3CVgYE8FvQcd4gJi99UjI8QUm3tBViDtDJy1n5zo=;
 b=JlHqudZLoFSvCqTkqK+pM78TpP5NPdDGIoWEOG5oiySiACiRgIHy3i6AhzWqIfp2SaoMCs61zTMP1BfdODH1wApFjPLguocaY3NRldzKf0ExZ4UsMKzWirQAaG99g/HqUpqDCi+6CTPr+RrYUgHD+GPCmfRV6aWvxM0pRyd3Tbm4pBE0MYb344a5YFBN4+EwVv3h4tzejK4roGXDTMHsTxe3jBPa4ZXxS1p1H+UhEqydx9FH0EpinnwF/cMpfYNBL28wnjULsJTf0pJsUshkl0v1DBwkoyMyXud5mFkBn3yx1IRdVxvA8k7nmiZ9djJqJ0GbfohLI60t+jkhKz0zNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=suse.com;dmarc=pass action=none header.from=suse.com;dkim=pass
 header.d=suse.com;arc=none
Received: from BY5PR18MB3187.namprd18.prod.outlook.com (10.255.139.221) by
 BY5PR18MB3332.namprd18.prod.outlook.com (10.255.136.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Tue, 6 Aug 2019 09:29:51 +0000
Received: from BY5PR18MB3187.namprd18.prod.outlook.com
 ([fe80::103a:94a8:b58d:3eac]) by BY5PR18MB3187.namprd18.prod.outlook.com
 ([fe80::103a:94a8:b58d:3eac%4]) with mapi id 15.20.2136.018; Tue, 6 Aug 2019
 09:29:51 +0000
From: Firo Yang <firo.yang@suse.com>
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH 1/1] ixgbe: sync the first fragment unconditionally
Thread-Index: AQHVTDl/jxF9xQFZskKh/MKHy5UJEA==
Date: Tue, 6 Aug 2019 09:29:51 +0000
Message-ID: <20190806092919.13211-1-firo.yang@suse.com>
Accept-Language: en-US, en-GB, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MAXPR0101CA0044.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:d::30) To BY5PR18MB3187.namprd18.prod.outlook.com
 (2603:10b6:a03:196::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=firo.yang@suse.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.16.4
x-originating-ip: [45.122.156.254]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 61dfc699-94cb-4175-8931-08d71a50a1be
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BY5PR18MB3332; 
x-ms-traffictypediagnostic: BY5PR18MB3332:
x-microsoft-antispam-prvs: <BY5PR18MB3332711D217D52CD5CAEAE4088D50@BY5PR18MB3332.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0121F24F22
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(396003)(136003)(376002)(346002)(39860400002)(189003)(199004)(71190400001)(2906002)(53936002)(71200400001)(316002)(86362001)(50226002)(52116002)(25786009)(6506007)(44832011)(2616005)(99286004)(386003)(486006)(26005)(54906003)(36756003)(256004)(476003)(102836004)(107886003)(7736002)(3846002)(6116002)(4326008)(6916009)(5660300002)(6436002)(186003)(1730700003)(81156014)(81166006)(2351001)(8676002)(2501003)(14454004)(6512007)(66556008)(64756008)(66446008)(68736007)(8936002)(1076003)(305945005)(478600001)(66066001)(6486002)(66476007)(5640700003)(66946007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BY5PR18MB3332;
 H:BY5PR18MB3187.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: suse.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: OuYlXj8AaMgytIvesPEWbEoZTpe9zIwWxwbHIWIwD55XM3gzGjYIabhmn0cbik2rXk8gdjma4cGONDEFKp9J2mL1qURCRXFFGu7+Kq5vixc+abGctKy4jbrwsqbXb/ms2FJEUBv9fGTuECoZWHAYouyHQMR4S30+J8HIhxPgB9td3q8KwASNqTzEbfy8AwBMUWyZkPzDGXoSnWye3FVUtxX4BQbcwUhRhhRdXVP/WEL0k3RpveZh/8gXtmuLW5lJ0dG4+RCIaJWfBUO54WnIk9I7XZeKnB+RZe3zuSQBufL92jOgTaqb1MzHTq/B4VEe7z+Lt4U0bX2Fc+Y3bIkmBByEE5vDIwsXkyMdLPnUv5wTRL8Tx2hRTpEpNbLXEWZwQq38EE9x7oUgZ91jBlrChkPmQtuECBPvAFM9NEEzN9I=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 61dfc699-94cb-4175-8931-08d71a50a1be
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2019 09:29:51.2287 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: firo.yang@suse.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR18MB3332
X-OriginatorOrg: suse.com
X-Mailman-Approved-At: Tue, 06 Aug 2019 19:04:35 +0000
Subject: [Intel-wired-lan] [PATCH 1/1] ixgbe: sync the first fragment
 unconditionally
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Firo Yang <firo.yang@suse.com>, "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In Xen environment, if Xen-swiotlb is enabled, ixgbe driver
could possibly allocate a page, DMA memory buffer, for the first
fragment which is not suitable for Xen-swiotlb to do DMA operations.
Xen-swiotlb will internally allocate another page for doing DMA
operations. It requires syncing between those two pages. Otherwise,
we may get an incomplete skb. To fix this problem, sync the first
fragment no matter the first fargment is makred as "page_released"
or not.

Signed-off-by: Firo Yang <firo.yang@suse.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index cbaf712d6529..200de9838096 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -1825,13 +1825,7 @@ static void ixgbe_pull_tail(struct ixgbe_ring *rx_ring,
 static void ixgbe_dma_sync_frag(struct ixgbe_ring *rx_ring,
 				struct sk_buff *skb)
 {
-	/* if the page was released unmap it, else just sync our portion */
-	if (unlikely(IXGBE_CB(skb)->page_released)) {
-		dma_unmap_page_attrs(rx_ring->dev, IXGBE_CB(skb)->dma,
-				     ixgbe_rx_pg_size(rx_ring),
-				     DMA_FROM_DEVICE,
-				     IXGBE_RX_DMA_ATTR);
-	} else if (ring_uses_build_skb(rx_ring)) {
+	if (ring_uses_build_skb(rx_ring)) {
 		unsigned long offset = (unsigned long)(skb->data) & ~PAGE_MASK;
 
 		dma_sync_single_range_for_cpu(rx_ring->dev,
@@ -1848,6 +1842,14 @@ static void ixgbe_dma_sync_frag(struct ixgbe_ring *rx_ring,
 					      skb_frag_size(frag),
 					      DMA_FROM_DEVICE);
 	}
+
+	/* If the page was released, just unmap it. */
+	if (unlikely(IXGBE_CB(skb)->page_released)) {
+		dma_unmap_page_attrs(rx_ring->dev, IXGBE_CB(skb)->dma,
+				     ixgbe_rx_pg_size(rx_ring),
+				     DMA_FROM_DEVICE,
+				     IXGBE_RX_DMA_ATTR);
+	}
 }
 
 /**
-- 
2.16.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
