Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D6346CB5884
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 11:37:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 89DC24068B;
	Thu, 11 Dec 2025 10:37:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G2iO9eUj-mdM; Thu, 11 Dec 2025 10:37:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D223A4062E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765449460;
	bh=CHreyhYR/XivxpAspTJ9AF0zzjtGDc/8pQHMoLJmUPU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6s2+KqapMZ4qVq/e2v4Np0Apu/zuRFDCi1LNSoYngnCp9SG9g4TeYQcK7p3vhKup0
	 3fdnfkTKiv79I6w5oF6Bj4HOw68/Xp/t3QOvrL2gUNsPkdz9ARWHCYXhfd2qZV7pPj
	 BVgUQqBSCuqH8WaInslFzAIdJYwbsOGIbX65MNOP71UbJDqvK4Nt80Nf4gsB10HItJ
	 F/dNnx2bRaw+xQBaa8qKjnQ2tnuTFa5ppTIYvEgEFwZv1sxcKxygH4q1QluuBXoVR1
	 3hKTVqn3+juC0+5sf8w2N5P2GINnhJaIr0rbUSCJGRfPj6CNk2B9psTCmAFP9QpFkY
	 Z8lXH+KDQ4maA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D223A4062E;
	Thu, 11 Dec 2025 10:37:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3016E2C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 10:37:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 15B4860835
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 10:37:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s3Ai_tcLI-n6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Dec 2025 10:37:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 38CCE60817
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38CCE60817
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 38CCE60817
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 10:37:38 +0000 (UTC)
X-CSE-ConnectionGUID: ZstzyiCdTAiYkhRVm3W6aA==
X-CSE-MsgGUID: oIAxkTh9QDuW6/GaPBe8EA==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="84836580"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="84836580"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 02:37:38 -0800
X-CSE-ConnectionGUID: GuJGa1oWQBC4+d7QH9mU4Q==
X-CSE-MsgGUID: erFHYRAeRJa/8SEkeWtONw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="234169860"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 02:37:37 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 02:37:37 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 11 Dec 2025 02:37:37 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.60) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 02:37:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zMqBdC97pxhYfO1xD3VmusWv/EBqRG60BGtbqiTm/sTA7Lv3xfLLXS1gByNE5hdWBGQnGHpIhKoU2pxvgbsIoseOXA5T/RO6mSRHUmDznzuIIRXr3MTXtyMKsAYBS8FmGBGDarLWzhE5Xzu5U5fNBgu1Ommpb5Wf4xDaHmUv/8inkm32NYpitKeNekx1UqS2QQmpkSOIPfjZ8+y4s6AtJVJRn1456i1SV3blBZC9sj+K5VGU42GJ1UB6PK1BtPY1bBcsStddUYtIQ1QKVowce6BWC5GS1T5SYboA9ULeRdXYI0Rsk5y7pxnGVGsGCPVQkEqisVb+yGbqq1Qw+nK+MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CHreyhYR/XivxpAspTJ9AF0zzjtGDc/8pQHMoLJmUPU=;
 b=XQOBBbhe/K7fCKqn/ZWB5UpSJ9N6yXHRUrXCYlaz7PE573n9gixx4VHtzLduDYRe627lkjssaZmY7eFdTFt85wfXhKF+JnUDOrVfmuvERJVogYCtPIPTdJzMy2Ne3hkgITY+efQ3ZabLAzxTlpKVAfcyMTHuxk/Qld+BpeqmtHyfpbmeHFUMqL4Qohqb92DGaadQcSOGUOba/QlIZ3y71d+Kbsr9fRrJIGWqMi7evDjyLyVgyBctsOhKjWWH2KLCew/HKzbPhlsJ/mg2DBVW051+g9uGA16a3kaHnkUmgOOG6mkLZKFXdsSAnH3UBZ5VjWsToe6NiY6ZpfmXZdNh5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS7PR11MB6296.namprd11.prod.outlook.com (2603:10b6:8:94::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.9; Thu, 11 Dec
 2025 10:37:34 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9388.013; Thu, 11 Dec 2025
 10:37:34 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mina Almasry <almasrymina@google.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Richard Cochran
 <richardcochran@gmail.com>, "Rizzo, Luigi" <lrizzo@google.com>,
 "namangulati@google.com" <namangulati@google.com>, "willemb@google.com"
 <willemb@google.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Olech, Milena" <milena.olech@intel.com>, 
 "Keller, Jacob E" <jacob.e.keller@intel.com>, Shachar Raindel
 <shacharr@google.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] idpf: read lower clock bits
 inside the time sandwich
Thread-Index: AQHcaofClTtAOthzAUKjmruLMS4cvbUcPfEw
Date: Thu, 11 Dec 2025 10:37:34 +0000
Message-ID: <IA3PR11MB8986D6D6FEB5B8D443E6F087E5A1A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251211101931.2788437-1-almasrymina@google.com>
In-Reply-To: <20251211101931.2788437-1-almasrymina@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS7PR11MB6296:EE_
x-ms-office365-filtering-correlation-id: 8b33feca-99d6-4588-353d-08de38a14ba3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7416014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?SGpIYldzY05sQ3VFbGlWV3YwU1dTb2RqSXlDZ2xxNndudGlwLzFOcVpsRTNE?=
 =?utf-8?B?Tmg4djY4MFRPY3YyQW4wYVB2aU90ZFNabTJCT0NjdjFwVzlVU3RMdmYzY2pa?=
 =?utf-8?B?cG50WmtkdUE0eG1DbStCYmx4bjhqL1ZlV05KZjY2eUFiL3FGaGlQc1haWlNC?=
 =?utf-8?B?ejludmduVytwK2hwNndvMDUwcEhNSy85SWVRamRFVnpuVGpWZW5qd0dEL1lI?=
 =?utf-8?B?RjJiVjBOMFZmb01zZ0RaRkRDVUh2cXhSbzJ6ZkVYYXRERHByV2w2cXJEK3Q1?=
 =?utf-8?B?SXdndlczUVZhRER2Ym5yZnU4MkZFSlFDbEVyaGdjSTE2R2xXWmJvYW93UjVQ?=
 =?utf-8?B?YVhjK2NrLzVGcUkxVHIwWWVoUjF2UFRjK1ZqYXhDUUlBcDJDcGdQZEhPMTd6?=
 =?utf-8?B?WVg4ZXVRMVRWQXJpdFpqc2hmbW1tNk8yTlhYZDgrczBHbzJSczJSM3NKQjk3?=
 =?utf-8?B?dzhLQmJOTm5BVFU3U3FsUFhBc1AxUU02dTdLaUJRcXhlbVdMUmJ4ZWw2RDQ3?=
 =?utf-8?B?MXJlMVdpYjJBL0xLcDN2SWZwSklFOTFsMTBRLzZzb2ZqbmlGRnZlLzhpZmcx?=
 =?utf-8?B?L1ZaVm5ESVNIVXFCa2xpNGxYZFR3ZDhsZXJBdVZoZHRXSzBOdVJqRTRtdmNS?=
 =?utf-8?B?cFMvcDBicFlNSlA2RWlJZGxvd3orc0Jra2FudzVRTW9NdTBGTUlJclpuam1v?=
 =?utf-8?B?eHVkSHZJOE54eVVtZ3ZuV3d0VEx0aU5TT3VFMnhvNFVjeklUSTc2akc1SC9x?=
 =?utf-8?B?MEp2a084Tnk0b0ZQcTJQM3VCOWErVjFHYWdTaGlIQTkyVUM5L1hiaXpBS3NR?=
 =?utf-8?B?S0pIbDltOURlWmJmcUV6dmVvR2w2UGFoSlpuQlBWQUszb3cxVmVKcVJNd3Ey?=
 =?utf-8?B?MDNqYzBoZ21FcG5nWEhZMk4zKzUxODhscCsyRUVSTHJRajlUbEZRcXh6b2w3?=
 =?utf-8?B?WGZVT2hCd0lWSGp0aG5DQXhLdjJoMjNWZzJiSWFOQUVWNXBxVEtoTWNqd2d2?=
 =?utf-8?B?NElDTTBWRHNUOERTZ3ptQVhBNXg2cjFYR3FabHhLSlVPVVpML0Zvc1VxNGtq?=
 =?utf-8?B?V205TEMvKzFTMEpnS3NHTDl4WmY0UTFZVm1JWjhvY0kvVUpTVmtRUnptOEw3?=
 =?utf-8?B?UUp1NFByeUJZOU1HWHo5QTJPcDg3WFR6OGlITlVVM0VIU0Noem9WVHVvOFVh?=
 =?utf-8?B?MmkyZzJkdGRTNjFjUk5QclFaSnZuOVJUeVlNZjNYSTIyREFlWWJmNVJISUQ2?=
 =?utf-8?B?RlRhVUliUFlQVEdEQTZFNy9uRmZ5dExHUGE2Q3QzMHNRMmZWY3pPbG8rYmlU?=
 =?utf-8?B?SlVuRlF2VzFyV3VPTDNVeHZQdUVHVmtUQ3ZjMVBqSDFhcllQSW8zT2R4UzN2?=
 =?utf-8?B?UitESnVtS25pbStZOUhJMEo3dXBaNmRnbDdCQVY1MW1WMGM0UVRZUk4wRVoy?=
 =?utf-8?B?WkV4UXJIQW1qNmU5N2oyRldyS0VrZmgyRmljdjB2L2EvdVMvci9EVVNhRTJU?=
 =?utf-8?B?M00zTEdkbDBPQkVObkdyNmJRa2VpOWlnNHcvcytEM0FmNjZvSWdNR1RNMWZw?=
 =?utf-8?B?aWxYVkpOTWIxbGN5K29OTXE3VWRkOFg4Wko1R2d1Y2tma2VBSzBTblhHam8v?=
 =?utf-8?B?NEpLdTJsU2xLT1JKRWJzdTFaV1prSVdPR05DYjRuVFMvSnZ6TTBFMHpxb3hw?=
 =?utf-8?B?RjhpMkRlS2xwQXZyUytXaVhFRmtRVFpjcmdiTnVtY1pXczVNOER2S25WZVJ6?=
 =?utf-8?B?MVNHSitpS0lZR1RuT1lWLy9CcXpnYWEzRXMxWWx6U3h5cDNjbTVaQWk0SlZx?=
 =?utf-8?B?eWRTZERSdjdaaU1zQmU2K3doYlo3VHhGcTliaGViVmE1SEhYZGwybUgrVE93?=
 =?utf-8?B?dkFhL2k2clJ1NnlWdTQ0WlpEWWlGMnZpeWQ0aGQzNk5RRFdkSFFKeXlBR1dL?=
 =?utf-8?B?VkFzZ1FYL3EwNTgxTFdqYXkrS1hZTWlSckFHSm5LWS9LeEZ5eVNOZFNaS3NE?=
 =?utf-8?B?U3Z2SHNpZUd0T2xTYlMxRGFic2NyYisrVGFvcjM2NDJKTHVlaFFNUFBZV3JT?=
 =?utf-8?Q?SC1mtO?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7416014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z2p2Z1Q5S2tyMVQ1YVpKcFU4VjhBb0hKQ3FnQkRwd2wwdmlGWDBXTThYc1FI?=
 =?utf-8?B?aU5nY3hZVWc2eDllMzVvVjRQeGRyU3RvSlBabmZLbENZUlRFS2dwbEI2YUMz?=
 =?utf-8?B?ZnpHTVp6RVNvdlNOQzJMQWVnUEFZdWZaS010MEl3dmFqUStIdkR2dGpxUmVP?=
 =?utf-8?B?bnorNnQ3TXVlMmQ0QSs2NzB0YUd0TGwxdFBCTjJJV0hWMVhsUnZ5aDJvQXdw?=
 =?utf-8?B?a2VlQWlvVmhyVFJlU25wZVp6SDBvcXVES2ZjTlBnVDA0VXorMkVmbThYcVA3?=
 =?utf-8?B?SVdOQ3N1UXhNcWNkd1pIakp6R0lzNm9nY05maXVHdjBxNVIwVm9uZGErWmVq?=
 =?utf-8?B?b3V0b2piNXBkTzhiRE51SXVnNXMwVVRrdUE2dnZIeG9CY3dTVkozTFRzd1JT?=
 =?utf-8?B?WlU4QWVpN2RvSkI4VDNMWllFRWtkWHJKeVFMemQ5VWVtWWlpQmM2QkNiQWxM?=
 =?utf-8?B?V1hBTDZvdEIvSURRZ0Q1QkthZUxud0xETEQ2a3RIZWFsWGpVVEJKUkVCUmZ2?=
 =?utf-8?B?QU81ditXTGZBSjVXYnYybm1ZaWVpM0s1M2ZwbGErck4xVUdQZGJ6aFRjci9Y?=
 =?utf-8?B?bE5RdHp0VjlhUHdZZmMvWmhDcWNIZExxQzVkbVFZZXR0bStNU0lFcHI1Um9U?=
 =?utf-8?B?RTFTWkxJcUJ6eXdUMTRRcXpYL1Flc01GRFFJQytyMUF5ei9IVjBqMFNxSVIw?=
 =?utf-8?B?bnZzVFlTbGhSZ0xoVUFxZ0JSUU9Obk83aWVzVkhVaU5WMmo2L1o2clVDOFRk?=
 =?utf-8?B?R0NKYVVNT3R6cEc5VWxqaUpyc3o3NlRoS2IzdGJnTDYrZ0txWUFFWGQreDRv?=
 =?utf-8?B?MWdXcUxRc1luWjR2SG1SVlNlUFA2OWhpTUdSbXNVdy9kWDhsZytEOWJrUnFw?=
 =?utf-8?B?NUhOS0NzUnA3cmVlczJBOXlWWEloU0N2d0ZMbGpUajJUUlFIRzRtZWIybE91?=
 =?utf-8?B?cXNJTGFlVnhRcXhQakZ6MlUxSXZpSGN0OEhHZzQ5Wmpqc2xvMmNVcDBRTm8y?=
 =?utf-8?B?elVTTFJxU3I2ZEtNNTIzRWU3d2hYcEJMbllGZm1YT1JBSFNGOFVrT1k5eDhH?=
 =?utf-8?B?UWYwb2FJZzMwTjJ6UlBxaS9rd2VsZHJ4S0UxbzZ6YkJyY3VHVzhIaGFqS3pH?=
 =?utf-8?B?dmREcnB2azJKSmluRWk4VjlIcUUrOFFBMW94Ykt3MHdBRk56Tld1aWpvWHJa?=
 =?utf-8?B?QzdneHFaQ3BBRkhWcVZKTkF0bVFJS25ML3VIZHhud3pyNUxJcWNJZnVyYUQ3?=
 =?utf-8?B?SHNpVnhnUUgrRFEyYUY1QzRCV01zSkxRMTNlS2NmSmRDaitYT0RZa3YwR291?=
 =?utf-8?B?QnlobVo1RUtXWUFSUW5QM2NuVUlUU2Z2Q3g4Y0J6N2ZYbGg4WHZqN0c4NFBJ?=
 =?utf-8?B?bmhmYnZaWTN0MU10cGJ6TG5XNDZDQ3RJdml6UTlsM0tESG5rU3Y3RkQ0MnF5?=
 =?utf-8?B?Rk5GKzYxWWRLaitleFdhcmVVWlpScjA5cGhvclg2ZWM2cHZqam5LZjR0Wldr?=
 =?utf-8?B?OUlFRzdxMXlGRGdSSTFHVEI0eWVHWmwwRXdZNmpyOUxZdGNXbHNJNDhXckUv?=
 =?utf-8?B?ek56bG9EeXJTR1hyV2pLUUJGMzQ2UDl0ZWhRNEUvWkR0Ti9yNHNISjYrYXY1?=
 =?utf-8?B?NUE2Y29oWHplV0xvcjF2aklEbWNDcUZRbGkrMDhnVXZSaWFTOXRMSi9DRXFI?=
 =?utf-8?B?WGhZaGxFbldwSDNEVlFXMmdFQVNvL3dOem1ZWjZ2VC8wZ0xxRStwaEZ0bk1N?=
 =?utf-8?B?T1U3UjRoUkFtVnFMSVF3VE5SWWl3b21JVTd6dnM4dXJCYVA3aUVPMzJzclJG?=
 =?utf-8?B?a1VhWURkYWZIcDVYbFZ5VjNOdWVSQmVSczNOOGFDbkxuOTdwZlNJK29FSzdj?=
 =?utf-8?B?NERHdzdBMmh5RUdBWlBjdmF4Wk44enlobFhyMmUxREZIZlJId2dDWHk2SkZF?=
 =?utf-8?B?eDV4UFFvLy9lN2pGWnhJamMyQ3pTS3hpSXFSbzlTOWVjTDV4cTExR3g2bjRC?=
 =?utf-8?B?OUorWFNpMHZXSkxOcUpWWDNzSFkwbzdPY0QxQmdtbktCMUJId2l2WjUxdGYy?=
 =?utf-8?B?c1hEWWlrUDR0Q2ZnaTlnNk95OWo2cDhlZzFVZkhZRUJLTFA5K1dDTnV1MXo2?=
 =?utf-8?B?U1A5b2hHUy9keWdQUzR2MDI4VVpIS2Y0RjVlY3RlTWptZzVKOEd3cllxaCtX?=
 =?utf-8?B?a1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b33feca-99d6-4588-353d-08de38a14ba3
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2025 10:37:34.2856 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ts7an8+SQupepfD3Ggb4l8a4bRqS6lawamnTIIylAnIXxz6J+vUfPhsNQT/cC52uOWgqu+dBg/WBwSP5/0R6jM/ncVl73S3Scvhci1WQc4k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6296
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765449459; x=1796985459;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CHreyhYR/XivxpAspTJ9AF0zzjtGDc/8pQHMoLJmUPU=;
 b=aXIBfgUvEAqWJfkJqCT3mg2kmfatwSjfaN+Nw+DWJvVjY8FyLANDf773
 g68nZJ3wFQY1yfH9CHLjDqipF4JH/9yyfpzDpPDsu1ejnf/LSDwE642T7
 JRNjU+RWqv+Kpn8t/Hg9E6IxekajmXgQF+xqPIr6YJ6bEEU1clOwr75W1
 78MJRt8PgfvyN96ffkY4fGHuwC+zB0zvG1fCXvfYOy0S1x+ybYh/vQSj5
 bFrcFg5jfMopHBbTMcxILdt+tb/f4D3uc3cgMdb1iU8ftqW+5skUy9q+x
 KHIH0h77x6DMNaV4hWVWn1xYk0la0O0VFg+dr6JGayyfi+dNnBhslJtEl
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aXIBfgUv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] idpf: read lower clock bits
 inside the time sandwich
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWlu
YSBBbG1hc3J5DQo+IFNlbnQ6IFRodXJzZGF5LCBEZWNlbWJlciAxMSwgMjAyNSAxMToxOSBBTQ0K
PiBUbzogbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9y
Zw0KPiBDYzogTWluYSBBbG1hc3J5IDxhbG1hc3J5bWluYUBnb29nbGUuY29tPjsgTmd1eWVuLCBB
bnRob255IEwNCj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwgUHJ6ZW15
c2xhdw0KPiA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IEFuZHJldyBMdW5uIDxhbmRy
ZXcrbmV0ZGV2QGx1bm4uY2g+Ow0KPiBEYXZpZCBTLiBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5u
ZXQ+OyBFcmljIER1bWF6ZXQNCj4gPGVkdW1hemV0QGdvb2dsZS5jb20+OyBKYWt1YiBLaWNpbnNr
aSA8a3ViYUBrZXJuZWwub3JnPjsgUGFvbG8gQWJlbmkNCj4gPHBhYmVuaUByZWRoYXQuY29tPjsg
UmljaGFyZCBDb2NocmFuIDxyaWNoYXJkY29jaHJhbkBnbWFpbC5jb20+Ow0KPiBSaXp6bywgTHVp
Z2kgPGxyaXp6b0Bnb29nbGUuY29tPjsgbmFtYW5ndWxhdGlAZ29vZ2xlLmNvbTsNCj4gd2lsbGVt
YkBnb29nbGUuY29tOyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgT2xlY2gsIE1p
bGVuYQ0KPiA8bWlsZW5hLm9sZWNoQGludGVsLmNvbT47IEtlbGxlciwgSmFjb2IgRSA8amFjb2Iu
ZS5rZWxsZXJAaW50ZWwuY29tPjsNCj4gU2hhY2hhciBSYWluZGVsIDxzaGFjaGFyckBnb29nbGUu
Y29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggbmV0IHYxXSBpZHBmOiBy
ZWFkIGxvd2VyIGNsb2NrIGJpdHMNCj4gaW5zaWRlIHRoZSB0aW1lIHNhbmR3aWNoDQo+IA0KPiBQ
Q0llIHJlYWRzIG5lZWQgdG8gYmUgZG9uZSBpbnNpZGUgdGhlIHRpbWUgc2FuZHdpY2ggYmVjYXVz
ZSBQQ0llDQo+IHdyaXRlcyBtYXkgZ2V0IGJ1ZmZlcmVkIGluIHRoZSBQQ0llIGZhYnJpYyBhbmQg
cG9zdGVkIHRvIHRoZSBkZXZpY2UNCj4gYWZ0ZXIgdGhlIF9wb3N0dHMgY29tcGxldGVzLiBEb2lu
ZyB0aGUgUENJZSByZWFkIGluc2lkZSB0aGUgdGltZQ0KPiBzYW5kd2ljaCBndWFyYW50ZWVzIHRo
YXQgdGhlIHdyaXRlIGdldHMgZmx1c2hlZCBiZWZvcmUgdGhlIF9wb3N0dHMNCj4gdGltZXN0YW1w
IGlzIHRha2VuLg0KPiANCj4gQ2M6IGxyaXp6b0Bnb29nbGUuY29tDQo+IENjOiBuYW1hbmd1bGF0
aUBnb29nbGUuY29tDQo+IENjOiB3aWxsZW1iQGdvb2dsZS5jb20NCj4gQ2M6IGludGVsLXdpcmVk
LWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IENjOiBtaWxlbmEub2xlY2hAaW50ZWwuY29tDQo+IENj
OiBqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20NCj4gDQo+IEZpeGVzOiA1Y2I4ODA1ZDIzNjYgKCJp
ZHBmOiBuZWdvdGlhdGUgUFRQIGNhcGFiaWxpdGllcyBhbmQgZ2V0IFBUUA0KPiBjbG9jayIpDQo+
IFN1Z2dlc3RlZC1ieTogU2hhY2hhciBSYWluZGVsIDxzaGFjaGFyckBnb29nbGUuY29tPg0KPiBT
aWduZWQtb2ZmLWJ5OiBNaW5hIEFsbWFzcnkgPGFsbWFzcnltaW5hQGdvb2dsZS5jb20+DQo+IC0t
LQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3B0cC5jIHwgMiArLQ0K
PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3B0cC5jDQo+
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3B0cC5jDQo+IGluZGV4IDNl
MTA1MmQwNzBjZi4uMGE4YjUwMzUwYjg2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pZHBmL2lkcGZfcHRwLmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWRwZi9pZHBmX3B0cC5jDQo+IEBAIC0xMDgsMTEgKzEwOCwxMSBAQCBzdGF0aWMgdTY0
DQo+IGlkcGZfcHRwX3JlYWRfc3JjX2Nsa19yZWdfZGlyZWN0KHN0cnVjdCBpZHBmX2FkYXB0ZXIg
KmFkYXB0ZXIsDQo+ICAJcHRwX3JlYWRfc3lzdGVtX3ByZXRzKHN0cyk7DQo+IA0KPiAgCWlkcGZf
cHRwX2VuYWJsZV9zaHRpbWUoYWRhcHRlcik7DQo+ICsJbG8gPSByZWFkbChwdHAtPmRldl9jbGtf
cmVncy5kZXZfY2xrX25zX2wpOw0KVGhlIGhpZ2ggMzIgYml0cyAoaGkpIGFyZSBzdGlsbCByZWFk
IG91dHNpZGUgdGhlIHRpbWUgc2FuZHdpY2ggKGFmdGVyIHB0cF9yZWFkX3N5c3RlbV9wb3N0dHMo
KSksDQp3aGljaCBkZWZlYXRzIHRoZSBzdGF0ZWQgcHVycG9zZSBvZiBlbnN1cmluZyBQQ0llIHdy
aXRlIGZsdXNoIGJlZm9yZSB0aW1lc3RhbXAgY2FwdHVyZS4NCi8qIEkgdGhpbmsgaGUgInRpbWUg
c2FuZHdpY2giIGlzIGRlZmluZWQgYnkgdGhlIHJlZ2lvbiBiZXR3ZWVuIHB0cF9yZWFkX3N5c3Rl
bV9wcmV0cyhzdHMpIGFuZCBwdHBfcmVhZF9zeXN0ZW1fcG9zdHRzKHN0cykgICovIElzbid0IGl0
Pw0KDQoNCj4gDQo+ICAJLyogUmVhZCB0aGUgc3lzdGVtIHRpbWVzdGFtcCBwb3N0IFBIQyByZWFk
ICovDQo+ICAJcHRwX3JlYWRfc3lzdGVtX3Bvc3R0cyhzdHMpOw0KPiANCj4gLQlsbyA9IHJlYWRs
KHB0cC0+ZGV2X2Nsa19yZWdzLmRldl9jbGtfbnNfbCk7DQo+ICAJaGkgPSByZWFkbChwdHAtPmRl
dl9jbGtfcmVncy5kZXZfY2xrX25zX2gpOw0KPiANCj4gIAlzcGluX3VubG9jaygmcHRwLT5yZWFk
X2Rldl9jbGtfbG9jayk7DQo+IA0KPiBiYXNlLWNvbW1pdDogODg1YmViYWM5OTA5OTk0MDUwYmJi
ZWVkMDgyOWM3MjdlNDJiZDFiNw0KPiAtLQ0KPiAyLjUyLjAuMjIzLmdmNWNjMjlhYWE0LWdvb2cN
Cg0K
