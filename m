Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1AA4C8D21
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Mar 2022 14:58:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EB65E4014A;
	Tue,  1 Mar 2022 13:58:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rv3gv5Y01iK7; Tue,  1 Mar 2022 13:58:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6DB0C40145;
	Tue,  1 Mar 2022 13:58:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 106231BF377
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 13:57:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EEBEE6079E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 13:57:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gEnaYUeWC0jY for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Mar 2022 13:57:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 18FC760760
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 13:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646143076; x=1677679076;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MQ5cBsSwCz3t98fv8PSYHLcrcekf65swKvINTZsmGS8=;
 b=MO5k4rT4MFdJXqurb69gT8+KLE47lY2P72WEXICG+POqnUw5KiVQc5Jh
 fRM/yiUuSMqC7zopZXGxh1g97FLY4S7PH9oTrTyjeziiJgdGusVEepWck
 +ZvCJ98THfpQudDMwRsbkvVfTCUSpagUKWHxh9eWwjmp34S2QUWnr7fTo
 YBwJpgwaUZDZfk6szkEAIJFKMkuOjco6k16nWeiq6YHi5jOM6db+Dt+ET
 febd3TgdZYqnd+WXJVbVF2ZaipAcw2GEZVL7QulrNYJaYHPb++bC38ybX
 eMOxkJeHzMZJW02FLfkPeCYPJ/a5fMo6GlIoHY107athdjrQzirn6352M A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10272"; a="233751065"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="233751065"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 05:57:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="778457124"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 01 Mar 2022 05:57:55 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 1 Mar 2022 05:57:55 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 1 Mar 2022 05:57:54 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Tue, 1 Mar 2022 05:57:54 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 1 Mar 2022 05:57:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XKa0UPBDcOZvkRs/v2suXWAdl+waGdCIGExko1BuTrz5uq5nxEv9DjoYl5wqt0UwYcPX7TvNGbX+S1sgnRwpua4x+MXeQZmKbCpi8ANGujT2zpfkZ4mRG/nhSd34x11Ve6Edj7Cz87RPfc2JGEfVP20vM6Nj+HhoxzX73gqp3niNBS4zJRgZwmd+vwFYK1ou4sbU9zl65zO7qGnxY1mXQUJAEFQ/VuOIUg330AbjWe4SUa5ZPWBQcVpLv0gO/N131DAfFGUDHzMj5j1shbN34FVXLmd5EoBhRMsikRsG9zYZCrQyaWkEjReRZzr79nAV5tJifQfBLROS/Z/9ws0BlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MQ5cBsSwCz3t98fv8PSYHLcrcekf65swKvINTZsmGS8=;
 b=WvOV84B9IramuAOFDuoYgraI35cRBC6iG9qu+Sfcqi9SMM03Vdp97FkhIFyes+PYT/9LSd3iO8JK9POwA/w7fXjkumfEhoey+SPEmQLM8Xx95JL4XY0h7gnoZRVVo6nAoN47ougrdWPGGBhojnQFqbqRoNXE9+1iMPKLfp+jf5x+gcta5nVjjFb3oHMXCcaNhtcUIJ4ys701bhwcADSfUJWGu12NYXEl1hZyvbvBSJPupXCuycWN5EE6lUgrh9TVL9941e8aGkhc1rHttV+h7JfNEHtUpgk2CMeCWnhh91kmF3b0vmT8WEZJZlYe5qChdKo8UXN1Mkrq9O5PntAQ8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 PH0PR11MB4792.namprd11.prod.outlook.com (2603:10b6:510:32::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5017.23; Tue, 1 Mar 2022 13:57:46 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1912:e2ed:a440:4910]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1912:e2ed:a440:4910%3]) with mapi id 15.20.5038.014; Tue, 1 Mar 2022
 13:57:46 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Joe Damato <jdamato@fastly.com>
Thread-Topic: [Intel-wired-lan] i40e and TSO with MPLS ?
Thread-Index: AQHYKN6XWNP22JWnA06houkUcSxyOKyh91qAgADME0CAACGiAIAHscsA
Date: Tue, 1 Mar 2022 13:57:45 +0000
Message-ID: <DM6PR11MB46572379068898154F187F889B029@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <DM6PR11MB4657EB65F784C3E816FD27FB9B3C9@DM6PR11MB4657.namprd11.prod.outlook.com>
 <DM6PR11MB46572510E594BF3E789AC5CF9B3C9@DM6PR11MB4657.namprd11.prod.outlook.com>
 <CALALjgzQPDdNTjCBD+S2Adymk9XTH4qa4Sb6-kBuh96oKg+ajQ@mail.gmail.com>
 <DM6PR11MB4657CBB8B06ACCAB0CE201429B3D9@DM6PR11MB4657.namprd11.prod.outlook.com>
 <CALALjgxJ-=WbWBS0VxxSNWA17L6mMZA7xZa-XBBeOsYy6KujEQ@mail.gmail.com>
In-Reply-To: <CALALjgxJ-=WbWBS0VxxSNWA17L6mMZA7xZa-XBBeOsYy6KujEQ@mail.gmail.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0b19ed95-6d31-44a5-0dd9-08d9fb8b76c5
x-ms-traffictypediagnostic: PH0PR11MB4792:EE_
x-microsoft-antispam-prvs: <PH0PR11MB4792A9B9AF86606FAE20C1F29B029@PH0PR11MB4792.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1QAcmmJa7V3AjvmxOpgZr8jAsizBmF4x4BoKEXNo1v/CorykggQyc+WGfReMMxEyCB6xhPT6EXigS4M3cocGRe9CXDgqkMyeGIzS7fjiEqSw5+yeTWFU32LDeVYjCpWEI/lJYPVINSRuy/mLvkb++sgZivAqvwc9wVxYMS2c6tsd1XxqqEmREPkyaL/me5Tthv6JT6cKv2hVcgCVSkvLY0pf4gQ/M9Ixv5IpK1DBUEzuW80dxR3lrki6S613rBhKoXMWIgyScPSgQ912c0g0Q+qW0CNYb/BG+6naTi+cKYsll/zFXxHIiwFRIJCKTfrIOMyBg4nTRWobqOpR0KWCst8hnJMck3pfq9xaXD4HrTA/Fp07CCJjmym02ojT48TMtyqKuHk6sn1EKYfYZhyNnDs346RcBc4Aow9VgGXdzcZqukbtD6v2vMcKVCCaKeuocKD/8G33sBNU6+Bgnc7pkJlcJkZyWrEZH2OFXJZYGZpqxyLMJ6ezQPAMJjB8+vLAaaw4MYPOxAqUOfusUCWjgX+e3j+u1EIQvzq03VInAp8XNBKOrI5W2w/uoyF1zP5KrDL+Nj8r+HOsjcUebPnfytYEGoryv5kCdtnzCHgpcX0FeedanSAc0WWLuWztljJ780pNLlY6cTTh3Yomr8W9iZj+KKWF6dDCYyHloQsYOzEdrYCNhPIaZTh/I8eYR88xPTo5ToB9p5eGQ6hIsSmBtmigND942Mkpa/sP9kzRxqV66nUuGr69BL1U3NfpHT427sI1xgt9+VqRzaO3x5Ev18Ou6TvU7IInoi0Zh82AmR4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(8676002)(64756008)(33656002)(9686003)(38070700005)(66556008)(66476007)(66446008)(107886003)(66946007)(26005)(186003)(76116006)(38100700002)(5660300002)(122000001)(966005)(2906002)(508600001)(4326008)(82960400001)(316002)(7696005)(6506007)(55016003)(53546011)(86362001)(8936002)(83380400001)(54906003)(6916009)(52536014)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c2hUbjFXcUNDTWx0MzR4cnBQY3oxNmtCZWlDL0RLWEkwc3A1NXQwRk9EMnZO?=
 =?utf-8?B?WWhEUTFhR2QyM2Z1S0JhMk1lY3VZWDcwSGRVdzdrQXJldGwxYVovSnlJZUJl?=
 =?utf-8?B?dGw4UnlNdVlTbVNJSC9ucmZjaG1zSnk4WWlQbjFSOEtGd1RCVHdtckQ3RG1P?=
 =?utf-8?B?OExHdERtZ3NJeEFQWkJFOXNZaUJUUlNyZDlFQ0d5c0k2QjFVaVZUMlZhUy9s?=
 =?utf-8?B?TDhxMEpNUmlvaXpTSGYwekNlN0FsTWFISDk3c2pMUkx3TmNIc2xHMUxwZmZJ?=
 =?utf-8?B?MUo0Z2pXbzJiUTgzTUdpVHVWb2xYcWI5U1VJMVpuVEZpNGlLUkhKNDBrQUpG?=
 =?utf-8?B?UWYrOStIcWN2U0JON0RuSm43OWc2S2xVVERza0R5TjNPV3hpcDFVZXlkTExu?=
 =?utf-8?B?K0pVTUprZGc1MDgvbUZ4Wm02NnhPSVVsaVVaRmx5cjRsUVErd3JJMUtKemJo?=
 =?utf-8?B?OHNBZWUxMlptak1xWGtzQmVSUVM0ejM5Z0htY3VPUmxXYzdlYU1oWWVZd2Z0?=
 =?utf-8?B?dnZLRGpJdGpac2E1WlExSkg5bnJqQlJVc3E0NjZWUzh6aFZSTU5zVlEveGVm?=
 =?utf-8?B?M2tZRklqZTJHY2N3WThnNGlQQUNLQ3VRNkFUS1FHUmxiL3gzaHFXNzlrMHBE?=
 =?utf-8?B?NUlzVFdVeDc0S1c4b00xWTk3OGJRcXhSQjc0c3ZmQVE0Q2VxMmdlM3E0OHFJ?=
 =?utf-8?B?Z0tDVG9DeFNBYVgzSlB0T0daZC9taTBydGRsSVNkVzRpMytBV3dYSzFxYllo?=
 =?utf-8?B?b2VHcnowRU9oNFYxNi94dzRUNnl4bWlONWt2T1NiYTkzdTN4R3Y3T0szanBL?=
 =?utf-8?B?dEdMS0gwalowcjRUOTc2bWVqNFJPL0FVUVovenhpZi9CbTlTbVduUEZMc0lJ?=
 =?utf-8?B?b2lrWFMwZ3JHMk9rUGwwSVJvRk5KbUZ4L2hBNkVvcEp0K05ERlJNa0UwV0li?=
 =?utf-8?B?VENUSlVjSjIrdmxoVHM5eThQS0JrTWEzVGt4RUxGc2s5bzJpN2dSVnhIa2ZF?=
 =?utf-8?B?WGMyWjhvOTJrK1JOR2hHN1JtL1ZCTERrMEt5UjNZYVBBalBUYU93Q0pmK1Qr?=
 =?utf-8?B?WDRHTDhPN2h3d2JobzJ2WmN5TytaaTlKN1dYVmlwQVlsY2NtS1N2Z3lGV0Uw?=
 =?utf-8?B?c2UzMHNmMWF4YUpjQ1FySC96Ym91VW96Nk55Z2tIblVOVnNqdE9JR2hpVmp0?=
 =?utf-8?B?a0czclVmRnkrVzJYUEIvZVNLSWNQUlFQdHpsVDlBeGVoa21XblJmdFhyeDdy?=
 =?utf-8?B?Mm5QeEpwR0ZWZm9QU2RXQVpobGxCbW90QXJxblgvaUZwb2psNU45b09CeS9i?=
 =?utf-8?B?Z1IzZjJhM2lOZmhzRTJPL1FwTlR5NDdIb054MHpaTzFVS1NDZTcxZnlkZzdk?=
 =?utf-8?B?TGYrQjlieW5WUUJoclVEUnVDN0MxMUVNdkpHNUVLOXRHejV4ak8ydU5rZDZx?=
 =?utf-8?B?ZC96RVJCcUNzYzg5Ym5ZNTVVWmRmcVQ2Wnpvem1BK0w3NnYrMzV3ZU5BR1Jx?=
 =?utf-8?B?UnRkRUpPc2VBRldNeGRLbWd5MWk1cmNrekpENUlXSUZiNkxEV2RyTGxWUTFR?=
 =?utf-8?B?ZkRCZ2ZPdm9VQXdzREorcnUyQ2VQM1VEY3VJU09mTEwwVXZDbkl4N0E5YlNj?=
 =?utf-8?B?eUxkQkt4RkQweXdKbHUrUUdFTCtEK3lzYTkwaFY4eTA1THRKOTduQkx4RERq?=
 =?utf-8?B?YTd0TUxOSjBHWFJRTVJ2VEZYQXVTUlJaZnN2Z2ROb1dzT0J5bTM2V1lRNUJl?=
 =?utf-8?B?Y3Z3em56NEFXU29heFFkK1E5R2VTelFta25teHJwMHA5R3RVZUNtK1pad0hJ?=
 =?utf-8?B?d1ZWV2h6YWsxWmZmbFNyQkFDNDNQRGNLc1piQjR6clEyc1hkZk1XWjRoUkw3?=
 =?utf-8?B?dFUyZml6S1ZJM09kbWtOdm1iVlU2S1dmbzM5MEdTdmowdXJ3NmRPM01zUjZC?=
 =?utf-8?B?dFA0ZFEwWGZxRDFlQTlMVlBLeW80R1BvRnZyRDROdUdUUk9wMXA4RkJleFFG?=
 =?utf-8?B?M0J4TmRZb05vYy8wNnd0WUhOeVRVWW1GWk9ONWE5VkY4TEVCSmY4MG5lWERT?=
 =?utf-8?B?Y0YyR1lVbjI2djdteW1HWXdEb2FnTWttalZRaUJBTEdwUkx1ZWNlTDBjK3JE?=
 =?utf-8?B?cldhbXNYOEZIUHl4TFRSWHdUamhFdndiL0lENXp1Q0w3VmdYdnE2V0NITmhV?=
 =?utf-8?B?bkUyWjkvc2RWR3FwM1VZL2JYMnRCb1lGcUM3dUVYYTEvZTJmY3Z2YzZtR0Rw?=
 =?utf-8?B?NFNWWE9qRDFwN3kxNGswSVpuaDBRPT0=?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b19ed95-6d31-44a5-0dd9-08d9fb8b76c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Mar 2022 13:57:46.0037 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +T1qQJlTQbyBnfFMnkoJP5i2KsohLsR/qk10cjmkiI7jJ1TjZMQGFlPE9ZamYBc4XIqZBlhM5tg3eiPMoxf+OUHtHs5xfDscT7+iVyxWj4s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4792
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] i40e and TSO with MPLS ?
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> On Thu, Feb 24, 2022 at 6:28 AM Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com> wrote:
> >
> > > On Wed, Feb 23, 2022 at 9:56 AM Kubalewski, Arkadiusz
> > > <arkadiusz.kubalewski@intel.com> wrote:
> > > >
> > > > +Joe
> > > >
> > > > > Greetings:
> > > > >
> > > > > Does i40e (XL710) support TSO with MPLS?
> > > > >
> > > > > We are using firmware version: 7.10 0x80006469 1.2527.0
> > > > >
> > > > > We've attempted to add support for TSO+MPLS to i40e, but were unable to
> > > > > get it working. The patch is included below for reference, but it is almost
> > > > > certainly incorrect - and I am not clear if the hardware itself would
> > > > > support this even if the patch was correct.
> > > > >
> > > > > Applying the patch below and using tcpdump shows that:
> > > > >
> > > > >         - packet data, as seen by the pcap filter in the kernel, is large.
> > > > >           This suggests that the kernel is attempting to offload
> > > > >           segmentation to the device,
> > > > >
> > > > >         but
> > > > >
> > > > >         - those large packets are not ACK'd by the client
> > > > >
> > > > > This suggests that either:
> > > > >
> > > > >         - the device does not support TSO + MPLS, and/or
> > > > >         - the patch below is incorrect
> > > > >
> > > > > Does anyone working on i40e have any insight on this?
> > > >
> > > > Hi Joe,
> > > >
> > > > I have done some research for your case, good news is that we believe that 710
> > > > hardware supports it. Currently we do not have plans to implement such feature
> > > > ourselves, but we will do our best in reviewing if you decide to implement it.
> > >
> > > OK, thanks. I appreciate the information and your willingness to
> > > review. I am pleased to hear that the hardware supports it.
> > >
> > > > Such offloads should be supported on packets with up to 2 MPLS tags before the
> > > > IP header. For start, you might take a look for the features pre check function:
> > > > static netdev_features_t i40e_features_check(struct sk_buff *skb, ...
> > > > It probably requires an update after the changes you have posted.
> > >
> > > I took a look at i40e_features_check, as you suggested, but I am
> > > probably missing something.
> > >
> > > My understanding is that the call graph on the xmit path is roughly:
> > >
> > > __dev_queue_xmit which calls (in order):
> > > 1. validate_xmit_skb -- this eventually calls i40e_features_check and
> > > harmonize_features which will use the mpls_features bitfield set in
> > > the patch to turn on the TSO bit
> > >
> > Just saying, worth to check if the required flags are already set when
> > i40e_features_check was called.
> >
> > > 2. dev_hard_start_xmit -- this delivers packets to taps, then to the driver
> > >
> > > dev_hard_start_xmit internally hands packets to any taps installed
> > > (for example pcap), before handing them to the driver
> > > (i40e_lan_xmit_frame).
> > >
> > > In our tests of the patch below, we see that tcpdump reports large
> > > packet sizes. Since we see them in tcpdump, I think this suggests that
> > > everything leading up to pcap delivery (including i40e_features_check)
> > > is correct... otherwise we'd see smaller packet sizes being delivered
> > > to pcap.
> > >
> > > This leads me to believe the issue is somewhere in i40e_lan_xmit_frame
> > > or below -- most likely in i40e_tso, which my patch attempts to tweak.
> > >
> > > Let me know if I'm off track and misunderstanding your analysis, but
> > > based on the above, I suspect the changes to i40e_tso are buggy.
> > >
> >
> > Seems like your understanding is correct.
> > Are those packets actually sent to the wire?
> > Any stats are incremented?
> > Anything at all shows up on the client?
> 
> The bytes are never ACK'd by the client and are eventually re-transmit.
> 
> Based on the tcpdump output I think the packet data makes it to the
> driver unsegmented (which is what we want), but due to some issue in
> i40e_tso (or a hardware limitation) the NIC fails to TSO the bytes and
> they are eventually re-transmit.
> 

I think good place to start would be the 710 datasheet:
https://cdrdv2.intel.com/v1/dl/getContent/332464?explicitVersion=true
i.e. 8.4.4.3.2 Transmit Segmentation Flow
Please verify if your change is following the expected flow,

Thank you!

> The retransmit shows smaller packets being handed to the pcap tap,
> which are then acked by the client.
> 
> Thanks,
> Joe
> 


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
