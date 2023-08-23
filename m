Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3A27861CE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Aug 2023 22:54:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 78277813E4;
	Wed, 23 Aug 2023 20:54:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 78277813E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692824053;
	bh=hadge6d2zi4QAbVHZyAT1A7yE6Fc3IaiSw5jf/ap5sk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=F0ztSEqE+vipnHXKFrwsuKTDuU+8bQ1kqLXfZjWxyAD287DKrRxAKyDUPOnFfGvrg
	 J2LV8mq134h82zlbJLMneHcIVBZyWupVikyzonWPmsVf9rF9fZ4ziOvg/vt8hfrt++
	 wIofRnbeq0BkUBD6a9D1GsfGLnRswFCzCDV3GRwh7aG/w2N/rhZi7FcUHtvSNEL1iY
	 64Sb7ZHtE8tSBfyEqWIq2RzIM6LukmrEijgB01/Oer/37Jg/qHRzctjmU4SMWS3ek/
	 4dGWXw8Ev7Uj+hPieV4FMnHxA3taZzBSBB8NUbeI+SFNWuWDwGq48qeaMWhcb9F40F
	 Ef9YHNA3RG3dg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EwflBKP2b9gf; Wed, 23 Aug 2023 20:54:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 41BAB81359;
	Wed, 23 Aug 2023 20:54:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 41BAB81359
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 85CA91BF2BE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 20:54:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5D6864057F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 20:54:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5D6864057F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4olPWaqb9slL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Aug 2023 20:54:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 37DED4058F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 20:54:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 37DED4058F
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="378022403"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="378022403"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 13:54:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802280531"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802280531"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 23 Aug 2023 13:54:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 13:54:04 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 13:54:04 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 13:53:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U8i1s9QE+xdPQSCcn8G/ar8H4eqkU9Ir8PBEf4/MGnEisVXG8ju7ksX0aHr8kj9Gk86KZII9MEekBuOy0+0nYYaucD/GYIqtzyOam+09Amn7CzF6MqLVrJrMI3dfMDYRAWj99lk8NYe2g2yS6Uo6eRtou+TU+2nXpPP/jI2PlhsImPDY7dNTlAqe9VoVs4f2oHEdhieLwp2p0+zu4QES3qTqe56f+xHrO5eBNB5pY7/ZGVMKwCxLs5JF3Hx/MpcccYxsps9SsmLDeuh6dvgym6/WTRyHdmLn50Vp86OJU+yDp0HxgFAgOxMh8mHBesYV0HyW7ce5cdnEUR0eqSvuHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pftDidcqaDG6egDaGVJUnsccKV095UGyGGhf2yx/ACo=;
 b=Nz69ZMwMRRFEeVSjrKUk2kz43CIDSJa8GQqeGFQ4qct03L2ScbbzhHDixQIl3QuQYchxabpef97uhWuUD4ns8Q6XNEmcvy0ClLGznQUCRUiq/jEMZ61MotsaygFRuFNvCrU9ZfVF8HQ1BCmJZKVbjzitl8mU1Pumig5zrBg5A1VhAC2eG+ftrASd19aAw0E/AaufOiRKS4WkuccCKYt4aJdVBJMktH2GmAUcmF8rzGTmJ4tILYgXdVSW+PccCIvJocexTqMCEbw9GJl60pv/nKPejxnYxRRnvQRGyEJB8/ibcVufO6dT87PpMZQPdK9zOYChH0Lc7aWahdpRAL3KLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by DS0PR11MB7958.namprd11.prod.outlook.com (2603:10b6:8:f9::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.25; Wed, 23 Aug
 2023 20:53:58 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3%3]) with mapi id 15.20.6699.026; Wed, 23 Aug 2023
 20:53:57 +0000
Message-ID: <2dab6c02-3db5-c2ae-ea56-c75c2e7a8834@intel.com>
Date: Wed, 23 Aug 2023 13:53:53 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230822124044.301654-1-karol.kolacinski@intel.com>
 <20230822124044.301654-10-karol.kolacinski@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230822124044.301654-10-karol.kolacinski@intel.com>
X-ClientProxiedBy: MW4PR04CA0348.namprd04.prod.outlook.com
 (2603:10b6:303:8a::23) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|DS0PR11MB7958:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c922e7d-4196-4481-7e36-08dba41b11f7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LNoGIPX896tA9NE/i+X5Am6xGAA2qMNv5lRsCy+WCqd4J0K5wdmSoFwXKqAYyZA+D/nIrrrgYY1ex3jdsa/Fya0BxnwU5ppoKV1chh/fZE5TBXZFSpda+/ZE6Na/hPanV+tPo4YEVfg9FHtr93EnZaoozVYyQ64vpVJWZ/ik4yd6m5sqmQ4JhJ0sBNVPoHxa1BoFt0aReDqQhbJYHRI6ilqNf+DqsZkJ8O6p7SLe50Hi7TdEbYw70zXi/qceH/UcVFSfmN+h76+2kePuKzNXXcPbilBDasoDjH5eDxItLT8e+otiSaC91or6DBrcxtdo6r3AgfMZTPZ0JlCRT+mfyDJmGdktaglz2q6IhpWnU6lYEVtudsm8hmwLmsfQ4g8zKRcUT20idp5ARn7r/FQNj7KUKUTitfImf5I+ZIAye6vQ9F76qKa2xMskPCRUDDJs+SfcnxKPPYT5blxjJ1esUyxuM/9FNn8JiJAG9xQgt9gQWKGchM1QkwoCGJxuilW999zn7H8lIalhzzozy5z0UR+cPhx5olAQ6Em/FFz1CoLs6Fw5bNhV/4BlZOyDcfadQosiXHxDX5ZtLtTKCKHNPi/hVG3vHizsozcWstEOdMInETr1lOJUQLL4Y5yKyIlg5QFUMyobPR51hiLZ1XTv3A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(366004)(136003)(396003)(346002)(1800799009)(186009)(451199024)(6666004)(53546011)(2616005)(6486002)(6506007)(107886003)(6512007)(86362001)(66556008)(31696002)(5660300002)(4326008)(2906002)(38100700002)(82960400001)(8676002)(66946007)(8936002)(66476007)(36756003)(41300700001)(316002)(478600001)(83380400001)(31686004)(26005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WGVSUkhXZ21UWjFLVk8rbkJIaDBmQzg1Zm80eG9aaU9sRTBiWUJUazdOVDFr?=
 =?utf-8?B?R2t3cWRpcXRPeWVleFRONS9yNGJTMjFkc3kwQVFxWXEzNmRlS3BUcG42MFlC?=
 =?utf-8?B?VHhtaXBKYTNHTHZ0aGZ5WVU2T1p2RzF4ZVRQeGZaYnZQYjkvUlRndnlqYkxL?=
 =?utf-8?B?ZXUzdHJSNzVjUm11YmVJaTl3eTI2b3R5KzVLMjBYWHdUNUhQUDFaazZleWUy?=
 =?utf-8?B?NDIwVUtONEFXOWpZUDVZTEttL1F4bHpkY2NHb0FJVHNsTkxaZGFkVjhmL2hH?=
 =?utf-8?B?dDhweHp1NVNKTTRJMzhWbVRUaytSK1pKNm55VmMyTDlmUm02ZUgvL2lWSlcv?=
 =?utf-8?B?dytNenNrWmV0Rk9oMlgxZzRUM0w1bGpMdm8wL2g0VEVBUnkzRWhSdlBQb3l4?=
 =?utf-8?B?M3p6Tjl0a0twMXB6am5YYkJYTldqRDVucytXVTNkNE13VktxdlJZbzBWZWhl?=
 =?utf-8?B?TW5US0R3SlNjd1pCOWJzMURqdFRwS21PUUdPdkgzZnAzYTByaytwMXgzL3dv?=
 =?utf-8?B?TzhBNlI4dTNzSUttYlZlTmZOVHMxYUNJNkQxckdqU1ovaTZ5VnZZbXlJQjNU?=
 =?utf-8?B?eUNrRGEvR3g1ZzZwUGxkQmZnQWVXbU11ck01VVBwOStubmp0TS9FWU05TVVa?=
 =?utf-8?B?RklaKytSQzlWZkdHWnB2NjJ2NVlua0VqVnp6bk9PWUhRVGVQYnBLY1UwZnJ6?=
 =?utf-8?B?ZGZVMUpkUC83YXlzdWVoa3dsazZlU3pZYW9SR0VteVVQU0pnWWdpK1BrOHp2?=
 =?utf-8?B?WG1GUFRuZkVqUnFqRjhqMXNGdmp4Ny9jOVJaZHVJK0RLM3hsT0JZOTBXMFd3?=
 =?utf-8?B?Y2lkOGcyWGxDRzlLZWtvN3RIWElYMDBLalpZeDdBdFBieFV1UEpyMzZrbldZ?=
 =?utf-8?B?SjcxZ21MT2x0dEVOa2hOTUhVUUU5SDkwbEhzU1BaTjNCU0RaOVlFUTF0NkNi?=
 =?utf-8?B?cG15TGloUVVVVnVJQis1ZStSbENrSU1mcDlNeFNlV0RGYkhpZFRUenJGVlpG?=
 =?utf-8?B?VGdvTkpRWHBuakZFR0pVUlZJbFQvWkZ4cGFTWElEL0Q4N2ZIZ0tnRzhsNWYr?=
 =?utf-8?B?dDRDV05UcFliekoxRjQ0T3NzOFV4RVFZSXNIekRqNkFmMXBDeDkxcTNqM2lX?=
 =?utf-8?B?WHBvYjJmNkJLbnY5N2kvVjM4WWtRNy9TeStERGxDcnZGUElSclhPMXdDK2ZH?=
 =?utf-8?B?MndDWVdkY21WMkUySVRBTlNWKytrRG1TOFc1VmUvbnEzNUhvczVYRVpUMk1L?=
 =?utf-8?B?SmhTVi9DUkZ6cm5rRWxCMFlsVTVtQ1VJSGxjQUh4SlBvUkJTNzR1a0o3RDRr?=
 =?utf-8?B?cHlCNVM5UzFGcFBlUDJNV0xMMnp0MFpnS2trTktxamJnNTkrbVFtWVBRKy9N?=
 =?utf-8?B?enZiVHJ5NkZEL0RGYUR2cXFKdEcxQXBnZm42LytLMUJVL3VObG9CRldhMlIw?=
 =?utf-8?B?TXp2bGRQU2ZMbmluKzdtb1JHL2xzWWZWWFJYRVJhMmFWNkhHUTBBNk1YZWtj?=
 =?utf-8?B?UkJNaWlNWEZwRHpjRW1SMXA3ODJoMlV5aWZJWFNSb3dwTGtkMjRQUmdxTkpU?=
 =?utf-8?B?NVBYSURMc203SGhBMldsRGFBdExPeXBJSStJZGV5d3RjYysraE9Db0c2SmpZ?=
 =?utf-8?B?SjIzUlRXd2QyY2NJRnhRUWpjRVZpcWM3MERmQlRHdzVLd1JSVTVGb2gxVGxj?=
 =?utf-8?B?Q0F1ekd4eXp5aVJhdVBNcnc3dU5Mc0pYbTZCSnp3VVdEcGozb3o5RDZTQjQv?=
 =?utf-8?B?WHhkOGVLL1EzTjVhaHhweUsrb2tzdmNVL0ZFcVBmcUhkMmdFVTZHc2ZDOGlQ?=
 =?utf-8?B?WUptcFJ2bnNaQ0JYTzFzZC9WcEp4cDRDc2pYN1VkaktRZS9Sdy9IOTQ1azZs?=
 =?utf-8?B?R3M5cnJYck1JVEZJb3daUnVCNjlMdFFtb2xWTVRWQWpPYkJMdE9abDBOeHdk?=
 =?utf-8?B?WUtkanQ1ekkvZ1ZoWmdxeWhKYlU0aG9WUkdXWmVweVhQdFZXM2o1cTExYk54?=
 =?utf-8?B?bHBkM21SbnAvc3BQVGMvQ0U4YnhHbGtuR1Z3MDJrYUtoNVUrV0xTUjhZL08w?=
 =?utf-8?B?NVpOZExqRmRobXpkcEcvZEFzc2t1OEdVN1l6N2M5NllneHR5cUJVZlhReTVI?=
 =?utf-8?B?aFhuU0o5eXVtWlVuR0FHcHlkMWtMMlpqemU1QjR6SkxFZG80MUUveGhPQXFZ?=
 =?utf-8?B?aVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c922e7d-4196-4481-7e36-08dba41b11f7
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 20:53:57.7979 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f4ue2oZC8g1AgaruNh9rigVRqTpXvziZGQmhX5UlympE2csGEjcdnmkURpyq0DPsL3bueT02pubkZbpTmEKDzxx21/qc+4Wtt/rpQfrl/fA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7958
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692824046; x=1724360046;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LbMVjO+TZ/fDQ9AwT4bZOf277D1TU/HHz/uMC3+MM44=;
 b=MpCsfJDomUNRktvHTrpSkzIaCxdHveAvdMvQ0Froy+4TQNzlCt4KjO8l
 W8+THucxCMQJ+NWE0Z/y9SMV0wIKTHCuRqNhFu6LIQUQvzQUoDQfqcIzO
 RC3K9J9ymR9/Zq0XGT6wA/e0LlgTrZvgbfrkR1IQFIgrM03ZoDUHbVzKG
 Aeea3lBOcwcoQJ8ysk1+W/0xLV8JnEmeW854dJb4I0tFvdtDv72Jr4j7Z
 8rTVnsUBOJKzuSeawy5eOm+kgTBzbcxxi0NdOz6QISWZdi/qI13EOXXfg
 BqZczXFYQGII3BnjE1wV+w5fxw3CVDfqhSAWRINpYBoLVBVUXWwOIu9aD
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MpCsfJDo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-next 9/9] ice: stop destroying
 and reinitalizing Tx tracker during reset
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
Cc: netdev@vger.kernel.org, jesse.brandeburg@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/22/2023 5:40 AM, Karol Kolacinski wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The ice driver currently attempts to destroy and re-initialize the Tx
> timestamp tracker during the reset flow. The release of the Tx tracker
> only happened during CORE reset or GLOBAL reset. The ice_ptp_rebuild()
> function always calls the ice_ptp_init_tx function which will allocate
> a new tracker data structure, resulting in memory leaks during PF reset.
> 
> Certainly the driver should not be allocating a new tracker without
> removing the old tracker data, as this results in a memory leak.

How come this isn't for iwl-net? Some of the other patches in the series 
also sound like bug fixes. Is there a reason everything is going to -next?

> Additionally, there's no reason to remove the tracker memory during a
> reset. Remove this logic from the reset and rebuild flow. Instead of
> releasing the Tx tracker, flush outstanding timestamps just before we
> reset the PHY timestamp block in ice_ptp_cfg_phy_interrupt().
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
