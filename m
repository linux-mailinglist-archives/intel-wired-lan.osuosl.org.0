Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KI7HCXxyxWkU+QQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 18:53:00 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C341633985F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 18:52:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 52FFE8132A;
	Thu, 26 Mar 2026 17:52:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f_AjfGdTSaaG; Thu, 26 Mar 2026 17:52:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A4138132F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774547576;
	bh=+aXM22pnQr3100iPZObIkkRlOQSiZJAcMDdorXMcMP0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gZ0g/UaaXEkeaFl6YjRHWV1NcjdSNmxwUuulbvma8dOBLBgCknYBsTlQGm4CQj1OU
	 N/B4VyE5a7ubvsmtzkgjOe/8rG0VY8mo2qw/mdAmkG7iZ9vM7S40zH/uj4vmfK4wa0
	 HIDxx/jpQf0oSijLSCCHkMtEARt4GDNheIYxAPcNPjGTTFwuhtCOwywvlwgYKXdvvy
	 B2j7UKfP5g1OK/aOuk4hEvo38Jz829XLqvMa1USh4whJaAeD2JnzIAvR8O4j3GNz/l
	 AuLI2B8qOyvfsd99iL39q+RQtsLWQdxiiIdINAkYi4DUb1NgTmpScpp2sY9cpCkujE
	 KUq+8IVzore5A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A4138132F;
	Thu, 26 Mar 2026 17:52:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id EC6D1F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 17:52:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DD9BA60BE2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 17:52:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qaS30OPqb8RN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Mar 2026 17:52:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C41E360A55
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C41E360A55
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C41E360A55
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 17:52:53 +0000 (UTC)
X-CSE-ConnectionGUID: +7mKPWeIR0SmB7yEwkwSxg==
X-CSE-MsgGUID: BwGKvW/aRbmGW4+EA+eslA==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="74646121"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="74646121"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 10:52:53 -0700
X-CSE-ConnectionGUID: 4VaJrt3aRj+wYyjaICyT6g==
X-CSE-MsgGUID: T7krLQ8rQ7iuWFyZf47p0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="222163737"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 10:52:53 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Mar 2026 10:52:52 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 26 Mar 2026 10:52:52 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.70) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Mar 2026 10:52:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f4NmHX2tENnLtZhnGZhLyIeCY+NuYaSNapH2BGo3BtSebOhNYeRFmbecgbb4kbHIfFRsFwfRqDkeho6Iid51tsa7D1LASWAJpQPcz2XianeL/wqgLWa621d86Bhgmz0494jiNlrdLce6r/D03SW5oVYSka8Qv+coFI4rDWOFtyVSnSf0ZUtF12/2IixwDGEUloVj9ZjDSvhSytSHG6wIjQ7bpyY+YC0R27K1EssnWHlP1gCDK1JK268G5GtnaeofMj4u9k4avQSFZZT1oA1IxgKkkPm8JVkw7bzbIrJXxMli8+clTpj712My35dJoionoIWY0p5R3av9cpe3V80cAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+aXM22pnQr3100iPZObIkkRlOQSiZJAcMDdorXMcMP0=;
 b=LWLRTSh/kUYVLqzqk1SCluT1TAHqg4c14Wi1VAe7f/yY25fzvrk6++hiY52So1hO4+usx5J1EnYU8oxRCftQr0Ls2uKqsCieyUQ7rlIX/sbY/pdc2Mehs/3ZFdICAXyPNp9WmsGn6zcvD5h3WJKv53RngZIChhziZT9aInkJgZKqmf0i1/2C3xiZUcDJTre8UXTs790MZjJQ9HkJQsg1SDG7Rh+D/q+nY6NmiQ2r2l08WpXeSdRAu7Hbv9TfgjIwWEy6eYjgRUkANN2Cnf+X/++YN4nSXXm5sivVIhfo2mAytGN+Kyspe+IwiLyKkGscJQwdjHLKuh5nQ73U7BsulQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21)
 by DS0PR11MB7357.namprd11.prod.outlook.com (2603:10b6:8:136::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Thu, 26 Mar
 2026 17:52:46 +0000
Received: from DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40]) by DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40%4]) with mapi id 15.20.9769.004; Thu, 26 Mar 2026
 17:52:46 +0000
Message-ID: <946cd1c8-b0fe-4dc6-8cf2-835731a36a01@intel.com>
Date: Thu, 26 Mar 2026 10:52:44 -0700
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <it+intel-wired-lan@molgen.mpg.de>
References: <d30060f0-e7aa-4d3e-8e7d-98e7ca176f9c@molgen.mpg.de>
 <b235e4e1-3a1c-4b09-bf4f-bd23d308e3e7@molgen.mpg.de>
 <3f6918da-0fcd-4a87-bca2-adbd1d88100b@intel.com>
 <1cbf468e-45f5-4fe8-9ab7-06925ff1ccaf@molgen.mpg.de>
 <73aab9d3-996f-4df6-8f04-9f216cf51e92@molgen.mpg.de>
 <8a2c98aa-6366-4cc9-b199-ae5051696ddf@molgen.mpg.de>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <8a2c98aa-6366-4cc9-b199-ae5051696ddf@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0212.namprd04.prod.outlook.com
 (2603:10b6:303:87::7) To DS0PR11MB8230.namprd11.prod.outlook.com
 (2603:10b6:8:158::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8230:EE_|DS0PR11MB7357:EE_
X-MS-Office365-Filtering-Correlation-Id: 1186bd18-01e2-4bf9-f9c1-08de8b607d18
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: ziBToobfqz+R/LHrcaonCnJteX2U3FRvvR+b10WxFx5mUqyMUBYqFv/BOAUjLKIjvBtNc3ZIlFn489kwibsnwm2kbbTRk1Fb4sdXfAqvAZ8PyNMATQ/NUPy9FbCjv3bPRPj8hzAckLePqMxhWxZDGCQ4LONxBI7rzu6VkV10wM8jxZ09W71TKhEUqSIO3uCvP3XoFD95X4Dj5dW4CRJHhDQzM++4J0nytdeqCO/GqHuF23vZBVHa3W5VUk6ejpC8X6neUQ24R9pd+1vjIpk5BoHUnrXA8vtg9XbAf8EfH2anxK7y43uJpYKucx2QnhvEUcr2/5ZlyvqDC9bBR4wudCuvFYtFV9Em6Bqtu+81s9Zw4jjlNqOpaVD+Wdj/LPIPKLf/VM9ECTxhQ7a9fAc/3x0mBWc9LjpSy+Iq4dHNxt8zWfktQoWRdFkdfg7WJx65b2fTLXzdR28ef1bW1J0OaYY43mR3LsltxNZfYelrFBAgQXt3RJxOiYFSNP/DX3VheRCYDoy53UQpimJWf3BjW1AzJK/XojxSK2JONjilFDu9tZ0vhP/e8eANMmmpHGaRpWTUTUHpLvJ5eZx9vd8lO665Obf0UPOFDG8kpWgLIzygoBiJRibato0iqpippeuObpvlfktKGV1dbvSWISndso0va0FAiHPEpKLx90am5qQzsJXVB0zexqv7O/nfJgeP9MYanTmitTWyKlAgahDB86G2+K4FBci0b+DdLWmsED71wVfrIVuWm/4RliZRvd54
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VjliaGtnMXQwbmFROU04VGZwenJXU202Ui9pOXNwUkFhVk9odUdtRVNjdXV6?=
 =?utf-8?B?QndqT2ZYL0UzNTI0eTU2ZDY5UW0vREdMZjMzeVFTM1pXUXJvQXdZOVNkZ2s1?=
 =?utf-8?B?NkZZR1dlYXlYWFFCa283YmhFYklLTzRXWVdxaTlNSjlUT21aN1VwQnkwYXBm?=
 =?utf-8?B?S3dqSzNRWEsrdGRERVErMjJUKzVjL1dkQyt0dWQvZ042amhxeWs2c3ZSZU5r?=
 =?utf-8?B?UFp6ZDJSUVJxTEp6QkJxWG5tNEpzOC9IUmMxVURrQU1rb2hnYnB1cmo5N0s2?=
 =?utf-8?B?czFIbEFZOEc0VFpwUnRUU0tGN2pSbTF6a205cFZKOXlMNGRYb0V1cHAvTEE1?=
 =?utf-8?B?cVA4VDc5S0xWN1EyNDhGamQ5Q1cxRjJlNzBINEdiQm1SY3RxN01ITWFUdlRH?=
 =?utf-8?B?Y1FPS2FTN25QbmpGVWtLYWxYNVR1WEViVS9oSHdqMXVrbmJvWm8vSytHU3hH?=
 =?utf-8?B?bmg2VU9EMXNSL0pMRFY4M1N0b0U5SmE3TUp1eDAxL2lIQ0RheHkwekp2NHZV?=
 =?utf-8?B?UnV3Y2t0LzJOQjBKTlRZTEd5RzVxR2RvbFVlb2pKOHdCVXBBY29WSUxqRGxK?=
 =?utf-8?B?VHdMWDNHcWpyWWhLZXlhMXN6dVhoZmZhZFVZS3lEaDdpZVRGSnI2QkZNQ2Y0?=
 =?utf-8?B?dExranpZdEsva2lXN2lJclZqNlFVMlFBdU5jaHYwdUxJZlRrWHF1TGxxYy9Y?=
 =?utf-8?B?T1J0L1k1Nk5ZSStLb1V2UnVCQWNVMHNqcGVPMWlHS1ErNkdJSjZaZi9NdTZw?=
 =?utf-8?B?dEJ3Tjd3OTlSdlRrRmgreUNFQkYvc1k0bXdkZjE0dUthamYwQVloeTVrTFRi?=
 =?utf-8?B?cUpYR2FkeEw0ZUdEUjZhWWlMOVNtaU9mYWtaR2h2QTFuK3UzTThQUzFjWVlh?=
 =?utf-8?B?SUx5amErcXVLQVVKMFBnVThNOGdSQThUVnFGemRXNlllWi91a3R2dHlVbXM4?=
 =?utf-8?B?RUV0cTFURXBTRHFLM1orbEtEN3JWRFUxaGdGd1Z0U2dzbnVta2tjTXYvNlUy?=
 =?utf-8?B?c200aHNIdkxMYTAzMTZOcEx6MHBvQ1p4VURheHRYVE9pTHpQVHVjZGRHLzlG?=
 =?utf-8?B?Q1U4SGFmM3BsNTJaYThhVUIrdXl1ZktwMXBqVXh4RTFTby9yRHg1aFNQcjhO?=
 =?utf-8?B?S2M0VmIvQUE5ME1yR3hOZ09QTWFFVm15VE9UaWJ2eUVkd1hIdkVad0tBZVZk?=
 =?utf-8?B?V1RaenA1YmVyVFFlQTdqZCt0ZVplS2cyT0dseTBCY1ZVVWpteDJOYUYzVGY4?=
 =?utf-8?B?KzlxOC9CVmo5TXFEN3FLVmRTSVRWdHVqSVpZa040VVF2eDZDTkpqTGdjd2JE?=
 =?utf-8?B?SmtLOFhOVW5TOEcxbW9wcHNHRkhUNE9CUDhxMCtLaXpaR0lVaXBCaklMQUo1?=
 =?utf-8?B?UzExQU1xZ3lrdk85SXIyNFdtWjF1LzkydnNUSU9TTWRqOTBxVjZqYVJSREU5?=
 =?utf-8?B?S0lycTdtYmlhMlVTcTl6KzFvY1RnQTdnUmk1UnZYYTRwdEZSOXhlckI3aGdH?=
 =?utf-8?B?cjYwYmFpVGxYVkpJUTV5dkE3aEczWlJmV0lPWUEwQVJjaUtmMzU5TjR0eWhx?=
 =?utf-8?B?SzdMdHFnYytObWF6aDVVRXRxaGNtMWlpQ2NJa0pZZzZ3d29rWEdvK24xaTFl?=
 =?utf-8?B?RmJnMk5HVEUyYjVwYUNFUFEzK0lObGk5cnhaNVNtU0dyZzJDSGZsbWJQZW0z?=
 =?utf-8?B?cmhLVzNyWFB4eHlZVW04aG1oejlvaU9YRVNLOC9JdUNkZTg0MURYbWxIamhT?=
 =?utf-8?B?QVh6Zk9UK0VscG9aSU1CdTFnN09mdGMvVzFlY3hrSVhtbzRiQ2tGajJmNUJN?=
 =?utf-8?B?Yjh1TFJZVzlLOXdHYVFncXhyUkhQcDhCSEZ1cnJHYTZ6NWt3aENxVHpMN1Jl?=
 =?utf-8?B?SVBpM1hYaGs5RWdGcDh0TlhMV1RVanBEMCszUWM5SHpIYmR2Y20rV3p0UnBp?=
 =?utf-8?B?UVFWN3dPS1RVRkg4eWxvajhWaFlCNGRTWXhIck1tSis4cXplMkVNSDI1dVpt?=
 =?utf-8?B?VktNR2YwdDllbzQvQ3A2SGtxOG44N0NVMUxibkV3QWU1ZFJEU0hRWmJINnVz?=
 =?utf-8?B?WmE0amphMjVmaUFDWjFDR3gzZk5SMGlrejdZQ1RtNTBEc3ZpdlZCb1BudHN6?=
 =?utf-8?B?WVdyZHN1UURINWZ4cFRBd0RnVVExcjhGdjJKd0RKRWRzTkRGYXl1RHhYNWlj?=
 =?utf-8?B?N0dHUkdQdEFNeko1c0RxK0E1T1NOU0ROL0o3dHNJOUJsdWZ5U1hjOUdhNUpD?=
 =?utf-8?B?RVNtbGtDRmFPZGNtVFcyU0VzbXZFYVJLeVp0M1BEU2xlOGlYRHJpcUVwK3JM?=
 =?utf-8?B?V2xTMUQ5QmxZV3Ira052NkpnMGlCcEFIbGxUdVZtaUNmTm4vM0tIS015ZC9T?=
 =?utf-8?Q?WpAek1NICVYrRcfc=3D?=
X-Exchange-RoutingPolicyChecked: UuJxWKekLggm8whWv6rPBWWOpIiCTlp6oAJfOyC6U3Djd1dqvCeKBNtPPYTDZe9vpPB3sbAQElAtnU35Yu9XYU83rJinq3bQ03KUeIEbwhwkj6uNpzV3aQmpLyRLePNip9ZIpzSwzLatNkaGEkipRBEdEsb3ibCRPraHUvtxObtJU3AT0xY06HrFZQpOR1qu6GDQlhjE/AHi5GaApLfSSX3zJCRIhU8HldyaB6F1PNPgrfb46R5xRNkbt6DhHDqO2bZlrmunyK1rggZ02eqi6JhjjHCGb76g6dJbY3LAy/rMpDQ3eCbQFg2k26YktP80sNZ5mo5fMP8G6Yj/yy9OoA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 1186bd18-01e2-4bf9-f9c1-08de8b607d18
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2026 17:52:46.6853 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Fpw9Stsx3bv4qtY7ZcLtsiF4y5nSzLeXnJ0y+Sp1ZSkrKYVhE0u9dGp4QC0nIgBIFI7syHcPJ0AlYJUDQoXMey8jUCBGhf6pXaWhM9S1ZKU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7357
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774547574; x=1806083574;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ez+38G8x+s54FwL7XncBYnMmvCXLWL8PKvR/44pazRA=;
 b=GtiE1R7txn10UkppiO9awKFEcpvdCZRIm59ZHh6RGs4c7V6tTEnWAsvJ
 4VVjT/0C4w67O0Xm5zt0uu8w2Tj67W2T1MV8DtV5+QbXS4s26s0t1aPgK
 ZhVqsSInet7/gxQFjcDaCke+R8QjFsoV4aPxNTMfFhPs8eoyGvRHSvPj6
 C4n/fQmYXQHE3MYVb/crd3hoKgUMy5Y8ORHu6lESajbysAFnoIPGYu/Ko
 HJi2HjSLhs6nfoqjmafbJ/f4oRVTaj5x6QpgHvNvgNjvol55jdQWhXZFM
 v2e0BUs+rYL7yNfDqGbCugtS9z80YvnAOczQRX6KvBV1RWgsAdc3Ck5eg
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GtiE1R7t
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] ice: E810-XXV: Dell GBIC S28-10G-25G-SR-85C
 does not work
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:pmenzel@molgen.mpg.de,m:przemyslaw.kitszel@intel.com,m:it+intel-wired-lan@molgen.mpg.de,m:it@molgen.mpg.de,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: C341633985F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/25/2026 12:02 AM, Paul Menzel wrote:
> Dear Tony, dear Przemek,
> 
> 
> Just a kind reminder:
> 
> Am 18.02.26 um 16:00 schrieb Paul Menzel:
> 
>> One more follow-up:
>>
>> Am 18.02.26 um 13:09 schrieb Paul Menzel:
>>
>>> Am 17.02.26 um 19:16 schrieb Tony Nguyen:
>>>
>>>> On 2/17/2026 9:15 AM, Paul Menzel wrote:
>>>
>>>> I spoke to one of our link people about this.
>>>>
>>>>> It works with Broadcom network controller BCM57414:
>>>>>
>>>>>      $ lspci -nn -s c4:00
>>>>>      c4:00.0 Ethernet controller [0200]: Broadcom Inc. and 
>>>>> subsidiaries BCM57414 NetXtreme-E 10Gb/25Gb RDMA Ethernet 
>>>>> Controller [14e4:16d7] (rev 01)
>>>>>      c4:00.1 Ethernet controller [0200]: Broadcom Inc. and 
>>>>> subsidiaries BCM57414 NetXtreme-E 10Gb/25Gb RDMA Ethernet 
>>>>> Controller [14e4:16d7] (rev 01)
>>>>>
>>>>> The difference seems to be that the Broadcom device supports auto- 
>>>>> negotiation, and the Intel device does not:
>>>>
>>>> Strictly speaking, optical links do not provide auto-negotiation.
>>>>
>>>>> Intel E810-XXV:
>>>>>
>>>>>      Supported ports: [ FIBRE ]
>>>>>      Supported link modes:   1000baseT/Full
>>>>>                              10000baseT/Full
>>>>>                              25000baseCR/Full
>>>>>                              25000baseSR/Full
>>>>>                              1000baseX/Full
>>>>>                              10000baseCR/Full
>>>>>                              10000baseSR/Full
>>>>>                              10000baseLR/Full
>>>>>      Supported pause frame use: Symmetric
>>>>>      Supports auto-negotiation: No
>>>>>      Supported FEC modes: None
>>>>>      Advertised link modes:  25000baseSR/Full
>>>>
>>>> The important part is here 10G is not an advertised link mode...
>>>>
>>>>>      Advertised pause frame use: No
>>>>>      Advertised auto-negotiation: No
>>>>>      Advertised FEC modes: None
>>>>>      Speed: Unknown!
>>>>>      Duplex: Unknown! (255)
>>>>>      Auto-negotiation: off
>>>>>      Port: FIBRE
>>>>>      PHYAD: 0
>>>>>      Transceiver: internal
>>>>>      Supports Wake-on: d
>>>>>      Wake-on: d
>>>>>          Current message level: 0x00000007 (7)
>>>>>                                 drv probe link
>>>>>      Link detected: no
>>>>>
>>>>> Broadcom BCM57414 NetXtreme-E:
>>>>>
>>>>>      Supported ports: [ FIBRE ]
>>>>>      Supported link modes:   25000baseSR/Full
>>>>>                              10000baseSR/Full
>>>>>      Supported pause frame use: Symmetric Receive-only
>>>>>      Supports auto-negotiation: Yes
>>>>>      Supported FEC modes: RS     BASER
>>>>>      Advertised link modes:  25000baseSR/Full
>>>>>                              10000baseSR/Full
>>>>
>>>> ... where it is here.
>>>>
>>>>>      Advertised pause frame use: No
>>>>>      Advertised auto-negotiation: Yes
>>>>>      Advertised FEC modes: Not reported
>>>>>      Speed: Unknown!
>>>>>      Duplex: Unknown! (255)
>>>>>      Auto-negotiation: on
>>>>>      Port: FIBRE
>>>>>      PHYAD: 1
>>>>>      Transceiver: internal
>>>>>      Supports Wake-on: g
>>>>>      Wake-on: d
>>>>>          Current message level: 0x00002081 (8321)
>>>>>                                 drv tx_err hw
>>>>>      Link detected: no
>>>
>>>>>> PS:
>>>>>>
>>>>>> ```
>>>>>> $ ip link show net04
>>>>>> 7: net04: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq 
>>>>>> switchid b48351ffff278d44 state DOWN mode DEFAULT group default 
>>>>>> qlen 1000
>>>>>>      link/ether b4:83:51:27:8d:44 brd ff:ff:ff:ff:ff:ff
>>>>>>      alias eth4
>>>>>> $ sudo ethtool -m net04
>>>>>>      Identifier                                : 0x03 (SFP)
>>>>>>      Extended identifier                       : 0x04 (GBIC/SFP 
>>>>>> defined by 2-wire interface ID)
>>>>>>      Connector                                 : 0x07 (LC)
>>>>>>      Transceiver codes                         : 0x00 0x00 0x00 
>>>>>> 0x00 0x00 0x00 0x00 0x00 0x02
>>>>
>>>> 0x10 would be here for advertised 10G support. It is not, which is
>>>> why it's not being advertised. He mentioned it's very common for
>>>> dual rates to claim it on paper but not advertise it properly.
>>>
>>> Thank you for looking into this. It should work in this case, as it 
>>> works with the Broadcom device.
>>>
>>>> Could you provide the output for 'ethool -m <INT> hex on'?
>>>
>>> Sure. Please find it attached for the Intel and Broadcom device. It’s 
>>> the same GBIC model and only the serial number should differ.
>>
>> The Dell support pointed to the section *Known Issues* in the release 
>> notes of the Intel network controller firmware version 24.0.5 [1]:
>>
>>>    - When using the dual rate 10G/25G SR optics module (DN# M14MK), 
>>> linking at 10G may not be
>>>      possible if auto negotiation is enabled. To workaround this 
>>> issue, disable Auto Negotiation
>>>      on the switch interface. On the adapter side:
>>>       - To obtain 10Gps link on pre-OS environment, set Media 
>>> Detection to Disabled in Main
>>>         Configuration Page and in NIC Configuration, uncheck the box 
>>> labeled 25G and make sure
>>>         the box for 10G is checked, this will force the link speed to 
>>> 10Gps.
>>>       - To obtain 10Gps link on OS, you will need to manually set the 
>>> speed to 10Gps. For example,
>>>         use "ethtool -s INTERFACE advertise 0x80000000000" on Linux.
>>
>> (I am unclear to what component “if auto negotiation is enabled” 
>> refers to.)
>>
>> Anyway, without changing anything on the switch, running the suggested 
>> command
>>
>>      sudo ethtool -s p3p2 advertise 0x80000000000
>>
>> get the link up:
>>
>>      ice 0000:81:00.1 p3p2: NIC Link is up 10 Gbps Full Duplex, 
>> Requested FEC: RS-FEC, Negotiated FEC: NONE, Autoneg Advertised: Off, 
>> Autoneg Negotiated: False, Flow Control: None
>>
>> Does the Linux kernel need a quirk to work around the broken firmware? 
>> (Which hopefully will still be fixed in future releases.)

The firmware works correctly as it is implemented against spec; the 
module itself does not as it's not correctly advertising its supported 
speeds.

> Were you able to talk to your firmware engineers, if it could be improved?

That being said, there are firmware changes coming that will work around 
this module's issues. I don't know when that will be released though.

Thanks,
Tony

> Kind regards,
> 
> Paul
> 
> 
>>> PS: For completeness:
>>>
>>>      $ ethtool -i net04
>>>      driver: ice
>>>      version: 6.12.0-160000.5-default
>>>      firmware-version: 4.80 0x800206a0 24.0.5
>>>      expansion-rom-version:
>>>      bus-info: 0000:81:00.1
>>>      supports-statistics: yes
>>>      supports-test: yes
>>>      supports-eeprom-access: yes
>>>      supports-register-dump: yes
>>>      supports-priv-flags: yes
>>
>>
>> [1]: https://dl.dell.com/FOLDER13423820M/2/ 
>> fw_release_e810_e823-20250910.txt
>>      "Intel(R) E810 Adapter and E823 LOM Firmware Release Notes for 
>> Version 24.0.5"
> 

