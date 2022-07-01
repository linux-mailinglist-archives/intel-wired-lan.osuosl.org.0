Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D3A5636D3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Jul 2022 17:20:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC19761401;
	Fri,  1 Jul 2022 15:20:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC19761401
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656688848;
	bh=axHgsSh80+2VyRfXNbxZwW+mrp2npVkchsYPbD5EiLc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=miiyde7SaPkiWuNDfrF4Buw6M2KJJ1Yp4noXIKi3iXKnibTTTG37G5IyfuZ99UkA0
	 abGcy1NwTmPeCCDkvZdsfSEJZP2uVku4GArCdUUg7BzAZLXyuW6YY/v4L1zm5fJfTs
	 mhj877xdw9e0f/7nEpEz8qlmutQ/ginlla78dMhSvJrWW9je2O2Ohaszy65G1m+ICv
	 y6yddpVNffKfjRrLe0cdH0YhKZi+CC/nj5bDEG5Gf+M6948dI+3KNWdzP9ZbRNvwI6
	 Qlsyr2x1U3fEsmpLsTvPnHZg1QIM5OKJ9gL4hcRRuDYpi75fBKr9Dzi8BTSVUwX+qm
	 ii0o/bdzVJQwA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TMy8j8SVBYVx; Fri,  1 Jul 2022 15:20:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4B41613F1;
	Fri,  1 Jul 2022 15:20:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A4B41613F1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2B3891BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 15:20:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 02E204246F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 15:20:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 02E204246F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hAmGd2_-wupO for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Jul 2022 15:20:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0405D42463
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0405D42463
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 15:20:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10395"; a="280226372"
X-IronPort-AV: E=Sophos;i="5.92,237,1650956400"; d="scan'208";a="280226372"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 08:20:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,237,1650956400"; d="scan'208";a="596289172"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga007.fm.intel.com with ESMTP; 01 Jul 2022 08:20:41 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 1 Jul 2022 08:20:40 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 1 Jul 2022 08:20:40 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 1 Jul 2022 08:20:40 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 1 Jul 2022 08:20:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FAFkOwoYvjGvVnQAYIMM+Lc32Ly5qUrpvXy5YOYgV3KkUFeLjdqDcWUG0ttJkCEVI56nTIMGaX93KjpqgzsMFgjosz0Gt8hC5eg24f9FVjZftHnr6g1Bp/eP9Cc2d0kQ6IXMOqKZnWFNIlTtd5xmKxlzMX+X/WgYplSrJV+LrPPs/X/G6Vo9dP3baKgxwV1jLbEFL8Qe47jcvOckqtd2oQlYqHOmk8qaRQGcsS8T/f4em9oU/ExYhaxAJEBQsHLL5urvoY485bL0CSreZ0ra3ZDJrLZsEEd1N1mDTfyp+Cep+zC+OiFv3OU7YFJ/bVyIyo5jSUJpJgmrXZwm/+1z7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xq6d9X72ifhhvpvL3h5d1k3JpPmQO7BzRY+50HTekrU=;
 b=IECvpJ+skLgX6PieGOJifGTivhDXTEviY5OObRITuERmc+NtmJYeS6bVQ4hwJcBWc8YoR+GFxWkvOFGN2ywaB05qn7D+qidYLs/7ruP/WNbBE+Wy/0Gl18k3j4cK/sS4HIO8bOmottzgr826/gWEYe4aTH9JbkDo7Dxt3yreAgikjZyiycDYW00HbVROb425iUk7BMXaXLmvBXFbWm1PFO083UytG4HJ4/oBQVgkk6xJAjr9JInFtbAheaPStYC0x9eodk7ExRXUr9ikfwcUqpGIghI+5wugAVy1vHo2Y8i1io9koEZL2+OBZUncw81QylTRxsZS4xkmBq+ur8lVag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5611.namprd11.prod.outlook.com (2603:10b6:510:ed::9)
 by SN6PR11MB2624.namprd11.prod.outlook.com (2603:10b6:805:64::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.15; Fri, 1 Jul
 2022 15:20:36 +0000
Received: from PH0PR11MB5611.namprd11.prod.outlook.com
 ([fe80::5cff:5bdf:9dcc:e393]) by PH0PR11MB5611.namprd11.prod.outlook.com
 ([fe80::5cff:5bdf:9dcc:e393%7]) with mapi id 15.20.5395.014; Fri, 1 Jul 2022
 15:20:36 +0000
Message-ID: <04da412c-2ed2-be50-e33f-b20164625b7e@intel.com>
Date: Fri, 1 Jul 2022 17:20:31 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220624101611.1007933-1-michal.wilczynski@intel.com>
 <20220624101611.1007933-3-michal.wilczynski@intel.com>
 <30eee1c9-5cb0-4c30-b4e7-fb801fcccd3d@intel.com>
From: "Wilczynski, Michal" <michal.wilczynski@intel.com>
In-Reply-To: <30eee1c9-5cb0-4c30-b4e7-fb801fcccd3d@intel.com>
X-ClientProxiedBy: FR0P281CA0006.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:15::11) To PH0PR11MB5611.namprd11.prod.outlook.com
 (2603:10b6:510:ed::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2f1d3e8a-e3fc-45d4-999a-08da5b753fa6
X-MS-TrafficTypeDiagnostic: SN6PR11MB2624:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kkwVV+ScBAkw0rFUiYdA8hWvkItUr/wT/CO+7PtqUCbG9HPGEBicWKjBErBh47BDJuXl0ENUXjWt8AomWoKlYuyLOPBvHq57StEMPCm7ZaI2iSTi33KLXTio2mjM8/P1vqWFr3p289feIB+pURx5qt41AGRW807yUTGAIE/A+YKFrqHgQ2esXfBtmX4RTeHy2ObG7BhYH/gwtYZyi5QodbL6iLySRmv0qo8+d2OLsHbsqCBqcz/wkSIdxoKbS36hwPSnZcHl2p/QxykN2EjGEsui+k5jrmcOzoOs0uTBuTJzHzW1g0kjAUpTJKUJC4xqiXg/8xflM3hRYzXbwstH6mVnkIjJ6YmveCuNMURUjuy9CPAeP0ynz8oDiBD9I0gJMtHSs8nrvY+m/2wguoLXddBbjaYpfkN/df9dQh4np8X/yYrWrlI6oa7aDR1ZfA3tXjPIKRg49XuHLfX+gT0r/ZNXzZc23Qq75prV10TgYZ9GtUVEk0NOojsscKDxHZ1MMHgmh66UFiddwfPzaV2kGKejQBl93UXvTcPL7pGQT8DElba75wn7Z8gJLzcrQWjP/hT0A2skEOmSnIbNdwjp7knMnVGNKI+l7mEu1ZqTgBCtYqoaVU4pWI2XL1IQlzSEiG4QBODyasqS5zEv1ESvzgHi8C8LG0R8pmYOaffYAcc0A2mWNOaHb+vywAHytou4QakwZNBCHe+jIvZQ6tj17Ttom45SGIk5X+rM4tm2eWtwp1ya6uWUTRWKCdLstC5C5yRPkRbutMrymq86QeaG216p4hUHs1PLFWX12lFf+w/oCycg7E/N+KRSV7lRnuzUwhTb739wk9PoQ7VX19x/tL5kyBrtFmJTqA/+7pNAIzA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5611.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(39860400002)(136003)(396003)(366004)(346002)(66556008)(5660300002)(66946007)(6506007)(66476007)(6512007)(31686004)(316002)(26005)(6666004)(41300700001)(8676002)(86362001)(2906002)(31696002)(36756003)(4744005)(53546011)(38100700002)(478600001)(8936002)(186003)(6486002)(2616005)(82960400001)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OVZIT0dLOXJyR2tPY3hETGgraWk2Z1hta29reHhHSS9LOVZVbkxTaDJNK0xV?=
 =?utf-8?B?ZEVLeFJ3cE5PZ1BsbU51RmIrZ1prZjk4OWg5K2hiNEVVdGcyMDlvVnRyYlpx?=
 =?utf-8?B?VW1sUjliOFVIMGx3RVlzcTdXaXc4WHFobDNPY1VyM2owdmEzN2FMU1c2eGVT?=
 =?utf-8?B?MytqSTllSXI2b0hhSXBaVVNuSmdOTCsyUFBubU1aTU43UGVhdVdMOUlFWnQ5?=
 =?utf-8?B?LzYzQzVSZXRJZFc4Z2VQNTNFWkZLMERDTno3YnJ4b2VmYlBiTnhoSWtFRXl4?=
 =?utf-8?B?Z1lpMnY1RVQwVlBNaEJ0NGttU1dNalkrU0hHWGEycFNDMGYyYzQ4dHJDb3dG?=
 =?utf-8?B?di9QNytjQ21TTUtsNDNVWkpnY0pCc1NVNFAyWkdvclNjRW9SWU83cWZ5N0t2?=
 =?utf-8?B?aTNaYjhxazdwRHk2bmIrWUYxYzhQcmMxYStWYnQwa2RIamF6QUVMdGpuN0FP?=
 =?utf-8?B?RS9Odk04M1AxM2lQbDQvNlo0aDkvKys1Z2w5QzFTeUpYSDhpd0E2a2xnclAz?=
 =?utf-8?B?UTBrb25YL3N5MCtFOUkyVGNrdmNzMVpRWmtOOFpPWFBrUERLVjJjVjhVMStn?=
 =?utf-8?B?WjBXL3VuMG85VzlBdEdxejNLbU81YTBkMEw2UThkd1hvSmNmUk1QdFdGdW4x?=
 =?utf-8?B?V2lpNGtQQVpxTzdrWGtud2lxOTlPSk1iSUd0YWo5T1pXNXg3S3VEQTVqM3A0?=
 =?utf-8?B?RG5rZE40SW5DbmVDejVVY01tMnNlam9Dc1c5Z1ZBVTdrT0tWM042N0txTkJh?=
 =?utf-8?B?OXBDMGVXTU1QbSt4aFFTM1JqSDVVd3BOZkxDdUljM3F2YXl0RXQ2enJKL0R5?=
 =?utf-8?B?SzJVOThJZHFNL014VndoeHo5RFA3S2JuQnZkZUNWME0vdmkxaW9uSDVBbjVx?=
 =?utf-8?B?VTU4Y2s3SWhCZnE0SG8xMnQ0akN3dDdkQTdQQ2FlV3RHQ09TVVd6bi9aS3Vo?=
 =?utf-8?B?WThhOWdsYXlLY3RTTmVhZTNEN0ZhK2lWNFdZTWtQK3U1c0NrYU5ESFZQWkJF?=
 =?utf-8?B?WDR6MWZWYVJvVUlwR1hpVjhEaklkbWNNTHpwOVhSTjNwUjdxL0QxcWx2cVRk?=
 =?utf-8?B?QWNLWEJtejdrcUg4T0J1MGxjTDluNHlybXFRNHJMZUp5OEZCaTFPMWVIMXE2?=
 =?utf-8?B?Z0R5RytnVmRwNlk5RTc4bnBtN0liM0hyNWFnRGtqdTZ0K2l3NVJUUUR5eUEv?=
 =?utf-8?B?d1RiTHR2UHV6c3o2aGNuMW13NnZMRERVQmxSRUxUdUlwTTZpcFpydFpNYUtZ?=
 =?utf-8?B?dlo3Tnl0TWVnL1ZKZFZUTVlJSHg0OEoxQW1WaS9SRE4yMkJiUUpwYmNtM2hR?=
 =?utf-8?B?NzZ3ZUt6N3dZbjJWa3B4cGkvVlJRQU8yc1pqeG8vWXV2MXk5eXVpblV2NldJ?=
 =?utf-8?B?ZXN0bXV3YWRaSDBtcml0WUtyWXVUUzJPRzg3aVlyQWxFUEg1eCtnLzhibThk?=
 =?utf-8?B?QVJObENaRU1wa3hxc2xDemNPVGNnc3BBZTlxNVplbFhVUmx4WXV4dThsSDlP?=
 =?utf-8?B?cDFrTGxRTlpuamEybWxvdkRqWmJHeHJEcGMvMFY0dDZnZ0tTYnQ4WkRlK0gy?=
 =?utf-8?B?Zm1yZWFFdjZEbGQ0NzFtVlB6LzBYT2ZDaHFMZVVxNUpnWDR3TXJtZDJ5Rkh6?=
 =?utf-8?B?Z0pUV3NHRFFPb0ViQ3kxMFRTNlhTak5kOEVaZk5wckVXWGJ3c2NKeG1YYlZB?=
 =?utf-8?B?bTg0dUpaVjJSUG8rSmIyY3dSZVFmN0hwcThhZ3hSbzNwSFZHbGdIcTRCV3Vx?=
 =?utf-8?B?Uk10dzc0d0hXT3VpUmFlUENURDVLNU5reXZ5WUxLdW9OamJETVBMYUwwZWZw?=
 =?utf-8?B?aHdYamY2MEJzRXdLc2VVUG9YeWlkbXJHbUVQQ0Jhclp1WVVSLzVzckRta1pP?=
 =?utf-8?B?ZkxnSnliMldqNVBrdXZOYjJLR2ZDemRXOCtobmZvc0ZIcTVzV3Z1U0RHbGFW?=
 =?utf-8?B?K1dPVGs0S1ExdkNHZnhiaURTMGhzWTAzd3Rva3FQUkgwNm5MczlydTVlOFdL?=
 =?utf-8?B?bUg3WXJ2Um8rbUVMOHZwMU1kWHNYdlZLbWJhUVNvZnNtMW9VaEJIMis1aVNx?=
 =?utf-8?B?aWhzelJRRUpVS3hRTGw0a3R4MlhBTE5ldHNNR3BJN2VtT1NublZwNS84NU8z?=
 =?utf-8?B?Z0d3TWdTZ1laOTBmNXFEN2dxclI4aG9NQUtOUTZ1R1ordXVocUZsdjZhRmdo?=
 =?utf-8?B?NFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f1d3e8a-e3fc-45d4-999a-08da5b753fa6
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5611.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2022 15:20:36.6029 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QEz6E/HomqawjmAirp2aqPLlQRuZtS9dXJc0CivigFe0/fjK30VKfHo4WWzAAMokdDxJbExhgll0vhSjzBDaw4BW/xkOuAKzCFl54h0mTEU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2624
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656688841; x=1688224841;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=OHZ2EuUa2byQQbXnQm2x3kKOoJM0mXl5msgXf5vxTyI=;
 b=YfHN0EosE+cDsOZzytcg2SG/XQ7j9zdSv8VAoVhJS7BrTBA2t+AvnBIR
 lep8ycJdWdEU3x/A5JE6ClGe79Pnc2zi0n1AyNzkzsBcVz34EQwkYhfTR
 BO1YTEJM+rR8yx/WK6TSFRJiQ5rrjxTJBrLToe6eti+dDA9juzndHOWJU
 8Y+vVkBVo3fqZdPFaEN6lJ8Xld2BeCAvX2oe2EytJhb4r/xwdxYwgseGy
 81T+R6Cg85PaG5A+HDPxdRcrDOuPbNXz+aDv9pc90WipgxXZ0ugPw50jq
 rXFSzilAwVVOQkGPUPKzfZ3wW5UYDr0uHvgvs+aMEG9RaYE1GIyQlXR/C
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YfHN0Eos
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 2/2] ice: Fix promiscuous
 mode not turning off
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

Hi,

Thank for your review

On 6/29/2022 12:09 AM, Tony Nguyen wrote:
>
>
> On 6/24/2022 3:16 AM, Michal Wilczynski wrote:
>> When trust is turned off for the VF, the expectation is that
>> promiscuous and allmulticast filters are removed.
>> Currently default VSI filter is not getting cleared in this
>> flow.
>>
>> Example:
>>
>> ip link set enp236s0f0 vf 0 trust on
>> ip link set enp236s0f0v0 promisc on
>> ip link set enp236s0f0 vf 0 trust off
>> /* promiscuous mode is still enabled on VF0 */
>
> Why not net?


I felt like maybe these changes are too broad for net, but as you 
noticed this can be treated

as a bug fix, so changed to net in v2


>
>> Remove switch filters for both cases.
>> This commit fixes above behavior by removing default VSI filters
>> and allmulticast filters when vf-true-promisc-support is OFF.
>>
>> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
