Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 312F5A85A5C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Apr 2025 12:44:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E3DD040CE6;
	Fri, 11 Apr 2025 10:44:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bW1pJcjbWJEq; Fri, 11 Apr 2025 10:44:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5CAC241A4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744368259;
	bh=gdVf4o9riXabjIVabs3BSTC8aN/MWcscn/vn/QT9u44=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PItmuCMwTqq5ilXa17+X4ANfevIyDjcZrWj9prxCuKAcxMJGtNGQBzOmyd6ik7sNy
	 i2da226k0vZYGcIDM/UuKc8YVo8PQGTALEfSNM65KEtUtk3+jRljKaIxKyJ5k8JccW
	 m1ysnXh//H+hkAfCZZl2jkX/+j8WfboSM039+H3793DXvmn9OhUhHp0bg8PuH4B1vp
	 CvILQvPMUyCx9WWd2uX4+bqYNYMCvg5zwDGABWmPwxXHgtwRXJw9GzMX6rZ7EeIHHk
	 bLwuj3mYImq+/Mx4HRbiwdKfr5txN1/Lu2R5iC5Tw53z2aER/li17IujCswQWWYYfs
	 SCZCWYXkRGUZg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5CAC241A4C;
	Fri, 11 Apr 2025 10:44:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 76C23108
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 10:44:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 571F66F60C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 10:44:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rD2P88IzGU1p for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Apr 2025 10:44:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 93EBC6F662
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 93EBC6F662
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 93EBC6F662
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 10:44:16 +0000 (UTC)
X-CSE-ConnectionGUID: edJs8QfKQRymRfrHDJdlbA==
X-CSE-MsgGUID: Q2BU7htsSd6N58/4Ul2xyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="45803363"
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="45803363"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 03:44:16 -0700
X-CSE-ConnectionGUID: 0I7afArETlO1fl1wZVa6hQ==
X-CSE-MsgGUID: a824q8eCRh+sT+ml8sly4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="129515659"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 03:44:15 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 11 Apr 2025 03:44:15 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 11 Apr 2025 03:44:15 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 11 Apr 2025 03:44:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HFucyCocTZdopeCQw30U96PbLBZYY5YLpLd2V0JM/Zu5K4jEFRhQr6KzMmL8RC1x20Zbw6k3or6kql9ihux7wdBajrIl6fhKCGo0ofrvos+PS02D0bmrTjqcbY2LplP+viyeoNiyPsc6Vmv64Qok64V7HmnFDmkLtOS2ecvUmWxSaXUya0RGnCdN0GOc6kvuq8Nz4VwDqGLocnt45FB2eZHq8PgG9z6CUPVZAsSgTrnNTgjc2YakkJyaRYK239Xmux5kAgeKuoWNNftrthZIT3jVqxi6eYHS7VD+9Xx0pmgp5KPSnBrkYQPTyhMNXz/2EM1WaBnnXUfUT+4in3DYMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gdVf4o9riXabjIVabs3BSTC8aN/MWcscn/vn/QT9u44=;
 b=WFhEB/JpK4DnapWxkijky4yPCr8UR5dpp0iC8VAXI1JtP5dRXccKUt0BHd67N7dCStcm1bFDwYTOEIFJg15AQvsD6TBH3PLPA2xMCTeMXaLZpBeyPBu8OCkPRZhS/9ZjxoRldGURlRct4gtn3MhpFxF4tmQLL04V7EkftGTLOl7DGCU0r4ces9kY/Lsjp1pBtkhW5auQomEDAkj0I0RDS/bZYBsGnlh+89sGoEqgDhe3lOGZv5vADrOYjltmQWtboGWP3Ykd4QC02LYIOZNfyOFnyrlGB5QIt8lqYef6NSrUDINf2rYBpGE3CTaY4f9u8TKMahEJyIXqSgwrtYle7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by BL1PR11MB5223.namprd11.prod.outlook.com (2603:10b6:208:31a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.29; Fri, 11 Apr
 2025 10:44:12 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%5]) with mapi id 15.20.8632.017; Fri, 11 Apr 2025
 10:44:12 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: improve error message
 for insufficient filter space
Thread-Index: AQHblLi6BpF6HIeWIkSLNd+sSrYdgrOec7fA
Date: Fri, 11 Apr 2025 10:44:12 +0000
Message-ID: <PH0PR11MB5013F369D173CA72EF7CE61196B62@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20250314081110.34694-2-martyna.szapar-mudlaw@linux.intel.com>
In-Reply-To: <20250314081110.34694-2-martyna.szapar-mudlaw@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|BL1PR11MB5223:EE_
x-ms-office365-filtering-correlation-id: 7ad41a22-ecb1-4ab8-a35c-08dd78e5cc2b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?LHc02kjtrNirI84WQWD8k6L0X8MKWP4/Eg++8cT+oHIHGNe2ojXWVf+dNeHe?=
 =?us-ascii?Q?JTq01EialfKOas8FiVCpW53TELc+jsDD48FxBDWDt+FjxmeVMluOx8X8DofG?=
 =?us-ascii?Q?chDA5tIn/mI62/OLfiQ0nDQpu/bcGErpBk0G8OT6kN9LD3NsXFdoYgGptYRm?=
 =?us-ascii?Q?KqrV2Z2aHwx3D1xp3oqOkgAlvgM2nUo4pk77yQb2bOrB96xyi8B5yuIVRxfj?=
 =?us-ascii?Q?51iTeJQTgXj8C4GEAyDkW/sqUEm4CM4xUuA6doS3YtPRWEtSWlzAGp3gQUY2?=
 =?us-ascii?Q?LXOmFDwRKV8r49YXSapvKkoaFXP3H/1g69s61ftWDV9VYrz/xCyQM0iu7zXW?=
 =?us-ascii?Q?iewAoWj7wcWFcfrCrJAsoXdIZ/tm5GqczdQix61qNwE75zYJFNarRwKKIaqU?=
 =?us-ascii?Q?PEbeg09rFNcLdFUZsKCVGlNvtVG6zUkkSH79/RfmXQRt1t5dk4IGYC2xh6Op?=
 =?us-ascii?Q?XOH13aSLVwrzsAl95u9knuTJrZ3HbFYNUEQlxUvo/LjB74vCexoOlKzlwTPT?=
 =?us-ascii?Q?Dg2teWEZgTPP/G6lil77YNE1YkhG4Kg42RktwjNb+ZL5NFIbRC7Zilwe8VfQ?=
 =?us-ascii?Q?CD4KnPu7zltGihB/nLHj702riUnJqvUNhhwr/7TKzUwntEr5fJVPEjQMiq5D?=
 =?us-ascii?Q?LyhanRjy+G3nAWQtFLs8DPEUbDUFvAlEbsMtY8AR1E7HRk1O2NrvUBV6p/25?=
 =?us-ascii?Q?2qdVJpPqiQc+9ypv/3xTkCNnW4olWdajtU8BCLeAs2xeP06dXByatxJe51sN?=
 =?us-ascii?Q?BU0tcatGPSaul1IGbtk/kRpFDIkAo2nhmdxBQksLcAcH+jkFx1CQOqiFQwpq?=
 =?us-ascii?Q?RVCz5F3JrZGCSu0U+KF3AkatEzLayqWSy4SvjiDCg96xMV3URQM2+jdNysO/?=
 =?us-ascii?Q?iP6CyPJIT3kNeWc8vOAWM00h7FygUVUQy49rcSuR2LjzJdqBCNf9W0Pe6xVE?=
 =?us-ascii?Q?VrMR3o+zeQI657zICuV84T0M5W603nNZ+LvCAsaoZTJZos+ePfNmy/iu92mw?=
 =?us-ascii?Q?6gULF1ecVm8dJdWAi0aGf8ZO6WEiu1vpaXeiK7SiAYigJ5Pmd0ANV/LNfmdf?=
 =?us-ascii?Q?Q8/CS8OqsNvmg7oVGUl27Mn6KCB0FiOMSCx4jxbjmOBizLXw0cW/6GslYx+m?=
 =?us-ascii?Q?bsLuI8e0uJz1I3O2b8kF2QAydz912wH22EiWECZlC2NFgd7aMGDcQxVZ6HZV?=
 =?us-ascii?Q?k/6Me6feSYZC2A17Gt2kAzPpi25TkYiM2+kgNnW/fGahsSE66UUK/i0ubmgz?=
 =?us-ascii?Q?Kw3p24DhaTdRhtRMuPX6ZS7ILHFMk5IS9vV35kEiNNkMh9MM7puq/wdWRnTg?=
 =?us-ascii?Q?HBpMyoWWUSJ0B+NvcFRYuSnT3XdadwYCu4TnTOj53z6IWJIrXQX0dCboRxu/?=
 =?us-ascii?Q?+oAsU64nTSx4JhuYA4+3YnJnko8DxyifyjNFtYA0dIxOloZQi3tnEfqNgN52?=
 =?us-ascii?Q?UBGsVaAJ58APrL75clqJn8s6xYQvvhTLjdJ1bUrPG1/tWKDTjivm7Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1q9O90OqViZfE1chZWUUBfjYMFzqQJg8jy0n/CZDi/PN7xMhybHyEXQBa9dS?=
 =?us-ascii?Q?SXsjPtbJPiqreJQ2oiSceOHeTHkO+DAImCaQuFu4XpPha3XvCx04dzj/5QT2?=
 =?us-ascii?Q?PqlBXpJ6CEehbaN70y1KaD1JxmrG43MJB/vc8mMqLfPmIn5Bpgsy6Fm/AGr7?=
 =?us-ascii?Q?mwCh8tvsEP/lD6o9QL6tYFtfNBSzrTeritHQZjfLbIAdW2FlEXbcTj7fNg/m?=
 =?us-ascii?Q?FtQih0Bj0biJqj0KC8ZVk1SJzKKStm8qty5emWbKfHowax1pJRcI6QTZdxI8?=
 =?us-ascii?Q?d04/MC5NBfyhPj6E+b/xltREV0q1q2ASyb1lK2YfCBxYDAY2NHyph0uHNPEN?=
 =?us-ascii?Q?d14phUGrpoIYSQRxO84v2NfAFFqQ1yQwoE4jAT9fApISmJyV6JckLmh6tGZJ?=
 =?us-ascii?Q?OUtOvBxiuMxZcZh0kRTqyVex5psADuCw/CdsuCKRCfLXy9q6UtMDW3D+o8oX?=
 =?us-ascii?Q?iQ/RTpciiGcuO5IBmNTTCegJjWk2u9mOkij6UMOg+Jn84R4HtWal7UOk8t2H?=
 =?us-ascii?Q?oY5WEpzsYLH1548E1PiLTIgIaprBYMHU+svIvzv49gKsBsmF1y8DkrZt0ypX?=
 =?us-ascii?Q?n/akZytDcJyaxuqiEH3X0KcyVHoLAOF9R4WJVLXxKSiIan97t+8mDfFAKSUk?=
 =?us-ascii?Q?ZMUqsZTgNxYy2wz5T3DR2AVPxkL9SvHiDv2Jlrs9263MAzr3V1LsaIpPNjUa?=
 =?us-ascii?Q?cOakwjxRINiEkb7QYQ5NMMwkhytilboAQ5FPQEExxblVkzSzM+CAhFWqAOFN?=
 =?us-ascii?Q?IZKvG8xb/Usm2viz+5yzsT39ngtLwbxTgjv2g3v1DMMpJaFhQWFDOzUNFANr?=
 =?us-ascii?Q?tDRmJehBYMTVL5T1hAZaH3ZHKxixtxjPcTdDop+iYBLK1ngcbk/ucp313JGp?=
 =?us-ascii?Q?9VUMf0j7laqTS1zsSQBm5kGo1WIb6Inhk/q4XVfFiSHzLvqxW07fYd5YUu4v?=
 =?us-ascii?Q?hmK1TvaLHwywgpnWYk+C2bw+iJupXU6iiSqdxLPdDfRB6SDv7h9gpNvtR04K?=
 =?us-ascii?Q?f4uY4lEbpD3qvKKqvVBbCmvQFBKJfsoyqdrKley1AG/XhFjVsPIAOwTExamT?=
 =?us-ascii?Q?UAbLIdY7eEeE/VL7Fh58jFYxAlzHoI7F+CychxuEgRfrcE2A+LrdjDFzjM62?=
 =?us-ascii?Q?Dp6S8RaMrSsxVJEQgZQkBXej0OCcE+2Mn1gJmsAzuRadh2wJSWk99l5orVXq?=
 =?us-ascii?Q?uzUpe8Dd5kNzgosZ/na0PaGI0IMBseoaCE0QSRVxtXxFQsoY9lvxsPad8W1r?=
 =?us-ascii?Q?Ge0AE62Bm1FFj0Rl5EZiN2tLRNfrTcGEeU/JgqPWhw9m/NiBZ0dPBNveFrAV?=
 =?us-ascii?Q?Aa81q6iogxuSaIOGhHqz42sfXKi488spG3GIGbbCncmDFG0iIaduqPqL2SHN?=
 =?us-ascii?Q?7KOknIH5srTcNQ4XJpAHwAKxokr7wug/pnzm6pX0tDmkZdUXPH9tOZHsWIRU?=
 =?us-ascii?Q?J12/yazVz7IfRz444Lq7NIOMeGFpeNuNFu9EZ4rfXe0HjWpWtdS0R8jBqbHD?=
 =?us-ascii?Q?NHH+SGzTC+7YVH5zQ0jYQZ891kiv7JN1qDF7QFENEHhA4g1Ay80uhZMcCJ1A?=
 =?us-ascii?Q?ybtDvxvg4O/8XObqyBiGMtXqaReEZTlbAogF5tq4vNlQqlD5xs5cFb/EQIc8?=
 =?us-ascii?Q?PA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ad41a22-ecb1-4ab8-a35c-08dd78e5cc2b
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2025 10:44:12.4593 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8h8AA1J+myw0QbkLxyuMF9TNq06DEeIvc3soaQZxRNVwTWeaihpm15fuHJ5gl/akoqodxP6qMc+oC+q/xpFp40Wu2sc91bWZFSkMHdpioNQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5223
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744368257; x=1775904257;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ENKiR4nxY3YSFBhmGRftox0Kk/kuFTvPMYIA8DKODos=;
 b=k2vfC9nlGF3bky9oOsCy8SBXUX9H2g+WWfBU0XMUd9bikcscBcpBMDqU
 OzPq5D9oYdJEGb2QZhT9wBS2yUItSzfIxvZjpT0PlFnm8HCgow8JFuNeK
 4Cs13j/zN70mzV0uWqpPsjG41RMhF5pfkGCd1g33Q6WgYyRdkxem3nnv9
 a8iRh/ZerfGtCZQUtm5xXYTdDB1V6pQEuzOBbDqjJlwgixpgYV9ridx+q
 rJL9N1+OETeilRylf5wmD0F9y1yiXN2hfdQbYAxmXGzysQbCmBiSonNG5
 aVotwQTGlV7q60D6tVtIzQzz+DkLoAUCTMQeDgyrdrcW8d91Ncl4/tIjk
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=k2vfC9nl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: improve error message
 for insufficient filter space
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
> Martyna Szapar-Mudlaw
> Sent: Friday, March 14, 2025 1:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Martyna Szapar-Mudlaw <martyna.szapar-
> mudlaw@linux.intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] ice: improve error message fo=
r
> insufficient filter space
>=20
> When adding a rule to switch through tc, if the operation fails due to no=
t
> enough free recipes (-ENOSPC), provide a clearer error message: "Unable t=
o
> add filter: insufficient space available."
>=20
> This improves user feedback by distinguishing space limitations from othe=
r
> generic failures.
>=20
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-
> mudlaw@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
