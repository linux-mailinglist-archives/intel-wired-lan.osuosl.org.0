Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FFB6295D1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Nov 2022 11:29:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D21240356;
	Tue, 15 Nov 2022 10:29:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D21240356
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668508150;
	bh=wGbwgTG0bLdjK9jBIMlBk349H268Fjbn54kLe8Gd93I=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Jqwxp8jc1J/RhtYZkZPGHy17OpiukrkhBdTrMEDN0lrlN+z5ROt6Krso1+Aaox9bW
	 K0q9m9pmyAFryORzNXAgXpFtnp2YZe6VPPmfCOTL9ZPXcdEy0eKpuixhWbRuHAndT2
	 bpnFbmcdLbv2cKG3U2Cl4LNyzNG4vD/989KsxFDiv7hhooQNIoZykpUNDNdDp5QWdS
	 hdpCajuiRJ/bh0IX29Ix5HUwpbVZWxVSVTo+OKs4sFt+H8RLxGmpUdnOfd8U5WcuZn
	 Lpw4jAJdPQku4XdGCLp9S9e2khyGlsRGjMTaSAB23SPgVMwq+Q3Bc4UQdviMzJ1jjg
	 ao6WtPDyLl32w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9a8pzvvhSQgH; Tue, 15 Nov 2022 10:29:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B3AE4030B;
	Tue, 15 Nov 2022 10:29:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B3AE4030B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 713291BF844
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 10:29:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 580B781389
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 10:29:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 580B781389
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PES15uq8BE2n for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Nov 2022 10:29:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5561E80FA1
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5561E80FA1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 10:29:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="374352808"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="374352808"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2022 02:29:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="727902183"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="727902183"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Nov 2022 02:29:00 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 15 Nov 2022 02:28:59 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 15 Nov 2022 02:28:59 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 15 Nov 2022 02:28:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LvrMuzwKSBAHXL4u5oSEg+lg0QUw2cU0KpGI8bLslGjgi4xiLaUjQqtfRbhvjAf5GjiYK8+LN/CCMgC2JWVBzJUIbuIJVcT8h9xBvEKVCyN6PzbyVgKKCyeNNQ9/653kimT6IswPTVuhaoZtYB3WZjfBFXtQ+Jy41JxW4vP1Dd/C7rs72A9TV53WqGW322CNj30VYWOcwgXpnOD88MJq03cSXy4UcAAEU00KIay0c5Am8U+Anr7vxCM39DdDJQrp0w/eXZK2zlHYiLyBXFL2Fjo+LWMmy/qYgpHdNOpV+EoLAxxoj8usJQgrN+uwQBaIWdS9XU8M7Oj3nwJc5xEjjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5A8/vRhjMarwA13NDo4/pUjnyH6RB+ntfyhBucMXUYE=;
 b=ikBD1NJHHURWljKTV9iVWN9dDP5xLdzpNcsmnlEDX/bv/5qzZX/qiWs9Z5AOB80uCKckAGs5RKNTROh0Doo141iYu5mFGIpdjMz2CCzwhZnQycojszcTzjMBG159pJEh1dsji9Ddq+ientDUcXNFMtATr1bmX4xXZ8NsS63xbZznj5gdkl/CfSUJjIiGRkqhUl0jMavguHGDDjD7SVPXoGXAUINFfvSluS76Tw5gijw0a+ELJh19IbvN9/Vn8YwBc+1vNOGFJRmGTtPveclcRQT8QnPQe9wj7u8uHNdMSA0uwpPzrjdK/1nqA0+bqScVZ7VPvQyjuu3RSUds/VK9Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by LV2PR11MB6021.namprd11.prod.outlook.com (2603:10b6:408:17e::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Tue, 15 Nov
 2022 10:28:57 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::888:2df7:7c31:e1e5]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::888:2df7:7c31:e1e5%7]) with mapi id 15.20.5813.017; Tue, 15 Nov 2022
 10:28:57 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: fix handling of burst Tx
 timestamps
Thread-Index: AQHY8G6TK1nka9mkXUezVtQ7AD2gqK4/2R3w
Date: Tue, 15 Nov 2022 10:28:57 +0000
Message-ID: <BYAPR11MB336723FE9B58FF050EA003CEFC049@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221104165708.2570589-1-jacob.e.keller@intel.com>
In-Reply-To: <20221104165708.2570589-1-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|LV2PR11MB6021:EE_
x-ms-office365-filtering-correlation-id: 2da07aef-ab33-4de9-8601-08dac6f43416
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: paXntPm/4+jcgn6ci9+fskkOY6I/feiccnHnh4l6uHEWMR4tbMtd/0+zsRBzqHk0l3jBiRRkMTP3ICN16MUjst+fUD077w4hywKDlPp7mALfdqk67dMMHCwypx6xdOdtdg2FdCWYO219uD0V0tRRtB7+8Z5fW/CAG6ZPmQ8DmeyvyzlBWCdiP11ZklYNXM5tUKZQoqTihvul6EQhDncWHHTCBHrHV9f8kQ89j4GwgawAjvYEYriy4a5EpPkQnDYxMzT+WGFyQrVjopYg6UwGMwq/pIB7I9ndoeO9y0buJYU8d4MxWJamJSUQutCszHYZdYfRetDVnmXygv1xIKOlylLpOMmxiCIj6/zEH4vShVXnKaGI17ddamt11h7MkN60FMTfLcmb2hrzlAchOfAdfpm+8QbDf8U1Y1znC6k1I7syio1g1cMJNGvq0GbnsV3dOwUsl/+Tr9FSNE6ocTIDZSb4JF8bvfE/V+aFcZZfd+itNrxN+45gAIeRkP1SXVhe27rh5X9lFwXMonfhkxDksFPzKxSJDO+GW7kD8PuXK7ruujujmKiSmG+5a8giB03+2/I21iIPYJzuX4dosR3XdnS1Cd5CbEt/WvArVXHPpBAcGygg8Ie2R0E0/sdk0Da/8ziq/fibS0m0PvjYK3hUJxxZwP5Sed6zaRaUPPsNnaLBf5aOdnD/YdJtW4s1ngB1ROg4OuSmdynaFE+OOg/mIeFycbDXpvRmN3ujWQkOVyfGtjcsLtOrnI2Qhqyn+81w22SV51pSjPrPYIm8d7ZJ4A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(366004)(376002)(39860400002)(346002)(451199015)(41300700001)(86362001)(7696005)(9686003)(6506007)(5660300002)(107886003)(478600001)(53546011)(71200400001)(26005)(33656002)(52536014)(8936002)(110136005)(122000001)(82960400001)(38100700002)(316002)(4326008)(66946007)(38070700005)(186003)(66476007)(55016003)(83380400001)(64756008)(66556008)(76116006)(8676002)(66446008)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?27EgqeCmn4WF7wjlMUtsDKMERu3EJlPyF4K8L8td8RgTZOL8rw4roVvhfKG8?=
 =?us-ascii?Q?OLkVoqneSU7Kxy+fMBfzegKm0skgnRhwoJU98W9xR1zHwildih01sXHoEJWA?=
 =?us-ascii?Q?175LLaYHpo31D/lnA83eBBGjfB2lDykBcGhHtvG6PiAZVh7nW2E3782jzVok?=
 =?us-ascii?Q?kkc6g4mxTrt46d6b43ddLleXkLj9/2kSZ6hFlyvI57UHc/8eCtsh0pGlS9JM?=
 =?us-ascii?Q?XRCx8wZqULo5O1QQOJA2GtWME3/FnZdn8SI3KGDqaf38XdMc81wfzhMFmPHI?=
 =?us-ascii?Q?3F3ABCiX+eKcquy4srWo482mdzL5iHs99tUDZwNl9dTRX9fR7jKkOkbqk79/?=
 =?us-ascii?Q?XRLpe8oI1kia5CVpYo9L+DtwdLI+Inr5ZOiT4ZelRkM1jF428JnorxwJcgXc?=
 =?us-ascii?Q?f1lzUM2/ko11RfibA+5VhowwqB2h8NtOTuHOudX65ailsKul44e7jJbFfBLl?=
 =?us-ascii?Q?qsuOOc+L1oFVvvSmD2rEThNuPJQFVA4J4JQAy+Sy9EETKSo3yj7cT0vBy5Zr?=
 =?us-ascii?Q?7mIoRc3WO9cEu4BeUkoSfTEO+U11gaMxqrLgPPdqWsDvh59vDwRCGwDSzwjE?=
 =?us-ascii?Q?/qK20H88kJnmSkPIZ9lr/uiwFasqTc0Da84nHpr9z8mbZZ/wogiM0KpJFpSR?=
 =?us-ascii?Q?tIBQlQ/kpqYbBoMKvfXkKTssOIyGaJjaWTGxA8LiN0Tphn4tuJ8n6zj06wLa?=
 =?us-ascii?Q?RH/YIPDtzboZJPVrHm3mz5rvRiatStJW/XjDFXX65a0txln0GUkzYoQQacsH?=
 =?us-ascii?Q?3p/vXZp7gAoL85v1v/l9hO8k5jOflUzQ1snjzLeTXXpv1QWkIjn3arS99p+c?=
 =?us-ascii?Q?dWADkKTxYllXo2SxIr1bmkPJkZrAVyNsOBwtz/QND6nYTfW1QiGBCMY10/jV?=
 =?us-ascii?Q?4dPwNvkEw3xb0Edpohv3Oqdpf91ooNUNwmDlr5qBzF0UKQb8kYXW8QQk+H7x?=
 =?us-ascii?Q?WKEf/RSAvjQgX8JQQiyHlt1kC5Y98+qYf86jEtcKVFlqj+D1qmq5mzbEpCn4?=
 =?us-ascii?Q?UtN2K1CX+cUY3q/vw/Ip2dyNQqyH/qtH6M0n9lw4+gsIAd2o3bQaDs2qk+aB?=
 =?us-ascii?Q?GbLDCMWq/4v4uRuBOIapy9xoUgDaRNf1v73MxCfIXX1FqL9eVQmB0JMtzgOk?=
 =?us-ascii?Q?UXKmtPJtwm8YtNaBaR9mSt2Lkqg77/A4fGKV4loxAeUtqRvB8nNoVkVvnHxM?=
 =?us-ascii?Q?MsdNfwKGxXSA0uTXQsu/4SFKvUKXTPtIKrVALOWoZpSPeLqEt/R5RaX8rnYh?=
 =?us-ascii?Q?jNWfko1DkCpQGMEc2ZXJb5HTaMhf6Y8wEphxc3h1zqCuuJfXbx9/GN2VTVEx?=
 =?us-ascii?Q?qHFB3Vmlzz+861xnw+2vyv7usZWOoGoh2N10Iz54za2bYc83m+rQz9UDs4Yo?=
 =?us-ascii?Q?Nt8NDrfxagEg7Vru9/fM3ZAukFgXP1PCf09n6tc0fmqCS91lSTTm030RVffM?=
 =?us-ascii?Q?ahtsCwkxJMbQtkYeH1it0QamXZs9ylnQ5mVZ/qrHTofxk+jrImS+GeRB0wsz?=
 =?us-ascii?Q?pNWNhCN2wR/2qE+9mFRuKMcNlJFN50bRQv5Sibj6ABcSeNoUxeh1Lmg2qXl1?=
 =?us-ascii?Q?GbNcoqxlYahv+lL3JnvA2sl55MStqv/RFcmUFzER?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2da07aef-ab33-4de9-8601-08dac6f43416
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2022 10:28:57.4245 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gn3/2s/vvsZGLGlDaRWR2O0xI2dcdXe6LNxonc32AHUw58dsyV7ZNcwxPV0e6pHf1j0RzLQc6alla71TrOnIlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6021
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668508141; x=1700044141;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kzKy9eR4DuSg4J/J58TWxOnxjtRqB9afI6ORwiSMNQI=;
 b=aufIEBr+7C4axYK3/FpH1UJdA68psTSDMohvDJgCVLC4sD354yUDfIVF
 o5gTpkPhd1U9u75bkZWy+Qd3+Oqv4tIbnlAFjtbOkviP/pS8EanVGsCQy
 4CRQVVuSglU9rDJSZrmbuFfBC/xbOzK8qXht+V8qN4qhIA2FnGeVca0tv
 HzUsg1xSMI2AQIoSrt7lrFgZ6NdLYnaB8OYGpoNDZn7Quj+f73SxhdlXr
 apWQpjnDQuod2S7I71ngKc7Tq8E5DymT3919UvfrtOOt5uuejhck4s57r
 xH4D2z+dLHvfvFsV3e6WzC+9GaGcm4mcl55GcMeqxjXriiEfeakxWFX0r
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aufIEBr+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix handling of burst Tx
 timestamps
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
Cc: "D H, Siddaraju" <siddaraju.dh@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Friday, November 4, 2022 10:27 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Intel Wired LAN
> <intel-wired-lan@lists.osuosl.org>
> Cc: D H, Siddaraju <siddaraju.dh@intel.com>
> Subject: [Intel-wired-lan] [PATCH net] ice: fix handling of burst Tx
> timestamps
> 
> Commit 1229b33973c7 ("ice: Add low latency Tx timestamp read") refactored
> PTP timestamping logic to use a threaded IRQ instead of a separate kthread.
> 
> This implementation introduced ice_misc_intr_thread_fn and redefined the
> ice_ptp_process_ts function interface to return a value of whether or not
> the timestamp processing was complete.
> 
> ice_misc_intr_thread_fn would take the return value from
> ice_ptp_process_ts and convert it into either IRQ_HANDLED if there were no
> more timestamps to be processed, or IRQ_WAKE_THREAD if the thread
> should continue processing.
> 
> This is not correct, as the kernel does not re-schedule threaded IRQ functions
> automatically. IRQ_WAKE_THREAD can only be used by the main IRQ
> function.
> 
> This results in the ice_ptp_process_ts function (and in turn the
> ice_ptp_tx_tstamp function) from only being called exactly once per
> interrupt.
> 
> If an application sends a burst of Tx timestamps without waiting for a
> response, the interrupt will trigger for the first timestamp. However, later
> timestamps may not have arrived yet. This can result in dropped or discarded
> timestamps. Worse, on E822 hardware this results in the interrupt logic
> getting stuck such that no future interrupts will be triggered. The result is
> complete loss of Tx timestamp functionality.
> 
> Fix this by modifying the ice_misc_intr_thread_fn to perform its own polling
> of the ice_ptp_process_ts function. We sleep for a few microseconds
> between attempts to avoid wasting significant CPU time. The value was
> chosen to allow time for the Tx timestamps to complete without wasting so
> much time that we overrun application wait budgets in the worst case.
> 
> The ice_ptp_process_ts function also currently returns false in the event that
> the Tx tracker is not initialized. This would result in the threaded IRQ handler
> never exiting if it gets started while the tracker is not initialized.
> 
> Fix the function to appropriately return true when the tracker is not
> initialized.
> 
> Note that this will not reproduce with default ptp4l behavior, as the program
> always synchronously waits for a timestamp response before sending
> another timestamp request.
> 
> Reported-by: Siddaraju DH <siddaraju.dh@intel.com>
> Fixes: 1229b33973c7 ("ice: Add low latency Tx timestamp read")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> @Tony, this will likely conflict a bit with one of the patches in the 15 patch
> PTP series I sent to net-next. This should go first, and it pulls patch 09 out of
> that series.
> 
>  drivers/net/ethernet/intel/ice/ice_main.c | 14 +++++++-------
> drivers/net/ethernet/intel/ice/ice_ptp.c  | 20 ++++++++++----------
>  2 files changed, 17 insertions(+), 17 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
