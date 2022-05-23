Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B834D531F3E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 May 2022 01:33:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 308EB83118;
	Mon, 23 May 2022 23:33:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ECZBrxZugDFA; Mon, 23 May 2022 23:33:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2DE6F82EA1;
	Mon, 23 May 2022 23:33:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 722401BF3C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 May 2022 23:33:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5F5D7416D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 May 2022 23:33:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=nxp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jFrAEjvygsWR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 May 2022 23:33:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (mail-am6eur05on2082.outbound.protection.outlook.com [40.107.22.82])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 58882416F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 May 2022 23:33:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GcA6PcuglGIZ+MzYPUGBT8lzOLPsXAXk7WAkoG2qpA+hOiLeXvdgp7fA7ZmR5iI67Lyu7mr+dPdQe46Pasd9A8qowIZ3yILle/ol6DE0qODrPLlWyC5IhPKuwIkAN9D47Troe/XjTIkcjetpkFyb8MNIcm0HcF6IRNXGDiCELeLThn5j9KdUjn2PRglsktbjN1p6t/1Zckyf1jC7UvpmTeEaT92D5oblK5Lhu1bc0g8Guh/5A7juA+3AwZL2zRScdDACWrbk6wP9FoKEWj4+Idn4tT1W6U2QydXgSOjuADuQS/QYQaYnOdy6O1JmpSvoHplB/4nFXBKhysM4SivZLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DZEbY4oa9mlHvaaq/DFVLMwb/QD3Nda/CZbYMRgd3ZM=;
 b=TbYZHJmnf0GO4bb1LhuC/5q4VByoKxyzL0wS6xP1Tk0QR+CJzPjemV/q44v9SQQ8+iEezntq/f8vL06ZsWOdXJMNia60sscO8dd3B3MskcjBG83G0Ofc15/T+k8VAXg+g0mQojNAgeO3UFG15tnRryntxMlNUWQWPfCKoOk+30BLDXhjnO5hEi74RmhMHCUtmImp3N9fRX8HE+/TwpdF/sutU7RReAbiJElO6NUi4JIyVZPVVfjlJi9qUJl3UES93MfmF6C8Cgj0Pj2ysSq793dwJmV2SF1HhWiK8QtIRIIydlMiX0R/p/nvD9/hVdPQgFlW5KSI86G0YGjDzbQnaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DZEbY4oa9mlHvaaq/DFVLMwb/QD3Nda/CZbYMRgd3ZM=;
 b=UOGnKSf+F1AFhV1OkgtARczzmmIKPLsl5mIezFUnGQ9Qt6qXCenfyjU1+t7Iq5cEtNGGSeBn6H0Q4ydda2KudNaHdtvwRGcErV79tLmyFGCFxQLNxDE8PJfRsEDt2TO4AJjr8D4qoALPFyuYC/vM/aNA4+uPKdnMbEi0yYWYAVo=
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by DB9PR04MB9647.eurprd04.prod.outlook.com (2603:10a6:10:30b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.22; Mon, 23 May
 2022 23:33:39 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::fd1f:cc16:dafe:4bf5]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::fd1f:cc16:dafe:4bf5%5]) with mapi id 15.20.5273.022; Mon, 23 May 2022
 23:33:39 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [PATCH net-next v5 00/11] ethtool: Add support for frame
 preemption
Thread-Index: AQHYa+cqehaWXK64WUeB49V4C8aceq0oW6eAgAEUSACAA3WRAIAAPb8A
Date: Mon, 23 May 2022 23:33:39 +0000
Message-ID: <20220523233338.tmwykgwutoigurnu@skbuf>
References: <20220520011538.1098888-1-vinicius.gomes@intel.com>
 <20220520153413.16c6830b@kernel.org> <20220521150304.3lhpraxpssjxfhai@skbuf>
 <20220523125238.6f73b9f5@kernel.org>
In-Reply-To: <20220523125238.6f73b9f5@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 23e42ccb-9c81-43a3-d7e1-08da3d14aa33
x-ms-traffictypediagnostic: DB9PR04MB9647:EE_
x-microsoft-antispam-prvs: <DB9PR04MB9647AF8BF205CBEC890341D9E0D49@DB9PR04MB9647.eurprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: A8YNY9Dxkm/i6FHSS6QsY9In8YbAP4KhSGRDtjTgGBH3yoQTp211TIdmraXCxT1Ms/1avzK4Stl8uOdN58TPgeHNrxqgnxyu2At7v9LCGKobbHD7aQr1XNmQBq2MNPvCAsmrs5BET1PwzAm3jSgmvDvjr4/K2UTd5PBEk++PKt+aqhWWhsReqgJC+/Sgmu9hs9pKFZafe2TRUFMfHRHTI7Wz6PtKW9e25WT7Mxl+Lak30mti7/wrKaA5IGOHQtFn6HXUqf2w9ePJCtIe0LNrrxjd8ExKaAVAntvFDGQAQ0WBh6BF/sTtC/PcvJmEvJ5Qp1nLhcABgtHTj9AmOd38+bPsnGVYcDh13RxUJycp2B3kQg/afcdFyGYRLJOoYh3X2eycpt81soHadJHYH7mqVL7LxDq/WryMKSCRdCytJzLi8RflsCN869QPIH+37B2Fs7i5wBs7X42tURuxvo38zqCfR7IKCxyDyBACyxfRzm+VKcIyQ/7GbwRgxTDz2rmp2u+B/4A2ljyUE1xFclbHVmw5407J6XLem0FS10sdy0l9mCM+A8h5m4auvq3UD74bn3I+cfeF9OYez+raRbfN1kYzuoVR7EoXttJv275IgmIlonpcQEFxFPPDD792EV0oOKcm2PRHCjStjNYIFMpVAuZ2zA6UvqlmDqtJC8HGqnABevELBx8GyjCFdB1pO5ffti0MDbiOtGjfGMf3uJI8jQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5136.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(7916004)(4636009)(366004)(71200400001)(38070700005)(508600001)(66476007)(66556008)(64756008)(66446008)(54906003)(2906002)(9686003)(26005)(6512007)(316002)(4744005)(44832011)(33716001)(3716004)(8676002)(66946007)(76116006)(186003)(1076003)(6486002)(122000001)(5660300002)(6506007)(8936002)(6916009)(86362001)(38100700002)(4326008)(91956017);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0mtJUOuglK9S91EYcJrgMoEOa86dcdeQjtvQ0K896eL0rJbVk2ANdGmHQnzC?=
 =?us-ascii?Q?q+Km4gMNN3XQRHU6DC6yQRLmQbMki6eC6BQl/2otUPWyK7EoLNYdsZiHBxlV?=
 =?us-ascii?Q?9bQ0hFDhtG6Ebfbng88VbC1WV1pv4vyB/by1AuGMZIBgKQ4GykMNY5KDSzHG?=
 =?us-ascii?Q?CF5JX2TA3DvWfMrUzS8ueNkcX13zGtjNkG8yH6LzxeYTcC3vDefizLp6at81?=
 =?us-ascii?Q?U5AZ3T4JKeqClDKTsg7nQWr3RiyRyT86GROqDbHP4fDx6Jm4qZL3zCt/gS1b?=
 =?us-ascii?Q?j0d3daF1UOncWKi6gJffh+FcYpK9yqlo3pqGbSBOH/BmTDuS3B/yjjVvHQHo?=
 =?us-ascii?Q?mC3Ili/dIsmbB7QNj4C8Knd4MSUsoWAdsxEwB0ud01Ag8TRytav3ieB+ep8v?=
 =?us-ascii?Q?f+5rEPL8oQEtxj+jWbp7BvD7l9LMZNI1w1RNx+89QJJnrc7Av/tdoI0TEAeN?=
 =?us-ascii?Q?jbbOMEMX2kF3gLcup1CSYrA4H8y0b7QIW0YWiUn0kasItcqdIlz/RUVTrydr?=
 =?us-ascii?Q?R9H7G4YRMN9WoIwQ4jRJDDAoO6ECtG9BCIvmGmZkulElAFFWWB/+sg16tg9J?=
 =?us-ascii?Q?icmEHS53eT0SJTAbPRVeO8Rza2FkPyBOQCIRvccY5cJtqH3U1SewiVtheGqz?=
 =?us-ascii?Q?P+xbrFBi3LamAYqbwS6Utf2PudWk5ZsrOp5UYORrzrFxSjKID/08/ejTT51N?=
 =?us-ascii?Q?ftjGLOtfcPKBfh0FXkVgy0/3IllZrPxCbFvx+Mfk/fjm3rDAbPg5Cv/oQLt1?=
 =?us-ascii?Q?G925VQ3PiFNVr6x226BmFZjLRt96nTydxt89l+/EsjP9XnZRDiHbcSP9DdW/?=
 =?us-ascii?Q?uwMH0sDYNXA4pcMZOEjxQWIMgV/BrAnSEw4sWKePkXgQM8t4olrxC+KO4PYq?=
 =?us-ascii?Q?F7vxUq0nT6ZIXFA5OdRZP0FJkfwwDpOOedyQeDqZA2IOVqmCEWfptDF4T968?=
 =?us-ascii?Q?prO0XA+5WHaYL/0AOzzaXb5GgkWgTXDW/1/MJjth9P5UbUMF8qxqra3UyoEB?=
 =?us-ascii?Q?lgIdZO5yODHNeqOvcN4JhmaitKYjXx+SUzqTunIDRaKqXFMCux1RZBAtszcZ?=
 =?us-ascii?Q?KVqaZFNvlgRCT7SeQ0NEnWjj87ijyOgqPbGqhGP4ErM1qto5iyMaZmzFKIHB?=
 =?us-ascii?Q?wORZn062k3WNhws9TzpD343T71NhaPxei2xAEcwpGMKYzCNLpOAAEJmfCOHH?=
 =?us-ascii?Q?L6CgEntZbiqnEdgmCVwlkDGMSCn5DOunvaisG60pAGtw7WuggQpQ5uRdocYa?=
 =?us-ascii?Q?ZOpeyEzI6jP+R/O9yW9cdPyI5PrYejrzSAqt6OvoGPlPMgbsA4klKvKuTaSl?=
 =?us-ascii?Q?1yzXdkG4UsDo0lsxJeaAfwGlfkfeAY38W3cwuLvX+EcT3QtkGkkPLFVteOY4?=
 =?us-ascii?Q?5QFeOnac1759hvnLZa5QPscjmKSjklWs226zicDzoX8Y7or7hC/cIyfFIgq9?=
 =?us-ascii?Q?O2DCTYlKTYdoo0VZ5FO2jXpmxbdBfCOXbPmJGhB5hHhYraL8Uusm0v+6skW6?=
 =?us-ascii?Q?FIpZ9QrRwPnXd1H4g2XXYABFumi6dxblRMotEeVIIpGNt/JpG567EnomwwT5?=
 =?us-ascii?Q?8yCjGZbNL/oQguysicmKMnzl2FSRUyjni6fcBGd5F6D1GVubqZmVNd74oMPR?=
 =?us-ascii?Q?XN4ZkjygmoGYoLx47c4Y1G6f+UxQU1EqKVJA7p1JcByzAlJk6y+id7+RSQoe?=
 =?us-ascii?Q?NAkzLRNUR56vjrcYkDPZd/iARr5LWCQT22jLOavuZZjOXy1CsCZ5TwNO7hZp?=
 =?us-ascii?Q?BLacOc0xDm2rEmb0bkAIpgEHpXzPDmM=3D?=
Content-ID: <A41A6F5753E81A4C9FC38CA60F7DAA5D@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23e42ccb-9c81-43a3-d7e1-08da3d14aa33
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2022 23:33:39.0354 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5jB2HfuOnFshwsHuoLz63E2TKHkHrQW9HUtltjFgMxh7R6ezRS6BB+hUTgvuSFpOJRTIdOxHfQaTG+xsDwIFUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB9647
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 00/11] ethtool: Add
 support for frame preemption
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
Cc: "jiri@resnulli.us" <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Po Liu <po.liu@nxp.com>,
 "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "boon.leong.ong@intel.com" <boon.leong.ong@intel.com>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 23, 2022 at 12:52:38PM -0700, Jakub Kicinski wrote:
> My understanding is that DCBNL is not in ethtool is that it was built
> primarily for converged Ethernet. ethtool being a netdev thing it's
> largely confined to coarse interface configuration in such
> environments, they certainly don't use TC to control RDMA queues.
> 
> To put it differently DCBNL separates RoCE and storage queues from
> netdev queues (latter being lossy). It's Conway's law at work.

I had to look up Conway's law, now I get it. Beautiful euphemism, thank you.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
