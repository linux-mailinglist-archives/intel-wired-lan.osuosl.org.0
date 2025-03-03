Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9FEA4BF1F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Mar 2025 12:44:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22D3940CAE;
	Mon,  3 Mar 2025 11:44:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zxVm50n6yjCZ; Mon,  3 Mar 2025 11:44:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4EA1D40C86
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741002295;
	bh=XPmd6sLX5/6YrsHHK3ZQwq09VV1nrYjFQJ9McMSNBBU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RAZb9MeM4XLgXZzqozSt1LKUs/7ls2275FjpDVzpyOH+toT+IzkFDFgmGo4QED+Ib
	 XuKQ53MavDOMHKRUe50skUy0WicUU/b05k1f/lRX+uTv2t4bOVFYdRuy3hs2o2mEWu
	 hlsdADdCW5JZeXKtdT6jJedtR6CxYLABtM1olTnwXcAr9D6jyn8K7XQDphS4AKoNmt
	 8NKIAJfFYLGsoCvg7wC0uGji1BmuMN6pl+6sQ6wMSHFwzmovyr8Lyju9J8somxRPyN
	 wUmQ6RgY9Ub0UOFOjo/bk7zuTPulvV4r6J3JJ2n/Xv8MuPOphZvp1PSUI1A+rXDWgw
	 fgRkJZF91oSFw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4EA1D40C86;
	Mon,  3 Mar 2025 11:44:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 99F4FC1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 11:44:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8935581B69
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 11:44:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bEQBX5xFkly1 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Mar 2025 11:44:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AA12081A4E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA12081A4E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AA12081A4E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 11:44:52 +0000 (UTC)
X-CSE-ConnectionGUID: 2pjLHHsqQt6L6LiU9e1v4g==
X-CSE-MsgGUID: zV9q8f92R8+f83FHj/Ag+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="29459402"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="29459402"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 03:44:52 -0800
X-CSE-ConnectionGUID: Up/ym8XrT7OqR2gaKZL2CQ==
X-CSE-MsgGUID: E53e4B6YT9mq6eRVQ9JwzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="148878419"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Mar 2025 03:44:52 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 3 Mar 2025 03:44:51 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 3 Mar 2025 03:44:51 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Mar 2025 03:44:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tSco3tvo7yHu20DeNkAGa/+XGZUGr+6wLA9i/8+hbntya7Kk5voCfi6kpLNj49z2ee10mahp41lUpFmAnz5hIxg0UFcNDHsryaglcF1+cmlgohbvUWeL5kOrCPju36BhiVK7/5+OzADw0d7nR8m6z7VnCzTT4oRKXt/OWdeExwTCprlIfYhtBCjfRO+y4mvlhBS4CVITQdRJ50W+/X1aULD63xfkAIKXpzR+V+YEm+c+HJE7S0mVKgQ/44eVYokwLjP5FZ1KGAF3g2ql6gvKFjq4Qg/gtJZrjDYOPVdLLuTEUw1IBqOW5icm7Tor6ge48MLD/w7ToskGiKGXKYuK+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XPmd6sLX5/6YrsHHK3ZQwq09VV1nrYjFQJ9McMSNBBU=;
 b=yx/5CBIRN6Cm28H3dBaAMBKPUgq/RghimQh/nht+xY/GLicn4W6gHmxMt77E9Lgs30qfxe/4HvJRxRuQ7TmFOD1jM0v5l1e9rs6XEisLtqAiMDHC4+9f9k8w4QBj+ndj4Xsaz4grUObUHP+gik4v/318Atqi4vvJd1EfIZW9nK1Q+8SOhB7nod+WQ9IEyjDiuq1cY2p2/jJFm+JWOgZE4AIQf5ll48sFPXWwkQxJRlM1xvJuh+Zd+78M0hc+lIP6wmV9gGY/zPaDBSBeTjt0ARDhPqfzNT3C02ZOzIPpKyXQyp7WZ0DOCeAYWipdvl0moURi2cP8z5nnZ0TWq9SHdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by PH7PR11MB6056.namprd11.prod.outlook.com (2603:10b6:510:1d4::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.25; Mon, 3 Mar
 2025 11:44:34 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739%4]) with mapi id 15.20.8489.025; Mon, 3 Mar 2025
 11:44:34 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "horms@kernel.org" <horms@kernel.org>,
 "jiri@nvidia.com" <jiri@nvidia.com>, "Mrozowicz, SlawomirX"
 <slawomirx.mrozowicz@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 05/15] ixgbe: add E610
 functions for acquiring flash data
Thread-Index: AQHbhFj+weoiTa5xs0Sm9M11y1cIQrNhWmRA
Date: Mon, 3 Mar 2025 11:44:34 +0000
Message-ID: <PH8PR11MB796564DE600F7A5493DE2BA9F7C92@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20250221115116.169158-1-jedrzej.jagielski@intel.com>
 <20250221115116.169158-6-jedrzej.jagielski@intel.com>
In-Reply-To: <20250221115116.169158-6-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|PH7PR11MB6056:EE_
x-ms-office365-filtering-correlation-id: bb694d47-555d-4a18-3b3f-08dd5a48c4c3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?1KQfTrKlReTgvLYCrZ0Az8QDA0l6PSqHwk2Lwe8DLyU5/xuv9fGs4TnGCXN8?=
 =?us-ascii?Q?GknPj4K/9MhYe4SgOsiA+HeWKdcvcvuFpqXVtBZQza5gpA02zPIqa9KJ8o2K?=
 =?us-ascii?Q?iK/bbppJ9wud9zBgvCqievgoVP3nC7C75O8PgK32pES/ae0g+HXH1en+F0pc?=
 =?us-ascii?Q?ngWRwGNAnq6ixzPM24u+xb5hmLhp+Zziyp4wIpGxQCzjL9OplPfNKps+5rui?=
 =?us-ascii?Q?ZLvaRCjDCGknLrLzkjpVHZyqcndvEIyejogvilPCT6++fHbldAykuY9aAycR?=
 =?us-ascii?Q?mrnVZyBfdlu4PY1f0bfOLJs28kVihIo+a+P/Cah9UXVBhKN81J27Fs2u66Ex?=
 =?us-ascii?Q?SKc+48NmzdP25WnA8cw/QR/xtC5k+vqYDKhSBSBs+lE9DVtqeFU1lRjoy30e?=
 =?us-ascii?Q?s+4ASaThxzFF6huMwv1uhFx8XKO2185yubymJB6zvfwyRNQ/+xX0j5iPwxZL?=
 =?us-ascii?Q?EdxJfqb1Fl9VeuyeLXM25DXZcO/0qf6tD3pJpv+qw7YaPIG2m9lZoSApqgId?=
 =?us-ascii?Q?qXfuWVMEb7+6enKvsbsXM5N6zdoja+EHzdL68ulfkZ70rb0jxL5LR7SIEtjG?=
 =?us-ascii?Q?PIBr+ZsJDuW0xViSPA1nvppjKyJSuW3RoEFcTiPullXh/ZyLfhAdwnZHPhI5?=
 =?us-ascii?Q?5wOSkN6eQpJ474N0ZicrM2UWkkM881Nm+KY35JlzQ+jdtAAsyMRgZQnsr4pO?=
 =?us-ascii?Q?mBNuu1qibr+GB2I0MLcWEnEGn0XSGJI5Y+nWU0aNe8YfVHigpGUjubzS3M9b?=
 =?us-ascii?Q?2rZMWEODMQspSL0KARhLzsUbStZdnQmKIF5J+XKBY3qMjN5Yll+ToSkkx6ZC?=
 =?us-ascii?Q?IfGTo3C0GZkkdTJ3hkJUnb6C2Os73ggReDZUUySeFEibW+hogN2CXCHYwfee?=
 =?us-ascii?Q?z9GQQc+rRVdrvdu3O2INDOCfkAkHFHKBqXL1tbbkpA2RcPOe1lj/xNqqxRBd?=
 =?us-ascii?Q?gZGcjoIMx83bamFV8fg5wqhz/Zfs+hgfrcrb0q3oSKiAL9oZgEz5wDcjvUYR?=
 =?us-ascii?Q?EZjjlfLU+reWDs6pMp6Nzger6XhMpZLkold3to4eoczjsKyi+aAV+Q+p8QDj?=
 =?us-ascii?Q?pKfP7o9Kx6Ho5qpJ0/mfHNdU3SXsOX6MVNtWPDPK2MvzFC+aFnV9UD470PPU?=
 =?us-ascii?Q?zaU87zV7RooLGFFiUu17MeB32P3MWQjkV/MRSxyaOfS8MVyXhyQsDjaYZzp7?=
 =?us-ascii?Q?pb2k0qGPbN2pZAu8UmgDRQfn6PN9pg/slelOdV7hoZTkY5nehRFlVIDavTI3?=
 =?us-ascii?Q?5NE2tKtfjgIrbTuEvwyuJK3kN4kCiWtEnDMsinkoH6542Awm9wiMK5rKWnV3?=
 =?us-ascii?Q?edD4oC6qpaDuflJEES8B5wTLAURkJ8j91XVXdRkzivF88A4jADhwkynWQRmA?=
 =?us-ascii?Q?Z7+HX1cURwkAz9LdpsVxTIcfuAvtZXlQgYeCp6xGwxfOeZfZkuKHWZIsX7Fw?=
 =?us-ascii?Q?x4FkpNGdxbIxyW0AunswYdDcAiMcxPHJ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8ii7pfTlnRIBg10xRSzzwDfZJ5RpFnTRiU5IL1OnxNH8xCBhq0kr1J3FuZm8?=
 =?us-ascii?Q?spNbM8peoJFzLDXCDr3diVFD4PNMbedU5RT51BXwVTe2StcuJdL9Nga3Apq4?=
 =?us-ascii?Q?ubMpENpJwZw0eUM8cl25tTeRovpN0qprqOmwgsGs+/FDV6yAk7VNSe95R2Nn?=
 =?us-ascii?Q?5U8zbzV0hIAvYg9UcPcDC+FfjzF6roD4Y7X0W8vPEJzhdiVr1dP+gTTf6r42?=
 =?us-ascii?Q?lKG/uFzd13N7ki/BSPBwbpVZK9qn78f8qmnZV2hY2v/Oo/O8WjdbdIx4OQK9?=
 =?us-ascii?Q?KWeSz1d3KWeI+WgDs+i9aRLJKs4xspD/wLNGsZX+u6uFlfscIQMfTPJxjqNW?=
 =?us-ascii?Q?Jkb/nWfr0mThrt3OBUtVb+19V485MREjwug3PiPI1B4M0jOYSlCVKGramJe9?=
 =?us-ascii?Q?Q4gJ4IDgEXYOhV1uiKwscUUNFZnGJ/slKzDODFUnmz08UmUsn9rGsuWo6Qiw?=
 =?us-ascii?Q?osd6D/TKe4McHtcZ6IFeeLYbVKOnwp5YTjmSNzV2kWRtbuktMLkcbwMmtIQb?=
 =?us-ascii?Q?KRigeQW/wBX3sLzehB/lOe1vi2tLjzsePm+8EmwTYUykCCo9Xf7olT6O2T9R?=
 =?us-ascii?Q?rGn0ImO9JXas40QmnfWMNAmF1bET7LJn9UZaxxfNjYgkGRapifxeXKNS4+EN?=
 =?us-ascii?Q?dnsiTxXxgm7J3fp8Ys20iG2sSKgJ2LUUq39oVb9GyJcuydO8u5sqOlhCicaN?=
 =?us-ascii?Q?cIFclxK3rvXHcTMW23KCbPhQHBEc7JQUqgafj1ftakyApnh8xL7YuWwkh0e/?=
 =?us-ascii?Q?9WaaU6S7N85R/lCpS/Wt7+a+Irx9YCPCPs0fPkPhjamBc3IbaRkL7osN0GzD?=
 =?us-ascii?Q?f6h3M5Ir2IQbv/yrdNbYjH85v51QpgwTcdLFDwsnCYrdDVereALh8bLoYR5P?=
 =?us-ascii?Q?8EOY6UAq2EdLjzRpGnPtuZIebeXgE652DUqtWmU6DmCWM4q0Z6RgCFcbf3SA?=
 =?us-ascii?Q?jlUCHV+pWGL/HQYq/O3pCAFAqUE3eihev1bO8CvnzzLeUCiatSzhGoZDM0MO?=
 =?us-ascii?Q?ml7xvhotKyiU05XxW8ZXxMYjhYbwjdgXwSBM04BzwWV37gvcvRQSseYLNhOx?=
 =?us-ascii?Q?pHeYGXC/+mYP7gILsYiUAWHIcZ3HU4gQrjNhQX6zVG/ZXY/aj6lum71NjuSM?=
 =?us-ascii?Q?AucnLTXC3pgfD8tFG+MM9D8pSw9LXba4ex8yydS3kOeXW+W/K9mVwcsdygi9?=
 =?us-ascii?Q?sszekDQTFo/aCIPYCwlxlmXeKauk+ZA9M8b1hoAybID3XmAFlFyDoBaouv9i?=
 =?us-ascii?Q?UpprWhP91MD4Oue+GMDMRX5ThrLkLzvplZzAgzQZd6DK6V9CNxiM1gGY4bPy?=
 =?us-ascii?Q?ECpycBN+0f1sbtiFZyxdqTlvTA3MYpuJ8VSleT5cN7aU8r8hANYmbYMdcFQ6?=
 =?us-ascii?Q?6jcH+sf0nqkMq/+oBs+9BA8BUCuQwMMy1t8ni/j3lIbapc6EhNh+paYDnrUP?=
 =?us-ascii?Q?KITXSjjZqvvSP5X8o8fhf7gh+5/yKHLEjHlKY5DVJHMKgaIqQi0h6vg9nUfC?=
 =?us-ascii?Q?U03b/t1LGIekzort8vmM0BQnVUlrfpGmfzqgP2S+MC198/Tq4Ochff8yUaAu?=
 =?us-ascii?Q?MvMupKDfVRP6QK0003ZW+4ReC67HirhPk0QR+dPB?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb694d47-555d-4a18-3b3f-08dd5a48c4c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2025 11:44:34.1486 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yn8etl+63bLIPZY6waLGj/38HSMwj9S7iO5jm4aWvbZgBXTw/Bzkj6zX6v+B361ZrQ2s/BY+oCqhsILmzgYFew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6056
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741002292; x=1772538292;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nzv1zIUhOHBa7PrwhgtPrM4WoC8wWtkrVugmUkGl/44=;
 b=aSilTRYPGFm+s06HB6jQcBOtoGxlQ3feEl3rkQ9kd3S6QTECHl82aRxK
 kOdRg3+Byt1VgyP2w8ofgeVoyuQLag6d5I80QoTQCWQ4ZkZd1QIW7wPvE
 7GxpPpqmXGbABpkrWhaLHLOmTk6P90oOvjhTzPixfoVoeEq3gflMSgzmD
 WO+apH2X5mgvhbbNOgAjBaYEcKPKtYVwiuNlrTsWAYSFtqNSZRTEHMrqb
 +IuC2Hc9qSE+ip2zYejGsMvLE3XWIKdQ2l2iBcDCBYQxvaM6OBcxYCf+y
 C5AC2XFo6c1kaYCeJMmwMnKN5k/oCd+zsE/kVCIQGuC17cRJSHKHAIQFQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aSilTRYP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 05/15] ixgbe: add E610
 functions for acquiring flash data
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
> Jedrzej Jagielski
> Sent: Friday, February 21, 2025 5:21 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> netdev@vger.kernel.org; horms@kernel.org; jiri@nvidia.com; Mrozowicz,
> SlawomirX <slawomirx.mrozowicz@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Polchlopek, Mateusz
> <mateusz.polchlopek@intel.com>; Kwapulinski, Piotr
> <piotr.kwapulinski@intel.com>; Jagielski, Jedrzej <jedrzej.jagielski@inte=
l.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 05/15] ixgbe: add E610
> functions for acquiring flash data
>=20
> From: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
>=20
> Read NVM related info from the flash.
>=20
> Add several helper functions used to access the flash data, find memory
> banks, calculate offsets, calculate the flash size.
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
> Co-developed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 509 +++++++++++++++++-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   1 +
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   4 +
>  .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |  40 +-
>  4 files changed, 552 insertions(+), 2 deletions(-)
>=20

Tested-by: Bharath R <bharath.r@intel.com>
