Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A9E70791E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 May 2023 06:34:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2371F60F4D;
	Thu, 18 May 2023 04:34:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2371F60F4D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684384440;
	bh=UsH58chhq/9gi1v0XjTDH1ca5vEPVUj5+hYQLD4pr14=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wcLljNSMrJ6Yl+kvGjwgJdbQ8PzJalmYBptB+aOZc1hu2JS2dAjucL4coRGH6My2/
	 DNQsmId1pioF/QgdX+sqeRj4ylEXbHhWomCSaT239sRnCXh3fw3/uYjxc9JFkfFZ3r
	 oMeY53Z0oXqq4SYD4QI204B/ixdG0KoxFe1S7s+fhOTtq/Zxs94WeylGA5TAU5NkIf
	 Br+2Fx/qB7zp94Con1yhq6U7zCr2S5DvTSwAZo6Jx7jRJOI8ftQZEjDk8xB0xp3TM9
	 Q8GQ0xnPa99njKS4+kMCjyRf2cd0y6jKVKHveNWZvlVWpb7NQfGI1uhoBsPNvOxsGr
	 ez4dwgOwu+UYQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YYuaajA2d0uY; Thu, 18 May 2023 04:33:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F3DB60E8A;
	Thu, 18 May 2023 04:33:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F3DB60E8A
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9D49F1BF3B5
 for <intel-wired-lan@osuosl.org>; Thu, 18 May 2023 04:33:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 724A941695
 for <intel-wired-lan@osuosl.org>; Thu, 18 May 2023 04:33:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 724A941695
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id il9EhshyRT3P for <intel-wired-lan@osuosl.org>;
 Thu, 18 May 2023 04:33:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 404F14157B
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 404F14157B
 for <intel-wired-lan@osuosl.org>; Thu, 18 May 2023 04:33:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="336525875"
X-IronPort-AV: E=Sophos;i="5.99,284,1677571200"; d="scan'208";a="336525875"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 21:33:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="814168404"
X-IronPort-AV: E=Sophos;i="5.99,284,1677571200"; d="scan'208";a="814168404"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 17 May 2023 21:33:48 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 17 May 2023 21:33:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 17 May 2023 21:33:48 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 17 May 2023 21:33:48 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 17 May 2023 21:33:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZEQGZqqiGrWKIXIj0eQl1Oki4ldVFawD9ZQXWJ4JsI1BWMg/FwcKIY+1J2NFz4FRkIfA9ZKyACuxRhjd7f6gaMZcr9iLlDtG7RhSdIynKLPfaWBbimaiJ7rS7g8NODTk6mG8ZDxviByhiiNb799Q7M1Vh+pUekuLzjbwvWyf4/MdMuuDGpqUymgnVi/v3t9LCY0QY2DjyBRXnaEpfdS1DBYsIoUJfQ/nXMV7drvSD4PIkziUh3FfEPNS4CcOpJcE7tWNLLRgYWDnRsslX3tPCfr2rJaqGm4uTWwLdktYDLgwDfOLph3BOvwX6ikanGzI7QPbPQqmc/S4e15zv8c79w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FpgackAyg6xYrH1r7iwwRr+Vwlbm9ix3SdQHVQ67j8Q=;
 b=ffh+ONhSBMdyYw1OJBZJL+4r6JTgBvcLECkCbH+yRjwEbNnimWGanoNEel9py+CWuVGI4Y6IWNKWb22z3Z1AZHj/ZSvRw5XvUje0FCTicmRTHZwd3ss50VPtYJ7UzjEIL21Cuk1QeqU/HvvT2Q12h7oGaMZTG+whyBIJJebgSENjsK6F6oFOuFZFL2ykxB5oWXyVR6BK+lSCmoIEYrnLRSxuH3hTnRh8tURHZPT7f877RrjOxhA3uQR+cSjkxq6VcCycXU4dy61kSZ1ZMQzOuu2IsjJNvDcgfcuXLKsqjrVAGLBS4C5oDZReyu61iIhczwPg4YtSnS2jMr/pa3MWzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by CY8PR11MB7169.namprd11.prod.outlook.com (2603:10b6:930:90::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.33; Thu, 18 May
 2023 04:33:44 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::df65:1e83:71ec:e026]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::df65:1e83:71ec:e026%5]) with mapi id 15.20.6387.033; Thu, 18 May 2023
 04:33:44 +0000
Message-ID: <ee851958-2557-fa24-3490-d6fedea41359@intel.com>
Date: Thu, 18 May 2023 07:33:36 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.11.0
Content-Language: en-US
To: Prasad Koya <prasad@arista.com>, "Edri, Michael" <michael.edri@intel.com>, 
 "Mushayev, Nikolay" <nikolay.mushayev@intel.com>
References: <CAKh1g57BP-RHN7uG7+v3mzni1ZLOmd7aiqTTTunm=8D5dnCJBQ@mail.gmail.com>
 <ce25c481-94b9-8a46-2963-3c881566dbcf@intel.com>
 <CAKh1g57x4iJPu2phc7=_7MirxCKcgSFOTSaxCtz-qBi7Zf5XFg@mail.gmail.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <CAKh1g57x4iJPu2phc7=_7MirxCKcgSFOTSaxCtz-qBi7Zf5XFg@mail.gmail.com>
X-ClientProxiedBy: FR0P281CA0239.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b2::10) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|CY8PR11MB7169:EE_
X-MS-Office365-Filtering-Correlation-Id: 0e5b7bd8-83d2-45f5-3738-08db57591092
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Cg1exSLOpE+BlF7UL6Md8P8cD2291w3iSjmbIpbR7ePwpQa0AhMIBsu1g6qrEVR/UBSE+Nx79Jmx7VXsoTYiX3yLAY2UiY7YYJbAt9Bfurdk7srsFEi/Y/jmcIejbWm/2nJSowclCqRLugiTapcg8RmAKpZevossB6J9LSwU0GpUI2Fa8YFIxrLsVaSdKcCybOWkjLPmgokniqgM+WQiooLhB5e6IBGlTlxAc5mEeUSEZ63iwtq/H+1aXExvQoEb5Jvs4qh/o+PG5IZk8imGiJh9K6gGi2OP2aYp18q1MgL9g88zWQoRptUJsI4+fl1I5hE5RtLsu4/Pn5pHMiZstqdWdGY3b77ia+gFzbocWs8NkxYukgXLLSCO/Poe8RCx08eOEXUSwmXNX1XTyOjtBsPHI3YSWNBhe3VdflKFMcwY3TxAH0W67snYLKV7tANoSOEsv4jN69EkS+M058ZtxyPenys1dapwxNHkRAMbaKrmivYUVaCEzca8if/3jcb76ORZeMrnvOe9ooRPfXtY67o0L7/9rqoSS7Ox68CdjWr3qyTHwUFc4GhqH+BoAJYO0nB5326rn2Vt8StaoPVpmJVGSpIHGCvomHw0p9uLiDT/wtdrMuKGoQMntpm37s9e5r2S+oO81anpr4NCrlpRjQI1RAwPzp6HPhfa3dADoJsrvAbuLfLg08/d/5mZU3iw
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(376002)(346002)(136003)(396003)(39860400002)(451199021)(31686004)(6486002)(4326008)(6636002)(66946007)(66476007)(66556008)(966005)(316002)(54906003)(86362001)(110136005)(478600001)(36756003)(83380400001)(6512007)(2616005)(26005)(186003)(53546011)(6506007)(107886003)(2906002)(8936002)(5660300002)(41300700001)(82960400001)(38100700002)(31696002)(8676002)(6666004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VXdKSVdaQ0w2OWNqbGFnbXhWQmxQUHBQWHEvdE9EWk14cmtnK0I3T2UvanlI?=
 =?utf-8?B?MEhnYncxdWpCR3pXM3dpRHlmWWhJTTQxQkY4TFJjNWVwVjg0UjZCckczaWFN?=
 =?utf-8?B?ZTdjYlptNE5MYVFpRzhtSEdlclRDRCtXTmZXcjFhN1A5UkJjN2ZEdzVueUEz?=
 =?utf-8?B?RVhPejV2V0RsL3RUUGg1YldXSnd1eDRuUzlHWkpJUWFTbFozMk52eU05Vmg3?=
 =?utf-8?B?K2JCZFZGYkJrVWJYOVpKcWlPL3pBNGRNN0hVUm5TeXVSanJrZC9DTkZCTG5k?=
 =?utf-8?B?MWh6cStkQmFuS005SEN3V0VpK1k0WkFMU3NMZkk3bFM0cHZwUE1Rc3Qra3JM?=
 =?utf-8?B?dUE2VWVwYUZ0VTlMSXdmT05uK2U4SDM2aWxvMnZIOThrTk5lR1FQOUt2cHph?=
 =?utf-8?B?a3JnQnlSbWtpNGxWMnYzMGxFMEhndFIzWTVnQXFiWWJRWHVvU2VZTzRTblha?=
 =?utf-8?B?d25ldU84dWx5VjE2V1U1aHpVUGI1eTE5dTFPaTczQTM1QmFqK2UrSUNCUExJ?=
 =?utf-8?B?TWJ5K0RVOFVzd1BqRFVyenZhRzVjaldpNTVzNnhSLzhkbk5PeW5hZjRqbllt?=
 =?utf-8?B?YmxGU2NLdzVaWEF0M3pkRG9oUkhrL0hhb0I5ajIzSk1WQzJ2eFhHcm5aNVVy?=
 =?utf-8?B?aERHazZXUUtuZ0ZWa0ZhWHJiWlNhcnB2NVZUSG1Wem9JNmI4Y2pTR29BbVhp?=
 =?utf-8?B?WDZ5dW5zaXRXNkloYWxTUmMwQUVGM3ZkZEkzTi96T01iMWkrazM2cVZHdkhJ?=
 =?utf-8?B?UTBrUGd0SDEwWXV4dXdiZ05lL3ZuVEk4M3gweVNPT09HaitCZEJpM1U0ajUr?=
 =?utf-8?B?SkdHMmtFODJsYitqbUxSMG5IZVVKSDlJRVRBdGZRa0xOcllteE9HUElmRTF5?=
 =?utf-8?B?TkRpenpNVlgzdUpYQmtrbFVob3lMcGFoaHZJQ2lzR3k5TmtwekEyb1J0bTdY?=
 =?utf-8?B?ei8wSnM3RjBkWGFMSW5GVHVaNEVXcjlPNlpneFg3bzIrVEFINk51NFVIWDZZ?=
 =?utf-8?B?enkvcEgxdTF4TGV3cnhhRy9GanJRS1JjdVhlWTUydWl0OHZGNVdDZitUWGlO?=
 =?utf-8?B?ZzZmSTJZVTV0dXpSOS90dHNabi91SFRXZCt0YUdwa0t4Z01qTWg1aFhXZkp3?=
 =?utf-8?B?dks4SWhqZnYrQXVOeU9qRUhMcVFRNUQ0N0IyMmczQUcray8xbHoyekY0QXIv?=
 =?utf-8?B?WHFkRkl4cjJFTHRJazlZZVZDZWRYMFVVNUVMYnN1L1ZIMEZGOUZXZHk2RzBu?=
 =?utf-8?B?ckFKN3VOd3JIWEFqcXlJSjcwRGQ0b3NKdDZLM1p2Z0E5RGNnenBteHlsdFJ5?=
 =?utf-8?B?T0ZTbXJ0TFJpWkFFSlk1Y2NTNVNlRkw0aVpiMkJTVlRRbVkvcmd4QkRvaTJS?=
 =?utf-8?B?Y0tOVjZ4RE9WcjlFUy9DcnhuMGc0VXVOWkxLWU92QStsRDhqNnNzRGVxempi?=
 =?utf-8?B?VGtNU0NSMU04RjVxdUgzdVRiRU1OSllnTmNZb05ZQUNod3JkWVJQVkZrRFlr?=
 =?utf-8?B?ZFM0aVg0MEQzWlBNWDdaV2VlOEduVTNNb3ovRGRVcWJxZHZRakNGbWRKZGxv?=
 =?utf-8?B?SXNBN3ZvWmp1KzBNSUhKanNnRjBmYVdBZ2VrT1JIMXBTNk9xYlRHNUd6UHZm?=
 =?utf-8?B?ekJFZlIrTCtvS25FOXBCZ3dMVkNvL2RhWmRsa3o4OFJuY2VsR09nV1hoMmpS?=
 =?utf-8?B?TUtudlQ2engwNDNyejlSRlhndTZIRkhLVERFMmZCSHpFdlZScHlzQUtQSlN1?=
 =?utf-8?B?YTBSa041RlVQR2Ira0VSQ1RvQWtaTWFmSjdCdDZ5dGxlTUJmcFErQ2syK0RS?=
 =?utf-8?B?V1Z3bDEwOGRMQStSdDVWbkxMWmtlemd5WUZiWXhDSksxTDNXRHdCdW1lTHU2?=
 =?utf-8?B?WmJHZHBOQ25JV3VLcmVEVC9jYXhBbFI4T1Z4NzRlM0U4ZFFWelhsQms1RXMv?=
 =?utf-8?B?cnJDVkpVdDZxUGl3bDMwdTIzUHRzUEQwMUhEV085L3Q5MFArYnN1S2ZjNVZj?=
 =?utf-8?B?ckdRSEZGbGRZYVdvL2tld2NEOC9HNmwrb1BMZ0szWkwvOWVqdGF5c2hFaDNM?=
 =?utf-8?B?YlFzcHdWWi9kbDNuNDR4dTRGODdzblhKN3QrNkpMK0JYMHloMGhkQytKSTZr?=
 =?utf-8?B?U0hEWFBSSERjMTJVNzdHcU1xU3JMTzdOSlVFd3ZCK1BKeHVtd3VpdXJ6L2tD?=
 =?utf-8?B?YkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e5b7bd8-83d2-45f5-3738-08db57591092
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2023 04:33:44.8002 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MbNZYbb/ThcU+YYyq/skERVyC10+7s+bj+2KkSA1W8mc7uIiWAJF6HwdW67d8AT6SJWHGS4D5LoMC1OOA+z6fw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7169
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684384430; x=1715920430;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Nj8J/WOnBj3piT/rPZ7YiXNzQZ9AbUeEV00JEI//KEk=;
 b=CPWr8KbmLfLHxs4BOzA0lRPAzN9QQ91J98kWsMpo/dzTLKP+GMAHLa87
 GZ5QkpU8YL2FNfmj9uYvxseR3JvlC9AqT+u1EYnh6EaY9hWdFURA3f37S
 6s6Cqni9qPFlPszFgzC/bnmRtvnbh5tsLNXenHuq2WHBxr5mT3N73bvWZ
 Mqs62newCgNby6ZN9O3gG4LEGfkVmq4ijO+PtDetM3V95efUWtzpcqZ6W
 07x7leuKIIGOu5JP9hTlXPlxX/jZ6Gdl7/lbDvjvBv8jwX/rlBqfRwok9
 wueIBWX7kijLa0V2UlJP8jHQeyQte988YbgqFvJDMhcxjj7nd2M0sNUEj
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CPWr8Kbm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] I225/I226 does not power down the PHY during
 "ip link set dev down"
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
Cc: "Fuxbrumer, Devora" <devora.fuxbrumer@intel.com>, Salam
 Noureddine <noureddine@arista.com>, intel-wired-lan@osuosl.org, "Meir,
 NaamaX" <naamax.meir@intel.com>, "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 "Avivi, Amir" <amir.avivi@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNS8xOC8yMDIzIDAwOjE0LCBQcmFzYWQgS295YSB3cm90ZToKPiBUaGFua3MgZm9yIHJlcGx5
aW5nLgo+IAo+IFdlIHdlcmUgb24gTlZNIHZlcnNpb24gMi4xNCBlYXJsaWVyLiBXZSBwbGFuIHRv
IHVwZGF0ZSB0aGUgTlZNIHZlcnNpb24gCj4gdG8gMi4xNyBvbiBvdXIgSTIyNiBmaXJtd2FyZS4g
RG9lcyB0aGUgMi4xN8KgTlZNIHZlcnNpb24gYWxzbyBoYXZlIHRoZSAKPiBwcm9ibGVtIHlvdSBt
ZW50aW9uZWQ/CkhlbGxvIFByYXNhZCwKSSByZWFsaXplZCB5b3UgYXJlIGFscmVhZHkgb24gTlZN
IDIuMTcgd2l0aCBQSFkgZmlybXdhcmUgMHg4ODhkLiAoZnJvbSAKeW91ciByZXBvcnQpLiBJdCBs
b29rcyBsaWtlIHRoZSBwcm9ibGVtIHN0aWxsIGV4aXN0cy5QbGF5aW5nIHdpdGggcGh5IApwb3dl
ciBkb3duIGNvdWxkIGxlYWQgdG8gYSBoYXJkd2FyZSBlcnJvci4gSSBzdWdnZXN0IGxlYXZpbmcg
aXQgbWFza2VkLgo+IAo+IE9uIE1vbiwgTWF5IDE1LCAyMDIzIGF0IDEwOjI14oCvQU0gTmVmdGlu
LCBTYXNoYSA8c2FzaGEubmVmdGluQGludGVsLmNvbSAKPiA8bWFpbHRvOnNhc2hhLm5lZnRpbkBp
bnRlbC5jb20+PiB3cm90ZToKPiAKPiAgICAgX18KPiAgICAgIQo+ICAgICBXaGF0J3MgdGhpcz8K
PiAgICAgPGh0dHBzOi8vZGFzaGJvYXJkLmdyZWF0aG9ybi5jb20vYXBwcm92ZUVtYWlsLmh0bWw/
YXV0aFR5cGU9Z29vZ2xlJnJlcXVlc3RUeXBlPWxlYXJuTW9yZSZpZD02OTI0NjgyMDkmY2xpZW50
PTI4OD4gCVdBUk5JTkc6IFN1c3BpY2lvdXMgbGluayBpZGVudGlmaWVkLiBQbGVhc2UgZXhlcmNp
c2UgY2F1dGlvbiB3aGVuIGNsaWNraW5nIGxpbmtzIGluIHRoaXMgZW1haWwuIAkKPiAKPiAgICAg
T24gNS8xNS8yMDIzIDEwOjA0LCBQcmFzYWQgS295YSB3cm90ZToKPiAgICAgPiBIaQo+ICAgICA+
IAo+ICAgICA+IFdoZW4gd2Ugc2V0IHRoZSBpbnRlcmZhY2UgZG93biB3aXRoICJpcCBsaW5rIHNl
dCBkZXYgX18gIGRvd24iLCB3ZQo+ICAgICA+IHNlZSB0aGF0IHRoZSBQSFkgaXMgbm90IHBvd2Vy
ZWQgb2ZmLiBUaGF0IGlzLCB0aGUgTEVEIG5leHQgdG8gdGhlCj4gICAgID4gUkotNDUgY29ubmVj
dG9yIGlzIHN0aWxsIHNvbGlkIGdyZWVuIG9uIHRoZSBob3N0IHdoZXJlIHRoZSBpbnRlcmZhY2UK
PiAgICAgPiBpcyAiZG93biIgYW5kIGF0IHRoZSBwZWVyIHBvcnQuIEFmdGVyICJpcCBsaW5rIHNl
dCBkZXYgX18gIGRvd24iLAo+ICAgICA+ICJpcCBsaW5rIHNob3cgZGV2IF9fIiBzaG93IGRvZXMg
bm90IGhhdmUgdGhlICJVUCIgZmxhZyBidXQgdGhlIExFRAo+ICAgICA+IGlzIG5vdCB0dXJuZWQg
b2ZmLgo+ICAgICBjb3JyZWN0LCB0aGlzIGlzIGV4cGVjdGVkIGJlaGF2aW9yLgo+ICAgICA+IAo+
ICAgICA+IEhlcmUgYXJlIHRoZSBsb2dzIHdoZW4gSSB0cmllZCB0aGlzIG9uIFVidW50dSBydW5u
aW5nIDYuMS4wIGtlcm5lbDoKPiAgICAgPiAKPiAgICAgPiByb290QGFyaXN0YS1JZGF2aWxsZTov
aG9tZS9hcmlzdGEjIGV0aHRvb2wgLWkgZW5wMnMwCj4gICAgID4gZHJpdmVyOiBpZ2MKPiAgICAg
PiB2ZXJzaW9uOiA2LjEuMC1yYzQKPiAgICAgPiBmaXJtd2FyZS12ZXJzaW9uOiAyMDE3Ojg4OGQK
PiAgICAgPiBleHBhbnNpb24tcm9tLXZlcnNpb246Cj4gICAgID4gYnVzLWluZm86IDAwMDA6MDI6
MDAuMAo+ICAgICA+IHN1cHBvcnRzLXN0YXRpc3RpY3M6IHllcwo+ICAgICA+IHN1cHBvcnRzLXRl
c3Q6IHllcwo+ICAgICA+IHN1cHBvcnRzLWVlcHJvbS1hY2Nlc3M6IHllcwo+ICAgICA+IHN1cHBv
cnRzLXJlZ2lzdGVyLWR1bXA6IHllcwo+ICAgICA+IHN1cHBvcnRzLXByaXYtZmxhZ3M6IHllcwo+
ICAgICA+IHJvb3RAYXJpc3RhLUlkYXZpbGxlOi9ob21lL2FyaXN0YSMKPiAgICAgPiByb290QGFy
aXN0YS1JZGF2aWxsZTovaG9tZS9hcmlzdGEjIGxzcGNpIC1zIDAwMDA6MDI6MDAuMAo+ICAgICA+
IDAyOjAwLjAgRXRoZXJuZXQgY29udHJvbGxlcjogSW50ZWwgQ29ycG9yYXRpb24gRGV2aWNlIDEy
NWIgKHJldiAwNCkKPiAgICAgPiByb290QGFyaXN0YS1JZGF2aWxsZTovaG9tZS9hcmlzdGEjCj4g
ICAgID4gcm9vdEBhcmlzdGEtSWRhdmlsbGU6L2hvbWUvYXJpc3RhIyBpcCAtZCBsaW5rIHNob3cg
ZGV2IGVucDJzMAo+ICAgICA+IDI6IGVucDJzMDogX18gIG10dSAxNTAwIHFkaXNjIG1xIHN0YXRl
Cj4gICAgID4gVVAgbW9kZSBERUZBVUxUIGdyb3VwIGRlZmF1bHQgcWxlbiAxMDAwCj4gICAgID4g
ICAgICBsaW5rL2V0aGVyIDAwOjFjOjczOmI0OmUzOjc2IGJyZCBmZjpmZjpmZjpmZjpmZjpmZiBw
cm9taXNjdWl0eSAwCj4gICAgID4gbWlubXR1IDY4IG1heG10dSA5MjE2IGFkZHJnZW5tb2RlIG5v
bmUgbnVtdHhxdWV1ZXMgNCBudW1yeHF1ZXVlcyA0Cj4gICAgID4gZ3NvX21heF9zaXplIDY1NTM2
Cj4gICAgID4gZ3NvX21heF9zZWdzIDY1NTM1Cj4gICAgID4gcm9vdEBhcmlzdGEtSWRhdmlsbGU6
L2hvbWUvYXJpc3RhIwo+ICAgICA+IHJvb3RAYXJpc3RhLUlkYXZpbGxlOi9ob21lL2FyaXN0YSMg
aXAgbGluayBzZXQgZGV2IGVucDJzMCBkb3duCj4gICAgID4gcm9vdEBhcmlzdGEtSWRhdmlsbGU6
L2hvbWUvYXJpc3RhIwo+ICAgICA+IAo+ICAgICA+IAo+ICAgICA+IHJvb3RAYXJpc3RhLUlkYXZp
bGxlOi9ob21lL2FyaXN0YSMgY2F0IC9zeXMvY2xhc3MvbmV0L2VucDJzMC9jYXJyaWVyCj4gICAg
ID4gL3N5cy9jbGFzcy9uZXQvZW5wMnMwL29wZXJzdGF0ZSAvc3lzL2NsYXNzL25ldC9lbnAyczAv
ZmxhZ3MKPiAgICAgPiBjYXQ6IC9zeXMvY2xhc3MvbmV0L2VucDJzMC9jYXJyaWVyOiBJbnZhbGlk
IGFyZ3VtZW50Cj4gICAgID4gZG93bgo+ICAgICA+IDB4MTAwMgo+ICAgICA+IHJvb3RAYXJpc3Rh
LUlkYXZpbGxlOi9ob21lL2FyaXN0YSMKPiAgICAgPiAKPiAgICAgPiByb290QGFyaXN0YS1JZGF2
aWxsZTovaG9tZS9hcmlzdGEjIGV0aHRvb2wgZW5wMnMwCj4gICAgID4gU2V0dGluZ3MgZm9yIGVu
cDJzMDoKPiAgICAgPiAgICAgICAgICBTdXBwb3J0ZWQgcG9ydHM6IFsgXQo+ICAgICA+ICAgICAg
ICAgIFN1cHBvcnRlZCBsaW5rIG1vZGVzOiAgIDEwYmFzZVQvSGFsZiAxMGJhc2VUL0Z1bGwKPiAg
ICAgPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAxMDBiYXNlVC9IYWxmIDEwMGJh
c2VUL0Z1bGwKPiAgICAgPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAxMDAwYmFz
ZVQvRnVsbAo+ICAgICA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDI1MDBiYXNl
VC9GdWxsCj4gICAgID4gICAgICAgICAgU3VwcG9ydGVkIHBhdXNlIGZyYW1lIHVzZTogU3ltbWV0
cmljCj4gICAgID4gICAgICAgICAgU3VwcG9ydHMgYXV0by1uZWdvdGlhdGlvbjogWWVzCj4gICAg
ID4gICAgICAgICAgU3VwcG9ydGVkIEZFQyBtb2RlczogTm90IHJlcG9ydGVkCj4gICAgID4gICAg
ICAgICAgQWR2ZXJ0aXNlZCBsaW5rIG1vZGVzOiAgMTBiYXNlVC9IYWxmIDEwYmFzZVQvRnVsbAo+
ICAgICA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDEwMGJhc2VUL0hhbGYgMTAw
YmFzZVQvRnVsbAo+ICAgICA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDEwMDBi
YXNlVC9GdWxsCj4gICAgID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMjUwMGJh
c2VUL0Z1bGwKPiAgICAgPiAgICAgICAgICBBZHZlcnRpc2VkIHBhdXNlIGZyYW1lIHVzZTogU3lt
bWV0cmljCj4gICAgID4gICAgICAgICAgQWR2ZXJ0aXNlZCBhdXRvLW5lZ290aWF0aW9uOiBZZXMK
PiAgICAgPiAgICAgICAgICBBZHZlcnRpc2VkIEZFQyBtb2RlczogTm90IHJlcG9ydGVkCj4gICAg
ID4gICAgICAgICAgU3BlZWQ6IDEwMDBNYi9zCj4gICAgID4gICAgICAgICAgRHVwbGV4OiBGdWxs
Cj4gICAgID4gICAgICAgICAgUG9ydDogVHdpc3RlZCBQYWlyCj4gICAgID4gICAgICAgICAgUEhZ
QUQ6IDAKPiAgICAgPiAgICAgICAgICBUcmFuc2NlaXZlcjogaW50ZXJuYWwKPiAgICAgPiAgICAg
ICAgICBBdXRvLW5lZ290aWF0aW9uOiBvbgo+ICAgICA+ICAgICAgICAgIE1ESS1YOiBvZmYgKGF1
dG8pCj4gICAgID4gICAgICAgICAgU3VwcG9ydHMgV2FrZS1vbjogcHVtYmcKPiAgICAgPiAgICAg
ICAgICBXYWtlLW9uOiBnCj4gICAgID4gICAgICAgICAgQ3VycmVudCBtZXNzYWdlIGxldmVsOiAw
eDAwMDAwMDA3ICg3KQo+ICAgICA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZHJ2
IHByb2JlIGxpbmsKPiAgICAgPiAgICAgICAgICBMaW5rIGRldGVjdGVkOiBubwo+ICAgICA+IHJv
b3RAYXJpc3RhLUlkYXZpbGxlOi9ob21lL2FyaXN0YSMKPiAgICAgPiAKPiAgICAgPiByb290QGFy
aXN0YS1JZGF2aWxsZTovaG9tZS9hcmlzdGEjIGlwIC1kIGxpbmsgc2hvdyBkZXYgZW5wMnMwCj4g
ICAgID4gMjogZW5wMnMwOiBfXyAgbXR1IDE1MDAgcWRpc2MgbXEgc3RhdGUgRE9XTiBtb2RlCj4g
ICAgID4gREVGQVVMVCBncm91cCBkZWZhdWx0IHFsZW4gMTAwMAo+ICAgICA+ICAgICAgbGluay9l
dGhlciAwMDoxYzo3MzpiNDplMzo3NiBicmQgZmY6ZmY6ZmY6ZmY6ZmY6ZmYgcHJvbWlzY3VpdHkg
MAo+ICAgICA+IG1pbm10dSA2OCBtYXhtdHUgOTIxNiBhZGRyZ2VubW9kZSBub25lIG51bXR4cXVl
dWVzIDQgbnVtcnhxdWV1ZXMgNAo+ICAgICA+IGdzb19tYXhfc2l6ZSA2NTUzNiBnc29fbWF4X3Nl
Z3MgNjU1MzUKPiAgICAgPiByb290QGFyaXN0YS1JZGF2aWxsZTovaG9tZS9hcmlzdGEjCj4gICAg
ID4gCj4gICAgID4gCj4gICAgID4gTG9va2luZyBhdCB0aGUgc291cmNlcywgSSBzZWUgdGhhdCB0
aGUgZm9sbG93aW5nIGNvZGUgaXMgY29tbWVudGVkIG91dAo+ICAgICA+IGluIGlnY19waHkuYwo+
ICAgICA+IAo+ICAgICA+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJu
ZWwvZ2l0L3N0YWJsZS9saW51eC5naXQvdHJlZS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Z2MvaWdjX3BoeS5jP2g9djYuMy4yI24xMzYgIDxodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9z
Y20vbGludXgva2VybmVsL2dpdC9zdGFibGUvbGludXguZ2l0L3RyZWUvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWdjL2lnY19waHkuYz9oPXY2LjMuMiNuMTM2Pgo+ICAgICA+IAo+ICAgICA+
IHZvaWQgaWdjX3Bvd2VyX2Rvd25fcGh5X2NvcHBlcihzdHJ1Y3QgaWdjX2h3ICpodykKPiAgICAg
PiB7Cj4gICAgID4gICAgICB1MTYgbWlpX3JlZyA9IDA7Cj4gICAgID4gCj4gICAgID4gICAgICAv
KiBUaGUgUEhZIHdpbGwgcmV0YWluIGl0cyBzZXR0aW5ncyBhY3Jvc3MgYSBwb3dlciBkb3duL3Vw
IGN5Y2xlICovCj4gICAgID4gICAgICBody0+cGh5Lm9wcy5yZWFkX3JlZyhodywgUEhZX0NPTlRS
T0wsICZtaWlfcmVnKTsKPiAgICAgPiAgICAgIG1paV9yZWcgfD0gTUlJX0NSX1BPV0VSX0RPV047
Cj4gICAgID4gCj4gICAgID4gICAgICAvKiBUZW1wb3Jhcnkgd29ya2Fyb3VuZCAtIHNob3VsZCBi
ZSByZW1vdmVkIHdoZW4gUEhZIHdpbGwgaW1wbGVtZW50Cj4gICAgID4gICAgICAgKiBJRUVFIHJl
Z2lzdGVycyBhcyBwcm9wZXJseQo+ICAgICA+ICAgICAgICovCj4gICAgID4gICAgICAvKiBody0+
cGh5Lm9wcy53cml0ZV9yZWcoaHcsIFBIWV9DT05UUk9MLCBtaWlfcmVnKTsgKi8KPiAgICAgPiAg
ICAgIHVzbGVlcF9yYW5nZSgxMDAwLCAyMDAwKTsKPiAgICAgPiB9Cj4gICAgID4gCj4gICAgID4g
VW5jb21tZW50aW5nIGFib3ZlIGxpbmUgd29ya3MuIEhvd2V2ZXIsIEludGVsIHN1cHBvcnQgc3Vn
Z2VzdGVkIHVzaW5nCj4gICAgID4gIkdvIExpbmsgRGlzY29ubmVjdCIgKGJpdCBudW1iZXIgNSkg
aW4gdGhlIFBIUE0gcmVnaXN0ZXIgdG8gdHVybiB0aGUKPiAgICAgPiBQSFkgb2ZmLiBUaGUgZG9j
dW1lbnRhdGlvbiBpbiB0aGUgIkludGVsIEV0aGVybmV0IENvbnRyb2xsZXIKPiAgICAgPiBJMjI1
L0kyMjYiIFVzZXIgbWFudWFsIHN1Z2dlc3RzIGFjY2Vzc2luZyB0aGlzIHJlZ2lzdGVyIGJ5IGZv
bGxvd2luZwo+ICAgICA+IHRoZSBzZW1hbnRpY3MgdG8gYWNxdWlyZSBhbmQgcmVsZWFzZSB0aGUg
U1dfRldfU1lOQyBzZW1hcGhvcmUuIElmIHdlCj4gICAgID4gZ28gdGhpcyB3YXksIGFmdGVyIGEg
ZmV3IGxpbmsgZG93bi91cCwgSSBydW4gaW50byBlcnJvci4gUGxlYXNlIHNlZQo+ICAgICA+IHRo
ZSBkbWVzZyBsb2dzIGFuZCBteSBjb2RlIGJlbG93LiBQZXJoYXBzIEknbSBhY2Nlc3NpbmcgdGhl
IHJlZ2lzdGVyCj4gICAgID4gaW5jb3JyZWN0bHk/Cj4gICAgID4gCj4gICAgID4gYmFzaC00LjIj
IGRtZXNnIHwgZ3JlcCAtQjMgaWdjXwo+ICAgICA+IAo+ICAgICA+IFsgIDguOTM2Njk1XSBDb3B5
cmlnaHQoYykgMjAxOCBJbnRlbCBDb3Jwb3JhdGlvbi4KPiAgICAgPiBbICA4LjkzNjczOV0gaWdj
IDAwMDA6MDc6MDAuMDogUENJZSBQVE0gbm90IHN1cHBvcnRlZCBieSBQQ0llIGJ1cy9jb250cm9s
bGVyCj4gICAgID4gWyAgOC45ODE2MDddIGlnYyAwMDAwOjA3OjAwLjAgKHVubmFtZWQgbmV0X2Rl
dmljZSkgKHVuaW5pdGlhbGl6ZWQpOiBQSEMgYWRkZWQKPiAgICAgPiBbICA5LjAwMzkzNF0gaWdj
X3Bvd2VyX2Rvd25fcGh5X2NvcHBlcjogMTM1IGxpbmsgRE9XTi4gcmV0dmFsIDAKPiAgICAgPiBb
ICA5LjAwMzk0Ml0gaWdjX3Bvd2VyX2Rvd25fcGh5X2NvcHBlcjogMTQyIGxpbmsgRE9XTgo+ICAg
ICA+IAo+ICAgICA+IC0tCj4gICAgID4gOgo+ICAgICA+IFsgIDE1Ljc5MTkzMV0gaWdjX3Bvd2Vy
X3VwX3BoeV9jb3BwZXI6IDExMyBsaW5rIFVQLiByZXR2YWwgMAo+ICAgICA+IFsgIDE1Ljc5MTkz
NF0gaWdjX3Bvd2VyX3VwX3BoeV9jb3BwZXI6IDExOCBsaW5rIFVQCj4gICAgID4gCj4gICAgID4g
LS0KPiAgICAgPiA6Cj4gICAgID4gWyAgNzEuOTE4ODM1XSBpZ2MgMDAwMDowNzowMC4wIG1hMTog
RXJyb3Igb24gaGFyZHdhcmUgaW5pdGlhbGl6YXRpb24uCj4gICAgID4gWyAgNzIuOTg2Mjc3XSBp
Z2NfcG93ZXJfZG93bl9waHlfY29wcGVyOiAxMzUgbGluayBET1dOLiByZXR2YWwgLTEzLgo+ICAg
ICA+IFsgIDc0Ljk3NTI0M10gaWdjX3Bvd2VyX3VwX3BoeV9jb3BwZXI6IDExMyBsaW5rIFVQLiBy
ZXR2YWwgLTEzCj4gICAgID4gWyAgNzcuMDc0ODA2XSBpZ2MgMDAwMDowNzowMC4wIG1hMTogRXJy
b3Igb24gaGFyZHdhcmUgaW5pdGlhbGl6YXRpb24KPiAgICAgPiBbICA3OC4xNDIyNTFdIGlnY19w
b3dlcl9kb3duX3BoeV9jb3BwZXI6IDEzNSBsaW5rIERPV04uIHJldHZhbCAtMTMKPiAgICAgeW91
IGhpdCBvbiBQSFkgZmlybXdhcmUgYnVnIC0gcGxlYXNlIGRvIG5vdCB1c2UgUEhQTSAoIkdvIExp
bmsKPiAgICAgRGlzY29ubmVjdCIgKGJpdCBudW1iZXIgNSkpLgo+ICAgICA+IAo+ICAgICA+IC0t
Cj4gICAgID4gOgo+ICAgICA+IFsgMTM0LjE1NjY4OF0gaWdjX3Bvd2VyX3VwX3BoeV9jb3BwZXI6
IDExMyBsaW5rIFVQLiByZXR2YWwgLTEzCj4gICAgID4gCj4gICAgID4gYmFzaC00LjIjCj4gICAg
ID4gCj4gICAgID4gCj4gICAgID4gMTA4IHZvaWQgaWdjX3Bvd2VyX3VwX3BoeV9jb3BwZXIoc3Ry
dWN0IGlnY19odyAqaHcpCj4gICAgID4gMTA5IHsKPiAgICAgPiAxMTAgICBzdHJ1Y3QgaWdjX3Bo
eV9pbmZvICpwaHkgPSAmaHctPnBoeTsKPiAgICAgPiAxMTEgICBzMzIgcmV0X3ZhbCA9IHBoeS0+
b3BzLmFjcXVpcmUoaHcpOwo+ICAgICA+IDExMgo+ICAgICA+IDExMyAgIHByaW50ayhLRVJOX0lO
Rk8gIiVzOiAlZCBsaW5rIFVQLiByZXR2YWwgJWRcbiIsIF9fZnVuY19fLAo+ICAgICA+IF9fTElO
RV9fLCByZXRfdmFsKTsKPiAgICAgPiAxMTQgICBpZiAoIXJldF92YWwpIHsKPiAgICAgPiAxMTUg
ICAgIHUzMiBwaHBtID0gcmQzMihJR0NfSTIyNV9QSFBNKTsKPiAgICAgPiAxMTYgICAgIHBocG0g
Jj0gfjB4MjA7Cj4gICAgID4gMTE3ICAgICB3cjMyKElHQ19JMjI1X1BIUE0sIHBocG0pOwo+ICAg
ICA+IDExOCAgICAgcHJpbnRrKEtFUk5fSU5GTyAiJXM6ICVkIGxpbmsgVVBcbiIsIF9fZnVuY19f
LCBfX0xJTkVfXyk7Cj4gICAgID4gMTE5ICAgICB1c2xlZXBfcmFuZ2UoMTAwMCwgMjAwMCk7Cj4g
ICAgID4gMTIwICAgfQo+ICAgICA+IDEyMSB9Cj4gICAgID4gMTIyCj4gICAgID4gCj4gICAgID4g
MTIzIC8qKgo+ICAgICA+IDEyNCAqIGlnY19wb3dlcl9kb3duX3BoeV9jb3BwZXIgLSBQb3dlciBk
b3duIGNvcHBlciBQSFkKPiAgICAgPiAxMjUgKiBAaHc6IHBvaW50ZXIgdG8gdGhlIEhXIHN0cnVj
dHVyZQo+ICAgICA+IDEyNiAqCj4gICAgID4gMTI3ICogUG93ZXIgZG93biBQSFkgdG8gc2F2ZSBw
b3dlciB3aGVuIGludGVyZmFjZSBpcyBkb3duIGFuZCB3YWtlIG9uIGxhbgo+ICAgICA+IDEyOCAq
IGlzIG5vdCBlbmFibGVkLgo+ICAgICA+IDEyOSAqLwo+ICAgICA+IDEzMCB2b2lkIGlnY19wb3dl
cl9kb3duX3BoeV9jb3BwZXIoc3RydWN0IGlnY19odyAqaHcpCj4gICAgID4gMTMxIHsKPiAgICAg
PiAxMzIgICBzdHJ1Y3QgaWdjX3BoeV9pbmZvICpwaHkgPSAmaHctPnBoeTsKPiAgICAgPiAxMzMK
PiAgICAgPiAxMzQgICBzMzIgcmV0X3ZhbCA9IHBoeS0+b3BzLmFjcXVpcmUoaHcpOwo+ICAgICA+
IDEzNSAgIHByaW50ayhLRVJOX0lORk8gIiVzOiAlZCBsaW5rIERPV04uIHJldHZhbCAlZFxuIiwg
X19mdW5jX18sCj4gICAgID4gX19MSU5FX18sIHJldF92YWwpOwo+ICAgICA+IDEzNiAgIGlmICgh
cmV0X3ZhbCkgewo+ICAgICA+IDEzNyAgICAgdTMyIHBocG0gPSByZDMyKElHQ19JMjI1X1BIUE0p
Owo+ICAgICA+IDEzOCAgICAgcGhwbSB8PSAweDIwOwo+ICAgICA+IDEzOSAgICAgd3IzMihJR0Nf
STIyNV9QSFBNLCBwaHBtKTsKPiAgICAgPiAxNDAKPiAgICAgPiAxNDEgICAgIHBoeS0+b3BzLnJl
bGVhc2UoaHcpOwo+ICAgICA+IDE0MiAgICAgcHJpbnRrKEtFUk5fSU5GTyAiJXM6ICVkIGxpbmsg
RE9XTlxuIiwgX19mdW5jX18sIF9fTElORV9fKTsKPiAgICAgPiAxNDMgICAgIHVzbGVlcF9yYW5n
ZSgxMDAwLCAyMDAwKTsKPiAgICAgPiAxNDQgICB9Cj4gICAgID4gMTQ1IH0KPiAgICAgPiAKPiAg
ICAgPiBXaGF0IGlzIHRoZSBwcmVmZXJyZWQgd2F5PyBXZSBhcmUgdXNpbmcgbGludXgga2VybmVs
IHZlcnNpb24gNS4xMC4xNjUKPiAgICAgPiBidXQgSSBzZWUgdGhlIHNhbWUgY29kZSBmb3IgaWdj
X3Bvd2VyX2Rvd25fcGh5X2NvcHBlcigpIGluIHRoZSBrZXJuZWwKPiAgICAgPiB2ZXJzaW9uIDYu
My4yLgo+ICAgICA+IAo+ICAgICBQcmVmZXJyZWQgd2F5IGlzIElFRUUgdmlhIE1JSV9DUl9QT1dF
Ul9ET1dOIGJpdCAtIHRoaXMgaXMgYSBsaW5lIGluIGEgLyoKPiAgICAgY29tbWVudCAqLwo+ICAg
ICBJIG1hc2sgdGhpcyBjb2RlIGR1ZSB0byBhIHByb2JsZW0gd2l0aCBQSFkgZmlybXdhcmUgYW5k
IEkgd291bGQgcHJlZmVyCj4gICAgIG5vdCB0byByZWxlYXNlIGl0IG1lYW53aGlsZSAoSSBhbSBu
b3Qgc3VyZSBpdCBpcyBmaW5hbGx5IHJlc29sdmVkKS4gV2UKPiAgICAgbmVlZCB0byBydW4gdGhl
IHZhbGlkYXRpb24gY3ljbGUgb3ZlciBhIHdpZGUgcmFuZ2Ugb2YgcGxhdGZvcm1zIGJlZm9yZS4K
PiAgICAgPiBUaGFuayB5b3UuCj4gICAgID4gUHJhc2FkCj4gICAgID4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiAgICAgPiBJbnRlbC13aXJlZC1sYW4g
bWFpbGluZyBsaXN0Cj4gICAgID4gSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcgIDxtYWlsdG86
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmc+Cj4gICAgID4gaHR0cHM6Ly9saXN0cy5vc3Vvc2wu
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuICA8aHR0cHM6Ly9saXN0cy5vc3Vv
c2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuPgo+IApUaGFua3MsClNhc2hh
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
