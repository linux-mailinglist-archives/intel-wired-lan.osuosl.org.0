Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E12FB553D65
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Jun 2022 23:18:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 69E3984005;
	Tue, 21 Jun 2022 21:18:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 69E3984005
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655846332;
	bh=9PyKjm61o8q+TpPuzHovp6ETOlBs+Mqfqp863YAqfVE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6PoyxgHtnu9ylzYgt/CM0LzXj+6scDe/L8mpc9aBfNW3GECSHJUgxeknXgvxh5Fkn
	 JIHZuMPneuQlFVNuPv4n8nDg759EJIcVrJ1h+erI7Qj6qHbfH4YBaUn5RohMnWiNod
	 ppEXHwf21NUJbXtGSvQAlduKfH8wVOpQzBc2gQX9XSvmQKYyvLqVR2PIN/e/YHB41Q
	 SUHbfziazQk1CTvc9lwD5a4/T10xitLeSGNh1CPIqGtZarnWm4Q/Vq8qRiDS7MSh7L
	 0FjHXjSIw1Xa8/R+DmMeeTH0BhI2gV2f1Gzp+F9/MGE5J4ljaqAi9jEo7fUfevcEMd
	 OdXyVmW2LiEgw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pyx_q9xNqIau; Tue, 21 Jun 2022 21:18:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1FA2B83FEA;
	Tue, 21 Jun 2022 21:18:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1FA2B83FEA
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6884F1BF2F3
 for <intel-wired-lan@osuosl.org>; Tue, 21 Jun 2022 21:18:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4169683FEA
 for <intel-wired-lan@osuosl.org>; Tue, 21 Jun 2022 21:18:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4169683FEA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tQmiV1_N0KyQ for <intel-wired-lan@osuosl.org>;
 Tue, 21 Jun 2022 21:18:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C339C83FE7
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C339C83FE7
 for <intel-wired-lan@osuosl.org>; Tue, 21 Jun 2022 21:18:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="341923950"
X-IronPort-AV: E=Sophos;i="5.92,210,1650956400"; d="scan'208";a="341923950"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 14:18:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,210,1650956400"; d="scan'208";a="914321453"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 21 Jun 2022 14:18:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 21 Jun 2022 14:18:13 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 21 Jun 2022 14:18:13 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 21 Jun 2022 14:18:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D4/CV/ZDBp4uy807pmxDaufdBmGnSmWlPbFZxz7I5eyGRF7K6/aM6eGhUj3+xq301muUyWhVmp+JhOZTYtZ/xYHOcu2PxQTY77PQO1YswN+//H/kL3O135U3zf0f9FRCZYIVqaNa0G4pGNhFI37u3rGNWr8o6zyAaAWxXj9jAN9bFCRxW1A3OWS/nNx6DM0kP7sYwfbKv2e4vKjnV8igxmQUlg0XI0Eu8+jTVo+1uxtVJWlgzppqYwhzCCc35pR5Mn+j1pOCX348cP7Meqx5H/3DlOLMcIgyeF5avlYXWyKHFKEhYDGLSvbTXP9KgbiIAyoOhRN1T/Nb73fJxLFfDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EMIs6FX5ttOk/oQwb4hln9NOijeBubM6CFvnx/XYsD0=;
 b=DGbCsJ9Tef5A0NtezKDoEoEPvPB7DBGjPmRgCn2E7+hsu6/hKfGmTfkN/d0Dx7AUa/OHKOaKPBv0gII29QgeliDcyviYukjQc3CeeWSHjdljhOHMfXjpGOjmZdc8S7brr6FEkPF3mr5kpT4rb5b9BArfjcerJ0NRDXO0Jt6HX/a8rGHMb0epMIBBx4Ig8pEZo1YbknsuKg48eTndDIdDDdtBq/ledkl/s2sO/NWeZKbSLcfcVaDsMYyus7d3wECtVd67J81ejvOLziKahnJuUydmXu/36hjYed+nzahlaeb5oZge05pwXVgR6Ec8B7NG5O17Df5++JxHeC81evH5sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3518.namprd11.prod.outlook.com (2603:10b6:805:da::16)
 by MWHPR11MB1696.namprd11.prod.outlook.com (2603:10b6:300:23::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.16; Tue, 21 Jun
 2022 21:18:10 +0000
Received: from SN6PR11MB3518.namprd11.prod.outlook.com
 ([fe80::e4ba:3cfe:649e:749b]) by SN6PR11MB3518.namprd11.prod.outlook.com
 ([fe80::e4ba:3cfe:649e:749b%5]) with mapi id 15.20.5353.022; Tue, 21 Jun 2022
 21:18:10 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: Sven Anders <sven.anders@anduras.de>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] Bonding problem on Intel X710 hardware
Thread-Index: AQHYb0UdYdr2Hc3NqEG2QM/hswtJCa0zQnKAgARZ5oCAC+4KgIAD7uxggAWay4CABYlRAIAH69KA
Date: Tue, 21 Jun 2022 21:18:09 +0000
Message-ID: <SN6PR11MB351898837AC265B5F52C88E0EBB39@SN6PR11MB3518.namprd11.prod.outlook.com>
References: <a94b23d2-57a8-954f-9fae-246cf900be92@intel.com>
 <8d7813a5-c344-6225-dc1a-89a92e5cddb9@anduras.de>
 <eb729924-7c59-23fa-4847-bff376a98d2a@anduras.de>
 <SN6PR11MB35187D9C1432AAB249FF8CCBEBA99@SN6PR11MB3518.namprd11.prod.outlook.com>
 <4cd7ea38-760d-23b9-5925-a9d1a0504286@anduras.de>
 <SN6PR11MB3518CAAC30596FB69490B33DEBAC9@SN6PR11MB3518.namprd11.prod.outlook.com>
In-Reply-To: <SN6PR11MB3518CAAC30596FB69490B33DEBAC9@SN6PR11MB3518.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 23d1dcfd-995d-44f0-7114-08da53cb8aea
x-ms-traffictypediagnostic: MWHPR11MB1696:EE_
x-microsoft-antispam-prvs: <MWHPR11MB1696BE2629CB3EAB994BF828EBB39@MWHPR11MB1696.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2CKe4tzvnpFlS5iZtA/ajrK8gF8BEfWtZQ0M6k+q9q9vAHPEFzaZD9iSsweyY21yWLYlkUEYYvfzgtJGYFiqM9L0rjG6N/dbOHaxnbUPFYqQocUc3NXVg/vVjtbK0UOslUHOCxd+fBqOI1CDlbkd/GXJFJPhNOsfQ+zItZvp2in/H8zqJ0/7YZdl1Tjp/LgT7oRsq5pkGo7LHaN4xXB44pSQETOA4b9fI4EUp4OecyYBpQ9Hv/vHxMPPNZ1Irv2a+r2YqE8fgL+tdjTm9SWnzShFR2dp5A9OOqF5MCvejU2coSgA8SZz0HNw90rsdB8pskSAyEVbv/gfZIv2scoAKHd+zM4d+sICXtgqCLfSxUHynNjWHnpCY1O1/LW0tV7kJF8rH5JEnzK/1nsWzxqYY5f5K4Uo97RSbD4BD5u1HKsmaliAabnurDevYsHil6GTvhGBZf4pacVZpaY/M1TOt6Mla2fFIRcdmwOvipw4yooJ0lOC8t4Nfhq6LUwKtfY7bT77zCqjGnuW/Yw7S39ofn6u3Oswch5DJkBaaFhHR8OxG3sbxqdmg2PZobRqZtCCJMdutRng/LSXaadngyiXfwvmls7fT7U9dv7Qj/RtxhQm09EX/aSmUPJX1GY0prHF+xP0Xo205+YOSb+MxOu2au6PrZj9nYME/JYHoUhsRMr5mbeSTy1aYPR7zl4Yf1R5V08QoGHl5Zdrmxk1+ovmw1bDRE8Cw80JnFGyyD0y5qXRuIOZ9iPQJESon3i3kwHZmtp5wxEd9WqzK6UpYIoyC+tiVD7tA8fFmIi94Yym5uE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3518.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(136003)(396003)(366004)(346002)(376002)(55016003)(38070700005)(52536014)(33656002)(5660300002)(316002)(76116006)(86362001)(8936002)(110136005)(66446008)(66476007)(66946007)(966005)(2906002)(71200400001)(66556008)(478600001)(8676002)(7696005)(186003)(6506007)(15974865002)(66574015)(41300700001)(53546011)(82960400001)(9686003)(26005)(38100700002)(83380400001)(64756008)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZUhuVmlwcGxhOUNldkpmaEExTis4cmZ3c3pnOEltNEIrL3o1ZVJKQm5id1I3?=
 =?utf-8?B?eElpdUN2WVVwR2VZTUUzdE0zNU5lTXFNNSsweElzUnhPSU5CMmMwNUg4ZC9Q?=
 =?utf-8?B?VUZRRVRFeXFKMDBtMmxTYXBzZkRBWHc2YTRndVdUOWhWaFVTN3BiN1pyaVkz?=
 =?utf-8?B?L1NyNHJ5NUVsTmNTWFB0ZDJyajJuSGVTQWoyNHVrbGYyQThONXBrMWExQlVI?=
 =?utf-8?B?Q3VUVkRSckRCV3cwd1dKb3pCZ3dVSmpwdEhsNlFtSlltNHdjV21PR3lMcXcr?=
 =?utf-8?B?alFJenpFNW1zYzJNbmdDdW5PdUtsak50d1luMDB4NWtjckRLNG5zbk8zVXJH?=
 =?utf-8?B?anRQSyt1OERPUWMxWW45emtZR0pHeHFJMUZEd0ZNellSUHRCRld4SXBwbEE5?=
 =?utf-8?B?T0EvYkRXcnJYYUNYZk9oOGNaeTlyOFZ2WjR5S3FieEs0MU9rRFJhaUF1cTdE?=
 =?utf-8?B?ajlKTmpwUFJ3eFVHd3BTdnhMMU1oYlpOVHdvYmw5VEFXd0xMQTVrVUhxUVlr?=
 =?utf-8?B?aFltUFJBQk5vNXAxRm5ZZXpzTGlxY2NQVmNRbExLZEZzLzgxTDVGNlgrN1ZN?=
 =?utf-8?B?enA1RS9US1ppR1k3N3UyaDc0K0FQakd0UHd4OEpVeFRyZGZ6RzRseUcvNFk1?=
 =?utf-8?B?cE9yLy9tNXRPaDlpS2IxRDl5dzJWS0xQYUhQcFVrTjlWUkg0S0Z6cjZJKzFT?=
 =?utf-8?B?MWswQlVDOW1hUHNoS2tTWFBJY1ozVWlsNTEzQ2lyOTVaOWVsdkR6QWM0Rklt?=
 =?utf-8?B?bmoxT0JKMTdibWZic3hjek4weXpIdGhuOG92TmQ5dEtaNWFZcnRFYnRlZCtJ?=
 =?utf-8?B?RXNUbmxxZHlDMkZidHd4Z05NK2dSQmVqdDhJWVl0UmczU2VucE94enVXZnRr?=
 =?utf-8?B?N2w1TW1GbnlWbHNHSjIvQ1Q5SUtPL1ZOYnMyQVU2T0U5RFoxSlF6cThXTzVy?=
 =?utf-8?B?b2g1NUVaZlJHakU2M1dFMnc1cDdqSXRKQkFuc1pUaDEyaDVGanorMWJKMm1Q?=
 =?utf-8?B?TjBPSzRUTEZUb05Wa2kxVmFRSGZjaEhPMVFLMUkrWjFrdjErMjI4QTBNajFG?=
 =?utf-8?B?ZjFXSG1SMmJBZ3hGRGhuSDQrcGFZWUtFZ1B4Nlk5SCtWdGpoZFphUUpRWUFh?=
 =?utf-8?B?elVjTFE0bkxZWE1ZODkwMFhwWWxLRW52VGl3eU51N0haY0xpVFY1dUl4SEtY?=
 =?utf-8?B?OGMzdStlVjBkRlQxd3MyZ1p6VzI0d1JHR1c5eXlqYlVIdkNJQVhqR0k3b1lM?=
 =?utf-8?B?WFpLNHcwQXdyb1d2dGMvVXRTbXQxcXMzK05hMWNOQTVIb3JpcVd6bVFQRHlG?=
 =?utf-8?B?Mkw5dFdiS0lxaG45b1dPbTNRbkFzZzdSanFCTGFRbVlrU1lmc1hkUFNBQ1hM?=
 =?utf-8?B?NStQSHNsNnlCbGFpNnpBVHF1d0xOdlp4dFA4QktmWm1FUFNBYkllN0NwejVw?=
 =?utf-8?B?T3dRemkxaTZXOE4rZVRjeW04WnZKS00zdzE0bDZkSTlHaEI1ZnlqSFBKUlhj?=
 =?utf-8?B?enhCQWx5Y2RPbHo0eE01N2FIUFJOR0tsUmk2SFZhRGFGOHBBTkpqVUIvQTBh?=
 =?utf-8?B?Zjc1M0JBVCttY3laejU4eEkrbkhqZkg5MmFJZURhRis4MzZtaUZvM3FMbDZm?=
 =?utf-8?B?RGFsTGlWamg4Q2dLU25hdHFKL3ErcnNWL1llanB2WUZtb2ZZMkEwbkpzSUpj?=
 =?utf-8?B?M25FbDNvck81UC85anArL2NGNGJHckh4VUlvOC9pZXN6eTBNYS9kMUhOQWww?=
 =?utf-8?B?TWQyZjBwRjVmdXh4K3RzMjVraGRKZkgyWU5UZzJKUjJhMVRiZFFWMFY5alI0?=
 =?utf-8?B?WUtLVENHNHdqMW8vRDlsRXJyWXJYNVp0L0o2WElqYjZLNjZ5TXJnYmNVdS9o?=
 =?utf-8?B?RjlHQTAwcFlYV0REVHNOd1UwbkorLy9HU3pIZHQ1aUxNais0eUtCNDJna0hz?=
 =?utf-8?B?QURpM3VURTNOYmFTc2xxMHAwMHFDa2F6KzNsWlhJVUxhNUdlUHY4ZFBTbkkv?=
 =?utf-8?B?ajlqVDJ3bGRsQklmWmFUNmNhN29RZHZvbmRDV2pkNUpMMkEwQWJNSXV4cjJG?=
 =?utf-8?B?VEl6T1BQaDdmaTFXT3JVek5Pbm5yTzc0NkhHRW1Gc1VGUGF5M0pGNmxMY2Vq?=
 =?utf-8?B?QkM2Rkhpc2VzNVhqbFNyaHRGQllWRkRDTmV6cjNtRElkNXp1dmNFZkZnNkxl?=
 =?utf-8?B?YnNYSzgxUG9mcUx1NTY2Rk9QRnBaL0U2a0tub3IveGdMSW5OOU9KRi9IdCtE?=
 =?utf-8?B?bDRNR0M1QWRucVZBWWVvRXlGdm5rTzF3R21ZODNUZVhESWdHeVE2YmxpZWwx?=
 =?utf-8?B?MXRtUHhhSFlLZ3dndWdxcDN6RTNJSVRtajhWclNSUFBIOGhxK1o2Zz09?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3518.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23d1dcfd-995d-44f0-7114-08da53cb8aea
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2022 21:18:10.0120 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OOz8Ez7gssYflfK1slWfedZAQwVk2MgoqiOben8e9KoWf7Xzdt2ggrxpIMYCEK3uVRBteoBpeOlvTggjHFFj1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1696
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655846324; x=1687382324;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=EMIs6FX5ttOk/oQwb4hln9NOijeBubM6CFvnx/XYsD0=;
 b=dRRUGbU/a0Stsv+yg+y2ujtJPOuqWAl0NAF8rdYdsPPixHJ46w1mwIZh
 okerl57GDAZZu9ILBWSHGnB+Je3n4/Fn1sgECtNysd2uFY/XEzT65jom0
 TT7Qq/ivp6ROGARVhCNJYjlmG4gUvfN04RtPEeOmIRTgigce1+1g88+nQ
 FSNX7KLhKwVr9Mhb4SPj6rkxgZw9h3gmrKiINJe6XJc1duJXF9qL9gZ7q
 MTfjCW9K57OniGcEOGNAm3ilH0olFj+Jwd7QGoPvaaarIq3vHz9+q+qNE
 yIq8BqAFrZUYLA9TPcLBYm40GvNoxQDv0bjU7oLV7YAScZnhmm9TOpB+9
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dRRUGbU/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Bonding problem on Intel X710 hardware
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IFN3aXR6ZXIsIERhdmlkDQo+
U2VudDogVGh1cnNkYXksIEp1bmUgMTYsIDIwMjIgMTozMSBQTQ0KPlRvOiBTdmVuIEFuZGVycyA8
c3Zlbi5hbmRlcnNAYW5kdXJhcy5kZT47IGludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnDQo+U3Vi
amVjdDogUkU6IFtJbnRlbC13aXJlZC1sYW5dIEJvbmRpbmcgcHJvYmxlbSBvbiBJbnRlbCBYNzEw
IGhhcmR3YXJlDQo+DQo+Pi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+PkZyb206IFN2ZW4g
QW5kZXJzIDxzdmVuLmFuZGVyc0BhbmR1cmFzLmRlPg0KPj5TZW50OiBNb25kYXksIEp1bmUgMTMs
IDIwMjIgMTI6NDQgQU0NCj4+VG86IFN3aXR6ZXIsIERhdmlkIDxkYXZpZC5zd2l0emVyQGludGVs
LmNvbT47DQo+PmludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnDQo+PlN1YmplY3Q6IFJlOiBbSW50
ZWwtd2lyZWQtbGFuXSBCb25kaW5nIHByb2JsZW0gb24gSW50ZWwgWDcxMCBoYXJkd2FyZQ0KPj4N
Cj4+SGFsbG8gRGF2ZSwNCj5IaSBTdmVuLA0KDQpIZWxsbyBTdmVuIQ0KPg0KPj4NCj4+dGhhbmtz
IGZvciB5b3VyIGFuc3dlci4NCj5Zb3UncmUgdmVyeSB3ZWxjb21lIQ0KPg0KPj4NCj4+SSB0cmll
ZCB0byBkaXNhYmxlIHRoZSBMTERQIGVuZ2luZSwgYXMgc3VnZ2VzdGVkLCBidXQgaXQgZGlkIG5v
dCBjaGFuZ2UNCj4+YW55dGhpbmcuDQo+Pg0KPj5UbyByZW1hcms6IEkgZG8gbm90IHVzZSBMQUNQ
LCBJJ20gdHJ5aW5nIHRvIHVzZSAiQWRhcHRpdmUgTG9hZCBCYWxhbmNpbmciDQo+PndoaWNoIHdv
cmtzIHdpdGggQVJQIG5lZ290aWF0aW9uLg0KPj5JZiBJJ20gdXNpbmcgdGhlICJhY3RpdmUtYmFj
a3VwIiBib25kaW5nIG1vZGUsIGl0IGFsbCB3b3JrcyBmaW5lLiBCdXQNCj4+dGhpcyBpcyBuZWFy
bHkgdGhlIHNhbWUgYXMgdXNpbmcgb25seSBvbmUgaW50ZXJmYWNlLCB3aGljaCB3b3JrcyB0b28u
DQo+Pg0KPj5JbiBteSB0ZXN0IHNldHVwLCBJJ20gdXNpbmcgdHdvICJIUEUgMjUzMC00OEctUG9F
KyIgc3dpdGNoZXMNCj4+KFlBLjE2LjEwLjAwMDIpLCBlYWNoIGlzIGNvbm5lY3RlZCB3aXRoIG9u
ZSBjYWJsZSB0byB0aGUgbmV0d29yayBjYXJkLg0KPj5NeSB0ZXN0IGlzIHZlcnkgc2ltcGxlOg0K
Pj5BZnRlciBjb25maWd1cmluZyB0aGUgYm9uZCwgSSB1c2VkIGEgY29udGlub3VzIHBpbmcgdG8g
dGhlIExpbnV4IHNlcnZlcg0KPj5hbmQgSSBzZWUgbWFueSBkcm9wcy4gSWYgSSB0b2dnbGUgdGhl
ICJudHVwbGVzIHN1cHBvcnQiLCB0aGUgZHJvcHMgZGlzYXBwZWFyLg0KPj4NCj4+Q2FuIHdlIGNv
bXBhcmUgdGhlIHNldHRpbmdzIG9mIHlvdXIgc2V0dXAgd2l0aCBtaW5lPyBNYXliZSB5b3UgbWlz
c2VkDQo+PnNvbWV0aGluZy4uLg0KPkp1c3QgcmVhbGl6ZWQgd2UgbWlzc2VkIHRoZSAybmQgc3dp
dGNoKHdlJ3JlIHdvcmtpbmcgb24gc2V0dGluZyB0aGF0IHVwIG5vdykNCkkgZ290IG15IDJuZCBz
d2l0Y2ggY29uZmlndXJlZCB3aXRoIDM2IHZsYW5zIG9uIHRoZSBib25kLCBJIHN0aWxsIGNhbid0
IHJlcHJvZHVjZSB0aGUgaXNzdWUuDQoNCkknbSBpbiBhIHRlc3QgZW52aXJvbm1lbnQgc28gSSBk
b24ndCBoYXZlIG11Y2ggb2YgYSAibmV0d29yayIgYmV0d2VlbiB0aGUgdHdvIHN3aXRjaGVzLiAg
SSB3YXMgd29uZGVyaW5nIGhvdyB5b3VyIHN3aXRjaGVzIHdlcmUgY29uZmlndXJlZCBhbmQgaWYg
dGhlcmUgd2FzIGFueXRoaW5nIGVsc2UgZ29pbmcgb24gd2l0aCAgdGhlIG5ldHdvcmsocGVvcGxl
IHN0cmVhbWluZywgYmFja3VwcyBvY2N1cnJpbmcsIGV0YykuDQoNCj4NCj4+SG93IGNhbiBJIGFz
c2lzdCBmdXJ0aGVyPw0KPkNhbiB5b3UgZW5hYmxlIHNvdXJjZSBwcnVuaW5nIG9uIHRoZSBwb3J0
cyB0aGF0IGFyZSBwYXJ0IG9mIHlvdXIgYm9uZD8gIFRoZXJlDQo+bWlnaHQgYmUgc29tZSBjb25m
dXNpb24gaW4gdGhlIGZ3L3N3IHdpdGggdGhlIHR3byBpbnRlcmZhY2VzIGFuZCBwYWNrZXRzDQo+
YXJlIGdldHRpbmcgaWdub3JlZDoNCj5ldGh0b29sIC0tc2V0LXByaXYtZmxhZ3MgPGludGVyZmFj
ZSBuYW1lPiBkaXNhYmxlLXNvdXJjZS1wcnVuaW5nIG9uDQo+DQpJIHdhcyByZWFkaW5nIG92ZXIg
dGhpcyBhbmQgcmVhbGl6ZWQgSSBjb250cmFkaWN0ZWQgbXlzZWxmIGFib3ZlLiAgSSB3b3VsZCBs
aWtlIHRvIHNlZSBpZiBkaXNhYmxpbmcgc291cmNlIHBydW5pbmcgd291bGQgaGVscC4NCg0KSSBo
b3BlIHlvdSdyZSBoYXZpbmcgYSBnb29kIHdlZWshDQpEYXZlDQoNCj5MZXQgbWUga25vdyBpZiB0
aGF0IGhlbHBzLiAgSXQgc291bmRzIGxpa2Ugd2UnbGwgYmUgZ2V0dGluZyBvdXIgdHdvIHN3aXRj
aGVzDQo+bGF0ZXIgdG9kYXkgc28gd2UgY2FuIG1ha2Ugc3VyZSB3ZSBoYXZlIG91ciBlbnZpcm9u
bWVudCBtYXRjaGluZyB5b3Vycy4NCj4NCj5IYXZlIGEgZ3JlYXQgZGF5IQ0KPkRhdmUNCj4NCj4N
Cj4+DQo+PlJlZ2FyZHMNCj4+ICBTdmVuDQo+Pg0KPj5BbSAxMS4wNi4yMiB1bSAwMzoyNyBzY2hy
aWViIFN3aXR6ZXIsIERhdmlkOg0KPj4+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPj4+
PiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGludGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5v
cmc+IE9uIEJlaGFsZg0KPj4+PiBPZiBTdmVuIEFuZGVycw0KPj4+PiBTZW50OiBNb25kYXksIEp1
bmUgNiwgMjAyMiAxMTowNSBQTQ0KPj4+PiBUbzogaW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcN
Cj4+Pj4gU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIEJvbmRpbmcgcHJvYmxlbSBvbiBJ
bnRlbCBYNzEwDQo+Pj4+IGhhcmR3YXJlDQo+Pj4+DQo+Pj4+IEhlbGxvIQ0KPj4+IEhpIFN2ZW4h
ICBNeSBhcG9sb2dpZXMgb24gdGFraW5nIHNvIGxvbmcgdG8gcmVwbHkuDQo+Pj4+DQo+Pj4+IFdh
cyBhbnlib2R5IGFibGUgdG8gcmVwcm9kdWNlIHRoZSBwcm9ibGVtPw0KPj4+IEkgaGF2ZW4ndCBi
ZWVuIGFibGUgdG8gcmVwcm9kdWNlIHlvdXIgaXNzdWUgeWV0LCBidXQgd2l0aCB5b3VyDQo+Pj4g
ZGVzY3JpcHRpb24gaXQgc291bmRzIHRoYXQgdGhlIGlzc3VlIGNvdWxkIGJlIHJlbGF0ZWQgdG8g
dGhlIFg3MTANCj4+PiBoYXJkd2FyZSBMTERQIGVuZ2luZSBjb25zdW1pbmcgdGhlIExMRFAgcGFj
a2V0cy4gIFRvIGRpc2FibGUgdGhlDQo+PmhhcmR3YXJlIGVuZ2luZSwgdXNlciB0aGUgZm9sbG93
aW5nIGNvbW1hbmQgb24gZWFjaCBvZiB0aGUgcG9ydHMgdGhhdA0KPj55b3UncmUgdXNpbmcgaW4g
dGhlIGJvbmQ6DQo+PiA+DQo+Pj4gZXRodG9vbCAtLXNldC1wcml2LWZsYWdzIDxpbnRlcmZhY2Ug
bmFtZT4gZGlzYWJsZS1mdy1sbGRwIG9uDQo+Pj4NCj4+PiBUaGVuIHRoZSBMTERQIHBhY2tldHMg
dGhhdCB0aGUgYm9uZGluZyBtb2R1bGVzIHJlbGllcyBvbiB3aWxsIGJlDQo+Pj4gZm9yd2FyZGVk
DQo+PmJ5IHRoZSBoYXJkd2FyZSB0byB0aGUgT1MgbmV0d29yayBzdGFjay4NCj4+Pg0KPj4+IEkg
aG9wZSB5b3UgaGF2ZSBhIGdyZWF0IHdlZWtlbmQhDQo+Pj4gRGF2ZQ0KPj4+DQo+Pj4+IERvIHlv
dSBuZWVkIGFzc2lzdGFuY2Ugb3IgZnVydGhlciBpbmZvcm1hdGlvbj8NCj4+Pj4NCj4+Pj4gUmVn
YXJkcw0KPj4+PiAgIFN2ZW4NCj4+Pj4NCj4+Pj4gQW0gMzAuMDUuMjIgdW0gMTc6NTMgc2Nocmll
YiBTdmVuIEFuZGVyczoNCj4+Pj4+Pj4+IEhlbGxvIQ0KPj4+Pj4+Pj4NCj4+Pj4+Pj4+IFRoaXMg
aXMgYSBmb2xsb3cgdXAgdG8gbXkgcXVlc3Rpb24uIEkgZGlkIG5vdCBoZWFyIGFueXRoaW5nIHNv
DQo+Pj4+Pj4+PiBmYXIsIGJ1dCBJIHRyaWVkIHRvIGZpbmQgc29tZSBzb21lIGluZm9ybWF0aW9u
IG1lYW53aGlsZS4NCj4+Pj4+Pj4+DQo+Pj4+Pj4+PiBJJ3ZlIGdvdCBhIGd1ZXNzIGZyb20gc29t
ZWJvZHksIHRoYXQgdGhlIGVycm9yIG1lc3NhZ2UgIkVycm9yDQo+Pj4+Pj4+PiBJNDBFX0FRX1JD
X0VJTlZBTCBhZGRpbmcgUlggZmlsdGVycyBvbiBQRiwgcHJvbWlzY3VvdXMgbW9kZQ0KPj4+Pj4+
Pj4gZm9yY2VkIG9uIiBtYXliZSB0cmlnZ2VyZWQsIGJlY2F1c2UgSSdtIGhpdHRpbmcgYSBsaW1p
dCBoZXJlLg0KPj4+Pj4+DQo+Pj4+Pj4gWWVzLCB0eXBpY2FsbHkgdGhpcyBpcyBhIHJlc3BvbnNl
IGZyb20gb3VyIGZpcm13YXJlIHRoYXQgYSB0YWJsZQ0KPj4+Pj4+IGlzIGZ1bGwgaW4gaGFyZHdh
cmUsIGFuZCBJJ20gZ3Vlc3NpbmcgdGhhdCB5b3UgbWlnaHQgYmUgcnVubmluZw0KPj4+Pj4+IGlu
dG8gYSBmaWx0ZXINCj4+Pj4gbGltaXQgZHVlIHRvIHVzaW5nIHZsYW5zPw0KPj4+Pj4NCj4+Pj4+
IFRoYXQncyB3aGF0IEkgc3VzcGVjdCwgYnV0IEkgZGlkIGtub3cgdGhlIGhhcmR3YXJlIGFuZCBm
aXJtd2FyZQ0KPj4+Pj4gaW5zdWZmaWNpZW50bHkgdG8gYmUgc3VyZS4NCj4+Pj4+IFdoYXQgSSdt
IHdvbmRlcmluZyBpczogV2h5IHRoaXMgaXMgb25seSB0cmlnZ2VyZWQgaWYgSSB0b2dnbGUgdGhl
DQo+Pj4+PiAibnR1cGxlcw0KPj4+PiBzdXBwb3J0Ig0KPj4+Pj4gYW5kIG5vdCBlYXJsaWVyIHdo
ZW4gc2V0dGluZyB1cCB0aGUgaW50ZXJmYWNlPw0KPj4+Pj4NCj4+Pj4+Pj4+IERhdGEgcGFja2V0
cyBhcmUgb25seSByZWNlaXZlZCBzcG9yYWRpY2FsbHkuIElmIEkgcnVuIHRoZSBzYW1lDQo+Pj4+
Pj4+PiB0ZXN0IHdpdGggb25seSBvbmUgc2xhdmUgcG9ydCwgaXQgd29ya3Mgd2l0aG91dCBwcm9i
bGVtcy4NCj4+Pj4+Pg0KPj4+Pj4+IEFuZCB0aGVyZSBhcmUgbm8gY291bnRlcnMgZ29pbmcgdXAg
aW4gZXRodG9vbCAtUyB3aGVuIHlvdQ0KPj4+Pj4+IHJlY2VpdmUvZHJvcA0KPj4+PiBwYWNrZXRz
Pw0KPj4+Pj4NCj4+Pj4+IEknbSBub3Qgc3VyZSBoZXJlLiBJIHRyaWVkIHRvIGluc3BlY3QgdGhl
IGNvdW50ZXJzIGFuZCBpdCBzZWVtcw0KPj4+Pj4gdGhhdCB0aGUgY291bnRlcnMgYXJlIGdvaW5n
IHVwIHNsb3dlciBpbiB0aGlzIGNhc2UsIGJ1dCBpdCdzDQo+Pj4+PiBkaWZmaWN1bHQgdG8gc2F5
LCBiZWNhdXNlIHRoZXJlIGlzIHNvbWUgIm5vaXNlIiBvbiB0aGUgbGluZSBhbmQgSQ0KPj4+Pj4g
ZG8gbm90IGhhdmUgZGlyZWN0IGFjY2VzcyB0byB0aGUgaGFyZHdhcmUgYXQgdGhlIG1vbWVudC4N
Cj4+Pj4+DQo+Pj4+PiBJZiB5b3UgbmVlZCBhbnkgZnVydGhlciBpbmZvcm1hdGlvbiBvciB0ZXN0
cywganVzdCBjb250YWN0IG1lLg0KPj4+Pg0KPj4+PiBSZWdhcmRzDQo+Pj4+ICAgwqAgU3ZlbiBB
bmRlcnMNCj4+Pj4gLS0NCj4+Pj4gICBTdmVuIEFuZGVycyAgICAgICAgICAgICAgICAgICgpIFVU
Ri04IFJpYmJvbiBDYW1wYWlnbg0KPj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIC9cIFN1cHBvcnQgcGxhaW4gdGV4dCBlLW1haWwNCj4+Pj4gICBB
TkRVUkFTIGludHJhbmV0IHNlY3VyaXR5IEFHDQo+Pj4+ICAgTWVzc2VzdHJhc3NlIDMgLSA5NDAz
NiBQYXNzYXUgLSBHZXJtYW55DQo+Pj4+ICAgV2ViOiB3d3cuYW5kdXJhcy5kZSAtIFRlbDogKzQ5
ICgwKTg1MS00IDkwIDUwLTAgLSBGYXg6ICs0OQ0KPj4+PiAoMCk4NTEtNA0KPj4+PiA5MCA1MC01
NQ0KPj4+Pg0KPj4+PiBUaG9zZSB3aG8gd291bGQgZ2l2ZSB1cCBlc3NlbnRpYWwgTGliZXJ0eSwg
dG8gcHVyY2hhc2UgYSBsaXR0bGUNCj4+Pj4gdGVtcG9yYXJ5IFNhZmV0eSwgZGVzZXJ2ZSBuZWl0
aGVyIExpYmVydHkgbm9yIFNhZmV0eS4NCj4+Pj4gICAgLSBCZW5qYW1pbiBGcmFua2xpbg0KPj4+
Pg0KPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0K
Pj4+PiBJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0DQo+Pj4+IEludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnDQo+Pj4+IGh0dHBzOi8vZXUtY2VudHJhbC0NCj4+MS5wcm90ZWN0aW9uLnNvcGhv
cy5jb20/ZD1vc3Vvc2wub3JnJnU9YUhSMGNITTZMeTkNCj4+Pj4NCj4+c2FYTjBjeTV2YzNWdmMy
d3ViM0puTDIxaGFXeHRZVzR2YkdsemRHbHVabTh2YVc1MFpXd3RkMmx5WldRdA0KPmINCj4+R0Z1
Jmk9Tg0KPj4+Pg0KPj5XUmtaVGM1TWpRek1qTTJZekV4TmpnMFpUSTRNak00JnQ9V0haVVRVZGpO
Vmt5U1RWVmNXVmpVRXBWDQo+VA0KPj5HbGthWFYzTmt4DQo+Pj4+DQo+PlZRbTFMU0dkVU9YTXhl
VlZFUTFweU9EMD0maD00ZWQ1Y2E0M2IxNDE0N2ViOGFlNDg5MWNmMmE1NGY3MA0KPj4NCj4+DQo+
Pk1pdCBmcmV1bmRsaWNoZW4gR3LDvMOfZW4NCj4+ICBTdmVuIEFuZGVycw0KPj4NCj4+LS0NCj4+
ICBTdmVuIEFuZGVycyA8YW5kZXJzQGFuZHVyYXMuZGU+ICAgICAgICAgICAgICAgICAoKSBVVEYt
OCBSaWJib24gQ2FtcGFpZ24NCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAvXCBTdXBwb3J0IHBsYWluIHRleHQNCj4+ZS1tYWlsDQo+PiAgQU5EVVJB
UyBpbnRyYW5ldCBzZWN1cml0eSBBRw0KPj4gIE1lc3Nlc3RyYcOfZSAzIC0gOTQwMzYgUGFzc2F1
IC0gR2VybWFueQ0KPj4gIFdlYjogd3d3LmFuZHVyYXMuZGUgLSBUZWw6ICs0OSAoMCk4NTEtNCA5
MCA1MC0wDQo+Pg0KPj5SZWNodHNmb3JtOiBBa3RpZW5nZXNlbGxzY2hhZnQgLSBTaXR6OiBQYXNz
YXUgLSBBbXRzZ2VyaWNodDogUGFzc2F1IEhSQg0KPj42MDMyDQo+PlZvcnN0YW5kOiBNYXJjdXMg
SnVua2VyDQo+PlZvcnNpdHplbmRlciBkZXMgQXVmc2ljaHRzcmF0czogQW5kcmVhcyBXYWduZXIN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
