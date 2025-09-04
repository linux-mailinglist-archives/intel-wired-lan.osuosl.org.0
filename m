Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9B9B449AD
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Sep 2025 00:33:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D794540813;
	Thu,  4 Sep 2025 22:33:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LLjS1GjyTtox; Thu,  4 Sep 2025 22:33:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F8CC40703
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757025221;
	bh=CGxkFQmh0Jm6FLyIf7NhbpcgFmBHHFFCLFpL2OSTtH4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=b4T1XyT8NeO/mAJ4eUjJnKk3G+4su2pvajW5e9MPDYOklGCTcUma7ywGikKY0D6sg
	 8yf5rrmNA/B2akE/gcHiIjXhnwaV4vTdDDvbDYQ74xHmqwbiYqttrgQcCoJwIV9PR+
	 Uz4q0WqyuBh0MTyEqCKwC1xuWSBv4n0SFNsEgxQZppax5kgaWdGokOptggS8KV+Gul
	 SS/p1wvUg69X73uzKuob9oB6khKLfqMgpKuaGpKV/Zf+8A17+OSV6mQU8rduEjU5au
	 5tKkalSlT/IhgCf0AUNrI39mPEPnX+mj2mFq6UxjVGlB0joag5hbe1tiEB44WL/ikp
	 qPNrgan5aXeHA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F8CC40703;
	Thu,  4 Sep 2025 22:33:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 317B3B69
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 22:33:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2E21680ED3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 22:33:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LTKnhdRYX24f for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Sep 2025 22:33:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7253B80ED1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7253B80ED1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7253B80ED1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 22:33:38 +0000 (UTC)
X-CSE-ConnectionGUID: p1Nxq2IYTOSAzQNR5iZswg==
X-CSE-MsgGUID: pHKVPNh/STOSnk9a6kD6Kw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="81970073"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="81970073"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 15:33:38 -0700
X-CSE-ConnectionGUID: vep4KzklRpGes7JMyWHy6w==
X-CSE-MsgGUID: ou4LRdXpQL2PIBxJceZQjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,239,1751266800"; d="scan'208";a="172453898"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 15:33:37 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 15:33:36 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 4 Sep 2025 15:33:36 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.41) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 15:33:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CP6/6uTCfl/OJsTQoolzxjW7fUHrFrooRkW0epOuHzd8kNLOhGZKcbzCewp11TV8T9IC8h8PljHpZvxBZjN5RApiVcW3u/FfoHR+QW6y5Vo6kklVlmXCzASsOKeMZ43rVAU7Ikt6Qin89I5nGw6S1X+0lkGBgfBt8mFLU+lCFqgNvtnpbQ6bIg3c0yVRC5piyeZ4JZJ7mPFNDHfyUh6U3yW+w2dp1S2CF5L/5q+b1AyYrZSgKX1r7f9srL2I/8L6XYK4bSjb505mhDGK0RO4POUyxbP94yfrE+fUQJuKri/xZdSRhz81wTCyT+Z+bcx0pt8BcKqee3Bqj1fwY4WnwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CGxkFQmh0Jm6FLyIf7NhbpcgFmBHHFFCLFpL2OSTtH4=;
 b=tofmy/FW26H9JF3kPDcckYLlFld/KaqHBlFKM5qMmX9++g/lBQtqkQUVbGu+todW9c01ixOKrTVxKFz6BqzEp1zmxnZfEBOA5iThC1KtS6Z1QCUPBALhlsh+nLWdzC6K0TDtdZMf8YugsiNabzeWcC72khacxG0ezo9N2YWZ88o/6OQOz/1LCRRuqhlNz6TbDIAxpRSCNEosiVmhvTmO+YXj2YScNgRUvNMbDyK7xhVodfbFShtt7a48SbtPlxNr1FN9BWkFNrdIoQtNbWgP9XNt/wAlz5IO6zbEWvQT3zOy1B6MAeRGbUqVjHWglPZOyp5opHuZ0AvfKtqNN0Y1kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by MW3PR11MB4635.namprd11.prod.outlook.com (2603:10b6:303:2c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Thu, 4 Sep
 2025 22:33:32 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9073.026; Thu, 4 Sep 2025
 22:33:32 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Chittim, Madhu" <madhu.chittim@intel.com>, "Linga, Pavan Kumar"
 <pavan.kumar.linga@intel.com>, "Nadezhdin, Anton" <anton.nadezhdin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v7 3/9] idpf: introduce
 idpf_q_vec_rsrc struct and move vector resources to it
Thread-Index: AQHcEy+XuMLZja3pykW//L1bwAtUyrSDsWtQ
Date: Thu, 4 Sep 2025 22:33:32 +0000
Message-ID: <SJ1PR11MB6297EDA5E1B02B65B6132B1D9B00A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250822063215.3911-1-pavan.kumar.linga@intel.com>
 <20250822063215.3911-4-pavan.kumar.linga@intel.com>
In-Reply-To: <20250822063215.3911-4-pavan.kumar.linga@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|MW3PR11MB4635:EE_
x-ms-office365-filtering-correlation-id: 040b21e7-0ef2-4a1e-764e-08ddec03146f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?q0ue4DUL9AKVwPOMkx5HzAFmhFOKmXOoKy818R5OPrOmtOzz9D65w9T/BoQH?=
 =?us-ascii?Q?bqOpHvXbUvJx/HPWLD1NtkwDuLHdxO9a2WVlMzYmavaYR38K+GyF4fWOMs6S?=
 =?us-ascii?Q?VfRv5Z0k9Blw7ooR44xKF29mVGTcumoAF5pdfbtzBcz7Daz17rMopv3Esaby?=
 =?us-ascii?Q?V102bT8ge+PjqAMZp/+5fpIsiMa2xOFEgqb8AEdv/pgUOBL+43NuyvFktlay?=
 =?us-ascii?Q?xRsMX0uRWsl6kNQWDdRoVeigCi6fX+oqUg5b23W8oalDJlDKPhqjGIdxVYJV?=
 =?us-ascii?Q?nfF8ZNqntJCay0pGdplXxI3lij18Psk3HY8K376cW1pN3tKNg041raX6bMOp?=
 =?us-ascii?Q?ajfQd95jhkbGDh4D5MN9vRpBXU2pGWa54JdeYBXgEEPUOsnsGWzl8xg6qXC6?=
 =?us-ascii?Q?1ooDMWw7tfb9lwzHGYROSccYiw3wLibGtB0KOgCbkOfvEKfoi0AuZSyPxwTu?=
 =?us-ascii?Q?5zscY9DIfJLeDBLBCHMJVArcBbA/x1hVl/ufEknhGP/sfGpeE07rSNLmQOuL?=
 =?us-ascii?Q?THwR3ptoWlWEeCdQMZwkv46kyTjH6Cjo0Q4ddcTeP4U+TVV1n4qDeHx6F/Pl?=
 =?us-ascii?Q?RFqafb2Kj2n8SDFP5SqA/ibD5LhvCibEO61Uh+JJqyme0VdtsPfu/yqahRcJ?=
 =?us-ascii?Q?PFbyQSEIwLcqv8B/ljlW26VtGpnO5eXIkpYFraGoWv8SLaPU59wjaMpz0Zrv?=
 =?us-ascii?Q?08I03snMTzJKFrjkVSixaU1oynMvGEAubEvYXJWpVBbW2PqfRnVxTcb/SiIO?=
 =?us-ascii?Q?w9aLU8kBSVrYtNWGu/F2SBLI2YE7VZwY4CcqvGDpk9PetIyJr0g9i5OCQQq1?=
 =?us-ascii?Q?KYoG2ULaTLbtF20Ezi49hTiGI29KzkLDt0ocWTfkLSkuz4aM1Zu9cZdPJB5B?=
 =?us-ascii?Q?KKtevSVA/jfrhuKCoNtxuMnxhZfOSowpdfKRe13Yvq0RmBZyd44fEO4USPr0?=
 =?us-ascii?Q?zojxfSdmT7czEuElL4FVqfce+2bOZeG/TLZYkrhdhNc5mawUPQHGrrhvssw5?=
 =?us-ascii?Q?RfqJTh0i3o8yd42Gf5Y3qJGLRXQjZxinJe/r8Oh4dnbgV7Mfjg3gpmCSNDHI?=
 =?us-ascii?Q?XeCBc8HWbaUP4uSGE+RQgB8v4qXHKZ5D/hORWON3wAoIesmpdWxD2K5UVHK7?=
 =?us-ascii?Q?Vg3BDa/rrWBtcgvORPK5ywzNczERtQhpPqqW9Gyg70Fp7cU71zr4oWOuvTe/?=
 =?us-ascii?Q?gznnZhV5HvD6IE2vcw3MiJPCyphdLUAd1/ZMblYGF8yQb6fuqxP1gJVDFcAr?=
 =?us-ascii?Q?5hlefMBXqcMSbIKPPUOn5gI8CQy2vfulr4yhzctth/FahsXQt/QMvXtDj4bs?=
 =?us-ascii?Q?g9i/+syckVJWsvfacB1gT0RYl0aFH6zQSpaJYm4sEtqno4tuRFbGVD8rTBQs?=
 =?us-ascii?Q?Ri9ApeE5TXDU9xJWxOtWkY5lR8rJKH4RqKdiLXXpWBO8h08qvKGY/2hWBbWB?=
 =?us-ascii?Q?UDrsk1XZPXq5qiNoqDz7obtdhUh0fd9EKlTRHrbNvsPsd/W7o2jOEg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BToyrkFxHYxXR1LkrS7AsvpqSXwnH+dlVVtB0z/gEDN2aXas24I9oXqIiF4R?=
 =?us-ascii?Q?XyAVE2gms4qMww/rAn0kTjah1cSND7OgWkQGqQf8+cc/q/XbBx/8K5M4TmhO?=
 =?us-ascii?Q?iiasqUgR6col5f5iMU2F0WwUFMzSwdVoZyNk6lmvw+Yt73++J41pmsl24QUf?=
 =?us-ascii?Q?L5Na711FRyM01zBDJto/3IIDKmG0epOJhf+8gBdCFisPuszcxVf4DLry5AWm?=
 =?us-ascii?Q?NPEcy2PKyOxIX9n2gc7f6B5JXaau7JUhkuYFyKRWhwPROTeaMeP6ejmGZlb6?=
 =?us-ascii?Q?4fWiD8khDOhnaEky5MHWsOAEMEBeBG9Ex4bEasIhyXq4Bu5zdYLyXPbJFEsK?=
 =?us-ascii?Q?mMFTA2T9vVDzx6fk2NapV6z89fHA5MSM/UZRNUdBB9GhkcyolNujgC7Im5qL?=
 =?us-ascii?Q?jX8B4+rDYunCXhkAsJ/gHThogu7oQrQPy7t5fUYCBA9eNOgoLhfk7em5hDg+?=
 =?us-ascii?Q?LU0mLIkdkpAGDQkTjwdUsWCBuMlrSAcXho/gvl4IwgYHOiUmgiCqRM9mDSlr?=
 =?us-ascii?Q?OfbWZQ/A9fymmWn9P0MUWDIY0aEjHCbfuQ5K7jWxN5GBUdOFLghBis/b+B3t?=
 =?us-ascii?Q?g5wS9BN9Zh+kXoNaLf4Wd1TbRtLRbhm+y29UHvUz/UjixR4qLB8eRIeCnmiw?=
 =?us-ascii?Q?fKfaNZyQl1w1gcRIht2fFfpCXeJbcQRwKkgAFv0jHbAtkPnprwmSPP1j3+zx?=
 =?us-ascii?Q?0NdAloCmlvupCnXvQ7L8f4wwbuNU10YEXtpiM47HRkVjr10RWh1G7ApO6cyQ?=
 =?us-ascii?Q?rlk+zJ+DqP4VjM7Rk+s/vvDOnwTm/18Z+9U9OF543og6MxnAO3XrZFobzWap?=
 =?us-ascii?Q?Rsusl4jWiLOrYDEbuWYR7200YT0TYGS+zDlMVtMmyCncAhg8CpCUDFVWYJEe?=
 =?us-ascii?Q?Dtthv7hVGR/tKmteC8htM6Lrn51RpE9hxoUURM4Emwe/xjCpBo3BOe3qzd/k?=
 =?us-ascii?Q?+0LcYjIKXs1B7QR4xRpTOK9xIDw/+6gSi7b/oKXoFXBSni5xr4ZLSNE7N736?=
 =?us-ascii?Q?KbohgO9vrOulq49LZMn7e9D755kWMFu1HCK4TFSA2NuA6rNuSANJ/HelFdIR?=
 =?us-ascii?Q?jVhsIlJkR04NdqARGlAKurmXt5L6uXppkCMiLdcJz0jG7112VG/NXW/6Oquh?=
 =?us-ascii?Q?C6AtN1Jbu/8m4ZItwXzD9JN7oqDKxrtY7z+di4baeY6v+8PgCHoeUcucm6VO?=
 =?us-ascii?Q?qywkJfRR1BifLj1ROGcRHolXzhIY06ZnJujB4jIthTqE4AgDJGSJMpgxly29?=
 =?us-ascii?Q?K+BY6lHrf2ZsOI3cHlsQX4nvC78SdDqRlH2QA/KQ8smVLieDrbmwfBfrjymZ?=
 =?us-ascii?Q?91fw+pRNGXSd2vLN21/h9GrUigO/pTuLU6/gFyK8JLX9s/TJlUK/ozJj19Sr?=
 =?us-ascii?Q?7QDjuMLak75JJLjqMow8g5APXyYAwNbrsGF00xoIsGQES+6BckRkq9Pqclnz?=
 =?us-ascii?Q?95RweLd6gGk2zeXKq+9Kjdr0JSwYOXQyXTVJ6e3xbJwHVduBFz9o9o9h7DU/?=
 =?us-ascii?Q?2Kl19XSg8XuieTbf2wtsMODbmVke/jZdORmP+TyWBtG150lCHVrAuWKaaNMB?=
 =?us-ascii?Q?xlDTX046QveH3Cin0ooN+OsAYVesWRnYiirjA/zp?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 040b21e7-0ef2-4a1e-764e-08ddec03146f
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 22:33:32.8172 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MoYrtJod9qvoRsK3BcGgZG4J2iXbwiDhE5tP4Mk/NYv57rln8xb+SVYym62xiaBabHPzziuBsWBggpoZVd1A+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4635
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757025219; x=1788561219;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CGxkFQmh0Jm6FLyIf7NhbpcgFmBHHFFCLFpL2OSTtH4=;
 b=NGNpNlTys54i5LsZ6nMprz1lUrJgab+Xr12/WlrNfVdDcaf1sK/uWdf2
 jU7fJPsGDHAi70gGZ6y+R/85Sjm0WPYa5wnikK4Z2SnNMArUMGte6cXQO
 TwNU652nfnm5GEO9yQ7HpCN9Rg0/RNJMbhCgsKLK5KSvUi188HK4scoze
 bi5B+xYjltiT2vA1fQbMYsRvM8V0kRnxtJix4NJ2+o+gHgeQ6xI9qLpM+
 ChR3kjtL/7DBNOrSquBArjsvLWoyMdzw8Fzi51wdgSeEqxRPhCIW1HDPo
 ikSqxfQEGzipd3g+u089rwMgjAl3CnlUlSBAOsY6uqmFBbuCzqIb47HLD
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NGNpNlTy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 3/9] idpf: introduce
 idpf_q_vec_rsrc struct and move vector resources to it
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Pavan Kumar Linga
> Sent: Thursday, August 21, 2025 11:32 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Chittim, Madhu <madhu.chittim@intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>; Nadezhdin, Anton
> <anton.nadezhdin@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v7 3/9] idpf: introduce
> idpf_q_vec_rsrc struct and move vector resources to it
>=20
> To group all the vector and queue resources, introduce idpf_q_vec_rsrc
> structure. This helps to reuse the same config path functions by other
> features. For example, PTP implementation can use the existing config
> infrastructure to configure secondary mailbox by passing its queue and ve=
ctor
> info. It also helps to avoid any duplication of code.
>=20
> Existing queue and vector resources are grouped as default resources.
> This patch moves vector info to the newly introduced structure.
> Following patch moves the queue resources.
>=20
> While at it, declare the loop iterator for 'num_q_vectors' in loop and us=
e the
> correct type.
>=20
> Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> ---
> 2.43.0

Tested-by: Samuel Salin <Samuel.salin@intel.com>
