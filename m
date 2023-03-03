Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72AEE6AA57F
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Mar 2023 00:21:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EAFD7404CA;
	Fri,  3 Mar 2023 23:21:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EAFD7404CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677885680;
	bh=xsGaSxWD2MH8snv0L5WVZ3/dFtJLn3xureVrDx7sLpc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JtP2JC0WIxQ1nOaN5E7ps2RW072z6y3D1I/G7sh0vLGZxRR9cBSCCikI+qUbXklWC
	 KT66pJU4WU7+Jx7ST+YvOZAiRzH27iWpFHxOAG0a0tl/zTybpziltPI0lbo/aqSFxw
	 FCRAFoV7F1iF0JAhn3Zr2C0XCm3OXnibkK3mCgD+BAryJwKdnazKjw/UDL3GilWWj6
	 J0fGY+P3RQdIoHPL/rRSKTQRGhxU3CNPfeGSiDXpeLiS3tSlKLcQpPclR4M0Ys3xFK
	 KNYR6EpZa3v2xUMlfnxOttWP56cdjdJea98QXt6Nw4WIO/cr3VXEHbYmdtK4WiRjjJ
	 J/6XHuvO1XExQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OnUbpivxarr8; Fri,  3 Mar 2023 23:21:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A9A0E4012E;
	Fri,  3 Mar 2023 23:21:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A9A0E4012E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 763BC1BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 23:21:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4725D41D31
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 23:21:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4725D41D31
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h0acTYM9I_Et for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Mar 2023 23:21:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83B0941CF3
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 83B0941CF3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 23:21:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="399998263"
X-IronPort-AV: E=Sophos;i="5.98,232,1673942400"; d="scan'208";a="399998263"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2023 15:21:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="668816895"
X-IronPort-AV: E=Sophos;i="5.98,232,1673942400"; d="scan'208";a="668816895"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 03 Mar 2023 15:21:11 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 3 Mar 2023 15:21:11 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 3 Mar 2023 15:21:11 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 3 Mar 2023 15:21:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kwNXu0tNKcBLWBPVCSgoP+Q439Ts+jBwzyCnYf1pCupZ52lNiU+hc6tCFYWCWsV9mCUhmLV4wOt++VrLfesrmH9Jv20ha/xVPePYrbBeMXySzXraQPJQN8WAy9S9an9bKKdgrzQs2K8qDwr9qaqx58GikpWLYInMSr7ua+nGAAVhE6wwGdjfaXe6lezRSYUWiEXYiia5l9xaD5c/0rkRRiCzBklnNpnzKY7PasUqjzMm1+VJpIEcfojvTyZvsVztXgWrgCborzN8ZmwO5OdPkwn/TenaCe36JQ1bgvjgPv4UFnI0Yh/BMlKw/UdKJyU4pYpnpYz0pnbsfp8vPpAdOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x0nGymRmgjityAsdgZShsSJggkgBEsa3CdiJrMrJBKA=;
 b=MfFu8jMoXvuwEAiFd48Jxpjm5lGuv+BUPGXnet7czgEWSBAS1KgxqWqFC/VUaQv2NoicKJP70t5rBhEcuinXwqipmop0LY4ecgV4EC2RrxvtybkdVllcmpCF8qI56GFYtLKtYMZey8MnaejKQZRPvVmm3lg6/7ic5sDIAuQxzMTtJyeLugdrjhQFWRm9ZxM5JbSM4VMtxPY012RiVg1A0gyTzO6Xw88yyffd+j1enrEE/yoHQld4qJcZ9h8W67ewHGAjsqxpBL1wuV3Phom06RWU6W3Z7+qvblMhIDz8s/kjL5hgiJjR1Na5OtR7AUIZvFIZO0fVaaY8VCxc9RI6Zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SJ0PR11MB5598.namprd11.prod.outlook.com (2603:10b6:a03:304::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.22; Fri, 3 Mar
 2023 23:21:03 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed%4]) with mapi id 15.20.6134.029; Fri, 3 Mar 2023
 23:21:03 +0000
Message-ID: <e24a43ff-e411-87c3-dfe0-f45d463aa3dc@intel.com>
Date: Fri, 3 Mar 2023 15:21:00 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230302215109.124-1-paul.m.stillwell.jr@intel.com>
 <20230302215109.124-3-paul.m.stillwell.jr@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230302215109.124-3-paul.m.stillwell.jr@intel.com>
X-ClientProxiedBy: SJ0PR03CA0212.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::7) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SJ0PR11MB5598:EE_
X-MS-Office365-Filtering-Correlation-Id: cd99a1ff-a809-4f33-9b48-08db1c3df50d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Qa6/8H3C6JARYZsPoi7klkXuwnghxORG2cVckthvYbSGRaUxWCGPOQtIgQ+ci/gsWIKgCngy1Gcr3Zx97W6EdFXL4tAYtziYmXpes2l1hYsjcerXFJ7CKn3ZJGC5yXt/vbz9VUm1U5hsRVZNY2Ye8uYAgdftagviGCFO/zOb2XMwlCLse8f1f04zFMYhX/MddL6smb46dThfev+MYR306AERd4OG3t7GiibHhVv6LCwahQt7F9mh+prAV/TWuPxiDLnyyCm4nNccV+7qOfiDt4PpuX4oXsqPwbEwC1MTZP1JDyGsuRWLPDVgpeFCs2nwZmu2YNhEmNtAI0u7pLCCvb3HQEm2fmy9yjug9Kl6aWutwlLfGsMgEkDEYXpjHpPqljQEA/cyn49q4AqfAeBWeKeMC3/2A3U2bxJcL8sVKOauPnxsIaCLcTBZnTmDYOcgl1dvWaN3Lg8xG5M0mJEF3KMctfcnNjhiscpYQx6ubcRjE0hYa/bF6hhQ0v/Z83j0LkvJd4os4B9IQWA2J8HeTyp31aAlTzgIwFYa9eYr5YREdq8qXf78gKne9J8w+MoLzRAnpRvIHmDkd17mZBTiGexQHLuZV70PyXoVNzcxxVs587wGLijLaYZNfiZO1ADdvljC3lbzO3qjY/4kxB39D96It+8D2QP/nPNPCkTiWiEXp4+PeQoqY8pAs1uWF/lbhQbOmbwqb0ARZJkd3BaoI/z10EZUD/x8/6k/2RIYToU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(346002)(396003)(136003)(39860400002)(376002)(451199018)(2616005)(6512007)(478600001)(31686004)(107886003)(86362001)(36756003)(2906002)(31696002)(4326008)(8676002)(66476007)(66946007)(66556008)(83380400001)(316002)(6506007)(6486002)(186003)(53546011)(41300700001)(8936002)(5660300002)(82960400001)(26005)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c0RzdU1hSmc4KzFRTnJjUnoyWW1jakxCVzNBUVpITWpxdFNlWTU2T1p6U3lE?=
 =?utf-8?B?aUd0S0RrQ3ZXeVRwMFNJOHlOUmZxSlI0Wk9lSDBSTnBQRkNBSEk4ZE82clNI?=
 =?utf-8?B?ZFpqSjRYVVVzRzJSZzlpZTNKQkNaTTZkMXlSNlBMN1k4dmhXM25WbU0xUWxt?=
 =?utf-8?B?VTljNTYwbTRLUXFtekNlMVBPbllKaTdBOGc4NWc5VDAvQkFueENJS1FTNGdt?=
 =?utf-8?B?bzd5QXFCcnc5Q2R3UUkySnhaWDMrVFBLYVAzQmMyWWdUUkNOVm5laWF2M1Nk?=
 =?utf-8?B?NzJ2bk5mamtrSWF2MnQwUnhZaEpNZWg4cVp3eTdjd3VQbWNLQXhtUjlFeCtG?=
 =?utf-8?B?NHk1NFZibWs3QWtwMTV0dExYMStiVlBCeTRsM1NJSWkyWnBVbXNudUFkT3pL?=
 =?utf-8?B?eElXN0tVNUlvNW9nZHVKYXdVbkdYekwzR2ZuL2I5TVBzTTZUR3laRFdGaDYr?=
 =?utf-8?B?UEtIMGNJcHZNTFlaQVVFcnM1ZXp6UldhakxXRnlvQlFrQUo4WXQ4MUpJU0Mv?=
 =?utf-8?B?MmU5d1BWQ3ZMbU9DYlBPa0FCMWkydGV0ZE1ZRWc1ZnQxZ2pKd1BYV2Rnelp2?=
 =?utf-8?B?ckhSWDhrZndBK0laeVNLanl4Ykt1Y0VGYW5qNGtaWXRiaXdtSE40L1hTejhW?=
 =?utf-8?B?NC9UcERUcnpkeHdyVlZPVjV5dS92YnlaWmc1cVJPbUZuUzdPUEJmRytGbksr?=
 =?utf-8?B?RUpvcml4U0JUNHNzOHlyNlFWelQ2cGpJWkhsbUp1R3N5L09oSC9URkJya0JV?=
 =?utf-8?B?aWt1NElZTll3UE5DWXFQVmNJUHNXNXpuN3dyVUNzOVRYRTdxNXNvbXdnbS81?=
 =?utf-8?B?dldPdkdkQ05VQ3pmcU9YQkhXUi9NT2lpRUZsa3hvZDRWTTBONC84cXkxb3pQ?=
 =?utf-8?B?bVU1MkhrbHZmZEJDZHJhVXNkZVhTUXZKZEJOa3VVblJNYVhlVitIQWtodmpy?=
 =?utf-8?B?WFdZYTVMOG1zZFR5UjdWRFVjMzk3QTgzY0hleDBZdFBFanZDMWJUaFBHMGV0?=
 =?utf-8?B?NEs0anZ0TGV4eHR1REZKdWp6RzFxNVV2K1ZDcWh2aDlJQXRhb3JvVWdLcDFG?=
 =?utf-8?B?NWsyOWhnWVZYcURiVjdlWHlEZUd1cXBuRUo0YUV6Ull6a1FlL21JanpLTTYy?=
 =?utf-8?B?bW0yWWwzTzc3VGlsVnV1SW4vRDZtSkY0WnBnbmRseTJlNnk4Z3hQN0xpQWJm?=
 =?utf-8?B?dnBWUGkvVEpjMjRjQkNHRnloQ2FrUGt2TzU3RExLdW5UMnRqdDFZemNOYUdk?=
 =?utf-8?B?UnlqS2MwQS8yYzQ5aWtEUG56ZzdCTHo5aitLL1R4VVVmN04xemFZV1JFTjds?=
 =?utf-8?B?d01YWWZxU25rVlpNcjZMK1l4SGxIVGs0UVRlMm5rcHZmamgyRmV5aDBKRmow?=
 =?utf-8?B?cWZucG9md2pmM0tzMUk0MWZJZzZBVjE2VGFaR0FYM29rZlBydlg3TGhYZG1G?=
 =?utf-8?B?MWpNZE1FODdFMEVLTjdzbVhBa0NhcXhwdEhoRFBMMmI0S096ekFheTNJaDJH?=
 =?utf-8?B?eTBwdXI3ZjJNVEJEWG9HYjZLMG5Kc0NYQzdjS2p0QWhkbGpkdmtLUWxHTzhS?=
 =?utf-8?B?b21PUGlEeitjUUY3czJUczI5YUx4RnlkaFZJRTB5ZmxJUHJ3b3dMSmNVMWxL?=
 =?utf-8?B?ankzQ0dRTEw3WWQ0MFVBcWE5UTVxbHFKaFdMSGt1em5UeU91TEZza3p4TUl0?=
 =?utf-8?B?OW90WmtoQmFRaXc3S0hkNXJocnVuL2JudVJFcXBqV0c5bjArUzNZZVNzWU01?=
 =?utf-8?B?SmI2Mm1hWEYvWkpLZGdaZFRvMTI2OEZtYnNSTTRMZ05IbU9pVlJOcEdCS2RB?=
 =?utf-8?B?RWEySDlobmZVQW1nRU82a1BwTlZSNkE3WWVQRDVHQlNOYVRQRUVHVk9jcTdv?=
 =?utf-8?B?TlVhdE52NXJhZnhEOXZ0aTE0eHRsZ0l2OHphVDVhWng5YXc4NmNtak5tTy9Z?=
 =?utf-8?B?aGZobitlTkRnY01HTmRpRnB3ak1HcVNqN3dVbWRiN2dROG8zUDR4L3VlcGtW?=
 =?utf-8?B?NTN6UEl3NDdLaHlxYVlUVXJoN0dSUjZZZmNHaDR5QkpQVzhiZmJHTmxDR0pj?=
 =?utf-8?B?WWtkTTRRWkpTMERiNlMyNWpYZjFuYzZmTFlXUG5sZmlHU0pVMGRaZkxhM3FH?=
 =?utf-8?B?blRISWxOZzJ4R3ovMXJqdEYyR1R5enFwUmJlUTNYaDFERXlmRVZEcmxCcko0?=
 =?utf-8?B?eFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cd99a1ff-a809-4f33-9b48-08db1c3df50d
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2023 23:21:03.4980 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ymCXE9FMN45zGESRMFNQciIKCj6KoQjsxP8/zgnjS0SkZ9pFSjj/iMCR/1PpUW8wSAiydeZzWFjqcKyQhoqIyXdg7ULkqkRl67gq3I1MiuY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5598
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677885672; x=1709421672;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DvynsFxC8u+XLxSgs7BXtDEWfiwMU+t78EMU1du5i94=;
 b=VXg7OG2FSA1a8/qVdbyKEFZnE10QvvpOlVA2AZl1TQdqS8CJBtnQec3v
 pmQttlMEonpLhSf0ZJx1P7F/R2XDydsnnJNpW8+bXt/aYzI/BVkY917MH
 ig/qnggKlvJAlyJxiuFujrH8EQ0W5BjJ2bHtqAQaLHd9gm3MhidUgz6q+
 /Ma5GM3StfqgxWMKCAI9lTfc0jpzIAzudB6J55wC1OciozADg0q1SnQFt
 t33ZImfP4/o/DITOwmQQaZ2SHf1tWEmkVg+4jY7glh7sbIFv3h5WySi7n
 CUIukAw56RmePoaFFpM3wf/MspW3YSLjpSjd9Qy1c1GExBOq4axsnaTQj
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VXg7OG2F
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 2/5] ice: enable debugfs
 to check FW logging status
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
Cc: Brett Creeley <brett.creeley@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/2/2023 1:51 PM, Paul M Stillwell Jr wrote:

[...]

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
> @@ -934,6 +945,18 @@ int ice_aq_wait_for_event(struct ice_pf *pf, u16 opcode, unsigned long timeout,
>   int ice_open(struct net_device *netdev);
>   int ice_open_internal(struct net_device *netdev);
>   int ice_stop(struct net_device *netdev);
> +#ifdef CONFIG_DEBUG_FS
> +int
> +ice_pf_fwlog_update_modules(struct ice_pf *pf, u8 log_level,
> +			    unsigned long events);
> +#else
> +static int
> +ice_pf_fwlog_update_modules(struct ice_pf *pf, u8 log_level,
> +			    unsigned long events)
> +{
> +	return -EOPNOTSUPP;
> +}
> +#endif /* CONFIG_DEBUG_FS */

This could be put with the ifdef above

>   void ice_service_task_schedule(struct ice_pf *pf);
>   int ice_load(struct ice_pf *pf);
>   void ice_unload(struct ice_pf *pf);

[...]

> +/* Set FW Logging configuration (indirect 0xFF30)
> + * Query FW Logging (indirect 0xFF32)
> + */
> +struct ice_aqc_fw_log {
> +	u8 cmd_flags;
> +#define ICE_AQC_FW_LOG_CONF_UART_EN	BIT(0)
> +#define ICE_AQC_FW_LOG_CONF_AQ_EN	BIT(1)
> +#define ICE_AQC_FW_LOG_QUERY_REGISTERED	BIT(2)
> +#define ICE_AQC_FW_LOG_CONF_SET_VALID	BIT(3)
> +#define ICE_AQC_FW_LOG_AQ_REGISTER	BIT(0)
> +#define ICE_AQC_FW_LOG_AQ_QUERY		BIT(2)
> +#define ICE_AQC_FW_LOG_PERSISTENT	BIT(0)
> +	u8 rsp_flag;

Please add a newline between the member and the defines that relate to 
it. Please check this for other instances/needs as well.

[...]

> +#include <linux/vmalloc.h>
> +

Any particular reason this isn't with everything else (and alphabetized)?

> +#include <linux/fs.h>
> +#include <linux/debugfs.h>
> +#include <linux/random.h>
> +#include "ice.h"
> +
> +static struct dentry *ice_debugfs_root;
> +
> +static const char *module_id_to_name(u16 module_id)
> +{
> +	switch (module_id) {
> +	case ICE_AQC_FW_LOG_ID_GENERAL:
> +		return "General";
> +	case ICE_AQC_FW_LOG_ID_CTRL:
> +		return "Control (Resets + Autoload)";
> +	case ICE_AQC_FW_LOG_ID_LINK:
> +		return "Link Management";
> +	case ICE_AQC_FW_LOG_ID_LINK_TOPO:
> +		return "Link Topology Detection";
> +	case ICE_AQC_FW_LOG_ID_DNL:
> +		return "DNL";
> +	case ICE_AQC_FW_LOG_ID_I2C:
> +		return "I2C";
> +	case ICE_AQC_FW_LOG_ID_SDP:
> +		return "SDP";
> +	case ICE_AQC_FW_LOG_ID_MDIO:
> +		return "MDIO";
> +	case ICE_AQC_FW_LOG_ID_ADMINQ:
> +		return "Admin Queue";
> +	case ICE_AQC_FW_LOG_ID_HDMA:
> +		return "HDMA";
> +	case ICE_AQC_FW_LOG_ID_LLDP:
> +		return "LLDP";
> +	case ICE_AQC_FW_LOG_ID_DCBX:
> +		return "DCBX";
> +	case ICE_AQC_FW_LOG_ID_DCB:
> +		return "DCB";
> +	case ICE_AQC_FW_LOG_ID_XLR:
> +		return "XLR";
> +	case ICE_AQC_FW_LOG_ID_NVM:
> +		return "NVM";
> +	case ICE_AQC_FW_LOG_ID_AUTH:
> +		return "Authentication";
> +	case ICE_AQC_FW_LOG_ID_VPD:
> +		return "VPD";
> +	case ICE_AQC_FW_LOG_ID_IOSF:
> +		return "IOSF";
> +	case ICE_AQC_FW_LOG_ID_PARSER:
> +		return "Parser";
> +	case ICE_AQC_FW_LOG_ID_SW:
> +		return "Switch";
> +	case ICE_AQC_FW_LOG_ID_SCHEDULER:
> +		return "Scheduler";
> +	case ICE_AQC_FW_LOG_ID_TXQ:
> +		return "Tx Queue Management";
> +	case ICE_AQC_FW_LOG_ID_POST:
> +		return "Post";
> +	case ICE_AQC_FW_LOG_ID_WATCHDOG:
> +		return "Watchdog";
> +	case ICE_AQC_FW_LOG_ID_TASK_DISPATCH:
> +		return "Task Dispatcher";
> +	case ICE_AQC_FW_LOG_ID_MNG:
> +		return "Manageability";
> +	case ICE_AQC_FW_LOG_ID_SYNCE:
> +		return "Synce";
> +	case ICE_AQC_FW_LOG_ID_HEALTH:
> +		return "Health";
> +	case ICE_AQC_FW_LOG_ID_TSDRV:
> +		return "Time Sync";
> +	case ICE_AQC_FW_LOG_ID_PFREG:
> +		return "PF Registration";
> +	case ICE_AQC_FW_LOG_ID_MDLVER:
> +		return "Module Version";
> +	default:
> +		return "Unsupported";
> +	}
> +}
> +
> +static const char *log_level_to_name(u8 log_level)
> +{
> +	switch (log_level) {
> +	case ICE_FWLOG_LEVEL_NONE:
> +		return "None";
> +	case ICE_FWLOG_LEVEL_ERROR:
> +		return "Error";
> +	case ICE_FWLOG_LEVEL_WARNING:
> +		return "Warning";
> +	case ICE_FWLOG_LEVEL_NORMAL:
> +		return "Normal";
> +	case ICE_FWLOG_LEVEL_VERBOSE:
> +		return "Verbose";
> +	default:
> +		return "Unsupported";
> +	}
> +}
> +
> +static void ice_print_fwlog_config(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
> +{
> +	struct device *dev = ice_pf_to_dev((struct ice_pf *)(hw->back));

I don't believe this casting is needed.

> +	u16 i;
> +
> +	dev_info(dev, "Log_resolution: %d\n", cfg->log_resolution);
> +	dev_info(dev, "Options: 0x%04x\n", cfg->options);
> +	dev_info(dev, "\tarq_ena: %s\n",
> +		 (cfg->options &
> +		  ICE_FWLOG_OPTION_ARQ_ENA) ? "true" : "false");
> +	dev_info(dev, "\tuart_ena: %s\n",
> +		 (cfg->options &
> +		  ICE_FWLOG_OPTION_UART_ENA) ? "true" : "false");
> +	dev_info(dev, "\trunning: %s\n",
> +		 (cfg->options &
> +		  ICE_FWLOG_OPTION_IS_REGISTERED) ? "true" : "false");
> +
> +	dev_info(dev, "Module Entries:\n");
> +	for (i = 0; i < ICE_AQC_FW_LOG_ID_MAX; i++) {
> +		struct ice_fwlog_module_entry *entry =
> +			&cfg->module_entries[i];
> +
> +		dev_info(dev, "\tModule ID %d (%s) Log Level %d (%s)\n",
> +			 entry->module_id, module_id_to_name(entry->module_id),
> +			 entry->log_level, log_level_to_name(entry->log_level));
> +	}
> +}
> +
> +/**
> + * ice_fwlog_dump_cfg - Dump current FW logging configuration
> + * @hw: pointer to the HW structure
> + */
> +static void ice_fwlog_dump_cfg(struct ice_hw *hw)
> +{
> +	struct device *dev = ice_pf_to_dev((struct ice_pf *)(hw->back));

same here

> +	struct ice_fwlog_cfg *cfg;
> +	int status;
> +
> +	cfg = kzalloc(sizeof(*cfg), GFP_KERNEL);
> +	if (!cfg)
> +		return;
> +
> +	status = ice_fwlog_get(hw, cfg);
> +	if (status) {
> +		kfree(cfg);
> +		return;
> +	}
> +
> +	dev_info(dev, "Running FWLOG Configuration:\n");
> +	ice_print_fwlog_config(hw, cfg);
> +
> +	kfree(cfg);
> +}

[...]

> +
> +/**
> + * ice_fwlog_get - Get the firmware logging settings
> + * @hw: pointer to the HW structure
> + * @cfg: config to populate based on current firmware logging settings
> + */
> +int ice_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
> +{
> +	int status;
> +
> +	if (!ice_fwlog_supported(hw))
> +		return -EOPNOTSUPP;
> +
> +	if (!cfg)
> +		return -EINVAL;
> +
> +	status = ice_aq_fwlog_get(hw, cfg);
> +	if (status)
> +		return status;
> +
> +	return 0;

This can be 'return ice_aq_fwlog_get(hw, cfg);'
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
