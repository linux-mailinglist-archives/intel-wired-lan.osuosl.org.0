Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C6337858D7
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2019 06:04:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 765E386704;
	Thu,  8 Aug 2019 04:04:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zsjv0PKhqUKU; Thu,  8 Aug 2019 04:04:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F032386B47;
	Thu,  8 Aug 2019 04:04:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A5FEB1BF295
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 04:04:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 89F5C203E6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 04:04:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DxabIsYLhx38 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2019 04:04:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from m9a0001g.houston.softwaregrp.com
 (m9a0001g.houston.softwaregrp.com [15.124.64.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 176862001C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 04:04:23 +0000 (UTC)
Received: FROM m9a0001g.houston.softwaregrp.com (15.121.0.191) BY
 m9a0001g.houston.softwaregrp.com WITH ESMTP; 
 Thu,  8 Aug 2019 04:04:11 +0000
Received: from M9W0068.microfocus.com (2002:f79:bf::f79:bf) by
 M9W0068.microfocus.com (2002:f79:bf::f79:bf) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Thu, 8 Aug 2019 04:03:51 +0000
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (15.124.72.13) by
 M9W0068.microfocus.com (15.121.0.191) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10 via Frontend Transport; Thu, 8 Aug 2019 04:03:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mn2RNm87rChHMaGS6Bw15fzuMXdP0bD6CW4/cazTQBmQEOJw7WcktRvikZZHJgIbuqJn5cMcI8OnM+BvzfcmEUrrNvLrvfiKhvtXEFQVBvvV2lqenhGK7gt1mijUQahGSVnvY5r+FYWZ8cfEgenDEA4DlQvNR4UrYb8tEH8htTqIYUqL7VvNv21jiyUyVl+0hzlVEUVT5JMuWg0jEF7iMm5Xoum4Uf/cgrx/bdf6IJOvjX8vWV/Nz5LRgKKZyAFP0wgnULGHe6IiHXPUNfI23AteRcvoO9TVIsbBhHpJv+3L3lGue1vBrcQjHmIrgVsFIbgOgRr1wdcbs2FzOqQA0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X5jJ4FAwXdNpYOZep35e6eOMfLUlDHQV5HsZDLk4t0A=;
 b=LnO4c6fRbo/emkRHbrSFLUixJ7SreeKK0+TQzbdyRUqf4IvX/Hye1dHA7YdYDXS3pTj3QB58jetiuceuu1qOp75wi0lum9IP/8cfS89Zpt7yN2kWNr2unOxRxB/6SOQbgn8h3DMkcciJ6RFa6rAUKPs0dBi1MN3BzttJlBzlz12ONW8ymZZhSqjsGAU9zPAdG17plAvHR5Egz3iFQzQlDdI4A60ZOGw9e6qTbM4KFlOmqN2sA9AetV8IYcwtb7jpELbhj+hEKp3WOG7dr/TrqmeuSCVaIMn6Q5Bi+mwnPkKfRQ5akJfjuoZ9ZsczrqXcDYCJwFNKFxUjF6Lw+bDeKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from BY5PR18MB3187.namprd18.prod.outlook.com (10.255.139.221) by
 BY5PR18MB3121.namprd18.prod.outlook.com (10.255.136.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.14; Thu, 8 Aug 2019 04:03:50 +0000
Received: from BY5PR18MB3187.namprd18.prod.outlook.com
 ([fe80::103a:94a8:b58d:3eac]) by BY5PR18MB3187.namprd18.prod.outlook.com
 ([fe80::103a:94a8:b58d:3eac%4]) with mapi id 15.20.2157.015; Thu, 8 Aug 2019
 04:03:49 +0000
From: Firo Yang <firo.yang@suse.com>
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH v3 1/1] ixgbe: sync the first fragment unconditionally
Thread-Index: AQHVTZ5IOEeUaPwZuEuqOf/M8/vBig==
Date: Thu, 8 Aug 2019 04:03:49 +0000
Message-ID: <20190808040312.21719-1-firo.yang@suse.com>
Accept-Language: en-US, en-GB, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR01CA0148.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::18) To BY5PR18MB3187.namprd18.prod.outlook.com
 (2603:10b6:a03:196::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=firo.yang@suse.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.16.4
x-originating-ip: [45.122.156.254]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 10597ca8-ca5e-4448-299d-08d71bb56b05
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BY5PR18MB3121; 
x-ms-traffictypediagnostic: BY5PR18MB3121:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR18MB31216BCE628A437990EFF5C788D70@BY5PR18MB3121.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1468;
x-forefront-prvs: 012349AD1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(396003)(366004)(136003)(39860400002)(346002)(189003)(199004)(86362001)(5660300002)(478600001)(2501003)(54906003)(7736002)(316002)(1076003)(50226002)(81166006)(81156014)(53936002)(305945005)(3846002)(8936002)(6116002)(66476007)(8676002)(14454004)(64756008)(66446008)(1730700003)(66946007)(66556008)(52116002)(4326008)(99286004)(486006)(26005)(386003)(102836004)(6506007)(2351001)(2616005)(44832011)(476003)(25786009)(256004)(14444005)(107886003)(6916009)(5640700003)(71200400001)(6512007)(186003)(71190400001)(6486002)(2906002)(36756003)(6436002)(66066001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BY5PR18MB3121;
 H:BY5PR18MB3187.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: suse.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: tdjIGv1cEHaQ3jOgiuyHhi8vjgzlkxwpjXxz3X36ykrnTi4X8UVWUU8E2rXDV9m2qsDDACNVR5Z3DBtjYC1CEgHduPPOIUw9XLrK4S2dWUcS/FCH/tJIBbPOlAiuN/ffkLJalcgNVVBDPAalD/XlZJkT7xwbX0CSpdAzgpjj2cD5SpVthkkYBEY7kzQ/O9PEv3i+qMh6ov2nrRNhWP+Tb0qL3A4ZDKGXIuuaAkydjbbUZGqtt/EdGvEPzOPXtMK+IgJmZ7KoCMUULXB5asduyVnPMkTIQQg7MnVEHYHdTEmO1msrfXfUwVUkRfI4j/v+Br74qdbuvdPIWoBB99BB/rLB8F+8EXehtEDnOvOH2vMuS5IPyjWQhahxzHGskbXofL0wnJfGUtyd9E5FBFwcM6U2UGnxUOIWZo4chgYBknU=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 10597ca8-ca5e-4448-299d-08d71bb56b05
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2019 04:03:49.8613 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GUMzrQGjKdsSItmluoQ/QLUJBptLOPq7+FmrN5k40THRK7C2/ihYKjgjJyaxnvqv8b1zk3wtnBZLGf2mKPVZEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR18MB3121
X-OriginatorOrg: suse.com
Subject: [Intel-wired-lan] [PATCH v3 1/1] ixgbe: sync the first fragment
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
Cc: "maciejromanfijalkowski@gmail.com" <maciejromanfijalkowski@gmail.com>,
 Firo Yang <firo.yang@suse.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "jian.w.wen@oracle.com" <jian.w.wen@oracle.com>,
 "alexander.h.duyck@linux.intel.com" <alexander.h.duyck@linux.intel.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In Xen environment, if Xen-swiotlb is enabled, ixgbe driver
could possibly allocate a page, DMA memory buffer, for the first
fragment which is not suitable for Xen-swiotlb to do DMA operations.
Xen-swiotlb have to internally allocate another page for doing DMA
operations. This mechanism requires syncing the data from the internal
page to the page which ixgbe sends to upper network stack. However,
since commit f3213d932173 ("ixgbe: Update driver to make use of DMA
attributes in Rx path"), the unmap operation is performed with
DMA_ATTR_SKIP_CPU_SYNC. As a result, the sync is not performed.
Since the sync isn't performed, the upper network stack could receive
a incomplete network packet. By incomplete, it means the linear data
on the first fragment(between skb->head and skb->end) is invalid. So 
we have to copy the data from the internal xen-swiotlb page to the page 
which ixgbe sends to upper network stack through the sync operation.

More details from Alexander Duyck:
Specifically since we are mapping the frame with
DMA_ATTR_SKIP_CPU_SYNC we have to unmap with that as well. As a result
a sync is not performed on an unmap and must be done manually as we
skipped it for the first frag. As such we need to always sync before
possibly performing a page unmap operation.

Fixes: f3213d932173 ("ixgbe: Update driver to make use of DMA
attributes in Rx path")
Reviewed-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
Signed-off-by: Firo Yang <firo.yang@suse.com>
---
Changes from v2:
 * Added details on the problem caused by skipping the sync.
 * Added more explanation from Alexander Duyck.

Changes from v1:
 * Imporved the patch description.
 * Added Reviewed-by: and Fixes: as suggested by Alexander Duyck.

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
