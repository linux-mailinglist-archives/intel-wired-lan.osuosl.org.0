Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9D37D08C0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Oct 2023 08:50:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ACF51431EB;
	Fri, 20 Oct 2023 06:50:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ACF51431EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697784613;
	bh=xn0eLrSBLjPdmSGnvmaZkkHbAso5FqhlhyTZcH9mk4k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eQkOGzHLXmfrNCn539TXHi3KsF9g2vFfq+9+PczVhz0fpAG9wqsYXLpS+6G3vu+IO
	 DZ8jws1+36W/gHzEUngZRTBtpz6HIxhLnNkvyTrn/MUIDzmlBH35zF7N+6ROJ5blNR
	 TEtFw1x3tJUDr0G9axUWOka8HzsOUtYfX0+Vq1Pk/GaJ0q6gNkVQGZMry1YcYMlW8i
	 JQoTEhYuHDc2wvoO6vVNTqew3eu6xxHVwGVsdTpAVbdt/A4GlKaIX8MFeCMRsA7Yaz
	 Kw0Io2NQpw1PYPp1gepDPa5EyAxmOSpKyh8oc24gzP09wsCP1FZe/GLeKxzreN6Tu2
	 4BwMrYnzC/JFA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UAoVbQw4R1aE; Fri, 20 Oct 2023 06:50:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 34166431E7;
	Fri, 20 Oct 2023 06:50:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 34166431E7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 027311BF2FD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 06:50:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CA1C8431E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 06:50:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CA1C8431E7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id clrW9dRvHv37 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Oct 2023 06:50:05 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 74DF540160
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 06:50:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 74DF540160
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="385317572"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="385317572"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 23:50:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; 
   d="scan'208";a="5290019"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Oct 2023 23:50:05 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 19 Oct 2023 23:50:03 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 19 Oct 2023 23:50:03 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 19 Oct 2023 23:50:03 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 19 Oct 2023 23:50:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZPLBW0CGX5q9E2iwJHp3040zIbDyKg2GB+IpeUbeiQAYPYWychLesa1kiQdIN1e46ZPuG51NpCdQQrCTSWSCBlOUOXh5amKnQ0UQ/Pvv0A7VRmaxIMpr1dkJgNHtjIGGVbO8/Cm6DZauqcml6OpHOAeT4hR2Xecwq3jAD9w27FHFl3mfvL612K/9DMPywZ3sRE3t+TTADlcboBvJRouxUiSBbDmnsNMQWMEK1tswQP/l2fVleVCtCkFg+Y7bSmZ4/dQLfa/Uq+FkBdgaB5QZczmgGMS6YFw6LjVVPE4Iob11cQkpYqlM/MmxGGLTu0sePsWYiRDu7CzrqPMnmy6qnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HvLuF4bbKaVyOY+xHRylu4yJH0nNbtNSYbBG1961hJE=;
 b=kbUzgpKjqdlp5JtVF1HiZYDr3aHmRNKVjwR8oCGzzDWuPyJSUWi1+p2bxDH0gCXpYE7sLu6OO+pMMmxafYzCV8dd6W29K6rVMtd+XkkfuYBxx+RKqePGBm60MwZGRA+eK/0x+KR1lx9a3NDR2/nPBYoWjRB6UdY65rAjIj8ehqXeV9rEGJb0P1oYpoEgS3gvMWiWA7FE3vPcSeB14LhHSKCV/VeXCpmNgWbL8S5AJ7O6s1JSA/Ybf0kFgXEEfnVKnoHCLLPhiPWvg/LR8/ILIJlMOzsdCPqP0t13Ekan4Mr7RCgmoWSnj19QBpvClVO665ymewV3eE+WLYBW1m/PzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7838.namprd11.prod.outlook.com (2603:10b6:208:402::12)
 by CO1PR11MB5121.namprd11.prod.outlook.com (2603:10b6:303:98::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Fri, 20 Oct
 2023 06:50:00 +0000
Received: from IA0PR11MB7838.namprd11.prod.outlook.com
 ([fe80::a35e:550e:d46c:c777]) by IA0PR11MB7838.namprd11.prod.outlook.com
 ([fe80::a35e:550e:d46c:c777%7]) with mapi id 15.20.6907.025; Fri, 20 Oct 2023
 06:50:00 +0000
Message-ID: <150f4c9b-5107-feca-c753-9390f29193e6@intel.com>
Date: Fri, 20 Oct 2023 14:49:49 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.1
To: Jason Gunthorpe <jgg@nvidia.com>
References: <20230918062546.40419-1-yahui.cao@intel.com>
 <20231016165120.GA441518@nvidia.com>
Content-Language: en-US
From: "Cao, Yahui" <yahui.cao@intel.com>
In-Reply-To: <20231016165120.GA441518@nvidia.com>
X-ClientProxiedBy: SG2PR02CA0073.apcprd02.prod.outlook.com
 (2603:1096:4:90::13) To IA0PR11MB7838.namprd11.prod.outlook.com
 (2603:10b6:208:402::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7838:EE_|CO1PR11MB5121:EE_
X-MS-Office365-Filtering-Correlation-Id: 17b320ba-cd6d-486c-4ebf-08dbd138c7d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8/q0io0VDy0kCzoVQe6Th31juyMjp/L/1LpmVF6P5FJwXZscyLJqxm9o9uEWFmMbtY1pvfTWbHAD7/N8AAf0ejcbnknh7uQ4iI7BsLdQwlERyqWqNmD+W1C+224wBaHQbXW0iOJ400M6WUVPls7akP/9qPowRm1A9KI+h2gzFIA4BlZAVLcZnJSKA/dnk1eddlYVrAZ+sx9uEmg0jqdGQRU74XjOjtVSzBof9FdQ/OzukRvGesXoni1x06CTtPVh9D0SVIOKroktVg0LwyIqSE3anxwB8/eyk6u039cDFpYIZIQK5hWP4RUlylaG6fgzgyfV8ewz9wgo5MRGsJVnADOKGoLrWsZXDPbFpfWCJwocUkctDg4s4IMrnlzAnfds4yNAwi8651F9bu5xX1PHsCb2M2iBVgW6gypfINlUal6VuwGmfjjB302p2AqUJroZyaB4fvgL6ercJ/tg99gjd6l6Cc5PEfYBJbMop3EUXTLxHLpdxipBOdWxicX+ttfphIKQIb31YVmA6W9WChp1Eoa2ApWyXckRPeWydRt8pHA53Ualx81tGpA90A82eOSM8lAyP5nqcswGS9lUF+Q2zr640JxCeNVZBvMad+y5E8fAWz/XmzSkQxBuKpNkP/vl34dcaTBWYmvh56uZJhFxtw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7838.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(346002)(376002)(39860400002)(136003)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(36756003)(41300700001)(8936002)(8676002)(4326008)(5660300002)(4744005)(2906002)(31696002)(7416002)(86362001)(31686004)(6506007)(6666004)(53546011)(83380400001)(6486002)(38100700002)(6512007)(2616005)(6916009)(316002)(107886003)(478600001)(26005)(82960400001)(66476007)(66556008)(66946007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVMzVThzSTArR29xY3hrZVpMOERzZDRoTU5peDdKOUxrbCtjUWZjeFdTc3lS?=
 =?utf-8?B?RUdpb1JUM2JyV1dEUDk2RkxUWExYVFdvemdCYTZBRjNtVkFFYU5DM2I1VlNO?=
 =?utf-8?B?b2Z5Y1k0Y0JOZGkxSkQzOGgyQU9Cc2laSDhZZ2gzaEJKZ1RiSkUweEpObGtp?=
 =?utf-8?B?VmhSQlNKdWY2dFZyTHl1TFFub3cxZmlkR084WnhWY2JqUU1WWFM2dmFTMWh0?=
 =?utf-8?B?OXYxK0NMOW1qREhDSVI4Zm9xWU1pdGplRHBJV0g1UVNnWVAxYzVaUGRaWFE1?=
 =?utf-8?B?dmxkRW1Ia0dCQUFERmZwTkwyKzJBaW92TDIycmNDOTBTY2M0SzJtMldCeGF0?=
 =?utf-8?B?NjlRRnFtdy9SbG5nUjZiRUtOMTFRWStLVm5jdVBwb2dZQjJDSHhnaUpJb2h6?=
 =?utf-8?B?ZDh6UnQ3czRDU21aUXlaUWtsNWp6QmhDdmRkVnIyZ0lqejl5dko5R0pCa0Vr?=
 =?utf-8?B?alNiVUFqcEVFS2NETSt5bVNXSWt0L2JZNDJPcWFMSmhOcVV2YmVxSjE4cFU2?=
 =?utf-8?B?M3FmUlR0Wjg2ZDFZaUNaUXdMVVZHM0xqYThiNTlrdVExYUVOTmd5dzIzSW9M?=
 =?utf-8?B?b2JaTjVmMHl2STA5dXFGMDduaWo0N3dWN29VU2tBL1FOMFUzWTRaOXJTOHJx?=
 =?utf-8?B?cnQrc0tnMDNBU0JlWmxtcHgyeDl4RGs5N3ZuRkV2RFJzb1JLT1pzbW14YTVq?=
 =?utf-8?B?SHdMbkl3OEMwRmdjaGIrYzF2NDVPMXUycXJwRVlKTkw2MWQyNkpUZWVjczhu?=
 =?utf-8?B?TTQyT2RaU05QNUxDYnBVaVBlYm1UYTNsWmtmb0xrKytXaTM5WmVmUEJ2blE1?=
 =?utf-8?B?K2p4ZGRnV01ZZEpsN3FmT0dIL252bFA4WE9UZ1ZHVWtKVTM1VFRHbmcxVFp0?=
 =?utf-8?B?YmRvK3N3WmRuSiswczNFTXZjMnNSZTVBUXRvVGw5TnV0R0VkdFhTT1AwY1kz?=
 =?utf-8?B?ZXZoUkpacGtUa1RIR3lnZW9LSzF2aDJCMThhOXF3dSsrZksxbHZPQTlXazhZ?=
 =?utf-8?B?eVNOZXF1RXlyVEhhaWppTkFDd3E0N2Z6d2JSSGNwNmxrUzFSSkF1RUZvbW9q?=
 =?utf-8?B?Umc1YjhKWEVoNE41YWZUTGFIMDNmMnFyYU5VUU1FYXFoRUtvOFVUeVViSmFU?=
 =?utf-8?B?enVmODRuL2NYSkZnYTVndWo3WHdWbWxkQU4vRVFoR2NuN3NtMHRDYU4rL3h0?=
 =?utf-8?B?ZUJNbk0wNXRvYk16TWFFaGlJQnFoZWg0NEVZUUV2K2JmTFlibVQyWU0vTUlk?=
 =?utf-8?B?aXdzVXN3ZHFYN2p6a1dlYXNNSG15Q3FwbHdsaldGNStSeHVrTHFleVZ4ZHJk?=
 =?utf-8?B?UDJNMHF5MTNaNWJ2bWRnK1JlbUREYkpRdnMyd2RIaW1ldGJHeDBLdEI2TWRt?=
 =?utf-8?B?YjNERk8rYkdtVWU3M3J3cUZtbC81eXcyT3VyV29SNDMxU1NEdHVWOHA3MC9G?=
 =?utf-8?B?TG4xQlpXbkQ0NDNYemY1SXZHOE5TQitDK0NqQ0FpUFNabVdibTdTOXNIV1Vw?=
 =?utf-8?B?UTV5MnJBa3djWE5GelFSaG5QdEswZWorRWM0YzNBTzBHaVpOblVqUU9ZcEtT?=
 =?utf-8?B?UU04U2QrMW9HaXc5bUxCRWJBMjJUWG1mbnUwdEE0NTB1RTlTVzRYWnM2UHM3?=
 =?utf-8?B?Wll6VExvTVp0Z1NIK1JuZkQyUTZMOVpmaEtzVlVlSlR0UGpsem5pTEExcVYv?=
 =?utf-8?B?Vnl3TTVGdDF2MmlwNEFwVForRG5RemhSeUl2cFFDdXlaRWxrVkRPZ1NtQVpk?=
 =?utf-8?B?YmlmeGo0UUFIbnFNeVdRV2dVRjNiR2ZJVU5JZGIzZWhmSldySGtCZzZJMktD?=
 =?utf-8?B?WXdwY0VrSk8vTC9sRTlwWnh2QVI2d2FzYzVlWVdTeVdZU3dDcGVvM2hYTUxB?=
 =?utf-8?B?ZTFUV05mYmdHNm9UVU1ZeU51cUZDS1ZXZ05uc1pEZmRHdWlIdEZWb3pTQlA2?=
 =?utf-8?B?VnhVNUN0QU45c2RaaXNEVElKSDFJeTZ3NnFJYms4bklnQVhPdDVOcHNnakdv?=
 =?utf-8?B?Z0gxRks2RjFNeDVza0M3eGoxcGNQaTVYcVdrY2RhNWxIRDg5bjBucXFBTHM3?=
 =?utf-8?B?VzRqR2FTWEpNRVJvTjN3cnRTbWRxTmZieXJCbmxiOHk5Ti9aQ21DMEZ0b3hK?=
 =?utf-8?Q?biY1HA7Qm4rwG1OLOrs+ba4PA?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 17b320ba-cd6d-486c-4ebf-08dbd138c7d3
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7838.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2023 06:50:00.7159 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1ehsuYPvZqQ8OaQtA1Zc65X+GC9Cp+DYHtdvWCAtIwxGbajYpQgUXbjtxAQM6FwLRsGt04g9wmLNcLDz+G3H4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5121
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697784605; x=1729320605;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HvLuF4bbKaVyOY+xHRylu4yJH0nNbtNSYbBG1961hJE=;
 b=Nr8nfQaLBcTkDwAT96KGTFT+8+m1XNodYlK3GilJZqYBko0erTXdu18F
 XLaziQKSv9baqNFPaXDzc/ZiL0qxqvfRz8z+h5OWbvqalE1UYIUM6bu7Q
 Wo4NXyyFROLIdFzRUxaFNVrVdP8yWbDCz1NtZuRq5+R4RWKZZGdqSJm2u
 QQ80Zdoi1FiDfKDmwJykze7Tw61/LsdV1F3/275RZ9Wn2lgKR4QpmbYDO
 zMQMA0nfar9kq/xUtFSpOMTTqoE9QOpVKvwln4+CS9By8fx7urV0+ofbS
 Ff9SUibIk8NVnotuaodZS0JkeLgVmrvJQF4LFFXE5IAMXXK/gdaZQ0xwR
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Nr8nfQaL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 00/13] Add E800 live
 migration driver
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
Cc: kevin.tian@intel.com, yishaih@nvidia.com, brett.creeley@amd.com,
 kvm@vger.kernel.org, anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 edumazet@google.com, shameerali.kolothum.thodi@huawei.com,
 jesse.brandeburg@intel.com, alex.williamson@redhat.com,
 madhu.chittim@intel.com, intel-wired-lan@lists.osuosl.org,
 sridhar.samudrala@intel.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 10/17/2023 12:51 AM, Jason Gunthorpe wrote:
> On Mon, Sep 18, 2023 at 06:25:33AM +0000, Yahui Cao wrote:
>> This series adds vfio live migration support for Intel E810 VF devices
>> based on the v2 migration protocol definition series discussed here[0].
>>
>> Steps to test:
>> 1. Bind one or more E810 VF devices to the module ice_vfio_pci.ko
>> 2. Assign the VFs to the virtual machine and enable device live migration
>> 3. Run a workload using IAVF inside the VM, for example, iperf.
>> 4. Migrate the VM from the source node to a destination node.
> It looked better that the previous versions, I wanted to take a closer
> look but the series didn't apply to v6.6-rc6. When you send v4 with
> the compilation fixed include a git link please
>
> Jason


Sure. I'll send next version with compilation fixed and a git link.

Thanks.
Yahui.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
