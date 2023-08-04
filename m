Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B3BF3770A8B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 23:09:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4831D401F1;
	Fri,  4 Aug 2023 21:09:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4831D401F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691183363;
	bh=Q0QK+F1cKvgcbQBOPQ0yF6sjxXn4CfGs2MNHei8h1Hk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OPcqQ3F4mDaSZfoMVbB5Nbaz4gE8/8YWt8f5Nj4PjDzKy6qiyt8cF3E6jneH+lfbT
	 dEz5T0Ex/UNhP5XJif6nlbJGnZ46bKMver7N4sCKY5aDKIufvpVuwMhUgonrTRXMkC
	 fBjFZ5HlYB8iMbkSdhtxo/8IBuE0jvg8HpZBkzJnVaYd6QABaQBzC5s2+inLFDnI1j
	 12J59uluh4nTrhI5gfKQl0xruxkRPFltHUqSO/uZoPNEqJfotfHsUtrzZ072R6cKyQ
	 8iPCGYuT3pmD7E4PS/pGEXCP7mzrSmGlPxxg9aMjFf1lx9LWDr58qVY3NpG6Q4QZlC
	 Gf4p9dAdfkcMg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XIGUsDOisGgJ; Fri,  4 Aug 2023 21:09:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2026D40992;
	Fri,  4 Aug 2023 21:09:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2026D40992
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 171AF1BF98E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 21:09:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D2E8240308
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 21:08:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D2E8240308
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K-FdOQjLvQ6z for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 21:08:53 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9AD67416CA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 21:08:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9AD67416CA
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="434092071"
X-IronPort-AV: E=Sophos;i="6.01,256,1684825200"; d="scan'208";a="434092071"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 14:08:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="844243376"
X-IronPort-AV: E=Sophos;i="6.01,256,1684825200"; d="scan'208";a="844243376"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 04 Aug 2023 14:08:51 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 4 Aug 2023 14:08:51 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 4 Aug 2023 14:08:51 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 4 Aug 2023 14:08:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VqgwiqkgvBk5GK3CW/tdVPq5+Cq8tuSfbiJraML0MYZpUa4bvk+7kXhsbSNzKHGMVnylkHOlTihQCRBQFRs68qUWakUMkHDww2FNJINGuldleqT48uGpngUoPq03wmqfHdp1ryyvEVeHd0P6ewu9IZU3i9tsfU5K9iGuUTkmeKZANC11IPojffnD95aTmTW7ClYRO7RvoHYI49BSik9AZ/73Zxwf+Pt4dz092t89mbagkRN5DSC9xgmXapvOuzCn7vfeNDXV8YB3qsC/xzuHPc42ByeHsxHkUP7lMj4BeuohN1Gl3FEu4g5OsBKpQDaCa0Fx74UxVn6/ygv/OBrf8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o6XiI1Mz3Ozb6UiiM93qFwDvs1jDIjj1aTuhAyMeTRs=;
 b=EHdMIphrxv3IRzAyq3TqOm0g/jfGKbmo5UueTTO09rrgMMA6pQdmWuX+rT8rAzENC1XZDpmkR3PYo0+tRi6IXxdrd83oMTySk1hFAyNIoNKuaGJNwPiNuecjL9ony8uFqMu/P5PBmSrwOfNlXNw9BqLSFkqJ8B8z4fzVNM6NBVs9HABwe+PH3WpYuoZ7jvn8pPVq8Jzb9N4ATdXiNHsdkRgqgTymCgUzIOUlF3O2HCrIuo34LWpIF6B7synhDgZ7DZuSc+x6WrKJNNNpv11OT0GpUQIAHA1D0vNOhg91Md+4UysZoKUqtmUq5wqScKnCGJXGZy6njUNxfk0ruXGZww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by IA1PR11MB6290.namprd11.prod.outlook.com (2603:10b6:208:3e6::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.21; Fri, 4 Aug
 2023 21:08:38 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6631.046; Fri, 4 Aug 2023
 21:08:38 +0000
Message-ID: <ac611110-3a2a-6885-53e6-2c14a4063c1b@intel.com>
Date: Fri, 4 Aug 2023 14:08:35 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Jan Sokolowski
 <jan.sokolowski@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230801115309.697331-1-jan.sokolowski@intel.com>
 <20230801115309.697331-5-jan.sokolowski@intel.com>
 <131487ef-a94c-76f2-3bd8-531f77bbd7c3@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <131487ef-a94c-76f2-3bd8-531f77bbd7c3@intel.com>
X-ClientProxiedBy: MW4PR03CA0353.namprd03.prod.outlook.com
 (2603:10b6:303:dc::28) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|IA1PR11MB6290:EE_
X-MS-Office365-Filtering-Correlation-Id: 0cb46480-0bd0-48b8-dda8-08db952ef944
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YRJpehMfKqgxV5ZbGAZX9nMM/YX1jEwEAeHMqW1NVX6HM5Tx0/Z+NB3gLBk0R0oYztZCEcuBEz6LF/gcYyHRTMSg2uDe57OMkL5zumOc/xd/Oh55bPNqjhFDTHSJQt4DvJ2bus/hUAXbaJMO4C/nUXuWbtZrCOSr6RkCokz6o8lwroJdxymoEYpDcmdvXAA5UKAwNlk3Q4+wmpV/4TIcBWfbOk5tcqv4sXmXXtgOVHpN+GQw1QPunnZvIUvCq/hbUb1g0UChH6F34af6YxsGxDxChdCI9JmZEzER3QvtPEnncpz01ky1JenJqh6F8+ugo0V/+t2wnTe1vlSd8Bkg0rGDNwaCvEdaphYYlV5u37C6qgbQ6ztajwT3NjTfQNKkmJmKVSLKtTFnR/okNlX+WFHYTzWRCFTqZOZJKpG2wGUyLx3Loa/OO/BMVl2F3WsLGNNRwOFR8TxPNGVy5Ul7fzKTMCuMXFtZA9epOQTn+tI9tUSc6SycrcnvzISbE4/u5eTrYRSxXa1M2ATqjzpJNE/uP7UfONS6pqoxFyXKeOvM0G08ynm/succeM0uuLaeNP2azKnrE2FnhBpxlZofWSizf9cH5ULT2KsPy3RziTUyilTVuRDeftUDGt+sPbwVfIDL6h07HisSCL5akC3uEg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(366004)(136003)(346002)(376002)(451199021)(186006)(1800799003)(6666004)(6486002)(966005)(6512007)(86362001)(31696002)(6506007)(26005)(36756003)(2616005)(53546011)(83380400001)(38100700002)(82960400001)(5660300002)(41300700001)(8936002)(8676002)(31686004)(2906002)(66556008)(316002)(478600001)(110136005)(66946007)(66476007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MTM1S3dPeXRmcmlEWTFrOFJBc2ZOSE1ibmk1VUc2ckVxN1NkVnp6WTZsdGhx?=
 =?utf-8?B?UkllQzRhRUZSOG53TXBjaHBEUWVjbVFqY1F5cEVTaGIrMXRxcmY5dmVjSXZV?=
 =?utf-8?B?MzJaVElsazQ2d3lqaENxbEVuK0grR0RnVm9tb3NpbFNmQmNYYjN6SHpsRFhh?=
 =?utf-8?B?RGd2dm5HRVROclJpM0srQ3Bwai9aaTVMK0JXa1gxSFhOUXgxRGxQZ0xUQW1O?=
 =?utf-8?B?VHhYTDRLR09pRW85YS9BYmZYRjROTnltaFhLSENPQ3hDK0oyZ0VhWDZ0MEo0?=
 =?utf-8?B?K1NuOU1VZDhiQkZ2Z3dvTW9leDdhanp6bWl2RkowL05MbjFaM2FTM21lTnVi?=
 =?utf-8?B?NnIwVS9zcDRqYXMydzBDN042VFN5QVNjSEhsa3hLSDhabkVJQkxLVVJuc2g1?=
 =?utf-8?B?SFZPMWFBbDk1am93Tk1zUy9aNWFteG15OWFuRnViMFh3N2YzRytTekpOak8y?=
 =?utf-8?B?bEJpVGEyV0NoZ0ZtZkxuQ1c1Y2RxSVV2RzhqcmtSajhEM0tZWFZSek5FYkJ3?=
 =?utf-8?B?RS9DWWV2SXdKRXY0dklEWENBT0h2T2l2SjFKaWFUcVZWT2luYUJRU2NwN3VH?=
 =?utf-8?B?YTVKTjB6RFBCNVV6TmNDNWRQMms2NDZhUmNpcFVScWUzVEFvaENGTnZmUW9s?=
 =?utf-8?B?WSt6T3paQmp3cDhCK0dnZUMxdE9RWTBCczZHd295RUhtNjM2Rnhad0hvd0F3?=
 =?utf-8?B?Z1BPMkpOaGhYUTZzVkFNNGJLcnBsUnlhdHlNN2lEdFYyQlRacWE5bHp3M25R?=
 =?utf-8?B?Tll3Z21RckxqdE1xRVpCcE9vcEtyakdUeGZSOUJQelVYZlpidGloUE5pTW5r?=
 =?utf-8?B?YmFKZWtXOVNQZkY1SE05cWZYdGJCR05yRUdTV05Tb0VSSEFMM09BeVo0SVQ4?=
 =?utf-8?B?WitucUM0OXFFb0d3RTZBZFErWWROREJqWmtVZmtnbUt5QVhGdTBoNmF5Wkh6?=
 =?utf-8?B?cWd3cVpDNDlsUGFudnQxUDdVbmRDb2c3aW4wLzZqOEk0UG5OMkc0UjJ1VExy?=
 =?utf-8?B?T0k3UEZyVWhXcHQ5bjROU2txcTJ4eUZUZXJSNmNUbldUbDQ5Mm83RkpmNXBq?=
 =?utf-8?B?US9yVWtubWlKZHRCaG91Z0tCY2ZTMEtsRHNSV1BUY1cxZC8yUlNZNDJEdzZ5?=
 =?utf-8?B?UUw3c2lTV2Q2SXFCSWZZL01RQlZjQXc2eW0yYTQralhsUngwSkN2VjA4UHR0?=
 =?utf-8?B?Q1o5akJqUllLRHpQRy9OaTFFeVpmQmtWTGtGWWdQMThjYmZGQmZ2MFdPRUw2?=
 =?utf-8?B?YUMyRlVSZzA1c3JrT1lEOEtjeWZSRHo0clE5Y1U3cDdTdmZoc1ExeWpUc0xN?=
 =?utf-8?B?YjJObHdEZUxwRGoxTFVPZWk4ZjBPVTVuNDNGM0hKQnVLM0p2MG12TmdhSFlJ?=
 =?utf-8?B?WUE2V1VUbEUrcTlmVGJPQW5EWnQ1QzUvMGVJTEhoeXZrdHZrNUxWRXpqYVVV?=
 =?utf-8?B?SkdTcjlxeWZJRnJXK1laOG9qS01VckM0UUF5WVhOaGd0eDRaVU9qeDZuMXc0?=
 =?utf-8?B?OU53Q0lXRFlFanQwT2YreVB5aFJKRG1RZVZOVGpYVUJiamcvcTRkR0djSFhZ?=
 =?utf-8?B?M3ZNaUlrUmFYSzYwT3Q5U21HSlV3bDg1STYybk5FR0xUb2tUMDZWSkZYa3FT?=
 =?utf-8?B?dS9SY0xDLzBIVTc1RGZQUVY4Y2I0ejZEd01DV2xOM2k0RDRod3VaWkJTLzQw?=
 =?utf-8?B?L08vYWxNWm1CQTc1eURCZnRVR0VqN2hMNEZoM0xYMjNub3pxNXNQYkxPdy9N?=
 =?utf-8?B?dUZrRXZMVGF6TUV4bXRBbXJrS25rb0Vta1I1TjFWeHZPWkZWYXRJeW8vUU4x?=
 =?utf-8?B?L0NNdnVCVnByM1VqcGVURUpVN25yOFlqNkZtckp6RGV2MEk0dkk4S1M0RVdx?=
 =?utf-8?B?VXZFVmpQY3h6a0ZZOUI0ZEhHclcyQmZVUldOYzNBVkZlM2JCclQ3OGhYYWVQ?=
 =?utf-8?B?bFF0bmhYazlJZ3hTa21mbm5TaC8reWtoL2RmcW0rQzhPQ0tRc25oUkloTUpT?=
 =?utf-8?B?K2Q5NVVsQnJpTTVJVFpGWlJDUm5LTFlXQlUwYlVNMFRmejIwTkpSblpjTzJy?=
 =?utf-8?B?UUNPTGUzR2VqT0ZZL0ZXVkovU25JTWVFWE1WaG5KT0ZxUVk1YkRvRzEwWERq?=
 =?utf-8?B?NnNMRFpJQ3kyK2VnbDRVYkt0disxY0lWQllRK1I2aTVrNC8zOHh4aTBIb2pl?=
 =?utf-8?B?Qnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cb46480-0bd0-48b8-dda8-08db952ef944
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2023 21:08:38.7651 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LAhANmiyRBuMcIe8xNwg4MN0JaJaXRqV7T8P9MX7JcpW2PWJl+2sT4WH8JEesix2Osr3KB627VHyBQ0V0RicLkTZHv9XuTa6xqWcNjydnwE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6290
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691183333; x=1722719333;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DqZjBlmeaBGrlFugsdH38GC0m6ijWASI3JgwQyVhi2c=;
 b=XHtK0lpaBUJ79xhTedWmDyML001GFQmK1tkptXxElGBSkkJMK6KFZ7Im
 LeLNeD56XrlUgrKM9lf1ompXyGqYP55sxZTlqzkNU+Z+Hydx/Ilsiqi6B
 nR0XJL9aDHeFGKD4VaPURlvOqvsxmk7Grp8rsnVXnlLVoB+qwmMuU99Zw
 jRk//3jm05ngZwGtRhtDK5yusO+vSfIsIaIQoANu/FRWs2vMuEccb7/7b
 I6nVqxn71l9BC/H9pQso3wCslM2rAd6gnhMgMIk+pjb+Tm0PktIl6ahw6
 GlPSLexJWmiP+TYn+yj2os1rVTFrj1p739PNgZg83W64iH48yiLSsWVf9
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XHtK0lpa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 4/6] ice: refactor
 ice_vf_lib to make functions static
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gOC8xLzIwMjMgNjoyNSBBTSwgUHJ6ZW1layBLaXRzemVsIHdyb3RlOgo+IE9uIDgvMS8yMyAx
Mzo1MywgSmFuIFNva29sb3dza2kgd3JvdGU6Cj4+IFJlZmFjdG9yIGljZV92Zl9saWIuYy9fcHJp
dmF0ZS5oIGluIG9yZGVyIHRvIG1ha2UgYXMgbWFueSBtZXRob2RzCj4+IGFzIHBvc3NpYmxlIHN0
YXRpYy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogSmFuIFNva29sb3dza2kgPGphbi5zb2tvbG93c2tp
QGludGVsLmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfdmZfbGliLmPCoMKgIHwgNDY4ICsrKysrKysrKy0tLS0tLS0tLQo+PiDCoCAuLi4vZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV92Zl9saWJfcHJpdmF0ZS5owqDCoCB8wqDCoCAyIC0KPj4gwqAgMiBm
aWxlcyBjaGFuZ2VkLCAyMzQgaW5zZXJ0aW9ucygrKSwgMjM2IGRlbGV0aW9ucygtKQo+IAo+IEkg
ZG9uJ3QgbGlrZSBzdWNoIGJpZyBjb2RlIG1vdmVtZW50IHRvIGFjaGlldmUgc29tZXRoaW5nIHRo
YXQgdHdvIAo+IHByZWRlY2xhcmF0aW9ucyB3b3VsZCBwcm92aWRlLgoKVG8gbWUgdGhpcyBpcyBu
b3QgZGlmZmVyZW50IHRoYW4gdGhlIG90aGVyIHBhdGNoZXMvaW50ZW50OyB0aGlzIGp1c3QgCmhh
cHBlbnMgdG8gaW52b2x2ZSBtb3JlIGxpbmVzLiBTZWVtcyBhcmJpdHJhcnkgdG8gYWxsb3cgdGhl
IG90aGVycyBidXQgCm5vdCB0aGlzIG9uZS4gSSdtIG9rIHdpdGggc2VuZGluZyB0aGlzIG9uIHRv
IHNlZSBpZiBuZXRkZXYgd2lsbCBhY2NlcHQuIApCYXNlZCBvbiBjb21tZW50cywgSSBiZWxpZXZl
IHYzIHdpbGwgaW5jbHVkZSBuZXRkZXYgc28gd2UnbGwgZ2V0IGFuIGlkZWEgCmlmIHRoZXkgYXJl
IG9wZW4gdG8gdGhpcyBjaGFuZ2Ugd2l0aCB0aGUgbmV4dCByZXZpc2lvbi4KCj4gV2UgY291bGQg
ZWl0aGVyIGp1c3QgYWJhbmRvbiBpZGVhIG9mIGNvbnZlcnRpbmcgdGhvc2UgdHdvIGZ1bmN0aW9u
cywKPiBvciBtb3ZlIHByZWRlY2xhcmF0aW9ucywgYXVnbWVudGVkIGJ5ICJzdGF0aWMiIGtleXdv
cmQsIHRvIGljZV92Zi5saWIuYwo+IAo+IFRoYXQgd291bGQgc2xpZ2h0bHkgdmlvbGF0ZSAidGhl
IHN0eWxlIiwgYnV0IHlvdSB3aWxsIGFjaGlldmUgU0FNRSBUSElORy4KPiAKPiBJIGhhdmUgdHJp
ZWQgbG9jYWxseSB0byBzZWUgdGhlIGRpZmYgc2l6ZToKPiAgwqBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX3ZmX2xpYi5jwqDCoMKgwqDCoMKgwqDCoCB8IDcgKysrKystLQo+ICDC
oGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdmZfbGliX3ByaXZhdGUuaCB8IDIg
LS0KPiAgwqAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkK
PiAKPiAtUHJ6ZW1lawo+IAo+IFsuLi5oYWxmIHRob3VzYW5kIGxpbmVzIHNuaXBwZWQuLi5dCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC13
aXJlZC1sYW4gbWFpbGluZyBsaXN0Cj4gSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKPiBodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQt
bGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3Rz
Lm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
