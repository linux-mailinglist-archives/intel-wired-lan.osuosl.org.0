Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C8CE2BACB96
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Sep 2025 13:42:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8B20681E19;
	Tue, 30 Sep 2025 11:42:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k6YCowKg7pGc; Tue, 30 Sep 2025 11:42:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B228981E44
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759232556;
	bh=P8oTO/GAEcLoi/LZ5H717NGJGGK/xbfXoSMpFYOjC7w=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nVwgtXA1s12e+5ujt3dSdDp/YSPYo1wO+qEa1hZ6qgSPHUrCZo7A4ceGDKkYQnmQg
	 bVLEHCjznatdo/2/szwWVnqvYyYWHScyWfrTq3D6k0Hal/llZXNk2WmB8lWNo3dgfK
	 nXgPeW3h4SnSmqFND7KWo9Tbz4D7wwSVT2LVRC+1G4JZ8Sk432AMJADz+QWN/yhERU
	 Ztodk6Y76Y8H27KVPQ0+ixSczbBIJF8zRKXyRch5vrhvx3tExuyrH9mKapKBZDDDU1
	 hZ9Rk6zKP5YFfiY7E/xK1nthVF//QFGOiEM4u4oMq5IrpbLdxYh0PEv2jp0827L+xP
	 Os4+faWaloJbQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B228981E44;
	Tue, 30 Sep 2025 11:42:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E904ACF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Sep 2025 11:42:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DA54D81E44
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Sep 2025 11:42:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JU6kTFaqis2v for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Sep 2025 11:42:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=avrahamx.koren@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E936F81E42
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E936F81E42
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E936F81E42
 for <intel-wired-lan@osuosl.org>; Tue, 30 Sep 2025 11:42:33 +0000 (UTC)
X-CSE-ConnectionGUID: jLigtS4HSLOOln0fwlHRwA==
X-CSE-MsgGUID: 9MIB1hbrSx6X/nI+t9piGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11568"; a="61198139"
X-IronPort-AV: E=Sophos;i="6.18,304,1751266800"; d="scan'208";a="61198139"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2025 04:42:33 -0700
X-CSE-ConnectionGUID: P+14/VFUQY6+0GGem6ocQQ==
X-CSE-MsgGUID: ympwtD/nT9iL3WUM5zvLXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,304,1751266800"; d="scan'208";a="178885256"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2025 04:42:33 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 30 Sep 2025 04:42:32 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 30 Sep 2025 04:42:32 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.12) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 30 Sep 2025 04:42:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GxJpfW1e4FuH0vXDo1Ur3qx6IcoMY9J2sNt+ylx65cdm8ESHE/2jZcbW54X/vsZ72zL1027Dq9C1wtMs0jgNGkgDmzLhhWMD6/QjSEVVDRocHfP7CypJ3pzClKTtS+7RN22OJNaGd5bf3qbnn0lCXdZtRc+Z/Prrd3n/2kZZHomA46X04bFTE+gs8RS6+lr7wONs+zX84QTFXPdIx1ju/ENbnruB7R8/v4F2PfE+rzW9okTipBej54a12OTus7lCj3UiHvtSwyJyTUSUJyAxHe4ZV7omHIX/KUh6ufHLABalCnlrjKwUzmwxeCUQbkFV5OrPbDRhI4sqMAvQl+1BOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P8oTO/GAEcLoi/LZ5H717NGJGGK/xbfXoSMpFYOjC7w=;
 b=NHbxXWMrDpaoErCfJxeIlKHQ4I2pvE7BCyRv6C7BXsYk6L7OyHbOLWTmUf7hueuO9qhI2CxbioeAYzBqQ7tPW9SVO7UtQlm2uR2sF894IsH4O4sOf2TSSFPNwxue8rOTh7anyGM7Pymv5s3tmuZjWUyHpxwDlCyZ0bjq4c5s7aR0mIJOIDgGvhENn6yegA55SNzfqTFnrATxK6Vv8JbAyJWi172eOZrXeqzBl8Tmy9t2Gc/G22YZgR4oVvs/nbzawkBNK8rhVHYHNL93Nl95jjcX5zwjZ8ZuQeYF9H+THEIy1Vqqse7K1tGd0dBQL93pk9ELAwVqfvxBk5kn7ItiQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6383.namprd11.prod.outlook.com (2603:10b6:8:bf::11) by
 MW5PR11MB5857.namprd11.prod.outlook.com (2603:10b6:303:19d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.9; Tue, 30 Sep
 2025 11:42:28 +0000
Received: from DM4PR11MB6383.namprd11.prod.outlook.com
 ([fe80::bc1e:1ee7:102a:9b4]) by DM4PR11MB6383.namprd11.prod.outlook.com
 ([fe80::bc1e:1ee7:102a:9b4%4]) with mapi id 15.20.9160.015; Tue, 30 Sep 2025
 11:42:28 +0000
Message-ID: <6f9cd8a1-cbbd-4a64-aa49-3b1456e71917@intel.com>
Date: Tue, 30 Sep 2025 14:42:23 +0300
User-Agent: Mozilla Thunderbird
To: Timo Teras <timo.teras@iki.fi>, "Lifshits, Vitaly"
 <vitaly.lifshits@intel.com>
CC: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 "marmarek@invisiblethingslab.com" <marmarek@invisiblethingslab.com>
References: <20250928080040.6309-1-vitaly.lifshits@intel.com>
 <20250929100943.13b717fc@onyx.my.domain>
Content-Language: en-US
From: "Koren, AvrahamX" <Avrahamx.koren@intel.com>
In-Reply-To: <20250929100943.13b717fc@onyx.my.domain>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TLZP290CA0010.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:9::9)
 To DM4PR11MB6383.namprd11.prod.outlook.com
 (2603:10b6:8:bf::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6383:EE_|MW5PR11MB5857:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d33b920-ac4f-448a-2cd2-08de00166ea0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V1JKZFcvNGx4L2I1MWFHWmU2Sk9jeG95Qi9udFF5b1UwVldQeDJhbGFhcmd5?=
 =?utf-8?B?b21TbWllZThMRjRibWdJb2ZIaUhOSDAreWY1VG9YYlpXYW5nd2loNWQwTDRp?=
 =?utf-8?B?dXlpeXRxU1ZNSlpLM1FHd3JKR0xsWEd3NjNDNTh6V2FvNzNPU29aWnhQdS9L?=
 =?utf-8?B?VFgyMkRUZ3lhang4ZitBdWhSUkhGZVRtUVJCVWNOcmZjQ2dtcTVoQUVCSlMv?=
 =?utf-8?B?UTNlTG83enU1MkZ2WEF2YUw3SXRxSXNDUlNFNGJSelRyNlVDS1lEMHhpajhJ?=
 =?utf-8?B?U1h2Y040eEJUU3grbys5ZzBkMzAyMXdYU3V4ajBocElzT3I3QTVrWGR4RFQr?=
 =?utf-8?B?Yk5kTlZJNkZDWkJMN0lRaktnV0owWkVtN0hJQkhsU093NWRiUTZzWG16NENC?=
 =?utf-8?B?OGthOTVKWWszYTcxbzlGdHVnMEtxUFZsdStqV2M0cnVCaGdSUFFVVCtJUi95?=
 =?utf-8?B?TDhKWDRzeDdIYzVYOWM2YlJqdEQ1MXFhRFB3NTNpTXEzZlNtT2RNakFtMlR1?=
 =?utf-8?B?QjE1dzlWd2xaUlB2UVFEQnRGTjd2ekN5WTRIRU9BWEhQSWF4S3BJU1R5VFRD?=
 =?utf-8?B?cVhpVUYwRXRpbG9BU2tZWnBHbk5QOEhFQkpwMmg5Q3VtZ2FZYUUvaS84SVFS?=
 =?utf-8?B?V3lKZTA1SllFdXp2S2F4MHpnMFpiRmRzbGFYSlVPMEtIbkM2ZkZzVzYvWGZK?=
 =?utf-8?B?bFFOU04yQjk1eUEvTVJMU1dSZTdNUUh4YVY2T0p3OW1XenFPVzZaL2tJQ04r?=
 =?utf-8?B?c1kySFdqUEhjanRkMXRnbG9rZkhJWkRxMjJTSmFNd1ZBU3RrbzA3ck1ra0VT?=
 =?utf-8?B?U28xMXNmT2ZGOU1Cc2JZUTlpMmxWN2lJU1hVQ3ZBQkxUWmRKNHppdmhoa3Ur?=
 =?utf-8?B?M21VMDBKYXVCRW9qUEZsZ0ZXaUN0L2pJZWU2TVRMMXJUNEhmRzhhcElkN1Zt?=
 =?utf-8?B?U0g3VTJLQXF4cDhHNDdrUmRpZVE2c2VxL0Yyb2ZEd1M2LzZzRWl4RlFUa0RB?=
 =?utf-8?B?WW1YL3pBVkZ1bDNldVBxd0pSaEFGS0ZyOGJ4OHZtbjZDUEsrU1BjajhzWGJj?=
 =?utf-8?B?dVlXS0JRdnA3MUN4WTN6Q09wSnZicTNXY3NpSXp5VVBSRURBR291Q3Q2V3A5?=
 =?utf-8?B?THg2V29TMzN2TEMrNkVhSjhkTnFlUlp5V1l2SHlqaUFPZEtwYlVVVVJxQWFs?=
 =?utf-8?B?bWxyK29rb2xoZUExSkJFZjJCTXJ0UmZ0bDV1YndOQ2taR2xlZUJuZ3EyaG9Y?=
 =?utf-8?B?ZUlxZHBUWm9GRXRYK05nTW8xWG1rdEZtdUE4Znd6eXpCdWVUck1wV2tacUNu?=
 =?utf-8?B?K24xdVF5dWkwZytsQ3RVR0hVODJPRm8rTXhnRHhOQ25zeWtPVU5BWDlJejR4?=
 =?utf-8?B?aVh5TFptOUhQeW5pSnNvc0ZIRDFPeW15S2lRYmlxeGVlMzNaUDM4Q1Y2U0ti?=
 =?utf-8?B?MFRXbUNjTkZRM1NKNTZhTXQxRElxQldnRmc5M242K2pSSDIrMU95Yk9uZnJh?=
 =?utf-8?B?NjV2R01yc21aR25QbGtZR0ZabGJtUFV6VnVMYUM0VGpNWndtRTQwaWFvaDJm?=
 =?utf-8?B?MHRyNFJLbzRyNTFwK2ljL1NaSGt1R0dVUFpBanNJL2hENE9xamdwSEloanZz?=
 =?utf-8?B?YS9SSXJwU2FtNHU4b1FWYncydmlTa1MwaGk0a3FHTnlwVXBreDFYemc5VHVy?=
 =?utf-8?B?STNFVmNObmMrd000Y0REY1BYQVpwWFZSUGRpemlvbWhSZFpFYVB3QmJIMkJm?=
 =?utf-8?B?dzk3RmIxMHZEdExCM29wUkFxQVU2Wm1ZOFR1SkZUNUxPRDZURnNtOW05NTRo?=
 =?utf-8?B?VXA3aEhFSFNBV05uREgxVE1WUDkxdE5oaEtpa01XWCtTd3JaQmhIcFlpV0lO?=
 =?utf-8?B?NDdKRWRuK1YrVDQ0S3duMjdYdFZORmtTc0dnY2dEWnlONzVQcE4wdGxZWUR6?=
 =?utf-8?Q?qbhAFz7ERig=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6383.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L0h2SjYrblQ0cG1lM1JodEtUbDNzVVpPa0JLWTM1UHBXOXFSdml6cXBSRnU1?=
 =?utf-8?B?R0lkRTB5R2hEQUlDTVdITzdlSXRqSENVV0g2cmlwQXUyck1LOGhoOEJnNDF3?=
 =?utf-8?B?a01SWWVRQ2pTSFlWZGNvUHE1bjV4Q1NBdGE2dHE2U1JIUGJxbTFXQ3phNkUv?=
 =?utf-8?B?UlRTempnNDBwZjJCQjFDU0MxbXBvK2dERkZ6Y0YyVEhLNGR6VTJrSUQ0bnNC?=
 =?utf-8?B?b29Qc0YzRWlTUEcwUGdramw4dW9WYllaODBaclRrR2o1SkIyT2ZXT1V0VGJ6?=
 =?utf-8?B?VEZRaDYxWG1Qb1lvbmFaeFRqUUNKbmIyd05kRU5yY3NwS1BMTVpWN3RzdnVm?=
 =?utf-8?B?MnJ3ZlNPY3BicTEySkdyZi8zRHJNdXk1RXZjVWxJZDBWWjZmSHdxM25CVTBn?=
 =?utf-8?B?SFJUKzV6bkpvK2lsUTVBZFBVdUFkYlBvOEtpd0hBNHptcnlmUStiT2c3NHpz?=
 =?utf-8?B?SlVjam8rdk02WThGd3M2VFJVWTI3dis3RlBRZXNHeC8xTkxXQzllcWtPVDZ1?=
 =?utf-8?B?SStESTFveWFJRzhIT3BSc2llZGZFOUlXRzFjVm8yRlczcTFIMkFmVUJvVW1R?=
 =?utf-8?B?NWlsNjVBZDNnN3N5WG5mVHFMRENhK2pwWXdDdFhnTStXRWF6Z0hiS3FJL2Nn?=
 =?utf-8?B?WDJmc1hCVFVvMjc0azhlYXFjeWgzVmhncWVLSWdvakFkNmJkYURlQ3NhZXBM?=
 =?utf-8?B?dktsR0VZb2h1NUN1d084QVpNdXF0M2JwN2V1WFVVOEVxRHlhRlF0RjdkK2tH?=
 =?utf-8?B?VkcvU3dvZ0xnMWllNDVaL1h5cFE2enZCb01LbnRUUmtqaE5KS2orTE1mampJ?=
 =?utf-8?B?OGExdVNvL2loY2ZwNHp3R2x2NXZNM2hROEJySWJsNG9nQnFGb3F2azlnYys4?=
 =?utf-8?B?K1kzMUNkR1FTZ2x4dlVkTHRDUXd1YlRtRlFsdDhEK0VUaVczYkNDY2wvQ3Ni?=
 =?utf-8?B?OW5CVk5Tc25VbTNJbVlPcFFqOEtsaVNuQksvV2lhck1NQzB6Mm9NTEg3Nm96?=
 =?utf-8?B?SWc5Ukdtc0pDL2g4KzVMRnFzdTBjU2V0VVREOEtpRWFFOE04eTllS1lFdG9O?=
 =?utf-8?B?cC9hWm1oSDVvSHJrcnBsZFBpUGEwWkZXK2dGR0lpSTBrU1I4dTRJQ1R0RS9W?=
 =?utf-8?B?Y09HcEV5aVlrNzhLS1BEZmh1M2JPM1lDWk1rY1MrZnJuUjkvUUViTW8rSnAz?=
 =?utf-8?B?YjZRaVBrSUgwYXZNdFhEZm0vYm9HbVowNWFqTVk2dlhqZlVBVStKUXN0bnJk?=
 =?utf-8?B?NEtOVWF2MjMxenhzVWlSZm5aUG0zSnpQMnBFSVVrdzhiUmtEemhnUkVuekly?=
 =?utf-8?B?U1NsWVh4UU0xWENEeEtRYkRVTmxlRjFMRWFGdEdsVFM1akVQWTZ4MzYvSkFX?=
 =?utf-8?B?RVBMY0JudDZWTHppMGJFR0pJK0t1SEJJMDgvVENISjJTclgxYXQ4MVg5RTRB?=
 =?utf-8?B?aGJTbmpJU0cxaE5vV3UzRWtaUDBUZkpnYTZWNSsveThOQzNVZVJhd1pDZWFD?=
 =?utf-8?B?V29zOFR2SEZYSlJVYUxsQmlpbyt6VUh6d1Y1amJlbEJ2VC8rblZQRU83U1lE?=
 =?utf-8?B?ZjRFVjY1eDV0M0dZaDl5bXBrK2V6dVFDOW5FWnNHdGpRRytvS0ZPSWdyaktJ?=
 =?utf-8?B?NWRyOUVSNHpHU0hJeFVoU3JLSXEzZkNhQjFKK0FSSjdMd3VuSTQwbnlqV2Jj?=
 =?utf-8?B?bmFFV0hrNG1RWnBjMjFvSGxxa25zMm5lS1RrVGQrVDEwZFY5S3VHT3U5RVUz?=
 =?utf-8?B?UWhRY2JKWlpLV2FBbTRrT1VZbExxYXUzV0dJNXg4ZEZCd0I1bk01aElYUVBG?=
 =?utf-8?B?Q2dnSFRNVnJkdzBhZjZkM01hZjU4TThoaUIxVDUxdXZaT1MwbkJsZXJ4UlZN?=
 =?utf-8?B?Lzk2bHRpRjZaL0tjZWJrZktWSWJDVkVqbnl1eUVVNEdNRkhmemVnN0Z3dzhB?=
 =?utf-8?B?NXZya1Z6bXhRaWFhSktrRDFJQ3NxYjY4U1ZhRDkyTkNoKytnN0c5WDJZTU9Q?=
 =?utf-8?B?VExrekYvNG5YYU1sVDJ6dkYrS0RPcEFBVW1scVU0OUEyb3kxSU1PbGxYdjBN?=
 =?utf-8?B?aUdORlJDbmxyZGx0TXhuQjJUalpIY21PMVNIeHEvNTNyVVZHd1p1b2hZRTlm?=
 =?utf-8?B?Nm9BOFhFcGFyOTBnbmY1dGVyQU0vSlZzNWlER3RKcGtaVkJxOTB6TTdJcXZB?=
 =?utf-8?B?YkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d33b920-ac4f-448a-2cd2-08de00166ea0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6383.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2025 11:42:28.2218 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7kH59X0n20iwLhRILh1XSbJfhPQBoXaqd4yxWXQVflmRAdD+QzSWN54+i7BCaA+RFD4/t/65Ap4xRlmJ25meh3uyI2e0BvsebAkPhTJFyxc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5857
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759232554; x=1790768554;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gfIDPh4+JmtSB3mEH5sMGonjrbpJVddFlQqwFM2zw4I=;
 b=UJ9QXt8Zdds78LV9w0LjZTVi9+0FpyMR/y+3KC4KpPO/Qf2FCkXO/Pom
 yvlYyIxiRm9UFol0PvEgCl7fKBxlvrRDuscb1vsLhTDCKdiulii24My2h
 hZcrnRoK7K+9glPAIA/IJaAyHpsCBMXcEEdEacGRR54tqpRMQq2aO0fud
 vz7qeJQMx8q8l14P/dMxXXrctE5hQvknxQLzu4r7PO1lwXFVJOzWzxd8W
 MehIRvxKzRxo7DAreS8aWRrAPYhbu8OLfgTiimcPLYupnd314PxpY/e1F
 mSU2CBJN5qUQfbWzI7VleDdgXlXTjwHBF0gGj+aJWXskJwWKXtJ/CnG4B
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UJ9QXt8Z
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/1] e1000e: Introduce
 private flag to disable K1
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



On 9/29/2025 10:09 AM, Timo Teras wrote:
> On Sun, 28 Sep 2025 11:00:40 +0300
> Vitaly Lifshits <vitaly.lifshits@intel.com> wrote:
> 
>> The K1 state reduces power consumption on ICH family network controllers
>> during idle periods, similarly to L1 state on PCI Express NICs. Therefore,
>> it is recommended and enabled by default.
>> However, on some systems it has been observed to have adverse side
>> effects, such as packet loss. It has been established through debug that
>> the problem may be due to firmware misconfiguration of specific systems,
>> interoperability with certain link partners, or marginal electrical
>> conditions of specific units.
>>
>> These problems typically cannot be fixed in the field, and generic
>> workarounds to resolve the side effects on all systems, while keeping K1
>> enabled, were found infeasible.
>> Therefore, add the option for users to globally disable K1 idle state on
>> the adapter.
>>
>> Additionally, disable K1 by default for MTL and later platforms, due to
>> issues reported with the current configuration.
>>
>> Link: https://lore.kernel.org/intel-wired-lan/CAMqyJG3LVqfgqMcTxeaPur_Jq0oQH7GgdxRuVtRX_6TTH2mX5Q@mail.gmail.com/
>> Link: https://lore.kernel.org/intel-wired-lan/20250626153544.1853d106@onyx.my.domain/
>> Link: https://lore.kernel.org/intel-wired-lan/Z_z9EjcKtwHCQcZR@mail-itl/
>> Link: https://github.com/QubesOS/qubes-issues/issues/9896
>> Link: https://bugs.launchpad.net/ubuntu/+source/linux/+bug/2115393
>>
>> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>> ---
>> v4: Revert changing the reconfiguring function from static
>> v3: Removed disabling K1 in watchdog_task and change the private flag setting
>> v2: Add a missing semaphore acquiring and disable K1 on MTL by default
>> ---
>> ...
> 
> Reviewed-by: Timo Teräs <timo.teras@iki.fi>
> Tested-by: Timo Teräs <timo.teras@iki.fi>

Tested-by: Avraham Koren <Avrahamx.koren@intel.com>
