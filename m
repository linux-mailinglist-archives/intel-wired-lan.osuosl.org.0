Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E09889445A0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Aug 2024 09:38:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9CC3340BBF;
	Thu,  1 Aug 2024 07:38:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IzFsIdbN5fpV; Thu,  1 Aug 2024 07:38:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 809A740195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722497890;
	bh=H0ds/KVuodfPtvaDrEmqJFKUaJnvcGqEN3KvudTyDkE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BYJwDwwFAjcGNu9IAWWMRI7ZAVBeL/g20ylBaXIiTbeut0GbblnpnH4VgKUlArHGd
	 MRKrdFRp44OUBOArUfsIJ/A6nmmQL5ZFWGLSY/pGZihAwl4Dwj0voKwRZ4igH/z+tT
	 M7a2uioaUMapXJNrPm3jlb3dWACH1+zceaVcrgj9B1Nd0RHv/QfKmDgDgRQgnacJ9J
	 aWxF7+fwC/D7NlDlBvjqj6ZlpVfVmAwiHKOi0qyl+aJ9fMGoq5/lDkb+qGZGkcwtq3
	 fwhskuY1sjdV/EKMLsl9hbR4BQUCUNM2UndeZ80BvA5d2xopQ6rPJKaKpAeM4UTcLt
	 1LpLmZtioucjA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 809A740195;
	Thu,  1 Aug 2024 07:38:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 652481BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 07:38:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 51C4B60B68
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 07:38:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RmWtA_bFx1pW for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Aug 2024 07:38:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6CFC160B5D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CFC160B5D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6CFC160B5D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 07:38:07 +0000 (UTC)
X-CSE-ConnectionGUID: O/ubWbAeQLCrw3nlABQpcQ==
X-CSE-MsgGUID: pq5o2XavTaCDQ/k2En8I9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="20612910"
X-IronPort-AV: E=Sophos;i="6.09,253,1716274800"; d="scan'208";a="20612910"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 00:38:07 -0700
X-CSE-ConnectionGUID: CZhZ+OeyR5GE3aT3Mo0g3g==
X-CSE-MsgGUID: Sp9LkkjcRp2ukSbvrHIojA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,253,1716274800"; d="scan'208";a="59270923"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Aug 2024 00:38:06 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 00:38:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 1 Aug 2024 00:38:05 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 1 Aug 2024 00:38:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jee/8x293VlqRYZWyX3ZLvvEe2DT6MPWMBpd4u6vLyPD5oxMDuhNvy1K+ORrnlAYqSJypKSbFdS6luiXPJuXjmp3DfIxSOoRErwdqqCH4HgTrBCmAWrSN0Y5ZHsyLHt+ihdfZrP8D6NxdfVQmY1GLG+BCcob9pHb9GXMEHsJgh1U7F71JADJV9agg+wbIuAkiK+9UGfuzCRc6A3bv5me3T95ALW6COGboa6JlPJxvysiAxjtTTYmjJ6kicU02ys20naUQo90Z5DAXKsHNCY1Yv1yIW5APmOKo40H06BGzPcLImnzMr+ujx7G2bgXCFGYgKBGrvlFreeeYT0ZThdzYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H0ds/KVuodfPtvaDrEmqJFKUaJnvcGqEN3KvudTyDkE=;
 b=jiBlsXcX55oHjrUgKO/uHw5vB+S1Gwes06IGiqVRM4yYOcwU9VUBIAKBNCr4EcNBym+KDD79lxOiQ7dKZrVjGS2qHznsGQiN0RJKDAe/IPchXviyqX7w9y7iFuesl8EFIW8LhufrVsGhyy8wQEtZ2k92faHIE4Wya0oWqVE0XZH9uFWtLLl9+cb8qDVdYzwQKkoh9SBgCa/u9YpN0cFpXZt7PragIFvhlB+ATyJGf5z5K83ELhEahJLHVSAC3mGL/UtzVH1zK1RlqNNX/2z6RSZbjyps95q11V2u4F2gU+hSkxc7pHGy/iK7JDeT3MpVFRPYmljea3IlBGUQ2xkoVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB5803.namprd11.prod.outlook.com (2603:10b6:806:23e::8)
 by DM4PR11MB7301.namprd11.prod.outlook.com (2603:10b6:8:10a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.21; Thu, 1 Aug
 2024 07:38:01 +0000
Received: from SA1PR11MB5803.namprd11.prod.outlook.com
 ([fe80::e976:5d63:d66e:7f9a]) by SA1PR11MB5803.namprd11.prod.outlook.com
 ([fe80::e976:5d63:d66e:7f9a%4]) with mapi id 15.20.7828.016; Thu, 1 Aug 2024
 07:38:00 +0000
Message-ID: <86d138e9-0d1d-4547-839d-29d428aa58f1@intel.com>
Date: Thu, 1 Aug 2024 10:37:53 +0300
User-Agent: Mozilla Thunderbird
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, Simon Horman
 <horms@kernel.org>, Richard Cochran <richardcochran@gmail.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>, Sasha Neftin <sasha.neftin@intel.com>
References: <20240707125318.3425097-1-faizal.abdul.rahim@linux.intel.com>
 <20240707125318.3425097-4-faizal.abdul.rahim@linux.intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20240707125318.3425097-4-faizal.abdul.rahim@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0029.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::19) To SA1PR11MB5803.namprd11.prod.outlook.com
 (2603:10b6:806:23e::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB5803:EE_|DM4PR11MB7301:EE_
X-MS-Office365-Filtering-Correlation-Id: 57f1e5c2-8efa-4949-c95c-08dcb1fcdeb7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YllhYytISlh5bkUyMWRHR2xsOTlYQkVDSi9GK2Y0QitZRno4dFhJVDVtR24r?=
 =?utf-8?B?WWt0TlByL1VmOWdwblVaa0xTdWJnNGJ3b2l3cmpUWTI3ZGYxbHN1RjRKeTdn?=
 =?utf-8?B?M3BxVTJZWm5nL1V1RWx4R1Y3c25IWDZnU0FBQW1oeGtXR3hSNXUzUnpZQTJM?=
 =?utf-8?B?ODNWMWFabWJ3bzZwQk8xYlh3OVdRZnJ0b01pNjdlaUZNalczQWgvTkVEbjFu?=
 =?utf-8?B?c0ZQbjdWV3RqMVhIa3BNNVBEem1Kb1BSckN1VlNRbUxlUUJrZ1hrNzZlK2Zh?=
 =?utf-8?B?bFhOTExJQWxGZTZPSFVsdFQvUFo2SUs1OC9hUDJIMkZMQmplMWw2Y3duVGgz?=
 =?utf-8?B?V0VxZjZMRWNtMmRJOW1xeURTZ3dlTkU1YWV4OExoQkptZHd6eEM1T0tiU0sz?=
 =?utf-8?B?SEpuajR0UVZRck82c0QwcjZMNkxaVUZKbWk0cUsxZGZZNnJscUsxVjE4MklT?=
 =?utf-8?B?SS9hVTJyZFRSN21RWHhrOXlkeTdXL2lBZXRrN3JrWEYxN2JsZTlKRjlMcmJQ?=
 =?utf-8?B?R3JQRTQyNGhVUzJXK0RSbDRtWmpQQ0Ntc3lGSk5rSFdrU0FoUFF4TzFacmtx?=
 =?utf-8?B?VEVLR0YrdWIwa3Z1UlJLNEoyNE5YRldNeFhMWmRVbnIrRUZLOXphcXRhdlgz?=
 =?utf-8?B?U0phbmhNcFRZRGQvdlNiTGwweDBPMTVJaGRjU3doTnkydTd5L240MVRqbEJl?=
 =?utf-8?B?MnhyOFpaZjBJRWhQWUpVb3ROVWlhcnZXZE5KNUo4VzNFR0RIdTRKQ2Jaa1JT?=
 =?utf-8?B?ODFBeXNITUNPZUhlNmt3b2hXb1JWUGp0NWtwVFlMRlFuUVcrOHVnQWZZeVM2?=
 =?utf-8?B?NE5VMU5JM0hTcVRQbmpjbEdNZkNkLzVsS2pBaWlyUm94Vnhqc1c5RE9ndkxv?=
 =?utf-8?B?RXc2M1pyRDl3ZWFyT2lNVXU1Q3RrOS9WQytFUVAvVzNDd3ZvMy9HWUJwSkpj?=
 =?utf-8?B?c3VSRmVEZFlGNW1DcTl0VFNwWTgrTlI5QkJ0ZGJWUHRBeUpUdzd5akZPV25z?=
 =?utf-8?B?cGp5amh5NWRmVzVvdExaZjhHM2RhZUtkZGNZOHNlWGxYMFVxUjJLQzRONURY?=
 =?utf-8?B?WEFGbDJyN040bnl4UXhUcHFLVnJlMGFxZGJIdk1uR1dTMWRBMnVTYTFUdFJO?=
 =?utf-8?B?eDYzdkk3NVlVM0tMcVZuSms5NmpnakhpZk9sNnkvMWFYSklnRWtaYkovSG1J?=
 =?utf-8?B?b29KMFBBcnd0ajZqSTBYK2VXOVZuTEg4R0V5bTQraFJIZmtmcS9waXFTYnUz?=
 =?utf-8?B?TVBkWitVeUpqYkxjOU0vRGhJYXlPclZnQnhKaW9PN0NlWXYvL0RLRjFqU3Vp?=
 =?utf-8?B?Z3JEenkzVmZRNXdPRms1REo3VTcvU2laUEs4aHJvTmJvMEt1RDcrQmxSb1Bu?=
 =?utf-8?B?dmJYVWRTUWxtRDU2V1hKb1g3UittTllqVFJPZCtLQlVjMElmYWx6Zlo2Wklp?=
 =?utf-8?B?Wm1HM2J5elpocFIwUXROZFB1S0F4ajNHVCtvc1hBbWRNVmpaMmozVDFwSlQ1?=
 =?utf-8?B?MDhZQVVQM3ZISGFaNDR3bkQ2U3hHVDVJOXk4R1JsTkxVQlJaOUVYbjFYamkz?=
 =?utf-8?B?K05oRENqb0xFT09odHNZMWF0RDZqOEZoVjREcE53MmlIM2VuakNYMjl4TVJK?=
 =?utf-8?B?OEdUci9mZFZJYmVxRFVFZGREdnlsUDlrM2RFRWdweEwyM2xnbVN3NGJJcFJQ?=
 =?utf-8?B?d2pvSmcxS04xTlpyWWdxci9GNlZNV1ZZUnk1NHBKQktzdTdvMnI3RlJWdU1U?=
 =?utf-8?B?MjZCSmFlbnJEeC9JREJDVnpVc0xML0paN2xKK09zSXpSYjNwRXFVWEp4U24r?=
 =?utf-8?B?RVJjb3Y5V051S1hWTnlGOFQ0L3dHT0lsTjdCUUZWMXNXWTlkdjZxNEZFWVpX?=
 =?utf-8?Q?j2bdU/L2JREo4?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB5803.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YlNqdkVsd0N1eVB3WFk5VmdlTUJsNVdVUklFYlc5T2NjbUhDTFJGYmZXZUh6?=
 =?utf-8?B?Z25VQnlKRUg1RVBIVllwZDM2cFNZcEZsKzNTTHI2K1VtaDRxNjF5c2FOdFpL?=
 =?utf-8?B?dnJJTkp3bElVNitmdEFyUldscU90OEJ0QUhtbGs1UFM5U2pWZXdxa0F4UzZy?=
 =?utf-8?B?Q21mYTVCekNtODB1OE16ODRhMWhwdytiOGtrNGZzckhseHhaaWVpa3F4TWsv?=
 =?utf-8?B?aGhqSUwyWGhad3R4VEZIS3BFNnZGc1JXSTEzamF2NXRCWkVoejN3MUdTNGhk?=
 =?utf-8?B?RG1sK3VIdFBuV0Job3R2WG9VRWwwZlJSNWN6SmpmWDl3ZnpRNnRjMnIxRWFG?=
 =?utf-8?B?U1NpY3Q4emZCUm92dVdMZ2JkRUxZODlGK2VjMWpXOXBBVXBXZHhOTnNHZEZJ?=
 =?utf-8?B?NU1FWTlTS0Npb3dSaFVUdXFZQzhvSGxHd1U1K2tIblM1N3NPdzllK1NDYjVN?=
 =?utf-8?B?Sk9NNFRRME4xMUN0MUo1MmRiYlp3bzNKN3NKUHVXOUFjTEpMTXR2WThDM2tD?=
 =?utf-8?B?UFhzN3VaSkpOSzFydjNJUmM1YlZHVVFDQ1ZSOS90aVo3ZUljeWZrdnptWXlH?=
 =?utf-8?B?WG93dWJKd1pwYWM5YnM1dzZGaUdEYitUMmVLR202ODJOTDNYUXhhV05JaWhH?=
 =?utf-8?B?UVFmZFlCdVI2NjJpTWpFUUFWbU9qZ2FaQVJNTGJRUG5NSkh4UVpjRmZqRWdC?=
 =?utf-8?B?dEtBdXd4L1VxTm41cHNrbUNmaTJFOHdYZ2hYTGFMTnFMNlk1bmFueEE3d3V6?=
 =?utf-8?B?OUtLVzYzTkl1TjdDTENSejRaZ0FuMU1ieng5VnJuakpCbHlWZXFOMGRueDJ6?=
 =?utf-8?B?dmRldFZnODJMa2REL2tlemRsQllIME8ydFRIb0ZXcW1IZHkzSnQrOUlVRE1C?=
 =?utf-8?B?K1B4Mk5UVm11aHNzZTRQN1R6VkJ3MjdtYzA2bEpjVFgraHhhL1ErZFRWU3R5?=
 =?utf-8?B?dEt5emxsa3JGOEJkZ0FLMnlaRm9NYjRmNXQrWit4QktJUEFBR2xaZklmZk5y?=
 =?utf-8?B?REk2WXNhRklPcEE5M0VyMmlBRVdZN3BMWVk0VXdvZ1V2MWExYlBqc0JFcXhX?=
 =?utf-8?B?YWhERHZxUWZvWjV1QnNRY2IybDM3cUM2TjNHTm5vdnl3R1NtMXZRd1VuaDZG?=
 =?utf-8?B?YjlaY0pVWnlORWwvMDJPR0hEYmovbURBVXNsazhVYTBSNlczcjcyQTRQZ1Vz?=
 =?utf-8?B?MjlmclFRUk42a2hZMVJaSHV3TG5scVpjUmE2N1RRZ085YUt2ZDE0RzZ3VGlD?=
 =?utf-8?B?TFcxRkM4Uk5UYS9pS1V2ekFsNTZZYkw4dDJ0eWJnOHk5bWpSWkZ1ZlMxaW9N?=
 =?utf-8?B?RUxxWjVpSi9DallvUGNMczBlS0lJRHJ3QnBPazFSRVdNMjFXREpNZnBDMUFp?=
 =?utf-8?B?NGJkMWtRcnhGVHdlSFJXaWVCSml4eVpURnJmR2xKUU11d2JyWldOUFdZQ1Vm?=
 =?utf-8?B?elV2cktwUjhHN3gvaGFBaUExLzNwNisxaEVWWHlEd0lYZ1ZIRFE0dVAyZmpr?=
 =?utf-8?B?YjRiTU9aa0RxN3RiR3g2VERka2Z0VkJ1bHFjaWhCYTY4dEJmNUlUL0Vxd09P?=
 =?utf-8?B?bTJ3ZHBoaFVVT0luRlFPeUNDVUNPWlp6aXRRQVdHN3ZTZ3hzKy93dmpMNmFq?=
 =?utf-8?B?NmJ0YXRMRWZsbVVidXl2NUFWbk1qdWtnbGc5Tjk2eHlUcDJ3M2U4VWFQS2tI?=
 =?utf-8?B?VVcvdVRQanF5WkZGZVJaa2hudWJZb2g5VGgwem4yMG5ST29zNy9aMmpLQXor?=
 =?utf-8?B?bE9MNDhjQzFEQzhhR21zTTRhNnN1OGY1aTRHVkw3TitxMVVXcWs2TkNZeXpV?=
 =?utf-8?B?YlNpYURMZWRrMEpEclZ5SFZwdE04L0FSR1p4WFI4ek9KeHF6dWZPRFhwVWdI?=
 =?utf-8?B?OE9RU0NMaDQrVDZQUmtFeDdKQ1hsTjRTaElWU2tXTzdMQjZlK2xZMWRYMTdS?=
 =?utf-8?B?dzVrM0wrZFFmbkF4VFZDVnRsM3YxNFRURStYdDlJY0d4ckhISkhZbFRwcjBJ?=
 =?utf-8?B?ZVVWYzlNSU4zczl0bjA3MXlTbVVDaHNnY1E5eEc3ekhzaUZLS0FLYXVqd014?=
 =?utf-8?B?SzlyYlJrWGF4YUcwVndjcklRczIvUm1wQ1hXNGw1NjdNSUFwUVlxS0N0T1Nl?=
 =?utf-8?B?SlNvRkNkVmRCN05NbC9oZmllYnI2TkFYTURUakJRanV6eUtzMDVQNkxMZjl6?=
 =?utf-8?B?eVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 57f1e5c2-8efa-4949-c95c-08dcb1fcdeb7
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB5803.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2024 07:38:00.8551 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PTdAONSRM7FrUvSbk6By6N5vnJTDkrmRQlPmKMpG9KCc8I1/4YwKkI67qyOzsdRwsTaIo01aWRDvNOdbxCak5AFXLf62a2c6lAQebBkI4O0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7301
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722497887; x=1754033887;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Dsdg9dTUjuXiO4BoFKIowRdUq9fTILh42kX2Tc0aPUg=;
 b=Qyc+vtbNBsfRS4Bs9dQK75EfDWlpEnZTt59iDmSh37O+ZQDRivH2jeUg
 ByUZIXtGgwlEgO+/xmHs2hvfT2wSHZpyM/vE9ZF1C4P+I9j2/4UhRG4xx
 yCFh9q+97ZrRqF2erH/OSPUC9ilUD6IAfHT8Uwu0oFiAt5mkrNXXE4qQ3
 mxfc7yBk3xbj2AowkJ/PWSCFuNwoqxutBj+Itl9DgUoV+MzYhu/I0X8pV
 m/WT8rFlhK2WJrA5AffRclKbnwDDlD5WooOs4junCOFSSilFVzrUFdYsz
 WPCnLUNEScwl/poBqxN9AzUYbfOVFCLPZ/XTI6/joirmth3pNUyYQxJ4M
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Qyc+vtbN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 3/3] igc: Fix qbv tx
 latency by setting gtxoffset
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
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 07/07/2024 15:53, Faizal Rahim wrote:
> A large tx latency issue was discovered during testing when only QBV was
> enabled. The issue occurs because gtxoffset was not set when QBV is
> active, it was only set when launch time is active.
> 
> The patch "igc: Correct the launchtime offset" only sets gtxoffset when
> the launchtime_enable field is set by the user. Enabling launchtime_enable
> ultimately sets the register IGC_TXQCTL_QUEUE_MODE_LAUNCHT (referred to as
> LaunchT in the SW user manual).
> 
> Section 7.5.2.6 of the IGC i225/6 SW User Manual Rev 1.2.4 states:
> "The latency between transmission scheduling (launch time) and the
> time the packet is transmitted to the network is listed in Table 7-61."
> 
> However, the patch misinterprets the phrase "launch time" in that section
> by assuming it specifically refers to the LaunchT register, whereas it
> actually denotes the generic term for when a packet is released from the
> internal buffer to the MAC transmit logic.
> 
> This launch time, as per that section, also implicitly refers to the QBV
> gate open time, where a packet waits in the buffer for the QBV gate to
> open. Therefore, latency applies whenever QBV is in use. TSN features such
> as QBU and QAV reuse QBV, making the latency universal to TSN features.
> 
> Discussed with i226 HW owner (Shalev, Avi) and we were in agreement that
> the term "launch time" used in Section 7.5.2.6 is not clear and can be
> easily misinterpreted. Avi will update this section to:
> "When TQAVCTRL.TRANSMIT_MODE = TSN, the latency between transmission
> scheduling and the time the packet is transmitted to the network is listed
> in Table 7-61."
> 
> Fix this issue by using igc_tsn_is_tx_mode_in_tsn() as a condition to
> write to gtxoffset, aligning with the newly updated SW User Manual.
> 
> Tested:
> 1. Enrol taprio on talker board
>     base-time 0
>     cycle-time 1000000
>     flags 0x2
>     index 0 cmd S gatemask 0x1 interval1
>     index 0 cmd S gatemask 0x1 interval2
> 
>     Note:
>     interval1 = interval for a 64 bytes packet to go through
>     interval2 = cycle-time - interval1
> 
> 2. Take tcpdump on listener board
> 
> 3. Use udp tai app on talker to send packets to listener
> 
> 4. Check the timestamp on listener via wireshark
> 
> Test Result:
> 100 Mbps: 113 ~193 ns
> 1000 Mbps: 52 ~ 84 ns
> 2500 Mbps: 95 ~ 223 ns
> 
> Note that the test result is similar to the patch "igc: Correct the
> launchtime offset".
> 
> Fixes: 790835fcc0cb ("igc: Correct the launchtime offset")
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_tsn.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
