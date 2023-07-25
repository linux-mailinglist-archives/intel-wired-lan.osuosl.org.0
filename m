Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E397620A4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jul 2023 19:55:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E7CF610E4;
	Tue, 25 Jul 2023 17:55:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E7CF610E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690307703;
	bh=A8UeeNRLl8a8lYKvV14KxZgJIvhcCtwGG8KFiV91aE8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7Mq9J0EJTkfHSAvfCI+BL1g57tcdocInhoyeJeoKJOVvF4NC9HO7Jm0sCGNcpL73D
	 dyfhTz5YKUYVXLSvI39Aooo2og4Dl5O93gkw1dDpSppQYn+rHOIeQuVoBr15dHbS7E
	 aDHzDSbckOiu/c6tTyxvM/S1zPFefzo0xPf1nIg1wE83PLbFgn6mgJZOQI5SAFRlbh
	 oZ+Qa5b7GKwQtAnyWpQFULQA7X96Otrrbd8RygrdjYOhy7EJ4tZ/ZheDLsrFqwuPLO
	 9sePb3wxygqdFyoomEJhFqcEnI6KEKdw/1tZ8WewD1MHuQve4NZ1RlklttyDqjqywS
	 4Kz8uU/cxyTcw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zpJhSmlXsiKC; Tue, 25 Jul 2023 17:55:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4336160FB0;
	Tue, 25 Jul 2023 17:55:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4336160FB0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CAFC21BF317
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 17:54:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A23CA41577
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 17:54:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A23CA41577
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mZlr4HzLdNO7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jul 2023 17:54:56 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 535FF408A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 17:54:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 535FF408A7
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="370476345"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="370476345"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 10:54:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="676317703"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="676317703"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 25 Jul 2023 10:54:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 25 Jul 2023 10:54:55 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 25 Jul 2023 10:54:55 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 25 Jul 2023 10:54:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a5T/Vf/hhSho00gb5ZCganAmHW+fseIYOPdcpauT90aep5+VmloiSRxAPdMGgRH8LHd87oxXi7aE+XxEUJvKjo8GC9pduCJWGIqfDQscIjwLss9+ypS8O5qtAcIiy0XI08AmeY7RBXc5JDgaivgmba2F9TeyqYL0R2IJzBQIbuBPqpSp+/tdImiMOub11fxQM2jvUsIcygVZPtwdHaxMBNpZT5LFKnGVfKJUGX7Ant/WRqUqj5s3h8547nciaJ5/qE7gYuFcx216I6mEcVwcNfmyZlGWsEME2c9s2EUHLxTcDBf4e86AIEb4oYf/rPZvq3EIzUPX/43Y//R+y5z8LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ovDxb99uy60L2gffDBoxWzpA/HbsWZ/XhAbNBtQU+yA=;
 b=DZRhr8PHTo86HO3wpz3qIIFAL7S7Uh4s2YJfpDjXcqu3lvum1Aj/CSyE/5ZBciMcYj6WINHcNd73K5FqATO7R63o1dhuIJXILw8sZ6e6YuPIM0VeHXokU5IyaOcXT6fYwArmmY7MYydG5tKl6FUFbDn3lCffaw75v8Nxq+FRdCIcRIHids1cyzZJ8r24xPxIbllesnbqQILV7EHSJszMtpOWD29YX72cF7YE8r+BTsCxrF8jPfgDaiXDXlf7cQ77uWtB40ORbAxhwgtvo/q1nLbcUej7UkdpzRpIwl71SeH95l4Lb39GF2iL3esge897+BB3qFqzNh2enoQb9ZlLGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH7PR11MB7147.namprd11.prod.outlook.com (2603:10b6:510:1ee::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.33; Tue, 25 Jul
 2023 17:54:53 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::cb4c:eb85:42f6:e3ae]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::cb4c:eb85:42f6:e3ae%7]) with mapi id 15.20.6609.032; Tue, 25 Jul 2023
 17:54:53 +0000
Message-ID: <83306d75-8baa-9fcf-6ae3-3837c2f041c2@intel.com>
Date: Tue, 25 Jul 2023 10:54:51 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Tony Nguyen <anthony.l.nguyen@intel.com>, Michal Michalik
 <michal.michalik@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230721154424.11834-1-michal.michalik@intel.com>
 <20230721154424.11834-4-michal.michalik@intel.com>
 <f70e62c6-da51-4bad-1e6e-cc7a9df274ed@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <f70e62c6-da51-4bad-1e6e-cc7a9df274ed@intel.com>
X-ClientProxiedBy: MW3PR06CA0005.namprd06.prod.outlook.com
 (2603:10b6:303:2a::10) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH7PR11MB7147:EE_
X-MS-Office365-Filtering-Correlation-Id: a8212f56-f4a4-4c74-4195-08db8d383f98
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2AXFghmIC7RaGuLL75zmTHgIumP0lHD8hjFm4wPwaXyr2NjqUURA8ESHrP+BCI6LhEPTS8EFzFgkGb3G9uLB0I3K6lQhQXIrpXPRmC+3u5eIKs7QCproHRAH+UL/qRCuoKpv5uLhga7uqCPVQ4py8qmt3E3ahsRk97l4BiULVV6Lvr0KQruE/p4e9nhX/hhkWWGyNPMFNm705JylOZ1oqE4ETonyPygPrhk7MadV/D2ibZxcdmlrq+TQp9SdpNBd3Vhehj0kgR57LjTtaAjwSo453NmZC0FXwmbXarMgxOB18G6Eir3EMhkK4YQBSsje2c2Ket4rbckzhgb8uh109hzUSbwk3/DXYkK9xDO27HqB0M0PqwmuZ5whdP0J6psEZGhNY9tNta+0G3GSlRTpZk+MKqBx9IwnNzA0708is7Rv0RL0s/eH5S3GEmK61Lg5FmFA6wGSIseQMwtmKjAAQ/uhQmcPgVc8yD5yOsmeP5ghok1dFrQmZrD6wo29oIZec4BTZ++mmnUNgqUi1B1DE55+kKty4mZ1P0/8CCnIyFFHDPvlZRelvc8gkgdpXBS9jLu5EFRywz32rduN26iAvTvI4Rdbby+bCm9STtqtbMsiYacQd4YRu/5I6FDsgFi0BJL1U048BO2GvsWeQNfQiw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(366004)(346002)(396003)(376002)(451199021)(31686004)(6486002)(966005)(110136005)(6512007)(478600001)(83380400001)(31696002)(86362001)(36756003)(2906002)(2616005)(186003)(53546011)(107886003)(26005)(6506007)(316002)(82960400001)(38100700002)(66946007)(41300700001)(8936002)(4326008)(66476007)(8676002)(66556008)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VGNXa2N6RW83YUJoZEt3d0hlbG8xTVgvZmpoQmR0TmtvUGFnM0M2N1NCY2Z5?=
 =?utf-8?B?aTE1UFhPUXVBZU1HUlZoYmZ1VmFaWlRsTVBsQlJGY0NzVHFDN1g5VEs3RVd5?=
 =?utf-8?B?RnJFYlBZZTRPb3QrMXNHZG5ScFc1WWlRNTlKZHR2YlBhVVU3Q09KVkJVaGgw?=
 =?utf-8?B?NkljV0s4WUZNQXVIMS90b3paNTVWWGFneG4ySzl5S3p1cHg0MDlTaWNKbHZl?=
 =?utf-8?B?ckowc0Q4eDJWMTBqbU9ZZzYyaTFzVStDSmRTM2JLeTlsdzd2U1U3WjI4Y3FV?=
 =?utf-8?B?cFJQMnFrUzJKdWdPZUJ0MG44ZGZ1QU1zR2o1N21mck5ZdmxwdGhXeU5NbUJi?=
 =?utf-8?B?eTFuWGtxVjMyT2FwSUFTNld0b1RnQ0EvMU9LR0NHeXpKK0JEM0k5ZXJUbnBB?=
 =?utf-8?B?U1p3NHRzOVYzb1VncGdCYTJpY1JuNWNlSnZ0aHB1RG56RURFREtqUHM3UE5X?=
 =?utf-8?B?eERhRXV5V3J3SDFUSzJGbGRFVUU0WkFTYmVtRnJzdnVvR0tqcnMxTk96ZlBG?=
 =?utf-8?B?cG56c2duRmN4OWYxbmdzMktsN3lTNnAyMTZPOHlkalF6TUtYWVRhT2ZuMS9m?=
 =?utf-8?B?TnRLM3IwU28zWXBTbVBuTThDQTNGbmlBWUFRaDhmbW9LZzhjZkNlbmFxUUs1?=
 =?utf-8?B?dlR3K3UvOGZSQzROTFVsUzFudU41MlBpREtRT0VacXMzakVUTlpWVUZwWXBi?=
 =?utf-8?B?eWVic3dib2NlS2locVF0WVJMZTcyajJJM0tFMVBXcTBnZDhiejZETE15RVlk?=
 =?utf-8?B?ZEJUZ0k5ckhsUERlNkJGYmQvT09sVklDZkRRa0h5Y1ZreWNSNnZnci9WWm5J?=
 =?utf-8?B?ZGtRcXUrRU0rOGhWc21wUmtLOFh2bnVBa091YlJFalc3cGZXNElza21iTXhG?=
 =?utf-8?B?cXo1bW1UdkNLOG5LTUVzOEtLSlhIU3doaTdJbXhNZ2JUdXJFTWJFYlN3VGlo?=
 =?utf-8?B?UW95YkhWYm84MjUrK0ZrZ1RFaWVPK1R0UkU4Q3NNRDFJaTlFaktqZzZ3MkJt?=
 =?utf-8?B?UG1IVHppbVRaWGNiRmVqR2p6dU4zOFlUU0huVGN0THZ2MkhuS2FhbmVYN3Vi?=
 =?utf-8?B?TEExRjFQekRFZ05EN0JlY04wcG5XcHZ1cXlTWG41QTZHbFo2cmtBM1oyYm9B?=
 =?utf-8?B?SjY0UGVNbTRraUloZ1ZtbVdrbXE5T1c3OHBqVUF1Qk9TZk1QZmx1WjkvcnE5?=
 =?utf-8?B?MEhTOW00RHJqd3FFNDdVN3JjNzI0L2lGell5MmZpK2Z2ZUhucEl0bU9jT3hw?=
 =?utf-8?B?ckdBQ3ZTSzBPaFFDMzlXZnRPc2Rya1NuY00yUU8vSWdoYldEMkVtVjlibFU5?=
 =?utf-8?B?bnhNNXB1T0pTYUpzOEcxd3dySWhBTmd6Q0xwbm1LVUJQZ0N6Q1VBZThBQVF5?=
 =?utf-8?B?dHdCTUVYRjQ2TmdjT0M4WS9Vd1F3WVkyR1BBZkFIQVZDTWFVWlFUa3VlemtD?=
 =?utf-8?B?c0oxeE1WSEk1T2tBQzZpQTBOSzg0Wm9QUXdTT0dPOFZLNTBXOE0zTFF0WGpm?=
 =?utf-8?B?ejJ6N3ZPazh1K3BjcFdDOGxIbkF1U2hxbHZrVXdXWmtueXdmb3NweXlmaU1k?=
 =?utf-8?B?TWRSOUdwOTU4Vm1pMis0YjdZSUkza1g0RmcwUGVDeVVORDRRWE9hZjJFSXdp?=
 =?utf-8?B?QlFPczgxZktuVUtwS2pqRnhMckFOam56ZmdXUmtuaDM2N09nbGtBZ1AwSlNx?=
 =?utf-8?B?WnRWeWNsRTh3dU9DL0lCVFRKY0REakYvVjNRdVdiYlorL2V1RmxFdzVCeVd0?=
 =?utf-8?B?ZnQyeVo0c1JiSmNRaDMxNHp1V0tjKy9BaEppNGxwLzJ6NkIrUkh4SGtiWHlC?=
 =?utf-8?B?UlZGbnQ3VWVLUEp3bHU3bHpKZHQ1aVFVc3lGd2NpS1c1YzBteGRYN0tWN3pw?=
 =?utf-8?B?Mmo0VER1OFpIRDIxRm1lZXUvV2JidytCSEdWTlE4SmNJMFh1MndYMStMTjV3?=
 =?utf-8?B?ZVBRMFhzR2FocWtVejRSeEovVVJpcWdQK2d0S2xFbzVUN2R4MlNncTNnM2ZQ?=
 =?utf-8?B?TndjbHNrSEZUd21oQU9XM0hDc2g5ZUV1ajZpeWd1YUVLRmkybjVqOGwrTmw4?=
 =?utf-8?B?dzlacEFWR1lqbC9sZC8wbExQZ0t2VXAxRWJWR21ZSXQ0ZW9PaFhJNjkwcFY4?=
 =?utf-8?B?WG5aQmlWSlVsbkQzUmd0VjVTYVlhOHRFZ3I2d25WRys4RU54RDQ2VE9ualpM?=
 =?utf-8?B?aWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a8212f56-f4a4-4c74-4195-08db8d383f98
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2023 17:54:53.1569 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: if8IND/Y/LF8vDzI/N6UFwBfkhsynyNVDhFLgJ4WKKo18kq/4fKJGy3yIJNP4PrRnhDN/L7TiyRalcZBzX3hPrloySj3EiLWDEOodldMdj4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7147
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690307696; x=1721843696;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dEd0NVVh1qOk7N3Ab/lVBsyFHM+An6LXUG2mrFMAsAc=;
 b=bfMzuT4/ciQZHjykwwJTerpDPZ4Yn8tacGwl3Aa5VTSaCv0241uvn+Nz
 AiPD7s8JRaJ+PLvOEXAnpW845qjU00P5FPOz7mAK6NOed5CS5OK5po2/n
 ygKi8FfPtg3/snW6Ar4aRwHzlrx7IlQu3prKOJEGcnSNHOAS6ZKfFqq6L
 PpBZs2z5ORDtEminX0WoObwanEnuSxNSxTIL9F/M6qMFLQpNdJTLFOdM3
 T4RZeZz/kAYheJs2LOPNoNzkMOSB8O2LYnD/cVXEctv/RmUGyLgI4fm/j
 BvcGEyGCIfAu4X2zfTWefFWnLUkhBaDTSrsuEZfMQFN3itmmFROEMAijy
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bfMzuT4/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 3/3] ice: PTP: add clock
 domain number to auxiliary interface
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
Cc: karol.kolacinski@intel.com, jesse.brandeburg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/25/2023 10:52 AM, Tony Nguyen wrote:
> 
> 
> On 7/21/2023 8:44 AM, Michal Michalik wrote:
>> The PHC clock id used to be moved between PFs using FW admin queue
>> shared parameters - move the implementation to auxiliary bus.
>>
>> Reported-by: kernel test robot <lkp@intel.com>
>> Closes: https://lore.kernel.org/oe-kbuild-all/202307202358.6Djg24Ou-lkp@intel.com/
> 
> These aren't needed (or wanted) on new revisions
> 
> 'not just a new version of the same patch/commit'
> 
>> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
>> ---
>> v1 -> v2:
>> * fixed the "static declaration of 'ice_ptp_clock_index' follows non-static
>>    declaration"
>> * removed no longer required 'ice_aqc_driver_params' params
>>
>>   drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |   5 -
>>   drivers/net/ethernet/intel/ice/ice_ethtool.c    |   2 +-
>>   drivers/net/ethernet/intel/ice/ice_ptp.c        | 163 ++++--------------------
>>   drivers/net/ethernet/intel/ice/ice_ptp.h        |  11 +-
>>   4 files changed, 34 insertions(+), 147 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>> index 8b1d2c4..0baa410 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>> @@ -2068,11 +2068,6 @@ struct ice_aqc_driver_shared_params {
>>   };
>>   
>>   enum ice_aqc_driver_params {
>> -	/* OS clock index for PTP timer Domain 0 */
>> -	ICE_AQC_DRIVER_PARAM_CLK_IDX_TMR0 = 0,
>> -	/* OS clock index for PTP timer Domain 1 */
>> -	ICE_AQC_DRIVER_PARAM_CLK_IDX_TMR1,
>> -
>>   	/* Add new parameters above */
>>   	ICE_AQC_DRIVER_PARAM_MAX = 16,
>>   };
> 
> Is this enum needed at all anymore?

It should just be removed now I think.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
