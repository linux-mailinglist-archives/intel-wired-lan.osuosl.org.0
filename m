Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E991FA7106F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Mar 2025 07:11:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4347A4088E;
	Wed, 26 Mar 2025 06:11:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Scxnxqkw4web; Wed, 26 Mar 2025 06:11:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8FA3440904
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742969507;
	bh=nX13j3o/2IxGtsaOoR8ior4NR7sLs5bdOSUn6UC8pSc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=py7AqR/vCJPCLiqreTqyeZvD8totj+EVMKUZf/h17H34jfBlNRszQn7TjDHe42EZI
	 gVKhEEZq/79VxH0basoqI0Ec3HFkmc+fQ9w4Ra3vDUE8nyGlylbWQJqhguQ8v4xw3F
	 dNOshySv+QOlbWftcCjNSqejqWP3wabzSBcQqxihMh2MfQjhoCDM0aFcVqJOaPyNGU
	 a7PhXPmBYyb9aConG3DzCFWaFav/zSoPcEZBuSoICaIVC5hdEu1pGHZEPKGuK/eKV7
	 U9ylmo0PkQyW2QOHd2T09idrJQOUw1DkvzW555fMQfeBv5hxhZFaYMqSxrmbUV4738
	 /UHAtSaVf0AtQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8FA3440904;
	Wed, 26 Mar 2025 06:11:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id CEE551B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Mar 2025 06:11:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B07C14088E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Mar 2025 06:11:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GTfkaKigqXPa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Mar 2025 06:11:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=sweta.kumari@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 77F46406E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77F46406E6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 77F46406E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Mar 2025 06:11:44 +0000 (UTC)
X-CSE-ConnectionGUID: F8gCH7DKS4ORvdD50VecBw==
X-CSE-MsgGUID: Kzl6dQ7MS/mXlWcYQhmuYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11384"; a="55233975"
X-IronPort-AV: E=Sophos;i="6.14,277,1736841600"; d="scan'208";a="55233975"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 23:11:43 -0700
X-CSE-ConnectionGUID: EVkVp1NWRzmcS/My4V18VA==
X-CSE-MsgGUID: b45iWctnR4mcuPVlg9jALw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,277,1736841600"; d="scan'208";a="128790730"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Mar 2025 23:11:43 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 25 Mar 2025 23:11:42 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 25 Mar 2025 23:11:42 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 25 Mar 2025 23:11:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iahGBJJsJ7wZFVybA/wNA7xuR84kAJKUMUtqSIja/g+sVp1aHXnIa3imqvNrAR5O9NGUsmLI2S9+5/DQgKe6raPNQc2Dt14Zfoi9C4ZJzS3TNai+77BKdm9f8AWdaN7j2iqZ8DyyWM4e3K8GRMddV/bRIBP6Mk6OWV691lFMBW9R0gh5zRzfW4EwVmjAch1nA8eqZaWrZXBpkZZOj5KPSTX5FnHJQzGZZlRGCNSqZ+tszI8V3HQ1dcTlaBcVvjVu89HK0U+SZL5sif9D96z/uwMMB/CL4WTj42c0az04tA1O9uGSvOl0EZpWYx9PzCIAptMHPu91Bb/8gcKVbmwVdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nX13j3o/2IxGtsaOoR8ior4NR7sLs5bdOSUn6UC8pSc=;
 b=hguRcChL3afGgXk3QUXM+IWvEKxhvRn7KHA+D4C7rJCCiu42+/K5yH4tvX1sN0uXYk4wr9yEqJ/+BgjTpevwpJaA+go7+fjBzm8Znmm2y7VTFY/+n5yTGLeJJ5/U3sotWh45Dc8eH1wFO57MWr0CyQEHXptvjoZHCQcWU/G97axXfIUyvAzWtU6oQeIR6dvq5OLayY0bm/UtkVvnhPVSF9djAOIrhhRsiM0XoICA5aQJWRQU5uGhMAB9t4gkU+nqDBk3mllPlODkpe91+BYntVFGa+9JOF1P2Jdp/ndm1j1ti8c7d11Akqgfo/9qGoYnh9IXJDCMp58XIeWWedmfng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6232.namprd11.prod.outlook.com (2603:10b6:208:3c3::7)
 by SA1PR11MB7130.namprd11.prod.outlook.com (2603:10b6:806:29f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Wed, 26 Mar
 2025 06:11:33 +0000
Received: from MN0PR11MB6232.namprd11.prod.outlook.com
 ([fe80::5aa7:eee9:a36b:a204]) by MN0PR11MB6232.namprd11.prod.outlook.com
 ([fe80::5aa7:eee9:a36b:a204%4]) with mapi id 15.20.8534.040; Wed, 26 Mar 2025
 06:11:33 +0000
From: "Kumari, Sweta" <sweta.kumari@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, "Dumazet, Eric" <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, "Damato, Joe" <jdamato@fastly.com>, Gerhard Engleder
 <gerhard@engleder-embedded.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 2/4] igb: Link queues to
 NAPI instances
Thread-Index: AQHbmLl9aT1pmif1mEmFHL2Pgklo17OE+XSQ
Date: Wed, 26 Mar 2025 06:11:33 +0000
Message-ID: <MN0PR11MB6232352A51F431A2E2E100959CA62@MN0PR11MB6232.namprd11.prod.outlook.com>
References: <20250319-igb_irq-v3-0-b9ee902143dd@linutronix.de>
 <20250319-igb_irq-v3-2-b9ee902143dd@linutronix.de>
In-Reply-To: <20250319-igb_irq-v3-2-b9ee902143dd@linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN0PR11MB6232:EE_|SA1PR11MB7130:EE_
x-ms-office365-filtering-correlation-id: 1298cc06-3c81-4367-3cda-08dd6c2d0eb7
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|7416014|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?QIIUB8Q3I9Q3tE4oeysvzH0OqkBQI23TuzeJ23dGXMutVMDHzMX2YUSiUfQL?=
 =?us-ascii?Q?tHYDDTtVrkrSybCRG69zBrhgQ85DMUBrfvvGl6OZRWy0ycKW5unevvdnuQTK?=
 =?us-ascii?Q?6XCM6S7AFQ53llpEc4/XX/EDJQ93B4L7w7+xkpi97W29wvq5s6qMPkseSDDs?=
 =?us-ascii?Q?9LgyQlmD+50Yytu3venM12gVlo/A+UNN1unvWa1swiOcPCkWVogqv4xifyks?=
 =?us-ascii?Q?EoblFS3QMhY5JPD/AhGztVPe136HIEtcdXW6h472iHZZafpfe0Kkn3ZK4V36?=
 =?us-ascii?Q?scuOgbQWwo1hmMhzBaoIS66LZG0UxypS6ZgmplBtjqLrz7elFHWiuq3eq12a?=
 =?us-ascii?Q?QtZJzeSp9kNlMIElcVvXgZqZnDFDNoc6xzNw1oFHuELsRZHoBGcMn2+EUQ+2?=
 =?us-ascii?Q?ZoqFIhfwlGPWZWNBcZYk2xSe8vXlRbMLT74QcfNIqnH4ksp/hO2FIxaqZyv0?=
 =?us-ascii?Q?N74Xu6SOZdjPAkDx7iVMHcH0iecARA11xGP8STY5ooJgyp5pqkKCtW5Rv3vJ?=
 =?us-ascii?Q?QfZfETIIVL7a/cSok3ujnxc2sE6hCDk5sJnMZucsYRf10XkcPSn/GzzHqJy6?=
 =?us-ascii?Q?y1jaXdvhqM6xYPym7BjyuMjZG54sk09MT4RKmkjgqWdbVTeKKqot0LyuL9IW?=
 =?us-ascii?Q?QI8t24v5rPjBWNyJQJXS/vlgg0qFHpX3l/nlOLgkjliJ1f+e55EZHxC15pOQ?=
 =?us-ascii?Q?xjTTAMKQplQ0meemj/zsa8/MxqG8c9L0+dUNHJnT3BWRVN19mpoXYy9ZChJ/?=
 =?us-ascii?Q?EdMqtlzFVbQyLfldXBi6AujutO3TMJSJ5NvX0vuyJDfkMnp2l6cUgGhf7sIo?=
 =?us-ascii?Q?+QVKK8fTEZ4kEqEnWHYFqb3JTWWzWMLTWQ7mFTcgcMMUVwRcTCiPCZEiXA5n?=
 =?us-ascii?Q?/WzWCBUMJPSOKeJKUqrt3U6xP5Qu6QOI65oiQjYkFW6NioFhdMR4Jpbc1dFK?=
 =?us-ascii?Q?nLWkM6fxNa+hUGzYwk5HgPgWaKnQO+Vni+znbpGNqkiZfHNiD/VQ4hyGruSi?=
 =?us-ascii?Q?ihp7DuApzkzj6TycUg5NfoEEBKxodVdyNrzpVE27wV95NjesioczzOwPUAu7?=
 =?us-ascii?Q?d6k5ar+eLGTNf0+YZUaNFtG42+oExtpnm0Zrc1Z1HnN5jsXyjKATX1ISBJQD?=
 =?us-ascii?Q?bdpljuY6wKPOY6lRdZaH2GP116JYKb4vdqE+PLqGxfsM5OLweyeB+PQagRFv?=
 =?us-ascii?Q?t6pVDXM9rFXMfTWmzhb3oCRliIdXPYZO6Xe5Wk6mpB/irdKBc6v+FCUvQBhc?=
 =?us-ascii?Q?nsoKq8cdDayE70oC4GrEhsZyjhOMPzvjMhcUZzijrRibgY9Jhl4simChbkxs?=
 =?us-ascii?Q?jb3kcnyppz9uh7orcARmiYHJb3XgJbZtXRldDpGOwEcMChktmubA/tTEnQLE?=
 =?us-ascii?Q?oM8eUPMhfMZQR17kOkxuvsNwqaYDk2AF8lXtiWLVpafiGxkzL7G3cPhE3DS8?=
 =?us-ascii?Q?ShJV3Z3px/49bnASE8ucI0fQQo0mchmW?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6232.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HrLvxnBlePljt6MN8O2kqSNhXfam4aT2mwuq8sIMlZ83aR4gLNr3FREJdpcv?=
 =?us-ascii?Q?3iR16PYEKtHGd0UQNUW4yL+jRZdxJNkqn+8yLV1tolYYcNmCdnV45y1JBJoU?=
 =?us-ascii?Q?IcgwCfYlMJToOw/XjEGn61ldNxymmSQxnPhBGi70vDGFDdLSCT0AU3097fyj?=
 =?us-ascii?Q?86tu/QKsZcDAIvjEZBIg72iIVbc1vUXj3TLM8hEIKNETycaKFlZnLt7AZoj2?=
 =?us-ascii?Q?0ezBY/ru6jozGLYRyK82MkjzIlC+gn9rCHzNSPg6sfhFfwnhzRauUKOhUiFz?=
 =?us-ascii?Q?wGHjpepoAtWk9k9wLeP/+Bpju6wyE7X0tBQ0uCON7rhtN8y1Vzy1Y+7OQj4h?=
 =?us-ascii?Q?ojHS0wiMTNAWmMaO9w1VHBKqwN49oRrj+wTUMh7QmTnvscUUHhg2Wu2gAVdj?=
 =?us-ascii?Q?3KNckjxu8OxP8OPK1CLfDpMKSW1sacXp87VXqHM0Y1jwXgsPfBCfL/ecZpZl?=
 =?us-ascii?Q?MiqA64eVphjMlwz4VBupamIpY2U9wiRm+SoKyG4Wn5HLkLIF31y7QD4XVXIq?=
 =?us-ascii?Q?W50quO0TfK+UFNOm0/seZZSstKhChQC5hULUbXVjglsNzFgTLvFcINwMv762?=
 =?us-ascii?Q?OiRUYZGmRF4giOZ9h0UQNylIHkRthmcHX6Zy+WzZ/wPsdWQXRM4nY7CGnTzF?=
 =?us-ascii?Q?g+IaQJBB8KpbLD55uDu9PSh6svnZoQDOSV2lK23BrFznJj2owztbbUhQTEL0?=
 =?us-ascii?Q?/SGFE+tpKRY38JmD7L8BFiIJouhbITs4ohvq5mpfVsXv4NoG4yTNHO/CwMCa?=
 =?us-ascii?Q?DFOJSxSPKMnGi7tDReDfoVBTpP0AZupt700Wwn0GMpLY/tW5EQ0+xHIZXTho?=
 =?us-ascii?Q?VrVydRheKoqlfwFuB3bQ5AdmVIyuuOF7clWMUsdQPWbsJyDdSAAt0HtHObrG?=
 =?us-ascii?Q?RrlU4OxNSxw6AhCdRFYt1bOkzLwFM/GY6oxmvZguGy3a/uyKCjJ7+JM4Q+2Y?=
 =?us-ascii?Q?J5DMNCPLOU6E4DMuTMLkFeLBgWdjEyLb5/9htpfbT6o7dMYm3aBpKwf+QPSQ?=
 =?us-ascii?Q?U26jHhr9pLht8U7+gmBppz6vgd9ZF88vAv5QwM0Am437T7Uetv3TVE4NcMEG?=
 =?us-ascii?Q?xVxS98GBV3qKZb5Hye06uF/alQT8jc5c9WQW4sR74QSVsbGwjNkDcdDF65El?=
 =?us-ascii?Q?yvU+dG4r9NjfbFWDMCL08rE+C+cH+wLnKk8+smWzLZTd/u56yTzgM7p45+pz?=
 =?us-ascii?Q?tTUNuCsyvMgSg02Vuh90b0dpTORPA1l5BqQzOrkUq8+0VOCGLnhNdFmHlbm8?=
 =?us-ascii?Q?+imwliE1gaUwOk2VGXn9zSv5c6Uhe6WhRZAkiJi3AslEgSkRL1N0xFeN38te?=
 =?us-ascii?Q?pIVuyM4HBPzuxm31LjkpAAcTz6cVz7PdwlGI0GAkjLQfvLyojtbM1vFFIUkv?=
 =?us-ascii?Q?Ha2b7HY/KdHfxjdUbjSk8af0vqEr6ZTFUg6V0QXLG8Df+ME92PC7lFVrZHSz?=
 =?us-ascii?Q?j5z98I9TOxgcUBcOCj1QI2/i4lt/4xMnxzn6vOYeLghLuXbGodzsdFTIRog7?=
 =?us-ascii?Q?ozWSt7AtpLhVA/Vngj17GqJMBIXwMNHb+lvV+ATQ1sgf/GNOy5HbUGLo1blD?=
 =?us-ascii?Q?/wRykakLEpARAM5xqxIqESW9Tt5ZnpNwV1rbZTBl?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6232.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1298cc06-3c81-4367-3cda-08dd6c2d0eb7
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2025 06:11:33.2635 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0qfAV8Qdgc1cSCpIMM8MYy9AwWT1EAepdzaDhwraA7xhjmhUZXzpk5rNqgVmKTL+8aO8bwpt5yKcgfW6/hvUPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7130
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742969504; x=1774505504;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aE1rPARmqIsBFp756U5H0le/DR9ot7gv6nB7Ffa9PyI=;
 b=So9EUfF8Sgh6NPThPXkS/B1CBeW4vnpfXDAPGoAH9+4IPV8oyjgfKnCh
 n0q8JIMuKvGlK8i7al17Qjh76t1BDD4EqlVT9AhA3otnXw5z7ro7y5kq1
 FwDV+R5ihSMFeSfpunwtSfTWXb54Gt5cLCQ5PnS34DW+qjiU1Vc69gq1p
 9MMJ0MpuBYhQa0Kgytn4Ss/AqZRZqqd3SaQQRiLTC1dqcFmBHApmlg3wX
 8ieEs5l6AKx9Gi4lhJRj+zreUNli9uKm5ol6I9ZRQZaMNccLIlW876ak3
 nLVfHSOxTnY0/D3P24zuwR+812fAh2DMNGGQ9VbmJfA/MgsfPe0/Glo8f
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=So9EUfF8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/4] igb: Link queues to
 NAPI instances
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
> Kurt Kanzenbach
> Sent: Wednesday, March 19, 2025 3:57 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Cc: Andrew Lunn <andrew+netdev@lunn.ch>; David S. Miller
> <davem@davemloft.net>; Dumazet, Eric <edumazet@google.com>; Jakub
> Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Sebastian
> Andrzej Siewior <bigeasy@linutronix.de>; Damato, Joe
> <jdamato@fastly.com>; Gerhard Engleder <gerhard@engleder-
> embedded.com>; intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org;
> Kurt Kanzenbach <kurt@linutronix.de>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/4] igb: Link queues to NA=
PI
> instances
>=20
> Link queues to NAPI instances via netdev-genl API. This is required to us=
e
> XDP/ZC busy polling. See commit 5ef44b3cb43b ("xsk: Bring back busy polli=
ng
> support") for details.
>=20
> This also allows users to query the info with netlink:
>=20
> |$ ./tools/net/ynl/pyynl/cli.py --spec
> Documentation/netlink/specs/netdev.yaml \
> |                               --dump queue-get --json=3D'{"ifindex": 2}=
'
> |[{'id': 0, 'ifindex': 2, 'napi-id': 8201, 'type': 'rx'},
> | {'id': 1, 'ifindex': 2, 'napi-id': 8202, 'type': 'rx'},
> | {'id': 2, 'ifindex': 2, 'napi-id': 8203, 'type': 'rx'},
> | {'id': 3, 'ifindex': 2, 'napi-id': 8204, 'type': 'rx'},
> | {'id': 0, 'ifindex': 2, 'napi-id': 8201, 'type': 'tx'},
> | {'id': 1, 'ifindex': 2, 'napi-id': 8202, 'type': 'tx'},
> | {'id': 2, 'ifindex': 2, 'napi-id': 8203, 'type': 'tx'},
> | {'id': 3, 'ifindex': 2, 'napi-id': 8204, 'type': 'tx'}]
>=20
> Add rtnl locking to PCI error handlers, because netif_queue_set_napi()
> requires the lock held.
>=20
> While at __igb_open() use RCT coding style.
>=20
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
>  drivers/net/ethernet/intel/igb/igb.h      |  2 ++
>  drivers/net/ethernet/intel/igb/igb_main.c | 43
> +++++++++++++++++++++++++++----
>  2 files changed, 40 insertions(+), 5 deletions(-)
>=20
Tested-by: Sweta Kumari <sweta.kumari@intel.com>
