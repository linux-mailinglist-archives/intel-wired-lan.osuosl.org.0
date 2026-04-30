Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YNL8KjA982kGywEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 13:29:52 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F52D4A2256
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 13:29:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3639E61C26;
	Thu, 30 Apr 2026 11:29:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uPPvNDo8a94u; Thu, 30 Apr 2026 11:29:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7DC9261C23
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777548588;
	bh=slKOeRLRMEZss+rLU95xhdBSHOH8RIAJE2KkbPzCPwM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mSUuF6Y2TN6XS2bVvOgQ9+VDmt+VjOz7QMD+yi1S6XeOsKE3a2mvUHmrk3hklxzjB
	 8AQ/z5/1lZrIiLVgSmtv4A2r17X1nCbSBEd41yu7RBzmrtDV7tQxqwo45gYuwVHiIw
	 GXicCp/E0niPosKmZXHph957mztmFa7qyDTLZh/i/9bczij0NmTkA7Y5bEdPueseVH
	 Bg6k0zT7SzbXyksBNsUckIiIZEiO0gMIGLfzoy6H3HrCyGwUl2Ipqi27UkvirF45rF
	 s1hRoMz69WG4KMTHArdjGiYiNHtIe3m7T3Z0HiP1zCOypKZstAy5BZORPVfHNJCac2
	 0rIDVEsS4Ry5A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7DC9261C23;
	Thu, 30 Apr 2026 11:29:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 925FF18F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 11:29:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 78514429A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 11:29:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RIZmso1mgv_b for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Apr 2026 11:29:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EBFB942871
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EBFB942871
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EBFB942871
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 11:29:45 +0000 (UTC)
X-CSE-ConnectionGUID: IQF91Sz5QT+owUpOvkcPpg==
X-CSE-MsgGUID: uVXcjDHkQaiVXokYr6deqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="78204854"
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="78204854"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 04:29:45 -0700
X-CSE-ConnectionGUID: lXRWFe7bQf22P2CiZqrWYA==
X-CSE-MsgGUID: 7McejbgXSzm1I0BX9LTPYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="229949671"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 04:29:44 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 04:29:43 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 30 Apr 2026 04:29:43 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.26) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 04:29:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cVzX3m7EBMoGmtGIgDO1Ql0f8L0iKdzgeAdbOfnldRq11bE+A/wjh7u2CJHcG86jVgh1SalSyLalPK1/0gsB2W3PSmIxEUfXo49fdngRoo62hbbarLl8oRLWEC/M38X6Kx5braGaK8gouUU1m/Si1NAV8q0d+x8iE3mCKZ2xwgUh3RivHRCOPDlnrIMPF0fxglUYawu+5XGZEvzN/M91BdirHppgBWf4GnpcR2seOuzyIZM2N566ni+Q1Dbeq0yG+iCR781SUKdzpVB8xmhXaaOdIrjKsuFB8iadTS5r5cagHSeBM4MVQtg5o3Ba9Xz7cxl6mkqyGsHBlvV1jCFkug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=slKOeRLRMEZss+rLU95xhdBSHOH8RIAJE2KkbPzCPwM=;
 b=cH9CjS+TRMdvnPhStzrt13x5BEEAvWwIq2KmV626Y9Y1lBj3W0BXYFKKGx4PKOLO6PWQEiJ2m7Tpf0TJ3nNVDdzIK1XNxXQxeiW4yYLjQOTRDVkDEkZcZrPphIrkrAVic40KwEqQWdg9v3vSfQlIZSvf39GEFtYUwrApSUuKSH9ABZWhkaUdweqXtnntEVCsk/Jd2tRDiu24GU5pCWFH/1rafUh8Y+5FthBTgFvORZvBI+C7Baa4zPPT9DYLnYYFJcrroPcSTZnxmjjlK9rSVacUSD2Asi7agh/9JG7Y61MGflNEMGt5fjr9kLEZCMMN4DmFAB7trXa60jWPwKoc+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CH0PR11MB8085.namprd11.prod.outlook.com (2603:10b6:610:183::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.20; Thu, 30 Apr
 2026 11:29:39 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9870.020; Thu, 30 Apr 2026
 11:29:39 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "kuba@kernel.org" <kuba@kernel.org>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "edumazet@google.com"
 <edumazet@google.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "horms@kernel.org" <horms@kernel.org>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH v7 net-next 7/8] ice: add Tx reference
 clock index handling to AN restart command
Thread-Index: AQHc2IZqDPnP6xhm00ikOcbl8yu+FLX3eCLg
Date: Thu, 30 Apr 2026 11:29:39 +0000
Message-ID: <IA3PR11MB898655C6C1197A45FE33099EE5352@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260430094238.987976-1-grzegorz.nitka@intel.com>
 <20260430094238.987976-8-grzegorz.nitka@intel.com>
In-Reply-To: <20260430094238.987976-8-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CH0PR11MB8085:EE_
x-ms-office365-filtering-correlation-id: e9dbd8a9-6051-46de-31ab-08dea6abc43a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: wi6iTPVgPxgCbNQhsbhQkK2l6075PGJUmXEjTluCSs0aJcmG5DUDueDn9zgTWULnhIBVItxeZJSjgjLt7Ume0Zitkmhg1ieIW5RVRzOpjCw7vKFcKbXf++14fZ3AAbfWBU8Cg2fdn3WGjz7b1M41M+8CF/2dxHIlYvqUBQsFUPMV8vW99d9gvdVDxe1vChfN4syBMWOiGegMRLTS5ADuuwQgLTQjFm5pntnDN+UOt4HHKeoehrsgswdKcr63afrC+ofTZHSzsBtTWrcf/Xm0kn/XGIp1GZfIdfBMq6ieOl0dKW2XCInDZCAttXzLA3vJmNSfQJ57FcVIS7XgoIIMLuMV4PwBYYIVbMl/lnStIbUiUK6ldv5Ox0twh67390aFteDIa9VZvXXAR5/U7IOOnrf5FitHKOujOyZIjrRcr7HG1K/3VoeswHU5mO75xLCL+Qnhq6niENVesmUt9Ecc/hUriNK3+8ZV30a5zOdhNGMzMuu+MWRQCQX18zJp9L259ttcj+FE1eGP48qX7ZOljroCnAhCBROd7GBpVQxEvgVSbasGS5VSa5nkSjaUEC2/fv+SSUuO5ex3oaMXxQ0J7ugT1GZmch1EaHPgbEZwt8+gHXkPy0+5TUUtwgJsrc4fAfLCFlOF+NGj1vqkASN1nT+FoYDKGWAXtXPMi1EBhjZu5vs3+elQoQrDeOV1NaSD1RLpiZLZRFkLHi9WrgIPwvsN4orz8ZNX6r4FKoxX4lu3whKTC5/VLcLu5mVxT8s5aOisWDWbSuHDakh0VWNv0L41J6lixs3UjxpLp/JGMKk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LuvPiE65hvXk1uV6JRajEZrcxAQ2jRU0Zp5HuiXHKvR6lAPfGhrOuUznxHDw?=
 =?us-ascii?Q?E0aWZTE0i1uSFiNiXHxDKLrHcTaQKh9y7y+hWw/A5F6wcBNQ2PhUZC6jWHcy?=
 =?us-ascii?Q?qFdHXUiUqOWdey0ZbPrqqxd1Gya/GPOHRTE9EMB4xnvhXj/PYlDCHf48Ys+N?=
 =?us-ascii?Q?tfrl5j/Il34YPTXkxiyinBL5NGdMid22KPQeHv0P1xG/Ok6pkSfIw6McOcr3?=
 =?us-ascii?Q?Z2FjbAba/4FEQrPP/s+2f3t7UKf7hv9LUt/ZVvkRbjzJRBk+/TjBiCnjc9ir?=
 =?us-ascii?Q?tmGSSG8BbaKiTuSYvH0WaTJvOoncMBu35Ia3QtIpYaXKCTyhK72gaWHux0cE?=
 =?us-ascii?Q?BDwsLJvQ4HiMIC3pwco/xyEO65lxdA4B1tKR9LqYb328yAxTjaYCgwbfRhMb?=
 =?us-ascii?Q?5cyyA2lop/1w9TT14jouQlGihrFGZPjDEMhRGq705YdIZs2Xt1idMkr2Lxdk?=
 =?us-ascii?Q?CmCG9xHeuKbtpbmPL1BgUBMB1N3P+/TihwMbfK1U6KpQNxVxkgy/0xjroGDD?=
 =?us-ascii?Q?jkgvaZ96UXJDObXlsrncyuMeXY7Cg761MKFP5hzh8WnvTrObVK+WbI7GIQSt?=
 =?us-ascii?Q?Nug2pD3KKijg/6OdOa4e1Rsv5jPATtV4dxj3nidfvHEyGvs7vF84MZnZbT38?=
 =?us-ascii?Q?zE9PrY4YXNpJLOAiaPmFPO+0z5/R7NyBj054MQnyPKcNAnr6Ph+AZpTdB0AC?=
 =?us-ascii?Q?M/e5Bd6BZOwLphdH/O+B0wiNnMJWrk0ii6OyGwS88MbLAqEM8jx71UBfwWC0?=
 =?us-ascii?Q?1dArzz0g1A+LJp89Izt7mJ9ZaXgjhw0U0DAzP9+NT8E/nM2ST14j0z12NnqN?=
 =?us-ascii?Q?ZY0g9AS+9Eo+g7LQ4AOpOY7TM8iESY8/Ib8TeG/0llb7uCeprGCLBpsTcScG?=
 =?us-ascii?Q?zUXD9Og8M11avnZu8oqFNk6RutdOrIGOFZkMQnUv6stVeE/agDEStA7g+hT8?=
 =?us-ascii?Q?Lm4Z7l1ft1HPPyNB1jlFidecvheQQooZOq6BVLIE7svY/aqC8KiCX0cbCHI1?=
 =?us-ascii?Q?Hdps/8/om5hZQZy2/x5lF2xnLQxC7LsQLVnCKUK4gGIJiBaV2Au/Tq/tY1nh?=
 =?us-ascii?Q?MkIHxcc4hddDdnWig4UxL2Zn9HOqG0IpfI8XFyMvTEriCo7YJCCoDvhZLC1b?=
 =?us-ascii?Q?/bIsEcReLZXCAICMCP0uS0MPYwOZnU3RxzvbVDo1GapwX7wih7UIjzpQYhwn?=
 =?us-ascii?Q?Hx89zJMle9JIZ9PymkpqvxjuZ5fAItsW4Qdzsgu1BT+5+7x/xVuDkarX4hBC?=
 =?us-ascii?Q?IhDBsTuKhXpdKahClW6c1Y1BJVEukaUFezpRn6zb/u8LjPJlrcXmXQslTBz6?=
 =?us-ascii?Q?r9oQKxtEHJ5rcXBlcgG6XHRmhvStKudsyNfTFh6L7zshbhJx3Hvb456ZsRzd?=
 =?us-ascii?Q?hKhM+xUqdjmQyqo18NuYDFwwhPw2FnDgIuUeMBdQBu+bRnQ064YWBmBYXcoQ?=
 =?us-ascii?Q?kAfRleI8U6Kej/cstHGaqzFiy9eCispSa41rwoAbWyC/jp3K04FBg1g19lQQ?=
 =?us-ascii?Q?sAD/W/Cq2V2ynW3QGu4R/vcw6U/TEOeyj7eczFQZHLemSI7fyh0auLPQR1Bx?=
 =?us-ascii?Q?kPkG4WZ0eqIM3khpKT1S3GmQR0xjT5UOsaiP6GvMwhlt5fvehQDdFklwz+Ao?=
 =?us-ascii?Q?c1kU0g2ILOtSXUDnR4gZQ8+QEdNjd4h+vq6mnNCcS3mvw0kWAeKjPAczrN+Z?=
 =?us-ascii?Q?z76+MCTT/qSC0UQoB30TLjIxe17DMwLASWot0xBUQvnNraSB7qKhpuHeyu8B?=
 =?us-ascii?Q?pQ00+64KSRXfoMBxrb/IkP4mx3IEBDA=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ALgJbPeYsjB6wYYsd9KCpCn1eSEmjvh108/xrgo4k9YRZiTrX4arbc5bFmKzU1VI3j7RKAyJ9JBqrCMrGw43o/YdRVpgztFQhbUG9fBIk+LuZM6UVqudB4UAo/ls6XK7XFOOaFs5rX6no76uEO/+gEaUgOhhVB6rocb35UuTI4qfOepo4heLLnztI8ElQzmxHUD2iMYsgVlomLTsiqNLS6w+h4/sEU56rhWYhee6HMz8mXKPPLpvNwsJvFLXBgzDtX1w/hXPoB2ZrkWAIcwO0YhWrVd2hbc/mzvq9cmdny1X5t2zhOR2S4IA48ezv4prFYBo3dXei338/9JBUNWosg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9dbd8a9-6051-46de-31ab-08dea6abc43a
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2026 11:29:39.4453 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Rid2DVgbY4Z9Wp4MvlbbCzg2e82r+khegK/NkAoXzRB4iSry4SEEk+83goplu70RwpWi7p/QtesaOaseM0/4RU69dFb2YQu1VrYiVSLHZ4Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8085
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777548586; x=1809084586;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BOXIWWufkr6BjIrK3I6H8c3UioWK5u5HUvIs+eZfcWw=;
 b=TR5syLaWWfaUzJWS1hxryw0F/sXZ0i5FdtDHCIzVk6DCbLDQnR0GJfic
 jIl1xTtjHccGhEoFqMKSEe+23Jjkthh8vfpPUBEcD3acwI0+oo6vCLX9i
 1K/+oPae+Dp37uOyz9v+kC+zQre2gvOSGhPjX209FAefwcVCmfBA84PoA
 A8LCFMOtaWoK+TEjO/vmfr4dOfeJDUtya8eZHpSYg9mRXiv8sCb8xmoMz
 A3zraiigIqhQEbH9Y49y0ZyZhKu+Wd8hOHwp9B7qwHqrLKjYFryR4/cjq
 oCVCvaW1r5Yke+2xH6pHKDzgRvty9Tk/tsptC3bSNmZiUZGMgxPwgIkPw
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TR5syLaW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v7 net-next 7/8] ice: add Tx reference
 clock index handling to AN restart command
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
X-Rspamd-Queue-Id: 7F52D4A2256
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Grzegorz Nitka
> Sent: Thursday, April 30, 2026 11:43 AM
> To: netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> kuba@kernel.org; jiri@resnulli.us; edumazet@google.com; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail.com;
> donald.hunter@gmail.com; linux-kernel@vger.kernel.org; Kubalewski,
> Arkadiusz <arkadiusz.kubalewski@intel.com>; andrew+netdev@lunn.ch;
> intel-wired-lan@lists.osuosl.org; horms@kernel.org;
> Prathosh.Satish@microchip.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; pabeni@redhat.com; davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH v7 net-next 7/8] ice: add Tx
> reference clock index handling to AN restart command
>=20
> Extend the Restart Auto-Negotiation (AN) AdminQ command with a new
> parameter allowing software to specify the Tx reference clock index to
> be used during link restart.
>=20
> This patch:
>  - adds REFCLK field definitions to ice_aqc_restart_an
>  - updates ice_aq_set_link_restart_an() to take a new refclk parameter
>    and properly encode it into the command
>  - keeps legacy behavior by passing REFCLK_NOCHANGE where appropriate
>=20
> This prepares the driver for configurations requiring dynamic
> selection of the Tx reference clock as part of the AN flow.
>=20
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 2 ++
>  drivers/net/ethernet/intel/ice/ice_common.c     | 5 ++++-
>  drivers/net/ethernet/intel/ice/ice_common.h     | 2 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c        | 3 ++-
>  4 files changed, 9 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index 3cbb1b0582e3..42878abac9eb 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -1169,6 +1169,8 @@ struct ice_aqc_restart_an {
>  	u8 cmd_flags;
>  #define ICE_AQC_RESTART_AN_LINK_RESTART	BIT(1)
>  #define ICE_AQC_RESTART_AN_LINK_ENABLE	BIT(2)
> +#define ICE_AQC_RESTART_AN_REFCLK_M	GENMASK(4, 3)
> +#define ICE_AQC_RESTART_AN_REFCLK_NOCHANGE 0
>  	u8 reserved2[13];
>  };
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
> b/drivers/net/ethernet/intel/ice/ice_common.c
> index ce11fea122d0..de88aec9137c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -4126,12 +4126,13 @@ int ice_get_link_status(struct ice_port_info
> *pi, bool *link_up)
>   * @pi: pointer to the port information structure
>   * @ena_link: if true: enable link, if false: disable link
>   * @cd: pointer to command details structure or NULL
> + * @refclk: the new TX reference clock, 0 if no change
>   *
>   * Sets up the link and restarts the Auto-Negotiation over the link.
>   */
>  int
>  ice_aq_set_link_restart_an(struct ice_port_info *pi, bool ena_link,
> -			   struct ice_sq_cd *cd)
> +			   struct ice_sq_cd *cd,  u8 refclk)
>  {
>  	struct ice_aqc_restart_an *cmd;
>  	struct libie_aq_desc desc;
> @@ -4147,6 +4148,8 @@ ice_aq_set_link_restart_an(struct ice_port_info
> *pi, bool ena_link,
>  	else
>  		cmd->cmd_flags &=3D ~ICE_AQC_RESTART_AN_LINK_ENABLE;
>=20
> +	cmd->cmd_flags |=3D FIELD_PREP(ICE_AQC_RESTART_AN_REFCLK_M,
> refclk);
> +
>  	return ice_aq_send_cmd(pi->hw, &desc, NULL, 0, cd);  }
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.h
> b/drivers/net/ethernet/intel/ice/ice_common.h
> index e700ac0dc347..9f5344212195 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.h
> +++ b/drivers/net/ethernet/intel/ice/ice_common.h
> @@ -215,7 +215,7 @@ ice_cfg_phy_fec(struct ice_port_info *pi, struct
> ice_aqc_set_phy_cfg_data *cfg,
>  		enum ice_fec_mode fec);
>  int
>  ice_aq_set_link_restart_an(struct ice_port_info *pi, bool ena_link,
> -			   struct ice_sq_cd *cd);
> +			   struct ice_sq_cd *cd, u8 refclk);
>  int
>  ice_aq_set_mac_cfg(struct ice_hw *hw, u16 max_frame_size, struct
> ice_sq_cd *cd);  int diff --git
> a/drivers/net/ethernet/intel/ice/ice_lib.c
> b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 837b71b7b2b7..8cdc4fda89e9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -3769,7 +3769,8 @@ int ice_set_link(struct ice_vsi *vsi, bool ena)
>  	if (vsi->type !=3D ICE_VSI_PF)
>  		return -EINVAL;
>=20
> -	status =3D ice_aq_set_link_restart_an(pi, ena, NULL);
> +	status =3D ice_aq_set_link_restart_an(pi, ena, NULL,
> +
> ICE_AQC_RESTART_AN_REFCLK_NOCHANGE);
>=20
>  	/* if link is owned by manageability, FW will return
> LIBIE_AQ_RC_EMODE.
>  	 * this is not a fatal error, so print a warning message and
> return
> --
> 2.39.3


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
