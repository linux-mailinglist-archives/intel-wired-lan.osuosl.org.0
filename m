Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CB68A7AB33B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Sep 2023 16:01:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D7AB42240;
	Fri, 22 Sep 2023 14:01:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5D7AB42240
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695391265;
	bh=DyGNdjRJuq1S4xgi0OrDLnFsUpOcXDdIT9cABH5V/WQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YabzSwyKP7MmnPFxcu1bDXVPiNAlY7QyHfRlicsJqxREb1SMTb0au/iFIsLA5mTTF
	 rw4FLBqwxBVFd10E6+zm/hwllR+uK/lqAJ8RA4J0CsJF3FV2Bt2YMKtfJswCoFNIsn
	 opIiEU1wg2mO1XAyfV8Li4JPp91KNb/T52UWnsDL109f5SB6EI8cCvhS1fD1gqdgRL
	 d0cLN7G8PwcfxRl51a8vQdWr+A4j0n8TeHm5xZXGj6lpk2XsribrbroUhUO3afi5mY
	 kZ+Vo0eSCBkMGCg6Un8xLF9Ubr/WVPXltXLAt/FAO4KwaOoxOKw7xVH9MbGkpR0M6+
	 9j7CmyaMexqUA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jz-QKNIe4DSB; Fri, 22 Sep 2023 14:01:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 020D0408A4;
	Fri, 22 Sep 2023 14:01:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 020D0408A4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1E1361BF375
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Sep 2023 14:00:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E96876109A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Sep 2023 14:00:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E96876109A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fRKfCARUMe3P for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Sep 2023 14:00:58 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B59AB60C06
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Sep 2023 14:00:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B59AB60C06
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="447311080"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="447311080"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 06:59:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="747525813"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="747525813"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Sep 2023 06:59:49 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 22 Sep 2023 06:59:48 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 22 Sep 2023 06:59:48 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 22 Sep 2023 06:59:48 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 22 Sep 2023 06:59:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IW81fzmS+vhtzBNFYYPHwpi8bYKb0aze2iXV81kO+SODyE8YhFoYqp+azWEk30IhYc2xP2jB4MSHYXwOCsqUkOZp6KQuhGaVKTTL62gaowBemGJ6Hcjw0ospGfCqN3rJoV02ymaq+ZP+ZjaHh4AfM2wf7L8MeD/esvAnXsiWRo9L85n3qKlxTD7nG9e1vPdNFF318iaFeOUFLg6a+t1ay8LftGSbr+4NMnYSo1pXtM4c3/c4NxAnxRvFdVzZvSkt7fRLGwBh/USnz+xnR3H+syAKfHTyDJoxUD2XMNBcjZoWRrY5f1ybAjXyBIjQmqedvCTVZYX4RAzchi2cayYwog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=URQtc9lfYMu7M4YgW8ViUTgj1k+CCHKW3N+DdPb6QO8=;
 b=DPctM+HfuTajwoCSl3ot5VBEICytQcKVSOWqU6rjTDhurrd0coVsXaiNyM8gn1zvr8a3ZW/wFe305cl4ehfIBt/Fi5ngcz6/apofUhW5+JkI7jmrw6X/dE5uOiH2yeGJnPsF2UJy1p6jH38V4rfgiFuFDEkln1Ykqnqy3vioHgP0rMw1fJZJHANoEtlJc7ylDRVobSL4qG9EdzyFMNs1anOOhEGx1e03lMpAwsDs6+Gz4U12qGGDFN9+XfhywJTkBGqSNOhFprEYWcy2SP5Kojvq7RSMbpfpEf5jvY1FfXh4qziZuexHg60Z7k3wjxewQqM+IUOfcYde5fULdfHyug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by SJ2PR11MB8500.namprd11.prod.outlook.com (2603:10b6:a03:574::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.20; Fri, 22 Sep
 2023 13:59:46 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::bede:bd20:31e9:fcb4]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::bede:bd20:31e9:fcb4%7]) with mapi id 15.20.6768.029; Fri, 22 Sep 2023
 13:59:45 +0000
Message-ID: <34cec699-4d4e-6458-d49a-ae6d572e0a58@intel.com>
Date: Fri, 22 Sep 2023 15:58:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
References: <20230920180745.1607563-1-aleksander.lobakin@intel.com>
 <20230920180745.1607563-3-aleksander.lobakin@intel.com>
 <e5022460-fc45-5571-1f5b-2b81f7811a7d@linux.dev>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <e5022460-fc45-5571-1f5b-2b81f7811a7d@linux.dev>
X-ClientProxiedBy: FR2P281CA0181.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9f::17) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|SJ2PR11MB8500:EE_
X-MS-Office365-Filtering-Correlation-Id: 16b1c2b0-8c33-4b76-7131-08dbbb742d79
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NdIBxropBCbhRQAXeJuBMh7YRDRK+d6Bi0PyHGLqQcZaUOhUqlwazOOMmXFRnJQIFYKltWb751X/J50RXIO3c7IMfnO8NIn8JmuZK9PXgHVKy6AaNO/UnBN4FiMUqW4I+l0IF1PNYav/cwkWFgpniYTzpmbe7BSDJZHuCWN4vmf+2gjJbldUupX0GzTj45SIUzqo57P83zvp3YWK3dKpYgHFTICVWXyzgedLDpkrzp7U9UgnlQ7sfpBe097yhVIn60BbXnGQjny5uuWbhkwD1jnLYubLfWEqmdjffq01FgweWOC4HPd56fVhk+LuMdd9eZW626ThKUGONxht3eVchCJ84WuG3WhAfV+Dy4sOVpI+1ZD8wPmr+CWPiBQrziPrF8807OgLIDlCkXq1klwfwhqhKpUvja9ohndVU0m4RTXTymKvQZtTTo3jPRT+P2BHVwlE9WnnJAlG1Rhhn64WFhX+BpQ8AK9Jl6QoBbmsDHzjR64TKwIqkqW9+wuYb/YTAFmpGye8ruPUtcN672hhraFPlvn+IFYeUcBfPTAVbO1JIOb3QsdPpHq1SgaJ/bRn0LimVT6gDg95LJ8P20KWxYIqKWgQ2j2cfZcTvBYOpXJ2PXyPDqridO4SoP6QH5U2VS1i3xlOut6xUBTS/c33Ew==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(366004)(346002)(39860400002)(136003)(451199024)(1800799009)(186009)(31686004)(83380400001)(66899024)(6506007)(6512007)(82960400001)(53546011)(5660300002)(4326008)(2906002)(6916009)(54906003)(316002)(36756003)(8676002)(41300700001)(8936002)(966005)(6486002)(31696002)(478600001)(38100700002)(2616005)(86362001)(66946007)(66556008)(66476007)(107886003)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b2xBUUY0M3lmTUNWL0I1TndsM1g1dHlobzR2ODR4VjhKZnpwRktqUjBwYmhE?=
 =?utf-8?B?VkpGY3ZjMjJMRmxSZ1pScGhDV3ZVTkt3M2JWRTN4eTVSdjY1T1EyNnZQOXZk?=
 =?utf-8?B?aVhkWm0vL0hURHhsYzgzSVM0bUJwOUt5N3RFT3pVUjlwUGMyUHpzajl4TDNl?=
 =?utf-8?B?UEdLYXJ6ajRqKzIzaWY3WW1VL3hJNklNY3c1ZlJUNnJSRmFkb3dmNy9Ua3NZ?=
 =?utf-8?B?YVV5djlBYlpTeFRQUmZYSHhVVHJZSFZzSmxKTWUzUXRZbG0rYTQxeUVJaFBi?=
 =?utf-8?B?TERVdVVFbDZKVElrVm1KTElpSHhpbTJmQi8wczB2STZRMGlOdlRmdTFGZUVt?=
 =?utf-8?B?K05McWs0WUQ0cW1PeUU4SlI1VHJQMUI4dU9WRytXRXV3SXdjYmVUWktwQmhW?=
 =?utf-8?B?UDh1UGNLa0FGKzJId29oS2VGdlpQRVRNSTlzRHBxcy9SOFVPK0laVzROb3FV?=
 =?utf-8?B?ekRNUWJ2NUwyMDNiYzRiSEdiVnI3UG43K2o3RGxKSHdEeGRRbHk4Sm80NnJv?=
 =?utf-8?B?ZGh5dWNsTloyUFBkMzNxSktwT3lyNjJGSStxb0cxb254djVVeHNTaUlvTkg4?=
 =?utf-8?B?SUZHcDFuS05KbnZDNE9YWVNrdmVoWTFyUmJuNEhIRWY0NDVMQmMwSmszc3Fv?=
 =?utf-8?B?eThBQWIzK2hVSWo3U2wrNEJEbGxtN1orWmxSTDd5Y053T0FtNnIrWEE1NE15?=
 =?utf-8?B?VnZ1VGgvY2V5UUZOZlpVeHpibmQrWm12TTdNdUpJUlYzS0NmMTZPMjhJL2lk?=
 =?utf-8?B?TnNTNS8xdXpTZVlyb2tZSFhMazVRVWVNK1Z4ejN2TlBNZlZEY0VpZ2gwczhC?=
 =?utf-8?B?SlBWVFdtM28rQnlqNDh4UXN2ZlByTmFmMmtTNG12V01ibGFIYzFZU0JFUW9s?=
 =?utf-8?B?TFFhUWJiNXBxT1pWK0JhSGxreDM2OWx5ZXBEQjluNVNjdVpkT3ZnbUJ6RHJE?=
 =?utf-8?B?MjVxeVJJcVNENENvUkhzbnFwajA1Yzk2Y05aMlVHUFZFUkZKTG1tZC9HNW11?=
 =?utf-8?B?WUd0ZWpqS2UyWXRudjd5VUFTM0QwOXFPMjZjbERaeitJK2pyVTJITUk1cEt4?=
 =?utf-8?B?YzdCc0xNQWRrdGNjelBRbCtLWFlKNGtYaThYTWlTSzFYVWpHZklaVFZWRkFB?=
 =?utf-8?B?VnBvM3pPVDFROS96L3hJaXZVRncwWEpyY3BvOWFXQjBIQzJSZ1dkNjROL2wz?=
 =?utf-8?B?TkJzTUhYQjA5WjZTWTUreDJMSGRlb2tWUTZXSmZrUWlxU1kwaWkxV1pFSW9s?=
 =?utf-8?B?eGZ3cGUwSnpITTd4R3pjRmpwOFFaWTVHRlY0M2hOTDZZYzkvclNGNGk5NzI0?=
 =?utf-8?B?QWtYUWJUQTMyenpKT2owMHNCcTBRMHlZRi9NMnY4UlBtUG9POGUzTE9jb0ky?=
 =?utf-8?B?ekFCREZkMDMwYlVwWC9KRC9iOU53bWJNUG1nZ3lCc25ZakRwRHhKNGNDUytS?=
 =?utf-8?B?cVM3WXU3OWRXQ3NCOXE0WVZVL2JNK0NpblNmNVFSM1ZSTXgwQ1EvSnQwQXI5?=
 =?utf-8?B?V0wwaGNZTDdpSWV2V3BRdEhXYXgySFdhVDN4N3pNQzQ2TFo5V244WEFReGhn?=
 =?utf-8?B?SWhJY3pEQ202a3dxT2VReDF4V0hWQXl4WXBSVUEvNjJ2VlFEbjZVUUx1NjlK?=
 =?utf-8?B?S0xvN0ZDR0ROclVSd3Z3STR5d051RVFCdlNuSURjenJxNDFqcWNyU0dkSkJ2?=
 =?utf-8?B?K251cmUwN2xJWGhaYW5XMlpBLzBKV3ZXY3hQbnlXY1hHUVl4RlNxRGtwZk9Q?=
 =?utf-8?B?dTVNYm8vVUdGQTRoMXpTa0ZNOFJBbHBsdGhuVnNSS3ZwYnVoSjlHM3NvYjdX?=
 =?utf-8?B?VE41N3NTanFESTNiRzVzYlMvejRZQ0Q1ZFVjaExvWmh0MUw1bzEzRnU2OS9j?=
 =?utf-8?B?YU9pVkIyUnVDa2ZkVkoxQjV2UTZ6eG1xMGY3ZG5zM29uS3BKTlo2V2hhRXZF?=
 =?utf-8?B?ZmxvOTBDdmRhck8wcFAvc3dRRnZ3YlcvU1VVREFrekhSWXNhRG54N2E1K2h0?=
 =?utf-8?B?MnFxZ0JaWHVRZzB6SzFxQm5ZT1NPa3AyZ1gybXVqc3kvVnBTaGN2dFV2ZjRV?=
 =?utf-8?B?bW5WdWkxT21zcDZzR3BTaktxS20zVlkyVzZGQ3BJRmZGcG54dEhoOGJGRk1G?=
 =?utf-8?B?andhUUh4L3J4UVlVNCsrYkMvMlVPUjdtb2NKaU50UVM1L3p3ekh4UkJldHNO?=
 =?utf-8?B?V3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 16b1c2b0-8c33-4b76-7131-08dbbb742d79
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2023 13:59:45.9057 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3e87Q7N8bZeGH+XjR0l4G134A9t7FSefpQSJgaoyP7PmxgriN8uByAGncWym3hZ7fdoOOb8lvEb66xxTiyudvevgYbcO6ZZsdyYYKTZLqPc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8500
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695391257; x=1726927257;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uvnL1N4qVzWuozUu7t/eGUEAQGhGg0rbu6iO3uEWgLM=;
 b=LcxK+K6gq9SsAASpUhAe7CMYG0MNNMCDd7fVpHVMvt86pT07XLP0XdIQ
 dpotpbK/7gDe6r0MbegfA9IMsjZcsEwxb5RK0/kAEzVuJL+zQ0ei9aWVO
 ni/WaKDreOWqC6AV+loQHo179Gb4tY7jU+1gOjAq2jNgAMJNTw9/fAu2i
 D3hxjyfXXIW/4knPjreMVsc3QBc1Y0m+FwimiI7MpECcYLtHhCiSfmF/E
 EPS4jB7MyGTTCKDGlKxJjpvh0zaMAw5zFwaL9yWJfXuTnJOUiHG9zeYZR
 vqE3WmNZocxZ++sR/mPv292EuhvhJ419qljiGD31YbYuxwZNfdj/mQ0bR
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LcxK+K6g
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/3] ice: fix undefined
 references from DPLL code when !CONFIG_PTP_1588_CLOCK
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
Cc: Michal Michalik <michal.michalik@intel.com>,
 intel-wired-lan@lists.osuosl.org, Richard Cochran <richardcochran@gmail.com>,
 linux-kernel@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, Milena Olech <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Date: Fri, 22 Sep 2023 00:58:04 +0100

> On 20/09/2023 19:07, Alexander Lobakin wrote:
>> DPLL code in ice unconditionally calls several PTP functions which are
>> only built when CONFIG_PTP_1588_CLOCK is set. This throws a good bunch
>> of link errors:
>>
>> ERROR: modpost: "ice_cgu_get_pin_name"
>> [drivers/net/ethernet/intel/ice/ice.ko] undefined!
>> ERROR: modpost: "ice_get_cgu_state"
>> [drivers/net/ethernet/intel/ice/ice.ko] undefined!
>> OR: modpost: "ice_is_cgu_present"
>> [drivers/net/ethernet/intel/ice/ice.ko] undefined!
>> ERROR: modpost: "ice_get_cgu_rclk_pin_info"
>> [drivers/net/ethernet/intel/ice/ice.ko] undefined!
>> ERROR: modpost: "ice_cgu_get_pin_type"
>> [drivers/net/ethernet/intel/ice/ice.ko] undefined!
>> ERROR: modpost: "ice_cgu_get_pin_freq_supp"
>> [drivers/net/ethernet/intel/ice/ice.ko] undefined!
>>
>> ice_dpll_{,de}init() can be only called at runtime when the
>> corresponding feature flags are set, which is not the case when PTP
>> support is not compiled. However, the linker has no clue about this.
>> Compile DPLL code only when CONFIG_PTP_1588_CLOCK is enabled and guard
>> the mentioned init/deinit function calls, so that ice_dpll.o is only
>> referred when it gets compiled.
>>
>> Note that ideally ice_is_feature_supported() needs to check for
>> compile-time flags first to be able to handle this without any
>> additional call guards, and we may want to do that in the future.
>>
> 
> There is another fix under review [1], which came from Jacob.
> It converts the code a bit more, and will create conflicts.
> I would suggest to drop this patch until another series is fully
> reviewed.

I know, I already explained earlier in this topic that I sent the IDPF
fix separately and that series can be dropped.

> 
> [1]
> https://lore.kernel.org/netdev/20230921000633.1238097-1-jacob.e.keller@intel.com/

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
