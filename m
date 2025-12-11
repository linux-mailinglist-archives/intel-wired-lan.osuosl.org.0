Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 50CE0CB5321
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 09:48:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A8E384C3B;
	Thu, 11 Dec 2025 08:48:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qDrv8c_jF_TS; Thu, 11 Dec 2025 08:48:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8504C84BC2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765442925;
	bh=zY1+TnSf0uemgLzbdfrtR71DXAtUyLtOWQAbaaxUblo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=c7Mzu73sp3d+w5wbP0L246enB/j3+1/AdKjGK2wpIco6KbDwUrBhxj0oGqfS15tJi
	 HdSKdfd3hcI6eVu15iUks3YI3bEnSbJ4hZ3nCF+J9RQQ4k51sZg+pTUUwyDme43yj1
	 xVgda/QqclCiuf8bfbd6ZtBWb+jIVVrC8SJpwFw2BBQ+C7+iO1NHte8OacJDWsBrNZ
	 fW52PV8+kXOd9hY2P07qQpf926OOinxU4dl2TuVxvt9uurKtJBp8caSDQ5hqT3jn3x
	 dXF699eNrMRIR/WMMkRSfAymkAPtbf1teghOzsl/ock427UkUhCnzsSopKt3bsvUJa
	 hAT3MT9iyXHLQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8504C84BC2;
	Thu, 11 Dec 2025 08:48:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 441DA2C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 08:48:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2521340ED5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 08:48:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lj6zBSY2QNRc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Dec 2025 08:48:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5E76240ED4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E76240ED4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5E76240ED4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 08:48:42 +0000 (UTC)
X-CSE-ConnectionGUID: HFVyoxSvSyaU3dV9+eE2Gw==
X-CSE-MsgGUID: H/h6KYfCSt6ucVgujVVLKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="71267672"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="71267672"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 00:48:39 -0800
X-CSE-ConnectionGUID: eh4LhIB7RrWPdo5R3X5WQw==
X-CSE-MsgGUID: b5uCXkbaRZewDtxW1u4nsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="196643913"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 00:48:38 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 00:48:37 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 11 Dec 2025 00:48:37 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.39)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 00:48:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=psAN5Vq7/CxiFhSa2WXqZhbwV/2UF/K2z5QHK3Y2u74EzxE+O3JH5b9PEWDJqahoybxxxidl8RQlwCFYH5H/V3P9sfAQ5AHW/ofKmYm9MNxYrq/MgZDr8zBtmZz4v0wdKZVp2P448qZkZQJQMvqNBiCWBvqL36GETMmM9hRmSehKFOD4dzSO1E4lT796xwTxqKmZsgR0DH5dQr8GViPzEvQShCrl6onogoGPrDqPeDMvWnzJK1r8RtPMAAEc/JNn2GjyfbQWnQmq9C6LmTHuR0/UaOkFinUjJLNlE6FAKDNUmoFPwnhb3dvGfp9klIhYT3/WxNoUCbO7zeLUcrH93A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zY1+TnSf0uemgLzbdfrtR71DXAtUyLtOWQAbaaxUblo=;
 b=FOJ0RdROimGyxQLQnezGUm88MLBITeYsgL//WQE9cNU9OBqaRINGcvXnnpHIutM90JTd0sRZ0M66/nQ7fYD7dj/OT8RlCuoOwMp4r4q6azyyRUlsLaz5VDL9p/rPJaeUWzPuB5p3MkW2o1nm2pH0rVfu4eNfVED3ct+upD78dAo+RKV5jCsLJvSioHu9Ru3x/okykDiJ+slai3ToSIFMRSkwlIdCDxBWGzhS/Ek84F74TWiyvRUbzUzR1k5WP3UnHZZSqoRWRvhz2MCOKytBRTeo6BTDef1qqmhgJNnnGM0hV8SeRfMwlyTEhUMAIMqrnuIWBzdwCktBD7oen/UE9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by LV3PR11MB8676.namprd11.prod.outlook.com (2603:10b6:408:20f::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.9; Thu, 11 Dec
 2025 08:48:31 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%3]) with mapi id 15.20.9412.005; Thu, 11 Dec 2025
 08:48:30 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
CC: Paul Menzel <pmenzel@molgen.mpg.de>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>, 
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3] ice: use
 netif_get_num_default_rss_queues()
Thread-Index: AQHcSXwxdLbJAJbrHki0ysK+kf97/LTaZx0AgAAHaYCAABFzAIABvmOAgAeohICAOHvjgA==
Date: Thu, 11 Dec 2025 08:48:30 +0000
Message-ID: <IA3PR11MB8985436271D639ABB95305D58FA1A@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20251030083053.2166525-1-michal.swiatkowski@linux.intel.com>
 <370cf4f0-c0a8-480a-939d-33c75961e587@molgen.mpg.de>
 <aQMxvzYqJkwNBYf0@mev-dev.igk.intel.com>
 <621665db-e881-4adc-8caa-9275a4ed7a50@intel.com>
 <aQS216HKiUmF0tky@mev-dev.igk.intel.com>
 <ba97ee38-a9d6-4d59-811b-055534ffbe8a@intel.com>
In-Reply-To: <ba97ee38-a9d6-4d59-811b-055534ffbe8a@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|LV3PR11MB8676:EE_
x-ms-office365-filtering-correlation-id: 72f80e99-5fdd-4e19-ecc7-08de38920f79
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?bXdQRkhNUVFjcERDZUNnaHVhK2lJbWFTelh2bW1hSnZjQTlvQWFBSFloS1Zk?=
 =?utf-8?B?Q1JGTHJEeHVxYXV6STk3WklJVFNtT2krdElFWDBPdUJxVGplOGtybXVGeGhx?=
 =?utf-8?B?RWVZUFllZkpqV0laZi9EdXc1U0tGZXVpQ3R5Rkk2aEZ6VU85YmFLSXVUa3RR?=
 =?utf-8?B?VldPbmJGaDg2SmZWbnpHNFg0aGVqWS9uRE1DTENObDlJVmJWNWxrQlZyeU1I?=
 =?utf-8?B?Z3ExR1lyb0x3V2VRVnlEaTVVMzFzNFZGbjN4VGdZVFVLUlF6SVNQRzJNWUox?=
 =?utf-8?B?Mi9qVXlrTDV6dkF2TVNJcllYT0Z0VHh5RnFxc0hqbDJ2dkkvRmpsZXhQVDI5?=
 =?utf-8?B?eW1ETk84QkEzVW1NTE9naFBpU09VWlJwSUtwNml4YzdXTVoyMVdTeDZOQmZ2?=
 =?utf-8?B?ZCtCZUJFMHgzZmRMMHNReTRKYzN2b1lnLzN0aWY1a3NZckFXSVBoWFdReHVF?=
 =?utf-8?B?dW5SOEIreU1GRXVkaTRZdWtFQW1qelgrVzlMTUFpUGliNHF6c1dOcHZmUkNk?=
 =?utf-8?B?TUJOUHFpWVRNUnF6blVCcC9OcWFWR0JjZDBNUWZVQXdjZ0IwNUI2MlBZMHdV?=
 =?utf-8?B?WmZDRSs3ZW8wSEdLR3o2LzdCbkoxNVV3eG5DTkF6OUlHVm9FbGJheU9mQ1Zn?=
 =?utf-8?B?RzNRazdEQ2hBSFlobzhWR1RUNXpyaXFwWExSZ3BNbFBWU201Qm5tYXpUWjFo?=
 =?utf-8?B?K1FvNldJcHdoM3lsVDNxVzRwaDZqMzNCQkk3M0JpOXFqRGJiRXU3eWN5S0lI?=
 =?utf-8?B?a1U0VHVLcnJHdjc2eEZOWXZWRjQyajhzUmc2UzgzR0lNampGS0dBSFZtTlRn?=
 =?utf-8?B?Wk03dENRTzJZYnQrTEFkRXFreUxmWVdjNTNMNWNIU0R0RktkdmIzaG84Y3Nm?=
 =?utf-8?B?M3IyUEtFN1J0TDB0UHNEdzk0WHAyeVZZVmRaVkZ5WTNqZFFUMEl1aWord3U3?=
 =?utf-8?B?NC9YWU9YUEpQNjRtZ3hDQ0FKMVQ0M0E0dXZhMmNMTEFRaisrQm5CZkpjeTJ6?=
 =?utf-8?B?VzdTTUIxWDdvOUtOaERINzFTeDM4eGZVU2xHcG9BSUI3Y1BhSmJGT0xCQ0o0?=
 =?utf-8?B?bm1xTE1FbEpyUlVPekd5aHpsK1VmaDlzd1BVRFlyMFlFMGVCZjJJdjBFK2ho?=
 =?utf-8?B?MHFPcXI1dnZFQnlWSDlydUtwQUF3WXBtNXlzTnJKQzB5dG1pM2Mvc25Uamlz?=
 =?utf-8?B?RjdJMTc2SGdKVnFtTWgzbExRemR5dTJVMkRHZ0thR2t3cVVRR212OGhwMzJy?=
 =?utf-8?B?QkhoK3BnWU16YXVNckhROTRkRW5rWmgvTzdPR3ZxaE9hMUpMZDVpS3JsRnhy?=
 =?utf-8?B?R0I4VzFZckdrZS8zRUlyOUJxempaMUkrdzdwMyt4cEJ5dk9JWFU3ckVtQTli?=
 =?utf-8?B?dUczQzFVYkpVSkhrazU3UW8vZTFmYjZ6RFV2RFBabVlLSHZhekFyejNNcTJB?=
 =?utf-8?B?SnVWNlErNTROaHlGT05UdCtsVy80dzF4QjNoSTE3TVYwK2krdnVYczFvMnZZ?=
 =?utf-8?B?L3FxSUUwV2pzNm9IeHQ5ZGcrTTNsNWdyWFNOOXlXbE9vSXBMOVpxRW1JaTFK?=
 =?utf-8?B?M2E1WmkrY3F1QW9ML2pGRXQ0dm1pNEhZTnNDZXVjVC9WMlpEaUUvWWp4YnhX?=
 =?utf-8?B?RVJVQk8raUw3ZGJGSTRDd00wMFFNSUNYRXZGVkdPNUdEa0FIQUNqczRGa09n?=
 =?utf-8?B?RlB4RDVMcjZDaSt0OFBlOFVrZXJocXNnejZ3emdsbGcyOTZvOGVvQnZBVHJV?=
 =?utf-8?B?TGo0WmQ1cEJLZ05URzIvSzlyMWYxcVRqaGZ5UVVqNUQ4RkN2RTA2d3ZRdTZl?=
 =?utf-8?B?MW91eTJFUlZzWHJ6MzhwbktDRjVPVGZpdzV6YkxRVzZNWmpaSVp2UXRXcjRz?=
 =?utf-8?B?Z2Q5MytydEI4c0g0Z1FBclN3Skt1YmIxOTU5RGJPODNISktJRmZXRnZpKzlS?=
 =?utf-8?B?MzhBVXluUVN1S01NU3lSS0NscWRzQ1ROM3pid3YrNTJORWs5UG5Pa3d5VlJv?=
 =?utf-8?B?cHFyV0lhQkcxNU82bFlmb3cwdkVkeWRyNWZINjdyWHozYlQrOEFqZExGUGZt?=
 =?utf-8?Q?P8cvuY?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aFJvTFkxekJNOElCaWV1aTB5RGJkek8rckhPWXMxRE9mSk9ubmJLbFRURStF?=
 =?utf-8?B?eFBaby93ZG9vRDhqa2tXMHNscTNtVnFmQUJsRTN4ZGJxUlpRVzFpYVVhYUhO?=
 =?utf-8?B?NlhUemJQVUN3S09tZGNLVkZ5cFpXNnpCeDAzZElPNjNqQzJBZ2J5NTRSRFF3?=
 =?utf-8?B?dEN0ZVV2Wmw5RDhva1Erd2VtN0owUFhGMWhML2dVdE52aGtjcWgza2F5ZHg3?=
 =?utf-8?B?N0lIYU5Ja0Z3ZkNOT0JTdWdwWkJPMzd2aWFyemJIK3h5NGpEVFBpenlSVUlw?=
 =?utf-8?B?YXZVOXdsdjFrRkNPa0ZIOXJlcEpKZ3NJZXFnUkdwcjNzazNic1IrSnlqS1Zx?=
 =?utf-8?B?SDRTL3h2ZjhGdEhuY1RlN1hHNzRxRHJvbDNGRk40OWMxZUwzZkRscnFZWStz?=
 =?utf-8?B?TnVpT1o4TGYvNVdpSFBrQ1pBd2lTUjBNVDBIclZmRXVydzdSenNMdHIwOWNj?=
 =?utf-8?B?SGE4Y0ZHbk5pdnJkYlJ3VVRaVitvMGV5dGV6QzZ0V09HeTF5RXFXVDJJbDd5?=
 =?utf-8?B?YmVTZ21nWERpcnBvMWJ2SWNvZGdvb09DdGExZVRzby91OHJkTnV6TElxcHh5?=
 =?utf-8?B?Wk9DRlNNZmNPeHY2bFM0aU9oQTNibUg0RmpYdGxCOVdTa3J0TjRhcm1BNndk?=
 =?utf-8?B?K0k4akpibENoTDh6a2lyT3BSSzlOenQvZnpFeUpWU0lRM2NYR2xsN2s1cHRq?=
 =?utf-8?B?bzViR1lkYTg5ZzdwYncrZ0RlWDd4YXpoVVZlclRXNHZMaGxXQ3NTZjdCVlFW?=
 =?utf-8?B?dXFwWHhEejZhTk1zd1RXTURVY01FeFhRUUdQelkrdHd4N0JBUjRhbTROa3JH?=
 =?utf-8?B?MTFFWEdFd0pYZXI2MFJvbVYwWHREN3F2ZHIxVlh2ZElIa3RuamEvbDRBbzVn?=
 =?utf-8?B?SXkrcUVSNFdJU0pOTmNsVVlObjhFaStKQU5TQ0UxamtOY2dUYU5wSlYwRHE1?=
 =?utf-8?B?NXVXY0J3YVRjNUZCNlIveUJPV2JpYWJFeHN1aVJZWjdBM280cC9zaVFiaE9w?=
 =?utf-8?B?Sm9pTW4zak45NlRBeHBWUlMzOTIrb2VPOFBBOTE5Z0ZSNXVqT3E2MVV6MU8v?=
 =?utf-8?B?bUhRakNoSGRPWCt1UFRmdHRoSHcrYWhXTk5CMGxwa0tRaWRLWk1xdzhLQ1BG?=
 =?utf-8?B?TSs2bHZMc1kyRUNHVFhNUWR4RERmQWh1UjJlVzJFUSs3d241MFF2MEdBSU11?=
 =?utf-8?B?RTJrb2liL05KeXdIYzhwd1VTNGNDdEhseTBnOHBhaC9HUFJWQ1hMdmQ3OFJt?=
 =?utf-8?B?YUF5Vy9yNFFZd2dUNFc0cGFzNVhpaTluVVlnZlpLRElONVQ4Mmg2bk9TRE4v?=
 =?utf-8?B?ZzdpdC84enl1MVdVWkgxODlPV1pqb2RhcGN1S21LaVY0RWhyckprVHhJQ0JU?=
 =?utf-8?B?ejgxcEZGUW9vd0NIT0FVemxuc0RKajRnZ3NLWjNuQlUyTzJTUDB0a0lBRlp0?=
 =?utf-8?B?UC9IY0lXQ3ltK0pTZVBUUi9adTViSXh2SlZXaHRDbGhJVG1zd0NOUnBqdG5p?=
 =?utf-8?B?V1hsaml1ZVR2TW84UnhMUWN4Z0lxc2htQUtwaHhUVTZhdHFPbjF2Y1c2S0Zs?=
 =?utf-8?B?V1ZWbUl0V2kyVEFWRVRJRDREcFFUQkV6MXlaK2s2S1AyVXlkREFEaVEyWWlW?=
 =?utf-8?B?WXJFWXh2NzQ2MEg0aXpNMXM3WE9GRWJqTjVvaFNveVkwNlV4dE9ON1R2Yk5j?=
 =?utf-8?B?MGZJRVlNNFlVR25mNHBwbEpPK1pWdlJQc3B6RmlLOFFZalc0NTZ2c0VWajVs?=
 =?utf-8?B?N0dvTUpqSHJ6dkduMDQ3VklvWGgzMlowSzJpc2VLNHBsemQwaHFiejdrSGYr?=
 =?utf-8?B?Qkk1WTBnRitKUDVHb0tXbllRbjZ4aFJMQ29zQUVaUStIZk1EVkRVOVpKbVhE?=
 =?utf-8?B?Y1pFd1ZiQXYxd3B2NExHWFI4cUl0WHNDQXRNcXpkemZNQ1pzdnJpUncyZUlp?=
 =?utf-8?B?YU9vbG8rMkd5L0kremhTR1FnbWpIck9SbzVMd1g5ZGN6R3JaZ2RXM0dGY1NW?=
 =?utf-8?B?WnJKUGFHNnZCQURjUWtkaXFweGlsUWRwUVZNWGtNbGg4bjhWQVlSeVpuRi9N?=
 =?utf-8?B?eHRIQm5yZXN3bWlGeHJhckw4YUVjcFQrR0Z0eGhsOWFBMlB2MG8yM01qK2xK?=
 =?utf-8?B?RnBJeGltSnFuRHQ5MXBaM1lZcnF1cHdSaHovckhSOXN4WFlrc0ZHMnc1ZUFW?=
 =?utf-8?B?QXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72f80e99-5fdd-4e19-ecc7-08de38920f79
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2025 08:48:30.9056 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TBCkhUsNSMrabctJgdsc/n29q50rqkxl1BwssXpUSfwVlt/LRsvo1z1R7gdFRRvNMakjm6KAoxaw3p/x8DFSDCGloJJBEzXx4aArC5GPwE4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8676
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765442923; x=1796978923;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zY1+TnSf0uemgLzbdfrtR71DXAtUyLtOWQAbaaxUblo=;
 b=Lk2SFZ3c7xBRcoWm9dqNFlWRB/1u3XObzumcjqeqUvVuLI1+YXOrSzSn
 XgPalyPmhcDZvhDBxr0QDOUNrMQBKR7hcGpAY+5zRDLmGgqm/3gVoTCIH
 3QZnWqoldbzdrKrvRoY1vGptu1JiCfwSgnsf/ohYVTskzEWgC4qia2pNI
 JKfAEumIGC7G8xZxfYoJSBO7cNAyOd43QOudaGLnxY6Njl4hqm/6ENSjN
 q6VTPuJzjsi5kFe9HpyQ6NfVTFY8+wrVklkzaiOhmfd82otjDG0GYYg2d
 h7HLPvQ+tk/9rNnKYHNns4K7AOYTNqzddmelqeYpGbAMIxsttW135DSXa
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Lk2SFZ3c
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: use
 netif_get_num_default_rss_queues()
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBQcnplbWVr
IEtpdHN6ZWwNCj4gU2VudDogV2VkbmVzZGF5LCBOb3ZlbWJlciA1LCAyMDI1IDExOjE0DQo+IFRv
OiBNaWNoYWwgU3dpYXRrb3dza2kgPG1pY2hhbC5zd2lhdGtvd3NraUBsaW51eC5pbnRlbC5jb20+
DQo+IENjOiBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPjsgaW50ZWwtd2lyZWQt
bGFuQGxpc3RzLm9zdW9zbC5vcmc7DQo+IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IExvYmFraW4s
IEFsZWtzYW5kZXIgPGFsZWtzYW5kZXIubG9iYWtpbkBpbnRlbC5jb20+Ow0KPiBLZWxsZXIsIEph
Y29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT47IExva3Rpb25vdiwgQWxla3NhbmRyDQo+
IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtJbnRlbC13
aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV4dCB2M10gaWNlOiB1c2UNCj4gbmV0aWZfZ2V0X251bV9k
ZWZhdWx0X3Jzc19xdWV1ZXMoKQ0KPiANCj4gT24gMTAvMzEvMjUgMTQ6MTcsIE1pY2hhbCBTd2lh
dGtvd3NraSB3cm90ZToNCj4gPiBPbiBUaHUsIE9jdCAzMCwgMjAyNSBhdCAxMTozOTozMEFNICsw
MTAwLCBQcnplbWVrIEtpdHN6ZWwgd3JvdGU6DQo+ID4+IE9uIDEwLzMwLzI1IDEwOjM3LCBNaWNo
YWwgU3dpYXRrb3dza2kgd3JvdGU6DQo+ID4+PiBPbiBUaHUsIE9jdCAzMCwgMjAyNSBhdCAxMDox
MDozMkFNICswMTAwLCBQYXVsIE1lbnplbCB3cm90ZToNCj4gPj4+PiBEZWFyIE1pY2hhbCwNCj4g
Pj4+Pg0KPiA+Pj4+DQo+ID4+Pj4gVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLiBGb3IgdGhlIHN1
bW1hcnksIEnigJlkIGFkZDoNCj4gPj4+Pg0KPiA+Pj4+IGljZTogVXNlIG5ldGlmX2dldF9udW1f
ZGVmYXVsdF9yc3NfcXVldWVzKCkgdG8gZGVjcmVhc2UgcXVldWUNCj4gPj4+PiBudW1iZXINCj4g
Pj4NCj4gPj4gSSB3b3VsZCBpbnN0ZWFkIGp1c3Qgc2F5Og0KPiA+PiBpY2U6IGNhcCB0aGUgZGVm
YXVsdCBudW1iZXIgb2YgcXVldWVzIHRvIDY0DQo+ID4+DQo+ID4+IGFzIHRoaXMgaXMgZXhhY3Rs
eSB3aGF0IGhhcHBlbnMuIFRoZW4gbmV4dCBwYXJhZ3JhcGggY291bGQgYmU6DQo+ID4+IFVzZSBu
ZXRpZl9nZXRfbnVtX2RlZmF1bHRfcnNzX3F1ZXVlcygpIGFzIGEgYmV0dGVyIGJhc2UgKGluc3Rl
YWQgb2YNCj4gPj4gdGhlIG51bWJlciBvZiBDUFUgY29yZXMpLCBidXQgc3RpbGwgY2FwIGl0IHRv
IDY0IHRvIGF2b2lkIGV4Y2VzcyBJUlFzDQo+ID4+IGFzc2lnbmVkIHRvIFBGICh3aGF0IHdvdWxk
IGxlYXZlLCBpbiBzb21lIGNhc2VzLCBub3RoaW5nIGZvciBWRnMpLg0KPiA+Pg0KPiA+PiBzb3Jy
eSBmb3Igc3VjaCBsYXRlIG5pdHBpY2tzDQo+ID4+IGFuZCwgc2VlIGJlbG93IHRvbw0KPiA+DQo+
ID4gSSBtb3ZlZCBhd2F5IGZyb20gY2FwcGluZyB0byA2NCwgbm93IGl0IGlzIGp1c3QgY2FsbCB0
bw0KPiA+IG5ldGlmX2dldF9udW1fZGVmYXVsdF9yc3NfcXVldWVzKCkuIEZvbGxvd2luZyBPbGVr
J3MgY29tbWVudCwgZGl2aWRpbmcNCj4gPiBieSAyIGlzIGp1c3QgZmluZSBub3cgYW5kIGxvb2tz
IGxpa2UgdGhlcmUgaXMgbm8gZ29vZCByZWFzb25lIHRvIGNhcA0KPiA+IGl0IG1vcmUgaW4gdGhl
IGRyaXZlciwgYnV0IGxldCdzIGRpc2N1c3MgaXQgaGVyZSBpZiB5b3UgaGF2ZSBkaWZmZXJlbnQN
Cj4gPiBvcGluaW9uLg0KPiANCj4gSSBzZWUsIHNvcnJ5IGZvciB0aGUgY29uZnVzaW9uDQo+IHdp
dGggdGhhdCBJJ20gZmluZSB3aXRoIHRoZSBjaGFuZ2UgYmVpbmcgLW5leHQgbWF0ZXJpYWwsIGFu
ZCBjb21taXQgbWVzc2FnZSBpcw0KPiBnb29kIChub3Qgc3VyZSBpZiBwZXJmZWN0LCBidXQgaXQg
ZG9lcyBub3QgbmVlZCB0byBiZSkNCj4gUmV2aWV3ZWQtYnk6IFByemVtZWsgS2l0c3plbCA8cHJ6
ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4gDQo+ID4NCj4gPj4NCj4gPj4+Pg0KDQoNClRl
c3RlZC1ieTogUmFmYWwgUm9tYW5vd3NraSA8cmFmYWwucm9tYW5vd3NraUBpbnRlbC5jb20+DQoN
Cg==
