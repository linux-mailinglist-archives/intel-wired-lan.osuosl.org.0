Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE81363BF57
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Nov 2022 12:48:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 54F2040382;
	Tue, 29 Nov 2022 11:48:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 54F2040382
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669722524;
	bh=xSoS704pg6AOx44lBHOUDJfuTvpg0wCMuZLaoVsMt68=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=j5pQjfu3h07SVKLAo0VyjhS2FBUhXodaPwpLpJxri2rHRzRkkiHCS3g48KbiE86q+
	 vv8KVmMJBSDqoC40+1oJgkWoMyuS5xmCXV6+AYqi8YiCy2kDzy6E7Nd461RdDNXS4n
	 tehNkLQFd4Dgfzn93ukOnKRKA0iF5gVveUQEJJQ57T8IBid56N+NBcO3MzaA0P1/i/
	 5c6BSkmuYbfhhyt5Wu1S2Sf1NzX9PQjDXB4nxI8refj3+hWNO08RQxmm1K2bIL7tfB
	 AMq0b0nQdv0lbYweUABMkWDkotTUzFRa3ir+HR2+Fvm8gsRxjdqalqMAd3J5o5wWmD
	 LhxkJvQWk2W5w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XC1h9NEUcIm0; Tue, 29 Nov 2022 11:48:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D21B40129;
	Tue, 29 Nov 2022 11:48:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D21B40129
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A8CEB1BF2C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 11:48:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8F5AD4038D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 11:48:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F5AD4038D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id th7nlApoIWLg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Nov 2022 11:48:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F7B340012
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1F7B340012
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 11:48:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="294783589"
X-IronPort-AV: E=Sophos;i="5.96,203,1665471600"; d="scan'208";a="294783589"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 03:48:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="972643234"
X-IronPort-AV: E=Sophos;i="5.96,203,1665471600"; d="scan'208";a="972643234"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 29 Nov 2022 03:48:34 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 03:48:33 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 03:48:33 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 29 Nov 2022 03:48:33 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 29 Nov 2022 03:48:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RjrvxHJI7ELbzokLnyKXewvkolwirog+IOW7gBj2TOhS3c1+8Xhz3pjFM6GXgEtDeDPek7+KXGmfJLFM2qDbmGgN//OcccV7ViYxZxEZYpd/FRiL2RcoPbMshtos6uOXAH4JTXReboBK+/3ymO9cZeAv8eH5H/+22/tfXLwXbgR4YER7cLyLuTIPBk1LufLB7ncBl805h3CaqEgq0AtgZ1E2qxxwaAHzoIMWpBJTJcglRwOVZHJq/SYWLlUM27Q0UC9FaOd35/o38krfRp4Q5MPEsR+QxETzG8Lr2V3KLCt79vA8PI7K0NemV5AFVZq4y4LCewEAsEj5I6HxV31+eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5NJTvjdvJPnvTosKuJL80YbZVs0++eHgKHrcJ4IAZfs=;
 b=afx9qMy7FeOWG1vERb5sS4A4ZD9yBIMs1CD2bgDcBUTOF0h6bZtVDi8GNX9y8sEzR/u3CYow2UnHYXHI90jSquJ4iCXd0AVaOY/cvRPGauZ38KA0WRONj5PbkRvf+tV2kDHEm6Bydi+fMLq2EJfpdyOTA+Gm51ir/gYYV5P4nTjbuua/n5SfLbYt1fF97B6PTl9tnit9qvtTlnkmIga/Uzhws4fN3JM6w866SmK52UKPzW+FXf8SDnqiOP/Bw0gv8vUjjLCyTtC3TFSFAG9p516EJmF5pJRmV95tLPh24/qqK044uCtpIGX9kj0OnZCaimZkx87TLLjuCsUuIyoVAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5603.namprd11.prod.outlook.com (2603:10b6:5:35c::12)
 by SJ0PR11MB6575.namprd11.prod.outlook.com (2603:10b6:a03:477::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.21; Tue, 29 Nov
 2022 11:48:30 +0000
Received: from CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::57ba:a303:f12f:95e9]) by CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::57ba:a303:f12f:95e9%3]) with mapi id 15.20.5857.023; Tue, 29 Nov 2022
 11:48:30 +0000
Message-ID: <074d1d3b-41e8-55a9-8c9b-0002e3d7f60d@intel.com>
Date: Tue, 29 Nov 2022 12:48:25 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20221128214749.110-1-paul.m.stillwell.jr@intel.com>
 <20221128214749.110-4-paul.m.stillwell.jr@intel.com>
From: "Wilczynski, Michal" <michal.wilczynski@intel.com>
In-Reply-To: <20221128214749.110-4-paul.m.stillwell.jr@intel.com>
X-ClientProxiedBy: FR0P281CA0106.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a8::7) To CO6PR11MB5603.namprd11.prod.outlook.com
 (2603:10b6:5:35c::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5603:EE_|SJ0PR11MB6575:EE_
X-MS-Office365-Filtering-Correlation-Id: fc18d52b-4dd9-4272-bf4d-08dad1ffa2ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JR2Z7iceu54KzdNxSzXfjD+NzgH1h3ZZjPOwSiKB6LTOwsn8qMiqZ5PQ4o68020XWCKIMZbYO9BE+97n9ewOemqu0OI1JRN9VAcy247Wr9AfaeYYTZHUNXMbzKky3kkR3k+F9ykAZptMbVeAzzQBQDaYiBywspYL3f4vQ/SAQlUvPbv9vV2B3qy17luF9HDmP/OOB5dhdyNa0dFh6kX7dSDOh6MU3nUJZOsikUQA5VwMnJJEr3EvG3qrgcFeHkwuTh3ktufU5ItuO7HnIuu0KXJ1PnmCuC1xMd+euCdehRqYur9jPZoTaOoqoWJdsvQUehiFKbQByVbptQVCNt1jM+jn9YYlvRXPZr0mm50XIaG+yQ27RG03kaPEG7GHU02PmE/mpJz05VkGTz0s++z+IKcC7QRRipkhZyaJRYf+rOu+Hn2+j2lxeHLItqTjp+ppLbiRS4eiCSoasD+GulD+kSjSErq1sPZiyTSjE1ZuM3F5oG5+PIol88Hp5Hp7RUkMp9kphc+15Uc/seGzejA/cYLsEeh/anX4oqO/gdjndqgOBtG/fvZO+92D9Rtp6BmMOL6CtkSSD2MVHP2jUHdz/9Wx8yAEDEtnaYenmlTQfsZ64AdFtfpHZ+bv6O9vnJEy+8YeyINIprQ4uCEcYjYxJGafwK4kIuJ6LHN8ys/1TJxQq3iHI3/C+oRVzWP4ljrQSva4lmAO+EVWdSMCa4wjUJ33xBu7ta1pBhVGnX0a0FI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(376002)(396003)(136003)(366004)(451199015)(31686004)(86362001)(36756003)(31696002)(2906002)(82960400001)(38100700002)(8676002)(41300700001)(30864003)(8936002)(83380400001)(5660300002)(6486002)(26005)(6506007)(6666004)(6512007)(66946007)(53546011)(66476007)(186003)(66556008)(2616005)(316002)(478600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UVdESWFCQzJBc2VMV3ZIUHhSNkhreUVCb21zbmM5RU82UHE5WUc1cG5obG1z?=
 =?utf-8?B?VFNzNWdiaWJOeEtncDlaTGc5ejNjOW9YUHFpRU5JUWdNbERWeldreW9xUGhS?=
 =?utf-8?B?NFp3TDdkV1VicnlrZ0NYOS9mYmZ5d0lTWGVNTnNrVXdLMDNTY2E0R2VDMnQz?=
 =?utf-8?B?NkZXWG5FSjhCeDZhYUMwanlBQVlNZnUxQmthUEtvMzNWMnhtSDdhVGNKQytM?=
 =?utf-8?B?UUlwMEwrTXpnek91ZkhIaHBmRGs2YzhCbnNIcEhFakdpaHN4K09HTURUTmpT?=
 =?utf-8?B?RGtXVWhUQzdaN25kbEE5TmFJdW01dDlleklvVjZFbTBXUzcrNXF4VkdhNHgy?=
 =?utf-8?B?SG04b2pBT3Fqa3U0bVZhVFVYbFJhZ0NnMjg4aFFrSjA1OXhTektSRTB2WXJ6?=
 =?utf-8?B?Um9kcnpyekZ5M3FzNkdhem5RTVVkUHlZanJBMDRNNEI5VUcyUkJEeHg2TU5G?=
 =?utf-8?B?QkVQZzUwdzROVHNIZUVTeTBRRjJkZHNYbkd6NWQrMmRrR0hWN3h0WEdxNzhC?=
 =?utf-8?B?OTNmSE1VTUJ3MDltMHdVVUNJUSthTmF1ZFZRbFpmU1g1bFhvNUgvRHlqL1R4?=
 =?utf-8?B?NGpjRU9KN2xQNGRCRUhhbS9VQi8rOG1NclpaZnFzTlcycmh5M0p5REdoditv?=
 =?utf-8?B?cWF2bFd5S041c0NleUpBaU5ENEQ5Zk16cThGMjVJbXZQbXpLanJ0d29ERUt3?=
 =?utf-8?B?ZWVrQnBtUDhZY3lOUmRRaVpCTzFIM2V2RVBtVk4zcTh4cUlLanVsWVVHN0li?=
 =?utf-8?B?TmZKUHhRd21iWEZqTnJTakp5WWVQb0JmbzdZL0FEcDU3RWZUdExDQk0zcU40?=
 =?utf-8?B?cDlrL0RmbFBtMEVnZmxxRE9OQ3ZxMmg3QmthOUV0OXZMVVJ4Ykd5c0RWZVU2?=
 =?utf-8?B?OEFqOHJWckFOVy9SZzFGSjdwMDZndzRrR2JBRUxDNzQvR1ErN09oVXJDQnMy?=
 =?utf-8?B?OWJKN2xCTk0ySFpzMzZEVnRzM1krK00zTVk1Q2ZHR3VEYnVuYUZzWTFVdmFZ?=
 =?utf-8?B?OTgzUXQrUzFXZTlFSm01WnBORXkwSkpCSjhpUU51bWVYL01hTUNzMEpxV0R0?=
 =?utf-8?B?bGtURUsyUjR4MXlvVTd5YTl3UzgwUjBSc3E4LzBLa2d3SFJFSFk0UXRUZFZH?=
 =?utf-8?B?bmk0ZVJCd1E5TEplVytBQldtN0dQZTc4ZWl6bUlFMXhBSWU2VFlXYXIrNVcy?=
 =?utf-8?B?ZVZ1TlgwekRIenJsNjc2Q1VvZzJURDJ6VjNzZnFqSkxCT0xRSTg1VG9lV2Ja?=
 =?utf-8?B?R3hOc0t4elFPV2YrV0Vrc0pQSkc2OU1qRERwWDc0ckNONDAra2hTQ3hBRjht?=
 =?utf-8?B?QkVxK093aDlQdXlmOVdHT2k4dTkvSENZQWpvNU5Ea3RvYVAzZEJtMmZwYjdN?=
 =?utf-8?B?T1doOEN0Z2h5ZFJPVFlBYy9GKzgwYTZEcmRISER0VVN3T0oxc2FEYnZ0KzJT?=
 =?utf-8?B?Q2VnRVFOYnhxWGNoSGt6RFhESm1IRkJXdGZXR3FnaXhGRGk0NWlGNmRHODhS?=
 =?utf-8?B?cjNBSjNkNnNIYTQwRERzVW8vLzZvMWlwMXVONUs0Ri9mUUgvWllOVW5JQm44?=
 =?utf-8?B?bStzUnRiMTdjYVFnMVFEUkJNNmI2L3k3WDVKQWZzZEhwZWw3dVNLMU1xUzVV?=
 =?utf-8?B?MHZGMTNENU5VMU9iVTVoakd2ZlpFa3RHaGR3cWw1Y243TTl4UytMTzYzZmQv?=
 =?utf-8?B?aXlDYXNha3dSSWNWajRUZEYzaktxMzJuSVVTQ0x4Y21RRzhUMEIrOW1mby83?=
 =?utf-8?B?a0laN1BlTWhHZlQvTmJRTldDUW5XYk1KTFo5NEJtZnhCYmYrWjJoNDhyYnpY?=
 =?utf-8?B?RmZqY1p5RmM0ckw3bjhuem5vUmZZUldTMSt5ZXl3dWJCWkxodTdJWitMUm9F?=
 =?utf-8?B?ZW5KdytYUnFBQ2tIZkFDU1UzTVg2OE5xWUhkczNOZXV1K3pOVS9KQjk5VWp2?=
 =?utf-8?B?Rm5kOFAzeHRsaDB1VzF0M01Db3JzYlQrZVJpeTZPWkU1aTROYzdjU1hJTFRS?=
 =?utf-8?B?b1lET28zN2F3L05DNE9NR1JyZEhjVlc3UHhFYTdGVkJidlVacjhtZHFuQU55?=
 =?utf-8?B?OHc5cnpselZ6WFNqS3N3SjlqNVB4VHVQLzB1RzZzTnFOSE0xbUZCRzNzNng0?=
 =?utf-8?B?d2hmZEhNZVNzTmR5RjArbzlmYnloUTk5WWRZbnptOWN4Q2o0QlFTSFkrOXVh?=
 =?utf-8?B?ZkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fc18d52b-4dd9-4272-bf4d-08dad1ffa2ab
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2022 11:48:30.3470 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ++x7LOXmf9cPTWp9QxIZoeFp1gDJ9hrMQ1eFOjqOxyYapvHuKCTFFx3j31XET77z8Plus25fGS2PtnrfhpxUCvOexKWI/B96CMi/3rRFQl0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6575
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669722515; x=1701258515;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2chT3jVYh2/pQMqh62X6yNj82UvaswP6+nr2UeEGlXI=;
 b=hmmhS3u1py1LvcplyvmlQoCZSCZ4YMSVBJkOw6+7/yhjNte9+CxOWvJ1
 rNGnZIpd7ZOGhBWeB56Kak3W6GuV8L/ve126kzg2JmqFQTkSFXE1CABw9
 SZKFGHWJxkDeXdD7dRUTUHyPS5SXpUOBuf9nGyWwALjqti+UyO6oe4w24
 qO2hQHLZfMxcKANZg0+G5uGg42+OhwpqzWkGkJGjTNn4+7Klo4zOkPXDB
 KKiv/l7020vyjM9WyEoZPsB9ebObE0Bwuztn+nidnXBSMGr+21jrAqYA+
 IjZJKkA1wLNzlJqpXJcFzM1jlGztxX1ibN5vgN+VWdch7GCyYViEgkElP
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hmmhS3u1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/5] ice: add ability to
 query/set FW log level and resolution
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 11/28/2022 10:47 PM, Paul M Stillwell Jr wrote:
> The E8xx has the ability to change the FW log level and
> the granularity at which the logs get output. Enable
> the ability to see what the current values are and to
> change them.
>
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   4 +
>  drivers/net/ethernet/intel/ice/ice_common.c   |   4 +-
>  drivers/net/ethernet/intel/ice/ice_devlink.c  | 142 ++++++++-
>  drivers/net/ethernet/intel/ice/ice_fwlog.c    | 277 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_fwlog.h    |   5 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>  6 files changed, 429 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index d0026161a2b4..8fa18bc5d441 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -2406,7 +2406,11 @@ enum ice_adminq_opc {
>  
>  	/* Standalone Commands/Events */
>  	ice_aqc_opc_event_lan_overflow			= 0x1001,
> +	/* FW Logging Commands */
> +	ice_aqc_opc_fw_logs_config			= 0xFF30,
> +	ice_aqc_opc_fw_logs_register			= 0xFF31,
>  	ice_aqc_opc_fw_logs_query			= 0xFF32,
> +	ice_aqc_opc_fw_logs_event			= 0xFF33,
>  };
>  
>  #endif /* _ICE_ADMINQ_CMD_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index ecdc1ebb45d5..0b3adac13c66 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -879,7 +879,9 @@ int ice_init_hw(struct ice_hw *hw)
>  	if (status)
>  		goto err_unroll_cqinit;
>  
> -	ice_fwlog_set_support_ena(hw);
> +	status = ice_fwlog_init(hw);
> +	if (status)
> +		ice_debug(hw, ICE_DBG_FW_LOG, "Error initializing FW logging: %d\n", status);
>  
>  	status = ice_clear_pf_cfg(hw);
>  	if (status)
> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> index 8843ff492f7f..ca67f2741f83 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> @@ -1488,6 +1488,8 @@ enum ice_devlink_param_id {
>  	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
>  	ICE_DEVLINK_PARAM_ID_FWLOG_SUPPORTED,
>  	ICE_DEVLINK_PARAM_ID_FWLOG_ENABLED,
> +	ICE_DEVLINK_PARAM_ID_FWLOG_LEVEL,
> +	ICE_DEVLINK_PARAM_ID_FWLOG_RESOLUTION,
>  };
>  
>  static int
> @@ -1530,8 +1532,121 @@ static int
>  ice_devlink_fwlog_enabled_set(struct devlink *devlink, u32 id,
>  			      struct devlink_param_gset_ctx *ctx)
>  {
> -	/* set operation is unsupported at this time */
> -	return -EOPNOTSUPP;
> +	struct ice_pf *pf = devlink_priv(devlink);
> +	struct ice_hw *hw = &pf->hw;
> +	int status;
> +
> +	/* only support fw log commands on PF 0 */
> +	if (hw->bus.func)
> +		return -EOPNOTSUPP;
> +
> +	if (hw->fwlog_ena == ctx->val.vbool)
> +		return 0;
> +
> +	hw->fwlog_ena = ctx->val.vbool;
> +
> +	if (hw->fwlog_ena)
> +		hw->fwlog_cfg.options |= ICE_FWLOG_OPTION_ARQ_ENA;
> +	else
> +		hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
> +
> +	/* send the cfg to FW and register for events */
> +	status = ice_fwlog_set(hw, &hw->fwlog_cfg);
> +	if (status)
> +		return status;
> +
> +	if (hw->fwlog_ena) {
> +		status = ice_fwlog_register(hw);
> +		if (status)
> +			return status;
> +	} else {
> +		status = ice_fwlog_unregister(hw);
> +		if (status)
> +			return status;
> +	}

This could be simplified i.e

if (hw->fwlog_ena) {
	status = ice_fwlog_register(hw);
else 
        status = ice_fwlog_unregister(hw);

	return status;


> +
> +	return 0;
> +}
> +
> +static int
> +ice_devlink_fwlog_level_get(struct devlink *devlink, u32 id,
> +			    struct devlink_param_gset_ctx *ctx)
> +{
> +	struct ice_pf *pf = devlink_priv(devlink);
> +
> +	/* only support fw log commands on PF 0 */
> +	if (pf->hw.bus.func)
> +		return -EOPNOTSUPP;
> +
> +	/* all the log levels are the same so pick the first one */
> +	ctx->val.vu8 = pf->hw.fwlog_cfg.module_entries[0].log_level;
> +
> +	return 0;
> +}
> +
> +static int
> +ice_devlink_fwlog_level_set(struct devlink *devlink, u32 id,
> +			    struct devlink_param_gset_ctx *ctx)
> +{
> +	struct ice_pf *pf = devlink_priv(devlink);
> +	struct ice_fwlog_cfg *cfg;
> +	u8 i;
> +
> +	if (pf->hw.bus.func)
> +		return -EOPNOTSUPP;
> +
> +	if (ctx->val.vu8 >= ICE_FWLOG_LEVEL_INVALID) {
> +		dev_err(ice_pf_to_dev(pf), "Log level is greater than allowed! %d\n",
> +			ctx->val.vu8);
> +		return -EINVAL;
> +	}
> +
> +	cfg = &pf->hw.fwlog_cfg;
> +
> +	/* update the log level for all modules to the same thing. this gets
> +	 * written to the FW when the user says enable logging
> +	 */
> +	for (i = 0; i < ICE_AQC_FW_LOG_ID_MAX; i++)
> +		cfg->module_entries[i].log_level = ctx->val.vu8;
> +
> +	return 0;
> +}
> +
> +static int
> +ice_devlink_fwlog_resolution_get(struct devlink *devlink, u32 id,
> +				 struct devlink_param_gset_ctx *ctx)
> +{
> +	struct ice_pf *pf = devlink_priv(devlink);
> +
> +	/* only support fw log commands on PF 0 */
> +	if (pf->hw.bus.func)
> +		return -EOPNOTSUPP;
> +
> +	ctx->val.vu8 = pf->hw.fwlog_cfg.log_resolution;
> +
> +	return 0;
> +}
> +
> +static int
> +ice_devlink_fwlog_resolution_set(struct devlink *devlink, u32 id,
> +				 struct devlink_param_gset_ctx *ctx)
> +{
> +	struct ice_pf *pf = devlink_priv(devlink);
> +
> +	/* only support fw log commands on PF 0 */
> +	if (pf->hw.bus.func)
> +		return -EOPNOTSUPP;
> +
> +	if (ctx->val.vu8 < ICE_AQC_FW_LOG_MIN_RESOLUTION ||
> +	    ctx->val.vu8 > ICE_AQC_FW_LOG_MAX_RESOLUTION) {
> +		dev_err(ice_pf_to_dev(pf), "Log resolution is not allowed! Should be between 1 - 128: %d\n",

This message might be a bit confusing, maybe something like 'Log resolution out of range" ?

> +			ctx->val.vu8);
> +		return -EINVAL;
> +	}
> +
> +	pf->hw.fwlog_cfg.log_resolution = ctx->val.vu8;
> +
> +	return 0;
>  }
>  
>  static const struct devlink_param ice_devlink_params[] = {
> @@ -1562,6 +1677,18 @@ static const struct devlink_param ice_devlink_params[] = {
>  			     ice_devlink_fwlog_enabled_get,
>  			     ice_devlink_fwlog_enabled_set,
>  			     NULL),
> +	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_FWLOG_LEVEL,
> +			     "fwlog_level", DEVLINK_PARAM_TYPE_U8,
> +			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
> +			     ice_devlink_fwlog_level_get,
> +			     ice_devlink_fwlog_level_set,
> +			     NULL),
> +	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_FWLOG_RESOLUTION,
> +			     "fwlog_resolution", DEVLINK_PARAM_TYPE_U8,
> +			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
> +			     ice_devlink_fwlog_resolution_get,
> +			     ice_devlink_fwlog_resolution_set,
> +			     NULL),
>  };
>  
>  static void ice_devlink_free(void *devlink_ptr)
> @@ -1662,11 +1789,20 @@ int ice_devlink_register_params(struct ice_pf *pf)
>  					   ICE_DEVLINK_PARAM_ID_FWLOG_SUPPORTED,
>  					   value);
>  
> -	value.vbool = false;
>  	devlink_param_driverinit_value_set(devlink,
>  					   ICE_DEVLINK_PARAM_ID_FWLOG_ENABLED,
>  					   value);
>  
> +	value.vu8 = ICE_FWLOG_LEVEL_NORMAL;
> +	devlink_param_driverinit_value_set(devlink,
> +					   ICE_DEVLINK_PARAM_ID_FWLOG_LEVEL,
> +					   value);
> +
> +	/* set the default value for the FW to pack 10 messages per AQ event */
> +	value.vu8 = 10;
> +	devlink_param_driverinit_value_set(devlink,
> +					   ICE_DEVLINK_PARAM_ID_FWLOG_RESOLUTION,
> +					   value);
>  	return 0;
>  }
>  
> diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> index 67e670c62091..1174fd889307 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
> +++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> @@ -4,6 +4,165 @@
>  #include "ice_common.h"
>  #include "ice_fwlog.h"
>  
> +/**
> + * cache_cfg - Cache FW logging config
> + * @hw: pointer to the HW structure
> + * @cfg: config to cache
> + */
> +static void cache_cfg(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
> +{
> +	hw->fwlog_cfg = *cfg;
> +}
> +
> +/**
> + * valid_module_entries - validate all the module entry IDs and log levels
> + * @hw: pointer to the HW structure
> + * @entries: entries to validate
> + * @num_entries: number of entries to validate
> + */
> +static bool
> +valid_module_entries(struct ice_hw *hw, struct ice_fwlog_module_entry *entries,
> +		     u16 num_entries)
> +{
> +	u16 i;
> +
> +	if (!entries) {
> +		ice_debug(hw, ICE_DBG_FW_LOG, "Null ice_fwlog_module_entry array\n");
> +		return false;
> +	}
> +
> +	if (!num_entries) {
> +		ice_debug(hw, ICE_DBG_FW_LOG, "num_entries must be non-zero\n");
> +		return false;
> +	}
> +
> +	for (i = 0; i < num_entries; i++) {
> +		struct ice_fwlog_module_entry *entry = &entries[i];
> +
> +		if (entry->module_id >= ICE_AQC_FW_LOG_ID_MAX) {
> +			ice_debug(hw, ICE_DBG_FW_LOG, "Invalid module_id %u, max valid module_id is %u\n",
> +				  entry->module_id, ICE_AQC_FW_LOG_ID_MAX - 1);
> +			return false;
> +		}
> +
> +		if (entry->log_level >= ICE_FWLOG_LEVEL_INVALID) {
> +			ice_debug(hw, ICE_DBG_FW_LOG, "Invalid log_level %u, max valid log_level is %u\n",
> +				  entry->log_level,
> +				  ICE_AQC_FW_LOG_ID_MAX - 1);
> +			return false;
> +		}
> +	}
> +
> +	return true;
> +}
> +
> +/**
> + * valid_cfg - validate entire configuration
> + * @hw: pointer to the HW structure
> + * @cfg: config to validate
> + */
> +static bool valid_cfg(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
> +{
> +	if (!cfg) {
> +		ice_debug(hw, ICE_DBG_FW_LOG, "Null ice_fwlog_cfg\n");
> +		return false;
> +	}
> +
> +	if (cfg->log_resolution < ICE_AQC_FW_LOG_MIN_RESOLUTION ||
> +	    cfg->log_resolution > ICE_AQC_FW_LOG_MAX_RESOLUTION) {
> +		ice_debug(hw, ICE_DBG_FW_LOG, "Unsupported log_resolution %u, must be between %u and %u\n",
> +			  cfg->log_resolution, ICE_AQC_FW_LOG_MIN_RESOLUTION,
> +			  ICE_AQC_FW_LOG_MAX_RESOLUTION);
> +		return false;
> +	}
> +
> +	if (!valid_module_entries(hw, cfg->module_entries,
> +				  ICE_AQC_FW_LOG_ID_MAX))
> +		return false;
> +
> +	return true;
> +}
> +
> +/**
> + * ice_fwlog_init - Initialize FW logging variables
> + * @hw: pointer to the HW structure
> + *
> + * This function should be called on driver initialization during
> + * ice_init_hw().
> + */
> +int ice_fwlog_init(struct ice_hw *hw)
> +{
> +	int status;
> +
> +	ice_fwlog_set_support_ena(hw);
> +
> +	if (ice_fwlog_supported(hw)) {
> +		struct ice_fwlog_cfg *cfg;
> +
> +		cfg = kzalloc(sizeof(*cfg), GFP_KERNEL);
> +		if (!cfg)
> +			return -ENOMEM;
> +
> +		/* read the current config from the FW and store it */
> +		status = ice_fwlog_get(hw, cfg);
> +		if (status)
> +			return status;

Maybe initialize status with zero, and just return status at the end ?

> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_aq_fwlog_set - Set FW logging configuration AQ command (0xFF30)
> + * @hw: pointer to the HW structure
> + * @entries: entries to configure
> + * @num_entries: number of @entries
> + * @options: options from ice_fwlog_cfg->options structure
> + * @log_resolution: logging resolution
> + */
> +static int
> +ice_aq_fwlog_set(struct ice_hw *hw, struct ice_fwlog_module_entry *entries,
> +		 u16 num_entries, u16 options, u16 log_resolution)
> +{
> +	struct ice_aqc_fw_log_cfg_resp *fw_modules;
> +	struct ice_aqc_fw_log *cmd;
> +	struct ice_aq_desc desc;
> +	int status;
> +	u16 i;
> +
> +	fw_modules = kcalloc(num_entries, sizeof(*fw_modules), GFP_KERNEL);
> +	if (!fw_modules)
> +		return -ENOMEM;
> +
> +	for (i = 0; i < num_entries; i++) {
> +		fw_modules[i].module_identifier =
> +			cpu_to_le16(entries[i].module_id);
> +		fw_modules[i].log_level = entries[i].log_level;
> +	}
> +
> +	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_fw_logs_config);
> +	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
> +
> +	cmd = &desc.params.fw_log;
> +
> +	cmd->cmd_flags = ICE_AQC_FW_LOG_CONF_SET_VALID;
> +	cmd->ops.cfg.log_resolution = cpu_to_le16(log_resolution);
> +	cmd->ops.cfg.mdl_cnt = cpu_to_le16(num_entries);
> +
> +	if (options & ICE_FWLOG_OPTION_ARQ_ENA)
> +		cmd->cmd_flags |= ICE_AQC_FW_LOG_CONF_AQ_EN;
> +	if (options & ICE_FWLOG_OPTION_UART_ENA)
> +		cmd->cmd_flags |= ICE_AQC_FW_LOG_CONF_UART_EN;
> +
> +	status = ice_aq_send_cmd(hw, &desc, fw_modules,
> +				 sizeof(*fw_modules) * num_entries,
> +				 NULL);
> +
> +	kfree(fw_modules);
> +
> +	return status;
> +}
> +
>  /**
>   * ice_fwlog_supported - Cached for whether FW supports FW logging or not
>   * @hw: pointer to the HW structure
> @@ -16,6 +175,99 @@ bool ice_fwlog_supported(struct ice_hw *hw)
>  	return hw->fwlog_support_ena;
>  }
>  
> +/**
> + * ice_fwlog_set - Set the firmware logging settings
> + * @hw: pointer to the HW structure
> + * @cfg: config used to set firmware logging
> + *
> + * This function should be called whenever the driver needs to set the firmware
> + * logging configuration. It can be called on initialization, reset, or during
> + * runtime.
> + *
> + * If the PF wishes to receive FW logging then it must register via
> + * ice_fwlog_register. Note, that ice_fwlog_register does not need to be called
> + * for init.
> + */
> +int
> +ice_fwlog_set(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
> +{
> +	int status;
> +
> +	if (!ice_fwlog_supported(hw))
> +		return -EOPNOTSUPP;
> +
> +	if (!valid_cfg(hw, cfg))
> +		return -EINVAL;
> +
> +	status = ice_aq_fwlog_set(hw, cfg->module_entries,
> +				  ICE_AQC_FW_LOG_ID_MAX, cfg->options,
> +				  cfg->log_resolution);
> +	if (!status)
> +		cache_cfg(hw, cfg);
> +
> +	return status;
> +}
> +
> +/**
> + * ice_aq_fwlog_register - Register PF for firmware logging events (0xFF31)
> + * @hw: pointer to the HW structure
> + * @reg: true to register and false to unregister
> + */
> +static int ice_aq_fwlog_register(struct ice_hw *hw, bool reg)
> +{
> +	struct ice_aq_desc desc;
> +
> +	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_fw_logs_register);
> +
> +	if (reg)
> +		desc.params.fw_log.cmd_flags = ICE_AQC_FW_LOG_AQ_REGISTER;
> +
> +	return ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
> +}
> +
> +/**
> + * ice_fwlog_register - Register the PF for firmware logging
> + * @hw: pointer to the HW structure
> + *
> + * After this call the PF will start to receive firmware logging based on the
> + * configuration set in ice_fwlog_set.
> + */
> +int ice_fwlog_register(struct ice_hw *hw)
> +{
> +	int status;
> +
> +	if (!ice_fwlog_supported(hw))
> +		return -EOPNOTSUPP;
> +
> +	status = ice_aq_fwlog_register(hw, true);
> +	if (status)
> +		ice_debug(hw, ICE_DBG_FW_LOG, "Failed to register for firmware logging events over ARQ\n");
> +	else
> +		hw->fwlog_cfg.options |= ICE_FWLOG_OPTION_IS_REGISTERED;
> +
> +	return status;
> +}
> +
> +/**
> + * ice_fwlog_unregister - Unregister the PF from firmware logging
> + * @hw: pointer to the HW structure
> + */
> +int ice_fwlog_unregister(struct ice_hw *hw)
> +{
> +	int status;
> +
> +	if (!ice_fwlog_supported(hw))
> +		return -EOPNOTSUPP;
> +
> +	status = ice_aq_fwlog_register(hw, false);
> +	if (status)
> +		ice_debug(hw, ICE_DBG_FW_LOG, "Failed to unregister from firmware logging events over ARQ\n");
> +	else
> +		hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_IS_REGISTERED;
> +
> +	return status;
> +}
> +
>  /**
>   * ice_aq_fwlog_get - Get the current firmware logging configuration (0xFF32)
>   * @hw: pointer to the HW structure
> @@ -115,3 +367,28 @@ void ice_fwlog_set_support_ena(struct ice_hw *hw)
>  
>  	kfree(cfg);
>  }
> +
> +/**
> + * ice_fwlog_get - Get the firmware logging settings
> + * @hw: pointer to the HW structure
> + * @cfg: config to populate based on current firmware logging settings
> + */
> +int
> +ice_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
> +{
> +	int status;
> +
> +	if (!ice_fwlog_supported(hw))
> +		return -EOPNOTSUPP;
> +
> +	if (!cfg)
> +		return -EINVAL;
> +
> +	status = ice_aq_fwlog_get(hw, cfg);
> +	if (status)
> +		return status;
> +
> +	cache_cfg(hw, cfg);
> +
> +	return 0;
> +}
> diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.h b/drivers/net/ethernet/intel/ice/ice_fwlog.h
> index d7371253b8e5..66648c5ba92c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fwlog.h
> +++ b/drivers/net/ethernet/intel/ice/ice_fwlog.h
> @@ -48,4 +48,9 @@ struct ice_fwlog_cfg {
>  
>  void ice_fwlog_set_support_ena(struct ice_hw *hw);
>  bool ice_fwlog_supported(struct ice_hw *hw);
> +int ice_fwlog_init(struct ice_hw *hw);
> +int ice_fwlog_set(struct ice_hw *hw, struct ice_fwlog_cfg *cfg);
> +int ice_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg);
> +int ice_fwlog_register(struct ice_hw *hw);
> +int ice_fwlog_unregister(struct ice_hw *hw);
>  #endif /* _ICE_FWLOG_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
> index 10b78faf0a32..c524179e79f0 100644
> --- a/drivers/net/ethernet/intel/ice/ice_type.h
> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> @@ -861,6 +861,7 @@ struct ice_hw {
>  	u8 fw_patch;		/* firmware patch version */
>  	u32 fw_build;		/* firmware build number */
>  
> +	struct ice_fwlog_cfg fwlog_cfg;
>  	bool fwlog_support_ena; /* does hardware support FW logging? */
>  	bool fwlog_ena; /* currently logging? */
>  

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
