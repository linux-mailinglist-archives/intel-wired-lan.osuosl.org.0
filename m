Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6935B8DE3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Sep 2022 19:10:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF903417A4;
	Wed, 14 Sep 2022 17:10:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF903417A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663175419;
	bh=wITjvH1qB5KqzeZAe/Y3haqkj5a65dvIFJW8l3rDNzQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=j8Zbf6NXl/fb0VND5iah8/zW9sEv1sQGXnaYiz8kZg8CqIqUqEPU5YvEal37/14wS
	 sfbKTsWw8RslJFa21+BjMKBmMep2KgCkIxyOTA6FaXH1ZAHw6S1hcCNnvNX8sFUgqF
	 AzTzBQmTxYQehjTvZpMYSXpUCFt8xMTAFLYQAxtBsUBlRcAkkBbI8H+Oj/STVg25cr
	 kXpOFceOjvjzaARqGFxwFTTwFf5sOqwcT5BhTU5WwOiQESJKeNWlH8jsLKYyZRLH7t
	 Z0qupI1i9Zoi/HQmcH4f1lyps3SGx6BrKCxA0Vptfr6kNLt5YVZcqAeXHNxmC7t9on
	 O8ikKTtvVnl2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4jf4IeiO4kCt; Wed, 14 Sep 2022 17:10:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F34734179D;
	Wed, 14 Sep 2022 17:10:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F34734179D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 80E271BF968
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Sep 2022 17:10:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5AA0A81BD9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Sep 2022 17:10:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5AA0A81BD9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z1F3OvOLCzhA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Sep 2022 17:10:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 12AAB81CE9
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 12AAB81CE9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Sep 2022 17:10:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="296077261"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="296077261"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 10:10:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="568087823"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 14 Sep 2022 10:10:03 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 10:10:03 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 10:10:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 14 Sep 2022 10:10:02 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 14 Sep 2022 10:10:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bV+7QFeFiGWvK5mb3+i2NpEe93T+rfkj77TfWfLE9X841ppj1TEjgwG6/V+9xl4ZLGrEU6JnD0o3L+cLMAFpwX1Au/1FWd/wRpWWpcNq74dxEUFr+izNJvhdwZWL2fRwcUMdNOyvPpDlmHLqQFd8lYij39tYzN9WjfOv8IDctYE003JHYau0ArDpurEJKoW2kcdPRMzRXUFzw9uYSSQ/BnKnoOLOFc1B2eFoz3ZiGFH0zBkAUTjag5fXGlnJBWgGJgHalL4/rR7hmyhZPeZedlaUbMk3TBIVPxhcNlR9gwbr6/60ttS1jj2ywEIqIesG1uxchxpjW2aCyj2IqcWHuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XiAVoKnWtKhKnHq6mEOkK4PSVTKJissC2bVxosV77bQ=;
 b=mLW1Iw1mcapM1WxKyWqTDCPC5eH43zYvKUhiPsmpLWU8kf3wXp6te0cPO1jLML6TmaxYcd6PXvs4Ur4YHq4HOQe4OaJp89S1Xg5eM4Nj3s2ZD94mqxR8Zqt2++xWu2mGHF/JpFORSk0iySxf5Sa7AGlhuw26lMLYLyGtCSwn+i6uSWEsrkiMEQAVfEQidPgxM4avbc+Kxwj2r4slDD/BFxYm/HTt63p8d7/k83+HXbaDUvgdrpIGkwrlP5/EvD/B40OeJ+J+APKUBtRwfp3ajRpxQXWDAnYAV9M6rT3JvaUr9Yir2ti57Pqx4wqmqbAtO2eNgKbINJdtSZ4G3xjJgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by PH0PR11MB4775.namprd11.prod.outlook.com (2603:10b6:510:34::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.19; Wed, 14 Sep
 2022 17:10:00 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5%7]) with mapi id 15.20.5612.022; Wed, 14 Sep 2022
 17:10:00 +0000
Message-ID: <e5d826ac-0042-4f57-d76b-5615bb64f3a8@intel.com>
Date: Wed, 14 Sep 2022 10:09:57 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: "Sokolowski, Jan" <jan.sokolowski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>
References: <20220914135524.2000-1-jan.sokolowski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220914135524.2000-1-jan.sokolowski@intel.com>
X-ClientProxiedBy: SJ0PR05CA0131.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::16) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|PH0PR11MB4775:EE_
X-MS-Office365-Filtering-Correlation-Id: 00413150-b8fd-48f1-7b82-08da9673f4ec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CjwLzkovmVkAbYeWlTYrnL7nO67S5GcRNF6TS7k/QyQpZJILSskTeIxgk5Nri1ILP+5JR8thrs1yuVbdsNq0PH8/svqj8lcNVZv64thtw/Z/Fhi0OZZ50ojG0uqpPSYzNQ8NC5NBJDL4tGAeCxcz43Ehf2e6tONlYWntFyQcpj3+nCtr/D35AZuMhXoiNUxubU1t3JlGEfx6fa6gldmYsYKguKYxSlm2gQ2MGkfRFhSnsIJmimnoePPZcBsuEDu0dlJqpCECqtmHduvlgHfze9fCyzfq5A3jrJPVOZnxvCNQ7TX/bsK+nciA7T7kUDokzzO1b2cUbE+Tdqb1GMk2ZN9ReC+njdPbz61zY1E8sqnadoILhw4i2SU7FxC7KojRJYdhHZkkaXsmwEqOb9QY7gXvg7KDlmrtEWPz1smUYTFxJSz2WbH+om3J8Y7wefP/z9foeBjat2vZ+kC6vmfDV0iJo8gPkmz+8/eoEqB/igyN/2/7S2eUujNnwVeViPaRoivLQIa+RJWLO5My3e3gBKRtmbhi8//le9XUvmr2DUyMcj5KxDjGlvNw5PCLAicORuW7DznlwAcMGiQLOWxFPaxNi3BXgTjL4Kra1f35KxViGnJyc/OMyqXWiWcFrf4L1lLsSPzeWPwphx/+Bl1df2w6I01jKrB85jpYYguGBjoTh7Hkfwiz93Gw3bOByS6Q9sMArbHl+phmEbHpKAdXb2TaOeOkRf+7h/wA5fbPwza821x8EV5m8P1m7PN7wi2bE5Xvz0k412JJjhM3h7DPeCdGKU/CgHcgeqX45RqZ0fw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(136003)(39860400002)(366004)(376002)(451199015)(6506007)(6636002)(316002)(41300700001)(66476007)(53546011)(2616005)(6512007)(36756003)(66556008)(478600001)(6486002)(186003)(8936002)(110136005)(2906002)(6666004)(66946007)(31686004)(5660300002)(86362001)(26005)(38100700002)(8676002)(82960400001)(31696002)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aENDLzR1a2JCRnpQNURaMEs3NTl6ZWp0MzlNWlBJeTVMVGROSkUwd2RPOEtB?=
 =?utf-8?B?N1MrcnZQTmRVS3NFdHN0cUZyd3VKY3pzSHZERHFBU0VDRWRJZmVZRjR6NmlS?=
 =?utf-8?B?bWVKTWFHN3ArM1YreE1xMmV2WXd2ZURhbEN5MHpQVVdlYzRFd0o0ck94a1hR?=
 =?utf-8?B?QTlOMnJISVFZWko1dDJxTXQxUG11bjR3eG1xWEt5akRCczVSOTFEVktDcGF2?=
 =?utf-8?B?RlhKQWZLUGVILzdtVWhjdko2dWpGaktGbDlLQ051VHRTSHNpcWVRS24yMUNq?=
 =?utf-8?B?L1FNcnZLQkkwdkc2RUxaK1RvMjZDSFRBMWI5N2prNlIzZ0xudVpOdzhKWFNT?=
 =?utf-8?B?dzI5Qk1NQWRCcTJnQk9JejhqOHBseVdFWnNUUlNjeUhRMG5PcGZRQjExTThx?=
 =?utf-8?B?SjhCODFjTmh0OUlnOGNISmNTeFFqMlZFNmwvdnpxM2J1Yzdjd2VLTXBmM3BC?=
 =?utf-8?B?VW40MnVxQlNxYWYreXh5WUJqNTRhSDlDcCtBUlRKYWhWQ3BiN1FGZ1FHNHFj?=
 =?utf-8?B?dHpJUi9hV3M2ejdPNjVSb3ladTQvWUV3bEJvc2ZwNU16YjZDWGZqMmhURUZC?=
 =?utf-8?B?dEVFc0pqTmZNTGQ2NGRZblZOdldXTldnYW4zbjBqU1FYWEEwSmRrcXFaaU1q?=
 =?utf-8?B?NkNxdjdkOU5YMHZnQjcyQkRtUUNVZHRCWEMwRE00TmlKZmhRQjl6bTltNjhC?=
 =?utf-8?B?UUdFdEpwSHB1bDJ5dCtEUWovb0lmUGtGKzlsdHU3NGdVaG1SS1NQNld2NTFG?=
 =?utf-8?B?Z1RlRzlhbG1WUTdxb1p4aDdFazZiZ1dqek5nWTFkRjZ1SC9kVTNDYmJNcmk3?=
 =?utf-8?B?ZHUrTVRqdHJtbExmbUlsWk9NVFQ2QzlvRmNuRlpCM2FZM2lIU1pxMW5jdVdP?=
 =?utf-8?B?bGQwbk1QQlBCMmpJamZGTWZmVzRvK3EydGtxcGFBQTZHWEcvb3I4ODJpdHF0?=
 =?utf-8?B?TDdVdDJ3a0hSZDFOMHNnelpTVGVwVVdBcWdnb2xwYVFLRGNORnplY0JscU9N?=
 =?utf-8?B?SVNsWjRxaW40cVF2eWw1ajlOMHo2OEh0cU04MHRURTRnYlVhWHRUNVFKMm9l?=
 =?utf-8?B?R1B2eGxOTjJHKzJIbGhGcE91eUdXZjhMb3VjdHVjUFJsRVdDYlZMcS9xY3Aw?=
 =?utf-8?B?YlpvMndRZGVRQnJyVnhMYXRTbm9MU2Z3Znk0Y2xMTFFnZ0h1WTNIOHJCVHhG?=
 =?utf-8?B?MlFDV1VFUXpZbjMxaEVrLy94UEs0VGNJU1VnY1doWG1ZekRmaUlVOXZHMGNF?=
 =?utf-8?B?TFBvUTRKeFAxV1hJNW1ObGNmbWhOTTJ2TGVhYnJWZUlVUy9GVjNFL3RPbFBS?=
 =?utf-8?B?Yld6dVI4TXpsVWNNc1dXYm5qeXk2UEFXOGVZM0k1WEtMaUIzenNCdDlMOUk3?=
 =?utf-8?B?V3FBS1pxRXVaTnR3OXAyc1hJYThMQkVWVTVZMHNJb2JSdUpoL2JYcVFSdXFj?=
 =?utf-8?B?dWFSRmxKTml5dDdUSzZkVXdGc2VzaUV4dTN3SE54QjhKSFBWYkoxRzg2R1VB?=
 =?utf-8?B?WElkbnVRbHZRdGg0eDdaRUlSREtDYUhmN1BLWWJrWG5PSjlna00zaTlOSHY4?=
 =?utf-8?B?d0VsbkFaUjQ4RzVFNy9nTitIeFlIZHN3MDU2eHdpQ05pbVlpSjVYTTUrYzQ0?=
 =?utf-8?B?MGtNeGh3czN5NFFoK2IxcGFTaEpoRWdsUG45a2s5b0cvbnlVcTU1ZlQ0VnY0?=
 =?utf-8?B?eDMvSFNCREFySVRiUjdjS3RsN0tmVGdtT1Jmd1h2a0lwK0s1b3prZ1A1Zmh4?=
 =?utf-8?B?bCs5aVVpRFhlY0FERUgwSkhmcTlCeW1SUHVtVXlkN2hMejMwbXFtTjRvUDRH?=
 =?utf-8?B?TmRHai84QnYrd1Z4WUxSSWpXZ2t2dHZaWWFmV1ErVmt0M1RDd2k2aTBzTmJk?=
 =?utf-8?B?bk1sZ3Z6Mm5EY1hHN1hvc1Z0bzhDVDd1K05YQUFlQi8vVlhrSE5mTzJFYlhC?=
 =?utf-8?B?UlZmc2Qwam1NSnFqcEZpdkthWE5EbUFLMXkyNGdCbUtpTXJEM0FPbEZkc0dN?=
 =?utf-8?B?OUJZQ1BqQWR0ZlR3VnR5THF1aDZ3aWxTalhNOTdnNFhXOUlQOWV3UWphbndH?=
 =?utf-8?B?bFVTOHdESWlEdnA0UDR3TWVhYVRDdGYrUzI5Rk1IWWpoOEdxeW1taUp1d25V?=
 =?utf-8?B?Qk9YVThaWUlXVExZN3VHRUFGTnJmcDRSN3E0MDZqMjhWbS9NTjgwb3FKcG5a?=
 =?utf-8?B?VkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 00413150-b8fd-48f1-7b82-08da9673f4ec
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2022 17:10:00.4328 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SvXuQaaZ9IpgY/Erx1/tKoczcUpk0LrBuG6xyf9jc07x+iGlNJZqxy2vYM9YyHOgSuSpeXZ4W0tS0q02FT5MCE7Qe4ZjZha0/JJmJ9KmyIo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4775
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663175411; x=1694711411;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=CPKCo+juVqBYDrxaVroGIfTYfoGfWSJUVJlhpmplw0c=;
 b=Q3YCrPuK7S2cp+iD0HSle1BUd+3dL/kkleTyhFHahEq2/oTEPilBOWO2
 avDUELUiA2/F74u7zyc5mXV1TANhw67nO4YdecMLfe6hoSGf4N0cBLKLH
 VGZZ1o1EnUGGf+SNZBh1aBaCH6YESV8nUChqjMOMX38kPqj/zBl2+KRtg
 I3GAIrmRmJXVDFAxPuXVhpAw4Jj0gr6qDRR0r2uIkizYJwOCox8vYKGBe
 jEtlZyOEwA5dSp8jzVVjzK9dpODot6mqjX7Oy2jhw7iWNqJEC105NdKWx
 q8FvkV2SEV7EtlMRrdDtRe1mvHlZR61OQzC4j8TBBvW3WPeYyd/Fqn0kf
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q3YCrPuK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v4] i40e: Fix DMA mappings leak
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



On 9/14/2022 6:55 AM, Sokolowski, Jan wrote:
> From: Jan Sokolowski <jan.sokolowski@intel.com>

It looks like your git config needs to be fixed. The email and from do 
not match.

> During reallocation of RX buffers, new DMA mappings are created for
> those buffers. New buffers with different RX ring count should
> substitute older ones, but those buffers were freed in
> i40e_configure_rx_ring and reallocated again with i40e_alloc_rx_bi,
> thus kfree on rx_bi caused leak of already mapped DMA.
> 
> In case of non XDP ring, do not free rx_bi and reuse already existing
> buffer, move kfree to XDP rings only, remove unused i40e_alloc_rx_bi
> function.
> 
> steps for reproduction:
> while :
> do
> for ((i=0; i<=8160; i=i+32))
> do
> ethtool -G enp130s0f0 rx $i tx $i
> sleep 0.5
> ethtool -g enp130s0f0
> done
> done

I'm not sure if Maciej still has open questions so adding him again.

> v2: Fixed improper kerneldoc that resulted in a warning
> v3: Applied commit msg fixes reported during a review
> v4: Applied i40e_xsk.c fixes reported during a review
> ====================

Again, these should be under the '---' after your sign-off unless you 
want them included in the git log.

Also, please be more specific 'Applied i40e_xsk.c fixes' does not help 
reviewers, what specifically did you fix/change?

> 
> Fixes: be1222b585fd ("i40e: Separate kernel allocated rx_bi rings from AF_XDP rings")
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
>   .../net/ethernet/intel/i40e/i40e_ethtool.c    |  3 -
>   drivers/net/ethernet/intel/i40e/i40e_main.c   | 13 ++--
>   drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 14 ++--
>   drivers/net/ethernet/intel/i40e/i40e_txrx.h   |  1 -
>   drivers/net/ethernet/intel/i40e/i40e_xsk.c    | 67 ++++++++++++++++---
>   drivers/net/ethernet/intel/i40e/i40e_xsk.h    |  2 +-
>   6 files changed, 72 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> index e518aaa2c0ca..0f2042f1597c 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -2181,9 +2181,6 @@ static int i40e_set_ringparam(struct net_device *netdev,
>   			 */
>   			rx_rings[i].tail = hw->hw_addr + I40E_PRTGEN_STATUS;
>   			err = i40e_setup_rx_descriptors(&rx_rings[i]);
> -			if (err)
> -				goto rx_unwind;
> -			err = i40e_alloc_rx_bi(&rx_rings[i]);
>   			if (err)
>   				goto rx_unwind;
>   
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index e3d9804aeb25..ad15749a2dd3 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -3565,12 +3565,8 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
>   	if (ring->vsi->type == I40E_VSI_MAIN)
>   		xdp_rxq_info_unreg_mem_model(&ring->xdp_rxq);
>   
> -	kfree(ring->rx_bi);
>   	ring->xsk_pool = i40e_xsk_pool(ring);
>   	if (ring->xsk_pool) {
> -		ret = i40e_alloc_rx_bi_zc(ring);
> -		if (ret)
> -			return ret;
>   		ring->rx_buf_len =
>   		  xsk_pool_get_rx_frame_size(ring->xsk_pool);
>   		/* For AF_XDP ZC, we disallow packets to span on
> @@ -3588,9 +3584,6 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
>   			 ring->queue_index);
>   
>   	} else {
> -		ret = i40e_alloc_rx_bi(ring);
> -		if (ret)
> -			return ret;
>   		ring->rx_buf_len = vsi->rx_buf_len;
>   		if (ring->vsi->type == I40E_VSI_MAIN) {
>   			ret = xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
> @@ -13304,6 +13297,11 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
>   		i40e_reset_and_rebuild(pf, true, true);
>   	}
>   
> +	if (!i40e_enabled_xdp_vsi(vsi) && prog)
> +		i40e_realloc_rx_bi_zc(vsi, true);
> +	else if (i40e_enabled_xdp_vsi(vsi) && !prog)
> +		i40e_realloc_rx_bi_zc(vsi, false);
> +
>   	for (i = 0; i < vsi->num_queue_pairs; i++)
>   		WRITE_ONCE(vsi->rx_rings[i]->xdp_prog, vsi->xdp_prog);
>   
> @@ -13536,6 +13534,7 @@ int i40e_queue_pair_disable(struct i40e_vsi *vsi, int queue_pair)
>   
>   	i40e_queue_pair_disable_irq(vsi, queue_pair);
>   	err = i40e_queue_pair_toggle_rings(vsi, queue_pair, false /* off */);
> +	i40e_clean_rx_ring(vsi->rx_rings[queue_pair]);
>   	i40e_queue_pair_toggle_napi(vsi, queue_pair, false /* off */);
>   	i40e_queue_pair_clean_rings(vsi, queue_pair);
>   	i40e_queue_pair_reset_stats(vsi, queue_pair);
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> index 69e67eb6aea7..c5a7e3819ce2 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> @@ -1457,14 +1457,6 @@ int i40e_setup_tx_descriptors(struct i40e_ring *tx_ring)
>   	return -ENOMEM;
>   }
>   
> -int i40e_alloc_rx_bi(struct i40e_ring *rx_ring)
> -{
> -	unsigned long sz = sizeof(*rx_ring->rx_bi) * rx_ring->count;
> -
> -	rx_ring->rx_bi = kzalloc(sz, GFP_KERNEL);
> -	return rx_ring->rx_bi ? 0 : -ENOMEM;
> -}
> -
>   static void i40e_clear_rx_bi(struct i40e_ring *rx_ring)
>   {
>   	memset(rx_ring->rx_bi, 0, sizeof(*rx_ring->rx_bi) * rx_ring->count);
> @@ -1593,6 +1585,12 @@ int i40e_setup_rx_descriptors(struct i40e_ring *rx_ring)
>   
>   	rx_ring->xdp_prog = rx_ring->vsi->xdp_prog;
>   
> +	WARN_ON(rx_ring->rx_bi);
> +	rx_ring->rx_bi =
> +		kcalloc(rx_ring->count, sizeof(*rx_ring->rx_bi), GFP_KERNEL);

WARN_ON prints the splat and continues. Are you purposely reallocating 
over rx_ring->rx_bi?

> +	if (!rx_ring->rx_bi)
> +		return -ENOMEM;
> +
>   	return 0;
>   }
>   
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> index 41f86e9535a0..768290dc6f48 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> @@ -469,7 +469,6 @@ int __i40e_maybe_stop_tx(struct i40e_ring *tx_ring, int size);
>   bool __i40e_chk_linearize(struct sk_buff *skb);
>   int i40e_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
>   		  u32 flags);
> -int i40e_alloc_rx_bi(struct i40e_ring *rx_ring);
>   
>   /**
>    * i40e_get_head - Retrieve head from head writeback
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> index 6d4009e0cbd6..790aaeff1b47 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> @@ -10,14 +10,6 @@
>   #include "i40e_txrx_common.h"
>   #include "i40e_xsk.h"
>   
> -int i40e_alloc_rx_bi_zc(struct i40e_ring *rx_ring)
> -{
> -	unsigned long sz = sizeof(*rx_ring->rx_bi_zc) * rx_ring->count;
> -
> -	rx_ring->rx_bi_zc = kzalloc(sz, GFP_KERNEL);
> -	return rx_ring->rx_bi_zc ? 0 : -ENOMEM;
> -}
> -
>   void i40e_clear_rx_bi_zc(struct i40e_ring *rx_ring)
>   {
>   	memset(rx_ring->rx_bi_zc, 0,
> @@ -29,6 +21,58 @@ static struct xdp_buff **i40e_rx_bi(struct i40e_ring *rx_ring, u32 idx)
>   	return &rx_ring->rx_bi_zc[idx];
>   }
>   
> +/**
> + * i40e_realloc_rx_xdp_bi - reallocate for either XSK or normal buffer
> + * @rx_ring: Current rx ring
> + * @pool_present: is pool for XSK present
> + *
> + * Try allocating memory and return ENOMEM, if failed to allocate.
> + * If allocation was successful, substitute buffer with allocated one.
> + * Returns 0 on success, negative on failure
> + */
> +static int i40e_realloc_rx_xdp_bi(struct i40e_ring *rx_ring, bool pool_present)
> +{
> +	size_t elem_size = pool_present ? sizeof(*rx_ring->rx_bi_zc) :
> +					  sizeof(*rx_ring->rx_bi);
> +	void *sw_ring = kcalloc(rx_ring->count, elem_size, GFP_KERNEL);
> +
> +	if (!sw_ring)
> +		return -ENOMEM;
> +
> +	if (pool_present) {
> +		kfree(rx_ring->rx_bi);
> +		rx_ring->rx_bi = NULL;
> +		rx_ring->rx_bi_zc = sw_ring;
> +	} else {
> +		kfree(rx_ring->rx_bi_zc);
> +		rx_ring->rx_bi_zc = NULL;
> +		rx_ring->rx_bi = sw_ring;
> +	}
> +	return 0;
> +}
> +
> +/**
> + * i40e_realloc_rx_bi_zc - reallocate xdp queue pairs
> + * @vsi: Current VSI
> + * @zc: is zero copy set
> + *
> + * Reallocate buffer for rx_rings that might be used by XSK.
> + * XDP requires more memory, than rx_buf provides.
> + * Returns 0 on success, negative on failure
> + */
> +int i40e_realloc_rx_bi_zc(struct i40e_vsi *vsi, bool zc)
> +{
> +	struct i40e_ring *rx_ring;
> +	unsigned long q;
> +
> +	for_each_set_bit(q, vsi->af_xdp_zc_qps, vsi->alloc_queue_pairs) {
> +		rx_ring = vsi->rx_rings[q];
> +		if (i40e_realloc_rx_xdp_bi(rx_ring, zc))
> +			return -ENOMEM;
> +	}
> +	return 0;
> +}
> +
>   /**
>    * i40e_xsk_pool_enable - Enable/associate an AF_XDP buffer pool to a
>    * certain ring/qid
> @@ -69,6 +113,10 @@ static int i40e_xsk_pool_enable(struct i40e_vsi *vsi,
>   		if (err)
>   			return err;
>   
> +		err = i40e_realloc_rx_xdp_bi(vsi->rx_rings[qid], true);
> +		if (err)
> +			return err;
> +
>   		err = i40e_queue_pair_enable(vsi, qid);
>   		if (err)
>   			return err;
> @@ -113,6 +161,9 @@ static int i40e_xsk_pool_disable(struct i40e_vsi *vsi, u16 qid)
>   	xsk_pool_dma_unmap(pool, I40E_RX_DMA_ATTR);
>   
>   	if (if_running) {
> +		err = i40e_realloc_rx_xdp_bi(vsi->rx_rings[qid], false);
> +		if (err)
> +			return err;
>   		err = i40e_queue_pair_enable(vsi, qid);
>   		if (err)
>   			return err;
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.h b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> index bb962987f300..821df248f8be 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> @@ -32,7 +32,7 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget);
>   
>   bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_ring);
>   int i40e_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags);
> -int i40e_alloc_rx_bi_zc(struct i40e_ring *rx_ring);
> +int i40e_realloc_rx_bi_zc(struct i40e_vsi *vsi, bool zc);
>   void i40e_clear_rx_bi_zc(struct i40e_ring *rx_ring);
>   
>   #endif /* _I40E_XSK_H_ */
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
