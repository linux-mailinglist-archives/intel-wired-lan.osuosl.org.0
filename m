Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 56767B3AAF7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 21:35:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03FA6610DE;
	Thu, 28 Aug 2025 19:35:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B9pvw9QCmmJL; Thu, 28 Aug 2025 19:34:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E2493610C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756409698;
	bh=4cAqPGCSse6C60WarSYN0hgQDg82Og8vOqdy3kpRtoc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=k3nnTBPPWqLslk57vvyyCYqvGrmMUuUo8qucoZaVT9DWIZUz0kDG3OxKRLAxRvkrW
	 A219NPreibV/ekQUrgsf9hhNwJVHEMVYUCctVhMyJ037gJcMtkZOeYVq873uByLaoM
	 E+5HQgsPillwabD+0xqcYnI/bk8QG0nzr8RR94Ej1R4Qfg+LWSEmXEy8a8XGrooTVe
	 7W6vul1oEwkciEse7XlyFnlx+i29OIUmdzDwt0IuvqxQSvpymqfQovS6ql34o583+d
	 Ob78+OPz+MtCuiqKovPHOgJXT6d52Pqyzxkj4lubFWOVFop3Ce4F0KhPSWz+iNNj6W
	 wqGEu23RXhJfw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E2493610C5;
	Thu, 28 Aug 2025 19:34:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1CB476C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 19:34:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 016C681347
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 19:34:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hqVAtX7NrSub for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 19:34:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 68F46812E3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68F46812E3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 68F46812E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 19:34:56 +0000 (UTC)
X-CSE-ConnectionGUID: 2cKj8nw4TQG24nDmumRCfg==
X-CSE-MsgGUID: PVDKwFNoR5Ok/n7C/vitDQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="81284379"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="81284379"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 12:34:54 -0700
X-CSE-ConnectionGUID: 0R2+HLh9QtGj8c9QAuTedA==
X-CSE-MsgGUID: 7cHJc8zDQC6JuFMWydHDig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="201115606"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 12:34:51 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 12:34:50 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 28 Aug 2025 12:34:50 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.84)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 12:34:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QhpC9M/YWigZ6eZYtrZDOEhCfOisXaC23akl+lZHYcr24xkjPslx7jwcUGZUQxXlr64KrlkYFIyzwuB0tQMMN3j+vEv2aparledGKqOZf5wwcPZAcW79ieFvrhtHiVS2aesJrSwwfAU54k9NYDG19X3QfARnIxG93xj2sh/CLmy/EdLT6tTj6UugwFnlhQ8pxARdEKtou6COZBl0q3kzDAOyFr7OuXPpkS9+86I1MU2XvCNGoAmmPXb5iZg3sTvnGuDui44J/Rq7PBaBNgd77ubp/TqP9UHjCeScazP/xQHx12rQhwzk+hCj8M5JZzg1ARCskN2XzmLVyo+wuREAyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4cAqPGCSse6C60WarSYN0hgQDg82Og8vOqdy3kpRtoc=;
 b=pdPs4LE0ON3hAYK/5uttzmmjz18FAp96NfD0e5mvSo8AAv+juVo5tlixzbZuE8f5CdeRDHIK9DtIP/0SLJCLwZlmVmkHETI/4gq4PEV6EOiL/cMbswVuo9mQ6fCVHNTGGbac4rA/X5zJdQdHgVSLmGN60aSJWVA/XYww9uv+Szd+FOp9qJElUXYW2U4zfqp6QjHUwkIGbablEdxVhtPotkoDlMldaMbZUC5kXkk7xnpjluD2T1TvcBEbOa5eKBGYKOy2j3m2OsjUNnkJR3qUM297/RoUOseG/EArFzeXl54dUOfynDVT29s9lcxkdnQEq14ap95n72+kWPcmGi7zgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CYXPR11MB8732.namprd11.prod.outlook.com (2603:10b6:930:d6::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.15; Thu, 28 Aug
 2025 19:34:41 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9052.019; Thu, 28 Aug 2025
 19:34:41 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <enjuk@amazon.com>
CC: "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kohei.enju@gmail.com" <kohei.enju@gmail.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: preserve RSS
 indirection table across admin down/up
Thread-Index: AQHcGDUhWrvEhMLqP0iDW+Fkb2NtCLR4Qv6AgAASj4CAAB7nAA==
Date: Thu, 28 Aug 2025 19:34:41 +0000
Message-ID: <IA3PR11MB8986220F78939C9A26D6D40CE53BA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <IA3PR11MB8986E8200AD587B4292B3F22E53BA@IA3PR11MB8986.namprd11.prod.outlook.com>
 <20250828174326.20978-1-enjuk@amazon.com>
In-Reply-To: <20250828174326.20978-1-enjuk@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CYXPR11MB8732:EE_
x-ms-office365-filtering-correlation-id: 8dcdda2b-6b79-4d8d-cf6c-08dde669eef9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?4aTCp5R8gKMz+zOB7J1JRkZYV0R/jEUFKi4lxtOZLLrQmrWXECUN3ImeDn2q?=
 =?us-ascii?Q?BUANAoK6xnqYO5HU8NLfpm7NflAmWKt8ti9SKfs2SeUNtdfFDybgUYgTUI1j?=
 =?us-ascii?Q?/pyuhIrKseQtM7DmyDCuFs6UETToi2QgPd4IbFMGz24Tli23SyjoTzmJzPWc?=
 =?us-ascii?Q?ytgj+9Pv86mBuOQOOTsm40xJb6fgILd5DIzLtKPch0H8A3c2FiuHSkm9xjb+?=
 =?us-ascii?Q?PKx03PXD/K6VDM3jbUMi3xtJexB9ZlDngLaYbBRRA0g1PMCJ2RTw8IvmPGQF?=
 =?us-ascii?Q?xYl0K3HnB6c7y2jITOX8xIcljqTyGBmo+WcQ/gymMyIy6na+UqlZYwUbpFFQ?=
 =?us-ascii?Q?5d0yIK+a55V88cRZq/waCj5R2iL3pAMPO85T96gXqnWL4k0y8ie3Wg2pSXVv?=
 =?us-ascii?Q?8q9FlmhhIyfyOJucd8zoOHTZVUREJcQwq3u6eGTvsOSpFzZ6LW3qnGf7I1mt?=
 =?us-ascii?Q?fb2IQfxP7V1xAHtJZk8De3FGr8tUd3VbZgqv/sKujAD57kf27r9/NZqBvT0X?=
 =?us-ascii?Q?/u7h58SK5xxM33K1Zhpfgdsw1sljUxIObtUQvEI/j3Iuexbkqia9aVxz2NP0?=
 =?us-ascii?Q?N9mffEZgOblMydFJa01tBAaoFmQmZv6wSY2A7KNSAuFxBq3B8wkaU0IV31IU?=
 =?us-ascii?Q?2fyvZuOitcv4nEWZlYeQZbAWzqKIWGmffM/2Kbl8pPiMOgj1CbopxNSDtfHb?=
 =?us-ascii?Q?hqbiHo2zeskHCKxPpJcb2BCGncdbry0mqrm8GClRCIqyUxkI/epWFttpxO2Q?=
 =?us-ascii?Q?EPmo9kXy0aqwIFKFF3UAZ9vnT+l7dINWexMRk/ynmYrpm1ZPrGg5qx93A9PK?=
 =?us-ascii?Q?HoyPxUeC/5tieKAxhkjIrpyWTvx/mJiImfx342qhXS8b3g4/Dk/iy6WjTUiT?=
 =?us-ascii?Q?roAlkjvsQ75qKceHfO+cA+ifrvfFbnB6DBJul38V73prsi705tAPKdoLzY/Z?=
 =?us-ascii?Q?r4Bd0A3RflsEHgFt0Nom+90x2Ewdwh0SOK61qmSjuYG8zKUzJxV8f4q5H+jc?=
 =?us-ascii?Q?k2OSsOPkc70iBSW8i9Cn4VMQcTEVdA36R4s8Yjvwt8pGXHSyyA04q2Bx3IZA?=
 =?us-ascii?Q?tE9X7aKyrN2N5xFyjfvGoHRw+PHXk3AB5ofMv9wVfXMt7shcPizl2hQwpEkC?=
 =?us-ascii?Q?aa/+hj1R59RZAlh0N9Fu8D0ue10vJfTbyVrzmP7EGnJH8NpApqD2GWIqyOV8?=
 =?us-ascii?Q?pDOBUY6LbkAbwva+WATzgX1cPUjO35DphjP9a7xr8KZ+UjV5HZgW+lzTpl8H?=
 =?us-ascii?Q?ZkFBmEo+Ww7BIHDJ7AvL7JKVGlouQI2P8KTTb2vSFHxVVFgLUG0NtlTGpH/m?=
 =?us-ascii?Q?QrTau6QVxI2pe+0aBC4IrwnFO0SYkEmjP8RXRoQkcgcNh3zHQ5fNjFVuHozS?=
 =?us-ascii?Q?SpbLT8gmosCe5WAYn2IAyuSDc1PBpRl4plhKWzCrRAegm+1316oD2FxstxG8?=
 =?us-ascii?Q?Iy64tDJnTqRuH4364BR7WeTKcoP8fBnQMqrk/wxKWrQ8jOdGoODjcJDth3Gm?=
 =?us-ascii?Q?WRz2qqwpds4Iy7A=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FZhRG0cRDbso2ERtQHNW6sZGXFLbQCuD3zjz/J4Ya6K9b3CBvsj53binMzoQ?=
 =?us-ascii?Q?crkEG91JvkPoKrT6oAfhwzVyOpcuPQBgAMa2nDnztby00V7iq8mVVASY4TEx?=
 =?us-ascii?Q?/XQM47hBLBkp9SoY5wbPNc3CPcoUtfrr63HenE52Ovdllfaoj+6zMZtcBVxe?=
 =?us-ascii?Q?+6/ekfnUGNDXarLjdnLb7egdVXKvEqhXAKhofubG7mnflJ6XBt7XmFtC5Dn4?=
 =?us-ascii?Q?XOADwk8jcIfoUD7423fO1zHTTnQkClh8UO7OUUClzGbpDKF0d0flWfgP0prg?=
 =?us-ascii?Q?rzpDcFL4I86Rcxs2lFTS/9Xcllzhwe2KqVsyq1zLzpRhCUJnmzPXwmY1OywQ?=
 =?us-ascii?Q?OB+5D11HefSUrwgoyUbFkupQ8s+Ypn0EFcdlHK4CtOL6Q5hNEqKvRZRJKR/T?=
 =?us-ascii?Q?u7OgLR84VA3K77yHyasRTA8OWZf9pf96GXOleIjK68MF9VfRDUVfPFgqDWL0?=
 =?us-ascii?Q?oc8YSVtiftA0ebkCen+w+ybUBJC7NXLEFgvp3bUWQcOtjFOiC+oR2W5sgccD?=
 =?us-ascii?Q?ssQbKQL31xkpKp5wQ2B/mGa6LoGbadFMsdvwwzFTu72Krwdh3DE4gV/ltn/P?=
 =?us-ascii?Q?Bj1a10EzGTqQIvx4L7izJ6uDqRTmlctTZiLTvHfaFjIaflLQVEwQ02EvE6LY?=
 =?us-ascii?Q?7Y6BkmXGputvrvuQcplclZmj1r/gAeJEzhGPv6VAx0wSPz1p0sSMIsI0+yDL?=
 =?us-ascii?Q?aOguCWchv6hNMc51/iLT90VC2zVa1ZBQyjFzDy+K7UoiUWoGciN5p6PvXwph?=
 =?us-ascii?Q?qptzQijlI4lCFPuEEJI80TjYefqgDMFHekPH1h/L2uB3I+M+21ykote4qOb8?=
 =?us-ascii?Q?8COYvA2ENM92tVKdc0QxjY7aJxqla4aWwWqq1KknOCrj8LG1//D3+Spji6xU?=
 =?us-ascii?Q?F9h0T3QiDv3ptaiRIvD6pkSni8dxDxpP50CniAxo9y/oMyRYj+w4Dy+r/jIG?=
 =?us-ascii?Q?+ixWOGyYWzVXnMOSDRAAGY7DYWchjWWhWmZBaWUjFIe/9nFhvAZens8OqaH6?=
 =?us-ascii?Q?0GQMo150YoewkNUmG7XdM486v0MgOO7g5rqkODLw7rvfcP2KXPeqiHoBWP5n?=
 =?us-ascii?Q?FYJUzqkSi6yoaiSCibTIE7aLaeQl/amTTWu7yp6DIOhkPoQBRcSbfB791nTv?=
 =?us-ascii?Q?GcffoEV+YRMLbjvt3Buqg4twhxvGvctqIbsA5A99Oq+f4EUMTUCPAWY1sEcM?=
 =?us-ascii?Q?LpNvk10kuIaWv44PDiPDJNm/jcqOWDvTi4JUK6IVsOmlegD1jfQd7shqtGwa?=
 =?us-ascii?Q?Z6j2lgQ5YhgHjttj0q2usd334FImH6FyLsPzDmQt2YDXnw842FNnGXegT9OL?=
 =?us-ascii?Q?2kE5wjdi/SN1vl+19QDvOlIvsykBCAehc7rUtNjTpaEAHKJKW0ZqedM0u5Lx?=
 =?us-ascii?Q?PgAtPz+gX7hGZ1IuM0v6MwuYwd0rYmVQZrkDU0TTZ6ngnKx7FPjDDy9saXz9?=
 =?us-ascii?Q?TD9NZUO49DNfrTbtEEdkxTDHdmnjwJpHCYqxMh/rjQHMye1gUcmSaBsNZKVe?=
 =?us-ascii?Q?mIKVK4vBpQljICBHZvLgMDFLHSzCotegzPfodvKN6jc0nl4lL/bslXILWkkE?=
 =?us-ascii?Q?5kkljiRRlIy2h1jiqGTL3xYvyOLVk3g7TmXDnvVCQMb8IBkFa+SzhTcClYsy?=
 =?us-ascii?Q?6w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8dcdda2b-6b79-4d8d-cf6c-08dde669eef9
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2025 19:34:41.1436 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Lnv9QiL61EPxLb8NWw0ha0D1Iu3DPHEe8hYD32rhb1th4G3jfk7vsap+YNWUG5gOpuqKC1FRURJ/s1ZSkr4ScmQhmJPVZRJLly7VCqilLUQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8732
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756409697; x=1787945697;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Mlyr2ggPxYLor3DityWjIIBb8H+sOYkkWqDiXCIy0fM=;
 b=GdsEjy88T0iSnuIQCA8j6Iffd9DXKgtAYMt/a+HZvGAPS1Y0yPa8TCQT
 60RnpFU4QksPU2KCOd++xZ0DS90BfNXs/oFjVZs9lqm7cwC6q/kqYXg+5
 ifsn2hHdq3NmpjT6aV3z0p540nFVYiKbCMXn7Bu8AsPJ0fuk7XE8tJWKl
 EFyZrXjxOIYNumAH2Wx7OgQVHEy2YBehexKbuj3k8MrhFeaKjkAWn8bsk
 FOlZWaDwXE9mXoEKzmJ0spSwb0tU/9uo/Tjvk/OV1xq58VCOJo1R3+fNb
 KkdoG5pYszOLWX7UBobWwv+8et0WwkTR2J+zXUCkH8pG2aG1RrHOwVo+i
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GdsEjy88
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: preserve RSS
 indirection table across admin down/up
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
> From: Kohei Enju <enjuk@amazon.com>
> Sent: Thursday, August 28, 2025 7:41 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: andrew+netdev@lunn.ch; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net;
> edumazet@google.com; enjuk@amazon.com; intel-wired-
> lan@lists.osuosl.org; kohei.enju@gmail.com; kuba@kernel.org;
> netdev@vger.kernel.org; pabeni@redhat.com; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: preserve
> RSS indirection table across admin down/up
>=20
> On Thu, 28 Aug 2025 16:42:31 +0000, Loktionov, Aleksandr wrote:
>=20
> >
> >
> > > -----Original Message-----
> > > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On
> Behalf
> > > Of Kohei Enju
> > > Sent: Thursday, August 28, 2025 6:01 PM
> > > To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> > > Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> > > Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> > > <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>;
> Eric
> > > Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>;
> > > Paolo Abeni <pabeni@redhat.com>; kohei.enju@gmail.com; Kohei
> Enju
> > > <enjuk@amazon.com>
> > > Subject: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: preserve
> RSS
> > > indirection table across admin down/up
> > >
> > > Currently, the RSS indirection table configured by user via
> ethtool
> > > is reinitialized to default values during interface resets
> (e.g.,
> > > admin down/up, MTU change). As for RSS hash key, commit
> 3dfbfc7ebb95
> > > ("ixgbe:
> > > Check for RSS key before setting value") made it persistent
> across
> > > interface resets.
> > >
> > > Adopt the same approach used in igc and igb drivers which
> > > reinitializes the RSS indirection table only when the queue
> count
> > > changes. Since the number of RETA entries can also change in
> ixgbe,
> > > let's make user configuration persistent as long as both queue
> count
> > > and the number of RETA entries remain unchanged.
> > >
> > > Tested on Intel Corporation 82599ES 10-Gigabit SFI/SFP+ Network
> > > Connection.
> > >
> > > Test:
> > > Set custom indirection table and check the value after interface
> > > down/up
> > >
> > >   # ethtool --set-rxfh-indir ens5 equal 2
> > >   # ethtool --show-rxfh-indir ens5 | head -5
> > >
> > >   RX flow hash indirection table for ens5 with 12 RX ring(s):
> > >       0:      0     1     0     1     0     1     0     1
> > >       8:      0     1     0     1     0     1     0     1
> > >      16:      0     1     0     1     0     1     0     1
> > >   # ip link set dev ens5 down && ip link set dev ens5 up
> > >
> > > Without patch:
> > >   # ethtool --show-rxfh-indir ens5 | head -5
> > >
> > >   RX flow hash indirection table for ens5 with 12 RX ring(s):
> > >       0:      0     1     2     3     4     5     6     7
> > >       8:      8     9    10    11     0     1     2     3
> > >      16:      4     5     6     7     8     9    10    11
> > >
> > > With patch:
> > >   # ethtool --show-rxfh-indir ens5 | head -5
> > >
> > >   RX flow hash indirection table for ens5 with 12 RX ring(s):
> > >       0:      0     1     0     1     0     1     0     1
> > >       8:      0     1     0     1     0     1     0     1
> > >      16:      0     1     0     1     0     1     0     1
> > >
> > > Signed-off-by: Kohei Enju <enjuk@amazon.com>
> > > ---
> > > Changes:
> > >   v1->v2:
> > >     - add check for reta_entries in addition to rss_i
> > >     - update the commit message to reflect the additional check
> > >   v1: https://lore.kernel.org/intel-wired-
> lan/20250824112037.32692-
> > > 1-enjuk@amazon.com/
> > > ---
> > >  drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  2 +
> > >  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 41
> +++++++++++++---
> > > ---
> > >  2 files changed, 31 insertions(+), 12 deletions(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> > > b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> > > index 14d275270123..da3b23bdcce1 100644
> > > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> > > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> > > @@ -838,6 +838,8 @@ struct ixgbe_adapter {
> > >   */
> > >  #define IXGBE_MAX_RETA_ENTRIES 512
> > >  	u8 rss_indir_tbl[IXGBE_MAX_RETA_ENTRIES];
> > > +	u32 last_reta_entries;
> > > +	u16 last_rss_i;
> > last_rss_i is cryptic; please, consider last_rss_indices (or
> similar)
>=20
> Sure, I'll rename it to last_rss_indices for clarity.
>=20
> >
> > >
> > >  #define IXGBE_RSS_KEY_SIZE     40  /* size of RSS Hash Key in
> bytes
> > > */
> > >  	u32 *rss_key;
> > > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > > b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > > index 27040076f068..05dfb06173d4 100644
> > > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > > @@ -4323,14 +4323,21 @@ static void ixgbe_setup_reta(struct
> > > ixgbe_adapter *adapter)
> > >  	/* Fill out hash function seeds */
> > >  	ixgbe_store_key(adapter);
> > >
> > > -	/* Fill out redirection table */
> > > -	memset(adapter->rss_indir_tbl, 0, sizeof(adapter-
> > > >rss_indir_tbl));
> > > +	/* Update redirection table in memory on first init, queue
> > > count change,
> > > +	 * or reta entries change, otherwise preserve user
> > > configurations. Then
> > > +	 * always write to hardware.
> > > +	 */
> > > +	if (adapter->last_rss_i !=3D rss_i ||
> > > +	    adapter->last_reta_entries !=3D reta_entries) {
> > > +		for (i =3D 0, j =3D 0; i < reta_entries; i++, j++) {
> > You can avoid the top-of-loop equality test by using modulo, which
> reads easier, like:
> > for (i =3D 0, j =3D 0; i < reta_entries; i++, j++)
> >     adapter->rss_indir_tbl[i] =3D j % rss_i;
>=20
> I got it. I'll use modulo and then j can be removed like:
>     for (i =3D 0; i < reta_entries; i++)
>            adapter->rss_indir_tbl[i] =3D i % rss_i;
>=20
> >
> > > +			if (j =3D=3D rss_i)
> > > +				j =3D 0;
> > >
> > > -	for (i =3D 0, j =3D 0; i < reta_entries; i++, j++) {
> > > -		if (j =3D=3D rss_i)
> > > -			j =3D 0;
> > > +			adapter->rss_indir_tbl[i] =3D j;
> > > +		}
> > >
> > > -		adapter->rss_indir_tbl[i] =3D j;
> > > +		adapter->last_rss_i =3D rss_i;
> > > +		adapter->last_reta_entries =3D reta_entries;
> > >  	}
> > >
> > >  	ixgbe_store_reta(adapter);
> > > @@ -4338,8 +4345,9 @@ static void ixgbe_setup_reta(struct
> > > ixgbe_adapter *adapter)
> > >
> > >  static void ixgbe_setup_vfreta(struct ixgbe_adapter *adapter)
> {
> > > -	struct ixgbe_hw *hw =3D &adapter->hw;
> > >  	u16 rss_i =3D adapter->ring_feature[RING_F_RSS].indices;
> > > +	struct ixgbe_hw *hw =3D &adapter->hw;
> > > +	u32 reta_entries =3D 64;
> > Magic number. Can you #define IXGBE_VFRETA_ENTRIES 64 ?
>=20
> You're right about the magic number.
> I see it was introduced in commit 0f9b232b176d ("ixgbe: add support
> for
> X550 extended RSS support").
>=20
> I'm considering using ixgbe_rss_indir_tbl_entries() instead of
> #define to avoid the magic number, since ixgbe_store_vfreta()
> already uses it.
> This would ensure consistency between the two functions. Would that
> be acceptable, or would you prefer a #define?
>=20
Good catch!
ixgbe_rss_indir_tbl_entries() is proper solution ,because it's h/w and conf=
iguration dependent.

> >
> > >  	int i, j;
> > >
> > >  	/* Fill out hash function seeds */ @@ -4352,12 +4360,21 @@
> static
> > > void ixgbe_setup_vfreta(struct ixgbe_adapter *adapter)
> > >  					*(adapter->rss_key + i));
> > >  	}
> > >
> > > -	/* Fill out the redirection table */
> > > -	for (i =3D 0, j =3D 0; i < 64; i++, j++) {
> > > -		if (j =3D=3D rss_i)
> > > -			j =3D 0;
> > > +	/* Update redirection table in memory on first init, queue
> > > count change,
> > > +	 * or reta entries change, otherwise preserve user
> > > configurations. Then
> > > +	 * always write to hardware.
> > > +	 */
> > > +	if (adapter->last_rss_i !=3D rss_i ||
> > > +	    adapter->last_reta_entries !=3D reta_entries) {
> > > +		for (i =3D 0, j =3D 0; i < reta_entries; i++, j++) {
> > > +			if (j =3D=3D rss_i)
> > > +				j =3D 0;
> > > +
> > > +			adapter->rss_indir_tbl[i] =3D j;
> > > +		}
> > >
> > > -		adapter->rss_indir_tbl[i] =3D j;
> > > +		adapter->last_rss_i =3D rss_i;
> > > +		adapter->last_reta_entries =3D reta_entries;
> > >  	}
> > >
> > >  	ixgbe_store_vfreta(adapter);
> > > --
> > > 2.51.0
