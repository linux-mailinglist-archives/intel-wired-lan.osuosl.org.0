Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB670777688
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Aug 2023 13:11:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 57FB183C29;
	Thu, 10 Aug 2023 11:11:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 57FB183C29
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691665887;
	bh=iiHtq3YvBAm5ZkCIUXSyXITMVEiFaPHyIpykLmbkKaE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lDxMOdt5trUdUiG78J4GI65dmPjOmufZKsMmUNHihLKmBRNAbuIrLopWObkZ1mgDM
	 3AJc9I5DWA9E0QVRkmogcNzsniN5xFCZV99O3IqpJ7AAmlPSxOijelpflEWONTOk9D
	 8r0/+97M+qWswAbAuQYCo3QUJse80Qjm40E+3zdSVgirUj0tbVujmzQ68ZWVuZ5ttI
	 pFB6ZLd7y4Z1DVG1QUweUqlqF0ty6kE0XSgFXUEY0sS4t/w0LYz2fbY/msMvj2fEB8
	 QcazLN05HWo90Dv6Ku6UcxqYTYlQTwzEhGlzGQjAq3/OVfsaY0j/g+tDxhZUkNpHXX
	 nQdVw6jL8ikqw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fnia89wtYx94; Thu, 10 Aug 2023 11:11:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 28C5E83BDA;
	Thu, 10 Aug 2023 11:11:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28C5E83BDA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7F2831BF599
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 11:11:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 52A92404DD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 11:11:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 52A92404DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z_TzFOVslEKX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Aug 2023 11:11:18 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3A151400D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 11:11:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A151400D1
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="361507751"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="361507751"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 04:11:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="709110014"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="709110014"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 10 Aug 2023 04:11:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 04:11:17 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 04:11:17 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 10 Aug 2023 04:11:17 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 10 Aug 2023 04:11:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=djfb7ived5+F5vd12AKmQYs7LYvNvL4Ba0xCfrM8jFpi+4mvA0VGxNwrZCT1azpDXmS4iLYPyS5ojzrnH/FRs6odFMq69utexUxp9+RWs31LQVSjZzXkLSDhIHwC/Bqtevz5I3HNYNyk/pZjtPYa1l1mkOtW3BmQxGReFREwSpnzhmkqixPLCc03m+NB5CeWDXJDKGX8+8YfzidDI3N3LdtNWQ3RPYC5ucaQx1talF+0/rabWAFFwRK1Kpn4LPoGCrIymkbo2Mey3HZkeKPeQy5W2CWyA6MAwH1h9xQ+wcVKqlihGNNy4g0KCi09VHrCIhvtIBJFYRVH54XzUCfJGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k2S1nNrylHQEM2vU/6fqEzxWf13tZKc3ldsJLXVELlA=;
 b=X9QRCTptnTtAXc3boB503CDckks4fM7otk0mlyq7rsjAulP+8k1ogcUkRaoLu9hmYEUNkPzHKnJ4BLm4S65P1/v2mKG6fGiBciBBBTI3J4nh6sLvidcftvnghXCjM/QlK94Nh6xeGuqb0i7PmLRuhDLGICa1WQ4b+0LOLQ360er2XUxSXKdgE4f2GAENNBNU8z2oaPFENlY+kL22UyPwX3NrPfq7LB2WHipAOIYpsCorF0h14MtTsE784i29Vnm1m43zccDehrOhAxs60tyVlYVEB9eeucALS07lFnZxDBwKv8N7ZLMry/Kjllyz0PFLpxAWOnJ85zT+t/LMk+QYsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by MW4PR11MB6809.namprd11.prod.outlook.com (2603:10b6:303:1e9::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.30; Thu, 10 Aug
 2023 11:11:15 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::aa6e:f274:83d0:a0d2]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::aa6e:f274:83d0:a0d2%3]) with mapi id 15.20.6652.029; Thu, 10 Aug 2023
 11:11:15 +0000
Message-ID: <9389b92d-0e74-8f3c-b88c-610b903fe1bc@intel.com>
Date: Thu, 10 Aug 2023 13:11:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Jan Sokolowski <jan.sokolowski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230809133913.2652736-1-jan.sokolowski@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230809133913.2652736-1-jan.sokolowski@intel.com>
X-ClientProxiedBy: FR0P281CA0106.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a8::7) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|MW4PR11MB6809:EE_
X-MS-Office365-Filtering-Correlation-Id: 9bb5677b-e434-48f2-2119-08db99928381
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ePPaTJWPK9dI+43Uqx4K1lpLcZilvAMxCJ8CD86PBicnFkltLNZIKkmtfuC+7L8/E+hiBc7vNy3zxVpXRnlqNDxs06CSwdsiU36G7SzNRSjZwqFHjN7x2FipSxgMOGlfxFZfPnHdM1EEP2ZnPAv4lAp6HzFXa6kTnOUCb0maKy3gMOC5/BTkgRneBmJ93amlYEYkvy+7BSX1yQ5vKm+FER/2AXIWefRNZDtqBsRgsnIjAsjUmA4AqakmEos/TWVqLUi5EUiicfB0scFZImsAGi6E70DdjyKRVjolSUx3SqsT9EblHQuDaMGDntQFyrW6wduQA9IjHAsYvzsdOgHIetEB4fhOpb54SXO1e1ERJjJHKZLPMJqDFi6Yf9Oxjf5NxWE73iyb3TPPQnoUC+rfGMklDDHT44mLsRskykeA3riAnojPqVXpIkFf3CxtgIcDn1jiSd+zd9L9OmORId+II3Oo2+LPEFrTeFCzwCj5233LT8LH9KpaaLye1RtU6yH+ufV0MuJQnA/wS54QVSDK7nHJsq5mLFnXg7RgQ/7ESHhRZXpoTCLueQuZ1lCDzhEt0ckxTK+GM1iU4yDyoFifjlWGHxw4QocfqXFJGcsfXxXJFrkRc/pbHnqLUyUN9uwEB270Le/UC3AjoblKYdQCcA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(366004)(376002)(396003)(39860400002)(451199021)(186006)(1800799006)(82960400001)(8676002)(38100700002)(83380400001)(8936002)(86362001)(6666004)(2906002)(26005)(31696002)(53546011)(6506007)(6486002)(6512007)(478600001)(2616005)(31686004)(316002)(66476007)(66556008)(66946007)(5660300002)(41300700001)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aGR3bUJlWThobVdGSDVsQWNPNFloVXN5RjJCVHdLR21kR0JRNEhPbFZVNzhO?=
 =?utf-8?B?V3IzWHdHWVVSWkhWSlhEb09WNzFUdzNyTE9nSWJtSFcrSWRTRmpGWDU5bVV3?=
 =?utf-8?B?VkVtSE5aZHlPL3QyaWVTMkVUQVhZb0d1MFhaVlN6aXpKSkhObUpMVW9BK2tE?=
 =?utf-8?B?S2dTaVhZOU5zZU1wSThZbUFibytLNitjTWZ3OWxJdXJxMFhqV1dGbElIdjhk?=
 =?utf-8?B?TExBbkJlcFJBb2o0TE0yWEdEaGprMjA5emZkbE9mR3hVYnQ4cWo5R242YjZm?=
 =?utf-8?B?ZlVGUmxxdzlLK2JXUlN3OHpYcG5RdHgvcFRPZnhjcC8rK1lsU2pZRG1FdWMy?=
 =?utf-8?B?LzBzaDJXK0ZOaHhFK0pLd2dDSjFHenR3YnlqUkNDWmlZcDNZQWNGVjdaajBJ?=
 =?utf-8?B?TTlWMklsY0R4ZER3Y3M4NU9ISi84RENiVGRoQ1lpdjJHRTNLeUt2Z1VoN0R5?=
 =?utf-8?B?WHcxUEtKSTFKRE1iZVFGMmRTUHgvL2czQzNsWmtVd05iLzVxczBlYXJRM3VU?=
 =?utf-8?B?ZjVLcjVnVS9ueXhIbUQ4bVBOSDFJRDhmVjVPR1oxMU41a3E3QWpJZEhFUW1s?=
 =?utf-8?B?K0MzS2RhRmhqcTJFcHJESkhEZ2RpMzFsYTg3YmhualhERWtQY0FRcEtlbXdM?=
 =?utf-8?B?eU5lUUR0NlhPRG9ZZ3NNa1pTKzFlUisrN2Z1ZEtja2ovalFIWVVodGJ3eGs0?=
 =?utf-8?B?M0ZHQXh4K1JXa21MT0FxMENTTjQ0RGQvT3VBV3phampKcWxDUkZRcy9Td0FG?=
 =?utf-8?B?TXJud0FZcnlScFg1STZqd2NDS3UzVTdYY3ZwNUNoOE9QZ3Y0b3RsanBPNE1u?=
 =?utf-8?B?UkJpaUVTM3M5OVUrK2dqMm5sNERrRlhQMUoveVQyb2plMkpNdTkyeHBNczJI?=
 =?utf-8?B?ZWZZeGU2TXZFQWlOY3RQdXFOTGVXQnNtZTgyeDFkeng1YXZoTWVDTHhFcVhW?=
 =?utf-8?B?dk5kNmxjWGFWa09jekk1QXQwS0xZSmpnUVFveDFUajdDOHdzc2FBQXd0Nlhq?=
 =?utf-8?B?azRUTGFFRTRnR1dOV1h3QTZnQisxV0xZeTVFRzA4Y3FBSXE4cURiSCtiK1dM?=
 =?utf-8?B?anZGSDFDSE94SmtlSXVJek9GNHpzZisyM1pzb2lVdzlKcVpQZkZER1E2dVo4?=
 =?utf-8?B?cCtlV1BSNW1LMFJBN0FnMjNRRHFRU1RwTVpMVWRQZHUvTzNnZjdhbE5ablBi?=
 =?utf-8?B?UEU2WmVNeGhFUmY5cjd4VExoMmQyRlBFaWFuVEl1eHJhL1dYRHM4QWRsenMr?=
 =?utf-8?B?VUtaMVdqYnZBT1JHVlRRVExwUFF4NytsKzRtSGZzWkIza3pqdysva2R1U1ZX?=
 =?utf-8?B?Z1crMWYxVnRndk9KR2tWWUwzL1FBMXVnRjhralljT2k3QTYyK2ZHV0tkWjJI?=
 =?utf-8?B?TzVuU2hOcEpRSTRBSWY3VVV3OHZYZmJIanFCUzV4cmFoZVkxem45Wnlldll6?=
 =?utf-8?B?NjNWOGphUm5YU0o2eStQTVBMVnRjd3RVYyt3amZkMWRWMmt2S0hIRXd6ZlVS?=
 =?utf-8?B?cG1KcXFtWmxVWUFZaXJBQW54N2pIcllNME9yTnFIR2tvWTlVWG1lQW56RzNv?=
 =?utf-8?B?a0RxU1JNZVczTHczM1Y5dWY1WW5Id3c3SHVtME5GaWcvelhuNzVVR0txUFFB?=
 =?utf-8?B?R1B5a2dLYzVxMEdaSjRWRnRpczJxY3BuaUpkZFlnNXhkdXZwUmk4ejVsdUY0?=
 =?utf-8?B?cFQ4RldWdEhvS2dZZVRBNy9XdTNMT1lFc1YrMmNBbmFQU0cvVjJpc2RWNXpw?=
 =?utf-8?B?T1oxUjE1WmVwMXZvMU9PNUZJUG1CamoyUjVBSDhkeGxrekJRUHRmT25VY3o2?=
 =?utf-8?B?QWxONmEzNVc4NzRzR1M4RUVQV0dicFkxQnR6eGczQVIwdzNDSFJLTmJ2Vm5z?=
 =?utf-8?B?SDRzekFqcWpyS0NZTE44dkhYZnZaNFFzc1lheWs0azNGS0hmZ2NIYWorWkVR?=
 =?utf-8?B?NFlEdEZ3WVdpLzQyd1U2VTZKMTRNNmZFWUU1bGdaZFI1N1N3Y2NLMHI5WWlz?=
 =?utf-8?B?YmVzV3dkZk9hZEJMRzB6Slo3NVJ6SG9leGVxV2sxaDJRRlVVSFJOTFBhdzFt?=
 =?utf-8?B?TXRpZnlRU0NBRktXemZwTldTeWxCWTd2czB1Y2IyTm53dWd3ZFphU3ZoNHZR?=
 =?utf-8?B?WXhnZFRzTmRSVFFodFV0clJYbkhSMDFwckpvOVUzR2ZrTVpWRjJhOTJrVDdJ?=
 =?utf-8?B?QlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bb5677b-e434-48f2-2119-08db99928381
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2023 11:11:15.4927 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vfw3O5JEMln9309eD8HK/XBmrSZY9q8vTjWzxfxrN/qjW41LpkRFXkNbjrS5UoGNEYpSJImkku6tU/FHOhvYDXbJ/QDl7Trk+tL35ZI0j7U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6809
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691665878; x=1723201878;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=pI/wNx/OJk8NY6Y9coERWGgPqP/UpenUXqE3xgjfvUU=;
 b=NvYad060Mf27QoOqQRVQ9HLH1titzAuDEoHgHYh6TjnN6bNyvAkmYT43
 NqGnn49m90720MkkJeaSdRCOp9nV1rFqXezxt/LLN17l8mcvuDVsOHSpA
 JZ9AI4hTMp8ErHU9ca/zmLcvQgcq3xLGjVwqv/QAc/nH+m72MtELhm12f
 GdcJ100GODFcMQr3x7h1qeupIpSQuOZwceAW6MD6wsQGA+cwSEKwP/Lr8
 onsFtet/j4c74JCVA6ZNoli68tSsVAQyfvYf4hoiORj1aF63TtGXQ7H0N
 PHkvJSv4WBWtxuLpIiQ9aDyz8viNLEcYlKzds0/6je16lbjBDxbUUC1FK
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NvYad060
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 0/7] ice: staticization
 refactor
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

On 8/9/23 15:39, Jan Sokolowski wrote:
> ice: refactor methods to make them static
> 
> This series of patches refactor some ice driver files
> in order to make as many methods as possible static.
> One additional patch introduced in v3 also refactors
> one method that can be simplified thanks to being
> static.
> 
> Also there's a minor cleanup of unused methods.
> 
> Jan Sokolowski (7):
>    ice: remove unused methods
>    ice: refactor ice_ddp to make functions static
>    ice: refactor ice_lib to make functions static
>    ice: refactor ice_vf_lib to make functions static
>    ice: refactor ice_sched to make functions static
>    ice: refactor ice_ptp_hw to make functions static
>    ice: refactor ice_vsi_is_vlan_pruning_ena
> 
>   drivers/net/ethernet/intel/ice/ice_ddp.c      | 120 ++---
>   drivers/net/ethernet/intel/ice/ice_ddp.h      |  10 -
>   drivers/net/ethernet/intel/ice/ice_lib.c      |  82 ++-
>   drivers/net/ethernet/intel/ice/ice_lib.h      |   5 -
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  25 +-
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   4 -
>   drivers/net/ethernet/intel/ice/ice_sched.c    |   2 +-
>   drivers/net/ethernet/intel/ice/ice_sched.h    |   4 -
>   drivers/net/ethernet/intel/ice/ice_switch.c   |  48 --
>   drivers/net/ethernet/intel/ice/ice_switch.h   |   1 -
>   drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 468 +++++++++---------
>   .../ethernet/intel/ice/ice_vf_lib_private.h   |   2 -
>   12 files changed, 331 insertions(+), 440 deletions(-)
> 

Thank you for the effort on this series, including your willingness to 
make patches easier to read,
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
