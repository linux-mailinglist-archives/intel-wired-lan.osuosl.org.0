Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E498DB09576
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jul 2025 22:08:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E01F240E79;
	Thu, 17 Jul 2025 20:08:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PBoaIQGJsLSX; Thu, 17 Jul 2025 20:08:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3178C4119E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752782919;
	bh=1InTXXN2tau3plAe9L/EAr0k6aGjuCAHYmTE/aoWXt8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DTBkB7Zj9GXy1LOm0T0FX/bKgHZewssJmuuR93TJXFXIUwZUAtdNgBIwO8v2d6n/U
	 NfV54eLsKNZimbgWTV+gFsIpMKcEl2fq+oBZgYliqjj8FBJv5BNjs94DhVnW7AbKnd
	 hzczdwbFLvC02+GqNraPF6T1Xysxv6R4IBcOQwmibzu4UCHujpSbdHzs3BNrSwqAJT
	 YIPvH3hEFjKxsPgjmocjDBneijWETyOSFPUtSFmaE+19BIV04thfhQy8J+iScLkiqD
	 mRaORNFL5sGZaljVSp2vdBXPMGMNs0CG3boM8LokZx/frvrjd09zESFSmiaueiilyu
	 6d3E62sx8qcgQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3178C4119E;
	Thu, 17 Jul 2025 20:08:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9FDE9226
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 20:08:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 91B5640358
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 20:08:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mDgGqEAjAr5S for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jul 2025 20:08:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 83DDA400C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 83DDA400C0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 83DDA400C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 20:08:35 +0000 (UTC)
X-CSE-ConnectionGUID: 5eCRcO1aTtiPiQxzqktl/w==
X-CSE-MsgGUID: xBYtnumjRjOBLojOr1Thvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="54288893"
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="54288893"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 13:08:35 -0700
X-CSE-ConnectionGUID: 1I+Fys7ARtSzzktwoSRwiw==
X-CSE-MsgGUID: qICPYzcwT4qRvs2gceInLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="158361194"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 13:08:34 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 13:08:33 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 17 Jul 2025 13:08:33 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.70)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 13:08:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pInnWYk37PVE0L8E3b1h8s3xSPCRccfC75oJU7M2eBaBQ81DPKJj/yyfiC6oT11llZ41pTcmCdWs9jLYeOB3f4LcLj0IgY1TeTQIl2twyyBT/OEb1ceRdNU8BIwD9fjwbgzsHWlAJpxMRFfIyqGp7baNz0KqSaBc0LQB8QvW30m9wsMlp3vznUIOOS1M75TiH6saJaHPw90dGGK6VHw+YmcWmcidzu4bQ1LuRzVhH8oy8ls+aJHdgXbjp86dpAd3OKnbQxME0yi9M+5VmbU8kccO+Ktco11oqvY2AxfTATtlvuCl3+Hw2qMEq3VHgPhhcrplDQCLFXxXWljWxygdWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1InTXXN2tau3plAe9L/EAr0k6aGjuCAHYmTE/aoWXt8=;
 b=bNj57mhsOvylPZfhcs5x8euMiE4AoK3Xtzh5usCRoRKeB0yi3I2HZqPvF20IXjRjXmwQrzkGGScmgpdOXv6ZXcE+GPP+cx+pUeLu9RVuD1+s02irBHrbAT6zzfrFE2s0I1lsGVJxA0VEHYjPc5sGApLPgCoGVhDKrC8FJTNeatDSDkYspIMyzb4Yw4Z5u3VnvHtopDUnb64P5wj2TfbMOjlAkywXMIPRwRHqGw/ICLUeSByX6lAC32r3qR4lfOSMRwvyvxvnRMb9YPA/W2KG+uAGHUipGpXXzvngNd1pALSgJz5+8cw/RtVTqeBOv7uhQGau4Tu+OVGDI3XaXKFeAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SA0PR11MB4718.namprd11.prod.outlook.com (2603:10b6:806:98::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Thu, 17 Jul
 2025 20:08:16 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%4]) with mapi id 15.20.8857.026; Thu, 17 Jul 2025
 20:08:16 +0000
Message-ID: <d4144828-f266-4a57-a78c-55a3b20b8cf7@intel.com>
Date: Thu, 17 Jul 2025 13:08:12 -0700
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, Yuto Ohnuki
 <ytohnuki@amazon.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20250717084609.28436-1-ytohnuki@amazon.com>
 <IA3PR11MB8986F59CEDE4BF3B7994241EE551A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <IA3PR11MB8986F59CEDE4BF3B7994241EE551A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P222CA0002.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::7) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SA0PR11MB4718:EE_
X-MS-Office365-Filtering-Correlation-Id: 77fb4cce-8f97-4095-9f23-08ddc56daa6a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?N3RHZXhVQUp1SDZIZUdNeTRPSmF6NlRLNUFEZjZLUGhLcnczSmhIRTFlOUp5?=
 =?utf-8?B?RUNZMGxiekFUS0V1K0FCWVpFRll5bHF0cjdWSTdpMVpLV2pYTEk1Zm5oK1g1?=
 =?utf-8?B?TmhhSnhaVElmZHhRRitrT0VvRjFSLzJrWjRLS1F2OVpUR0FUNXJtTjdPVFpQ?=
 =?utf-8?B?ekRyVGVidWo4bGRWK1AvOFJrcjNtMXJlb21wWllYTzBralMwQWZYdlZYaHR6?=
 =?utf-8?B?VkRzdUFhai9EVHVROGZKWnBodWREV0FxZTd4UGVoaVY4UWx6aVZyZGJBTkVo?=
 =?utf-8?B?VWdNOUJKTFdLbnAwTWRNYURyaCtCNnlOSnhqUzE5b0FNRlV1NmNvR0xYdk94?=
 =?utf-8?B?Qjh0bFNYQTV0QlUrRW9OM2QxRUhtVk4wSmtaMEsvejVLa2pENFNMUnpzMGc4?=
 =?utf-8?B?L0lsQkZJL3Nzc0N0QW1abFkvbE9MRE92SlBRZ1YwSEs2cDhBZmJEbjlyR2xD?=
 =?utf-8?B?MnF1UERpOEsrTWk0MXY0S0JGd29TcTdheEpOeTdKRGFHdllXa2RlUWVCWTNp?=
 =?utf-8?B?VFF3QXI5QjlGYk1SaUY5MmVXU3JnTGx5dmVTd21QcVNhL0lsMjZ1aEw1WVJ2?=
 =?utf-8?B?dlpXVitmSUdvbTFNWjVqWkVVQlF2UkJwVHlNL1BXc2tjMExQU2xnZEJBVnlH?=
 =?utf-8?B?ekxtcnpBWmY3Um1uY2ZydDNrN3hzU1h1VURwdlJleGZ3cW1pMDZMRVlpSlpK?=
 =?utf-8?B?MW1idjk5V0NpVUJMS2ladUNYT01IYWxjVXpMbE05amQ3bzEyNGpxV1RUd3pC?=
 =?utf-8?B?N1VlVVlZV1hNRVZkUW1SVk13WW1nK0U4KzFLVklQU21vM3F4c0JEWUc0MTlt?=
 =?utf-8?B?bHpPcUJKM3BMTW9UTUJvSGZKeXM1Z0dRbkpCMFhVd05lTlJLUmsycUhSa2Uz?=
 =?utf-8?B?K0ZjNjlJUlhvNC9tV2dvRWZaa1hSeno2Q3VtMFAyQVREQlJId2hZVlBRTzcy?=
 =?utf-8?B?QmxFZE44dGk0MUQramRnUGptNC9JZks1bHRPRmZLcUlBYmlDZUpONlJGaG9B?=
 =?utf-8?B?UHB5T29IUUNvZW54ZzdOQiszS0V0bERadEp6TXk5MnVld3B3Wjh0YkltR28w?=
 =?utf-8?B?L3JwWTVHYlBlUW9DL3JSaCtSYW54NXBGcDkybUdCL2tnNGtudkNoZlVuU2Nv?=
 =?utf-8?B?WG5leE9ZVDh1TzNNQ0hVVUtZYkZaK3NUeHU5d050RnRqNGZxSG9XemtLdXd2?=
 =?utf-8?B?dUIxY3pmdndlMlhLMW1LOE5qT2FUam84SHBYYi9FSldJYmt3R0NSQVl3QlRx?=
 =?utf-8?B?VTd0cGZGNnY0Vm1XSGlmUFQ0bUxqNm1OT2N1UzFVc1k4ajhmTmJrNTFualRi?=
 =?utf-8?B?NTBHYXh5anRwUU9ja2grd2RESnlhY2VLWmxaeWZDMGU2dEJxaVJFWWYyb2Nq?=
 =?utf-8?B?cURlQ05rYXJURlRwK2Mva0luN3FCY010T01nQmJxcnpMZnZIQjhybkl2amRs?=
 =?utf-8?B?TjYrekxGRXZwNzZVNmQ2Y0ovRU1GQ0EzUFg5YzFRNnczNDdRcFRMbGVkLzRr?=
 =?utf-8?B?Mnc3d3B3M1FLdEVlTURrRXlkczVZWkJDZ1BuUG9wTFN6bmxwbDF4b0FLMkpD?=
 =?utf-8?B?ZWZyQnJ2eStZYytCOGtjSzVJT3pqR0pNTU1FaHZudE1sVjl1TU5vK2xvbkhX?=
 =?utf-8?B?QThWK1hxTjAyMXJYbVd0RlFGWXNORThiZmRCazlDTXdjbVd2Nk9WMGhjemNW?=
 =?utf-8?B?VUJGcVlvbFZ0Z3JKOTg3cDV2YmlWUWJLSG9oeUNkYWkyY0JWZlNQc3ZkUERi?=
 =?utf-8?B?WXY3YXJWRi9FQjljZkNzNEpKRWpKdm5UdUZ6SGJCc2R5cXArMkN3ZlhLaDBx?=
 =?utf-8?B?WjA1RE5PbjBGdkJFeURSYitZVjExeFo4bnRzcFlNYW9yTkd1anBVa0lPakFU?=
 =?utf-8?B?ZjJWeU9SNEE2VnpvSmlmZndBQmh1Q1dkbUorazc4TCt3QXNZZ3RjMVRDMjJm?=
 =?utf-8?Q?VQazva6TQp8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MTlZMzRyZ2xzcXBzWFE1VjdhU2ErdHp5YTR5OElWM0FnSXpCeEY1ajA3SkJt?=
 =?utf-8?B?ajgzRXhRZlZ3c2czU05vaVlpTDNzUS9CM0tsUmRQN2lrRHdZQ21yRzJRS0hK?=
 =?utf-8?B?c2dyZC96TmY1R3NDbHNyYi9VMFoyaWpJQy80c2o5bHU5c2g1cGZHVGdRWHBJ?=
 =?utf-8?B?TCtwRXZZVG1xY0NzbGk2MytjdzJmVHhiTmdWZXdBNStFMlZxb2xkN0d3RUxj?=
 =?utf-8?B?Sm9nM1FDUTM0T054NjVjR0tmUXYxTTFsTkRsNVNlT2x1WmZCODJkU0dDQ0x3?=
 =?utf-8?B?blZTSTVlTGVVOVZyMFZ1NjVwMzNOdk8xVFRyV0pCbUN1SmJYSWRFRjFtT1NO?=
 =?utf-8?B?U1dXVG4vWkliU3BiQ0Z6cExMN2RUa3dGRzJad25jN3FEMWFlOHJuTlNReCtS?=
 =?utf-8?B?TjJyNGFZVGZ6YWY5N3hHQzVWbkZGZHg3S25RVzhVd3ArVnltRnlmNWJyRTNQ?=
 =?utf-8?B?YXhEY1Eya1NOMFpSMDNIb0g3aWMvUEZqdFhIZDJCZWFaNmdUMERBaEc3aE5K?=
 =?utf-8?B?VVFST0h4M2FkM3pnSzYxQ3FKUjhrRW9SR0VWZUhHeG1pZ0cwb3pIMHpNdEor?=
 =?utf-8?B?RDFSZFVDR2c1ZUMybWpvRWpXYW40dmZFcDJNRW9kNmVObllaYkpXeEdnY2xm?=
 =?utf-8?B?RW56SlBtN2xwdmRoR3JKUTNnWG9kZS9uSVVwY3Znc1BGTWFyUnk1RGZMMmhF?=
 =?utf-8?B?VlpSSU5INHkwY2Q3MmhteVA5TTlPRlpFUS9TU01jL1VTdTltdDFaQkpDeVN5?=
 =?utf-8?B?UlR0M0UxTUlwSXIwSGVHQWpzMm5pd3lmaXlsamxRTlZWOWZaVGV3VXpOblBz?=
 =?utf-8?B?VytOK3lyWGxaYWdMRi9GZGp1K3ZxU1FYbDFSUXRydjNDS0lscGtUV2dwZEg5?=
 =?utf-8?B?QmJsNTM1ZElISlhRZmhUL3c3dTQ3WVliaHZUd0lhNmp0dWVoTVMrUmJWSmVL?=
 =?utf-8?B?a1BjRVg4ZE1YVEpIaTBXRzFKZUM2U1ZkTzBNenB3OEZwUjJWTlJSTGdOTEE4?=
 =?utf-8?B?eDBuNE51eUJ6Q1ZNSVRWbXlTWm1LWEhNbTZzNE5namhXVkdIdVBxWUozZFg0?=
 =?utf-8?B?WGRtS0k5SWUvVWRpR0ZISzY1NzA3K3U0aGZLS2VkN2M0dllPdEdPcDE3cCsv?=
 =?utf-8?B?dk14MkR3WFIwK1FpMER2bklLOU0zTE5mSlloVTZPaERJcGUwTnJMdWFLNkNh?=
 =?utf-8?B?WEtwNytKOE05dWtkSHdyN2QranNoQmZQMEhlSVRydDVnQlF4RmRpRnhHY0xZ?=
 =?utf-8?B?OVFZV21wMTJTSlV1OHJrUy9MQUN3cExvbkJ4WnErSVVqY0Y3anlraUlpeStx?=
 =?utf-8?B?TTkxSmU2SWVsM3piakpDRUNDb2Fsc3NZQ3VtbUlXdEVHTTlqdFJLZURzVEN3?=
 =?utf-8?B?T2F0bGN2RkI0Qkt1MFlqb2EzcUtzYThnUm4vY3JzblRubEVYTW1JTlhwUDN4?=
 =?utf-8?B?Z0ZCUFVndFRrcUFIZXJtUHlWQ3k1VVFYNS8zRFJDU0FaQTFrNUw5cEM3MmVm?=
 =?utf-8?B?QTZHVXV5V1dNMytFK3lmTSt6SjE4SjVxREpVS0lWU2draWJYbTY5OFVxQXB4?=
 =?utf-8?B?SXNUdXFueVFpdlFwYnF5Q0o1NTFGd3NHNlhLQ2liVUxJVWZTZW9DLzQzaEZl?=
 =?utf-8?B?RS8rNVNra3Y2dC9UTU0wZE5DdFRJYjBWRE9PKzZrQTRpWVhpSmltNS8zY05h?=
 =?utf-8?B?MDBKTVNldEtaRUdLbks3OXdTT0JSREc5Ty9uNERlVjI3REYrK0prdU9IS3d6?=
 =?utf-8?B?bkFwT1R3dWZ4bHJzSWtCN2xrZjErdUZxajQ3SDB0VDlBT3V5czhzSjB1RFVu?=
 =?utf-8?B?c2FGTkoyNGhHTEJ3d21OclVGOFNXRmtGWDR2WXlNY2NYMnhreU1NL2t3eXg0?=
 =?utf-8?B?Q3pIanp5NXBBTjZiR0J5cHRvMUlRbVAyL2hCZm8xQUFrOXNldnBPeFRHcTFx?=
 =?utf-8?B?cG5tNTV6UmV2VjR0YWQ0N3ZLdHFkRHVmM0R6dGdBS3kvNG5pNTE2VXk5bldE?=
 =?utf-8?B?V3N4U0s2N2R2UDlTUXR3T2g3NVhrSE1YUmJzQ0ZtMFhKZTE1WG9sRG1OcENI?=
 =?utf-8?B?Zkh0dUplbExONmJSMGxiUndLSjc2Q0d4VDdyeDc1WnpVSXpmckxKSHBRZTNY?=
 =?utf-8?B?VGJSTDJwZTN4YzA4QW16RzhyZnU5akc1UEZ5QmVIbmcvNEhSQmlacXlPc2Jr?=
 =?utf-8?B?bVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 77fb4cce-8f97-4095-9f23-08ddc56daa6a
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2025 20:08:15.9886 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jLax1S6C0q2BhqVPnlrEq2XB7L1sLw0NhmVjw6CQbC9OyKVL/e6VRXlSMPIEHtXNh4m4eRmdMi+bXUG1g2PztMKE1Kc/OVcJRCmrYFA31GA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4718
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752782916; x=1784318916;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=byKjWeMHlPN/n5pXLo3AP4UD+dljh2E5NaJT+zDcYo4=;
 b=ee7qF+Dwm5cgWwqedQEuLqYYTNE5ZKtt7p3Xx37pyDMIb/TLLh8VkN9H
 yX/0wLQfAn7/DyvQdKkqVUko5U+g+9gw5QKRnHKeY0tsa50gyQV3kloo6
 Svy+B610ILyx/QAyYewlhdcjIgLsfFrH2S/xafp/g5qzKorI3FTzRo2Pr
 cde8bcSCoB9+DbMiAkH4lf3o6y7uC9RZ2yEoB+uW8B4sPlKSfBn66VjVK
 Pbiw5e8YLEoT8L+fZHcLcuDloSZUr/T0xFjpxyPlbepF91zOkGbbhQEBa
 O4oQvQj7Kg8DcZn7upXLncRnoVhjXvJ2Iem5t2l0xHH43UQeLJy9EAQ/h
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ee7qF+Dw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ixgbevf: remove unused
 fields from struct ixgbevf_adapter
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



On 7/17/2025 2:33 AM, Loktionov, Aleksandr wrote:
> 
> 
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
>> Of Yuto Ohnuki
>> Sent: Thursday, July 17, 2025 10:46 AM
>> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
>> Przemyslaw <przemyslaw.kitszel@intel.com>
>> Cc: Andrew Lunn <andrew+netdev@lunn.ch>; David S . Miller
>> <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub
>> Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; intel-
>> wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
>> kernel@vger.kernel.org; Yuto Ohnuki <ytohnuki@amazon.com>
>> Subject: [Intel-wired-lan] [PATCH iwl-next v1] ixgbevf: remove unused
>> fields from struct ixgbevf_adapter
>>
>> Remove hw_rx_no_dma_resources and eitr_param fields from struct
>> ixgbevf_adapter since these fields are never referenced in the driver.
>>
>> Note that the interrupt throttle rate is controlled by the
>> rx_itr_setting and tx_itr_setting variables.
>>
>> This change simplifies the ixgbevf driver by removing unused fields,
>> which improves maintainability.
>>
>> Signed-off-by: Yuto Ohnuki <ytohnuki@amazon.com>
> Can you add 'Fixes:' or 'Cleanup:' tag ?

As there's no user bug, I don't believe this warrants a Fixes: tag.

I'm not familiar with a Cleanup: tag; on quick browse of git log, I'm 
not seeing one being used(?)

Thanks,
Tony

> 
> Alex
>> ---
>>   drivers/net/ethernet/intel/ixgbevf/ixgbevf.h | 3 ---
>>   1 file changed, 3 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
>> b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
>> index 4384e892f967..3a379e6a3a2a 100644
>> --- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
>> +++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
>> @@ -346,7 +346,6 @@ struct ixgbevf_adapter {
>>   	int num_rx_queues;
>>   	struct ixgbevf_ring *rx_ring[MAX_TX_QUEUES]; /* One per active
>> queue */
>>   	u64 hw_csum_rx_error;
>> -	u64 hw_rx_no_dma_resources;
>>   	int num_msix_vectors;
>>   	u64 alloc_rx_page_failed;
>>   	u64 alloc_rx_buff_failed;
>> @@ -363,8 +362,6 @@ struct ixgbevf_adapter {
>>   	/* structs defined in ixgbe_vf.h */
>>   	struct ixgbe_hw hw;
>>   	u16 msg_enable;
>> -	/* Interrupt Throttle Rate */
>> -	u32 eitr_param;
>>
>>   	struct ixgbevf_hw_stats stats;
>>
>> --
>> 2.47.1
>>
>>
>>
>>
>> Amazon Web Services EMEA SARL, 38 avenue John F. Kennedy, L-1855
>> Luxembourg, R.C.S. Luxembourg B186284
>>
>> Amazon Web Services EMEA SARL, Irish Branch, One Burlington Plaza,
>> Burlington Road, Dublin 4, Ireland, branch registration number 908705
>>
>>
> 

