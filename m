Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9CA8719A0
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Mar 2024 10:31:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9BCD14157D;
	Tue,  5 Mar 2024 09:31:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NY9LvYMY-QyC; Tue,  5 Mar 2024 09:31:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 384B841572
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709631088;
	bh=cUYG0Kj+inmBuKnh4I+JwaMlEblshJhuK8O/oowfWZM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aETEaocy/aAR6osVqV/G8A7mxDx32D0HgghluX1PIL05DngJtqluqO+8Ny4NzEPE3
	 8Ux5wNOpvn4jLGQifS0lfRhYfFqqBIyexn2Lt43BRvL36l4OpdqIj3x1/m1assJ/PL
	 UTRrWqHS78A8aj+6xzh1hdFRL1ONW1QgIkQQ/wPwfpyYcJVTiyAEEGBZy7YLl8QDPr
	 k0fymO/dmgXB7sY5GTlQqG6Ebx8fwZMSxTHpBtLQQWNTo9JqYrDdsWheqw91D9EXP1
	 W5yvnbQ5Se2aIrDuPEcY0+1Ypox1AA5QKXu8i9suElG1lId8shZIRLg1sfH41rNomU
	 zSqCSTPcYe7Tw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 384B841572;
	Tue,  5 Mar 2024 09:31:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 55ABD1BF25F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 09:31:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4047F41527
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 09:31:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lQ9iH1pL4jSR for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Mar 2024 09:31:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C0E2C414C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C0E2C414C9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C0E2C414C9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 09:31:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="15311706"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="15311706"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 01:31:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="40205868"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Mar 2024 01:31:23 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Mar 2024 01:31:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 5 Mar 2024 01:31:23 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 5 Mar 2024 01:31:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FqsIIS+J8Bo6gfgfDbw3lDrgOwdJAvgXEfK7dSuiztibHLN9OHOAZjDh+iDrCOfXRzXzxX0GkrMO3D7iF3x2i8k/dBixCwpCw6S7qYpEZILlqKUl9Hn8EsApa2oJSbIJLX06soq7+DwQbn05AP2lFPltRrk4nxhZMdA5UkYEGiIkkbpAzbDEhSZpYaiHAPj/1XeY5ylu/aGAbP+SO7Hne/8+Ihp2rj64YXHwEPnvSZuLreT+eW8PHCDYnsfXCqmYhUppWJIbnh7MULiNBR11h1T6qJGGquExDwF7VYkY/rhr4hcL4Ok+AExGvO6TyKYOqiLaGLI7RsljzRrEaqoIYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cUYG0Kj+inmBuKnh4I+JwaMlEblshJhuK8O/oowfWZM=;
 b=G5IhEgeqT3UuPupY5MtaI9tleXSCcs7OjLxi+weO77k5fk7P0UfydubcT4uECvE/jBpT3Mcl2R4EnPCpGn2ApiDZiclU5iaawv34pY1GV/+cPTR/eNHdoH1nd4gb29slhkGCvMWj9Mb2N7Camy493/15gRaB2T5QVKhz6K6we7+82p4AnoQiuf7K2WpzIiUf/nSnV0fK/XO00xtaoKGyy92u5NP+VdKFiIUpAAzkefIxCcy4wgXZrravn8ET2x+27LdrBWvn5MQnq8rZbT4tHKllr6ueIr+YTxJ5eIID/rha4OQhIOvCYT78UtoC8AwW7WSEFvN2L77C32Pu0Np2lQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SA1PR11MB5828.namprd11.prod.outlook.com (2603:10b6:806:237::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.22; Tue, 5 Mar
 2024 09:31:20 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7362.019; Tue, 5 Mar 2024
 09:31:20 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Takeru Hayasaka <hayatake396@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v8 1/2] ethtool: Add GTP RSS
 hash options to ethtool.h
Thread-Index: AQHaXVfYPrQaFDDbUU2tyu9IZKEtzLEjR9cwgAVbwwCAAAsMMIAAOXCAgAAcIxA=
Date: Tue, 5 Mar 2024 09:31:20 +0000
Message-ID: <CYYPR11MB8429C458ED4591278E6B8C50BD222@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240212020403.1639030-1-hayatake396@gmail.com>
 <CYYPR11MB8429FCD568EE2AF90AEE2CABBD5E2@CYYPR11MB8429.namprd11.prod.outlook.com>
 <CADFiAc++edOb7-O6yCUgpAaonZ1sQdkrwwH8432D=e40g1CwoQ@mail.gmail.com>
 <CYYPR11MB84290126F884C2AB4F9AA5FBBD222@CYYPR11MB8429.namprd11.prod.outlook.com>
 <CADFiAcJtJWMqeiVRLyZQivYw2J5EBeMVjP+qeJfS9YeWokdX+Q@mail.gmail.com>
In-Reply-To: <CADFiAcJtJWMqeiVRLyZQivYw2J5EBeMVjP+qeJfS9YeWokdX+Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SA1PR11MB5828:EE_
x-ms-office365-filtering-correlation-id: 96d2220a-d28b-4bf8-6d43-08dc3cf70415
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HVb74fo++pIH4A5SDMYAVr8Y2EtEl+IoQQqM3RGjrMSdfTTDefTpqBO1kDGC95QxyrTEO8NtxOmbxqdZHaBekEGgXfv+1ZDIYuyP6hPbVlHb3n1ZMLbtxg395N09mT3WwIlunAyBsEYuhufU0Ohrsq1NxmuDUyv3R0yAYUk6Wls4rxnT4ZeFW7okus9B0ftvd20IQwLveL7LDF0gSaVqw/FC1pA+9RWZApJ1U1rCi3RQXHUPqEg1fPOX6RRDd4W3Tfeh+/K+rvTEIXD4aj4y22UM9p4ziVdGDT9qsnTgfMHFG6LCuxBBTK5ts6hlqxYkjb15m2bF5jNpTkTPqAXm0Ljd1mqNmPwYMH/it9pniyxqNlX3orDEC6q5/91pzwBNRqgZgPoE14fsvzFrZa1EVrMDn2z1PdSQpJOXvfd7huy+JeY/SkGgirTiqyMAsauObUf7kTJ67C5ygT/EJVHS0hq57gOJBnBotZnYmTNizG+M6qk+SPYn6GQ5qCB7XCtfgev1UBxViSYstx8HbVoFwh4FdFE3zk96f6pDRCxEnIdPctZ2atO1UtStLYg/G1qMB0RHFdRtxjSrZSdW24Opk2fcKpqlGJvt300Jqi0hEYk3naGHonvFNvbX79aWPpuchlA0n9iPHm2/s9dqSqkfAGCKynYKW7EPYm4Xyioy+iz8ULQzEkNKUJGezfjWBj8B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SWZvTWZpVFpuNk5rdTNMTzA2RHR5NjU2bmhSak1xaEphUTQwMmJGQUpteFZE?=
 =?utf-8?B?dnZmNkVLOUl6NXp1MzJvajh4WVB2TzJuYU9qNThYbHdhd0ROSTRLdnNDWEZw?=
 =?utf-8?B?OTlEaDMzUWJwaXZsSUxwU091ZWYxaEcyOGNTZkMxbjdBMVVQMXMxYno3YWlT?=
 =?utf-8?B?Ry9rdDlUV1JOZzErTEppeEszbFhLRWE0UVlnM25zK1EyVGFlZzlyTlJtVFlP?=
 =?utf-8?B?Y1JPMXgxa1BzaWdZUXNPVC9Xc2o0RnViRDRMNk9PL2VWb1JRVTk5UXk2OGIr?=
 =?utf-8?B?OFhDaUxRTy94dG5JWFVXOEpwUndwd0FtR2pvYytPY3lGM3lKZEFWaUtnaDN1?=
 =?utf-8?B?ZW1oQjJuL051NGg3cWIzcStWOUoyVVZiUUIydkErMUdZR0VIdmhqMUZKSVJR?=
 =?utf-8?B?TFcrdm0rc3ZPVkdnd0Fmc04wdTRBRHg0RVIvWTJ6MGhEaWRwV1dBazBNTW5T?=
 =?utf-8?B?R1hlZlBkalVxRjBMVEtrNTN5TzdyWDk4OGV4TzduYy9WdU8wMUFmcGtzOVRD?=
 =?utf-8?B?Vzg5N3RiUEVkSDMxa285R2hNZVk4eFpYZmNITXRmazhtd24zSFgzdGF1M0Na?=
 =?utf-8?B?U2wzV3MxZld3alBHSVd5KzcrM1ZmTlhyMFphWGNJVnFQaEJTdVNQQ29hMjRS?=
 =?utf-8?B?VWR2N1o1OFFFb0RZcStWL3NlV3BacnZHbDNPRVJpYmdkWHFaUkpPbm1lcmxm?=
 =?utf-8?B?U1dYYmZmZlZNT0JMdk5yS1RqM05OQjV4ZEVvOHVhOWNyejJKU043Q2x6VzFj?=
 =?utf-8?B?dFpoT09lZnVUU0k3L2x3bTgrWEdoRnY2K2lqK0k2bFA5VExlUkpHc2xURGhI?=
 =?utf-8?B?OU03Q3lGSXNwV2NSL3FUQ0hpT0wxTDZiWDJGV05sSWY0VU1pYUpKdEZxTGJp?=
 =?utf-8?B?aGpCZjJFVW1jc2ZWWU55cjZydVkveGg5Qk1FMm1jVjl3UEI3aXd1cHliOEFs?=
 =?utf-8?B?ZmUyNC9HVmczeDFPZ3drRlVJTFBwRnFmOGNSdGxLbTNKZWJPRndLRjQ5Qm1u?=
 =?utf-8?B?MWphWmxUa3VpQVZIaTBSTjY3UDFNZ0ZFWUhPaG40VlZQZGErWXczVWlDaUVQ?=
 =?utf-8?B?eWF6WitxblpyamxCNTc4OVNJM3I2STA2aTZwK2dJL1BwVm9iR090dms5WTM0?=
 =?utf-8?B?S1ZlQ1BWMTlDQmtQbGNMTVlyWnV0Z3RTMVJKc25WVE9SRXJ3YnR3ZTRzcWc3?=
 =?utf-8?B?RTZsNHhmeFhwVC96Q1VQdG9INmZxeHd2eWVSczlQajV6aXdDbElKZDg5TDVJ?=
 =?utf-8?B?T0hNWlRBeitSckROR1ZkRXA5cGUzVVF6cEVQZU83TWZkZmVzbWJGYk0xK2FC?=
 =?utf-8?B?YnpFcXJPalFHRm53bGlRdU45cTdKSWhzNXZQdExuR3VkV29aSVVQMlorWmdV?=
 =?utf-8?B?ZHVpSUp4UHJ3cmlZTnh4NVMwV2RIL3dLZ3JPTUhBaytwbXR3MzYrNTNFRjQ2?=
 =?utf-8?B?Y1BOa0RRMXNGNXlQdldKQXFtc2pMN1RuTXRVdnBCU1RwNS9hQkg4V2lWSFRo?=
 =?utf-8?B?Qk92RDFGWG83a1U3ZXNySnNvTnZmUXdGMW1HWSthTVJ4NHBNMGQ0eWtaS0p1?=
 =?utf-8?B?N0gweURpTmpzME8vYU5yZEhoZ21EM05rajJjN24wbGhMelp4N1ZUa2lKMFlp?=
 =?utf-8?B?RUFrWVA4MVpYVk1nWHFoZzhtdUg3dkg3M3Q2SGJ6OFBmMnZQbE5UVjhwVk9H?=
 =?utf-8?B?ZnJhczVHcEZPb3JJR0FuMGxYS21sTkxzYWY0TkdpWjh2RzhkZVp4QzFWQjlV?=
 =?utf-8?B?OHg1QzZxQUZKdmxNOGVtT2QwQmhETmlLdTcvRVE5VU9EQXdrbUNQZ1JKUzMv?=
 =?utf-8?B?aXZ1Vi9DN3NnUUN2WUZ1QVc0c3UvTkdwRE15M09xU04ySE52Y2JUQlYxYU1j?=
 =?utf-8?B?MExYY3cwTnJMMDhFWUV3bGVLVTFqYWdGeXN5c3RjN2NTdk4rK1R4VUs4dWZk?=
 =?utf-8?B?QmxlUmNnTXRFODNablBmalVod01RMDNCU0ZEN3ZTTnpZSWVBRDVtQW9xZ05Y?=
 =?utf-8?B?NjdCV2NjZ1k2TFFDdnVndmR6MW9takw4eVhoNGZ6azBxNm01L1pmdFI5bGx0?=
 =?utf-8?B?QjNqekFKTEJoQlFaWjYyeTBFNzFMRTNpWU9WMUxJKzVlNDFXNUtkV2RMRlZP?=
 =?utf-8?B?RVBTZkpTWW5ZdXREc1RCdXNIdjRuVExtbVlQODRPYzAzaDBVaEN2K2dnU3gy?=
 =?utf-8?B?WWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96d2220a-d28b-4bf8-6d43-08dc3cf70415
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2024 09:31:20.2252 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dlZ9oqa40fzCL6vOmEHLNWD/2eIdbgCcgyes2HJg2ZixQiSpycpOO/blaFLXoMwJnxUjnMOHW1UUdOOT8rIN6HEIXUFUMRsOUvYkfoYDcoedMKj5dNLj2/kZm7+qayVz
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5828
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709631084; x=1741167084;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cUYG0Kj+inmBuKnh4I+JwaMlEblshJhuK8O/oowfWZM=;
 b=cI7GwJT6uAOqkQ+J21iZJVHIPu3NASx1ofqk1ZCKxJoRYKBBdWIKEIAP
 V0LSo9E6Mady6VTTq9L91kkJy9eBSOPAo7uUkvP2HgpB4uJlt7kGA6G1U
 Gu1uXHY5hWQmK4NOGn4NahGcQdVCUbG1xfAbo4vwmCo7+pFMC1c+FKluK
 7/bMefPJd8KJhEd/3NFLwxDCkRzuBphK/t7tDRlyrh2cY525zSVxqG3ll
 bXPjG+Tw0KoIT/PZwCS9KLGr9fGR6E9VcnDLBr0NlIrMWVUe07XBjfrvZ
 qOMIq5wT0tCkJ59vplETZIyxVTaMnY74MF3s8/deoFjn3ZsjVm9deHKla
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cI7GwJT6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 1/2] ethtool: Add GTP RSS
 hash options to ethtool.h
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
Cc: Jonathan Corbet <corbet@lwn.net>,
 "vladimir.oltean@nxp.com" <vladimir.oltean@nxp.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "laforge@gnumonks.org" <laforge@gnumonks.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Eric
 Dumazet <edumazet@google.com>, Marcin Szycik <marcin.szycik@linux.intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "mailhol.vincent@wanadoo.fr" <mailhol.vincent@wanadoo.fr>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Pi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFRha2VydSBIYXlhc2FrYSA8aGF5
YXRha2UzOTZAZ21haWwuY29tPiANCj4gU2VudDogVHVlc2RheSwgTWFyY2ggNSwgMjAyNCAxOjE4
IFBNDQo+IFRvOiBQdWNoYSwgSGltYXNla2hhclggUmVkZHkgPGhpbWFzZWtoYXJ4LnJlZGR5LnB1
Y2hhQGludGVsLmNvbT4NCj4gQ2M6IEJyYW5kZWJ1cmcsIEplc3NlIDxqZXNzZS5icmFuZGVidXJn
QGludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNv
bT47IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD47IEVyaWMgRHVtYXpldCA8
ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47IEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+OyBQ
YW9sbyBBYmVuaSA8cGFiZW5pQHJlZGhhdC5jb20+OyBKb25hdGhhbiBDb3JiZXQgPGNvcmJldEBs
d24ubmV0PjsgbGludXgtZG9jQHZnZXIua2VybmVsLm9yZzsgdmxhZGltaXIub2x0ZWFuQG54cC5j
b207IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGxhZm9yZ2VAZ251bW9ua3Mub3JnOyBN
YXJjaW4gU3p5Y2lrIDxtYXJjaW4uc3p5Y2lrQGxpbnV4LmludGVsLmNvbT47IGludGVsLXdpcmVk
LWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBtYWlsaG9sLnZp
bmNlbnRAd2FuYWRvby5mcg0KPiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENI
IG5ldC1uZXh0IHY4IDEvMl0gZXRodG9vbDogQWRkIEdUUCBSU1MgaGFzaCBvcHRpb25zIHRvIGV0
aHRvb2wuaA0KPg0KPiBIaSBIaW1hc2VraGFyIFJlZGR5LXNhbg0KPg0KPiA+IEFmdGVyIGFkZGVk
IHRoZSBhYm92ZSB2NCBwYXRjaCBhYmxlIHRvIHRvIHNlZSB0YWIgY29tcGxldGlvbiBmb3IgZmxv
dy10eXBlIGJ1dCBub3QgcngtZmxvdy1oYXNoLiBQbGVhc2UgZmluZCBiZWxvdyBsb2dzLg0KPg0K
PiBTb3JyeS4gSSBzdWJtaXR0ZWQgYSBjb2RlIHdpdGggdGhlIGNvbmRpdGlvbnMgcmV2ZXJzZWQu
IEkgaGF2ZQ0KPiByZXN1Ym1pdHRlZCBpdCwgc28gY291bGQgeW91IHBsZWFzZSBjaGVjayBpdCBh
Z2Fpbj8NCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjQwMzA1MDc0MzUwLjUzMzYy
Mi0xLWhheWF0YWtlMzk2QGdtYWlsLmNvbS8NCj4NCj4gVGFrZXJ1DQo+DQpIaSBUYWtlcnUsDQoN
Ckl0cyB3b3JraW5nIGZpbmUgd2l0aCBWNSBwYXRjaC4NCg0KIyAuL2V0aHRvb2wgLU4gZXRoNCBm
bG93LXR5cGUNCmFoNCAgICBhaDYgICAgZXNwNCAgIGVzcDYgICBldGhlciAgaXA0ICAgIGlwNiAg
ICBzY3RwNCAgc2N0cDYgIHRjcDQgICB0Y3A2ICAgdWRwNCAgIHVkcDYNCiMgLi9ldGh0b29sIC1O
IGV0aDQgcngtZmxvdy1oYXNoDQphaDQgICAgIGVzcDQgICAgZXRoZXIgICBndHBjNHQgIGd0cGM2
dCAgZ3RwdTRkICBndHB1NHUgIGd0cHU2ZCAgZ3RwdTZ1ICBzY3RwNiAgIHRjcDYgICAgdWRwNg0K
YWg2ICAgICBlc3A2ICAgIGd0cGM0ICAgZ3RwYzYgICBndHB1NCAgIGd0cHU0ZSAgZ3RwdTYgICBn
dHB1NmUgIHNjdHA0ICAgdGNwNCAgICB1ZHA0DQojIC4vZXRodG9vbCAtTiBldGg0IHJ4LWZsb3ct
aGFzaCBndHBjNnQNCmQgIGUgIGYgIG0gIG4gIHIgIHMgIHQgIHYNCiMgLi9ldGh0b29sIC1OIGV0
aDQgcngtZmxvdy1oYXNoIGd0cGM2dA0KZCAgZSAgZiAgbSAgbiAgciAgcyAgdCAgdg0KIyAuL2V0
aHRvb2wgLU4gZXRoNCByeC1mbG93LWhhc2ggZ3RwYzZ0IHNkZQ0KIyAuL2V0aHRvb2wgLU4gZXRo
NCByeC1mbG93LWhhc2ggZ3RwYzZ0IHN0dg0KDQoNCj4gMjAyNOW5tDPmnIg15pelKOeBqykgMTM6
MjggUHVjaGEsIEhpbWFzZWtoYXJYIFJlZGR5IDxoaW1hc2VraGFyeC5yZWRkeS5wdWNoYUBpbnRl
bC5jb20+Og0KPg0KPiA+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBUYWtl
cnUgSGF5YXNha2EgPGhheWF0YWtlMzk2QGdtYWlsLmNvbT4NCj4gPiBTZW50OiBUdWVzZGF5LCBN
YXJjaCA1LCAyMDI0IDk6MTIgQU0NCj4gPiBUbzogUHVjaGEsIEhpbWFzZWtoYXJYIFJlZGR5IDxo
aW1hc2VraGFyeC5yZWRkeS5wdWNoYUBpbnRlbC5jb20+DQo+ID4gQ2M6IEJyYW5kZWJ1cmcsIEpl
c3NlIDxqZXNzZS5icmFuZGVidXJnQGludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMIDxhbnRo
b255Lmwubmd1eWVuQGludGVsLmNvbT47IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0
Lm5ldD47IEVyaWMgRHVtYXpldCA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47IEpha3ViIEtpY2luc2tp
IDxrdWJhQGtlcm5lbC5vcmc+OyBQYW9sbyBBYmVuaSA8cGFiZW5pQHJlZGhhdC5jb20+OyBKb25h
dGhhbiBDb3JiZXQgPGNvcmJldEBsd24ubmV0PjsgbGludXgtZG9jQHZnZXIua2VybmVsLm9yZzsg
dmxhZGltaXIub2x0ZWFuQG54cC5jb207IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGxh
Zm9yZ2VAZ251bW9ua3Mub3JnOyBNYXJjaW4gU3p5Y2lrIDxtYXJjaW4uc3p5Y2lrQGxpbnV4Lmlu
dGVsLmNvbT47IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBuZXRkZXZAdmdlci5r
ZXJuZWwub3JnOyBtYWlsaG9sLnZpbmNlbnRAd2FuYWRvby5mcg0KPiA+IFN1YmplY3Q6IFJlOiBb
SW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggbmV0LW5leHQgdjggMS8yXSBldGh0b29sOiBBZGQgR1RQ
IFJTUyBoYXNoIG9wdGlvbnMgdG8gZXRodG9vbC5oDQo+ID4NCj4gPiBIaSBIaW1hc2VraGFyIFJl
ZGR5LXNhbg0KPiA+DQo+ID4gPiBGdW5jdGlvbmFsaXR5IHdpc2UgaXRzIHdvcmtpbmcgZmluZS4g
QnV0IHRoZSBldGh0b29sIHBhcnQgKHRhYiBjb21wbGV0ZSBkb2Vzbid0IHNob3cgR1RQKQ0KPiA+
DQo+ID4gSSBmb3Jnb3QgdG8gYWRkIHRoZSB0YWIgY29tcGxldGlvbiBmZWF0dXJlISBUaGFuayB5
b3UgZm9yIHRoZSBnb29kDQo+ID4gcG9pbnRzLiBJJ3ZlIGFkZGVkIGl0IGFnYWluIGluIHRoaXMg
dmVyc2lvbidzIHBhdGNoLg0KPiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI0MDMw
NTAzMzU1NS41MjQ3NDEtMS1oYXlhdGFrZTM5NkBnbWFpbC5jb20vDQo+ID4NCj4gPiBUYWtlcnUN
Cj4gPg0KPg0KPiBBZnRlciBhZGRlZCB0aGUgYWJvdmUgdjQgcGF0Y2ggYWJsZSB0byB0byBzZWUg
dGFiIGNvbXBsZXRpb24gZm9yIGZsb3ctdHlwZSBidXQgbm90IHJ4LWZsb3ctaGFzaC4gUGxlYXNl
IGZpbmQgYmVsb3cgbG9ncy4NCj4NCj4gIyBldGh0b29sIC1OIGV0aDQgcngtZmxvdy1oYXNoDQo+
IGFoNCAgICBhaDYgICAgZXNwNCAgIGVzcDYgICBldGhlciAgc2N0cDQgIHNjdHA2ICB0Y3A0ICAg
dGNwNiAgIHVkcDQgICB1ZHA2DQo+ICMgZXRodG9vbCAtTiBldGg0IHJ4LWZsb3ctaGFzaA0KPiBh
aDQgICAgYWg2ICAgIGVzcDQgICBlc3A2ICAgZXRoZXIgIHNjdHA0ICBzY3RwNiAgdGNwNCAgIHRj
cDYgICB1ZHA0ICAgdWRwNg0KPiAjIGV0aHRvb2wgLU4gZXRoNCBmbG93LXR5cGUNCj4gYWg0ICAg
ICBlc3A0ICAgIGV0aGVyICAgZ3RwYzR0ICBndHBjNnQgIGd0cHU0ZCAgZ3RwdTR1ICBndHB1NmQg
IGd0cHU2dSAgaXA2ICAgICBzY3RwNiAgIHRjcDYgICAgdWRwNg0KPiBhaDYgICAgIGVzcDYgICAg
Z3RwYzQgICBndHBjNiAgIGd0cHU0ICAgZ3RwdTRlICBndHB1NiAgIGd0cHU2ZSAgaXA0ICAgICBz
Y3RwNCAgIHRjcDQgICAgdWRwNA0KPg0K
