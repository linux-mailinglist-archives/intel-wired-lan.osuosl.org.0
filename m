Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E48F47514FE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jul 2023 02:09:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0FC9483BB8;
	Thu, 13 Jul 2023 00:09:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0FC9483BB8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689206983;
	bh=XbpBVe0QwoHpkr4I0wUAH66bfJ0hnJhQnCXS544HW0o=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VI88uVl4TLN2dsfrMA0j8fOSlJ1VPS47WJHa5W/DUDR4dtumek3RaRpTxsHSmhk28
	 R++v/JXwiR5sNOOZjP0r2pIq4WRGkr7iB+GvISgV5MH3Rf/+6vrhJOlXYbCC66A7NX
	 Pa1ivjeplZ77ccEnI2D4b/wXb1CTDQ5CaxTBm/GSyYaC65Q2aq6oxRzPHe56Tgmsix
	 7GBqQbaZW9sruQxDjj1HP2SZL6BKDTF9GzLLYX9KdIvydwH6pKRsV9BK3xrfY5rMSN
	 NwnXcYBtP3pOEGQYpSiKCgFomFk6Z1b8q/NuvIzn2oGNQOlHiprA0kTEwid4EltN6B
	 FfZGLvdxv7U+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pWqUOvUHfbTO; Thu, 13 Jul 2023 00:09:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E0AEE82BF4;
	Thu, 13 Jul 2023 00:09:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E0AEE82BF4
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CA2591BF3A4
 for <intel-wired-lan@osuosl.org>; Thu, 13 Jul 2023 00:09:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A0DBE40220
 for <intel-wired-lan@osuosl.org>; Thu, 13 Jul 2023 00:09:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0DBE40220
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dhAR4DdkF_hH for <intel-wired-lan@osuosl.org>;
 Thu, 13 Jul 2023 00:09:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B045D40127
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B045D40127
 for <intel-wired-lan@osuosl.org>; Thu, 13 Jul 2023 00:09:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="431185266"
X-IronPort-AV: E=Sophos;i="6.01,201,1684825200"; d="scan'208";a="431185266"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 17:09:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="699047783"
X-IronPort-AV: E=Sophos;i="6.01,201,1684825200"; d="scan'208";a="699047783"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 12 Jul 2023 17:09:08 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 12 Jul 2023 17:09:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 12 Jul 2023 17:09:07 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 12 Jul 2023 17:09:07 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 12 Jul 2023 17:09:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QijY1EBdtq3ImJag/veuBYGemkUmFf5SdozbVWy4wKG06k4/ARrJCB0cgzhVdD5ddBUX+VyEfKMPEpXh0PGJ83e2KHpRHDkR/04T++7HRKcTqcn+wRUz7aDaVK+F3+JF74yCLPTMMAaMxf7TZdgV9LnHcfguNSRiVMGwcAiRMtjsjYT5mbbtJwLh200wp1Z5aDJNVYImGfXwPGlcjnaKjzegdtsPfqX1bhTfNn2Eit0Bui5m0v65gDHIQk7k3DBMWVfWEjw8fiMrwoGSTUN7tyEoK9n6lcZhvLqbtmUlkdqHzgcpVrtTDws3RRtUDUisNt2lbGkJeg2/VGrITxzDfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UyjXa6GGCDuhZq/ViUDniv5erMOMVdLY/bIMseOMHc4=;
 b=X3Bqf3oxCxoxRZr/LDCfU27Ni30BLTD87tKWIOxGYR6RR6uq3Zu6IEBjmgOANkeV7sE7O5pd/F0R5dO63CLcpXxH0T/B+9ZH9So6Lcjjo2pMVfdEDJGEdywNVo7jT8f4O0LthW7ZHmUAhs+ud1vAFtvWDhmD/fvAAKAa8ojUW8VhCwTAX5f21u2iaMmwuVrdfFcOkGZCnm0tS2nMzqQkxiyZPNOpJ3R4qXBejUiEbMZ9lJOX5e2VCqBj1+SPLD1Oih7BEUlx8KILf9UAojI+Tx+5rN/w5U5BqKqZdKJQmmcXyTyJpNoc/Iqqab1IOkpAm9+WhWXC5yymoXjiN2oCUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by PH0PR11MB5580.namprd11.prod.outlook.com (2603:10b6:510:e5::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.32; Thu, 13 Jul
 2023 00:09:05 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e%4]) with mapi id 15.20.6565.028; Thu, 13 Jul 2023
 00:09:05 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [PATCH iwl-net v2 1/2] igc: Expose tx-usecs coalesce setting to
 user
Thread-Index: AQHZs4+9ECuFK11jd0uSWmHOmlssZ6+2mriAgAA596A=
Date: Thu, 13 Jul 2023 00:09:05 +0000
Message-ID: <SJ1PR11MB61807178545A67C0645C5F02B837A@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230711003453.9856-1-muhammad.husaini.zulkifli@intel.com>
 <20230711003453.9856-2-muhammad.husaini.zulkifli@intel.com>
 <40071625-9e78-7837-2ae4-df167932aaf4@intel.com>
In-Reply-To: <40071625-9e78-7837-2ae4-df167932aaf4@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|PH0PR11MB5580:EE_
x-ms-office365-filtering-correlation-id: b763de08-31de-4790-b6b9-08db83355eeb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ln1zkI3AH5l8GNtaA+jaYVX5m66coXTeLBSPCbqelKyRym/c4YBef0WZzIJSirGBLKeV6QiPti+o5ZzafghzAu/bL2ZbT8bFQoed8HoYQHwIIwO+ZNj+TwsH6ifI2lU0EloBYd2Odis435S5t15r1Lg3N7tIXKz83SVutOnbi39itcnvCymHbDd/hANhHjaWYo2sJrVVvTn71RtyARhu7TE9U2AQkuV3g8NtgQ+PVGFvCPW2a/UcnPTu1p8KcQi9gFjGPlkgRfefjvPtYQB1a4fNxi8OeprUtXFqA9Nx0BlTXsW0SLi7I01uOvXnqX9cSay2V+B4PKNERO1pRYL9ErhAeILQF0Fhra1KKY0q0p9pZhsWa6jMWzTifK9PnIjCTfFoCG4CR7wac2+Tan8dI1AlVF+iGMaeTmeX0kNGrHCttj9LCyY1pP0HVbZirNm1u9PeqCbPHE9+iPV7/ujDUPBAUKBKeggDHgzXXSLPfWV6GfopAcW+qCVjIf3r9hHgU2pO9wSlMSH3fwCInQSdqLYWP8Y8J/0n4TO2fDCK6TF1/51A3eLUaA+NS9f48sl9WCDFrzbHPhKpu5WFpKs0RRx56q64A5b0UFNkhQDYprPgrmNrB/V2EIyhx1onQJI8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(366004)(376002)(136003)(346002)(451199021)(8936002)(8676002)(5660300002)(478600001)(55016003)(316002)(41300700001)(4326008)(7696005)(110136005)(54906003)(52536014)(53546011)(9686003)(6506007)(26005)(66446008)(64756008)(66476007)(71200400001)(66946007)(76116006)(66556008)(186003)(2906002)(83380400001)(4744005)(38100700002)(82960400001)(122000001)(38070700005)(86362001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c1JzNGFzVTNKZEp6THRDMUtPaTY1S2UrYVo3TGxxdWxPQnhVT0VaZ2tHVmJ6?=
 =?utf-8?B?c1haRU52S0M1bFhPT1RRVFY5U2NuQlowY1RQeU05U2tKTWh4aWpLa1lQbjdh?=
 =?utf-8?B?Y1RLL2lkQW1jR1V2SU92TSs0K1Zqam1WUkdDWnBjbGFvc0JKQTlDUng1cy85?=
 =?utf-8?B?RWh3ZWk5UEthTmFzMGhQOFBkbnZqRjU5Ym44TTBaNlRYejMyOFZCakV3azRQ?=
 =?utf-8?B?MEFzQkh0WmdMT05JaE1PYWZHZXBNcndRajhka1JIaVJMMnp3eWF1MEF4U2V4?=
 =?utf-8?B?NWVXNytpem5TWGY4cTZLNzVzc1hMU09SV1lOWEZ6YnZrVVNla1BpY012Z2Y1?=
 =?utf-8?B?SVR5K1Z5WnFiNXZkVHllNkp3VUo0VTltODBMQTdXaW1xT2h0OEFCL1Uxc3J4?=
 =?utf-8?B?RGtkZTQ5ejU5WHpLUXlyejNXcEhaZElMUzQ1M1JNTTVEdlNwTFFuMUNsVXZm?=
 =?utf-8?B?UytrVENVUGpHamxaMWw1cmVJeFhkVHFLcjAyMEF6WnZtWWhlelZSZEkzK3Mx?=
 =?utf-8?B?ZE9MRHdmSXRYZUdPcEo4UXAzYjNJVmpzQStrem5YeExsclFtOUJUci93YzFt?=
 =?utf-8?B?QTcvVG9FQ2Q2VE9uWWVBdlhZVlJwdGg1eEhaL21WRTdzUEpyTHA3ZVlPSjdw?=
 =?utf-8?B?QnBjMVZ6TFY3Vlh4OXZ2K1ozbWp2Sm52YmUxaW5TMHVPUVA4S0Nob0kwRDUw?=
 =?utf-8?B?a3M1NndleklYTEkzQk9tR2Z0eVVwdUZVSEVjQ1R1M2pWdWI0L3NxVUdDcTFU?=
 =?utf-8?B?dHNpUStmVXN1ZnVnMlJjRDBWdjVheTVzSXppZThyczdEYUxTVVZuQnFqK05h?=
 =?utf-8?B?aGRUQVRDQ3dkYlFiRGwxUytzYk1wb1BXTUhaVi9ucVg1emZnQTNSeVdkS1RL?=
 =?utf-8?B?b2lmMDhZUk9FMHdwRmE0MnZBOTdzVVY4dWYrdWZVMjdjMmRzR3ZhbCtDZ0FG?=
 =?utf-8?B?WHBSejcwbGJUelBQTy9TRjh5dHZEZEl2emlCTytvY01VWGhzb2Z4WUowakhE?=
 =?utf-8?B?eEJuaElDK1hRaFE3Yis3bTB3bkRNMHBIYUlMaGtvWDRwQkFtZW9KRUVENWp3?=
 =?utf-8?B?SDNubDc5WklYa284OXNtamUxV2NjZ2xOTG9rTHlGQ0JISm11SWJ1djg1Tkts?=
 =?utf-8?B?WDlZZDBBWkthTUptLzVyTEVHNU5Fa2cxS3NZU00vM1VKZ1A4VTdRd21NT2Zh?=
 =?utf-8?B?OWpFWnQ3RjkrOERNL2lCVW90VUd0TUxpa0tmMitDRTYrV3o0Q1FPWmg1UUhV?=
 =?utf-8?B?R1I5WXgrSHoyUkE3UGF6cjhBa1QrcmozOGFFNElweUJ4ckdNNmhRaDdvUzI4?=
 =?utf-8?B?RGxYU3RRNVREclNzcC95NXllSGZGYURHMmlWVlNIZ2EySk15R3JWbGkvVWc4?=
 =?utf-8?B?VEVQZjlZZ0dLN0FLSS9aWHZZSW5GNGZwSkJnTlArSmtQZWRKV3dPRlNCREM4?=
 =?utf-8?B?aGVINjdLNEFNU3Z2M29PN1F5ejFiejFHNW5HenlCamw4NEltZlpPL1lKK2k5?=
 =?utf-8?B?b1UvMkJkNjFjT1RVQ1FiL2pKVTd0WG9TN1lHTFpsSmc1TW5YV1ZJM1FJdnMr?=
 =?utf-8?B?M2V6Rjc4STNiRUk5MmxJSFR5cGRROURxZFUzVGFweVZFaDlQMmJBb0diSUJv?=
 =?utf-8?B?VGFMeXdscDhBWlUwRFlqRTBjTTh4R3o4aHZMeWl6TkViamxRbHM1Y2tPZmp1?=
 =?utf-8?B?Mys2NXc2QzQyZ3kxeFAwaUh6ZGdUemx5QmpNdUxzMjgzRFRoUjBQKzFvanB1?=
 =?utf-8?B?eWZaRGR1VFJ5aXdxOHNQNnFPeWo4aE1HK2hUb0w4VVZJYnhMaFI2YmNNOC9D?=
 =?utf-8?B?NzE0STdmSXN5OVZwSXpzMUt4SkVFRUJkcjFMNWlmMDZZamU1RDFIRkFsdEJR?=
 =?utf-8?B?Z1hlS1Y2UUxFWHRhMVdQRXk1N1pwRVRXaHVkMCtVZVE1SHlpVGU5Ty9YYzlW?=
 =?utf-8?B?TUwzMXVDeWRFRXRaNDhXUjN0ZDR2TlA2WWdZNWx1UEZrdzgzWVg4M3piVmR1?=
 =?utf-8?B?clVJcUM2U3l4UWpkYlRIYjF5MzlrbWptWHlxcnYvQnBxRjdwL3B2ZWQxR25l?=
 =?utf-8?B?TDdhbGVzb3BkQ2VOUDFYTU8wY2Q1WDBaOEgzRDBhSnc4WEdiL29TUDJBUlBw?=
 =?utf-8?B?YTlKekRhdENXOFlnemJ5SG82c2xiOHFpVjRGZkdjUitrR0k0blYzaHZmdGk4?=
 =?utf-8?Q?ZbURzDKcVA9iJfc0zPYBk+A=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b763de08-31de-4790-b6b9-08db83355eeb
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2023 00:09:05.1804 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 23s99PLU7GG0RAL6uHiJUkIbGI9pub76y0vg8byEQ96N60yZFm7vHIjHaUpAYEO8VZWjtTT29qMqps7/YqYPrXgEA+i7jn/Xl5ln+anG5q8pMtL0MovvgxDsJnKrbYzV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5580
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689206973; x=1720742973;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UyjXa6GGCDuhZq/ViUDniv5erMOMVdLY/bIMseOMHc4=;
 b=TCIlsmbcRtIXM82UhBk+OSocMG1eHOX8EMujZAAsPBoSTxZymKpJA5B1
 q/9NTpOei89+psVEYGrTQykFbhdyennzOlTKc1V9ibZJUpU4iSeLfbUjy
 Ry+8JoPWRb853x47M62Uc3Bnyj4FF4+j3RIvYi30T/0+q/YzwBfkQS/OV
 YWB+pAzIDZysMjXa+H/wMUmOZBDvVtV07Dj8d2ypJxa6mnWBYmdMiv8vM
 tA9eD70hMiRCLcc+7ibctEhNguqlzImCvhiIaDEQNjKwjTasFekwcTpkV
 vOLnMF+IzpXZJafuxBMs1vh6swirXlYzAg1u0lku2Lc9bsGz/0sY+36wT
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TCIlsmbc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/2] igc: Expose tx-usecs
 coalesce setting to user
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

Dear Anthony,

> -----Original Message-----
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Thursday, 13 July, 2023 4:39 AM
> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>; intel-
> wired-lan@osuosl.org
> Cc: Neftin, Sasha <sasha.neftin@intel.com>; naamax.meir@linux.intel.com
> Subject: Re: [PATCH iwl-net v2 1/2] igc: Expose tx-usecs coalesce setting to user
> 
> On 7/10/2023 5:34 PM, Muhammad Husaini Zulkifli wrote:
> 
> ...
> 
> >   }
> > @@ -910,9 +908,6 @@ static int igc_ethtool_set_coalesce(struct net_device
> *netdev,
> >   	    ec->tx_coalesce_usecs == 2)
> >   		return -EINVAL;
> >
> > -	if ((adapter->flags & IGC_FLAG_QUEUE_PAIRS) && ec-
> >tx_coalesce_usecs)
> > -		return -EINVAL;
> > -
> 
> Seems like this belongs in patch 2?

The first patch should have this. Without this line, we would be unable to configure rx-usecs at all.

> 
> >   	/* If ITR is disabled, disable DMAC */
> >   	if (ec->rx_coalesce_usecs == 0) {
> >   		if (adapter->flags & IGC_FLAG_DMAC)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
