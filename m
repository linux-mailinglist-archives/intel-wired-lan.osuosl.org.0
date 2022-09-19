Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1545A5BD2C3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Sep 2022 18:58:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 02C4541747;
	Mon, 19 Sep 2022 16:58:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 02C4541747
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663606720;
	bh=DRKJ+1hzbSdtaTPNs4EebBfb7nGYteSDvzLAUwyYiPw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0TWjqUPiuK8DF4SoWqdtC/clwAp7pLa/muR+sgS5QlfwDQejERHuOZJSBS7HClzQ5
	 EZlFXvl1xANsCjtmf1c96YnJAdRyrlRKMNsQZy7lfFIy++L3lpHvT70ix+50hCjDOq
	 Dy7tgT0U8QsOQFRCuvuo/yikUIy5b5HJdqHtBq+eDvZewXbbgHb4jgW6VmxC1kNV/c
	 gf4cp5WS23XvZRCp8XrOTRxLCuPQVh66+rFBBWaNsKXzekmhPTql+NfNzGuIChRwCS
	 Qq2m+LK9nydkfPA+b6TS2wNgPE/GMwsxrOukywz4hn8oXyWtPVSZh6acbluYIINtzK
	 FQKgIb25CWdyg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rlsOyInV_BJ2; Mon, 19 Sep 2022 16:58:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 921724179A;
	Mon, 19 Sep 2022 16:58:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 921724179A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 129881BF35D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Sep 2022 16:58:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DE0E2416DD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Sep 2022 16:58:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DE0E2416DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lFy0h0n3-aY2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Sep 2022 16:58:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6965E4162C
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6965E4162C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Sep 2022 16:58:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="361194981"
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; d="scan'208";a="361194981"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 09:58:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; d="scan'208";a="649225177"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 19 Sep 2022 09:58:30 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 19 Sep 2022 09:58:30 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 19 Sep 2022 09:58:29 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 19 Sep 2022 09:58:29 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 19 Sep 2022 09:58:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TxIUephHOFLfpPTO//I1xZMp/+OMKSHZlcHsvcft6ABZfiLJ7m06jKciYeMvAVgA2sLrQMd37iVOumaNoE30VDf+SxXosupd0nDjI7Yc/lPnP50t08eVx8QMWnCQF6lXUq6MKVfyQxWymA7atIWWdA0JJl4UTTW4Gr/yPzKxxKrpPan5twK1Kc7e7/K42WG7bQfaLlr9cppcRrSc8KYjv36JdwQxQZ/r/4OZvHiXGlI9trqWWQB9d9205NcPyrgGBiQz5nD9zr435yftOob/svcXzvfvAggyIBub3TMbwz4XBaf8VnExboHa6CPfCCGha5bk7jXLu07htTC2cTnFpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jEqE7qHZRCeBb0/kmA2NC4FoE/rNhBCzo64KhE6oq58=;
 b=c9Jhe+t4+dOhp7FTnWB2o50T9NJ96q+3LUbS1cRmSmb1zI0VsQzXET+X7FYqY/eaZd/SBvSjkWhIRShsjdFGJ//uwMeHEnKZg+vhaaUOz7Ve0WgkXmdxZs0kWL3RXwXoX/ZKqujEzzPylv4Jc9kZw3ap53xaE9Hbn945gSgZFjiCWUErmawKftYYvY3Rcid7lVOBDf5DgnpFSqLVVwANq8ADJ4G12wl/UAKKSL8ZojjAC50NwzIUjrDLXqXz+6ebbe8i/1tR2T5W2gMsysAV4Y0WbCJOvwlkqzI2gVVeNJ/u5mXrUzNkJ05C9g5uQUWG5Vg01rVXopWoLRd+bK2qFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5800.namprd11.prod.outlook.com (2603:10b6:303:186::21)
 by DM8PR11MB5575.namprd11.prod.outlook.com (2603:10b6:8:38::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21; Mon, 19 Sep
 2022 16:58:28 +0000
Received: from MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::701d:181c:bed7:5696]) by MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::701d:181c:bed7:5696%3]) with mapi id 15.20.5632.015; Mon, 19 Sep 2022
 16:58:27 +0000
From: "Kolacinski, Karol" <karol.kolacinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 1/2] ice: Add GPIO pin support
 for E823 products
Thread-Index: AQHYyc5N4S5HiK/skkK4em/Xn0BQE63iRuwAgAS277A=
Date: Mon, 19 Sep 2022 16:58:27 +0000
Message-ID: <MW4PR11MB5800CC286B3FB60F9483AABE864D9@MW4PR11MB5800.namprd11.prod.outlook.com>
References: <20220916131440.566617-1-karol.kolacinski@intel.com>
 <ba4d5bb2-9579-9bc1-cd54-b931e022b3d6@intel.com>
In-Reply-To: <ba4d5bb2-9579-9bc1-cd54-b931e022b3d6@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: pl-PL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5800:EE_|DM8PR11MB5575:EE_
x-ms-office365-filtering-correlation-id: 9f38c134-720c-445b-19e8-08da9a602c6b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /yiRmVx3YpTK7fzc+fHu8AtW1h1xfnK1kL9LgDaM+okmWYxHghmluGccFHS5Q3nJNAvZnkeOBFDQs/6mm4EdDvwej21H4WAmdB4bbN5Q1F+QTmIkCROuT7oDW5sWchdevE1ynlud800wpeJ9DvuJi4yW/Hfq+kf4FJf8lbCYQkZ7PnAOob73fbdRKFKzqN/+L0DPkVpHUzcXC3nYiugq0pJ1Z0OwD3g7lylNjFeupVHOVn0xwsAzupqdywn1H5se7w+Ke6J1mI0sYRvGj9v9S4GseX7QOPEU4dqzeqDNTD4r7FMDsG6wEzA4JmbdbuyWU9VVc/P3qyTJXFWInAInLLcme3ax4H5/8Ug1PeIvfBMjmxlV9xzc98xd6nzNwzt8FIF9wsMoxhJrvLtns56ZLcm2ptSFBFy/tq7/3Gv8GCuSS0U9ndutJhJN0xrlzsPndKMb4gjt1mLUBE7ZcZoZ3HbUEKyVqO0YbE7zgtVg6WCTSoqtiXgcOw70gHTyFrSn6wxQoJ0iBqB6dQrPKjGAkZnepqKHlNmx5KcWiwGs6K7+jm+ww0VxNLIHBhxJb8NgA9CawUQP5iwhCAr8t4qUVa5jEJA4oisNhaRYT8XEdJsCM+kVy8qe97XGrseg5p25TYefvUEmyYjfDOOC9sOdasNsZB4oLDgmTi0InNzEDze3nfERzZ6mVzm9Q9CQKiH3JRaftmtB23QkWk4Tl6CPwJpyJVI9dcBFUmTagNNuUGd4mCxcabzj96YFv1hBkAdzyfHoBb/ndwgjBFxHcK4fbA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5800.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(396003)(136003)(376002)(39860400002)(451199015)(38100700002)(558084003)(7696005)(6506007)(316002)(82960400001)(41300700001)(110136005)(122000001)(8936002)(38070700005)(55016003)(26005)(8676002)(33656002)(9686003)(86362001)(186003)(66946007)(66556008)(66476007)(66446008)(64756008)(2906002)(76116006)(5660300002)(478600001)(71200400001)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L2toT3NmK2Q4MXo1cDMrTFZqamdndWxxYVNabDFFa0U4TzdDOE45RU1mSVcy?=
 =?utf-8?B?VUFSQVI5TmkvNlFjQ0kxWFRuMjJLZ2Y2T2dzSUZxaXp0eUxUUHFKdFc0c1pU?=
 =?utf-8?B?Sy8wZWtxTFFXQkxabUdiWWpFQnlDdXFDdHBZakFKaVNoWjFadWhTKzVNQ0lT?=
 =?utf-8?B?Sjh6ZVlnb0xuYzdwc0JydlVYVVE0cDlqUzdCSElNWWJZcjdycTFuUWpidHBy?=
 =?utf-8?B?TEFkdGdLeEtRNVROSU5JYVA3a3dNbFd4RVVPWWphU09ldjFjQkhFRUVDRm1O?=
 =?utf-8?B?N1AxZTJXOUl3VlR3aG04ZEI2UE4vV3VPTUFzU2lySXBwL0xOTXV1VkliNmJy?=
 =?utf-8?B?NHJpVFYwU1BDdzhjYlJUc1hVaVVEd01yQ1dnRjJqc3YvTGQ3WnBlR1hYd3BO?=
 =?utf-8?B?YldPS1lFT2dzNHlDZEJDQ1VROVNNc3R6SWtvdkd3elhPQm94TjRkNWVuL2R4?=
 =?utf-8?B?aVV1d2ZBaDJFUTVCNUY4ejdCdGxhOThGUmQ4SWh2N0pxcFQ0alBmMGc1OU44?=
 =?utf-8?B?NkNlVlVKbXcwV2dSY3RDbmFVc0tjSmpkME9nWHVCQm5NQTZjZitKTjc3UVlF?=
 =?utf-8?B?anc1U1FOZWpsUFozOE1za1dLRXU3VW9YVXUvckV5RDBIVDRmeG45T2JJSU1S?=
 =?utf-8?B?ZWNscGpHMnhScFFXSnhqQnJRc2tlTmdKZFY5OXZMd3k2NGhNUHA1SDJGdUF6?=
 =?utf-8?B?Y3ErTlAxeEJtQlIyVTFMWEZjbEUrcTl6VEtFWUdlU0YrcFRabFlTVGxyam1W?=
 =?utf-8?B?MmJCUkp2VlNnU1ZrVHlIU24wVU1qUDVxZ0N1a1NlNWM5U0N3TDBvRnNKcHR1?=
 =?utf-8?B?VXRRb2FhWThuTU15S2ZLc3JVak5lU091cEhacVo3bWpycjl5OGFtdmtrZkYx?=
 =?utf-8?B?NDZrdjZFcWhHL3hFU2tWaWUxYzMrVElkbklKSHBxaVd5OWo3NmZrSVAydUdQ?=
 =?utf-8?B?RFRYMWRGYlI3eFY1OVJuN1FrL1BTc2NlVlJkK2tVSFV6MmVpYS9CbHFscWxz?=
 =?utf-8?B?SlBhTmVHMTRqWDJXb1hjdzAxRXpleVNUT0RodXJGQVdObWNuZmxTLzdXS290?=
 =?utf-8?B?aUh0cVNWZ244eWNWRlpwVGtnbnovbW9CTW1heVRvdExoMHlOa1dQbHAydHVL?=
 =?utf-8?B?bVBJT05qcWw4TDAzazMvUzQ4MzN1TStvMnp6WmxTS3ZnbDNvQmdmS290M3ln?=
 =?utf-8?B?U1JUbFlFcG9sNFp0NkZkN29KUWJQdDA5ZmJXRDE0WGlOOXN5WG9ySlRVQm5u?=
 =?utf-8?B?a2RYVFlMcFJHUy94UVppY1Y5RnVSeVJ3eENNY2xQbE9LVHNqTDNGMUFZREc0?=
 =?utf-8?B?MlpXVW53ZVhHTFFSUkVEMzIvMHIrMXYzY0N6K2N5a0JaZWFtYjRIbU51MVVQ?=
 =?utf-8?B?VktoLzVEMU1BWEdsWHBVVmJtM21ROW90b3dYcWdHdFB2dktKc21ES0hRcmJ1?=
 =?utf-8?B?TEhpRWZNRXV4NkdLbzFra0JhZHRhUHZKNThWZGFsem1GMzV0b0Vqby9zZkRS?=
 =?utf-8?B?bm1seUgzeDZ4ZWc0QUluMWhFMnpCMGQybU9VTDVPODdFak1mZEVreFAwenp2?=
 =?utf-8?B?MHppMVo5RTlHWHBHcC9QTUlBRjlzdHM4VWpLbkMrWmVGQUxlQXl6clZzY2xB?=
 =?utf-8?B?emtqcXBBa3ByMTQxcDNBbFdSL2Z3c1dxT2R6UVpFTEszUFFlV0J3U0VSZ0Zs?=
 =?utf-8?B?MkcveGdPNGhwZEE0YkJIZmQxcnNoenJLTVpxVFRXMmVqWWtjcjlNWks2UHV4?=
 =?utf-8?B?d2NpUXZZd2Y5QlppYm0wYnlPaVJocFF5cG1QeTQwU1lWKzltWTNaSW1aajZR?=
 =?utf-8?B?UWxSNS81UU42ZjdQNFJaZGVaUE00bWN4bVVtZ2RGV3R2TnVXVjlJM3hkRDdC?=
 =?utf-8?B?Rkg5Mmp0elNJVTJRYVhDTzloeUNOSkk0c2dKeWJFZS9HSi96SlNpNm0vUEhP?=
 =?utf-8?B?ZVhITTB6d1R3YWFybnRaN0UxUXhPU0NiNERlVllDTzZvdnBGb0dIdlcyak5F?=
 =?utf-8?B?eUo2KzUxYjhtQVFMT1ZrT1VWaXRBekJUeUZHaU55TDN5VnM5VTZQMXBZTWVH?=
 =?utf-8?B?QlFFOUp2MTkzcHZ0dzFiN3dQdXp1WjROc2NvRVIvZnk0U3cvMU9wc2VYeDZF?=
 =?utf-8?Q?z7H0KUyFpJeknTT+yDuvzBgDR?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5800.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f38c134-720c-445b-19e8-08da9a602c6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2022 16:58:27.8632 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: INATqOVwE7FBDIlpuZGeKeUMF6nBDlIB1UCnErZSKY7CSj8YO3F40p5I9KtYkdGnaXqLHwQMfydrdlF3k4zUx1bW7rXfO4ETyj58ICTzb8c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5575
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663606711; x=1695142711;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=jEqE7qHZRCeBb0/kmA2NC4FoE/rNhBCzo64KhE6oq58=;
 b=ZLf3UxeIBJO+dsjNoQ2pI8uZNvYYV0KWZZwN0VNuw6iTa9G80Em1FFPR
 55XTDRoB9vPJCYyMlsrIapdcnCWTI1WFYL7NAqQftytO/pOYFFn2rjx4A
 TaEDkO1YK/14wZG8SvJQ9Mmv/kPDYA8g7wJdx6K+i352lGoNpt6bLAG8q
 tg7AWhXoryLkR3Sa8yzQEQDso+vtArb0uUW+AF1XeSBORenIGn5Zn1cw/
 JkXaFhP/LM+SZbJVtaDOYEH1VFQSPcQwL/YE9jXLpEga0+8V+L8Jwinr7
 d1qcsme50UVrKCfm/4fqGdC3Y/zRCbApApO7aqhb8mC4hfb8ZvZjQ4Vu5
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZLf3UxeI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] ice: Add GPIO pin
 support for E823 products
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

Hi Tony,

> Is this different than this patch [1] which is already applied?
The patch is the same. I submitted the second one in a series with this one by mistake.

Thanks,
Karol
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
