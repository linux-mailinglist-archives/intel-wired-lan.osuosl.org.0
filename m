Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B703EB22D88
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 18:29:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6679883DEE;
	Tue, 12 Aug 2025 16:29:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RJT7N3fn-9eS; Tue, 12 Aug 2025 16:29:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE97A83F88
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755016169;
	bh=vYtkZlEJK43fN6eRwChASxkDDX5aiz/tKoUcxVrW6CU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=x6nzmvLsrMya5RQvIqGDeBDjcZgwKdJ9k4qLTboaTs2DvKZsnIIPP2Clbe7wXdaue
	 I+Sh7fGsk2kkeNCXuXNMFgrxRFZLop9oBYotkTvBS2Jdh/Cxl5rZphvsQJE7+i1waM
	 +67Spf9hwf6pYd7v2h014BQ2CaHrAVxVmuceFbePojA7r47dHGeUhdBz0UuLCRYooe
	 qtNhwWKcAK2CFgyPx50cvWMf9OtyLc13mSuD5brJfrDwhD5ocBr/T1n8qcLNhUH9Sw
	 MNrVNaBwTfNYnYNw4YJd93hsmCyKQoqGeF3+7sOu2ykotqz0SIpPSre7s0TlU5HCoM
	 yZzcK39vahOKw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BE97A83F88;
	Tue, 12 Aug 2025 16:29:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 36CF11C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:29:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 33C004019E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:29:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MUs8Sd116SD2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 16:29:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3CB8C40054
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3CB8C40054
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3CB8C40054
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:29:27 +0000 (UTC)
X-CSE-ConnectionGUID: JbkM/vRcQHKa0y0TzMt24g==
X-CSE-MsgGUID: TELAlgYRRjeNVjmobhrxVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="57011629"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="57011629"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 09:29:26 -0700
X-CSE-ConnectionGUID: jZEjLnvPSWOzcN27uq7cKQ==
X-CSE-MsgGUID: uKdu1ENsTaehCL2ux6xvIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="170440958"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 09:29:26 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 12 Aug 2025 09:29:25 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 12 Aug 2025 09:29:25 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.54)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 12 Aug 2025 09:29:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OQ1Drctwezi9snA2eNKODi8vNd7D/7joet6yUmBoIlutgZyF7VjVq0NCPRy8hRFM4To7OFNaILjauDXI82VQKeH8V2kVsl2Tc6BZJAlxPltg10ycJZ3KSqWtD4ueMn8JZ9dxznBwshLZl0hY97zQaJi/ioShJJTTHVq8/eTLzVYRtIDl9vnVGxHsOSLQCasoHMsXf69/4IvJIJFveA6IFu9jY/hlDszm4HP0N1Zr3TVGrCcr88CfCZd9TWhbeSP/tU8ny/hPEqFA0OWt/aJyOPMFZ4CMnsUb2u1l3cJHjn9TQYYn9BVxo270sk6K/8vxOmvnInyDQNLafKSspxP8Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vYtkZlEJK43fN6eRwChASxkDDX5aiz/tKoUcxVrW6CU=;
 b=NPRNzNQmZJOI79M2ZIW2A4XJL4YpFwErG9iN6uuPj0kiD/V+2YRi/ZTGevHLweEXdCpVoy1E8R/yy6RTM1cvfZ8pJdln6ImtLSO4n15g1blOJRIpOjRjOE9/tVSo2PkpsGDtRfHnlkVvng+01emWRZScd/8E/cQ2+xzkUIVnwB+9RFv82zfOhVcq7LliWnI96Q3wpU8ahdB0xcQgVFFGOCoELUAca3vU1O1F0jKMkxVzorvdENO81jnt3Xuz5HYdFfb0S+S95s/NPyd9+XVKkCma6Xjig4jw8P+boh7bCfihT7a+jODI5HFjoq2UN5ByFs1IiiRf2TXnmCE1lTDx2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::31) by DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.13; Tue, 12 Aug
 2025 16:29:21 +0000
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::29e3:35cb:6d5a:4d7b]) by DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::29e3:35cb:6d5a:4d7b%3]) with mapi id 15.20.9031.012; Tue, 12 Aug 2025
 16:29:21 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH 07/12] ice: split RSS stuff out of
 ice_virtchnl.c - p2
Thread-Index: AQHcC59Tr77obdbM+USQ39tQGHi5YrRfNR4A
Date: Tue, 12 Aug 2025 16:29:21 +0000
Message-ID: <DS4PPF7551E6552C3F6DF211BC3FC5282F8E52BA@DS4PPF7551E6552.namprd11.prod.outlook.com>
References: <20250812132910.99626-1-przemyslaw.kitszel@intel.com>
 <20250812132910.99626-8-przemyslaw.kitszel@intel.com>
In-Reply-To: <20250812132910.99626-8-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF7551E6552:EE_|DM4PR11MB6117:EE_
x-ms-office365-filtering-correlation-id: 1dd68fe0-fa9f-446b-fe53-08ddd9bd6475
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?RdZtwxm0im1baj9Obb8CDZPXgLpm8/x7wYM63XjivccJfghpJMGt58ctBc9S?=
 =?us-ascii?Q?BMkVuPE6cQnmcLm3TrMoZF8AnKKlAHRRShwyDOhUisqXcsu2Umf9x9wVOmWt?=
 =?us-ascii?Q?xGRkr5jqBQ9arW+5Y0Y05nfim2M/MiosMc4bCxdYH3M0RGFJocgMxbP7VIa0?=
 =?us-ascii?Q?HBkwiZdA8gKV1pK6s/6yTHQcRAV4zT16WNn0COkAOGtSweKcSmgju3gg6a6j?=
 =?us-ascii?Q?Z6r3IZhMFiLPMit4Xbs1nQm9eUaHuzQPUh6VokL+11T0YHSg123puqXBeJBR?=
 =?us-ascii?Q?fCd1OpXU6Jo5Joqgd7pAJ01YsZhEXOFjJnwIzXLIW0mHfPQDpaXa4HBi9Vma?=
 =?us-ascii?Q?aQLY8eE3PY1Rzw/dDDMdGmlgX3DmSxBzyzV+n4Z9KF0AJ8De0SWlGusfcE/F?=
 =?us-ascii?Q?85mJddlFzuyzYBlfmgzeebaj1EuR486EIv/LhcVYMmIKXWBMhA9Xu5vl8dTE?=
 =?us-ascii?Q?ZaoMyjIiKU6hfy1wpHiPVj3G6NI6rbfyfHp4F1IPG1h+6v2m/TA/WuWnOh6j?=
 =?us-ascii?Q?cgOZEIJf3mCueZ/aDoAv+iAJo3Ko0z+6hs51KKbkSIURXmVISTmzGi9WXZtt?=
 =?us-ascii?Q?T+C+Y6bjxwjrDxYN2iq3fNxAyJh/lSsIu9F1Q5UWMjGX64RxqUubqW4mdwEt?=
 =?us-ascii?Q?kgsd7R2KDVsieWnwT0pGK6RPCeuZHG/lchKaLiB6j94OB3tbCsUc7Z0HWXjC?=
 =?us-ascii?Q?ESamldQs/WqSwp2W1vgQx4ALch+cKmxod7B1yR1bZT+CIcCVYivTc3vru/Th?=
 =?us-ascii?Q?57uJCO5AXWLh+msLhs4Vcwx3ALu4cfKHKsJRhv5QOprSeKqHZGzRn0TNLnSH?=
 =?us-ascii?Q?o+Y+x8ut74Clz7rOLBQUpptuSAKqGhsi8r8RQumlqfwvqB9tRDgpHHrAde/f?=
 =?us-ascii?Q?Xg8+TL6kQc2+unmcrT3u3BDl6n1L9KZauKacV6F1rY6EZXZJwVxTJBunuThz?=
 =?us-ascii?Q?57x+qewWGflcH2M/KcEAsgOuh5Se9tvPeko2PgqysMrdjrYpijWEOokGVjFY?=
 =?us-ascii?Q?U4PhUhezCmaHw0hgeWcDKCLc7F/8K469VqYRkerVH0fcAupbck3HOxDYyR8/?=
 =?us-ascii?Q?Ae6lNM9OUGN/q7YGuVVTk+z8HGuMrcKDwnRmXpf1B59vM80XwqGeXfKzuUFf?=
 =?us-ascii?Q?WbegkL57FovkNn273HK8+PlYzR4XxykvejM1uienHsDOqTxiO43nlm6OdB6k?=
 =?us-ascii?Q?5vDW0c4c5ByxUfrKSwo/orBHcXT5HvLkJkscLCh7/mnI43YY1Tk9FPKngRpn?=
 =?us-ascii?Q?l5MjwTWnjDIC7R9TaIq9eDNtq3W3V6GO4hodMah7EjjA0+7VNILNnXyOtq/b?=
 =?us-ascii?Q?m/iLWAiJnAIxO4aW4A8g3qNgmqyuliPd3oojCfhfAj6uKyyiSoIG6qGiURtN?=
 =?us-ascii?Q?A5EoX9B5xFT3LFscekZK7x9m31PsllfA7gYRHD2w7yQWjGgVmagKD0kb2DvZ?=
 =?us-ascii?Q?mf7GI9XZoyZ9J1glHT3sydaIkBQubSLsWPP6ZSuO6f1yaI9aHzdDCoTxGnjU?=
 =?us-ascii?Q?kNOVSKaOlQkdfz0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF7551E6552.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GB2J5yo3CWEGNmgXbYJJsxxE5zn34wvbtiV7ldeWbMvkKKcezlR7jzBeU09K?=
 =?us-ascii?Q?AB0uZQmmyRC6O2nYbJiqG6OHZtIzO01oT9gz0fvgOnrf33mOu3TrlsmJCVZn?=
 =?us-ascii?Q?gXtA3z/0ARvzg/rhyojIT/UaWSzGG0LFGOA/GR19rR1oY+0GodSBucnoAlVc?=
 =?us-ascii?Q?8idhUocl2yvuRLhixaXd9FIYLkHLKaa4V7T7mpKjHX9U+OsPeAOwa9QZN9D1?=
 =?us-ascii?Q?TFxdIbGYxkCyYzDsMnFn4HWl8ibDWXpW7/wPHQu2pkkFRybh3CZ+ojmAnAJf?=
 =?us-ascii?Q?mRybo403bdRW5FmYKEjB3PLDMI+jDilEPIX/nEZWEC/gX8nygK8jW1xC9O7u?=
 =?us-ascii?Q?J2kmEWNA7S66RclnU5XbasSrg3v6SDgH59Da8XrWD7vs/V6iAVunAzNhlLLU?=
 =?us-ascii?Q?RmNObZH4FajHRjwRoW7njqh5bkIyJC47N1pyjYxOEFecFSJ0CmN1Ls3hsUdZ?=
 =?us-ascii?Q?xcgB06DTuvov1PgqEYzh/cODgrS2AEBj9u2zTX7gUDTd/kgXrItoAJpBeMjH?=
 =?us-ascii?Q?/2qldYkYYGzcwXaRynRNgapdHWgoMyUzNm9GuHiheD5v1OW2ov7mp4DA+BqH?=
 =?us-ascii?Q?qArPXz2urRkN98JsGhkNQ8PPZ1YR/B1L9us6R2y5jKEt+deVqtCu19VEmEdi?=
 =?us-ascii?Q?GiEch+0FoIRXfRhQo5iRKCQQqokdcPnwIIVyu+UUKHPM68huGGkkk2jDh/cY?=
 =?us-ascii?Q?+qR53hueVjX6aN0C4f3OAoS4iSem2ByDixV6p8i7BR2YLUYaflvhtzBkyFQO?=
 =?us-ascii?Q?YCUxUFgQ3t5oBdC6oRj1bMeqAd/1ulo5ObesFSRgljvIsVSrBj++Kz18kZ6a?=
 =?us-ascii?Q?P5/r4/5ha24BIKZVvji5SAJaYYi7B0G9Duhpx+BrosPA0q6Th/aSa14B9O+B?=
 =?us-ascii?Q?dNJHwsQFIdTwk0dqnXYTmOsR61cOeGRW/WLXJBW0YgU02Ja0sqpK3v29DGTR?=
 =?us-ascii?Q?DvNsYrloVBq2kot813YSrKIAYfPkCoatDBHa7pJBirFGk7o4yuDVDPE489PL?=
 =?us-ascii?Q?QJlHrTOGNNn0A7cRfprfn7DXe5GqDoB9FgmJUE+cRVTbbxoWCUoc6ou+XUne?=
 =?us-ascii?Q?oWwFw7qog5cFogoOqaWmTPX6v3PqaTt8Pc63Sqe3J8hht5woB/Ynp3/6lABo?=
 =?us-ascii?Q?lni0FhbHf3IqXYLHZDLOSop/FSj8cJQIbttyRhQzM1MvlWk8aeM8Ge9uvZpd?=
 =?us-ascii?Q?F426DodHBEZCgJHaAor2tUbmczo55Sg68BO05SUduIUpcxuZr3YrF/yPJGFE?=
 =?us-ascii?Q?DP4HaHAb2XJrkuXxM1z4ClcWdY1if+G46MIUpZU/i7qzfc8j1aZ0oVl5j6Sz?=
 =?us-ascii?Q?5mrObNcTGvxm/GTPsjKMZdJg0+ikStjwejc0r3dY8UONgbgbmo009Zyv0HZV?=
 =?us-ascii?Q?e+H9XH41Qp21RAF/lK+BP6q264/v5w6tnxrKVyp9DEOGlTOmakabAS1EK3gy?=
 =?us-ascii?Q?60qvxzJeB1hW0ufV6pJVtjMfbN5R7x1sZBZB4+6nkqjijXMHqQAYIP8mmufk?=
 =?us-ascii?Q?KTWmYLd9Hl/zPBf49bJfEA8VRfBghfZIlrfLNcpy+ltfXmwkiJtRCnvGiTdY?=
 =?us-ascii?Q?h+XKO7+KGbGjOs1hteOrlyoomb+YdRx4yqD4iKJeVRqTTaWvjaqPOlxMuLQi?=
 =?us-ascii?Q?WQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF7551E6552.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1dd68fe0-fa9f-446b-fe53-08ddd9bd6475
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2025 16:29:21.3531 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CxOp+f8aYeaVEonvzfQFPaP8x2TemHwVA5c6wMwftVUO8DyUYQvgF4iE6+EEfZ58p36SDKIohDEOE5PhU13eLsNZd97Xq6qIrrcaLaLPZlM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6117
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755016167; x=1786552167;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LrHXXT3e56FgfMYgGa6PdZXOJ3vCWZCEoDtDVHcW3n8=;
 b=E0Ik2fSLyCV447A6KtPVbNpu28UY827s8FnrfZ2UCGpOsdpxoVFHl0/c
 LUl6HwN89/UAGaIGauFzHNuTMMN0e+J2JkvKDdZhzIHfukoOpomuVEPW5
 nfE8d7Wlq4pUBPQQol9mWJ7AlJjHxD7PcroekM0g0Kbfsc8FuZHldS+9R
 NlF73O5BHRC8NvgZ/XeRh8cyATmCOo69+tvKy3m3XxG0/GLaAwlm9H7Gu
 mGBC3yNYGL3AX5HOQqrweuOWX0PNfMr8ku0w+z7Du6DtOtPDPsDHkWzVg
 WfGG+rF/o3DfmPOSS5VBMJS8/lfkvPntntM5pjX9Gv+da9HFkLBikPZrD
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=E0Ik2fSL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 07/12] ice: split RSS stuff out of
 ice_virtchnl.c - p2
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Przemek Kitszel
> Sent: Tuesday, August 12, 2025 3:29 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH 07/12] ice: split RSS stuff out of
> ice_virtchnl.c - p2
>=20
> Add copy of ice_virtchnl.c under the original name/location.
> Now both ice_virtchnl.c and ice_virtchnl_rss.c have the same content,
> and only the former of the two in use.
>=20
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |    2 +-
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c | 3647
> +++++++++++++++++
>  2 files changed, 3648 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_virtchnl.c
>=20

...

> --
> 2.39.3

