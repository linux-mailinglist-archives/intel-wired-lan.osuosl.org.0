Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B89677BF9E7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 13:39:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 40A0141847;
	Tue, 10 Oct 2023 11:39:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 40A0141847
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696937943;
	bh=D9h582Qav61n5nygyjsFlmqve92tR1Vq7ntTt1zxqiU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=knjsp5zXBmtvjjX9GljPQ9wHk9CsVH+5npYGLLXf3/VvyK+moWGqfLA4lzO9a9AYt
	 QUSl+7tlS7BKS9RKbTzcV14p0glwSp44xRa0DD8FJkDf311GJfS2rJpdZz1U820gnN
	 L/yX/o1A4Uh/RjMdOS/4s3VTUgVcCeT7popEK/zN4CbxX2JGcav92d665VHQuRcFXL
	 mc5Umis3i6jQlQAb/Q/fDvedkwsZWtnFtDz6etlY0FSuVc/tIzQagmP/hHkyr2XmlY
	 JqTW8bJe3AH/5FXMd4pYd0kfvCVUn2OF+znxS+tarUiRZtq2mmdp0225MI3QFhLKkg
	 7wd+70CtzvBsg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wOzrEL4g6NUH; Tue, 10 Oct 2023 11:39:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83910409AD;
	Tue, 10 Oct 2023 11:39:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83910409AD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C37851BF318
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 11:38:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9391881C6F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 11:38:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9391881C6F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OB0DP_LhWFHp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 11:38:55 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E241A81BF5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 11:38:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E241A81BF5
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="5929199"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; 
   d="scan'208";a="5929199"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:38:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="747047831"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="747047831"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 04:38:52 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 04:38:52 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 04:38:51 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 04:38:51 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 04:38:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KuL4/hEUAvDUiavKmLzSsw5yIF0l0Ws4bVBvvZnbsEjTpLmlm75w9XIOs1d6y7I0OqBqcl2WGH1HqdknE7p/YI4XRM8s7x338Yo3aiXNuFO+ciIYNtWkhnCRNXi9FeDada164KhsNWBxD2xKsW2jjYwIvVVVtl5Ua6rIfYvBb5HCduNsaFvezjJOGLuNUw2VAzaIAoJvhtaXppxcHOug6CheW/JzJuK6Jc5/SrdC26VRlTmR3qlDcpuKc9RAGey36LtfnMSa2GFJvX8Crac15TjpSqCsKuRu9rOQMyCPWHx+wpx0uxu+4jQjx4p38yptjA60jBM1dJ387Hw3QW4NKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rR7GWntxPeM8VY8N8r1LzfIC+T+64qlBgycDU88X11k=;
 b=Fv27CFFABLsyncrGz925lVkepkl6uH4qkQA4Mw63V2uOhlyK9hzlsj9YvYxH6AzVK4JyUe27nJsQim2blf2ADC5lwiG8HRxa+B+Iwo6YK2qORLKt6Ja4jXBsm5U1Y2gyvKfXUVUAniOeH1aq6hBAZpGcYnwpCLYodGZEmHUja0zr7BkBUxsMbaHdirsOGOAiitki4PCBgwk16SYc3CNn0kML9FTtY/EqDS44jeAVQ/Qm+ky42G2rYPEyPEN3KWEuMsd2lhIA7deEQjP6bVwFAdo1ufcUe0Qy3BKseIgVglN+KZInBlW5LV7wKJ5/W4DYP5icp+9DvABL5Ave6kJV/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by SJ0PR11MB5584.namprd11.prod.outlook.com (2603:10b6:a03:3ba::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Tue, 10 Oct
 2023 11:38:49 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48%4]) with mapi id 15.20.6838.028; Tue, 10 Oct 2023
 11:38:49 +0000
Message-ID: <b4ccdd8b-1340-f480-5266-16e27c21f37c@intel.com>
Date: Tue, 10 Oct 2023 13:38:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Michal Schmidt <mschmidt@redhat.com>, <intel-wired-lan@lists.osuosl.org>
References: <20231010002444.43507-1-mschmidt@redhat.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20231010002444.43507-1-mschmidt@redhat.com>
X-ClientProxiedBy: FR3P281CA0086.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1f::13) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|SJ0PR11MB5584:EE_
X-MS-Office365-Filtering-Correlation-Id: dfc77c6b-c99d-44bf-b93a-08dbc985777f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 548tt1M4iEVMuQ+f+9BAnGputQ1iCXS/WGfbaJCYbzes8DdpEz86vsE+TApnWMpi1/rYl1dTHHyn1wmHuIw9sTcqIhrq4qSFHDIqNquPB6UHr3d4Hf8A4EfiVE/gYriNI+6qydeKZEKjW+tmFspT7E7dbHOLT4U4yGjV6o2PL2AcCrDjmvYoRTprFK7QVMupo589dAl53IRjVF1BDknWs6s3GKd64vnYOc0edcJCk86cwlr1xNV8vmCcwDzMB+z8IMCQLTmfWH3qf1FNQ3qlTpAssn9uYEd+BHafDCOEIuxQlxT8s3K/ybosXEl8amjOjs+a0P6wIZpYW5ASjkszY435bMSqfQSP7kFuZh96pYHw6PLuj2uoebOyVXxrhk0baAwDeEJtTNcDEeFDYE88Ayurskd7FjIgxi5GMEwxUvW4YA9gY8rMkAuPxFyyI8M2ccgkB9i8C4Q5ltGIwkcqH/Bm+S0dtExBIdjl1qIU5Sw8w4sxxJAd5CRQnaBAwntjjSx9vq89TOKSypkbcRFQ9kCVwe+P6nPH/UjzlM0ERcpbc0WOB9cAvFEsAmT1W6TNgB2WEgjnOlTiFCpw2mE8GDOTJr7TEPLmKcwj6hDT3sBrMtZRdYqkk0evacNTrxVxuWvkqFiQaJXneG8HVmY8jw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(376002)(136003)(39860400002)(346002)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(31686004)(53546011)(107886003)(6512007)(82960400001)(36756003)(86362001)(31696002)(38100700002)(26005)(4744005)(2906002)(83380400001)(6486002)(6666004)(2616005)(6506007)(478600001)(4326008)(8936002)(8676002)(41300700001)(5660300002)(316002)(66556008)(66946007)(54906003)(66476007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d256dEJTbUtoaS9EOEYzeGJIZEs3SjV3cmhmbmd3bVpzZi9ZWFRzR0dVMlVm?=
 =?utf-8?B?L1FwcUk0dHQ2K3FJK05yVE5MWERSZ0x3SVk1TkRRR3BPellPbXpWK3V0bUhZ?=
 =?utf-8?B?MU1nMXgvQ2JQbThOTEtUM095enFZVTBqaGpscCtKYnZid1NhMzNUMmROcjl6?=
 =?utf-8?B?ajRGNU5QbXhBaUMxdndBUnJSUi9RTVY0Q2pkc3dPWkRzQnhsRUIzaFIzSXRL?=
 =?utf-8?B?WC9CV0Mwb1BpbTVCN003T1NoSGxpTFl6dGwxVmR1am9sVUNnK3VXZlcwOHkr?=
 =?utf-8?B?MDRRb1RlZ2lVVFpHM3MrYml3VVRTQ3VkaXhQbUxyZWltMWtzcXRSMzU5Y1JF?=
 =?utf-8?B?M1ZmQ05KbXJwQXRmVE9qNHRBRkNpcHpTRG1CaVBBYVVFZkUwYUhNYTI5Y0ta?=
 =?utf-8?B?YWlaZFQxMko3cXBQVGJVbTRVUmxRWTlPTzc4MmJmNDdweG0yeHhKKzhsSkh2?=
 =?utf-8?B?dUY3MlRqUGU1a0N0ZmRnWTMzNDVxdjJZVUVMK0dza3JCRG04ZStRK3VpNDRT?=
 =?utf-8?B?MjhyOGpocTVnbDRlcGJxVmwzdUNmakZMeGMrRndTVU5mRkdJeE1JdU8xMnVy?=
 =?utf-8?B?OXJPbWJvZGhRNE9sMFJTYzBxeGowQ1hzaHAyVU1uK090MW9kbWZWYUNRNm9a?=
 =?utf-8?B?eHJtbHRiaFFGYjArMDZkN252ZUhwTjRaOU91azZNSElCdWdzbVp6Wk9yRjY5?=
 =?utf-8?B?OC9FRnhOTVpkQnVSR21td2YwMFgzNkVhK3AvUkl3VElSSElJVG1FdDQ1ZzRh?=
 =?utf-8?B?cGt4QmZQckh3MDRQY2E4eGM2TnoxRlVmeFh1SjlUcXB1eFdXS2J4dEE4TVdp?=
 =?utf-8?B?SnRydG1Va3dyeTUvVFJDVlQ5VDVKWEVDK2UvV2pVQVhxdlNJYkljcjJ0WFhD?=
 =?utf-8?B?WmxxSmNlenpucThNOGZDTC8vZU0yL2VkeG9CaVlsbEhnNjZBaU9XOWd3RU40?=
 =?utf-8?B?SW8vZlhUMHBMc1lDSWhSRFlaRGFTOEYvTEhUV2R4cmRRZkVnaVpmM0FrbU5i?=
 =?utf-8?B?ZVdMZnhPWm5FVFdHSjNPdURUNjJFMHc2bFdhRnVIQkhmSytCUDFiRnFNc1Rm?=
 =?utf-8?B?b3NXTmRYSlQ4RnZ5aGFFWGlDSGd2cTEvTTdyTyt0U05GUk14Y05IemhQUktK?=
 =?utf-8?B?SnhENWpGR0QyUGx6VmliMTFiMXpPZlIvc0hyT2hldmZlSklER3RvMklPR25M?=
 =?utf-8?B?OGp6UThDRS9CYzVLV1FyVVBETnRkamMyWWxTWVhtNjBzanBGeUl2eG9SZ1BY?=
 =?utf-8?B?TjVXZkViTlkzaTNHODZsUUpNVjFNUVkvTDhIOXFGYTJIa05TR1BzcFBiczkx?=
 =?utf-8?B?eDJpZUthYnpXbW5FZUxoNGtuUEdqc1c2blFuZXNCVG5aMk9lb3lPdXR1T1Fj?=
 =?utf-8?B?L2IramhYVVJreXZ1aEMzdnRiSWdFcjQ2bTJhQzZEVUdJQzNTc3YvcGw4cXNz?=
 =?utf-8?B?U0lVWTJZV0l6dmJrY0ZCUXlKWjN1MmtsN0NscTZNbERoQmZ6aWhzS281Yzl0?=
 =?utf-8?B?YlV5eFpQa292V09NbHhCeGJWSWVYVGRQSmRJQWVPV3Bnais1T0U4MlE1TnU0?=
 =?utf-8?B?TCtyMit2a2dna0hYY2JSTEVtSnp5ZHZKS0NhcVN0YVNRWHEyRGxPN1NEcXpU?=
 =?utf-8?B?M1BMbXVHZVBYdlNtb1pQaHBiMXlMSW5ZT1NUZFFyYjd2MGhsUjQvQ3cvSHVp?=
 =?utf-8?B?S2NDTGs5MGxoU2o5UWprZ0QwcWxCSDh5WFBramdvalRUbmt6SkRLVUx4Mzh4?=
 =?utf-8?B?bWswQzRBSTZzU2U0aFlVNzE2eTJCV21Pb0JTNW5URjFBY0NVdVQ0T1ppcThi?=
 =?utf-8?B?TDlvQjJaMFc5SUptaUIrZGdFTGZoRWg0MGZnbzh1aFlGbTFoRjNsSkJoRTNi?=
 =?utf-8?B?V21EMHBCTzEweXNnakZUeUlvRHlZNnFabXp5dW5PT0N6MmJFRjljdnFuS0FL?=
 =?utf-8?B?NFhGZzFEOVZjM0VpR25SNktRSFJKQ1NrRFJvZnJpa2I4OXMvNGl1dWNodGZL?=
 =?utf-8?B?MzVxaUVjSWlzaUxWZkFPRTkwZ1JJUTdWalRXZXNSV1BrM1pydU02VWtGSFNE?=
 =?utf-8?B?V29Ha0gxMk9hNFhnMThJMFh0amRFZ3MvbnNmVVZlZjR3c0VmZWxBdzNNU2Vq?=
 =?utf-8?B?MHl1ZFN4dytFRDBsc2xTYjN4WU1mSjI4NkJreVo2SUtRZkZEemRqNEFteUVm?=
 =?utf-8?B?a1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dfc77c6b-c99d-44bf-b93a-08dbc985777f
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2023 11:38:47.8588 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k8MWbIzorlUvH+KGoVOQWzgd1fAQBtg+ZNukBwhRg2+EsWCDzSo6rO63vnCh60igpJVncyIlUXw3TAnPHB+8ROUi1EhbxHPJXntTbJslESs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5584
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696937935; x=1728473935;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Wwmj3uLp/3//e+YeIO69IAkITjfhTwcdLKg5NTgeD7o=;
 b=IpzUWyzwb6xVzWJ5PheEE+xF3WzEhemDuqpZ6zDqN1aLK7nwAHa7vuvW
 w6WCv5f8fhyC6jERhqNEFt5lqTfdFT+FjYo3KGgk9Xu6C9maNAalv0Gkv
 +cC1Ureqqtgbi4LprjqHs168QwLvr/yfQpnEGOqhHJtraFuXSV51+nrnY
 iHfYM5LtY4Vpu2i+kLyEnwZuG7NJru3BrRGoPfkAZa207VTC8agtHQldP
 QpId0cnWT5eLr0ocrwzLwaq3cubRpZ/1eiUh8zvHM2wVkEcbTcwMUAIJh
 FMqPe036lJX73TtVUhvavn54ouHWHpd+MMEscdIni4xlwifKFIJX7NxGY
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IpzUWyzw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/5] iavf: cleanup,
 improvements in init and
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
Cc: Radoslaw Tyl <radoslawx.tyl@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/10/23 02:24, Michal Schmidt wrote:
> Here are a couple of iavf cleanups and then improvements for the
> initialization flow (waiting for the VF reset) and driver removal.
> 
> Michal Schmidt (5):
>    iavf: fix comments about old bit locks
>    iavf: simplify mutex_trylock+sleep loops
>    iavf: in iavf_down, don't queue watchdog_task if comms failed
>    iavf: in iavf_down, disable queues when removing the driver
>    iavf: fix the waiting time for initial reset
> 
>   drivers/net/ethernet/intel/iavf/iavf_main.c | 20 ++++++++++----------
>   1 file changed, 10 insertions(+), 10 deletions(-)
> 

Very nice series, thanks a lot!
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
