Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1352F50600A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Apr 2022 00:58:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2023141DE4;
	Mon, 18 Apr 2022 22:58:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iWlPw31IvzIy; Mon, 18 Apr 2022 22:58:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D67C541DE0;
	Mon, 18 Apr 2022 22:58:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 66DD21BF30A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Apr 2022 22:58:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5016841DE0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Apr 2022 22:58:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id msGaxiv6Nq7F for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Apr 2022 22:58:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1CD6441DC7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Apr 2022 22:58:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650322711; x=1681858711;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lLjP9xFynBaQA6nvqr69en5+amIUfIlR1GLcg9os33A=;
 b=fVh4M5Wk/Jw+p8oABNMIATQ9tC4s14goAuHZhHtJPhrAQW0QTC/CCzHT
 dWtiPdaleKJmvviYxVlnBf4m/SRH12Rr9ytL7+Hj9qfE9LPSO5u2oiXiJ
 H0ApQgpE2NNdeWkGaVsc6RfEwllUmXm90iLaxQhLP3Z9QazRR44ddwZwp
 CH1lvjhoC1Doz8jmgDD3sYcI0qhAR33r5+LOHQUJehrkCpZYq1vJCv1q4
 YBVlFiBfdWBtXSwRb/MukFqkBS4ykmC0gsqYiu55G0exER9+DfwUkS53m
 tTdFBcKhxtx1OQPI5NWNbg511pu7sRFegSnwEDos3QL9OCKogJnXEecsc Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10321"; a="288721938"
X-IronPort-AV: E=Sophos;i="5.90,271,1643702400"; d="scan'208";a="288721938"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 15:58:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,271,1643702400"; d="scan'208";a="647033685"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 18 Apr 2022 15:58:29 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 18 Apr 2022 15:58:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 18 Apr 2022 15:58:29 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 18 Apr 2022 15:58:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PkQqiXbPSZgxVnHN4r1MblAtitesm3uS2rxwgFplvLoT6cU0QC7/U7ivzRBRTVi5Yg2VHDk2rwTa4ycgpi8nQiRZUUJscL1LZ+3oA0vsgd4YPcYKTUoil8KS2EcfiUkm9mMou0eBsqNtjHrYEBRrxzUNUWPsnWM7XeAeJHWiGg74C6HcfxLhkiwEIwQH62YBoswSmAXo74jXfb3DKyLtTEt4cAFEa9CfN87xL4ACeA5iUn3h2hIpTPb75ETjnRlZZ0Gw7HlsUk/5g87IpW7BD3zvMs3W1sMU9yYH4DN6AHWMe3hFcOrGteEAl2AbAnd5NjBDTEHAUulwcqjYt/F6Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lRif4nvePqjBynXc0px6CuEXuj/Vb2I3tkUGFOS0KB0=;
 b=GkEAJOuumGZAnYGAui7uVKdyDfzvSaV0fY7OtOE4kFKkV1NDp0uThvvu93vWnAm65pjQVfzhpOfVIPP0D+Jm1L1ovBVEGDCLds5cQESwhQf+D/TX2MVjnNs+8xMlT3frZsmQWtItBC4tmTWd+BUKC5XIIMu/qKOsi+fDrhjtwDVQVCBQUaOTMfh7yaWBzToZEm+7jLHPu4OuMHgQ9kE+c+2y0cLZHVuFUzPtv7VMQmecwDma7AUqQ6aH2f888OQ/7cn3hWAzOcmoOkuPtBWOVajisEdFxIyiPnK0Glx7h/3RLMxjNz7U7Rg+ma4fyBVh21pPtfuLbodce/cNzVxWlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SN6PR11MB3376.namprd11.prod.outlook.com (2603:10b6:805:c7::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.20; Mon, 18 Apr
 2022 22:58:27 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::815d:8ff7:538c:b10e]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::815d:8ff7:538c:b10e%9]) with mapi id 15.20.5164.025; Mon, 18 Apr 2022
 22:58:27 +0000
Message-ID: <4ebe06d5-814b-4277-1d5f-8916376a8fff@intel.com>
Date: Mon, 18 Apr 2022 15:58:23 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20220411232907.1022602-1-jacob.e.keller@intel.com>
 <20220411232907.1022602-3-jacob.e.keller@intel.com>
 <e079ab74-48fc-65d1-4d3f-2c0cdd4ffcb9@molgen.mpg.de>
 <987480f6-9fc1-bd67-8803-9b88645b514c@intel.com>
 <d9142a13-1b0f-6a01-c69d-727f4c76cb04@molgen.mpg.de>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <d9142a13-1b0f-6a01-c69d-727f4c76cb04@molgen.mpg.de>
X-ClientProxiedBy: BYAPR01CA0062.prod.exchangelabs.com (2603:10b6:a03:94::39)
 To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3d13d210-a8d4-426b-cc55-08da218ef271
X-MS-TrafficTypeDiagnostic: SN6PR11MB3376:EE_
X-Microsoft-Antispam-PRVS: <SN6PR11MB337696A40D1D2C037D76B7F3D6F39@SN6PR11MB3376.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tkO1LUBhj5JD70ZCSNV9OxQ9CtKT1gtyVERcd+npZKN9bPo4AOFmTiGajk5S0ANX5jAAvFtNt7NPoA3gh6PeDvHmmReQ6oaw//Nlaka/Kw0m3taAK9zvekdvrc5WygtTASTGoQ7mm9M3GrzjelRfw6535grPe7QZGqOWBmsNuysuorvUw5fZFANwYi5lOnc3gsSUOB3SK8W+llhNnE5GKkvCmz1BTanNcu1jwQh7KPwhsthXvq6MCDwyRAhHK3qDfZstMSqdDgw0aPQGZls5PuBVAvWkS66b24ZNB8Cb/oGjpyjhL4ov5fDpwW5QXtrcXn8enRNFQOxHdiDkROx3hM74r4Zu6xIaqvBJcmbuBnVckN0QzdnnRchxbHEzXulNDikEV1M5d0j/OUZq0+m6yqiSmdQOmLpY5yO1WfPnVFHwcQu0GEx6IcSim2iwf8Qm7Tev+KGd4q5LsHHeoXrWWY6a6oPInIx/QEf2Fp1TqH+5tIAQPmtUjWYGbyEAZ9ih4061Z7bQY6UrXH6evzReu2bquKF3l2RUnGfO8IFmWRsDhN/u2XO9/LM7YTYZKzu2VW+NUEigU3+sitdMiNL1fHZpE2egqMPGBRtiqlH//XLZNgcUvx2sOif37rH/2cO8leRWs0bootzHUJVudde/ROSe842V+/0CC4h4akKXRvIUk/nXUvqAkT0PFyx3Wk8YWfc+/KUpMyxY98kiXP/3kCxQpwUKdJDVZdkzeQajJqtJQeWH9VOMVbXAvXn/kzzIx4YY/B5+rbHxFKmSlK/wRvj1i/a3O81Es3ZUQznSEto=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66556008)(66476007)(66946007)(8936002)(36756003)(6916009)(8676002)(82960400001)(5660300002)(316002)(38100700002)(6486002)(186003)(2616005)(53546011)(86362001)(31686004)(4326008)(2906002)(31696002)(508600001)(26005)(83380400001)(6666004)(6512007)(6506007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZEdXbWVyQ2R5OEZaeCt2R3g4bGJSbTJBd0dHc2FkeUJTT05SMUgzNVRPZFNW?=
 =?utf-8?B?MHNDTERjQXJheDFnTmFEeUZmK1Q1WjRJNS9PR1AxZDk4YjRGREkvTEhJUmFw?=
 =?utf-8?B?WHBYeEduVDAxZnc0TTB6YnJ6cURaVVRtZFNIUVVQN0RHNTlXb0JCQkxHTjFF?=
 =?utf-8?B?K0VWd24rN2Q3SE1adE1uaS8wNG5BdVM2eXFwdjRPZHlxQ2R5N0xDS0t3Q2xR?=
 =?utf-8?B?R1NGajc5U0NjMnBDV0NHQ1BPeUZFODNWZm5SWmZnTGFkbDRqZDEybGlDREdK?=
 =?utf-8?B?a01zTVJGMG9qM1ZpTEkwLytaRU1ndWNXWk1zNkppeFR4WHpMV2dJYVZzN0hO?=
 =?utf-8?B?OGRxOTlueG1iN3dQU0QxNTc4YVZQWWM0MTc1ajBMWUJxNTFqU1k4MDU3NUhr?=
 =?utf-8?B?b1pkTXBJOUx2dDdLUlR3bHErY1pWS1pzc2hwTHV4T3YzczVJcUZqdFN6NlFR?=
 =?utf-8?B?SGhTc0I5NHpIc0pFU3JhTU5ZT2wycTg2MXVvbkg2R05XTWI3bEFrdG1WdkI1?=
 =?utf-8?B?RmNLOThJYXZ1MHVGRTdzMlNTKzdUM0dsM2pxL1V6bTF2UXVCRm9OSjAvaTR3?=
 =?utf-8?B?WEdLU01RRGdGVjRaNEk5QU1GMmRFSVdxK211UStLZmMyYVNjcW1LYVNqRy9o?=
 =?utf-8?B?bUpvdTd0Q1hLdW1JTDluRVV3bWYxODJGZlc2eUR4UGI1a3o2dDJYam0yS1hM?=
 =?utf-8?B?SkdkdnJPWUh3TCt2NkNjbFMxdEk0R2wxWXFYaE56cDIzUG0yUlVVb1ZRMlhC?=
 =?utf-8?B?dXQ5VTJiR2lhckp1VEc5QUIwdFpuSUU0QlQvMDJtOHRzV3FFN2FrRHZPVFhX?=
 =?utf-8?B?UDZkdmgyNHhKNVc0cldVUDlFc2RqWVRKbCtpWVphVXczWm9STm5NMml5b29F?=
 =?utf-8?B?eGZUVTBiOWZFREdDUy9SOVJDYjNtbFpnMVVCRzZncHNBZEdSKzR3TWF5Yzll?=
 =?utf-8?B?VWhvNWU5aTlDM2xVSTNMK1FhSXlCL3huenpSUCtlVThqWTRZcDdQclYvZmQ1?=
 =?utf-8?B?VWt3cytIYVB3YlJYSzZibUpqSThzUmRuSHMzdkkxQjJ5MFJ3d0RWTUdzMGQ3?=
 =?utf-8?B?UVFDZEJwREJuWTVON1hraUdCRTFOeWJ2dmtIbTJ6UEFGbHNkNURjWHZkVTlU?=
 =?utf-8?B?UVQ3ODFHQzBrbUhpbG12c25mWnZQUFowNEZsM0c1MjYwRnZvbEF2aHZFUG1Z?=
 =?utf-8?B?NFBPNjdsSmcvQ0FYWE5McmJWWmp0OVlBQzFpMTVaUGo5dkVZaEZ3YmJ6NWVB?=
 =?utf-8?B?RHZaZnJEZjdzQVZ4TzVEbk9peXpDdTlTbTh4SEszK2JPNm9yVDEzNzExcUEx?=
 =?utf-8?B?WVNYVVNWY3JVbFRpVGdIb2NsYzVyQ0dDSVlyaG5MWS9FdGQyV21TRFVoSWxn?=
 =?utf-8?B?QTMyR1Q0dENjSnZCS0NaUjk5SjVUa3c2VXAvM05RN0s4TFBOakZNYS9sYWVD?=
 =?utf-8?B?WUlWWjYzQWtEMkR3ZzdPeDdQMG5oV3l0akhsSnpxcEZhZ3JXRmFSZm9ad014?=
 =?utf-8?B?cDZHK0hBUmdjQ0RvanR4SVlDbGwyYzliQkZJOGM3bVdvODRwTk9PSmllMEo4?=
 =?utf-8?B?U3A1QlpTRkJ3dFVKTWI5dE43M3lFT1FhbCt3TGhxbkFqK3d4ZjFSWU1jb1k0?=
 =?utf-8?B?alNpNGZJMzFyMTIvU3ZoMS9yeko0ZlM3cm13RVJ1bi95dXJoRlk1OWFnemhw?=
 =?utf-8?B?dE42dlV5cy9Lc0VpeW1oa202UkswS2Y4ZE04aWdqeGNQNkZTS0k5cElDM2Vn?=
 =?utf-8?B?VCt6Um5VSmRDS01KcnpQU0R1QnZnK3YwOEU5dEhxdW9pUkVKby96OURSTWRm?=
 =?utf-8?B?U0VWclNySXh3QTJDL2JYaGE0eGJmdGY3SWpWZmFWL0FBTE56VlFvanZCb2RM?=
 =?utf-8?B?NG82Rmd4UVRFVi8rK1lMTDFqOUFYTitrR0tpWEhkQ2QvTWEyaW5ES0c1ZURm?=
 =?utf-8?B?aDFobVRXcHFJNS9MR1RxdWhTTkFwVkMvV3VXZ1dxSE5rVWozZUE0TXRWVXhu?=
 =?utf-8?B?UVJ5anlRUFZFOHpjK3J3WnEzVGN6N1VCUGxLOExiU1oxOGVsb2JUTFVianBM?=
 =?utf-8?B?Zk15Ymd3OW9pbWN6bHBCOHBhWHZhTmp5aTVENTh3L0Y4S1M5Tk1rNnNSbGtn?=
 =?utf-8?B?ZUN4UnFiZjY4WTVZdFJLYjNNbUpjbnV6azJQdlVOZkxFc1kwbldPR3BiS2dl?=
 =?utf-8?B?WWd4RkY2V2xja0lqYjFyVCtHLzZrRVNZMXhwamh4SUZ5OEVHbHNlREFMNlZQ?=
 =?utf-8?B?MDdiNmtRaUhYaTZwQlJYeHA2V2tWN2lHeWVsODhVVk9Tb2hHeC9vR0ZiT2Mz?=
 =?utf-8?B?d0NoZHRHL0E4V2pGYy9VRnVnVFVUcWlhVmlxd2pXUnp2aGRndkVRM0VoWFdB?=
 =?utf-8?Q?aZtgNFmZwbl49qCk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d13d210-a8d4-426b-cc55-08da218ef271
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2022 22:58:27.2348 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f1LU2EYIEDE5FaPPSHLMDPUHQG/Py6D0YsucJYLBuBCETXwCGcoxpgJEEGM7wDwRZ/zjHSkG83a2ff5mUOye4CQdQNH5HHbp6HW00OeK2lc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3376
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/6] ice: always check VF VSI
 pointer values
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/12/2022 10:50 AM, Paul Menzel wrote:
> Dear Jacob,
> 
> 
> Am 12.04.22 um 19:35 schrieb Jacob Keller:
> 
>> On 4/11/2022 10:38 PM, Paul Menzel wrote:
> 
>>> Am 12.04.22 um 01:29 schrieb Jacob Keller:
>>>> The ice_get_vf_vsi function can return NULL in some cases, such as if
>>>> handling messages during a reset where the VSI is being removed and
>>>> recreated.
>>>>
>>>> Several places throughout the driver do not bother to check whether this
>>>> VSI pointer is valid. Static analysis tools maybe report issues because
>>>> they detect paths where a potentially NULL pointer could be
>>>> dereferenced.
>>>
>>> (side note: scripts/checkpatch.pl checks for 75 characters per line, and
>>> you seem to use 72 characters per line.)
>>
>> For commit message wrapping? I use some default from a vim plugin which
>> I guess decided that 72 was a good choice. Technically thats 8
>> characters less than 80 which is one full tabstop if you render tabs as
>> 8 spaces, which is sometimes used as a method of indenting commits from
>> git tools..
> 
> Yes, but the git tools indent with four spaces. See commit 2a076f40d8c9 
> (checkpatch, SubmittingPatches: suggest line wrapping commit messages at 
> 75 columns) [1]:
> 

I fixed my local editor config to use 75 characters going forward. I
also requested Tony fix the commits as he applied them to his tree, so
this should be corrected with what is applied to his next-queue now.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
