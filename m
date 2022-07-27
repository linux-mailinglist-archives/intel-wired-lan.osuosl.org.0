Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 414DA583280
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jul 2022 20:55:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 73E6982768;
	Wed, 27 Jul 2022 18:55:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 73E6982768
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658948104;
	bh=7u2Fd20MM3Mxmc+xZmZZ51hlzz90p6WjhY9/ZXCLz88=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=c45VvfAsmm1Jrvevu0jTzKtNCxw49XkbrXmN00XzghX99f2ULs4W2I6G4LcQeGDSx
	 E8/6Lmw2JMEnwrCuCm+XzT6NdUh3vDBWCgT4opiLq/6kBW6DlQY5L/ZF4nxtwcPDr0
	 oCUdfvIfTlcMJEUZm4ihR10ruPmIEeMmbdYBbAGpbM4kNKZ9vBbmZDcIQPCl9H+Tp8
	 i0F6TWDS5yFV6qfTTc1Vsh7Kd6A+xWMeb+WR6jw7P4mj90q2PdnQcqWvLDH88ktuzb
	 etWNcomEA0vo0g97a7/BC/PUgXG81s0TdfR8WnKv4xqk87IrRTKo3qEh19z8ULVx1E
	 +1Rdow/pyNXfw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OlsIKUzXMX-Q; Wed, 27 Jul 2022 18:55:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B79F826C8;
	Wed, 27 Jul 2022 18:55:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B79F826C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7B8051BF422
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 18:54:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 54CB1826C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 18:54:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54CB1826C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i6WdpN4B2Hb9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jul 2022 18:54:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C84C826C0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9C84C826C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 18:54:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="287074412"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="287074412"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 11:54:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="927911605"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga005.fm.intel.com with ESMTP; 27 Jul 2022 11:54:56 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 27 Jul 2022 11:54:56 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 27 Jul 2022 11:54:56 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 27 Jul 2022 11:54:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ngx2EKCx2VdfvMm2BUVJYUtZlcFVqUI8+PPrVnaactAZShkujOZK1tOrfIU2Jfma98oTijJqgT82w6Vie/cpKTzbqQ0qr1GBpR06Ov88g/YRcsN1NgxavtYB4otusfxF/zexR10swwOhUn0yTmLQ+LqBru2Nm8waB7tWyHPpzpbUINs5tLjSKhXcWiOu8KeA0SLNmaASLvybjAQnNxLNsGbWEwiNE5fhCZbT25CQUmDH1OiWMPPiM4G68W/vPTWZBgHynxRUZczg+Jg/8YBaT2WN54VugauoWM7ifTxcl+3zFkbu+tLf9eH45b2cr5QDfHc/bj5chyK3kmjcH03GmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RtciHl8G7W2nBy7IlyyRSH++kA13AJlIdW7NuNAzWw0=;
 b=NAy1rPIsrwl0Cgulut8PWJDJKGBd31b/tzDF7SRCoESYIiwui6F5vKSEVYWxDQEXTqFWnF8LX0rSTpKP7VrQ6z72hzya386+UjhAHiSeEZwnz/6dhzTRXevHAoV3B89n6Pkp81YOFErupKLNm9vwE0AH4EWa651KVg1GfXpy0lX4BTOl4wS0NsRPmo25I/7B8VHwQfk5QiSFck/LTJ9uv8cMXUPfmeSVQuxP3ayFuVYDw3l9c7MnFzjZi+WTxRivaalT7qi2VTHFnLtfmA/uaI+ERqYR9d7E1GA/tMFVcSR2WhcwfsG+cOgkHcMgcuovsSSS+MI2tyorUkxOi38Xlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DS7PR11MB5966.namprd11.prod.outlook.com (2603:10b6:8:71::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5482.6; Wed, 27 Jul 2022 18:54:54 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb%7]) with mapi id 15.20.5458.025; Wed, 27 Jul 2022
 18:54:54 +0000
Message-ID: <f2ec2c39-39ef-a2d6-3385-6e60ec4ac957@intel.com>
Date: Wed, 27 Jul 2022 11:54:46 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Mikael Barsehyan <mikael.barsehyan@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220727104231.131615-1-mikael.barsehyan@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220727104231.131615-1-mikael.barsehyan@intel.com>
X-ClientProxiedBy: BYAPR03CA0030.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::43) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 31139ebe-fa00-452e-9fed-08da70017e7e
X-MS-TrafficTypeDiagnostic: DS7PR11MB5966:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WgVo7XlK3fIABPHU4iX2nn2Hr4+BRRZW5fKzKwtU5ITrUP7aueDQ9HfsDbUhhAOQzSa5VS3iYfH0ATaVd16zogVkHlMUwyP2B9S66qT02E3FV7Ou+csKdiq5GG446zLT0gXeB2XKkRha1NTRYvkH3Ad5cevj0nMaZKWwuvAfFywv99qQd76cR5gLKsaEvnD9WYT54X0cDhe/UtDrawqaZT5sC2we6Q+mGKPbHJbQUtGtZCIN/CtqfACTWW6cqLJ6Ko2jcCSuKCtkVdOG+dnJPcIKJMzvaLi+5kkmApfvisSpd/iBsaJdtkvfZrcrf0P5IEztkTc2pLdyN/oEsydHzuM3Jpk066fhmRMs43GWPpFZjvhyv7JggHpKtuWIQVQ6AxQ3fgfDrbx4inG8E85+wCPdV9WbPMmM7fgLce5VK6tV8IH3Re2RHAHylEOvqmBjv+xWYY01R7qxN8kzvcq9h9ZalldAtpNMdinlmDlm/w/udsVFRQcpJv7zapJE4xOjKUWZrZKG1egjSeqkipMV4pU/mG/jpRiRBeUe8IERU1IuLa/g4eCzRv3FCYSVwaZiiyHLHwBlB0/EbrFmTl5O62ps0J5Rmt+BXiG5vqioVXblGYvQTYDct76Sqdv13EAiUHWSzrAWa2j043fdCo2VWzttE1MalJZqhHEZI+E5YRdzjCWC/ub2rdTewTopFjrZZ0/oW2FZWg5+H9AXbCwR6jIYCdlS9IuienXNOgjfK+HIHYtgI/46uRPmNcf4wUnfmb2nadQl+54f9tjFi1eXOrWCZ6tsJD6EoDLbk4GDDuFdNrcfH5TlUEstx0HOtUXGq15SH3enk/sAWfHSyHbGcA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(396003)(39860400002)(376002)(136003)(346002)(186003)(6512007)(107886003)(2616005)(478600001)(6486002)(6506007)(26005)(6666004)(41300700001)(38100700002)(31696002)(82960400001)(83380400001)(86362001)(53546011)(8936002)(5660300002)(66556008)(8676002)(66946007)(4326008)(66476007)(316002)(2906002)(31686004)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SXV5NktZb08wRCtwaUhTSXNoZVM4QmF0aERYN242OGlTSDFlL2RqMnp6QW95?=
 =?utf-8?B?aHBMMUFKcGdRSUU0Q2poU2V2NzQ2YktGMlI5OHFWZStmbllncGd6M0V5YzN1?=
 =?utf-8?B?d2xHdGpYbDRRdnBqZHpJVzhLQzY1a2d4eE5sL09Ob2RTQWx5dC85Vm42bzRh?=
 =?utf-8?B?a1V6TEVwV0I2SmNhbmJMV3RmcVNjQ1MxOEhyeTJ2cXMzMlh3UDF6dG9QZTBO?=
 =?utf-8?B?TnAwbXlyUWZMTFNmMTV5enNpajVFK21EK1cxOGNlN3pUK3RtekhVWC9NRENT?=
 =?utf-8?B?WklQSWVlV0l3QnJiQ3dOSjlqNW5uRTROTVpwMDE5Zks1dHBxRk1IcDNUUC9w?=
 =?utf-8?B?U1MwSW95V0tNY2FJM0R0M2FidkFreElXKzBDUG4xdXhGMHQ3WGRBczRtWGx4?=
 =?utf-8?B?YkhFMW41QWE3WHFmaDhPL2dWaUlqOFpQYWxTN2k5V3BXbHlUNkVDTHdBZ1Vq?=
 =?utf-8?B?YTQyU0NZcWhZTW4rZkQ3Wk1kVGJsRkhvY0wzZkE2RXdLWFdwbWorWmRqajNJ?=
 =?utf-8?B?Sm5aSmxNeEN2Mk1COTNjVUZiVmxVSjBTT0pnR1QxNEEwYktYSnhmdGJpdTMy?=
 =?utf-8?B?Y2hYQnQrMkNybjdJZyt0bFJxMUhZUDNvMk8rSXh5NXlwSUxWWHVkTGtvWjJV?=
 =?utf-8?B?clcxVE9xVzV3eWFaTmFKWkZ3YnR1QzlIaU5ob05Yd0Y5TXNMdXpUbnZIRHo4?=
 =?utf-8?B?OTk2anhJSVlVTHBHKzhmNmF4MnZIZVhSRU4remF3SXEydGJIT2wwaDF6Uy9m?=
 =?utf-8?B?REprWWVjcjFOSUJXZzFpYU1HRFVhMU9ORWVWZU1Zcm5FVFJGL2tTZ0Q5Tmpa?=
 =?utf-8?B?RHdDWnBTQnlUL3lPdjZaalR2NGVwcWl5UGxwKzBmcEZ1ZEpuUHZlbnRoc1Ay?=
 =?utf-8?B?RjBjL2FoUHBOdFNGalR4OWE5b0VOejJ3MUdoNzVnNjVyc0xuKzZaTGE3dFpS?=
 =?utf-8?B?T2tEc3A1a2t1Smp0NXVpMmpiblVxRzY3TXlRK1JMSjdZZDNOb0pNc3NaeU9J?=
 =?utf-8?B?SU1lZFk1eGZoQWd6cGtHQzl4Nm54cG1tL0pHYTRyZ3h2VTBybkpuRkhpbUFm?=
 =?utf-8?B?NHZoTEdJWjgrSnJTOVVrNDRUVFZvS2kvbXYrNk1zQyswSFpxOWdGNTB4NGxP?=
 =?utf-8?B?eURRWUkwcmM0c1VIUytNRjBkdXc1aEZUcTlQVlREbXp5WkdwNkViOWF4VDNl?=
 =?utf-8?B?QVlTa1FUOE1oVzJvaEhoQXNNaTdPeWRWQis1UXVnTXFmV1dIUzdpRGI5eWhs?=
 =?utf-8?B?TmZCNkJUbGN2NXNiOUVtTmxvdzBXbm44WjdhT2IvR2N5RU1lQWV2L3paZVhH?=
 =?utf-8?B?TGhTYnZHUTBaejQvNWQ3M0Vwekx0Qk83bzE0ZjExZ00zKzJoZzkvZDdRQ3h1?=
 =?utf-8?B?SEdqcHBEcE5hSmE1Y2tCNHpHM2YxdlRrR1ZHUE10MVZyRnJyOVFucmNjNmJS?=
 =?utf-8?B?WkRKVHl2M1YwcHpZd3FMWTZ6S2FNaHpuTHpzSmhHamdlb2M0anNUbG1hS1or?=
 =?utf-8?B?T2g3elVnZnZlUDdXQkwxeE1zQllFMHVwNE54OTF0RkZZeER2MVF1TThHVFY2?=
 =?utf-8?B?QjlibTJnSHY5SDdkbXUyTXdRM0k3VENiOXJoQ3FwTmY4SllybDhsOVlqb3pX?=
 =?utf-8?B?T01FZUNpQ3Qrck5IeXJiOXlGeVBUTXBjRERBYmpnNzVDcmFyL25YckFtSW83?=
 =?utf-8?B?UVJUclg4SDBwWVI4MURvZHhvY05lWTZiRmNNOU04dUVhVkxPeTY1R24xWFBa?=
 =?utf-8?B?QWcwaGpQMW91Qm9VV2pOK1FqQTFHVkRyV2pTNmpqMlZqeTJlMFQxZmhaNGx3?=
 =?utf-8?B?MlM1ZFBUZCt1R2sySkZHaUFxeE9MbFMzZEFkNWFFYzRjR3grZUtaQ0FiQWJs?=
 =?utf-8?B?bzBEaDZGYVZwOEc0QnRTZm4vYmdOVVlRMVdCQlk5bWt4NWg2dzExVzQ1dnpq?=
 =?utf-8?B?WEFMY0dSZWs5OUFWbEJGenVkbUNsbTRUUU9DMFRJOVFHUEg3TmVMVWZBYzg3?=
 =?utf-8?B?bFBBVlcybDNPbyswbVI1YytZQnJVSzA4a0lORWR4bnQ5c3pvUEtwSUtRbVpp?=
 =?utf-8?B?WFJ0ODZwaVRLeGZIb3YrdDByYU5odU5xSzUrVnVmaHkvZ3NuSjZ0QTJjM3VW?=
 =?utf-8?B?TTNhUEtma0RlTS92a2NOeVE4UnQ5KzBRaDNpOGxVaVVKU2VlbXVDUVRWVzZQ?=
 =?utf-8?B?cEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 31139ebe-fa00-452e-9fed-08da70017e7e
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2022 18:54:54.7727 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EX3lpIGpfS+ehYMpDA1yeKKyQGRxGDuE93Dd10u5riZ9/j7jpVE1ZeYh/g4V/ECePhs3OXzo/lIuSdTAVc6W2RdbHVX1IUGOXaPVzoSmxwc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5966
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658948097; x=1690484097;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m/j5nQN/Bza33E0y5kI6Q+/8PBXTkOgMzHl6HHI6Vdg=;
 b=nTsFj3BiX+QpYoP3TlW7LIMLX16WArxVXZoQp+81IdZJtADbLhbJvSmr
 Xcg+YOr3xPx2bA+TpJwZytWXUlexd/fyHx9nhl+/H5MxR2a4L3wYnZBBv
 jXiHrcyk1ybRYpEMPsuXeh5ApCjWJpumQDRJV+MvB4RFj4Tm4v89nUtE1
 eDcPCQu2PFuPGssDv/DwxY6xCUfgx9pRG8d+Q38sJS/wHHLdJ7x7hFJb7
 cLSNfmQvPZgu70pYJKbAd/i+hhSxebuvTCDpYk8/wJxDTVSvqrEwucv7e
 asQY9q0QWCmal2UbLQeQQ8oiPf8ZPtycE7y0yJkh45m2JYGXC7vDOjwdQ
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nTsFj3Bi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] ice: Allow 100M speeds
 for some devices
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
Cc: Chinh T Cao <chinh.t.cao@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/27/2022 3:42 AM, Mikael Barsehyan wrote:
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> For certain devices, 100M speeds are supported. Do not mask off
> 100M speed for these devices.
> 
> Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> Signed-off-by: Chinh T Cao <chinh.t.cao@intel.com>

I believe Chinh is a co-developer? If so, this should also have:
Co-developed-by: Chinh T Cao <chinh.t.cao@intel.com> above his sign-off.

> Signed-off-by: Mikael Barsehyan <mikael.barsehyan@intel.com>
> ---

<snip>

> @@ -1503,6 +1503,7 @@ ice_get_ethtool_stats(struct net_device *netdev,
>   
>   /**
>    * ice_mask_min_supported_speeds
> + * @hw: pointer to the HW structure
>    * @phy_types_high: PHY type high
>    * @phy_types_low: PHY type low to apply minimum supported speeds mask
>    *
> @@ -1510,13 +1511,14 @@ ice_get_ethtool_stats(struct net_device *netdev,
>    * for ethtool supported link mode.
>    */
>   static
> -void ice_mask_min_supported_speeds(u64 phy_types_high, u64 *phy_types_low)
> +void ice_mask_min_supported_speeds(struct ice_hw *hw,
> +				   u64 phy_types_high, u64 *phy_types_low)

Not from this patch, but it would be nice to fix this format instead of 
continuing with it.


static void
ice_mask_min_supported_speeds(...)

>   {
>   	/* if QSFP connection with 100G speed, minimum supported speed is 25G */
>   	if (*phy_types_low & ICE_PHY_TYPE_LOW_MASK_100G ||
>   	    phy_types_high & ICE_PHY_TYPE_HIGH_MASK_100G)
>   		*phy_types_low &= ~ICE_PHY_TYPE_LOW_MASK_MIN_25G;
> -	else
> +	else if (!ice_is_100m_speed_supported(hw))
>   		*phy_types_low &= ~ICE_PHY_TYPE_LOW_MASK_MIN_1G;
>   }
>   
> @@ -1566,7 +1568,8 @@ ice_phy_type_to_ethtool(struct net_device *netdev,
>   		phy_types_low = le64_to_cpu(pf->nvm_phy_type_lo);
>   		phy_types_high = le64_to_cpu(pf->nvm_phy_type_hi);
>   
> -		ice_mask_min_supported_speeds(phy_types_high, &phy_types_low);
> +		ice_mask_min_supported_speeds(&pf->hw, phy_types_high,
> +					      &phy_types_low);
>   		/* determine advertised modes based on link override only
>   		 * if it's supported and if the FW doesn't abstract the
>   		 * driver from having to account for link overrides
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
