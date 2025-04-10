Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D65AA843E8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 15:00:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB308812FC;
	Thu, 10 Apr 2025 13:00:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GAf-0dYQ0wMn; Thu, 10 Apr 2025 13:00:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9BAF582D14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744290032;
	bh=4TfO8P5sK+rCZrgk0QA+R/AjBtoWqWS/TUZ/t/fynNc=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xnKdE0c6GfV88dY4pW74u7Isp9599TPxUBHSLQL0ZbhPI/KZvMCXeowhL/8mBHFlB
	 gwfDQmltDlfOZP5HF9T1CiAsfeH4Y7MrTuU1Y6XqvM159bM3tF1GHbCr5XPw8JqQyn
	 z4mU3bNsabxjkR3ngJElavsfQ5gGTHTudwUUaD+x6osGdkZ8eGZPyMxx5DnLVPmtqZ
	 N5UMV0KOsCZJHa6010wvLx2hT1tEecQ7vZS2AND3B1PyUyWcvmOcCEGTFrhqvDeQu/
	 MPMjeJnSjAoBcyI3j21ntB/M11KX04K9mhdEU3xBsm6sw9cxbo+4Lfv9dCdVjMzCDb
	 cpJuCWUxYcGkw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9BAF582D14;
	Thu, 10 Apr 2025 13:00:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6537F108
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 13:00:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 55E50403D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 13:00:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FAGwGyES9smv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 13:00:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4D73F40485
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D73F40485
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4D73F40485
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 13:00:29 +0000 (UTC)
X-CSE-ConnectionGUID: x1vKZaZ0S9Ci822ZcSBr9A==
X-CSE-MsgGUID: MLRm5z7SREKiUSBdyKUZ8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="45934608"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="45934608"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 05:58:49 -0700
X-CSE-ConnectionGUID: nmYKM49JSkCI2IYsFLWQKA==
X-CSE-MsgGUID: 9j6ETvqNQ3eg0y3Kntm6Qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="129232875"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 05:58:48 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 10 Apr 2025 05:58:48 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 10 Apr 2025 05:58:48 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 10 Apr 2025 05:58:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qcBdOIptUR0Ox7EkKUZgFTRczCQ7/T4tYDRz+gBkNKk3e2I3QLqG9S6TK+kbrxu6dCsuZaiDMG+RbehGexbKWeu0Z0l0SyqErO1Vsi4CeWIBv5KaOkIeGFMBEAa8IzDvhCtQlybyDpVyL5Qrg9rDzFyO7xvvFycq5qFyuZAI6mR+BP9NExnpmgNkWAoxwnLd25KMtrwv20PjRyNs2dyz5FXyZT7I/5P8h3wikPzDpDvT7NZenZo6IRpFb7BJHv+7B8bQiAbJlXNkwTOO0NNmnnO0d/AH6r4Q5E1vbEZDoKHsScYpiDLcY5D3o+cCeOUkxUCvKw3VSvBq/dmk1fhpBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4TfO8P5sK+rCZrgk0QA+R/AjBtoWqWS/TUZ/t/fynNc=;
 b=WnmBJmSj5MEckIdCNmvCgzZcnrl1EZO9JjbCZbNuqheXXW6yw+r9HlmWB9iGEdFM8TnKlD6ghusy4q1kQQ/guuh8h+i/E0qpf/McC6v3xK/WPOZnXNxE0J93ZpodM/zkOOcuxAbpusgdhKgjts46rymkyDZaKbB2v5pvEh0d3dzaPUyiL+25cKGMxoX1eAssDd60uLIQO7tiTFIhirKwVyCXR0EZvtMXTFQ8RwAMd3nf6T/wmliBeCbwDibsh8Xu/Tl7V05ZIX6x0L9qWEp/7LH3o80aUWLBwf5LtyUg+z3n0pP5n5blLfxNoYITttil4jx2yF/b2NbUN3jgrNBSyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by PH7PR11MB6906.namprd11.prod.outlook.com (2603:10b6:510:202::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.20; Thu, 10 Apr
 2025 12:58:43 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29%4]) with mapi id 15.20.8606.029; Thu, 10 Apr 2025
 12:58:43 +0000
Date: Thu, 10 Apr 2025 14:58:28 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Leon Romanovsky <leon@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, Jiri Pirko
 <jiri@resnulli.us>, Tatyana Nikolova <tatyana.e.nikolova@intel.com>, "Andrew
 Lunn" <andrew+netdev@lunn.ch>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Michael Ellerman <mpe@ellerman.id.au>,
 "Maciej Fijalkowski" <maciej.fijalkowski@intel.com>, Lee Trager
 <lee@trager.us>, Madhavan Srinivasan <maddy@linux.ibm.com>, Sridhar Samudrala
 <sridhar.samudrala@intel.com>, Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 <netdev@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>, Emil Tantilov <emil.s.tantilov@intel.com>,
 "Madhu Chittim" <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>, 
 "Milena Olech" <milena.olech@intel.com>, <pavan.kumar.linga@intel.com>,
 "Singhai, Anjali" <anjali.singhai@intel.com>, Phani R Burra
 <phani.r.burra@intel.com>
Message-ID: <Z_fAdLJ4quuP2lip@soc-5CG4396X81.clients.intel.com>
References: <20250408124816.11584-1-larysa.zaremba@intel.com>
 <20250408124816.11584-6-larysa.zaremba@intel.com>
 <20250410082137.GO199604@unreal>
 <Z_ehEXmlEBREQWQM@soc-5CG4396X81.clients.intel.com>
 <20250410112349.GP199604@unreal>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250410112349.GP199604@unreal>
X-ClientProxiedBy: VE1PR03CA0038.eurprd03.prod.outlook.com
 (2603:10a6:803:118::27) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|PH7PR11MB6906:EE_
X-MS-Office365-Filtering-Correlation-Id: 16dd1de4-4789-4b36-bdbc-08dd782f6bf2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|10070799003; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?T1722+JfwQxSHtqxzCZoHkTS+n2Pc1aHUcOO2kjFv4N0b0MP8pHniy5BsWaa?=
 =?us-ascii?Q?QvgcAvDK+T9RZ/DwpXGQbo3wzLsjbbhXi1y0IIZyQgII5lJhd/f86yxQAnTC?=
 =?us-ascii?Q?fk2kdlog+iYusKtY31FEwRsij9EZWEyRvAR+beUi0e2ZaOkjwNPsamwuQFLp?=
 =?us-ascii?Q?AB7gwgu4HUMsZ8TKtn33oNnauAqrrk7r6KmHFMTYeCbIoCUZUqS9CMJOszkf?=
 =?us-ascii?Q?J2L+Hw4pPFiLEgeBzQrnN72bSXDctiMQaU2ELZMlJDXSsCZTP6sQmj5wqLGj?=
 =?us-ascii?Q?hjfVz8mQbLu1o9a1ojBDrmh1swwBCErMyTyhXjIyiqeHfGSnMB5ax1cnmsRg?=
 =?us-ascii?Q?LK7+hwxBEGPE+dm00ktHM/T7OXchkA7kv7xeNfn1AkWM3hkc1s2O7hLNIk9M?=
 =?us-ascii?Q?yU0fZFW02k4VxLw7ynVRnlB8Ph8us5auu+l3YDYv89m2YQZ2q/zR8QJDDCDL?=
 =?us-ascii?Q?vdjf1VtQ7cMZixQ4pEGfsCKoDiNn1+5mH9nnIYJ/6ODdZ4+bOO3O2Mhufwfi?=
 =?us-ascii?Q?/LR4dMumTgTHfjPKdHG62FItCc+G8eFbifhwB+n1NQlQfDkuBT8IUvy3FDqA?=
 =?us-ascii?Q?mOKLbXsY0HL2J42eAezTpbtwxVrlM2hqpsC8iquasAHl0XH8TwDWdNN90w+t?=
 =?us-ascii?Q?4C4cDe4C5B0AeeekOjwl8Rg3f8+LaqdlUD8We25F7ss0F3mTbHR8ilxjIK+0?=
 =?us-ascii?Q?O68OUgsbKn3NqRNlpgjVZ/yh5jt8/26MTG76nTWa37sH6UY63Z8z9biLwort?=
 =?us-ascii?Q?T15BhwHvUa+38Og7ZJS2r4QdblGVpK38p8hAosQmlTFJOx8NHezkPuRBQcT8?=
 =?us-ascii?Q?+kuSljU0Nab2QF5Zjv5dV7yy14bpSZBaqUa2BHGP0D8oLVxoi1D+hPrGQbT+?=
 =?us-ascii?Q?5BxykDYr1LE5QGG8UDbC4+9SzlvnRDa6rjBvj/nAnDTynlZcPE5XT3lpUKZ7?=
 =?us-ascii?Q?OM+qrdj0lanDogEQ3heMk7E1bgqhzAraRow3x0wrlvLjIatj9rwjxEHr1o+I?=
 =?us-ascii?Q?mXvfid6p1cB4wSCsQPLzrGMqdZryqjXgI6qR8we/zmfMcsq2Ekbu+OjZVRbu?=
 =?us-ascii?Q?L4u5x5qP9Pg7I5zngte1YsABUqjgI1M6VW83tPn4garTvosbDWxTi/RDZse2?=
 =?us-ascii?Q?WXM8zNJrfdxYXLIVsoqsyGjwnKmAh36BuuagM1Azy060RUVm7WNHYP6UixUi?=
 =?us-ascii?Q?lN8yrnviDP8u4jdQvZEaPIZb/Jbt1Q/29RrefX2ZTvXAPl1YIzKL+J3HOI+I?=
 =?us-ascii?Q?BSk3aiYWCn9Cd8eUuRfaYSGnheGTLDejWy8aeZyLNvWvYw6eF0G49i/ZINa9?=
 =?us-ascii?Q?3wbV5Aft36qX6UOs4rmrOw7yZvgAgkssVi/92JfwvRR7oynAQfxueEQ9HU/Z?=
 =?us-ascii?Q?J63gz6tR1dHDV9V/GXMsdrZ7WyWm?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(10070799003); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qr+jTnA95OG5VOR7qR27flOPL1JkpJgDxo7a190ZUEo9CXz0EX05urv8/7JK?=
 =?us-ascii?Q?Um74HTVDhw45meK1csJUdpAmf8I7hbms7iCXZGnLRrYYPEhG3eiVPhT9KxPJ?=
 =?us-ascii?Q?GPZ2v9MeHwH9y0oOgSZ6Md0SKI5FYh0pxIEJfdN6F7N0/1U+RUbNzYrtzjn7?=
 =?us-ascii?Q?+1QFlZV9dCQuJIftmDQRxVhf37/mdoSN9hm7/wPHLAnr2ZDCmvezxUL+rIUz?=
 =?us-ascii?Q?x5SZ8/J9BiBUy4f00dUJ9hzWqNBcg+Kqfl6WPcgkFYetw4CLF8YA0/MOfogH?=
 =?us-ascii?Q?ex/7olUSSZk9hKhlvluuxFvZ6bTgdKf8sLKks1aTsTuSQPYT3X9708NuKWnM?=
 =?us-ascii?Q?DJqim1fvP/yqPOCNV0RRSopsSyTiyU+G+vmCfru4q+nHRTkwhSzqizk+D9CS?=
 =?us-ascii?Q?K2oggagultfFYEVmw2o1DZXUFgwvNojlkey5ZwMwLTYVv0Kj9ks6j3qORRLR?=
 =?us-ascii?Q?bQDfdc60ni177zH7N2MWIV9jxGonBfVDrQPpoBrsUPYKDDq5LGyii6R3zCOI?=
 =?us-ascii?Q?v8/LMD2QbB7ymcwSmxlFZATaX0gPESeh6x+gZJlvphou69pNKAe4c7rXLIei?=
 =?us-ascii?Q?MN+zF7e+oX9KFFFkM1mbsp9ml6aXqcqM+PFaRRn204gyq7NUYsHhT5HSMELc?=
 =?us-ascii?Q?KXnsqZwH+OyGDzrChQaqn4o3CvLMjXIV/y2gzrhnBHB/hf9JzECf08yer+ho?=
 =?us-ascii?Q?rs2IzDAmt1t/UAyEy/fmuRAwZ0ez+PDb0iPKYEamEnjAjUPhj+MdsXvzlWnX?=
 =?us-ascii?Q?0Z+8F5AMlV9y4jGm9I0jAPmkabIjpFkK9GTcIHyEVOLhGLLd/aF057NSkbBw?=
 =?us-ascii?Q?qDwy79IR+/AVVnYwp3le/wK/c1n44IjHKunHhhbzK/0C+/6m4y9zo5ZHve71?=
 =?us-ascii?Q?K+FgBxaKDT62OJusqHCdvkue6LD32hLpgRj6/ObvEL5N6t/HT4+Fn5I2ymo0?=
 =?us-ascii?Q?CyX4PP8oZ4pUW68X2h3rVJ0yEPhJmAmY8eJM/kdjREm/H09fYhFFhiSFvKrx?=
 =?us-ascii?Q?xGHELeQIvWWbrdoH8xh65/UEP+4KCHoJ3RFfODXBJM43c7ZVNhoVLw72lrZx?=
 =?us-ascii?Q?91ScTK1toE7vOWkKTAr0Ea7m/Kw7e+LPWYETgNA+vtJjHrsawzXk6rt1yhU4?=
 =?us-ascii?Q?G/XSPrsz6q9RfpE5iRxsDNOER31QWA+o6LEd/cu+iiHlA6s4qB9eYS0CdygM?=
 =?us-ascii?Q?ZbfX5yTZWuu4C6W9vfWlEE5IWudg+8GP6JlsZQd8diqKDz4xMm3wufAyQDQg?=
 =?us-ascii?Q?wLmqRwXa6SbETJ9H8PxH+wEDlWoGShdtT9qLggZPvkzIG5CZQMRQnFiCnafA?=
 =?us-ascii?Q?ffbWoO+d4j5lVO+YCk6LqkMrLUDClTmYG7dMXP/SKmxWwPrJyMda0qeBaHym?=
 =?us-ascii?Q?DbLPy86vm+Gub9TBtKSXeeTjBu1k+64/4gCE3RifibPvjkYDTGPrexo3aQRC?=
 =?us-ascii?Q?u3FMDiwBT55dD6jknlNLMGwqj3BtBNCFwD1qiyLrNvhr1cbRnKZ3QGb/nnxE?=
 =?us-ascii?Q?wMLkaPu75Yn9vY2ayjKrYKEnBcQL9w4WQFZWh3LmiO9WFF3vSdujaWRdoYC1?=
 =?us-ascii?Q?IbixYn5n3vhjpJPSvA9FSwKcDK67ekcBjRbHzkVhR1gkNeSKyHXekWs3ascz?=
 =?us-ascii?Q?/Bz49g9GTFCycV3HvVfFooAii1D4Li4SZFHxg5sDCLS7+CUAGwRqP8AWxB2a?=
 =?us-ascii?Q?UVf8ZA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 16dd1de4-4789-4b36-bdbc-08dd782f6bf2
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2025 12:58:43.1094 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zxtQkpHBH4Q0wGMf//M+yb0uonQ51bAGUhApa2mGdLZcRiQOn0rqdzSuVTHSiuZpsTVk+7Wrvq4MtUk4bE1HcUy8nW8D/AW3GsFWjIiD0iM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6906
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744290029; x=1775826029;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=KTq2a/Rm5AMvRzZNifNPQ6X1AtOy7n0J1Q5iVsNR1Qo=;
 b=UEcS5hKQKI5Z5YAoRMozlkw5DwHWAEISlURoSxPZ9F7F9A55aDCV91Qt
 fKAXCqv53e1OioZ2HmtzFeI4TscA8Jeav8xIX/jz8TzoA4JdsP2HOm2+p
 dKKU/XoD2fw1DTeLf0pyoFqYxstJ6IaIyApKN1Z/HHvVBD5PqtWJMD4WL
 RcxhOMEQJZ+0kdYjFYkCrDzc89PYoGjYxqWaKr1Esv+5p3DvEQOj2i1Gj
 XZGLJgkt6+DX4TjEX/D761atYTAkYs3ug9QM8Y/7u223/OLTR79xm7SXA
 d/0K1AFscJzJybhokT/OJTe9kKOH6993T3TIc7G+ZThYFRyfk8CF/tbrQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UEcS5hKQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 05/14] libeth: add control
 queue support
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

On Thu, Apr 10, 2025 at 02:23:49PM +0300, Leon Romanovsky wrote:
> On Thu, Apr 10, 2025 at 12:44:33PM +0200, Larysa Zaremba wrote:
> > On Thu, Apr 10, 2025 at 11:21:37AM +0300, Leon Romanovsky wrote:
> > > On Tue, Apr 08, 2025 at 02:47:51PM +0200, Larysa Zaremba wrote:
> > > > From: Phani R Burra <phani.r.burra@intel.com>
> > > > 
> > > > Libeth will now support control queue setup and configuration APIs.
> > > > These are mainly used for mailbox communication between drivers and
> > > > control plane.
> > > > 
> > > > Make use of the page pool support for managing controlq buffers.
> > > 
> > > <...>
> > > 
> > > >  libeth-y			:= rx.o
> > > >  
> > > > +obj-$(CONFIG_LIBETH_CP)		+= libeth_cp.o
> > > > +
> > > > +libeth_cp-y			:= controlq.o
> > > 
> > > So why did you create separate module for it?
> > > Now you have pci -> libeth -> libeth_cp -> ixd, with the potential races between ixd and libeth, am I right?
> > >
> > 
> > I am not sure what kind of races do you mean, all libeth modules themselves are 
> > stateless and will stay this way [0], all used data is owned by drivers.
> 
> Somehow such separation doesn't truly work. There are multiple syzkaller
> reports per-cycle where module A tries to access module C, which already
> doesn't exist because it was proxied through module B.

Are there similar reports for libeth and libie modules when iavf is enabled? It 
is basically the same hierarchy. (iavf uses both libeth and libie, libie 
depends on libeth).

I am just trying to understand, is this a regular situation or did I just mess 
smth up?

> 
> > 
> > As for the module separation, I think there is no harm in keeping it modular. 
> 
> Syzkaller reports disagree with you. 
>

Could you please share them?
 
> > We intend to use basic libeth (libeth_rx) in drivers that for sure have no use 
> > for libeth_cp. libeth_pci and libeth_cp separation is more arbitral, as we have 
> > no plans for now to use them separately.
> 
> So let's not over-engineer it.
> 
> > 
> > Module dependencies are as follows:
> > 
> > libeth_rx and libeth_pci do not depend on other modules.
> > libeth_cp depends on both libeth_rx and libeth_pci.
> > idpf directly uses libeth_pci, libeth_rx and libeth_cp.
> > ixd directly uses libeth_cp and libeth_pci.
> 

I need to amend this: libeth_cp does not depend on libeth_pci in terms of 
module namespace, it only uses the header to access struct device that is 
stored in libeth_pci-specific mmio_info.

> You can do whatever module architecture for netdev devices, but if you
> plan to expose it to RDMA devices, I will vote against any deep layered
> module architecture for the drivers.
> 
> BTW, please add some Intel prefix to the modules names, they shouldn't
> be called in generic names like libeth, e.t.c
>

We did not think this would be a problem, intel has a tradition of calling the 
modules pretty ambiguously.

> Thanks
> 
> > 
> > [0] https://lore.kernel.org/netdev/61bfa880-6a88-4eac-bab7-040bf72a11ef@intel.com/
> > 
> > > Thanks
