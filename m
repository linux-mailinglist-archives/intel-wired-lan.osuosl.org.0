Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9766C91102D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2024 20:08:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B44A743572;
	Thu, 20 Jun 2024 18:08:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9JIHoNb3aF8Z; Thu, 20 Jun 2024 18:08:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7DD23405B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718906925;
	bh=VNFSTtyw2CrwE4QlpnE3gAtpr1nzoeMxEO4YHARrck8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Sx2qNt+8BJD+xjCNFj+C2Zxyx3BQ96cyOSmFaQDZmCeg6Dz9kObiWCXsLMZoR5qeQ
	 xumLUz7ZrJZEMu4jQ7u4D2yEao3xAhxaxDidsKFo0eXHXyhUNGqNXJoSITNLZmTwo3
	 xPYM9hJTjjm9dk88ah8EeN8HHPyWjMo8V5lELMOwaHrZqDj6gI1N83iHRgPJBac1r0
	 d3RImwOZb9N05zvtBj9oCj81BBsILxnXcN6ybG3QHYTEIb3mem4emOg2HmXpqoDhMM
	 4Zygj9eDoCkeXCAWG7dXf148r6EXlfBacRV7FGyyHfATS9tJyUMjWOBs/qJb19u6mO
	 olzF8Xgt5pEfQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7DD23405B3;
	Thu, 20 Jun 2024 18:08:45 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B36C31BF3DD
 for <intel-wired-lan@osuosl.org>; Thu, 20 Jun 2024 18:08:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AA30540103
 for <intel-wired-lan@osuosl.org>; Thu, 20 Jun 2024 18:08:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ym8VHSBrBrzS for <intel-wired-lan@osuosl.org>;
 Thu, 20 Jun 2024 18:08:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 03113405B3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 03113405B3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 03113405B3
 for <intel-wired-lan@osuosl.org>; Thu, 20 Jun 2024 18:08:41 +0000 (UTC)
X-CSE-ConnectionGUID: WyXhAGV4STWhZKgqHs/+0Q==
X-CSE-MsgGUID: w1v4FzD5RZmCl+IHObZeLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11109"; a="26599050"
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="26599050"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 11:08:40 -0700
X-CSE-ConnectionGUID: E9x3I8LCQgqUjPKAkOL/Bw==
X-CSE-MsgGUID: igLTxFK3Q8+Wgcvjanqz6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="43017442"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Jun 2024 11:08:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 20 Jun 2024 11:08:40 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 20 Jun 2024 11:08:39 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 20 Jun 2024 11:08:39 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 20 Jun 2024 11:08:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OwBSfxXqd9fvLsymBvgPzuHjUjPUTulymWdrtOhLlm6mXDRriZA+5crCKpGn3Z0JieQTxZlFSwJ4t72djUQdPn9Vcb6bUXlP2/m/24FzlCPTizT392+zslShO58arL8j6TgE69umjmNjEJ1BGI8LwDodZs18ZXkFqeTTi+TAxKpzzOBPq1lOQEyiHn086In+JuFIKuGr5HwzLMC9lvVGtNacuxMeZD8mHX1SiZpkaedZBAyZhNBTFtzZ6O/axlQ4qTxWUnY6imZBoJV0mNXAx9dV+raHbcp0MHf9SJRhoSYY6QvWK1uba5xg/XWgppiJqO8BNydZ0U8GnQaiuG0NuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VNFSTtyw2CrwE4QlpnE3gAtpr1nzoeMxEO4YHARrck8=;
 b=LXDnZ4xP9U/UmChm4IHID79QZuMYvgBQQRjOw6wqIErTEQSsJr+OyohPF+NW0n0X4SaGmiMCt1IX1kIGsVsG5LCSopnFayzna+HM8g55Dmo3s+6YG95XeK+Xsiipdy6X6vd1S2mOmfGZUZVtllDmFx0q8B2dl/vCJUKnXYVxbHRGdBnTgaNflcqDdiGNHSAyM6SpSHIcUg+2v7mTeW1y7DYKxPdqaoqFL+RsTNl92SUnLWTjQqijolm6l72iqjdDabQ9WH/dr5W4b6ifDYeo66jeVLc2qU6NEMlqGvCv9VmJD6bbFQX0zHDJrVVdQciy6Mrxmn2l4JGe9BM06qA+yA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by MN2PR11MB4581.namprd11.prod.outlook.com (2603:10b6:208:26c::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.21; Thu, 20 Jun
 2024 18:08:37 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%7]) with mapi id 15.20.7677.030; Thu, 20 Jun 2024
 18:08:37 +0000
Message-ID: <dddbeb19-5bac-4da2-b233-652502737193@intel.com>
Date: Thu, 20 Jun 2024 21:08:29 +0300
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20240620063645.4151337-1-vitaly.lifshits@intel.com>
 <a964273e-8919-4586-825b-63cb3255be67@molgen.mpg.de>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <a964273e-8919-4586-825b-63cb3255be67@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TLZP290CA0004.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::15) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|MN2PR11MB4581:EE_
X-MS-Office365-Filtering-Correlation-Id: 394f0407-5330-4b5d-4ea6-08dc915401ad
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|376011|366013|1800799021;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eDM1NlZQaHIrZWovbWY4MXZOMG5USmtMdVlXb1lIQlV6Y0NRRTBzaEg4UEV3?=
 =?utf-8?B?clpmMnlkT2NGTmI0Q3U0UDc1bmtwZG1leDh4bWRwd3BTbFZPd2grZDZBazM5?=
 =?utf-8?B?aXUzcWdNcm9CK3FBRVhpNHFoTUtFSjZUMVlJOXoxbDRvVjBaemdmK291UW5P?=
 =?utf-8?B?RGgzRlNLTlZTR1Z4VDFiMDZzU3R2cGM2RGJtKzJvckZldWZhWk1udEM2c2pP?=
 =?utf-8?B?Zm1kZXYvRHlFS3BwMC9NQ2l2NGsvRmFBaGozR2FWTUF4bThKZDU5TW0rVExs?=
 =?utf-8?B?ek9FbTdyQnpDQmVRMnBZT2JpN2U0MVY0SVlQdnFoVzRxcE55NnoxVHhEb0U2?=
 =?utf-8?B?MkN5RjRmYnNBYUhXNldCSVlONFFwTkdNb1hLTmxxc1ZGWlpROWlXaEVZS05o?=
 =?utf-8?B?bzQ4R1ZNRitaZm9VV0VIMHlhbzVFZmdvSk5wbWFTelRMTjFOMzhPdSsvbWpH?=
 =?utf-8?B?QVlmYSszei84NUdiSHg1MTlFNDJDdmwzV1E1VzFRamRJSStndVZUNmhBOWRJ?=
 =?utf-8?B?N2o2RWVsNy95dFBaZ0RLWTBsdkd0WC9SUDZlZnhBZW1ndjkwN1VmdElxemlJ?=
 =?utf-8?B?bFhIdGZSQUJiOEc5aSttbUcyOC9ET2tOMUV4dGV5TVVqWWxmZGdiOU5oWEZO?=
 =?utf-8?B?VnBqQzI0MnFNekNqb01Fb0NDMXhRLzVqamp5bHg5eXJkaGJXMFJRSmhVcnhU?=
 =?utf-8?B?SWppZjJXcmJXZm1sSFV5blZHaDNRQnJMNXE5OGIwN3pjR0FCMlhzdkFHbCsr?=
 =?utf-8?B?S2FiZGEyTHhYM1o3SDlCbHdFWHJpMU9kSHRpTW9Jd1FOSjg2WTg4SWhnZldK?=
 =?utf-8?B?c2xBRkZJSkFGKy8rTzVZaEZvUW5rSmFPdk9ieEd0VUtnZjJJZkFHeDhrdE1R?=
 =?utf-8?B?SVFDVGl4QWgyY0JuWE1UNnhKMFhQSjRtMHBNSWpOWnlvbURYcmoxcXBUQTBq?=
 =?utf-8?B?QUdUNStiaVdUaldDMzJvZWMyNEk4cHR1ajVRUWZ1Y3BJUWhyRTlJQ3dHNGJN?=
 =?utf-8?B?VVdGdnhwb0pWci9hVTVZdGt6d3Q4MDZmWWZ0ZEhtOVhTK0VxeW1jbUJ3NzdC?=
 =?utf-8?B?T2NsaEg5TzlvWVBHTC9OUzZsZHlKSmhucWR0K2g2OG8wT1FHYTJNakpBSnYv?=
 =?utf-8?B?M2NCKzZsSndMby9MYTlyQ2p0OGJzR29rRENDZ2swejlGUThaWStUL3VramJP?=
 =?utf-8?B?VEs3QUdHWi9mU2IyMjNGdDBXcXVWU1JEVDNueFlseklIY3lGK21kZG92RmRX?=
 =?utf-8?B?enFOaDhWbWxCVUlWN2VQY044dkp3OUFPd0V6NFRucGhVUTRiU2thLzU0TkxC?=
 =?utf-8?B?QUNLK2U1NGVjd3dYdzlzcHpyTi94dWVPVHUyVXZTTnFpejVIRzBERFR1ZjlE?=
 =?utf-8?B?MW1HcDkwVzlwWjNaSk12MEQwNDJuK1ZLd0ltcFo0SG52TStEa2g4VVdzWXcv?=
 =?utf-8?B?MEZnV05NdXFiZFMyNG5BQWpRNXdVR0xocUZGZnFBTWxqaU1qdFdHTUZRWEND?=
 =?utf-8?B?SENaditQeUpzazAydXo2ZjExSGRPQXdqeW9wMW1DT0lIc2kvYXByZVV1bE9y?=
 =?utf-8?B?Snl1QjhGOFRFQ3ZaZXdubHY1UUsyT21sMUtKNlZvMnhLNnJkMCsvazcvY25B?=
 =?utf-8?B?MlJkRFJGeDVBQ2VJRjR6eG9JeXlHN2hNVWl2RmtTbGRqV3VlZkYzOXhSMmx4?=
 =?utf-8?B?UzJ3enhtc1VJcjBHa1V4bFBoUEdCR0ZPdFhOVDBkZFdlMWVyOUJPV1RBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(376011)(366013)(1800799021); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NTM2Wi9MQ2ZMbXh3ak1USzBDb2hhSEJQVWVPVUhNQ2VtR1VXM0FQc3BJNHIy?=
 =?utf-8?B?VkNtNXNqRVkwTE5PdjNYTVdKVzdGK05xZS9Od3lRbUQzU2hKTzYyY2xVWmlm?=
 =?utf-8?B?RnJIQmlaOUVUK2VwM3F2eEhSdHg4WXJodGRmYlNDMEhvWDFneStrUW1TN1RC?=
 =?utf-8?B?RGFBOXhOckJvc0VpUjRLWTJDYmNpYWhnZ3NEak1zd3VxYVNXMUNBT01VUmtp?=
 =?utf-8?B?YnpLN0VTOHZvMkNmajJyenVudkFsQ3hEa2VETnFQVXFxcFdGSFU0YUs1WmFK?=
 =?utf-8?B?dGM0RE5DalFJWUlmK1RidVkxK1AyZWJUV0xZQUpNcmR5ckNnUC93ak40RzRU?=
 =?utf-8?B?MU9FNmkvQlpWLzBIRTczT0RHdGZkTDgzTnM2bzFUT2dZZlZMT2NIamN1eTVR?=
 =?utf-8?B?a1JmRVRZT2RoK29OMktUa090c3ZoK2VVRHZhWnNkbDZaQmE5R084Q1pGNXc1?=
 =?utf-8?B?S25BZ2Q4Y1hOR0xacStURTRaWFo5UnVkcFNXcTZpMUppUnpoZVBpNWdMaTU0?=
 =?utf-8?B?WWJjS0RJcE1CblZRZldiclJISmhzajh3bW8zZWFUSDQ2NEVlWXExSExaOWx4?=
 =?utf-8?B?VUg1TkxwQjl6Q1U4SC81aDVYWmREeHRNUHlLMGpIVWM4b21COTlXaDJLdFNl?=
 =?utf-8?B?dm1VY2N0TkpXUGh6K0Zzc1RCUHdvdEhXNWw3RVBodEdhVHlSR3hJN3NDL0po?=
 =?utf-8?B?VitZc2NpMmFjUUVNSXJyeFlCTUVpS1ljN0ZwLzZjTlUzMG9rZU1Wei9qSStn?=
 =?utf-8?B?dWpxbTNNOWIvWlRMbWdrWkhRSFlyUWcwazczb1BET1BpRTQ5MGgyK2hIWTlO?=
 =?utf-8?B?V3lVS3k5Zzk5UFZpNTlxY1FoN1c0d3RiSEpNL2tWclJZcWVVTFFKOXJYSVpC?=
 =?utf-8?B?cERCVjZPNDloenErWFZUU2lwbWR0amt6M1hUTmZzUkFGU3Zuakt1TnQ4QzlD?=
 =?utf-8?B?VGRnbFppN2pHZjdTL09tRzR1L0ttSUhWcUo1Y3ptNW1vWkNkd21ISEY3Y2Vs?=
 =?utf-8?B?K1g4WGg5UG9mME4yVktIb2hoYnR5em5ORmYrSjRmbnVvRTZ5ekhUZWsvdFhk?=
 =?utf-8?B?R2txYmxydUNocUVYcXNIRS9uVnEwcDhyQ05hTVRhWTA0OXUxSldybnVjU2ht?=
 =?utf-8?B?MXRnM1UyWTFzbUdDYVl1eFNlN216TTMxZWx6YmtEUHMxbGx4b3IyVE1xM1Jy?=
 =?utf-8?B?ZmI0dnlydk5pUEc1Qm5SZ1NNNmt3Ym5PRGNjSzZQM3dOcXlTRnVvdnpZTTl5?=
 =?utf-8?B?TG1IeW5ZTENPbzBXSFVSZU5UR2dhNUZaT2FlM1hSSzBCelMyQVNOQ2JiSzZx?=
 =?utf-8?B?VzlqK2psdTVhOUhTeGh0VW5iY0puUFNwYkN5TEw0ZXQ3cHF0c0FJTVNXamFo?=
 =?utf-8?B?UVFQVnlzdUxncWpNVko5alQ5WTR2a1JlNHhGTjRsSFhBcTd3NzZFUVhUL01a?=
 =?utf-8?B?ekIzMFZ2TGpoSWhPUWFXelhaUTlkNzRQZTV2NUREM2xISHhTZnhZdGNyZjlx?=
 =?utf-8?B?VDFZbFpnZytjNzh1UEYxVmZPUnd5ZUNHQjJKL2Nwd0tYTk9NMU95NTNQVk5K?=
 =?utf-8?B?b1JkeXlVTXZydWJPN09YWktuWTV2dEk2MlgvSWRraHhKbDdtUzBOOFZkWXJD?=
 =?utf-8?B?Nys0R1lXZElYcDk3aUZXdXRvWnNFd0VlWkRyeWNYQlRXRS9IUGRIY1kvMWNZ?=
 =?utf-8?B?K1J4Wk9oS3lkckJRQjJ6NitvbVhGQXVzNGJwY3Z4UGFOS3liTVVOVWhpOC9I?=
 =?utf-8?B?YjhGaXpuSUFzcG1Yd1hrdEVnRTU4elVPTVBYbFZFUFIyMkQwTys5M0prczhi?=
 =?utf-8?B?SGtTbmlKODB6cHlJeWJqeERHU3ZkazF4dGlFck94MzVhcW42R2xCa3J6UWJU?=
 =?utf-8?B?MTRyQllZZHlEbmcwbElRd2VBNlUwTEluN0hqRGRrQzlZbUVyZ2kyTng2MDVx?=
 =?utf-8?B?WDFNaSt5ZmVsdzhjS3VWZDFFVTJISGZhTUNEMEZpL3RJWlp0cHFQUVUvWGo5?=
 =?utf-8?B?ZFFtMGh1YUtrUmZKaS91ZGFoL2VxaG1pRVM3RnVjblNmTVhMWGR4QS90bEN1?=
 =?utf-8?B?UEtlQVV6N3VEN1RWZjIrTUlMeTlYQ21jY0tqODFyV0FRQ3BXL0h6aldQWWpE?=
 =?utf-8?B?L2U0NnRMKzZNSkhrZTNiU2xWdHZobTZ4c2ZDQk8zdDdybVMyS1BnVWpDRHZt?=
 =?utf-8?B?MWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 394f0407-5330-4b5d-4ea6-08dc915401ad
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jun 2024 18:08:37.3861 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q1HJzEOyspDg3j8QGmsSWfw/7eihgZjzx232nTIb/El+AW8xX4eM1LwmVHea3i4EBrEObpRh6GdcPKMWfPT9NaSpW2YW6vipU6bOelbhuHA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4581
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718906922; x=1750442922;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4FGO9ttH6r7LTYo7oUrZQzv5bEL5biXblQ/jgvFoqFM=;
 b=DhAlEOH0J18/23maqtqo2yBxijhefwO8V59DrKMt+ormtz2AwFXGVSjo
 GuRFjF7L6gURgAI90uLP7dHP9hvtJICHpaT5FFK4FA0MXiBmNrj9F2D6e
 F9zVwPahzT36ZkO4We/qmmLky1Luo4yMfAAXBox4PFTFLIKqWHS8N9U0T
 bRYOYoExeKDbpHuE6xDo9652hPQ2lWBOn9RkhRQi0P1wdrZf9bTvw4zVB
 MUP1FMLtJ6XqPqX3H6IxTU0h02pcmaucwbbSVVUPukIa9+gsZf7jU3oGx
 YAQnFm9KOxRIHK/mbtPkNgTIgLBqLhDUc08OTVjjTbJhWonmLm1M5IsxS
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DhAlEOH0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: fix force
 smbus during suspend flow
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
Cc: Hui Wang <hui.wang@canonical.com>, Todd Brandt <todd.e.brandt@intel.com>,
 intel-wired-lan@osuosl.org, Dieter Mummenschanz <dmummenschanz@web.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/20/2024 9:47 AM, Paul Menzel wrote:
> Dear Vitaly,
> 
> 
> Thank you for your patch. For the summary, it’d be great if you could be 
> more specific by saying it’s about limiting the scope.
> 
> Am 20.06.24 um 08:36 schrieb Vitaly Lifshits:
>> Commit 861e8086029e ("e1000e: move force SMBUS from enable ulp function
>> to avoid PHY loss issue") resolved a PHY access loss during suspend on
>> Meteor Lake consumer platforms, but it affected corporate systems
>> incorrectly.
>>
>> A better fix, working for both consumer and corporate systems, was
>> proposed in commit bfd546a552e1 ("e1000e: move force SMBUS near the end
> 
> SMBus

I copied the title of that commit, I don't agree that we need to change it.

> 
>> of enable_ulp function"). However, it introduced a regression on older
>> devices, such as [8086:15B8], [8086:15F9], [8086:15BE].
> 
> Sort the ids? Also, I do not have the ids memorized. Maybe also describe 
> them.

I took the device IDs from the Bugzilla report, why do they need to be 
sorted to projects? This is a bug fix for a reported bug.

> 
> Please summarize the regression, and maybe make it clear, that’s is the 
> Bugzilla reports in the tags.

Why does it matter that it is a Bugzilla report? it is clear that it was 
reported in Bugzilla the Link tag.

> 
>> This patch aims to fix the secondary regression, by limiting the scope of
>> the changes to Meteor Lake platforms only.
> 
> So what makes Meteor Lake special? Why is it not needed for predecessors 
> and successors?

It is still under debug.

> 
> As now three commits are involved, it’d be really nice to have an 
> elaborate summary and also test matrix in the commit message.

I mentioned the devices that were hit by the regression as well as the 
devices that had the initial issue (Meteor lake systems). The commit 
message summarizes all the history for this commit.

> 
> 
> Kind regards,
> 
> Paul
> 
> 
>> Fixes: bfd546a552e1 ("e1000e: move force SMBUS near the end of 
>> enable_ulp function")
>> Reported-by: Todd Brandt <todd.e.brandt@intel.com>
>> Closes: https://bugzilla.kernel.org/show_bug.cgi?id=218940
>> Reported-by: Dieter Mummenschanz <dmummenschanz@web.de>
>> Closes: https://bugzilla.kernel.org/show_bug.cgi?id=218936
>> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>> -- 
>> v2: enhance the function description and address community comments
>> v1: initial version
>> ---
>>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 73 +++++++++++++++------
>>   1 file changed, 53 insertions(+), 20 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c 
>> b/drivers/net/ethernet/intel/e1000e/ich8lan.c
>> index 2e98a2a0bead..86d4ae95b45a 100644
>> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
>> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
>> @@ -137,6 +137,7 @@ static void 
>> e1000_gate_hw_phy_config_ich8lan(struct e1000_hw *hw, bool gate);
>>   static s32 e1000_disable_ulp_lpt_lp(struct e1000_hw *hw, bool force);
>>   static s32 e1000_setup_copper_link_pch_lpt(struct e1000_hw *hw);
>>   static s32 e1000_oem_bits_config_ich8lan(struct e1000_hw *hw, bool 
>> d0_state);
>> +static s32 e1000e_force_smbus(struct e1000_hw *hw);
>>   static inline u16 __er16flash(struct e1000_hw *hw, unsigned long reg)
>>   {
>> @@ -1108,6 +1109,46 @@ static s32 e1000_platform_pm_pch_lpt(struct 
>> e1000_hw *hw, bool link)
>>       return 0;
>>   }
>> +/**
>> + *  e1000e_force_smbus - Force interfaces to transition to SMBUS mode.
>> + *  @hw: pointer to the HW structure
>> + *
>> + *  Force the MAC and the PHY to SMBUS mode. Assumes semaphore already
>> + *  acquired.
>> + *
>> + * Return: 0 on success, negative errno on failure.
>> + **/
>> +static s32 e1000e_force_smbus(struct e1000_hw *hw)
>> +{
>> +    u16 smb_ctrl = 0;
>> +    u32 ctrl_ext;
>> +    s32 ret_val;
>> +
>> +    /* Switching PHY interface always returns MDI error
>> +     * so disable retry mechanism to avoid wasting time
>> +     */
>> +    e1000e_disable_phy_retry(hw);
>> +
>> +    /* Force SMBus mode in the PHY */
>> +    ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &smb_ctrl);
>> +    if (ret_val) {
>> +        e1000e_enable_phy_retry(hw);
>> +        return ret_val;
>> +    }
>> +
>> +    smb_ctrl |= CV_SMB_CTRL_FORCE_SMBUS;
>> +    e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, smb_ctrl);
>> +
>> +    e1000e_enable_phy_retry(hw);
>> +
>> +    /* Force SMBus mode in the MAC */
>> +    ctrl_ext = er32(CTRL_EXT);
>> +    ctrl_ext |= E1000_CTRL_EXT_FORCE_SMBUS;
>> +    ew32(CTRL_EXT, ctrl_ext);
>> +
>> +    return 0;
>> +}
>> +
>>   /**
>>    *  e1000_enable_ulp_lpt_lp - configure Ultra Low Power mode for 
>> LynxPoint-LP
>>    *  @hw: pointer to the HW structure
>> @@ -1165,6 +1206,14 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw 
>> *hw, bool to_sx)
>>       if (ret_val)
>>           goto out;
>> +    if (hw->mac.type != e1000_pch_mtp) {
>> +        ret_val = e1000e_force_smbus(hw);
>> +        if (ret_val) {
>> +            e_dbg("Failed to force SMBUS: %d\n", ret_val);
>> +            goto release;
>> +        }
>> +    }
>> +
>>       /* Si workaround for ULP entry flow on i127/rev6 h/w.  Enable
>>        * LPLU and disable Gig speed when entering ULP
>>        */
>> @@ -1225,27 +1274,11 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw 
>> *hw, bool to_sx)
>>       }
>>   release:
>> -    /* Switching PHY interface always returns MDI error
>> -     * so disable retry mechanism to avoid wasting time
>> -     */
>> -    e1000e_disable_phy_retry(hw);
>> -
>> -    /* Force SMBus mode in PHY */
>> -    ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &phy_reg);
>> -    if (ret_val) {
>> -        e1000e_enable_phy_retry(hw);
>> -        hw->phy.ops.release(hw);
>> -        goto out;
>> +    if (hw->mac.type == e1000_pch_mtp) {
>> +        ret_val = e1000e_force_smbus(hw);
>> +        if (ret_val)
>> +            e_dbg("Failed to force SMBUS over MTL system: %d\n", 
>> ret_val);
>>       }
>> -    phy_reg |= CV_SMB_CTRL_FORCE_SMBUS;
>> -    e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, phy_reg);
>> -
>> -    e1000e_enable_phy_retry(hw);
>> -
>> -    /* Force SMBus mode in MAC */
>> -    mac_reg = er32(CTRL_EXT);
>> -    mac_reg |= E1000_CTRL_EXT_FORCE_SMBUS;
>> -    ew32(CTRL_EXT, mac_reg);
>>       hw->phy.ops.release(hw);
>>   out:
