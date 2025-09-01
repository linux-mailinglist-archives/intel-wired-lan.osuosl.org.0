Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5ACB3D852
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Sep 2025 06:43:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D7BC0612E0;
	Mon,  1 Sep 2025 04:43:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5r0T4CmWPma2; Mon,  1 Sep 2025 04:43:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4AEB3612E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756701821;
	bh=AGftXUHF34f9GHHeG7QhC/UPUTfZnvNeAymQuRGt6Kc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BCWBdxc8s9Aa5rx9Wti2at46h3vGY5ng8CIyRm1j+K1xOl4mih4Ty4VHfGTrMxBl7
	 8FhDqUGakCYYyvQq1Dagb4Rxlz45IRLLt1dqCXeYEHHOWPbUHxxiwPIF6AaXP7YHQq
	 v29SxdXcdkqPH/cQNWwul9KDqqvdAk7CzAVFRkcJPl+Jt5hEO8DyDhtPSTUqr3UUWP
	 orFGPLokzc75X0Hvzuohat/YQr7iaRj9ZGK6KFCQfdh5SIkigZYfqKvW7i0T6FLMMO
	 jbbXP4+L++Dh1xaVVq/hLePTugEACIgCySvM1KeVec6aKhLNczsb2kbpJlGaSZ5klh
	 TAOwRrP1Ackkg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4AEB3612E1;
	Mon,  1 Sep 2025 04:43:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7BE01169
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 04:43:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6CAB983E4D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 04:43:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0dxM5qAJ890C for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Sep 2025 04:43:38 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 01 Sep 2025 04:43:38 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BF1E383E4C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF1E383E4C
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BF1E383E4C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 04:43:38 +0000 (UTC)
X-CSE-ConnectionGUID: eu/Q60FlSWemZUYPh1UWQA==
X-CSE-MsgGUID: +2cRNFarRYSS8A0NaLvr5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11539"; a="69600537"
X-IronPort-AV: E=Sophos;i="6.18,225,1751266800"; d="scan'208";a="69600537"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2025 21:36:31 -0700
X-CSE-ConnectionGUID: PiaNybyZQFqFj8O75xy9sQ==
X-CSE-MsgGUID: X7tKmCy+S02kkcm2ldCM5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,225,1751266800"; d="scan'208";a="171658314"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2025 21:36:31 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 31 Aug 2025 21:36:30 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sun, 31 Aug 2025 21:36:30 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.69) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 31 Aug 2025 21:36:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Pi4E5apGL+dTJjdU3mNziyXY8n1iIzgy/LnH7B/yzsSvvp/UQPqZXWHAF3Tm16R4mG5JWRJzDd/9qJbyIwGGbYX06/IMe20Fzkl1/KFpkWgeUTYNJnulSRin5lvt3K6LiYaIFmNVFvF7CFghDP6fXEleqf5WNQ3qebuC4jxo6RTxoCAcbQWA/n8O/m/oqlncujRafAC8CKgfh+BDhqX8y1wyN2tjnzeyCHWFIk7LLVpwi5YYU8xQEAF2QipWB0KLlvGjZfPbeaUX4sXt0iqFQ0KRc+8LngLH2MwPWLM/Nf/51NId5RJH6Zua/1fekmJ/P6mfJfVNuLK8ydQpXilVNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AGftXUHF34f9GHHeG7QhC/UPUTfZnvNeAymQuRGt6Kc=;
 b=W1dub2P37zSF26fxIhnO2wGctUu0hc9tKXGzaDMZotBHI6QpOef9W+zuX9WR9Ysv6Yz4MPe721pniscSsFQbd3b5l1X+5dfl+Y4fm22aXQkQ0qTJdD+EmLvzaDI+3GFDtWRLsAyH+rx9VA9SBcbEqM28F+bQZPO6dTZQcSlYPySx7OfaxJkBRSmQPY1f1COF/ntSpntIdVa3zfJGFKoIh+RJvBEStw6TL+sDrigDEiLuVPjfO5o8lxuTBjM810JyLew8cDzh/9wBj0HnY65AFtgWzejcQHRh+9ta1fbjxFy4mvo5Vfa8ecSNqHgc3bK/cuwFAjA1DdTRNVpgfEszdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36) by PH0PR11MB5078.namprd11.prod.outlook.com
 (2603:10b6:510:3e::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.25; Mon, 1 Sep
 2025 04:36:27 +0000
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::6cbb:604e:d0b9:97a]) by DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::6cbb:604e:d0b9:97a%7]) with mapi id 15.20.9052.024; Mon, 1 Sep 2025
 04:36:27 +0000
Message-ID: <5a80cd22-49d9-4200-80d5-5416a1d78a5f@intel.com>
Date: Mon, 1 Sep 2025 07:36:21 +0300
User-Agent: Mozilla Thunderbird
To: Kohei Enju <enjuk@amazon.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <kohei.enju@gmail.com>
References: <20250830170656.61496-1-enjuk@amazon.com>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <20250830170656.61496-1-enjuk@amazon.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0011.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::19) To DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS4PPF814058951:EE_|PH0PR11MB5078:EE_
X-MS-Office365-Filtering-Correlation-Id: c47580e0-eaff-4552-d7bb-08dde9111d43
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z2syQXhHUjg1VUI1ME5KckprKzZNVlVqVkRQTkRIUmdnNVAzcHNsQXJGV1Nk?=
 =?utf-8?B?bmtQNXAzakZld1A4UW04eW56M0lTTFJFU0ZqNHVkUTdTQ3U3Ty9rUFc0MjAr?=
 =?utf-8?B?TkNjeGhqaXdjdndQaUpmSnJhbUh6YjZRVGRLU1RtSjdzQUdWRFBYRzU4TVZq?=
 =?utf-8?B?QmkyUVJCdkJJQ250MWl2WXlMWUl2ckF1cGJadlVNdjJHMGtNYlpZVFlsWHlG?=
 =?utf-8?B?dHluS1E4a0dWT3lkN2Vlc0xVMVR5bjRhQVFZZTMwc25KTHV3VHROSk5rcHR3?=
 =?utf-8?B?TjZKNzFZcGt1c2N1VVRVM0srZ05XMTBnZGFBcG9aMDhEbHhjT3NoVVkxOXV3?=
 =?utf-8?B?cU05VVM4MEtmbHpoY0xPOVRPbjJGZnZpNzJWM2ZselU3Mkp2VGhjRjFLL2VC?=
 =?utf-8?B?OVlsU3BNTU10NXhveXc0OFEzbFpraC95OUVUeVByQXpibUpsNGNvci9kaG5h?=
 =?utf-8?B?bmZIN1lSNjk3ZWttTHA0VXZvVTlyMGl2bDgvY2RQaGhoWlNTZk54eFJSUnA1?=
 =?utf-8?B?ajh2RFJad3ZJclBXMkZ1aW83Ym9tMjNVVnJsU2tMWjBBQnhkZm9tMzUxQ01C?=
 =?utf-8?B?TWQ4TE82ci93b2pSeFRnSjA5NHZrZnhDQ056ZzMyQVQ0c2lJQ1ZtQXU2SUhH?=
 =?utf-8?B?VlpNbmc0b1lCUXhQYjJkYlFveWFBZ09VTmxKTEhHVGJSSEVrM0k1OVJCV3ZB?=
 =?utf-8?B?VWVxYUtVam5PUHB0Nkp1dnpFVThWdkVRMm9sS2o5V2Z2YVcweUdNNjFZa3o4?=
 =?utf-8?B?T0dyVU9rdW5jU2lSazI3MWYzV3o4dXVxaWRmWFYwcWxEQkliMVBJZHc1ZlVk?=
 =?utf-8?B?S09BWFhIVXVuUndvTisxMko2Ry9KZ0twTHlaOEpwSFlGZjBjS3ZvbXNiWlZv?=
 =?utf-8?B?NlpEZVJNY25QTlMyL0hIcXRBeDBTWDVmMWg5MSs5U0tZWlBqMUl2WklxOGgz?=
 =?utf-8?B?dDlZNGQ3NjVzNnVWQjlzODFoaUFtdkJtTTJBakRscEdxa2xzU09BS1hVaHhu?=
 =?utf-8?B?SmtCa0llZStIdkVTK3lBTG1EN1BuRDJFK2wzR2s2Y20zeVMyTnZKbThXREpF?=
 =?utf-8?B?REM1WVo4RFR0aHB3UmRYZWNqU1kzMEZSYk5sbmNOdDdQWmpwckZoNWhiamVj?=
 =?utf-8?B?Slk2VGN3elVzcDFWZ25kRm9rMFdzMTF4MVlrWXRNM3J2MVRWclp4cG4vL05O?=
 =?utf-8?B?SmxUdTlQWDZqbXoveWt0d2Jvejd5SkpjZzZjQ0x0dlhoY2V3SWlWMW8vS2M4?=
 =?utf-8?B?cldtc2I4ekdPV3A2TVBwWXBJeWVxdEgwU01HQzBMZ2VtQ1hHakc4Nk9xKzNn?=
 =?utf-8?B?cXg2S2d1WWFXN2pHeXk4Yk94Z0NMYnpwOVIxTXZsUzd5U085N2RwdjArYytE?=
 =?utf-8?B?ZmtURWdFYzhFQXpTWkZkckVNL0l6Y09aRHM1RHo5eVdXa3ZvcDFJbVJoUTZs?=
 =?utf-8?B?THZCeHFzYVowRTNYb1RCY25UV2hOUm5ZRktROGtrTjI1WnMxdVJwVHEwLzF5?=
 =?utf-8?B?TzlSbCtQZ2hGRDRaZzZpaFhkWFppVUNFck9Hd1VHM0ZneUNQTXZLOU4rekRY?=
 =?utf-8?B?T3NvZ3JTK3JEU3h2YTNnaHUrQ2dPYmVtY3ZCSFVJTFJrelRlSEEwK01wVFZz?=
 =?utf-8?B?QTZPeUZZV1RUQ3JSQitMN1RmamQzUy9TWkpHTVFucXFxRzhNOWszanRIU2hX?=
 =?utf-8?B?ZVptaEJkaGRRUVloWkFTbU9CRXROZGlKNlhkbytJSkI1R0IwZlIxazlJeDhX?=
 =?utf-8?B?eGNaV0JNbnVJYStLaE9mSytuZ254b2dmYUpQcm1LVm8wbUxYMGp1RThJNjJy?=
 =?utf-8?B?NzBobzhsUStjWnJJVlNoODhxUStNVnBwajhEa2UxYnRYZjF3elRic0JKRmY2?=
 =?utf-8?B?b080V1pKN1hML3dIaFp1Slp0QWdOZDJHZTN6L0k1eW1WYU5yeTUxcTF1UE41?=
 =?utf-8?Q?z5B3o9xg/Vg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF814058951.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aERrNkNYeHFKeU4weDdQbEVsQVhCWGdKWVNGMGNuRThOK0lBaCs0MDI5VDRD?=
 =?utf-8?B?ejJZdFlHbWRhZjJwQ1hPcWNwT003dFkyMmFhcFRhd3Z4a0dITUFnUENYOCt3?=
 =?utf-8?B?M1NRK3lVYkRkZzBRWklxZnZYVmgyMVY2UGc5d3VwTW50VzVab05qVVhQbDJp?=
 =?utf-8?B?RWY3dEpxMXBEWnBSam1wZXFLWE9zSUhrNXdwSzV0NlowMzRzWDk0Q0RmaUhI?=
 =?utf-8?B?TGFFdkU2TmxJa0ZjanBUaFl3cUtlTDlscURpalcyVE9SQWN4WllYMU5EcFlu?=
 =?utf-8?B?TzQ2RnVuQUYvaVBsK0ZDZ0pWcWJQZDVPUWxWS0V3SFlJOVMrWGlRaFR5cTdI?=
 =?utf-8?B?blF5Mm1nVGNXdFhrV1Y5dGs5MTRzTDlDM25uUzB2eDQzZ1VCaDloaFBIM1dz?=
 =?utf-8?B?VEcrbEdBT2RCWm9GZHljYW9KZU5FWDI3MnY2UFRUSkduZW9zNHVwazVPNVRR?=
 =?utf-8?B?U3dJRGhraHdQZU1kcmkxc1cxYXdDNFZ4NVpxaEVaYWpHblpQV2lrS1dQMHpn?=
 =?utf-8?B?cDdLTytnUkEvVHRpZHord0svM25tOW5mVWtnajBpN1dxVnU5MTlrWG1TMStU?=
 =?utf-8?B?SGpXZmdKTThCVW1wVnRqNkhnWXBQV0ZEc3ZYZmpnN0hpaWU4RHNobW9qY1pv?=
 =?utf-8?B?Y2crQnZBejVjZHBJNHNRaDc0dDBITXdNM245aHVCbkxweGJSSTc4c2tEUUxr?=
 =?utf-8?B?b0JtU1dIRzdMV3lPcDBqSGpXNTJCWExSRmlGdTY1eWljSGk4Rnh1OXhoRWM5?=
 =?utf-8?B?TTlhZzVXdlRpcFh2V2RTZ3F6M2xRRXRpUkVNSHRaRzFRaFdINkJ4MmVoV0Ex?=
 =?utf-8?B?L2xrRkNEeERFK1djbHQxYmJCTE0vWXF3WjdDbitKS2FpVS9oTTAySENCekNk?=
 =?utf-8?B?QlZBTDNQQXFEaE45OTA3aVIwNG92RXh6SE1YdmEvZXhZM2NFLzJXSWdmVDRa?=
 =?utf-8?B?bTRBa21xUk42dDhibjNLdnRHK3B0VUxWVU42WENPYy9ybVhyWW03Z2E5dTlO?=
 =?utf-8?B?d0N4d0sxMnBTdHhKM3J2R0tReUFYWnFhZ2RCZVRPWnpGUDJYYnhDejJ6QkF5?=
 =?utf-8?B?bG80bmwyTzl2Z05paGp6bWgxTnM5VTBqM1VlR251MUhobm5lV0MyUTNHdG1w?=
 =?utf-8?B?YjZSQ2trSTJSZ2J4eWR0QlA2eDVUSUhpOVRTMGVFM3JWSzhaUkRxZklnbStu?=
 =?utf-8?B?eGtyOVpnOHR3d0NrUzJjQUxLSU5iT2ZJNFZhTm5wUnJSS3VsYjNIaFc3aGlp?=
 =?utf-8?B?WWc0Q3lhRW5rejF4VTR3ejZ5YUh4OHFTYmV4OW5PU05WUi9WbkI1L3ZVUXE2?=
 =?utf-8?B?cHZHcFNyTjF1c1gyakg3WVNGOFBYVGM5b3gvNHR2N2FzdzNBU3RjdnNDSzIr?=
 =?utf-8?B?NzFXYlZmU3doR3htbDIrYlphWkxQOXlZdi9lRXc3blg3NnpYdVhQdzFhR1k4?=
 =?utf-8?B?MHkycWpzU0lIREhXc0xiK1pVbFFHZVczQjRQTVUvbjhWaFBsK2c2UWEvbjEw?=
 =?utf-8?B?Y0tlcFVBd2N1cE40dE5MdTMxVzVEYTh4L1FaUWlPa1l2MHh5cjlHSGUwamNu?=
 =?utf-8?B?NmgzeGZGSHltaHJYcVZ0eXFXSCs5MzB5SnYvN2NyOEpwbmRiQkt5dU1OdHZK?=
 =?utf-8?B?RU0yNTljM0g0ZnVLN1BadXhQWFkrYXA2c3hpcjFRZFBBbFE2WXdHN2RIUFNs?=
 =?utf-8?B?aXVuaGZKT2FlYXJsb2VCYTQ2OW03Q0EzYkVWSll0UWNQV3ZRYW5Vc3JOYkJT?=
 =?utf-8?B?U2FPU2ZDSmlCNEZJcGZXYXg4OGQrVXhENzE3YnJUVkFEN0NNcUpXY0lNVHVv?=
 =?utf-8?B?dVdDYXpBK04xTnVZNXJNeFl3VStNYmZ6QXBlS3ptVCtVdVozVFFzRWI0dVFs?=
 =?utf-8?B?b24wUHVxMTVwSWJmOWtNbkx6aCt6b1o4bllyRkRXYWZTVEVvUG9HVDNyZUtI?=
 =?utf-8?B?WUNadjZDTU1WSk5tTitTS0ljNk43OU1FME4xNU0waXRCNlVjdlM0OXAzckR6?=
 =?utf-8?B?SVZIZGVLUkdTWlVEd3l1RkFJbzhiVi9RMERiZXV0N24wNVVTVE5ObC9iZVZn?=
 =?utf-8?B?WmFVKzErVklSYTVDWXNNbmNKRFFESjhsalVDb1VxVHlyczVjQjF5bnJERnAr?=
 =?utf-8?B?a3dNOWlFdzlyajRrazZudDgzQW9aQW1xRFc1cVJ6Mk45QVY4QWorZy94WEh5?=
 =?utf-8?B?ZXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c47580e0-eaff-4552-d7bb-08dde9111d43
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF814058951.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Sep 2025 04:36:27.6345 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dYyVc8ZvyiV31N5En6mCyritITRvV/FBab1WFG2qHCI+HvQJbEISxaxrvleuQnXlCwfqoHUXPJhmvG+gAmIBh3P4q8Yu6i0+O/GDMzFoNfM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5078
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756701819; x=1788237819;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KtqgmwChDN7JyNtOETL6jAZc6IvQm7ML0IGEP/Jf0VI=;
 b=ZnU/kohwL7sfHYsqTX74UeTw4jlGOpcRsCsU3LlzSEOESobWKZEBHVMI
 F/b0+EzN0sIS5MrKpk+7g/Sniw6XOFGvIWARfMrScAkPvxbSzhzYe7Qqh
 TwtilCmhXXHcMryaNmj4f+AycaDVfkHhhlTqBLV+jFmuhndiOYI3N4sAQ
 u71Ay0axkyODZDcn7OK5gOlBaGdTR2YlpzduhSGZLTTzX2HKqW/xZjY/d
 IkYIFjnM7VGsz+OFGFSZtaNEK7yL1+XUru6iuky8o5N+Hb2dpse9ZdB4z
 fmktthOtgO3gcr+EdgZhIU9wUP6cc9yZ168hCF3o/qjXgGyUePJ+Mrjs5
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZnU/kohw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] igc: power up PHY before
 link test
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


> ---
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index f3e7218ba6f3..ca93629b1d3a 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -2094,6 +2094,9 @@ static void igc_ethtool_diag_test(struct net_device *netdev,
>   		netdev_info(adapter->netdev, "Offline testing starting");
>   		set_bit(__IGC_TESTING, &adapter->state);
>   
> +		/* power up PHY for link test */
> +		igc_power_up_phy_copper(&adapter->hw);

I suggest moving this to igc_link_test functionn igc_diags.c as it 
relates only to the link test.

> +
>   		/* Link test performed before hardware reset so autoneg doesn't
>   		 * interfere with test result
>   		 */


Thank you for this patch.
