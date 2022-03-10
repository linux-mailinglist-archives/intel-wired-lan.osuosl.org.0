Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 546364D3E9E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Mar 2022 02:15:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E6EE81489;
	Thu, 10 Mar 2022 01:15:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7rjMT1AJPLpZ; Thu, 10 Mar 2022 01:15:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 49A5181466;
	Thu, 10 Mar 2022 01:15:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9BEE31BF476
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 01:15:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8A5A2416CD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 01:15:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1cGD97Dg27vi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Mar 2022 01:15:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 931A6416CC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 01:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646874917; x=1678410917;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=249yN5IGFeyBzzCWSx8xN795qHBfRKiG3Tyi7E57EH0=;
 b=DhMB04q0kEFlzx57u5pug31kXLlWZDaYXJT76rQlkI+6eSXyePEalG7r
 CY7VTIZRj2ZOos0tYux75nj0Rsuo5WkJBJKc2F2zkUR8HFGxpJrd/2Zb6
 tc4Pyq/cDbVUgO+NjR6yt9fzv1mTozFcCt6S3W8K59f8h25aIpaa5aYGG
 B45ZAESXUhc2Ie+yjqGmFeywE5UEKbPkmEGk7byxWhgPwFdv34RA4WgRR
 Oay7YXMAQmBovcPoSVqgUF9uEsjHGvVouW3/JyA4fngtusFeFXFdOTyKv
 o+rGrfhS7XtkB55eAxAuuTExbtjWBFGtAtTgVtkMztaKtFAstm70GH2df A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="237299079"
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="237299079"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 17:15:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="712168764"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga005.jf.intel.com with ESMTP; 09 Mar 2022 17:15:16 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 9 Mar 2022 17:15:14 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 9 Mar 2022 17:15:14 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 9 Mar 2022 17:15:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BWYfmAWZ1S1znlYLeCVQXKK3+mSfqvkoKEXbJkQ2keBPFVQl0TP6FKgJfi/eRYzJlH7BBNDH6WGzZGyjhCsuOsWczY3V0Uo5j1L1AsEW+wy1ho2hLB6EFDLJK9TaMaHqtcajZIRIZ3KJV5MLXHdKOC51DDitEVZeZr3fobVVm2zYohOyHyf47pT1jBLEkOFU8vYJaCMcpJYi/ZSrz72562Eo2anISD/QdAMMmgTQ7y2l2Aar+pS957UIqePemeYCq8cfN8fO2yPtuq4vien9a4z8XtmIfuO5uOqWAjUWWCSzz/cfesRjQoGpdNziaNqQKuKvPEsVeHEbfaSZV58O3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ik3dwu0LE/7E500hrMWT8fxNmlhi0fNtIRwGkRffMX0=;
 b=RQzEZbnSZKSwxDqRd+AQPESr3oQ6iiMtXOYdUSAkxuUoZ1cZ1tySI1XTBw7iGWDD6ySocLh5txmTPoNPU3VaQlC59DokNaU+GWh81Hs4nbWd6UOqTfTOh0a9nxq3E+VP4K02dsFZNRzNdUU0DVssOKKT6KI6XVLkq/TvQR1iEiv9GjTLDEDVXK2/1iCFzoXh64dBDRTcTXGxPSlhibfs6MKulSzEsdWex/PODNs/7V5SblhtWApvYLhelwGPptKgX1W2meHL2Jb/LcEOXkP4en6udzfyIc2Q3w6tx5ZFz6XIuJjz4ffkxfMXM4uHuiSmdvbfvw0TtG2QwGYbQ9YP2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by DM5PR1101MB2249.namprd11.prod.outlook.com (2603:10b6:4:5a::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.19; Thu, 10 Mar
 2022 01:15:13 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::2d6d:f382:c5a3:282b]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::2d6d:f382:c5a3:282b%6]) with mapi id 15.20.5038.029; Thu, 10 Mar 2022
 01:15:13 +0000
Message-ID: <01e6f072-cf43-c269-5ac9-1b373808cc22@intel.com>
Date: Wed, 9 Mar 2022 17:15:10 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
To: Joe Damato <jdamato@fastly.com>, <anthony.l.nguyen@intel.com>,
 <arkadiusz.kubalewski@intel.com>, <kuba@kernel.org>,
 <intel-wired-lan@lists.osuosl.org>
References: <1646874532-90649-1-git-send-email-jdamato@fastly.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <1646874532-90649-1-git-send-email-jdamato@fastly.com>
X-ClientProxiedBy: CO2PR18CA0047.namprd18.prod.outlook.com
 (2603:10b6:104:2::15) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d7430298-4399-4307-b469-08da02336d50
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2249:EE_
X-Microsoft-Antispam-PRVS: <DM5PR1101MB22497E38FAF5CFCB2A5BDAC5970B9@DM5PR1101MB2249.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Yo4BNcat0Sj6H51mBy0ZQMoVZI6PWA/EJ1+oJ6hPvGSZORP4P34F3Arxgu+Yrr/H0M4gPuExUTUGxY0rc86Nr+mdX1s4JpDjWPTar/3pmMrk+GTWCA307lQIllM7ijRzY6iuZB5ZNlJFG2xAt+0D/flTQoIshN+/wIpc685TyBqtEitAiu6z6TuOu5pTPb7ufZ7Ouu5yX98h7FVsip1Ezj4XfP2TlHoRuxpAf+XJKxweOYIM+OjqNFBu6A3OXBfEZIDlDWTgjrwqQTXV4g9fX0/pP0bMg6PjZCpd2s1ILkZYiyvjRW1tWkOjvEpiy4cqLJ5zDLWC2ZTyASYdDwR8eagJ1xxbyU1NR4HAUay9DrR1vAa/VaDuVMwfGmDBpMaJ9bQwpiykL4QDhr6K7VnMIGZnEQNz+SLjxK5lkH+zVvp2P2ymJvlqK8SZorRlHEVUOdSzh5Fpv69owvMLrg5MERUZSxOD3qsuLjbIhQQVjYK2dWyPI+lCLGJt06XcofuCzSUuFi5VD/j9u+lrz3GPSeZnmBHPx4P34POGztn1FNFiSzyIgWKOfiTFrNBTogHgY1f+2Ok90ztLnTfh78nVZCVQIzgluzUkV2F2M7YaUnqTrnTxMgJqMKSM3UrdQp2keMP6R9f47qHzcpdRIfTfBWOoOiC6rsAM6TV+ArnIF6aZQ93tNNkbRb1N4ZF4/cl4kOlAOxchBfZWOku1Mxx9Eey/q/EDZ+4mqoRGTKsm3lYvm/U4ihoKXz6XYVSwTjhF
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(31686004)(66556008)(2906002)(36756003)(8936002)(82960400001)(316002)(31696002)(6512007)(186003)(2616005)(4744005)(44832011)(86362001)(26005)(66946007)(66476007)(8676002)(53546011)(6506007)(508600001)(38100700002)(5660300002)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SGRQaUxTQUM3ZmtVMDJCV1FGalJCQ0hIaHN2OVpZZCtVWkY4OGYzSUFkRVI3?=
 =?utf-8?B?YllXUVhyc1BPMkd0RU1EekJoS1lCSFN5ZW5jcnFBNHNFZXB0ZnVXNWYxalFF?=
 =?utf-8?B?b1dVcWZKVElMVHhBSCtCTlNTVUQ2TmVNUEhFSkNTRm9sdXNRc0dCZzJqc1VZ?=
 =?utf-8?B?K3c5eE5jRHlTT0V6MXFYUkZrYUV6RW9UQ2xqc1hFell2UmU1aW9FR0hzY0xz?=
 =?utf-8?B?NUlGZVEvY0xJamxiQlREaDYyY01HT1NoREJsakNRQ2swVjlaNW96WjJ5SXRs?=
 =?utf-8?B?WjdzdUFIYXhEVE1Cb0dmQnJGU2o0VjZHanhydzJhV3NLTG1GUzdPM09Vb3Bx?=
 =?utf-8?B?MVZ0dU1PVXlvS3JtZ3VXaXJPbVBDaDhjb1hYWGdVRWE2QXVTVmZmQkVHOUNr?=
 =?utf-8?B?bENjazRubGNoTTRZcnlrcGZXYmVtUzk3TGMyd2haMkNYMS9wT3dKWlVYNmhl?=
 =?utf-8?B?NXpuQ1l5ZTU1VHhyN2NyWWhvalVJeWp3T21nTWRiWnhiQ1NHZU1vTER0cERY?=
 =?utf-8?B?SVVHMWVuN1V1bjA3K1pHTEdKRTZyWEgyOVh4MWM5R1VKSnpYYUxzcFVkcW1h?=
 =?utf-8?B?ZUI4TkhsMFE3RlQwNlVpL2lnQXlIV2JGSzZxN3ZXYnRlRi9pMFdWa1FvMnNE?=
 =?utf-8?B?cTlta3o4REx1Y0M0YWlrWUM3VFNHUEVWck84NUY4V0xHZDJlelVoRzQrY1BT?=
 =?utf-8?B?MXVHblBjZEpXNnY1cm5wbjgxMWhHUlVKK0dSMHdwcTZlZEZOdHcvTFdQRXpN?=
 =?utf-8?B?R09ZVVl3cnRmejRxcExidXpJYzdzZ28yZ3d1N1lncjcxUUw4OWwyWTdwclFG?=
 =?utf-8?B?RC90WGlYeDZ4dTI0OXphUmhzdXdYSWdzc3dack1qMWg3UURJYVg2ZEJKNHNE?=
 =?utf-8?B?YWZkNTRPMEVVcW1vek1qVUlUdzY4bUg0bkVmMXd1UGVtYVNVNjhEZDBVK2ty?=
 =?utf-8?B?ckM0Y2VnTTY0OXVvc3pJWno2TFlsWVhEM1dUSWxpNS9DdDlaNkZCc2dxWGtO?=
 =?utf-8?B?NHFsUkZsSzZ0OXZDR2hoZkFWNTVlbU1jVlhROGxWNUc4Sjd2TUpQN3Evc3Vq?=
 =?utf-8?B?dEhaaUVHakdocmpRSlFKY3lvWHlnZ1IzQXZFOHV1OFB5OW4zNGhrZXVVZ2lE?=
 =?utf-8?B?bVFyL3dtUlpUV2ZUN3F5L0xEY0Z4dXJjZ1ExUHZ4a21Xd2NyNnJwWVZjRXFa?=
 =?utf-8?B?blVuUG1qcmtaTld4NXRaM3BSTEYybXVOUExBSy9PNE11S3R4dDA4N0J5ZUZm?=
 =?utf-8?B?SVFGWFBkVzhKQmhtREh4U2d3ekZ4eTRWTkRKQmJ4QUFBdlNoeXVTcVl5NzQv?=
 =?utf-8?B?SkZlaHNFRmdQY2JrazZTYjBRWVJiTi9iT2VBcmdyS0grdVZiY3ZqVUJ4RG43?=
 =?utf-8?B?Q3VDUGxIR1VRb3hoeXZYMXpzRWZUV3Z3VUxCQVBnUE5HVHNFaHc2aUZqVmxk?=
 =?utf-8?B?Q2FnU1o5dmMxTGlWOFRyWnFmZzJGaDIyRXVmSFhmSmZqTVJaSytwT1JIVUhJ?=
 =?utf-8?B?V1I0M1cwZEZIY05LY0ExbGw0TmpqRUlNam40WWM1OFBUenVyZU5rdWxIZXNF?=
 =?utf-8?B?TGF5bGpyZ1E3bmNtWG1aS2Uzelh6RUVEczcxczg0MFdjOFRtY3VrdWo1Rmhv?=
 =?utf-8?B?b2JHSXczUFhWTDMrbE1TQllDR1pmU1ZiN0MrK2ttcTRnQitHSGRoN2FSOU5Z?=
 =?utf-8?B?a1RxVXBhczhvSStmeWZxbmp6bnZSTHc4UHhzR2RSRFJSckt3SkdWd0E4cFdI?=
 =?utf-8?B?aWdPdzVyVEo0TXpDc2lTVU1jZWlHSFVkWmtrRzh6blFxczM3aCtnbTNSelUr?=
 =?utf-8?B?aU5SalRCSzFxWWJBSFVpS1NaT1Zkak5XMncwcUFBd28yY21CQnczSExxNjVX?=
 =?utf-8?B?ZExuMHIwT3l5UGVNMVZnU2dqTnIxWFBWb2ZUSEpRQkhmN3MxYlo3UmUwMGw2?=
 =?utf-8?B?a3hXSVprL1RONFpFUkl2ZjRrd3NFMU9iOVdzVmdDekxZMktzM1AxeldRVWV6?=
 =?utf-8?B?cWE1aUxDbXR1cFUzWnhPSmdyM0pSNGNOUHNwV1VPSnU0S0Z6UzdMRE0yOGxz?=
 =?utf-8?B?eHppeUNxTjBlNldHRHF3cFgyK3RDMzdMR200VnBJRC9QT3NsSGZOVlo4U1BM?=
 =?utf-8?B?VjZUM05GclZCeHJ4dWN5ckluRTlyMXhCd1B6aC9jalpGZGxtS3M4eTlDUlhU?=
 =?utf-8?B?eTVSVnZwdUpXS05zWVRqTWU1K3Q4QmZOUHdFVzF2YXpXSkRIQmxsdEJSNDFT?=
 =?utf-8?Q?8O2pc8uluJSckh8bb82bPqMv1MQN4BmQ2zPb9wub80=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d7430298-4399-4307-b469-08da02336d50
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2022 01:15:12.9595 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aFCDMtKAbewagX5YXiseZTaEuFlMrel6FQ7vJ6R+hN4SlrTqikhUNY2HlFTCWcC/sKydx3ET/JCzBqVmMlRd15VI/ilxEQMy4W3x9FgNZwQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2249
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [next-queue] ice: Add mpls+tso support
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

On 3/9/2022 5:08 PM, Joe Damato wrote:
> Attempt to add mpls+tso support.
> 
> I don't have ice hardware available to test myself, but I just implemented
> this feature in i40e and thought it might be useful to implement for ice
> while this is fresh in my brain.
> 
> Hoping some one at intel will be able to test this on my behalf.
> 
> Signed-off-by: Joe Damato <jdamato@fastly.com>

Nice one Joe! thank you! We will have a look.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
