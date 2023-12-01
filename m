Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE78D801434
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Dec 2023 21:19:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6246A43776;
	Fri,  1 Dec 2023 20:19:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6246A43776
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701461969;
	bh=2P7nK9jwGUxH+CskuuVl90tia8gDCRAus9XAQsB4ifs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FW4YtygCvu2Hu0kyIMugnuhG+h29GoOpclDvkP/b0cibxgywLJ5pdeEFTbm3F/TDM
	 5GPVlYbuvJ827ijsLANABZxy8EWXNfXvwpCFndLNHOEft7/NfWxtbJfJ8BKWOuo5WJ
	 MjPSuvsqRD7gGgvjhADIxAEyP7rv8vIjl0OP3zvz8B45ZiFD6wRiDlPoIvgc/j6677
	 UoRtBbKTfgBqAwCPqf78gLlz6WVKtDA9uI4wbgE8NqSbm1RwZsR3xlvnNBFxi0xreQ
	 Lr/LqIfoja21335+/KPV+q07YW1L0SZACn1MZ+Cc3qe1x4B7s3H1ZdRxERnzic2L1I
	 xe6bYuUBJGpfg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6JuWbMIsa3Gy; Fri,  1 Dec 2023 20:19:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A324E40492;
	Fri,  1 Dec 2023 20:19:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A324E40492
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 435C61BF2BF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 20:19:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1430560A9A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 20:19:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1430560A9A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 94LYwa4Vu3dg for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Dec 2023 20:19:21 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 01 Dec 2023 20:19:21 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 022ED60A97
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 022ED60A97
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 20:19:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="557701"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; 
   d="scan'208";a="557701"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 12:12:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="769799379"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; d="scan'208";a="769799379"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Dec 2023 12:12:12 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 12:12:12 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 12:12:11 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 1 Dec 2023 12:12:11 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 1 Dec 2023 12:12:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iuV8IKk5+73eQLoGhJzLtbkYNSPEbTm34BmH+HKDAuHDrMgdC5S1W5aDG5XeTkGTUHcpa1tFjcWJaZN54RcIw/NNJegBjceboLJ6bLJ6cOHPirVerOrOP9z5MX0t4isVOUjnxRmNVR3QBwFgSeAPvr07BRJ0LSQWHt1T76IKZ+0juDoTshlQmketxevs3jyzQrQ8tF2PyusNtMg20MAoGQyyptlwKfGmdEzJRsYY4YGWyRo4rWsB3iuC78T0/sCAXXSt69MxxrjyXUg3L2j3E0TjrwcIpofPvaIp7RKCUYFN7CRrmpTWXWbyruD2BFnij+cy4d1BjDzVmBuzARyKeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A8qh0PaKugsRRiqYeESZ/GOComgy5GQfm/sNGbvgxp8=;
 b=gDyTBJNVuOr/MQwcdh3FSAW/jHbMYdteIFNu2Bmro9020IzjAeoqHr+/xSp+pq7f4ueaeroUNMKovv3bbdFwzc7iZ13BsCME/2fYWlSosUaxM8mPwaJgvDh7RVcGpcoRq6uFTJ8jHQdk/MyK64ftAFFUlm8F/9R4/yyC/phMoFYkvMvi3ZPN0SEZEiEpWUXqzn9FpmDYKDeTYpYXgQpO8WIjwAkfXWKyl6eBZC6jKE6HcSCVmKNJV1cyW2T0tF7QVz26g4q0o26C7iBz4OTbNmnBgKmROXV9ss1ecsVtiNdxhuIXuXCOF+7qD494+VV1RmRNI5dp3JFduvy0YjnB+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by IA1PR11MB7176.namprd11.prod.outlook.com (2603:10b6:208:418::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.27; Fri, 1 Dec
 2023 20:12:06 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::7706:285b:27d0:2c5d]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::7706:285b:27d0:2c5d%6]) with mapi id 15.20.7046.028; Fri, 1 Dec 2023
 20:12:06 +0000
Message-ID: <97ed09be-cb2b-48c3-846d-7a0e453ef816@intel.com>
Date: Fri, 1 Dec 2023 12:12:05 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20231130214511.647586-1-jesse.brandeburg@intel.com>
 <212e5518-0f72-4bf5-bc5f-49d184be1931@intel.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
Autocrypt: addr=jesse.brandeburg@intel.com; keydata=
 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
 /fnLfll98Nhx
In-Reply-To: <212e5518-0f72-4bf5-bc5f-49d184be1931@intel.com>
X-ClientProxiedBy: MW4PR04CA0224.namprd04.prod.outlook.com
 (2603:10b6:303:87::19) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|IA1PR11MB7176:EE_
X-MS-Office365-Filtering-Correlation-Id: 17aaf117-fac4-4dd0-8a98-08dbf2a9caa5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iCI8Z9JAhQP/o3NGbAN1kqom9iUowG7M841Bif8rM1QeE49dJTljg4H75SPHsHZAO2YALtKR+6yex4bKbx7jmUbrymAFvY9ZG+kDILwQ0l96QRLMymloSyMvF/QVzFnjQIvyE6Q7bzG/XIFvd0d3evMV1hOSv3Zq4PvRc7V7rd20fIpX2DhfegKRPEj7c6kkB4dswZjJNz3XmcuJ/uj4X3V4t5fyMYnh6lx+4kESOka9FiYXr5JBwxXKf7PcVp4JwwA9DnF8YEjs5PvP5d1PAd+meJzXuVw1zrExQ2b8eZrglKme/+RjAAXJYsjDi/pfPVrLCRgYSElbEiJuAfMV26HMR5ghVN02BLx5nhc0jTq1jp4poKB57BmzclX1I+fnBusMCc7yaSJKS9qoxrL7zXMRMzeVnRtAb61YiSOAPU0vcqsk/VWE2YF3J1ot0JWU3HKjdUMZ/no+qckV244QbLP01U9l+XIhkouY3U70LWJVqqIMObMhqnn5z69XQX44QxVo0UgvHBS4ne9NUlY2sFmxNl9kmfzRzcFx3PMSrmQucAzGn28Lo+fq4jg234Rqkx5FkEusgi7DsgjOwyTodJs4nvAaaOJY678XCGE5EE/m9Ns7uF83C1Mo1MJgD1D90icl5kJ0ur7Hj0pgZqYwfA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(366004)(376002)(136003)(39860400002)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(53546011)(26005)(2616005)(66556008)(6512007)(82960400001)(6862004)(6506007)(4326008)(5660300002)(31696002)(6486002)(8676002)(37006003)(44832011)(6636002)(66476007)(478600001)(316002)(66946007)(38100700002)(83380400001)(31686004)(86362001)(8936002)(36756003)(41300700001)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SjhsaTkvMjcyM05qMTNCUW0vOFg2Q2JQUTVIL2IyU2ZMbDRVRVcvdmh0Qmt6?=
 =?utf-8?B?UUYvZkZpTmJpM2pEUFNMZTBnNmEzb0RFc09LTjlzb05TclhPNlpNU0xkWnNp?=
 =?utf-8?B?eGhqZ1lGNXVhejhLOGZFSmNqeEtpRUl1NEJkdlhGYUVWQUxjKzlWTWprelBL?=
 =?utf-8?B?WW9ZWDY1N0xsTUcwVTY3c0dneVJDV3dEb2lvMHpTQzMySmY4RDk4emJNMDB3?=
 =?utf-8?B?SGdQQXVJTVhteG1ieStscGhLRnAwZzRXRHdJOTZaYVErVjROS1ZyUDhNRWN0?=
 =?utf-8?B?VkNWYVJSa2F6T1o1NkRPTDNrSlFCdjI1RGlQSjF4d2hRV1VkVkRJbWh5b3Bz?=
 =?utf-8?B?Zi9OREhCZ0VSRHBpK2JIZjg1YUErUFlVZmQ0cTk2M3dZNitSQ2RwR1VIYTFa?=
 =?utf-8?B?ajR2YlNMdzJ1U0t0ZithUE83N3FmcmQwVFpkMHdUeENXUjhTU0RFaFQvd2lO?=
 =?utf-8?B?d2Yza1dhU21NTXBXMmhhNW5hR1JoQTJRM2hwSytiVzdXVVpaN1lmRHpROGpv?=
 =?utf-8?B?eDUzYnp6d21TbU5vbFQwc1oxSEdEWkNzeVg5YmtwZDdEWGg4ZmhzQTVlL1Jj?=
 =?utf-8?B?UzAvQ2Y5cnpDd1h2ZWpUMG0zcVdCd0hNYlF2SG9mZVcvVTlZQUVZVVZyN2Y2?=
 =?utf-8?B?a2JEaUJiM2Y3eHZJbFpBRzBhRW9tWTNjU0JaQjZKU0VNdHVjZXpCTnVsVXY0?=
 =?utf-8?B?YnQ1Wmp6NHE5dGE0ZEJXeTJra3dxc1RkSk5NZDNKamVvWkZwaFhOWkoyVURJ?=
 =?utf-8?B?Njl6Q21GNkxuYk45S1poVVc2eGliYXZPSmYyZkNrKzk3eFRqSUowY1lrUmpE?=
 =?utf-8?B?MnkrQWxlWXQzbnlQbjcwY1RhSVV6MjR1TUpHWkRGMUtFS1NzelhKVkJ2SjEx?=
 =?utf-8?B?enVjREZEcWo4eDFROTU4TTlKT1drcnhBeHYyVGpadEhUM3VMVFdHRlpMYWpu?=
 =?utf-8?B?MGh0cHdrK3BidkdCcDZIczZqVXBDelBvamt6d2NFYkFNUjZjc21MaWVxeWdD?=
 =?utf-8?B?U0Y4U1FraVFlZjVUTDZHU2V4dmNUOG9uUDZZRUFDR3VheVNwdlpDUWtsSGtF?=
 =?utf-8?B?bkp0b0tjVFlFeEJXdnRYL2pZcDhRVDM4S3NaRFpOc0MwMktLMUwzcTJVcDdZ?=
 =?utf-8?B?czVtNlU0cXQyUzd1bzZ6Nm5pb3NzRkRKanUwWlV0VFY2SjlCV25mSUsvUTZK?=
 =?utf-8?B?aVUvYnZES012S1hqZWJJUEZzOUphNTVYTW4vSGRpZ1RVd09HVGFCQ0xpVkIw?=
 =?utf-8?B?Z1lSc0syWnlZNklXd1dVSXVidnNVOVRQdW5xMFNzMmlUbC9QZ0liaXU1Y0lR?=
 =?utf-8?B?MlZPUkNBTW0wbXhsRWc2aGRoUXRjcEpVYkpXV1BkeHRtN0huTXFOSk9SUXlX?=
 =?utf-8?B?M1BsNUxXK2c2SWY4RHRMRDZ5WldYN1NjdXZ3SUVjYmM5YVV4SVkrZEViN3Fs?=
 =?utf-8?B?SEg3RDE0cS9sZndMdUg2eDJIa29EUm9FalpmYW92RkVqZU9MdnhvRTI5R21a?=
 =?utf-8?B?UDNjeHRiamhVTEJTSFRkTUNFMzBSUmI1Z21jTGZxR3Z3bFlBN0xEVXJQWmtX?=
 =?utf-8?B?RERyNEUyYm5Idlp4WmdhQit1RXk4bnMvbm96RXFQOGZVcThERHQ4UzhtTjJ1?=
 =?utf-8?B?bjl4Tk5YSVNYSENoWVpQNVMvVkw5dEFscm9oSytSZ0d5YzlMcURtd2NrM2JB?=
 =?utf-8?B?MVMwaUIraWd2OUYvdTY3L1Zob3MzV2M2L0JSL05oVTNCcitSem9MaDBHVTh6?=
 =?utf-8?B?N0hqUlluMWVwSUdvSmRYZnFZbjNSVlMvbitwS0RueHVXL25mejJOMm83SmZU?=
 =?utf-8?B?WVpqZ25xYlU1NHhReTFnbFcwSTRwQ3NhZWVueSt4YXdRZmtIU1hvdXZZbHBQ?=
 =?utf-8?B?RFFCTlZGWjFwKzFMY2MxclNqRDM5c0lNQlpUbmZpcVJWNEloMzB1dit4Slh4?=
 =?utf-8?B?eUVKekpKR1VMNTlrSFl6ak1Ock14ZzN2SXNtVU45aFdJOC9UUFYrbEJGSUU5?=
 =?utf-8?B?Z2F3UnEwS0pCaXdwakVhWGM5Q2pWWXVYRlRiVFVyajZrd3l4N1F3UGNkWlBF?=
 =?utf-8?B?UGNyMW5yMFNXbW05NHRDNFRmamtxcmp4S1JTWHVFRXNBZmJmNHAyR3MySzg2?=
 =?utf-8?B?dUVkL25zay9wa2FkQVBybGErazd3dTdPS3NhU1o2OUhwa3ZvZTBKZUx6b3JJ?=
 =?utf-8?B?VXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 17aaf117-fac4-4dd0-8a98-08dbf2a9caa5
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2023 20:12:06.7359 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1trPrPTVSoAo2n09zLV7to3iughfZiCfs42LG0XGh3CkqJ9RiTnFwyekFB/S0eBCZ3QZG+rzBRiUS/LbNlJ3TM4xTSYzEbaEMpMgo9SYYZY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7176
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701461962; x=1732997962;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LNn4yLVDh8MX84UNx7rQKwDx3VyWazyvdfWsg7vBXAk=;
 b=HlRh9Bkgho4a6+RvPRjt3Ear+OIz8IZKTt2Zudc8CabdXth/1F9r6xFn
 A1zprofh3JP28NK3e8HZwhTXivpO5JX6HN3EgZCScuC1jGmpwAc/9D/un
 H8Ue/s8bPwrsWcqTGsfULztsyQqepVqdTfvijs2wa/ioZrDGknZ+QCJdu
 IzF8j3whpY4npawrDJbBbCXKNMFpDen3YUI3lL+m2oHxsy1LxEqWVXw2o
 W8G/kgfZIo/k8vOK5LyJtLPRqkQPBgU9LcmHp9/DeudMh9G9fFH9NNGUX
 LfJ3k26SGLJAs5tXd9SKPtScVoPEnmnaXFOlw/oYPlDGn328DaVHBPWRC
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HlRh9Bkg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] idpf: refactor some
 missing field get/prep conversions
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
Cc: Julia Lawall <julia.lawall@inria.fr>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/1/2023 6:32 AM, Alexander Lobakin wrote:
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>

>> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
>> @@ -505,7 +505,7 @@ static void idpf_rx_post_buf_refill(struct idpf_sw_queue *refillq, u16 buf_id)
>>  
>>  	/* store the buffer ID and the SW maintained GEN bit to the refillq */
>>  	refillq->ring[nta] =
>> -		((buf_id << IDPF_RX_BI_BUFID_S) & IDPF_RX_BI_BUFID_M) |
>> +		FIELD_PREP(IDPF_RX_BI_BUFID_M, buf_id) |
>>  		(!!(test_bit(__IDPF_Q_GEN_CHK, refillq->flags)) <<
>>  		 IDPF_RX_BI_GEN_S);
> 
> Why isn't that one converted as well?

Because it's not a constant, and it's not checking a mask with "&", so
the automation ignored it. I *did* a test, and we could convert the
return value from test_bit (a bool) into the IDPF_RX_BI_GEN_M mask with
FIELD_PREP, since C-code allows the luxury of converting a bool to a
"1", even though it's a bit type ugly in this age of strict typing.

> 
>>  
>> @@ -1825,14 +1825,14 @@ static bool idpf_tx_clean_complq(struct idpf_queue *complq, int budget,
>>  		u16 gen;
>>  
>>  		/* if the descriptor isn't done, no work yet to do */
>> -		gen = (le16_to_cpu(tx_desc->qid_comptype_gen) &
>> -		      IDPF_TXD_COMPLQ_GEN_M) >> IDPF_TXD_COMPLQ_GEN_S;
>> +		gen = FIELD_GET(IDPF_TXD_COMPLQ_GEN_M,
>> +				le16_to_cpu(tx_desc->qid_comptype_gen));
> 
> The definition:
> 
> #define IDPF_TXD_COMPLQ_GEN_M		BIT_ULL(IDPF_TXD_COMPLQ_GEN_S)
> 
> Please don't use FIELD_*() API for 1 bit.

Did you mean that gen is effectively used as a bool? I think that has
nothing to do with my change over to FIELD_GET, but I could see how
redesigning this code would be useful, but not as part of this
conversion series.

> 
> 		gen = !!(le16_to_cpu(tx_desc->qid_comptype_gen) &
> 			 IDPF_TXD_COMPLQ_GEN_M);
> 
> is enough.

Generally I'd prefer that the kind of check above returned a bool with a
constant conversion of the mask (compile time) to an LE16 mask, and then
use that, which is why all of our other drivers do that instead.

> 
> Moreover, you could use le*_{get,encode,replace}_bits() to get/set LE
> values right away without 2-step operation (from/to CPU + masks), but
> you didn't do that here (see below for an example).

Those aren't widely used yet in our drivers so I wasn't picking them up
yet. But thank you for pointing that out.

<snip>


> In general, I would say those two issues are very common in IDPF and
> also the whole your series converting the Intel drivers. The scripts
> won't check whether the mask has only 1 bit or whether the value gets
> converted from/to LE, so they won't help here.

I had been hoping to do some more followup work. it's possible that with
some tweaking the coccinelle script could learn how to detect non-pow2
constants, and therefore possibly one bit constants as well. Maybe
@Julia can help us refine the script and possibly get it into the
scripts/coccinelle directory to help other drivers as well.

> Could you maybe manually recheck all the places where bitfield masks are
> used at least in IDPF (better in ice, iavf, i40e, ..., as well) and
> posted a series that would address them? At the end, manual work is more
> valuable than automated conversions :p

I think a followup series would work better for this, do you agree?

Thanks,
Jesse
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
