Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1DCBC2258
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Oct 2025 18:47:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C5F29406C3;
	Tue,  7 Oct 2025 16:47:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2HJuVPa97IVQ; Tue,  7 Oct 2025 16:47:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 188D3406C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759855664;
	bh=OMcXSvY6Do8nCVAKRJxN6m5I8+zADMa52UAh0ezgjsY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6Rb9Rhda58Jshma/7UEZUAHdVXZqaBfrRdX/6PsJog66wDSWEDdebJfSRcOJuHSkG
	 2Ng+m3aqR96erZSyrvJaj2TLQvr7tD1mFG0BUxLko2YToLptpG1aP7lNFTJ4V7wTF4
	 LZusAYObf18t+qptCpv2XPsdw0IZGnDw3O1lo0cdYl7obeAssnUKZbSigqKrc4aWao
	 bv1QY3VSMcSeJuwgrQyoSMQiM9EsUjVgKKQ8KibB0OwvwVxh9r/eg/7oMIbu27TIKO
	 +52SZ/MSYdCqTEPQJLRj5IZ9EJcOfgxYn/unkMl7rddutKR8V8+S9lCJkMwtnpg4N7
	 H+oO9QttnPfkA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 188D3406C1;
	Tue,  7 Oct 2025 16:47:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0EDAF119
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Oct 2025 16:47:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E933C4016E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Oct 2025 16:47:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KC8fy4vqZSqq for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Oct 2025 16:47:41 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 07 Oct 2025 16:47:41 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 29CC340188
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 29CC340188
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 29CC340188
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Oct 2025 16:47:41 +0000 (UTC)
X-CSE-ConnectionGUID: aW49J0/kRpGAgFZHXzkAdg==
X-CSE-MsgGUID: lLyvyhuxToe9GbA2tiXFXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="65891546"
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="65891546"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 09:40:33 -0700
X-CSE-ConnectionGUID: VJcSg9j5RaK64e1zIzywVQ==
X-CSE-MsgGUID: 0UkulKgSTnWMuqXPFWbnzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="185349504"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 09:40:33 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 7 Oct 2025 09:40:33 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 7 Oct 2025 09:40:33 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.29)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 7 Oct 2025 09:40:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vakgO/D9cxFnEJw9rURQ4i/mPUTMoOQ7P97KvyKCn1PdUUwB2gdxlcqjfmNO1zd3nvqFgbcCeov+bDKJpfc7OvLnslVhBhqa6BnOP1SEUsJIvwyUXIWGxMG0jgswYD227a6UDvM+3ypYZ3zX5W5a0zW6qKpPj81x24fKQ5doPFFepsR51yafKSn/uqLdD18T15ycH3M0q7KfAOlkxGpmjbv26LyjPYS3Mgw2NMsjhtd9cn9uw2+rQB+7iUHbZN4P7Htg2UwjcNnM5pl+eDxZsMK6+NijJrET7BaGpgkexNG/mvoA8s7UM09RIs6HufsYSk3/+28IwoYXr5lu5aaM7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OMcXSvY6Do8nCVAKRJxN6m5I8+zADMa52UAh0ezgjsY=;
 b=jdF662hPkKWYm7dBoW/2CgdybJZw4seiREziQ3roJOfpslTN7W9duv6ObpH4N3NNUAz+FQzjAeCk6L8yXtw3RIYCxlGoAzekaUep2pPKzn15wDHPOy7V4144m611ntODps5sQ9G8XJ/fdk6LoCU+p1JElILmHMuh7jlWGkvd9DkUWJGTy3AXuM3hXEXdLIQm/Wuep/9OLijZYGgIINm1wXee+RJnI+Qs4q0gXnRKdGmrMGrGOfzJRVRaraGGsUd0c2GJzY8TcOvGoQ3TtW9/rCNwyP/v2HQPQZJgqfRr1OeJAZYvLQ99kIRrWUH1fg4Pu6b8XtCKZUglQwmET/U+pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6194.namprd11.prod.outlook.com (2603:10b6:208:3ea::22)
 by CH3PR11MB7251.namprd11.prod.outlook.com (2603:10b6:610:147::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Tue, 7 Oct
 2025 16:40:26 +0000
Received: from IA1PR11MB6194.namprd11.prod.outlook.com
 ([fe80::7cb0:a763:c89e:974b]) by IA1PR11MB6194.namprd11.prod.outlook.com
 ([fe80::7cb0:a763:c89e:974b%4]) with mapi id 15.20.9203.007; Tue, 7 Oct 2025
 16:40:26 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: Add lport/MAC rules for
 PF traffic in bonds
Thread-Index: AQHcNxTCL3QbeGo2hk2nXEAIP+98ebS245QQ
Date: Tue, 7 Oct 2025 16:40:26 +0000
Message-ID: <IA1PR11MB6194AE9A51693D9AC3E3E534DDE0A@IA1PR11MB6194.namprd11.prod.outlook.com>
References: <20251003162721.2831033-1-david.m.ertman@intel.com>
 <eb18f157-843e-4168-8d66-7602611b61b3@intel.com>
In-Reply-To: <eb18f157-843e-4168-8d66-7602611b61b3@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6194:EE_|CH3PR11MB7251:EE_
x-ms-office365-filtering-correlation-id: 98f20df7-f062-469d-e9ae-08de05c03825
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?WFVyVU05N2hoL3VQWjJ6NTJrNk1BWG5JV09UMUlqdmR4K0Jhb2ErK1VvMHdT?=
 =?utf-8?B?TmkvQm9rQXREN3gyZ1I3emNQdERtby8zSlVIOFdDNEtzcEVmeUJSMVZ1RkJY?=
 =?utf-8?B?WFdKb0pGTEcvMmdDbDIvZVROLzBlUUk3UVNXU2NvUXg4bHBubWVtMGRLVW5E?=
 =?utf-8?B?K0dSZDE0RUgwY2lSc053ZDMwb0pkN3VSSnlYRCtIKzF3VE91NStOa0dwbDg5?=
 =?utf-8?B?VW5OVStnczdSYjRsbWN6eDJTVUJ2ZndpTTN6R1QzN293ZkZjVTZFWGNRaFhl?=
 =?utf-8?B?ZVgxN3RwNnE0WU54OWhxNnljcHZJYmxPUFJ2c3hBYk4zcGx5eFJzNE5xdyto?=
 =?utf-8?B?ZTRHLytEMVNOQ2laR21GRHZPZ0QrT3dXL2oxY25Kay9XQzc1OUJndHNIa1BK?=
 =?utf-8?B?cEFkYmp2clV3WUllbVdGOWsyT2NNQ1JhQ2syMWxjNmMwZ2tOZW1FMmg2Zmhk?=
 =?utf-8?B?NVc5V1JMclhWWnUyakhWVjhkQkVlOXJjS3FrVXhoUlF0ZkNMSVVVMGhKQUpw?=
 =?utf-8?B?U2NUM3J3NFBUcUhpREZ1czB0Y011aHRTUHZaNlpkRi9zbWFsQjZ3bHBRL0lt?=
 =?utf-8?B?OVFDMVRnTnU3ZTZ2Vnl0WWZVRnpmbk9UTUhBZXowa2pnbmpnakwxK3VuSVV5?=
 =?utf-8?B?N1VNZkYxcFJsSGdJZVZCNlhtOExzeFlKL2NtTVdkeEx2NHNSZkNWTGxucEFr?=
 =?utf-8?B?MDRCZ3lSU1VvTEpxSDZsamZuNmFKY2syTDliZWwydTdhNlFmZ1lxOGZuNC8w?=
 =?utf-8?B?bTZ1N3c2d0hOT1MxT1RhN3A4bzVrc3MxYkVwYmtjM3dmTlJyQjZjdEx5SEx5?=
 =?utf-8?B?TXQzdzV6NlJKSjlEQ05JaUZrNm8rOVUzTE4yZi80RU1DeW1hK3VIOWcycmJi?=
 =?utf-8?B?SWtGbEt2YlVrTkUvRGxqa012bnlrVE9iQWRoVTFocWVwWGRTd1ZoVXA4Vmwy?=
 =?utf-8?B?bnN6b3ZDek9ZYmlOaTYyTnhSUW1maDl4bm8xWWZXVEV0TUxGNTVnYXlkeHgw?=
 =?utf-8?B?TUQvSzkrZVNHN2hBRUlyeTZFcXNEajZqU21TdWVPZFJoelh1R3cyZnd0VTFE?=
 =?utf-8?B?YVBhditpNFZHWjhiYlF0SWRpT01xUVJwdUFLNmtqcGphMkd5a3dFR2ZqSnJC?=
 =?utf-8?B?QXZkVTNYTjMxMGp1cHdkaXg0OC9hL3pyeTdSb1UyN29oU0dKRnBiY0hFT1dB?=
 =?utf-8?B?SGhSNGcvNmQ4S3FxOEhwcVpvSVlLSng5YmU1MTlPb3hjUGRzdUJXcFRDbXIw?=
 =?utf-8?B?bzdleHhhdEx4RGVzUU1rOUd2NHJaK3gyZGlHRkpzRGE3VmxuRTlaVDNobmFG?=
 =?utf-8?B?SDBBbWVLZzRHSmMyT3Zwdk81MGFSbGQ0TVk4eGtIVVVsdlpVK01OSlA2K0tC?=
 =?utf-8?B?eUQ4QzNEeTN0MjNQVXp6Y2lnd2lRTjJyTnlJelJQbXhXaEVheGVPVXdLa1lT?=
 =?utf-8?B?UEhpWjBZQlBIckY5VWRweG42eitOd3NGYjc2b1RaSncwZ2xUSzg0N0h5bitj?=
 =?utf-8?B?eWVsODJWa01ISDI5NWtoVXpldnc3c01QT0dBZ09IMHFWVnZjRzB1U2ZDWE5W?=
 =?utf-8?B?VmpUNUcvQjlvMFlLMFZBSWdtWmVreUFFYkVQSElUb2QrTzdUdXczZXIzSTJj?=
 =?utf-8?B?UWJkN29QdEp2aERIbkFMcUxGRGxocFduU1FFZXNOR1JxUVdhc3JNbjVidXJr?=
 =?utf-8?B?MXdpd3VyNVpHdnN0d3V5OGVRM0NmS3kvVEJoL3VPakRsbmZkTms0TXJqd0J0?=
 =?utf-8?B?REdLRXNkMVNXOVFBNzZvZXZuUFZ5cnFTcTNXaTZTNTB4cFZYSXZ1bmxjcURX?=
 =?utf-8?B?WUJLa1RBc3hMZm01cENaSWdhQWs5U3liRUdFVXVkWDVzSnAzdldUcVhMcHpk?=
 =?utf-8?B?akx3K0pZWjFVRlhPYVlYY2hkSERjWWE0QUd3QVFzZGxIeEZkVHVaVUtlZ0pY?=
 =?utf-8?B?YW43bGo2U3BkZGI4YVhpNWR4RjhNK2lSRml2a0J0aUNTL1ZubkgxcldjSnRN?=
 =?utf-8?B?ajdpQ0ZkYlYvUHZoYUJvUVJCV0M4bStvN1BvSHBZc1JTcG0rL2dEYTY5RzRW?=
 =?utf-8?Q?9ta7hV?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6194.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eGdYN1JBQTU0VGd4TGxvSitMalJxSWNLaFh6ZUwxSnpIajhEakh4LzlSV011?=
 =?utf-8?B?M3dCa0dTUlRtcm5vZlVBZVVTRmNXVnF3c3lwOFBGM3o0YjFITjlTMVdGMFJC?=
 =?utf-8?B?aWJIK3BERzk0dks1Ym1vMklDb2NPRmF5K3hpa2tYT0hhMzZQK2NPYlBVMjdB?=
 =?utf-8?B?WEdBVkJyODFjZ09xMjNWU05xQ0J3WG5maXN4MEp2bHk1V0VJNGY5dG5jaDFM?=
 =?utf-8?B?czkyUjE2c25VZ2wxbkxUYkNvc1A4NTNIZi9BUy9lZ2JmL24yTlhqUDhTd1BR?=
 =?utf-8?B?a1drWXRJWThoQmU2dUEzVWpwSDlyVCtPdGtxdDJEL2hMenZJb092RVpyS3RR?=
 =?utf-8?B?YWZ3cTF4M3BNeXl6UTJKMDN3VHZWRjFXMUNGUEp0V3Q0ZFZlNld2bHJFWEpG?=
 =?utf-8?B?U2RMVTJoMDh0SFN5T0Z3dDd5MFpsWUV6Vk1OZFBwc3I0cFpQVkp4dWtWL1Zj?=
 =?utf-8?B?L0h2R2pCVjQzc0c3Q0RGWkpJZWk2S2FXUVBiVGhLYjJueG80d1BoZk53VS9U?=
 =?utf-8?B?Y2FQOGE1WE4xZWFuYncwTFhTYzlKcmJaa0UrSUdMaTRWdVlWQTZrbERkV1Rq?=
 =?utf-8?B?R3NhTHVMRDc2SVBOTzhoN0lkRG01YWhhbjdwUStQR1FJdFpPMjlWSGFCSjlX?=
 =?utf-8?B?RVQvNU9oSTc2eHFKVkg1MWRCUSt3YnFvK3ZXQU1KNWdxUlhLVE40dkxWaGtW?=
 =?utf-8?B?WDJyUjM4UUdkblFPUG0zK3YyUHRCMzRBbjE0akNTd3J0dlNpdjhTQU43NHc2?=
 =?utf-8?B?VWVESW1VSklTUm9wRFBPRXREVTRmaUR3UUpYbHg2OXNJMnZXTHNuL0xMRnJI?=
 =?utf-8?B?c0dXWlhUTmhlM0d3eStVOTNLd2dFM2FLSHllZm05cmlSSnVuc2NiUjQxVW5v?=
 =?utf-8?B?QXU2UXE4MjhBbnFBWFhUOVEzcU5hQXd5YTkxVDdJeisyTStNMnprUG5VSjA1?=
 =?utf-8?B?a3doV2VVVlhBN3lQNGJwUVZ2QnNlV0JjS0JhN1k2K0k2OGIwS3c0M0pXc09Z?=
 =?utf-8?B?S3gyc1I3T3dwMkJRN1ExV3pKUlQyZ1cyWTkyN3ViRlh5bmlIYzBIVGhtWFB6?=
 =?utf-8?B?cGhWU3o5bC9iVEx0RWpOM3NqQ1h3QlNZZFBOaU1GRVRmY2FmZHUrMXhDVkZw?=
 =?utf-8?B?bXlLMzdjeTJabjNVQ205Q0xObUptWk1CdGsrT1FpYVErS2RTY1hrSXlKZkxB?=
 =?utf-8?B?QjNsUXgrQkMvTkdKZzJOMlo5dDc0ZHplNWJKQW5FZVBIRFZVbktwQ1JLRlFX?=
 =?utf-8?B?OURJeFg5MUptMjlJazZQditVSnJPQnhpbTBXK2hMdmFaV2hTWWQvZ1FTRW9h?=
 =?utf-8?B?Z1lPWU0xRitiZmVEelREak8wRm1TRzFvTW9OWk8wWEFFdE5uU1UrdXpQaW5U?=
 =?utf-8?B?cXBoNUVJRTZ4cTFnd3M0TllMTERLZGI5VjNYUjFWcC9hTGswMTB0VnJZSHhI?=
 =?utf-8?B?cVpjbUVGUzV3R0lEN3hiZnNickdEajFUZkUxN2lMRGloWmsrVXVwN2I0K2JJ?=
 =?utf-8?B?VEdpTmdUS3NrQTlueEQvYkhBdEFic0JWbzZyNWxLRmhwRldDSkRHSklFaWNC?=
 =?utf-8?B?ajl3WDZZdnVaWUJMbk9MQXd2MUJoSVVYRXovTjdUV0lIbUoyYXhxc1RIcERx?=
 =?utf-8?B?elcxdXV6eGFxcHNWTnhHaXNNaWdkYXcrYWNXalJNR2kvWlorK1JhSXIrWVI5?=
 =?utf-8?B?UUtNaWsvWEhndXg1SzRjVkFpWUdSWGZndFQ2Y1FtS01pVlRYcTNWUzc5OWpU?=
 =?utf-8?B?cWJKaHlDVmtFNjZqZXlXU2Q5ODZXRURyVlYvcmhKdzJxVFlySGhrYm9UaUsw?=
 =?utf-8?B?RWh5L2o3dWJrWXpkbnRxcTkzR0xwT3daUUErUTZ4eFoweWpqSG43elIvbDVZ?=
 =?utf-8?B?elBzb3lOLy8rdW9GYkV5ZS92K1FqNnpqb29CV3JQT2xNMVk5T0xtNktBM0dM?=
 =?utf-8?B?eUZwWElPZmthdE9NR0hPNVlvcWFQa0RJZXdoa3RuKy90ZUxrYnJkRkRJUWFt?=
 =?utf-8?B?aEVVVjRWRHJxZUxyMHdFUWNrejNXRGdJSTNlU3hwVkN2WW8xbDdxc0tOM1pV?=
 =?utf-8?B?SEx2d1kxS09wZWRIdVBrZWp2RlFsUEdLaGY0Sm1rcC81WjFLSk9QNUdrcVpM?=
 =?utf-8?Q?gbhqQdzbeoMfQl1Y8GjHqLUdQ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6194.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98f20df7-f062-469d-e9ae-08de05c03825
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2025 16:40:26.7004 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C0JsP59qRiC9ip4LYEaQOA8AtleCtmY3FrLoXjQsd/ewRpc5SNNkpkEe4QSxcY6eQ3IMjlqw5iS5s3A8x4A2N5ZZfmTjXVQ3wE022qa502Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7251
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759855661; x=1791391661;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=OMcXSvY6Do8nCVAKRJxN6m5I8+zADMa52UAh0ezgjsY=;
 b=elaDh/gT9wGg8H2Vt3ZdK1+mDLnZGh1K7+cO6Mtjay5An1Xd8C2HhkdX
 z7wO+Lz7ne7uUU+pPY+QqgxeRROwgtTQfJRlco9D8uxmlDt11PA78uO2b
 TcpL+G2yD6VJbKAgRMXxHPVO8rHCeJLCQcADR0rJOcF7WtLTmVDzGI2pI
 ioJX5IUQ6hC6ttoR9OfnlBe5yRxr6pQOYOcY6Mu8/vluWTqyz8dpp125K
 /DuKepLCnX5mtHjG7m0vh7mwfAT0bDR0pakswftrD7CFcsd4wCADkxKyE
 TTr8hdgqz1Og74NR9IVKzBGG+trKcCgQaoZI2tukYR3CG9vJ8XikLBwBV
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=elaDh/gT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Add lport/MAC rules for
 PF traffic in bonds
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLZWxsZXIsIEphY29iIEUgPGph
Y29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gU2VudDogTW9uZGF5LCBPY3RvYmVyIDYsIDIwMjUg
Mzo1OSBQTQ0KPiBUbzogRXJ0bWFuLCBEYXZpZCBNIDxkYXZpZC5tLmVydG1hbkBpbnRlbC5jb20+
OyBpbnRlbC13aXJlZC0NCj4gbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gU3ViamVjdDogUmU6IFtJ
bnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV0XSBpY2U6IEFkZCBscG9ydC9NQUMgcnVsZXMg
Zm9yIFBGDQo+IHRyYWZmaWMgaW4gYm9uZHMNCj4gDQo+IA0KPiANCj4gT24gMTAvMy8yMDI1IDk6
MjcgQU0sIERhdmUgRXJ0bWFuIHdyb3RlOg0KPiA+IFdoZW4gdHdvIEU4WFggaW50ZXJmYWNlcyBh
cmUgcGxhY2VkIGludG8gYSBib25kLCBhbmQgYXJlIGNvcnJlY3RseQ0KPiA+IGNvbmZpZ3VyZWQg
Zm9yIHN1cHBvcnRpbmcgU1JJT1YgdHJhZmZpYyBvdmVyIHRoZSBib25kZWQgaW50ZXJmYWNlcywN
Cj4gPiB0aGVyZSBpcyBhIHByb2JsZW0gd2l0aCB0cmFmZmljIGFpbWVkIGRpcmVjdGx5IGF0IHRo
ZSBib25kIG5ldGRldi4gIEJ5DQo+ID4gY29uam9pbmluZyBib3RoIGludGVyZmFjZXMgb250byBh
IHNpbmdsZSBzd2l0Y2ggYmxhY2sgaW4gdGhlIE5JQywgYWxsDQo+ID4gdW5pY2FzdCBhbmQgYnJv
YWRjYXN0IHRyYWZmaWMgaXMgYmVpbmcgZGlyZWN0ZWQgdG8gdGhlIHByaW1hcnkgaW50ZXJmYWNl
J3MNCj4gPiBzZXQgb2YgcmVzb3VyY2VzIG5vIG1hdHRlciB3aGljaCBpbnRlcmZhY2UgaXMgdGhl
IGFjdGl2ZS90YXJnZXRpbmcgb25lLg0KPiA+DQo+ID4gVG8gZml4IHRoaXMsIGFkZCBhIHNldCBv
ZiBydWxlcyBpbnRvIHRoZSBzd2l0Y2ggYmxvY2sgdGhhdCBjb21iaW5lcyBib3RoDQo+ID4gdGFy
Z2V0IE1BQyBhZGRyZXNzIGFuZCBzb3VyY2UgbG9naWNhbCBwb3J0IHRvIGRpcmVjdCBwYWNrZXRz
IHRvIHRoZQ0KPiA+IGFjdGl2ZS90YXJnZXRlZCBWU0kuICBUaGlzIGNoYW5nZSB3aWxsIG5vdCB0
b3VjaCB0cmFmZmljIGRpcmVjdGVkIHRvIFNSSU9WDQo+ID4gVkYgdGFyZ2V0cy4NCj4gPg0KPiA+
IEZpeGVzOiBlYzVhNmM1Zjc5ZWQgKCJpY2U6IHByb2Nlc3MgZXZlbnRzIGNyZWF0ZWQgYnkgbGFn
IG5ldGRldiBldmVudA0KPiBoYW5kbGVyIikNCj4gPiBTaWduZWQtb2ZmLWJ5OiBEYXZlIEVydG1h
biA8ZGF2aWQubS5lcnRtYW5AaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xhZy5jIHwgMTAxICsrKysrKysrKysrKysrKysrKysrKysr
DQo+ID4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGFnLmggfCAgIDUgKysN
Cj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMDYgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGFnLmMNCj4gYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xhZy5jDQo+ID4gaW5kZXggZDI1NzZkNjA2
ZTEwLi43NzczZDViOWJhZTkgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9sYWcuYw0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2VfbGFnLmMNCj4gPiBAQCAtMTcsNiArMTcsNyBAQCBzdGF0aWMgY29uc3QgdTggbGFj
cF90cmFpbl9wa3RbSUNFX1RSQUlOX1BLVF9MRU5dID0gew0KPiAwLCAwLCAwLCAwLCAwLCAwLA0K
PiA+ICBzdGF0aWMgY29uc3QgdTggYWN0X2FjdF90cmFpbl9wa3RbSUNFX1RSQUlOX1BLVF9MRU5d
ID0geyAwLCAwLCAwLCAwLCAwLCAwLA0KPiA+ICAJCQkJCQkJIDAsIDAsIDAsIDAsIDAsIDAsDQo+
ID4gIAkJCQkJCQkgMCwgMCwgMCwgMCB9Ow0KPiA+ICtzdGF0aWMgdTggbWFjX3RyYWluX3BrdFtJ
Q0VfVFJBSU5fUEtUX0xFTl0gPSB7IDAgfTsNCj4gPg0KPiANCj4gSXMgdGhlcmUgYW55IHdheSB0
aGlzIHN0YXRpYyBnbG9iYWwgdmFyaWFibGUgY291bGQgYmUgZWl0aGVyIGFsbG9jYXRlZA0KPiBv
ciBtYWRlIHBhcnQgb2YgdGhlIExBRyBzdHJ1Y3R1cmUgb3Igc29tZXRoaW5nPw0KPiANCj4gWW91
J3JlIHVzaW5nIGl0IGFzIHNvbWUgc29ydCBvZiBzdG9yYWdlIGZyb20gd2hhdCBJIGNhbiB0ZWxs
LCBidXQgSQ0KPiByZWFsbHkgZG9uJ3QgbGlrZSB0aGF0IGl0cyBhIGRyaXZlciBnbG9iYWwgYW5k
IG9wZW4gdG8gYSBsb3Qgb2YNCj4gcG90ZW50aWFsIHJhY2UgY29uZGl0aW9ucy4NCj4gDQo+IEZv
ciB0aGF0IG1hdHRlciwgaXRzIG9ubHkgYWNjZXNzZWQgYSBjb3VwbGUgb2YgdGltZXMsIGFuZCBl
YWNoIHRpbWUgaXRzDQo+IHVzZWQgdG8gY29weSBhIHZhbHVlIGludG8gaXQgYW5kIHRoZW4gY29w
eSB0aGF0IGludG8gc29tZXRoaW5nIGVsc2UuLg0KPiBDYW4geW91IGV4cGxhaW4gd2hhdHMgZ29p
bmcgb24gd2l0aCB0aGF0IGFuZCB3aHkgaXQgZXZlbiBuZWVkcyBhIGdsb2JhbA0KPiB2YXJpYWJs
ZSBsaWtlIHRoaXM/Pw0KPiANCj4gPiAgI2RlZmluZSBJQ0VfUkVDSVBFX0xFTgkJCTY0DQo+ID4g
ICNkZWZpbmUgSUNFX0xBR19TUklPVl9DUF9SRUNJUEUJCTEwDQo+ID4gQEAgLTI5LDYgKzMwLDEw
IEBAIHN0YXRpYyBjb25zdCB1OCBpY2VfbHBvcnRfcmNwW0lDRV9SRUNJUEVfTEVOXSA9IHsNCj4g
PiAgCTB4MDUsIDAsIDAsIDAsIDB4MjAsIDAsIDAsIDAsIDAsIDAsIDAsIDAsIDAsIDAsIDAsIDAs
DQo+ID4gIAkweDg1LCAwLCAweDE2LCAwLCAwLCAwLCAweGZmLCAweGZmLCAweDA3LCAwLCAwLCAw
LCAwLCAwLCAwLCAwLA0KPiA+ICAJMCwgMCwgMCwgMCwgMCwgMCwgMHgzMCB9Ow0KPiA+ICtzdGF0
aWMgY29uc3QgdTggaWNlX3BmbWFjX3JjcFtJQ0VfUkVDSVBFX0xFTl0gPSB7DQo+ID4gKwkweDA1
LCAwLCAwLCAwLCAweDIwLCAwLCAwLCAwLCAwLCAwLCAwLCAwLCAwLCAwLCAwLCAwLCAweDg1LCAw
LCAweDE2LA0KPiA+ICsJMHgwNSwgMHgwNiwgMHgwNywgMHhmZiwgMHhmZiwgMHgwNywgMHgwMCwg
MHhmZiwgMHhmZiwgMHhmZiwgMHhmZiwNCj4gPiArCTB4ZmYsIDB4ZmYsIDAsIDAsIDAsIDAsIDAs
IDAsIDB4MzAgfTsNCj4gPg0KPiA+ICAvKioNCj4gPiAgICogaWNlX2xhZ19zZXRfcHJpbWFyeSAt
IHNldCBQRiBMQUcgc3RhdGUgYXMgUHJpbWFyeQ0KPiA+IEBAIC0xMzM2LDYgKzEzNDEsODkgQEAg
aWNlX2xhZ19yZWNsYWltX3ZmX25vZGVzKHN0cnVjdCBpY2VfbGFnICpsYWcsDQo+IHN0cnVjdCBp
Y2VfaHcgKnNyY19odykNCj4gPiAgCQkJCWljZV9sYWdfcmVjbGFpbV92Zl90YyhsYWcsIHNyY19o
dywgaSwgdGMpOw0KPiA+ICB9DQo+ID4NCj4gPiArLyoqDQo+ID4gKyAqIGljZV9sYWdfY2ZnX3Bm
bWFjX2ZsdHJzDQo+ID4gKyAqIEBsYWc6IGxvY2FsIGxhZyBpbmZvIHN0cnVjdA0KPiA+ICsgKiBA
bGluazogaXMgdGhpcyBhIGxpbmtpbmcgYWN0aW9uDQo+ID4gKyAqDQo+ID4gKyAqIENvbmZpZ3Vy
ZSBscG9ydC9NQUMgZmlsdGVycyBmb3IgdGhpcyBpbnRlcmZhY2VzIFBGIHRyYWZmaWMgaW4gdGhl
DQo+ID4gKyAqIGN1cnJlbnQgaW50ZXJmYWNlcyBTV0lEDQo+ID4gKyAqLw0KPiA+ICtzdGF0aWMg
dm9pZCBpY2VfbGFnX2NmZ19wZm1hY19mbHRycyhzdHJ1Y3QgaWNlX2xhZyAqbGFnLCBib29sIGxp
bmspDQo+ID4gK3sNCj4gPiArCXU4IGxwb3J0ID0gbGFnLT5wZi0+aHcucG9ydF9pbmZvLT5scG9y
dDsNCj4gPiArCXN0cnVjdCBpY2Vfc3dfcnVsZV9sa3VwX3J4X3R4ICpzX3J1bGU7DQo+ID4gKwlz
dHJ1Y3QgaWNlX3ZzaSAqdnNpID0gbGFnLT5wZi0+dnNpWzBdOw0KPiA+ICsJc3RydWN0IGljZV9o
dyAqaHcgPSAmbGFnLT5wZi0+aHc7DQo+ID4gKwl1MTYgc19ydWxlX3N6Ow0KPiA+ICsJdTMyIGFj
dDsNCj4gPiArDQo+ID4gKwlhY3QgPSBJQ0VfRldEX1RPX1ZTSSB8IElDRV9TSU5HTEVfQUNUX0xB
Tl9FTkFCTEUgfA0KPiBJQ0VfU0lOR0xFX0FDVF9WQUxJRF9CSVQgfA0KPiA+ICsJCUZJRUxEX1BS
RVAoSUNFX1NJTkdMRV9BQ1RfVlNJX0lEX00sIHZzaS0+dnNpX251bSk7DQo+ID4gKw0KPiA+ICsJ
c19ydWxlX3N6ID0gSUNFX1NXX1JVTEVfUlhfVFhfSERSX1NJWkUoc19ydWxlLA0KPiBJQ0VfVFJB
SU5fUEtUX0xFTik7DQo+ID4gKwlzX3J1bGUgPSBremFsbG9jKHNfcnVsZV9zeiwgR0ZQX0tFUk5F
TCk7DQo+ID4gKwlpZiAoIXNfcnVsZSkgew0KPiA+ICsJCW5ldGRldl93YXJuKGxhZy0+bmV0ZGV2
LCAiLUVOT01FTSBlcnJvciBjb25maWd1cmluZw0KPiBQRk1BQyBmaWx0ZXJzXG4iKTsNCj4gPiAr
CQlyZXR1cm47DQo+ID4gKwl9DQo+ID4gKw0KPiA+ICsJaWYgKGxpbmspIHsNCj4gPiArCQl1OCBi
cm9hZGNhc3RbRVRIX0FMRU5dID0geyAweGZmLCAweGZmLCAweGZmLCAweGZmLCAweGZmLCAweGZm
IH07DQo+ID4gKw0KPiA+ICsJCS8qIHVuaWNhc3QgKi8NCj4gPiArCQlldGhlcl9hZGRyX2NvcHko
bWFjX3RyYWluX3BrdCwgbGFnLT51cHBlcl9uZXRkZXYtDQo+ID5kZXZfYWRkcik7DQo+ID4gKwkJ
bWVtY3B5KHNfcnVsZS0+aGRyX2RhdGEsIG1hY190cmFpbl9wa3QsDQo+IElDRV9UUkFJTl9QS1Rf
TEVOKTsNCj4gDQo+IEhlcmUsIHlvdSBjb3B5IGRldl9hZGRyIGludG8gaXQsIHRoZW4geW91IGNv
cHkgdGhhdCBiYWNrIGludG8NCj4gc19ydWxlLT5oZHJfZGF0YS4uLg0KPiANCj4gPiArCQlzX3J1
bGUtPnJlY2lwZV9pZCA9IGNwdV90b19sZTE2KGxhZy0+cGZtYWNfcmVjaXBlKTsNCj4gPiArCQlz
X3J1bGUtPnNyYyA9IGNwdV90b19sZTE2KGxwb3J0KTsNCj4gPiArCQlzX3J1bGUtPmFjdCA9IGNw
dV90b19sZTMyKGFjdCk7DQo+ID4gKwkJc19ydWxlLT5oZHJfbGVuID0gY3B1X3RvX2xlMTYoSUNF
X1RSQUlOX1BLVF9MRU4pOw0KPiA+ICsJCXNfcnVsZS0+aGRyLnR5cGUgPQ0KPiBjcHVfdG9fbGUx
NihJQ0VfQVFDX1NXX1JVTEVTX1RfTEtVUF9SWCk7DQo+ID4gKw0KPiA+ICsJCWlmIChpY2VfYXFf
c3dfcnVsZXMoaHcsIHNfcnVsZSwgc19ydWxlX3N6LCAxLA0KPiA+ICsJCQkJICAgIGljZV9hcWNf
b3BjX2FkZF9zd19ydWxlcywgTlVMTCkpIHsNCj4gPiArCQkJbmV0ZGV2X3dhcm4obGFnLT5uZXRk
ZXYsICJFcnJvciBBRERJTkcgVW5pY2FzdA0KPiBQRk1BQyBydWxlIGZvciBhZ2dyZWdhdGVcbiIp
Ow0KPiA+ICsJCQlnb3RvIGVycl9wZm1hY19mcmVlOw0KPiA+ICsJCX0NCj4gPiArDQo+ID4gKwkJ
bGFnLT5wZm1hY191bmljc3RfaWR4ID0gbGUxNl90b19jcHUoc19ydWxlLT5pbmRleCk7DQo+ID4g
Kw0KPiA+ICsJCS8qIGJyb2FkYXN0ICovDQo+ID4gKwkJZXRoZXJfYWRkcl9jb3B5KG1hY190cmFp
bl9wa3QsIGJyb2FkY2FzdCk7DQo+ID4gKwkJbWVtY3B5KHNfcnVsZS0+aGRyX2RhdGEsIG1hY190
cmFpbl9wa3QsDQo+IElDRV9UUkFJTl9QS1RfTEVOKTsNCj4gDQo+IEFuZCBoZXJlLCB5b3UgY29w
eSB0aGUgYnJvYWRjYXN0IGludG8gaXQsIGFuZCB0aGVuIGNvcHkgdGhhdCBpbnRvIHRoZQ0KPiBz
X3J1bGVfaGRyX2RhdGEuLi4NCj4gDQo+IEJ1dCB3aHkgbm90IGp1c3QgY29weSBkaXJlY3RseSBp
bnRvIHRoZSBzX3J1bGUtPmhkcl9kYXRhIGluc3RlYWQgb2YNCj4gY29weWluZyB0d2ljZT8gTGl0
ZXJhbGx5IG5vdGhpbmcgZWxzZSBpbnRlcmFjdHMgd2l0aCBtYWNfdHJhaW5fcGt0DQo+IGludHJv
ZHVjZWQgaW4gdGhpcyBwYXRjaCwgc28gd2UgbmVlZGxlc3NseSBjb3B5LCBhbmQgcmVzdWx0IGlu
IHVzaW5nIGENCj4gdmFsdWUgdGhhdCBjb3VsZCBiZSBtb2RpZmllZCBieSBhbm90aGVyIHRocmVh
ZCBwb3NzaWJseSBldmVuIG9uIGFub3RoZXINCj4gUEYgc2luY2UgaXRzIGEgZ2xvYmFsIHZhcmlh
YmxlLi4uDQo+IA0KPiBQbGVhc2UgZml4IHRoaXMuDQoNCg0KWWVhaCAtIEkgdGhpbmsgeW91IGFy
ZSByaWdodC4gIEkgb3JpZ2luYWxseSB3cm90ZSB0aGlzIGZvbGxvd2luZyB0aGUgcGF0dGVybiBh
bHJlYWR5DQpQcmVzZW50IGluIHRoZSBjb2RlLCBidXQgd2l0aCB0aGlzIHBhY2tldCBzdGFydGlu
ZyB3aXRoIGFsbCB6ZXJvcyB0aGVyZSBpcyBubyBuZWVkIGZvcg0KSXQgdG8gYmUgYSBjb25zdC4N
Cg0KV2lsbCByZXdyaXRlIHRoaXMgdXNpbmcgYSBsb2NhbCB2YXJpYWJsZS4NCg0KRGF2ZUUNCg==
