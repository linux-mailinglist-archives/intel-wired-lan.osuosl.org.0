Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F567CC9F6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 19:34:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 41ABD821D6;
	Tue, 17 Oct 2023 17:34:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 41ABD821D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697564043;
	bh=FAmKZZI1azJgQSU0WDTq9cOrUyZ/0URS8NWpznVbXYs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=o6lFttS8yYbYYTv78ST/0v184CHb4qqYr8Q0/wZsuB68c8VU8gvqtctP52Lg8hOLV
	 5bqU/rK/ULGSo52jjnZy1B8hSlB6fkA2JdM03ZlBwRnA7VEyabFny4Eou+nLSwK3Bw
	 7xxKrW9PLgJPUfHI1AhiigWIwiDeGv76xzLGz2cr2vEUen/iaITuOj7bleHxcpf4wB
	 jUNjOtB9pX7kQFCJlTFOyDflJB75AdCAQa2MEXg5U8VhkQPFw60YnhVJyU0jSKkuA5
	 v7Vu/WsKCTWueArLQs91FKezEMP7aroRTTZYr4JZiSWGrWzDAdTvxJXGDSQZQRTAOl
	 MNYh8SwUPtMjg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fueydTB9CCuD; Tue, 17 Oct 2023 17:34:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22452821D2;
	Tue, 17 Oct 2023 17:34:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 22452821D2
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 980061BF32B
 for <intel-wired-lan@osuosl.org>; Tue, 17 Oct 2023 17:33:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7C2A541E9D
 for <intel-wired-lan@osuosl.org>; Tue, 17 Oct 2023 17:33:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C2A541E9D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FQZ4gKm1HAWF for <intel-wired-lan@osuosl.org>;
 Tue, 17 Oct 2023 17:33:56 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A555241E9B
 for <intel-wired-lan@osuosl.org>; Tue, 17 Oct 2023 17:33:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A555241E9B
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="472069040"
X-IronPort-AV: E=Sophos;i="6.03,232,1694761200"; d="scan'208";a="472069040"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 10:33:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="929841391"
X-IronPort-AV: E=Sophos;i="6.03,232,1694761200"; d="scan'208";a="929841391"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Oct 2023 10:33:50 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 17 Oct 2023 10:33:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 17 Oct 2023 10:33:49 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 17 Oct 2023 10:33:49 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 17 Oct 2023 10:33:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TfqLwU5jXCEo4+nth6K+8KgoAVjOlzIB48HB6NpUWiOjVY4maKxcgMWxikFg7t+5RwvTZ1JIa42uN1n/wOtyswEPmFUMb0NAYWsKErgEs2x1A8t3UDR1Y5ZpTD3YWO8KZr2Hj8vXEZVlfV2THrVRFQMzPG9oIftk2a2eiL00D1dJ9kRM/8z//obVSOSdgLciP/FUhY8LU5mBnnJu3aGzHq94vcJ3WMS8xMErAVHuHwMkWefAP1DKxXnvz6BREvuUSwgWHC4o9rv988d0VJmvazw54pXTHc8iy0fOI9rYbWIrcdJYfqReoi3HpwrLFSkU8JcBOMk69JQ7v0gcbA10+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NFu03f/KKIBMqbfwySYiJPRXeav/yb7J0PH0/3P6apY=;
 b=ZffxAKNZDn/wlEQPjBM/h+qsDFUDdXmfshM885Ip5cvTfQ4TQY8b/cBAW3Xb7KHEnp1gFvx1c1gu61/SDKBJr4+h8NU19Gxy8sjWwWUgYv8DmU231qSIZEhhI4PFPSTdWLaTP2GvhKh1OlemrewQ10fL5+LqIIMM8zsQo3SYXWoBNKBe8zcCns6Sqcm6emqNT2iZmi6sOYnGpy32l0dOymqMkV3vqJhnHSTyCaIj36qT8vhSBJEba/oPYXdNUXWZvzyBdFi8qRaDYSmA71YspcqK/nr1ooxA1WJuQwzTnp+2P1ajDvW4KGoBAFV6qd8enCAzjU2MVqpIHIyVrwLhGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CY5PR11MB6416.namprd11.prod.outlook.com (2603:10b6:930:34::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.21; Tue, 17 Oct
 2023 17:33:47 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4%4]) with mapi id 15.20.6907.021; Tue, 17 Oct 2023
 17:33:46 +0000
Message-ID: <957a0b7a-4cbd-4333-af83-1c7750452316@intel.com>
Date: Tue, 17 Oct 2023 10:33:45 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20231016164849.45691-1-mschmidt@redhat.com>
 <20231016164849.45691-3-mschmidt@redhat.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231016164849.45691-3-mschmidt@redhat.com>
X-ClientProxiedBy: MW4P222CA0014.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::19) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CY5PR11MB6416:EE_
X-MS-Office365-Filtering-Correlation-Id: 8f49a168-76f1-415f-a48f-08dbcf3737b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VkMQBFr01Gkgee8U/b6kc4IDtGGvsSl2T0Bb1Ar7rNlbVZK8DjeFQSqnoTHIK99DIOkI728wrjdwF10nqmycQE4MwaRssuBgSwja9uhCMTUign64/3yjBh+grqLPwmyNwkzAlLTNAHvdIaJFD81fiAzxhnYywEXS7LGDe4cgZrMfzhx+jXGVr9tPlX2sywIhLLG9KQ3dQy3cTzFMIw3wJsfXrIP6aqjH17zndUdozu6X5vhwhgPcg2MF3eDvfzmb07pfZo96DeDcjtVvm360Ia17aZlnTOB2szBlfsNGIPjDrDQ8SWeOXZg7uasxDynwpF30CmWxnD8CQVBMMExdk5tSfRR8acVOZY4YwKxSquHb/crtY0+CKTPW383tNE5mxo0dpTU4Mousc9j9mJ8JY2U4aokkqvgukhrFQWyv9rqCdfzhGcnNohEoKo1Tslb9zbMU1esJ0jOhrtTIuNzWjRuCBR6EO4dKvf2pGxfAeTFJ3wyD2slkSwivG46EviBPSkaEj/3pXj1CbdZU3Sr++kXmnOqPoHeF4Eox9qN1EwRDhW+zgSnW7qGl7+oanrOKOBW7efZswpRv31s8sqMZZp5roEBG1vxfBEUmSYcloSzlMCPeA+wKtuzc8RfEW6vOXLE9Gw/iBwEasERfPHaYvA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(136003)(366004)(346002)(376002)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(31686004)(6506007)(6512007)(2906002)(5660300002)(8676002)(8936002)(41300700001)(66476007)(66946007)(66556008)(6916009)(316002)(6486002)(478600001)(53546011)(2616005)(26005)(36756003)(83380400001)(38100700002)(82960400001)(31696002)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TDNwQ294bVBVdlh3YnFoRUF1dUh4OXQzN213TU4vMHR6Y1lMWTFzNld4NHcw?=
 =?utf-8?B?ZElzbHVqWkd0UmZvbkF2emhvY2hhTnNlQXhzc3VxQ2g5Tzlyajh1a2tLWEF0?=
 =?utf-8?B?aTJIRzJOcHVYcE1yZ0ZZa2RXdTExVUI1aC9VQmEwQW52c2ZnRWppNHhiTCs1?=
 =?utf-8?B?U0JpSzJGRHdKTjV1NDAyRnFNNlp6OG5vd1pQV0FmQXIwNWgzTzErcU41Nndw?=
 =?utf-8?B?L2hDR25wWU8xSFNMVDhrMm9OeHlOSzdnV2FCRHRaOE9WS01VNlBKQ2U5WVpp?=
 =?utf-8?B?MHFVZWZEN3ZYSzBJSkMwYTYra3JOK09QSmV5T2krV3Q3cjZiRG12MkdtR2Ex?=
 =?utf-8?B?Q2tpV2ZYQ0dGNStsS1B3RG4rQW1oNFp6OWVYSHdlS3FoY3dJazl3bEdDSUhT?=
 =?utf-8?B?RGx3UXI3dmNaR3NhcjhRUjE2TzZWdklWWnR0QTd1SnlsbXV2cUl1Qi8wRHd1?=
 =?utf-8?B?Ri8zamdMSVF2MWw2RG9RalF0Qkl3eUd0NjFyZWJORUhVdUJUdFJpNDhYOHAw?=
 =?utf-8?B?VFgwNjd5YXRCR2R5QWJHTjM4S1ZJTlZHTSt1VWduQ1Q0R2VUT1U3MnFOZEt0?=
 =?utf-8?B?SW9pRUx1UTJDcjE5U0pSVzlOVHRwYzN5dFZUUloxbDA4LzZHUlpoWWxybk1N?=
 =?utf-8?B?YVMzSkVHZUJtZ1lHWXovS1FnQlpyUkZIRVdJSHdqQzVMdmVhb3JHZnZ6Tzds?=
 =?utf-8?B?RCtVb1NJRmxvbHUwUnNoNS9OamxtbWJPNXRiN0NldVIvSU5NanVBVVBwZHdH?=
 =?utf-8?B?ajh2ZmNLRTJNWkQ0MUNTQUFqNWt1VHRlSk9HTGp0cENScXhyZjltaVdyMk1W?=
 =?utf-8?B?YVNnSTVzOEtRVTU0aXZ4R0ZyRFN3M1VXSzNhREZibzg4VmpUUXovMGZiZlRS?=
 =?utf-8?B?Nlo0VEgvczRPbHhkbElsQjRVby9YQWNQUHZGRVhBOUZyZ0FxWnZDdTRlejFv?=
 =?utf-8?B?MkVHTWVXQ0xJVWk2a2pHd2NPbmladTlMbkpqazJuZW1nRkU1SjloSUJZcGRV?=
 =?utf-8?B?MGIyc2dFbVZjamFOZjQ1Y3dDNW5iNTY4Q25rMDhsb3NjZzhLRG1TMUhSOFVr?=
 =?utf-8?B?NjhSSW13QXR0TnpiVFZTSGJMZFIxQklockFpdlFaK0RSWnZJY0NVQUlSQVRx?=
 =?utf-8?B?dDFJZ1NjMnp3WExGcFNWd2V3NDl1c3JEbkJwRmI1TURNS3lXVVl1NE1zL1FC?=
 =?utf-8?B?bSsxWWluTW16Z1BXbWN1SGRjTEp2T3NJdmFDSHZGOXpwd2NIRDJSd2tkUWxt?=
 =?utf-8?B?elRkRk5MaVJ5VWdZcTBaR2NZVWVoU2padXR5bnZmQlZSL0xUUWdUZFNiellO?=
 =?utf-8?B?Slg1WlZ6Z1lzOXVEMWZ6c3Y4dGRSK3NYM1J2c0tBT2xpZGw0aUt1NEVJaFM5?=
 =?utf-8?B?UjdhTXdKY1pNV3hPVEZueXliWDlrK2tMdGNRMmVGaDhSQ1cwL1FkRlY2ejNK?=
 =?utf-8?B?MkFhSkFOSExheks2UXhyMnUyUHk4Vm5NdmhjWlJXSUFhMEMyVmh3QmptWXBU?=
 =?utf-8?B?bWd1SW5PNjdMYmo3b2hsSE9XZDdoMnF5dmJaWHRubUMxTktZcDJzSG5sb1ZZ?=
 =?utf-8?B?cmJNdjZ1Z09vRTNxZ0V2R3Ara0FHYm92VVkrcWZGanJxK1oyTW9GMkFack94?=
 =?utf-8?B?alhMbnQzdk9RaXhlUGY1bEZEVm4yVUtNM1FTa01NL2s4bzZESHhmWjVmTmhu?=
 =?utf-8?B?em9PWE1YM3FMOUk5TlFUZGRnUlRzN3JqNStKQ3pZeUhKS2hsK2xGQlIwNmJI?=
 =?utf-8?B?Zi90RjFzT3VTamxidE9JMTZiVmNIYVhiSmcxVTUwN2dQRUpia0thUzhnYXVD?=
 =?utf-8?B?TC92Sm1rWXRHYTNPczZZK00rY0tRU2tPSDY5Z1ZWNnVYeEoydWlQamFKems4?=
 =?utf-8?B?WFlRTjIyQmpDcTU0VmhHc3dETk9SSjg0R3cvS05zYVlVQ1RYMlRvN1hTQ05h?=
 =?utf-8?B?TjdMaEp4N01VMTFDWXBqc1VMcmwraGYwdDM2WkhtVERsTUFKR3dFYVRhUGl1?=
 =?utf-8?B?MEhaODQ5WElRR1loR1ZTUG8xMFRrM0xlZG5nM2E4cDJOSkxRMndIVGdZMGl0?=
 =?utf-8?B?RDlvaUM3Y1lVOHZTeWJBeTVUN1hCOEZVRnhxNHRiK0d6THd6N1p2OURiVVVh?=
 =?utf-8?B?eFkrc3ZOcyttU3pUYXkraFJ5bWNQSElQRTB5dTJ5Q0ROTlV5MW1PK2kwZjVD?=
 =?utf-8?B?ZFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f49a168-76f1-415f-a48f-08dbcf3737b6
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2023 17:33:46.8551 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PEdHEkBPjjRd9Ob44CMWr4QCVH/1Di+NKTeYpXWj73J+Jxk7Gr1guNPR0yhJg3oGqMe/PpcRwY6SMrUz6T++6UKueMYs+VMoOxxdyKrxpSM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6416
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697564036; x=1729100036;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DSB+XeatetRNnh17PGhZVBA31RmOAL+8XUfXO7S9JwI=;
 b=f4AcLejUxEXyHaYklCDfPmVo723KgINs01kgNfdVlx2vAtKgV/tYt2tH
 UCHAsP+cBqynaWlVqYwxdUhasK87oO3LIjF8dH+hXblOrEQBl5tSj9Tds
 bFk8pkbLrJlkPcmATBZIrvoc86tClN2uE/ehfz9sNW8DDDdzhvks5i1zK
 qsVHF6X4in+UbfRKtyNT2D1r6amV4PXjWM5RyeVwATZx/5Ujoojfo+BtC
 FXHeU2Oz/KUcuNCLaJ2CptkbNWKyCKgU4z6riqyv0IcByIlsOLUJg0nXI
 1z2PXg+Jmc2G7Tla6cjrCmpis1uchzn2xhUQXDTE+DU1TOAUQYYMHntIJ
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f4AcLejU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/4] iavf: use
 unregister_netdev
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



On 10/16/2023 9:48 AM, Michal Schmidt wrote:
> Use unregister_netdev, which takes rtnl_lock for us. We don't have to
> check the reg_state under rtnl_lock. There's nothing to race with. We
> have just cancelled the finish_config work.
> 
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

>  drivers/net/ethernet/intel/iavf/iavf_main.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index d2f4648a6156..6036a4582196 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -5171,10 +5171,8 @@ static void iavf_remove(struct pci_dev *pdev)
>  	cancel_delayed_work_sync(&adapter->watchdog_task);
>  	cancel_work_sync(&adapter->finish_config);
>  
> -	rtnl_lock();
>  	if (netdev->reg_state == NETREG_REGISTERED)
> -		unregister_netdevice(netdev);
> -	rtnl_unlock();
> +		unregister_netdev(netdev);

This appears to have two tabs still, and thus be over-indented, as
unregister_netdevice was indented twice due to the if statement.

I can fix this locally when applying it to Intel Wired LAN dev-queue.

However, if a v2 is needed, please fix this when sending.

Thanks,
Jake

>  
>  	if (CLIENT_ALLOWED(adapter)) {
>  		err = iavf_lan_del_device(adapter);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
