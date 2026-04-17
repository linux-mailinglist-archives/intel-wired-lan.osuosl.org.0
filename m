Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eEPiDA0m4mnt2AAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 14:22:37 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 938DB41B2EE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 14:22:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D293881467;
	Fri, 17 Apr 2026 12:22:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o8KijPXDh2Mr; Fri, 17 Apr 2026 12:22:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13C1C81464
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776428550;
	bh=h+RJUtBYmKjXOVxKMW9EjPw2e0dWD5ybhlVzXYufKiU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dEdfxo7MXRtCfe0izsy+0P6qsYi5/5nY5lfVfHXAH3A1eHyGY6Ihakh/3rICowwa/
	 BPZ+6JHdwzrrL0KgOi7iMvnOOLVPLJ/2pyG5lZb+xxwogdNva0VfFTYLRhlhVdkRIx
	 PyKpGBp3/kICekqXgyqjPOjIr2R1Eb85ywlVc8kcnSPEk9HXuQj660CVjmzXLFGNQb
	 Pq3qrjGNplyaBJTQgI685YY373t6kKpEOArPTmv8Dv+Hou1N8UFupbpoL1wKEzBaV3
	 eP6ekzM4PEmWkljVZIs5/XVVVPpXZTahJ68aWKoS65+aaiS/vrmDjJwSJvQ4oV+joL
	 aqKTZY5amnRSQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 13C1C81464;
	Fri, 17 Apr 2026 12:22:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 19933396
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 12:22:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EABAA405BE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 12:22:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JV5OwIW5RWO6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Apr 2026 12:22:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1039240132
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1039240132
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1039240132
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 12:22:26 +0000 (UTC)
X-CSE-ConnectionGUID: /igjaoQxSB+917LBwKMJ7g==
X-CSE-MsgGUID: p2PEwnP2S8y155uFKI0ylg==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="77562975"
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="77562975"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 05:22:26 -0700
X-CSE-ConnectionGUID: WqFa4iT3TRGepyePTekx7A==
X-CSE-MsgGUID: fKKDY4pbR+G/wHB03jTjqg==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 05:22:25 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 17 Apr 2026 05:22:25 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 17 Apr 2026 05:22:25 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.34) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 17 Apr 2026 05:22:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hUaYEWK7ICjgH/NWw/Es3WyPLNHRxvSia9sQfvbEut4YVIancJU8NFAX3lsvHRgZw1+s0v5BU2DVTalXoQCIRNvfH4WuXUpdgMWqqpM7jlbnmEeDqeIShmY5D3fsizSxpc6O9wzNkktX6EH3+/gn7blzmPix3O0CHh1U4amUQxqeoJWhjcn+7TXGn5bjjFY2gti/woMsJvfA8fMICaCaEyQqNRqcXra4Tm2l8j20dLehMYhjNbR1I+85We5h19OSPVdZPd5gyCCu866NXMjMSdnjrM1q1lCc8nNM1rbCo6KnSWKak21RmiQOegn5T89DRsASnO3KxVzBYMI2JRmWMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h+RJUtBYmKjXOVxKMW9EjPw2e0dWD5ybhlVzXYufKiU=;
 b=hTGYGfml+DvXBO1KDqz7PUAINyl8nti0h/SQYK6nKhV2DdUUtJbuw6lc12lo6RdtAd2cK7V8WXoONRWbQhgrjyyMxRWKtNRZUlH9JRq6VTFeUC4TlhQ1/lCCQlT7muP7tZwxyYHvjD9SRRqmDMpeJemeA8SYbd+QlYO/3iNBQNeqGD8CugCn/CgGhXG/4Rl0HZQiPiLC5wkE8E+D1MEeUTC8FzRoZNBu7ALvlJyRqTO7w3yDDbf+ZKvXPdFMZ0vV2hzGUQcaHRdKlsd+T49eya0iVxqhMg6yMK4O7THEq6ccLwiuBkKJtMFlA8wqavxsa9B8a0Jehr1xfssMVxeUaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7378.namprd11.prod.outlook.com (2603:10b6:208:432::8)
 by PH7PR11MB8036.namprd11.prod.outlook.com (2603:10b6:510:248::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.25; Fri, 17 Apr
 2026 12:22:05 +0000
Received: from IA0PR11MB7378.namprd11.prod.outlook.com
 ([fe80::7b0c:7df:21b8:dbbf]) by IA0PR11MB7378.namprd11.prod.outlook.com
 ([fe80::7b0c:7df:21b8:dbbf%3]) with mapi id 15.20.9818.023; Fri, 17 Apr 2026
 12:22:05 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "richardcochran@gmail.com"
 <richardcochran@gmail.com>, "donald.hunter@gmail.com"
 <donald.hunter@gmail.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "davem@davemloft.net" <davem@davemloft.net>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>
Thread-Topic: [Intel-wired-lan] [PATCH v5 net-next 0/8] dpll/ice: Add TXC DPLL
 type and full TX reference clock control for E825
Thread-Index: AQHcwvXix3hjxSFB2EyUhfJETBJtn7XS5QsAgAO7FYCAAOemgIAA3aQAgABojwCAA9gqAIACh5+AgADpDdCAAc5xgIAACEIQgACY8ICAAJvRkA==
Date: Fri, 17 Apr 2026 12:22:05 +0000
Message-ID: <IA0PR11MB7378CF62D86454916AE8F9D79B202@IA0PR11MB7378.namprd11.prod.outlook.com>
References: <20260402230626.3826719-1-grzegorz.nitka@intel.com>
 <20260406192312.0f7a2760@kernel.org>
 <IA1PR11MB621925C1718B838147404DC492582@IA1PR11MB6219.namprd11.prod.outlook.com>
 <20260409181041.395a0c37@kernel.org>
 <IA1PR11MB62194BF52262FCEB7FD5E76D92592@IA1PR11MB6219.namprd11.prod.outlook.com>
 <20260410133812.4cf9b090@kernel.org>
 <IA0PR11MB737882B384AE7279EBCD05C79B242@IA0PR11MB7378.namprd11.prod.outlook.com>
 <20260414145835.07fbe355@kernel.org>
 <IA0PR11MB737842E2098D0952A8BA1FE29B222@IA0PR11MB7378.namprd11.prod.outlook.com>
 <20260416082751.04782987@kernel.org>
 <IA0PR11MB7378FF7BF4EA32C1F89372C19B232@IA0PR11MB7378.namprd11.prod.outlook.com>
 <20260416180447.1a3c5c87@kernel.org>
In-Reply-To: <20260416180447.1a3c5c87@kernel.org>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7378:EE_|PH7PR11MB8036:EE_
x-ms-office365-filtering-correlation-id: 8d818ec6-06f8-4976-64bc-08de9c7bf012
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: j2wV/PcwMQReC7+SyzJWVD1gZ7qyoQahhBrRGMDBXQr8k9HoyJp2G1XQ6h1alY7U6TqWpARcd6/fRvl0U9G1vx7ibxHiHvE5gI/21SaVCsspja1RudiG6pEkHbcXDRWhRw0JXj1trlY3PZg4HqTrAD/m3EkGtnfDuhv/JDtd8gZmjY2+cx00xqIz1pkC9XHSWLuIzHgRAOYROe5KxVf9J+DiTuvlD0dFJhJVh+nGgrANbwxC+Z3vcRzs3MHJULWwWQuQTnApvWZPE94FCJw79NYWq+b7OVz6vtZNkHRPDyQarqUBsQI/JxkIj2KGAA0LOlw17Thfd+SW7ZKb77igdUNuY4QBpZTGWuQNuvsVbn3QLMdwfurzmvals5qxseCg+iKF614UCUEtI1K9RCXwKshV9NeqpOvGB7BsYIPZcFfBRpmcGMOUQaj50dEeAO6ks3cxGsuWuGqxUbC4A0YsPCr3kQ+Se3j9sxmbgHXECw9rX1CqhvmdhAti08fsfPcrDRzq6QHnyI/do4f/kYTSY3uuvbfWFYzR1PZGXOyzFEfGk1A072G7MGqWMG6V+H2Ylsm191yGrycdK7Tc43GPra7bak3so2pv2jwSoZ/PSAhRPUk0hDYbbm83J+PJWMblim8KehMJ3M3cIETr1tfMBFCb3iPGh2UsjX9Hxl5oxqOo3cBp4ilf9eyJvHuQz/+hCBom7eWp7InpukrcwK7EHeMbZhFgFczS4LC4s+y5Dx/H+5npaCstnnVBKxGHrx3robppGBmf5ZZPQGIXur7OhwY/iV/WAkpFfiHo0Yreqe4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7378.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9/1NuBm1Tzn9KdfcRdYh8j61ng7fwDg++xi1t7qIEvNSjCRLAhgbQiv7C1+6?=
 =?us-ascii?Q?ZA7KrWUPw2Dj/gEtgP8JzMWCcmz+qFE/bLcsaGg847k+FpevheF8TV1mJjTP?=
 =?us-ascii?Q?APz5LfPS9AarbL9b5BEpWL6cVr2+ZVnoWkAla8lQ1XC4QYp0Kg974JsZoxIi?=
 =?us-ascii?Q?MQuO6Yh1YupdX1HnxOOmqBbKX2saC08s3nwRckcj8HSJYIqhDwUH81K2foll?=
 =?us-ascii?Q?HVif0bI4sNSwerWSNeY2sVcdFt+6icNbOlydYvia0dZtL0zeteoPL+yiDiuo?=
 =?us-ascii?Q?H7jNGTk7lhC1VjFieKSgzSW4S1my/qGxmxzLneGGTF6L0EzAMlimeoeiZ+vd?=
 =?us-ascii?Q?mmVaENSSSicPMDUvNnxk02VTrJiKywa97FEZR0/GMP4/SY84icUPxPE5Ajlm?=
 =?us-ascii?Q?IOJVf7gP2ObQu0+veSCItCBjUwodtMWhc0QezlkWMwwmk89C6zysiIfwjJaU?=
 =?us-ascii?Q?mJwZ+QAm+J9G8UfL0/wfeOlRDW1J2Uk8cLQJh/sd/k2QQYg+8ysgDVTZEsMz?=
 =?us-ascii?Q?5iRQWiuKCheoEmPe4emxRiOM5iZpMztS8Rdbm9igjFALcAW/GW/Vi7CoPAHw?=
 =?us-ascii?Q?Gx2PvYLdNyBPvqeJPQYK1b8jUzppyEKG3M0i06nMdNN8AqIgZrHAu6shzFsR?=
 =?us-ascii?Q?szWnpJflhoHqHOvWOL5NikGllRugMS6oXwaDNonkeB4euEuTclgXimmCgrih?=
 =?us-ascii?Q?KGlkLsR1eSU4MPbnurazwtOPjCw39Dutusw0xoyUlkwU2InpDJnP4C3CFCO8?=
 =?us-ascii?Q?ChjxoDcem1/MtQQf1YgDQmLt3wtNxguX0IOuXVKsrGntefocmG0c5Aq1y1PO?=
 =?us-ascii?Q?20Le70atAFZaBHItWYqWp67Mxzn+JDFtbzGosUxhjTJnl3bEMUr89W5bOlJ2?=
 =?us-ascii?Q?bXsV2yyuLwF0an8T1qJ7ebl/KkdEQUhvbPZuBxdmV740eQ5FXcay3iH4TglB?=
 =?us-ascii?Q?lhizI44s7OppkawNeBNWqrcSUN8DqfWp74Hzvno71LmeOy400b8kR3OMTchd?=
 =?us-ascii?Q?4xw9VYIxF9ZL5YERTh/h2SzVA6cBYrP1x4VYN1u6pEp99OrsP4Q6aYw08jFP?=
 =?us-ascii?Q?VQutw+6NofI1z/Lrx1p0VaRBGFNduIzJSb2ld+OEt9yjOW4ORz5ELhAOkkbq?=
 =?us-ascii?Q?5+Bo5P4lvYdi6EeuR6QIvnbhKBtgA+MN4melzQl931jjxPdfk5g5nxzmazqo?=
 =?us-ascii?Q?ugHCFNotZvU4ICoilgJeU7SgfTOmyCgsDbxQbrt4WAx6C3jwU7SL/qSdv+LV?=
 =?us-ascii?Q?Y15alYZ551Eb+4mp1y3fkczOUS8v9bhuV6+ywb0bCJGaz+UO5O9CJ0eDjeWp?=
 =?us-ascii?Q?IGeMnT9itrLbkkv4YG1RvJiBGUNQVZtTMeIUQmKKtf1sYsWv0oNGpZlWkyS+?=
 =?us-ascii?Q?p7oIjc9tyutZB9iA4FXo/Wsj5psDAuQVVIzVEjDBp/iSXN+2+Iq9lOurWzZq?=
 =?us-ascii?Q?3s6EKzs4rsB68HqsDgPgYO+ZhgvM//nueAbo0jcN9iby8X4PmT13i9HLwKDp?=
 =?us-ascii?Q?QajhTgHa//yGK+aNz7kHuqTaMqbZ4QQak6LRRt7Ghykc6BQHayC3aoMt6/2d?=
 =?us-ascii?Q?xDXg0S9bvO1BfA8yNQ7fSBZdQGqtAvqml3EE1GeHU6OLaopuIhQfE5t+Z/2d?=
 =?us-ascii?Q?s5K0TS+GqxqODwLrZHNgGapaPa6y0JP69m9EKcXsM3OehkIkSH3GwsP73mfK?=
 =?us-ascii?Q?2yJWWlVisLUNGx8ge3GmR3vmtGfCIRSIGWqRykgUrD+jl/V7lcXQ0hyp0KME?=
 =?us-ascii?Q?BdJvooZpxj9rWBnuQ55Oj7LpfJzjI+o=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: pNsYjvxXpPu+iOoJ8Ka5v5VmTwBdCEyuNKXjx8Dl5dgyEfdukDMQFICg5mC4Voy4QN9otjfwRtou0/Ca5tEqFEivNZU0kh1XDVM/3YuivGOvYRZb3qMMGnATb27jmEYbYk+59J213ml4+74BXIoBaX3ZnkZN/zvkysVXcJXAxit+Ht4o0FxbJuRmp7W+DHhWywmfHwrtOfOrnAnTt0cCWcl51BMXaW18Q+Dpu3/wfyDOAdNEpIRAQUDdwOD0LpeKsoq0gdgypRUP/kkyRrHAhFu0DPiK7d7vlNzy5nS9n9D7Nnt+W6V4VRY6A9IiqIJ2fhSZgCm9Ve10sIexFlsDUg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7378.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d818ec6-06f8-4976-64bc-08de9c7bf012
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2026 12:22:05.5642 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XtJwxA1CdRUK1VnMKmYSnWNwgcKnDZh9ugtNzh1wFFEjXy6UWIn3Q4AinVHhxRsbc78fM3Sy0Tisz0G6KBmGpaM4Ewodwy3UW4XToBviWRE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8036
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776428547; x=1807964547;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=h+RJUtBYmKjXOVxKMW9EjPw2e0dWD5ybhlVzXYufKiU=;
 b=UxSTtH6w2dcm8vxcWXlyiE/a6V6oiaYHeBeZF52BtRJJmU6mHZFvGpOa
 zsEhyfdir1agRLoUPB2gBQCC3Wj+ek+P5bqq4S1egztCLBRqJjC8A2IHY
 nD39WzcaaeYRR4EStMwFwKSZ//3cictq7m1LhstVsGOxBiOdvYmjqXLJm
 7f+Wv5YANIJdnjS3wtA1TgWqYF2+SAmdAwYHB6URKEJA/N6Wu6d46eBFd
 DyP9Gz79bbmdd7KCe+f0qjO7ZUh5t8QVquYYkl42TBvDwop5ZC5lNYgSz
 fgsdVRC94gQ95c94OcuLPmOguq+RJOF1w1Xncz+fRCUKcsV3+ZFGjz6jg
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UxSTtH6w
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 net-next 0/8] dpll/ice: Add TXC
 DPLL type and full TX reference clock control for E825
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:edumazet@google.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:davem@davemloft.net,m:Prathosh.Satish@microchip.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:jiri@resnulli.us,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,google.com,vger.kernel.org,gmail.com,davemloft.net,microchip.com,lunn.ch,lists.osuosl.org,kernel.org,intel.com,resnulli.us];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,IA0PR11MB7378.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 938DB41B2EE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

>From: Jakub Kicinski <kuba@kernel.org>
>Sent: Friday, April 17, 2026 3:05 AM
>
>On Thu, 16 Apr 2026 18:26:11 +0000 Kubalewski, Arkadiusz wrote:
>> >> This HW doesn't use EEC DPLL signal to feed MAC clock, as DPLL is
>> >> external from NIC point of view. Only 2 signals from such external
>> >> DPLL
>> >> device are used by NIC:
>> >> - synce (a single source for all those TXC per-port DPLL device)
>> >> - time_ref (a source for the TS_PLL - which drives PTP timer)
>> >
>> >No bypass? The PLL is actually in the loop? oof, this is beyond
>> >my understanding of clocks and signals :S
>>
>> TBH, I am not entirely sure what do you mean with MAC PLL into bypass
>> mode, but the HW description I have provided is still true, the MAC is
>> not fed with any DPLL provided signal here. Only port tx clocks PLLs and
>> a timer PLL can use those.
>
>The ASIC PLL IPs I managed to find had a bypass mode where the reference
>/ input frequency still goes thru the dividers but the PLL circuit is
>bypassed. I assumed that if we want to distribute a syntonized clock
>across the network we would want as few PLL circuits in the paths as
>possible and we'd use bypass (which would be relevant here since for
>the target use case we wouldn't engage the PLL of the TXC). But this
>is 100% guesswork so I'm probably speaking gibberish.
>

OK, thanks for explanation. I don't have such details about it, I have
seen only high level design drawings.

>> >> Well, 'floating' MUX type pin not connected to any dpll would require
>> >> a
>> >> lot of additional implementations, just to allow source selection, as
>> >> we
>> >> have tried it already.
>> >>
>> >> Wouldn't more generic name cause a DPLL purpose problem?
>> >
>> >The old proposal in netdev family was to to have source selection
>> >without creating a real mux. Not saying I'm dead set on that direction.
>>
>> Yes, correct, it kept the list of dpll pins valid for source selection
>> of
>> tx clock within the netdev and control over it through RT netlink.
>> That solution was rather simple but you requested to hack into dpll so
>> we
>> did here.
>>
>> IMHO this is cleanest and simplest solution we could find to keep it
>> within DPLL subsystem.
>>
>> >> We still want to make sure that given DPLL device would serve the
>> >> role
>> >> of source selection for particular port where a source pin should be
>> >> an
>> >> output either on EEC dpll or some external signal generator but
>> >> somehow
>> >> related to SyncE or similar solutions.
>> >
>> >Right, but adding a new "type" per location of the PLL (especially if
>> >we lean into covering any ASIC PLL) may not scale, and opens us up to
>> >"vendor X calls it Y" and "in design A clock is fed by pll type X and
>> >in design B by type Y".
>>
>> I was thinking that this is more like a purpose specific DPLL device, if
>> someone would want something similar we would have to review it, right?
>
>We would if it was a Ethernet MAC PLL, but if someone wanted to expose
>whether some random PLL in their ASIC locks - are we adding a new type
>for each one of those?

Yes, that was the implicit intention within those patches, if other purpose
specific PLL would have to be present for whatever HW design and user
control over it would be required, then that would be the easiest to
maintain in the long term? Multiple types and each have own function/purpos=
e.

It would be good as long as there is one PLL for a function per board, once
there could be multiple ones for single function, we would have to add some
enumeration (labels, etc.)

>
>> >IIUC you do provide "linking" of the pins? netdev will have the MAC pin
>> >assigned. Is the pin that connects the PLLs also annotated so that user
>> >knows what's on the "other side"? Maybe the topology would be clear
>> >enough from just that, and we don't have to add a TXC type.
>> >Call the PLL "integrated" or something generic. User should be able to
>> >trace the path of the signals?
>>
>> It depends, TX clock has one of external pins connected to external
>> DPLL,
>> but second is a board-level pin with ability to provide some external
>> clock signal, the user would have to determine that purpose just based
>> on the topology of one of the pins, which seems a bit problematic?
>> I.e. if at some point there would be HW with only external non-DPLL
>> connected pins?
>
>Not sure I follow, TBH. To me the function of the "MAC PLL" is fairly
>obvious from the fact that it has a pin exposed via rtnetlink. So it's
>obviously a DPLL which can drive the Tx clock?
>

I am lost a bit now too. You mean clock recovery pin? And EEC type dpll?
In this solution the 'MAC'/EEC is external and it doesn't drive TX clocks
directly.

>It's the function / relation / linking to the EEC DPLL that may not
>be obvious. But user can see how the pins connect they can get some
>LLM to draw a diagram of a live system.. et voila :)
>

Yes, correct it would work for this particular HW, but adding a variant
without a external EEC-connected pin in the picture would be problematic
to understand 'generic' dpll purpose, pointing to the labels later.

Just to make it clear. I believe that generic type dpll could be used in
any HW and for any purpose, so after all each such usage could possibly
introduce entropy and confusion on the user side.

But if you are fine with that, then sure, we can live with generic
purpose dpll.

>> I mean 'generic' type is something we could do, but as already
>> mentioned,
>> thought that we want a DPLL types specified/designed for some particular
>> functions/tasks.
>
>I feel like we often get labels wrong the first time around, so if we
>can defer adding them until later that'd make me happy..

Sure something like it later would be required.

Thank you!
Arkadiusz
