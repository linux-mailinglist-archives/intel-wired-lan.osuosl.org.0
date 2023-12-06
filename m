Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E06806FD6
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 13:35:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D8B778308B;
	Wed,  6 Dec 2023 12:35:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D8B778308B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701866101;
	bh=ujJpuyVR3aDikfekr2V7x9p8Tmzk0uJ79+nu6pSceak=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6z8xyK2egrbe/zRb/CZy9UpFmMVCKYGyXzyxd6880u4e2DTDVWsvFfuciJkYyhT4Z
	 wY5Zo53bS6p5T0pieHdpTl4ShzIUuvu4g41RqV70B3IPKdzO241B9qA0yKJj8rnukg
	 20DH1tCiX2rFROoYcK5EpW6eSZ0xaJJ5lcOjsb3fnnBnu1oEeZcy2mImw22jPXtSzP
	 2g+ztJMSbdS+bBJ6TswXYzfbhzj9SHUgV4FZmsEKpDZ5g18nXjGSNmGVZO/oHpfUsT
	 ZmJ13h+w5CeDN9DrCDhhl1ZVp7UNfzsL32ZVzT0EwWyuBnj5J+RwBSq2I8JEO7Utar
	 VpUiOmypvgDrw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B5xn5xb315In; Wed,  6 Dec 2023 12:35:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 676B783027;
	Wed,  6 Dec 2023 12:35:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 676B783027
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 021CE1BF34C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 12:34:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CBC2643662
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 12:34:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CBC2643662
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h8WwI4WD82Md for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 12:34:54 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B081243652
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 12:34:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B081243652
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="379071711"
X-IronPort-AV: E=Sophos;i="6.04,255,1695711600"; d="scan'208";a="379071711"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 04:34:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="837314209"
X-IronPort-AV: E=Sophos;i="6.04,255,1695711600"; d="scan'208";a="837314209"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Dec 2023 04:34:53 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Dec 2023 04:34:53 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Dec 2023 04:34:53 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Dec 2023 04:34:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VPZ4GQ3cpZJkp7jkV5cvIbRPgLsEJOmWdMEBVgPBhVq19hgW349er9Bd/8itQAEP5OmgRQxwJEr4B4jBgMkAcn+W2vNIQBDMoGUuOZzHoEy2xdX00gLn+0sYYyligHxZ7xU9UZNA2JTOS7yeGMbZnR58neaGHfGMxTGGDTeZBQWCxEIomzg1x3DTfPmVEUtS5MCwGEjtCcscnSGE2CcWTghsJE77vsILll2d3MnoIv+/4uSBKYYjwmHqplqWWlTdowMpfco6Mf2Pf/Av2W6hp+WBeExTr+8R+PUckIS47yXMFdzuWUDc/9HLpXK3E5P+l2aZnzNFP+Via017lw+JoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m0SWtwhyYSeRX9GQsSoKPyIeXymvyg2I8+Tra8zqEhs=;
 b=lX7dQtiPrO2Bi+vj0gCV4NBFaD4NlUi7rYR5t8lkN5emFHxVyILSQ6QHLc5rn/5HqbjOjbEVyKBzQsCeIb1+5o0Uopc4xE1D4Nw8JYv8bTXejB2RfGiN3lk+zsqr3ZGpP/3fmCZlIm+obJ3dN/Q24fR0tOsIImy31tCOGaMS9iZMz+x7cqWofMr4X+DZJfq896F8UjI2IoA52J+2/V9IRZMAv8pMtszWwx563ORMc98Gg8fZTWMjv+P5yYhSECAhznJw1lQ3obgU1w4dMhpXrNN4r6CQ8MFLH7tUxfSOF8TvL0AHVhqs+nOWvnYbKxdabucLjU1zpxfgt6EzxoSdPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by PH0PR11MB5094.namprd11.prod.outlook.com (2603:10b6:510:3f::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34; Wed, 6 Dec
 2023 12:34:51 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80%7]) with mapi id 15.20.7046.034; Wed, 6 Dec 2023
 12:34:51 +0000
Message-ID: <1bed60db-3f6b-4b99-84b7-8021787c9508@intel.com>
Date: Wed, 6 Dec 2023 13:33:13 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <20231130214511.647586-1-jesse.brandeburg@intel.com>
 <212e5518-0f72-4bf5-bc5f-49d184be1931@intel.com>
 <97ed09be-cb2b-48c3-846d-7a0e453ef816@intel.com>
 <30c89a45-602f-4fd4-9fe0-70f335859f8f@intel.com>
 <eff20fb6-d2d3-4b12-8d46-1cd891ad0156@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <eff20fb6-d2d3-4b12-8d46-1cd891ad0156@intel.com>
X-ClientProxiedBy: FR4P281CA0212.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e4::11) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|PH0PR11MB5094:EE_
X-MS-Office365-Filtering-Correlation-Id: d4db2b25-fa24-43cf-e3e5-08dbf657bd98
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7h377UlMgqmYBCDtMQRKojn1OxX6n/GaEpir8PZLPjbXKsoTuLMxnT1cDSvc/iFMdQdqX83TSP4cBJg+GaOEnUlQ8ftOuu4p6yk6skKtnPmEWlSLRwvLkUU/UJ7Pt4qE8fIpEF1W3i5280Tm+6zlB7b8vyO+uQ5sSRDvXAwEd83jAaDr3oPOymrApLlJ8OnNMes0EbquzqmMhaiE2Bsj765/3Kv6ViPKtnxWj0LlPMIKbWP0Cbx5RtQ9hGjsG1oczCgbjKufl06GMDOegpjYQ2NDyzFgjs8XU4Tm16QV/+8skrDtwJaEdRshKRYa2up1prdFFClqUa4WB3tII0mWikjN+CvuxbFDgzB503g4BHAU35QHyP7V+Naf/atumbvgyntqhvg9yLdfbtGK8h1f4jRRmjzURAFeyDiy6rs4odpJVsQrwejf60QclO62oWnILp82SuH6Sy/q8gXarm3r29Fh9S7DkcTaNe/byVW4eEwac/bZ8RGasI5x1RupOlnogtUuosf37sKyFKKBLA3XXYemvDgs8kZIg2eQUXRe6QrEHY3cvnhorZ6DXC0QtOJyH80cIJ8cMhZjzZHIZY914Pucw6Ik0kIe1UuW5swjfN3KHp8cSeTExawNCRz55cZwUwWORIKlTFfLe+grLks3Cg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(346002)(136003)(376002)(366004)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(38100700002)(53546011)(6512007)(6506007)(6486002)(6666004)(478600001)(37006003)(6636002)(66946007)(66556008)(66476007)(316002)(26005)(2616005)(83380400001)(6862004)(4326008)(8676002)(8936002)(31686004)(82960400001)(5660300002)(2906002)(31696002)(41300700001)(86362001)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dGZGOWFsVktIODdrbFliejlSeDh6NTNkZDVNdi93QzJJNHdnLzdqcC9JdGsy?=
 =?utf-8?B?dmx3WEJycmUzMjFYZTdJWlZJOUR5R2duUWtlVjV4QTRLa1FOT01WRWNqcHIy?=
 =?utf-8?B?b0s5MVhWVjJSV21jZUNLbU8reG0yZ3JiVmxoeXZnQzVKK1dKUkVWSGlNZDJq?=
 =?utf-8?B?SzRQSU4ycGpYWDlkUmlWR2ZEeFp5ZDE2RU00c0lycStyak1pQ3JUWWt2aWow?=
 =?utf-8?B?VmZLYWd6aW5LVzJRVHJUQmtYWlRIREtHK2hmTnpWMFYyV1NqRGo1aEZJTlk3?=
 =?utf-8?B?NndqNk5raWZYMkJNcXp5ZVJYL2tGSzdqK0Vzc1A3dmxYdnJocXJ5S01Qa1BL?=
 =?utf-8?B?R2VkZDB6Mko5SC9TSCs3Tkl0MndyL2lrKzJDOHRRWml1eVo3dnNjYVZaT2dv?=
 =?utf-8?B?RkdLYmlINlpGdUJzQ1NSTkxtOC9ORHhVcHVBOUx3QXlyL2lEOURPWkxXZEs1?=
 =?utf-8?B?T09obVRjYUxISjFYMEFUbzBXV0dnZE9WeXVER1FYZEtKSVloL0JxQ0pUUnAw?=
 =?utf-8?B?aUhBcVZIcFpDbTg2ZWFGVWxGV1VqaXkwdXhxczBjQkUrNk50bk8rLzRvUkc4?=
 =?utf-8?B?b1UwQ0dSZTZHZ2N6QlN2VnNiTUYyWWdPVHlzQ2NZY0M2ekpGWFFsbjVMVXV6?=
 =?utf-8?B?aW05OHliUG8waWh2UE9lTk8rSlNRU0s1dU1QR1hSUFVRVjZCeUtDT0EreC8v?=
 =?utf-8?B?akpoVjVpbXRudnZ6eE5WSHl2dUI0Q2hOUVpwc3BLeU94YStKTlNpQS9ZQlU2?=
 =?utf-8?B?SC9odVNwOWtPU3MxZk05Z2thR1RTeGhCenNoSzlkRjZqY3E2TlVXeFlPeWx0?=
 =?utf-8?B?NU41cHAxY2J5K0tEd21BMGg0bGFaakpMdVBaMEpMR0NVcFFBMVZhd2V4RDY3?=
 =?utf-8?B?UlZvOTJ5VFowSEQzQlRYZnplRU1qLy9HVGM3NkhTQVR0UjYvM09oTHRUTzh3?=
 =?utf-8?B?dHlVc2xpSTZDb0ZRZmtFK2pGUGxsbzU2azhRekhzbkJ0TStNcm55akJmR2hq?=
 =?utf-8?B?eVUydlRMQlMrVk9IYkhZeC9yd0U4Q0gxaTNrcU4rOEoxK2o2R2drUU52bUJ0?=
 =?utf-8?B?cVBKRGhlaWxBaFd5SzNJdEcvck4vTEc0dTYzeG14TEpVaXdNNW1ZSEJVaU8y?=
 =?utf-8?B?YzhHVElDcnpNalZHTWVCN0JEVkNQNXQ5VE1pd2dKZSswSjZ2Ty9LeWVGWk9w?=
 =?utf-8?B?S3RxZUxXZkZNT2V3NTRacWpRSjRqZTJlT1pNZU1YMDY2TzNWazA1M3dQNkdN?=
 =?utf-8?B?eXZTbVJON3pJaTFQRVdNRDk4STJ3Ync4TklkY0Jpd2xUajZVUU1Ic2RCUHNJ?=
 =?utf-8?B?L09zbUxBc0VDRTN4SmRGYkI0OUhZOXBWelRhN3pLZFo4bm1OeGJibU5DelhR?=
 =?utf-8?B?T2xlVHNXQWkyQkk0ZjhZTlQrMFFXMUh6ajZHL1lPd1QzakdxYmt3bjRZaUJ5?=
 =?utf-8?B?NUNTMDNxVVpwMHRXNW5zQW9VL2hsT2QvQ2F3dC9aME5iUDRNckthL1RGZC9U?=
 =?utf-8?B?NUtYa2RRbkNRek0vd2ovRUNiR25sbkZLRkJ3Q1VTNXd6UFhwUjBNY1QxS0J2?=
 =?utf-8?B?ckQydUNGQXJTZEgvWFNIZWp3aEZLekVpcmZuMkVkMHNlcWFCRDhVMGh0Zi90?=
 =?utf-8?B?OXVjdTRkSXNJWWREVGRhWTdmNmFUYjgxakxPdm1CZjlVN2lWazZ5VHJMOWxs?=
 =?utf-8?B?RE9aUkZkVktYbWE4Mzh3ME9YWmJZYnpIaWRaVkZ2OW1JWHhBbnpQdDdHRlQx?=
 =?utf-8?B?SVNnbWhzSzgxMFZZL0xEdlU1VTJlRUlnWnVkYmw0WUd6TTYyRXB2M1NqQWxo?=
 =?utf-8?B?dUNMV0V5SDc0bTBiTTZmdytGVE5wZUdwUEhjUzAybmxUR2FLZGpnc01BT1pQ?=
 =?utf-8?B?RitHdW02cTlGS2tlSENBZWFISUVZSTNoMXdJL1l2ajFYUVZXb1hkdlo2N0dq?=
 =?utf-8?B?WGNCMW9Ga0xIanFlbDhaSy9abjV2K2pocXhRamZ1MnZ5dGtaVmRHNHhGajFu?=
 =?utf-8?B?SzRGQ3pObGtINFBYM0tnazY5cy9oZUh0dS9wWitHVFJYZFpEeUdiUmVLSmtQ?=
 =?utf-8?B?TUJ5N1hHZFg5eTFHdVV3MVhRSndtVGNPUlg0NkdEVFEyWWZlUTFJZHQ4OVhp?=
 =?utf-8?B?ZHRwRVd3ekxzWm0xd3htbWdoaGtYOGc3UGhRNFhTbTVRbXVJVzVIaklnZ1Np?=
 =?utf-8?B?MWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d4db2b25-fa24-43cf-e3e5-08dbf657bd98
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2023 12:34:51.2899 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rbEFIMChqVshIiXvCZntEX0GHr8Yto63RSlyBmrvP2aemTsgnlpCHKeBRD2rxR0JJ3191if8L8Z+vgsKZse9H51TjVk8Ii0cd+yRg8TZilE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5094
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701866094; x=1733402094;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hvR6emrXJPLmjqi/s5np3dkwbaiAv7X0DeQvd1PyeLQ=;
 b=jLbaGifgSf62j3/n793bLMwnJSzfePb+9ryro2gb7P2j4pNniCcNrDI/
 3brvgyPzA/PrbcHDCtmoY6g8gOIKNLu0ARKYlYFSC0CjDNnHK40BKMQtI
 1bqVf2/6JlqI/IOozoC4FYVIQQx4LTZvIBEXTGkjKyOl/5RtCanMARgMu
 UvsvqIqpQSZoFrrXqdmXCJYXuu9O+L6dpmxjzNsCELQESGONil4bpkJ5t
 xhZOrT1kp7XK6yUlM7z4el8ZJvkzKxwNDSFAaFxkGt7sf1bxnafgQaKAY
 kNbGZoHDm86CTWNAQxYkJUe5L3/J40unCgyLmQyg0211CXOUWvptaZgoO
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jLbaGifg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] idpf: refactor some
 missing field get/prep conversions
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
Cc: Julia Lawall <julia.lawall@inria.fr>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jesse Brandeburg <jesse.brandeburg@intel.com>
Date: Tue, 5 Dec 2023 17:10:58 -0800

> On 12/4/2023 2:26 AM, Alexander Lobakin wrote:
> yping.
>>
>> What is "not a constant"?
>>
>> 	ring[nta] = FIELD_PREP(IDPF_RX_BI_GEN_M,
>> 			       test_bit(__IDPF_Q_GEN_CHK, flags));
>>
>> Is there a problem with this ^ code?
>>
>> "The scripts ignored that" is not a good argument I'd say :>
> 
> Fixed in v2
> 
> 
>>> Generally I'd prefer that the kind of check above returned a bool with a
>>> constant conversion of the mask (compile time) to an LE16 mask, and then
>>> use that, which is why all of our other drivers do that instead.
>>
>> Ah, good point. Smth like
>>
>> 		gen = !!(tx_desc->qid_comptype_gen &
>> 			 IDPF_TXQ_COMPLQ_GEN_M_LE);
> 
> Yeah, it would be nice but I didn't add that to this series. But you
> have the idea.
> 
>>
>> OTOH x86 is always LE and BE is seen more and more rarely nowadays. It
>> might just not worth having a LE-version of each such mask for the sake
>> of a bit more optimized code on architectures where our drivers are
>> barely used.
> 
> Our drivers should work on BE, IMO. sparse annotations takes care of
> making sure we have the conversions right, they cost nothing on x86.

They do work, what I meant is that adding _LE constant masks would make
the code a bit more optimized on BE only, then would it make sense to
add +1 line per each such mask to get some almost invisible
optimizations on non-common architectures?

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
