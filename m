Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A081B7B2828
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Sep 2023 00:12:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4303E83BF1;
	Thu, 28 Sep 2023 22:12:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4303E83BF1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695939145;
	bh=2reiHViJu2COdhvvcZs/344iBNaCAcODY5gt66XJ1Bg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KqSQqqTlPFiAwph6BrZwgHTSGOl2tE01c6RtIksQBUTfrNxwZ+v3gbjVliVL2mT/4
	 QKaRbX9KqeCnKjXBKaP/uAvphZ0WEntFvSiDTi72rg8VR9gyD0JiGWpKEqhDkbI25a
	 LxvjwVGfTD7jPXQuGDLUDuPZW9ax/O9bgAUK9O/7+0KBK8uOuUCOuYc5xLgAxsXg+U
	 QPIyYuAwRwcfN+ET1E99MFSIdqxDJNAWUKAcFxpkLP0Yu+HlliaSS4B4oORs2lOfi+
	 n992knfJQ9jiYSZr6dYX3KI4EuSD0BU+/3gqCeLB88NhikDLl6NcdoCjoRS4c9d8Vy
	 hGS/dZBXlX34A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mwVPIcm9zFOx; Thu, 28 Sep 2023 22:12:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 491B783BEB;
	Thu, 28 Sep 2023 22:12:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 491B783BEB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1342C1BF847
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Sep 2023 22:12:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E042A83BE9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Sep 2023 22:12:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E042A83BE9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id emiLze3Z9ePU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Sep 2023 22:12:17 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9242783BE8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Sep 2023 22:12:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9242783BE8
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="372545204"
X-IronPort-AV: E=Sophos;i="6.03,185,1694761200"; d="scan'208";a="372545204"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 15:12:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="840073157"
X-IronPort-AV: E=Sophos;i="6.03,185,1694761200"; d="scan'208";a="840073157"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Sep 2023 15:12:15 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 28 Sep 2023 15:12:15 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 28 Sep 2023 15:12:14 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 28 Sep 2023 15:12:14 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 28 Sep 2023 15:12:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RL12XwWslPMCwy4UrNKvkESgpRT75+hbkfy+RymY7hMwnycVGLahO+EA+TvRZok1bsBQosrygTbt/ogzYgytxkAdkYQhxX+23b5Ekn3llaZddhDp0QI5oRXicR5AheXRLtm4Vda7HGPR1L5Ts5R/iSE/w7zMVL6+Rxfiw8TZZSH5gNrmP2dUkSPiUFysURjUs6CQmKCiFXBw5NDa/9Tvh4dNlPeYoTULLegBTVex88YKCHEboVTuHEPlnBGJtaHuucsm6ztk1JBLMYwy8g0Y0nxhzMXTzHHQ5LB0YdhXo3qCC0Em6jH6DUJ9TT+ly+627Yj3QHDI80SKzOHDjX3eBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2bTBGP+wITDWbpnkkqsZw6Vu8poI+0AbJd9FZdzeCiM=;
 b=JegMxRhR2dLMKRFLfT4wgrpoTBqLE+qZWjNeLZSMZVGjmr+MGr8hmK3jQkGEw5X1BXQgTzRZIwTgOS/VsoT0aj+0GJf1Bko6qDnD9ob1hfWT4ahCdCvjkcDVaUVpJ3XgDmZtF9t9cE+g3Ac7iXsoSyErtAdyWP+Kj0W9knLtD9TOUsIHc/WrOWa3XIOXF8AcVFOhv4BVDPXI6srcc7s8Tuhvyv31DX6KdS5uJQp1sPfKMDVlJoQV6A3YZtxfewJRcKPIRGOR4op8zX1y3J46xpJp2lhvmjWLen4WcM5pK5N3KiVQCHnyZADFQtznoVoiBeNzPvvK5+V2Mov2ZsABug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by MN6PR11MB8170.namprd11.prod.outlook.com (2603:10b6:208:47c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.21; Thu, 28 Sep
 2023 22:12:11 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9c1c:5c49:de36:1cda]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9c1c:5c49:de36:1cda%3]) with mapi id 15.20.6813.027; Thu, 28 Sep 2023
 22:12:11 +0000
Message-ID: <95a7c916-dd15-624e-3cd4-f9225324df72@intel.com>
Date: Thu, 28 Sep 2023 15:12:09 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Ivan Vecera <ivecera@redhat.com>, <netdev@vger.kernel.org>
References: <20230927083135.3237206-1-ivecera@redhat.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20230927083135.3237206-1-ivecera@redhat.com>
X-ClientProxiedBy: MW4PR04CA0035.namprd04.prod.outlook.com
 (2603:10b6:303:6a::10) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|MN6PR11MB8170:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b9332f7-2b5f-4872-be68-08dbc06ff67c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Qlh6ccv73G34QeOHj9uqBBvqiWgWiz7Zv5ctyTdo0sb6jvseQ/C4maXkSJFm4k7tIR+f2odIII4IKQq08Po28hGZe8epissdvsnMtnVze0sO0oYhgfjmusNu1y1h52C1fbYub80H78x+zoCk72/qKulfGiTsI+lpy7F7VdnZDY/zTlPxgKc72DIJCPHDqrL6aFWULiLmPGG3Tgl5TDjxBQLkVDvQrWKVoP+I7oxsep+qgHB9YIh244lP1fjzNBVoNJmHIfJ/1FdfPH3H0qPZjMlUgB/cWO6lHlOvZJ0EA3fZ8mpoVUFcRirIoEMUtrCc2Y8YYXgKIgPZHqiudWc3vzOWG4XIGqZofUKn7+nFGsiKebuGnwm3WhI1jeDsJ9bzBCEELzexJDIOiCrtRYR8L//KmO0kisw/luVRNCZv2Skod3X0DO87qlR5a0/ClWLD/LssyNPfb2msrLWASnUNI5tv2sGyJIjNvcIixzOQN5NQMBXKxXh+gN4KTMTeuP032uQVLVEZWuvPshe0R/mWy/tTMS/t2YKkwwTkVztHlmF+hzVC4s610vYbERAqdb15YjjmFNY8mxIGdP6tLnSc24KrVsUyjmTM+hw7eun2uTCAl6ynUsPV51ZVROjOiE3N9BpMYBrA2R5rtoz13D3YHw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(136003)(346002)(376002)(366004)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(2906002)(6486002)(4744005)(53546011)(83380400001)(6506007)(478600001)(6512007)(26005)(107886003)(7416002)(2616005)(66556008)(8676002)(66946007)(66476007)(4326008)(8936002)(41300700001)(316002)(5660300002)(44832011)(31686004)(38100700002)(36756003)(86362001)(31696002)(82960400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?THl1WUU3R1dnangwUXVOOWVramFieUlMdHBIcUtJdTZYeFJhSUZ4VllWU2l3?=
 =?utf-8?B?WFQ3dTM3dGJtR3l1VHJJa2pOLzcweWJ3a2t6dEt4S2taUHJMTVNBZXU2eHE4?=
 =?utf-8?B?RWR3a3V0L2p2Z3dXT2dSTUllbjdDaHgxNitEaFZhMmR3RlRRRG1ZclE0OGV5?=
 =?utf-8?B?OHNmVU9Xb0tmKzcwU2JWSHFhQU9UTVMxTExBZlVkTEFqTXQ5ZGdYWGk5UU9n?=
 =?utf-8?B?ekZKTHhnNytTOHNjcXpzVi9wSXBQNXJIM3UxSEg0M2NMenVNWk0vK0hpSVhD?=
 =?utf-8?B?THlWcXMrWlpSUm1LaUFiaTRyVmJKd3FEVHRvOXppM1pSV0c0QmtGRE4rdjc1?=
 =?utf-8?B?Mm4wSVNPNU14cjRxMUJaYkUvWnEweXU0T01xelhhRndNM1NRWkFyaC91UnJV?=
 =?utf-8?B?QkdLMTI3TFRRR1NvNWsxOWNqeEl2OUtadlRzdi9TYld0ekRwTGg1ZTBkUEZN?=
 =?utf-8?B?Y0xXQ2M0NkxoeFJ4SURYcWNxa0VYTTRIZmNTRjdUYzRWUnVibmZhNTdEeVVR?=
 =?utf-8?B?RU1mbGZIUHNxemtrK3B2TENDOXc3c1hnOTYyQUk0OWMyRjFLTmkxWUlUY2tT?=
 =?utf-8?B?NVplazR0QkczUnRqTkF5c2I0NlJ6Zk9yQzNwRUN6SjE3SVhRaXJVd1lJbUNB?=
 =?utf-8?B?MlRWaitJNkFIblVENXlJeHhqdUc0MHRDMG1sZWZRaU11WWdFd1NoMW5LQTVm?=
 =?utf-8?B?cER6MzViMTg4VDBaODZWVFQ4M0JGS0VTM3VaNk04N29uWlF2ejFYT3RpRzQr?=
 =?utf-8?B?K3ExaHF0RHZGclJvRFA4V0pFZ2VsTjg4UDVVbEppS0F5UnZNUk1XUjBJZ2ZJ?=
 =?utf-8?B?bVM3U2JPcS9zTWczOG0relFxd2FVa09tcnZCMERJTEhFQXdQQUVaQVluYjVL?=
 =?utf-8?B?ck9qMUhReGNwbWEweTFIc1lrNE1aSTdZMk03WTJzK29zb2hreW1xSlFSc3VT?=
 =?utf-8?B?WkJaY1pxQ280bFhsTnVkbUk5RFpUMmJQbnhTOUhPTXpqam9XcjcwRDJtVVll?=
 =?utf-8?B?dnpBWlAyVld2RDRLd3ZDTjEyaUg2Mzd5YzIrQy9razhBRFFIWHdNTkk4b2pM?=
 =?utf-8?B?K3JvVjU0NlBqK1IrY2lac1M3UFkvY1p3aC9yNTZtS0djN2h5NlRiYWtLQ20z?=
 =?utf-8?B?Z3ZUV3FOL2NUdTNRcCtwZk9xN2Q5R3EwK2VXRW8yOWN1R0tTZEVvVk91b05D?=
 =?utf-8?B?TWc0WWhWNzV1dHA1ZFVlVURpVElFbWRGMkJSN2duV0E0NzYvSzR3UzJza3Zy?=
 =?utf-8?B?ejljS3lOR3kvMDRwMHorTUxBOFpRb3BqSjUrWnB4T3dGNUdaWEhaMUMyVHo5?=
 =?utf-8?B?bjNnOTE3SXlxWklmenJCcTlBSlVJemIvNFJwVTlaY3NsT29VMWQ3UHhRK1Y5?=
 =?utf-8?B?TFFyVnU4U2l4QnZ6Z3VESWxuRU1YOW1rMS9iU2dWTnBTZTdoMlh5ZEx5RHpZ?=
 =?utf-8?B?MUwwMlJLTEtseE0vek1CTnlBY2E0WTFkN1hLNDhuOTI4VThaL0NKMWdzUUFK?=
 =?utf-8?B?M05qRUtpcExYYlFKM2ltby9MdVlDQk50VEtMSmQzSGJETXkrbUNBY2FRamhr?=
 =?utf-8?B?T2hlYVFWQ2ZrTlVROW5PRzAxT1dabjNJRHMwcTBsUWZkNCt2cDJXT2hTMkRn?=
 =?utf-8?B?b3JXQnRtS0NQcmlReHRLY2c4cFdqYlByRkNNVWZuZzlsUXJiM2ZybUVuMEI1?=
 =?utf-8?B?SHZpalpzdGlzMHJWK1F6T29BWWR5aGtLamE4bFhtdm4rRldoNEVEOFo2YmY4?=
 =?utf-8?B?cGhwc1g5RGhNd1NkOHBKTG5LZ3N4SmtGN2JrZFlvSGtNNXBLSENuWnVxc05o?=
 =?utf-8?B?c1ZDQzNKV2Z2Ym5TQndROVNoSTZuUEgrUFJwU2ljeGxJTHZXbVowdVMwZHY5?=
 =?utf-8?B?c0U0WkxxR21BaVh6QXdzRkRzK1hVcHZKU0lCeTZCZm9NdUpXcnBDd2dpVVRj?=
 =?utf-8?B?UU1ScGN0SExCRU0vWWszb3BmT0xnRFI5aWw3Q1BDbGYxOVVSS2MySlpwaTEz?=
 =?utf-8?B?VWVRa2wvWFZuRk5COHpDc2NCaTRNYThPd0d6ZWcyOHU2UmVES1phTHI1RGQw?=
 =?utf-8?B?NmZ2cnNXaklERFZyejVleHR5d056VUxNVXdqR1QrZVdiVkVIcjRWbEdBMG03?=
 =?utf-8?B?OVNwS2twOGVqenVEbThVd2d6QkNCakF2UjVINUdMWlhRb0hUSU9VdmxITzhh?=
 =?utf-8?B?Nnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b9332f7-2b5f-4872-be68-08dbc06ff67c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Sep 2023 22:12:11.3617 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /3aVYzVp9Fca+L4vRZXl+VdJnvu4mT2rTmtJYix3NINMiLOP02puUBxdwnOusFUHG+3YzsLfM6nKBibpgfgYpUVxbcZPeI1LV2ic1T1idx8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8170
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695939137; x=1727475137;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kg/wTIqB1p6mthXzwxA/b/3ed+5P5g5/P43tMLPFxLI=;
 b=RzMdzr5keyHRvlWoN1Jisi/QHciB2CQW+LYibIy12NOJbq80G8KXLimn
 MdBnjqZTNyQvB/cHbQAHJoGN2wTZzPzmzHU0M64r8zKCJZm6JGpTn9Yjb
 2miY18TXZilSDMSPkeWhPFClN6WwzzMgwj6IHdY8E3JqfB4S5rtav2iOA
 2X5iWQS0IQu1s26j2vDfGoPAxg98CEJT+v+4B2UG5M7I74xD1+i086LY9
 ZintMXH+tzJ01rSh2fB2erMf0/Mee5N1Ei4h+0AiIsnA8scD5fujq0m7l
 3iusFRoXA2MxROxlt/PoG3NgwewD3dNhP14lMZ6sQY5+mAsXXhiNPs9ts
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RzMdzr5k
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/9] i40e: House-keeping
 and clean-up
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
Cc: intel-wired-lan@lists.osuosl.org, edumazet@google.com,
 linux-kernel@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/27/2023 1:31 AM, Ivan Vecera wrote:
> The series makes some house-keeping tasks on i40e driver:
> 
> Patch 1: Removes unnecessary back pointer from i40e_hw
> Patch 2: Moves I40E_MASK macro to i40e_register.h where is used
> Patch 3: Refactors I40E_MDIO_CLAUSE* to use the common macro
> Patch 4: Add header dependencies to <linux/avf/virtchnl.h>
> Patch 5: Simplifies memory alloction functions
> Patch 6: Moves mem alloc structures to i40e_alloc.h
> Patch 7: Splits i40e_osdep.h to i40e_debug.h and i40e_io.h
> Patch 8: Removes circular header deps, fixes and cleans headers
> Patch 9: Moves DDP specific macros and structs to i40e_ddp.c
> 
> Changes:
> v2 - Fixed kdoc comment for i40e_hw_to_pf()
>     - Reordered patches 5 and 7-9 to make them simplier

spelling: simpler

Thanks for this cleanup series, the changes all seem sane.

Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
