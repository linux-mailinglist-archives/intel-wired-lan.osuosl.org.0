Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86359761DD1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jul 2023 17:57:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 620ED4152C;
	Tue, 25 Jul 2023 15:57:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 620ED4152C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690300625;
	bh=Ah55uA7QGiUyiHbVcBy0AFrcfmgDVxofn6KU1R2ZiBk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zgnNkswD1fBsP1aw3ZR57WGsECWAE2d+t6xJ0Ti/SXpB+VipDmLewIvclfi5Wpewj
	 R789VQk1I4TZvUi22muSiu7huy23lAIqYkFZ+FMLk3/JqKG4E+BETX7Pn4ejKLAkCp
	 kQWEDYj7NknyGMM3WXm0XfxrKpknApMW2wCpMpmvv1BfGL2zR3IHugE3SZooR230k2
	 2thBkYtd3j8UNCojxTTy0PNoAHIHDArbwaBm2di1ElW2cyRdjt8i+Tnw+ZcURxNHvW
	 CCElnAKiCjrpPI4EvjCTE/oTVhLA+Y11tywrmJg2GxPphpdJ7MQVq3x8ZjjyvTF1Z0
	 i/RwBFarYo4xA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xkIGErlYxpyh; Tue, 25 Jul 2023 15:57:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2154841520;
	Tue, 25 Jul 2023 15:57:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2154841520
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1783E1BF36F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 15:56:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E2C9860FB8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 15:56:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E2C9860FB8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6TCkkj6wpw8E for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jul 2023 15:56:57 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 94A0560FB0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 15:56:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94A0560FB0
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="434022622"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="434022622"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 08:56:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="761253451"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="761253451"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 25 Jul 2023 08:56:56 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 25 Jul 2023 08:56:56 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 25 Jul 2023 08:56:56 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 25 Jul 2023 08:56:56 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 25 Jul 2023 08:56:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=llUlE53xVY32dK6gOX3nPNd0gsjsfzpwuLT0Fdcuo4zlNhBeqBoCxeax//fyGrYaeddDVX5LCN/VbBfr1LsPz0UrIJLiOiOw3f3+YjZpgfDeVGG99yNv5LndLFxP3zGT5EmcP8dA9LqKPtFnTFibBb4ANHGaDBq6vTxHEmoktMCuOUe9hTP/8qgLcHLYOucclR38AeykeY9Wh8pdMWQljlI0NzJieAsLLS4Zg92eUGGNRhFmAP7kPr9YtTTpU4zXV2GBHQa71qCDUxnbe7Rj0xzWq3YED+NDzO00oPHFjX2tvAh/OtSt7pVpsDg1YZ9XI0mf15NJMKMV1AJsKad1AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8krZLm9EbnHTaEd27/RZR8Z0IHNmoOQytCEu7luQNrw=;
 b=JJCyQdwY1QwxEYSri84i8LvBM1lytbq8Go7s7fnJlc2xDdkgFT24Apb5hC0DK8Z7de35WXjk04/F2BauzNIzkGHk9YoD0YRjZ/6VoynhMO/oJo4sm+VC38GufloaJuatFX8f3EN+62uqpLpGAAeliN+7A8KfCcH1dbTlOM2OcEPpvlyJlyzqUrq6wdazy/koNQ+s1DCgk198ZrZni+bceVRxajcMDjcw9OnMQk5DnfLNAgRGIG0Gu8wx3r1CpSP/0ziblZ2eEh+7ws9ILjImYdrW+3Q8ttZjno/sxBtg8Aa8DD1L9+iWnrWkfT8Jo08srDg5CvI9cm7871dRMSp6AA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SJ0PR11MB5771.namprd11.prod.outlook.com (2603:10b6:a03:424::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.31; Tue, 25 Jul
 2023 15:56:48 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6609.031; Tue, 25 Jul 2023
 15:56:48 +0000
Message-ID: <ebc68a29-49b9-9fc5-1eaa-5eb65001eb3d@intel.com>
Date: Tue, 25 Jul 2023 08:56:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230713222558.142-1-paul.m.stillwell.jr@intel.com>
 <20230713222558.142-5-paul.m.stillwell.jr@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230713222558.142-5-paul.m.stillwell.jr@intel.com>
X-ClientProxiedBy: MW4PR04CA0256.namprd04.prod.outlook.com
 (2603:10b6:303:88::21) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SJ0PR11MB5771:EE_
X-MS-Office365-Filtering-Correlation-Id: 2e2b5e57-2127-401b-efb3-08db8d27c0e0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /v9e2Se4wBa01WnT0ooU5BJO1SuVlyVuhY/Zs9gOzbsED5rNczBmiVSS63PnKFrtjTOvC794jyVMIDw7IAA57s4PJqtRCRfvnI4G7rnavMSFjziveI6Lvt0mYv2td+m8dVwZi7vKzq6xEoxerE5eupQvqe1KC7sijjCpD3BM6LU4UfCatsuQk6ayRn18ZQyJR8GpdFO54ma9z0v5ynSShREU38F7dw+8Z/9/7Wviu5BLpQZG0Hzz8ocZmeDIlWMpf69ZKQz7uyntgJc3U/9s592Hb/ZdNbgqST01rVh12Gwbx3Jw/tvt77Vb49e5Sfn/2mewFgadoNZIYB/DmMYtfSytw6UrBuNx8SVueWyKDVUqg5LbmpgRn2Jr8oTDB8FNfOMjfxA55KxTQYLpgSaMtk11eBEnWwXCDbAmbXVyHaWZFLFiYgL/G9rMYX4iv7qFVmwsLpIwYvRbRYsPsd8rEvQWazo5mbXiODhL9b1rUFmJWm8txDa/aO/ei+FmQlP/DUqndGxSdXtszZ/v77NHf+yudpJx8k7J8k4AE3LgOof2uXMHKkjq2Okf4V0jTSx3KejgHMrZyMtpg5vCdru2cz4xtUoSfupUMthTM95AK+oUXzQyCB3RC8Fgf8Ht1MVhXFzRqvBfRqaLuw9JnKILDw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(346002)(396003)(39860400002)(366004)(451199021)(316002)(38100700002)(66556008)(2616005)(53546011)(36756003)(6512007)(5660300002)(8676002)(478600001)(8936002)(41300700001)(66946007)(966005)(6666004)(6506007)(186003)(26005)(66476007)(2906002)(6486002)(31686004)(31696002)(86362001)(82960400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T3hHR3RIV3RVY2s2MkVjWkpLVHFBR3c3Tzd5UzNpMEJrd2M3ZkZYSnB2RXZm?=
 =?utf-8?B?OHp4dkpaWkV3QzlRRWFaOHpzY1BLS3dOMHRpc2dENDh0RlI2YjBzeUl6cVB0?=
 =?utf-8?B?M0dNdXIvSEtZb3UrODNscXlTd0NZQ0sxSEZoTDB1bTZ1WjlzYzg3anJOWnpK?=
 =?utf-8?B?dlBYa0toZThWTVlhN28xY0JBVWsrcG82UHl6bVlkWnlHb0FOM0l5UE4zNFcx?=
 =?utf-8?B?L1doYnFsZWhrajRGV2JLNkRBZ2JYamp3M0I2bEdwL0F5STVSdkp4aVNQNHg0?=
 =?utf-8?B?YkU0V0ZycFV5Si9nd1BQS29MZ0FZWWI5TmdDdzR3L3FQUzV3YTdQS3QrMXlY?=
 =?utf-8?B?dGZ3SWxHQUJ6bTdtd3hqZVBXN1gyQVI2KytEK2U4cUxkTDl3RVFIN3ZBOTd4?=
 =?utf-8?B?MnNkYW9ka1pIeDdhVWxDU29tZGRULzdlNno1UDdkbHZYZ25VNDdaNkZBMnFX?=
 =?utf-8?B?YUJZcGtJdS9NTlRmd2hUTUJhSk5MSjVZQzc5czJMWHlBeUczU1RPOE1Kdm0r?=
 =?utf-8?B?RVVXSWJyTkRpZCttMHppWmNiaVRQaWVDL3ZDc2RMUTV3NFFtVjZPdkp1U2M0?=
 =?utf-8?B?YXEzcmNmZ3orcElJMnZhcWxtSVFxSXVKZk85dW9lQkkvNXFnMFdESHkzQ3RY?=
 =?utf-8?B?TGF5QlM3RUFyaDgvWmJ5b04vTGtPVk1PMzZJZGpsQWRlYVBKelg1cjUvaVhh?=
 =?utf-8?B?WmpTVmt4cFlHODZzQkpqaXdFbHgzWHlNbERYQkVyZ1dPWlYrN0IwcTA2TU5j?=
 =?utf-8?B?b3IydkRxN05jK0R6UXFkTGVlOXlzaGplcy9BbjI4UUgzaWNwaFZKOEZLL0NI?=
 =?utf-8?B?c3VNTlJaeXRUQmJMZjJTeDREMERTZk1idEpPcVRkaDBxL3JSSmZHb2tPQ2E2?=
 =?utf-8?B?UXNORnFMdzFCT3RhalNTZzFCSEVIMVZpUWVlV05uQzVKWFlvTC95T0ZZWlVG?=
 =?utf-8?B?eExBNi9UQUdJdVZRbnd5a3NYMGRKV2xqa2hqQjBSajFNSlQxSmJ5SjdMaW1u?=
 =?utf-8?B?d3VidFFvd2Vaa2M0TTkxZTJsUldNbU5CL2lQdFpSWUxGQlM1aXdtUnRwUWp5?=
 =?utf-8?B?ektSQkJpa3MyN2d0aEJvdnVUVEs1RWhJcG8rYjZGbnYyeDBFcEt1QkU4ZzZI?=
 =?utf-8?B?Um83QTFKNW1taldxbVhHQnVmZUUrc0pDMUxab041Sjk1a2ZyRXI3QTRTUlVo?=
 =?utf-8?B?NVVtTEF3cUNRN1NGeHpJV2xOc3czaUlUZm9VVEloYjZmdW43cDkraUttNXhE?=
 =?utf-8?B?a3A0MEpUMi9ZNlRwWDBtK3VLY0ZnQ2xhcGZYWDBxVm1LOUM4WjgxdDl6Wm5k?=
 =?utf-8?B?R2p6TUdtaWJSSDFwM2EyZ3RmL1pIR0Q5VGZkV1ZtWW1HNEY5UCtiQXF6L1Rp?=
 =?utf-8?B?SWtBRFdwWHl5NW1BbnE5WDFBWGVJais2VmFLQ3B1OGhtZi9COHpIcGtYWGIr?=
 =?utf-8?B?ZGdrcWdvVm4xTis4L1V2b3oreHVIU0hON0k5RW1kUjhobWdpTWJvTHZvSlVQ?=
 =?utf-8?B?blZ4RzY4ZDJ3ZmtOUFdQNmVjTmNkSjdCOExreHRKanU3aThoenVEeldYZHRP?=
 =?utf-8?B?VHZURE5jUmlwREkyWU1ZbCtTRk1pVmtHWllKdTYxaTlVSzNnWUlSV1h3OHRr?=
 =?utf-8?B?SWtMekhReEowSW11OHZTRzFpd1dZL0ZLOG00elRNbzV2bHFtdlB3YTR5bE0w?=
 =?utf-8?B?ajh0UHZoUzZ0R2JKTXJiOVVnNVR1QjFjeXhsTnRQTjhCNWFsczlPRDZ6V3dK?=
 =?utf-8?B?dG9rVDM2a2ZMVEsxeTh2NmwyRkNPb2hQV1dQd09Ib084UUFqdTJRKzEwejRQ?=
 =?utf-8?B?cWlHSEphTThndlpMUU1zNXBKM0JCZUg0YzIyME5WM0hpTDJpaE1NNkNTUWtv?=
 =?utf-8?B?RDc4QUlGZkFqeDFUeGlxcitTZ292elNPdklYbGNPakdwaHJOWlUwVGRuVnp6?=
 =?utf-8?B?Q0NxRTd0bVYzVWZNOS8wUU04Vnk2RE9HS0xyTWdvSGFpTFdiU1BJbW8xQ0dt?=
 =?utf-8?B?bU9tVWRTS0ZOclhsS2Fqd1U2MG9mZzR0L0dnS0JuSFllc1FwaUpvMHdEbnVV?=
 =?utf-8?B?WjVDcVl0UDhjd3N4RGNDUWE5ZTVudDhpQVB2RWFQRGswemdJT2dLSmUxMVJG?=
 =?utf-8?B?M21POG4zOEQybkMrYUpkdndrdDVrNklGWFVpbEdnVittOXh1SU0yM25oVW8w?=
 =?utf-8?B?Znc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e2b5e57-2127-401b-efb3-08db8d27c0e0
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2023 15:56:48.4963 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tV6aIw3ljSHGr7cLFje+BpeWLPI6y4WSM166LYJwz9VXumJK9U+LOhyTOxwYRVxyVEo+f8P1BRVzgJsXUcChSWVnGueLaeXXcuKcP2GwL7o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5771
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690300617; x=1721836617;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=nxnwVPMr3CBEh0XxQshaDbEyeNa6NeqkVjFK1mFgcF4=;
 b=Um66adz5TaeAclmXUzwNcP4W5d6nDG+A1zM3Ro9DBky54DdY6tPyEY4o
 z33rU+7uIAf2z6l+WIMDS62CZ5Gec6wXPxmwOJ7DhEqp8poF0BhbOJQaY
 nPXaYbnu6i6wOwjCcJyWF8pxlaEws7G5yweqAYtYgT1iAMIVvJAS8w1ne
 LAWq5ORCER9qT0+ulR74/7Bj9Z/8LeoCZH19UZcJMtH/LbYXle7O5d8ka
 wQmdcdTZQ6ij0d2izrhjM5g440FtHqETz6tCM0PnWjionxm2BDtJiqK6T
 kZlmCoMAOqIYjg41e5pZ1nkpHemcKPz5t4ExbH9fPjmbNDBs0un3R9B0k
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Um66adz5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v14 4/5] ice: add ability to
 read FW log data and configure the number of log buffers
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

On 7/13/2023 3:25 PM, Paul M Stillwell Jr wrote:
> Once logging is enabled the user should read the data from the 'data'
> file. The data is in the form of a binary blob that can be sent to Intel
> for decoding. To read the data use a command like:
> 
> cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/data > log_data.bin
> 
> If the user wants to clear the FW log data that has been stored in the
> driver then they can write a 0 to the 'data' file and that will clear
> the data.
> 
> In addition to being able to read the data the user can configure how
> many buffers can be used to store the FW logs within the driver. This
> allows the user to increase/decrease the number of buffers used based on
> the users situation. The buffers are used as a ring so if the driver
> runs out of buffers then it will overwrite data. To change the number of
> buffers the user can write to the 'nr_buffs' file like this:
> 
> echo 128 > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/nr_buffs
> 
> The value written to the file must be a power of 2 value between 1 (not
> recommended) and 512.
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>

lkp is reporting an issue that came from this:

https://lore.kernel.org/intel-wired-lan/202307242017.3f4YsHnA-lkp@intel.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
