Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC8A718702
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 18:07:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1C14B82273;
	Wed, 31 May 2023 16:07:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C14B82273
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685549236;
	bh=oFToHbDEThXKWXjCXL4rH5exSpo5oWzt7GPWDPTushY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ygep84NCC6uGzJWjzkqYXL4n99hMVscQi+SAyjDkV4UVod8HMnxZe7fpVzmYEi4Ci
	 ZZGARRXK2R04jBILHqKdO2ROCCNoLZ2cDingyzTlERtj1jcKMz2dSS+eROf6TZknpv
	 xLs5KPOpcIBUaQIFywIWw6tgMjM7o8/b46qFRF11s/hjSPova4kTH0nwyIkzcTkTGP
	 icA4hryoI/DbecIzfafELvEvbr8iXY3PjGCDe+Lhwlj2W26kKrgP6P/P53tjBcZUgw
	 5l8YSx8W7CLbCIXTIEpo1XLZM9eF2TNmbrgRETtqgfTM7S3sLY232aQYunb6Ebg0cr
	 QWSHoO5UzqjTA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3N8Ti9D64lCI; Wed, 31 May 2023 16:07:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E97882242;
	Wed, 31 May 2023 16:07:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E97882242
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3755B1BF37C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 16:07:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0E9AD4056D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 16:07:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0E9AD4056D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5XVsjMrmzktR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 May 2023 16:07:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6232740217
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6232740217
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 16:07:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="383547444"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="383547444"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 09:05:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="1037115773"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="1037115773"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 31 May 2023 09:05:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 31 May 2023 09:05:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 31 May 2023 09:05:37 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 31 May 2023 09:05:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mwM9OrpILEWVuiOjZ3wq8zqEa17n1x13k94uyuWpU2coL3y9kh1tRwepb+oyXKSke//zRM8hxtH+vyWRjxNWhgI/cyo2yET2J+Bk5CEKVnT2jEm/dRN9bYJ5FsRTb/ZpvnIggVjsct4Lkn9kXd2bwufi1duFy0ys5Dw0UgJvvngbtmK9PQN6pUEKstnQ3+zg9V2LfoNDwYmVGMgSjVOlrNM/mtR2ipfh+uyMtpapRuf2pqrZDrUz30poGznBxz6FWvPlKA9J6mIa/jzyD6ACIq6CDQOZtAjaUgOU2SFSDqyEEQPy76OWlBIxKjXpZ8DT7JFUXmcHwlFNAvGU1IC4mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gFaLkBzwZBEYBTP87lVn0+A3llkY507wAy9Aox9zcsY=;
 b=Ow9AqR8NTfJeZZVUfA8oZyOkNYwIJIecggoyrQSseFA4agbASSR0WMLxdccEGxvhL3DRGAfNBmXnLKVbdwfwePQBMxbdTYOt8e+6ixh0ds5mAxzb4assyrJXtzkKQjmNIlnDldllPNHyZa4CF++jLtA01qmi+CuwJr8eKV1HGo2BBWvP49lcSbwyFcYAqS7D9sU+slru3j9kwl5GbbUYGRK36no+rYfKotmCMBAchZINhJvBQgwRL5DDoy92W/Pw04QyM5xv1ZsXAZFayVxChinQaZeya37+aP88yEj1wZPB2oIPdIqp1kDKmhAyyTXI5PNrXSzVsu6AmaW8zkiJjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by DS7PR11MB6038.namprd11.prod.outlook.com (2603:10b6:8:75::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.22; Wed, 31 May 2023 16:05:35 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590%2]) with mapi id 15.20.6433.022; Wed, 31 May 2023
 16:05:35 +0000
Message-ID: <ba4610e6-9387-d716-4a68-558b4a772d60@intel.com>
Date: Wed, 31 May 2023 18:04:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20230531123840.20346-1-przemyslaw.kitszel@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20230531123840.20346-1-przemyslaw.kitszel@intel.com>
X-ClientProxiedBy: FR3P281CA0205.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a5::17) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|DS7PR11MB6038:EE_
X-MS-Office365-Filtering-Correlation-Id: b138dc7a-aec5-4e79-888f-08db61f0de0b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OUVOcWs9r2+/uMrTtaDV+zWeSfP9rxwhkORjyoB4Ydi8jQWU5tgux3gcjhan4RL+MDaoo0Dk2PQzMxPTmkZENGQOxxBlAYm17xRP6N3nkL2uPLH0MJg4ubruwB2MbrbYFN19xqwUzkyrg3vV7vOTEZl2wbI7mNpCfB9WamwuZpH5jACevm6/jjDdatrliBM65cA/gR6Yjdq9B4D3zR/OGiFSBuFnGPcCHrhpiPszpol67E5prMgmwYUTXc6j9xYBcG7Mdel3bOpUG99mdNKXXsc91Smec9U0+4cTsHVHzbycdq3egVKjXVp+cTE4PDR7LD8HVNB4oZolomiKw3kCSXKlKWUNraAKsrlyvZuYcOJwg6XbsN/luk/P31+50pp5mbsm5fXrycU3V5yM1tqCHh2i6oFuG0hnR6ymXdd2aM2vxs9dKc7xWpjEIlxNl5Uk5OU3tj9P7j09sC2M1uMMRTyGv0kXp77hFtQ6zBczl1huxH/9zhoCin78Xvx5CIX1NPTkc91v/NE+Rn2Xi62TCQ/hYuI2Nn9jeAZ+seLV6VJ9DcyWcN7Ctmf6pCfqowPCDNUA5pZvnIrgj7qvc3Z4z3qwG2gSF0WOVyqr4ysVooeB0yVgFKGCx5Dpi30HkZPvrfcktO7ZDGZdrZ6OnOtLkw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(396003)(376002)(346002)(366004)(451199021)(6486002)(6666004)(478600001)(558084003)(36756003)(26005)(6506007)(6512007)(186003)(2616005)(38100700002)(86362001)(31696002)(82960400001)(316002)(41300700001)(66476007)(66556008)(66946007)(4326008)(6636002)(31686004)(8676002)(8936002)(5660300002)(2906002)(6862004)(37006003)(54906003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RmZMOGs5Zlo5TDZLb0lJZHAvaVpnNGorZGpzOStodmFtcGVxWnNFUG1WNEtY?=
 =?utf-8?B?SlN1aklSZ1M1bUdESHp3TklPVDBSWFNLL1dYM0Y3TURuSUpJbkVFV1Z0Q3ND?=
 =?utf-8?B?R0YzVnRXRVJDOUdzcVc4WERsalJidmRuUTlCbFliNVNNb25Fc0R5TTlWQ2gw?=
 =?utf-8?B?NlpuMWN0eUduci9jZ3NsMkY2SzljTTQzRVNTeGpiVGNwUXpXZXpmYTBXeG82?=
 =?utf-8?B?TXE5MzBNQWVETDF3WiszT1FLTlUzSU5FYkFtdUNQV3ZNNlFNR2toMU9KTVV4?=
 =?utf-8?B?RDhuVDNjd0ZOVHdoTms4eEpUM2ZMVWFQbGdoOTloNU9FN28zcU4ycitHeW9I?=
 =?utf-8?B?dG44K21qcGo0RWlVTFpzOUt1cm1aa01yY1dEZlB6eWJHRGZQVUdzdEh1S3dH?=
 =?utf-8?B?azQrWUdUZlhycUxZNndUMTV0YW15bVlFNm9TczRBYjNNYVRaZXF2NmlMbXB1?=
 =?utf-8?B?OWV5QVo2aWhaTGgybzR2TE9EanRDZkY3aTVZUWhFRjNFUU1KTEs1ZlVNQWZ6?=
 =?utf-8?B?eXVzY1RIRHR2ZUpVdmtkQlBkNG9MMnJOYWlaL3Nvdml5VjB6UW4yTUJOeDh5?=
 =?utf-8?B?b0lycHpNeFVBd2FhVi80Z0hnVHBLdWNQNlVzdUw5bWxyb1E4czNkYWJJaUMz?=
 =?utf-8?B?Vy9GWUxBbXVLTTQyNTY2NDBmRlpUajhkaUU5TlRXTGlhMFdJTHBVMW92SnNW?=
 =?utf-8?B?TFZ3Ui81NEdLNjdBek10NUtJUTNzbElPM2ZzTGxtK2l0N0hjRDBybnpsOFJY?=
 =?utf-8?B?alRPTjg3eWNKSE9nWkliYXJ0RGZXTDdZeUhkKzNFR1g3dWdCUVppZ2xpNjFt?=
 =?utf-8?B?bERKNGxvdStCT3IyeDhzUjQxcnVlWVA0akE2NE1HTXJBOW5jRW5FWEowbXFD?=
 =?utf-8?B?Ty9WUnVacitJeUIvTURKQ1B1Q1BmQ1lHVFRxYUg0NE1BdmR3eW5XenE2QlI0?=
 =?utf-8?B?NG80bS9hNjlTLzJUZEdPSzNtbVJXODYrcGY4S1pKQVZwSnMxTHdoblZzVXJs?=
 =?utf-8?B?KzNsM2pZbWt3ME5Rb3pkUEkrLzBNcFJrc2xwa1hpenM0U3VQRElBMUc2cmNn?=
 =?utf-8?B?WlFGUlFzOG1ZMXM1VFdIZDRTR3EwTllQOXg5YkJuNTZTRlBFNzVXLzM0VTgx?=
 =?utf-8?B?MDV0QklsWVBaK095NzU4dGdJMmErZWtqdlJEZnZ0TDhDVHN6UUZZa1Jsd21Q?=
 =?utf-8?B?dkVnNktpeUdTS3hLaDBxTlFVdk5OMXYzcGVYWVprSDlNSzN5amZjSTlRcVJM?=
 =?utf-8?B?Q2hySkYrajZLdTY3Wm5NQ0htUGRBMG0wajFlaVFHZnhrUk9sdUxSNW5OU0I4?=
 =?utf-8?B?UUlWMG14UDZhVGl0akhaSXF2NVYrRGQ5amRQVE9UdVZHM3lsSjl6MW52V1lp?=
 =?utf-8?B?enFrTVRrT29DV2pkeHdnSFI2d3RPeXlONGI5T0VuTm5lNmpsd1o5eFRiSVJU?=
 =?utf-8?B?cHlHUHYzZmhkTjNHYk8wWmlON1R0am5UUnlFRWFxZzVobS81Zmtid1FyM3du?=
 =?utf-8?B?WVZ5YnkzcUpiREdRbkczNkpobVYxa0FVNXV2NzVzeitEQUhKcTN3elpUOUlm?=
 =?utf-8?B?UWZMcHcrQ1hrNU1RRERRQmJXMXlNMkMvTXVBa0tSbHFSdXM3eDNqYk1Lcmxq?=
 =?utf-8?B?VHlzcVVXbzR5cVdFbFFVUHFGM3ZuaHJNa01vbXlWb0lCbFBhbmhRSEhkcU92?=
 =?utf-8?B?Z25paVRkTVVaSzNlb2o2RjFXTmtHMEFSYTFrbURGVGh6bHBKQlpJWHYyOHhz?=
 =?utf-8?B?R3dpK21QUkpsWW55VGt1MnB1RnVDNnhMelhoQzZJTlZpblhGN0piZ1YrRVMr?=
 =?utf-8?B?MGxTeW4wd3MvS2FoWjNFNFBIUmFtSjdLaVpxUWVPVHZVa2dVY3dvVkpXcnhS?=
 =?utf-8?B?Q29qZzF3K3g3bEVHcmkzeWJPSUY5bHpzTmJ2TEpyKzRjekRJaTdkc1o4eG9i?=
 =?utf-8?B?UXBUaE9nZS9rZXhnaldOTi9xNDNWVXJqR28xK1c0UHRiUGxLdi9ycmZIRkZH?=
 =?utf-8?B?RUZ1R0tXY2FvK0FVc0tzK1RqNnI0Z1h6QXNSRllJU3B2ZjFjdGtTQ1pOV2t0?=
 =?utf-8?B?ZTZ6cFJadHowbW9pZFE1R3k4VkRtUzBlRTVzaU1VZllpVmVhNnVxUUdudUpZ?=
 =?utf-8?B?L2t5bHNwRWFSdXd4cTlGelVkZW9Ta2l0cVVGOXFEU1QzZW5jWEYvZ3BkTSti?=
 =?utf-8?B?UWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b138dc7a-aec5-4e79-888f-08db61f0de0b
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2023 16:05:35.1771 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T1RhNABuAiQZeAbWFqJ/x85J6kCVU9Ze0tZTcrCp5alydyHfD2tqq/GSq07byUHc0M+Eudjh109F6zxyWB8tsTnVIycc87qAO7/II6RqQrc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6038
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685549229; x=1717085229;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gFaLkBzwZBEYBTP87lVn0+A3llkY507wAy9Aox9zcsY=;
 b=GFO+xv020VneYTqYf0FsWAbmX6HrV6mF6aD8RsRN/AX+p6cYWeIRvCnQ
 CKrYZMEsbYBF21+9KDq+FjVqf+qAvqF2Z5QKFDVLiIryF52cEtafU/Z+z
 DJmNClcicNoD6gy5i4gtR9A1ZAU5sYqAeU9MQeAz0qLjiYRm/sDczW6ht
 M6+GAakYgO8kcyPHANwKt+taKJtWeE8tybocjGtI8F/KyxgnMohxbTXtQ
 uY7Vk6SGqwht0zX7fBIU+MDXRwT2FZqcm+eYdpCT14hahylZc6fpWQ9Rq
 mh3GtwnOU5XImpB+Hzqjr3pB3uzRjIFfK3ZKEDrNr2jigay7gt6wdyhWQ
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GFO+xv02
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: remove null checks
 before devm_kfree() calls
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
Cc: Simon Horman <simon.horman@corigine.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Victor Raj <victor.raj@intel.com>, Martyna
 Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Wed, 31 May 2023 14:38:40 +0200

> We all know they are redundant.

Unrelated: I'd love to see someone refactoring Intel drivers to stop
abusing devm_ API :p

[...]

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
