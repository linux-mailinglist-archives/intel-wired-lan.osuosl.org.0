Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDC994BCEB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 14:07:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 930DC60A90;
	Thu,  8 Aug 2024 12:07:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7HQMAjExNxVG; Thu,  8 Aug 2024 12:07:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CEE0660A92
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723118839;
	bh=r6dAaw5c0t9O2bFkUL8m+fB7POcWZiLmUSZGEFeXsmI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=phKgTGBWQ60dBaaiNcS9RgU7mETuf4cMSNpQkz0yihZ4yT/9JQBDVvA0a7221+SBB
	 ze7u9jyiaQOZP2mqYrFY45Gzce9BZlLAm9OyaqHMBGzHEditgAZ1NNzRQtaIBIuSks
	 A137veFzR8d4inxal52vQ0JAinziuMIaGTHZc35LIrR6JS6YtKN/6XRXSyR6+/F0lH
	 DJFnh8iO7ZCLcKdBi0fAwZPlU9n50uwAdyVnd+ETT3IupNy28ME8C/4IxeeD+79Vca
	 IHWdqTkUjYS1akBZ9FT/6+JVkFJbRPWKHRB9Jeb03k5fwd+iEq5u5yFrO+eOX38qpk
	 7mU49EaLbllNQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CEE0660A92;
	Thu,  8 Aug 2024 12:07:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 800361BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 12:07:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6BB1F40DEC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 12:07:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6yP1q14vt6qw for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 12:07:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 503BF404A3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 503BF404A3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 503BF404A3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 12:07:16 +0000 (UTC)
X-CSE-ConnectionGUID: zfGW8kjYTu2NpA3abG7gTQ==
X-CSE-MsgGUID: 2UdlDxQgQmWMQP1fV+73Lg==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="21209263"
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="21209263"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 05:07:16 -0700
X-CSE-ConnectionGUID: jEBhXYkPSY+tqqAGqttH4w==
X-CSE-MsgGUID: K+xL08rcR0OxBXt+yEGxVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="87845510"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Aug 2024 05:07:16 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 8 Aug 2024 05:07:15 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 8 Aug 2024 05:07:14 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 8 Aug 2024 05:07:14 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 8 Aug 2024 05:07:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TyLvHxyT6tjr3eAGIQrUwQBL7CGL3fthtkQFbW2grzVCjwZiRIwvXGWToPY6oamI90si5rtVvjU51c+4B47lR8tX3+t/c0iI1ljlL6qAt0o1lhXOwgjN8IF4YakuMcC/mOuxL3dKR/AZ3ZQWwhgyIImsKT04wlUJTzPbLElFkpc/7J8JKiz8RxlDA0I0E2wmaaPo81qDWOD4ZhaM70Eq3523IuO9d9O+LMGll4bRRvXol1QzMJeCpExV31lY/pfD3te6kioNfovhx54vX1CURLxdK/IONj1SMmTzAfAFXW6/AgKEJqvDYxz3313YzXDxN0aI5876/e2EoCefnXrShw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r6dAaw5c0t9O2bFkUL8m+fB7POcWZiLmUSZGEFeXsmI=;
 b=w5oAgmBw4s8R418UGgn9tF4JwAmDyERVZAAAL5W0ts1tv70cbt3ayUTcVHNCzLT29c80Q9r3RLQhG8Q+/FBytmv/DWwrwowDnM9MMZ0Xs5xekdU7yN97PkbYd/OS8NMXpBokze4npZYfmkfpAE5ffiuzCNQ8j7zPBss0ptR7u4ae0JVQlU34OPn1rcRNYx00cn4wf6BSup0089Lkqpcn++798f947J2HU6KO6uMFCm0tDnUXoJsUA5caniSszd9PE3/6DBxn56/oeui2+OOYv2Xew7yUI7lwd9CpEV9SqbGz008/XG+Qfe9aIy5zKQXhLjvVAL3igOwDwg9WSJrAdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SA2PR11MB5065.namprd11.prod.outlook.com (2603:10b6:806:115::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.30; Thu, 8 Aug
 2024 12:07:12 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7828.023; Thu, 8 Aug 2024
 12:07:11 +0000
Message-ID: <58d65032-19a5-4519-9494-1919c9652ef5@intel.com>
Date: Thu, 8 Aug 2024 14:07:07 +0200
User-Agent: Mozilla Thunderbird
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
References: <20240730091509.18846-1-mateusz.polchlopek@intel.com>
 <20240730091509.18846-3-mateusz.polchlopek@intel.com>
 <12a5b7d3-bfc0-4885-a6b3-229ff3f513d9@intel.com>
 <481ef288-f11e-4f89-933b-94bc723ea2eb@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <481ef288-f11e-4f89-933b-94bc723ea2eb@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DBBPR09CA0023.eurprd09.prod.outlook.com
 (2603:10a6:10:c0::35) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SA2PR11MB5065:EE_
X-MS-Office365-Filtering-Correlation-Id: 4309c234-1334-4a29-a75e-08dcb7a2a25d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TWdmV2xKNW5aQzFjcVNJd3p0RTV5TXlCK1c5bE96TldBRFpVZEZoOW1YdFVX?=
 =?utf-8?B?ZE9yOWoxeHl0T2NudDl5cnRtdVl5Q1JGczhDTUlxS0dGbWtlZlh4dEdTZHQ4?=
 =?utf-8?B?bC9FMFduMkNlNWJUUXRaVjFKVkczQ3NWeDJHZWs5eFJMYUFKKzBuQ0lXZjZx?=
 =?utf-8?B?VXVZd0hWQUFJcFBiNXBmbkVyN3prS3NydTFqcVhiZ080UXBIcGZ4dDJML3NC?=
 =?utf-8?B?YURKNmNxZmJKNklzZXlrUk4zTGdzWkc3TWJuaUFYUEw4d3NSSTVtZGFva00v?=
 =?utf-8?B?NEI5enh6RlZJeEFmS0MwUEZpZlBQZVNRdmJwQkdZVzNNcUpITzhoMWpYVmFD?=
 =?utf-8?B?VVkyQkJkOU50U2NnRlhQM1poSFliTTM1WklMSmdWdnMzVmxXQTczbU5EeWwv?=
 =?utf-8?B?K3A1YXVRU0VTbFFsZ3pGQnRUa3NYb2FKRk11SzVnZGtlUXNaNmxZdXVIVXpY?=
 =?utf-8?B?QUxEeTJBZlc1YUtSS2xJa1NvNWVvMWtXVjRYamEwZWkvNnFzSU8zalBXc05m?=
 =?utf-8?B?YmloTVVoRnpvTW9aTFBuVmhHKzl3ZnlJZEpGQlcwa0ltbXVHVCtVTm5RVGtU?=
 =?utf-8?B?Nkpuekw4UmhnZUxHN3MvNGJnSlYxNElEOVhCbTEwTUFqS3JBRjdhMTNHeXRu?=
 =?utf-8?B?V1lYM3lTaDlZdmVMTjkyTW1jMVhtejMwMlNYOXk1dFRUdkNtREs2MVVpRmZk?=
 =?utf-8?B?bUwvS2FGTEpDbW0vTUNTUUJmWFZxSGt6Y2xLMit0eGhQcHcyQWlYQy9aSjFR?=
 =?utf-8?B?T3ZQTkZ1OHJ0c3NUUnh6dm1ieVBxc2ZDZE9KaXdENzY1cWVBZG8xSldYTDVs?=
 =?utf-8?B?TVV2MUMwbXlORmRsWWxFTUFORGxoMlZPbUVWdG8xRXZ1TktnRm1IMlF2djJF?=
 =?utf-8?B?ZnJwY0Y3S015Q1p3VWJmVlFBNGJNNEcyVkpXZ2NSNHMrVU9CcnQ0YXI3b3No?=
 =?utf-8?B?VXdQT3BnSUIvV1dqQzJ6SElMbFpEcmZKQzY4RWxwdzJMYzhKZlN6QTRKZVVk?=
 =?utf-8?B?SDVIT1JNcDkzNUtZSGdicDJISU01VllnU0ZjdGJuTHBtT1dwdXorT29TQ21X?=
 =?utf-8?B?VXFUYzFMTTc3N3YrVStTVlZIT3NxUnpxR0dPTCtVQkZmaVRmVU9XNHJJVVhD?=
 =?utf-8?B?Uk1UTnc5NHdIeFAvZGU0UEQveDJjcE5XSm43ZW9rVzhCMUVhU0xPZzFOM0J4?=
 =?utf-8?B?NEJLeTE5SWVWMVFzWlU3akZUeFNWaVN6VmFkT0pvLzhLZ21YOEdlTE1qZ3Mx?=
 =?utf-8?B?Rkxob0JYM2FqamFKaXYwd2dMOFRmM3hpd3MvVVRBOTNqVkx3MGhVNVdWVjdo?=
 =?utf-8?B?MEhIQlk0THljZkhRc2JjN0hiNHMzQ282aHlUclNGZEoxTENIQTR2VEdPSUty?=
 =?utf-8?B?Q3hBVC9nVXcyS0tzcjMzeFF6SXFib0VZVlpFdWdVMUx1bEFFb2J6djBuemFq?=
 =?utf-8?B?bFZNaGhUbUhDNlljV2tCR0k5YndRZE5nbWw5YzdLTFFsMGlpYmk4NTFXdXVI?=
 =?utf-8?B?aGFDdUoyUlVTVmg0dGpHdnF0SG00Y21QeGRHeXpod2tjOFJDRll6S3VyNE9D?=
 =?utf-8?B?STFGZlFldEpFQlRaVCtPRzgyTmZNai94S3lTYktpbkw1Y2hTK21CNHp2ZTYx?=
 =?utf-8?B?WW5vYXJFMnBGZEN2ajdTVmtFaDJlYUlLUTZtUkpkOWNjQlhlUVU3U3NmRGhP?=
 =?utf-8?B?N1diWmY5SjhXVFJ1VzI3WFFNL3lwQThuWW9YdVdjM0RFUzkxdktaZ0JHWmJM?=
 =?utf-8?B?K1dnMmJvTURVaGhYendSMlF2WWxQM2VLRll0Y0dmUW9mWkRMOHVCNmFsMnBY?=
 =?utf-8?B?OXBPWWJZQmtGRVhsbmNTZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MnYvTFlBcnVNUC9JWHkzTjhZcmV6ejJnWFhwSkxXSjdvVXpzdmYvUzJWMlM0?=
 =?utf-8?B?NEZsNzlpcndYSDE3NTY2Smg1SXhrZC8xZzA1TktrWnNrb0RDdlVTaERvMXEv?=
 =?utf-8?B?MW9GYUszeWJ0MVVGSDh4N3czcytnOS9qTGFOQ2tvbWRxdnVxQThpK1l2OTJ1?=
 =?utf-8?B?UDlabW9SREYxMWtpNzU3MlN1bDFya1RmYmRPNVhWdUhCZDFHQVErV0tLbzN2?=
 =?utf-8?B?ejVUcUJmTG5xYmJhcko3VXY4V2RjOU1TOVV2Nmh4Vk5YWkhjVkVLZnFIajg2?=
 =?utf-8?B?bURXNGxYUC80bENiUnJuaStKZ0pwLzVSZzBiNXRmdnBTOUJ5NGFpTXhQTzVL?=
 =?utf-8?B?M2t1Rk50cGZNU09OS0htMUNLa3lYR1dYb3NlYXBrdXo3SURCZmp1dm8yUG95?=
 =?utf-8?B?ZDVTNFdSM3BPUXhIRGpwV2VIVVROWGlYclFnWWtyTzRDQit5UTd2a295V2Jp?=
 =?utf-8?B?K2hicWpJSzRsUW52c0tLamo4djRtVlQ4NGs0bEdOTzErYlRWMHd6N1lzNFBw?=
 =?utf-8?B?NkZPQThKU1pIVlNrT2VoQy9qcXR0T1FHSmxmWVUxb1pPeE9LTDlkdjV0UnRl?=
 =?utf-8?B?MXpoV3FVTWh4a0FpM2FZYUhkdVBRMGdMV3BFM0dlMmQ3YWRGbWEwVnY1cDUz?=
 =?utf-8?B?THNzcEFoampBTzFjZnNiUWFyL3NTZGQ1VTFlcUUrT21UMldmMkpJUjFyVzRC?=
 =?utf-8?B?cWx2R3pYeW8wNjc3SUMxM1czVm8rN25yYm9aZnUya05pN0U2NGtUWXNEN3JR?=
 =?utf-8?B?LzRTa0dvSm9aWUFvL1FYNHo2Q3pUZUlia3llbEpGZWgzWFpXSmhvN2wveFNQ?=
 =?utf-8?B?RFM5c3hjaUE5SXI2UkdRVE5XcVlZR1NyZ2FuVVorSU04VE9OOWp3OEdwQ3Yz?=
 =?utf-8?B?QVB2TERKRGdoR3hOMTFZaUFqLzc4Z0g2S3dtVnVKWEhTb0JFTlA2aGpSalFO?=
 =?utf-8?B?ZlBOMkdhZk0rMjJvQVU0WXQ1UGo3T0lrSW10NTlqVTVYQm91RDdISzlFQmNh?=
 =?utf-8?B?ZUVqR3IwWk9QbmxqalZHRzRFOXAxT25YVnQzaG9TU2t6bzdTSVpJRUtzOXJX?=
 =?utf-8?B?cG1udmgzUzh5d0VJc2hCcnp5VHN0N3MrYWpXQVFmRENXSGQzdS9DN3Zvb3hK?=
 =?utf-8?B?ZTdDeGZrS2xodUhDZ213WS9oUmI3dk9UcWprUWRhcWxsMzdMT0R0UjJ4TFBV?=
 =?utf-8?B?Q3JDWXl0dEFOU0lVSGcwQmR0OXh0NHZkTVN1NWRwcVdpL2xXckZRb1RrODVt?=
 =?utf-8?B?dDhmc0p3MDVvbysvU3BNRVBwV0J1RVB6VW1ZS3I4MlluUE4veTRVK1dxMU5V?=
 =?utf-8?B?bkYxTmVaTU9SQXdERXgyN0xZeG5td0lPVFNzaGs3ZG1tNjQ5dC9LcklPWlNw?=
 =?utf-8?B?Ny9YZ1RrMGo0S1hCU0w1T1ZQYzh6dWg4cWptckJJLzZJZUhrRitPbVVtUjA3?=
 =?utf-8?B?QU1GYlFGdURPQ2hJV2hYVHZMR00vRnFyVnhveWtQNzMwNk0rVTRCajBjTVdy?=
 =?utf-8?B?R2wxR2YweDV1RjE3clc5NkhKRVRRMVJHc2h1REtIdHd5RXRxSFhjbFZBY281?=
 =?utf-8?B?ZmZON0J4dTR5V1QzaDNxbzhtM3gvN3ZwcCtNNUtVY05NZDI0TzRCeUNOUjY2?=
 =?utf-8?B?Rm1xRG9mS0lTQkoxdGNtby9VTXBiVFFNdWMvWnZOaWZtTk1qSDdmOFpBbEdU?=
 =?utf-8?B?R1NwM3l1YUhIT0h5SDNac1A1UlYxOTBObHhhaXBJQ3daVkxVOUUwSHZvbUd3?=
 =?utf-8?B?QTJZa0NkQ0d3Y0ZUWGk3aXZxQkxQZCtkV1ZUN0tzS3VMZ3daei9EVDdRNUht?=
 =?utf-8?B?WmFFUXdOdFFhOHNDTHE5aUJHYkgwV3ZwWU9VNXJyT1B3OER5QWE2WDhXeVVF?=
 =?utf-8?B?NXFSR2xFSlJCSitiV0hwQUpzSHNrdTNNdUpDaDRBU0RQSHFlek5rb0Jtemd0?=
 =?utf-8?B?c2xTZXNFOE50ZkY2QVNPTFBiVlZBaFAyTlhNbVNJM0IzNlNDcHBwUkFNaUk3?=
 =?utf-8?B?UnRmenFvOTN3b3BGWWZ0SktldTI3REFSQW1ETjk1d1VFVnlMR25OUUV6Rk1Q?=
 =?utf-8?B?UFpNaXBwS1NZUnpoRU1jOVcwWXFtSDBWS1djV3dMM1ViMDJmbDRXdmloVURy?=
 =?utf-8?B?RWpqQitNcUZ3cFVFRkRic05scEVrY28yZzRKRHhlQnZQbHRPZG9YOWVSNFFB?=
 =?utf-8?B?N3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4309c234-1334-4a29-a75e-08dcb7a2a25d
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2024 12:07:11.8532 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d3gkWBDSq1FnaLsNCm2uX5KvqYgK62OgVns+9ezXLnPYuB5rK0zI3LBAOOqGkg4Wlif4/m+cUjl75lps/R02I4Nlr//99eN7UHpOpR/lu2I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5065
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723118838; x=1754654838;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=N4j9JjQQir3suH0UsBU/qNMBE8O9phfaHJBfyscoQ1I=;
 b=nt1IWkTGyz/XpeiLlu9B1SZz3I1umi0Sls/bL8SNsTNqD4ZOvvcN6XHK
 58DMjxoa6H7EErI3H5co54c3Pci2np0E+jACbb9CGdN8di6atjY6GiWE0
 RLkqWPexxeSJAQZtcvQwNPjsyzPtb2oxx0xyDSF2UCBwokk1wLl1k4A4R
 LdZ5bCKGrJqQZxuHf56aBCG5ftXpSpcPS59hlihsfHS7KSghYClKWoJMD
 6eIWodbf2xl09yAgCiA25yiPDcD5w/0+YSjrJxAJFUV3YTnC4o9GgtUe8
 4UPg5Ujj/aG+3PXLYw4oJgBvQu6kE2gCKW6MwfRe8hJgUvqYIcjd+t6aM
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nt1IWkTG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 02/14] ice: support Rx
 timestamp on flex descriptor
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
Cc: Simei Su <simei.su@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Wojciech Drewek <wojciech.drewek@intel.com>,
 Simon Horman <horms@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Thu, 8 Aug 2024 13:04:14 +0200

> 
> 
> On 7/30/2024 2:54 PM, Alexander Lobakin wrote:
>> From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> Date: Tue, 30 Jul 2024 05:14:57 -0400
[...]

>>>   @@ -3788,6 +3799,65 @@ static int
>>> ice_vc_dis_vlan_insertion_v2_msg(struct ice_vf *vf, u8 *msg)
>>>                        v_ret, NULL, 0);
>>>   }
>>>   +static int ice_vc_get_ptp_cap(struct ice_vf *vf, u8 *msg)
>>
>> @msg can be const.
>> Also, I'd make it `const void *` or maybe even `const struct
>> virtchnl_ptp_caps *` right away.
>>
> 
> I am afraid that I can not do that in the scope of this series. This
> touches virtchnl messages and seems to be bigger code refactor. I think
> in the future we can think about redefining it but not in this series

I mean, just make this function take `const struct virtchnl_ptp_caps *`
instead of `u8 *`, you don't need to refactor VC for this one. If you
then get some "incompatible pointer types" warning, just cast the
argument to `const void *` where you call this function.

> 
>>> +{
>>> +    enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
>>> +    u32 msg_caps;
>>> +    int ret;
>>> +
>>> +    /* VF is not in active state */
>>> +    if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
>>> +        v_ret = VIRTCHNL_STATUS_ERR_PARAM;
>>> +        goto err;
>>> +    }

[...]

Thanks,
Olek
