Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E72990D475
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jun 2024 16:21:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 215BD81C18;
	Tue, 18 Jun 2024 14:21:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uhq2Cjbc1ErC; Tue, 18 Jun 2024 14:21:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C4A8A81C26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718720489;
	bh=uRJTijeyD3uuT9X767fPcfZ4aqyNdmdSKmLgl2RqS4U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9DSyjycQ8+rCYc1t0rbwKVmbgWXqcdLg1wwglMiihwo5B8fWcXyUzGvD8NHsRGskC
	 E7Rf1KePowr0+ilyuMt1nGBZdV8fnA3Gpd00lOUXAdolq5YEweUMa4dbGPXeSRW90c
	 /oIVcjPca0WrTFIT+tjFVd7nFpz5DAqtrrqwikQKXneJLsavgRGAk6rQ/O7UyNruT4
	 N32gQCGiGPtkWwn3zTnPev9QT7gHd/SgWdXui1STUyzTk/K7xS3iGPIJ7rvMYuSIAo
	 430bfffxqK44hu11TOQw5vy9ukAaODodbVQgmp92ep70c7WZu5V2LDJyBUVRTJDvT0
	 efoboL+W2zOsA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C4A8A81C26;
	Tue, 18 Jun 2024 14:21:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 810621BF3AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 14:21:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6B13481B52
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 14:21:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Aye8HMf_AmIi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jun 2024 14:21:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 44E5C81B26
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 44E5C81B26
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 44E5C81B26
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 14:21:25 +0000 (UTC)
X-CSE-ConnectionGUID: hYkRVEcEQU2214CsqAclRA==
X-CSE-MsgGUID: cTsdhq7PSlKt2NQh3D3zuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="33073205"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="33073205"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 07:21:26 -0700
X-CSE-ConnectionGUID: sc3r57WWSnSJlARAw8yaMg==
X-CSE-MsgGUID: 5iSSk4wLTrC2gC0omvht0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="72315589"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Jun 2024 07:21:25 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 18 Jun 2024 07:21:24 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 18 Jun 2024 07:21:24 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 18 Jun 2024 07:21:24 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 18 Jun 2024 07:21:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XD7IyneM9kDXEoFHFt+RTjpdQ8L7vqeEGkeur4Qtc2NHkMZHOu9SB1PX9sVT05lSNABf10nYucoL0itghRDNYcWChywAmFrE0bgqnk+uA/W8hj8ODmUf2TpCtteI4g9uGl0PLJ86VZjsA0g18iL8OQkhS+ih2YfCJHKPEGpSeMe7cEwaZab+LqdHWupfBZrDPeg526ALacZPqabNn9U0CiIfkUZsxTH2W1swIdQ7iN78ywOo6NSJ08LpOdlEDzNYK3OM+6e2Fb76abR4nUxXgwULgtLOGDBqEO5P0/mHOt7MMyYQe6vUiponSHs78zc201tXCXHoOUZYJjAvckXt6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uRJTijeyD3uuT9X767fPcfZ4aqyNdmdSKmLgl2RqS4U=;
 b=G1dO9RcR+yEIU7qTflYBkrMaVFGzLH/HoHyoRL6OaXVcT9pdmwIMjpDnMdiyvsvgst6kq8c2ND9MOl0f+o3ihuIIUh6gPCFutjy3ugVuO4PzmcNsc+zRvX15rLgXqsN1A6eX5j7fzZLBlTUcHj/PFzLkVZrz5ioC9h5iY8QRhoQBEZfkrXH9t6lpRBNCAWq+qoXIWF8NkzUR76gouvrV3VHsFDOwGbbjruTmRtfHhy8MI2gsyZbcB+okQBM3RYSATDFCNvQzqwcBsJihEv8g4FfzuNAfWfu5E1MyYV+A9EIdKNrh3LGu8iPsbiS5AdPz53fldqXd7CfAMzSGGbE68g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by SN7PR11MB7668.namprd11.prod.outlook.com (2603:10b6:806:341::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.29; Tue, 18 Jun
 2024 14:21:22 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%4]) with mapi id 15.20.7677.030; Tue, 18 Jun 2024
 14:21:21 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v4] i40e: fix hot issue NVM
 content is corrupted after nvmupdate
Thread-Index: AQHawYJreP4M0MfyHEWSeVxVtkBQwbHNicYAgAAGN5A=
Date: Tue, 18 Jun 2024 14:21:21 +0000
Message-ID: <SJ0PR11MB5866A55691B58852B19FAC5CE5CE2@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20240618132111.3193963-1-aleksandr.loktionov@intel.com>
 <07519e33-23e8-48b1-a445-c128b40e1c36@intel.com>
In-Reply-To: <07519e33-23e8-48b1-a445-c128b40e1c36@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|SN7PR11MB7668:EE_
x-ms-office365-filtering-correlation-id: ed1126ea-c181-4230-3fb5-08dc8fa1ed90
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|1800799021|376011|366013|38070700015;
x-microsoft-antispam-message-info: =?utf-8?B?S04wLzA0UFRUM3pVRTEyT2Y1L0wyOWRwRmJRVmNpVVpHTG43b1B2WUJnOElp?=
 =?utf-8?B?WVhkZ0hvcDkrR1JKWGVGSzdVV3psaHdNRkNCQ3B6KzlaWkw5SU9ISHlDVnRM?=
 =?utf-8?B?d1VDSjYzR0hndGhnQW8zMFlLSkMwcUduVVQ2cGsweVI1SEIya2pncTByek5C?=
 =?utf-8?B?OG9KcHhOODl1bDVYRDhKa3VoOFEzU0c4NnhhZVBYNmgyMG4yZXp1T1lWY2R4?=
 =?utf-8?B?WDRUWEdQR3BtSmExWDlTUkdNMzlWeEFudjMwS040NzdKNXFiRTU0Mkdvc3hv?=
 =?utf-8?B?NndXbXdnb2N2ZmVuRk1mVFpyUjhJUWMzeUpCdFZ5SU4xbDV3WWlZazNtVWkv?=
 =?utf-8?B?WjVjUldlUWVYeWVzSHQzcmhOUnN4dTB6QWhuWVdxTVlRdTlNV0xhMVZTOVg4?=
 =?utf-8?B?U3E0SDBSRTFNcFZSQ2tiejdxOEVIN29scmlOSlBZRDBOZjMrcUpJei9kYzh0?=
 =?utf-8?B?L3BSbXhhWGpBdlNyYTBMZUZRUkpuVzdJRmF1dlZTZ3E4ZTNHNHNmdWNOSVQy?=
 =?utf-8?B?THJuOGdDWlhzQzZMUzZPQWJTY0MxbHlQZnRXRTRNUFJEZHBmVWdJa0hKRXRj?=
 =?utf-8?B?d3hvcGNyVDd2S0poK1pobEZmRGt2ait6QVBmYnEvYWVLazJ1L1VJckdLSzAv?=
 =?utf-8?B?Qk9OVmN5MWI0cEFkaVNOc2lHN1lwcm9hOGltbmVEMmhhNm5mNGZXaFduWFlH?=
 =?utf-8?B?SXF4YVhvMEx5TkprbzFMVERTcHFNZW9zSWV3b3ZycE1BNmJpSENBOUxzcCsz?=
 =?utf-8?B?ZFJZMnVTU05rZkNCQnVzWTBnZlpSSTZHYm5UWkkrbTd1OHhVSTVSLzlWUHdC?=
 =?utf-8?B?WkgzWWx6cHpxY2U1T2poVjlJbEl0aWtMUlpGQ2tvLy9XQ0gvZXJDb3RRalNz?=
 =?utf-8?B?MDYrS012Q0JaVHoxZXNPR3RNamxjbERIQ3prYXBoYUtrcGZKVTBBNHBaUDhr?=
 =?utf-8?B?NmVMUk8zNVU4SXowQS92aHRBWDRRbCtKNTM0RlVwbDdpTmFxSDhQSFhhbmY2?=
 =?utf-8?B?d0VhNkxXMnZKTm1QNHppWlJlaEEzbnNDY0FLOEFUaTlCeHFtZFpGbTg0bHA1?=
 =?utf-8?B?MXZEeFNoS3pORXpOcjBuMjRFUGpTTFRrcWhKS2swMXduRGE3M0RFMkNpbnp6?=
 =?utf-8?B?T0FJcUc4WUFWNFowYVNNVGJGS09SU3U3S2E1ZGRQaGFrMFM2L3l2cUFlZmQr?=
 =?utf-8?B?a3Uvb0ZhaFFUMmpWdDhodldqM0l1bnBPcTkwWjZFdVVyYUZJWnZyNlpHWXdQ?=
 =?utf-8?B?cDhCTEx1K2d1VFRyTXovVEQ1UGlvRTdsVlplRUpwSVZzQUZRQW54ZWtycElI?=
 =?utf-8?B?ZmRPNHkrazkrVlUwZWlTZ0FnSy9ack8xSlg2ZEZNN2NETTFiMEdKQ2Y0Q1dy?=
 =?utf-8?B?S2toaXRwUVZMWjBiYitlMGp4T0dpTkJFYms5WE9UZ0ZJWXdSNUlpVnRJWDk5?=
 =?utf-8?B?OTlrcUFXMDArRm05RlhrSlp3QlhoZ3lNd0FIZG9NTUhTRXZxeDV2WWFDOEkx?=
 =?utf-8?B?RG9FSEd3RjhyU1NSMnhTb3BWT0ozR3BqVThKK2w5T3dlSDk5TWtFQnRaNXBp?=
 =?utf-8?B?UUl4cXRTYm5yaUhpanluSlJxOWZUQWQvS3V5RWNnVUhsSjMycC9lb1kvbk5u?=
 =?utf-8?B?Z3NLeUFRVlQ1dEYvQytlUGM4cHM0Y0VhaU14Q1E2RlZKdGl2cG50Tjhpc29i?=
 =?utf-8?B?UGVzVnNMTXBKenBDOHI1UzhvdTdDaFZLUEkrbEl1KzdUWFlPQ0ttNVZobzVa?=
 =?utf-8?Q?gRScItTVrAT4171eqnhMo9V6CQ3rBAA2/nkhFOs?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(1800799021)(376011)(366013)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VkpGOVhwczBrcUJYdUZLTlEvaU9GSGJ4NXpkaHVoSWM4WTBJRytHWFBmclZn?=
 =?utf-8?B?S1JWOHFNaGV2UTZTbXNIRE9OTkRoeGlpN05QSEdzNXJMejFpTXl3NmdrQ0Jp?=
 =?utf-8?B?QndsR01HTDQxbERhWDFlaElDSzR2cTB3S0s1RDJSY0F1cUgzV3ozRHpZU0N5?=
 =?utf-8?B?ZDdDSDBKQlZKVVRYRGFUcGpYVW1wZHM5VGpGazhVVm5PQ3FNUVBveWs5SzNr?=
 =?utf-8?B?Ymdzd1VPUUwwQUw1RFJ3UXNjdnR0UzBHbXhLdUcySDRkcUVheDFVaEY5YjlB?=
 =?utf-8?B?U2RkQk9RVW9QdklrdkpjKyt4bkEvRFpHd2hQTGFUWkNoOGpWbU1rN3dVOGxR?=
 =?utf-8?B?UGZHbzIyQkt0dE9kQWorUGFBNjB1THdFWjlZYmRNZzFFRWVqdlFVS1I5ZW0v?=
 =?utf-8?B?a3RDWjhBNWI1NUJNaHZIczRjMHZSTjJyUGNRMEt0aFQyVWE0UFlwMkNmWjR5?=
 =?utf-8?B?QjhNalhPNjRERFZyaVJZUGp4aVdEWmlQUjY3SzdYTHN0QkEycEE5eCt0b282?=
 =?utf-8?B?YnJRRlVBWEVqTG9temdvN2dnOVhVRkkyaEl4NEd3V1llRmZKOWRycHFObVlC?=
 =?utf-8?B?a29SWHNEcUc3UXZnbTc0MmFSVVNQaUdxVTVTTDhyZlBPd1NVSjFIdmd2OUps?=
 =?utf-8?B?dXJXcmdvRHd0aFV5c2hvaXg5aHhORHVOY3dWWnVYRW1KUkNWOVcyU0NkbllM?=
 =?utf-8?B?czN4SWdIbkN5RkszdTFINXdYdVdCcEhNT21BendvOSt4anhqZW1IVlAyN2NU?=
 =?utf-8?B?ZXJmOGlyOUN6SnJtaXh1di9QeThHMjN6NVhwR3lrOTVaVHVkZ0pOSWlmZVF2?=
 =?utf-8?B?UWJZQ0pHQ2VnYmlIM0orL2ViQ0VJcDBhNXpaYWdHcm9CT2V3Ymo5S1hyUGFQ?=
 =?utf-8?B?amZ4Z2pvYkhDMUc5QmdmWllrVkQ0ZlptbThLcG9QWEFVZi9HZ1RoN3VQdjF3?=
 =?utf-8?B?MVdlM3JaMjBkWmpYMXdueUE1MHdnTW1WemR4enF1QS9XeUp4UVJBeVh3MWtQ?=
 =?utf-8?B?cGQ0YWVFcUs5bms3TTMwQTBkTy9TdUZVUDFncGRQd3ZIbGpKZWtxSDVqSTNQ?=
 =?utf-8?B?R3llOTNnUzJOMmdLN0tENVp5RVFtT0VkR3V2Ty8zMGUxcERsKzZQYUIzVmFn?=
 =?utf-8?B?dHFUcS9aVVpTY3RRVmdkQmlzbnVqZ0NLaFRlMTY0ejlzK05jMHdjL0MwVzRs?=
 =?utf-8?B?NlpQSUp6VVozQXdIeTIrZ1hYYVNMNmtmTUNkRVRlVGFqQUUzTWE2VjZRbU0x?=
 =?utf-8?B?UWRMa2Y5aTJsSGhDZHlMek5pSVJKaFNFc0ZYNXpqMElZVlZoNXVhcnVabjEy?=
 =?utf-8?B?aXpjOVBneStTQTJGWmtYRk5yS1MrU2g2a2VPaVBRMFBPRStyVHEwdUR0VHpX?=
 =?utf-8?B?SlJGS1RHakVIbnRkbkNWMkdnWXpkU1FkMFNXVlRWQzVTczV2UXd0TG9wbVg4?=
 =?utf-8?B?WHBLR1VkTU01WkpkUC9yUFRTaDkxaSszWmhIaHJlaUM5czNFWU9haVY2Nkx4?=
 =?utf-8?B?UTd5dCtqZy85ZW5JVS9ySnE3M0ZmalhSYUNEZzZ3U2ljMytvb2szdHJrUmIr?=
 =?utf-8?B?VlgvZkV6dlNoSUVhN0JkejdBNWp5Tm13akdEUWtXMGJWYnNQRk5FVlh4U3M3?=
 =?utf-8?B?cHdya1JCU0FwSCtTUWVmYTFCT3RHY251ekJTbVY5M0lSQ1BLZXgvMXFhanBo?=
 =?utf-8?B?dEhkZFUzeEFZNHJsSnlQWWptbW56dXBId0szQjIxcDNMR2NMZzRlTmdEczZy?=
 =?utf-8?B?WG5xOStUbHROYnQxRlZGWVVyeHY0OEJPaFl0eUZIVy9NSUhtUHFIWDZiakxK?=
 =?utf-8?B?U3lXWnVJd0RuY0VXZGwyS1d3Z3dGVExSZm1hSnpaYURvSGMwME1mRXg0OG1z?=
 =?utf-8?B?R3VucXdOSG1yK25jR1J5TnBUUTFKM1F6OE1zeENmWDRFVDhNWC8xT3NEdFZE?=
 =?utf-8?B?dEZGb3puY0hhbHZqWm04RERMRDhhZ0FDNldRa3FoLy9wMFo1UVhLOHhhWU91?=
 =?utf-8?B?Vm1KNjFnV1ZNUGJkaVRwSE1VRTg0RTNuL3ZSbmNuQjUxeCs3RXZNSkVhVE1o?=
 =?utf-8?B?MFFOdnczNFBvTnpaQUJrWkFTT29SY0tKSXB6bU9xZEloVnVoK0M3QStSOXo0?=
 =?utf-8?B?MTBnTXZTU3k3TjUxVkNEd0YxbWw1aXJzbXFHSDlsRFdDd25IN0t3WkpxT0tl?=
 =?utf-8?B?ZkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed1126ea-c181-4230-3fb5-08dc8fa1ed90
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2024 14:21:21.7410 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8OIObW6/hcEldgB27c2gX0DBVeg73On8HbW3c2VEn3Ax13IWSmoYPuaY7VuPG5nw/yqKeZm96hT9nb0wbNRx03//i7yBMxSHuosA9MbMZ04=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7668
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718720487; x=1750256487;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uRJTijeyD3uuT9X767fPcfZ4aqyNdmdSKmLgl2RqS4U=;
 b=ldQGYI3YQvWYHSLayIvkvuWA2OtNyWuXlycd93Nid6tdJyAEsZbL9ioM
 NY1qUD4ngIE+GQUFXOKpT3AgRCGuXICWrjJJXbBANA6ZKDRulwZGr6XHI
 6MwMUBm+vOmLiZLmCTef7RxqPVeWvWvx8vPm4GjC1Ba4h0IN16wTX++p/
 eOY+LndV6bGSlWUPFFhS5l4fzRlTkWbDfih0sQ5jnH6nxxilwFa2bBg+L
 bGk9kYwsp4VYataEbTQYFY2g2jyEbvungtvtJqKjrJRDT8/NHjKrwJ+8/
 o/vN0nsBrTyDyr48M6mCiOMosKq22PIzAkC6Ye1HW55LkqWVrzy4/gwPQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ldQGYI3Y
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] i40e: fix hot issue NVM
 content is corrupted after nvmupdate
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kang,
 Kelvin" <kelvin.kang@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2l0c3plbCwgUHJ6ZW15
c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgSnVu
ZSAxOCwgMjAyNCAzOjUwIFBNDQo+IFRvOiBMb2t0aW9ub3YsIEFsZWtzYW5kciA8YWxla3NhbmRy
Lmxva3Rpb25vdkBpbnRlbC5jb20+OyBOZ3V5ZW4sDQo+IEFudGhvbnkgTCA8YW50aG9ueS5sLm5n
dXllbkBpbnRlbC5jb20+DQo+IENjOiBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBLYW5nLCBLZWx2
aW4gPGtlbHZpbi5rYW5nQGludGVsLmNvbT47DQo+IEt1YmFsZXdza2ksIEFya2FkaXVzeiA8YXJr
YWRpdXN6Lmt1YmFsZXdza2lAaW50ZWwuY29tPjsgaW50ZWwtd2lyZWQtDQo+IGxhbkBsaXN0cy5v
c3Vvc2wub3JnDQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5l
dCB2NF0gaTQwZTogZml4IGhvdCBpc3N1ZQ0KPiBOVk0gY29udGVudCBpcyBjb3JydXB0ZWQgYWZ0
ZXIgbnZtdXBkYXRlDQo+IA0KPiBPbiA2LzE4LzI0IDE1OjIxLCBBbGVrc2FuZHIgTG9rdGlvbm92
IHdyb3RlOg0KPiA+IFRoZSBidWcgYWZmZWN0cyB1c2VycyBvbmx5IGF0IHRoZSB0aW1lIHdoZW4g
dGhleSB0cnkgdG8gdXBkYXRlIE5WTSwNCj4gPiBhbmQgb25seSBGL1cgdmVyc2lvbnMgdGhhdCBn
ZW5lcmF0ZSBlcnJvcnMgd2hpbGUgbnZtdXBkYXRlLiBGb3INCj4gPiBleGFtcGxlLCBYNzEwREEy
IHdpdGggMHg4MDAwRUNCNyBGL1cgaXMgYWZmZWN0ZWQsIGJ1dCB0aGVyZSBhcmUNCj4gcHJvYmFi
bHkgbW9yZS4uLg0KPiA+DQo+ID4gQ29tbWFuZCBmb3IgcmVwcm9kdWN0aW9uIGlzIGp1c3QgTlZN
IHVwZGF0ZToNCj4gPiAgIC4vbnZtdXBkYXRlNjQNCj4gDQo+IG52bXVwZGF0ZTY0IGlzIG5vdCBh
biB1cHN0cmVhbSB0b29sLCBidXQgaXQncyBmaW5lIHRvIG1lbnRpb24gaXQgaGVyZSwNCj4gYXMg
d2UgZG9uJ3QgaGF2ZSBhIGJldHRlciBhbHRlcm5hdGl2ZSBmb3IgaTQwZSBhcyBvZiBub3cNCj4g
DQo+ID4NCj4gPiBJbiB0aGUgbG9nIGluc3RlYWQgb2Y6DQo+ID4gICBpNDBlX252bXVwZF9leGVj
X2FxIGVyciBJNDBFX0VSUl9BRE1JTl9RVUVVRV9FUlJPUiBhcV9lcnINCj4gPiBJNDBFX0FRX1JD
X0VOT01FTSkNCj4gPiBhcHBlYXJzOg0KPiA+ICAgaTQwZV9udm11cGRfZXhlY19hcSBlcnIgLUVJ
TyBhcV9lcnIgSTQwRV9BUV9SQ19FTk9NRU0NCj4gPg0KPiA+IEJ1dCB0aGUgcHJvYmxlbWF0aWMg
Y29kZSBkaWQgc2lsZW50bHkgY29udmVydCBFSU8gaW50byBFQUdBSU4gd2hpY2gNCj4gPiBmb3Jj
ZWQgbnZtdXBkYXRlIHRvIGlnbm9yZSBFQUdBSU4gZXJyb3IgYW5kIHJldHJ5IHRoZSBzYW1lIG9w
ZXJhdGlvbg0KPiB1bnRpbCB0aW1lb3V0Lg0KPiA+IFRoYXQncyB3aHkgTlZNIHVwZGF0ZSB0YWtl
cyAyMCsgbWludXRlcyB0byBmaW5pc2ggd2l0aCB0aGUgZmFpbCBpbg0KPiB0aGUgZW5kLg0KPiAN
Cj4gdGhpcyBwYXJhZ3JhcGggdGVsbHMgbW9yZSBhYm91dCBudm11cGRhdGUgdG9vbCBwcm9ibGVt
cyB0aGF0IHRoZQ0KPiBkcml2ZXINCldoYXQgaXMgeW91ciBwcm9wb3NhbCBmb3IgaXQgZXhhY3Rs
eT8NCg0KPiA+DQo+ID4gQWZ0ZXIgY29tbWl0IDIzMGYzZDUzYTU0NyAoImk0MGU6IHJlbW92ZSBp
NDBlX3N0YXR1cyIpLCB3aGljaCBzaG91bGQNCj4gPiBvbmx5IHJlcGxhY2UgRi9XIHNwZWNpZmlj
IGVycm9yIGNvZGVzIHdpdGggTGludXgga2VybmVsIGdlbmVyaWMsDQo+IA0KPiA+IGFsbCBFSU8g
ZXJyb3JzDQo+ID4gc3VkZGVubHkgc3RhcnRlZCB0byBiZSBjb252ZXJ0ZWQgaW50byBFQUdBSU4N
Cj4gDQo+IGFsbCBvciBqdXN0IHRoaXMgb25lIHRoYXQgeW91IGFyZSBmaXhpbmcgaGVyZT8NCkFs
bCBlcnJvciBjb2RlcyBmcm9tIEZXIHdoaWNoIGV4YWN0bHkgSSdtIGZpeGluZyBvZiBjb3Vyc2Uu
DQoNCj4gDQo+ID4gd2hpY2ggbGVhZHMgbnZtdXBkYXRlIHRvIHJldHJ5DQo+ID4gdW50aWwgaXQg
dGltZW91dHMgYW5kIHNvbWV0aW1lcyBmYWlscyBhZnRlciBtb3JlIHRoYW4gMjAgbWludXRlcyBp
bg0KPiA+IHRoZSBtaWRkbGUgb2YgTlZNIHVwZGF0ZSwgc28gTlZNIGJlY29tZXMgY29ycnVwdGVk
Lg0KPiA+DQo+ID4gUmVtb3ZlIHdyb25nIEVJTyB0byBFR0FJTiBjb252ZXJzaW9uIGFuZCBwYXNz
IGFsbCBlcnJvcnMgYXMgaXMuDQo+ID4NCj4gPiBGaXhlczogMjMwZjNkNTNhNTQ3ICgiaTQwZTog
cmVtb3ZlIGk0MGVfc3RhdHVzIikNCj4gDQo+IFRoYXQgaXMgYSBwcm9wZXIgdGFnLCBhbmQgdGhl
IGRlc2NyaXB0aW9uIG1ha2VzIGl0IGNsZWFyIHRoYXQgd2Ugd2FudA0KPiB0aGUgcGF0Y2ggZmlu
YWxseSBhcHBsaWVkLCB0aGFuayB5b3UgZm9yIHRoZSBlZmZvcnRzIHRvIG1ha2UgaXQgd2VsbA0K
PiBkZXNjcmliZWQuDQo+IA0KPiA+IENvLWRldmVsb3BlZC1ieTogS2VsdmluIEthbmcgPGtlbHZp
bi5rYW5nQGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBLZWx2aW4gS2FuZyA8a2Vsdmlu
LmthbmdAaW50ZWwuY29tPg0KPiANCj4gdGhpcyAyIGxpbmUgcmVtb3ZhbCB3YXMgaW5kZWVkIGRl
dmVsb3BlZCBieSB0d28gb2YgeW91Pw0KQXMgd3JpdHRlbiBhYm92ZSwgeWVzIG9mIGNvdXJzZS4N
Cg0KPiA+IFJldmlld2VkLWJ5OiBBcmthZGl1c3ogS3ViYWxld3NraSA8YXJrYWRpdXN6Lmt1YmFs
ZXdza2lAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3Yg
PGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IHYzLT52NCBjb21t
aXQgbWVzc2FnZSB1cGRhdGUNCj4gDQo+IFBsZWFzZSBmaXggdGhlIHN1YmplY3QgbGluZSB0b28s
IGl0J3Mgd2hhdCB3aWxsIGJlIHRoZSBtb3N0IGZyZXF1ZW50bHkNCj4gcmVhZCBwYXJ0IG9mIHlv
dXIgd29yaywgYW5kIHdpdGggc3RheSBpbiBnaXQgZm9yIGRlY2FkZXMuIFlvdSBjb3VsZA0KPiB1
c2U6DQo+IGk0MGU6IGZpeCB3cm9uZyBlcnJvciBjb2RlIHJlcGxhY2VtZW50DQo+IA0KVGhpcyBw
YXRjaCBmaXhlcyB1cmdlbnQvaG90IGlzc3VlIHdpdGggTlZNIHVwZGF0ZSwgd2hpY2ggaXMgc3Rh
dGVkIGluIHRoZQ0KdGl0bGUuIFdyb25nIGVycm9yIGNvbnZlcnNpb24gY29kZSBjb3VsZCBsZWFk
IHRvIGRpZmZlcmVudCBzZXZlcml0eSBpc3N1ZXMuDQpGcm9tIG15IHBvaW50IGl0J3MgYmV0dGVy
IHRvIG1lbnRpb24gaW4gdGhlIHRpdGxlIHRoZSBzZXJpb3VzIHByb2JsZW0gd2hpY2gNCnVzZXJz
IG1lZXQvc2VlLCBhbSBJIHdyb25nPw0KDQo+IGFuZCBhZGQgbGluayBpbiBjaGFuZ2Vsb2cgc2Vj
dGlvbjoNCj4gdjQ6DQo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL25ldGRldi8yMDI0MDYxODEz
MjExMS4zMTkzOTYzLTEtDQo+IGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tL1QvI3UNCj4g
DQo+ID4gdjItPnYzIGNvbW1pdCBtZXNzZWdlIHR5cG9zDQo+ID4gdjEtPnYyIGNvbW1pdCBtZXNz
YWdlIHVwZGF0ZQ0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQw
ZS9pNDBlX2FkbWlucS5oIHwgNCAtLS0tDQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgNCBkZWxldGlv
bnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
NDBlL2k0MGVfYWRtaW5xLmgNCj4gPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUv
aTQwZV9hZG1pbnEuaA0KPiA+IGluZGV4IGVlODZkMmMuLjU1YjViYjggMTAwNjQ0DQo+ID4gLS0t
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2FkbWlucS5oDQo+ID4gKysr
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2FkbWlucS5oDQo+ID4gQEAg
LTEwOSwxMCArMTA5LDYgQEAgc3RhdGljIGlubGluZSBpbnQgaTQwZV9hcV9yY190b19wb3NpeChp
bnQNCj4gYXFfcmV0LCBpbnQgYXFfcmMpDQo+ID4gICAJCS1FRkJJRywgICAgICAvKiBJNDBFX0FR
X1JDX0VGQklHICovDQo+ID4gICAJfTsNCj4gPg0KPiA+IC0JLyogYXFfcmMgaXMgaW52YWxpZCBp
ZiBBUSB0aW1lZCBvdXQgKi8NCj4gPiAtCWlmIChhcV9yZXQgPT0gLUVJTykNCj4gPiAtCQlyZXR1
cm4gLUVBR0FJTjsNCj4gPiAtDQo+ID4gICAJaWYgKCEoKHUzMilhcV9yYyA8IChzaXplb2YoYXFf
dG9fcG9zaXgpIC8NCj4gc2l6ZW9mKChhcV90b19wb3NpeClbMF0pKSkpDQo+ID4gICAJCXJldHVy
biAtRVJBTkdFOw0KPiA+DQoNCg==
