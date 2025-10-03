Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B40BB7757
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Oct 2025 18:07:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 82521612A6;
	Fri,  3 Oct 2025 16:07:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JFfQCaKs7Vq7; Fri,  3 Oct 2025 16:07:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EFF21612BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759507620;
	bh=Hjhd6nenFXDqq6zr2JdzDO3ZvkehnNm42KDTjSf/K5E=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NMFkViHxbfjHuPAVrDQjnVXmc1FBCs2VzhqjODu4ke9OMSjyKBylWbDV69bGO+QfA
	 H/rSdDV2SpWB6yfu9AJAOshYBSXmvCEXgkDvT7INDrPYICvNqEYUWDffPWfo87nED0
	 pcqjsEKA1fppq8rtor1lLleYo6788bUEjfIylQAY8LbxBcZ72NS8OzAXKz2G7SK8XT
	 9xEWmp/jLqUtSU41/q88q+vnrerVSfXsiGSY7svicBd0fg0fAHQqSLz/OXeUxysDKo
	 5vGL4Dqgv5HUi1TkFFdtOfG5NnJiGwnlzGPvSRPU+xljMvq5RBz9ylHanI/bV+34kU
	 tEL5N0nrFhlnA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EFF21612BD;
	Fri,  3 Oct 2025 16:06:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D7C61226
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Oct 2025 16:06:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BE624821C1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Oct 2025 16:06:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hi6E_5tmY4IW for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Oct 2025 16:06:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BB5738217A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB5738217A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BB5738217A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Oct 2025 16:06:57 +0000 (UTC)
X-CSE-ConnectionGUID: pRbSYdimSs6dc8EOu0XE+Q==
X-CSE-MsgGUID: V5mpZoa2T2ibcluiaad3mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65620404"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65620404"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2025 09:06:57 -0700
X-CSE-ConnectionGUID: bZslXvloSNSkuhUvaCQWcA==
X-CSE-MsgGUID: XqKqQeBrS3Ob5NCJzwXgfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,312,1751266800"; d="scan'208";a="178972696"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2025 09:06:56 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 3 Oct 2025 09:06:55 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 3 Oct 2025 09:06:55 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.61) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 3 Oct 2025 09:06:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c9fQ+NowxUF1/SBwNsIppA/5qRhd2ZYOhhxOWxeXc/cDFZNiCkymI4MxGW/iTrdbspA0cFqUt/wnU3ZRW6pu5rONEC4yDN7Z7b4/Ar7Qd9ijQQIdJdKFRbPS1F/m5gHIkz9URr7b/c9UygFTjH1mCAVCX+XOdkdB2xlCSISmBNM1qGvaVZt2MdXU1KpJN3KSxjcsd3WLlvwG9NCdnZP/KmTWi+9XSGG4+PypfNl/Ib7n3TwdXa/F4llc7MXVWg3JbKJdPTvHbcphLxTN5Q+VBnbroK7FGIio0/68FuXMgQNuOBkCFsb+D0p3GMZ0bgPjQZm5gVjKj/PJCoMiRTJlXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hjhd6nenFXDqq6zr2JdzDO3ZvkehnNm42KDTjSf/K5E=;
 b=Def0CmJ7s8YTu76CYpHRyh3E+FaBxtZJ4Dm9YCHUfTONA2W+NpI8aarpLcMMMf/Kd4H6CZRbn36N2npCc0YQhmykahf4fSh6FcURQ7H1qJBYd6hnY/odlypGCzSb6mPRdl8LWW8UeZI3VEBxR4yLsQeKv91klhZCSoaRRrOgvyTnOaStW9DDL9G96tVMMaGJdeRDL8aMXzXK6jc6r7xt2yg/e1GZty1wgM8qSJA9IkZeUkYIeC6YpHMayGPy344dQ+LJDCrahD/G4LM4SNyVoi2owd9YVk5rVLvDsMxaV2n1jyBKlwQyXjnQ08Kl9ZUViAyTQRxxCBKQ9RxUFxuBeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by CH3PR11MB7723.namprd11.prod.outlook.com (2603:10b6:610:127::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.18; Fri, 3 Oct
 2025 16:06:52 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9160.015; Fri, 3 Oct 2025
 16:06:52 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Paul Menzel
 <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] ice: Allow 100M speed for
 E825C SGMII device
Thread-Index: AQHbhv+buvxMadibRUGHepv1KGO8OrSxZZPA
Date: Fri, 3 Oct 2025 16:06:52 +0000
Message-ID: <IA1PR11MB62417A4DCED2DC023331D3C68BE4A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250224205924.2861584-1-grzegorz.nitka@intel.com>
In-Reply-To: <20250224205924.2861584-1-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|CH3PR11MB7723:EE_
x-ms-office365-filtering-correlation-id: 8016cdba-75ee-4431-b393-08de0296de0f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?+8zjaKv04clX9dayWya2e9DdftqQO721yjiijqUKDH6xTNzC6T4pXdEwEQI7?=
 =?us-ascii?Q?uoJh8CWPNj8viejdz92uTGb/C7NbbzRcY8ttIyeDU3wFTSkL+5uAkCJP0kvr?=
 =?us-ascii?Q?yK7vwwxAQ5ISKkFjrWb+dmdn3B23PiADgRmc0yYG4rWBHNBnqvQpVGFOfRZP?=
 =?us-ascii?Q?AZo/MoeArr2k0GCA5hu+M81/F5Mjxx9MgSNwqCqEiiv22LlWUL/1Z7P9l6tW?=
 =?us-ascii?Q?sqvOVAU3iY+s6+nx6sw8+Ybr+uUXGI5QcjxhtFRgdDLeOG2DfIEaUcjimmDY?=
 =?us-ascii?Q?lhkZM01h01vRfYyY0boLTggo0n0+tzdwOz+5dnLa+TwgfiXbHzhHNcWEJl+U?=
 =?us-ascii?Q?BidmZBQnpblr/TVzUH7bMM/3WZJD5SpHPID1ePIEn53FJsz5zumFcKgS6E3h?=
 =?us-ascii?Q?JEtV3bmV3HONSu8TTU9sWQWE1cyZP/0+vSH7h0fMc1LHt+EHMaP/j3gbwYcZ?=
 =?us-ascii?Q?DUp5f8LQ9nR2rPuRGqg3VoTdMNlVSvt0wUir5HUkGH4t3A2IqecjSDwr1ON2?=
 =?us-ascii?Q?dqqj4XUJQCZBfwRLqHAHqnTCqx4babKoMXzgXzGBZtIEjsccuQRiztieheeh?=
 =?us-ascii?Q?Y2kzuxrNX3loj8BAJTox39NJogmGD7oGh5qSTnPWzn/+BPo1kK5YdIdWZfSy?=
 =?us-ascii?Q?5i4Ec2wioe2EDreK7mUo7Qo97LJcQFp6PmRzdQeyDQWqxFefhsbfEoGnH7Pc?=
 =?us-ascii?Q?g+AiVw5MljMA9bsCKJaZUTBAoQi6iVkCLnpbnJ7JsFIaiUHo0dAE9mhU+spx?=
 =?us-ascii?Q?FjVxFSHE7xNDfaidc3nFwRXIprVzrY1FYJwEDME2d1DWRYK9Hxyu1yWfMRp6?=
 =?us-ascii?Q?MKft4lzLJEf08vR6ow1U7CVvHB0avMyJlbbKa8uNHAtJRjQwrhPhdwloWo0U?=
 =?us-ascii?Q?Jb0RXVffPKjMCTFdDcNBb9PbtnFbXBk+EC7by3IDk4Bm9c9UfJINdXlDvVoB?=
 =?us-ascii?Q?/B7U6GNTT8zqR7uHGVJ53Ka9y30WskV3GY1KSDiizaVerj6wUCiPqZu8TEPI?=
 =?us-ascii?Q?p1WbcVEh7rMh4qJXgVp8PcBWyCGWrqiyLCAQqbpe3YyIqawVT9WF9sbXTXQk?=
 =?us-ascii?Q?k96YDeHFBmMFfEXxva5+G977dyKDxPct+2oeAOne7AgmcQWRjNNGwvwqQ2OW?=
 =?us-ascii?Q?29544/3+WPPtLLSNUmFYLoD+ZB9ytaEMFgQPBYxsDq+/i0avhMGIjYjjC/wh?=
 =?us-ascii?Q?8FLBBi1d4b8JiT7voekRwJt7v0EnI2REAWBZbQZ5ANwqqk0b+vTJf/5j/rsO?=
 =?us-ascii?Q?oyQ+DsV3jQ+JtzXNJT8b14E4jYNliSAwzZJ3FtL4eLNwmiQNgDSRrK77oMyp?=
 =?us-ascii?Q?d0apKBxubTFoTq5XOzdpZPKNM3Ofwrn/ltBehc3/onvXkV7Bk7TZH62xgltD?=
 =?us-ascii?Q?qVz7bdgbWK9lgpXNp1ffshVc8aREz+dwkd/lAy/k1Y4XsPBWbo/Yg1NiPh3V?=
 =?us-ascii?Q?M76bVCiVLbDg/9FXhM5bnZLlEpPmu+pcwN87C4Og2c5CVLoENooDpiKqJV0R?=
 =?us-ascii?Q?OrvkxQY08TXkN7oUJYUdrYlgQYRTWYMxTNSj?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OlbiccLLUu7PyHBLL8SEFK+NNtHB0rlsarCiUXBHcYlpP3iQJMEG8Bt4XwAa?=
 =?us-ascii?Q?mb50oKpAsMccZ2q38SpJb9XuK4qZ+K0DrPucmTul65n5IPXrnqVaZ8+LQV7V?=
 =?us-ascii?Q?SlWtuKRzYLAQpSTsjm95IgD2+5Ib0Qe9fsSdolj1OYZu2E6WI56AnrPnPWD+?=
 =?us-ascii?Q?n5l24UfOfhT/BVqTyvzwHeerC/om+Qm1vnmZp7kqgWfBsyNSAk0P6ujcMTGx?=
 =?us-ascii?Q?nZtR8tTfFpslRZ3UMVUlg88PYanP1J1rEwj2NwJuj3PfvYVEuyGW9ubZ3OW2?=
 =?us-ascii?Q?nYZtjk1i0HqtJ2nxie7kfpecofCGmELZ6/Pegw/hMuNt3X2vP3Zx/nY7gp75?=
 =?us-ascii?Q?aiqY9cBj3N85w5nu9qgP+4gUBDHVQquclGoHMDhzqe/fUqctXYrthMZUR2xs?=
 =?us-ascii?Q?YPnymt1jM5hDd4WXejQcx5aQgjL+rNZk4EhitvTNw6tJMPrYUA10CO8bxJuj?=
 =?us-ascii?Q?N3ct6I8VcATZrMAJBWk3vpb5TSh9qK8VXp8PtIV8fBGeAbs0eoIDEKu11zZF?=
 =?us-ascii?Q?W0v/V/GEPQnI3zgVqO714eDYepXh+dNz/IYwHrbaFXjhneJpfuIALY7VCyRZ?=
 =?us-ascii?Q?tYhFP1FNREJqRaw6OxyDaKWQrokNAZkaIW2ObL6mdGx3yMh/OSDITAaokSCd?=
 =?us-ascii?Q?O+iZKRIhpAQUrWaZfXo+D7JUktcNQxbmvql2Rk3eRFGKHIOCfGTQcJwKPZ2F?=
 =?us-ascii?Q?I7KUQT4TxJ07DZhZfRJTDw4JtAJUP6oUWMDywl+cUo82DwpT5+po9Q9hyzpL?=
 =?us-ascii?Q?IwZE6gSLa/mGny52mI9or0YOa/FxlucAyDig5gBfUOvK7iZSHY9d/y2dcPA0?=
 =?us-ascii?Q?DjtOjqOqhkMg/2Fwpgdm+jiNGyAIZV+HBllmhWz2qA547eXpn+n/Pbkt2FqT?=
 =?us-ascii?Q?E7G9liB7qm8CZs32ZvAXL/HRkrsbUDP5hAaMqAQOL692NLokNjPp64PJtpic?=
 =?us-ascii?Q?CGOcJUTMxxjFw8U4sUwKkPU2YczZ33qVVt3wqnMU7hkQpzGiAoFpzeWfigkj?=
 =?us-ascii?Q?JoNF1JUSPj7bmZlixeznXfRN9oPZ26YMp4lLfUvTcp89Gv6vZe8xS0GUyskd?=
 =?us-ascii?Q?oxuUyhQqSwuRogc12v9CmKMaRAeoaTrGZQtIZN6LyQeilN2vV6tNncX17E0i?=
 =?us-ascii?Q?ERAHLP/HBw8H3umWo/Iw17CCY7wWcCpf8gk/zwsu01Ahcv2GYOfsn4YYGWFL?=
 =?us-ascii?Q?vKs0EEgHteZMwptMW7xKgdZPis23MgviMOYJT3Bw4c7+tYmbqkbeQUN9vbj3?=
 =?us-ascii?Q?cJyQPf3rML6ut0FbXuJqPfsowxmckipuA9nlyQXWomD9lcwAh76JkYWk8MaD?=
 =?us-ascii?Q?EpwjL+u5KyLGdC3g++uymnXCQEX7wwfXrY+qlL6G/AIDvH5h/ilmgXUNbBPX?=
 =?us-ascii?Q?5OMW2ztJX/zSMNTD1pgaLfUNxl2Od0KFq+78KaRvbZXNlNOfKsFgsF+/Jo+Q?=
 =?us-ascii?Q?SGjjHso9vgQ5K/LhodxpyNUnZB1lqF0cCVZtp5E912OOpmwOaFAGBxNvxyIa?=
 =?us-ascii?Q?Xv+QFZGwvDTYskdg5edRz1jlItor/JXRDhTLjSjfYQkusJ7I122fFDwN0cSN?=
 =?us-ascii?Q?Gozy2wSf3Cw9ocBAHjWp/Tw5796jVdegopnqg3zr?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8016cdba-75ee-4431-b393-08de0296de0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2025 16:06:52.5960 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 05qwIFKrLBLH0QTmwOp4ejD/7FZ5MBJlPYUxbPYnhPw+02ws81NoYhhwKjF+8wrUfnMg9EAPNLOUzZ5mA+QJJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7723
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759507618; x=1791043618;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xJNN3SnrBR/L00UKbp0v+38IQiu5gYUNHxq/Y5lWFFI=;
 b=cmk9cyn+WavxKc86B4JFAILpON1N7TOQ2YZSO0fEfT+rjJEyS9hEeucA
 N9wu74b0EyDJqPKROZOV6fl62G+1Vz8z/i5osR4EaFIF0cx38XYXNsKuu
 dDHCDwaHTGd8zGCplycO9Igd6Hv1vFGVYYTPGRXqTgRn38rHNFoESaIkb
 MfmB+oC/TV4KD0PjLwIn0ydz1ggy7mFBZb9R0iUD+Vt3dwdMycHo2mj8H
 Ofl/Xa3wmxRhJwyGpO+lhcWHD0IFRL1udJJMRJxa47XtDt7YdIOhxEMXh
 B0G8EdPObH22fOg9qY9/orhpE/k7GpY9WnfOb6Yf2uNDLCNJvZkj6EbcI
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cmk9cyn+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Allow 100M speed for
 E825C SGMII device
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of G=
rzegorz Nitka
> Sent: 25 February 2025 02:29
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; netdev@vger.ker=
nel.org; Paul Menzel <pmenzel@molgen.mpg.de>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: Allow 100M speed for =
E825C SGMII device
>
> Add E825C 10GbE SGMII device to the list of devices supporting 100Mbit li=
nk mode. Without that change, 100Mbit link mode is ignored in ethtool inter=
face. This change was missed while adding the support for E825C devices fam=
ily.
>
> Testing hints (please note, for previous version, 100baseT/Full entry was=
 missing):
> [root@localhost]# ethtool eth3
> Settings for eth3:
>       Supported ports: [ TP ]
>        Supported link modes:   100baseT/Full
>                                1000baseT/Full
>                                10000baseT/Full
>        Supported pause frame use: Symmetric
>        Supports auto-negotiation: Yes
>        Supported FEC modes: None
>        Advertised link modes:  100baseT/Full
>                                1000baseT/Full
>                               10000baseT/Full
>	...
>
> Fixes: f64e189442332 ("ice: introduce new E825C devices family")
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
>
> ---
> Changes in v2:
> - improved commit meassege (added testing hint)
> ---
> drivers/net/ethernet/intel/ice/ice_common.c | 1 +
> 1 file changed, 1 insertion(+)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
