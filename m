Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BFC576642
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Jul 2022 19:44:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8038A40320;
	Fri, 15 Jul 2022 17:43:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8038A40320
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657907038;
	bh=oCkrdYWB5GqedE1l7fQnzqrewqll7l7J/0j5y94xUWM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BWaZraJ4u6NjMMUR/6fOzKVLelC5y6Yog6BOhib9hldKoIDFF8XihxghoZ8t1UwNO
	 ujytmCg0Ou3wA2JwFQLy+/pdnUCGZII9BS2u8y5j+qNbL+JJpn47EMC3pCWQZ6X8m5
	 SSErfK+t+RtXDDXBU1UNTa9s8y9Th66qYf5rG+agnb+jbU7Ui3D8cgAz2nSJ9gE0Rd
	 5oOCMrEP5qIZP86orgEmn5g5aOjsFdyZMWSb648mPy8ef7BW3OmUV1jMfkYoAqaVhe
	 7TSmMpMZTyYmidxqWEvkWL+v4Em9wbkQzwxabFjUEi4JhiO0rxczvhVCpOEwYEzhGP
	 kaxxFmPeENDNQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iffIqiUYieOq; Fri, 15 Jul 2022 17:43:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4E54840250;
	Fri, 15 Jul 2022 17:43:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E54840250
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D66181BF28B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 17:43:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B668C40250
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 17:43:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B668C40250
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HWGirULzCq0q for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Jul 2022 17:43:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6337B401D2
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6337B401D2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 17:43:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10409"; a="284617107"
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="284617107"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 10:43:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="546734161"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 15 Jul 2022 10:43:47 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 15 Jul 2022 10:43:44 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 15 Jul 2022 10:43:44 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 15 Jul 2022 10:43:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=afIkkNKPjyqrkwXYKMACB9cPKgpbKqsWoKuuw7JU9Bk3p343r8IeCgD1a3NWS5ofi//4kFAH3h5vizQnCCf0Te6ovUkafbymOWf7MPriqfethwe/A1DgAMXEe4GFuy8wy2dGCysL0sO4KiggLdcKX+ZmY6I4/8qjQFzg1MDv34+eiF3zxBp61L6Ee8coQHnioMnxENzyekzYxXKKORg8Wj7aMISkXA4gdiy/RZs9xiXbC+xapQjkJsgso1jGN9AXsdfWziNBVNwaU5F85p6QcD7PZarx77cuu8faLBxzpw3cWaw3Vfde1Z0U1krvz86zds5tVAJttQlEmNZuEzcW+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/0/PwmlUk2sfHhEiF49iTQQb3+IYH0OdLptiLhLYAgM=;
 b=IU+cNOZrOMNdGjyg890klAXQl8GIpEwpykGfKiGL0yZ5oDBl5WJ7cZmYfhqnipgrgW9R1x2J9yEGQL7mb5fsvOZ8rNarYV0RTbITS+98QyCjl2GF/N7adE/yTIfHK0DfMhmT82ZAfDBw5hBNGbANtXUVSXSOim2IdOmDvaXB0DHOiJWso2EUG4DNZEoaAddlDTbGkjMgUeUXFWuzR3fJzoWOVLfz7ryDxEgYJw4W2Od4dP5adt/MYiIrDP2eN0lX2pgUw5fzZpCMfdvwJeZqcwiDmG+YZb/zs9bvxBEU05C4kn1K0pmp1NQyXjzE4btDy4mvOO5kIeMZaePfKkin6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DS7PR11MB6247.namprd11.prod.outlook.com (2603:10b6:8:98::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.17; Fri, 15 Jul
 2022 17:43:41 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb%7]) with mapi id 15.20.5438.019; Fri, 15 Jul 2022
 17:43:41 +0000
Message-ID: <9c74f28b-19eb-12d0-6ee1-cb154e6c5b0a@intel.com>
Date: Fri, 15 Jul 2022 10:43:36 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220715064650.84648-1-jedrzej.jagielski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220715064650.84648-1-jedrzej.jagielski@intel.com>
X-ClientProxiedBy: BYAPR04CA0011.namprd04.prod.outlook.com
 (2603:10b6:a03:40::24) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: df62ce99-49c8-4eb8-5fad-08da66898e29
X-MS-TrafficTypeDiagnostic: DS7PR11MB6247:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 84yOgTL7FrzQQ73uw29T90FWg0FLW/9B5JBoZkOcHkA9PB9ueXQkmBRV63QOtp9MVm16gRsPaUrBm7iXpbXEelHEyyVyHB87pr4HWg+q7ey2H7CVa/e2kyIoVGrKeCHUYZFVHR433wwM6F6EM4KieMWm0AVlF9MoTOPQlDNmfhjwSxJqP9oUUjJxHP52+mBCszGKzUMJcEsRZ/kJ0zV8PXynYloOvYTwY1AQDjMUlU8hafJP7k4WWjlCp6V7ls+UG3hW3Jiy7mMCtp7J8h72u+ulM/IQnOuhtajnzMykXUoDLJzcKRFLeVtFUdXmFJ37FXf7EXfafAlitHQHTt/FJylDzDbobXQNa6O/iIOe+pilWBvf2FZCIcKbCI4zH+GOaxDhF4FvLgnKBsrnHnAjmV68/KchU0z7+fC4nS4iQn/lCidXeFAHgKPracrfePMYZihmu0X1wSSYcSzcEen6vlvDMsVkQ+O8XUxOi5Go9QsfMunbBhHeyiVg6AgKnBFMRV4B18vRNBsqm6G2ejeyAQmju/3Q3kYoSQi+lUijSY9X0kLl8E2JUWU2cGjLfDM2uVm27wRGtEfBM0cO9Bv87/hB28S7wJPtiGmH8JA6XN6XnPkrbp+AQSlniv9cmVGD87qfgtsXCrIj9o0PyzA+BelmEp/I7pn5Z6po1DkrcFoVG0GGIJSz748NmyYj/fxSQ/9wV8xwTjkNVYxUsWkQM9Kqxk1HdjAeVeygpTXRm5eWGTrdMFDCRQrfWMXEZ7MIW9n4y2Ynarbn4eA/muquFQ6fJOaUCkyze1/rAaMafnN0EHuNKMywdliLoDxur8KDPLog3zPf+kuNQAyLB9NyEWg2qmsLSYm6OrF7R/Frko4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(39860400002)(396003)(346002)(376002)(136003)(38100700002)(66946007)(8676002)(86362001)(4326008)(83380400001)(31696002)(8936002)(316002)(66556008)(6506007)(82960400001)(66476007)(53546011)(26005)(6486002)(6512007)(31686004)(2906002)(36756003)(107886003)(6666004)(41300700001)(186003)(2616005)(478600001)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHdBalZVVmZIUTJic3lGaEsxNjFvTTB5dTVWNi9laVpRSVlTaS85anlkUFVY?=
 =?utf-8?B?NDhMSnJ0cktMTXBSZXFxYkR4UitHN3FEc3NOTTgrVjNGUm9sUjZVcDRTUDVp?=
 =?utf-8?B?d0tjZ1cyeXBJclBIbGNnb1MrSU9rVzNiZW5lT3lkKzNZNWwrb0tCQ2JQeXFp?=
 =?utf-8?B?aWxSdjZNSkYzc0hZWURjYTg5emN4UWdVNEwrVTRBeFZUWk81TnIvUEpTTDVO?=
 =?utf-8?B?Qm44YmlJZVpScEFOK01oUlFYdG1qOTkycXhlaVpxRHRERnl5c2o2MjlUZ29m?=
 =?utf-8?B?N21idlRLNVA4d0VQTENkOVVqQytkblA3emhGdlpMamM4NXcwSEFKbEJraGVS?=
 =?utf-8?B?eCs1dWZVMTVpaG5OaXdwNDZxbUlNekJoWEk1aGhrS3p2ZlArM1dkamVPL1VT?=
 =?utf-8?B?dzZMSHRjN3BDTkFOcmJBYWtrWDI1OWdKOWR5cGRqQnVHYUh6VnY0dytKcVYv?=
 =?utf-8?B?VFV3VUM5RlkzdU5WTjZ1NisvT2p0YTMwbkRZbkhlQjdlZXVickRlQTcwZlc1?=
 =?utf-8?B?N1hCYThWeTE1ZXRmWFRwU2E1V3lYM0E0bzlneGpOcWxCMXVabFYyaXpJRVpQ?=
 =?utf-8?B?b09WSUtPRkpZZWdCT3pNQ3Q4ZldHbXR5emVjajQ0MjRSWWhWUmJnbmd2S3RZ?=
 =?utf-8?B?Mk1EQWlheUthR0ZaeERwV1BvWDhUbFNtaEpSV1IrOXptNTJGbzNVdEZvaWJr?=
 =?utf-8?B?SzBWTDRNU1BZYzdrMkJaaGxtazVxU3pFbkRyb0F1RFdjakxjVFR4YUtIRDZR?=
 =?utf-8?B?M1lEOUE5eEUrMjZEQnA5Q29HZDVnWDhTcEpCR0VWaE5Ea1hPc3k5S1o3eU1t?=
 =?utf-8?B?dURzdFZvdEJSQ2dCTVVSelBpMXZLQWQvV3ZmL3pTZG1Pa2ZnZVQwaXh4bVRj?=
 =?utf-8?B?b2M3czF2NnZYL0NzcndkZEJkekdXS2pJYTZVT1J5aTMwWTVHaTA5SjQ0Y25r?=
 =?utf-8?B?cmd2a0twamttL0JIWHFYOE5jLzIxUVNjaEN6WDlqSXlVRWZYWWdnaUJtNk1s?=
 =?utf-8?B?QW5ZK2dhQytkeVhRYkh0eldDQkR1aDlVaDNpRGJIUVRTVE91elVseVdDZFFr?=
 =?utf-8?B?RVMyR1RQREhHYzYremlLRzljRk1CWC9FN2xwUGZiaTBnL3MrM3M2azl3TlFR?=
 =?utf-8?B?U2tqMGx0eU9oOEJ4S1I1NUpNSmFNc09ZZEdIMElITjdCN2U2Z09uM3g1VXAz?=
 =?utf-8?B?WitjcDU3ZlFOdDB3bEN0aDVVa0Y3YnJ3THVyZGEwMHFqR2ZVQ1RNZkZJZUJ3?=
 =?utf-8?B?NTR0VitnRlc4dWdtb2I3YmxHOHpLS294a1UwQ1B0NjNHcFF1ZFV0UDNzc2Q2?=
 =?utf-8?B?Z2R3OEV4NjJUbDZuV01QVW1jeCs3M0hSRTh2SW1YOUwzQWsxd21OaUtPTGwz?=
 =?utf-8?B?SlFPRXF3YmtnNFVWRTZGQXdUdmErSVU3ZThyOGJwNDBack5VNVVRM3ZIb0JJ?=
 =?utf-8?B?YnlhWllnVkY5OW9YQUhmQ1ZJQmw2M0g4NHdVd1B3NUgzN2x5WGFpU2JlTDRU?=
 =?utf-8?B?SlkvTTNNK2E2TUdtbWVmWmF4NVE2WmV6SUxURzlZYTJUYm02YnJ1bzNZem1Y?=
 =?utf-8?B?ZVlXczNwZ0lsN1N5cHJTUjI3b2t2T3QyNldwM0hXdGVIMzhHWlZiUXBVUW8z?=
 =?utf-8?B?ZlBuT290Z2pXc0U1aDY3Y1hOS3pIK3ZadGN0cTlQcmg1MzRLL0hNSU9RQlZM?=
 =?utf-8?B?THVJZklvZnNkSUg2MHlaZHhGMnVlNEZXQ2NLNytJQzlVQjBRU2pjcVJ0aVEw?=
 =?utf-8?B?T1E3aHVpZWM5c3lCVVAwUmF2QjJveVhOb25JWitZL3F4VURjY1E1TW1GSzc0?=
 =?utf-8?B?djB5ME93ZXBKZzVqTjlUUDJpaWJKbnFsdCtUdGpPNWJzYUpJOFVIRDB4U0dZ?=
 =?utf-8?B?eUFiRjgram01bjU0enJSR05RS04rNVNZTmxzWlRvVjd2MzZibWJnbFFUNnhD?=
 =?utf-8?B?aS9uamVVV2hMYlRLd0dla3I2NWtqeGZsOVFpYnhmejlCTFVGSmJvY2J0REJl?=
 =?utf-8?B?d2lrY3p3QkdCRkMvMU1UZGRkVW9wVHJTNnpOWHQwalhHTExKeFR3ZG1LWDhS?=
 =?utf-8?B?MVBuS0FuM2tEbXkwaVMwcXZZNmJMZUN0aGY3QURnYWlocEhVOW9JV1VSUU5V?=
 =?utf-8?B?Uk9JME16bE8xUWFxQ2FMeW5oTmpZVWhxc1o5SUtNQ0NwY01rb2pnZXZwZHhV?=
 =?utf-8?B?cnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: df62ce99-49c8-4eb8-5fad-08da66898e29
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2022 17:43:40.9537 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wfcJ+QuYtvLCC0r9DEkSJwX19knkIz0LcupeQrRmev26J5F+odFxEP8MMoHzSROacDPGOPeEpnoQJXj234S4pwYYZ5WBWf5/ArzJvkABPLc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6247
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657907029; x=1689443029;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kGc56VlbJJ276bDh0FM1bBw2rEYxNhqyl3oxJHUXRp8=;
 b=GuwGOqweKBoZzkrNbKKLvZTsu4NTEWjaoZ+XWKTu7e/7qQrXuV/qH6ir
 LYdDVkrb9C3J/s41P7St0+k8tm7faYMIAbujivEW8x7qu2VSUJryHKggt
 U+KMegHM0kVxSazIpiSFReM6cCva2xXBdFnINcXVW6tpkvGYxFz8S0uju
 BYRWwZq9ekQ0ay+rQBOO8zcx7mq6eiTe+TCR3jtRTrunuaeDe2h3YS0GB
 lBUXIm+olbPqPEXb+WElLOTSsBGk+skBR7KoOOnaU+IP/BFdZI9GhyFl+
 hktlfODowpGDZcvCc2tSJ9sjGIPZqzUFLRGTjdW+Xn6vJw/Ekf8XQ/6Vx
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GuwGOqwe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] ice: Fix VSIs unable to
 share unicast MAC
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/14/2022 11:46 PM, Jedrzej Jagielski wrote:
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> The driver currently does not allow two VSIs in the same PF domain
> to have the same unicast MAC address. This is incorrect in the sense
> that a policy decision is being made in the driver when it must be
> left to the user. This approach was causing issues when rebooting
> the system with VFs spawned not being able to change their MAC addresses.
> Such errors were present in dmesg:
> 
> [ 7921.068237] ice 0000:b6:00.2 ens2f2: Unicast MAC 6a:0d:e4:70:ca:d1 already
> exists on this PF. Preventing setting VF 7 unicast MAC address to 6a:0d:e4:70:ca:d1
> 
> Fix that by removing this restriction. Doing this also allows
> use to remove some additional code that's checking if a unicast MAC
> filter already exists.
> 
> Remove ucast_shared and all the related stuff as it is no longer needed.
> 
> Fixes: 47ebc7b02485 ("ice: Check if unicast MAC exists before setting VF MAC")
> Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v2: amend the commit msg
> v3: removed ucast_shared
> ---

<snip>

> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
> index fc231446c641..4fd084a595da 100644
> --- a/drivers/net/ethernet/intel/ice/ice_switch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
> @@ -3424,13 +3424,7 @@ bool ice_vlan_fltr_exist(struct ice_hw *hw, u16 vlan_id, u16 vsi_handle)
>    * ice_add_mac - Add a MAC address based filter rule
>    * @hw: pointer to the hardware structure
>    * @m_list: list of MAC addresses and forwarding information
> - *
> - * IMPORTANT: When the ucast_shared flag is set to false and m_list has
> - * multiple unicast addresses, the function assumes that all the
> - * addresses are unique in a given add_mac call. It doesn't
> - * check for duplicates in this case, removing duplicates from a given
> - * list should be taken care of in the caller of this function.
> - */
> +  */
>   int ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
>   {
>   	struct ice_sw_rule_lkup_rx_tx *s_rule, *r_iter;
> @@ -3467,7 +3461,7 @@ int ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
>   		if (m_list_itr->fltr_info.lkup_type != ICE_SW_LKUP_MAC ||
>   		    is_zero_ether_addr(add))
>   			return -EINVAL;
> -		if (is_unicast_ether_addr(add) && !hw->ucast_shared) {
> +		if (is_unicast_ether_addr(add)) {

Have you tested these changes? Based on v2, I don't think this is correct.
>   			/* Don't overwrite the unicast address */
>   			mutex_lock(rule_lock);
>   			if (ice_find_rule_entry(hw, ICE_SW_LKUP_MAC,
> @@ -3478,7 +3472,7 @@ int ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
>   			mutex_unlock(rule_lock);
>   			num_unicast++;
>   		} else if (is_multicast_ether_addr(add) ||
> -			   (is_unicast_ether_addr(add) && hw->ucast_shared)) {
> +			   (is_unicast_ether_addr(add))) {

is_multicast_ether_addr(add) || is_unicast_ether_addr(add) is always 
going to be true. This check can be removed and code unindented.

>   			m_list_itr->status =
>   				ice_add_rule_internal(hw, ICE_SW_LKUP_MAC,
>   						      m_list_itr);
> @@ -4000,7 +3994,7 @@ int ice_remove_mac(struct ice_hw *hw, struct list_head *m_list)
>   
>   		list_itr->fltr_info.fwd_id.hw_vsi_id =
>   					ice_get_hw_vsi_num(hw, vsi_handle);
> -		if (is_unicast_ether_addr(add) && !hw->ucast_shared) {
> +		if (is_unicast_ether_addr(add)) {

Same as first comment, I don't think this is correct.

>   			/* Don't remove the unicast address that belongs to
>   			 * another VSI on the switch, since it is not being
>   			 * shared...
> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
> index f2a518a1fd94..2ca24df10433 100644
> --- a/drivers/net/ethernet/intel/ice/ice_type.h
> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> @@ -889,8 +889,6 @@ struct ice_hw {
>   	/* INTRL granularity in 1 us */
>   	u8 intrl_gran;
>   
> -	u8 ucast_shared;	/* true if VSIs can share unicast addr */
> -
>   #define ICE_PHY_PER_NAC		1
>   #define ICE_MAX_QUAD		2
>   #define ICE_NUM_QUAD_TYPE	2
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
