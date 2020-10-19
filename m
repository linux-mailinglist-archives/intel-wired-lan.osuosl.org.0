Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 607A6292388
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Oct 2020 10:21:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9A1722036B;
	Mon, 19 Oct 2020 08:21:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u9J3A4gnUYKC; Mon, 19 Oct 2020 08:21:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 09B35203B9;
	Mon, 19 Oct 2020 08:21:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E22E11BF368
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Oct 2020 08:21:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DD22286D5B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Oct 2020 08:21:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tDXuDR1KVu1M for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Oct 2020 08:21:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur05on2106.outbound.protection.outlook.com [40.107.21.106])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 93F3786CE5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Oct 2020 08:21:06 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dYMVhmWAyFPSuNCLJI5ojIGcpzzZWmDOH7j8T023IpXMCdF8wWu5/eqEHaWRvOKRoktiWOo2g36W/QRZ/q3Ib2F5b5RIcBks+vL9MAG8CKCX43ov3ANSMqLZZ5rfZdKRDhQNQqlSTEVuJj7mHaXoZwrvtF9VCn5W2r+8q7C9aOMBLlr8fjU2NYMvAC9L0v6+l8XONmQ6Vx67YQRRrzrQpgYGlPTX7Icko/0kxh/zsQAHCHSikmnhELvHCKvr8ZkyJ3wJPvZROiP8Lb1AZOqCiHJKGwFwa7795gEjpGO+xtVqa6KToCeXWVVHZ9yv8KHWt9yAw7yNWozbrBXkKTrHjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kKsASKRtt4ZRrm6/wCKM85dRjL8wNXrn5nVCKqzI7Es=;
 b=mvQE0cRxKLN1/335VxyduiRBcELNi25uLlphH9a9CvikUyafjT3i17vtP8sAHCc6qUR2Qx6DwYch7m8yHq4wvlHAKH9FHoP35wlKXGOlrol2p/MrIk5MDmzz/aqlI8/ZZsKX/takS+EXSY9pmOMJBDHAb0IIkzsAzawrunbi9jnOuXn8yaicTHOAU2B32qEQbxgbZ4faEzSNhg9lBp6z1UOd4/sl+9DrGtFeUj973GRuHjWARs1X9D63/ML/7QhryIp9Qu1/pDc4prkY3KSIJ6Ap3RTW6EnHRm2XMlzNMGE2nsKVOgu0aYXhbDgQ+OgII03ECZTLCWi40/I60g5npQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=voleatech.de; dmarc=pass action=none header.from=voleatech.de;
 dkim=pass header.d=voleatech.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=voleatech.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kKsASKRtt4ZRrm6/wCKM85dRjL8wNXrn5nVCKqzI7Es=;
 b=imvtqLmE8hpvFTtLhGS5wlnl3CIq4Tg0aYXMN4nBVsj2EmqtB4zWJcQSfqc/+6IbJcE7xV2wGJ9k4wC3H27Rp14F2jpHCJI7dBdtYUZmbpHBhaU2L7rhYJDfyAg94zOx3GtEJjDwOqN2mLSvAiwX31grlv1VMPaBFBZQKTgZAB8=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=voleatech.de;
Received: from AM8PR05MB7251.eurprd05.prod.outlook.com (2603:10a6:20b:1d4::23)
 by AM0PR05MB4258.eurprd05.prod.outlook.com (2603:10a6:208:64::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.20; Mon, 19 Oct
 2020 08:06:01 +0000
Received: from AM8PR05MB7251.eurprd05.prod.outlook.com
 ([fe80::f132:2cc:34f2:5e4]) by AM8PR05MB7251.eurprd05.prod.outlook.com
 ([fe80::f132:2cc:34f2:5e4%7]) with mapi id 15.20.3477.028; Mon, 19 Oct 2020
 08:06:01 +0000
From: sven.auhagen@voleatech.de
To: anthony.l.nguyen@intel.com, maciej.fijalkowski@intel.com, kuba@kernel.org
Date: Mon, 19 Oct 2020 10:05:51 +0200
Message-Id: <20201019080553.24353-5-sven.auhagen@voleatech.de>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
In-Reply-To: <20201019080553.24353-1-sven.auhagen@voleatech.de>
References: <20201019080553.24353-1-sven.auhagen@voleatech.de>
X-Originating-IP: [37.24.174.41]
X-ClientProxiedBy: AM0PR06CA0138.eurprd06.prod.outlook.com
 (2603:10a6:208:ab::43) To AM8PR05MB7251.eurprd05.prod.outlook.com
 (2603:10a6:20b:1d4::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from SvensMacBookAir.hq.voleatech.com (37.24.174.41) by
 AM0PR06CA0138.eurprd06.prod.outlook.com (2603:10a6:208:ab::43) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3477.23 via Frontend Transport; Mon, 19 Oct 2020 08:06:00 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a44c9d23-c4f4-4946-1cf7-08d87405d15e
X-MS-TrafficTypeDiagnostic: AM0PR05MB4258:
X-Microsoft-Antispam-PRVS: <AM0PR05MB4258A571862D139F92B4C6ABEF1E0@AM0PR05MB4258.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2201;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OQVXlcBC82F4lW7JZGtcmSAxMfwEVakqBpMOTwftOzk5VMebKZcXuI86JNAXkVI10z7bjiLpa7c5xCMCvQ4mt5vCx+kIaCrSIhBdRMuwk5LBGLfN0zkW6NhgWOJBzclKD6ASRhb5Gmil40UIWdNwV8gUzlyv9EekmUXAwUBjr4JWofN1AqSGSqdFckx0cqfbrechtqYw1g4sDKZ+LWvIR0rqKSkLarabVvRopEMcZyxlwhBEoolkbpTTOu2JcciuzWe+yVfU0whFXB7GI0FyZ7rPBmBLk5SfTyP4REQ+8KNwvZWS0ERN9etu29Vc8aZuM/6/09Fq3ytX+7O5uVEY4g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR05MB7251.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(39830400003)(366004)(396003)(136003)(956004)(2616005)(6512007)(478600001)(52116002)(316002)(86362001)(8936002)(6506007)(5660300002)(9686003)(1076003)(6666004)(2906002)(66476007)(26005)(4326008)(186003)(66556008)(7416002)(16526019)(66946007)(6486002)(8676002)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: 12dg/ubbhdOIj/FYmek7FoISha+wVPW5WAunoIzPLcc9pX2438EkGZbtiV3Nf94yQ5uFJgR1nIlTHp3/p5AUymJ6wI9HaCM3EOCb6Z6YVjQNlh43To6CIfjXPnE3ClgYBZViji/cGkTyZC4rzEl6gKF/HMbo0mchjoyFVcLuURhHkQVr5BEmbsxCBYBMDQGGS51Nzc/HdxZbpv9bezDUUYj5ebP1nQOXxzzad4sTfifqyMQP7iQSZuatOp6Xxcpg9gacIFGJVsIxuYflWMm7v2sgPDi6xrfixpd3aeIaTTNMZKc4YyTSdq4LKtJYxG8cfT+nkcQlCKKmTyY4UoO6qEN7kql8o33F1zKOU6Cv/nsPbSoxK72rIvW4OH/RRpDR27cuFCWhCKOMss4PqW/ywlbghgSxDWIoJFwES6AAopd09/1qrNnsqLAVFgcpa1tx8vSDAO5qcQSTWIRALDfgaihicdBfkvPfgx454FvwMDHS4EYJPM4SOmjh/oAG3IeCB0wtvvbwcf7X0hHzmY2xyPDQoRev1nkfKK51VZF2nIrAjec/iZLIRly2k09GdMNjPbkC8/RdhkT33MV4pDdlCPdouL//i3xuKCMnOkidmGqx+8qFpE8GAqjQ4xLevaA+Qs+MCMqE4HsbwfqLrLeRKA==
X-OriginatorOrg: voleatech.de
X-MS-Exchange-CrossTenant-Network-Message-Id: a44c9d23-c4f4-4946-1cf7-08d87405d15e
X-MS-Exchange-CrossTenant-AuthSource: AM8PR05MB7251.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2020 08:06:01.0732 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b82a99f6-7981-4a72-9534-4d35298f847b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TQyj88flFDju+VkSYPcbPp9hAlqtrLPkgxqN9fGNfOLrYTziPq/lViip1v9dBw42T08uBGbxroAvEz1xRKAzzd3A2dNqeVc/VoUwFN6YckE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB4258
Subject: [Intel-wired-lan] [PATCH net v3 4/6] igb: skb add metasize for xdp
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
Cc: nhorman@redhat.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com, davem@davemloft.net,
 sassmann@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sven Auhagen <sven.auhagen@voleatech.de>

add metasize if it is set in xdp

Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Sven Auhagen <sven.auhagen@voleatech.de>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 088f9ddb0093..36ff8725fdaf 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -8345,6 +8345,7 @@ static struct sk_buff *igb_build_skb(struct igb_ring *rx_ring,
 				     struct xdp_buff *xdp,
 				     union e1000_adv_rx_desc *rx_desc)
 {
+	unsigned int metasize = xdp->data - xdp->data_meta;
 #if (PAGE_SIZE < 8192)
 	unsigned int truesize = igb_rx_pg_size(rx_ring) / 2;
 #else
@@ -8366,6 +8367,9 @@ static struct sk_buff *igb_build_skb(struct igb_ring *rx_ring,
 	skb_reserve(skb, xdp->data - xdp->data_hard_start);
 	__skb_put(skb, xdp->data_end - xdp->data);
 
+	if (metasize)
+		skb_metadata_set(skb, metasize);
+
 	/* pull timestamp out of packet data */
 	if (igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TSIP)) {
 		igb_ptp_rx_pktstamp(rx_ring->q_vector, skb->data, skb);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
