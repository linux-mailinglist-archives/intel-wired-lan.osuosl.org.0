Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 457E8672B3B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jan 2023 23:22:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C9CFB821BF;
	Wed, 18 Jan 2023 22:22:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9CFB821BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674080576;
	bh=igpnl7xLpKu1ml8ffRPQjGQsWCMgZ9Rg870JIiwzjFE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qDBlMlME2fZpwJBMoa/45iRZZq86blXT9JEuiScnlhlJEjZkn4J962rAZyG9RXNL7
	 MBIM4g5JAOGPsyP83FKiuQea8XYWxv+oRke+3zZE59wccCpTOGPggpyU/QwAPnDJBA
	 6MKeLnYIRcTR14CVBeoEp01YoqC5ff+QPStl6CC9YtDnxXahQOyPxV48Dz+sFlKhro
	 9wKG01SDKzUtgQmRveO6a3rb3AXRXxRNw9ujKe6KwbRsgGNAMsJwvB+dac1Kn/cTe8
	 ogGXEp5CmG8ksWYY6ezfbD0ztQuEDuhiU4Dw8UBRU7D1ocDoUEY+ByJRKYl8AojZjJ
	 vlChlJ9imTXbA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 83GBznbRWLdL; Wed, 18 Jan 2023 22:22:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D1F4B821BE;
	Wed, 18 Jan 2023 22:22:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D1F4B821BE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2B9641BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 22:22:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 120DD60F5D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 22:22:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 120DD60F5D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5dyde1-hYKl4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jan 2023 22:22:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 422F460A9C
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 422F460A9C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 22:22:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="308678972"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="308678972"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 14:22:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="905286856"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="905286856"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 18 Jan 2023 14:22:49 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 18 Jan 2023 14:22:48 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 18 Jan 2023 14:22:48 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 18 Jan 2023 14:22:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Od4vvsnFipR7FLfDtnCyd5wNSpqPa5wQN1j5zxdXxGqYCpryIzDfAQK/jWhDywxOT8JAi8JW0Ivtim0r9IQJnRGaSMj0RigKvcD+PziPMrNDsqT2iBpn1UFrzDWbA09U+ETdabjSU58w1ai0RCqSMGf+rDzdCI2Jb9oRaquWPVI3WhTtA5IL/JNYUJTnFEQPK6+14+3bB32N9PWtlfMlY+OsCsy2eelPfjxm4B1lEFJcsqDM+bc6xZJNSTC18HSZBSYqaawJnnQlpXAHVToZV2lC/LbuDERlDjrh3p4BnqGu6qFQK/ORVVWc+9BH1kuRP64CcKhwgLDT2DGX0X9slQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dgMEfgqa4vjCFW/hqagYCZlk84x7paAl9J0J1Yz622M=;
 b=EASkHyxb5esPqwg8KKUhLjoc+B5Ey6Jk+wiqjMEdC95Mli6QnfuhFkpnsn2HI6c5ywNXRV5UgKeBSl8U4J5/yvLC2QSz3LhKxJ2v5WEAuHw4iiPl4IAOoEb1Umnsu/bxoXbeKetviaPor0SE0J5pbd2QJSwjn69uTiLI44Exk21UQo1Pi3FALV8J+uDJ9ba+kuiMV8kCcRdx9lEnsdOShhoaP/XYDRlnmQalByuwGWh2PmulYAhboqoO5daHOjJ81sx5QvUAypYjJa4+dh2teTUePYsLbLae9q4eQaUN75R57jKLylJ9hvdqT0d/5icEup/fTVojzmvbCa+qiqMC+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CY5PR11MB6343.namprd11.prod.outlook.com (2603:10b6:930:3c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Wed, 18 Jan
 2023 22:22:47 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf%5]) with mapi id 15.20.6002.024; Wed, 18 Jan 2023
 22:22:46 +0000
Message-ID: <820cf397-a99e-44d4-cf9e-3ad6876e4d06@intel.com>
Date: Wed, 18 Jan 2023 14:22:43 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Daniel Vacek <neelx@redhat.com>
References: <20230117181533.2350335-1-neelx@redhat.com>
 <2bdeb975-6d45-67bb-3017-f19df62fe7af@intel.com>
 <CACjP9X-hKf8g2UqitV8_G7WQW7u6Js5EsCNutsAMA4WD7YYSwA@mail.gmail.com>
 <42e74619-f2d0-1079-28b1-61e9e17ae953@intel.com>
 <CACjP9X8SHZAd_+HSLJCxYxSRQuRmq3r48id13r17n2ehrec2YQ@mail.gmail.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <CACjP9X8SHZAd_+HSLJCxYxSRQuRmq3r48id13r17n2ehrec2YQ@mail.gmail.com>
X-ClientProxiedBy: SJ0PR05CA0066.namprd05.prod.outlook.com
 (2603:10b6:a03:332::11) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CY5PR11MB6343:EE_
X-MS-Office365-Filtering-Correlation-Id: a9ae69c7-656c-4904-2634-08daf9a286ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SN61NyIIJ3RBF+j7h124syd9BltnPPGJyySlfyi8UDCx/c8ReeYxi8IvKtlV1qp9xG6W8TWMLcFjGxGvkL8N9Gjh2j6Cj7KonzbPYirN8KpWW+EqM9mXiIp2zL0oZkz8pKacSWaywOP9Db3kKa4Nzl1PjhdkKAEOixgytUlk9D7yNlZpgUXc/hvkp0QGkdzXKdXB+xdZ6VHGcC7k2mWWm2jBse5/3NDkr39X9gkIQdWWAkXIx0ofno8hOe5TmOyFt7PgLKC7I/ILS0pSWOsAkQjmkoUXn9NdTla7Ad2uTpr9Z3DpPg+DDyjKW0mKkHGUVZSxR0UcPL318Lr0361Hn1XPJ1Ca69KbZ86HpzAYgQW4lNmLdKsYtBnLOvp9IEhwUmXiqUzUsIed4g4lqJWHH1KT/ndg0gNF9YvDJ9If2FsyDf5kTb9nOl1/VPV5KLUaxvys+MyeRsCbpAcIh9o4FsghuER1aytQuxFpUvURI1L/ETEGzTcfBHH+KHVnCydNEdrFnUKYjhkliKE7A8Bg15twSBfEYMmhVjsfzCdThHfhJClorw7DS7BrTHYKDj5v0p9m+H9g12ooRdsw5FkYbJ+wLGD6o3aeI9Tm/NEYfjSCXtmeFi+uTKyVFwQLj7VKOaqvdSKKyEhbCF7hFAJX5ZjBKS10BZLJo8ujZ5ftdm39eHL8diR16+W8XCF+E5Vtf/4mcLO/+ompBFqzZYSMoD069xZ3R+YQmSXnm7H3/Ss=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(346002)(39860400002)(366004)(376002)(136003)(451199015)(31686004)(26005)(478600001)(6486002)(186003)(6512007)(6506007)(6666004)(2616005)(53546011)(316002)(6916009)(4326008)(8676002)(54906003)(36756003)(8936002)(41300700001)(83380400001)(2906002)(66476007)(66946007)(4744005)(66556008)(38100700002)(31696002)(86362001)(5660300002)(82960400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cDJQdVZTQTB6bCtlakc4azRYQ3VBc2JXYWtZaWpmZHdLa1I2Tm1jSG15TGNa?=
 =?utf-8?B?c0NpaGdseXBhWW5EajFlai9zWkR6a3Ria1FRekJkb2pwUmZFc3hwam9ieVB3?=
 =?utf-8?B?RGhTbWE1QUpYY3JOdUg2bVNvTEZlVXFoYUVpQXdpcGcvSHlqSnNtZDZoZzQw?=
 =?utf-8?B?dTFGVmZML1JBSHlJOUdTTEw4bGdKSkRpRjZ3NTJmNTI5SmRxUCtWaUVyTHd2?=
 =?utf-8?B?RzVCN0JUODNvcjQyRTA5SlpaUFJxQmpidEVJZzh5TVh0SnZTaVBCdUNYcjZ1?=
 =?utf-8?B?cmswbG9TVTdQSnhxMjk2Y2JsT3kyWGM2Q3dtR1lkamFOVVEvWjNSMU9sQU83?=
 =?utf-8?B?cDlRdFMvQWlMRlorTFRFMnJEeTl5SzRObnNicTUrTHhNZ0t5UCt1UUdoS0E3?=
 =?utf-8?B?Y2ptYXFkZFlCbUhyMTM0RzFGTkNtd1d2ZDRybklGRDBhc00rOVcxaXJ3N3pr?=
 =?utf-8?B?L052NFAxQkZrVXNCQ3A4Y1pHY2V6SHRYQkw2MnFULzZseWk1NDFRL2crTXRr?=
 =?utf-8?B?Qkc4VG85cllFVCt6aElocUI4SHVFWmlPZGVVL1ZKNnJOMXRjYXhxdWZ6ZlNh?=
 =?utf-8?B?MmVod3hpbnN1cUR2Z3pCZXoxdmJKUlowYzJPM3kxZE9TRnFHMGRWZWFOb3RJ?=
 =?utf-8?B?NmZNSjI5eEIzZUx4eDhkS1ZXSUJ0TGRabmgxMUxUWUw2YVNwRE9KbDByL0JO?=
 =?utf-8?B?R2Nlczg1VTU4bEFsU1lDQmR1V1dMWHYrejVaWVFLY2JFUXBoV08vdTBhUG9N?=
 =?utf-8?B?SFlGbEtSZWZ1WWd3Y3g0QVU5MGkwSUQxMDlVbnJWeWJld0pJZXFQMjY4YXBH?=
 =?utf-8?B?czdUMm0zNUx0aVpOUGNheWZwZTZSc3JERVhJQkw4NXBIOE9aVXJTdkFJZXJE?=
 =?utf-8?B?cjQ2RDdNV09sRTJRMTRFak9xUW5GdXk2czNWb1FNS0N3QlhvNEdqYlk1bDIv?=
 =?utf-8?B?UlUybkJ0dTRCKzNURVJwTnE1Tkh1NXNiaUxxU1VDY1ZkRVgzaTEyOFNvdVJT?=
 =?utf-8?B?T1NZK05TNURRT0lhUmVRTjhpMWpXYnBXMmt3TjlvcTJYU3RsTjNERVBJU3F6?=
 =?utf-8?B?dGJwazNXQTVEMitEMk5ZZE80MGdrWDNOTXBSaFNIOGFxa1lqQ0NjcjdzV3E1?=
 =?utf-8?B?OGYvMFBORGo3SFF5QzB6QnBpaCtNN3ROa2FFK3MyZURGMnkxdHRsclZ1WS80?=
 =?utf-8?B?R3h2OWVQVFRuaUd5T2V0NFhEM1MvVVRsSThsbFltOVZUUGxqTlZqMGdxd1dG?=
 =?utf-8?B?ajhEUUpLdEJBZnpBTmhIdXREbjJTZWlqOHJ2R1hXQ080Zkt2MEkxRGNrNy9r?=
 =?utf-8?B?WGl4d0swVXJ5TUgwWjFqT0ZyR2wrYUpLWk13bDZMb0FPMmYyWlYwZU04c3Uz?=
 =?utf-8?B?Y2xLcURZbTlkUHlRVGVJdU4rOWNqUkRKbEl6WkNmaGRFYzRSOFQweGF1Q3dk?=
 =?utf-8?B?SmxweUFOMDE0TU1IYmlaZXA3Vi80dVQzNmlzQVM5ZzhjWm5LM1E0blc4cWFR?=
 =?utf-8?B?aWIxSlJtZnR4T3ZFQ0ZCNEQwV09YNzlQajlJd1YxQTIwWmlQeVZQMFJGcDNz?=
 =?utf-8?B?RVBVZU9mcXl5M0VaVUNMUy83WGtJQWRwVjA1NWFBa1U1S3NlU2ZWWnZNVFlK?=
 =?utf-8?B?QzRDWERSQ2VWNHBIblVFSllJcHpuUnk5NXZCYVE5bXFROVkwM2tmWGpMNVZU?=
 =?utf-8?B?ckg5WkFmVTQzd1VmYXdnWEplamloWHZGdXhtbHhuTXp3V0FkSWlLZEcwSUNz?=
 =?utf-8?B?UFFwdEJJbGd0enVTSlVMQXBiUjUvOXRnYWNIdTlVcEFhTGxITmROdFkwTHcv?=
 =?utf-8?B?VjR3a1kvVmRNdjMxcFZueGJvUEJLT1Y5YkYwd1Y4ZWNvdGEycGNYMTR2Q0FI?=
 =?utf-8?B?RVRKQjlxQ0VKTFpLL0pZcC8zRnRnRDdLeDZxeVNJQjl5REFpbmN2MFlISmR2?=
 =?utf-8?B?RjBsQ3NyT0lDY0dMUDdVODhvSjlWSXVKNVRCYmluTElCSnJuMjdNaTMzdGpD?=
 =?utf-8?B?L3pqbjQxR0hVdGJpMXhlSGtON2hHYWxxM0VEdk8vaGhQL0RaYnJ6NkZPTldN?=
 =?utf-8?B?TktrVW0xYUc3emFXWVBNNlVsZERCUDhKQVRIUGlQbkViRTVzNWNWanNlSzdE?=
 =?utf-8?B?WTFqT01RVXBJWjlGTlhuanltZVE1UXpYckJ1bkpKOC94K2JtR0RhbFBibmEr?=
 =?utf-8?B?ZXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a9ae69c7-656c-4904-2634-08daf9a286ad
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2023 22:22:46.8046 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Xx4CDLeML8o3nUrcH2Y9HxgrjUmsjnHOVA2GmpHmtA1h+/WpkMGH7EojGJ2krrWu4z1htxenA8xjAT6RJhh2QSbd5IGmH67AP9WAGolV+k4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6343
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674080570; x=1705616570;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=23Bo2W3nsa3Pgtc807KgNFiG87ig2AIElvhg+xQmNMI=;
 b=M3ZpPmrvaJPKqvpwT4t5Z0N0DAg/kPvREl6LZ7/JBBLOTevniBeFEuBl
 slNKqQYreao9zF5VWABiF/z692RN5rjTKgmPXS59rVHZ2+M4S1Kkqoct6
 r2f0uqahUpYJ0E9oDMQMqUPRMDzK3c/HgNpapoTbEicSCj0M26gEW+Fed
 DmD5p+dUR12e/QoRbop3mDDVJTx/ZCwMpxZHZz6QsdMfZHubaJ+iUvckJ
 0Jm6X2g9HwnxSlYdpU7efniuuyE1TV4HEr5zjbyFX3rmzPhIesywnkWUu
 Qv1hYIjCLrGd3x1BPKlct0/DmBs+i6KkjeCPLewOmwxVYCs8ynNhSw2be
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M3ZpPmrv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice/ptp: fix the PTP worker retrying
 indefinitely if the link went down
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric
 Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Siddaraju <siddaraju.dh@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 1/18/2023 2:11 PM, Daniel Vacek wrote:
> On Wed, Jan 18, 2023 at 9:59 PM Jacob Keller <jacob.e.keller@intel.com> wrote:
>> On 1/18/2023 7:14 AM, Daniel Vacek wrote:
>> 1) request tx timestamp
>> 2) timestamp occurs
>> 3) link goes down while processing
> 
> I was thinking this is the case we got reported. But then again, I'm
> not really experienced in this field.
> 

I think it might be, or at least something similar to this.

I think that can be fixed with the link check you added. I think we
actually have a copy of the current link status in the ice_ptp or
ice_ptp_tx structure which could be used instead of having to check back
to the other structure.

I'm just hoping not to re-introduce bugs related to the hardware
interrupt counter that we had which results in preventing all future
timestamp interrupts.

> --nX
> 
>> 1) link down
>> 2) request tx timestamp rejected
>>
>> Thanks!
>>
>> -Jake
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
