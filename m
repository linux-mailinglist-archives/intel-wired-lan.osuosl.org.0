Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E691B22D15
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 18:20:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CCCBD84503;
	Tue, 12 Aug 2025 16:20:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VVj-FTPNjgDj; Tue, 12 Aug 2025 16:20:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3316845AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755015636;
	bh=OAL13nS2bRN7DjYp3UVs5oasZHrj8JSKT7DfHtb39l4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lJBdQj5le2xhxgr3jIMNJSxh8wzs2XZyioQuxnmv0nAG7TXPJnvCFwQFkF/BmKRc2
	 7dWQ2M20wcMGg3s4KE75C5n2323RvXSt5MQ9oGcJFStaQljMScV11SJVjT0vUnJguV
	 y7ZdjQIlhhTpR96yaO1cZ5EpXxKtoFpe6hhBXbtM7sFHAGOmBh6kC3t7/77O8a6v66
	 kkyIjmW88GpmyBRNHmYuqbum7Q7wbFfEqmZV+d+S9b4tcYA3fZsgFzlZTN2csPT7cE
	 pD3SKDSp2eufzc4zNbrbz8sR6IaAH4/a7l4FGzFivT7c6PSPZbR7Y0B7pJOZLUiX1C
	 qiDYe3JUd1Mcg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3316845AA;
	Tue, 12 Aug 2025 16:20:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D07CA183
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:20:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CD647844B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:20:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DxFuLztDj_96 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 16:20:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F1FD884470
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F1FD884470
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F1FD884470
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:20:33 +0000 (UTC)
X-CSE-ConnectionGUID: Pamxp7mzQsigB/L3gNPwaQ==
X-CSE-MsgGUID: XOWTAy0KSfqFO5x6WD1wcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="59916147"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="59916147"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 09:20:31 -0700
X-CSE-ConnectionGUID: QvOVUYH3S2mYap8OeN980A==
X-CSE-MsgGUID: W3WIvwILQ72AOZv/+gO9Ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="171490253"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 09:20:30 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 09:20:30 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 12 Aug 2025 09:20:30 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.61) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 09:20:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tjcwPaqDs4YoyOcJyM0JwDVqhKK+kUMpXn+v5FTObLXWVa3ssB2gHCldD+0ca2LKFOVLc+WwHeGjjx32oHaywaU+wTMlokU6YYT2fhTSqHgIyHCHn/3FWNWZVAyd+3Kd+qqmAkmr/h/WJ4Lt4xkpVhspEn1F/QNZPgMRWSpcR8RQUPFY4H7QrlWQwSyuv0/aeuKyYKe/3+vggrZFhOz6EwgXM4Vzj4nmeD9x3Fh2amrnXkUCQ+U/eNuw4XM13rx86lZojL1zeiD463lXuDq4VudJwIu+1zG1EOUUmY+VUcydR1AcU0j/t+j66MllNE5/NMc/vtOvgguaFwRSlFvxLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OAL13nS2bRN7DjYp3UVs5oasZHrj8JSKT7DfHtb39l4=;
 b=cocy9uaWYHH+CuTNLhkUA+oqFuoeN1gF+9stN7LtxKCI4wUiBb5B2BKXuYGLVpxyFr/bVXLGUnfMRCoSfyoa8XgjHC/4W+3Uz1zlYzbE6/Kn5bDReSzVE94/FXIbpdo8KG0Btotxuy75prS+2sG9Td0oZWTyfLohrqO90oJR2K4T783mr2O3uxZwxEldzTwqzyOZZOw9D/+Dg7ZTtDz2V924gG6AoBBLAm/WA33NCmfZsuOFsnAveYQ5hIjpKayUqKYJGCInOydqAhOOOddtu8RYig1Kj84lyaDO3rFLBk24ZCUTC59K+z2SqwXC98WTqalsK3ZbDgQESBKAB0cefw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6502.namprd11.prod.outlook.com (2603:10b6:8:89::7) by
 PH3PPFC852EF225.namprd11.prod.outlook.com (2603:10b6:518:1::d4c) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.13; Tue, 12 Aug
 2025 16:20:20 +0000
Received: from DM4PR11MB6502.namprd11.prod.outlook.com
 ([fe80::21e4:2d98:c498:2d7a]) by DM4PR11MB6502.namprd11.prod.outlook.com
 ([fe80::21e4:2d98:c498:2d7a%2]) with mapi id 15.20.9031.012; Tue, 12 Aug 2025
 16:20:20 +0000
From: "Hay, Joshua A" <joshua.a.hay@intel.com>
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-net] idpf: set mac type when adding and removing MAC
 filters
Thread-Index: AQHcBwd8yhyxEu30S06PYkVz7TPiALReGiZA
Date: Tue, 12 Aug 2025 16:20:07 +0000
Deferred-Delivery: Tue, 12 Aug 2025 16:17:08 +0000
Message-ID: <DM4PR11MB6502C6FD73E1793198017E11D42BA@DM4PR11MB6502.namprd11.prod.outlook.com>
References: <20250806192130.3197-1-emil.s.tantilov@intel.com>
In-Reply-To: <20250806192130.3197-1-emil.s.tantilov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6502:EE_|PH3PPFC852EF225:EE_
x-ms-office365-filtering-correlation-id: b172f082-1aa5-4bae-c60b-08ddd9bc2219
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?9heDpbpS3TI8jUoGBzU4sG2qBPd70BOIChxosgnPci2Eq0vr0me/h66TJo12?=
 =?us-ascii?Q?fk4/SqPhXmcZmGXRZj3oC3+8Om8QvOX+c3Qixi8mBC8s9MhDBdRf9mEUqVYa?=
 =?us-ascii?Q?/ZE/VnSAv4a7HnCHyYZoTJOSZseOhCS1RxzgodhYPV5Xj2qjp+5gMQ9kQsFP?=
 =?us-ascii?Q?XsJwldPjpDRwMhyopqj8LHL40k33OViUYqvpzS+RtERtaH6xusOx0ciPLnC5?=
 =?us-ascii?Q?6b1k7i3H1lVLiKXd3/fOmEczOyAGaXMiMyoQekQJdKbL0hAXb5rDfTfnwYcE?=
 =?us-ascii?Q?HbED75rk2HWi+c/21eR0BMmkvqgKZDd96VTWY1HxH+eElGdSpBBwQAhF6Uda?=
 =?us-ascii?Q?PrcldmitnHiW86TGEMlkOVtSJoroPkrwcJBMXGTsZFLGwxjs7t0BLEYCQF/7?=
 =?us-ascii?Q?RFwTcTppVLcFGpnZ06C0fdNcePw5WH/7GZbZ2OFqVVM144lW7xfUgGsTeFsc?=
 =?us-ascii?Q?Os5n3bl9123uOzMMZB+kC6/gq/sy736ylPhIj+RzpMfdaK3fiJIYgCWtfufG?=
 =?us-ascii?Q?HIt7LcqjfHj8u1nUvzBPCXvHLOGSFU1AsrMOToi3vkp3BPAjx/u2WT3/roYn?=
 =?us-ascii?Q?RgOeOtg6MaRNuU4P8pliS7rT+bA0o9VpCIYt5PREwxLtll1ES/Q7BYl7lI3+?=
 =?us-ascii?Q?y9CkqIP2vs3o+khRvIEQaGWZxV+LY96hmQcrSthusqZxb+GnkP5gCwuPemGw?=
 =?us-ascii?Q?UuVKj2jizT6kANbjV6cOsX96079S/h2cVqBPK/8CGGT0+QR+QF5NTkpDqfZp?=
 =?us-ascii?Q?CGlmk0pcWd5yrNs7/qJREitpg7vaBTYWvOxGdOgLHuotPwqLgbPtobEoAw88?=
 =?us-ascii?Q?uiU4dhzDyT8pn2+cBEmsPqUjDDlXujbCe28pRVn6DBCAVA01J7GjBPIbily9?=
 =?us-ascii?Q?us+0eCOnOQfOTvrnsb0SxWb9M3+8Y1m2nAnqVz4sGBFovTfYfsBUDwCjvCef?=
 =?us-ascii?Q?TTvN+954jGmII9yAVjYIDo3DMXvGZBo44oHMc/7MGS8QPWE2bmnXEGEZkdv4?=
 =?us-ascii?Q?+0YdTHIFzUW9MCRaVXvYF75I81XpJ3CbNUE8yonaQhffSlMGt2cUbkJ9J/uq?=
 =?us-ascii?Q?tdMJNmLfrG0q0JFsgfl6RJ8BPYm0wpT8LZg5LfwnQLv5D1SVxm/zErGEMctR?=
 =?us-ascii?Q?UPvZUlaicKQ5zWvXoEvilmlDd7J7FVLjy4qamYktcTA8lW50LzDlhG6iUAru?=
 =?us-ascii?Q?ZjfnD9VOX0IlD2HaDEXheKioZv9tZh/crreSE88Qxu3Mm61BUW3MLW9n4T7p?=
 =?us-ascii?Q?MFB+4RMq8JWhxFKoX8UUk9K5cElUqIwFYjJtqc0FeUb8DT90/SVI4bKYYwVv?=
 =?us-ascii?Q?vYnUxcgzzw/4J3uJoilIm0Ui3qO9yxv18x3R6B8flG5OL+RIPymJhNSsdEoA?=
 =?us-ascii?Q?39cAx53dqaWKePMxQimPuOL38Tu09q24FoIGUIWkbPvjWPWvpbd7vY9beuT8?=
 =?us-ascii?Q?PllHugB9wTBtj91TjpH1qtGxmX5NqIrhN4r5HaODRu7mSLGqzBljEw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6502.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?V6s5k44jtZ5XFGojMbYDvSzkbv1xVs33VhpjWLD+aTtgdI6oKfn5w6voPxjm?=
 =?us-ascii?Q?4AaOm+nsIAREjFFfDP35wtYgpoQL6WvysiQyXCwdAdaio2n183VNT1UOrHs0?=
 =?us-ascii?Q?J589m1tf2p6LxNaCt4BMy0kfpoff7Zu4yoW1bfEn+vg5+FTYkwob/6MNBoRw?=
 =?us-ascii?Q?crUBkxNDWk70jPZm6a4c9ffMsAnxytfBZvOHeeJ+6BmXB2Gj6F1EsiiGYQHd?=
 =?us-ascii?Q?KONCH4uiBRlp2vZWQUIWTupvvyLnHqqbuSJVoPQuZSITbcPWwCvtMXCFZlKb?=
 =?us-ascii?Q?TljuEgUYAk1cJJiAaGPBeivdSqUE9aEGXISKwJsDNb1ilD+WWzpnXAqymvTi?=
 =?us-ascii?Q?6Q39n2VD6nq6TJoPmc/b2wHiJZpqWOOzNMmV+fJNWRkNuK7xm7omb0R11mgv?=
 =?us-ascii?Q?RNWWroR7LX+zG9P4rbxvnkO87cvcp7nAA7O+4p1u8jqSCsSpvI3bSFznmFmp?=
 =?us-ascii?Q?0OAs7yQ0+TsWbr0UkYv7vFxkG+FkY8q+81LLs5ILm88GTgpo9L3ECXpujViA?=
 =?us-ascii?Q?Q6rZ6z8awQfQJ3RoeygvskgSWnqlY4XJyEPyzaUAwQ1fZ2idMG43MieFzwku?=
 =?us-ascii?Q?Ui73x2JLdFVNAbs1MCAiRoOdAeW1himrjVlhytcZuJAM8j0srac7zkrITqwg?=
 =?us-ascii?Q?vIvEzeyLBXWNsXFw4vUAmXRHJCI2lZXtc96bBPwCd0Lu5Hl6kSXgMbCEPN2+?=
 =?us-ascii?Q?wEVyHssNepXm8gBkVcsAVhMKveysCnKdXvkNv2k8mgjuiSsyaeBwTiLuRnio?=
 =?us-ascii?Q?QV9CkE1CaUjeY//DioD7y8zaTCpxPz5r+pwB1gXFhHsYA4dinrMxvt3EBD1B?=
 =?us-ascii?Q?g/26mlNdNZ5PGxGkzdKjN+kWlmO0eVF8rOB2iMq4cvhdW89H0IGrh8qViwCz?=
 =?us-ascii?Q?vkoUawSuSC4AVb52k4BljLIFXQoTeHkMTIfzgOy/5T9tJ2ZoqsCY07Si83yF?=
 =?us-ascii?Q?A1NYkEYU3Q+zfNxeAGKUSseEiL7fxFWsz8J3uzrI5blQiIifTtoK04wjeH0z?=
 =?us-ascii?Q?HiauFqJUlQOgSWro/FYoy+Ky3r5ksVu0j46DptWMXTApYKvwWj5ZnF4d0m0a?=
 =?us-ascii?Q?4bDWy+4BPrLcij8g2MpTzCpvul/+7hEHNKxp3+rGehXb2Bu+7BA1h3L+dGQA?=
 =?us-ascii?Q?pwAb73WpA4ewop93duMtkBCay8r9ePF9/DT/tkQmA1es7YE5cEHAH1KYdfne?=
 =?us-ascii?Q?OQGyvLnGpa2sKk+ZT9XHsjirCTdmgg0jwWf5bWrqfrnYborxf+uCvUt62ps8?=
 =?us-ascii?Q?TXHVZGVMyW4wGGXd/Ojzmu+thd7rtw1Ljl6B5fEkVTu29zoFzOW/Yz0F7Ugi?=
 =?us-ascii?Q?9O4KGp5Mplv4mN6Y2qocq1cNwBkOtK4N8XTxqDec4BurNUv0N9Vxsjb5cZ4H?=
 =?us-ascii?Q?DZUtkkiDtcTCzK7X/lmz6F7+/u3uQ2RWEOHe+NyqKMhQFoQ0YVwgKAOS0O7n?=
 =?us-ascii?Q?OVLPBJ5qOB9HAlnTE6PQE6EgvJic6m/ne0eGoS0pURxa+3TiH1gAjSFWxai9?=
 =?us-ascii?Q?00cOE4pJ7bjeBV62W7Yex40zznV2YEoFA1zb7NVXXfH6fLdpc1Yw9PWmBPK9?=
 =?us-ascii?Q?MvuminCtusLEvTAC0V3C0vbV0pwVfIOIXW8a8iW3?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6502.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b172f082-1aa5-4bae-c60b-08ddd9bc2219
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2025 16:20:20.5386 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n5AVIhEB2TioIsKBOrAXg0ZK3ej2/WnQug+altJbqVgfitKhGISL3/ebyOcjOiiSy1G4MsXjsGZL4BiYTvwQFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFC852EF225
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755015634; x=1786551634;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bhH43NgqajEavdiv8BGWmH+Emm7Q58PRmcTm6vVRWJQ=;
 b=OnYBeo8SOWHsqYz55U7RmICoyUfEh8pydd95vw7X7Owd9OJCjgQ3qnRl
 aAAHo/k1YK7qxldnNspq7x9/dwkXXCfwBpUDArcnGG28bNrmF+Vw76gi9
 m/SR/SRI/eOsYzmNf3hz/q2/yhDgXNZfDNUA1m4mBT3kGXC/49JLcybsZ
 82q7wVxM7913OsqGejBT7gtKe33D2BhlK+VHzsrf+E7yLXMGxDn8ahzt1
 vG5dKLfFOYUwvWkBza29Fi5YT3nipr0rz8HZQoRzMAFn1OSPKnKb5PSn7
 7QI/RNnxJRsj9U/biBXsSL8xudjJMjxBSssPyDtN4JtE/E0/2ekRqwfQV
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OnYBeo8S
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: set mac type when
 adding and removing MAC filters
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
Cc: "willemb@google.com" <willemb@google.com>,
 "decot@google.com" <decot@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "edumazet@google.com" <edumazet@google.com>,
 "jianliu@redhat.com" <jianliu@redhat.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> On control planes that allow changing the MAC address of the interface,
> the driver must provide a MAC type to avoid errors such as:
>=20
> idpf 0000:0a:00.0: Transaction failed (op 535)
> idpf 0000:0a:00.0: Received invalid MAC filter payload (op 535) (len 0)
>=20
> These errors occur during driver load or when changing the MAC via:
> ip link set <iface> address <mac>
>=20
> Add logic to set the MAC type before performing ADD/DEL operations.
> Since only one primary MAC is supported per vport, the driver only needs
> to perform ADD in idpf_set_mac().
>=20
> Fixes: ce1b75d0635c ("idpf: add ptypes and MAC filter support")
> Reported-by: Jian Liu <jianliu@redhat.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_lib.c      |  6 ++----
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 11 +++++++++++
>  2 files changed, 13 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> index 80382ff4a5fa..77d554b0944b 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> @@ -2284,17 +2284,15 @@ static int idpf_set_mac(struct net_device
> *netdev, void *p)
>  	if (ether_addr_equal(netdev->dev_addr, addr->sa_data))
>  		goto unlock_mutex;
>=20
> +	ether_addr_copy(vport->default_mac_addr, addr->sa_data);
>  	vport_config =3D vport->adapter->vport_config[vport->idx];
>  	err =3D idpf_add_mac_filter(vport, np, addr->sa_data, false);
>  	if (err) {
>  		__idpf_del_mac_filter(vport_config, addr->sa_data);
> +		ether_addr_copy(vport->default_mac_addr, netdev-
> >dev_addr);
>  		goto unlock_mutex;
>  	}
>=20
> -	if (is_valid_ether_addr(vport->default_mac_addr))
> -		idpf_del_mac_filter(vport, np, vport->default_mac_addr,
> false);

We still need the call to __idpf_del_mac_filter here with the old addr to f=
ree it from the filter list.

Thanks,
Josh

> -
> -	ether_addr_copy(vport->default_mac_addr, addr->sa_data);
>  	eth_hw_addr_set(netdev, addr->sa_data);
>=20
>  unlock_mutex:
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index 24febaaa8fbb..7563289dc1e3 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -3507,6 +3507,15 @@ u32 idpf_get_vport_id(struct idpf_vport *vport)
>  	return le32_to_cpu(vport_msg->vport_id);
>  }
>=20
> +static void idpf_set_mac_type(struct idpf_vport *vport,
> +			      struct virtchnl2_mac_addr *mac_addr)
> +{
> +	if (ether_addr_equal(vport->default_mac_addr, mac_addr->addr))
> +		mac_addr->type =3D VIRTCHNL2_MAC_ADDR_PRIMARY;
> +	else
> +		mac_addr->type =3D VIRTCHNL2_MAC_ADDR_EXTRA;
> +}
> +
>  /**
>   * idpf_mac_filter_async_handler - Async callback for mac filters
>   * @adapter: private data struct
> @@ -3636,6 +3645,7 @@ int idpf_add_del_mac_filters(struct idpf_vport
> *vport,
>  			    list) {
>  		if (add && f->add) {
>  			ether_addr_copy(mac_addr[i].addr, f->macaddr);
> +			idpf_set_mac_type(vport, &mac_addr[i]);
>  			i++;
>  			f->add =3D false;
>  			if (i =3D=3D total_filters)
> @@ -3643,6 +3653,7 @@ int idpf_add_del_mac_filters(struct idpf_vport
> *vport,
>  		}
>  		if (!add && f->remove) {
>  			ether_addr_copy(mac_addr[i].addr, f->macaddr);
> +			idpf_set_mac_type(vport, &mac_addr[i]);
>  			i++;
>  			f->remove =3D false;
>  			if (i =3D=3D total_filters)
> --
> 2.37.3
>=20

