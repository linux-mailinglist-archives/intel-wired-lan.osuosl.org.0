Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1D567255F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jan 2023 18:46:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE87440BAA;
	Wed, 18 Jan 2023 17:46:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE87440BAA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674063966;
	bh=V8gVlKSiZi6BaloZR+xK0QEpn8Dw4sHINEmcNM6HK5Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6NpsuJBGy9T8MEYYvcdIeYYFwgWmEBtimi3dUvtsP8m7fFHfSWl2wrSm2c7aFYW+d
	 IC0LsPIKJUJmTiyFHY5Ol+RbHZDuKRuO2QqS0IgvT1OytR8VnI9bjyIwIqsnu+Rt9G
	 R5dmS23x0/Ck1PQbjO2Ar5lWp9M5j0KX0axQC+BOa+VkOnGkY09T+Cj0N+mzOY1m0I
	 8N5V6MFNeO8p2/f/vo4oFIFvW+d/KhzfQDzQyhAHNqq5X4EZztOTSDE0FBeGK/6Jfx
	 QmsZqM5C6ecAHakbPhXeSpPhzRwJBmO+ujphIBkkGTHR+04Pis8kjymOg8gQpIbUp/
	 XxFnsGQbRwFPQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E6ZLNSqAZKvB; Wed, 18 Jan 2023 17:46:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BC8F740B6E;
	Wed, 18 Jan 2023 17:46:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC8F740B6E
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2BEE81BF2B5
 for <intel-wired-lan@osuosl.org>; Wed, 18 Jan 2023 17:46:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1102382090
 for <intel-wired-lan@osuosl.org>; Wed, 18 Jan 2023 17:46:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1102382090
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uapa-LoLEgLt for <intel-wired-lan@osuosl.org>;
 Wed, 18 Jan 2023 17:45:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D74FC81F99
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D74FC81F99
 for <intel-wired-lan@osuosl.org>; Wed, 18 Jan 2023 17:45:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="411287907"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="411287907"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 09:45:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="637366154"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="637366154"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 18 Jan 2023 09:45:49 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 18 Jan 2023 09:45:50 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 18 Jan 2023 09:45:49 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 18 Jan 2023 09:45:49 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 18 Jan 2023 09:45:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=egbaoMfj2+A43PduB2wZHrmVaoqprPQhffZA9/rl0EsoZKyuDEgW93N3FSHz4dMgdrehGyydX0ibGz2Z5uDIQeGtj670H4/mmodc8ayu57+3kufJvIvnirp0jsw5pS7GhzgL7///jVFKPuvV6bRZZciUeC9mCKMUp2RPjiWjd6mEuRSOir1LFtu/AJk3HfMLjCfHWaBzh1eav/aKFuFD6uaWWRQmyrdHONrJOCZ98foif7xR6WuYGbqf3xId+GOaH0U9MTcaeS7vnd4C/MKxqooFYCUF10D8AvBtJhn3/z7/bzR1kCJk2cp9eAm96D4lTTbCHiBTcgWX/17wclRY7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gxziaup+Efb4eUikxgzUbdjmkrIl8soD5q73RSqx0ME=;
 b=N4g2o94cr1kBLnrWVBfiAquoo+swp/z7hskSGBfo+ul9pTIhKVHYLJX7sOxDig/3TXrsp2clCLHDn8YkB8cDUYl7K531rhip/A70H4v1gz52sli+GEisiULrNKSqhf0LzecU42ftR+hJPbL6ISN5PR+lpG4yLSway46p/eKyncPEcCzAbZ3H0ZlcVPysYSGa0aNQMvijFJycjrq9s1wUCIYC/OJZrwMXvmq2z6LhPJfOXcwDdFrH81qbOOeAMufVxelQG8FhLHWML/RO+k0yGKPtaOCirv8U0Bgb1Rwg+rUdS/9jtxESW5tTsVR4Fh4UXQhUTUzg31i79trqDfMXTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5636.namprd11.prod.outlook.com (2603:10b6:5:357::21)
 by PH7PR11MB6698.namprd11.prod.outlook.com (2603:10b6:510:1ac::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Wed, 18 Jan
 2023 17:45:46 +0000
Received: from CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::ae83:22d0:852a:34f7]) by CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::ae83:22d0:852a:34f7%9]) with mapi id 15.20.6002.013; Wed, 18 Jan 2023
 17:45:46 +0000
Message-ID: <e0a03f60-04c9-af2c-9030-35fa4260a5f2@intel.com>
Date: Wed, 18 Jan 2023 09:45:44 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>, <intel-wired-lan@osuosl.org>
References: <20230113222319.111-1-paul.m.stillwell.jr@intel.com>
 <20230113222319.111-3-paul.m.stillwell.jr@intel.com>
 <3c92045e-9782-cd6c-1ad7-6e514cdff858@intel.com>
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
In-Reply-To: <3c92045e-9782-cd6c-1ad7-6e514cdff858@intel.com>
X-ClientProxiedBy: BY3PR04CA0015.namprd04.prod.outlook.com
 (2603:10b6:a03:217::20) To CO6PR11MB5636.namprd11.prod.outlook.com
 (2603:10b6:5:357::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5636:EE_|PH7PR11MB6698:EE_
X-MS-Office365-Filtering-Correlation-Id: fc9d8672-0dea-473a-a68a-08daf97bd42a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Xvv087t9mZMXk4vaE1J9vt77kjjcsypaMHofraeB9bslRRhetUSjh3hF31repHOpUjksf4rhS1uSY0WdQ06zSI8RkX0SzagHCg4PU9J7bST96P/V22EIhkZVbTSTXkGtiaQe7DQyj1CAr7re2ZVqcAZzIWUgbDG1TNrldHORPaQuOI6TQ6TV/ztCCEeuTywZK2cQ3VU+aLeWZZy9kA1Lnc90r4IBf8cvOPbOg2TtkjQZR8MuwUdq96SoExAVi8zQD0uOCm7yT/Nj7hAJxraJ8jRO8x5fF/zWnpePmlbmLexp1UkzwgiHKCcb42VTA1W9UL/9YsobZmsHxKlWE+JKtXjvC8s2sG1eaQOi0ayqoVZWHIVdQ/TmiaKno69recFtbjzrdAgflm7MidPuJEN6onrdjnbNVBop2PA3YPJiQpG8881Or4ytxgWsumxfGz3Jx0jghb12CZ2cju0hZVVINKlfaXQIPx2JBG866hPOVhUsiAvGb6iFtyOpRuw35fyYBxMD5PtElelPj7JxgmTnJ28jECeFYU0Il/KdE3gGgcll9DfUcWP7RG7l4Q/dvK+4UMKeacUjsAUHlsidGH9sqf/o0STIydCksSJcHzMuI4J+RJdETu/EOaQxAevo9khRyFAzbEUjvWU7OohiDQ/XQ2IeS9vDV2r4YV0UpX08aFh27pu5LC5KFDN2FY3a1o0O5FbkePmZ1STu9Mc05//eRsZw2pr88kDbc5dx6x8XoEoRSuBnWsqim4CEq3pQmaMmjsdoQM1u8kINoQqCdDg/ZA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(136003)(346002)(366004)(396003)(451199015)(6506007)(36756003)(26005)(6512007)(53546011)(186003)(966005)(82960400001)(6486002)(478600001)(38100700002)(83380400001)(86362001)(2616005)(31696002)(30864003)(66556008)(8936002)(5660300002)(31686004)(66946007)(316002)(2906002)(8676002)(66476007)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bG1MMlpVTHJwZTJ3VksyaHRvOWdvV0ZxTXRUWUlOenVNODB2UUxCTXB0TEVa?=
 =?utf-8?B?cEFIc3duWHlFbHVYTlBweTdEZUkzRG1PYzhmSG51QVN6dGhBOFR6bHNRL0Qw?=
 =?utf-8?B?RUhnc2gyY1IrcEptVFJwVVNnL0ppc1JkbkNPTkdDZjZSSE05TWttbVdHemdR?=
 =?utf-8?B?SERyVGZCbDF2djRJS0tBRkFhUG9RS3JKd3lYaDIrRlc0WnQ1VUUvQ2N2bVZC?=
 =?utf-8?B?MmJ6RjdvcmpqTHZZcmNEYkd4YnhMTzg5a1g3NFBRVDliWlk2a0tDemhJYW9y?=
 =?utf-8?B?ZFI0ZHh3ZHp1S3dteDB0ZmFqU1hzRHUrRERIMFRaL1ZtU3dzR01BaXh2RlVh?=
 =?utf-8?B?QU1MSmRwMmp4cURPYlVpUDQ5WkxpTlBPaGxvVkk4ek0wZ3RoZkhMbys2U0ZS?=
 =?utf-8?B?ZUVPR1BwMEpsYWxuWnpLWDVMT1k1V0srclFXV2tPczZ0MmxQZGZLblBnaUNx?=
 =?utf-8?B?K3hWZ2RBRnRxYi8rQVdjY0lLeU1keGZzRVVtcDRsSThxL25zZHkzSjE2anlo?=
 =?utf-8?B?RWxtQ2lSNkZVMndDcFg0NkhzSXFvd2pBbGxQejIwZldpVUVpM1kvaGE0ejRE?=
 =?utf-8?B?SFdnTVBZME9hSjZpRDBrVzNRTGxNbllRM3UrdXhzSWdENGNtYkw5eVNicUpj?=
 =?utf-8?B?dUhQL3lOZ1oxQzU5M2NlSUtNdDB5bnhBTlhNbThOa1cxRGNlSVBWL2FMZmFG?=
 =?utf-8?B?cjFvMXJVZklwSEJPTW40aG1ld1FkZ1NwMCtvRm5udnp3cGY1TXRKME1ZZVpx?=
 =?utf-8?B?dGUzcW1BdzNuR05XbGpmVitkcE5tdUhGUE4yTXVtT0xsWloxdFRNQVZGVHdw?=
 =?utf-8?B?SlRCb29hUndRNCt3ZEovbDRKS08rRXR5N1pDcVhGTWtyaE84SHdSbmtmYWtm?=
 =?utf-8?B?WXRIVldIdWNCZjBmbkt3YlYybEo4SkxBNGZVMHBGL2YrNnhlZjRCMW5BUlR2?=
 =?utf-8?B?SnpQRngxSkg5dEV2MlJJTUFLRFd6YWRwdXBUbXB6WFhoKzROVUxlVWFZUGFI?=
 =?utf-8?B?Z3ZDWjNSSXF6TXJsS2NoTmpUL2QzenZTUzYrcDZhM01ML0o2ZEtXNGNFQXJ1?=
 =?utf-8?B?eURkeFVUSmNvT0cxbm5HVU9XNld5U3h6UGRXYmRLUTBYOTZMMjFoLzVzMWVa?=
 =?utf-8?B?MVZHRXN6dHNOV2Fab3gyK0pOLzEyZHBvRm5MbGd3ZDhKKzFYbW1JcE9QZCtx?=
 =?utf-8?B?TkQxSEczaVNDb2hkckNVdmpVZjZrdlo4aFJ0VEs5TVZqL2xtNk8wTFZzZXc1?=
 =?utf-8?B?WHhQcEhjdXlZSzhMSDJzcVR4RTFwRm5BZmxwUHowM2JkM2Z6ZDJJR0N1MjAr?=
 =?utf-8?B?QkE4QWJUNTlpT280SlppMXExZFJxVzkxb3lSblZTcll5ZURBMEtsSzdqSWhj?=
 =?utf-8?B?RW5kVWNaYnRlRllYWlR2clBHMkNPOHNKZlFYbmxGS0x5RUZPdlpjU0xOZG81?=
 =?utf-8?B?dksvZG52UFdtUURMTG9PdHJnNDBGZ1dVZGZqcnljcWM4K0hjOTROb0E2S2xv?=
 =?utf-8?B?OHlhbForQitZYTBoU1llb1VhdzFLaks1N2s3YkU3eURYejdtU0dVUzRiaVpj?=
 =?utf-8?B?UjBCZGFSUlB3dDVCT3NRb3FRYVc4UTNEcExoa3J1TEdBT2pveDdUTDRNNmg3?=
 =?utf-8?B?QkJUVk82T2lDeThQSEN4T2w4VWxQL25MZEtFZW5zRlFXdldCRkQ3WEZmK1E2?=
 =?utf-8?B?N1dONlJFdmYvMDcxbzhtaks5WXIwSEY2TlJHWmkwbHNoSER2Zzc4dTJ0aVh1?=
 =?utf-8?B?cGZMcmZMOHFvN1ZkK1BHWEVZZjhQcVI4V0Y1clptYms0TkxTNEkyTlMwVXBH?=
 =?utf-8?B?N0JXT1Z5aWFHZ3dCWTVXUlJVWHVuVEIvUkRLVW9IcytxczVuMzJ1TGtpelIx?=
 =?utf-8?B?NEw2VEQ0L2NoYjZ5bXFIazlDYzRpWEJVS3AwektYTzFPaUVkeUtCMXhQa0pX?=
 =?utf-8?B?YUhpaTF2NENOam1zRWV5M1Q0WE1lSHVnMDkrbGVWejNqTFFQUnQrRHZEY2NG?=
 =?utf-8?B?RGJsMGJPV0xHVHVKbnpQVzRSZFRYQ1N5NDA2cStkclhxOWVzR0tzQUJUT1RY?=
 =?utf-8?B?T1BzNXVQUE91ZlA3Z01XUWJhU2EyZU5GcnJWS2hpL2k0Sm05QXJ4N21ja2Ix?=
 =?utf-8?B?bk9vd1VjOXd5UWhsYmphb1Q4eDZXSzJnQ0RoUEVQWUpRdDFzajIxZm91ckNt?=
 =?utf-8?B?eVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fc9d8672-0dea-473a-a68a-08daf97bd42a
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2023 17:45:46.4548 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IUc3LkRfEoYsCKh/77p3TFWv1RslpC8+62dzwOX2NYZ2kXe7yT1/Y27R8J22E8CprwyfrAzvkCdd7uUG7E+v5UHuxMcw6M0UKumMmYBtxFo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6698
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674063957; x=1705599957;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=y0YuZ2ArhUY0DLvK2VZwRJvIrHWcmIrB3ihw6wLlECw=;
 b=aI7UGCFMmH3JIVYOi56bvsz1qbv7NNj+rHZDPZMDfmjH+LkwJS0nS9tQ
 5vLwT6yZcgelPRMeR+LGfPlOkF4G4xa22oIFsLZyJZQmgt33NZEuOo8m2
 YlSYs9G2IuUF7P9Ke6zdlrjTnTHY4yIRsplPIQTfkxuxPN+mlVS5hDa7M
 LJ01ZhHo9OvZlpdNDNXcaV6OX/gR/oCY6SwC4f+k/gHfmAmAfhSaGKz3c
 9QOST0JRQkfw2M6OJcUHiTbWH3EEicIAvK9XOjO58wmtWzLKM+YMGbVWP
 SRWwvbACwEnQFy+bsoDPgEPeF5hg/N6aHhIP/SUiCHc0FD/NHcGa8BHGO
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aI7UGCFM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 2/5] ice: enable devlink
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/13/2023 4:21 PM, Jacob Keller wrote:
> 
> 
> On 1/13/2023 2:23 PM, Paul M Stillwell Jr wrote:
>> Users want the ability to debug FW issues by retrieving the
>> FW logs from the E8xx devices. Enable devlink to query the driver
>> to see if the NVM image allows FW logging and to see if FW
>> logging is currently running. The set command is not supported
>> at this time.
>>
>> This is the beginning of the v2 for FW logging.
> 
> This also includes a bunch of boilerplate code needed by FW logging v2,
> and that's not clearly mentioned in the commit message. That is probably
> clear to most revewiers though.
> 
> In theory you could split that stuff out to a separate patch and only
> include the bare minimum necessary to check of NVM supports fw logging
> in this patch. I wouldnt' change this unless you have a reason to make
> another v7 though.
> 

I didn't want to have a patch that doesn't actually do anything but add 
helper code so I didn't do that.

> Thanks,
> Jake
> 
>>
>> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
>>
>>      pick bfdfb2dc6192 ice: add ability to query/set FW log level and resolution
>> ---
>>   drivers/net/ethernet/intel/ice/Makefile       |   3 +-
>>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  81 ++++++++++++
>>   drivers/net/ethernet/intel/ice/ice_common.c   |   2 +
>>   drivers/net/ethernet/intel/ice/ice_devlink.c  |  73 ++++++++++-
>>   drivers/net/ethernet/intel/ice/ice_fwlog.c    | 117 ++++++++++++++++++
>>   drivers/net/ethernet/intel/ice/ice_fwlog.h    |  52 ++++++++
>>   drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
>>   7 files changed, 330 insertions(+), 2 deletions(-)
>>   create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.c
>>   create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.h
>>
>> diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
>> index f269952d207d..6e4680ad097c 100644
>> --- a/drivers/net/ethernet/intel/ice/Makefile
>> +++ b/drivers/net/ethernet/intel/ice/Makefile
>> @@ -33,7 +33,8 @@ ice-y := ice_main.o	\
>>   	 ice_lag.o	\
>>   	 ice_ethtool.o  \
>>   	 ice_repr.o	\
>> -	 ice_tc_lib.o
>> +	 ice_tc_lib.o	\
>> +	 ice_fwlog.o
>>   ice-$(CONFIG_PCI_IOV) +=	\
>>   	ice_sriov.o		\
>>   	ice_virtchnl.o		\
>> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>> index e1b95cc3a538..0d560287ec23 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>> @@ -2038,6 +2038,83 @@ struct ice_aqc_event_lan_overflow {
>>   	u8 reserved[8];
>>   };
>>   
>> +enum ice_aqc_fw_logging_mod {
>> +	ICE_AQC_FW_LOG_ID_GENERAL = 0,
>> +	ICE_AQC_FW_LOG_ID_CTRL,
>> +	ICE_AQC_FW_LOG_ID_LINK,
>> +	ICE_AQC_FW_LOG_ID_LINK_TOPO,
>> +	ICE_AQC_FW_LOG_ID_DNL,
>> +	ICE_AQC_FW_LOG_ID_I2C,
>> +	ICE_AQC_FW_LOG_ID_SDP,
>> +	ICE_AQC_FW_LOG_ID_MDIO,
>> +	ICE_AQC_FW_LOG_ID_ADMINQ,
>> +	ICE_AQC_FW_LOG_ID_HDMA,
>> +	ICE_AQC_FW_LOG_ID_LLDP,
>> +	ICE_AQC_FW_LOG_ID_DCBX,
>> +	ICE_AQC_FW_LOG_ID_DCB,
>> +	ICE_AQC_FW_LOG_ID_XLR,
>> +	ICE_AQC_FW_LOG_ID_NVM,
>> +	ICE_AQC_FW_LOG_ID_AUTH,
>> +	ICE_AQC_FW_LOG_ID_VPD,
>> +	ICE_AQC_FW_LOG_ID_IOSF,
>> +	ICE_AQC_FW_LOG_ID_PARSER,
>> +	ICE_AQC_FW_LOG_ID_SW,
>> +	ICE_AQC_FW_LOG_ID_SCHEDULER,
>> +	ICE_AQC_FW_LOG_ID_TXQ,
>> +	ICE_AQC_FW_LOG_ID_RSVD,
>> +	ICE_AQC_FW_LOG_ID_POST,
>> +	ICE_AQC_FW_LOG_ID_WATCHDOG,
>> +	ICE_AQC_FW_LOG_ID_TASK_DISPATCH,
>> +	ICE_AQC_FW_LOG_ID_MNG,
>> +	ICE_AQC_FW_LOG_ID_SYNCE,
>> +	ICE_AQC_FW_LOG_ID_HEALTH,
>> +	ICE_AQC_FW_LOG_ID_TSDRV,
>> +	ICE_AQC_FW_LOG_ID_PFREG,
>> +	ICE_AQC_FW_LOG_ID_MDLVER,
>> +	ICE_AQC_FW_LOG_ID_MAX,
>> +};
>> +
>> +/* Set FW Logging configuration (indirect 0xFF30)
>> + * Register for FW Logging (indirect 0xFF31)
>> + * Query FW Logging (indirect 0xFF32)
>> + */
>> +struct ice_aqc_fw_log {
>> +	u8 cmd_flags;
>> +#define ICE_AQC_FW_LOG_CONF_UART_EN	BIT(0)
>> +#define ICE_AQC_FW_LOG_CONF_AQ_EN	BIT(1)
>> +#define ICE_AQC_FW_LOG_QUERY_REGISTERED	BIT(2)
>> +#define ICE_AQC_FW_LOG_CONF_SET_VALID	BIT(3)
>> +#define ICE_AQC_FW_LOG_AQ_REGISTER	BIT(0)
>> +#define ICE_AQC_FW_LOG_AQ_QUERY		BIT(2)
>> +
>> +	u8 rsp_flag;
>> +	__le16 fw_rt_msb;
>> +	union {
>> +		struct {
>> +			__le32 fw_rt_lsb;
>> +		} sync;
>> +		struct {
>> +			__le16 log_resolution;
>> +#define ICE_AQC_FW_LOG_MIN_RESOLUTION		(1)
>> +#define ICE_AQC_FW_LOG_MAX_RESOLUTION		(128)
>> +
>> +			__le16 mdl_cnt;
>> +		} cfg;
>> +	} ops;
>> +	__le32 addr_high;
>> +	__le32 addr_low;
>> +};
>> +
>> +/* Response Buffer for:
>> + *    Set Firmware Logging Configuration (0xFF30)
>> + *    Query FW Logging (0xFF32)
>> + */
>> +struct ice_aqc_fw_log_cfg_resp {
>> +	__le16 module_identifier;
>> +	u8 log_level;
>> +	u8 rsvd0;
>> +};
>> +
>>   /**
>>    * struct ice_aq_desc - Admin Queue (AQ) descriptor
>>    * @flags: ICE_AQ_FLAG_* flags
>> @@ -2114,6 +2191,7 @@ struct ice_aq_desc {
>>   		struct ice_aqc_add_update_free_vsi_resp add_update_free_vsi_res;
>>   		struct ice_aqc_download_pkg download_pkg;
>>   		struct ice_aqc_driver_shared_params drv_shared_params;
>> +		struct ice_aqc_fw_log fw_log;
>>   		struct ice_aqc_set_mac_lb set_mac_lb;
>>   		struct ice_aqc_alloc_free_res_cmd sw_res_ctrl;
>>   		struct ice_aqc_set_mac_cfg set_mac_cfg;
>> @@ -2294,6 +2372,9 @@ enum ice_adminq_opc {
>>   
>>   	/* Standalone Commands/Events */
>>   	ice_aqc_opc_event_lan_overflow			= 0x1001,
>> +
>> +	/* FW Logging Commands */
>> +	ice_aqc_opc_fw_logs_query			= 0xFF32,
>>   };
>>   
>>   #endif /* _ICE_ADMINQ_CMD_H_ */
>> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
>> index 39ed1c6877f4..ef7e5d7c18f2 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_common.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
>> @@ -879,6 +879,8 @@ int ice_init_hw(struct ice_hw *hw)
>>   	if (status)
>>   		goto err_unroll_cqinit;
>>   
>> +	ice_fwlog_set_supported(hw);
>> +
>>   	status = ice_clear_pf_cfg(hw);
>>   	if (status)
>>   		goto err_unroll_cqinit;
>> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
>> index 24023852a1d7..0e76fd19b61a 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
>> @@ -369,6 +369,13 @@ static int ice_devlink_info_get(struct devlink *devlink,
>>   	return err;
>>   }
>>   
>> +enum ice_devlink_param_id {
>> +	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
>> +	ICE_DEVLINK_PARAM_ID_TX_BALANCE,
>> +	ICE_DEVLINK_PARAM_ID_FWLOG_SUPPORTED,
>> +	ICE_DEVLINK_PARAM_ID_FWLOG_ENABLED,
>> +};
>> +
>>   /**
>>    * ice_devlink_reload_empr_start - Start EMP reset to activate new firmware
>>    * @pf: pointer to the pf instance
>> @@ -1383,6 +1390,50 @@ ice_devlink_enable_iw_validate(struct devlink *devlink, u32 id,
>>   	return 0;
>>   }
>>   
>> +static int
>> +ice_devlink_fwlog_supported_get(struct devlink *devlink, u32 id,
>> +				struct devlink_param_gset_ctx *ctx)
>> +{
>> +	struct ice_pf *pf = devlink_priv(devlink);
>> +
>> +	/* only support fw log commands on PF 0 */
>> +	if (pf->hw.bus.func)
>> +		return -EOPNOTSUPP;
>> +
>> +	ctx->val.vbool = ice_fwlog_supported(&pf->hw);
>> +	return 0;
>> +}
>> +
>> +static int
>> +ice_devlink_fwlog_supported_set(struct devlink *devlink, u32 id,
>> +				struct devlink_param_gset_ctx *ctx)
>> +{
>> +	/* set operation is unsupported */
>> +	return -EOPNOTSUPP;
>> +}
>> +
>> +static int
>> +ice_devlink_fwlog_enabled_get(struct devlink *devlink, u32 id,
>> +			      struct devlink_param_gset_ctx *ctx)
>> +{
>> +	struct ice_pf *pf = devlink_priv(devlink);
>> +
>> +	/* only support fw log commands on PF 0 */
>> +	if (pf->hw.bus.func)
>> +		return -EOPNOTSUPP;
>> +
>> +	ctx->val.vbool = pf->hw.fwlog_ena;
>> +	return 0;
>> +}
>> +
>> +static int
>> +ice_devlink_fwlog_enabled_set(struct devlink *devlink, u32 id,
>> +			      struct devlink_param_gset_ctx *ctx)
>> +{
>> +	/* set operation is unsupported at this time */
>> +	return -EOPNOTSUPP;
>> +}
>> +
>>   static const struct devlink_param ice_devlink_params[] = {
>>   	DEVLINK_PARAM_GENERIC(ENABLE_ROCE, BIT(DEVLINK_PARAM_CMODE_RUNTIME),
>>   			      ice_devlink_enable_roce_get,
>> @@ -1392,7 +1443,18 @@ static const struct devlink_param ice_devlink_params[] = {
>>   			      ice_devlink_enable_iw_get,
>>   			      ice_devlink_enable_iw_set,
>>   			      ice_devlink_enable_iw_validate),
>> -
>> +	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_FWLOG_SUPPORTED,
>> +			     "fwlog_supported", DEVLINK_PARAM_TYPE_BOOL,
>> +			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
>> +			     ice_devlink_fwlog_supported_get,
>> +			     ice_devlink_fwlog_supported_set,
>> +			     NULL),
>> +	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_FWLOG_ENABLED,
>> +			     "fwlog_enabled", DEVLINK_PARAM_TYPE_BOOL,
>> +			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
>> +			     ice_devlink_fwlog_enabled_get,
>> +			     ice_devlink_fwlog_enabled_set,
>> +			     NULL),
>>   };
>>   
>>   static void ice_devlink_free(void *devlink_ptr)
>> @@ -1488,6 +1550,15 @@ int ice_devlink_register_params(struct ice_pf *pf)
>>   					   DEVLINK_PARAM_GENERIC_ID_ENABLE_ROCE,
>>   					   value);
>>   
>> +	value.vbool = false;
>> +	devlink_param_driverinit_value_set(devlink,
>> +					   ICE_DEVLINK_PARAM_ID_FWLOG_SUPPORTED,
>> +					   value);
>> +
>> +	devlink_param_driverinit_value_set(devlink,
>> +					   ICE_DEVLINK_PARAM_ID_FWLOG_ENABLED,
>> +					   value);
>> +
>>   	return 0;
>>   }
>>   
>> diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
>> new file mode 100644
>> index 000000000000..fac970f03dd0
>> --- /dev/null
>> +++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
>> @@ -0,0 +1,117 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/* Copyright (c) 2022, Intel Corporation. */
>> +
>> +#include "ice_common.h"
>> +#include "ice_fwlog.h"
>> +
>> +/**
>> + * ice_fwlog_supported - Cached for whether FW supports FW logging or not
>> + * @hw: pointer to the HW structure
>> + *
>> + * This will always return false if called before ice_init_hw(), so it must be
>> + * called after ice_init_hw().
>> + */
>> +bool ice_fwlog_supported(struct ice_hw *hw)
>> +{
>> +	return hw->fwlog_supported;
>> +}
>> +
>> +/**
>> + * ice_aq_fwlog_get - Get the current firmware logging configuration (0xFF32)
>> + * @hw: pointer to the HW structure
>> + * @cfg: firmware logging configuration to populate
>> + */
>> +static int
>> +ice_aq_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
>> +{
>> +	struct ice_aqc_fw_log_cfg_resp *fw_modules;
>> +	struct ice_aqc_fw_log *cmd;
>> +	struct ice_aq_desc desc;
>> +	u16 module_id_cnt;
>> +	int status;
>> +	void *buf;
>> +	int i;
>> +
>> +	memset(cfg, 0, sizeof(*cfg));
>> +
>> +	buf = kzalloc(ICE_AQ_MAX_BUF_LEN, GFP_KERNEL);
>> +	if (!buf)
>> +		return -ENOMEM;
>> +
>> +	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_fw_logs_query);
>> +	cmd = &desc.params.fw_log;
>> +
>> +	cmd->cmd_flags = ICE_AQC_FW_LOG_AQ_QUERY;
>> +
>> +	status = ice_aq_send_cmd(hw, &desc, buf, ICE_AQ_MAX_BUF_LEN, NULL);
>> +	if (status) {
>> +		ice_debug(hw, ICE_DBG_FW_LOG, "Failed to get FW log configuration\n");
>> +		goto status_out;
>> +	}
>> +
>> +	module_id_cnt = le16_to_cpu(cmd->ops.cfg.mdl_cnt);
>> +	if (module_id_cnt < ICE_AQC_FW_LOG_ID_MAX) {
>> +		ice_debug(hw, ICE_DBG_FW_LOG, "FW returned less than the expected number of FW log module IDs\n");
>> +	} else if (module_id_cnt > ICE_AQC_FW_LOG_ID_MAX) {
>> +		ice_debug(hw, ICE_DBG_FW_LOG, "FW returned more than expected number of FW log module IDs, setting module_id_cnt to software expected max %u\n",
>> +			  ICE_AQC_FW_LOG_ID_MAX);
>> +		module_id_cnt = ICE_AQC_FW_LOG_ID_MAX;
>> +	}
>> +
>> +	cfg->log_resolution = le16_to_cpu(cmd->ops.cfg.log_resolution);
>> +	if (cmd->cmd_flags & ICE_AQC_FW_LOG_CONF_AQ_EN)
>> +		cfg->options |= ICE_FWLOG_OPTION_ARQ_ENA;
>> +	if (cmd->cmd_flags & ICE_AQC_FW_LOG_CONF_UART_EN)
>> +		cfg->options |= ICE_FWLOG_OPTION_UART_ENA;
>> +	if (cmd->cmd_flags & ICE_AQC_FW_LOG_QUERY_REGISTERED)
>> +		cfg->options |= ICE_FWLOG_OPTION_IS_REGISTERED;
>> +
>> +	fw_modules = (struct ice_aqc_fw_log_cfg_resp *)buf;
>> +
>> +	for (i = 0; i < module_id_cnt; i++) {
>> +		struct ice_aqc_fw_log_cfg_resp *fw_module = &fw_modules[i];
>> +
>> +		cfg->module_entries[i].module_id =
>> +			le16_to_cpu(fw_module->module_identifier);
>> +		cfg->module_entries[i].log_level = fw_module->log_level;
>> +	}
>> +
>> +status_out:
>> +	kfree(buf);
>> +	return status;
>> +}
>> +
>> +/**
>> + * ice_fwlog_set_supported - Set if FW logging is supported by FW
>> + * @hw: pointer to the HW struct
>> + *
>> + * If FW returns success to the ice_aq_fwlog_get call then it supports FW
>> + * logging, else it doesn't. Set the fwlog_supported flag accordingly.
>> + *
>> + * This function is only meant to be called during driver init to determine if
>> + * the FW support FW logging.
>> + */
>> +void ice_fwlog_set_supported(struct ice_hw *hw)
>> +{
>> +	struct ice_fwlog_cfg *cfg;
>> +	int status;
>> +
>> +	hw->fwlog_supported = false;
>> +
>> +	cfg = kzalloc(sizeof(*cfg), GFP_KERNEL);
>> +	if (!cfg)
>> +		return;
>> +
>> +	/* don't call ice_fwlog_get() because that would overwrite the cached
>> +	 * configuration from the call to ice_fwlog_init(), which is expected to
>> +	 * be called prior to this function
>> +	 */
>> +	status = ice_aq_fwlog_get(hw, cfg);
>> +	if (status)
>> +		ice_debug(hw, ICE_DBG_FW_LOG, "ice_aq_fwlog_get failed, FW logging is not supported on this version of FW, status %d\n",
>> +			  status);
>> +	else
>> +		hw->fwlog_supported = true;
>> +
>> +	kfree(cfg);
>> +}
>> diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.h b/drivers/net/ethernet/intel/ice/ice_fwlog.h
>> new file mode 100644
>> index 000000000000..3a2c83502763
>> --- /dev/null
>> +++ b/drivers/net/ethernet/intel/ice/ice_fwlog.h
>> @@ -0,0 +1,52 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/* Copyright (C) 2022, Intel Corporation. */
>> +
>> +#ifndef _ICE_FWLOG_H_
>> +#define _ICE_FWLOG_H_
>> +#include "ice_adminq_cmd.h"
>> +
>> +struct ice_hw;
>> +
>> +/* Only a single log level should be set and all log levels under the set value
>> + * are enabled, e.g. if log level is set to ICE_FW_LOG_LEVEL_VERBOSE, then all
>> + * other log levels are included (except ICE_FW_LOG_LEVEL_NONE)
>> + */
>> +enum ice_fwlog_level {
>> +	ICE_FWLOG_LEVEL_NONE = 0,
>> +	ICE_FWLOG_LEVEL_ERROR = 1,
>> +	ICE_FWLOG_LEVEL_WARNING = 2,
>> +	ICE_FWLOG_LEVEL_NORMAL = 3,
>> +	ICE_FWLOG_LEVEL_VERBOSE = 4,
>> +	ICE_FWLOG_LEVEL_INVALID, /* all values >= this entry are invalid */
>> +};
>> +
>> +struct ice_fwlog_module_entry {
>> +	/* module ID for the corresponding firmware logging event */
>> +	u16 module_id;
>> +	/* verbosity level for the module_id */
>> +	u8 log_level;
>> +};
>> +
>> +struct ice_fwlog_cfg {
>> +	/* list of modules for configuring log level */
>> +	struct ice_fwlog_module_entry module_entries[ICE_AQC_FW_LOG_ID_MAX];
>> +	/* options used to configure firmware logging */
>> +	u16 options;
>> +#define ICE_FWLOG_OPTION_ARQ_ENA		BIT(0)
>> +#define ICE_FWLOG_OPTION_UART_ENA		BIT(1)
>> +	/* set before calling ice_fwlog_init() so the PF registers for firmware
>> +	 * logging on initialization
>> +	 */
>> +#define ICE_FWLOG_OPTION_REGISTER_ON_INIT	BIT(2)
>> +	/* set in the ice_fwlog_get() response if the PF is registered for FW
>> +	 * logging events over ARQ
>> +	 */
>> +#define ICE_FWLOG_OPTION_IS_REGISTERED		BIT(3)
>> +
>> +	/* minimum number of log events sent per Admin Receive Queue event */
>> +	u16 log_resolution;
>> +};
>> +
>> +void ice_fwlog_set_supported(struct ice_hw *hw);
>> +bool ice_fwlog_supported(struct ice_hw *hw);
>> +#endif /* _ICE_FWLOG_H_ */
>> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
>> index 126605b7eb3b..1284fe8d78f2 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_type.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
>> @@ -17,6 +17,7 @@
>>   #include "ice_protocol_type.h"
>>   #include "ice_sbq_cmd.h"
>>   #include "ice_vlan_mode.h"
>> +#include "ice_fwlog.h"
>>   
>>   static inline bool ice_is_tc_ena(unsigned long bitmap, u8 tc)
>>   {
>> @@ -859,6 +860,9 @@ struct ice_hw {
>>   	u8 fw_patch;		/* firmware patch version */
>>   	u32 fw_build;		/* firmware build number */
>>   
>> +	bool fwlog_supported; /* does hardware support FW logging? */
>> +	bool fwlog_ena; /* currently logging? */
>> +
>>   /* Device max aggregate bandwidths corresponding to the GL_PWR_MODE_CTL
>>    * register. Used for determining the ITR/INTRL granularity during
>>    * initialization.
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
