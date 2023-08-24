Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B9178723A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 16:51:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 44D318322E;
	Thu, 24 Aug 2023 14:51:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 44D318322E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692888685;
	bh=B7bqoZuSn2Q91O3J0nzwRanbHeQVEqc7gOuuxXVDTe4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FD0ZTE1AH7pDLiChX58onIwIGct5yFblXJKxW6t0jwtC0rzA2Ws98twlUWydhY8Fs
	 wPPeEgQ7sULo8xH7rlMTFwbkM3KT3skpv9ITTGCF5UyWd2IZV7qzQ1CnVGk+Yl7l4Z
	 f0wPJ3q28TwKjLZBhaHAAoD1b7m6ONaon7HONFr6ofTq4m5ZxD0qtsDk+U6I8YEAqt
	 qoREUXRBXB8LX0UsFLiDT8/uUQb9HXuYPPyqkil+jR40ufHydljRoeu5meK67xZ+5w
	 HNge3f0ls4P+giHDPbpW6f+sqZtqKN3rq4ji3CrnDR1kNwCGGWii+uhtcm6jHMsHyT
	 YwDqfniMFYYiw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T8CNpf8wss48; Thu, 24 Aug 2023 14:51:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 031AA830E6;
	Thu, 24 Aug 2023 14:51:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 031AA830E6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AB2421BF30C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 14:51:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 79EA74026F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 14:51:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 79EA74026F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DSBs-iNQAN7O for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 14:51:17 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9593F401DD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 14:51:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9593F401DD
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="353991939"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="353991939"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 07:51:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="802567389"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="802567389"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 24 Aug 2023 07:51:16 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 07:51:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 07:51:16 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 07:51:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oFoTzfKIR6sb+MUWluZrKWEfILza/d01IbDhK9tFK89hQvtR1LZBERrmmgeFEJWBrK0YNn4sCdKV7IxLm76nvXx0CWDOnqpa1r1gNNfMCuU6KXsrIDd661dvJlr/CHftCzxYv2KDySH+55QGYD/qIOl1JwGU8FNWgCVQD7+coChgyNHIWbxg1Namp53jDRAFEAsaSeBHcOVyAm0PTlMxPruhijTUJk/QPEc5LmWxoYvYssKymudW9EfCHQWvYqUmQ8sCtVjX6i+sTDDRyDaewKRUC2GR7yWJ7r5+iVt3/9oj3/7F0TFf2y8AErYrdKuspUhNufr/cE3lNcQO5LjqAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FqFeV4Ky6tjamDFk9nreBCLFPan/oxx0luBs/8mm2nU=;
 b=CG2Deam+kjFu+e5uydHSDcO9xQbD6kSZ7RmjE+IAgZxNWk9wGVdVPkeXlWnRsfyPzl5UTkXpO9smLHeSPl1ZDLVfaMu9VV+FY7rwZSUfYR9O/fs2O0ESs/U45D6e6Q/7UcMrrX/qnQrNiE0mguEPhWNAgWQGI6xU4hkZS2Fk68byhr7R29+YHCkMbTM92euOo5AYNdu9pB3j7DDzMpAWPzzn65nYtWqFwL5JFymo7IhPZH68hJGE4/8PPltMz3P6F6dNkNA5CY8VldD+9Ok1Bj7P2Nnlk5dyo2O54Q+hyLcM8BR4RmQVsx5A88AYX2nXVA1QHqXHfc+QxTfPoEdsAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by MW6PR11MB8410.namprd11.prod.outlook.com (2603:10b6:303:249::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.20; Thu, 24 Aug
 2023 14:51:13 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a%7]) with mapi id 15.20.6678.031; Thu, 24 Aug 2023
 14:51:13 +0000
Message-ID: <bb334cef-1cd5-0aaf-6fe3-fd632b34d756@intel.com>
Date: Thu, 24 Aug 2023 16:49:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Ahmed Zaki <ahmed.zaki@intel.com>
References: <20230824122337.3300895-1-ahmed.zaki@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20230824122337.3300895-1-ahmed.zaki@intel.com>
X-ClientProxiedBy: DUZPR01CA0242.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b5::14) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|MW6PR11MB8410:EE_
X-MS-Office365-Filtering-Correlation-Id: a203d3ae-a36d-43a4-ca2b-08dba4b18fd3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: U55+/iv8Lh8GbNxRrap8kJTmXSzYDzMh/0LTJ7TKpa2Lv4T88PbL4FknOUvPsu1OWgQZjqolzwv4f25NlzQZw+mHGJdg19TNTlBTfrrmdGEroqoXx4LSTE8zJYebIcstYJZ6HDQFssVetnudLTRac8uITpM+XeCUz9b9VlO8SgEnSR/bw1OrZFiEGy39Re68R4UtkCUozRSIbr+jCS8kdlQZNoJqxvmghticL6Fd9J0JNZD7CsiEIGz1Fx1MEXabU8ttG2lpRntSOg4Glb76Uqj6sm3ZqudMZU44V2Cw9KjwsCrM9ZdH3bLfDmeOZ0bAoAXkYB9MrJPbbsQlvrtq4s8tkc/Uriedi9rfAboPJVZqW7uWy3bEbYnkJboThF5ui1ysOM+OsA0tUrivT6PG7qVIoHtDe3LRVhmsoWbkF275FdE1vwRiAMKvPWrVaakZBo9WVRbd1t60GgtSAEx8CnfXkQLxb1dCYxAUVWatlknOouatAm6kTqjefZ4gaJVTXS+hy7Aj/jrC5xASdRzjyD3WH7Y9IUYEjvb2MByBOFCpuwORt2ESzZVZKeoG/fmTMliXFxLlkVoR5Fjqp1jN9K3Jbe5vuyCjHcQV5zwd6wHycGYwgkdBH2YAwbFZwrHeJNIqhwdXb1Kk+wcc0HwQOw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(39860400002)(346002)(376002)(366004)(186009)(1800799009)(451199024)(37006003)(66476007)(66556008)(316002)(6512007)(82960400001)(6636002)(8676002)(8936002)(6862004)(66946007)(4326008)(2616005)(36756003)(41300700001)(478600001)(6666004)(38100700002)(6506007)(6486002)(5660300002)(83380400001)(2906002)(31686004)(31696002)(86362001)(26005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YnBVanJFbTAwRHM1YnJoV3M5aEg3eU4vdU1VMFEwVG1XK0xNc3FrSGpBT1Uv?=
 =?utf-8?B?OCtOV20xSUhWZWx3K0xmZU1qOHZjTDhzNFMrR3o1a2R6TXEwVG9CR1Yvd3dx?=
 =?utf-8?B?ckgyV2QxMC9Ya0FVR0xsYUlHUXlRbTEwMFZOY0ZQY3Q3YkF1TVJHeGZ2U0lU?=
 =?utf-8?B?dCtqQ3NNNGZCa2l3aUUwVUJkMXVYWk9lZzdvbEJJMXpHeGxLUnA3bmh6dUdD?=
 =?utf-8?B?TnJFWkNsUkRURFJZemlqaytGZ0x4Z29FM0dIcVRjQUVTeU1pcU9Va09KYkM5?=
 =?utf-8?B?WDNDWFBTYlQwdjVHSjVEcTdzRXFYVytJN1QyQUY0QVJmdm5RSVJKNG1qakl6?=
 =?utf-8?B?eUNEWW1WdGNyWHRNTFZvalFLWm1ORkQ0MncrVlk1eW1BM2MvdCtWemZ0MGdF?=
 =?utf-8?B?YWFMMEowWWJPYlY0VHJwalp4RjZGUDdkb1RUTEdJaHpwYWJZM3JrZFdMaWZ0?=
 =?utf-8?B?OURWTDRFL3FRekUxQ0NYMGIyendrZ0pndlE2bUNxejZVR1NpVGxmNkdHdGV4?=
 =?utf-8?B?S3VVRFp6SENpZ3JLRFRPdGFCOHhzNkJkREFmaUdneUJjS3FVbGcweENzbytu?=
 =?utf-8?B?UjdHZ2t1UWtjVVN1cXFUZlVXTWFoY2NVK0NOR1haa2RGWmJjcmoxWDh6L0ZC?=
 =?utf-8?B?YVNZNFY5c1hJQ3o4M1MwV2lVamdYSEU2OE9hOXNaeHV5a21VVXVnOHJLRmIz?=
 =?utf-8?B?SzMzQ2NrUDgzUlc3cGh1QnB6NWp3ZUdpMkhqTW1aZDNtOFpoNkQ5NVdaZWpM?=
 =?utf-8?B?KytsaTgrZElXZUpVeDN4dHdpNzlHSVA4L21pZXRibzByOEJGbzhpNjUraEhm?=
 =?utf-8?B?Wnc4VVd0dStHSXpUbU5IU1Exd3NsOHE3d1BDeWYvanRFellRVlNNaUJhSVFX?=
 =?utf-8?B?WTJVU2RDaUJlL0tER3hDNkdrVjQvTDhpQ2d1RExKc3F0MEZoQWNyZlpQMFVD?=
 =?utf-8?B?Mm8zVE80NXA2RVpZQm1xdDFoZWhWL0tiMjM4cFdpeFRCRStMYUVIMDhFQjVl?=
 =?utf-8?B?Ulg2b3JOU2ZGT1JqWkt6TDlINlpQaGJYcGxEakJVYlE4UHo3bS9FSDJTd2tj?=
 =?utf-8?B?eUx0eURXcTR0V01IaUROdmM1SWg4V25zS2Z0R0Zubk5hVTZ3MHlUMFE5Rkhx?=
 =?utf-8?B?Y0RrZlJpbDlsUjIzUjFOQjZDOXp3ci9ubmlBNE1DS1Uzc0NkVFA4TGhQdFdK?=
 =?utf-8?B?MXh5MExualRWdDJCcmhOSERLT1VGRWhLcGFQOUd1NmY1WEIzY2Q4cktaZldL?=
 =?utf-8?B?MEpqaUtMT2FVVlQxVG92ZVhTenNzQ0gzUXpBOXdBWGEzTXZWc1Q5NHk3d0R1?=
 =?utf-8?B?azZRV2YvSlVBTUt3MUNLY2FZMERMUHdsdUlya04vRzJobjQvU2xzOFhOV29a?=
 =?utf-8?B?cUsyQVQydDJyUjJUakR2Rmp3RDNYMGUrTWxWbDM5N2QrU2Z1SitLR3JwZm02?=
 =?utf-8?B?STVOTGZYQk5RV1ZzUUVpMzgxby93VU9hbTMxK0Z0REhpc2MrZFY0WEt1eGtw?=
 =?utf-8?B?R3R6Sjc3RGxUTVVudkRxNEpSdEV4S1AzK08yN3lMUWVNYi91cW80bmowR3FX?=
 =?utf-8?B?eTErL1FPcUdJSHByd0l4dWpQYnAxemJDaUFHMGxPTlY1UDB1M3ZVamM0VGNN?=
 =?utf-8?B?QlhTdEtwVWErM1h4Q1EwTTkrNlhzRVQyWGtBSmFlWmR2eDYzUzhONE9hOTBw?=
 =?utf-8?B?LzFGb1kyeldHUFlBeE9yVlJ2dDNwL2RaeUpIUzc0bHUyL2tObGY3ajFoeWdV?=
 =?utf-8?B?Y2xJeTVHV3poWjFLU1hoQW5lZVVQUG5xMEY5dlVmb2FSTlg2bkpZMUNrdVZE?=
 =?utf-8?B?bnNsQnpmVHYrVGljUGErWWZzUWtWWjVvN0FsdU5TRlZvV2tYYnRXTUFHa2hh?=
 =?utf-8?B?QjFqYysvMHRPM3lzSzE1QzY0QWNKVWdoczVsUmp1Q0JxVWlQaGRYeTRFbFJa?=
 =?utf-8?B?TkdwbkQ3MDFreXQ4djdQZGtqWk40TUFxd0h3bFhxMHFQUndsQ2llN3dsWStC?=
 =?utf-8?B?azNpQmVWaEk4M0U0VTBRWTN5MWdpRnlvaEJtMXNFbmlOalhHalJVU2JXMXA3?=
 =?utf-8?B?R1lwMGZhZFgvN3V6TzYvTUxRdncrK1dnUm90MmwxMWl2K25rVkRBYi9Pa2c4?=
 =?utf-8?B?UG1adDJxOHhBWWdBTjVNRzB4WEQwem93c29FUkFBY0g3UUp4eWJtNHdaSDF1?=
 =?utf-8?B?aHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a203d3ae-a36d-43a4-ca2b-08dba4b18fd3
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2023 14:51:13.4791 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F8KgRprkOphO6vIw7KNt1yxd6V+kn8om1OBy86bBRvXBuT3m+NGNzJ9dFMRmRLGj4OVNQjt3QvL8OHVvYRMTR1Y+sZlySHBb6MzBWrNZ5Ow=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8410
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692888677; x=1724424677;
 h=message-id:date:subject:to:references:cc:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5n9oW6xqeBUkADyCiCPInJf+B5G1DlaYqQwWusLcobg=;
 b=fQEpjq7be4DWg3B2amWY2Q2v4cha3yXiGUGudhGLG0/lbVgu0AjyHCHO
 jRwSg14oBMawdlSFfBiUDgXFo/uqRfrFRk1W2I9HPSQDtspD/WzRs24xk
 BFv9OdU1Oz0pMaMpURalcBJD4AxGmMq82pB4qwO3QKz5liKFws3jd4q/S
 r5DUmpbBW14vn5zDyyJAwH29BqR0gBZfF1VLnxnUoKisTNt4S1ZaymlX4
 9jzQn2tS5aMVDUEtu2otch3u2ibSnP9UhX93ZHftCu/T+nlQaAodUw4hp
 AQHPNOQIW2joiaZcdp4z/9MCy6+EE+kCffe2jNudAehaibZSd7b7JTVTn
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fQEpjq7b
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] iavf: remove "inline"
 functions from iavf_txrx.c
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Ahmed Zaki <ahmed.zaki@intel.com>
Date: Thu, 24 Aug 2023 06:23:37 -0600

> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The iAVF txrx hotpath code has several functions that are marked as
> "static inline" in the iavf_txrx.c file. This use of inline is frowned
> upon in the netdev community and explicitly marked as something to avoid
> in the Linux coding-style document (section 15).
> 
> Even though these functions are only used once, it is expected that GCC
> is smart enough to decide when to perform function inlining where
> appropriate without the "hint".

The compilers sometimes do unexpected things. I wouldn't blindly hope.
This means, I'd like to have some objdiff or at least bloat-o-meter
output here to prove this commit doesn't hurt.
If there are changes in the object code -- then some perf tests as well.

> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c | 43 ++++++++++-----------
>  1 file changed, 20 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> index 8c5f6096b002..562dafb89f1d 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> @@ -7,8 +7,7 @@
>  #include "iavf_trace.h"
>  #include "iavf_prototype.h"
>  
> -static inline __le64 build_ctob(u32 td_cmd, u32 td_offset, unsigned int size,
> -				u32 td_tag)
> +static __le64 build_ctob(u32 td_cmd, u32 td_offset, unsigned int size, u32 td_tag)
>  {
>  	return cpu_to_le64(IAVF_TX_DESC_DTYPE_DATA |
>  			   ((u64)td_cmd  << IAVF_TXD_QW1_CMD_SHIFT) |
> @@ -370,8 +369,7 @@ static void iavf_enable_wb_on_itr(struct iavf_vsi *vsi,
>  	q_vector->arm_wb_state = true;
>  }
>  
> -static inline bool iavf_container_is_rx(struct iavf_q_vector *q_vector,
> -					struct iavf_ring_container *rc)
> +static bool iavf_container_is_rx(struct iavf_q_vector *q_vector, struct iavf_ring_container *rc)

Over 80 chars, as well as in a couple of other places below, please
recheck the patch (you're trying to fix checkpatch issues and at the
same time introducing new? :D).

>  {
>  	return &q_vector->rx == rc;
>  }

[...]

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
