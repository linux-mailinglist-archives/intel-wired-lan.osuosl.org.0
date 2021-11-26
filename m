Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8EC645EF98
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Nov 2021 15:09:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2133D40350;
	Fri, 26 Nov 2021 14:09:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oRsN1kuo8Fco; Fri, 26 Nov 2021 14:09:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D57F840160;
	Fri, 26 Nov 2021 14:09:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 428331BF844
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 14:09:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2F4B04034C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 14:09:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P5ilyo_nPtmn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Nov 2021 14:09:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3D88340160
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 14:09:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10179"; a="235608234"
X-IronPort-AV: E=Sophos;i="5.87,266,1631602800"; d="scan'208";a="235608234"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2021 06:09:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,266,1631602800"; d="scan'208";a="742364096"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 26 Nov 2021 06:09:35 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 26 Nov 2021 06:09:34 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 26 Nov 2021 06:09:34 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 26 Nov 2021 06:09:34 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 26 Nov 2021 06:09:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OiGE5wnnjvaA1jUksfALZIAHkFU8Dn5EhRFFYg4LhHiMEazRLjLhUkyuESGCspEK3fu1jvKMjLuP/6EyXZM0x1JD9mBdRZVjsR6iLpUQeZEGyXF4rWnWdiZ5clvvRp0hPN1Z+9beIogVXAJVH9TWuuINWgGhjzWqStmDUGxqZ000oR7l/ibtw9yrJSrHiEodgi4IFAQUEEwEMJu5Dp8ItChpXEYK7ftgykdHUm9T3SFPmeDu4MuTdMO7xXCZGUrXBaeGgEiiRTC/00NasdJIsaRUeAE0azDBEatgOWfOTTIUlUM+CitNRUy6gHS2Zdm12f5qtbX4vTU6Lhecrx9jBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RO/C55vKZPEvAxpQo1RpSfb5ey7eY1R60JJMDCsbjOc=;
 b=VujjBBmfi6Q2qQO4XD9spvQKESHUgKYv5WaLJwpbHbbpj3GQlj0H7AkpY6BNtTmTti0QeQuUunSQrjUsVkCt5SUdvR/5hqy6v3xzo30f2hi8RD9Kmnw1Eic2fot0YeBm9RyxCfD640P/WXwkTCkXjFcxnTRoZ4C/AcFiRVCz85SqxM7DXk1SJXJPTwVEy5VKnyJ7Tr25g3keokfaME+AzJBjSzuKo8MOdNzR7ntl+a1gtlRPeqFUqQdjdcKC2LmGj9d21Wo1awfHR33ud8pVokKK8NwifF2P1z8Y9PStC9dibJx114Gwbyom0SeiHYwTK1veHRAYmC4m4hJ1E/BOMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RO/C55vKZPEvAxpQo1RpSfb5ey7eY1R60JJMDCsbjOc=;
 b=aC5Sbhftl7l/ABl/aae5/QEd/kknCzCmFrt2Sumo8tBksPPIQVqEvxsFhv2nkcQ7rZVJGA1yVdKDse22xh/HaREXTlesHRtvnBnFPGSfwc095U3Z8mpk1DagRtGrjzhXOlFoRZ3f/P2d15vHaXBHUq6jl886qyE6ThftkIVL0jo=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5606.namprd11.prod.outlook.com (2603:10b6:8:3c::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4690.26; Fri, 26 Nov 2021 14:09:33 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a%4]) with mapi id 15.20.4713.025; Fri, 26 Nov 2021
 14:09:32 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] igb: Fix removal of unicast MAC
 filters of VFs
Thread-Index: AQHXnlm4yMgLSrYG8kmSbZrwPTpCo6wWYaRg
Date: Fri, 26 Nov 2021 14:09:32 +0000
Message-ID: <DM8PR11MB56214858F2D5243A4E60E3FBAB639@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20210831111635.16161-1-karen.sornek@intel.com>
In-Reply-To: <20210831111635.16161-1-karen.sornek@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 148402d4-32e8-4d14-8a24-08d9b0e65ed7
x-ms-traffictypediagnostic: DM8PR11MB5606:
x-microsoft-antispam-prvs: <DM8PR11MB5606DFA8866302D07DCC3E19AB639@DM8PR11MB5606.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:459;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JafMbFxBzFvNa3GYASBj8zGY9bB0E3C7l6bjaCu2MYciujjm7Me90c3TUw76PiQY/SZRPtd7qcWmYb7vVHo8X6tz7dScRmn6FNnmmnWqvGShJ19ga9vC+eJYA0jr5l5Fi5OrcvusY5V3D0fO4NvVXQsUixdsMWtxM9BsBufZ/R0HOWm6FMNIVZtmxr8lFTxANblwXbmlyZniDYSw1/eM0aT8LoLx9sR0ARltI4c5abolT5Sd3VjJtW/zZeWhlS/Ed7PiAmBiZprdS3TUgF+RxMLf6hJYMHALO8Q6nB5Rof8GR+0kEJ7WvUPYaXLn03OStfiJ73SH5cfLucmzeKw7JdEq9bPfTJlLqK3vu6g5aW1mkct1fKZmEXmQC3OrBiYirnMtwojnY71aNPAAITeFNcC2YX2HSkN8HfuQbO46BKf9jrJAyMcwCcK9IhI5hlYwljZ54te2FLpMkTRzrfCT8sDB34Vv3SgtX80XQ+jvB8ZiYTM0eYCjnWOYI8arMVxt0PCBxQsMpTUFoeusik5ZZUZMy1qMuZFn74wq25Ge6FriAAmYOU9c47imRo/Ukzvvw2JqdnbaWwt5RlPozQe2a8bu1CVjyMfOLssw34x06E/Al1zh7bexiSlpyNuALmOxKIZSAi3mrEAdrM18iIHZ/Q8MwoeeTpPlNn7o8ACYyhD2cMasYf5SIww1n2nigvOUxj8bUxh+6cF2wFB6bpwjUg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(110136005)(2906002)(53546011)(6506007)(82960400001)(7696005)(4326008)(508600001)(86362001)(55016003)(26005)(83380400001)(71200400001)(66446008)(107886003)(64756008)(66556008)(9686003)(38070700005)(316002)(8676002)(8936002)(186003)(66476007)(5660300002)(76116006)(66946007)(4744005)(122000001)(52536014)(33656002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Wk44LEOiFy7N2LyTkj2zETdAfA2VUHaiphlQ59OiBKweTtSuBu9FqRi5ZYkU?=
 =?us-ascii?Q?XqZ5iPJzx/cMNZMsvzbxNLrbmrqCcfx4N7qtaeOh8dX5/yzY96RQMv+qQjkM?=
 =?us-ascii?Q?C8UKYLweDnkm4QmNKfjqnaddaWPzb7P2UuDAG8e+cE31r3k4TPRTggCejyBb?=
 =?us-ascii?Q?oh60oFsw4K+xPrgVBuTzl/61r0yZIGPUJXbLZtnVEDNyxe5WJ5JVQYiq1Igt?=
 =?us-ascii?Q?RHA/Thbd23dwnINbKX2VVfNoKWA+nn7BciUN+ghtjIpPEvY2NPjahCY0WYwx?=
 =?us-ascii?Q?AfZqdTxKTP8PctH8pQqdQwGZPkwvewUqwncfq5gLSoe/N2hsj/xAm0bYRx3L?=
 =?us-ascii?Q?lsUR/KhWl+7aoFXkxUbFo7tAcH29Eskj+QlWIkhDljO+u3VkMyRahwpA245+?=
 =?us-ascii?Q?Jp8E9ykZKLMDVhryHd3HWUlY8gfn9ABeHImzcDwku338dLAg/vJiM2b1xoBY?=
 =?us-ascii?Q?6dtdtaDkt2VUyWMw+52lFtG1Qdtkjme62LfZ2CEGhdwwXAsGalkXB7jG1Rih?=
 =?us-ascii?Q?x8KXN+PVAPjgV3nTrHeeL8l3tn+4kFD4ixEZVZbCtEj5m5Bp1BArHO3guIxd?=
 =?us-ascii?Q?goiZTWQFAftHsi/dsIUXCuy+z4mjstLn8khVlQTdp0aFIojTTfehdhxt47Rs?=
 =?us-ascii?Q?faHsIBkg2JKUs8xXnmJr9gxSNdEdEZiqvVruYz02GOI/AvJWXy9/laohUCYk?=
 =?us-ascii?Q?aN33UJMARYhS6YyLF8zStfYbemIuweNjc6M95+vez73jzinOaHLSOf+hKIBf?=
 =?us-ascii?Q?S5+M6AmOQldE1zndVdfVhemujrYQA7jV/IJNMVsQswu9jB9c+wsxtz0VQ5U+?=
 =?us-ascii?Q?rugUWLMvVfRxTwQ4R0F42v8WBlcEn6JOLokAVrEYw2KAaIfkOsR+UaxOfbwA?=
 =?us-ascii?Q?jKT1QkIbTmfjBIuiOYxoFQ7sMDDA+V4ZCuDY/iwDL+mRkEhcu9qbEGl9SgJM?=
 =?us-ascii?Q?hyZvMjyWOQWHobe7xclleYXFWUI0MOYuByyH1HTP7IjavXYN4aS0mxlrwTFg?=
 =?us-ascii?Q?8+w9rykc6le73RKJRyEfP02u/VXidYAGlrgGplc4daQgwGzaAt8ezQlsRAxF?=
 =?us-ascii?Q?6vn7ObOMHYwtw7fIJIZpMUw+dEGdn5gB8KEKdAH87hx4jI3KbiaN9i7tTmJh?=
 =?us-ascii?Q?luCl25DavbuN+yFRk1eRBps7yGKJBxFQshv4+G8SNbwSX4hFplADUtvSnjLu?=
 =?us-ascii?Q?ZkbcG0ZmcTFpeP0zGxsucA4CG18pRsg+1jQFYhFTUiIkSxIteQ5JEMgMSecX?=
 =?us-ascii?Q?4KU5/XGP50XZdWOAbA5i3+CMP7GsPNbZP32Q3GC7C5k6jIvF8Rcls6D0pl2S?=
 =?us-ascii?Q?PKacgZkvtnLMYBJQEcRtmduzEPi9DaFu/Uv57Cly41b0Z48qnI7u8b4CWW33?=
 =?us-ascii?Q?mRxW7Z38UsuzyYDTAyL1gtB+mpjGVT7dLbuRckm0prB0fuKBLgPGGm4jJ1CS?=
 =?us-ascii?Q?GATuCVT0n/lkCgR40dx0NCpmKt7S2+2x+VspOz9RhOGUheYu8Hz6T8Ng/Mea?=
 =?us-ascii?Q?1P6+fUtEdeoGPVQeLeDsCU0/gkO8jgWvjul9Xb9ojN43N7K+KQmq3tslaBg2?=
 =?us-ascii?Q?tOQCvsET4jzhoYs0OyF3r2urs4T9I2CbL8nWL+JCoW+eY5olF8M8D6S74ooV?=
 =?us-ascii?Q?y3l8WXb2XbyeB25S55Y54p3afcH9IfcSD+OUKMEnxUpV1MANO2++cz7lJIQ+?=
 =?us-ascii?Q?j4Eqww=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 148402d4-32e8-4d14-8a24-08d9b0e65ed7
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2021 14:09:32.9059 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6j+TgU3B96UrdNtSHnO8uiTW6WpXBpdH+c2OxuMhuSGGb/H5MuDNiaRBi7N0ukzKpA+6R00ajFe321VzIDunN/iiWIyGEZuxRj8jrj2mPZU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5606
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] igb: Fix removal of unicast
 MAC filters of VFs
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
Cc: "Sornek, Karen" <karen.sornek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Karen Sornek
> Sent: wtorek, 31 sierpnia 2021 13:17
> To: intel-wired-lan@lists.osuosl.org
> Cc: Sornek, Karen <karen.sornek@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] igb: Fix removal of unicast MAC
> filters of VFs
> 
> Move checking condition of VF MAC filter before clearing or adding MAC
> filter to VF to prevent potential blackout caused by removal of neccessary
> and working VF's MAC filer.
> 
> Fixes: 1b8b062a99dc ("igb: add VF trust infrastructure")
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 28 +++++++++++------------
>  1 file changed, 14 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
> b/drivers/net/ethernet/intel/igb/igb_main.c
> index 842b50cc9..98e977fe5 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
