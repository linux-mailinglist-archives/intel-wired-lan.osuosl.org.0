Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8LLxLmlnCWp0YgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 17 May 2026 08:59:53 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C2B55F950
	for <lists+intel-wired-lan@lfdr.de>; Sun, 17 May 2026 08:59:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99A3C42385;
	Sun, 17 May 2026 06:59:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GdL8Jt5Lk5BG; Sun, 17 May 2026 06:59:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBD6242391
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779001190;
	bh=6Ta1jRE7ZOqhaCv/7F+7g8Y6ZXZlK9deveE3Ua5aJfk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=71NCrC7a63BtbtT0Dl0tE7z7G3O0JPG5k8fh0wCMOp5b0BmolNPs6A7nn5UhVjCm3
	 Y/7XEktAn22EErv7s0G5WVdWpu25YVgyw8DW6ciVSYCHbk+nZ/91JRPS6LOdPpeEgt
	 BQwGh/PrZdyQS5gwZBfY5lbNsduUCZ+8/3Luzy971CwxAS4Hwre1vPvbtiVmhh0GCc
	 Ez8dMsQVtm+HRNA+cMr42Gs2qnUJv1M5CVTkJV9VVwTF8HrQ5gu+sosbXqO7qWslQD
	 0PRiHcfCz5fxJIBb5BqRHlowMFVM0+Hs9APOxH4chjEJQQnMJUI+PL7PaDuVkv5TQu
	 hmG6PgLsTLA8w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CBD6242391;
	Sun, 17 May 2026 06:59:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E6AB0390
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 May 2026 06:59:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CC0E1853D5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 May 2026 06:59:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OXCkZyR3I-65 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 17 May 2026 06:59:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=michalx.cohen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CA8F7853CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA8F7853CE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CA8F7853CE
 for <intel-wired-lan@osuosl.org>; Sun, 17 May 2026 06:59:48 +0000 (UTC)
X-CSE-ConnectionGUID: A6YsBXGnT9KeF044R0gemg==
X-CSE-MsgGUID: zDMVF4SlQbOf3+YD6BxcoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11788"; a="102563908"
X-IronPort-AV: E=Sophos;i="6.23,239,1770624000"; d="scan'208";a="102563908"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2026 23:59:48 -0700
X-CSE-ConnectionGUID: /945r8/aRFeiPnRu+U6lNA==
X-CSE-MsgGUID: ++xpPR65QYmSCqlFAGgoBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,239,1770624000"; d="scan'208";a="243101333"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2026 23:59:48 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sat, 16 May 2026 23:59:47 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sat, 16 May 2026 23:59:47 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.0) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sat, 16 May 2026 23:59:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CB1zwLFghU+0VjAL2pk8Jws6ZFsoLbwf7LHuhOUOZPri2sp7rVYpm86RP2rJxobA/efj2XQXtkugyl4KtKEWnVwa33/P3qRoed2TKM5XqvhgNXYtvzByeBPb6OuciB4faOkwxRQkA5crBwAgQi2igrXtKmsBFEs+B4Ea/hv8p271qF1AFYa3bNxqCNnkSqjWp24if3OAUxjnbzrQ2SmMakbgt2aHglKOF+RUkSQzuk2ogEgqBDEr3iqTQvp0yu+8PGqpglDoYZBm9iXlAEatGTZHPWhJEoq7LfxFJE9zSoNsVmK/2Jvt7qeJrxJ6GQa20bKuGDoFzS3qUXGPUa0yFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6Ta1jRE7ZOqhaCv/7F+7g8Y6ZXZlK9deveE3Ua5aJfk=;
 b=igxRl8rPHW9bO73PrQs/pqVEPEIj3LXVW5ztHGt6rp5e/+B5+WBt8uNSTTfckP+rXszsOK+1PmwHM1oLZF171nEe/cGsFUBM1T53mi6kWtbNn9NZxZbvMMkp9e4nd2XEloKCkzRxq7QB1Z0HjRSQXbLBpDyBOismOmLjIvRWKgQ2r2robqb/1CrVsbyA8XwOKH3J3kQDEa04uHitsjLKEuefXsgusH+8/f3PUy49Q4Y/DIuAteK6MCIHjzdshAtVvSnR7TTqhLKa6lrkJhicxGLdtgN3IBYAiTgbj+FLNhuSXeNvioBoLa0SQx+3xMwfsfYngddaDR4uiqYP+2s0ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5520.namprd11.prod.outlook.com (2603:10b6:5:39f::20)
 by PH3PPFBC2C58BB4.namprd11.prod.outlook.com (2603:10b6:518:1::d47) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.22; Sun, 17 May
 2026 06:59:45 +0000
Received: from DM4PR11MB5520.namprd11.prod.outlook.com
 ([fe80::75b2:c8b1:10eb:2ed1]) by DM4PR11MB5520.namprd11.prod.outlook.com
 ([fe80::75b2:c8b1:10eb:2ed1%5]) with mapi id 15.20.9913.009; Sun, 17 May 2026
 06:59:44 +0000
Message-ID: <a2a95ff6-181b-4fe9-b858-1ce02e7193f6@intel.com>
Date: Sun, 17 May 2026 09:59:40 +0300
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, Matt Vollrath
 <tactii@gmail.com>, "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
CC: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20260429014325.19136-1-tactii@gmail.com>
 <IA3PR11MB8986883A02B619BAA6FF478FE5342@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Cohen, MichalX" <michalx.cohen@intel.com>
Organization: Intel Corporation
In-Reply-To: <IA3PR11MB8986883A02B619BAA6FF478FE5342@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0026.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::13) To DM4PR11MB5520.namprd11.prod.outlook.com
 (2603:10b6:5:39f::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5520:EE_|PH3PPFBC2C58BB4:EE_
X-MS-Office365-Filtering-Correlation-Id: fc09baf5-2482-4abd-2582-08deb3e1e056
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|22082099003|18002099003|11063799003|4143699003|56012099003;
X-Microsoft-Antispam-Message-Info: VLK/RhJfvxA7C9gWwW3AYdiSXJFMN68ArKAzrHeFAKfrfdbqKhBjBgd2MqScUxYoR4wuSUA2J6Ig3eyMOjejQZxBqdQw8I6cxNYm+HPn7IoZ1uM35ZomLuH9CUB9tTd3AIKrH6ox0ryIIBhess/k8sZb3c1VF+KvdzUDTOEVQVN4Qj9507OvFCGcyOHASNuf7yxzCodyL7vGkFVypd9NSedQb11cUz6wyVJIowMG0Kl+iFSRb+xCAYrC1oSXl5LcR5xjj9nErKiKVY8c8u8nNQl27W5lghrlBepeIeTlA8n4ZlPXHi+62a8gvmqaMM5tdbYKy6erbcMaiN1w0rdpzVh5lGU71l0M7bSb4uFbcsfPAE7vuaaELgv6lxyE04Xs+BwamhykWrzSY5J1t6ThFs90GSdqPXSV+2HQMu97hmPcadgPJC6nJudxpA3ZaiVgpqR9hW35ezcDySj6EnppHiYOxZFYtGpNg1WtzDVbxkO7saIZc/C8k+pwHP4I1m/jMbZa05/BetFxueS4IoiOOFKhoQgUgMThLcODBxS61ytwtzvI7mGDUYXJaP7QAm1qpb7GQijw7RTwMn48Fu58K/X3EG361nWLB+xz7dTMbsFOiW6SFwqgzv3x66FBilrYv51c2UZyCKWJH0PNFB3iRntQIdnPwSOf9nyKdHj0RcIc/ZF/Sw7miyiNYgd2r2BF
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5520.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(18002099003)(11063799003)(4143699003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?THBTOHRsWHB5WFM4RThXVHN5bEtvbXBTRE9xQ05NdlRWUVhtdUpRQW1OYzVa?=
 =?utf-8?B?ZktueHNQWDhPWWtLUURLM3M4OTE1VG9HdEJxNzZXeU1SSTRTdWhUQWdqNU41?=
 =?utf-8?B?VlRTdTFSUGtCOUFEZWh5K1BpV1QrS1RFMXByMExjL0JSN2d5Y0lwT2dLYkxD?=
 =?utf-8?B?alR3M1FTa3JBZEg0UTYzTjNkeU9jb3Zicnh0NnZiejc0ZE41Wlp6VjQ1cW9v?=
 =?utf-8?B?cVdhWkxzV1h0SkZkZHhKbVpCU3Urb2MyS2VrUEhoK3BxVDhXTW8zQi82dTM3?=
 =?utf-8?B?UmJDUjhtK1lodXVNekQ5TzB5UnJSNzdNd3Z5aW0xcVo0SjVVVE41MFFGcnBh?=
 =?utf-8?B?T2V0Ulp6eVYrQktPWnFIaVZmSDBjbVdBTU5KU2gxNGN0Z0ZhUVNENTc3azNl?=
 =?utf-8?B?eDJIa3ZxdGZYSDl4dW4xeTY3eUJIWk9tZFBlME00RHFZb01pKzRVVFplbW5W?=
 =?utf-8?B?MXQvRXFkRjQ2eWt6a0diRkx1TStQTWpIKzlwNEhWRTM0YlRUSkhDalJIRWxp?=
 =?utf-8?B?Z0MyNXVXTUh2YWNnMkdtTHB6SFlIVTVCOG5rZjgwTWZ2VnF0R2lZQk54b0k5?=
 =?utf-8?B?MFdVY3lkbWZ2Zy94aDBleWFhY0tKTG5hWTQ4a25vaEVXdjFIS1RrNFRvN1NH?=
 =?utf-8?B?cmZSMGdua25OdGFhLzVGbVV3ZVcrUGx6c1N1QXhlQUdjOUFLemt1bm5aU0Iw?=
 =?utf-8?B?ZU5pdUJkMFJMdCtEL1R0bEtFbjFYbWZ0NlpqQ3NWT2IxUUVOeEJ1NlJhMmxS?=
 =?utf-8?B?SmRZVVU2NzV1OHNDSGJxTVRPRjhYem96ZVZFVW14TWc0SjdIL1hxT3FCVzNq?=
 =?utf-8?B?WkVDMFpXem92M2x5RUU4RVF5WUJybUhBN2dHOTM4UmZvbTZsTkdLdzdWKzRT?=
 =?utf-8?B?VUd4ZnRWM3ZBelRjSlBNZnRzR204WnNEYXVsUEczVmNOMVduOVpGbXpSTUt6?=
 =?utf-8?B?blFVcVowTXV4eUlMTFNHeWI5d05FME1ySncwN0x1THZXdEtITzY0TWN0c1FH?=
 =?utf-8?B?TUNDTGttWUJQc3VqVExrTHhBd2pwWXZmbzNzUTA1QkZwaVJvV0VKbG9RSmJN?=
 =?utf-8?B?NlFtNXhmZnZhUFRHWVZuNWplbGE4U3RjamVwWVZsMGtPSk5SRVd5elJGV3FN?=
 =?utf-8?B?VEhZRUtocGpmckp4TG50WWx1NFU1ajExNjZKREtZeGUzNEVvaXFyVDhsaE9N?=
 =?utf-8?B?N01lbHBUcWxkY2ozRVVjRnlIb1RwbkczREVQUHRHT1VZb0Zpb2hKdDBJaWI2?=
 =?utf-8?B?V1RhNjN1OFVSVnd5MjQxcUlVMW5ncC9jdm9Xb1phbzBvZzJjYlY2WG1QMVRV?=
 =?utf-8?B?Y0EzVVpHOGhEdU4rakJBbGwxcXhpMDhTR1ZGTng1RHNkNm1uTFYxUERyYnVj?=
 =?utf-8?B?VU84ZG1YSDVuaTVCQ21PSUdJWUttRG8wNytRT1ZsRTk4YitFdStTU21hUHcv?=
 =?utf-8?B?cHp0RjJQR2trMTJCTFhiZEJlcnJpeFp4R3p5cmF6eUNWMEJNUHRkdzRIbXox?=
 =?utf-8?B?OVJUTEc5Sm9JSVJTaS9LUjM2c01zMHA5eUNmYUg5Y1FFU0Q2MVNHZUpnQUpU?=
 =?utf-8?B?aDVJeXUwSUptWnhJT1RzUnhpSmprL3c2K0RUVFROL0NqNlIySzV6N3pFNVJk?=
 =?utf-8?B?bVd1WW5kTG1CN3ZPOVFINE9KMlJZQU5DbnU1SDQ0TWNjMmhqQTNnMDRwVUNY?=
 =?utf-8?B?UE80SXo1ZUhodzltTUFWd0R2ZlQ5aThvbG4xM2Z4enNOSGh1ZWlpU3RCNTVS?=
 =?utf-8?B?VC80SGVjQ1NURmc4QXo1REl6ek9HYWFVMTBMY005akFLZ2xuN205dzQ3OGQ2?=
 =?utf-8?B?VlkwQVNUVHNpQSswVkhJMDF6YndZRS84WHJjNnp4dFZhR0U3UmlXTnZmU0hL?=
 =?utf-8?B?RjJ5V0Nra0xQZ0QyT0cxdEZGOGZwdUIvcllETm5CTjhRY1NxVW1kV1lIUHZl?=
 =?utf-8?B?MWczclA1NGk0SFB4bloxM2VMU01nOFNQWFU5dVRkQ1MzL05iaEthWVovVnVJ?=
 =?utf-8?B?NExGN0M1V0thRTVOejVjakxSZDVpbUtDaTJRS3MrV0dOQ0xvUDh1ekZxVDNy?=
 =?utf-8?B?ajFPdUlmQnNCbGhCZ1dvaVNJQkM1QlcrOS9RdVhCZmQ3TEdjZktzWm5NcGtj?=
 =?utf-8?B?dmtIK3dMWjFEWUFseGREbGxoVlo1OWRVeERqcmFkbFBuWVJjdXFQOGsxUHRF?=
 =?utf-8?B?L084eHR5T0NvQWpLZ294ZWEwZGpackVOSTNQb1VWNk1UWEkxNFpxOFF0TEpY?=
 =?utf-8?B?RW82N21SRGRQQnBNUHJ1ay9IOTVEbDcybTRHRi9EQXRwU2s3Ny9xKzRHTTYz?=
 =?utf-8?B?Znc1WG1Ga0o3ZStnMlkrSEpBV3RJZW16ajYzRENNUHg4NW55bzZZdz09?=
X-Exchange-RoutingPolicyChecked: Lh0ie9CLToGSPuEuKjx0/bmtj8/98y+NVWwly32KnEyUKroLpVH+qfccLCXE3X4on4n8viNTPg+GsxZ7REbTHXhczzBroX0QIyzxgdUKAIDj+E+Eg9rG/C5OhgTzPz8Yp2VKGOU9/5lRIUiW+WoY/5jeaqtvj2EID06XH/hjAcmtjnilmqhte2YziQ/SLtHpJp/Kp6ro7XgZypg/fbqAGrYmIgcb1vm9bmA5MsomspQgsIQlNuFMo0ghR9f+wvN5tsJp1VcYWucAYWjxP2ii8BkdpoytNV1h60yxkT/uWUOuH04plZEwe7kon/TXKe0HEWl0Z90RKB/OShvAHs9dEQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: fc09baf5-2482-4abd-2582-08deb3e1e056
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5520.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 May 2026 06:59:44.8458 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ze2z9nXqFUTIqtqOhOhrbH03iRTyy+WHIpHavnNX6achU9DpUwUL8dcHKGbB5DAm/e+fBW4KFwQt69Ajuqo2oA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFBC2C58BB4
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779001189; x=1810537189;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9NDcphFoT9K+HmZkpyMmSmFLiUIQyl5XUt9z5OUgpXo=;
 b=L4J3GaJFiVGjdTSjGvFfZNtoXYPZx+pajlK89pr1sILit73VR/toCVfI
 pAkyEpXbuYo8yLHpKrfe1BORp1DakAJsNr4RduRLNNMTguCAFuUyiXVdd
 FDlTwqh//0TzafF0gIsxu2UyI08OL+3Vom6671Ba3BIgVZn8WB/T6EdGM
 PMZLyIphxVnmIerrnW6uACOfNtJ8PRTbfmFUIr1NtXuD0o/sPFbixpevx
 T9lp8CFBKeTJ4Hd94v+Cv2Jz3yi5T/D+6hmIObHnvvLbrw9aG55m9YcCH
 TKvs38FEsaxocAj6yB6oerEkfUCBoTGBPzS4mUlQuI0WNDvOos9TsABeq
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=L4J3GaJF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] e1000e: Avoid DMA
 re-mapping on RX copybreak
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
X-Rspamd-Queue-Id: 07C2B55F950
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:tactii@gmail.com,m:intel-wired-lan@osuosl.org,m:pmenzel@molgen.mpg.de,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[intel.com,gmail.com,osuosl.org];
	FORGED_SENDER(0.00)[michalx.cohen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_COUNT_TWELVE(0.00)[14];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michalx.cohen@intel.com,intel-wired-lan-bounces@osuosl.org];
	HAS_ORG_HEADER(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Action: no action



On 29/04/2026 12:18, Loktionov, Aleksandr wrote:
> 
> 
>> -----Original Message-----
>> From: Matt Vollrath <tactii@gmail.com>
>> Sent: Wednesday, April 29, 2026 3:43 AM
>> To: intel-wired-lan@osuosl.org
>> Cc: Matt Vollrath <tactii@gmail.com>; Loktionov, Aleksandr
>> <aleksandr.loktionov@intel.com>; Paul Menzel <pmenzel@molgen.mpg.de>
>> Subject: [PATCH iwl-next v3] e1000e: Avoid DMA re-mapping on RX
>> copybreak
>>
>> This patch factors out DMA re-mapping for skbs which were recycled in
>> the RX path due to copybreak or errors. There is only one path out of
>> the e1000_clean_rx_irq() loop where the skb is consumed and DMA needs
>> to be re-mapped, so don't unmap it before checking the conditions.
>>
>> The buffer allocation loop is adjusted to not assume that DMA is
>> unmapped, handling mapping errors gracefully.
>>
>> On systems with IOMMU enabled, the cost of re-mapping DMA is greater
>> than the cost of copying data out of the ring buffer. When I use this
>> patch and configure e1000e with copybreak=2048, my system with IOMMU
>> completes RX roughly twice as fast under load.
>>
>> Informal performance comparisons were based on Asus Gryphon Z97 which
>> includes an I218-V and with a Xeon E3-1240 v3 in the socket.
>> ktime_get() measurement was injected into e1000e_poll() wrapping the
>> adapter->clean_rx() call. The total time spent in clean_rx() was
>> divided
>> by work_done to print the average time spent per buffer. iperf3 -R was
>> used to saturate the RX path and awk was used for statistics. Control
>> revision was set to 7.1-rc1 because iwl-next hadn't been updated yet.
>>
>>    rev     | iommu | copybreak | samples | mean (ns) |   stdev
>>    7.1-rc1 |   off |         0 |    4748 |    453.72 |  155.82
>>    7.1-rc1 |   off |      2048 |    4743 |    554.83 |  103.67
>>    7.1-rc1 |    on |         0 |    4751 |   1139.22 |  150.56
>> * 7.1-rc1 |    on |      2048 |    4737 |   1267.02 |  184.62
>>     +patch |   off |         0 |    4739 |    456.30 |  146.33
>>     +patch |   off |      2048 |    4739 |    538.56 |  132.97
>>     +patch |    on |         0 |    4769 |   1165.97 |  140.19
>> *  +patch |    on |      2048 |    4745 |    562.25 |  171.80
>>
>> No surprises here, IOMMU DMA ops are known to be expensive. For most
>> users the kernel default is iommu=on and driver default is
>> copybreak=256, so unless the workload is small packets, some tuning of
>> either knob would be needed to see the full benefit of this change.
>>
>> The kludge of unconditional unmapping has existed since this driver
>> was introduced in 2007[1], inherited from the e1000 driver which has
>> since factored it out[2]. IOMMU tech was new at the time.
>>
>> [1] Commit bc7f75fa9788 ("[E1000E]: New pci-express e1000 driver
>> (currently for ICH9 devices only)") [2] Commit 2b294b18689c ("e1000:
>> perform copybreak ahead of DMA unmap")
>>
>> Assisted-by: Claude:claude-4-7-opus
>> Signed-off-by: Matt Vollrath <tactii@gmail.com>
>> ---
>> v3:
>> * refactor unmapping bypass, use goto instead of redundant branch
>> * remove Aleksandr's sign-off due to logic change
>> * benchmark details
>> * cite historic commits
>> v2:
>> * proofread description with Aleksandr
>> ---
>>   drivers/net/ethernet/intel/e1000e/netdev.c | 32 ++++++++++++++-------
>> -
>>   1 file changed, 21 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c
>> b/drivers/net/ethernet/intel/e1000e/netdev.c
>> index 7ce0cc8ab8f4..62bf85c768d6 100644
>> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
>> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
>> @@ -663,6 +663,8 @@ static void e1000_alloc_rx_buffers(struct
>> e1000_ring *rx_ring,
>>                skb = buffer_info->skb;
>>                if (skb) {
>>                        skb_trim(skb, 0);
>> +                     if (likely(buffer_info->dma))
>> +                             goto write_desc;
>>                        goto map_skb;
>>                }
>>
>> @@ -680,10 +682,12 @@ static void e1000_alloc_rx_buffers(struct
>> e1000_ring *rx_ring,
>>                                                  DMA_FROM_DEVICE);
>>                if (dma_mapping_error(&pdev->dev, buffer_info->dma)) {
>>                        dev_err(&pdev->dev, "Rx DMA map failed\n");
>> +                     buffer_info->dma = 0;
>>                        adapter->rx_dma_failed++;
>>                        break;
>>                }
>>
>> +write_desc:
>>                rx_desc = E1000_RX_DESC_EXT(*rx_ring, i);
>>                rx_desc->read.buffer_addr = cpu_to_le64(buffer_info-
>>> dma);
>>
>> @@ -941,7 +945,6 @@ static bool e1000_clean_rx_irq(struct e1000_ring
>> *rx_ring, int *work_done,
>>                dma_rmb();      /* read descriptor and rx_buffer_info after
>> status DD */
>>
>>                skb = buffer_info->skb;
>> -             buffer_info->skb = NULL;
>>
>>                prefetch(skb->data - NET_IP_ALIGN);
>>
>> @@ -955,9 +958,6 @@ static bool e1000_clean_rx_irq(struct e1000_ring
>> *rx_ring, int *work_done,
>>
>>                cleaned = true;
>>                cleaned_count++;
>> -             dma_unmap_single(&pdev->dev, buffer_info->dma,
>> -                              adapter->rx_buffer_len, DMA_FROM_DEVICE);
>> -             buffer_info->dma = 0;
>>
>>                length = le16_to_cpu(rx_desc->wb.upper.length);
>>
>> @@ -973,8 +973,6 @@ static bool e1000_clean_rx_irq(struct e1000_ring
>> *rx_ring, int *work_done,
>>                if (adapter->flags2 & FLAG2_IS_DISCARDING) {
>>                        /* All receives must fit into a single buffer */
>>                        e_dbg("Receive packet consumed multiple
>> buffers\n");
>> -                     /* recycle */
>> -                     buffer_info->skb = skb;
>>                        if (staterr & E1000_RXD_STAT_EOP)
>>                                adapter->flags2 &= ~FLAG2_IS_DISCARDING;
>>                        goto next_desc;
>> @@ -982,8 +980,6 @@ static bool e1000_clean_rx_irq(struct e1000_ring
>> *rx_ring, int *work_done,
>>
>>                if (unlikely((staterr & E1000_RXDEXT_ERR_FRAME_ERR_MASK)
>> &&
>>                             !(netdev->features & NETIF_F_RXALL))) {
>> -                     /* recycle */
>> -                     buffer_info->skb = skb;
>>                        goto next_desc;
>>                }
>>
>> @@ -1010,19 +1006,33 @@ static bool e1000_clean_rx_irq(struct
>> e1000_ring *rx_ring, int *work_done,
>>                        struct sk_buff *new_skb =
>>                                napi_alloc_skb(&adapter->napi, length);
>>                        if (new_skb) {
>> +                             dma_sync_single_for_cpu(&pdev->dev,
>> +                                                     buffer_info->dma,
>> +                                                     adapter-
>>> rx_buffer_len,
>> +                                                     DMA_FROM_DEVICE);
>>                                skb_copy_to_linear_data_offset(new_skb,
>>                                                               -NET_IP_ALIGN,
>>                                                               (skb->data -
>>                                                                NET_IP_ALIGN),
>>                                                               (length +
>>                                                                NET_IP_ALIGN));
>> -                             /* save the skb in buffer_info as good */
>> -                             buffer_info->skb = skb;
>> +                             dma_sync_single_for_device(&pdev->dev,
>> +                                                        buffer_info->dma,
>> +                                                        adapter-
>>> rx_buffer_len,
>> +                                                        DMA_FROM_DEVICE);
>>                                skb = new_skb;
>> +                             goto copybreak_done;
>>                        }
>>                        /* else just continue with the old one */
>>                }
>> -             /* end copybreak code */
>> +
>> +             buffer_info->skb = NULL;
>> +             dma_unmap_single(&pdev->dev, buffer_info->dma,
>> +                              adapter->rx_buffer_len,
>> +                              DMA_FROM_DEVICE);
>> +             buffer_info->dma = 0;
>> +
>> +copybreak_done:
>>                skb_put(skb, length);
>>
>>                /* Receive Checksum Offload */
>> --
>> 2.43.0
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Tested-By: Michal Cohen <michalx.cohen@intel.com>

