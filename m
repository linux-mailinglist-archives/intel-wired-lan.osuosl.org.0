Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 881C97511F3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jul 2023 22:42:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0030A41F91;
	Wed, 12 Jul 2023 20:42:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0030A41F91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689194544;
	bh=MU+W7cvXWmuWzPa64hJK0XI9m9W1WLpGY493OYmwldM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Tv4r6q95Se7aRbIrBEuxNNN4d5y2rE0qKH1WxBbRZOYVUyQN9p7BcywDmpQln5rJ+
	 Pa5eb7HAfCtMgGrBgESUUuxr3rlZWstmyK205b20ecUyhkqrM/54IhN5MkHVMH4Y9v
	 J+37QJIa65EiERg4KNqY9+aif+EJYqUk3UFJR121CKeaBZKDTYKR3YVni6++6KjJGQ
	 j+5x+DZtFAIKy8jdWb+m+P365hgHRNVCUSIUsk0BQn1fkGNuatzs7/QzVQyRY+WbWI
	 BvwCnaJd0pb0cXxniZ/dzBgHoKEPFyzBpcEw0BetPkFuWd/vO8gyfw7tsm+TSx2qt5
	 cgQY1LeI4dILw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zBXCEmeBxlbk; Wed, 12 Jul 2023 20:42:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30A3E41F8B;
	Wed, 12 Jul 2023 20:42:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 30A3E41F8B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C9A4B1BF400
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 20:42:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AB9CE41F8B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 20:42:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB9CE41F8B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h5ec_nV2ZO98 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jul 2023 20:42:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F41C41F8A
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5F41C41F8A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 20:42:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="349857117"
X-IronPort-AV: E=Sophos;i="6.01,200,1684825200"; d="scan'208";a="349857117"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 13:42:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="751312299"
X-IronPort-AV: E=Sophos;i="6.01,200,1684825200"; d="scan'208";a="751312299"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 12 Jul 2023 13:42:14 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 12 Jul 2023 13:42:14 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 12 Jul 2023 13:42:14 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 12 Jul 2023 13:42:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AYM1owiYw6x+zu7FTVl3/5AGIfy3a4Do3G9zFI3RsRV91NDdYs0AFLBHrwTKfdlwAjakiVRlSYYfvzAI8MLhPSC5BK/gBVOo6rQL8rtQmDxAmrgjwd0W2rGV43XPmhKepLx5/HOPYT0Azsecdlq/uWrI+73P4IQUY0xjetC29+uhURjbap6uNi4RaXKom2AbbS8pTkVDK40MAn7TF7z7u+omH3BrOmz6COqQlJiwCy8T+mE+kBC78fPZlqhkCIcMa2CifC3jnU9zX2cILdOJ10GDxo3U3vJwU/iQOCWJFeEd/lSjCSVHADC0XnFbj1q0ENRbIsU0hVJu/dugsJRYHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=12CNwT/NCmcsEv/HrXG7mShfCS9ZYRuR45QQ+jzf1tg=;
 b=Ek9t/vEicdg4R/tO4X51C1T1zhnglmaDkVUto5SB8fj7SO2kStW+6CEJSQSdBAOTK3J5nTFqYxfiCfzKVgl5KQC/6Ogh4YANZzNCK56sOQQpLP8FdeKu9duCbPjn2LYG06L2X6PaJy8R7oZuvyCblsXuma54d915+VqCDA+aU1pjGuBb2JcpFTIJkiqbZrXvO3+lpf3l9wCyQNidILxPH4l+I0cp/l+EX6NALjj1R3SBsuz06K5i5jUDlJOCv4lq95Cp9hmLxDvuEqEiWiuP1FKEJBxnAi4cM8cmK7nwsJQdPyIER0eo3KVXIiCeGoLe/VFNQUOz/0qxM2U/MDVEFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by IA1PR11MB8248.namprd11.prod.outlook.com (2603:10b6:208:447::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.30; Wed, 12 Jul
 2023 20:42:11 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bd89:b8fc:2a2f:d617]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bd89:b8fc:2a2f:d617%4]) with mapi id 15.20.6565.028; Wed, 12 Jul 2023
 20:42:11 +0000
Message-ID: <e9a40c89-9540-ed43-660c-d506aa0aae4f@intel.com>
Date: Wed, 12 Jul 2023 13:42:08 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Jan Sokolowski <jan.sokolowski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230711122741.780900-1-jan.sokolowski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230711122741.780900-1-jan.sokolowski@intel.com>
X-ClientProxiedBy: MW4PR04CA0096.namprd04.prod.outlook.com
 (2603:10b6:303:83::11) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|IA1PR11MB8248:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f7ec61e-3a86-4ee8-3045-08db8318778f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5IOuJ7hv5tO5NwHJv0p+wSODwlsBAHkOVwIXDj36KSdie1aJP5znyeiUmkArQed+KYRHW397+A3jbC7FoZNyf5YNff4dgV09Ga88eEzXsrKI8uhSOfBtinJv4/OCIJ5fqkYGr8erIbjspINsU4qekO6KNG5LK6MRdBOtGH6eoFLArHik0S2s/NwdynRzYrJ5ATtuddP3CRbU1n+oFA8zYuHGjZvFK2NQw1oXKtCTlwdMYSZnb5l2bIiW11+n5cDkhxaYqyUP+muEXJ73xRQ7qsUj9rjprgmR2xD8hV/h3Z7lGRD26jn81jl6BmclWyZhkeY2K3T8gZazutG9SdWkLQetRwhUK7vLV+ft8rehgBDL7Zr4BieGYhDDYqVDNKiqfZYlnReZ38S7VJi26IN7d6LgMWeK/SqXhvUZF0wdHgArytpBtBXQk0exzPinFcAC/gxlLd39AxkZ1S7UpzroM/QLsKMJ/8sSNHjMsHBGe4/z9fXOZYbq2stec5eZprslyG8Ea61dB9vtBVmttNO+bPBFrnFQalGUWHvOxXOL+ObeRUHyoTzaItqJT9u5tUcEkqLSviEYUbJSSNG24UxaY36bn1cEWyXmWxM6/6EXwJ+tJwt2J+DsKaNgGEGEhymEUzo4J/PpP5AsFl+1Aix14w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(136003)(376002)(346002)(366004)(451199021)(31686004)(478600001)(6486002)(6666004)(36756003)(83380400001)(31696002)(2616005)(86362001)(2906002)(66946007)(186003)(107886003)(53546011)(6506007)(6512007)(82960400001)(8676002)(26005)(38100700002)(316002)(4326008)(66476007)(5660300002)(8936002)(41300700001)(66556008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VjlPdmliS0JHRlVPNHdYOUZRUUk1a0RTZExwRURGWitqZURvcE1JSWFEcndB?=
 =?utf-8?B?eUZWc1UwY1dvYWVjdVZtTWFXVW5MS3F0TDBNU2czNXJ2RmZqcDMyVGxBZnYx?=
 =?utf-8?B?NW9pVmJnWS9WQWsyTHgrUUNncVh0NFhWM1hlSmJJL3BzNDBHWG9OZGpXMVlJ?=
 =?utf-8?B?a1l0YUhPbGxWZzczNXlGZE9sV2ZtdklLcm1Wcm1MekdoeDkxUHUrRWtlS1FS?=
 =?utf-8?B?SWd2UkZFSTc5akYzcU5hOFUzdHRkckttTGpsUEZmZTE1bTFnVkZkd3A4OXJD?=
 =?utf-8?B?bTEvSHAvZ2JwUlpOV1A1eGhtS3JZWjZjQjkxRnRmRUVyN1ZDRjlWT1E5cFF2?=
 =?utf-8?B?UUJVZVh4NzEvc0lNOGtkSDVMcVoxS1A2OUlkT2VQeTc5bmJlbWFkMUVCeUFk?=
 =?utf-8?B?MjZIYW8vZ3dYdG9Xdm0vUHFGNGRWRXloekhXM3lOWjkwOXROc2JNR01EWDVo?=
 =?utf-8?B?OXdOVjdZQStVd3JwMDlUdGFCb0xYNUxSMDlIdHdiRmQrVENvcWpqRVNOR0JV?=
 =?utf-8?B?SHZZMzVwVkZ5N09WN3BYdnhIT0c3b0FDTVROVlVSN0o2NHRUMlhmQlV5T1JF?=
 =?utf-8?B?R1FLQjYyVVpPdFlLNTk1cDlFQUJIY3lkOUtMRDRhci9NWEFWTmFub2tacDVL?=
 =?utf-8?B?SmFUbVhuOTc5cFRDTmVjZ1hldnNYUitGbllMR0x2MnAySXJ2eFZtSkljV011?=
 =?utf-8?B?TzFXZE44emlKc0lUZ2RPYTE4WWtJTHZWMUtGTTRDNWlzSlBtOStCMU4wTFRS?=
 =?utf-8?B?ditWV2svTm8ycHQ0RGNiMGdUVS9JRHR1MUIxTDhTUkRCbDdMV2tKS0xtV3B2?=
 =?utf-8?B?RnBsU2ZCR3c2aXBmbzFVdjgvRkIwS0JmNUs3SUlrWEUrY2R2cGdacjg3T3BU?=
 =?utf-8?B?ZkRsanM3YVB0ZUYydjQ1K0xkVGdFS1dTTkF0cVNuVDNlTEdKaTFJYW8xQzRB?=
 =?utf-8?B?aGV2TnZPL1lHL2xxVmVSbjlkZm5yTnoveUNjamNhVWp2S0c0ZitlWVhRMHpw?=
 =?utf-8?B?UzVOMmZqbnFYb3pjeXdwYURlWE90MjVyeFNWNUVwbzlNTWY3aEF4cWdxaTJD?=
 =?utf-8?B?aEJCY24zWmNMVVpCUVJBaHMwZk44Smk5b25rVkQxN3ZISXN6dldjOWFCOXNl?=
 =?utf-8?B?WldaREVPQWtYNnlCamVmeXJqVk9yc2h6REowQnBBRVhUbFFGSWhTbk56QWhw?=
 =?utf-8?B?aE9QR1hZemtCNzMwL1daSjUzTzIrWVB2Vllya1Q2QXVKeFA2OWtPSzM2djU2?=
 =?utf-8?B?QWFxbzdLSGlwMG5TTjJML0hHMU1UOXVJMHJETVRRbWV0V21WTGdDS1NRbks5?=
 =?utf-8?B?N3Zod08zamtkQWVaSlg5Y09xdkxlU2NaSGRMbHVucVdqTU9zY3g5WVR2ZVdM?=
 =?utf-8?B?U1BPc0NlYk1wQXc0TjFnL1cwVmdTejBubUNTQUtpckVaUHNrdmtDVFc2RE5O?=
 =?utf-8?B?ZVRzTGkvU3lMVHlpOXNKQ3pQR3IxQ0ZIUVp6M2lYNytML0ZzWHRYaUgwTVY5?=
 =?utf-8?B?Uy84dDc1MkNFYUlHSk1HTWxiVWNTeUlSSzRuRGJHL2ZBS2Y2QVVycnFSWitD?=
 =?utf-8?B?Rmhld0MvajFMQkI0eWgrd3R4UEkwZUpYNDZvSzBkMWZKMjBiYjJsbnZ2MmhL?=
 =?utf-8?B?aGpEZjR1MEY5Q1VHako4NXV3L1I5K2t4byt0SWdLTlFldG41NFpzQzNNcHJl?=
 =?utf-8?B?Z2V1cGFUTzdNU3JLNU9HUitENDhHVGZ0VDI1UHB2R1A1L2xLQURaZlB3R3RC?=
 =?utf-8?B?MVh0Q1dFSDJJOUw4OXZMeWNGR3FGVzNRc3ZnVGJVbnRSNkZlZDd4ZU51RVJ1?=
 =?utf-8?B?cTNMYnpUL0l1Ym80OVBIZGtXc1hiTFFPUTFKcG9VUW9YZThIbVU1b1hSMU5J?=
 =?utf-8?B?OXRpdmdmeWIvTVNMeFd0WDRuTmRMeEZjZCtnSWl6dnMxcnZkQThHZHBiMnc0?=
 =?utf-8?B?SWFwd25zYms1bzNnZVZ6dWpVeXVUUWNmRC9ERTJMQXgwclczbFJTSHZnbkN3?=
 =?utf-8?B?cVRXcDZsWGsyZHRJOEZSS0ZFdlZrYnVVWnUvb1RPMnZvbW83eldRSVQvbmRE?=
 =?utf-8?B?c0hOS3grU2MvckVubnQyakxaMDZWTm1mUXFvaFpEQVR1Ky9NT0h6SGQwRWlu?=
 =?utf-8?B?bTV3Q0UvTENYSmdTTks4ZmthRmZVUmRIWjZBb3lwNGpvS0o3dDQycjhXZEQr?=
 =?utf-8?B?ZUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f7ec61e-3a86-4ee8-3045-08db8318778f
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2023 20:42:11.3153 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z1DU7aV7QQOamneI5VhJXcgqAgtvYH2EWj//3r5AIUPgkqGPaqGm8WYUIw2zRfo9udYRYuoYE/kg/SmHvKpmA2epHd+D85GX2b+oVrGUdlw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8248
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689194533; x=1720730533;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WuYRtpdldv5SeIzA+Qn4t4z65tE90CDpxTzmxxFvJek=;
 b=dITeYDpi6Qd+B2Z7w2CqWAnDOVk+mbxvd6L5lJMlCzl1WOKC1OrySsl/
 CcarkSzAt2BKYvdAGn4AHcRG9lGGC/eZOiDWGcU5HS+c7tJ8JZe53vXlo
 tgiUhicwD76iQWLE7aLUlWycHpKctiO1PSP6UqpmynAhiY1o9F2rJ8Vef
 i+6We29EJ5DyfPH4aukueT1vlZRyjM3gWf3EFmHFIu4gi1hfadeZwPGwh
 a3jVzyE93qdhvNPgSY0RrEyqVP2f61rBUzTznNJbFMZm+buZ9HX40cC6b
 aXKw7YUoxPFTb1nqsZdBUgThbnv9af2lrxeePKq/wJascOWzeGvCncR21
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dITeYDpi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/2] ice: Add get C827 PHY
 index function
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/11/2023 5:27 AM, Jan Sokolowski wrote:
> From: Karol Kolacinski <karol.kolacinski@intel.com>
> 
> Add a function to find the C827 PHY node handle and return C827 PHY
> index for the E810 products.
> 
> In order to bring this function to full functionality, some
> helpers for this were written by Michal Michalik.
> 
> Co-developed-by: Michal Michalik <michal.michalik@intel.com>
> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  1 +
>   drivers/net/ethernet/intel/ice/ice_common.c   | 62 +++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_common.h   |  5 ++
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  3 +
>   4 files changed, 71 insertions(+)

This has a compile issue:

+../drivers/net/ethernet/intel/ice/ice_common.c:2473:30: warning: 
incorrect type in assignment (different base types)
+../drivers/net/ethernet/intel/ice/ice_common.c:2473:30:    expected 
unsigned short [usertype]
+../drivers/net/ethernet/intel/ice/ice_common.c:2473:30:    got 
restricted __le16 [addressable] [assigned] [usertype] handle


> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index 5062c445a27e..8b1d2c4c46e9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -1404,6 +1404,7 @@ struct ice_aqc_get_link_topo {
>   	struct ice_aqc_link_topo_addr addr;
>   	u8 node_part_num;
>   #define ICE_AQC_GET_LINK_TOPO_NODE_NR_PCA9575	0x21
> +#define ICE_AQC_GET_LINK_TOPO_NODE_NR_C827	0x31
>   	u8 rsvd[9];
>   };
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index e5e2461ef117..458ffc3a7e47 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -5,6 +5,7 @@
>   #include "ice_sched.h"
>   #include "ice_adminq_cmd.h"
>   #include "ice_flow.h"
> +#include "ice_ptp_hw.h"
>   
>   #define ICE_PF_RESET_WAIT_COUNT	300
>   
> @@ -2449,6 +2450,67 @@ ice_parse_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
>   	ice_recalc_port_limited_caps(hw, &dev_p->common_cap);
>   }
>   
> +/**
> + * ice_aq_get_netlist_node
> + * @hw: pointer to the hw struct
> + * @cmd: get_link_topo AQ structure
> + * @node_part_number: output node part number if node found
> + * @node_handle: output node handle parameter if node found
> + */
> +int
> +ice_aq_get_netlist_node(struct ice_hw *hw, struct ice_aqc_get_link_topo *cmd,
> +			u8 *node_part_number, u16 *node_handle)
> +{
> +	struct ice_aq_desc desc;
> +
> +	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_link_topo);
> +	desc.params.get_link_topo = *cmd;
> +
> +	if (ice_aq_send_cmd(hw, &desc, NULL, 0, NULL))
> +		return -EIO;
> +
> +	if (node_handle)
> +		*node_handle = desc.params.get_link_topo.addr.handle;
> +	if (node_part_number)
> +		*node_part_number = desc.params.get_link_topo.node_part_num;
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_is_pf_c827 - check if pf contains c827 phy
> + * @hw: pointer to the hw struct
> + */
> +bool ice_is_pf_c827(struct ice_hw *hw)
> +{
> +	struct ice_aqc_get_link_topo cmd = {};
> +	u8 node_part_number;
> +	u16 node_handle;
> +	int status;
> +
> +	if (hw->mac_type != ICE_MAC_E810)
> +		return false;
> +
> +	if (hw->device_id != ICE_DEV_ID_E810C_QSFP)
> +		return true;
> +
> +	cmd.addr.topo_params.node_type_ctx =
> +		FIELD_PREP(ICE_AQC_LINK_TOPO_NODE_TYPE_M, ICE_AQC_LINK_TOPO_NODE_TYPE_PHY) |
> +		FIELD_PREP(ICE_AQC_LINK_TOPO_NODE_CTX_M, ICE_AQC_LINK_TOPO_NODE_CTX_PORT);
> +	cmd.addr.topo_params.index = 0;
> +
> +	status = ice_aq_get_netlist_node(hw, &cmd, &node_part_number,
> +					 &node_handle);
> +
> +	if (status || node_part_number != ICE_AQC_GET_LINK_TOPO_NODE_NR_C827)
> +		return false;
> +
> +	if (node_handle == E810C_QSFP_C827_0_HANDLE || node_handle == E810C_QSFP_C827_1_HANDLE)
> +		return true;
> +
> +	return false;
> +}
> +
>   /**
>    * ice_aq_list_caps - query function/device capabilities
>    * @hw: pointer to the HW struct
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
> index db95a1d2d878..b819867b9bb4 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.h
> +++ b/drivers/net/ethernet/intel/ice/ice_common.h
> @@ -16,6 +16,7 @@
>   #define ICE_SQ_SEND_DELAY_TIME_MS	10
>   #define ICE_SQ_SEND_MAX_EXECUTE		3
>   
> +bool ice_is_pf_c827(struct ice_hw *hw);
>   int ice_init_hw(struct ice_hw *hw);
>   void ice_deinit_hw(struct ice_hw *hw);
>   int ice_check_reset(struct ice_hw *hw);
> @@ -94,6 +95,10 @@ ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
>   		    struct ice_aqc_get_phy_caps_data *caps,
>   		    struct ice_sq_cd *cd);
>   int
> +ice_aq_get_netlist_node(struct ice_hw *hw, struct ice_aqc_get_link_topo *cmd,
> +			u8 *node_part_number, u16 *node_handle);
> +bool ice_is_pf_c827(struct ice_hw *hw);
> +int
>   ice_aq_list_caps(struct ice_hw *hw, void *buf, u16 buf_size, u32 *cap_count,
>   		 enum ice_adminq_opc opc, struct ice_sq_cd *cd);
>   int
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> index 3b68cb91bd81..1969425f0084 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> @@ -112,6 +112,9 @@ struct ice_cgu_pll_params_e822 {
>   extern const struct
>   ice_cgu_pll_params_e822 e822_cgu_params[NUM_ICE_TIME_REF_FREQ];
>   
> +#define E810C_QSFP_C827_0_HANDLE 2
> +#define E810C_QSFP_C827_1_HANDLE 3
> +
>   /* Table of constants related to possible TIME_REF sources */
>   extern const struct ice_time_ref_info_e822 e822_time_ref[NUM_ICE_TIME_REF_FREQ];
>   
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
