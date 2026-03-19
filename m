Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0OuADhS9u2n1ngIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 10:08:36 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 602912C85E6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 10:08:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 00ACB60FF5;
	Thu, 19 Mar 2026 09:08:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id td36CIbgqHLn; Thu, 19 Mar 2026 09:08:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6406360FBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773911313;
	bh=EAmro6TOZNlRNZwBtd4gnLyKb6jDenwUb3/3APo2KDE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Hn7/2RTMevUbLuwEjeViy0zTT8V0q27HTQwk2i5qTvDXXlS+4kl4qWoDyrZz8q7UK
	 iaUhBUBLHMWs9fukDR0m6f/CJIlxOcNoBForeWz9LXNYVfBOCFvAzwHAWEn21X9USH
	 uSpXs+EC3sctB3Zx1q3m2np4cwnRq14lcT2zjxwEP3qcieSfMxhCxcLpIYJTJu4yf6
	 ScnpHHFZ41sYEQ050pG7kmUYC3cGIzruAeQDyHq8Lq6IChtmUKi/hB4i9+hq6qPqnA
	 netXi7/OV2ySDEf9RIdmuT01eS8QsjQMHcXo8Z14LgnVtkw8Rdu61DCznMywEwdDXE
	 xYSSnHwgMeVOQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6406360FBF;
	Thu, 19 Mar 2026 09:08:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id CA0ED1AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 09:08:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AF73740D49
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 09:08:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MOYSf5QDejlM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 09:08:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E099640D2D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E099640D2D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E099640D2D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 09:08:30 +0000 (UTC)
X-CSE-ConnectionGUID: GvjK0J+WRL2Kpl7Fy9nQxw==
X-CSE-MsgGUID: O9S+BYdgQW2Rq5Bzogu6dQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="92361069"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="92361069"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 02:08:30 -0700
X-CSE-ConnectionGUID: nWM2/66DQKeP/89gTiyEUQ==
X-CSE-MsgGUID: f0/bPWQbQYKgGvRTEvh6bQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="222003219"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 02:08:29 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 02:08:28 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 19 Mar 2026 02:08:28 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.4) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 02:08:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rg42Eyv7kc0zDlDbC5WQfvpXXEayACPyEcOo6bFGzwkxkyJF19oeHK5sgCCRK3fI49Q+Snw2q6pESD9NURnZw58PjhAlbAhpBH+X18MZU02+BLaClbuA8QwChEKXosHaOdVQehZ4jD/+1zgOJZbr6l+qfaUbCZkSttHmFkk6wTj0ffblv53RxJtjSrMnWlLrFDNTSEC+dnU+sBB5AgsT9Lp9nal41QHENJFgASdQVRfA/WklMOpjjx5UwNTHPkwGZq17FTZPK5sIaH6sFO1seMw6QsS79T5NG6VCEDGIfGfVjsxCEsWbftpKttlULUAFnnq+w1zADw2Qox9f5q/mmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EAmro6TOZNlRNZwBtd4gnLyKb6jDenwUb3/3APo2KDE=;
 b=ef8hwTjq+Vgk0k7DbKV/HYqh1ZB9i+vQwGqngKublCLVVKVrd2CaEpIrBE8UX4PDqWAJmBCNLXPdA/Tz3UebCRyr3UkPhNAYhN/UImerCe3zpIqMIJHMIey+1B1s47Sc4hcTQ+WnXWxxTu5CSnKNTkXyJE6A+rbEG1131eHBVekrZwofl3bVq4eJdPOvEOW4ODnJkANmvnkDsR1DLtccrYbeMpexN+DsD/DJOKDZyQAk3VbZNtFkCL8YjTrKFZnoLCAshO58RUDeE3pV6pgqthLM8Kx8h/6M7Tux8vw9mEcIekIUuSs+4ncNLw+dLlQGQTUKxc+DPPnA//T/Us4spA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM3PR11MB8682.namprd11.prod.outlook.com (2603:10b6:8:1ae::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Thu, 19 Mar
 2026 09:08:24 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Thu, 19 Mar 2026
 09:08:23 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Guangshuo Li <lgs201920130244@gmail.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Hay, Joshua A"
 <joshua.a.hay@intel.com>, "Nikolova, Tatyana E"
 <tatyana.e.nikolova@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH] idpf: fix UAF and double free in
 idpf_plug_core_aux_dev() error path
Thread-Index: AQHctu9MLqImmdGh40imxNLgIME8LLW1kfCw
Date: Thu, 19 Mar 2026 09:08:23 +0000
Message-ID: <IA3PR11MB8986172B2F9161F1CA402D7BE54FA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260318155220.642160-1-lgs201920130244@gmail.com>
In-Reply-To: <20260318155220.642160-1-lgs201920130244@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM3PR11MB8682:EE_
x-ms-office365-filtering-correlation-id: 099e9058-4729-46d6-c745-08de859712c4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|921020|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: 4RsFxsq2JfU/AB+iS5ZgUo24ZDPvH2BIMYO7zGD0a8V4rn3GskgI/3Z7XELozcWrpueUiFPXObTU+vaj1ZCIsfx0nsfdlP0p0jti4oDsrRV+iJSFdW28bdmzkzz0NebOnGRIXy/XecM+f3N8F7VFs6ZYWHYFHxNVl6XOCid2hykoRq7r2Fgvz6eHxaAOgPEneqUMgruU9q80YMulhxoJufpvqCcW3ncgeUiyjqJ4uz0+c9mEoF2xf/7tsNGznsdMLF5+LCXvoM5kuBeU16PDOmuvM4Ob5Gm4zmsskj/3dBJRFGHGMuGIrycTN3XNeyZc294bvmu0cHitZSmmu/wdCmLGbQPifx1wxQwEj/KHVhZRMu/peBhoYuNlRtoBcyqu6xfpn3qSAm9+TtOAgroaZHN+t8ZamCa9UghR49Pascaa3K7fKwp2WlANKsNHkRwEG+5/Y6cYpv/Ptw+nHT7LEiZhKbl2if3FuEBYIx9CEfZiHl28wJeAibBpgJR30zzYscEg8f0SjcWbzkU7wKA58fRU9KQxVGf5Bop18QJZoxqd4oMS8SxEpUiawBTEnE7LJLcf6hQu7B+E4BfdQcBft7p+go3r4Nt4uc8sdLygekufIc1i+BAoYVGAMasozOYcTztixwUGK1nkHvgg4XrwzcShfrt1J38eMSBQVXqxkFS/9CstIVu2NpFdDrXnu3Ghos9AW7WB4yLRCSCN/aODS1pOOlfhT1cpXlo3WwHGlVT0BuolVlSWrKknUrF7lwbXFUuPFdom/uFyqxAnSZx/o3tMs5/pkhLnx3i2ZYogdRWUkS1HvfdEv32JegxpP4J+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(921020)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?U11YV0WjnGOFhegtpNaHlHUt4f1rjnEPngOjWmzwvBSZAzUfZo2TpFjWCyu4?=
 =?us-ascii?Q?QJ0mBCAbxlstXyQab9HRXwhk8wTKgMrIe+tp+4KpjpYwBxT6/OBc13uqHVYm?=
 =?us-ascii?Q?RUofvjON/uc40khzteSwqv1J3y67uF0zq9HgQUpnRP309owUmhhsA//2mc0j?=
 =?us-ascii?Q?qM+CWJx+XhqWyxIS162cv5kEwGXMpEg7pDpsiyTuZVHyCd2BSOC9nDTZF0KD?=
 =?us-ascii?Q?67ws+eAQMVNuno3Tv4kg/9so1N5mNSG91cIh+bTB18usQUX85nHKs0PBlOqI?=
 =?us-ascii?Q?5SgvSvLneKeE7gVgjUI+xy2Ba6zLOjl/ci0CLoDY2Xges1q+NcTNr1RjU51A?=
 =?us-ascii?Q?37+85qQxxlmfMBJBlxxfnl//VeklQahYMJ+5X9cDoTteUIoknGToiUKKJmtE?=
 =?us-ascii?Q?OToagPwhQ+ROFg5wo2cItcXMR4dul3AM4gDKzHiwn4u8zguCHc0gayTKRV/O?=
 =?us-ascii?Q?q1z7tTQMIHVxQBZ3wmYlG0GlnDN6E+1NDfAayOHaZ1lb2fj3c2A4y/QwqH+B?=
 =?us-ascii?Q?Br2DAdtVou7MQ0qMIWKLDioMGOaJT5iwSJS6Q3w/LZV+uBKogUiqUVZCtCCq?=
 =?us-ascii?Q?ddki888OYh65P3p9LerCJBBK70QsyBHtwk/8lRqmu6caX7uQGuDMAmZzRW+Q?=
 =?us-ascii?Q?xgtrSHVqhikMlynoIC514pE3g+NFFJue3cwL56ECEycrAGEdaJULmIXp1i9G?=
 =?us-ascii?Q?psz2bvye8a6IX9A0vhrFyV9ulsD2rCRMsMyVvCk95MaCaqNchcu9rQgrZCK4?=
 =?us-ascii?Q?t1cEgLGeFmm68/Lx9unBP66SxzdIlYjnJR0PPd1crLzV7h9NbGYRxKGrNLUN?=
 =?us-ascii?Q?NlszplVza4uGJRNfmP0TaDngs7SIONhUbHSIxXfn56tUP1ZsmvANmV3WFa60?=
 =?us-ascii?Q?YiKgFItSGYUFoapgkoOd7RWBZNDlwjoTa4i6JF3JSq8Y/4DKVT7UCg+cfy24?=
 =?us-ascii?Q?esc3nuyjWGSSC+ZPae0v1OcHxtmYR5FkYrimUcMQhqKzkFwepKcdhsI5Cg+Y?=
 =?us-ascii?Q?wN4A+KrDYkya90ILrncP3fhG39iMaLoLuT51Va6vrOI5Dfk1ZYHApHoH/X2N?=
 =?us-ascii?Q?X+dQYsfLEJXFBgshcUmkc1l8/AhPT6qELvDJpvsUaQTQ6qgjSd7YiSxdM/p5?=
 =?us-ascii?Q?pKJmkzPEhIueTzP0uQ7wWn8OUVGZT0WFi1TefJ2CBncXPbGdHX4uvI6Ob++S?=
 =?us-ascii?Q?R7gEHSTtObiOmVelpVegY4dCANpaZK/8mVF6wYEfiAapnBRiQYheMgsyl55P?=
 =?us-ascii?Q?rLzrVkkSB+8+L9wDNTD6Cl8bjd0jIZyCk2mIWr47WZn9DmwiNWGfcmKMWmfi?=
 =?us-ascii?Q?4ietIiDQYWxKjHbAg+RbYu/InBIxvwVRhAkcjtvYNq/ZfrejpDUR2U88Vk8B?=
 =?us-ascii?Q?i7Q9ZAdBpE0mVEemg4Dxg4SW9QV+yf56CRwsRGZumkRheeGU5UrN9D9spXtd?=
 =?us-ascii?Q?nBRHi9BvsqRVaZfjFOPLDAbeT7FfvdF34Ga8i8tAVAC6qPrBk/4EaXBUAH/Q?=
 =?us-ascii?Q?kkI5DcupD+I+VR2p6ruRsM4f1uVqiyjYSkHxlLzF2wscLVDLbd7DoazU9wmO?=
 =?us-ascii?Q?X+Wb4CVLw8NgoBqkVEj+DRks9U0GCFFPSLsWsf75JLJxH8+j50Bcwzm4+4/d?=
 =?us-ascii?Q?ByoBo9UmniWji8C7eKNKZOmOE2yo+8FwOvaDog2nDvwFNPLJNxFOfBY182kM?=
 =?us-ascii?Q?cTDCsQemBbsPoHHF3Ba1300ev7ZEmE/EiyWGp3+aO7l/Dd26pC1Igck3uwx1?=
 =?us-ascii?Q?nJ9Vc/CAqQnSuybm00g+eaNqutl480U=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: KKy72xWp6g43xQu746ikw4nVk5AFsTN+dJdQ34/So5UdZt0ygrJaynqF6IKNxT6YglbcD2ynVEIsx9n/MuOiXcKkXG25maXOqfT2eHn/sBjCOj+bcBPn3L+85tk+FX0Vh2gm2ScfVIrXYyQg/4N+Ot6ZHw5+EfysaXdHDp1dn8ToKbO4cNEtguqY5ugyMqVkg27tWLx+/kAwrUr7WcxL//j9al8LVYwmjO/3pC7mrJDq7GGSqjIzOxnzBTzP01l5sLkc2qJtUob1f92cKD9OBdOLFifdU6XLQ7/ww75m6ic8CvSDu/JK++ACIUi3+crp4suIoLHVA2LkVY8CykWpYw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 099e9058-4729-46d6-c745-08de859712c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2026 09:08:23.4131 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BS/9NdOw6/eX4IggVZ3lx2Wd1Rsw2ZCg10ZOYsl5x69xYsQ5cSvLNv4ZfxDYETgz+CgVMhGzyGwA3syNO+JEHjKo4QMUvgKOU3bbMDtyT+g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8682
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773911311; x=1805447311;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9950QLPgybJCCzfN2aH95Afuhq7E6cd/7yH0RroQPPQ=;
 b=Hr6QrCi8lUvAuXEWFu3W6tl3umpDSaCeGJ08+7IWQ3GFu3nq+dBtEdA6
 5Gnce8gG06D+H3MwTfkSSURPe+1ZVqqVoxyMdFA+trMa9jNeWmC6kafk9
 iHJLYOGLReh8qQHlDLhBX/qwXN0+KFkRUGklZFTWHHKRzgor9EuSczhC2
 SXSxz/iOrNt+QrCSsxpcoyaqYsOdrICVGeQErEEpDEwoA4wCwDgCA30Vs
 i2vs2TRMo8/XhNCskFztcNyg/qKlZt/ZZydaLFYc3SmSYT332UERvuhtz
 79+PxGSO3omerwdZ4xQUMrFeBOcHAj3kTafmdZAMXtXW/voUooBMyx/dB
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Hr6QrCi8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] idpf: fix UAF and double free in
 idpf_plug_core_aux_dev() error path
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
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:lgs201920130244@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:joshua.a.hay@intel.com,m:tatyana.e.nikolova@intel.com,m:madhu.chittim@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_TO(0.00)[gmail.com,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,lists.osuosl.org,vger.kernel.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 602912C85E6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Guangshuo Li
> Sent: Wednesday, March 18, 2026 4:52 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Hay, Joshua A <joshua.a.hay@intel.com>;
> Nikolova, Tatyana E <tatyana.e.nikolova@intel.com>; Chittim, Madhu
> <madhu.chittim@intel.com>; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Cc: Guangshuo Li <lgs201920130244@gmail.com>; stable@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH] idpf: fix UAF and double free in
> idpf_plug_core_aux_dev() error path
>=20
> If auxiliary_device_add() fails, idpf_plug_core_aux_dev() calls
> auxiliary_device_uninit(adev), whose release callback
> idpf_core_adev_release() frees the containing struct
> iidc_rdma_core_auxiliary_dev.
>=20
> The current error path then accesses adev->id and later frees iadev
> again, which may lead to a use-after-free and double free.
>=20
> Fix it by storing the allocated auxiliary device id in a local
> variable and avoiding direct freeing of iadev after
> auxiliary_device_uninit().
>=20
> Fixes: f4312e6bfa2a ("idpf: implement core RDMA auxiliary dev create,
> init, and destroy")
> Cc: stable@vger.kernel.org
> Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_idc.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c
> b/drivers/net/ethernet/intel/idpf/idpf_idc.c
> index 6dad0593f7f2..0fcbf9f1ddbb 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_idc.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_idc.c
> @@ -197,6 +197,7 @@ static int idpf_plug_core_aux_dev(struct
> iidc_rdma_core_dev_info *cdev_info)
>  	char name[IDPF_IDC_MAX_ADEV_NAME_LEN];
>  	struct auxiliary_device *adev;
>  	int ret;
> +	int id;
>=20
>  	iadev =3D kzalloc(sizeof(*iadev), GFP_KERNEL);
>  	if (!iadev)
> @@ -211,12 +212,16 @@ static int idpf_plug_core_aux_dev(struct
> iidc_rdma_core_dev_info *cdev_info)
>  		pr_err("failed to allocate unique device ID for
> Auxiliary driver\n");
>  		goto err_ida_alloc;
>  	}
> -	adev->id =3D ret;
> +	id =3D ret;
> +	adev->id =3D id;
>  	adev->dev.release =3D idpf_core_adev_release;
>  	adev->dev.parent =3D &cdev_info->pdev->dev;
>  	sprintf(name, "%04x.rdma.core", cdev_info->pdev->vendor);
>  	adev->name =3D name;
>=20
> +	/* iadev is owned by the auxiliary device */
> +	iadev =3D NULL;
> +
>  	ret =3D auxiliary_device_init(adev);
>  	if (ret)
>  		goto err_aux_dev_init;
> @@ -230,7 +235,7 @@ static int idpf_plug_core_aux_dev(struct
> iidc_rdma_core_dev_info *cdev_info)
>  err_aux_dev_add:
>  	auxiliary_device_uninit(adev);
>  err_aux_dev_init:
> -	ida_free(&idpf_idc_ida, adev->id);
> +	ida_free(&idpf_idc_ida, id);
>  err_ida_alloc:
>  	cdev_info->adev =3D NULL;
>  	kfree(iadev);
> --
> 2.43.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
