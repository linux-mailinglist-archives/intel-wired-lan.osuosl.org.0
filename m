Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0713F674296
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 20:18:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9AB05611B5;
	Thu, 19 Jan 2023 19:18:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9AB05611B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674155925;
	bh=9KY9J8MVG0ifNr4dtq2/YXtQIiw8nZRpHuaVAHcyp6g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=K8Bo7DBkuykT69tXLCbe44dOWJ838Lx4MiyROgXoNF+jlIeMzNRK4UCEoUggA50Y6
	 xnIi9V87DezNnkdCnDwweuvyYt4M2SioflDj5+rhpvmDf1VkZjsYI7O5agfJl86FJp
	 5Zhsfy0YEeGax0gDj0BRr3OtaY3zC8NvXVBLMrq5qWkewk1sxiS2fy0zdQHw9WX56q
	 QWlB6NI/JNZ7/tSKvDpL3yFnAXwy4S9hxG2VQZeUZ+utf6+/ELY0QSvY6ZCO44URj2
	 hlPQokdgF+2y1Bod7bQpNOsWYyvNzW0ZkIyg0vhF1wdDm0tQ7SQpnePJls0nxzdhXP
	 Aom3ghVSj1CaQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1Hej8JpGtM-q; Thu, 19 Jan 2023 19:18:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 92B88611AD;
	Thu, 19 Jan 2023 19:18:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 92B88611AD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E63391BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 19:18:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BF081611AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 19:18:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF081611AD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kvqrIx7fGXHr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 19:18:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D2E2661112
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D2E2661112
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 19:18:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="327485212"
X-IronPort-AV: E=Sophos;i="5.97,229,1669104000"; d="scan'208";a="327485212"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 11:18:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="690743747"
X-IronPort-AV: E=Sophos;i="5.97,229,1669104000"; d="scan'208";a="690743747"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 19 Jan 2023 11:18:37 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 19 Jan 2023 11:18:37 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 19 Jan 2023 11:18:37 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 19 Jan 2023 11:18:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WPZO/DAodCpyPQypHJGCjFaMYeKQs+qt3Gb0sSElB+BA8wpjznKs3QwtHBFACR7CAeCDMoXP4o0VoOFjPyVINy2Gi7/ONda6b3ZL6uKuSgAgTEfzCFDNmZm2G7PTOzIjsfmYsstvSGEypALXJeOmvBAhKJ/o4qWRzX361Yjo50CfDYk2zrqZN0h0tQk5e+YmYkmxIqboyxK0Rfrbgs6S4D61hYs/VziJ2P0zU1qrtzeMn3QLEy0k6wKWV3vzcj+5lp4HO8meAC93ErhHo5QnW5WL9Sc/VNBH8AXKTtLmPpREsL4yIUNPKMNJTf5X2GFwO89kqiHLusOhx/lM43hFLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lZV5WvIAeqHCwjxhVcOQod4wq6bE0D/KGaI4Ysz2iwY=;
 b=KfMIDBjpjQi2XEp0zYb5YdejyzpNMLbzen9oF3U7UpLWrkEeOb9ONbBvsI3IcBgWxC0YXezrvr/eYA+7LskKVusPCu+q9MNM4NoKg2OsB5Ntt8SPmsGDO3Lh8ihSMvSJsoD2YGxfi+7UVX5QXo+euRacuL6F+QZ7sWhmUpk/HYaPlYix9nnJrasOnfEnq+6pE2fV39eRLd+jVArtvJE58mBvikfXi7gvzVu+ur69xH5XSSpu4rNVCRkYDaVaS+gMThh7415zOE2JiFn6gZFKbQww+knUjL2bhlzBWgKTk+xmTK984oVRCLztPM2c/24GlVrGsUdQayzXtciAVnYM9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA3PR11MB7535.namprd11.prod.outlook.com (2603:10b6:806:307::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Thu, 19 Jan
 2023 19:18:35 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf%5]) with mapi id 15.20.6002.024; Thu, 19 Jan 2023
 19:18:35 +0000
Message-ID: <3fd14a70-08ce-e860-6011-50c4d86dd94f@intel.com>
Date: Thu, 19 Jan 2023 11:18:33 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20230119011653.311675-1-jacob.e.keller@intel.com>
 <20230119011653.311675-12-jacob.e.keller@intel.com>
 <bbc7c427-ef33-d69f-125f-22dfd70be789@molgen.mpg.de>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <bbc7c427-ef33-d69f-125f-22dfd70be789@molgen.mpg.de>
X-ClientProxiedBy: BYAPR02CA0057.namprd02.prod.outlook.com
 (2603:10b6:a03:54::34) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA3PR11MB7535:EE_
X-MS-Office365-Filtering-Correlation-Id: ff7e789e-a81f-4d7b-48ab-08dafa51f5e3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QDtWQfT0lBEdNw80GtwfUa/je/u1TpgA1uQurJ+cYWNvYJRoTmKZESB4nU1MOKo6mxB9gDwCXWPtt/irrj4BwpTvOh/i/ygoVyTwh/BcvN3REjHaEyrlDPbYgRdu+sJNc1ebnMP+6AdezzbALK1CgArxk5uSOQoJ6IRIKyixCIEs3RlgcmQ6pNWieu5YCON6XqfGMVIrxcdfcPAolYrPrOGv89BVi6Jip+DacsDJRYGl8fMLnRdg5IrA1gETcQBqebdRWRyi+PHiXpn3TRzE4QkJDcWHusQJWOeWCaLlYWGCiyEkx+zGBiMrv9AR11Ltj3QJD17V6tLuMBVf81WyzGQctKt7pH/4Oc+yNVed6K7yab6gCBeZsiMU0dDbHHHQ1KkzQQQQVbLACMjbTRZShEDt1Ad4amB4jQAuyFuLdgNNju+H1OuC63moyXmh1fJSSyndzQ6Gzy7Scqy2DWyLuCU1XKj3p1Wh5DVmPl4YoZ+JzRA3QHfzYzc1+p7Yb4PtJKp4YQKqcbQfMzdKCeESxqKDtPx2Ako91gA+NOA4fyzMXKkc1uRjCMXecJ8DIe8WcC36P40SrvMnbjbwD0RtCO5BU7XwG5OAKr355+VvHOOHDt+l5JuISzIDi4DqelKqmEc5G9+pKhc5pmr0srwl8aIkG6lNBo1sqaoVF+VTJtkYLuYKGwTMqaAlkJw3EEmMfZHW+1M/vqEh3q0vve32Jy/6YyD97qF20GzLPOcyMg8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(39860400002)(366004)(136003)(346002)(451199015)(82960400001)(66556008)(38100700002)(83380400001)(2906002)(5660300002)(66946007)(31696002)(8676002)(66476007)(4326008)(41300700001)(53546011)(6506007)(186003)(478600001)(26005)(2616005)(6512007)(6486002)(6916009)(8936002)(86362001)(107886003)(316002)(31686004)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cytDNjgwdUdwYUxxcGhHQVR3VHFjZFdMUGVkRFBoNjJEMG5kTDlieFhwdlor?=
 =?utf-8?B?dSs3b1Z6VUtSRmdncTVzWHdHNzhzSndxNCswb2VMUmYzcnd0RWEvKy90SEFR?=
 =?utf-8?B?eHlXMERMYnZzK0FSenBtOWZoOGV3QWptS1lhNmNvS2JLWTFMa3FXSnZ6OVRp?=
 =?utf-8?B?bVdvTE5XWHIxK1NBTlo1RjdMb1IzM0IvMU1KVU1rTm4rVHBWRUJqWDZvM2sw?=
 =?utf-8?B?RXY0NW80N1VEc1BkTGlGNTY1RXQrSVVQejdqVWFqNnJtekxPY3JTTHB4cGlW?=
 =?utf-8?B?SG1QTHZSRDVTWjVYbTRjZGVqbkxuOXdTclU2WWV2cXhiMEswaFhrelVBR0hO?=
 =?utf-8?B?QkluS01rTndhaklYRkVBRzNKZXlaV3B3aWI4cU5vc3RaT2pmM2VkOXhwVTF1?=
 =?utf-8?B?YTlMbExaQS9sZWdNRXJDNVdPQk1ndk9wWko4aW5JdEh1clNiU2RSbFJYUVRT?=
 =?utf-8?B?a1ZXYzRxTEpSbVg1dFFMZ2ZYWGJBMDZjb1JuOUV6TWRXWHlqNHd3M0pHRE1o?=
 =?utf-8?B?SzZLQ3VSRlg0cnFrTW95blNzajNac2lER1p5QUlnQmtRdU5GYUpBbUpMLzdZ?=
 =?utf-8?B?a3poVXpCd0JpcE53SXVtVCsvQ0ttKzRRSDBXMnI0aWlWSXRkY0FkT2JxejlN?=
 =?utf-8?B?OVZvbmxPSHlrQ244b3NLR3M2azU5VjFlekExM2o1K2NtL1V4L3hkU3Z3SlVT?=
 =?utf-8?B?blZYTzRZV2ErR2hoRVBPUjZpVjI1OENYUVZERk5GbVU0NXlLcFlYOUwxUDgx?=
 =?utf-8?B?dkQrL3ZUVURwR09ka3QwQi91NGhub3NSWjJkLysvMk4ySFpvb05EakV3NDI1?=
 =?utf-8?B?anBFN1NZcUo5MTFPWVZmZHZZL3pXSjVtRnpMZU5ydXBoQ1RlUjVQS0QwQWt4?=
 =?utf-8?B?aWJITzNtZVdWNU90cDdaSi9mdm5mdThxeWY4ZmluNFdoaUV4aklhRldPeWlQ?=
 =?utf-8?B?S2laK2tQcDRlS2ZzelpocnAzR09rUXJTSHplWVVxUFpZTzBIMTdrOUtXY2Rm?=
 =?utf-8?B?TTRqT21lTkNNczV4R0ZFS0VrV09oY05nTW8yRGh2ODJSYnJRMHZLZXRhUTRB?=
 =?utf-8?B?QXJOOGlzYW5WNi9QUllrUGZvbDQzOXJSR1ZDRVFmL3psYWFjMVYzS2R4bFdo?=
 =?utf-8?B?VFJURmRRcytTMDhyRmRPSlI4QWI5RjhuaUQ1NW1sVXNVbC9TZmVrL2w5OHRu?=
 =?utf-8?B?ZDczbnNScWZUY2IwamZCZ0NPMTFWejZ3ZUxRTzJFNUhqY01QbVZYb01pdGZO?=
 =?utf-8?B?VW1CUzZ0Mm9JejZHdVJVSythcWNqNlJCMXkrWWVzck1BUENOODhrbmhRYXRG?=
 =?utf-8?B?cTkyZ3ZtTUVFWURWMzB6dnlTMDBacjdValUySVpONTBmbGRhKzFYVFJnSkM2?=
 =?utf-8?B?RHdZVmJES01KalNKTFE3VlpiZ09kaERQWVRJUC9NMjI3cTNsNFdQY0RMNm84?=
 =?utf-8?B?Ty9HWXAxU21wa0M0RWlXNlNNWDlDSVkwbzVLc0RlTkpjbUtUUi9VK0UvZWdZ?=
 =?utf-8?B?REVyYjdtaDZPZHNpM1h1UThpZU1CamhNZ0RuR0tjM3pac0JGbFI4RjkvaE1p?=
 =?utf-8?B?YUtUZEFheVVmanVZM3ZaVEYrb0NJKzI0V0U5VXZhZ1o0WFJuQzdXN3JFbGx5?=
 =?utf-8?B?L0JLbnp5dXFJWmhFdy9CQ002MkFudUZ3K0pOeG44MTZoN3hVRlkzelB1MnRW?=
 =?utf-8?B?SUFkS0g5YzJHbjB4clJySlBHU2V0cERSVWRuU0o1dU1xNFQ2L1lBWG9vOFdw?=
 =?utf-8?B?K0U3UGdyemJxVVgrMXQwVFVoQWhxU1E4WnczTUVOaXZDd2JqaHNJMjNvQlY5?=
 =?utf-8?B?aTFHdXM5WmE5bzgxYVN3ZnUyR0xwRVpuVWRhTTZIZ0dYUDdKT3MzWjBCKzRI?=
 =?utf-8?B?K3NLSHZMcjNWZ1BZbmo3QWI2SnkxcXZzcVV3dHhXbmhIQ2pNNGY1aElxVXdN?=
 =?utf-8?B?WlRVQU1RY0N3bCtZZTNBbi9vQnFuLzg0eFltdUNhdEtHZTFnYmFoaW56Y256?=
 =?utf-8?B?aVJremRWc1phTWFBUUpZUmlsQlVGdTE1UGJjeHZpVm1scncyYXZ0SW5hMWpG?=
 =?utf-8?B?c2dlMDgrb1QxSXZsbEVpZzM3ajhneDZ6aHBONGFuVjlac21GMXVmSW5EMngv?=
 =?utf-8?B?L1dWenNQSWNTT1k4b1RBamlIMUpYa3EyNkFtL3NZLzUyL3N3VTROdnhsNjBG?=
 =?utf-8?B?OWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ff7e789e-a81f-4d7b-48ab-08dafa51f5e3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2023 19:18:35.2516 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8CTh9U8dgdlgAFy+KUnFxBuzTKCf4cS91FBA2oCbpPXwhVYuJv2H6A+RtjRVENT4/03i+36pWzcOSMgMZ1wJZ6YaIptSXBOxiSGPylywrgA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7535
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674155918; x=1705691918;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=58UGHsuH723yeN+USq+ZK9deECBCX2zOORvqr70t6tM=;
 b=BRKkoPyGVWq0/r8wLOTpMrRAaBflGEGy1gIs0zWxVnyjv2U7QnQsagIk
 G4Hx5ApGap+GYGPh9jB72v6jxIe9WOV2lsRimRLpG4k4FCLsa6o65APe2
 6YtPZhdJgDkT9RaVHv4JEzLgdMXQVwyaqZvi/jQHtlHw4vw1WiDgr5am/
 S8QQO/ZofVprzBrD9tZylRn+/eBfyldQeeALB1glqENvR24wSOZDb8RBq
 Knm6kl3ufAi6dbEDp3hHuM2txRuimyl2Hs4/rcq0OY/VFdkai/9cZLce4
 27215jwqKdD8nFKNI4IHjRX48FWq8OVhc7BqtpwhSEblAk0wzPNky/vA5
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BRKkoPyG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 11/13] ice: introduce
 clear_reset_state operation
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxLzE5LzIwMjMgMTI6NDIgQU0sIFBhdWwgTWVuemVsIHdyb3RlOgo+IERlYXIgSmFjb2Is
Cj4gCj4gCj4gVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLgo+IAo+IEFtIDE5LjAxLjIzIHVtIDAy
OjE2IHNjaHJpZWIgSmFjb2IgS2VsbGVyOgo+PiBXaGVuIGhhcmR3YXJlIGlzIHJlc2V0LCB0aGUg
VkYgcmVsaWVzIG9uIHRoZSBWRkdFTl9SU1RBVCByZWdpc3RlciB0byBkZXRlY3QKPj4gd2hlbiB0
aGUgVkYgaXMgZmluaXNoZWQgcmVzZXR0aW5nLiBUaGlzIGlzIGEgdHJpLXN0YXRlIHJlZ2lzdGVy
IHdoZXJlIDAKPj4gaW5kaWNhdGVzIGEgcmVzZXQgaXMgaW4gcHJvZ3Jlc3MsIDEgaW5kaWNhdGVz
IHRoZSBoYXJkd2FyZSBpcyBkb25lCj4+IHJlc2V0dGluZywgYW5kIDIgaW5kaWNhdGVzIHRoYXQg
dGhlIHNvZnR3YXJlIGlzIGRvbmUgcmVzZXR0aW5nLgo+Pgo+PiBDdXJyZW50bHkgdGhlIFBGIGRy
aXZlciByZWxpZXMgb24gdGhlIGRldmljZSBoYXJkd2FyZSByZXNldHRpbmcgVkZHRU5fUlNUQVQK
Pj4gd2hlbiBhIGdsb2JhbCByZXNldCBvY2N1cnMuIFRoaXMgd29ya3Mgb2ssIGJ1dCBpdCBkb2Vz
IG1lYW4gdGhhdCB0aGUgVkYKPj4gbWlnaHQgbm90IGltbWVkaWF0ZWx5IG5vdGljZSBhIHJlc2V0
IHdoZW4gdGhlIGRyaXZlciBmaXJzdCBkZXRlY3RzIHRoYXQgdGhlCj4+IGdsb2JhbCByZXNldCBp
cyBvY2N1cnJpbmcuCj4+Cj4+IFRoaXMgaXMgYWxzbyBwcm9ibGVtYXRpYyBmb3IgU2NhbGFibGUg
SU9WLCBiZWNhdXNlIHRoZXJlIGlzIG5vIHJlYWQvd3JpdGUKPj4gZXF1aXZhbGVudCBWRkdFTl9S
U1RBVCByZWdpc3RlciBmb3IgdGhlIFNjYWxhYmxlIFZTSSB0eXBlLiBJbnN0ZWFkLCB0aGUKPj4g
U2NhbGFibGUgSU9WIFZGcyB3aWxsIG5lZWQgdG8gZW11bGF0ZSB0aGlzIHJlZ2lzdGVyLgo+Pgo+
PiBUbyBzdXBwb3J0IHRoaXMsIGludHJvZHVjZSBhIG5ldyBWRiBvcGVyYXRpb24sIGNsZWFyX3Jl
c2V0X3N0YXRlLCB3aGljaCBpcwo+PiBjYWxsZWQgd2hlbiB0aGUgUEYgZHJpdmVyIGZpcnN0IGRl
dGVjdHMgYSBnbG9iYWwgcmVzZXQuIFRoZSBTaW5nbGUgUm9vdCBJT1YKPj4gaW1wbGVtZW50YXRp
b24gY2FuIGp1c3Qgd3JpdGUgdG8gVkZHRU5fUlNUQVQgdG8gZW5zdXJlIGl0cyBjbGVhcmVkCj4g
Cj4gaXTigJlzCj4gCj4+IGltbWVkaWF0ZWx5LCB3aXRob3V0IHdhaXRpbmcgZm9yIHRoZSBhY3R1
YWwgaGFyZHdhcmUgcmVzZXQgdG8gYmVnaW4uIFRoZQo+PiBTY2FsYWJsZSBJT1YgaW1wbGVtZW50
YXRpb24gd2lsbCB1c2UgdGhpcyBhcyBwYXJ0IG9mIGl0cyB0cmFja2luZyBvZiB0aGUKPj4gcmVz
ZXQgc3RhdHVzIHRvIGFsbG93IHByb3Blcmx5IHJlcG9ydGluZyB0aGUgZW11bGF0ZWQgVkZHRU5f
UlNUQVQgdG8gdGhlIFZGCj4+IGRyaXZlci4KPiAKPiBDYW4gdGhpcyBiZSB0ZXN0ZWQgc29tZWhv
dz8gSWYgeWVzLCBpdOKAmWQgYmUgZ3JlYXQgaWYgeW91IGFkZGVkIHRoZSByZWNpcGUuCj4gCgpU
aGUgb3BlcmF0aW9uIGNhbiBiZSB0ZXN0ZWQgYnkgdHJpZ2dlcmluZyBhIGRldmljZSByZXNldCB3
aGlsZSBoYXZpbmcKVkZzLiBCdXQgbm90ZSB0aGF0IHRoZSBpY2UgZHJpdmVyIGRvZXMgbm90IHll
dCBzdXBwb3J0IFNjYWxhYmxlIElPVi4gV2UKYXJlIHdvcmtpbmcgb24gdGhpcyBidXQgYXJlIG5v
dCB5ZXQgcmVhZHkgdG8gc3VibWl0IGEgc2VyaWVzCmltcGxlbWVudGluZyB0aGUgc3VwcG9ydC4g
U29tZSBvZiB0aGlzIHNlcmllcyBhcmUgcGF0Y2hlcyBpbnRlbmRlZCB0bwphaWQgaW4gaW1wbGVt
ZW50aW5nIFNjYWxhYmxlIElPViwgYW5kIEkgYW0gc2VuZGluZyB0aGVtIG5vdyBpbiBvcmRlciB0
bwpyZWR1Y2UgdGhlIHNpemUgYW5kIHNjb3BlIG9mIHRoZSBzZXJpZXMgdGhhdCB3aWxsIGFjdHVh
bGx5IGZpbmlzaCB0aGUKaW1wbGVtZW50YXRpb24uCgpJbiBnZW5lcmFsIHRoZSByZXNldCBiZWhh
dmlvciBjYW4gYmUgdGVzdGVkIGJ5IGFkZGluZyBhIFNpbmdsZSBSb290IElPVgpWRiAodmlhIHNy
aW92X251bXZmcyksIGFuZCB0aGVuIHRyaWdnZXJpbmcgYSByZXNldC4gVGhpcyBjYW4gYmUgZG9u
ZSBpbgphIHZhcmlldHkgb2Ygd2F5cyBpbmNsdWRpbmcgYnkgY29uZmlndXJpbmcgc29tZSBvZiB0
aGUgbmV0bGluayBWRgpwYXJhbWV0ZXJzIGxpa2UgdGhlIHRydXN0IHNldHRpbmcsIG9yIGJ5IGFu
eSBvcGVyYXRpb24gb24gdGhlIFBGIHRoYXQKdHJpZ2dlcnMgYSBQRiByZXNldC4gKFVuZm9ydHVu
YXRlbHkgSSBkbyBub3QgcmVjYWxsIGEgc3BlY2lmaWMgZXhhbXBsZQpvZmZoYW5kKS4KClRoYW5r
cywKSmFrZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0
dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
