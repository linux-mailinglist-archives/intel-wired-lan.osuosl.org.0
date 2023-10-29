Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A327DAC77
	for <lists+intel-wired-lan@lfdr.de>; Sun, 29 Oct 2023 13:42:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 41B2B705A5;
	Sun, 29 Oct 2023 12:42:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 41B2B705A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698583347;
	bh=ekj+3dgl8SVPQH8Mj6AC2zTv9Ag33+83EAgGPV7h1NE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=c9/Ut40WsHCeAXjR+/RcWqn/KMyo/RZFZkynJZvlBS4rK8JDxsmieMm243QBZoaVl
	 fAzfYA5ihS0btyce0y2yLQ7UgMwZhlq46rQkBK+jUuhsGspHAQG+H7311sDaGMNG3b
	 yI0MhSFtRfWFH/Os4rqYRAQpvhHhnMAZ7pjOmBbWeQ1+TVbUVk/G8RbZ7v+2ijBAyH
	 PYOj3iIvlsOeJt5T+2sqYoFgKnK+9JLCDUB41/I5Nt2pfMaDa6MrLULo7AS8sitHVn
	 T/oLulNhZwH9eDTosNea+WpWuXC40LTXvlmwLvJrjsggqQolBBf6gdY1mOaqPzuWTX
	 m7Kb/sQEDtdjg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TY1aB90lNA0d; Sun, 29 Oct 2023 12:42:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2575D70502;
	Sun, 29 Oct 2023 12:42:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2575D70502
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 036C41BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Oct 2023 12:42:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C6C31432D1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Oct 2023 12:42:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C6C31432D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g75311apEsqh for <intel-wired-lan@lists.osuosl.org>;
 Sun, 29 Oct 2023 12:42:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2981B42EE3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Oct 2023 12:42:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2981B42EE3
X-IronPort-AV: E=McAfee;i="6600,9927,10877"; a="474187560"
X-IronPort-AV: E=Sophos;i="6.03,261,1694761200"; d="scan'208";a="474187560"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2023 05:42:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10877"; a="883609562"
X-IronPort-AV: E=Sophos;i="6.03,261,1694761200"; d="scan'208";a="883609562"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2023 05:42:17 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sun, 29 Oct 2023 05:42:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Sun, 29 Oct 2023 05:42:16 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Sun, 29 Oct 2023 05:42:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZnD4PC5YXctvTVNAgFly6KfWQRIkON8jOm6ICiuaMWax8fujJXunLqS6nZ1ZOxlE9HkBnIH8/F+vhGvIh/bJOeiqM6JVY0RqI0lDPJS41wy+lOryiK0LWJoXcbPvFQUCK7Q399HaOZ3SczM6CU8Xxau6IPkB96fmQTjMWP6X8icoaCr3DsEOy9L3OVPf01pHeHzGeaeko/Av4nSYz01zjkG2YwDt6o3Aaclvx0RyEwpuZZJWqOzBfY8vPIYbrG4UHb5xxn85YrFtkFi7Qai8373pHbP+aKYwzbwK2MYRdiT2IpfOAXHKdJAtYZeIHPqf36ZHWn9OsSJabBj69Yr3Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wr/MSR3jfEUbO99al8KClm7/2dUFDuUwgy7KL9kackk=;
 b=XlQmUNV2zhuopS3sVkflqvMXtSCoOFLKMOQE+UnlHkMMeCuzpCj00X7wKcFq/1E8VzMX60RlLULn3iR4c4fIhbWzv3ule2B2L4Dww4heP5AZmJFn5WfoCD7Dsp2cEtlN82vxF/NsyMtbaBVXlu+Lys+f0MwdckyV6M2YuOV9V8NUxUOlcCCCLA6IPYDh4Z+caYj7eUDAEDDbwahoVbC2lYtAj6xktj1XuZC1ivgYqMNYw+/8qjQwAJxMdYOeyo58dknnPHojcgFvQjp0+ripI77Gi7tE9FhA2bFqN7R9DGbcyc/oQbs33tIa7jMdI42WJy1SxfldF6MY3H05kcfqVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by DS0PR11MB6349.namprd11.prod.outlook.com (2603:10b6:8:ce::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.26; Sun, 29 Oct
 2023 12:42:11 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8%7]) with mapi id 15.20.6933.024; Sun, 29 Oct 2023
 12:42:10 +0000
Message-ID: <e644840d-7f3d-4e3c-9e0f-6d958ec865e0@intel.com>
Date: Sun, 29 Oct 2023 06:42:06 -0600
User-Agent: Mozilla Thunderbird
To: Gal Pressman <gal@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 "Alexander H Duyck" <alexander.duyck@gmail.com>
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <8d1b1494cfd733530be887806385cde70e077ed1.camel@gmail.com>
 <26812a57-bdd8-4a39-8dd2-b0ebcfd1073e@intel.com>
 <CAKgT0Ud7JjUiE32jJbMbBGVexrndSCepG54PcGYWHJ+OC9pOtQ@mail.gmail.com>
 <14feb89d-7b4a-40c5-8983-5ef331953224@intel.com>
 <CAKgT0UfcT5cEDRBzCxU9UrQzbBEgFt89vJZjz8Tow=yAfEYERw@mail.gmail.com>
 <20231016163059.23799429@kernel.org>
 <CAKgT0Udyvmxap_F+yFJZiY44sKi+_zOjUjbVYO=TqeW4p0hxrA@mail.gmail.com>
 <20231017131727.78e96449@kernel.org>
 <CAKgT0Ud4PX1Y6GO9rW+Nvr_y862Cbv3Fpn+YX4wFHEos9rugJA@mail.gmail.com>
 <20231017173448.3f1c35aa@kernel.org>
 <CAKgT0Udz+YdkmtO2Gbhr7CccHtBbTpKich4er3qQXY-b2inUoA@mail.gmail.com>
 <20231018165020.55cc4a79@kernel.org>
 <45c6ab9f-50f6-4e9e-a035-060a4491bded@intel.com>
 <20231020153316.1c152c80@kernel.org>
 <c2c0dbe8-eee5-4e87-a115-7424ba06d21b@intel.com>
 <20231020164917.69d5cd44@kernel.org>
 <f6ab0dc1-b5d5-4fff-9ee2-69d21388d4ca@intel.com>
 <89e63967-46c4-49fe-87bc-331c7c2f6aab@nvidia.com>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <89e63967-46c4-49fe-87bc-331c7c2f6aab@nvidia.com>
X-ClientProxiedBy: FR4P281CA0277.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e6::9) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|DS0PR11MB6349:EE_
X-MS-Office365-Filtering-Correlation-Id: eb3ba750-9beb-463e-0eee-08dbd87c7823
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FuLgutlobh5KYyQU9yBWaFpQJX+XSli2/ARMnvxBNsCsUO8BhX1BIAkP5XkcpSpTtTHVZWsuOEoejbVeYGzWq9OOdP+KlE2iwNICVSeC2NXBPBiDwpwiu9UQPlHPoE9St5hx+Hihg6LzHjolvO5wqP39PeauP+dTZB0r8CKsW3FxYtGSNGEQxLQSDTpF2zf6uaNFxxcAUceu11+YN0Oi06er+t0NBDOHRL4WegeiEIGJ3h7d4t0fv8cAxZpEobfoNkOufLix+juesIMUY7zVzr0Komm4eAfyArUh+MqV41IKz2ZAXW9EAtcbfy9nlfh2aL1H2l4vZKQvN5CnSU2eR/LOCfMtbMOrvf4jJy3FwWiczJyQZ+9R6n9NAVQzloUy7wGHxe81Q6xruwdWPR5xSTXflIWnM5dK/Ym+v8jtJHfPn5he6X55rbxqOiAQegb9ltY47bRaYNVAXM78UkZ9Jn6fvy1nLTvWwmhYOm2FHMUgsb+/44zXsXjuDagFn4hATjQOr50nT/+3e7EgvGP72eKhH+Rw1d0DnZiaiEWBREVTOBUCxqmpaE0Sl28y23+PC7VVd80dHu9wz53LWmsyS/aqRYmq4s+ibC3aPLDLixE3dv9iRqbNcwHqlfOLRaflLbw2Vf37VZWaGJkjahp2CA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(136003)(346002)(376002)(39860400002)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(66476007)(66556008)(316002)(54906003)(41300700001)(82960400001)(8676002)(8936002)(4001150100001)(31696002)(86362001)(6486002)(38100700002)(966005)(110136005)(2906002)(4326008)(478600001)(66946007)(31686004)(83380400001)(7416002)(5660300002)(36756003)(26005)(2616005)(44832011)(6512007)(6666004)(6506007)(53546011)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cmVYSm9mV1p4NmNtU1gzTjZGYWJmU0xuNnd6bks2cHdKSHdiYXc0aCt4S1Vl?=
 =?utf-8?B?WXQ4cVN0QjM3WEo4K0VKekRSRlZmK3g5ejl6UWVQZkczNzRrMmF3NU45WldT?=
 =?utf-8?B?aDJoeXh5dmhsSkRZK0hBN1lkNW1pTXpWZ3Rxb1FEc3dQcGRTVVJWWmZEME1h?=
 =?utf-8?B?WmF1ZFFVRTlWMzhhNXZtOFdxa0Y5NitXS3A1aStybXp0L1hNMTFJaUlrVFQx?=
 =?utf-8?B?MXNQdUNWQjZsQy8rT25QVzdrYzJZZGp3cFBTRHhKbnVwR0VRQk43T3hjKzlG?=
 =?utf-8?B?TlM1VFRIbjY3NzZ0QjZ1K1hEUWtFUDdDVnV4YTNKVWx5Qk90WjIrZk1UekNw?=
 =?utf-8?B?eFVhUXZMWUN4cTNmdERmZWtkMzFhVDZsUHd3VEljc3hWa29HZHFFSjB5STM4?=
 =?utf-8?B?dVd3RWd1aW5iV1kxUVZrYzNobXV2cDlDTEJwNU90WlRMdzBwMGtDWjJvKzVq?=
 =?utf-8?B?TjNSTXFyeUZXckFOSVhLb1JyWDB6UGJKTFZNVnhZY0NsN1hTVW5RaVV3K1FJ?=
 =?utf-8?B?Z3BXbFd3OVo3WWkyZ0tlU3o1VTBlZG9IV2RValQvM1J0dGMwOWpTKzN4bGl4?=
 =?utf-8?B?MkhVVnlWWExMRjgybTVFRzZqWE9jSTRUWitLQWNBUU0xTWJvZlZpOGtMTGFK?=
 =?utf-8?B?NDNIdnBYcmhlc1hTR2RzOXFQNTZKYU5Ud3FHSDdoUUJrT0JXWWJYdlZQMDJk?=
 =?utf-8?B?UXkvclJybXgrbWlFQ2pYakswZS9NSXJyZ0kzd1JRQnVPUnd6b2pzLzh6T2N3?=
 =?utf-8?B?UTVmcXFocytUL1c1YkNMZFh6RC9FRnRNaGlZWkpVbGd2QWR3RjM4ZzV1ZW1V?=
 =?utf-8?B?Y3lXWjZIMk5La2V2TU9NSENIWSsyay9JTGNJcG1WVHpoRUNqNmVNdHpaK010?=
 =?utf-8?B?RXBoV3h2ZHkySHdKR3FFK1pmQWxNcmhCdzRCd0sxcnlDMXBiSGdKeWsxRkdo?=
 =?utf-8?B?MG44N3lCZmxlYTNiRVFvdzFmcVl0M0JtdHVseGFuZnVBRUYxS0g1VFBMTzRm?=
 =?utf-8?B?NHcwRVJuZjZCbmJVd21SRGdzclJyTEVxdDJ1dTEyc3JhZlg5VTUreHdEVjJ4?=
 =?utf-8?B?bFJKcmlsZWdCdGJhbTVFWGF0b3lPcVRITGUrYjdHa1hVZmxoakJwa3pKRGlz?=
 =?utf-8?B?NVpnOGdCdXVYY2JMb25JSGJVWVhvb0V6UFZsZDEyTG0zbzZKUG9hYTgydUMz?=
 =?utf-8?B?Z05ENk5XT0twclo4MHZHRUk5bDVWNHVvelZXNm8yR0xGWmpRa28zM3B3U0th?=
 =?utf-8?B?NDU0Wm52ZS8rU0E5RHg5MS9oYnN3WWs2c2w3amw2ODJ0aVd3SHBWMXJuTk9I?=
 =?utf-8?B?a2d6U2lwc0YrNnlTdWhrbzNnTjBJY2JFRWtOeUZESVFoUkhyOE9lWG4wWW56?=
 =?utf-8?B?U3ZqMXVYYmsrUDJ0TVF3Qll0NXd0Sm5odnFBWUVRWm9hYXFVd2Z5Tm9OK3lq?=
 =?utf-8?B?VzgwbUVJZG1nNzFJUlhpaDVsZXIxNWRmbFpGc21IMk55M0FJdEdmdXA4ZGpV?=
 =?utf-8?B?WFI5YkVlMDdCQnkyZkFTQThXZ3FwSmVpQUNFU042aDlpVUFaRGNXZkJrd3dB?=
 =?utf-8?B?b3hpVE4zWit2R1VtTE9Ra3RJSzM5SWpvbmxROFZPbDhrcG1kbGQwaWxBM1dO?=
 =?utf-8?B?OStnV1VGMDhwcTFWNzNHMjdkZ01waVA0cjBvVkdhYmsxMTBnZnhJS0l0czdT?=
 =?utf-8?B?UG1GL0NjZmtPU3N2NVlYWjYzNkpOMHlxSDMvMnVOM1ZtbzhheWF4Sk5jeXZ5?=
 =?utf-8?B?Rlg0dzBNN24xaUhCNHBIWDRxdURib1A3MEgzdU83YjhNZnd4LzJKUGgxd0dn?=
 =?utf-8?B?ZjFGREMveTVnMkRHUWZhMzRSNTQ2VWc0MmM5Nk9zUEc3LzgrMEhWQ2lmZHJV?=
 =?utf-8?B?UnJkaXdsbjlBZHhyNUhkdWxwMnRuSG5WYkdnYTR6TmkrTjZlOXFwaDlud0Jp?=
 =?utf-8?B?Umh6MkVISlh1UTFsQUE1TlhsdTFIQk1XamgwU0VkRlM4ZGF2TjBJWlY5RUNs?=
 =?utf-8?B?YTJFVlZWelJJc01BcFRlTzBmdHlDT0gvckhwUEk5RFVVRzFwRGJFb003eVUw?=
 =?utf-8?B?OUVXV3ZReCt5TjY5VXM4N1FPa0o3b1lJSk9vOUV6VDlhZmpkdnI4VWUvWFJM?=
 =?utf-8?Q?j2Ms7BDOgdj7msHO+Xh17VBaF?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eb3ba750-9beb-463e-0eee-08dbd87c7823
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2023 12:42:10.8327 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JcHzCThrslcBUxe22WXW59r21u4d3z5EBFE/f2cUI/wi9d4DgRYYEjk82NSrW2tKG6utVXVr+YslCuQcO9U4zw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6349
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698583339; x=1730119339;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=y/C64PMBVO7QmiO3gjeBlEFUSozlw8FOYayWJWo2Ct8=;
 b=FbNMO9V8kpU0ttYnc7LWHnWUgoYDgXEdc6DEptvNv3AvlYu3hRzeEId8
 X1/J5JI+EE8Y56tiSxwIkZHmJV10yg7fX/lNatJYTcEwhtqvWSuytTT6V
 lSKzQJfnBLuCXAjFyGfCtrrlaFKtnaIgNiu1+ok/dnt8IB+xC79zxFjSg
 0tjkvK6AInHpHRyAfr5tTyaunCaTV83HjuhUiEjJpub6U3bsJm98Ce1D0
 caAXXW9AvptZGmp4YlmnptYZi+IzkJ4uvU72Pabex3rmBkZosFteBeOap
 0L/iFch/NphFQN9wgnbhd2ZfXP3kRhBFsMwLFkoStr0cAX1EJHK6d9kbn
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FbNMO9V8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/6] net: ethtool: allow
 symmetric-xor RSS hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 vladimir.oltean@nxp.com, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2023-10-29 06:25, Gal Pressman wrote:
> On 21/10/2023 3:00, Ahmed Zaki wrote:
>>
>>
>> On 2023-10-20 17:49, Jakub Kicinski wrote:
>>> On Fri, 20 Oct 2023 17:14:11 -0600 Ahmed Zaki wrote:
>>>> I replied to that here:
>>>>
>>>> https://lore.kernel.org/all/afb4a06f-cfba-47ba-adb3-09bea7cb5f00@intel.com/
>>>>
>>>> I am kind of confused now so please bear with me. ethtool either sends
>>>> "ethtool_rxfh" or "ethtool_rxnfc". AFAIK "ethtool_rxfh" is the interface
>>>> for "ethtool -X" which is used to set the RSS algorithm. But we kind of
>>>> agreed to go with "ethtool -U|-N" for symmetric-xor, and that uses
>>>> "ethtool_rxnfc" (as implemented in this series).
>>>
>>> I have no strong preference. Sounds like Alex prefers to keep it closer
>>> to algo, which is "ethtool_rxfh".
>>>
>>>> Do you mean use "ethtool_rxfh" instead of "ethtool_rxnfc"? how would
>>>> that work on the ethtool user interface?
>>>
>>> I don't know what you're asking of us. If you find the code to confusing
>>> maybe someone at Intel can help you :|
>>
>> The code is straightforward. I am confused by the requirements: don't
>> add a new algorithm but use "ethtool_rxfh".
>>
>> I'll see if I can get more help, may be I am missing something.
>>
> 
> What was the decision here?
> Is this going to be exposed through ethtool -N or -X?

I am working on a new version that uses "ethtool_rxfh" to set the 
symmetric-xor. The user will set per-device via:

ethtool -X eth0 hfunc toeplitz symmetric-xor

then specify the per-flow type RSS fields as usual:

ethtool -N|-U eth0 rx-flow-hash <flow_type> s|d|f|n

The downside is that all flow-types will have to be either symmetric or 
asymmetric.

I should be able to send this early in the next cycle.



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
