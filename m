Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 221A17DB5B2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Oct 2023 10:04:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A53954F4F0;
	Mon, 30 Oct 2023 09:04:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A53954F4F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698656651;
	bh=A46KAVSOHHEKQOSh/Swm+jXpMf+lg8Lt976agaYxoDA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uneQtWxFSkIz771b2B9B1jdnd7sDdqh12m5xtrJpTwPCFzjqcDtSBRKnf+IlXsFtG
	 p4he7H8EA6EGDqUOs7tI6DNLDQ+T3ykabPkezL/oGVqrwJvl5g82K2koOWTgYKcGvc
	 9prhgQ447+q5gbWs6hvnJbW0aZXP2aw5Kk2fuj/LYlIyWelb/dBHrLf15xhvzt7ghX
	 GOBnS6mN0g8t7V98RKRDo0/uyeM8Ri+p8VqgFCv1+pj8q3gx+gSbKVD6EDuVWlegbB
	 6Q7QzgvQfKKTesJlwPYz9sRWJwX4yrAoh4/exkPaYavR3W76wi4PPPgFMEtmDZ+EDf
	 rWa2+mZcNdEtQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AQraOIv67N-h; Mon, 30 Oct 2023 09:04:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5E8684F4E2;
	Mon, 30 Oct 2023 09:04:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E8684F4E2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D65811BF359
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Oct 2023 09:04:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B9C8F85553
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Oct 2023 09:04:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B9C8F85553
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a-rvyWZF5lQM for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Oct 2023 09:04:04 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DA0A18554A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Oct 2023 09:04:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA0A18554A
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="452295954"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="452295954"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 02:04:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="826000355"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="826000355"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Oct 2023 02:04:02 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 30 Oct 2023 02:04:01 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 30 Oct 2023 02:04:01 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 30 Oct 2023 02:04:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eh9lfTsgFntFz33NsSTcJ69qthvnNffFn6vzX2/e15+W8O8cABWWpeMFzjI0z03RsZRKXdmjgvyS+2hpzJrHf7do7lqwAXSVoa/rGr0rdX9uphs0Tp2aFdrWm2zF2bOD6BPc01eNYHaoT7Snmc49IobyRMYEAf7CHMb8E/dhcZJLo2898B3+gwkPqsVoc0doiLGsl68Zbo00XFeE6sB7wY4gCVvB8PDJnJC575saRofJBAV7X8DOIkRHvZgFcyONP+Y26av4X6cFE++rHhcW6LwuoP+9UdI7JFrnHWvFJYC0w8CDdzaIOL85NlbxrU/PLFUVyBBmtWuXFXuklQZfeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZaHpICN7hR90rsMs3w9PFjYdmq5GcQsALrg0TyR7NWo=;
 b=GHodMxhch5ZcsaHiaLne7fLJYjVCJkRLsWkX34Yh67gEnD2tfUl9XkhR0jYWTAMK6WwibtLX2qFADyqVIB0iNMA7ipCIyClouuYqcmFTMPbT8BhqDDa2pcAf72CgXqaxIusrxFnQBMHQwzMrA0F4PEsTdyL8Ht5GnuvO/IQqfAmAxfqS9v98YEcAzZGT4aTj2DzUNstSnKtKR3O1vaWFN69tMTxySf4iLulr/z5YdUEIwHGqtvD5MrXo97+EKcsycbYMNlNZ8c+o+JsYD6RIpUPUI2k+BV8UDHW05Bjo0vgzKpCTwwHnc3FKD08kXIZyj+96KTB7SsMOEEjSUREV4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by CO1PR11MB4978.namprd11.prod.outlook.com (2603:10b6:303:91::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.28; Mon, 30 Oct
 2023 09:03:59 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097%6]) with mapi id 15.20.6907.032; Mon, 30 Oct 2023
 09:03:59 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: ivecera <ivecera@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 3/6] i40e: Use DECLARE_BITMAP
 for flags and hw_features fields in i40e_pf
Thread-Index: AQHaA5P3bOgubmWSP0ePBzjqfldr77BiF+sw
Date: Mon, 30 Oct 2023 09:03:59 +0000
Message-ID: <BL0PR11MB312265F889807ED756CB63A4BDA1A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231020193746.2274379-1-ivecera@redhat.com>
 <20231020193746.2274379-3-ivecera@redhat.com>
In-Reply-To: <20231020193746.2274379-3-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|CO1PR11MB4978:EE_
x-ms-office365-filtering-correlation-id: 9c1c4a66-1121-439e-3af6-08dbd927279f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: B9IN+tcQLAejc0BTloqTEg6SxaypNuPpH3ky4XAkCLXApX6otlRAsXjxyTsWJ+m/cxISIFqceJ50cLpwm6rXLebl4sQ+wRKvH+h6j6FwbidkEuv5J/NruC4iy3kWWwrSu04kH0eN0Y//4g2qu7XgqBbYSSkdcFKX8n7D+ZotvfMyaLWMptL0ZpCzShwbVX003knY+WwoYwoOwM2PDGHgIoPxG/CfFk/Pnr3eCS/nLGknQFpB4ya0VxoATgO4sYIcrUAPP7fv55QvG7ZVhFpSs1V5M0+JQXcrYT3OjaOxQ/SZnHUBjcHOvbDQ6VjTv1fbzmMb6RHFWsVr/tGQezIQ7cFh03v7GQ7Y+vy7CYE7e9781V1Wm76NEuLrB51k8/bkoyAsZb0bxr2pEMs8bVUSahn0yjaWsUJ06pA1jsMmBcQIeGvw8KFSwSHpf59aycZoMaZfOD6UEYC+bf8+1lPbH9eb2E7qEMQVESpmePhi8E2Kf8MBy0idr2MkwGVi02rUlOwCY5fq2cQY/5WMGdhkq/i2bDvb03825mFZDgdMLTKC0FIJKIPDbIxu8qVzciF1wcPNqrjQ8zjB5uX9ziV0HiDtOVvdN/Xg4NnSd2E3uuI7mcgy9xIKdK8QVE5MRCYZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(376002)(366004)(136003)(346002)(230922051799003)(64100799003)(186009)(1800799009)(451199024)(64756008)(6506007)(7696005)(53546011)(71200400001)(9686003)(478600001)(83380400001)(26005)(2906002)(5660300002)(7416002)(66946007)(41300700001)(54906003)(66556008)(66446008)(66476007)(76116006)(52536014)(110136005)(4326008)(8936002)(8676002)(316002)(38070700009)(86362001)(33656002)(38100700002)(122000001)(82960400001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TBjI9xNd85nQAMvEjM7fgqUTdEDuiUgLoYOFrORaoC4vpEJ+8fenVugNoD/+?=
 =?us-ascii?Q?xC6d6phfM4/JiOEKXLypxhA8VlGhHKyK/4DefD+jlTrXnhuYfbp6tPco/JLj?=
 =?us-ascii?Q?f643Jl2o7ZVtjzbzB4mMm9JMupyoyJzM+8xB4vGGavVt97lGBIwOp/vbDj9l?=
 =?us-ascii?Q?manKatChZltPvjFj/rRgXDYxyzrT+JIdY8JgpGwuoRplVZfG5xmaZCpJojlY?=
 =?us-ascii?Q?3W/kR4/c8VjbRuGISKRv7ne024L5UJi7VLkSv6L+WFmV1oJfNVquJXbtjC/i?=
 =?us-ascii?Q?O0/vs232EUOjhGS+cxw1uDJNwj8qQvfHqTyHw+uZwl5yk3CkAYUNzj3xNUEP?=
 =?us-ascii?Q?ZmwmcUkt0yUb6uvSiNUGr7v9Pgjr3HhodbQjxwQg0yx97jd+UfbXoH7nISlA?=
 =?us-ascii?Q?WRvlM/G+dn6NC8bK3v7PZ00ZeoU5SkQ1qVMnPSjfT/5mH261yu2DfabmrwV4?=
 =?us-ascii?Q?fM9ByRlAUqaXybW5Ht3Y015EFpG1iq2qPXr2Senxr5Fx3THUzBctG0eHTPUa?=
 =?us-ascii?Q?QzDzvXBRbcE4WADmiDom9AmZB1plx17IWH/KGc6Xe4Hy6IIPKVllE6rihi8f?=
 =?us-ascii?Q?4tcFx9bhxTwbm0PLKcA1YRfJRkKVwsTDE20pvMe9wLOH6/JUGsM3ILlyaa2j?=
 =?us-ascii?Q?S97jsqO+Qk7hS3p41bRjkEXRcyyGIFCYQRhaSFC/u4QSRR1XQHi3pVLuQsum?=
 =?us-ascii?Q?a35GVPSCGL2MsmJiz9qzWerGLLB96VIfQEbu/Ztdg+RJr+C+t8hMF4EamiDx?=
 =?us-ascii?Q?hppiWs8iQuewe2OLnq08tMBQJNgv5H238Wi8XJBnIzrXGTMkKBHsZEyPPshf?=
 =?us-ascii?Q?EgytVDxaFRT6ksZ544ZHC6KdcNLEXfm6qV5h9Bow5GsLVbONrMb7QaViQth/?=
 =?us-ascii?Q?HouwglvCbHmeyZYBkEXlYDtSFHthwlMRElzctHARprt9sLGQOcAnXYszvp4l?=
 =?us-ascii?Q?Rdgr1COf8uF5NSJSoGvRwUt7NNM7F95QGzlx1UO1BzZit82+dyc2FTGyNVnc?=
 =?us-ascii?Q?BnBpBwYzua4nnOUjjKnj70gLpcOGY7cOPWW3Y++hc6HHBbA61ofHGSZN/mot?=
 =?us-ascii?Q?UzjnaghEMXEy6oCx406i9DeIBoXrxr+aPq/GRDERMKh2xDdmVzmMMTwm4SaV?=
 =?us-ascii?Q?qbArmnWKYjuratiF1IdiZCKad3HuVhJ68e3oRPnVVA73x/3MVA5BzwiekUFu?=
 =?us-ascii?Q?+tigiB0RaKBv7HbXc3WS4fzlyUQ0WI988Rxn8vJOIA2FAFnxdRL2F4YBaOPp?=
 =?us-ascii?Q?3SSwhkYRc4NYAbHDlKV26LvyDQYHI6IG5jKwPA73ai0KVBvBRiocK2+SS1RO?=
 =?us-ascii?Q?Z+16UX3SW4NRxvVqNl6D3hov7PRGZaZzPja+FvC28tkksxVsBiOYTepicvmd?=
 =?us-ascii?Q?OEmKW7IGL7hKuAREbHZT1IzVCAbDhyxiPbfx5DXQZ/BEMtJA4zm7oR7el4WU?=
 =?us-ascii?Q?Knkz4C7U1bXO9iqgfGdo+4xHzi7ZNQotK3XV5FNpvcl0qW2v12wKcd11azcB?=
 =?us-ascii?Q?/+GF5Tc9Rfaz1ZDxK3NqDmWKa823psk6F6HGL5K7xk8YNwNvPnR0ifWHnHzz?=
 =?us-ascii?Q?hlGZ+xSUhb//GbKjABPC2GbmZZA6BX2Y1WPMhEWGM9RtezaW9dF/0LXf3vEc?=
 =?us-ascii?Q?hg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c1c4a66-1121-439e-3af6-08dbd927279f
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2023 09:03:59.4506 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IzyvYA+LqWSoQavTvEJJh1ptA5K+SXXssVX7Dj8sS5ljGxoSJs/MorEhdjT6OMDQatqFmNkIzTC8fLQY/CHoqzJHUTYG7ZpoNSO2SnxqrTQGeFGGt6WdZCCE6/3S66m5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4978
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698656643; x=1730192643;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HXGK7sSsr5+opx08mGT0ZofSHBbyl3M3jD1J1d73E4g=;
 b=Q4FnNHvtGUjIrq8Q8d1yxVDEhiyF6FpYW66H5d/XngJCQY6uLDdhRrRM
 m8hC34cVulgj93U9TwLWiF9P6gztUxVWEs30/nAHRNZII7/ZMVTo0T+0T
 KSq7CwhI4NbsIClZwe9pqmXiNbEK+ucxk2sJxT8AckNozJeTxH0saA/oS
 LqUX1mrOmPQvOu1TpIdQOBk+VbUhU6UB1X3DwFbhXPh2e5SRNBosqea3Q
 85A4iFcJ17erFeeV8UR2RKgcjHBAD12cGJmmx5ixiagGvG2OTbkj6dEm7
 M0xNGu1uoUlbFsvS7T3OO53lDL5AiFO1vhgFHvWBU7n4mNjSxOf26KcKb
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q4FnNHvt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/6] i40e: Use DECLARE_BITMAP
 for flags and hw_features fields in i40e_pf
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
Cc: "dacampbe@redhat.com" <dacampbe@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, Eric Dumazet <edumazet@google.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ivan Vecera
> Sent: Saturday, October 21, 2023 1:08 AM
> To: netdev@vger.kernel.org
> Cc: Eric Dumazet <edumazet@google.com>; dacampbe@redhat.com; Richard Cochran <richardcochran@gmail.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>; open list <linux-kernel@vger.kernel.org>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; moderated list:INTEL ETHERNET DRIVERS <intel-wired-lan@lists.osuosl.org>; Keller, Jacob E <jacob.e.keller@intel.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH iwl-next 3/6] i40e: Use DECLARE_BITMAP for flags and hw_features fields in i40e_pf
>
> Convert flags and hw_features fields from i40e_pf from u32 to
> bitmaps and their usage to use bit access functions.
>
> Changes:
> - Convert "pf_ptr->(flags|hw_features) & FL" to "test_bit(FL, ...)"
> - Convert "pf_ptr->(flags|hw_features) |= FL" to "set_bit(FL, ...)"
> - Convert "pf_ptr->(flags|hw_features) &= ~FL" to "clear_bit(FL, ...)"
> - Rename flag field to bitno in i40e_priv_flags and adjust ethtool
>   callbacks to work with flags bitmap
> - Rename flag names where '_ENABLED'->'_ENA' and '_DISABLED'->'_DIS'
>   like in ice driver
>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
> drivers/net/ethernet/intel/i40e/i40e.h        | 165 ++---
> drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c |  24 +-
>  .../net/ethernet/intel/i40e/i40e_debugfs.c    |   4 +-
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    | 209 ++++---
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 587 +++++++++---------
>  drivers/net/ethernet/intel/i40e/i40e_ptp.c    |  26 +-
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c   |  20 +-
>  drivers/net/ethernet/intel/i40e/i40e_txrx.h   |   4 +-
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  20 +-
>  9 files changed, 544 insertions(+), 515 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
