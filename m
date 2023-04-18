Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CED056E6A25
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Apr 2023 18:50:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 673E06156D;
	Tue, 18 Apr 2023 16:50:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 673E06156D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681836653;
	bh=NQOPjyjQfReb6OmdxJ6pNUP37GizORAZxxx2oMSrXxE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TMNvnNrzVlThruXpBYDpAaEZy1Cs64m2KF3p96+WtIykcjjsdn1tH3yOOFlcQnp19
	 FnfwQ62yC8lkfY7hjLGyKwfxddheWMC0Kqo4NfioJRdQreSeVsCPkTHQ+BrY50rBA/
	 IA6p+o1Q7ZbBHUPnD1pb0fgW+eZEYZylbPmoBX0aC7SoOEo7Vy9NjpIfhULq00bZ1c
	 GVb9a0neENFUdmVdgIyEJnza78kq/gKj+x1xJaf5fhY63LW9utgKqmhT8Sdl/sfyxE
	 v6hKUXRgtk0DQQzUUALD6/lB/bWjvV12CuCExZDvCQ6llqyTRzLiq3erZENSQVvX12
	 Qp7gMzJKiNk2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g8NA1zfL5CaN; Tue, 18 Apr 2023 16:50:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E79C61562;
	Tue, 18 Apr 2023 16:50:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E79C61562
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AA5201C4266
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 16:50:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7C43861562
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 16:50:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C43861562
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wn7NE3qCGZVq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Apr 2023 16:50:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B5DC560A62
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B5DC560A62
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 16:50:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="343975978"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="343975978"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 09:50:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="721569021"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="721569021"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 18 Apr 2023 09:50:45 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 18 Apr 2023 09:50:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 18 Apr 2023 09:50:45 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 18 Apr 2023 09:50:45 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 18 Apr 2023 09:50:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FmV61PkGTi3Iuim8uxIhtX0Ke0BpFEIBJCHmhA7eTSQWGawCxB8iBuTULGACybWUWNZGrN1cXPZg2Lns1QAwkKOr3s8qh7QnAtLA3xLsSsn7zExzaHEpxqR09jfXQwtCALbyk0CNBFxoeFqKe/9CY7H7tBuQLAZFXbc2Hc9uyquYTToq4fx3BhLybrI3olSwzFpr+c3CdIP1RQ1Q0JJlv42q8YaYGes42xaEPRkmMoDULJ5zlqLvM+/Y/3AIHOEpcC2ivB0WZepUgjNMRgFQHPnZMGeh47q4UHWDu34kL7UJGmB9ZmV/v3Pqa4ycEHMFCVlLomEaFrBosSldnJBz1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sYCS12S2QvXe48d/HAEL5nwtV/Typo6LoACrfi7FgOY=;
 b=kT9E2qiBXp/dtmWvmvku534/YsVyWcGare4cemPkt+c74+yAKEIqyTIkRdDOezgU9QUIjB+czIw3o1A5kencHurqjLLSEPMlDIHGxlNCalerTWAvvrf6DUTaDi0SAs8oZ09Xj3DLmbi5LCuRwOthu6Yi8pzMno/jxFJKIP7mi7Tsreiziy0sb+3GaJf9Zi1gyj8P/OYcwQWk0elhTRu2GXW8dcEh6+LDFomjhrAJ5vTK7tb7A2+1EL0uR5c5WUGP98R3dMo3nKQI0Ftop+6nZ4iBS9YdMbEuDQtP/AlqIB/LAdbb0DBOpe0gVVV706neQpnRPvyiYW7vgX4QpwupZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CY5PR11MB6163.namprd11.prod.outlook.com (2603:10b6:930:28::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Tue, 18 Apr
 2023 16:50:41 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4b81:e2b0:d5fa:ad47]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4b81:e2b0:d5fa:ad47%3]) with mapi id 15.20.6298.045; Tue, 18 Apr 2023
 16:50:41 +0000
Message-ID: <be26a12c-6463-0e3b-9e05-eee8645e7fa6@intel.com>
Date: Tue, 18 Apr 2023 09:50:37 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Ding Hui <dinghui@sangfor.com.cn>, <davem@davemloft.net>,
 <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230408140030.5769-1-dinghui@sangfor.com.cn>
 <20230408140030.5769-2-dinghui@sangfor.com.cn>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230408140030.5769-2-dinghui@sangfor.com.cn>
X-ClientProxiedBy: SJ0P220CA0022.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::33) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|CY5PR11MB6163:EE_
X-MS-Office365-Filtering-Correlation-Id: c696170c-be88-453b-3b7a-08db402d0b48
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: B3Y17ApFXy8ZJS/8C8C1HmeThZI2dAW7LuNNx0ZDjsSdP9cklFpp6NrmNoepfbWYCdC+abKSNOQV8wRixzIB/CMS4Mm6FseW6Cu9H7C16CHeiXI6z0k7qyfBEdwSb/v+l8F5j4+g1tPsn1T6OPMloUNPz10PT9s2UppAN2JSVDm1X822v+JnGYvka+ndvlewGf9rQvyLIfK+JG35hR2AlBHWdqIdaZv8epRFFY7M9tYqxzKZZ8SY0+VCxmxjykeO+iZ4KdLY1/trfUX46Z7pQv7qhSZcrcSCLgOOeTC7g4SNzZn/pl6U9FHIMcrNHXu1SHvelbs9OrqSmbw5aNA+PtLAhzLRyKf7RP3+iYlebclBamQgRKloZQDwWXbr7ZFZBhfWcxX8xkyRtForNNARSg+1CB2R3kQw83EU/VI1ydBmlcOWAAixOL29PTO3kmglJlIUMGafnzzmCIIZlHez7vc/0xRzB31YZpt0ylv828BB7du8xUuhPCDqtR4HgrM2dSLr96zAm3c9DXs08mP5gTyXkdD/0BbBgc6puRRmQGidqegzij6QktSmq1gObotFOZjvNkfZpvXmO+5EpeKbmxuXAK+EyTtRrvCB0HRdRmRl20jmZhtJn1alJ3yrPxm83Oh0hIHMf4gdEd7YSs0zZg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(366004)(376002)(39860400002)(396003)(451199021)(8676002)(38100700002)(8936002)(5660300002)(7416002)(2906002)(4744005)(36756003)(86362001)(31696002)(478600001)(6486002)(84970400001)(6666004)(54906003)(31686004)(186003)(2616005)(6512007)(53546011)(6506007)(26005)(66946007)(66476007)(41300700001)(82960400001)(316002)(4326008)(66556008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OS9WWVJpV3BmeWZ2N3dHbEs5a2ZEcDV1QVNkQ3pJd0pPUmlZYkhEckxMK0FS?=
 =?utf-8?B?cXlvSjNJYmNTZFJFL2xvRHE5dWdwMTBHcFZuMW9xdXczTkpqNWdGVzVGYUtM?=
 =?utf-8?B?ZFFHUVFSd2l2bVRoRjU2bmxwRE0zNFBlMCtScGV3SkE1SlNVcEdUQ2I0MXAw?=
 =?utf-8?B?dTdGMkdXYU5CVGRuWjVaQ1FyeWFSYWtMUVN6OGV0c1JYS01jcGlNeHVTb25E?=
 =?utf-8?B?akgvc3Y4QTd2NFQvc1pyZ3RXdW1QbVFMZE1VK2pLU1ByTzlpdlFwbERoU1Bj?=
 =?utf-8?B?L1IxbjZ2Y2lHbWxPdDVFTGI5Q3ZnNkhLMWRTNldYRTlHd1RYWU4vYmxzREZW?=
 =?utf-8?B?SGg5Y3FReEZESmMyVWJlN083OWI0WWY3ajdtYUFaOUlxTVBrK1l3Sk83MDZL?=
 =?utf-8?B?Z0ppcjc1V29lbllmZ2tFdmJ4ZzZXV3h1bWd6UTFpSHpaS3FwazNqRjM5UWVw?=
 =?utf-8?B?YXpWdGt2YXNVM3FCL05sUkpkbkswNDl0ZWxQOVhvL2JMOCtpRml0QUNMV3Np?=
 =?utf-8?B?dHBZb0YrSlNmNExhU2hxU1dHSVhXVlBHMWRSZFVVdmNNMjhhUHl0c3BheUlH?=
 =?utf-8?B?WUovd2ZwbnhXSXVSMm1Gblg3aVBGL1FFYllxekN0Z090TnlWY0ttL1ZrbVJX?=
 =?utf-8?B?cjMrcW1SNG9ORjRrMHIwOFFHT1ZoUEhBamlZTlJheHFFWm16cUJielJWWlJl?=
 =?utf-8?B?Q2gwR2JjdXc3QUVqa3R1ZU1OZVpFU095djVKK0JxcklidmVnQzdxZllFTmZX?=
 =?utf-8?B?T2FzQXRkckJ4SmlWTXhMdXdaS01lRXNCVGxFMDdUTDVEdHNLdFUvYllKdVBR?=
 =?utf-8?B?bkliN091NGVRQ0QyRm5VSlRxSC9uUlhNbngxTmZIeE4zL01ueVdFbzVxQWFz?=
 =?utf-8?B?dklKZ0JSWjdRQ3oycmxRVjF6eVcwMXE1SFJDYkNJcUdwQ0o5UzhkK0w0V0ZB?=
 =?utf-8?B?WTJVRm1aNDdNQllmVlROWTZWVWJxTEl1VXY2SnZ6KzZoZ2JtZ1ZOOVFHa2Zs?=
 =?utf-8?B?MHlQOXRJV05FKzdGNW9kZTdMazRwSkJCQ09iMDY4REJjaWthU29FdDM2UUJB?=
 =?utf-8?B?TnEyYU05SlZ1V0d0S1NUMnZkNndITE41bERuWDdEOE5UY3FqUXpBQnVQd1R6?=
 =?utf-8?B?UTJiVngzK2hWSElGb0F0Z0p6SVhkaHhzSmM0cDFnSVloYzRaZzVJZ01GWjdV?=
 =?utf-8?B?RjAzbnV1M1RieDlqeWNsbUFybE9VTTdiNDlYdUQwMUI5QS9XSituZ0IrbVpw?=
 =?utf-8?B?c0xNM0JVckN1YVkxWmcyYjhiMGh3VFBQc1pxQmVmQnZNK3RBSTZndTIzRTlB?=
 =?utf-8?B?cWZSejUwUkZaT0tKeTZuOE5yek5tQ0thekcreksyN2R0aDVlN09WcEU0RkZ6?=
 =?utf-8?B?TW8xUFRGVnJpcGlvb0RMQ1JOTlBNYzhXZWFHYVM1ZXA5Kzhpa2YwWlVLNXpZ?=
 =?utf-8?B?UXo2RGl6bGY2bmZnOWhzYVo2T0J0U3N3WmNqci9aSngwcHV6NU55MHRRWGZB?=
 =?utf-8?B?a0YrVUdIRjJnbzZIUEV6dUQ1ZHgzcXV0VS9FYjV1Y1VQbUt5T01CVG5PU0pC?=
 =?utf-8?B?Q1JFOFFuN2VzWk9DajFJbVRIR2UvREhieWhBbHptc0dtRGhmR2F1K1ExNzZs?=
 =?utf-8?B?dVNuYU5ZVWdMTEV6Z28rUys5bFQ5dEdNRUdEb21JakVKRkl4b1VZcFRDVkF6?=
 =?utf-8?B?S2YycXhkb3pFc0xkWUxHckhxd3VHMzR6Zk4zYnBqK0JyMDZmTHpPc0Zqb092?=
 =?utf-8?B?NlZnSHBjSm94WTFOemxrZTFxVUpXVGdEaXllZG90UzIxLzRUMUV3Z0xVUDhz?=
 =?utf-8?B?MXhYWUdMbFRzV0t1eXVSVmp4OGVtRS9sOWJoUXdlblRUc1dCSFJ2aW4xYUlQ?=
 =?utf-8?B?M1BFaXY0bDRqOHdNZ3MxYXRtWS84aktscm1rbjFaOVUzeW80ajgwNng3SmNK?=
 =?utf-8?B?YXV6QzJTQjJnN2NkMmptWlM1cFp4TTBVb2Q3Ny9nTTNHdyt0MkU4b21mb3VV?=
 =?utf-8?B?YStIMlBuMUdyMGNVdmpNYmh6Zi9ZMGRSd0gwUmNUNE9VMm00WUV0Q3l3VnZC?=
 =?utf-8?B?UW0yN1J2RCtrdCtKTkJyNllxb0hZVG9nSVU5bkxUQ3JsemFHN2Y5TWpycjZw?=
 =?utf-8?B?bGNEa3VCZkpmQ1k1THd0WXprN0NLbzljWW9PR2pEN2hXUTlYTmlLNDlXd2Z3?=
 =?utf-8?B?dlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c696170c-be88-453b-3b7a-08db402d0b48
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2023 16:50:41.3842 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9QD63i4LLw3V9aidLoszUg6+M96CwNYEpSCijJ0abG+dAxzUBaSZ0wNRfRex0f0AWihv5BWCsD84VelN0EfLuudhfgB8opUh+4f1q2TZZ8o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6163
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681836646; x=1713372646;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DyMeT2zuC1JPSYMCdia9cdgqrJZXYnTAzbi/Wlt1VFQ=;
 b=k9selOPkqLrW6WTGSj6gQodYWUswLd1ehYCjP8Un4B9h78DLIeH5Qq8S
 L8Ol5SaPb3PqYV2eVNThfKvWH0YHf51BY2iYzP+7P5OBH9aWubzmxpPtw
 8lo3qFe2CB/boPDeEzjyXtfNhe1qGrVu//9hGNLWG0E9qKtbv3crVAv2j
 xmTMBNm7N31A+/m3Otm/qOBvEMG2OQ1+l228OTzW9wp4kHzMCRWH/41Fk
 CTybpiDNlMXzP06uml4nXw+eOGxre5qMovDZ4ZdYNH9Q3CJkxXpUUzkAx
 JMJiTlvbXr2ykDdVY2YRnPbzjMBUhc/+xbHvzk28mpk7/cx97FddsG0Z+
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=k9selOPk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 1/2] iavf: Fix use-after-free in
 free_netdev
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
Cc: keescook@chromium.org, grzegorzx.szczurek@intel.com,
 jesse.brandeburg@intel.com, Huang Cun <huangcun@sangfor.com.cn>,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
 netdev@vger.kernel.org, Donglin Peng <pengdonglin@sangfor.com.cn>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/8/2023 7:00 AM, Ding Hui wrote:
> We do netif_napi_add() for all allocated q_vectors[], but potentially
> do netif_napi_del() for part of them, then kfree q_vectors and lefted
> invalid pointers at dev->napi_list.
> 
> If num_active_queues is changed to less than allocated q_vectors[] by
> by unexpected, when iavf_remove, we might see UAF in free_netdev like this:
> 
> [ 4093.900222] ==================================================================
> [ 4093.900230] BUG: KASAN: use-after-free in free_netdev+0x308/0x390
> [ 4093.900232] Read of size 8 at addr ffff88b4dc145640 by task test-iavf-1.sh/6699

...

> Fix it by letting netif_napi_del() match to netif_napi_add().
> 

Should this have a Fixes:?

> Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
> Cc: Donglin Peng <pengdonglin@sangfor.com.cn>
> CC: Huang Cun <huangcun@sangfor.com.cn>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
