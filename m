Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4755847893A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Dec 2021 11:49:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D5B64833CD;
	Fri, 17 Dec 2021 10:49:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4mbHckdsgquh; Fri, 17 Dec 2021 10:49:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9CDA383155;
	Fri, 17 Dec 2021 10:49:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B65961BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 10:49:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 987B683155
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 10:49:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id td71n8AyTHqZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Dec 2021 10:49:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8E95982D57
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 10:49:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639738182; x=1671274182;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=j5cZGSQAmLbhDNeICulmGFL5WqSnu3m3RUAMlr/plYs=;
 b=FGB9mBJXb72dSFxEnoKPNScHJnwTJfoGdUcrHZgBcYXBFMRyjIYaJmB0
 9Taj3Rte8/6GUbSwTiA0+H0u/eaDlFkb8yihOVAt/8Tcrfmp3me9pVsRK
 zYJ5qMvZfh0A0d1VwIg7OkHoLKxuulhtQ0TAfc4Pjk62siomMUp4MwnVh
 PfJ3EmpA2OM9ZATFwzYt/gWcq4QZwPn5dLbAzs30MWo5f5oNv9idkRzsH
 9S6RQb+5Urbmy+llU/BTKm/A2TMYWTxs4Ecrh1fWZqzionfdSM0BITxyl
 j/PAH/AnUAIsQjW5oz5Gn7WYDqIDhjqSFZLdjzL3SL9RaaP+LHHY2MZLp w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10200"; a="263903435"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="263903435"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 02:49:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="483186906"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga002.jf.intel.com with ESMTP; 17 Dec 2021 02:49:41 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 17 Dec 2021 02:49:40 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 17 Dec 2021 02:49:40 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 17 Dec 2021 02:49:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=amwwun50XpndWaW7ljFELuTe8mmTcnEa6+mkuvIneKAIO1ImUaOTcQ3O9GVeuEjsgJQeF73Rx4uVO1t1m/Gr3WDCnrImUDKEe9513Sejyf1Kw+vZf/Om1K0c2g3dCb/wvjkDZqKYL8Kih+ZdLidyQzJQ5mNJ4QMWwkkwWLaFZ31ig/bqRroca2kJ0xptLjqFWZ0WAIE4CEBieOrczMuraFByRIdiTbAJKcwdpbrO9ytkhWcUwcDDOJCx0frSypKZ3rXBX/WVNMTDinCc+AgcM/01RDmSUE5QB22gK2EaGMNIsd5PucuFrXEfYCvTiSPYU97QFGaBRWJWiwA49CiYkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j5cZGSQAmLbhDNeICulmGFL5WqSnu3m3RUAMlr/plYs=;
 b=nKwHgwXsAEPq88UUWuw7MP2akCvxeCquuCI21kiX0d5kelhn5Q9J2pEmWawojoOSjqwfbyygJaN5bHM8au9QYdTKx/74Gx4icbqckqmXbLLlVO6Qnk4PZO+GZuJn/Dw3cTd98LPYFmuTIuXdpEuOis36EYl/4jJpvTelleUiGFnGRoz7RlUQuTkm3bKOHqyutOFAY37kR0S/WmDkts5MZlUkv3NFf1yXbzQfmZxQkN7bB0dHJEtdFGHOzPxiB/VFv8SMjs22Mb6Qcqx/GkzfAtU+Zvt3jmPhHA0bkavkAI28IcWUinG502wYUFl5KokPLafizWYqQtbA/LPCAl2qAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5288.namprd11.prod.outlook.com (2603:10b6:208:316::22)
 by MN2PR11MB3805.namprd11.prod.outlook.com (2603:10b6:208:f4::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.15; Fri, 17 Dec
 2021 10:49:39 +0000
Received: from BL1PR11MB5288.namprd11.prod.outlook.com
 ([fe80::21e4:5a0a:80c5:bb40]) by BL1PR11MB5288.namprd11.prod.outlook.com
 ([fe80::21e4:5a0a:80c5:bb40%6]) with mapi id 15.20.4801.014; Fri, 17 Dec 2021
 10:49:38 +0000
From: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3] i40e: Disable
 hw-tc-offload feature on driver load.
Thread-Index: AQHX8njvIXVnpYT800OGe6Mauh5MFaw1j9SAgADxZCA=
Date: Fri, 17 Dec 2021 10:49:38 +0000
Message-ID: <BL1PR11MB52887B5E0CF12C5E3956607A87789@BL1PR11MB5288.namprd11.prod.outlook.com>
References: <20211216123113.2142-1-mateusz.palczewski@intel.com>
 <253c5cfe-5cac-2eb0-e952-32417efae975@intel.com>
In-Reply-To: <253c5cfe-5cac-2eb0-e952-32417efae975@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 875e9f36-7c32-4370-ec5b-08d9c14aec87
x-ms-traffictypediagnostic: MN2PR11MB3805:EE_
x-microsoft-antispam-prvs: <MN2PR11MB3805D81991CE543752B9FCD887789@MN2PR11MB3805.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: g+0T3XzlJh1I9f0kFEtNfZNZ5DwsEyLq/FMPTGFcYW5AnEAcP4ad2EDIwXJ/bP09LgJXBWu0hqf/zdk3HsRYwpdJNCBRTo+8WDEto1Y0IUwkt3pmAHsgK7Giome9cDTMNWjn6KtmsJNCOrCZCRjvKRkMKAAM2OtMD2cT8O2D3wEXDSzFkRdWSayBLtmWoXAvEoPnvca0yUgnIi6bDo6tm3CrDenmCG1br/ZUnbRvgC8IKuaiJxV6xn8qFS0vpB+nLNOrDh4HBm044ali0+5VXbb5RHPLBUAlHULmhYxDPN4aAGyl5+5PgW9DaQ7bo/RH02Vq2aIHzPissD+boJ2t2RyOEO4hDl5KIIo91Pgu4Wwxd065gx2WHvZW3Z5nV1dXQFA6WgBP0BlNROSfMQ5hYGeB6Tlyv/kgrNv7Tlh5uL9FQ4H0StbxD1gAFZdYUWxI4YTBZdWPa456Pv4duHljGU+d2IH+9QDL8Kww0kiYwVKL1O18San+1IJANh+VF5cWSZroXKfvxdLo/hU41JPHBk5lNH9FOrFJ2Dokp5en1rPD0KkTcMgLIpxne9JZXFE3toKxXMhiIQWoZ+0B8CvuJ8rTBMs3X3ohqBW56pLSYbZA8dBdNsRsQHVDPlavuX4FKeNjSyeNFvHRXJt8S4ayFSlQhWDIy6qlTnEwstL+JkcSeIsGGMDFqvjHQF7XJCxAL5rJB4Mz6ZhaTLqVKdBg1lnNRTgxCgpGPpx4p+o7lCO+24XGJgYaY7X28mD72AwOfvRbFe4PxAURghZBVMpflrAF/dTgyJGhCDKTjxWIzPc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5288.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(54906003)(110136005)(38100700002)(122000001)(5660300002)(66476007)(64756008)(316002)(66556008)(66446008)(33656002)(71200400001)(186003)(26005)(7696005)(66946007)(9686003)(76116006)(52536014)(86362001)(83380400001)(8936002)(107886003)(8676002)(55016003)(508600001)(2906002)(38070700005)(4326008)(966005)(82960400001)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WHUxUVVmbnJvVWNIVEtkaklZajJwTUg1d0NpRkt4eTFldHlrN1pibCtTcVJ6?=
 =?utf-8?B?WW9KTnZ1bXkweVJ3eEdmTXo2VzBoVjF6dzRKdld5RVFjZDlUZDNUNEh2c2lu?=
 =?utf-8?B?cUVUbTdydzhzUXduRmpQZlNUVlJFUnpRVk1yV2RpUVB6dWxETktXRHVpRkk3?=
 =?utf-8?B?TmZmRWdkTU5mU3g4dDQ3WkVvRU9aZ3IzbGpqTC9uRlU2eVM5ODdSNUlMLzRj?=
 =?utf-8?B?b2JvS2ZBNGVTTTZyVUlEU0ZGUXdGT0Vjd3JtOFZCbVpJSWp4ZTNjcThHMGVr?=
 =?utf-8?B?Mm9Xb2V4MVhNRnhSajA4UUJMam4vS1FDeEpqd1FweENyUU5ZVk5sb0kyOVFl?=
 =?utf-8?B?dzVDK2h1TXdFY3VNcTlSUUhMRHBYM2VnOFNQeGYxSmVUdkNxcWplOGg5R2Zw?=
 =?utf-8?B?VnB3K0p5Nnl5VVBVMFl1TjR4SkNEcXpUZ1pRV2hTSGxodHMyZW05Nmh6aUN2?=
 =?utf-8?B?cjVQYnE0MUhOblIvWWZ1Yk50elVhaW04RDZ4NHRCczhCTWo0MjNlMEhucjFq?=
 =?utf-8?B?Ulp4Q3hCK1FKN2RuUjliSHhGUjY4UVBrcTJXRzExRzAxbVRSVitqdzRRZk1K?=
 =?utf-8?B?SHdBV1AzQmo2Q004VWZwSkZ4bkZBK0hBMVFEUXRLREMxbWdISU5kakFJQkxZ?=
 =?utf-8?B?d0JaQlFZOXpqdmVzRys4YnZUTTc3eWhMejJMc1M3OGVpT21ISmZKTVRxeVpJ?=
 =?utf-8?B?S0k1NFV3UHRnUEhWMzV6T0JVc3JBNVdOYjJDL040YTZQQzk1M3Q2MHZlSnkr?=
 =?utf-8?B?SFpib3Uxb21PKy9sNXlpZ3JHMURWZmRGVzFyMU8wMUNCZ1U1OXBWUG5hUFRT?=
 =?utf-8?B?WGViV2NWbTE4U3VQSStYRnQ0SWtLaFRrb1BjOXEzRmcvWGQxK1BJQ3N3K3BI?=
 =?utf-8?B?Y2xuM3hmeTBVc0lRclQxT2tTZ3EzOEtjdlpCOGNHaWJkdm1HTjBaM0x2b3FY?=
 =?utf-8?B?R1Bya3NPN3FSM2pIRGR5b3U0UTdTZFp4Sm1uOFk2QTR6U3hmZ2RIaUdaT1Fn?=
 =?utf-8?B?NUoyMWdLRGd4MzZtS1Q4eG9MK3JyR1NrKzlkcU5EVENndFpKS0RPVmI0MEJQ?=
 =?utf-8?B?Slljc1BiOVlrN1ZEbnZmeE5yZ2FSVGt2cDJEczJtaE5aTVE4dnFJSTFSWW5K?=
 =?utf-8?B?Mm1zUU1NdHBlamw2SGNabWRod21aZmF4bTdVd3FQaWgzT0U1eU1jZWZBRXM4?=
 =?utf-8?B?OGMwUFhocUd4dWFGdG1rV0wrZHdEUWdaU1Z6eUJQKzVnYzhLUmNvS2gxYWZG?=
 =?utf-8?B?ZDFnZHhhRXlhK0VFVWwxUnUzb2dxd0N4WnpLaktEMjFud2I0YkdabEhXK1hE?=
 =?utf-8?B?OGZ4M1RhRDhZODlWUU9EQlY0T3Z4S1Q3MmhiY3c4MUpham92V1ROV1NVSlF0?=
 =?utf-8?B?dlpxQ1lNS21NZHRycEdBWkd4MWZmc2NxMERXTlB4YUQ5N0xnSnRvVFg4NHN2?=
 =?utf-8?B?YVNPbUlIRnZNRk04N1JvMTFDMHY4cWdSSnd2aDJFaFQ5NkoxUENrR2xEU2ky?=
 =?utf-8?B?WDlmeW9ZU0tBcTRjemZTcENQU1kralJhMFNSQ3hlc1doZkd6cnhKbTRkeWxP?=
 =?utf-8?B?N21GRTI1NFlSV0VaNzZnRHlJV1VKMEgwMmlTUC9BQkNRSFRFUkF2blUvaEpI?=
 =?utf-8?B?d3kvajVybmM2dkNvUVJ2Qkc0RzE4M1lySHVjdFZQeU11bW1rVUxPdzZKNS92?=
 =?utf-8?B?K3IzWVFhSDhoRjlMKzA5YktrQjhqZTFJd0tRU0NOQ0ZmNkJqc2VJMlROWU1V?=
 =?utf-8?B?OXgwbnhFQzZ0WE9icTFMVnFPZFlLbUVyd3hyTG44aHEwTngxWVRlTkFFYjM4?=
 =?utf-8?B?TXpzL2gzemluaWtUMmh6dmFsMHN2UzhjSXFRaHVnTWEvNFd0djVIQUl6aDlO?=
 =?utf-8?B?SVUyMklpVC9qRmVHQ3kwRk5pK2hySG9ObmNxdGttUEhLSGZUV3JCdm1tVzBs?=
 =?utf-8?B?T3doTFB3cWVwMlFkNzY0cEozazFsM3NBNDJaUXgySUFrdGZxbEdrWWhXL2NX?=
 =?utf-8?B?TE12b1lUWmk5eDkwZTQ2UzZQVHBzei9mNGV6YVF2MTJQdnhJWjUrK0FTbElC?=
 =?utf-8?B?SWxwa1pVNEl2KzdtRFJwWkd2YmhHMGFDckJ0NW9MY2p4bTRjOSsvbjVhbnlE?=
 =?utf-8?B?UFJPdVVvVVlxWmxzc2pwbnpFbjZnUkU1RHVEVE8rMVJScUNvZTNiS0p0Tjl1?=
 =?utf-8?B?a3N3RmJ6aTQ2QXhPemZoOWdha1l6NVM5Z0pzc1M5NWhzN3VGMFdkclVnZjlK?=
 =?utf-8?B?eWdjTHN0akZNSlhqZkJLMnZuTnRBPT0=?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5288.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 875e9f36-7c32-4370-ec5b-08d9c14aec87
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2021 10:49:38.8457 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oEl6E3X6vqqcJefLNWuh7Jxyi7XCpo4fr5xtZOW2s2n7HcT70KP766y9CNch1YnIrjhOHnTglR5NJsplspoW/V/LoSttM7XfWJrjAX6Ei/o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3805
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] i40e: Disable
 hw-tc-offload feature on driver load.
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>, "Zulinski,
 NorbertX" <norbertx.zulinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>On 12/16/2021 4:31 AM, Mateusz Palczewski wrote:
>> After loading driver hw-tc-offload is enabled by default.
>> Change the behaviour of driver to disable hw-tc-offload by default as this
>> is the expected state. Additionaly since this impacts ntuple feature state
>> change the way of checking NETIF_F_HW_TC flag.
>
>Again, why are you doing this? What's wrong with having it enabled by 
>default? Does a user have to turn it on before programming rules after 
>your change? In order for the maintainers to be interested to apply your 
>patch, you have to explain why it benefits them/kernel/community.
>
>> Signed-off-by: Norbert Zulinski <norbertx.zulinski@intel.com>
>> Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
>> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
>
>Why are there three sign-offs? Did three people work on this patch? If 
>so, did they co-develop it? Three sign-offs in a row would be what's 
>done if you're just handling the patch from one user to another. And in 
>that case, then usually the first person listed would be also credited 
>with the patch upstream by being the From: and set as git author.
>
>
This patch was made as squash of two different ones as requested here:
https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20211213121248.4137-1-mateusz.palczewski@intel.com/
Since both of the authors of the patches agreed to it in internal review I believe that three signed-offs are correct here.
>> ---
>>   v3: Removed internal tags and fixed commit message
>>   v2: Squashed two commits into one
>> ---
>>   drivers/net/ethernet/intel/i40e/i40e_main.c | 5 ++++-
>>   1 file changed, 4 insertions(+), 1 deletion(-)
>> 
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
>> index 3fd3f10..fec4d51 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
>> @@ -12724,7 +12724,8 @@ static int i40e_set_features(struct net_device *netdev,
>>   	else
>>   		i40e_vlan_stripping_disable(vsi);
>>   
>> -	if (!(features & NETIF_F_HW_TC) && pf->num_cloud_filters) {
>> +	if (!(features & NETIF_F_HW_TC) &&
>> +	    (netdev->features & NETIF_F_HW_TC) && pf->num_cloud_filters) {
>>   		dev_err(&pf->pdev->dev,
>>   			"Offloaded tc filters active, can't turn hw_tc_offload off");
>>   		return -EINVAL;
>> @@ -13476,6 +13477,8 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
>>   	netdev->features |= hw_features | NETIF_F_HW_VLAN_CTAG_FILTER;
>>   	netdev->hw_enc_features |= NETIF_F_TSO_MANGLEID;
>>   
>> +	netdev->features &= ~NETIF_F_HW_TC;
>> +
>>   	if (vsi->type == I40E_VSI_MAIN) {
>>   		SET_NETDEV_DEV(netdev, &pf->pdev->dev);
>>   		ether_addr_copy(mac_addr, hw->mac.perm_addr);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
