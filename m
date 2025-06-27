Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 132FDAEBDDD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jun 2025 18:54:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 72CC4845B6;
	Fri, 27 Jun 2025 16:54:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vtk9RnyvY3i8; Fri, 27 Jun 2025 16:54:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C125845B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751043258;
	bh=QVz9NXkcEei6z96JvcDTZeYCEZ1gdCpLRnqTo0E+4AM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AMsiHRDtEt4a+znu0pWAM6smSpn7/B4Luspr4j855KaFfn+8t0ucLLv1e9fSEH3DR
	 D/HQrEUdQvW9SMNDGvbXprJN3lq5Uzdbg5ZuHPfHI/wexBD0G4jNXZtmOovLtG3oTa
	 S8o5PKS3kmjHRLK1utY1lL2jP2WoaK1UHvy9qxu/CHYmCo/6HQXjn7d6mHjBNpxrm3
	 gLEpwoaJ0k5fBNE3AvCBllCuLOfMl9Sb5oplgQTOXxIdCk3HRvjyQ5slII/GBhUM3Y
	 UwiM9VdR6Jk4FqvIWG7wGZA4Nfi2pPz2prdMYtKhCAy0VXAt2JZTnQCtmezJpzTyeV
	 KhqPUqwPXr81A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C125845B4;
	Fri, 27 Jun 2025 16:54:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 23856154
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 16:54:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 09CD8404B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 16:54:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sp5kflD3KZkN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jun 2025 16:54:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2112E403F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2112E403F6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2112E403F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 16:54:15 +0000 (UTC)
X-CSE-ConnectionGUID: G5eiF782Sg2jDY47U6l1Ow==
X-CSE-MsgGUID: it8LGBk0SmiHc0XSANxx+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11477"; a="53235042"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="53235042"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 09:53:48 -0700
X-CSE-ConnectionGUID: 3AxMP/aoTpCVppb7VYnt5g==
X-CSE-MsgGUID: UNzuRvvjTkiWD6X12mXgJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="157236620"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 09:53:48 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 27 Jun 2025 09:53:48 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 27 Jun 2025 09:53:48 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.63)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 27 Jun 2025 09:53:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V0jNm3JvywbeWHAWnjNld2+UcwQFGogIVGeHKwPY8YS+y9dq8yqKw4ZbTk4QFxuBxfCF3zCVDhhHblXRkdyo2LuqCLOeRwn4wl8tEOpKBKbwc8KllHgJeImQOdsbsCDAZ8yQbZDEIUY8driLpJ17hFY3zdKDBOPX2a940/KFAvxLsjJQtxnt2htfIEFY8OeXKHIftMqsQCRq/FVfjoc5iQ3dfYjlGg4unA/uKoSEK3plLolAd0kjP0KEB6ljk+zyytVmGGxA5gigutUuPNBI984i5T+c19VKCCogp/42LQciGn9PRgMWDp6JgzgW7vNrEJxWZ4ursALlGWqXgcwbnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QVz9NXkcEei6z96JvcDTZeYCEZ1gdCpLRnqTo0E+4AM=;
 b=Fc6zcjroHArL9AgZe5gD1wdTJgvmA4k1130P3DId6eErRMtPi1+8Dicuy/puADALmEpB9k+X3djMT3O8j7kh4CwhjltVWJhX6epgqP9K4c25TKE56MqABSGX1p5Y846z8qr+65i1+dfF1BL7jM/MEHY3jZmuIg1vDk0NKhIi8nQ5Eek7ftUIsMYIG2bodx9yCiC10rDm/tEduuThJpBKcmjAWF9ZHNTQ7IvTnolKpUK2kBDlekHSwBSFOneqHaJJmtfD01lwn/mhMHQxn7Hm4gGo6LSH1VVn9/UkUqNsnbnuZCTGudJoiBgZU0W7c4araWudZ+mJS/n82wxbA+ktRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by CH3PR11MB8590.namprd11.prod.outlook.com (2603:10b6:610:1b8::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.30; Fri, 27 Jun
 2025 16:53:19 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%6]) with mapi id 15.20.8880.021; Fri, 27 Jun 2025
 16:53:19 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Knitter, Konrad"
 <konrad.knitter@intel.com>, Simon Horman <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] ice: add E835 device IDs
Thread-Index: AQHbyWn+tP5H0XkNH06OyypCUqSNG7QXbNZg
Date: Fri, 27 Jun 2025 16:53:18 +0000
Message-ID: <IA1PR11MB624152F06275B0400414F7EB8B45A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250520093059.387511-1-dawid.osuchowski@linux.intel.com>
In-Reply-To: <20250520093059.387511-1-dawid.osuchowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|CH3PR11MB8590:EE_
x-ms-office365-filtering-correlation-id: 75ceaa4b-a460-424a-26f9-08ddb59b1e51
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?kfOlac4N2lHZo19ttjD1er+6nyKP5fSCIhyQJvAC7LHa8KZPtNevnsF/QdEO?=
 =?us-ascii?Q?KabOKLHv3sWAjrRpFCQ38I3JHdLEhT3Kby1oAoZjwTH2mfC2mm6URPzk2uec?=
 =?us-ascii?Q?9MrbhrnjiQN8jq6ka7T2OFSLiC4nYmm466Vb/2kCYAOPfC3cDnvJQEmq9W8D?=
 =?us-ascii?Q?sNs3uQGgIBYLkV+66dvnFwkUVkBWmDQfEXdCTW0TeU8SxGnji3GhXQpLvK5s?=
 =?us-ascii?Q?9VC1txx5fxIQhOvF7Wo6J7ezjfhPbI9PofQd7MA2x8BHF7Nzl2Ii4V65khv9?=
 =?us-ascii?Q?Rp3rHLKI7udFhfKss5RgYg12yffktto49ziEEmNZa8pePW1rviHUQDfZYdwc?=
 =?us-ascii?Q?LBoPsPRr6e//QbzY6524CefKvmMGKq2W/8Ih/AB/PqDp3djlgSclULWPhZPL?=
 =?us-ascii?Q?zS/hyuqCs7LuMGKtdNnN0ehw8xyQ+E3ipm60FykdxnQk7uKb6g3/J+JULJRO?=
 =?us-ascii?Q?W008A3BI95nbeDvO2kctxMLFNEaff4Z/W6swKDOTDayVAsjrCULw/RwGQvjn?=
 =?us-ascii?Q?UahcuQLaSORYhctM1/HGDmp0bKBPtp0PKwynYiN9B32lmsFnplFlNTApFpn5?=
 =?us-ascii?Q?vHsgs40STzdc55P9IVvkcdFTR8TzWCubQwBCNpLoLgPwaQ+sqan+CYwT4PKc?=
 =?us-ascii?Q?6/NovCjr0DBXtAb1YSTwqrW+NVaHtw0sCq9TMcDHT616aR1Sa6KqURJU6D48?=
 =?us-ascii?Q?g2JAgQCKl8f8WR9YnrRjz/OvFukgXoPGmFO9ZsFqvw/qzc3WLKw2KkNmJV8+?=
 =?us-ascii?Q?WD/a6RrKiTEAj3htpAo5N7aAX0LZDjsyhegkFm4JbEFquL433iIdniANthwX?=
 =?us-ascii?Q?vVzsAVyxMC1/NyV7avqBvF/bejnCnMOFKPFkyj6dCtVaQOSH5aqz/X7q7Wux?=
 =?us-ascii?Q?8KmLW4P1W/DGvkwTrpjiJuiCxd+ZcjITBJjsxybfqZkoiLyx6kjjnT76CY/X?=
 =?us-ascii?Q?0sUdE6G4InYNXrlTN8NxYe24IzryVvwIVMgZnifK54HV3Oz6OJN3Mo0tVsPP?=
 =?us-ascii?Q?o7dOLoe9/ar4WZHQdczN0OFj1p//Kd1laIWQBBbAAhJ29NbJM+bJuwNzP0RX?=
 =?us-ascii?Q?jrwt4Ps2EPLhfmQUpry5OCylgiw0WeoYHyzzWv0y958cgMInhybc3+fiEB4J?=
 =?us-ascii?Q?G8fmMOkSZvkxOxziiFyMMzf01asAzMQtCalhyQn9K1GGyUjbEdQk6J1k4rqW?=
 =?us-ascii?Q?NFwwhAPSwAkX97wm9Oib7QT/vae2+rWTMJM4JfODKQuzupNirVKZtTq+Z7e6?=
 =?us-ascii?Q?owU0AjxmbdEJ20fu8Q70qJK2GgAvl3O3B8WPeCgU966IhO+0fBYH91Ifphv/?=
 =?us-ascii?Q?/pIVoj8q1vu+M82bcmPrKRm8ilKeZkBG8jAHk8882cd8iJ1EP+W+mtH72Op5?=
 =?us-ascii?Q?56QL9OCRyW7u+Uo+WcjyOr9eBvBLquVc0aH9unyZF4oYRxz/6kOE0zoT2ISs?=
 =?us-ascii?Q?HoNhScmHBJMDton7WWGxh/0qSPSzfYbWunC6nRd7ZVsbhER+6el5VM3L6F77?=
 =?us-ascii?Q?dLRT2b63L5smi5E=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?l4RLoAMYI+o3SK3Gel8md22b1ZGbq46XXA6DLvl88UuADAntgtgAzP3/nyxC?=
 =?us-ascii?Q?H14w4F0GdTCFOHhm1a64nOAAOCGibZunwJYfFto34YjXT8xAgXac/ggYTLfY?=
 =?us-ascii?Q?mBkMfqCgISvJ1htUXchdExOJeANQg6SMEEce0O2uLIONApzIp4V8hmNs1Pj8?=
 =?us-ascii?Q?Nj5DKUld5WHhI0Um3BJJTIy9nVoprl44xjVaPvwZq6kqiMvLpZSE1SNeUNPY?=
 =?us-ascii?Q?3Ivr3puMUWrxV8Jpq8r6S8BbWkrBP5RTJCJN/zZ6xlUzoIubksW36n2WDKlX?=
 =?us-ascii?Q?Gh2vBLaB8g6K27i/A9Cs7SiHXVcs2zud9OXJF2f7QKZtPMg1Rdu8Je5KVWzG?=
 =?us-ascii?Q?vtvRc2mftNDUHEWpLiGv8d16GxNH5TKngQWpVdRhKIieTbDyVDNsf7LluiOC?=
 =?us-ascii?Q?r1opqXqIsQGsCJz08Gw8GecAo4qH5S6wvQINGtAsX8JBUnDmGImHU2NRng7x?=
 =?us-ascii?Q?gRM6ATZmc9VXYXsjyMLh96yC7bDN64gbulSgNDaX7QEvg7mAbYA31mSbZ7K+?=
 =?us-ascii?Q?nPcWGllsZgC2qKM6ZhSs5bs0DiQsqpcacBjuHYzB8sd+dcyHOdIe1AKCnPuS?=
 =?us-ascii?Q?8S/5WT50VzQQmx9yptbYGkAPxZm/YOKfmhvlCR9IUzhoM238Idhr+1cCeyTU?=
 =?us-ascii?Q?Bp6/qlVkijHqWVY7Fh1bfaRJPulpw8lTY1AMpZ4aENnq15PFGKyJP5SXP+nv?=
 =?us-ascii?Q?utmxjVjMmkBzd9sy+iCijJPk9oR5auX3mNPyxmd3B7mxnq5yLkJFeXtL2FPn?=
 =?us-ascii?Q?NaOgtto9wE081QFUj7yTCBHOgOXQpE1NM1Qo5fIe+iMA3uUANPrJ2argPc4O?=
 =?us-ascii?Q?tAmiY/SwadBadPK8FSkpC2yMExHHA4fLsYtRA2W380SPQb5A953VzmOHtOQN?=
 =?us-ascii?Q?PadD0mpkP8Up3pg6yFsB11fEDiwj/FLoTDwiGRqs/CorZfRk0OsXaGTKRnPz?=
 =?us-ascii?Q?SizKYRvGP2sFWEr3qXkjkHJVLYqGOBXLgL/6C44h2M1Cj5T6aWblVoOaaazw?=
 =?us-ascii?Q?sBlXKoz3IWHZkNqtcKxdFfq6zc5YyC5ecEqXZEoUE67TVjvtbzONoH4Fc1HM?=
 =?us-ascii?Q?eevLXhP+DI8OCrWKUr4w2QhTW4tFUG4Tml+sqbMQJgIqWQjs8cYI/AUsPAH+?=
 =?us-ascii?Q?ES2HHG1vDTc/4fDHAeknQL/6mdHwP3Yhn/v3FSGHAwriXzaQykT5tZ41yj/j?=
 =?us-ascii?Q?BoTfXRGS8HGenqbvAO2ftlfh3OpIO1WBKhNTeaIo0uIJPVqYi66U6lELC3KK?=
 =?us-ascii?Q?Q8ZKP/HpUQTHRwzcPxg6ZhCszkrb3OnJPCY8qx5jd+JGN4DPC3f0NC5fJtqU?=
 =?us-ascii?Q?H5FSAWvo2eebvalT5ujNrX4S//8bebRQbl7Q6CjxkeFYUysjz0x9aeipUMrE?=
 =?us-ascii?Q?r+vDdt0IjSvM46En5jDP/csL76wadYlxCwAcs+mL2QHFRoHyZbH0/+9yHk6P?=
 =?us-ascii?Q?rf+a7w3B9UrBtrXZcMVFYnhuh0I1tjTVqh1Th1gplI5RJLlE2+YaCor+OlcZ?=
 =?us-ascii?Q?WCWefrQhZyK5kgJny31cSU19sVXKzojJf59ggYXZBArTbS4hzw2lCo9C88V0?=
 =?us-ascii?Q?XUauLSRiwmCCDiYYbEjP6ncYOtwJzyKV/81fGNgy?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75ceaa4b-a460-424a-26f9-08ddb59b1e51
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2025 16:53:18.9346 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2RrGXTMRfHghCJEk1msGDlb9jxpirRDm3WvfY5uKkm2FXl1HzfwPaK6Aoxog37bxt5pDpJvp8dQAk5+Ax/1ifg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8590
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751043256; x=1782579256;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CRknJw2d0DAmv/ki/m8+gXQwrRZUEWng5QK+g91dndY=;
 b=HjZlgd0R8Lf77Gj7ZGqspvv3STInnTdhygDxjt2W7P/z1Vc8cqgvKQ0z
 ku8suO497wec9QXK9KLQdJ3VKMcO7nmZSUedHR5EG9bDUKZud4q3Uikhe
 XeenR2oPT3s1x0JPbBY/lJokEKXsNGqsRuVexT/0JcIxPPK3niXwuFCxr
 z2/7Tjpxq/kqYaLn7OD94eXO3DsAuymd/li/a7LvetllDo0MVvedEOs/L
 346eTTJUIc48Z/ERbvpY8VAEihDyKt6EhoVB4sRcgUN/FE1NI84sFFlgf
 8OlaCMA3/lThhkILlZLHmXUrBHlzR35lZzMXSMjdvPudZL0H1igc1DRh6
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HjZlgd0R
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: add E835 device IDs
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of D=
awid Osuchowski
> Sent: 20 May 2025 15:01
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Dawid Osuchowski <dawid.osuchowski@linux.inte=
l.com>; Knitter, Konrad <konrad.knitter@intel.com>; Simon Horman <horms@ker=
nel.org>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: add E835 device IDs
>
> E835 is an enhanced version of the E830.
> It continues to use the same set of commands, registers and interfaces as=
 other devices in the 800 Series.
>
> Following device IDs are added:
> - 0x1248: Intel(R) Ethernet Controller E835-CC for backplane
> - 0x1249: Intel(R) Ethernet Controller E835-CC for QSFP
> - 0x124A: Intel(R) Ethernet Controller E835-CC for SFP
> - 0x1261: Intel(R) Ethernet Controller E835-C for backplane
> - 0x1262: Intel(R) Ethernet Controller E835-C for QSFP
> - 0x1263: Intel(R) Ethernet Controller E835-C for SFP
> - 0x1265: Intel(R) Ethernet Controller E835-L for backplane
> - 0x1266: Intel(R) Ethernet Controller E835-L for QSFP
> - 0x1267: Intel(R) Ethernet Controller E835-L for SFP
>
> Reviewed-by: Konrad Knitter <konrad.knitter@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
> ---
> v2 changes:
> - v1: https://lore.kernel.org/netdev/20250514104632.331559-1-dawid.osucho=
wski@linux.intel.com/
> - Move device IDs to corresponding spot in the file (Tony)
> - Add Reviewed-by tag from Simon
> ---
> drivers/net/ethernet/intel/ice/ice_common.c |  9 +++++++++  drivers/net/e=
thernet/intel/ice/ice_devids.h | 18 ++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_main.c   |  9 +++++++++
> 3 files changed, 36 insertions(+)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
