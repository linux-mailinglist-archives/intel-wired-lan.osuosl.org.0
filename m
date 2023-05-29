Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E45714B52
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 May 2023 16:00:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E2B88336D;
	Mon, 29 May 2023 14:00:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E2B88336D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685368804;
	bh=omR0Smh37xXt6ncx19wdKqTnVW4tmgBf11lqjpm/ExU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=walYcU6dv8TdXoiguhBx50qvA2N1fxbEJEuurmVx3pLrigUXzhWeHdiEOIMusImJI
	 mZ0f8znuECJBeIZcO79gF2J0ZGMbqOLeUr5JTupry8owp1Qy5012NH7YEYpKLCplLg
	 ZiRwbtWvLLnnDHsWoNgK6q+p1QLm2GUyCWz/JCMDjylvfeVaWO4lNX6JBbmBzp1qPo
	 OS3eerhqymRPbsWv4jCIi1xkjYSA4vOlwxFAdbBMT1uar3Zv4roM3yazHnu+1q+mr8
	 bL58kRskIbt9WoBGYBk5oeLNKFYNSrDAijIuBi/SXashsmh0bIL1zBdOg2krqPumaU
	 Iz2sYFJJzmpRA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6GX4nEfblvEx; Mon, 29 May 2023 14:00:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EE39D832E6;
	Mon, 29 May 2023 14:00:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE39D832E6
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 49D121BF215
 for <intel-wired-lan@osuosl.org>; Mon, 29 May 2023 13:59:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 23EAA83083
 for <intel-wired-lan@osuosl.org>; Mon, 29 May 2023 13:59:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 23EAA83083
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JUtEF4wPfm4S for <intel-wired-lan@osuosl.org>;
 Mon, 29 May 2023 13:59:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 502DB82F14
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (mail-am6eur05on2060.outbound.protection.outlook.com [40.107.22.60])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 502DB82F14
 for <intel-wired-lan@osuosl.org>; Mon, 29 May 2023 13:59:56 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HJXoWKH9U8onTIIXd0aUjcZefu9rw8lEAnuorqbhcdnQdkbN/rRroYSTGZw7SgfEFcXE5EMjax0w1iJAQQj9edOZqe2DjNC7phzNgcxYTCdDjp3GWjRkqP1WItlqAGqtdZfwceI5uta+l+tllX90O4wEPmyyZNm6vjmB8XEl6USr2S9kp91+WcZBxN4A8cNvsn9xLNacMHzFhDNZGa9IicHGOp6bBAuRWkklVLMgJ8RyP65+ngfGHAMbWG49u3QWsLK1aYcdrNdV8dmOFgUczus+wywL3QMZ9rfVXgxS8Ro/ORT8vN+rvDv+o+9GGWblXpRKZ+6TSP6SUge8HPFWAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xriGe8lpVoQ985DBpCqK2MpYkcN0W7BC5JFy+5Anqco=;
 b=njDExBUFfHa7OcmiLdmkRWjqYLjo1A0LMQSbEXa87FT1IcCnbTPOlupja5L8XBsrIJpKLEoieinQRxZILYz4cYYf8VdufF+7zChwzj0Kw6DV7UqHI17lkQpLlSTF0JigC3BB7jyE/nqA7utwsOEGNU4CieyEZG2TTD1ziZgjxo+BZyD4AQoH/g4iOnonIZz/hvewiR9uW1C3gPfITKk8TkuL5ejT0q21cUNu/yRsrCrtB6OT+zNwo26KT6uUzyzkubleESgc2RRWZ6N+RPGOpBKCo+XQCOOzMIf+Izjpweo5F/kcLToVNS/1E0nYqjCp0w4WA3iCBNY8zif1dvGybA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by PAXPR04MB8256.eurprd04.prod.outlook.com (2603:10a6:102:1c6::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.22; Mon, 29 May
 2023 13:59:52 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::b027:17aa:e5f5:4fea]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::b027:17aa:e5f5:4fea%6]) with mapi id 15.20.6433.022; Mon, 29 May 2023
 13:59:52 +0000
Date: Mon, 29 May 2023 16:59:49 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
Message-ID: <20230529135949.wfrcll3t7nkgna45@skbuf>
References: <20230411055543.24177-1-muhammad.husaini.zulkifli@intel.com>
 <84acb1a0-f51b-cd2d-d42c-5133767a6698@intel.com>
 <20230418171904.2d01642c@kernel.org>
 <SJ1PR11MB6180117EC9550B1993944DE7B86F9@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <20230502082734.0f2f88b1@kernel.org>
 <SJ1PR11MB6180A8759928896BE0C04A0CB8459@SJ1PR11MB6180.namprd11.prod.outlook.com>
Content-Disposition: inline
In-Reply-To: <SJ1PR11MB6180A8759928896BE0C04A0CB8459@SJ1PR11MB6180.namprd11.prod.outlook.com>
X-ClientProxiedBy: FR3P281CA0181.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a4::14) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|PAXPR04MB8256:EE_
X-MS-Office365-Filtering-Correlation-Id: 2e14277d-0f84-484c-c6f2-08db604cf9b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BdNmaawC+46l5j8JEsQytyOfU3wWlC4uZ+pmJiigvYiPaOdMpOCqIa+SAtiqhiPPakI81tpZvZYlEFZADrkMa4lBcdY69QGe3zpxMsccP0h8yzm6TpwV+gy2zN3rypOG4I4MwPArP/K9FM1V4p3+EfYRGv8bRXMKwAI9fPEZIJfQj6hacHASJbSZau6gReaCcsCctWv4VCZEoS1iVq6aVqEwi4QkLjeqj0tdYyVlwCb0uJLkwkG+miNLFxra4BjjtXtNmFO/QtvTyXxV1mRp7O+O1XVH9IdVtGfsLF6RslhcaP8v9eHx74Ts71YiVnEdiym3L/HAm7B1yMZTZkxAg+83L4tPGhKwGem8JsZQApVYYAgRXYGLL6niWbUuCj4M9Bk19nKipe/wQc0EtUYa5wU04gqtxUI36yRX4jEcwoxF5Gn1WhczWcJbTvc2fjAwtx61Grd1gBA6d3Qs0S8iEONyUNUyrbNG5PMze8ig5VQKhFN/EHjk+Gn0YoWaRfh1Eitj043+qAmxYK+XXWJa4hT5sHSlwsZsR6sAHQA4wW35d02B7xAycca1kcm+wc7p
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(4636009)(376002)(366004)(396003)(136003)(39860400002)(346002)(451199021)(478600001)(2906002)(186003)(1076003)(6512007)(26005)(9686003)(6506007)(5660300002)(8676002)(8936002)(54906003)(38100700002)(83380400001)(33716001)(6486002)(41300700001)(86362001)(316002)(4326008)(6666004)(66946007)(44832011)(66476007)(66556008)(6916009);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZUtzGVgWOqAE6JYoFYBpyFyRpuulVr1MJKY6QWcSSzCdbpCoOEM5bzUshueW?=
 =?us-ascii?Q?fS5n2Taw1d4cDKI1oMMTLGPYPfPqbtc9K6KWs62IV49yievT5wkYUGxmjsEj?=
 =?us-ascii?Q?gdEeryT7Fu3RLCy6yQrvxk8bcnkkOAqQItc0Ld8d/mQZ8mj84SDVRaELi1bH?=
 =?us-ascii?Q?b7vJbNVdw4OUS1uSZ2ue/cUbASlI1dz9qgdnCWtsknqySRDEuQnM6Xv85VZN?=
 =?us-ascii?Q?0PMFcyFO29tzmWGGopLuSPR11WMKc/OZ2cd18V25RHlwp5sjt8KHdw7qhW9w?=
 =?us-ascii?Q?dv5CHCBeghaUzmbl2Zep0grATOpEaJkuVn+JghabHdV6z38xynK8y3xVyyfJ?=
 =?us-ascii?Q?lrajDc6i5BmDuCR2Gi5hByN70UQHnJLFjZLtTOqUZVY1K8Qk72/vklQJ1xrV?=
 =?us-ascii?Q?8gcKy7OAEtI/yO3YLHdBOGZk6NGzxW/h6ZC9fIiAYsIDui8D7Q8bMmFcOAyF?=
 =?us-ascii?Q?xHdoMQKRCTM+eCma4t5ajFn1SO0XvjV3K7a1X+U1CRGsSQwmw8nonpvHfQd7?=
 =?us-ascii?Q?AR8EXDwKXjWONDLKSAMO4ni45xmRT/zDHuzMYBpWiD8TrQjcWwcG6ucHiq+M?=
 =?us-ascii?Q?U+BrtL3Do0LUKsLhxST2d9h7QTfno+EXsOwAbQo/TnWA5qhNAzeO62TOK/Fv?=
 =?us-ascii?Q?CH4XUe094GlFHFO01WE4wto292Vmc5ZlX7KSDD1Cq9W7SfI2j4MBBKvmIFHI?=
 =?us-ascii?Q?mQ2WnHojrdsntjosJCmpT93/yvq/6tLIgUcgL6Ah0Wff2pMLktiZtUSNaGf3?=
 =?us-ascii?Q?flrAsZ16jLpq+vsYgqTxQBHlyPa/qmGG2q4wwp9Ag4ziNfBD09y3075KH4kl?=
 =?us-ascii?Q?a0rKp763WP5IM7RDzrIBl5VPQfKrb9/kD4mH9DMAT2LDg7oq4OpnBv6QlBI5?=
 =?us-ascii?Q?AI0Qtk75SiZZsKtjXZEagZ9+2ycCj55Dv0vGh7cpqMAWHD9UiM4dZF8EQU/P?=
 =?us-ascii?Q?3XUSujMMNA8RljRPYhYnxu5IqGBVokVQcFbEbXgKeaAltu8TMxASprg6EMCZ?=
 =?us-ascii?Q?OVwXKFB6H7QAQZ3cofPuF5EdzGuKGII8A7+v0zh1eItLU/4YYpzBpz5Rcboj?=
 =?us-ascii?Q?S/VC1ZeqNgAKuYMY6s92MjefdShUUQgZtSbSBYkfyNDfajxSwcCtS7x5Bl22?=
 =?us-ascii?Q?V02mJ0MGCSH2pbifUhVKczoCYfJ6v/75UVK/nbWExj/Iu4p+t23L0OsbMtTv?=
 =?us-ascii?Q?0oU0chh64SMkSQhIQqyLA+EwJ6MhfrV1WaKDLY5oAX0kC35XOKaN1UoYahfs?=
 =?us-ascii?Q?kP90BNdlr2L5rhz/9G16SVzn91K1micv14+HLhegCRmH2bcDWuIFScG0xcJ3?=
 =?us-ascii?Q?Ur5erf+L3klOtJJ3EFZ1EVIj9+hmlwirLolQyOiBO5U3BnNeUI0HMjqGh0Go?=
 =?us-ascii?Q?bisZxY+Sgv6H3kVUAdE8UpczF2/fn5PFpxP7KZu7Mp/8IBPBzKJz+reNkF3L?=
 =?us-ascii?Q?huoISh2+rC17YYJG9xlzVOwlldGAUfgDmMXGKvr0AMwoX1lMThj4YFI4lcaQ?=
 =?us-ascii?Q?c1CxjzH+ua2gF8oQxCeUYi8AgWgdt3iZI65+ZDL6oxRLlcIUFCLmFmGRxJvD?=
 =?us-ascii?Q?TNqztxrz/QTMXOQHy1ePw6N/sk8gtGT0r8CQS/l0rebsqV0Z0x4w+F+tNV+M?=
 =?us-ascii?Q?3A=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e14277d-0f84-484c-c6f2-08db604cf9b2
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2023 13:59:52.7346 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O4WWaHsyNrVYC1kGqXSt+mk+1klTnvwswyib+UV/rqRE++fcYi7/e/07/Jx0g+hPCvGMlyBK7iufek6/pk2Jyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8256
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xriGe8lpVoQ985DBpCqK2MpYkcN0W7BC5JFy+5Anqco=;
 b=JYDq9FEcfBu8oLXN8w8PKs3mk6iponBT4nuj9o65K1u717SGV5UDgtCzY+qVNUZHA+4R+qLGuBAGhPT8oXuUiR3eUzDXr+/RnmLbjZU0FIDs/hpc6bnr3M4rFLdyEdcN5epJKVdyEIvrrAsvVZ8Ji0e2dRFmAClkS7Y4hOrQi6A=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=JYDq9FEc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] igc: Add
 TransmissionOverrun counter
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
Cc: "tee.min.tan@linux.intel.com" <tee.min.tan@linux.intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, May 28, 2023 at 10:10:18AM +0000, Zulkifli, Muhammad Husaini wrote:
> Hi Jakub,
> 
> Sorry for the late response.
> 
> > On Tue, 2 May 2023 01:47:30 +0000 Zulkifli, Muhammad Husaini wrote:
> > > > Seems like something that should be reported back to the qdisc which
> > > > configured the gate.
> > >
> > > May I know which qdisc stats that we need to reported out? Is it
> > gnet_stats_queue?
> > > IMHO, gnet_stats_queue stats all used by SW QBV and not by HW QBV.
> > 
> > Yeah, definitely not gnet_stats_queue, the qdisc used to configure the gates can
> > have its dedicated super special stats.
> 
> I'm not sure how this super special stat will be link to qdisc. 
> I'm include Vladimir in this discussion to obtain his thoughts, 
> as I feel this will be required for other vendors as well if we can come up 
> with a generic approach.
> 
> Hi Vladimir,
> 
> Do you have any input about this TransmissionOverrun counter?
> 
> Thanks,
> Husaini

Thanks for the question. I guess Jakub is talking about qdisc xstats
(root and per class) which can be reported through the TCA_STATS_APP
attribute of the TCA_STATS2 nest. In fact I've started working on a
prototype of this (some infra will be required) and I'm currently
debugging it :)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
