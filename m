Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 607739B77A7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Oct 2024 10:36:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D30060A48;
	Thu, 31 Oct 2024 09:36:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3AxROST9F4J4; Thu, 31 Oct 2024 09:36:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57AD06082D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730367394;
	bh=p2Z85zKATZiMbkZrgvwlYEYSaKFRej8dQs9uo/CYIFM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=r1IUyvDodMI4X2i06NMMp5trQTgJs1w9fqphRzHoDu2+GuXN8H+Lo67wg+511job8
	 JIjQd1oOsFFyryoNX4kstH3/cNz8xgI3Wcab0p3RuSvB5b23G42pNdOQ1QYzcCKpkC
	 6QFsyRQuPAF17/74P8RulwMgtVb+vYnHKCXYgFePcFZiKWPRXyiE+hPsKXi0fzKPYp
	 ePQynRSd/J50U6N51Y/D5KNlF7a4+gOweIalPlOEoNqwYzeG0KcwylAUwy2bMMM80x
	 qEojAcxaKp6RdCQfgQdtK67HJeddj2DHmvfiV6E5/gSI1g0j+ojk70D20LvCRQsZ2T
	 K3/6lSQAdDifw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 57AD06082D;
	Thu, 31 Oct 2024 09:36:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6BBCD5E50
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 09:36:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4CC87607DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 09:36:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hXWAGRiRdrjX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Oct 2024 09:36:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 82CAB606C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 82CAB606C8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 82CAB606C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 09:36:31 +0000 (UTC)
X-CSE-ConnectionGUID: 7vv0WarbRdCLZy3ATds5jg==
X-CSE-MsgGUID: 2fyp7iO1RM6LSTC/LV0hVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="52651562"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="52651562"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 02:36:30 -0700
X-CSE-ConnectionGUID: ZhHzEOhMTTmZCUMjm0Pjig==
X-CSE-MsgGUID: lgESqlwRR/mFbfuDA0pmtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="82117775"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Oct 2024 02:36:30 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 31 Oct 2024 02:36:30 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 31 Oct 2024 02:36:30 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 31 Oct 2024 02:36:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dEVBdUdm6lHjfcAYSn2l+m9OKWWcjvwXb4g5wAfKtvyWjRAFa6NK59FgGdHiZ1WzHcPy1cTkUROdbBScOsJ5JWji3bGm0ca97nemPH7acehJcXFZAnERd+DkVMrWZjdmFxMjNC8loRBbBVLIV8Xy3gTwpZ8nCWm31g9nB5LGtTQ6kCzgarx4mBUSeYSIMIVr+LF+fMN3zXE1ZcVhw+P5xavXUBAujL9mFZ5jSUzXpyXmzSRpB20UYLEIuze27/XrZPL+nvGLYaucEJc5YJoskpPCsVSOu//qoksl/3fvsoYnZTWANXCnGlGsUaS3SS90WEHA0qnhBzLo1wtERLRKxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p2Z85zKATZiMbkZrgvwlYEYSaKFRej8dQs9uo/CYIFM=;
 b=MxzpXjiBYoTLbS3gc1MJ7BimE6IZwwa+da8RPIFNEriCz85kSfKzzKaVbzMtc8vehddaJ45a7OsMUuoYz+jNQRY4epMWfq9OAbaGZb8dKeMO2wnuF+TVSctV4dDW/XIKjslehSvTO7QI5l5LwIwZ6Vb2wu4ZyfOCOKyk3WlpYxfBpPJF9UX/Vzj+YohCKp1/6myeQW0TfqTPpkWsDCrUVgwKxZe0R1Ns1O7JA6f/mgLgkUzFFZIlg18kVw7aeqjTdcnW+xNgDd+cPwhoifLlTrHRHkfOLKptbSWfU7Jke+Vmeu8v+mz1EH8vK6zWkzsC5uHFQvvHyci89WUbcOrRTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20)
 by CY8PR11MB7945.namprd11.prod.outlook.com (2603:10b6:930:7b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.32; Thu, 31 Oct
 2024 09:36:25 +0000
Received: from CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14]) by CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14%6]) with mapi id 15.20.8114.020; Thu, 31 Oct 2024
 09:36:25 +0000
Message-ID: <b952811d-014d-428a-8dad-3875331e1489@intel.com>
Date: Thu, 31 Oct 2024 11:36:20 +0200
User-Agent: Mozilla Thunderbird
To: Chris H <christopher.s.hall@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <david.zage@intel.com>, <vinicius.gomes@intel.com>,
 <netdev@vger.kernel.org>, <rodrigo.cadore@l-acoustics.com>,
 <vinschen@redhat.com>
References: <20241023023040.111429-1-christopher.s.hall@intel.com>
 <20241023023040.111429-5-christopher.s.hall@intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20241023023040.111429-5-christopher.s.hall@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0012.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::12) To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6307:EE_|CY8PR11MB7945:EE_
X-MS-Office365-Filtering-Correlation-Id: 2c209715-0033-4c40-3cf0-08dcf98f7cad
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WmNybms1MGw0b2hsMW5tSGEwaC82YTIwenBrNFFhQW9idFZxbGJKNjhSNVhB?=
 =?utf-8?B?Y3BTUGdSUmhKSTc4bThqYWVCb09MaUZxWFE0RDI5dUR1SXFodXBSQ2xhdDVK?=
 =?utf-8?B?ZS9WbER2L3FnTXU4cDV0LzJHd1hnY2tDOWFEZzJFOGk4b2s2U3IvRWthNEUz?=
 =?utf-8?B?eGhMRjJYWDJlM0tlSjZwK01qYUVBYmRoU1FzNlB6WW9aOUpsSlY4MkREQjY2?=
 =?utf-8?B?ZzN6WEY0M3ZSMktHaklObGc2WUNTSXhHUzNXWHBRWTBXYTNkWS9MV0llcWwv?=
 =?utf-8?B?TDk3U0ZqUFA2T3lsc3N3WnFUa0taVUtPSjM1Y0IwaEhoS0FRZ1RNTjBNZjkv?=
 =?utf-8?B?cklteFNDSVFoSXRlZS8xUXd4bEljUHE4akZZaFZ3SGMrUWFZbXcrVUhsTGhu?=
 =?utf-8?B?RVpjdUQ4b2QycVlZaUNsWnlVanV2SGtCUERRSHVoclY1Uld1U2x2OC85TERX?=
 =?utf-8?B?dkhodlEwOHc1cDhhb0lLZklXZlhYVWRFdUVwZTNhbEFsVklQSFFIUVNuOEla?=
 =?utf-8?B?RGdZRWxqbGU0bGo5aG9oVHFiakJKL3psQ3VzSnc0Y290bEVhKzJ1SHVQNmNB?=
 =?utf-8?B?Wi9Sa2xNS2N0V20xMmxXb1pETzN1UTZaUlZzdHBhR3dVbWp1N2IwOEF2blBE?=
 =?utf-8?B?VlB0QlBkcFBJbm9jVDJrc002c29SeWcxYWp1cmR3MHFSMU1EZHdyZ0lwcDB6?=
 =?utf-8?B?Tm9pWWVhSmZrdmlGZjFFZXpyVnBTd1ZGbXduV0dKb1FFN2NneW1XcGFJL01s?=
 =?utf-8?B?WkNiaWFGMkcxY2ErY1BicTB3OGZZK1hodU9xbGNuL0tCR1kzYm9uUmJQdzBQ?=
 =?utf-8?B?bDFLbEZabGpqQ3A0Y0lPUzRwa2UvZTJnV2czUk0vMzRPMWxDR1E0aEJSNUd2?=
 =?utf-8?B?Vzl3TVJuM2RaemVWZFoxYU5Bb0Rzc0hZd1FCQWpFWkJ4cFBaV2FvUEkyN1d1?=
 =?utf-8?B?UW1lQy9KWEVJdFcweXlLMkNnWGF3bkZDR3ZabURKamRmbzkrYWplWWs1enpK?=
 =?utf-8?B?bXRXYi9RbFNpUHpHblRUK1hyMWdpOWE3eVBYam5xbjk0VGpvZEY2bmg2UFUz?=
 =?utf-8?B?bzdLMmlERE1ZTzFoYzlzc2RPNUN2SVJyYUtuLzZnWERodDNReVhQYlN1bnVy?=
 =?utf-8?B?UTUvZjEwZXRsR1J0OVVSN0RkL2xpT2ZVQ3NpT1JUQnhmeUJ4N01xY29VUWlt?=
 =?utf-8?B?NUpPTTdlYnJMNGVoK3F1Qnh4dERJaXM3NzNUSWpSNlFBZC9MOUJoV1VZTEd6?=
 =?utf-8?B?cU9ZWnRHeWZNdDdaSE9jR1R0bjY3K09hMlVhY2xXWVJ6dWc3V0JvMEhNVzJU?=
 =?utf-8?B?WHNNUmZmVWt1dEpHQ0hWRktGcHVGa3ZhOFJ4dEhKbFFYKzFkUWhlRldHbkJj?=
 =?utf-8?B?MXZMekp2eGFLeHkrUXBSdmZ6cmdPZ2RTTTRTZkszNHFlUHNpMm13enQ0TEZp?=
 =?utf-8?B?SlJNWUFVSkFYOHdOS0kwVklVQ1NJd0JYLzBaRWMwTGp5ZVlhZjlkU3ZBVHhQ?=
 =?utf-8?B?T2Zmdm5GQ000Um1ZQ2ZMZVBMc3dXMzNPL0JBSk5NY1J1YUszTkd3Y3JCeTlN?=
 =?utf-8?B?Zlh5enYwK0s2ZzNXa200VlF3cy9vTkY3cnNNQjh4Q2p6QzM4N2ZiUFQ2RVN4?=
 =?utf-8?B?N3M4NEpOUnB0SUVWQUF3SFU4cnNUUDlNbEpMZjhYbk5GRUhOQmkybnhpTk5S?=
 =?utf-8?B?OE9jNEFPY3FLdTVmeEpNN1RyZGdnL2lrMVVQQTA0NDBpejJCTElsTFU2Y1d1?=
 =?utf-8?Q?XIpipYXB7RG2K3Q5NU9X2/cUAvzqYKrrDNsH6Pc?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NmdOV0c5d3FjMUdiOUV5dzJqRjhkeVozL3lrNGJqQjdOaXR2ZHV3Rm1WU1cy?=
 =?utf-8?B?K2J2Y2d0UVcyMnZIcWdscmNTWkNhRWxzbXFLUVVCTjBzV1d0ZFFlV3FxbFVi?=
 =?utf-8?B?Z1BuWkFsVW1UR0JJT3lOdTNJeVpkOVRTaUJFS3RjSTU5Q0VxUy81L0FCT2c1?=
 =?utf-8?B?UWRwZCswcW1xeHdsaENvRmMvbTdmaWxGNGZJeDdnaHUvZGdNK2NsTjdJQy82?=
 =?utf-8?B?a3B4djd0YU9YQ0FVVDVpcUt1U1dQRDN5UkJOcnJYUWpNdmFDTHFCbXc2MHJE?=
 =?utf-8?B?UDI0cVNmZkZEaXhHeEVESU9ROTdSRDlnejBtYXJudXFVMk9TMXJybzA4WUIz?=
 =?utf-8?B?QTlYNFBTbEltT0krajZLOGttMG16WE1PNVA5WUVKV3BpWTNGbGpPOTFsa2gr?=
 =?utf-8?B?dVhsWHVGN1phVHZGMjNZeWZuSGpQUCtvODVwaFA3Q21VTUs0WWNvbzBMNWEw?=
 =?utf-8?B?V1cxY2ZOUzNrWlRrNlVIblI4WU9zUmppRTFXREFlbHBFQmI0MzQrTmxMZ3Bo?=
 =?utf-8?B?dTJGVWlPTVJOSEZYUFZQczkzVHYxRlJFZXpIS3BKVC9JOTdmYlZOSHRtK21T?=
 =?utf-8?B?cGg3UGpPYXRlZGNwTEdMdnlDemZ5NkRXbWhMZ2tTR3VpYU5ZNFV6NVVyKzV4?=
 =?utf-8?B?eWxsRllLR25WSHVsdytPOHIzTjV4ek9jZjZoQ3dyZzQ5N09jdFBHcUFvMzMz?=
 =?utf-8?B?bjdmcVRnNk02SThQOGVpVkRhQjV0YytHSm9UMExIeUtUWEpjNlp5NFp3Y2F1?=
 =?utf-8?B?NDFhVUZ5anNJWHlqSE5DbndQOHB5MmJqN1krNEpiNUpkVE5jc2ltbUZvQlp3?=
 =?utf-8?B?N1F1aHlEVUZLeG5kWTRnSW9mT2VCYmc1K050N2pxTnMwOGJPZkdLd3plTlQ5?=
 =?utf-8?B?YVBiVVhteTZNTEN3TFRMbGVhcEVPdEFDcHFPdjlNOUVBaXlZWlROVlhsczlE?=
 =?utf-8?B?akUxRThPVE1IRUR1alhPTWdtTDJhVjhZT1UvNXhMSTJuZ2ZSS29hWVhCSVEz?=
 =?utf-8?B?NmswWCtpMTIwcDd2TnkzT0R2VmtLY2xFQzMrSkI3OC9PcXdOaUZkazNyQnNQ?=
 =?utf-8?B?dUFJRUxBSXNlNHExQkVEWTFabHZLbE1qRC9lRmtKOXZaeC8yNzZOSjVoRHBI?=
 =?utf-8?B?ZjZLNnJscjBPaHFGblhRQzU0Ujl3a0lQbFNjYzhGT0VOdmwvSmVTZ1J0dXJC?=
 =?utf-8?B?YVR3YmI4TDFodXd2Y2dCMmI4VkZPa2NWd0VpMXd0ckpjVGhiWE1nUVo0RXph?=
 =?utf-8?B?UEdOSHBqWUhsSlVUSzhEL1FVWXJ5eWxBNHgxd0YzVjNYVHRlUitlWjNMaldP?=
 =?utf-8?B?NDVlUUo0Z1NnUm04STZqbzFSNFZtOG1SekEyWUdvSTN2U1N5Q3lkeXh2bVla?=
 =?utf-8?B?dkE3L2t5SUpsMHl5Vi8yUmk0Vnh6dDg3bG1udXRCOS9jVitqaU1lU0Nhc3hE?=
 =?utf-8?B?Tm1SNlh1ek44akdmUGs5dVc5Z0JSUW9JYmpZT25sdzhRRFY0allZc2Jua3Vl?=
 =?utf-8?B?S0VhY3g2bVFBMXVEZ2NLaG9yT2Q1RWs1SmZEV2dsU2doYTdvaEZPTWNQelJO?=
 =?utf-8?B?TmpYNUtLM1ZWektzQWJDcENZb0IyZDRMWVZWVXRpZnlGQlpRbGR1RjVWQ3Vz?=
 =?utf-8?B?SlR2dW1pa0N1aS9RdzYwRjdyYkZyNURCcWc4RWtHdkVMRG9jTTV2ZGdZZTVS?=
 =?utf-8?B?bDNZaXpNYVEvODIxNlpwS0YyZmVsSVhnc0J1SFNtcDdKeHpwV0RjWVNDeWlE?=
 =?utf-8?B?eFVGNEpoSTZ5ZUxpbmpIam41b0NiNzdiUjRWQ0t5eGVqR0xDOTU1dXZYeFVs?=
 =?utf-8?B?Smh1eUVtb2VyU1V6OVUwcU1VUnF0bDgxT0VtZExLRFJaZDB3UVo0dzNucXk3?=
 =?utf-8?B?eUJqUHhJSzFzSlJjdlJDMmhmUDBOQ2w5M1RpU2k2MzRBeEVhREVocjltaVAz?=
 =?utf-8?B?Tnpab2ZZTUtmaXBBbG1Hb1R1TGFRaElzQ3lSWTNTamtkSVAxTk82NXdMc3Bt?=
 =?utf-8?B?OVI0UGN6eVRuR1ZoaGhFeldseTNGQkZIZjR0LzAxN2NmUmY3dDFxOTdwWFJl?=
 =?utf-8?B?eDgxMEhZVmRmNlBnb2tuVW9JV2tpYlBHOGZtUEh4WjBVekJjMXlFYTFpQWFZ?=
 =?utf-8?B?K1NwRU4xd24xTjhTTkdnQWNRcFFhWmF3NllWK0hlWHA3M3dOTGF4bFNPNUVa?=
 =?utf-8?B?Y3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c209715-0033-4c40-3cf0-08dcf98f7cad
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2024 09:36:25.0174 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HVl10bfwKkNClBBOW2OOvRn/RN2rVJFR+kykrhtUmL+3m8aWoc2kAi+uR/QmO5B6OhkS+ePU/kVGGjEkwloiTqEXqImDRAv8m1tLghoQCT4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7945
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730367391; x=1761903391;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9HDzjGD1c1aTmw20YQcJ0z5WrJLo8xMYTXTUW8/8x5k=;
 b=AhTNqLH6H3DwTV0mM+/fxL++If0KnOCpNMxvBDWKVGjVXpD1VwxrTb/d
 xDSTORggVqzMgcSFat1M4H1a5Inp9r05UDklOuzNqavKTkwg9KSwQD6JT
 bb8dJ4nap1F/Tb+F+g/lTyz1ke5HZ7GGr/GkHJGK0dwq/7HeJWQtyJa/7
 IFlX/rRAqYZGZpW2VH7M2R3NA9UU0+pPJjMqeGMWT9FUXFR6FVy+FxJ8/
 xLfRzMVT2sUlvDhS9Z0aWXng89sSuB896CwwAgQal6KSJrfLuXntaAEdh
 244dOJj4jtApmOVF6hc3sZCLbQlGyNOaN1x94ZyS9MvbQfUQ0pM8yp+N8
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AhTNqLH6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 4/4] igc: Add lock
 preventing multiple simultaneous PTM transactions
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

On 23/10/2024 5:30, Chris H wrote:
> From: Christopher S M Hall <christopher.s.hall@intel.com>
> 
> Add a mutex around the PTM transaction to prevent multiple transactors
> 
> Multiple processes try to initiate a PTM transaction, one or all may
> fail. This can be reproduced by running two instances of the
> following:
> 
> $ sudo phc2sys -O 0 -i tsn0 -m
> 
> PHC2SYS exits with:
> 
> "ioctl PTP_OFFSET_PRECISE: Connection timed out" when the PTM transaction
>   fails
> 
> Note: Normally two instance of PHC2SYS will not run, but one process
>   should not break another.
> 
> Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
> Signed-off-by: Christopher S M Hall <christopher.s.hall@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h     |  1 +
>   drivers/net/ethernet/intel/igc/igc_ptp.c | 12 ++++++++++--
>   2 files changed, 11 insertions(+), 2 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
