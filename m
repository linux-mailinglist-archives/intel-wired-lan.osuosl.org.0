Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 94DCAAEB351
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jun 2025 11:49:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2C1841A53;
	Fri, 27 Jun 2025 09:49:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5w68rYaQjWfa; Fri, 27 Jun 2025 09:49:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1AAE241A4D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751017757;
	bh=RKOQ1zYdTXB6gB0DjMVb7jRRubiTRarrVBtlzZrbv0Q=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TGQjCDBPV5PbD0HRhyPwtzcqRdRKuaNhbFb5mb/UnHc6ztl3VCYd57NdLcjw9Hi/6
	 03AZCX97BVuLV3HHcYfZ09t27J0Z/oesDI62BzbHcwVOabFnGWgSkeZIfzXxYMWo9F
	 U3wR/j0m89YJ9FlQML+XqZGhlXaEvSqVmLKXxfeP6E4+SUD0Wd0T5oybvCdvdZw+QN
	 k4H2qNJZEgFzDOtXq8ar1GWo1XRbV6z27clWxVxFl3YZ85BBqXQbmUtt3j7J17MJ0p
	 Vzn4XzfJft9DlVcSpgmQYlqBjLq2mNh1CGlYbuXCZsiDisF7bZCBHq1mlgqBhl/580
	 3kOcFBrnT0ibQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1AAE241A4D;
	Fri, 27 Jun 2025 09:49:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id CA3E511A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 09:49:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AFA6084472
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 09:49:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FNslE1tmTBxr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jun 2025 09:49:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 13B4084441
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13B4084441
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 13B4084441
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 09:49:10 +0000 (UTC)
X-CSE-ConnectionGUID: rj1BqzWwQYeI8wmZVJP9rg==
X-CSE-MsgGUID: Y6CUyIY8Qm2BQE5KieSaiQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="57007143"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="57007143"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 02:49:09 -0700
X-CSE-ConnectionGUID: FqsYmo0IQF6rs/W3qROoJg==
X-CSE-MsgGUID: +1R+QcgTS+yxEjIWUKsguw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="153256170"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 02:49:06 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 27 Jun 2025 02:49:03 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 27 Jun 2025 02:49:03 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.43)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 27 Jun 2025 02:49:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yM18ZRp/ItFBgFlkDA12lWx0C5qyMxWcb2tunqB9k3Jt3s1kT7ia9XDJyLUCpiHqqiuNHBvLBJmSAdKULgAW4ET+QX3oeSugaZqW14VHp422XD63qvYvXl8nrGYAt9X5Q2nePotefENye7ZtnXG2G0yiSCmI26qQ1nwhAh7pPlh/saRXGBvjZbcR7Her4pmCUsebjgSdh3Frydz5NmKoUAiUqB9o9KWOu4o1mKuAlr7/Dw7IQkOtLXIZopxJ+oNaCkINSzFRLzUyRSkE2crj5Q4CbevbTTGK2fpEjfxAQ5PQu6PscMeS4Anw932jV4gDlXS6BOXJB/S4Q+XEw+oxDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RKOQ1zYdTXB6gB0DjMVb7jRRubiTRarrVBtlzZrbv0Q=;
 b=DrASomZ2YouLSBL3t193bmmRJw5oiprs4YJHfU6IsbZNkSlljEmPhVlpBhpNbr5SLmHhdYge0AVpcqPBI0T2DieBY+Qv5139x6uJn61+3+En7bd1v03+L+lnXK20W8UZdRwvyqMU5aUzxE0k+0JgEAFw0LrMLEsYvYd2TYIspHi76kjvKP+ayarocFXVGjSLv7SgeRZ9Zzwlhx4dUd0gxF3FMQN1uVpph9qmzigNUtaPCyi7s97SDA+7bd/DGmQojQnVkjqzwhxSmcZd4biKWmtu0FViEm309SpPGLtq53PqQJdt5mbQ27iL5exYpfPHB2VEZ5iWDzMgpGvw2TnO/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF7A0031045.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::33) by PH7PR11MB8527.namprd11.prod.outlook.com
 (2603:10b6:510:2ff::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.16; Fri, 27 Jun
 2025 09:49:01 +0000
Received: from DS4PPF7A0031045.namprd11.prod.outlook.com
 ([fe80::def5:6c8a:d610:7ce6]) by DS4PPF7A0031045.namprd11.prod.outlook.com
 ([fe80::def5:6c8a:d610:7ce6%6]) with mapi id 15.20.8835.026; Fri, 27 Jun 2025
 09:49:01 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "marcin.szycik@linux.intel.com" <marcin.szycik@linux.intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Osuchowski, Dawid"
 <dawid.osuchowski@intel.com>, "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [iwl-next v3 3/4] ixgbe: add Tx hang detection
 unhandled MDD
Thread-Index: AQHbgRtWOy5w8kpfc0+g+gjWMigBTrNNdq0AgMoYeOA=
Date: Fri, 27 Jun 2025 09:49:01 +0000
Message-ID: <DS4PPF7A003104525715E850768908902A58F45A@DS4PPF7A0031045.namprd11.prod.outlook.com>
References: <20250217090636.25113-1-michal.swiatkowski@linux.intel.com>
 <20250217090636.25113-4-michal.swiatkowski@linux.intel.com>
 <20250218193646.GJ1615191@kernel.org>
In-Reply-To: <20250218193646.GJ1615191@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF7A0031045:EE_|PH7PR11MB8527:EE_
x-ms-office365-filtering-correlation-id: 6dec87c6-bea2-45b8-04ef-08ddb55fd83a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?GGN7Lk2rwrWSLxKqiWJiFtG0V3uvZKVtDUD5Z5EgobuVCw0gX8+Synd3dOMn?=
 =?us-ascii?Q?j8UT6sQOr8a/lldnHn3VUveNJmhR9a3TnKykm9sjVs44EfZu86vJl+wvDKLC?=
 =?us-ascii?Q?oSngp4PMkXPCz31Q2qVKK6l0EbyafGoousQKo0bKscKT5jLsjkOvEIPCoagI?=
 =?us-ascii?Q?GSnPYilBKUiNfoJig0wudLVGr/By576cXq2VcNsaQWvP2a6VMDiNTG+DuaZC?=
 =?us-ascii?Q?QzqFJrNp9N6hu1E6oTGf02HxaaDvnENUdGPgB1mF4QgSIu2TM6MH0o/I0r1h?=
 =?us-ascii?Q?azNfeauycAAkaRljNzHy+2SzhPGTIYwdJDKBlTgc3ARqHEiLHrcv/du+e2/V?=
 =?us-ascii?Q?zzf840Q1w/gv6Ggv2GhPuNkSke+bzsxIb9Ax/rtZmgdyOFZLAN8UJb/5Icp8?=
 =?us-ascii?Q?qToD1fsOyUs5v6NI0sKkTSMwDQtkSMgBTemJEnYKKQakA80V/MGDheIVEJuD?=
 =?us-ascii?Q?g6597s1Ni0rMPDk1MMtn/1VEXX5j9JTGMIhpE6JrcEMwFczb8jtGtKbaUi9n?=
 =?us-ascii?Q?FTO2ZjKInlsSuyijZNny+oyw67kj4A30ZOTVYR9tEs/H/dw9jx54VlkW6waS?=
 =?us-ascii?Q?yBx6spwWkk+AW4AIZauM1CJ+wx+HVd9+i5mlZlzEDOu5/ykWIxDX4rHuyDEE?=
 =?us-ascii?Q?Q2idKGZvtBEdqHekFxpiK6zyrZ9zPlcinx2Is3WM8k0EKQlGXTOvEzlRz9tx?=
 =?us-ascii?Q?Q1VFQB6wlOoNPUje6+qvV/yqJ75DEEOQGEg4pVxhG03/MMUWKx0hKw1IQDf9?=
 =?us-ascii?Q?Ny5GKsqLEHmIbJA62kv2I3qYZgpFmTNt++EYCGe3OlEMNMgHRQM0BUKNCBff?=
 =?us-ascii?Q?gj2hwggWdQCMm4qVQ59pU5voZ+2cfVXfbVCvHnZ+L1aN0KTYq+fFhlfk5Egu?=
 =?us-ascii?Q?MG5kfGEuz//EScU+JP6dItF73ZwI4OXvyOw4jD2s0H7WqQW1oX3HOtI7Okyc?=
 =?us-ascii?Q?A58z9FRX9Pw2T2OaiLiX5uxLBRt8OEcYXysK+RkC+lrhXSEADM5tkbyE9X/G?=
 =?us-ascii?Q?WUqeMqDiRROc37opXZiNdKBs+n7+CDB8sek6Uy3ZuSC8+y01LZ9EUfwf17ZL?=
 =?us-ascii?Q?gP31fJsgZIM+jsHPkySKsEmhsrc6MXbQkjfrS7UacdJbEe5SFfzfU/BKk/Q1?=
 =?us-ascii?Q?ywjOLDYGx+d6ifLsY1NBpP97+xGbK4SV7XFxM4ENf4v1XhIBwnvszIDNPrek?=
 =?us-ascii?Q?NkPTVS1XM4b7tIfl0wGE4fpJHhd8K111Nu6KkL+jQBCrTwLsqCg0BOikFmok?=
 =?us-ascii?Q?hrVdbTZ0Ir2FygXvsbFJLIPHt+lDeXN8YYYreRdK+KLRGrM655mB0cd5DF3v?=
 =?us-ascii?Q?PTN0gHCBE5KXsT0QRWkv5MGnkkBUYTsMKcfeb7o4rBkJZzRVvntKMNLBEVfO?=
 =?us-ascii?Q?EDVdcphMbfw1jPXh0fn+N23Ig2YFDYiuJ+8tMoQrsUSUHIgH3IpAp8nt/LL8?=
 =?us-ascii?Q?S/whEAzR+kgHu6g4FExW/xdCBNOCh1wYT/i203qm6oaYMRKOIy1JQQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF7A0031045.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7/wGDCYLwciSBhlfX6PgtgArxzVlg2+rznWyYVRKM9Kn3x3pLEU2Y77M4bVV?=
 =?us-ascii?Q?rfsZac4Tu82Ldb8SMml+a57TwjzF1iPeU84MfDu8M+bufkHFfvpK8hn6yake?=
 =?us-ascii?Q?nczLsNRlUY4HjRJZdhOW9dmCqjjTSG8Sh9YK3uzNIYLapZAmDtJWBgatxYLj?=
 =?us-ascii?Q?U6ZX25iaYxFc8TJAFzaJCxQZOrAOuM2uXn/1JB8v5Lmxuh4JU1BZ6FNe0t9t?=
 =?us-ascii?Q?JaRHJ4zB+ebienxn6wim4r0cIPHwuokjF4xqtFfRIYWPPvCmMHuFWCFxjpsf?=
 =?us-ascii?Q?xIXohJ6DbYUXcYDDLHKRFKbGnPbg4UQj8k78S4uIh4lcJnqs/dY/3ANcldoT?=
 =?us-ascii?Q?x3f+6dE5Um2ED0cZtnHMtNEfSIXYqn1WbHCfoHB6+AEQjyJj6hOlfi6k0Xc0?=
 =?us-ascii?Q?b5gc1RSFEcmzX6r4q8/eh8oXmT3VICqGJPm/LMqjmEK+xvbjsGsyG4lONm0c?=
 =?us-ascii?Q?NzPZqId3vOeMmnL8BPMtGnrDiZW2sDknhqRnYK81e6uuratcKgtQBxgMFKy4?=
 =?us-ascii?Q?LNdApFCbcVfmkaqASvbWXhjj+yZEi6eTPvQ9WIR8BwBtWgCjqtjp8FkiyZEg?=
 =?us-ascii?Q?A837JV1uKt7H1BjsfYaxUgDY3isWxOgocylzRYpdjPB2TqMldydTAjCN/vYo?=
 =?us-ascii?Q?anHEUyns8akQlFSfApU8zRo31NdtUJDEVyh9ROZzK+ml6k8jJlwBw/jSljB9?=
 =?us-ascii?Q?UouXNj7jVS/MxaKMbJWA9OLqE2R4bRQ+w9pkZfrXykm3TgNJDgrD6N77mGyS?=
 =?us-ascii?Q?z0UHBXFWoYurCRgr9vePQnPySHOJfZjzfyDG2lHxT6rPZixqVmWICly1HQ0H?=
 =?us-ascii?Q?hhgQAzzMM7F8ghp+iWKhDVtx4vAoyRgyC2teAvGjGUrovCr7Ge8fAw4Y3SlK?=
 =?us-ascii?Q?WHs402zOfXDP1m8LaGyBD1phNyww6f+SUzwrqhtZ/2voL0N6c+122AMwEk00?=
 =?us-ascii?Q?7jiHhX9JI/29yCqcdbnGg1imw1lFuOCyt3SVVs9lI0DIt14cC2DiPFYdzUvG?=
 =?us-ascii?Q?zhJh1AaHyaIgtArf4Ply/zL+6s2XBIXLUdGO1TL5AyoDx4CHmM0EEMS5+5Sw?=
 =?us-ascii?Q?LVwxv7mExdULMLgLfC2y2WWxARG0dlfsmjnpuq8RjY35UK0fFGdXavuVRiYW?=
 =?us-ascii?Q?FaKQaYN1n6JR+paXMVCVeJnK13KweBvK6UR6DGsooa6PEYCH6ES5Dim08yGR?=
 =?us-ascii?Q?y/FoEzh6qKSMenl2xa0oQ18h7poAPbC15O3SIXPMzvK/sFOX7rRj+oYYndlt?=
 =?us-ascii?Q?ewcQx6p6yANKFneTA39ralWse54YSLzAiVX23pOYDfiuAZ/2ymcUj1IXh6W7?=
 =?us-ascii?Q?DFdSVxeEUj+VaymIrd2mNNeMBymaeH9wMYtcAn3ZAV1SnW6eANI8Be90zR5n?=
 =?us-ascii?Q?gvGQtzuCZlcuUeoANBaCuuRE4jADMKNRaAAjpQmZa1X1/ApKCKdSV6mywUUi?=
 =?us-ascii?Q?Q9Pk0a+9pkk3NHY6lOlZicg8lnsAzu90y8WK7LX+fTsMIgTJeuugCkXw47YA?=
 =?us-ascii?Q?HOm2a1UkApVxajNf6SoRjJHicx4t+anyX60jB+gd/lvUFlzme6GIYULwm1Hf?=
 =?us-ascii?Q?sby/qDIhJn3PbchCm4ddey0160/1VsU7Xz32jb56QR1XgY+4SoZ67Lsa+oNB?=
 =?us-ascii?Q?Kw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF7A0031045.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dec87c6-bea2-45b8-04ef-08ddb55fd83a
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2025 09:49:01.0495 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tpxHgUjllI0kk6LHtxufBLGXXUMxcNC0TiJocwnSveI32nbPAsgFKRQ4KPK3LUPhPTgvScTdwoLcUOrvWaJ9S8X942ljy9aGHqSudb/IvdI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8527
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751017754; x=1782553754;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RKOQ1zYdTXB6gB0DjMVb7jRRubiTRarrVBtlzZrbv0Q=;
 b=bpfJfT5YcgdmPuvnzyG817PECY3g1iXN1cS3CasUpYGOxwN+7mjDjkOz
 YqVglEkIdY4G9JXbtgqXPLRCcSeIRJvyq64WrM3Ih+NlEwAUK0PupAF1N
 sGTM2ZPDUAXwvsoGC5N/R1hF9y8lURtJwAomSj76B8TOqaajPBgKO8PuF
 a8zd/kMUqkxuPYimUEDdkvQE3E1jP9RmRdupGwB9e5Ubr5MHY7rruUku4
 Bz+sa1GaMBvlav8pm8vxNkoQzIIPvguU4HPiYq/UA16IQTTt2UZvQQvV/
 Hy//Bmzu9sX1SXFSGjBdNLecuKcliHAb2Zxd4toZFrEd2X5dOIw8bkwiO
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bpfJfT5Y
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v3 3/4] ixgbe: add Tx hang
 detection unhandled MDD
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
imon
> Horman
> Sent: Tuesday, February 18, 2025 8:37 PM
> To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org;
> marcin.szycik@linux.intel.com; Jagielski, Jedrzej <jedrzej.jagielski@inte=
l.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Kwapulinski, Piotr
> <piotr.kwapulinski@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Osuchowski, Dawid
> <dawid.osuchowski@intel.com>; pmenzel@molgen.mpg.de
> Subject: Re: [Intel-wired-lan] [iwl-next v3 3/4] ixgbe: add Tx hang detec=
tion
> unhandled MDD
>=20
> On Mon, Feb 17, 2025 at 10:06:35AM +0100, Michal Swiatkowski wrote:
> > From: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
> >
> > Add Tx Hang detection due to an unhandled MDD Event.
> >
> > Previously, a malicious VF could disable the entire port causing TX to
> > hang on the E610 card.
> > Those events that caused PF to freeze were not detected as an MDD
> > event and usually required a Tx Hang watchdog timer to catch the
> > suspension, and perform a physical function reset.
> >
> > Implement flows in the affected PF driver in such a way to check the
> > cause of the hang, detect it as an MDD event and log an entry of the
> > malicious VF that caused the Hang.
> >
> > The PF blocks the malicious VF, if it continues to be the source of
> > several MDD events.
> >
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> > Signed-off-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
> > Co-developed-by: Michal Swiatkowski
> > <michal.swiatkowski@linux.intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


