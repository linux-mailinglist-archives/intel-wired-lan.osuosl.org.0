Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F097DCB0D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Oct 2023 11:42:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C8B9835E4;
	Tue, 31 Oct 2023 10:42:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5C8B9835E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698748970;
	bh=a6QQb56P6pvyUKrOz19gr8b5+iwI57vMQCdxzwFfL/4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WXoyalo1LU9GWu5Wj+N9WW83iE6+LDqfp7syI+XUrs5S3eMCmh8ANYbZEoDXOoNCX
	 oz1gqRYm+TU87nAu5S2IAU5EYQ6vn2GpJZy5IuXMEaGbWZbdxFApVDzr4aGISZ7+hg
	 Dkk4hg4+SnIk7uH1XxD6B2Zezgdsc9TyGtb0WhlKOioRu627FNP3ruQh8VF+W6Annc
	 yY/9pDWYlo8e0wxBpIxIDvTfjf9myRs4YbgaQ9F9a2g8guayjWM8pmVeSBGHvC8/8u
	 HAxnQgQJTfgKUbj6OgqXCougx8KJ5b6fyzFRNDJFKHwv0IOCz7IFcbgOXvORHuDndO
	 vnZSpOi31/r9A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pTviOiWFnGXo; Tue, 31 Oct 2023 10:42:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 488A383578;
	Tue, 31 Oct 2023 10:42:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 488A383578
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2C80F1BF329
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 10:42:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 034D661291
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 10:42:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 034D661291
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1RVUbq4_3zGs for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Oct 2023 10:42:43 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 351CD61234
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 10:42:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 351CD61234
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="454728507"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="454728507"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 03:42:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="1007750376"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="1007750376"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Oct 2023 03:42:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 31 Oct 2023 03:42:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 31 Oct 2023 03:42:39 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 31 Oct 2023 03:42:39 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 31 Oct 2023 03:42:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ba10KXjT4P3DJ9GPRFKQdG2nyhRvjVClT1XL05nQbMRpuonhv80LUhqRDG2pevsCCxbDghAD+MX/PjsU7J3HNTtTvyn89Bhh8hSpUG5nrGKBgxSRF4A/nH0RaLv8pCIqTcBYovB6ms8itH65y3PVBZajanXlJcZmTlOZVuMAoH0UevWldryf2+XCk4C0wGIQrGpOs/O/ACK4QCXW1Cym/pa5bidKTCu8nZLSkOiQ2jiOpphLcI5MtgsYKf1NNUoBaOr4AISTQQ36SKXy2WALtZz/uZW2x7zwO8U0yHF3ott3P0r60RjgyW9xWMDZ2Hpq3gCUqakNsX53nUydH4rOqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FUD6ycTbMkdFJVkC8oj8J2p9J1BImcGmn87D4s+WZ8M=;
 b=UeAA+4eMC5l6e66jq+HT9b/1cuIrRdHD1kmNyuM62im7ub8aB3IFNah2J9bQ8DblBLN2hKfXOUhqM5QPGl2bbX5sCF8Qznm0NcTUA8hywjaiWTEqTEsmDoZCI0OnRr9C4pEeBG912T+/itG+BG+Mlp/U6FUIurATPjKVa+9nQi8NdaczhgRzk3q+kU1Xs3bx2J0WvX+7QW6qNJFZmbzajBVP0B5vBjfmKoyBBAnbr0Hh1nZW69NuSDZy3WjqXeDA00AvBWW7ZmNnM/iJCvGhSGev8UcjC3F29vC/E1kKVhkDKGawRdOvJNSgloPIipQcDlNYyp5yKtBSVgKoia1KEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3133.namprd11.prod.outlook.com (2603:10b6:805:d2::14)
 by SJ2PR11MB7425.namprd11.prod.outlook.com (2603:10b6:a03:4c0::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Tue, 31 Oct
 2023 10:42:37 +0000
Received: from SN6PR11MB3133.namprd11.prod.outlook.com
 ([fe80::6a4b:3760:4098:ed84]) by SN6PR11MB3133.namprd11.prod.outlook.com
 ([fe80::6a4b:3760:4098:ed84%5]) with mapi id 15.20.6933.028; Tue, 31 Oct 2023
 10:42:36 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Justin Bronder <jsbronder@cold-front.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] i40e: increase max
 descriptors for XL710
Thread-Index: AQHaArULw25dGBlf3EaKroRmYwaW97BjyDJw
Date: Tue, 31 Oct 2023 10:42:36 +0000
Message-ID: <SN6PR11MB31330A75C3147D54AB597790BDA0A@SN6PR11MB3133.namprd11.prod.outlook.com>
References: <20231018211522.29017-1-jsbronder@cold-front.org>
In-Reply-To: <20231018211522.29017-1-jsbronder@cold-front.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR11MB3133:EE_|SJ2PR11MB7425:EE_
x-ms-office365-filtering-correlation-id: a38ac303-b909-4dde-25ff-08dbd9fe18f4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G5jIiMw3nJla1cru4/ZGf9ZpLhPjXoAcgXk1suRt3o4z0N09GBmQzSxaadwACElzC/yU/rwIZKQZu9yrxltIOQE9M5g5981GQJYWENZvvtQRe9/Rns+1litys7INvow+3z1nAKicQWp31yjzYotkFHIaXW4Rc73vKN4eIG4B7wTc5OGUxwhvY76lRVNLKt52Nm88/LkdvmWsvGbdSacFJUO3F8ITcm5yxHoEEMJ7s1DNIlgaHQCMIoOSl07gQ8rarLFL5ejE0J1ahiNda1Ob2zDIvEM7c/gNWKNu1mhNZkTMUQRt+uIIkZ94T6aNnl/ghqpkNp/ttUrBGXxxPkBKOoGG7GbKDS0iVI5uu5F3TDzlvEXDRqnqSY+OvXOJ+T6OxY/nA56JwY83gu45zsCfpSa+ysgQ6mN4/N4m28tAVV63rAZu9I7tqqSAW5vZI1udVsLpsRGdpaSeKVf8H1gk751zoYRltvZf4Kya0ZEi/I1db+rDNJbZlYMtOVCugM0mLk2eFHwT8CDghlEt8Sd6d8P7UEhnrJrM8K+Dfr0cEHwXovxXmL5dykdRG3XmgFsAifUr7TuO7UB0v//b0cTcTo1EHhFCH9Bwn6bv8vdTOnjVcEiRT8guFvxVic++btXt
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3133.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(136003)(39860400002)(366004)(376002)(230922051799003)(1800799009)(64100799003)(186009)(451199024)(52536014)(2906002)(41300700001)(4744005)(38100700002)(86362001)(122000001)(33656002)(26005)(82960400001)(83380400001)(76116006)(53546011)(110136005)(5660300002)(64756008)(66476007)(6506007)(9686003)(66446008)(316002)(478600001)(7696005)(66556008)(66946007)(55016003)(71200400001)(8676002)(38070700009)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NiX7Js+6pUsRtsZOV4JwkIxDHqnljX+YFYF67nvk3wp6zZCVozC7i4HnLKqe?=
 =?us-ascii?Q?wxi+qEsO+MIufzdLNIQBRXy9yk/ZsfnlVQWulCMGuSn0bGh348X8ErlrBZRB?=
 =?us-ascii?Q?93rB6PloKnKgNdfc2tHowTtnW1vJO19gpvqIEW4GCC+dssSKjuB/M41KKbPm?=
 =?us-ascii?Q?SOgU+xx3SX46IFJ8HeA4kI8Z9rkveGKPBYMYTZMF+hnmvtWo6z88Irb5QCYA?=
 =?us-ascii?Q?7q1XpGuqO6Wi5j4DN6UCHTvPIOsynkbe5XM8JGfigGPFHSBbLrwGAnVXpU6F?=
 =?us-ascii?Q?GjE8ODFPWyYP0IoY1WdzoPy3mC+wjEc/iPEAWRDUljCdq+qtELAlNIMF4cHY?=
 =?us-ascii?Q?rJItHYRv0F04Bf0Rv6XFi+FgFC7vLzWbyxdilvCBzPs7B+KwDI9uER8yyoA2?=
 =?us-ascii?Q?fnKDDMv16eMhv+ZQZvSB7AFyG21PKw5g/f01JX1uB4/jVsoTkHNitQpgoLVQ?=
 =?us-ascii?Q?zmnh1U3OCpZkckdFD9iWUrMsehUsL+0hHkey0xuS3OGyvn19+7gHW1Z/xKRP?=
 =?us-ascii?Q?SLe5r4cdNKaGfQ3gLgcvXt7CL20IHRfDcJAZKrR+PmcozJZhVGfXHdl3W0YA?=
 =?us-ascii?Q?kPn+ujHTNX1CNj1VVxC9uDlP/76OgpaHy7OLcKpMAGwidLUxp1Co/+xGRPVG?=
 =?us-ascii?Q?xKvt/GdgGM4LX1m+9L9ZaYL5YETvnYf5NUXcrVGQn8S17BVEfKDI9eQEMutq?=
 =?us-ascii?Q?DTR/xYxU/UbVem+VoCo2vSbq6j1tv8rAinABcT/D/N/plxAJlfl8ECpYTVIf?=
 =?us-ascii?Q?QezyE9mRMCgPW+ZtfQwE4WslBC6+u77h9EpxUvH2+AvnS7t0gtzRve3pFl8j?=
 =?us-ascii?Q?Zt9EuziF8FKDDFJnhcb00FO6ZfmZeKHC92jC/ilnX8FzjPB3fZD8lWWxjB9D?=
 =?us-ascii?Q?c2qgUl/GEg3TJfa2xjFUg9yfSKGV5pr2J18vPzs6tLoSwtGucRfx453NxzX/?=
 =?us-ascii?Q?cVyEvUi4Hz/hhdXdxGR2RzbreZAn/Aye2nKsdGksnChgMQ8Ooa4HIBzM+vtQ?=
 =?us-ascii?Q?BHikUqVIniEABXed0gSLNg3K+O5dtLxu6qHEvOfDUDEtduyDgzWDLOvb0TPm?=
 =?us-ascii?Q?SoGKDcnVKjuKKlV+4yLxYXm+7pNJsHViwjS52VJQBOC2ceLiZgaf4ShwHq9a?=
 =?us-ascii?Q?etERx8s+PQ74GPImu2ly/zyH0pWYHUyyVVe72+yksCRJgPU0LmqUyNmDFTlp?=
 =?us-ascii?Q?O/QEpgldKPOzGIIMACphi/ZE2xTmHUw1sys25e5PvaJ2LxKGnsnl1z9n/1Zx?=
 =?us-ascii?Q?6bKGH/9z280Kj1S8LHwMr1o2MNzWFHGeZuFQJOA/ZVTHEYTZ9pf23FmW51Vp?=
 =?us-ascii?Q?Od8+kfrNSRhcnC2omiCUPWgLky8ZWuSYGgY1R8QwyfgqA0P+yVDabmRp0qhz?=
 =?us-ascii?Q?d+ZtCBbci4jRw84pYnPXQKxJPEEXdcYwRpN2tXUoNWjQnDe2sPChTAvO/exx?=
 =?us-ascii?Q?tqNkP6/R5ggIKLUbwJXh0gMFfPzFTLDqhoXxXy+hLqrQ04xzX4G8vCx3AHLd?=
 =?us-ascii?Q?UNGGfxUTFR1rhnw0pf1euIEYYXFtXzHW4JaxvXYK1M+YHG6wyiBwRklpXbti?=
 =?us-ascii?Q?4QXA3Vuxi6MtjyD5cCGcvrS2iwDxtxJwUvii4mxfkn1Pp6hQeR0CttNi1Ykm?=
 =?us-ascii?Q?Sw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3133.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a38ac303-b909-4dde-25ff-08dbd9fe18f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2023 10:42:36.6395 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eP2qeGEOE6Zjd5/sxJFB5PiPR+Zpp0KN3z6ul3w+gA8McglNxamrcYZko72neXqcRQYH/SKBiuZ0gQ1pWMnGMF8d6egNVeCNFBl25+xOzLekY4LODI6G710ev39HPiG5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7425
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698748963; x=1730284963;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5DLRsIyRgl2Z85IIxWeHD+F6ZJ305KjWRzfU3DKZ3OA=;
 b=VCZQkm4dtdsEuhPqF/iuQ3FJjIQa++elimMU/wJoXE/FmSrxHNJuitT0
 yA3IBeV51LWhNZO0FRZQ/nW3q0SoRKCNqsqBPkoqXP7W6orZRNbscSTT+
 YdqhNUwPgHkS4yexeqg5ZJrjEL7LCTy4cSrItJ0IheB7giLcWRhxJ0GWU
 4+q5Nt0oDKljUInbZiF4tBPrL3S/nUNrr2W40EvDCa82m9r6lYIBnBZFf
 h3RNQRMGsNCzvT1LtfYlBr3SessGMl0JrYfvMSrdJBvl6TgrqIg/wRj4A
 r7C2/HzAxGaTMiTL7+iEdiySm96u4tKoKmVE4T3s+DATjDpFOML9bdP0V
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VCZQkm4d
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: increase max
 descriptors for XL710
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Justin Bronder
> Sent: Thursday, October 19, 2023 2:45 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Justin Bronder <jsbronder@cold-front.org>
> Subject: [Intel-wired-lan] [PATCH net-next] i40e: increase max descriptors for XL710
>
> In Tables 8-12 and 8-22 in the X710/XXV710/XL710 datasheet, the QLEN
> description states that the maximum size of the descriptor queue is 8k
> minus 32, or 8160.
>
> Signed-off-by: Justin Bronder <jsbronder@cold-front.org>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        |  1 +
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    | 23 +++++++++++++++----
>  2 files changed, 19 insertions(+), 5 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
