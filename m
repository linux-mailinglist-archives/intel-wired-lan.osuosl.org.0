Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C715497D047
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Sep 2024 05:29:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 84D8484B8E;
	Fri, 20 Sep 2024 03:29:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5aZXzmc5cK4I; Fri, 20 Sep 2024 03:29:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C92E684B9B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726802956;
	bh=tsqLRCsQIajoCKUsMozlcuE13CVtLsMOgrXAe4aHLXI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4UJgzPs9ktTmTpdiavrGy0UOro8GLCDzp6mQT9i74znFbTCREaVdG4ov0j6Jc929V
	 U9S45uOKJfguVwBlCKVvVR7J7dbmp6EW/PQZZpGZsL3WivBXqJRlMd15mkB7Qwkj5U
	 uYiCCG1fxenJXIRxIlNVAPe1AO+pRH5jUc3YcEYp4lMLI0BcjOuGn/ws5bJgo3EG2T
	 X7XTjZvmnLINnrtpGLtgbqWkLwhdfFaWBHQNt5jN5ZrG1/FF0wA06tIl3NQkoIMrZL
	 5FZpWM1cBd9P+wFsMPpGkoYqLSwbbSVZkcwVkEGjtFduUD1FDgo+yWfpiLdM/L0Ii5
	 Em/AkRs0Gygjg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C92E684B9B;
	Fri, 20 Sep 2024 03:29:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9160C1BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 03:29:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7EAB0424D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 03:29:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mJKqzAz28xxr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Sep 2024 03:29:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 80605424CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 80605424CD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 80605424CD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 03:29:13 +0000 (UTC)
X-CSE-ConnectionGUID: Q4K2HkNWQlKlQKcWl2PBqg==
X-CSE-MsgGUID: rc/S72OhRl6pJxu1NwQZ1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="13602948"
X-IronPort-AV: E=Sophos;i="6.10,243,1719903600"; d="scan'208";a="13602948"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 20:29:13 -0700
X-CSE-ConnectionGUID: EUV9ff4lRXi71Mo3dFEUGg==
X-CSE-MsgGUID: 9PGZ4VFvSjOPcUu0Mb6MBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,243,1719903600"; d="scan'208";a="74259142"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Sep 2024 20:29:12 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 19 Sep 2024 20:29:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 19 Sep 2024 20:29:11 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 19 Sep 2024 20:29:11 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 19 Sep 2024 20:29:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gbAVKVS9ASG5La3yJNVR9cngjBsFB5mDmHHDdu3TIMLJhc39SdyNn1p7Ha3taYb0ZLyQKdJV48i6kk2FhCtMDT7Ee7AxOU839MkmJRJ3QInTKyYm9ZSEVsjhLqo9+OdWxK7xu14KZ6Iku07vN8rBbECqVQILXkqhkV9F76+v6FSdB6SamsfXyCF049BRQHphzZOmzr2uNLKNMm/CxGTT0n5TX8p73P6tQXaH3Gg6M6uEUmTqumLyTNFl6CerfdkmUnOW4FzOd0ZcQ8aGx2BTsNu/aEPXwtnrgWj7NoAJhy4p3NGymqQmJh9+dBFVifX5zYUQ0BJvaFlo6P2CkEwaow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tsqLRCsQIajoCKUsMozlcuE13CVtLsMOgrXAe4aHLXI=;
 b=U3W04GNi9BBFS/CNhJ05c45ujTBmNqRrAhBE7b/J8FTc51dBST3m3CSBwJV8RktNnZG9KE8ZCkH/VFJx4EaRlE5L0PYVkD4ZhCt61bo9BdkMfqLt9eskOy5+K+US+0UDA5mvCLcLSfi+EFoNWbgGyZ7oBZ5nTby/w3LgO1txYVQNV1S2JyFWSHEMAldAHsGPxHxlYO0R6psNrtPPV/ER0ZVxyHGdTf3IXzNeNAep1j+sH6QJwFgp9oOaefB/G7H9JC8QmC5s2hvFDxLPWmsjX59+v//NAoXoHSGmmkH9Ux4LGbacdIElmPPU6ym+9ugWNpNWAijnytwfA1f/S/Wn1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by CH3PR11MB7722.namprd11.prod.outlook.com (2603:10b6:610:122::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.24; Fri, 20 Sep
 2024 03:29:04 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.7982.018; Fri, 20 Sep 2024
 03:29:04 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: disallow
 DPLL_PIN_STATE_SELECTABLE for dpll output pins
Thread-Index: AQHbBPIIVvrLkUIW2UmG9TdpHfMAsLJgD6+QgAAAxfA=
Date: Fri, 20 Sep 2024 03:29:04 +0000
Message-ID: <CYYPR11MB8429F98FCC397453FF90144BBD6C2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240912085428.686314-1-arkadiusz.kubalewski@intel.com>
 <CYYPR11MB842941FEDF539839C6BB1D9CBD6C2@CYYPR11MB8429.namprd11.prod.outlook.com>
In-Reply-To: <CYYPR11MB842941FEDF539839C6BB1D9CBD6C2@CYYPR11MB8429.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|CH3PR11MB7722:EE_
x-ms-office365-filtering-correlation-id: 82ab2f76-6ce0-4ce3-4baf-08dcd92460d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?jkMtnU8RiTSeYg3+IvN8E485hNmfiSjFHNEUtg3ax/HN6E0zAh9G9hMhGj/U?=
 =?us-ascii?Q?VcsQpiCLOnNR517dLBfm3ST2PPu0L/1BS9vC1l+Io4Ym+TNXFVj22PbHoHdJ?=
 =?us-ascii?Q?I0Hp/tyu7HEZ9Jc5ruZUxh7v5MafQD2OFuhP+wwk/cfj4+dyKgtC7WOywVvq?=
 =?us-ascii?Q?LWysB5gBGy25fPovGK0Au6jHn1o6MzBd0pBN/plDRMKpZQ426HsqPwfe7u6i?=
 =?us-ascii?Q?I77ewwf0MMS1yxuLEdRkrfZ4XkNVklIYQCKFcMl2AvBU9jWuxP47NhfKEUia?=
 =?us-ascii?Q?ZRhwFsLGqK4UNMyaLoWpdjB1luD9g2Icc5Fb8XquMCBtBfThiKXn4T84Igyo?=
 =?us-ascii?Q?DRNXVOugHc4wh4SD4MprnIoZuAcwzg4kjnc2fo43Z9PkNamdr8+GdFc5SXte?=
 =?us-ascii?Q?u+HRaZs3vT9j0IHgi7vqis1AU84fP7SzegFg6vfWHPiVwuXuyXzEAXg59dvG?=
 =?us-ascii?Q?/0lQYuTWWn1LyeFwOV5fk2zHhLi8XHyGx1hROeUv4SP4Ek0qnanDaJOWCAR/?=
 =?us-ascii?Q?CeO+lzGYwdLasXNNK0yhSWpn3rfSz3092Ak8uezUl4LgnyWnnIqEgnNMbv++?=
 =?us-ascii?Q?+29FWFAz8z4yeHnBMb83kTZUycv5lE2FDSzuISnsajV2sfrnBFdNUDttpJ79?=
 =?us-ascii?Q?0H8iHHuXVsY7nCoTTM+Uv9mC5C7dDfddmVsrr3KGGaBbKKb9Jdz/dwPDZuNG?=
 =?us-ascii?Q?oCQaEW9qjSQ21IoXXefSxHtu4JKWLN3JvYMZNdoCGUJLgPNDP1Q37Ge2A2w3?=
 =?us-ascii?Q?xqt66ltDMvxMM9CdkqihA5VhdP6AyBviCsHxy4SAfkJWedZtagshcIMSIj7q?=
 =?us-ascii?Q?0PtYyVmzw1apz5BKUiI8YVwp1kBCLpKrp0CEbNBa0foA1kLbQfbqh/gzOHx/?=
 =?us-ascii?Q?p3LEZTp59teYL/SmVpI5Fd9iL4ObTJkosYrjcsAHwwCrKsxGzNnu6u2WAxR3?=
 =?us-ascii?Q?7joPwwHJVOd+/GtyxAjzyOqrqZwclDEoUnzGnqI+G8HmyVtePzb1fAAfbJiL?=
 =?us-ascii?Q?Qt/sdjQndovCYRi/4HugROhkW28cIWOlmSmsjz3UGmYoh9ZUdSw/pCl1vDoo?=
 =?us-ascii?Q?NnF2vUCMVJZJLtu3pgz+IWkZd//HFeUhhva/j7fpSVWvvzyHQwwF76t0xD8K?=
 =?us-ascii?Q?oVLUbyFSYhZZ5oRYu57+nrk5QX95ZyaybrhP4IOtc06DmObVs9Yl4JPtaGRT?=
 =?us-ascii?Q?0duNc9LX46BRhWRM/tkyyeMu1BAQmaNswz8ntFv8Lu8mATACrb0X1Fih9Vl8?=
 =?us-ascii?Q?kgT4BzmpEvE/acgiVOfGLS4UPCWQ+rPwDV6h3qTod9Z/xpuVVw52GZCfjFgS?=
 =?us-ascii?Q?bckDoBWucLyA3x6DsD7SEfSQJtSpmqEilx8P4cuU667blS6PG6P99u0L4akF?=
 =?us-ascii?Q?qmESKBbVdltP3BSdd5L1O3bI6/oHQ3TM/rW7tScVGsxsdFN5CA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TKmteEJb86KBtAqykkJiUR3bYXh0ckgIbtNImxkgBipxHNCRyf0/SqhviNWf?=
 =?us-ascii?Q?VCV4II28A27MH0HRrTa4xMvS/Rk+uo15WtLB9jHIEnogmRrjAJv7IiCuevfv?=
 =?us-ascii?Q?okaT3ahs5Xp81TaaJC7MMPFWBnk0pyv+b5wLRJQkQZt+uYd8tyQcHeQH28kY?=
 =?us-ascii?Q?IY6Rx5jwg2NI1EUg1RSqwLaGVdXiySUAI+NVOwdA+5xi0zJl3d9qrlZeMQ4f?=
 =?us-ascii?Q?47BCwv4svEwIYvuNFUdtaz13+8e3pYeoAAyOv+Qq6hgXo8N8/2Wq3JCiLTjg?=
 =?us-ascii?Q?jDWyEU87CEmNG6DwcslSFKGRHUENVCCmFmpdtTtfAEoXWeay0PuCoz7FUDJ6?=
 =?us-ascii?Q?Nq9b0FM+3v8biKi59TuBo8L17/Xn7Cjth5rWGp52PBKia6rgwGVyPlJX2O9p?=
 =?us-ascii?Q?m8BTOAqXpXJpifz8ryh9YXPVbN/6XQEXIcT5PMXrw8JqE3KYxemu5VAUWW29?=
 =?us-ascii?Q?7PphDsMhXUqe2/suvOwU5xV7YklrZG35f7r9NGFvPmHbmUDahG9V2+PLqG/2?=
 =?us-ascii?Q?PACFHiqLEwhe2S/qDjg7v7yXSOCmo+QBPjJtaGaTTAwv8wBY7MspKTdeEonE?=
 =?us-ascii?Q?BX3ZGUShPuDG0dj8jEtIiMhYPnKYRQKWO3X3Uf945TXuU3P8wVFgzOjBiRM0?=
 =?us-ascii?Q?XPnLmfj267lV6PQjGe+W6NHwVU3IP1O0tUZDb27VaXn7NYKxD3RcZ012gXM0?=
 =?us-ascii?Q?G2zZyo6zyY8bgwHxVHfeW6800RqxA6CxUKgHpGNUGIwH5ABCvL2MJZ6sKddL?=
 =?us-ascii?Q?OZNWnYYAZr1rRkVntJhQaUVusdEw1MRMVMMFYx2zbaaTqSgspSBLfSdUW+or?=
 =?us-ascii?Q?XZHrzSJPRB83FN5PBIYsw8eVT77+K4xj+uHonkEuDcqeAZgMMytiJWrK2AnS?=
 =?us-ascii?Q?Z9MrsvwEE5fIjk5XRiOfMPrgngkSwbmosseumcz/0Ykm1cp+eGekOqZcUJk4?=
 =?us-ascii?Q?iCg5sTFJAN+ucDZNzm2SZKa6qdZZBt5AK/xBvOTZrcow3+g/ncUE9iUsflCu?=
 =?us-ascii?Q?PW5vjtCtqGYxelHtWcFqw9QyAot5LAIktK0D5fad6NMsrh+rCXGFXXzBNpMi?=
 =?us-ascii?Q?AppspGQZTBWyr7wNHQfwj+bSO6qCXHYHGpkPlurgrVGHHlYJF3WYDAd2MDfa?=
 =?us-ascii?Q?uGdW8IWBZtg4PKw1PyUawhjRGGPeu2dVj5VSS573I+zbSJUoYqw+NZJ2G9ro?=
 =?us-ascii?Q?MfQlayuGC/H8PhsnqmfZ4236x8fHVpAgcgTqBFGeWnNQc5ufNk1p1TrReAZ3?=
 =?us-ascii?Q?DGr4uP99TC+WJMBroL6B/wrP9BXoiRzGSB/C9m3Nq9Wk7E0m+Y+gwCv4AbS1?=
 =?us-ascii?Q?53bpnmwnM1wSl1Uli9kUs1KEfr1oGxsoUUkUvXs3WFDOvb2MxRYAmNhcNh6J?=
 =?us-ascii?Q?zx0Vlc03xikVSjzXWvBctECvcpzOyHw5Ilk0Wr0xML79Uu3SQOQN6rNqXQGC?=
 =?us-ascii?Q?qPLm13J1YCo7qmbCANjvwXy1lojp0jDzuNh93YqWJkzIY0XrY41WvEQEgE0o?=
 =?us-ascii?Q?k5AYaT1shvQ0PNfbKMj+rJ5DSXNCxchwF8gdoftmrGPRVTAaNSXeCLkTSg9s?=
 =?us-ascii?Q?YTgbQqU436K8GkYbmfGaIFVGhLinNaw0WMUEQbLS3QicWsnvj/Mx1q+jWzoN?=
 =?us-ascii?Q?ZA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82ab2f76-6ce0-4ce3-4baf-08dcd92460d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2024 03:29:04.5984 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VItH2UjcU8RmIP1Cn2xYKvV71fWxgg9jzTIMKzjQUAN9AcZ+vyfp/9TbqOBBIA82PTgXqGjbYNu6FQqJl978Uy8TWhB5rvTEaMcouZqk05Z4Jmgk6Syk6sJNQVcCGBJx
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7722
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726802953; x=1758338953;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OZ0KGCAGtI3uDIF7NJeB8okp3k7JbAEx7WRtoC9LcXA=;
 b=Uc9jPl/7tM5lXVhw+jMv4Hmzvjhhb3cqR8Ej4MrzofXR4rYsIZ7wmTsK
 bmT1S90a3Swjnpqrlu+u1qTgvrEoqNKXcKI5H66cLfVtcQuZ8WH9zFgV6
 R/RjM9VD3dpPJN1LVh6utd2hiwRSd4whJhRAXPBOZLHJruMpDg8u90uHF
 LPpRQt+PvPNfS0C34OLpsg/bpe3tkiMs/vCUgKOLVzGvspL+BOmGmco85
 v4TrZNj8fK0yz11YcyLtC8G7bXHgZrAoK6O/PgiaZ0jA6IWkj09UKQgwq
 4uaiYDYjUNzLSNEetMxeqsmrbXIikEJtK9LcPpmq+ZfjUUVsqcvzc2Kai
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Uc9jPl/7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: disallow
 DPLL_PIN_STATE_SELECTABLE for dpll output pins
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
rkadiusz Kubalewski
> Sent: Thursday, September 12, 2024 2:24 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Paul Menzel <pm=
enzel@molgen.mpg.de>; Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com=
>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: disallow DPLL_PIN_STAT=
E_SELECTABLE for dpll output pins
>
> Currently the user may request DPLL_PIN_STATE_SELECTABLE for an output pi=
n, and this would actually set the DISCONNECTED state instead.
>
> It doesn't make any sense. SELECTABLE is valid only in case of input pins=
 (on AUTOMATIC type dpll), where dpll itself would select best valid input.
> For the output pin only CONNECTED/DISCONNECTED are expected.
>
> Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
> v2:
> - use more explicit commit title
> - add empty line between commit message paragraphs
> ---
>  drivers/net/ethernet/intel/ice/ice_dpll.c | 2 ++
>  1 file changed, 2 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)
=09

