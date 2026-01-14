Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D064D1F138
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jan 2026 14:32:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 19D568598C;
	Wed, 14 Jan 2026 13:32:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 45Hi7g2aklUA; Wed, 14 Jan 2026 13:32:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0ACA98598A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768397563;
	bh=Tl88OH46DD0JtefjlV2YwLQlkHbgMvYgGOA8vg2RDyI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VCLxSoNHeRZskIeJeEA3beGcYa4UTGIvSenOLoHS1sEORdTq5jLz3lEJ1rC6lCOMA
	 oYd7SKKbblpS5Lq4Q88MhZUxl3eEYHx3yWNYjhCfobmr+xa7TRN8/GSfvouiW8yQpC
	 fvTQGKbeAJEwRxgaC2j+eRIcmlqNx9zIJ7UAaUlVdJC9T1M6JZdpgEv3RLZufY4qsW
	 vDIVZK17Fd2GBUGQybZbZaJAVVHqKRhQKzO5SZqSxe0Lo1fzACE1lnmYmLz1LvhSm9
	 kuV18jM33dux/jCHz4f8q1d7sgDwGBaoacX74cyj/s63s6jhT/RiLOOalh5Ygoss4O
	 cY+1M0fgee7Cw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0ACA98598A;
	Wed, 14 Jan 2026 13:32:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id AFDE81CC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 13:32:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A0CE44011C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 13:32:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xIzxh22rjr-j for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jan 2026 13:32:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 097F34007D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 097F34007D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 097F34007D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 13:32:39 +0000 (UTC)
X-CSE-ConnectionGUID: BjX0jqE2QPKyWpgo51I/dA==
X-CSE-MsgGUID: nInwhJkDQhKlwgQmjc1y4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="81141344"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="81141344"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 05:32:39 -0800
X-CSE-ConnectionGUID: GZlhBCe2St2AawDCXHb5Iw==
X-CSE-MsgGUID: o5DS/qhuR0OQHQuDjXMXzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="204304023"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 05:32:38 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 05:32:37 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 14 Jan 2026 05:32:37 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.30) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 05:32:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HHFmSEoDDErVbcyD+GKyWwPmgHCV/NXOEbaOBt9/NzWbM+7VR+eDDZ+wRWMf4qh9IWoOlyjVsWnu4JydsGxyX+xKOmkKue2BXygPewPSX6th4Z3GrtPxBjWm5NhssK8yVt7QtOAQA46WmxE5uTJKLPu7YS5TILA5UnZmaCfhX4Z2UTP1cjOJqLF0wm3rPSKJdmgZXR5PF4JrCqkvaGC8ZFXraL/n/OHReLAYsIA++eUHObwmtZ0vu1UQFHKXhBwZtdfqP4sMoLmWomL018pGxDYAzF/lectRU9P8yOGltM1g3vdTO0Gv3eb/Va3TtntwQZIa2Tb2/TU+MmmiBiF7hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tl88OH46DD0JtefjlV2YwLQlkHbgMvYgGOA8vg2RDyI=;
 b=VYQyaVofos7izs4mj2J8X9QVC+j5bwhcZvUYT74ld5QK4VbGWeiPLLvDfy8IcqTch9J9dLCTARzd26kG8vKuruDJmFSD4P9V/B9PUreIqmdM5LoO7z+Ka88TSDBaWMhD/oeEunJXEkpcohGL3/G0JM+oAGtP0DZiYNKKCUZXgS1owXByp2PfKwAHZrRoObDh5qNKfTpS9seFuDo9m2BLjqJ/oIEgoz0TCgvy+suXICTFU48qv7/suRgptZkoTqT65lY6Y2MHNtkwj+9YBgyk80R8usTTaBQG1TkIV/DE17mFhRCpin0ZVUKXAfuRsjLn6A6vQB65yzcWtDk9XajzVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV4PR11MB9491.namprd11.prod.outlook.com (2603:10b6:408:2de::14)
 by PH7PR11MB5863.namprd11.prod.outlook.com (2603:10b6:510:135::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.6; Wed, 14 Jan
 2026 13:32:33 +0000
Received: from LV4PR11MB9491.namprd11.prod.outlook.com
 ([fe80::f110:9a4f:b4cb:2eeb]) by LV4PR11MB9491.namprd11.prod.outlook.com
 ([fe80::f110:9a4f:b4cb:2eeb%7]) with mapi id 15.20.9520.003; Wed, 14 Jan 2026
 13:32:33 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Grinberg, Vitaly" <vgrinber@redhat.com>
Thread-Topic: Re:[Intel-wired-lan] [PATCH v5 iwl-next] ice: add support for
 unmanaged DPLL on E830 NIC
Thread-Index: AQHcWgwUHqTXSPJapUuoKo9k9qimQ7UkgCYAgCMGLQCABLXsAIAFhyPAgAAdKQCAAAM7kA==
Date: Wed, 14 Jan 2026 13:32:33 +0000
Message-ID: <LV4PR11MB9491B0E591D66E4AEDE9B1329B8FA@LV4PR11MB9491.namprd11.prod.outlook.com>
References: <20251120105208.2291441-1-grzegorz.nitka@intel.com>
 <20251216144154.15172-1-vgrinber@redhat.com>
 <IA1PR11MB621913F389165EE4D7CCFF2D9284A@IA1PR11MB6219.namprd11.prod.outlook.com>
 <CACLnSDikAToGRvfZAhTcT0NCtMj+N9z-GGzRQ5qmpHsvCr2QSA@mail.gmail.com>
 <LV4PR11MB9491EB644FC83676522107669B8FA@LV4PR11MB9491.namprd11.prod.outlook.com>
 <CACLnSDhEQVJ5piUKp6bddxvOff88qj5X6Y8zbqAH8Kf5a7a_Zg@mail.gmail.com>
In-Reply-To: <CACLnSDhEQVJ5piUKp6bddxvOff88qj5X6Y8zbqAH8Kf5a7a_Zg@mail.gmail.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV4PR11MB9491:EE_|PH7PR11MB5863:EE_
x-ms-office365-filtering-correlation-id: 7f5dc831-ccbd-41bc-a02d-08de53715fcb
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?RXdnVEhsKzZhcmxtbVZOS0dIanNEVHVhMzczSlBoZzVkU1laeTVzZ21SZERQ?=
 =?utf-8?B?L04va3BPdGxRZkxsaEhzL2Y5SkpJMjd4L3lxTW5LUlhzR2k1c2gyRi84RVlr?=
 =?utf-8?B?US9xK2t1cEVwQmVPK3kwSHVmbENaUUppdlZVcWI4M24wRHpmN0IxSnF4d3g2?=
 =?utf-8?B?MDNTMXk3cVh1YVpYQlYrVGdQMGdsSUt4SEhlOXdSamNqTjQwWW1Yc1QwT1pj?=
 =?utf-8?B?Q2hvY1R0Wm5tQzRKQVRaWmd6T2dySTZKLzJrV2xnVlhCZGdTSHdLclNnemZi?=
 =?utf-8?B?bVZycWYvQTlPaFc2RWNXc1pVTnlVbzg2TWFUNi9PZGtIZzRLT3BGcEdkcEZ2?=
 =?utf-8?B?MmJwclU4RTJucW84eEhYZU41OFg3TEJWTlRXUGY0R2RWaWZnWGJ3YVBXNHJi?=
 =?utf-8?B?SG05cFJuNGRORnJ0VTlDcHVsdFM3STVQaFVabTR4K0t4UDFieXY0QjJnM3Zj?=
 =?utf-8?B?RDArQkJwMUk1WURhOTNJUzhYRkRUUHJkZGlZNkJ0WGFtTGJGdy9weEU1UzJO?=
 =?utf-8?B?K2lncUVYRWtIcThxTWdrNGtRdmcwbXJqTENSZ3lRNGxwRlNsV1g3QWVwRWhM?=
 =?utf-8?B?N0toSlhPR1h2WHZOQUtCNDEwcjFhVEhJSVJ5dFE0TEVoc1U2a3EyWXRtNzN6?=
 =?utf-8?B?eWVTbHJMc3d1Q25ESDFuemlVZDZxQkUwRUJGYzRHUzJYemd5M0pqY1JWUVIr?=
 =?utf-8?B?UEJLbC96eTk4SzdBLzd3dFZFbnYwdHIxODlERFJ4emo3bGQ5b3p1SFJLRnN3?=
 =?utf-8?B?SzVJWEFGSjZmK1pDTmZoU0pLK0JqQ0lBTHF6Ync5LzVvelhiTTJsTEhRNjgy?=
 =?utf-8?B?SWVEcjFvVTh4dTJGcDMxSTA0bHdKYm5tQ2hCbEV2eVp5VVdlQkZXVG8xOWs0?=
 =?utf-8?B?R1pXTURXY25JbEpQTVNEWjh2bGFQS1ZXY2xFMTVmVGtlN0FUdzV0SWl5aUVt?=
 =?utf-8?B?ZTRFZncvMHpuMk5hNStiMjZ4UElGa2NENVMrNG9HaEl3b1V5aXBrVFdSOTRG?=
 =?utf-8?B?ZERxZkozclVGZmVSSGV1RmFYUEc2cW42TTJ5WWI2UnZhVjhLVnp4cHFaTjVW?=
 =?utf-8?B?bEJXelVOcTNCbmxoMGtKZ3NTQ1V4TThyK1FuK0hsVncwVnBBWlNMSDQvMURF?=
 =?utf-8?B?dW5vQ3lrUDdiN3gvcm14am1neTVENHN3enNRM2c1cWJSMVlYSndRc3FwWDZs?=
 =?utf-8?B?aFBGY0VZdVB0OEdybzd1UHVUZldJaDNUUTJuTXNNOC91ZXNRSllIMHE5c2dt?=
 =?utf-8?B?Q0FqVjcrQ3Exc09uRExrNlg1MDJQOTNDcDhsR1JJaWg1ckNaTTdOQ2lJWTFm?=
 =?utf-8?B?L1Yra3ArQlFEaHBQZ3BWVTFzK2RLQmJFeTFJcXduSHNTMGhGbytmbDhPMWdh?=
 =?utf-8?B?a2RpdEhxVDZENGt0Qi9MR1Frd2hDN2VKYjRSb2FZYjNSM1RHdERLVkRYeGxl?=
 =?utf-8?B?QXROZ2dWdHhpQjRmV2x1cTIvalBpeW1ZK2Nod0NNbnBwendvMUtXMGthTnl4?=
 =?utf-8?B?aXRtWkNCeUtSWGc0SFQ2V1NQTFdvcDJmc1FJK1puRlRwVzVMMGY3RXY5cnIx?=
 =?utf-8?B?QXI2dXpzS2EzUmJ0cDJzSzlIdDlYcHFXbFVYZ1ZCYlBpaWl3VjVHK2dFQXM0?=
 =?utf-8?B?MDI2TGZLL3JVV1Yyd0M2R0V1VGpxR3hzcTFkM2Ryd29HY3FvV0VuNVlpcFBM?=
 =?utf-8?B?Yzg5OWdVbUU4V3ZTSnpNc1dVcEdqbmpsc282ZDVuVHB0NS9RR0xjM3ZGd0Rs?=
 =?utf-8?B?bllJYS9EQkdUd1pMSEVlTDZDQlJWOXRhVThuTnREY1N2QVhVVFdNVTZUd0xj?=
 =?utf-8?B?VERFRnhVaXVRQjV1K3owbk05TmdNa2dKbDBFOHUrWWgrNzJtbVJRUk5yMytW?=
 =?utf-8?B?c1ZvOEZFL0hKVDRhczlncXZOMzhaS204VWlheUFCUVRpcXlSMFZYbUpBTytE?=
 =?utf-8?B?TllxekNFVnRKd3RIdTIxdzVxMXRDb3JjeUhjRWkxbVNIQWtzMEtEaEFmandG?=
 =?utf-8?B?NEU0WUtXQkhnWGE1RXdOcUdhR2k5VTJmOENIeEFjZzd5dUs4TVJLVWpvK3M0?=
 =?utf-8?B?TDhwcDlPNHJkeDBIMWRaYzBneHY2Q0pBeFNHQkV5Uk5MTnNPdEs0WDhqbjZE?=
 =?utf-8?B?ZkIxMVFuZUVuYVlYTjNGQ0d6ekswVG5LTytSd01lYjlWaHE2cDNCMkdmc2Vn?=
 =?utf-8?Q?T5pBINpaS2c3MZ8JYROQH88=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV4PR11MB9491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SVBVaEd4d2QyWXp2VW5tTHhTQzJmRTVIMU1QMk1TVTc4Smpnc1JscUlib3lJ?=
 =?utf-8?B?M1NMNFlCMXJHdVlhdzJ3bnF6RmlBOVlqVjRHZmZjdWJRQXNBVkUxaEMvc0Ny?=
 =?utf-8?B?dHZZRXRRekJhcGhxY0xwZVRmT1ZXa3VWUFdZdzVYR1IyVzBKNDlPZ25mK1h3?=
 =?utf-8?B?V28yTmxpalVqV3pnQjQrbzR3dHhqc2I1amkwVmZXV3JSYW9mWThVNjBCUnJ3?=
 =?utf-8?B?cUVBQnFqQmpMR1JWSllzdzRaSCtyZzYrQWNYM2VVOVI2ZjBJOHRsVndQQ1Fj?=
 =?utf-8?B?bUEyRGwrWlhMZnBacGNoc1BTRTRybkpSRFdSOGFKdDhXaSsyVUNsRGtBdngx?=
 =?utf-8?B?SG01L1BCNzIranpDV3NyaFF2OGIvRmxTcGh2VlRCbDJXSVNZUDQ4Y0I5bmZw?=
 =?utf-8?B?RkNqTzJVbGQzTm5ONVM0YW41TjFrVkFtdkNVK3BZRGJORHU3S1YyVDlPclQ4?=
 =?utf-8?B?SEVFY0tZTVd2YStrclR1TEcreXcxbWo0RWQwN0VQQThadmlYZXVlaVdxeUV6?=
 =?utf-8?B?M3NsVE84TXNucTUySHpFNDhpQWdsSVIzSFo4Rzl6OURoV0RULzEwWXM5alMw?=
 =?utf-8?B?M2grRWlZZ1NEdDFVM2I4S3owdWNoME9kNFZNenlDeFl0VFFqelcxN1B2ZmRB?=
 =?utf-8?B?ZytvQzduMG9OTWJOc2ZyQnl1Q2NWZ2RMN0wvUkNlbGxNVlJKclZ6S09Rb1Rz?=
 =?utf-8?B?WmVuUEltTXFrYWR0SmQ0VDB6ZzkwbVFhZnA2UzhFSmtKM2UxVVVUK3lvMTFV?=
 =?utf-8?B?M3h0Y2lRR0NuSW0wZWMwMDRSWENTT294RGltcjdDdGJKN1lrU2NYWFRqdThi?=
 =?utf-8?B?eG5WZG94elR3a0F4NE9Wa3dLQ00xQUg1bGF4d2FPLzcrL1JHZ01QOWdvU3c1?=
 =?utf-8?B?aXpYT2gvdGREL09hSzRHdHVOek51L0dsdXhKV2YyQjg1VGZ3Sm5Zcm1CWFI0?=
 =?utf-8?B?dlY0aGxLMGh5ajRUdjRLSUcvYnZTMUlWaXVCbXdMcmdMeFREYmVQVC9MMko4?=
 =?utf-8?B?bGlKRWRneXdxdlltQk9UWXZxL3N1by93bG53cENhOTBrRW5Lc2FHNXphTDlX?=
 =?utf-8?B?L1RJNnoxOVBZWU9tVytPTTk3TTJORFJMSkc0ZnZWaDBaOTlNSTcwOG9aSmRh?=
 =?utf-8?B?RWl3ZlZtSEFWelIxdlJ5OFVoK0VLZkkxSFZNalhsdHRhL3dzOE4vQ3orakV6?=
 =?utf-8?B?ZkhJVWcrcWVqUzNzUGgxN2xWSHZCUWpJMzRqTHRhenNreWFrdzJHcnlvSDJY?=
 =?utf-8?B?NXdodm5CY0dlemt6Qmd6UHE5ZTc1UmVBU0pGdEZzUXh4UFJvbUhlRFA3QmIr?=
 =?utf-8?B?QnlkWkN5K0ttOXIyNGtPZlhKTTNrbUdHaGtiQmU0aWxqRmN6QTV1aVJlV1Aw?=
 =?utf-8?B?dEtjSlJoNEE2SGMxMUtFTkovU2h5SHZjWExxT1FjMG0vZnF3LzhXVHo5amdi?=
 =?utf-8?B?NWNZK2gwMEFld1ZNaUtENmxvdysxa1A2NGFURllhaW5QVjArdGhYTTZyNXV5?=
 =?utf-8?B?ZTBVWVFZeWd2bWZJWENGakUrbEhocmgvN0N6M1B1MUVKUVI3ZTJTMkpjd2Rq?=
 =?utf-8?B?YklCcGhCUlczKzQ0RHlWT1oxcGZsMU5jTmowY2RYRWNkNXlNcHV2c0thMXhr?=
 =?utf-8?B?Q0FJV2VSQi9XVC9GY25xMUtPdjdtT1EyNVYzRjY5Q2lKVGRIRHNFcCtnVndv?=
 =?utf-8?B?NFB3U0tLVnBGWTlwS0JDNDlNVnFhOEZxTTBQSEs3S1BTSEVGb1gzOVFTZjNn?=
 =?utf-8?B?NkdSL09vL1lqMWgzYU5TQnNwM2U3aWhkZU9HT0tnTndhbEUxWm1wdm1ZMEky?=
 =?utf-8?B?VS92N2xacDVhbFBTQ0JhMTdaK3BTVzhFUjJhWlVnUmdCK3NlS2pMaFM4N0pi?=
 =?utf-8?B?aVE5akNKSlZuLzdOdTU2MGs1emk0Y2F0M1VRN21QM1B5a2N0U2lFNkd3TDNG?=
 =?utf-8?B?SXNNb0Z5bzJ2YnJDNnAxSER4MzRRTm9FNm5wVDVRTm1nQ2Z4SjB1OXIxYzVP?=
 =?utf-8?B?bkNYcVlxOVArNG4yWTd5OW5KcW5SNlBVU3E5eGJ2cjRJclErd3AyZmxEZjRX?=
 =?utf-8?B?QXBuMzlFa0hyNjY3cEdVMi9rbDJxVGRDUnFzL0hwdmt4cnVDU1B1OG56YkdS?=
 =?utf-8?B?Vk1aMHZ4WGt0MjBmZkhYWXRSdVdVMWhvcFEyUlpkVkhvdGVkSWtERk9XMmNi?=
 =?utf-8?B?TmpFQ2c1WXBaUjJib3JwejdiTzZ6NW5pVEljQ1lqYTZDcDNnb2Npb3Qyc2Qv?=
 =?utf-8?B?Y3FVVFlIK09LNUZ1ZlBRY1FNelpqZVNzMUFTMmM0eUcyV2NGc2JWT083L1My?=
 =?utf-8?B?cE5LRGVFSDh0dmFWc2xxcUFqd2FzRDNELzZ4bGpGUVdyeTljeU9HUytuOGlK?=
 =?utf-8?Q?c/6bnRfdXn3XN4Dc=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV4PR11MB9491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f5dc831-ccbd-41bc-a02d-08de53715fcb
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2026 13:32:33.6165 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wuQim6m9zlpcRsPlQU/SEsi3fdxkkmAqeHYv+ZGJBPqU0gLr8Jc3Sk/h0M81XQ//HF0+dzDMNjVGs9491Z6ZT6T5nTnxTVKCR9CdPF3POrM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5863
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768397560; x=1799933560;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Tl88OH46DD0JtefjlV2YwLQlkHbgMvYgGOA8vg2RDyI=;
 b=Yb3FSJS/4JzsVU2MK9OhwPKqsPkApg1WcFR//TUKd9Mwe56QGiC7gOy8
 /veHHDO7/na1jCTjPwxjfxbAo1QNTHFkV1ZgPQOU0zIsiq1kB6LhtJmnD
 KO31OZcXri1v8zuX2oBuIStOPGJgKFgdf9Rp0y3oBVPL0bNBUeJNEEoKS
 x705xf0jdPR0GIq2nRD8FRu+XUs0PTZW6iWUu3Hp4aMOIJBp8Q3keglxF
 /3yTTr4TdGMEa41bQhrdkZAfXCU2NyOwquSNH2KEVWqjr5EoXFCvYh+NX
 9mrdB8V4XW1mGAZVEcsiLT1Idq31QbgHQ8np/GcvlJZm5BeLh1ruxM3Nw
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Yb3FSJS/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-next] ice: add support for
 unmanaged DPLL on E830 NIC
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PkZyb206IFZpdGFseSBHcmluYmVyZyA8dmdyaW5iZXJAcmVkaGF0LmNvbT4NCj5TZW50OiBXZWRu
ZXNkYXksIEphbnVhcnkgMTQsIDIwMjYgMTI6MzkgUE0NCj4NCg0KWy4uXQ0KDQo+PiA+DQo+PiA+
SSBzZWUgYSBmZXcgY2hhbGxlbmdlcyBmb3IgdGhlIHVzZXIgaGVyZS4gVGhlIGJpZ2dlc3Qgb25l
IGlzIHRoYXQgdGhlDQo+PiA+YXBwbGljYXRpb24gY2FuJ3QgdGVsbCB0aGUgZGlmZmVyZW5jZSBi
ZXR3ZWVuIGEgZGV2aWNlIHRoYXQgd2lsbCByZXBvcnQNCj4+ID5waGFzZSBvZmZzZXRzIGFuZCB0
aGlzIHVubWFuYWdlZCBkZXZpY2UgdGhhdCBuZXZlciB3aWxsLg0KPj4gPkEgcG9zc2libGUgd2F5
IGZvcndhcmQgd291bGQgYmUgYWRkaW5nIGEgY2FwYWJpbGl0eSBmbGFnIHRvIHRoZSBEUExMIEFQ
SQ0KPj4gPnNvDQo+PiA+dXNlcnMgZG9uJ3QgaGF2ZSB0byBndWVzcy4NCj4+DQo+PiBUaGVyZSBp
cyBubyBwaGFzZS1vZmZzZXQgZmllbGQgYXMgcG9pbnRlZCBpbiB0aGUgYWJvdmUgZXhhbXBsZS4N
Cj4+IE5vICdwaGFzZS1vZmZzZXQnIGF0dHJpYnV0ZSAtPiBubyBzdWNoIGNhcGFiaWxpdHkuDQo+
PiBXaHkgaXNu4oCZdCB0aGF0IGVub3VnaD8NCj4NCj5QaW4gcmVwbHkgZG9lcyBub3QgY29udGFp
biBwaGFzZSBvZmZzZXQsIHNvIG5vIGNoYW5nZSBub3RpZmljYXRpb25zDQo+YXJlIGV4cGVjdGVk
Pw0KPkNvdWxkIHRoZXJlIGJlIGRldmljZXMgdGhhdCBkb24ndCByZXBvcnQgcGhhc2Ugb2Zmc2V0
LCBidXQgcmVwb3J0IHN0YXRlDQo+Y2hhbmdlcz8NCj5JcyB0aGlzIHRoZSBpbnRlbmRlZCB1c2Ug
b2YgdGhlIHBoYXNlIG9mZnNldCBBUEkgdG8gYmUgaW50ZXJwcmV0ZWQgYXMNCj5hIGdlbmVyYWwg
cGluDQo+bm90aWZpY2F0aW9uIGNhcGFiaWxpdHkgZmxhZz8NCj4NCg0KU29ycnksIHRoaXMgaXMg
bm90IHdoYXQgSSBtZWFudC4NCg0KVGhlIEU4MTAgcHJvZHVjZXMgbm90aWZpY2F0aW9ucyBub3Qg
b25seSBmb3IgdGhlIHBpbidzIHBoYXNlIG9mZnNldCBidXQNCmFsc28gZm9yIG90aGVyIHBpbiBh
dHRyaWJ1dGUgY2hhbmdlcy4gV2hlbiBpdCBjb21lcyB0byB0aGUgRTgxMCBwaW5zLA0Kbm90aWZp
Y2F0aW9ucyBnZW5lcmF0ZWQgYnkgcGhhc2Ugb2Zmc2V0IGNoYW5nZXMgYXJlIHF1aXRlIGZyZXF1
ZW50Lg0KSG93ZXZlciwgaXQgd2Fzbid0IGludGVudGlvbiB0byBwcm9kdWNlIHRoZW0gZXZlcnkg
c2Vjb25kOyB0aGlzIGlzIHNpbXBseQ0KdGhlIHJlc3VsdCBvZiBmcmVxdWVudCBwaGFzZSBvZmZz
ZXQgY2hhbmdlcy4NCg0KVHlwaWNhbGx5LCB0aGUgcGluIHN0YXRlIGNoYW5nZXMgZm9yIHRoZSBw
aW4sIGJ1dCBmb3IgRTgzMCwgdGhlIHVubWFuYWdlZA0KbW9kZSBtZWFucyB0aGF0IHRoZSBzdGF0
ZSBvZiB0aGUgcGluIG5ldmVyIGNoYW5nZXMsIHJlc3VsdGluZyBpbiBubyBwaW4NCm5vdGlmaWNh
dGlvbnMgYmVpbmcgcHJvZHVjZWQgaW4gdGhlIGVuZC4NCg0KSG9wZSB0aGF0IGNsZWFycyB0aGlu
Z3MgdXAuDQoNCj4+DQo+PiA+SG93ZXZlciwgdGhlIHByZWZlcnJlZCBzb2x1dGlvbiB3b3VsZCBi
ZSB0byBzaW1wbHkgbWlycm9yIHRoZSBFODEwDQo+PiA+YmVoYXZpb3INCj4+ID4oc2VuZGluZyBw
aGFzZSBvZmZzZXQpLiBUaGlzIHByZXNlcnZlcyB0aGUgZXhpc3RpbmcgQVBJIGNvbnRyYWN0IGFu
ZA0KPj4gPnByZXZlbnRzIHVzZXJzLCB3aG8gaGF2ZSBhbHJlYWR5IGJ1aWx0IGFwcGxpY2F0aW9u
cyBmb3IgdGhpcyBpbnRlcmZhY2UsDQo+PiA+ZnJvbSBuZWVkaW5nIHRvIGltcGxlbWVudCBzcGVj
aWFsIGhhbmRsaW5nIGZvciBhIG5ldyBoYXJkd2FyZSB2YXJpYW50DQo+PiA+dGhhdA0KPj4gPmJl
aGF2ZXMgZGlmZmVyZW50bHkuDQo+Pg0KPj4gVGhpcyBpcyBub3QgY3VycmVudGx5IHBvc3NpYmxl
IGZyb20gZHJpdmVyIHBlcnNwZWN0aXZlLg0KPj4gV2UgbWlzcyB0aGUgRlcgQVBJIGZvciBpdC4N
Cj4+DQo+PiA+VGhlcmUgYXJlIGFkZGl0aW9uYWwgaW5jb25zaXN0ZW5jaWVzIGluIHRoZSBleGlz
dGluZyBzdHJ1Y3R1cmUgSSB3YW50ZWQNCj4+ID50bw0KPj4gPmJyaW5nIHRvIHlvdXIgYXR0ZW50
aW9uLg0KPj4gPjEuIEknbSBub3QgZW50aXJlbHkgc3VyZSBob3cgYSAxNTg4LVRJTUVfU1lOQyBw
aW4gY2FuIGhhdmUgYSBwYXJlbnQNCj4+ID5kZXZpY2UNCj4+ID5vZiB0eXBlICJlZWMiLiBFRUMg
aXMgYWxsIGFib3V0IGZyZXF1ZW5jeSBzeW5jaHJvbml6YXRpb24sIGFuZCB5ZXQgdGhlDQo+PiA+
cGluDQo+PiA+bmFtZWQgMTU4OC1USU1FX1NZTkMgaXMgY2xlYXJseSBhIHBoYXNlIHBpbi4gVGhp
cyBhbHNvIGRvZXNuJ3QgcGxheSB3ZWxsDQo+PiA+d2l0aCBleGlzdGluZyBpbXBsZW1lbnRhdGlv
bnMsIHdoZXJlIEVFQyBjaXJjdWl0cyBkZWFsIHdpdGggZnJlcXVlbmN5LA0KPj4gPlBQUw0KPj4g
PmNpcmN1aXRzIGRlYWwgd2l0aCBwaGFzZSwgYW5kIHRoZXJlIGlzIGNsZWFyIGRpc3RpbmN0aW9u
IGJldHdlZW4gdGhlIHR3bw0KPj4gPndpdGggcmVnYXJkIHRvIHRoZSBtZWFuaW5nIG9mICJiZWlu
ZyBsb2NrZWQiLg0KPj4NCj4+IFRoaXMgZHBsbCBkZXZpY2UgdHlwZSB3YXMgZXN0YWJsaXNoZWQg
YmFzZWQgb24gdGhlIG1haW4gcHVycG9zZSBvZiBkcGxsDQo+PiBkZXZpY2Ugd2hpY2ggaXMgdG8g
ZHJpdmUgdGhlIG5ldHdvcmsgcG9ydHMgcGh5IGNsb2NrcyB3aXRoIGl0Lg0KPg0KPldoYXQgaXMg
dGhlIHBoeXNpY2FsIG1lYW5pbmcgb2YgdGhpcyBpbmRpY2F0aW9uIChsb2NrLXN0YXR1cyc6DQo+
J2xvY2tlZCcpPyBMb2NrZWQgb24gd2hhdD8NCg0KTG9jayBzdGF0dXMgaXMgZHBsbCBkZXZpY2Ug
cHJvcGVydHkuDQoNCkJ1dCBmdWxsIHBpY3R1cmUgaGFzIHRvIGJlIGRldGVybWluZWQgZnJvbSB0
aGUgbGlzdCBvZiBwaW5zLCBmb3IgdGhpcw0KcGFydGljdWxhciBjYXNlLCBvbmUgaW5wdXQgcHJv
dmlkZWQgZnJvbSBob3N0IHRocm91Z2ggcGNpLWUgcGluLCAxME1Ieg0KYmFuZHdpZHRoIGZyZXF1
ZW5jeSBhbmQgMSBQUFMgc3luYyBwdWxzZXMuDQoNCkFzIGFscmVhZHkgcG9pbnRlZCB0aGUgdHlw
ZSBvZiBkcGxsIHNoYWxsIGxldCB1c2VyIGtub3cgdGhlIHB1cnBvc2Ugb2YNCnRoZSBkcGxsIGV4
aXN0ZW5jZSBpbnN0ZWFkIG9mIHBhcnRpY3VsYXIgaW5wdXQgcHJvcGVydGllcy4NCklucHV0IHBy
b3BlcnRpZXMgYXJlIGRldGVybWluZWQgd2l0aCB0aGUgcGluJ3MgYXR0cmlidXRlcy4NCg0KPkFz
IGEgdXNlciBvZiB0aGlzIGNpcmN1aXQgSSB3YW50IHRvIGtub3cgdGhhdCB0aGUgZGV2aWNlIGlz
IGxvY2tlZCBvbg0KPnRoZSBwaGFzZSBvZiB0aGUgaW5wdXQgc2lnbmFsIHdpdGggYSBjZXJ0YWlu
IHByZWNpc2lvbi4NCj5JcyB0aGlzIHRoZSBtZWFuaW5nIG9mICJsb2NrZWQiIGhlcmU/IENhbiBh
biBFRUMgZGV2aWNlIGJlIGxvY2tlZCBvbg0KPnRoZSBQaGFzZSBvZiB0aGUgaW5wdXQgc2lnbmFs
Pw0KDQpXZWxsIEkgZG9uJ3QgaGF2ZSBhbnkgZGF0YSBvbiB0aGUgcHJlY2lzaW9uIG9mIHN1Y2gs
IGJ1dCBBRkFJSyBpdCBjYW4uDQpFRUMgZHBsbCBzaGFsbCBiZSBwcm9kdWNpbmcgc3RhYmxlIHNp
Z25hbCwgdGhlIGlucHV0IGl0IHVzZXMgaXMgb25seQ0KcGFydCBvZiB0aGUgZnVsbCBkcGxsIGRl
dmljZSBwaWN0dXJlLg0KDQo+VXNlcnMgb2Ygb3RoZXIgZGV2aWNlcyAoZTgxMCwgemwzMDczeCkg
bWF5IGhhdmUgaW1wbGVtZW50ZWQgbG9naWMgdG8NCj5kZXRlcm1pbmUgdGhlIHBoYXNlIGxvY2sg
YnkNCj5lbmZvcmNpbmcgdGhlIHBpbiBwYXJlbnQgZGV2aWNlIHR5cGUgYXMgUFBTLiBIb3cgc2hv
dWxkIHRoZXkgY2hhbmdlIGl0DQo+dG8gZGV0ZXJtaW5lIHBoYXNlIGxvY2sgKGFuZCB3aHkpPw0K
Pg0KDQpJIGFtIFNvcnJ5LCBJIGRvbid0IHVuZGVyc3RhbmQgdGhlIGV4YW1wbGUgYWJvdmUsIGNv
dWxkIHlvdSBwbGVhc2UNCkVsYWJvcmF0ZSBvbiBkZXRhaWxzIG9mIHN1Y2ggc2V0dXA/DQoNClRo
YW5rIHlvdSENCkFya2FkaXVzeg0KDQo+Pg0KPj4gPjIuIFNpbmNlIGl0IGlzIGFsc28gYW4gZXh0
ZXJuYWwgZW1iZWRkZWQgc3luYyBpbnB1dCBwaW4sIGNvdWxkIGl0IGJlDQo+PiA+cG9zc2libGUg
dG8gZXhwb3NlIHRoaXMgaW5mb3JtYXRpb24gYW5kIGluY2x1ZGUgYGVzeW5jLWZyZXF1ZW5jeWAg
YW5kDQo+PiA+YGVzeW5jLXB1bHNlYD8gVGhhdCBjb3VsZCBiZSB1c2VmdWwgZm9yIGNvbmZpZ3Vy
aW5nIHRoZSBsZWFkaW5nIERQTEwNCj4+ID50aGF0DQo+PiA+ZHJpdmVzIHRoZSB1bm1hbmFnZWQg
b25lLg0KPj4NCj4+IFN1cmUsIGVzeW5jIGNhcHMgc2hvdWxkIGJlIHByb3ZpZGVkLCBhcyB0aGUg
Y29tbWl0IG1lc3NhZ2UgZXhhbXBsZSBzaG93bjoNCj4+ICsgICAgJ2VzeW5jLWZyZXF1ZW5jeSc6
IDEsDQo+PiArICAgICdlc3luYy1mcmVxdWVuY3ktc3VwcG9ydGVkJzogW3snZnJlcXVlbmN5LW1h
eCc6IDEsICdmcmVxdWVuY3ktbWluJzoNCj4+MX1dLA0KPj4gKyAgICAnZXN5bmMtcHVsc2UnOiAy
NSwNCj4+DQo+DQo+T2gsIEkgbXVzdCBoYXZlIG1pc3NlZCB0aGF0Lg0KPlRoYW5rcyENCj5WaXRh
bHkNCj4NCj4+IFRoYW5rIHlvdSENCj4+IEFya2FkaXVzeg0KDQo=
