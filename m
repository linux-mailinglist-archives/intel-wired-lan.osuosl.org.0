Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD84405E2D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Sep 2021 22:44:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2011F40445;
	Thu,  9 Sep 2021 20:44:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7lReqaLNroDR; Thu,  9 Sep 2021 20:44:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3DE40404A2;
	Thu,  9 Sep 2021 20:44:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 902AD1BF341
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 20:44:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7E9F6605EC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 20:44:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jjEflcAur1JF for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Sep 2021 20:44:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C9C1460B2E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 20:44:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="220954361"
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; d="scan'208";a="220954361"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 13:44:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; d="scan'208";a="548748808"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 09 Sep 2021 13:44:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 9 Sep 2021 13:44:12 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 9 Sep 2021 13:44:12 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 9 Sep 2021 13:44:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OZjyx8rU/ypt66NhF+MLn0FYKORMhCDKw+LNhiEWfE/FatFHon+b7+q7WOesd3NhAmeOp0SYzxB4IVltqVe31V+JIUqpSzvz8wf3Y3DRJEt3acNRqVzOUiPfF4d6+QmFKQQjCVLjk6s13C7YIY0tWQGAXAa5XDC9+uvlFiilOkgGv4dKW2d4RonW8yqd777TA+38A7wZfgJpkxO2Sj7tGzMGrPpcmkkXab+hVT2dRpp7BV8asEiivdECPWEV5/Jg436lG4wBA9HR6Oy/zqel+gf1rgrjBnyUnr+K1dLNJ10RZspYKjd1SP2EN1YFp02gMsqlB7lJHhIazJUFy69L7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=+I0TeOfb4Ke/ZVPF59WGTcvbqbO8wQTfBIO7SoC5KEw=;
 b=igNepdUJVIJmHhqDG2aOfspttkv/QPkmQKiORjXEfPs0xGe/Uko99FSnuQ4LF8NWA3jKE4blccZaEpss6Hr4Ble5+8b0Ss2RnP4eBEQXbdXDTWl9pOibRJ4cjDJ9GaRZJRfip+qqfRqGQQ4rd+yzlf4Urncd41OcZ1cdXKIbosgPOx7VYESVzNPDP/XrwSVrJ2F7QZy8x0HLR+UBS+uNKCxRTieV473HO+y2Kkn/3Jjv5k0MniUBCZQhKr/H3rEHsg9rA0qPFil6CQTzQkGDA+Oj4ThPf/oZLiFHHhmJmFQIcPce1Q2tuG9an5C5ocavuYxPtXr/tiMOXYHEawwjdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+I0TeOfb4Ke/ZVPF59WGTcvbqbO8wQTfBIO7SoC5KEw=;
 b=v3jNkjoHRuSHZW+jQ86NasbxG/1qC7OWDWAbNbg4R6ZFLh36NrA8vylM8N4lh+wiBpDKTiC/bLmNh0LWzroGhV8opALxwyX3CNQQzl6Hu7KyEp9t30FMiXUjCSpFnw0Kio1DyEIUdbJ5HU3negyEQS2ZMGOy88/Wk6WxwXZ0jok=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4857.namprd11.prod.outlook.com (2603:10b6:806:fa::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14; Thu, 9 Sep
 2021 20:44:11 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4%3]) with mapi id 15.20.4500.016; Thu, 9 Sep 2021
 20:44:11 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] iavf: Fix refreshing iavf
 adapter stats on ethtool request
Thread-Index: AQHXo+ehgLupxC12kEu1H0fNm+PkSaucMCyA
Date: Thu, 9 Sep 2021 20:44:11 +0000
Message-ID: <dc541e9e41734773c8f79200e180c6dd99eeebc8.camel@intel.com>
References: <20210907125343.258489-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20210907125343.258489-1-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9bc7973b-6f49-4b45-a0f5-08d973d2942c
x-ms-traffictypediagnostic: SA2PR11MB4857:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB4857585DC4AC5DBEFBC291AFC6D59@SA2PR11MB4857.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6Qru8eJsg4wlcoQsHaetv8wdzvR2Sfx6c44zRNgkTw3+9/Nlzm+N1QZPR9t0jOWTXMOwXAkr07DOYgiMcQYBMPjSITGuKEJv7Qgev/7NdABBb4Qn19QzLpjFWYoLAq+D/STY0kS6j0PpYtErEAIu+Pyln728YpZen/30dqYJliIps8UjCxu6aGSxrLDKXlcE18tQZcgv6fGctU7OOO3rM9qTNfx/6emx+tx4B6MvDi1z4+G2vPoWNPiVyqMJp4tY6yCMD3nnIPHCExU5mW1EhH6+QqNc2X6Fiqv89aaXsgV10IRAgmE2KnWa69vjK6Tijmm6TjxRFsskaJ4XenMyLM28mPUDWcAg4v4pTlBS9kSZ86yWcqJ2qVEumD50Q3m5ebRrrCXP3BM4zRHJ8M07X+dligoumy4zD25z6XjFdB3e23HxJE9M8Y4KDbGhLbmEe/N6qiiOTnB0w90d6v2ESYn4YiCcaTYHNWro0/FdJ53SsO/5iHz2rxQF4r0Jr6Z3ANIGEKkbp468V5KU1BIbwQrVjI8SrjuOgPkRz+ClU2f2G8Tw4W7FAaBbYK+EEm4Yf4BpYGiX/Q/3ZI/LwDVo3gMJdy5cKQpnwf3VGFMpPzLpbuxt29haqboysY5Z3fExE2w9zrY1M2pqF4avA5MJCSCXpWUxFWGnEPPIYa/9xGC5RmRbwGDkKGABlxRnYU9KsFf9RAgBwxET3oZ0ab6Jaw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(396003)(39860400002)(376002)(346002)(136003)(26005)(2616005)(66476007)(66946007)(91956017)(5660300002)(76116006)(66556008)(186003)(83380400001)(38070700005)(8936002)(86362001)(8676002)(2906002)(64756008)(6506007)(110136005)(66446008)(38100700002)(122000001)(36756003)(6486002)(4744005)(71200400001)(6512007)(316002)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TzNTMkFlL2JYamFQTnZLR0hpbEZUeGtVV1dGcjhOZ2xKSVViTnUzcTdVd2RZ?=
 =?utf-8?B?MCtTOUJ6WkdNY2o1eUc4b0Z1MDJLd29QRC9EVmxibEpCNjhhak5meHMzTzlM?=
 =?utf-8?B?a3JoZCsvbHZ0ZW9xOG1SNU91c1k4WDBOZUFDaTUwQWVYVUgzUS9IeFhOY2pS?=
 =?utf-8?B?Yld1SmpiUUx5YmJUUnZFU0RxcUo1cnVlcVNoWFZrRmVicHpTWjJwODg2RGdl?=
 =?utf-8?B?MGx6Nnp6alVXQlhzb3g3YkdDdkw3aE8za2lwQUpoVDlJSEkzV3FNWWpmelc5?=
 =?utf-8?B?ay9CeHQwb1J1YVFNTWd5ZFg2ak8rdThKZ2FpT0pDdGh0cEtLS3R3TTdEcTRQ?=
 =?utf-8?B?cWRUNDlhby9KWjlHcm9oOXN1Y2hZY3VPRFE2T29GdGw4WmV1NzNReW1YOUFI?=
 =?utf-8?B?V2pJOHpobXY1L0M2WVF3Ukl2VnpDUlVnNGZVcDMzYkV2enhKaHV5TE41TWJl?=
 =?utf-8?B?bjdsWW1mYnNnM1Npb3JKSG9nRW5FMk1jWUU4NXhieEtPREhpMk1Rc3FHVllV?=
 =?utf-8?B?ZEo3MTl1Y24wNWs1bW90VWJxMnltd2E0VDBadjV4NEZpWWpoZGNHSnMwNG5X?=
 =?utf-8?B?OTFTZHRCekdNbU1zNEFrekwyd2hjeW1SbXhONktxQTBDcDMweG92V3VzREtl?=
 =?utf-8?B?TFlNanFDOHVKU2tTazlIckRHaXNoVGNvQk05Yk9LZmZyOWNBcXFxRU84enZR?=
 =?utf-8?B?Y1R5dG1nMlgyTXdhZXpVVmlHTnZJRUVmY2puUzEzdXJOT0R3WXNzUWNRTkN1?=
 =?utf-8?B?bElZR25jeTc2OTFyQmJTYmlKUFl6QlUvWE5vWTFrVWxNZ1BGUWsxa0VGWUFl?=
 =?utf-8?B?QnZ1Y09FYXpnR2x1RDVuSHl1ZEhjZ0llRE1sN1R1bmFHZnV2RGI0WXpMK29k?=
 =?utf-8?B?ZEt6cG9sdkRKODMzWE5IUHBTM1F6ODBCcE44NGcxUzR1eHY1U1h5bGpGUENL?=
 =?utf-8?B?cXJ6NVkwc01DR09WV3BaNHA5a0lXbU1TbXBIbGMvUDM4ZW5jWnNKaGNYU1k4?=
 =?utf-8?B?NnlQYitLT1VsN0dOS29uUE1aMGdMektsbFpET3AzQkc5dk9xRnF0a1pVb25I?=
 =?utf-8?B?ZUxVMVFiejlzRGozOHdpL0FYaWQ2OERKOExlSWxSc3FvdlVoMEF1b0d3VVJi?=
 =?utf-8?B?VGd4b1ZTckttRkVPYjlodHJTaFNPNTQ4OUtmY1NtOTlmMGEyQ1QyWEJ1VDM5?=
 =?utf-8?B?clREMmlYeUdIUnU4V2RPeXBrUmlna1E4TXlHTkJpVW5uQzNRa3ZTUkhoaW51?=
 =?utf-8?B?R2NCTmlaeWlZbWlHTkQvRzJybDBwUU1BNWM4L1JYQWI0cTVMM01sV2VZS2lz?=
 =?utf-8?B?cnIyMk91c1hmL2N6R0xPM2hERlY1TFVlRW83TkZEVkk3YlhOK3lJZlNsNDhD?=
 =?utf-8?B?ZURGV204TGM4dWZOOUkzRnJkajZSSGhJQlRjc3JmMlIzRG5EcHVXR2xPU3NK?=
 =?utf-8?B?TXJtcy9PNElOem1Nc2V6T3daV1NNTGd1aUZJdjhMUzNvQk40VG9xQnRUS2I3?=
 =?utf-8?B?UHpycVY1ZktSSkhzNjhpMWtJNHdmUmJndUxjQWF2RU9mNVVJZGZXRHFhU0xR?=
 =?utf-8?B?Y2hmdllobFVDL2pYOVVTSUFUbndGbnFiWHMremJVR3ZLWFY3cytMWXE1U3o0?=
 =?utf-8?B?UUtWbXRLNUZzSGU4emFyMWZmQ0t6STZ2WjEvMkx2aDg3R05yTUczeVRPdlNv?=
 =?utf-8?B?WTNHUnpYSlZCZG5wN2kyTlFiQ04rV2YrNkVJS3ZSWVhpTDNYcUtkOGJPT210?=
 =?utf-8?B?WjkyZENCbk9jamNzQW1JTUlOVWZCekhxdWxqS2hzSHVhbS90VmpMOTRaR29o?=
 =?utf-8?B?ZG16cldzSmlSR3lSSzhOdz09?=
Content-ID: <A9AC346DB897634FB42080CB6EBC326F@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bc7973b-6f49-4b45-a0f5-08d973d2942c
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2021 20:44:11.4495 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YOU5dE+jW12roVUc2k2VzHfQR5InqY4Mn1te3KGhgYZG2mZv153f5ztsplCX/2mGJS9EC3yevCEJJBGtQlBGWC9sOcrvQr2EknwEVziU7d0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4857
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: Fix refreshing iavf
 adapter stats on ethtool request
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

On Tue, 2021-09-07 at 12:53 +0000, Jedrzej Jagielski wrote:
> Currently iavf adapter statistics are refreshed only in a
> watchdog task, triggered approximately every two seconds,
> which causes some ethtool requests to return outdated values.
> 
> Add explicit statistics refresh when requested by ethtool -S.

I responded to the v1 on accident, please see the comments on that one.

> Fixes: b476b0030e61 ("iavf: Move commands processing to the separate
> function")
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---

As was mentioned by Paul on a previous patch, please include a
changelog.

>  drivers/net/ethernet/intel/iavf/iavf.h         |  2 ++
>  drivers/net/ethernet/intel/iavf/iavf_ethtool.c |  3 +++
>  drivers/net/ethernet/intel/iavf/iavf_main.c    | 18
> ++++++++++++++++++
>  3 files changed, 23 insertions(+)
> 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
