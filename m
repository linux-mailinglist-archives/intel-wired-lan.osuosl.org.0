Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD829028ED
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jun 2024 20:58:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 25D86606A6;
	Mon, 10 Jun 2024 18:58:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6HKGRBhwgMxk; Mon, 10 Jun 2024 18:58:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6265A60703
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718045891;
	bh=eCrv4EkLr9Q4TZKs8jfCmmtUNgbNPs92nwyrpsgLh0s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UVDQqdIIEYqrNNeTgDhJQ/QVSBvhwREJc8t2wBZl8pBA8iXUCPo6lppWAefNvNoed
	 b92c3I6hiIo1HzpOMvvjsJlmB724Ej7b9baANIIdbMZUT4oEr6TEU0+eZRWR5xp1dE
	 f9hkBVmDPU/reKwcTbHyozxI/wsd2PLvPfzFW+V8Tv65MaeGZR6C33qQzYAjOYv50w
	 BTyI12xCe3LkrIN6i2xmxWipRxuwI2MEnXpxrKHvEH6Jqq32AVZMCuoVsmfsqDtlqK
	 in4Z5RtxR00u8dOtdn6YvoZUbohHd0j6uEJCR7ZvEp++nTu2fk3RoLOgYfJiTq4pPy
	 Q/h9zwL7MR4nA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6265A60703;
	Mon, 10 Jun 2024 18:58:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 333C11BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 18:58:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1C3BD8206C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 18:58:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ELueZrTkq07U for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jun 2024 18:58:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3583182060
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3583182060
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3583182060
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 18:58:07 +0000 (UTC)
X-CSE-ConnectionGUID: 2buHdotVRwiHdEOeuEBK5Q==
X-CSE-MsgGUID: hfCDxXSwSV6IHuJsrxj8uA==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="40124184"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="40124184"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 11:58:06 -0700
X-CSE-ConnectionGUID: kwVlm7nCT4GBnXMf99rAUQ==
X-CSE-MsgGUID: aW9Ha15iReWGFYSA38monA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="39820705"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jun 2024 11:58:07 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 10 Jun 2024 11:58:06 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 10 Jun 2024 11:58:05 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 10 Jun 2024 11:58:05 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 10 Jun 2024 11:58:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ekKakYGC1Oe9YYG3KsTfUlZo8fn5AIUmqT7Iz6qciCF6nwExvni9WUhzHulPa6fQ5dCD7L4Ff7pNwyMq+rX/mk4fxUCw8SkQwpN8V6APMdn/xyKRPjY7X9Hu0INzYtbVZefDRfQXMkH1SKCg0cWgRM8ZLCPqQzyOBeCKVQIlmNzeKab5dRbhuFxdHW9ljWTyUBB7jU0v8pHuqgbcRTLCb412Yqt6WpmdA8UHdRqy85k/XHztmr6q5VoOGp9SfHJtn7bmHkfw9ytQhCxbcxY8HovzRcTZu9vMY8oYmdf9wMkL+wzOMoWiQ77b71Y88WG00knD/auwGcIWPzZn5vvQPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eCrv4EkLr9Q4TZKs8jfCmmtUNgbNPs92nwyrpsgLh0s=;
 b=FRT+Pb0Z9oaP3ddTZjDeFfAw81u2Ww1b+2k9e0r7DmdzMmUP06SWejzBviPPWHftgCysucXh0T7zHe3lXg5W/HIAqjt7EBF0ibyoU3wOfr4Gh6Tbm90TESIlsIiIm3EBHtapTr24Z6Nqz2Ocs0JiakhjicSvnvrLtB4uAHWCyeIQXwglAxdx8Qt8P2IWM4MO+0+B/WjgbbnWlNLxMZQf7GmjWVNkJXTvArv7PsJZ2Z8BtJPxoVThXGIz79QWpzFzwsN5KxYFFiSywSc1oI0GphnhYy48IoUzEn0BzWLlYRq79mAHCHQwbYaQFPrAyczprGwT3ejhYTwNoUCLC76s3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CH3PR11MB8520.namprd11.prod.outlook.com (2603:10b6:610:1af::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Mon, 10 Jun
 2024 18:57:56 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%3]) with mapi id 15.20.7633.036; Mon, 10 Jun 2024
 18:57:56 +0000
Message-ID: <edd6f59b-b0ab-4623-86e2-865acf90cb8f@intel.com>
Date: Mon, 10 Jun 2024 11:57:55 -0700
User-Agent: Mozilla Thunderbird
To: "Samal, Anil" <anil.samal@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
References: <20240524135255.3607422-1-anil.samal@intel.com>
 <2fe273b9-dd6b-408c-bc69-e12c00b4141d@intel.com>
 <DS7PR11MB6037D67A617D1C6FC667EEF799C42@DS7PR11MB6037.namprd11.prod.outlook.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <DS7PR11MB6037D67A617D1C6FC667EEF799C42@DS7PR11MB6037.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0241.namprd03.prod.outlook.com
 (2603:10b6:303:b4::6) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CH3PR11MB8520:EE_
X-MS-Office365-Filtering-Correlation-Id: 0e5a5d01-c6d5-4211-4283-08dc897f3d7c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Qi9Pa0VXNzNYSEVpWFhBeUdUVmtpTk9KL09ncGZqL21nUTA3bXBNakx4aXhE?=
 =?utf-8?B?MTYwQ0g5WG5QMDA2M2l0V3pGVHZhQW5OdzlWWDVFdFFaL3NQQ01Vc1piZ2JY?=
 =?utf-8?B?QnMrVk5TSTc1R0JtcEhXcG9UT21MVEpjK3BTeDh6b0t5dDV0NzBMTE5EZ1NF?=
 =?utf-8?B?L2lvaUtROHdBblNBRG1iWlBLRmc3WlhJc1hCaU9lL1plTVlybnVhNDk5N0RI?=
 =?utf-8?B?azNDU3FZbnBEQmRjL1J3c2VWV0d4K1RBZGF2cnBkVVNmZkFhbVpvY0lWSDlE?=
 =?utf-8?B?NmZVTGNtOGJJUnVYNzNsUWJzQTBuL3VuS2Q0dlMvVjFUaERGamxPMTFJVmNs?=
 =?utf-8?B?bDJPWm5YdjQySzIwOEJqUmc4OXF2T1I5eGVuUjBsS1pkMWNmd1hqdHJuVWd6?=
 =?utf-8?B?Z3NYb0FabmhOUzJZRTNuRG9halk5anpXemRoL0VuaFpaKytVN25MUHhVSVBv?=
 =?utf-8?B?cGprZW9MbnI1Z3JLTDZYdGRJb1ZZYlcwTTBkT09LNHdwNVVKOUF3bkc5UFhs?=
 =?utf-8?B?dTlDdUo2a0tKdFlZcFk0Qm11T0paTkdPeWtBTWVsNHQyVmJTbG50KzFNMFM2?=
 =?utf-8?B?RUJVYklMQWJGbFY0RE5HRExKdW1PVHJHRkZvUm5keU1LMS91RGFYTTEwVGJK?=
 =?utf-8?B?U1UzMkZkUSt6WjlOdGVFVFM2UVJidElSTUxRMjUrUTIzYTU3dHVoSzFYbmZJ?=
 =?utf-8?B?NVY2dmZEd0hvVEtNdHRZMjR0ckY4VUVkRzBQWmlLMEtFM2RuYWpXWTVubFhm?=
 =?utf-8?B?blhIbU9zK2R0ejZaeHpsY1NIZFlRaTk0K052dkJyN3VCL2wzemFKVzFFUHY1?=
 =?utf-8?B?b2thd2xDRHRsT21hOHJHeGdKOTYyaldZODlBZDdYak9QK0pEWFlDMWJEQVNU?=
 =?utf-8?B?S09IamZ4N1h5dVVvSFVkS09GL1dmaGtORW5tN003ZEswdDJaaVYwc3daZXZW?=
 =?utf-8?B?dmJIbW1OZU13VGhPdE1VRU9iWDZwRHZMYkxRSjFMZ2YzUjRrMk1pTm1peWhG?=
 =?utf-8?B?T1Y1Ni90SURYQThhUWl6dldRNm11L2JnS21ST3hMOWlmb0xyZXk2N0xTMnl5?=
 =?utf-8?B?UVRTK1pZaHNMb3JkUHRvUzMwZUxDMUpQZVR5STVqZDRxOG1RSGEyL3htVTlD?=
 =?utf-8?B?RTlQSEpSNWVVYm5Bc0UrV0g2QjJORldLTlRTeDNVOXAxaGl1YXNmVjdIbFVm?=
 =?utf-8?B?ZEovRmJaQlJtWk1mUnRhQVM3VGRrZ0JMc01VdkJCRVFNZGFGVHcydmd6VWZs?=
 =?utf-8?B?NXl3Wll0ZTZVZ2N6ZVZFdERpNG5RQlBtb29JZXlRd1dOTjEyVWV6d2cxT2NM?=
 =?utf-8?B?T0lZSEkwT1pqZGlRYVRydkE4YVBFNVVHWUNFY3FZL1h3Y2gvbkVGczlmclZx?=
 =?utf-8?B?aUJCTG41TEEvQTlJRnBtUU1yWGVsbWs3R1g0WUR1YWl6WHo1RDdXQVlXSUVD?=
 =?utf-8?B?bmU1OGQ2Zi9ZNThNVUduaUhzNTVqYUVFcTVOWjFhaHByVDZZd2R2ZnhIQ1d1?=
 =?utf-8?B?VHdwRFNWbGpJaDdNMVRnOFR5SlhCdDV3Qkp4TWxHci9hMGQ3ZERFTFp2dnE1?=
 =?utf-8?B?dk1PZUlhUFh4VVZiaFk3SlcxM01xL2F2dFpiK25qV05yQjhsK0VDRXJLV08v?=
 =?utf-8?B?RmFmRm5JemU1TjUzcXBnMWVyMGlYSTRNY21PWlQybVdNREs0SEw0SitoaEIr?=
 =?utf-8?B?VGRKZ3F6andIV1dSdjdHVFRmWXEvR29iOWlaMVdvbkpwODAzL20ybHk2bTY0?=
 =?utf-8?Q?oUoySRKKrEJs2DcQerq4rb0R1at8GEEBSzozFRO?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WDRWbi83bXRpQi9jM2djaXVGNUR6Ym15czZ1ZVp0T3FJVlJGNnRsZXNTb3o5?=
 =?utf-8?B?RFhiemdTdEV6c0V6QWdpWXpodmtTVmNVK2l5MThHcEtXYy9DYTJrdnE2RldT?=
 =?utf-8?B?NzFsaGJidDcxMEJ0cUNHUm1WSEFzWFlzYTcyL0FvM1RHcVIybzZBdHhXdHNt?=
 =?utf-8?B?ZzJ6bk02TDFmL3ZDYTRqZXhiYUYrVllzcmZyekhCVW1nVmJqcnRTNEZmOVFo?=
 =?utf-8?B?bTR1Zkp0cm01UlV3T2J2azVIMEtHaU42b2dPVHNHQy9vTDNSWWVGMi9sVVRO?=
 =?utf-8?B?QW9wVVJ1UU1ZZlNET3dOT2tHSzNkbG1xYndWdE15STZlRW14L1pKaGpnS0pR?=
 =?utf-8?B?NmtRQXlTYWRYajVEaTYxa1ROSHFKRWQ3MHk3ZXJEazU4OTVjYmY2OUJGVTAx?=
 =?utf-8?B?bXZWOEd3eENpNjNUOHBLUlAvaFlvRXZjN09XV0ZzU1pZdDdmZnNVbXhBL0Zx?=
 =?utf-8?B?NWdGSG9LN3lDSFQ2WFNhNHhMem9aUTNJM2lBMVpraVhQbmUzYkRJR0dwWVlJ?=
 =?utf-8?B?N01SakZFQkh6QU1PWjlUNWVOUTZnQ2xNNnhCZDFlYm9rTFZIUzMyQk5PZDdk?=
 =?utf-8?B?NUFMZm91eC9kK092MWJ4L0dNQ1Y3dmhkNGJVVE9QUWpwMWp0ZXErMXQzaWtu?=
 =?utf-8?B?aDhWcjVRVCt2NWxEYWJDLzF3M2VWaFZocnB6SU9nSjJ3TXdzd2JCV3VvQThh?=
 =?utf-8?B?VEJMQXlMRnFQdXFVSjJVelAwVVFsNkVRQVJxYVp4V1JwTjVreTZnbUM0VTVN?=
 =?utf-8?B?eG9mWWF0STIwenFvQ1VYOWo0M1ZxaTdwZ0QrMlpBdVdXMHRmYkhMTkloOXlp?=
 =?utf-8?B?N2xFc3lESTVmNHBmRUFVWlAyN1BLL0dKMXdEZHN6cFZUTk1LNVJ1NDk3V2hR?=
 =?utf-8?B?MDdINnlaaXRCWmNKMzNDRkM2TTQrenlickhGc0o3bDN0Q0k3TUtZWlJyTHlL?=
 =?utf-8?B?WkZsLzJiQmxGQnZyanNBaDR6UFN2ZndkQWJqSGQ3Rk1PaEhCZ2xXSlNlK0Fm?=
 =?utf-8?B?dXFsU3k2a0RPU2x5OW8zZjYrZXlCWXlSMmRFcDk4UVNPZ1RPNXJxZmdxSjlR?=
 =?utf-8?B?SGdVaC93KzBzUGhXSDA5ZTFLaldLd1I2RTZUTStubnk2eU83a0xHLzAvdXlM?=
 =?utf-8?B?YzcvK1paSXlBdFpyTlVERXFncnpxVWt2dTRWeXFIdHpBdGNwQ0ZoYVd3UklT?=
 =?utf-8?B?VmlndXRmUmZCazJVYitsYmdxdjIwcGRISVpaSFA0ODJVeWE0d0xPKzFuYTlj?=
 =?utf-8?B?NllZRTJKL21qUWVyR0EwY0ZibkR4dFdGc21WY3pvdjltV0VGUVRZSVhscEpI?=
 =?utf-8?B?MWxJanBOY21ZeWNFODRUR3B6VU5RdzRSMUFnK3RYV3FCSWl3L0FCVVYyZks4?=
 =?utf-8?B?bWxZY3BZRzFCc0NMNnFoU3BseTZGQlZvdXBlVDJaTUVETWVkT1llQnZiT3hF?=
 =?utf-8?B?RktTbGtvazZUWWpWL3A1eUJoUlRsdVZFVWo5c0p5V0FEZ01MazUrcXRkWFk4?=
 =?utf-8?B?S0s0ZnY0aHdJWGVzaVZDMm9YTm5BRUcydnhvRTE5V2pUVitZOWFxZlYvMnB2?=
 =?utf-8?B?ZERaM0hDemxYRHNVbm1LY1NpWVd4SzF4SVo5Mk5mWExpYURDdU5OV3dPVmha?=
 =?utf-8?B?NkJ2dXF0VWlZSUo4NGFBWnJPeFpXY3hiQ0p4bGhVd2pzclJKRGlsQy9RK2xt?=
 =?utf-8?B?YTU3SFc0bWFhSTFtN3pzd1V5SEU3ejd1NUF3a1A3WCtKRU1zM1J2Y3hRMUJa?=
 =?utf-8?B?ODNoY3BsaGJjN2VyNkVBSXVJY0RzeFJma0dCTEpjTVF2UmFTeGlXQklJOG5N?=
 =?utf-8?B?cXZKSThkVmFBWnNUZUVLN3lhTGVaaWxCZklQMlhHQVd4TWNYNUxOd21adG9O?=
 =?utf-8?B?RDUzdnU2UlFzb0VCOFlIMllRNTRwbGF2cm4yOWxqK1Vxd25yTlRnNVpGNitv?=
 =?utf-8?B?WXhNb0Rncnpaekttak5lQmgyV3k2N3JNM3p6MmpoSlp4bHEvYTVqSUZGQ0g4?=
 =?utf-8?B?Nzc0Q0tGSG0vRGdsS0J2UTVIU2dkaDFvY2w2SHFEWFh1bUxqa3lnK0xJWmRF?=
 =?utf-8?B?eXRzNmJ2S3hLODR5OTFZV29JYTM0TVBBK3phWDdmRzlYcml2SnpXanhwV0sw?=
 =?utf-8?B?Z01neHBoVnZoVHhLMmV5Q0I2UGVmTXB4OTRpVjZxVGlRUlc3WmtIbjFjLzNR?=
 =?utf-8?B?TlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e5a5d01-c6d5-4211-4283-08dc897f3d7c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2024 18:57:56.6157 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qp2q4eu0e24VMRnEpL0/YTwFpPXMCZzW3L/mt4cY0ghdrcJ9LuFtDs677cPyOCXDFhmO82s4JFVDCIOFDpJjp5iBQJdyE4rHJ/3TXzPV3Gg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8520
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718045888; x=1749581888;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eMuvI7iiYjUM1MUmU35WihvsgzxGzUWWVxL2WDZFCcM=;
 b=OM5XAh/X7pxdi44a1iMxdcI4zYGgiz9JPwpMYSCL6AtJHdHuYtSeRPjU
 YNZqOaEnNEmrcj4+CKV3Br05e0yIWs3NtIJ0xAFIMgosndQ3NdmBFky3t
 ma48CmnfQc2TataZsB50/uYkwJRmT5ZdyVeDyRPGCQr2wDSkyJc7/ikTR
 Rnr7wp+WhY5CXx92Ag93319YtrxoTP2S1BVAyYCe4Cwjt5iKRy3aZci7S
 FDrtHKbVPvrlwTAqdyjIe6FlGczfnsCU61KKD5vB1eWIxNVReBZStn2S3
 BSNS8TL3wtRgOUsj8OtH/qTIGe2AN2ztiTVhdC7D/Xrk2D6YwdWcfUrcU
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OM5XAh/X
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 0/3] ice:Support to dump
 PHY config, FEC
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Pepiak,
 Leszek" <leszek.pepiak@intel.com>, "Czapnik,
 Lukasz" <lukasz.czapnik@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/8/2024 11:14 AM, Samal, Anil wrote:
> Hi Jacob, 
> Can you please help me with the branch name that I should rebase? 
> Last time I rebased to "dev-queue" branch of "git clone git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git". 
> 
> Let me know, if I should use a different branch for rebasing. 
> 
> Thanks
> Anil 
> 

That is typically the correct branch. I suspect what happened is that
other work got applied to this branch between when you fetched and when
you sent the work. (Or possibly between when you sent and when I tried
to apply).
