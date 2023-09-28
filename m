Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 532EB7B27B2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Sep 2023 23:47:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E61F3414A4;
	Thu, 28 Sep 2023 21:47:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E61F3414A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695937635;
	bh=EKUFdT09IscTTmyovxlsaAiCZSjlSVUIhbyQri97iqg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UglMJNOsOjb5eJxRh0s1boRmEMcYSuvMMgPdvOciepwRMaNSnVKMFuXj2anikT0WW
	 b94Gi4+0H6nsCEvnpOo9pC22JjVklPYj+L4aoJcVqcn4pB+88EvO6L5MyczGNcXxhF
	 vL2IJ5v2tAKLcOaast7I0gD7HqNgUaKrUSUt1xP3Qw8lcL9ov5J/QDyUx+cRuNnoaq
	 erGCdwlbcKacmc+yx+A/HR7iBxt76q94+vFVxpOgzVcqCv6cCMBEi9ssptdl+jg+vO
	 +M7otyvbQinHSHX3T81caCr5N3X5mWuwCQliSLcVEUtlmrtzFnSWeBuFscy97FRZbZ
	 5OfpDphjsq6og==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PHBCOPgiGR_j; Thu, 28 Sep 2023 21:47:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B5199402C3;
	Thu, 28 Sep 2023 21:47:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B5199402C3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 627E81BF20D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Sep 2023 21:47:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3970E42D1D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Sep 2023 21:47:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3970E42D1D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KVlP0DgMiu9L for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Sep 2023 21:47:08 +0000 (UTC)
X-Greylist: delayed 425 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 28 Sep 2023 21:47:08 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 360A242D17
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 360A242D17
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Sep 2023 21:47:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="788486"
X-IronPort-AV: E=Sophos;i="6.03,185,1694761200"; 
   d="scan'208";a="788486"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 14:39:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="996720048"
X-IronPort-AV: E=Sophos;i="6.03,185,1694761200"; d="scan'208";a="996720048"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Sep 2023 14:39:50 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 28 Sep 2023 14:39:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 28 Sep 2023 14:39:49 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 28 Sep 2023 14:39:49 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 28 Sep 2023 14:39:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ek1L1/YnKQt6UezyLxKAiTXzxrbzbf4neInwVPE9460S0lxRPo1mJ5dwadyBaGaqHuFQpm0wMMo9cEYjQDkbVjRu9P8h/zw1Wm3QpkatrNBuOpLYwHi+VuN1xlatDdTVmYbYJNQHu281wP3+1ZJbhavlTGRrPzg9SPpJanaP/bqcIxE88e1j7MLsHKCm8BVChTQ8w+5j1Z7aKB1flGpODEJbijcn8nDGai2YMhXzu1E9uUJq789t0kvAzrCPKwwYaN2X1QxIKyudl6Hly4aDnvE4QO1zgIedR68ZCFpGHGgocRpgp8LvB12fF82n7vo43MnlZbC2kNmdxoeghbWIcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pX/z/NEVDPy9FadpDd5DGFzKUZv2LJOihxh6TFzzbG4=;
 b=MuQs6K6PxbuHabeeCfN0Oq0ownJSWhm1iPYkfsihbGYRfp7UcRPmBsSS5FSBxl2bc4NsuZfKz10FFj/S3oaJrpB7eNX8luqvNitOJkbAo7Xw4FUtXNtYbazSXel7yiUMpM/AgeLUkhe8dzUVt9DRUcxtcXRTABwuRXFDKQoWo6s5VQQCM5PHFzv7Oxw7m/x/Fyw1bVCowll2TqzgYsJw43w1lyWG4jYvIxz8IzUzOvXZutsXE/vSzyhF6Xib3RSA+TQSWnhPrmGCceUFEOV13VPPNqN0Mu0QJx5pHHj/+E2GUKiNgapQ1nJdqdIUZ14kAJDdVpf4EZF6E36u9SLyjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH0PR11MB4792.namprd11.prod.outlook.com (2603:10b6:510:32::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.31; Thu, 28 Sep
 2023 21:39:47 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::ed7a:2765:f0ce:35cf]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::ed7a:2765:f0ce:35cf%5]) with mapi id 15.20.6813.017; Thu, 28 Sep 2023
 21:39:47 +0000
Message-ID: <e34287a6-6ecf-55af-b2df-b14ec7801a16@intel.com>
Date: Thu, 28 Sep 2023 14:39:42 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Konrad Knitter <konrad.knitter@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230927133857.559432-1-konrad.knitter@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230927133857.559432-1-konrad.knitter@intel.com>
X-ClientProxiedBy: MW4P220CA0028.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::33) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH0PR11MB4792:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ba4c256-a87f-4718-e060-08dbc06b6fe2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uj5jWJYn8ceUiOieQV9NPPEKnWUF1jmuIhY8iXXb2JfRrE3V5IY795JmXufCssuR3JRr+ObNvbJgQOVN+mVWFFmR9+/TLd6erhNbO+M2q3OVL7CV+OWW5ezez6xVcW886DviAF43sAUoCqiyIEX6YzAGgm7hQgkMmxjY0xtx0/o0Rekwh9uC4oCRy+RIe4Gw44ydmL8ZR2ntVCAv9D/5YuVuwO6LOLNoZONlCO9U8EUSCGh4o3QjsNkReEfYrdhV08j4DMrdq9/zOmUAjm5eJkVB4Md5WuuvyTB2P3x7YdESk6IgoyU98HmfpLIfxr2Av0iIHf+NG4yHY8jzJQpBUPbHiAiPy7FzS0G/c/cqN2gE36qDNILa+pe7UD+DyTNmETDqFbGAnjE5u+RkuEbiSWyNNhUaN9m8v/NSpGdbmJfgWAm9m0Kk8cUe1Q23XJCUI3xuacvskGw6EmYz+xNIhTq3Lg4SuznpqylKxJLkWZJEHB4Fct8vAT5AFhrMoGIb2yYBjWuroKZ6RL9NCUAsKwrieHGHzsM8vL+UrPAWk6CbsnmoRTAgh0u2Cs4q8HEBETEGXHuV2ej31Ig+c+fMXdgz+uRPFFNBQfcQBcxIpQCA4DuVOeLzJREc7xJPQMAA21r8VFot3J5jLML4ZsFJYg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(39860400002)(136003)(366004)(376002)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(6512007)(6666004)(66556008)(2616005)(66946007)(478600001)(66476007)(54906003)(6486002)(53546011)(6506007)(316002)(41300700001)(2906002)(5660300002)(8676002)(8936002)(4326008)(38100700002)(31696002)(86362001)(36756003)(4744005)(82960400001)(26005)(83380400001)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bXk0SS82eGN2bmRIdmFsbEVXTzB5Qm9pNzErbmx4dUFNbTZOZ3loODdnZHpa?=
 =?utf-8?B?YWtway9jK3p0NHVURUdJT3c0TTNhYUpVQkRWaHNqazA3Vy9OcVcwUzlJOVp4?=
 =?utf-8?B?TDdFc1pkWUprem9lK3RxNFFOWnR6dGxZWGxpOFR2TWRIOVE1UHlQQzM2T3M0?=
 =?utf-8?B?VHNYczFqR29jaWdzaU1XZ0lQS2pUMytEWllYWm5WR0ZhZUYrbmJsY2tVNEhx?=
 =?utf-8?B?WTdRTERNYmFNUjIyVy9wQ01BWmwvU0pzOFpUbnFzSmhkTUxBOXpFM0QrTVEr?=
 =?utf-8?B?aFBKR3VsRTdYek5OUUVlbUJUVk5OejdxL0Q2aTF1c1IvWVdQRm9UVEtwNlA5?=
 =?utf-8?B?eUdtYy9wQ2JqcHJIWHkyL2lUQWNtbm9oYlFiYVAzQ0lHcElQbmJFMUVOaHIr?=
 =?utf-8?B?T1haWFVjT3NTVnl5S0pNVDEvbURMZjRoREowOFNGSjhjdVZja2dzNjU2UEdR?=
 =?utf-8?B?MmVoTko1MUYyeFlvcTdiakhlNHVXanhTd1lOVnlPWUpmd1hDcm9rNGcxZVRW?=
 =?utf-8?B?MCtSN05WYjhoaTJLa29iRzBJbW5wOVJhaWNKQzV5cjhCbDdrWmhSZnFSWWlQ?=
 =?utf-8?B?eUxNbXljWExKRjRLVFlIc2lpdFV5cTVzVk9Wakc4bkp5TklVa0o2RjlNNU9a?=
 =?utf-8?B?ZnJrUVRZQy9lTUJyWUhuNktJY1N6NDJ5bktsVVJUZDhvaTBVbmtNaXhPNHha?=
 =?utf-8?B?R1Q1bUxuNm94TDRrR013RTRLODZ0YjNZTklQZ3k1MElhRHpZc2ZrN1NMZ1VW?=
 =?utf-8?B?ZkpkTDJ4Zm00SXVyZk1oSXhDbEVwODA4WC9GSGZKSlpWcFM1LzlCQWwxTjI5?=
 =?utf-8?B?ZlNHekdLREs3UWRWRkphMStZNU1ONXpkSVVtbzJKTEhJZzR5ZzBRdTJWcVBG?=
 =?utf-8?B?TXdyQzZDMUVxc0hFS1BtZFlxM3lTL1l6bC8yeFF1SnhiUldnTjZuYVNIazRw?=
 =?utf-8?B?WnpPakJxNmZaYTJ3c3dBTm5kMkZPeUdoVytZa0lwMVpkdytyY2pENVNDcDdq?=
 =?utf-8?B?NjlnU2NjWVUvWWZyZzR2TG5mbWI4QXp2TDk2ODNYRGo3QUtZaXlHVFpQTkxv?=
 =?utf-8?B?WXlqL0Q4dE1qc0hkMU5qY0JPMFhnUzlkbC9XQVpsZ0pweURLa3NwWk9jVTVS?=
 =?utf-8?B?NWJPUGp4L0phUXU2YzRQTzczRGVtV1lPcmRYZGM4aFY4blk0bW5QdmVJZGlL?=
 =?utf-8?B?NVpzeTc5cUZ2MEd3eWljYkd1NHhQcFk1Rm1IVVBKZ3dzQ0RUYnlrY1JuSGRw?=
 =?utf-8?B?QTBaenJibzUrOWhJTTNJazVSaS83czF3NXhOUkdSRHdGbnVMMUtOQzZSd0Yx?=
 =?utf-8?B?bGk4c3FtMGxGblBoNlFpall1bmV4YnF0VGdSdlFxaGhIM2xTOTlQQjBEbHhz?=
 =?utf-8?B?OFRUT3l2dytlRmEyVjZ3NjNtUDFIVU5YU0UrVW5JM2d0L3BZY0NjWng2NUJZ?=
 =?utf-8?B?b1VHYm1rSy84TE9ING1LTUxiQjh3REVHbnpnL1hORWM1aFY5cm5RVkRTL2Zy?=
 =?utf-8?B?dWN3S2p6YklweGJoUzVFRmZmdStiUjczRHFQd2R3ZXh6azVwTFNOR3NwU0Ft?=
 =?utf-8?B?ckZnMWtycUNLOTZKaG5ub3pJTU5Ld3g2emFhekN1aGNzemJra2ZGdm9zVWlt?=
 =?utf-8?B?Sk9uYnpXVDdxeFV1bzRKNEE3S2JFUUxKaGxwTzdQT2dCZTNlOERQNElHemIy?=
 =?utf-8?B?TnVmakxnbGZwUGJESWYyTjlsNUh3ejlTWERpUGJ5Y1NiWWRUaWRnWnZGUmQ2?=
 =?utf-8?B?MXBQTEdkTVZ1WlRQRUZ3NE9nSnNxNm4vWERTQU9ITmJyN2ZRaThjV1Jnaldw?=
 =?utf-8?B?cXZJTTFHUVBtb3dFK2dLZUNoSlN3dExHbUt6Q09wL295djNDUGtXeWUvUU5k?=
 =?utf-8?B?anRwQUFxQ0FmaTJCWkw1TkdRcVk3ai90Z1ZJRTBLU2VXOCtiZ1VQUnBJK2pG?=
 =?utf-8?B?VmswcXVvamtrUXc2emVBZWkyeEFTNHpkdWx3WXQydVRMWUdGMU9mTHNURzZ4?=
 =?utf-8?B?VWZSZVFwQ1FaZDFXY0FVQXpjSlk4bUFtWEVMZXVBdURNMlRPdDB0VW1UYVph?=
 =?utf-8?B?ek13dlpsZXRFemhoNHp4QVoxQkZwK0M1V1FHMnRaeFBKc1hqTW9xQzkvTkpq?=
 =?utf-8?B?QlVWbjcxOTArZGRidTNUbEQvNklwTit0RzlxcWsrSGp4RzBWN1p4cTBWaHJ1?=
 =?utf-8?B?Vmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ba4c256-a87f-4718-e060-08dbc06b6fe2
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Sep 2023 21:39:47.5933 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KFy/ULVGnT85pk8ZTNW1/neC2G3/yWT1+ceB4vgDQew2O+RqXFcvRYtWSswlTLbUIMyMyFcIT0xabNpENH8QrSeu5eZhE7bhv1yHMQNiB54=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4792
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695937628; x=1727473628;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cV9LbZhfV8WqjrQGPHe2W5v68ebMOznxKip1unUJVEQ=;
 b=HC/5aA5YdQVpNV5G7tyKAOAijzWJiqavIhExtt8rgTDTchZLYh81au1y
 SAa35V15+RR0OtFuNk4TigkQ0V5vaWj4FHMmo1STxXHW0foRCO4Xx08GC
 +22CzAaiqoq5jXa+f2k7pOeIR9KQYcc1UzbEQjRoMHfPOKbAeYvYgFLFu
 ZwR8Fb/XeOMgr6kWIyvxgT346Nfa11MW54y7SrrfB/QvRvi1xXZEjiFfn
 XRHeSJV93iweHPgQrHyXg+ubWSGGPbv5SQbT89IuxkBLGBDYDgVSHrNt2
 rRMdjGSmIzU0SivggFAtiRDYlqsYAyFBw85UwU564cMXaBLqKfMCWRxTV
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HC/5aA5Y
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: read internal
 temperature sensor
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
Cc: Eric Joyner <eric.joyner@intel.com>, netdev@vger.kernel.org, Marcin
 Szycik <marcin.szycik@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Marcin Domagala <marcinx.domagala@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gOS8yNy8yMDIzIDY6MzggQU0sIEtvbnJhZCBLbml0dGVyIHdyb3RlOgo+IFNpbmNlIDQuMzAg
ZmlybXdhcmUgZXhwb3NlcyBpbnRlcm5hbCB0aGVybWFsIHNlbnNvciByZWFkaW5nIHZpYSBhZG1p
bgo+IHF1ZXVlIGNvbW1hbmRzLiBFeHBvc2UgdGhvc2UgcmVhZG91dHMgdmlhIGh3bW9uIEFQSSB3
aGVuIHN1cHBvcnRlZC4KPiAKPiBEcml2ZXIgcHJvdmlkZXMgY3VycmVudCByZWFkaW5nIGZyb20g
SFcgYXMgd2VsbCBhcyBkZXZpY2Ugc3BlY2lmaWMKPiB0aHJlc2hvbGRzIGZvciB0aGVybWFsIGFs
YXJtIChXYXJuaW5nLCBDcml0aWNhbCwgRmF0YWwpIGV2ZW50cy4KPiAKPiAkIHNlbnNvcnMKPiAK
PiBPdXRwdXQKPiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT0KPiBpY2UtcGNpLWIxMDAKPiBBZGFwdGVyOiBQQ0kgYWRhcHRlcgo+IHRlbXAx
OiAgICAgICAgKzYyLjDCsEMgIChoaWdoID0gKzk1LjDCsEMsIGNyaXQgPSArMTA1LjDCsEMpCj4g
ICAgICAgICAgICAgICAgICAgICAgICAgKGVtZXJnID0gKzExNS4wwrBDKQoKY2hlY2twYXRjaCBy
ZXBvcnRzIGlzc3VlczsgcGxlYXNlIHJlc29sdmUgYXBwbGljYWJsZSBpc3N1ZXMuCgo+IENvLWRl
dmVsb3BlZC1ieTogTWFyY2luIERvbWFnYWxhIDxtYXJjaW54LmRvbWFnYWxhQGludGVsLmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBNYXJjaW4gRG9tYWdhbGEgPG1hcmNpbnguZG9tYWdhbGFAaW50ZWwu
Y29tPgo+IENvLWRldmVsb3BlZC1ieTogRXJpYyBKb3luZXIgPGVyaWMuam95bmVyQGludGVsLmNv
bT4KPiBTaWduZWQtb2ZmLWJ5OiBFcmljIEpveW5lciA8ZXJpYy5qb3luZXJAaW50ZWwuY29tPgo+
IFJldmlld2VkLWJ5OiBNYXJjaW4gU3p5Y2lrIDxtYXJjaW4uc3p5Y2lrQGxpbnV4LmludGVsLmNv
bT4KPiBSZXZpZXdlZC1ieTogUHJ6ZW1layBLaXRzemVsIDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50
ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEtvbnJhZCBLbml0dGVyIDxrb25yYWQua25pdHRlckBp
bnRlbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcK
aHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFu
Cg==
