Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CDDA9E34C
	for <lists+intel-wired-lan@lfdr.de>; Sun, 27 Apr 2025 15:27:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 92DF740334;
	Sun, 27 Apr 2025 13:26:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UjJOk7Xb1kOA; Sun, 27 Apr 2025 13:26:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF7AB402E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745760416;
	bh=jP+N2wZjGGjwUpK4/E8Yeim9BfVDCOGjuHSqOZ0XO7s=;
	h=To:CC:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fwi1T1ra5k7EUJ7OiEPlCdrLvy5yS/Ow82T/L1UhBmgHCkZXFUVhqGi7s5r0tbEAq
	 yR76f16dcqVtZva+jvSYeYQLrRw6KbgtQQjTrZvD2BimtTc1F0vwi9f2TjIqfh74K4
	 THVVuMXa7CCl7qkLTOJJrZSj2GENLPa7ydei76JAQz1Ky+4iooeH/s7xohtmE2MDYp
	 ENJOrAij0B3AClB8Y/3VzuqOQQUMyzeZA3swKVNDT9VTi4Vr31nyYj+kO7dLvIxGea
	 BoTSPOZcjIMGw3TbmI2r9W407GN9LQ/AUFNG4aI/dk94G3sCpk4JYfrob8ZqiOrBiU
	 w3PUgfi6hWFrQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF7AB402E4;
	Sun, 27 Apr 2025 13:26:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D090F19E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Apr 2025 13:26:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CCD836076B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Apr 2025 13:26:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HezIFPRiofJQ for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Apr 2025 13:26:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E51CC605F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E51CC605F5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E51CC605F5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Apr 2025 13:26:54 +0000 (UTC)
X-CSE-ConnectionGUID: 1HUbn1nqRXK92BGCBo6b2A==
X-CSE-MsgGUID: 4SuBkaMsRxuxv/UTGXJ8sw==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="58003618"
X-IronPort-AV: E=Sophos;i="6.15,244,1739865600"; d="scan'208";a="58003618"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2025 06:26:54 -0700
X-CSE-ConnectionGUID: RKruw989SuaaOQWYk2sMCQ==
X-CSE-MsgGUID: z6F6WU2cTla+x13R4P+Tlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,244,1739865600"; d="scan'208";a="156526469"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2025 06:26:53 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 27 Apr 2025 06:26:52 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 27 Apr 2025 06:26:52 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 27 Apr 2025 06:26:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SV8j5QIvmBL4+y3XRgw4N1Jk/TiwbOlm5NXi4jWt5uAXcyixgMltT7Kijkc4gttb/MABpQwfPkkxGr9cgHGBmlKi7ZxDj3f6tG7sh4gIo78Q2NH/0zDlTrCY7mwkb1UqntpWMlAG082FAexFtaD5nMSHd37ikUddr1JVoq/ulxFqVSHE0IdtpUobUFIFhf99DtWiA38P0wVIjSKRpNH5tCg8lX9JDStT1A5TFtQSQ3RZgG4MxMx25aCuefrCIy5lP8SRvz+DBGSWhe7dRwYCjGaFHT5frwuH1lvvyEOBpjy2DOJYv21s9pyZvJ4NCLsFqQ2WRzooOMZZZVXOW5W62w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jP+N2wZjGGjwUpK4/E8Yeim9BfVDCOGjuHSqOZ0XO7s=;
 b=zJR1cVVSvPakgq7qvgUZK3SIzLtPH+zLwVfUy6g+zoHrSk7PqD2yz3fzihdaTUOHJAnyXZpHqybpAKh6tE3YAnWQVJvuQx0zwrJPBd0BDkrGZNToSmbwLhVOOVIoBTR4TanYImAtb7sPSNlOsJKVKA4HDXkqXOfopYB0sMauZZHTQMxhyIHFK85CRfQpQh1BWmju2H4FX3uc9jNlp1GFaAXdwEak/B1fp/VQ7gr0n8vbclXN97JlolOyIxrNdfibfjwtEwhby3yTsTTGx70PZfLAX0l9orVTLo6QtcK8kCULehDaBsLLRUdNmBbwl7rNHz/+XLrtSjXUzUbsRXyYdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5934.namprd11.prod.outlook.com (2603:10b6:303:189::7)
 by CY8PR11MB7797.namprd11.prod.outlook.com (2603:10b6:930:76::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.31; Sun, 27 Apr
 2025 13:26:49 +0000
Received: from MW4PR11MB5934.namprd11.prod.outlook.com
 ([fe80::96ae:ce0:2a38:7408]) by MW4PR11MB5934.namprd11.prod.outlook.com
 ([fe80::96ae:ce0:2a38:7408%5]) with mapi id 15.20.8678.028; Sun, 27 Apr 2025
 13:26:49 +0000
To: Jacek Kowalski <jacek@jacekk.info>, Simon Horman <horms@kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <5555d3bd-44f6-45c1-9413-c29fe28e79eb@jacekk.info>
 <20250424162444.GH3042781@horms.kernel.org>
 <879abd6b-d44b-5a3d-0df6-9de8d0b472a3@intel.com>
 <e6899d87-9ec4-42aa-9952-11653bc27092@jacekk.info>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Message-ID: <0530ea8e-eb81-74cd-5056-4ee6db8feb9e@intel.com>
Date: Sun, 27 Apr 2025 16:26:42 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <e6899d87-9ec4-42aa-9952-11653bc27092@jacekk.info>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0012.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::12) To MW4PR11MB5934.namprd11.prod.outlook.com
 (2603:10b6:303:189::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5934:EE_|CY8PR11MB7797:EE_
X-MS-Office365-Filtering-Correlation-Id: d5d3eead-508e-4db6-e274-08dd858f2a18
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RHBlMzRQU1c5WmRreUp5clFJMkh2KzQyd1k0NXVmY3BXbmdka1BqbGhvVytl?=
 =?utf-8?B?UG02TUgxSXNnbkYwTnRnK2Jkc2JYMVN0bHc0c09zUWJxR2sxSUlxRC96QjlK?=
 =?utf-8?B?U3RKMC9JNE9sS1l0bmRxUXdadVR2SVYrT3ovWWk2ajRaU3BvV21iM2dUNFN1?=
 =?utf-8?B?RzRYTXQvQjgvWU1OVXhwYllOODdta0hCNUVwU0tvdnM3MWN3ZFc1dHRYMWRH?=
 =?utf-8?B?S3lGWUFhWkFZQU14ejNQTExBR25obGd4c2tvTjZZdWIyU3lPQlRjbks0RnV3?=
 =?utf-8?B?dFpQUzNCYngwMmZyMEk5bWErcUdLdWw2WXNnYXhNZTkrc1BCaUpVRlZnY1kx?=
 =?utf-8?B?S0pSb1V3dG5nbFF4T0pxSzhmcnd3eFlFcDRQUkh4ZlZuRkNyY3Y3RkQ2UnFX?=
 =?utf-8?B?SkVnMHJ6anNEMjhiUnhYZzhQV3NnOXRaaW1jMm02WkViL0UzT3hxN2FaT0ZI?=
 =?utf-8?B?OHBlbWFJcjR2YVBkSGxEM3IvUXhtckk0VFpTNElqQ1NHaFdYWUxDendTMnhz?=
 =?utf-8?B?em5qOHd5SjQzVWdSZW9PTjE1emJTaG9HVnRwbXZCQ1FXODJ2RWdnVW8yNE1i?=
 =?utf-8?B?cTRzRjFicGltODdJQVZaNkVDbk9oWWZwd1ljbDhrekxCdFFhem9EOE50bWJP?=
 =?utf-8?B?cXF4dFRyKzUxOFRJbzZjdmZFNnlXRmw1NFZjQVEycUdPZ2NPc1Q2Wjgyd3d4?=
 =?utf-8?B?TDhTRVMyNlZSTStXMFArY1BoM01Vb1BPMzViWEdJTFhLSC9OZVRHdnRLMFpo?=
 =?utf-8?B?TGY4TlBteGVtYzN4QVdKMGJpM2NBbVhJbm52MThjd0RQTEF4NFQ1SktDbzhk?=
 =?utf-8?B?YlJzTk5idzBPV0g5WVdYNEJvWGxTaFptZXM3UUl0NUVCb3hEQTAyWFBZMTFv?=
 =?utf-8?B?QThIdmZZLzd6d0J0bFR2U2E0TStRaWJvTExJL3NnaUVuQjVQUzFoVkV0RGQ1?=
 =?utf-8?B?NVdqdXRlUjM0SXMxMkJPZjJ0dS9tUTFibnBYK01qY0dHdi82dlRQRW10dzNo?=
 =?utf-8?B?YmxmNEtFL3hrQU0xaWFaVk5RR3RnaVE3VCtJeHdibUVJL3puNzRueCt4cSt2?=
 =?utf-8?B?dXRwYzZxcUloWFZNMlRORHkwYkpCSEdVNXpOcWZ2WDlENjJVMTdCdDJEcElR?=
 =?utf-8?B?YU1YWm1MaHA4RW9aV3RzTjdCRVpEbmtqcVRON0RNc2k3bStnME1kbFdEUFAz?=
 =?utf-8?B?QUJKOTJmaVJWdE5Bd1FsaVNnUVllaG51QWszMVVWL3Y5WlpYQVQrYUxRQ3NL?=
 =?utf-8?B?SFVzaTJraEFRQlJqNUtBcmplLytId0w5WnNrWjFWc3pqVUNDODlLdlNmMDkz?=
 =?utf-8?B?aW94aFE3UHQvT2FaNnhTYkRMRUlBK3A3ZVNqZEJrMWNWZ1hrQVg3cksyQWZL?=
 =?utf-8?B?MG9rd3FVeXBqVTFFZFN3aEdzNmNUU0VxM01BVi9hdVZNWFhzN0pKak1XVWp3?=
 =?utf-8?B?UFhkdGVVdjNmY1JOZWM2ejZTTUhKRERRVkdTb291ZjVNY2RlSElQQnJNSXVh?=
 =?utf-8?B?dWdLYlJSbWN3QXVQeUFwNDlWZ2hkSTJZcUxONkt4aTFBcEI1TFUyVGR3WUZm?=
 =?utf-8?B?TFFSbEQ2YjhyMzdPSmpkdVlZMXdidWVucUc4UWwyWE9GTElrN3hnNUZ0UzBy?=
 =?utf-8?B?MzNMRzZ3b0o1Y0lMM0JLdjVMeHZpc0dVZVhsVGZoQ05UcEdmaWtvNXNoMlFq?=
 =?utf-8?B?Y0k5c1RxSWZzOEhFZDZyNDRoYWlESk43SFRFSUJiUDJIenZHLzB4RFVTY1hm?=
 =?utf-8?B?T1pTRHo3Q0ViUXJaWERZSU1lM3hwSjRzeFpEMndSdSt3NUlOL3V5MjB2L3Nx?=
 =?utf-8?B?T3c3L1NPRURtWnpkWUdtTWkrcVRCUjA1NUdreml5ZU5ONGwrUlkzeHh2ZENu?=
 =?utf-8?Q?3/ziIecG9BJRk?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5934.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y3lkckpsbnBKT2h0K2ZYRjkvTWNkTm52d0h2WDhuWWhqSXhmQTdEOHM5ZmR6?=
 =?utf-8?B?cFN4WXVnS1BjdHBxZURQT05yM1NBL1J0bHp3ZFZNYkNNTTdWVittUGN4MEFU?=
 =?utf-8?B?MUgvU2dMOFo2WlhyTlFOa2dKZThtTEdNcVViWkJPSDN5d3NoLzhCaklPZ04y?=
 =?utf-8?B?L0tNZjdWWENuWXFpQXhKR1lHWVpieFMzSWRBSFVVZlF4NzBWbUxQczZSTkls?=
 =?utf-8?B?aE1lK25Cbmdnd1NjdjcwNGRONWI5OHNNN2xTUVRWOW10LzFxMFB1T2RnbUJM?=
 =?utf-8?B?ZHZKN3gzdmpjTnV5azFVMXZpdmFlTlhYU2svOWdGeW5FN2VhMHFjUlNzeXds?=
 =?utf-8?B?ekh1YnVPMElLNjdTbXlHZVZoWEhwZzRGS29NdG81bTNQQlU5cGtIQUhpaEpY?=
 =?utf-8?B?MDRlZFJUUVZOS244YU9IdDA3bVd2bGpyKzNHeHJaZUxtUVVlTkJnOG9JWWNw?=
 =?utf-8?B?TzM3dmRzNkRZZGwwYzZ0Y1BvWlhEa0dUMFA3UWFKMU41dktNNStGc0pnbndi?=
 =?utf-8?B?b1hSSEJnQ1Z6S1Q5MzJSTzhDdXNobUZmTE1ocWxNa2ovU1ViaEpWUjZmNEcx?=
 =?utf-8?B?M1ViY2x3YzFBVE5iWS9JcEJsRlFSWWMzZ1AzbFhrTXQ4Vmo3TzRmZ2dwWnVV?=
 =?utf-8?B?cnZoZUp6SXd3dVZpeTJUNFhpcHRzY2hiQ3Q1bHNibDRqTUg5T2J2VE54RlN1?=
 =?utf-8?B?eWJPc2hOL2xjQ2xncUszenp3SVB0dzdRUy9hdG9JOVdJbVZycURMeVo4Q3pI?=
 =?utf-8?B?S3BjcWlPTUJKQjB6SGpXTnhqc0tkbUtRKzhSVVZDMm9haVFWYUdJSllrTTQv?=
 =?utf-8?B?b3J1bGtCOWlQZVJkRFRNcENkTmh2YWZiaXZSK3RrUW9Dc29zVThnS2ExOFEw?=
 =?utf-8?B?NEY5ZkRuZU45K2RRR1pTSW41dHZHOUJTNWwxL0Q1ZXloRHArV3dTRG0rWnZn?=
 =?utf-8?B?KzdQbGhMZlBodDhvZVpCbG92OHJxbFd6MDM3UTZFOTBRdTRZd2RFQVBqZnk5?=
 =?utf-8?B?NmpWbldwSVNtM1NFVGNmbDcrQ1ROMlp1OExiNXl5ZVJZTGF5ZFFTZVNDbHBM?=
 =?utf-8?B?VnpuUFZiVTgzVGNTNnp4Q3RxUHJFeEhMZUNNUGIxaXlyWURFcHFHdU9WQ01o?=
 =?utf-8?B?U1FuMDBCMS83MlQxcmZhbXkrV2JqM0U1dnVxY2doK1hJVkFGTkgrNk1hcXpl?=
 =?utf-8?B?UzJyTjJWVys0MzhHc0lUZzI5Yzc5TDFSREkwNXczbThFRWZBNU1pQTczRmlp?=
 =?utf-8?B?ZmNkdzl5Vms0UytxbVdpUXNtQmVCUVlzRXNSOXozalZkdE9FeGxzaXphYW1q?=
 =?utf-8?B?dFArclBFMEdlb2dMU2RIMXZEVE0zM3RtSS91cGF6ZTU4amtUVUZueVBPWW5z?=
 =?utf-8?B?Mm9RbUJ5Z3BJZFlXbEc3Uk1aN092RnBNTnZKdHZyTXRCc28xRVRnT1M5Sytz?=
 =?utf-8?B?RGovVlRYRU5CVVY4WU0rNE1yM09YUFVDaGUxUmZSeHh2aFpwSzNnbURYUjFN?=
 =?utf-8?B?a0xiRnNBQUNaT0phWHJTT1dKSUZaWjM3SXgxUkVPaDI4TVZmQ3ZlRHN6N25v?=
 =?utf-8?B?bkZsd0VpWWptMGRVVVYzUWxkODM4U0JyMEhKT3A3T1Y1K2gyRjdZT1Z0SnZ3?=
 =?utf-8?B?bmI1blQ1VE5yVm1xemxzRnhQeDBZTWtqWnBGNGM3SzVKQ1FBa2pqM0dXZ2tH?=
 =?utf-8?B?cVg0WGx2SG5rRE5YSVNaU1doc05xQ3FuTUl3bUV3b0VMcFRpYzlZMVBsMmVn?=
 =?utf-8?B?RDZvQnlvcDRXR2FBNlZjK3JybkErdUh4cDB0ZUlnSHI3c1owWnBDTzJQZUVx?=
 =?utf-8?B?NmhIdUNxRHB0K1dqYW9sUExUUXhmenRZamJLTER2UEc1bGg2Yk1JbGFDUlNR?=
 =?utf-8?B?ekswdTBPZUlEL2Jwc3FFaVNXVFhPNmVNUm5pV3lWeFVTRjVlcEgwcFlUVm9S?=
 =?utf-8?B?dktRSElnZjlqVjNHa01mRlBpSk1pZDNtTjFKazV4OVlXVXZOWnBPNmVOWlV4?=
 =?utf-8?B?RUFpYzIxb2FOUzJyZDY4bGZla0VFT2h3bTFSckpFMEZ6bmppVmluN210T0Zs?=
 =?utf-8?B?dHVwdkRzeE8wQkpJNGZDcFVzV3RSZldBWC91RDkrWUVpVEFFVXVZZjlSdjlY?=
 =?utf-8?B?WXA4Mm5xMDdQMTNEY3EwL05rdnAwM0ZzRHRubi9vSVdPckloMGNhU3NnVmVX?=
 =?utf-8?B?N0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d5d3eead-508e-4db6-e274-08dd858f2a18
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5934.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2025 13:26:49.0677 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 20j0d1dN7xhHy6/wzsHjTOjeCrXnkAI1+o3A9bqYaCdoamS0CQfOtj1BbWiNZz5uqEpyVmgRy5psQBsPId8l5fbEMoNFlyWgGqYmV+jN5YQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7797
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745760415; x=1777296415;
 h=subject:to:cc:references:from:message-id:date:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nsX8ldjwbkttPJwCvgm3WuS25FbCX8h88YWXnWMJ5jc=;
 b=GtzHWJi95eveEGBw4vZvUdPct34Kl8+DbcZwHWiD1h5WXFZRRObrAvKP
 PgFLiwfy4SxkxveeXUp35V3o5Jzqoj71axiy3eBKmLxbxgRfN2fpN/e57
 HhcC7mlaCkJHA2K5wSq6NmKxhHna1Rktm7tlUTBTY7+oJDu11rmz3RBGy
 ZaKlk5o5dFrzFZYoJgdYQ0VLSnfe/Fsvcu6ESC0t0sH5EnHJwT6fROhMG
 2O6sCmivySWLutTPWLbYA404XX2ZC16aG6yuEj9nJyTiP1Gss/MQwmvOD
 6TuwP4G+pxWMrfXlYrJMMgBKzHz8iHxc+d0ckIr/VVvlRJzW2rd3OcKJB
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GtzHWJi9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: disregard NVM checksum on tgp
 when valid checksum mask is not set
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



On 4/24/2025 8:29 PM, Jacek Kowalski wrote:
> Hi,
> 
>>>> Because it is impossible to determine whether the NVM write would 
>>>> finish
>>>> correctly or hang (see 
>>>> https://bugzilla.kernel.org/show_bug.cgi?id=213667)
>>>> it makes sense to skip the validation completely under these 
>>>> conditions.
> 
>> It is not completely accurate. All the NVMs starting from Tiger Lake 
>> are locked for writes, so NVM writes will always result in a failure.
> 
> Check my message in a thread of an earlier patch:
> 
> Message-ID: <1c4b00b6-f6e3-4b04-a129-24452df60903@jacekk.info>
> https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20250407/047551.html 
> 
> 
> On my laptop NVM write operation *does not fail* (nor hangs), driver 
> loads and ethtool shows corrected checksum.
> 
> This lasts only until module reload (rmmod/insmod) or reboot.
> 
> I guess only shadow RAM is updated (or something like that) and not the 
> non-volatile memory, but the operation itself does not error out.

Yeah, probably this is what happens.

> 
> It might also be because I've disabled Secure Boot...
> 

Anyway, I think that the commit message should be precise.
How about this?

Starting from Tiger Lake, LAN NVM is locked for writes by SW, so the 
driver cannot perform checksum validation and correction. This means 
that all NVM images must leave the factory with correct checksum and 
checksum valid bit set. Since Tiger Lake devices were the first to have 
this lock, some systems in the field did not meet this requirement. 
Therefore, for these transitional devices we skip checksum update and 
verification, if the valid bit is not set.
