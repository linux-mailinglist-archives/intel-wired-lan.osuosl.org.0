Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6674B57CE0F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jul 2022 16:46:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 19F9E4118D;
	Thu, 21 Jul 2022 14:46:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 19F9E4118D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658414810;
	bh=6X7TkDtFK4RbDsj8Uz5IYw5tsY3FSDA5fBxHQC10AWk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=N2aYSxqDLMfIVoW5aKKuTxL6F1jkp3AcYNhm0YHDEZF8KkXY7SrASiG1FZDuWTu28
	 vq71h1RbBrh+xENYhO3QZ9oxx/NR8AufR988tLEoi31sVsk9LtdVtTCmnuYBlKZNmk
	 v6Wg2a+BqLEs9X3DycIOuaPTNAdO/Sdau+F7NL7aXyr1iLN5VkJ/V9rj2RHKYAbpLl
	 O2NUmVX/x8N6xNGXIFcrqwuiw5qk6xPfLW1UlGA+tkZqgzLBjKwEumtX7WeOSFDmoP
	 iECcHk5qNPWefFis6oydfaSZTfHdSqIOQYc/0iXsx+ooGGAd7ih8bmRAP7ovZx9Kb/
	 Mp1Q8xIPUC59Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hfdqJIElNhJR; Thu, 21 Jul 2022 14:46:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 022D6404B7;
	Thu, 21 Jul 2022 14:46:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 022D6404B7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2CAE11C1190
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 14:46:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1E7C3400D2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 14:46:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1E7C3400D2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hgKBkwUv6U2S for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jul 2022 14:46:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12722411A8
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 12722411A8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 14:46:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="288232343"
X-IronPort-AV: E=Sophos;i="5.93,290,1654585200"; d="scan'208";a="288232343"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 07:46:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,290,1654585200"; d="scan'208";a="573767421"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 21 Jul 2022 07:46:38 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 21 Jul 2022 07:46:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 21 Jul 2022 07:46:37 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 21 Jul 2022 07:46:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m45kDllNoeNCMHgMPfKSj9eN5JUtg59ysK0GgvmW2qudFAKheIkb0xsSd5HrDymBJK58txp+Ccjs/uO860WoQGs6pTrfo7gByFgp266GbJB7mrWEawVeCV+WPGCzO7s0TtFgkH35IIqN5L9vpAOwjupKN6g4LLJStPCV4u6RS5BNXCHhIKelGmPOsMOHQDAmZvL+81rRSMQOO5lXEKSecF+LuQf3QcLBAs4SJek1+NXX6ek9r9C0mCkpfInn5agrIO+hih+ffVEd8WJQgo8lLwfk07UOqBeaPHl9lSvyjdtzeK5p4jbJU0lTIVH8g2X1jct/rCuR81xZvK4NHynhhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t6vf3HTIvvIGBAH6Aljw3W914HhziV2X8Z0PhT6CUi8=;
 b=SkcnkYY0luNnyXuus/s8XIJVwiBNd1hz18vYE70A39RaanDHfGt+MS8XHcMa8TC3+oXz/u9pqo/SJ6Nb9SlOPAh0hAgRhPc/FUCBg/pgvzGksRkj75OGwVjM/F6YJfvsKwZ9aRR+E7jmnPLuN8UBZ7OFJgg2yj/jqg3yKak/RpluTM3tWtuhSH/jWbkUtiEriXJPYHx/m/J7qswgo06kFw3VqazBddBZqjEooW8PtcsbmYpiOcftdyuKBOo0F44eyScbRaHMm198m+WJcXdX/etCfNEj5YETcsikty799sGruMbkaNdBrgeQlT5J5W516nmsZkS5FCV0hHb/oOYtiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5603.namprd11.prod.outlook.com (2603:10b6:5:35c::12)
 by BN6PR1101MB2180.namprd11.prod.outlook.com (2603:10b6:405:58::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.18; Thu, 21 Jul
 2022 14:46:36 +0000
Received: from CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::5008:4f0:1078:7ba3]) by CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::5008:4f0:1078:7ba3%9]) with mapi id 15.20.5458.019; Thu, 21 Jul 2022
 14:46:36 +0000
Message-ID: <97f5dd9e-b2f4-2a22-2ef7-9daabb70cb05@intel.com>
Date: Thu, 21 Jul 2022 16:46:31 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220720144004.14250-1-michal.wilczynski@intel.com>
 <20220720144004.14250-5-michal.wilczynski@intel.com>
 <92cab6fd-c6b4-6834-74f0-8df5a10ccbcb@intel.com>
From: "Wilczynski, Michal" <michal.wilczynski@intel.com>
In-Reply-To: <92cab6fd-c6b4-6834-74f0-8df5a10ccbcb@intel.com>
X-ClientProxiedBy: AS9PR06CA0211.eurprd06.prod.outlook.com
 (2603:10a6:20b:45e::15) To CO6PR11MB5603.namprd11.prod.outlook.com
 (2603:10b6:5:35c::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 04d4350a-3f10-456a-562b-08da6b27cfde
X-MS-TrafficTypeDiagnostic: BN6PR1101MB2180:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GMedY+bbs3vA5fE22+UGMCoNcOYLCABThimnqiSIIujk/3Lbte/eKUNPZwRqFv2da46XMpbnsecvIz2FHzVaZRjXE+R2FhN3NX3w7JTibT7WhFLt+3LsgpR1f6KgfoR1O5gQYs4j2z99kUK6hLyCBA6NLFLLpOAQomggHnByCf5XcolorAQ75q163cnVyoHTYvf9wzH4J7KyeALPY2tWbuWg9jvciMBPA++1T5fHiZEEpigtarr8/7q2gcB0s9ytVurdhvFoUhsGEvjUeP0WKLoxILI7NoZCefm1QZusSQez/YFnDn+tWo20zHFb7D7iYale3bvpEAGzzAL8A3HrEHmXZkC0NejxLRzr2QK7QD+QPXPHOHaFWoawO7516zBS2VyspKlKpEezoJnHINxW4lfGY0gM1QYhzAxIx4SAWN8TaxqdqepCIDWo0Lse7dg5Cz8Tr/0NG1wXb4ECATl1GCZzdmn+HZXHL7dOAjmEvsw0sERfhp4n0DMubAOAZyh3cB2hcale4eSNgER0O5ll/707YfwiUmHCsWkmyeflwkZgx37BzqNTTvkpOT8iTvD3IuSTWYp0f7lqrgC8YjPjl+g+CyFsacwoyhooPp6f0kwy/3vjXIGlQi+pc57bB4PtZKGz2z3/3N3pOBSnWzcDGldrHlvjYAcDM6RLYwH3rriaOCV9mq/laB59qj0LoogqPx6Oner4qj/CUDsIuOiRVh3EKtnk+KyILsr4LNdeI+lcpuO+7A5itY0OtYPdxoBzPCIMbaGX6CltwKU8EnC4wUDT4eM3R/+auItZ7YRSbmrj8nASiKhZbUtRUx8v3TyszuPIaCXrVY5IFA7EAChapswfOuqTr/rfWlLmCUh9KREZ0pWIlerh0fR2EXAzm2Bo
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(39860400002)(396003)(366004)(346002)(136003)(66476007)(316002)(6512007)(2616005)(82960400001)(53546011)(31686004)(66946007)(83380400001)(8676002)(6506007)(66556008)(26005)(186003)(6666004)(31696002)(2906002)(36756003)(41300700001)(86362001)(6486002)(38100700002)(966005)(478600001)(5660300002)(8936002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a1hMY05PSXBwOCtBSlZYbzFiY0hRbkkxR0dnMDVPYWxzYW1oNms4T3dHeVUx?=
 =?utf-8?B?b3BSaU91bnJodVh0ekZaT1UvT09JRkMxOHZQRTBsM2JFbCtoTEI1b1ZCNjAr?=
 =?utf-8?B?N1MwWnp3TWlKTWJtNUtsUEM3VGNyS3F2RlhaSlBYYXZpVkJiUjNObHNQdUwr?=
 =?utf-8?B?RGh6a0RBbmJPeklnZ21vdmo2bHNTRXQ5VkJCQ3lKL0Z1b01mU29vaXU1ZVZv?=
 =?utf-8?B?S1I5N3J3RUVIZ09LMjZQRUJOQ3R1V1VwazdyZVo1SkhhT1FBMExVcUpBa052?=
 =?utf-8?B?TERFRk1FZGJ2MmpVbjZ5ZUh6NURzYUl0NE5IZ00rdDl4aVFlOUlsYWxpcGhx?=
 =?utf-8?B?RkFlenFUY1paeFJqbGkvdHBRZzgzYUI2RldidXNpYW1qR2x5cnhjTHcvNWFQ?=
 =?utf-8?B?bTBqQlpxRVVTaVhUTDROR0Ntd0FjT2U2dHMvUkpqdTJoSXZwVWwwbzRUN2pN?=
 =?utf-8?B?dnN0bnFUL3pkckxTUEJtUjMySlpTSG93YnYvWWp3cmEzOVlUT0hUMlMyTFY5?=
 =?utf-8?B?THM1VmNWeTRxcWp1NisySXVKRk5WUlMvRWtuaGp2Q0dJNm92S2FSM3pRVVNV?=
 =?utf-8?B?eW5GKzU1cmJFVzkrWW9HWjdqSno2b2FFUWN0cTlERGxpQWp2NmZQTkxKUVdT?=
 =?utf-8?B?dStrOEI4NUp1dUY0eUVzL3VWYU8rL2lCNWVEVTZsaHNxNzJseVNyd3FiZnJ1?=
 =?utf-8?B?S1BCMjBSVXR4NmovRm52VExMaGt4TVFpdDk0VXpNemxtYzdnWXVLbHlCZWxF?=
 =?utf-8?B?TWJHbE1mR1ZsN2JHc0FrN1BDVDlYS214ZWFhd2xPV05EdWhJYm95RTZiV3lw?=
 =?utf-8?B?ZVk5ZXRYMEVobXByOUp1YXl1TlczdW9uY3FhRHNyaGpocGZKVlF3bUkyaWMw?=
 =?utf-8?B?c3lMMS9QU2gvMkdManJvdklPeUFKelduYUUyWFkycUlUVmNvakd4REJObkhh?=
 =?utf-8?B?K3JDbW1oL0dmZ2dYeTdGaHhBdENSVGlhZ3gzcDRocldweW9RU1piMUd3MFhH?=
 =?utf-8?B?NFAwZjF1ckVSdC9BSDhTU2d4YTZ1eFFzVXFNTHBZMk04VG4rYkdKNGhMakJL?=
 =?utf-8?B?bjVvcEtDYW5mZ3dLZ2g0bmdkUTNBN3Jrbmxhb3ZZaHdOK3FDWHVpN1J3SFAw?=
 =?utf-8?B?V21wVm1UaE9vYktUekpJVmcxQnZFSnoxZ09LMUIzUXFGUWFsVy84Y2s0b0V4?=
 =?utf-8?B?Y3RTbXZrNUZwNFNBMkNJSXJFYnVDdFp0MmhqcDNxeXQ5N1VFODd6RDM4dEx5?=
 =?utf-8?B?WG42ODdRbTdkTWJOWlRSVkNwZ2xPVkJ3THdRVUtoSk9KYThHakh3LzBPbEcw?=
 =?utf-8?B?MkNkOUFpeTBUSWtHaTlPRnhkenFieWM4SWhxQXBKdDA5NTRZb0ZxODVJTWxu?=
 =?utf-8?B?U3ZlRVNiVllHQ1UrQUV0alE3MGlDakZzOXgrNGdJZzdCV2tObitsOHhRS2Iv?=
 =?utf-8?B?TDM4dVVIUGFDTnBUZmx2Y0lmUDkrQ3JVQy9SQStPN0R0NWlOWmtkRHZ4R1RD?=
 =?utf-8?B?MmI5RG55bEhIUTdKcWZlbkVuT3RzUGlSeHJsamtuaGd3REpNdzk0RVEwRVVs?=
 =?utf-8?B?RHU1NXY2T2ZRMUNVaU5Wa0JEQVEzM3VVb2xMSC9XTHdDRytuRWdjZ0hBUE5W?=
 =?utf-8?B?TzhmakpVSnNCaUN6Rm5scTZhNGFydFhZb0FhTGdnUkMrTy9XOFJpTW5HL3dT?=
 =?utf-8?B?dkJDeFcwS3Z1QTJucHpBWEpIcnBPdHFkbGlXbEI1N0JVU0NldjIxanZ1b3BF?=
 =?utf-8?B?RUFZRkhXY21odXNZTE1FWlVPMzhPTFpnbmczaVN6T1ptaTcvT0g2QVkyNW5I?=
 =?utf-8?B?ZCttSlZWUFByM1Jwb3RlMzYzK1lJNUQzcjVucDJsY3JoZ2hPOGtENFl6OGxy?=
 =?utf-8?B?ZkkyOHdoaVJWSDJFZStsSUxseE0zK1h2Z0Z1ZmplYnhVTi9ja1FTaE5BUXlM?=
 =?utf-8?B?TVJsWHNQWHpDLy9wL1F1bktKUFBvNG14eUV6emp0eUxKd2dzY3NJVTZYdXI3?=
 =?utf-8?B?ZEZURDZQcytmZ2xzN3NHdlZzalp3TVppcENmNVNxb083WFhMV3NtQWpqVklu?=
 =?utf-8?B?KytDS2hFM2JscUtkRHhWWHIxaDJSVEVpTU03TUxsa0ZKZUFubzJTM2VaU3hI?=
 =?utf-8?B?YTZDeTROL2RMYkpUVmtuUUlLWmFwTVVsK1QrZzg5cUhPc2dQaE5VK2VXa3pV?=
 =?utf-8?B?M3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 04d4350a-3f10-456a-562b-08da6b27cfde
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2022 14:46:36.4197 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 269eOzZRWhBo1N7TDWPQg61xPnG8513FcuEkFe65m6xkAmYQumBfr++svHFw0sXRJ7pkbrQegYrkPSiQf2Wk/s18t8Ls+xEVD43oOkQYkjA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2180
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658414799; x=1689950799;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=sWwAkU0hxjmZC/vforv/6Jp+o3Ge7sQDH7zkDJNiQDk=;
 b=IqWDpw4TIFz9mHBhuB0IWHSE83oK3H4isyUdgcokGR45RiNbk4pKVJVH
 AraFPtLDEcfAUGTurMNTWhxYH48CDbXSjmHMagRmGwDE8OS0pydx18cC2
 zACCXR2xkSsQ/YMIjiimrHjARYfqFNMCr58A7LWfTNTqLl3QR+2j9JMCC
 uYbTNt6fmFQRTLJtYXmRg45wgjnE4ETL6UgbHo1lj0HBVa5SdNAmfmxcN
 t+IgBYSvWmd0MTWvv/Yfj/nW6raAC3Sx/KZvXfX7UXYpOQ3OxjPN37RmK
 Sd5bSbUduJGpYhzhjc1F3CzER9Fz6GHD0X2B9LOxqtJs8sdsQsmAHSscm
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IqWDpw4T
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 4/4] ice: Add txbalancing
 devlink param
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

CgpPbiA3LzIxLzIwMjIgMToxNyBBTSwgVG9ueSBOZ3V5ZW4gd3JvdGU6Cj4KPgo+IE9uIDcvMjAv
MjAyMiA3OjQwIEFNLCBNaWNoYWwgV2lsY3p5bnNraSB3cm90ZToKPj4gRnJvbTogTHVrYXN6IEN6
YXBuaWsgPGx1a2Fzei5jemFwbmlrQGludGVsLmNvbT4KPj4KPj4gSXQgd2FzIG9ic2VydmVkIHRo
YXQgVHggcGVyZm9ybWFuY2Ugd2FzIGluY29uc2lzdGVudCBhY3Jvc3MgYWxsIHF1ZXVlcwo+PiBh
bmQvb3IgVlNJcyBhbmQgdGhhdCBpdCB3YXMgZGlyZWN0bHkgY29ubmVjdGVkIHRvIGV4aXN0aW5n
IDktbGF5ZXIKPj4gdG9wb2xvZ3kgb2YgdGhlIFR4IHNjaGVkdWxlci4KPj4KPj4gSW50cm9kdWNl
IG5ldyBwcml2YXRlIGRldmxpbmsgcGFyYW0gLSB0eGJhbGFuY2UuIFRoaXMgcGFyYW1lcmVyIGdp
dmVzIAo+PiB1c2VyCj4KPiBzL3BhcmFtZXJlci9wYXJhbWV0ZXIKPgo+PiBmbGV4aWJpbGl0eSB0
byBjaG9vc2UgdGhlIDUtbGF5ZXIgdHJhbnNtaXQgc2NoZWR1bGVyIHRvcG9sb2d5IHdoaWNoIAo+
PiBoZWxwcwo+PiB0byBzbW9vdGggb3V0IHRoZSB0cmFuc21pdCBwZXJmb3JtYW5jZS4KPj4KPj4g
QWxsb3dlZCBwYXJhbWV0ZXIgdmFsdWVzIGFyZSB0cnVlIGZvciBlbmFibGVkIGFuZCBmYWxzZSBm
b3IgZGlzYWJsZWQuCj4KPiBQbGVhc2UgZG9jdW1lbnQgdGhlc2UgaW4gRG9jdW1lbnRhdGlvbi9u
ZXR3b3JraW5nL2RldmxpbmsvaWNlLnJzdAo+Cj4+IEV4YW1wbGUgdXNhZ2U6Cj4+Cj4+IFNob3c6
Cj4+IGRldmxpbmsgZGV2IHBhcmFtIHNob3cgcGNpLzAwMDA6NGI6MDAuMCBuYW1lIHR4YmFsYW5j
aW5nCj4+IHBjaS8wMDAwOjRiOjAwLjA6Cj4+IMKgwqAgbmFtZSB0eGJhbGFuY2luZyB0eXBlIGRy
aXZlci1zcGVjaWZpYwo+PiDCoMKgwqDCoCB2YWx1ZXM6Cj4+IMKgwqDCoMKgwqDCoCBjbW9kZSBw
ZXJtYW5lbnQgdmFsdWUgdHJ1ZQo+Pgo+PiBTZXQ6Cj4+IGRldmxpbmsgZGV2IHBhcmFtIHNldCBw
Y2kvMDAwMDo0YjowMC4wIG5hbWUgdHhiYWxhbmNpbmcgdmFsdWUgdHJ1ZSBjbW9kZQo+PiBwZXJt
YW5lbnQKPj4KPj4gU2lnbmVkLW9mZi1ieTogTHVrYXN6IEN6YXBuaWsgPGx1a2Fzei5jemFwbmlr
QGludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogTWljaGFsIFdpbGN6eW5za2kgPG1pY2hhbC53
aWxjenluc2tpQGludGVsLmNvbT4KPgo+IDxzbmlwPgo+Cj4+ICsvKioKPj4gKyAqIGljZV9kZXZs
aW5rX3R4YmFsYW5jZV9nZXQgLSBHZXQgdHhiYWxhbmNlIHBhcmFtZXRlcgo+PiArICogQGRldmxp
bms6IHBvaW50ZXIgdG8gdGhlIGRldmxpbmsgaW5zdGFuY2UKPj4gKyAqIEBpZDogdGhlIHBhcmFt
ZXRlciBJRCB0byBzZXQKPj4gKyAqIEBjdHg6IGNvbnRleHQgdG8gc3RvcmUgdGhlIHBhcmFtZXRl
ciB2YWx1ZQo+PiArICoKPj4gKyAqIFJldHVybnMgemVybyBvbiBzdWNjZXNzIGFuZCBuZWdhdGl2
ZSB2YWx1ZSBvbiBmYWlsdXJlLgo+PiArICovCj4+ICtzdGF0aWMgaW50IGljZV9kZXZsaW5rX3R4
YmFsYW5jZV9nZXQoc3RydWN0IGRldmxpbmsgKmRldmxpbmssIHUzMiBpZCwKPj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGRldmxpbmtfcGFyYW1fZ3Nl
dF9jdHggKmN0eCkKPgo+IG5pdDogQ2FuIHlvdSB1c2UgR05VIHN0eWxlIG9uIHRoZXNlCj4KPiBz
dGF0aWMgaW50Cj4gaWNlX2RldmxpbmtfdHhiYWxhbmNlX2dldCguLi4pCj4KPgo+PiArewo+PiAr
wqDCoMKgIHN0cnVjdCBpY2VfcGYgKnBmID0gZGV2bGlua19wcml2KGRldmxpbmspOwo+PiArwqDC
oMKgIHN0cnVjdCBkZXZpY2UgKmRldiA9IGljZV9wZl90b19kZXYocGYpOwo+PiArwqDCoMKgIGlu
dCBzdGF0dXM7Cj4+ICsKPj4gK8KgwqDCoCBzdGF0dXMgPSBpY2VfZ2V0X3R4X3RvcG9fdXNlcl9z
ZWwocGYsICZjdHgtPnZhbC52Ym9vbCk7Cj4+ICvCoMKgwqAgaWYgKHN0YXR1cykgewo+PiArwqDC
oMKgwqDCoMKgwqAgZGV2X3dhcm4oZGV2LCAiRmFpbGVkIHRvIHJlYWQgVHggU2NoZWR1bGVyIFRy
ZWUgLSBVc2VyIAo+PiBTZWxlY3Rpb24gZGF0YSBmcm9tIGZsYXNoXG4iKTsKPj4gK8KgwqDCoMKg
wqDCoMKgIHJldHVybiAtRUlPOwo+PiArwqDCoMKgIH0KPj4gKwo+PiArwqDCoMKgIHJldHVybiAw
Owo+PiArfQo+PiArCj4KPiBBcyB3ZWxsIGFzIHRoZSBsa3AgcmVwb3J0ZWQgaXNzdWVzWzFdCj4K
PiBbMV0gCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvaW50ZWwtd2lyZWQtbGFuLzIwMjIwNzIx
MDEwOC43WnBWY2dEUS1sa3BAaW50ZWwuY29tLwoKCgpPa2F5IHRoYW5rIHlvdSwgZml4ZWQgaXNz
dWVzIGFuZCBzdWJtaXR0ZWQgYSBuZXcgdmVyc2lvbgoKQlIsCk1pY2hhxYIKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wu
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
