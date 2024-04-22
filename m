Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B38588AC8F5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Apr 2024 11:34:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5D98080EB3;
	Mon, 22 Apr 2024 09:34:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BBYOHUtsZC-g; Mon, 22 Apr 2024 09:34:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7941980FAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713778453;
	bh=bJDH8jdnXLsn4BsdEDsDDJLjyqUFmBKCVgZiKPz4a/M=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=g/RgHQekwwRjo21DHgycOOr1nzBIIW5f46njKNPcdaqDc8gEXbP/Fdz9BBhWQjKMF
	 wRklolOw8KC7vvq6sLYePfZxNf7Eauv0OTd+N8fcvQuzR+1PdEKzpy+6o8ZYIDztl5
	 dbd3p8/iPW3NO44uUspd9vSuxW8bxa6kYIqtvhAWNrkW0gAfpqdYsb/5hedITHmdpT
	 Lfe7Ww6RjpWpqSl5mmvvZXj5/CmOq3uP0bG8eLWcg/3QKB1UTFqOMEVyHGvl9h92Um
	 WrnEv8ihD58L5V94ZLTiPbd0Z8Q6a8DaO5upN3TuV0rD3abzcFi47SM2ZGbvnkBzy3
	 cJ0cO/cR+qr6Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7941980FAD;
	Mon, 22 Apr 2024 09:34:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5B24D1BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 09:34:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 46A78404DA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 09:34:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pisarWxd-LJs for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Apr 2024 09:34:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5439F40133
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5439F40133
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5439F40133
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 09:34:10 +0000 (UTC)
X-CSE-ConnectionGUID: pfacJMi4Qhe8LmGEWLfLmg==
X-CSE-MsgGUID: fwWXvWk9QxmpyBK0C7qv5w==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="20730666"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="20730666"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 02:34:10 -0700
X-CSE-ConnectionGUID: zafISDMvQ3KKXrZ3knKdzw==
X-CSE-MsgGUID: KUcXz4EtShy+sHn1VJDkPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="28474671"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Apr 2024 02:34:09 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 02:34:08 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 02:34:07 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 22 Apr 2024 02:34:07 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 22 Apr 2024 02:34:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UHKijKjwAEd2YFWfzsuV4JR4pZI/Ud/vKNGoRUFK31RBm4ZLmCOkgQAMSDp4sQB2rDQKvGccS85S2EzsHCf+zyhgspB95lXBrN//mHnj7sJRJzPS/l7IDODpgDJQJgn4RR/cn+ZmoOSaGZqQVKAN3luKeoduzpaj1dbS7lkIUSDwbooE5satzp4TwvoY0iJYxSJ+4gAy2M/poM5yIBSecON3kS6TgtHYRVIrMzMvpmbnyOkHhjAOe2Ml3fBJ8RHTb5J3cyhsMrFcE+XMIk53DXBS6z+cnz0VX0Jtu4nTEsKmkkovasddwDI9x2foBmdQSmSPH8mx9OEbOOiw3QlxtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bJDH8jdnXLsn4BsdEDsDDJLjyqUFmBKCVgZiKPz4a/M=;
 b=kN3YLkUl1Ik8FAbDIv7QZ1KHzP6c4VOmG5eEGsMAHSNXf3/og1AB6eSiQ7zXf7qLNwfjXX+A+6zltRbKRYO6lSaqTlp3D/tb8j/XCW0AAtiGb/NuzlfOMe/u0ChlixVzcp4P57bS39T2nBPTxIvXAZ8NdDmFB7agAMGIHQj0R2OHWwG/ZiJOJKG6XoD5MbGWPun1M39aVj3bRQkBc99Nv7C7BONLkvalz1OqXPuUi3wwdcQOkEKnYMxZ9LyAPR7Nd3MagNxmll2Lg2kgGEhxnJ9IpPYIzChRjFVnCZ/PwAcvhQ1BskaH9Lo6DFWcoGld5AVBhENumj0KL6uA30hzZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by MW3PR11MB4729.namprd11.prod.outlook.com (2603:10b6:303:5d::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.21; Mon, 22 Apr
 2024 09:34:06 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b3ae:22db:87f1:2b57]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b3ae:22db:87f1:2b57%6]) with mapi id 15.20.7519.018; Mon, 22 Apr 2024
 09:34:06 +0000
Message-ID: <95a53f2c-e255-4e90-947b-63a499b14a58@intel.com>
Date: Mon, 22 Apr 2024 11:34:01 +0200
User-Agent: Mozilla Thunderbird
To: Rahul Rameshbabu <rrameshbabu@nvidia.com>
References: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
 <20240418052500.50678-5-mateusz.polchlopek@intel.com>
 <871q72fpn8.fsf@nvidia.com>
Content-Language: pl
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Organization: Intel
In-Reply-To: <871q72fpn8.fsf@nvidia.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0190.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:44::17) To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|MW3PR11MB4729:EE_
X-MS-Office365-Filtering-Correlation-Id: b68b708d-8523-4851-4f34-08dc62af5a9b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TWZXRUMyYmJ0SnBLbElJcDNoZVBNREtGYkV1di8xc1dCV0daaWpJcXo3QkV6?=
 =?utf-8?B?YmE4UDBxYVRxR3VCSTJnc1BPUjdvM2xKT2R6OFZGQytVVG53dStmL2FuUzFv?=
 =?utf-8?B?c1ZqeEk4dWJ1Yml6MnlYVkNqVFhBWXl0eEp6eVkrdHdtY29NYmNUUGhoaGNt?=
 =?utf-8?B?d2VrY3JMalpnQWQ3VXpiRDJSYURoM2c3STB2Zk5HVWRMUzY2WUxEMURoWWM1?=
 =?utf-8?B?ZEk2OEYrbEVSYm8wWm5pUnVkNE5yTnk3UXRYL3phbkhPZlc4RWE5ZzBKTmU0?=
 =?utf-8?B?dkM5ZG9IaVBtRER3Z1d0UU4vZW56SDlOWVpBcGFhOE42ekFxc2dCOHBkZmVD?=
 =?utf-8?B?eGdOR2FYajkrT0dESm1WSWI0SzYxOHdVU0c3OURxYUFWWUtZTFBOZFI1TW1j?=
 =?utf-8?B?R3RBbXBwdytpYWtncVM4OWl1blhvRUR5eExFeXAvK0VRclN0ZmRNWHZwT3FN?=
 =?utf-8?B?UXB3bHFJUFgrcjl3amg3TnZIY014OWk4TnZJSU9FZEdQMTN3S3NwRzJ0R213?=
 =?utf-8?B?bCtCRXJIalNTZEovdU9wTkYwSGVqUXZTWjB1MjFkU1Bpd0dKSXNJNnpmdC9l?=
 =?utf-8?B?L1FHODBIemFSSHRqbXdqSWtNTnFpYW5BUmx0U3JjZ05wRnBTU250SS8rZEo1?=
 =?utf-8?B?WGxiUWxZdUt2QjE4cU5QOVBUV2MwVGQyRWdKeDR3WjFKdVVQaktvSlB6dkRm?=
 =?utf-8?B?eXJaN3NIemRNMXlTT2lXZjJKTWQrRnFxOG10aEpjVWFEekt0eVFQbUNNVitl?=
 =?utf-8?B?MlBPeEZlcmhpTWk1UmYwQTRteUJ1RVliWFlrZzFTeUVTQmNONjFBZWYxTDdE?=
 =?utf-8?B?cVRnOFprNzNDUHZDQUtwVFp6cTNRWnhXdldnd2ttWXhYdzYzd0Q2WUZ4U21o?=
 =?utf-8?B?dXdSb2N4TklMMHBRdlh4dGJXTk1BLzhaUHhHYy9pRnlTb3lqeGYyalpBME5U?=
 =?utf-8?B?STRBejBLMjlCZC8zUGlOZ2F0TWtnR3pHcThqNGsvYW9mUU1HSTNLZHlWbVRU?=
 =?utf-8?B?L3dCNGpDbDQvbzN2UG9WQW9BdzBCSjJ3bHUxR2ZjbGVaL3JwNnNnQk1WL1FP?=
 =?utf-8?B?SFJkVEV5Q1lZbmx1NEJEdVlmQ1JXUXpxaVNCWDlwVDlLbDd3UDlQUzV3LzFH?=
 =?utf-8?B?ajBMai9VZy96aXVreW5KU0cvS0pXTHZxcmowVEVLWWFDQ0tHdWJDdHcxUDFT?=
 =?utf-8?B?Y05yQ014UnBULy9udGhIZy83TXgyTVV2aXdsOUZjeFpxaXY4ZEtFdExoN0NQ?=
 =?utf-8?B?eTltcC9PM1ltaFlNNzVRSy92U1gvNDRyTmV3b3pjVW9WcGZ2S0VSK0ZPUlNI?=
 =?utf-8?B?U2F2SnNyUFppZVpIVFhjUnd0T1RMNjlYeEwxUG1IQW9sMjQwcUpuZ3dTbENl?=
 =?utf-8?B?am41dDVUamw4WXVIU291U3lTTi9DQ2dOTHJJdThJY2xoUzJ1OURjSkJKV3NC?=
 =?utf-8?B?dDJTckErMlZsNU9hMnBhVlJMWkxFNkVUSU1qS1VoS3IxeFFka1Z3dlUvRDRQ?=
 =?utf-8?B?VDRpOGRCblhld29BR0Z5UHMzd1MwM0JmV1ZhR3VRRnVJODBYaWN5ekV6SkRR?=
 =?utf-8?B?QTFJUFFHV242TXBNQ2pWVTB5cjlGL2lGWjFwMHZpU3FsWnZkOENSQk1rQkJ0?=
 =?utf-8?B?YmlyaXBZVzlRa3lLVWIrYjdRU3hTd0hJYWIyL3cwb2ZTY05vNGNHejhPRzQr?=
 =?utf-8?B?elVKZDEvU0thOTA2MHZKTUVvb3BMWDV2R2JYcUZ3R3crNUIyL3ZjRHl3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QmZIVC9BVVFReE1pWGZ1WFZicjhKeVNFcFgrMUlMbnJCNVpKZEVpUmpRNVRJ?=
 =?utf-8?B?OTdTOG5Md0RNQjhpRGVqOFYzUjg0OTJwV0x0dkFSOWdWdE1odW1uR2d1cWov?=
 =?utf-8?B?MUIvQWh1M1pIdEJJR3J6cm1aNTMrMVM5QkNpYkJXRVJuMEozdzYySitaMUw0?=
 =?utf-8?B?dE1SS295Zml6cnAvZ1NIZ1JGcXdSbUhCNmdURU5qSzdkY0tKWHBXMXlwV2p5?=
 =?utf-8?B?MXkwZFY4dDllbFQ4SGprazdLdWx2c0laRUxSZlMrZ3NDYzJUSDBwNTFMNzVQ?=
 =?utf-8?B?R0NQaDVVQTdocHgxSWxGYmxIcnNXbE01OE1UMWx4SjhuUXgvWDdSb0crU3VE?=
 =?utf-8?B?VHZ0cW9TRTdHYW9SS1ArZ0Mya3c0bHRnSVBDT0s5VTVaMEhXTWo3MFErWkU5?=
 =?utf-8?B?cWxQdVZNRGlvVkRzNHVwRmY1YnpxRHpjVTdrTyt5MGJvd1p0TnQ5Z2ExVk91?=
 =?utf-8?B?ZFFoVUQvYzVmaEhEMllUVTJKUkdNQ1BjZE1tL3J3NTJwNDRBZWhFN3QwNStB?=
 =?utf-8?B?Wk1jeXRZUmdqVFZDMWZiaWVFUkVEWG4yRDVCWXhaM1pSRUN0OEIrUitLQW43?=
 =?utf-8?B?WWF0ZWNIVDFpVHl0anVoUUtEL0dTZVdqMTlUejZtaU53ditJZHpsdjNLVmFy?=
 =?utf-8?B?eC9vWHJ3VXVnd0w5bkErekpKY2p6QmE1LzNaOFJDcHF2b2t2QmhuOERhTmtu?=
 =?utf-8?B?eDV6YWpkeG5hV2pRbTJPclpiclN0VHRiNTZWSXVNRHowc28vZ2JBWUMzSHYy?=
 =?utf-8?B?UXJ5U2M3ckgvS3BFdUxjSDNaRkVTRTJRNzVqTzdUTUZyQjJraytWMTZLa2pv?=
 =?utf-8?B?dkFjL3hQc3MvQnZkOVBWb0E5QitBZlo1c3ZBNm5sb2lXRXNYSHdNRXpPSFdy?=
 =?utf-8?B?WFRRbHFYTjVwd3FMaHNYVFoyVDFPWS82R2RjMlh2eDEzUzZSdjRnYlRSUEZC?=
 =?utf-8?B?TzFRaE5FSDREY0R2ZnhybG92U0JMY0ZvUk02WUd3VUlCMVFodWwyVVVIZ0xL?=
 =?utf-8?B?bmVibFZIMXNZK2t2Q3ZuY2xrcWdjd3hPYWt3WXVybVhBakloWTRIMVkrMDg4?=
 =?utf-8?B?ZzdOV25PbVI5dEZISy82b1JwNzdYVXVhS0MvSXpJS3BrQklZM3RGL2toZ2tW?=
 =?utf-8?B?Rnd1K1ZFVmNMRU4yVmVXNHVUYjBtaVVyT1E3R1lNZG5YTTI5NFZramtYdmVs?=
 =?utf-8?B?Q1lBYkJKdWpmT3NjUFlSL3pjeGFlbnR0OFZpWWd0cXc1M2RUYUhVeS9RTDBj?=
 =?utf-8?B?bFBRQ1Y1UVQxMmdUcUlPVE9xNkpZelNuVmFRbjYrUlpQMGxqdWtXMno2bFJs?=
 =?utf-8?B?SDhjeUdHcVJOMGh3VmVHTGJ3QWNVbHdlRWh5Tk1COTVqUHppMUg1ZW5VZXpz?=
 =?utf-8?B?TjUwRS9PN0NkTk1VbTNJRklyY0t0NUZwNTlMVTJ2NWlMazdFOXFEU3FUN2dL?=
 =?utf-8?B?OWNpd2Nuem1OenM5aHN3M0NRcjJId0pMRW5zbjYyM1VkWGpFWExtMnV2S21Y?=
 =?utf-8?B?NGIrUk9MUWFvV08rQ2h0UUZxaDhTSUh5d2NvQTVNRmowYU5uZTgyTnpOVkNx?=
 =?utf-8?B?RU81VGRWZ1AvdGZPcitYVEFMYnBxMFlmK2c4OHVaWEVCZ0J2K2YrNllBV0li?=
 =?utf-8?B?UFJFc0h4ZjhMamdpNjM1OWxuaTNibytYNnlUQXNrSVVXTHk5bnlwUjVvdk93?=
 =?utf-8?B?c3NtbndwbUxmZm1kY0x4YmVlZGYxOXRORnVVS29hdXVGQ0srS0dQektHak1F?=
 =?utf-8?B?VUdmeFFJZ0lQcmp6YlV2UnFsNHdXYlBPSW1OMmdtZkR0YmVZVmN5RWlqcU5F?=
 =?utf-8?B?L2VhWE02MVkrZ2g4dUI2c3JSR0g0cGJlNlJhVE5jWjd5aC80L2p5aTJDUWlW?=
 =?utf-8?B?UDBhMG44a2dSanhzNHdocDBKV1U3NE9TTWJCQ0RtSmVyWWw5YkFieHg5R25y?=
 =?utf-8?B?eTZUVWMzZk5PMmxBTmlEMGduR05JSWsrZFowdTZPMHZBdzNXQjdwa2Y0MEta?=
 =?utf-8?B?WnI5NWVQZy9LR3JEZTZaRlhSdzBjYUtrZnMweXUxN0Q3NUUwbE80QnE2cHc1?=
 =?utf-8?B?eFFaK2pheFlRWlR6ZEhOQkxWRnZJaHFNeGsybjBSUjJyN0R2Rk9vQitWTFFa?=
 =?utf-8?B?VndNOUxaaGw3V0htN25JUHNkbGczRUVrTDVDb1dxWElqVXEzQWs4dEJxVTZi?=
 =?utf-8?B?Zmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b68b708d-8523-4851-4f34-08dc62af5a9b
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2024 09:34:06.0425 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xjlW6hfiPwS6QlWTmX9e6bX0zU4Jm+eWzgDe/CajgRAMA7+v1TluTCyIxVfLyvaNS34fTfDMH6DKi2kCLWgl/Oe7mKnEbXfOezsxMha4EwU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4729
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713778451; x=1745314451;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xhF+RAf/BngxKd/KE9NOnckhSJd6JSmPr1XcaMLItpY=;
 b=UtLS1yHCYCAapUlb3pE5VR3DO2ynj22tf7/2sSsNDfTyjTZa8l+VLNwi
 N+WtlmCvJ/TTpqCIMXcNhDAds3t0WqeaRWLEmLiTHxIUh6ltCWkucTXBX
 GzzGWVPzFB6hcZ++nZn+NDocNOy3cfGGYUSScKn3oE6wMhjRL7O5eXHgw
 89K8iL4ldyZ+xR6w3NwKknuLl4zgctRlcz7Jnx+q8rBx85vsV1N8eXzUU
 2xg+2RQ4pr/0DlwQj3XSfV7SspkhxoYY3Vee5URbvz2+L0qjUcDf00e8M
 DQxSTd7UM76k2yU2b9F22DSTeQi+cBcn98zk/rL5NwYc5IAr/dkrGVllh
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UtLS1yHC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 04/12] iavf: add support
 for negotiating flexible RXDID format
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, horms@kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/18/2024 9:11 PM, Rahul Rameshbabu wrote:
> 
> On Thu, 18 Apr, 2024 01:24:52 -0400 Mateusz Polchlopek <mateusz.polchlopek@intel.com> wrote:
>> From: Jacob Keller <jacob.e.keller@intel.com>
>>
>> Enable support for VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC, to enable the VF
>> driver the ability to determine what Rx descriptor formats are
>> available. This requires sending an additional message during
>> initialization and reset, the VIRTCHNL_OP_GET_SUPPORTED_RXDIDS. This
>> operation requests the supported Rx descriptor IDs available from the
>> PF.
>>
>> This is treated the same way that VLAN V2 capabilities are handled. Add
>> a new set of extended capability flags, used to process send and receipt
>> of the VIRTCHNL_OP_GET_SUPPORTED_RXDIDS message.
>>
>> This ensures we finish negotiating for the supported descriptor formats
>> prior to beginning configuration of receive queues.
>>
>> This change stores the supported format bitmap into the iavf_adapter
>> structure. Additionally, if VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC is enabled
>> by the PF, we need to make sure that the Rx queue configuration
>> specifies the format.
>>
>> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> ---
> <snip>
>> @@ -2586,6 +2623,67 @@ static void iavf_init_recv_offload_vlan_v2_caps(struct iavf_adapter *adapter)
>>   	iavf_change_state(adapter, __IAVF_INIT_FAILED);
>>   }
>>   
>> +/**
>> + * iavf_init_send_supported_rxdids - part of querying for supported RXDID
>> + * formats
>> + * @adapter: board private structure
>> + *
>> + * Function processes send of the request for supported RXDIDs to the PF.
>> + * Must clear IAVF_EXTENDED_CAP_RECV_RXDID if the message is not sent, e.g.
>> + * due to the PF not negotiating VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC.
>> + */
>> +static void iavf_init_send_supported_rxdids(struct iavf_adapter *adapter)
>> +{
>> +	int ret;
>> +
>> +	WARN_ON(!(adapter->extended_caps & IAVF_EXTENDED_CAP_SEND_RXDID));
>> +
>> +	ret = iavf_send_vf_supported_rxdids_msg(adapter);
>> +	if (ret && ret == -EOPNOTSUPP) {
> 
> Isn't this redundant? The condition can just be "ret == -EOPNOTSUPP"?
> 

Thanks for pointing.

>> +		/* PF does not support VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC. In this
>> +		 * case, we did not send the capability exchange message and
>> +		 * do not expect a response.
>> +		 */
>> +		adapter->extended_caps &= ~IAVF_EXTENDED_CAP_RECV_RXDID;
>> +	}
>> +
>> +	/* We sent the message, so move on to the next step */
>> +	adapter->extended_caps &= ~IAVF_EXTENDED_CAP_SEND_RXDID;
>> +}
>> +
> <snip>
> 
> --
> Thanks,
> 
> Rahul Rameshbabu
