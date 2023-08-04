Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E7843770AE9
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 23:29:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8060241715;
	Fri,  4 Aug 2023 21:29:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8060241715
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691184569;
	bh=Wu/a8FZgON1JKw7ycJmhuzCrYoeYI3z8ON3xtdTRq7Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7wsstY7AszibOBC2U8kVpMrNYKOllT0fdglyxNhvTAYI5yS2qlkrZK9ADN5rpK6li
	 1ClDhFKffZCuBSNvnlOmu/7Ir0jHxMJpFMzI7bRx8J8kWcBQzrX9z5he9RgHHKlh6l
	 Vxs8CWT5nDZXTrZXIO8b+Mg2WlSL3E7CUDcSOEU7UcSKlZE/5+ZIp/irIE/MqzYz4Y
	 Cxz0xCoNgtOxnASmBRAqMLOZFTzyPVFZKhsKs9jhkvb2IVvYuiE0kTzn/FGZCokL8H
	 G7D0rM/xxc/4aOV+ctFF46WLSwj+mL+E25OPAyVziW8BSkNZmj0V/2Hs7ZfQy8f4sy
	 bNSRus+zFL8Bg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5KgrJPLUmGlT; Fri,  4 Aug 2023 21:29:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 849AB41EF2;
	Fri,  4 Aug 2023 21:29:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 849AB41EF2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3CB1B1BF31C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 21:29:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EC09460A7E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 21:28:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EC09460A7E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dSgEZUSpuT75 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 21:28:03 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D438760BCC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 21:28:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D438760BCC
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="434094845"
X-IronPort-AV: E=Sophos;i="6.01,256,1684825200"; d="scan'208";a="434094845"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 14:28:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="873541841"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 04 Aug 2023 14:28:04 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 4 Aug 2023 14:28:01 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 4 Aug 2023 14:28:01 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 4 Aug 2023 14:28:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n4Hl/eJ2mh5PItJGpqw3R8Kl2w72uAnKqQ273e/BXvP+QFGVRP11Fp6cHxrdr7vBMy1PVKabXY4xfpekrdmC6Phnn31O8agnj/VnlQ+fuqgSWSFS2G5id3EVouMbRKDz3Z7P04XlpI+dhkp0JWqg+HeUTf3ydEJQSIxnD193iWlq0DI7UtxIF19F8VMUkwT/gmq0SZmm7TJJEBpG5FYEdk3kmXSl237D+fHFfnl2OkHstA2nvxukZJryQIWWzSMPRgLlftZKDMzT8hTo9Gm9w+Q4Mt+vN7+JvmXwenjiABlVexIf4pdyl4oxJxHhmu8rUHsTT0g1yKexNmMVRqPWGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nikWreIh6caViHXi+v9jGKQfs/0zF/nGStK/o6vANRo=;
 b=WHq6fJoKMU22Wufln2QkY31cUayGBCSk6PrHjyFjclmsS86oMq4D7VTP70AKH81WDLfpZMuKb5Emylnzkv3EfTdnRUh6EbGjRc7MyJ40e4I1whwBEDppIbbdTttZvk5FiD6BfXnTqWvNLrNgBTDPzbSQlPNvsZHi6OTZVE4z8GvXUEvIdNZEuTdhJI+m+l+FT2uW5mgOgSV/XBDPZqqdsMK4ofqIJZaSRwEfE2YrCSXyCLtL6dZ/LKCTVR7q2umzDAQymlDh7Gm5w650QfIqQZIyuHaoP04V5tjsXFhb9LGXd+8IdwwrcGcb+DS2rs8s5AH1t2raVD2lRXeM4Xa2sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM4PR11MB5293.namprd11.prod.outlook.com (2603:10b6:5:390::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.21; Fri, 4 Aug
 2023 21:27:59 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6631.046; Fri, 4 Aug 2023
 21:27:59 +0000
Message-ID: <93daba1f-10e1-9d69-ea76-b52aa7eb13aa@intel.com>
Date: Fri, 4 Aug 2023 14:27:55 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230802065736.3556651-1-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230802065736.3556651-1-aleksandr.loktionov@intel.com>
X-ClientProxiedBy: MW2PR2101CA0013.namprd21.prod.outlook.com
 (2603:10b6:302:1::26) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|DM4PR11MB5293:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c87d575-be97-48db-60d3-08db9531acf0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FK/GLNdxuGiu7ykj17R4l5oR1qjIVD8b4HHenEFZxm4NuHbDl25xVii/660HwBpEf2mYnv3JMqfwdGJRquSV8J1tNHzmZAxTgMdC27C3tUoR49XrFTqtQFSQXHdbngs15bafsJrE776V7rgIo6o/Qow+xjuC5WBzmXGW5QwGr/cYr4+xgHO/txn49ppnAJKbkCd2r/t7ZBx2hiKp5A7LBdtS5yRNR+0T43R8xITUU1RJ6sm+vZ2HfR4RHtZWOr5bGb4+LlJj2diJZ8ywjmqXT4cAF5lbbHY3tWKQj/bcIEqY6Xf5jRHWyRGKH0e3auQdCzBW5ntlFcAWbEZmyJZCHD/7XhmJ1efgfLS3SgzxLNVBDc6+DyFP+uVKjbalDOtKqRmqweoQudROHAZwNlB4ysOiMMjj6755X5BcccGAFWyFwGnwY5yOWvfhw9ccrc3OOoHVXXmkIlEQODhoIRo5er6LrmP9UitNMZfUqxGo1t7Kc4M7YLOrWQzf33X7os2ggbWM6zQZcV4et8houRj5U+fkWFCQwDaO+N34Nc7OLcdajhFTPztob/9TzMHKjRBA3nMAvCObu7U7ydzyKFgV3it7UbTewEnV/ezD0MbETbZEKq3vtVbNK3EMGPRU1yvSAGXF3qLxXGs5lt2oZ8R2Rg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(366004)(376002)(39860400002)(396003)(451199021)(1800799003)(186006)(41300700001)(2906002)(66556008)(8936002)(8676002)(31686004)(82960400001)(5660300002)(478600001)(66476007)(316002)(66946007)(86362001)(31696002)(6666004)(6486002)(6512007)(38100700002)(26005)(6506007)(36756003)(2616005)(53546011)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eVBDdTZ3S2U4c3ZwVkRRTEdiWXdyNTBjSHp3M2hzZEErdUdka3cwYlRxQ3BQ?=
 =?utf-8?B?RU0wblppSnIvcTFkODJPcFV4cDA3dlpNdmRRMEhnemJwL0t2eFBhTnQySC9T?=
 =?utf-8?B?N1hzUFNqWVJqWVN2K3lGS2tvcXoxTFpsaTIydmcrK2d5T0VlVUtyV3NzY0E0?=
 =?utf-8?B?YkVSdXByMDBVWjlMdUlnZ2ZlMk5hOVN5SUxQQVZkbDN6bHh1eDBVVWdOZmFH?=
 =?utf-8?B?RCtTZ0FnTzdRWDRkR21OejY5djZCWWxPQlJyakhhOHh2QjBrZU9pVDdtYVdo?=
 =?utf-8?B?YTQrTnFSc3hFdFpSd2pHYTVYNURnVUM4aVJybUN5MWllQ21MN2V0cXg3SWcv?=
 =?utf-8?B?TFh6VHlZVHpWOHhBSjJ1c2UxZmdUSjl4eFlJSzZnUnh5M3NmcnJsTTg5VGh4?=
 =?utf-8?B?YU5pbjJqY1E4OW5VNVA1bnUrUXkxUkJwRHEwdUpiMXV5aGpUVFpXYW9LNGFy?=
 =?utf-8?B?U1VndzBGUjh3NnZlVDB2WGNDWDlucU92VmVMSGpFUlRTNjhsQllVQllqVnhG?=
 =?utf-8?B?Si8vQ3FLeFo5Y2hUWE4yaW1WOXE4aDVzYkg5WUxTY3J3WDlYZENqV0ZsZk0r?=
 =?utf-8?B?MWxpZm5NTUYwRVBxVDNBWUFra1NUVTAxaHFBK3ZIcUpNQ1FYQld6WlE1ZTI4?=
 =?utf-8?B?cHN6aGRUOW9STVZsb3FBVGZZRS8wZ0pmOGhjK3VINHRWTGg4ajZaZ3IxTTRR?=
 =?utf-8?B?VFYzSGVIQURlcWhDWVQ4MzgrY2Q3a01YbjNLM1pYcmwyellXbWR3NEV1VUFM?=
 =?utf-8?B?azgyb3NDVHhyaEw0dUZPVEdMYnE1amowQ0VHQ08vZ0RxakpaUlFoNHU0UDNi?=
 =?utf-8?B?NENvUVIxVE43dzRGdTlYWnljeEZRc09oQ0lCYSs4VXcxMzFSQU9tVk1vYys5?=
 =?utf-8?B?MXh1SG1UMDZQTy9STXJiODZKK0tqWUozWEFxT0xIaGgrSjR3ZFRIZHJENkdP?=
 =?utf-8?B?MDVZTElOTCtWTEtWaVd6VXFFeFVVbThOd1psclQwbHhneW1LVzViVEtwZ0hV?=
 =?utf-8?B?cUpqb2xjUlRXdjhKcEUzSVcwWUFvL0J6Y2V1V0pMQU5ISDlZTW9Pa2R5WG13?=
 =?utf-8?B?YU1aVTdyd1hHOEdJZGdhWjhSMXZIUmhzVWVTaG4xZGxyWk1qMzZNTERXb2hN?=
 =?utf-8?B?K3lMaGZOTzZKa3JmUnczeHZUSXpsQU9RZWlIOXNtYWVZWUcxQmJiSWJxUGRV?=
 =?utf-8?B?NzB2TFp2Mlk3dmMwaVhQVTVUTXFuSG5hekpPS2VvemRNVFkzcGhPOGFLT2Fx?=
 =?utf-8?B?c3pyNFFSMHlQc2JobHF1ZFpKR3ZuK0hhRW5QRCtqaG5DVGpUTW4wRUREa0pz?=
 =?utf-8?B?VFdoUHA4VHgyK2xmemVNVEE0bmJHZXFMbS9wRVlnSS9FVzd5SThBK2xqTGcy?=
 =?utf-8?B?VkVyM2NESG5vVVRvbDl6MSsweWJLdTc3WFR3aHgrY2tsbmJ4R0ZPUnN2VW5G?=
 =?utf-8?B?L3hoTFF6MmJ4TTh1VUlFN3A1TjJOZ1k1WkJPZ0xpRk1Va2kwKzBRZi9SdDJZ?=
 =?utf-8?B?aE9EMXFCU09oNkh5SkxOYmtiNG12eW45T3JPYlRCN1dWcjZWTlMwdXF4bFc4?=
 =?utf-8?B?SU91NW0vdXVWZHFnUXo2L295NXV1TUd2NGZ5Yk1kTVF3QS9mcm9iQ0UrcTlh?=
 =?utf-8?B?NXJPeWg5bkJjTnpCTEpSVnRheUZqNkd6cU9IVzVqMjMyV293Vk9WZlVjRHpm?=
 =?utf-8?B?SXRwNy9OU2o2aGwzYS93dy9SWWc4OWNFRUk1a242TDZyS3FWNkdCY285akJq?=
 =?utf-8?B?bnA1VUxrbCs1MVd3aXNlbXIvWmtyRHlGcmRBS05pdGc1TmtXUG10cFB1dUkv?=
 =?utf-8?B?L3hvSjJhVUxsa0hRSmFEaTh0MnZLVjI1Mk92ODhwSTZFbjBNU3EzTFp4T2xC?=
 =?utf-8?B?ekVrWGRYZWRYdU9MMm9BUHpCeVAxZ0c3bjY2bXgxck1OeWJmL3lwOE93OFc1?=
 =?utf-8?B?dHhuTjExRjFROURYekoyMjJRaEpTanFjYmFxakhsUVRKb2Y5M2VpdUxjTXpU?=
 =?utf-8?B?S0JmZkZJNitqZVd0SUQ5bUFiTjc3dldXWHc0WklZVkF3elFOREhwMlJjdU1Y?=
 =?utf-8?B?dFdxelBaME43L1RoakhCdjEraG5idk5OT2FUT3ZxbEFHLzNDWDAydE90L0NN?=
 =?utf-8?B?cE95OHVjZjk5dTdsTUFmS1EySWJWSHpuUGdUeFlIYWdmQi9UY1JOM2tJSERu?=
 =?utf-8?B?OFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c87d575-be97-48db-60d3-08db9531acf0
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2023 21:27:59.1885 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WG2KT5K+XIEgfnG1PF0ZDTgb4/xY0OQV158LQUn/A29WX47KFPyZTXZKyeTKbpq0/YocYXdxlqYkQ9f8em00RLxLeujDWkwx7ZGFRB1BuRs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5293
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691184482; x=1722720482;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+m4jVdXWPmCKhOl/BwXNBYpjJkdChY7WlXX9JD+lgZs=;
 b=d3m1OBQ8fkeI6SYBJeLAZaOy0W6qqzfQ1csnp6s+C2fJrHTxzAIglicX
 SYIiTXWJgMCPwlQTLPVwj4NwpfPlWoTjoDowMNk++emPXGymzbgaLEXcX
 tU4be9pgkkeO+imvBOs+WXL7AWjJ3zIwia5iZ7oTTTxJOF1FLEL6ktfC3
 ovE2aZwOjt2DQh5odX4+X90HU7gxmj/LFavd+PYZfA+6Va5Iq9H/uj+ut
 jk5JZfpUP9sZCYsrjhSTTmAeiXxFFs0tBHucOTCfQs7Cz0vOzHwWZCiGH
 uss4iWBGLQWZzM70xNxoQ44J3dFnTGyAsszexm0WuFQDyHc6JM90SNdr8
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d3m1OBQ8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] i40e: fix 32bit FW gtime
 wrapping issue
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

On 8/1/2023 11:57 PM, Aleksandr Loktionov wrote:
> Decrease hw_semaphore_timeout size down to 32bits, because FW
> I40E_GLVFGEN_TIMER register is 32bits only anyway, but having
> both variables same u32 size simplifies code.
> Fix FW write semaphore expiration condition, taking into account
> that I40E_GLVFGEN_TIMER wraps, by checking the sign of substraction

s/substraction/subtraction

> of two 32 bit vaues.

s/vaues/values.

I'd suggest making this paragraph first since this is the issue you are 
fixing.

> 
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

net fixes need Fixes: tag

> ---
>   drivers/net/ethernet/intel/i40e/i40e_nvm.c  | 8 ++++----
>   drivers/net/ethernet/intel/i40e/i40e_type.h | 2 +-
>   2 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_nvm.c b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
> index 9da0c87..0fe8fc3 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_nvm.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
> @@ -55,7 +55,7 @@ int i40e_init_nvm(struct i40e_hw *hw)
>   int i40e_acquire_nvm(struct i40e_hw *hw,
>   		     enum i40e_aq_resource_access_type access)
>   {
> -	u64 gtime, timeout;
> +	u32 gtime, timeout;
>   	u64 time_left = 0;
>   	int ret_code = 0;
>   
> @@ -78,7 +78,7 @@ int i40e_acquire_nvm(struct i40e_hw *hw,
>   	if (ret_code && time_left) {
>   		/* Poll until the current NVM owner timeouts */
>   		timeout = I40E_MS_TO_GTIME(I40E_MAX_NVM_TIMEOUT) + gtime;

Since timeout is gtime(u32) + I40E_MAX_NVM_TIMEOUT, does timeout need to 
stay u64 to hold the result properly?

> -		while ((gtime < timeout) && time_left) {
> +		while ((s32)(gtime - timeout) < 0 && time_left) {

How is this different than the original check? It seems like a different 
variation to check the same thing.

>   			usleep_range(10000, 20000);
>   			gtime = rd32(hw, I40E_GLVFGEN_TIMER);
>   			ret_code = i40e_aq_request_resource(hw,
> @@ -1192,9 +1192,9 @@ static int i40e_nvmupd_state_writing(struct i40e_hw *hw,
>   		u32 gtime;
>   
>   		gtime = rd32(hw, I40E_GLVFGEN_TIMER);
> -		if (gtime >= hw->nvm.hw_semaphore_timeout) {
> +		if ((s32)(gtime - hw->nvm.hw_semaphore_timeout) >= 0) {
>   			i40e_debug(hw, I40E_DEBUG_ALL,
> -				   "NVMUPD: write semaphore expired (%d >= %lld), retrying\n",
> +				   "NVMUPD: write semaphore expired (%d >= %d), retrying\n",
>   				   gtime, hw->nvm.hw_semaphore_timeout);
>   			i40e_release_nvm(hw);
>   			status = i40e_acquire_nvm(hw, I40E_RESOURCE_WRITE);
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
> index 388c3d3..efffe27 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_type.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
> @@ -328,7 +328,7 @@ enum i40e_aq_resource_access_type {
>   };
>   
>   struct i40e_nvm_info {
> -	u64 hw_semaphore_timeout; /* usec global time (GTIME resolution) */
> +	u32 hw_semaphore_timeout; /* usec global time (GTIME resolution) */

Can this hold a u32 + I40E_MAX_NVM_TIMEOUT?

>   	u32 timeout;              /* [ms] */
>   	u16 sr_size;              /* Shadow RAM size in words */
>   	bool blank_nvm_mode;      /* is NVM empty (no FW present)*/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
