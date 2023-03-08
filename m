Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A2E6B1671
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Mar 2023 00:22:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D912761230;
	Wed,  8 Mar 2023 23:22:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D912761230
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678317761;
	bh=SeRCUr3zmY9b71mySftXGyPZtQKVXuuJilM8f4m3If4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fjZmaKwYGO/UiuWH3SQl/LDNFZPlQiogS2NQpY67YhetR/P5HY4j3N32/adVKGqAx
	 X8yrJCHF+MuQPhQWzJuMGV96JWIssTG+ctAzcLABYlqmPIiBrAjjV0f91TWTY+r7Oq
	 AuAnrLQbUBFr6oUodTQ3avav1BrZhvzvSCSNwUYID1wUFpbf0eQ4Ff3Z3KUcmSSKPB
	 hX/JyPTq24uqzD01AKuusU1QcuLxlQymMPUNvsl4vmPL9lG0JB5owJcWMOsEY1zLCG
	 YDQfQPs9Ay0fHXpgCbjjRFuo6fJSTkGSSdwdwqSiEejkgnqdZ/u0sGNugGmdz6t1Hs
	 viP0OS/RvTayA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qZEoG4ayFAVs; Wed,  8 Mar 2023 23:22:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 85C4D611B4;
	Wed,  8 Mar 2023 23:22:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 85C4D611B4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C45981BF417
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 23:22:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9C77340589
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 23:22:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9C77340589
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CD-nC4mpWFKk for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Mar 2023 23:22:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A82F400D9
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5A82F400D9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 23:22:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="401133483"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="401133483"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 15:22:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="670513058"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="670513058"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 08 Mar 2023 15:22:21 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 8 Mar 2023 15:22:21 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 8 Mar 2023 15:22:21 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 8 Mar 2023 15:22:21 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 8 Mar 2023 15:22:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EzfYhwwfZCevRjG8T+xXA5YOwesF8cgpmngS9rBbhxCiLA0mGVy2bl2VrAqLSK/HlICgxSeZqATiFLR+gue61X59FehGuv7PhKUaOsReP9/X2WTjBSzgDUWdZoIdohTDUvjQr9RrfAJMWxd54LrIpyK0Y4xt4CbUMs8dKXUCEDGTiLeIqTRx9l0O+y3WLPhn+L8rrnA87K66nKhle69JJEUiUWCsBCbl9n2WMDvD9ZUcRdgJUXuAI+x1ORPVWCxuKC32Azebkl6KgLWCHubsZoqjX8gn5Aa2mQyhK5PoEV4qBJByVz9LH2LZQXcokHgueFmkV1qgJyUmyz5f/LcdTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g2KkWILI6r+WDxBEaoLspuTEdsueWgWUbq7JayzwhBs=;
 b=CdhCAErXly+g/Ufnw47GO6HSusOLzDfMV6Fs6uXvF7aH302hXrzgNtnuANFksfRdL9Om5pAKdYVUw58BR7FEExuE30qBph6w6eEJRntXhWu+8gaCQhuEk4rRCeppDQekRjWEhV0TWe165Z/VQPmslG48ysBlqoxoBBiz287jPAL0ppj8uhhvlZMIMlSOhI665S5U9mj6BLwWOuVQG1AI1wF58XafMiz92XPX5wgBJhMJMCiHcJ4qdDAhFpbGaUH3ImMJjTwkVy2JqwEdb55dPvdMxPypX4P3xAl9Tpge9GFvxN91ID098vDxaPYXrhweOPn0foJlrxtk/EZ426405Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5647.namprd11.prod.outlook.com (2603:10b6:a03:3af::6)
 by DS0PR11MB7925.namprd11.prod.outlook.com (2603:10b6:8:f8::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28; Wed, 8 Mar
 2023 23:22:19 +0000
Received: from SJ0PR11MB5647.namprd11.prod.outlook.com
 ([fe80::f7f0:7a6c:b92f:ed7d]) by SJ0PR11MB5647.namprd11.prod.outlook.com
 ([fe80::f7f0:7a6c:b92f:ed7d%4]) with mapi id 15.20.6178.017; Wed, 8 Mar 2023
 23:22:19 +0000
Message-ID: <75a43c1a-5ba0-b489-f002-861b9d602748@intel.com>
Date: Wed, 8 Mar 2023 15:22:17 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230302215109.124-1-paul.m.stillwell.jr@intel.com>
 <20230302215109.124-6-paul.m.stillwell.jr@intel.com>
 <5aaa7525-cfee-225f-940c-78d646484c6d@intel.com>
Content-Language: en-US
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
In-Reply-To: <5aaa7525-cfee-225f-940c-78d646484c6d@intel.com>
X-ClientProxiedBy: BY3PR05CA0010.namprd05.prod.outlook.com
 (2603:10b6:a03:254::15) To SJ0PR11MB5647.namprd11.prod.outlook.com
 (2603:10b6:a03:3af::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5647:EE_|DS0PR11MB7925:EE_
X-MS-Office365-Filtering-Correlation-Id: 4067a423-00db-4cff-d1ea-08db202bf60c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FbM7T7YHVZXugrCL1ke5eqXsNsr18+pQwjEJIfyxr/07TJra5x+t1NAPEGYh3NhnG2wJTbULvSf0GYCcVcSoKworhRTbIu+mu/O7ZEwIRROScYq9nwZBvlYjVYh6LRruuv42Xw+5t+kqq3J/noaaBuLN9LS06xvIpuXByk63CyYFJfc0SaxGmSuFyRFLB70kmE79bHgLZj8S1F1Ttafaxx46hk8yQTd+c0FeXJsauTx+P8FW2HHqpvw9hWDggSa8JP91L2cnCBiyu9Pgavic8gKzn6Z27FU1IMRTQQ9lmHowyJpuAD8m/9KIqle3VLpVLtTxMD8NWMat/kSwWNCzWzob/34szOnPRyj7YnpLWeSYsOzOC6gbVSgilaEJXT2hs2ze3UH7FXiIKbpeqQin7zdKb6v39RNpxWkKq2JVaYn3bI2JL1N6rT6OuRsOioCDzmEhiK3OAWOvMvckOMBEWCjv9S1M1ZYFqmkp4ghLIQjUkS5ftschC5DcmVGqBhdo1OiYwaatVgDNb1jo1lz8NXJiiQzoonX7L5UzwtnDGMvhCmxJc8DKbT0Tv9a7lbCJZeCK8rJ7wm75Z/IK2J7vNYvGJY6VMzPQDudbwaBSUMhGq9hw+sX4q346kCxqzEZHq1/s10BoSzX9xEN9/irkrExyU1FpSEblNMg7uSZI3P7sPoZyH4lMSJ4opF6Qo3/LlphLhCbkptgh5aledX1MFpYdAQaBfVFNOf9rHOd+NuY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5647.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(136003)(366004)(376002)(396003)(39860400002)(451199018)(8936002)(31686004)(5660300002)(66946007)(66556008)(66476007)(2906002)(8676002)(478600001)(316002)(36756003)(6506007)(6486002)(53546011)(86362001)(26005)(41300700001)(83380400001)(2616005)(31696002)(82960400001)(38100700002)(186003)(6512007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YTkrUEp0RUNUZGx5K0xkQVhzZWNBL2Jma2FqL1pjekU1dVkrSVpXSmRRUHJY?=
 =?utf-8?B?bUNERllSVm1kajV5cjhjMmxUczBCRSsvMFo3K1lUYUxMSXpMNnlJUWpaRkpw?=
 =?utf-8?B?aUd3cEhraFpkSlpISFVsYjRubTdUa2w2L1hhZk9RUWNoTlF3eS84S0VOY2Vv?=
 =?utf-8?B?MjJkd2Ixc2tiUU1xWWZqYnBLTU1mcUdJZTg4N1UzM1F3aVNDUC9vUUhPQzFW?=
 =?utf-8?B?ZmRlNGR4QSsyWnVhbExDWmNQeStBWXAxQ1pzQnhNVUxVdm02MG5sQUcwaW9M?=
 =?utf-8?B?SjZON2c0LzZXYi9MVVZOTWV5OTdYNWY4d2xUbTh6S0RFaUgrc3pXNUc3Z0tj?=
 =?utf-8?B?SGpqbUEreHFlNi9IOWpJMktja0V1bi9qVEtqdVo5OEtSamFLNXJZbXV2OUNv?=
 =?utf-8?B?Q2N1cTJNYWM4OEIxR1k4V2IwcFZ1MCtHbWlOTTRBQzdrZDVVcDZZNlRPMGZT?=
 =?utf-8?B?Z05QNTdaNkhob2tSWTZpVVpscEZXSi9SQzh6MzljVU1BODB0UmxPS1RZY0xi?=
 =?utf-8?B?Z1RmenlKT0FUZFpTbWNDRmQzWDhmK3M4N0wyaElFcC8yd0EwSUlGd1VxdC8z?=
 =?utf-8?B?RjU1WlY4UzdEU0pmY2JZNFYvQkRvU2JPZ3E0Y29USnZRWitHdXh2SWJhV2Vu?=
 =?utf-8?B?Qllnb2htekdMQ200SytyL05DdE42RkR1djRqOExkazJ6ZmJWMnpybkRoSEhP?=
 =?utf-8?B?RnViUFVqYnVkTE8wL0hJNlJ5RWE4anNPQ0l1ZkdpdjNFdjJ1Z0d6R21JbUtx?=
 =?utf-8?B?QXhwM0xRL3luejdmcXR1a2taMDdkZU5PcXpMbU91NCtiRnEvNmpTejI5NTUx?=
 =?utf-8?B?cVN5RVBIUFBFRTArcmkwd01PVk1DRGNHWFlhOFdaUXFKdy9wRlhDbVJEaTZH?=
 =?utf-8?B?bi9QWUZ3dHQzbmRQVyt2MjNjbVRuQ0ZKQ0R6Ty9OL0ZEanMxKzhRc1JlUUxE?=
 =?utf-8?B?OThGU0JxeUxVK011TWp1Tm1GcU93dEM0aUFjWjhIRElsVkVXVnM0WXNFencx?=
 =?utf-8?B?TTB4T3lYa3NHVzlDUmY2SlQvWFJGVGN6UnZWYUJHU2pLNkhxakNNUkgwbXR3?=
 =?utf-8?B?QlJmREc2YUlxRmM3S2NiLzg0K3JLemRiWkdQTmIveTVZbGdiOTdHNVF3Vksx?=
 =?utf-8?B?dUdualE1MDlRdkxKbUNadDdlNWFONmlqQ1dyK20wczZhYW1OczlXY014bmxV?=
 =?utf-8?B?V2FFZksvYlhZVDI3N2FuN1Jlc0FzOUpRM3duREIvMWdaWlpRWUVsK0F6cHhV?=
 =?utf-8?B?UXgvN1BIT0RFdHdSZStzWWRKV29IaWx0a0YrQUlBNXA0TjNxckJvSmpIWU5p?=
 =?utf-8?B?aklWZ2NWVkpTWDRvcVdoTDF0czVuWmlWYjdrdHd2VW0rT1h2ajNqOER0ZEE2?=
 =?utf-8?B?VHp4NVZtUXhrNFlNLys4blY5YWJQV3E5MC9FRENBbDVuQTllak5RY2Zhc3k4?=
 =?utf-8?B?ZEZrbmNEQWVPWnhFT1ZjQkZ6cExFZEZYVzJ0ZHhyeDdMcnA2eG90OGszdS9B?=
 =?utf-8?B?ZlpnSHdNZ2M4ZFdrUHRXaU5YdHFWV3h0NEtLdVBLSkdPUXFmekFZZUxrTytZ?=
 =?utf-8?B?Y0MrUXZXajIwRVphbkxHek1wMDFKZXAwYXRkOElpWHpCbnNnQUt6Z2N6Y25m?=
 =?utf-8?B?OSs0NHIrWXJkb2huREl5S1ZUYUx4M0dzdENxa1dDWWFnOU9IcUtqMFBoTlh3?=
 =?utf-8?B?ZVdXSWFZVmsvYnFOWVZxTmMvQnMxdEhmMzZUWTAxTW5TQUVZbmd5YitiajZ5?=
 =?utf-8?B?aGJ3NFQrd3gzTG9xVTd1cURYaGsza3ZuUEhyNDc2U0dWbjRnbnF2REk4OWNW?=
 =?utf-8?B?SVBzQU5ZU3NFQmdUMFQ0c0J1b25FRGU2Y25xY05lb0FsUVBrYVVVaVVOQ291?=
 =?utf-8?B?c1A1bTNWWW5pRkdxTm5Hc1ZNYnZ3cjBVUWRFcm01NDBCSDVuejk0djhzVjZP?=
 =?utf-8?B?bE9wT042K002Wmk3V2tRU21kcTgrRnY3dUtnNU54N2lQb1c0YXVOOGo0Tzcw?=
 =?utf-8?B?a3ByMmVPbkFpNzFreFJwa2JrRVhsYTYvV0pDbEVIZnJOTGlLOWNtVnFoL1l0?=
 =?utf-8?B?T0wxQ2lZcWZJLy9BUTVmcXRCZ1pFayswTUZZL05VZGJLeDU2bEUrYzQyUUdE?=
 =?utf-8?B?em1YQzNkNWlsdklzWmh0RmVldS9Zcm5yL0l6Yy9xSTlncy8xWldyK1lKNVNI?=
 =?utf-8?Q?j+SrTPq+FHU9DVaMb4ibpOc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4067a423-00db-4cff-d1ea-08db202bf60c
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5647.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2023 23:22:18.9427 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DH72R2/9rw96JSE+y/DdxQSiRmhsjT+RaWfPg8G7MT5JVRnCF7KNiGnFIED2r9jZuJRhF7y9a0UEfTsAQ5VyjgX2UtYYlrc00gGsMMkooYE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7925
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678317752; x=1709853752;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=fvTIHggNojLPNdK+Qm1hlaViGmbdWaKhY4vRJClWWT8=;
 b=La25OmDLyELUsYk6+qB7UY1GG8wx4stnZ1wVasQtME0i5nPfrFK0m5zd
 ROg6taU1Ffrw0gxa78wVnwVkpBAiYEyGxYT9HX5bU3S+BCfBQxCxd43JF
 H/oBFV7i/7dVq3ycgkFv8H3fBzbWicDEmCf2+/zIPuz85e5OxE1wp/A3y
 Sa+o07V7H8k7aRB9hyTT0lg46I9JS7Oe7pqpkp4qwXvBg9TPbkeY4fVvO
 bShs9MZHf5L+7WwBSpyeYIgH7rMp0E9fX0dK/WSSUMSiBOvJy4ZhraKzW
 8X7Nj3IwZmyIikJdUUQwvXuO3/+d9VblFLwezSdeIfoSW+UPkjQOnuEIc
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=La25OmDL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 5/5] ice: add ability to
 enable FW logging and capture data
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

T24gMy8zLzIwMjMgMzoyMyBQTSwgVG9ueSBOZ3V5ZW4gd3JvdGU6Cj4gCj4gCj4gT24gMy8yLzIw
MjMgMTo1MSBQTSwgUGF1bCBNIFN0aWxsd2VsbCBKciB3cm90ZToKPj4gT25jZSB0aGUgRlcgbG9n
Z2luZyBpcyBjb25maWd1cmVkIHRoZW4gdXNlcnMgbmVlZCB0byBiZSBhYmxlIHRvIGVuYWJsZQo+
PiBsb2dnaW5nIGFuZCBjYXB0dXJlIHRoZSBkYXRhLiBUbyBlbmFibGUvZGlzYWJsZSBGVyBsb2dn
aW5nIHVzZSAnZW5hYmxlCj4+IGZ3bG9nJyBhbmQgJ2Rpc2FibGUgZndsb2cnLiBBbiBleGFtcGxl
IGNvbW1hbmQgdG8gZW5hYmxlIEZXIGxvZ2dpbmc6Cj4+Cj4+IGVjaG8gZW5hYmxlIGZ3bG9nID4g
L3N5cy9rZXJuZWwvZGVidWcvaWNlLzAwMDBcOjE4XDowMC4wL2Z3bG9nCj4+Cj4+IE9uY2UgbG9n
Z2luZyBpcyBlbmFibGUgdGhlIHVzZXIgc2hvdWxkIHJlYWQgdGhlIGRhdGEgdXNpbmcgc29tZXRo
aW5nCj4+IGxpa2U6Cj4+Cj4+IGNhdCAvc3lzL2tlcm5lbC9kZWJ1Zy9pY2UvMDAwMFw6MThcOjAw
LjAvZndsb2cgPiBsb2dfZGF0YS5iaW4KPiAKPiBUaGVyZSBzaG91bGQgYmUgZG9jdW1lbnRhdGlv
biBmb3IgdGhpcyBmZWF0dXJlOyAKPiBEb2N1bWVudGF0aW9uL25ldHdvcmtpbmcvZGV2aWNlX2Ry
aXZlcnMvZXRoZXJuZXQvaW50ZWwvaWNlLnJzdD8KPiAKCkRvbmUKCj4+IFRoZSBvdXRwdXQgZmls
ZSBpcyBhIGJpbmFyeSBmaWxlIHRoYXQgd2lsbCBiZSBkZWNvZGVkIGJ5IHRoZSBGVwo+PiB0ZWFt
IGZvciBkZWJ1Z2dpbmcuCj4gCj4gUGVyaGFwcyAnYnkgSW50ZWwnIGluc3RlYWQgb2YgJ2J5IHRo
ZSBGVyB0ZWFtJwoKRG9uZQoKPj4KPj4gU2lnbmVkLW9mZi1ieTogUGF1bCBNIFN0aWxsd2VsbCBK
ciA8cGF1bC5tLnN0aWxsd2VsbC5qckBpbnRlbC5jb20+Cj4+IC0tLQo+IAo+IFsuLi5dCj4gCj4+
IGluZGV4IGE2MTFlMGQ5OGJkMC4uNjhhYjE5Njc4ZGJlIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2FkbWlucV9jbWQuaAo+PiArKysgYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2FkbWlucV9jbWQuaAo+PiBAQCAtMjA3NSw3ICsy
MDc1LDkgQEAgZW51bSBpY2VfYXFjX2Z3X2xvZ2dpbmdfbW9kIHsKPj4gwqAgfTsKPj4gwqAgLyog
U2V0IEZXIExvZ2dpbmcgY29uZmlndXJhdGlvbiAoaW5kaXJlY3QgMHhGRjMwKQo+PiArICogUmVn
aXN0ZXIgZm9yIEZXIExvZ2dpbmcgKGluZGlyZWN0IDB4RkYzMSkKPiAKPiBUaGlzIHNob3VsZCBn
byB3aXRoIHRoZSBwYXRjaCB0aGF0IGFkZGVkIHRoZSAKPiAnaWNlX2FxY19vcGNfZndfbG9nc19y
ZWdpc3RlcsKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPSAweEZGMzEsJwo+IAo+IGVudHJ5Li4uCj4g
CgpEb25lCgo+IEFsc28sIHRoZSBkZWZpbmVzIHJlbGF0ZWQgdG8gdGhlIGNvbW1hbmQgc2hvdWxk
IGJlIGJyb3VnaHQgaW4gd2l0aCB0aGUgCj4gY29tbWFuZCBpbnN0ZWFkIG9mIGFsbCBhdCB0aGUg
YmVnaW5uaW5nLgo+IAo+IChUaGVzZToKPiArI2RlZmluZSBJQ0VfQVFDX0ZXX0xPR19DT05GX1VB
UlRfRU7CoMKgwqAgQklUKDApCj4gKyNkZWZpbmUgSUNFX0FRQ19GV19MT0dfQ09ORl9BUV9FTsKg
wqDCoCBCSVQoMSkKPiArI2RlZmluZSBJQ0VfQVFDX0ZXX0xPR19RVUVSWV9SRUdJU1RFUkVEwqDC
oMKgIEJJVCgyKQo+ICsjZGVmaW5lIElDRV9BUUNfRldfTE9HX0NPTkZfU0VUX1ZBTElEwqDCoMKg
IEJJVCgzKQo+ICsjZGVmaW5lIElDRV9BUUNfRldfTE9HX0FRX1JFR0lTVEVSwqDCoMKgIEJJVCgw
KQo+ICsjZGVmaW5lIElDRV9BUUNfRldfTE9HX0FRX1FVRVJZwqDCoMKgwqDCoMKgwqAgQklUKDIp
Cj4gKyNkZWZpbmUgSUNFX0FRQ19GV19MT0dfUEVSU0lTVEVOVMKgwqDCoCBCSVQoMCkKPiApCj4g
CgpEb25lCgo+PiDCoMKgICogUXVlcnkgRlcgTG9nZ2luZyAoaW5kaXJlY3QgMHhGRjMyKQo+PiAr
ICogRlcgTG9nIEV2ZW50IChpbmRpcmVjdCAweEZGMzMpCj4+IMKgwqAgKi8KPj4gwqAgc3RydWN0
IGljZV9hcWNfZndfbG9nIHsKPj4gwqDCoMKgwqDCoCB1OCBjbWRfZmxhZ3M7Cj4+IEBAIC0yMzc1
LDYgKzIzNzcsNyBAQCBlbnVtIGljZV9hZG1pbnFfb3BjIHsKPj4gwqDCoMKgwqDCoCBpY2VfYXFj
X29wY19md19sb2dzX2NvbmZpZ8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPSAweEZGMzAsCj4+IMKg
wqDCoMKgwqAgaWNlX2FxY19vcGNfZndfbG9nc19yZWdpc3RlcsKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgPSAweEZGMzEsCj4+IMKgwqDCoMKgwqAgaWNlX2FxY19vcGNfZndfbG9nc19xdWVyecKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgPSAweEZGMzIsCj4+ICvCoMKgwqAgaWNlX2FxY19vcGNfZndfbG9n
c19ldmVudMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPSAweEZGMzMsCj4+IMKgIH07Cj4gCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
