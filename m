Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6F05F5AA8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Oct 2022 21:37:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 36C5F417BE;
	Wed,  5 Oct 2022 19:37:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36C5F417BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664998655;
	bh=63MLb9Vx+k97CmbjkzH+QGn8nh6GABVf16QHFGC2wbo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qBSu2F0w6RsBuez/IIWDIfaXlrnd+xYCYAspTEKHstz/2pPnWw+A7dxaFEHqQonHA
	 69FhC/t0gSOGoYao4o5Ul4QrvPZglHNn4HnMAjrMOQUp45SSqNHO6mqaYCd41zJRty
	 stvWEAM7a5C5/mTrpmr8RHjH1dM0d8g5ITMzxAyw3oanmU5b+7g2U3rz9CTaFwghEK
	 B/zSXQV48o5l12mnRnO/QfK5qZAznDSSJz7wmQtcbHkwQ2VFCH26JduyGzCaOi+S/y
	 nxHZq7DtqD1bij2bmz34d6bJx+tFwUGPOlvE+M7yF7se6IeISEKSXgcOKwsVTaBcak
	 GQOVHY+IWTr0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JHpU9P79uyyn; Wed,  5 Oct 2022 19:37:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AAA5D4177B;
	Wed,  5 Oct 2022 19:37:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AAA5D4177B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9A1C61BF426
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 19:37:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 804C1827C6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 19:37:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 804C1827C6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AY9IGJfkbBXk for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Oct 2022 19:37:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 614A6826FF
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 614A6826FF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 19:37:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="290512181"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="290512181"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 12:37:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="766857394"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="766857394"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 05 Oct 2022 12:37:25 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 5 Oct 2022 12:37:25 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 5 Oct 2022 12:37:25 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 5 Oct 2022 12:37:24 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 5 Oct 2022 12:37:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cSGrE/+EpLc7AZqTTY2VfYCDjekCC5vsPD6NJtaWPnwh+G5Tyqof1x5rlBzZZNjcPsJ5MHMA5GnlLM1u4E08svhGMs9IwibmyMjVCsf8lgVOdkAMivAkSZ3/OZClfflIM+bNc0PvP0/XG1A4vIp94PnHQe1bpbdUKh74Aa1cEmyuj+Yqalg44MXSHQGXmEJHF1XRliWDq0Eo1QPnCC+ueROrVk9CEPIPQ0rAjmCiFl8cnfvQztjKv1nX+9+w69os1vU9oUbmzl0b6jgBxQnSgBPSt2oyNoJhdv1k4XLHs9fqRFI8nMQQoRT0pSGju73wraEURtkSQiotuY32tZbfnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yqJo7QhbWGra0YYmB45RBy0bwOJPKqVcDBIBZVbnVF8=;
 b=SBbw3yCIqjKtMypTZHdhQQQdzly/sJz8GWSFOONPw8DYZM7nTjWkkWvqTd3MyR0U63Q8a+Nohp8W+7E5wzDpkSEivxDAKBfHtuZzgWpaYx/3wu2g+ujXQvVMIeloVfcIUoVINDgDwjZFZUb6ZBY8qkMifljDVoJf1ir9QZh2+cgq4WNpQQC0xi7EVbta2nBxpitc9/tAFBHR6zUvDK1e0JkSdJMsRlEc7ylG63nW/LCFwTlUB+s7Mf6XwYrbQhnuQnabB/YWmdf5wPa0nxzgFqtppXMwQa675d8qLRUYU3n+vb6WvMthiCCmR5qu65d4KA4T/lBko1KtzOKHKkB9mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by BL1PR11MB5429.namprd11.prod.outlook.com (2603:10b6:208:30b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.24; Wed, 5 Oct
 2022 19:37:22 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::a3c0:b3ec:db67:58d1]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::a3c0:b3ec:db67:58d1%7]) with mapi id 15.20.5676.032; Wed, 5 Oct 2022
 19:37:21 +0000
Message-ID: <94e40ec4-fed8-5d91-54a0-b96bb21c6b9e@intel.com>
Date: Wed, 5 Oct 2022 12:37:19 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: Joe Damato <jdamato@fastly.com>
References: <1664958703-4224-1-git-send-email-jdamato@fastly.com>
 <1664958703-4224-2-git-send-email-jdamato@fastly.com>
 <Yz1chBm4F8vJPkl2@boxer> <20221005170019.GA6629@fastly.com>
 <aab58471-096d-db50-36f2-493a14e0e6da@intel.com>
 <20221005184021.GA15277@fastly.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20221005184021.GA15277@fastly.com>
X-ClientProxiedBy: BY5PR13CA0013.namprd13.prod.outlook.com
 (2603:10b6:a03:180::26) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|BL1PR11MB5429:EE_
X-MS-Office365-Filtering-Correlation-Id: f0a7af6c-23d9-4db5-5e03-08daa7090573
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 211PT3EHXFt8OaYZazhD53WVswRPg26oRZZzD2aus270S+yJDK5+gFEShRLVhwA3eVZlJop18l54lSX+hf+fCyEdz2pUEsAF5M8XhQ7BzXVgj8lJUB+icGkSzX1KAHiXcM/Z74uuwr3f+dzZJMF3TZQthX/l9MhnYSentGCnF1cbrprehHlWIzcpdYg9xFoYMCESkN4F+HIVnSHFw+tDqEvuYLyeTLQDYokK1wl/nSJrvYX00wqJhLkdVrEZ9oUnd9wQ5jetH7WZFibDOn5dwZFdGOmPWfCkqAD+VqHm5QQIDq9PVRBsf1iBXAwwKj6I37ZK9tRSwuONiXuRtdCXo/BQ+mF1HWiZCgzQLeUT/htMyUE0GJmEsHLETFMejoQVHmyGvCxuGsUiRWMuAot7h6Mu/unHJ1YxFZOEJEh5qjrrSSfiGn3VVAjyNsPrx13CX/AoWfNZOS8OZ3hklvQaSZsaUPkpsqxq1+bOKGOk0kyUugtWBNx6TCufncO3ZzcJp4PVRtU9iRmcQzktTSg+cP+T7RXszHAoV2S8WyB87TK7Np6aYgyn/Y2tOrI1QWtbSzYQFJjhbUZSbBSFSZKLtuecAd55He165EQ8XVUpxWJDDe+k+l5blG3LT5yhFSZ1siWO6kYlZ6m0EhrFoK9jtZhrdDYHuk1QPl3vcEn6MV+PH3yXu0tJRx18Hmg9flVT91Hht3jai50/pmhhjQNqU3XQ88ZGay/2On9oY7Obh2NJDB6NqP3T6McaxfjWlz6diNY2Y65kNGhdFcJr0l78fDv4mkWPR/nRhHqPC455oq8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(346002)(39860400002)(396003)(136003)(451199015)(53546011)(2906002)(6512007)(6506007)(41300700001)(26005)(36756003)(5660300002)(4744005)(478600001)(6486002)(38100700002)(82960400001)(107886003)(31696002)(8936002)(86362001)(44832011)(186003)(2616005)(316002)(31686004)(66556008)(66476007)(6916009)(66946007)(8676002)(4326008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cGtrTTFkaGFxaFVSQlJnTDB4dnRFalVzV2wzT3VXeDU0d2prTXBvR253bkR2?=
 =?utf-8?B?MGdkeVRjMDlOdk5KQ1ZpNHBqY25CbjFpNFd5eXRSL1dCckpnRmQwcDAxMitX?=
 =?utf-8?B?cmJRbHNSVnlJRXB2VXZIZlZRMXRjcTJTenhKa3BQVE52dzFhYTR1Ukc1c3l4?=
 =?utf-8?B?dFpTbXhiNUJYbXFuSHVqUlZnekUyUW5pSE0za1lmWGV6STd6dU1uTXV5OE9J?=
 =?utf-8?B?dmFBdXBhK1VOWUxkWnpldjY2RGo1ZTN0b3RZcUcwc3FBK0E3N1JyR2xibkRj?=
 =?utf-8?B?dXc4ZXZZelRUM2gzeFhhRkREd2NCWmR2ZWwxWitPK3ZuU1hScDNDa2QwNFp5?=
 =?utf-8?B?cGNYKzU3SjBtZ1BFMmo3dmRFeFpZUm1RQUJ3OE5KY1VCV1oybG12OElWTWlp?=
 =?utf-8?B?bStCdzdqT3UrSFpFeG5vZGNRYm5HMG1EcTQ0aUh1aTV3K3pNQWdqMmtIaTJY?=
 =?utf-8?B?NzE0M1FVbUI5bkxGbFNOazUvWmdsYVJyRlNCT0JoVVJLUDluQTV4bVZ1WFk5?=
 =?utf-8?B?NmVqbTZMQXUxK1gwbGRJMzI2MXVaN21ucHN0T0MxcGVQQzYwTmhTRW4vOUZU?=
 =?utf-8?B?K3NsOHpSbmZvTFNCdFFITXJxekRjdUZha09QS3o5Wldka2ZCRGtuMkx1RVR4?=
 =?utf-8?B?dzdhaHIvR2hoRzRndHBPd2FkakpNWXdTcFgxYk9wNWc4d0Q1ZVkrNHhDdEtj?=
 =?utf-8?B?Smp1T2hpdzVlYUdZenhJNjR6bm5aNWVDdlluamh2NFFEQU92eFVabHdYRjBh?=
 =?utf-8?B?OFhETDVBU1ltMnByd1dOV0sza25OVXdXOVhZTStIbkk4SlB0TUpML3M4THdH?=
 =?utf-8?B?MnM3U0I1L05tWEZRTzFka3ZFOHVvaHJOcGpWakNTSWpYMUNlYTRha2dqV2tB?=
 =?utf-8?B?eGsva1p5U21wanRWVWlIVmNJSUxKNFhIVXYxcWk1dnBiVHZ5bFF4RVFyYXJv?=
 =?utf-8?B?TDJQL1Z5Q3U4TXdFRkNVYS9RWjNyOGtWNHBEUFYxbVM4RVpMdlVHemNib2hL?=
 =?utf-8?B?elMvajVuWC9rdHhLWDlPenpEVnYzbWJkNmlaUFNTTlFBTUJmTnpIN2lERDdU?=
 =?utf-8?B?ZERqZ2U2RVJZdXE1NkRDRmdkVWRST1duOUtlTG5SL3F3NmFQTmZDUTJhcTVO?=
 =?utf-8?B?ekJiRkNadjBuK2NRcXVKRlZiaE1qQk5pU3VnQjE2NmhJT21iVG84MVU1S0l4?=
 =?utf-8?B?Vk1FaFV2M0NYc3NVd3hiRHpTcC80VWtzbXBmVmcyTDVVb1pWcWE4bzJ0VlJt?=
 =?utf-8?B?ODFuSndIbWNmWU42aHFYUnhOQWRrUFgvN3Z0cDRIRldhZWNDV2tDaDMvWmVG?=
 =?utf-8?B?WkVJbFR2RlVDNllJY2tGTXlWRVQrdXUrRnlUWDFjdnYyb0paUDUzMFpnQW9i?=
 =?utf-8?B?aGlEQ3l0OWlCbEdUQUdIemR6ZXZqM1lpOVlraWUwWnF1ekl6M2NFTWpBMDZE?=
 =?utf-8?B?Q040QWJXNGJiUEtjRUExQi9YdE1MR0RZeE1uenJ1RVcySFdEaUl4cDkwSlVo?=
 =?utf-8?B?UUMveUQySlFhNEMrSmtRVElEN3V2bUJKMjdiUjVKV2NOeE5ra2ZjWm9zSUtQ?=
 =?utf-8?B?RE1iWFkvOERwS3IvRFFXbU9YV1h6aEtWYWpDckd0TkJMQVF0dXo2cDM4L251?=
 =?utf-8?B?dmp2YnpneEEzWEk1SGM0MHRxbXlOSng2RFFHam52QTZ3UHNmNUxmRHMwdmFv?=
 =?utf-8?B?R05sendQNVNRYUYvcFU5QnJ1Wit4clBYaGZ4UytBM3NTclRXUytDOEdyanZj?=
 =?utf-8?B?aUNtZEFFMFpCT21wcW11dGYyaXdwUUlQcGlHOVJjc0g1Um9XVUVpenVJNU54?=
 =?utf-8?B?c2Evdkd1SS9ZdVFVRENqcFBhWHdheUhlYTB2TVJjcitGaWNzdlp4UWhFMzY4?=
 =?utf-8?B?RW9PVk5jUkUvT1QvVHNnWE84UEVqcE1YRnRDZ3E4WDBrRlU5NVJBSTBhNUh5?=
 =?utf-8?B?RTBnTUI3OXVYUmhoWmVVWmZ5TStQdHN3N0JLM2dyanVVOUplM0FLR1RoTW5j?=
 =?utf-8?B?aTVwM1dzU1V0K2lUV29tNGpRZ21LTDZoRUJuSU5FV1l6VjdxTExjeVB5YUtm?=
 =?utf-8?B?OE1uVHFZUXR4dzZhRUZjakhRQ21CQkVScGF2bGY0MGpHcndUd0tna1pTdWZv?=
 =?utf-8?B?T25zUzlOODZoMDN5citEOVJnV3RXTlRDQ3dpNnRLbDlrMC9LbCtCejNLS0xM?=
 =?utf-8?B?eVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f0a7af6c-23d9-4db5-5e03-08daa7090573
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Oct 2022 19:37:21.6055 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4Bj+txoV0ne2G1W9FuADUXaFse7i7+95pphafR5J+8HXSsTb6ef9zKZ/Bs8U2DeLmneuS3EpMU7PiN7BHDDuoC35HXP9hYteJQE5BnWiff0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5429
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664998647; x=1696534647;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/EHJPWxuwTg+HhedvH/NuBNo1D+9qI1ZRjFSAwp4uJ4=;
 b=mhBT5h0Ibm5d/Zpq4rTtYyaj2u3lgjaNvUWNNVYs7KeupozhYTxl5Ac9
 lyhuh2yZQf4ScfHESQQ8aMM1tEKsJFdG/pylyWGnwcxvNP63hX8VhCBPM
 7DLQ6TPaKLcZISaWnQrFnfR9/nfQMkWwVJreyQgIuLaYeaIRPv/9CZJ7p
 nsgqqcpGP807stIyJ6GB+O4US4VXzclBPhWSPfHeJKVqAMn+fyz067wUd
 w4lvAsUx8cZwp8JXb+J/kD5ikAECb0lvyydC4AUTkaElDRrpTzjzm9ZRJ
 T8IiQzOXBkMmNes7HZAN8utXfWKsytqCY48rkL/pQ8Mer4V6GZrq0Iwix
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mhBT5h0I
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [next-queue 1/3] i40e: Store the irq number
 in i40e_q_vector
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/5/2022 11:40 AM, Joe Damato wrote:

>> If you're really wanting to reorganize these structs I'd prefer a bit more
>> diligent effort to prove no inadvertent side effects (like maybe by turning
>> up the interrupt rate and looking at perf data while receiving 512 byte
>> packets. The rate should remain the same (or better) and the number of cache
>> misses on these structs should remain roughly the same. Maybe a seperate
>> patch series?
> 
> I honestly did think that reorganizing the struct was probably out of scope
> of this change, so if you agree so I'll drop this change from the v2 and
> keep the original which adds irq_num to the end of the struct.

I agree, especially in these routines, doing simple, 
explainable/observable changes is best.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
