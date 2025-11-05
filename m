Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A727C34E97
	for <lists+intel-wired-lan@lfdr.de>; Wed, 05 Nov 2025 10:41:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C0C4284047;
	Wed,  5 Nov 2025 09:41:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id duFfm4S74VKH; Wed,  5 Nov 2025 09:41:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 22D5684041
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762335709;
	bh=WU0TMAfBg8eZK3Z5ypIKbd8Io2wNZMRZCTG9CIw+Khc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=A+9W9fzvfrIPQO8QLRWoHBgW0AeXNNC9DU62T6K6HExLm2N0y3C+Lh2ippMORVJMw
	 KOI/VtTEVoPfpt8KNJaAUjH/kLm7bR/fISBXNDG7xF7Ym6j/5eQWS7LsHK/3iipMHh
	 atfGDN0Y0bMVBNg8RnRa4UnzTeMmex/iT0sArgQy6DgZyLFGIw+gDRDy1C5/ZQAwsZ
	 3oiOJdUMAm4LwLo7TThbHa65Meg0Ka3iPMIEoYG+ISL2q65DvVqfeAzN2BQkJUxib9
	 cd/IJwRsR6nF7LU+aegQj9TeoUEQzCFD9sk1CQBNth9k/rAW8yRad+VMTIM/7Q0cmt
	 Wht0j9CNjEOZg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22D5684041;
	Wed,  5 Nov 2025 09:41:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C87F04C6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 09:41:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B9904611D5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 09:41:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jRiB_1ezkng5 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Nov 2025 09:41:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E9B7F60BDA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E9B7F60BDA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E9B7F60BDA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 09:41:45 +0000 (UTC)
X-CSE-ConnectionGUID: 6ZavmjHQSEeRIPfTI50Kug==
X-CSE-MsgGUID: EHPK5kx6RVmb0tKCLj4wpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="67061208"
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="67061208"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 01:41:45 -0800
X-CSE-ConnectionGUID: fbfM/sHQQCyCrRDibq0a0w==
X-CSE-MsgGUID: uHNDB8wUSjmU2B6XXh3IlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="187569504"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 01:41:45 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 01:41:44 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 5 Nov 2025 01:41:44 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.39) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 01:41:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VSumfsk4152uHsuVr4k4SFJjzGYnAuFvNvBtRlYoOYosrv2mp2J58CkDZjhlKczYfYUPzlkxtChyqInSXwY79OCdyemmfoVdXHr0ajVWeFNCaPAb46j4IoG5Ws4pa1qWHCYECI5gbr8/kYAstvFCEksaf5fwtZvLbX/bG4aWs5rrOtXV0d439tTcRO84THoaPoaPTuVmXiIj+3tUwTTyHAC1CrGFF8WaTS+BwVojBNJydYwh4KiURWyz8efrFkjwnOW1CubHgSZ3OuzYyFkVjo6Hv5wblVZ4+eq1vxFj68D0cpUnea3oR2ABKfu1X8/fIWDCE9scurxfl6wWYQYphg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WU0TMAfBg8eZK3Z5ypIKbd8Io2wNZMRZCTG9CIw+Khc=;
 b=e7UPROSbIvi3sPgaxy3bC4xvpiJlu7aZPLOMCSlmzhazIzDnmrSYyoG+BBCdgYXKR9uZZdrOgVL/TT3tHpjPoI2WmtiFNd2PqC4Nmkv7PKjTPd6zdWUMZK+YKqNmZXvV2bU21/tyJf8sWz2gxOfE/FGFN2HbuWTXDu+LaDqhgOWE92NaN3xDNUuFBtuOytUqy6AI/LluJmIeHbCKX4TgLihUSnysvFF4K0wlCUXWPKShoEW+4Cjeh9eJcKf5dcP6NbF2/RxMBLcOhpPEXvvIK7dpfqf8Zk9beeER5l1boyI9LHHVTmLcGmGdrlRBRBQmdu8vvKJ1wI2lrp69HEnA+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SJ2PR11MB8515.namprd11.prod.outlook.com (2603:10b6:a03:568::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Wed, 5 Nov
 2025 09:41:37 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9298.006; Wed, 5 Nov 2025
 09:41:37 +0000
Message-ID: <a59e78c0-f3fa-43a7-b34c-d7a85291b587@intel.com>
Date: Wed, 5 Nov 2025 10:41:31 +0100
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, ALOK TIWARI
 <alok.a.tiwari@oracle.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "alok.a.tiwarilinux@gmail.com" <alok.a.tiwarilinux@gmail.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, "edumazet@google.com"
 <edumazet@google.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "horms@kernel.org" <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
References: <20251104150849.532195-1-alok.a.tiwari@oracle.com>
 <IA3PR11MB8986153AC57FBE801247FD50E5C5A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <9e736c4a-bafa-44e6-9152-3a9de078ee4c@oracle.com>
 <IA3PR11MB8986C6192990882A8B0C7C99E5C5A@IA3PR11MB8986.namprd11.prod.outlook.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <IA3PR11MB8986C6192990882A8B0C7C99E5C5A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DUZPR01CA0177.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b3::26) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SJ2PR11MB8515:EE_
X-MS-Office365-Filtering-Correlation-Id: d6fc11e7-8509-4fbd-9849-08de1c4f83a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eFdEZ2VwN0E2Zkd1bHlMWnE2cFNySS82b0U4VTlzNVp1TFJzQk9ETEg3YXFK?=
 =?utf-8?B?bWJVWllrTE9WVVh5WWI1ZGhWZGxuME84K1BtTnVIajI2UHRqTHU4d2xxRjhm?=
 =?utf-8?B?SWZQb0lTMG5kSHVMTmw3VFVYK1MxUlFWN3dmNVpzL3VycnIvMTlwWGFvUCtl?=
 =?utf-8?B?RkZlWDlKblExOTQ0RUZ6YThXdDlJUkY1eDhVZnVxZTJiUk5HbTR3SHUyVjZq?=
 =?utf-8?B?amozUmw1MU9KcFNLcWFEbGNTQWt3bnZiUUxkb0ZETGVGQlNtQmJQRU95TDln?=
 =?utf-8?B?NUxlUVN6UDB4R3NpRlJZeFFYZjVGQlc1V1BMNmhsSkNCOXlad2FoVTVpOTFa?=
 =?utf-8?B?L3FaK3d6dGVZRDVsZmNrend1SWxVK3draDZyUVpWeXhoaFI0YURmZFRMSmh5?=
 =?utf-8?B?UnhzZEY4aFFnQ3BHaDA3U2ZsZnlhZ3J0bDU3MlljUGRqY2Q2aEQyaHZLWjVK?=
 =?utf-8?B?citiOGdvNktMamswUytkUWJqMzh0RnI2aWpHQ3pEalZEWDJRUFgwYnRXN0dv?=
 =?utf-8?B?Y2RDY004aUkvSGs3YktWTEViOFhFcWg1YjFJcjl2U1BReS9BV0xWaTJsNlBQ?=
 =?utf-8?B?Q1JweWpPUllscFAwL2I0M21IQ2NXdyt2K05hMWNxQ0Jyc3E4bENwcHpqWFhR?=
 =?utf-8?B?VUFIZnBib2pTUmxqT2p0ck5GbWNnWE1FYWFrSXBZbzRHQU9CS0FsaEtIZW96?=
 =?utf-8?B?aFVKT25rbmVZRFhSSW53ZU5SZTcxV1J0eno0MHZuMGYvUFV0WkZHeDltSmJC?=
 =?utf-8?B?Z2VmODlCVTkvTEFqejBSa3ZoUWlTQVVXSWF1YzY3akx4Z1V1QlM2bXF3NXZh?=
 =?utf-8?B?YjFqQkpHdmlza25EcVcrNC9WQVNIVnJ6Sks4c3NHYmJXNXN3bkJUc1pmNTkr?=
 =?utf-8?B?OFhEWEE2bCtMd3piL3IzNW5pUTZ5eXBmcEtwWXZGMUc4ZzNQRGJlRVRqck9w?=
 =?utf-8?B?cXB2VnRLUERXZ2diOGp2N2x1TVhvQjRkZ3JTblAzc1JhaXNLeWk2WE5FS2ZJ?=
 =?utf-8?B?WEFVbnQ1VTZyVHZDayt3UGk3RjBYemVTM3Zzb0s4OUFCcVZKL1ppN05jVXpO?=
 =?utf-8?B?K21ORDVKMjhyVTIvQmtGdGFvVmZZZWhOSnhTL0dOdTRKR2dJQWtzWUVhYXMr?=
 =?utf-8?B?bzdQa2xzRTdBc0tKa3dyQ2ZiRUdXUmV5QXEwSURvVWo3NytDMUZGOHZ1Y1B3?=
 =?utf-8?B?NFVSK3dac3ZUeExoaDBHSXhwbGpjckFZNk9sYVhmT2xtNzl6N2pjQXphb1RP?=
 =?utf-8?B?UFJqRjFoSUJ6ZXNGOXJ3WUFKK1N3aGZkQWw1YjY0NHRtT1c3aXg5MHRFSHZ1?=
 =?utf-8?B?TVpWMXo3VjBCTTRUZ2VtOUo1YWIyOXcrdDBLWFJJZHpucUU0ejVZUUdZdEUz?=
 =?utf-8?B?c0J5QStWUE14THRFNFgyS0R1RTNDQ2YrV0p0dTc3MUVQaWlobjZzaG9rL2FJ?=
 =?utf-8?B?clhpajlmOG9Za1NHVU5jd3A2Z2VmT2xPa3hHZW9VYnpLMDh1UUNRaVhFMnRl?=
 =?utf-8?B?VnNwWUczcmFOdGZud0VHM2RDRGc0SGNyTFcwL2tncmQ3V3hVWC9wU3FTdEN2?=
 =?utf-8?B?YUxVcGxwSnFtTm4vSDF0NnZZV2ZKbmZjWnFvSWppQksrcEovMzRWRG5ON0N6?=
 =?utf-8?B?OWdrNVhHeHRWOE9CV09OUnZqU053YVZGNVl0ek8zWmh2bnlHQ0VTTnhYeWli?=
 =?utf-8?B?TzJPdjRheFdsc2pPOGNBK3paalNtenFKNmJmN0xnTzZRVTJYeE1MdklEVk9S?=
 =?utf-8?B?bXRycHJZNjAvTTRqZlFVSlFUMjNXdXMxSUdrYmp1ZDJ4cWtVN2pEZmlidTNn?=
 =?utf-8?B?ZG4yNUNmQzVpQkxDRVVGcy9wTDVCanZlS1NzYkxoSkxJV1ByMEtuL3MySGhk?=
 =?utf-8?B?VWRQTTNMWVhmQ0tuM2w3VXI1aEgwWFJ2YngyaWsveDBEcnRJeG9KTDhEUGtn?=
 =?utf-8?Q?bBjUdMoU5oEG1zLwq1yExUDz151FmuBo?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MmFEYzdWQXJDdGFaQ3FMbXpkZzg1RUFOQTA3dDdKRXpiOEZ4clVOTFd3b3dp?=
 =?utf-8?B?U3BGQnBVbzdOZXo4T252NTVDSlZUWHBBSlRJekZSdWxIY2dZekZSNkIySTlV?=
 =?utf-8?B?RWoyM29nenFmb3NJUUJpM0Q0VXBGMTZDK2p5dklqSVd5RHJkTGdIcmQ2cGNt?=
 =?utf-8?B?eHRHa2hySXBtdGRZMjQ2VTY5b0dSaUdYVGF5Q0loVTE2cjZKSVVSNlJ2UDA3?=
 =?utf-8?B?aTMzZlFVMlpDbHJpbEQ0QXE1cm50RzZZcVMxUmN2eVAxNDFKa2tRcWR1NTdl?=
 =?utf-8?B?L0tGMEpuZUJLaG16RHptTUhLeEJpS3ZkZ3FJUFJHUVBBMXJyUTIxV09XRU5T?=
 =?utf-8?B?cm1zci9PRUxzYzdBNmtzMmV1NXZDbzBFNFQ4cGxRRjVuZG1zVmtZdndwdERJ?=
 =?utf-8?B?TlRMaENKUXc0K0RSdzIxVFd6Nnl3Qkdvei9odktPNERzYVdMVWdlZUNJcjcr?=
 =?utf-8?B?T3FXM0xXZDhYN2FYWHhmOStIL3Z1dzA5UE9EZnJGSDJsa3d6MXVGNTUwSE9I?=
 =?utf-8?B?RndObTFBU25oWkZDWXZwdVdzU0xESkVheVBiK21zOXFab3dDdmR4OWFPZHJy?=
 =?utf-8?B?akUwUUl6VDdPRmlDUnBxZXRXU1FxRDVRY2dhbUNmdm9SN05hazhzMkNZTzJD?=
 =?utf-8?B?dUZzWWg0VHBkT2pUblNCZEQwRXBUcTRyQzR3dUtZTzJ4Mzg0ZkpPa2syVXZo?=
 =?utf-8?B?R3R1TVY3UENLbkJaQ1ZWL3Z3R052cDhrMkNIM1N4Y3IyK3dIK0U1dnUrZUtJ?=
 =?utf-8?B?aW4yZFQ0bU0ybTM5YmRsbGE5SHZjbXZJTm9IMXVRN1NkSEtaVHZMYTJOYjI2?=
 =?utf-8?B?VkVZT1dlclh4RDZBdENTY1JXclN5aFo1Y2NBSEVnUEFGaXo4aUFxc0g1OFJI?=
 =?utf-8?B?MXpFSjVkc0xlemliVXd5ZTJGNGEwc2VXQ25qcFBGcllnMkRCRGdoUVhYNnk5?=
 =?utf-8?B?UjBMcjVDdTQ1ZU5qSXNOZmJrSURWZStYSnN6ckk1OWVDUzFUMzhzdkVTSGtm?=
 =?utf-8?B?ME52bkExcmFOVmhjQVROb1JaV1pGNURGaERWRkw5SVJaSFJNRHk3SVV2VERZ?=
 =?utf-8?B?RnpYdUNZZThTcmxsV1AvWjNlMEl2Nm1JbnpNbUdRb0QrS3JaTVhBdGo3V0R0?=
 =?utf-8?B?YTRQaURaMVRMY1g1THFhNkF5K2NWbW9JWERMYVMvSHROQVU0VU1vcUFLZ085?=
 =?utf-8?B?NnFQTmVBeWdzM0t0WW9RczFYWlAvWU1sVjMxTGhncUFDZitjMElKUUowSWpQ?=
 =?utf-8?B?aDl0T0J2MzFnNHYrY2k5NGJqSStNOUZibDVueEh2dGgvaFdYZ0VpZnNHb1kr?=
 =?utf-8?B?TWh3bFFFb3lSc2ZtQlZtSUc2WlkvcjRoODFwS3NNRm9tT3ZNSlVKU3lBdVdF?=
 =?utf-8?B?QnNWZGh6M2NZZ096VDhndndHWVVRWHdvWEY5VzJpYktMMjNyRGhlcVJhdGZC?=
 =?utf-8?B?Qk8wNFRERkZPY3BPZUY4bEZoaStaYjBxR0VtcGlLRTdDbVNyMVlhOGNWQU5C?=
 =?utf-8?B?cjVEY1hPQnNtZzhyVHl5ZmxNdjRjTmhwUVZkNnVCcGh4WjhLYzNiamJZQklC?=
 =?utf-8?B?bXJGZjNJWlNVSGZJWUpwK3VjVGVDTnlIRyt5eDBKc0NOeXl6YXlNeFFDWkdC?=
 =?utf-8?B?dS9qRjdTYmFtMDA0djFmczZRTUROUFMxZWpOcU9ySENiU2tBZTFvci96NGR1?=
 =?utf-8?B?MlZCeEZYa2JnMy9lOHEvOTlKemJNRzFmV2tJcU0wei92WHFST3pwMUhTVE9Y?=
 =?utf-8?B?T1dXam9jaVlmU1pOZ0VJQmhJZlVDbUVETUl2eVBVTjkzZXhSZ2lMVXlORndS?=
 =?utf-8?B?SktIMlFyd3dvdzRTeUlwNStBakg5b01NRFd2eGlxbEZ0U0JCa0JSZkdDQ1p4?=
 =?utf-8?B?UVJnazJOeXdOMlFSTVhXcTZnUjNEeFZOeTJLUTY2aTZrN004OEdZUUFETmFB?=
 =?utf-8?B?VWVWUDl5aVUvMkg2VWVLZzQ5UVliR0RwdXNyS3RWWm5zVURmUFg1Qi8zZlZm?=
 =?utf-8?B?VjJuYnU5Z1d2ejd6SkxaVkFJUXRVaktiWEIzUXEzTGs0VkNzQWZseVZEYmxu?=
 =?utf-8?B?MlFENmJrWDJjZ1hDblhocXFWQ1poMUFiNU1ZcEpYMlFpejVtOEVWUEk1RzV5?=
 =?utf-8?B?Q0VrZnBZaXdVTUM2a3hXZkwzbnRmU3JHNG14U3hnQ2RuQUlVUWdzY04wOFpq?=
 =?utf-8?B?Z2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d6fc11e7-8509-4fbd-9849-08de1c4f83a0
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 09:41:37.0715 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G7YisQnKLBEHfGsYtO0ZloGP2cnBF5S3pRqlpp7Uodjo9Poe+4CHBz/IASaotAAfswzMMF7hGSU/FQERE5eL1sOq002bw+N4S5HTMympQ5Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8515
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762335706; x=1793871706;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=d73q+SoU92WS05iEEgWdFqC4c4M8U6re7Ubd4OlMcAk=;
 b=k5QXrwP/aA+1SChxI601jWv1KEkJKllOhajhXcZpu8AFnTSrctNXCKgj
 UBAI0dFn/2fMtV+UdhdUHQ7P2A1CDm2IOpWh9WACokU26xcrYR11sFhQY
 7LIl+naVsuw6MC9VLUrIzrNN8uCQQoXTm4I/BVfaY0XvmYQvEcJaZgCJP
 zSNmejOLtWubY3c0Zwpe+0gGoNIWafQYRS7Ude6OCyG7azBv82Ok2rBz2
 +PYVOlwokEIfHoIKbd2kV702QPVuTYzpCMt0fD/pbQyvi1Uq7TF2twXef
 ujhx7ASRQFB+Fj5/waNrMMirJtvtIUuDTs7wK7nFUsAV6Lq8jOd2ddsNw
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=k5QXrwP/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [External] : RE: [PATCH net-next v2] iavf:
 clarify VLAN add/delete log messages and lower log level
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


>>>> - Rephrase the message to: "[vvfl|vvfl_v2] Too many VLAN
>> [add|delete]
>>>>     requests; splitting into multiple messages to PF".
>>>>
>>>> Suggested-by: Przemek Kitszel<przemyslaw.kitszel@intel.com>
>>>> Signed-off-by: Alok Tiwari<alok.a.tiwari@oracle.com>
>>>> Reviewed-by: Przemek Kitszel<przemyslaw.kitszel@intel.com>
>>>> ---
>>>> v1 -> v2
>>>> remove "\n" b/w message
>>>> added vvfl and vvfl_v2 prefix
>>> Why vvfl and vvfl_v2 prefix? For me 'virtchnl:'  'virtchnl v2:'
>> looks more clear.
>>> Can you explain?
>>
>> I am trying to follow the code path, as vvfl refers to the virtchnl
>> VLAN filter list. It’s just a way to segregate the logic between the
>> if/else conditions.
>> Either 'virtchnl:' or 'virtchnl v2:' also sound good to me.
>>
>> Happy to go with whichever you prefer.
>>
> There is only single mention of vvfl recently (just 4years) and only in iavf driver.
> virtchnl exist for decade or so:
> 
> linux/drivers/net$ grep -rn vvfl | wc -l
> 43
> linux/drivers/net$ grep -rn virtchnl | wc -l
> 1240
> 
> Please use more common historical prefix.
> 
> Thank you
but keep in mind that "virtchnl v2" is a completely different thing
introduced by idpf

here we are really talking about more and more subtle things
I would just say:
Too many VLAN add (v1) requests; splitting into multiple messages to PF
and similar for other cases

I hope that this will make everyone happy
(feel free to keep my tags)
