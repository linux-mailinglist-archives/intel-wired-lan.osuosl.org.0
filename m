Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA7A7CB6AA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 00:44:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9787460E0B;
	Mon, 16 Oct 2023 22:44:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9787460E0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697496271;
	bh=GAirwx2XIdPT/sBuQ34dHyEDAMqnrSCfXgg4uDs349Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fYCJFNGTjhQ43h+50qI5NLiRHRgIo1usP8MmuuHZnwPWeAy/hgUvNfxhoHJ5gdRnZ
	 XBMyj5vNEcsbseR3tP8JZpd7yi7s1gZ6RtjPW9uUqnM0HCqDEQUzHxFqQEI/x2d6v4
	 75G2uKyx4IpzTCK8EDQbeRg5EkXi8MhRdxwPMz/K2ARb8yflWHyzsM69n1sIZ+NOAx
	 ioXr6wM6RiGiagD/bH2V9Jhx9rLIWqhnarqaPH6jhA/PzFd/jeblIOyq7+WGe7xnqM
	 yK9yGV4nsAhY+qOumwtjSB6QTPOt14xKkleWUUVfYEHFP4XVcGI8lY/RMBknPo6psI
	 zFDCK5b94sQBw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gQCTryVRFDPI; Mon, 16 Oct 2023 22:44:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1302360B09;
	Mon, 16 Oct 2023 22:44:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1302360B09
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6E4CE1BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 22:44:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3A7F160D59
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 22:44:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A7F160D59
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K7gVnEBBIj9n for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Oct 2023 22:44:24 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E831A60B09
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 22:44:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E831A60B09
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="4259174"
X-IronPort-AV: E=Sophos;i="6.03,230,1694761200"; 
   d="scan'208";a="4259174"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 15:44:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,230,1694761200"; 
   d="scan'208";a="3819282"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Oct 2023 15:44:28 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 16 Oct 2023 15:44:21 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 16 Oct 2023 15:44:21 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 16 Oct 2023 15:44:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bBQ/1tD9XxovSa0mLrHuKDVpK56zUGW8MNFLyIgHj4WK/88YZ2Js1T73cenpYop1I2TkkqUbS0VO5eH9KJa0sjlav6qfSUJ98n4X3wbTr0FmnGJ1VIqF1wroV/6HFHvQ/Nv+qe3cKrySVI8x+ZkWYa5u/z0mWVSV307A0HuYr0Ce8Y8ZzB+03iBCRItzJZ9rqTO5jcBWlYSEyGLHgtXf6WCSbTxwNX372EL9FPADdcLhuy2uSRzJqWs8cSvzBsXjRQ6oBgN+kBUCTErHwi0oYo/v2Vskku/GlQg9jr9MgU3VRi6pM8UdYpGaDSdvk6aiuCnjHoQepIuO23VcFirJbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hd6xcXzB7jLs9h9OI6yBWT6odMYfpWsl2MOj0cx5MjM=;
 b=i4hcLDOqWGvFkhcajAW6tb13tHHqMWXialASVBuROv8UzS9vHFzEf0PbGMk8bhJJzA6aUBck+lirdLK6I9fZKyZpDIaE7owXOqP8mqAlqdfEvY/i0Ed+QYwBhE9w+aTdv0Vi6NzQ7ZXCeXGruHfu133RPgZXLmHGtUXW6Nn7g4QfiS9nZJ2X64jMRRgSRjk9G5YxRnUFMiU5B923YPZqsCzbzI1/Rn350uFt0b6uPWhymCaHuoRJBvmDdRbO9vC1oYHx2mH+5k5rWtqEedEk8Cy2qHFEVQjfgije40AhaQQNVkXqrDLfSadlZhgfe/N4IXdk6KB7W+f6Pt0Yc3o8kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by SN7PR11MB8109.namprd11.prod.outlook.com (2603:10b6:806:2e0::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.35; Mon, 16 Oct
 2023 22:44:19 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8%7]) with mapi id 15.20.6886.034; Mon, 16 Oct 2023
 22:44:19 +0000
Message-ID: <14feb89d-7b4a-40c5-8983-5ef331953224@intel.com>
Date: Mon, 16 Oct 2023 16:44:09 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alexander Duyck <alexander.duyck@gmail.com>
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <20231016154937.41224-2-ahmed.zaki@intel.com>
 <8d1b1494cfd733530be887806385cde70e077ed1.camel@gmail.com>
 <26812a57-bdd8-4a39-8dd2-b0ebcfd1073e@intel.com>
 <CAKgT0Ud7JjUiE32jJbMbBGVexrndSCepG54PcGYWHJ+OC9pOtQ@mail.gmail.com>
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <CAKgT0Ud7JjUiE32jJbMbBGVexrndSCepG54PcGYWHJ+OC9pOtQ@mail.gmail.com>
X-ClientProxiedBy: FR4P281CA0139.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b8::19) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|SN7PR11MB8109:EE_
X-MS-Office365-Filtering-Correlation-Id: 96794f6e-e706-4567-3ae5-08dbce996ef9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iBL5VQaTAKgCSR6B43xJ+mar37VTzWwFo13epz55tmJH4wSA61p3/73pdvxBjw8bF44Yai1uAD3B+HM6tWl5QpnfsaeGSVJbcNGba2l+bzP+hYBSF1ClusKYEb+kPEoYxGvTDfpCiM4o+ErNbn3u+JSH5eRI4qOopZs0UXv0na5sZisxUA4NyFWnCyHdkpjtJw4DmhABOHlnazmTTyI63zmz5z/MxXXSBxsBMQJPxxL5DzOKqyfsFqwPddbcRbB5KRMOOgDlEiGYeOpOh/ACf8W49Mo2eUzjbL72E9mAygMx4vC4KSyNAWEkgszmZla6p2dnFXvRhADNrAdCRYv9RJHZqjT7uAIcUW28u9XKOWoEJPg4+ObFksVA6yjoWEHIe5PQGNCYvu9wo6N7etVj7EKjaCP421EpfGJXUmAskDUaw3gkFesI51FDGU5Hs+o5ssSNRkoe9aIm8bX6wuN3aYUXjqKsWE7RcIoKJQLonrX/n2NHu3f2hIfern4/iWjQnxcbn1oH144hjShUREK2dYlT4jXPQ8WhYdQSrhN+fnIZs+gaFwzrzrb0LV5UuZZ1pXfTNjaBfoBnWZsVcP4kbYcBtn+wtr6DmpORuIgqywwF0sQsjC3WQg/9Y6GfdjBR+ZRjFf1yKbh3c5Tn+7RTBgnMwtZVftpTuAYoQMlve04=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(39860400002)(136003)(396003)(346002)(230922051799003)(64100799003)(186009)(1800799009)(451199024)(6486002)(7416002)(478600001)(41300700001)(4326008)(8936002)(66946007)(66556008)(6916009)(316002)(66476007)(8676002)(31686004)(44832011)(5660300002)(53546011)(6506007)(31696002)(38100700002)(82960400001)(86362001)(6512007)(2616005)(107886003)(26005)(36756003)(83380400001)(6666004)(2906002)(4001150100001)(21314003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZWxpS0RoY1pRM1BDNmNWcVNuNHk1d1ozdCtPWkxJRTZiYTA4RnhwVXBoayty?=
 =?utf-8?B?MHRGbmtHcjV3SjZMVTZocnVUVmZHODhXamRGbXBvTEhMK3YrZ0pXb1QwZjkw?=
 =?utf-8?B?QXJIWi8ybUh0RVJKVWhVYjJvelFkMU4wSGV4N2RRcVpZMlp3a0N1WTJhVGJl?=
 =?utf-8?B?eXJpZGM4djlYUlZOd3dGVkErWnhLcm9sSDNQajQ3NTdRa0Q1a2NDZGZHREp5?=
 =?utf-8?B?eVBXd2t0UkJRK2ZVMWMzZ0lSSysxdFhwc3lxVWNZc3hiT0JLOWRWVk9NY1VJ?=
 =?utf-8?B?RHJGa25HMVNwYnB1TGEza3ZXWFpMUG1TOHMvbHhEOVh4MEs3K3ZlRnlDOHA0?=
 =?utf-8?B?TlJGYVVhWW03UVptcHVZQ0hKQkxxSFlNc2R6NDBueWIvZzZpSmk2bXBCR0JT?=
 =?utf-8?B?RTBJQTFzd01uVTMyNTQ4WFBxdzRoMCtPWWV4UVZXTTNvYms4STlMV3NsY2or?=
 =?utf-8?B?L2ltbENlWXo5YWZVenZKeGs2THB3NklEd3dXMnZvS3A2bjZ5UUhRYU1UOW1R?=
 =?utf-8?B?ZjJPOEQ2NFd3N1VRN05FbTBQM2FlUzUrNkRGaENmdU5EQ1AwZ2w0VmdwcFBI?=
 =?utf-8?B?SThZUzdMRFBkQlVoRXRWWldIVUsxbkFXTElVODY4UDJYeUV3T0pkZ01ha1Zm?=
 =?utf-8?B?MElOcjh6VFY4UzJlbU1IN1BDVC9Hd3dia1htd2VUNE9zUitNR0RPZWVIcWww?=
 =?utf-8?B?RkEyNWdMYktRVXNrZm1QU0YxdUgrcWlEcFFQS0tNSFRidGIxSzBZZHRRalcx?=
 =?utf-8?B?U2wvOGRFWC9VSGEvWXBJcno2aVdENE9JRUJRb3FNZXhBNllTK1B1OW9yMlVY?=
 =?utf-8?B?bzNNOXVrMmJSMFVYSUlJY2JxZ00wWStMLzd6dUVXSFV6NU40aWtHWkZob3cx?=
 =?utf-8?B?dGhCMjRBSjdIeFl4d2FYRDhiNGxWdjRZVHpSQUJCTk5ndGhETVJMQmNRNlBZ?=
 =?utf-8?B?ZHJyVzhHc3Z0aFVEQlkyZkpsWjloZzlIQ2FNcStNekZZUmt5M0FyNGRVbEd4?=
 =?utf-8?B?ajJRYmpMZHVQWUNJSy9veTJsUjFJK1hydDl4OHVzd094WjFNL01xL1F5VGRt?=
 =?utf-8?B?M3YranZpbzhZTWRPV25LM3RhQzQraUhZUnJZaGI1OUxsdUNFdFVobGxjeUhG?=
 =?utf-8?B?WWpDa2ZDVVZMeHBRdlk4c3VNQ2NRNUNQMk1CVGRaTTQvOFFCUFhrSEVkSExT?=
 =?utf-8?B?cGNNLytoTTZPRldYLzBLdlByeUxObXR6SDk3MGxzUSt1ZTQxQk5XRjZVT1Jn?=
 =?utf-8?B?U3p0TUhpV3VqLzdVN0pSODkrMG0xMTI1cWgvWmtwSGEzN285SU9zWmNndS83?=
 =?utf-8?B?S0kxQzgyQm9ONzg5VUc4bnpTZkFQa29zK29vVkd2T2xpSHg4THFFSlJyY2ZX?=
 =?utf-8?B?QmZ5eUVBaEkxcjBtRGZFY2ZxVmx5RkRtc1loeTdQT3phcDN4L0tNdjJtUGNU?=
 =?utf-8?B?bzFjdDhjSTJjS0tvZXl0WE5ZWGRqRVU2YTQ4OEp0TU9YMmpTT2MzZE5vQ0Nu?=
 =?utf-8?B?aWlxN2duV1VrTUJLVEE1NjZLT1NqVE5oM1JxT2JZdmRXckR2RFVVMUFDVCtx?=
 =?utf-8?B?d29JSHJsNGFOUHBrYk1LWnVpUG9lYkEwSmRJMlgwSXZHT2VsSG1mTlBtN3Jy?=
 =?utf-8?B?UEo2RlB6WlIyUTdNb1pnTUJrODM5SXo2NmF1V1cvODBWc3R1YXlNVEVrcEQy?=
 =?utf-8?B?QVkvWjlEVyswcFdJRWNJZmpSbkE1L1kzOHNpNEtjUUsvQ1pDaklWalJCT3Vr?=
 =?utf-8?B?SU0vMnZyWFE3a0VDUk41OC9PSCtqcmIwNDYzRTV6VGlTcm5EbGRIWEVkblQy?=
 =?utf-8?B?bWtHNFJham9IM2tYc0R3aXRPSGFMZHFmM0ZaRDhBWERsR3RLV0trcUQzR0RY?=
 =?utf-8?B?Z2ZzUHYzYk9uRGZCaGFDVlh3MjVYeHhVWlBpNmIzVEhQckg0c2JOa3ROS052?=
 =?utf-8?B?ZTVPVlZWakdkUDdYV09tcjJYcHByWXdReDhpVWlXc2huOUNMUDhPT0dKRlZk?=
 =?utf-8?B?RTdBeExjbDFZWnJ1YXNBYUZFaDg3L1Z6b2I5d0RBUnlBTFFrRjJnMnVndS9G?=
 =?utf-8?B?L0pLT1V1aVVBcHVKNnIybDVCSW5VR21qVGdYbEdMNG5WOWpGZnd1bTdIODRD?=
 =?utf-8?Q?MEvNwKqrtzNkRnZli5HPLOJ7s?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 96794f6e-e706-4567-3ae5-08dbce996ef9
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2023 22:44:19.3419 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g1NSoDzTs+52BHDLoNP4lYpYq0NfV1jp/cupdcQIBRrK/vWTuNkeSjCsr38vnzGJVQKDNgvnpsxzEW55LHk1NA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8109
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697496264; x=1729032264;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TFLTaWyJ6Nlk+QebDAGBFeYqjBuXDQ6hWYR1QwpfNgg=;
 b=Ge7qr7uq2xPC6WipfC0M23e4KD/3kxEsjfSugFDYpCD0KDRBLurYt4nb
 eOcGVxc2W8qe9nbVCg6BNzFsBcx88hMM/D7D7nXWcuEsodFt+9hq7Q8Sm
 LDBJ5psTZFvpYlWrCowbHV50xKTZrygY/8pDdGTubOYBVyvH6PmQxMWG1
 4OVF1HdiLzPp6FygceCzNnKgxnX3/wY32LVwIKBPtu/pqQ2wLwI7pS5If
 cRIS0RbP0/RighCLD+nQXoXXLELYfYv9J8F3MKkyydeya6KOrGhn57bj7
 lvP5skJzoWlLCLDKfkKQABM/Y+4vaVJ7aVyvXo8/scpo27if1f9pSX62z
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ge7qr7uq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/6] net: ethtool: allow
 symmetric-xor RSS hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 vladimir.oltean@nxp.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAyMDIzLTEwLTE2IDE2OjE1LCBBbGV4YW5kZXIgRHV5Y2sgd3JvdGU6Cj4gT24gTW9uLCBP
Y3QgMTYsIDIwMjMgYXQgMjowOeKAr1BNIEFobWVkIFpha2kgPGFobWVkLnpha2lAaW50ZWwuY29t
PiB3cm90ZToKPj4KPj4KPj4KPj4gT24gMjAyMy0xMC0xNiAxNDoxNywgQWxleGFuZGVyIEggRHV5
Y2sgd3JvdGU6Cj4+PiBPbiBNb24sIDIwMjMtMTAtMTYgYXQgMDk6NDkgLTA2MDAsIEFobWVkIFph
a2kgd3JvdGU6Cj4+Pj4gU3ltbWV0cmljIFJTUyBoYXNoIGZ1bmN0aW9ucyBhcmUgYmVuZWZpY2lh
bCBpbiBhcHBsaWNhdGlvbnMgdGhhdCBtb25pdG9yCj4+Pj4gYm90aCBUeCBhbmQgUnggcGFja2V0
cyBvZiB0aGUgc2FtZSBmbG93IChJRFMsIHNvZnR3YXJlIGZpcmV3YWxscywgLi5ldGMpLgo+Pj4+
IEdldHRpbmcgYWxsIHRyYWZmaWMgb2YgdGhlIHNhbWUgZmxvdyBvbiB0aGUgc2FtZSBSWCBxdWV1
ZSByZXN1bHRzIGluCj4+Pj4gaGlnaGVyIENQVSBjYWNoZSBlZmZpY2llbmN5Lgo+Pj4+Cj4+Pj4g
QSBOSUMgdGhhdCBzdXBwb3J0cyAic3ltbWV0cmljLXhvciIgY2FuIGFjaGlldmUgdGhpcyBSU1Mg
aGFzaCBzeW1tZXRyeQo+Pj4+IGJ5IFhPUmluZyB0aGUgc291cmNlIGFuZCBkZXN0aW5hdGlvbiBm
aWVsZHMgYW5kIHBhc3MgdGhlIHZhbHVlcyB0byB0aGUKPj4+PiBSU1MgaGFzaCBhbGdvcml0aG0u
Cj4+Pj4KPj4+PiBPbmx5IGZpZWxkcyB0aGF0IGhhcyBjb3VudGVycGFydHMgaW4gdGhlIG90aGVy
IGRpcmVjdGlvbiBjYW4gYmUKPj4+PiBhY2NlcHRlZDsgSVAgc3JjL2RzdCBhbmQgTDQgc3JjL2Rz
dCBwb3J0cy4KPj4+Pgo+Pj4+IFRoZSB1c2VyIG1heSByZXF1ZXN0IFJTUyBoYXNoIHN5bW1ldHJ5
IGZvciBhIHNwZWNpZmljIGZsb3cgdHlwZSwgdmlhOgo+Pj4+Cj4+Pj4gICAgICAgIyBldGh0b29s
IC1OfC1VIGV0aDAgcngtZmxvdy1oYXNoIDxmbG93X3R5cGU+IHN8ZHxmfG4gc3ltbWV0cmljLXhv
cgo+Pj4+Cj4+Pj4gb3IgdHVybiBzeW1tZXRyeSBvZmYgKGFzeW1tZXRyaWMpIGJ5Ogo+Pj4+Cj4+
Pj4gICAgICAgIyBldGh0b29sIC1OfC1VIGV0aDAgcngtZmxvdy1oYXNoIDxmbG93X3R5cGU+IHN8
ZHxmfG4KPj4+Pgo+Pj4+IFJldmlld2VkLWJ5OiBXb2pjaWVjaCBEcmV3ZWsgPHdvamNpZWNoLmRy
ZXdla0BpbnRlbC5jb20+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogQWhtZWQgWmFraSA8YWhtZWQuemFr
aUBpbnRlbC5jb20+Cj4+Pj4gLS0tCj4+Pj4gICAgRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL3Nj
YWxpbmcucnN0IHwgIDYgKysrKysrCj4+Pj4gICAgaW5jbHVkZS91YXBpL2xpbnV4L2V0aHRvb2wu
aCAgICAgICAgIHwgMjEgKysrKysrKysrKysrKy0tLS0tLS0tCj4+Pj4gICAgbmV0L2V0aHRvb2wv
aW9jdGwuYyAgICAgICAgICAgICAgICAgIHwgMTEgKysrKysrKysrKysKPj4+PiAgICAzIGZpbGVz
IGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCj4+Pj4KPj4+PiBkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL3NjYWxpbmcucnN0IGIvRG9jdW1lbnRh
dGlvbi9uZXR3b3JraW5nL3NjYWxpbmcucnN0Cj4+Pj4gaW5kZXggOTJjOWZiNDZkNmEyLi42NGYz
ZDc1NjY0MDcgMTAwNjQ0Cj4+Pj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL3NjYWxp
bmcucnN0Cj4+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL3NjYWxpbmcucnN0Cj4+
Pj4gQEAgLTQ0LDYgKzQ0LDEyIEBAIGJ5IG1hc2tpbmcgb3V0IHRoZSBsb3cgb3JkZXIgc2V2ZW4g
Yml0cyBvZiB0aGUgY29tcHV0ZWQgaGFzaCBmb3IgdGhlCj4+Pj4gICAgcGFja2V0ICh1c3VhbGx5
IGEgVG9lcGxpdHogaGFzaCksIHRha2luZyB0aGlzIG51bWJlciBhcyBhIGtleSBpbnRvIHRoZQo+
Pj4+ICAgIGluZGlyZWN0aW9uIHRhYmxlIGFuZCByZWFkaW5nIHRoZSBjb3JyZXNwb25kaW5nIHZh
bHVlLgo+Pj4+Cj4+Pj4gK1NvbWUgTklDcyBzdXBwb3J0IHN5bW1ldHJpYyBSU1MgaGFzaGluZyB3
aGVyZSwgaWYgdGhlIElQIChzb3VyY2UgYWRkcmVzcywKPj4+PiArZGVzdGluYXRpb24gYWRkcmVz
cykgYW5kIFRDUC9VRFAgKHNvdXJjZSBwb3J0LCBkZXN0aW5hdGlvbiBwb3J0KSB0dXBsZXMKPj4+
PiArYXJlIHN3YXBwZWQsIHRoZSBjb21wdXRlZCBoYXNoIGlzIHRoZSBzYW1lLiBUaGlzIGlzIGJl
bmVmaWNpYWwgaW4gc29tZQo+Pj4+ICthcHBsaWNhdGlvbnMgdGhhdCBtb25pdG9yIFRDUC9JUCBm
bG93cyAoSURTLCBmaXJld2FsbHMsIC4uLmV0YykgYW5kIG5lZWQKPj4+PiArYm90aCBkaXJlY3Rp
b25zIG9mIHRoZSBmbG93IHRvIGxhbmQgb24gdGhlIHNhbWUgUnggcXVldWUgKGFuZCBDUFUpLgo+
Pj4+ICsKPj4+PiAgICBTb21lIGFkdmFuY2VkIE5JQ3MgYWxsb3cgc3RlZXJpbmcgcGFja2V0cyB0
byBxdWV1ZXMgYmFzZWQgb24KPj4+PiAgICBwcm9ncmFtbWFibGUgZmlsdGVycy4gRm9yIGV4YW1w
bGUsIHdlYnNlcnZlciBib3VuZCBUQ1AgcG9ydCA4MCBwYWNrZXRzCj4+Pj4gICAgY2FuIGJlIGRp
cmVjdGVkIHRvIHRoZWlyIG93biByZWNlaXZlIHF1ZXVlLiBTdWNoIOKAnG4tdHVwbGXigJ0gZmls
dGVycyBjYW4KPj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2xpbnV4L2V0aHRvb2wuaCBi
L2luY2x1ZGUvdWFwaS9saW51eC9ldGh0b29sLmgKPj4+PiBpbmRleCBmN2ZiYTBkYzg3ZTUuLjRl
OGQzOGZiNTVjZSAxMDA2NDQKPj4+PiAtLS0gYS9pbmNsdWRlL3VhcGkvbGludXgvZXRodG9vbC5o
Cj4+Pj4gKysrIGIvaW5jbHVkZS91YXBpL2xpbnV4L2V0aHRvb2wuaAo+Pj4+IEBAIC0yMDE4LDE0
ICsyMDE4LDE5IEBAIHN0YXRpYyBpbmxpbmUgaW50IGV0aHRvb2xfdmFsaWRhdGVfZHVwbGV4KF9f
dTggZHVwbGV4KQo+Pj4+ICAgICNkZWZpbmUgICAgRkxPV19SU1MgICAgICAgIDB4MjAwMDAwMDAK
Pj4+Pgo+Pj4+ICAgIC8qIEwzLUw0IG5ldHdvcmsgdHJhZmZpYyBmbG93IGhhc2ggb3B0aW9ucyAq
Lwo+Pj4+IC0jZGVmaW5lICAgICBSWEhfTDJEQSAgICAgICAgKDEgPDwgMSkKPj4+PiAtI2RlZmlu
ZSAgICAgUlhIX1ZMQU4gICAgICAgICgxIDw8IDIpCj4+Pj4gLSNkZWZpbmUgICAgIFJYSF9MM19Q
Uk9UTyAgICAoMSA8PCAzKQo+Pj4+IC0jZGVmaW5lICAgICBSWEhfSVBfU1JDICAgICAgKDEgPDwg
NCkKPj4+PiAtI2RlZmluZSAgICAgUlhIX0lQX0RTVCAgICAgICgxIDw8IDUpCj4+Pj4gLSNkZWZp
bmUgICAgIFJYSF9MNF9CXzBfMSAgICAoMSA8PCA2KSAvKiBzcmMgcG9ydCBpbiBjYXNlIG9mIFRD
UC9VRFAvU0NUUCAqLwo+Pj4+IC0jZGVmaW5lICAgICBSWEhfTDRfQl8yXzMgICAgKDEgPDwgNykg
LyogZHN0IHBvcnQgaW4gY2FzZSBvZiBUQ1AvVURQL1NDVFAgKi8KPj4+PiAtI2RlZmluZSAgICAg
UlhIX0RJU0NBUkQgICAgICgxIDw8IDMxKQo+Pj4+ICsjZGVmaW5lICAgICBSWEhfTDJEQSAgICAg
ICAgICAgICAgICAoMSA8PCAxKQo+Pj4+ICsjZGVmaW5lICAgICBSWEhfVkxBTiAgICAgICAgICAg
ICAgICAoMSA8PCAyKQo+Pj4+ICsjZGVmaW5lICAgICBSWEhfTDNfUFJPVE8gICAgICAgICAgICAo
MSA8PCAzKQo+Pj4+ICsjZGVmaW5lICAgICBSWEhfSVBfU1JDICAgICAgICAgICAgICAoMSA8PCA0
KQo+Pj4+ICsjZGVmaW5lICAgICBSWEhfSVBfRFNUICAgICAgICAgICAgICAoMSA8PCA1KQo+Pj4+
ICsjZGVmaW5lICAgICBSWEhfTDRfQl8wXzEgICAgICAgICAgICAoMSA8PCA2KSAvKiBzcmMgcG9y
dCBpbiBjYXNlIG9mIFRDUC9VRFAvU0NUUCAqLwo+Pj4+ICsjZGVmaW5lICAgICBSWEhfTDRfQl8y
XzMgICAgICAgICAgICAoMSA8PCA3KSAvKiBkc3QgcG9ydCBpbiBjYXNlIG9mIFRDUC9VRFAvU0NU
UCAqLwo+Pj4+ICsvKiBYT1IgdGhlIGNvcnJlc3BvbmRpbmcgc291cmNlIGFuZCBkZXN0aW5hdGlv
biBmaWVsZHMgb2YgZWFjaCBzcGVjaWZpZWQKPj4+PiArICogcHJvdG9jb2wuIEJvdGggY29waWVz
IG9mIHRoZSBYT1InZWQgZmllbGRzIGFyZSBmZWQgaW50byB0aGUgUlNTIGFuZCBSWEhBU0gKPj4+
PiArICogY2FsY3VsYXRpb24uCj4+Pj4gKyAqLwo+Pj4+ICsjZGVmaW5lICAgICBSWEhfU1lNTUVU
UklDX1hPUiAgICAgICAoMSA8PCAzMCkKPj4+PiArI2RlZmluZSAgICAgUlhIX0RJU0NBUkQgICAg
ICAgICAgICAgKDEgPDwgMzEpCj4+Pgo+Pj4gSSBndWVzcyB0aGlzIGhhcyBhbHJlYWR5IGJlZW4g
ZGlzY3Vzc2VkIGJ1dCBJIGFtIG5vdCBhIGZhbiBvZiBsb25nCj4+PiBuYW1lcyBmb3IgZGVmaW5l
cy4gSSB3b3VsZCBwcmVmZXIgdG8gc2VlIHRoaXMganVzdCBiZSBzb21ldGhpbmcgbGlrZQo+Pj4g
UlhIX1NZTU1FVFJJQyBvciBzb21ldGhpbmcgbGlrZSB0aGF0LiBUaGUgWE9SIGlzIGp1c3QgYW4g
aW1wbGVtZW50YXRpb24KPj4+IGRldGFpbC4gSSBoYXZlIHNlZW4gdGhlIHNhbWUgdGhpbmcgYWNj
b21wbGlzaGVkIGJ5IGp1c3QgcmVvcmRlcmluZyB0aGUKPj4+IGZpZWxkcyBieSBtaW4vbWF4IGFw
cHJvYWNoZXMuCj4+Cj4+IENvcnJlY3QuIFdlIGRpc2N1c3NlZCB0aGlzIGFuZCB0aGUgY29uc2Vu
c3VzIHdhcyB0aGF0IHRoZSB1c2VyIG5lZWRzIHRvCj4+IGhhdmUgY29tcGxldGUgY29udHJvbCBv
biB3aGljaCBpbXBsZW1lbnRhdGlvbi9hbGdvcml0aG0gaXMgdXNlZCB0bwo+PiBwcm92aWRlIHRo
aXMgc3ltbWV0cnksIGJlY2F1c2UgZWFjaCB3aWxsIHlpZWxkIGRpZmZlcmVudCBoYXNoIGFuZCBt
YXkgYmUKPj4gZGlmZmVyZW50IHBlcmZvcm1hbmNlLgo+IAo+IEkgYWdyZWUgYWJvdXQgdGhlIHVz
ZXIgaGF2aW5nIGNvbnRyb2wgb3ZlciB0aGUgYWxnb3JpdGhtLCBidXQgdGhpcwo+IGludGVyZmFj
ZSBpc24ndCBhYm91dCBzZWxlY3RpbmcgdGhlIGFsZ29yaXRobS4gSXQgaXMganVzdCBhYm91dAo+
IHNldHRpbmcgdXAgdGhlIGlucHV0cy4gU2VsZWN0aW5nIHRoZSBhbGdvcml0aG0gaXMgaGFuZGxl
ZCB2aWEgdGhlCj4gc2V0L2dldF9yeGZoIGludGVyZmFjZSBoZnVuYyB2YXJpYWJsZS4gSWYgdGhp
cyBpcyBqdXN0IGEgZGlmZmVyZW50Cj4gaGFzaCBmdW5jdGlvbiBpdCByZWFsbHkgYmVsb25ncyB0
aGVyZSByYXRoZXIgdGhhbiBiZWluZyBtYWRlIGEgcGFydCBvZgo+IHRoZSBpbnB1dCBzdHJpbmcu
CgpNeSBiYWQuIEl0IGlzIHRoZSBzYW1lIFJTUyBhbGdvcml0aG0gKFRvZXBsaXR6IGluIG91ciBj
YXNlKS4gU3RpbGwgdGhlIAp1c2VyIG5lZWRzIHRvIGJlIGFibGUgdG8gbWFuaXB1bGF0ZSB0aGUg
aW5wdXRzLiBUaGUgcG9pbnQgaXMsIGEgZ2VuZXJpYyAKZGVmaW5lIGxpa2UgIlJYSF9TWU1FVFJJ
QyIgd2FzIHJlamVjdGVkICh0aGF0IHdhcyBhY3R1YWxseSB2MSkuCgoKPiAKPj4+Cj4+Pj4KPj4+
PiAgICAjZGVmaW5lICAgIFJYX0NMU19GTE9XX0RJU0MgICAgICAgIDB4ZmZmZmZmZmZmZmZmZmZm
ZlVMTAo+Pj4+ICAgICNkZWZpbmUgUlhfQ0xTX0ZMT1dfV0FLRSAgIDB4ZmZmZmZmZmZmZmZmZmZm
ZVVMTAo+Pj4+IGRpZmYgLS1naXQgYS9uZXQvZXRodG9vbC9pb2N0bC5jIGIvbmV0L2V0aHRvb2wv
aW9jdGwuYwo+Pj4+IGluZGV4IDBiMGNlNGY4MWMwMS4uYjFiZDBkNGI0OGU4IDEwMDY0NAo+Pj4+
IC0tLSBhL25ldC9ldGh0b29sL2lvY3RsLmMKPj4+PiArKysgYi9uZXQvZXRodG9vbC9pb2N0bC5j
Cj4+Pj4gQEAgLTk4MCw2ICs5ODAsMTcgQEAgc3RhdGljIG5vaW5saW5lX2Zvcl9zdGFjayBpbnQg
ZXRodG9vbF9zZXRfcnhuZmMoc3RydWN0IG5ldF9kZXZpY2UgKmRldiwKPj4+PiAgICAgICBpZiAo
cmMpCj4+Pj4gICAgICAgICAgICAgICByZXR1cm4gcmM7Cj4+Pj4KPj4+PiArICAgIC8qIElmIGEg
c3ltbWV0cmljIGhhc2ggaXMgcmVxdWVzdGVkLCB0aGVuOgo+Pj4+ICsgICAgICogMSAtIG5vIG90
aGVyIGZpZWxkcyBiZXNpZGVzIElQIHNyYy9kc3QgYW5kL29yIEw0IHNyYy9kc3QKPj4+PiArICAg
ICAqIDIgLSBJZiBzcmMgaXMgc2V0LCBkc3QgbXVzdCBhbHNvIGJlIHNldAo+Pj4+ICsgICAgICov
Cj4+Pj4gKyAgICBpZiAoKGluZm8uZGF0YSAmIFJYSF9TWU1NRVRSSUNfWE9SKSAmJgo+Pj4+ICsg
ICAgICAgICgoaW5mby5kYXRhICYgfihSWEhfU1lNTUVUUklDX1hPUiB8IFJYSF9JUF9TUkMgfCBS
WEhfSVBfRFNUIHwKPj4+PiArICAgICAgICAgIFJYSF9MNF9CXzBfMSB8IFJYSF9MNF9CXzJfMykp
IHx8Cj4+Pj4gKyAgICAgICAgICghIShpbmZvLmRhdGEgJiBSWEhfSVBfU1JDKSBeICEhKGluZm8u
ZGF0YSAmIFJYSF9JUF9EU1QpKSB8fAo+Pj4+ICsgICAgICAgICAoISEoaW5mby5kYXRhICYgUlhI
X0w0X0JfMF8xKSBeICEhKGluZm8uZGF0YSAmIFJYSF9MNF9CXzJfMykpKSkKPj4+PiArICAgICAg
ICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4+Pj4gKwo+Pj4+ICAgICAgIHJjID0gZGV2LT5ldGh0b29s
X29wcy0+c2V0X3J4bmZjKGRldiwgJmluZm8pOwo+Pj4+ICAgICAgIGlmIChyYykKPj4+PiAgICAg
ICAgICAgICAgIHJldHVybiByYzsKPj4+Cj4+PiBZb3UgYXJlIHB1c2hpbmcgaW1wbGVtZW50YXRp
b24gZnJvbSB5b3VyIGRldmljZSBpbnRvIHRoZSBpbnRlcmZhY2UKPj4+IGRlc2lnbiBoZXJlLiBZ
b3Ugc2hvdWxkIHByb2JhYmx5IHB1c2ggdGhlc2UgcmVxdWlyZW1lbnRzIGRvd24gaW50byB0aGUK
Pj4+IGRyaXZlciByYXRoZXIgdGhhbiBtYWtpbmcgaXQgYSBwYXJ0IG9mIHRoZSBnZW5lcmljIGlt
cGxlbWVudGF0aW9uLgo+Pgo+PiBUaGlzIGlzIHRoZSBtb3N0IGJhc2ljIGNoZWNrIGFuZCBzaG91
bGQgYmUgYXBwbGllZCBpbiBhbnkgc3ltbWV0cmljIFJTUwo+PiBpbXBsZW1lbnRhdGlvbi4gTm90
aGluZyBzcGVjaWZpYyB0byB0aGUgWE9SIG1ldGhvZC4gSXQgY2FuIGFsc28gYmUKPj4gZXh0ZW5k
ZWQgdG8gaW5jbHVkZSBvdGhlciAiUlhIX1NZTU1FVFJJQ19YWFgiIGluIHRoZSBmdXR1cmUuCj4g
Cj4gWW91IGFyZSBwYXJ0aWFsbHkgY29ycmVjdC4gWW91ciBpdGVtIDIgaXMgYWNjdXJhdGUsIGhv
d2V2ZXIgeW91IGFyZQo+IGV4Y2x1ZGluZyBvdGhlciBmaWVsZHMgaW4geW91ciBpdGVtIDEuIEZp
ZWxkcyBzdWNoIGFzIEwyREEgd291bGRuJ3QgYmUKPiBzeW1tZXRyaWMsIGJ1dCBWTEFOIGFuZCBM
M19QUk9UTyB3b3VsZCBiZS4gVGhhdCBpcyB0aGUgaW1wbGVtZW50YXRpb24KPiBzcGVjaWZpYyBk
ZXRhaWwgSSB3YXMgcmVmZXJyaW5nIHRvLgoKaG1tLi4gbm90IHN1cmUgaG93IFZMQU4gdGFnIHdv
dWxkIGJlIHVzZWQgaW4gdGhpcyBjYXNlLiBCdXQgbW92aW5nIHRoaXMgCmludG8gaWNlX2V0aHRv
b2wgaXMgdHJpdmlhbC4gV2UgY2FuIHN0YXJ0IHRoZXJlIGFuZCB1bmlmeSB3aGVuL2lmIG90aGVy
IAp2ZW5kb3JzIHB1c2ggc2ltaWxhciBmdW5jdGlvbmFsaXRpZXMuCgpIb3cgZG9lcyB0aGF0IHNv
dW5kPwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBz
Oi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
