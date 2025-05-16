Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 27ED3AB9675
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 09:22:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3956832DB;
	Fri, 16 May 2025 07:22:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id flilCcOZMFhu; Fri, 16 May 2025 07:22:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C250832A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747380150;
	bh=F4Jg4HL+qkFjQIrAdoiiCgfZ61JA9vGZkRIA0U56mTU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4NlET36W5dcOiCcLTLXtjzOxSjb3nRPPgPTaC1iH8HJ6wp/mxZXlOwsVALirXs1gw
	 XnYUS76H01igW5QDE16obJl2/xgja7Oko5+Jx8A0VT+z8xf4IcOwWJ5DIvkfoXaqlb
	 bYWX9vpGCg1Q4EZNesdCLajSfmIYyxigOwECTIToRejgn1z+Xpzd6W1cFOBVsuYA+S
	 TySeYjxAilhJjEWKprAbLvnb+i3HS87H/kMfO6faxO/GfuxaQ0afQaG+l0Mx42Jssm
	 gO/DWS/Ilf462ReYb1qPjAb3v7ZctgcVOgHRBbLWyGoKR33Ie1H/qf8YxrK1WRgB+w
	 Hq/Nip/3wvrWw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C250832A9;
	Fri, 16 May 2025 07:22:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8D35D1AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 07:22:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7E0DF831DA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 07:22:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TUD44fPtA4Xw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 07:22:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CD374831B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD374831B0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CD374831B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 07:22:27 +0000 (UTC)
X-CSE-ConnectionGUID: kpPEbmzVQ56phyqz6j7Ihw==
X-CSE-MsgGUID: 2j0Uew5wTAOQ5DvzCqq/HQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="49450508"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="49450508"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 00:22:27 -0700
X-CSE-ConnectionGUID: uP+n7BExR++BV8xLqch4rg==
X-CSE-MsgGUID: Z1rxUapySTaWkHysVkCQdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="169546424"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 00:22:28 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 16 May 2025 00:22:26 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 16 May 2025 00:22:26 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 16 May 2025 00:22:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xZhtGQQ+tSZ0zJ9kBft7Yms/ZxSreMsgCAxQMypQoxLXyMzyyFNG4vG/WAF/CW+oMVz40c5PaD4mNhOcY3ib8JQVCtGaG7y8uqBtmQdHWA5ohH5gaBARFJql0r2i2FQjkPJClVZA8abt+7htZheKNxdMPA2Qc3d0W0h2LAil12DI5n5dUtYCgFnjr4o19zumx0G8yNjAC4tRvaE9oWXoC3H1+PDNUOyCeA5sgz2+binyLVBhvP09uBt74VbYCGykKZQxTGDJ2grsSws1kEHZAtU37W4UM438Hgm8+9KeQIWcT1QYC6hOsQErNixWVmKB81Kr1x1uFMrHVYUgYqHy2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F4Jg4HL+qkFjQIrAdoiiCgfZ61JA9vGZkRIA0U56mTU=;
 b=KPGIQh19UvGIHrE5cSMVGNz/oPN1buS0bWDuXCEUZFSQzomzHzKhymdCbd5pB645Sf7uJXOAgNVtz4nXFJgu7LNzRrsTRvlXqC+d7jnA0mu1wFdDhbbm4BMaQPoBGFt77cpxJAAbTagqykacQiioARJD27K3VKgtj81z5NG4vVLonI9BqLlrZNjmljv/vP85xbS7m8bukhG0pHGxSoTT6x/Qc5iAaDaAlxJNlFgiVVzmvK0H43kGds8uIWm1RO3el1ZgpMNZH80/qRtseqT5cY6LihdkHqqI1+CtcvwJglYH4AlaRV0q8VPopX9hEhxzjpM+fEnC/FHlTJxgW7xX9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by DM4PR11MB5969.namprd11.prod.outlook.com (2603:10b6:8:5c::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8722.24; Fri, 16 May 2025 07:22:19 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8722.027; Fri, 16 May 2025
 07:22:19 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 2/3] ice: change SMA pins
 to SDP in PTP API
Thread-Index: AQHbs6DAjSBaqqMgw027eueBAJjDGrPU/cqQ
Date: Fri, 16 May 2025 07:22:19 +0000
Message-ID: <IA1PR11MB62418BEA171D52858ABA4B958B93A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250422160149.1131069-1-arkadiusz.kubalewski@intel.com>
 <20250422160149.1131069-3-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20250422160149.1131069-3-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|DM4PR11MB5969:EE_
x-ms-office365-filtering-correlation-id: ada7aec9-5267-4586-99e3-08dd944a64af
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?vQBn1yY0BgOgn+I6fpW34GTr59XGemRTyFVhnrD02RG+tJyzNta5cX76g830?=
 =?us-ascii?Q?89ejaKIMGNTbep6xnGYsa4+1DPtCXxJDK8HnnOrLCwRrLAKaLSTpeOqpEKBl?=
 =?us-ascii?Q?r8VGBsPvAkIJqJVYjO3aFPE6gGEQh2hYMxXhXhrWrxq4/WDzY3I5KtfMe2Mb?=
 =?us-ascii?Q?QndrjNkIGFisn7opiBSFN8ZOatpXM23IEljB/7VEaf/0tyvvh5l7yw8tJBaa?=
 =?us-ascii?Q?0mRsYJrVxueABwMeLKLuCzufKV9/qMRdM7YNc1tB8YQVJC8a08b9rWTgcw8N?=
 =?us-ascii?Q?u8Em7Vm4jEzkJ+6RapAEB/g/ePNZAngF+FPfeyCxsQm2yer5un4R1GJ2PWeN?=
 =?us-ascii?Q?yJPfJAhJiUap7lxA1QFXTvaNDUzFsa9cAYGkCBP+6T/DWxjXiqV/sZxbZEjr?=
 =?us-ascii?Q?BTLrZv2uz29n17cQC7tq1AWxtRfoU8+yYXNUMIja5s1XchHgA/sf0bEivN5A?=
 =?us-ascii?Q?fqnLSZU+bFw1jU45F/0pFRJQqZIxg+gKDQ8no/XTV59vhg8nWfqGk3LrKmz/?=
 =?us-ascii?Q?0U8OyQJrPp76dPCMwzrucJQuSnu8DnfP2DqGN1sKfYsBeSpAZRQPIk1Zn/kN?=
 =?us-ascii?Q?wfVsqey0n1NdFVnxRgyCLbfV4S/ROi8d5pKwFyVNLR1+Pu8h0pOyzmKTPGlI?=
 =?us-ascii?Q?EwjXUPnt1UiMsrW3WhbsmWM9MCjgq5r/TVB9S92rY2yeh/ELa7Y6KsykNO0p?=
 =?us-ascii?Q?B848dk2yPo5rCgjZEWot0+wmfFzv8NRsiHyQ9ZWo+c8k2vDyXoaRswe3UMWF?=
 =?us-ascii?Q?o69ub25TQR4b2Bx7yE2UF+XTU007u0fF1mzAOn4uv3Q1EYz6c9q7nwcIrfEL?=
 =?us-ascii?Q?DyWJSR7EBT7rqNIMzyI7nRq0xQobIiBXYY+kogIHbvYFiVrsW+AQm6kwEFXP?=
 =?us-ascii?Q?VTx92A/KExQR57ffqknoeF1a80RoyZ0HTviHZwC5qFktvLKRPHkNmMOwPM+j?=
 =?us-ascii?Q?xvtFPCtg7vIVgrYJr/C1OFjUCgc+1Tl0b1aqpCGAEAyfLD/aYaMHM44XqzrB?=
 =?us-ascii?Q?avGXyjgWA5IkgjjljW7ydORttuu1Rwp87twFfB3U3u3+LsABKMmi7pUO1h+u?=
 =?us-ascii?Q?RJYsyBUQh52EzNweR/PD2BhkSoF3NlopQgEp9YJnO1kCxajJyN/EyUAQwraB?=
 =?us-ascii?Q?c47cBTABHYxOk0arDrjtwgy3Kieeci36KCdefY49OGM9YtDZ5QW/YQT/zgJD?=
 =?us-ascii?Q?Qad7dGOlZxdjxbCS1tJ3fVTDiFLX6ZANc2eatnchjG43tKk8OsqkxfqMktmG?=
 =?us-ascii?Q?CuiZIS877rPlICtwIHhszBWZgHsUudnpF1t+kQMSutEEIXjI308qJMy0GXLb?=
 =?us-ascii?Q?UIA0hxsxDqv1lHOhTdP7uAtU/JJwsJXQiRJcVf7swVhPUs793UdnFHE8F1UT?=
 =?us-ascii?Q?qu+XNWw5vcPrvYuBlGHY419Km06GLBu2A7I1KBZM67iL1TcMkuA5tHATxQos?=
 =?us-ascii?Q?PQBeKFUJMJMEtNkCpREDU7cPvDVsT4hgLF2xcCmpiXTQNNOg45DOwQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?c/35yfq3FqsgjolRAPrLCnbcpXy50OxxdI3vIy40+WgzCK50YgyRBF/0nU7k?=
 =?us-ascii?Q?hw83cPr12OgEPqe68dlV0mmIAW/7tEflvxZQJIMBYGRo1SgQFddJMfPS3Db2?=
 =?us-ascii?Q?c3+cZCdnwb/O3o/2DGDcUCwCOU8gikTMh7D6T0iv/D0fRbIWYzuzdDJ9GTpp?=
 =?us-ascii?Q?k2SFtNhGmKGloW+U/xwgaW7S0Y/I1bznzcW2ai7WUh8TSLFFT7nK3q1UeSo7?=
 =?us-ascii?Q?ove0mKZMxN05SrwdHm6szUIvBOEDdT/Bg/B2TzHgZmL2RUgGPYWV9T+fEV59?=
 =?us-ascii?Q?Eo2G+W/Qoq3/hqVV1RyQVK1P1yfSvZJ1tt1B3NdP5y2R85uw6ma7pde5Qt4g?=
 =?us-ascii?Q?JNKAVDQNUM9395vqHIa3Q5f43SKdz8Mdq4U/ROtdik1QYeqfajaLOkL4Mnfr?=
 =?us-ascii?Q?nmYBe5dHbDQM2ZlhVCb6nUppJMcJZ3Q8R8I2N+ADi9v6oTd2QO6G/e88WxJ8?=
 =?us-ascii?Q?SZsPGhKLzOfqKpOnC/pA4NJGUz0rCRaEhxKjW8OZQDdFbE36qp5+trtyLErL?=
 =?us-ascii?Q?Il/m9E7III/uNye6HoM3l7KJfDECzNDdXrdzEPGce5/heUuOw6Sl+qUo1Q09?=
 =?us-ascii?Q?OpiM4gKEfwGltLBVKpU5QN/mnDFCaDJFHt8PbYGVPDrZIuvPzD4Q/21Baohh?=
 =?us-ascii?Q?FkCELS6j99lVz4ZpQlb/j+ydrJhnIgX6FyRbBaDB7VBLNJgJCJfjC9X6iW1k?=
 =?us-ascii?Q?bJXkR7pholqEzmXB4poE8JLAzPs5g76xyPV4oRqyE0axG6jKWLOjYUqQ2ep/?=
 =?us-ascii?Q?Ben1gVzj0r/rlhxdVy054tm8118/ww+E4jeO4h/jZr6kzJxqzoPV72MI2x+4?=
 =?us-ascii?Q?/VCX4a+9xG5F/jQCAhpJipqOZSAFBGi5xEa+cYZDlwl+QQ23wWYe/+YYcwM1?=
 =?us-ascii?Q?6cy8gkNo5fLYR6wTKqNj+laFUyytkQrKaPWv5HPMk7g28c8FyGAogzWhTf1h?=
 =?us-ascii?Q?TPPPa5CdchM1SYAuDjTp34I97nYVyNrBCsqMWp6mU7Hx62vxX0VrE7HsVj55?=
 =?us-ascii?Q?3r22r2ZShwPNF7PpqnrpiCJdF+I+5YgUPQoBHZKDws7txPjjiYFPioZvyXxH?=
 =?us-ascii?Q?BI+i54gzodVmTNYr2XtG+pKn5wqy3AwB2y9rpOjFfii1EPsb8T0/yPb96N9/?=
 =?us-ascii?Q?A7MVzy8nn5oVRzxZNTsui4ZtocwtODIpPZoOStz2dStWkPs3Ib9hm53GKoxr?=
 =?us-ascii?Q?krMrC44k+FwFHzaRQn66Wk9MiP5BQdXn7n2GR0ne0kzijDf7IVy3iVZcAcgu?=
 =?us-ascii?Q?QcEn78d6WJhbSfltvt11LwsiCUZO62CrMruRIZA75jlPIXjbBzc+r/BrsWKe?=
 =?us-ascii?Q?ZKdqUly/WnLkgu8M114PDBljzuhrr5GvCNhDfcjYNGn7TpM78lSJQ5aoCeNI?=
 =?us-ascii?Q?FnSV5Wh17/yXEsKf9CRKyZ1bclqyoCuzCjUHaCQweJAAkd5sykmMqOC+uPLY?=
 =?us-ascii?Q?s8fywVledw66VeA8TXR0ni+TH2k/CjIKdVVeD8qd45fqL2VNhXK8+We7HxXk?=
 =?us-ascii?Q?u3Vg3NHF3hSIfukEdDEYUrF16/OkGBZGMGYTOIfX6Q0WKmrTWHOhSCEyrG7A?=
 =?us-ascii?Q?nGZ3d2C7b5tlz6iPL1hxzsPnJtKppSvQOabFetLP?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ada7aec9-5267-4586-99e3-08dd944a64af
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2025 07:22:19.4101 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +B0LE1e+Zv4yR+uOFpBLeQYsPPaNPE6Ivrzn6Xkg2gDXXYI0JNcsC0fA0wliLtzWWud4fjGCAZcpclu0lBUw5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5969
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747380148; x=1778916148;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=G3oRIejzdLi+hY/b/FLO2Fn81F2fA7nmYHU/MHyFftc=;
 b=K5VRGjs5Cw4KaHUoQYVbI+w95cW+jK7vEWSqtpqLkm84TDflR6rdSExD
 mdzXzoyiGupxStEHCMQkHbzanXKK6H/2q94YWBtmXWKV6/4vx9oA060oy
 QP4raeg2qv2SuCtCu6bL3E8wMdLjkGOothATMF9bOVEpPt8P/9CIokwMj
 6QAbLDK5KjgoD+9YMJHjJMBumqUHOqoZdyX2JonxoSHljtau/ztrdWy0s
 v3ibY0rF9udYvZ7/B7pWKrxDNLOX3f2QOpp2fqSNniSq0C82S5h1gdO9b
 h9W8y+/dBCY5LdWhJ1XmMgcxmf8bPXFePHm9G7M3hI7Ru8ZlsvRjCZCNv
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=K5VRGjs5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 2/3] ice: change SMA pins
 to SDP in PTP API
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
rkadiusz Kubalewski
> Sent: 22 April 2025 21:32
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kolacinski, Karol <karol.kolacinski@intel.com=
>; Olech, Milena <milena.olech@intel.com>; Kubalewski, Arkadiusz <arkadiusz=
.kubalewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 2/3] ice: change SMA pins t=
o SDP in PTP API
>
> From: Karol Kolacinski <karol.kolacinski@intel.com>
>
> This change aligns E810 PTP pin control to all other products.
>
> Currently, SMA/U.FL port expanders are controlled together with SDP pins =
connected to 1588 clock. To align this, separate this control by exposing o=
nly SDP20..23 pins in PTP API on adapters with DPLL.
>
> Clear error for all E810 on absent NVM pin section or other errors to all=
ow proper initialization on SMA E810 with NVM section.
>
> Use ARRAY_SIZE for pin array instead of internal definition.
>
> Reviewed-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
> v5:
> - no change.
> ---
> drivers/net/ethernet/intel/ice/ice_ptp.c | 254 ++++-------------------
> drivers/net/ethernet/intel/ice/ice_ptp.h |   3 -
> 2 files changed, 39 insertions(+), 218 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
