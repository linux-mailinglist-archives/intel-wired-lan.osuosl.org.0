Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A77A7FE8B0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Nov 2023 06:30:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1164261B31;
	Thu, 30 Nov 2023 05:30:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1164261B31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701322236;
	bh=u74Neg5LkW3kZOkxzp1tz9yZPVjOPWLvkWhZKRBRFCs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6AEJEV7Ih2YBpXrP6jKechL8my45njG0xkYyMCkwc8YrBzJwJ9XfyY9ESTVkQvcCe
	 21HD/4IjU8KtCUMubcG4mdwap+rRmSe6Jl3Oyvfwkz7WPy8qJOq+SRd6iR3idqZq8e
	 KqGPiYQm4766B8X9WWrLdydwl+f2i2S1M0zaPobkLWZTUL1n+Fb4U1LKxgGk8eFY+s
	 +UzB5qgjXm4DrtRQDNJQqgJHENwXB2NKMPI8tApUjkvcYgWYGgXuDNH4B1z0Zv2e16
	 xnEBLoCBAlfGMmuuAqdE8arZSln2dWEL7T8RlDbqB4hpMod2nTfAy4aIMP3G8Wpb7G
	 GbZDnr3dLCMgg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OsD5_79YSVju; Thu, 30 Nov 2023 05:30:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 82BF861B25;
	Thu, 30 Nov 2023 05:30:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 82BF861B25
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 38A4F1BF2BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 05:30:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0F4EF81750
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 05:30:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0F4EF81750
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sjpW8NrO0hbn for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Nov 2023 05:30:27 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 30 Nov 2023 05:30:27 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B456C80E38
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B456C80E38
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 05:30:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="150400"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; 
   d="scan'208";a="150400"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 21:23:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="719005203"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="719005203"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2023 21:23:19 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 29 Nov 2023 21:23:18 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 29 Nov 2023 21:23:18 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 29 Nov 2023 21:23:18 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 29 Nov 2023 21:23:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bpPWwbXm1M2S5k+QsiOJwMuxJaqLg1DkF2MRW58AMygVRWBzPXtZQlkp2euz49jxaWsjYZMmB5Xuzjbha0td21d7/k72TGIFdJXuv9ZehE/lcYcyet/5RxIBORPdTs8K5ZgOA+0vm/0AQvR9LpVotY4DxNXin2CBIzE3ledkF9OgAft9N04mM1oYJvJKlalHT2E3xYVkJwQiQFI/nV0B/kwLLjENZXB3c+EiDdpx7XTXaVVrCqojC4Kt1+pYN40Vl53zBTmV55LrXV0Alh5YsSGg4FZOt1RZCq38GKRZ6rlmF3YcK4mu89HeLLv8M81c+anBEAp11Otibqy5LpL1+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=stGqdecBfNOF6BUsrPGkhmTixsCd+XGcSuSTIAQpRWQ=;
 b=I4qbRCkk5qEcNY3luMtltKdzBIp6IlYG5/PuwtA1WuS8awAm6m7Ns5B/vnQgnK7xJEOlLfZCN4FBMBeTK8PKxcXtGTIl213D//y0k2Q56zQi5pKKB5mRVNAnWWxYSXKAMb9EdZztD+c1Uvj5yTjele/1MaV5K+GlZGOZ4ph0YEiQI+8A3ydg0YnOh67BEbTo92NXnDnyIhM+2p6L66TQnbMhRRshSlQucLQ0+DktADpElMzppQDc5eHmb3nykojpBFRJch4XDOOR311Gqi/Afs5fy/GfdBpzG5wEEeyEdDprdcsQ69dw6N6IsPC3MRkJqQqbaGvwaPKJehIfl1ilcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by DS7PR11MB6198.namprd11.prod.outlook.com (2603:10b6:8:9a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.22; Thu, 30 Nov
 2023 05:23:15 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7046.023; Thu, 30 Nov 2023
 05:23:15 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: ivecera <ivecera@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v5 5/5] i40e: Remove VEB recursion
Thread-Index: AQHaHueeYIjUk5zw+kqX9mb8HYsqs7CSWzSQ
Date: Thu, 30 Nov 2023 05:23:15 +0000
Message-ID: <BL0PR11MB3122061EBEEFBAD2726230FDBD82A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231124150343.81520-1-ivecera@redhat.com>
 <20231124150343.81520-6-ivecera@redhat.com>
In-Reply-To: <20231124150343.81520-6-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|DS7PR11MB6198:EE_
x-ms-office365-filtering-correlation-id: c2eeea9a-e538-4df3-1fb2-08dbf1647495
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8mvOxoFk5oX6IcN1MvlQbkFuNiyJTl62EPzYFsmnBZfYZ2y193ldfMDeCk4j+wRQ+LfzONRy11MmTA5CIH2REgLQQAZ7HdIY8kQWMbY5Kmy7H6SxkTOIlDTZk/xsnG3kV+HoiGrmviQFC2HFe4KD+N+AFDYvMSucNaHHAEFzkizs4zlGRD0BbqJ01s+BJ7Z6lV4Yb6dKbLtRXyXC1P4ZQE3AruCw8L3hfsICFSCZoutO4UhxYtTcpKpf8U8mjOD42Gh85XkARoCvDPTwFMlzZkldNATiZ93KMbHx4ereFKd8eURyLV2JBfiF3bCkWOfpYRt6FLLiNKDQ07XLtgThV8wUcvpt144Zuq9Ft2SJPlmQkidiB/OkswHoOALTYl1SExu4UoTiSsswZ+OfV+z07bi40x6o22QKYlEQlUInWs21oL8FQl9c/qcBuNFH+9M4jWYdXKetiOs6/9cL01D71tthYMJsO89Vuf8wIQWj+1ekEkeA0cHjsjyDRHZ8/EhmlstKjGtW2JPjeQSNOO9rrEAWJYiHSVTUIo0pSCOiAPqnPzkwQ2C+u+KTUX/sv1Tf8ixCGWYLsNhRkxibBkmTXAMjIpZ1a+V1t5VL/tOzO2QR5r994jKzXh1cWdgGJZx/iZuO8c4HYMVBUgyAUH1F8zkRZen/UI6zVRay51uF3b0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(39860400002)(396003)(366004)(376002)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(478600001)(71200400001)(9686003)(26005)(53546011)(2906002)(5660300002)(41300700001)(83380400001)(7696005)(110136005)(8676002)(8936002)(66946007)(52536014)(66446008)(66476007)(66556008)(6506007)(76116006)(54906003)(316002)(64756008)(4326008)(82960400001)(122000001)(86362001)(33656002)(38100700002)(202311291699003)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bvOkU+0eZ5e5QVb49Mong/fxEwON3ESHdoH8VB0ylxZUVVSZ68lO/wC4gjn9?=
 =?us-ascii?Q?NB73cDn2OR5twj1ZTyhvYqoTYPm48exjoX5YNilxJ3I32pfW8YF+o9p4lak8?=
 =?us-ascii?Q?792soSbNVdWrZ+6KOuQc+CpzoGoFBgMMuo+uDerO6dgIt4mHMqojxRUyCeLW?=
 =?us-ascii?Q?r9qeX7Tg5gIkCTcKSpOCknf/zcHhEET4mXiEJvtOPEFsrj+MAtpyJ+t5lp1D?=
 =?us-ascii?Q?t77fMOkhWEOjbNahs/EZFBBq4ybsJ8xhUKrO7keVYwuo2l6lhP6iAc/rFskn?=
 =?us-ascii?Q?tLF198RE9VGF03RujcmpsztZXMWpiLdjfOzZOn6r0F7UcDbRD3Tr3Ci9NZ0a?=
 =?us-ascii?Q?jxKJSqgHhCwJ/hIeu8GwHmtB3wWjNFIIG9RWiVbshl7KYe4f1F09AMHtmEfW?=
 =?us-ascii?Q?2NhNdTD3HypoGsJsx2Qq8ExjOea+yV+ZSKO3WBbYEZcGYVTmfi/Jo/P8LeNy?=
 =?us-ascii?Q?dAvMuFtglOSPHyOWKg0E+4tgKPn6oibR02GOT4lagptkEKEdgQn6jaunrPZV?=
 =?us-ascii?Q?4cPu2sB6AWTf9R2FNTuRetBysMJpKY9qMVAeaOoiEHp9+dp4Zw0aOXZNhJgQ?=
 =?us-ascii?Q?/htTrvdWxMJMLgZQDYW+BMcOVQKjLlwwAW4TbajejHDHKW+18wGo0UnrEI4h?=
 =?us-ascii?Q?Sxua4cLfM9NvTMJMkLMfN9UEy1Qs3Dlliji8kqP3dkYdaWE1Y0beXnCcIkX3?=
 =?us-ascii?Q?n3Yg5LSKYLe0qPltdaLDI/UaHI4UE+rhf6WJEPXnDVzaUEj7oTAq0ZETSLEE?=
 =?us-ascii?Q?HPzwS2HPK3BJExrdPkIBRQzvfykALhcDk3k7mwWVfh8s9qQxN0yXzhiIvMlZ?=
 =?us-ascii?Q?gg8J6VuEEFj8dmYRpUiGspM2TcLM9GPZGEZgWF6bMrrfWebs5IoyHTnGl6PJ?=
 =?us-ascii?Q?tCQwJhu6dbaGjku+NnhKIrLYlBjiYuHqplzq0Wd2WiAm+ds6LKqGwaKMIAxe?=
 =?us-ascii?Q?hHGpYAagRRKm15QPgLNmxrha83wT80EG8vMQTtXupNOI5YbfuQ/tK92E1s3k?=
 =?us-ascii?Q?sWMcQ57B9o83fPPz4BXvkpFZ1FUFdUuSIVGZPe2xUB0pjI4aeXeYNtUmXTKk?=
 =?us-ascii?Q?yUIjEtnzBt/DS/Ywt2X+GdafD2hVOWQgOY1SWOL+crd5512XzSzGpzuLo8XZ?=
 =?us-ascii?Q?rxiFJVG29m4lC6Ko9mGTCifzieGisPBGJUWVaXQVCUO5FGfMVPmjj3LQNbHZ?=
 =?us-ascii?Q?y+SO9KdALbK1t48RHtgjeDsW12YOWA+oMXcnA9O/eX+BZEzsn1sXjoznjuvo?=
 =?us-ascii?Q?3cyed7c9cLQP5MiHckujMtzAqt+/K8r6psbVBLbahhUjdWOUh61L6RWOf7QY?=
 =?us-ascii?Q?hbT1zO59B9RvWx2HaGiIQoD1ha1WdV0eO18G6hx0T2fVI/7mSrqyRQEX+YNL?=
 =?us-ascii?Q?g6ex/xVhuYwlkjQB/WHjm8bMBQQkI91TAwD2O3a1tBdn/M/8oaR+s72NiPIe?=
 =?us-ascii?Q?8jY/7RQNi/HnscN4XlQ3P5bzWnqAZmP5UAl074Ah2cIveuHNzy3QkeYvmkBL?=
 =?us-ascii?Q?S2KfbCpUcXwgZm8rpsS1ntMsTP06lnRzi9Og0eLxnRS7lrgRhGDuLBgoO3B3?=
 =?us-ascii?Q?RB0PEqcHANop4XY+/3vFP8KS5nJ7WHWHSedsoBT7kp0I1GJ4w7XrxQ2CuAoi?=
 =?us-ascii?Q?zQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2eeea9a-e538-4df3-1fb2-08dbf1647495
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2023 05:23:15.7789 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RoILynrAifCc3LuIsd+6rMwfXDuWIfdp6JuLDdiOGF2xLe0tLMhC2PIhKvv+DC2YMr4QAevckt3DYDcH4RNCq1gGavtwDbRknvnRBZwPKEqbtKWUA2jzln+mZe6lpSEo
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6198
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701322227; x=1732858227;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wUYJTCkm2QPlFTcDa6v+bpn8h2oDeM+EtZ5XhgqU8TM=;
 b=cXriXOzM6eyJOnPKpf6gCaXx+T1EK/vCfGbExz7k5T3GCX9g0s/wD8pX
 H1W5R2UFqWPcGidollR60GXhwcPWj3hhOn/ODMxQFm3Eng59HbagyWBHW
 M3+mgcgaxxuWLJ4kvVo6iixxwIWtFRv05NMqSmydCnrw/dcpZ16Zw+cNe
 opYBQ+VVtaoqIjjM9FT3u9uZ3pBNKbt4AcnmN4zVUT/esBLPgUEcGEjNx
 P2A4B1ipIuBrekICctS0KsHXROyLzt0szK3+T6NshZe6RfDsSfqu5XdI2
 haAUUhCu4/k3zRyvQlqjBGKF032Z95Wy6sk5ym4gDfUKPEIXwJQJa6zPT
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cXriXOzM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 5/5] i40e: Remove VEB recursion
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ivan Vecera
> Sent: Friday, November 24, 2023 8:34 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; netdev@vger.kernel.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>; linux-kernel@vger.kernel.org; Eric Dumazet <edumazet@google.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Simon Horman <horms@kernel.org>; Keller, Jacob E <jacob.e.keller@intel.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S . Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH v5 5/5] i40e: Remove VEB recursion
>
> The VEB (virtual embedded switch) as a switch element can be
> connected according datasheet though its uplink to:
> - Physical port
> - Port Virtualizer (not used directly by i40e driver but can
>   be present in MFP mode where the physical port is shared
>   between PFs)
> - No uplink (aka floating VEB)
>
> But VEB uplink cannot be connected to another VEB and any attempt
> to do so results in:
>
> "i40e 0000:02:00.0: couldn't add VEB, err -EIO aq_err I40E_AQ_RC_ENOENT"
>
> that indicates "the uplink SEID does not point to valid element".
>
> Remove this logic from the driver code this way:
>
> 1) For debugfs only allow to build floating VEB (uplink_seid == 0)
>    or main VEB (uplink_seid == mac_seid)
> 2) Do not recurse in i40e_veb_link_event() as no VEB cannot have
>    sub-VEBs
> 3) Ditto for i40e_veb_rebuild() + simplify the function as we know
>    that the VEB for rebuild can be only the main LAN VEB or some
>    of the floating VEBs
> 4) In i40e_rebuild() there is no need to check veb->uplink_seid
>    as the possible ones are 0 and MAC SEID
> 5) In i40e_vsi_release() do not take into account VEBs whose
>    uplink is another VEB as this is not possible
> 6) Remove veb_idx field from i40e_veb as a VEB cannot have
>    sub-VEBs
>
> Tested using i40e debugfs interface:
> 1) Initial state
> [root@cnb-03 net-next]# CMD="/sys/kernel/debug/i40e/0000:02:00.0/command"
> [root@cnb-03 net-next]# echo dump switch > $CMD
> [root@cnb-03 net-next]# dmesg -c
> [   98.440641] i40e 0000:02:00.0: header: 3 reported 3 total
> [   98.446053] i40e 0000:02:00.0: type=19 seid=392 uplink=160 downlink=16
> [   98.452593] i40e 0000:02:00.0: type=17 seid=160 uplink=2 downlink=0
> [   98.458856] i40e 0000:02:00.0: type=19 seid=390 uplink=160 downlink=16
>
> 2) Add floating VEB
> [root@cnb-03 net-next]# echo add relay > $CMD
> [root@cnb-03 net-next]# dmesg -c
> [  122.745630] i40e 0000:02:00.0: added relay 162
> [root@cnb-03 net-next]# echo dump switch > $CMD
> [root@cnb-03 net-next]# dmesg -c
> [  136.650049] i40e 0000:02:00.0: header: 4 reported 4 total
> [  136.655466] i40e 0000:02:00.0: type=19 seid=392 uplink=160 downlink=16
> [  136.661994] i40e 0000:02:00.0: type=17 seid=160 uplink=2 downlink=0
> [  136.668264] i40e 0000:02:00.0: type=19 seid=390 uplink=160 downlink=16
> [  136.674787] i40e 0000:02:00.0: type=17 seid=162 uplink=0 downlink=0
>
> 3) Add VMDQ2 VSI to this new VEB
> [root@cnb-03 net-next]# dmesg -c
> [  168.351763] i40e 0000:02:00.0: added VSI 394 to relay 162
> [  168.374652] enp2s0f0np0v0: NIC Link is Up, 40 Gbps Full Duplex, Flow Control: None
> [root@cnb-03 net-next]# echo dump switch > $CMD
> [root@cnb-03 net-next]# dmesg -c
> [  195.683204] i40e 0000:02:00.0: header: 5 reported 5 total
> [  195.688611] i40e 0000:02:00.0: type=19 seid=394 uplink=162 downlink=16
> [  195.695143] i40e 0000:02:00.0: type=17 seid=162 uplink=0 downlink=0
> [  195.701410] i40e 0000:02:00.0: type=19 seid=392 uplink=160 downlink=16
> [  195.707935] i40e 0000:02:00.0: type=17 seid=160 uplink=2 downlink=0
> [  195.714201] i40e 0000:02:00.0: type=19 seid=390 uplink=160 downlink=16
>
> 4) Try to delete the VEB
> [root@cnb-03 net-next]# echo del relay 162 > $CMD
> [root@cnb-03 net-next]# dmesg -c
> [  239.260901] i40e 0000:02:00.0: deleting relay 162
> [  239.265621] i40e 0000:02:00.0: can't remove VEB 162 with 1 VSIs left
>
> 5) Do PF reset and check switch status after rebuild
> [root@cnb-03 net-next]# echo pfr > $CMD
> [root@cnb-03 net-next]# echo dump switch > $CMD
> [root@cnb-03 net-next]# dmesg -c
> ...
> [  272.333655] i40e 0000:02:00.0: header: 5 reported 5 total
> [  272.339066] i40e 0000:02:00.0: type=19 seid=394 uplink=162 downlink=16
> [  272.345599] i40e 0000:02:00.0: type=17 seid=162 uplink=0 downlink=0
> [  272.351862] i40e 0000:02:00.0: type=19 seid=392 uplink=160 downlink=16
> [  272.358387] i40e 0000:02:00.0: type=17 seid=160 uplink=2 downlink=0
> [  272.364654] i40e 0000:02:00.0: type=19 seid=390 uplink=160 downlink=16
>
> 6) Delete VSI and delete VEB
> [  297.199116] i40e 0000:02:00.0: deleting VSI 394
> [  299.807580] i40e 0000:02:00.0: deleting relay 162
> [  309.767905] i40e 0000:02:00.0: header: 3 reported 3 total
> [  309.773318] i40e 0000:02:00.0: type=19 seid=392 uplink=160 downlink=16
> [  309.779845] i40e 0000:02:00.0: type=17 seid=160 uplink=2 downlink=0
> [  309.786111] i40e 0000:02:00.0: type=19 seid=390 uplink=160 downlink=16
>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        |   1 -
>  .../net/ethernet/intel/i40e/i40e_debugfs.c    |   8 +-
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 176 ++++++++----------
>  3 files changed, 76 insertions(+), 109 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
