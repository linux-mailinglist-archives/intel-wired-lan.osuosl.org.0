Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFA863102F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Nov 2022 19:06:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E75582070;
	Sat, 19 Nov 2022 18:06:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E75582070
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668881184;
	bh=kcZqIT9XIbTvlxqlKGRlZvBqgmomYSnPPyvUUJYUnaQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ALQx/rzoFos+PaUNEZcVhmXPyFkH/Xgkq1eRNt6ABLOIuC5u9XyHlP6vlqZtxPfpB
	 eCCP0OhYqjEXw3rw+6dX9dfrhestBOaaxdSCr4dbxzP4mFhPoQC/Lmw0H+AH0Wr3vK
	 UtFSXHPDdS3SmHHyMlgPKbht3xyR4eJ3JCKahADgRzLVvAm+4PFk6Q3VuoA+4f+DNU
	 GJI/1mbL4B1hsBqp9SLJ4oYJdoF8ZsQonAbmrQVBd/w7Q3goLNUk2vgcosAeBxP3bA
	 hzWZ8zrnSWYE24P0hLc9BsisrjXJl/KidL27zPqPDD++YuDwhkX3jUHLccvHMa3Vzb
	 EaNh8OVLTpvzQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AeUYr5xuqwdt; Sat, 19 Nov 2022 18:06:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 29D3482063;
	Sat, 19 Nov 2022 18:06:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29D3482063
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 558741BF591
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Nov 2022 18:06:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 257B7402F7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Nov 2022 18:06:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 257B7402F7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9lNDWdiZUvmS for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Nov 2022 18:06:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED20140134
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ED20140134
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Nov 2022 18:06:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10536"; a="399623377"
X-IronPort-AV: E=Sophos;i="5.96,176,1665471600"; d="scan'208";a="399623377"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2022 10:06:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10536"; a="704105073"
X-IronPort-AV: E=Sophos;i="5.96,176,1665471600"; d="scan'208";a="704105073"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 19 Nov 2022 10:06:16 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sat, 19 Nov 2022 10:06:15 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sat, 19 Nov 2022 10:06:15 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Sat, 19 Nov 2022 10:06:15 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Sat, 19 Nov 2022 10:06:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E3IgYTFl8DS9IWxB0IW16N1ModnH/85C3nB2tnsDmb4TB5Q4++oiHgoZ6jD3kUWBxrqJrsATxIHoLHcHOdZ3JXr0A17jwfu4Z78YToBW/QxrDlcY7MPjl8y3Et+vH7Bj5OjiIM//R3xF8mzxLSALESd7YnRSHG3sEV2ZxE/UhrruTc/H6xB954koPX5hd1DyzwzLAG4Ng5U3ul862ysj49+xpY4SR2OWWPX1EsefQn/uBqc8M0N+pBfIxhqI/H+NEsMKGKS9B+mmkvrLUwPpwha7oGq//Jt/pqWhvUbvWKnRubzeET+ghSoQ6mQltj1SxALCyZ5Bg6CESEDYAl6VKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u44wxO3NCtOQiXG5qfCF5iNea5GzeOhN6ogGZC80YIk=;
 b=LXZGuGTZEt+I0JR2ifOTSsYYBQSlM/JrE/6306ouoQO/EsDqt2cNZcFyofNB4u7YXj4UUg7VHrQf6oa9LLl2glgVQWnC/gHbb0DGNreh6yjebSWrBIr9K0QhzgCAHUicAwlOHYPwBJOcfsyBOBVluUbkBDDjzBqiiVT+6SlDQlfvIudWijJPiCv8cbfWdzMy2cgug3CJp4lt3DfSZv9Jv3oZQyRZVr1ITP+BjRH9znlinx6l69UeDVwq3yts+h3e+6NJiY6TJBviqK8Bri7UUQC0PYb9vjddhQ1Wfucz3vxSECyRmOoNuM7WeUsdQtHfu2MG1fBmkd7OvIIiaAc5FA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR1101MB2235.namprd11.prod.outlook.com (2603:10b6:4:52::15)
 by BL3PR11MB6388.namprd11.prod.outlook.com (2603:10b6:208:3b8::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.11; Sat, 19 Nov
 2022 18:06:13 +0000
Received: from DM5PR1101MB2235.namprd11.prod.outlook.com
 ([fe80::4dcc:8fe4:623f:4f9c]) by DM5PR1101MB2235.namprd11.prod.outlook.com
 ([fe80::4dcc:8fe4:623f:4f9c%6]) with mapi id 15.20.5834.009; Sat, 19 Nov 2022
 18:06:13 +0000
Message-ID: <a15508df-eab4-ce00-7340-69323c462fdc@intel.com>
Date: Sat, 19 Nov 2022 20:06:05 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.2
To: Conor Dooley <conor@kernel.org>, Jakub Kicinski <kuba@kernel.org>
References: <CAPAtJa_o5q-sU+AD=G3y43H_5pBKnOZTQGXM99uszPXNkn8Z9A@mail.gmail.com>
 <20221031170535.77be0eb5@kernel.org>
 <03f7dc73-3e7c-1e6d-275f-85539493cd7f@intel.com>
 <CAPAtJa8qupPZZ0AiMWSxNKSd-WMg0MQDQeZcCO_Z-GGBu3jZCg@mail.gmail.com>
 <CAPAtJa_-yMusW5-C3BDivMu=MOyfKF9VQkxQotX3L_P+Q48oMA@mail.gmail.com>
 <CAPAtJa_nL5edyiN61ghXZxVUSDBFQQR3uiYJM0uo9mEao=RC0w@mail.gmail.com>
 <CAPAtJa_hbFbVXQbiNnb_byLqtZ-Dy_EBcvTFH9GyPqt__dFmLQ@mail.gmail.com>
 <Y3gKkYeijrAIhxjc@spud> <20221118145443.427ecf10@kernel.org>
 <Y3gTdsg4l71L0vz9@spud>
Content-Language: en-US
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <Y3gTdsg4l71L0vz9@spud>
X-ClientProxiedBy: FR3P281CA0017.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1d::20) To DM5PR1101MB2235.namprd11.prod.outlook.com
 (2603:10b6:4:52::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2235:EE_|BL3PR11MB6388:EE_
X-MS-Office365-Filtering-Correlation-Id: 9907a69d-9f0b-4bda-823a-08daca58bdfc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EPjjdpxg56NOYSuwgpizBvrggidHnzsoQdDKNa3Kzakj1o1+YnaB6SerU0Rno+kxz/6RzmEz86SVu4wU4KASZobFCi+2AkuuHtGhF2K88jZ9tpYNRDhV9RBZuir+97GfeVKVcPidVR84nhHRCi9So4NtL2MkUoSDtf6NR+hFzbVhUgPRxYgM4JiUajrgA66Rsdy1EIyuXhS1BZ8cxCk0sZcCpzqkmT/W2PM93u2yrGRIDotv1lqS3KMb1mNZFalZ6gYxKw6HJkkHmvkwN1vYTwhNDeXojujXYLRhXPvNb/WL9aca5NaH7BgSc8XSYjpdYbb34E/jzswmqnhDs+A9jblGJARnb0Sbguz/kfEwQwGnG7hXM2prbCYZPB2myPE6/x1twhj1VElaPsYbQ3Y//s5+nV1KLvjY3u4llLfhhKLUnzFgxD8Wbr9piUxbTBT9dpl4Kl9WLUY3SvDxxq3dFrlnfByiTlAAXWtg5EBm/oqYYeGJ4nrixlEkJIgMjRDxkrvEqrgKc0/byVSZHdkv6faFN+rY2rVL2F/uJJ2LP0l9R2z9XW+8QxXlVck8INcZAR754JfQstR9LBHJsbXOtcjKZ6o1otWbRBR691RPshaQLmkUHFzQnFf4r2iP75emrvond2cstIRA4DINOrb33PyFSEavLw3l905iipEd1rTtOYezsRoyZeBFz5zOFolAk8izg+1neHzWydOSQDBq12WYcSWta5NUatNY0rD3Kj6oGSdAMr2L7i3qYesdCjHN48W8LkFhdVQPSxczpdbXf33IkCiytxVTRzYGQfQWpWQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR1101MB2235.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(376002)(366004)(396003)(136003)(451199015)(6486002)(26005)(6512007)(6506007)(6666004)(2906002)(110136005)(478600001)(82960400001)(36756003)(31696002)(86362001)(83380400001)(38100700002)(53546011)(966005)(2616005)(186003)(8936002)(41300700001)(31686004)(66556008)(8676002)(66476007)(4326008)(66946007)(5660300002)(316002)(54906003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VG5XOERiLzAraHRmWEF4ZEpWTGVGb0dFYTZlUGEraXJ0cm5pZVRoZytuRlVH?=
 =?utf-8?B?SlBYK1JmT2V0WSsveGFJN3pHVkkrcXVyRTM3Qm1Dd1krN1ZWWVQzVCtFTjMx?=
 =?utf-8?B?NVhpdEFndUxOeVFBTWYxVWVNdmFOeGNUNmh4RXI1NXVXY2gvQXNpMTNUQm5w?=
 =?utf-8?B?eEtkdUw0MEIwTzZGZzR5LzMzb3B0TGtmTGgxYUlGSG4wTWpXU3Y2QWRXOXpi?=
 =?utf-8?B?NHg1VkV3VjB0QlZGV0xGTUVGRUlENHZ4dUMzUDFmb0kvWnVQV1FjY0hTdStM?=
 =?utf-8?B?YzFZTW1oZVlJOE5YYWxRb3EwWHBsVWNDbllkZjlGRTlZWDV4Z0RLZVlEcFN0?=
 =?utf-8?B?ZVcxMHRycjZWSG1kZURhTDVGOFdUcFpYb003c3d0V1l1RVhTL0JNSTYvVXB2?=
 =?utf-8?B?U1UyakJMU2Z4TmJPYit6ak9xamVwN3hLZnF3VjJaUHlVYWJSdXI2Q2dkRnc2?=
 =?utf-8?B?V3paMTZreGxQSFE4bk81T3BQcmduNStKTmtHTktUR0NtNlh5WldDNUI4dVU1?=
 =?utf-8?B?WDhrKzZRT0ZXaEZZbGZHc2VHTlF2Sm1hOE1zSTIzZWtZUFNpWndqRGVGNWIy?=
 =?utf-8?B?Qkd5MjYzSHV1RUV1bmhGWS9oR25kbWpFSWRidVNhbDB3dXNwdVV3L2tyeG5y?=
 =?utf-8?B?WmF1ZnhsY2JIeEFjMXV2NGdJSnBHbDV3NW5YM05ZL3o3a3JkdDJpZHdKZDk0?=
 =?utf-8?B?YkNMTURLdjhLVEQ0TmpWY1laVXA0OFB6KzArcFROemRmZ25wN29Pd2Z1TmQx?=
 =?utf-8?B?Mml5cXl1Um5yUWlqbmx3RW90Mkp6ZlYra1FVNnExU1NiUHBnS2pWZUJudHI3?=
 =?utf-8?B?MlhIeUtXeFV3dWU0ZXg0WGhvNXArU2pjUFBLbGVQSlpZdWR6ek9RbGpqNGZN?=
 =?utf-8?B?akNDbXJ6ZzVNMHJaWGFheEZwQXdHa3lDZnR0MHJLKy9xVEExelUvYmVvN20z?=
 =?utf-8?B?amRTNjBrQXRma2NnQW1tanNEUFdXdXExcGxSNG5oekNkSmU4Ky9Udi95LzRk?=
 =?utf-8?B?V1E3bWxJTnlhcHNYajB4dTBLYU5EYnV3eDVjL256bWFENEdrbzBLSUtyS08v?=
 =?utf-8?B?dmxnVGpqOUJQYUxTRE5SaFVRdStkRUpGZzk1MHFCQkJUNHNEODkrRkVzYWg5?=
 =?utf-8?B?cDJBWkhtWEtCYjdrbkJlQUJvL3VzclUyZG9mMGF6SG9USDdMM1FSMEhDYUpw?=
 =?utf-8?B?Wko2aitkTXBZL1daUzZvN1FEMnZJYXVGT1IyR09HRHp5aDdhU2JBTTFhajYz?=
 =?utf-8?B?bjNVQS8yUy9kTTJqSEdNRHhrVWx5VTlGbUdUSGgrK0lwdTBqTXZEWGJSR0JO?=
 =?utf-8?B?QnJNNDFZVUtiSVBPZENXUGYxdDlwM2ZwZ2pJTHRRSmZ3Z3h5SmpzK3Rta21h?=
 =?utf-8?B?a2Y1T1IxS2FGdDlVdmR5NWZaTmRHUE11eHp2THJsUnl1OHoyZXNDZDFueldw?=
 =?utf-8?B?TzdaOVdRNS92MDJFekI0eGtYb00xbVE5ZkJFMzFCblE2WUhzTkFBa2NmVjlK?=
 =?utf-8?B?amxobmoxK0FXODhnZkJXWTNNYWZGaTA0Y1habXZTRDd4c3FIL1NsV1B1OEJr?=
 =?utf-8?B?d1UweUhqUUVEcCt5b3g5d0tEdjRuTzdpbFg1ZldvdTQxenFHRlMrZCtSMnk3?=
 =?utf-8?B?enpDMWROMjFlMmxqNkEyREJ3d1pONHFCZGZ3bEd3dk53eDN5RjZFbVpDM1U5?=
 =?utf-8?B?anpyM3YwNTZUSHV0MDJ5MXM4Qkw0Ujg0WmF4T2JHVjlDdzVsb1NjbHBSTkFj?=
 =?utf-8?B?akJ1dnJsV3RSZjhqV21TVTFvZEhiMU1FbERzbUo4QXJjeHlhRFNJa3R6dXFH?=
 =?utf-8?B?YUswNXFxTDV3MlFSV1NmaUZrSU5hcnlvd2hCZHZPUC9ZZkY5ckJnZUNTK213?=
 =?utf-8?B?eTBoSmxDZFpkNlYwWEpVd2plbDBsMGJqZEgzdkU4TXhNU3hROUJtQ0lLd3RY?=
 =?utf-8?B?NVRKSnlvU3AwbURyOXhGd3hOMDZXTDdzeDI1TWNNRjBtYUF6WVYveWlhYmN4?=
 =?utf-8?B?eS9haVVWQytVZjY0eHFCMTlPeHVMZHF6UjRrTys4aWF5NEdQQUdnNnJyL3Zz?=
 =?utf-8?B?VEx6ZnI1L2ZYVWRLejFNYXVwUUFJTXdOQ0h2VlBGTjV0SUlPQ2d4QWllSnQ5?=
 =?utf-8?Q?o2HKY7F21wGzrHikJYWbG01/s?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9907a69d-9f0b-4bda-823a-08daca58bdfc
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1101MB2235.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2022 18:06:13.3626 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ytiDPmargpVvApZbK5S31yuFgpWr+cDMXZ8C5g4qvHpbkggnYbTuQ7XGDal1xWY87ySvZ+sa+EXaTk7kQfe1Bw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6388
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668881176; x=1700417176;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0riH3yP1Cc10X6VlU/pqelG1ODpZndOOEnFdx+m/rNA=;
 b=n1MohcpdHQ+o9Qg24Zkm3B6xrFdUc+QZLhENFoZZoGnkLtxjek86zwpm
 SGy8EHLIlLrMLF8Ie05JFtKuJ6pDQdZMEYX0PHFUt3/GQkx+klsUn6jtE
 35qcmFl0pmMXgP4TEH1QyOgG3sl2qYQ/vTp3LqjlHwiNZ7Wl1pOlqL1xW
 IPw+zZArv3qSBKZbpfbX0h+l0V64XHwAriQKbgp5CTaYAeZeThCLta30R
 /R1iEWrxBvWFvnNCJDaFo9T2Dy88n55yTFfYTS8+8ZWKtnuBsWpa1jCtf
 cwm0AE8RxzpdlZInkWn9AcAXsE14MIufUQ4iZj4Fd4woXQwcJd9ixgWGO
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n1Mohcpd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] igc kernel module crashes on new hardware
 (Intel Ethernet I225-V)
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
Cc: "Fuxbrumer, Devora" <devora.fuxbrumer@intel.com>,
 regressions@lists.linux.dev, "Meir, NaamaX" <naamax.meir@intel.com>,
 intel-wired-lan@lists.osuosl.org, Ivan Smirnov <isgsmirnov@gmail.com>,
 "Ruinskiy, 
 Dima" <dima.ruinskiy@intel.com>, "Avivi, Amir" <amir.avivi@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/19/2022 01:21, Conor Dooley wrote:
> On Fri, Nov 18, 2022 at 02:54:43PM -0800, Jakub Kicinski wrote:
>> On Fri, 18 Nov 2022 22:43:29 +0000 Conor Dooley wrote:
>>>> Is there any update for the community? More and more folks are asking. We
>>>> are all techies and happy to help debug.
>>>
>>> Vested interest since I am suffering from the same issue (X670E-F
>>> Gaming), but is it okay to add this to regzbot? Not sure whether it
>>> counts as a regression or not since it's new hw with the existing driver,
>>> but this seems to be falling through the cracks without a response for
>>> several weeks.
>>
>> Dunno, Thorsten's will decide. The line has to be drawn somewhere
>> on "vendor doesn't care about Linux support" vs "we broke uAPI".
>> This is the kind of situation I was alluding to in my line of
>> questioning at the maintainer summit: https://lwn.net/Articles/908324/
> 
> Yeah & it is /regression/ tracking which I don't (or rather didn't)
> consider this situation to be. I'm generally a little unsure as to when
> I should trigger regzbot in general:
> - immediately when I find something?
> - only if it goes a while with nothing constructive?
> - is it okay to use it outside of "this used to work and now doesnt"?
> 
> Either way, but I did some more googling and found this reddit thread:
> https://www.reddit.com/r/intel/comments/lqb4km/for_people_having_i225v_connection_issues/
> 
> That's being reported against windows & I dunno if the dude is using
> firmware and driver interchangeably etc. But the disabling power saving
> etc sounds oddly like the issue we have here, since that was a proposed
> workaround in Ivan's 2022 reddit thread.
> 
> Supposedly I am on firmware-version 1082:8770, but /I/ I have no idea
> how that corresponds to windows versioning. That may lend some credence
> to your assertion about firmware being the source of many issues.
> 
>> Finding a kernel release which does not suffer from the problem
>> would certainly strengthen your case.
> 
> Aye, likely to be a little difficult to do a meaningful bisection for
> me at least, since the motherboard I have with the problem is an AM5
> one for the new Zen4 stuff. I'm not an x86 person, so not entirely
> sure when that support landed. I may do some poking tomorrow..
> 
I do not think we can resolve this problem on this forum.
In early Ivan's report was reported error to netdev "PCIe link lost, 
device now detached"). Since the PCIe link unexpectedly drops it could 
lead to many problems (not only crashes).
Before you go to SW/FW bisection (change FW(NVM), go back with a kernel 
version) - please, contact your board vendor (ASUS). Why PCIe link drop?
Circuit problem on board, the system performs power management flows and 
does not stop the driver.

"failed to read reg 0xc030" (just symptom) happen after PCIe link lost.


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
