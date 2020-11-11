Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B592AF771
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Nov 2020 18:38:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A3038607D;
	Wed, 11 Nov 2020 17:38:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8sAn5G5lS5oM; Wed, 11 Nov 2020 17:38:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 60B528609D;
	Wed, 11 Nov 2020 17:38:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F2F171BF322
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 17:37:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E85932042E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 17:37:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zidBj3VjeOF8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Nov 2020 17:37:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (mail-db8eur05on2114.outbound.protection.outlook.com [40.107.20.114])
 by silver.osuosl.org (Postfix) with ESMTPS id 47E8927A6E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 17:37:57 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VN54YIXR4eMFksiGEFniAOLm/e/FpGTPX52KbKlolW0aNvSHvqhFHb1uMPUCBV7xHeZzhc6mScleK65CnC10jBZS4QIHkYjoR4mmzttDH3vTZeIn+M0+nFzi2boMY+x0bOJE6Jnp1LSP2Z/dLkr+2Kub2qK83YZnVpdqucIjcuGT9dg/G1L115UQoG3W3b0eIGpABkY/ggwPBcVjYcbnNm1w2bztSlVXEzYbcvMzufPndaiOVxUZVI41WWAmAL33C9W5v7btTZfWjK3YmacMz7JfmEGSqFzj9bsU+UDbLgeCIUUFEnurmq8O6IlhwPztEDIoCErlsIA6BeC/12EBdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ykcnu/lZP2hQbZer2sAAFOrx5kpJGXJqrdCK9Uwb2w4=;
 b=Lokyk3op+0DiKtvqs0qRE44jEGX2l/Q+odrOMtp1hnMq0MD36UXOqDGc7ztnJjbwlXJvdzUX4drus1iJRJqWduLIzrsNhyASlk+hMuIKyAWvOrOowttdMFelMN6nN10+BryHO4QdmrfbUSCTvTxyHx0OdwNYfOQLJFZu24bAHzvgQ2wcbW+zx/Wg1HEMghZ/nQPMHq3jH5ZP23gsSovmRz5qw3feoNe2cCLCQa+gCuPUJFhuxV3rcXipkMN3amqpHv52DiEZL9sGf2yJFBtn/GkfunkxdDO5T+nq526UdVp4apqOL9H/mOxJG4vB5CLGx5fCJAKWwzDLPJe/Bf+Pug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=voleatech.de; dmarc=pass action=none header.from=voleatech.de;
 dkim=pass header.d=voleatech.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=voleatech.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ykcnu/lZP2hQbZer2sAAFOrx5kpJGXJqrdCK9Uwb2w4=;
 b=SdNYWtk2adf+EY21rs/2DmvmNObZGrPwTfOzzfMCz2aq7nx/8l8+e/CXc/rU1oOUOqJPdPRF5psP+BRnhYMomKVeDlUXTx3/mWEVn3vHxGrPmIpnMN2OoQHwcfJuH0WYzHLi4WVBgjb5QX8t8PYPsfBeDEJS+lssmKBbtHsI0Ag=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=voleatech.de;
Received: from AM8PR05MB7251.eurprd05.prod.outlook.com (2603:10a6:20b:1d4::23)
 by AM0PR0502MB3921.eurprd05.prod.outlook.com (2603:10a6:208:17::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.30; Wed, 11 Nov
 2020 17:04:59 +0000
Received: from AM8PR05MB7251.eurprd05.prod.outlook.com
 ([fe80::f132:2cc:34f2:5e4]) by AM8PR05MB7251.eurprd05.prod.outlook.com
 ([fe80::f132:2cc:34f2:5e4%7]) with mapi id 15.20.3541.025; Wed, 11 Nov 2020
 17:04:59 +0000
From: sven.auhagen@voleatech.de
To: anthony.l.nguyen@intel.com, maciej.fijalkowski@intel.com, kuba@kernel.org
Date: Wed, 11 Nov 2020 18:04:51 +0100
Message-Id: <20201111170453.32693-5-sven.auhagen@voleatech.de>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
In-Reply-To: <20201111170453.32693-1-sven.auhagen@voleatech.de>
References: <20201111170453.32693-1-sven.auhagen@voleatech.de>
X-Originating-IP: [37.209.79.82]
X-ClientProxiedBy: FR2P281CA0013.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a::23) To AM8PR05MB7251.eurprd05.prod.outlook.com
 (2603:10a6:20b:1d4::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (37.209.79.82) by
 FR2P281CA0013.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:a::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3564.21 via Frontend Transport; Wed, 11 Nov 2020 17:04:59 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ecce5d58-d9d0-4ac0-4176-08d88663ec3e
X-MS-TrafficTypeDiagnostic: AM0PR0502MB3921:
X-Microsoft-Antispam-PRVS: <AM0PR0502MB3921D16593F41DEC03333274EFE80@AM0PR0502MB3921.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2201;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ePotm8joYR1EII26D94qO31P+88UWkbk13092i5v1Lkpn6h/yGvybr8ezWGKz2XTdrXSFqGHbfja+spKQzxCXoLaiGuKovP/t17Vc11jmHmyqm0jMcIfAMwEmra8abWK0K6+ykXI+879Tzg4rCVi58azI8EnJrcgKeifyi/mC57vbdGYWQNUm8Oz1DFoIN7ltEiTmG/1sn1oUovQmbS2pBf9kI6oHlT+nlCwdTFpSAA08j6PHjK1Ir5RUOhOD5OIahtSnBoixePp8tsKcmZd3W6tmFDBl/mjJLmtzDf5fL3P/7Y4TPtQZxqC9AhvGsytkSwSRkaFBXyqYHTXz1r8/NovOJAjnWOAFkFkBQv9+X+ATsSp5itHxLScjP+70upS
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR05MB7251.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(346002)(396003)(366004)(39830400003)(376002)(16526019)(186003)(5660300002)(52116002)(69590400008)(316002)(8676002)(4326008)(66556008)(7416002)(86362001)(66476007)(66946007)(478600001)(9686003)(1076003)(6666004)(8936002)(26005)(956004)(6506007)(2906002)(2616005)(36756003)(6512007)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: D1xtuImoi66M0ZeJfYY/LCMPwO1QgbEDfbQYQEIYY8w9AVT7KXKArmjjfncTEdDXz50BcT+VInEioHUUleNX/sEEVjBLNVOhaq1cXo9LWGI6QDSdfFbUsmIw3N7UIAXOGHrxczaeuSOUZ44SAfBSrgcVuxE77QVssyEoHlBPY4qVa5iE5EQZbblO+ckHWNVLP6o8qDoTQ+6aALRTqX65V51u57ysEOusPmo/gS1AbJI4TB+T7BvZi3FesajWXeMILkoR7HN+YP7Ih46QwY3Ui16EgSdRudbFnSuOAtPYG6X34KzcMxQ5wFIIHvcbOqacnsFKW1yxohQeIIpnyaCh2OUD3JUlA9F5ypo5DKe1dyDmSzl/5dgBqaCvhEf3KGaUcGmqQPl2Xykfzw4vtC8SYBw6f0uauW6P0ggUWTdxp+ystVzySi/CKsaZqFZUpYfijB7SSdMcw7HNaWe0ktggnhaBoPt/8V1AbTLowAQ4CK/R8rKPfQRPL8q0WGizkIhMP7s9R04kEcABmYQaJmr0FSbdIIwoB9A9KC6am7iUfaw/voDNRjl3zsI21VmaG2lIIjt/m9nNFTZGYA8YqR/mcl6S4PZQxZ2oQL9yQkZkteAOnYaVJdu3ysso7XlSdI6OLjDaxYNIFCngJo5Gjh0zbA==
X-OriginatorOrg: voleatech.de
X-MS-Exchange-CrossTenant-Network-Message-Id: ecce5d58-d9d0-4ac0-4176-08d88663ec3e
X-MS-Exchange-CrossTenant-AuthSource: AM8PR05MB7251.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2020 17:04:59.7636 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b82a99f6-7981-4a72-9534-4d35298f847b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GHcrv+RW4NgBoTrMT7OVUObdLd1FBh+j4esenw6ONw1EarWNwxQbbefhoM7AlkR32+jRnl56yC8fwbL39/47bIMBCngvm8Mvf3klkjXPHqE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0502MB3921
Subject: [Intel-wired-lan] [PATCH v4 4/6] igb: skb add metasize for xdp
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
Cc: pmenzel@molgen.mpg.de, nhorman@redhat.com, netdev@vger.kernel.org,
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
index a0a310a75cc5..fa93aec0ba04 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -8350,6 +8350,7 @@ static struct sk_buff *igb_build_skb(struct igb_ring *rx_ring,
 				     struct xdp_buff *xdp,
 				     union e1000_adv_rx_desc *rx_desc)
 {
+	unsigned int metasize = xdp->data - xdp->data_meta;
 #if (PAGE_SIZE < 8192)
 	unsigned int truesize = igb_rx_pg_size(rx_ring) / 2;
 #else
@@ -8371,6 +8372,9 @@ static struct sk_buff *igb_build_skb(struct igb_ring *rx_ring,
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
