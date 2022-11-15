Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CECD762A195
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Nov 2022 19:55:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 50BB760E62;
	Tue, 15 Nov 2022 18:55:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 50BB760E62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668538557;
	bh=ZhHV5KqyMaIBZqj6O8eHAC8fjZKGJ7FcEtqXD1pOvuE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fp+rEUD7llcJ0H8ti2XRDDliHdiN6lWdPK7pahok+t/+wIFLR15ZRe4JJ4Rwk6lRw
	 MarAH1j1RpS4V9MA8U/IISLN2DTlt6QoZ9aFXsGghSyEhaH4Zd1LUWsi+oO8vI9ec4
	 OWyUZz8vqvJ9FqBYsLuCs7IgJftQdTPtzvSQ5xd+aVFPEwRKbMtdOnl5Hi53KdTrD5
	 q7WeQS4eguLHhAzrPIMKT+BxKFaEJFsC1zPKzAePtbWTlWLsSxSrznFYxk22pOetta
	 v0i3+WmvQQ8gip7axWSJuz/0+Xls+3rOf6tS2ec8185WIUvspHR1SEGSZLclrnLBpQ
	 IcQyhCJ1wvZGQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aH6XVb89PhzI; Tue, 15 Nov 2022 18:55:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2ED5E60E5D;
	Tue, 15 Nov 2022 18:55:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2ED5E60E5D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3213C1BF37F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 18:55:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 08D1360E5D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 18:55:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 08D1360E5D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ATrxpSSFzS0d for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Nov 2022 18:55:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 14D7D60BFB
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 14D7D60BFB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 18:55:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="309968283"
X-IronPort-AV: E=Sophos;i="5.96,166,1665471600"; d="scan'208";a="309968283"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2022 10:55:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="672103338"
X-IronPort-AV: E=Sophos;i="5.96,166,1665471600"; d="scan'208";a="672103338"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 15 Nov 2022 10:55:48 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 15 Nov 2022 10:55:47 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 15 Nov 2022 10:55:47 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 15 Nov 2022 10:55:47 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 15 Nov 2022 10:55:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j70wKPllF9FHG3C+oqUhRdpSgsqzOs2CZWemPxHfw17Azc+PQUWPgVVlB/RxeXmGASENhPE/lmklqPJgAQG+1rRlxhQGH3w4Pc+dBTiSxxyp4JKbiEymt89py/hmac4Kul4mOWi2/5+nDYkhLV1JmKDa45K9jrZ6h7EP9dilGInmsnD3ASHuBmxOHVDgFxZwx39PGK4chOBl7wj0zJ3NweInYUXwLZCgq+OLKjqUkEZnMyB93knAIC72aUbkL6VSYVPIB9RF7EubOxCrnyswL0oEf685MefG50g1VprNb72hhl2NXd58ySHHToWWYqcdhEU6l7u/cFTL5KkLjBdgFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jV/29l1G5DeMpOibotbupbd90o9PtS0JNPw207txAG0=;
 b=gImo91Fo7h198p8S0D8epCJbmHkUD3FKXXEMc4lOIHhqC4THoAPceUxXkQvWFLWgVmlaZogGgpyvvczlEJn1dEmhfp139s2c4rAJkl8L5zBSEq9sCrazA3fbpVXO0ZToBy9AzynAet4QiN5wRH4SowtjKgROt+K/ln1e3Kh8HWsizFjvyPFLS3n8f0Me1aATtDBu8FWyWcgdPCQIEtlvv3+yQdPJOOZaQNhn5HGp3bvDUrRC/Lmw7bctwItObfLwSosAnaPNo8t+DCg9x1KJgoAmAysUFSj1Rcnn78fDuM+JVSmOlGf6CiVp9wMD5KSgp6mGb+njEDxzoLssS1L9OQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CY8PR11MB7363.namprd11.prod.outlook.com (2603:10b6:930:86::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Tue, 15 Nov
 2022 18:55:45 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9e54:f368:48d1:7a28]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9e54:f368:48d1:7a28%3]) with mapi id 15.20.5813.017; Tue, 15 Nov 2022
 18:55:44 +0000
Message-ID: <a1a35066-5dcf-f569-762d-5ab5a1e179c4@intel.com>
Date: Tue, 15 Nov 2022 10:55:42 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
To: Paul Menzel <pmenzel@molgen.mpg.de>, Kamil Maziarz
 <kamil.maziarz@intel.com>
References: <20221115084925.2489227-1-kamil.maziarz@intel.com>
 <da5ff524-d93a-2aeb-cfe3-56295785e14d@molgen.mpg.de>
 <a7b25694-4d1f-916e-d52a-b5c7d211c695@molgen.mpg.de>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <a7b25694-4d1f-916e-d52a-b5c7d211c695@molgen.mpg.de>
X-ClientProxiedBy: MW4P222CA0029.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::34) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CY8PR11MB7363:EE_
X-MS-Office365-Filtering-Correlation-Id: 90c07ca2-c726-40cd-f1e2-08dac73affc8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WmHt6kvpxrmJeuwvo8n9sjUV445jbhPZzC6qc32ORKmM7svHdbX8iR84m9XAP6QJlFUiwqEqouUkh8Kc9BP77GC3zGrVtr6z4h0317XN10eu+a6PaGnlb5t2IbIrK9p9Rqo6aWdwocqLHpBdFZ36JFNSzk9sV4xh4oeXNeir/4uAw+4KNKaSqDhngva2kP2ujZujC3P1zpI5p2uw4HV50oh53E/aF5+FUueDb/yjvj3469l2izAvog3Ym/IfgHfvVVjM7xyV6B9NgWO6Bv5+6+WEyHNHlWGAaeamTSkwfT/PQEmuIHHzefMXP0/f0IU5ijDOi/jISljQx78m/2Nx0kOIESfzqTQ3lzfaloGnfnACnu+aF41Zgch3cOraWiTBCUAQwPaLjLTmHHyZxBDCgsnPL6MidFoqcfzo/cNxS3vtrdYEKpQHbF++lOlFEhW/V+soDGommBp+7DSiuvMjghNYHlp8aAHejALMsKJPrQiMeQ5bv2bO3kT9+Jm9IxBSAXGa5qsCYCnP1/Etzn7i4mrnDjoila+lO+XgMhlRQLYgiYjDO9qEmEm7HpaNRY58lj93zonoMwcuUnTbQ64wZ84ILCshdUbNIiSGM4kVs2B0CbjAju/ChcKLkC6AYWaCy2C+wamcbcdIikBepF4PP5IL81kYQTqi6ZwRNd1dl92+lAAQpi3vlWU4liOVdZqPOk1QOJjoBD5NvCtC453Vfh3yJMSwc/TrJRPkSz0C3KVp2/eNiiKOlBKhD/bfbbp0jSfKRkhnxKm4BxTdOrd6KoUdgnCkyC6vtn0Kb2LqJcM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(346002)(396003)(39860400002)(376002)(451199015)(36756003)(31686004)(86362001)(31696002)(2906002)(478600001)(82960400001)(8936002)(38100700002)(83380400001)(186003)(2616005)(6636002)(316002)(110136005)(5660300002)(6486002)(53546011)(4326008)(41300700001)(8676002)(66946007)(66556008)(26005)(6506007)(6512007)(66476007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWRpZUNBNzBLblRiMlNqREk5blVhZkxIQlFVcUU3ZHd0RDBXdnFzQVN5N294?=
 =?utf-8?B?VVhCNUFVVlJleFNVSWJEeDJyUmwxZC9RM0EyY1NDTjB5NWxNRzExTG1kN3B6?=
 =?utf-8?B?NjFFZ1hXdVFnRk16TklHdWYrdUw3dnlSZWM3MkVTWWlQSDkvZFlDNnZXQkJ1?=
 =?utf-8?B?VTJIUHByY0doMlBaeURrdGdVZ1lEQUlmSnh3NzJQVmpCSm1KdmtFUHNkNGRX?=
 =?utf-8?B?SVQyUmJhWUZWU0pqZm55Q3JXd040YldtRzF2UlorQWlTOVJCN3FVT2s5Q3Nx?=
 =?utf-8?B?aUJQek9oWFF3ODFWTmRtQ0UwODFhSlZzdmlWMzhRR0c2d1kvbmtnWGsvS2Zx?=
 =?utf-8?B?RnFmZExmNmpJSGJOM0lSMVgxdnNHZVJpT0RLR3RPNC9ORkptTGloSHZSM2FK?=
 =?utf-8?B?RjJlckpTeHRMZXVHeHg5VWhOdzlrd1hiQ1dLM0s1VTlrYkVCYml3MERRRXFw?=
 =?utf-8?B?Tm1tUjUwMlFIc2JLQXIyVWJOQkNJMGZSQW1aelVYQTFQUGs2WDk3cThzN0c0?=
 =?utf-8?B?WEo2ak1ublNBOGtDZEtXS0llbmg3OFVwS2ducG9hR24yK2c4ckhVbEIyc2NK?=
 =?utf-8?B?OWlNSG1kUnRmVzRGNFJRL0RCTWNJd1hPRjVMWTNtR3Q0dHFXU3JLcEF0dC9O?=
 =?utf-8?B?Z0JqYUVlRU1wVEZNL1lpZU5pRGlWcnVnNVVQMldTbXJSQ1RSUXJWNlplbzgw?=
 =?utf-8?B?cHh0MUpMRytObTlxTVlkaFpNLyszMFlyQS9NZ1A3dTgvSnh5V0JVWkZUbFlL?=
 =?utf-8?B?TldZTzM2QjhzRzlLMVVXaHB2cE9DNW4xNVFJVlNYOFRTVW41UWhQeUFNMnFx?=
 =?utf-8?B?b013NnQraUJSaFZmUUhSbGFMS0xtMkZEc05PV0RYOUczZzA2Wk9XMGU3TXRo?=
 =?utf-8?B?QnBZM05ISjhRYS94ck1KUFRHeWhYcis1bUFZcDBnTEI3WFBMeUNUbFhYb2wy?=
 =?utf-8?B?YUtNSDBvaHd0eC9paDRYSnZYTis3QVFJRkxIL1E4ZUtsOGZnLzBMQllway9r?=
 =?utf-8?B?RzR0K0VRMVA2RktLcU4zRUZ3VnpoYzNuRVpaS2U5RUd1dU4yRUN6Y0M3TDkx?=
 =?utf-8?B?cnFWWWVVT2pHNGNlQ1F1ajNLT0NOMEtvRy9Yc3RrSXBEQ0Via1JuM0ZCVGp3?=
 =?utf-8?B?L1JZOHRQeE9XTy9na2JGRnNuY2VLYkJkMUlZY281MDZQWE94UmpsVHdzRFo0?=
 =?utf-8?B?NnhldzRjTW9zQ0lTUkVFTDI0OUUzYWFDSGJNS0MwYVhIQzM3VjFFci81SUF2?=
 =?utf-8?B?S1N2TWtOdXRPc0Nzb2JkSkp2TzZEN3J2bE5CVVhSMm1XaXMvSFZLVFNpWWZU?=
 =?utf-8?B?cnlkK1gzbzdrTDNnR2dyS3BYejI2Uzd1eW90dngxVnM5UlFqak02KzV0Ymtq?=
 =?utf-8?B?TFIyRTFUNjlEU21XZU5DV3VDc3VkVURpdDlKS2lMQmFCTWRIM3FOTE9pb2hi?=
 =?utf-8?B?Um91elFOTzJxUkFKWWhITjV3QXYrREpVVkpLTGgwQ1QyajFVWkoya2puN21J?=
 =?utf-8?B?SGw0MnJEQ1pwU0tEeHdRbGo4TUVmV3JLOVdqMXBzUkVwQkUwZEwxOHkxeVBs?=
 =?utf-8?B?QUdacjRLWll3NFAxRG9YcGkxOHFyc3h4WjRhT0NXREJOVGpDTUxHQm5rZGlj?=
 =?utf-8?B?bHBkRE9qbE80RDVWRzk0YzNZdTZEZ0I2Z2hXaFArUFFhbGplUEJtbG4reXZ3?=
 =?utf-8?B?Tyt4OUt5VHJSQmY3WUlhMVE2Skc5Wld2cnhaUDdLa1gxTm4rSmZoSm10elFO?=
 =?utf-8?B?T0NkTDFjcGpyUGVyVVR4QVBPK3NmVzlGdXVpbzdscEdiQXgxaGR4UUFTc2VJ?=
 =?utf-8?B?ek5BMlI5Yys4OE8xWDBjM25BTkovNFZnM2hWNis3NXVrY3d2REpLNzVnTHhG?=
 =?utf-8?B?NFgvN1JtNUNSNWxuUkNuWDFSNzUydVM2MUlGcGFzZXhDOWUxYzdYbGgrV1hR?=
 =?utf-8?B?WStsZEU4S0k2dVB4blFxRktGYUlNMXBNRjZ3bnFOT2w0c0NQOGl1ZmZadkJC?=
 =?utf-8?B?Ym9scTZuOUthYzBhWmZpR0pMOGlNN1ltYjBCSWJIQ0F2cWc4c1dCdEFWUnRT?=
 =?utf-8?B?bEhtZUVYdjRXaHh5ajAwNCtaM3dCNFNwak9lbnJmUjIzU2VBb203cGpjM2t3?=
 =?utf-8?B?OFl1a01TRndBeUZvbi81Sm1hYkJQNzhiMElCZ0ppZHB4eDFqUHpqL053ajNM?=
 =?utf-8?B?Nmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 90c07ca2-c726-40cd-f1e2-08dac73affc8
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2022 18:55:44.1454 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wCFuEgQen1qyhgmhgm5CPPQeemuvSDxoDmRs/8oXaVAnQ9Bnzoq5OsWMaun8s91a6IBNgUK3rsG1IAxWS7eIjcnBLGQO/VrW8YnkGGj6cMs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7363
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668538550; x=1700074550;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o2Hc2oHYIbI0/YqOoHvQNA0PgNqCJfbbTOWcMBTIz8U=;
 b=NlrKJVB3qoNBYDAqdAY4gKdvkx6MmhMe1wmfqW8zCDBXgDOpJBhXUSir
 gmBWwQaSbZu1bjuCK9Fr9Aoi9BHlVzKOlbGKt+VaDxxLBbMRiLrwJeZ25
 WkIVfl7Kdodue4W0piBzJEftHZMF4ClTMZLlIQdmohAqhe8XY1t8vYAhd
 F+nMhePTuV229osZwPUKyA/ec0XGW4zjCSPYPODk5y/Ad/exNUNwJqLlW
 J02I7dGXovrBSARFJG0/V9psCo+TPb+YCxCPWX21xGCnjpoLf7109Pqvk
 oL+XUDyI9mDLoZY/Gv9HGwG/upwVXHGliK0rCZgMuti7OwNBg66Rs6JXY
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NlrKJVB3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] i40e: Disallow ip4 and ip6
 l4_4_bytes
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxMS8xNS8yMDIyIDY6MzEgQU0sIFBhdWwgTWVuemVsIHdyb3RlOgo+IFtUbzogLSA8cHJ6
ZW15c2xhd3gucGF0eW5vd3NraUBpbnRlbC5jb20+LCB1bmRlbGl2ZXJhYmxlXQo+IFtDYzogK0ph
Y29iLCBmb3IgcmVhbCB0aGlzIHRpbWVdCj4gCj4gQW0gMTUuMTEuMjIgdW0gMTA6NTYgc2Nocmll
YiBQYXVsIE1lbnplbDoKPj4gW0NjOiArSmFjb2JdCj4+Cj4+IERlYXIgUHJ6ZW15c2xhdywgZGVh
ciBLYW1pbCwKPj4KPj4KPj4gQW0gMTUuMTEuMjIgdW0gMDk6NDkgc2NocmllYiBLYW1pbCBNYXpp
YXJ6Ogo+Pj4gRnJvbTogUHJ6ZW15c2xhdyBQYXR5bm93c2tpIDxwcnplbXlzbGF3eC5wYXR5bm93
c2tpQGludGVsLmNvbT4KPj4+Cj4+PiBSZXR1cm4gLUVPUE5PVFNVUFAsIHdoZW4gdXNlciByZXF1
ZXN0cyBsNF80X2J5dGVzIGZvciByYXcgSVA0IG9yCj4+PiBJUDYgZmxvdyBkaXJlY3RvciBmaWx0
ZXJzLiBGbG93IGRpcmVjdG9yIGRvZXMgbm90IHN1cHBvcnQgZmlsdGVyaW5nCj4+PiBvbiBsNCBi
eXRlcyBmb3IgUENUWVBFcyB1c2VkIGJ5IElQNCBhbmQgSVA2IGZpbHRlcnMuCj4+PiBXaXRob3V0
IHRoaXMgcGF0Y2gsIHVzZXIgY291bGQgY3JlYXRlIGZpbHRlcnMgd2l0aCBsNF80X2J5dGVzIGZp
ZWxkcywKPj4+IHdoaWNoIGRpZCBub3QgZG8gYW55IGZpbHRlcmluZyBvbiBMNCwgYnV0IG9ubHkg
b24gTDMgZmllbGRzLgo+Pj4KPj4+IEZpeGVzOiAzNjc3N2Q5ZmEyNGMgKCJpNDBlOiBjaGVjayBj
dXJyZW50IGNvbmZpZ3VyZWQgaW5wdXQgc2V0IHdoZW4gCj4+PiBhZGRpbmcgbnR1cGxlIGZpbHRl
cnMiKQo+Pgo+PiBBcmUgeW91IHN1cmUgdGhhdCBpcyB0aGUgY29ycmVjdCBjb21taXQuIEl0IG9u
bHkgc2VlbXMgdG8gaGF2ZSAKPj4gcmVmYWN0b3JlZCBzdHVmZiwg4oCmCj4+CgpUaGlzIGNoYW5n
ZXMgdGhlIGk0MGVfY2hlY2tfZmRpcl9pbnB1dF9zZXQgdG8gcmVqZWN0IGFueSBmbGFncyB3aGVu
IApsNF80X2J5dGVzIGFyZSBzZXQuIFRoYXQgd291bGQgZGVmaW5pdGVseSBtYWtlIHRoZSBkcml2
ZXIgcmVqZWN0IHN1Y2ggCmZpbHRlcnMuCgo+Pj4gU2lnbmVkLW9mZi1ieTogUHJ6ZW15c2xhdyBQ
YXR5bm93c2tpIDxwcnplbXlzbGF3eC5wYXR5bm93c2tpQGludGVsLmNvbT4KPj4+IFNpZ25lZC1v
ZmYtYnk6IEthbWlsIE1hemlhcnrCoCA8a2FtaWwubWF6aWFyekBpbnRlbC5jb20+Cj4+PiAtLS0K
Pj4+IMKgIHYzOiByZW1vdmVkIGZvb3RlciBhbmQgYWRkZWQgRml4ZXMgdGFnCj4+PiAtLS0KPj4+
IMKgIHYyOiBjaGFuZ2VkIGF1dGhvciBhbmQgdHJlZQo+Pj4gLS0tCj4+PiDCoCBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfZXRodG9vbC5jIHwgMTIgKystLS0tLS0tLS0tCj4+
PiDCoCAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKPj4+
Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2V0
aHRvb2wuYyAKPj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2V0aHRv
b2wuYwo+Pj4gaW5kZXggMTU2ZTkyYzQzNzgwLi42Njk1ZGJlNjFhMDQgMTAwNjQ0Cj4+PiAtLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfZXRodG9vbC5jCj4+PiArKysg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfZXRodG9vbC5jCj4+PiBAQCAt
NDQ0NywxMSArNDQ0Nyw3IEBAIHN0YXRpYyBpbnQgaTQwZV9jaGVja19mZGlyX2lucHV0X3NldChz
dHJ1Y3QgCj4+PiBpNDBlX3ZzaSAqdnNpLAo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
cmV0dXJuIC1FT1BOT1RTVVBQOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIC8qIEZpcnN0IDQgYnl0
ZXMgb2YgTDQgaGVhZGVyICovCj4+PiAtwqDCoMKgwqDCoMKgwqAgaWYgKHVzcl9pcDRfc3BlYy0+
bDRfNF9ieXRlcyA9PSBodG9ubCgweEZGRkZGRkZGKSkKPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIG5ld19tYXNrIHw9IEk0MEVfTDRfU1JDX01BU0sgfCBJNDBFX0w0X0RTVF9NQVNLOwo+Pj4g
LcKgwqDCoMKgwqDCoMKgIGVsc2UgaWYgKCF1c3JfaXA0X3NwZWMtPmw0XzRfYnl0ZXMpCj4+PiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBuZXdfbWFzayAmPSB+KEk0MEVfTDRfU1JDX01BU0sgfCBJ
NDBFX0w0X0RTVF9NQVNLKTsKPj4+IC3CoMKgwqDCoMKgwqDCoCBlbHNlCj4+PiArwqDCoMKgwqDC
oMKgwqAgaWYgKHVzcl9pcDRfc3BlYy0+bDRfNF9ieXRlcykKPj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJldHVybiAtRU9QTk9UU1VQUDsKCldlbGwgdGhlIHByZXZpb3VzIGNvZGUgaGVy
ZSBjaGVja3Mgc29tZSB2YWx1ZXMgYnV0IGl0IGNoZWNrczoKCmlmIGl0cyBhbGwgRkZzLCBvciBp
ZiBpdHMgYWxsIHplcm9zIHdlIGFjY2VwdCBpdC4gQnV0IG90aGVyd2lzZSB3ZSAKc2hvdWxkIGJl
IHJlamVjdGluZyB0aGUgZmlsdGVyPyBJIHRoaW5rIHRoYXRzIGNvcnJlY3QuLi4KCkFyZSB5b3Ug
c3VnZ2VzdGluZyB0aGF0IGNoZWNraW5nIGZvciBhbGwgMXMgaXMgbm90IHZhbGlkPyBDYW4geW91
IHBvaW50IAp0byBhIHNwZWNpZmljIGV4YW1wbGUgb2Ygd2hhdCB3ZW50IHdyb25nPyBJIGd1ZXNz
IHRoYXQgaXRzIGJlY2F1c2UgdGhlIApQVFlQRVMgdXNlZCBieSByYXcgSVA0IGRvbid0IGFsbG93
IEw0IG1hdGNoaW5nLiBPay4KClNvIG5vdyB3ZSBqdXN0IHJlamVjdCBhbGwgbm9uLXplcm8gdmFs
dWVzIGFuZCB3ZSBkb24ndCBuZWVkIHRvIG1vZGlmeSAKbmV3X21hc2sgYmVjYXVzZSBmb3IgSVBf
VVNFUl9GTE9XIGl0IHdpbGwgYWx3YXlzIHN0YXJ0IG91dCBhcyBoYXZpbmcgTDQgCmZpZWxkcyBj
bGVhcmVkLgoKCj4+Cj4+IGFuZCB0aGUgY29uZGl0aW9uIGJlZm9yZSB3YXMKPj4KPj4gwqDCoMKg
wqAgaWYgKCF0Y3BfaXA0X3NwZWMtPmlwNGRzdCB8fCB+dGNwX2lwNF9zcGVjLT5pcDRkc3QpCj4+
Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgLyogRmlsdGVyaW5nIG9uIFR5cGUgb2YgU2VydmljZSBp
cyBub3Qgc3VwcG9ydGVkLiAqLwo+Pj4gQEAgLTQ0OTAsMTEgKzQ0ODYsNyBAQCBzdGF0aWMgaW50
IGk0MGVfY2hlY2tfZmRpcl9pbnB1dF9zZXQoc3RydWN0IAo+Pj4gaTQwZV92c2kgKnZzaSwKPj4+
IMKgwqDCoMKgwqDCoMKgwqDCoCBlbHNlCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBy
ZXR1cm4gLUVPUE5PVFNVUFA7Cj4+PiAtwqDCoMKgwqDCoMKgwqAgaWYgKHVzcl9pcDZfc3BlYy0+
bDRfNF9ieXRlcyA9PSBodG9ubCgweEZGRkZGRkZGKSkKPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIG5ld19tYXNrIHw9IEk0MEVfTDRfU1JDX01BU0sgfCBJNDBFX0w0X0RTVF9NQVNLOwo+Pj4g
LcKgwqDCoMKgwqDCoMKgIGVsc2UgaWYgKCF1c3JfaXA2X3NwZWMtPmw0XzRfYnl0ZXMpCj4+PiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBuZXdfbWFzayAmPSB+KEk0MEVfTDRfU1JDX01BU0sgfCBJ
NDBFX0w0X0RTVF9NQVNLKTsKPj4+IC3CoMKgwqDCoMKgwqDCoCBlbHNlCj4+PiArwqDCoMKgwqDC
oMKgwqAgaWYgKHVzcl9pcDZfc3BlYy0+bDRfNF9ieXRlcykKPj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJldHVybiAtRU9QTk9UU1VQUDsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCAvKiBG
aWx0ZXJpbmcgb24gVHJhZmZpYyBjbGFzcyBpcyBub3Qgc3VwcG9ydGVkLiAqLwo+Pgo+PgoKSSB0
aGluayB0aGlzIGlzIGlzIGNvcnJlY3QsIGl0IG1ha2VzIHVzIGJlZ2luIHJlamVjdGluZyBhbnkg
ZmlsdGVycyAKd2hpY2ggc2V0IGw0XzRfYnl0ZXMgYnkgZXNzZW50aWFsbHkgcmVqZWN0aW5nIHdo
ZW4gdGhlIGw0IGZpZWxkcyBhcmUgCmVuYWJsZWQgKGFsbCAxcykuIFdlIG5ldmVyIHN1cHBvcnRl
ZCBwYXJ0aWFsIG1hc2tzLgoKVGhpcyBpcyBjb3JyZWN0IGFzIGl0IHN0b3BzIHRoZSBMNCBmaWVs
ZHMgaW4gdGhlIElQX1VTRVIgY2FzZSBmb3IgSVB2NCAKYW5kIElQdjYuCgpSZXZpZXdlZC1ieTog
SmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+Cgo+PiBLaW5kIHJlZ2FyZHMs
Cj4+Cj4+IFBhdWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9y
ZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1s
YW4K
