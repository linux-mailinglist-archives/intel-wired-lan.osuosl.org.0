Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A95E5EF969
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Sep 2022 17:47:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0FE644016F;
	Thu, 29 Sep 2022 15:47:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0FE644016F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664466466;
	bh=JDyy1JHDZ+7bt03EJgsX7AFpzALUFGzoOG06vedlsD0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kAjc8JyZjmaZOmWudDR1Q6gjrq15QWLq93Sj7Z0A/xDty/F4NsFcDg2cJrQWe4HzR
	 41PZw3y8N0OSmLtbVnxY8ABCkjb8aUVzo0USWK8AcTcPV3eHp0VBGvsyyt47zQX2ed
	 lQfi7rwoMYn6jNvbbRSFYunByeMSeqDUeDJ9dWZBOW29Ye8ZCQn73KZ1+K1dG+5PpR
	 zs3w2v+YtavDoNFCmvs2zKRacL88d3tHKL0Yx3N/f9uwu74qUnMOHvUMeJqJXu2VHx
	 M3DhBejXI2KaewYyKGhhMR18eFc6IWhtbo1SliX1xjtz1mx8G1lgvlo5EJTgi1E7e8
	 wu+lpuhKWH5YA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q66uk_2tKRv9; Thu, 29 Sep 2022 15:47:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6D6BF40B53;
	Thu, 29 Sep 2022 15:47:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6D6BF40B53
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 172F81BF385
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 15:47:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 81B9741A6E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 15:47:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 81B9741A6E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nhRJTEYVC4Ay for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Sep 2022 15:47:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2AB2641B88
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2AB2641B88
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 15:47:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="282299095"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="282299095"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 08:47:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="655598907"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="655598907"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 29 Sep 2022 08:47:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 29 Sep 2022 08:47:25 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 29 Sep 2022 08:47:24 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 29 Sep 2022 08:47:24 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 29 Sep 2022 08:47:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nq698blxCXntRu1Dcb2maryhqEuXNxp3B+lWHWtBvPP48VmBE2leS0GXC1m2096XztSX0w9y/39fvwCVZeeQ1G1fsoEWAzx0ov0m+3ZDn9DQC3STwnDkN3/dsMELJf5o756IsfBmKmjXyWwylcNmL5pMwH0dGyYjDvzi0mY7dOikQEsJBws7598ulPWMioNCYCMMYdUjAksXalsQFml2KQjZxL5vd3QNhq8nkkLLe7Hx1pm3qbLhT45GCwgtkfYlKCtnV+LoQCWctypXQofFbzLXP6X699bRN+UUVIrzIpFftm3eN/zO5GWgnwsO0YRyOf32skOpmFCDuX+ijZVwXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xy/nygZlMA8NfyIKrANzM9jIz7XGEJcdWujy8qYytNs=;
 b=gKLs+3MEYyMbR72x+T/6cmo/iBlftttV/vw6D22kuSqwtBpictwCuIbj//q7acveuZ8GcCcjeBELdh7mb1fJYZ93YX0T2F+Y3C4l2zDWUYLBvOKCNj0NrN+RV9p8UAe32EULzYK6ZTDCy3/B6n6bUmjJSlwP40B8htd1rKKXaIaDmYwAbGpq60zIKcIqgvNCawPGd3f35f+qsp8954HDdi6vwb4suhGq/PoAR4xep9qYCZYYOFz3jWM3hftiV3Ox5foWSgD9frTxNlej8Vgk+D1ZDW4DaPkuL2oXIA28AbHltjiL9X+GTLC/HsnAeTw7Ruq6No7Cd6iBNpUDLa2CJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM4PR11MB5517.namprd11.prod.outlook.com (2603:10b6:5:388::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.20; Thu, 29 Sep
 2022 15:47:21 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::e1bf:5cad:6e0e:cd0c]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::e1bf:5cad:6e0e:cd0c%7]) with mapi id 15.20.5676.017; Thu, 29 Sep 2022
 15:47:21 +0000
Message-ID: <86313d0b-9d2c-289f-e13e-742cdeb45aa7@intel.com>
Date: Thu, 29 Sep 2022 08:47:18 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
To: Ivan Vecera <ivecera@redhat.com>
References: <20220913140206.64330-1-kamil.maziarz@intel.com>
 <20220929095307.2c60d651@p1.luc.cera.cz>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220929095307.2c60d651@p1.luc.cera.cz>
X-ClientProxiedBy: SJ0PR05CA0040.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::15) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|DM4PR11MB5517:EE_
X-MS-Office365-Filtering-Correlation-Id: 08ff35a0-2ae1-400a-db69-08daa231e51e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yAC1+7DJJxXBZJ1VVudj3qS53q+r34ISSQq5n3ch8oeLvea5dgvRjpifSD9g5giHkoJM9t7jyqEYwnzncmJGpIx7CSKeoksAGvKtMBpTvic1CSJc09AkYcY+GBGPTLAlIlhBsa0UuYJrXqCUFwhLUHpSUNPdFSFHT/l2RYhQ2OCw5ZyrbV98bhVzOWYACrhodXwRYdwwb5GG/+DcxKsqVvGj+sLOeSGlnJupl1r7VjgUOAVHIxlCmyzmrU8w3k91p61+KpsOOXeiqpy3BLrQaShPv1Cz15Lh69sXc/LWGYPNptdclTfyeLPGTiR3elcXTXyQDVoD/wfAuc5hzxlu6IlvudY8vNDXZt0/jHCuhIIPm24QWS2X95NlUuvvwez6C7ceglR6JBtriUqZs6jrND0OiWNusKf/jCCsM/2V/+0l2bi6rIDQHSMfZIo0y6PX52h6V6qICEJXQdr0d6SX1c7Pp8Nzk4NMot3hYFPRi5OtfWTS6/evucn8m3i/DwKCsJOXw1G60DBfWnOWx4st5i/HmXhg6yQ03M1L4NWkXS1NgZ95VKIjzzxKOOcXQ1siwqaUsoX10rBzZYJrpzr19b+Lm8no2W7qX/gZTxh7v0AaSSJg1h5OmBcMPjgSD30096R+mj6ZCD9VzpluMHDFid+WnGQ1zIN0LFlSIuOlYnrwRn/ZXCWsNP0H5OpnUUsgvT0KvO8H9rNXy6pwu4EyBvcA14IJGS8MYH6mh0vELCXOEtVajswT96zqHNsqlMnkvjYylcoPLz/sBNn4Odpaq4hp0o0E5xp46eTswQQYCNWybi1rJN3+s/YpAuMQGXyV4r4W92FBJ+Z91U4aoQgYZngRa1/BOUsHnntCE4zvJA0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(376002)(366004)(396003)(346002)(451199015)(66946007)(66556008)(6916009)(8676002)(41300700001)(4326008)(66476007)(6486002)(316002)(31686004)(54906003)(8936002)(966005)(53546011)(6512007)(26005)(2906002)(31696002)(86362001)(38100700002)(82960400001)(478600001)(2616005)(186003)(6666004)(107886003)(5660300002)(6506007)(36756003)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NmdwUm55bDRvd2Y2dklrbml6WUFPQW9GSTB5cWJKTTU0ZkIrQWdlNEtVdmpm?=
 =?utf-8?B?WDNHZXZrb3YzTEwrSEd4emhDb1Z5Tkxqd1FsY2hTbDVVOHptWXI1aDlDNlhO?=
 =?utf-8?B?aDFCSEQ3UnFMMVNkZG5ON3BTd3BLYUxNb3BtUHYrWWJvYzRleVlSeW9Sd1E5?=
 =?utf-8?B?elJPNTZ0NjdISUFnbVpkR0lxMVdJdUI3a2hMRFFkNnVlVTNCSmw0RC9EU0xl?=
 =?utf-8?B?ZnA0YlZjUEZqdU1sTDhVc3VQNzNLcG4zcDNPQ1RsUk9tbXVKWk5MMURySFlJ?=
 =?utf-8?B?QzZHNGZYUGpZSUNubU5wREhNMzU0NzRzMnNEV2RsRXpEdVBIU29IVis1MkpT?=
 =?utf-8?B?ZUNKWVArSklTeGZrQm53YkJkWGlLUWgrNGJCTUpEeXhzVlV0NjIvUUpycU1V?=
 =?utf-8?B?R2JrbmxlSE5SS1ZQeDRGQ1FMdG1QWTdQODcxckE4Tkk3YWovSWxtdkkwYVBB?=
 =?utf-8?B?Y3VaajAza1BmOFVPUkczb1ZuSWd2b1RsSjVKVjJMMlNkR1JrTHM1VkFHM1FT?=
 =?utf-8?B?eWFSRW0wL3NtWklFdmpTSDFhK0NSTmRLYm9BM1JEcm0vUzFzZitReEZPOUZB?=
 =?utf-8?B?S3dXdUQ5djZDWFoxMG4wM0I3RU9sUllVTDRnVHBvQXViZTlFNWJTSk9SUVp4?=
 =?utf-8?B?NXF2dk5aaGNpeHRTK0g1aDBaZGd0MVJMZk5SY21SOXJWTU1OemN1QjlwS25D?=
 =?utf-8?B?R0J2RlNqQlpjbkJodmxWc2tvUkd2T3Nva0F0eEd1Y3JsYzJiTGxHZldZSmo4?=
 =?utf-8?B?SDNiYnY2UXIwZWJpMG1RQW5DL3JoQVJSdk83RHNpOUt4ZzBKcHo5Y1VqSXBX?=
 =?utf-8?B?OEhzN0F6UTFvLzNTV3d4OStvUGk1WUMyU2hzV0tPdFl5ZUZtcGwrK2h6SGZG?=
 =?utf-8?B?T2h1TnVPRElnRGF3Z25Pdm5rQVBHUys1SlhWM0JwSFIrWTBBa0JTVSt1YmtT?=
 =?utf-8?B?WjY2UytlRHV2bHVPOTN4dEgyWGdYbVlOR0tSMXFVeEZZbnVIN0N6MDkxY1FJ?=
 =?utf-8?B?UmNGWHo5dzltL2IvSFpETFpnOVU0MFpzdTdoNmQ3ZGVJeEFIRUxNdDFVR0dE?=
 =?utf-8?B?d29DRGg0Z2tJZUJLYkJ0OUpyWXM5a3IzZmh6aFNiSWxpUVhyaVhFbmJNNVk3?=
 =?utf-8?B?dmd5a3hmSm96VS9pRGVCalArbkQ4R1lGeThtYkxDUTMvZFk2d3VGOHNtZ0ZC?=
 =?utf-8?B?SG9CWEpma25hN2F4NHBsZmtmU05lYTd6dFVzSzB5NWU1QisyRURoK2FkZ2Uz?=
 =?utf-8?B?QzNEUjlsNllWV3k1bjdSaEtBNU5EaEdxVHpVdkZjS1BLWGluVXZ5TVdRcGtq?=
 =?utf-8?B?djUwUG8rZ2djZnAwRHRVeG5JeXEvMGRVVWpLR1k4YldOT3dZbzRYNkFoL3Fm?=
 =?utf-8?B?aTltNGtqVWlSZC9GcHFQQ1NhY2xLeWNLdGY0cDgycFRYNHVnZVRoSGgvaGEz?=
 =?utf-8?B?bkFxaFZqdjZDMmV6RnVTWWlnYmZjZ3VpdVcxYTBYQkdDd2F2aGlCNFU3VXFn?=
 =?utf-8?B?OEFIWTYvUkw0WTltdUlKNnNxYU1HeS9FMS81dHljRnBKUjFPbkVMQlhpQmd6?=
 =?utf-8?B?L0w3VDNGMmFjbTM1RmpTVEwzRUNNWE9mYm52UGZFbUgwNXRlNnM2anYwWHJT?=
 =?utf-8?B?NFRLbzhLWS9qVExlZW9FNDRQYVhnUEZVbDRkRWNpeFBBTDNUYzQ5SDdSbkJt?=
 =?utf-8?B?RURzb0s5dGl1dmpEM1Q4UXk0QVZWZjZLaHJlak56NmU3OU9tV1BycGRvVzQ3?=
 =?utf-8?B?NUU2clNQaFlsU1hVZkkwOWlTMmVhSXRsK0RVd2tRQVE3ejdMVjNueFdrS09t?=
 =?utf-8?B?Ym5JaXQxS0ZEbU1aNzZzRVkzKzZCYXVLcUZKNkRiZkRmRVZLd2lpMTRQT0th?=
 =?utf-8?B?UW1HZFJpaDFjbGxSdWg5TTZCQmtkSzR1TVc5WjhkRnpick5qUTFGZzliQ2hr?=
 =?utf-8?B?TVovWS9NOU03S2dBSzRZN3V4WXVaZHh6QzB0N0NUR2w3cCtmOFAyZXVkcnVy?=
 =?utf-8?B?TzNqV3VpQ08vN2xrVjBuMjZ1UmMvQVdhazUwcGg0ZUdvZWVhMnhMQW82c2hG?=
 =?utf-8?B?MW1oRmhxVU5LVDZaQU5ZK0orNFJ0cHRqZ08xSTZpNjhHMitPM3VtdlZuK3c1?=
 =?utf-8?B?aUdVSDVBNjRqZnFyUXFlTGlOWmVsKzRVUzh0dnA2OFJVTk51STJTN2VvRTkz?=
 =?utf-8?B?alE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 08ff35a0-2ae1-400a-db69-08daa231e51e
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2022 15:47:20.9479 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5PkpXedQtm1he7vv6CboBivfzl6nRuOP2+GYtUsrGX7mIUA+paSOXmmvFhm/C/FlFDjSjFgZOA6OQoZXcoa/2uh4/HtyE/UlI6br/iwz8VQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5517
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664466457; x=1696002457;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4fRGCHdDiV2TKGO7aQr9G/346UPGnGiZitgS0qbLVkM=;
 b=U4n2AMIa3HMlU5+JIhvjwcNIbonh/2GfakZbp5v1yShx+NNLp6LJmNZX
 A+VZXfm+fzxMrDUfqaqx1BYUgwmy6+ao8qCG5AEe2y8Da7MFFMFYl+wD1
 FYyyTK+Y916XlZxAkYo5+RDQnLvqcseIdGe6egZMh2Vnep/zQI7X6XFGF
 dX1XiyCxzgT+NbgkjMQK9D5dg/Z7v1yB+5iyy1OrFCH/DGLMsBrANMXxq
 Jj6Pkm7el05McN55MGrxVBbXZyrHlMsa3710MLZ7jCdseVMorRSbAWzk8
 RiSKyV7Q70Yjgm83Vq3jzEWkA2U6Jo4NWYTau11Iwn+DyeqxImsj0khbl
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U4n2AMIa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix not setting xps_cpus
 after reset
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
Cc: Michal Jaron <michalx.jaron@intel.com>, intel-wired-lan@lists.osuosl.org,
 Kamil Maziarz <kamil.maziarz@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Ivan,

On 9/29/2022 12:53 AM, Ivan Vecera wrote:
> On Tue, 13 Sep 2022 16:02:06 +0200
> Kamil Maziarz <kamil.maziarz@intel.com> wrote:
> 
>> From: Michal Jaron <michalx.jaron@intel.com>
>>
>> ...
> 
> Tony, I'd like to ask what did happen with this commit? During Monday you applied the patch to
> 40GBe branch as:
> 
> commit ce8d8ae335f469a399805f56e74b98390f327184
> Author: Michal Jaron <michalx.jaron@intel.com>
> Date:   Tue Sep 13 16:02:06 2022 +0200
> 
>      i40e: Fix not setting xps_cpus after reset
>      
>      During tx rings configuration default XPS queue config is set and
>      __I40E_TX_XPS_INIT_DONE is locked. XPS CPUs maps are cleared in
>      every reset by netdev_set_num_tc() call regardless it was set by
>      user or driver. If reset with reinit occurs __I40E_TX_XPS_INIT_DONE
>      flag is removed and XPS mapping is set to default again but after
>      reset without reinit this flag is still set and XPS CPUs to queues
>      mapping stays cleared.
>      
>      Add code to preserve xps_cpus mapping as cpumask for every queue
>      and restore those mapping at the end of reset.
>      
>      Fixes: 6f853d4f8e93 ("i40e: allow XPS with QoS enabled")
>      Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
>      Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
>      Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
>      Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> 
> but later the branch was force-pushed, the commit is not present there anymore nor
> in upstream...

I'm not sure exactly where you are referring to when you say upstream, 
but it is still currently on the IWL trees [1].

> Was it silently dropped? What was the reason?

When sent to netdev, there are questions/concerns with the patch [2]. As 
I mentioned in the netdev patch, in an effort to try to get the other 
patches in the series accepted for this kernel (since it's closing 
soon), I've omitted this patch from the pull request while the 
discussion continues. This may or may not be dropped from the tree based 
on where the netdev discussion goes.

For the IWL trees, dev-queue is the branch that you should follow. The 
other branches are branches for pull requests so their content is fluid 
and doesn't necessarily represent what is current with IWL patches.

Thanks,
Tony

[1] 
https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git/commit/?h=dev-queue&id=e312239075d77f11b45c3997a4e89153393c259d
[2] https://lore.kernel.org/netdev/20220927182933.30d691d2@kernel.org/#t
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
