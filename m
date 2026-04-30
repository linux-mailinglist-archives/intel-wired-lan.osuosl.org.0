Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gD8rH6om82mZxgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 11:53:46 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 338AC4A041C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 11:53:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C778684BFD;
	Thu, 30 Apr 2026 09:53:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eX140OR8p8gr; Thu, 30 Apr 2026 09:53:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5EBAC84BFE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777542819;
	bh=je+E5HPgFgCPBRaP11j4c5Pww58J42v7wFlRkzJ1SL8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=H9HudCxkz9MDJ2FZnxvyv3lAO+QgKh+07gxIwh2PCxI90JptlR5YGFE0J9pphw2xt
	 KNVQm2DmWEP6vKvsER5XIRR2aBlEU4hI9IaLVgzIfd+ZW2yBWoPOBXI3wdrsm19aQ0
	 Q2//1vsczIG0Pe6H+fl0qyG4j/6LoWz4VQ+Afz7Ew9OmUilq83C6B1BGbb1s25jvET
	 lsoO2CzgI6EfbtmE919KorBrLo2tV6xXFzO9c7ycTyQl0I1nKniBK0exV7F5YCEVhi
	 QPp6SnGdbDiaDuY3BnJtUSJlN7pzhRodExg7QoDdUzA/NvUpnMHvJ6d2EkAdUMR48S
	 JGQnQaS5eOGLg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5EBAC84BFE;
	Thu, 30 Apr 2026 09:53:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 91B2718F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 09:53:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 76E8161BEB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 09:53:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5L7RIsWAot_d for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Apr 2026 09:53:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BDF4B60E35
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BDF4B60E35
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BDF4B60E35
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 09:53:33 +0000 (UTC)
X-CSE-ConnectionGUID: rrSsLZEOQomtXSxxB2o71g==
X-CSE-MsgGUID: NNQx/LgySdOdTGe05zWMRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="66021072"
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="66021072"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 02:53:33 -0700
X-CSE-ConnectionGUID: QHBlyGaRS+qfTI9KWFibxg==
X-CSE-MsgGUID: 7UitC+ffShG8uYYg44yI2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="234572780"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 02:53:33 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 02:53:32 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 30 Apr 2026 02:53:32 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.9) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 02:53:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=euRZeK0H37O6jOnjF+B71dx1EEbvYtgOiCmnd/Z4ryXW5UzJKPbGlDZYZDNYed/v2967mXiU2uNH5xnGWLvuJ22vF7Pz4MREzIeDXW+1hjlostIvINcTwSKLU4iKjsG8min/yv64wYQE0KK0C2Un7R2I6H159w9th06yJwO8niNC8wuNJNMOMJY4x0chnFRWYNscPt4V6cTVhPu7wiUgRIMe9AWfArVSo4WAO5Yf2ODGzSSSGaWtGtyaJ7k73ahnONcGf2ZP734tXwNP77vyHLGAWpIRoCqj/n8tQ8atwIAwgyRjQtkycV0uE+6JyYiHgs7b6xsC+Jvuy4SEEGxplQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=je+E5HPgFgCPBRaP11j4c5Pww58J42v7wFlRkzJ1SL8=;
 b=As0pwd0CpmzupT6nxjrt0L5LImpQdEv958zxOkbK7vT7QWR7xj71WHCyPBLSg1OXX6rMqoGgEe1uk1n07GE0v1v32JRVUk2GmrOwAUy+cURdoj3oDxTzhJ0rjvc27Nq9CCjKxtUDWWTWeojybp1Ack0Uw5PKtbyCaRE6XI48w12D/xXTVuE2qW2Ph4zaKmpp7/GvT88PLXoD8sHF7OdDG8P/a4oY/FrusE2o8irhk2ScgHQscWmwwKQLL3I6X6yTjlo52TBrtGkzT+Jk/uk8Hpb00W6d1cLx9E8RWKd9JsljYi2iuJFkYG1OghQOprEGtWe34Ey1/Ifyge24pAy5Pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by SA3PR11MB7584.namprd11.prod.outlook.com (2603:10b6:806:305::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.20; Thu, 30 Apr
 2026 09:53:28 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31%5]) with mapi id 15.20.9870.013; Thu, 30 Apr 2026
 09:53:28 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>, Jakub Kicinski
 <kuba@kernel.org>
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
Thread-Index: AQHcwvXi5hF918e07EGu/X9NQPzLLrXS5QsAgAO6hfCAAOg2gIAA3TpQgABo+QCAA+ibAIACdy6AgAECYgCAAbUcgIAAMdSAgABvXoCAAL08gIACCMqAgALYGACAD2MyUA==
Date: Thu, 30 Apr 2026 09:53:27 +0000
Message-ID: <IA1PR11MB6219B1266ADCBFEA5963C30292352@IA1PR11MB6219.namprd11.prod.outlook.com>
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
 <IA0PR11MB7378CF62D86454916AE8F9D79B202@IA0PR11MB7378.namprd11.prod.outlook.com>
 <20260418122603.06d12715@kernel.org>
 <IA0PR11MB7378CD18633287980620A9869B2F2@IA0PR11MB7378.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB7378CD18633287980620A9869B2F2@IA0PR11MB7378.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|SA3PR11MB7584:EE_
x-ms-office365-filtering-correlation-id: 82f9fee6-0886-43f3-9450-08dea69e542c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|18002099003|56012099003|22082099003|38070700021;
x-microsoft-antispam-message-info: gaabxGl/oUVLcvRD2uAnkYhrev8Udzeyz5KXjXhpDlDZBbujnvjdI6Ku93mGotjiO/5wACVsw72s/i+oLtzUhDu7o5rjDbHooHee6SHsrtUPYRZsllcLadxyVLbFYOFqtwFrVCcb4yUBHPLowbNkV0g1DahixYtoLhIrAQGImON9GyI1I21vGAmFJyxompP4jThJoqtjNGLu3Qye8WtjiZLViMp1Fsx9sqYDhnpnPa6vyZsd8IJDjCuG8VGdBB2/TMcJK3QM0m8z9gNkhPeiy0x4mnXUi2qVc5LsIGLwZ7HthuRDx3AcBdXSEHORjuVCSpjjWnWyIkdbA8W4Wxt14XTwUJ8GO6ix1aL118mgoF7rPs3uKK6u322CkMZYbBDhQOrwS2/R54JaLdJtn4oXyr07J/xfjT1mQlbQbSCyOwKocfHKljo5t6FLdy4h92Ub8+szTiSxmGqdlWBW5DA7qRg3MDZS5nmOXUTdd/pBKTtFMEUD5uep5iiL2/kQZDsR06270KyO02QQgWIoofLfvk4Xrh0cdpqjY5p1ncILn8gfce7EIh/RmhKkYdph0B3lm9Do4gB8AmvH7EmLY+Gjz796sUOT2ekKvVTyu0avoMO2QN7sZ72qsmPirT6kuO6YCOezZTvC0LRpJaPgxe01ntkL4Ewi+Ra+pF1NSw8EBMqF0Main25c7eTeRmzqbCksqvd7wYWbA1b6/iNr03YG54D9JxRi5uADhdj99UlWCHVTV8RkRrTpwNeKy2OtmbQJg4U2tms3+C0GqySZk69Ycy5Kzn6SoidRgu1nmnCus+U=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(18002099003)(56012099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JzrngR4FkdYvNUc4zRIi+Klcb1Tdr++0IWmCDLCKteDXjSb/jnKd8ZPgS2YU?=
 =?us-ascii?Q?bss6o0LLm8I+1cBkVSG1M4tlMhFA2FQwVw/tLwlMYZmHD+SEH8V/UslHh88+?=
 =?us-ascii?Q?gaERN4ut8lADa9daepHejWwb2cjpNYCX4fxxa17jStlzJwvA28+U41aRIPlF?=
 =?us-ascii?Q?1d4q89RyXHJr8lJe6su3ryQuNQNJXLqhmlxcJsIgJ7VlRxEYKrwIkg24HVuP?=
 =?us-ascii?Q?yyLziTFbIYfHDhMPne1E3fmoC7nHy2iBdt51uUbhxLsjn5mA+fECUXzLqbws?=
 =?us-ascii?Q?RBDMjSthUcj1W1c8d9kjxcqmMVtrtuEZLCGXUJRnsqd1w2oLMZ8wuXYjVsQg?=
 =?us-ascii?Q?2/T4in0VBkwkSPqCJLrQ26T2MeJALQyBxpKcuO8mVyxZ+2G81GWGtdlGZ6wM?=
 =?us-ascii?Q?Ecg2EdOGWc71kOVz9GX0FB9h3bpO3EijAxDkv0XTdW0YaIyKiKWIh7nExMOG?=
 =?us-ascii?Q?KkNF+vneKr01Me/BrrOgjcUKxtcez4MdczX7hpu5Q1tTeCfySP/fHC2SRWN7?=
 =?us-ascii?Q?Ey6+ldrr0/05orGMFH6yCTEjoY48uHUAasNyN6C9QqTUoYkBKXzE9bWBq+Kh?=
 =?us-ascii?Q?PXLXWaW0F6ZA181UsKbGxKfWs5i29b+DxGNhhixUV45I9BU/P8oMaVCr3Bks?=
 =?us-ascii?Q?3MTTVjD8eQUIxC/Xvu/ULxTRzcD1Zh81ll9iAzQcwApHGSD6V4q4oRJGNZbc?=
 =?us-ascii?Q?ijGEuhGxsc3VSoASjcYwVe1ItNQQuhxCxvzF/6QqofdmlBUIFqWlxKkPe2+C?=
 =?us-ascii?Q?smDb6bzCr/ChxKpspTXWM8qTT7Ol29//4b9inmbQ6CedbcpSy/1hKuWVsXXi?=
 =?us-ascii?Q?cOEqWyCh1fzJ3cqdextc5UEr05jrECB5D9x+OeIlXj6UCajbwxYJApN8K0KH?=
 =?us-ascii?Q?JYjckJXMtLspnqb+t2tRZ4UWrZIRCtgy+73QWpUGdQAzaVUp8TcPDO51c0i/?=
 =?us-ascii?Q?Ka6Mm55kmydxF68D4RJ3LYjJciuywnT+kTrfmhlym1ykHPXym0QT58TuYQtM?=
 =?us-ascii?Q?idLbTvzeDEB4vWcUMk0T2iP2n8u+PYcrvYtDEhRGU5Vejxe7+wveui/1ab/w?=
 =?us-ascii?Q?QEAs2WsV+K9fFk4w4X3FDCSn7WrP99KZjggGTpMlSWRNK37wbYzuj0/PmWpW?=
 =?us-ascii?Q?T33fVtN6OwQK1cI3o/i4ETdFAl1ppk2nkiRpEMJH344IDGdmSU8Qz8hbh0GC?=
 =?us-ascii?Q?jnv5lB/xUSzNg8WaNs5VFK/4+9nHuVqtOP2zKUSOZvRGwnQP1bYrbjN78Rg4?=
 =?us-ascii?Q?oSKhuzfKcKXHb8bbmZ7te5Y/9fjHg/o167dkjT0rKVfM09y3r/aoKw/N7x6Q?=
 =?us-ascii?Q?OAMMM01wF34fxP4bMu/R94qqVtzRkzf9evSXEsWrBbGpg4baBRJE185GNWcw?=
 =?us-ascii?Q?ZhSewD3mnksvslmyevQR1rJWJL8hBCfiZO+5YTMv7MZtWtJaoSZQ6kfQCIzG?=
 =?us-ascii?Q?4kpq/TjxfTFg2BG3ao5+WJieYsg44+RiiLDjvc+S5RNbHYHKq881Hs/xfw3x?=
 =?us-ascii?Q?01ToXcuHv24I/geSiJuqcjGZ+eR+NZY1992AGFdUzSilYGlyWGbGbYkQPNbe?=
 =?us-ascii?Q?85NutpXJqW3HECS0wJ9X37LH9v7xSpecwAj4xMhypyU5hgz+G9vXKuIPJTEW?=
 =?us-ascii?Q?+SQUGt6pQiJohGZXs9+IgFm+RnKkPYfzwUTxxNlMKPWnjlseXdNYICZwSpS2?=
 =?us-ascii?Q?N0sXhVrBxAvh84rKBZ08Ta/P60u1824IV6TAKs/lWh/8iZakvCGCLn5iabfg?=
 =?us-ascii?Q?0GPXgmfS2Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: EUOCE18PMUe78Y1T2F6qeqAi10ZGcbm5VwqsXj1WhV54Orx+Go++v8a+K7D/cL9fSDFJ29kX/nkXzuD48+ycXCcKEeC76QN0Pp5PSBb9W361l2Alp7tBfG4B9X58xOw3E6AbsXwlMAanqNU897g8bfzEoCAYhp75IzJjXy4NVq9n6yRzC8OIIW3zIN8/aZ7WuS323zgMiG3sHEDK0S5/0FDKw+a1UX9LcQDOG4VnA4yJm8n9qvj8cSpeXnaGzGVOQrlqn4cFi8EqMExLxwAlsb4m12tgd1XMLVRrHxC2UOI9pQ4EfeG4oHQLV8+o2uqsKIs3pdLdcHO8CF7POx6HUg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82f9fee6-0886-43f3-9450-08dea69e542c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2026 09:53:28.0376 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9qo4crfvPFz0qYjNk97GcHn3/lJrrMpyvM2mg58E9lzgApAfiCos5Sp8YloXwOeKRFQcb5ottqjnFKt8VBo7c6cwp2FvsaISl2QriBoFvkk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7584
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777542814; x=1809078814;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=je+E5HPgFgCPBRaP11j4c5Pww58J42v7wFlRkzJ1SL8=;
 b=jUYQxrwShIQL6YjtzJEHZrdw7q5/+rDPiHfDR7VnxHWD/V7NSIqAvSGY
 QBRaaMNh1kexYl2Kd5C9NLacFIajO9pcjgKaT9t+5pkGdgrk2bPB9h5XE
 mgdLtWOvU+4drS/A9ow1We5Z2FsnzMXRpmtNDI/xYPssxmDgexYcR0uvI
 SKswyPGEzxjudhABnvQIfyak863zR3IU1WyxhnNasGq7kpcSmJFdgmTzJ
 F7f0r68czSrcQtuK3lcXyUV1ptxP/crrIKKiQuLk7UhQ1xrR8qvZFjDAo
 nEYqOkezMLFsfxGa+Xl9nsoJeGI4q+veqyOot824JJaphThwinmyVJ2Xg
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jUYQxrwS
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
X-Rspamd-Queue-Id: 338AC4A041C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	FORGED_RECIPIENTS(0.00)[m:arkadiusz.kubalewski@intel.com,m:kuba@kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:edumazet@google.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:davem@davemloft.net,m:Prathosh.Satish@microchip.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:jiri@resnulli.us,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,google.com,vger.kernel.org,gmail.com,davemloft.net,microchip.com,lunn.ch,lists.osuosl.org,kernel.org,intel.com,resnulli.us];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.940];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]


> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Kubalewski, Arkadiusz
> Sent: Monday, April 20, 2026 4:52 PM
> To: Jakub Kicinski <kuba@kernel.org>
> Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> edumazet@google.com; netdev@vger.kernel.org;
> richardcochran@gmail.com; donald.hunter@gmail.com; linux-
> kernel@vger.kernel.org; davem@davemloft.net;
> Prathosh.Satish@microchip.com; andrew+netdev@lunn.ch; intel-wired-
> lan@lists.osuosl.org; horms@kernel.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; pabeni@redhat.com; jiri@resnulli.us
> Subject: Re: [Intel-wired-lan] [PATCH v5 net-next 0/8] dpll/ice: Add TXC =
DPLL
> type and full TX reference clock control for E825
>=20
> >From: Jakub Kicinski <kuba@kernel.org>
> >Sent: Saturday, April 18, 2026 9:26 PM
> >
> >On Fri, 17 Apr 2026 12:22:05 +0000 Kubalewski, Arkadiusz wrote:
> >> >> I was thinking that this is more like a purpose specific DPLL devic=
e,
> >> >> if
> >> >> someone would want something similar we would have to review it,
> >> >> right?
> >> >
> >> >We would if it was a Ethernet MAC PLL, but if someone wanted to expos=
e
> >> >whether some random PLL in their ASIC locks - are we adding a new typ=
e
> >> >for each one of those?
> >>
> >> Yes, that was the implicit intention within those patches, if other
> >> purpose
> >> specific PLL would have to be present for whatever HW design and user
> >> control over it would be required, then that would be the easiest to
> >> maintain in the long term? Multiple types and each have own
> >> function/purpose.
> >>
> >> It would be good as long as there is one PLL for a function per board,
> >> once
> >> there could be multiple ones for single function, we would have to add
> >> some
> >> enumeration (labels, etc.)
> >
> >Defer on adding identifiers. User knows which driver and bus device
> >spawned the pll and more importantly what the pin topology is.
> >Naming in the kernel is rarely a good idea.
>=20
> Sure.
>=20
> >
> >> >> It depends, TX clock has one of external pins connected to external
> >> >> DPLL,
> >> >> but second is a board-level pin with ability to provide some extern=
al
> >> >> clock signal, the user would have to determine that purpose just
> >> >> based
> >> >> on the topology of one of the pins, which seems a bit problematic?
> >> >> I.e. if at some point there would be HW with only external non-DPLL
> >> >> connected pins?
> >> >
> >> >Not sure I follow, TBH. To me the function of the "MAC PLL" is fairly
> >> >obvious from the fact that it has a pin exposed via rtnetlink. So it'=
s
> >> >obviously a DPLL which can drive the Tx clock?
> >>
> >> I am lost a bit now too. You mean clock recovery pin? And EEC type dpl=
l?
> >> In this solution the 'MAC'/EEC is external and it doesn't drive TX
> >> clocks
> >> directly.
> >
> >MAC =3D=3D "tspll" =3D=3D TXC in this series. On Grzegorz's diagram the =
new PLL
> >was in the MAC, which makes sense since it's a pll in the same ASIC as
> >the MAC.
> >
>=20
> We wanted the TSPLL from the picture to be PPS type as it drives the PHC
> timer within the MAC.
>=20
> >I'm saying that the function of that pll is obvious since its pin will
> >plug into the netdev / rtnetlink.
> >
>=20
> Yeah I got it, just saying it will work for now :)
>=20
> >> >It's the function / relation / linking to the EEC DPLL that may not
> >> >be obvious. But user can see how the pins connect they can get some
> >> >LLM to draw a diagram of a live system.. et voila :)
> >>
> >> Yes, correct it would work for this particular HW, but adding a varian=
t
> >> without a external EEC-connected pin in the picture would be problemat=
ic
> >> to understand 'generic' dpll purpose, pointing to the labels later.
> >
> >The function of the "MAC/tspll" is still obvious. The clarity of the
> >external PLL is not helped by naming the "MAC/tspll".
> >
> >> Just to make it clear. I believe that generic type dpll could be used =
in
> >> any HW and for any purpose, so after all each such usage could possibl=
y
> >> introduce entropy and confusion on the user side.
> >>
> >> But if you are fine with that, then sure, we can live with generic
> >> purpose dpll.
> >
> >Considering all the imperfect options - generic / unnamed type would be
> >my preference.
>=20
> Ok, sounds good.
>=20
> Thank you!
> Arkadiusz

Thanks for the fruitful discussion. Just submitted v7 in which DPLL_TYPE_GE=
NERIC
Has been introduced (instead of DPLL_TYPE_TXC).

Regards

Grzegorz
