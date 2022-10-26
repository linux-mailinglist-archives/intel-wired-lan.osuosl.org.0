Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E85DE60DC8B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Oct 2022 09:52:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4088A402A9;
	Wed, 26 Oct 2022 07:52:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4088A402A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666770729;
	bh=JY3zZ7V12QEqLCW2sdwP6lvYQaouBn0KNv9viTjcKLc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9BnFRkK77Q+jNDbBpzJZCiqSy46HHeurDMPpUFVgJOB1eKeVfU1L9O96k8bVl4Bbx
	 a6XUbB7hjqk1UlVSZCcYRDAZVIHCQsInsxPvKbJSp7BzpTZXV+vpYq7IFIY9CauElb
	 4uuBhIR0ItEjeb8BZBadFq+yh3CYLVfBRVM9Tc+hW0hyUapoMkeqpZSrOddveOh5OI
	 3E7yIPdi769H5wre945YJqeGLaGFhSGmoQS4tGc84d/Z9roKY+Vs4TYM75OeiMtrgv
	 yS04vhUv2SuQOXiL24tYY0aOgA9ENmq3IIavx2broCUUl+JlV03wZc52EoIh5jJwja
	 z6Xs6U1ITnrHA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TaHz-feYbRJA; Wed, 26 Oct 2022 07:52:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BAD2F40255;
	Wed, 26 Oct 2022 07:52:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BAD2F40255
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ADC2D1BF8C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Oct 2022 07:52:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8504B40255
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Oct 2022 07:52:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8504B40255
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mQyjBdX0M7u5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Oct 2022 07:52:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E01C940238
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E01C940238
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Oct 2022 07:51:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="305499525"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="305499525"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 00:51:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="665200374"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="665200374"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 26 Oct 2022 00:51:54 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 26 Oct 2022 00:51:53 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 26 Oct 2022 00:51:53 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 26 Oct 2022 00:51:53 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 26 Oct 2022 00:51:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KmIV5bnUS7hvCYjZLB5Un6nTY7DyYu+M0Lj6OqfBL5lOjRWxFJ+JqXWtj5uc65rTCPThwwzg1uMGQkeeklEfkTcSOKYeHVA90b+R07E7k5/S8R7F6XTq369sT7KW0hyFh2Od3ZA/ZLGJ1l8RYSkbXaVrQUccVwxgvySkt3/3ddul2qUOTFM/4xCs1COXNBkC72ADrOq2+WkM1Y4vs0MZcmkPP8FzzfEq2UTqr3cFQIEv4IZ1qyLvzbwbBwz62mdoDMqUYvEwPrdicmA49t5XxPEeLfs0f3wxxtyhTM3C5hN+X7aFDgT39kGRW1T85PsO6mY+wKWPhbBqQKqK/ZFGIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S/9D9fCYK90QdbKZ9Jni920ANBmRuP7eWAQf00CiX4A=;
 b=MsOz1d1FCaQzusrr4ZOvo/XbBnLLRg7scd4xJLkjotzejNeJmIX4rKRxAbFaU12mmlzG+AJc6sTOAGknt0vvFiEdnRButgjnIVi2Sr1uBLe/weEbK2VyLef9nQ9isxVvwdKvJT5sF124V8Tkxyd/geAH8p82CZdkrApJ0kGRtsu0rfnJQ9LYwtLAsSrASsuoybWDirpy2JlSffy7J1mBuevyS6mdHYa9pakw1cIqv2QcOZiepszbWpB9jNMtT2P8CzlJKKuOhSahDnnuKv9ULASEcZwZjL1m32nBOOOUrkn1dr63UTXc7wj6U5HaYjPluW2QNVqmahCV7BJHdjEQQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM6PR11MB4705.namprd11.prod.outlook.com (2603:10b6:5:2a9::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.28; Wed, 26 Oct
 2022 07:51:51 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::888:2df7:7c31:e1e5]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::888:2df7:7c31:e1e5%7]) with mapi id 15.20.5746.028; Wed, 26 Oct 2022
 07:51:51 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Daniel Willenson <daniel@veobot.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 1/1] ixgbe: change MAX_RXD/MAX_TXD
 based on adapter type
Thread-Index: AQHY48R7KZFOAHPN4EaMB4nz4J8R2K4gV+Nw
Date: Wed, 26 Oct 2022 07:51:51 +0000
Message-ID: <BYAPR11MB33677B5B5A82F5AE4DD4738BFC309@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221017155259.32679-1-daniel@veobot.com>
In-Reply-To: <20221017155259.32679-1-daniel@veobot.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|DM6PR11MB4705:EE_
x-ms-office365-filtering-correlation-id: f11d9d54-be0e-4aaf-9979-08dab726f1af
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wl/Zw1ilSxgfRviwP5G8ExJqsLfDJ5oJjaKLbP6S8QzaPRrqFwM7jarH9wTA4sCef0v7ddBgPcarhKhKsSJidUShgRHD4/VbnFq0PVtlbjFvSGZmm31VXaJSsGE1uAtZJ2JYWVZJfR4ErVgIOb8PQdJs16h56WB8P+m8po/lq6dgUqVjRUTjti//XIi7y+XBi1wUSJxzdBUlkM8I9tVQUBo66D68MvzBGYXwCJJvk/RmvtmifcBXzF1yg8TXn2tae5kiThvCkmqEVAbriSTbUE+uYAHamEXoBpEEhLv7PQt1wGhFVdSF3nys3NKg2VUoHALv+sBSSOZJIH4bZFabw9T+JTKn7IxfyZF/R79fOpKVaL2mSjAi0uXzQSzwTMtv+nuMGMRPgbdj2ZXU1bEWbHpwGh7fiI/jh5nOPokJxCpSHgmQlxL6goNPHOEpsntLi0Nld+wskMRDSdpJZ7yYUVv0C8UgOFPJdCIrsXobJ8LMuzsFKbtswGtBWsZzEPOjZkINz/r4aUm0iw0xu6U7a7gtFmqhUjLCW9XhCd0B94VbHxOuGkyPyMAD2vXzN2/XmR5kYGAzrjrWHq3iedzTuekGFDyQK/AJaD3n74n6V/4XwI65eEm+vu0tv3n+SoFR8XHtoIFOsw+fN9+PpxjyO7bhltKoSw2SZ8IpWks8Gd+/9N/0TTyeWnWH+qjSNSDAH2qm8Ic67+bpmskgt/WXfmlU9nTMU+QH3nEhFICtmP64cLZZUiyCuVh/c3378+ny/m8neblaiNFdbhuKn5LwMA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(39860400002)(366004)(136003)(396003)(451199015)(316002)(76116006)(66556008)(55016003)(66476007)(66446008)(38070700005)(83380400001)(66946007)(52536014)(8936002)(64756008)(478600001)(8676002)(33656002)(41300700001)(71200400001)(110136005)(2906002)(5660300002)(9686003)(186003)(122000001)(82960400001)(4744005)(53546011)(86362001)(38100700002)(55236004)(7696005)(26005)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nC7BUuuqtrmaZ9pZhYYGP8RZlfmJdRbbhoJ5xhu3HkiTKxQNxCH6m2vv3t6i?=
 =?us-ascii?Q?3UM9m7rJL3AhiRNnUsRJ8B/+YqGDNVJNOOHn265+0ImUtILRJWpankUBMhh6?=
 =?us-ascii?Q?sdvViu181oiECzk4wUowZTb/dSY0UPIuL2cXNn8xeyNI4ZZ6OhQ81/tbnCdn?=
 =?us-ascii?Q?hQC6TV4uT04arHydBqDLPZLCAJ4VoDd24p+U3x3XDRySpV7ZIPw3ty0cTvoA?=
 =?us-ascii?Q?yUlRPoRQgeml+dkKMF2tBGRv+AgLos1MTYMouZZF3xnvi8VYyEW+vNz8BlMK?=
 =?us-ascii?Q?Ja4ZqkDIhUSAlTgmEvS9X3T8LBDmTEJwmiGdxbkL3pUaqoFDE8ZsCpdqYtuK?=
 =?us-ascii?Q?7wJDaNPXyOGa/Av8MmfOvaJ/Qh5qB9om+3nueiFURxqyFqOtYlnYpem2AqLI?=
 =?us-ascii?Q?DBUcgNh8SguhVPnqxjy1R5o+6nVMYrUsoL/2gf4G4iVq8XSDn2lmPaGV3OFj?=
 =?us-ascii?Q?sLBXsVgSP89icWSkULzBbR/W4iQEXM+mTmMboE1rjMorsCm3a9+i7Na1Zs6H?=
 =?us-ascii?Q?KwgXg64aUrtHoaai8tsMH8EFJHF2ZdDNIClEXhgYlwT464PHQhvZQuTYYuxO?=
 =?us-ascii?Q?vMRaceAdLnn+ZXPsUvdqbYhiEvfitGw2jRpHGBedbZ6cfW/dexlWVgXw48l6?=
 =?us-ascii?Q?/lCyLKOVVUPg+3dGOz0eFz3UslAwdClWn9UKcHwqwtHyHsGfh7goSQMOu7+p?=
 =?us-ascii?Q?FUsXEtXEJKK87URsfQWM1THarQ/Rg/tXTRw6iXQZwPbX3zwWVg6/LRrVSSS7?=
 =?us-ascii?Q?ip221PgljFO09rJSlwydVdzKfLIYJrmnoPWVebu6prgtJM4rj83dzxx2GiyA?=
 =?us-ascii?Q?YMIq3qEjYo3DR9OxyKH/wRl558N1ZvNiRSMnOsIQg+rigg4uVdSk5Lv6JDWi?=
 =?us-ascii?Q?PChJCuV3eY1zi/btEZa+pVt4bwjcx1sOtqImaPdgWNJjm31Z6tC5kWrxS8cX?=
 =?us-ascii?Q?A180eylITWOAJaQLAMBFZpQkQQ7jrmZFxNZ1i0LDhfYnmyZQPTdqiSNKPiXO?=
 =?us-ascii?Q?iA3rpRf+NLhtdAjjA0TNN4swNXnffzQulay3g9yhn1bGj1RjausMPpzsSWaA?=
 =?us-ascii?Q?VMN6CuiL/tI9BxrjYnYZpTzJna9D7ODQOmK19j29NY8044GhJp+BnP1dBflZ?=
 =?us-ascii?Q?/l+l8UbywUqqBfIU9ObYNtAWq0AT/WYbpEdmtEk33Sv9SpSnvrVD62a3TDb3?=
 =?us-ascii?Q?9TNKjEZfKv++dgnzOF3Gp+qHI/zpu8foUBBRKhSPQlGzKklmmCbaBHskgSi9?=
 =?us-ascii?Q?3Wk5yCLV8x8Mm5HrPRoOQYyHycBEfYDygsOJZgJqNsjd41cGH8J3c8jFD2mZ?=
 =?us-ascii?Q?e7TGiKqS9BM1c+3C6FyNQR9bDMnHhf0wg7dAPsiodYG+w7i1RBqQXaxtyTyx?=
 =?us-ascii?Q?g6otAJVsNGmWdQGVvPXNSzgfNdGe0w4FR7131UbS1YL+6i8Lc4n+nptB/2GB?=
 =?us-ascii?Q?syfVdNlDBEvoOosMW6kRiuxnWF4YSYhjIxy6pVoHi9J4Go6aU/+uqyKKh2Eo?=
 =?us-ascii?Q?eq9LPcW71dAFxGQs9/I46KN9F0n6JX9ojPAmjp10GagEuu/QZyapO5+vIrnv?=
 =?us-ascii?Q?6p7eujRHGx4ZYaGl3vEfa7LYFhitAVpTMWDFnw6X?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f11d9d54-be0e-4aaf-9979-08dab726f1af
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Oct 2022 07:51:51.7178 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bqyLe2MW+mwaK0wemjonGI+Y4wQx6XiKiVO+DGwDZLxg6noG6crfIEKnJLwviGhTzDuTBR3A7z6rVoRceeEjTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4705
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666770720; x=1698306720;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=JRyeQTDe9+cAj1K5OE5tdLvoMN2Ufbn4/6CW7mfsAvw=;
 b=JXNzBH8qm5fCqZWWwCE+OQBrv+Eor7mNj53aKmpQaYoV3bEqwF9ijmBT
 1JOxPIsUjEoX9JG5gmkbuLJyZfSuKQNSuwomZAd4EpzNJmDPXPmZ7yWWW
 cK1yaSidoZVs1XGZu7PcobQTcpC0phzCVtyqvTqhccSHOE2FPeIaYgCz0
 7zrSU9vpEQW88+9MBa+L1KBVIPYBvNPJ9a2Z1IqwPCLnuASJb/j68Jlg0
 P2cC5A4f/o+WunTOVnyV8n4O+6aqs9prcWwfHUKcAbih1eklTIXsbEgED
 /7efHJyd3aPlkwzByzy/Z80Ky344syMsLykdoGJhCIg5loQmhxz/Fjhh7
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JXNzBH8q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/1] ixgbe: change MAX_RXD/MAX_TXD
 based on adapter type
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
> Daniel Willenson
> Sent: Monday, October 17, 2022 9:23 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Daniel Willenson <daniel@veobot.com>
> Subject: [Intel-wired-lan] [PATCH 1/1] ixgbe: change MAX_RXD/MAX_TXD
> based on adapter type
> 
> Set the length limit for the receive descriptor buffer and transmit descriptor
> buffer based on the controller type. The values used are called out in the
> controller datasheets as a 'Note:' in the RDLEN and TDLEN register
> descriptions.
> 
> This allows the user to use ethtool to allocate larger descriptor buffers in the
> case where data is received or transmitted too quickly for the driver to keep
> up.
> 
> Signed-off-by: Daniel Willenson <daniel@veobot.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe.h      | 10 ++++-
>  .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 44 +++++++++++++++++--
>  2 files changed, 48 insertions(+), 6 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
