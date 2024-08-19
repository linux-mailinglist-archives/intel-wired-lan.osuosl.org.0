Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B06409565EC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Aug 2024 10:47:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F267E607F7;
	Mon, 19 Aug 2024 08:47:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IUphN_lECU-A; Mon, 19 Aug 2024 08:47:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A49D607E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724057257;
	bh=URkEQJJ33aQd36OeNXgVlBq/XurJPms7+1V92QTO8Y0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7bBqNk7wRqcTzwzxOi/Iv9yBMNpj4xZKhfzJhm4lMJVpQSIgbptqOi5awrlmGWrV9
	 ilaurGX5SXl/e7HsL7lcXteza0BNyT8EUbbeSuA4D6NyMXeg7mGaRI5QbaacKh3wIG
	 fjy6/7M2UmgMRlpl53TzIsRggxCdCxDUEf6MG+EoUHT+vhWqVKrlM2FRI06C3R7p/E
	 D1UFR7x2wmCNxkHvPs2LJD3IjlBVl8dqdR/nsqzqAjHnImrObuA3lVZDpvqpfPe3j1
	 Wln4251E+8hxvzKBcuhg+1S9TuHj+3ddLBI6qTblQ1zgyNoeOqINuQI4DRhAEO5D+p
	 wNTw0jSpj0OUg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A49D607E1;
	Mon, 19 Aug 2024 08:47:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5D85B1BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 08:47:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 57B7780F10
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 08:47:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l6TU-P2gPaMF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Aug 2024 08:47:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6DDAD80EED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6DDAD80EED
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6DDAD80EED
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 08:47:34 +0000 (UTC)
X-CSE-ConnectionGUID: 08vTBLPaT8W8BU9rPmWW8Q==
X-CSE-MsgGUID: 9Ps8YPjUQfSxhPRrWXPJ+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11168"; a="21835946"
X-IronPort-AV: E=Sophos;i="6.10,158,1719903600"; d="scan'208";a="21835946"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 01:47:33 -0700
X-CSE-ConnectionGUID: SvJHFZzBR3CNqeCIjy4HlQ==
X-CSE-MsgGUID: vezwy8zMRGqBrbCD96FVgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,158,1719903600"; d="scan'208";a="91081697"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Aug 2024 01:47:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 19 Aug 2024 01:47:32 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 19 Aug 2024 01:47:32 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 19 Aug 2024 01:47:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y3z7cg+DLt+e+3KWjEzgYCpRhjgLC+vRmuVa82kS6rLiQixaZedQEV5SiTiyrvAD63fKYys6Hp215i8RGC3Ta+yf9qDCBfRYdgBIoKktVlUIBKiiHHl3b+kmQhK1uPS6JdmIX9bdWcRBgF8k0Y1YlXFILFgsDztpqt/7Z/29CG86ZoEWia7dx2s54vUmVf6hIwvADMPY2cHVEySwZJgtphzGIt3zoN9pOIzmzma1nZbNBmY1Ly3jDVXblWrhA+vOLWi8VpohBqeT3O0aIQ88ydy6J0MyQQ17FR9L5dWRM3E6EPL9WjtY1H1H6Nj2gr4cBXz3jHeZs9vU4fKFbYZycA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=URkEQJJ33aQd36OeNXgVlBq/XurJPms7+1V92QTO8Y0=;
 b=XbMR2INdlW9ZLICpXVvBlYT91c5O2nKR5sTY6WW4AxhfqU8OIpKo+aRDbKK298XhlCOF+NjD+LhfdV7DU3fdm23eJI5Hf+vDVdLpa1vBngL0fGSnJcJ+eHTkq7G9qGEMZuXPLbs3SlYvrd89dqHHs3zft3pPPL46GtTFAMYxg9DCLTDo91mKRH2iYfrRcv69m/T/mRflrhd945RZLD7z28G2icum5GJSRixeSsmDygJrOd6cSK87fgbp6gBT93NQ0LVk9+ylaBqBZOsSdo8MxBxn3mI6mV3tuM7sg9dfpVJHzuOgN4kEB5cf3Wrz+JkrBlUMJiB3vSxbES9rslxC+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SA1PR11MB7697.namprd11.prod.outlook.com (2603:10b6:806:33a::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Mon, 19 Aug
 2024 08:47:24 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%7]) with mapi id 15.20.7875.019; Mon, 19 Aug 2024
 08:47:24 +0000
Message-ID: <ba76710b-c3e2-442a-b398-2b2a87f3642c@intel.com>
Date: Mon, 19 Aug 2024 10:47:19 +0200
User-Agent: Mozilla Thunderbird
To: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
References: <20240819082146.101755-1-dawid.osuchowski@linux.intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20240819082146.101755-1-dawid.osuchowski@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BE1P281CA0287.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:8a::20) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SA1PR11MB7697:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c65ce02-19e3-45d7-4031-08dcc02b8bdb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L3NSMUlFR3BwL2pYY3VReTM0b21mRGJHTTBrd2pPYm8xVUhyRXFIZVdNS3Qr?=
 =?utf-8?B?YTRDZ0t3TU0vOGxyMktnSDRsM3ZqbStzVDIrTkF5YzhjQVEraVlYaFUwMDFx?=
 =?utf-8?B?THhEbXA1eHJ4MHoweUkyejYwVnFUTVQxN2JtR01ZTDBTSktQQ3ZhTzNVQ20v?=
 =?utf-8?B?NVJXMzg5TWp2U04xc3F3WkIwVDdiekpzdTBZb005bi9hSXZibURkKzZFRGNz?=
 =?utf-8?B?NndHWXk1bEVRUmo2SVA2YVR4NU5XS1hSTFNqSlVXUUVCdGg3aWZucHcyRnhI?=
 =?utf-8?B?RzB6eWwxbDJqZjNVWG1zclZiaGtycDVTU1YrdmhKWUV1c3FJb2RDUmE4aG1L?=
 =?utf-8?B?STlHclBCa3JHc2oycUp6OG13dEtOUVRPQzY1alUwNzFaUXRiVUFyT3lRR0Fm?=
 =?utf-8?B?a2ZIVk4wTTM1Y083UFppU2k1eFJEdFVDT0tPR3BSclJJUlMyNDhxMjliNTJF?=
 =?utf-8?B?MXk2NkhzMitIRTQ4QUFPRm05SVREYVcySVhzYUc0R2lYNU1jSUtlVDBsczM2?=
 =?utf-8?B?My9SMFR3bk9abXEvY3haOFcxdDVaMFNMRXRicnp5N1ZRWnNVSVVvRXlmYlJq?=
 =?utf-8?B?Rlhia1MxemE1NzdtUlFjalk0L2d1a3E3RTdJaU5pcWE2Tmo5WHROVXcxM05B?=
 =?utf-8?B?b0Z6V3dZN0x1R2hhN0xTbkx2d1pITjZHd0tzQVB1eGpPeHljQXErM0NvWmxu?=
 =?utf-8?B?cmJhbklDYmxmOThkVzhvQllRbExIMHB0aUhoSGdVcjUrTmRYazE3WVF3S1Fs?=
 =?utf-8?B?d3pMT1gvNjlvVkJVUTVhcGcvVjVEZEpaeEpqeUhhYmJ5WWdQNVpYa2Exa0xJ?=
 =?utf-8?B?dDJyWWc0S3grRTM0S1d2aDY1NVVVemRCUU0yT2VFRDBkNW9MeHJ1a0Rsb25h?=
 =?utf-8?B?eDdzUkZOYUc4NEJONDlGbldIdURFM1dOU1phVU95Qmp1eGF1UHVhc1Z6OVlx?=
 =?utf-8?B?Z1VkTDJ3MXNURXBaU0QxOXhKWjArUlF4WWxBRk15bzlOYVJXSEN1V1h5bU00?=
 =?utf-8?B?MUFGWlFpQ2dlTk8xWldrUXUyZEZUK2NlanlGa0hFZWllV2JqN1JnZTBQbXpG?=
 =?utf-8?B?VHVuekVobHRXWXRLUDJHU1hUdWVhMUl2K1NaekJJNzlTTjRTZFlYVG1RZlIz?=
 =?utf-8?B?eGJRZmFTL0ZBaTZpSUxMQzJhVGJuQ0ZUSkdZaU5LMXFKWCtDRktUd0F2WkhZ?=
 =?utf-8?B?RWJKOUtyVWxCQVRUK1J3Z0VPTW80d2FVYUFpakpYbUp2TzB6QW9ldExEblZw?=
 =?utf-8?B?NGxvTC9pVWFJRExrQmQ5NTNrdGFmYmk4OVZpN2R6TWVodXNheXdYc2tiTXhP?=
 =?utf-8?B?d3JOeXpGcXBkaVRtSVFoYi9ZUTRXWUVHbXpHck1XMmtoTWNJMWt6c3pPL1Fk?=
 =?utf-8?B?OWUrZmpKRnYzMWFxYmxsY0hkS2FRekJWS25DZTlCbnc1b1hqa2RwaWtrek9E?=
 =?utf-8?B?b3ltaWRtTDNTR1ZoTy9GTm53WElzUk5YYkVqYnpDdjN5SCtiWloweGR1UlRB?=
 =?utf-8?B?Z0xDNkQyOTIzYklnM2svdFFuY1pPQ25hNkFHbjBXTzFWT3JBM1NxOWxoZ0gr?=
 =?utf-8?B?WjBoRFhsaFd3VWlBYWRGSThXaFVVZzdsMUdwZzVETjdCUGIrY0RxaWM3Y0hs?=
 =?utf-8?B?QWpRSndJdkQrVWF3aUZobDRzY3pQTm8rSk9SMm9kMWtsUHlHd3dzT09uU25p?=
 =?utf-8?B?WmduYUtySE5TbXcyMzVQWEFUUmJRbW5tTjcwNzh2MzFueWczVzNvNlNmMlpO?=
 =?utf-8?Q?Qxaobp74jv9EEc9ykhG36Jvbv8771DwM0q7ng7o?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bTMybUVOVHJwMFVUa251MGdsanNYam1zLzl5eHIyS01WbTFsVmw3Y3Q1VnpD?=
 =?utf-8?B?VlRaUDJjWEtLeWU3bDVxVytXSUswUkRLSUJIeWhHM2VqRWFHdy9XTFZ2cGNp?=
 =?utf-8?B?YVdIcmdGZXp6S1E5dzZhR01wbmFtUW1NNURFeTNiZWFqQmg0Y3l6UmRWb2Rv?=
 =?utf-8?B?M3dsV3Z6L3N6b1hDSFgwNU5rRGRYSjE1blV1cWZmOEduWlYrVjBhRk5sTzI4?=
 =?utf-8?B?MEZBVEtrSzQ1UUJkK1RFQlh4RWRrUEJaREQ2U2hPTkhWS2EvTWtsd0FFdmYz?=
 =?utf-8?B?RTZPMjdwVzZNV1dnNmVYODkrYnBYL05XNC9pbDAvdVVLblpZWnFsU0NQUjky?=
 =?utf-8?B?OWtEdGhQcDN2VFNUbUw2WFZpeFRBTmYvbVlSM1RySk9BbS9hNW5iV2xrVW5I?=
 =?utf-8?B?RHBKb25WM05zMUp3ai9TMXJWZVlQdk5nRjlaSTdkS1FtZk9BS3RNNlBFbXRG?=
 =?utf-8?B?SklpdHdTL1ZkR0dnRU8zcDB2eERzdm9lMk9DV3M5RjhBRlE2TUlqVysxZUtT?=
 =?utf-8?B?NldzWWt0RGYxbkxsVlZqUDlvWGhlSnkvbWh4NHdpT3dObXArTEE5Yko5SU9n?=
 =?utf-8?B?VUJmS0FJNEFrREx3eW5GYURURUVhMjJXWFdoZTBLUEZ0dlh4ek5xbk5oTFp5?=
 =?utf-8?B?bndhUkJCRG5VcjJIMXAzM0tSMDd1N2pXZWFraENjTHdNeVh4Zm9jVWZrUjlV?=
 =?utf-8?B?YUtqLzFCeTBTT3ovR0hiSUU0cUZuWDNMdjdEd2RYVmYySC9JbkJCeWJzK3FP?=
 =?utf-8?B?Y1d3OVhzNk4wNU4zNXRNa1ZDUU5lcWpsTStxVVBPZ0NpNXpST0FlTkk3aU03?=
 =?utf-8?B?VXhtM3lLdlIvNFRmVVdTOVNLNWFzczBIcDNkaXI2TTEwUG1ZZFBZZFRCa2sy?=
 =?utf-8?B?WUhId0w4Z081NjIrYUxUVGc5R0NoS1Fhc2YwM25RZFQzVXQvWDBTVmZKTXV2?=
 =?utf-8?B?T2gxbzFZUlc1MFVyUGNUV2JQTEZQTjMwek5EaFZPNzNSVWphUTdHa2lrYVoy?=
 =?utf-8?B?NEx2aDlhaDF2MXNZZVYvVlZhSk5iMEJtdXdxMWpUNGpaRU9WSzMrdjg4anpl?=
 =?utf-8?B?VHptenhHS1FrUHI5d2VRSEtubXFJYzdaVUFKSGRhQ3JuODBQTFNrb0FEZnY2?=
 =?utf-8?B?TTdCeTdZOGdPVStlQVJRbkpXNGE4ZHpHUUtvWG9tNzNnTGpYdEpBcWZoRUNw?=
 =?utf-8?B?UXBVbTRzdE43N2NPbjJycFVmYmhnV1ltU0o5L1p1akFibU5jRDU4SkpWYkk4?=
 =?utf-8?B?T3FHSERKTGt6aGwrYzZwTzZoYXRhbjZjVm1FN2IyM0tLTkZBL0VaeUtJVDBy?=
 =?utf-8?B?N0dTeGpZaVRoTnMzZlJ5RUJSRGR0NTBEdllSRytHTUIwUEdxaUN2Rnl3L2hq?=
 =?utf-8?B?NE5sSVpWb3dpSVlIZ1hBUlQyTjAwSVpJOVlxZktyeEZOTkdpUzJsdTlIYWZm?=
 =?utf-8?B?MEVVVkl4aWRqdFczcVJVRWpDTUxyUm5NTzVPaWFmY2ExYzQvWTF5NW5Mcmp6?=
 =?utf-8?B?RVNDMmVJZUtiS1RqVEJkSmVZUGMybGMxeGxsL1dMVkZrZ0hSSnZWQU9OZWJt?=
 =?utf-8?B?N1A3MkpSY0ZuQjVRZm8yVXdpSTEvbzJWeUo1Q3FpSGNkRUppZVNaK0F5SzRl?=
 =?utf-8?B?dnJiWG0vNFNtMnpZZXc0TGhxRk56UDlUYVZmWWpYMG1LWnMrZ3N4OVZJNVhK?=
 =?utf-8?B?VC9sTWJFSlordGUzNEE1OHNFRS9QMEJtSDRwQXIyV08rUGt5YkpLMFVERDhB?=
 =?utf-8?B?N2dBWW9jUXQwZnZEbUcwWUZMQkk5MzVNU0pPTFBqNE1WSXZtT2pxc0VaVmZ1?=
 =?utf-8?B?OUhUTW9MRnQxdVE4QzNmMUlVTnRTYnVTTHZiZW1XNjRFM3B2a3pwcFZIOElp?=
 =?utf-8?B?VVAxWDQ2aTB5clg1VlBwYWh2THRTR3l0TE53dENTZVI0S05zVGhBVTc3WFVU?=
 =?utf-8?B?YkpVUE5GYk1WZ25jRHRJM0dodDhNUXNpRmxZODZSTXZFUXFaVlhwYkRIcXFu?=
 =?utf-8?B?d2pZUGxZMGcxM3FOdXZBQjFiRGxHOEhXZ0VwbG15Ni8ydWpBVTNWQlVwcmFW?=
 =?utf-8?B?cENFMmhyZk9UV3d5TkVtcGxIVVl1eW5odXRQMGNHRFlRY3V2Tk9RVkZpZ0s1?=
 =?utf-8?B?T0l2QS9OSCt1MUhxNGF0d0NnZCtTMkpjbldnUEdqRzZ3R1VmUEVXRS83TGhv?=
 =?utf-8?B?OWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c65ce02-19e3-45d7-4031-08dcc02b8bdb
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2024 08:47:24.3092 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6oLUWcPmJrpBsIcIfSyTh8fjJq9pQdAdRC8k1YcxelQjeWg6Q1RGGwZUsqZNXD4Ou7vnSh58k6FtYblUDOZo/9AbieflcTHS3unYE7TLlKs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7697
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724057254; x=1755593254;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sgEUtGekB50OZL0gV0A/tvvGUARzK8Ax1601VHGR8fg=;
 b=fQlejTBUll5M2/SeaV5rE21NgMKrcX6RetOpbwgyj2yShf1vFuDItGAw
 KVbnyOFZSyorSiOKeGatFvm0ma1Z185/ayF9eH/SS+elgrycYoxgiwVvu
 ldLmxIhnuLlrv1SRBsJ20G3Hf+EnSn6zf9LIBQ8yGUL51WaqPVslzGye9
 /A+vgEmyct2Qn8fjkKy1N++9Hv/h4MY4HzCT2/kUoUYAwn2PgIM5g5frK
 vUWnRyHRZ1Z6SwSA1KiByjUHkD+ACDK3Oqp3ZVN1cY54Z0lhSbB2lQNJQ
 gc/TXJy1eM+L5JQfraE8N6YxStvUTG/7S4XX9DvH9k7sWG4r+/ns6shul
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fQlejTBU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] ice: Add
 netif_device_attach/detach into PF reset flow
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
Cc: maciej.fijalkowski@intel.com, larysa.zaremba@intel.com,
 netdev@vger.kernel.org, kalesh-anakkur.purayil@broadcom.com,
 intel-wired-lan@lists.osuosl.org, Jakub
 Kicinski <kuba@kernel.org>, Igor Bagnucki <igor.bagnucki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/19/24 10:21, Dawid Osuchowski wrote:
> Ethtool callbacks can be executed while reset is in progress and try to
> access deleted resources, e.g. getting coalesce settings can result in a
> NULL pointer dereference seen below.
> 
> Reproduction steps:
> Once the driver is fully initialized, trigger reset:
> 	# echo 1 > /sys/class/net/<interface>/device/reset
> when reset is in progress try to get coalesce settings using ethtool:
> 	# ethtool -c <interface>
> 
> BUG: kernel NULL pointer dereference, address: 0000000000000020
> PGD 0 P4D 0
> Oops: Oops: 0000 [#1] PREEMPT SMP PTI
> CPU: 11 PID: 19713 Comm: ethtool Tainted: G S                 6.10.0-rc7+ #7
> RIP: 0010:ice_get_q_coalesce+0x2e/0xa0 [ice]
> RSP: 0018:ffffbab1e9bcf6a8 EFLAGS: 00010206
> RAX: 000000000000000c RBX: ffff94512305b028 RCX: 0000000000000000
> RDX: 0000000000000000 RSI: ffff9451c3f2e588 RDI: ffff9451c3f2e588
> RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
> R10: ffff9451c3f2e580 R11: 000000000000001f R12: ffff945121fa9000
> R13: ffffbab1e9bcf760 R14: 0000000000000013 R15: ffffffff9e65dd40
> FS:  00007faee5fbe740(0000) GS:ffff94546fd80000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 0000000000000020 CR3: 0000000106c2e005 CR4: 00000000001706f0
> Call Trace:
> <TASK>
> ice_get_coalesce+0x17/0x30 [ice]
> coalesce_prepare_data+0x61/0x80
> ethnl_default_doit+0xde/0x340
> genl_family_rcv_msg_doit+0xf2/0x150
> genl_rcv_msg+0x1b3/0x2c0
> netlink_rcv_skb+0x5b/0x110
> genl_rcv+0x28/0x40
> netlink_unicast+0x19c/0x290
> netlink_sendmsg+0x222/0x490
> __sys_sendto+0x1df/0x1f0
> __x64_sys_sendto+0x24/0x30
> do_syscall_64+0x82/0x160
> entry_SYSCALL_64_after_hwframe+0x76/0x7e
> RIP: 0033:0x7faee60d8e27
> 
> Calling netif_device_detach() before reset makes the net core not call
> the driver when ethtool command is issued, the attempt to execute an
> ethtool command during reset will result in the following message:
> 
>      netlink error: No such device
> 
> instead of NULL pointer dereference. Once reset is done and
> ice_rebuild() is executing, the netif_device_attach() is called to allow
> for ethtool operations to occur again in a safe manner.
> 
> Fixes: fcea6f3da546 ("ice: Add stats and ethtool support")
> Suggested-by: Jakub Kicinski <kuba@kernel.org>
> Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
> Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
> ---
> Changes since v1:
> * Changed Fixes tag to point to another commit
> * Minified the stacktrace
> 
> Changes since v2:
> * Moved netif_device_attach() directly into ice_rebuild() and perform it
>    only on main vsi
> 
> Suggestion from Kuba: https://lore.kernel.org/netdev/20240610194756.5be5be90@kernel.org/
> Previous attempt (dropped because it introduced regression with link up): https://lore.kernel.org/netdev/20240722122839.51342-1-dawid.osuchowski@linux.intel.com/
> ---
>   drivers/net/ethernet/intel/ice/ice_main.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index eaa73cc200f4..27ec5d8d5810 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -608,6 +608,8 @@ ice_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
>   			memset(&vsi->mqprio_qopt, 0, sizeof(vsi->mqprio_qopt));
>   		}
>   	}
> +	if (vsi->netdev)
> +		netif_device_detach(vsi->netdev);
>   skip:
>   
>   	/* clear SW filtering DB */
> @@ -7731,6 +7733,10 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
>   		ice_rebuild_arfs(pf);
>   	}
>   
> +	struct ice_vsi *vsi = ice_get_main_vsi(pf);

you should separate declaration statements from expressions by one blank
line; we also put declarations at the very front of the scope

> +	if (vsi && vsi->netdev)
> +		netif_device_attach(vsi->netdev);
> +
>   	ice_update_pf_netdev_link(pf);
>   
>   	/* tell the firmware we are up */

