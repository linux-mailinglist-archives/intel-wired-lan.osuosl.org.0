Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 624797A1808
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Sep 2023 10:11:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ECBFC83B5D;
	Fri, 15 Sep 2023 08:11:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ECBFC83B5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694765476;
	bh=4WGTZ72ZGoSKusp8gmNxdXFvmczuSEtLgmFgSNM5l4A=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xi2W79DL3JKDv1Jm0Jt7N8uU5btzGIKaxI/DtHFNzUBVkD+fDpkekdivjeaMff/+P
	 RHpQREG2cL0LqyKBKWdvUa4AVdK4oYURPLwQpGmM8Y2jQVbTGslVrvkZBvon84MSnT
	 O7hQd3ZHhwh54Hny9xM1Q26oGgvfAtpZSn122lH8/HZZlM5CMYdVnIiocBnlNANxAm
	 L0/FHRHnnVSJQ1L1i/ww50v5IYnS8nYbjs35375EncpqquWQmj5sJ3yzrb4ebPOBvj
	 poBKdiBJOfvph+DzYZQS/kSgXdxFvhr/xOeGbkxutgVMK2Uja9uQBO5oj07kZQrTQm
	 pPsSPni07IHzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TD54jqtIeAM5; Fri, 15 Sep 2023 08:11:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF2C483B5A;
	Fri, 15 Sep 2023 08:11:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF2C483B5A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 637D61BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 08:11:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 478B040127
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 08:11:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 478B040127
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZqXQQwl2qX2u for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Sep 2023 08:11:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F06EF400C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 08:11:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F06EF400C7
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="358608229"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="358608229"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 01:11:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="694641895"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="694641895"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Sep 2023 01:11:06 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 01:11:06 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 15 Sep 2023 01:11:06 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 15 Sep 2023 01:11:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gi8jsdnvahTvrrtBpSOaLL/zgZrZNuH27NsIqxPrA7G4vUb3OfB/wa5uQL4835YslV0Z9QhnLSYwpwRz+6EEa0Y8+N+lVxFAhksBy1vzCTbBLg5XImvEuAoKwjhhxepmrQfYQi7H3HLl4jWD8ntTgiN0WOjdGm1RfWTfaChs93UFFIisJrXKqUHzCt/+/H4OxfYZn2s/Suwh9OJn+0vWA7Zi+ScSrsf83AZtcRpxtz0sUtnIA4n4A1wNiIfVIDZl8AZfaMCTSlEHq+8BR3ZOtmLreVtCNvWgCQupDzXRYZvLUfoW89rWEFNKv7en/1Md7ElfIyAO0FRHnwYiyR6+/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hUPyfIK0pHXhyM7TbUM3nP64ODJD2M804wcjSRYorbA=;
 b=kMmkxSkSPrNQtv0T51gIGf1dzgY2vGdwMfO7Kx+n3V39Tk6jIzrSJqt6KE7FuY78oNg24DyJQry1/DG5mCduIUyPNki0fIwCPO5D9jxF0WYk3ARHDfU+bhzVVIE0xRJr3OBQ/CLknyRRmsb2kukYEnB7U4t2ohkapHKnNGSgG236RU/y3fz1xOMuyRV86M3zmUZ05o1HAYeWCEa1bLrBhnNragdG40s6jrqhKwKAefot/lOIIXMlZl55Ie97Z/gomjx0XQdDli0NDbSS70RTWj/wcmqVI3gbhYnVJ1jGvP9y66tGO43aJ1MbSi8jTbLwEHZfoJA96idkYL7PGvZmsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by SN7PR11MB7018.namprd11.prod.outlook.com (2603:10b6:806:2ad::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.20; Fri, 15 Sep
 2023 08:11:04 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::d36b:7f39:5410:6b30]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::d36b:7f39:5410:6b30%6]) with mapi id 15.20.6792.020; Fri, 15 Sep 2023
 08:11:04 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] [PATCH iwl-next v2] ice: store VF's
 pci_dev ptr in ice_vf
Thread-Index: AQHZ5XCXUqZGgitRIkCHVCW2tY88SrAXH9QAgARtg2A=
Date: Fri, 15 Sep 2023 08:11:03 +0000
Message-ID: <BL0PR11MB352164FF9E164361B0FDE0748FF6A@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230912115626.105828-1-mateusz.polchlopek@intel.com>
 <47f92633-4bb0-49d7-9a03-d1ad6cfba464@intel.com>
In-Reply-To: <47f92633-4bb0-49d7-9a03-d1ad6cfba464@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|SN7PR11MB7018:EE_
x-ms-office365-filtering-correlation-id: de8af8c7-5c36-421b-c806-08dbb5c34e53
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4BbHFdklSgXtMLIQzgVYTVOerWZHqJIn+ZjGNkWZ+A1Y60iNA2w8Ei8FbszqvecdpWXiWKnsbj3kNjgpRo5G6s+C9iEWLTwLDWczfxEVsEuXOIhTz5MNVf/gu3R9jBiK501D6htpdgPi6nxaG1ngVCEvqvLA+N7W6Ph5IMtqPq4pkfT6hg5rU5cplLfCRBOg2GIcNzScHF+m0aaaQ9+0RYPLZ1FjfrnUwPi57FMz3zuyGn5gxEdBUI4VV49J7tdMo/P+vmgF3dW3cYlMRwY7EaGcWJfyGyKVKf0trKtmZe5miIuIveE9MElGpaw/dadr0fFKSMA/NUfKHJkAbDhnZj5q0sBPATK/Dj5YoT13LWm2zuFaQSzIh6quy0Sh7Xz+vbknea0Q0uCVX2X9alIFm8VKP2XKflR8YIU0RlE3oNs0tGRefEsLcO2GGQMk/DXeO4QfLaA2TAYiAeKGF2l/UQR4aVmgC5SX+HhIqkmMDN1pcG11kyF+XlfEkv2XnEz1F7Gq3nVJkUx7rAf1t/PnxyKeDTH1o0w1IeLkYL770FBkxU2AITY9Ge5JZ7Ix+yQCEOeoi5wP5vJshtB/7QLl1AAHP5EFtlLRNOV0ByAR+2a3k1UUZJcIpAfsyMRAFGykKIPMoqLNSmue+kwmJfyYkQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(39860400002)(396003)(346002)(376002)(186009)(451199024)(1800799009)(38100700002)(38070700005)(107886003)(122000001)(966005)(478600001)(26005)(71200400001)(9686003)(82960400001)(7696005)(53546011)(6506007)(66556008)(66946007)(110136005)(76116006)(41300700001)(66476007)(66446008)(316002)(54906003)(64756008)(83380400001)(52536014)(5660300002)(2906002)(4326008)(8676002)(8936002)(86362001)(55016003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0dmR0OAzVgKbeD40EVKIQ8vQKb5OwJm5vo0Khz2Y7SSKU2jDxQ4cNwyrMme8?=
 =?us-ascii?Q?VodLul+Hkcgf9vXx65IGp4owf9xZ0Yr5GJ3RnoAnvVNb3EfEIHr6adrYsvLm?=
 =?us-ascii?Q?8G4nrBkRydo50fXdwdMiAq+bo5GF3iIKMwddZi3tV4SDbzdrjn8ZpiIAFxC0?=
 =?us-ascii?Q?jYmYmTFaHiBbCGl+8DCra01qLC8DDjw99lKl73SPpK2g1Wf41yxuBdB//ZGe?=
 =?us-ascii?Q?MW8vljl4hGXnqbNQ56BxVJEG+b0PnLCDXpMtq9WCSODJ8jQzOae0gFVeWLEU?=
 =?us-ascii?Q?XRSCsuJf2dB3qAV0I6DeaijeMYUyQcjJue7DOczKojjc2Mf83SXzpFYMeFKd?=
 =?us-ascii?Q?xD8veumcCdWdkjNoozvZkM/haq7ekNFBgnVlj/G5JLJlDOFqJCF8Kbv4ShMG?=
 =?us-ascii?Q?l0XVIbK+HACmeHS3aq7QVa4ELgeHfGIbsdVW4iHqVECT2Tsr14pWFIfZT15L?=
 =?us-ascii?Q?219fjgY5+oiCdWmrFTw1DcFL1g7rEbA2NSC1wXGqAA7AnPSXgzPfjiZtRi43?=
 =?us-ascii?Q?nBcbl86GHZlPxrz8lDIIagvY4+I/+OFI3miZY9WERlHFEoCEMqlOgCZq6w5q?=
 =?us-ascii?Q?lYCKTy4RMLSUhTE5neMD3qXox9xlCAWv02v4PaRyU05Bhlb+Vcu/c3h4fVhE?=
 =?us-ascii?Q?CRsCXMZCE2Awa7oFTP4/QXrbBdm/3jjjgMUJH6GrJiKAIUKlczTHaV7P5ErM?=
 =?us-ascii?Q?bXuIE2MEJdbgZqRXUF+BvcBtHrou+Ii1pXD201dnL91vgHg00mCsKjvycdM2?=
 =?us-ascii?Q?zP8Sr7HiWgBdrv7k+12FTbA+0mn6mkIvj9jqf1Z5juhdrbv1MiGAhmF2UgdL?=
 =?us-ascii?Q?4wIuVLzpZRVX89QYeC6etMisCWCu3IUTzhiL0Xhx/R2dTJCogR8RoNb97Ire?=
 =?us-ascii?Q?nq6D5GqBQn44cLy25Yut7EjJYKMhe0zq+XrwJc2f4hyQ/j4RoukAIMmQMTBa?=
 =?us-ascii?Q?m1dzp+rT+0X1YLvYPfHEeZpNW6sJlSG4uZ9wCjJqPQ2BmCL1n2hKrHHCREoU?=
 =?us-ascii?Q?Eq0AJ1smdsOOwpr4HV/BZV0P3b9kXXzhANq3ozV16zUPtEdUoW3O4zx4odRf?=
 =?us-ascii?Q?CkT4g4rL1fRi2H/hzigQBNOodx1dlvOFlCQOgS5vyvpK0sogEn8LJQ0egwKh?=
 =?us-ascii?Q?ud3zZzHRioqqgFEmd2TnWhUVnsKXkHz8OcVD0Z66M1x/3r5ZA2KooGLvqrHx?=
 =?us-ascii?Q?Pp7E7wTIrzumjhypdq0YpH7BuxkU8vFXn9Z2vYWZuTkwcJPKqJ1t2Vkuq0i5?=
 =?us-ascii?Q?EiqavIFQMMEEr8TpLlNIwIeKjn41L30kO1lrpa1/Gso56B22BUJrgz/dnE9G?=
 =?us-ascii?Q?MbDtjxLGLb89E6FdQ2n7lmHEdYarLiEZhDM7tAuAijKCy5XzztAVbCN8p9al?=
 =?us-ascii?Q?/uD7lwIYLYI1UuueLKsuLOT9w5ADppo2Q0h5r6F73B9b0G5DiS+mS9MdUgEl?=
 =?us-ascii?Q?xm8/QuMrZaIxUCt0qX5dVeGOfZQFPsN9ba+5ofg7PUT+mp6mlpZrwPNGkGoA?=
 =?us-ascii?Q?6i7kqgQziUKx6C9DbkIyPqtpw32uz/hy8dJZpSrYzXVkdPX07f7o8tn5HQ1Y?=
 =?us-ascii?Q?sK3mIME+u5gKc+z+xpXidbO+sziEpPRE6GwW77mvmBYLZRc302/Xq2LtvlEY?=
 =?us-ascii?Q?pQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de8af8c7-5c36-421b-c806-08dbb5c34e53
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2023 08:11:04.0242 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bI1a2s1DAzRqaIAB8AdbIczw3yLD1qvjaGW5UpNMmRrQMvev2bKsApfJa/2HlWLbY8jDhoL2udVL9WfXw0BvxEkKVAorjT3KJnx/NAwntac=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7018
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694765467; x=1726301467;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lRgy8rQrOndp00wDQL+/0CHHOQHsRI4NiR6uSnkP1pQ=;
 b=cX5j9PkjRzDV+Ls0lH7FydrFVZm0pM/ivV1wuweRwzlIF+JVs7RpUr+A
 z8UrRtCQLhRAsKeHSXGXjTEumnPSs6QyAI6sALqG4NfSDwqjjRM98WvTx
 9cMZeQFeeQcKaazvZ9jbZM5ptgLz0xkqQsCrmGR1zNw2A+vyW+Ffn3mdM
 qo7xa0r7Iar/fY56t+cZ53uu0xVbJjgD5Zt6sAcsZgh+/P/lxB8hnAJgG
 l3trkMOkHo0AzZVyE04I1P0jy9cOh9eRTYlPy+0OG5UFcZ6OCfjkUPmEj
 caCTWnigdf4GxU6J/FinbhOGVT7rYk2TCstrtr/9jGx25Uo3ZAByYByQO
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cX5j9Pkj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] [PATCH iwl-next v2] ice: store VF's
 pci_dev ptr in ice_vf
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "leon@kernel.org" <leon@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Polchlopek
> Sent: Tuesday, September 12, 2023 2:34 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; leon@kernel.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH] [PATCH iwl-next v2] ice: store VF's
> pci_dev ptr in ice_vf
> 
> On 9/12/2023 1:56 PM, Mateusz Polchlopek wrote:
> > From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> >
> > Extend struct ice_vf by vfdev.
> > Calculation of vfdev falls more nicely into ice_create_vf_entries().
> >
> > Caching of vfdev enables simplification of ice_restore_all_vfs_msi_state().
> >
> > Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> > Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> > Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> > Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> 
> I forgot to attach changelog, sorry:
> 
> v2: balance vfdev refcount
> 
> v2:
> https://lore.kernel.org/netdev/20230912115626.105828-1-
> mateusz.polchlopek@intel.com/
> v1:
> https://lore.kernel.org/netdev/20230816085454.235440-1-
> przemyslaw.kitszel@intel.com/
> 
> > ---
> >   drivers/net/ethernet/intel/ice/ice_main.c   |  2 +-
> >   drivers/net/ethernet/intel/ice/ice_sriov.c  | 50 +++++++++++----------
> >   drivers/net/ethernet/intel/ice/ice_sriov.h  |  4 +-
> >   drivers/net/ethernet/intel/ice/ice_vf_lib.c |  2 +
> >   drivers/net/ethernet/intel/ice/ice_vf_lib.h |  2 +-
> >   5 files changed, 32 insertions(+), 28 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> > b/drivers/net/ethernet/intel/ice/ice_main.c
> > index a5997008bb98..38adffbe0edf 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_main.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> > @@ -5561,7 +5561,7 @@ static void ice_pci_err_resume(struct pci_dev


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
