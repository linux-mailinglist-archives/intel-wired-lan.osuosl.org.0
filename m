Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 423697B7AC4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Oct 2023 10:52:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6ADA141927;
	Wed,  4 Oct 2023 08:52:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6ADA141927
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696409563;
	bh=HVvPHcc4/NPOm1B81k0CfuYkSE5HlGwapMbYbqU47Zg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eQdSOO40ELxHTy9YnUZHK3zkBI6FwOXOOJUOy6B0JOCpp2QxjlPlzL0s1d1uUFtqn
	 Hd5YNnTacf+sO24LOWbS9dvkdBN1oo8FIIjlPITbmSd0hYrObmKEJH0shjLxgrWLcH
	 n/wKfkc+jB/nKPcMxJIWfyJCq5Ulan+UMT/7/eySu2a2j3kOA8QT+ND6TBthqa0kEK
	 IwbuTsgW1CdBLn4TD7HsLnWkp3Ce0mLQ8f/wiZEGiPCHALhPhRkJqZLIKwiyxXtlAB
	 Z3dQty8vovQ5Lu/C1eBKQtk0NhXKFbqWM4NAaV83X2sZLUMtzg+iWBDpIjTne/MugG
	 OmA/YFR6lY6Pw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UJc3Rf0lgvHz; Wed,  4 Oct 2023 08:52:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3F781418B8;
	Wed,  4 Oct 2023 08:52:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F781418B8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3E7B31BF487
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 08:52:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0715E8340C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 08:52:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0715E8340C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1jF_aUdMo6Fw for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Oct 2023 08:52:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 45B6083409
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 08:52:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 45B6083409
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="469375062"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="469375062"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 01:52:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="751197474"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="751197474"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Oct 2023 01:52:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 4 Oct 2023 01:52:34 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 4 Oct 2023 01:52:34 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 4 Oct 2023 01:52:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HfFdbQ+P4HQ8FvO7hO2nxkV6U+OjB5rjjMeEGPzibJDPEMtcvSQP0wZBi9l4o7nnko/h8xytzHQfx+gC0SG7BqtSku546/uWnnt6c9LpH9xR6g7g/TePx4hC0nyysoUs0BecRZCvLL8TKTu4iQYwtJKGryLMtNfK6Q8ZsbHSfi6qREn846KlUePpxISeufSM/gMVpQ+cq4HLUlyqNB4L8Ck3V3Qe8e4W7nyUke3PJHfjXsPMqxwXF4sbQEl+PTBfqV/MMeNK9tjoi187YdEeMdeEpP4+jNjZaOd1lbeKHfaqDApC6Pu7a1Qi9KTxLe5p/qRkJcys2se604OQes7rYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q/hfcd1rkxZBJ0TC9fcMZjb4oDqUmB5JR/w7iZuJhS4=;
 b=j4GiqBPP6xUPzRTQBonOwn5H6IBjjyq/5RuSkn369FCTziZCBgFg36b6Hp6zHYFd9x6kFiHha1joxexyITUmYbjhOi18TRNOGgAhq4wmWBUJ9yrCtOohFUCUR3+Q2i7BKZ8jTNEbiAvN4i8At9e26R23NwnsiMq7Mn+z0dKrOBs1wcrP03U7KdtVTuiETrTqIEHgDeVA2HiZLJ01OmBHlTmVJDDOz2DLGBJCAvEoIg3DLmWDfW/fAcRtFx9bB3HeRt2fZoh60NEoTzAdQJwaKtCRV327HcLDeervoVweH2HhxkbhPUUF/0TM3SjrpQnIa1jPs6BkVBAwsB3S0nA/vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by PH7PR11MB8479.namprd11.prod.outlook.com (2603:10b6:510:30c::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.33; Wed, 4 Oct
 2023 08:52:26 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::bede:bd20:31e9:fcb4]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::bede:bd20:31e9:fcb4%7]) with mapi id 15.20.6768.029; Wed, 4 Oct 2023
 08:52:26 +0000
Message-ID: <a714593b-32a3-d552-e435-76e4a5dbb951@intel.com>
Date: Wed, 4 Oct 2023 10:50:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20230925155858.651425-1-arnd@kernel.org>
 <1430f3d3-4e84-b0ec-acd9-8a51db178f73@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <1430f3d3-4e84-b0ec-acd9-8a51db178f73@intel.com>
X-ClientProxiedBy: FR2P281CA0073.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9a::15) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|PH7PR11MB8479:EE_
X-MS-Office365-Filtering-Correlation-Id: 6f9458dd-00e9-4260-abbf-08dbc4b72f9c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0qZHs/pP+Tqy5juI6VdjqajWVrNjuExXrIwjLKFx/vK+ThI+IwFaW9lHGbupJwk7QpfmPKBwCoXgiuP6aeTGTKCNI/jO2AMIsxYomwskZORY8vGFWpoHUmdeZVzOTJB2VWr17iHvoChpZ5d4btIU470MuF9MbTjDwQx1/8wC0djqb2FVmyGA7xF212Ibal/wmUZvvb+yk5fSN7WaC/zU6BUfn5aUZSQjeWmibUcbtDBSH3sK4AdXq2okRSgjJ+1MTN3QO3ZCh1S9BWaFj6ttC4lWkSl8eIX017/4s9nAwFFRTpiNGxlZiR3Y4b+KKS7Zds4YnpNU5POccXWPcsjLcf9PpgzECGIQC8MISkTfvZPqtLigSg5+MRhjr0zyTW6mGmtlhPlgaD2VNCRp1GUUh+GDiCf0ot0XRFioCoeRcOADS1A48mcLmcmQeVHYnCM3NCaDRtWyqhXX/BGFID+s2SKfyWfnfwmobOebYW6dGEnx85DxArW1ZKRyuUHZKGeebyCtsAQ3SNMDyQhbRbzDS33f4RhPjhgKBFpcuVKRbhYaCJbUzSpFroj1SM8SODsVVRVAIaw+kCt1leCLHqnyNaWtExM5FeY/AR4+ylIo6RKj4TR7Ypx0JMcPC7HEfSg3KeKjFQ7ZH42TH5UooOtzcg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(366004)(136003)(346002)(396003)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(66476007)(37006003)(41300700001)(54906003)(66946007)(66556008)(6636002)(316002)(6862004)(2906002)(6486002)(38100700002)(478600001)(7416002)(86362001)(31696002)(8936002)(5660300002)(83380400001)(36756003)(6666004)(8676002)(4326008)(6512007)(82960400001)(6506007)(53546011)(26005)(2616005)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RHdkaG1SK0I4N3p5RGZTenhVQ2pHY3dvSGZiYTBVZlJ4cVJHQzdsL3M0RlhC?=
 =?utf-8?B?bGtDbHhybnVGOVVWenQra2lrSXJuM1prSWRDOEhkOVlnTDVPbWhxTWx2ckYx?=
 =?utf-8?B?QXFtQUR4WGVKMW90VzJ0VVBvVXZnSkI4VzhQNUw5bFRBVUtaOUl5dklrY29X?=
 =?utf-8?B?eWc3K0xSMzhQVlVqWGpQMzVkaXVwWGllRUtSYVpHT3BseFJ5UjNjakR1b2FJ?=
 =?utf-8?B?YXpvdWw5ZDMwTUFROUVzWVRua2g2QXRFMXY3ZUswdVJ3dVUvQjJ3NFU3clp5?=
 =?utf-8?B?TnFOWXVKZEI0SGh6djU2TmtLMGZYL1E4Ly92Nm12dmx5TG94NGxDcGZhVGty?=
 =?utf-8?B?N0cxbXUwdC8xQ3hycEx3eHRyQWcvNktKaHE3eUVJcVR0T1Exb2NhQlRLWExq?=
 =?utf-8?B?bFp3OVBwNGdaL2FoRnFBOVI2YVRWdGdxNTlRQmtoMld4Y1FXWWtySWVXQWVC?=
 =?utf-8?B?cHVpSEdZeDluOVEySXJ2L1VrbmJtU1lJNi9QZEViVWIxK3FnUU9zTWFReE53?=
 =?utf-8?B?YzF5SlcrQzJ5KzdyWmRkS3crU2JFNjVKUmVKU0hmN3MzS0wrTVZzWVpoUUF3?=
 =?utf-8?B?cFZtMFRwODZBTnNBS1NrR3U3UUZ0a25IVExqbDh5TXN4ZkUxOTFFd3BJL2lx?=
 =?utf-8?B?c1BSWllXK3JaSW5Qc2tZdkZxcW9kZDFPTkZiTmNCVUNwV2svdnR5eWs2bmU3?=
 =?utf-8?B?NHVDR1BubWRRQnUwdnpKNlNNVXZiRFk2QWNtdENEN2dxUDQ3SDAvUHJlMDg3?=
 =?utf-8?B?V3hNZ1lDSGZlK1lvK2hJUGNuV3VwM0tBWHB1d2thUW80Y0JiUXRwM3pIQVlw?=
 =?utf-8?B?bUcxSVBjVjJSU2F6MG5Pa1ExQ2RacVV1Uk1ZNnFuNXVteGFMenlmcmt6Wmhq?=
 =?utf-8?B?NlNWS0VQQThLem02a1ZkNzA3L1FoUkhYdXp3SCtyODhxdFZYZlpyc1doVVhE?=
 =?utf-8?B?OU9JMzBSYWtCZ05LTFpvRGlCWFNndlZ1b1RIb3Bwa2dxNS9uR2FPM1BMYmhZ?=
 =?utf-8?B?OFFGa1VmdmJnM3Z0dCtHUHpBVE9rSjlBNjRmSTlkT3ZBTGxsRFBjd2FKS2U4?=
 =?utf-8?B?Mks0a1dPTHZaMFRIeFRSUzZLTnh4NHpmU0xlRnl6aHhmYzdYczVtSlFjK0Z3?=
 =?utf-8?B?eWdYUjhrNDJTQTh4eWlVZEI0Q1RucCt5OHdJNkR6ZExGT1I4MGRJa1NGVjBS?=
 =?utf-8?B?M2ZTdXNDbGtzb1RtVXUzY20wU1RzV3BYRk5GRUFMOEFacHdVdU5kcVRtY2JJ?=
 =?utf-8?B?dUR4dFBGOG95by8xcE5zRlp0b0R5bjZZZGV2aVhvVUE1dkY0a0pYMzAxVHZz?=
 =?utf-8?B?Y3BvSnkyZWF4V1d5bVdDbCtMSGdOYmRFVGlxWStxckVyYUtJSGxPSUUxMzFu?=
 =?utf-8?B?d0VseHloM0k5bDhpNDNRaGpSOGxxckgxY2xCSXlzNU9tMkIwcWdhMlFSRm41?=
 =?utf-8?B?dlM1Z3J0Zk8vb21DcUVTT1BoYmYxc2tJc1EwQ3RDbWwvb2JZSTJTbUtORE1u?=
 =?utf-8?B?ZnRqekMrMWEyREpqQmVxMXVTaG5MUTR0RGFDYXU1eVVGeWVURDkxamlyYkZZ?=
 =?utf-8?B?Y2VEM3VWMVVXNndKOFpyUTlzVzgwRGRZVU9DOUthbmN6RTdrWkZHWGsxQ3Rt?=
 =?utf-8?B?UUpFRmVQNTdRTk1TYjFzcng0RU5PeVMxL0JnNWpFYWdrVG9veHNOV3c2Y1F6?=
 =?utf-8?B?d1VpeUpaSEZxTG9rZ0srZDQ1Ym10aHA5Wk1mdUszdU5jbDRjc0dvQVBWaC93?=
 =?utf-8?B?bnNMWk02UWM5M0ZoOE0yM2ZkMWlNQ0k3Y3VPS1VTU0RrNUFjK0lLLzI2ejRt?=
 =?utf-8?B?RWVCSWhkNzl1MXdxbU9tZGlIaDFKTTZGRTJUR2NPVVlsUzgrcGwrVSttcDJQ?=
 =?utf-8?B?ZWR4eGE5dXBRd05BQ3FyZU9ma2VzNGJudHB3RStaWFhiUzhIZHB1dVpaK1RU?=
 =?utf-8?B?VkxxVFk4RVlVUzlzYk5ST2FsRHdYeUhVTXVxRDR3NEhPRlhKL1liUlM1dXBk?=
 =?utf-8?B?WU82RStOR2xueXhFWC9rSzJsWXJLWGc4NjJlbzM0cHExNFd1MjgvVUR2c0V4?=
 =?utf-8?B?aTZLaUVtbm03QzV5dUtHbUpVZUVCeFN4SDVwVU56WEZuVWhqWGVYMllGanRj?=
 =?utf-8?B?VHRyYkUyRHFUUGp0QTlxL2NubzFlcWpXelJyYlA0TGRoMnNaUkJwVXZLTGdo?=
 =?utf-8?B?TWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f9458dd-00e9-4260-abbf-08dbc4b72f9c
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2023 08:52:06.7025 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZQDZQA8qTGJcjMPYqoZXfkOEmGrRG78/ALjFfnQozoMlMpe3/TGw4jyP7GT/xn84PL6nhJSzZwiP7frOHxndKyZR9RaAyo/sEY1P5BUgT0U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8479
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696409556; x=1727945556;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4Z82AYNBN1aHqAc3+S3I9YEA+CLTeX4CZk1aoYW0Zxc=;
 b=YjL+UU3aOdmt1mvZUZVSLbp1JE75rkhpOIBziap5sTMI/frUp8+Yq5Ws
 PAc3uc8TXTy/P+g4D24Y6jppnhS3Z101J0/w+JDyINBHLIarcRstP0HI5
 8nC19O1yNnJECW5UV5zoN8TKP6+e7TgaZIWT6tgVUKDdZHn1jlsXJ7cO+
 x/4SZlVtT2suSepGYdkoWbpdGKfLZlV/yy450zaCNvGwzUApx+rXAVbRf
 g179EtGoOMjuAH+YaIPQWeVYi52zWVAelTY+cEKmNdyvGQrCpcKEK0VCj
 2tGl2Ril9C9vM7o1rrw5JPJN0kT2KgCpzxd2dUsW5QEG6ZM5wqopYZ9dP
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YjL+UU3a
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] idpf: fix building without IPv4
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
Cc: Arnd Bergmann <arnd@kernel.org>, Willem de Bruijn <willemb@google.com>,
 Arnd Bergmann <arnd@arndb.de>, Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Joshua Hay <joshua.a.hay@intel.com>, Madhu Chittim <madhu.chittim@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 intel-wired-lan@lists.osuosl.org, Alan Brady <alan.brady@intel.com>,
 netdev@vger.kernel.org, Jakub
 Kicinski <kuba@kernel.org>, Phani Burra <phani.r.burra@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Mon, 25 Sep 2023 10:05:03 -0700

> 
> On 9/25/2023 8:58 AM, Arnd Bergmann wrote:
>> From: Arnd Bergmann <arnd@arndb.de>
>>
>> The newly added offload code fails to link when IPv4 networking is
>> disabled:
>>
>> arm-linux-gnueabi-ld: drivers/net/ethernet/intel/idpf/idpf_txrx.o: in
>> function `idpf_vport_splitq_napi_poll':
>> idpf_txrx.c:(.text+0x7a20): undefined reference to `tcp_gro_complete'
>>
>> Add complile-time checks for both CONFIG_INET (ipv4) and CONFIG_IPV6
>> in order to drop the corresponding code when the features are
>> unavailable.
>> This should also help produce slightly better output for IPv4-only
>> kernel builds, if anyone still uses those.
> 
> Hi Arnd,
> 
> Also, a pending patch for this [1], however, this does look a bit more

I agree Arnd's version is more efficient, the other question is why my
patch has been hanging in your tree for 2 weeks, although I asked to
take it directly to fix automated builds ASAP xD

> efficient. Adding Olek as he's author on the other patch.
> 
> netdev maintainers,
> 
> If this is the version that does get picked up, did you want to take it
> directly to close out the compile issues?

[...]

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
