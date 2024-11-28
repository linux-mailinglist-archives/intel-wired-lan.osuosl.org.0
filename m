Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 687739DBAF4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Nov 2024 16:58:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C6FA6147B;
	Thu, 28 Nov 2024 15:58:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d2YSIrZFA-z4; Thu, 28 Nov 2024 15:58:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 80B3170580
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732809530;
	bh=Y/WVjXsMGalVg2gMC8bAD9GZXoBhEBWhCAgMcXvea08=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=X2rS3hwzB3vlzFiaLkCRFwM7zZLbVTK43ALIo11skimkuUgB1UxmVEWORNS74UZ8A
	 ieDs7ZIygYFvEGAiF4NdJHzHRaP50YTfG8qVpS/BU8OomT3fFWV1smWTFkU7O/SVvz
	 mdAbSL4lj2xtgrfsn5qusJflEIH6N4IMqjOtbuZi+03STnDcbMCukzlXoK9I8pZ/Z9
	 0empJ5lWjXwJrpAkmL7QxoQEI9/FiX+efH2Mgez9dWa0K3dj/IDV3m0Z2UWq/GYbsV
	 Ail4yVOxiYqpsiPP0Q+mN9jAH6mBGCCmD4QAohxXxAfX1zyfKRj36xBLti/xJpdjy2
	 lwnnK3zVhQSsw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 80B3170580;
	Thu, 28 Nov 2024 15:58:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 33B9EA6A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Nov 2024 15:58:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 20722857C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Nov 2024 15:58:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rtUJzjgaVFkb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Nov 2024 15:58:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1E23F857BF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E23F857BF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1E23F857BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Nov 2024 15:58:47 +0000 (UTC)
X-CSE-ConnectionGUID: bhmp2no3RsS6CdRpVUE9qA==
X-CSE-MsgGUID: 9y7rJIiiRJuReXOQ5lHSFg==
X-IronPort-AV: E=McAfee;i="6700,10204,11270"; a="44425411"
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="44425411"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 07:58:44 -0800
X-CSE-ConnectionGUID: GkbXPSL+TOSiUA6rAmhxIQ==
X-CSE-MsgGUID: hFyidlAzQk6E0bjnJrtovQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="92656212"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Nov 2024 07:58:45 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 28 Nov 2024 07:58:44 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 28 Nov 2024 07:58:44 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 28 Nov 2024 07:58:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CCpOJ7wci0R2BwmVrLHv7t5wqzsTrzqWvQNYz6syr2cVXm4RxwDyhRdDtUounz7Pvy7Eq+QBE1nD44Y/r1sPkQ4+p1hmTjnhDCSJAQYZ1F2roEJfy88xa9vq7gnfn/xkpZ0/6ESG1GayoZD6N4Z2IJ+65lYNMiZ7DcxLo5PW8CD1oXeYWpfec70NJ94j794RpIfKJyIKtQStQJLDxnVxJ+fBOFu/Tdv7BIDLE2CsoP6K0tZaZ7yvqh4BacprlJQb9+dCd3DqQ5CB9UnkKFJvNQ/shiZtvyckcYWdn/oZbQisH2cLxlYBnHHwwy8sQUtVColu4WgjUoxwHMTNXxcuTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y/WVjXsMGalVg2gMC8bAD9GZXoBhEBWhCAgMcXvea08=;
 b=xJVnuG4kqFrOd3wpfxW2hiY5l7f6h83kqRbd+0rWYnNoNQruVaKa72tjdrMhC52dtuaj8OOw5QySF0x+h3lB5LZTy5qOIP2A0lUZL0eLOnPN8GfJCGF04H1Uk1mkemO7eEV4MWiQ5N1XqDzxPb/iSDJod6ufABdk2Xi6lONpMU2yho8mDJPWma29LRIwPtTPIKuhY5BPUfwH2gTUjKXHnya8fiycIM2g+F5IBb2XovcHbMrgUvyoDfgCo7tbcPpYRLfYbuhxPANqAYxH7ATdCCukSs9LnBG5nxaDNjcRxahqXzKkzl9lzPEuyUSRqZSZTGMI5WSgQfZqrRMfXPD2FA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SA3PR11MB7610.namprd11.prod.outlook.com (2603:10b6:806:31d::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.12; Thu, 28 Nov
 2024 15:58:41 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%4]) with mapi id 15.20.8207.010; Thu, 28 Nov 2024
 15:58:41 +0000
Message-ID: <6cca6089-ed72-407a-8f23-70bb67b42e63@intel.com>
Date: Thu, 28 Nov 2024 16:58:37 +0100
User-Agent: Mozilla Thunderbird
To: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>, Richard Cochran
 <richardcochran@gmail.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Andrew Lunn <andrew@lunn.ch>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Olech, Milena" <milena.olech@intel.com>, Vladimir Oltean <olteanv@gmail.com>
References: <20241126102311.344972-1-przemyslaw.korba@intel.com>
 <946b6621-fd35-46b9-84ee-37de14195610@lunn.ch>
 <PH0PR11MB4904824FA658713F78CA404D94282@PH0PR11MB4904.namprd11.prod.outlook.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <PH0PR11MB4904824FA658713F78CA404D94282@PH0PR11MB4904.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA0P291CA0001.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::27) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SA3PR11MB7610:EE_
X-MS-Office365-Filtering-Correlation-Id: 30a2099f-7d8c-4820-d0ee-08dd0fc587af
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?b3NmcFQrUmxxQWpOUm55WjdjejRFcFpvWjJVVWt5ekprOGdRK0FZS2hLb2Mr?=
 =?utf-8?B?bWRCTm9OWFhFNE9kZGpzN3EyNzFBcjZkUi9pd3JheFl3UlhYMXlabkRVVGNP?=
 =?utf-8?B?cTlucTlXSWJ6VldmTTVqRnltNFdJaFlmVmpKVXc0WW1Ha0hnak13UjFreUYx?=
 =?utf-8?B?bTBsK3ozYWNxNDZiQUp4cldsdkRyRUdIZnNtLzU1Wlk2eGkzY29OVTF4MVNI?=
 =?utf-8?B?bDl1d3NZZWd2cWUzVXE0S3Z4YytOODJMakFjYzFDdmhKbXZkSElSSHRGN25v?=
 =?utf-8?B?L0ZOeWpqR0t4ZjUybjR6ZklZa2VLVnhjOHM1YWVKbGhtZ25pNXJxeTJ0UlZl?=
 =?utf-8?B?b1BiQ1QwUUplMTJVUlRUQjd2U1U1b05WVUF3ZWdRMnR0MHZYQlp4UHZtU2VY?=
 =?utf-8?B?UmtUeitLZ29DdTBjcE9xaFBCNUFYelFCeG5DMGhJSU02ZGlYMEpIWEF1c1kw?=
 =?utf-8?B?SmEzN2hJZXpIZ0NQa0E5V3hpUWFmNjNBbzhHQ3E3VHJrYzZPWTd3a3Y1MmFJ?=
 =?utf-8?B?NUk3MG9ldGN2YkhmTEMveEEvbUMyUXM3ZDBiK21IdTlMWnF3TjNHK2hSN21m?=
 =?utf-8?B?MCtNRjNDUXFZa0l5ZWZaK2x3YkdGUHQzS290ejMwMzhCKzljSkVFeVQ0dDVJ?=
 =?utf-8?B?Z2FVNXRKeHI2QjlzSThLNDBmbEpqcEppOUYrd0JpVWhpV3U1NHNDVDdyS0ZL?=
 =?utf-8?B?aTZHaEF2ZXprMjlMZlNNU1FTWWhwZzExQXJmaG5HNjY1YVNMSFV1UUQ2ZG1R?=
 =?utf-8?B?Mmo2b1BteDFZd1VIelQvOU9yZnpYTFRTSlNLdUVDazVyRWprc2pKS2VheEtu?=
 =?utf-8?B?SUFDU2pjbzlyMnU4VWdhZG1UTENXSm9qN3V6aXEva3RFRk40VHg4dDRIb1cr?=
 =?utf-8?B?Wi9RVDZMejJHckcwMU95QndVV3FHQnVHWGtBRVhuSWpQbnhJTnJyWEgzb0tt?=
 =?utf-8?B?a1REbHFlVXdST20rOW16MjlZZ2lzNkRBQm1veXB0RzFzQUwwREJNb3ZNQUxY?=
 =?utf-8?B?MzByTWNFUTNLajJGMmFQNURPR1dlYzhyK1JEeTNjRlROb3ZmRUpxY1JpZFZW?=
 =?utf-8?B?K2loTWR6aFF4ZkZLV3owVGRYYTdGaTBGc3E1blZoeUREdzZZZW13MzZqaEpm?=
 =?utf-8?B?L0U3eDVzK3JTTnZuR01kSHB1RUoxNDVmc0g3VkdEUlFBNS9ZYnNidWVWQ29H?=
 =?utf-8?B?MDFjUDlUMUpxN29WZXZXbU5xbFlaajlaR1B4dVV4V2tFc3ByM1FPQkwyY09i?=
 =?utf-8?B?aEszdDB5UERiOUtMaTdwVVRCM3JyOWZOQ05QUk8xbEdXY1dHdmJpWHJ3MlRa?=
 =?utf-8?B?U3hiY00xbnRYaFhDRmlUTkF4Umo0dDI2QTFDY2pZbkJiQ1RkWEw5S2tlbnNy?=
 =?utf-8?B?b2VpNEc2bFBkQnVKQU9LUG5pb21ZdFA1VVlZZS9ndGFycXNaMll6UmRrVUdJ?=
 =?utf-8?B?VVBlR2tMejhYUGw0Nkp6ZUVjWUpYOWwvcHFCUDFHMytDZ09wMkFHdkVCamQz?=
 =?utf-8?B?Sm4wdC9oRmI3Wm9CbmhNUk9yTWhaWTNGd1RXY2R1bFpFQm1nZzM1NUN5ckNG?=
 =?utf-8?B?cVJ0aGhPWWsvbm9GZVpyd1p6RUFvKzFLaTBKMXhxaTNqWVpnSm5rTFh2a0JE?=
 =?utf-8?B?MUNVSDh6cDdKWE9MNTJiTDkzY0lnNGNWYWVVWDI2V0xqMTh5ZzFQNDF5RW03?=
 =?utf-8?B?V1V6MndQajZvUlZ6RWhEMDQvNkxtNjlLb2krM0hKS1A4anByOTJkYzJ3dlJY?=
 =?utf-8?B?L001VkR1RnlqYzRmRWl0azVvOGs5VmV1aDlRZWJoMGxpRlZJM282STFVNnNB?=
 =?utf-8?B?S3FpeklIMm8rcmkvdy9HUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZlFBcGFvMmxVRlFwT1c2cFFjQi94TzNEWU94NXZqbTVwdmZTdUdrRXZsK012?=
 =?utf-8?B?L283VWtqK1RJbmhaUEZ3NkpCTGlPekZSZFpXbkNlTFdJU2FmR0QvclJtbGsr?=
 =?utf-8?B?SmhHeWg2TmF2U3liSW9sRHBTOFlSVUl0U09ENHp1WVdHUlV4bmZnYkpTdkxM?=
 =?utf-8?B?S0duVDNkaC9ybDJaT0F5NDJYYlRPTnJ3bTNvZ1d4bU40MFArYzQvd2h4OTZR?=
 =?utf-8?B?TWEwRnN4OFhzYkZFK2liQjJjRXc5c01XalluYXpML3A0REVHM21JN0N5VU5S?=
 =?utf-8?B?bHM4am5FNEtyYXFlZVRHbTg0Mjd1b2kxSnQ3UzZiUDRDVVlOVzdBN1RBMkta?=
 =?utf-8?B?MnNROFVmWm5FaGQ1MFVtc0lwZ0JGNXE2VUpQRGdSak9VcFFET1czS3FDM3BM?=
 =?utf-8?B?Z01WZ3VXWDBtclhRMGpaTitOVU5hYUk1SENEeWpZVitTVkRkUFNseDhxTWs2?=
 =?utf-8?B?Z04zMGU4L1FZd3hGajEwMkxrTit0R1RtQVZPTU9xSWpXMUZucXUvZDNZK1hs?=
 =?utf-8?B?bGsxeFFPYUsyV0FoRzlEbDhsSjN6d2lLUUkzYy9peHAzeWs2bVJRT0FsQjJm?=
 =?utf-8?B?TmJxNHluNElISDQvVEVOTkgwU25QZEZrWk1UemJVQXl0TXF4Z1hkZU1nQm1G?=
 =?utf-8?B?OTFXRUZiZE8xa1RZeHpwK3JScjhPd2hZbXdFS29yZ2dLb0hJa082YWtnSlBx?=
 =?utf-8?B?VjBLWERLOEYxYkJEYXlvUEFWR3Z6ZHpHazFSaExGN0RHWmF2aVFpdWxKMVh0?=
 =?utf-8?B?RjMrYnR5TnlvT1FOaUZhQlcrSS9qdjZhNnhhQk1QaGJBd1cwYSsvd3pJNk85?=
 =?utf-8?B?NDJzVDJVbkdCWCtSRTNLYWVMdGwwOGNIYVJyVmVxaHgrbExkOGtxR01IaHJW?=
 =?utf-8?B?NDZUL2VnV2xQblVNUFJ5NkxHYXp2Wit5cEJqdTFUNVB2QXlGN1h5YW9HRGM0?=
 =?utf-8?B?YS9oenVUL0FsNzh2NjJNZjlSYW0yMk9vTDhqaWYrcXAwckw0MGVEOUgxQ3hR?=
 =?utf-8?B?SzRBd0dFeXkvTzJ2TFBJbWZiTGdCWnh0eHozMlhWQzlEQWwzMThOVE1hYVJl?=
 =?utf-8?B?MXF2MzM2TjNraE13N2s1d3RTOUVDdW03TlBZM1V3bnJrVDVCdUdhYzI5UTFi?=
 =?utf-8?B?Yzc2Q0RjdkNPUjdDWVJDUkRTVzlGRnVMWnQrc0h3V2ZQT1JPR2o5RCtEQ1pj?=
 =?utf-8?B?NmlNWnVYQm1rcjlYSWhoQ3FnTUpKaDFyWjlBajRxSmZOSG1NT1ViRjdqUW9m?=
 =?utf-8?B?ZkNNbnFzL2FiNXBPUUJYN2tha3VBTU54RXZrT0xOSXZvbFliVVkxcnlXT2da?=
 =?utf-8?B?TDVYTFNsaTJOZ1FXUmpkVU5YS3JDMjNsRGxkUW1zK3drRXRocjZvWkx0MlNB?=
 =?utf-8?B?YnkyN1UwQnBEK280NTFDaDlRMnJWN09RUWVJTkxZdHUzZHRZdURZN2V0WW5K?=
 =?utf-8?B?MytyUnZNZ2hFTlZmeml3djdlWVZoMkFmTmZ5VkEzL09Jc3NjYStZZWtIUEFE?=
 =?utf-8?B?Z3d4d2k3bVhMQWhnaFhncGJVTmtSYk52ZmJUT0tBSVMvMTlCODZ5NHM1S0JP?=
 =?utf-8?B?eExvaTYzQjNTL1NSdUNxbEZ6Y3lQRnhJRWtRZ3VlWFRyQXFvWjFzUlhPMWNu?=
 =?utf-8?B?WHZQeENGaWNmWnVwTGxWRXg0SUhpZDZTU2NML3ZXSno3WW9yMnI1a1dxMlBG?=
 =?utf-8?B?UC9pQm5iSnI3QThhYWt0UE0veG5ldWlHaUJ6ZEdSTWJMaGZSMDVWNjhpR3ky?=
 =?utf-8?B?VmxVZVhRSDF1NlZzdVQxckhBbE9aMUM5anZ5Q1lhbU1DWnAvcWRJdGdBQjhj?=
 =?utf-8?B?OFJTNWczbENHaTJOemVFSVR6YWZrVGxtakY2TDR2Smt0Q3dKTi9ON3A4UEk4?=
 =?utf-8?B?UWxxUFllN3orbnZYRVdqeFlHTktLbVRjUEFraVo4NFRGaGgvNDgyOXo4UEFX?=
 =?utf-8?B?UVp4OWNoMWRlTXJRQjYvL0NEdXk0WUlvbUNpWUpnWjdhS3k1ZDBSeGNYaHEr?=
 =?utf-8?B?UjE5TUQ5ay9oSWk2V0hZSFV1UEdXVEhsd1NPeElSaTkydFN2N2JxZmFOL2px?=
 =?utf-8?B?WXpjam1yMlFHbktNZVNNb3hXbkprNmRYdWV5eTVmVy8xMHNucHFiS1NIV29q?=
 =?utf-8?B?VHRhQkNQd2I3OGxwMGE2RGJJTnAzbGlYZlVndzRqaUFrdUVlUlViQUs0K0hi?=
 =?utf-8?B?SXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 30a2099f-7d8c-4820-d0ee-08dd0fc587af
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2024 15:58:41.7038 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: znilCI8m3sCKFzEg+lklWUt+nKYVb28AXhqKRuuUS6Tqtf0OqplhktG5uVoNMAhwza1/AlxoLbSHu/t46a2RjLAinCzow+FfkZaDtH6LKwI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7610
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732809528; x=1764345528;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B8ME3cNkMfW4WN5ZMJaShjY+2dtPEaetnsQDGlD8TrQ=;
 b=kDgUB20jTSQPbZfWoKR7FfkzaxgXSAtL4RUv83x/irpz1a0+UhcG2WC0
 7kp0c+jBG4SfTStX9qrrne1Inh7H5At+uVMEX71Z9xs6saS1lVZwTF11d
 svUN2kTWOgzlfHwM1AH3+opc21RrsFhu0lZ0T6XSzvvNCZGDXp6vO9/Ue
 WmVhLqjg9R3FDvehgSdQbNpKLhM4C2h0CKq/0BFP5MGyrTPFI8anUY/XZ
 O+klvyrt9eNRPR2bYxkS7VSG+6f4G/mY6zIITOj74rmbXIiyaUlzFqM8q
 7RmY/50a45I3kYKBg6jgSfFP/dWYGSdDTZtBMMVRBj+OM1XF2Hr/DVgtt
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kDgUB20j
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix incorrect PHY
 settings for 100 GB/s
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

On 11/27/24 14:19, Korba, Przemyslaw wrote:
>> On Tue, Nov 26, 2024 at 11:23:11AM +0100, Przemyslaw Korba wrote:
>>> ptp4l application reports too high offset when ran on E823 device with
>>> a 100GB/s link. Those values cannot go under 100ns, like in a PTP
>>> working case when using 100 GB/s cable.
>>> This is due to incorrect frequency settings on the PHY clocks for
>>> 100 GB/s speed. Changes are introduced to align with the internal
>>> hardware documentation, and correctly initialize frequency in PHY
>>> clocks with the frequency values that are in our HW spec.
>>> To reproduce the issue run ptp4l as a Time Receiver on E823 device,
>>> and observe the offset, which will never approach values seen in the
>>> PTP working case.
>>
>> You forgot to Cc: the PTP maintainer.
> 
> Who is the PTP maintainer? Is it necessary? This is only Intel's driver,
> I am not sure if PTP maintainer is necessary.

I was curious for a moment too, but just for a moment :)

We develop network drivers in the public, so we CC people which could
have a valuable feedback. For PTP code it's PTP Maintainer, and other
PTP folks. I'm not sure how interested they are though, @Richard?
@Vladimir?


In general it is similar to why we CC netdev. The difference is that
this code will not go via PTP Maintainer, but it does not matter that
much for the review/design purposes.

> 
>>
>> If i spent the time to measure the latency and configured ptp4l correctly to take
>> into account the latency, would i not see this issue? And will this change then
>> cause a regression because it changes the latency invalidating my measurements?
>>
> 
> I don't think ptp4l config, or configured latency has anything to do with that, you should
> still see issue with any configured latency. due to incorrect PHY settings there was incorrect
> calculation in Vernier algorithm. Not much to do with latency. The Problem was that the offset
> was quite far off,  I will attach logs in commit message once the window is opened. I did not test
> with other ptp4l configs other than the standard one. Thanks for reviewing by the way! : )
> 
>>      Andrew

