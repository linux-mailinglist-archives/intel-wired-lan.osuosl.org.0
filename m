Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC48945EB9
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Aug 2024 15:32:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3DF7581FF6;
	Fri,  2 Aug 2024 13:31:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SEpfwUtNHzzB; Fri,  2 Aug 2024 13:31:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 571A281F73
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722605518;
	bh=bLG8aIPUReUWAWdx/25kB+wh3+C+I5cA9wJizJicsMM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nsOiXJiSN9dOaQqWohw0YNte1Z3hxYI91aATJvliekRK+4UrQnGYFwuLYJMW4gGW0
	 UhMMvw7N16g3Y8huvnztHlqmqFMM3lksyMbUFhQPjYOZNXgq+Fw/L/qWfxPmJak5MD
	 YKNprt5yoX7QYcDSYKmqqnztlgpMZWEdeADTbeZ38BjqNGL0GxWqfVGTTvPu+aSZy2
	 HWZTaFI+WCEthpZj2MgM8Qbrt+hQ/WHXSZPI2IPJmrnvoZ/lRj5QWmEcVfFFrtVNV/
	 Z/1ffJ5LS47xQC+DPdODfoDlbpcYu0KKaLaclrWGulWVXeFbx6XvC6+pntgUHf72d4
	 uBcAt4XZRal4A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 571A281F73;
	Fri,  2 Aug 2024 13:31:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BF0031BF350
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2024 13:31:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B6A5681F70
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2024 13:31:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R5Chw5-0ActC for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Aug 2024 13:31:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=chandanx.rout@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D33C481F4F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D33C481F4F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D33C481F4F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2024 13:31:55 +0000 (UTC)
X-CSE-ConnectionGUID: Bm2ssn2XQkqOMn/KgQS0fA==
X-CSE-MsgGUID: 8phcyzq0T9G7/+tJMVACgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11152"; a="38126653"
X-IronPort-AV: E=Sophos;i="6.09,257,1716274800"; d="scan'208";a="38126653"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2024 06:31:55 -0700
X-CSE-ConnectionGUID: TVxy39fjSYKow+lcUI0kww==
X-CSE-MsgGUID: ZZTwx8AMRLq+/BlUPk2QhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,257,1716274800"; d="scan'208";a="55294658"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Aug 2024 06:31:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 2 Aug 2024 06:31:53 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 2 Aug 2024 06:31:53 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 2 Aug 2024 06:31:53 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 2 Aug 2024 06:31:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TgmoW1+pNOcvCqSy51wi+04+hxipZWw0zg2yBD9RQ1V/Nyb4ClrdhDDHi2OyWPOAOpRpACuhEiYDhPA7BsNC4JZ+w3q4Wgtd+dVrmGlooU4cyDNnUQVyERc1D6Z2Ea53KZFT/rx2p/Sal1YqRqqQCrSCt/FqbPE2n7ctrqUnKTds4DZQz5p5celbtweSj9hLFKd3ZDivKSx73T91lWxrIiyhrErDVSMu9/IfZJYsB1lwglmnAUqoXFabupvp69SDT9VLTfSrYJ3tfPd8WPb3qHaLvEgRpoRO5pno8h83fpxsXco0sVx6FPH4hYBPfKa3KgrFLMZ2mDP1fMQuzAgHGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bLG8aIPUReUWAWdx/25kB+wh3+C+I5cA9wJizJicsMM=;
 b=tI9RJL6JIgMmSM5MNY2UQhn3Qeuo96Mf/mIP47Nr+1Gjy+ivQK9M0+NtOi7799SNHlSwc6gBjcW3TaHk2DvucWmMmOH1+wP0foY3Mb1gAZNba8H4j1xUe05apOYWLpfHpHbj7mcJS5+Y5VgXq0lx6vLJagqaXx4J/jruqE7Olk2IEs1O5jrEtP+DaPuJxqU26y9Fs0GZanjuxSgJPn7MfrjZuuC92Pn5Tj2tkGm5dmt3cq5O3MmAXBDgto7dh/j53D+1FeG8RwaYChnEWc2n8QMfL0VB1MsPgaL5KwNhmzRChOkKm0A5lfU1Dpmd5GjXkJjEnKIPMzyDarP0qJEFkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8313.namprd11.prod.outlook.com (2603:10b6:610:17c::15)
 by DM6PR11MB4564.namprd11.prod.outlook.com (2603:10b6:5:2a0::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.23; Fri, 2 Aug
 2024 13:31:49 +0000
Received: from CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::3251:fc84:d223:79a3]) by CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::3251:fc84:d223:79a3%5]) with mapi id 15.20.7807.026; Fri, 2 Aug 2024
 13:31:48 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 2/4] igb: Introduce XSK
 data structures and helpers
Thread-Index: AQHa1DldKBG8MnM4R0GWqhIqUjigDbIUF8gQ
Date: Fri, 2 Aug 2024 13:31:48 +0000
Message-ID: <CH3PR11MB8313317BDE71B547EED6D639EAB32@CH3PR11MB8313.namprd11.prod.outlook.com>
References: <20240711-b4-igb_zero_copy-v5-0-f3f455113b11@linutronix.de>
 <20240711-b4-igb_zero_copy-v5-2-f3f455113b11@linutronix.de>
In-Reply-To: <20240711-b4-igb_zero_copy-v5-2-f3f455113b11@linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8313:EE_|DM6PR11MB4564:EE_
x-ms-office365-filtering-correlation-id: 6ff08b9e-f94a-4d57-9287-08dcb2f7762a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?L2NtZlpJeVdwQllRL1dNVkx2eWNqNUJFU09nM2ZFdVZZUGxLVldpM1pENG5t?=
 =?utf-8?B?SlF3eXhlMDZIaDY2dFBHcDdXRUNraWVBRUt4RXdzWmFyY212VDZ6OCtHa0tD?=
 =?utf-8?B?TC9hSnFtYjREWDRIeGJ1cFJiRHlob3VlZk91T0cyTGFZbjVXQnN0Ky9XOTBY?=
 =?utf-8?B?OE1qaHNHNmRNRXEzaHhTRFRRTEJ0dHBIdHVKQjRhWFpmeXNleHd1SlJGaHpv?=
 =?utf-8?B?OXJGZXJvUVpFQm5Eb25mVGVWQnE2ZUZuaHZuVVBBQkd4YlFodmhSb2lsRUxH?=
 =?utf-8?B?S3dLTHc2YzJ3Sm4vVER1MFJnV0pHODVUSGwyeVZacFcyS05ieGdpaU4wazRG?=
 =?utf-8?B?YUx5cTFvK1p6c1o1SDZidm5UZURuWXpBK1JCNzMvYTllcGg2NFNjakh6d2xq?=
 =?utf-8?B?ZlpvMWJsN0NYQlFRTzM5MUdCMnNQTUNjZCtkRzQ1SXV6cXFSbjFzakw2YlRL?=
 =?utf-8?B?MENVR1NUak4vcFptYkRJL0JvSDlTaG1HaDdCZ0VpWmRqZVJiRFNjbHRLRE5K?=
 =?utf-8?B?Y2dOR3JUVzViSWQ4Q2krMWo1OGp6ZmJRRm4zK3oyUFV2R0c1SG5EanA2WVpK?=
 =?utf-8?B?dnlLYVFYd1NYN3hoaDdBa3BhVWVnR0UwWlUxdUJUK0VXQ1hpZEVpamdVSnhC?=
 =?utf-8?B?QkVlTm1yaFlJYjBjYUVpWmlXL1gxL1c3UjFibUJ5dHpzNUl5Rk9waHV0Umdt?=
 =?utf-8?B?TFk4eFJSSFZPUlV0LzJsc2svbjJpVkhPc3BiaUlGWm5ZMjZrbmVKdTI3WmJr?=
 =?utf-8?B?UDQrVVZnNlpOalpXMGpPUnZEVnIwZk1hSkx6VTNOR2NPNzFpWUhGNFZpcllo?=
 =?utf-8?B?OHFWRmZlaXhaOWR2MHJIcGN3N3gvbFVFMHhFb1hFQ3FZakhHMGhMSDVmZzJM?=
 =?utf-8?B?L1A5eUs0LzhwaHFNL3R0VkVpcDF6YXBNcm93MWw4ZWJVaU5KZ2habm9JVnhk?=
 =?utf-8?B?Vi85TElhU0xOcVZMRlpLeTFOaXZ6SnI0eHlKQTZHbElDWncrZlVua1NoUE8y?=
 =?utf-8?B?WEsxaXozSmgyK1NHVlpobEJyWlJxNVpIQUZCWm5GRGpUMDV0TWt1a1dhTlRJ?=
 =?utf-8?B?Q1VuTXYwZnN1cHhGVVNhYmlyR24wVFJHVVEwV2tBakJhdE1wd3NvNVlWY3JN?=
 =?utf-8?B?VlFOSklQaDNXTmhuUThNeThwZjFPRGxjaURXbXZCSmZGZUVSbmdueVFoREcx?=
 =?utf-8?B?Q1FIaEtRZmdaUlh1bmdkRFlIT3VTMndpM0ZHVDNIQXVMTjJrVTM3ZDgydk12?=
 =?utf-8?B?SVRNNTI2eDVCWG9iQ09HdVZYT2NScmNBaHdrcjF5WVFieGxxdFdmdE5EdWNM?=
 =?utf-8?B?ZkxSZHY0R2VuUXk1cFRKOGlUMWNienZ3eEtjalhCclRVM0t0dDZKQWpwUFB5?=
 =?utf-8?B?YllKZFovaFlnMFhYcjJQV0RabEJhSmRUeVJTTW91QmxYRVRWcGwrRVkvZ0pw?=
 =?utf-8?B?YmIycTNyYTFkU0NOYXhpK3N4UXY1Q2FJOENwOHRvbXJPZzRSdDhkM3ZNcW1r?=
 =?utf-8?B?eGd3cjRhZHIrYnVpVlpKS2pJQWQyMlI5T1VUc1UwaFlLRy9weUw4a1FEMGlZ?=
 =?utf-8?B?MHFzK3JDcUVySDdhSGJmbHg0SVdqUWV3dlhWN3QyWkUwYkF3cHpSOHMzMFlD?=
 =?utf-8?B?TDNwYkNhRjdBNTQvNlJkQ3VEaTZ6b2ZoTktOL2wyWkloTGcrZVFpQTBVTFRW?=
 =?utf-8?B?Q0hVWUNZNllla24rRVFwWktiT1JXc1BSd0trOGI3RDlJWDlnQzVIQ211RlVS?=
 =?utf-8?B?aEFhdDRoWkQzbCtQdlluZVMxZ25SR3daeElyL2xManRsOE9rN25HeEluNTVO?=
 =?utf-8?B?aFdEaTkxcnB4VVA3VjJvMTB1cURGZlNQR2NCNlJBNlZRRWtiOUl5U1lJdjVD?=
 =?utf-8?B?a040UXFZcGhyTjQzZHBmdGRYeXFNU0JtamsyV3BZV2IzOGc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8313.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q0szVWNTeHVLR1FGZFl5d1BjUWxBbkZjVUZ0MDVhQXlnc1FMRFd2UkdFdWwv?=
 =?utf-8?B?cmtKL2NJWnVrOVJVN2l4RzNIcDJnQndhWTZWWlNBQjBIamUybjluVHhzVERV?=
 =?utf-8?B?NHA4NkhTalNIS21wOFgvenp5Q0dUWVl6d245eW9IM1BDWGxrQmsweFFpdGE4?=
 =?utf-8?B?NkhhYkI3YmtDQ3V5cytMeFpaQ21WNmYwL2JRTXNnbnNXcm93b2xYN1ZlUmll?=
 =?utf-8?B?NE1YbDMyb3B4b1JEQ29DM043eE43d0g0Vjhvem8wbitzUm9lV3hVMTdjazE1?=
 =?utf-8?B?RG9ZUGZpUVQ3ajFuNDRVUnk2aVFsTFdST3Y1ek4yQVRMdHhOVnJmL1FpUjFK?=
 =?utf-8?B?bnA0WC9MdnJDUlB1cUhpdlZxVy9YUVBVZDRTZVRMaDY1OFl6aWE3elF0ZGRY?=
 =?utf-8?B?aXUxRlNYZWlVcW9ia2tDSjlkR1JvZVJlNEd6a0VuSUdhZTRMa2VIaW05K0tX?=
 =?utf-8?B?WFYyazI4YnNvYktWUGsrR2ZSRlZ3UkRET2VIUzIvZWdtaDFGUkdXQU9JcmVC?=
 =?utf-8?B?aVh5ZXJvaDkvZ2JxTU1vUmJkTmN4a05RMDBKQk5UK0RVK1I5MWE5VUR1M2Zm?=
 =?utf-8?B?ZGRlbGgrTWlRZFpucDI0WUtOZGg4bFdrV1pSTW9Ka1ZIK0JjTGhURHNkb1Ey?=
 =?utf-8?B?dDgvTXV0OVcwT2M0OVJCQlpZUGYvdm0rY0c3UzlDQnlsaEswWk5tdnVGc0dx?=
 =?utf-8?B?eFR6WHMyT3lrVTkrdndTNnBiUjdKVm41QkszZXRyS1JtVFJPQmVqTE1vWEVx?=
 =?utf-8?B?QlFoVThHd1NSNTQzL1ltSlREWDcrODB6ZmlNYW80Q0syRzYzSFBOc3E2L3NZ?=
 =?utf-8?B?NUc4ZkF6bDlIbUxQSVBlbExPZzFWazJLM0I2ZHB1Y0pJSGdnWGVUMHkzdkNr?=
 =?utf-8?B?WFZmbW5zdmtTTFhoQUxZNE82ZUlaWVdUV3RhbmY3Q000ZmtrSndjWUhvTDVk?=
 =?utf-8?B?YWZqbHdpcG5FaFFwVlVSQjJ0dFZQTVY2eERtKzFUMmFwVTM1K1hLdGdieEJJ?=
 =?utf-8?B?NkUwa2ZFUDg0L1RxdmlEUWU3M01IUFBFeGNzYVVWMXdxcTJIQW1vbExnNTFN?=
 =?utf-8?B?WkcwVjFpVGMvdDduK3hqQ3BpK2xpdFE0azRmNnFnM3FwajJuWGRYSE5pNDEy?=
 =?utf-8?B?UFBNTjhheTdkNWt3cU5YNkpiZC9jM0VnK0tEdVQrdVFYWWkzNVBZQTAwZHZI?=
 =?utf-8?B?b0lLMUZDbjREcHJRbnFCWEZCNFFlbEpLZWN0eVhSM0gyaENHUG0yNzNicW5F?=
 =?utf-8?B?VEl5TjRwbU1PZlVzM2htR3gyUisyQWZaK3BIcldZZHNhRGxicmJEWFc5YVBW?=
 =?utf-8?B?aWhhMnE5WW1aZS8rQTZtYkNnNFJKQTdZOHBkb0c0VVovOENlM3RJYUo4M0pL?=
 =?utf-8?B?V2UyZUZCcUxzNHlFVWwrVThRQ1ZDMnNxa3dhSDF3TDRSWXMxQVM3Y20vRzAv?=
 =?utf-8?B?KzNJdFZBTjU0b3Q3TFRDNmJUYmtCMkczdXlscmdYbS9RcXAzRi9rSFIxSU9Y?=
 =?utf-8?B?eUtUbzhPUVVITVNFQ3FDcCthZHpLdkxWU2pIT2NaU2QvY3k4My9kT0NwM2Qr?=
 =?utf-8?B?TTU3Z2p4a3A0RkhGektYNW9ZV1F1dFQyRVQwVXRqL0xRMWhHMEt3QWRmdkZh?=
 =?utf-8?B?VnlNRENhVzRhZTZsNUFsdlk2K1ZyQm1adEpvbVQvVlZEL3JFYVIvcG15cVRK?=
 =?utf-8?B?Y0NuUG81aENOdWo2VjRLSU0xcDBnSThXbjBRMVVpQWpNa2dzTjFib1JnVFEz?=
 =?utf-8?B?L3crNksxMW9kcTdxTVpqZFUrZHBOeXp2Vy9rOEF1UzQ2K2YvTktLa3R4RjhZ?=
 =?utf-8?B?bG1TVzl2WkdGM215V1NaSWtYeEYxYjBVdUVMeGk3clNTa3NWdkwyOVVBMW1F?=
 =?utf-8?B?cEg1REE0VG01Mkx4aTVnUlFBVEgwVjFncHVLZXk3RE00ai9JYm9naU1hU2Zv?=
 =?utf-8?B?VGgrZG1WYmxOZ25TcW40djJwcjZ6cm10NUxaTzJzMFhHanJkSDlrRzdYc3hP?=
 =?utf-8?B?Ri9OeFRmZ2V6YVZCN093dEttQUhzaDNrVFYzcDUwdW54RnliUVowNHVDNkJX?=
 =?utf-8?B?cGdBM201aUNkc2FOUVBFQ28wS0ZzMGg5K05BOGVkODYzcTZkanovWm41eGJo?=
 =?utf-8?Q?Kk4pFUwYQWLHyNQd1xO6SilhZ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8313.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ff08b9e-f94a-4d57-9287-08dcb2f7762a
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2024 13:31:48.8654 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6SgxOadDCPrsj4Gg/BB+fC0rSQaeF09hIP/FnDPyT76etXAYjDQWIFKTD5CxdIOMe2+ZyuDeDEGnXWeXEHpGhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4564
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722605515; x=1754141515;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bLG8aIPUReUWAWdx/25kB+wh3+C+I5cA9wJizJicsMM=;
 b=fKyIT76LxRbauHQFH8Nlisx/qJ4D3zou532Qd4+54mcviAYzrL2w57B9
 gY45tdd/i5vZxzM65qzBehESMwIYiBHaRTpnVhFMjaDdHxfw3I6BnN/4+
 Q8TSCHMkKw1H7mG+gr5JGdOiyrgTSOLeqXkRjTr98NU7QYbF4dyXEaJbK
 pRC+e/7SK8Doaq893ldcasaOuHtEuqZkRMVt+bOIgeOrLeMJhq3ry8Ca7
 C5umrm3/Owe6PYe14+olZBpV74gwqqlaHex/6urPqsCDtwSsitSQRF+q9
 hfhUsC1DqpUNw8fcsAyGjnYKFgtbz6z1sHxrUp8MFGMBtRodQ4LF8Fsch
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fKyIT76L
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 2/4] igb: Introduce XSK
 data structures and helpers
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Sriram Yagnaraman <sriram.yagnaraman@ericsson.com>,
 Richard Cochran <richardcochran@gmail.com>, "Pandey,
 Atul" <atul.pandey@intel.com>, John Fastabend <john.fastabend@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Benjamin Steinke <benjamin.steinke@woks-audio.com>,
 Eric Dumazet <edumazet@google.com>,
 Sriram Yagnaraman <sriram.yagnaraman@est.tech>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nagraj,
 Shravan" <shravan.nagraj@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "Kuruvinakunnel, George" <george.kuruvinakunnel@intel.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IEludGVsLXdpcmVkLWxhbiA8
aW50ZWwtd2lyZWQtbGFuLWJvdW5jZXNAb3N1b3NsLm9yZz4gT24gQmVoYWxmIE9mIEt1cnQNCj5L
YW56ZW5iYWNoDQo+U2VudDogRnJpZGF5LCBKdWx5IDEyLCAyMDI0IDI6MjYgUE0NCj5UbzogTmd1
eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwgUHJ6
ZW15c2xhdw0KPjxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPg0KPkNjOiBKZXNwZXIgRGFu
Z2FhcmQgQnJvdWVyIDxoYXdrQGtlcm5lbC5vcmc+OyBEYW5pZWwgQm9ya21hbm4NCj48ZGFuaWVs
QGlvZ2VhcmJveC5uZXQ+OyBTcmlyYW0gWWFnbmFyYW1hbg0KPjxzcmlyYW0ueWFnbmFyYW1hbkBl
cmljc3Nvbi5jb20+OyBSaWNoYXJkIENvY2hyYW4NCj48cmljaGFyZGNvY2hyYW5AZ21haWwuY29t
PjsgS3VydCBLYW56ZW5iYWNoIDxrdXJ0QGxpbnV0cm9uaXguZGU+OyBKb2huDQo+RmFzdGFiZW5k
IDxqb2huLmZhc3RhYmVuZEBnbWFpbC5jb20+OyBBbGV4ZWkgU3Rhcm92b2l0b3YgPGFzdEBrZXJu
ZWwub3JnPjsNCj5CZW5qYW1pbiBTdGVpbmtlIDxiZW5qYW1pbi5zdGVpbmtlQHdva3MtYXVkaW8u
Y29tPjsgRXJpYyBEdW1hemV0DQo+PGVkdW1hemV0QGdvb2dsZS5jb20+OyBTcmlyYW0gWWFnbmFy
YW1hbg0KPjxzcmlyYW0ueWFnbmFyYW1hbkBlc3QudGVjaD47IGludGVsLXdpcmVkLWxhbkBsaXN0
cy5vc3Vvc2wub3JnOw0KPm5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IEpha3ViIEtpY2luc2tpIDxr
dWJhQGtlcm5lbC5vcmc+Ow0KPmJwZkB2Z2VyLmtlcm5lbC5vcmc7IFBhb2xvIEFiZW5pIDxwYWJl
bmlAcmVkaGF0LmNvbT47IERhdmlkIFMuIE1pbGxlcg0KPjxkYXZlbUBkYXZlbWxvZnQubmV0Pjsg
U2ViYXN0aWFuIEFuZHJ6ZWogU2lld2lvciA8YmlnZWFzeUBsaW51dHJvbml4LmRlPg0KPlN1Ympl
Y3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV4dCB2NSAyLzRdIGlnYjogSW50cm9k
dWNlIFhTSyBkYXRhDQo+c3RydWN0dXJlcyBhbmQgaGVscGVycw0KPg0KPkZyb206IFNyaXJhbSBZ
YWduYXJhbWFuIDxzcmlyYW0ueWFnbmFyYW1hbkBlc3QudGVjaD4NCj4NCj5BZGQgdGhlIGZvbGxv
d2luZyByaW5nIGZsYWdzDQo+LSBJR0JfUklOR19GTEFHX1RYX0RJU0FCTEVEICh3aGVuIHhzayBw
b29sIGlzIGJlaW5nIHNldHVwKQ0KPi0gSUdCX1JJTkdfRkxBR19BRl9YRFBfWkMgKHhzayBwb29s
IGlzIGFjdGl2ZSkNCj4NCj5BZGQgYSB4ZHBfYnVmZiBhcnJheSBmb3IgdXNlIHdpdGggWFNLIHJl
Y2VpdmUgYmF0Y2ggQVBJLCBhbmQgYSBwb2ludGVyIHRvDQo+eHNrX3Bvb2wgaW4gaWdiX2FkYXB0
ZXIuDQo+DQo+QWRkIGVuYWJsZS9kaXNhYmxlIGZ1bmN0aW9ucyBmb3IgVFggYW5kIFJYIHJpbmdz
IEFkZCBlbmFibGUvZGlzYWJsZSBmdW5jdGlvbnMNCj5mb3IgWFNLIHBvb2wgQWRkIHhzayB3YWtl
dXAgZnVuY3Rpb24NCj4NCj5Ob25lIG9mIHRoZSBhYm92ZSBmdW5jdGlvbmFsaXR5IHdpbGwgYmUg
YWN0aXZlIHVudGlsDQo+TkVUREVWX1hEUF9BQ1RfWFNLX1pFUk9DT1BZIGlzIGFkdmVydGlzZWQg
aW4gbmV0ZGV2LT54ZHBfZmVhdHVyZXMuDQo+DQo+U2lnbmVkLW9mZi1ieTogU3JpcmFtIFlhZ25h
cmFtYW4gPHNyaXJhbS55YWduYXJhbWFuQGVzdC50ZWNoPg0KPlNpZ25lZC1vZmYtYnk6IEt1cnQg
S2FuemVuYmFjaCA8a3VydEBsaW51dHJvbml4LmRlPg0KPi0tLQ0KPiBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pZ2IvTWFrZWZpbGUgICB8ICAgMiArLQ0KPiBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2IvaWdiLmggICAgICB8ICAxNCArLQ0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pZ2IvaWdiX21haW4uYyB8ICAgOSArKw0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pZ2IvaWdiX3hzay5jICB8IDIxMA0KPisrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0K
PiA0IGZpbGVzIGNoYW5nZWQsIDIzMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPg0K
DQpUZXN0ZWQtYnk6IENoYW5kYW4gS3VtYXIgUm91dCA8Y2hhbmRhbngucm91dEBpbnRlbC5jb20+
IChBIENvbnRpbmdlbnQgV29ya2VyIGF0IEludGVsKQ0K
