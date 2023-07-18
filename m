Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8F9757EC3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jul 2023 15:58:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD45C401D0;
	Tue, 18 Jul 2023 13:58:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD45C401D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689688727;
	bh=MWJpesrpVBL/nHDP4I6CxsTAQF7oJWAXNqvCga5pWQY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RFAx3a5jFcNZilo+bJ9/fLt8n6RAh333aI+jOCSY5nh/EwtZFN/pOY4IiPMS0fdHT
	 ukxJ9a0brqO5sSCY5cKF34dj9GZTsM6a5gIhl9M+l9YM4l5vz1rOCcd2qO+4WuM4Ws
	 yoBuTG/FVkOQQj61pIDYk58ORQ1XIVnklcvjEzEPc7LTTvDF/oExBAyzzvITE6M3wL
	 CKNyqzXQaWrfpAJMFzSSi0VcdykY0hRYY/wW1ytf1Ld9Dee386aCDF9lSpkBtfuM+C
	 ZXG1GRpgLOnRNswA6T0DvMmWT5UwsBGFrlHuDYz2eNKxehAkt20D4r7aWSJ7FokDfM
	 U0+i/JKMmSMhA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RQ8h9EJjJVFb; Tue, 18 Jul 2023 13:58:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E02F41736;
	Tue, 18 Jul 2023 13:58:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E02F41736
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DE5D21BF30A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 13:58:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B58C860BE4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 13:58:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B58C860BE4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RMi6icwU5JqY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jul 2023 13:58:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D6DEC60073
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D6DEC60073
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 13:58:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="365089432"
X-IronPort-AV: E=Sophos;i="6.01,214,1684825200"; d="scan'208";a="365089432"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 06:58:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="673926142"
X-IronPort-AV: E=Sophos;i="6.01,214,1684825200"; d="scan'208";a="673926142"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 18 Jul 2023 06:58:38 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 18 Jul 2023 06:58:37 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 18 Jul 2023 06:58:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 18 Jul 2023 06:58:36 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 18 Jul 2023 06:58:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RV2N8GRZbpZKSaBKlOW8SPoXoxUgasBrhPpyOk3MxmmZjtaCKhGyvhVKD4Vb4GHKiaevV3gnsxoUJEQIACzzZJyI8UeTLX58f77xkGyoJs7YLuxI61k9YKNEiyz8kIgXK9GTXI4ZpRPYdAigRDF+JBfxwEAa0hDpUTprtxzVeXLQLWW5RkLsPAjjL96krJIl1zmZnRIffFFW94e9ak3fMTcP+RYHzEKDOshVq/gwiFQaE0xWpUUxBdQmQRXQKdyK3uxhQSDFTLpy6nmTc42CMi96CB5ESFJk1Sm9grN5CmRJGmgCIz3n0IGn/KKuz/a7RRa8OOKYoh3VOjkd96NXgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sAVa3rMgzkAhJYMd9+AuzlSLFmxvMjtmCXraz2aYvcs=;
 b=ab8ry4jYRUhHAhjgseOQpUS+WpJBhRChZUyQtZu+WSJCtT6HhnOC/oHP22/Xo/GuTIqNbBmBQSrVSEfLM64g3Iw4oQs/ItumCc3OegQIqP5FK/8JUvZ025Rlw42eLLtZuV+xFSJSFzXLaJ4dUf7jj7KvGEZh9OrZXAsgHjCkZauIXQ9BczqFWpUOmUh/4a7Mc3cXff4Pl5yXrtvOCU9TOQ3I6Mgba8n56fKxwFHsuyi4ppU+i7uzWrfUGmik3vQc/ZRhdVj48a+GoBROUS7eCoZN5l359j7unxty6LlQNfAEyBv7PgSGgCI7q/n8yUr3Z75zJDjehA29bn5s0SMf7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by SA2PR11MB4972.namprd11.prod.outlook.com (2603:10b6:806:fb::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Tue, 18 Jul
 2023 13:58:29 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a%7]) with mapi id 15.20.6588.031; Tue, 18 Jul 2023
 13:58:29 +0000
Message-ID: <9275b613-3a9d-2de3-2f21-407e56c09622@intel.com>
Date: Tue, 18 Jul 2023 15:56:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Yunsheng Lin <linyunsheng@huawei.com>
References: <20230705155551.1317583-1-aleksander.lobakin@intel.com>
 <20230705155551.1317583-7-aleksander.lobakin@intel.com>
 <6b8bc66f-8a02-b6b4-92cc-f8aaf067abd8@huawei.com>
 <bc495d87-3968-495f-c672-bf1bab38524a@intel.com>
 <4946b9df-66ea-d184-b97c-0ba687e41df8@gmail.com>
 <95c5ba92-bccd-6a9a-5373-606a482e36a3@intel.com>
 <558849ff-6b68-7547-cf99-36801ff24c25@huawei.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <558849ff-6b68-7547-cf99-36801ff24c25@huawei.com>
X-ClientProxiedBy: BE1P281CA0028.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:15::11) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|SA2PR11MB4972:EE_
X-MS-Office365-Filtering-Correlation-Id: 34b9fa14-7e2f-4754-4574-08db87971024
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OCh3gEifIqGbQghZ9OBc/CEPvo5W6j8tx2PrpTE1j90FG8Rm9tb9e6J0P761JAfeTW8NzVZSCX29EYFWh5zJZ39MU5WXtErATLeNKk6qGSaFlmZxBgLpNRPfScsM2etddQzahQc6XmKfwmJhiGYfMgKJdRA20d7S0HHnyWn3NMWczsczuibW+B79AXiVdxIgrcrllmuNcp7Gm+pX5WAtRpjqErmLTmd9qh3611yJDkNIqovqi3h/sS9XNV8LlmMK8QR8X7mwJrMB6p2aCNJbrRYKUaBC2prSsARIk0edA+D8n7dC56ZkgiKomEdAmVXNeg3exkzMiTwH+4xdeSgNV5L7B6EHAaUgKQQFt7E3Bk8EZzy0WbzU/CVB565+aQhe3kABA80GKMLqZxHY7N9+v/42H/tcfagLPskpo5RqihQX/HloCZIfcIHViggweNBA2gA2z/EECC1S7KG4zOhmt0IIW6GAGwjDxMywRY2t23SJoh8qZ5++uYfTnAAjH2haIBTOuyKWhMua58x0flZZ3LNDP40TPjAMRvFOnhuA519mWFHLJvEMPuD85uSlhxWOGRZ8SVsXhvlJPwBwu6WuJZa6Cua53jJm8LdDQfz3ddKtZJbysZdDAsby3vKOvWHPFlcMMIncQTRuH5CRhMF3tA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(366004)(39860400002)(396003)(346002)(451199021)(31686004)(6486002)(54906003)(6666004)(478600001)(2616005)(83380400001)(31696002)(86362001)(2906002)(186003)(6506007)(53546011)(6512007)(26005)(38100700002)(82960400001)(66476007)(66556008)(41300700001)(66946007)(4326008)(316002)(6916009)(8676002)(5660300002)(8936002)(36756003)(7416002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eUxOelBXWWhWZG1VYWl0NFdaNysvY1dJRlNLREFyU2tTT0RNd3RwbktuYzNl?=
 =?utf-8?B?V29nNkRnVW9NNHFEd3FKcXpMT3c3VFRES1ZrQ2VCYzd4QWlJZ01yMDBPN1A3?=
 =?utf-8?B?V1ZKRzIzZDZUY1NvbEdKRXRoY1ZRMFBlNjZhMHkwb3RtMG4vMWU1NUg4dkZp?=
 =?utf-8?B?V2NNTUxrOGx3NmJjUjlmTkRpZXFINnFycU10cXJEa2tSOTlRK3YwanRTZjVD?=
 =?utf-8?B?LzZZRXBxMTlXNXU1RXNhbHdkek4xd2xnOSthUWVybXVtU0pqNVlDeXBVQXFx?=
 =?utf-8?B?Zm1YZ3ZBa1NhaWxoZTVQZlRwazlzWlQ1WFNDY2kxNU5CTmZXUmx2anU3Y0lU?=
 =?utf-8?B?bDZTcUk2YVJUUEVNSkZQQjRWcjZSSkszN3IydXVWZlFjVjVxaWxpV01IWW5a?=
 =?utf-8?B?WVBlc3JnVlZCL3Z0SW9XM0YwWWJrWEpON1Zad05HTzB0SEFQeHFBZUlMRXNC?=
 =?utf-8?B?OUwrT3VkNGliZG1CNDM4TTFXbXBPd2pFaGFrYVNlZXJwNDlFTHUvSisyTTJi?=
 =?utf-8?B?cWhlSWFwS2Q1RWYyWUxNWGtNNWNVSFJqdUdWM0Y3SitXblZZZkhLNlQ2QXps?=
 =?utf-8?B?ZG5uUVVnUjZXZWNOK3lsUUxCZ2Z1U2tsVGE2WnpLbHRMVXIwWll0NW9YMXRy?=
 =?utf-8?B?TnBJTWcyaTZ2QWpBNS9JNjMvSmFoL0FJak9aOHRBd3k1TThrNThRUWQvdFRq?=
 =?utf-8?B?bHRQTmtzVU12T200L0lIalZVUkRJcFZvMk9mQUVZdWpFM0VoeDliMWRnUENx?=
 =?utf-8?B?M2E1VTRka3h4Y3RsWEMrejBrZXg1WkEvcjJLU3lvSHoxK1A0NVpGMXVNSW5H?=
 =?utf-8?B?SjEvMElOYVdFazN0VzJPVnFMTlRxckVPOTR1cWxrV0Q0bUpZaFhKNXh0ckd6?=
 =?utf-8?B?WDZPbXk3L2VXdEJzQ2NVNmlBZVdDWGJIYVFGMDBvSzJjR2RHdW4vcW9qUndW?=
 =?utf-8?B?RktUNzU3UEg2K0hsNklMaTJGTDdFd0QrQTQ1RFMzRllVVHJ0NWhTNEc5eGhC?=
 =?utf-8?B?TWlpTkpHMlNMS2dJcWVHdmVuVzhxc2hNRmNsU0J5ejR1dHhYakZTR3dNdnFJ?=
 =?utf-8?B?TkUwNnRWVDhGdFN6dGZHR05RN2xaRzd2MlQ3UTZpVzRXQjJGeDN6K2gvekNE?=
 =?utf-8?B?WnlVZGhaUUZSSzNKVDlJZ3NEK2hTaFlXN1o4NW1hZlJoWTg1WmYzV1ZLWmlG?=
 =?utf-8?B?QXpvenpJdjhlbjkxK1Q1bHlTSm52WHphVkJaMkhqSFRFcGFKUHQ3QlJhM2Zq?=
 =?utf-8?B?KzVsQmJwNFBscGp6VWs0Z0VyTkNXMG9wY2N1Y01aeUpiL1BaOThSWERTRTBh?=
 =?utf-8?B?Nmw0MVhMSUVCc01pSGhtZ1JiTEJMMmJMRWhZYWpkaTRnQzFhTVd4ZEhxdml4?=
 =?utf-8?B?d3YxaktTTmVnWmpiQWh6dHJ2OUlzM1JTZUxDeDdJMW54bEFPYWluWHFPb0JN?=
 =?utf-8?B?ek8vV1JlVGNyVFY1cDVMdWR1WkZiT0VoaGVOSVpiclZGdmUydGc3elBCdXJP?=
 =?utf-8?B?SUpWWUtVVENWMk9zVlRqay91REpCVjZhWXZ6MTNFMnltZUZrRUNzVEt1YUVD?=
 =?utf-8?B?SXQwRmhiTmRrRXlKTzZEUnNOUnpoTGpNeWFkRFZvaVEwRXBMMEx2ckJlUW0z?=
 =?utf-8?B?RVhWK2hhMk05alhxQkVGeHJxQW5YcVBBWnF1UWxHU1RTbU1JU3JJQWc1eFN3?=
 =?utf-8?B?RFROZGt2S0ZIZlEvQzZ1dTIzWDZJa0lGQlpxTHJFYllEbnBWZ2VqNjY4NklU?=
 =?utf-8?B?bHBkazNEME5IdGJFeVlMRS9IUGg1NWhLZ0xLUUhCb3I0RUVTY0hFT0NOZTBM?=
 =?utf-8?B?YzJ6RXlJVitBNUhNSzBtcGtiV2NBd3g2UlptNURWYmlBMk9uRU1DeHMxenNw?=
 =?utf-8?B?ZjJkVUhHYVBtb2YvSG45MVNjdE1abTMrUHdndDIxdyswSkMwK0hWWURkdFk3?=
 =?utf-8?B?QzJadUp5VkN2UHliczFsRW5ycWU3bnlPdysrSjY5cnNXbmZZZVZ3OTlxakg1?=
 =?utf-8?B?QWJBRjZrejkrNGxoTy8zcVlkbmZYcEJNRWJLWmI4aHZiNjdFTDJvVTZTWGdj?=
 =?utf-8?B?UnhORnRLeE5HRFo2U1N4L1NTNWFjRzQwY2c5S0k5T00zc05paE9LT0lKUzNO?=
 =?utf-8?B?Ungvd0pBNCtlc2ViNVNvSlZqNmVCWTFnN25MWW96UzNWRy92NGsrTFFUbXFH?=
 =?utf-8?B?VFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 34b9fa14-7e2f-4754-4574-08db87971024
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2023 13:58:28.6967 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7sVuaYZVmm4bmc4HCjx2uWoAwqyI8h5tj/Fi1Xh+i8600npBS+uH305AB76zPAdRnfIwKFJlnzE96oT6Sv5XM5G0pDzoLBUQBXUGTfGXCJ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4972
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689688719; x=1721224719;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lBmMmPzpy3sCBZRZ3qvkDbczZs/L3W9/IfSCZHmrjDA=;
 b=XF35eCN7fYB/eBIkFcwDRCgX/SfddLuFcr/CZlzQQXvM2JjQWz9rRCzB
 4ORu1FABnC+dHCWLrfzONhmG1+8cw4AgzNgLQsSaCzb2OdJGDtyk3Howz
 e1F2ndd50n7Rasvqx9kxXRScVJYXT6xH97LIWbu+S+oGoxz1w9YnTwZ3S
 FsupRLu9gblLEtBVdBb1U/qiisPKlbpCBkaq0oez6LWqu2xoLhi+e9Qja
 V6lp9O8b63StqA84Zw8BwiMhPNfprjpf9dqpE8ebjVx0Bm0gUE5LgQ+gr
 QKJKG/e3lCdXS2CQ1f369vcWjIrjP6LtlWkCQjRAzYPfJB89fyXyaazxJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XF35eCN7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next v4 6/9] iavf: switch to
 Page Pool
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, Jesper
 Dangaard Brouer <hawk@kernel.org>, Larysa Zaremba <larysa.zaremba@intel.com>,
 netdev@vger.kernel.org, Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, Yunsheng Lin <yunshenglin0825@gmail.com>,
 David Christensen <drc@linux.vnet.ibm.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Yunsheng Lin <linyunsheng@huawei.com>
Date: Tue, 11 Jul 2023 19:47:14 +0800

> On 2023/7/10 21:34, Alexander Lobakin wrote:
>> From: Yunsheng Lin <yunshenglin0825@gmail.com>
>> Date: Sun, 9 Jul 2023 13:16:39 +0800
>>
>>> On 2023/7/7 0:38, Alexander Lobakin wrote:
>>>
>>> ...
>>>  
>>>>>
>>>>>>  /**
>>>>>> @@ -766,13 +742,19 @@ void iavf_free_rx_resources(struct iavf_ring *rx_ring)
>>>>>>   **/
>>>>>>  int iavf_setup_rx_descriptors(struct iavf_ring *rx_ring)
>>>>>>  {
>>>>>> -	struct device *dev = rx_ring->dev;
>>>>>> -	int bi_size;
>>>>>> +	struct page_pool *pool;
>>>>>> +
>>>>>> +	pool = libie_rx_page_pool_create(&rx_ring->q_vector->napi,
>>>>>> +					 rx_ring->count);
>>>>>
>>>>> If a page is able to be spilt between more than one desc, perhaps the
>>>>> prt_ring size does not need to be as big as rx_ring->count.
>>>>
>>>> But we doesn't know in advance, right? Esp. given that it's hidden in
>>>> the lib. But anyway, you can only assume that in regular cases if you
>>>> always allocate frags of the same size, PP will split pages when 2+
>>>> frags can fit there or return the whole page otherwise, but who knows
>>>> what might happen.
>>>
>>> It seems intel driver is able to know the size of memory it needs when
>>> creating the ring/queue/napi/pp, maybe the driver only tell the libie
>>> how many descs does it use for queue, and libie can adjust it accordingly?
>>
>> But libie can't say for sure how PP will split pages for it, right?
>>
>>>
>>>> BTW, with recent recycling optimization, most of recycling is done
>>>> directly through cache, not ptr_ring. So I'd even say it's safe to start
>>>> creating smaller ptr_rings in the drivers.
>>>
>>> The problem is that we may use more memory than before for certain case
>>> if we don't limit the size of ptr_ring, unless we can ensure all of
>>> recycling is done directly through cache, not ptr_ring.
>> Also not sure I'm following =\
> 
> Before adding page pool support, the max memory used in the driver is as
> below:
> rx_ring->count * PAGE_SIZE;
> 
> After adding page pool support, the max memory used in the driver is as
> below:
> 
> ptr_ring->size * PAGE_SIZE +
> PP_ALLOC_CACHE_SIZE * PAGE_SIZE +
> rx_ring->count * PAGE_SIZE / pp.init_arg

I know. I was wondering how your message connects with what I said
regarding that using direct recycling more aggressively allows us to
reduce ptr_ring sizes, as e.g. on my setup ptr_ring is not used at all
(it still will be in other cases, but a lot less often than before).

> 
>>
>> [...]
>>
>> Thanks,
>> Olek
>>
>> .
>>

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
