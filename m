Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 746B3818950
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Dec 2023 15:05:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C728A40A8B;
	Tue, 19 Dec 2023 14:05:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C728A40A8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702994729;
	bh=mkT940hNwi/Ah2y62pJlm7uKTXA8j+IznlAtPpZHEas=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GRmLKmtQhk//4xoCC/9XmOmyJ+Cipbj6FjPQX+LLLZp8OEjf+SQUpqX+Pc7NFLpjQ
	 p+wfBbwdTB4sl3FSfHw1cVfmLh1f3EdS79LfUU/2+XHN/+gPFdFTsVg3oZKyFsgNj8
	 gG4Ydcf21vNfOyq9j3zXeGsd6NNBR6aEbGwKGE1lbFrwzPWCJCNmMJF0W2Cm+Qe+z/
	 HW3mOKhbIPe2Ik2EA8w7w2MyZBr6WHLC/2+FjyFmwn3W8bSP69EsktfU4zyDH6Jlry
	 jSVsMgMOkHbTGONsv8vGCZXI/ouiHYLuaeX+evjvt89NippBxzVnfduOgU2iuiHZgG
	 AjUSPPIm/ULWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZkTs1QVLkPBC; Tue, 19 Dec 2023 14:05:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4778D40374;
	Tue, 19 Dec 2023 14:05:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4778D40374
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4B3651BF23B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Dec 2023 14:05:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2153340903
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Dec 2023 14:05:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2153340903
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g8brq4v9maWW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Dec 2023 14:05:22 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4D3C74089E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Dec 2023 14:05:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D3C74089E
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="398445455"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="398445455"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 06:05:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="779489740"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="779489740"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Dec 2023 06:05:13 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 19 Dec 2023 06:05:07 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 19 Dec 2023 06:05:07 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 19 Dec 2023 06:05:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X9YbYsOuAr5lVDV6EcXIn9danwZI3VziG1/D3TXrppTRQqytQEDrZ7EjVhMxaByD6xS/5mSoNsq7Dx9W0ltW3UIwZgoPe5dmYP92jKTPyCxI8tBi909J3NGGtasykmsRyasRqfKlJGOQvsboNwG54589oqSKW8KJ9jQe12pmSImytVuy1++ji71fYd+LXeuCzvt5ODWmqefW4j4FrnEQrRWQ09Qt/j7+/s+vtblXGFJJlTRhjxZs+ggY5LZG1qJ3Ws7mQlwNpyA9LhFQ34mVBsElMpEsXySgRuN6bIDBqYUkHkeVvIvVmLRrS7uTHF6tpaO2NJN9hup3AUO8XMcc4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nbSPp7f8wRgCo4qYySLpgffF/z1B4x8P3NaRT2Oqqr0=;
 b=EADGoNwlqFLw0Um2WwyFaZhdGAfUyxWJ5AYf7Nw6O/7evsfuk27hFCQLaRLCE+BW5zWYIiRp4G6JZesDmhq2pq0Ir0NEWVtWlETNjDIJcwRp9jQrX3UQNug1hpzGD7pEmyBtP60fvST6nXelgP0SRb5YHiaVtW0y4im/qzjgHiy4cRBItecthmz9qtC6kIIHhAIn/2AgBQWjVLiz/OJ2BlNfwCWTFCKjG1ctxuNWl+f+q14OgGj2ygZGVapmGE9lqiMEb6gI4/Dt5cvxHPjaEiowcEjI1I2oXnDK1KjoE4vC0tpw6r/A6eWQD33XsikJn9R/stOzBQk/AY5thlSPWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV8PR11MB8464.namprd11.prod.outlook.com (2603:10b6:408:1e7::17)
 by CYXPR11MB8753.namprd11.prod.outlook.com (2603:10b6:930:d5::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.38; Tue, 19 Dec
 2023 14:05:04 +0000
Received: from LV8PR11MB8464.namprd11.prod.outlook.com
 ([fe80::c851:ea8d:1711:a78e]) by LV8PR11MB8464.namprd11.prod.outlook.com
 ([fe80::c851:ea8d:1711:a78e%4]) with mapi id 15.20.7091.034; Tue, 19 Dec 2023
 14:05:04 +0000
Message-ID: <a63d116a-8115-4b41-915b-827cf9d15269@intel.com>
Date: Tue, 19 Dec 2023 15:04:59 +0100
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
References: <20231214043449.15835-1-lukasz.plachno@intel.com>
 <20231214043449.15835-3-lukasz.plachno@intel.com>
 <20231216100337.GL6288@kernel.org>
Content-Language: en-US
From: "Plachno, Lukasz" <lukasz.plachno@intel.com>
In-Reply-To: <20231216100337.GL6288@kernel.org>
X-ClientProxiedBy: VI1PR07CA0158.eurprd07.prod.outlook.com
 (2603:10a6:802:16::45) To LV8PR11MB8464.namprd11.prod.outlook.com
 (2603:10b6:408:1e7::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR11MB8464:EE_|CYXPR11MB8753:EE_
X-MS-Office365-Filtering-Correlation-Id: e3ed724e-1d08-43f7-a13a-08dc009b7f04
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gMykHccNeG1CFs5xeP7NIb+JTRvKvUs4rhPtoQCHbkOV7q4+v2UBYZUrvympQz1TWi7ieZ6cqKZS927d7vAW2iEF0S2A08HxN+QGDKkSP79B5f5/Ht1Ao0kfotXVP1A53S5tW9kfBpo8h/tNVJFTEJi2DPNLJTBp4NLZtqZGxwxSqIDbay6oxvWkd9W4ho8wdOFiOrgepEBXR0MBoOnlnv9bNg70KDex03IajhGDYINLmC1VIv7W7mMua6S1kAcaqkfEUIxZgfMBMrSaHdyrKtWiQS0EuRYPnY71ROh7uaY+8sgg9ZtvuQZ6VzNwjOw9lI4tm31YIXrq11v/ezgA6SK5klMSZHzEwQ2n69Snd/8Uf97rlHVSknyWERVTrRGVGyfnslFBDGsKpMmqYvHkWgX4yOLTqn1Hqj6ggEPEl6TsJofZtTe9guU6zRxFlMRk5sCcpEoxkk68C0BKxG+zCPNSN8kEkbx512Qr5UoG3zXqxt1gMn8iz09JPtwFs6WlD/CHaaetwUvT61bpACHySV+m9d/YSMaRttWkTvxR7Oeh4VJPFacpmALOjHK3ZAQ8X0q4HFh5nESmeeF6HvGxpn7bkgyVydO/wJxernEz1BXxItvdAyoVcb2eTHRNFpI64U5bCTr5lc0RzoWinnWCgQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV8PR11MB8464.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(136003)(366004)(396003)(346002)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(8936002)(5660300002)(4326008)(2906002)(38100700002)(8676002)(6666004)(6512007)(53546011)(6916009)(83380400001)(316002)(66476007)(54906003)(66946007)(66556008)(41300700001)(82960400001)(6486002)(31686004)(107886003)(26005)(31696002)(2616005)(86362001)(478600001)(6506007)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M1ZoVWpWcTVydExlWHZDKzY4TWR3dG5KRldRUTA4N2xVam9WMlFkN3lpWHVD?=
 =?utf-8?B?dmkraTdZZkVSL29BVjJqT0JHQkFTR3hFRGNyaXJxVFNEam5xY2Q0bUlXUUlQ?=
 =?utf-8?B?a05OSUpOMEVtN1J5WkhsMmJZSUpmS1VlWUNkMGxoc3lzdzNUbnozcDBMMXQ5?=
 =?utf-8?B?WVBrZjUyc0R4WEsyMklITlFsbTJkQ1RKRkRZNVBiRWtrby93N0FSMldHNVdh?=
 =?utf-8?B?aGxhNG5xeUVVYWU0M2x1SS9lZzlOd1E4UFNUYXRRc0pZSlZXUXZINXBReEJ2?=
 =?utf-8?B?Q0gzMnk4a2ZRaExOMnJhRWRFTHBMWndQMGxJMWZxNDYrRHd1RTExUDBlelU1?=
 =?utf-8?B?RzJIT215WExBclVBeTU3VTU2ejJCMHdaQWlCUVpMY2UweW83Znl1ZzRQc2Yy?=
 =?utf-8?B?S1NmQ0lJNzlDNHVBRTdKc2crUlNYOVVRR3NzcnhZWjRpU2k4dFR4RWJQc3Zw?=
 =?utf-8?B?QWpZeXA0ZjR4QXRhQURnT0s0a1ErOVhuWGRjMlBBbnJCWlQ1b1VQM3dvM3R6?=
 =?utf-8?B?azBRQ2NYTDRMakV4NmZrdkVCaDI5RU5qS2JrSDY3NFFPcE9zT3dzczB2M2Jz?=
 =?utf-8?B?MmhEVldqYjg4RzgzVHcxZW9GQ2ZQSGJXMGJWRWlSeHJ1eDBIR0YzUUxQdWhP?=
 =?utf-8?B?b0hvSGs3T2RVbEdLVXdJcUUweTB2bDZQeGxIek1UNWZyOThwQnFORkd0ZWVx?=
 =?utf-8?B?RUhxWi96c29xdDM3Zlk4cFA1RTNONmRvTWJHdnZwS1c0SG5wcVMxVkhLM0x3?=
 =?utf-8?B?RWpacDdoWDhVeER5T2FENFowZ0FRODFIQWMvUHRaSlBiTXJFUXJ5aGI2ODI1?=
 =?utf-8?B?TnRSMmdHTkU2dEZJQkZZaXBzODJ3bXkxODQ5dlpjSU5RWlhtaldUWVpKbW1k?=
 =?utf-8?B?R3VlazQ3L3hna25Sc2lLQzZHRko0Y3EzdUJnQ0l3QjZ0bWxmWVAyZ3NOZXZy?=
 =?utf-8?B?MC9kci8ydUl3R0JybzI4VzNTOCtxT3ZGRmx2dFRpQUovaVVDSzc3OW5ydFpU?=
 =?utf-8?B?ZUd5YjdPdE9leE5tMkdES1ovNlFTQU5wSDBEaFZmaXNDZThTbHJ6UXQ2aHNJ?=
 =?utf-8?B?WlhrNW5DYXAyL2hUYWdYVWJ2S2h0OTBibEJCVFNHSFVDbzZEdmVidk1Lbm1Y?=
 =?utf-8?B?ZEU1NHVQVjlzOU41eFc1R1JLbExWekxPT0ZOYkR1KzNxclI1Ty9aRE9Uek1V?=
 =?utf-8?B?OThlUFNndmJMYjRZSFJqTFRSSnlqL3VxVG1pVkdQekRvcFQ3K25wNmxlTnhF?=
 =?utf-8?B?SlZDazN4NG5mK2JCWDMvenRXakxYZEVNUWpkQThqdjhtVkx5eVF0VHZSbTlT?=
 =?utf-8?B?WXV5QXJoYUlmRWNTVnNiR1BEYnpSRmxUWlllWDdITWtTN3ZVVU8vME9xdGFK?=
 =?utf-8?B?eWFXWEdxYkRVSUFBMzIrMEZ5UjlRVXRUVFh0d1AyUjlydDdGNzVaQSthMTlk?=
 =?utf-8?B?ajF5aTlwUnRXMVhmT0l0ODM3eERLdnJUVk1LUjNEY0RqUjhrM2dvcXRKTm9F?=
 =?utf-8?B?Y2xSRHRHa1V0S2gvREZIcHA4ZWR0OFQ3eWZLcmdXa2I2SjBmZ0IxYVRzQ1Jr?=
 =?utf-8?B?UlZaOGxrMEpTM1laSU9pcFI2ZHNSV0luT0dkSWNiZ004c1d4S3ZRNHRwYnZC?=
 =?utf-8?B?K01RenMxSmxnMC8rcHY1TkYyQ3lKLzhramttWElsY2U4RU10K1ZaTE1yV21M?=
 =?utf-8?B?ZExHd1BTYUQwTFIvZFd2a2ZQQWE5RkZFOEhUUnloKzBpOXRYZ0ZrbXUvVit3?=
 =?utf-8?B?Q0xWNDFja1p5Vm5LTnI4cGdFdkZxRVVVbTlLUXVTVlQvR29JTnFRVUpkUUI5?=
 =?utf-8?B?bUJWT2FqMmRJNzBCR1RRSkc5cUpzSGVwUHFrQWFPOUFDZEtVd3laVUFOWkJy?=
 =?utf-8?B?VytoU1JpYUpkandtaVNtMm1EVnVzSXRvSmFTS2RBK0pOSmZUY3J0YXZKVkFk?=
 =?utf-8?B?Vm5PaTZpbHhuYzFqSjZrTEM3Z0RSU20rS1ZESzM4R2VuL01ib3RsWERjL2JI?=
 =?utf-8?B?MUw1eW9UejJZMzV6YnRLLzJUVjk2ZVl1ZG1iRjdjc2d0TFEyK2ZGZHZIeHMx?=
 =?utf-8?B?NWNjcGt2dTE3Mk1haS92NHoxeEhlSVkzNkVvcFh2Uzc2NnhxNmNJcFBOdFBr?=
 =?utf-8?B?WXh2UjhXZms4OXhDL2NVOFU2VUNHNnlqZ29JMzhoMFJqOUtDMENrdVdRV082?=
 =?utf-8?B?Q3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e3ed724e-1d08-43f7-a13a-08dc009b7f04
X-MS-Exchange-CrossTenant-AuthSource: LV8PR11MB8464.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2023 14:05:03.3120 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +sUDjTDmS7AKhVWK2bcCyy9O+X8fhx67mL1Rc+ywCFcMTyEMQZcxImeErKsyulX9KQC8H6a749jFyq8E4hkHW7lbTNeLohPzE6DorMYpXmI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8753
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702994722; x=1734530722;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=f9i7JpVjz+tSmpTxm2GsAEWXOtEQSeO+TH7Fl+EYF20=;
 b=NHo/yHbePOTHDp+6D64tyhHYEn6C8wOfbfEZkQtK2dZgTj2pZ+TorK7W
 Q4PLZ7vKzI5PB0JKEOX8hsQkgc8lT6ybQmAm+GddDh0WGKF9nl/1/vc4e
 wX6Ta1e3vFKZk1L9vDulvYW2ugxn1tSEJYl15XuI5m9usQ5cm1RuHQJmw
 gIaOAQDEdyufuVQiD2Cn0oM7U8zerOqxYuZ+O+eidiDbApl96lG0R3kdr
 dMkdHufFrCqt0EgHLWVH5fi9R7XPF8zL3HrZXQqj04dX0Dc7PwiKDOukA
 +sKt0vt6sebCzA2yxlVlO/wzA4s7/9iijySxJ9QLTjLGUEEyjDNNjPoHa
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NHo/yHbe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/2] ice: Implement
 'flow-type ether' rules
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jakub
 Buchocki <jakubx.buchocki@intel.com>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTIvMTYvMjAyMyAxMTowMyBBTSwgU2ltb24gSG9ybWFuIHdyb3RlOgo+IE9uIFRodSwgRGVj
IDE0LCAyMDIzIGF0IDA1OjM0OjQ5QU0gKzAxMDAsIEx1a2FzeiBQbGFjaG5vIHdyb3RlOgo+IAo+
IC4uLgo+IAo+PiBAQCAtMTE5OSw2ICsxMjEyLDk5IEBAIGljZV9zZXRfZmRpcl9pcDZfdXNyX3Nl
ZyhzdHJ1Y3QgaWNlX2Zsb3dfc2VnX2luZm8gKnNlZywKPj4gICAJcmV0dXJuIDA7Cj4+ICAgfQo+
PiAgIAo+PiArLyoqCj4+ICsgKiBpY2VfZmRpcl92bGFuX3ZhbGlkIC0gdmFsaWRhdGUgVkxBTiBk
YXRhIGZvciBGbG93IERpcmVjdG9yIHJ1bGUKPj4gKyAqIEBmc3A6IHBvaW50ZXIgdG8gZXRodG9v
bCBSeCBmbG93IHNwZWNpZmljYXRpb24KPj4gKyAqCj4+ICsgKiBSZXR1cm46IHRydWUgaWYgdmxh
biBkYXRhIGlzIHZhbGlkLCBmYWxzZSBvdGhlcndpc2UKPj4gKyAqLwo+PiArc3RhdGljIGJvb2wg
aWNlX2ZkaXJfdmxhbl92YWxpZChzdHJ1Y3QgZXRodG9vbF9yeF9mbG93X3NwZWMgKmZzcCkKPj4g
K3sKPj4gKwlpZiAoZnNwLT5tX2V4dC52bGFuX2V0eXBlICYmCj4+ICsJICAgIG50b2hzKGZzcC0+
aF9leHQudmxhbl9ldHlwZSkgJiB+KEVUSF9QXzgwMjFRIHwgRVRIX1BfODAyMUFEKSkKPj4gKwkJ
cmV0dXJuIGZhbHNlOwo+IAo+IEhpIEpha3ViIGFuZCBMdWthc3osCj4gCj4gSXQgaXMgbm90IG9i
dmlvdXMgdG8gbWUgdGhhdCBhIGJpdHdpc2UgY29tcGFyaXNvbiBvZiB0aGUgdmxhbl9ldGh0eXBl
IGlzCj4gY29ycmVjdC4gUG9zc2libHkgbmFpdmVseSBJIGV4cGVjdGVkIHNvbWV0aGluZyBtb3Jl
IGxpa2UKPiAoY29tcGxldGVseSB1bnRlc3RlZCEpOgo+IAo+IAlpZiAoIWV0aF90eXBlX3ZsYW4o
c3AtPm1fZXh0LnZsYW5fZXR5cGUpKQo+IAkJcmV0dXJuIGZhbHNlOgo+IAo+PiArCj4+ICsJaWYg
KGZzcC0+bV9leHQudmxhbl90Y2kgJiYKPj4gKwkgICAgbnRvaHMoZnNwLT5oX2V4dC52bGFuX3Rj
aSkgPj0gVkxBTl9OX1ZJRCkKPj4gKwkJcmV0dXJuIGZhbHNlOwo+PiArCj4+ICsJcmV0dXJuIHRy
dWU7Cj4+ICt9CgpldGhfdHlwZV92bGFuKCkgZG9lcyB3aGF0IGlzIG5lZWRlZCBoZXJlIGFuZCBp
cyBtdWNoIG1vcmUgcmVhZGFibGUsIEkgCndpbGwgc3dpdGNoIHRvIGl0IGluIFY0CgpUaGFua3Ms
CsWBdWthc3oKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
