Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A2C8D2992
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2024 02:47:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4D7338201C;
	Wed, 29 May 2024 00:47:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Akl-Ij3w6hoN; Wed, 29 May 2024 00:47:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7064382009
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716943661;
	bh=Kp94hdDVSHuHqQkmxxeUP2ZSIiYSIVg6hKiT/Q8UFdM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Z1lGxjVSCMLo56nCUz1spy4rDbFUK+OZpf01++0eUsJ4vO9qfet9IzD/pTAp2Z3a3
	 MWclN9wCMOUYkTQXLKvr3+gYe62bbpdaVtklpCssbp1RyB939XSc8c5unTC2rdtfun
	 DOLjIFJTGktlbjybksssxRsNymZNV4gHB69uDWcVG1vIbmE1qp+Chh+S9wuUAVgrTb
	 z4jbFpORtMt99rOaFzk096D4aUA2ioZS/nYRsSSlHWkwTat4jaAsqeXyxsPP8UStO0
	 YKQYrsOaJBALKeWPo2eCmkDL4cQu7DeAXRqcGpSNzy2PufGRbLL+Cwbf8GX6rnel71
	 awogI/RB3FVZA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7064382009;
	Wed, 29 May 2024 00:47:41 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D990E1D2F16
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 00:47:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CD0608200D
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 00:47:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y-REJOxJ6Z4M for <intel-wired-lan@osuosl.org>;
 Wed, 29 May 2024 00:47:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6A7E982009
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A7E982009
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6A7E982009
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 00:47:37 +0000 (UTC)
X-CSE-ConnectionGUID: QSEUpDGHSCiXAngaZeH+nw==
X-CSE-MsgGUID: FWh++8fGT/OQMxeDdVEFjg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="24451692"
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="24451692"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 17:47:37 -0700
X-CSE-ConnectionGUID: S81qjVACSFyTjeKuSGzhGw==
X-CSE-MsgGUID: HKqK7XVLSNqc/mLxhC7Ovw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="35167182"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 17:47:37 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 17:47:36 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 17:47:36 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 17:47:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FY6bwOK7KfyZARSmDVO8RccSvkELov/2pLhgiZijkxvIZS5jcOW8+6ay0072Zwo8hc4IrUwg2pZBNa7dP4ISuYqbjaYGoZhHe7oEkqtIcZr0tD90H8aZ0N5PlUHpoo7aHKgbpiBaSYgVsGrUcMn/qIQEMKSIUEeEclsDN1J92rvnr3JfmTx+TmPbuwIZyyzMueXUKUvgXlKqVP24aP4kK9QfXLafjXZInI8sc5E8Jh71ds/htakjQnGwQ0ZgOljCdo+2ydUJJ0HlDw1h0RbNigsiSQ11n7INIxQhtalG8NnhPsgz+DQ52LUZupOGOwJQ94+5sdaM84+HZhMPI8ippA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kp94hdDVSHuHqQkmxxeUP2ZSIiYSIVg6hKiT/Q8UFdM=;
 b=H/jYHByYkPIeHqdXcNoH9kZB2uAcvooLmu8QXQdnE39XWdg+WeVzgLIpO3LGRdsK3C4R8hv3eZkY7TagG81PRb0SHH16jVnJ+ENaJ7rng5BUy9Z01fg3+lyG4/+U5/f7VpwwqMSD1l0LJyxqwYSPA1jOkG2zGMX8CAG9/pQgurYFPhM4BvXcBBaFTs2GqeX4XV6/nMJL4g62p66yx6+Q0VpEdOn+4pzUnAkYnExGbUMMwEYPURdkZle/xvgEYw4nazpEHVjrT7SAZhwDk5xmmE/SftILeW3T4c8f2MjVj95V6MJkuDLtYE6RHvcBC+ngWrWaJ5q9KgscsWFlCCQ25A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA0PR11MB4575.namprd11.prod.outlook.com (2603:10b6:806:9b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.17; Wed, 29 May
 2024 00:47:34 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7611.030; Wed, 29 May 2024
 00:47:34 +0000
Message-ID: <c4967261-b461-41af-bce4-de54e3538c9c@intel.com>
Date: Tue, 28 May 2024 17:47:32 -0700
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@osuosl.org>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
 <20240528134846.148890-8-aleksander.lobakin@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240528134846.148890-8-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0162.namprd03.prod.outlook.com
 (2603:10b6:303:8d::17) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA0PR11MB4575:EE_
X-MS-Office365-Filtering-Correlation-Id: 85e2cec2-e555-48a6-20ec-08dc7f78edcd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?emp6U0NJOFp1MEtzTHlFYzRzZWV3dW9PUWpXM2x3YkFpYURER2ZBUE9FRmZp?=
 =?utf-8?B?aUEzakVmWnZlY1ltRWN3WnVEVEhQdUVYSVUrUmdmRy9tNTVjSWJ4dWJtY1ds?=
 =?utf-8?B?WXpKR2FOaWVxUHMvcXFSbHRqemZZWVlTRm8vZVJLQlVtc1hTcVBhMGEwTTZQ?=
 =?utf-8?B?NFZlRUFWK2N1a202TU4zR2hFeFp4MHUvcTEvay9LcUFtcHJTOU1lblR2SFFw?=
 =?utf-8?B?eEs1dWRaUjk5MzRGcVU2OUVuQW05dGRpKzNTYy9NY2JqWTJITUk5VldDWURn?=
 =?utf-8?B?R2F0UnlnbXVUMThqVTlNWmZhK0hFWDhEQXNDbXdWK2dRb3FOcm01ckl2ZU0v?=
 =?utf-8?B?cFRZSjRxb05nSjA0ZG5FZk1hT0ZuZFp4YmhSMWkxV2tHSm93Qzd4NE1BSkNZ?=
 =?utf-8?B?NG9oUU9lZDNrVTBRT01RalYxTmU5K0ZlWWpQckhzRHZlSWhmd29pVm5YZVUw?=
 =?utf-8?B?M3o3akkzNnRoTVJSKzF1UllGUzdjNkVBU0tWWGVyM2szQkVLNjNBRi9XaGts?=
 =?utf-8?B?MHRoeU94eDdoUjRaeURpQVV5TXZvNFg2cC9IQ29nS0o0N3ZqenQ3NEltMC9v?=
 =?utf-8?B?VDZUNnI4MWJOUDJTMnVpVW1oVENiTFJmWnpva3cvSHhCWlFad2hTZUkyTEpo?=
 =?utf-8?B?QlliNEh5SlR4OEFZcGcvSzBzVk9pR0w2N1RaeFhoemZhalhYMFlnUWtQc1RH?=
 =?utf-8?B?QTkzeWx0REFGYXlQZG5XaVBLSmNUN2JIVnJXTXpHK2ttdEhCT1NvQjBUbmFP?=
 =?utf-8?B?TFJRS01uK1RxektOUkY1R1JvcFFuOVQ3bWU0cjdaczJBNjFZKzNqQlRReVlh?=
 =?utf-8?B?a3U3RDRNNlp2STRieENORElLVDl6Y3p0Kzd4TS9CdTNCYkkvVmc5K1B2YlE3?=
 =?utf-8?B?Szl2N3hwNDFFT1Y1aHFVTWd0YmdabnRNZDdrdi9UK3NCSlQxL2c3U0FzYVNa?=
 =?utf-8?B?bmEreUwrRUtJc3F4VndEOWpsSExMOWtjQjBuUUJOY3NIQktONTFkYmNaeUwz?=
 =?utf-8?B?aDloZ29oeVZRdE95aHV5WWVCZS9mcHVlV04yc2VXOVhqRklzd3poYmZkYjZn?=
 =?utf-8?B?T2ZGK1l4L2lscGJnNktUeFpPWWd0TjlKaGFFSERaazNYazhvOHh3VUVQRmpk?=
 =?utf-8?B?WGU5S1UweGJOR0RMQlYrNzRiNGtwa3dWVzlNWmpqSkNPQ2N1TW5WdG9oYlRo?=
 =?utf-8?B?NkxVWjRkWGdYSWQ3eWJoQ3RRSDNMd0dkWHd0WDNwVjJLQTEwc1M1ZXBSU0o4?=
 =?utf-8?B?VWRaVGsrSkc1VVplenJweFBveEtGVmQvV3MxeE1aWGEzNjJORlk5SHk3Z1h4?=
 =?utf-8?B?bWRmSFIzVmpGM3JuUVgvNG5LT0owN0JVc2RqMU1neUpNR1hqYms2WnJYZkhM?=
 =?utf-8?B?UXA5L2w1NERYYW9PWEltcHFCdzQrM2VaTnNDT2hyNnB6Z0cyZWFBT05uVHY1?=
 =?utf-8?B?T2MvOWUvc2V3VWFHUmZ3ZmZ0eWlSWnlDU21xZ1VqTWM5YXBNdEVDM2xwYllS?=
 =?utf-8?B?YWNneG5PaEhwMUNCSHY2QkFJMk9mOTMvTXFCcDZkWWR3RGhZcEJ4YkY0UnVC?=
 =?utf-8?B?bDY0ejdnRWtNa1dVMEhnczArOUpCWWw5Zk5QRXZtVXIyVU4zVHJkUko2QzlQ?=
 =?utf-8?B?TzdWR2hKV0RJWTJkZmtQdHpxNWhvSnZPZnNVN3ZLaTgxeHNjNlF4bVdtOXlN?=
 =?utf-8?B?MC9GR21xTUxCTy9MT2llUEVqbUlBMWYxcldLSlUvS2NiaTBQRXVCMjBRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QVVVNkxYYVdvTktyTERWUTJrRlBwRmZTaCsyN0lUTGZQYm1CN1cvbSs0NTJt?=
 =?utf-8?B?M2FIU3laeExYeDU2NjQ3SjJJa0piTjJqVFVVcjRuZWJ2SnI2MEVaeG9lODFm?=
 =?utf-8?B?ek1lZUN1OUpaUFNDQkdtS2thWWZFS0xodTdjQTh3QVY0a044dTVNV0ppZ3U4?=
 =?utf-8?B?dlA1OEFobExvUTJYMjRmeW9WUkI2S3ZWZzNrUkxaZ1RDQkZZeE9Sa3g1NFFa?=
 =?utf-8?B?cnd0UWwyUEZVUVFnL2tnZk04b3JkZEVQMktQdm9zQWNpSG5JbEhSMmVJbkpJ?=
 =?utf-8?B?bjNrNDRMUFV0Wkd5NGRGbitzeTV3ZUMxK2E3RTNpTG9kKzArREtkV1JYejB2?=
 =?utf-8?B?c3dTdnJUMXB4TXNWcTF2aTk5OFdQN3BSc0pTdmhaZnk5ZmU4cGorQ2RYRmk1?=
 =?utf-8?B?dm5OSlBnTnBieTFLT2NFNjhiWVVYdUVXMzRsUHZWWTdvQWx3RG1ZN05xOWpR?=
 =?utf-8?B?a3g0dG1yQm5Ualh4eDhpYTBnRzY0dGFTUVQxNDd2bnhBQ3RoeXM3Z3VkRFg1?=
 =?utf-8?B?azBVNGVZUEF0T0pmcUtnT0VJQjBvNno3clVtOU1UZlc2VGxweVZuTkJmUE02?=
 =?utf-8?B?clU1cGtPTWdma0tkYlMzRjNDTWkzamRXd2ErWU5tUjl1VXRaZWVuUWdrc3RE?=
 =?utf-8?B?N1hqdjFPNll6SFI0UGF5UnZWeDVCcU9NZzRIWEpnOEpJUTg1ZUZZSDBwOE13?=
 =?utf-8?B?a3p6czFJYk9IOWdHY2hiUkZqYkJhZSt2cDA3L2NMMjJqalcxOUFqdmZlL0FO?=
 =?utf-8?B?V25UeFkveGp3UWw0aUI5RjcrakxhVWFOKzlFWWExMXEyY25nU0w5VFE2K1Rs?=
 =?utf-8?B?MXJCQ1p5Wno5UFVyUVY2S29JaEp4UjFmcVBGWlcydisyRkFlT3RrWStiMkND?=
 =?utf-8?B?dEFDUXo1c2lCUTc2OWFmRjRKNU11U2VOZlVYMEtXTGFDOVM1aHMxaHVyVmpn?=
 =?utf-8?B?NHRkTjZLeEJvUGkwV0RZNzBidWk4Q1FwWDlZV1BGdW5YN2xhWHRZMjJ0dmEw?=
 =?utf-8?B?dWgvQUtRTnh3ZTlXSWVUQmN4WDlpakRVNkoyZ1NiOGFaZjlwN3lBMlFocmRW?=
 =?utf-8?B?ZGhXYzI1Yis3Yk41ampsSWViUWJFVGRZK3VCUWNHWkJWU3VLdGpkNjVyZ3Fh?=
 =?utf-8?B?QXBZT1Rodk5ZTnFDVGxWK1NKMWRiNjdZNzNJTWdkUkJVaGxwWUsxRUFwanFn?=
 =?utf-8?B?Y0x6cldNVlZuWmNhanZoWmVmRjZqT1REZVBvN1B4R25UbmtSd3ZQRmRkS1lk?=
 =?utf-8?B?M3o0TWUxdHhPNi9hS2YyZ3M1bmdVQ0o0M1VrcU0xSHhRZEJudXBHRUhZVkh2?=
 =?utf-8?B?ZzBZSW5UVjl6ekNPZXArSDZKQm9NT1lWc2VuQ2FyZVVYRXpVeU5mQjgzNXJT?=
 =?utf-8?B?ckt2VHc4NG0zMnpaalEvTHU1bjFmdTJEU2xlTytaR3huYkZ5TGVtYlNUTVQ5?=
 =?utf-8?B?WThvTmFmc1NBTGpERmZqS3M1NTRUREJJb2JueDEvQmpwYmpCZXR6WEhqbWlq?=
 =?utf-8?B?VFBrdjY0SjBHY05OMFRRNTRlajBQYXJFTzZlNmpnMG9oL3JsdWl4LzJzYmVD?=
 =?utf-8?B?dERIQnRIeDdtN0hONzVRYWlrdnBhKzZyeGVaS0Nqem12QXp3QXlrdVpFWmJm?=
 =?utf-8?B?TEMxYm5ZQ1FZSFV0bXRMZFZscjJGdTdTcnpjaDBpczdJWEtWK1V4VU5VZXEx?=
 =?utf-8?B?WVB0Nm5obllrT1ZQWlNUUnF2bm1qWjU1NU5sejMrRmZZUmtROHhzOGpiV0JN?=
 =?utf-8?B?TVc1UjVUblEwblFNNjZEdEtOSXlzUzRhbUloeUhuR1hETVJzZW9ISUZjWVZK?=
 =?utf-8?B?MXpvSHVHSHJMYkh5VmpVeUN5cmE2VGZiMUNFS3YrYXk5SHQxZytPK2dGUHpC?=
 =?utf-8?B?ZlFiTjVqQUk5WVIwWGxTeVdwMU4wWCtiUGljczBFYVFYK3pxY0lOaXAvcVor?=
 =?utf-8?B?dCtMVC83NXNPRE9WNnRCRUdrN0VGdFJqeHlHUGl3MEhzNTdZcXg5YXBPUTdO?=
 =?utf-8?B?OUJGbXlmWURCSktHbS9zRXV4UWNDNDVYSTR3cjNMdGdkNVJTRGtkVkNSVTlU?=
 =?utf-8?B?Rm90TXJsWVA4UmR3TnNaT3Z0ZFQ2YnRwakdkSU8zaTJVUFZnODZIaVZ3Ti83?=
 =?utf-8?B?eFhudVk0b3pwWDR5SW1HbUFnU3JSR2NZRlBQbzNTM0ROVUYwd1VXRXoyUTVt?=
 =?utf-8?B?Z0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 85e2cec2-e555-48a6-20ec-08dc7f78edcd
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2024 00:47:34.2927 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ziG+ADOSCrQqEe8fgVHYa5/4gqOBGGXbTgcvsP7DSiu0PtSEBJUQKk01upTQh+g4hr6CdlVfloeJ9oRs1LyxrzDYEMj3fid88RDCAUcI0mY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4575
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716943658; x=1748479658;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=hjWUa/IbHlRgeUqKEim9tyL3X7fmo/F7rnJdU7CmDow=;
 b=isEaklWR3MZYcgwo3R+B2hNhGiUW+zQYB9kjFYzKNeeGbpDvhc9mtMHH
 Xw2m/rx7RirghQIR8TYOJuHWofu7tSLbXi6eN8m0UxL+gcKT/IhwJrmoP
 F9RGrYoSqlalGU4jMIIo96LmgKFpTKlfhzEZ+ub4sYDCOua2dzluF16oe
 HX8If07R35ZTb5+LtUAWKMn8XY6+Sgwa9uLn8Cd70v0cLpr6oXqhxOw8u
 Va9zZhQbDbz+VehqLa/AHIH9+k3u6Hi9MTgycsVEYvfh1A7wAe9bOKvoG
 YT2YSbR1ImvU/N+1rQcJaXLLhL8WRHtBX9TqYCQ6FgP5AbWgUzNZsKM4B
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=isEaklWR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 07/12] idpf: compile singleq
 code only under default-n CONFIG_IDPF_SINGLEQ
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/28/2024 6:48 AM, Alexander Lobakin wrote:
> Currently, all HW supporting idpf supports the singleq model, but none
> of it advertises it by default, as splitq is supported and preferred
> for multiple reasons. Still, this almost dead code often times adds
> hotpath branches and redundant cacheline accesses.
> While it can't currently be removed, add CONFIG_IDPF_SINGLEQ and build
> the singleq code only when it's enabled manually. This corresponds to
> -10 Kb of object code size and a good bunch of hotpath checks.
> idpf_is_queue_model_split() works as a gate and compiles out to `true`
> when the config option is disabled.
> 

Could you clarify why we can't remove it? Presumably there exist some
users out there who depend on this (and can thus set the CONFIG option)?
Or is it because we intend to support some hardware which only supports
singleq sometime soon?

This is a huge improvement over leaving it as-is, but I do wonder why
not just completely remove it. Its also a surprisingly small patch, but
I guess thats because the singleq_txrx is a separate file.
