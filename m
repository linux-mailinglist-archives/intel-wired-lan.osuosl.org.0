Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A2907A1102F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jan 2025 19:33:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C186860BD2;
	Tue, 14 Jan 2025 18:33:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ksrog2KTTqc8; Tue, 14 Jan 2025 18:33:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B9C0360ECF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736879583;
	bh=YAVBEOnDQmuZGSH07leJ9xVW4cEOS3ghvy9hISrc5bU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BDLFD6YGzvSKx4JwKcSqRErc3/Ci3k5KVztJ69ykO9AFxMILTryV8bIXmjSoDsHju
	 6aN/VzgVY/TGrE9gLmH6GcVWFfzTHyQGf3phpufLEkygTr9yvwKJQirRqgLWQzHJGm
	 QxSeoyj7MoXQH/XlEq9scjArq7KZPUuaxaLnjp+EFWQBK4Uwt4e/wP3hIa7AbGhBtp
	 mc/nragV+Mbz5c7XlOkn8Mm2R02yDGQoV2a6LrNk+bcbgKuwk4XitvH93Du7VfOS25
	 FsLHWWTj3fN0JyIgm5YtZXOiSfyK5q1qMW2jqHs1lVk6bKBVqjF+Qc+vsQsdO3/rv2
	 3GIXmMBlogAow==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B9C0360ECF;
	Tue, 14 Jan 2025 18:33:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id F34FAB89
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 18:33:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E069B40102
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 18:33:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UBqlYj_Zw0jW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jan 2025 18:33:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D1FE84051B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D1FE84051B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D1FE84051B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 18:33:00 +0000 (UTC)
X-CSE-ConnectionGUID: oEOMw5b2TW+2fZ15RqEjGg==
X-CSE-MsgGUID: bdmPX/FCSfSEsQM88BS27Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11315"; a="36403451"
X-IronPort-AV: E=Sophos;i="6.12,315,1728975600"; d="scan'208";a="36403451"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 10:32:59 -0800
X-CSE-ConnectionGUID: fze0pu+6T2WppK++VUyzug==
X-CSE-MsgGUID: Z+jvMSjWRiOiwjp1giTodg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,315,1728975600"; d="scan'208";a="105409551"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jan 2025 10:32:58 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 14 Jan 2025 10:32:56 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 14 Jan 2025 10:32:56 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 14 Jan 2025 10:32:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=onBzjmh560NAij+7YXp5Xr7OPeWrpLN4RqJhRHbxuivNzu1ribq62FARNfRIK5qGBHADIC1nmscuzRdXMV8lcP5pBgCvr3Sw58fILR9WIMMKENcJYIux13BfeI5MrqDfFwRdSGFGaLJaEghsG0TS43KoY+VOxH9PeOXxPGuP910SL3E6MzT9jajNhFte79iaugveZm9Ti7SaKSEqVArJLiOeeYnVCZ+hXvAsnl5jWcC1qIuF3JC2DBJ+DHzY2Hv9NaVVZQQ9InwuzC8e8P0UB32Jk0/eBEmtxlLWEHQWzoq4jj2WHHDu1EXEqvoozUQlmhKhr7scX2mjVtkHkBdM0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YAVBEOnDQmuZGSH07leJ9xVW4cEOS3ghvy9hISrc5bU=;
 b=lysJP9tPZDnK4dlTTJ+AcCmLAjxDZdhYcRqLgcSmUpQJVoqnS8sC2kcmVvtseEVOpUf1iqmO4msMrsIESl3lAMqZL3yqcaqI+EE+t9je3vewBeflDxYOCR8UczJaQ2qOwN1dWrlyPVOO8vH9+JPoLaOgOl8O9u9ccvWRKsJJZfgnZvK7Bz7Hfco7oT2DO3AXdXBRXqI+GCkt80LyKDrfsWHHGQDeowAkBE9jGj070Oq/HoziIHX19hOGhw/QZRNlhhKJ15Rc+0ayHuRe9/fI15kxyFAVyVEFjCAvJlFapOLlpKq7UPsBkyw6bB3q2jWJyPdmeSJ5yqYa8WBsrlF28w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by DS0PR11MB7786.namprd11.prod.outlook.com (2603:10b6:8:f2::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8335.18; Tue, 14 Jan 2025 18:32:54 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%4]) with mapi id 15.20.8335.017; Tue, 14 Jan 2025
 18:32:54 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>, Marcin Szycik
 <marcin.szycik@linux.intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: Fix switchdev slow-path
 in LAG
Thread-Index: AQHbXUkplVyeCToWbE+fSbzolKMTHLMUbISAgAI+ODA=
Date: Tue, 14 Jan 2025 18:32:54 +0000
Message-ID: <SJ0PR11MB5865BE350ED754A603320D1E8F182@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20250102190751.7691-2-marcin.szycik@linux.intel.com>
 <PH0PR11MB50138B635F2E5CEB7075325D961F2@PH0PR11MB5013.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB50138B635F2E5CEB7075325D961F2@PH0PR11MB5013.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|DS0PR11MB7786:EE_
x-ms-office365-filtering-correlation-id: 1484466e-7a0f-438f-6e90-08dd34c9dc04
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?EaNMgr0jnB14LKyFpt3jUNGOirItZV8RUCjgyBPXSefBwRMEGBSeLTSIEppj?=
 =?us-ascii?Q?kWbFtPRwRik0UddiUKZvQpmzkVwrKwByeDLCbWYYzq2RlCPNcyzMQD0Vezv8?=
 =?us-ascii?Q?bgOvHMUICkBM2R6Gc8tqu2AsnGL/xysBlKnoplKOusIo7vPwqMoYocltfnRy?=
 =?us-ascii?Q?O34+PFmmaqomwp56uR5cLQlKckHNzaGgTPTeCuYaGEx3i5HYH6EJC+6CuRat?=
 =?us-ascii?Q?X/GUWsTiJ09O3BQqKBl2rcyQlz876BIOslIpuat38MljWf3lmZe1mJWdiR2x?=
 =?us-ascii?Q?HknSlvi0kxFtnr6wvXMNP86IgZhS/49ZZuY3dSWGLViQr/ps6dSIkItlJvqp?=
 =?us-ascii?Q?RVEjOxInvgREzyqA11uyhTUQSFbjvXBVHaLHz1Ic1n8gQj2Yuwcn0MqKutEJ?=
 =?us-ascii?Q?MnVFFnVCAfaaomp0qb/SN0XfWsfSfx/vDnBPCMRWQq/hfGPg+SZEZjVJ4qon?=
 =?us-ascii?Q?8hUMfhrW4TI7RBpSHL/z7i0m+mebg7zZUOAebruKgt/iDH+kI+0SA1Nwh1/1?=
 =?us-ascii?Q?ABCucY6aSpxZm+db7C7yfmewMomAQA4L8D14Z8rnKliw2sUkL9FhFG2jdtNu?=
 =?us-ascii?Q?PTFY3hvYmH14A4SxpFRu7cqNN7/8tmzEWohidePJc3PYiHf+05D1czs8EeDv?=
 =?us-ascii?Q?71V4jJAt7kXT1eXi8yXxvoGJTcAM1UOm+nEdmHgr3Q2ayUqpFw5U6yMe6bHz?=
 =?us-ascii?Q?QFCkojrjcgU8Uv+w6Q7gLOXOpJQrieTKYsuqD41zneAtybJEa1Hyp1PZgEuk?=
 =?us-ascii?Q?wEKKhssVGMnRracdoqLtNKRYP6llstaiAOXBx8IpDpmb7h0OvuCKoCJKlPZA?=
 =?us-ascii?Q?TP1/AryUpcqX3PjlGMVqZQjTGmaW4v2HOk5EKJxRkGegj00cOr3XC/DwO9Ie?=
 =?us-ascii?Q?Zh2q5gCHFMBwaN86kz2fGqk/TSa77gdiDdMr0CNrkjN35Mfr2PhKps13dORZ?=
 =?us-ascii?Q?AW+vKwImHRcvbkblGAVZONgz9e43D72TjR5xTxEpJder6kPW9clCIqd3LCA1?=
 =?us-ascii?Q?Qi6X1atrADUsqQ6fTOfExQUwdk9IbgSFWHhtAUKjAFQC+vMqglnsx+kYwwaG?=
 =?us-ascii?Q?dzwok5UeWQcIpxcDB5BhUT+pSmczEO0l/Zf2vzkruzZW4AK8YBMyueYPb4pK?=
 =?us-ascii?Q?NfG25JiQ0N9QdaaHkuJ18xMsW9XtXdCjvI+eC+W9FLeINI4zrus9BZQNYeSs?=
 =?us-ascii?Q?nHTQVrZLzjZE4K1YeQMUT6C5xaopMuJKXYvAXclkLPV5/1MrUD496kPAhBgR?=
 =?us-ascii?Q?B2bVFuxEFInZ5SNTmwzRJqUiKl0M0x5mzXTynEtzq8imjwKZQB6lfK9HBtxG?=
 =?us-ascii?Q?1vGPkwXrNoz2sOfTAyh7SkhyN8jNLHpE9/98nUEeiY9ARlkikuFmqBMoclel?=
 =?us-ascii?Q?gEXSSd+ShcJymSWzrqX5T8Q6OghwDYtW0STqOHZqUb7R4qAGgSvvreniII77?=
 =?us-ascii?Q?PyIVI5OpGDTXxWhYIR1o3ldjfxns1s4I?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dd8HBJVAcIPDYvqQntiK2Fqs2FfNY/v8Y7UP3L/gWqBD+lYIUYQRxsx+BG6j?=
 =?us-ascii?Q?6lcywG0d2bbysyzkjQXhmoxeQj526lwLfhiXmbZUPKIptrXWto7FXD86+FPS?=
 =?us-ascii?Q?NtvsAnoNCGgnEKoKi1ecVuyK9hjDStFJeYR7k97KinNh3uycqqf3eOLiXKYh?=
 =?us-ascii?Q?NvVRLgueg45xb0qbZ2EI1TeuuDoDXFCtkRpu8Cwy4xd3vpWZr0WhVfeEMFl7?=
 =?us-ascii?Q?EolDMAxn2BoYbH8qOu/VFVb7/cVpTwXy8mRa51YzGYNDl78+KchrsT9FiSnL?=
 =?us-ascii?Q?6VVfSa2ERGY89MN2DhGHQ0G/N/3sDImP62ALORACJYcmQh/H5l+Z90YFvIQF?=
 =?us-ascii?Q?Qpxs4hzZ3yIvUul0TM8uoxto25FXtmNPci2f4hclzVL3+oIjzJSteNgWUnk+?=
 =?us-ascii?Q?pIH+s8ZcNRLGWk4Jjk4P5FxQHXzuU2mKfGgPHJebxHtkSoiU0G2bn5Dl+uby?=
 =?us-ascii?Q?uqA92zi3zLRKMeNVIuU6fkK+vuZUJnB8nmmLqIHc2wUxfUZApxuyjY6LKpD9?=
 =?us-ascii?Q?Sl52Nmvfjk5P1K0OhKRZKFrbwkMEjVWMIOYYCWUc/3tn7TEBliViiHlRZZXS?=
 =?us-ascii?Q?MsgiusKA2m5aKFHdNImFXyEzZxUVw3ezbp4C6UxT85+aQF2TY8ojsBMf4qpX?=
 =?us-ascii?Q?c3gX/n0bxpyJuat+LgxJA5ZlpTvbDsGNjYJYD8W7BQlRyVOQ/X+NAjCggK3e?=
 =?us-ascii?Q?QOqnAGjJdcKPDYZdghCnzpEPKSVw8xdG7tpfr6FQ1bo1DwNTbLWQNX0kXBK8?=
 =?us-ascii?Q?dsB9DsXqTvAW/DafPNnn24vBHgXGfE0VHjPrZg5zFelcN2zehVrWIIdiRZ9F?=
 =?us-ascii?Q?wdq6in1albT7GZOUFkoF7F8KLz+NeZG6/FFt+2oK9sQfE/DrttBmP8NoCJDN?=
 =?us-ascii?Q?mWSNnV/XxPjAyojk9uDUERa4WJAdZ+gpIwyCe9Sz6sDO2iWL0xaZhnMRmkXv?=
 =?us-ascii?Q?z1/rtRDKYaENQYGKGbIjTmnan4tenaMbodH5eaUZ0dqGbQ0o+2X1RfNrDIco?=
 =?us-ascii?Q?WlbeVOrd/10ubOyH1/cLZBgqXTtyWRIYiFxtmSZQeq5ZTaNKBaTz7H2o+rxS?=
 =?us-ascii?Q?6Iovc0U4rSXL+258Tsp3iEtXfTc468w3n/19RT9FpBxTiVqXCg5MZ++nRqsN?=
 =?us-ascii?Q?m7nHI6msBnvj2sk/op9BkRMRTtFTOyLUKlIBrsI1xwDuQMYhEXvC3VXI4eGC?=
 =?us-ascii?Q?kPTMKxbE+6HojqSkJQhCPyzrJNeIbFvc6SNtvt00n5TXiovYriHNALYVON/3?=
 =?us-ascii?Q?AOKx3dh4H4R9ZLl3smkB9LU2EVmQJe+drsMysOWgZrhtE7C88zsUmtGilZUM?=
 =?us-ascii?Q?yoE/GfyPlQwMlVQdpJWT/u599yUBanUKPHXDsVCOeQ4IkBgtUwEn4Pk6ob0P?=
 =?us-ascii?Q?l9UXee42BeK1wik35pZYByhBlNghV7nfJuFiPZr73UbxpyidLiHM0GX2Xpww?=
 =?us-ascii?Q?cSC6jouYWEcvv9+r7zSAte2/2QEuK6aT6nZRYKooiU6rp0bXT8bseNN8zQAt?=
 =?us-ascii?Q?YsQM8uMoYX9H6HKePItBSDS6H2qHX5nFWFDGIDT3dzlMrb6B8QLyT8GzYJSv?=
 =?us-ascii?Q?k+QF3pzStE5VCbjG72n9TV1r+g3W7ibekVojiFd/sFfsQqcHKyqajPSAH/4R?=
 =?us-ascii?Q?2g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1484466e-7a0f-438f-6e90-08dd34c9dc04
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2025 18:32:54.0515 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0gHC6MG5BU+cD3+u+kDF4npLPbCzdTTtBUmK7Bz3w3zY1Mh8eC6+j5OcfkpDunaQJl/D3HPcA6eLEppVT8hy2iS2b78r62yncB5tSdX90sM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7786
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736879581; x=1768415581;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xOLrYDbU/kkZMjAA7XGE16z5CJ8XCgrdDm6gFGetnu8=;
 b=B3Xxh1DWfUKK049981wY6H+4iWAZm6HsrOi3C06M2+EbKbgZScxx1Zv4
 H6FSFft23dbLEmiuBB4PSDGzdB7hF2NG47Vbo3TXwBe1t4ymiwyqitVzs
 wtOfv3WlHiMFNDIIqblAriUbORKZoLK+ERWGBHNLvVfZjRsFcu3FDIOZE
 YTFF8OmsGJWXAoM+ikPF/4OgWF6Jaiddle9dZAU+V21HKrsxkqHXc4UTj
 2ZT8yg57Dhog9qHgT4XepM9U50uP1PK7syOzAEZIfHBTi7AgelWImY9H9
 pe7MtzGr9Iic7hJ2JOK0+P3JG13RwmY/bPceGZnbGAp2ZgexeoiXtxHU1
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=B3Xxh1DW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Fix switchdev slow-path
 in LAG
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
> Buvaneswaran, Sujai
> Sent: Monday, January 13, 2025 9:17 AM
> To: Marcin Szycik <marcin.szycik@linux.intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Fix switchdev slow-pa=
th in LAG
>=20
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Marcin Szycik
> > Sent: Friday, January 3, 2025 12:38 AM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: netdev@vger.kernel.org; Marcin Szycik
> > <marcin.szycik@linux.intel.com>; Michal Swiatkowski
> > <michal.swiatkowski@linux.intel.com>
> > Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Fix switchdev
> > slow-path in LAG
> >
> > Ever since removing switchdev control VSI and using PF for port
> > representor Tx/Rx, switchdev slow-path has been working improperly
> > after failover in SR- IOV LAG. LAG assumes that the first uplink to be
> > added to the aggregate will own VFs and have switchdev configured.
> > After failing-over to the other uplink, representors are still
> > configured to Tx through the uplink they are set up on, which fails bec=
ause that
> uplink is now down.
> >
> > On failover, update all PRs on primary uplink to use the currently
> > active uplink for Tx. Call netif_keep_dst(), as the secondary uplink
> > might not be in switchdev mode. Also make sure to call
> > ice_eswitch_set_target_vsi() if uplink is in LAG.
> >
> > On the Rx path, representors are already working properly, because
> > default Tx from VFs is set to PF owning the eswitch. After failover
> > the same PF is receiving traffic from VFs, even though link is down.
> >
> > Fixes: defd52455aee ("ice: do Tx through PF netdev in slow-path")
> > Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_lag.c  | 27
> > +++++++++++++++++++++++ drivers/net/ethernet/intel/ice/ice_txrx.c |  4
> > +++-
> >  2 files changed, 30 insertions(+), 1 deletion(-)
> >


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


