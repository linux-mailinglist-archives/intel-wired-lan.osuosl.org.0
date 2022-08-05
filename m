Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A77858ADF6
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Aug 2022 18:18:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0057A83F16;
	Fri,  5 Aug 2022 16:18:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0057A83F16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659716283;
	bh=4PrhC7RnQNgJ99Q5v4zUYI/nTJWZjJsOsZIzSFsHT80=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Qs9YR8UQPnvcwfF/QTWyoYmmgv02OyRbz8SaCteb6w6y2hWoEd/H7Qu4K3hxmTvYy
	 hr4lTKr17uqZ+rwt3nsvJ5jJjK3oN0AgBaOb5y6KcJGy6mBm+2g9XG29o05VhRa1lZ
	 woYrb8svm0xTiMQj/l3+d92dHfu1YbZa4CUQkEGGu0yyBPlETVRk0+n05Skt4f7f6H
	 RkdYhoWnydPGqUjGBLkTIK/Tuq5wbOx3u3UjKhI1CqEtK9MxMAWUlbAO2sdH/QUkTX
	 yxO9nKlswMjEjWy668CYX6I6yFyPWukQUL0rTRGQepirt1X1hnzVOZN8B5ZC4LFDFZ
	 qywm2yin6cJbQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WXsOcW75KVtB; Fri,  5 Aug 2022 16:18:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DCB2583ED1;
	Fri,  5 Aug 2022 16:18:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DCB2583ED1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 577191BF31E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 16:17:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 30D5B60B34
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 16:17:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30D5B60B34
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qnhb5_o2z_JS for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Aug 2022 16:17:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 272F860B12
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 272F860B12
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 16:17:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10430"; a="354234125"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="354234125"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2022 09:17:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="636542430"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 05 Aug 2022 09:17:54 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Fri, 5 Aug 2022 09:17:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Fri, 5 Aug 2022 09:17:53 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Fri, 5 Aug 2022 09:17:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WRItycsMGaYz855wfIAgYTBXQQtvW8dQfywsBYRpTA3/B6SDkkmjJGKT1jXcDTKSzaTwgjETNBs2XlU4ikeJ9Ic487f3Y4yis/kqLTXxBgroPYI/UQrab5sRj3BDSTMaCQjG24Yz/HyCyyaJsfhd/aI0EMsOU1SdL8Qe+3VqibPmz8KhJVyge1mw1XyK32CmFIlrVhdIa014KzyaX5JtzEklqRM7nxP08KBsN93rlQxzECc35zKXkvysNu2RM/QltLA191CnalcuaNR+U6l7t4jj9qHelJwSWsF3nsUWwi8gwxdQmNUhrkQXers0P0fMQ+/oYo/fFPk/8/kbImEAHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NlO2TDXcZzoKzA2FDlfevsp2SPLg5N2pVBQ10et8wG0=;
 b=nX5aBIfHHrGPyGZG9a9NVZ06xZWSxTHENqJJiestcXxioQ1YhL+sHIYZGh0BpwxyhP1gRQYxGnpOAkYyN5rOWENm0nVDgGag+WYf7vFNtcPUltWNQbuY+uKDx+h4fDTAiEzcX2ik8iw74u/FzwVDztnHsiezH1UdnU0uDKfCAHgi6AT+ufWjD29rSPKiMlpbYI1Fj9QhH/D1vfdjCf5YLmHgFA31nOjiDwtmLN0dqOchym5K5+myMsg7QOWkWGAApezb12RHFMEkJW6NgWMvT576GI+z38eAagqjg1Srrt19kzMPNG5dzgDJ1K8PWwsob75fNwc9KFy1rOiHA806tQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MN2PR11MB4726.namprd11.prod.outlook.com (2603:10b6:208:269::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.15; Fri, 5 Aug
 2022 16:17:23 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::9d3b:23bc:a1e8:2475]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::9d3b:23bc:a1e8:2475%7]) with mapi id 15.20.5504.016; Fri, 5 Aug 2022
 16:17:23 +0000
Message-ID: <318a915d-a288-f4e5-afad-c89ca2117647@intel.com>
Date: Fri, 5 Aug 2022 09:17:12 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Grzegorz Siwik <grzegorz.siwik@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <1659622830-13292-1-git-send-email-grzegorz.siwik@intel.com>
 <1659622830-13292-3-git-send-email-grzegorz.siwik@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <1659622830-13292-3-git-send-email-grzegorz.siwik@intel.com>
X-ClientProxiedBy: BYAPR03CA0009.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::22) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 99f5c524-9ac9-4506-fcda-08da76fdfa78
X-MS-TrafficTypeDiagnostic: MN2PR11MB4726:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Xjzo/dPio4Wua50LUQTIb5q29nqZ8FBghGlM786Yyj4xgoCX4ZbTWjT13qhZyTI1fy9yy6ii9ApKI2pFxfpeGTUBh8eB1Q5tRyCaF55ximFC7En2fLYKXsgfG8ghEGwXGfguXr28ADsT9/YGw86bqq4VNc+TIBrbAYKqoeblMGH4TUq6PFYPoADDaC4eksyfcNqwaFs+d8yEIUukyp/YsUQVDiz0lKAhFsVgbM5ZtbdmYmxr3xQ2rSDsHpP6X70eTaeciN9DhBeTTOMAedxeJHKHrORePvSmhaGUw1zqFp/IknLyD4oLwDE5mqHHOdlL7i4B3mAEA/0jOQ0IIlbwwpe0sevnqypEfQ9rKjhOGd1RCAl34yBmKf3mmFU/fxFSYRp/U60n+k2oVb6Fvg24fei+DdSb7acs8qy4Q7xZcXytev5nUOzW3TV8vCkA21pcil3fLFHrBw9HE0gA+UgoyGvm3nDat1W3hxfb/4TOwdl8aKr5xmkWl/yvsNALXkGBQ8C6bfeg4z68FgDT0Jw0L+Cb127VPtd6LPKJdrBGXW7J5Ur4up5SzBmV6E50t6D1TW5HPnMvZ55AoeDcQFGAl0JhxtyzId7nEYKfGWXJ9HNXdQoRkdzv9HO8JY4B9D20hFTrPfwS5Z7OQHp4rdhwwvfX2x+ezij7Zx9Q9jc4ujPDWJYjSF00Tov17qopsdgpglWvOU/RMirUJEwduuTmGQD5bDOtM8M7SrQ1BtDYsW8L+ABcBgmjyGCi3SVa1ia7vu49xczDsLTHWQsbo+TeivQU93bANxCiLxJPUBOZtjbVMsAxPQz/YRA7sbBI7RfVTqN1moPMkQWcb2vLBDuyUVtTaQwIByllbmgJylO+fAc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(39860400002)(376002)(136003)(366004)(346002)(6486002)(966005)(41300700001)(6666004)(2906002)(36756003)(316002)(31696002)(31686004)(86362001)(478600001)(186003)(82960400001)(53546011)(83380400001)(6512007)(26005)(66556008)(6506007)(2616005)(8936002)(8676002)(66476007)(66946007)(5660300002)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NmNiUGRsL2w2L2h2NWQzZ3VkdFQ1UFNDK3M3QlIxeXppVHlrYVNPTkMwTzBS?=
 =?utf-8?B?UDNQdlQ0a3dXK3p3S0d4cjFnUWltZTZOUWJTVzh3RmUzSFVib3ZyZ1Fuamxu?=
 =?utf-8?B?aDhwd1E5VVhIN2o3bnVZV0dQeUpsYjZvVFVzbk43OEUxb0FqT2FQU1NCdWgv?=
 =?utf-8?B?MkcrMGJmMUZ4eGZEa0ZCWlhnMHhNZHNpdjhtRVBTdkZ5V3RFOFZaNjhjTllW?=
 =?utf-8?B?SWFocGI5NFZQZldpaXRuNWozalRiaVMxOTBreEF3eUZ6TzhGR29ZWlJFZ0Zu?=
 =?utf-8?B?T0NocnlDS1BMalpGU25qM3p1U0s2Kzk0T25XQndPZlJDQWlkTDM5OVJpdHpr?=
 =?utf-8?B?R2xMR21tV1hJdVp6NVlsUy9LRjF1SHVsZEJNazhydE5SRGhVRkd3SXc1amMv?=
 =?utf-8?B?cmlWVDRRMkI5S3VDZ2J0NUVNajB2OUhicTM5SWVOQ2lqYzF0WUV4bmNsdENl?=
 =?utf-8?B?cnlxaVRyS1JmY1NKeGxBa3ZCcmpMdGdqekl4UGhGallDcmpIcGN1SWNmSjV5?=
 =?utf-8?B?TElaekNWOEZHVzdvQitudkRoRXAvWERlQ0o2V2taV001eWVKbjB5Y0w5UlFG?=
 =?utf-8?B?MG5tVWNpSkNCUFFZNzB5YUZaYTRIY2VKUHhHZlIwQ1dSY2g0NjI1K2YxZjNM?=
 =?utf-8?B?NUJSd05YbDRKbWgvOGVmb1NRWGZoYXlSRVd4RjdJZnBYbEpYRG9KMWUzZXlL?=
 =?utf-8?B?ZmVMeEhoU2F1aldFa0Uzait6bExXWW05SVFNcHRtL1Fma0c2WlcwUjRHdVIy?=
 =?utf-8?B?c2pkRG8rQmIwbDhFVzdrTDRYbzBEM0I1aUR1KzM2NkNCbjRBR0lQa1VXTnhY?=
 =?utf-8?B?ZVFXYzAwSHAxMlNvVkVlUnZkUzd4REhmU1J6dzVJdkdiaG9iMVc3SGg1MU0v?=
 =?utf-8?B?bFp4ZDNUbUF2aFNleit5VGlML2diSGl5Q1NzNHg0TURJOUM4RHQvSGNPU1ZD?=
 =?utf-8?B?TUpWNXU3WXJSbDdRWXZhZWNFU0VqNVhtRU1FbkF4UmJhOWlWQVBGMVpabG9a?=
 =?utf-8?B?aDVpNW5HOTNlWldqcThadFVSWVBBYzhnK0s0djVOTWFxY0RQNytaZ3MzdnJM?=
 =?utf-8?B?MWpuYTFNSjg3dXVWQ0o3WXMwZ0tONFIrbTM2OXhDRURZYTJVOUI1NngyR21G?=
 =?utf-8?B?dmZ6VXZyNlNIczNVUk9ON1V1aXREV0RyUHFrU3VIQ2RPdXcvUUR0aCtaQXFC?=
 =?utf-8?B?bVFleHRSL1NKN3dzQjZZbnhRcEMzWXNTbVdHcGMzeGwxSHN6UzFHNlpyNkdj?=
 =?utf-8?B?aWFlN3VTTkN5bHFRRmtvK0grbi9jY3B1U2xMYzBMWm1aOWtRVlNwamhXUW16?=
 =?utf-8?B?Q1YzNUw3b21ZbUdadHowOE1BUmIrVXB1N3lBS2g2cC9FUUJIdkxjTXdsZlRn?=
 =?utf-8?B?U3ZsQWgvUnY4L2ZwODAvTmRUUHNWUmxPY1AvZGhKR3hIMkxzdXB6TE4wOUNI?=
 =?utf-8?B?U1RhTmRyUUUxVWlscUl1d0ZGeEV0Nk01bGIvdG1CNTdJalVncXVHU3dJbWZm?=
 =?utf-8?B?QnU4cjlDTFc2VFZLRHB3WllIU1pZakRjY1c5aHdrWUxlZnRiSVhDMCthM0s5?=
 =?utf-8?B?MnY3eUdQbjlrUmRRWm4zbXRwY25ZOWFVSkJOeVRwMy9WdU1ubmlpOHdqR3VX?=
 =?utf-8?B?RXd5Tk55REVjT3BJMEg4QmR1Ym1GSEk5WW9aTVdIN3hoR0Q3RFA2VWwvTVYy?=
 =?utf-8?B?dEowUnlGQXd5Ymp2VzkvMU9DcjIxY3BhNDZxY3kzTTc5SFUxNUJwM3RZbUNZ?=
 =?utf-8?B?bnN4ZzJvR2NXLzBBOW9BREhBUzFVa2J0VzV4Yk8rNXFMQVJsdWtVSlZ1aytX?=
 =?utf-8?B?cE1SKzkzQmM0cmEvcnlWaVFoUjI4bXp1ZG9LT1BsQjZaV2JxWDA1TnVDaDZH?=
 =?utf-8?B?OXhESzQ5MGpBRlAzMVRkall0dGhiVWV0bCtWdFJXVWh0cUpEMGlSdDd5SG54?=
 =?utf-8?B?b09BU2ttZUJqK3VJekZ6M3pkRStGWnR4YmI3Q29iVmhCREZTTEk4cTJPVGdj?=
 =?utf-8?B?ZmRKU0JQZnNjbFEzeHFhejhobU1CSTZqMlAvNEtaK2xScFBHZTJRQWI3WU1K?=
 =?utf-8?B?QXJ3cVFhMW5PR3VFRnYvaHBsRWxQekRUKzBHZzNjUU1UczVndGoramJEd0cz?=
 =?utf-8?B?MVd1ZWJVMXAyd28zUlg3eURKMjRGN0ZESDM4ZlpNRGRrSDlKd2tuclRrL0JU?=
 =?utf-8?B?TlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 99f5c524-9ac9-4506-fcda-08da76fdfa78
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2022 16:17:22.9101 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NvrgEbKDCKi+tIj29nFIGFWXSxgaNn8nceJ9z7FHLnoqTT0Y1uECrnBH6oDt1FAHbKMH8e867DBXRqwrLDnZ0nccXJdmwcw+SV3PJ+UjwXI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4726
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659716275; x=1691252275;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+6GH1FnKEkRNhF2JmkWIp2snDJCtJ53oKl3wtZQUgyg=;
 b=OlUTxI7CharoE0TFit7Z2gp4+A/MFhZOtF2fWTgnwovHYJV+QVH89ShJ
 FiKhxGldr9/o8igMWqE9e+B5z4SNOGpgUX5OG1mnlzxA4jgpx0TKaAI/9
 GUXZBCcxaPKHqaum5fRF39kB8a5aq/Fnz3R8c0GjB0P8sf3H8qQ93ccAX
 sfPFvgmOk25yxgOqKb3gRnRtDLw75VZzLIiD9eQC+XD/gj7V/RPW8izT+
 Z8O8T8zlcjlhIsRlAb9zhvKNTvAg+ch1lP1m+w6/OL4t9q6xsLSxX674j
 +sp0gl6emycn2dLPifQg/cnOhez7V8yEpPuXgk4sG+PGak3Nzu9DquUla
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OlUTxI7C
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 2/4] ice: Ignore
 ERR_ALREADY_EXISTS when setting promisc mode
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

On 8/4/2022 7:20 AM, Grzegorz Siwik wrote:
> Ignore ERR_ALREADY_EXISTS error when setting promiscuous mode.

Isn't this EEXIST, not ERR_ALREADY_EXISTS?

> This fix is needed because the driver could set promiscuous mode
> when it still has not cleared properly.
> Promiscuous mode could be set only once, so setting it second
> time will be rejected.
> 
> Fixes: 5eda8afd6bcc ("ice: Add support for PF/VF promiscuous mode")
> Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
> Link:
> https://lore.kernel.org/all/CAK8fFZ7m-KR57M_rYX6xZN39K89O=LGooYkKsu6HKt0Bs+x6xQ@mail.gmail.com/

Please, no newline after Link:, keep it all on the same line. Same 
comment for all the other patches as well.

> ---
>   v2: Fixed error message when setting same promiscuous mode
> ---
>   drivers/net/ethernet/intel/ice/ice_switch.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
> index 8a60052..0aa4871 100644
> --- a/drivers/net/ethernet/intel/ice/ice_switch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
> @@ -4428,7 +4428,7 @@ static u8 ice_determine_promisc_mask(struct ice_fltr_info *fi)
>   		else
>   			status = ice_set_vsi_promisc(hw, vsi_handle,
>   						     promisc_mask, vlan_id);
> -		if (status)
> +		if (status && status != -EEXIST)
>   			break;
>   	}
>   
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
