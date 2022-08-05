Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B763858AE00
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Aug 2022 18:21:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 906AA60A9E;
	Fri,  5 Aug 2022 16:21:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 906AA60A9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659716479;
	bh=X1s1sxITVj5MLdjMS0DPq2WPwnDL2DgTEkotXJsvNgE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pLff/oYFFdwP90EEhqngqERsnVL/hmow+g2+lvxOIyzPXQ2IJDN4WtqbY+FZhthLD
	 2bRqfzCikdWP0pLwW3VvwiM/D0JVJPkR8TBPNBKBgHHQDn5JBGQJuwqzWigfnSU1lq
	 ihQ0CT+s4IR6ejknmyTZHqlq8jppxP7EKfMQ/UTAAXtzT8R/iZ1dmrGVaJuUZmaT9E
	 CDtQIZiWwVPz2CW3Tw1trNo7vHk8TtdEwg3xfq4AqyemnclqL993D9SR2bkBXlk8kf
	 k4J6WBXWriD053SoPf3SneAu1cG2rc2VTKgt34v71EFOat1Rk5fmyHMlSEnKmJfTjZ
	 iZT7mXJUMzgsw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CFr2JOvfcEnM; Fri,  5 Aug 2022 16:21:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6830F60A6C;
	Fri,  5 Aug 2022 16:21:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6830F60A6C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B82541BF31E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 16:21:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9E61283EDC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 16:21:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E61283EDC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NaM3moDrZIVD for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Aug 2022 16:21:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A855834AE
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5A855834AE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 16:21:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10430"; a="351954296"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="351954296"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2022 09:21:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="931281872"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 05 Aug 2022 09:21:11 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Fri, 5 Aug 2022 09:21:10 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Fri, 5 Aug 2022 09:21:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Fri, 5 Aug 2022 09:21:10 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Fri, 5 Aug 2022 09:21:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bIEritoIds2Kqt7mujtyZQG5LmOJZbhEPOhcydcdlj+lnj98mJH5U6mLN/D/tg77QoiPAX8KX6GUFP1YxwgLNKNsyMWo4OvxCFxj7ZeQXnSPO65w1RDQyCw/e4mbbWs17Drz2nc0fdNSyQG85ARJ8jeph20xyXAJnxvjBUNf+3B6iUE8rw2lZKg2yhooq5O3q1ttn8a6HzKyb/P9YX0GY9m9BPzq5+gByQMLL42mN8lxwcNJREW9vpFpCP6XMiYdt3hUdGvZoo61nw9XrpxypTv8DVlZINQCCtB8zJ18vi8F92WphuMWvgCmlyncBjKk1K3KJKpm37YZ47rFV5uIvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oqtuce9Se/Mnw/aAARvPftKrTNTFX4h8Y4E0rYhiE5w=;
 b=mPpKdU/yE0F7C8QNg+HIn389fgxSSPMS3HMAJbwk4e2g06WyWRjTCrBPvtR068HBJR5os66/wGvurs28TEUx5iVhWUqNA4cRK3xEoMSmAeyusPD+GnqLLcaq4wIbrtudfHaG3cYawM+pQyWzW6KkcUdVrdnOI2Sr4yC+Xl1KE2s9Kr/EfLDNZ4Sx4rJktkH4ESkOqJUid++Xiu5MaHxkuwREY+wSsltzyvAWBOdLHpeTSOlcD94rvz2S7mjBrJphdfvt+ZUfJLDAejPK1x4ls1b5EJON3ICelde73dr2RHqEThO5IyS6MqnjOxRuCT6Lv+YsKO/pkyka2hh6vhApFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MN2PR11MB4128.namprd11.prod.outlook.com (2603:10b6:208:139::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.15; Fri, 5 Aug
 2022 16:21:06 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::9d3b:23bc:a1e8:2475]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::9d3b:23bc:a1e8:2475%7]) with mapi id 15.20.5504.016; Fri, 5 Aug 2022
 16:21:06 +0000
Message-ID: <b226ea16-44e1-e58b-0ea1-9cb8352c680e@intel.com>
Date: Fri, 5 Aug 2022 09:20:52 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Grzegorz Siwik <grzegorz.siwik@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <1659622830-13292-1-git-send-email-grzegorz.siwik@intel.com>
 <1659622830-13292-4-git-send-email-grzegorz.siwik@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <1659622830-13292-4-git-send-email-grzegorz.siwik@intel.com>
X-ClientProxiedBy: BYAPR01CA0038.prod.exchangelabs.com (2603:10b6:a03:94::15)
 To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bb7e366e-5961-448c-6e04-08da76fe7fc8
X-MS-TrafficTypeDiagnostic: MN2PR11MB4128:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nqdlymy/bnyqcGIaDfZ5GRIffZJyvVZK9qXSRwtdZCPmfPisqBRrKl3RQhRRJ8ziA2xY8t5DhzHvHSjPE6WfpQoJgeoJK6ZH7AVHgJRAMRBX8HpEI3N+T+5oX/jJc87QjzMD4990XKsq1SA0cZ4c6UUJHpkqAUv4xgKpL7FBhUUGcHQJJkBxL8ydIlo5QB8jDgueKLedviLw9ESWhBPK/fbt8f1lWes7llCW3QlVUJf0J7ATXCXOo7EJHtN99bX0jXnpM7HEnOhkDcfmlR7xlvB2YY7Zw6Ch8TCQoqY3FFQk7MrWae0MLvNwajjAf4vkto9+sI5R+EFWdrfY+NM5zrN2LcqvAgG11WutdhFQg3cyOSyLCUXb6hYFs7mKEa9cIC1aNHZn6Ey/Oh2wgBRWodL/RDr7wYVJeVquapsaq+/plT+6xGC8z7yfp1XBG7gYQPJMX53a76SzDhkMIQ3oFUhRTXhyvFIxGs3SDgUBntQaiCo/5uYfH+CI3kVIB/ZJ8Rw+gfpmrtvLq6Jc+GFVYwOQLA6AW7eMXwdbFuXs0rh7kHvFXceJzdjZxyOvbrGlW8kWlXwdpnJ7d5trHBmLYFTgM3XZatFfJxI5/D/p0wbpfn9EfrJyGTZFUXxRq6frR4UC/Zk3SsyHrfHAzbf2OAx0EbM4kILxQwGkxSVcCwx0AiA1iBaz1Drh3dcpMw8HkzQEsLnTkNegOak+tyI/9cV9wIn2MMHJGzGGihJWOKKGOoVvRc3cSjhEsC0vj2WR+T+ym56aqeD3uEZmOp1QHbmYqls8vL448ANSP/kdUuGGj/xKL/VYzu4M8ZIVYXM9Y28QpiTTXnMXV3UDSAzsQZT6EINmGz7X7N4bXKoWiRw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(346002)(366004)(376002)(39860400002)(396003)(6506007)(5660300002)(107886003)(26005)(6512007)(41300700001)(82960400001)(53546011)(38100700002)(966005)(31696002)(6486002)(186003)(31686004)(36756003)(316002)(83380400001)(478600001)(4326008)(66946007)(8676002)(66476007)(66556008)(2616005)(86362001)(8936002)(6666004)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NlFJby9rS2FtVExMVHNFUEM2cVpuU1RjL1lGRTU2Z3dRQ1lTcDNSWmNrRzNT?=
 =?utf-8?B?dlRIVEp2ZEhORk53bXJpWlU4VGJtWitVbG5sZU9YZGU5cHpTZDh3bVhvLzJv?=
 =?utf-8?B?cFgxanNMN0dHcDEvVEZZN0JxWlJqYWs4TkdNYkw2blJpQWQxekhPdnMxTlV2?=
 =?utf-8?B?ckZteTJkSHJpS3ZmTVlnVm91TWJqV1JZemJ1ZHpBeUVrREVpOHJtNVIzTmsv?=
 =?utf-8?B?Z0FpTG1DYUxQczBXOEdoWjFrMHlEamRReFM2RkNDR3RRb1l1bmNLU1lSUWIz?=
 =?utf-8?B?QUErRzhJWFJmY2piNndIRnVTQURvWE84TTFwVU93YkJMejE4TVRjV0RiQTE4?=
 =?utf-8?B?VnQ5U1QxWWx5dVgwZ2ZVZmEvaXRoRDFJSHo2Nm84bHp0bUx1bSs5emRMRW0w?=
 =?utf-8?B?bzRlU1RlcnlaTW1NSmxmMEF2TEhZZkhNVGVPTjZNS0p2RFRxMkZCY3Qvbm1q?=
 =?utf-8?B?dU53UGNnSkgvUCs2TkZGRWZTZzdqNlpaZmh4RURtSVFudkdzOVJQTjRWTWpM?=
 =?utf-8?B?bFlRYW51cUc0bEwrN05WMlFaeEJjc1JkYkJlZExRZVRkUWoxcU00YTNkUWF0?=
 =?utf-8?B?RWRFaENHUjByYU1nYU1ob2lBZlowR2p3UzlUc2d3MWM3OEZwTUVzQUJpSWxN?=
 =?utf-8?B?MXhITkhTR2hsbFBXTDBpcEJ5QXZISHZFejFXb3NYQ2FNNkh3eXNqWFYyYzlu?=
 =?utf-8?B?VVltSm5TTmxBZmd6cERPc1ZtUWhGTDNkL1l2eForZXF3MjhQVGpGbWttUUtW?=
 =?utf-8?B?d1pJWTRHeHZUL0dGcm14STBwL2NYS0pzRW85WDh6OEFJbm9ZaWlQZ05CYyt5?=
 =?utf-8?B?TVY4RjhSZk1TMDlIM3Y2UlJ3R1pJb0Vyc3NodDVudnQyOWluZkpFUlhlL3lz?=
 =?utf-8?B?ZW9FSEpoLytsb2NJZ3JTTEU2dzJ1RDRFY0V5WGI5anpHK2YwU1ZCMmUxVHNZ?=
 =?utf-8?B?YkZjUkdreC8vYkdZbUdXV092OVNQbGEySUtRU0xjQWdvMXk4eEdxa0xLcGZx?=
 =?utf-8?B?cnI5ajlKekJzRGdYNEdHZFdWWE1mMGNBY3ZOYnYvMUdDOUwvNDVaZ3BUdkNm?=
 =?utf-8?B?UXFLVEU4NU5mWFcwb2N0Vkc4VjdHeXlNcExmMmd1VkRUaHh4L0Z5WC9RLzZC?=
 =?utf-8?B?S25QdmNpOVJ6a0pKUThhU3gyalkxOC90M2cyb1hSdnFXdlY4SHVJT1hQVTlX?=
 =?utf-8?B?RExvNGtVbVg5MHhsRklGR0ZsRGJBYktJTThYMHhaamRFMU03RUM3alVoT2c3?=
 =?utf-8?B?ZnJxY1AzZityeWlRbmg4b1pkOGduaThPclFxVHYvRTFzUDIzTUh0RmxWc2I5?=
 =?utf-8?B?Yk5nTldZUVQ4MFYrUUZZRDcrc0EzeFBoRTNmd3MwMHo0MzdybmhkcXN6WFZi?=
 =?utf-8?B?WFNvbHZJbjVKaFVRaDhIYmtDeExSRDJldndGQjl0SWszVnFHRTFwOWl0c1RS?=
 =?utf-8?B?ZEw1aVpRS3c1UVJkbUltaDJyVzllRlljVXZCZVVycXgxL0xaVDFCdUlldmcy?=
 =?utf-8?B?R2pvUXBJZEtSOG03Q0Qrd0ROdHN1bEVBNUNSRFVhY011czlNSVlaRkFTdlZW?=
 =?utf-8?B?eVZURTRxVlRXYU4yam02L1p2b3IwelcvWFkwb2hVWFBLS3lqOVlzdGRNTGl2?=
 =?utf-8?B?bmM2akN0dVUyTXZES1hicWhENDV6Q21MTFMrRXB4WGxTLzFJQkdpZDYwMXQ5?=
 =?utf-8?B?VE1ZOUZqY1dQcEk1cW90Y0pNclM4NzZidXFLVkNzRzhUMTd3TFRZY0FoUDUv?=
 =?utf-8?B?dDZGK0hVTER5aGp0N1Y1V09vYnMrNnQxRlpmd2ZGUXdabEo2c3FqTTNZR1I5?=
 =?utf-8?B?bG0rNHg3MkN5RW5VTjk5L3kzQjdBYVZYeUVVNUpDUEU3eUNuUVo4S3NLYTNF?=
 =?utf-8?B?U0NiRlJWQU9NUndSS1l3eWo5UTZuRXNpT3BUcGdUQmxnNENrL3VHS3AzWTll?=
 =?utf-8?B?dFV1V2NUMGxUNllIQUQ2SWw5THhQaEE4R3NDemlEVFlDRlE2Y3Blb25tN3R6?=
 =?utf-8?B?U2RTbUFocEJsTXJaOGdsQmc3WllqR2R0MnRLVmNISVhhV0hucEZpTE1KbVdV?=
 =?utf-8?B?bFFGN000b3VnaTFLNEpxNys1SStyK3IxWHBTejB1RE9CRlA4ZDhTZzlEUjFS?=
 =?utf-8?B?aklMSmhNMUdVN2U0QTRxK1l3eS8yNzB0am4yTVhYQ3FLdGhuSzd6THViVzNz?=
 =?utf-8?B?R2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bb7e366e-5961-448c-6e04-08da76fe7fc8
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2022 16:21:06.5521 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8XIB3K2sQi8t/eWFzBqnu7YFNzl2JW5AePxce4itAk81xLIInHzLSitD6W6wykL6jxWIep52Zwuhk2k78rNjOfha5lgMQbclSMWhjKqqUyc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4128
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659716472; x=1691252472;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Qs3VXcHFuRuTQdPorJxcE8UZwa2Zc/0oDRM1X/o2vx4=;
 b=ZaL+rRXpKf1PfWBsaST4fqCtCbOk1nwsQAkRqNPn1YYJnoi2mYhxCm0p
 TA+HVDQE7zq0UlgGAbwO8c/dQhlIzGbpYeY5GoCgI2cLmo/qrCy6NW09S
 OTdDjHEhggdeQsBofUa+XH+mCi90GRglTEpbMMys8Kzim3kSc1l6aVdAu
 l1DTOpZzk9hO+b/OQvoEMVXzQyJVHaD/9P8ONNmsIlMXwRjQg3KYfzuRq
 zNhWAO4q0NtFvVpqdC3WewQQnEPraPOX5kmoDhqvE8YQNO86D+Jcz9ZJY
 4s7XPKowPassVicWzdPRyGlsVH3bM1CEFrmlq0AYrWcZuRdah8vTHHSQ8
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZaL+rRXp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 3/4] ice: Fix clearing of
 promisc mode with bridge over bond
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/4/2022 7:20 AM, Grzegorz Siwik wrote:
> When at least two interfaces are bonded and a bridge is enabled on the
> bond, an error can occur when the bridge is removed and re-added. The
> reason for the error is because promiscuous mode was not fully cleared from
> the VLAN VSI in the hardware. With this change, promiscuous mode is
> properly removed when the bridge disconnects from bonding.
> 
> [ 1033.676359] bond1: link status definitely down for interface enp95s0f0, disabling it
> [ 1033.676366] bond1: making interface enp175s0f0 the new active one
> [ 1033.676369] device enp95s0f0 left promiscuous mode
> [ 1033.676522] device enp175s0f0 entered promiscuous mode
> [ 1033.676901] ice 0000:af:00.0 enp175s0f0: Error setting Multicast promiscuous mode on VSI 6
> [ 1041.795662] ice 0000:af:00.0 enp175s0f0: Error setting Multicast promiscuous mode on VSI 6
> [ 1041.944826] bond1: link status definitely down for interface enp175s0f0, disabling it
> [ 1041.944874] device enp175s0f0 left promiscuous mode
> [ 1041.944918] bond1: now running without any active interface!
> 
> Testing Hints (required if no HSD): Create bonding and

HSD?

> add bridge to bond. Test VLAN add/removal and make sure VLAN works
> correctly. Test combinations of bridge module and VLAN, bridge and bond,
> and bridge over the PF.
> 
> Fixes: c31af68a1b94 ("ice: Add outer_vlan_ops and VSI specific VLAN ops implementations")
> Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
> Co-developed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Link:
> https://lore.kernel.org/all/CAK8fFZ7m-KR57M_rYX6xZN39K89O=LGooYkKsu6HKt0Bs+x6xQ@mail.gmail.com/
> ---
>   v2: Fixed error message when setting same promiscuous mode
> ---
>   drivers/net/ethernet/intel/ice/ice_lib.c  |  8 +++++++-
>   drivers/net/ethernet/intel/ice/ice_main.c | 13 ++++++++++++-
>   2 files changed, 19 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index f7f9c97..251012d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -4078,7 +4078,13 @@ int ice_vsi_del_vlan_zero(struct ice_vsi *vsi)
>   	if (err && err != -EEXIST)
>   		return err;
>   
> -	return 0;
> +	/* when deleting the last VLAN filter, make sure to disable the VLAN
> +	 * promisc mode so the filter isn't left by accident
> +	 */
> +	err = ice_clear_vsi_promisc(&vsi->back->hw, vsi->idx,
> +				    ICE_MCAST_VLAN_PROMISC_BITS, 0);

This can be returned directly, not need to assign it to return in next line.

> +
> +	return err;
>   }
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index c1ac2f7..c4f89c1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -267,8 +267,10 @@ static int ice_set_promisc(struct ice_vsi *vsi, u8 promisc_m)
>   		status = ice_fltr_set_vsi_promisc(&vsi->back->hw, vsi->idx,
>   						  promisc_m, 0);
>   	}
> +	if (status && status != -EEXIST)
> +		return status;
>   
> -	return status;
> +	return 0;
>   }
>   
>   /**
> @@ -3572,6 +3574,15 @@ struct ice_vsi *
>   	while (test_and_set_bit(ICE_CFG_BUSY, vsi->state))
>   		usleep_range(1000, 2000);
>   
> +	ret = ice_clear_vsi_promisc(&vsi->back->hw, vsi->idx,
> +				    ICE_MCAST_VLAN_PROMISC_BITS, vid);
> +
> +	if (ret) {

No newline between error check and the call.

> +		netdev_err(netdev, "Error clearing multicast promiscuous mode on VSI %i\n",
> +			   vsi->vsi_num);
> +		vsi->current_netdev_flags |= IFF_ALLMULTI;
> +	}
> +
>   	vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
>   
>   	/* Make sure VLAN delete is successful before updating VLAN
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
