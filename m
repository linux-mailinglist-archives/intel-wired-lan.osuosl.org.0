Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B5A89D475
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Apr 2024 10:34:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 44C99414D6;
	Tue,  9 Apr 2024 08:34:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Aep1OtXcU9Yo; Tue,  9 Apr 2024 08:34:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 285EC40181
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712651682;
	bh=ymksxt2MbwDcIl1rFXsGgFI+ah7l9of5Z6FrpnsEY9w=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MxdZeILsvVtUDw7kYGsMkrQCTJFChpDD1eg2Q7Mo316t2ECii2Kra7hAaOcI+Wc9L
	 /cBx24fuLYTVOCKe1Y/CP59OUoTCPCABIWg2kGZ9syVqFG9QMZu5ICVOmlBjmzDLHP
	 U6bJ501c5DbsfhKsj02FpU2iSF7TaDYEdBpOiiyfyZq1u4psPfi8ZIV6qync8WNAF+
	 158Z2a6J872bFLRXqGoYsFclJvHtTyJFlg43N2nvqCmCdnNTAgXUxcC4ejpbKd2eYj
	 AYZO88P63JdON66qGkaMZUboxRuGAMnPcMtpqn8xszAOiZJ+a+6N/Kw/XMLJZMuQzF
	 KVboQvmS6BC0Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 285EC40181;
	Tue,  9 Apr 2024 08:34:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 50B7B1BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Apr 2024 08:34:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3BD75404E2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Apr 2024 08:34:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gDiTfecUV1cp for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Apr 2024 08:34:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D7B3040181
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7B3040181
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D7B3040181
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Apr 2024 08:34:38 +0000 (UTC)
X-CSE-ConnectionGUID: odS2uty2RdiF1FFh1SrKlA==
X-CSE-MsgGUID: 1htIbCrJT5+WvuOYD5cioQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="7869340"
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; 
   d="scan'208";a="7869340"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 01:34:36 -0700
X-CSE-ConnectionGUID: gm21NkEXRbOzNqw9jCAidA==
X-CSE-MsgGUID: 3Ig3+q+eQ9qy/giBYE+nOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="24892804"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Apr 2024 01:34:37 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 9 Apr 2024 01:34:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 9 Apr 2024 01:34:35 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 9 Apr 2024 01:34:35 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 9 Apr 2024 01:34:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OrvyCraqpA4KWXBC6VCK1a6jVpVCegrMjiVwoBcGNn35KDYEL0+zuZjN7dJbIU5T56Uk2TA8iBIyFt/Rj4OJ0PTucmLZ+SoBfUoNaeUEhJTaQIZuXi0moZVpwFWJrKVfmEZt8TDSwpRRFH4CM2RIoqQai6gtZX3/QTXn5I31i04sJSjAyS+YwQQkzXuEuuuEv6MdpICLIRKXKiBZoA9eS4gCmQ5thLmafsfKq5AdpT3yu9c7+rW0IbcoeDc2frM7zZlGYCHPJfYtbBDVecJGrW5sqob7j4aidKUQhS+ijONoKMsSGTDBmJkXitMtGktz3UKpdsobZ5dw6D+02v2INA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ymksxt2MbwDcIl1rFXsGgFI+ah7l9of5Z6FrpnsEY9w=;
 b=XzJhqy0OS/RPqmGh7UX7Dzidd7wV1+2jE0TviXJQ48t5bwg7yesch5En6UE0c6EeRXjySBN4LfrsfW473We7XFIARXFVM67YaHMoDSOe5hE92pWrMhnHZXGwQA1bGdXPZ23AHlIsnK0XurRpCSYMXr0Q3DpvMUYbEttfz28zH9h1+KHr1C5gDFcY16YRvXBNe979Kh/o/W5sFLXSHnFbGswWdqTi6wqZb6yCzIlT1/U3DdQKQYSeroa1g7zFfgqy0VtMH6wD6lnx/FCOqqKjq3FFPW2JIxc5qQrL0iqOCIuKLA2x8CYQpDlnd8OZhybmD678kcfhYgJ9kQiwKW+8TQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by SA0PR11MB4768.namprd11.prod.outlook.com (2603:10b6:806:71::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Tue, 9 Apr
 2024 08:34:33 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b3ae:22db:87f1:2b57]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b3ae:22db:87f1:2b57%6]) with mapi id 15.20.7452.019; Tue, 9 Apr 2024
 08:34:33 +0000
Message-ID: <4c99838f-3ee3-46ea-80e2-5b94336d7661@intel.com>
Date: Tue, 9 Apr 2024 10:34:27 +0200
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240408103049.19445-1-michal.swiatkowski@linux.intel.com>
 <20240408103049.19445-5-michal.swiatkowski@linux.intel.com>
Content-Language: pl
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Organization: Intel
In-Reply-To: <20240408103049.19445-5-michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI2P293CA0005.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:45::12) To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|SA0PR11MB4768:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2D1Vo639IiyImGg9FidIz17Q29RNQmh6kIKcaeOIkNHoHPWF7RN3u0mDiGQbrQrCghLQX6J3Ajd1YpRyTIMDuIAqcMD81WsNLUnDWDaQ1eabrS4YPBOlleHK63aFHelwmlRh12becTQ0/QGC5WRPHiFkUHXzZxBhjdORTl0Wtami3a6Dz7yi4KwidVDbF8CFT4f6wkwK9ytxeo1QIMFQvAZng5gYY/pwPNr8a4Y4pYwH9Q8ZFxcAvaDsmGICn5uqBrxesN20lRZk2ozV0KonaAD8Uu0xNt5FCNPU/pXT0bdUtZDgd7PYlfN1hKykuG4TnntBTuTvbjXw76G2+nqfFL5PJaxmF+FChtOFnV4WbdsVJEB0KBf7YMjChkHY64Mw7k7h9F9ETqEbYvkMHBafmEsDyHKfZoS+CIzez9V9y0qS/HLe4PAyqRTonx3K7/yJvyor+kxfZA4nfCdjrL/NE4fs0Xm/gApvCBdGf+Amjd/rvyrWJiO4S0ygNI1tGiIbK6Zffwf+gE4VUc6vGuQgBztAOdQFt5JNg/48KRTf1JYEeCH91/KpTBPHQYdCy6+RyeA4RCtRbEvKN/hCGF5EjFhz7RNY8TcaIRsZsE3rZPIp4bfvuSU4aylx3YpE9dn+WsJc9pJO2iPX5rmarozUm11qXprMoFPpMZm0hu9xQyU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YjhxaFJ0cmQ3bHIvcE8xbUtyUitEbDVBZUFiaGprVkg3NUF5WFJMR0NTTTFN?=
 =?utf-8?B?UUZtT3dqNTdWOHZjNTFWczdqZWQrcmUyVlJGWCtDM2pmdVdzS3k4dDhUaTk2?=
 =?utf-8?B?akd3Q3ZMVkZuNXN5Qlo0S3BGaU9JdmxOcVZUZ3RRR1JWOS9SY0F3alo5Vklj?=
 =?utf-8?B?ZGhpWHROZ1BhcUU5TExHOHIzeFpHdVloRkIxOGhQRHNVQk1WdTZwNldIRS9W?=
 =?utf-8?B?c3lpOXV1TzBycHFneUFrU3lFb25zcnRRUjBhNUZUVkptL1A1TEt5ZEV2RFFm?=
 =?utf-8?B?a2xGdkh2Uzkxdy9NVU5EeEdNRkpmUnM2eUxHQkFUTi9WQ24rcmsxVkJxV1lK?=
 =?utf-8?B?dGs4cWhweU8xeWdoT3pWakJqOGs3dGtXVE0vOHBZSWpkYUxTRUFzM1ZGM21w?=
 =?utf-8?B?MDgyMUtCOTNudEs5NHdTUXozRk5lQmtWS3FDQ0xLM3NycWY3akdzRlZsVFF5?=
 =?utf-8?B?QlIvamZ1RnYxbzlPYjFaZldSbFAyajFYMkkxSHlsRU5UWENVR3BGOWpxQzd1?=
 =?utf-8?B?d2pzbFpEbUlJV1lQMUtob1dyZnpHcXExaXF0QWpUTDYrVlFFNUg1R21rR0FH?=
 =?utf-8?B?clYvK0FKT3Q0Wm9mRTFkbW9pMW1KcTZjZ1o2WFM4YURURnlXb2FqdDM4Z3Rr?=
 =?utf-8?B?b1Y4REhnLzRBb094YXExOG5Yd20yMkNBTFpyby9pNXlINFc2eHpnRjRIaFVR?=
 =?utf-8?B?QmtibnFiSXh1YWx2ME9iM3YxNjR4TU1WMVRHWVNnWEF2aW9VanFtcEJlZ1RD?=
 =?utf-8?B?TUhjYlVSQ0RaeTRyVFFSSGRTRisrOWpNVzBQU0V6THVaOHVGRVlLa05la3BC?=
 =?utf-8?B?eExQRmpNSGd4TTRjY2VvWkpFcjJvNkt3MzBLOEc2OTZOYU5ySklRbm4vdy90?=
 =?utf-8?B?NHdzK1hlZzh4d1VGYVVld0g4U3Y3ZnlIWERKTkFVN1RtTHdRbFdFS2Z3NjNn?=
 =?utf-8?B?UmpnT0VnVlVNY3U3WkVwSzJGNWJSbFhpajNnS1JKY3BQemxjaktESC9qVFRQ?=
 =?utf-8?B?RmhEVXlldW9ZOWxDOS9YNnJBSkZUSlBwZFZ6TmNMc0h5amg0WCtIUEJKM2xB?=
 =?utf-8?B?TWp1SWJTNDRCWWU4ZCtuQnlwUzUrSmUyeXE3QTZOd2xKZTNsaHZ0ZVNvMVFY?=
 =?utf-8?B?ZWhLRVZ3SElGTXgrU1R6ZnV6dFVVMlFMS2twV3ZuT2RJK3NsMk1WOVFzV0lD?=
 =?utf-8?B?aytEQkRjU0ZPVEU3T3g1RzVJMXFiUXJWS296RlNDaUV5R0FNM1FhcmFjNkxu?=
 =?utf-8?B?WnVRYzdDbExFdGQyaUx0TW10N1ZPU1EvaW9GRXlIamI0cFpMbDFHN3JYZnpj?=
 =?utf-8?B?YXJlMExqWHVlT2VOV1VvT01sZUFSdXh0RnloalZUdmlMY3RDU1p2cHY0VDNn?=
 =?utf-8?B?VHFlVzVRaXdDRlhWNEQ1VWxwRUtwQUZVVklkN3BQUWtmY0ZtS2RaL3Jsc3Zi?=
 =?utf-8?B?WmlaelNqVTFUTzZIZldNS1AxcWlXbVpxTmV3blJwQWxMckRSNWdnaW9Nbk5R?=
 =?utf-8?B?Vk9IbHgzODkyMndIRlAxdlhYc2FXaUJhZ25CM0ZKTDMvakVwQzg4VDRTYzJo?=
 =?utf-8?B?d3QrakU1YVRZR3ZOUDRxa1J4b1lKaUlPV1krL0ttK2xEVU1BNHg1L1dTeFh1?=
 =?utf-8?B?MUFsdWQ1ejJGTGtzWmJYMVVlVzVtUXZvVlV3S29aQlBtKzYwUjNsYzVDcXB4?=
 =?utf-8?B?SXE0aDd2Zk5FaTMvUjQ4bmJqQW82TGk5K01FMVdDaEtLWTNMc0dqYVBmbXNh?=
 =?utf-8?B?MDZVeDBDWFEvU3I2Sk1BRkhXR1d1d2ZRdkY1VHAyV1F4TGlVQ1g2YzY3c1JH?=
 =?utf-8?B?cXB1WE85aWx0RHJZQ3ZyU0VKVlNrcVNDMDZDS1FZYVVSMStHZ1BmV2FFcWhX?=
 =?utf-8?B?MFZ1MU9kL0UxWGQxWFBBN1BHUk0xZmpiSXJNalRwUjhNWlpHTkVPQmNzbW4v?=
 =?utf-8?B?dWs5SEM4RGhwQmVOR1UrbEdvV0d0TGZaK2M5b2k1MXlQUGY5REdvOWR4TlZw?=
 =?utf-8?B?ZGJpUGtuQWdKL0FrUVJKUUVqbVVhWXArZHVDSWZuRWdRTXFNeEtEd01jaVRM?=
 =?utf-8?B?OXJnei91TEJISUFod1lBZFBTVzlzWCswMkpkRVZCYy9pQ0xjNFZoeG9IamJI?=
 =?utf-8?B?aFBDQmFxREFvZFVMSERoSzdpV0o4S041bHdYR3RnM1BQOXpodDdhTk00azNU?=
 =?utf-8?B?V3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 186742ee-4ee5-49b2-6ce7-08dc586fe1fa
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2024 08:34:33.7505 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DpmyEeiSIFtC5f4+wY/Hzpj5WVrpvddA2u4L3eH8OuapfJKCUg07lbwsF3TGDwCPY4Ima3KCK9f6mxaDa1uWoz0wJol8CNq348gIvqMMwFQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4768
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712651679; x=1744187679;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fz2iFsJcFtNLmDWJQzLifa1LiHzCtd4CB+c+dHRhkcs=;
 b=e0bqSNJwiDJe7hELwStngrTzSDbKKP2pKqA9zkX/ywSwficv1pfdOvs9
 aVQBfdL4HXKvviPHZY7EQ308nRmt6Qi4Fg7DgkElAP0HwAyMEzj/GDtIm
 6/M+nkjQlsvpfHWm/wUANc5vG0vqzsWDKHQ0FPJ9KD7EXfiKsH3u7vZu3
 Sylbs6g9GRNygRUItJ21iwS+jN9RpUnWQBadLvGeJILZl5fFA9i6fr6UV
 ewCWmiVZWPanTlI7xQB1LWptnMS6XLNrq973Xp5FqXrZdsPgSzrN0bQJW
 9yCywlF76OHCVoN9mykDEb9T9WQZg/4uUOFCDvl13fcKZUg5kmBhOMA6i
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=e0bqSNJw
Subject: Re: [Intel-wired-lan] [iwl-next v1 4/7] ice: allocate devlink for
 subfunction
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
Cc: maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 jiri@nvidia.com, michal.kubiak@intel.com, pio.raczynski@gmail.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, Piotr Raczynski <piotr.raczynski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/8/2024 12:30 PM, Michal Swiatkowski wrote:
> From: Piotr Raczynski <piotr.raczynski@intel.com>
> 
> Make devlink allocation function generic to use it for PF and for SF.
> 
> Add function for SF devlink port creation. It will be used in next
> patch.
> 
> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>   .../net/ethernet/intel/ice/devlink/devlink.c  | 39 ++++++++++++--
>   .../net/ethernet/intel/ice/devlink/devlink.h  |  1 +
>   .../ethernet/intel/ice/devlink/devlink_port.c | 51 +++++++++++++++++++
>   .../ethernet/intel/ice/devlink/devlink_port.h |  3 ++
>   4 files changed, 89 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> index 661af04c8eef..05a752fec316 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> @@ -10,6 +10,7 @@
>   #include "ice_eswitch.h"
>   #include "ice_fw_update.h"
>   #include "ice_dcb_lib.h"
> +#include "ice_sf_eth.h"
>   
>   /* context for devlink info version reporting */
>   struct ice_info_ctx {
> @@ -1286,6 +1287,8 @@ static const struct devlink_ops ice_devlink_ops = {
>   	.port_new = ice_devlink_port_new,
>   };
>   
> +static const struct devlink_ops ice_sf_devlink_ops;
> +
>   static int
>   ice_devlink_enable_roce_get(struct devlink *devlink, u32 id,
>   			    struct devlink_param_gset_ctx *ctx)
> @@ -1417,14 +1420,17 @@ static void ice_devlink_free(void *devlink_ptr)
>   }
>   
>   /**
> - * ice_allocate_pf - Allocate devlink and return PF structure pointer
> + * ice_devlink_alloc - Allocate devlink and return devlink priv pointer
>    * @dev: the device to allocate for
> + * @priv_size: size of the priv memory
> + * @ops: pointer to devlink ops for this device
>    *
> - * Allocate a devlink instance for this device and return the private area as
> - * the PF structure. The devlink memory is kept track of through devres by
> - * adding an action to remove it when unwinding.
> + * Allocate a devlink instance for this device and return the private pointer
> + * The devlink memory is kept track of through devres by adding an action to
> + * remove it when unwinding.
>    */
> -struct ice_pf *ice_allocate_pf(struct device *dev)
> +static void *ice_devlink_alloc(struct device *dev, size_t priv_size,
> +			       const struct devlink_ops *ops)

Why do we need priv_size and ops if those are not used in the function?
Shouldn't it be line:

devlink = devlink_alloc(&ice_devlink_ops, sizeof(struct ice_pf), dev);

in ice_devlink_alloc changed to take the passed param?


>   {
>   	struct devlink *devlink;
>   
> @@ -1439,6 +1445,29 @@ struct ice_pf *ice_allocate_pf(struct device *dev)
>   	return devlink_priv(devlink);
>   }
>   
> +/**
> + * ice_allocate_pf - Allocate devlink and return PF structure pointer
> + * @dev: the device to allocate for
> + *
> + * Allocate a devlink instance for PF.
> + */
> +struct ice_pf *ice_allocate_pf(struct device *dev)
> +{
> +	return ice_devlink_alloc(dev, sizeof(struct ice_pf), &ice_devlink_ops);
> +}
> +
> +/**
> + * ice_allocate_sf - Allocate devlink and return SF structure pointer
> + * @dev: the device to allocate for
> + *
> + * Allocate a devlink instance for SF.
> + */
> +struct ice_sf_priv *ice_allocate_sf(struct device *dev)
> +{
> +	return ice_devlink_alloc(dev, sizeof(struct ice_sf_priv),
> +				 &ice_sf_devlink_ops);
> +}
> +
>   /**
>    * ice_devlink_register - Register devlink interface for this PF
>    * @pf: the PF to register the devlink for.
> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.h b/drivers/net/ethernet/intel/ice/devlink/devlink.h
> index d291c0e2e17b..1b2a5980d5e8 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink.h
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.h
> @@ -5,6 +5,7 @@
>   #define _ICE_DEVLINK_H_
>   
>   struct ice_pf *ice_allocate_pf(struct device *dev);
> +struct ice_sf_priv *ice_allocate_sf(struct device *dev);
>   
>   void ice_devlink_register(struct ice_pf *pf);
>   void ice_devlink_unregister(struct ice_pf *pf);
> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> index f5e305a71bd0..1b933083f551 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> @@ -432,6 +432,57 @@ void ice_devlink_destroy_vf_port(struct ice_vf *vf)
>   	devlink_port_unregister(&vf->devlink_port);
>   }
>   
> +/**
> + * ice_devlink_create_sf_dev_port - Register virtual port for a subfunction
> + * @sf_dev: the subfunction device to create a devlink port for
> + *
> + * Register virtual flavour devlink port for the subfunction auxiliary device
> + * created after activating a dynamically added devlink port.
> + *
> + * Return: zero on success or an error code on failure.
> + */
> +int ice_devlink_create_sf_dev_port(struct ice_sf_dev *sf_dev)
> +{
> +	struct devlink_port_attrs attrs = {};
> +	struct devlink_port *devlink_port;
> +	struct ice_dynamic_port *dyn_port;
> +	struct devlink *devlink;
> +	struct ice_vsi *vsi;
> +	struct device *dev;
> +	struct ice_pf *pf;
> +	int err;
> +
> +	dyn_port = sf_dev->dyn_port;
> +	vsi = dyn_port->vsi;
> +	pf = dyn_port->pf;
> +	dev = ice_pf_to_dev(pf);
> +
> +	devlink_port = &sf_dev->priv->devlink_port;
> +
> +	attrs.flavour = DEVLINK_PORT_FLAVOUR_VIRTUAL;
> +
> +	devlink_port_attrs_set(devlink_port, &attrs);
> +	devlink = priv_to_devlink(sf_dev->priv);
> +
> +	err = devl_port_register(devlink, devlink_port, vsi->idx);
> +	if (err)
> +		dev_err(dev, "Failed to create virtual devlink port for auxiliary subfunction device %d",
> +			vsi->idx);
> +
> +	return err;
> +}
> +
> +/**
> + * ice_devlink_destroy_sf_dev_port - Destroy virtual port for a subfunction
> + * @sf_dev: the subfunction device to create a devlink port for
> + *
> + * Unregisters the virtual port associated with this subfunction.
> + */
> +void ice_devlink_destroy_sf_dev_port(struct ice_sf_dev *sf_dev)
> +{
> +	devl_port_unregister(&sf_dev->priv->devlink_port);
> +}
> +
>   /**
>    * ice_activate_dynamic_port - Activate a dynamic port
>    * @dyn_port: dynamic port instance to activate
> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> index 30146fef64b9..1f66705e0261 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> @@ -5,6 +5,7 @@
>   #define _DEVLINK_PORT_H_
>   
>   #include "../ice.h"
> +#include "ice_sf_eth.h"
>   
>   /**
>    * struct ice_dynamic_port - Track dynamically added devlink port instance
> @@ -30,6 +31,8 @@ int ice_devlink_create_pf_port(struct ice_pf *pf);
>   void ice_devlink_destroy_pf_port(struct ice_pf *pf);
>   int ice_devlink_create_vf_port(struct ice_vf *vf);
>   void ice_devlink_destroy_vf_port(struct ice_vf *vf);
> +int ice_devlink_create_sf_dev_port(struct ice_sf_dev *sf_dev);
> +void ice_devlink_destroy_sf_dev_port(struct ice_sf_dev *sf_dev);
>   
>   #define ice_devlink_port_to_dyn(p) \
>   	container_of(port, struct ice_dynamic_port, devlink_port)
