Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CEB787977
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 22:40:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4613241C3B;
	Thu, 24 Aug 2023 20:40:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4613241C3B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692909637;
	bh=8jGVwH9lxr0nrzgK+VessKKW/D9qZUqYktm/UNcOsxQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UG28IFfufWeXSifi9fKdsj7XcJ4ekHAW3rY+wESe8oezMxu0l6dw4nBn0ELcftMBQ
	 dFKBn3zgpDvRaEi2Jh4R7VxJT/jreX+b+0AgLVAjd0TWKpKzHeu/zkdu9S224F4hCN
	 id2JQC9uaf0Ep/7TfC1XKrYKSSV0o8DLaAO8rTfUCpnbganDpox9nLZqCMZyPl2Utt
	 eBbUJ9ftJSzlW3yszefp1ymXE2BdhWv5Zq/mvGw/oSLvbFSkQbudU7vyPG7gkw3bdS
	 T5uVrA0dR+CtIGoQxboiwEqoy5TlU1aa6rpWClq+jXEV4/95gbzbuvLDtIR7jUuemT
	 ux/BkDwrkO3ig==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MzblyxWiH1ag; Thu, 24 Aug 2023 20:40:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C606341C3A;
	Thu, 24 Aug 2023 20:40:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C606341C3A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6F4891BF27E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 20:40:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 46D8A405ED
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 20:40:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 46D8A405ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q-FLk4lPIu4u for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 20:40:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7EE754058D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 20:40:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7EE754058D
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="440903674"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="440903674"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 13:40:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="983851240"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="983851240"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 24 Aug 2023 13:40:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 13:40:27 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 13:40:27 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 13:40:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qk9XTkMCwybFFFTStUBkbkLZ4FfIRpOtknDLr0PeeB61Uv1hr2WF5N2gJpQ8ZKQVT0OdIYoC3NyJbMGPjAceL+U+/78RN5ERbyiBMVTdpuooHfvPaxsh5ZZbswTXqtUf9DwCnFF01AzoK1EddJzSpPbwm0Zu5qS68xWEU5pWBPshlOf19Bpkfgo0r4l5gMB0PUhoHNg0QrtdHBCuuWq9hVc8D4Qj8K4VVDywmArnIm8V/8D8uqIhxjWDfg0pLW+yZ0VlU+apR3engABQCpTorTpC/w5vhYCBg0OdxyLjPNa4inOSbY5mzeN6IhhF/wfIryyGSVyHrL7CsL8ssykrGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LPeYrrpjbMs2q+3KU+kMmxvJMy9Fm0mAhbJXTzdel58=;
 b=U9Ja262jbNo4F1Alpbrz3zoXkM0Az46Pm5pZVus+M6UVLsxElb3NxhP9V51IHmGiAdvu7fbJFe3kBh5wdhOE5lJ1yGcmk/M4L3lxMeDM4ctQHh0CSm83MuUy8tMxRuDgGV6GBJ9YrKd3Gf/6Io06BSlOXJvwmkVK9tzf1G+M5WVNayaYypfgD8JOQZ3TpkMZq2/EfKPMEFNh/Z2hzWGzyZsAZvS6NXLm4NoFxkrY5Lh3R4FNnM+t42xLWd9Y4oHU+HuZ9dJRjYrRDYsL0vPCX1JSNhSXVtVnBmDRyNX86GxkxTnDLBnyvX/uH0M1ETiWkQ/3eOs2d9J1mvhU8ycGuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SA2PR11MB5033.namprd11.prod.outlook.com (2603:10b6:806:115::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 20:40:19 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3%3]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 20:40:19 +0000
Message-ID: <2181fe8c-44d3-acdd-b474-0faf7a78d69a@intel.com>
Date: Thu, 24 Aug 2023 13:40:14 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230823035755.777005-1-michal.swiatkowski@linux.intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230823035755.777005-1-michal.swiatkowski@linux.intel.com>
X-ClientProxiedBy: MW4PR03CA0135.namprd03.prod.outlook.com
 (2603:10b6:303:8c::20) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SA2PR11MB5033:EE_
X-MS-Office365-Filtering-Correlation-Id: 70e81a55-a42e-4bd8-af25-08dba4e254b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: T8lehGa44z//dWfG2hx3wWfgahYahW9V1zKG9b0YGMvZaGp/tlBjHg0rXMWGSKiYsQoDwzLmhAv7Bshcm1SjE21VqaVXQ9h4fmqYUZ3hhptJWPqFvVaumEfCwRECOFUkVcKWyyWKRwD5d4v7In7fRxOHrp1u3HGf5+3NmgiQdG75x4Ic/4qHyO6CridWrmbgAA/aRQAQ0vZ6KdnIOX4G2JYjRy0y3ug1n9PBFXM6taqSrUxolocLlQ7D4IPvq2PV1WK/xW80OLVnbNqSJiW8GBE/h+RmFxxUyq6U26xQ3vtXWcexbA9dJW5b8pGe60bvS6i/GFvoh8krcJX9khSkF311orcYi5yLHbeYHFWbFdDNDxQNxJcB0Za6Vz07S3WAv1StgwnSgceB9PRxTW+tS4e9uGJtu+kKz/yvH5Xbcuf2GWE342w37jlKEwUAedGP9d28q51osuC4YuOdJ+YZ5lWenqhe39PEt7K37USxgNeRCTi2gVg3bxEv8VFPpKLsDyvSHcaS4OMdwg2fQOBJ3QvVXtwya+IIi6xUJqNMSwizP4naJI9L279pClHbxg5kIkCJr9G3nTIza8rJkmGwi6Pr1pKALl6l506WSFPM3dJRc7mkoqUQV/ghyizj/t8fsubsUd+8BGAZwvegeReDfw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(396003)(366004)(376002)(346002)(451199024)(1800799009)(186009)(31686004)(31696002)(86362001)(38100700002)(82960400001)(36756003)(6506007)(6666004)(478600001)(6486002)(5660300002)(316002)(2906002)(4326008)(8676002)(8936002)(26005)(6512007)(53546011)(83380400001)(66946007)(66476007)(66556008)(41300700001)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V04rOHp4ZXlwSkFoRU1IUVk4R1ZxRW5hK1hPNWJJaWxGTmV2RG00T3l3VkZU?=
 =?utf-8?B?OHc4dVVBOU1GdW5ORjh3bmpmTWhFZFVqSG9XRzVIb1lVSTVIWDFyM1B0QTZL?=
 =?utf-8?B?YzlqV3NDazZoYlR0VU9WMTdNQTZZZDFVT2FSVUMxOExnYXVkK09ZZ3RhZTht?=
 =?utf-8?B?WjYrbU5qSmtEamZ4dUhYeFNKR3hpWlk5SkE4WGtqUklyalRuQVR3T0RkMElD?=
 =?utf-8?B?emg2bjRuelRUSUV5YWhna2FZTW5HQ2RtODZaeUxZWUJXRVFlTHVVUXRmVjBO?=
 =?utf-8?B?TU94QlZvMFQ1VWVPOEV4allJUXZYajNRZ21kU0JrcFFSdUErR2JJclA3czQw?=
 =?utf-8?B?cnNuRmlLVk1SVUFmRFJzU1NjUnNYVFh6cmJ6eWFCTzdIM1QvZEozVWVSbHRU?=
 =?utf-8?B?dlhLOThYdTkreTExWHduQnJrRXhUdVMveHBDZ3ovR3RQaE9NZ2RLajE0MVZs?=
 =?utf-8?B?TDljelRkbHEvUkR4VnVhOGF2YmdIWG5qdFN5WHhncW1oQnN5bEttWSswbTZZ?=
 =?utf-8?B?TkZRV2N3WnVCc2lVOXE5LzRWd0NKSGI0QktKdm13NjdkZC9JbTdLTFp3RVhu?=
 =?utf-8?B?Y2tjQ0hkU0RUQVB5U0haZ0tSZHlsdVRxMTg2VDRZd2s5UnBURkxYNUxhQVJ3?=
 =?utf-8?B?QWtxM2syLzRGWGdja1lreE1TbHZWZW9ZNXpQUnExTUVnNU1DRVZGMlRWeDRh?=
 =?utf-8?B?STdnWm5WMjRZcDA2cW5xZmNhSnZvL1JRZnI1bEJGV0xoWkE2TDVvSDRBNGN3?=
 =?utf-8?B?T3RGNDNmVEY1bVBkZm9pNGdHNnhoQVFWUE9XS1pqbnRFS2ZPU0lhZkFlMTJV?=
 =?utf-8?B?UDdNVVBzRTMwMHBBVnFCRkJCQkZydTVCaGtqK3ZwZWlSLzVFdDZoRnQ5UC9P?=
 =?utf-8?B?VzJjaldEb2t3bmNqSWIyQzVzT1I2ZU1qMzVQZTJIcHp3R0dnaXZ6NEZMaXEv?=
 =?utf-8?B?SzlJVkpKRlZlQmlQdWF4K21vRTdBWDdhelU1aVRRQmhwVkM5OVY1ekpPQ1k2?=
 =?utf-8?B?cWIveURHWEhzZU0yQmt2TThvOFY0bWNOdzdSUE5oRE1wVkNuZzBtREVLejhE?=
 =?utf-8?B?TmJrb1JIRitoVEhTcnQ4RHd4a09hUmRZY3lCSmMvblVYZy9BbldINGVCRzVI?=
 =?utf-8?B?anRxRU4wK0U4blhkajBNVm5jVFBUbGVBeXBrZ3pZYlU5UmxwVWlLSVowc3Ji?=
 =?utf-8?B?ZWZLN0RUUmhVZlZielZFZUtJOVdCRVAvRUZ0L0dxTFZGL0pXc3ZLZzBQZWJx?=
 =?utf-8?B?S3dNeCt4aHhaaC9qemhkWCtVV0JMZU1uQ2dLeWNZcllySjIyeGc3dnpIT3Jx?=
 =?utf-8?B?QlRWTlBOa0R5MDVDMEk3cmVRbmdRRjRjMENhNjN3NHA2clA1N3o1TVlJNkFM?=
 =?utf-8?B?UWU0Y3R3c1IrSWVoY1luRHlFaHNOb1p3dVlyYjhwYnpERUM3cEZXSVkrdjhx?=
 =?utf-8?B?aWVidGVOTUVENi9KUFlpOTM0Vk05TEkvdHNRUHl4Znp0Y3VCYTdxS0l6Wnhr?=
 =?utf-8?B?dmJOVHBLS1IwdVJYMkJuWGRqSVJPNmc4T0dYa0UzdEdIenl5c2NQNFNDMjgw?=
 =?utf-8?B?eUNWNHlBZFpSVFh0eUF6dENtNWZXaTM0UkFQNEtHb2ozK1VqaEUwZ3pwY2dq?=
 =?utf-8?B?c2lFSFhUMGNIOFlBa2FESEhHQ1pCODYzWmkyZ1hhMFIwRDhvZEdVZnpTUUVF?=
 =?utf-8?B?NEpFeFk2akM5STJ0R1U1b25DM2RTWnRSUGxwZzh3YU04YTRrY2JwLzJzTWRL?=
 =?utf-8?B?NURUY2p3VUlWb1dmOWNRSTJ5SUJqczUzS0UwNTQwSEtidkFTamFoci9UTU5K?=
 =?utf-8?B?cFBNZHhBdDVYM1J1N0JMTHZkMVRvOE5FeDVvbVlNKy9WS24weUdhaFUwTmRs?=
 =?utf-8?B?dFUzdU8xazBsaWFnVGtJeldZM1oyR1hxdXpUcmx0Wmo5ajFOd1Y4eTlwaGY5?=
 =?utf-8?B?Zm0yUHU3aUsxYmdBeExmdFF4TDVjMXNsQkJNWU5hOEhJVENrQ0JqZmkxTS8z?=
 =?utf-8?B?RzJWa093OUNkVks1aWptTGJtc0dhYVZwaW1RWHpmbWlwNEJNWk5YVVdjZGd3?=
 =?utf-8?B?S2s5M3ZTREk0bWhwNXEvQ25jTS9ZZEtxZWlyeUVabndYU0lQYTVvdXdVOWlO?=
 =?utf-8?B?dHhUZ0ZTUUNnRXZBaS81UytrY1hsWmFocGQvUVFIMmlhdC9sQ09NQmpxaUdP?=
 =?utf-8?B?Unc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 70e81a55-a42e-4bd8-af25-08dba4e254b2
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2023 20:40:19.6848 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NOLT7xmhXuimQ5tomVHfRGbHnfF6ib3CsntEmkytkHUcllanB5QdC1QJaT2TpVBmNV2dR87qo1emtB9vp/Ce+BB4VKMx9V7fHOvPtaCdnp4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5033
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692909630; x=1724445630;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HVcH3m6f/gvP/97y30QW9Rj/jgz8kgHW4hI5+fUW0vk=;
 b=cnMuj8XX58MIXLpvl168jxLjRwS9wWYbpu0D+I5+6TCEP75ehmXJmoXs
 AVesuEdukVZD1P7eYV30sd3vBfZzj+8a+mu0Q5DOg/e0pg9EuH1mYmqI0
 Lj/ValP9Q8F/f/NuGwIey51c45tPuhc+QXjU/4Nj1zH8P9fhD3/THsPI9
 7aN418vMaFCJzDaZvZNBYLTu8WTkVsIFijFh7OeIErp1O/x2MeFADmXd7
 wI7BeK9X4DVujcP6N7AXN5+nC2Ag/hrG2Ye3XdwHw/FNM+316mgCSz1gV
 sPBQZUfnybvEkidawXrEKfUZVJT8A7kkVeRT/Y1SgcL2oz2xrP8XFHZQ7
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cnMuj8XX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: add drop rule
 matching on not active lport
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
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/22/2023 8:57 PM, Michal Swiatkowski wrote:
> Inactive LAG port should not receive any packets, as it can cause adding
> invalid FDBs (bridge offload). Add a drop rule matching on inactive lport
> in LAG.
> 
> Co-developed-by: Marcin Szycik <marcin.szycik@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>   .../net/ethernet/intel/ice/ice_eswitch_br.c   |  6 +-
>   drivers/net/ethernet/intel/ice/ice_lag.c      | 80 ++++++++++++++++---
>   drivers/net/ethernet/intel/ice/ice_lag.h      |  2 +
>   3 files changed, 72 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
> index 67bfd1f61cdd..6ae0269bdf73 100644
> --- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
> +++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
> @@ -73,7 +73,7 @@ ice_eswitch_br_ingress_rule_setup(struct ice_adv_rule_info *rule_info,
>   	rule_info->sw_act.vsi_handle = vf_vsi_idx;
>   	rule_info->sw_act.flag |= ICE_FLTR_RX;
>   	rule_info->sw_act.src = pf_id;
> -	rule_info->priority = 5;
> +	rule_info->priority = 2;

I'm not seeing anything in the commit message about changing priority. 
Would be nice to see why this is needed for review and posterity.

>   }
>   
>   static void
> @@ -84,7 +84,7 @@ ice_eswitch_br_egress_rule_setup(struct ice_adv_rule_info *rule_info,
>   	rule_info->sw_act.flag |= ICE_FLTR_TX;
>   	rule_info->flags_info.act = ICE_SINGLE_ACT_LAN_ENABLE;
>   	rule_info->flags_info.act_valid = true;
> -	rule_info->priority = 5;
> +	rule_info->priority = 2;
>   }
>   
>   static int
> @@ -207,7 +207,7 @@ ice_eswitch_br_guard_rule_create(struct ice_hw *hw, u16 vsi_idx,
>   	rule_info.allow_pass_l2 = true;
>   	rule_info.sw_act.vsi_handle = vsi_idx;
>   	rule_info.sw_act.fltr_act = ICE_NOP;
> -	rule_info.priority = 5;
> +	rule_info.priority = 2;
>   
>   	err = ice_add_adv_rule(hw, list, lkups_cnt, &rule_info, rule);
>   	if (err)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
