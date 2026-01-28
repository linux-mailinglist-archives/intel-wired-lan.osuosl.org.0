Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCMAIPhbemm35QEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 19:56:56 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A71A7F77
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 19:56:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C2EC982695;
	Wed, 28 Jan 2026 18:56:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OuHhtIGOhOVe; Wed, 28 Jan 2026 18:56:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1BBE4826C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769626613;
	bh=AhHGGUIxY+1g5eCZILHqMUuobBBonVVIbQPWNG4MeoQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xTQm5yVhiOe7/WgQD3fnIcVgj89dSZj2XKoAActcnV+fpph/fej+Am21OrL9UMyVW
	 idNoXZQFan/wyY0cg67xyM5DN2X0FCp6ArUx7v4kMN2do6B8ptfAI1uaE6+8Den1I1
	 0Io62SChQcepI34D3T1l+zYLR6os1k/ojFYSBHugNBciRzMVZWKbd/CF+4kbTBsCC9
	 0SeH0HmFIjuIz0vRYmCpOvuyCuRZUfyoH0iVwPDF7eRPYvRqOUWEKgMCA6/bCgwTpI
	 nMZuHa/cd7L6JUxeqZbcIPsq9CgIP7/qGS+yqljBt9lKlu7Do3vgMMhuLB1QkYW94t
	 0XRHIGO5dMVZw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1BBE4826C0;
	Wed, 28 Jan 2026 18:56:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id ECAF5D3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 18:56:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D95584098C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 18:56:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5GfdiOsKqatf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 18:56:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A7DC6405AA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A7DC6405AA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A7DC6405AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 18:56:49 +0000 (UTC)
X-CSE-ConnectionGUID: NHJrizxlSqmtria29LnbJg==
X-CSE-MsgGUID: esDbmNXiRKaM3s6HTHmynw==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70904201"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="70904201"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 10:56:49 -0800
X-CSE-ConnectionGUID: myGzRNh/S42EOZkJm+hwMw==
X-CSE-MsgGUID: 5fu981WmTgWQIcQV9mBYig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="208433912"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 10:56:48 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 10:56:47 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 10:56:47 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.43) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 10:56:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SeemZJQV/16A9T9DFkjdL6VCSuUwDzgPlG7ZKYTCrOWG5eGOvW2CXjm7nMS2bJglMbglGp5eIifOGZlUNwbzFHhMBQN5CSGQuoXpgcNOBEV9AeC2xfHnW8llteXsc0W1Fp/eeZZQWF9stCDNXWVabhQxoO5HFYdQJC05Bap/mqBIpcmPQADABFZY43Uc1EZ75mHpJERNvh7nKBigOmSXvA5J34RhoXUGnFF+wBQkAx6V7+8YKaiYXfeHZ6raiHXOo6RZdAHBUK+JhhUfvB8rk8n6vu6INjat2G+VOrXLYd+KnzscXFti3HH/8F6OFFbtEyLmcsjeioXUJvNNp7+Prg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AhHGGUIxY+1g5eCZILHqMUuobBBonVVIbQPWNG4MeoQ=;
 b=wNjziWI20wRZmh/JlEdbc9jCUMiaCymcHKd79q57FJGiZA9T6gJXHLHg43kmHmIf6GcPOoWZx+4sBpVPJAlj8f1uSbM6XvTBWwiZLaGfkqsCC8pleiB3e4+Irt74N+J0W4umV6y3eXrlXrmCXet6cXpOB0Djvk7F12UB3Yc9ZHd0WK1/1vUgDGu0ObNXjFZ2Kg6jO0ESMJObIBPc2j1I0ec/0wNtumt6JzWzEtdAA6PXQsQA4v7zI0bzQppB9SMI0AngwJYfj7Xqi2JiAVe0af3uir4kmaS8rfzip1CN2mpVP7G5idf2B0St3ZNkkP/0RRQzZacUZUoBKSG4FGL3/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6067.namprd11.prod.outlook.com (2603:10b6:8:63::20) by
 CO1PR11MB4786.namprd11.prod.outlook.com (2603:10b6:303:94::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.7; Wed, 28 Jan 2026 18:56:45 +0000
Received: from DM4PR11MB6067.namprd11.prod.outlook.com
 ([fe80::3a56:fd55:d248:592c]) by DM4PR11MB6067.namprd11.prod.outlook.com
 ([fe80::3a56:fd55:d248:592c%6]) with mapi id 15.20.9564.007; Wed, 28 Jan 2026
 18:56:45 +0000
Message-ID: <f6208012-7701-4dce-abba-ea77d7cd09a7@intel.com>
Date: Wed, 28 Jan 2026 20:56:40 +0200
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20260106100331.1576758-1-vitaly.lifshits@intel.com>
Content-Language: en-US
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
In-Reply-To: <20260106100331.1576758-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0016.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::18) To DM4PR11MB6067.namprd11.prod.outlook.com
 (2603:10b6:8:63::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6067:EE_|CO1PR11MB4786:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ebfc72a-63f3-48e8-49ac-08de5e9efb37
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UVA3bGhNR09iWndkMWFDbjBGYXR2cC9ERzJ0RnpGcHkrRzdUWE8rZkRodUxH?=
 =?utf-8?B?aUVqaHhUbVpWQ2tSWTVKTEFvVzFmTkVFNUpBRXVKUHFRVnlHakJldWRQWmZx?=
 =?utf-8?B?SDdyRitFOFRIeTZqbFR4ZTB0Q0ZoTXRUeTdFUEdOUnZueG8xS2dCaDZjcHM3?=
 =?utf-8?B?azBJWElsekQvSzMzTkpTQi9VK1hwRFNWRzI3dkV2MWM5eUlDMWkrKzdBbndy?=
 =?utf-8?B?cXhOQlpYZ21tV29UU1g1cDV5SGh3ditVc0Q2eEdyWnZSVVJ4RmRzWmo4cDZH?=
 =?utf-8?B?aDZRWnU0eFpjdGlVbk1GYVZHUEtIWDY0Q1Jpand6V2dFcnpwOUt4U1kxZXhk?=
 =?utf-8?B?V28xcFdRZkJNOEFlczBOcnFIWHU4SHpyVmFUSWtyU1NJdnlKcjR4Y1U3TVZC?=
 =?utf-8?B?a1R0eE1DRGl3MUU5Vng0REUwdlorUkVHYnRVb24wVktlNzcwU1dHTEM0OG5m?=
 =?utf-8?B?ZEdHSHNjUk9XSm1YZEFLTHRBdk1wdFN3OWY1WDJaVUUyTG04a29XaGJWcjJ4?=
 =?utf-8?B?SFVIeXNxQi9IQ3g0akpwd21VaWJKck5xb0JMNkREdWJwVU5RSDNGNzgvdU9M?=
 =?utf-8?B?NFJGUnEwU1JRNXVaRlNxWDA1QmdydEJhMlRnUEo0NXNuMnJqQjZEWkFSQjJk?=
 =?utf-8?B?K0k5ck1pdThRMXBDRlk0OVBua0d0SE5KSzJGd0dFQnpUOUhmOTJScFVWUGJG?=
 =?utf-8?B?d0RLSzhVTmt4d1R1MDlLY0VWaElMdE9lRkJnMFJPZUQzUmZDL1pLQmdSbytk?=
 =?utf-8?B?aUhqSFo2NEVIelh2TjVXcGdmMUQ0KzNibzU1R2JHSUpmVXJ0VDRIbys5bTdz?=
 =?utf-8?B?S3d6ZEFLT0JpM24zTE82Q0VHRUVwMzRqOWNlTWZTTUl0MW1kelRaN2tFRzBE?=
 =?utf-8?B?Q1pPKzlqZm5UT2xWVU82cDZmZmhkb2x0aVlUT3Uyc3l5bDkyYVM1MUpLQjFE?=
 =?utf-8?B?eERhUEhWc1MzMlp0NDFZcEVnVUVScnJqbTdzN2VySk5jQjBoWDh4WUNwMXdi?=
 =?utf-8?B?NmRXSjBmZm43dVdxS2p2R1ltSEg5N0VqK1RPcGQ2U3haMnVVL0ZOZmdnaW14?=
 =?utf-8?B?RFhKUkFzSm1qRUJtbWZ3WC8yYkxQYm9nUE00NW01U1N5UzY2MjJienlxYW8w?=
 =?utf-8?B?R09PQmh2UHc2VlJBK2Z6WDFCTTUxOWMyZ09ldC9NTWU0UVlaSjdWMmkrdUVP?=
 =?utf-8?B?SnRlY0I5bnBmVUhNQVpBaFhBMUVIUFMvcUMvbVFMQ2d6YXdodXhhaEdsakIz?=
 =?utf-8?B?aWx0bHF0b3lpUFc1K1FqZG1UUzV4cG5vK2ZPZEZybEswbzU0d2dhWHAvTFNo?=
 =?utf-8?B?Q1JGeTlKMUM5T2h0bHVjTmptZzMwTzVmZHB5d3NOTk5leUwrZzBocm9oRlF0?=
 =?utf-8?B?Skg2UjR1QTRSWHBUekhzRUFwNzRPd0FUMTJEaFJiUjViTHpQbktSY3VKMHgz?=
 =?utf-8?B?MUIrQXhDRnIzcnF2Ylg5T0VJZW52TDNLb242OHl2N3hCdWQxTVJjTmE2eWdI?=
 =?utf-8?B?Sm9vR2xZdTdZQjVoay9URGsraFI3VG1YWUZiYkxCU1hyZ2x1aDRnQ29ReFBC?=
 =?utf-8?B?NlVtUnRGYkxTT2xhWG9FejlpTTVNRzZqZnVNNkxBTk55MkVlTkg5Q3FIbzdu?=
 =?utf-8?B?VVRQbXVwdjZNVElVVjV3NzZpVWVITW1Yd1FLcnR5TDRpNEEyTDFjc0ZTdEZT?=
 =?utf-8?B?S3lDdmtNV3lBdW5zWGp5RlBZb1JoeTA0bUxyTUZNR20xcVlmeFpBcnVDTUVU?=
 =?utf-8?B?eVYySk90QUkySmtZNkNNaEJjSnN4RFVLRjlYSXVFYm1sQXlvSUhXWm1nQ3Qz?=
 =?utf-8?B?RjJCMXdObEJ2VHhjTnZOWEs5RUxDVE5qa2NWdkNxUzB6RHhkUUw4aUtOckkw?=
 =?utf-8?B?ZktMVFBDcDFyY1BMZW82VW5kSG9jUFBXU2RuR21aZVhWeXJDOU5NcnIxdFhy?=
 =?utf-8?B?b3lHaHBvTFRPUHlQaDY0QnBOWWpwRUgwS1lxUGJ1aTZPb0twcDNBZ3RNZFpW?=
 =?utf-8?B?aDE0Vk93YmF3cVNqcUtWNm9uTmdjWTRqVHhSWmVTalljd0txQ0tJNkZoMysr?=
 =?utf-8?B?emxUZ21ybktTUUhpTGlyaXNoYVVweG1LYjllaG0vTDU3cjdiYUFhelRwbERh?=
 =?utf-8?Q?5HFk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6067.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TDdQUi95ZW04M281ckdabHQ4SXZKUmwzY2hCUG1TQkJEN0FqdXFpYks3UGZV?=
 =?utf-8?B?U2lkLyt4THFJSXN1bk9Ba1pyRjNTeWxnanlkRnNKS0kwV1I1T2ViRVcxOFhz?=
 =?utf-8?B?NENwb2tBaFc2S29ZaFVvdjFia2g0RDFiNjBBNUxKTnB4YXd4R3gwT3dvTmIx?=
 =?utf-8?B?bFNxZFhhdnE1Rk1OTW9wTjAwSWRzenVNVlFpWTVvaWZVR0F2aU1nV2NSNnNV?=
 =?utf-8?B?RzVZMnVDRmx0Z3NNUWxvaGRqczJUWXhYZlJJYSs2WmFjUFN2dlJMYWNjVk92?=
 =?utf-8?B?RFVIK2ZpUXc3cXhhRnowbXUzcDFEL2M5VkVMc3NEd3drdlRMTlcrSWZ4ckZp?=
 =?utf-8?B?Zmw5djBkc3ExQ1Bqb3lPYTF3dVdsMXRweGJXcUZ6ZElPcHZramJuc0ZnMnZU?=
 =?utf-8?B?aXJMd0hJWnJyNFRLWTFJVnhXdmt5MDFMUkN4UlMvbVZWMnYrcU4vZWRIczY5?=
 =?utf-8?B?UVV2TzgrelIxYlVpTEpueHMyTWx5NWNaN2NMSWNWdGFkRXlQaEVRaytYcFpy?=
 =?utf-8?B?Sy9iREl4ZktiR2JVeEVhcGtKaWlDK0ZpNHFCaVpnYlFWRnJWRHQyS2hiOXVu?=
 =?utf-8?B?SzZqNnYwLzFHVnBEdUdtUy9ReGxCTDAyU1dvbGh0T2prcFI3T0J1N3RGZ1ha?=
 =?utf-8?B?WXh0VU55aytzSDk3cVczUmZsb0d6cWx1MjU5OXpmNTNzZk9jb1BCaFBzTUdX?=
 =?utf-8?B?c3ZCVG0xaWhCQ2dCK0I3L2QraFRWckdDOGE4WUpTYVV0ZG1hQmJFUWhFNDJz?=
 =?utf-8?B?UWNJQnRMY01wK0xjTUJmTWZqY0sxZlVQU1h1ZFMwSzd3NGpoMDRRUnhDdDFY?=
 =?utf-8?B?SFpzeDNJT04wZjhodzNVN1hsNGtqMlVaYklvdUxRNnRvbjViSmpqdHZGZDhl?=
 =?utf-8?B?TklEYjFiaVJGbFpSMHZGd21NYUZPeDdJd29WcEEyQStLcS96TTV6b3BBeGZX?=
 =?utf-8?B?R3BNcDYzY0NMeUJoN1BPR3JnUXNuL3hIV1c2b3pWeTB4a0ZlTzRIVHkveGpq?=
 =?utf-8?B?RG9FVTQ2TXFkcHlZeDhtWGhqR3J2bWptMnIxMmVZVjFGNVFqdmlJcHFYWDRz?=
 =?utf-8?B?NnlIamEvdDBOMVJyZ0lFTERJYkVOaUcwZWFKOXM2V05PbnRGNlBmRWI5TFJG?=
 =?utf-8?B?WlgyNUJwL2IzR29NdE9FdG05ZGVzY3hYTHJsMURjQ3ErUzVoa1hrSWF4c2VJ?=
 =?utf-8?B?NmZQMUxabmpHRW00VDgvNWtuM0RMK3BpdUpKK2Y5OEJUM2RTMk5lK0ZIVnlC?=
 =?utf-8?B?c2tJOHl5OCt3SjBndHJqUHlUbExUWFhzN0NqK2NoT29abUI5eldBdGhIaVFV?=
 =?utf-8?B?cjlaRzFoNDZXNWMzNVBxc3IzS25wSkRpN0lBR2tHY3RTM3MzY3E4TFdLSUJx?=
 =?utf-8?B?eWdZbTRXU1p2bld0YjVYQlZ4Y3BSTmNTcGZjMGJOT1RFZGZSUkJKNTJRa3pH?=
 =?utf-8?B?SE8ydTllS1NUOTEzYzVXNC9vQ28ybFFSeENMdmNUaEx4U0ZZdmo3UFZnMS9Q?=
 =?utf-8?B?SDN6WjN1d2pMb1IxSmRvekNDb25ZWVdnNVpCMVhFRjlYMzZGTkFXYmY0eS9P?=
 =?utf-8?B?WitFbENwbnduakNaODRTVC9iYVZhVDBOUWpJTGtoRVBYMjgzY2xkUDYyakZH?=
 =?utf-8?B?M1p4VDJEMTd3TStiUW1wZHh2ZkJBUzNLNDhiZWpaYy9vbVVBZS9HWW5MOUs3?=
 =?utf-8?B?UWtMb1owTENmbFgvWUJiaTdqVEpJaGlLUXQrWDlBd1lJbWtjdXFPNEZMYlJ3?=
 =?utf-8?B?alJwbENFcTcwU3BwcGREMWVSeXFqSUdiSTl0L0daaDFsMUJ0ajMyRy9URFEz?=
 =?utf-8?B?NzlMbzQwK2lmRTFOQzIxUmNzeHBBb2dNckY3L3hLeXJnZ044bEN5d3N1b2lk?=
 =?utf-8?B?WTVEZTZlemt6Zy9sMjIva1FCWVN1UUZPMFMya3FpY00vdXhwNTBWWGRPZjZy?=
 =?utf-8?B?dklzQjVVSlNzbDk4K0RWelRXd2lzTXRPOGlPUFAvMFJtK0JXREZSTndobzFm?=
 =?utf-8?B?T1BCMThrUzJmK3NsNjBLT1BSMTMvY3NkczhzK3ZFUWcwdmh6ZmhITG1tSEdp?=
 =?utf-8?B?ZUYrMWNjbE5MR1NqdElzMjBNZDkxK1RjODBzakR6OXpjcmNmekF1M0JIQUVk?=
 =?utf-8?B?RlVUMTdOUVN4RmZQUmpObXo4TDlVVEY2OTRMTEh0Z3hYY2VabTA5eGdGbk5F?=
 =?utf-8?B?c2hYVlVZeUtYVis5S2huenI1Zk16dEJxTVpwQXpBSXNCUHQwTDFYa1FkT1l4?=
 =?utf-8?B?M2pEWndYRzNnMlRuZldFcXZCUmh6NkwrWHVaang2c3lNOEJFRmlHZ05IbHA2?=
 =?utf-8?B?L0VvZ0o3Y3UvcXVYU0E2Sm95UUMvOWRlMnJXY0NTWUN1Uk9wMGNIZz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ebfc72a-63f3-48e8-49ac-08de5e9efb37
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6067.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 18:56:44.9117 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yBiC2ZSlmTVLm01OUci/An1d0cIUYmDyuZpBTPNKJtgxZr7wA4PtGiixkdLpdKhm/Mo+SOelb5H0SYt0pR/ObA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4786
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769626610; x=1801162610;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=QB2po/kabl+L4M7ooxS2yLK9OXlyqjdYYSiraGGZWfM=;
 b=S2dstMbM6wg/FgKHQSrjECAONN4YS7XD6/c7L+GibP/Jr9FJOJasu1Hb
 JY3LrIStB4WtLHz3q3/o9H3z8nMi+bmfzPKiAFdVNnzhQ+cLsrjrIx0VD
 6xVvNB03T+kOrQxcLct1JXwMnH6DEZtTpaNdx4FRI83gmRqbBntkzQIY9
 mXMFN156TZYX7k3j9vMNpSqHK3bhEXNgDZWHdX4FarsB1m3D2cpOYjfB9
 fgZYCSQnHpHagC5nXBTMEBC/isShx1OiVzMuPLlE9YY/5Ewn9VcdJxOKa
 EiJ9csL1FzYTcboWE2lOcd4at0CUHNs+ejwCCbdELJVco7dP23S+3/WpH
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=S2dstMbM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/1] e1000e: correct
 TIMINCA on ADP/TGP systems with wrong XTAL frequency
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:vitaly.lifshits@intel.com,s:lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email]
X-Rspamd-Queue-Id: A2A71A7F77
X-Rspamd-Action: no action

On 06/01/2026 12:03, Vitaly Lifshits wrote:
> On some Tiger Lake (TGP) and Alder Lake (ADP) platforms, the hardware
> XTAL clock is incorrectly interpreted as 24 MHz instead of the actual
> 38.4 MHz. This causes the PHC to run significantly faster than system
> time, breaking PTP synchronization.
> 
> To mitigate this at runtime, measure PHC vs system time over ~1 ms using
> cross-timestamps. If the PHC increment differs from system time beyond
> the expected tolerance (currently >100 uSecs), reprogram TIMINCA for the
> 38.4 MHz profile and reinitialize the timecounter.
> 
> Tested on an affected system using phc_ctl:
> Without fix:
> sudo phc_ctl enp0s31f6 set 0.0 wait 10 get
> clock time: 16.000541250 (expected ~10s)
> 
> With fix:
> sudo phc_ctl enp0s31f6 set 0.0 wait 10 get
> clock time: 9.984407212 (expected ~10s)
> 
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> v2: avoid resetting the systim and rephrase commit message
> v1: initial version
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 80 ++++++++++++++++++++++
>   1 file changed, 80 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 116f3c92b5bc..edb72054d0d9 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -3904,6 +3904,83 @@ static void e1000_flush_desc_rings(struct e1000_adapter *adapter)
>   		e1000_flush_rx_ring(adapter);
>   }
>   
> +/**
> + * e1000e_xtal_tgp_workaround - Adjust XTAL clock based on PHC and system
> + * clock delta.
> + *
> + * Measures the time difference between the PHC (Precision Hardware Clock)
> + * and the system clock over a 1 millisecond interval. If the delta
> + * exceeds 100 microseconds, reconfigure the XTAL clock to 38.4 MHz.
> + *
> + * @adapter: Pointer to the private adapter structure
> + **/
> +static void e1000e_xtal_tgp_workaround(struct e1000_adapter *adapter)
> +{
> +	s64 phc_delta, sys_delta, sys_start_ns, sys_end_ns, delta_ns;
> +	struct ptp_system_timestamp sys_start = {}, sys_end = {};
> +	struct ptp_clock_info *info = &adapter->ptp_clock_info;
> +	struct timespec64 phc_start, phc_end;
> +	struct e1000_hw *hw = &adapter->hw;
> +	struct netlink_ext_ack extack = {};
> +	unsigned long flags;
> +	u32 timinca;
> +	s32 ret_val;
> +
> +	/* Capture start */
> +	if (info->gettimex64(info, &phc_start, &sys_start)) {
> +		e_dbg("PHC gettimex(start) failed\n");
> +		return;
> +	}
> +
> +	/* Small interval to measure increment */
> +	usleep_range(1000, 1100);
> +
> +	/* Capture end */
> +	if (info->gettimex64(info, &phc_end, &sys_end)) {
> +		e_dbg("PHC gettimex(end) failed\n");
> +		return;
> +	}
> +
> +	/* Compute deltas */
> +	phc_delta = timespec64_to_ns(&phc_end) -
> +		    timespec64_to_ns(&phc_start);
> +
> +	sys_start_ns = (timespec64_to_ns(&sys_start.pre_ts) +
> +			timespec64_to_ns(&sys_start.post_ts)) >> 1;
> +
> +	sys_end_ns = (timespec64_to_ns(&sys_end.pre_ts) +
> +		      timespec64_to_ns(&sys_end.post_ts)) >> 1;
> +
> +	sys_delta = sys_end_ns - sys_start_ns;
> +
> +	delta_ns = phc_delta - sys_delta;
> +	if (delta_ns > 100000) {
> +		e_dbg("Corrected PHC frequency: TIMINCA set for 38.4 MHz\n");
> +		/* Program TIMINCA for 38.4 MHz */
> +		timinca = (INCPERIOD_38400KHZ <<
> +			   E1000_TIMINCA_INCPERIOD_SHIFT) |
> +			  (((INCVALUE_38400KHZ <<
> +			     adapter->cc.shift) &
> +			   E1000_TIMINCA_INCVALUE_MASK));
> +		ew32(TIMINCA, timinca);
> +
> +		/* reset the systim ns time counter */
> +		spin_lock_irqsave(&adapter->systim_lock, flags);
> +		timecounter_init(&adapter->tc, &adapter->cc,
> +				 ktime_to_ns(ktime_get_real()));
> +		spin_unlock_irqrestore(&adapter->systim_lock, flags);
> +
> +		/* restore the previous hwtstamp configuration settings */
> +		ret_val = e1000e_config_hwtstamp(adapter,
> +						 &adapter->hwtstamp_config,
> +						 &extack);
> +		if (ret_val) {
> +			if (extack._msg)
> +				e_err("%s\n", extack._msg);
> +		}
> +	}
> +}
> +
>   /**
>    * e1000e_systim_reset - reset the timesync registers after a hardware reset
>    * @adapter: board private structure
> @@ -3955,6 +4032,9 @@ static void e1000e_systim_reset(struct e1000_adapter *adapter)
>   		if (extack._msg)
>   			e_err("%s\n", extack._msg);
>   	}
> +
> +	if (hw->mac.type == e1000_pch_adp || hw->mac.type == e1000_pch_tgp)
> +		return e1000e_xtal_tgp_workaround(adapter);
>   }
>   
>   /**

Reviewed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>

