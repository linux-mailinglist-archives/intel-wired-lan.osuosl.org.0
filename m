Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BC57D913221
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Jun 2024 07:28:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B0AAA84216;
	Sat, 22 Jun 2024 05:28:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4_JSk-lA_-25; Sat, 22 Jun 2024 05:28:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DA8A8421B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719034115;
	bh=pzMIOj69cT51ZUMF9QoReQXwBI4caN/xCVYaT0MzASM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=D9FmQbAYhxZljmTL+aClv7xuzfS9f+6BlmWg/98pl5EsUFMfVFuiuvGwUUnyhBK5N
	 e1FsoLJcgw37J9/Us8SrnL61qb+PYfoF4858vG7fNZcOAvwSN4M4xIqgcfAkdPn6Gq
	 YAE6jOLFETFAt97ar7Vow/dLHmGLLIX93qAsGQXklFDzCmoov2LBoq2RJz6evx8qVt
	 MLHY6vO5gmBzbFCxjF0GhgWW2+37yp9ISo7ah5hEVOJ6DirAZWp3+97oXuEVT7Accs
	 RChpelKX/nrCTRnqNc8hCrgNobktbgfssI2udYWUvXARCXklg+C1QEl7GwR8gIHUdg
	 NAJrsYtet7TxA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4DA8A8421B;
	Sat, 22 Jun 2024 05:28:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 874031BF616
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Jun 2024 05:28:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 71D3E40490
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Jun 2024 05:28:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DC47d36It0cg for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Jun 2024 05:28:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=anil.samal@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 12B11403A2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12B11403A2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 12B11403A2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Jun 2024 05:28:31 +0000 (UTC)
X-CSE-ConnectionGUID: 56j/nUPcT7ae7rLEzDhdhA==
X-CSE-MsgGUID: BsmzbQPRTDq7NOW9Am3uRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11110"; a="15908110"
X-IronPort-AV: E=Sophos;i="6.08,256,1712646000"; d="scan'208";a="15908110"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2024 22:28:30 -0700
X-CSE-ConnectionGUID: c0lUm/ZwRBOjgtmXEoC04w==
X-CSE-MsgGUID: wYvUwu9OTyiksiH6HfK71g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,256,1712646000"; d="scan'208";a="47144151"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Jun 2024 22:28:30 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 21 Jun 2024 22:28:30 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 21 Jun 2024 22:28:29 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 21 Jun 2024 22:28:29 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 21 Jun 2024 22:28:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ea5eFgb5Wn9HY48DF3H0RRbdMiZVKJFKX26Iettft0UFWaMKlu7B2TUjomFNiVQdrX5adGT18yTrGqH3i4t7mJQdso3qhiCV9MVjShjkWXAlug4loANZ6oxkfC2XrGVUyBzEAWSOclX6J8G76d8RD+sZ2N2Ex3DjPrgpRBentRJH9lWZX7TtiOjZcqAcNgl9qyrpCJDQqRNBoCAidQpwGjURUAkAVrwQIWkgLA+R4Wh8KKNL4ZxU4PoDVu79RXeRWy9Sjl1VTHLRvzhsWgW0lFSyinmVymZaIYIuX50PeCXn7AA08gTrvEB+uJKrMMwtiQs1fHszNc+HkIeEr8Bz8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pzMIOj69cT51ZUMF9QoReQXwBI4caN/xCVYaT0MzASM=;
 b=fYtAxkkDDrYwx2WqmBWcbuExIaYd7UqYI9qhaQNhDk5nB4zgp7VDHO/hFtUFoIKatth42Xuc0wrqEE0WqW2pEuNi5OKupbvD0fCGC0yIvEQCn4I7ZSWUsDPj6bhQdA//VA0G6ERbF5s2+QS0U25Ikq88p5Nl9cnFGjLlUFU/y3jxC4YXX7z95wFN9ecrOxDd1hgiWKfpDQjqNkcuKrFh+s3EUTnCD2bjMuo2Hf/yNU6J7lPBWkJq1e+Ugkf17VVYkTTynlZFx1V/TM8fVSXe6cgvma5WQu43AnfmnamIG+azwmQeRLCqnymnpOYgM2Cj5mrV4mxvljMkrZW8HP7Zmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB6037.namprd11.prod.outlook.com (2603:10b6:8:74::5) by
 LV8PR11MB8533.namprd11.prod.outlook.com (2603:10b6:408:1e5::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.25; Sat, 22 Jun
 2024 05:28:22 +0000
Received: from DS7PR11MB6037.namprd11.prod.outlook.com
 ([fe80::f0fa:ac63:c0ee:4de1]) by DS7PR11MB6037.namprd11.prod.outlook.com
 ([fe80::f0fa:ac63:c0ee:4de1%2]) with mapi id 15.20.7698.017; Sat, 22 Jun 2024
 05:28:21 +0000
From: "Samal, Anil" <anil.samal@intel.com>
To: Simon Horman <horms@kernel.org>, Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [PATCH iwl-next v3 3/3] ice: Implement driver functionality to
 dump serdes equalizer values
Thread-Index: AQHavlrAa4g68VrBt0Gd/ieDRXF/L7HIANyAgAQOcQCABzxk4A==
Date: Sat, 22 Jun 2024 05:28:21 +0000
Message-ID: <DS7PR11MB6037FA210CD54BD11F3DF94099CA2@DS7PR11MB6037.namprd11.prod.outlook.com>
References: <20240614125935.900102-1-anil.samal@intel.com>
 <20240614125935.900102-4-anil.samal@intel.com>
 <20240614175559.4826e4aa@kernel.org> <20240617145242.GV8447@kernel.org>
In-Reply-To: <20240617145242.GV8447@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS7PR11MB6037:EE_|LV8PR11MB8533:EE_
x-ms-office365-filtering-correlation-id: 2b144e87-59f8-4833-63c2-08dc927c2188
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|376011|1800799021|366013|38070700015;
x-microsoft-antispam-message-info: =?us-ascii?Q?OyER05klou8NUGdnHgumi9ZuDzd6Xk+EPancs97NvwlngscXF1Ykc/+LMZ72?=
 =?us-ascii?Q?MrZwSL8Fm/mrcMd61gvw4F5Kd4OxLx3+SS7VBQY83b2jfBqQQE8hs3Qferdi?=
 =?us-ascii?Q?kVY/CmyxN6wvzCN3H8p5GsHfX74z28TyUlgzADniQkQZdRsFCaAsXOSYyeev?=
 =?us-ascii?Q?PhROJ1ZUmSC/XcjEkCMNq6wwSm3v1/HuyFHFizRcWfUmDCo/+Y/F5NW7mlIH?=
 =?us-ascii?Q?68cal1i0l7UqjDpItGrBy336XsJOJxXgf9d78rBUf0ySpWK6FpqiL8RrBovi?=
 =?us-ascii?Q?ooa2tsCSqf4x//bi0V85VBahDwDdvxd9yxzjyaqXjIJTxWSj3vVnC8KaeU7l?=
 =?us-ascii?Q?fFhx8nI8Tn7JK5bd2q+f812hJknahx9vlTU54vnAPE71U6O3/kGfYb3mjR1a?=
 =?us-ascii?Q?IJqExVrqLZ7/SYJr3FPX8Xfr357GPBqg5PZzgNUZcS1Zg04sRf8vo9tbzo3n?=
 =?us-ascii?Q?zCC5M0cDwQR74O5E7MHkg1UPq8QG9d74NMcCLOsD0bkiIV0FvhkJ6kNM3r/L?=
 =?us-ascii?Q?Mmq6YiFJsVN6xbuBnBTe5UYzZitIWCOeAYSoCNvFGhMi3sTp8HMa4n9YjB0n?=
 =?us-ascii?Q?CHGbbrgsq+3nBRBoLqOGBA/FCW5lG2Y/NwK2c4pZYhEoUtDUOwoWxjPkLtxw?=
 =?us-ascii?Q?Fyd9Czepu/yjnM2zSd39z5UkNOalIn2oOJG89HnjEWx3vriHlmmyEaQNAYTa?=
 =?us-ascii?Q?Gi/yWbD6aO+vq/YBkORwbAu4O7lliTJh1lpgfPzO6JIHA57xcYnEjCjrdrnL?=
 =?us-ascii?Q?CSk1Ms3yJK7PL/K8/nqXpx+HC5rmnCr0BOkMppY6x73ubuOv3QWkT/egOu0S?=
 =?us-ascii?Q?qCklDLkrz9Z3PbSaoP6WU6mzXCnCoL8tyjrredfpp20Tw84VNlTgK+lsYEuT?=
 =?us-ascii?Q?s4tdIulJpnqObPUUBtwZXXSIpoSf7aiBAp+D0t7d3cWogWXAX4/ADxAo5ZyZ?=
 =?us-ascii?Q?bx4KoLIleC18Kn9c626uRMoUaDKorfp6mORpl66uSTbd1mFkQ+D9c8HmyqZ0?=
 =?us-ascii?Q?/tPxaiqaRSMqz3EvyYeEQuW33zugYmETZhK9UVcrEzjp0UFJ8rPvRw+9Kob1?=
 =?us-ascii?Q?N7anyr+y8b5+zYbbKhDKT1RWmI0GuemMBjlKSmVo7l0fS7Ww82DiBErNJTLM?=
 =?us-ascii?Q?/fzix8xehEXXx5p+OVnOfUGSvofJ36QUDUQmHlpwJcy8AJlE7KrKishKqd3R?=
 =?us-ascii?Q?on4XcXgZEjGmD02gOt88hWR+l0ewxHM+VMqtBs9oOoqKoLmdSChwATN3TTAj?=
 =?us-ascii?Q?iienwZnpK4uE4bboTC6Ry7I2r57N1ftVsyYKQaTEt3OCtffuXDNC1+6gNWUZ?=
 =?us-ascii?Q?6ykvezzKN6/9BB4xqSOcMRZKoqaOs37hUs6XmCsrmDZM8NWJc4My9IP5XOtY?=
 =?us-ascii?Q?LusUFG0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB6037.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(376011)(1800799021)(366013)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?h3AA5ef0YDj9TZspAfP26Xqv+9JeR/XgLxDwRhegtIB8VVTcv+T5GreHpjwi?=
 =?us-ascii?Q?/axhtmw6/2PAictnFRWvaX5XntYZe7SiiMnp5WYX+xc9SGEVKoPdjxxBeZDG?=
 =?us-ascii?Q?n53+D7Z0RpTIbe+jIld1Uq33dQOxYS0kr6rFwI1TaY3uHqqZ4S/2OCGbB+Y9?=
 =?us-ascii?Q?zmYfvZShzNCbDuehSz8su5fTpluHgnQzvJmcP/ky3bdKZ8leWAf3ckIoYuGX?=
 =?us-ascii?Q?geuYZmzNqe+o8snQsHhKXtPgn2D6vudIbUCEH1Y6VMrSk1CZWBYzE7EAOaS9?=
 =?us-ascii?Q?vszzS5aILyFaHjmq9Qq01M6iakrvYrTXphoKi+rnKXrGP6HuqGackRGJqQzJ?=
 =?us-ascii?Q?E28IzLqnCPUG9NKc3BGJ3a+1Yf4pii6bfXGtuFcqpi94ksbtbslPEpgL2NA8?=
 =?us-ascii?Q?xAk7nnIHWzXzyhI65KYYJ/5y2IMXFWuW2T3aVrFilIfyGFtoLB4tmBJE6Pln?=
 =?us-ascii?Q?Kh+OPXum3/stcSj8wNIOrF2pVk+o6cTQFlkF/iuPOllOfz+r3Vo/2eT6zPUi?=
 =?us-ascii?Q?RKUO5a5hem24lk3ciMoBs8oZTyFHeESsHTeDcjLk467jXSbXrcHaGe9KlPKI?=
 =?us-ascii?Q?e0DNu3GYmcafOHup+nBPINO8cFTcqT3aNTmgK3AL9+ZSntnsTBo4aztJSyEF?=
 =?us-ascii?Q?Fe/3Yr6GnC2MYQ9DaRi757I/ItaeEZrcdi06j3NW8sHfV5uaKs//PCf1wf9k?=
 =?us-ascii?Q?cXZXaTCcOL0Oi4erPSklNPD4HT7xXYXiV+zEBg8EKSnxb7/A6IcaoEGPPszl?=
 =?us-ascii?Q?V5nOY2CY6Zg23cdzvrZkCDH+pj5NCdiff9osK43dyx4QDx0gojTUWU4Uapdw?=
 =?us-ascii?Q?mokZSSC//DG4c9ez1PegwT/iYBAnV8dTjfFQ/FXMiyNNju8aVVp4JDFriB4f?=
 =?us-ascii?Q?EfB9+Jx9482sEfHU7vsoUL48b5N4IxF1Ud5dnPiBRdogPr4VBto5Ta/hN2TM?=
 =?us-ascii?Q?L4cx0u3GZaETg/HbyQWMdFffkTsuscdOWfx6RHpUigGTp+Z2viSkFcetrEl6?=
 =?us-ascii?Q?V9FppT2bLa7BzBSvWtxq1Oh4tEOsSl1rwWaz0xfIqwmexThFuiwUe55+khMo?=
 =?us-ascii?Q?YuREMFyIixDAOT7jPYOkNnhNcNIxHRbqu+Qne0HJYFSAtsh8s6LefGbkApXU?=
 =?us-ascii?Q?C2y26zpMmEQ+ITXzNYwwTRMxfFeOEnazGFG0wUAj/aRrrM8jk1b+sLE2yeC+?=
 =?us-ascii?Q?xosaJtGbWbfMr9g5TZBBRcBcwTQiIIdeCjkx9a839RLYkTe1V1grjCRBFDc8?=
 =?us-ascii?Q?Cuc+4mUZLknpmNTGytAES8Ff0VLdP6btrSIeSxr3wenVcLakFaf+1Pv4MS7G?=
 =?us-ascii?Q?d8HBY25VQjWhsRFobguW3ugUd+x6hnIQHA3+ythUBwBtokYqE5UchSa/7flk?=
 =?us-ascii?Q?/MpnJy4Q+CsBuSDxicBGqT3uKg0/Bis4kjuGVWeZ5VTEtJ96B4+5etNEeCri?=
 =?us-ascii?Q?+2iK7SE0tXH3g7xp/rms+71kHAFyjZBfqM8Sa191mFbRZjTNzpeGA8r6aAj1?=
 =?us-ascii?Q?eRyesXUvNc58XipgV3HuC5I8RzfW+kCwC9IlP0N4mebmgcD2rXMWmCy0liMW?=
 =?us-ascii?Q?vk5uY54AbCNRGSNIozi5AHKny+z6DTxiNGb+i9FI?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB6037.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b144e87-59f8-4833-63c2-08dc927c2188
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2024 05:28:21.5848 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CQKTM2sxDeoDYXrDhzCcydrN2Q/c/AxclJqNhb9RvXaPDyWub4Xv4Qg2y6TYw9thSeLSw4nLmI/s0rrEu2UrVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8533
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719034112; x=1750570112;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lbTWvn6ylYtHDAKZE2dfLm/LO17r2VN4nHaQK3eBkh0=;
 b=cKkKthjJ2TB1wGQ7D7PdDplvMP5Vrem0olbcJtcWVgl0O0EnJC6irYJC
 32A4MHelvAhCsv6lu0ADzRnpgIuifSciucvg/lckK5jtaiG+A+FsM/nMT
 vlB7EEaINOltZCyfgfwLf0jTAScDS4wvT6lzv/6A7z2W30tAAJObSu/Wm
 Kpd8bgqQ466/+MkdQE0enEYEFibcXI2DijBuAWAJkoQW7UknkKabJlVTJ
 8IHB/LpVD9XzajN3n4aGwio4ICP9dW4FwhPh2DaqW9AcTixdsaDRwxHny
 j/jDasVPuHvxGvTyE7C4TEsdkoo871ui7yXGqBh6sJNVAb/1VHpoPS1sm
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cKkKthjJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/3] ice: Implement driver
 functionality to dump serdes equalizer values
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Czapnik,
 Lukasz" <lukasz.czapnik@intel.com>, "Pepiak, Leszek" <leszek.pepiak@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Simon,=20
Serdes equalizer parameters are raw hex values and it is not useful to end =
user. It is only useful to engineer who is familiar with serdes/ physical l=
ane.=20
So we decided not to implement it as new ethtool option.=20

Thanks
Anil Kumar Samal =20

-----Original Message-----
From: Simon Horman <horms@kernel.org>=20
Sent: Monday, June 17, 2024 7:53 AM
To: Jakub Kicinski <kuba@kernel.org>
Cc: Samal, Anil <anil.samal@intel.com>; intel-wired-lan@lists.osuosl.org; n=
etdev@vger.kernel.org; Pepiak, Leszek <leszek.pepiak@intel.com>; Kitszel, P=
rzemyslaw <przemyslaw.kitszel@intel.com>; Czapnik, Lukasz <lukasz.czapnik@i=
ntel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Brandeburg, Jess=
e <jesse.brandeburg@intel.com>
Subject: Re: [PATCH iwl-next v3 3/3] ice: Implement driver functionality to=
 dump serdes equalizer values

On Fri, Jun 14, 2024 at 05:55:59PM -0700, Jakub Kicinski wrote:
> On Fri, 14 Jun 2024 05:58:17 -0700 Anil Samal wrote:
> > To debug link issues in the field, serdes Tx/Rx equalizer values=20
> > help to determine the health of serdes lane.
> >=20
> > Extend 'ethtool -d' option to dump serdes Tx/Rx equalizer.
> > The following list of equalizer param is supported
> >     a. rx_equalization_pre2
> >     b. rx_equalization_pre1
> >     c. rx_equalization_post1
> >     d. rx_equalization_bflf
> >     e. rx_equalization_bfhf
> >     f. rx_equalization_drate
> >     g. tx_equalization_pre1
> >     h. tx_equalization_pre3
> >     i. tx_equalization_atten
> >     j. tx_equalization_post1
> >     k. tx_equalization_pre2
>=20
> I'd be tempted to create a dedicated way to dump vendor specific=20
> signal quality indicators (both for Ethernet and PCIe). Feels little=20
> cleaner than appending to a flat mixed-purpose dump. But either way is=20
> fine by me, TBH. Much better than vendor tools poking into the BAR...

+1

In particular, I agree that either way ethtool -d is better than than vendo=
r tools poking into the BAR.
Because the Kernel can mediate access to the hardware and see the data.
