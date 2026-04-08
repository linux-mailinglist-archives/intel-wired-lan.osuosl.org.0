Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CPlvFqL31Wn4/gcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 08:37:22 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B1C3B7A0C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 08:37:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6813E823AA;
	Wed,  8 Apr 2026 06:37:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wt_BXoaWYocK; Wed,  8 Apr 2026 06:37:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC0898238F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775630239;
	bh=xnUMNoG2DvRlyfhSSniBJOfFwZ1pgbkQW3SzNKBF0/E=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=f+VH+kUbpx1E4O56qnwneZExR34h4abauuB3wgc7JU0r+bT4fLcyFiVWNf1yP9Gz5
	 kTRePV0dUOX4RwLm7ZNBNUB69Nlfl2bRVFTK+I+BzL8dgEPjLHGVNQPZ6zfPOhA6RS
	 fQOHuegiM9dPJloQk5b0wD1g3bDTcvMI/+15mPFSYGo0p5a7Krgv2V5W2O1LS1JUp6
	 VveEo2ov8gPBN/mIE85J3VCxOJaXvweev0CG/U/4Jh8J1bK+vkpbmPZk+J8JLCJFAK
	 K48cwIqW78s9aucmcb0jFIxaMCt7YK9eeAQW6qxpdheb402kYIcDqNLFW13L0bulGk
	 kY4DglELxR1bA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC0898238F;
	Wed,  8 Apr 2026 06:37:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B1DE4237
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 06:37:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 979488237F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 06:37:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aBD4lsw3iuYT for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 06:37:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B058182371
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B058182371
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B058182371
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 06:37:17 +0000 (UTC)
X-CSE-ConnectionGUID: /Xa7GgW3Ro6lGBquMl3lGA==
X-CSE-MsgGUID: 9xTqYgx1QVCa+48i/ZDlmg==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="76485101"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="76485101"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 23:37:17 -0700
X-CSE-ConnectionGUID: GN8Dr7xbRIaIfLRBpONARA==
X-CSE-MsgGUID: szamFVXjT/mCjLEhKyvLmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="225207004"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 23:37:16 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 23:37:15 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 7 Apr 2026 23:37:15 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.20) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 23:37:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gKLgjYQKRp0nHGc0D6WrC2B8eZg7JFfAYUsv9cObJjQ2zql/xjIQQYKDUia/mGDQlEF9ydtM0VduYLgnl7n9VbPX2qcHC2ZXifx4fivDsbyA1wdc5YTkjqUDcsNcBir/NZGshI38jOAuATfY0xA/cxSLDFfXIJPfytyL5s0FXPWGCsRP/bZN8oPKrgTGLMq7hPxjETgwj4yJl3+Ua0gr2+goeMLp+HtCvFfx6yKJc20ijiUhU84UTpjACj/Etul2ytAkz5xAEOVjPb+UT0BGT2UPBn4z6PFUQ3SUy4DG1p7ES3AMd7fyIIloWdiIKnLVkJmOnYV9Y+t/sFXgAr3qsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xnUMNoG2DvRlyfhSSniBJOfFwZ1pgbkQW3SzNKBF0/E=;
 b=WuUiIfA6KE+O4FuUO1FyuSufIb/AriaZutHseorpBHEBUHe68KblkTSck84Rkp7DKshXuIuPl1SFQcje2z/Sbl2W67lZ6/xnG2S8Ui3n8GF3DD2ksAO/IPo2Q1RvafQaA34wD98TiIS8rGYLbkybu6hRgeYM9ubNBwYJAnkkdsa/zSdhZUyoCmYkoCKp82bchLJSmDL4hmSSifcxe996dI7/QD/pphcSD1sy/DRJyEN8ZS695pcuOVjdU99czR79U+yn8XykEbSklzS8enTHNb7j2BtEhYCXvNf0Irn3ZwEHUbFx9sRHUaepFYyFKpv7BpwNV1I6ORCYj49VUYSrsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM4PR11MB7280.namprd11.prod.outlook.com (2603:10b6:8:108::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Wed, 8 Apr
 2026 06:37:12 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Wed, 8 Apr 2026
 06:37:12 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 2/2] idpf: fix skb datapath
 queue based scheduling crashes and timeouts
Thread-Index: AQHcxhw08S9a+qJZm06nB8xKtdC4JLXUt/Fw
Date: Wed, 8 Apr 2026 06:37:12 +0000
Message-ID: <IA3PR11MB8986B2581A07EC756D0D9186E55BA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260406233236.3585504-1-joshua.a.hay@intel.com>
 <20260406233236.3585504-3-joshua.a.hay@intel.com>
In-Reply-To: <20260406233236.3585504-3-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM4PR11MB7280:EE_
x-ms-office365-filtering-correlation-id: 0c773802-84d9-48c5-35c3-08de95394486
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: QU4xLvnvTBlr6IwieS4k7ZotpoFh9+1LhtohMlWgRKoYUMduwBd1ryAEbU2uFFffmNYKaVQEJpZRbhZ+AUsGdLxZkwJJUejarY9d9S+QSG1TmXtKL7INq+QYfylfu9/PIX4uu0ndN8NHAThYI3AMuTzGRAJmSznOOL0wHPUPUkXQ//x3rRe5kmjMTW9Bpkb55c/8oDpaw+oFtzMXiMEwrB6gpASMALaQ91XmyH9816UNNJcijkj8+ija60dJFsWlJLopHZ7Kgfq5A/sg3e1QRgToNp/Nrvi8LK51JQMDwkhmZRsEWawBunBofdXQATyL5jYyYI7d5OXDfvsTyULwRHIWF0a4PXVgb78qF6iBuamH4C4Iuf828KZuzbQExnb0wCjl2pVyMoDtUGFsS7xO+BEyLPilASSgGX77TUXNPRyFzNk2mo7simZ3s58MbqbHEVm6h8uvSUp17ASW4aYOvW37X2JeQ36nCzcvFTJZAFNKuae7Bj0cn56DFykzi7vSeeUaml8KpQDmeN6fVJzwmfrRINPehj0KWJQHi4IOJPD2NuHc50e2Cora2whG29UbmxZv9PJRYKGQdB2mMynUiJfKjv7h7aLJ9GmbLxZX3qUxT9pca/bdcGsQ56yENV8yzVMJ9UhoaMQZ9iruz3cgfucV63GbzD8hbv+HjX5WRllUSz84yn6eJAa0BB+sAP68be1w0rG9o/DlW3jf7dWUMjMmOfkk1YzuKbndi/aQDnSCooMf65aQIhAukafgwTdP5Kpbeb0U7xUrdfNAGQWThZ1mrWQaMwQEXcCM5yX17T0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fyKFWclDRzP2h/Mgf5KCA3J3JKHevhToA1HGOfAb91TSf6nQqNdE6/Vqx/n+?=
 =?us-ascii?Q?KIT1p/FB2S/Z3SWfWX+ob2O6oQrs5GC8rv4bv5NeobFrjnSmAWBVXksmB0wT?=
 =?us-ascii?Q?8vuBI7PxNFmCiCqDq9IbgzEXzbHhnr0dAQCFbFA7KuvWnvxi+TCgkJU3lidr?=
 =?us-ascii?Q?vGZu9WVL6VKgwNBD9xZ6vF69cHcao834urXLe6Y/4kvCdvO1EOsU3gaSWBdW?=
 =?us-ascii?Q?FMxcTYH34s+6bDnusaE5C7U3nGOuMdskrjaj/4zAA1C+CA6k2AbdZLtQfLa+?=
 =?us-ascii?Q?Lm0Ry6VRU78uxz2TYEg3CVoWJ0gY5gOEHipzN1JJ787PCP8d2c56235185eg?=
 =?us-ascii?Q?F6ToNItgEVxYOKAZ1VYfOU8IYzLkpyD/sDt/ZGMDYgEM7+4dB4x9j6i/rMYv?=
 =?us-ascii?Q?LEHTHcExWoRnCe+UpQC+4rHWqOCBn/MZcBYZSdtH1fPHiT1fRKZ2Nj2/gSkk?=
 =?us-ascii?Q?MiD4W7kbXIl+gWid7J9PDW7dfHx4WV97DHOgMLJg8m9BUmTfK8yrvkybMboQ?=
 =?us-ascii?Q?I5MallvbQ9SMCE1XDdFUpVOZG4y8Xxvp1PMBHim6hUtCpCBV/QHanRMfrsrI?=
 =?us-ascii?Q?SPvJH8yF2EviReAUkPoTzl057tFf+b5Jp5oNJ3+2KWvxeHn86yFtxGuX1W7W?=
 =?us-ascii?Q?MuBs11oMkEtn1fJkDNFv+ED8Vtnd7C6CjM88kyRhUF63GmP7PSEtfT0sujSy?=
 =?us-ascii?Q?TsBjCf6PXguGSCicQRzHSjAGtBj7GGKO2WBzZGHdE2KTecbRevOTOPriJJyd?=
 =?us-ascii?Q?uXg3T+alE+v/4pE3qdfHhBm73L8PG9q9WZUi0uLuInzT2dO00Vl1T/0tgAqX?=
 =?us-ascii?Q?lV3YUjiW3lzLBYLNiJ+Z/ItVak6WGfoiUiLqwb9+Um7Z0qATyOK9UD8M3cKQ?=
 =?us-ascii?Q?Vbhgtv/MHFy3tvLxqfDJBNjwPCMA5fsT84p9/p5//9uD/UAVU1I2LcWYL5YN?=
 =?us-ascii?Q?n6O+zJW+8EhEaNUS2oaNShciCetbvB9L8sMO4U0WexD14jxbZeoMVbVQz2dt?=
 =?us-ascii?Q?WBd+Gv3eCKKYQ4F/yplL7Fr06aERTg2TSt+AWFsJAWofiCLKaHDS/zVab1VB?=
 =?us-ascii?Q?bFFKd5GEnUTXcnsdtTQ0gkxrUEmdMMhguyYeHs9zlpbVYu7ZLsHOrl6Y5F2k?=
 =?us-ascii?Q?IxbyCzVgC6Ecfu/33BV2ZU5z7zS5iyhLGWkVULbUvoBj+VDXocX1n8P6m8HD?=
 =?us-ascii?Q?mDz05m2pP0lculFXViJcfcAHNZfBNrLcjlJZL2Cee3mFExOULK/1zFz77mdz?=
 =?us-ascii?Q?ek2XF3MVQKYS6TOyuGgTB+snRTPMZhAFqOhcmTTs4a397poT7u74Jq260wmS?=
 =?us-ascii?Q?oTJb86VpwQF/YQJh3Nup7cK675i1yICsUdxcQAUeBQOhNi1FqJvOHgJGHZ7e?=
 =?us-ascii?Q?inZYrhERd9sNuHwBBmdwUN2PDkgCSpzWSLHZwV3GKGWB2M2bN89cGWzHwRva?=
 =?us-ascii?Q?RTk/fMd/bMNdD8CMTW0em6eUtTvsdE+YtOtSWC/bJCequx80WYZ3OWcfDFDf?=
 =?us-ascii?Q?PURikLrxuSJJNyOJaOSKrY2fp8Obw5Xcki605MH0YFmiB49uKHNnDt8GBnzi?=
 =?us-ascii?Q?ybwWv+34dxImW9+ahDjHq3rtJYVH9VYamZ18zH1BxD4MHpjQA3eB8fe65ene?=
 =?us-ascii?Q?aBO6HyuW/2FuPArbenHH/RRiFAuzWVZ0dFyjua1n4k0gQbxvOF9eUtOBU/r1?=
 =?us-ascii?Q?QbzqIN0F4t1Bcw1zWyBU9NG4Z2q+n/LIkvsM2oOcrE4E0qcGHprzp0UvEXFb?=
 =?us-ascii?Q?EgiJ3ChJG5bJKRPWUVLXcj9AxzEJMlE=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: p+hPUW1T6EbpF4XIesby46gsBwnWQltwsEX+0sjtbCtiVbBZ9sRRhtxrzu9zrJ1eo0YwkrbM46P7Gx53qXU1vX+L2OU80KYcSFc7URCWZ/bGHLKRyb6tfWwf8nbgYG5+jvdHPHjSR/JQPPhcC32u2R9kN5qmiPUzgHKvQyCNQxdWVcSvHzMTnyPORIMDNI0M/FDY9MrrUP/+qIzKU/kAg+PmiasVievlVEjQo9mfc4zfV3Z3iEDd4jJsfaOuVp10hzAufvG6bKd/WGsQ+rxUxRarZdUvZWmC3+aJgSO68zVgiGGXrgneQcZwwk3RVQzsj8o3zykfnTYHsKIvvMRN2A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c773802-84d9-48c5-35c3-08de95394486
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2026 06:37:12.8481 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cbO3Ze3jhoeP+v5wabJZB29yCq68CyY6Ol3MXYzpcLeicvvbTcOxI1uQDEjxgJLcU2UtZRuvT98kmOmZSCn2bRoTOzAlkhaX7zZGYGVbad4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7280
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775630238; x=1807166238;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q5fXRzfOh59t5VImNU3ApGlD225WAJ75zawtkQO52+Q=;
 b=oHuxzRMfNbPEc+/DpxVUJGCEpDP86EgErFpZiPTTs1WFSvHbG8JSIyoV
 H9rdkHQOeRgXgZ0ARExx8zqPYyjZoav5LDL+FJyJQxxxIPMZZK9eUuZb0
 mKah+WIRr26JTE/Vr2sVUF5kLiLZ5JVk4eb/15G0N2mdk1QXpSCgV9acr
 vDIotqu4xfqrltMsfN2ho5Ano45Ec2PojU3/us/d9UDBBc484rqGZ34H+
 J9weFpKoBJLKndS9oGqO0LAgTmbozyIv2bn3EDhyYEcYdA2LytjWjv42y
 5384jDR0tUUWVWQ9tNWWcQtDybPcth9+oJmKxc/ImNLqmwrJHe6DcMaJe
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oHuxzRMf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] idpf: fix skb datapath
 queue based scheduling crashes and timeouts
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:joshua.a.hay@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:email]
X-Rspamd-Queue-Id: C1B1C3B7A0C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Joshua Hay
> Sent: Tuesday, April 7, 2026 1:33 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-net 2/2] idpf: fix skb datapath
> queue based scheduling crashes and timeouts
>=20
> The splitq Tx resource checks were assuming that the queues were using
> flow based scheduling and checking the refillqs for free buffers.
> However, the Tx refillqs are not allocated when using queue based
> scheduling resulting in a NULL ptr dereference. Adjust the Tx resource
> checks to only check available descriptor resources when using queue
> based scheduling. Because queue based scheduling does not have any
> notion of descriptor only completions, there cannot be any packets in
> flight, meaning there is no need to check for pending completions.
>=20
> The driver also only supported 8 byte completion descriptors in the
> skb datapath previously. However, currently the FW only supports 4
> byte completion descriptors when using queue based scheduling. This
> meant we were skipping over completions, resulting in Tx timeouts.
> Add support to process both 4 and 8 byte completion descriptors,
> depending on the scheduling mode. Cache the next_to_clean completion
> descriptor in the completion queue struct, and fetch this descriptor
> before the start of each cleaning loop. Access the next descriptor in
> the loop by calculating the index based on raw byte count.
>=20
> Fixes: 0c3f135e840d ("idpf: stop Tx if there are insufficient buffer
> resources")
> Fixes: 1c325aac10a8 ("idpf: configure resources for TX queues")
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 49 +++++++++++++-------
> -  drivers/net/ethernet/intel/idpf/idpf_txrx.h |  6 ++-
>  2 files changed, 36 insertions(+), 19 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index f6b3b15364ff..4fc0bb14c5b1 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -270,11 +270,9 @@ static int idpf_tx_desc_alloc(const struct
> idpf_vport *vport,  static int idpf_compl_desc_alloc(const struct
> idpf_vport *vport,
>  				 struct idpf_compl_queue *complq)
>  {

...

>=20
>  /**
>   * struct idpf_sw_queue
> --
> 2.39.2


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
