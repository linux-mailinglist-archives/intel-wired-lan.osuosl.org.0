Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D613AAF3AC
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 May 2025 08:26:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 86ED260EA7;
	Thu,  8 May 2025 06:26:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4nz4Qq4QXV_o; Thu,  8 May 2025 06:26:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C14F560EB7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746685592;
	bh=wmJDuv7pRJHKrFZ94xcl9qXb4YQFFU3VvjI7ue+id0U=;
	h=To:CC:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XzyzQVNJGw7MGFJ+0nmiUNxwPe6Wj+xUQLxjBvnR6tVb/wc9elZTevjSik82CmJfF
	 3Y1xweEPLbn7dl80bFPy8TzuANBjF3rjveFu2eoCpZlwRc1mbNlFbj/zi47N2v8DPu
	 XqsXFcmOj8xmH355tnVurld9Dw7OCHRntgYEYi/5YTxB+/89gs6VGa4sQo3YOr0fs8
	 SwDMQfT8h8tbylbUrwiws9c7c4Fe8jSUqX08r8L1r8uprcAP7SE/eG4b4KcriSasNX
	 CSKpk3krGfJL0OehjtayznYRhrgLnINt1T3C7J2e6rukmi5aUYP71hMlG7JFrPFOf7
	 gvkCoDOTpbMfw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C14F560EB7;
	Thu,  8 May 2025 06:26:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 38CB61A9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 06:26:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1EC5940A7F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 06:26:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id USrjjoXmN0bD for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 May 2025 06:26:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2984240A5B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2984240A5B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2984240A5B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 06:26:29 +0000 (UTC)
X-CSE-ConnectionGUID: mG3KMCwOSw+vXfW8zvTf4g==
X-CSE-MsgGUID: 3l46/TioRUqfRxWq/sXbDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="48532823"
X-IronPort-AV: E=Sophos;i="6.15,271,1739865600"; d="scan'208";a="48532823"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 23:26:29 -0700
X-CSE-ConnectionGUID: oOVNtRo8TcqRXXW/Yp5QxA==
X-CSE-MsgGUID: B0vxoQVpRZ2oVq/hxqweHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,271,1739865600"; d="scan'208";a="141153131"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 23:26:29 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 7 May 2025 23:26:28 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 7 May 2025 23:26:28 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 7 May 2025 23:26:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zh5pk1NW2SZJrRXyA5VwEZYH96FiCrK/L+ZMQ2rnGKV5e4oA/u8VsrVJGTrnW2LfK2iELP/jfYGtHc7W7iIfts7QNsiUgpksgF5pqzLCEiNu9Gw7LL0x6Bn/uS6m/nOa34NB6gtyjLrLLcjVtsQMhqdeyGm50qbHemlXsYVo57HsOJzBFvVqqzrUjBj//LHsR939w0ccrvVIuHLIi7V113pTHaSBDeLlvT24AtsIZjfLeNJa5lczmeBHIWZOY2F7ZrrsSLQ3o7mH/DG/RP/QBm4+UHIDmhD3DdYQ8taLUY/31MtdBdCi4K/nTIsV1cksdD0j4q+fyUHfCqpQaFw95A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wmJDuv7pRJHKrFZ94xcl9qXb4YQFFU3VvjI7ue+id0U=;
 b=BLeUhhlYT2umjdaLCe1B+p4AN6jUmtqHdk68rD82wfsQdK7iktcqRXzhW3j7dnTK7NvHHA6Kap//h5OFztrVjlRY25qu6eoIz+DyuQwNo5Ssm9sIcTuV8iOlZwXK//aQ7ZV/N1jrzvTsF9CMtlMgJjw39VHrWuj9VRIhInUzBspMfU4+RWUqfbUjMMeR/0O/qOlnkusOmNzuyPGNXu7UPyuiZttD5OaKEXTjiU9oZlOvB0c4uiQq8oFKlIH0AgosP641Xi9aAulkidjOr/yS1Dnqi9UFZf/hk1LbXKEgj/rjlNnhkw5DcHsrcj1kNsmOABED6eud4F6ziq7FkLP2Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by LV2PR11MB5974.namprd11.prod.outlook.com (2603:10b6:408:14c::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.35; Thu, 8 May
 2025 06:26:24 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%6]) with mapi id 15.20.8699.019; Thu, 8 May 2025
 06:26:24 +0000
To: =?UTF-8?Q?Marek_Marczykowski-G=c3=b3recki?=
 <marmarek@invisiblethingslab.com>
CC: Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <regressions@lists.linux.dev>,
 <stable@vger.kernel.org>, Sasha Levin <sashal@kernel.org>
References: <Z_z9EjcKtwHCQcZR@mail-itl>
 <b1f5e997-033c-33ed-5e3b-6fe2632bf718@intel.com> <Z_0GYR8jR-5NWZ9K@mail-itl>
 <50da66d0-fe66-0563-4d34-7bd2e25695a4@intel.com>
 <b5d72f51-3cd0-aeca-60af-41a20ad59cd5@intel.com> <Z_-l2q9ZhszFxiqA@mail-itl>
 <d37a7c9e-7b3f-afc2-b010-e9785f39a785@intel.com> <aAZF0JUKCF0UvfF6@mail-itl>
 <aAZH7fpaGf7hvX6T@mail-itl>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Message-ID: <e0034a96-e285-98c8-b526-fb167747aedc@intel.com>
Date: Thu, 8 May 2025 09:26:18 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <aAZH7fpaGf7hvX6T@mail-itl>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL0P290CA0002.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::10) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|LV2PR11MB5974:EE_
X-MS-Office365-Filtering-Correlation-Id: 4295fcd5-acee-48ed-01a1-08dd8df94137
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UzhHWG5oVFVlcmVraUMwY3hqeVdqQjdyY1RzZFp0MWwybVg3SjFlUWFmVnll?=
 =?utf-8?B?K08vRVEzejhDUlNIVCtzU25MMVp5RWhORDU5cnpvUlZmZDlFc0tMa3VsU3ZB?=
 =?utf-8?B?UndiNUh3N0dOeTRNZWtwWHovTTdVZXUxUkVDTGsvTERTUnA1Y0ZIWDVzdmdj?=
 =?utf-8?B?czhRbGtNR0FUcnlBWHBKQVZ4aVU4MElQSXZucmJqdVRoVWhib0l6K01BUFZM?=
 =?utf-8?B?ZWRCMHhZZjE2djVDNHdFWGJHeGNwaWYvR1lTNU5nZnF5U0FtR3pIdWtxVVcw?=
 =?utf-8?B?WkgzSlhEeHMvcndDK01nWVJCSHdPSGk1UmsxdTkycmxiZ3dyL2w3MDVram5l?=
 =?utf-8?B?NzREaDAzREJKazk0Wk45RFEwaGNXaU0vVFRCZGhDZ2xSVzUyeURHUXRuSzE2?=
 =?utf-8?B?L245TkxFbzFJQnRaeDAzbEFjL2xNTjcxVi9DeXhJRmt2cEJGWDlvQmIrQ09U?=
 =?utf-8?B?UTBlbUZDeStoRWUzdHJEU2V6ODNWeTJVQVZFMm9IcVVTd0hPUm42NUZGSjVI?=
 =?utf-8?B?VjdqdmhjT3N4bkttNktNVldtL3orZEpVNi80bjRQMDNUYzE0QXpGMnZnODFo?=
 =?utf-8?B?QjE5VTM3TzczdGtYcGF0b05WNjlUWEZaUEhVUklhdEF4MUtjZ2ZnbllZYnFl?=
 =?utf-8?B?bzUzbWU5OVFvbVJVOEcvemhYQ0pKcTRZTStpN2lpdWZGclhYUHZsWUtsUWND?=
 =?utf-8?B?MVhiL1ZJdzhlYkFkS3RxLysyQUl1QVlKcHpmdnpXdUF4ay9pMW5pRGVLekEv?=
 =?utf-8?B?Yk9NTXRTdTJocHpEMkI4cWY1RGlGME42VndwNEtuT2ZBT1hQSWVGeWpSbmYy?=
 =?utf-8?B?U3NtMFovTFNuM1JnMUMzcm5NejdMNGVHWndCOTYvOUp2Sklra0QvS21OUVFJ?=
 =?utf-8?B?Y0tXUlp1SHMvS3ptVFAxazhwY0NBUDJpSEoxbXBvaUNCcGxkYmxtU3YvWC9L?=
 =?utf-8?B?YkFaYUQ1ekpCRndudTdEdFM1LzA4eEpvVzByelBpbXZuK0Q2SHpPSjBKQStt?=
 =?utf-8?B?eEtLc0l6M2lYM0lWaGFsRFpxWFI0RWNPWFYvSjlYMWdJcXN5MzBFL2dwYTNJ?=
 =?utf-8?B?RWFVWW5HK040VWE0Rzc3blBrUy91dWpodUVUMTl6Z25ZalhEMFlqY1A1SEQy?=
 =?utf-8?B?TTd0NTFxK1BLQ1VsK29CR0RaNUszY2JQbVdxL0FmZ0FjUWVsTWlyZlZrYWpX?=
 =?utf-8?B?WmJyVkFleHVvYVFXaWVlOGJBNEdUZ1RUeFpQRjM5U2VENi9pUExYQ3BCZ2ZM?=
 =?utf-8?B?NVBTdVhldWYvanAvWDNjMmtGbDhlMHphL2s2aFNkTzJpN0N6ZnJtbEpDZldw?=
 =?utf-8?B?eFJ4cDZLd3RSdkxTbHNyR1l0cDZUeU9UQTc3Wlp3emw2VURMQyswcm1kSWhP?=
 =?utf-8?B?SzlKMXFoOXRldEJ3VTZ1bjhBQmg5V3M2SCt1cktqa1B6V2NISU1WOUlNRW9S?=
 =?utf-8?B?c21qVWg4SGRpY1h4c1VQQThVQ3hLS1dlSGc5OTExeWxQcEFDNmlQbjN5SllH?=
 =?utf-8?B?dFA5WkNpUFE1c1pkczliNnBlSGhpb3p6bm5CekdrekQwa0dUOEJkOE5TVnRC?=
 =?utf-8?B?bHl6ci9xQTRrU0lIcWxnN3hXRlZlTCsxSUF3OU8xZVNEK3lSVjVOZlROYkMv?=
 =?utf-8?B?dHRRcHpicVVXc1lVbUFVcm82UHAwejJ6NTRRdVR0czQwcXUwMUdENE5oYmha?=
 =?utf-8?B?TklSMjcwNkxzRUszbG9EeFFYdVpWSkJMVHJYNmxJclFDY2Y0dE9JR3lVTlp0?=
 =?utf-8?B?ZVpKMUJ3T2trbEZ0dnVxcXJhTDI0TkQ0ejMzb1ZaWHRKQWhqTXRueHBPUXhw?=
 =?utf-8?B?Z0U1UnRhWW1vRWFVeW5GTHIxdjlLMWxmWU16bHhRYmZ5MmhIak41WC9HUlBw?=
 =?utf-8?B?d0h0dnQwUWdXL25pdW5pQXZOZkZSY0lRcVd5eHdNcUtndWFxeFZlZkxUWXVH?=
 =?utf-8?Q?dDa4s91sAA8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VnltZ1hHb3A4RzN2NEtZN3A5NUVyMkNwTHIwZjJPUytqKzBGWkxPbHk3WlRI?=
 =?utf-8?B?ZXo1ZzZJZERjajVzbDdiSGFJd3l6U3dSVXk1alRVWXVEbUQrdUh1VUZVNXJC?=
 =?utf-8?B?T3RSWUQ1UktYTmdDckZUbnNiSHVzK1JPZEVXNExLU1B3MFZGaXNjNHQ3RS81?=
 =?utf-8?B?dHBTQThYMVlrM2ViekpNZVc3c0k2aTVzWmVBUFV0TFhNdkFZUHNrSkR2aGJ2?=
 =?utf-8?B?aDhIY0dOTDdkZ1lXelRRSXFHYWs4VWdEVUtuUTFxRmp0aGE5bVRvOHJ3QmZ1?=
 =?utf-8?B?MHY1QzlDOVJmV2lsK1NpR3M0QzZVcEdNaEh6cUdrM0VLSWhLRmVWVmk2aEhj?=
 =?utf-8?B?eVJzRk1DUC83eml1U1FoOUhUVkNFOUJmUGhUWTZPZ1ZIeStJZmxCUFVYdEhF?=
 =?utf-8?B?T3Z3MDhNUFY2aWJRdGdMblF6aWJ0RG5hYzBtaUZJUmcyNTNSRUZycWR1aDZI?=
 =?utf-8?B?SVNrOERRQkFaT3NsZ2tNemV0Y2twQ1NLTG1NMTQwd0doRXVac05uTVBtL3hw?=
 =?utf-8?B?bS93WURWWVNUVnNncVBpc2l1Q2hpajBXN2I2aFBVOEZKYS8wbnRsNW5DNnY2?=
 =?utf-8?B?K2VnZzc0MC9FR2lReWJnL2hPQ0FRYXJuRFhUcjRrM21vUVJxdVJ6bjloWGdS?=
 =?utf-8?B?VlBSbXN0N3p4SlpENWVqZGNtQTlsVUVuc0R1Tm5BTmNIZVlFUUUwRUhnNGxo?=
 =?utf-8?B?b1N0SVVPd2ZTREc3QURuTkJ2MGpJditPMTV2b2d1VkhYQlFCNTZhODMwbHF4?=
 =?utf-8?B?eklNUkJDdWcyVWNDMVNDVnI0SlFnbDRLK3JReERvNmZ4akM3R1I2VlV2SUFS?=
 =?utf-8?B?RldZRzA5YXU2L1Bvd0VlM1dWQkE1Vzl3VlRQb3BtUGluanF5ZE5rdklKUS91?=
 =?utf-8?B?dzBZKzZEL0RMSElROXFibURBaFFlWlg0Zmgyb3JEZmcyZEp5bFNIZVo4YmNq?=
 =?utf-8?B?Mlo4TTFEQkE3dDRiaS92M3JqUUUyZlV0aWJaNS9tYkpyNkM4ZTJJQ1FOMWhy?=
 =?utf-8?B?YW8wazJxc2MyandKY2tObitRdjZtOFAxdzBIbldhZlJaWXIvUXBsREluNm9l?=
 =?utf-8?B?aG9OUDRjVEo0M3d0ajhZd0picEw0T0c4UlZ0RmtRUG9XTVMwM04yRHJZZUtt?=
 =?utf-8?B?MTFiaFl2YXI1U0c5eGVKTWF2dWhrY3VENk1rQ0F6NkJwRmtFTlhWaFVWZnY3?=
 =?utf-8?B?eE9GaE5sZVpnT0xwRmZVL28ySkRraTBsYnIxZHJGYW0vWk1CYzFtdzhqYW5a?=
 =?utf-8?B?cVZUZUdNOUc4dHVOV1B6Y2JhQnVVM1hJV1hYRFQzand3UFRlbUtRZHJXWEhE?=
 =?utf-8?B?N0hyQlNwa0pLaU5zVE1KK0RBaGh3cGVRWUMyYzk2WkFjcHlXTWhxdVVDbGRR?=
 =?utf-8?B?V3haYVJJT0dIbWVnY2pDSmkzdk1SVzVQQWlJYjFQb3YrdzRVVTNnTnpJYWlP?=
 =?utf-8?B?VnF2VmpmcGdDSGVGSWZubTBZSS9MakNPbC9aR0I5d2hPZDRxWXhvMHRtVzRG?=
 =?utf-8?B?WE5HSDZ4cXBmVmJxVEFQenZaSVhpSkhZakIzV004OXpqZlpFdU9sZ2xtQ0Zi?=
 =?utf-8?B?MzFiaWIyTzJReVRqaVN3K0FKVHIxK2V6SXlsdzlOZUhFNWtiOFM0Vm5WUmYx?=
 =?utf-8?B?YS9JWXJjT0VIc3dNVFQwampqOVNtZFRrTk9LcnMvcm5ranllTTNmMFA3MEJu?=
 =?utf-8?B?MDNFTTVUMFBzMGZlM1BDUUhFcGVYdUVIU0lmL0JONENwRGxPbWdJMHZoQXoz?=
 =?utf-8?B?RlBKUmcrVFpKQ1FWZ0Zsam9VQTRDNWQ0RXlVdWxvR0x4ODFhSXlwTFVHUzR4?=
 =?utf-8?B?enN2dGYrckw2emwvTGtIemNzZVJXbHJLQ3F4b2tmR2djdDhDZkk3d3BVdHBq?=
 =?utf-8?B?TFk1OUxKQzI2c3hZRlpCL1FTZGE5M1hmVTRGWUZldkExVTEzL3hoaVBoeEJ3?=
 =?utf-8?B?M0h6Vk1DZUVyai9qUVkrL1dTME9PSTJaVk1LelU2U3JqZVhFUmNlcDMvMmNR?=
 =?utf-8?B?VEFRQVAxbXB3UTJmWjczZXZ6cDZVWSsvRy9DamVlSFg2NjFvOW9ia24zVFkx?=
 =?utf-8?B?UnRNY0liZTRPN3NrdDBzUjY4b3BINVgwaGtOSnVqM2RKMk1leHRXNFkwRU0z?=
 =?utf-8?B?SDFHUUozU0l6Y0xVcHZPWktBVE5aREdnRXVZYk5tYnI4RWZuUWwzRG5vQU8v?=
 =?utf-8?B?Q3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4295fcd5-acee-48ed-01a1-08dd8df94137
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2025 06:26:24.0131 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZSeDH+Zf8SwcEA2BDEeklI4eUYpJQmoP1l9ouqE0+5kSErET6BuRT+ynS2U9ENtaCX13U17gtG4C7ON+tanahLZTo7BgHZUhB6roNXEnmeo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5974
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746685590; x=1778221590;
 h=subject:to:cc:references:from:message-id:date:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4ZjBFUdE3fpYxVGCgU2QaFeWz4ramPnZaZdogjop9I0=;
 b=iUlfsuEUBCEdGbWphEmTzEBHNSStkYZlJZKQs5zPXp1dkNHiqazgxuMU
 9qHVMaXWWkcSyyTxZaB+pD4gnueptwRKPZSb0L7TMKHOMTzGLl121YUew
 S0/SkkZRXAz/P6iPP2Lq4chOVEHxqHlDl3WAvV0HCsiNCG0f+hsKDkKky
 Z3zKl1UbKqALEE5ZZ7AKqornNRES+/bJ8eW2eQU9xSlEvgoRy9ICOhggt
 fxxwawnqBkjMK2rgu2TGvS6XABMCiuTRmrRG6huBwX08ukMsToDRKwtGj
 IWRVlTf9UGiO3qFyPsdbrtQoPM0hUw10JGQuEWeyT4wPVJzRaKMfGYnQ7
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iUlfsuEU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [REGRESSION] e1000e heavy packet loss on
 Meteor Lake - 6.14.2
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



On 4/21/2025 4:28 PM, Marek Marczykowski-Górecki wrote:
> On Mon, Apr 21, 2025 at 03:19:12PM +0200, Marek Marczykowski-Górecki wrote:
>> On Mon, Apr 21, 2025 at 03:44:02PM +0300, Lifshits, Vitaly wrote:
>>>
>>>
>>> On 4/16/2025 3:43 PM, Marek Marczykowski-Górecki wrote:
>>>> On Wed, Apr 16, 2025 at 03:09:39PM +0300, Lifshits, Vitaly wrote:
>>>>> Can you please also share the output of ethtool -i? I would like to know the
>>>>> NVM version that you have on your device.
>>>>
>>>> driver: e1000e
>>>> version: 6.14.1+
>>>> firmware-version: 1.1-4
>>>> expansion-rom-version:
>>>> bus-info: 0000:00:1f.6
>>>> supports-statistics: yes
>>>> supports-test: yes
>>>> supports-eeprom-access: yes
>>>> supports-register-dump: yes
>>>> supports-priv-flags: yes
>>>>
>>>
>>> Your firmware version is not the latest, can you check with the board
>>> manufacturer if there is a BIOS update to your system?
>>
>> I can check, but still, it's a regression in the Linux driver - old
>> kernel did work perfectly well on this hw. Maybe new driver tries to use
>> some feature that is missing (or broken) in the old firmware?
> 
> A little bit of context: I'm maintaining the kernel package for a Qubes
> OS distribution. While I can try to update firmware on my test system, I
> have no influence on what hardware users will use this kernel, and
> which firmware version they will use (and whether all the vendors
> provide newer firmware at all). I cannot ship a kernel that is known
> to break network on some devices.
> 
>>> Also, you mentioned that on another system this issue doesn't reproduce, do
>>> they have the same firmware version?
>>
>> The other one has also 1.1-4 firmware. And I re-checked, e1000e from
>> 6.14.2 works fine there.
> 

Dear Marek,

Thank you for your detailed feedback and for providing the requested 
information.

We have conducted extensive testing of this patch across multiple 
systems and have not observed any packet loss issues. Upon comparing the 
mentioned setups, we noted that while the LAN controller is similar, the 
CPU differs. We believe that the issue may be related to transitions in 
the CPU's low power states.

Consequently, we kindly request that you disable the CPU low power state 
transitions in the S0 system state and verify if the issue persists. You 
can disable this in the kernel parameters on the command line with 
idle=poll. Please note that this command is intended for debugging 
purposes only, as it may result in higher power consumption.

Please inform us if disabling the CPU low power states resolves the 
issue or if further investigation is required. As previously mentioned, 
this patch is critical for the operation of Meteor Lake LAN devices, and 
therefore, we are unable to revert it.

Thank you for your cooperation.
