Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D48281B368
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Dec 2023 11:20:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3923E40217;
	Thu, 21 Dec 2023 10:20:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3923E40217
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703154021;
	bh=X1VuA/mcckaBsrXoSUKcAhRxI2upTWyi080KOsMfaM8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TILi/KukNEP8mjikr5U6+n5vWiQSISo5P9ptm36xw6A6vYHrcy8blCEWNKqgL+3tY
	 bYCMtp1NBzfBtwdJfjSwr4UjuIAL3Vtb7VG3MAlBUd180ry78cmA2QIW45RHHdg2S1
	 fDSXLqUEKXWnTANoBBpNwE8XzYlNlKEA7VApktbBFmULb5oKv/kw9dqTN/rbsBpBBO
	 tox72oTThWxvqABkmMje6WfSWX8WcV5uKhyn4pXGmyhk6YOMqQekyO59NAHu7yqi6q
	 2ZrQsMWBvqcs5Rz5KWaZ9eq4zJynI4k81H+X4/EhcQ4nSyyvm219lBlB165Iqn2kEL
	 XinANUQnhNT1A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P1kkFk8prpR8; Thu, 21 Dec 2023 10:20:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 95687401AD;
	Thu, 21 Dec 2023 10:20:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 95687401AD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2780E1BF38B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 10:20:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F084040B5F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 10:20:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F084040B5F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3poZvGbws-ng for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Dec 2023 10:20:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 55F5C405E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 10:20:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 55F5C405E3
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="393122521"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="393122521"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 02:20:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="18301035"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Dec 2023 02:20:12 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Dec 2023 02:20:11 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Dec 2023 02:20:10 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 21 Dec 2023 02:20:10 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 21 Dec 2023 02:20:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bNYGVKim4gFg13gPKPjterRkJoUU61lCEQXwHsspmoM4SK3abu4hICI0HGdnEXIvlDe5LoYnIyXO19P8iUHvR6ZXb4xJyqosY/muWn2BCTosNCMnOCG0RIyV8IgIe4RFDovVMQ51tguo3RIrXWvBxQP1G2DkfauGAPTRO6q1omIXnf8j8AkRsxwpVqfd7PYoVcU/MWMrC345q6cm10sr3bJZBxejNYyyNjsLpnQJoAqkEWUlB00xmcjdmCyUv9NYinG53I47fXMQ8mVR0f/XPmMZaL4lBlNoxamJ2CdugY4wdcjDF2QRLVsq7Q7OC0WTf+WrTveAHJox44YSTSaiWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ePgKjVj6a59PvVn3ixwLsFnQxwXy6kyAO0IgdH94mHk=;
 b=djcJtUzhWWcrGvPo7FDNgqMCUKvpMhCM/Ap9ICz/YFyMYQR9DxCI7Rgybv82tQmwcWNt2VNhGMoueVZYfvJ4viL19vBuoFwPuEqfOFGwhjB7w+cFChjuoUlsrLVSSsDfkFbPMnfvB0gDg2cnv49QFNbtEVgnFJM4shkqAlzfFXJFokMepnGysnZMLtuUEHbo4lug4L/G2zw93wx/FRUhWLMSfzi1FdadcXyH4njoesUE48RJhw/FFvS1sitl2/fPR4qwx0871ByO1uk9B7efJKBQevK7h+KWcDytFufiNXGxcsWKXF4QHqMK1oPMqyg2PJn9RTAQmd/D8KxY/1y0TA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5819.namprd11.prod.outlook.com (2603:10b6:510:13b::9)
 by CH3PR11MB8413.namprd11.prod.outlook.com (2603:10b6:610:170::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.21; Thu, 21 Dec
 2023 10:20:08 +0000
Received: from PH7PR11MB5819.namprd11.prod.outlook.com
 ([fe80::8856:800f:b10:e0c9]) by PH7PR11MB5819.namprd11.prod.outlook.com
 ([fe80::8856:800f:b10:e0c9%5]) with mapi id 15.20.7091.034; Thu, 21 Dec 2023
 10:20:08 +0000
From: "Sokolowski, Jan" <jan.sokolowski@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH v4 iwl-next 5/6] ice: factor out ice_ptp_rebuild_owner()
Thread-Index: AQHaM/UVt5HtZMusBkGHtVokJ2H47LCzhpZw
Date: Thu, 21 Dec 2023 10:20:07 +0000
Message-ID: <PH7PR11MB58194ED84F05726358D2A06B9995A@PH7PR11MB5819.namprd11.prod.outlook.com>
References: <20231221100326.1030761-1-karol.kolacinski@intel.com>
 <20231221100326.1030761-6-karol.kolacinski@intel.com>
In-Reply-To: <20231221100326.1030761-6-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5819:EE_|CH3PR11MB8413:EE_
x-ms-office365-filtering-correlation-id: bf5e7fc0-eb53-4754-eaa3-08dc020e681d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: q6g5tVIN5iln6BCCetrKiVO+qIqe/VkJwZVU8BXnPywKH+87+szhtbTxek6K/2+vsW9WLay/wXJClhu1NylpRqUHZgRe1S9PB8Lxa+NKVdfZbA3Z4i528HlsNvm+FshsWIJtHwbl40dfVUnU+ZWNZK7Tzrd5LxxR+gGXYXPPNaU74rHVfvAQ8wBevXG56TrwN8bBhxee5WNkdSV4Idbu6ZQbkXdugMj93rvLkWG8C8RbrmuD0Fr5oRHMhyFF1OF4g6AxWG1P7/aC2cL1zkX5vsglyZd+gtUEcUI2FHKWJAV/A0kAblkkfdvtfPG6ft4b+6TtyETBN75EFnXTvLF5R7DaMG3itgO6sXnynl3zDEqW63TVXMs/Xb1+aKkyXyyu7jY3mLM+sExqzdyqsquTyJ3VCBF6cO4oJbMJA+lrh+9J6T3pGLBZIDhKt7viBZc3tf+5Xs1Hbe2Gvuidsybj4tOpdTsHOJ36IubWx4mIh0JN3TZNdLnwszyM0lG33Xy7OSfNKVPAxS11WtFthqedWkP4HF8wx0md86yzx8mUTp/4ESKb0x3g1HAUlPQ+4pye0uq4VxDURzGU3yBYSZNYRSYRt7vWUaX6FS5YKEZpI77faF0u6YRS5SEFZPCKGAkV
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5819.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(376002)(396003)(366004)(39860400002)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(5660300002)(2906002)(86362001)(122000001)(82960400001)(38100700002)(41300700001)(110136005)(66946007)(33656002)(76116006)(66556008)(64756008)(66446008)(66476007)(107886003)(54906003)(26005)(316002)(71200400001)(9686003)(6506007)(7696005)(55016003)(478600001)(52536014)(38070700009)(8936002)(8676002)(83380400001)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?03Y2jZJ+u7b6EGeu75+naxKe4iM44RXN02us5Sg4jwWlZmM2HCPGQNQ+QcV3?=
 =?us-ascii?Q?GdHxd4YTAL1ltsVVatrvuqbnrvrIfy0OqM9VLMq+Lchsub8AM9aMw1uVrRES?=
 =?us-ascii?Q?x4CHY4FLtEUEO9Lil685zL7llY7z6ftNZevL3wKno/RQlKJeQadDcrVobaMQ?=
 =?us-ascii?Q?ayVRs0O6IuGVAOxJLPPCEFGRdKTcNECC2KC5pypkt+e9fe+HGKUhI7WrpobJ?=
 =?us-ascii?Q?ZAq9ybynfFPAE5nVJX7BkgImIqPF7NMGIeSdhG1NMk/Xsso59ZbYJStKG5tJ?=
 =?us-ascii?Q?U/TJbe0wlXqI4KJqsQqbyPfBbMPS/4HSlNqZDovDLJbgTy5x7I5rsp1Rv0Sz?=
 =?us-ascii?Q?DW1Yh1HhGzOpGqw9rGzm49ag0vxppya5zWsDEyB5zj1q3pl7QfjceLlqF9D+?=
 =?us-ascii?Q?BnS5ujGLBfNRjIs1BDzmWZAS6Oykc2oVbT1OEbwadNff18UUbM4NUhSMAxD7?=
 =?us-ascii?Q?C9T5b8vUMe80yiD5nDrY6fcTT7MJ9E3Z4fssb96pf0OnkHdwx1Bk46jdo3X6?=
 =?us-ascii?Q?3NbOGod4h+aVFfsNJuv0GYs+Ko0v4YIH4OmG98OyhCCELnsLCdaI9LKOJZ8m?=
 =?us-ascii?Q?F5jODhauOSGtL/jO4bWSGYPnxhVPtoLl8bRourKQpVPxpThFNhFVi1N4GNk6?=
 =?us-ascii?Q?IjqrF+lMHLaIJ6mohLbdQcBvshjC8JfA8qj3FkqintgHigF01BJxwQcVGewk?=
 =?us-ascii?Q?zAh8+6U5vzLoWxFn2xqzxOyJJca0l/upNv/HAv1Abz+awb4Vo5u9NqrSBLES?=
 =?us-ascii?Q?UWcG5VzXp6yPdXLiH3IdgUPv+9mRpzImguH8itRlnrttnLqeqvDxSiB84Eg/?=
 =?us-ascii?Q?6Jw+S5iJxgsdtasnLFigF7Ir8PpFOWGhmySqjpgelOFJr1kFhvCSVP1+HeGM?=
 =?us-ascii?Q?VELRxcDVLOgy9HjQ48xgTsJhLb4k+RF38DEEhNDCScXwErKIcqDAtvvcXa11?=
 =?us-ascii?Q?e3dsTeu+86Yiv9uUYz4YmdAZQE/gcGID6fOyuLOzmTsQfBKuz66kmys5yiwk?=
 =?us-ascii?Q?ruW+WmmtD5Asylf3IfJxSaD+mKYaik/mEgNqWEDfGbkL1UWnaoAK9oDxZPQo?=
 =?us-ascii?Q?i2aCEPh7KS3L+jioi54rCkGSPhzMNxo/pS6sBHwpVXxoZJ95fivWM4lSzrma?=
 =?us-ascii?Q?dUEr5x08tsTd+gCDpT3JA6BnhCYAy0ITwWQ/iBAIx3LFIlDKV5kqwLIz9EFz?=
 =?us-ascii?Q?5vkcJjCvIvPdRV61MqE5N6s8otActkdQWolW5Fk7SE2FXqQPGdCKo71bUVx2?=
 =?us-ascii?Q?CdFRnOLzD7Om3nQmvoBFF7bIyWb9C0aHkbQb7RnppGFd9XioP2uAEXnHprLb?=
 =?us-ascii?Q?7DjVYgaTkXEfmCvMf2R9MQAbNUciHWpoyoY8fBJdM2vfFk09bGETUL1OT+RA?=
 =?us-ascii?Q?0j0lbCI4PtwYvAb85HUnaLp5wNgtme+tPdaASLRz+mj8AmwF2TI2z8gRTz/M?=
 =?us-ascii?Q?OozrHAIDGhoPn7aggOlPOk2w56PnPsUjjB1E5WCJIpvEV8MnUWVu7cz4kxSQ?=
 =?us-ascii?Q?nGWssxm3xgyKmGYEa/iNy1TeN+MHJLMW2rqI5GoSu6wSPdZ6Ers35o9pX52u?=
 =?us-ascii?Q?/bFc32ut+biJ5GyZgAb4OQTLb+JpwsHdmRq2qenh?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5819.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf5e7fc0-eb53-4754-eaa3-08dc020e681d
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2023 10:20:07.8913 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c48uCmnWQYgAnsVNbTY+swfYnXo2Tv4MWrmkgLgSuoXkBhuvwPM5Zqq5w9wBk+jOafEI0yC1DHnrDknPRuICacFAj3dORvS4Uwk2wLkiyJQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8413
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703154012; x=1734690012;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3gUsst29nYGlGvQADwEsmRJCWFdKQm6t6+YMNKIMCJc=;
 b=KzsWktwy0tOq1eSverPz6UM08LH0NHt6fq3eeHQsWmOT3AGpCUeWucgb
 5r/sU331G4mx4oJgz7Q/YwxPqLY+ixvLwdsSnQb0S7pHIP1i1gVJyjQsO
 hHONUbOMdtJ7iTgfEpzcS66HXQ5zbcF2+UC69dm0h3+ncH1W2FHQmBnCV
 puPzljzogHQkDBAOhLb1dPYlHOOcf9p2p5o2AOadvkcVAghaoHc59OJ4X
 nLIVFcA9yT8U7iieLSWFmEsv+u98on4XbDQ8yhJHQzE0gYyUlTMB1Iv64
 4IiFM1KtK1oqo4fHg2VqoVqdZjzdt5006+VB45++HupiwBWzVZ99TzwiT
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KzsWktwy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-next 5/6] ice: factor out
 ice_ptp_rebuild_owner()
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Jacob Keller <jacob.e.keller@intel.com>
>
>The ice_ptp_reset() function uses a goto to skip past clock owner
>operations if performing a PF reset or if the device is not the clock
>owner. This is a bit confusing. Factor this out into
>ice_ptp_rebuild_owner() instead.

To me at least, the wording of the title (Factor out) is kinda
confusing when compared to the message itself, as if you were going
to remove the ice_ptp_rebuild_owner anyway.

Other than that, LGTM.

>
>The ice_ptp_reset() function is called by ice_rebuild() to restore PTP
>functionality after a device reset. Follow the convention set by the
>ice_main.c file and rename this function to ice_ptp_rebuild(), in the
>same way that we have ice_prepare_for_reset() and
>ice_ptp_prepare_for_reset().
>
>Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
>Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_main.c |  2 +-
> drivers/net/ethernet/intel/ice/ice_ptp.c  | 66 ++++++++++++++---------
> drivers/net/ethernet/intel/ice/ice_ptp.h  |  5 +-
> 3 files changed, 44 insertions(+), 29 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>index a14e8734cc27..1fa3f40743f5 100644
>--- a/drivers/net/ethernet/intel/ice/ice_main.c
>+++ b/drivers/net/ethernet/intel/ice/ice_main.c
>@@ -7554,7 +7554,7 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
> 	 * fail.
> 	 */
> 	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
>-		ice_ptp_reset(pf, reset_type);
>+		ice_ptp_rebuild(pf, reset_type);
> 
> 	if (ice_is_feature_supported(pf, ICE_F_GNSS))
> 		ice_gnss_init(pf);
>diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
>index fe2d8389627b..8a589f853e96 100644
>--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
>+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
>@@ -2665,11 +2665,13 @@ void ice_ptp_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
> }
> 
> /**
>- * ice_ptp_reset - Initialize PTP hardware clock support after reset
>+ * ice_ptp_rebuild_owner - Initialize PTP clock owner after reset
>  * @pf: Board private structure
>- * @reset_type: the reset type being performed
>+ *
>+ * Companion function for ice_ptp_rebuild() which handles tasks that only the
>+ * PTP clock owner instance should perform.
>  */
>-void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
>+static int ice_ptp_rebuild_owner(struct ice_pf *pf)
> {
> 	struct ice_ptp *ptp = &pf->ptp;
> 	struct ice_hw *hw = &pf->hw;
>@@ -2677,34 +2679,21 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
> 	u64 time_diff;
> 	int err;
> 
>-	if (ptp->state != ICE_PTP_RESETTING) {
>-		if (ptp->state == ICE_PTP_READY) {
>-			ice_ptp_prepare_for_reset(pf, reset_type);
>-		} else {
>-			err = -EINVAL;
>-			dev_err(ice_pf_to_dev(pf), "PTP was not initialized\n");
>-			goto err;
>-		}
>-	}
>-
>-	if (reset_type == ICE_RESET_PFR || !ice_pf_src_tmr_owned(pf))
>-		goto pfr;
>-
> 	err = ice_ptp_init_phc(hw);
> 	if (err)
>-		goto err;
>+		return err;
> 
> 	/* Acquire the global hardware lock */
> 	if (!ice_ptp_lock(hw)) {
> 		err = -EBUSY;
>-		goto err;
>+		return err;
> 	}
> 
> 	/* Write the increment time value to PHY and LAN */
> 	err = ice_ptp_write_incval(hw, ice_base_incval(pf));
> 	if (err) {
> 		ice_ptp_unlock(hw);
>-		goto err;
>+		return err;
> 	}
> 
> 	/* Write the initial Time value to PHY and LAN using the cached PHC
>@@ -2720,7 +2709,7 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
> 	err = ice_ptp_write_init(pf, &ts);
> 	if (err) {
> 		ice_ptp_unlock(hw);
>-		goto err;
>+		return err;
> 	}
> 
> 	/* Release the global hardware lock */
>@@ -2729,11 +2718,41 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
> 	if (!ice_is_e810(hw)) {
> 		/* Enable quad interrupts */
> 		err = ice_ptp_cfg_phy_interrupt(pf, true, 1);
>+		if (err)
>+			return err;
>+
>+		ice_ptp_restart_all_phy(pf);
>+	}
>+
>+	return 0;
>+}
>+
>+/**
>+ * ice_ptp_rebuild - Initialize PTP hardware clock support after reset
>+ * @pf: Board private structure
>+ * @reset_type: the reset type being performed
>+ */
>+void ice_ptp_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
>+{
>+	struct ice_ptp *ptp = &pf->ptp;
>+	int err;
>+
>+	if (ptp->state != ICE_PTP_RESETTING) {
>+		if (ptp->state == ICE_PTP_READY) {
>+			ice_ptp_prepare_for_reset(pf, reset_type);
>+		} else {
>+			err = -EINVAL;
>+			dev_err(ice_pf_to_dev(pf), "PTP was not initialized\n");
>+			goto err;
>+		}
>+	}
>+
>+	if (ice_pf_src_tmr_owned(pf) && reset_type != ICE_RESET_PFR) {
>+		err = ice_ptp_rebuild_owner(pf);
> 		if (err)
> 			goto err;
> 	}
> 
>-pfr:
> 	/* Init Tx structures */
> 	if (ice_is_e810(&pf->hw)) {
> 		err = ice_ptp_init_tx_e810(pf, &ptp->port.tx);
>@@ -2748,11 +2767,6 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
> 
> 	ptp->state = ICE_PTP_READY;
> 
>-	/* Restart the PHY timestamping block */
>-	if (!test_bit(ICE_PFR_REQ, pf->state) &&
>-	    ice_pf_src_tmr_owned(pf))
>-		ice_ptp_restart_all_phy(pf);
>-
> 	/* Start periodic work going */
> 	kthread_queue_delayed_work(ptp->kworker, &ptp->work, 0);
> 
>diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
>index de79a86056e3..3af20025043a 100644
>--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
>+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
>@@ -316,6 +316,7 @@ enum ice_tx_tstamp_work ice_ptp_process_ts(struct ice_pf *pf);
> 
> u64 ice_ptp_get_rx_hwts(const union ice_32b_rx_flex_desc *rx_desc,
> 			const struct ice_pkt_ctx *pkt_ctx);
>+void ice_ptp_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type);
> void ice_ptp_prepare_for_reset(struct ice_pf *pf,
> 			       enum ice_reset_req reset_type);
> void ice_ptp_init(struct ice_pf *pf);
>@@ -357,8 +358,8 @@ ice_ptp_get_rx_hwts(const union ice_32b_rx_flex_desc *rx_desc,
> 	return 0;
> }
> 
>-static inline void ice_ptp_reset(struct ice_pf *pf,
>-				 enum ice_reset_req reset_type)
>+static inline void ice_ptp_rebuild(struct ice_pf *pf,
>+				   enum ice_reset_req reset_type)
> {
> }
> 
>-- 
>2.40.1
>
>
>

Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
