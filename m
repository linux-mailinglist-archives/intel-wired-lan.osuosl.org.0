Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMcjK6cmvGkxtgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 17:39:03 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B9F2CEF21
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 17:39:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9CD1E615E9;
	Thu, 19 Mar 2026 16:39:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BvCU2WldhuKs; Thu, 19 Mar 2026 16:39:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D635260D99
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773938340;
	bh=iReVGa4wf+qeDqazd6c1qw0snMdPbqV3rGNyF0Gd9qk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IQkatxJfrBR1Ookoe7UanYWpl7fVnkQg+qCCe1nfquPMLWyaZa+7V+R0u7dYt8/eu
	 SLZP1d/GQ5BVDCRQqRM0dlROqe7R5hGYU7gXTiDbGYuyJaUW/xHs9kpuOxLb0ing9j
	 tAEfKf0JVDJEXVEKeMDqukcSRrva32m0xC3zrhRn9szpfrHYinaHQHec0t5uQWYjlW
	 EHfXeO6NnJmtQNiN07W9xDbCTJttzXJOBE4qtVdQ4RpzyzWQfIbNZAQUU1KLWnGuED
	 l4gnRTpOjbNFh8nH8jeahpFNMO0a1CzTCfciqh3KFNQWHHAFpsUfp12DQbnfMHDyh3
	 WPS8bZoLR+AGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D635260D99;
	Thu, 19 Mar 2026 16:39:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B5D891AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 16:38:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A78A1418FB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 16:38:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1ryn2Slf5wrS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 16:38:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BC50A418F8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC50A418F8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BC50A418F8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 16:38:58 +0000 (UTC)
X-CSE-ConnectionGUID: ernO8h+/RnmNu54CgwI2BA==
X-CSE-MsgGUID: BNHQB0csSG+pXb/3/jnZZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="75135243"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="75135243"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 09:38:58 -0700
X-CSE-ConnectionGUID: d5pMDIkMSRWSZpi4UXs23Q==
X-CSE-MsgGUID: +coNN2A2Rlqg9uyD98Rqsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="223040667"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 09:38:57 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 09:38:56 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 19 Mar 2026 09:38:56 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.45)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 09:38:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R3xp1UIGRdSdEn6MKUOBpyFOmWJFgxVLUQemeug4F1MK9xgsB3tUZyDeUkPAvixpwHW/S7xfS4wAiwdrwpHMHZvQ4OaTdqNzKffrebH7zHK26x8fSwYu76Dy65Xm7PoUVyve0KCySuyPlnKjAsUBTjOOupsp3glGQAt9Fi+a7AYzwS7zihgqFfvCehcHA61z9kbkciL7sa/UCUCg0RfAQlaJGtbR9Kd80pzAzmEiUlEghfh6L/OgQ/aBpYGOlOMD9AN7a5fmPFXNpC3qDDM1Pw0Hqc7XrX1bsdD1VCiZEnJqN/lmueNunEFbd0u78ZQekVSJ6MrtFVL8PCLfCd5h6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iReVGa4wf+qeDqazd6c1qw0snMdPbqV3rGNyF0Gd9qk=;
 b=PsdIvcfblcCGuB6/AtHsozP4gV8/Gs3Be9ITHt4tsdOrvDtBOvOGzdvNleZBh+5fD2Ss9XE2O0ZHeh84tbTt9fU0oXFrq+Oqc1d1AekarS8SMtQ0Eo2kn62sqL0/8UW2L9SM6HH0XI227NpfbDRvXL7nF4Ig6/o56Ml+LebsiI10G7LTWJmqRjzqqPkhl1+u7TL30GgjqY1LJMdogyQQGhUsjEensKEg6J7AlvM45/u1JNXIXTgHHjElm3XL+AFJ23hcakz33xBw4ISgswayGwf2PiwAKUTVbVsBsTjH270M1Ktn502ePNayWbr5/kCcPsYrZDxSrwkfvfS6RNlieQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by CO1PR11MB5202.namprd11.prod.outlook.com (2603:10b6:303:97::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.12; Thu, 19 Mar
 2026 16:38:54 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e%5]) with mapi id 15.20.9745.007; Thu, 19 Mar 2026
 16:38:54 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Hay, Joshua A"
 <joshua.a.hay@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] idpf: only assign num refillqs
 if allocation was successful
Thread-Index: AQHcrdZzz28TTeNSMEGe0AJZl/OdqLW2Ic2w
Date: Thu, 19 Mar 2026 16:38:54 +0000
Message-ID: <SJ1PR11MB62970408EF932FF3C37D6C9B9B4FA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20260307021247.1259624-1-joshua.a.hay@intel.com>
In-Reply-To: <20260307021247.1259624-1-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|CO1PR11MB5202:EE_
x-ms-office365-filtering-correlation-id: 7346e6cb-645c-4ef8-5133-08de85d60246
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|7053199007|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: IVxzvGFVOcjTa9EBCJX8R5ixD7hwpQhCyH6bfZJxAVJI9Vp4DnG8XQL3OrM4nDhtq8bTlYKT+emXewwM/KP+amtJM+NEFdEnOzTANdl6I6RhMZlZpmpXDUudYW5DjZ+lOW5L0uQx7buA82S/HBX/vxVThWnea02Sx9OrHYQYay9SAANBA/TzHJXL914/1JBz80UEj5DDZVWF0PaEsq35swA1hfQwkn5gpXcM3oXVFL7gJl2NL4Do38PZu07VDO9NJMx5z2Tv4V21s3vo8RKlgn2J9uPvpYL+HKIfECPZ5WYIInrgBqShAXZsT3m/Od4diZzysM+dqekkyU56bjE8Rye+xw3x75rlKgVgHjaC1bj0wIHBrctW/ylWTeHfD5rOQzNnLaSQ3fCNNukiE39zmdouc344uODLCLApOmbOszCpNvWoqoeLjqzK+oBJHlczBAdFDZu5kWqHhtLZ6OgPd9OfdWZYAJHEelsJ66adBp20i7sqzyQeAiapzjMKMMZ+enEBi8+GuSdWFQdGyDvZZl0nEPK79EVaPA5blz7GIoxRut4kG1Gob6dkOxjabxrcTN8a7Wd8qbQwlO6CETmeU+5LKLpmFmFcrDsX6F8uzNHecZqByDySseAB8v/emcl6Wi4GWGCk+6EwQFwtvAR+Dwage49yfu5xS5oj+3RWiUAZKesf9qkDiGMBVCQOOpyeHlKbKaXD2522Dg2ggbPMbaNQug8WYdNvwkxrET7Ig/vgfL74JS0rEqHSkW+qIOkSrcbzQMKN3dtezgwT3WT6LhBoBqdcMrn+7YS2pOmtCHM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(7053199007)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Lj5HUazqP9/efjgpKcd4S9KRo3DRSTWdM1Gic4Epr+YVeKOU/WjZ3vX/7DXO?=
 =?us-ascii?Q?3IBmMevMBU04a8F2pbyWvR9eepQWm8gHufCMWZojXuYkrRAsWChvGIwkQjpW?=
 =?us-ascii?Q?ItbZbIH6tPTBeshfNeQsVv+uOP++R/dSIXvXKXQddyB4TrZUYN89Rwf1wGTn?=
 =?us-ascii?Q?1GCW2aWGp5pRBXLk96zmGW0huIBx5xCJUMz17mWQFIe2ajFrPFY5BZ3Sxtwj?=
 =?us-ascii?Q?wVEFmzJO3ti7+LsVhR10YgwBJi9CM6yngY8pUZRUiSBdpay9QcvZx63tljSE?=
 =?us-ascii?Q?mSvhYj/01NdVOVcA77Big5t1Nz2OmrZoiYsLJNxk2JnAvYG/JSdgILltzO70?=
 =?us-ascii?Q?/kDZzrwDh0S/da8Aiz7Tp6XICwVB4koiFpyFBGcFXoOqxbMuRYJJph/WD63q?=
 =?us-ascii?Q?+WyT8LstlxafTAcq6mgIBCPTYTo8Lw3TQgLSshkZWZPjl3S80fItTXK5iECG?=
 =?us-ascii?Q?AZyR8rtUPhYVNlnSsZWZjnsTCjD7m4glxRBHiELylyyiQ7zUCEYPWuxFW8E9?=
 =?us-ascii?Q?ZQq5WcTcFPfpi/wdAqBNwRzmeUQP1s8U4l6w1IsnFylAaxke3Cb1VcNhlzbW?=
 =?us-ascii?Q?PIpPanhgqzs+4rCsiZyeO/B7pBKKLnvZokB9Nv0C53GfU51AxCPDEowddHcm?=
 =?us-ascii?Q?BB2QrUbrQxDDgdqOm2ZA3jAJA467ZyYo3DsR4XK4LX5ruEB/Gr8w1FjaDzy+?=
 =?us-ascii?Q?dvjwNBVTvsvY9fN/OyOmCrdrZKeIxDHsh5u2x1VpGOReUZ4PNzDJsvR9FBM9?=
 =?us-ascii?Q?bDxjoLWZiFg9+p6fqLCCq6PcGvBgakk00snVDLYcUkiMKNyoPg1vaXtup+8p?=
 =?us-ascii?Q?f0OV1twS3En2IUzf4XAWG4FGthMs4bGqqVtBoqxflw20Ez9zMbLJ57MsYjFf?=
 =?us-ascii?Q?M/XY/golFl5OnzLYH1z16H+7ruR44ZcuOtj8izhAowekPaWEQ2SpSPXs6tFX?=
 =?us-ascii?Q?BtGFo5hv4krPDuLguYQYy4NIl6j9RosEdxeAvm4cUOELVXAcnYDt/qA41ATM?=
 =?us-ascii?Q?+GSGOsDctwbOza7BgNTJwXW7/Cz4QROYpbGwJ10GGQZjnSVte9iwsBmc9VAt?=
 =?us-ascii?Q?PfQAkikddqh0mlxsAxk8oyjDOk8ia8Blqp8HnCjchxB9qaGNsNDRTGGEYPS5?=
 =?us-ascii?Q?JJxseA6KgKjcd6kVdqNW/OIRZcSleMHwfC0jlA7JHdQ4lwg8z6ymDms6JndH?=
 =?us-ascii?Q?BE9xAMPa2UE22s3kPHQ2eQ/Ll4Ad5/pkVs+1FBMZ8vSESIf2EsaU8Mn45QBM?=
 =?us-ascii?Q?v3Lu+eJIg700EM5cgvEcGu7J8paBj1OLEXcZ0YSOfDLoePUbrY0Nrn2Lcqjh?=
 =?us-ascii?Q?3p719oIxrpcZxfwMxKud72Zgoqv2aN9PSCFOK5AEkQ/zMG4ZMADIi5OBJdz5?=
 =?us-ascii?Q?qe3fcV5bjQnCESU1OHh6EFZ8QtKRvPo5DI0Ba/+2bZd5fSPJ2zNwSx4lYi9D?=
 =?us-ascii?Q?00v9iN0ZRbknqBKOF6q8Pws8UtXo+Zt+7IFHIoOET+EYKgYE/9mQeUKj9Y2m?=
 =?us-ascii?Q?IdYGBTXGqvhwBH/Hh8BIkMYpExauHYGCDdk4hyJ4HQCoF5mw/j6OwwMs2H6l?=
 =?us-ascii?Q?jzzphf+MT2M9ibD4CyMZhTQiwFi6BBteQ6xf+7A/0Qa0vGMKFmOOM9KF+j+t?=
 =?us-ascii?Q?I+MiTZMXjuinM/9h+p/no9iJhuyq67bkPBB9NWfUgdVU3UtbU4nveWF0yO/Q?=
 =?us-ascii?Q?AxOXo54Dsy1DiqjHpwXSGRBLsfGNekRzU9e+pDwQY4J1zL083eIlIAMygdy7?=
 =?us-ascii?Q?tDslK8007w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: SarrIqY55Hv1GckUhYZyUBIQ2v1WTijAb+y/pjkHkOR7UqpxAnRQ/d0v7L5+O7OgC+UKHM3gBKPdEIOKABZlyERVCqERcjnosYuUYJip6KolzJUsjfhnaSrnweeLNYTycsLVh5qNIbky8j2K/oBKei0cBQDLjN+QEdPeG8xPzoyTgVL0iO/6jvYLmyYPBFU1z50zgKAz3dQpR4phx6YdFDimYxWMmbLdsUDOTmnujEeb2Q7j76HoqkYVBaUHht1diNyvlVoxxEwIWww90aRuyiFov2ghpledh70zra1idvDL8ggnys8az+WzZfTLB2B5KWvBTCQBtekJIGjtB2Y/yA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7346e6cb-645c-4ef8-5133-08de85d60246
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2026 16:38:54.0501 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9aVfKVzf68VKZg5RSGykUOVV/a883LtVAEu2e+Bk70ELkoNJPkk4FI28QkxxMDJuNg9hUlRZVBZWD47A2T3AHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5202
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773938339; x=1805474339;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iReVGa4wf+qeDqazd6c1qw0snMdPbqV3rGNyF0Gd9qk=;
 b=dVYckIcf6jJKeM3DeBPFfm73M4OlVQ7DO8Wiws84MmTyCkTwyigwHw7x
 V3mKVK4egleK7Jmj7Jx6QssVw8dAclJqobrAve/L7HUj6DuHVoMSVKnyQ
 KH6slZXv68Y/8vfmZTZ3NuXIjICOpqy6/A+nai+WZlHgTs6HjVmzPFW2u
 V+Yord6gNkE+HUCZmuj8w4Gmq1kpTN6/xAWs56Nx7nRKK5tTrkTlj+iyL
 J3W+oYhT5mVU7cxI7MXelF8l8SzrCN2223qvWWkW+d6tpPKuSBBBBwA50
 e7zllCXIeZaiZTgE3+u7oRzphArDulkzbPgOZyAruKvjr5OoBiiQr0S5u
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dVYckIcf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: only assign num
 refillqs if allocation was successful
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:joshua.a.hay@intel.com,m:netdev@vger.kernel.org,m:madhu.chittim@intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,osuosl.org:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,SJ1PR11MB6297.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: F0B9F2CEF21
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Joshua Hay
> Sent: Friday, March 6, 2026 6:13 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Hay, Joshua A <joshua.a.hay@intel.com>;
> Chittim, Madhu <madhu.chittim@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: only assign num refillqs=
 if
> allocation was successful
>=20
> As reported by AI review [1], if the refillqs allocation fails, refillqs =
will be NULL
> but num_refillqs will be non-zero. The release function will then derefer=
ence
> refillqs since it thinks the refillqs are present, resulting in a NULL pt=
r
> dereference.
>=20
> Only assign the num refillqs if the allocation was successful. This will =
prevent
> the release function from entering the loop and accessing refillqs.
>=20
> [1] https://lore.kernel.org/netdev/20260227035625.2632753-1-
> kuba@kernel.org/
>=20
> Fixes: 95af467d9a4e3 ("idpf: configure resources for RX queues")
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---

Tested-by: Samuel Salin <Samuel.salin@intel.com>

