Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1C377667A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Aug 2023 19:29:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B14D9418DD;
	Wed,  9 Aug 2023 17:29:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B14D9418DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691602153;
	bh=dlkc9DAjegR6lI5aHcGbjggoWVEFShZdW0kW3counHE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OeJqrUJCh/Xi0HlAxwwKyneXaWBDsfLBdK3jCsQkBr1i7cbU3+8RbpgPW42n6yiX3
	 yk1kLWiBVchTgz1G4AIDBJhkdhD0/vIlVDz07h+UfldAbPWaV0aHxkchJbB2TJkEIC
	 W+mBSGiqNGdbyGvRVt1W0OZhf5Ek1gNsF1fUi+cGoDVuZuF5WS1ijuSCDWN1l1Iaxp
	 kNeymWmjj1oHqedfIa8gGn9YUVySEsOrdGtjURcSsr7FGX334IiaGLYMrohTuJUj5y
	 xiMQb7VH2JFju6dVVmCJU/+rqoJkMWk4OWDNLydAdeiaN3fCCu/rrOtbXka1kMTdun
	 9yLAfs3jv7gag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n8mxknNzIPyF; Wed,  9 Aug 2023 17:29:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3099B41745;
	Wed,  9 Aug 2023 17:29:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3099B41745
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EC31D1BF3B9
 for <intel-wired-lan@osuosl.org>; Wed,  9 Aug 2023 17:29:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C136E41745
 for <intel-wired-lan@osuosl.org>; Wed,  9 Aug 2023 17:29:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C136E41745
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Oj6bqA2v3DcE for <intel-wired-lan@osuosl.org>;
 Wed,  9 Aug 2023 17:29:05 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B1464418DD
 for <intel-wired-lan@osuosl.org>; Wed,  9 Aug 2023 17:29:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B1464418DD
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="368645903"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="368645903"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 10:29:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="821936611"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="821936611"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Aug 2023 10:29:04 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 9 Aug 2023 10:29:04 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 9 Aug 2023 10:29:04 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 9 Aug 2023 10:29:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=badnoZ9dcrrisWbONWdT0iKoDm9J+2gHwf303EDImWx4f1YijKhKH6b+SLlQuEO/YHWWtQJiFunGvYFeINRyqLGlb0V6u5DpspY4NoU3R9VRRgQ9jUS/kA6cgtypSVrE0DbOS/c5YtYFFY1UeXYStsEJIbtAAdT8Nya6DKBQcW/3TyGDmPHA/1FD4Tg2SwcfjX0ODdbv5c+T5ezy2+AdHS0bdPW5N9AauKKa7saTr+1CfadoVmD78fT5zSaooOOnMltfej0Q5PfMo/3nqhgobfFqxQPf56Ne95QQPrh0pniu1ir+QT95jPe+TaFEgv0IGJnS1e/NA/TfLVyZu5nSWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RfrXSzkj8NiQG+OJKtfwf7HQ7k7iMDAnrMf3xaZ5i5o=;
 b=j216+XYLF0pecYTcCYKI4x5Pds36pnIvSDcx4HZXnBvDPiRicuiDo8WrT4RGPh4ivGz2rTKAqLDoHkyJE0KvusXNADq25NiKj2FOYZ+RuyW88D+vsaAO/H2Rlt3zinG5Rpn4XwBqSgh9DxtxZfgpgRyTUF5z9H71drJmK9l/7Iime92Qb1PfBhn+jTKmDfO4lnyP2cyLxPGl7WqyuC3ak3zmwq8zIpJ56UqcRA8VsuYiJvmWcDmnhLylMxXSqDOECf7RArT/hyYXA0q1QpIZYz6Y8mTOF2NBwUrBAINPSUX95Aeaea5q8UlZU8+zLzebbPd2VEjsDZH+v/Z/Y2fCWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA1PR11MB8279.namprd11.prod.outlook.com (2603:10b6:806:25c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Wed, 9 Aug
 2023 17:29:03 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::cb4c:eb85:42f6:e3ae]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::cb4c:eb85:42f6:e3ae%7]) with mapi id 15.20.6652.028; Wed, 9 Aug 2023
 17:29:02 +0000
Message-ID: <eaca8a6c-2787-ecea-3d72-2c965a9a8b7f@intel.com>
Date: Wed, 9 Aug 2023 10:29:00 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: <intel-wired-lan@osuosl.org>
References: <20230809133913.2652736-1-jan.sokolowski@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230809133913.2652736-1-jan.sokolowski@intel.com>
X-ClientProxiedBy: MW4PR04CA0349.namprd04.prod.outlook.com
 (2603:10b6:303:8a::24) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA1PR11MB8279:EE_
X-MS-Office365-Filtering-Correlation-Id: b7436fde-6ce8-4d1a-1e34-08db98fe1fd5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sSTSpy755wAA82crzngmkM0VEm/PB3zYo+e9DbAk+bwr1j0cwS73KuMbLnKxgqJ2t7zyNr0B2gfLxOEYQb4tzwfzT9rU4YMT+O6/KAxDr5FVajgXOPoJyn3BzopD5MnZ27MH10h7XdI1f209odpbjEzCbNTk3WSgiVFpSiXqgZ2h287jGW16HZBv+bPAnaolrmTFd2wz5uO6LcTbvmiNdm7HDti+o+2m7YjYJyq5HetacYIzp2e/SQwOOUXxcsofW9/Kbo8cEa9xcPrmpeh0GPMc5+O1j1XeZlly3kzPMxNPp9z6PzoWfWit3HoFhoO7DwS9oN9z+TMf24rU2Fh9Pq++Mj6y8+9+tLdtjYa2kOH/gqC2Jc6iEkaXuJMCL15V+V6ykFjsb5nWUb2zOxptJk0B4txxuFOpxxP146P4XEFN5dnMQT8BTC3L0iOzMKufpAUsRDIsPcxrRCxu8gp32t+MmKe0PPCk0OWiAAZendCEII0GIodyLTPNReQWV/cW+OJ4qV42w7QAFov1JQin6W8aAA3FJDkW8Y/W/GZf9PQoXNFIhhRcA9ksWqOm8g7amxBAWoQzkFzeYzac2CaNVQpugkdl9FdSx0BOAHSo5L8VKaaiBieKqV82kSnNbBb/P2iESOhrDv5Jw41qNiRY7A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(39860400002)(136003)(376002)(346002)(186006)(1800799006)(451199021)(66476007)(66556008)(6916009)(66946007)(41300700001)(8676002)(8936002)(316002)(6486002)(83380400001)(2616005)(38100700002)(31696002)(86362001)(26005)(82960400001)(6512007)(36756003)(53546011)(6506007)(478600001)(31686004)(5660300002)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?clZ4bEFXNzZtWnFIY0NtZldCR2FVY1dVakJFVGkyMStQMGdoZmF1dnlRQ21G?=
 =?utf-8?B?SG9aRitkUUVONTFBV0QvWHdaYUJjbXQybEVaaUViWldZaWltUVBncElWVFo3?=
 =?utf-8?B?K0FQYkhUeGg0ejQxbmRFY0ZkcnRIb1UzMFNsVkJwMUdzYjhnbGYxbFFaTUQv?=
 =?utf-8?B?SlpjTkVkNmxqZ2JVSjZPTlQrai9WOG16Z3JZcWo0MUJLSDYvUUFFMHlHZE9k?=
 =?utf-8?B?N1BXZXJPdTBIL1lEc3A3V0ZBZW5UbHM3ZkRKM0kxOHYyakE4YU93aDZPYW1t?=
 =?utf-8?B?cHJPbnRMMVFJVG1QYWUwRFJ5aXFnTjYyNVMrbmFYUW5WcmxZQUFaU3AzNGxZ?=
 =?utf-8?B?R3g3S08wS1JlWUxjRVVZK0d0MEJTbnU0cXpsVEhCdW92eHAvZ2lmbUd0dito?=
 =?utf-8?B?QkNtS2tWbjdCWjFPTlJTRHoyc0svS3RyRXIxZGRvd0lkSVk1SDBLeU4wUXVm?=
 =?utf-8?B?NVhOZDZhMjFpdjZyamhsZEtwcUlDNFQxOFRCbUdvZ0QzYTNib0JtK0N2K2lz?=
 =?utf-8?B?NUNIVk8rTUlDdmVpRkQrMWlYZVRlL2ViV2FHMVN1RUVqbkRCeWhBZFN1K0pF?=
 =?utf-8?B?WUlXSktJUEEwai8zYlliblQ1UmM2WkpJN3Z3cEZSWFR2TldzWWRRQVFkb1Ir?=
 =?utf-8?B?S3NSdVlyanNxMld1ZmJmbXFUVWpCMml2TENvN0pGTGZUK2pBaUpYbFU1eDVI?=
 =?utf-8?B?RGswY3l0OTVmczhLMGVNSVp3UkgwMk9NYU1jZ0RVVjMvTDNvdHdZcHJ0R0RC?=
 =?utf-8?B?bldXWlNTV0lnVGxLODVHTEJMNER1UzQyQ0JNWVNVYndacGVicUFDMnZrMGFY?=
 =?utf-8?B?YU9ubTRvV2JsM2ZGeTlTUnFXVVlyN1h1bXBVNnFLYmhDYkJ4UlVxOUt4QjRa?=
 =?utf-8?B?NGhNZHkwdDZGbHpBSFd3UmdTdEFmZjEwY01JV1hwd0VnWGM0dngwNVhjSjdy?=
 =?utf-8?B?Z25aVWcyTnAyeGh5YkI3RnVNNzAvSXZIK1kzZTJQRGQ1dG1BcUVXMDRkNFF6?=
 =?utf-8?B?aHIwTTNJZW5YUHdrZmlsRmYwQjJvQ3kvMXRGbE94SmRuSXBQN1JhR0VvdnBy?=
 =?utf-8?B?NmROMnNKQ1ArUktHSktUR3RtdHlOMXBtNER4VUZKWU9ibG1JTVlFZTV3cnNT?=
 =?utf-8?B?R0FNc0FuTVVxRmQyN2FHVlYvTFV1c0dFTmdIUzlMUFBYWDN1K3R2VjhhSmdn?=
 =?utf-8?B?bjUwWFJvdXFia0doWUdCVFY1d3k4NkdmUUJBOGVQYzQ5NmZtVTM4dnRuTUlk?=
 =?utf-8?B?Z3puUXJYaFM4czEyK1Z6aUV3RWFXbkQ5VUJCTTBBa0ZReUJnYmhiL1FHYmNi?=
 =?utf-8?B?SDhCNGRtZmo4dXlsVzVlUnIzM0pzU3ZESTF2OU9Na3FWS1c3eG5YVlAyaTF0?=
 =?utf-8?B?dTllNGJZQmdqbUJiNUYzYTBkZGt6UVFmcy8rN1RaV05DcitzWVIxT3JqOWt6?=
 =?utf-8?B?RHB0SzZwV2JVc0RWVFkxNVJqd0ptMm5uMUlMejFQL1lGS0JTeU5sMWdhd0kx?=
 =?utf-8?B?UFo3WUhlV3IyK0c1elRKcmo5eTBXQnArWXd5eDdDYWNTcVY2TEhHckdUWnU4?=
 =?utf-8?B?bTZpcHNjbkVJVzdBSVhoQmVPcEprTE14Nmdkc1RxQVRRalJSVEVrNVRtRFQ2?=
 =?utf-8?B?QUxlUlN6alY3M0J2Q28yMElSczBpTVFPeEpleXMwaHpyK2Y4Z0xDa25MeDJB?=
 =?utf-8?B?SWdFZDZFMUY5ZUUxZnR3SzdweUNFSTNSUFl3eXlEQWdvanYwYUtFNk1HSTZq?=
 =?utf-8?B?VFgzM0tSNk5SSmpLekRzUmltdVhHWHZrYkJCRnh6UzBDc01JSG4yTE9qbnZ2?=
 =?utf-8?B?MkF0elpjTHVzblpVeFlyZktGcXJ0b0ZGUFVXZUpmWFI5NUVFYURKOURJWWpo?=
 =?utf-8?B?L1FIcnR5U3FSdnBudWt4SmdDcWU2Ly92UzYwNTFkZERFa05NZWt0bE9nd1Yy?=
 =?utf-8?B?R1MvQm5UNEJmc29uMzQ2OUhXMFdGY2tZWHdYTm1IODhHTVVDbElocHRIdkFp?=
 =?utf-8?B?R1R2WDN6VG9Ua2pHV0JpN1hTc1lTRmhkUUZJdUcwZlBlemxHM01Wb1NSQkJy?=
 =?utf-8?B?bG1tNCtoeTU5K1FpcWhWZGh5eFVLQU5MQysvblZkMEFvR2RDNzNuZHlzSUlv?=
 =?utf-8?B?dGVWS1piV2lPTDIvN2MvRGNBODFicUxzODBWZUY5WXMxS0JHbmhmUkhpNDNh?=
 =?utf-8?B?S3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b7436fde-6ce8-4d1a-1e34-08db98fe1fd5
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Aug 2023 17:29:02.8950 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DiJVfjBfQmr8bSdOE7U8kpR8UYPISD5NqKAltnwHdLmcpfuAcK5j98O7YOuTnVsKyISIx0sDK/1fUeZizQG7pcUlzH0tTqYsKs1X8LusxW8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8279
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691602145; x=1723138145;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Xxw9QifUjVCy+kaUMS8gOGeaVqb67WnzUA/ZZrHfv+w=;
 b=lQ8LhSjSjxEVtS9YDnEQmpN2Gzb7QI5eFkG//smCLEbkGEYYDV5FQOtM
 iJF/tcEjNLf3mxwEGw3RhWaiq7C7oE18BKE91uoViP/93Kvu8nznJlHLw
 O/Eax19CgKUEKMsCKYu94Z6P/lXBcSOqyWcefr4NwbmyCthQjiVZloMTP
 eLCLHVU64Z5JAeUbQllHpsT1iSsLz9AKsqF3QeTBad97UXvF9r6OUWbnm
 jTEEAPfU3t1ie3heYYCTYAEhtfDSfJ6VAZPvjgNvCfnwUxi5IBMothp+q
 YXNnstxMYW0xQBCqumTFQj2bm0P7luA6olonCHRKSjUJhYscGbxuiRuFf
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lQ8LhSjS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 0/7] ice: staticization
 refactor
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/9/2023 6:39 AM, Jan Sokolowski wrote:
> ice: refactor methods to make them static
> 
> This series of patches refactor some ice driver files
> in order to make as many methods as possible static.
> One additional patch introduced in v3 also refactors
> one method that can be simplified thanks to being
> static.
> 
> Also there's a minor cleanup of unused methods.
> 
> Jan Sokolowski (7):
>   ice: remove unused methods
>   ice: refactor ice_ddp to make functions static
>   ice: refactor ice_lib to make functions static
>   ice: refactor ice_vf_lib to make functions static
>   ice: refactor ice_sched to make functions static
>   ice: refactor ice_ptp_hw to make functions static
>   ice: refactor ice_vsi_is_vlan_pruning_ena
> 

I read through this and it all seems reasonable. Some of the code in
ice_vf_lib.c used to be called from other files but later refactors have
since eliminated those calls.

Additionally the read PHY register functions in ice_ptp_hw.c also were
previously called in other files but no longer.

Thanks for the cleanup.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

>  drivers/net/ethernet/intel/ice/ice_ddp.c      | 120 ++---
>  drivers/net/ethernet/intel/ice/ice_ddp.h      |  10 -
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  82 ++-
>  drivers/net/ethernet/intel/ice/ice_lib.h      |   5 -
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  25 +-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   4 -
>  drivers/net/ethernet/intel/ice/ice_sched.c    |   2 +-
>  drivers/net/ethernet/intel/ice/ice_sched.h    |   4 -
>  drivers/net/ethernet/intel/ice/ice_switch.c   |  48 --
>  drivers/net/ethernet/intel/ice/ice_switch.h   |   1 -
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 468 +++++++++---------
>  .../ethernet/intel/ice/ice_vf_lib_private.h   |   2 -
>  12 files changed, 331 insertions(+), 440 deletions(-)
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
