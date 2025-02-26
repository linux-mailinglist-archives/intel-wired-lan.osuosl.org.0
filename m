Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB36A4554E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Feb 2025 07:09:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B63C181EE2;
	Wed, 26 Feb 2025 06:09:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YbiOFlztpSn3; Wed, 26 Feb 2025 06:09:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E98E88186A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740550183;
	bh=rKnYFPfm4KnZI5IPZ8M9VUmX7pjnWVDhcjpKZ+uy8Dc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lHSk41f4oC4pHuhxY2juFFu9BFhDiy+O8PDQgLqkmD4eekvlPGvE7HofSvis4wrMI
	 7R4LOoSu6M0wCjB4iVOWqFKt0+Jn/YLyGmkOYWVzZp5kfFDRFL+TYHLYnK8eEfFF45
	 CciIBDIJk/tXcdWvzgDKndI1riAuy/cMslCbQYkQgO1cPO5f7XdkthV+dLBhvpj+fB
	 rhgPS3M7U67ly/QHG+gK1GIINsT9v/NPDk4+NzwzrecD478H89fze6f2GaH83m3cey
	 QcrjnBm9H4m7wX8L8XQlWo+Tc6//HdUiicjZF592J7pO0iqfp2eBayf9biAum8sYuM
	 7+nNYEymo6KkA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E98E88186A;
	Wed, 26 Feb 2025 06:09:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9E2592292
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 06:09:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 98274406F3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 06:09:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L8_ind5-LXYo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Feb 2025 06:09:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AFF5640CF4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AFF5640CF4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AFF5640CF4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 06:09:39 +0000 (UTC)
X-CSE-ConnectionGUID: T6FF0VNCRl6DkGqisjR9Yg==
X-CSE-MsgGUID: E1CwbP+4QxqS3qFUVGHA5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="40618103"
X-IronPort-AV: E=Sophos;i="6.13,316,1732608000"; d="scan'208";a="40618103"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 22:09:39 -0800
X-CSE-ConnectionGUID: eo2WCdz4Rf6jKBamGPyl9Q==
X-CSE-MsgGUID: t2NYHfJER+yMgFk3WIi1Jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,316,1732608000"; d="scan'208";a="121546943"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 22:09:39 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 25 Feb 2025 22:09:38 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 25 Feb 2025 22:09:38 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 25 Feb 2025 22:09:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KHbchy4V/NsAao/dvAKpm2UHr4OQIfgE76nUduAA58XhLPxdKMurzEf9p9cgjt9F74hJCYJLzTLWA4wlUu2mBHzxrjMdQ4VpVOvylelK0vOj7GJ1Ise+w5R5haxxBijmCiNKTCEpdszOPQQk8Qs74Vkp7kx4eF1uEfFkgYeDBiFdJBIQ95FKizt91k1iBE5DW+go3jFRYT8unHBFZrv6E7yAnqUb/s7uBtbl8MxSs3PzNQiGNGer5MXOIiDeVAp0QVh7iaJbigo9Ehygk/w05A7BBewq6wR/8rm27b0JTrwE++FuuVouXQ/3SmDxJUMyoqf5PeroTgyUWJ/6DpyTBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rKnYFPfm4KnZI5IPZ8M9VUmX7pjnWVDhcjpKZ+uy8Dc=;
 b=XQbrZeeUU2HNfl4zv1n3aJ9QvEzS2+xalXTtzLscYOa20f3uP66veKmNz05ZX5pXy9gw+oo5yUhWncVTjod7MimtHgynW2LfR81p6RKqY+YKwN5hSl7Rd2/SNvKleeyDgBC1YP+pfhMQRSnNQbJF4ENWbo/xoLuj+y3ciAXhnJcEj1uJ3jg7TuYUOQI4znPneTdA6r8pJyd8YZttFlBaQdNjdMhtjq+uBynAsriN3YcGMa13qThVzavdj6+WYWqWq5qGjOqHP4LiZ8/6i5t7fWxGXzrhXv4++Mo4KY3LQ1qGeb8P7tnlm/AdzH/vtURLFLk4mgfgQrZsSFZ5t2cz0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by DS7PR11MB6245.namprd11.prod.outlook.com (2603:10b6:8:9a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Wed, 26 Feb
 2025 06:09:28 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8466.020; Wed, 26 Feb 2025
 06:09:28 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 3/3] ice: E825C PHY
 register cleanup
Thread-Index: AQHbe8aFZFDQJ6IZAkONvO5QBYc237NXqMSA
Date: Wed, 26 Feb 2025 06:09:27 +0000
Message-ID: <IA1PR11MB62413116ACFF6833FF296A408BC22@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250210141112.3445723-1-grzegorz.nitka@intel.com>
 <20250210141112.3445723-4-grzegorz.nitka@intel.com>
In-Reply-To: <20250210141112.3445723-4-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|DS7PR11MB6245:EE_
x-ms-office365-filtering-correlation-id: c27f959b-546b-4f06-383b-08dd562c2081
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?f7ISY0FK7x+y95+yoIwoRXfvlLNZVnbXwpF81sSK7tfe7GGGCjKb3qB5GQkP?=
 =?us-ascii?Q?jZ4ZENy5RwCdnzq1sVEl0K24L5YjP0oaHWyiGb9e/S8dESupujI6PDc/am2u?=
 =?us-ascii?Q?uc7z3b2QetjUsDDSOMfEA4Yk3RY4xvdg8Q10zxxwdBD4vpWREa3O9D8OeGVo?=
 =?us-ascii?Q?qqDUNT0vGz6DmtZHkO5E7t4e6jUl/uR3oRZn+2p9q94XKW04ehXh82v/IBRT?=
 =?us-ascii?Q?86yCcP+gmzGIH33AMKBdbRCWMFTR2b7Zco0acOXsjiKMyuURwxYU4hMebnfo?=
 =?us-ascii?Q?uael/6vAfRE+/auWL/WRW6NXPzoguh4CQOUjNYC7j2qKcnvZzOZAHY3kpLeV?=
 =?us-ascii?Q?GPMDuBxeJT9iAW4SIvF0e8REbK90BS5/KQKnKrPU06vS2fY1pfd+KDYK+oqQ?=
 =?us-ascii?Q?4xPsMNDqNQ0Ry58MrdrdfJNt8h4sMZu5gNM7fyKNd7QVmrf3AF6yE20QABgY?=
 =?us-ascii?Q?jYw93gusE6DL7HgLJ2jdO7LiGhSQkpatBdCLW1lFAXTWFqjMK6v9ya5Pkuj/?=
 =?us-ascii?Q?inSldKsu8rRcOgUMrUOJchHZ6cLFz4llj0F8wC2cjqQg3kvWovG19/AONy+3?=
 =?us-ascii?Q?B+UJEOHs2xFdoUuyMrlHCpWI0eDidyTDdoZhg14j95rwtgoXfdh7LJ8KM0y8?=
 =?us-ascii?Q?gImm6BQw3WHLtN6nihrywCLh0iCZbi8/4bmUUH5FFMQpfT7VC8RUJvk70UWM?=
 =?us-ascii?Q?q2oG53mlR0ixKQ2vHSjwu8GOaNzJIuL2kMlEv69G6yuCZFXiErUbamsjjZ7c?=
 =?us-ascii?Q?/s8b94HQmfgQ/gfPOuOPUVJlJ969VmdkN7HI/EuvAKyoo7mDY49hfRZVrc25?=
 =?us-ascii?Q?zgpZ3ohadmrcmV+akC87Io80n9EXzYbhFDfgZbvWq+vwnnJB6gloPp7X3oZ5?=
 =?us-ascii?Q?HL5cTwcbU2hhDPSzXHXYYVysBU2St1v64xXtB0E+SGYQ8oJu7mHbGhSp7aN2?=
 =?us-ascii?Q?0YBZZgqcSmiz7UvtyKitWOa4cSglCCOcLY3hXCHZ28UYoahDmNs2snXobCHS?=
 =?us-ascii?Q?aIPGt8gpLnDcSLap5Dz+3W5uqcptGx+5POvPLAwM1+Kz8nAnd8AaJtp1KwH2?=
 =?us-ascii?Q?J/n0xQXH8F/wcP+uk9IPUIpXqfV6gxbARbT2DTiFQ5LtthEsP+zhEqZAAtG7?=
 =?us-ascii?Q?6ee+/fJl2ws41aLrsWvjdNjjWVVU5ILQsChMCylSN+L1DIMJPJ0uONkk4W0c?=
 =?us-ascii?Q?UPI8iZ3iIl+FOts5lu9L3YpD1BcvYhjH0f1VHmj2Wp4e4c2FqyRf/r2pR5bO?=
 =?us-ascii?Q?zLdOZojYSqVruAVouxWPcsDjkH6r9T6F71FkaJKU2M1XJ3l+ckx46B2bGVLh?=
 =?us-ascii?Q?SA70uRsdYPJsdPpguM49dII5C1nloax2VoQuzfsbdb96QVUpPMPGxnWqG8H0?=
 =?us-ascii?Q?lR3a0muzPNna5eDGIq9Ogff+aZ0LkkyaGLGKwaYCpcRjm2J5GLkcZbJdkgeN?=
 =?us-ascii?Q?8aMr2lhEoGMbkDOM2CjDfcohscHuYB0Q?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XPeCD9A3IgunpF/efIbPJ85S7FvS9iB7qyhRFhpdFQh2o7eWAAyHUk9ztZhD?=
 =?us-ascii?Q?IPZrJT2pF7rjY5b2JaLXQHv2cHaQiwxCzOPSqymaxdGYYcQgQgFAmfxrRfkP?=
 =?us-ascii?Q?TP1DcSH39r5/nJ2QG80De4Jza8LdJTi6XGSdqxh/OxLdr0TdoWsH72D0/+SW?=
 =?us-ascii?Q?8paF+n/d54zSU50vHNffdXXbU2FZLkCjXYR74pPlwo3CBTdEGkausFhxy1Gg?=
 =?us-ascii?Q?d5+n9EcevWLj1QNzD9FEzz8pK8fBOCNfIwM/sv1PszSU55JPwPGrEzxohzCX?=
 =?us-ascii?Q?q1bDMCN2OTD/v9QpiS0YkjIFK1Epv+fg+rIg5cME/1kzdy51Pat48RiuvQi4?=
 =?us-ascii?Q?tlMb3+BFdA93YXf4PNRJutVwclLXvuZeTdBggsdH2akJ8CdaF0mhnoJzuPBd?=
 =?us-ascii?Q?Q7rRR32KUPd8+AgHwSULfGNY4YM8dwtB5MK+ghT4T2AVBENNBZXQaWewD8tW?=
 =?us-ascii?Q?ycO0dGi5rDZNpfr/HE9ubiKBx+/gFoFByEn+T3T5igj+AICrDOWwhZraXUoJ?=
 =?us-ascii?Q?jQUu8ruN0IeGL32C4IaAnGlbLg55KGEhh05Q2oj36+CDcxoqoSW/eIaFt2YJ?=
 =?us-ascii?Q?KG5QrlM4fvLyqAO2n5SvK3e9R9emHYpNmx8ejpQeGxqapJA8GVpbnTCtoBTU?=
 =?us-ascii?Q?1jCByP3bWjWuNLNSErpI8Qkp2h/EAjhgIIUWS2V6xkmFmgRLIvAT0nb7hJGz?=
 =?us-ascii?Q?bIpx+e/9It5NKf60/AsxPTInFRqln4CgKzmegQIf2TcvUpF6f9zP0252/LvJ?=
 =?us-ascii?Q?VO3Vh6bjH1T7jT2+5CSMm/aNISXe52OmcJIqWgJRtEH1jNTr1dWI8987CvXp?=
 =?us-ascii?Q?YGYT79Q7plKz1dKY61J9XrPrLpwE3qXzpMswQ89twTpbxC8sPY8+4oPPVb3G?=
 =?us-ascii?Q?xLPiQmVT9Bz1QS87QOQJz0jBBwteV3Ulmm9ZBnOBoHJ80m+kbHlJrzP4pMZm?=
 =?us-ascii?Q?s+BRunVlF66/LjXx3Z3DhiY8WloJJDfzQTK5ru3fYcBKWJyhWQdrrTixpBFS?=
 =?us-ascii?Q?B1FVth2kTFJmUEyfSC1Jv/AfxgsX4a/6mkDdKfB55oMMWc9JNra8vzvECzlH?=
 =?us-ascii?Q?GvBB5Ohwm7IgLKgVLFCAD6wsMIZz7Ku1NoclUB/VefoHMhE3IbFy87Uj72Z2?=
 =?us-ascii?Q?YUvTymijCxWFFLZktlc2pJU0H4zQj6S62xYhD1DjfwwkYkqz2yBICPF+U76R?=
 =?us-ascii?Q?w8s9FatVS8zMoNo2pKCwbYMvaYDk0fd2tT44dYz+TB67lg9vNoNoI0UNZTwW?=
 =?us-ascii?Q?wPhOO0bhHSbfgseKJ0zrB64uzpyC2I0/pHDUp/ijSCXyveiFzXn0w4TfDj1R?=
 =?us-ascii?Q?uLFDkCiW01k9mFNW5shl4oNe6SWUApO9Ly9NeOFD8yPOFMRRHaDZGgQz3fZc?=
 =?us-ascii?Q?wZFJ0XpppQuzyFNyCXhivRE8Di7INPQ2V0lQFxUflDMvuHT+7y/4L5EYa4WI?=
 =?us-ascii?Q?Wua7rVLzG3nbBPHe72pQZeet5QJ55E0SFFRnuezb8NfQdvRTKD72KHD5yzWt?=
 =?us-ascii?Q?6tvIIjq/nr7rD3n/p0dV+ZK2tMmFoelL3wJ1ct7t4HtwPb/MPRItQsyav4zD?=
 =?us-ascii?Q?5Zdg2+Tuc/QZpm22k2lLabbmEL4WEILnYtagnYY0S66UhuYwUQvwGDEj8FJe?=
 =?us-ascii?Q?Ti6k504UFfT6qG7bD4EA5VJlzNtal2vbhIc0Ku58PliV?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c27f959b-546b-4f06-383b-08dd562c2081
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2025 06:09:27.9981 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: In3PY//BxR3xJP3R45uEgzdD0pObrEsmtyD9+Y2ZSOQbsREI8yOCmcBwFO6/15to5xvcqywe8gXWColX5siMnA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6245
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740550180; x=1772086180;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rKnYFPfm4KnZI5IPZ8M9VUmX7pjnWVDhcjpKZ+uy8Dc=;
 b=jHKhaZq20HMahvt4wiHQJT0bCJoWUNLWLOAuAVBclOgx2fHmXM34pIyB
 dhclbqRYaalym/cy8qkActFFekdg7+7u+WpQBnSYHY0hWmCIKWew1lGIG
 yhb89lTLjzxkuz/Lq8lWwEtZtP++2fC1Gbm2V6zYpuk4vmr6jNgyr7CSR
 umRznM4S76nnhiHM8dtfI56xIAajBcOZ666RzN0UTeQ2iVF201d+KSyr8
 NGkQcbn1JIQ4AI/rZsGHEbMBfOEgtyMIHuHQvlmxDT8CjrisVEqkwsLS9
 hu/lSqt02Dtpqmqp0i8NOFczmhLMKG0j0qiZcE7/fATPUbv0HGD/Lz/+7
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jHKhaZq2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/3] ice: E825C PHY
 register cleanup
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of G=
rzegorz Nitka
> Sent: 10 February 2025 19:41
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kolacinski, Karol <karol.kolacinski@intel.com=
>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; horms@kernel.org; Kitsze=
l, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/3] ice: E825C PHY registe=
r cleanup
>
> From: Karol Kolacinski <karol.kolacinski@intel.com>
>
> Minor PTP register refactor, including logical grouping E825C 1-step time=
stamping registers. Remove unused register definitions (PHY_REG_GPCS_BITSLI=
P, PHY_REG_REVISION).
> Also, apply preferred GENMASK macro (instead of ICE_M) for register field=
s definition affected by this patch.
>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 31 ++++++++++-----------
> 1 file changed, 14 insertions(+), 17 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
