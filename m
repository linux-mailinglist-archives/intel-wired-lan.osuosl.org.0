Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A107AD395
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Sep 2023 10:41:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DC900405A7;
	Mon, 25 Sep 2023 08:41:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DC900405A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695631267;
	bh=kmNQm2XuYNIj8VOxqkrXenL1CruJhATi5irg4Yo4Mqo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fmvHZundqHfZrFwS4i3FG1Xt/On64G8z5ZV1NY63OvcEjaxbpohv5fhFQD8PnNhUM
	 3cSJ2cIVNKzPQgLkhKghffIMwdQR3njTPObKGvP2I2m88imRE8cVdKwzDvdADKW74K
	 tAQtsKMoMbtxw3E98OETKehdcADsMZssP/SiBgwiw0zaRN/XvQ22Rmin38Qk/SExFt
	 656B+tHt8E/BN/DRODXAhG7wP7FvjgWLdCu9qbX9AOvw82CD2Ku86L/uoTHBVQod4a
	 xV8b1HdsjQ1l7hHUb4T+mnuzgN4eLdzTFb56/siJvhWqZcJiE7ov2S3ThezXWlZUZM
	 yQ7ck3XJ1eBig==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KPsPQ7hcaeYr; Mon, 25 Sep 2023 08:41:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB1044094C;
	Mon, 25 Sep 2023 08:41:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB1044094C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 04B1A1BF365
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 08:41:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D2FE8404ED
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 08:41:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D2FE8404ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ud0TqXfI_tmo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Sep 2023 08:40:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C029A400F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 08:40:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C029A400F9
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="371522361"
X-IronPort-AV: E=Sophos;i="6.03,174,1694761200"; d="scan'208";a="371522361"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 01:40:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="818537846"
X-IronPort-AV: E=Sophos;i="6.03,174,1694761200"; d="scan'208";a="818537846"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Sep 2023 01:40:57 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 25 Sep 2023 01:40:56 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 25 Sep 2023 01:40:56 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 25 Sep 2023 01:40:56 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 25 Sep 2023 01:40:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IGBv5lqNenqAliPg0/kP59dSqAs5uLj+2hPwpjMdCKBtCQQ+O0CdAbrUmHzLVL/+u7PPcM99r/nqha/aZ4EiSHa+JhHQrm/NwhSz1YsVPzClNSczwsCj5lLlbtKHtA8sZ89yXcCOko40JPC9GosLgYwfGHZeOAMNJ5Ukpeus05yHkQcI7AEvznn1CwmyLItIFxUnkJz49u5ust4XWsCliDwMcdZl+ERO2rkZO+sRpSWZ+I+7BnVNaGcjQOpCcNJiVG6tGfjJt+o3rGzmwhg4Pg1qnf+y6Ws+6zNB6W4Uz7GJwFU++/B502dYnWZXLJAQ7QzjSj/mRDE93d4PZDftwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=feXYcbGCEwR3eiLwVZuykgaVhM8kB+wA73Wx+2I5cvE=;
 b=DGl9UQQ05t5CkM0FXiRjPxXU2kJBhlawZNV9FQF4PGjAiGA+NlNI49m8W3eYbQQcsfavolxO1klMmxL8YuDOcZQg+oNXD79smJkjY8j4Eq3kwBIS+rENZCEk63LyIirS/aXJ9yADrmqQnTVVL4z/R29QDQsJgO0YFN3WK04U7dYQQeZtvAdEy7bbFiSWwmvMjkalr24vIckCJtWMiH1sAUUZYCLEGB9OhCNdqsCpRe6l9SUolHNBKaLi0glNGSX/HDfk4qa4ATnDrsG7hMirKvByqleWH0mFRFDD/UjzV1tyWkA+KK9EAA2RMXtkTBtRItTfgbhQFP/YrG9XynPNtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by CY8PR11MB7873.namprd11.prod.outlook.com (2603:10b6:930:79::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Mon, 25 Sep
 2023 08:40:54 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48%4]) with mapi id 15.20.6813.027; Mon, 25 Sep 2023
 08:40:54 +0000
Message-ID: <82dacc0d-efa1-35d2-b912-ac1622a57d84@intel.com>
Date: Mon, 25 Sep 2023 10:40:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Michal Kubiak <michal.kubiak@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230922161603.3461104-1-michal.kubiak@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230922161603.3461104-1-michal.kubiak@intel.com>
X-ClientProxiedBy: FR4P281CA0117.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:bb::6) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|CY8PR11MB7873:EE_
X-MS-Office365-Filtering-Correlation-Id: 55d72d5c-143d-4d25-b496-08dbbda32144
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OhU905PaUsPCM+A9i78XY2oDOHIAYpyKWzUKCPi83Qvn7Yiaueyy/P/qlFUpe7VSxGOCtf/csFt2XYvoEGwFEPaYiSK9kMOq7QD++6znXhhSCq5mxeF1nSLZ7AJIc/UjPg65mrdlwszyDv/nHxt7sEhyb0hvvlGSZs4C1BWtLib9L6SkHt/wonWUiF9YvM4YZdFewLamzMVr7JCZ0Ac0x228YD4ga2IVoB5rEwWfUXUsLKDuDdIBCmH9ZOq0IZ+jTUOumhtP5dD7XclRM/NAXZCeXJO7ftBKZXLym/auhVG+S0SHpynGF3vCbTq66LYKAbc5gnxh+MQECyUk/pXjPT3wZGzweoNsS30B3++aC6kTPZPX67nvnmmSzMYqqwb1upEDxg52x/xyhL+LusyfjmnZ65CRwOoBAnMH5zOZvWODqqLXVMFYfa5xkEGGpVRK/ogvnFDl+vhSZlJ/ALkNDC7oBYhPFeTzsCaahgaFTVVTzKQbKnda4ecD0zR8z8tMFzy2qToghtc6LQR98zhWCwY5lwWiLXQTCSezj+Bz9dgRcJ6sYE3qaEvNGEAsyYD/EreNhHpiKycpjF/pQ0vOWNTEO93oc/GFg/bCTY8099OaifoXN26+owhIiuqdtSIrWvo4oui69OTq7aIAtc+6rQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(136003)(346002)(396003)(376002)(230922051799003)(1800799009)(451199024)(186009)(6512007)(6506007)(53546011)(2616005)(6486002)(478600001)(6666004)(8936002)(83380400001)(26005)(4744005)(2906002)(66946007)(66556008)(66476007)(316002)(4326008)(8676002)(5660300002)(41300700001)(36756003)(86362001)(31696002)(82960400001)(38100700002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TGNkV2VEMk9MR1dJSGdTalpkeFFBRmhDZUMwWU8wUEY0cnV0UkV5M09PanRz?=
 =?utf-8?B?V203azB5MFlFeFNjWVJFb3kxcEpBd29rQmYxNkJTSDYrZHgvTVh1VDlWQUE5?=
 =?utf-8?B?dXhLZUxIeU51djloT2wvd2F5NzhJL2JNVjBaUXcxcjNrNTQxMnJ5b1VmcHhn?=
 =?utf-8?B?ZlRsVXBGS295MDFHN3Q3TnRpSFFCZG9zL2F3bytSOURFK29UVHk3cGdOVjVE?=
 =?utf-8?B?NkxvWkl3RHUrUGZWVTlINGw5dFc3VUgxNmpVb1NsbVBsNWdlQkh1Y0gxbWw2?=
 =?utf-8?B?U3Znd2IzZTBxamExTitMNFhXMUJOc3hmM1N1VkJmOVR4NWI4UmpDdnZOMFVv?=
 =?utf-8?B?UE9NdmZoNWlhU2htY29yK2thM0pXcWFBMy9KcWYrekxFSk9SVXJraGphbGVz?=
 =?utf-8?B?TFJ1WGpSbVA1bVJmT3J4eXBQeDBWU0RPazZQS3M3OGowU3k2WXZFTWxLRm1Z?=
 =?utf-8?B?Tld1bVVLZXV2N2FVakc2a044eFJCUWl2eW9YVTcxNTlqUW9TZzBWNURVb3Rw?=
 =?utf-8?B?OHpsaTlGTVZvRzFCN3d2MzQ2NW1VQnl1MmRBYTZrc0F2YlRINW1FakRwNy9y?=
 =?utf-8?B?cXFIRzVNdWw4aGtUQzlBUGJDYjl4c3hMVmI3aGgySmVaQm1JdlBOM09mdVhu?=
 =?utf-8?B?alVYdU1RZGJ5a2xGQkZISTF5TUZVVjVxemRCME85UXdWY1NXWGZVWHVSQjJ1?=
 =?utf-8?B?bzNiZU1wa2hqdFBKTm5zeWJ3OWppL2JJSnZZRnB2L0N0L3YrdzNTTXg1eE0w?=
 =?utf-8?B?Rkh4V1p4YS9hOVh6dTFsQU1RcVBlUEVXT0YwRGRuUGZ0SFF1WWxaeUdhWXg4?=
 =?utf-8?B?ZTIyU1hTaTVsMEtGaFBWNno5eGRzQnd1M1REMDVlNXFHakVFWGE1SUJtUHBv?=
 =?utf-8?B?aDRKR3NBMWpmakdlRm13cjYvUnNGaWl0QVBQWlc2Q2hsblloK0RHaXlDWmxU?=
 =?utf-8?B?aXdwV1pkbWJuVEgyRmNNMzhzS2ZqTnNLczNvdFhrUUk2QVNxRHJMUmlvSGVo?=
 =?utf-8?B?NEJKajhSVlFYVTluYTE0Z1RqbFpQSkE0YkJVdWtkMzAwM3QrWnRaV3hPa2RF?=
 =?utf-8?B?dGt4TVVFM3ZEaktWRVJ0R2kzZ2dwbzJianNGby9GcGR1eE9RZU9vQVNBaTNP?=
 =?utf-8?B?Q1doR1J0c05oVWJPdWJzSXBCT2EyWXBYdCsxb3FMempVckJiNFJGaFJQd0k4?=
 =?utf-8?B?Wld0RitSSFFYNncxdHFxZU9Cb2NpNXhXUmY5QXVoQUpwYmZqYVpYaW95aDJj?=
 =?utf-8?B?NnhKbzgyOUkvY25tR0ZhbTdrMHBlVVRQc1IxcHFZVjR2MmpITEZSeGorZWI0?=
 =?utf-8?B?Qm5Wc0tDUUdLVkNGa1VnSTl0U1BRbVNlaGtpODR2Nnl6Nll3QUtuVFVlanRN?=
 =?utf-8?B?VmM1ZWxkaHAwcGVtVjVOdEdkcEVYVXRTZC9CbzRqWmxMWFJCRDUzL3k1OENM?=
 =?utf-8?B?eTBqWDFoUnU3WnFmR25POW1WY3gycllMY0ZsSWlqT3I4dTJLWU8wZ2pZbmdQ?=
 =?utf-8?B?TUZ1UHhiV2JROVZ2UHJQcmx6S240dXBBaUhXd1BCeU5KODlvN0ZrMU9UR0NH?=
 =?utf-8?B?Z0piOXJZODU2bHc3T2drWkc5MU5RR1pMeG9HbWVNVXdZbjhCNFMxakpUN2Nl?=
 =?utf-8?B?TXpzRGk4aXlpSVpmeEtLakdIREp1Y09LVnVqdk1ORTM1RGRkTlRCY1pHcHpI?=
 =?utf-8?B?TlVWV2FEdlNqQXNRV3pERGZZVlV1S3p1b1I2Sk9DTzNBK2c3R3I2bnkzckkw?=
 =?utf-8?B?UDk1V1FSeHdzaVhFYzA4M3NYNG9XakRtYkJub0VLdjVnKzFuRDV2b2NKTWpl?=
 =?utf-8?B?Y084ZGRiZWNXcXl4SXp1SDlqSEkyK2loUHQrOXA1eFY3VGhMZmtRc3E0ejdN?=
 =?utf-8?B?R1lSeGdzM0szaDhRZ29uRlVjN05JK3JpYm0wNUpya1VoU2NPbmlBdDFjSFlO?=
 =?utf-8?B?U1dyTFh4aklLS1F2SFZmcDRRelo2cENrcEVxSlJiVC8xYWJCQkFhZEhiNHpu?=
 =?utf-8?B?MjYvNFJoOEtzTVNDdEJjZjVDRFNtVmpnYzMwc09pUVpKSTIvckJURVh6cjJQ?=
 =?utf-8?B?UUxmbERVUGJzQzZ5NWRaZk53WmVKUkZ0cExKRW00ZG9mMkRiK0hsQmhZRVNC?=
 =?utf-8?B?ZmVvVU80M2VqTHJHOFBOZkdieVk5R1FJWjI0ampuV3gwWmFkanFXeThqcCtu?=
 =?utf-8?B?OUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55d72d5c-143d-4d25-b496-08dbbda32144
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Sep 2023 08:40:54.1336 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mJshLA6GdAs2tAEDy5l/PJbXSbjWYBM3RMmAbouK2UceHiB0pCoGEcP6NJrVZUYTy9yYbJtPMRfXR3ZKsnu/Q7Qql4q+9hQgsz10F0OaVgc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7873
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695631258; x=1727167258;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kO3+5D0BGqpi4ImjU6vx4RGg+HTASialt7xdc+QXwCQ=;
 b=Yj/Bu2NEScD1g5iJ5V/W6J60wMNFIG42f+QM2qqjdtbUeVvQ4TsoFSZW
 YBi3GJzts04ZwnZ0/BDdsqgwvw7cGrA81VnL8daohN9XzfdI3Iba7IZAb
 jFa8Ubmn0qjdE3SY6iTuRA7UbA+sUFnEHTuL4C6XbWC2rp+0+Eo2xDqAS
 xZD/Dc/yoQ1fOgOHFlgdvYpuEoATtbtuYNfYPp/B2+8dmOnsUHBg+XeKI
 SJB4ioL7cU9VsAJUqol4pYawM23kkBoyfvRPbEkeX3pVKnF/XvkbasRhZ
 JAb6me9nNDB9oPLBCxMB5fXA0vR0yAZ90QWEV6e/W3V7aH8UwxWy1zn5D
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Yj/Bu2NE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] idpf: set scheduling mode
 for completion queue
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
Cc: emil.s.tantilov@intel.com, larysa.zaremba@intel.com, netdev@vger.kernel.org,
 joshua.a.hay@intel.com, aleksander.lobakin@intel.com, alan.brady@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/22/23 18:16, Michal Kubiak wrote:
> The HW must be programmed differently for queue-based scheduling mode.
> To program the completion queue context correctly, the control plane
> must know the scheduling mode not only for the Tx queue, but also for
> the completion queue.
> Unfortunately, currently the driver sets the scheduling mode only for
> the Tx queues.
> 
> Propagate the scheduling mode data for the completion queue as
> well when sending the queue configuration messages.
> 
> Fixes: 1c325aac10a8 ("idpf: configure resources for TX queues")
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_txrx.c     | 10 ++++++++--
>   drivers/net/ethernet/intel/idpf/idpf_virtchnl.c |  8 +++++++-
>   2 files changed, 15 insertions(+), 3 deletions(-)
> 

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
