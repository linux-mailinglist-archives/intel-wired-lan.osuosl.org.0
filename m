Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 412F994BE16
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 15:01:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EEDEF60ABA;
	Thu,  8 Aug 2024 13:01:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6o-GoPlpwVmN; Thu,  8 Aug 2024 13:01:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6754560ABC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723122065;
	bh=HtrP5AkQc0T+iEK5iJP9KFbQjL3j/XCTiZnn9SIabbc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QlMKqN9/mFWzHHfLw1TTG84DyXAAl5lt+699NnSZjvWIF/8oO2KEChYxrbriMbz63
	 az/6lcU19YjWt8zeTGx31ljwoLeX6TBHT1vPtDynRnt95D9xnjWg0PQVV2F0vxOao+
	 6WNARW2AU43vtS1yh+YjNoZHKMr6noMMF0PRWgHguRxnCPqmeMdPO0XjZB8PkW5ja1
	 dKEMWF19x2IWo6lgNQLbItH0Q32IouQzKge/zdeObxhyn+Ug5UyzVk9WAd//WWHFo9
	 kbESDXkgvQNA3SmqQQy6mVKKRzfN1f2pzJfXHjf7Kimhi30Po1bJvjSgaK+NlX8Ie7
	 /LsR4iRHpfpKg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6754560ABC;
	Thu,  8 Aug 2024 13:01:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7B7471BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 13:01:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 67F7660A40
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 13:01:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rs6P9-2nHNfT for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 13:01:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3781160593
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3781160593
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3781160593
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 13:01:02 +0000 (UTC)
X-CSE-ConnectionGUID: cdqDeTmzSS2X88UMvRWQ+A==
X-CSE-MsgGUID: QH8WV0GHSDqb9fMMsq3BjQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="38751240"
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="38751240"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 06:01:01 -0700
X-CSE-ConnectionGUID: PPnqZGGsRfeIEEl1ZAXzNA==
X-CSE-MsgGUID: /T1MJ78cQV64xCEzfpcjfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="57303574"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Aug 2024 06:01:02 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 8 Aug 2024 06:01:00 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 8 Aug 2024 06:01:00 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 8 Aug 2024 06:01:00 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 8 Aug 2024 06:01:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FfzBe3JmxJY/fP0T6hjNX1juxqK0eo+VQ3IrU5NbQ8/fN+ytJtVQz4VS0P9GAzPzCu4B9f6WekB40Wr7pau6Yotv3aSyFxQXpqxFF97QoRt+PdTULfdZnFvE8AJuZYwNksy/VaAPv81Mqc8uycoulhliZZYk9TxytbVyG9Cj6A5frw3foD+/X8fe0vcZv8FJqtdrLcwQgZRw2ShbsbGVw5Fsavwivgp5ymUk8D5zASB9kOxf100senxEjA+f5QFTwA5Ic7mV57OFeo80nfutQHie4m4lGJ3BhjQwOTWOo1z1atHWqSbw38lCCF1dXB4xP3u/jf56d4yTjZ9U0jN7Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HtrP5AkQc0T+iEK5iJP9KFbQjL3j/XCTiZnn9SIabbc=;
 b=rYjtwiaZfNZd9Wq0znas1pL+wtdzV1IC0gja8mD7LKLLf+x3lqP2P5VPdsnxrKikhj+H4HYFv9NNeahqtZ7zjdGazSqlJ2it8beMMpA8iTPFiF1B1Pl3LMaRG7gBTq3rzFIiKHSCHCe987BnxI5zQNSKD+AdLMtzp8zGxUFm5zEV8uIj8qX3OclDv7mLXbgKO+bDlWtORPA9DydTkA9TKxHvqOkh6tcZ/4ACBvyvyB+5YtJ7Z0YWWNUTfN+Get2RvlcDcvca3UDXgQIGqlKXM3aFcJx6+GBZ2NwfZ6EfEueEWc0TUxzxgCIzV8bgzRultYv2VIrOHxcBEBnGiAT+bQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by BY1PR11MB8127.namprd11.prod.outlook.com (2603:10b6:a03:531::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.30; Thu, 8 Aug
 2024 13:00:57 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7828.023; Thu, 8 Aug 2024
 13:00:56 +0000
Message-ID: <52af8b88-8814-4861-aba0-4bc726c95740@intel.com>
Date: Thu, 8 Aug 2024 15:00:52 +0200
User-Agent: Mozilla Thunderbird
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>
References: <20240725093932.54856-6-karol.kolacinski@intel.com>
 <20240725093932.54856-10-karol.kolacinski@intel.com>
 <ad94e165-ea7f-4216-b43d-b035c443a914@intel.com>
 <IA0PR11MB838091A67C0AE3598BFCDF8D86BE2@IA0PR11MB8380.namprd11.prod.outlook.com>
 <e54793ef-f81c-447a-8cdd-bed97df65f2e@intel.com>
 <IA0PR11MB8380B6EC30AC39EAAC1F480986B82@IA0PR11MB8380.namprd11.prod.outlook.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <IA0PR11MB8380B6EC30AC39EAAC1F480986B82@IA0PR11MB8380.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DB8PR04CA0014.eurprd04.prod.outlook.com
 (2603:10a6:10:110::24) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|BY1PR11MB8127:EE_
X-MS-Office365-Filtering-Correlation-Id: 4784a086-7dfd-424d-9dc6-08dcb7aa2499
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bWxTVVZ1anMwN2pRRy82NEZ3TEFNZW9mTHk3M0xrUUF0M0FTdUV1RVVvODBa?=
 =?utf-8?B?a0hOZnd5aHlkSWxWZTZXS05DWmFkVkJUTEw3dDNTRXFuZzM0TEVaazV3SzZ5?=
 =?utf-8?B?WFJrVHhrRmxpZmpVL2daRTZESUJHWmJmOUxEMGF0OUlSdFdjMjZRanpwOWRR?=
 =?utf-8?B?TzZnTmFBQmFhUnJkRzJkNjhNeS92ZGVQSDUrTzlRaXV5Qy9yMFF6M3RoZlZo?=
 =?utf-8?B?M0pGY0NSRWI1cmVzdHBablJCR2p5RnlleWNreFJLcVFnQnhodG9ZT3F4Vm1L?=
 =?utf-8?B?RkZNMUVVZ25xZWppUDN6Nkd1d002QVBjckhJMWM3eUZmSUtLWm1lb2ZMc1M3?=
 =?utf-8?B?b0dlSmhGVGxKY25zZWx4Wlo2MWFRc2NNcDBMV3ZtMzJMQTFZUW50MDBMdUxw?=
 =?utf-8?B?UG12TlpDdDZuUERMc1JsY2NLN1V6Z0tyOFZhOGUxQmt5M015QlZRYVlST1Vu?=
 =?utf-8?B?OFVFYWhRWHg2Wkk5cXhMYTR0dFlaSS9vc3hpdXdwaiticGpQVTU3RFVzT2pP?=
 =?utf-8?B?c0JndFU0eEE3MHRyV2UyM05tazhWb0hXZkRBcGtiSXNJRTdVNjhiVEZHRWpN?=
 =?utf-8?B?T0JtMkcwU2tMN0hHOGxWV0NXREMvUXBDaW5OU2NwczcrTXJqZ04vbTZkZmYy?=
 =?utf-8?B?UGtDOWs2MFFMeHJ2Q1I5WW4yK2UrSHdqUnBaeUZudldHODgxbnE3NUhpcHFq?=
 =?utf-8?B?b2ZFRnRQY2FOUjkrdHhSVjhQbnRrZzFOQnFLVVNLYWJObysxMmxuRHd2d29z?=
 =?utf-8?B?TUxCWi9tUC82UjFIblU3MWJ6am5RdDNCaW0wTEtubzY1U0dkSFZFTVlPaW5U?=
 =?utf-8?B?VXJXTDBzR2dQcUpiSFM1b1dMdWZ2SzdhLzcrQ0Q2UjFzb1hIT1FhOTlCZy9Q?=
 =?utf-8?B?bFNHUGJtUW00NzFzOVo3U0JySnFJS0NvQ01PdG1EWGxXQklTbmhsYWtHY1Vu?=
 =?utf-8?B?ZjdUY0d4d0p4NzVNSVFyazVvd2FHNHo3YW8zVnNDakFOR1d6N1k1L0M2S0dL?=
 =?utf-8?B?SW5DbkxjVzNJVTNtNVJEZzA4THZ3WE9NYkp5SmZaRWtLR0xza1Bac2dpdTY3?=
 =?utf-8?B?QlVBQlRwblJFTmVHdDdBZ3NzKytncTlxUnF5cWVlRU5vT3haU0dQYkNkMEFu?=
 =?utf-8?B?VUVZTGdoZkd5WU1zRFhiQnRtWW5NWU90c09NMitzVmdhR0doSTQ3K21uK2FL?=
 =?utf-8?B?T1paYTJ5aUJDb3loeE1tdHdBMHZOVmVKblovNi9PNWRQTXl5SlQzc1hBVU9O?=
 =?utf-8?B?b2JUWHhPNDc5WTRKNVplUXFzbUlqaTl2V3V6ZDh2Mjk3cDR6SUU1QStzdG5H?=
 =?utf-8?B?WEFwRS93M0RCTllmSVZKa1J2QkM3dkM1NDlUazViWXlJbTM5S0l6eng5WWNn?=
 =?utf-8?B?dVpVNDBna29VMThpclNZQ0k2RjBLeXBYc0VlcFhGTm5oZ0RBZTQ2amMrSEN0?=
 =?utf-8?B?Vlp5a2NkT05lZ1Bub2N2SzZwenA5QkVQMjFaNGJRNElvRStzVThIMW5nR21v?=
 =?utf-8?B?NnlTRG1mYzlCdk12d2hyZ3lzYzlVUnRVdjJJWUlHTTRqNUdhd2kwZ3htNDAv?=
 =?utf-8?B?b3FUNjV6bVJhd3hPWkNuVEwzdTd4L1hTczdlcTB5SG5qbkNUTjFJcFVRL3Np?=
 =?utf-8?B?V1A0N1Q5TlRHYjhGanA4MXdpMm5VWWFabWtINmdHS2Z6azlLN2pjRklKL2Nx?=
 =?utf-8?B?RW9UYUw1SXFsR2kzVUg0YUFlTTYwOHlvT1R3ckY5dzlSbU5EWm5ROHVYN01i?=
 =?utf-8?B?eCs2VlA3U3FEaTJiSFRiVHExSU5tWjZuczlhWjdHZDFDeG92aDhnUWZGckJr?=
 =?utf-8?B?QzNyMDMzOHJzaktoNlkwUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SWxKN2twRDVBbGpzYWo4aHlkUThTWFJvTXA1MUNScGlOV0lSSnhQSzVydlNk?=
 =?utf-8?B?ZjNtUE1hWmZqdS85b3lNT3dLK0RDQUdWeDF3b2x3bnRNeVIrcUl2M3hKMFgy?=
 =?utf-8?B?ajgrVk4ycldESDhTNGw0eG0yQ3pnYjlIVkl1dUpHZ1dmTWUvVWVtL05HV0VZ?=
 =?utf-8?B?VUxxNDU3QUZsTmhHL1BLUGljYkRWNnNQS1ZnVkJGaGN3YXZidFJBRnV0UGp4?=
 =?utf-8?B?Qmhzc0RqZjltTExxNE5VT2FaeHowaTZLSlk0YWxvNXpITHhBTkVUdkYyM0po?=
 =?utf-8?B?c0NocG96akRXSnRrZXRYQVoxekpHS2FERWsrbXhiMUV5cWExNTliclpUNGNF?=
 =?utf-8?B?NG51aEFBeDBTbmpHS1RJMzNuVy92dDZwTlN1TGlYc3V5ZWFxbjZGUlBpWXBn?=
 =?utf-8?B?NDNSK0d1ZnFwcnhUcU05QVNROWc4RHBGN0Q2Unp3QnhLZG5zYWRuS0RpVFRE?=
 =?utf-8?B?UGFWRFJKZTR6UHNxb2hrMm1lbXQ0aGg0Y1N5S2V0dXo5RUVJbkNmcEwvN2xa?=
 =?utf-8?B?dWNzbnVSVE1oWjhWQ1Vkcy9SL1k3S3BFR1VQdGcyclFpS1I4WHJBSTN4anZF?=
 =?utf-8?B?ZWQrMlJjdE9ZRHVxOE8rUTNrRHNPazA4azJLdWIzYW1vWnVwMmwvOUJFS1Bm?=
 =?utf-8?B?ejFvMzMyS2wxeGNzVTdxVllreFFIU252TmFBL1BadGFuRHBNV2FqTmJmMEtG?=
 =?utf-8?B?MzVhTlFWczcxZmY0bTdYcHpGTG1mSmNNc1BLYmJOUE96RE16RTNxZjJQY0pj?=
 =?utf-8?B?dVk1dW9UVGR1dEdTMWhyMlI2ZjdEQnJBam1SWEI2clY1RDRHODk4ckZIOTZH?=
 =?utf-8?B?VHVpUng0amxrQjBLTUpUcWs2alUrbkJZRUxsZVVVMnlzNWNlTzZCZlpiSUo3?=
 =?utf-8?B?NENCSllWZWRLWmo5dUFNeXZCSVhIU1ZMOWlzSjB3bTFpODNXc1VUYTRvaW1w?=
 =?utf-8?B?NFNDV2FMMGlYNnVPRDkrZlludDlWRG1BU1QwY1UvR1JPbEk3dG4xS3dXYjJX?=
 =?utf-8?B?MHl2N2ROYnZVTGtoa1UzMm94bzg5SUEyZDNOMFQ0MjZ0MmVEeTZjTDZUV3lm?=
 =?utf-8?B?eXA1dWdRNHpYTHcrQzNWc2hiYlA3Wm9qVWFrZ1BGTFRGZGRKcjIrUWNnVEY2?=
 =?utf-8?B?dWxPeUk5czlpV2NjcHlYaFRRYnUzTzZYbTFWbDlsVzlDL1dUOEhUNm8vMnMy?=
 =?utf-8?B?cVBMMUlSejdzcjY0Zk1nQkRsYXd5VnV2V0N4MlpKcFo1V3QxM1oveVA5UHBJ?=
 =?utf-8?B?a0svc09JcG5sUVA2MWdhNUFoQTdoNVdOTXNPNXpIS3RpVUdVSWZ5RnAyQWhs?=
 =?utf-8?B?RDBuU1FjNncveUt2cFNyRXZmaXYydUNDVEhUZDlYYXc2WlRoVHRDRHp4ZERS?=
 =?utf-8?B?K1oxVlNFWFhtV1hYRXZIbVpYR1FUWmVPQWxFeXJOTzArSVR2dFNWSGVhdHhu?=
 =?utf-8?B?WlcxcjN2TnREZmVOd2JRZmthZ01DeXVQdGtzUVJRVEpweUJlcWFwSjhmdlJR?=
 =?utf-8?B?MGZ3S2lWRVdVcjZUWnh1NW1JU0pYVDVCMnBwc3JnTm5DMFUyNWtyMUh2QS8z?=
 =?utf-8?B?UW9ac1VrZGlGSVBaQzFmSnNRcG9QVG1YZTBzeEFpcS9RWGxISjJzT1NOVm0x?=
 =?utf-8?B?YlZSbTl6VUZtcmJaeEF2NGxXLzNYKzJKQ3ZMSmpqY09OMkM4azY5Q29vMVcx?=
 =?utf-8?B?eDdrRzcxS29lclhlQUsydmZHdWJaclY2TENMWTBMZnQ3MVBUZ2Z4V3Q5bnc4?=
 =?utf-8?B?RUVxVFlYbzk5bUlSaWJ0Q0RuU3NvKzlld01OVXNFdUQ4M08vUVRUYVphMWF2?=
 =?utf-8?B?S3VvZGlCaERMUlZ6SlpTY0ZDMzYzMTJxc0lEZzJoTGF0dlJKYm94aUhhZ0N1?=
 =?utf-8?B?d2t1Z05sdGp6REpqNXhRbFAreHZkdldyemZtMERnWUVDbSt2V1ZMR2tpWk93?=
 =?utf-8?B?ckw2NHkycStnNjFjV3ZXQWp0QUxpc3RvNzRVZ3BaczhYdXdzWjZUc2l1OTBH?=
 =?utf-8?B?U1RLaDcxTFFTb1VSZFpTTnV5M2FDbFBEK0s0VzZ5Ly9oY2ZRN2VXZXZuTUFr?=
 =?utf-8?B?VXdhZXRZT3VkNHkvbnFTTm5IMEs4SFI2ZWZPSldBRmNqN0MrOGhqTlA5VUNH?=
 =?utf-8?B?eE1LRnFrWjlDU0hNeUI3TFZWNTZXOUthSHNmOGNJTjJjYVltNVJZb3hBWHZo?=
 =?utf-8?Q?CcDe4Gc8zSFWgZZEWCA2Pas=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4784a086-7dfd-424d-9dc6-08dcb7aa2499
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2024 13:00:56.9004 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JVC0cfSdD3DoKqlB6Z1nv9co8Vc6yQcVQDf2m3sdodcPhsnX86f8zmXeGXDa+Ag+tqUZc5/kH5WRuFGZwr0m15FchJlGH/Ch8hb1su5gGBk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8127
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723122062; x=1754658062;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vE9R7C9HXB/k1Zn/DKGRaH5x0V0/rNIcrD/+h7kZel8=;
 b=ISN3VE1Heg1vt08wzrFlepmczj7Wjr7GU0B3R8XdC2AfOsAcB+uwICIp
 l7uktBACXAgRcJ8jiYR/QtYXobqAC4vSWNnIpw8pDMYDZEH+0+iBjCZdZ
 X7+PyMygeP4ovyN7hqWtcMPoUy83qBtkWseMQC/92W9+XEo5LgWGhzY7r
 aqXivDmsPp9PKqGnfejo2MqljAZ929PHx6PwHRkUgQxx/rJRZJRcFIy7w
 zpHkfUkjtjdM+aCUMXyfRTU2VT+rzm/Drv6D+jWX8J+zXFLGs8SnLpcXk
 3dmsVwqmppfXlf80XhtkJGnaGAiHmNXPFV9l+LI0/joEwofuxQC+5OxYu
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ISN3VE1H
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-next 4/4] ice: combine cross
 timestamp functions for E82x and E830
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Kolacinski, Karol <karol.kolacinski@intel.com>
Date: Wed, 7 Aug 2024 16:26:29 +0200

> From: Aleksander Lobakin <aleksander.lobakin@intel.com>
> Date: Wed, 07 Aug 2024 15:54 +0200
>>>>> +static void ice_ptp_set_funcs_e830(struct ice_pf *pf)
>>>>> +{
>>>>> +#ifdef CONFIG_ICE_HWTS
>>>>> +     if (pcie_ptm_enabled(pf->pdev) &&
>>>>> +         boot_cpu_has(X86_FEATURE_ART) &&
>>>>> +         boot_cpu_has(X86_FEATURE_TSC_KNOWN_FREQ))
>>>>> +             pf->ptp.info.getcrosststamp = ice_ptp_getcrosststamp;
>>>>> +#endif /* CONFIG_ICE_HWTS */
>>>>
>>>> I've seen this pattern in several drivers already. I really feel like it
>>>> needs a generic wrapper.
>>>> I mean, there should be something like
>>>>
>>>> arch/x86/include/asm/ptm.h (not sure about the name)
>>>>
>>>> where you put let's say
>>>>
>>>> static inline bool arch_has_ptm(struct pci_device *pdev)
>>>>
>>>> Same for
>>>>
>>>> include/asm-generic/ptm.h
>>>>
>>>> there it will be `return false`.
>>>>
>>>> In include/asm-generic/Kbuild, you add
>>>>
>>>> mandatory-y += ptm.h.
>>>>
>>>> Then, include/linux/ptm.h should include <asm/ptm.h> and in your driver
>>>> sources, you include <linux/ptm.h> and check
>>>>
>>>>         if (arch_has_ptm(pdev))
>>>>                 pf->ptp.info.getcrosststamp = ice_ptp_getcrosststamp;
>>>>
>>>> It's just a draft, adjust accordingly.
>>>>
>>>> Checking for x86 features in the driver doesn't look good. Especially
>>>> when you add ARM64 or whatever support in future.
>>>
>>> For PTM, we check only pcie_ptm_enabled(). PTM is a PCIE feature
>>> supported regardless of arch.
>>>
>>> The two other checks are for the x86 Always Running Timer (ART) and x86
>>> TimeStamp Counter (TSC) features. Those are not tied to PTM, but are
>>> necessary for crosstimestamping on devices supported by ice driver.
>>
>> Ah okay, it's not tied.
>> So, instead of asm/ptm.h, it should be named somehow else :D
>>
>> But this X86_FEATURE_ART + X86_FEATURE_TSC_KNOWN_FREQ check really
>> should be abstracted to something like arch_has_crosststamp() or
>> arch_has_tstamp(), dunno. Maybe to the already existing asm/timex.h?
>> Then, implementing this for ARM64 would be easier, as instead of adding
>> more ifdefs and checks you'd just implement arch_has_tstamp() in its
>> timex.h (I've seen Milena'd been playing with PTP on ARM).
>> At least that's how I see it. But if it's fine for the maintainers to
>> have arch-specific ifdefs and the same code pattern in several drivers,
>> I'm fine, too :D
> 
> Technically, neither ART nor TSC are directly related to the PTP cross
> timestamp. It's just the implementation on Intel NICs, where those
> NICs use x86 ART to crosstimestamp.
> 
> For cross timestamp on ARM, it's also HW specific and depends on which
> timer the HW uses for timestamping. I'm not really sure what's the HW
> protocol in this case and if e.g. E830 can latch other timers than
> x86 ART in its ART_TIME registers.
> 
> get_device_system_crosststamp() supports multiple clock sources defined
> in enum clocksource_ids. Maybe instead of checking ART flag, the driver
> could get clocksources and if CSID_X86_ART is available, it would assign
> the pointer to crosststamp function, but I'm not convinced.

I mean, I'm fine with the arch-specific definitions in the driver as
long as the netdev maintainers are fine. Or maybe they could propose
some generic solution.

> 
> Thanks,
> Karol

Thanks,
Olek
