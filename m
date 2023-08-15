Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 042D277D005
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Aug 2023 18:20:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 837B781FAA;
	Tue, 15 Aug 2023 16:20:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 837B781FAA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692116442;
	bh=e5RMgs7CovNBqzLcjmKyTqk+1mSoslb+xDSrKwbKdEo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iuQjdhIO/oCnf/xRulKfWLBLPwH0TJzEMJUViYfgHtI05jc+9xgL5G4v+wGbpEsqr
	 fVC/sa+TJvCV5uO9IPGx4Rc8Xxf+MaRvBO1e3890T4kpUztMIJ+Sjer5FcWf+0bCdI
	 TGHhK2093Uw188pJc9Rxq284EsOjbfUsw+0lrXN9cO+jlqvYv13bT2upymUoWcABsm
	 1nZeDNIwQCnJDpe1vqX45Co4vsF8p2Jo4pwTwVTcCPf4iIOauRQkeQXKan7eew7UaL
	 Cj2YVXIkWt44F8fT644RVhgZ0Dw+gwnk4vWt1E96bO2AbEV3GUlWw+LU8zuwp07HTW
	 nHXBTSd91EaCA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t2pVk-9Kvtfq; Tue, 15 Aug 2023 16:20:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B4D981F97;
	Tue, 15 Aug 2023 16:20:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B4D981F97
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BA70A1BF3D5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 16:20:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9F91660BE8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 16:20:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F91660BE8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oJh24Hz3UegM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Aug 2023 16:20:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8CD0C600BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 16:20:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8CD0C600BB
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="357287456"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="357287456"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 09:20:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="763324370"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="763324370"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 15 Aug 2023 09:20:34 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 15 Aug 2023 09:20:34 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 15 Aug 2023 09:20:34 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 15 Aug 2023 09:20:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZuVPOUsluj2BS2YI3EcwftUMug2uaL2+K0+V7BtbMOXlwodll0YOrfZX1hPChAnhp6k8KHW8cYNtc3jVhBS+vXFmo9tOgOqRISK614HEZ913SaJNLusKJaD6r2D1zmU/PyaVUJP5w+peyYp3ZngYKuFMtpbhXLGC5sCUevOEiKafG91b/2FvVZR/B1pfrCm5VW5GWzoUAYEL13fpnXOZ+S1F1if3gNrT4Cu9s/SaBmVxz5jUoMlid7BlWDTaF8Ue96/SDyCErua2TC01gqivQYJTgQMXG9hvTMx4xKvSyIr7qxWVsC41Zbf0NS/615c9arAcxwp/RVRz4x8yjJ51RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UuHBCWi5nQMj+qpW94OrQuwgKyJFjZ2hmeEFTchaQSA=;
 b=VGXveB31iDzpAtYyUqV/g8lmM4fMj5p+F1qoYVRB69d7APNOCydLWvPktQq5NLySjTfXJnY/imYvtggmNhDPCVs4LSnhLkyynZNiTIlvHMdZ3c2iaZ7fTy5CVm1feGG55++XeMbWk/Yzkfl/oketVHL333orSZs+RktqJUboz15tlHQzRQ8uSnhzbbS7lDx13Ck84Q1sjXn5M+EzVANe9vlOjYdNXsL0kxVw3XY9Tw7x9bEGTRRy5uddj5s4OJBZqY01X6EnMsZW8VuO0/tBMYYzTLJB0eCFtvQkGHT9SMJ2yRGyJtvGrb/mepb0INHJepg1Ceru+5mJB6XIJcpn6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MW6PR11MB8366.namprd11.prod.outlook.com (2603:10b6:303:24c::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.26; Tue, 15 Aug
 2023 16:20:32 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6678.025; Tue, 15 Aug 2023
 16:20:31 +0000
Message-ID: <3f5ef1c7-d691-dd33-0cfd-09cf4448cc95@intel.com>
Date: Tue, 15 Aug 2023 09:20:28 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: Jan Sokolowski <jan.sokolowski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230811124648.3368659-1-jan.sokolowski@intel.com>
 <20230811124648.3368659-2-jan.sokolowski@intel.com>
 <56dd5b1e-8991-c401-f888-236c50bd8bae@intel.com>
In-Reply-To: <56dd5b1e-8991-c401-f888-236c50bd8bae@intel.com>
X-ClientProxiedBy: MW2PR16CA0007.namprd16.prod.outlook.com (2603:10b6:907::20)
 To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|MW6PR11MB8366:EE_
X-MS-Office365-Filtering-Correlation-Id: c1e8e184-7873-48da-07af-08db9dab8bd2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1Uz6KBaVWKVOhi3G5WW4EroW7SInp+SdFHdjcib3OsVSMoD4290uMSXDQWPvro/jQqdIWqFq3hN2Ph8eoAlCTAA5MCGIVE5PhNDXTIytpYqqeQPafs5OPE/9tyls+3RH+qLK/98DBQYDJkRSZZUSJBzHya3QqK5IZ0cShCs1GqjpM8E0eLAVUY5i/NCyIhx9gGgvm1Tb5WT2GT6Xq0v8nCdI62qSxevMRvG681wzfruACwHu8Zwj9xAIz6kjlZx3G5cZ3h9U8ZEptUutv7VLUFq1Pjbg2jOwfLnbRRVxu7bZ3eMWNgn3g95He+7v3AHBxVeOdFiYncev4H3+Lh5Oh6BAeYvPyNr5qU1BNZvnirVJQGiR7kLXeQz+kN6nyOl6NJ+pPBUSKBi2pLrLnP2gzRYJNZ6gP+gzmubYyUxerW3KiDo9Wojt3DyvgBI16fniCmmwpJ5j+MGOaAr6PbpmXSBBrURi2JN4/FJNefoWe63UsGWOdbG9kg0ob6CTqotJzbg56h1BL6s+goul3TSL7CSxh5rjW+HDFxTvjuomnKEDhmch21Vwp4+bd9RkX+WTIbPn9qNJbouHeBafCQEostLh1j6V4nnNBZEKTOILot9K3G4TZAi67jxTCIsv5tNhP22ag+VO/QvqzVy58bcJBw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(376002)(39860400002)(396003)(366004)(1800799009)(186009)(451199024)(8936002)(8676002)(41300700001)(66946007)(26005)(53546011)(966005)(31686004)(6506007)(6486002)(86362001)(82960400001)(478600001)(38100700002)(2906002)(66556008)(4744005)(66476007)(36756003)(31696002)(6512007)(5660300002)(316002)(2616005)(6666004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a1UzMnhCSlpEdkhRMWFwS20xWTE3MWhwclFIZUliTTQvMURJcUJ1aFVkb2Na?=
 =?utf-8?B?UktXd1ovMzAvRmhEbVp4ZE0vRlhpNEdDWE1wM2lCcTc4UE1WMEVYaDRLOE9a?=
 =?utf-8?B?VTJFa25hTE9aWmhOdG9qTEVpT2NJcnpFT1crclk3RFFkZGNtcXJkbHRKSDZv?=
 =?utf-8?B?YVlPcEZvYjV5UWs3WDR4clBvYlYzV3F1ei9tVUtRdmhCdzhNRWp3eDBOaVFx?=
 =?utf-8?B?djFGOEd1NFU0QzhpakU1ZlJBSnhIVG8wWkZwK1h5b3h2QStHZkRPYXBWRk0r?=
 =?utf-8?B?K05EVHJFV0J1MGNvTGxhOHJXY25TdlRpTzYreFFVTlFLRTI4aGM5enVQbnRO?=
 =?utf-8?B?ZkpieDlwb2ZEYnhqamxUODVwZ3A3aDdWakNOM1E3YkZ4RG5RaS8zRjhKQU9r?=
 =?utf-8?B?VmprN3FyQTVVV0lGOExLQlF3RDRCaG0zZ2JlMXJxU1M5QUF4V3p0RENZMDZI?=
 =?utf-8?B?bTdBN2c4OFdFdnlOTTZNODRLQ3hqalB1UGpCL0xmdVFDejlwUDNac3hXeVJG?=
 =?utf-8?B?bGVJTjNMakJQOGJpZWFPblBJdGR5Tk80Y2V4S1lqWkRXemJ5TWZxMjVhQTd4?=
 =?utf-8?B?RHJjZVJlQ1M1WlYyUitzc1JZTUpNOEZSdTl0MXd3UzVSVXFnNVlPcjZnYVFm?=
 =?utf-8?B?SVJUbDZhOFlyWXlZZWtFelh2eWU0bm1HTW9xZHR3UUtTZ2NoNWx1cVNuS2xD?=
 =?utf-8?B?M0NyaG5ydlpmSnZoWmRSMko5T2w0WS94c3VQelVjMzFCUWI2bEZSR3Y2ZVF4?=
 =?utf-8?B?YlZLZmZGeDFwOWp0SEY0ekNYUG5NTVd6OXg0L0VOeU1yTG8ra09MWWQ0ZCtu?=
 =?utf-8?B?OXdod29xQmRhRHR6NSt6NDhob2pGemNjSmlCQmZZNWRySUh0RnBxSDI1eExM?=
 =?utf-8?B?S3d5QW42RzIxYzFiNEZMVElzNGZYVXJ5NU1USW1RUVJTNzZTYnpZK1h4dlA3?=
 =?utf-8?B?ejM5UkhlakNOekhNcEo0UHc5ZXZHRGlzbE92RWp2L1kvcHlBSjY5OWNHSVhs?=
 =?utf-8?B?VHFxbWx3TzBodmIrZzhYUm1GLzlsRFpDd2hsZmdKM3JNZWlwVFpaK293SDlF?=
 =?utf-8?B?SkpjQWpXLzNlK2EzaDNDV0M5TGhrQWNBdlhHT1k2NTZ5VVFWYmRybTd3dGRP?=
 =?utf-8?B?SXBjQmFuZ0poQm1uM0ZBbS9TUXVQeTVKRzVlVThKUTlLWWdsdytwU3pMck1m?=
 =?utf-8?B?b0hXTG9INGxUWG1VY3FpRVZyMmhvcWkrRVdSbGhyd3dFSVhzWnR2RGpLdi95?=
 =?utf-8?B?Q3ZuZG1KKzhMV1pZUDVkaU43M1FIdDUzazNpZU1NUk43YWpHNjVwR3Jnd0c4?=
 =?utf-8?B?SzBuWnNiTlRhZW45OXV2Smk1bmdPRDBJZUdTanZPMWp4L200aThhaUw3cDhi?=
 =?utf-8?B?SDJSOGpLaWhDeXRyc3gzeDZJTkJBZWFXS1RyV2xKOUxmMlhjTHRaRnNOUlhR?=
 =?utf-8?B?SXhQOUxUUy9XMjdRVTlUNTlYWjh0VVhjaVlDci9OTkRRQWptem1mUzNqU2ZX?=
 =?utf-8?B?b1JRNVZRNDZFeDAvMTc2WlhZZ3pHeHU2UzVrTE9YTU5wVVRZYjRSSEVpWktj?=
 =?utf-8?B?MXN3Tk0xT05sb0htWk9SdmtIc2hpQXNMSjZXd0diYmJ1WDlrb2VnU2haUWdG?=
 =?utf-8?B?VExWNnM2OEVxOUUwcXp6RnJuYlV1K3M3alM5Y3FFRXEyYU9BM3JrMmpZZUF1?=
 =?utf-8?B?ZzljdWZBRk0wMUgxcUN2SjJMa3RaMkM1ay9JSW91SzMySnR0c0s4ZnMvemNS?=
 =?utf-8?B?TEdlbS9HM0VrRGNncTgxYll6TlZXbFBwUGdmeDY0YVRGbEFwK1BVQnhqcTFU?=
 =?utf-8?B?TTA3eWxBeEtuSncyNE1uREt1bmxEUlNQMU9ndkJQZTQwTVF6TUg1Z3I1Nkho?=
 =?utf-8?B?dHZ6YnBjNWxRNnBQZlJsTnFER21IUGdtczF4S2h2VHlkaCtlMUFKRTdpcTFI?=
 =?utf-8?B?dlU5cHkweGU5WEJ0M3ZJaUJTZEFISWYrZHRpSDBvNEptODFadWJYa0dSQXdv?=
 =?utf-8?B?bEJpTU45U294MGk1S3J3WGFFSEhwayt3bnVxV1VYdlNIMUNacVoxdkpUZjZ6?=
 =?utf-8?B?Z3ZBekdlcERLcU55SkIyMFFydkpUUGpFMzVCQlpqYk5DeTI1a28xSjVKUGtp?=
 =?utf-8?B?KzdmaDRyclA1cDF4QkhvZmtmeS80TEhpS0NWdlpQdWR5ejM2aUZxQ2ZqcjNN?=
 =?utf-8?B?bVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c1e8e184-7873-48da-07af-08db9dab8bd2
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2023 16:20:31.6241 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b0n9MxuBlyMl6a1InfVgB2ciZ4rMQZnEaJ0FoRNsoDP4J9yypI+E/2k5KrJk57ZuBWROmZQ+vT9AXhfTSyRAJssoRvb2efmYJkOmxSK9BNI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8366
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692116435; x=1723652435;
 h=message-id:date:subject:from:to:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lXZVCs/3p3q0MmAymnEmD+mwk8qVGffxlv25alApT48=;
 b=H+IcRwX5UbDVieH3hEEd8nYglCRSCi/aPEfk1PYiL0nIMli2JlsklUJX
 KHilKgd/AmqsaPds1RYP/yjN5Ep/AAa22z9tDu1T/CyTas3Acfj3qyO4j
 quDz/SGKEOb4Qt2uYA24AYr2YT6SxAKll4TSk9/ige41KxyXruzwBkxA4
 DXAsBvVHtgfRpC3xJNqevKPwvTTmer0U0MFmCLlxsy6z01qVGi+8CvO95
 6HTEM4H/cQM+aXRzVz2DGyixedIJS3KrWlrPbL4aBN7la2T+D6pegmeUz
 695nKi7PrtF+FjUwe8uLOs9Sqi2yZQEXxMdKrW9sY5DbkvOeKZaPsdVzT
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H+IcRwX5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/2] i40e: add
 mdd-auto-reset-vf private flag
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

On 8/14/2023 3:28 PM, Tony Nguyen wrote:

...

> #2 private flags are no longer allowed and/or highly discouraged. This 
> should be RFC'd to netdev first to see if they are open to accepting 
> this private flag.

This is from netdev yesterday:
https://lore.kernel.org/netdev/20230814192231.12e0c290@kernel.org/

Acceptance of a private flag is highly unlikely.


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
