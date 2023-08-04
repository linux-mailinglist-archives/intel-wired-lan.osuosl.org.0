Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE972770512
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 17:44:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 57F5C60C04;
	Fri,  4 Aug 2023 15:44:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57F5C60C04
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691163868;
	bh=yTkgyU90XW0pdvY8FETZDMO9vZRVVxiBgZSkVAzrsI4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8rHF++JlvGzbUa4dLKSrSNgEb9yiLuKBf8lTJgpmGvyE1pKrAMexl5e8mcmhL+aJF
	 trrR2mekUUzwqY5KIv8/jpJFm07PI60dbLxLZfT9uMUXcsir9PWoTXjBOeKj5LvmR7
	 LFFJt8RHjFANOj6Gj/wKW7y0cgZTYeU85ChMRUj2Q6VtutXu5GVgTKupPYk1NV1y7w
	 SvIjuR0+Tpz2J/ETG6IXdVf6RTebmME9ESdIr4xdbEjrlrCC7cb33qMCIwN8tS3Iik
	 0E2t2hvgnnhPWBndye4KhmQgdAoTVTBiTx23+tM6Q4ZwFVn5xxKvi2zkTmwF+fhNiC
	 +F1KyFnSFf2Ew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LU-Xg4c3rxCJ; Fri,  4 Aug 2023 15:44:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1053B60BBD;
	Fri,  4 Aug 2023 15:44:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1053B60BBD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 463471BF5D7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 15:44:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 416F860BBD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 15:44:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 416F860BBD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rubQ09MM9PrU for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 15:44:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4DCA560B55
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 15:44:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4DCA560B55
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="434029838"
X-IronPort-AV: E=Sophos;i="6.01,255,1684825200"; d="scan'208";a="434029838"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 08:44:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="853784470"
X-IronPort-AV: E=Sophos;i="6.01,255,1684825200"; d="scan'208";a="853784470"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 04 Aug 2023 08:44:12 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 4 Aug 2023 08:44:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 4 Aug 2023 08:44:12 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 4 Aug 2023 08:44:12 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 4 Aug 2023 08:44:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YnPNY1PVTDIMs/dSAFgLHy783ffAVRhA66gqN/53EPTMMi+XKmAEkl5cwdCsZNWu6kjYDPaJlW4PoUuZ3AmY8o3X2KWvsRRR7sa5klZu6pzAdI/wYWX77rt/+viaVjy2Mtml5nz6TeZNpuukVmuyfbLsG8ksOnQELmWqeb1flj+njrPLhQ+BL4uYCBZS4GX5SjjsIe7GEGl0jTpMR+z1+m667zt39nB/bd6gTHIZm82+S5Oj09uwRyO+6yVxhPEyhVDsc3uQ0yW9smqVMYxpvHMN/MrpWzRPyL6o+gfOVxleZ3t9uBCyUYJ358IWpvGjkr1l7pmPSoM3VxaLPsYtvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bioe9/6SvQpOyXpB+ROUYh7RvMpJQOG6B1qW/wHpjyo=;
 b=DOZVHYTQ/taoGh46TNEAIQ742LxSKAOi9QeZdxIZnMuWrHfWGjUi3cUZ21YmyYdIZncv+8UjhIo2CAy6inqDmuYzzy1EWwVuJkUkPuaZt52zud2c6wakvFmyKCrTNEegECc9XotCsrwY9iDFmTtJrHXqK6k0ncNxb2SVaBdyuHNsziAfL1egGb1n3nZkd3vpog8RTBnBagO9OBqbVmFtxk0/tNt9+U/wIVJhcitVj/jkP6b8KdqLpPqQvX7JOnTEXaEXyRfeYm7UYC1M6moF94pbt8pAYBd+8jHY8bfPmxLNouRB2LNdoo5ZCkSWiw+vfyUXFl8enIcC3aBAxB8/Xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by MW5PR11MB5881.namprd11.prod.outlook.com (2603:10b6:303:19d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.20; Fri, 4 Aug
 2023 15:44:09 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a%7]) with mapi id 15.20.6631.046; Fri, 4 Aug 2023
 15:44:09 +0000
Message-ID: <572fb95a-7806-0ed1-00e3-6a7796273946@intel.com>
Date: Fri, 4 Aug 2023 17:44:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20230801111923.118268-1-przemyslaw.kitszel@intel.com>
 <20230801111923.118268-2-przemyslaw.kitszel@intel.com>
 <202308011403.E0A8D25CE@keescook>
 <e0cb5bf2-2278-b83f-c45c-0556927787a6@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <e0cb5bf2-2278-b83f-c45c-0556927787a6@intel.com>
X-ClientProxiedBy: FR2P281CA0137.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9e::12) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|MW5PR11MB5881:EE_
X-MS-Office365-Filtering-Correlation-Id: ae0b64d6-0fa3-4389-f57d-08db9501a495
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NDAQdzZYvbrtKJD0pQZ1vtojS1jADAO/EHZ9GCzp/Ut2fntzwdVgPOkuKoIajpLzlr39sgxQn5QOkg/CR7gHcY6jpzOzuNmk6hbberVe8ABBv6/XqOcFpHdcTEUry0dY9jKhE4hXVqzWTlLEsT82vNGl0+z9dGMqY7ZsqpACxrZ3J8ZWzzXv42CiQF8knAtlMpKw2M14Hie25pBkkVew30P4EUbP93zvExq3rmwl0ph/Q7IRt81zsSYCIMpOlEa2Ysky+FNka3AZfIVr/hCT8ag+G2tfckzbNP15Fb6mglqS8wqFiqvooD0fhPqa/TCsCrpHSMlXRf9g2Z7qxXGPRfC3r/3VwMUVhv9cNFjKhx7TTx88m26BcxpetPRU4DXiduo+jbk0Sjem/y9+fiyZafE1Fzfx+Gub/plLUg1xObv5Pq0oCe9rxqA77nm634i0FBNGTMFhvo4j+O72p0P6QTSCYpwGI74Qfcbkyz6ShNY11wPQelERNwhfjAGBL68KkfY3TpYbqWJ7E9zuRuN4+RZSZbArcxHlgwb8f2hwzXfZejr19OFBjn+vIqiOi5XFeytbHsFTnu2xhTDem/3/pVDLTbUrqY0BItN2YyvSW9oHFCQnWBBBwpM1zKLf0KT4cxMG1/9Jsrts6flKlTEOhg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(39860400002)(396003)(366004)(376002)(451199021)(1800799003)(186006)(2616005)(53546011)(26005)(6506007)(8676002)(66556008)(2906002)(316002)(6636002)(66946007)(5660300002)(66476007)(4326008)(41300700001)(8936002)(6486002)(6512007)(6666004)(6862004)(966005)(54906003)(37006003)(478600001)(38100700002)(82960400001)(31696002)(86362001)(36756003)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SWZqa2hEcVdzT2cxVVFXT09EMGpKNjBmQjE3K2xjMFVzN01EWFB1RGZiTUpZ?=
 =?utf-8?B?MDdEeEMxdUZEUlpPV2ZNczhwTTJodXVMZzNoUE53RUVMN2VRL3lKSmZsM20x?=
 =?utf-8?B?VFVycmFkdGxGQUE2S0xuWjhESGo2NVBPalN4NExDUnBrQmdsTUJnTlh1WGFK?=
 =?utf-8?B?QTVUc0FzUHljRHRmTWFlbE9lejkwcDU4TlhOWloxVHRlbDFHQWg3eG9ES0JG?=
 =?utf-8?B?SkJqWDhYd0Ryd25NSFB1ZmFGVDUxanA2aWxwdThtUXplSUtreEU1ZklURm1Z?=
 =?utf-8?B?RDgvNXNBOWtwbFFORHFDd0dIaUVLbDlzMXJUeHBTU0Nzc0RjMndmekk0QUVH?=
 =?utf-8?B?dnlvZllrZ0I3U1ZEQjBDQ3AyR2hqczBodmpta3d0Z3JWR2RGdzFhZjN5ZE9O?=
 =?utf-8?B?V1ZxU1RUckNzTHd5clVJcnE5UVJHblo2N0I4a1NvZ2xsU0QwUms0aXQ5VVJQ?=
 =?utf-8?B?S2JESGRXMlZ6TmNUU01IbWtjb3ZiYXdpckxUcWFFY0VaeFhVL2g0a1ExRDlL?=
 =?utf-8?B?SGljZ0pvbHRoQnBYVGRicGxackd1UXJoVG9hMmVVb24xWGx5THZiRDFjSmpR?=
 =?utf-8?B?SE5wTnZSQkhleEQ1alBMelBtMEdGVFZXZTU1ZzlTOFVscDJ5dlY2RW1RdFJy?=
 =?utf-8?B?NXZpeVI2ZlFYZW5FbnU0alpYMmFjSlFNZDEzbjNFRGJmT3FVQm5WSVFWMFk5?=
 =?utf-8?B?SDhiVDg0R0kva2VhYTFvTnpXQllndjRIYVJ2eTRWUE1nUm5ONlJzVDJqQnVS?=
 =?utf-8?B?cnI2NjVORzIwdXlXbXdSTUoxem80Ly9jYXpiTUZ6UjJkWWRKNGppb1pTWGN2?=
 =?utf-8?B?Rzh2ZG4wMWU0WnBjWkZSZy9uckp6UEc2VGZENHZQZElLcVhTOWxCNDJrSHBo?=
 =?utf-8?B?WTdBYVJhWjJKWTBIQkV4WDNVTXRLWmlHWXV0azVoR0NhK0JWVkc0bzRGNldu?=
 =?utf-8?B?K2o2Z2JuSXBOeW1ZOEdqZmZsSXJidTdtRU50dkxtZ1hmbHRnQXBxZE90WVhP?=
 =?utf-8?B?NEVqaVdLSG83Y1c3ZVV2UXhCb2VsYkwyYjVIR1ZITDZpcE5jelRvcGVRbHJa?=
 =?utf-8?B?SmVacGZyejh5SU1DYmNYNHI4eFNqRUFudkp0MWhudDNBVGZEV0xqckhGUk1l?=
 =?utf-8?B?aGJVaS8wbjNCNVU4NGpTNmkxc2hVc3NQejFYK2tQVFpXcmRrQkRmVlN3MUJP?=
 =?utf-8?B?RWsybEYwQjRNS0R0ZURQS2ptZlBydzdVNWk2dU1FaDZEWjg4U3l6MjM3QjJC?=
 =?utf-8?B?RDhvdVlJWVQ2UzVxWTQ1c0NoMWxGc0NUbkR0NGlMeGZ4R3NLZk54MHliRFhi?=
 =?utf-8?B?d1VuKzBXREZLTGZjQjU0VWZHNlRmT1Q1b1NpTTdhaGtOWEViaVlvak9xMW5M?=
 =?utf-8?B?VDhtZDBHeVgzMmcvd1NhQzN0b1AzRXJpSkhncnVHUy8zV29hSzg1MmtIcmtP?=
 =?utf-8?B?STlCN2hXVUNjd0NXSEVXbUpvZUFxQTlZWXI2N0ZuTFhCcVpOT0w5T3BpRjJi?=
 =?utf-8?B?M2lsOFFveDYvS2lGNENwN0ovN1I1S01VZ1ZBK0pwckVLbVVUOWF1V1ZiVFVt?=
 =?utf-8?B?UGZTb0hFZWowRVVsRG0wTm4yTENNdUpGampnK2hEdUhJOVc1N1F0enNTWmVk?=
 =?utf-8?B?Q0N5OURhODU5aUwxeWZuN1RNQlkyQzhUSndtUTU2R25JMW0xc1F2cWI0cm1N?=
 =?utf-8?B?L05HWG9sNmtURlduODZwUEpDRytucHlWMVF4M1pta0pYN1VlYUZoY3ovakRn?=
 =?utf-8?B?dnZabDlKSGIyVXNuT3U0MkcxOStza0ZjK0tjanU1eWFDTEUzOXhQSndLY3d4?=
 =?utf-8?B?VFNtbkxSOVlaNzNZMlBtWFZPeS8yRUJDNEJGTWlNQWRucWNrdWVSVlFZYXox?=
 =?utf-8?B?VmVleW1qbmdIUGpnQ3VEVnJxZS9ia2NSMjBuOE1DVTN2SmVEaldKWWxDN2Vv?=
 =?utf-8?B?OGtjN1JORUEvTU0yMmRVK2F4WmlqaXkrcThkQ2IxNi90UmFra29ueDMwRTZs?=
 =?utf-8?B?OXJKeTVwS2RSZUJDbFBway93VTBIdW5yRzRieCtBRmpnUjNsRCsvTGlwNDlG?=
 =?utf-8?B?eXljMDVXb3FFRW9ZczRlOUdHTGRxbmIxT3lhdjRGdExNVW9GUG4wejBrVFZW?=
 =?utf-8?B?eG9ZN28yVkNma3h4R0hUWlZqUllqdXI2TTdoQytIY3p4OXBBeTVDb3pIVVFN?=
 =?utf-8?B?a2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ae0b64d6-0fa3-4389-f57d-08db9501a495
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2023 15:44:09.4335 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iktgPBX0j0JXW5fMSWf3NKSE8YNHJV+5/MT+MYJRDG6z5fz5P6G+dR75BfXE1a/8lHX0eCvSxmGouwyX2fghPV0NBOm11iFjifHp20MuwBg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5881
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691163855; x=1722699855;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VUlI8+wYgoTMSUHqM2G2LignUHDjP7afJfdtaWB/58M=;
 b=TCyLAcVyGzPHKHMS6e7ukj7RFkwYO3mLSSh997xFgX//HZXSmHKrcx6d
 fidUfU4MEL9zaOqOzYfXG81u0SCFQFbbPPTDfPEO5HKOwlzjEoGefLDPc
 JZhyAbgOxCp/vIq55ulqyVEm/aMlCl/aU/kOX2Gu73pEUfKLWcicKYuYA
 eUsP9nyNjxYEmv9WE+B+VPy9B2DDsp9Z7UARPMvOsbX7a/26yF1RMZSlf
 grJLC4WKixRiESbdiumNQ+gTRVCpSMXfT8G6eJ0alx4l6wEGdhV8OsKKx
 1AZeHDyX25KNr2gQal/ppNVE+yPZb9ZPKptGESx7sTmzcNGUeaOEH1cXO
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TCyLAcVy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC net-next 1/2] overflow: add
 DECLARE_FLEX() for on-stack allocs
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogUHJ6ZW1layBLaXRzemVsIDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPgpEYXRl
OiBGcmksIDQgQXVnIDIwMjMgMTU6NDc6NDggKzAyMDAKCj4gT24gOC8yLzIzIDAwOjMxLCBLZWVz
IENvb2sgd3JvdGU6Cj4gCj4gWy4uLl0KPiAKPj4gSW5pdGlhbGx5IEkgd2FzIHN0cnVnZ2xpbmcg
dG8gbWFrZSBfX2NvdW50ZWRfYnkgd29yaywgYnV0IGl0IHNlZW1zIHdlIGNhbgo+PiB1c2UgYW4g
aW5pdGlhbGl6ZXIgZm9yIHRoYXQgbWVtYmVyLCBhcyBsb25nIGFzIHdlIGRvbid0IHRvdWNoIHRo
ZQo+PiBmbGV4aWJsZQo+PiBhcnJheSBtZW1iZXIgaW4gdGhlIGluaXRpYWxpemVyLiBTbyB3ZSBq
dXN0IG5lZWQgdG8gYWRkIHRoZSBjb3VudGVkLWJ5Cj4+IG1lbWJlciB0byB0aGUgbWFjcm8sIGFu
ZCB1c2UgYSB1bmlvbiB0byBkbyB0aGUgaW5pdGlhbGl6YXRpb24uIEFuZCBpZgo+PiB3ZSB0YWtl
IHRoZSBhZGRyZXNzIG9mIHRoZSB1bmlvbiAoYW5kIG5vdCB0aGUgc3RydWN0IHdpdGhpbiBpdCks
IHRoZQo+PiBjb21waWxlciB3aWxsIHNlZSB0aGUgY29ycmVjdCBvYmplY3Qgc2l6ZSB3aXRoIF9f
YnVpbHRpbl9vYmplY3Rfc2l6ZToKPj4KPj4gI2RlZmluZSBERUZJTkVfRkxFWCh0eXBlLCBuYW1l
LCBmbGV4LCBjb3VudGVyLCBjb3VudCkgXAo+PiDCoMKgwqDCoCB1bmlvbiB7IFwKPj4gwqDCoMKg
wqDCoMKgwqDCoCB1OMKgwqAgYnl0ZXNbc3RydWN0X3NpemVfdCh0eXBlLCBmbGV4LCBjb3VudCld
OyBcCj4+IMKgwqDCoMKgwqDCoMKgwqAgdHlwZSBvYmo7IFwKPj4gwqDCoMKgwqAgfSBuYW1lIyNf
dSBfX2FsaWduZWQoX0FsaWdub2YodHlwZSkpID0geyAub2JqLmNvdW50ZXIgPSBjb3VudCB9OyBc
Cj4+IMKgwqDCoMKgIC8qIHRha2UgYWRkcmVzcyBvZiB3aG9sZSB1bmlvbiB0byBnZXQgdGhlIGNv
cnJlY3QKPj4gX19idWlsdGluX29iamVjdF9zaXplICovIFwKPj4gwqDCoMKgwqAgdHlwZSAqbmFt
ZSA9ICh0eXBlICopJm5hbWUjI191Cj4+Cj4+IGkuZS4gX19idWlsdGluX29iamVjdF9zaXplKG5h
bWUsIDEpIChhcyB1c2VkIGJ5IEZPUlRJRllfU09VUkNFLCBldGMpCj4+IHdvcmtzIGNvcnJlY3Rs
eSBoZXJlLCBidXQgYnJlYWtzIChzZWVzIGEgemVyby1zaXplZCBmbGV4IGFycmF5IG1lbWJlcikK
Pj4gaWYgdGhpcyBtYWNybyBlbmRzIHdpdGg6Cj4+Cj4+IMKgwqDCoMKgIHR5cGUgKm5hbWUgPSAm
bmFtZSMjX3Uub2JqCj4gCj4gX19idWlsdGluX29iamVjdF9zaXplKG5hbWUsIDApIHdvcmtzIGZp
bmUgZm9yIGJvdGggdmVyc2lvbnMgKHdpdGggYW5kCj4gd2l0aG91dCAub2JqIGF0IHRoZSBlbmQp
Cj4gCj4gaG93ZXZlciBpdCBkb2VzIG5vdCB3b3JrIGZvciBidWlsZHMgd2l0aG91dCAtTzIgc3dp
dGNoLCBzbwo+IHN0cnVjdF9zaXplX3QoKSBpcyByYXRoZXIgYSB3YXkgdG8gZ28gOi8KCllvdSBv
bmx5IG5lZWQgdG8gY2FyZSBhYm91dCAtTzIgYW5kIC1Pcywgc2luY2Ugb25seSB0aG9zZSAyIGFy
ZQpvZmZpY2lhbGx5IHN1cHBvcnRlZCBieSBLYnVpbGQuIERpZCB5b3UgbWVhbiBpdCBkb2Vzbid0
IHdvcmsgb24gLU9zIGFzIHdlbGw/Cgo+IAo+Pgo+Pgo+PiAtS2Vlcwo+Pgo+PiBbMV0gaHR0cHM6
Ly9naXQua2VybmVsLm9yZy9saW51cy9kZDA2ZTcyZTY4YmNiNDA3MGVmMjExYmUxMDBkMjg5NmUy
MzZjOGZiCj4+Cj4gCgpUaGFua3MsCk9sZWsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJl
ZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC13aXJlZC1sYW4K
