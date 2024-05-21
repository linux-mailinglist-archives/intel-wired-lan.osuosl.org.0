Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 982888CA54E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 May 2024 02:03:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 42067606DF;
	Tue, 21 May 2024 00:03:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2eyxgDIScnCX; Tue, 21 May 2024 00:03:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A790960797
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716249779;
	bh=Q80DSoCJZJvoAxj9dJzmFV2n0WDBNfYba9pMMzJ6YU8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=quyPaCu/4jhoabKzuITsVjD3xEFaw0WPbR1qmchDE4q7XOwW0Goj10lEn/lN1gWsQ
	 2p7CYM1pwde4Hdf4+2OxKDpHI1uw1GDvsEFtE0qLXfw+k7aeskmQaVMqWCTC3MSh7X
	 96HBYHygiqQ3Tj3DhPaVwpLqB8uD2V71/rxfr7CFGwsbb7Fi5VB1OawtZon5ezgmEp
	 +tLh9i4FBwxNhD3jAr8NQEQ/ez+FUiiQqklzy3MRS8K/4YaghY/xH8OcFRUqlpR+HM
	 DFEAVV5A7+GJfC0g8S0THTQGsjAoQ7UD5y7VWjYAhDBheTk9/EfIgHHLPyM1PTm7RI
	 Hi0si/EreY6nA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A790960797;
	Tue, 21 May 2024 00:02:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 460D51C4E30
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 May 2024 00:02:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3068B4042B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 May 2024 00:02:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NDCbZ3KHCbeM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 May 2024 00:02:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 01C58400FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01C58400FB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 01C58400FB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 May 2024 00:02:55 +0000 (UTC)
X-CSE-ConnectionGUID: nPPkCeBzRBOIjKI1PygfvA==
X-CSE-MsgGUID: fN9k0TTPQxKaGTto0udBzQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12525476"
X-IronPort-AV: E=Sophos;i="6.08,176,1712646000"; d="scan'208";a="12525476"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 17:02:54 -0700
X-CSE-ConnectionGUID: +WIXVtulT7+hlgFoF9AxZQ==
X-CSE-MsgGUID: z8aRqRtsQbq5eP8iFGzUsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,176,1712646000"; d="scan'208";a="37310106"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 May 2024 17:02:54 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 20 May 2024 17:02:54 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 20 May 2024 17:02:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 20 May 2024 17:02:53 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 20 May 2024 17:02:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lz67SDCEGgxreDIf8Gs5+L87xIPz2eFiL7zEwhh6BWBzkam41xB789mR57Sgj9gQ5ndi/QdBe1xJslF5IDh3MRCRD9p+lUSbntTqAP6MxmvCMeKU2PauKiEIOrzfqpoGLMhpyO9oRUV+hlT6K4SBE/WoPfUftUjCWq/UKM/hS8ymM1RAMKcB1gkl55+iS2n7MVPvnCbO1EaReWedXUp38AO3x7IfFDc7EPxqXo38z1KT3OzeSFZ873DDtmcvuJ2CV74YjIXG/T0Aeeuvzm6Lfw5vuUbZ6K/V4h3jB7g3KU+EOXd9jYy8Moh2fpToh7DpjK6eezfJG0/ZU22nwnkG5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q80DSoCJZJvoAxj9dJzmFV2n0WDBNfYba9pMMzJ6YU8=;
 b=E1RTHqOjgx+tb/nkIF8fACNrV7e4W6xrFs3rPQD3BN6hQ+DmZUr5M2X6/wjR5QHgtwgKiqDn3sclW4uC2GdlNpRUeNMLiA48zbB5pG0m5OR5+iqUCwopyEB8m3OZ0VP+MsEAWUx7Da6+aVn/m768ybzdjH6lc83zgtJhCSd8e3J5WuiQGmSsfAOjEuTPMlrkXHebk2y2y7n+6MEZAi5iJ7+ie0PQY2V9opaQtgWrsyCiLCAq4mgCIb9pCZONYGTtCP3OKsVI5UJSwPRG8c7AKlcb9ucUaEcV3Uv+cQJyV+21UBrOOzXNoOwnGCdNzqTmobawUMdZkUW7kIBvGqizfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA3PR11MB7553.namprd11.prod.outlook.com (2603:10b6:806:316::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.35; Tue, 21 May
 2024 00:02:50 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7587.035; Tue, 21 May 2024
 00:02:49 +0000
Message-ID: <8b5266ce-76c1-4618-a6c4-54e1df677490@intel.com>
Date: Mon, 20 May 2024 17:02:47 -0700
User-Agent: Mozilla Thunderbird
To: <kernel.org-fo5k2w@ycharbi.fr>, Jeff Daly <jeffd@silicom-usa.com>
References: <4a0bf7cf-d108-49ac-ac7c-6136a070c44b@intel.com>
 <cbe874db-9ac9-42b8-afa0-88ea910e1e99@intel.com>
 <e16d08bf-49f6-4c51-85fa-7c368d1887b4@ycharbi.fr>
 <9eaa16ac88aafb6dee36c5781ae4de7881bb03a2@ycharbi.fr>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <9eaa16ac88aafb6dee36c5781ae4de7881bb03a2@ycharbi.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0167.namprd03.prod.outlook.com
 (2603:10b6:303:8d::22) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA3PR11MB7553:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ac81779-4eef-4769-ec62-08dc79295a28
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Vm4wbjlsNC9OTHJPVG81MEJTNFlMbnk2OXRkbGhOMWNFVW1mV0txOURkcFUw?=
 =?utf-8?B?T3BLS1lLOVphM1FidWEyUzRtYytvN1ZTQVpFYXBtN3VZdkZLczNVWDQwVm52?=
 =?utf-8?B?akVxbFFNQVNSUzZRd3podmdaa0drYU5xcnc5Z0RJTGNUd0VTRlB6NHdtd1pM?=
 =?utf-8?B?MmFzS2R3UWcrZnFoQis5NHp2VWtsS0gySEhHQVhaeEx0cUZscVRLK0NqV2Nl?=
 =?utf-8?B?UWRoV2FscmtDSGJJeFRXenhXVi8xYi9QYndWNDRCbytOVEtDcGdtbGlIdFFC?=
 =?utf-8?B?V1VLOFR0WmhjaDJEZUdEdS91SVpLcVA5QjBvd2F2NFc0eWs1dHBhcWtOTEVa?=
 =?utf-8?B?Q0ZvTDN0bEVuMmgvWFBmNnkvR3kzU3k4WUo5bEdmZGhNRzFlT28xRzdqNU9T?=
 =?utf-8?B?Yy9MWUNMZ3hPLytMKzF3MXZSa1ZNc3pFdUR3RWk5d0Y2QlBiajBnYnJrcHl0?=
 =?utf-8?B?R1RuQ2xtTThLOGwxNWpzWS84VWR2SVltZzN1MVprTWtUSEc5ZER3R1phOGVj?=
 =?utf-8?B?Tk5lWlJweTNzRnJDdUY0eXk2ZW41cHJzNmNldTkyZ2IrWTU2VDdHTjR2ZHl1?=
 =?utf-8?B?blpPTXBmODNZSm5EWGR3S0swNDZ1RjlSaFRkZTFBTlByN2xJMjNTNGRsSmZE?=
 =?utf-8?B?VEJtcEpMTFA2WGNrbm5sUExnQnBHQ3hUYUNnZHFyNjFzRmdzZ0NBenRwSk1j?=
 =?utf-8?B?clhqZUVhcEtFc25wb0dQUnF5d3FaWTFVdEJFQlVJRHZpK3JqUGFlSjQ5WFlw?=
 =?utf-8?B?UDhCNGE3TFZGR2txbkVmZElPVGw1RGlrUllVVURUSUdmb2hPRmVwT0g1RnRy?=
 =?utf-8?B?dGhsSDJKOXdvNVR4ZjAxb2lsRVRxZ3hacXZkTXF5dHZvcnhUNW83blNMRmNK?=
 =?utf-8?B?TXhWb0Nia0JBMXFwY1duSVNkb1pWUUNrU00xOC9iTUJsd0h1UHNuRHJkMjAx?=
 =?utf-8?B?d3FWVTF6NFRMV28rTnVWRnlIcDZBTUxQYjZ5RDlwT0hQWE5yMy96ZDhLQ01B?=
 =?utf-8?B?d1FJOURnbklzNzRKQjBoSGRUN1dwU3V4d29FYnFiYU0yNU84ME41R0tIOURn?=
 =?utf-8?B?YTY2bWt2cis0Q1ltay9sZGlsRlV0b3hSU2NWY3h0ODZSdTBEZDVvUTFFdGc5?=
 =?utf-8?B?TzE3d2g5cHFYYWRaTDhpTWMwR2Y4VzhYbEtJSlo2L0xEUllXUCt2dUMwdlI5?=
 =?utf-8?B?elYvTHZDUkgzVFFKRjEzZy92UEMrZk92YzUvaEJhWGw4MU5WU0N3YXNTaStT?=
 =?utf-8?B?bCtkZU04dUJqdnIyTXBNMXVYNmxDNm5CV1JEQUoyRmljMFpuYjJMT3cwblBR?=
 =?utf-8?B?V1pYeUJ5eTVGZWNCUnFOdkJ3WEpoYkwycDYvRlI0a0JwNVRJalJXcTd5YXZw?=
 =?utf-8?B?L2NUUU51WWo3V2lFMzhQSEEzNzZKYUlIbHpyL25kZ1laaXBZSE9WQjAxdTZs?=
 =?utf-8?B?S2g4MTg2aC9WUmNldE1pYlVOMjZSTXFGRUl5L3dBeXA1UWcvQ0JxcFZFWnBs?=
 =?utf-8?B?UGUwZnVQYlJwRVVZRnl6MHRtT3A3TXdoY0I5Q1h5NDVIWWp0Y2ltYVlaMGZJ?=
 =?utf-8?B?a0dobTFkVmpuQjYxdExtUDlQV2tpNC9jc2gyVFFqZTB3RzFRZUF5NHcwV05h?=
 =?utf-8?B?cWRUZG1SOUJFQTU5ZitrSjZOWWdPbVVSZXdwZFhKdy80R2JUMmF6Um12TVBL?=
 =?utf-8?B?K2hIRFdrUUllUllCZTF6MFpVTmNmWHlDUUJCUm9RMHFFYzBETDJibWpRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ajBXRkJqOEMyazVMWjFVcXU1aWNZaWFCSDJoYjA4Wm0zU0w2WmZjdWpITFhw?=
 =?utf-8?B?RlY0VUhDSDNCUnZDWjNZclJRTFJGM0pLUGZnd1puOVJvVjM2SW5HL25Zb0lJ?=
 =?utf-8?B?WG9sSmI1aVQ3TkpxRUszWS8yamdyV1l3ZnlhdU1MM2s1RzBvQ3BLTVpFNkdi?=
 =?utf-8?B?Mi9qaGhDWXlSWm1NMEJsRExkVjRhcEJzNXUzbVdpQk1KdForUFA1NXIxSjVs?=
 =?utf-8?B?eDEvemVZYTNCM0k3TUZtRXZ0emF5ckZPUWdRRVZjU0VtU0tWejVjZGNDNEVh?=
 =?utf-8?B?QlMya2FXN0pUUmRUaG5pa3BjL2JvTDdYQThzL3ZFR0NpRzZzSEkrRmRXNVZ4?=
 =?utf-8?B?eG5WYVlmMHZSbE5QaW9lL3NDRWYrQ1JYTjBRMXR4OTY4YXpBOEVYK2x0S0Zy?=
 =?utf-8?B?eVlEcVNpNm9rZkFPUzhkQzhwZTBSZmI5SXZ5a0pQeVBybjVsUmh1RVUvWndW?=
 =?utf-8?B?UGU1M0s5ZHlDcVRpTnF3QlNkS2MrRW5TeUVWOGN2a0NObUU4ZlZzclZIWXRn?=
 =?utf-8?B?bEFhZHVBYzRXR2VZZ1BXNHRrNXAxQ3IxMjV3elR6WkRlU3R1ZHR5cDY2VjJu?=
 =?utf-8?B?S1hhMC9ocFdaTU5qVXp1UXBpMmRhelIwRzdzZ285TEVkdjlYdEp1bTltM2RF?=
 =?utf-8?B?N2VHV1V5d1ROS1VLeEtWWC9DQ2FWTWxYZlV6Uyt0R3BLRG50QysxblpRYlpz?=
 =?utf-8?B?NlNHYUpvbzZaVzlYcEZLM1ZGc3hSUU5GYmlTekRjbTR6aHgrQWtLVklraUdm?=
 =?utf-8?B?UDZSYWRxT3JWNUlrMVUyN09jT2tXU0RMV1ZlbjIrS1gvSEZEeGdqaVVOWC9W?=
 =?utf-8?B?M1pXeFpHYmlNaFhNRWJNNVhUN2w0ZFMwalg4SjhrV1ZraVp2Wko2dGpmTXp5?=
 =?utf-8?B?SkVwZjB6T21BU0ZkaTFpZ2RaMVd5WjhsMmFjMkhlVXpkVmdhaEtBaUc1SzRQ?=
 =?utf-8?B?RzcwNlVHYndUVUIxSm5KNVNDNE4rTmE3WjJreW9xcG9OeEVMYnlhY2NsTElR?=
 =?utf-8?B?YkIzMm8wWitvMUg4MHpvTTYvVHJ1NUFaRkJpS2w5ME9kVWZMS1ViazZtRm5h?=
 =?utf-8?B?YUgzT0lERjJuaG9tK2tSR1cyYUFuOVk4b3RJRkxDakIrdWpuR01ON0YxRzYv?=
 =?utf-8?B?b0RHT1llSk44MEt0Rjl4TkU4WDFwaG12ZFpEWFV2S2MxbTB1d21MTUdRTVND?=
 =?utf-8?B?bkxUdXRVVkg2RVVJQ25OenNNM3RhWEhIOG16YmNRc000d3JjZjVPV3BTaEdY?=
 =?utf-8?B?S05ZSlZjM1Rab29tZ3VCTVdvdmxZdHZnWGIrYkRxMkVpdlRxTHBaN0pDdmNw?=
 =?utf-8?B?NnhyT25tQjNFa0U4ellxWC9jVmdqSU1HRTZaVzJFL0M4V0g5SFVGaGJZU2VX?=
 =?utf-8?B?ZVVLck9rdWI3MWJCVW5ic2Y2YVFDRjFMbWxBRWtTSHk4aXc5VHUrUmp5VlRR?=
 =?utf-8?B?ZlQ0R0RXd3JsMTNDTlRSN3ozL1VvVWlQSXR1U09aZ2xRMmE1ZGxuUkdnanlo?=
 =?utf-8?B?eEFkOWZkTUFLVFhkWlVzSHdvcThkZ1dXa0l0SFBXYmE4YU1aMndZZTlNQk9L?=
 =?utf-8?B?UU1pQ3F5UENKM0lOOENxZTRBYlAySHJjV1k2NE1YSE5sTGcxeVYxNFhRakdz?=
 =?utf-8?B?VEVKdW9NRUJ4b082SnZEdGJHeVhhVDMrZEtPQ1JkTXgxM29mNXdtVmpjaEZp?=
 =?utf-8?B?OHhPbmJUZXVhNCtvUzZhYVMwUlVEUUJHMm9OMHd1alZjRVEyUUE1Y05HWEdt?=
 =?utf-8?B?MjhrS3AwamRDdTVkUjZGYXBPL0pvTm8wTjYzKy9LdTVNOHRLNmZvU3RXNFI4?=
 =?utf-8?B?N2VZQkhCRE9QWWpGcHlaYWtqOVQ3S0VySFlMVU4wWTdYbDZPVGdlTTdDaDZM?=
 =?utf-8?B?WFBSVjliQ0pzUGUzb2xJcmc3V3FtbEM4UXZDVS9FdCttck9VUkwrbHJWVzlu?=
 =?utf-8?B?dHRpRHo3RENIMjBBMGlVeGlkNi9tTTdnZDZoK0Ezdm90dkFjTVBqQk50d1hZ?=
 =?utf-8?B?cjFQNFhqRjRDTEEwaThJYllONVk5anpxN2pXemNiK1NBWnIxblJ3bWdlNjZk?=
 =?utf-8?B?MlUxUDZJQzF3QmFQWmN1dDhaNXF4SjlTNlAyN0hKbVJPVS8vZ3FDVE45S0l1?=
 =?utf-8?B?b2diNDVHd0pqZ21zaCtBMVhnaVY5bFUwQnN1Y3NGTXM2MnMzYmpiNTdXeG5S?=
 =?utf-8?B?cVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ac81779-4eef-4769-ec62-08dc79295a28
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2024 00:02:49.5538 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pqyIaSTkXPnWd2WWPUCR6V09hCLxm2BWb319SkDjn3NGLhVWlbjKPKbVg3QBz4ysdkx/iEHabkHKZRd3meX8aWJ2mPk5Oc+CszbgBfYF8Nk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7553
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716249776; x=1747785776;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DLawkvCmGwWp7NO5Kr0TqI4kbf/BfAsyuW8Cgg9kvb4=;
 b=Ecf6KCUvb1V+Yx7nA2DxfInq74m/zrSeDpT224QgfvKy5CsvUZY8cHkb
 kS6+YiLlOTjXNuECF+w8mtJdjhBUje+tefWGxR2NkSVNtwTAIc4bGQu3z
 Bw7gWjkMYSwwIAqBcW2Rt1GUn2rxHe5yl/6kc23UC1gX4ULT1+W3lDq4n
 BWHQHnUcytE9fpkTgzUzI70EgeYpvEVkNhXAIOWmctRq+NTXXxsx8nqls
 oHEIAoVLn7bfMFxxUSjtlfZW6oEh9VecZhOu0T5pYDcSn8lrKFuHLKvIh
 PXBv0FJPolRcN82z409oshGdxloeY/ncNZYIKhwVPWisuRPjz8DbA+cCp
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ecf6KCUv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Non-functional ixgbe driver between Intel
 X553 chipset and Cisco switch via kernel >=6.1 under Debian
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
Cc: intel-wired-lan@lists.osuosl.org, regressions@leemhuis.info,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/9/2024 6:26 AM, kernel.org-fo5k2w@ycharbi.fr wrote:
> Hi,
> 
>> No link detected, but it does detect this is a 10GBaseT cable.
>> Interesting it doesn't report FEC or autonegotiation. Hmm.
> 
> In fact, I personally find it strange that the "Supported link modes" is "10000baseT/Full". A DAC is not a SFP+ 8P8C (RJ45) module. Wouldn't it be more logical if the modes reported were the same as those obtained by an "ethtool eth2" on the Connectx-3 side? :
> 
> Settings for eth2:
> 	Supported ports: [ FIBRE ]
> 	Supported link modes:   10000baseKX4/Full
> 	                        1000baseX/Full
> 	                        10000baseCR/Full
> 	                        10000baseSR/Full
> 	Supported pause frame use: Symmetric Receive-only
> 	Supports auto-negotiation: No
> 	Supported FEC modes: Not reported
> 	Advertised link modes:  10000baseKX4/Full
> 	                        1000baseX/Full
> 	                        10000baseCR/Full
> 	                        10000baseSR/Full
> 	Advertised pause frame use: Symmetric
> 	Advertised auto-negotiation: No
> 	Advertised FEC modes: Not reported
> 	Speed: 10000Mb/s
> 	Duplex: Full
> 	Auto-negotiation: off
> 	Port: Direct Attach Copper
> 	PHYAD: 0
> 	Transceiver: internal
> 	Supports Wake-on: d
> 	Wake-on: d
>         Current message level: 0x00000014 (20)
>                                link ifdown
> 	Link detected: yes
> 
> 
> In other words, isn't the fact that the reported mode is "10000baseT/Full" a bug in itself?
>  

Possibly, though I am not familiar enough to know for sure.

>> Knowing the kernel is the important part, we don't have specific
>> versioning of drivers in the kernel anymore.
> 
> Ok. I take note of this information.
> 
>> The steps would require that you build the kernel manually. I can
>> outline the steps i would take here
>>
>> 1. get the kernel source from git.kernel.org. I place it in $HOME/git/linux
>> 2. switch to v5.10 with 'git switch --detach v5.10'
>> 2. copy the debian 5.10 config file to $HOME/git/linux/.config
>> 3. build kernel with 'make -j24' (adjust -j depending on how much CPU
>> you want to spend building the kernel)
>> 4. install with 'sudo make -j24 modules_install && sudo make install'
>> 5. reboot and select the v5.10 kernel, double check it works.
>> 6. in $HOME/git/linux run 'git bisect start' to initiate the bisect session.
>> 7. First, label the current v5.10 commit as good with 'git bisect good'
>> 8. Second, label the v6.1 commit as bad with 'git bisect bad v6.1'
>>
>> This will initiate a bisect session and will checkout the kernel
>> approximately halfway between v5.10 and v6.1. For each bisection point
>> it checks, run the following steps:
>>
>> 1. 'make olddefconfig' to update the configuration for this version
>> 2. 'make -j24' to rebuild with the current version
>> 3. 'sudo make -j24 modules_install && sudo make install' to install this
>> version.
>> 4. reboot into that version and check its behavior.
>> 5. If it works properly then run 'git bisect good'
>> 6. If it works incorrectly, then run 'git bisect bad'
>>
>> A new commit will be selected. It will pick one between the latest good
>> point and the closest bad point, essentially honing in towards the
>> incorrect behavior.
>>
>> If for any reason a commit can't be built or tested, you can use "git
>> bisect skip" and it will skip around a bit to find another point that
>> can be tried.
> 
> Thank you for your and Thorsten Leemhuis's advice. I don't know whether the following Bisect log will be of any help to you. However, I have determined precisely that the problem was introduced with version 6.1. If I boot into 6.0, it works perfectly. So there are fewer differences to search for the problem. Here's the feedback from Bisect, but I'm still dubious about the relevance of this log because the “git bisect bad v6.1” command returned "7614896350aa20764c5eca527262d9eb0a57da63 était à la fois good et bad"... I didn't really understand how it all worked... :
> 
> git bisect start
> # good: [4fe89d07dcc2804c8b562f6c7896a45643d34b2f] Linux 6.0
> git bisect good 45eb8ae5370d5df1ee8236f45df3f29103ba6e12
> # bad: [830b3c68c1fb1e9176028d02ef86f3cf76aa2476] Linux 6.1
> git bisect bad 7614896350aa20764c5eca527262d9eb0a57da63
> 
> I should point out that I had to switch back to Debian 11 because 12 and 13 refuse to compile these old kernels... Anyway, I compiled the versions successively and came across the difference in operation between 6.0 and 6.1.
> 

From this point, it would checkout a commit and then you would build and
verify if it works, and then run "git bisect good" if the test passed,
and "git bisect bad" if the test failed, and it would then pick a new
test candidate. It uses a bisection process (similar to the name) to
reduce the range by ~half each time to quickly hone in on the
appropriate bad commit.

>> I suspect those changes must have broken the Cisco switch link behavior.
>> I unfortunately do not know enough about this hardware or the SFI
>> configuration to understand why this causes it.
>>
>> If you don't want to try bisect, I would suggest trying to revert that
>> commit or simply replace the ixgbe_setup_sfi_x550a function with the one
>> from out-of-tree here. If you do that, you can rebuild just ixgbe with
>> "make M=drivers/net/ethernet/intel/ixgbe" and then insert the module
>> with "insmod drivers/net/ethernet/intel/ixgbe/ixgbe.ko".
>>
>> It seems likely that this change had unintended side effect which broke
>> the Cisco switch linking.
> 
> 
> If I do a "git revert 565736048bd5f9888990569993c6b6bfdf6dcb6d" to go back before the state of the suspected problem commit, compile kernel 6.1 and boot on it, it works perfectly.
> So it turns out that this is the source of the malfunction and was introduced with Linux 6.1.
> 

That is sufficient for me. I did some further digging here and it looks
like this was originally some workaround for a specific switch. Per the
commit message, this was submitted to our driver by Jeff Daly from
Silicom. I suspect that the fix happens to resolve issues on a
particular switch. Clearly breaks other switches and in a pretty bad way.

From what I can understand, the Cisco switch you are using sees the AN37
and basically decides the port is confused and gives up and won't
attempt to link again without a power cycle.

>  
>> I've added Jeff Daly, in the hopes that he could provide more details on
>> the change.
>>
>> @Jeff, it seems likely that the change you made at 565736048bd5 ("ixgbe:
>> Manual AN-37 for troublesome link partners for X550 SFI") is breaking
>> some other switches. It would help if you could shed some light on this
>> change as otherwise we might need to revert it and once again break the
>> setup you fixed.
>>
>> Thanks,
>> Jake
> 
> Let me know if you need more information. I'll be happy to help!
> 

I believe the correct thing to do here is to revert this change. It
helps some cases, but clearly broke others. Jeff (or anyone from
silicom) has not responded with clarifications. We (Intel) do not have
this change in the related out-of-tree driver. Although this did get
tested by us, I suspect we simply did not test it with the correct range
of devices and switches.

I don't know enough about the standards to know which switch is at fault
or behaving incorrectly here, but I am inclined to revert this fix
because it breaks, and the original authors of the fix aren't commenting.

> Best regards.
> 
> ⢀⣴⠾⠻⢶⣦⠀
> ⣾⠁⢠⠒⠀⣿⡁ Yohan Charbi
> ⢿⡄⠘⠷⠚⠋⠀ Cordialement
> ⠈⠳⣄⠀
