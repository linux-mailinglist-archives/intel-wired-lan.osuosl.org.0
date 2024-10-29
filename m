Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3239B5601
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Oct 2024 23:48:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F060B4070A;
	Tue, 29 Oct 2024 22:48:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 11gv-fhZIKJK; Tue, 29 Oct 2024 22:48:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AECC8406FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730242101;
	bh=WYu4JF9dFZpipbnY09SirFzR+FLEkmxI16Zk51VeCLw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JT/wdnhxVcPNoqjDFHjh9M3nOAcY5lZxbbGP8CGORIp/FzcOwEqsh8VHOFJIAGtpS
	 /i2DCqNCXwFaHo5TdSilHgg+LcHMIMZR6lcZeeBdtSwXoI4AFmXTTTtZGLM/8na95s
	 S3AZi/CPheEXBzpbKA6NRIzJPO3UXtu7wFlbvX/tBuTf+SqWm+pkYQS4ZN7tcAq7Sn
	 hlFQSovyYZDuiaBUPdoV3pgW5gl8VbQRHX8d8TyGjXadJFtvYwP2r9kzZbkovLVuCr
	 2uA/SZGXJQGKYQ0V+8c6ZJGmWt7G7QzpeNQhuKYWMJ+kf7iVlZwrXi2CVzloRpsqI8
	 1ws6vJwBN0JEA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AECC8406FE;
	Tue, 29 Oct 2024 22:48:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1D1A44EC0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 22:48:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0AEE98104D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 22:48:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ynWTcqUU5Kl4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Oct 2024 22:48:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B11EF81029
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B11EF81029
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B11EF81029
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 22:48:17 +0000 (UTC)
X-CSE-ConnectionGUID: ENClb2GsREuPe3d7kxqd8A==
X-CSE-MsgGUID: eHLGtj2zRt2iS6vIVN3uUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="30026603"
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="30026603"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 15:48:17 -0700
X-CSE-ConnectionGUID: 8kOK9p9dQsCp+cGE04AZVw==
X-CSE-MsgGUID: pasIcj4AS9WQNZQdcUYrtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="86867575"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 15:48:17 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 15:48:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 15:48:16 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 15:48:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eosj2EpaDag0REh7RRfdlAYAdWj3mFqbLa278d4/Bs12L3AKr4scfeXDJRhas1VGstl5kVdYIW8rqFuGyLbE6rsO/+JnD/1ebbpr4fmmjq/KzmULRoTGwohQf77Itu9b1aEK8h3v4NOjd0b8zXO6ioQsiKI2JQhLBisA4Vihyrg+dWwws4sYBD/59mq1RucRwp0XS200AjTbH7xMy+ECcViQmT2Gfy4jRHGdf/VssLYLw1HUUVOFJFJ+HeIdf/xc3wQmWdDVAzNenUDFk8lbZMGeO69GDR1qKbiRxMZYeVDPlJmDN7zVgdgSByy+WhxDkikGHdoH1HrAcLU0joTI2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WYu4JF9dFZpipbnY09SirFzR+FLEkmxI16Zk51VeCLw=;
 b=Xcsvp7x6Wb0+7VlIyQsMQCouJ8mic2Psrr67QJe3G3Rwl3oQBexZsX5RXDG+kwro1RZ0WhgmJtFxv4OD+iPDIL5TbnS54uw7btqPyA/1TT/6eWJODi7OC3qm9hibM9X/sIE9Q0qLckVTJwTQONgksL/uZMbXpiqn6Q6UuWNaKreA0UY9bcozKMfimP28OA6rxonqCWyrcTVRt/23FCuDHmTkhm0yiyIGDCZhMpD+RTgxoEheNI5PG1WdJGzPl6hSZ82a5E5vqgIevgSFeQ29Zje0Z0xyH7d6cMR5PThHbYOMJkL3o6GUaxcAnQHO7KHln3aagbRqKOf8Pgof/LSL4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH7PR11MB7480.namprd11.prod.outlook.com (2603:10b6:510:268::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.32; Tue, 29 Oct
 2024 22:48:11 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%7]) with mapi id 15.20.8093.024; Tue, 29 Oct 2024
 22:48:11 +0000
Message-ID: <798272fd-6b45-484d-a0a5-344e6fdefec0@intel.com>
Date: Tue, 29 Oct 2024 15:48:07 -0700
User-Agent: Mozilla Thunderbird
To: Joe Damato <jdamato@fastly.com>, <netdev@vger.kernel.org>
CC: <jacob.e.keller@intel.com>, Dmitry Antipov <dmantipov@yandex.ru>, "Przemek
 Kitszel" <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Simon
 Horman" <horms@kernel.org>, "moderated list:INTEL ETHERNET DRIVERS"
 <intel-wired-lan@lists.osuosl.org>, open list <linux-kernel@vger.kernel.org>
References: <20241023172745.181265-1-jdamato@fastly.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20241023172745.181265-1-jdamato@fastly.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0171.namprd05.prod.outlook.com
 (2603:10b6:a03:339::26) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH7PR11MB7480:EE_
X-MS-Office365-Filtering-Correlation-Id: b0ff0daf-1e3c-4e65-55e5-08dcf86bc3f6
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OSsvbDh4R3YrYXNodUVkSVVaczZrblhQQ3pwNHpDUjZBYlhidFM3bDVDeEZa?=
 =?utf-8?B?WEwvSG43L2lob3RtY1lRZGZ5UkROUjEyaGdMNzJVeWthNDF3RGp5SEd0NXpU?=
 =?utf-8?B?dEl0cFRBeFQ2U3d6TzdhYXN2and3NGVrcjNDKzIyK0Z6WHdhendSSy90dkk2?=
 =?utf-8?B?Vk0xV2U3M05ZVFpDWDFCN0s1azhvcEdCVlk4QSsyLzNiZGttYWtNcXAxK0Ns?=
 =?utf-8?B?RnlkemFuRVVvSXZsZU5qRmVIRHkyTUpMZW9BR0JNclo3T2FnVHlkMUl4bVg5?=
 =?utf-8?B?ZTI3NFRFNlpFUFFOOGZ1YkJiNkRWNDFkWmdXTHMwVm1JYncvNmgvOGRLTHZ2?=
 =?utf-8?B?czIxd1ZCWklMUFZMOEhyRGFybnNOVnF5UjVuZ1hyV0RBb28vTUN0dGo1M0hh?=
 =?utf-8?B?S245UzdySE85WlZaYi8wcEQyOEFvWVZEYWphSXB5Q3AzU04xZU9vcTBiNWFB?=
 =?utf-8?B?N2c0OFpHYUlLeEdtL2JHU0YwWkZ3WGNrTEdLR1N5aWZTUk1aNWU3STNZZzVU?=
 =?utf-8?B?NFpQaE1sVUlRNTlXc25MUkY4cFFwcWgyd2FSdzdWSEFNVkxPWERYTFlDWFk2?=
 =?utf-8?B?YTY5ZFpZYnBjUjBxQm1FbXl4dUVWS24rVTRjcjhQSC8xcnc1M2lPSmxhajNE?=
 =?utf-8?B?UFhZYmpnUE5uNHV0dy9YeFNZYUxkbFVmM1BueUFoOVY2OElEWDZaampnbEF2?=
 =?utf-8?B?b01BNjNUc1NzbGYza2JaazB5U2pFU0FzTmpQS2tmQkRiWFhYSFZRcHJoNmt4?=
 =?utf-8?B?VTkzemdLTkFPa3BXaWVsMVppWGlmYTArY1dSOTgrRXk2c1ZsTGJTTHdKZWEz?=
 =?utf-8?B?dW5NdXBIUklibzIzWnBzMmt1cHE4STRQZHNrc1ZzY01EV1ZLT0xqVWdxVnlw?=
 =?utf-8?B?YnlDL0lhQU5hWFdHMWdEN0VmczUwL2tBSmlLZFRNTk9vTnhKR1NxM2ljaCtW?=
 =?utf-8?B?dm1TZDBFeTJuN2NNREVHNHpPMUhxb0Jyd0NBRCtRZmRBZzJmU3lLUHBmVkZY?=
 =?utf-8?B?ZlNMMHAxKy9zY29qK1FOazUwZlptQzNGVHRFTlpLZnVXUDByZks0SURYUTZG?=
 =?utf-8?B?SlB5VXNGOWt6b2VLZ1A2YlVWUEZsQm1TcU9Ca3FtL0d6NVNFc3ZDR0pWS3FP?=
 =?utf-8?B?cDJLdmVjT2JjR1F6S0xFUSt0L3I3ZXIxbFp3RDdPZnZBeGxMeUo4L082SDdi?=
 =?utf-8?B?UzFhdUFrRG9CTDlFVjI5RUZZWjNaMEU0NitBNUJnWGh5NENsZkxNeVJGVW1R?=
 =?utf-8?B?UGNyYnBmb2pWdnBDUTJBSDdiUkhSeXd3RWg3V1RSc1haeG1Qc2ZlYy9YWGEy?=
 =?utf-8?B?cUlMRGt4UGJ4SW9SKzhnSXVXcXZRZTRjUjRpYVE4Q0VHN1BkN3haOGQ5QUpF?=
 =?utf-8?B?Rk1OeTByY0VBT093TEYramY4OGM2bHFGVWhNWHRjekUybUFsWGdCMjRaamxU?=
 =?utf-8?B?S2VTd3hyajNpZDhIblhlZjQvT2U3clp2TEszTFNYNUV0MHg3SE5pbUp2WXUw?=
 =?utf-8?B?VDVLdnN5MlkxUmYvR3VacVpQOEI2UXRxMnMyUE15dmlWSGpyQklPd2RFR0lw?=
 =?utf-8?B?TVZ2c21YeFptMFFOWCszckQ3dW92V05RVGtLamF0LzNmNXJhU3Zmc0VtazQ5?=
 =?utf-8?B?OGdKK0U2dUNZNVZuTG84NVF1RDkxMVgxQlZBZHg4aUdhRmhjZnBGQXhtZm1y?=
 =?utf-8?B?RFA5WGFjTDZOWWlyeTdmdTQ5a3dkTzdNcDBrRit3WnBDK1pQSkYyeWpPMjBr?=
 =?utf-8?Q?MiZXjaO4Tgf8c9a66/+x7OiZB6PI742FANmMy0J?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QnA5NEh6SnBUM1hHdURuUTBHVGtEamV0cGRKSFExU2xXK1BJQllLakkvZzZS?=
 =?utf-8?B?MFBscmcwejhUaVFYbkt2eGZDbE5zRDBFRFF6bUFsWit5dWwwMk9lK2pmOXQy?=
 =?utf-8?B?VXFtRlROWDBsbDhHN3RJaHZTVDdCT1duak8rTTFhT2RiMGl0QXo4WDhLOFE1?=
 =?utf-8?B?SFppV0VoVVEwWTZhNUlOZjVLb2d6M1diYWVvcUdCTU9NYkNUSjZsNFdENnh3?=
 =?utf-8?B?WEFyek5XK212ZTVuZVlFUnV6UnJZSnhnYWprdTJyTGdQZ2Q4VERrMCszNkJV?=
 =?utf-8?B?NUw1TDhLbnp1Q2h3d0FnNlBGWld0c0pZUXFmOEdMZkcyTmR4MktWdGNRZkFF?=
 =?utf-8?B?NXdxL20wN3pFT1Vlb3FHOXpOVTM2ak15TUQwd0t5UmlQR0dEbzFmSEI1S1pn?=
 =?utf-8?B?YjQyR2s5emJadnVsS0FIZHhrek5MWDlxSHpBeCt5ekhYSFh3V1kvMWxCMnY2?=
 =?utf-8?B?SDdpMVNzRGtsNUhaTEpacjYrQnkwa0doS1RqdDBQeHlnbGFrSDIxYVJIcnlJ?=
 =?utf-8?B?RktzNm5Tejd3dVRzVTR5c1NnbG53NVlZTWc0U2JlOVdqd3NLL3liTHBEalBm?=
 =?utf-8?B?SEQvR1gvb2hPTFlCamVPMllvSnRtVG9RdGtmV3F5cFp1bGFCVW5KeHpyUk83?=
 =?utf-8?B?MVNMT1RPeS9LRTdHMVhOZENPVnBRbFpSalZVU2Q0MWU2R3VtZkJtYmRNcHVZ?=
 =?utf-8?B?K2l6QThDMFhvQkZGSVh0TjVDakREUUVUVzRIWFNGa0x5bms3ajBsVHJOT3ZN?=
 =?utf-8?B?SmlLREZJS2dma0w0a21aN0RReGFUY1lDWVRiQTM3ME5IR3F3L0NoVlhlRTNj?=
 =?utf-8?B?VTR3WTZNbmhTbmNrbHpkaEt5VGViVGZ5dGlZbys2Q2xKZ1p4dGxKbXlWOHpT?=
 =?utf-8?B?SDNJZ2FMeStORngvbDRtSGsrOWdSM0dEc21RNUVxODhjdDRtbmg3QnZOZ0l5?=
 =?utf-8?B?VFBJMGwrVWtQYWpDZWlRRy9Gc3pVaHRuODZZWUNOcktJSmEycEg3OXg4UUhD?=
 =?utf-8?B?Y3pEdW1FWTZRSWRKKzQxekRKdm1XbW9Wb1VxL3RmRzlWRm9wSjUrNnBiRS9S?=
 =?utf-8?B?QWJsU045cnkzVnpsNWhKamFvWWZmaXNseVpFRWNiRHVDcHp0cCtMSDBKNTVs?=
 =?utf-8?B?eVdmVjdlaWxyQzFwVE5GVEh2a2xXK1J3NzFkSk8vZ21DWGR6TSt3VzBSSEtt?=
 =?utf-8?B?WWpiRHhlNDBiNDVFSU40NDdrb29uOHg4TGkxOFBUS29rRTBjdkJ2SEVkY1FG?=
 =?utf-8?B?aUE3VmFEdCtDaHd2WnBTb2tyTGpIcU1WRFdpcUNIaXFiN0ZhMlJIUmJVWEpi?=
 =?utf-8?B?L25aVVVVc2VlNmpNQXY4d1ZYM2krRmNzL0xDenk4UFZVRWxreEJjTFRGdEk4?=
 =?utf-8?B?OHZTM2d3RVgyVFlRMHJFV3QzK1lIQ2NmWDNsdStXSFZLWEpLQTgwdDB1N09z?=
 =?utf-8?B?aVh4dXJMazBUS3o5NFZjMUNRc0VSTzIrRE9JZ0ZrWW1Edk9aK0xZUjFVZ0ZO?=
 =?utf-8?B?Zy82N21XUHA2UGE2bFcxdWp6aHJFWVJIZE9zd2VEUVBQNGd5ZDNOYW8veEhw?=
 =?utf-8?B?MWF6K0YyL3c5WlpBeUJZYTRNMzJzVE42QzZBRTZteDdSREFrYUVoZkJNYjIz?=
 =?utf-8?B?VzRvM0R2RFFYRHhxT211bTNWOHBoUUp0TVgxTXVya3B0MGdLMFhoNm03akVJ?=
 =?utf-8?B?NGZBMGVpZ0cxbFRiTTRxMVcva1JLaUw3dzltNFIxZXBnSHpncEZlYTQ1dHRP?=
 =?utf-8?B?d0xIak10MUptUVpwbHFwQ2dMbXU5ZU54b0YvZVdaUUZhSk9vRi9rZFF6UlRj?=
 =?utf-8?B?WnFRUUhaWTBwZE92WGUrTUpSenY1My94byt4Wkp6Y3pteVRpc0pjL1Z0NSt2?=
 =?utf-8?B?ZUYzR3lWQkwxRW9oQ3VubGNJVXJaVlhsNWltZVZyVXVlV1Jza3NIaksvRnU4?=
 =?utf-8?B?UjJlZzlqbEplSEpZZk1vbEsxdEZhSko3YzJqSUJ5cFVORHJtSk10djBIRHdR?=
 =?utf-8?B?K1FWUyszME9rd090SHVWNDA1QWxFWFQ2Q0RDZm01L3g5dHgzZ0RPaXZ5bVgy?=
 =?utf-8?B?ZnpCanoxWmxkZXV5UzdKTVUwQkpzMXF6NjM0SUhEWHkvWkFjL1EzNDVEZW8y?=
 =?utf-8?B?TVFtNmdXVjgybVhBemI2U1ZaWW4wMDZBRlUyTGVIYmdDYU04NmljVWpMc2FK?=
 =?utf-8?B?YXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b0ff0daf-1e3c-4e65-55e5-08dcf86bc3f6
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2024 22:48:11.4681 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ovwgdTl/WgyJ9RwG27prpezn0AGzUqH6DmTS4eX3mXuMkqd4wbS7MCTotHE63WPJArpL9qFxNmiX3hFCpNb8N0T61lfQ8SnTlqTMgLWL2GM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7480
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730242098; x=1761778098;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1N0sTk8wUw6BOWIsWdHo6YUilyzTCUcaRzgsMUOjDbk=;
 b=OdQfxfqNYu34AtGsT/Q0/6ZQIMyqvWjgHcftIOvwmH3zeTZAM5aPj3Ni
 a5oECoUVmMYTPWN22JVY8fwTBjBkIhHr54ddcu0XpnqSQWxvBEOPT0783
 hGz48roG7+bL7BGBh98xvpsLMVa78KrClOHviIz6qySt9lqYq9sA1mB7E
 76z7avSx5qDSX20iKl0iT7idblfOuFtp4v4Ibt4OOfQQV5nnVJDRjrPcR
 nBSi9KVrJbtzE34LEinA2IG1B72I1fV/bLC6KZnrQwdbFqdJ1uVuSttT9
 gPkAJrS/YzeIYhAw6U13Je6n9VAdkO5sePttuOKZnJvkyGnGQtoWSKh8h
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OdQfxfqN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-net v2] e1000: Hold RTNL when e1000_down
 can be called
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



On 10/23/2024 10:27 AM, Joe Damato wrote:
> e1000_down calls netif_queue_set_napi, which assumes that RTNL is held.
> 
> There are a few paths for e1000_down to be called in e1000 where RTNL is
> not currently being held:
>    - e1000_shutdown (pci shutdown)
>    - e1000_suspend (power management)
>    - e1000_reinit_locked (via e1000_reset_task delayed work)
>    - e1000_io_error_detected (via pci error handler)
> 
> Hold RTNL in three places to fix this issue:
>    - e1000_reset_task: igc, igb, and e100e all hold rtnl in this path.
>    - e1000_io_error_detected (pci error handler): e1000e and ixgbe hold
>      rtnl in this path. A patch has been posted for igc to do the same
>      [1].
>    - __e1000_shutdown (which is called from both e1000_shutdown and
>      e1000_suspend): igb, ixgbe, and e1000e all hold rtnl in the same
>      path.
> 
> The other paths which call e1000_down seemingly hold RTNL and are OK:
>    - e1000_close (ndo_stop)
>    - e1000_change_mtu (ndo_change_mtu)
> 
> Based on the above analysis and mailing list discussion [2], I believe
> adding rtnl in the three places mentioned above is correct.
> 
> Fixes: 8f7ff18a5ec7 ("e1000: Link NAPI instances to queues and IRQs")

Hi Joe,

I've applied the patch to iwl-next as this commit hasn't landed in 
net/iwl-net yet.

Thanks,
Tony

> Reported-by: Dmitry Antipov <dmantipov@yandex.ru>
> Closes: https://lore.kernel.org/netdev/8cf62307-1965-46a0-a411-ff0080090ff9@yandex.ru/
> Link: https://lore.kernel.org/netdev/20241022215246.307821-3-jdamato@fastly.com/ [1]
> Link: https://lore.kernel.org/netdev/ZxgVRX7Ne-lTjwiJ@LQ3V64L9R2/ [2]
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> ---
>   v2:
>     - No longer an RFC
>     - Include an rtnl_lock/rtnl_unlock in e1000_io_error_detected
>       inspired by ixgbe's implementation of the same
> 
>   drivers/net/ethernet/intel/e1000/e1000_main.c | 10 +++++++++-
>   1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
> index 4de9b156b2be..3f089c3d47b2 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_main.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
> @@ -3509,7 +3509,9 @@ static void e1000_reset_task(struct work_struct *work)
>   		container_of(work, struct e1000_adapter, reset_task);
>   
>   	e_err(drv, "Reset adapter\n");
> +	rtnl_lock();
>   	e1000_reinit_locked(adapter);
> +	rtnl_unlock();
>   }
>   
>   /**
> @@ -5074,7 +5076,9 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool *enable_wake)
>   			usleep_range(10000, 20000);
>   
>   		WARN_ON(test_bit(__E1000_RESETTING, &adapter->flags));
> +		rtnl_lock();
>   		e1000_down(adapter);
> +		rtnl_unlock();
>   	}
>   
>   	status = er32(STATUS);
> @@ -5235,16 +5239,20 @@ static pci_ers_result_t e1000_io_error_detected(struct pci_dev *pdev,
>   	struct net_device *netdev = pci_get_drvdata(pdev);
>   	struct e1000_adapter *adapter = netdev_priv(netdev);
>   
> +	rtnl_lock();
>   	netif_device_detach(netdev);
>   
> -	if (state == pci_channel_io_perm_failure)
> +	if (state == pci_channel_io_perm_failure) {
> +		rtnl_unlock();
>   		return PCI_ERS_RESULT_DISCONNECT;
> +	}
>   
>   	if (netif_running(netdev))
>   		e1000_down(adapter);
>   
>   	if (!test_and_set_bit(__E1000_DISABLED, &adapter->flags))
>   		pci_disable_device(pdev);
> +	rtnl_unlock();
>   
>   	/* Request a slot reset. */
>   	return PCI_ERS_RESULT_NEED_RESET;
> 
> base-commit: d05596f248578be943015c1237120574a8d845dd

