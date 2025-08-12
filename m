Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 48AB2B22E4B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 18:52:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AFFBC42908;
	Tue, 12 Aug 2025 16:52:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LpSuuzNfQmff; Tue, 12 Aug 2025 16:52:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1075942920
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755017565;
	bh=mCgyK5zw3oqMEzuIeD4wxwJbyHUSRAl765vdkT+38dI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0ZT+Se497megk01mNcku0TIMFY3UiPQpXMoaa65cRbDDsTYUHrZ+IAS2j4T0m+ebt
	 O6UwnwPlDxNCivHiZClSYZZ3vWSYy0+tDRi6N4EQZCrfalWBES3DZ2QWSIjJAsYS2T
	 PgMYo9m26KcBHeECPqq/AJcHi7UjFTVEVRfazG3rubT7CyAUEQHBOWbgsZucwp+vAX
	 7UuhBV2oEGFd85KwzhryQCU9CjMCPLnKpyMurrU/aIUpLtNB3iYe4mznx19hTRQUKO
	 UhV6pcCzlyQ5xxkc1TIjB50AsUptWuQJLwInK2AYGVvj3WGraYLwX99FxiCeVKqMkj
	 qWKA8ipUH6aAQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1075942920;
	Tue, 12 Aug 2025 16:52:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4905D1C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:52:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D812F400B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:52:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Kt7D-fZxrTbU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 16:52:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2AE6E40079
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2AE6E40079
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2AE6E40079
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:52:42 +0000 (UTC)
X-CSE-ConnectionGUID: xWkb5gdsSHOKaQKuiz/kQg==
X-CSE-MsgGUID: kvHuR/MGSvGbXIeXZPSKjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="59918766"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="59918766"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 09:45:36 -0700
X-CSE-ConnectionGUID: CfrdE50zSyylkVPHpzt68A==
X-CSE-MsgGUID: Lk1D6N/KTOSctKd0R/8byg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="197240934"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 09:45:36 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 12 Aug 2025 09:45:35 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 12 Aug 2025 09:45:35 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.42) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 09:45:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MRYQbZw2XHyGUIRc8uBuKAuB6iEYn4+dcBgpIFt4jY6DBy7OX3PNw41CIX+iaaj3biH8feAsd2c3RxWvKQZEdDugwXEVEbZ5BW812AsVxXWj1yr1TpFf6y4YCHdEItu0G5KBWn+HhYJTNE0AWlmY1boPs6YXoj3Hntb6FFogOt5p7iJsP2NSGL0y4pSSFJm70vM6sT+U/KtCaJDMIPOAcSkXH8Z/dSWMYOuJmNvVGOCaaHOiLlCaabDcbSllxV33dBndzSY6Z204S6y7rHZAd//vLbQsNkd2iyITNtX3UrJMI2CdjrvirpFgafV3Tf8zwKJ0EFY4ClmnNk4pp2wUHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mCgyK5zw3oqMEzuIeD4wxwJbyHUSRAl765vdkT+38dI=;
 b=Oue/eJVzfNkigyxmSrzI+aMjI4i8ZSY2/fF+yA/8lAm6Us2gk8Duh0lIeSLVxNwQCKdYNKrsS8p5/yiRJJBzHicGwLWmWJQhB11c4+0ZOxIs7n6D8rR9hjpdpKp4kh7TwPAucPMOO8dEYK3BOaF/dGsZCezrXzZRcBYTICYnQ4bPGRQVlg17/4g+vO5abv0rwgk7RTP6uT2U+N2+lef0W8gdaaOtJcxTTnuTP+l1Ivl1rciwghPDQdAkp3bz9UElkmy69A0KjuZKONPjqkM1nFSnrYDgzxH2/diIB93hPaElakdXy/7C7fHmLMngvJkzmeAOGNjJqbyVnKJEbOispQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by CY8PR11MB7083.namprd11.prod.outlook.com (2603:10b6:930:51::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.22; Tue, 12 Aug
 2025 16:45:33 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9009.017; Tue, 12 Aug 2025
 16:45:33 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Hay, Joshua A"
 <joshua.a.hay@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3 6/6] idpf: remove obsolete
 stashing code
Thread-Index: AQHb/ZLn1uptwMhNQEG6xggAKKRDWrRfUkTQ
Date: Tue, 12 Aug 2025 16:45:33 +0000
Message-ID: <SJ1PR11MB62976F138EE765B82A5E39219B2BA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250725184223.4084821-1-joshua.a.hay@intel.com>
 <20250725184223.4084821-7-joshua.a.hay@intel.com>
In-Reply-To: <20250725184223.4084821-7-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|CY8PR11MB7083:EE_
x-ms-office365-filtering-correlation-id: f0e07fc7-1f65-41a3-d045-08ddd9bfa7ff
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?opjebwDwVj5Cz1ErMKhPWty1i/NRfbgJve/xdSphp1RT5/GvaQpaVvZTweNr?=
 =?us-ascii?Q?ItnF/oIDOTh60/kbzygA11E8g4b+m84BWXtbMcmTn89GQ7XTQj6RtUM0tMHY?=
 =?us-ascii?Q?pdCVXgi6UgWfyr8YHZQR9Rjt18R3RtcVzlK7KttFxMqdx4A2EYdC04XlzD82?=
 =?us-ascii?Q?j1o+PZEwOSbDMWXJSj18sObqKwdFhTaYmwiWEKB+PXLBrfuVT3u1/Nt4nYH+?=
 =?us-ascii?Q?SG7ZpV14KimAA3zbrCIujiyxqmR6Zj9d0lfYVHo6k5rR9dRcB3j64xMBYGFh?=
 =?us-ascii?Q?+se1kimfigZm2s5YVONtMfgosc6r9UpSE5Sg5uPVs+YVSB75JGlr1vigqtJc?=
 =?us-ascii?Q?4bMP2wOsjMKiHJbrTPSMHvHzVJEAQWaB64yKF9Oy6ITOFYpQhCpn2+RqQ+oI?=
 =?us-ascii?Q?0yiT+gGRLm+090gHaOLFghmQXkFdzPW1cWXMjgqm4iDdhafCf1APOU+KvZjS?=
 =?us-ascii?Q?HcY2QBYeGNuQ4OnRRlOPC9AVbiPL9kI8FjrOaVWaROEoQJs17LAZJVgWXbgc?=
 =?us-ascii?Q?ypwqBUmX1MQPGD7VGZibgmu4R9cWs4A0K/iQz2S13bAj9dLjcSfPwT6MbiXN?=
 =?us-ascii?Q?dTsa4CA6NeKphp/lB1kDD0R6jI4e7qEALf0Iz0eDDOaqJ3BE+bblJumizQe1?=
 =?us-ascii?Q?EucwcAZy4ITJtUqgbMewgWBnW4QxBiCOHCMdBQwLsSaMxMVy9Xhx5wsCeXZp?=
 =?us-ascii?Q?gY464nqcHgyE6A/Fe6r2l1wEr1X4FSILIoQ0QNevssKCxX5/wlHvxHRCzEiC?=
 =?us-ascii?Q?HOKXa+7Gu//smPGsP6rmmdvjxNZ3r5qNL80zN2sQTXm2ECglgrO8LWjHGTuS?=
 =?us-ascii?Q?kHzCj0+DGdeOPur6gcxy6Q5YgBngIHRv/pf6KFfG0jZwbPdwjr9DYuJCcN49?=
 =?us-ascii?Q?T91G2B+G7oLMlFmfes8fS9giAYAqSFjKUxwuc19SKymqr9VyL+XUiZfSo9zT?=
 =?us-ascii?Q?8GCHTkktyIIW+AKkHGXJ0fv26N1pcEBGgVM7dte2GDwAvnqCMR8kegMPQW4h?=
 =?us-ascii?Q?9VU6FxeCFhBMu4M4q1J1Q2TfsniFRaNvoBEgFCvXvgeB6DzJnJvUQo2/6hZw?=
 =?us-ascii?Q?mITN9aAKj7ZQzotHkwRa8vhWN/1q97XrcZIAQDzjdO4X//KNXyrKzJOQMP5E?=
 =?us-ascii?Q?lEj3pb0BdQxLDlbatIURIKj+Y/aKExyasA401hqYRwx6ASaVocblG4wS0FVc?=
 =?us-ascii?Q?RGUGS3L+CR9YYLgppnHOHCFbiCZVEVY8rvfrkjtrSYxdkmcRroDG900T7pI8?=
 =?us-ascii?Q?loBvP0q41KeNr6YEadby1TRHRG0XEKL2eBSr1AlOOkTS4DNRfljNjG4ZTmYL?=
 =?us-ascii?Q?ZUZ1wZnNW5/vWJRZkcjb4q3wSvNCrC4rj0fZ8akWNIxdgkVTU4id5G1PPiUw?=
 =?us-ascii?Q?KFGYOqWHI/9Mfkp7p6PRzTQx97i97+72X7QJF7PP8av0u5vOu8b2FBdjLKyA?=
 =?us-ascii?Q?XoKPLMO7/EK07u5qh5cxoJX6pQEjlwjekasFTPrvNFzmXaN7h7BerPhF9bqt?=
 =?us-ascii?Q?iaqhfoWKmqRhLzQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2YM7fgdQX9a7udiPyn1qVL7nymPa22to1TDpixKO3nchFIRyARQX0LbfTxTj?=
 =?us-ascii?Q?94iZ5bnbf9/qg/a/N2e4tk1USRXaawMxnjwq/BmX001nUNlgkx6dbXQAfy4q?=
 =?us-ascii?Q?QgHqhFvJgRd/XrdPWMerHpgLVo2zNj7AW+BhWzL6Ao1BQj7fMdBiRkDigdkv?=
 =?us-ascii?Q?s/jDKd2fvfflrQcsDF9qoVM1QAp80NpaKGORrHEiC3j1hGInGOBBPL4xcfyv?=
 =?us-ascii?Q?ozTZ3M5SWNfr/rETJ47gKFajK2nuBN0fD2SNfpk1rQ14LN5Y1d20A0CVqZwv?=
 =?us-ascii?Q?VuAv8RUCTN3poaBJ0NwgOxYk5Wd/gAaNSZTBR6OANKMxi95oyVfNnh6ZaLob?=
 =?us-ascii?Q?3d3USZEDwNthURDeYFJHEI0RB+V9cMdYx3mnZeksHwFg/qsbuDgIuS7xkBYJ?=
 =?us-ascii?Q?qreQcf0LQ0DaEzOk9bg++T+ZCk1IndGNsO+DYQoyeRnWiewQbeqceOS8PdWw?=
 =?us-ascii?Q?KGt0L1ocG0A86IKsrPIoj2YiU8NSo1ByMzVjDA/SHoeDi8u6YclJgGWPCZTy?=
 =?us-ascii?Q?vGD1/nTZ9bZGlmV4pjr+ks+MKTu3ir6yqcriiwcmxJUJagKuopc031jS0XVR?=
 =?us-ascii?Q?J6CUVJ2vK70/yfGfaMJQVPtP9L0OuysJLXxQKr1JiIOHgM36LBZ32lUx66SE?=
 =?us-ascii?Q?D04YE8fMQ7LiQosexISNiztYu4Rxy02j1WaS0sYLOOE7F7eP6Pu3q6hRQYg+?=
 =?us-ascii?Q?1I2M5MFsBNm5jlQiEegd/XU13jjiEaiQKxu+7SwYpYWPwSevDtFHTHCUkut2?=
 =?us-ascii?Q?sDYMdS/O7vQhwGaeaevZ1X9dSOVK5JyXqWQo5WJcLVA25UFGZDYPJGyL0mra?=
 =?us-ascii?Q?HjI8u6FgdVZQALxYp1/ANd4rsgJ8DVBS74ooEf02BhsFtqT8qR4vlJxmsJ0P?=
 =?us-ascii?Q?sNcoMAYVZ45DXjX9h5LFlJGhjN9LD5/kL1Dw5ncdAxKoyuCQ86jmpgXYuL5e?=
 =?us-ascii?Q?OHtWmeqkcirz5e+XTsgY+O3YUoWj6Nl58iPvI8VxMlM3v4AS7CTfqgu4KTeY?=
 =?us-ascii?Q?pXm5XLtKMrIHo4ZBvcdHGn/YL9i0LgfzUtqiy89KpYgZlOQI8KNE1Cx60sZZ?=
 =?us-ascii?Q?o8OhS5R2Khyb+OJ1dUR36hlhfEhZORxOJBBVLHMRxmlvn2o1c/is7UN5PlrO?=
 =?us-ascii?Q?jDEeBCPVD2VtgY2EGBdLC4sgRcnY5uqE7Lokg+WeEUMY/oU4vxKFTzS1k/6W?=
 =?us-ascii?Q?igMBYv/NK8MeolXSMz4NTMJMaPfmQnLJy6ry7qHBROwpRq9G3UOkTQB86Php?=
 =?us-ascii?Q?fWLhToa7fxE5cT7Ls7+X5Qbe63canDAwCXlWk7T8IkfUXDusG9dAsTh/71Ol?=
 =?us-ascii?Q?2z07sfMM+s+LDh9SylOIhyBIoLv7OTGnksgOtZOtcrWtzbTbIB/efIECqz9H?=
 =?us-ascii?Q?KeBiEoRAvRfBDUzyZyv9e/2B1xj04BVDjNg5SHPJmN4LB0Mi0CUTDq9mogZm?=
 =?us-ascii?Q?KSzHtyJMD4dpPOzC6OLhthzu2YkD8qRgXJBGuBBDq1W6s8hciw/tQv8DmrJw?=
 =?us-ascii?Q?e6M7YBedP1ZkFlzwXpT5tpDj/d9FKw/ntJe9X2NgVSKO0OBtjHHgp0HBQ/pu?=
 =?us-ascii?Q?vM0i8S6hoc95lViKWxxLJe+KXaoeI8+CBvahCe8E?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0e07fc7-1f65-41a3-d045-08ddd9bfa7ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2025 16:45:33.6427 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6fknhLB6qSfqGO7DDn9QJu4/LwomQX0pyCXgoc9EoS+aGDfuuTln4CjAR409+poacUb51lHU3T1kvhUqn/dOVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7083
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755017562; x=1786553562;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mCgyK5zw3oqMEzuIeD4wxwJbyHUSRAl765vdkT+38dI=;
 b=FbLVkD9JkJWfg0Wky+8vvNubSVTKTh+k0znIPfO3uDs1tLqdxX/PFrxB
 /R8OGPPPqMitgNn7axrRh2/swShD9f8czt5wM4UuWcs33TKW6vzdCYJSI
 wQg9g+w/Tg1nJvKYTfhaqm+ZFx2Cz8mBTzcp82QENfiWdXOyfcy/Bmdve
 NCrWMc/8NfjtoEQX0mlZPKqYBTpuJbxQVH7Q0aaa/OjmPavemJZOKnRea
 gMnAxCLqKBstykIjflRBxnLe9jNazY5hNai1T0Zex2oGWEzMqelZgO7Lx
 TRyKm74B//z/eis66n2hu0yyiren+diT60ZVq4PT2ZR/iwAle/WKwRy8T
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FbLVkD9J
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 6/6] idpf: remove obsolete
 stashing code
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
> Joshua Hay
> Sent: Friday, July 25, 2025 11:42 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Hay, Joshua A <joshua.a.hay@intel.com>;
> Chittim, Madhu <madhu.chittim@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v3 6/6] idpf: remove obsolete
> stashing code
>=20
> With the new Tx buffer management scheme, there is no need for all of the
> stashing mechanisms, the hash table, the reserve buffer stack, etc.
> Remove all of that.
>=20
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> ---
> v3: update comment format
> ---
> 2.39.2

Tested-by: Samuel Salin <Samuel.salin@intel.com>
