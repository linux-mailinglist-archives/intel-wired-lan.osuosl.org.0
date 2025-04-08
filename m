Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8F1A81783
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 23:19:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 82B39607DD;
	Tue,  8 Apr 2025 21:19:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JowtJja1PUXE; Tue,  8 Apr 2025 21:19:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE01D607E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744147167;
	bh=JO4OlALx4GHXL9vl4YbcAL3byp9y3ZZHTNu1bkd+R5E=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mfLeLkPYQZJp9gWM/gfFS7LkYUMu4mBBscGyi958yua3g/AbRszLk9Q1tC2bLxBlY
	 ZRydt2pjq8lDuv5EEA9Vo4UrgwXGsz9CtUvN3PFOerQd1S/Z/jqKiHwh4TrB4sQcuC
	 gIzAU1bX9lFrGWfK69Bp/cQI1JTw00k3oKjCkB2wZharEaHhnUY4qsU8wNHaczd6v0
	 jpG5r39aYy5rpAKAETOOIb0Zsgy9oVrx6arjbQ7pJQzn9/geq05i/KUAg2ExeAMDaP
	 R3Zr9oXM1ObP6ms9A56dISqH+k/zGFXtW0ahb6LF28jinSZ0AAawnGM7wEOti08Abs
	 33wiV6sLWPNdw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE01D607E4;
	Tue,  8 Apr 2025 21:19:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1CEB11F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:19:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0355F41233
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:19:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f4hwZ1g6l9Au for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 21:19:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 615E3405AA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 615E3405AA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 615E3405AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:19:25 +0000 (UTC)
X-CSE-ConnectionGUID: ny9SUuOYT1u1meSLX9COIA==
X-CSE-MsgGUID: yaD9ZD2CQqyY9tuQKreJ3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="33206729"
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="33206729"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:19:25 -0700
X-CSE-ConnectionGUID: mmV3r3cdRWqMAXHCM6VwyA==
X-CSE-MsgGUID: AbOAIVu5SBemqluHKNp5IA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="128721142"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:19:25 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Tue, 8 Apr 2025 14:19:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 8 Apr 2025 14:19:24 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 14:19:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gcoAjnbcPigfpsuK2PUTtAZwqH7mpQKzwZHS1WVv0WvCTg5YpvG6rUAuSAH427AobHzwi5rS2Zl+0s4PcYMjCj9z1tWgShvvzqXinPGMoEOR79HInNWpS1B2DKc0KP/MOyrgqLjFCv3G24YS/FKrfeeM8kWvP3HXVDSpgdQOr0N/zN0KU10/B7qWe0DyGxzQdvGnExuwLKuUbULkOVHaectbP68Yhw13ojVvCO6/dPuhEHKPRaUGl6RcRRqiekwxCDJqjM4PX1EgO+gsXhgUmT3XXhI1DiSc8yUPBWqsbWyEGzPzRURbEqFRs2AIL1CN3qwdWGDqkQ/FoNK8p72sRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JO4OlALx4GHXL9vl4YbcAL3byp9y3ZZHTNu1bkd+R5E=;
 b=WRU8DHdw2uvlgSAz+lsBsGzkutacrqpBG5+2I2TpOOUYxcZbdkkxyKVb5IujCeYJY5FCiYaRiG0ETrffEdth3UEB71VErPLN3mx/aqBSNCZUMi5+X77QEHSYKxh35AC3PtXgMRcSoLagkqwaG0arVmdQuszs7WTVYvEPuJpb3soQ4K4E5itya217v0ZXCTu+k7GaQBP6Cl7hW4ZmncQvSiYkcJXnB//CU2wFA50Oe6kp3OLNkUXMAcTNteYx7EVx5P9PfnwLNfhmFyspemU0CYS0nOyt9P5rBN2v50iVuQZV/cNd3ETWMUWkyw4hZ/8hw/yru3lKitn/IPCmnZB76g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA2PR11MB5132.namprd11.prod.outlook.com (2603:10b6:806:11a::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.21; Tue, 8 Apr
 2025 21:18:54 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8632.017; Tue, 8 Apr 2025
 21:18:54 +0000
Message-ID: <8c548d0d-8862-4ff3-ab18-984cc866c94c@intel.com>
Date: Tue, 8 Apr 2025 14:18:53 -0700
User-Agent: Mozilla Thunderbird
To: Milena Olech <milena.olech@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>
References: <20250408103240.30287-2-milena.olech@intel.com>
 <20250408103240.30287-17-milena.olech@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20250408103240.30287-17-milena.olech@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P221CA0001.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::6) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA2PR11MB5132:EE_
X-MS-Office365-Filtering-Correlation-Id: 36712b8c-c414-4526-820b-08dd76e2f75c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UkZPUzNDdUFqNmRnNFRHRE9mT1ozOWZ1am9wc0dQRnA0cklVNnNhNjhnWXBD?=
 =?utf-8?B?d0pUZzBzQ2J3eEorMkVWdDZWbU4rbXREYWF1ZDhTaVNaOWthY2ZCMXozVzRF?=
 =?utf-8?B?RE9LN0YvZ2hPZlRkRmVWQUNnb1RyQms0dFNpNkhCUGpsS0VvakRmN1MwZjR6?=
 =?utf-8?B?NkFwdUJrdEhCcXAzNmVtSTZDTVd1TTE5eTVMTUk0aDFha2FtQ0VtU212Sy8r?=
 =?utf-8?B?Vmp1WS9LNDhCdUczL25WY2FVMW5valdIK1F3dDI2MnFEMWdnYWEwd0p2RVZo?=
 =?utf-8?B?NTlKWEIwS0MrMDFGQkorbHVCbnk1cDJpb2dySmkzUWNnYk15UkRtQWw1NUV3?=
 =?utf-8?B?ZVVGMFpBVDlaMktlYXRXT0lreThRRytyZ0t6UGhvamRrZDMxR2kzZk0vcndx?=
 =?utf-8?B?cWxEVUVNaTJRUjdlYTFtckNFaFlxRzVkcW5IbkFZSWQvNFNaNXhlTnNGQjZE?=
 =?utf-8?B?MUJhOWhGN2RpeTY0MmFvYUdlbE1OUWloSG9UWmxwSVdpdXN4U1RZa2hzL3Bu?=
 =?utf-8?B?ZUMrOUVFTEs2S21aVm93Rkk1UXpocXJMeXlXTFF5aVRtYmUyaGtacmpERGJt?=
 =?utf-8?B?WXM0M0VYcERaWHExbUREeTF1V3M1RjZqZWJxanlpQmU3dkptMmdGbFlXVmUz?=
 =?utf-8?B?K21PQk1YMHhzR09SNFJuU1dQWHdFQUJxZU5TOXRoRzhuTXhaYS8vekdWRWlY?=
 =?utf-8?B?cTdCYXV5czJIY2R5SnV3bXIwT2pOWVR4eTR4Qmd5bm9uSEx3THVzMkR5Z0hX?=
 =?utf-8?B?Y05UWFpQUHhWelQ1Wi9yU1ZWUTBWdUdtTEdrTUdUL1VXd0NvTXd3aHhXZHJJ?=
 =?utf-8?B?TjZibytiWWFwZGhXSzhIdFZDOCthcmN6aHJKL2VMTDZFSTdUUCt4TUF3ZG5w?=
 =?utf-8?B?NVEyT0RrL1QwN3oydzZLT05MZG43MlVWR0l3VTVCbGlmdzB3OWJ2NzJ3SGVD?=
 =?utf-8?B?TVIzcWhZMlpIMXpac1pIamRJS1hoUW9TYkRkV2Y1Tk0yN1NCc2FYYUFENkkv?=
 =?utf-8?B?TEhHTWJSTDJ4aUVoTVdHWlc4R24xSWdkMkJoeW5URjVWejJ5My9YNU5pWXNw?=
 =?utf-8?B?VHFVLy9LMEQvdDBvTnptVzI1bnJMVjVGVlRGY1hDUDk1TVE3dml2Z2NDWEt3?=
 =?utf-8?B?VFNnQm5vVjdwL29sR0UxSEI0WnlRU1pPSVl1QVJZUUVnMmZrZitseG85UjJI?=
 =?utf-8?B?UzJDaldhNUxKV2FIT0U3Q0Z4V1NjeTlSa25kVXlJVFZ0b2drNFJsYy92L1lX?=
 =?utf-8?B?SFpIN0lkSHJGL2x6OE9ZWkJnVk1iZExGRGl0MzFuQS90aHhHNEh1dEp0QXhL?=
 =?utf-8?B?MGZrYXNMUmhlRFhPaFk2RnVJMUYya3FSM0krODVkTkdzeGFOUFZ5dnRkZWQv?=
 =?utf-8?B?T3IyZEdnV0wxc3FpYmhIUHloWTVUYTdpMnc1aDY4b3RJMHFlVW1Salg2NHZG?=
 =?utf-8?B?RGhkN21HM2tLdnd0U01PSkVlZkJCVHdpUENwTkVHMHFCRGxMbzlOcGc0TDEx?=
 =?utf-8?B?a1RpRGo2VFlYaFhZaElhdXVScXBMdG9yZ3VYWE80b0ZrOEh1OFpJL0E5RldU?=
 =?utf-8?B?a3Roc0VabEwzRjgzcnY0TlNqNmJaN285WFEvVWx1RHZVTTVFRVViTkJub1dS?=
 =?utf-8?B?NUFpcWE1dzF2MDM4NFlUVFpiTk5uNmxQY1phTTdnY1JxUEtwRXNUb0VyWDFU?=
 =?utf-8?B?dCtTek5jNU1Cc2hUUUhwWmpvVmxsMXhrSzBuVkFpNWk0SzRiUG93NEswNXg1?=
 =?utf-8?B?RWxLa2NRam1nbXp4ek1IZllLSE05YkxZcVJneUk5Y1liZm1iM0xPQklnOGtl?=
 =?utf-8?B?OEJHODladVBZZkI5UzRTUUNlNnl0ejZCWC9IQlp3VGdEN1p4UXJHS0xlNHVj?=
 =?utf-8?B?aVFBYUNEa0xMeXN5Y1NJQ0g5Ly9kMEU5SEJFV1ZYeDdwQlgvRXVJcUdOeU5l?=
 =?utf-8?Q?fw20h8z+tfU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cVBxUy83NFBNVE5ISGNYZWlUSkhkanZKckxHQlFZNHZMRC9vamxDV0hNaEt5?=
 =?utf-8?B?YmNhN2YyYmZEdlU4R0tOWFllS281M2JSR1N3ZVpXMG5EcXYyRlB0aVpLOXc4?=
 =?utf-8?B?SFcrZWQ3NFpoTDF0a1JIU211ajArdVg2RmpGMmZOSzFLT21XR0c4UnFXdmtO?=
 =?utf-8?B?Ynp0cjBwRFM4ZWl3Sk5jOExPMkZmaDVsbHdZNzg0WVZZUUhvaDJXUU11Skgr?=
 =?utf-8?B?Z2NGY2c0a1FRcXFWODFGR05QN2M4S2pFQ0h4Ni9uRExjVTRhMkxOTVNpZ1FR?=
 =?utf-8?B?SDNRYmVhWUk4TmhhaGNpQ2NEUE9JMXA3TjllODJueVJQeFNmcFExbnRSM2dC?=
 =?utf-8?B?MzhlYllkTVpJS295S3pyWk5RQ1JqbmtzQVFuam15YVkxcmx2MGV3K1RWT1ZN?=
 =?utf-8?B?VStMWHdCK2tzNkcvbTVzTzRqZFEwRGh4UzE5RDdZaVhndTdZdm5FVHNLOXl4?=
 =?utf-8?B?RzhTTXRadkwvVHplbThpMXNKRkdXaFdOVHBUcDlXUGFIMk9SZzVTMU4rSW1G?=
 =?utf-8?B?YkZjclU2TFRydDRBaDM4c28rL1RXb1pkQ3YxWnlLUHZ3amVQY3U3ZUZnM2lj?=
 =?utf-8?B?TkpBQXl3TXdLV1BKdUdRcGdhbFZwYlp0UUpldGluZUtYaXkyWlU2WkJaeVpO?=
 =?utf-8?B?MWE4QmFlZC84N1ZHQUpBbm5MeVFlY1lzb0pJT0l5b0tYRi80UVlxcTV4SDRq?=
 =?utf-8?B?UnErVHNUd2FkcWZEZERYSnRUMXRnRFhsZHhib3F6RGpSNDlsTW5EelZqSFBr?=
 =?utf-8?B?SnQwNHB4VW9QLzZRcERpeHNqYkVXSjZZbVZORHdCc2NTZDNNNzZiMkxpaFNp?=
 =?utf-8?B?TFNWc3IxRms2dExQd0JldzFGWWpGaEswRERJY3dQb2FLUFZNY243Rm9IMHhm?=
 =?utf-8?B?aEpUaE9VUHcvdU95cjJBMkVZRGpRMWFaMTRyRU5mY2xSZ1l6d3JadWJVYlhT?=
 =?utf-8?B?NDNXcHVCTFMrQkxkdlV3VkkwZDl5Sk53OFB4Wkh6YVRKWDlsM3YrVkZLTmNh?=
 =?utf-8?B?VjVTclRST1MxazJkVTVKRFU1OS9NamxFRXpuWFdobVQzK09VQ3JYclRoSlc1?=
 =?utf-8?B?ZWY1bUxxN1ZLRkdTeDVTRXlZNHV0aUcvMTFvNkk5dUovd1N4T3BmUHhDVWdW?=
 =?utf-8?B?RFFRbUZIZ28vd01XSXFHVnVXNktJNTNIdStEM2s4dlVuTDFydWhjMmdGQWx1?=
 =?utf-8?B?Njg3ZVZhdW9uYm5vVyt3ckVXN2VXR3JBamtseHZ0aE82Nmt3Q2RKb2pFQ0Zy?=
 =?utf-8?B?dm1tSHI4cXZZdU14T2tPZllIeXBJZ29ORktUQ0pRdzVrL2ZEYWpWbkx3ejZZ?=
 =?utf-8?B?ZVNqbzluK3BaQVVycUVNYk1DVSt5WHdnd1lqYlA2SzJtc3dJeGVPQ1Q1OE9s?=
 =?utf-8?B?c0Q1TFk2aEk4cHA0MEt4UHN2bCtlRG5xYnNkMEVIeS9GTlJySUxseDE1bFI0?=
 =?utf-8?B?UVJxeEFxUDJaV21iVmV5SWpmdDczNy95OGVPTDFvSkRna2Z4WXJTeWV5RnpH?=
 =?utf-8?B?eG14UFh6bm9hek9Ld2M2bisrZjM2ekorTk9NZnVyTEFwTlM0NnJzdWhQeGhK?=
 =?utf-8?B?c2RpWGFXcXhlOGcxU1dEZDE3eUJuRkxzOFRaRUNRZHVhNk9nQWZrQ1l0ek1n?=
 =?utf-8?B?SWFCMEpqK0NTZ1ZmWndxK1lyQjVsR2dFNERNSmtvVXliVlBva05sZml3WjRX?=
 =?utf-8?B?Q2NkekowRzJ5NWV2c2hxOHlHKzFGTC84Z3Urb1Q1NmZaczMvYk9UOVFHb3pk?=
 =?utf-8?B?b3FvRXloTkhydXIzb2xPZlg3bGFtUUZqM0FKa1JsL3hyUitLM0UyQW05ai9T?=
 =?utf-8?B?N3NpYyt0ajBqblZiKzRpSTVUY08yRFRXdEFHMmFoVUxiNGNPRE0rOEtDKytX?=
 =?utf-8?B?QnQ4NTRSSUNzcnRRM3VCZ0RTY2N2ejQ0c3JWNGJDdW5ZcFdoSzg5d1Q2WHdH?=
 =?utf-8?B?R3UzSDY5Z1dhczIxNDhCc1pOc1NBdWVaeXZBY1JuSmlFTUoyQkZUeG5vNjZV?=
 =?utf-8?B?Y08yOUhncDQrOUQvMVVjK1FqYWhoMHRRVU9NSmtkdUhwbXFvdm9nMzRIcVFv?=
 =?utf-8?B?c0JFOTE4ZE1QdHhMSUU1bmxiUHN1SmdXaEowbjZwd2k1V2RubkhwMjdKeFhQ?=
 =?utf-8?B?WWoySzJJUzlOU1Z2a1Z4MVdXVXY4aDFuMzZLTk14SkpLSTJZYW04RTRyRTF6?=
 =?utf-8?B?OUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 36712b8c-c414-4526-820b-08dd76e2f75c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2025 21:18:54.2414 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: beHPB071Vl7Ol1rnLaqrHzgLupubmEFoD5gdGH+tqHVVhoCCNaafCxox2QWrGkApErU1ZVXJom6dkRE1u8szeY9VrYW4I42nehD093TdwFk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5132
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744147166; x=1775683166;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pCVUJ+V2WrJ1IR1ZVAoMXYx/j42GKr41eiw5jOyELzY=;
 b=QdYiHhHZSGMJ2fTb9dyY19sZ3zYnviyg5K0DnVNrufvomvOK0Uy/l9Uj
 Boe/ICzwq4UHZJ9XwseG1bWxOQ5+RInp5cSmQkNaSexE85SFFJxymT8iT
 AcMy+7OjYHcJEGV3lkD7kQE5F9eKEscJS8j2mqlbEJc5gNgHFz2HaHcfC
 plxBtnsR55+OGrz/EUAwx/CxKDiBAns5g+i4kUvql46lOEXfftMtQL1PZ
 vtriuCLdr8RcBhlfRN+bYaKbu0kWFE4mQQdFLxPSTatI4yE84WDksHKm0
 zyRI5uy4+iG7nqp0jtjHwCU/+9bc1RPiqcdmbvBnxT1Te9sqQubNl+MkZ
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QdYiHhHZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 iwl-next 07/11] idpf: add cross
 timestamping
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



On 4/8/2025 3:31 AM, Milena Olech wrote:
> Add cross timestamp support through virtchnl mailbox messages and directly,
> through PCIe BAR registers. Cross timestamping assumes that both system
> time and device clock time values are cached simultaneously, what is
> triggered by HW. Feature is enabled for both ARM and x86 archs.
> 
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> ---

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
