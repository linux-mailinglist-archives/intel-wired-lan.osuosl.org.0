Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 21321A9CEDF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Apr 2025 18:53:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C674841E5B;
	Fri, 25 Apr 2025 16:53:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zyzcdddy6MkO; Fri, 25 Apr 2025 16:53:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 39DFB419E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745599985;
	bh=muHHUeB5kK50l1SNr/8G2SNOoH8OlcdvZQUm1ELFP0Q=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TOo0pNhCJnVFkvwvL4jd/1KR9kHShnO7gR/MtFaiqHpbKKbIlzzKwExtv6xKCiT7p
	 fbJldl4HqdvFeFlHO2E0xZPbeh8501alXVJ7smzFjcBsPsltDAcE9kmPhx0P6zf5te
	 pr+gQDakHhb4T7cUrPEPZHKWHdoGQ8LlbEqRjP6R/F1J5Y1LQXkS83aWcMuS1fp3q4
	 JFGnH6AkFbxrkQVKhniHe6VisGdHNOQWRcw7htZMLjLcFlKf/5+SzOu691FbEj5DvP
	 BjISKooPLFWXBeenQtbIJvYvmQH0t1S8PAe3SvyA/UJSRarf9I7Dwo7Y3lcG2NCrZc
	 N21fZsEBHDhMw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 39DFB419E4;
	Fri, 25 Apr 2025 16:53:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4D8DC31
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 16:53:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3F97760876
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 16:53:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 37nLiSL1E21p for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Apr 2025 16:53:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 737366087C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 737366087C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 737366087C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 16:53:02 +0000 (UTC)
X-CSE-ConnectionGUID: hV4OzKV1SsSYo/BOwLATng==
X-CSE-MsgGUID: 1QXmCHafQhSmprRtg9/rdQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11414"; a="47404423"
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="47404423"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 09:53:02 -0700
X-CSE-ConnectionGUID: NN+spBmvQAKkanwPCMI8eQ==
X-CSE-MsgGUID: 1/qS6rSHSf6V/18BTu4kGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="137780203"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 09:53:02 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 25 Apr 2025 09:53:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 25 Apr 2025 09:53:01 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 25 Apr 2025 09:53:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=El1IZuaer7FOKVp3/2Mphtvqy4UpIB5qI1LAtG51a3981omhf63pTJzxWAqAYR4QMe4PIs/9Pp5rz4gvhjmm+lZJpuDYIQgEcNrXgCOj444q82H446jnXsXtYG53g+k2GQeh82J8kFBSq47HtfIIx1IQj8wV7IP7QwboFnxEd4v4gl1Jta+wT7RxeXbJdXZU/nMDyfFcfiPDWjTTP6wtFR30Et3U3vdhnNTNN8NR1j6LiFCG8boyHC2/cvoK8KOPPSGsItd7L70+NHiuomukAWwF+spxxwzZjxh38nB4JwCWSTLGcH2X2BuLgt3bD4GhHe4mjGYBZzphl3pcKgzWeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=muHHUeB5kK50l1SNr/8G2SNOoH8OlcdvZQUm1ELFP0Q=;
 b=pR8PHCwjPN5SXozy3YYSt+MRUkXPD1CrUQD6wWhVW0BihmyAP4k9Oagsf9KU4FGHq+VQKViTbIkoGIYCnj8v8u3QWS9LV2GRJ6YSxFS9Im9gstedX4aOsUEJvgCHGE4JQVnFfVG5O4D9ub71j/dDpX4wX3Ew8Xsdo52cHJKAVftVzVdEAGJlBEpNVY9RTNgyP3BYmiAaJV+nJM8gubAu8fQlwfEaNrYBH/kkdne0bQiBZel/Sp/2/WPZZhRi1pa93e11Ifm8GN8kE6g/37oHSdxMttbr/3p68WfharyRWkW4krESzOcA9j89kdJcPcWfEa5q8jbb//o96Z+uuKFgiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by SA2PR11MB4828.namprd11.prod.outlook.com (2603:10b6:806:110::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.27; Fri, 25 Apr
 2025 16:52:14 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%3]) with mapi id 15.20.8678.025; Fri, 25 Apr 2025
 16:52:14 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Olech, Milena" <milena.olech@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v12 iwl-next 01/11] idpf: change the
 method for mailbox workqueue allocation
Thread-Index: AQHbrspjg69F02iLCEOdMVBnB41GSrO0pu4A
Date: Fri, 25 Apr 2025 16:52:14 +0000
Message-ID: <SJ1PR11MB6297D5208C687CCBEF7596D39B842@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250416122142.86176-2-milena.olech@intel.com>
 <20250416122142.86176-4-milena.olech@intel.com>
In-Reply-To: <20250416122142.86176-4-milena.olech@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|SA2PR11MB4828:EE_
x-ms-office365-filtering-correlation-id: 8f7c54f7-6adc-4fa8-7319-08dd841987e7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?2fScmhhcwtBERab7vvZpDOZuhUqJ0An5vUVxEuXdlGPYkNvMFz7ZVcs8Z3IT?=
 =?us-ascii?Q?L0Ne+/4OBG0p9XHJbU0TVJA93zsrZRhTL/6pZiG+gay86hpBvYzD/A3+4SeN?=
 =?us-ascii?Q?lNnt+eN2z3mLwrxba7tsqYMEQ+hW7sq7+oDgvUy4K5Bp1RR1bxQ5YJHe6SG4?=
 =?us-ascii?Q?jSm1S7rk5Se5ecGFdyEYRLBfNE6QLHUf+guPZkmlTVzXfsAobSJbrrT9zlj7?=
 =?us-ascii?Q?wQFjcNoOInWPL9zxsAODR3VKtQqLf9k1FroDGcFI4qzJzBVSk8galj4zGslH?=
 =?us-ascii?Q?S+gN1xwhiNZ79poQdw1vfHtnVQ/saEewtSb+wppfefBB1m3Kt+GflNhIznKs?=
 =?us-ascii?Q?8SqtDaBkHhKNV5/EPvIiGeo7VDRTOAnKB+3+xc1Uy9GgBQlv8Sjvr4tvO5nZ?=
 =?us-ascii?Q?x8qO+A5+7IjIbQvgiayFINy8Jc0blzMTMG3C+P2/F4MYLulVP+m2gDP/cRwH?=
 =?us-ascii?Q?UFHt552NuDGRXFvQwQgrO/KOA62sh1NeboRNEi5xftfR1nHENn98Hqsh27ds?=
 =?us-ascii?Q?QEHzk3/ScU3hiQMYdF4P0aFWIXZHozHOyKw41Gw6z1nDmvsEAOR2wp22nxxy?=
 =?us-ascii?Q?pqY3SadUzvl0o2rFQo30VM76Z6cQA0KQa1RWvVf6FLZ26K3m3sy3lzTDnHgc?=
 =?us-ascii?Q?PsPJP5i89ZE88aQUR625wlNWxNPB6sEdMrtypMeLAfasJOR8rQQ2Sxu0z2A0?=
 =?us-ascii?Q?K9xutbpnncQAnAGq9g75uPNmvXg6dMWYn5CafE7TwuA+JLp5/geMlUi2vNzH?=
 =?us-ascii?Q?fc2ttF4/lfh5LGNHMc/HSwwb8KRBEbiW0nyQYbke+jbz2oh1HL6IgkGJeFOa?=
 =?us-ascii?Q?oU2AQCB6RB6g+IOu2b+t1kpPvgNNK9mJfmn6kOaR+3qpyNSKeHn0d3/mJfs1?=
 =?us-ascii?Q?fTXgwHFOkI8/3uPEshkwWIsVz4i94Q8Io992gNeqwEGHxibVA0yQ0A1SmHq/?=
 =?us-ascii?Q?U42ip0k8O0nv3VcIBwQ3vpx6YarfuLXRcwBxZ5TUu4z3vTHwKle90ip0sVII?=
 =?us-ascii?Q?+mHfS1Hs186+YOMAG5IP4W5QJy0NZWHjDpEyd9b2Sl0/yKOnVfmXS09z7EHf?=
 =?us-ascii?Q?FVV97CDuJ7AIL9LYi8wANqUeP+KrkvVkYQdTSWhQqANfcVlYS7eWlIekbmiI?=
 =?us-ascii?Q?Pq+MQq6tRDHb5+u0Pv+QRQAuGGcGok90U7YMVPDBXd6RpbCKjfrrKTeymvHN?=
 =?us-ascii?Q?Rq4HaNxxhxk9t4gNc6eaZ0s4wOkdZChxvi5jxjGgd/hpK7CkAbNwjDuE+9qJ?=
 =?us-ascii?Q?vDzQt0p8uiWqX5yVejE+7M22ac0kcM3GGLDfK8MqZY29RFP5KFRr0ntlo35A?=
 =?us-ascii?Q?tpx4mJUWcQ67vK/PdLkAuHRxGan4AVvoM3ob3ZqgPEGQz2vfnBgPuNkd17Xn?=
 =?us-ascii?Q?GUJpGGgTuX7XEd/CyMxAjlOCRZInmg1RWzxBqlWMRxdIiUjs2pDE014yLKY3?=
 =?us-ascii?Q?2EIgMDQHT8e1wvZYGNK/jD0si2TMOWik9ckO7bkJsKM4n3+kCUQHMw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sw938HL/fJ2r41N2YCDERhRtLSDg+/UyQI06mz2t39Gu1EyS10cqbi1dw/CA?=
 =?us-ascii?Q?b6+FgDDsYMBfEqv2pZXn8yPboZ998KTPpZUA+/7HAyP1PZqN7z3ZGlqRN/Q1?=
 =?us-ascii?Q?62PJCwPclSHVLiz+CosBuoPVh2waDO0Y8zOTUfzDYNcfMFRIUV6QHOqgKIG5?=
 =?us-ascii?Q?J7zuvfaSYYyf2kpMYtRiVSuc2myUSQtp7dOye+BftN8CdDhl9Ku1hGKP2fe2?=
 =?us-ascii?Q?ttYdk8FLaXI4v2VF8ad4VNm2wXUxiK7zi3pQN8TkpNEC9FVHeZaaCDSyKg7f?=
 =?us-ascii?Q?pisH0ZhVQF0rrRrkkfSmx5udbo7DwsrWKMYBe3RBoBuj/diK0CB3chaIj1jR?=
 =?us-ascii?Q?R1grFlc4ySiOceToGGM4YbElLNNe3NXE2z1R5Awj3vL79yOcPMSOftHv6bDb?=
 =?us-ascii?Q?oukCQT5KkLu369S2OjbxLUM3A2ZDXf0Ln7q3kT/q/VcIdTxS7k51CnPwCuBG?=
 =?us-ascii?Q?KLFDIoyUxmJT+FSSpA87gcip6UhfPqqFPjJbGipGqcZn/t+RPhvu9szRqNGe?=
 =?us-ascii?Q?2hQg955BA/RrhXDhmTP0Wy2j99we/YKk7Q85AuAPYpNUnE0ckLzJPjQE/S9p?=
 =?us-ascii?Q?g7s+gDVZNvFygxW6/ChJQplFByGdjatJFBQE3XFGA2C+enAcOIQZ/yYK6zkZ?=
 =?us-ascii?Q?dsw5wpNnzvs3O5Ai4hFY6kvSwmq1RtlxGVDbANqVBlHdAvCGwTtloJFDY6kP?=
 =?us-ascii?Q?7fB3lYBW/rafEBOCot+uA0FX3Dwe9LblaGk8wghCckq9F34/8pf6oY5oPuIu?=
 =?us-ascii?Q?3hmb/hf6xiYkafzMcGuSFYOx0lqYbVoqAGGb06snrLHLm/fvdI40k50IJok0?=
 =?us-ascii?Q?SmZvF/5nz/1WzHudk+8nhsrltPd49rS3ew6MMGIizwERZxI8x4SwHRXTtY/5?=
 =?us-ascii?Q?wGFyMYqjNLw8KilHsffgI+ooGofoHEYPryg0ISj8i8+1+01iTnD4rKA9sRaS?=
 =?us-ascii?Q?3cMRSZiDZWubLZgY3LBUJyty0Qrco0I2hqFw9mMw2Mh9KpFtd0uas79FGKH9?=
 =?us-ascii?Q?G1iHGS/HmJgbWrE3pbX1AGriqTBKDb1P5qLbBcqdV09Rrx/SQD5m+3FOq7fQ?=
 =?us-ascii?Q?rK7Si/2oV5nHgHIwHdAqLAdjj+txxWagQEa/POlvE4OnoWE0CYTPx9zoWY55?=
 =?us-ascii?Q?gu9vgINnMFBV6E71Q85kj2FQmT6XaYXbYygAsl4+/7onCS65D5JY7hE9z9nN?=
 =?us-ascii?Q?TDVMufnW9O+xdijnGeQ6lCzKe6t7r1dPh1Bgv1zXT7NnTDT8axGYbtwEdI+V?=
 =?us-ascii?Q?u+oJwSvOU0zPovA1742gcYS/2j35/PEoCwulT6ajNIc7HbUBjQVr4NKdy19D?=
 =?us-ascii?Q?hlZ0JZSw2Eh7h/Bo7equclUnjH6sR8Iv2+Njc8fI0blx5i7ldkoOQcB7IDGA?=
 =?us-ascii?Q?5Puf/wW0dIZ0v6E5w1TvB71jgpaMBFcTPMw06c6WQQrWyYb11Q8QI2DyxaZy?=
 =?us-ascii?Q?X+of3ocPqDYEyU199bpxfcEQ/izGHkX2kWMfjPeZqAYnMOU0VFRButimN3h4?=
 =?us-ascii?Q?/y+0Z8vLgx3xYyzB6mVB1W6lq9C/fmy+QSPfCQtTNi+d8O5ykPah6e7Zz0hu?=
 =?us-ascii?Q?Rl0gK47H7ByXv+yEzT/r+rMNzNb3bG76KQW1A6V3?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f7c54f7-6adc-4fa8-7319-08dd841987e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2025 16:52:14.5505 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kXkgK83x7hQR0XXzvdCJ0d4vj2YdC5AMWkfI83n7vFL1CLfikINKDN1oqBOIAw+B4U8t6UnsCvGykD1uqsHk/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4828
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745599982; x=1777135982;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=muHHUeB5kK50l1SNr/8G2SNOoH8OlcdvZQUm1ELFP0Q=;
 b=m9HC9NKA/UgVu/9riW7mOSZjvQ1ykogJngtzpMubu1SMMGWIfSXI1nLE
 NvKIljm4DcEGVfh++P6PtwFBufr4fuVnSyo9VXwxOcK0OWzO5KKSSZ4FQ
 PU4Q67SlokYvqjSynMNC6gw6KBKmBd6hDG41cvqtKuKbJEA6qHQn4QB9H
 IHnORPw9cK1zSv15Z10rtz8TNdJ8EfUwZXE1JMi9g8menvR7HD7PCwxQ5
 VqC9sJ7xI5U06qGY8sZX0bFv1AuE4xVVNJeG8n1D/v0qsOBouQe1wlO0h
 LNzZvl8jogXnI8fiJFCKSmaogCZBwi9XaYGroP6NXzbwwvKKjHbDhwIhJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=m9HC9NKA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v12 iwl-next 01/11] idpf: change the
 method for mailbox workqueue allocation
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
> Milena Olech
> Sent: Wednesday, April 16, 2025 5:19 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Olech, Milena <milena.olech@intel.com>;
> Lobakin, Aleksander <aleksander.lobakin@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>
> Subject: [Intel-wired-lan] [PATCH v12 iwl-next 01/11] idpf: change the
> method for mailbox workqueue allocation
>=20
> Since workqueues are created per CPU, the works scheduled to this
> workqueues are run on the CPU they were assigned. It may result in
> overloaded CPU that is not able to handle virtchnl messages in relatively=
 short
> time. Allocating workqueue with WQ_UNBOUND and WQ_HIGHPRI flags
> allows scheduler to queue virtchl messages on less loaded CPUs, what
> eliminates delays.
>=20
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> ---
> 2.43.5

Tested-by: Samuel Salin <Samuel.salin@intel.com>
