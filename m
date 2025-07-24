Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F455B1015D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Jul 2025 09:11:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E64E41125;
	Thu, 24 Jul 2025 07:11:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0W2z_p25N56H; Thu, 24 Jul 2025 07:11:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D381740D4F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753341115;
	bh=yH8dVfTsdOFJtdZ1swM5x0DCjCHo2A24gNA5aJbigwg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=L2x7e5Gjnj9DmiutIF6+aeFXC8meG4GKKgY5zOGV2kF2OHFydMRC3hzYJHFtFCOq4
	 xJ9H0+ZAt+kLJMVJZxvg06+wk6dGFHfnz88QAME3vGMbr1i5vpjoqYvkVTN7lQYZ/v
	 4CFilMg4gbOY90QxX2daTsSP9uRGy3SFZ/YAzJp/qlRpgLgrKnHsCZb9YHik60/U84
	 MCtRUPJdvImWat/8GM3LKo/hZEiXRxYjQ9Fyo8xKaEOAmbnxrVaoK8bkhVu1lqtvdy
	 OTgesSGlzW2wD1SDK8q5sMGB1lkHnOkxJ2oks/WtpigW5x1zxVT4XIYWbL7S9Wqi3J
	 QSFXV6DNdo/CQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D381740D4F;
	Thu, 24 Jul 2025 07:11:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2BDD3D3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 07:11:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 19D2840785
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 07:11:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4sJ3QOBzE5cm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Jul 2025 07:11:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BDAC34077F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BDAC34077F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BDAC34077F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 07:11:52 +0000 (UTC)
X-CSE-ConnectionGUID: LLqC+rZQTsuVCSpzcAjv2A==
X-CSE-MsgGUID: 1MHisgWERoKkx/4lz3INmg==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="73098345"
X-IronPort-AV: E=Sophos;i="6.16,336,1744095600"; d="scan'208";a="73098345"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 00:11:12 -0700
X-CSE-ConnectionGUID: sbcAtPzUR3qullBSZ7cz1w==
X-CSE-MsgGUID: x2glm3opS3mnAucCHxntDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,336,1744095600"; d="scan'208";a="159655700"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 00:11:12 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 24 Jul 2025 00:11:11 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 24 Jul 2025 00:11:11 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.66)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 24 Jul 2025 00:11:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IMUUjk6qmLE+5ehUKuDZJDF8mHZS6IrzCVM3i5i3aDzbYiIfpkKqLV40TpJAmZJ/ouWGe+nVRLazoX6wVBoWjsIv3ZS6+UO/N3o/9z6Fqprvqli5KnWko1XfZtwwkW4vcOBf28w6CWslDvjYM18iNmDGsg0SJXs93GHp0ftZ6TsQa9fqFIzQocFiG/qDNx3cspDb8z13Kz1jF58WAVf/u+2nPXr6ERzemuS1tt7MLayQviKvANLji1jml3iovOJwjRR3LK8+8ArQeueco1wI+9YqsOUy8ZiLseFOoUUDBBTVht1uB7rcL7wT2rmU2VCZDJqS18iW9g79QCVagDwGUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yH8dVfTsdOFJtdZ1swM5x0DCjCHo2A24gNA5aJbigwg=;
 b=bGHEj5CZ7RjfC1JEH0QyhW0e43B9lWlQhaOd8hi2w8v0KHeAzDcJ9W6ATlau++bwaNfBSWde3BeEZ9jaHrLWbWGgo6mySeHSP2N1/mgXAUKBtSjxyk8HVWefmwpmBvLcSXd1+LjZqQHzOjj95dzwU4u2FQc6vou5io/WX7+thAdUybcd6HE4+OHEzXZKj1fGEJRfxfmqdG/PqX9+P4BTL3r8h084ZND8agl3WAMeJHEke+fHB2HkgEtXzTBEvT7xnqIVFLIai3DkF7w5Di3Z/LBGRvSnKKqLTnkWbTdB2M2LZVEI6ozECf1qvKhwQbXs8m39VDl7gVnQSJN6z9CuYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by IA1PR11MB7270.namprd11.prod.outlook.com (2603:10b6:208:42a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.21; Thu, 24 Jul
 2025 07:10:27 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%3]) with mapi id 15.20.8964.019; Thu, 24 Jul 2025
 07:10:27 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>, "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [iwl-next v3 4/8] iavf: use libie adminq
 descriptors
Thread-Index: AQHbtaiKxfkJqpAzN0OFiWftM+M+yLRBaKjQ
Date: Thu, 24 Jul 2025 07:10:27 +0000
Message-ID: <IA3PR11MB898556480022FE0496393D9F8F5EA@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20250425060809.3966772-1-michal.swiatkowski@linux.intel.com>
 <20250425060809.3966772-5-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20250425060809.3966772-5-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|IA1PR11MB7270:EE_
x-ms-office365-filtering-correlation-id: 5f5d0f42-8d02-4078-3a5f-08ddca812aed
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?1cn6kGiXUbQN8dXqvFUMQd4T14ajaKRf/OMYtaoD9nHgtG9te1jRS1Jp24xd?=
 =?us-ascii?Q?Z6Ckv4rxTgi8C+zJSRAL1hkYh6DXzfunWjBzt6Jnq9+9WO5cuD5R9O/hte0K?=
 =?us-ascii?Q?UPk7iRoYoIIR7R6QpwfCnJwgbuEutUQLxbocPUDl2rclHtgLrofpyNpQQNVV?=
 =?us-ascii?Q?ekZqaXJmGUAah4jirWHbuhg0jmj9noqBKscUwQ8I50yb/X0VjAOGC0LJqUJZ?=
 =?us-ascii?Q?iKtz/N53F52jhujEcOoJG9d20qtmlpEgyxZUMM/ktHwXgoYhtYyhmsQW9uuM?=
 =?us-ascii?Q?WdMXuQ0b1TA4muRQi1E2D7K977Rw5h6RqyZo3+JWOpW1FpK+eW/bcmsrUpYN?=
 =?us-ascii?Q?FxlS9IM44dgJPOaeru0YvDH3to51nOjZtFFKTY98gZpfDEp+HQVRFUxFKlOt?=
 =?us-ascii?Q?XC6XorZmLeK/rCd9HEDHW0+65kzu1FETFKYiUTBgbz4/HM4jZ32FNx4c/7Ia?=
 =?us-ascii?Q?MTNfZCPUzt/56qDGNVzPbQLw50mirg6nTig1o6heGBZ0VKH8nFCuLGvm4w4J?=
 =?us-ascii?Q?SiKC9IOulLo8+7Ofbe3BOK1GMccFhlf9Kb5OHyLrie1azvCN2fYJ7XShtkoU?=
 =?us-ascii?Q?smPuya48YbMnxX7cILlNpHDthm3geX/QDP8sEQbH4DIOEp7gU4ITJ1X3ml6V?=
 =?us-ascii?Q?uq1TDu8dKKtz3XoVm5NrKm2aS9u4YVJicPFY+e3eL2egOkH15RwB7NlIz0PL?=
 =?us-ascii?Q?tQLTbV/gWmCiWIAxJIYN7Zkmr58mAbosfjRzNOSoIovmZSHK0FHm0zN7XQ6Z?=
 =?us-ascii?Q?EeLgR4AA3DyT+guwNR/T7YeqrqbP/hfARKdESqWw/3IT0UcfuxDHUtNWCQ0y?=
 =?us-ascii?Q?eWDMIrodIk9FeuFQrb3unbt1sbeB47imNi1BQi0RxQp7PVocRCyEXN/KEeZh?=
 =?us-ascii?Q?rEX6QyeS2ttq82SXBatNo4i3/xM8Gjc9oCv1/w/TW7JIcxDZCK9A8imz3lVs?=
 =?us-ascii?Q?Q1x6UOhjk6a9k90i65WqupuprrHOS85U6hGy1KJsvfZdTnZgn1e4PYkEpY2r?=
 =?us-ascii?Q?lNK3OhbK0kpSxSzrS2VKYckiHsfl9Aj7BFbUWEDau4qqZbYl3TMyXg4+Ubpl?=
 =?us-ascii?Q?rNRzGA8noj1k+ZwERC0Y69BR5RiFvqQc6c56G7h58iR8NA6055WGpOeBv4u9?=
 =?us-ascii?Q?UL5STgl0ddxMdJ/vEmMu2ln8XefIhBH7LfQpfoXmmqgZs6EReSp4u2YKQaoS?=
 =?us-ascii?Q?PtXOW1vrixTMwNlaNRYv6g3h6Sqovas+DnWZ++JCg5eWKn9enhqHTm6HsZiK?=
 =?us-ascii?Q?KXaxMn40HJlWaZqNlsdH9o0PKd6MImZU8yM5Pm1voISYhZe6CPwqMcRN37PR?=
 =?us-ascii?Q?G3Xd+mdI0W/e996yzFO2QsaN1U58QaV0/ZjQNa0QpjhcvZf2CrvN5JaMucrK?=
 =?us-ascii?Q?yBXfHOLEijGDjo4mOEXk36y8gTlcfBhdX0WZQqz9f8aAQyeYCKjfaDePmunm?=
 =?us-ascii?Q?NUhPPcDCjAJAEfxFmEXWyDJwywgDD1uy8Dx7wn/rOvogyPV2jhUeCg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nyTLX1dttaUjojCaCsxWW9MgWyJ4r2r6I9bBBb57dpp5WUB50Vrlt2/NUik3?=
 =?us-ascii?Q?D3Hd/jq2yGbXbHew0+5IH0THbUKvrDjNM92eTEVZQzUhqrrCp0yqSzvLU2PX?=
 =?us-ascii?Q?Xl9lP5SuuGVtJCkaTOn52XukO29x7fB2oT+apyIgMpgo9wGi0SETUHvZhFto?=
 =?us-ascii?Q?pkuW2OyVeXWKX3D+KQSQRtIAsOQHLyv6t9MfjuEhkIrsLI0H6qHZvvBnXp73?=
 =?us-ascii?Q?k0iJ0miDm/iKTAxl5CzxNPsmxgph9w7yptwX9DalfUNcl/e6xszI5UNWgZN3?=
 =?us-ascii?Q?pMp0nMSjHsil7awjrM/59TTSyT79XkMc7HVpHAtksq4M1h//v35oFzrRNjjk?=
 =?us-ascii?Q?7bGNWeuqqSZ1O4+4ovBHltFXM7Qlf/FhEPAYLlHdquzsfm7+xtA9sSQLVEgc?=
 =?us-ascii?Q?7MMZKumWUn6pEStcJkz5e91SkCQRgLwPDFaXDZvSJ4xcQJUEQb0Truvj5Bhu?=
 =?us-ascii?Q?pTEGwwDJnDm1oksJk5GWacxlw8Rjul5J/7XAPRHam5ZLyjGmS3OWv/AmQvyg?=
 =?us-ascii?Q?h31JRVT6WK1ovmDhcOepE+/7qRoMxcnHDtrPsaES3dHOCgL36HVxIwFgEtVO?=
 =?us-ascii?Q?I9jDXxZCCz0OyyzQIxnzyjAwvjLp2BJIkX5+zQFOiCYnNUMmK0SksX2Nsvg9?=
 =?us-ascii?Q?xdb6fEqa28Mgwm9JhlDDBvCJnxfZELhaJmVAoYvK+pwkyLbDjz41S/gqH9/7?=
 =?us-ascii?Q?1T1FA99jSzxdQare0e/ywh+NacrAEYoT1m8iAikmhXeK2aDk/MK/mDsJ2JRY?=
 =?us-ascii?Q?4lU980JKboc+p78IG175tNMudSM4/4mtX3ArxAGYBUUQxIL7oia2C/RlXyK/?=
 =?us-ascii?Q?VvKHqILFVGcBIyrVuqEGQek5DzCGXlugb6duUdEf6RQo0bIFLzkh0Na1bS4/?=
 =?us-ascii?Q?LM0yU0VKSgRlAEUWqxKPjqSYyqlpRD+PmFbxW4P+mlBOXeknobQ0wbMz7xGu?=
 =?us-ascii?Q?Z4PrAPGtLv/e58yp2oje545eE6ApVOiFmLc8h/PdvknWHti5Q+Q/trNu0IZ/?=
 =?us-ascii?Q?oo6UHzCK+L4Mb4D72NPMLWllkVIEUBIwOUc9t4CF8FitqbHQVMrGJDrtJK8S?=
 =?us-ascii?Q?L44PEfbnTAZgWJYvRQTFrl/BqUjF7i8/e+7g1WQunjj9oS6H8hZRgghb4YYR?=
 =?us-ascii?Q?8UbvKUpc55z1+/e7ycruYZKg1RVkmaHTyEhnPE7i53wT4wuIfu13Tfu5GlhD?=
 =?us-ascii?Q?JPaKTWvTLdVUeuBApMLXscOLx/r4wcKq44UZ4+iHDd7BoRxLW1PJnfgvYN5m?=
 =?us-ascii?Q?fwlb2XKKjZSSj222LGVc4pJxfEl7adDSsxIReVhYzQIiq+oCbXeyHUJYdnAL?=
 =?us-ascii?Q?yushDux/q9luAI91gnaj7MmliylAmpzQe6ip/w4qWRTPaZszfsvEBqbTBBxr?=
 =?us-ascii?Q?GBS8if25WB473hBzMQmNE7mwoxW2ZqKaXt2lBFqwQeyISIX2q4aOZTcrWUwE?=
 =?us-ascii?Q?+rPkCKLP0W3Oxph7XwtrtkN36sJcTif6hGDwX69uLi3gaBxtZH2dsA3IGSoT?=
 =?us-ascii?Q?gjsglSmEOUz5UrNScueDU/qsqiAUO+NH5bssDSkWb2dayTspzIWF30rIjAt+?=
 =?us-ascii?Q?28Hk2EgeRRwdSwDsq3oWpbKg7Cq6no0qOx2apWyRGUetwQbXmUqcLRTHkWLk?=
 =?us-ascii?Q?oQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f5d0f42-8d02-4078-3a5f-08ddca812aed
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2025 07:10:27.6067 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: frVdfooKTQtVQKEy+9TQUkhp60YDb1UT4PrsAUDQblCTjLidxBgo/CxgJpc0hPSggjXskT9JLABLyq3J7yEe9i3Ju1DotZcvKxLOYtESs7o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7270
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753341112; x=1784877112;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rKwRJATrNRlrtudJOO/mYRIFu8gAzt0Q3ZFmuVesaSU=;
 b=RKN1l/lgJh3yDs2D65JjNYOVgRxGSVmoL1CgQwPvbrz4cQ+bgRjKapx/
 UFMZYyTHVcQ4elxjOwY9mtnBywxF4OR6DRXzxKAuxk/KZu8gkSbd8mgmb
 4qRGxc7GAxNw3hmhYxgMeC8HlIbo+qPfN4fTHv9mWSn5nvndXi4AgSYBV
 W96PBi+xmmsXVDINZL+Tt8GmQLvvz0XQHP0FdvmQY4mGD7Pz5ddc2kMkz
 J8CLwewLv+38+BCuUkIWFjS1yhvdp9hI63GZiCRjELhIaSR5Vc47A30tl
 hmMZaYV3Taby1l5gaCcp/Y0NKJCVFQiV7vQ8g8IZfqGVvZz/mo2I3sPZl
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RKN1l/lg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v3 4/8] iavf: use libie adminq
 descriptors
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal
> Swiatkowski
> Sent: Friday, April 25, 2025 8:08 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Kwapulinski, Piotr
> <piotr.kwapulinski@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Jagielski, Jedrzej <jedrzej.jagielski@in=
tel.com>;
> Zaremba, Larysa <larysa.zaremba@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [iwl-next v3 4/8] iavf: use libie adminq descr=
iptors
>=20
> Use libie_aq_desc instead of iavf_aq_desc. Do needed changes to allow cle=
an
> build
>=20
> Use libie_aq_raw() wherever it can be used.
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_adminq.h |  12 +-
> .../net/ethernet/intel/iavf/iavf_adminq_cmd.h |  83 +----------
>  .../net/ethernet/intel/iavf/iavf_prototype.h  |   4 +-
>  drivers/net/ethernet/intel/iavf/iavf_type.h   |   2 +-
>  drivers/net/ethernet/intel/iavf/iavf_adminq.c |  62 ++++----
> drivers/net/ethernet/intel/iavf/iavf_common.c | 134 +++++++++---------
>  6 files changed, 106 insertions(+), 191 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_adminq.h
> b/drivers/net/ethernet/intel/iavf/iavf_adminq.h
> index 406506f64bdd..bbf5c4b3a2ae 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_adminq.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf_adminq.h
> @@ -9,7 +9,7 @@
>  #include "iavf_adminq_cmd.h"
>=20
>  #define IAVF_ADMINQ_DESC(R, i)   \
> -	(&(((struct iavf_aq_desc *)((R).desc_buf.va))[i]))
> +	(&(((struct libie_aq_desc *)((R).desc_buf.va))[i]))
>=20
>  #define IAVF_ADMINQ_DESC_ALIGNMENT 4096
>=20
> @@ -39,7 +39,7 @@ struct iavf_asq_cmd_details {
>  	u16 flags_dis;
>  	bool async;
>  	bool postpone;
> -	struct iavf_aq_desc *wb_desc;
> +	struct libie_aq_desc *wb_desc;
>  };
>=20
>  #define IAVF_ADMINQ_DETAILS(R, i)   \
> @@ -47,7 +47,7 @@ struct iavf_asq_cmd_details {
>=20
>  /* ARQ event information */
>  struct iavf_arq_event_info {
> -	struct iavf_aq_desc desc;
> +	struct libie_aq_desc desc;
>  	u16 msg_len;
>  	u16 buf_len;
>  	u8 *msg_buf;
> @@ -72,8 +72,8 @@ struct iavf_adminq_info {
>  	struct mutex arq_mutex; /* Receive queue lock */
>=20
>  	/* last status values on send and receive queues */
> -	enum iavf_admin_queue_err asq_last_status;
> -	enum iavf_admin_queue_err arq_last_status;
> +	enum libie_aq_err asq_last_status;
> +	enum libie_aq_err arq_last_status;
>  };
>=20
>  /**
> @@ -123,6 +123,6 @@ static inline int iavf_aq_rc_to_posix(int aq_ret, int=
 aq_rc)
>  #define IAVF_AQ_LARGE_BUF	512
>  #define IAVF_ASQ_CMD_TIMEOUT	250000  /* usecs */
>=20
> -void iavf_fill_default_direct_cmd_desc(struct iavf_aq_desc *desc, u16 op=
code);
> +void iavf_fill_default_direct_cmd_desc(struct libie_aq_desc *desc, u16
> +opcode);
>=20
>  #endif /* _IAVF_ADMINQ_H_ */
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_adminq_cmd.h
> b/drivers/net/ethernet/intel/iavf/iavf_adminq_cmd.h
> index bc512308557b..0482c9ce9b9c 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf_adminq_cmd.h
> @@ -4,6 +4,8 @@
>  #ifndef _IAVF_ADMINQ_CMD_H_
>  #define _IAVF_ADMINQ_CMD_H_
>=20
> +#include <linux/net/intel/libie/adminq.h>
> +
>  /* This header file defines the iavf Admin Queue commands and is shared
> between
>   * iavf Firmware and Software.
>   *
> @@ -21,87 +23,6 @@
>  /* API version 1.7 implements additional link and PHY-specific APIs  */ =
 #define
> IAVF_MINOR_VER_GET_LINK_INFO_XL710 0x0007
>=20
> -struct iavf_aq_desc {
> -	__le16 flags;
> -	__le16 opcode;
> -	__le16 datalen;
> -	__le16 retval;
> -	__le32 cookie_high;
> -	__le32 cookie_low;
> -	union {
> -		struct {
> -			__le32 param0;
> -			__le32 param1;
> -			__le32 param2;
> -			__le32 param3;
> -		} internal;
> -		struct {
> -			__le32 param0;
> -			__le32 param1;
> -			__le32 addr_high;
> -			__le32 addr_low;
> -		} external;
> -		u8 raw[16];
> -	} params;
> -};
> -
> -/* Flags sub-structure
> - * |0  |1  |2  |3  |4  |5  |6  |7  |8  |9  |10 |11 |12 |13 |14 |15 |
> - * |DD |CMP|ERR|VFE| * *  RESERVED * * |LB |RD |VFC|BUF|SI |EI |FE |
> - */
> -
> -/* command flags and offsets*/
> -#define IAVF_AQ_FLAG_DD_SHIFT	0
> -#define IAVF_AQ_FLAG_CMP_SHIFT	1
> -#define IAVF_AQ_FLAG_ERR_SHIFT	2
> -#define IAVF_AQ_FLAG_VFE_SHIFT	3
> -#define IAVF_AQ_FLAG_LB_SHIFT	9
> -#define IAVF_AQ_FLAG_RD_SHIFT	10
> -#define IAVF_AQ_FLAG_VFC_SHIFT	11
> -#define IAVF_AQ_FLAG_BUF_SHIFT	12
> -#define IAVF_AQ_FLAG_SI_SHIFT	13
> -#define IAVF_AQ_FLAG_EI_SHIFT	14
> -#define IAVF_AQ_FLAG_FE_SHIFT	15
> -
> -#define IAVF_AQ_FLAG_DD		BIT(IAVF_AQ_FLAG_DD_SHIFT)  /* 0x1
> */
> -#define IAVF_AQ_FLAG_CMP	BIT(IAVF_AQ_FLAG_CMP_SHIFT) /* 0x2    */
> -#define IAVF_AQ_FLAG_ERR	BIT(IAVF_AQ_FLAG_ERR_SHIFT) /* 0x4    */
> -#define IAVF_AQ_FLAG_VFE	BIT(IAVF_AQ_FLAG_VFE_SHIFT) /* 0x8    */
> -#define IAVF_AQ_FLAG_LB		BIT(IAVF_AQ_FLAG_LB_SHIFT)  /*
> 0x200  */
> -#define IAVF_AQ_FLAG_RD		BIT(IAVF_AQ_FLAG_RD_SHIFT)  /*
> 0x400  */
> -#define IAVF_AQ_FLAG_VFC	BIT(IAVF_AQ_FLAG_VFC_SHIFT) /* 0x800  */
> -#define IAVF_AQ_FLAG_BUF	BIT(IAVF_AQ_FLAG_BUF_SHIFT) /* 0x1000 */
> -#define IAVF_AQ_FLAG_SI		BIT(IAVF_AQ_FLAG_SI_SHIFT)  /*
> 0x2000 */
> -#define IAVF_AQ_FLAG_EI		BIT(IAVF_AQ_FLAG_EI_SHIFT)  /*
> 0x4000 */
> -#define IAVF_AQ_FLAG_FE		BIT(IAVF_AQ_FLAG_FE_SHIFT)  /*
> 0x8000 */
> -
> -/* error codes */
> -enum iavf_admin_queue_err {
> -	IAVF_AQ_RC_OK		=3D 0,  /* success */
> -	IAVF_AQ_RC_EPERM	=3D 1,  /* Operation not permitted */
> -	IAVF_AQ_RC_ENOENT	=3D 2,  /* No such element */
> -	IAVF_AQ_RC_ESRCH	=3D 3,  /* Bad opcode */
> -	IAVF_AQ_RC_EINTR	=3D 4,  /* operation interrupted */
> -	IAVF_AQ_RC_EIO		=3D 5,  /* I/O error */
> -	IAVF_AQ_RC_ENXIO	=3D 6,  /* No such resource */
> -	IAVF_AQ_RC_E2BIG	=3D 7,  /* Arg too long */
> -	IAVF_AQ_RC_EAGAIN	=3D 8,  /* Try again */
> -	IAVF_AQ_RC_ENOMEM	=3D 9,  /* Out of memory */
> -	IAVF_AQ_RC_EACCES	=3D 10, /* Permission denied */
> -	IAVF_AQ_RC_EFAULT	=3D 11, /* Bad address */
> -	IAVF_AQ_RC_EBUSY	=3D 12, /* Device or resource busy */
> -	IAVF_AQ_RC_EEXIST	=3D 13, /* object already exists */
> -	IAVF_AQ_RC_EINVAL	=3D 14, /* Invalid argument */
> -	IAVF_AQ_RC_ENOTTY	=3D 15, /* Not a typewriter */
> -	IAVF_AQ_RC_ENOSPC	=3D 16, /* No space left or alloc failure */
> -	IAVF_AQ_RC_ENOSYS	=3D 17, /* Function not implemented */
> -	IAVF_AQ_RC_ERANGE	=3D 18, /* Parameter out of range */
> -	IAVF_AQ_RC_EFLUSHED	=3D 19, /* Cmd flushed due to prev cmd error */
> -	IAVF_AQ_RC_BAD_ADDR	=3D 20, /* Descriptor contains a bad
> pointer */
> -	IAVF_AQ_RC_EMODE	=3D 21, /* Op not allowed in current dev mode */
> -	IAVF_AQ_RC_EFBIG	=3D 22, /* File too large */
> -};
> -
>  /* Admin Queue command opcodes */
>  enum iavf_admin_queue_opc {
>  	/* aq commands */
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_prototype.h
> b/drivers/net/ethernet/intel/iavf/iavf_prototype.h
> index cac9d1a35a52..34b5ed87a9aa 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_prototype.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf_prototype.h
> @@ -22,7 +22,7 @@ enum iavf_status iavf_clean_arq_element(struct iavf_hw
> *hw,
>  					struct iavf_arq_event_info *e,
>  					u16 *events_pending);
>  enum iavf_status iavf_asq_send_command(struct iavf_hw *hw,
> -				       struct iavf_aq_desc *desc,
> +				       struct libie_aq_desc *desc,
>  				       void *buff, /* can be NULL */
>  				       u16 buff_size,
>  				       struct iavf_asq_cmd_details *cmd_details);
> @@ -34,7 +34,7 @@ void iavf_debug_aq(struct iavf_hw *hw, enum
> iavf_debug_mask mask,
>=20
>  bool iavf_check_asq_alive(struct iavf_hw *hw);  enum iavf_status
> iavf_aq_queue_shutdown(struct iavf_hw *hw, bool unloading); -const char
> *iavf_aq_str(struct iavf_hw *hw, enum iavf_admin_queue_err aq_err);
> +const char *iavf_aq_str(struct iavf_hw *hw, enum libie_aq_err aq_err);
>  const char *iavf_stat_str(struct iavf_hw *hw, enum iavf_status stat_err)=
;
>=20
>  enum iavf_status iavf_aq_set_rss_lut(struct iavf_hw *hw, u16 seid, diff =
--git
> a/drivers/net/ethernet/intel/iavf/iavf_type.h
> b/drivers/net/ethernet/intel/iavf/iavf_type.h
> index f9e1319620f4..c9961a2d1217 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_type.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
> @@ -19,7 +19,7 @@
>=20
>  /* forward declaration */
>  struct iavf_hw;
> -typedef void (*IAVF_ADMINQ_CALLBACK)(struct iavf_hw *, struct iavf_aq_de=
sc
> *);
> +typedef void (*IAVF_ADMINQ_CALLBACK)(struct iavf_hw *, struct
> +libie_aq_desc *);
>=20
>  /* Data type manipulation macros. */
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_adminq.c
> b/drivers/net/ethernet/intel/iavf/iavf_adminq.c
> index 82fcd18ad660..6937b7dd44cb 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_adminq.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_adminq.c
> @@ -18,7 +18,7 @@ static enum iavf_status iavf_alloc_adminq_asq_ring(stru=
ct
> iavf_hw *hw)
>  	ret_code =3D iavf_allocate_dma_mem(hw, &hw->aq.asq.desc_buf,
>  					 iavf_mem_atq_ring,
>  					 (hw->aq.num_asq_entries *
> -					 sizeof(struct iavf_aq_desc)),
> +					 sizeof(struct libie_aq_desc)),
>  					 IAVF_ADMINQ_DESC_ALIGNMENT);
>  	if (ret_code)
>  		return ret_code;
> @@ -45,7 +45,7 @@ static enum iavf_status iavf_alloc_adminq_arq_ring(stru=
ct
> iavf_hw *hw)
>  	ret_code =3D iavf_allocate_dma_mem(hw, &hw->aq.arq.desc_buf,
>  					 iavf_mem_arq_ring,
>  					 (hw->aq.num_arq_entries *
> -					 sizeof(struct iavf_aq_desc)),
> +					 sizeof(struct libie_aq_desc)),
>  					 IAVF_ADMINQ_DESC_ALIGNMENT);
>=20
>  	return ret_code;
> @@ -81,7 +81,7 @@ static void iavf_free_adminq_arq(struct iavf_hw *hw)
>   **/
>  static enum iavf_status iavf_alloc_arq_bufs(struct iavf_hw *hw)  {
> -	struct iavf_aq_desc *desc;
> +	struct libie_aq_desc *desc;
>  	struct iavf_dma_mem *bi;
>  	enum iavf_status ret_code;
>  	int i;
> @@ -111,9 +111,9 @@ static enum iavf_status iavf_alloc_arq_bufs(struct
> iavf_hw *hw)
>  		/* now configure the descriptors for use */
>  		desc =3D IAVF_ADMINQ_DESC(hw->aq.arq, i);
>=20
> -		desc->flags =3D cpu_to_le16(IAVF_AQ_FLAG_BUF);
> +		desc->flags =3D cpu_to_le16(LIBIE_AQ_FLAG_BUF);
>  		if (hw->aq.arq_buf_size > IAVF_AQ_LARGE_BUF)
> -			desc->flags |=3D cpu_to_le16(IAVF_AQ_FLAG_LB);
> +			desc->flags |=3D cpu_to_le16(LIBIE_AQ_FLAG_LB);
>  		desc->opcode =3D 0;
>  		/* This is in accordance with Admin queue design, there is no
>  		 * register for buffer size configuration @@ -122,12 +122,12 @@
> static enum iavf_status iavf_alloc_arq_bufs(struct iavf_hw *hw)
>  		desc->retval =3D 0;
>  		desc->cookie_high =3D 0;
>  		desc->cookie_low =3D 0;
> -		desc->params.external.addr_high =3D
> +		desc->params.generic.addr_high =3D
>  			cpu_to_le32(upper_32_bits(bi->pa));
> -		desc->params.external.addr_low =3D
> +		desc->params.generic.addr_low =3D
>  			cpu_to_le32(lower_32_bits(bi->pa));
> -		desc->params.external.param0 =3D 0;
> -		desc->params.external.param1 =3D 0;
> +		desc->params.generic.param0 =3D 0;
> +		desc->params.generic.param1 =3D 0;
>  	}
>=20
>  alloc_arq_bufs:
> @@ -558,8 +558,8 @@ static u16 iavf_clean_asq(struct iavf_hw *hw)
>  	struct iavf_adminq_ring *asq =3D &hw->aq.asq;
>  	struct iavf_asq_cmd_details *details;
>  	u16 ntc =3D asq->next_to_clean;
> -	struct iavf_aq_desc desc_cb;
> -	struct iavf_aq_desc *desc;
> +	struct libie_aq_desc desc_cb;
> +	struct libie_aq_desc *desc;
>=20
>  	desc =3D IAVF_ADMINQ_DESC(*asq, ntc);
>  	details =3D IAVF_ADMINQ_DETAILS(*asq, ntc); @@ -573,7 +573,7 @@
> static u16 iavf_clean_asq(struct iavf_hw *hw)
>  			desc_cb =3D *desc;
>  			cb_func(hw, &desc_cb);
>  		}
> -		memset((void *)desc, 0, sizeof(struct iavf_aq_desc));
> +		memset((void *)desc, 0, sizeof(struct libie_aq_desc));
>  		memset((void *)details, 0,
>  		       sizeof(struct iavf_asq_cmd_details));
>  		ntc++;
> @@ -615,14 +615,14 @@ bool iavf_asq_done(struct iavf_hw *hw)
>   *  queue.  It runs the queue, cleans the queue, etc
>   **/
>  enum iavf_status iavf_asq_send_command(struct iavf_hw *hw,
> -				       struct iavf_aq_desc *desc,
> +				       struct libie_aq_desc *desc,
>  				       void *buff, /* can be NULL */
>  				       u16  buff_size,
>  				       struct iavf_asq_cmd_details *cmd_details)
> {
>  	struct iavf_dma_mem *dma_buff =3D NULL;
>  	struct iavf_asq_cmd_details *details;
> -	struct iavf_aq_desc *desc_on_ring;
> +	struct libie_aq_desc *desc_on_ring;
>  	bool cmd_completed =3D false;
>  	enum iavf_status status =3D 0;
>  	u16  retval =3D 0;
> @@ -637,7 +637,7 @@ enum iavf_status iavf_asq_send_command(struct
> iavf_hw *hw,
>  		goto asq_send_command_error;
>  	}
>=20
> -	hw->aq.asq_last_status =3D IAVF_AQ_RC_OK;
> +	hw->aq.asq_last_status =3D LIBIE_AQ_RC_OK;
>=20
>  	val =3D rd32(hw, IAVF_VF_ATQH1);
>  	if (val >=3D hw->aq.num_asq_entries) {
> @@ -717,9 +717,9 @@ enum iavf_status iavf_asq_send_command(struct
> iavf_hw *hw,
>  		/* Update the address values in the desc with the pa value
>  		 * for respective buffer
>  		 */
> -		desc_on_ring->params.external.addr_high =3D
> +		desc_on_ring->params.generic.addr_high =3D
>  				cpu_to_le32(upper_32_bits(dma_buff->pa));
> -		desc_on_ring->params.external.addr_low =3D
> +		desc_on_ring->params.generic.addr_low =3D
>  				cpu_to_le32(lower_32_bits(dma_buff->pa));
>  	}
>=20
> @@ -766,13 +766,13 @@ enum iavf_status iavf_asq_send_command(struct
> iavf_hw *hw,
>  			retval &=3D 0xff;
>  		}
>  		cmd_completed =3D true;
> -		if ((enum iavf_admin_queue_err)retval =3D=3D IAVF_AQ_RC_OK)
> +		if ((enum libie_aq_err)retval =3D=3D LIBIE_AQ_RC_OK)
>  			status =3D 0;
> -		else if ((enum iavf_admin_queue_err)retval =3D=3D
> IAVF_AQ_RC_EBUSY)
> +		else if ((enum libie_aq_err)retval =3D=3D LIBIE_AQ_RC_EBUSY)
>  			status =3D IAVF_ERR_NOT_READY;
>  		else
>  			status =3D IAVF_ERR_ADMIN_QUEUE_ERROR;
> -		hw->aq.asq_last_status =3D (enum iavf_admin_queue_err)retval;
> +		hw->aq.asq_last_status =3D (enum libie_aq_err)retval;
>  	}
>=20
>  	iavf_debug(hw, IAVF_DEBUG_AQ_MESSAGE,
> @@ -809,12 +809,12 @@ enum iavf_status iavf_asq_send_command(struct
> iavf_hw *hw,
>   *
>   *  Fill the desc with default values
>   **/
> -void iavf_fill_default_direct_cmd_desc(struct iavf_aq_desc *desc, u16 op=
code)
> +void iavf_fill_default_direct_cmd_desc(struct libie_aq_desc *desc, u16
> +opcode)
>  {
>  	/* zero out the desc */
> -	memset((void *)desc, 0, sizeof(struct iavf_aq_desc));
> +	memset((void *)desc, 0, sizeof(struct libie_aq_desc));
>  	desc->opcode =3D cpu_to_le16(opcode);
> -	desc->flags =3D cpu_to_le16(IAVF_AQ_FLAG_SI);
> +	desc->flags =3D cpu_to_le16(LIBIE_AQ_FLAG_SI);
>  }
>=20
>  /**
> @@ -832,7 +832,7 @@ enum iavf_status iavf_clean_arq_element(struct iavf_h=
w
> *hw,
>  					u16 *pending)
>  {
>  	u16 ntc =3D hw->aq.arq.next_to_clean;
> -	struct iavf_aq_desc *desc;
> +	struct libie_aq_desc *desc;
>  	enum iavf_status ret_code =3D 0;
>  	struct iavf_dma_mem *bi;
>  	u16 desc_idx;
> @@ -866,9 +866,9 @@ enum iavf_status iavf_clean_arq_element(struct iavf_h=
w
> *hw,
>  	desc_idx =3D ntc;
>=20
>  	hw->aq.arq_last_status =3D
> -		(enum iavf_admin_queue_err)le16_to_cpu(desc->retval);
> +		(enum libie_aq_err)le16_to_cpu(desc->retval);
>  	flags =3D le16_to_cpu(desc->flags);
> -	if (flags & IAVF_AQ_FLAG_ERR) {
> +	if (flags & LIBIE_AQ_FLAG_ERR) {
>  		ret_code =3D IAVF_ERR_ADMIN_QUEUE_ERROR;
>  		iavf_debug(hw,
>  			   IAVF_DEBUG_AQ_MESSAGE,
> @@ -892,14 +892,14 @@ enum iavf_status iavf_clean_arq_element(struct
> iavf_hw *hw,
>  	 * size
>  	 */
>  	bi =3D &hw->aq.arq.r.arq_bi[ntc];
> -	memset((void *)desc, 0, sizeof(struct iavf_aq_desc));
> +	memset((void *)desc, 0, sizeof(struct libie_aq_desc));
>=20
> -	desc->flags =3D cpu_to_le16(IAVF_AQ_FLAG_BUF);
> +	desc->flags =3D cpu_to_le16(LIBIE_AQ_FLAG_BUF);
>  	if (hw->aq.arq_buf_size > IAVF_AQ_LARGE_BUF)
> -		desc->flags |=3D cpu_to_le16(IAVF_AQ_FLAG_LB);
> +		desc->flags |=3D cpu_to_le16(LIBIE_AQ_FLAG_LB);
>  	desc->datalen =3D cpu_to_le16((u16)bi->size);
> -	desc->params.external.addr_high =3D cpu_to_le32(upper_32_bits(bi->pa));
> -	desc->params.external.addr_low =3D cpu_to_le32(lower_32_bits(bi->pa));
> +	desc->params.generic.addr_high =3D cpu_to_le32(upper_32_bits(bi->pa));
> +	desc->params.generic.addr_low =3D cpu_to_le32(lower_32_bits(bi->pa));
>=20
>  	/* set tail =3D the last cleaned desc index. */
>  	wr32(hw, IAVF_VF_ARQT1, ntc);
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_common.c
> b/drivers/net/ethernet/intel/iavf/iavf_common.c
> index aa751ce3425b..cc71e48b5689 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_common.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_common.c
> @@ -12,55 +12,47 @@
>   * @hw: pointer to the HW structure
>   * @aq_err: the AQ error code to convert
>   **/
> -const char *iavf_aq_str(struct iavf_hw *hw, enum iavf_admin_queue_err aq=
_err)
> +const char *iavf_aq_str(struct iavf_hw *hw, enum libie_aq_err aq_err)
>  {
>  	switch (aq_err) {
> -	case IAVF_AQ_RC_OK:
> +	case LIBIE_AQ_RC_OK:
>  		return "OK";
> -	case IAVF_AQ_RC_EPERM:
> -		return "IAVF_AQ_RC_EPERM";
> -	case IAVF_AQ_RC_ENOENT:
> -		return "IAVF_AQ_RC_ENOENT";
> -	case IAVF_AQ_RC_ESRCH:
> -		return "IAVF_AQ_RC_ESRCH";
> -	case IAVF_AQ_RC_EINTR:
> -		return "IAVF_AQ_RC_EINTR";
> -	case IAVF_AQ_RC_EIO:
> -		return "IAVF_AQ_RC_EIO";
> -	case IAVF_AQ_RC_ENXIO:
> -		return "IAVF_AQ_RC_ENXIO";
> -	case IAVF_AQ_RC_E2BIG:
> -		return "IAVF_AQ_RC_E2BIG";
> -	case IAVF_AQ_RC_EAGAIN:
> -		return "IAVF_AQ_RC_EAGAIN";
> -	case IAVF_AQ_RC_ENOMEM:
> -		return "IAVF_AQ_RC_ENOMEM";
> -	case IAVF_AQ_RC_EACCES:
> -		return "IAVF_AQ_RC_EACCES";
> -	case IAVF_AQ_RC_EFAULT:
> -		return "IAVF_AQ_RC_EFAULT";
> -	case IAVF_AQ_RC_EBUSY:
> -		return "IAVF_AQ_RC_EBUSY";
> -	case IAVF_AQ_RC_EEXIST:
> -		return "IAVF_AQ_RC_EEXIST";
> -	case IAVF_AQ_RC_EINVAL:
> -		return "IAVF_AQ_RC_EINVAL";
> -	case IAVF_AQ_RC_ENOTTY:
> -		return "IAVF_AQ_RC_ENOTTY";
> -	case IAVF_AQ_RC_ENOSPC:
> -		return "IAVF_AQ_RC_ENOSPC";
> -	case IAVF_AQ_RC_ENOSYS:
> -		return "IAVF_AQ_RC_ENOSYS";
> -	case IAVF_AQ_RC_ERANGE:
> -		return "IAVF_AQ_RC_ERANGE";
> -	case IAVF_AQ_RC_EFLUSHED:
> -		return "IAVF_AQ_RC_EFLUSHED";
> -	case IAVF_AQ_RC_BAD_ADDR:
> -		return "IAVF_AQ_RC_BAD_ADDR";
> -	case IAVF_AQ_RC_EMODE:
> -		return "IAVF_AQ_RC_EMODE";
> -	case IAVF_AQ_RC_EFBIG:
> -		return "IAVF_AQ_RC_EFBIG";
> +	case LIBIE_AQ_RC_EPERM:
> +		return "LIBIE_AQ_RC_EPERM";
> +	case LIBIE_AQ_RC_ENOENT:
> +		return "LIBIE_AQ_RC_ENOENT";
> +	case LIBIE_AQ_RC_ESRCH:
> +		return "LIBIE_AQ_RC_ESRCH";
> +	case LIBIE_AQ_RC_EIO:
> +		return "LIBIE_AQ_RC_EIO";
> +	case LIBIE_AQ_RC_EAGAIN:
> +		return "LIBIE_AQ_RC_EAGAIN";
> +	case LIBIE_AQ_RC_ENOMEM:
> +		return "LIBIE_AQ_RC_ENOMEM";
> +	case LIBIE_AQ_RC_EACCES:
> +		return "LIBIE_AQ_RC_EACCES";
> +	case LIBIE_AQ_RC_EBUSY:
> +		return "LIBIE_AQ_RC_EBUSY";
> +	case LIBIE_AQ_RC_EEXIST:
> +		return "LIBIE_AQ_RC_EEXIST";
> +	case LIBIE_AQ_RC_EINVAL:
> +		return "LIBIE_AQ_RC_EINVAL";
> +	case LIBIE_AQ_RC_ENOSPC:
> +		return "LIBIE_AQ_RC_ENOSPC";
> +	case LIBIE_AQ_RC_ENOSYS:
> +		return "LIBIE_AQ_RC_ENOSYS";
> +	case LIBIE_AQ_RC_EMODE:
> +		return "LIBIE_AQ_RC_EMODE";
> +	case LIBIE_AQ_RC_ENOSEC:
> +		return "LIBIE_AQ_RC_ENOSEC";
> +	case LIBIE_AQ_RC_EBADSIG:
> +		return "LIBIE_AQ_RC_EBADSIG";
> +	case LIBIE_AQ_RC_ESVN:
> +		return "LIBIE_AQ_RC_ESVN";
> +	case LIBIE_AQ_RC_EBADMAN:
> +		return "LIBIE_AQ_RC_EBADMAN";
> +	case LIBIE_AQ_RC_EBADBUF:
> +		return "LIBIE_AQ_RC_EBADBUF";
>  	}
>=20
>  	snprintf(hw->err_str, sizeof(hw->err_str), "%d", aq_err); @@ -228,7
> +220,7 @@ const char *iavf_stat_str(struct iavf_hw *hw, enum iavf_status
> stat_err)  void iavf_debug_aq(struct iavf_hw *hw, enum iavf_debug_mask ma=
sk,
> void *desc,
>  		   void *buffer, u16 buf_len)
>  {
> -	struct iavf_aq_desc *aq_desc =3D (struct iavf_aq_desc *)desc;
> +	struct libie_aq_desc *aq_desc =3D (struct libie_aq_desc *)desc;
>  	u8 *buf =3D (u8 *)buffer;
>=20
>  	if ((!(mask & hw->debug_mask)) || !desc) @@ -244,11 +236,11 @@ void
> iavf_debug_aq(struct iavf_hw *hw, enum iavf_debug_mask mask, void *desc,
>  		   le32_to_cpu(aq_desc->cookie_high),
>  		   le32_to_cpu(aq_desc->cookie_low));
>  	iavf_debug(hw, mask, "\tparam (0,1)  0x%08X 0x%08X\n",
> -		   le32_to_cpu(aq_desc->params.internal.param0),
> -		   le32_to_cpu(aq_desc->params.internal.param1));
> +		   le32_to_cpu(aq_desc->params.generic.param0),
> +		   le32_to_cpu(aq_desc->params.generic.param1));
>  	iavf_debug(hw, mask, "\taddr (h,l)   0x%08X 0x%08X\n",
> -		   le32_to_cpu(aq_desc->params.external.addr_high),
> -		   le32_to_cpu(aq_desc->params.external.addr_low));
> +		   le32_to_cpu(aq_desc->params.generic.addr_high),
> +		   le32_to_cpu(aq_desc->params.generic.addr_low));
>=20
>  	if (buffer && aq_desc->datalen) {
>  		u16 len =3D le16_to_cpu(aq_desc->datalen); @@ -297,11 +289,11
> @@ bool iavf_check_asq_alive(struct iavf_hw *hw)
>   **/
>  enum iavf_status iavf_aq_queue_shutdown(struct iavf_hw *hw, bool unloadi=
ng)  {
> -	struct iavf_aq_desc desc;
> -	struct iavf_aqc_queue_shutdown *cmd =3D
> -		(struct iavf_aqc_queue_shutdown *)&desc.params.raw;
> +	struct iavf_aqc_queue_shutdown *cmd;
> +	struct libie_aq_desc desc;
>  	enum iavf_status status;
>=20
> +	cmd =3D libie_aq_raw(&desc);
>  	iavf_fill_default_direct_cmd_desc(&desc,
> iavf_aqc_opc_queue_shutdown);
>=20
>  	if (unloading)
> @@ -327,12 +319,13 @@ static enum iavf_status iavf_aq_get_set_rss_lut(str=
uct
> iavf_hw *hw,
>  						u8 *lut, u16 lut_size,
>  						bool set)
>  {
> +	struct iavf_aqc_get_set_rss_lut *cmd_resp;
> +	struct libie_aq_desc desc;
>  	enum iavf_status status;
> -	struct iavf_aq_desc desc;
> -	struct iavf_aqc_get_set_rss_lut *cmd_resp =3D
> -		   (struct iavf_aqc_get_set_rss_lut *)&desc.params.raw;
>  	u16 flags;
>=20
> +	cmd_resp =3D libie_aq_raw(&desc);
> +
>  	if (set)
>  		iavf_fill_default_direct_cmd_desc(&desc,
>  						  iavf_aqc_opc_set_rss_lut);
> @@ -341,8 +334,8 @@ static enum iavf_status iavf_aq_get_set_rss_lut(struc=
t
> iavf_hw *hw,
>  						  iavf_aqc_opc_get_rss_lut);
>=20
>  	/* Indirect command */
> -	desc.flags |=3D cpu_to_le16((u16)IAVF_AQ_FLAG_BUF);
> -	desc.flags |=3D cpu_to_le16((u16)IAVF_AQ_FLAG_RD);
> +	desc.flags |=3D cpu_to_le16((u16)LIBIE_AQ_FLAG_BUF);
> +	desc.flags |=3D cpu_to_le16((u16)LIBIE_AQ_FLAG_RD);
>=20
>  	vsi_id =3D FIELD_PREP(IAVF_AQC_SET_RSS_LUT_VSI_ID_MASK, vsi_id) |
>  		 FIELD_PREP(IAVF_AQC_SET_RSS_LUT_VSI_VALID, 1); @@ -
> 392,11 +385,12 @@ iavf_status iavf_aq_get_set_rss_key(struct iavf_hw *hw,=
 u16
> vsi_id,
>  				    struct iavf_aqc_get_set_rss_key_data *key,
>  				    bool set)
>  {
> -	enum iavf_status status;
> -	struct iavf_aq_desc desc;
> -	struct iavf_aqc_get_set_rss_key *cmd_resp =3D
> -			(struct iavf_aqc_get_set_rss_key *)&desc.params.raw;
>  	u16 key_size =3D sizeof(struct iavf_aqc_get_set_rss_key_data);
> +	struct iavf_aqc_get_set_rss_key *cmd_resp;
> +	struct libie_aq_desc desc;
> +	enum iavf_status status;
> +
> +	cmd_resp =3D libie_aq_raw(&desc);
>=20
>  	if (set)
>  		iavf_fill_default_direct_cmd_desc(&desc,
> @@ -406,8 +400,8 @@ iavf_status iavf_aq_get_set_rss_key(struct iavf_hw *h=
w,
> u16 vsi_id,
>  						  iavf_aqc_opc_get_rss_key);
>=20
>  	/* Indirect command */
> -	desc.flags |=3D cpu_to_le16((u16)IAVF_AQ_FLAG_BUF);
> -	desc.flags |=3D cpu_to_le16((u16)IAVF_AQ_FLAG_RD);
> +	desc.flags |=3D cpu_to_le16((u16)LIBIE_AQ_FLAG_BUF);
> +	desc.flags |=3D cpu_to_le16((u16)LIBIE_AQ_FLAG_RD);
>=20
>  	vsi_id =3D FIELD_PREP(IAVF_AQC_SET_RSS_KEY_VSI_ID_MASK, vsi_id) |
>  		 FIELD_PREP(IAVF_AQC_SET_RSS_KEY_VSI_VALID, 1); @@ -
> 452,18 +446,18 @@ enum iavf_status iavf_aq_send_msg_to_pf(struct iavf_hw
> *hw,
>  					struct iavf_asq_cmd_details
> *cmd_details)  {
>  	struct iavf_asq_cmd_details details;
> -	struct iavf_aq_desc desc;
> +	struct libie_aq_desc desc;
>  	enum iavf_status status;
>=20
>  	iavf_fill_default_direct_cmd_desc(&desc,
> iavf_aqc_opc_send_msg_to_pf);
> -	desc.flags |=3D cpu_to_le16((u16)IAVF_AQ_FLAG_SI);
> +	desc.flags |=3D cpu_to_le16((u16)LIBIE_AQ_FLAG_SI);
>  	desc.cookie_high =3D cpu_to_le32(v_opcode);
>  	desc.cookie_low =3D cpu_to_le32(v_retval);
>  	if (msglen) {
> -		desc.flags |=3D cpu_to_le16((u16)(IAVF_AQ_FLAG_BUF
> -						| IAVF_AQ_FLAG_RD));
> +		desc.flags |=3D cpu_to_le16((u16)(LIBIE_AQ_FLAG_BUF
> +						| LIBIE_AQ_FLAG_RD));
>  		if (msglen > IAVF_AQ_LARGE_BUF)
> -			desc.flags |=3D cpu_to_le16((u16)IAVF_AQ_FLAG_LB);
> +			desc.flags |=3D cpu_to_le16((u16)LIBIE_AQ_FLAG_LB);
>  		desc.datalen =3D cpu_to_le16(msglen);
>  	}
>  	if (!cmd_details) {
> --
> 2.42.0


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


