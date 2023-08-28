Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 630BA78B35E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Aug 2023 16:41:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0BDB181FC4;
	Mon, 28 Aug 2023 14:41:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0BDB181FC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693233702;
	bh=AHpNqaxH+miFBEx/TgZcbl71QnosyTu1heijnSa0TrY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0rXWVUIsPHci1Vz9B9OU/iqSOCeP7z8xhq8XoNFaf7jb0EFAEbgMgSbHSMAV4Hvfo
	 fh18At7N2JZ3J299GfFhBr+3jd41wYzorRQ8dVPE5hX+Q1u9taHP565+euw1GXCv+I
	 J6JO//Vb2nMAjU9scmvOc/g8kH3SMSQC63KFQM7XpxQumITKW8yrW24E1HBsD8SdfS
	 yrZ4Wnp1gRYSUG9QTFY6o/B/0kD+xRMj18p84+NqUC+FYK6wUsGhdTFwbfoPdpuNf4
	 r2Lq57lI5mYVmxmd1Q/7H+tEhZCIwS1QZPo0r2x2xceWuTJzyr0o/2A7UQbo3r7R+V
	 LugEnJop+97IA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 24n3HW3l3R47; Mon, 28 Aug 2023 14:41:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D4E6D81AF3;
	Mon, 28 Aug 2023 14:41:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4E6D81AF3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9C4E61BF276
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 14:41:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7165D41ADE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 14:41:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7165D41ADE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9cpa6GXWzErg for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Aug 2023 14:41:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 74F0D4194B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 14:41:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 74F0D4194B
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="360120021"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="360120021"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 07:41:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="738254950"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="738254950"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 28 Aug 2023 07:41:28 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 28 Aug 2023 07:41:27 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 28 Aug 2023 07:41:26 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 28 Aug 2023 07:41:26 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 28 Aug 2023 07:41:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HUIiJSEuQV2Ipb3EElMKniHb4oQyL+th1Mf7zRtaPZlft2sZZWa9wjQHfuAePPqB1EfILN7vtG31bvq4c/X+HCekxHKnAz+XFVsH+DNF/8gyBULBkl9yk5YDqULHG8Dt1dsXzHpH7OhawaZquSaHvDfSft7NQhtasuXud8JJdL2PN9jGnlzcepJrxGSLokddQwFxGT84Ca5kv+tx2Tl3YwNSrPKOGpHtZwo7Vt5CWhPiCb4B1TzAdlCK7pgcIm/3KhPLH1KeaFjca56OG2Uw9rp5wyKhKWaVR7mEBJwJoz6aBW8qwk6dqcxF7wOce2uCWys/lKtrjahA9CCsGlqHkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NuNYE0NlDWSmg9gnE5phiJ4OifxNuL+AVXUJDiPA05Y=;
 b=geRLBIZstdFS3H6s/PNuBFmrgqvyf+4fyJbnzw0ub1aqSPozR9NL3b6XQ+8htiAt0hbUdBzN1P9phoMk5UC+5TqlbdmWwiKna83zHrbtrr841HAjXgb/OaItHVVdq7yl5Zs8m+4LJ6wh1CX18wN2argHQyPUAhObtAx22pwroXckxqizi9htkYuEqo1CTL5BgqIi96mLHGVWC3zSPrJsHhNlmfgVdmecEFOZvbp37AWj7LCh9AaN2BTYmBNTiWXdVPWxwjHjDwC03Zy5wAmEsgMQQOg2BiRH7oEdjurhj2w/yJkAyN4MIF4yqKm5NyC8Fc2HlPp51Q1wuv5JiKF7DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by CY8PR11MB7337.namprd11.prod.outlook.com (2603:10b6:930:9d::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.34; Mon, 28 Aug
 2023 14:41:25 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5ef8:e902:182c:c41e]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5ef8:e902:182c:c41e%4]) with mapi id 15.20.6699.034; Mon, 28 Aug 2023
 14:41:25 +0000
Message-ID: <25ff3f7a-b1fe-15ab-ce41-1f1a62eeb624@intel.com>
Date: Mon, 28 Aug 2023 16:41:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: David Laight <David.Laight@ACULAB.COM>, 'Kees Cook' <keescook@chromium.org>
References: <20230816140623.452869-1-przemyslaw.kitszel@intel.com>
 <20230816140623.452869-2-przemyslaw.kitszel@intel.com>
 <1f9cb37f21294c31a01af62fd920f070@AcuMS.aculab.com>
 <202308170957.F511E69@keescook>
 <e8e109712a1b42288951c958d2f503a5@AcuMS.aculab.com>
 <3f61b3bc-61d4-6568-9bcb-6fd50553157c@intel.com>
 <8c5fcd66086a4354b30f15dd488a9fe5@AcuMS.aculab.com>
 <33c1819b-7c26-ea3b-a8a4-9b14cde425d5@intel.com>
In-Reply-To: <33c1819b-7c26-ea3b-a8a4-9b14cde425d5@intel.com>
X-ClientProxiedBy: FR2P281CA0125.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9d::19) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|CY8PR11MB7337:EE_
X-MS-Office365-Filtering-Correlation-Id: 88d5be94-0518-4480-cf60-08dba7d4dab2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZPlZ7stAYGVSSCLmSM+qKowCS/rxfjxIg290C4YMAr9il5a9uREAhiRKsApsze3EiLYP6x+pdU1vVPsJdflLi3XgbleofI97S0pVeKR00Dn0Zuh0kTZEEeCAnVsSpqMJpHn1m1t1O5MmA7or+/vP4g1qjNYvskxq5fMhDGnfcwPYAFPWUV1Pr6rMHXCNjuPcrBVWZU/zWHPATG26UxIS4lyCdTDqU0GAT4EeMGm7czrZSjLUZdh3yz6siqfL3KdzW7yV2guSa6oJwRBoZJPN2Ok3j18ZNmuD7OxdH08+0SWMvGrcK1U+eKeMn1ugwV9EKqz69w3/QWRw2LKPUDv4lwdE1eA+iEgcJpbq3kwgZyGPLpAB3LbiWTQ/wngFxiTKIgOXpzLidP9CUXYo4LBzJlp4w9Bgk5F2rjE8BMAnUjeY6TlUYeHcx34ADQNuO+8S0SrcAQ0hKGIT/9MeNW34Hg4anmuUJA1OWN0I8W8gXTeBfXxm2VCB/7FK2QFMSEHJa3Q6CdJx+Y9AlLuPz+SEdguajuRxWFZIztxUS7sFFEuh7eLsxHppy/oKTfbpR6d4BPQZ2Pw9cBGLEPo/WEQegOmMkPW1iJmqSMotuGm1JwMoXcTEEG5tblP6kC+1G3hLB9viPeQLjrd48f4+QqxxkQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(136003)(396003)(366004)(346002)(451199024)(1800799009)(186009)(8676002)(8936002)(4326008)(2906002)(36756003)(110136005)(54906003)(66946007)(66556008)(66476007)(316002)(5660300002)(31686004)(966005)(41300700001)(6486002)(6506007)(107886003)(53546011)(2616005)(26005)(6512007)(38100700002)(478600001)(82960400001)(31696002)(86362001)(6666004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bGswZkVEbThZUFVRNGk5c1lqME9vcHRtNWl6cVRrcWg4Qzk4dUhzTytjZTVO?=
 =?utf-8?B?bWtDRWVSRUVCTzcvT0dDNW9NdVFwRzlKeW1Hb2xxVEZRMHpGcUFpZ0xHdVJP?=
 =?utf-8?B?UzZ4b21TcEZxMUUvSTZOTG5BVnlWWlpEbGY1cnhtK2lCb1ZSS1oyVTZkM01Q?=
 =?utf-8?B?SllkeHRKUG9OYXlnS0JFMDI5cEU4WnpLZ0hnQVpWRnpxbzFJYmhZWXBMYVNn?=
 =?utf-8?B?MDRici93K3NPVFZLUGNXamFTaWRzMGg0dzlnenc3T3Mxbi9zTUladEEwOHZj?=
 =?utf-8?B?ZWppbTVYd1hkOVhidk1McnlxQVQwMkd0c1drQ21RQkVuZndxc1FJZzZZbGtK?=
 =?utf-8?B?UzNKWllIbE5vY3RDRDBURVAvcWkzL3drZWlkYmpXalp0a2JjekF6S1JlV0Jl?=
 =?utf-8?B?eWFoc1lSMVZCY2V5SXZVeEs1WnQrMGQxSFUvZ1VSUUZPcmo5cVhUUTk2U2h6?=
 =?utf-8?B?QXZwek9OWHF1M2FvWGY4T2NicE1aTXRvREpKS01xM2krTi9ONlVSZnVNdkdC?=
 =?utf-8?B?SHdpMEVnM29JeUZCYnh1N0pVdUFHSEJ4M21Ec0d1THZUWUJaK1lqejFGQ2tK?=
 =?utf-8?B?YTBRMEtzUFloaldrZzQ4Ym5pWFN5TXFQdzltdTdpcWZxY3VETzk5eUJ6Mnc5?=
 =?utf-8?B?MDVUWnJPNnR3NjBNa2MySE5RaTB0Q2s0cGl2eGlueWFFVzZ4VzVHTWRpTFIw?=
 =?utf-8?B?TUhod2dBd0I0YUQxMFEwS3kxQXAxYWd3SVRDUkpBTkZ4WVlPSzljdjRwNFZL?=
 =?utf-8?B?L3lhemRuQTFkanFnQ25Sa2VxdFlZek9nSXFicTVNcjJ6R1ZHWjZTc0xuc1pa?=
 =?utf-8?B?bXdGTW9mTnVucWZsVlR3REhmemNvS0FFcGk0TzZPUnJCY2ZFUXBBOG53ZnIx?=
 =?utf-8?B?bGxHY1dIcldKcEc3T1lRMnpXVE5YVHFZVWR4cmJQbHJIajB2aU51c09mR0RJ?=
 =?utf-8?B?RkZDS3dqREh6MWNRdU5pSG4xS1pZY1BCWlhwTEFoZU9VUys2MGNxMnEvWXZv?=
 =?utf-8?B?SnplMnBZTDRqYVg4MWI3VWEvMGlVSzAzTVJjRDZteVhKTmtFZlZkUzV5cG9q?=
 =?utf-8?B?WUZ5cEllb0cxdUZhRVdjMEdDeHFWMXJHb2ZMTU9hRyszRE5JVnFuUWRzU1Vv?=
 =?utf-8?B?dFJwNnRKcHFHbVRsOXBTZXVLZ1NsUGdLQURaaTJ0KytoNGUrS3ZOVkNjUnlZ?=
 =?utf-8?B?M09kMTdEajgvYTd1MVFwdFlkcDhkRlJEdHRjVE9CME9taHJiOUNUWFM4OW4r?=
 =?utf-8?B?WkRBT1Z5b3NLdGlrR1AzRHp2TEluRk8yVmc4N0dTbVRqVkpKY1VqSHdhc1Bn?=
 =?utf-8?B?V01FdHlVOWJKcnJNMzU0c000Wm1WM0ZnQ1l2Z1RuYUEvWERiVEhmaXM1bVMw?=
 =?utf-8?B?TmJocndQdXljYmN4UVMzTW9YbUlSMVFkNHVpTGdhNjZoSEZSMng1c2loM1VQ?=
 =?utf-8?B?eVhhZU11MUNvMVd2VWw4T200MzFGOVpWS2pZb3RUc3lHaUlXbUhQUnh1U1lJ?=
 =?utf-8?B?dVpDcTJ4RUVxaWNoSUdKK0tBUWFMQnFNMnczVkZ5K3ZBY3hxNUNXbzFQUWV2?=
 =?utf-8?B?MXZGL1BiMjR2eStvL2Npb3VHdUxlUE9Bb1Q1Ry92UTZkY3NtQVl0ZjN0RVQ3?=
 =?utf-8?B?MGhvZDh6eWUzaXo3R2ZoaTh2SGVoUDdaQ280ZGJlMi9TT29GditBdzVETStO?=
 =?utf-8?B?eVdXcFFqVm1DZitKVkZjNXFLYWQvdG1ORThKdUlWdGE5aDFyaVFBUG55Qlhj?=
 =?utf-8?B?dTJzaWkrZVhPUVIreHdPc0t5U1dFNXZuelNxdEVrRjh2LzB4d1U1STljdklj?=
 =?utf-8?B?MkQvUXBNeUdIM1JIcm0wMnpaODBheHZxY0RpZFIzQ2lsc1VxRCtHOEVId0dR?=
 =?utf-8?B?YnJHUWZsNldZUDJpMDFGNkk0cVJsSWlKOEpjMHJaRHU4eG1RMVlkWlBBNzZ5?=
 =?utf-8?B?RFM2S1FnMXRTS2pnbktKV1UxZ0NuM21rS1dMVW5GbGdDYU5aYTJIT1YxT085?=
 =?utf-8?B?V3FLNXFBb0ZmdjhabW95RVJseWtsaTlDZW1haUNHcFZ5c1cxdkQ4ZDhLQnVi?=
 =?utf-8?B?UjNpYkNEK1EyYnRiQjVWNUlhYUxTWVJBdXUxSklzekdXVXBHR3Z5KzR0NlMz?=
 =?utf-8?B?UUFCWnRpRmpLdlNlN0x1NFRjQm9ienQrSG1EL09BdU1oMFVWVHF5S0FhSks2?=
 =?utf-8?B?U2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 88d5be94-0518-4480-cf60-08dba7d4dab2
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2023 14:41:24.9017 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: StiLJZEi++wU28VdtZke1RjF1kIn8nTsl2JG8FOONgx5cXj50TrDbnl61tfxWGEalJywFJq8Dx2b6hu5Eba+3pq0lb4Zp8BE45OusVhNYCU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7337
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693233694; x=1724769694;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=58SHGYpAr22tnjMZ2hUwGAT21KQstHrqrBIBRMqoaSc=;
 b=nuYl6WnQ67QCzdj4zM+bmnGi0K+DrNlkpMSMJYK1qGKiCHcZUkU9cpa4
 eWVwPKzg1CffIAEZxLXI1qLu6oXRfcClVNC0+KcgFmCQ43CGHzADHQl7m
 QUWAeAX1/24lXOxMzgnqBSLLYsugYqFFD+vs7yHIUBKziWSOsSO9koyVV
 79dWN3DJlfFn4lBy4emMVoCfyUb5QiYhJcu2cyM83QdtmIyZmguFuTttF
 qnaSXcFfU7r1CEaRFRqRdk3D3XkYU9eYWXT6aeJ6iKaNV+wCXwMwclRbw
 gXd2J04Ne6CB32ZQxCTAmKSf5RDMFTFBI1IXxjqnFNa4ZYDjjO4e+eO7N
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nuYl6WnQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/7] overflow: add
 DEFINE_FLEX() for on-stack allocs
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Steven Zou <steven.zou@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gOC8yMy8yMyAyMjo1MiwgUHJ6ZW1layBLaXRzemVsIHdyb3RlOgo+IE9uIDgvMTgvMjMgMTI6
NDksIERhdmlkIExhaWdodCB3cm90ZToKPj4gRnJvbTogUHJ6ZW1layBLaXRzemVsCj4+PiBTZW50
OiBGcmlkYXksIEF1Z3VzdCAxOCwgMjAyMyAxMToyOCBBTQo+PiAuLi4KPj4+Pj4+IEknbSBub3Qg
c3VyZSB5b3Ugc2hvdWxkIGJlIGZvcmNpbmcgdGhlIG1lbXNldCgpIGVpdGhlci4KPj4+Pj4KPj4+
Pj4gVGhpcyBhbHJlYWR5IGdvdCBkaXNjdXNzZWQ6IGJldHRlciB0byBmYWlsIHNhZmUuCj4+Pj4K
Pj4+PiBQZXJoYXBzIGNhbGwgaXQgREVGSU5FX0ZMRVhfWigpIHRvIG1ha2UgdGhpcyBjbGVhciBh
bmQKPj4+PiBnaXZlIHRoZSBvcHRpb24gZm9yIGEgbm9uLXplcm9pbmcgdmVyc2lvbiBsYXRlci4K
Pj4+PiBOb3QgZXZlcnlvbmUgd2FudHMgdGhlIGV4cGVuc2Ugb2YgemVyb2luZyBldmVyeXRoaW5n
Lgo+Pj4KPj4+IHBlciBLZWVzLCB6ZXJvaW5nIHNob3VsZCBiZSByZW1vdmVkIGJ5IGNvbXBpbGVy
IHdoZW4gbm90IG5lZWRlZDoKPj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2ludGVsLXdpcmVk
LWxhbi8yMDIzMDgxMDExMjguQzRGMEZBMjM1QGtlZXNjb29rLwo+Pgo+PiBFeHBlY3QgaW4gdGhl
IG1vc3QgdHJpdmlhbCBjYXNlcyB0aGUgY29tcGlsZXIgaXMgcHJldHR5IG11Y2ggbmV2ZXIKPj4g
Z29pbmcgdG8gcmVtb3ZlIHRoZSB6ZXJvaW5nIG9mIHRoZSBkYXRhW10gcGFydC4KPj4KPj4gSSdt
IGFsc28gbm90IGF0IGFsbCBzdXJlIHdoYXQgaGFwcGVucyBpZiB0aGVyZSBpcyBhIGZ1bmN0aW9u
Cj4+IGNhbGwgYmV0d2VlbiB0aGUgaW5pdGlhbGlzYXRpb24gYW5kIGFueSBhc3NpZ25tZW50cy4K
Pj4KPj4gV2l0aCBhIGJpdCBvZiBlZmZvcnQgeW91IHNob3VsZCBiZSBhYmxlIHRvIHBhc3MgdGhl
ICc9IHt9Jwo+PiB0aHJvdWdoIGludG8gYW4gaW5uZXIgI2RlZmluZS4KPj4gUG9zc2libHkgd2l0
aCB0aGUgYWx0ZXJuYXRpdmUgb2YgYSBjYWxsZXItcHJvdmlkZXIKPj4gwqAgJz0geyAub2JqID0g
Y2FsbF9zdXBwbGllZF9pbml0aWFsaXNlciB9Jwo+PiBUaGUgJ25vdCBfWicgZm9ybSB3b3VsZCBw
YXNzIGFuIGVtcHR5IGFyZ3VtZW50Lgo+Pgo+PiDCoMKgwqDCoERhdmlkCj4gCj4gVGhhbmtzLCBt
YWtlcyBzZW5zZSwgdGhlcmUgY291bGQgYmUgYWxzbyBERUZJTkVfRkxFWF9DT1VOVEVECj4gKG9y
IERFRklORV9GTEVYX0JPVU5ERUQpIHRvIGNvdmVyIEtlZXMncyBfX2NvdW50ZWRfYnkoKSBjYXNl
cy4KPiAKPiBXb3VsZCB5b3UgbGlrZSBtZSB0byBjb3Zlci9jb252ZXJ0IGFueSBleGlzdGluZyBj
b2RlL3VzZSBjYXNlcyAoYXMgd2l0aCAKPiBvdGhlciBwYXRjaGVzIGluIHRoZSBzZXJpZXMsIHRv
IGhhdmUgc29tZSBleGFtcGxlcy9hY3R1YWwgdXNhZ2Ugb2YgbmV3bHkgCj4gaW50cm9kdWNlZCBt
YWNyb3MpPwoKSSBkaWQgc29tZSBtYW51YWwgc2VhcmNoZXMgYW5kIGZvdW5kIG5vIG9idmlvdXMg
Y2FuZGlkYXRlIDovCndpbGwgcG9zdCBuZXh0IHZlcnNpb24vUkZDIHdpdGhvdXQgX05PSU5JVCgp
IHZhcmlhbnQuCgo+IAo+Pgo+PiAtCj4+IFJlZ2lzdGVyZWQgQWRkcmVzcyBMYWtlc2lkZSwgQnJh
bWxleSBSb2FkLCBNb3VudCBGYXJtLCBNaWx0b24gS2V5bmVzLCAKPj4gTUsxIDFQVCwgVUsKPj4g
UmVnaXN0cmF0aW9uIE5vOiAxMzk3Mzg2IChXYWxlcykKPiAKPiAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxp
c3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
