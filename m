Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CD8B18B11
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Aug 2025 09:34:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 618F3607E4;
	Sat,  2 Aug 2025 07:34:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1ugORrWv0ADS; Sat,  2 Aug 2025 07:34:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4E09607C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754120074;
	bh=rvbemeFOJj14W0KmsxunBQv80KCYLmthj1ZWuJEkaMY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GdoaFmcV+tsWXMbpyIgzjfe7Esc9AoXOfYPioGp8mpiC7tQIagnX9djujF502VA5t
	 jv2S8hdA9np3Lf02cGRft33YoNgM9MvQepNG27dLE0M789zqFzL6NMaXcNPbNJqfX3
	 Z9qsCaWh628gORRtAE+Wzt6kkJmZpQoWZheMQt+z0uHew7PoLHV1sxihwlHUu8MbKc
	 RQNU+YkpSoUmNA7HoU/oa2Q44Xe8AuNsLlym2D2QeSnT0y+gB3IRW6a8xM9x6gg2yI
	 cgxAakFVTha9w4uliO0eKt8h7/O1qflKW6hsOJg5s3Y5o5w874o936a1xukkgf5DIp
	 tAEOlYNEkvfbg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4E09607C5;
	Sat,  2 Aug 2025 07:34:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1A433160
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 07:34:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 00FD3607C1
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 07:34:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uEjaXzcgrRqv for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Aug 2025 07:34:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6A9556077B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A9556077B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6A9556077B
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 07:34:32 +0000 (UTC)
X-CSE-ConnectionGUID: r0DeWrNMTsmXXfplzVUnzg==
X-CSE-MsgGUID: g7hhY3f8SFeDDmi8SZNv0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="67153058"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="67153058"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2025 00:34:32 -0700
X-CSE-ConnectionGUID: zEtgz0QoT/2E4dPKvKAx+g==
X-CSE-MsgGUID: 6Lj4VI7qQTSG7Y+OpOVhVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="168209325"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2025 00:34:32 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sat, 2 Aug 2025 00:34:31 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Sat, 2 Aug 2025 00:34:31 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.48) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sat, 2 Aug 2025 00:34:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VYahRMUT5Av0zEHabF47x3kFF/NqPLHN+6vDG6+qQ9B9HktbBqkgL05Zd0ZHAYz6A4UVQSIYa+TgBKRnEaUC4BuNSdH5R1hV8GzYuhQmBAYKvoVphYQ+ec6sFFCsDDk0Bp35+cJHMN7QhQMNJzzAP/dqmkgte33NjAmSdDV9gFCE3+3QeJmMFUiOITB1ZW6Vzb/dG9TR44JJOi7oJt3zEnEAI7sSHLZWWSid+1SH/IuSvmkWkjeXTw44k7ie/M+hpPXn76p0bxej3at5bjoXCPU/KHyD/i+oafgzH2Pm5CMNBCQWnNPfxsthblK5VqFYEboauQoDAw3plnDyQ6hbCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rvbemeFOJj14W0KmsxunBQv80KCYLmthj1ZWuJEkaMY=;
 b=xOuVcTnyg31jlKHb05zmXO5GhfGdJqGIQG3PRW1/6Xv7sNHWyNYbNFyZyiu9ySIszN0yMc6nychEQn4fTvqEuxOa8Xtla9DVHdtfiCzF5B4vvvYzT5Ky/ppERVRiVeLdPCVjeRdqQO5Wf5wkLMQHk6UFGsDFLQ7zp+VsY9uCrG2XGJveTKVHPnYE9M3jWEx7EXeZyE452GjNARY9DQjVn4+KIXuCkvtRIxhYBeddenor/1LWaAynlcJQ+EnF/WrUaLf14tGHuVG9NsmMexMrVSxqk7oI6CUb03a05YxCiLIxvU0ziPwV7969TYrtIYzpSxjKnsoe5+I9kVKeGHGsrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH3PPF1AF044E07.namprd11.prod.outlook.com (2603:10b6:518:1::d0c)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.14; Sat, 2 Aug
 2025 07:34:21 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%7]) with mapi id 15.20.8989.015; Sat, 2 Aug 2025
 07:34:21 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 4/8] [PATCH iwl-next v3
 4/8] ice: move LAG function in code to prepare for
Thread-Index: AQHb3vFbUvunit/RGUiRpd4b1ATO+rRPQcXA
Date: Sat, 2 Aug 2025 07:34:21 +0000
Message-ID: <PH0PR11MB50133C2BAC04A2538CE869209621A@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20250616110323.788970-1-david.m.ertman@intel.com>
 <20250616110323.788970-5-david.m.ertman@intel.com>
In-Reply-To: <20250616110323.788970-5-david.m.ertman@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH3PPF1AF044E07:EE_
x-ms-office365-filtering-correlation-id: 79fdd3bd-8471-4d78-5996-08ddd196ff2e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?8e/i+r4sPHhgXfHtxeq9bCauqVrVVyJZf8Mw1t7dkUCF2cmnzjfKRJhZw6sN?=
 =?us-ascii?Q?XWnmeGmjkOryzDT0iSScN3lV7QILN+bOCAvsQv/wwZYmUXba/6wsb49opuCo?=
 =?us-ascii?Q?Yp5XDgIGkZj4UPLZXKdq0UZ+cM/zzF2FVGY5R1ROXC8n1dPOljScUAmaHXwJ?=
 =?us-ascii?Q?Xq7u6FCq79Bwsy7bYXXkbBh1UBTYvzjPX2YcRiOb51ea4XJNAJt3DGPg7zQd?=
 =?us-ascii?Q?cUTLpr53p4O2Bqo3yesFDvcY2LXPcXyAqddJQN8ZvImQQ9MHEcHaU5fVIL0o?=
 =?us-ascii?Q?vMkSfLtahPBbr5+VuB1Zui5gufNRnE2qIRyIHkqGCNJbAEqEMdkYoqfVgWEh?=
 =?us-ascii?Q?bNBwSXKvpTLuqQjD6MfJ7+aV1WR5WXzjAiXFvSzS3iU7jpYIdwWoKY93Szy5?=
 =?us-ascii?Q?pJ3gAy9jcoXwUIvTOR4BBmzYHfXjqsthrTZ5flGSqbbjqu/oZBaYYI3Wki3p?=
 =?us-ascii?Q?WoiWcClo+reGw4FcwwBragiLfOJAupwLrVlXdZmfksdVE7H066ED98cVr9wg?=
 =?us-ascii?Q?RI27mFbOwufexEzdEdUs/3jT5NW681Sm2a77eB/o8rdm+2BoRu9FuE42F1Tn?=
 =?us-ascii?Q?qGETNTEGZjbtd/zGwP5cU7vaY2RDhq95wYRdZMUFckssim+d2d+Lzm/pouHX?=
 =?us-ascii?Q?6FxMtB5oGns1Z9JUZDE2VFXlpGyleQiSgxcC0jjMoIBMQ1VqTh8Tas3LFPnS?=
 =?us-ascii?Q?NFPJ6nVThDMpkuv3IMhrtXBo82nA3kHAxsE7Igmx4lJ6VFs6RVZvgJRTtOCj?=
 =?us-ascii?Q?Yk/te0KkQp2uxmlK3CF75fdZYRhuyGABbeclGAxJinuxs8FTnwHTxGfLFCb6?=
 =?us-ascii?Q?6KeDE4ppJjTI/bG4o/KTOF6KR3EWPfPGjCTirgN9fzTMA5Djy8WTTuKm2O3h?=
 =?us-ascii?Q?xuoDqVo8kxyFarQSeI3Lt5Ed18LZiEjXYKDBJO89qcyISwGi/XipIWC4g6Et?=
 =?us-ascii?Q?3lD4GIQ306TqDliOuxOEDrWMizX88HFcrSj0zFZwV80vYEHGSlfvcG4WBlvP?=
 =?us-ascii?Q?FAT47hj7t0+6F4JJh/0F27tiRj1UOXwwioa+wDUSpmyP3tr9Z92Xf2kuXICg?=
 =?us-ascii?Q?F57Ziz25MCtEM/Iu0bM/itYtPWfSIkY3g8EJXmr5SvHH5JgegwWOEx72igS7?=
 =?us-ascii?Q?R2DRJijAfVqmvU9XyQ0AXpp76syhDHQ6MRJD2r4Dnccj76QzX44XRW30HY1p?=
 =?us-ascii?Q?VwTr3nwWW9GGHYGX56Tvs7elGG7T822+rDXPyH5i09uDXSWJXsY0Kt94yBj8?=
 =?us-ascii?Q?b9aeAYsykhAwK51Z2ec1cDHJYqmfxc9p1KRPdjbAvvZrO91eJU1D5fQpfen4?=
 =?us-ascii?Q?HpZz/uRKo2CpgRyyKffk/46FvRVxLloDdA2AIkCtKkFrMGa1etR8poOqXURf?=
 =?us-ascii?Q?j86SO7F9owU2kyqpJsM8PSZZw9v07oVbLHap2F9PYJZAkzinLIlr8a56qtyR?=
 =?us-ascii?Q?pYG8xRBaP2UzCApyefmDUVjkH/VRaJECz94r/oq5o5uFDalB+qxA2A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+wO/oCIKVm0MCAH3agQaLQFzHeMy8tyLDgyBbrGioavnEi4kLcIbl8i2qHkV?=
 =?us-ascii?Q?Xpj0z2STNiVoTBzKK+7RYurZw/Rx8yUrfmCroGUO+94zcho/TjI4slASGFnw?=
 =?us-ascii?Q?4pGYs1LUPpZTvkfNYm9fuuOhRUF50FGRsyuqmr2u912HgW+8AsrMkhCI0OzX?=
 =?us-ascii?Q?/o0Q+yo0egSRm9YaVHwLdGo5R4Awv1BrwopvDdHFmsl2zmXkNRqbgCCzqFKK?=
 =?us-ascii?Q?IT35eC03et1PX5d94Vmv04uH/bZJd5wt0VgC8bXgW1MGMKX7DRTpnnI/6Tze?=
 =?us-ascii?Q?pfMfJ92jwAYnfUexBkaYKIE8ZGOj/69O7X4qStEiPJ7du9SKAP1XLFZBY0JC?=
 =?us-ascii?Q?5Tim5trG7yHLxJX53BgiZ+vY8EXYTC7CtDfmQWv6BB8GHMBS2FH5gkY3bdzQ?=
 =?us-ascii?Q?ITlXlXIRtZvKz3DSje+wkUFpdCWVKQJXhmeIBzW/5KK/ihcqwPKpMlBAJoJw?=
 =?us-ascii?Q?Aspp1G7dG6iEApMZjjA4IZlQ5uupX4/BRQ2JALcB3gbslwglxsVribgRb0Yx?=
 =?us-ascii?Q?6VzekRtBIY3sFuV4SR2EOIjk+dy39dOVVZ6rvhueKyDiy8j1mTNAZqg6DFN9?=
 =?us-ascii?Q?W/mCgYft3uhje9w1T1FxLG+1e6XYcYhFqUN9FDLa9RRBbJyQ27kFKAeUr4dR?=
 =?us-ascii?Q?Ic6QYre3k5oYluOLNU3nV/S3VqjeL7MbJZr5819i9XHbsbOgwjq6nSRjSN1I?=
 =?us-ascii?Q?mnnuZfXCy1EzoMIeHkYOcRLKFNo4GKUfxer83GJ0HitOzkwPpLE7jVgClLq1?=
 =?us-ascii?Q?6GXBWsmU/Uea2rnG34n9Oh6gDH1Fr36+lHV5j1qUqXTDXZvETUCNgHP7Tdfr?=
 =?us-ascii?Q?LY/YV07s8RNezkXTMwJTEeLHyNTYsrGTsZsQbysc5scJQx+Apk1y+KVDccsD?=
 =?us-ascii?Q?61SP04jd/BeM/CdE9KW53Syvdk9GfXh6SgxXv225eVZT2F5BwVMPlynq7av3?=
 =?us-ascii?Q?w2eYJZfTvMWI6u4khdItqyGGt/jI0mZsoUJNvpXqJGxeLoyozYl3T8lDG1l4?=
 =?us-ascii?Q?adt2QV2/oUG0Hzaa9NxIdI0haZX7+5aT5wn+SVxesLAzc1kg+DJR4vbUXHgt?=
 =?us-ascii?Q?hnvUmxEEzkAJXYddwQAF67IPZO6fsgxKFo1JB6xfe50c5J0d5uD6BAhrckAE?=
 =?us-ascii?Q?hCoND8p2bjlYHBxKxPGT9qdCXJ7kKGvHdXFMXcI2EGJn5MoU0BoiC5hEakuM?=
 =?us-ascii?Q?/8909GQtUgBKVcrYl96xBr7Hyh1VpWMaBB6bbePWUpTIEpECrjHPySo6hi7v?=
 =?us-ascii?Q?1RwZAur3RIkpJ5uXWaYAIOfYB2Hy/RmU9ZDjTWM1Q/0xT51XP3s/8z9lqZnM?=
 =?us-ascii?Q?gMQn5nL17xRYV2Lh1w3Z8IlutWkqMdf5WME15+ITTNLwzlJly10rf+cWfuHU?=
 =?us-ascii?Q?oG8QxQJEwUhW6wqW7IZfQHZA3lAUj2qBEPJbiwWQ/gql7JmfPt64k4pJ3r4Y?=
 =?us-ascii?Q?fL4iSsaT/Ve9fwCQ0NUTtc5jfdiGCq+vPRrIfdZDXsvdPFeGIgJEh4ovG3Bw?=
 =?us-ascii?Q?PRCXHbBQBXo2A+bpudjG/8O8ngxiA/YvDoLRLr3A400DDUOilF/OJ5UCuvl3?=
 =?us-ascii?Q?BhR2UKpOfqArSUR85tlnAJSmI2SPTTex/Ew2EXsioIKpD/vqe29XcxxNFJb4?=
 =?us-ascii?Q?Tw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79fdd3bd-8471-4d78-5996-08ddd196ff2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2025 07:34:21.2567 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FReGJHN1q52Ha63Qt+9oVUHXqoEeO47n8DFt7eYsCmsbOk5nrhkTRQqhCRW9Ct0IhhiyYA9iKJRHPQsEXqD8EmK0ZjDT32lVV5uOSKqEyZ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF1AF044E07
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754120072; x=1785656072;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lWH1SzHG3PVXYXJEjlyUtx22KTIu/j5t/tn1ioZyT9k=;
 b=BAwznhaS7pjfk6AlLux91Dpjd7FgaFVGuKKVW0HVwpPIcvOM94uDeQVJ
 lnHjxHLbtHwe0Bv+gjpfiZFwzIFCWk67NpyzTnE/qp+Q8OPtsRaLGnTQa
 R98rTdYv6WTHkT3ivEehkTN1uQG5rSaL5fGYqOOafeDBthR8ymcVE7Koj
 4DqQ1HxFxfSEeRpcGgf9S584PKud93rtMqbyf/EuYHphtuAwcBUo3P788
 JGZ+C7cOZMASXjoZuBOVknX/nn6cN7O9bYD0MVM4HHuS6VJ67JbzmZKyD
 MRJCTslRrZ3ctHdsDM+VreOqfxQIXxO6ayNVQddvlfqLzuXXWQ3r/tt9n
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BAwznhaS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 4/8] [PATCH iwl-next v3
 4/8] ice: move LAG function in code to prepare for
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
> Dave Ertman
> Sent: Monday, June 16, 2025 4:33 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 4/8] [PATCH iwl-next v3 4/8=
] ice:
> move LAG function in code to prepare for
>=20
> Active-Active
>=20
> In the SRIOV LAG Active-Active, the functions ice_lag_cfg_pf_fltr's and
> ice_lag_config_eswitch's content are moved to earlier locations in the so=
urce
> file.  Also, ice_lag_cfg_pf_fltr is renamed, and its flow is changed.
>=20
> To reduce the delta in the larger patch, move the original functions to t=
heir
> new location so that only functional changes are needed in the larger pat=
ch.
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c | 147 ++++++++++++-----------
>  1 file changed, 74 insertions(+), 73 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
