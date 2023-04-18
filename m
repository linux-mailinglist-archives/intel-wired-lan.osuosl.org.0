Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 824ED6E67D6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Apr 2023 17:13:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0614341E0B;
	Tue, 18 Apr 2023 15:13:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0614341E0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681830812;
	bh=r+EEMBXvnt61DloUeh14POEa5OAX1+wmIcDlR1Ucyhw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TFTw1TzrdrNu+iJ7a68xCXYVl0YP+BzwFj6qTeLNQO6CR03wV/b2V+haRgfYFyTXo
	 P+BtOGrqURLTuQS3LdAdPYoNM0ML/UUrs9mtx0kLu60LrEDt+6eN2RGhD07q4UV+ua
	 GbIWuNTwUvokj40FUDthE3zGLlmrfHufX/5WzDb4qiSrVmZAkStBOPlT7WncYWRWwD
	 1KC3yeG57QiMlhNz7r+pRIFx9pD7NSNskYvrfJoxLD93cJJxuzfvS8q0y7askS1MvZ
	 /ep5Wl0KyiD29C6KkJp/Fowy1LsbDUq708YqUkWhDJccDNSvp+i2oLEdYHVFrX63Ah
	 HvVWUMgTxydtA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MC1sK6I7D8_2; Tue, 18 Apr 2023 15:13:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E70E41DFB;
	Tue, 18 Apr 2023 15:13:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E70E41DFB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9A59D1BF3BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 04:16:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7EB8F82162
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 04:16:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7EB8F82162
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id inW6h29818wF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Apr 2023 04:16:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C866581F19
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C866581F19
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 04:16:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="325409534"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="325409534"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 21:16:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="780363485"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="780363485"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Apr 2023 21:16:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 17 Apr 2023 21:16:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 17 Apr 2023 21:16:37 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 17 Apr 2023 21:16:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TWsWqPuZpbhIQEGr8HQsP49WP8ynYoyPRdF7eIcw8O9h+l9ge6jCw9pnvEBWi+7dWA7DNWH9Uvk+iTNJGUhDh5yurLCsQWTGbHp7jTPDl99Viv+Z5QsONg7sTBIJ3fFOMnpJ3Jzt8Z0gIA2J1jI/qLrISN71rDkSrfoBii+hCRzh16zEHBq8sby8NCbndsaSySx/QLuuFH5YJt2mnB6vVdWdJrH86kJJZy9CyUgHhe4uACt55fK9oSf7oU3hez7jHpAB+Jta1QaELRO/nXLZq8gY9r6NX3jK5PQgUXv346jTTzcCEl4UrmpgGsySi4BX/18FQ57fM6Dp91UhgizUIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gzHc+AtOj68j5SRgh0TLDmhOEDsB5xFzJhExtgN/ugU=;
 b=oO9iuZSzVCq5H5f+wSkqsjwjSCgCRL3tqcMpvmrVSQF9NicRbc/Sp4CZiCEXS21aVKDsZSgKIq+SxPWi7fOorR8k6GqKtFKlBdb0SUxu4fMhY9AEbhlN5/URB4Hp5u/PuCB8nEcdXsu2pDgMDjbjYVWDsh2mHlPFKwY4o0SYjom1J7FxGTBxL9eznQfxyi/czyNtqUxkvW462ItKatYgj4RQAjSOGqMYyeyxiyha0BvYQBTuWkSCUeLQd3HDht3VjOiQa9L2UzZORoqtPKJXZfVSPDijITKbSAG0IEgFVp9FuUHYxnWprooBvxxYDEZFTPTcgp/wIUubaIXGIiHkPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 by SJ2PR11MB7502.namprd11.prod.outlook.com (2603:10b6:a03:4d3::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Tue, 18 Apr
 2023 04:16:00 +0000
Received: from PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::1c4e:86ae:810d:1fee]) by PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::1c4e:86ae:810d:1fee%2]) with mapi id 15.20.6298.045; Tue, 18 Apr 2023
 04:16:00 +0000
From: "Song, Yoong Siang" <yoong.siang.song@intel.com>
To: "Brouer, Jesper" <brouer@redhat.com>, "bpf@vger.kernel.org"
 <bpf@vger.kernel.org>, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Thread-Topic: [xdp-hints] [PATCH bpf-next V1 3/5] igc: add XDP hints kfuncs
 for RX timestamp
Thread-Index: AQHZcTz2BbWXLatjdkK2Zh0AJYDmgK8wdUYQ
Date: Tue, 18 Apr 2023 04:16:00 +0000
Message-ID: <PH0PR11MB5830F70FAC28BDBDE63AF01DD89D9@PH0PR11MB5830.namprd11.prod.outlook.com>
References: <168174338054.593471.8312147519616671551.stgit@firesoul>
 <168174343801.593471.10686331901576935015.stgit@firesoul>
In-Reply-To: <168174343801.593471.10686331901576935015.stgit@firesoul>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5830:EE_|SJ2PR11MB7502:EE_
x-ms-office365-filtering-correlation-id: e1b18f11-ac86-4a24-0f02-08db3fc39dbe
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hsEkWRPuL75h+ehy7w3j/pv4fO+NoHry3isODx6SSPcxzQ2M0cazmE2QKd8whONgfKu8ju1LK8kVCUe3dw0CO9wWgsc1PJEjUf9WAkt053nUDoYkjL1ajka+kFbxzXPz9oVPoRYx+9Srb+yvwDausb6M1Dx25uqHEWLsGIPNMrMcGx8w8LGdHq2DCF9PqvWisNvMnEGBGwclhsoZpGwo6WFXjy+4Kuz1SrfEnZozaPa2Wjm01HnnRlk/SCCbVL+7kd1jLP/HPKcjm+ob7LWW57oLaCF1G9ajWAx+PGEoY5/HB2/BVArmaUbiA1zXgHk7q8uDe+XaVNRjKBqWvPi6Ge8IzhxRUNthEJTLyCNu4DX6eX4GG2AAJq0iDD3NWXXJjGkodW5rIUZpglQVsjRiM4BkxKHu48OjpuPpTuso1qlrJw5bklrE+NtIk+4F6JA61jH/d60Nkd3L/hjH2Y6eDK+cADug4hOT6zpBeUm9R8R23k1iM9FLD6BMDhYFuTX2n6pNfywKWw02qILJ9F4Li/VUpwH0WqNy3yhC/SCYC9ADtPj0sbo34zco1lC2pQ318WVQLVjs/BR+SMuVCYBqW/ACuNrM03syROpSQ014ImXHdUKm4HQ860tPQu/XhfOy
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5830.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(346002)(396003)(39860400002)(366004)(451199021)(2906002)(38070700005)(8936002)(8676002)(41300700001)(82960400001)(122000001)(52536014)(7416002)(38100700002)(5660300002)(33656002)(86362001)(55016003)(478600001)(54906003)(110136005)(55236004)(9686003)(6506007)(26005)(71200400001)(186003)(7696005)(53546011)(76116006)(4326008)(83380400001)(316002)(66946007)(66556008)(66476007)(66446008)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q21GOStjaWgrMkRQZUwyeldkSFJ6VW4zRGJVeFpGMFhlRVRnTmtLbTR5MkY5?=
 =?utf-8?B?Mk9EdG1Vcy94dTBDMG0yUFJualJkTXJobkFQUnAwTWd0TmYrc3Z4ZHhtNVVK?=
 =?utf-8?B?NG5JZFdjWVh0aThtMlNiTEtkbXE4Y1lpRVM4aCtFM2N6Z3VlOWZnazVPNXcz?=
 =?utf-8?B?bUdmbXBWUFVhNzFPRE8vVmN0YlRXUkFxK29iQ2V2MEtuUzZFNGNHKzNpbjRp?=
 =?utf-8?B?RmVnOVV5U01ReGtKY1VSZU5pQi9jYjF5NjBWalIrT3grS3R0RDhHblNrVnBK?=
 =?utf-8?B?Z1hxWTJBK1M4L2IxU1FEMEZZT2RZNm9VWGRJRm1DZ0ZFU011dnlFV1pkWTZB?=
 =?utf-8?B?S25zRmNMNkNCUmwxVTc5NUYrYXI3dWl1SGR4ZFo0MmdONjduQzRzbTNRanls?=
 =?utf-8?B?NU9reTBCaWhWNXR0T3p1VWZPYTF5a1dUQU9qVk5vQ2YzKzJkbnNDUXhHM1Zh?=
 =?utf-8?B?d2ZjdStSSU1tbjA2VzVrb1p3ejVBdm1jQlZHS2hjQ3hjbWxOMWtueGY2akto?=
 =?utf-8?B?ZUpvRFNzMWVSQ2tscVBKcmRsVkNMMTJKUHZQMFRkOWhaNUNrNWRTNkxnS1BO?=
 =?utf-8?B?dUNBQ0RGUTVzOFFoK0RPWW5pbTJSUWFGY3NYNDZXT1BFT0t0UzF4K2lhZHhh?=
 =?utf-8?B?d3I2Vm02aEFIUGQzWERMS3BnbitiMHFVaUFOMHZoTmpSK0h2YU1Bd1NhbllZ?=
 =?utf-8?B?c2lySUpPd1VJajNDeXJlRGZKUGNqOHZDNGx5VXhhSUs0YnluZndFdHozRVJv?=
 =?utf-8?B?bHkwVm9QSnlIL3lSUjJXd0FHTVF6TFl0ZnNSUCtvaW9ZMnl2TnpQMk12SnhP?=
 =?utf-8?B?OUNCdDFuV1ZuYUF0UXROc05FQmNYQ01GUlRkR0VRTWdNMU1ScUwyOVpnNW03?=
 =?utf-8?B?cENqUXYzNTRhMWN6NFBIZ3dpUTEzelgwa1hGWjN0aDdxYmlmZ2RYek1XSlJ6?=
 =?utf-8?B?T2hDSEovK2NTNVAzeXJSNzN0blVlVERaTERRcTQyeVAycHIxTVlnWS9jVE9O?=
 =?utf-8?B?aTNBdTdCanlaeStGZ1hDaFdiQWZLUmtXaWVheWhDdGIrT2w4cXVzT1Jadyty?=
 =?utf-8?B?bXVVb0ZyMGljdlltQzRwMWN1akFFeXNLMGw2ZWx3QzNMTDlncE5lZVlQSTFV?=
 =?utf-8?B?QTh1YkVHNjhXZ1EvTWg3dHduQzdDenhKdHAxeFp1UnAzOWo5bHprMHNhU1k4?=
 =?utf-8?B?VkdwUFhLT1hUbkY0NTdzYXpmaHptcVhIZ0VUbS9RS25raHJhVE40VjYwdzdw?=
 =?utf-8?B?Y0dsUTNQc3REUHhUdWJ0Z2luS2tEb1EvZDhueEpDZlJIK2dGV0FOZ1AzcHEz?=
 =?utf-8?B?aWF3cVZtZjFUN3JKQzlvQzhKenRNREhmTU1Vc1JJOUFHNHZQOEk5MEcrazhV?=
 =?utf-8?B?d0ZIRUZ6anJDNkw2NDNQMUJMNjJNMlFNSFFWNkMyUXZrV0h0cmttRFNIZm1x?=
 =?utf-8?B?ZEVQQmhraXJ4em1YU09qVFdSQ2d4aWVEYzJRZWJYVHh4dVo1R2o5N0lweTZ6?=
 =?utf-8?B?NDNHWGM5V0tER0NWcWNyMWZYUzROOGRMeWlUUUU0b25xaGtjUG9KWEpVV0RN?=
 =?utf-8?B?RG1xTEtheEZua3ZZNUUweWVEdFNsbE94c1RsKzVNaVlmV0JnTEMxSzR0RzhB?=
 =?utf-8?B?WTR0eGdmMS9pLytjckIvSEJGQ2xoblZKcFpvcWJKb2VBOW9Yd20zSkQvdHZa?=
 =?utf-8?B?WW9rTE1jOEo2WE8vRi9wWmgrRCsySDJkZG9pQ0JtT3pPY1lMZDdDOGMrcFQy?=
 =?utf-8?B?cXdzVnhVNXVrRXA4ZFdadVBVbU5Pbmtqek0wTDkrUUN4NTZ5OEg4SkZVSjFT?=
 =?utf-8?B?UGN5VnRDN05MTG5iQnJwR0dRNmxBRlNhNGVCVlo4cjNFaHJWMml2ZmZIbFBy?=
 =?utf-8?B?NGliNWFwby9aNEQ3SndEMlVGWnR0NGo5VEF3Y01ORHRyTFJCWEVqc3FlYnRs?=
 =?utf-8?B?NkVzNis5eTA5QW91Q2pmMC82UWpWRHFNVW9CWnJtWDdmQW9NT0EvL1JOcFRU?=
 =?utf-8?B?YWlXMHc4RkVpSW5OMDJXVUYzUm1uSlV5cjZzTHdsSlJUdDE3NmV5MlpOMXRr?=
 =?utf-8?B?bXJRT3dHMEdWUkJCSVh3MUFMOUtsVHI4VGNjYTB6U0NxdHRCSE9CUWFBcEsr?=
 =?utf-8?B?Nks4T244K0hPRmVWTTR1WFVtcW5jY3BwcnpRSVFWcFNpZ1lUM1ROTmhyOGU1?=
 =?utf-8?B?bUE9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5830.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1b18f11-ac86-4a24-0f02-08db3fc39dbe
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2023 04:16:00.0580 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1xDqYfbmjX4vt5uRkXVaPPt8BVevIbnWbq86xIXNdDMBjVrBJKdU1zcLRCOiFNlZh4skXZwrcVevBd9N1bL1ZkOsw332CGv89G/jaJo/vPg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7502
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Tue, 18 Apr 2023 15:13:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681791399; x=1713327399;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gzHc+AtOj68j5SRgh0TLDmhOEDsB5xFzJhExtgN/ugU=;
 b=dbInT048cJ1PFyVfLcb4JNUlRiG37c6m/PoHlOyXse7d4G6PBmbQjCqt
 1iGe+KzQwVF/CtcBH70zyrMNMYXWwZ39LMj08TCCyHWNjF6HqcTVfRcMi
 R8n7gTNJrLgl8jt4stAPtFT2n37/+UShvWCtmcs5Pa7Yb6O+oIaOuNwnJ
 b8oRdP4qTjDdrI2kldXhFDuGS0NTg9HqAVrnwbgnXQ+8BMNxEX1uh8qwV
 6dnetcwLWH559gRp5dxMovbYUGLJFBA/nSpXqYqsDs5q0cxh277eqHPyw
 SD1hoJVpqJlYuEq9xYGl1ePIsA2brqbjXZDCnvbW0K8C3M4ubgm+C8Hmv
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dbInT048
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [xdp-hints] [PATCH bpf-next V1 3/5] igc: add
 XDP hints kfuncs for RX timestamp
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
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Brouer,
 Jesper" <brouer@redhat.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "hawk@kernel.org" <hawk@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Monday, April 17, 2023 10:57 PM, Jesper Dangaard Brouer <brouer@redhat.com> wrote:
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
>index c609a2e648f8..18d4af934d8c 100644
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
>index 3a844cf5be3f..862768d5d134 100644
>--- a/drivers/net/ethernet/intel/igc/igc_main.c
>+++ b/drivers/net/ethernet/intel/igc/igc_main.c
>@@ -2552,6 +2552,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
> 		if (igc_test_staterr(rx_desc, IGC_RXDADV_STAT_TSIP)) {
> 			timestamp = igc_ptp_rx_pktstamp(q_vector->adapter,
> 							pktbuf);
>+			ctx.rx_ts = timestamp;
> 			pkt_offset = IGC_TS_HDR_LEN;
> 			size -= IGC_TS_HDR_LEN;
> 		}
>@@ -2740,6 +2741,7 @@ static int igc_clean_rx_irq_zc(struct igc_q_vector *q_vector, const int budget)
> 		if (igc_test_staterr(desc, IGC_RXDADV_STAT_TSIP)) {
> 			timestamp = igc_ptp_rx_pktstamp(q_vector->adapter,
> 							bi->xdp->data);
>+			ctx->rx_ts = timestamp;
>
> 			bi->xdp->data += IGC_TS_HDR_LEN;
>
>@@ -6492,6 +6494,23 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg)
> 	return value;
> }
>
>+static int igc_xdp_rx_timestamp(const struct xdp_md *_ctx, u64 *timestamp) {
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

Since igc_xdp_metadata_ops is used in igc_main.c only, suggest to make it static.

Thanks & Regards
Siang

>+	.xmo_rx_timestamp		= igc_xdp_rx_timestamp,
>+};
>+
> /**
>  * igc_probe - Device Initialization Routine
>  * @pdev: PCI device information struct
>@@ -6565,6 +6584,7 @@ static int igc_probe(struct pci_dev *pdev,
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
