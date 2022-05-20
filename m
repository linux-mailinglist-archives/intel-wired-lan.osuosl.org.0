Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 100A352E8E1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 May 2022 11:33:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 743DB42569;
	Fri, 20 May 2022 09:33:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VYj8ImvZH9HX; Fri, 20 May 2022 09:33:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 202024255D;
	Fri, 20 May 2022 09:33:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5EB941BF405
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 09:33:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4BE9860F5C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 09:33:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=nxp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X4t6M_7tleZB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 May 2022 09:33:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur05on2056.outbound.protection.outlook.com [40.107.21.56])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 732BE60B5C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 09:33:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hPlrLVr/bxf2juI2Ws/BbtCn7g/prrBaUgKuaBeN3tUJ1ojxPSuyZfgd4PcJSJZ6zgaSQHWL+nCS0keqHoNzvbID34QU+r99/uesMzvBfKt66Lc4oXQrvhFuwFeRla6FaaC8UH4UrSnQt67P9NIkFad3r4IU2fJN+73kLdKr40AnvgF+ZFQqQGwRlU83KMEScCZ4OdXrVE/E1GQjrN7eASr7QxMOTXKzyRsSJdBWHTTgAse8wwlf4K3Qa629CEwy/qotQhhHv9EUXgO7Hd4FbYZVixYTKEEj4To+wZMH582XQJwnuLT+Sk/j36wua23rXNiPmtM99Kl8q8PXO0JyUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m5vKkDfrt8pW6VsDx2WU4CfAEBUOIl3NnkFbHugQ2Hc=;
 b=JcPMCFMQl8DNO5mlkpupDwYOoE43yJ3qhXAkwuaIEuK9cAneUx+4FnK98GniW7nUrtiKOMfjHhI+bTIpeAWpkk4i9xOUZhJFvJG0UglTUEMPWHS1Imy6UJ0rXWEhJSe6m7fVRMhioJbCHaM+BRvp0umSZrh5rrxD3WSdw9js82mNLnvoAwUSEkxEwieDaeQkZMDdMvIefPT1EK3/Gi7YzsqTIWymHGXg3BVjERSHSqW+U429UwtnVCDCaxKAIg2qrGCESiumVxfqYkMEN394kmlnvgibLkJ8ZioYo+xDVF9H1YyYMlHRwQx2KqkSOi+a6XDcwqs3WVNbMVw2nsbwow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m5vKkDfrt8pW6VsDx2WU4CfAEBUOIl3NnkFbHugQ2Hc=;
 b=VkIEqtgoyaSSa0tYFjjjdMQOKL2r2adGxOh6U6lz50/OG/SBk80KrV98tr2CtGyOiCynEdqDabst+c4iHXuJeCymsz7zmMLJW7FYvqqDjmMRJCItKQv7VXQZzjwSMHYbtcHSQkKb1c/7SXeGXq4HVPNSbmDwATgHZdSEtAEm2a0=
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by AM9PR04MB8924.eurprd04.prod.outlook.com (2603:10a6:20b:40b::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.17; Fri, 20 May
 2022 09:33:30 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::fd1f:cc16:dafe:4bf5]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::fd1f:cc16:dafe:4bf5%5]) with mapi id 15.20.5250.014; Fri, 20 May 2022
 09:33:30 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Thread-Topic: [PATCH net-next v5 05/11] igc: Optimze TX buffer sizes for TSN
Thread-Index: AQHYa+crRDDNML3tk0KxsKlmb9CE5a0ngYWA
Date: Fri, 20 May 2022 09:33:29 +0000
Message-ID: <20220520093329.luygziggncwxghle@skbuf>
References: <20220520011538.1098888-1-vinicius.gomes@intel.com>
 <20220520011538.1098888-6-vinicius.gomes@intel.com>
In-Reply-To: <20220520011538.1098888-6-vinicius.gomes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 07323a92-4922-4e66-bbdf-08da3a43ccd7
x-ms-traffictypediagnostic: AM9PR04MB8924:EE_
x-microsoft-antispam-prvs: <AM9PR04MB8924F5C75F26DE96C0DB6626E0D39@AM9PR04MB8924.eurprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: boPtX71r/WldRbmeFU7Nu2TH6Q3XcMGiqo5byuC/LCMfM+qyPfYJR+AgnnfICxVDUVjYMBJDjZ0PCE37oecAhAaIKK44HllzEvRc8gdgnuAYjHJc7TOki17+g3H4FPc3yNLM2ur+lP3OCtvcTQB5fGaoSEjkm87N7s4DKSmwlY6QVfB85pGQNW6FXd+j1LuQZqtyg4TRIPY39cxciKpvOWUQ34Qta2K0h+53u5lVTrniHLzDIgj18L1KAAEdyb+D3dscupTi7plE593xkv1oR6k0yrqOFeX6g6AIzlIMwJw5/UldoFCHQw9VHkovMtnqKL5R4kAnCVb+cE26DMewsRsjqzWt0wV6N5nOh2OuxcALg2nH3AoEP3R2EW3CTvyKQgB/dyd8BOjeWeT2qjj+Jf77+uGJjOmXC/xfj81n84XVLlRjD82clCwbjKzNxbj6gX0No1Gt8K/iu2CBTyanN46+BFNxqa8PyE4GjUcaR2h/EWpzNX3wnzxVB5LbqnR66ym9tqsZXrW3FAIcwcmj3y++EJAYdm9Z7Y59VuNIEkpfx+FORhQ5+DjpbDJNmIz4cNd0cGL/fD2NupvwkBJsq3pRShZgSZBHhYKCn+a9//Jonp+riYq+pYHO0dKYZTdq4w7Ny3LS+3ouocTVsj0p+zcfJB3kO8J8orOKF3ak5v1qxkPj9L1gvMPIRDtqBNnrFSVRC9aOnx1TXifEWdIdkQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5136.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(7916004)(4636009)(366004)(44832011)(5660300002)(122000001)(66556008)(38100700002)(64756008)(66446008)(66476007)(38070700005)(8676002)(4326008)(71200400001)(8936002)(66946007)(6512007)(9686003)(3716004)(91956017)(86362001)(26005)(316002)(2906002)(6916009)(54906003)(6506007)(83380400001)(76116006)(6486002)(1076003)(186003)(508600001)(33716001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+M6sf5wqiUiFT4QbZ5bgrUNeFY1ixHZQlWx/oc0cQ74fyfEz6xMFb2wcj1M7?=
 =?us-ascii?Q?s8N5Z/ouwFymm9gMzZT2j9DRRUs2hLTj4HIDRlcAIusX/Ovc760CN57tqm01?=
 =?us-ascii?Q?nndgjqo6uNKbs703CYDdD/iG7b7ESrxrBMFEh3HO8HkxvhZTHbtqyPNjgmkp?=
 =?us-ascii?Q?3G9PQQxiOmYRB7TOzzIDgiZVwd7TWicIfckxvvCRXUX0tFCSqkr2We6ukEJk?=
 =?us-ascii?Q?xom7YNrHkmiHx2Al24hoLquv8L3MG4pUzMlQL+XsSOO/ywMj0nUMwacDqZXm?=
 =?us-ascii?Q?J+4Tz+5cUwjf77ySRQ74OpE1xy1nBN+Q39uBCXGUXQ2igRPNQ2anseMQc3nx?=
 =?us-ascii?Q?ztWOckI6BYguWtIftZkZnOA0m2q47RoNiDJ6ZC/YOYBewX5KI7PfBPVbl0dh?=
 =?us-ascii?Q?RCakzUbz1WACt4PoqdwtnRTnDhQnG5ywJepg9kYmOMM1WJqYOtaltPF18s4a?=
 =?us-ascii?Q?B25LkjvmPnMjuZqIwNA4YZqe5MdnmqQ67+aCeB/sJJunFMcG99oAB7S+V0Ly?=
 =?us-ascii?Q?ih/jXePeukk3yU1/Uly448ho3JlDbRnTOz6EXYTShIOfjogPv3P6yGpp7WNn?=
 =?us-ascii?Q?0M5Q+q/J/oaUNDK0ArIcwDu1ldFctoO5E22z9L/kCERb56YVRs5rijKXvUHi?=
 =?us-ascii?Q?6Dsa17KAmSkCT5BuOVdZGyO2OHJtxlsh5cgKtpGXlvZV5J48acS4IFUTrdt9?=
 =?us-ascii?Q?vEOVUANM4fyrGFusHO4ypI+caPDE0SCyXmVsMk8cQHpzZVSL5nL/E4Uchbwp?=
 =?us-ascii?Q?krLdnlnDrg8T7+IDGDEciRwLxQB3e/0zpdEjKKHdRJZgXWlsHVsQV3lVCfIu?=
 =?us-ascii?Q?M8rGhh8/YULNQsiiJ2z2aY8dq0tGTB3mRNbvFdtVbgMZ0y1fvgkOxNCHFvRZ?=
 =?us-ascii?Q?l80hrh42hW1SxQ9OizbsZ7cQaI03XiLeQFKs13nKJQ3zMhfsfOr8kboilBQI?=
 =?us-ascii?Q?pSDyKhu00AS7C5hpXb+naxLaKBAbBwsZzhixfFvxBBWWcgZEN4sex4Fy1d7L?=
 =?us-ascii?Q?Ae0s103VMgCtsYxr8XN6uL/Li3MvpZgqFQkeJjbpfZkrRSv+pWVCZeLhRgGp?=
 =?us-ascii?Q?XcEhNsrY8wFbj9ILp4KhKcP6e8tN0AfkcCzXDwjNCqCbBz3CZ2VJhIzmS2me?=
 =?us-ascii?Q?eTjKqorgh1Eeo6p5kVc3S8Tzg0e3eMUEX5LDfji8u69GrCTVYwCFOukdjUYB?=
 =?us-ascii?Q?NMcZHsw4IVvLxj9BXsD/bN/UHnxFpq3Evpo+9+NRtBol0J6WpgedcfjinM+h?=
 =?us-ascii?Q?VupqS6bYT9KVPgtz/qCs4nQ8lgCh/rxT5RacmqwvuQ3gUB6Dl1Sb5QAzdmXc?=
 =?us-ascii?Q?Bj3XpG1FsR1VanbD6pAzsv1ezhrR0JUg8yO6Hct8a63zPcnhgxQx6gJC+hS+?=
 =?us-ascii?Q?0S3M1DyriO1661pNZqh30yRUujeW+YpIpkf/g0QAMn1d60Q+Pmz0qG9s0KGd?=
 =?us-ascii?Q?KE11yZyUCrTf9Fo6vMp1nkWn3ZxKiYH8nCGWsl05CAxghG/smZjXiOdehRXo?=
 =?us-ascii?Q?5Rq/GtSJnFF/YQ8DH6BnzYOiJ4TM/uFe4loeH7VtCiQ4k9Ze5HMQXAC4gQXY?=
 =?us-ascii?Q?Xp74RXLBXBGS0orsBl61V667fqVUuLk/xHBLLgRs5b9+Az+zmrUDMvLeLEzw?=
 =?us-ascii?Q?RzaGM8GbvAWxaTbYm6jud5VRd4on6AqvXllMjvCBVKPQx34vd2IoEvkaum69?=
 =?us-ascii?Q?G1rOauHEwwuabZy0eyL5xOg1FskSuRwmtShzOOwUWGfQU5xyITRe/44v27en?=
 =?us-ascii?Q?+J/0PNwrGrumajtLwU++Fjxd++9EJvI=3D?=
Content-ID: <2BF766C9827C954981BAFBD291F10CCB@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07323a92-4922-4e66-bbdf-08da3a43ccd7
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2022 09:33:29.9631 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J88lt2iZMFLPSIiGUActQ3miLz59/2i+Gfd2WuReSm7WJk/+bB/kGnpxBw7rHvJcgsEF5ExlDyYxEG8TiFEDlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8924
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 05/11] igc: Optimze TX
 buffer sizes for TSN
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

On Thu, May 19, 2022 at 06:15:32PM -0700, Vinicius Costa Gomes wrote:
> There are 64KB buffer space shared for TX and RX (including the BMC).
> We were only reserving 22KB for TX, increase each TX buffer (per
> queue) by 2KB, the total is now 30KB for TX.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---

Typo in title: optimize

>  drivers/net/ethernet/intel/igc/igc_defines.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index f609b2dbbc28..62fff53254dd 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -395,7 +395,7 @@
>  #define I225_TXPBSIZE_DEFAULT	0x04000014 /* TXPBSIZE default */
>  #define IGC_RXPBS_CFG_TS_EN	0x80000000 /* Timestamp in Rx buffer */
>  
> -#define IGC_TXPBSIZE_TSN	0x04145145 /* 5k bytes buffer for each queue */
> +#define IGC_TXPBSIZE_TSN	0x041c71c7 /* 7KB buffer for each queue + 2KB for BMC */
>  #define IGC_RXPBSIZE_TSN	0x0000f08f /* 15KB for EXP + 15KB for BE + 2KB for BMC */
>  #define IGC_RXPBSIZE_SIZE_MASK	0x0001FFFF
>  
> -- 
> 2.35.3
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
