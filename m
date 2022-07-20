Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D7357BFC3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jul 2022 23:41:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0F0F560784;
	Wed, 20 Jul 2022 21:41:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0F0F560784
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658353298;
	bh=V34+9NH0z6zqLO5AUMBf+GcTv6MhIXMqasZyRo71N8Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AS21sN8TSN/p+XF1rdZrE49cfi5+0mFzo9J4OPaTAu5FcpAiKdedU4S1xpMYCA/vp
	 hPj7rQurOHqV0mFME9+6sFvmz8nx27iCo90T2QlqOJO8kQdhkGJ2d7dr57Xxc0eB0X
	 jJ6YvVaq3fC+jDvX2PzYlcOixcq3R7zUcXznDZDf4b8L7ylZy+H918wN2M3TYhA06t
	 XaEc95hPFWlVw+LhIntZxqSuSIz8Tg3agiEP87XGA1Fg5cQMvS71CYdCc+BVUBfVr+
	 jEqWrzNqHgf1PK5Xak58KTLh8ZbOE2evX8wUQSnW81OIZetmuBOUWVnQE42h2bN1fq
	 HUPw02g/Cs56Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0wTV37n063QQ; Wed, 20 Jul 2022 21:41:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE21B60E52;
	Wed, 20 Jul 2022 21:41:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE21B60E52
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F151C1BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 21:41:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C6D3641B68
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 21:41:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6D3641B68
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oNyZK2nmjCtd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Jul 2022 21:41:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C57E8417E6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C57E8417E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 21:41:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="285655029"
X-IronPort-AV: E=Sophos;i="5.92,287,1650956400"; d="scan'208";a="285655029"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 14:41:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,287,1650956400"; d="scan'208";a="724809153"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 20 Jul 2022 14:41:28 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 20 Jul 2022 14:41:28 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 20 Jul 2022 14:41:27 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 20 Jul 2022 14:41:27 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 20 Jul 2022 14:41:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S0hcQenX9hVlGuISE3XF4eQTb2ytI+0PmTgsYWlOvf71m+twmEmoEIKoIi0hkSf0bL05Eu6pZQM/wepjZAp5J3Xowfsr68f4Uz6qyVmCTFVl9593G7oU0Kv95Gyfbem1UT8J0H+KD8Cfw0VommZTP8u5bc2hS9rCwECKk0DQJV/fVznvmUozskLran943Kd8tMKdqnGVepdZ3Ca0B1IGMxrAXoJLV5K22dxKBTroBA+mbPdbpl7TRLbBKhMZMLOv5HyaxvWYKtzC9AG+1voPddt7PxeudEYGHDaiRGQXsO764I023ilWPd9D8xOfOtk53urafXC5SiPIrjjOoAvaeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DWcz9lNW6g27UO/3nYIVAuyPiPXFaIP+GUn0M8+m1yo=;
 b=J+P/NH14iLmGWNP0ZtBU6J4UMwYe8WvOHYnu8TplJAZLeTeuwqAvcP80+2879u24Oom7b35TY56T8ex6/Y9IrNmR2tG44kNIfXqpPJIqKLFpI2kZmRYr6pVdupmhkD2CUnCsHoSncBCK9QSJNxbrwbVFbrDth4zluHh5+YjD52ez9q3MSWaJLBjPqOZCQYA0YSCcB1Is3azJuT0u/rnPeTXF6EuVPQYt89T6DWL5Q7DDUZQVnZTjOji5o26fq4NA5j5jG9TvpWE7WW/NbV0uuhwbUgeXhQc/41K9oTv7RWoKVecACLnvwR7N5rfZvy17u8a3hkomGD7uUsP5qB41ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by IA1PR11MB6265.namprd11.prod.outlook.com (2603:10b6:208:3e7::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.23; Wed, 20 Jul
 2022 21:41:06 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb%7]) with mapi id 15.20.5438.023; Wed, 20 Jul 2022
 21:41:06 +0000
Message-ID: <5b4ed9cb-c949-1d7a-2db6-8915f9171091@intel.com>
Date: Wed, 20 Jul 2022 14:41:04 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20220718164244.261979-1-jedrzej.jagielski@intel.com>
 <05f1b24c-ccad-64db-adda-907a928b86dd@intel.com>
 <DM6PR11MB27312AB61F71BAD0C920AC87F08E9@DM6PR11MB2731.namprd11.prod.outlook.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <DM6PR11MB27312AB61F71BAD0C920AC87F08E9@DM6PR11MB2731.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR03CA0333.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::8) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7f21500e-f51b-4220-61f6-08da6a988d44
X-MS-TrafficTypeDiagnostic: IA1PR11MB6265:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iL2PeuPFuPWTqwmctUPR+2gk8VZ7tNzpElYOqImqufMRLxNtGAb1m/oGdcbZTTg4yhq/olHXLg2Sh3CRhu9a/AEsS8hvRoqCYC1k3xgmcrL2FtjFim+iOn7ejzenv4qYeoHdXMYJZugYX2V6T0EHLokMbZW5Y/+/kRKfV9OIUXmzA5d7I992oGSptOsTYz6nVNH3BAf7i5/oE5n0tUvguUgLslwMGucFfA3uJgcti7wHZLAZmZwsNEk1GLA7+cGWAmeiRrBdjqsRvoHZQ53tuWV40b/WFT8S0yt2LFvov5Lop98tOD1c/jhfs3KslU168GxFBnbUQHu6HpqCaH3B02h7exgBXlTh7O/ssy5BpN2RiIiLsOwmiysfumQ9TODSp52sdYTiNg9aCLPPBmXIdtT9/7Zba2l0N5B3Joz0TfiylHWvcKx7VnvWMhrbgVJRQC9wAlWgsCq5DvW1mYadamvSO8yRhGRr/m+9uWy+1hzu36rKSonogF1l+ZR3+Kd5U4Fkq0JKsGD0eOAV2Aqg1mW4GW652eb7coJ6hUre9mPAV8SOaVaJ1nsZVnakQPRJyZYHlcNH2MGI7rCHyqhZKJz26KzRzAwAaXRHlNmiyjuF4yVNQDl8iNEbBc55S1F9pr+/Gb5WJszb9MxO958rkEnS6RXGkvyHGvjT/V2ix5QBxUc2XD3jO5VqdAaux1944FMnrb+9PdMypyrpo1gKVcS4YG0PHjVjgpMW7xG6SFuo3GBGVqUObOrOsB1mcBf+IdK/zJKxIayCG/EBNGZnb+aQHDuwQzBF0kRGdpNY51WybCX7U9Ml2z69RiOLypm4GDxQ+UWu7MJfBQ7rTv090A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(39860400002)(366004)(346002)(376002)(136003)(107886003)(2616005)(38100700002)(186003)(316002)(66556008)(8676002)(4326008)(5660300002)(66476007)(8936002)(66946007)(478600001)(41300700001)(6512007)(26005)(53546011)(2906002)(6506007)(6486002)(110136005)(31696002)(86362001)(36756003)(31686004)(82960400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NTBzblpiS1JWTzExaEFSM3BlOTA5Zzh5K3luMFpUUHJMZEJ4WkpTaWt1aHZx?=
 =?utf-8?B?SUt2WDk3YXlic05QUlF3VUxiU1J6S2xqMGVJL2N0dHBXYm44LzJiYjJ6ZWo2?=
 =?utf-8?B?YTlxNm1BVEFXMVRPNWc5akQ1SjBzM3lreG9SUzV5ZVNvL1JTRVkyKzFpZCtW?=
 =?utf-8?B?d3NIU2tRSWJlc01FS1VFUy91b0Iwbk11WFhkTnpLUjBlWFRabWthRFA3Nkla?=
 =?utf-8?B?dGRuQXlLK250UHlWUEc0YzBLSlpyaUlZZ2dIYm9JYnVjb3EyZWt0U05LQ2Uz?=
 =?utf-8?B?cmp0NkY5cURUV2oxeUhBUkxTNlRWQ0s0UW9kRDBJcjA5c0FvNmNHSENhVkU1?=
 =?utf-8?B?aXMxb3FlL0pXd0JxSXhUNXVMV3BJalk5alBjLzVlSHVlUG5NMzM5c3NSUUFm?=
 =?utf-8?B?c29hbjhMMWxrTy9QSTNLVk9DTVJCc2VjMzFJaUlyNnYwTTNjc2EyV0E0UEFT?=
 =?utf-8?B?QWRjdmNCdzI2Y3JxckVBTGNUYll2SUliTGZ5WStGcHFQUldPT20zNkRRRllT?=
 =?utf-8?B?WVRncUhxWDA2c1duVWNkbGJYR0lVVTBzODZ0a25UTi9XYkRGUjZWeWdyNlhS?=
 =?utf-8?B?MnhOdmdJQVdqWGl4STRDVGRLY1E3N3NZb1ZkbEVVREg5YzZuWWRRTThxK0NL?=
 =?utf-8?B?S1VWTXRUVmpZaTR2eStYeldOeWFJNWtCVUxNQnlVajZoUEQxZ2g2Z1haNUla?=
 =?utf-8?B?ejJ4bHJwZW56ck9YL3BmQmtoS1p0RUpXTUsyR24yUlQ3NGE2NWlaTityYzRH?=
 =?utf-8?B?Q2VDMHZhak5pdmpOeGVhY3JCTExaQXhHaFZNVCsrWlREUUd6TnVaTnpzM3Ft?=
 =?utf-8?B?NEFsMWF3Yjc0WmZXQlVDa3FXNGdKcmdpbFhmTE9CMWMreFRYTkFwcC9LTU5L?=
 =?utf-8?B?ZGZSWEs4STJyaHVERmlackV4YlRrV1Q5Wk5qSWd3UDRCN0NiR0dudk9qRjhL?=
 =?utf-8?B?d09lekQwcHFpeTc5UFdzNG5xN011SjFneThoOVRMTHVJUStFdG1SRW8rb3Nj?=
 =?utf-8?B?VlJQdHg4MWNLNEJqZ24zNllYb2ZYU0hXZEY3ZFQ3dDR1UHVkQnJvMWRFL1BE?=
 =?utf-8?B?SjBmNVRYWE1EejRTQU43NWdibXRtZ3JXelhBUGlZZEJaQ3dwSit2WHB6Mno4?=
 =?utf-8?B?TGY4UmlqV2xPSnA5T0ZWS01QTUVpblNnV3IrTUZUVVZxOXh5YXZCUmdGWUZz?=
 =?utf-8?B?QURWRVNvcko3emFwSS9vQ2g0T01LeHV0ZTZIcjJRZ0Mza2JNcHpBSFhvZ3Z2?=
 =?utf-8?B?WHUzVUZTM3hDMVpOcDg1SW1ONURYeUREZExJRFhYNERnb3FHKzJna1hOYmk4?=
 =?utf-8?B?QjYzZmdoWHcxV0FGWnhHTFFPSjVCZmxvdjFuTEJCNkFqTlAwaUpzeTUwRDhI?=
 =?utf-8?B?NUJwYUNzVUlUU2RqL01ubWh4WlQyMFE3VGwyeG5uUlFJdXM3cG51R2dOWmM0?=
 =?utf-8?B?Z1FUS0dhNmEwci95OWIyakVjNkpXck9waFI1dkJNSjdJbTd5M0Y0M0hMQVpV?=
 =?utf-8?B?WXVFRjR2WUphb2thZVBjdVI0dmU1QWFOU2FacVQ0VlRuWExiZklQZGNhRE1r?=
 =?utf-8?B?TDl4eEpkenRCRjdHelV6dWovTTBmNFNBMW5vOHU3Tnc3b2dTR25ucVVLd0ZC?=
 =?utf-8?B?U21EeFdOc0FSYlRnOXhXWk1MTUE3Y0lhcmt5OXJmWGpKOW43M3JIV1hPR1RX?=
 =?utf-8?B?bDJDZjFGL3dSaEk0NTVvZkVlNms3TmdsR3NkaEU5b3FWemxkVEczaldTRzBP?=
 =?utf-8?B?a3l4eVdHc2dGbHplY2NZT2cxa0gwL3VRdk5zMnlyY2FIL1pwM0kwYTlnUHIz?=
 =?utf-8?B?bThYSE9CNlB2Q2EwcmJXMVhuS2JvSnZZbUg3UU9DdTV2MDFCdmV3RlYrY1Fl?=
 =?utf-8?B?d0FQSm1OQzl2Vk4zbDk4QkZUOHdLNkExY3dobDlDcTdsMUxFdTVCbXpiazho?=
 =?utf-8?B?WlhPNjY1L1VXVFVaUjlmZXN5ZGFIaXJDRjRDeHppbTJsQjFLcXV0NEtqM3d2?=
 =?utf-8?B?MWRlSTBEQ0dVby9GcWFXdlZYSTh4WVEyNkRsNTRteWVYbzEvQjZUbElLb3Jw?=
 =?utf-8?B?ZDdRQy9HeEJJOHJnRE9STzArOUdieUpEcDB2Q2ZsY0QrdDAzbGI5RVhBUUcv?=
 =?utf-8?B?VC9hYlpIY2pMQVFZYWlhUUw0cVJ4cUFEM1dOWldiTFJKejdyTWJDbStsTHhY?=
 =?utf-8?B?OEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f21500e-f51b-4220-61f6-08da6a988d44
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jul 2022 21:41:06.5394 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zvZG/iiFhqU5nyBkStaRA9/zjymHEcJMLds2j+ClI9GPykMp/0qQye1yvqfp7M6j/m2PdWdHkg0G6bK10kSKnd7peqIunyZ5Zg1OnCO0zCc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6265
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658353289; x=1689889289;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tYn2/13P50c/Tu+ec61fxboZ/sSatY6XWXLr63OEGBs=;
 b=jm/iAt52Pe6YmwwsVbwgSzterIiAYmispvuRRhJgoKcq/WEm40nvhG+H
 cYWPiwi8qppwXx8gMgSK4nDrFsyBT1k2m1X0qv7wqZ6N4rqjPBRkUAdUU
 8rdJpQU0Ln3XqWly6QmsOlWaLTL9Mv5T0gucF1XeofMbdA7jzPMlkXohZ
 Tn5O7efgCeea6Kkfg1bIQpHtN+wW1qB0Ib7h7qWx5uQVV8s6DjX8lHPKl
 3lV2tMIwtlMqYFjdiAGr0Zmwa9iwM7aU5UWtOjTKaFxDAIfz7WC8NggY7
 1VSYz140lS/+C0ucgKN25KWXo7FJ5z3ZyeZ+JaUXcYx4jXKVILxqTeMu+
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jm/iAt52
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v5 1/2] ice: Fix VSIs unable to
 share unicast MAC
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
Cc: "Dziedziuch, SylwesterX" <sylwesterx.dziedziuch@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/20/2022 6:15 AM, Jagielski, Jedrzej wrote:
>> On 7/18/2022 9:42 AM, Jedrzej Jagielski wrote:
>>> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
>>>
>>> The driver currently does not allow two VSIs in the same PF domain
>>> to have the same unicast MAC address. This is incorrect in the sense
>>> that a policy decision is being made in the driver when it must be
>>> left to the user. This approach was causing issues when rebooting
>>> the system with VFs spawned not being able to change their MAC addresses.
>>> Such errors were present in dmesg:
>>>
>>> [ 7921.068237] ice 0000:b6:00.2 ens2f2: Unicast MAC 6a:0d:e4:70:ca:d1 already
>>> exists on this PF. Preventing setting VF 7 unicast MAC address to 6a:0d:e4:70:ca:d1
>>>
>>> Fix that by removing this restriction. Doing this also allows
>>> us to remove some additional code that's checking if a unicast MAC
>>> filter already exists.
>>>
>>> Rename ucast_shared to umac_shared, as "umac" is a more widely
>>> used shorthand for "unicast MAC".
>>
>> Since this will be removed, lets not thrash the driver with this rename.
>>
>>> Also add a helper function to set this flag. This helper is
>>> expected to be called by core drivers.
>>
>> and the helper.
> 
> OK, so can I resend the patch with no names changed and when the patch would
> be applied into the tree I would send the second one removing umac_shared?
> Is that a good approach?

Yes, that's exactly what I had in mind.

>>
>>> Fixes: 47ebc7b02485 ("ice: Check if unicast MAC exists before setting VF MAC")
>>> Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
>>> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
>>> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
>>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
