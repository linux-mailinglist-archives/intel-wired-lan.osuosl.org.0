Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMo+EhNrDWqHxAUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2026 10:04:35 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8879D5895B9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2026 10:04:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1A2844113D;
	Wed, 20 May 2026 08:04:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pi6WYi60MzRP; Wed, 20 May 2026 08:04:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7074941105
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779264271;
	bh=dqhTAuJV+St6f09n0aTgSXClUCnccATj0MHk8XSFDR4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FN4foXpOZl/Ud22IwEV1OYdCoAXNNx+UTDNdRYSWY7MGzuArOQHzFjFAN3evqcqlB
	 iGip5PDT27kMvgk2hN2ly9XNLeAbfyGAscE5ceLOpnAU3St6R+1VUrV7ldLW47dxBg
	 2ad6n7ekN9HE7d+YXb1vWVoRywH7F5JT1hTPjw0rTiZ1XLpm6tkavHJkIqtWCoU/JV
	 +m5fUkfcf8Ef8D6eSGAoQ1JjyXnGlcIBSvw8BSeLkuRtw8suGSRBpcVzNj154Isabh
	 0Qa6kgXgA1lqfGhIehAm/wRrWNhqopa6xqSpMOGZ6sh7b9s199LZS1G5bYR+GyiGbU
	 j1TlUUTrevoLA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7074941105;
	Wed, 20 May 2026 08:04:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 57D1C265
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 08:04:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3DA3160FA4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 08:04:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ANOK9MeKpgm1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 May 2026 08:04:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0BC4D60E31
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BC4D60E31
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0BC4D60E31
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 08:04:28 +0000 (UTC)
X-CSE-ConnectionGUID: n7ZX3eyZTvG8eLBQo+alQw==
X-CSE-MsgGUID: 3E8XQoRZT4mXVp+URjvzDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11791"; a="79302128"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="79302128"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2026 01:04:28 -0700
X-CSE-ConnectionGUID: VHEWK4w4Qoy0eGiqCmyGLg==
X-CSE-MsgGUID: 7DK7GNV3TOuo24SLlTx7Rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="245073690"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2026 01:04:28 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 20 May 2026 01:04:27 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 20 May 2026 01:04:27 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.38) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 20 May 2026 01:04:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U6R2cJz13FKt7OwpyNUDF1+OiLUSQByPVJVPuBATdZRUKrG9ka7Eu/46jIpgFs+TB5nJmqybIS3URe3dwibXjV2ZbzbaqNvzMIsavXfkK89osuw/7Vp4kQZM4F0R8cJlfn1Tcxco3bb/Urht40F3Aexejla2HCtCjc5roa+UurMBUuLcVBRGiQHcSopB4yqqgoT82pEQewRG4hy/QPZ3H81HsboWk8mi1PCkoHTSQhjOwXxqUJWbVj+Yv7zDe+vB0YX8V28gM+IcU03x4Pfag7ZP8ayZ5+VhOqX/wDIbudZOuTxrjvazGmzITsgJ3wBqcCrqx/856s/2j2O0KBZUkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dqhTAuJV+St6f09n0aTgSXClUCnccATj0MHk8XSFDR4=;
 b=ndfFrHUcXxzTjp+zNN8Vr/qpG6Z49CkdCkZzZbhviteCg5sW7HzCeuUSZWitwriv1lMTUVDv6aAmJZuLIrCCLn1cUQpmMrZlHCOt+/2+QCcEtG6rZJB+ycv4esEu6GlRZb49RtQSCDky6ZPiO1DiJX/31uYG8PWIEPWhkvIKZmnvweGogWY0G6mt6fzOWqSXSIBh88AMu6StBT/pc3jgJAI+YWM2xZCDZtgpAWmnVV50AFIClA14b+c8uMX8hL/tRlE/iMes7B0zWaiIGHY5XH/W1O4xmlTitNT6VShJkZRmIoDUjWIdomjfaYPMIiiiDMWCUuvpU3fptAYGGlEnGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by SA1PR11MB6760.namprd11.prod.outlook.com (2603:10b6:806:25f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.23; Wed, 20 May
 2026 08:04:18 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d%6]) with mapi id 15.21.0048.013; Wed, 20 May 2026
 08:04:18 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "jesse.brandeburg@intel.com" <jesse.brandeburg@intel.com>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>, 
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v5 1/4] iavf: return EBUSY if reset
 in progress or not ready during MAC change
Thread-Index: AQHc18J+ozvmotoz4kmVLGw6rfdM7bYWrvIg
Date: Wed, 20 May 2026 08:04:18 +0000
Message-ID: <IA3PR11MB8985CC2F76815EA7C88DBE2B8F012@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20260429102426.210750-1-jtornosm@redhat.com>
 <20260429102426.210750-2-jtornosm@redhat.com>
In-Reply-To: <20260429102426.210750-2-jtornosm@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|SA1PR11MB6760:EE_
x-ms-office365-filtering-correlation-id: a13c55d1-3a65-43d9-4b6f-08deb64664c1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|4143699003|38070700021|11063799006|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: 2aI8RLHCFgApRPdLm6kD/QEHYUvtFB57QVL5EOv63pXdALeA4tLf3ci2zDpBUHznwmOSjwb/hHpebQs17XL+kRFhOtPQx0bB8Bsiou6LulE0jDbL6AML9LIbsOS5J3vgfgXSPAdehzHJqWzYY38qk18kiWQBS5r6Vwv7TkZ/jFMk30iAa2OSl0IZ0UBgruZcfd698kCa9gRUeT0NxU1MePw4XOfkUtQZ2RJaJzR+Wm2E70qP8Ju/GehzG2rJSL1uo0EVDDIFa2MoBh/ZUDy2xxnlGi2WjtpWnz43Aqzl7Td8EJMfEe7bjvAE6PgbILC49qmyLYnvuGVUs3J0gFAMXVxy4cQAnTvJ+K/aL55kmHxpUMdLW11gZ+t2KHnMDF91T8W4CrxMlv7zRhxOznfgED1i7nwLVuLFBEeWsOwkkIhQ83kyh1QVKcBEm6U6e6i0A3DQBQoszZwZQkxHktKx/836MEwXr3tz0ya4LSdGUkhCEYghxED1X69tBIV9H+qmTm/ekfLkXYEVu6EdyxOuV3bCcGxkiIJ4g1gYI+MenxnrSbnDZ3/y0cMyTkXWTC/J/bi6BGvlpNF6nuzuPlwtqmU8DXVUihlyPGAjFUVeGR4i+vVJlXgNnoBVTOvZpa5h5hnYF1A16+wQtJ/lFn1THUy1LqtW/h5RcOlUk0dwtYDsu+Vjzu54IJitmxOIlTB3mWBRyNB7TgNu8ckv9ryibNZO0N3UxNcSSYpuDWFWwYQuleDxcBW8eXh3Cczm9xu4
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(4143699003)(38070700021)(11063799006)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GaFWLCrQaUFurBnKCKeiGeIXW33KTJSEK16dqWdaKa1AA/oLYYX1BYEfPuym?=
 =?us-ascii?Q?lLZ20mHyiVVjnPAsQ3pxhn6Ja9RqVDdA0xf346lp4Vhje+4/aaWvn+oKG+yg?=
 =?us-ascii?Q?WSfxYhZQMbBEZzK8rcKEUuxrce38aGKtvb5bVL37qZzQgy6LOmBzxF5StCJB?=
 =?us-ascii?Q?wpnKgo6y+OcfLSsYYAbNOoWEsNEB0rOada5SM7xcqnzskhqSzbjdNFRKSKDZ?=
 =?us-ascii?Q?Y7JyiMRJuRFQkULXCzBeDeSxORerjn+ewQRmvsUuPZnAXcw3xFQtMVK2lvBQ?=
 =?us-ascii?Q?xKw22FOALoYtr8wxSaUk0bIAKovuaRwBlKhypWbsl6zmhirzCL8W/S9fqKf0?=
 =?us-ascii?Q?bzk2FHZ7m+iL3uNAGMRKg2/KtXm8I9kQGfJh6FdAX41yrBfY8QU19SxS7jmK?=
 =?us-ascii?Q?zpdEnQUflM2X4tkEmmvDFFcceTFEtTanv6xG0jbtqrxdJ+1PJb8jz6dV0C4c?=
 =?us-ascii?Q?pDWpUfAjOBjUNr7aihdLc4egZeB91bVV+UiLUvP8DYolTPTQI9t3coPwBoXK?=
 =?us-ascii?Q?ssROH5A4OcY9RGoEUeUso/Y0ng3NCwgtL0oMlzULkXnrUMI9smTUjMK0JzG7?=
 =?us-ascii?Q?V7FYALsqvjRhFC+sZ5LqhxiW1Cx6ibVwUvwrWM3ECjWLV9HxGX3ezf3YzZlk?=
 =?us-ascii?Q?Di0wVi6DMZwQARybl8ODQ76K+DUbgVeLcOtiuVxIsIMx5dhLlyejrEx+g55Y?=
 =?us-ascii?Q?nRULEqXhLoLtLXcYztQYM9vjamVcskq2RbFr0xtMBHmIbu/mQOqu5kjDf2Cz?=
 =?us-ascii?Q?WxvTgKAvJPje+20Y6AsysMqIwbzN16xkniElKVUA5bi3k8T+sBD2TSddCERD?=
 =?us-ascii?Q?q0OYYzS2Kd6BOLajKrYypgyvUm1G39cGXXOGsY2Y5pP7m6Z8F5fYNvNYQ8XR?=
 =?us-ascii?Q?XNL0JJ22UMkL8Ru9woLLnU6xcHoe2BxBfJvWVDAcrIrxG0i2qh/x1OEFQplz?=
 =?us-ascii?Q?Gn2SZeXquQbh9E2wqjL0dmjo2e2sStam0cOr3+g/CtntgYNCdTldrfyQh8L8?=
 =?us-ascii?Q?8Ab9sumkh9Pr9fO1G4rfRpkBZ7Wbt9zyEU20Kthu+VkpYQSf4VmVoIqxiMkE?=
 =?us-ascii?Q?2aGb6QIfgv25PQqaMg/qqKFL9vym8wNtoI6Ukm+TNS+wcJkHLEEkYz5ZI+oD?=
 =?us-ascii?Q?1rFtpFgVD+Q1oLTBVka7Pw/fsIKQXfd12KejgznO/e3XdBOo9+e63RMaclBu?=
 =?us-ascii?Q?Md8R+tzKQFOEBGFlkopbE8nWSNAoiIpy2v26okrZnYPEqPWjXFmijKYVCEjx?=
 =?us-ascii?Q?UYbcyRRbZ8rgApGIa2VNc0MM5vqmZGho0vdy67OFz/1Ixe4cLNG3c0W5r+Py?=
 =?us-ascii?Q?ypM9qM7URtLfKWh/I4LpxJD7zCTF7rVmPMdOxntw9olHx9swYCTAEAjDuUzK?=
 =?us-ascii?Q?mwRioMaD672ONaIC/xtXQTonf1Q7p5fbaZf8X9ayktcKOO1s/JJJG6C45iaF?=
 =?us-ascii?Q?UHvdFZEYPqaaud0vfWnUyiJPjHcCxLcL4GTqeBaHQuQTaQr0+uzUAKTnir2I?=
 =?us-ascii?Q?pqQmgYMWhfSaDV8nIF8QtFmjlwk4un7xZ8VMOt8ggk8psToZg00+lrLnsP74?=
 =?us-ascii?Q?/RnpLPk2wlaJVJzpHaVyLYL+ZQbzhbYhA3BQrAGey5B1IF8N2y/uH9wszsY7?=
 =?us-ascii?Q?LsPFhKrhf2AhGlRPH0sApiZpRH6yrYOQWGkc+rPl1+qGdzf0K09ch3DR+/yb?=
 =?us-ascii?Q?UyjyMzfpVc5cPWXrYDq7pfFfgrtMPEmN3LV5lQvYk7k6YXAryd1MGlkQ8+yr?=
 =?us-ascii?Q?BEWaTLKseA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Y+HTnZqiUmYmJ6CcvpH20ySsyL+CpiCxXo9M4YRL82Y70ZOUHtKeDMYn25nfYtNbNJW07UWp1jbjc2GTy8/oMpIvsOKlLtNmfZx+XikGrFKjS/SK6nA1aRO/7RA0DazfU3wFgrezrNbBPLo2cIPgdbBAQzwC9U9vTHjuhP8MRPmfdtkua3j49GDZqouJMLyagkvOscpmm4glUUeINzl1um8bNL3ZDwn+YgDZwgZaZTSyJmznkCoq81LxgA56juNB/KxMiLxiRNJnfsbD+9cpyfg/OSQkVhzGIe14WiBJgSelBFcPAaFgbgnjbQY79hbiZxJsLZYURYZVxOqVYXJ4eA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a13c55d1-3a65-43d9-4b6f-08deb64664c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2026 08:04:18.6985 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n312y2Xwi5bpXB0Jr1M2wL/zPKlz6INw6RRVu9YMiEAn9l0ENhnwbA8A+BhD9Wmr2TNbH8dvlo0c28OR6YiVeNyOUBwSByM0cbOPHNL5n4s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6760
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779264269; x=1810800269;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u83jy/tc70DY/DlfkanXvKvGsU2sx1MSE/CX1G4UEtI=;
 b=aIXEcMlD6BIdOzcT4X0BYBF84suhTaW3fB3EzIXFD+7f0UW7ASR0Cc7z
 vfO1H5xT2F62rGG0ChVQT0zbVB/32uUoA0wmovrV3sV9BBhDR7J2zR5Dm
 7SQhukaDVF7+/dF7niO1PnsQ18r9fIKlmNskGPabXCClXFoPEW1g1nPQH
 3nUnNAi7jesDtqvQD4vFqDabHkw7ljpdPcdWlGPeqN60hICQO4dMZMrgt
 4HpjEJnom7mpaF4KexGBDp7urtyCLLvgs0Iy/7+ctUBAMJrI90898nyfb
 RKzAGCsAX6BZe78XuCtGO6nMfcoHYwrPPtNopAuOeXjZ/mMepMS+te4ZY
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aIXEcMlD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v5 1/4] iavf: return EBUSY if
 reset in progress or not ready during MAC change
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:horms@kernel.org,m:jesse.brandeburg@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,davemloft.net:email,IA3PR11MB8985.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 8879D5895B9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of J=
ose
> Ignacio Tornos Martinez
> Sent: Wednesday, April 29, 2026 12:24 PM
> To: netdev@vger.kernel.org
> Cc: intel-wired-lan@lists.osuosl.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Keller, Jacob E <jacob.e.keller@intel.co=
m>;
> horms@kernel.org; jesse.brandeburg@intel.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net; edumazet@google.com;
> kuba@kernel.org; pabeni@redhat.com; Jose Ignacio Tornos Martinez
> <jtornosm@redhat.com>
> Subject: [Intel-wired-lan] [PATCH net v5 1/4] iavf: return EBUSY if reset=
 in
> progress or not ready during MAC change
>=20
> When a MAC address change is requested while the VF is resetting or still
> initializing, return -EBUSY immediately instead of attempting the operati=
on.
>=20
> Additionally, during early initialization states (before __IAVF_DOWN), th=
e PF may
> be slow to respond to MAC change requests, causing long delays. Only allo=
w MAC
> changes once the VF reaches __IAVF_DOWN state or later, when the watchdog=
 is
> running and the VF is ready for operations.
>=20
> After commit ad7c7b2172c3 ("net: hold netdev instance lock during sysfs
> operations"), MAC changes are called with the netdev lock held, so we sho=
uld not
> wait with the lock held during reset or initialization. This allows the c=
aller to retry
> or handle the busy state appropriately without blocking other operations.
>=20
> Signed-off-by: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>=20
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index dad001abc908..67aa14350b1b 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1060,6 +1060,9 @@ static int iavf_set_mac(struct net_device *netdev, =
void
> *p)
>  	struct sockaddr *addr =3D p;
>  	int ret;
>=20
> +	if (iavf_is_reset_in_progress(adapter) || adapter->state <
> __IAVF_DOWN)
> +		return -EBUSY;
> +
>  	if (!is_valid_ether_addr(addr->sa_data))
>  		return -EADDRNOTAVAIL;
>=20
> --
> 2.53.0


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

