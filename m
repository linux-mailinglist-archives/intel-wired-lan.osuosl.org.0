Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qNAIBqmie2kVHgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 19:10:49 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3BCB3697
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 19:10:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E3FF40C84;
	Thu, 29 Jan 2026 18:10:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qcSIznvCvPSF; Thu, 29 Jan 2026 18:10:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9738140C62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769710245;
	bh=PF7AZHim96oogQK+LA2SOzaHCWSLlhS3bt/l6TnbHr0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qnUGy6WbI8LK84HMLePGBfxlQeP7v++rUlgFv1akkjG20kvX9qegDq5hN2eCVo3uP
	 TNQlXF3Z1pMNPt4D5ES5w5J0iN5jZRzkbBXmKj4lH90rTZ+YQcbqr06E6f0zNZV5E/
	 FyZvdgrqFOG54xS/5N1DHS0EZpPIZ3Y2NfooBzonpytc6PF9as/o3XsY4NBtTh7K+K
	 Z6qsCGnrmwb1KwFrHUSJPg1/UG9O6lOKWfHgtt7LqV3onPDBzV8m5zOJQg7HBNHSmX
	 sCA1DXRrvnJ2LcPL8uN284OPA5sPCTa9WxtzwuzQMr8MmvlWfNT2lRvoKtryYDWvJf
	 da1IoDwqtA5pQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9738140C62;
	Thu, 29 Jan 2026 18:10:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 63E6F118
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 18:10:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 45A6940C60
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 18:10:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LTQa0pvO3rpf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 18:10:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3290C40C5D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3290C40C5D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3290C40C5D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 18:10:42 +0000 (UTC)
X-CSE-ConnectionGUID: /ZCq+7QqSgeGS5xlM0RW6g==
X-CSE-MsgGUID: l+7lefxmQ3qh/N9iOeO6Dw==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="96422469"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="96422469"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 10:10:41 -0800
X-CSE-ConnectionGUID: jqnbI46YQ4W3opq/BWhjTw==
X-CSE-MsgGUID: nXLUBuilTfSifFsTx3jf6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="208749858"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 10:10:41 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 10:10:40 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 10:10:40 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.43) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 10:10:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gasluaitJRbIuyXu8VTTWUr1I/quP3k67KqC6gj/7CsbAhyTEeT5WGCD628QdyH7gwxDu0MgCaVyGOvEp/Hq+JZjbgmbUl7mb+1kxcJFitiq++ehpbTc/Cd8TJuiKsgkLkS3ETObz3ZRh9NJyvTyKdPnAOhENKuyw+ItdoKVndR5oy0h9Xvm1nWBu9B6Aol38cO0N1j8/pnnuKi9YzVVD6Ipys+1+To99RiSxOVzVez2N5uy9Mif3PdZHStU5twAEkrU7UeJTrwru+JG9/4IUygaqb0H5nrDh9YDtZ3kBj2vMyMpTYFneqw2SUTALD6VGg0JcmCB1OVtDzHVUXszcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PF7AZHim96oogQK+LA2SOzaHCWSLlhS3bt/l6TnbHr0=;
 b=JN9rXiDsIiFyWGCWVL1zLNKvHsTM1CyHZ9c1hDVTvdF5KIep+qaTmFqt4UYkRgpdf7yRlwL3/yteamIwhFvvwE6qHIkfIKuos9snaxihtE0X12HUKX0IT3vtQQf8h8vxlrfOtCWD0d8vbFtgrEuHDegZpJN2U8UQ2Pi7QYuO9Oeh8Bb5ALILaDyoQkfvA9P7XGKPoINv1TJsUnOZawTIHcThBmjWZw2WfS4pMtgvTCtZf8Sl4yJBJGNjMuuJ3a6i/RaNF9gkYJgRDJlDboZndRM8m/eflrKAXaVS01agSCiXt2Kxst6D6bUT0lRuNdek62QkscnFJ1njsWMPxTusxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH3PPF23335A1E7.namprd11.prod.outlook.com (2603:10b6:518:1::d0e)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Thu, 29 Jan
 2026 18:10:38 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9542.010; Thu, 29 Jan 2026
 18:10:38 +0000
Message-ID: <8b146fee-a63e-4e22-a1c1-eae052786e66@intel.com>
Date: Thu, 29 Jan 2026 10:10:37 -0800
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>, Piotr Kwapulinski
 <piotr.kwapulinski@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <dan.carpenter@linaro.org>, <horms@kernel.org>, <pmenzel@molgen.mpg.de>
References: <20260129175455.174241-1-piotr.kwapulinski@intel.com>
 <60e6bfa6-4267-4d33-9987-24b87c0d0091@lunn.ch>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <60e6bfa6-4267-4d33-9987-24b87c0d0091@lunn.ch>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0324.namprd04.prod.outlook.com
 (2603:10b6:303:82::29) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH3PPF23335A1E7:EE_
X-MS-Office365-Filtering-Correlation-Id: 51b21128-2d87-4cda-569d-08de5f61b4b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Vk96OUFUcU4zb05QVEtETjRyVndhYUpyb2h0OWJISUFuOXVMRitaT3VEZC9i?=
 =?utf-8?B?Qm9VNEMwblB5ZTkrQXNwYnZqd3RxaC82ckg4L3JaZ3lDOVFUMVAyaENKQzJw?=
 =?utf-8?B?QWpyMU5lMVZUNXNsVjJLTWVaempSWHVBeU9zMG9MWGZVOEkvRlJidjFoVDhJ?=
 =?utf-8?B?dC9HRUorcW9sdXpVcm1Zc2h2STl3QTgwcUZob3g4c01RL0lVSmQrckxTczQ4?=
 =?utf-8?B?SmgzcFhFMThKVVJocEZjUjIrd3g5VFFwb1JoVllBNG5ncDZpa2doN2MwNGdv?=
 =?utf-8?B?d2MvUVdvSVMrbHJncjJCckErN3U3SlBwU2RUb1FaeE1XUjZTWEtIZnI3aFRY?=
 =?utf-8?B?a1ZUT0xFaVNBTGJ3VERKWUhBTnpqVFp4UnVSbmhwaVZJaStYOURWUFpzaU5W?=
 =?utf-8?B?U2FWUDNxOVpmekhIMVg5WWpZSUt5aXZUdTFKT3lzNG90ZVMvdHRoQlFaQnRO?=
 =?utf-8?B?a1phTnlVQVEycWwzR0w5d1pGS3l4dS9zS1k1LzQwRTAySVVvQkxERUh6cTNp?=
 =?utf-8?B?WXpQK0tPUWpFSWx6Qm9XQ0tnbjdFMUc3TVovNWd2S3UveW5ZOWQrT3U5VFgw?=
 =?utf-8?B?WlluWTlvSjhDdUxVMFo3OUlUeHc0ODBnY1NnTEsrV2J3UkRQYXNieHQ1YkY3?=
 =?utf-8?B?bnIxckVHdkliYVB6NGFpeFM4Y1RIOUwyVEtjSHNTUk83azAvY0ZuU05lTlpD?=
 =?utf-8?B?elZySmk5anZITzl3YTlTUWduMjhmZG9ORzNnM3NkOWttVkJlWGUvTWFQeHY0?=
 =?utf-8?B?WnhDK2xHNy9qUzdYazVSN0ovNmh3RHRncmxZT2ZQcm9MekhKVE9COHlWamdK?=
 =?utf-8?B?Rnhnc0VPNGk3ZTY5UmtlUkdETVJoVS80eGpqckFOSDV1WURXZWNBRlAzckVD?=
 =?utf-8?B?OU15OTZ3QU5LbmVlTXlCV1RobHRiM3IyS1pCczZhMW9OUG9TbS92RmpBbGxt?=
 =?utf-8?B?R3dmeHlCVmt2L05ITHlxQ0lsVmtieFMwTWtaMllwMDhaUzhOcnpqMjdTNWRM?=
 =?utf-8?B?Y3hwV013eWx5bzV3dmVrNjh4V2FoaDg0ZzdoSWFkOVYwbDV5ck02YUI2bXR2?=
 =?utf-8?B?a0g4WmszSEpsQlBjNUh1TGdKaFpjRnl0bUplZmd1K2J2Y0VKSEE5aWwvOXhu?=
 =?utf-8?B?THVoSFNhQzVIKzUzZmhpaDJWQldnT2FPUHpwRnJmem9RRVpkRmo1a0Vhamc4?=
 =?utf-8?B?K3NDSi9WNWNTYUJkdHVvRFVpNGxXajVVVWU5b3B3YnRVOWVSU3luamlBbXpP?=
 =?utf-8?B?T3lwUEJXV2FacHROOW9GWlppZG5yWWk2VDdkMHBaZll6NWkvSytFbmZQUktQ?=
 =?utf-8?B?clg1QVVIbENVNjFndFJwcm52MVpVWE9waDJmWUFQUDNsYUMxdEhIZzVTcS9t?=
 =?utf-8?B?M25ucmhJOUt0bGJDRFQ1SWVjaGdUakRVQkpOVStva0JXeWFjUThOMkl2VDFw?=
 =?utf-8?B?REVnc3R1Zk9OODNObnNYOVVZY0ZjWXpXbmJoTjhCV01hWFpPSmdBNnk2UWdT?=
 =?utf-8?B?NzEvZ3o2N0RwdzhLSTVLYTRQOTZZbVgzT3B5SVR5dk9lSnlsL2pmR0tJRWpy?=
 =?utf-8?B?bWRrTmovdXE3N1ZRMnBib1ppcVVXNmN2bjJsR2FmRnY2QjE1ZzVUNFlwS1Az?=
 =?utf-8?B?YU1HTlVXbjNNYy9DSTVpbUphMFMxbmRoMDNSQUsxVFlKMWtRZVY4ajFKOHhC?=
 =?utf-8?B?NFlLODl1YXBJUllsYXJjZlo5eEUveGJFaERJNXJVZS9GVTQ3Kysrc0pGa244?=
 =?utf-8?B?MkJQYldjN3hUNHY0bmR1bG43Q1RyaXhXK1YwK3ppelFkd2JLK29pQlFna1Rr?=
 =?utf-8?B?Vkh3Y3hCbkRwVDZqbjdrWXZNNDdzWEtNM3dXTjdhRUtJRlJyQ0pTV1Z2L1Vl?=
 =?utf-8?B?alB3dHVHTlBsUW5RMmc0TjVMaVFSUStzdGNicThyakY1Y09NZ0FXbW03VWdJ?=
 =?utf-8?B?cGMvS3ZEb2MwU0lybjJzZ3FHbWJQS2ZmK3NHdW5CUDRQZ3BOWUQ1Z0lWbFlX?=
 =?utf-8?B?R0wvaUdsV043RDM2U3BTV0ROaFNXYTlrL0dtQlg0M2VGeWtuZHMvdHdJOXF2?=
 =?utf-8?B?cGJwaGxuSTFiVEgrL2FwajJTRklMUmhsdFlkKy9wRCsrQ2FSL2N4bEhla01P?=
 =?utf-8?Q?MtC0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dFZpK2EzL3BxK1FncVNWalZjSVp0bFI1VE9mNmRLQ2hHeHdWcDNKaktaMzQz?=
 =?utf-8?B?WDY3d2hrcDM2dEhJUUoybWllNEJzT3Q1V0cyb2duZXB5YzIxTHc0VGREZ094?=
 =?utf-8?B?akxNamRsc2dya3I3ZzdWdUFBWTVzUkhzQ29vdjdVR2FleU94bDlDNi9jSkNr?=
 =?utf-8?B?NThHeU9zNzVSM1FYdHgrcWl4dVpuQnlWTXlhU3A0d2lKbFRyYmlYRTFWc1F0?=
 =?utf-8?B?djc5OE9YY3hROXYxcDViNnNKTFBzd0IxZml0SWQrdlIrOFFpNy96eFo5bUlp?=
 =?utf-8?B?dTJjTjRRTlp5R3N3TnJLN05EN25UbW5IdTFBd0t6UWVMbXRyOUVhTnVTejhv?=
 =?utf-8?B?RHpucU5TM092RVF3MWZudWM2VzR3UEY0clA3ZEgzMDRLOW1sVjR2ZWVlVHVo?=
 =?utf-8?B?VWxsR2hzbmVSTWtVakRvNENhTmpqbnU5MzZJSTE1ZzIzWmpXN2phRkhFaDAx?=
 =?utf-8?B?RGZoNkFPV3VMZk96WngzK0JRWEZ3NmtKS2VSZC96cHlOdVpYZDhDdWlnK2x0?=
 =?utf-8?B?eHBmNUFKRVBlM1N4Qk41YVI5czRDUnZGZnVad2M1SExlUmxGb1pRR25yR1h1?=
 =?utf-8?B?R2pzd2ZJUUh3WTFQY0FZVk1zSlhyckFWZXQrcWZuRUZKNXVpQ1FLd01uTkN6?=
 =?utf-8?B?V0RUcFB4dmdGWjFQekloV2lKa1pmRWtybFBnSlQrc1ZrcVR1WEovWnNSSGFl?=
 =?utf-8?B?OTMraXU5TW1mMGNFRnB4VHJXMjlIVzRNZzZianFrVEduck43QWdEeHA4YXVN?=
 =?utf-8?B?dFJ6QTgrNTJhWk5MUGpRREF2Rm5xb0oyYnhCVDN4b1YxV0xWcHNPOExkUzRy?=
 =?utf-8?B?Q0s4dmhObmdnMXl6eERvMFNWL2hBc3p2akZhdnBLOFUyd1BxSkp3Y3RuY2JZ?=
 =?utf-8?B?MnZLOUpvbDJSNGc5VlZqV015clFYOXREZm1oZGZ3OG9pdEh3RUpnSVNlMXF4?=
 =?utf-8?B?RWxKZG9YcG1vV2dRYnpqZmFESllWUEZacENORzBzaXFTcG0wYXBaQVVYNWZY?=
 =?utf-8?B?aUs5bW1PNUtNRFpCTEdMbFl2RW1ydVF2TGlnTjI1QU96Y1kwcXN3TGU0VnR1?=
 =?utf-8?B?SDFwV2wrTVJrUDFYZG1UaityNDNTNUU3RUk5UExKYmhaZW53MlRWY3dwSFN6?=
 =?utf-8?B?RmtnOUd6a3NSY0dDd213cGNSU25HcHg4MkoxQVhhc1RqRThaR2FXYmJLWlQx?=
 =?utf-8?B?QklheVdIeDhKeG1QODRSWlhBc29sRVp1aXBZSFM1d0ROV21qOS9NSkZkNDN0?=
 =?utf-8?B?SzJrRCtjaXRrVjM4U3p5VXRtUmhKd0ZtU2FVZUNwWUpVcC9aZWtyb1BJbHZk?=
 =?utf-8?B?RHZvQmI2Q3lBbE1hbFdtL3B0MEhNWnAxRTNjeUY5bW5KK3prbld5WUtFME9h?=
 =?utf-8?B?QnVNd3ZXdkQreHNMeWZzeHRBYys2cy9NU0FRcXhUMWtUaFBPU01NTWo1QnBi?=
 =?utf-8?B?RWhGcWtpTXErSGJ2Z2Zpc0NZdXM5MXNVSlhWdmsrR0NQT2sxV2dNYjYwWVVD?=
 =?utf-8?B?dXhiTFVMeVkxWWYrQ1B3bE1jTVh5elBpd0VMV3QyVEJKOTcwNUNEaDdxQWlw?=
 =?utf-8?B?SlFDWXhDK2J2OEJaTjgrbjJLUDd4TzFkMFNUbTZVbEtoc3g4SVdDaWxFNXNn?=
 =?utf-8?B?U1o1UlZ1Uk5uZVBKbFplRjFNR3VuaDhmVzJSNkt3MEZrblNzRmNwcHRObm9S?=
 =?utf-8?B?bEpzNFF2QVJldE9INHJ1U2NkOThGU21ScGZqejMzeHZxcFFQZ2ZhYTFSSlJO?=
 =?utf-8?B?UktFbm5xeFE4TjhmWkVDZFB4M2RwRmVVUUtUQVg0cm9nNGtOSDI2YUwvSEIr?=
 =?utf-8?B?NFZOWDhuekpmUWhSeGNNSGdTbWdSTUkraVB1UXV0NDc1L0xpZGF6QzkwVXZy?=
 =?utf-8?B?SmtLRFNGZXBMaFRRUnh1Tzd4cXJiLzJncG9QcHc5M3pkY1pCbUhmNWpiVW5x?=
 =?utf-8?B?Z0RZUWtTc0JBL0VXbkoxaUZsMmE3Y2JTWmdjZFFTWjRyVlJmVHJMTnQ4OWtp?=
 =?utf-8?B?STFjcEhrMkc1RGhjTzVJdjJsdCtxMDNZb0NqeHJVUGhuYmpKbXBSNU8rMXh6?=
 =?utf-8?B?cEVzN0kvbm9TZHBNVjIzNDFMTEMrVUhqZlNCWTNzeE04eVArbHlLa3hldkh0?=
 =?utf-8?B?OVlWSFZzbXBEcGhmWXE0bXJYL2FBTnEva0ZwUzg1STQ2VDRDaXZQaDRUVS9P?=
 =?utf-8?B?czJENlhVT284amVkY1VtdHVWL0s5NHBoMkdoUEhSQmN2ajk5OWZEbFFXRmxo?=
 =?utf-8?B?YnZLMVpKeTRPN1RFa0VnbUs3TnhUcEZEUU9RMm9vWW42L3NBWWp6QUpSWWhG?=
 =?utf-8?B?OXNGTTZSM2ljMUZaV1BxbHMwVzc0cUg3YlBtbUd2ZzRvWHVBRG1Bd3VZb3Br?=
 =?utf-8?Q?/zT9nS92IaHwUlpM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 51b21128-2d87-4cda-569d-08de5f61b4b7
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 18:10:38.2725 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c0ORZix7gZ/l5m/LuLeJVEYE2+Mi7AKz2KBNJMV+NCmLIL3uyAkG7XeOOK0II1I4bIRTSjmCxRgpou7ty/aHurUwCJpbiwu1QH/v22c/dw0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF23335A1E7
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769710243; x=1801246243;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yCPc/QW5NQgRTALS2Uxo5YrGtTUc1JRzTp9Lxfj7W4Q=;
 b=CAp+QDXBbHv5fcZTSecJjhIi9mFhym375TS/2M6SXRM80cRENMbpugmR
 69/5A5ytNKdeHiQ2uULUp1zSEvSYp1wuQPHpQyTZZi97Z1s1etwW7czOX
 UCYrERmERU2oKLgqbc/4RujieTt1ndfzpOyWh+kJ/CHThAZgeZXsPlZZW
 7CgWd2bCV5wRX0/IJ2wePDCpT3vHWcNomvKlDz+FchOMkc8cmaABTMb1j
 2q19w66/A95qlt2Ws9VvIcwFx3CWCJ1Li18dt9IoH0zLRjhXZTIiTAOWW
 bYmLxv1H7LaAiQwSaliX4djqVkB6VlLWPAt6bT/ESY9Xvn6YhK7DFvMsl
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CAp+QDXB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ixgbe: e610: remove
 redundant assignment
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andrew@lunn.ch,m:piotr.kwapulinski@intel.com,m:netdev@vger.kernel.org,m:dan.carpenter@linaro.org,m:horms@kernel.org,m:pmenzel@molgen.mpg.de,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 9C3BCB3697
X-Rspamd-Action: no action



On 1/29/2026 9:44 AM, Andrew Lunn wrote:
>>   	/* Read sync Admin Command response */
>> -	if ((hicr & IXGBE_PF_HICR_SV)) {
>> -		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
>> +	if ((hicr & IXGBE_PF_HICR_SV))
>> +		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
>>   			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA(i));
>> -			raw_desc[i] = raw_desc[i];
> 
> Did you look through the history? When i see code like this it makes
> me want to have an understanding why it exists, since it looks so odd.
> 
> Is it a merge conflict resolution gone bad? Is it a typo and there is
> a cooked_desc[i] which could be set?
> 

Nope. Looking at git blame for the kernel, this appears to have been 
here since its submission. I then went and checked what was done in the 
out-of-tree releases out of curiosity, and it looks like there was 
originally a CPU_TO_LE32 macro which was doing byte swaps, and an 
equivalent when writing the data in to the registers.

raw_desc[1] = read_reg(...);
raw_desc[1] = cpu_to_le32(raw_desc[i]);

I suspect the byte swapping got removed from the original upstream 
submission but no one noticed the extra assignment.

Of course the register accesses always read the values in host order, 
and I can't imagine an OS not doing that...

Hmm.. But now I have some questions...

The raw_desc value comes from the desc parameter of the function. Thats 
libie_aq_desc now, and  its defined using __le* values..

We're chunking up the descriptor buffer and writing it to a bunch of 
register blocks, and we don't convert from LE32 to CPU now... so on a 
BigEndian system this is going to not swap the values properly...

Which makes me think the original change would be required on BE32 
systems.. But.. even worse..

I don't think we actually can just blindly copy the values as chunks of 
4 bytes and byte swap them.. That would re-arrange the fields, since the 
structure layout uses __le16:

> struct libie_aq_desc {
>         __le16  flags;
>         __le16  opcode;

These would get swapped out of order.

>         __le16  datalen;
>         __le16  retval;
>         __le32  cookie_high;
>         __le32  cookie_low;
>         union {
>                 u8      raw[16];
>                 struct  libie_aqc_generic generic;
>                 struct  libie_aqc_get_ver get_ver;
>                 struct  libie_aqc_driver_ver driver_ver;
>                 struct  libie_aqc_req_res res_owner;
>                 struct  libie_aqc_list_caps get_cap;
>                 struct  libie_aqc_fw_log fw_log;
>         } params;
> };
> LIBIE_CHECK_STRUCT_LEN(32, libie_aq_desc);

I actually don't know which is "correct", as I don't really understand 
what the register interface expects, and how it will get interpreted by 
the firmware...

Maybe the byteswap of each 4-byte block is right? but I'm really 
uncertain now...

Presumably it expects flags first and then opcode? we're writing it that 
way now on a LE system.. But on a BE system thats going to be 
byteswapped before going into the register.. so our 4byte chunk would 
end up potentially reversing the flags and opcode w.r.t what the 
firmware sees??

Hmm.....

>>   	/* Read async Admin Command response */
>> -	if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
>> -		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
>> +	if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C))
>> +		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
>>   			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA_2(i));
>> -			raw_desc[i] = raw_desc[i];
> 
> and it exists twice. Which makes it even odder....
> 
>      Andrew

