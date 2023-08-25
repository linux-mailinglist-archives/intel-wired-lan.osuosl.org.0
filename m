Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF207885E4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Aug 2023 13:38:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD74483B47;
	Fri, 25 Aug 2023 11:38:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD74483B47
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692963503;
	bh=daivuptukavIrSeAF20xVjf4Rnm9PIiT08qQ/1qBjxY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tx+pGDWjpRyzej1r4FIOxfDpV0bJe652cZxZIQcUCmB7t8pVU0BQCuOZyieJlHiAS
	 cS1SEEGcUYDSk6wXz+3TcjoQ1jWJAe7mjAj9DBZww46iBHnecgEbUV3AcKaSJROnHH
	 XuJ98IZQwvypjiaLs+eq13RI6iMWu9D+6b8DfXTPMQ1tb6jczQIMJR79a3WEZGEry8
	 GwtipxukSodBWVx0fKweVrBzA7lr1CZ2ot91BP/IHlTIXN+r0ayH9Tm7NmeDDg2Rnq
	 0aSwuQnBVEXRt36Z4Hk6XLO1/i9aMmRqCUtsJFkcymIDBqteCDDW39o/E899GhAgfi
	 gJgDwOTzlJdAQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bINYkM_SULt9; Fri, 25 Aug 2023 11:38:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B344E833CE;
	Fri, 25 Aug 2023 11:38:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B344E833CE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C01F71BF3AA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 11:38:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 95FE741D80
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 11:38:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95FE741D80
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rdm3Bp5q5q9G for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Aug 2023 11:38:16 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 73C87403C5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 11:38:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 73C87403C5
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="378477397"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="378477397"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 04:38:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="984086917"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="984086917"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 25 Aug 2023 04:38:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 04:38:14 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 25 Aug 2023 04:38:14 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 25 Aug 2023 04:38:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cb5lxpiWGi4wbz/y81VFu21hoUgHxJIXJXg4eS1RQPIYyByue5CgrkUjDUJux6aiWxJAp167RR9h2/I6SglZcHHVfNGz+jhew3iH3vHmgeu9BHE1Cqmy+em9TMUfyjvs/USNyK0PLEFgQZ6zjjSUKfYkQzlPCj+Eq6uPTC+NFXHOqedMHJe7yfhPkk914xHrpy1qdAXN9gq2dvMBqw3aZ8srfzv/9KF3qxqUsUDav1M6UtZAbupPA12rS136RY9W/vUAt8QVVOgPuoJs8N0ycoTCfiu4hbXXX9cEYLW15a/TlxHDhH3GPWqF2hml5QvNTukgkrcICWWO2lslHgCyjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SrJ6momb7LY8dmeiDnHcZNPBer8FQ6zpg73PqJHN6Yw=;
 b=fVGl0wM5B7YKuupicOy3tS0L9cyrRfgMu4EWBcCpeScsEt/M9A+6JTdNnpU2Ew6pQb1kffftOJiFJ09YQgEZRbeaTc3shPGqQl05uR0XoxhC7X2+R4YvJqkbNwimL/lqfYKwX02PaOTyBN/hSLphuCFqF3s5F79j6yn7xn9xdhegR7YLPeIWMCdhP+kiKdMGFaMjw6nfh3rnAiiMPqw+x9Pj/mL5oee36dq2M718kL5IxKJSmVi9/fzlGF5pvrw9pMed5WeZc1AGnnR9lhGb8RwlzB6kbwn1tKKOfVRNAAg7xrkJPQWBEhmcL1ybjD2F7ltbCKHX6L29s6rdCvQaIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by PH8PR11MB7966.namprd11.prod.outlook.com (2603:10b6:510:25d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Fri, 25 Aug
 2023 11:38:12 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a%7]) with mapi id 15.20.6678.031; Fri, 25 Aug 2023
 11:38:12 +0000
Message-ID: <f60f2e8a-d77d-9048-405d-9c356960eb01@intel.com>
Date: Fri, 25 Aug 2023 13:36:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Ahmed Zaki <ahmed.zaki@intel.com>
References: <20230824122337.3300895-1-ahmed.zaki@intel.com>
 <bb334cef-1cd5-0aaf-6fe3-fd632b34d756@intel.com>
 <536c1d2d-d371-97ed-d550-26800c142274@intel.com>
 <30ae8892-3332-7fb7-273d-81f40a068175@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <30ae8892-3332-7fb7-273d-81f40a068175@intel.com>
X-ClientProxiedBy: BE1P281CA0023.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:15::10) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|PH8PR11MB7966:EE_
X-MS-Office365-Filtering-Correlation-Id: 03ef33e6-fb0b-4294-2d90-08dba55fc328
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wJS6wNV7+jjjVRUx0SIqs/Y2l9zgSBmJcSEDr9xmFh84k/DA5fR5L61vR9WtyyzcO8IKuKZleeIsFQ/M0nMYNDRGW/B+UM5DtdMUYVTyfVwpYiDq1OEqvcRtFL2H0K0JC/4Dp0ok4A76WzzV6GMx3BvEz+i/hkWmsCtLf4Y6eX1tM7oSVhHufBrL51d884/h7q97hjXNSgz6EtKVFe/CGvqcBQlr3Lgufk5/wMDMIlW9rXwMdLZNxZqJOlvJqK+c/LlAeVMP4He/J1BAP3L/lhgtWAhUsTTsrTRswj8RH14tIYYnAxZ+mlKwOptygTeOy0ga34sppmZwM8o9mxTfeHzCTGb8mrjIZ59qOooPFG4fOkE4s6XxUgooS1pON6QonP1c35tT8niZt8o6Il8LYcZX77mWgMadLHeIzZmMfw8XrcZwWX5wmLh7CVtvMQPqAZb17XnMTlC3gZ8OqJCycfw7vqwKdkCqxA7F1lN0hGpy+ob0pETw14CQZai5jU3jGQb3WYH87tH9iKlhKWS9nwmo2pk9wNHt3BVzT1VNE9vbsGNYNRH2Xup1tijbUuS6LnvMS6AiCZu0roI9n9WjE7hUrdt8e6wDNIHZtVHEfRj7tROtTOt6bOMRj8agOM78BflGCE84Vqer7UlBV0aN1A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(346002)(366004)(396003)(136003)(1800799009)(451199024)(186009)(82960400001)(38100700002)(66899024)(8676002)(4326008)(8936002)(6862004)(41300700001)(31696002)(53546011)(6486002)(6506007)(316002)(6666004)(36756003)(66476007)(66556008)(37006003)(66946007)(6636002)(86362001)(6512007)(26005)(478600001)(83380400001)(31686004)(2906002)(2616005)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QTN1ZHQ2TnBrWTNFUThWemR4Mjk3OS8wdVpaaVRQTDlSSEZNNVJ4K3F3N0U3?=
 =?utf-8?B?b3FCMkZYWGprVGJTK1ZReTNzS09iT2szR0o1ZGxtQ1piM2IwQ3A0OGZiSk9F?=
 =?utf-8?B?WllqdzdNZkpnaks0eDY0TjlOckJtSXkwZmJiZUNnYkxBVTkxK1AzZDAyN2g3?=
 =?utf-8?B?dFgzTjBCRE1qUGhNOXo4Ri8vN3FTSUNRQTh6OUFESTF6R2ltcnpPSkozNjIv?=
 =?utf-8?B?elI3aHlINGlYSjJsQS9aQWpoOHdvQnVqeXMzN0xTQUpMdG1iR1kxZndob05i?=
 =?utf-8?B?Z0lmUXFBTU9JVzQ4WEE2dC9iWmxoMElIMHFxdytDMEhVS1VWQnM0MGR0eVlP?=
 =?utf-8?B?YWQ2cmNPaEZzQm9uY2xDZEpCakJCdW9LRHNhYnh0Qmp2YjRuSU1ET2RYZ3Rn?=
 =?utf-8?B?bU0xcktDdXcxN0gxbDlSSnVWRGxOMjVEbUxKbmd2K0piZndySEZMTmIwMWpF?=
 =?utf-8?B?NVlFZys3Ty8yVkJmclp0ZWg4emJkZG50SlhIanpQK0hCenJXRlU3SUcrNnkz?=
 =?utf-8?B?NDBLNCtBZDJvK2pQdmhud0NacWNEUUd1ek5LdGxzR2NUcjU2NE9YRExCK3Fh?=
 =?utf-8?B?em12UTRFRjIzVUJGRlRRT3o1YkJxd3dpN2JXWC96UDZXbHM2Y2J4UWZ0NHow?=
 =?utf-8?B?Z0lPbjV6cXVsdmpucmJZWW5MT2w1bDlyN1FWeFhraVV6Z0RzemRHclJYVkVE?=
 =?utf-8?B?QjlmU2g2TkF0aXBnaDRjM3IxZ2dZajlDTTdrL2QyendUYlBPM2NoUjkySDQ3?=
 =?utf-8?B?WHBDRFRGZUFCY3FLL2Nvak5YTmV4eGEzRFQ3b2xVanIrSVd0SzVsMDQ1dy9J?=
 =?utf-8?B?RnYrMXJQbDNZQjNhSnV0NjFiWHo2VzdoZFR1Ylh6d29JTXNkTlo3elJINTdL?=
 =?utf-8?B?T25TS0JTK0ZpbG9RaDJwaVZFR3NkWG9UbEwwY01zVTRjQlBIK2ZCS1JaNUl4?=
 =?utf-8?B?aU8yU01IY01rVDBpL1oyUTU3TTdEQXBROEI3ZHpMUGM1NWl2SFl1YnFzRi9h?=
 =?utf-8?B?bmFHRTJ6ZWxVMy9JdGxhL3M2QTNhMVVMSzNpL1RHT0dxNVNTSmZyZENweTlZ?=
 =?utf-8?B?Z01iUHB6eE92aHdEdkZ6cldWNDVkT2tsaHpuelhDVitsa0xQb2xJelU1c3NK?=
 =?utf-8?B?SU5VQlRnbXpCSXo3UFdBelBVdEp5eUxDc21sNVBqY0JVdHE2RlMzNXJQR0hk?=
 =?utf-8?B?RlBzcGw2Tkk2M3lTbXBSMWJPc3FVRjArbDJsMWk3ZTdnOFJlOXJHcnlwaFJC?=
 =?utf-8?B?RmFUS0R2SXpCOTM1NWtEUC9aSi8yR2t3UXhveEZQQW01N1MzVXdUSmE3WDht?=
 =?utf-8?B?amFJWHRDMGV5RlBkL0xuZ2I0T1NwQVhscEpVbnAwb085aFFCSGo2MjRzRm50?=
 =?utf-8?B?c1ZNRWYwYXZTVVlOcUQyKzZGOVBGUWJSUmJhSkxjZG51M3o5cHlmeW5qekxn?=
 =?utf-8?B?cXBGQk5aUTg4am4vcTEyTG0vSlROUENXQXhsMFdCcnhFT2xmb0JuL3ZQTWY5?=
 =?utf-8?B?UTQvOW9FR3pUU21wSlgxazViQzU5OWlOZXBtV1dNYkJJdktGRnUyVnpWVHh5?=
 =?utf-8?B?dnNTeVZtbmtHRENQbldQS0dRb0xYeHN2emhoVmVtOEhmb0xsN2daSHlxOEZ3?=
 =?utf-8?B?RzJMREp4VnNSejIyREF4ZzNOWkJhS2R6UHliKzMzTThrbFZCQkJLYUQzYTFH?=
 =?utf-8?B?dmR6UTV3VEVIMHY3N3JRTzVqZXpyamJGYzMyZ0U3TFdnbDE5STY1SlpEUStp?=
 =?utf-8?B?RTdiSVVSRS9NcWsxeDZHdEtiRjhYbTZFZFN3dU4xY0ppSTFrdnBkWno2UDdN?=
 =?utf-8?B?YUFGalVKREpSaXFVckphV3VZRjE0NFpJeFpJRzdOWG9ObGFIYlJrdm1wVlcv?=
 =?utf-8?B?VitIb0FXWXEydEF6Y0hQMXVqbXVtWDF5ZFkzNnN1ZHVJTjN0ZkpIUXlyek9w?=
 =?utf-8?B?VVp2K3R5VDZxOUU4L3VlSVFnUjVjU1FMaFg5RWdXeUNacFhWOGJibW96S0x2?=
 =?utf-8?B?VktiTjVxUy8rWDFuT2o5bXM3OFFjZURuSHRIQWw5VkdqbUpXQi95SURheFFL?=
 =?utf-8?B?MVV2emJBT3EweHIyY0plb0VWZS9wN3pweS91UWlaZmZpdi95MGJlWTlJVzRX?=
 =?utf-8?B?K01WMzB3UThISUEzSEJTRG1vSkpFbExEeVhCME1VNytKNWJqTldkcHhQbmNF?=
 =?utf-8?B?MGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 03ef33e6-fb0b-4294-2d90-08dba55fc328
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2023 11:38:12.0060 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SRaB9Drp9MSaB7PaQuizShi7GD4/9Wz2i+h+f3UQDCOC8Jo/3dNgX5mI1wNc6aD0gIHr875LQXPEUiUDQ/11H77hmGDZOSkFzS4EuojVDzI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7966
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692963496; x=1724499496;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+f3qUFqDZdLuGpyUPl0846dsllilUSzUdexBLA2DgWQ=;
 b=Hg7HrnMR+rcLhjsmo2wbh0nUnM9A+xKFnRuCJzWE1hk/HYD1ohRXijP2
 3uR76yhfphmOszQxLqlgtXEqFm0NOAVuml6ZZlpFxDrNrXrQRv7AmTzAe
 W52yllYlKh0KBJ3nxxbqAsVGIhrwvKHwPUoonJg7P9qlwjUj5vMm9O3XW
 cTh3hVBEsI9091WIuGchSHsGOxerkkVUh80Bo5swhzcbzMdLEAHfCBXZL
 FSu5mdRupCJyWs/u9DYkkz3qPmsd5Mz7JbCvrkbUMIEd1B1jj+ND0Vh8B
 DFlnxuRV5LlIhu6XX0MyEjogvTRxdt0flRuKdYG/RSHWhQ1Olhl9G168X
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Hg7HrnMR
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQWhtZWQgWmFraSA8YWhtZWQuemFraUBpbnRlbC5jb20+CkRhdGU6IFRodSwgMjQgQXVn
IDIwMjMgMTQ6MDg6MDUgLTA2MDAKCj4gCj4gT24gMjAyMy0wOC0yNCAwOTo0NiwgQWhtZWQgWmFr
aSB3cm90ZToKPj4KPj4gT24gMjAyMy0wOC0yNCAwODo0OSwgQWxleGFuZGVyIExvYmFraW4gd3Jv
dGU6Cj4+PiBGcm9tOiBBaG1lZCBaYWtpIDxhaG1lZC56YWtpQGludGVsLmNvbT4KPj4+IERhdGU6
IFRodSwgMjQgQXVnIDIwMjMgMDY6MjM6MzcgLTA2MDAKPj4+Cj4+Pj4gRnJvbTogSmFjb2IgS2Vs
bGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+Cj4+Pj4KPj4+PiBUaGUgaUFWRiB0eHJ4IGhv
dHBhdGggY29kZSBoYXMgc2V2ZXJhbCBmdW5jdGlvbnMgdGhhdCBhcmUgbWFya2VkIGFzCj4+Pj4g
InN0YXRpYyBpbmxpbmUiIGluIHRoZSBpYXZmX3R4cnguYyBmaWxlLiBUaGlzIHVzZSBvZiBpbmxp
bmUgaXMgZnJvd25lZAo+Pj4+IHVwb24gaW4gdGhlIG5ldGRldiBjb21tdW5pdHkgYW5kIGV4cGxp
Y2l0bHkgbWFya2VkIGFzIHNvbWV0aGluZyB0bwo+Pj4+IGF2b2lkCj4+Pj4gaW4gdGhlIExpbnV4
IGNvZGluZy1zdHlsZSBkb2N1bWVudCAoc2VjdGlvbiAxNSkuCj4+Pj4KPj4+PiBFdmVuIHRob3Vn
aCB0aGVzZSBmdW5jdGlvbnMgYXJlIG9ubHkgdXNlZCBvbmNlLCBpdCBpcyBleHBlY3RlZCB0aGF0
IEdDQwo+Pj4+IGlzIHNtYXJ0IGVub3VnaCB0byBkZWNpZGUgd2hlbiB0byBwZXJmb3JtIGZ1bmN0
aW9uIGlubGluaW5nIHdoZXJlCj4+Pj4gYXBwcm9wcmlhdGUgd2l0aG91dCB0aGUgImhpbnQiLgo+
Pj4gVGhlIGNvbXBpbGVycyBzb21ldGltZXMgZG8gdW5leHBlY3RlZCB0aGluZ3MuIEkgd291bGRu
J3QgYmxpbmRseSBob3BlLgo+Pj4gVGhpcyBtZWFucywgSSdkIGxpa2UgdG8gaGF2ZSBzb21lIG9i
amRpZmYgb3IgYXQgbGVhc3QgYmxvYXQtby1tZXRlcgo+Pj4gb3V0cHV0IGhlcmUgdG8gcHJvdmUg
dGhpcyBjb21taXQgZG9lc24ndCBodXJ0Lgo+Pj4gSWYgdGhlcmUgYXJlIGNoYW5nZXMgaW4gdGhl
IG9iamVjdCBjb2RlIC0tIHRoZW4gc29tZSBwZXJmIHRlc3RzIGFzIHdlbGwuCj4+Cj4+IE9LLCBJ
IHdpbGwgYWRkIGEgYmxvYXQtby1tZXRlciBpbiB2Mgo+IAo+IGJsb2F0LW8tbWV0ZXIgaXMgc2hv
d2luZyB6ZXJvIGRpZmY6Cj4gCj4gYWRkL3JlbW92ZTogMC8wIGdyb3cvc2hyaW5rOiAwLzAgdXAv
ZG93bjogMC8wICgwKQo+IEZ1bmN0aW9uwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9sZMKgwqDCoMKgIG5ld8Kg
wqAgZGVsdGEKPiBUb3RhbDogQmVmb3JlPTEyMTY2LCBBZnRlcj0xMjE2NiwgY2hnICswLjAwJQoK
QWNrLiBBZGQgaXQgdG8gdGhlIGNvbW1pdCBtZXNzYWdlIHBsZWFzZS4gQnV0IGJlZm9yZSB0aGF0
LCBwbGVhc2UgY2hlY2sKdGhlIHNhbWUgd2l0aCBDbGFuZy4gQW5kIGRvbid0IGZvcmdldCB0aGF0
IHdlIGhhdmUKQ0NfT1BUSU1JWkVfRk9SX1BFUkZPUk1BTkNFIGFuZCBDQ19PUFRJTUlaRV9GT1Jf
U0laRSBhbmQgaWRlYWxseSBJJ2QKbGlrZSB5b3UgdG8gdGVzdCBib3RoIEdDQyBhbmQgQ2xhbmcg
b24gYm90aCBvZiB0aGVtLCBzaW5jZSB0aGV5IHBhc3MKZGlmZmVyZW50IGAtT3hgIGZsYWdzIGFu
ZCByZXN1bHRzIG1heSBzb21ldGltZXMgdmFyeSBhIGxvdCAoYC1Pc2AKaW5saW5lcyBzdHVmZiBs
ZXNzIGFnZ3Jlc3NpdmVseSkuCgpUaGFua3MsCk9sZWsKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
