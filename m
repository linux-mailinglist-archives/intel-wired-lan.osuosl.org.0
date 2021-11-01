Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D244423B4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Nov 2021 00:04:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 976D840222;
	Mon,  1 Nov 2021 23:04:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T-nWWynZ-cKJ; Mon,  1 Nov 2021 23:04:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D4CDE400F5;
	Mon,  1 Nov 2021 23:04:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 69ED01BF354
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 23:04:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 58707401C1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 23:04:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LqUox8q5M42n for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Nov 2021 23:04:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B8A2A401B9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 23:04:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="254745531"
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="254745531"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 16:04:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="583177808"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 01 Nov 2021 16:04:47 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 16:04:46 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 16:04:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 1 Nov 2021 16:04:46 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 1 Nov 2021 16:04:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VqSoD62iguF99ms/lhpPfSK0JEt57KrRPwuxQ5aTVf+HUP3PcYcL4Dz8YnHKQIfhq4+e7NkpMBF7R5x9DQH2ti0gMGuTyh8xuH8N1ygzYlayP9t/2g7ZM0Uv7BgHaA62NVXsJ6tvMBRJ+uiiaHhoQ/LC7Np5bIZtK3Zsqkqmjl6K96wvWyZf1gqaVTQaUWnkVCMFSrbCpvmA0bjqh8UJU4S6qP8X9IgU0ZmKHg2Ahv7oTkO0Ea05dNVe6s2kaI/wElr2F3r77ACrl1eagukcslOS5aXj0ZrD+k2bTMQMh0PZuXOBuQlkx5DzexVcdQNb3JWQwwZzyMU+nPrmc6AGkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UsKZoUnZK2JYukJeFsXSDA6KFmBHxp9cF25zYU7qykU=;
 b=dNhRTcQOi4x205XwMZq37aGv6FW9ivY6VzGnJ5LVavIuQAGLPeyWPTFcghvuxDKxTVbY6pEkBr4N6MMThuNWqMvXTs/zUDbC+B4zEUBayjWdJodDwOR9n5ztyJcseRETmCrFArDbBwHjmmZVsIiPtLyVU3yBGa0Stre/7wD+2P8iZt4dRL+S8JDmjRsOhyQFOEATB9uSxucU3fbDqQw0jFIJlsDe53fWI2BqkQ/XmHOMyftXkx46Lly+ZrjRemyuKei4s2q6AHTP4l/KpLWtZjy47nPpxbrRRLRSiJ8CcKh5JSpcGLkwKBYSJOawAAxnJcXi99hcWMltx9uGc3Uu7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UsKZoUnZK2JYukJeFsXSDA6KFmBHxp9cF25zYU7qykU=;
 b=Q3JdO+Irv0nD62VzYxnr15d4urP7zl+/bkVAwfLRrrmaflCYn9zf1xSHp8P6BDhi8rPzz0/gRGFOCljCs+RRKV9N1+z/OUN/l11mhxEUypICoDJX/yqJUrONkFQotFgDzfnSl18EhnZfm+O/hiYBg3O3A7I3HOpoKemPiUXprFI=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by BL1PR11MB5528.namprd11.prod.outlook.com (2603:10b6:208:314::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.14; Mon, 1 Nov
 2021 23:04:45 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.015; Mon, 1 Nov 2021
 23:04:45 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 1/8] iavf: check for null in
 iavf_fix_features
Thread-Index: AQHXWWNtQcHiZEzgo0iqXIjpUDO9N6vwNuEg
Date: Mon, 1 Nov 2021 23:04:44 +0000
Message-ID: <MN2PR11MB4224AE047F06DB5D3D4A6D11828A9@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210604164900.33156-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20210604164900.33156-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7d6a4872-925e-4869-64bb-08d99d8bfec8
x-ms-traffictypediagnostic: BL1PR11MB5528:
x-microsoft-antispam-prvs: <BL1PR11MB55284FE54104CB2B0106C170828A9@BL1PR11MB5528.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nZT5Neqw+62Fcr7MMb01jQPvxFBGtpbnQogxc7hTy2AG1ZpnAniuQ9PobGYHRQyPxQykuoImwJyt//hwZKWxpEVdqULVylouJ+CFOFsaXRAlFiiWwKTomdYaQJiyGXNzrjCcohlq4Ajwg0E+l+ItSQCMj23RbvXGHxPkkClSU06piuRxvIqQzXJdNnaSD/VhD600mWZqV9/5nQqfjQSkyFepLZ6UMXVqCcO0Ogck7KFe8oEYuP6oPAkh+6iagwoTv95gxu+LuugQ2qu+OLVTyCgw3b+POZ0fvlV5fx8bbHuOnm3LQW6RChZzAJMtlU3O5AT6Lv3YyAADst0yrYbX7ltiZyqI0JTlNjEbDCeWxWdZhJt7Iwzm/2ARVv5sGkvTFGkBlmv4wRyvuCmdatR7ybVgMkUgEsdBOu41vmg4t0z3kxkFoAEruZLS+Lj7eGm4Wdx+gZD+JGYFgpw8iCcYDnGhWW5m5jPOSneXrrThneQip1CDjfY/lUSrBwxrmaxCHSUYjVGoMA2wpbZlRzTi4QMry3zrj4JT9x57yDQrWcUvwt4G6/ZDD4B5K6KTZY66FasNRe8IPiKqVvEW5Rj0zgaupRfwzYvgut5a02rRWFO19EydhWaCtcY99BP4U73M+ys02tsGCbpylli4patZRwhHRbMlLBqKO9zdBTXXQb/XwHnaVNWaiCBS87OVVjpT1iSgal9pZsmKk9QoQiG9cg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(38100700002)(2906002)(38070700005)(26005)(122000001)(8936002)(508600001)(186003)(83380400001)(4744005)(71200400001)(8676002)(52536014)(7696005)(64756008)(33656002)(316002)(76116006)(82960400001)(55016002)(110136005)(66556008)(66476007)(66946007)(86362001)(6506007)(5660300002)(66446008)(53546011)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3F2cl/0Us9XkCmTm5oY2DHauClKPllxEiQIVNUoMXjCG/TI0WAJSlUHdTVca?=
 =?us-ascii?Q?0oeyL+TQJevMNH/CJBBA+asOZVOF6TIrNwXYx6F07/+RVviY8W1Q9yfee++V?=
 =?us-ascii?Q?sgH5q++LMHuQxvqBUW709iukPja+ud/kIQzJY+ONgdTftiRi76lKXrYeocN9?=
 =?us-ascii?Q?dRQql+eSVJcr95DtPP2L1TKAV0+hmW8FWNr1s+ahu6m68EeiUEKG+ftFg31i?=
 =?us-ascii?Q?TNBuUxg5SmNDIkKXlbL8zadbGpfmTXj/aBkJZoI4OYp299IBGjiZTnJCpc2b?=
 =?us-ascii?Q?7sNOM1rdd4tdhkxo3BvogQx/T4G8OHVWMRqtWe1eG2gyt0ICuP8/qfoJ/JMY?=
 =?us-ascii?Q?BGUZS6GYxt/1AQjQntOBsOgs55ryTSeq4xVyT8iMJETcCfhI3hUoZrFd4D4W?=
 =?us-ascii?Q?z878z+MZxUy085b9Is7Bjdq7RnXsrHtc0afg3soPFEN5sRiJY4zHJ+mqZ/Pa?=
 =?us-ascii?Q?3CL/RsoNkfC7VT930Q/wc6aneTJL1q5ae0ii0TvlXtbQ5e1ygiAFnGrQKs+q?=
 =?us-ascii?Q?6ECNxF684oGsDO2kvlBuuw+xEtNCQgfE7OMeU+p995hQijQXN5AoHoStP4wU?=
 =?us-ascii?Q?fQOdZdRZ7jvnDlJNd1RHpxgMYNkJo9VhbE4sylIgzEKCmN+2tlMcuRKoN3hK?=
 =?us-ascii?Q?LJZavX9qpgJMxoVBmqxpImxM7pAUT9VVRIMn5NPmQp/wuFXmGqBiQGolnIbS?=
 =?us-ascii?Q?gnEgc2RV8pU76EsBE5M22/BntGK0pj/sM43A+ikk6NyfA9HHDqHDwTaRTyIZ?=
 =?us-ascii?Q?HrnFhY5Xn468O87kfXQ5+nJH4C33uSytdwkGCCLxANk5wJfSnb/OBbUI4vxu?=
 =?us-ascii?Q?I66o9aewQ9Zm8diwla1hzUjrJXW5oAqL8ptfILV6/al0UvFKSH8sgF8f9ifQ?=
 =?us-ascii?Q?fsjwL7+LHKTTNfgjKvWYVNciyMmLNbw7cGWlIx235nq2zMHr0wI2RwuB+wyu?=
 =?us-ascii?Q?zBH5SxyVwYbeJKgbJSjmuhQd8wOuKF2/mWkQOZ0MT3AX7Da9kfldV+1UCVUU?=
 =?us-ascii?Q?VNBLF1P1Yg3dT+oVpp6OZBSE0eQi8ku/BGXKv7e9RLntZ+3UYYOzopNujawy?=
 =?us-ascii?Q?2WORsMwOB0RrxQ8WvnjXj16MqiTBZsq6Yo5+gUbSUauGP93DM2D8W65hcDQG?=
 =?us-ascii?Q?1oKO6uJcRPdgmuGp3NNB+f4EItO+AOqHjpmKsJQfg/MKZFfSlt813RLKKdkR?=
 =?us-ascii?Q?zfSyqbkQXjr8rBYgOzmMB3PNacDa8nauhStOl2bo+wEE36WFrHYfEql9zrsZ?=
 =?us-ascii?Q?NoRhhXPAU5wR295NRAdvSp0kIk0edEIEm2xMMEsHHh02QZpsxk6l7au2sups?=
 =?us-ascii?Q?ZyKtUQcH5M+7l1LTrP9d81mAbJ0yc9J6j/c1E3C9dLC08wagz4Wzct+qYGm7?=
 =?us-ascii?Q?E1vIZKg8QVwsTQE+K8hla0LU2DR56Y9DptHFtGSo94KQ4PYCidl5a1S/De9Q?=
 =?us-ascii?Q?U9Ms2mlSiNVaFnXHWwIToAl+4ANf6LuBFOINTB9tBknhnJr8JVBASieIZqI7?=
 =?us-ascii?Q?hkL0JzkxuNvpzjaIzJqU5yu+jJQd6SDOCBDje+S+dR2in98Pkfmvjj+4PkAw?=
 =?us-ascii?Q?xh38t2tozwR2Fp9vIt3RLNIPIyhV6NdP2WVzlX7ZfN14MW6DsB4y1SHg9V+n?=
 =?us-ascii?Q?I1LLo8Ly3GARaFpVCjz2JAvjWyWpqK7EhWE8BmafswGhvgxr7TSkhsUO2IxP?=
 =?us-ascii?Q?q7ULfw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d6a4872-925e-4869-64bb-08d99d8bfec8
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2021 23:04:44.8347 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NPTmrZQlp9nXFapTMjBnCMurIvG1SUuvRqfDQFkBfkfaNJa0PLKhitwWlNG+bWbjcsuLhXKbw7QI8JhKNpJt1lWvsEIBp8/g+GPbMseJwVk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5528
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net 1/8] iavf: check for null in
 iavf_fix_features
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Nguyen, Anthony L
> Sent: Friday, June 4, 2021 9:49 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net 1/8] iavf: check for null in
> iavf_fix_features
> 
> From: Nicholas Nunley <nicholas.d.nunley@intel.com>
> 
> If the driver has lost contact with the PF then it enters a disabled state and
> frees adapter->vf_res. However, ndo_fix_features can still be called on the
> interface, so we need to check for this condition first. Since we have no
> information on the features at this time simply leave them unmodified and
> return.
> 
> Fixes: c4445aedfe09 ("i40evf: Fix VLAN features")
> Signed-off-by: Nicholas Nunley <nicholas.d.nunley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
