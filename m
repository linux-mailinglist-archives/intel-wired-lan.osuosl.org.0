Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OLyLOTYPi2l/PQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Feb 2026 11:57:58 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 242BF119E61
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Feb 2026 11:57:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 657CF40D3D;
	Tue, 10 Feb 2026 10:57:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vOCid_hcMWDq; Tue, 10 Feb 2026 10:57:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9B5C40D64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770721075;
	bh=UmtoSfZGz+BUyeee8HkonleUF6lzRI/noOe/RJ6aqHs=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ms6eSoo2s+VYODdc6IWU/+Fx6sOHKcgY19MAkH6j9CF8hiG8jQVs+2H/wD9Tk1cqZ
	 +e3kEWDsSpiifrLB9PrBkuHqCVV29PyvgwTpAphSKf4Zpaf8u064XO52YbC+G8Ukhe
	 aHC1iXnwjvRsPSulCA01EP6UmkvM8K0V84/AErHc4EHdPP+Atq3lhN3BV0Ljag+B4Q
	 BBe/B8YDM38Nguy8723O/uwu35u867z6+WPGmqxuSRU7nymlfdCRIbDNdD7p0XwefY
	 ozneLV9ZGJNUa6yU9iNGGASWDyZSFS+d7v4beXLu1bPnaNoiLUyUkar00qkZcE6rR1
	 DEidC+ssDO6Sg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A9B5C40D64;
	Tue, 10 Feb 2026 10:57:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 92EF91A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 10:57:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 77B6D82234
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 10:57:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cUU5_WdzPMjw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Feb 2026 10:57:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8EA4B821DD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8EA4B821DD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8EA4B821DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 10:57:52 +0000 (UTC)
X-CSE-ConnectionGUID: Nud6iheURbi3V/9wNqJFUQ==
X-CSE-MsgGUID: dcTL50emRSqxmetE26MeaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11696"; a="82951779"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="82951779"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2026 02:57:52 -0800
X-CSE-ConnectionGUID: Z7w8RN0XRMCiJccVN+OHCw==
X-CSE-MsgGUID: jAtZHQrkStCdFNW6rHojhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="216421689"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2026 02:57:52 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 10 Feb 2026 02:57:51 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 10 Feb 2026 02:57:51 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.58) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 10 Feb 2026 02:57:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iob8SGpAJ+Z+j9x2rQKpHBBE4CB13Kf2y0vb6kHefTObtkqmREPCNclgUJWF+q4mjAwxVgKoL+ELIomhUU8Chl94vVAKpjtdfJOnxdG4uyS79btGGAUre5uHE7CIKmF8gmGelA1QElhh9/PkhuKMbfOwUqy+FwwngP1LqiLgdqz4I3rTcfLs+CgbuCxm8iqzw7gRfYAPgKzNuenMFcqXbBLEu1wyMn+9WBl/q+BAYPxQI9YflmjYZe6xWYVJsWLhWq/uWFUmHZvOycERWsYktVSlcMxL9h94ck7V+281qk3XroY8Xa8utbGZJ1gjNtNNYxvhz0BXae1uBs8SpKqNOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UmtoSfZGz+BUyeee8HkonleUF6lzRI/noOe/RJ6aqHs=;
 b=uFvvwa0qL54Jf3QMnMoRbl2x6JYVYcxiyxfjKEL84Nanh+z4znTX9rN0wBqzs9WBhgewR13ILOAfFWDPjmvbiqOMej34l65a7fNEmBQlIMiQmfsHbA7F2M+7lIGmIHdc46HjmPSC0+eMA5+PzC+7oB3bVZF7okkecXrCp7PpSYFfpD4XKv9hBZPGCAgHZYj7rPFHGwa6/pO1Ok8KvcJwB5Ji/StWJ8szP/FwrRbdl2MjD90sy6581JFYP1VuGegB2HkqyL1n7nWdyn9VOoIYxqux7PUPtnFBqvPUw4z+oGzLIA3CxJLs0dG1iPT/YobYon8WvZf+aUaU+pBqAU98Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8013.namprd11.prod.outlook.com (2603:10b6:510:239::8)
 by SA1PR11MB8476.namprd11.prod.outlook.com (2603:10b6:806:3af::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Tue, 10 Feb
 2026 10:57:48 +0000
Received: from PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572]) by PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572%6]) with mapi id 15.20.9587.017; Tue, 10 Feb 2026
 10:57:48 +0000
Message-ID: <d390bfa3-9641-4e15-b1fc-04033a2c4d0c@intel.com>
Date: Tue, 10 Feb 2026 12:57:42 +0200
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <marmarek@invisiblethingslab.com>, <timo.teras@iki.fi>,
 <jeremie.wenger@edu.ge.ch>
References: <20260202103257.1972097-1-vitaly.lifshits@intel.com>
Content-Language: en-US
From: "Dahan, AvigailX" <avigailx.dahan@intel.com>
In-Reply-To: <20260202103257.1972097-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0023.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::12) To PH8PR11MB8013.namprd11.prod.outlook.com
 (2603:10b6:510:239::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8013:EE_|SA1PR11MB8476:EE_
X-MS-Office365-Filtering-Correlation-Id: bb67bd2c-06c8-4caf-4522-08de68933a48
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S1FQVFgzcXZ6R05QTi96T0NxdVd2bi9nWklyR2xacVJBY3JMMnBzcG9TSmhF?=
 =?utf-8?B?SS9Ma2NGcGRSSGg2OEtsODMwQVZkbzFiUDV5eTVzQmlSYmdWWDNZK2xqRGNQ?=
 =?utf-8?B?MXd0aDB4RTZYQjdNU0lpQnh4MS9rT2ZRSGdJNEJuMmxVRzdXdWNORTRmeXNJ?=
 =?utf-8?B?ck16ZzBGZjdCSkQ3N2NtOCtsWGRJMHltNi9YNVVBRWdHdzE5a2xMS2VoS3lX?=
 =?utf-8?B?dnNJdWhMNjBTQ0xSc1M3OC9WOTlyeXJKRm1uamhZTXh4QlFvNndsSllLbng1?=
 =?utf-8?B?N2VjSkVPQkFiVVVQWmF1RG56Wk5BVVQ5V3ArbU45MlBTZ1ArTC83cmc5S0ln?=
 =?utf-8?B?WFdQeGRFQ2tPaHlneXZJRmxFZTNCaWdGWHFGMVdjSmZPeXNHTXlJaWRDc29m?=
 =?utf-8?B?K2hDNXIwNzkvdEMvWmIxMkVaYzArWGFqdkN6TWk0dXBrR3l3d2s0UjdJU3Vv?=
 =?utf-8?B?NGtwYk5zeGZTQkFibkI4QTVLL3BlYXN6QmFYelN1d3VKdEF5dnZhdnphS2gx?=
 =?utf-8?B?eVpIcEJraHhxTnoveGZWd1dqSndhM1hRYWh6ZjAzN2psQWRJZmtZTlRueGVw?=
 =?utf-8?B?SGp2dklFeGlCVW1WaDhRR0dlcU5zZHRKS3EvcUx4UlNYWkFoUkRjQjVZUGd0?=
 =?utf-8?B?TERVbW14NEwrbUZDTWhVczFCMnV4YVBPKys4dnQwbGhvazdqeG5uNUI0R3BU?=
 =?utf-8?B?NGMrZGhxVzVKQTc3SjhFZGN4NW9zQjRwa1dnUnVMTGhGME1hZHA2MTB3ZSs1?=
 =?utf-8?B?eEhXWWhtckRYMmtaOUpiNmVlbCt1NDVGTk1kcDdzQ3liME9Qem9pdnFLaTVC?=
 =?utf-8?B?ZmJxV0VPdXJYdmpyUjhoUldQYlhaeXFrMkxNQXIrTGdiWjYrZFhEaHJkUFdv?=
 =?utf-8?B?L2x0M1A3bERkNVd0TkpVcnQ4Qi9iSllpZkY5TmkwN3IwODI1OWUweWhyOGxK?=
 =?utf-8?B?blgzRHpTeHNJVFNNU0taM01iQlVjRG1uUmVuek9abGlqMGN6UXVhNkt6YU5W?=
 =?utf-8?B?ejRwOFFVK2k1OE1NU3hmeDErL0JDcUhPU3FlWFBTaGNVTmtITmVLZ2lBVXNx?=
 =?utf-8?B?amNqTkluQXJkMEJ6cUxpeHljR2VJa2xnWmFHL0JBeUd2M3lKK1UwN2J1aXpS?=
 =?utf-8?B?QXJZWWw3cllHN0JVMFl4N0x6TkZ4S09aQ0FRb3YwWUdEbXM3Ry8wcFZPdXBK?=
 =?utf-8?B?KzV5amVvZ0pTVyt6MnhTSnVxS3dnTFBYblM2OEdWS0JvNWJ4QlB3V2RYNVZC?=
 =?utf-8?B?T1dJS3lsZUhreXBGUGdVa3p2ZkxHdGhBRTJnM3E1Vng2MFRKMlI0NkFXYURy?=
 =?utf-8?B?Sjl1NFRkd0VGSmdPMnpab1NXWnRnR1BFNUxvYnpBa2RNZWVKdFppeDVMSlZy?=
 =?utf-8?B?NGJaaG1DMEZwbWpoSzZIZWpoQ0xhQk1KalhZQlRrZzFMUUdIT1IyL1hWWWFp?=
 =?utf-8?B?dXZ1TFdoaGJIR1R2Z0V6WGRRMTMxL1N1V0M2RzBnODNTS1BVREx1QWhUanpF?=
 =?utf-8?B?VXZJVXBrTTJEUjdUUUVEcEFnU1czbndGeVZHeDlxdzE4TVA2T20rSjR1dGNv?=
 =?utf-8?B?dmtoVGFPaU9wS21INFlaRWl3SVNOVzJ6TzlSc0g1MS82QUlsZ0kzRzYyUENa?=
 =?utf-8?B?aU8wY09zOVBHSlNtNHBlLzZvSmxPZVZwNUliem9WL1B4dndvS2NzRm11aldF?=
 =?utf-8?B?T2ptMUo5ZzFKVFZoVFpSTkxqUVBkMlk4TGM3NU5sVUJ0WGN6TFdNdTdDbUdm?=
 =?utf-8?B?eXF5bUNST0JKMnZQWkp0Tm0xSjJTbzJWSTRQYkdLZlMxemZxWkFuamw1YUFl?=
 =?utf-8?B?SDZtc1pXNGVlWi85aWFvQzJjZmRaNm8vUEVody9IL2FqaFVRcElZZjllZTBG?=
 =?utf-8?B?aGxyZGlEQzc2VU0vUzlXWTkvTU95ZWNhZFRQakI5Z2drNWIra1pSWkkyKzhF?=
 =?utf-8?B?U3FCTDFabUpxN0ZBQUtMb0tuTUdNWDFLU2txcWRMZTkyM2w1eFkwOW9Od0pF?=
 =?utf-8?B?ejZHSytyNXRwM28vYXdCNkRERDBkNnNURVJ5MWs1ajdmVCs1L3YxV21HTEtY?=
 =?utf-8?B?MmlNRmdpajVaVDhqWHVmNTVxZmRsSzh3cUdnYU93NnNvSnJxS0pzczRjTWU5?=
 =?utf-8?Q?yefo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MnY2TkJKZXFPdm9NVzdMNm1iaDJJYy9XRFIwVHRIYmVieUJHQzZMNG5wRDhR?=
 =?utf-8?B?OW12aTc3MjZIMGs2TDMwK3ZGbm1vZmJQZENTR21sbVRIQnFRYU52OE4zU0U0?=
 =?utf-8?B?RnlRNzBLRHB3WGdiYTcyaFdKN1picG05cXB5ZUJ4QTFJVTM3ZnVIMEo5ZGdm?=
 =?utf-8?B?S0lyOVFqQm5LbnNRbXFRUlJPQ0VxaGJDSHhpaThhdVdUMzQxZjlCcUZHbGF6?=
 =?utf-8?B?YnRsSkU2N2FoUFlTd0VJSVd1akwvV0c2eWhUSzVqREZ5UHd5TDBidy9YNE1E?=
 =?utf-8?B?eHEyQzQ2cmFZeEVveldIUHdRbjlET243dHZNWTB3cVdaaEFkK1pFUmVWRmtp?=
 =?utf-8?B?L1NCcmhDSXVzMkZZOWNMK0U2dkl6RWZHVzF2anNDcVVqbkVtUEc3RzJybnZu?=
 =?utf-8?B?TWhkVjJMcy9TOGVBQzRWYVN0SGhmelE3S09HTjRxVzNGdks2Njc2ajc0UnhU?=
 =?utf-8?B?K2pDVGdrOEErY05CU0hkQ0s2SHhaTmk3RVBTREozWDhFWElpK2s3STVpYUh4?=
 =?utf-8?B?M0dqZHpKTUxsU2hmSE1CckdpTmJSelJDY0lMamtCdjlydjNnL2NFZEVTZ2Mr?=
 =?utf-8?B?bk5ONGhtbTlqbkxTWmZhZFZobExLbHIyK2tCTEltNnNoY3JMN0pvNGNEZXZE?=
 =?utf-8?B?UVB2eHNKcXV5cENRc2NXekxlaEhzdWxrV0hkRWVrOGFoY3c1eEZpcDR0THRR?=
 =?utf-8?B?YytjeGYrMjdwWm91aWpoN0hVZXRZdDB1ZFpGc3BHanBpMzdkVmMyY3o4ZEoz?=
 =?utf-8?B?Q2ltSk1wR3hBVWgxeVZWWVd2SlBwTzVNeE9OL2NWcTdDTnNqS3IwS0J5c1p3?=
 =?utf-8?B?WjV3d1BtN2NkMW9reDE5a1kyQ25KRnFZRE05dWs4SUF0Qi9HRnVrNzdQRHJh?=
 =?utf-8?B?MytUbWs3RCtPemlWZWhPSkVKTGdmMVpGU1dxZzIxSjM0ZG9jOFpwT0N0Ymxq?=
 =?utf-8?B?dmZiZDhRa3pYL3p3QTMvdXBYWXd2ZnhCMG8yTkJPQzFJUnJaRHh5NTllQURX?=
 =?utf-8?B?dEJkNzZBZndNWGEwbm4yOUswbFlIVGZuQ3ZIWk9jNXUvdSt3dUNsMHBIZGI2?=
 =?utf-8?B?akJuUXZiL0FXam9VTlJnZDlxOFA4YVBLSEhIUk9vNDBhMGlYZ0hFYWhrcFVO?=
 =?utf-8?B?a1Zxd3FyOXpuN1M3dUE3M1piRlZxOWF2dUxzTGxicmRNUEJiQS9ZSWpnNTBY?=
 =?utf-8?B?SFQxSkhoY1FSVXppYkl5YUUvSXRUL2ZWWng2S1dyVGp0aW85SWYyUUhsRUpw?=
 =?utf-8?B?UDVEWXJUV2NpTGJXaDZ0elNlM0xTQklLUFRwL0RGWmtibUEwWDVMcVBETjRM?=
 =?utf-8?B?TUdvZ25QRlBScDBYRVVpdmFUeVErV2MxYWF5aUlkUDlrb3VLM2dGaDN4eXM3?=
 =?utf-8?B?R0czb21zT0tsS1h6K3BaS0hIR2Y4bjIxdm9lMHVCclhOd2JuSStmd3FEZ3Uv?=
 =?utf-8?B?VTRROWJ2R3JYY0dSdDcveHluQ3lEWTA4SXY5Q0pUZjFGVXNSTnhMNk5Zc3hq?=
 =?utf-8?B?VjlLMWtyR29SN2p5bkNrWHBzSXg3MFV4MHEzOGJQRC9OQ2plYkJFb0VaN2lO?=
 =?utf-8?B?ODRseHZYYktpcGJXeXhDeDVNTURvTkJLQXp2RzZlcVNlcjlHcm1VTDd2bUJI?=
 =?utf-8?B?WCtEbGZrTlo5Uk1Ka0NIcVU4bml5TjlPc0JJSVhuN0MzcFYzQ24wODFQYmlV?=
 =?utf-8?B?RGJETk5HZm8xbGMzNzY0SVAxeHBjNFppZDducFRIaUVBTzF5encxR1RyQ1kw?=
 =?utf-8?B?cU1XeHd4c2VwWDI0cFFIdXNvSWF5VE9Od3o2bXJ0cm42aE5BMHNFY2pXZms5?=
 =?utf-8?B?N252QmF3RENOZ2dRWmNwRFVRdjJ2T1lqamtudnRmZnRPbkt2ZTZ6NUhBVzJQ?=
 =?utf-8?B?dkhURTZpUm03KzlCVEtyQ1YyaEZVaGp0eFlYVkhRM3ZSd3pxMnJSUVpPS1RO?=
 =?utf-8?B?NzRxL1JPYTBSdTB1OHp0RDBjN3JNY3JFVVhLMS9jcUYxajJKTkNyMS9NWkRH?=
 =?utf-8?B?SEtsZVdvclpyaTRuNERjTEFUWm5jTnZCZjA4UFd3UjRWMkIvZG83RGJHTTZl?=
 =?utf-8?B?eXBvUU5XTVRYKy9Xb0dVRzB0OEtLaks0ZTNoWnZuazZVQ2J2dG5EQVNXVXNs?=
 =?utf-8?B?WHZuRHFmYkcvRWNkcnovbThrV3dpOUVLK2s2Z0d1WHBlN2JBSVhwSHFZa3ZK?=
 =?utf-8?B?WEVHSFhhdE1XSTBvdDhtWjdwQWh6cC80YUtwK1BiQUIvZEdDamx3bk9aSGcr?=
 =?utf-8?B?SmFaS051R3ZVZ3hla01IUTk4QTF4NmlBZEFqd1VHbC83MDFrZk9ReE16MEhI?=
 =?utf-8?B?djhLZGpsdHFpR2daTnF2RktyRTdNSTk5MlNCUHNWS08yVytpcmJOMWpWTHhs?=
 =?utf-8?Q?vmAlmoqvzqUFeAdU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bb67bd2c-06c8-4caf-4522-08de68933a48
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2026 10:57:48.3449 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mUljbkFNwkvnJnWR01t4kaNk4U/mfJKePe+yoTedJOj04G7BfRF2ODUOl7jKJeRSwzMAgG1RjxsE0lprwzFl7DwsX0N2ycFiqWtqDSGUtJk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8476
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770721073; x=1802257073;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YwZ9QmFk478FB2WSVfUE0BZ4KjnbR8jRP9XnUA59P9A=;
 b=YdzGS0AyWFfqQhxPJnMGuaY+5lcDJXW0+J0vp1R/RJUvBQ9po7KU/4BU
 fvf50YLFcg80OxHScCaLxEmLb+ZVkvxrPyY89X68qDQGSn2bHzPIqZNuv
 yhdzG+TrcEOzXtjl1m2ybJnvHkhw30DQ9TBYL4RNSorKJ5KsWNOZkdSdD
 k7APsl983uzP/cC89bf8kavMo7KMFH0xk9AKshVdoiJr4PYpdLCmSjj+u
 qbfwwMhMoInv2h8RdWI1RNVhJtrDZCJoL5jbgYKoxyvsLN+i1MlbZEVxi
 2xUj4/zQ5sjXyJzm0g97NllYwlEDSE8a4aFmVxM4guKV0MtIHfpu3+nHv
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YdzGS0Ay
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: reconfigure
 PLL clock gate value and re-enable K1 on Meteor Lake
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vitaly.lifshits@intel.com,m:marmarek@invisiblethingslab.com,m:timo.teras@iki.fi,m:jeremie.wenger@edu.ge.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 242BF119E61
X-Rspamd-Action: no action



On 02/02/2026 12:32, Vitaly Lifshits wrote:
> Commit 3c7bf5af21960 ("e1000e: Introduce private flag to disable K1")
> disabled K1 by default on Meteor Lake and newer systems due to packet
> loss observed on various platforms. However, disabling K1 caused an
> increase in power consumption due to blocking PC10 state.
> 
> To mitigate this, reconfigure the PLL clock gate value so that K1 can
> remain enabled without incurring the additional power consumption.
> 
> Link: https://bugzilla.kernel.org/show_bug.cgi?id=220954
> Fixes: 3c7bf5af21960 ("e1000e: Introduce private flag to disable K1")
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> v2: add comment for the PLL timeout value and revisit the commit message
> v1: initial version
> ---
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 6 ++++++
>   drivers/net/ethernet/intel/e1000e/netdev.c  | 3 ---
>   2 files changed, 6 insertions(+), 3 deletions(-)
> 

Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
