Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1467E8D3D34
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2024 19:10:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1A9B3400F1;
	Wed, 29 May 2024 17:10:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KHN0Zo1XkexR; Wed, 29 May 2024 17:10:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 593B6404DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717002600;
	bh=UYRlOr8MF3NialuEVG9m9K0Ts4z0Zerld36e1eSChx8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7hs2Ff3un3wo/bU5j4STeIlYdUZONNW+FvEwtqPBBeMNpMsyNVY3fIiVFRIIXZSzz
	 wOkSeL/70KWnIG5k7xg18oNvqmB0xHcWL8UX0+6yzKFL0mm6u1Dt7hrmiIWNgb7xNM
	 j33rPxZ6CSWiUfvexp/EQmBs2o1vyy0vpMrvcljr7w9EyNzbgMR8U31fWiC7Rdbg4L
	 NkkoH19j7kwPbR6GVsN2n0wRFe+t3CHt7DJiSdQr2B1scrRnqNZ/wo9A54kBoFH6+M
	 gwlUIAbKQSwGiWvUlF37mmvhT5nSIFZktKR3Et6mxb+dfHcpRin9v4HIf4ucb5niD3
	 uWJ5a7w5M9q+Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 593B6404DD;
	Wed, 29 May 2024 17:10:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9BB971D387C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 17:09:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8718E400F1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 17:09:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Uq_tIWz-YbwQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 May 2024 17:09:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A588D40C82
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A588D40C82
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A588D40C82
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 17:09:57 +0000 (UTC)
X-CSE-ConnectionGUID: BeuvMzaqQfGz1H9mA2vmxQ==
X-CSE-MsgGUID: WVVoyHU/THyfBhwxw4ZBrg==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="23977696"
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="23977696"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 10:09:57 -0700
X-CSE-ConnectionGUID: 120u0qfLSLGXzoEwNG01Bg==
X-CSE-MsgGUID: E/W8SoC1RauT4cBAZDsZSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="40021149"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 May 2024 10:09:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 10:09:56 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 29 May 2024 10:09:56 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 29 May 2024 10:09:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P8ONWg6JAFfTir8qcNzA7O28vnzynwZuLWYQ94104+O0qUXSxJ79gyLiSN+CvN1M2A75FP0AYAfcaSogsn20el5ABVKDvPu260IN+4bg7uHQ190AfWUbwFG4WnvmhKM5X/YZdJAF3NDD0893Qfqymjy07T2/SQIQyuU8I0eAMnyidtCjFxC2S3NaBcnyNdjGcAP4Co+Ej1DpwMbGREp4wiH01UrF88mnNETM2dY+ZfGuGQBGDWv6qPZfeVGpXd+so3Uy70E8WL10hmh83kWnO8zDAFo+hYvQjOQItZFLF8n7XxbUykMpPM/mIlTXfcLSi51HpydRm9AJ2K/st0sS5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UYRlOr8MF3NialuEVG9m9K0Ts4z0Zerld36e1eSChx8=;
 b=HYRrb2e7A/T55nCUh3BDANNOiNssP0YLJaKV+HT5uGybF6RlgQfYIekm9ljVddlpvW73VnM/rRFU/0ak4QcYkMWiLKklH5BsrrOKpt8F9QNNF/YWIujKWkqAdJvRkzAQf4V/NhohssK9AhBp6WJCAYRY4QutcBPwoCQWQpHtdv/aQlwN8gaFx+FOggdsrrfAtT6AT1bpffdirDqZjtuNq3sNfBKn5OcVwZ+Opu/A5Ev3KiFeAkH6J67x4GehQLeO8gzxx0hhNUAdj/WzH4yCwzoSKv8g0CCO9vnUMepUoyz4bvooJeNGfRrGMXNfgAZXXkRstsc+GMkVMAJDNBnLag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by LV8PR11MB8581.namprd11.prod.outlook.com (2603:10b6:408:1e5::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.17; Wed, 29 May
 2024 17:09:52 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.7611.016; Wed, 29 May 2024
 17:09:52 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Ostrowska, Karen" <karen.ostrowska@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [iwl-next v1] ice: Check all ice_vsi_rebuild()
 errors in function
Thread-Index: AQHasUIzMoVRbgUZCEO/NPq30LJ7xLGucyBA
Date: Wed, 29 May 2024 17:09:52 +0000
Message-ID: <CYYPR11MB8429472EDFF52E822D765238BDF22@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240528090140.221964-1-karen.ostrowska@intel.com>
In-Reply-To: <20240528090140.221964-1-karen.ostrowska@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|LV8PR11MB8581:EE_
x-ms-office365-filtering-correlation-id: f80822ef-b29a-451e-ef3f-08dc800227fd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?zzMUyTGO+q18QRx9/iImxopBHSTWD48aFfmXWiiEbCMgD8isNrv0+k1hrpc1?=
 =?us-ascii?Q?1wiY6q3W2peAN4MRMnOT7tYOxKAM48xwYUHaK5wbb1VGcUECGJWo6BTSU8Ec?=
 =?us-ascii?Q?VOq7jbL/MdcuGxr+hf3fT/x6CClwGJhzceTveSoDiDVF3Qhw8HXAnGY1ILt6?=
 =?us-ascii?Q?l9QU8rD/OVcpvhQjfxQz0/j7HV9HhnjtzxlbuMKF5PdN0HUYBraDrleb68rF?=
 =?us-ascii?Q?jNGCmS5qgMvUYNVNIHvFtN8JAO61Cih95XzZX/2OVV98751vY/swpVI/pRaR?=
 =?us-ascii?Q?34avbC+1mPyjDlCyiDG/WMtyCxF2OuPbBrvd/5zz9jTsAB1tOxSeQUucE/L7?=
 =?us-ascii?Q?DdtgfJ8XHq9f9+ssx3ru+nT2LHhWr4fEbcbyMiX8ox77AqupBXgbxNhYhT4/?=
 =?us-ascii?Q?gsltalrkhdgt36hGTKOhuXlGNtTUkJMxZx1q+umcF5Ci+KBiRcQKRI2cgGFB?=
 =?us-ascii?Q?InW5lotkEpR2ncve+cISI/h4SAWsPWRqim91IY6vF/6+m3EupCXqLQdCrruM?=
 =?us-ascii?Q?LnGu6XOFg7IctJQllUskTSLYVhGDldIFfHoHBcpew4ePSJv4cxY6QWQB0By2?=
 =?us-ascii?Q?LHk/nOMK8D2to8dvNTSMpl2TK99cQODUO6MqGBrVrOgPXIplmWb/LvUvyigQ?=
 =?us-ascii?Q?jFpeSZt8n8EYl9753It4plF4AZtVhIQj25By4z36teOfBHwzyNqyGv38EwCd?=
 =?us-ascii?Q?l8I4TS8m+bYNriycbwK60luuB9fVk/YiVLhXP2MwKVb7otVcRXX2+c/BR+Ty?=
 =?us-ascii?Q?yoDb8T4wQBJKsoahlEO3O04deayF+NMKE2da3G+Ny+lMrTA5Sn02F2zMb6mp?=
 =?us-ascii?Q?TDMI6N9b7X6GH/z6YKEiGOqEjGEBiq4hYmRLWYpJKodWlbxgcEI/Zi6o41at?=
 =?us-ascii?Q?4INXsgUE4vRgQoCmdQo+BKJKZoyVwhiaeLojygPJOnIvKkDsKIBFDM6m0Uoi?=
 =?us-ascii?Q?4d9rFm5M+Z4FMZsFY+2p6ruYGEy1Y7L87eiVPUMkH9ufH6k1RayTJ1mTqu6w?=
 =?us-ascii?Q?1ybPWiSg91ASQYn7TmfDSYKr9ssGHxjtY32WWdNtI8UVVF332k8LyTGDLdYO?=
 =?us-ascii?Q?w1W3YUu+R3LtQhHYRQNs6uBdju51AO6el7R0+bUZwWZWC35y3uTPtsfSneyi?=
 =?us-ascii?Q?mbu/Q3/V/2Av4bdewQucnyPoWIfTnkNkxrPgIQdJiW46GmM1gOwta8y0W/xU?=
 =?us-ascii?Q?uvvPRzMGLNOnQ8djMPUYoSe8fjlsjih4yACqJlAiz5Z1uEbCntFfbvQjPjwb?=
 =?us-ascii?Q?80pJXgIHiOxhzhLEDUoVjtEjinCa8hqIchr0yI211jXnSMkXTQiw14nCA67z?=
 =?us-ascii?Q?5T9I1TS8WNTcV9bbd7M3Id1DSD+DTQXlr+W8O1FVo2+E2w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xbwAS1mGvQ1Ivc6CZAw0QhAQRwIWBhWqc7GAFvacXHT/uKXREYq01pxrcylz?=
 =?us-ascii?Q?9Z1MRLcb02AIBKW/yqs7ZK5vNlHyVQrJAjksHO4pCsDw654/twr9nmeExWlI?=
 =?us-ascii?Q?kSbXtE8T8jG081jBCcuRN4hKtykXXMBrqiZACrQXdeEAi7tj3sr7c+RmzGjg?=
 =?us-ascii?Q?tSJB0ZwWeXcZauicNZlXQz+344O9i937oidoAkgWcBIRVonnZM8qChCcOZDY?=
 =?us-ascii?Q?dEFEv5J6yYNkwjDRXVPS//glDFxMrk0dIApC2u5nEHQ6AsU3E23OamA5+Scw?=
 =?us-ascii?Q?Sj1Uaqiik78iygD0iQEpYn7HMVcAklWxBqaScDfflvj7DBgSiAvFJa4e7SxV?=
 =?us-ascii?Q?1DL5RMuSCT0cSH8yIoFOBdXBO0UlvXvr0ycliLsLUf6+G9WF5gec7d8Aolrh?=
 =?us-ascii?Q?msjh15cxhlet7sPf6HuDqRDWVdA4yTzdRaHXnMD0uoC6fMvmz+CUigkThq0G?=
 =?us-ascii?Q?39YRQoc9GmploHzYitjLa+YqTg3Oa5r/qbRG87yAPLZYvJCJYJ1vGrOgUJxH?=
 =?us-ascii?Q?4kZcPzJHk5oZVle2hae/BlCeV+z1Yw7YVArfpignGRTd2Cioia7uVRKQkQhg?=
 =?us-ascii?Q?FcD5kW9Hx7JEaCXcq44RN/BNM8ZHovIHVWeUUk/U74f0wzYgnjGppaUh0eUU?=
 =?us-ascii?Q?3XTHL2P4KgeuyKymBfNYQ+8h3iD0i91Y9yxm+wKKrDeTqfNUC0moPFBKtLjM?=
 =?us-ascii?Q?k+o2E0aCN6gdR8oBeApXq2Ne22zf6ZvZ5lrWuf85K94f6VrPl5uhgh8w627s?=
 =?us-ascii?Q?Y8Nc8NYk48t3JqKYX8ajZ4CHupnfVQi6KJQBcBKV5q2xD8+ZKNYNDE/IMlJF?=
 =?us-ascii?Q?os0sTfL5rbx2F1kpbsHHYnpk9vy27yDP/3fpZx3exoDFqjpiSZMMYXTymrxz?=
 =?us-ascii?Q?pt/z0KLvMNJ/d99wSIKdt0NfmgujAaDGfCgimj5M4U3JYrXsznXm5UEH7FO1?=
 =?us-ascii?Q?oO56jatQ9qOrJ061a1WvCuIA0YxZiMEd8PMiqdUBX6tmXkJC/FvYI1guHD/6?=
 =?us-ascii?Q?ewl7IoIAC1bOmCflx3IEnDs7/IWBtZb06Y4skmpY1hijo0WMdNCNH05K/Yxb?=
 =?us-ascii?Q?Ri+uRSnNhoOQvwGDIgrCN5DRkjYHc42dmYRWEEA6CQCH112Z4gj+ioGPpt2L?=
 =?us-ascii?Q?exlqUAorWTMMthrbyMXFdgoAG8HWNsEJmVLSvSy2YVs9/crI7ZCxWcb0t5/8?=
 =?us-ascii?Q?kYdxb8eLW9SGczQxGd/RNEmxi2DVph+SrFT2khd+gcNfOWbZor8XBSHS0Lho?=
 =?us-ascii?Q?KMPLHjl1Xoio0907QJ3UmlxH+MFzGkZ+kSgqtaRj3hMnOrEAylFs3Q57PWL1?=
 =?us-ascii?Q?Cio9sZh6IR0hEOdm3rSFK3LZePINmvxzwacSHVBrMK2ntoPaF6Y/BZXaPzFU?=
 =?us-ascii?Q?ihmrYLqNUAAqLulrIJ3J0fPx85nyBh8JsOc3x8UX9s07PeUaYKN+kkaK9Ak7?=
 =?us-ascii?Q?XqwNIvEPrO+IQyt+/fmkuV4YpdtcvcMPGPybZMNa934Oqo7FDk6D0gWZpM/O?=
 =?us-ascii?Q?IPxnCkz2838NKuV9MjA4ajHgvWNprbKLZr0tfyD40U/FxRj7jMQnk/RjqpKD?=
 =?us-ascii?Q?WqNdPouCbHSaBVVANX6QbUmkZd7bsIZX8wvokPgYsvx9wZZySVrtJjyaa9FX?=
 =?us-ascii?Q?HA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f80822ef-b29a-451e-ef3f-08dc800227fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2024 17:09:52.8490 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 27Hi5pfxO6ZNcDMsdEsEN0f2dUiN4pHs2b1wSRVI1hVDal+ejEVdocMY5ggYV4PiOfZOOH+lOzCRE+pYBPVjdDBUknRG4x26qWNeuDZZvLIkFTPNHA+PEnkwIB1R4w38
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8581
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717002598; x=1748538598;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=b5CFmRh2y1xo9xpxF79q6FPYvei+cUlQE9J5ttRKrAY=;
 b=fvlhMwHR5SVxeM2eCHwsT1EqmA/gKD+xP7F1zIU81+wxjXzpD36+Yr09
 27XxCapnnTcFFiH1KM5sNiqLR0oELrpKz26FA++bF+zF7rybmi96S6hpA
 Nv+JNHON1xZ7oorKHCSIFPgnxPcsNR+gPWpLcUO1aVMjMja5ptM2HJPjx
 OQ2Z6FFIJoynb+v4UGnlajUsFeeibsrCVdT+W/QTh/DdHfkZj3RmNo6cO
 iK1mtv7fKvmcI3oKqYqLWoY1ger14WL3ioRBDD1oRbIEvM6zuxNqba7Xj
 6R2rqoGZ1RZf96aBjJQKfXAp0eOHPQ0QX6LeDosKEAbI48T9txfhGz00w
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fvlhMwHR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v1] ice: Check all
 ice_vsi_rebuild() errors in function
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
Cc: "Joyner, Eric" <eric.joyner@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Ostrowska,
 Karen" <karen.ostrowska@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
aren Ostrowska
> Sent: Tuesday, May 28, 2024 2:32 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Joyner, Eric <eric.joyner@intel.com>; netdev@vger.kernel.org; Kitszel=
, Przemyslaw <przemyslaw.kitszel@intel.com>; Ostrowska, Karen <karen.ostrow=
ska@intel.com>; Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [iwl-next v1] ice: Check all ice_vsi_rebuild()=
 errors in function
>
> From: Eric Joyner <eric.joyner@intel.com>
>
> Check the return value from ice_vsi_rebuild() and prevent the usage of in=
correctly configured VSI.
>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Eric Joyner <eric.joyner@intel.com>
> Signed-off-by: Karen Ostrowska <karen.ostrowska@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

