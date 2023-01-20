Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B446761CC
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Jan 2023 00:59:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C676E82726;
	Fri, 20 Jan 2023 23:59:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C676E82726
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674259152;
	bh=C4KOwqAnnjiootLZtNY/JxXlO5XxWrTsIslwMuOcCog=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5NcMiE/blZjJ1lhIO1xBVCEGc5NpvHKjLesbaV3qTpTgy0K8MfF8itx2rUA6ijeSE
	 21d+ADrnjsNxBkma/cHhjINoYlG61M8OD3Izl5P6c0SlaiNJanHPUWOx0tLunv3RnK
	 /Hjo+QM2eBnoBwk2l6VU21zRMWB54FH8aLMKYxjztPnx27fJ+/TPEX5Cl2st2gpR9R
	 R2uzk6kFba/jp6jWPqSJ8Mqf573goQlH5WdFzGILXEoaAdPM7yb79IABUMwwR4gJAA
	 U2WNHHXDxsSaon0r//XkccM5djyVnqaq1bm4oGkiyaSihs4OOfFBfR3AaAd4KJ56z2
	 AE/xfVROBLH0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ivv35k70rN3O; Fri, 20 Jan 2023 23:59:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4AA3882566;
	Fri, 20 Jan 2023 23:59:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4AA3882566
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CE5351BF25F
 for <intel-wired-lan@osuosl.org>; Fri, 20 Jan 2023 23:59:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AA4A241B4F
 for <intel-wired-lan@osuosl.org>; Fri, 20 Jan 2023 23:59:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA4A241B4F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R7z4D1yRt4Zw for <intel-wired-lan@osuosl.org>;
 Fri, 20 Jan 2023 23:59:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E769E419D0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E769E419D0
 for <intel-wired-lan@osuosl.org>; Fri, 20 Jan 2023 23:59:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="327002247"
X-IronPort-AV: E=Sophos;i="5.97,233,1669104000"; d="scan'208";a="327002247"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 15:59:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="638330819"
X-IronPort-AV: E=Sophos;i="5.97,233,1669104000"; d="scan'208";a="638330819"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 20 Jan 2023 15:59:03 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 20 Jan 2023 15:59:02 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 20 Jan 2023 15:59:02 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 20 Jan 2023 15:59:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z8uOFCHFSg0RKKCZH5wwYz9UPEGjEP7ufU8ZINPlNkWWGXmSG05z+dU0MHOtS8RJ3DbMsLA9vsCfTce8GZ5m8OwHQSQBM+kAoyTIlvtey8YsU/8HKaBv5igJSRP1B3L9rdZZTyeGhDgs3lw5eF1ZdhSFBQw1l+68vNOgX7tt/545X28EBp2VFzTYY7cZWZcjP1bNcjcAxldt8M8aXOjxJTc2RBfIWKDAVEeT8rnRYYu9ROYrEtoDG9VmLwqNB2Gqgr18X/L+vGzsyrDrqdJjeTyYtTUtqUOeUs64ndGBqNBoIFMOF2+Jt/AsBOQJviEsyh6ruP8BlCRbGgro8waQBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=It1zmtTFYfSAcBTuRpEu0nNwYe6o9fY/NXiabIydRp0=;
 b=CdjtNdZiSEGxDOvHLggwVY/O4gsHABE4kNSMSjRGklW2bAiGy4nttTvLO/GlQ87nt60eU6H9HwPUeB7tc+iafQjxzEvMhJURw57Tf4jcsxggwKSgzT21+QGIHJa+sckQSVP1G0FSF7ilo4HaxW/5bA6stttXrvwd+FsItl+Mf2mEDoIOMQQ4FXl26pXkhgQo+iNLBLLffo6BJgZGy7JVhiqoYPw94h/A1jV6p3wDHG9NLeENCzV0jj0F4LnRDfSPWySqfxa0wKt8xDaYIrdss2aFT7BjfxdBi24mx+cuOX0H2/ZmbBw1/53Q4E046A+7DrdK7IftbSwORshJkUWorA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by PH7PR11MB6956.namprd11.prod.outlook.com (2603:10b6:510:207::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.26; Fri, 20 Jan
 2023 23:58:58 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c743:ed9a:85d0:262e]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c743:ed9a:85d0:262e%5]) with mapi id 15.20.6002.027; Fri, 20 Jan 2023
 23:58:58 +0000
Message-ID: <9d7dd7c6-2096-5c5e-4426-8a8471593865@intel.com>
Date: Fri, 20 Jan 2023 15:58:57 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20230120233511.131-1-paul.m.stillwell.jr@intel.com>
 <20230120233511.131-6-paul.m.stillwell.jr@intel.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20230120233511.131-6-paul.m.stillwell.jr@intel.com>
X-ClientProxiedBy: SJ0PR13CA0167.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::22) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|PH7PR11MB6956:EE_
X-MS-Office365-Filtering-Correlation-Id: 2e9aa89c-588a-4649-892c-08dafb424be9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: N7XiodMb6Y5IhtVOYXreTJIbfdKD38BCnwcpjlane7sSPmQZ5yrQTGV+CVfJDO1MggJoiQtWLn15M95lq4oYf//eYdx3HBkwJ0ucv4Y+8jR41z+FmM0OKcM3QaWziGCaCx6p2cLnz6Fa7/1MTjC2DucLdZf+ABxhffs3H/pqMgPpy3fjOS7TDhvOF2ZlzApbVWICZoXTjLNyZn0t7Bcvc5vpfkVNEuwphZ/BYfqGE6t87RVPPN7Rrxu/2BS5h8yBku0IhQ7AI5SxPX/5B9NJu4/wVNGQ9/kcCKsonMUdcXqciyxyhhNsmLhn/XZ42oCiZNmKp1fZeDy5JTe4tfviYMjbCJa9jfL2VebDiaLquWAczOJk23RSVWDZhSKa7FJgaQuP6jPyd226sHg7SheB79ohvS8jQY/1wFgo+3GFBFZKxvpcmE/jfhCdC5pwQdkgNIplUrIjWvl9iBh2IzyC+3nmraMaiYWlyQAjt7rcqoTpr09qlOtUDWvTMigZtVnya2gTYgIa0D6PVGYcRtKMTjqXQIbnDfvKL74t/aVvCuKgplPtBA6FwfNQBA460Xg1KviEGt29x7Gik3uAqwj36y2p08l0V8fHKx9WfZLwUQhFuYz8j/4oC75+GW5Ss/O6X31Pu7CcCHlpbUZJwesJ8cTG5/SZ+kHQ7vihN5Rv7dayUxc6/+9oKnFt09YAW/JqGx+7YImJOKpDQ+3V6vhQVtaJsINt610wopFumJTQ5no=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(376002)(346002)(39860400002)(136003)(451199015)(66946007)(38100700002)(66476007)(316002)(2616005)(5660300002)(82960400001)(8936002)(41300700001)(26005)(6916009)(36756003)(6512007)(186003)(8676002)(83380400001)(44832011)(66556008)(30864003)(31686004)(31696002)(86362001)(2906002)(6486002)(6506007)(478600001)(53546011)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NkZZdU44UnlXeEVZcndsYS9NNUhCUUxtUHJZemJNTEMzMzQyNk9OVVpJSlUx?=
 =?utf-8?B?NkNIZ24wVUtJRzMzakFhbi8ydS8rUEI4M2pUeXh2Zjdla2FxU0pycDc3TXlP?=
 =?utf-8?B?RzloQVZFTi83TkVSLzZZWnByemI3eEpqSGdyVjFQT2ZBWkJFaEIwdjBhL1dr?=
 =?utf-8?B?SlV6WDlNNHVxdjRqYndXSzVscGZYSCtHR082emhHMnpoQ21mNWhHOVY5cnRE?=
 =?utf-8?B?NlJaMXZ5RTlZV2lBMUl4bHRlVlk3UXpVTVBHbFRKQkxlUUVYaXJ6QTZTY3p1?=
 =?utf-8?B?OWxsUU12RjIwTm1YclZzdHloSVFXUE5BdldPZHg1czRaNGxoa0tHOCtDY0RD?=
 =?utf-8?B?Y3ViRjVIOGhCM1NHZFZhM2lZRlE4WVNWaS90SlkwelFneUh3RGI5YU4vSDEv?=
 =?utf-8?B?amVPT3hiWGVjZDdGTFhHNTVVNnM1RDBkS0g1RytmWENVakc1K0RsV1l5L1Er?=
 =?utf-8?B?bGlEQXkzMGN3SzVGS3VtRXRpMVBHTUtqTTNZVCtsWkxMQ0tLWUR6c3ExZDgz?=
 =?utf-8?B?NlVzVVRCUHRJa2ZPQVNzOXhPRno0blVydmxXbVlEMWJLUVJFVnlLVDlHbW8w?=
 =?utf-8?B?Nmc5Y0llSmpxTlgxQ2dROU9leVVXZ25aN2hJQjBpU1MxNDNQVExacU1FOG5a?=
 =?utf-8?B?T1N5V2VUdE9zc3NCenN4UnB3UEhEQ0F5T1FYSzNJZVg2UFBIYlJJK3dLbHln?=
 =?utf-8?B?VjdnUllMUzVjeE5sbEdoSjF3dFJnbHBSR2xOd1RRVy9KcVVVM1c1bzVVbHlK?=
 =?utf-8?B?TUdZd3U2Mmh6bHFoSTdnSzlvdVJmRmhaTHBXY3FjY2J4UWJnK3hhVFF6OE1P?=
 =?utf-8?B?TUF6ZkRMVGdLUE0wY1F3L1Z5dTV0dEdlTmhrankybDlHcWtMYkM5TlhQWXF2?=
 =?utf-8?B?d3I5d05ETDdrTyt6MStXSjc4Vit0MkhVMUo4UzdWYTRjZjc5NGpsbUh3MUFs?=
 =?utf-8?B?cVhPSExPZzNKWGRObHludTZnQmxTL2s0dmNvRlBaODR1aGM0L2tmOHRnWml1?=
 =?utf-8?B?c2ZGcjJIZnpVdjloTlZUZjFjT1owNkNvcWc3V1ZHYTV4dWNOL1VhVGJmWXQ5?=
 =?utf-8?B?TjM2U2NYMDFQTVBORG80aEJpL0ZYa081ZEpYQTRzUk5KQkVGUUdVUnJSUWhi?=
 =?utf-8?B?c081U213STFTRDNtR2d1NXRwYzJZZWxXMyt0VXRvOUQzanVVeWhBSWxGbWc0?=
 =?utf-8?B?UEZaRVBtRm1KaFk1RDhSblJhb1kxMG9MUGw3bWlYckVCVXp1c3I2SFVKVFdk?=
 =?utf-8?B?aGthcTdqNCs5UWRMS2Y5QnpiYy9TVWd6TnZSU0NYcWN4em9tSHRkZkZ1WVcv?=
 =?utf-8?B?elZNTHEzdlR3WWVMNkprTGttL2w2VEkvTFByTEpQempLTmU4VmZZREdoY3o4?=
 =?utf-8?B?aXYrTFlVUE1mNXFVMVdKVW01VUxtSlJLR0tqZVRYWWIyQ3l4T0VsaXVUZCt2?=
 =?utf-8?B?SldsdUxjQlRPVlVaNEp5Z2hRZzRldTJBMEVYdTIvaTJKSmxpSzVkb2FDVFc2?=
 =?utf-8?B?TGUxaHY2QVZ2S2ZXQU9lRzFuZHBLdHdhd1RwU0Vmd2RLdDAvZTJaTDByNE9h?=
 =?utf-8?B?Tk5ac2N5ckVsdy9HMEFqT09qSktWNGFrRGU4YUYzc2hVVmduR0I4UldiRWtJ?=
 =?utf-8?B?M3k4YUFreVF4c3FPdkZ4MUZPYWlCS211YTJjenF0MHdlc09vbCtTbkFOcjMv?=
 =?utf-8?B?U0YvNElPeTdOMk1aVWFOZzBxTnEzaktYZ2laT2dPOVEyK1JGditHZjVWOGRX?=
 =?utf-8?B?a1VnNGo3SFNTYlo5UGpHZU0vYXN4bjB0RGFwM2JJTFh2NUVVZEcvdnpGNi9N?=
 =?utf-8?B?S3Nub1FnYnZzK3hBUzlVdEZ2UE1MaUl6OHRyVlFDN2FBM2gvREFnZjZSUnFJ?=
 =?utf-8?B?ZEtFb3JrT0ZDeDl6YnZvNm1RWGFXTTkycFExa21Lc2Z1R24yaEY2b2ZsSTNH?=
 =?utf-8?B?Z29RdVZ6UDZBOW4rQndzNHB6dDcwdVhwa2p5UitFdWJIaXpEbGdpbDVoTHlC?=
 =?utf-8?B?VHhyWHpscmtheDhzanZJeTFZZmZYRjVrc0l5c2pFOUxrR3RSQlZubWx1SDlF?=
 =?utf-8?B?RWcwejFESndlWjJoYmhmUXBzYW1lVFkyZDM2bDBnTzEyemFTN2RBQnAzRUlo?=
 =?utf-8?B?bjhjRmFPNTh0LzZKUE5sUjBWWCtJaXZjRkRtdERzZ0JEeE5OdlRDczl2VlQ5?=
 =?utf-8?B?dkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e9aa89c-588a-4649-892c-08dafb424be9
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2023 23:58:58.7762 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: irBr9WSn+xolaAQvAgz8SNByVKu/+hZjJdGP26d7qhTAsjd7ou3jgRKT9Fx5tt2sspP2/aBVf/xyFCa89CTa9IyiD3pFoKFz3VyWmen0C+w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6956
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674259143; x=1705795143;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=RohY5mSf6sQCmUscN5dL6NWyPjbgWZkjDcKmNcvvvqE=;
 b=cMyrtQnkm0JAlLZ+9nl8rEbb0RiXCEK92HgvkEYRQsHq7tVitZEXE/wh
 fXL/Rsy/x8tqyQzMe/MtMI5fW3pDsmqoChiefjzm8Mi1/I+thMu9dpfxb
 NvborhxZuV/M5qrvvPbkGZ/5jCUXtI9L5D32hhs6wq6eETw7lW6RzeBKJ
 ZXJE3YE5oqfMhP6QAkabmwcHrzKJoWH0Z6jF9iWSlQP8PKqoi3I8yfKZP
 GGMNK7txf+7hYq2Tgpoe09W82YBuYa4uAyPhvuw3cNWm0rBbX5A6/ZloK
 QzGZJNR/oblmymRJjZs7LdndEZCmyXOfXZx6zkxOeUCgO+xZE0TONwPtl
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cMyrtQnk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 5/5] ice: use debugfs to
 output FW log data
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/20/2023 3:35 PM, Paul M Stillwell Jr wrote:
> The FW log data can be quite large so we don't want to use syslog.
> Instead take advantage of debugfs to write the data to.
> 
> The file is binary data and users should send them to us to
> work with the FW team to decode them.
> 
> An example of how to retrieve the data using debugfs is:
> 
> cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog > fwlog
> 
> Also updated the documentation to add the new parameters.
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>   Documentation/networking/devlink/ice.rst      |  39 ++++++
>   drivers/net/ethernet/intel/ice/Makefile       |   4 +-
>   drivers/net/ethernet/intel/ice/ice.h          |  22 ++++
>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   1 +
>   drivers/net/ethernet/intel/ice/ice_debugfs.c  | 115 ++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_fwlog.c    |   2 +-
>   drivers/net/ethernet/intel/ice/ice_main.c     | 124 ++++++++++++++----
>   7 files changed, 278 insertions(+), 29 deletions(-)
>   create mode 100644 drivers/net/ethernet/intel/ice/ice_debugfs.c
> 
> diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
> index 625efb3777d5..546a618ae7a2 100644
> --- a/Documentation/networking/devlink/ice.rst
> +++ b/Documentation/networking/devlink/ice.rst
> @@ -7,6 +7,45 @@ ice devlink support
>   This document describes the devlink features implemented by the ``ice``
>   device driver.
>   
> +Parameters
> +=============
> +
> +.. list-table:: Driver-specific parameters implemented
> +   :widths: 5 5 5 85
> +
> +   * - Name
> +     - Type
> +     - Mode
> +     - Description
> +   * - ``fwlog_supported``
> +     - Boolean
> +     - runtime
> +     - This parameter indicates to the user whether FW loggiing is supported
> +       or not in the currently loaded FW.
> +   * - ``fwlog_enabled``
> +     - Boolean
> +     - runtime
> +     - This parameter indicates to the user whether the driver is currently
> +       getting FW logs or not.
> +   * - ``fwlog_level``
> +     - u8
> +     - runtime
> +     - This parameter indicates the current log level. Each level includes the
> +       messages from the previous/lower level. Valid values are
> +
> +          * ``0`` - no logging
> +          * ``1`` - error logging
> +          * ``2`` - warning logging
> +          * ``3`` - normal logging
> +          * ``4`` - verbose logging
> +   * - ``fwlog_resolution``
> +     - u8
> +     - runtime
> +     - This parameter indicates the number of log messages to included in a
> +       single ARQ event. The range is 1-128 (1 means push every log message,
> +       128 means push only when the max AQ command buffer is full). The
> +       suggested value is 10.
> +
>   Info versions
>   =============
>   
> diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
> index 6e4680ad097c..452a440a9810 100644
> --- a/drivers/net/ethernet/intel/ice/Makefile
> +++ b/drivers/net/ethernet/intel/ice/Makefile
> @@ -34,7 +34,8 @@ ice-y := ice_main.o	\
>   	 ice_ethtool.o  \
>   	 ice_repr.o	\
>   	 ice_tc_lib.o	\
> -	 ice_fwlog.o
> +	 ice_fwlog.o	\
> +	 ice_debugfs.o
>   ice-$(CONFIG_PCI_IOV) +=	\
>   	ice_sriov.o		\
>   	ice_virtchnl.o		\
> @@ -49,3 +50,4 @@ ice-$(CONFIG_RFS_ACCEL) += ice_arfs.o
>   ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
>   ice-$(CONFIG_ICE_SWITCHDEV) += ice_eswitch.o
>   ice-$(CONFIG_ICE_GNSS) += ice_gnss.o
> +ice-$(CONFIG_DEBUG_FS) += ice_debugfs.o
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index cd81974822cc..252f6c0acf99 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -552,6 +552,7 @@ struct ice_pf {
>   	struct ice_vsi_stats **vsi_stats;
>   	struct ice_sw *first_sw;	/* first switch created by firmware */
>   	u16 eswitch_mode;		/* current mode of eswitch */
> +	struct dentry *ice_debugfs_pf;
>   	struct ice_vfs vfs;
>   	DECLARE_BITMAP(features, ICE_F_MAX);
>   	DECLARE_BITMAP(state, ICE_STATE_NBITS);
> @@ -634,6 +635,8 @@ struct ice_pf {
>   #define ICE_VF_AGG_NODE_ID_START	65
>   #define ICE_MAX_VF_AGG_NODES		32
>   	struct ice_agg_node vf_agg_node[ICE_MAX_VF_AGG_NODES];
> +	struct list_head fwlog_data_list;
> +	u8 fwlog_list_count;
>   };
>   
>   struct ice_netdev_priv {
> @@ -648,6 +651,15 @@ struct ice_netdev_priv {
>   	struct list_head tc_indr_block_priv_list;
>   };
>   
> +struct ice_fwlog_data {
> +	struct list_head list;
> +	u16 data_size;
> +	u8 *data;
> +};
> +
> +/* define the maximum number of items that can be in the list */
> +#define ICE_FWLOG_MAX_SIZE	128
> +
>   /**
>    * ice_vector_ch_enabled
>    * @qv: pointer to q_vector, can be NULL
> @@ -872,6 +884,16 @@ static inline bool ice_is_adq_active(struct ice_pf *pf)
>   	return false;
>   }
>   
> +#ifdef CONFIG_DEBUG_FS
> +void ice_debugfs_fwlog_init(struct ice_pf *pf);
> +void ice_debugfs_init(void);
> +void ice_debugfs_exit(void);
> +#else
> +static inline void ice_debugfs_fwlog_init(struct ice_pf *pf) { }
> +static inline void ice_debugfs_init(void) { }
> +static inline void ice_debugfs_exit(void) { }
> +#endif /* CONFIG_DEBUG_FS */
> +
>   bool netif_is_ice(struct net_device *dev);
>   int ice_vsi_setup_tx_rings(struct ice_vsi *vsi);
>   int ice_vsi_setup_rx_rings(struct ice_vsi *vsi);
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index 1af036beeb45..27c2cea29c51 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -2377,6 +2377,7 @@ enum ice_adminq_opc {
>   	ice_aqc_opc_fw_logs_config			= 0xFF30,
>   	ice_aqc_opc_fw_logs_register			= 0xFF31,
>   	ice_aqc_opc_fw_logs_query			= 0xFF32,
> +	ice_aqc_opc_fw_logs_event			= 0xFF33,
>   };
>   
>   #endif /* _ICE_ADMINQ_CMD_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
> new file mode 100644
> index 000000000000..c6e48a345f34
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
> @@ -0,0 +1,115 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (c) 2022, Intel Corporation. */
> +
> +#include <linux/fs.h>
> +#include <linux/debugfs.h>
> +#include <linux/random.h>
> +#include "ice.h"
> +
> +static struct dentry *ice_debugfs_root;
> +
> +/**
> + * ice_debugfs_command_read - read from command datum
> + * @filp: the opened file
> + * @buffer: where to write the data for the user to read
> + * @count: the size of the user's buffer
> + * @ppos: file position offset
> + */
> +static ssize_t ice_debugfs_command_read(struct file *filp, char __user *buffer,
> +					size_t count, loff_t *ppos)
> +{
> +	struct ice_pf *pf = filp->private_data;
> +	struct ice_fwlog_data *log, *tmp_log;
> +	int data_copied = 0;
> +	int copy_count = 0;
> +
> +	if (list_empty(&pf->fwlog_data_list)) {
> +		return 0;
> +	}
> +
> +	list_for_each_entry(log, &pf->fwlog_data_list, list) {
> +		u16 cur_buf_len = log->data_size;
> +		int retval;
> +
> +		if (cur_buf_len >= count)
> +			break;
> +
> +		retval = copy_to_user(buffer, log->data, cur_buf_len);
> +		if (retval)
> +			return -EFAULT;
> +
> +		data_copied += cur_buf_len;
> +		buffer += cur_buf_len;
> +		count -= cur_buf_len;
> +		*ppos += cur_buf_len;
> +		copy_count++;
> +	}
> +
> +	/* only free the data once we know there weren't any errors */
> +	list_for_each_entry_safe(log, tmp_log, &pf->fwlog_data_list, list) {
> +		if (!copy_count)
> +			break;
> +
> +		vfree(log->data);
> +		list_del(&log->list);
> +		vfree(log);
> +		pf->fwlog_list_count--;
> +		copy_count--;
> +	}
> +
> +	return data_copied;
> +}
> +
> +static const struct file_operations ice_debugfs_command_fops = {
> +	.owner = THIS_MODULE,
> +	.open  = simple_open,
> +	.read = ice_debugfs_command_read,
> +};
> +
> +/**
> + * ice_debugfs_fwlog_init - setup the debugfs directory
> + * @pf: the ice that is starting up
> + */
> +void ice_debugfs_fwlog_init(struct ice_pf *pf)
> +{
> +	const char *name = pci_name(pf->pdev);
> +	struct dentry *pfile;
> +
> +	/* only support fw log commands on PF 0 */
> +	if (pf->hw.bus.func)
> +		return;
> +
> +	pf->ice_debugfs_pf = debugfs_create_dir(name, ice_debugfs_root);
> +	if (IS_ERR(pf->ice_debugfs_pf))
> +		return;
> +
> +	pfile = debugfs_create_file("fwlog", 0400, pf->ice_debugfs_pf, pf,
> +				    &ice_debugfs_command_fops);
> +	if (!pfile)
> +		goto create_failed;
> +
> +	return;
> +
> +create_failed:
> +	dev_err(ice_pf_to_dev(pf), "debugfs dir/file for %s failed\n", name);
> +	debugfs_remove_recursive(pf->ice_debugfs_pf);
> +}
> +
> +/**
> + * ice_debugfs_init - create root directory for debugfs entries
> + */
> +void ice_debugfs_init(void)
> +{
> +	ice_debugfs_root = debugfs_create_dir(KBUILD_MODNAME, NULL);
> +	if (IS_ERR(ice_debugfs_root))
> +		pr_info("init of debugfs failed\n");
> +}
> +
> +/**
> + * ice_debugfs_exit - remove debugfs entries
> + */
> +void ice_debugfs_exit(void)
> +{
> +	debugfs_remove_recursive(ice_debugfs_root);
> +	ice_debugfs_root = NULL;
> +}
> diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> index 22c3c249824a..a6b468123bc0 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
> +++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> @@ -67,7 +67,7 @@ static bool valid_cfg(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
>   	}
>   
>   	return valid_module_entries(hw, cfg->module_entries,
> -				    ICE_AQC_FW_LOG_ID_MAX))
> +				    ICE_AQC_FW_LOG_ID_MAX);

appears to be a compilation fix for 3/5?

>   }
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index c7aa47cea8b1..d870fc940015 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -1369,6 +1369,43 @@ ice_handle_link_event(struct ice_pf *pf, struct ice_rq_event_info *event)
>   	return status;
>   }
>   
> +/**
> + * ice_get_fwlog_data - copy the FW log data from ARQ event
> + * @pf: PF that the FW log event is associated with
> + * @event: event structure containing FW log data
> + */
> +static void
> +ice_get_fwlog_data(struct ice_pf *pf, struct ice_rq_event_info *event)
> +{
> +	struct device *dev = ice_pf_to_dev(pf);
> +	struct ice_fwlog_data *fwlog;
> +
> +	if (pf->fwlog_list_count >= ICE_FWLOG_MAX_SIZE)
> +		return;
> +
> +	fwlog = vmalloc(sizeof(*fwlog));
> +	if (!fwlog) {
> +		dev_warn(dev, "Couldn't allocate memory for FWlog element\n");
> +		return;
> +	}
> +
> +	INIT_LIST_HEAD(&fwlog->list);
> +
> +	fwlog->data_size = le16_to_cpu(event->desc.datalen);
> +	fwlog->data = vzalloc(fwlog->data_size);
> +	if (!fwlog->data) {
> +		dev_warn(dev, "Couldn't allocate memory for FWlog data\n");
> +		vfree(fwlog);
> +		return;
> +	}
> +
> +	memcpy(fwlog->data, event->msg_buf, fwlog->data_size);
> +
> +	list_add_tail(&fwlog->list, &pf->fwlog_data_list);
> +
> +	pf->fwlog_list_count++;
> +}
> +
>   enum ice_aq_task_state {
>   	ICE_AQ_TASK_WAITING = 0,
>   	ICE_AQ_TASK_COMPLETE,
> @@ -1642,6 +1679,9 @@ static int __ice_clean_ctrlq(struct ice_pf *pf, enum ice_ctl_q q_type)
>   			if (!ice_is_malicious_vf(pf, &event, i, pending))
>   				ice_vc_process_vf_msg(pf, &event);
>   			break;
> +		case ice_aqc_opc_fw_logs_event:
> +			ice_get_fwlog_data(pf, &event);
> +			break;
>   		case ice_aqc_opc_lldp_set_mib_change:
>   			ice_dcb_process_lldp_set_mib_change(pf, &event);
>   			break;
> @@ -4679,33 +4719,6 @@ static void ice_unregister_netdev(struct ice_vsi *vsi)
>   	clear_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state);
>   }
>   
> -/**
> - * ice_pf_fwlog_deinit - clear FW logging metadata on device exit
> - * @pf: pointer to the PF struct
> - */
> -static void ice_pf_fwlog_deinit(struct ice_pf *pf)
> -{
> -	struct ice_hw *hw = &pf->hw;
> -
> -	/* make sure FW logging is disabled to not put the FW in a weird state
> -	 * for the next driver load
> -	 */
> -	if (hw->fwlog_ena) {
> -		int status;
> -
> -		hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
> -		status = ice_fwlog_set(hw, &hw->fwlog_cfg);
> -		if (status)
> -			dev_warn(ice_pf_to_dev(pf), "Unable to turn off FW logging, status: %d\n",
> -				 status);
> -
> -		status = ice_fwlog_unregister(hw);
> -		if (status)
> -			dev_warn(ice_pf_to_dev(pf), "Unable to unregister FW logging, status: %d\n",
> -				 status);
> -	}
> -}
> -
>   /**
>    * ice_cfg_netdev - Allocate, configure and register a netdev
>    * @vsi: the VSI associated with the new netdev
> @@ -4832,6 +4845,56 @@ static void ice_deinit_eth(struct ice_pf *pf)
>   	ice_decfg_netdev(vsi);
>   }
>   
> +/**
> + * ice_pf_fwlog_init - initialize FW logging on device init
> + * @pf: pointer to the PF struct
> + */
> +static void ice_pf_fwlog_init(struct ice_pf *pf)
> +{
> +	/* only supported on PF 0 */
> +	if (pf->hw.bus.func)
> +		return;
> +
> +	INIT_LIST_HEAD(&pf->fwlog_data_list);
> +}
> +
> +/**
> + * ice_pf_fwlog_deinit - clear FW logging metadata on device exit
> + * @pf: pointer to the PF struct
> + */
> +static void ice_pf_fwlog_deinit(struct ice_pf *pf)
> +{
> +	struct ice_fwlog_data *fwlog, *fwlog_tmp;
> +	struct ice_hw *hw = &pf->hw;
> +
> +	/* only supported on PF 0 */
> +	if (pf->hw.bus.func)
> +		return;
> +
> +	/* make sure FW logging is disabled to not put the FW in a weird state
> +	 * for the next driver load
> +	 */
> +	if (hw->fwlog_ena) {
> +		int status;
> +
> +		hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
> +		status = ice_fwlog_set(hw, &hw->fwlog_cfg);
> +		if (status)
> +			dev_warn(ice_pf_to_dev(pf), "Unable to turn off FW logging, status: %d\n",
> +				 status);
> +
> +		status = ice_fwlog_unregister(hw);
> +		if (status)
> +			dev_warn(ice_pf_to_dev(pf), "Unable to unregister FW logging, status: %d\n",
> +				 status);
> +	}
> +
> +	list_for_each_entry_safe(fwlog, fwlog_tmp, &pf->fwlog_data_list, list) {
> +		vfree(fwlog->data);
> +		vfree(fwlog);
> +	}
> +}
> +
>   static int ice_init_dev(struct ice_pf *pf)
>   {
>   	struct device *dev = ice_pf_to_dev(pf);
> @@ -5334,6 +5397,9 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>   		hw->debug_mask = debug;
>   #endif
>   
> +	ice_pf_fwlog_init(pf);
> +	ice_debugfs_fwlog_init(pf);
> +
>   	err = ice_init(pf);
>   	if (err)
>   		goto err_init;
> @@ -5444,6 +5510,7 @@ static void ice_remove(struct pci_dev *pdev)
>   	}
>   
>   	ice_pf_fwlog_deinit(pf);
> +	ice_debugfs_exit();
>   
>   	if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags)) {
>   		set_bit(ICE_VF_RESETS_DISABLED, pf->state);
> @@ -5907,10 +5974,13 @@ static int __init ice_module_init(void)
>   		return -ENOMEM;
>   	}
>   
> +	ice_debugfs_init();
> +
>   	status = pci_register_driver(&ice_driver);
>   	if (status) {
>   		pr_err("failed to register PCI driver, err %d\n", status);
>   		destroy_workqueue(ice_wq);
> +		ice_debugfs_exit();
>   	}
>   
>   	return status;

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
