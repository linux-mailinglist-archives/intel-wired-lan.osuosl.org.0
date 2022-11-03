Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D616C6189F0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 21:53:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30B054185B;
	Thu,  3 Nov 2022 20:53:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 30B054185B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667508780;
	bh=guPkZV+FWWkntuBa6MwcYKDAxyW9TXxAaFIU2VM5l5g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lcmV/m8/saFAF8CL75f1h0vng68/owpN9OkuoViw/KxJkEXO9x/wOB9ZbPDSEa5ar
	 1hLPuDNu9GpZzdqGkXTEzN5L94MNMrdNHbpT+gJ96kMtFouEjxCEXAT7wg8mEMyHwN
	 K9lgc5iNAJX3OiGdT+8bDyBk90HbACiLc6wOdghw+qacHncCXHm9/mV9ncWz+FYuua
	 Dl6owx9UzZaphNjADF4uq69Sh4/Nb/3ltPEjcYbG28zmBMM+D8hfHnK/KVaQkvx7Ac
	 hseGU/5Oxa9hm/Zif++E4lfJdhWqyxezMzVN3H3YTjAK+kz9Xb3wuKCFZx6Oi3jb7t
	 n0yMYLcRlGQ8g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yKHNetcBaryL; Thu,  3 Nov 2022 20:52:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5593341858;
	Thu,  3 Nov 2022 20:52:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5593341858
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D70581BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:52:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B13A681FA7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:52:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B13A681FA7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0WjbHd5zsbmq for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 20:52:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6808A81F9E
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6808A81F9E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:52:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="336500137"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="336500137"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 13:52:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="809815307"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="809815307"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 03 Nov 2022 13:52:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 13:52:39 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 13:52:39 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 13:52:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b69exf8Vm5lMHL6ZLBuOQQSaPjm/O34sPnxqmm23+D72u3xLDzjqCAPaufNhjeVoZ5PlTD8DKTqBPzpsV7pGD6eqCxatWdNxZkmIxSO5y6ksDbBUyXYBpCHGkTnoiu3yKBp5NRx0jUpK6nbHD+kBxxWxZ38Tv+dk8eqMlTFH2Oc9+inLdhZZLP7CIBvglRQhf8S1SrDCq6iUhEwVJ0Ci9Qc8Y5ve0WqrlUEKO3t6ZpLASE7TYNU6o+sB15p6gnPNm+O0oJ8/ukiAVFX5qe0dBFRZXIllH0Ps3nFYq8s3A5zyhEfjh4vTmW2hDMWIzvKA9lUj1CAEAhlSC2Lk3oEJxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w2oxFza9VedsA3CsKxQGX3g5GhKnb89fkmeV5C8pru4=;
 b=VatMv8ho2357QXQFIWpLAcsycNwymWbp65tQTSWqbNQ15Oj/A6kmWH3Fo6Y4l7EEz1sNU7w3Uo/YHF+gB1AxIazzIakK4gQobE5UhiZmI954/W8dnZ9Y+lJU4kQFUUo0qRwGEg9IRm58dgOG4GxCJtJcwH229Cxh0hVPXnI4JmZtf1a9F7eOpdzwX3yZpKXv3wyRzpJr0h87HZVwr5TYgMTH2ajxEwE4ou/ume/WEzaoeRn7BmHv1jaCQzmHqX7UT/GrRQEEzF8yLwqUlsorydty7YEsLBpkjG9WebsYxeGOUHkSQ6A3h2lWO7mPPBmFpT5nnM6GvfIJRamYOh0BIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CY5PR11MB6257.namprd11.prod.outlook.com (2603:10b6:930:26::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Thu, 3 Nov
 2022 20:52:37 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::d408:e9e3:d620:1f94]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::d408:e9e3:d620:1f94%6]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 20:52:37 +0000
Message-ID: <79c45b39-25ab-8274-8360-ac2088adeed6@intel.com>
Date: Thu, 3 Nov 2022 13:52:35 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
References: <20221101225240.421525-1-jacob.e.keller@intel.com>
 <20221101225240.421525-8-jacob.e.keller@intel.com>
 <CO6PR11MB56369632E158CC5AD92D59C6E0389@CO6PR11MB5636.namprd11.prod.outlook.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <CO6PR11MB56369632E158CC5AD92D59C6E0389@CO6PR11MB5636.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR03CA0365.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::10) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CY5PR11MB6257:EE_
X-MS-Office365-Filtering-Correlation-Id: 86e6512c-ec06-4141-30ab-08dabddd56f8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: w2BrflGfGF76nrg8f1ugMPDcCD3qiowK+Cgbo9RtuXIlPmo+ynapbTOrw8BaOFdIsN/1QNfRIVj7IA41GxVhbynuJYWMSKp3+K+t0tspWkrgzparf9oAI+M7PKVkfOP7AEl+TMTCA04VZnX5dnkuyI0Kkl4q2ZkNrF9BERVctyAaRL60IFstF+LbtS/53MuAz218gEIYaYL0mAYqomzk9mmufFLOM45Gwe9Pxp8a77GV38CA8si3R021WwlfHzwkDhyVwzLmonrPqXpTyS7eVuupONmEmLxDSDZxZduhMGBOxeFspp2eEYcHG6iTwSjKY2NeOUokNIp1k5Q/oH8jJQPrh9GRshoV3/bY+wqqiPfs5WBwUgYt3o7CWeezQRsAcqUk/2UtfpDXuUxq+wiSgeasbFb4ySuk+FfzM0GcayJYsGUZSNl84m+ngH8xoorxwaRMj+7I47f/8zoRsPL4Waee0bzWGBZXn3ovyzd/wYRFXWjNvY27v/p+JRwFvwS0A24tCmA1PjFCElW1Hewykt5iwbKDnce83vFXAVmfLe5HkaQE/YwX0eFyCl6kRioBdY018vGonGyYd8aiOt2c/YaZZNgCZNY07+1wdsseW3Zp2a/LavlUwmnnnn5mbZsqbsaO3YJ7q8xK/hqRZhL5bHD2Kk1uOjC4Vip3RdhaniFsYeVQk7MF0TjYQXdtziqQCMZRb9uBXgxDcbEmnAzOOviHMG5k2twcNGRrwrMsWtQ6nnBq0pza0U3vWPnl7yywYFro8cK7ZJkb79KQ21IphiTdwhbZyRJQgwzW6MGOy+P+VTNTN7eJIHklHvswHwdkq2UMNrMI1S/oSKdFTM2gZw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(346002)(39860400002)(366004)(376002)(451199015)(110136005)(316002)(82960400001)(41300700001)(5660300002)(6512007)(8936002)(38100700002)(66946007)(8676002)(66476007)(66556008)(83380400001)(86362001)(26005)(31696002)(6506007)(6486002)(2616005)(31686004)(478600001)(53546011)(30864003)(186003)(966005)(2906002)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y3c5MGNHblpmNndOWTlTMFBmUnRwQnppckh1YXlJK2RFZk1ZcXRRUW9QSjFn?=
 =?utf-8?B?MEVDd0tRQmJxNnZrMCtmVGNXNWFIV3NIZ1VCNTZrZVlkNzRHR0NrK2dhV2N6?=
 =?utf-8?B?TzFrcDllYVFRRlQvTVlxSmszZ2ZpdWRVUjJKSXNOZzNUWWF5NitmYTZYelpj?=
 =?utf-8?B?QXF0eTZxZGF6eUJBbGpidEtCSmdnMElrZmx6c0k0V0pRcHdHQ0crNUVEU2dl?=
 =?utf-8?B?Mnk3VzRDckZMSm9IaGxRMlZjWlJKemExMnJsRDA4MTdZQ1preHV0ekxMYWFP?=
 =?utf-8?B?YWFJWU8wdjZuUWk4TFlJcVRoMU10R21jSTZEOUhXdEtHejFYYVFoaUhoZ1FC?=
 =?utf-8?B?V1p2WjZMcE9hRllJQS84QVVMc2JiVUNaT1ZzaEJ2NDZlQjFrclJmenVOakky?=
 =?utf-8?B?M1B5NFEyTUQ0bFlNZ0NoT09mOHllOGV6dXFYWG84aEZPTVFxS1dCUTZlditB?=
 =?utf-8?B?UjhjNkF5TmZYOFI0ZjlZemdZa3lmUXRjUFpVVVJQL1NCbElNMzNtNnNLRW95?=
 =?utf-8?B?dzZsTU42K3JrSDlvdFI2eHFuR282NDVZZnFodC83VzU2WEdIQUNoOUplbmRm?=
 =?utf-8?B?cWRiK0hoeVNtOXF3RTd6by9abzhpNnlqWVJROERVdkVSSmlMR01SMldYQWNs?=
 =?utf-8?B?M1R4cUw3bHkvc2xSWTRwUTFNWnZLZEh1MkFPVnFRZFFORU5NNFh2NjJYd3k0?=
 =?utf-8?B?ajZLQjZkT2YxeERlam5uZ2hOUWR0SStNOWRCMkVRWFBKTEJoMTlacWs0dnQ1?=
 =?utf-8?B?R1dTbHBRZE9BQkd2T3lrV3NkQ2tSK3MxVUVwRHJtU2N2anNtVXdrQ2k5aExw?=
 =?utf-8?B?YXJ5UVR3QnA4MzZjYldIempnbDZGYnVyMEdqbVl5OUxhWVJMenlLWG1RNlAy?=
 =?utf-8?B?SEFuVi9BenZwUkJnZmRVL05yMm9jc0xrdDVnYWdKQzJweS9FOGlzSjFLNCtX?=
 =?utf-8?B?dUgySVZiVnFTb29Dc0I5b1ZIbjRXZFQ1U2xzNCt3RUZLcWh3M3BQTGFDQXUz?=
 =?utf-8?B?akYwenhZMUJFZDlsNkhLV2tjejRHZ1V1WHZDL1VlUGxLWjZHYklCOWYxSk5L?=
 =?utf-8?B?NlVQM21aaExqdFhwcnIyaThRUHp1WnJhQ3lua1hyM3NrNXRTTW5wbzhpUTlT?=
 =?utf-8?B?TlVTRGI3bElYWC9Jc25zOTdWdFY2UzJBOU1sREFSWnl4SjBzd1RIQXlTcjE2?=
 =?utf-8?B?RVNGeVpFL3puMzAxK3dvWllpaHJYNGE3K3dxOEFqK092UlZBNGZiODFKc0hL?=
 =?utf-8?B?eWU0RWpiVDdqQjlBMGRrNkovN3A5S3VhMXMvMGtGR25SdEcydDV4cUdIUkN0?=
 =?utf-8?B?ejFVSnVDZ21aYXFQb3JaS0NJSWs0VEpPY20zZnRQSW9Hay92M0hiTVBjMmll?=
 =?utf-8?B?YWs0c05XNzQ0WjlYckhwTlE5ZVZ2T0NkYzEzdmcyeXdYZUJZT1JyQ0ZiMXR3?=
 =?utf-8?B?RkJ4KzdhS0x2TENaVklqNzVxb1dpcjdCQU5Kb3c1ZXYyQXlCbVdFQk1HNEdw?=
 =?utf-8?B?bjA5Z0RoS3FUcTljWGR1U0w5ZVI0SkJSV0MzOVIvRHR1czc0T0ttdld0Mlp4?=
 =?utf-8?B?bjh6b1pidUErMlpQYm1VUDliSDd5UTZodWlnem92ZHVqb3pldDlSNS94cklq?=
 =?utf-8?B?NlJ5UHo3V1ZmeEJ0TjRmYnZpZEprWmI4ZzNMamJrR1h0N29xRlIxVHpySmRM?=
 =?utf-8?B?T2ZOSlBsUnUwaTBCcm5SekM5NUtiMUwyWmRrZnJHdXg1WFFNVmZEa0N5VHRy?=
 =?utf-8?B?MVpRb0xuRnpBL3FSRTVFQkRhRmttdUp6TUJUdmZpc2RHT3dyZnBzMkN3NzVU?=
 =?utf-8?B?a3JMT2RSTlU5cW5NZnBiSlRETkFsTHl3MXlaRzRBajlsRXJRMGUwOFprbzEv?=
 =?utf-8?B?V2lHREFFT0RPb1VrTENlRVBSVU9GSk55bFNWNG44Mk16SFU0WkZtN3Y0a0lU?=
 =?utf-8?B?SVZsTW9KWkpTaGk4cFo2UW9laFdMVjc0RVJ4RzJMMnQyYmlrQ2lBYmx1VFAv?=
 =?utf-8?B?WS9BOEQxOExUQ214VEtDTEYyVXErRmE1QzdvcFFwQWtoRi9NVHFGV0wwdm5k?=
 =?utf-8?B?U0gwcWRkaDlYUDk4R0ErYzB5cnpXcWcyRDlma3NmdFowL0tjUWpNNHpFWGFV?=
 =?utf-8?B?Y2ozN0VYSmkwaFNmTnpxZzZib3VyU3VwWjEvTGwrS3JQZzgzSmN0aEdxZmVm?=
 =?utf-8?B?c1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 86e6512c-ec06-4141-30ab-08dabddd56f8
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 20:52:37.2124 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: upeVP0x9Xv6C6G2HJW4txM5eipnUflRnYKoOefNLiqW9t/olLFIOlI5IkJ/afdFlkt0JK4C+/0HxSEx5ENorCuVfvECAR//r2XTUtAdeZtw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6257
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667508771; x=1699044771;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=wcWirddlrMpj3zO4iYf5l6OF/64nXAUb0SPqfy7Mke0=;
 b=QC5DS1GDlNN11F26HDvfyX/ueicu5J42Xm/snGwlft4axPoi9r7hkLpF
 LlKufwCKWavUt42ods80Cy0zlapstaVmv60ryFbaxnbbAYFctWpQDSqyQ
 7MnbEX8GWpT858tUQ3SWywGFw7BXEFvak5mEUnT5Caw6zNIJ4xLyNvG4f
 MfPkyTv4FBzk5GSsPSxagjLM+0KAkivGu+eNQmpgZwkoA1JxQ7/bj/HF4
 eNBpgVNvsBN7auXDV/sj5gSJTt1GeTN5gLm49q+fjsoQMKQHE0vlnO9mR
 desuQFg64ffR07r+D/KB276Dikz82TwcwOY31/66+SKADm7HGETyLn6nS
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QC5DS1GD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 07/15] ice: check Tx
 timestamp memory register for ready timestamps
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



On 11/3/2022 1:45 PM, Stillwell Jr, Paul M wrote:
> 
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob
>> Keller
>> Sent: Tuesday, November 1, 2022 3:53 PM
>> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
>> Subject: [Intel-wired-lan] [PATCH net-next 07/15] ice: check Tx timestamp
>> memory register for ready timestamps
>>
>> The PHY for e822 based hardware has a register which indicates which
>> timestamps are valid in the PHY timestamp memory block. Each bit in the
>> register indicates whether the associated index in the timestamp memory is
>> valid.
>>
>> Hardware sets this bit when the timestamp is captured, and clears the bit when
>> the timestamp is read. Use of this register is important as reading timestamp
>> registers can impact the way that hardware generates timestamp interrupts.
>>
>> This occurs because the PHY has an internal value which is incremented when
>> hardware captures a timestamp and decremented when software reads a
>> timestamp. Reading timestamps which are not marked as valid still decrement
>> the internal value and can result in the Tx timestamp interrupt not triggering in
>> the future.
>>
>> To prevent this, use the timestamp memory value to determine which
>> timestamps are ready to be read. The ice_get_phy_tx_tstamp_ready function
>> reads this value. For e810 devices, this just always returns with all bits set.
>>
>> Skip any timestamp which is not set in this bitmap, avoiding reading extra
>> timestamps on e822 devices.
>>
>> Modify the stale check to apply only to e810 devices. It is not necessary for e822
>> devices because the timestamp memory register will prevent us from reading a
>> stale timestamp.
>>
>> Modify the ICE_PTP_TS_VALID check to simply drop the timestamp immediately
>> so that in an event of getting such an invalid timestamp the driver does not
>> attempt to re-read the timestamp again in a future poll of the register.
>>
>> With these changes, the driver now reads each timestamp register exactly once,
>> and does not attempt any re-reads. This ensures the interrupt tracking logic in
>> the PHY will not get stuck.
>>
> 
> Minor nit: for the E8xx devices we should capitalize the E in the commit message
> (e.g. E822, E810, et al)


Yep. I'll try to fix all of these.

Thanks,
Jake

> 
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> ---
>>   drivers/net/ethernet/intel/ice/ice_ptp.c    | 41 ++++++++++--
>>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 72 +++++++++++++++++++++
>> drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  1 +
>>   3 files changed, 108 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c
>> b/drivers/net/ethernet/intel/ice/ice_ptp.c
>> index ebe910326963..39c68a272c6a 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
>> @@ -655,6 +655,9 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
>>   	struct ice_ptp_port *ptp_port;
>>   	bool ts_handled = true;
>>   	struct ice_pf *pf;
>> +	struct ice_hw *hw;
>> +	u64 tstamp_ready;
>> +	int err;
>>   	u8 idx;
>>
>>   	if (!tx->init)
>> @@ -662,6 +665,12 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
>>
>>   	ptp_port = container_of(tx, struct ice_ptp_port, tx);
>>   	pf = ptp_port_to_pf(ptp_port);
>> +	hw = &pf->hw;
>> +
>> +	/* Read the Tx ready status first */
>> +	err = ice_get_phy_tx_tstamp_ready(hw, tx->block, &tstamp_ready);
>> +	if (err)
>> +		return false;
>>
>>   	for_each_set_bit(idx, tx->in_use, tx->len) {
>>   		struct skb_shared_hwtstamps shhwtstamps = {}; @@ -669,7
>> +678,6 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
>>   		u64 raw_tstamp, tstamp;
>>   		bool drop_ts = false;
>>   		struct sk_buff *skb;
>> -		int err;
>>
>>   		/* Drop packets which have waited for more than 2 seconds */
>>   		if (time_is_before_jiffies(tx->tstamps[idx].start + 2 * HZ)) { @@
>> -677,24 +685,45 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
>>
>>   			/* Count the number of Tx timestamps that timed out
>> */
>>   			pf->ptp.tx_hwtstamp_timeouts++;
>> +		}
>>
>> -			goto skip_ts_read;
>> +		/* Only read a timestamp from the PHY if its marked as ready
>> +		 * by the tstamp_ready register. This avoids unnecessary
>> +		 * reading of timestamps which are not yet valid. This is
>> +		 * important as we must read all timestamps which are valid
>> +		 * and only timestamps which are valid during each interrupt.
>> +		 * If we do not, the hardware logic for generating a new
>> +		 * interrupt can get stuck on some devices.
>> +		 */
>> +		if (!(tstamp_ready & BIT_ULL(phy_idx))) {
>> +			if (drop_ts)
>> +				goto skip_ts_read;
>> +			else
>> +				continue;
>>   		}
>>
>>   		ice_trace(tx_tstamp_fw_req, tx->tstamps[idx].skb, idx);
>>
>> -		err = ice_read_phy_tstamp(&pf->hw, tx->block, phy_idx,
>> -					  &raw_tstamp);
>> +		err = ice_read_phy_tstamp(hw, tx->block, phy_idx,
>> &raw_tstamp);
>>   		if (err)
>>   			continue;
>>
>>   		ice_trace(tx_tstamp_fw_done, tx->tstamps[idx].skb, idx);
>>
>> -		/* Check if the timestamp is invalid or stale */
>> -		if (!(raw_tstamp & ICE_PTP_TS_VALID) ||
>> +		/* For e810 hardware, the tstamp_ready bitmask does not
> 
> Same comment about capital E in comment
> 
>> +		 * indicate whether a timestamp is ready. Instead, we check to
>> +		 * make sure the timestamp is different from the previous
>> +		 * cached value. If it is not, we need to re-read the
>> +		 * timestamp later until we get a valid value.
>> +		 */
>> +		if (!drop_ts && ice_is_e810(hw) &&
>>   		    raw_tstamp == tx->tstamps[idx].cached_tstamp)
>>   			continue;
>>
>> +		/* Discard any timestamp value without the valid bit set */
>> +		if (!(raw_tstamp & ICE_PTP_TS_VALID))
>> +			drop_ts = true;
>> +
>>   skip_ts_read:
>>   		spin_lock(&tx->lock);
>>   		tx->tstamps[idx].cached_tstamp = raw_tstamp; diff --git
>> a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
>> b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
>> index 6c149b88c235..55bbe76ce0bd 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
>> @@ -2417,6 +2417,43 @@ int ice_phy_calc_vernier_e822(struct ice_hw *hw,
>> u8 port)
>>   	return 0;
>>   }
>>
>> +/**
>> + * ice_get_phy_tx_tstamp_ready_e822 - Read Tx memory status register
>> + * @hw: pointer to the HW struct
>> + * @quad: the timestamp quad to read from
>> + * @tstamp_ready: contents of the Tx memory status register
>> + *
>> + * Read the Q_REG_TX_MEMORY_STATUS register indicating which timestamps
>> +in
>> + * the PHY are ready. A set bit means the corresponding timestamp is
>> +valid and
>> + * ready to be captured from the PHY timestamp block.
>> + */
>> +static int
>> +ice_get_phy_tx_tstamp_ready_e822(struct ice_hw *hw, u8 quad, u64
>> +*tstamp_ready) {
>> +	u32 hi, lo;
>> +	int err;
>> +
>> +	err = ice_read_quad_reg_e822(hw, quad,
>> Q_REG_TX_MEMORY_STATUS_U,
>> +					&hi);
>> +	if (err) {
>> +		ice_debug(hw, ICE_DBG_PTP, "Failed to read
>> TX_MEMORY_STATUS_U for quad %u, err %d\n",
>> +			  quad, err);
>> +		return err;
>> +	}
>> +
>> +	err = ice_read_quad_reg_e822(hw, quad,
>> Q_REG_TX_MEMORY_STATUS_L,
>> +					&lo);
>> +	if (err) {
>> +		ice_debug(hw, ICE_DBG_PTP, "Failed to read
>> TX_MEMORY_STATUS_L for quad %u, err %d\n",
>> +			  quad, err);
>> +		return err;
>> +	}
>> +
>> +	*tstamp_ready = (u64)hi << 32 | (u64)lo;
>> +
>> +	return 0;
>> +}
>> +
>>   /* E810 functions
>>    *
>>    * The following functions operate on the E810 series devices which use @@ -
>> 3091,6 +3128,21 @@ int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8
>> idx)
>>   		return ice_clear_phy_tstamp_e822(hw, block, idx);  }
>>
>> +/* ice_get_phy_tx_tstamp_ready_e810 - Read Tx memory status register
>> + * @hw: pointer to the HW struct
>> + * @port: the PHY port to read
>> + * @tstamp_ready: contents of the Tx memory status register
>> + *
>> + * E810 devices do not use a Tx memory status register. Instead simply
>> + * indicate that all timestamps are currently ready.
>> + */
>> +static int
>> +ice_get_phy_tx_tstamp_ready_e810(struct ice_hw *hw, u8 port, u64
>> +*tstamp_ready) {
>> +	*tstamp_ready = 0xFFFFFFFFFFFFFFFF;
>> +	return 0;
>> +}
>> +
>>   /* E810T SMA functions
>>    *
>>    * The following functions operate specifically on E810T hardware and are used
>> @@ -3306,3 +3358,23 @@ int ice_ptp_init_phc(struct ice_hw *hw)
>>   	else
>>   		return ice_ptp_init_phc_e822(hw);
>>   }
>> +
>> +/* ice_get_phy_tx_tstamp_ready - Read PHY Tx memory status indication
>> + * @hw: pointer to the HW struct
>> + * @block: the timestamp block to check
>> + * @tstamp_ready: storage for the PHY Tx memory status information
>> + *
>> + * Check the PHY for Tx timestamp memory status. This reports a 64 bit
>> +value
>> + * which indicates which timestamps in the block may be captured. A set
>> +bit
>> + * means the timestamp can be read. An unset bit means the timestamp is
>> +not
>> + * ready and software should avoid reading the register.
>> + */
>> +int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64
>> +*tstamp_ready) {
>> +	if (ice_is_e810(hw))
>> +		return ice_get_phy_tx_tstamp_ready_e810(hw, block,
>> +							tstamp_ready);
>> +	else
>> +		return ice_get_phy_tx_tstamp_ready_e822(hw, block,
>> +							tstamp_ready);
>> +}
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
>> b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
>> index b0cd73aaac6b..b781dadf5a39 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
>> @@ -135,6 +135,7 @@ int ice_read_phy_tstamp(struct ice_hw *hw, u8 block,
>> u8 idx, u64 *tstamp);  int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8
>> idx);  void ice_ptp_reset_ts_memory(struct ice_hw *hw);  int
>> ice_ptp_init_phc(struct ice_hw *hw);
>> +int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64
>> +*tstamp_ready);
>>
>>   /* E822 family functions */
>>   int ice_read_phy_reg_e822(struct ice_hw *hw, u8 port, u16 offset, u32 *val);
>> --
>> 2.38.0.83.gd420dda05763
>>
>> _______________________________________________
>> Intel-wired-lan mailing list
>> Intel-wired-lan@osuosl.org
>> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
