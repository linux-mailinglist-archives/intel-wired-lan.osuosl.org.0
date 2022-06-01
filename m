Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D92E653BA85
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jun 2022 16:14:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 90AED4060D;
	Thu,  2 Jun 2022 14:14:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dxJ1gFfZNpkh; Thu,  2 Jun 2022 14:14:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 87987400D2;
	Thu,  2 Jun 2022 14:14:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 143651BF591
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jun 2022 12:27:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0098160BCA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jun 2022 12:27:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZVTYtmUZsxRf for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jun 2022 12:27:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 46B4E60B06
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jun 2022 12:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654086452; x=1685622452;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4wEWroSfhhvwnER/F/nd1a6tAY1IYM3KL3d27efwg3I=;
 b=UBpU9hrxnvkJz4zQ3NdGYtwnC5IBFJO8Bs2LNKfsorK5sk6gp/xI//yL
 Ky5lxRBODx+IHf+cHQaeton9IxZw/UxCkYOeDH/kFpNmQX+H+6T3EQYgC
 fAkPb409/QRqFmQMouciLujhuqVFPq5sdrHRIkqsS3P4G2YXPe/nXS/Ml
 0D2rynjEYIdh8mjaYrbTrDOvJfjs+/iLxSzXqdjOuhc2hGbKLgcjz2O1I
 MeNRad2sJxtIUpnuAbH/L64PQ05q9VOy+z8yZ/cB+Tg8YsB5+h597oYDY
 Bvxr13ExnpXB205pPeRAxU6tMtlD4i1LqbDUsWytLSyi3HTxbWBmETPE9 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10364"; a="274372064"
X-IronPort-AV: E=Sophos;i="5.91,268,1647327600"; d="scan'208";a="274372064"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2022 05:27:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,268,1647327600"; d="scan'208";a="823729576"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga006.fm.intel.com with ESMTP; 01 Jun 2022 05:27:31 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 1 Jun 2022 05:27:31 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 1 Jun 2022 05:27:30 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 1 Jun 2022 05:27:30 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 1 Jun 2022 05:27:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DL+vVsKDjvybojuolnK5l1TPu6REUapt/7Elfql+OgXWuyy4rfmNnumwhvg3JPhSeBSiLqzsRT9b/0LcdD+VmwAdTTb1HympAyz8A9+X8CY7VCI7Am2F0v/FeyEChqEdZcqMv/AankZBMr/BE3VHxcqD2iHe+k6OTo/qQlZlEY3qizrl5bmhwLsMU68QbnwW/iS/3A+kIE+8YTKVWIVDQbtLpdjIT0xT15Hf7MYKytbgIj9gtkAUS7Jt8BqtmYW0eQ+KpZGtMWJik4h07Gv2/9JVabsbqFddmBdax1gqkLO0nQ0gLmxyg/nytZ+WQk2b7vRf5X8fSEdauqqVNUeQKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4wEWroSfhhvwnER/F/nd1a6tAY1IYM3KL3d27efwg3I=;
 b=GXDD5wxrUfkZtEX+zkJnHm80sU3Yc39PRsybRHTP3KyKkTFYUgsBLmnUI9iyPriICe1K17dtDESrDg6HBpyV4ZZx1So8DcPD1ai+EUp5d9E0OvFnK/5QVFVcdBUPmZdFLfgRa1qGDarLXWjvyWO+d060fwRB5JoYq8G17zraZMgD19GgHUIDRzoCrgozQLZuKfpYONSc3OcTz34c8F+QDZy5jZzXPLH46AYUMgSM4UNGVuZ+0skJo8BsHYKlLywSsv3XExyit2djRrJBGRn1IoX1wVsJ7b7gtFTgYzNyynh/BOFaCq1Ftn8bwbFseRs4tOEZwd0lyCKxzDta5WC7og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB2901.namprd11.prod.outlook.com (2603:10b6:a03:91::23)
 by SN6PR11MB3309.namprd11.prod.outlook.com (2603:10b6:805:bd::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.17; Wed, 1 Jun
 2022 12:27:29 +0000
Received: from BYAPR11MB2901.namprd11.prod.outlook.com
 ([fe80::984a:d0f9:9f7d:2a2b]) by BYAPR11MB2901.namprd11.prod.outlook.com
 ([fe80::984a:d0f9:9f7d:2a2b%4]) with mapi id 15.20.5293.013; Wed, 1 Jun 2022
 12:27:29 +0000
From: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Palczewski, Mateusz"
 <mateusz.palczewski@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1 1/2] ice: Add error handling for
 queue config fail
Thread-Index: AQHYdPFvYGBHyZYmsUy8866KIvICj605c3qAgAEIEEA=
Date: Wed, 1 Jun 2022 12:27:29 +0000
Message-ID: <BYAPR11MB2901A066D250958D1EB9E83482DF9@BYAPR11MB2901.namprd11.prod.outlook.com>
References: <20220531131835.3614-1-mateusz.palczewski@intel.com>
 <2cceb264-8998-2f81-354b-b1331f71102d@intel.com>
In-Reply-To: <2cceb264-8998-2f81-354b-b1331f71102d@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 44a91cac-8d9b-41ae-a135-08da43ca1812
x-ms-traffictypediagnostic: SN6PR11MB3309:EE_
x-microsoft-antispam-prvs: <SN6PR11MB330941EEE1F46AC1A59AF9DE82DF9@SN6PR11MB3309.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2lITzWhzm7dCROkhanYgY22H4q9/zT+LX+Ea/I8rSlNJyXt/GMvwS1cFYb/YxI9AGRziy/b8o9TXqNhgIfAdlQYDn9u6R8k6jaG1Fi/R18/mzarW3Id3tDxjEk4hPl3kgoyUgulCCyrazdxSnqJL+bcvp6CpINDSkDds89dPdkgVFvHugO5FCkUXMYjgFfglHurJEUokeTwWbyWkGBEzXWlpI71fV7xEx60D8uDGsHEf3VdN4NfeYofT37fZ+/jEVf+3k0OwgWgi9BcXobU0rZCjXFlGWIdSqJwkJStqJ6s4Foe4hdbIxf6zD9dAs3B6T5Gqa4pLJ9kjl1C5yjzbYwXBV+PpXpnjYYFuKt4vEe9WoYvDdA2SKdizYQOJbEuIudfMbm/6KYrvG+HtHZgcQXegsZ9t77+ygsS+hAejinBBAPSazdautvl+N3Vkh6kBTxdR3KWFSA3N6oGQRqwipPufygu5QUEWXyYWEjCQvrR60xKdTnJpyFvhEbsxxelNoTTR0ci05NgxUV3DrDRdbFhF+FMRA7a/OPCfBs+n6cjYgvXoOG2u59a1oRWRZnb+zyDAPhc9HwiO7PTVFn4WRCdoaxn2mGVH7oiy6pmT0XTLpAqquLRO32nEWa+PhkiT0L14gyNCC7szebkfxqYFphqDrQGSgxBl5+gUDHLPkcYDC6Mz4npxLgNHu1um8sBDUe5bF/sB/ayjI0+VqEqqrA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2901.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(2906002)(38100700002)(316002)(52536014)(26005)(110136005)(107886003)(9686003)(186003)(55016003)(5660300002)(76116006)(7696005)(6506007)(86362001)(66946007)(71200400001)(122000001)(4326008)(8676002)(66476007)(66446008)(64756008)(82960400001)(66556008)(83380400001)(38070700005)(8936002)(33656002)(508600001)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UTR6TjQxVkZpYWI2aEJMbDlFL1FTRmxTOHNQUGhaMTBwc0E2bXBHcjJ1eXlC?=
 =?utf-8?B?V1R6anFjM3pYczdSZnhhenRBcFZJVDVCN0VvbTFmdGhnQm9xVDE0Z0pRUHRI?=
 =?utf-8?B?ckc5WHJrRjl4bWlDT2lLT1RSMDRpc1RFcnovdHFrbGlPM2JoTTQvY1FRVGtL?=
 =?utf-8?B?Q0VSdDY5QktHaUhUbk0yWWJuNWk5WUllaktyQzFWS1BZUGN3QjIzR1JBRUtO?=
 =?utf-8?B?dzVKa2p3eXVPdzV1RkhPYUVpWXRYdkYyMi9VQkdTRE0wb0NOSnNvOENTSkhw?=
 =?utf-8?B?WjB0ZDFUMS9jWElXL3VMRENUeVBzYjRvcDdKRnVUcWN0SkVpM2FNb08wVnlF?=
 =?utf-8?B?ejdwQUtNYVV4Sk9hNlJTbHBDZ0pmRllQZ21PQmNqTTQ2Mlp3ZlhxRGgrMnhZ?=
 =?utf-8?B?L3c0MGZuVjZVV0k0TE05eDdRZ0xVS29HMW9ETkR6NE81bjhFdFVCVTNMKzBn?=
 =?utf-8?B?Q241Z0t1VTh6TVVQbXBkUGwzYTFTZnE3UUE3Znd3d1BtbjE3UGo0Nm96bHRh?=
 =?utf-8?B?a1l0T3dpaGVEUHE4S1lSSXJpVmVOeVdZU0FyamlJc1pFMG94Rk5uSm5GOVRS?=
 =?utf-8?B?Y1E2cEZUQzJYdGtsd1RqRkxRZnMzODhSUnJvdTY5bDFZdkRPSmxlb0pQa0p5?=
 =?utf-8?B?WFdEclNtS3Fnc1JqdFhuc0dBUzJIOWs3NVEyNGpJTXc0NklqcnVtSmVKMlFV?=
 =?utf-8?B?ZldIaXkyb3hGcXRhQWxYYWwwNjdjOTBmK2JVVCtIWVgvT2tPdGxGbVJVTW85?=
 =?utf-8?B?RDQ2dVpDSW9zTzVlSnhiMnZHaXhIbmdTQTJidDBDcm1rdFBKS2NRYUtuajRm?=
 =?utf-8?B?V2Z5MWd0Q2tDSXczSzFxWU1qWmRzd0MrY3VyVUFSMUZHV2liZ1pnaFNHQkNi?=
 =?utf-8?B?bUhBSHdqTTZCZVN4enlwYzNJWlJQUnFZT0RKWURPaFlrZnlIRDNLNnpoVFdx?=
 =?utf-8?B?ZERCbDRIWTF4c1Q2dE85bFM4a2RXVFlTZnpRcC9tK3ZMS2U2cGswQUFJZWVU?=
 =?utf-8?B?N1drRUIxV0dFK2c3WU9LZUkySkVDRnFoV2I2a3R2RnhJMTV5T3BNajFxdGZF?=
 =?utf-8?B?UGNQa0FtQlVPNG1WWHZleFZLQzl0Ny9DOTZXajk0VHlsbW5aVXczT3J2WUZK?=
 =?utf-8?B?YktKNjBPQ3pwN05kRk5rR2ZUNHE2dW13dkhUc3hLK1hBOE1PRk9kUXRqekVK?=
 =?utf-8?B?TlNvQk9BVWhLMjNOZThmandLTlVkbCtDSHIxb2tnbzBkV1lTbE9uZUJxNmlX?=
 =?utf-8?B?cjI2dm8va01LT0lCRGt0bWZONWpYSHlWNE5YMitnVVRVcW4xZzdZbFl4NlNh?=
 =?utf-8?B?MVh1Z1NSbkV1STdOdUd4UTF0allzZyttUnBLdEtwdlJpSXR1c3R6eXRNM2dE?=
 =?utf-8?B?T29tbG5XWS85MEhVZGtRaXUxbjh3NGhWeEJqcUhwTm1qb2ZlQnFTUDBXZmVU?=
 =?utf-8?B?MUxJSytwTzRBMS9OdlhLRFkxV0pwM3BsVThrMDBiU2hCTW5pK25TQTZpcEdt?=
 =?utf-8?B?RGxXZTNQajJqNGVRN05MYkNWYXdtRTIzK0lJSllRbHQ2aDFEMUxpaEVyRm4x?=
 =?utf-8?B?TExOSW5rQ3hEQWJ0T3hnSTZyOVdERGd5TjQ0QTAwb05uOUJoRDJqZzVOMHpH?=
 =?utf-8?B?MHNSWXNLVzNJYktXYzZrakdMTTJIWXI0WmVjM0UwZVlhSEwrUGIxbXBzZEtz?=
 =?utf-8?B?TzZCSmpNV1NkNlV5Y0hhc01rM3hzM0ZOc2pmUmY4OWJONHNzWDYxUGtFQkpH?=
 =?utf-8?B?Tm9DeTNubnc1ZEU1MTVoZ3g5OS9WL3dYRWdQa2w3R1Z4K3lFQW9UeDJUTUJq?=
 =?utf-8?B?SFhLTDd1cUcrNEZmOFI5dGJCVDBERUplWHd5a21QT3IzMHEvLzRLYzVQeTU1?=
 =?utf-8?B?cFU3MnVKcUdVTnJjNXZ3WG1aMTRtMWtzMEd4Q0ltU1hXNi9Zb3krWndrUkNa?=
 =?utf-8?B?YjlvNDNveCtGNU9jaUdTN3ROaFJ1b3RIQ1FTK3hsZWIwLy9Xbk9IdkJsSi9u?=
 =?utf-8?B?cm1SNjZhM0JYTU5KbGxYRk0wODNrYnFsS09tMmxrejlTK3h1SGdCYnpHbTdu?=
 =?utf-8?B?RlhITUt4am1EU253K2xueEM4MkNpR05rMmJFNEhOcjdmMUMzMDRVTENDbk5J?=
 =?utf-8?B?WkF6ZGRHb3d6R3NtaEFWYlE1RytLeGk1d29FQnJKTGIrUlZQMTNLOEwwQ2tJ?=
 =?utf-8?B?YktVNHFlbDhZdkdGS29nT00vY3NlUlV4cDhJenJ6RmpRb2dsRjhsV2FLNGhM?=
 =?utf-8?B?UThsQjNBWEE2YStTRmdKSzc0SWZDUUJ4bEFYc1I3ZFNSOFVmakNpUDZRckNI?=
 =?utf-8?B?K0drTUtIeGgrOEpOSHZmOWJoS3I4eDNqMHpzTUVCY1JqUTFBUWRWMzhQd3Nt?=
 =?utf-8?Q?MvHb8I/KoPSjguULBXKmGmiU6PzJ3OpQMNrim?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2901.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44a91cac-8d9b-41ae-a135-08da43ca1812
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2022 12:27:29.2050 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: feTNaR1aEsW5HvuVTZhGkccQ128LGpyyjW404ay3txCW4Iu8updOu1WcCdtUHTI3KhxiTE//fFRy2ssULP2k7u8XKslsuHeIHZkNCBQt3qjh6Uoh/5Lf74Ne/5lZXaMf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3309
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Thu, 02 Jun 2022 14:14:12 +0000
Subject: Re: [Intel-wired-lan] [PATCH net v1 1/2] ice: Add error handling
 for queue config fail
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
Cc: "Laba, SlawomirX" <slawomirx.laba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com> 
> Sent: Tuesday, May 31, 2022 22:41
> To: Palczewski, Mateusz <mateusz.palczewski@intel.com>; intel-wired-lan@lists.osuosl.org
> Cc: Patynowski, PrzemyslawX <przemyslawx.patynowski@intel.com>; Laba, SlawomirX <slawomirx.laba@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net v1 1/2] ice: Add error handling for queue config fail
> 
> 
> 
> On 5/31/2022 6:18 AM, Mateusz Palczewski wrote:
> > From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> > 
> > Disable VF's RX/TX queues, when VIRTCHNL_OP_CONFIG_VSI_QUEUES fail.
> > Not disabling them might lead to scenario, where PF driver leaves VF 
> > queues enabled, when VF's VSI failed queue config.
> > In this scenario VF should not have RX/TX queues enabled. If PF failed 
> > to setup VF's queues, VF will reset due to TX timeouts in VF driver.
> > 
> 
> Patches for net need a Fixes tag.
> 
> > Signed-off-by: Przemyslaw Patynowski 
> > <przemyslawx.patynowski@intel.com>
> > Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> > Suggested-by: Slawomir Laba <slawomirx.laba@intel.com>
> > ---
> >   drivers/net/ethernet/intel/ice/ice_virtchnl.c | 53 +++++++++----------
> >   1 file changed, 26 insertions(+), 27 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c 
> > b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> > index 1d9b84c..4547bc1 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> > @@ -1569,35 +1569,27 @@ static int ice_vc_cfg_irq_map_msg(struct ice_vf *vf, u8 *msg)
> >    */
> >   static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
> >   {
> > -	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
We will upload this as fix then, because I believe it actually fixes same scenario as in the 2/2 patch,
but it's just harder to trigger this case.
> 
> This removal seems like a refactor and unrelated to the bug. Please send this change via net-next.
> 
> Thanks,
> Tony
> 
> >   	struct virtchnl_vsi_queue_config_info *qci =
> >   	    (struct virtchnl_vsi_queue_config_info *)msg;
> >   	struct virtchnl_queue_pair_info *qpi;
> >   	struct ice_pf *pf = vf->pf;
> >   	struct ice_vsi *vsi;
> > -	int i, q_idx;
> > +	int i = -1, q_idx;
> >   
> > -	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
> > -		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> > +	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states))
> >   		goto error_param;
> > -	}
> >   
> > -	if (!ice_vc_isvalid_vsi_id(vf, qci->vsi_id)) {
> > -		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> > +	if (!ice_vc_isvalid_vsi_id(vf, qci->vsi_id))
> >   		goto error_param;
> > -	}
> 
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
