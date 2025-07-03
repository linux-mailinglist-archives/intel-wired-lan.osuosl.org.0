Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D888AF7E3A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Jul 2025 18:54:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A90C240FE2;
	Thu,  3 Jul 2025 16:54:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Afe-PCvyobUo; Thu,  3 Jul 2025 16:54:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0237240FDD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751561668;
	bh=nw7mLcAg59utATz7QZcOq9XZtAcJVvOt2cMPOWgp0cs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=i8qROHKex5RkAAm85Ub2lguTDYTkZrJO+qV+TPgsntCltZyPDfi3JRCy0qgxpcRVx
	 7u5wcBKpB6G1IcHKzj53FfuIN0fxzuTMkJ2YVyUPHvolXi++LAK8wEFbdAJNd8bbl8
	 1MX7Lug7jGV7VAY9sywGl8N5h2VmWVtdvZJ7d3SiT7K9BausVd8XunCxdxi+Xx1eSK
	 Cj6R80+0B7gj5Oeb9zlZDbQFAz3T0I/ZiOSG4SN1bJMh9gVp3tEVisKUx85Pn5YaUI
	 FB6lB9kQSpm0gy3KsFmkpH5VRfuNNfUD1yxTRg3NEc12yXVcqkSNJH4BzrhdQ0f7a4
	 a72g4JcROu9gw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0237240FDD;
	Thu,  3 Jul 2025 16:54:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D7CB015F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jul 2025 16:54:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BE25840FD9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jul 2025 16:54:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rwo0UsII_EHB for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Jul 2025 16:54:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F154340FCC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F154340FCC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F154340FCC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jul 2025 16:54:25 +0000 (UTC)
X-CSE-ConnectionGUID: RuILM1I6SEivtIR4EONF+A==
X-CSE-MsgGUID: XcAuY0XqSeCDpBTYiaPi5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11483"; a="53992212"
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="53992212"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 09:54:25 -0700
X-CSE-ConnectionGUID: 6CV538UDST+BTj51HUH3jA==
X-CSE-MsgGUID: tt6Lz3Y7RpuIXgpBJ2cyiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="154553139"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 09:54:25 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 09:54:24 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 3 Jul 2025 09:54:24 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.47)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 09:54:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U27DJcoHNcRcY3HNh5AMS6BoWWUaJnrpWE4yNUQKOZ6kU0l6f79eKYegdtbB9iLbiaD7a8/M409D/mr4A3p8RpACpqcGp5xTrfLYD1If1TzNwMrwPsdJRD8tHlb/yfmobWkZdVKRyLWgjj74cjORxLi7Bd8/PaHwoNmvOW0xr/Wi3PR4GPjtsJfymw7/U6xQulyZgMrNNQAuNd1GvumvfqFM2CpPAPMB+cYRFjUsbo1yQwZssT0FjOcSGNaFLm4mkuXe7bZ5lKbDKZUmvTq9SgKwQXY1vzD2lr/+ZCuXoub7AevCEY8H3KzcdxaFx+wBFKPoN+ywT4/hQzGhzOiAGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nw7mLcAg59utATz7QZcOq9XZtAcJVvOt2cMPOWgp0cs=;
 b=uEx/RyYlpJRMtejLoNWbwjIYyd3Sz6vQM/7TluQ4Peax/K7Nja3dgOTiMRRp4J1D/3Zii6RXr+IUbMP8Ss3zgl9h55GkXxS8XR6tO1St7t53jj3ZN5FBjNbTde6eSu20vLYvwup8ESzdyb78rOevaRMdbB72sjPtkpXqOOGqGi9ppJbG6BuclTt0IcLB3aH5y4gWmcBeK+POskUlmcWUkszziQfVwIHAeDU7Subm0d4CXljB4L4aufzztI1686G6IYrzL3EEL4zn8yeZOdWDa3XHgK4hpWjxLdT4nzvmzrog/SKl1CltO/2E21wdpd9cl4N8hSSe1rqUVJrtvwkVww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by PH0PR11MB7448.namprd11.prod.outlook.com (2603:10b6:510:26c::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.19; Thu, 3 Jul
 2025 16:54:12 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%6]) with mapi id 15.20.8901.018; Thu, 3 Jul 2025
 16:54:12 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Simon Horman <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3] ice: add 40G speed to
 Admin Command GET PORT OPTION
Thread-Index: AQHbxnDHWmIVNr0s90esrA19wMHJTbQg319Q
Date: Thu, 3 Jul 2025 16:54:12 +0000
Message-ID: <IA1PR11MB6241D7C4B749E039692C31A88B43A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250516144214.1405797-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20250516144214.1405797-1-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|PH0PR11MB7448:EE_
x-ms-office365-filtering-correlation-id: 5239e67d-1089-4c61-a4a8-08ddba523cc3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ChGnyZ5nXLiho+BDSfZOgAZLOinobS/FGgTfurxZ26GPfX7Hoe/KjigpHVvU?=
 =?us-ascii?Q?c1g2HBph4BPnclfW7Jvn7VBuIzbHlELsPMSu12T0f+S8A5+MEHS3yv0U1Vhg?=
 =?us-ascii?Q?Q1A0fuMarQzske+uYaFbDNBk4yK5UFg9HuXHxz8Z3/GBCU4sktISFaTiUPAJ?=
 =?us-ascii?Q?JeEcY9ia+f3hVPRAIg3KNk1IQnF8CPI6bz/w3mu33Gu97X6pVDafWA78B1xL?=
 =?us-ascii?Q?sqJSlSRw4vqfHpAhHZjHrbjexk0C5g57wZhN2nYzV4bvST6DCIlUOmnM2vuJ?=
 =?us-ascii?Q?Esms9ypU+ZvadhFvLT8tde7F3vFtzYefpmLzQtqyz36mtk5k1aRy6rZOHPgz?=
 =?us-ascii?Q?UOuRm6i0UszI1BKT6VTfZc5US7jwiT6Sx6VTFBZntXx2RshzveEMGkUmJG96?=
 =?us-ascii?Q?qhqeLTgWVFBnDxvCBwEhFgP4RuWUHo56ILMcX1neQts8b9UE6ofZLs2/ZNwQ?=
 =?us-ascii?Q?6TpYqiSmbLW4YYEsAWdKZqpVPYiOu4FD0EpXmY+wd/gqICGjr4Wq+9qjkf07?=
 =?us-ascii?Q?mnqGZV17rWQEdE9VUPEMnCXWbQkM+ztUwAr2FM/5mmGQSms2GGLIlEoEQ27g?=
 =?us-ascii?Q?ZMM5jbu0xDCB01Ot8DkSd7tbMVKcuwB3ZHqu6ZDk08pLn03F7BAFQdBkSAng?=
 =?us-ascii?Q?sRf2ji5A9VbVP0/N9oszWHCEoC+FPcA+u4ZIyCP9EqyNUtTsjuAmtRZqm21a?=
 =?us-ascii?Q?gJNGADbHGt5TfqJjKW8kgxYsnmjVci9lZ21U0eL637LantYG3TRCtFoHnuoy?=
 =?us-ascii?Q?LOG9ElkIdODjjLtj51it7soNFgtDH6WAh51Q+XlDa0G2uW8W2a5tOb/0VoVQ?=
 =?us-ascii?Q?yCPoOG7emmfT5j+NQ8qKI0LDLVOTd8ImPC/XRUBN3FerEUIwLl9PL+ibBJBH?=
 =?us-ascii?Q?EFEbhlMkB0UDEy/sfxVGam0588aFkBYnRPxkoQhwwLIBJPfzdXuqZfUBDrM1?=
 =?us-ascii?Q?D3zRU3s6tAoI2rzixydEnzqZGfgEmBJcPD0r8w3t39ZW8lXv+syYD+wu7nxY?=
 =?us-ascii?Q?6uenRFYBFmEh1QcK3c66jO/lE0QYGy23R2Jmr1pNOA/TpsaqTpCRUiiD/8kL?=
 =?us-ascii?Q?aXI5x2Aww5qozjEYeohlihCU236X9mgDjLRr/ydgznnOgDDkagy0EkRuL73i?=
 =?us-ascii?Q?8MtUwpFTz+Qf2GlModGk0RkZ5jnbfFAWZD+xLvT2qqoEZ2ljNMpM/twCFiM3?=
 =?us-ascii?Q?OxpGp8R1UhawFURR335wL/HFiKskSad/JDpcHz+9ysEedJVE6JXN5QcC+qQb?=
 =?us-ascii?Q?NHM6Lq+R5Jv6N8gWOh4NT0NAPUg2UCr/iDjMszfe914WJh4BfpG+YjC4OVx7?=
 =?us-ascii?Q?a/fu+405nAAvRRjQXm11RxaA2CC+Kbh2h2stljryqVsW3WIsPbkX402xTTHU?=
 =?us-ascii?Q?xKWOn6ALwwlVBI8hr3dF2Pd7wLQ964Mcia+4IfPns4qm6bLewXXD7TLFTEkC?=
 =?us-ascii?Q?3pMjydaT8ffsCkTiBast6hVEX2bJctGVfbHayf1mJV2a9ekmqwFfTA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bqPHzBnJYcVdPXQPIkw1Z9pG9Vj9m+20cnAW9cO2E7N57gUzwVFlyiPxl1Xs?=
 =?us-ascii?Q?04JiQQoOZaTZFFhx8dwfG/lmjBT0DVaPWAKppCRatng3uB1A4qV/0UcqRPfM?=
 =?us-ascii?Q?PHAuuRbe469+Nl1zsrb7nMdDRVVG/iH+hTt2yob5L9uyrNQT/cmaNbwjJ1NM?=
 =?us-ascii?Q?lttZ8n5BRSsRc+fgcvOKpxz8UzgTrsgjoKqDiTPWeXZA93zxMlGxxFZ3YdVS?=
 =?us-ascii?Q?2EkBeVsBjqSsrZjNGjqjjCxh8vQEPJeDeVZTwGpwni8aNEJz7sLcmdLbSrSZ?=
 =?us-ascii?Q?Bs9VHyq0/dkn2XECO3TqSgB/E+wHujJhJTDv9CQVsLbuk8Sj31iSVtyEy7FH?=
 =?us-ascii?Q?3nnQpMAo+Ke8acEZg4mpiHZTqEmguZzp72i3yv55M1jYF4RdDu/uVubEz7jX?=
 =?us-ascii?Q?nS7mEAI579Ic0OHzFwQBSBTiakgUqrTdhY2y1IMQYqMDLjWf5JEIgegwz/g3?=
 =?us-ascii?Q?IZtkkqIfwLQCWbtslVIqQbU4WyC57JF/loPAu5FC/pxlQfTuHP3EOM5qFLBF?=
 =?us-ascii?Q?lsZ3l350ZLpGHhW1qGaoWlSLR94pvliGiYGuTPNJhdtpxpV3zjYKZPmLtAep?=
 =?us-ascii?Q?o2rdl9b7GPJOYJaj8dOnBR8jUKYBGZ/81eL9LQoROmUYSHTbkngbNQSmczZ7?=
 =?us-ascii?Q?utJfBMCCpkvnu1NV6+J/NW0SAc0CIS1YhMSn2Albdbnkj2vk+pFz9mIKASdR?=
 =?us-ascii?Q?kvIqeEzeEZyXkteaOguGW/TRY9lMiUxtHF1Z/stPGJCwuchjhpQD4jJcYOaj?=
 =?us-ascii?Q?mNSRONESWUtinN171BPRYej+nps3cnSODu2RGiJEFUc4kczVeP/8OjSI2Jc4?=
 =?us-ascii?Q?XTTgtRI1eFFVNe6jDmDGyUvamAH9g8BfgIjdlEqnqqWv/xs60jRp2ta2gV2z?=
 =?us-ascii?Q?cphgvA0OZO8KzQICufr2/N62vZPz+dtZtXIzmw69z0GPtoFu/CiZrLlr7ZRx?=
 =?us-ascii?Q?Fv0I+JUwX1dQytLVzDr1/eEoh3MMtursvauGhbmeq2VYnBfL2ZrpOncMX7fq?=
 =?us-ascii?Q?j4zf8zijfmVgqTNZVkK/Hk5La7FQlqnJfeVtaOC/URxOeruK9gNuKvKaf8nO?=
 =?us-ascii?Q?XL+647TCyLhzxVcIuh8JjqvnMOlFhKSdKzaPL1i7LvxK4+kP9XImrIYNInRN?=
 =?us-ascii?Q?mdTBeLVc+A7L2GgHn6d1D9Qtuzqrs/zTchZdlFiUAGIiqJhZ7DvB7DomTW2x?=
 =?us-ascii?Q?D1nLFzJEzZW7v4y/WnrI+tUYIJpbfpYSEI8XaC4TgO/UV+ycxgh9jIE/IXCi?=
 =?us-ascii?Q?tKZCvweTeCyXGQST07VTi4o4Iop4nL4Yu24LYVSxwSP+VtjZdrklDxNDo+FN?=
 =?us-ascii?Q?0rzHXHFC+Dky3Xkayl+VSgAfGbmzGwx1zoOgtnO7IzSMpvDc/xWMqik8VXXC?=
 =?us-ascii?Q?5+YATUQtx+/mx64Uinz3cZYv8eDFVpNdxUqD4CIGjRSLA/JfuygI5KMgRHFa?=
 =?us-ascii?Q?ki8hjnOY9emGLYGLeB76Con+4fJ3JXXLELA1T5DZidiuIWTIL5xpw0wrU26P?=
 =?us-ascii?Q?+HuAPOj+iJRU2VsF2sjqlYwPKtnIAW/qkjSXr+yPLbINTNjxBzYHZ33Ze3C+?=
 =?us-ascii?Q?ktnHLojOVoLmw3o+/tvJq+eXsGdFARXNPjiTzsG+?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5239e67d-1089-4c61-a4a8-08ddba523cc3
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2025 16:54:12.5735 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l1b5ElNi+o/2suP56Y9iU84SIO6dOEEOs6pWPA5B6hAALfIATVVQkJQhsR1bH+RJpygl8xJjZvnJoerWJ8J1pg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7448
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751561666; x=1783097666;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XlsuWKDwN2FHSfFMusSjx+0yncl4rjIvMKSKELyFdqQ=;
 b=RNobeikVqdTsI1UUgEh3p/pBRe9a2gMJ0cOLVnxeuycVzkHb8zTSQjSx
 BBTJ1v69pgKJm3PGfcAPWVjJGX9oIBjo94UREgah/6yIZQD5dEzief7f3
 DSN/kYSJK2k+ud99mHlJn4+8IGaXr97PQq4O8QkYOc2g6LWz/28g+bY5K
 qmuXu/SkBjb2GoCLEEoEbCyLzhoksmbn7xfeSmddS/xOdIqSB+7vEmUa/
 wfTccVlM514NqDhTIypMIE6Dcv8Eb69O9dpS/aH5GJA5E/vhYvIYFGnFl
 6SDp0KylhAPSZZE4r9wQ1IWqBp/ChaFNu1+U+nzGr/YdmgdcHmukmSd7e
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RNobeikV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: add 40G speed to
 Admin Command GET PORT OPTION
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: 16 May 2025 20:12
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel=
.com>; Simon Horman <horms@kernel.org>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3] ice: add 40G speed to Admi=
n Command GET PORT OPTION
>
> Introduce the ICE_AQC_PORT_OPT_MAX_LANE_40G constant and update the code =
to process this new option in both the devlink and the Admin Queue Command =
GET PORT OPTION (opcode 0x06EA) message, similar to existing constants like=
 ICE_AQC_PORT_OPT_MAX_LANE_50G, ICE_AQC_PORT_OPT_MAX_LANE_100G, and so on.
>
> This feature allows the driver to correctly report configuration options =
for 2x40G on ICX-D LCC and other cards in the future via devlink.
>
> Example command:
> devlink port split pci/0000:01:00.0/0 count 2
>
> Example dmesg:
> ice 0000:01:00.0: Available port split options and max port speeds (Gbps)=
:
> ice 0000:01:00.0: Status  Split      Quad 0          Quad 1
> ice 0000:01:00.0:         count  L0  L1  L2  L3  L4  L5  L6  L7
> ice 0000:01:00.0:         2      40   -   -   -  40   -   -   -
> ice 0000:01:00.0:         2      50   -  50   -   -   -   -   -
> ice 0000:01:00.0:         4      25  25  25  25   -   -   -   -
> ice 0000:01:00.0:         4      25  25   -   -  25  25   -   -
> ice 0000:01:00.0: Active  8      10  10  10  10  10  10  10  10
> ice 0000:01:00.0:         1     100   -   -   -   -   -   -   -
>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
> v2->v3 - fix indent
> v1->v2 - fix typo in commit message
> ---
> drivers/net/ethernet/intel/ice/devlink/port.c   | 2 ++
> drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 1 +
> drivers/net/ethernet/intel/ice/ice_common.c     | 2 +-
> drivers/net/ethernet/intel/ice/ice_ethtool.c    | 3 ++-
> 4 files changed, 6 insertions(+), 2 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
