Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB62286C71E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Feb 2024 11:41:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 49D26415AC;
	Thu, 29 Feb 2024 10:41:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yXgKBFZd59cs; Thu, 29 Feb 2024 10:41:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3BFDA41545
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709203299;
	bh=dAUhhaGZ31e2HX3/ki81jwJA6fJu8Y+pSohoxrkmbGc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3OwN7vUOQS+mbwAqgXtGb6RdkC9Rfyx6ofsV+FpK4+bcKK4fXNzur4GXuRx/F1f/c
	 LCSaFQfHJoKQ1Ry0OpGWLO3kt0Hk5xrH/JIo0AIZDMuflJIpVeo5Ul5ghxw7MWF9vB
	 tY82WMKpNg2FeQz/5Iv3XPGEfz2Pg6q5dP009ukizatQd6SgDYNPF+dwCUNpKf6LSS
	 s5AXpOTkKSrWopZiNod9eIjyBz9bXP9cPO7m5IoB4DYBfk0q2BdIob2MBrdNAKQ//R
	 LuJ+qkY1BNST22QuIbesJEa3Gm7DlxXz7fgqHy6XKP7rvAPeuYuxkup7NKsuW5i0VN
	 lDFlylguA0+nQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3BFDA41545;
	Thu, 29 Feb 2024 10:41:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7D1081BF420
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Feb 2024 10:41:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 669C741520
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Feb 2024 10:41:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rmQVn3p7kUEK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Feb 2024 10:41:36 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 29 Feb 2024 10:41:36 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5F51C414C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F51C414C3
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5F51C414C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Feb 2024 10:41:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="3520022"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; 
   d="scan'208";a="3520022"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 02:34:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="12350554"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Feb 2024 02:34:29 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 29 Feb 2024 02:34:28 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 29 Feb 2024 02:34:27 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 29 Feb 2024 02:34:27 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 29 Feb 2024 02:34:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O14w6ThJhwl4dHq0XnS4qQv0Wkwfp5eLmIRSpAEkonCO2jMsZ5SUSJy/9UecAq6MoQI8fi0NWa9JIORfxPEXlMSFV2aWwd/C9abC0sszro54jVipHvSbiv3GYGBpSMY9FUxLhds4JsveG1zn9zwD9mU0+zmOoYDrQFrUznkt+B5uw/1CqUfOqb5A3XkLMUp6H2A1+QbgN9FB4ORHvwHRoyeoOINALzeuFvJRG6EPAqff4F2bjurk157I/wtxwgk03uf1vjHymDCm1srbJfThSV2cnvlNVYyW1jIuJulU67Ghasd/glTk/UPNGKjquqOx0UXFHmUwDKbhQ2wW5rfkXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dAUhhaGZ31e2HX3/ki81jwJA6fJu8Y+pSohoxrkmbGc=;
 b=VlDbVERgc1yaZyxJog/vrWC5lXyU3A3BLkeoBpsmToYCp8lN83GHbgPQgCKfJoKsHfMRsjfdf9vJVuiYACodRCcyoeaIlfTHOPXHQvqLbVHcg/X0xzhaf1v/2L0hAxGf+F3gNlrcA61xguo1c582EVDo+qJ2yqiEvj833Gelat0EJH1H/02/hYNMH/MtaWz9jQ6/eMyhCu+squqMd9tXMWF2NVs4FulXJw8ifVFdgrU6mGO7jeJyG8TXJ3eubpmFvhXNfPXIxtlYzrxxTkI/aQ2CQRS5rAWFpO4FGyTUfl40kJ8whsPX/28DT9TqJ0nlm1MyiseDTtxgR34oH9hduw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by SJ1PR11MB6204.namprd11.prod.outlook.com (2603:10b6:a03:459::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.25; Thu, 29 Feb
 2024 10:34:25 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::919c:f185:60bd:9076]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::919c:f185:60bd:9076%3]) with mapi id 15.20.7362.010; Thu, 29 Feb 2024
 10:34:25 +0000
Message-ID: <daa81688-b453-42f8-a8c0-999b7d9fafd4@intel.com>
Date: Thu, 29 Feb 2024 12:34:18 +0200
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20240211151245.811320-1-vitaly.lifshits@intel.com>
 <c2b8c45e-1986-41a4-89cb-7db48512eccf@molgen.mpg.de>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <c2b8c45e-1986-41a4-89cb-7db48512eccf@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR4P281CA0268.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e8::13) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|SJ1PR11MB6204:EE_
X-MS-Office365-Filtering-Correlation-Id: 08b4e07d-d051-4a00-e967-08dc3911ffef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sp1RjJ0nBRkxe8g9bFShLMQAyKJmbzrO/LsXAW21yC4RGqcSH6ML6nTqIWgQ75zFSJKmkTtVb2SCCQvSvXgrq8n6Q+06y/pkd+ohfC6+X0hwKWB3w8ak/0srPL1VLfItxq0xQhJbwcRI8Ff8Ci5rrnsVoB1SA83rdexp0gl/cl+Vk6dZqlBY8/FN7KOLl2kNgySCSRfOB3aqMxMiGplEocn6b7j73as95XD/AyKmYp7p7RAQUJBBf92HQpZWttOwPQBb2FuOU2PQDzfF4Ue6G2bJCIHki/4iCTd0A+ZtGXrNTaPwK8EAh9BmP2FzLylb6/mLcYEPkRAnomsyrPbbW6kk5hlmT5iWvhQlRN2X1lt82ObkJX3B+cj4ifhUI2rgN0m2UWs154watPbJBIANK1GgT9T2/s/aIdvyOU96qjXs8LzrTXdeXz+BVIsHStnTKqUmlsQFAj9B8LKDDm1ssiP+dBLQ0+81lVMwGfJC2rWIp/3wbyy+xRlben/IevJDAZENtUwaBCh/8unj+HJ1u5peOvUYELFAO8sQRQCg/ohOMKWFiC75YmxaZ+7bs8JdBxhBeZyIYnXx5lUzQQVsqHIdAVen3hhcHsQxxsKGY3ApXh5y/+sG6D7WP/fhTjMAtaoGBXQnDFwzg3eFHmsyrw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S1JXdDBZUDhCcVRNWEF0bmk0ckpLUEtkdlZHd3JXUnB3N2sxL0JyZGdrWDh5?=
 =?utf-8?B?bElocjl0YWtzbWg5cllrc1A3ekNXRkNvMVJZdEN1U0NmYVRUdXhYUm8wa2F3?=
 =?utf-8?B?bWdWOCtIajVmU0RxZTJuYncyM0FVT3lOWUtSQU95eUVQZ0pUaU8vd2xiVUc4?=
 =?utf-8?B?Q09WRmdHN2thRFZCRVozWVgxUmF4VGswWFZGdFN6dHp4ZkJ4Ty8xSUIxWmc5?=
 =?utf-8?B?UzJSVG5HbStyQmxHdjJXaEQ4MTVSdE1BaVgrMUQwaWJEWGZlK1NORFE1SnVt?=
 =?utf-8?B?RitzNUxkVnlmcXZqMkdkUlNFYkZPdFNoR2NCQnRDKythekw2Kzcxb0NxNE50?=
 =?utf-8?B?OUJtNmNPWm5XUGF6R3htUDd3bmJ4VTc5K01EZTZsZTZpdG0za1ZMTlA5UlVQ?=
 =?utf-8?B?Tk1oTXp5cE5kQzNrbmdKQzBHMkwwMjBxVUVGR25hQmVSMlVJUklZczZjak8w?=
 =?utf-8?B?QURVMDJKU2h2ZXcza3Zkb0xIY0RNNkpVRXRucVZOOTRHK2dVWlhQQTFHcVFx?=
 =?utf-8?B?WmJlcCswUUJKcGtJdTVuVW1zNjNWUjJiVXB4QjlwZUs0VDRxVWVZK2xIYUNa?=
 =?utf-8?B?a2oreUJvSm84elJpMzh1enJ0VGFDaXBFVkNqWHpyNVllMFJXeVh2WHRyWkNZ?=
 =?utf-8?B?QlNGMWZETlFla3BkcTlFTlpQZFFRQjFhdDZSSUgyeXNIcW42dEJFcytyY3c4?=
 =?utf-8?B?dEpjR1VSVXh4OVN5a2UxeWNUdVMxTWs3Tm82VS85c1h0THhoT2FuYmwrOG1C?=
 =?utf-8?B?TXBHbnVYWDBiTVpmRmZhci85NTJKUE5icU5aWlVSODJZTU1oc241R1daWXR1?=
 =?utf-8?B?RWdycXhpcjdLRWVEczI1djBONlZCeVlJWXhCRjc5ZmhlT082K0VhN0g1NGNX?=
 =?utf-8?B?M3poTVMzeXRCKzZNV2c4NnBIQStidUdLTGRCZEJkR3BadCt5aSt2b0x4SjJX?=
 =?utf-8?B?SzE5emxhWXQxdnllcmx0UGN0dU5zVkpoNlFoRXRQVmJHdjhmR3lsNVJ6dzZ0?=
 =?utf-8?B?UFFmR2ZEdDlIa0ZMQWhIL2VITlkwL1YxV0JkQTBnVy9yVDlzWDF3YnNZNmpF?=
 =?utf-8?B?ZW1Kc1M2ZmNtSW9EbGRQRnVlSHhEQUVpK1Y5YlBjVktwZTBVU1R3WkV5NUtQ?=
 =?utf-8?B?QUo1d1AzVDBvQTgwTmlEVU5LVXpiNnJMSFNYZFpnQkhUekFpY3dIakM1dEx2?=
 =?utf-8?B?UFNJajFzUEpiUitjUU0vNVRZZW9LY2dHcWR0VjFmeEw2S3N1NVlLazNxUmlV?=
 =?utf-8?B?Z2RXeG9ySXpzY2EwTFFlM2dLVTN4VDI2OGVaWDdPY3o2N21OdXNWeWduU1hC?=
 =?utf-8?B?YkpuKzBReXhZR1dqK3YrVmQ5NDZ4Tk9aaEtJK0trRUVMNGFDeW1sbVg0ZGFs?=
 =?utf-8?B?L0dadERsci9MVE9RbWxrVGoyVHRFL2gxYmtURitnZU1hejlzNGNGNW5IYlA3?=
 =?utf-8?B?UldBbVBYbzczWWl6eXZiVDlZcjlBTGJGYVByU2l0NGJiR3dwUWtpbXpvNGFr?=
 =?utf-8?B?SW1ueDlNL2U4OXNLcVo2NE5jekFFN21IMVhicVN0UVd2Y0w3SU1kb3NuNEto?=
 =?utf-8?B?Misva2VaTWc5bVRzczE0R0hCOEIwcjRXYlEvYm0vZ0s3clphSmxzaGJhVm9K?=
 =?utf-8?B?dGx2bnVOdmNFU0EwU0hiWTFaMzJlL2ZBZHdtYTBwSzJtODhNMjIwQ05lNHNW?=
 =?utf-8?B?RW9iZDlSVXcxaVpVSDNYOVZhdThuV0F2VCtjU21hYkMrdXpQS3lBcW1DNVls?=
 =?utf-8?B?NmtxSjJmM3V6eDRlUWFRRnkvNlg4MkpIbElZOFRoRTg2MStMOFFJNnhWcVZh?=
 =?utf-8?B?ZEc3T2FUNjNPUjlJMnE3ckZLR2NaUXNhcDlodDQ4NGRuRkszbkE2VGRpS2p4?=
 =?utf-8?B?dENXc3pRSjBaYW94cFJKZTFndlpXVDloelN3NDBBRDdnZ1Y1bm5MREt5Z2xi?=
 =?utf-8?B?cEhibkNwRHlNMlRaRzBqZDlWOWVkN29yc1U0TXd2djFzRk0wUko0WWRQOHpN?=
 =?utf-8?B?YXlNUG02MkVJYUpCN2NHUjdtSDNEM0dSdlJWQzY2VEc5RWUrR2ZHTmJmUVVF?=
 =?utf-8?B?alBVU3NYUCszZmsrTGtscWFvQ1ljaEtwbVFhTlBRSmNUb2wwTiswYk9jL1VU?=
 =?utf-8?B?RnZ2MXRkdEl4c3liaFB3cUU3U2RLTDhFMU9kTWZZMmRhRmQyeUcycXB2eEtS?=
 =?utf-8?B?L2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 08b4e07d-d051-4a00-e967-08dc3911ffef
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Feb 2024 10:34:25.3980 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6Bpos3zPvoDIlXnYpb3hAQx34Fmr+jjbzMG0tJY+/42/Iw+BAIhschmxBEJ0qgFK0I6VnSC+YCqTPI+FgBEyalhWY1kVDm5pRTCZhSc99TM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6204
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709203296; x=1740739296;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=w2eucrFhY/2O0P+fUWTX6bexMKjE88Qz/gzJ6jScYlA=;
 b=KtUQfwV6C5Fdpgrrr4RZeWdfLGjJR3d5g0MMydKF6GKXX9hNOQOPx/9B
 Lm4dAkhbH5hFUcnBK3U64FZ07QD1fYPZMzk94YZs3073mw2YMiFevIg+n
 jRjCMn2L8KLk7G/t1GYc+EyB+zsQsLu7NkkKXo0m7RnXoI/JnIWGUAwAS
 u3W0kqKoh9fAMLduLGYHhU5v5PKrrUP3jXPsjcUWo0YsH8llKIr9MazGm
 TnfyNJZR87T+LAuJWqwO2jyfmu1/f+zG4WPOjGouNSTK2sBe55Rltlqvl
 c5yEQmulxOS47tV0gLmc5CGZdxjdGzvJFKbD+AvnSCNTc+utZlfCN7AyS
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KtUQfwV6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: move force
 SMBUS from enable ulp function to avoid PHY loss issue
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
Cc: Dima Ruinskiy <dima.ruinskiy@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2/12/2024 11:00 AM, Paul Menzel wrote:
> Dear Vitaly,
> 
> 
> Thank you for your patch.
> 
> Am 11.02.24 um 16:12 schrieb Vitaly Lifshits:
>> Forcing SMBUS inside the ULP enabling flow leads to sporadic PHY loss on
>> some systems.
> 
> Please list the systems you know of.
On some Meteor-lake systems, we also suspect that on some legacy 
platforms this issue happened with some low probability.
> 
>> It is suspected to be caused by initiating PHY transactions before the
>> the interface settles.
> 
> No new paragraph is needed here. Please do not break the line, just 
> because a sentence ends. (If you use paragraphs, please separate them by 
> a blank line.
Will be fixed in a v2.
> 
>> Separating this configuration from the ULP enabling flow avoids this
>> issue.
>>
>> Fixes: 6607c99e7034 ("e1000e: i219 - fix to enable both ULP and EEE in 
>> Sx state")
>> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>> Co-developed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
>> Signed-off-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
>> ---
>>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 19 -------------------
>>   drivers/net/ethernet/intel/e1000e/netdev.c  | 18 ++++++++++++++++++
>>   2 files changed, 18 insertions(+), 19 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c 
>> b/drivers/net/ethernet/intel/e1000e/ich8lan.c
>> index 717c52913e84..4d83c9a0c023 100644
>> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
>> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
>> @@ -1165,25 +1165,6 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw 
>> *hw, bool to_sx)
>>       if (ret_val)
>>           goto out;
>> -    /* Switching PHY interface always returns MDI error
>> -     * so disable retry mechanism to avoid wasting time
>> -     */
>> -    e1000e_disable_phy_retry(hw);
>> -
>> -    /* Force SMBus mode in PHY */
>> -    ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &phy_reg);
>> -    if (ret_val)
>> -        goto release;
>> -    phy_reg |= CV_SMB_CTRL_FORCE_SMBUS;
>> -    e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, phy_reg);
>> -
>> -    e1000e_enable_phy_retry(hw);
>> -
>> -    /* Force SMBus mode in MAC */
>> -    mac_reg = er32(CTRL_EXT);
>> -    mac_reg |= E1000_CTRL_EXT_FORCE_SMBUS;
>> -    ew32(CTRL_EXT, mac_reg);
>> -
>>       /* Si workaround for ULP entry flow on i127/rev6 h/w.  Enable
>>        * LPLU and disable Gig speed when entering ULP
>>        */
>> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c 
>> b/drivers/net/ethernet/intel/e1000e/netdev.c
>> index af5d9d97a0d6..8fcf8f11f5a4 100644
>> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
>> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
>> @@ -6622,6 +6622,7 @@ static int __e1000_shutdown(struct pci_dev 
>> *pdev, bool runtime)
>>       struct e1000_adapter *adapter = netdev_priv(netdev);
>>       struct e1000_hw *hw = &adapter->hw;
>>       u32 ctrl, ctrl_ext, rctl, status, wufc;
>> +    u16 smb_ctrl;
>>       int retval = 0;
>>       /* Runtime suspend should only enable wakeup for link changes */
>> @@ -6696,6 +6697,23 @@ static int __e1000_shutdown(struct pci_dev 
>> *pdev, bool runtime)
>>           if (retval)
>>               return retval;
>> +
>> +        /* Force SMBUS to allow WOL */
>> +        /* Switching PHY interface always returns MDI error
>> +         * so disable retry mechanism to avoid wasting time
>> +         */
>> +        e1000e_disable_phy_retry(hw);
>> +
>> +        e1e_rphy(hw, CV_SMB_CTRL, &smb_ctrl);
>> +        smb_ctrl |= CV_SMB_CTRL_FORCE_SMBUS;
>> +        e1e_wphy(hw, CV_SMB_CTRL, smb_ctrl);
>> +
>> +        e1000e_enable_phy_retry(hw);
>> +
>> +        /* Force SMBus mode in MAC */
>> +        ctrl_ext = er32(CTRL_EXT);
>> +        ctrl_ext |= E1000_CTRL_EXT_FORCE_SMBUS;
>> +        ew32(CTRL_EXT, ctrl_ext);
>>       }
>>       /* Ensure that the appropriate bits are set in LPI_CTRL
> 
> Why is `__e1000_shutdown()` the correct place, where it was in 
> `e1000_enable_ulp_lpt_lp()` before?
First of all because forcing the SMBUS is not related to ULP enabling 
flow, but rather a configuration that is related to shutdown. Secondly, 
moving the function to shutdown function allows enough time for the 
interface to settle and avoids adding a delay.
> 
> 
> Kind regards,
> 
> Paul
