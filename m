Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0E582A015
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jan 2024 19:08:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D95F84027F;
	Wed, 10 Jan 2024 18:08:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D95F84027F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704910125;
	bh=P1nH4sAp5fnx3odm1FiFvRF92LlimBZBkCO4kEAuooI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jViqlHsfAFgaConYzv4j29utXEl0mRpuyXOKwQ+aXRSWTIi+g/RH7tfpjJ4nUcy6p
	 hR5pkMktpM66/gi5mc261ltegfb80dXqBa3LxBF9W1fFW962lh2d3vD9KHj/0quWz1
	 yDE/Eb0rg2JJGDvIcqibnemgoCr6/z4LY0a6z2dTrwri+brx2BmmuXdSTJi+/57RSX
	 6HHPoKiBc8nL9AXQARzrVHGA/SkjvNfJT4XIqh8jYZaub55xI0E+cfxJvwaQp5EK0D
	 7QS32g5H/2PRpG6mEtRHDAC4JRBg71N/EpzwG5NJ4otK3W6il/GVY9omYre+PR7m3i
	 qiRiaeOBQ852g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LsGtoXnLbfbb; Wed, 10 Jan 2024 18:08:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4F7DF436A7;
	Wed, 10 Jan 2024 18:08:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4F7DF436A7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 06D501BF85D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jan 2024 18:08:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DAEDF61456
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jan 2024 18:08:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DAEDF61456
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GGQTz0-sWHU2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jan 2024 18:08:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 423AE61451
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jan 2024 18:08:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 423AE61451
X-IronPort-AV: E=McAfee;i="6600,9927,10949"; a="5355630"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; 
   d="scan'208";a="5355630"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 10:08:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10949"; a="872729260"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="872729260"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jan 2024 10:08:07 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Jan 2024 10:08:05 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Jan 2024 10:08:04 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 10 Jan 2024 10:08:04 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 10 Jan 2024 10:08:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BHxFrO/SUZQVMMT5VDqkxffzeBV9FfGjGDKB9bDgwe5cIXRYRLAW6a89DXQjgfxW4ssYlzmo2GhcTFzU+hLNz0ZFYKxBBcr64mPzrsygkSd7ksh8rYrdJIu7StiPmm3SoZQpqTysM9eR6f7TqV3VNCJCZJpTvq65O6+gI0fvRGih44baLXlPg9MDJUy+0oxIGVdtEgckfU9IZHAdaAFGVQYWXUCy55ru05Xgksrq/fz3Dxq81oxcUANiiojBVPI8iJBZTbc7JKKa2459Wx+iGl1sDoIfNsClz4TUeLqMNwTlrCUJfw/Fqu1lZTWG5T09NFNk0iWwLJpJ+Ni/MiPplw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P1nH4sAp5fnx3odm1FiFvRF92LlimBZBkCO4kEAuooI=;
 b=l9mHy2Cul5B+qRVxclch+FrVfoYDlpHEvO3ciP3ex86RpAC4DTxod6KQ104SL2DVYVGmMEhyyh64Peo78m6uEHNLfNclEKMJ+4QZNq3ebRuqlLyd17q/Hk11mNVNCGJqjwiHyZMP2YgfE4N4byoUeqEODLeGAbwrB1XGBXdM7J/RDOjP/F+zrqAxvpvV5qbRn5yfr1JHrdAXzBZfttxCBy/QB8WpN9HEbKBNdTfZjxPjh9RDNArYdISqPk1hnAwnAUXcLXI2WjvNsqRo2aMUIxD9P3q1suu3G2XEncHnv6Buns7UStlgBaISn9kQ+j264jk0+44BKvtjq2GuTpYrzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by CY5PR11MB6511.namprd11.prod.outlook.com (2603:10b6:930:41::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.23; Wed, 10 Jan
 2024 18:08:01 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::7706:285b:27d0:2c5d]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::7706:285b:27d0:2c5d%6]) with mapi id 15.20.7181.018; Wed, 10 Jan 2024
 18:08:01 +0000
Message-ID: <bce78734-d359-499b-9693-05549e6a73a4@intel.com>
Date: Wed, 10 Jan 2024 10:07:59 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, <intel-wired-lan@lists.osuosl.org>, Dave Ertman
 <david.m.ertman@intel.com>
References: <CAK8fFZ7Xi3=1HFY400firmpRWzHDPsi90cUU5bjOkF00KNZWeA@mail.gmail.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
Autocrypt: addr=jesse.brandeburg@intel.com; keydata=
 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
 /fnLfll98Nhx
In-Reply-To: <CAK8fFZ7Xi3=1HFY400firmpRWzHDPsi90cUU5bjOkF00KNZWeA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P221CA0026.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::31) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|CY5PR11MB6511:EE_
X-MS-Office365-Filtering-Correlation-Id: 1f39a152-e714-46f5-1dc9-08dc12071569
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: H+RzZ3JBZATsxkI1fIJxh0rokOJlD6iYNEG88kbmo1Vg2za+wl3vfX7p2W6OWwiwkPcYvqbWjIvGSOqjJqWJQGYx48uhMIpLh5CntSQJOtK+FuYW4e2N1r30mZ19Su5BsQLQtVQcyRVNKPS3Cqut5XS6pujnB97qTAd2yt8F67Zie3as3Mt5Qo6DLa1Fm0m+51yQviRO/3ptPjS16ImqSZbSQngnpGIEfQ7HDgId2q7X8qbuDnyn2u52kLBrj6wG2HdPbHoH0jPmQWbH/2WP8BrJFs2LwBA+XcoJxN+VAlcZNbJncWF0+2aDB5a4JNbCOiZXEeJ+JQpfwR+MFAlNS19P5efs+vRDyQsc4C7NXsZGCgF0i7qxEvVqNmsxvFPoADIn/XpoNO5nDu4afM1MPW0Eq4b4WqjmfsrWr5DJqwIXnyNfHgOfrxF8hf+j9aw+B801WfQezSIsM/8xrBBOxtkC9VEJo72t5nm5+OYUrOvt2jm9LSETAhqzIYSPZeqb/p3VlRdQN4eVIvg6rFmWaliauCQ4LVwjE7WA00Ib+tE7QkuqTRPRtvnwKZoZ8QLIQYZ69JTRDkpzpcTvq7SMqo89MRFadX1bk/T/D56wWprtvsBe1HshigIRBPQG3mf/WJmXXwwkukfLNY49mSE7Dg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(39860400002)(346002)(396003)(376002)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(83380400001)(478600001)(82960400001)(966005)(6486002)(8936002)(8676002)(44832011)(4326008)(66476007)(66556008)(66946007)(316002)(36756003)(6636002)(86362001)(54906003)(110136005)(26005)(2616005)(38100700002)(31696002)(6512007)(6506007)(53546011)(31686004)(5660300002)(2906002)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WmV5OWdkRW40UmJ2Uk5KK2FLRUNTYlNSaktvVzZrRGhrRHlzeENtaTVkMGJV?=
 =?utf-8?B?WElOYklaeFc0ZkpOb2tOOE0vRHlMZXRvSjZyN0NuZjE0cWZvdG9wOVpqL3RE?=
 =?utf-8?B?bFRLTUNubEUrWXYvMDRWVzhsa0hXb3VWQWhEWlRTWmp6N2RMVlc2SWQ4eW5F?=
 =?utf-8?B?MFlobUpiT0g0a2ZHdWwxUGQvdnZndmVRaFhKOUdhT1EveGoxbFkvYW04Slc5?=
 =?utf-8?B?b2JrYjhJSkpJRmpEdmNhTGVRZHUyZ2NFZnErTnFFTFJPWGYxQnJqWGJaL2hv?=
 =?utf-8?B?djBVTjZlNmVEbDZwOHVsQWl1d1hidEpmNEZJNU80ZkdhVzBZUnRtbW10MUU5?=
 =?utf-8?B?eHJKU0wySFN2cmQvTmJRdit1cnVhdGIwYjVFeTJKS0NUNVFvY1dmYnJqZm9s?=
 =?utf-8?B?T201cWpkb2tGenBXNzF0SjRCT3VmeXFHckhHRWdhb3pQeXZYR2ZIcWJyZDNO?=
 =?utf-8?B?UlM3b2NvUXJ1bmhXdmtyUDl0V0JrYUw3OTIydFNRUDZaaHkxWUpFK2JzWk80?=
 =?utf-8?B?Q1NhcjlXU1pHTmVtMlRJMHN1M3BJUFhSc3M3elpNSHQyZ2JyNG9obS9ibDZa?=
 =?utf-8?B?RytpbkZUU0kyMkNXVURnT1NRZ2RBaE1pd29YRWovb2tEUXFKZ0tHYTdWdmtX?=
 =?utf-8?B?ejdqWC9vSTJheHFSZUJrMWZOaUwzRlI4TDJyU3FLU0JJN2VId3dWY1c1SEZl?=
 =?utf-8?B?NEdEOFRMZmxSaGovRlBadVVQdUdueGVjNkdTL0FJTU1rS0FxdnVaWTVjaGpz?=
 =?utf-8?B?dW8xTnhQVlZUR1ZzeWg0NmxQbEdjM3U4Tzh1bHFqZTNyOHViS1hlYWZvZXYv?=
 =?utf-8?B?ako1UUhxeUt1QVVTMmxGdDdoekNCMVVKajNLbDNBMmRFcFEzOXVJeCtjRkk4?=
 =?utf-8?B?SjRLL1ZoRWZPZlczTW9vbWxqRTQ5T1lmQ2M0VVhudHA4a1oxSkxaL0o3WlN0?=
 =?utf-8?B?WjNDTVJEalI4Y0JTUDh0aUNpbDJQTEJXV1VBZ0lGOWN6MjQvanBEQ3dnd1Jj?=
 =?utf-8?B?TmhXS2ZlY0JqSkxlVDhIak92UGFWdVZ4d2J1M3MyZnkxYytMeUJVOVRaNVRQ?=
 =?utf-8?B?aDkzNWZlYXlHemhKUDZVVXFNSFo1WFNwS2hoV055NGhuVllqU1RVMUhkWWw2?=
 =?utf-8?B?UkFDdkRKdnQyWVVpb2J6M1dqYU0rZC9LdlIrak9QOE05S3FpZjFIUlJzd2lS?=
 =?utf-8?B?dUx4KzFQMmphTnM1WVN1QmhiN09JTWJJZXVCcWxZc3lUblN6NlM3VDNnVTdJ?=
 =?utf-8?B?QUVEamo5WmQ1UWd3aTYybTliZVYvSmZ6ckduRTI4bWJHRXlIOFlUWWZDVUht?=
 =?utf-8?B?VFp2QldwWmYwOUE0NDlkSTlDcjB6YVZqbG9VQTREaUozRFZEZDJKUUkvR3VT?=
 =?utf-8?B?enZXa3BQL3N4OXY3QXNtWDZxOVN3b0taRm13YlZ4WUQ4MnZoeTcrQy9pQ05D?=
 =?utf-8?B?bzNHY1lJYkFGTURQNlVpYVoyNE0ySlMxL0JvcC9pRVFOVlZ3K0xhaXBRa1pV?=
 =?utf-8?B?UzV6ZElTblZBN2FQTDhsRng3NEF0N2w0cEttNDBydHJwOE1WVjRXckk4ek5u?=
 =?utf-8?B?WVFXWTUrVVA3V0U0RzROaWtCUDh3MkRMVmhrdUpkUm5GRVB1L3A4ZGxzNDQ0?=
 =?utf-8?B?emxISEJic2tyYWtaL0tlLzRpRVc1N0diZGt4U0crQVk5MmtsRk43a3BRWHFz?=
 =?utf-8?B?RWdYNXJDc0h3dlRlYktKdU4xUnJTUEViQmRtc2tXMk9GYjdBYkVIQjJCVlhO?=
 =?utf-8?B?SVFmV3I4ZDE3anNlRzNscWh0N1VYTnBVS3V3VHdFUmJVU1VzV0lRUGxqTWxo?=
 =?utf-8?B?Y0FxV0xWTzdkR0s3ZE9VRTF6eFN6Y0pUcTRKeFRyekxlR2VaK1kzcXc0Q3pG?=
 =?utf-8?B?SXpoYU8xengxUzg5MVJnaXczb2RISmRoeS9zV0VkMnh6MEdrcENZV09ZUm1I?=
 =?utf-8?B?NWJyWG5xTTdMcU01NFpJcGpOVVgzNmpzTzNlZTU4TlN6Z2luemMvM1FFZHRz?=
 =?utf-8?B?cDhEZVkvZEZMRzFlTmc1WDU3dHdtVWg3T2cvaW05S0FLRDlQYjhGeGlFR2l1?=
 =?utf-8?B?ZnYycy9iMzMvQzI5WStpU2RMeE0ra05tYXQ5Rm0rRlRlSGRFVzBmU09QenFM?=
 =?utf-8?B?QzhGb3pieGlyYmhVUGVxMmhURzFyd2t4UDZIWENwbTJscGoyeFBmWnFUWUox?=
 =?utf-8?B?NFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f39a152-e714-46f5-1dc9-08dc12071569
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2024 18:08:01.4482 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T5TrU+6p0ZDOhUk2wZFPUozyJ+Fs3q5S0YE3yzCx8yJeh7db6YODb018eGkw+3YIIRpLvdHgaTeXQ5W7HMZjWnB9LM5qDguL7O53OSmpT4E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6511
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704910118; x=1736446118;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JuiSuaI9EdGWKajv/6mSUEtgZsteli6+OdSWrrNA2Ig=;
 b=eZbb3yq9dTAQgQdwexTo9ZwDQXeekW7jDoJOP46P7O71U0q1HGOBfpAa
 k6A+JKt0UAlcj35lD7d5/Gs5oJKuAc2GVt44HujCpqRYsopgrUOrUScFx
 e7Pm8SaRlWEzIiCnbBOIcevpNEx4kufOpbaEuXVPpZcoN5hYIdfcM1bQ6
 03wPzkad+FRFybhcA0EErKkNzeeQZcYfchqR5OQRkbBTW6IZmT4SXqIwX
 jYkwivR3ksq4vpxJ4NLwYxxmtH8G2ADa5mPSp8jwUW3ogGyWMtHN/1WvK
 lTIjli08tiJXTGCGRiiib+r18scvJ+/f7Nt11Lm2m+c6XOJeyZXm/wPeQ
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eZbb3yq9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [REGRESSION] Intel ICE Ethernet driver in
 linux >= 6.6.9 triggers extra memory consumption and cause continous
 kswapd* usage and continuous swapping
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
Cc: Igor Raits <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/8/2024 2:49 AM, Jaroslav Pulchart wrote:
> Hello

First, thank you for your work trying to chase this!

> 
> I would like to report a regression triggered by recent change in
> Intel ICE Ethernet driver in the 6.6.9 linux kernel. The problem was
> bisected and the regression is triggered by
> fc4d6d136d42fab207b3ce20a8ebfd61a13f931f "ice: alter feature support
> check for SRIOV and LAG" commit and originally reported as part of
> https://lore.kernel.org/linux-mm/CAK8fFZ4DY+GtBA40Pm7Nn5xCHy+51w3sfxPqkqpqakSXYyX+Wg@mail.gmail.com/T/#m5217c62beb03b3bc75d7dd4b1d9bab64a3e68826
> thread.

I think that's a bad bisect. There is no reason I could understand for
that change to cause a continuous or large leak, it really doesn't make
any sense. Reverting it consistently helps? You're not just rewinding
the tree back to that point, right? just running 6.6.9 without that
patch? (sorry for being pedantic, just trying to be certain)


>> However, after the following patch we see that more NUMA nodes have
>> such a low amount of memory and  that is causing constant reclaiming
>> of memory because it looks like something inside of the kernel ate all
>> the memory. This is right after the start of the system as well.
> 
>  I'm reporting it here as it is a different problem than the original
> thread. The commit introduces a low memory problem per each numa node
> of the first socket (node0 .. node3 in our case) and cause constant
> kswapd* 100% CPU usage. See attached 6.6.9-kswapd_usage.png. The low
> memory issue is nicely visible in "numastat -m", see attached files:
> * numastat_m-6.6.10_28GB_HP_ice_revert.txt   >= 6.6.9 with reverted ice commit
> * numastat_m-6.6.10_28GB_HP_no_revert.txt    >= 6.6.9 vanilla
> the server "is fresh" (after reboot), without running any application load.

OK, so the initial allocations of your system is running your system out
of memory.

Are you running jumbo frames on your ethernet interfaces?

Do you have /proc/slabinfo output from working/non-working boot?

> 
> $ grep MemFree numastat_m-6.6.10_28GB_HP_ice_revert.txt
> numastat_m-6.6.10_28GB_HP_no_revert.txt
> numastat_m-6.6.10_28GB_HP_ice_revert.txt:MemFree
> 2756.89         2754.86          100.39         2278.43         < ice
> fix is reverted, we have ~2GB free per numa, except one, like before
> == no issue
> numastat_m-6.6.10_28GB_HP_ice_revert.txt:MemFree
> 3551.29         1530.52         2212.04         3488.09
> ...
> numastat_m-6.6.10_28GB_HP_no_revert.txt:MemFree
> 127.52           66.49          120.23          263.47               <


> ice fix is present, we see just few MB free per each node, this will
> cause kswapd utilization!
> numastat_m-6.6.10_28GB_HP_no_revert.txt:MemFree
> 3322.18         3134.47          195.55          879.17
> ...
> 
> If you have some hints on how to debug what is actually occupying all
> that memory and some fix of the problem will be nice. We can provide
> testing and more reports if needed to analyze the issue. We reverted
> the commit fc4d6d136d42fab207b3ce20a8ebfd61a13f931f as a workaround
> till we know a proper fix.

My first suspicion is that we're contributing to the problem by running
out of receive descriptors memory.

Can we see the ethtool -S stats from the freshly booted system that's
running out of memory or doing OOM? Also, all the standard debugging
info (at least once please), devlink dev info, any other configuration
specifics? What networking config (bonding? anything else?)

Do you have a bugzilla.kernel.org bug yet where you can upload larger
files like dmesg and others?

Also, I'm curious if your problem goes away if you change / reduce the
number of queues per port. use ethtool -L eth0 combined 4 ?

You also said something about reproducing when launching / destroying
virtual machines with VF passthrough?

Can you reproduce the issue without starting qemu (just doing bare-metal
SR-IOV instance creation/destruction via
/sys/class/net/eth0/device/sriov_numvfs ?)

Thanks
