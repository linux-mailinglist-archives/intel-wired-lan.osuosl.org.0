Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0F83F0E3C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Aug 2021 00:36:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 749F680DBD;
	Wed, 18 Aug 2021 22:36:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gyxKVeo1R_74; Wed, 18 Aug 2021 22:36:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 06C5D80D6B;
	Wed, 18 Aug 2021 22:36:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 11A9C1BF869
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 22:36:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F2EA680DE3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 22:36:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fB9YQcdVmH1T for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Aug 2021 22:36:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1241780D4C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 22:36:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="203640985"
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="203640985"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 15:36:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="573389129"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga004.jf.intel.com with ESMTP; 18 Aug 2021 15:36:08 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 18 Aug 2021 15:36:08 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Wed, 18 Aug 2021 15:36:08 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Wed, 18 Aug 2021 15:36:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LnBSz7pOZR1oJZsfIwih7sA0Tui1G6YNUE1x+YmvYd8JV0zwBuT31IEfdQhqCpU9N5eNcI2RwnbogCQjQP6RtqMqzdEHWEQAxH5Rx9JcZmHb4Bm5vBzW6yMuhcF5dWV7fddne8CXfY2HN06QHt2veQPXsezV3EH2TULgm4GfSUDuUf79QbveAalYbKRqT7CNk2AofGWhUJL0NMHzw2HP6+Cm6YMJfozvW2ClSF6p9es/Y0D/ajgi4NkrPgb9J/ssL4AzsbREqGm1HoCzxx279aVh2pUJwxzd2qwCykFNB5S7UFwSGGWe7M4c2+WHo06OtrTNTUg62rmgbAGccCPSTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WPlBZmvPFE90eF0vVQwsx/kdzdwVOuZY/9PwRjvSHoQ=;
 b=YTDOutiCnR7MCzbNEUFqV/biFUah3vM9AjVIt1HainqAOazzY+ooYlD6QN3yXftkTCUJAVARgmO3X90iocd2nXCy5SVQlRD+79G3H6eI56bevHhSF68Ps7kKVS0BOJwi7PhMfJktyEfUUl9RboVRx3Xz8JJP7uDCyMmYeg9faqGmlpk9j6kUv12oXRjD9+qlpnGk5zcNFVP02lLDhgmec58ygOvHjf1UU8uJoLuiBwb8tiYRJmgXvod2pL3S/p2rxEwF3hWLewEyDY7H2SM/pjcv55RyVl68xcygWy9PdKN/PXxgy55No3/vIRYm5eGujMHM4JnjCDax+xNUUTC8zA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WPlBZmvPFE90eF0vVQwsx/kdzdwVOuZY/9PwRjvSHoQ=;
 b=fkhnQEDZNjw+gk73G75ZRkwff8HPCJsj0tW+C6OtSQxKcf8rPFyD/OndY0iNfAjxoBMdsrmW9jNL2dZw6K2oBSO9A+4yjsqylmaHKTnLNeRaUYkrObA2zN5EQg4moHBMLTwWSEw7r3Lf3uw4f7Afz9+scwie6S36kbRZls627vI=
Received: from PH0PR11MB4951.namprd11.prod.outlook.com (2603:10b6:510:43::5)
 by PH0PR11MB4776.namprd11.prod.outlook.com (2603:10b6:510:30::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.16; Wed, 18 Aug
 2021 22:36:03 +0000
Received: from PH0PR11MB4951.namprd11.prod.outlook.com
 ([fe80::58cd:3e24:745c:e221]) by PH0PR11MB4951.namprd11.prod.outlook.com
 ([fe80::58cd:3e24:745c:e221%7]) with mapi id 15.20.4415.019; Wed, 18 Aug 2021
 22:36:03 +0000
From: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
To: Richard Cochran <richardcochran@gmail.com>
Thread-Topic: [RFC net-next 1/7] ptp: Add interface for acquiring DPLL state
Thread-Index: AQHXkrpDE4/97678+kqD5jc+QEB2qKt2zoSAgACcQzCAAhWPgIAAVWdw
Date: Wed, 18 Aug 2021 22:36:03 +0000
Message-ID: <PH0PR11MB495162EC9116F197D79589F5EAFF9@PH0PR11MB4951.namprd11.prod.outlook.com>
References: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
 <20210816160717.31285-2-arkadiusz.kubalewski@intel.com>
 <20210816235400.GA24680@hoboy.vegasvil.org>
 <PH0PR11MB4951762ECB04D90D634E905DEAFE9@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210818170259.GD9992@hoboy.vegasvil.org>
In-Reply-To: <20210818170259.GD9992@hoboy.vegasvil.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e6f654ee-68e6-4010-defc-08d962988ff9
x-ms-traffictypediagnostic: PH0PR11MB4776:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <PH0PR11MB4776E5C8002E4340422BE1BEEAFF9@PH0PR11MB4776.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: m1v73qBaQnsTxV8TIPuoJDOKD9my1ZEjG9te7gz2wy7ZgAHVfp3UzTIy/B4AchgqukzpV7a7FpXSkN1D4zTZRlcQ9n/1G5iWqNCltf97Ynmkif4b1adtr/IcxRq5vHMw3iKmEH4LZgqf+wINNw5FphVwn3/NgAOAojxYE0uzdU1nTWiZsp0misZf4ijcY1SBWaxkVBRAWjR0O1lBFPtGQ0UQLJrDXtVOPYb7syAfg/dR6qiY+rNKOi62PiVF5HU4/YDKnGj8p1/+wusP6TbT/Cx0eDkRjHLHbvLhhKnizaolK337Up5rV58JZfKNL8Q7fzIbYG9ZPgSpACof1w6QxgVRqmFNcnGXHgmiV/mwU+Sm+OyNTrYxG8GkaGJ46a05pelUJwYcdeb1ehCxP1jOv6uTFvS2peL9JyosHxpXy05+mnnhxiMYYCTLOxa20HW/hbvOEHL/eNaEz49FHtW8g5bkSiUEqMypiAvK0G1hENnWtbMgeT8eRcWVLsPs+7XtUpsCjSgAyRDTMsj/SCp0FrqKg5CxZkQKAzJLKxwgzZij0BJf/bhNaUe4+aG+pjRAv96QPFI36yP2VyI2oFQfMDnGkkXRXOZhf/Y5+7Dlzq6cEEju4x+0i6D6G1reCwZ7t2EM2plZ1I8qPGxzY0o5Ku0MDdCJ2IvSP6fjMpDfqT+jJM9uXEbXvGB4K4zClIs/JXFILcM9kYMlzKKOAYRs1g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4951.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(316002)(6506007)(86362001)(8676002)(9686003)(66476007)(4326008)(186003)(52536014)(7696005)(54906003)(122000001)(5660300002)(83380400001)(53546011)(8936002)(33656002)(66446008)(508600001)(38100700002)(38070700005)(66946007)(76116006)(64756008)(71200400001)(66556008)(55016002)(6916009)(7416002)(2906002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?v6nHxs9ZnW5UmA26RkRrS8tlqSwP4pxkucNrqiFXbAgNGxRqwz4h2DWKtmzy?=
 =?us-ascii?Q?5dmjN8ueP63SDtJPktJbkhWnXTJIUCuxfHUuhBViXNIEQb/LYTRPOgToTbom?=
 =?us-ascii?Q?+6FNMbQJ9Ep0FOQMJsjIp2tgRWKKMwMLRL/mbXhAL/hfP5W9rAmq4Z9gzlTh?=
 =?us-ascii?Q?rWS6wZwIax8sLGs8DMz1rJyO02oitfx+C2XRDx0eWC8iPACG3XwN56InAhL0?=
 =?us-ascii?Q?2NabjgSd6XkkyBhF4IDB1Jk5atoUXByurCbmQZHjMENTJ5zjwGV/i3o91JS0?=
 =?us-ascii?Q?kTvuACExOz2zmXOSKpF4kiYzjusKspgFn70Cms5dAorV0OJeAC51WvvaB9FP?=
 =?us-ascii?Q?nqfR8sisrKrt4ghvKJjbtA/93Ey4AVSIisqe1EV7MFHnVnQGeaSC2o2vvHi8?=
 =?us-ascii?Q?Lzys2tnDXUPQ8BOnit0Nf9EMMp9MCxuGg96egDktJ92zngcEtm+jQ2pXyhbm?=
 =?us-ascii?Q?dT4PKdPAiuql8ab+KZ1ZoixuAHFlnXAiiFI2JJ8BuolBN88Wx80vU2CemkFX?=
 =?us-ascii?Q?1rhyvdS5aMKBzsUfnyCBf8flK+GFR8VQLvOG8qc4khyUAJ7Rz12foP6crOV6?=
 =?us-ascii?Q?IRNtH1ZfjgRvsLjFYzk6dUexrE9Y7tw7nWmq8HdUACy1E17O6H1qNAXIG/P1?=
 =?us-ascii?Q?CY7wXHVBhy46l+QXgIVYkLDPDO8UZ1nokIM+84b4fEaMVjwZyEsiIfu3+PL9?=
 =?us-ascii?Q?aR0eZBmipiqSqWgJg4ZKfI1Xw+aUn+NTr6u6eCR10cwUxQYnIZ4UXQIlKA52?=
 =?us-ascii?Q?1ZtdBLcHNNzQHnr6HJxsk4cYu2+cXE+bcj7RyWu6N//7TVRq+L1nVRvFD/ZS?=
 =?us-ascii?Q?ng3r9ighD1X+3H0C6fA+6TOIj/wQx9N7Vm2znsfk7gmCJRslAxPND6OqaoHI?=
 =?us-ascii?Q?DSPvLza9NIC7ghava8fYZAeKk/QwyFriH4ehcDQ7Y1Mq6JxHYUuL3kfZsE5D?=
 =?us-ascii?Q?Dsp39aIDSf/WZiFHJIaptPbZpKJrXUv5GmTcv4cP5qRU6ALLlRNf5+FpZihf?=
 =?us-ascii?Q?8soVGZLQpA5+D7TB4lc0452khfpTZ9wsLFlEiG1lwXfIhvfRaFsIQgdR5LFk?=
 =?us-ascii?Q?g1ENyyAUAQPnCSxRqZroPExDHgjDAklBVsilGVV/ZflcU4I7y/UqGmPHO8+N?=
 =?us-ascii?Q?tDwSQUz7gCJkvbCefEq4+hJma3mW0uxVLR67RFIF+FNzxbZgSh4zmfoMOoM9?=
 =?us-ascii?Q?L6Gmy5OKcCCtSrtzF5Uvk+jPG9brpnJLpteObgyeR1zv2aAwmR90eY86owJm?=
 =?us-ascii?Q?Qm/GmTemy0OGIP6tZpabkggHIm1vd9v8qMfeS1nWZ49rk7Dy+BhfK3wt+1xn?=
 =?us-ascii?Q?AvDhi98M52wZUX3KaAf8oJ2v?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4951.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6f654ee-68e6-4010-defc-08d962988ff9
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2021 22:36:03.8250 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LkP7RAiDBa/XVMkfb2lzUPH/VLfr/uEjWvgvTU2aA28UQIHS3hOeBIBqO7BoUPqKrswGLxHfH2EyA+mFxJj7SsiCHlJ6f+wpNDjHzWNQ6Kg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4776
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [RFC net-next 1/7] ptp: Add interface for
 acquiring DPLL state
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
Cc: "cong.wang@bytedance.com" <cong.wang@bytedance.com>, "Stanton,
 Kevin B" <kevin.b.stanton@intel.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "gustavoars@kernel.org" <gustavoars@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Bross,
 Kevin" <kevin.bross@intel.com>,
 "colin.king@canonical.com" <colin.king@canonical.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "nikolay@nvidia.com" <nikolay@nvidia.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "shuah@kernel.org" <shuah@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, Ahmad Byagowi <abyagowi@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Richard Cochran <richardcochran@gmail.com>
> Sent: Wednesday, August 18, 2021 7:03 PM
> To: Machnikowski, Maciej <maciej.machnikowski@intel.com>
> Cc: Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>; linux-
> kernel@vger.kernel.org; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kselftest@vger.kernel.org; Brandeburg,
> Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net; kuba@kernel.org;
> shuah@kernel.org; arnd@arndb.de; nikolay@nvidia.com;
> cong.wang@bytedance.com; colin.king@canonical.com;
> gustavoars@kernel.org
> Subject: Re: [RFC net-next 1/7] ptp: Add interface for acquiring DPLL state
> 
> > Additionally we'll lose ability to rely on external HW to monitor
> > external TS events.
> 
> Sorry, I can't see that at all.
> 
> Please do NOT tack this stuff onto the PHC subsystem just because you can.
> 
> Thanks,
> Richard

OK, Let's take a step back and forget about SyncE. 
A PTP clock is a device that has a phase and a frequency, and its frequency can be adjusted using API calls.

On the other hand, there's the physical side of the PTP clock. The PTP clock can run on cheap quartz, on the CSAC, or the PLL. 
The first two of them will get a clock signal from a passive device, but in the PLL case, it'll get it from an active one.
If it runs on an active PLL device, you get another place that adjusts the frequency of your PTP clock. 
No matter what source you use as a reference for it - CSAC, SyncE, or GNSS receiver.

Adding the PLL state to the PTP subsystem is just another indicator of the state of the PTP clock. 
The upper layer can use it, or ignored it, but it fits into the timer subsystem, as the time generated by the PTP on top will be derived from the frequency generated by the PLL.
And it is applicable to both a PHC and a completely separate implementation of timer, like the one that's present in the Time Card .

Regards
Maciek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
