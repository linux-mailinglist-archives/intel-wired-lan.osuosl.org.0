Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBBE91E135
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Jul 2024 15:50:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CD76A40DE9;
	Mon,  1 Jul 2024 13:49:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1aIxkItMyyxk; Mon,  1 Jul 2024 13:49:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E408140DD4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719841799;
	bh=dXWXGqWuT83DvE61CsiyeoT1uy41fnuB68VkUkaip8U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ey/sbIBVxHFMMggmAgZXF1HWandqgyKDJcWTou+FhDT3jRhufKk6cktxjC8wOvMqi
	 3Q37dfffJNzEhheUgWsKndyhXMsz18EmSA/DEDl5p/3866v4o+dyDdtFUw1S0Hii1K
	 1JDFUftpMpSz68+atz601eSay8Y3Bfp+o1pb4l0AIQYztwLKu+w5F2ZRomXXjWBPMw
	 /oM4+SEp8CWz78PJgriEIrzcSttZDmmqTQTPBhiHVp6rVYlJLjXenh9jjqKGurioO5
	 a8Iwr1mbRDlw2NuIt1f2BbYdLMfDWtFS6mo1pNNOXInSmtgDEhTFNf7KfV9DKO8TA/
	 etSH0RpcnrPqQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E408140DD4;
	Mon,  1 Jul 2024 13:49:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 16D231BF338
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 13:49:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 037A980CA9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 13:49:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y_eWbCgcl-Z6 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Jul 2024 13:49:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3435B80C98
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3435B80C98
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3435B80C98
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 13:49:55 +0000 (UTC)
X-CSE-ConnectionGUID: jgREUqQvTiaF6LQwihyUug==
X-CSE-MsgGUID: sI2VG1jIQAufQTEACPmOfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="12338429"
X-IronPort-AV: E=Sophos;i="6.09,176,1716274800"; d="scan'208";a="12338429"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 06:49:55 -0700
X-CSE-ConnectionGUID: Hkg7szmmTnyDFZH53a4G7A==
X-CSE-MsgGUID: +TBVmjW6RUO/dUvEn5BrqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,176,1716274800"; d="scan'208";a="46275251"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Jul 2024 06:49:55 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 1 Jul 2024 06:49:54 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 1 Jul 2024 06:49:54 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 1 Jul 2024 06:49:54 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 1 Jul 2024 06:49:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S9gNAxqlyJTOfBFrJFqhJEtcOGAGngZEXOLI2vg7ElZUnJlGcMKbV8MdGnv1EufpXy5ridIGmzT5M9ZDgBmELF3+z0QoTzihPI8pVPuBayxty0NN94Bz6GhVSpbl1mIFGzSO8GbdQAA9FiT2Fjwl+nNPD9STmVkmLFDjWRpXI+j5KaLZ+X7cyfg3EBfdNE4cD4lTUjN5IZI0xOE+3JfGxH31BHrMocEGP3MNsll3Pr3iPf5vAtWhBMGw4U7hyphDwxve4ffFz50JcQyw2ZA6ckoFFISYuAg7wdkt+2sr7LtDxjDoQklcx7HQi2FVrYYLaCQI5oSNEmQlg9B/+MmOEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dXWXGqWuT83DvE61CsiyeoT1uy41fnuB68VkUkaip8U=;
 b=j6frRpjfoOlTze2NhKjRC35U7N4fI9zNHGbP3KonDrnHzjQfOIeNmdR6zU04Ntn8k/hE9ZTLFRqDnzvEx7LdS68AMaLkifcu2NjrMiZpaHVHP4boh7oMoI5FBrYDJX7HIu9hXQvfBuQbIXhCad5JwDL13ccRHYCwlgl00XjJzigVNXLd0cMASZ5pLORcqJ+NUJ62vKFHXoy2tWrtHCqr5j1KYqgK4sGvArGk0FHJLViXy2rYOm/5G4Rl29qfo5z0RKGG00LcGAf7PbT+rKv20VmQ4A+PcTJO+hpFFcCle0DUY8SQ4MSImzWiqVJktTJKfqAx0bOyNJvBBw/Nbdk0Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB8380.namprd11.prod.outlook.com (2603:10b6:208:485::21)
 by CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.32; Mon, 1 Jul
 2024 13:49:51 +0000
Received: from IA0PR11MB8380.namprd11.prod.outlook.com
 ([fe80::8227:fa7e:8d8d:df1f]) by IA0PR11MB8380.namprd11.prod.outlook.com
 ([fe80::8227:fa7e:8d8d:df1f%6]) with mapi id 15.20.7719.028; Mon, 1 Jul 2024
 13:49:51 +0000
From: "Kolacinski, Karol" <karol.kolacinski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>, "Temerkhanov, Sergey"
 <sergey.temerkhanov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 7/7] ice: Enable 1PPS out from
 CGU for E825C products
Thread-Index: AQHayKRf6IUPWs6oGU6KWaXN2zV1eLHbvqeAgAYmeC0=
Date: Mon, 1 Jul 2024 13:49:51 +0000
Message-ID: <IA0PR11MB8380EA4A9A449450E299AE9F86D32@IA0PR11MB8380.namprd11.prod.outlook.com>
References: <20240627151127.284884-9-karol.kolacinski@intel.com>
 <20240627151127.284884-16-karol.kolacinski@intel.com>
 <1039bcb9-c390-495c-b5c5-aca03a5a6ba4@molgen.mpg.de>
In-Reply-To: <1039bcb9-c390-495c-b5c5-aca03a5a6ba4@molgen.mpg.de>
Accept-Language: en-GB, pl-PL, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB8380:EE_|CY5PR11MB6344:EE_
x-ms-office365-filtering-correlation-id: f6c82920-7d30-450e-9869-08dc99d4ae58
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?Windows-1252?Q?pCijHxQ4XjKPJXLr6JWAj83wzu/RDaV5vVZ2q3RPVI2DcwOYRvFf75eE?=
 =?Windows-1252?Q?d0NZl7v00XRCHLtJtymfdUO8IpdUFzoFGSFfyd2U0oWrIRr84mJ7v095?=
 =?Windows-1252?Q?EdCLqXCdOGiGBuceSmGE708qiECyjV2+Asn13gGV2tJO8UUKXReatO8Q?=
 =?Windows-1252?Q?0aLfE6Ztf5j9AuLsWPhhtb06Q20QgIYnLgJz3toBzE6kaj6HTNUPb2kC?=
 =?Windows-1252?Q?07Ar98yoovIOG6gaTCaudpZfXFam27TqZpsOgBSmgGOcbv+N15AR6p35?=
 =?Windows-1252?Q?SZCsidubxqCLU0D6mev5xxaf5tB4WD1+JCKs/TaKzzgQf3iyTDNSreF0?=
 =?Windows-1252?Q?ueCu2ptvX8iARbTbHut8XqxuCMdmZMgKXE3wnaCMBdrMg8ONQ0amNSdQ?=
 =?Windows-1252?Q?3Hdulge18cYNDsGkPDJkfkExINttOM3tyfyS6TTlzlbHUUoKK8G1KMHl?=
 =?Windows-1252?Q?usPyixroe/V1ABae/WGBeVvN471WfIiCB1MjCFR3Lcw5bFY1UViLc5J6?=
 =?Windows-1252?Q?cyNmDcj0cKGRotmQ6E2CrcMchGKkLuNUj+P/KReApwaEsqV9VSsqegrH?=
 =?Windows-1252?Q?/yW+7xH1R3hUqf/UIPNjFWX/PKE8DrYzp2cB4/YmJFRYVjwJfiFDcs/w?=
 =?Windows-1252?Q?ZuyKYNELbMANNccXH0TuAtWAGyuZXMQEDoMkBTlb+xXLN6Z13wdv8jjL?=
 =?Windows-1252?Q?bLiYrusoEvviCctlyfzdJxW6JnKNJesN8oMmmwfrAIBFnV5Hpz+2AjC4?=
 =?Windows-1252?Q?vkcRBLRws8TqPrFMpGtLQwViCDi/Liujz6Id1zqMpC2XS8wr1DSe52OY?=
 =?Windows-1252?Q?hXYQVXfZ2RPiD8Ungirkpy4sqVv5emvn58enwAtMlKZxwxxCvwzst5iJ?=
 =?Windows-1252?Q?U87abFtcQdQ6qax4VsdXXplCq/xd34yb3sUcqOA9fIACeCcnI8TO2/Lq?=
 =?Windows-1252?Q?bbvBcgiUARvkL8IQwVFupYi8kRG8D8HQWVMhRdl4mqnbprW6vbmoH4Np?=
 =?Windows-1252?Q?vnFYGTRXS1DZg0oPm+8n9csOBD0t47m7J2EJ9s7y+W5rmGEDs45BOrNl?=
 =?Windows-1252?Q?+TsgsxsWloSOhHy0rheb2mfvQGtlDS2t/zFhEOhTBpV7nMMAgp6urmib?=
 =?Windows-1252?Q?NBvSlBWYy1x7nsiU1OC0dARgYTAjoe1SNLdcEq+5aN8ec2XyWVbbggIM?=
 =?Windows-1252?Q?z5f5GoUeqfGXBCNbFzm9jZbMlV9RyaG2T/e5zIHY+zSkdoJBBPu6Q9UM?=
 =?Windows-1252?Q?Z6j6+3qLOfwwMRm731aVDyQvftw/K/uTysCPMgNiEllK/yCIvSyomWXW?=
 =?Windows-1252?Q?4RtkYnsgreCZ2HedvEckbC2HOa7lHsIzWeBV0BpzUCJExoSuPhNXv2ms?=
 =?Windows-1252?Q?MHfNheKS6vP5NKDqvIPi98WFomOEpnoUgF9X0uQGayQchbXswxY5UF8N?=
 =?Windows-1252?Q?0akf3l1KAZGbLfvWa8bZrY7pSY9DiGC1rFoHvYSim613r4qsoE1ZCtbu?=
 =?Windows-1252?Q?mjue9h34ic4hE++AhSl+d+VzlL3A5Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB8380.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?8quuflSZVvmG1h7bA/od9RPmq4yIY80K/1anK43MqdsHeo5ySFDfOsGn?=
 =?Windows-1252?Q?m4v+qO8UEWhYlcZpGU6CQdCL27rOx4OS91bEpE2qNjcZz9+BU17nIr7a?=
 =?Windows-1252?Q?YtjLz9ZWBIi2P6/DldPFTZwdu6LSFUUgnFQeU6p5Zs4QJwfLBRlK3ujU?=
 =?Windows-1252?Q?aRsvWf7dxQIprjjHNbxKdjt7o4sN4TflkQG61znSFkVUJSo0b73QeG2t?=
 =?Windows-1252?Q?M1C1R6i0a1On1CljD5OfpaiLsaOPYLzA0+5YdgxDyqVpCbZiWO8Pzk8o?=
 =?Windows-1252?Q?mNCVxSasNbHzcKIGuZOEgKmEkAftUpSGLElefZWpNtX6mfAChhprFGsE?=
 =?Windows-1252?Q?DxqXewq2ou0Iq0LLucUFjYx8ljAGpXx6tu/bSvpl+1x1q1ZUQ4BAxgrt?=
 =?Windows-1252?Q?oEdfhVDTZQOkbTc1PI70SlBANHgImFMz+XADGecYx9/1AoxDYINEeUJ9?=
 =?Windows-1252?Q?1t5V/HcLgWD6AdlmJbM8nGRHm4+qKuC2HDTDabvkfRUNhEoUqx+hLuCX?=
 =?Windows-1252?Q?eyQ55zMlEdWMEozBsvhbZ85fTMObjziE45nqHOm5yY7ars0OHfY2vzUy?=
 =?Windows-1252?Q?jxXspIHlmF9T+rvNslCymtvAMlturEmI0jq6S0bz72wFynJ/Rdvtatt/?=
 =?Windows-1252?Q?HGefG0tv8RAfhYm227/9RZFP9HXOsUNEuGPU0ylmPL58VYbZiSmpZI3+?=
 =?Windows-1252?Q?7MGmGgtd1plBeLvL5xXR7gVLHaLCjd2ku/FI1jtHMm8uif03GOuLqSlr?=
 =?Windows-1252?Q?60LwXX/oSMfyYGWxTiL0ar0+Aq9GwVjiYlUIU/RuudgujXMalgKol6sa?=
 =?Windows-1252?Q?GVXX4z/2tN5JbOxp+8BgIKHkYQWLCidu+GunpLZJaViX56co8AtoWEa/?=
 =?Windows-1252?Q?GY9J8l1KAKBc2YHilqcPmztkTdYNUDid49m1iO7SDTLT50uG2Rmjpjfa?=
 =?Windows-1252?Q?nTr290KezDNyxp+Qsg/ur2B1tbTKlsGKfzvNoqZGRjFvVVkT4dbzE7XN?=
 =?Windows-1252?Q?mlHZjEK+zNgbhfymJbbDKoYZaEC9WEvLkY4jFGkq4X1x0Fz27eOFnwD8?=
 =?Windows-1252?Q?mbFAuzvcQ8WXc/HzPCHUrAquQLSXqaa4Jc7C8SuqTb6XIsn2yLZvQdIu?=
 =?Windows-1252?Q?7ULHnfEWdw58g+5v4mZZqmitvYG95BU1ft6M74ECFS7VA+YleOiphECh?=
 =?Windows-1252?Q?PCgT/+zd2Qz0Jl1S2dtb29f0/GB5624X7iQLGwTk35yicVufkkNuimj/?=
 =?Windows-1252?Q?p6CZ6PCO4HfEBCle1H96xmzcWgd7DNYefxkWjXRdWjQVcuehrTBnBFid?=
 =?Windows-1252?Q?r+K10d03mae+r5XcFP6vsrllt36p3MBMfoNZzvvWP6SMv3o9vLipZsTD?=
 =?Windows-1252?Q?jZK9iDOTHoi0IG6sC9exl8SZav3xQyH9klH42BYaKZ5InJ2qZTdWag1+?=
 =?Windows-1252?Q?7+Q5s7VQSEejK7W4GNZs+IlrEgBxZDTfi/Juaa+voHfI2J1YcRNq1n+C?=
 =?Windows-1252?Q?SLm3TbAwhByyOF++tj2tAbCXlVByRXz3530htT2Px7zGmSlMF/VpF70+?=
 =?Windows-1252?Q?zQm07GgoDMYeJ3bM5QM1LqvbJaaD63JgIB5AQbisE/U6m1gtFh8ywULJ?=
 =?Windows-1252?Q?U2zvfvIyRdfwsNq38R0Lzq/RUpE8MWfOLmQvThfvFhooP/lljf2u16jl?=
 =?Windows-1252?Q?oTBheIoF1Mt+3Nr65H5pyrt/YT5+3YVPqrgqo+etM3SDXLClLd4GAA?=
 =?Windows-1252?Q?=3D=3D?=
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB8380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6c82920-7d30-450e-9869-08dc99d4ae58
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2024 13:49:51.6577 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JaSQoc2fCTVlAWmnqFXv2C8Eb/kqMsGsgBgz/Hdimz9f9alKVmctqI3DyiCS4w1QiF0gWnLtDKSeWN9154sUKVMKxsxHoOQn8BOzEOeWcxY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6344
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719841796; x=1751377796;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dXWXGqWuT83DvE61CsiyeoT1uy41fnuB68VkUkaip8U=;
 b=mXQIn1G55lWUVpQoKFM8kc63jHZC0f+78YD68qVDdsLYwQUwNPODFPcT
 6cTwH/foIercqDgS5KNvTxbrmHyQIBOiYpGvsKOOSkeRyQMPOqtQ+KFx1
 A4n+O9zyjM1pjBtOdyF3ZNOSWFcf4KBtTQjfsG7tYQJlybHPY/oqlLbu8
 BjyqqSrPxc3/PsDyXmandGxUCtAXJhA9Lb6CcEi0Cj1bvD8ZOJ9QeMS4w
 F7cD5sEE3HbjmN72BczkVIfHDpvSbJhqx+fGMu+fTVH/TbuWyUlOq0C2g
 5BXD9eJPMWgv97AfGYQ0xF0HQ/QsDSr5eKw+CzU6x/vgHasrzHlraMPwc
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mXQIn1G5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 7/7] ice: Enable 1PPS out
 from CGU for E825C products
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Paul,=0A=
=0A=
Thank you for your feedback!=0A=
=0A=
On 6/27/2024 5:37 PM, Paul Menzel wrote:=0A=
> > @@ -1708,6 +1709,15 @@ static int ice_ptp_write_perout(struct ice_hw *h=
w, unsigned int chan,=0A=
> >=A0=A0=A0=A0=A0=A0=A0 /* 0. Reset mode & out_en in AUX_OUT */=0A=
> >=A0=A0=A0=A0=A0=A0=A0 wr32(hw, GLTSYN_AUX_OUT(chan, tmr_idx), 0);=0A=
> >=A0=A0=0A=
> > +=A0=A0=A0=A0 if (ice_is_e825c(hw)) {=0A=
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 int err;=0A=
> > +=0A=
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* Enable/disable CGU 1PPS output=
 for E825C */=0A=
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 err =3D ice_cgu_ena_pps_out(hw, !=
!period);=0A=
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (err)=0A=
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return er=
r;=0A=
> > +=A0=A0=A0=A0 }=0A=
> =0A=
> Does only E825C products support this feature?=0A=
=0A=
Yes, it's only necessary for E825C, other products don't need or support=0A=
it.=0A=
=0A=
> > +/**=0A=
> > + * ice_cgu_ena_pps_out - Enable/disable 1PPS output=0A=
> > + * @hw: pointer to the HW struct=0A=
> > + * @ena: Enable/disable 1PPS output=0A=
> > + */=0A=
> > +int ice_cgu_ena_pps_out(struct ice_hw *hw, bool ena)=0A=
> =0A=
> Is `ena` short for enable?=0A=
=0A=
Yes. I guess for the function argument 'enable' would be better.=0A=
=0A=
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/=
ethernet/intel/ice/ice_ptp_hw.h=0A=
> > index ff98f76969e3..382e84568256 100644=0A=
> > --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h=0A=
> > +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h=0A=
> > @@ -331,6 +331,7 @@ extern const struct ice_vernier_info_e82x e822_vern=
ier[NUM_ICE_PTP_LNK_SPD];=0A=
> >=A0=A0=0A=
> >=A0=A0 /* Device agnostic functions */=0A=
> >=A0=A0 u8 ice_get_ptp_src_clock_index(struct ice_hw *hw);=0A=
> > +int ice_cgu_ena_pps_out(struct ice_hw *hw, bool ena);=0A=
> =0A=
> If *ena* means =93enable=94, I do not like this pattern very much, and I=
=92d=0A=
> prefer an enable and a disable function.=0A=
=0A=
Good point regarding the name, I guess I should use 'cfg' instead of=0A=
'ena' in this case to be clear that this function doesn't only enable=0A=
PPS output.=0A=
=0A=
That said, I don't see a point to use two separate functions for=0A=
a simple enable/disable functionality. From my point of view, ~20 lines=0A=
for 2 lines of actual code difference would be unnecessarily redundant.=0A=
=0A=
Kind regards,=0A=
Karol=
