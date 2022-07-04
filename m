Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 018CE565334
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Jul 2022 13:23:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1E93040519;
	Mon,  4 Jul 2022 11:23:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1E93040519
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656933820;
	bh=vwPNMJBDIgyLCxGAzyCk6S8rq5HCQ9muqRjBI2dvpDE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yr5qveV4Hbt49/E4+hno4XmLO0oea7IfNJjPPK478Ua6xjYndJPBeXVRnlqPMzFnd
	 LpLD0DTsyFeus7k2AMT36rggFXEcioL9pzu7E7XPFkeqmSibmZQKIDgOoAJkqh1o4q
	 tjx7CkfiL2HMSC8BlIeTzKOa5QBi+7CduYeeSyWkk8Zp+NLlXAPRa2GL5IhTcbS3Jj
	 lWVwDM/Zn+yNSiuXNOYtRGLR2Ujyz71tHhsQl/nUzWNdinXdPdFNdKSVocZEGUjEFa
	 GW8ajDS31RPONRXGnH1pEc/E7M2MA6jt6CVKA72accSzycqsJXlutbqTf20B85rNLe
	 10CzGBcvrxuog==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LJFR9xQhguSA; Mon,  4 Jul 2022 11:23:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EEDCA404CF;
	Mon,  4 Jul 2022 11:23:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EEDCA404CF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 44E511BF375
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 11:23:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1B08F81432
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 11:23:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B08F81432
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IieKY-kGMBXG for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Jul 2022 11:23:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CEA608133A
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CEA608133A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 11:23:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10397"; a="280658705"
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="280658705"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2022 04:23:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="719363597"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga004.jf.intel.com with ESMTP; 04 Jul 2022 04:23:30 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 4 Jul 2022 04:23:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 4 Jul 2022 04:23:30 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 4 Jul 2022 04:23:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RcPQM9qu6k87e9jLSjCkYLuur58PKzGc2mA34OGCuFimKge+DrQk4ZE337hHgfK+mFvx8fHt9nQtHZp3Zn8XY+PS3qOL/orslXOyLioav6MgEQNGXVCx/gGTN+jGAi7sF09pcsY7OxLzVvyfpTVSbgeQvndQSOhigdyQ/eAGq7ZCW5qANjszVKmkLS8A66yJ4KWos8Fapa0yBloLyiYkT6TdT7Iw9UVSzjKUMgSlnDIrQ47gGcDA7PezIBawKCb24YOQQhBlFxxBzIoLNgnePFcGrmLqn2vzgypg0C+Z3TC4S1wkr+XueSoTEYgJsNXrhtxX1adOXDyf5NOA1pO6Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y3cwao6xdmbHBpCwJGHymCJ5E1xOSRwTIDDAto1yLoQ=;
 b=lEOTjPD3L51ZbPuYXfrevTn/3awmsg/NSdOh7daHWsYXHGxIlq3+4NJ1vzM5BYS1iczimz2vo4tnuOfD9Vgk/MLwGH2GB89Yc+ErpobkCS04tw1AGMko11sv5rRPV8p2klD7ZvFbV888tGNVq55k/vj5ZQG7hyLCa5g0kqWaq8yxzE+301EMqLL8LpwKQBf4BpLurPRl4h1TqGhZlY9jIH/5GvZGJcIvTWasUbP0EaZd39zvKlgG/3HwZ5fwKWDiVIni7f2zT96u0IkCpLpkQO/zJuUrgmbacrHgNjuXH/CkTPjhPPiuUCOeinSM556jVyXg2jtOEgvuPT91LYZN4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5603.namprd11.prod.outlook.com (2603:10b6:5:35c::12)
 by BL0PR11MB3058.namprd11.prod.outlook.com (2603:10b6:208:7b::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.15; Mon, 4 Jul
 2022 11:23:28 +0000
Received: from CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::5008:4f0:1078:7ba3]) by CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::5008:4f0:1078:7ba3%7]) with mapi id 15.20.5395.021; Mon, 4 Jul 2022
 11:23:28 +0000
Message-ID: <af311e64-7509-ba37-e288-32158ac13d60@intel.com>
Date: Mon, 4 Jul 2022 13:23:22 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220701151750.2441885-1-michal.wilczynski@intel.com>
 <04c3c622-29d9-b538-2ce3-2864a43ee5fa@intel.com>
From: "Wilczynski, Michal" <michal.wilczynski@intel.com>
In-Reply-To: <04c3c622-29d9-b538-2ce3-2864a43ee5fa@intel.com>
X-ClientProxiedBy: FR0P281CA0114.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a8::16) To CO6PR11MB5603.namprd11.prod.outlook.com
 (2603:10b6:5:35c::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 42df91be-a935-423d-3960-08da5daf9de7
X-MS-TrafficTypeDiagnostic: BL0PR11MB3058:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YJMk3iWLzAzEujKwzrVWaqmhDrnT3ShHrz8nQ0JV3MqA7Ke7UPh8m7uWlc7SR9z1ozpyA941H7emZsDrXqwLx86wZiLBEBkInSAKc5+AN4j8m4v+ZdrcIm2dh88Z5WFh/pnswCjL/2vVdOJNI8VXK7Ri1aqW13AUof7QlkAiwxx3o5GRr4+G9I7BSNJ8+FctePTm5QKGooQLgAQ3AcErlas2q7RTnpiLDay0ZocjRKq2p+m3dYeFxqlJf/Rm2qE5T5XWDDWplyvW0c4oaoSajZJc1qMiokJOvtlqFRgLyHqgAfgeu+BTpjSGmcilwjwKI7jx7qmqmqicIm1gePV3vS2iwXdg3uKjnYejCbj9ECIPP38N4nOOr8XhX2zmAcdFJ+hdbz/AOmaLgppxve7nhbFfrwk3RFiSk10fiLL6xobgodhagufg/OQs/6V4fZAjt536dWYq6USHuIeN0t/vH4Gb38bZrDUF+KM59HHzCMQ9Ny00HQSgc2/eIuvnKeQCeL7fYQoz9ka90mh2PINqPh7AQ5n7DU3A+7RhwsFFqHSMsOyDfW9swPTGKfpYWmN2+ufE9gt3FxgcQQiF508D2BdER5IEhCV7J8cG8bBa9aEXAZ1RLSE6ncR9sBbcVb4mrbQxklTgfBP8iK5KmLRqgydgf/rr+aFARMuykvvYybdzgJyt6mqGGIQwtU0mANTc7fsDaJaeFZ0OjkrKQQ3xaMkbFD7LKcq+aKnbExGLsk9K3HElQReAT38ntEwQB/fYMZ8oF1/om08e1Grnq77VMLtq49YNv1YfrdBKBge4tS8lrS1j0PPnaW8xFRNXVS7W++dS0XqO0T4ulLq3QzalCM8aRZ1NsbRyR4TEbDm9ktfMmXchomz0zD14uKTI6zMG
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(346002)(136003)(396003)(39860400002)(366004)(31696002)(36756003)(186003)(2906002)(83380400001)(2616005)(31686004)(38100700002)(8676002)(316002)(82960400001)(41300700001)(6666004)(6512007)(53546011)(5660300002)(26005)(8936002)(66946007)(478600001)(66556008)(966005)(66476007)(6486002)(6506007)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q0FMS21jazViS011VjdUVE1OMzRYdkdBYjNTTUZWZDRvak4wYWpHbktKbXlp?=
 =?utf-8?B?SVoyN1dhcmhmRGRvMEs4YXN2TmtZeCtSdTVzT1FqQU1IemJzVkhoRDNwNjBu?=
 =?utf-8?B?QXowbnI4OHRHNkpWSXhLaS8wZWx1ZE5iVFlNS0lJSGVtU3d2MTAvcHJ2WDhQ?=
 =?utf-8?B?eHpaT1dTN0JUUFdGcnJaWFUrdTJnbUtMdFBQTE1VdTRhNGNMeDJ2QjNrWmRu?=
 =?utf-8?B?enFvcm5CckFEanRXUzJFQkM4MzZhbkRtODJoK2U4M1JRaWF3NG9EblRhWTdZ?=
 =?utf-8?B?K3JqcW9UalVjeUNoVXErVTFmVlhHbUhHMjU5M05qaTJ2MEJDQnVpZTZZUzgv?=
 =?utf-8?B?b25JOXdWV1RUZjBaSi9CaFJIL1BlZ0YrYzBRZURGa2M4eUNiVThXaXViRWhY?=
 =?utf-8?B?ek5jdGFRcnlJbTcvMEFXL2FuL3MrWDRPOTFXV09XNzNGYW1pM09FV3duaDlz?=
 =?utf-8?B?WWloQmJrSTFtc1pDOU5Pd0U0dzBJalFUdmxmR3MwbnFrdVZRc0F6YUFySm5h?=
 =?utf-8?B?TU83UU9OSGF1VzZXRnV0ZE9taFdiOHM1b0Y4OUxzeGEvaEU2SDFqdXdKdkN5?=
 =?utf-8?B?U3lXc0d1TGxoZmxkVUlSSmQxMWVhRk5KSnhVem9WbzU0NFk1QVArbHE3bVVi?=
 =?utf-8?B?VThSbU80djJ5cmRxR0RrMnJjR1NUUXVFMmdaK1RXVmZmcU4ra2M5enJZSU1U?=
 =?utf-8?B?cFU4SlY2VU1mdmNnMjI5dVpSclJwOEVmUm9kQWMxemd5S0ZvSmNyRWh4dHlV?=
 =?utf-8?B?WVBEOFFBL2hFVzRNWkVXWG5VQWQ1ZjFuT1Uxd3lORGxHQjJsUlMzcHVNNWpX?=
 =?utf-8?B?YlhXdFVsUjZsU3pHZFp6K0oyL1lDVkF0dm9NMnVJMnVDdHFIbnJXbXoyNXlo?=
 =?utf-8?B?LzNTOWRtVXNrVzhQOHVoYUpySXUyZHFrajd0blNtbHA0TUdJUnl5QzVCWmhh?=
 =?utf-8?B?VDNBdS9vRDVQMldGZ2dUVW9jV1BWRDhtYldMNXloYU1BS08weHR4aXZ3b0Nn?=
 =?utf-8?B?OWMzOFZzdS9qZGl0bXQxUmgxOEFiVEdCWlp0Qi9pWkFLVFBuVDZQOUdNbUhN?=
 =?utf-8?B?OWI0dlVwOFFZUXg4WTl4NXl6L1ZJU0hvNm1YenVsZHYyakxESFV4d2RFeFE1?=
 =?utf-8?B?SkZoUHUybHpOcGVoWmFyVmhDVUFNMlYwSDc1b1R6b1U2UjBkV291ajJpcEZL?=
 =?utf-8?B?V0krc2xDUGd2bWtjZ3VHQXpxNks4WnJHRmhybmw5Uzc0d1FuRnljMGhSbjNa?=
 =?utf-8?B?S1ExVHhVVit5MEFGRlN3RU91MGRXRTg0ejJuLzN0bVBXNGxJZmtVeUMxSmpX?=
 =?utf-8?B?VHhQcHRaelcrUmRWLzAwWFc3QndEOFhQVzB5VjRtOVVwU3lFelJ4UnlFN2Zs?=
 =?utf-8?B?RHVQaXlzUHZGbkpoNHpOMzVXcCtLREU4eHRHcnBLRTdlWW9RWVc2TWN2MkIv?=
 =?utf-8?B?b0w2RlJCK0hBQkVQRFEwY0VZVTZ2MjVxYmJhb2NGTHpnV0laQmNVRUJtK3dJ?=
 =?utf-8?B?WDc2Y1JwWitoU3JXRHU5ZzQ4U2NDUUd0UmtNSlUzZ0IxNmJQQXFrNm13dERs?=
 =?utf-8?B?WWJRQjBmbUVqS2lEc2xVYnMwZHR0VnlLSGl0ZXliQ3VDdVNOMDZQaHl0aFRz?=
 =?utf-8?B?Mnp6YUcvczlzcXltZHIvTVFESWpVR0pDNEowV2JBOHNpSjJGT2pGSjl3aWR5?=
 =?utf-8?B?ZmFveS9PbUxDYmpMNW05TEpwaUVhYUFqeDNzcU9qMjNVSGZsUEV1MDFoRVlT?=
 =?utf-8?B?bjZGaG5ydy9nWGd2aHdjcXNSL3p0UXBUbXc0OFVMQndmZlV5SlBKQSt4VVU2?=
 =?utf-8?B?aWpJVW1PNXZlTzBOY3RLdmtYTE5EL2t2UUVIbVJMUW9vMG9zNndVNVUrMys2?=
 =?utf-8?B?L0pUdnE3S0hGaXlkSnRSNmJsZ0Npd1NKN3lpV3YwMzdaNUNnczVFZHdkdEFW?=
 =?utf-8?B?bDdiYW1oKzJUdXJUR2FnWTgxYjdXMmZlVC9XUUIxN1FjWElscUlNOTFZemlj?=
 =?utf-8?B?ZllWaWRrZml6bkhlSTNhcThWU2NwZjIwWWZVVDR2bGIvVDBmWnM0RWpNdjRZ?=
 =?utf-8?B?MFpBbUpKNTVnc0VNbk1nVDF1Ry9PTzVnRUNKWUl2YW5tUW50VVpGUTZ1aklj?=
 =?utf-8?B?b25sVkJjTUFobUNUVkxGTnl3L3lHUWcxYUEvOXRFb09XM05hallCb0dnWEhv?=
 =?utf-8?B?a0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 42df91be-a935-423d-3960-08da5daf9de7
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2022 11:23:28.0244 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JeTqxLqGoyBohVgqEOy61kUD5vIfQS1xhgYYEs0BcYH1XlsBVdNnQmVErneF9pDVrf574GVQHXfJKF2vDLYoBZ/Z1quIipeh0Y4ljmAB3ng=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3058
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656933811; x=1688469811;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bXiOFQX9Xl+ZwIo0vg3EvGj13BafB/fMy9JSo9/YYNk=;
 b=JYibBs33VHaztiTABTrYbWpjGnTG7cQ4V1mUli5ARy7GmKzXFLrzmRHL
 PfcrOJcevaUTqlCwyKaQcKDW4YsiS/B8c39t9Mf5PHmL/JWNXBuPU3ws5
 UB5WRttENVMYWd4Kwo9bVGxyryLwj82W3027Fo7VsRRpSNNqnJuAE6xef
 CyBvlqUNdiBLVJzuvbL5JndWc5IkiT3K5HB5I8+5fl4FFixHv1Eb2V9Ar
 3YftA8M5Jn3B1mzUOao+n8iXvlnOA4TrPM/MGGQKlhgj0yYsr2BdSpIRb
 s3a4vKk9C2mGpxZc9ncRWmFSqdeoQJ08xdc97OJNpV9NpLvEA3uTBXsc/
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JYibBs33
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 0/2] Improvements for default
 VSI filter handling
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDcvMS8yMDIyIDExOjAxIFBNLCBUb255IE5ndXllbiB3cm90ZToKPgo+Cj4gT24gNy8xLzIw
MjIgODoxNyBBTSwgTWljaGFsIFdpbGN6eW5za2kgd3JvdGU6Cj4+IEN1cnJlbnRseSB3aGVuIHZm
LXRydWUtcHJvbWlzYy1zdXBwb3J0IHByaXZhdGUgZmxhZyBpcyBzZXQgdG8gZmFsc2UsIAo+PiBk
ZWZhdWx0IFZTSQo+PiBzd2l0Y2ggZmlsdGVyIGlzIHVzZWQgaW5zdGVhZCBvZiBhIHByb3BlciBw
cm9taXNjdW91cyBvbmUuIAo+PiBVbmZvcnR1bmF0ZWx5IGZsb3cgZm9yCj4+IGRlZmF1bHQgVlNJ
IGlzIGEgYml0IGRpZmZlcmVudCwgd2hpY2ggbGVhZHMgdG8gaW1wcm9wZXIgYmVoYXZpb3IgbGlr
ZSAKPj4gbm90IGJlaW5nCj4+IGFibGUgdG8gZW5hYmxlIHByb21pc2MgbW9kZSBvbiBtdWx0aXBs
ZSBWRidzLCBvciBmaWx0ZXIgbm90IGJlaW5nIAo+PiByZW1vdmVkIGluCj4+ICd0cnVzdCBvZmYn
IGZsb3cuCj4+Cj4+IHYyOgo+PiAtIENoYW5nZWQgbmV0LW5leHQgdG8gbmV0LCBzaW5jZSB0aGlz
IGNhbiBiZSB0cmVhdGVkIGFzIGEgYnVnIGZpeGVzCj4KPiBJIHRoaW5rIEkgbWF5IGhhdmUgYmVl
biB1bmNsZWFyIG9uIG15IHByZXZpb3VzIHF1ZXN0aW9uIHJlZ2FyZGluZyAKPiB0aGlzLiBQYXRj
aCAxIGxvb2tzIGxpa2UgaW1wcm92ZW1lbnQgZm9yIGhhbmRsaW5nIHNvIG5ldC1uZXh0IHNlZW1z
IAo+IHRoZSByaWdodCB0YXJnZXQgZm9yIGl0LiBQYXRjaCAyIHNlZW1zIGxpa2UgaXQncyByZXNv
bHZpbmcgYSBidWcgd2hpY2ggCj4gaXMgd2h5IEkgd2FzIGFza2luZyB3aHkgdGhhdCB3YXNuJ3Qg
Z29pbmcgdG8gbmV0Lgo+Cj4gQWxzbywgZm9yIGZ1dHVyZSByZWZlcmVuY2UsIGlmIHRoZSBwYXRj
aCBpcyBnb2luZyB0byBuZXQsIHlvdSBuZWVkIHRvIAo+IGFkZCBhIEZpeGVzOiB0YWcgWzFdIHRv
IHRoZSBwYXRjaChlcykuCj4KPiBbMV0gCj4gaHR0cHM6Ly93d3cua2VybmVsLm9yZy9kb2MvaHRt
bC9sYXRlc3QvcHJvY2Vzcy9zdWJtaXR0aW5nLXBhdGNoZXMuaHRtbCNkZXNjcmliZS15b3VyLWNo
YW5nZXMKCgpIaSwgbXkgdW5kZXJzdGFuZGluZyB3YXMgdGhhdCBhIHBhdGNoc2V0IGhhcyB0byBn
byBlaXRoZXIgdG8gbmV0IG9yIApuZXQtbmV4dCwgSSB3b3VsZCBoYXZlIHRvIHNwbGl0IHRoaXMg
cGF0Y2ggc2VyaWVzIHRvIHR3byBwYXRjaGVzLCBvbmUgCmZvciBuZXQsIG9uZSBmb3IgbmV0LW5l
eHQuIEJ1dCBJJ20gbm90IHJlYWxseSB3aWxsaW5nIHRvIHRvIHRoYXQsIGNhdXNlIAp0aGV5IGFy
ZSBraW5kIG9mIGNsb3NlIHRvZ2V0aGVyIGFuZCBib3RoIG9mIHRob3NlIHBhdGNoZXMgYWN0dWFs
bHkgZml4IApidWdzLgoKSSB3YXMgdW5kZXIgaW1wcmVzc2lvbiB0aGF0IHRob3NlIGNoYW5nZXMg
d2VyZSBhIGJpdCB0b28gbXVjaCBjb2RlIApjaGFuZ2VzIGZvciBuZXQsIHRoYXQncyB3aHkgSSBj
aG9zZSBuZXQtbmV4dC4KClNvcnJ5LCBmb3Jnb3QgYWJvdXQgZml4ZXMgdGFnLgoKQlIsCgpNaWNo
YcWCCgoKPgo+PiBNaWNoYWwgV2lsY3p5bnNraSAoMik6Cj4+IMKgwqAgaWNlOiBJbnRyb2R1Y2Ug
ZW5hYmxpbmcgcHJvbWlzY3VvdXMgbW9kZSBvbiBtdWx0aXBsZSBWRidzCj4+IHYyOgo+PiAtIFJl
bW92ZWQgdW5uZWNlc3NhcnkgcGFyYW1ldGVyIGluIGZ1bmN0aW9uIGRlc2NyaXB0aW9uCj4+IC0g
UmVtb3ZlZCB1bm5lY2Vzc2FyeSBjb21tZW50cwo+PiAtIE1vdmVkIGljZV92c2lfdXNlc19mbHRy
IGZ1bmN0aW9uCj4+IC0gUmVtb3ZlZCB1bm5lY2Vzc2FyeSBibGFuayBsaW5lcwo+PiAtIENoYW5n
ZWQgY29tbWl0IG1lc3NhZ2UgdG8gdXRpbGl6ZSBmdWxsIDc1IGNoYXJhY3RlcnMKPj4KPj4gwqDC
oCBpY2U6IEZpeCBwcm9taXNjdW91cyBtb2RlIG5vdCB0dXJuaW5nIG9mZgo+Pgo+PiDCoCBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlLmjCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAg
MiAtCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZXN3aXRjaC5jwqAg
fMKgwqAgOCArLQo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2V0aHRv
b2wuY8KgIHzCoMKgIDIgKy0KPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9saWIuY8KgwqDCoMKgwqAgfMKgIDY3ICsrKystLS0tLQo+PiDCoCBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX2xpYi5owqDCoMKgwqDCoCB8wqDCoCA5ICstCj4+IMKgIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jwqDCoMKgwqAgfMKgIDE0ICstCj4+
IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc3dpdGNoLmPCoMKgIHwgMTM1
ICsrKysrKysrKy0tLS0tLS0tLQo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX3N3aXRjaC5owqDCoCB8wqDCoCA2ICstCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfdHlwZS5owqDCoMKgwqAgfMKgwqAgNCAtCj4+IMKgIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfdmZfbGliLmPCoMKgIHzCoCA4OSArKysrKysrKystLS0KPj4g
wqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92Zl9saWIuaMKgwqAgfMKgwqAg
NyArLQo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3ZpcnRjaG5sLmMg
fMKgIDUxICsrKy0tLS0KPj4gwqAgMTIgZmlsZXMgY2hhbmdlZCwgMjE2IGluc2VydGlvbnMoKyks
IDE3OCBkZWxldGlvbnMoLSkKPj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
