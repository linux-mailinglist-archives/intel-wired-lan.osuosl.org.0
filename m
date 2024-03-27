Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7F988EB9D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 17:50:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 717C581F8B;
	Wed, 27 Mar 2024 16:50:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 284lTHMZnzll; Wed, 27 Mar 2024 16:49:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCD3281F3F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711558199;
	bh=fWs+kYpQEs8t0m2VckWHNcdjQMeFnqEq8ogSy/S8Neg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=l1LzcZlyvG3gxhbu964owOt+wSnBbT4+nCbpuiX0qGK7nmzHY0ZFL1vYOl0TTMSZ4
	 wpc60HqPPxHuelQNo9DGN876tnhHR1qvoYKfv1MmMFWk2XUIs/0DJheVxGXW0KhnT6
	 UlnijB+wgjmt+r2GoL5IyQkV0tHe9ouF4M3rg+LY6wkhNpnvQdrG4dxxhAF1bYNXkV
	 z4PszmVSgk3/9ongQYDQafBekAJcYDpgfk2A1oTkgrdXFPnCOtIMgArjinszbC20tg
	 6JHkxAYYVrbH1mJwQ2rml/RTKQsdfaeVOU0KgaDpvM5xRm4Kwcr71hFhw/eCHdDKyR
	 zu92uARpqSm8w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCD3281F3F;
	Wed, 27 Mar 2024 16:49:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8B78B1BF342
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 16:49:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 82F17402E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 16:49:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vP5BDu8f12oe for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 16:49:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3EF89402A7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3EF89402A7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3EF89402A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 16:49:54 +0000 (UTC)
X-CSE-ConnectionGUID: d17eMDPATnO/HLED9nGoWg==
X-CSE-MsgGUID: Nw17wp7aRdqgAK1deZWkLg==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="32119345"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="32119345"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 09:49:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="53830120"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Mar 2024 09:49:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 27 Mar 2024 09:49:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 27 Mar 2024 09:49:44 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 27 Mar 2024 09:49:44 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 27 Mar 2024 09:49:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dV+CqFNvxc8G/nr3c0BbVKdImJV/aFDZNzEDzd+utRLPzlPlYTPLhNXR9RKV+6JLNj0ecbOiEdULAcz2yI13+N629JOvoAQ4hCETZ7WSsnkUxvb2B9KZnrIMDtzP+eGX7Ln6vOi2pH2WwSudreDMbL3f6NkyZc8TCpHBkyCyD4TOustdqweHGP5+OWBKbHImSWqnsww1O6iL3kugTCCOvgqIH4kHAdN5ZYl2xNPYpvwGvoK81/Rj+/Emh/3icdSxtA5dFOX/mekaqlr9Zbkmob77wY3kUCRoDCo2hiC+2wyBDdmiO/oEvqcu9BRtMWKnKQJLsTtfniY2Ld1Pyvn1og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fWs+kYpQEs8t0m2VckWHNcdjQMeFnqEq8ogSy/S8Neg=;
 b=RDJIwEc9ikUdUegWLGvmSkXp5//N1YYpPz7L+ObqhpkhE6OU2VEk3DR333hz2LDB7zl7Cm+QpwENAfANDCPtvl4B7Du2N070OwCX63Ru6J3gH3lcti3RaHHPPRVtDBy2SXi0wpKPjb2VO/f+qcAu0cEnRp6MZcuqtfkUIbT3/QI7gCSR5aJARYSqElCj0anXAXSCdyotDljLD6srIGXJOZBVaAcXKJs7fBdePXxzCDdhqz8DwaB11f6j9E/Ph0Sz+PKOa2eyFdS9OOtsGhfhQKxUjzTEb423Eo8dXmlAHcWSbcvvLZoA/+4kVEAYO5yP5LrGwHBID4xh7kcNed8VCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SN7PR11MB6873.namprd11.prod.outlook.com (2603:10b6:806:2a4::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Wed, 27 Mar
 2024 16:49:42 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9%6]) with mapi id 15.20.7409.031; Wed, 27 Mar 2024
 16:49:42 +0000
Message-ID: <09fdfc0a-285e-4f1b-9d2a-d7b9b97dbbad@intel.com>
Date: Wed, 27 Mar 2024 17:49:27 +0100
User-Agent: Mozilla Thunderbird
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Yury Norov
 <yury.norov@gmail.com>
References: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
 <20240327152358.2368467-3-aleksander.lobakin@intel.com>
 <ZgQ_rP5KnMfL-0b2@smile.fi.intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <ZgQ_rP5KnMfL-0b2@smile.fi.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DUZPR01CA0091.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bb::26) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SN7PR11MB6873:EE_
X-MS-Office365-Filtering-Correlation-Id: 235fce09-520a-473c-bff8-08dc4e7de61c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uIpN05bDjC8/wvqDYMoOSHOvOlBrTk+36U3k+T61Dke0cu0Kz769xRqNu1d2mBaVswINY7a2z1pKatUn0R5xHYgt166lHmC5A5ZB00ctHNZDHz4ehscsFvKBcaY/rNAtGpWyigFz7x/LakTYv1m/CM9z4eLpOBQc5Mf/M+GAaGkalmBOm9sfDlzZQhjXn5CF6Iz+mAfl/ifuyUk54GV5sctbxPsMfn0cE87qBbcGqB7GgSWeiygs+O84YyrVHlw+vVk/6RZPbR+ScYlX5Tb6dsP9Uv1q6EouFOObkewqluSn656IlpMsTyJSK0P9McBgpqeCa4ckOPEuhlBw5x4gEXaTTFq2o5Mqo/UGf2ckKX1IiY9cxFfkhSq6CdEV8V382WWkXMGBZfmGs4lX+7HL2hxrmced5qmI5JH2cyKdqhuKwFvI8O0d32v6JB1M/o5jQd4gDujIEkNp72rvbqKHuSQ9TBfdE2WEpJPIiEcqV0qzpgqdAKe34ePqeYgGjcBgzFku/K5uOML4XAJVIBqktt+iMUexXuw37Ii3wcs66MWoIp2tzfVgHcRLXzmST2b4/8TKwQ2oJOFYz9zzx0aFWtwRY2t9V73JzTSq6yGu4ZjNFycnQBuHfJoA2KdWRCEg5jvuTf5jVcuduLvrWZ2avEWMh7USsIZJbv30s2apz4A=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(7416005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a3BGTVVPMnhudFN1NmJyTmticTFWT0tub1FOMXhPaENmc0d5NUFJd3ZoRFdI?=
 =?utf-8?B?TEJnc2lMRFVuL1FTSHcyd3k5TytqcXhkUVN1V2ZZNnpJcW9VTzNSVXJNM1l5?=
 =?utf-8?B?MVdLeXJGem42NExkWUg1Uk5WN2VBWG5GVnZaNnB5Vy9SMDg0dXhRa213eFNu?=
 =?utf-8?B?RVhvZEdSRW5ncVM5WmFxWXowSVZlNHl4Zytya1Fkd0lWSU9Qc0hiME9TWUJU?=
 =?utf-8?B?U04waHE3aWJOR2pheFVucFZUWGY1b1drNENmaGJ3QmZPbFRObXYwcWJROVdC?=
 =?utf-8?B?djBUcFdRYjQ1WWVCOGZ6THZlUXdFZnZyQkZFYnNDbTZZVi8yMEJrcDZOSFZh?=
 =?utf-8?B?bGFUUkcwUE5rbGIxL1VTWGpiLytZM0ZFempuWGl3emJ2SjZmT2RGRk1PMUtx?=
 =?utf-8?B?UXlqWHRXOS9jaVozS3J4TVV2dEs5ZTFQMHR4b1hnM1c3SWJWV3YrTDlXVUl6?=
 =?utf-8?B?WnNTUkVMa2ZBckRkZiszS2JjOUw0U3lkQWRmMFd5b1hGTVgwOGg1MGoyRG5u?=
 =?utf-8?B?cjVna2J5SEV1Ukc2eE9SdVhyT2o2aFEzbEtvYnBtRFZ3VHZTblNvQUZobUl3?=
 =?utf-8?B?Um05MFNENnM0UVBzaCtTVWhXVys0amNFS2ovY0VJUmJGSGhxOWFEaTFEcEx6?=
 =?utf-8?B?Q0VoN2VsZ3BSdmxMbFFtSkRXV2d0NjVlNHVOV2sxeDMrZllpMDc1aHh5U0xt?=
 =?utf-8?B?UUpxTWc1TEgyWE5QcjJlSDh2UW0rY0U2OTJpNUZHSVBzbDBDZFMvNmxETDV1?=
 =?utf-8?B?T1ZQU0dxY1ppWFFBVEhQWmFHVXd4OHk4anErdFhhSlFwTGRJT1ZleWdtcm1W?=
 =?utf-8?B?VXl0WXJLaTJia1diZ1BKcjRndWtvdlYreUdHRi9uaG9uVjJQZTVkM25aUmVv?=
 =?utf-8?B?MCtNakNNWXQxdEVKaC9NdlZnZzdWd0gxWlgrTS9WQmFzNksrTGFKdTJrM1A2?=
 =?utf-8?B?NXVFTlg4MzQ3YXo4YWJWM0YyQkRpamY2QWJYTWdnSGU2SlRNVWNDNlFtaDNs?=
 =?utf-8?B?czJiN3RwTUJhWVB2dld5UDRPT1laWURnRlVwcE4zY25yYlJvTW5CdGl3RXgy?=
 =?utf-8?B?YjR1cmtkbVdrK3NYL3JtSTVLeVNGMlpIMUd5K1FQaEFVYml2aFZ2ajB6c0Qz?=
 =?utf-8?B?UEV2YTFHSjgrRjRBcjVMYUhFS1RUTk5ZdmdkZWlyTllhNGVNZDNPMG1OU1c4?=
 =?utf-8?B?Z1RydUY0YklvY2lvM1lHNDU4Tm93ZTBwdzRCMVVSWjdpVjdaUmYvNkRXeDl4?=
 =?utf-8?B?VzBiRzNKcUJTeUsrM0NFNFRWTHhGbHdjSkJQVURZTGo4d29EMVQrM2d5Z2VN?=
 =?utf-8?B?a2RTcUgyRS9yWVg3VlRpNGJRMkYzTG1aRjJ5SDJDTVhYcjJZRWEvMHcxYWZO?=
 =?utf-8?B?a0laZHRvRnpOejFOcjhUSnF0enJzaEZVTko5SWdDelNJZDZlVGNEZ0hFT21s?=
 =?utf-8?B?NjBGV3Jxam9kMVJmSE11MEgrSzJ2d200dmhhenFRYUR5Q2VtWWJsbnpyS2R5?=
 =?utf-8?B?ZWVZd1ZwZ2E0a1lJNGlFVyt3NGdhNE1Ba1ptOWRWNFJ5dEZKakdOUnhzaVNr?=
 =?utf-8?B?cUltVS9INDM2RXprbXpiRjdhUWxBTHRzK1MrWm5hOUozYXlROXZCOUVwaE9W?=
 =?utf-8?B?N0MwNTZMSlN2RmRPcWk0RVBhWENsVTUrYlhLcU5zUTErRXNab29sS2Nwckg3?=
 =?utf-8?B?czF2aVljbGVTaFpINW9WczloeWJWZFpPMjA4V2hycktuNURpZDlaUVQzbHF0?=
 =?utf-8?B?WlJNWlIrVXpsUEV0SUR4R1BVaE9rNmhnY3grTXpYMEdoZ2lZenRUbjZTTkF2?=
 =?utf-8?B?OXNCemtQemVnQkZZNUJYdXFCRVl1U0J2a3RVNlFhazJQZXNWNTNDTC9MVDZq?=
 =?utf-8?B?c09XS2YvYVU0M283QlM4RjR4QUZIUE8weUJyY1RMTHRmQWhQWG5YMGZCTVFH?=
 =?utf-8?B?aTZlWnJxcGxwTGE4SFhtS3h6WUlpak0rRGFubkxYY0FaSFFpM0t3b0VhNUdz?=
 =?utf-8?B?end6bXYrejdLZUYxL1p5L2FyRG9walZFNHhHM2R0QUJpYUxiaFE2NHg4emNW?=
 =?utf-8?B?TG1LaW00WlFtb1U0YmtXZWFyQjlCakJUaEN0T1Rxc2RmNjl0L3FKY0ZuaFVW?=
 =?utf-8?B?alBUZTJ5aXVCNFhIMEhpckUySU1tZDFIR0s3d3hIekJycDFtdHZVc0pvempu?=
 =?utf-8?B?L1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 235fce09-520a-473c-bff8-08dc4e7de61c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2024 16:49:42.0308 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jLDC0Wec4wTv1x1rJJJy6bUdEtTlx548t6hVhVguszDXIsxpd8YVIJHSJPoV49h7XULxm+t1BuVjPcy9mdK69dtEVpcygJk3nx17u+6oTr4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6873
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711558195; x=1743094195;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xJ/szZ/aaBKScQbdEE076RQHBqDD83kBQObqVzwTlUI=;
 b=KxrVmJ+JU+eKyfN3dkmA1E12NbzYYvoTUlfCKYNcg/r8yS1QFfO4OgZX
 7c9xM6O2CBfF8nShqHo2OrH+c2IXHVBopgcdWu3+OTgRtUGQw4LzvEZ5x
 8p6Kfbfr1JTHtRXCMGzigiunYeQXE7snZlW3bzk1arKEP6Ire2l5HUe/d
 0HQhPtI6vSZzTABaxS73ZC6so29tPPc0uWOnBx3+195KaVzykJhFLNBA/
 Gtc9kJFe3fFrsPv7YJArZwZg1tryMlKz4NvdmFLbBVBayAcVJwefMHeS4
 wRpRoPnty+65kzEyuz00ihyflAzAiomgdcyVCYYwB9xVkGhOUVP+L9QyT
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KxrVmJ+J
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 02/21] lib/test_bitmap:
 add tests for bitmap_{read, write}()
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Alexander Potapenko <glider@google.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Date: Wed, 27 Mar 2024 17:47:56 +0200

> On Wed, Mar 27, 2024 at 04:23:39PM +0100, Alexander Lobakin wrote:
>> From: Alexander Potapenko <glider@google.com>
>>
>> Add basic tests ensuring that values can be added at arbitrary positions
>> of the bitmap, including those spanning into the adjacent unsigned
>> longs.
>>
>> Two new performance tests, test_bitmap_read_perf() and
>> test_bitmap_write_perf(), can be used to assess future performance
>> improvements of bitmap_read() and bitmap_write():
>>
>> [    0.431119][    T1] test_bitmap: Time spent in test_bitmap_read_perf:	615253
>> [    0.433197][    T1] test_bitmap: Time spent in test_bitmap_write_perf:	916313
>>
>> (numbers from a Intel(R) Xeon(R) Gold 6154 CPU @ 3.00GHz machine running
>> QEMU).
>>
>> Signed-off-by: Alexander Potapenko <glider@google.com>
>> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
>> Acked-by: Yury Norov <yury.norov@gmail.com>
> 
>> Signed-off-by: Yury Norov <yury.norov@gmail.com>
> 
> This is a bit strange.
> Can you explain the SoB chain in this patch and similar which have Yury's SoB?

Yury gave me them in the previous thread ¯\_(ツ)_/¯ I didn't ask why.

> 
>> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> 

Thanks,
Olek
