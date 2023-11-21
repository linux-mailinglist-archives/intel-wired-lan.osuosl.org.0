Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC91B7F3A07
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Nov 2023 00:05:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 42934404A5;
	Tue, 21 Nov 2023 23:05:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 42934404A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700607940;
	bh=CemuCxUh8Pjz4vME2t0itrOx9ySAz4NiYU9AQtvqrqM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kn1GMl3xl4lOS+781MyqRAi5T5s50tk34SGvc5/DQUlyWcBXP2aXAR5lhGA3Xc58q
	 JmwsFgd3vbMkk0xqH5pgqOsGSJKz5kQkGbiHhfC5nVzjTYK7p+HIcwJc4rm5ibE5/2
	 4WAIA+9lTLl0xkyk50P5yE8opbMBQSQHNgwQIw02UQy8+IYoux/4LnRj9633K4aaY0
	 MCnHgPoRtfDbmlSPbGV8HInI9sKzH3YycxXBWsYLLKHQjavvoHaoXbBE9xHTY8kWp2
	 vh+73rLvzaWpWq+W5WkC6UVjaahABivKPe8ggoXrlWW+NlLy4lIIuocsYO9JH0kN7C
	 X2hq7LXJjtT5g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y6uVqprcYotz; Tue, 21 Nov 2023 23:05:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AAD4E400D8;
	Tue, 21 Nov 2023 23:05:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AAD4E400D8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5BDE51BF309
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 23:05:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9CA90401CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 23:05:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9CA90401CC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EULuFOnRXYhZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Nov 2023 23:05:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4BABF400D8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 23:05:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4BABF400D8
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="389093687"
X-IronPort-AV: E=Sophos;i="6.04,217,1695711600"; d="scan'208";a="389093687"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 15:05:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="1098184360"
X-IronPort-AV: E=Sophos;i="6.04,217,1695711600"; d="scan'208";a="1098184360"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Nov 2023 15:05:18 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 21 Nov 2023 15:05:18 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 21 Nov 2023 15:05:17 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 21 Nov 2023 15:05:17 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 21 Nov 2023 15:05:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ISBWQN6e5Et0sE3H9Ls6y++Qjh9ongjY01b8yyYGpjTUfhkT3E/JjuwJMelUBIny/ttEEz5mYf1Maa/VClumG94oszfzBHWUiOOZj6bvfPQvAdZYN2aSE64HDNKqaW5utd1QoGzKv8CCwKubfmAcy6jiNoB2I26lGsEacj9OIfRu1BE7OV6jrkCRG+NALS4nSGN+hxsaHOnSViVYi/UEwHYZOd0zH6gG8+goBiuBlDL8I4bws10/cVbbrGsap6kemyfeLL4rFfAUZ4CwBSJLMJXHzUatL3vbUqR90/qpoTLIiGnAOBW+4v2hs1kXP5+QAy4dOdnrcYjfkHzL+baKOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dyM37DNAWzIhSVcklaF8hvZ+Yhg8729c5kSLelxa1zI=;
 b=B+MKz3lcBk4JfA8ryhvnLdDQB19LGygBconz66u86HpMhTzgkWTmTA7HRjnEQIGrZBy//1UQ3OPr+defnhYyXOCsH1WjLUOQn1hhtqa6j7MMCozKGmqPfMYevFAdoeLJmCYgkiI/pM3vEFF/XQylwcbpGTbRRoV1wT8UtFSbH7fvWRU+gXsIf3lftOZL3oDvhmNuPo889m4sKdHHulkUni2ZMH3ZTC9tCHJuN/gQbRlWkqWy2Ju6fnxZ1YoUBPU8zyCsHXK2n2bYEqHlzRJzcaKfk5+GJzMKe0NSJa1of7Q8Y259moztU4Vvb97dY/acDaosAWAUcDDQGXOyV26yqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by CH0PR11MB5330.namprd11.prod.outlook.com (2603:10b6:610:bd::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.18; Tue, 21 Nov
 2023 23:05:15 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3%4]) with mapi id 15.20.7002.029; Tue, 21 Nov 2023
 23:05:15 +0000
Message-ID: <f90bc4fc-d9e3-468c-8b94-73bea4b2d764@intel.com>
Date: Tue, 21 Nov 2023 15:05:11 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Ivan Vecera <ivecera@redhat.com>, <intel-wired-lan@lists.osuosl.org>
References: <20231116152114.88515-1-ivecera@redhat.com>
 <20231116152114.88515-4-ivecera@redhat.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20231116152114.88515-4-ivecera@redhat.com>
X-ClientProxiedBy: MW4PR04CA0171.namprd04.prod.outlook.com
 (2603:10b6:303:85::26) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|CH0PR11MB5330:EE_
X-MS-Office365-Filtering-Correlation-Id: 98f44445-9a30-4658-2d96-08dbeae652a5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BsOmdBhToLB+dDvGp+P3y+L0MgbY8vcV6/euwIa9entZwWDLyOFTgbJwkm+mVyneT9YLBKqLzhxnNc87lVigpfwEpebJaI3LOkaK+p+5Z5d+RjJ70M2xHYpT2LDDzJLZEQabmFKhaB97z2e1UlDZ0OxVWGoKNICLQo/eB9ci9qckBaJ189RxXqsOJezh1CVYrRv6g6YfWkUVERFMRrqQ+WPmROGQktw5uqIZFdB4HsnQnpKRbnvOxxekwiEvHwsNKwPuNBE9wqHzQpMNjgGjiTXdDMk5aYeMIClWXH3UsgS3iTI1mDzhI9DShqeFtGbBLQjhI4x7W9asyoSfnKUDS0ysfQC+GtH0IyCMCiPr0ZtWf/Ydb2/q103jK6PoIf1cH2fI001XuL63ypwiYvhUqouPUwnwbCvJE08ycND+tlRqL3mxIdQIoMnoRWBA9SIOjxP97eBUym+LZTTw1+HSaAhFS7EnAVbHGveWgIOtbmN4+/cTHAdQLowpjFEIFoc1pLior9c952EU93F0l9ItyNyrQPuPzRBRYgo5OFgLyA/4h8vBmILQC7Ms3RjtSslh1iKXTAWqfCUoGmLc+d4QCiExw6W/Ho1aQYNBrywV5l2fzLzWx5RAQs4Xpi+xwRuMbg9Ae27iIExLlnErVMJkoMWGTC12BrzghAjNVtU60qI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(376002)(39860400002)(346002)(136003)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(31696002)(36756003)(86362001)(6512007)(2616005)(6506007)(4326008)(8676002)(8936002)(53546011)(26005)(5660300002)(7416002)(2906002)(4744005)(66946007)(316002)(54906003)(66476007)(66556008)(6666004)(478600001)(6486002)(31686004)(38100700002)(82960400001)(41300700001)(37363002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VE5La3lLRUo5b3FuV0RhYzkrVlRKbkx0U1lCUXpKZm9GQmdxZ0pRb25mbTg1?=
 =?utf-8?B?ZmE1UnowWFJjb1dRQkM5VStvZXVKTU1neEpKWXJKa2dGUWp4N0JsVUU2Y2RX?=
 =?utf-8?B?U1FhWWg4V2RRS1MrNkNFbjVlYXVwQWhSMHhTaC8waVNJSFZwOTNlc1lZZEFH?=
 =?utf-8?B?blZlTFN3RSsxY1ZEMTM2Uk1mdVJKUUg5STBxTW1JeU5JcjNDQTVCOFVLZFlP?=
 =?utf-8?B?U1FUYjVsMjBIVXIraUFtUnZvMXFnM2FWZzExYWliT2ZHOUhrdXhHdzNFcUlG?=
 =?utf-8?B?bWtuZ25OT0RXVmRkT2lsenQwSWFwajFCdUd3eTNZZCtuK1JZdmZ0cE9MczVM?=
 =?utf-8?B?QTFHWWVWRlRwa2Z5cEd0eTFFMzgwTnpQeEdQMHJQTUNiNE5ycVh4TlpXaHpD?=
 =?utf-8?B?a0QzdmZta3dhMVZGWDJXOENuS1lsY2pHRDdPNEo5Ymt0U3JmNjZZV3V6QXc5?=
 =?utf-8?B?c1B1bGdoZkxGVUk2OG5KWU5FS0s1NDVRVUdrYkk2bGx2ZEhJUEQrdDBXam5m?=
 =?utf-8?B?RUxMYVpzUEtGVEtKOHBwMFNtRTdhc2xPdkRvNFI4aTBwY0tYaWYvcEw2UVJk?=
 =?utf-8?B?VU5uVS9ldTdNcTJidGtTWkUrR2hXV1BDSkxib0pMd0hEK3hmcUlmdFdyVnIv?=
 =?utf-8?B?cnJPSW9OTW5TTklsaUs0bEtEaDJYeGloYUQ3ODBKYXplL2JHNDI3ZmZ1Zmoz?=
 =?utf-8?B?ai8ydVZkWDFjekUrVWllQm9Tb1JkMXZ3UkJqNEEyOG4vZU1ZajBkRGsvVTZP?=
 =?utf-8?B?SHZFam5GNDdkRmY4bFFEd1dlSWw3eGorNWZIQjUyZHhwdjhMN3MycEhSK0J3?=
 =?utf-8?B?SjRlV29VL0RJS0RkRndOS2FYaSt4WWFjeU95VHFVV0xCdkRCQTBqTnFSQmFw?=
 =?utf-8?B?YXZxdHIvckJwaSt3eDRtb1JJa3A4cloyU1VEeU1UekFmOUlvTTJGSWpFZG9E?=
 =?utf-8?B?a1MvODVZSHVEY2RQMUw1c1gwY2JIV3RYYmlGZnJja1QyN3VlY0ltU21aZlFD?=
 =?utf-8?B?M2NyVFlLNmgvR1pUNzNlZkE2WG02aHZUOVpHZFFOcXZpTGZFRjBZWVE2U2dR?=
 =?utf-8?B?MWhaUFpwcnNnYWhuVGc1cVNWMG5IVWlvdFRNRy8wa1hOTHdnSVVaQk5oQ0ti?=
 =?utf-8?B?YVl2S0dlNzI2aXlLbHIrYWxaRWJHb0N1SUh5KzRTS1UyeXpqZnBic0c4ZUt6?=
 =?utf-8?B?bFdheFBXQlgxZTBFR1lnZDM2MVNMa1JmNlQ0OEc4cGhGV0pmenphVTdrWEs2?=
 =?utf-8?B?TFp6ZXlPbzVTT3VwN3ZzcG5SMnBDTCtRTVI0aDdSTUI5NlBrNDhLOTNuZ0p2?=
 =?utf-8?B?NHlYWGNEY1l2T25sbXl1VjllMEZ6MnJZMWRhWWdsTVc5d092MVdvc05saC83?=
 =?utf-8?B?disrNkFuWmY2aHhseEpIdnU0VjN5cXFoQzNHbEVSa1pPY2FxZ0o2eStkQ0Fp?=
 =?utf-8?B?U0hWR3JBdG1jcmNXL1k2R2hER0xZbGtkVHYvdlpDcnZnTnh1WkFaV1hSYVY0?=
 =?utf-8?B?ZFdndTVNU0FBRGNzRDEzTVJMTDVaY1Q3THNFL1ZQMFdHb2pMckRJYlJHZnFF?=
 =?utf-8?B?a002SGpVOUVlQXo0NWJJOHJOTEVHckZ1bEozKzFqQVBEZnhSS2phRStQVHc5?=
 =?utf-8?B?a0RoYzczVjMyaEx6Vlo5anZHbmFIWnZpYUUySUc3MFREY2kwYkhpbUdBcXY1?=
 =?utf-8?B?d0ptL2QvcXYyOWJZRm5EaHBoY1oyV0ZuOHY3N1ZrakRYNXM1U3VPeUdrc0h3?=
 =?utf-8?B?NUgzR1k0c09uOEsyVlE2LzBZWWRaL2x3RXNiMEhyRVdtTDU0NGl3aCtxbi9V?=
 =?utf-8?B?MWFjTzN3RTgzcG1yeW5IVTVQZlZBbGh1VEh6QnBMUUpHNXlJTkQwNkZQRnln?=
 =?utf-8?B?cDlrVDltYUhjcXBwV0VKMXhEMU16U05aMWlveis2eEljWndxTTZOV3hoVDkr?=
 =?utf-8?B?RFZqTHJOVnpTSkNJZ09UNXZTd0pkMmJnZzRjYWZnaStxRTVHYW1xUUhkUmJT?=
 =?utf-8?B?L09uMGliVXMwRENhRGxJT25jN3dhcnN4cThCbDBuaXE5OEc0b281QXZrZUc5?=
 =?utf-8?B?cVhRMGVoU01rWEE3MzlGVmMxTWx4bnI5WFRtbEM3UEkxczh5QllwdlFucHV3?=
 =?utf-8?B?L0xBZEZDTWcxVVhoY3pDQ3VLLzhGc3lWVkdCMm9WYmhZL2xFRDNSNURhWG5V?=
 =?utf-8?B?Wmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 98f44445-9a30-4658-2d96-08dbeae652a5
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2023 23:05:15.5350 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oNSX19xq4see95dAMzU3Rwh7EASNhZDlemCRln93/x1cmotpY/jK/J7cLd6aNfbC/I0JrxD5ZY6TIAcYEpQuca0bIZGfYacAGoKJCd+Rq8I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5330
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700607931; x=1732143931;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7r6Sm/TjhMd8RLnBnklI3o2MzTqtlk7OgPLN98M2nSQ=;
 b=hilp0zgLXB4PBgzJDGbzsIancWEutRaKrihlZztB5jjXRDc4QrR/Uufq
 ZZrjNaMl5nsaZ3g7mpHV2s/JlXRt2j4w+C1NsLHMHr4Sv0Ir2+m35sPZf
 PoQMndi2vvL9ow8t7XGlKCVxBcRvz+OPnd8wLVYRQaiHSTkZ20MBYHSN0
 jLZQ5EicrFOy0PHtCtvbjiuNc0dXGLK8hIqohbfSKy8rYvJBgdSM4m+y5
 NeF+40ts+RNtcl9fzei9x/uzVOk78MxeKriPnSeNmJJqUXaOam9FcHqSM
 QLRT8nw+CWVUidaT6OJ2VKcpjWek0WLtw4VdaVg/0XVPrunjtt1/aOBiR
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hilp0zgL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/5] i40e: Add helpers to
 find VSI and VEB by SEID and use them
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Simon Horman <horms@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 11/16/2023 7:21 AM, Ivan Vecera wrote:

> @@ -13197,17 +13193,14 @@ static int i40e_ndo_bridge_getlink(struct sk_buff *skb, u32 pid, u32 seq,
>   	struct i40e_vsi *vsi = np->vsi;
>   	struct i40e_pf *pf = vsi->back;
>   	struct i40e_veb *veb = NULL;
> -	int i;
>   
>   	/* Only for PF VSI for now */
>   	if (vsi->seid != pf->vsi[pf->lan_vsi]->seid)
>   		return -EOPNOTSUPP;
>   
>   	/* Find the HW bridge for the PF VSI */
> -	i40e_pf_for_each_veb(pf, i, veb)
> -		if (veb->seid == vsi->uplink_seid)
> -			break;
> -	if (i == I40E_MAX_VEB)
> +	veb = i40e_pf_get_veb_by_seid(pf, vsi->uplink_seid);
> +	if (!vsi)
>   		return 0;

In addition to the kdoc stuff that Simon pointed out. Should this null 
check be against veb?

>   	return ndo_dflt_bridge_getlink(skb, pid, seq, dev, veb->bridge_mode,
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
