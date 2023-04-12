Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B26D6DF981
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 17:15:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB69183C0A;
	Wed, 12 Apr 2023 15:14:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB69183C0A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681312498;
	bh=AoQ+cTGFVedKC/WuHWKXs2AB5QOzL9piszGJ8J23Alo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VodJRU38PGfEaE5JNbHq+lrVo+2mcYPCz0LhSQ/EKmd5T1W7WWQj/KR9kC6/FCJEi
	 muPDxM3D/D8DkDy6LwgOyvNKflsKQS3+xOpjwi/8u0N/S0aUgWtFUpjMUYZoSP/Hy5
	 trbnPeJGqkoFR3M1CDKxk63xrZ8CAp61uomKpNLXh2nJvz8XZrlrNbOwdyJRSlovX9
	 QWmdHHfpLnNGPimJJirE35eCjuxUUqZM1ojdmTBt+92BR5cvh72/nj2XVLQQpPDUoZ
	 Y++rAz2rlu1KutZSLPDb1qkHMXQnBW5USH5Q/Y0dHaPfypwE6Cy0bTvEkTmZDvbA/C
	 r4LnvK1vPz/xw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 54kPSGPLwBG1; Wed, 12 Apr 2023 15:14:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 89F3183BD7;
	Wed, 12 Apr 2023 15:14:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 89F3183BD7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4A14F1BF417
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 11:40:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1E3A083B3D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 11:40:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E3A083B3D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ymDrXPisOIJA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 11:40:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C5ACB83B3B
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C5ACB83B3B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 11:40:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="323492655"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="323492655"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 04:40:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="639188501"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="639188501"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 12 Apr 2023 04:40:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 12 Apr 2023 04:40:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 12 Apr 2023 04:40:46 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 12 Apr 2023 04:40:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pn//SdYvu9HCnTx1gPCGJsVZ7AG9GYIMfMyIulelvGciqwlClrNxYEPOrqssf4VCD3zGEUVY4YVqL1zDAAUlQXBpRePzhrwCmt+1I4/rfiZ+IIsu/SX+7oeqFtaVBqzTho8xMKfLktYKI5v7lq90SAt2uEjyh/B3oF3Co5kXneJX4NgQgdFehYI6DjNQzu12Ompvp1myb8OsqnAobuNZlvTLkN9LSNXeU6GgWtj7Y/njnmoR59N1imZ22XG/oQSnAkYynLVkSNOWRm4u1lYKE3t7dC87bC9QJCX1IVXc+giEkxTW/mEj6CBkHEryK17xTTasWkmMV46mQh/EQQSh2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=syycDIYIzswV9lNmILEP2tKun3bXf+K2hf1maSNosJQ=;
 b=LllBlAkINbWMS99kMu7FMBi4qr1Ogy6BS4hVUFhJkuwmUk7jF/8VMTyP+a35fEnkvPI0hRNJ+gk6TTig9eg9vagKuC4yIuCXPQtlZ6HYRmm01sz9bblgWn34GdHNdBDACRvvVqWbEHI/4fZcCN44uVkRt0LAVjhisTTR2Gok88vv+kdJPOdtl7kpjGVXykG71zcls6XCq9f7mCetRrTwKBft+Jtfx4BV0Fm4DVcbmeah7DIHIfLT7u1Nl4a7bnOigUCvPUDjEKMP1unwFtS8W/f6qiU+/yY8BjvSvnomROPQQGy5vEE9eJX1rOOwyWhvXjwk3jq4H10+FFmxh1e5rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 by CO1PR11MB5154.namprd11.prod.outlook.com (2603:10b6:303:99::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.28; Wed, 12 Apr
 2023 11:40:43 +0000
Received: from PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::1c4e:86ae:810d:1fee]) by PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::1c4e:86ae:810d:1fee%2]) with mapi id 15.20.6277.036; Wed, 12 Apr 2023
 11:40:43 +0000
From: "Song, Yoong Siang" <yoong.siang.song@intel.com>
To: "Brouer, Jesper" <brouer@redhat.com>, "bpf@vger.kernel.org"
 <bpf@vger.kernel.org>
Thread-Topic: [PATCH bpf-next V3 5/6] igc: add XDP hints kfuncs for RX
 timestamp
Thread-Index: AQHZXNeuS7IymFh/rkioE9W/4bejnq8nrPug
Date: Wed, 12 Apr 2023 11:40:43 +0000
Message-ID: <PH0PR11MB5830A6488CD7AB8AB0C89A42D89B9@PH0PR11MB5830.namprd11.prod.outlook.com>
References: <167950085059.2796265.16405349421776056766.stgit@firesoul>
 <167950089764.2796265.5969267586331535957.stgit@firesoul>
In-Reply-To: <167950089764.2796265.5969267586331535957.stgit@firesoul>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5830:EE_|CO1PR11MB5154:EE_
x-ms-office365-filtering-correlation-id: f92cf011-5cb4-4b29-ae6d-08db3b4abfe9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SKFmDWfgtakT3kUPbX3lP/MxkFGQJ/bS9DyK29inRQ0m5SobrkTEn61vClnzkoz2c2c5f9cm4dZxctFy7e3vDAtvOOp8M7ej5llwweNiz93RxuO5gJcC5ehYvxUm07UAZaDAtWY5l5LHyuyPnmdCiEl+ua4LhwbSRsxAStVtwj+zecfD1QH7idLXhLEJGoEKmuLPDX9D6FCd5uC6LyrACVimTPejqwKWQ/2dH7pv6lxKaYybjSjdE6vi5CnOgu57JVi8ePbjYoN4FZ6fcnwXAw8XPxMnPdetPOF9ebiEdEecuPKySLsLK8l68sbyeD9nGfkvCt9jSMJXxdrBqr5B4a+pFqO/EwzQe8ZyNUmc2aqdqJjL11tkavhhYbEdI98u0bNwBGekhM2nG0OgwgCgulHOIgeZaMBoOj2S8Xc4kg03xOpuSpSbC5DuwU6ZvpZDouiJVhwBH1jizrKgc/iXnZyhqxE+tUPnnDi/YiLgoTf6d6g2G6+F+eTpPVZYiLUXUhfvowUy30TM0HkDpaQP9EiLtgkC9Uff8H98J3R3js88V1MJNVQc4hNG1ZMHN/fQQU9z7Z4ZGnetEppWKCQqJA0sJB82ZQFZqsvgmoWFQ198XMt5r0LH2LaBCbgG21XmB+ak3tZAYYByMQYE25aJFpaWYRpetK+z6VV7vcYEGss=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5830.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(39860400002)(346002)(396003)(136003)(451199021)(86362001)(186003)(33656002)(82960400001)(4326008)(55016003)(41300700001)(66446008)(64756008)(55236004)(9686003)(53546011)(316002)(26005)(6506007)(7696005)(71200400001)(83380400001)(478600001)(110136005)(38070700005)(38100700002)(8936002)(8676002)(2906002)(66556008)(76116006)(66476007)(66946007)(122000001)(52536014)(54906003)(5660300002)(7416002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bTRlWEdva1FGNWxURHhJU0kyTUkyUWs5QkdvOW04d0FPSXIyV3J2Q3k4SXVK?=
 =?utf-8?B?ai9uOVoweldaODJRYytHUHBmbWdRLzdoNGVORTJ2VlUyb2NuNnU3NlA4ekU3?=
 =?utf-8?B?c3k0NzkzUlZkSDN4NWZBdHhmMThyVGRkNzgyQ1FpMkJCOFRXZW9hd1kwcncw?=
 =?utf-8?B?WDd0WVhST2lrK2lrbW16UVpIWEQwQXBacS9sMGJRVmowblNaTzBPYmpEZjI5?=
 =?utf-8?B?eFhoek9yYXJHdjlhbFJsU04veDBGcXl5SFMzSnJGOE5LSUdBRndiZXBadlcv?=
 =?utf-8?B?ZmNncVZwWFVSdlJwUUdvd01iL3JXNG4zWFpPVGtEenZZcHBvdVh6T1FiamRJ?=
 =?utf-8?B?QWFiTERxaVZqOHNPVlFYZlc0TUIrK3grQlpGNTNLOHhXOGdUNzB6WjJVNy9Q?=
 =?utf-8?B?NFVRZkVKZGlHVzNFVFhLR3JZaVVsSCtMdCtRcFRRRkdLZGtpeDhzUG9KNk1H?=
 =?utf-8?B?TWRacXQvUjNqcVhsZjd0NGs5OUlGUjZtZGxNeXBtSFJuR25LcUhLRTZFVmMy?=
 =?utf-8?B?ditiM3M2MXZlRHBNNlNFbDdFNjhOa2p1SGkyRGNSSGI0ZHBoc0V5Z0s0UFdx?=
 =?utf-8?B?YWFhWjg0QkVCYnFVc1RxOTM1TG53RDlzZmV4cjNPSTVIK3cxYjBTSHlPYlhT?=
 =?utf-8?B?bzF5N0lacyt2V1BPVHV4L2lQZlZEaHFvT0gyM1ZCUW9SZmRyLzVVYTJ2SmhG?=
 =?utf-8?B?RmRXMkRZY3M3RDg2a0p6cm1EMXBYaHJHQzFTeEhIZmNjOXZLZnFzdzVydzJr?=
 =?utf-8?B?Vk04WVdlOFV3dWNtV2xMZk5ZcWpHQVUzR0R1T3hvZEtuT3NWV0o3UTNVU3M2?=
 =?utf-8?B?UllFdGVoek1SZC9EQ2lYTFpLT0dROE13bUdsRFIzZzljTExleFRqOENRdE1w?=
 =?utf-8?B?RThuZ0ZZSkkzK1BkOXdIZXE0WkNObFQxM243Sll0SUN3TE52cXBvcFZlckRi?=
 =?utf-8?B?b0JEWlRubzZaazJVSHhDRk42MitvenZGOVpZWmJGS01UQ0Z6N3Q1R28zdVVi?=
 =?utf-8?B?cmE5QWlsWkFUM091cUs0NGQyMmFMWi9JMzRCc0xGK0VPNEMzTUpRUmQyUG1V?=
 =?utf-8?B?THYrVVZMSFRwdFJPbXlXQXV4NlhOR0RmS2JWYUh2RUNpeE9KcDkrVUZBdTF0?=
 =?utf-8?B?ZGJldGE3elVqKzNzTnl2K1RwdmRRTGY0YTV2eE5xd1J3em00ZHRqMkM4Ykls?=
 =?utf-8?B?TCtzUExyL0tGenVFcitOOTMwTXNGTmpUNFlVaFFaK2dyR3lQRFdsd2VGK3B6?=
 =?utf-8?B?am9VeU53QlV5bW5DRUJXcm9TRVVCODVZNE9MaVhucjN6QVZhbWhvZFd0dnRh?=
 =?utf-8?B?R1BvTDMzTlA0YXJNUFkxVGhEay85UXd6VkZTUy8wZlcyRGlVZks1ZVkva3JP?=
 =?utf-8?B?ZzQ2aUpJWXJaYWc4K3YzWXBQelczTWQ3bEhwRmhjaWNEWU1XZ3ovUTQvNGlt?=
 =?utf-8?B?RUVIZ05Bb3lzR1BsR1NNUmpteHlJNXdDYWN1LzFrV0tkcE54NkJCUERRWDdZ?=
 =?utf-8?B?eEMySDBkNzVFb2ZpRFQrdFl2Ni85WmdzUWhLb2YxbEhpS2tGNVhEVlU1TXk4?=
 =?utf-8?B?VStuZDJWamFiT1hwalZmZDV5QWV4SzF1YVBHVjNMYmJmeGMwOUUrd3VhMW54?=
 =?utf-8?B?WGZ2UDBCVXhaakFPK2pETjhrY3AvNUlKRjF2MkZ0eUJwT1k4K3FZQjFCS2Vk?=
 =?utf-8?B?a0w4dmcxWFY3UEFyajFDYmRyMStrdDByUHhoL2Q5a3IxdDVxZkZCakE0WjVv?=
 =?utf-8?B?R2xSbVBFaEdncExZUTZwYmUrcWZlbTk4emNwaXdFWVFvb21QcFJrbjlEWllj?=
 =?utf-8?B?WVhLamtyS0RCY2t0S0hra2xFb3lXLzE3ekVFVkxscnpMR1dWWmh5NFYzekJB?=
 =?utf-8?B?UmRtbFhZNlBwTlRVS3hyVjN6OHJBUzM1VjVNQXlGbFduTkp5ZXMrNnBLaWQ0?=
 =?utf-8?B?VUoyTmtoazV1WHJlbFkzdnFnOXZkcDR0VUJRbHlIVGdlZ1ZUOVdscHltMVlC?=
 =?utf-8?B?RG1LazJKWVFtTUtUUFV5Z3pDdGNHclYyUUNqQTNib3FVdGQ5WFJMcVNrZDFP?=
 =?utf-8?B?Qi9GUG9ReTQwN2hhcCthbmRVZ1Z6QUJvZ2NOTjlNRVlCM0pZSERCT3pTRlNW?=
 =?utf-8?Q?QB4VCpEFnfOGkodDnIcyccLB7?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5830.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f92cf011-5cb4-4b29-ae6d-08db3b4abfe9
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Apr 2023 11:40:43.6303 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vEWzd9YZ8iRXPwkr/kLq3eFLUezAzWNbQfUZxJxTBVds0O6jYiuQfOiFxG9q/GIpPSjvR/+tqlqC/5E1UQe4eCl127Dt1aA34kkJQF/YpHE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5154
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Wed, 12 Apr 2023 15:14:49 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681299647; x=1712835647;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=syycDIYIzswV9lNmILEP2tKun3bXf+K2hf1maSNosJQ=;
 b=GhlVknap9hvsBx/Obar1WbJS6RTBMx5xdmvQTVH2euzRW5w70oVCgxTY
 VXe8LrERS4ISRLwSJ8zcWNzV8QSfmGhmRqj2P7gqCIn+1jW3FoWUj9bJR
 io0XA/pE6EIsXE5xYfgRTGQYbQXW9ESdnoPTubQiuUh6DKr6k3Cy6AGTS
 0xBME9mDEWIpUufzZo63nR/AAPU7dVcfDNSR9FOOQM6ayuhK1t5LpnhDv
 PBq799OWMxqnIapMQRHO016damMSl0wc8iabX6EtSRfBmIdIevWyqSOtQ
 SgwCKTB/XslJ2QBdhNaNom36TGm0+8VndLqhhaoPLRTWqTPgouyKfFSwO
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GhlVknap
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V3 5/6] igc: add XDP hints
 kfuncs for RX timestamp
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
Cc: "xdp-hints@xdp-project.net" <xdp-hints@xdp-project.net>,
 "martin.lau@kernel.org" <martin.lau@kernel.org>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>, "Zaremba,
 Larysa" <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "john.fastabend@gmail.com" <john.fastabend@gmail.com>,
 "ast@kernel.org" <ast@kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Stanislav Fomichev <sdf@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "Brouer, Jesper" <brouer@redhat.com>,
 "Ong, Boon Leong" <boon.leong.ong@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "hawk@kernel.org" <hawk@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thursday, March 23, 2023 12:02 AM , Jesper Dangaard Brouer <brouer@redhat.com> wrote:
>The NIC hardware RX timestamping mechanism adds an optional tailored header
>before the MAC header containing packet reception time. Optional depending on
>RX descriptor TSIP status bit (IGC_RXDADV_STAT_TSIP). In case this bit is set
>driver does offset adjustments to packet data start and extracts the timestamp.
>
>The timestamp need to be extracted before invoking the XDP bpf_prog, because
>this area just before the packet is also accessible by XDP via data_meta context
>pointer (and helper bpf_xdp_adjust_meta). Thus, an XDP bpf_prog can potentially
>overwrite this and corrupt data that we want to extract with the new kfunc for
>reading the timestamp.
>
>Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
>---
> drivers/net/ethernet/intel/igc/igc.h      |    1 +
> drivers/net/ethernet/intel/igc/igc_main.c |   20 ++++++++++++++++++++
> 2 files changed, 21 insertions(+)
>
>diff --git a/drivers/net/ethernet/intel/igc/igc.h
>b/drivers/net/ethernet/intel/igc/igc.h
>index bc67a52e47e8..29941734f1a1 100644
>--- a/drivers/net/ethernet/intel/igc/igc.h
>+++ b/drivers/net/ethernet/intel/igc/igc.h
>@@ -503,6 +503,7 @@ struct igc_rx_buffer {  struct igc_xdp_buff {
> 	struct xdp_buff xdp;
> 	union igc_adv_rx_desc *rx_desc;
>+	ktime_t rx_ts; /* data indication bit IGC_RXDADV_STAT_TSIP */
> };
>
> struct igc_q_vector {
>diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
>b/drivers/net/ethernet/intel/igc/igc_main.c
>index a78d7e6bcfd6..f66285c85444 100644
>--- a/drivers/net/ethernet/intel/igc/igc_main.c
>+++ b/drivers/net/ethernet/intel/igc/igc_main.c
>@@ -2539,6 +2539,7 @@ static int igc_clean_rx_irq(struct igc_q_vector
>*q_vector, const int budget)
> 		if (igc_test_staterr(rx_desc, IGC_RXDADV_STAT_TSIP)) {
> 			timestamp = igc_ptp_rx_pktstamp(q_vector->adapter,
> 							pktbuf);
>+			ctx.rx_ts = timestamp;
> 			pkt_offset = IGC_TS_HDR_LEN;
> 			size -= IGC_TS_HDR_LEN;
> 		}
>@@ -2727,6 +2728,7 @@ static int igc_clean_rx_irq_zc(struct igc_q_vector
>*q_vector, const int budget)
> 		if (igc_test_staterr(desc, IGC_RXDADV_STAT_TSIP)) {
> 			timestamp = igc_ptp_rx_pktstamp(q_vector->adapter,
> 							bi->xdp->data);
>+			ctx->rx_ts = timestamp;
>
> 			bi->xdp->data += IGC_TS_HDR_LEN;
>
>@@ -6481,6 +6483,23 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg)
> 	return value;
> }
>
>+static int igc_xdp_rx_timestamp(const struct xdp_md *_ctx, u64
>+*timestamp) {
>+	const struct igc_xdp_buff *ctx = (void *)_ctx;
>+
>+	if (igc_test_staterr(ctx->rx_desc, IGC_RXDADV_STAT_TSIP)) {
>+		*timestamp = ctx->rx_ts;
>+
>+		return 0;
>+	}
>+
>+	return -ENODATA;
>+}
>+
>+const struct xdp_metadata_ops igc_xdp_metadata_ops = {

Hi Jesper,

Since igc_xdp_metadata_ops is used on igc_main.c only, we can make
it static to avoid following build warning:

drivers/net/ethernet/intel/igc/igc_main.c:6499:31: warning: symbol
'igc_xdp_metadata_ops' was not declared. Should it be static?

Thanks & Regards
Siang

>+	.xmo_rx_timestamp		= igc_xdp_rx_timestamp,
>+};
>+
> /**
>  * igc_probe - Device Initialization Routine
>  * @pdev: PCI device information struct @@ -6554,6 +6573,7 @@ static int
>igc_probe(struct pci_dev *pdev,
> 	hw->hw_addr = adapter->io_addr;
>
> 	netdev->netdev_ops = &igc_netdev_ops;
>+	netdev->xdp_metadata_ops = &igc_xdp_metadata_ops;
> 	igc_ethtool_set_ops(netdev);
> 	netdev->watchdog_timeo = 5 * HZ;
>
>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
