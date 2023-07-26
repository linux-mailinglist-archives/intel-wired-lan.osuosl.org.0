Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6115A763ACD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jul 2023 17:20:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD89B6126C;
	Wed, 26 Jul 2023 15:20:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD89B6126C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690384853;
	bh=Xnt8PCi+v1t4F4tqtfCRKateusGRArb+7opbHQ9dpSA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=p1OzslF03freTgtyjctzht8JxLUEgWDmX63XWOUZM2grghWTqVpt4+thdEfDHOkeP
	 0dyV4EzAkr9Ho/kyaD1kDb7ySqu8tOvybi3j/wp+FM16XBcueKqLOGlNgH9qXFuKcp
	 4KCQhE9JEeFb0ODLEfu1bUrPkJHKy5h9OXGKvS9dcVpeQ20+Bgeu4S6apa85ZPL7Ta
	 zwBkWNh29xa9v6XYgXR4du5j/r3q5ENf0cPIt8mUbnnkJ3o4qutwSIm7HzlkNFeFoQ
	 LN/84GmfjSTLIsCflYr4tNPn8+jCTa6ZF/Plo1sClWhNA3C4Klck8g3E37IlXkE+Eg
	 lKiPsOaGeLf/A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z13hU5JaDLNx; Wed, 26 Jul 2023 15:20:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 89CBB6126A;
	Wed, 26 Jul 2023 15:20:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 89CBB6126A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D5CC41BF425
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 15:20:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B8EF840932
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 15:20:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B8EF840932
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qBw28ghkTO9w for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jul 2023 15:20:46 +0000 (UTC)
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 46BED408DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 15:20:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 46BED408DA
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="352947202"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="352947202"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 08:20:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="756276013"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="756276013"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 26 Jul 2023 08:20:45 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 26 Jul 2023 08:20:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 26 Jul 2023 08:20:44 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 26 Jul 2023 08:20:44 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 26 Jul 2023 08:20:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SMHAiAXIc1PGnbQWC1eEYQVhGaU/gMjQpu4/jalX9R0nlfpdNjxZBN4j+HvH8nZ0+RF9tlH1Wu/t2scx59/bE6oFtWkBK3pPZ6Coxuz2LROx8x08Avs56Gj4YubRXmUN+N0woYLJszXL/JLkEKagg/GTPnsKY8T/SO6Bken1VOd8P0GQXZnR+AiR2/tup3hLCQl6uoTMjkJH/o802zMJ0yZThCGXh4GdAXythPjBwAbEpF2wWL4m0pfGDbUe6xVgZ/T33QkJg4eIwxSRxEPILBmQj/WhsBzySSY44NZvXhWPpeNpZ35DdRYakVKtNohdRTJ28o2G22SjKEnw96pPcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GDr7V2wkUx56E2F4mqcY586TugGUXBiCE2Pjh9b1K4o=;
 b=knOvRzTP21rKsU8y935D70rFrDuD/OKjHCEyQTzMUgz0pNIRiVarw5yP3f7rELMkqwkCXHnZ8P7fNTF6KWhJCcn/YGO8u4JpnnomWSTAIPlNFXM/pF0S+VST7d0NM/HsmEyDmDyWGFfHSVUrRE3tZUSNdHtcddoYaovq8dYYvF5mh0r8bNTqTfoxYGmDFwg6JVkx+NjSz1EDQvdegCY3604GXezitW0Wr3LMyuryI0BX0vYfUPqr+0LhqVhgouG/o66cYDmpN445qypCWjkHp9DllbT7KaKVJZ0ELfeOh+qHJt41EF8nGdi9Trsa/4DAwwaZIlny91j6vMb+Np415g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by SN7PR11MB6994.namprd11.prod.outlook.com (2603:10b6:806:2ad::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.28; Wed, 26 Jul
 2023 15:20:43 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a%7]) with mapi id 15.20.6631.026; Wed, 26 Jul 2023
 15:20:42 +0000
Message-ID: <524a2ee9-ce89-6f97-153c-46909938ed72@intel.com>
Date: Wed, 26 Jul 2023 17:19:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Jan Sokolowski <jan.sokolowski@intel.com>
References: <20230726075314.101816-1-jan.sokolowski@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20230726075314.101816-1-jan.sokolowski@intel.com>
X-ClientProxiedBy: FR0P281CA0151.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b3::19) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|SN7PR11MB6994:EE_
X-MS-Office365-Filtering-Correlation-Id: b5910117-3d8c-49c0-eb46-08db8debe083
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FvdYWpw3U8fQmOAFVDUXHMkqJ1qO4IUlnBF9MwzKgQH60V/whBFkDtyFIjp26NX3+cKgTzL68NDTiR7jwQ/he69bc8PKS+OWWLzuZqnJPYF1lOUfMRvtQ16DXSBiW3YJEmt+R8lfoWDoYjHK7WVFGWuYpo4UuNlyGMCstoyaUlf6kEE6/vKxpp9kOmnZY9B0MYCiAPKZowgR+rhU7OctJUv1t3gx1T6ogAmIaPdMS+XYbitL6o4btY6VCPctWOVMlTlmDAWrszhNaQjligTAXk/K85bqlqvm0707u4wb6rHUlYEjowgrwLk1lL/bcCz17AjMeuQGdvJjqAQwItzzYH0DSyAjlnXY+EwITVsTtcoiDlwfnPQvzQNv8l/UtmwvLpcZIUJn2NYoTcVbDpljuTAntbLGQsyX5wa8zhc48Y5BGUxbzmKsZawDSGaex3p3EBWlAo0osMmMX9d/cz/3Xp3Gcf4T4afHNaalO9RNbP1K9riwnT90JqVANpgELjmlA5mjOhNfAQzXAB9c6Z53opIMpp2nGOEXZiIvphIPCDueUCwwL0cQYkbQlkYfMfe3Bwd9BKbIFpKOj8lltUnzPj1wWzUQR2XhFeR0L0LohPNtd8wd7H4aou+d/0yOsBNkzUMdwTd80WicyG9/6ygmXw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(396003)(136003)(376002)(346002)(451199021)(8936002)(31686004)(5660300002)(41300700001)(2616005)(26005)(6862004)(6506007)(83380400001)(8676002)(186003)(4326008)(6636002)(316002)(66946007)(66476007)(66556008)(86362001)(36756003)(31696002)(38100700002)(6666004)(6512007)(6486002)(82960400001)(478600001)(2906002)(37006003)(4744005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OXV2WTlGUWZPMDlTVEgvNHJBMUZvUDdKZ0lWQWhNeWgvNXFmcWhodFloYlFQ?=
 =?utf-8?B?U1lHRXpVa04yUVFrVGZmdEhDa1BhdVAvNUNWd1BiVUFFT245SjBMcEsxZG1Y?=
 =?utf-8?B?Ukx6b05PMzUvOVVOYUtXdHBKNy9UYm15L0NnWHBCMnNpS3FsRjgxcGN0MUtv?=
 =?utf-8?B?Tm83L0VRbGplOWdJNGhrZ253K21zV083YlZzbGxHdE9ycFRCQ1FUeHVXcTFW?=
 =?utf-8?B?V2todG9vUVFRN2pzbEZ0dWF0TXY5dkVST2J6RGRuY0Roc2N2N2JEeHZRd1gr?=
 =?utf-8?B?L2VlMmtobWpNR2dISzZEVm5IaFA0SXZWY2ZxNFdxWmVqU3VoSi9JMlNUQ3Bp?=
 =?utf-8?B?OUxYQjU4Z1RUekNzbjFzd3g4VDE0SEo3UDRxWUt3Vmp5bk9JdFBxeGVDSnNr?=
 =?utf-8?B?b2lYOUdPVk43OWcvTVA4eWNCOHNiZ0NMb3VPalZ5S2VpWDU1akpOWUliVTIv?=
 =?utf-8?B?NXpCQjFpTlFSZGtMZDVjMWlHeFpCMExIUTBpVDY3ZHN5V3premEwN3MyNlNU?=
 =?utf-8?B?MVFwQlUxZExGa1hRV0E1ejR6NDhzbzNTc1kwL3RXaXFJaGZLSWNTRlZHdXls?=
 =?utf-8?B?WllERWdDTzRDNWRIbFdvNVdSVlFJK2RxL1JTZFcxNjZUcUJaUVI3aG5nNWZ6?=
 =?utf-8?B?N0VxeVVhb1Jad0RwZG5Bc1MxbS9wVVBPTkVyVzdISSsrOGhOQnlGNTJFWERI?=
 =?utf-8?B?SDk2dkVkZkcwWWNlODI3NEllSmozZUEvcEVoYmZIWks2T1NXZXRxc0RUSlZl?=
 =?utf-8?B?anNFZUVaM0FnbWpsUzQzL1RmQTBFeFJ2TGltNTNhU2p2RWxXVnhiNjBscXpN?=
 =?utf-8?B?a1kwdHF3WUJ3R3VRNDBjb2l4WU5GcGFjMXpnOXdVckJzRkFTWkpKVGFkcm5u?=
 =?utf-8?B?QUtmYU9DTENBMXNhVzlvVHBSWFYxK1hEVXl4SnYzRzVYc00yS0I2SnVNM3Z4?=
 =?utf-8?B?U0FpL0tLQ1lQYjcyc0xPNkthOWx6S00yZExXTHRrSndFVjVheUp0azNvRXU4?=
 =?utf-8?B?VzBKd05FS1JlYlNxTlRYNTk4TUpkS0V1TzJqbGJrNEpjSkFqM3E0dUxDZVZl?=
 =?utf-8?B?b2dnY21icUc1WGw3anU2OGhZKzNtdVNxeHhhekxKUHc3dmY0RkNvZVVyN0F0?=
 =?utf-8?B?Zm5JNE9aSGoxWk1xbVpKeUNja3IvU3pHVEc3ekYyeldYeXdVRGpsY2xTTXJX?=
 =?utf-8?B?S0VsNzIwWEwrc211d244NzRONFFreXJTdmFMTmpEclcwRklWMlBMeXdBWWRW?=
 =?utf-8?B?emdFenZMSFIydGxQRW12UjA4VjlIRVVLNzNvU0x3N3pIeFhlM1huV1l3Mk9F?=
 =?utf-8?B?djU2SFNvQ2szWHl5Z3B6Qi82d1lVYnlpdmFZZk4xM1QzWUlWMnZaQmZ3Mjd0?=
 =?utf-8?B?L3Rwdnl1NXcxWmo0bDFmb3diaHBuWWlyZm1pbStKK3FjaGtnU29kTlJrajZ2?=
 =?utf-8?B?N2JtVWFIOHB4aTh6cHNJYy9pN0pjYUlaYnAzOWMzb25ZcUtPWVJFa0lOY3ky?=
 =?utf-8?B?TGRhK2xndzNyNm44ZGhFVncxUzVwY0tvYzRmTEtHSnlwMTNSeENMQStXZ2Zj?=
 =?utf-8?B?S2w1TDFLNzJsazR2OTVQY2loVGkyMnhUMXdsT1VzUS90Qm9jdFFhUkVCcFZ2?=
 =?utf-8?B?ZVhBbWs1REQyVGM0bldIRUdVZXoyQ001c29JRkQ4bGZyWG9zNTNkRlNobE9V?=
 =?utf-8?B?QmE2YWtDUU40Y3VmQ1F5MVZSYm14ekxPQUMrdnBBRmMxOUhoZlRoY2lDcGYy?=
 =?utf-8?B?U2gybUdzdzJkanI1SEE0eWpYYytRMDNDWVRoaDlpbVo5RmoyRnhFcUZ3NGVY?=
 =?utf-8?B?VllMdFkrYnpyMXNsSTVTYUpHZ1hCYkxZajhBQXZJbVBOR24ydkN0S1FRanZW?=
 =?utf-8?B?UExIbk1sb1NubnBpaWwwd2hZUTc0aWdnWWpwbDFXVFgzaUZ1YnlLRUVMZ3Ny?=
 =?utf-8?B?YXRmdmFCSld6S0pDM2xpbU9Mbnd4Q2pRQW1adkVkRm1KdVBER0Y1U3g3bnNm?=
 =?utf-8?B?WlZwT1JIVHhyYUV2bWQzWWxxQkgyQTMwTVZFN0lTa1hZL25YTWhBbHRMVXV3?=
 =?utf-8?B?NmlWdlNiNS90eEtKT05mMDJiM054U0g3L1FvR3M4OVVqdEZGNlhZN3Fqdncy?=
 =?utf-8?B?QnBERVdJV3FFZVdWMlY5ZkJ5cytIazFkYllZd2N0LzViN0dmWkhsN25TRGdx?=
 =?utf-8?B?MGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b5910117-3d8c-49c0-eb46-08db8debe083
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2023 15:20:42.9518 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1/pXIIxBCdHs0cp21pLF8f7U+JnFK2cOo2dkFbeVQ0/Wkt77i0sOUHgHBBZfNcfo9fdsQvVAtdICL+vUUfFWL2b3loe0QQ+vfFQaetFom0k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6994
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690384846; x=1721920846;
 h=message-id:date:subject:to:references:cc:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6/9J1UXGB5sZkNWhFCI6y0+RVQoKSzKq6METVOdIPnM=;
 b=c4tBJYs3QH0jkjweGBB4ChBdWbkXpa0slIvhaWsSajs98N2283NFB57c
 25AwLn2yPSfxN1tB1eSkzoaKNx6rwl7HddXHMlo2vBVQaUJTUaNYXsepd
 jCEA87/izOn6p8QO+2cijx3NXzJodbMLaCePk5aioSB+u2ZExLGXCAO4t
 nNRnYxATkQdR+eIlyUJAoZ7wwaajBqYU0jWxC36yBhjiEKYtc4I3n6jOX
 DbQPyX3x6vvDOSmXcYSokQWVOfxnp5Kaz/xuxqyYqS1KhSyCIJRCS2mag
 /kXAXBf33dH/blJOcSdB5JG3taF6Q64V8dVATLn05aiUPobS7ESCJoeEd
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c4tBJYs3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/2] ice: refactor
 functions to make them static
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

From: Jan Sokolowski <jan.sokolowski@intel.com>
Date: Wed, 26 Jul 2023 09:53:13 +0200

> Some methods in ice codebase are not used outside the
> files they're defined in. These can safely be made static.
> 
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ddp.c      | 183 +++----
>  drivers/net/ethernet/intel/ice/ice_ddp.h      |  10 -
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  70 +--
>  drivers/net/ethernet/intel/ice/ice_lib.h      |   3 -
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |   8 +-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   4 -
>  drivers/net/ethernet/intel/ice/ice_sched.c    |   2 +-
>  drivers/net/ethernet/intel/ice/ice_sched.h    |   4 -
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 486 +++++++++---------
>  .../ethernet/intel/ice/ice_vf_lib_private.h   |   3 -
>  10 files changed, 375 insertions(+), 398 deletions(-)

Too much for one commit. It is not atomic, I don't think there is enough
reasons to do it that way.

[...]

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
