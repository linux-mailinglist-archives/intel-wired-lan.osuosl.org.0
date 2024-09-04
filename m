Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A9696B610
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 11:09:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9BCA481165;
	Wed,  4 Sep 2024 09:09:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fE9ZORccoaYJ; Wed,  4 Sep 2024 09:09:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F415F81163
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725440970;
	bh=e5d4kQmD7RpmUeCcL/ATg8TAE3e9baF9KAI+0fzP1mo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=p41n+rv/ZSjUvy11DxQ/7AEGwLw5GJx3g6C+D2i1dFwl0ZMZ/FEz940krY/DOLFP6
	 kpirM9KGkFs7ReGQ+/kaxhxlwv9YfkUd1mszWZEJaZt0Vm809t2mMkiFXnPFucm2v8
	 sx6KERCJxm3YPXioRoJz2jb1pYITYZnu/fBWBXGWgqLBNbORWAx0r1RCWyk/EIO3Jv
	 nq2dIoJyscN5jH6enlQnEvYfN6dqXqJgQLUDGhHO3sfxQ/zm0XgTjNiKTN/Ik6R2Jz
	 c1FmQAw4JTPG95N2q+h/Gx3ubXr+skVp1Fs5tzTgknfK0Y8oqT4Bw4nVT9J25asGa0
	 FL6CwcOPNhnYQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F415F81163;
	Wed,  4 Sep 2024 09:09:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4DBF11BF577
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:09:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3A400402A0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:09:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nm0UkBfce-85 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 09:09:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 310D240298
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 310D240298
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 310D240298
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:09:26 +0000 (UTC)
X-CSE-ConnectionGUID: SZN4cbQKTPC4aPyJmJNgpQ==
X-CSE-MsgGUID: baPcStV2TfSw9gNqir01Aw==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="23965094"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="23965094"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 02:09:26 -0700
X-CSE-ConnectionGUID: F12dYbnKQoCPNVtmS/MYvA==
X-CSE-MsgGUID: rY7mABrqRgW2MttzlpFaXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="88447873"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 02:09:26 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 02:09:25 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 02:09:25 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 02:09:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cBnyqiw+x6ufDOudKlQdpYvcgFCoewoe7dZOGxB2nJdMz0bU/ZdfMKOayH2Mk4qLIXFKUQ0gOCE1MDh0zD4lB+8M1x5jwQ0emYZ821LKxPr1c/ssTnnQxRcUZTflSKn71Kjol5OJ9Mq/E/xRPr+Wk4/V7Ytbzq2MPd5OVoJdLr195i9oTpY/ARAIxr0bVg7LY0UNUmG6Ug7oY9m1At9tW4vgskxTsVQ+EBQuMVsgQOeCIL52R8+WTcIuTokWU/0UQfepsd76voxUcYeaWowI2me5KDhWoQfBcgNUvI+T6pccF2kAjkXgOzlCKDTY/NEPlYgbvZlgUSpZS1FoEctsTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e5d4kQmD7RpmUeCcL/ATg8TAE3e9baF9KAI+0fzP1mo=;
 b=JMoRfxNSyhRTmQOgmvV6IKoxa8o9qccRsGNVrekWgd1Yg9KFYrMDYwaZFKhAwnuxDKgy0Zs9T9tfjrg//v4FkSk9I6m6gdswkjpJg6RxEzOcd543aOI69Apk8lqklOiEExJvNRxD/eUmgB3YD5N3Jepm+cdErc7yq2D+j9rszMoK/Rrb9tZ7ZNlMusCg00hovawA64hmYPOhSLer6wMDbfXa6xdrRbw0fDu/GPnnQ1x6PEXcYvq1SpymBNeJU+B5u6DLsSIw0jlWNEAKtIZO5zYYIci1H0YeLe4O7W6/917ESNXQDaQUXWYjVp+WsLsd1dPKAkV7ubxR4tQCF4JdkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Wed, 4 Sep
 2024 09:09:23 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 09:09:23 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v4 iwl-next 1/7] ice: Implement
 ice_ptp_pin_desc
Thread-Index: AQHa+s1PfOd+ceaBEUyKrEyljxoJ3LJHOM/A
Date: Wed, 4 Sep 2024 09:09:23 +0000
Message-ID: <CYYPR11MB842970F397036CE88F95AA9FBD9C2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240830111028.1112040-9-karol.kolacinski@intel.com>
 <20240830111028.1112040-10-karol.kolacinski@intel.com>
In-Reply-To: <20240830111028.1112040-10-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH0PR11MB5830:EE_
x-ms-office365-filtering-correlation-id: 8c1347ea-60d1-4feb-a48c-08dcccc144a8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?FWg5pbrCZ5MXam3jbdd3vwUILhBSsv8+7bWr+AWj9XCKEMQ4hNLJFxPrOz/w?=
 =?us-ascii?Q?NFQRPomTz34SNbT7A8YAMwZNE3CLM5AEi90cM9sFGR5v7Q0j45eduwMaVeIV?=
 =?us-ascii?Q?vjDyPvrvdvs2VSiioN+CBr3/z86S7lZXuIRjCqfTJQAxZlsy2wnA+TJ4lERr?=
 =?us-ascii?Q?4WbBjdNeFoL2AlZwkhqE4FlmDx+JDVRS5gSAsU4zIh7TvOGnVkmZO+36c3oO?=
 =?us-ascii?Q?YDYnaldtthBo9tz3DlfitMZidXhLMOAOkeKhXMU2qzkNaL9GW/lZZP8GXTJI?=
 =?us-ascii?Q?/DWIrD2JQj2iBf36Qa1hOQ6fwrZugLIhKYYuI2Ec5Bdge3hjB7nHPX70EBl0?=
 =?us-ascii?Q?fVbdyQ6Bv2jR49miW6GCIwV0KBDpvz3DlgX22jXmKrqOoKCNlfNg190gF5eh?=
 =?us-ascii?Q?9F/BP1iye7kNc/iVDfW4G+V9dbTBqlW7fhQ2Xxx+bmFCAwPvXDusv/ek9N+P?=
 =?us-ascii?Q?ou8+BfKPJyhhp+Kw+2jK2LtjBxc3zOAiXYM9pNXs4DoNnU1asxkIgXaa+k6X?=
 =?us-ascii?Q?i9VD1K3SU9UD/Q3VreYcQS8SmK7nnxvLM9XgYIA/BvnWhlVHw01qWmW09oN1?=
 =?us-ascii?Q?CTYp7ctW4ba9DJxX6xdUoztAl6K4ZzGpMyw7eiCUsN6auAtC+LJF3yH9pALN?=
 =?us-ascii?Q?O02R3oguT0U7tRdHOJdZhUlpJ4yTQX+QkePYVVouSCWt5uZJl/1/zW6hCodP?=
 =?us-ascii?Q?YlF34EtiQWh4WZyWk0g7ysikqUHtaOMl/cDANEqcD5nERmQDoVzdRszsPO1/?=
 =?us-ascii?Q?49FyGMmbkCutLy8KA9X6sqzlTD6a36WrMVUyyAXMYxjjkKz/LIcSy+asECZ0?=
 =?us-ascii?Q?Jk4vds3tmJEUcrybl2ft6tEWtXC9fP1ef8SD2fVqHuCvC39J8lJuZR4FAmB2?=
 =?us-ascii?Q?vY87mcPNttBGo3+gQQpBZiLqhJUo7OeuX9XL4r2+UM0Ko//4omtRAEzRPEIK?=
 =?us-ascii?Q?62YfFjwdmKt/hpNd+GwIQoxJ+hMvaDXCucc/7FWaGK1W65+7kFq8xULSz2Q/?=
 =?us-ascii?Q?ZRjNah+dhgeklwf6z+Uk/nsG0ljpGeQPWh3A/IQvwCo8gb9y/FCK5IxYZ+/U?=
 =?us-ascii?Q?CWllIVsR3HomzL14aFPBLCZIBFRoMsVHKUlVJPzGmR/QP6f6LLHg+6EpGxYY?=
 =?us-ascii?Q?1FVaLhz24fxRfbKNotmFbXtxCeEGteMnPSH0EnWV2Den4ndtyGz8ZPHCrvTh?=
 =?us-ascii?Q?IvwOGnbQQc6VOQNkWH5J/v9VbZlGYFHz6xanxkHmVj7F6jIrFR3OLLinsry6?=
 =?us-ascii?Q?NkA6LWnY+Ll95rDanzTodDdHPWcMixjSU62oWNExq6hm3wzV36zpMdWd7pR2?=
 =?us-ascii?Q?4F/mcPWWnAmjtZ8iQkivhDOWpDbsM0e/CsLIiKlefbc6ZERZNyrCCPamsvfI?=
 =?us-ascii?Q?ZIOptuQjtJw3ic8px4ydAbWPQXWtYVwJPvLLGn6hYx/X8Sq4ug=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?v3+lpqwEVNOwtlUZQMiOR8VfudbagXGt8poWathxa+Qxy3u/VBjHi2MHvfjQ?=
 =?us-ascii?Q?SB5tH5KOnBZdXXwc39owDXCO+xt9O3Q6a0UImOMQQv6Q1+qR5ofwnfIGJCOu?=
 =?us-ascii?Q?yyTm7rxuU/c6kSkk00AUNqh27z8N3ZOGgikWu3kW8B7dFieU7osH80JKLmIr?=
 =?us-ascii?Q?NB5Jf7m+y66vVmckb7tswcZgtpiL19I5AO2Ys2ZG5RtAjuqXUFsXTO0q5be5?=
 =?us-ascii?Q?tlkrKzVgE1exVSSfLRdI59gDe8sTxyjhljyatVzRkOA+b/jsc/1AyyCyoVml?=
 =?us-ascii?Q?H/zBOL2aqOPOQ6ZcWMnLOndf6Te0GtriOFh8ap80qOaqmqZRs5cIPHJ/jXzo?=
 =?us-ascii?Q?s0qfAsPdYdE+k903pdaGMeQj6AIx/dXkFfiHPzindCT07tNw+JcTT8Pj3vJC?=
 =?us-ascii?Q?kdKqbiwx8MbeSoIJ4RQo1oG+RVDkhehByXI27/dYnX8PIz73+c6NqZ3bKtip?=
 =?us-ascii?Q?fd4w2M5QP61lzeihMC/Hw794BOYBl6JaHl2GTJKfCYyz2+z22o5Jh4mFE2Rc?=
 =?us-ascii?Q?ob3C2PlqZ+W17jaMCsOWA9Tsii2PFInYiWZNDbFsRCAvyJ1JZxQDQORIP/oZ?=
 =?us-ascii?Q?e1zoK4uO8PPe3X7nvjd0LvnPVVqxjBJusJDdHMOEeR5Wy5kPkRuNFdscCiaM?=
 =?us-ascii?Q?DEwIxtwiScqRXmd3AY0NISd8J0wVQ3KJH1qU6KSpdNyjaNWtTKXuzpHypDzh?=
 =?us-ascii?Q?yAiUbKgDY+oqiDNVGhjQ0dJZf76aJ/ch/P0Gb6AQpCnGfIJbPGozgptbJtyi?=
 =?us-ascii?Q?ogHYnYYrNATPNqODzsSq5KSN/XHEm1RyixGTciL3W8D5ER5tKxvq0KBweXVC?=
 =?us-ascii?Q?dkB5miFsdeMHGxovpDdApM/1Gt7FjHzvyBaNA313uQeWq7S/coD+610F/Kog?=
 =?us-ascii?Q?/HoawO0GEAkdjeBXKRcCOxeT/xlf3BpofYstb4jKa5dwL0ttnGW7A0wJmsXH?=
 =?us-ascii?Q?LrbnRA32zrwIl66w0PUKJKep3ufh7AwnbC9UsnF1j1AnP3hTz7jrT3YrED7H?=
 =?us-ascii?Q?i3usctIRjFUy9Vy0AkypcmkAwuoN8USuja9X2ZJEAHn4Q6ERlqocOv1K3VQv?=
 =?us-ascii?Q?UrCPgKjpKlV0vh5I+UQRuRTxMcAbZBFuNWIYR/nNAOMCeXUutsjeVW7Y+Rss?=
 =?us-ascii?Q?2kI2gTkDUJ5efvrZdm1eh3UsWEXzwQ8T7TQ4rG7WSNsp08/1M7p2QFc5Tg9b?=
 =?us-ascii?Q?S+ETd6aSym3arteQsI8c44+BxKU+QfZklDwcRGyu99wKl4lJYl4zabjkdyAy?=
 =?us-ascii?Q?AlzkQkwxLKwLCfY3wJIISd4w69AsTH/OJao6EEZSPk/kvGcUmRNAlNgH0njL?=
 =?us-ascii?Q?b3n8Zq4tSWG1RurVZUxbMLEfuQf1h2qk2wKkCBS9vadUpg9ykpOSO5d+QHw7?=
 =?us-ascii?Q?Ir+vtyuUFKDgr4ZqeSNEEUbBWg+HXrZgv7Na4RTdWZL5mddDRO5JjSlgwaIy?=
 =?us-ascii?Q?WgOgr4+0XupLg56w92x7n9YkcI5owoMzYMxNS51YwnXi+YDrpy9yJkdHAgbw?=
 =?us-ascii?Q?Wn5f4tL10D1++/3pbGIL3V8EcH66/8enI6D6oXsL8LwnuntG4vvv3olwqas2?=
 =?us-ascii?Q?fc8PIci4pQ6d+Wb5jW91yO2wcovwcEH0Z1TeBYkvlVc4RFkcyhw5YkVnVQDA?=
 =?us-ascii?Q?8w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c1347ea-60d1-4feb-a48c-08dcccc144a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2024 09:09:23.1973 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b0QVnQNOjf28IKj7miuhuIASUVtBEKPIlVzRFxPAu6WidThnFdPY4xaZ54wsbr6br0X24Asn40rK9G89BA2tKNCMW6Eq/wvaaOtt/MufFcKqMilSBlV4hmknFVBu5e6r
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5830
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725440966; x=1756976966;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZxLOcGzmMl6y8qY+DrxVZqBy4cKv47fk598DBRZwWzU=;
 b=ZG+S0OSyqFlJulX2y9Er8/FQvqmdMDw5M8Mr0vaKCWuTf+a6SqxW2G2R
 s9meB4S51V8NPszgVpphheZqwYXxAESK2oGUDPfiwiqFJTgooJ357DDjv
 vYD2WcRSt7EGtZhYmtqLGzvDzbKsoIdFv8ZWoYhHj1fSsume+8RSN1LdM
 j2FL5OBoZihFJ8d/349JCXyNCCBETNcRQjZQQ9ECyLh2OPl2yCDZQHHsS
 1M2co5Bd3I0/MXNXEgbSsa7EzdK1pFVO0zlSxpdogHKgO+Dv0i8FSSIfE
 4NgxVISWPRt0/pObLRXPhZemNqUXSQyQP1Oa/WEkLtWPkfZcrQ7qDtL9z
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZG+S0OSy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-next 1/7] ice: Implement
 ice_ptp_pin_desc
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Friday, August 30, 2024 4:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kubalewski, Arkadiusz <arkadiusz.kubalewski@i=
ntel.com>; Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony =
L <anthony.l.nguyen@intel.com>; Simon Horman <horms@kernel.org>; Kitszel, P=
rzemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH v4 iwl-next 1/7] ice: Implement ice_ptp=
_pin_desc
>
> Add a new internal structure describing PTP pins.
> Use the new structure for all non-E810T products.
>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
> V1 -> V2: Removed unused err variable
>
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 256 +++++++++++++++--------  =
drivers/net/ethernet/intel/ice/ice_ptp.h |  65 ++++--
>  2 files changed, 214 insertions(+), 107 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)


