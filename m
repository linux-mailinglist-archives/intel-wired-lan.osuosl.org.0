Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8C1A094CF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jan 2025 16:17:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6BCC260BE1;
	Fri, 10 Jan 2025 15:17:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U3nmls0TF9VB; Fri, 10 Jan 2025 15:17:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C19956067A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736522229;
	bh=0oInpFHV7GeUW45OpWd8+liQwCLS9VOEWPNG2T7/3K4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Z8xO4mENKyzbuZ76AzzOlyDiUU4MnxddLQH5QlUf5syoqnpJczDy739GNl5lBqan9
	 K779gQ7hnuoygqEPAuz+DGivAkOu3Agn8bk5tJSrfEPlpER2Xw8hszwn+lC8xLIbZM
	 wT/W7IBC2uGke8Swd/1zZpWqs8v0sfyiWurRCPJfmImgfUW0HsYWf3zJLOYVroqel9
	 YOSdKhs9iX+OF551VxG/2jYpIIHAlqZrwYyHeJjKvByyXw5qIVl3bhXp2JpmlNwmEw
	 HqZyHflNcnG6NM4Ve+Bu9xSE4NBdSlOLwAujRbPaiKXngzwEwtKgjnf2vdjYYCxk54
	 Dvxjs3X769WHA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C19956067A;
	Fri, 10 Jan 2025 15:17:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 071C476C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 15:17:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E7D7560B99
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 15:17:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4Wa2R9114USF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jan 2025 15:17:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EFF8E6067A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EFF8E6067A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EFF8E6067A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 15:17:05 +0000 (UTC)
X-CSE-ConnectionGUID: qyJZMd1aSTW0vRv8boTV2Q==
X-CSE-MsgGUID: cpI7cKhpRGC6kWv7Zx87rA==
X-IronPort-AV: E=McAfee;i="6700,10204,11311"; a="47313554"
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="47313554"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2025 07:17:05 -0800
X-CSE-ConnectionGUID: vR5W5c92T4qlKaJrvxPLuA==
X-CSE-MsgGUID: V4TriQZbROuSEO8djMzT5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108396038"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jan 2025 07:17:01 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 10 Jan 2025 07:16:41 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 10 Jan 2025 07:16:41 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 10 Jan 2025 07:16:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mWVQv/Kdb3E1Jd0kDMsAak29M8/xfqwvPHLQYU8vimRppYjPsnJwFYlCiMc5a5f9OwEJuwSI7U94ifcrM4khE/XwVpynsTMtFEd3JBCUAKSVVj9LgET0osDoMjWHxqYJsBjR+SprP85B6QaEg1kC/SdcWawJuHEaamlkIefa8xlgELlSREb9nth2dFrwGMtCRBl9KmuxNvE+y87IETfeM1nRmNJv5f9lni4Cp8+3lr7KPJL+2Dod3RVAKsmk/pQJnkZl63aD8Lwxssapoj1KTILAGxp6yVuCf5wh+SNfFPlKyQBL2hXv95j/WRYw1d0geODPQqOkrsawFKzrrh0RxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0oInpFHV7GeUW45OpWd8+liQwCLS9VOEWPNG2T7/3K4=;
 b=uUsWfdY48kji0kTcZcwc/70JE28c/eFl9CrcGtw46laDvPPgY9lavubcaOPSZMyaHy8wqgKeLQuCx+EqaU09O2H+irXEUBdrO5U2eFh/4agyjxJe7sDmyWkPESXIgZlm/UZfGySQZcAZrcAVJzFCjTe1BLxb6BgnlGtbwFy9RIi/2K3ACVv+ZU6quIFZAONkjKjhXxtnr/Obspikh0YT2BMik8q0PBCQhRM2UoQhY8bf6QXClo5V5eNHXtnw7rbqmaCmNr+cOxpoff4tZw+QTOr24Iq+uH6eyLuTRqkv3vXGIh+sgv9KjoyJxpVt891x8Xm92KSgB1K+uYcmgVA09Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by PH7PR11MB7027.namprd11.prod.outlook.com (2603:10b6:510:20a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.10; Fri, 10 Jan
 2025 15:16:37 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%7]) with mapi id 15.20.8335.011; Fri, 10 Jan 2025
 15:16:36 +0000
Message-ID: <2ccd9a5a-7b3a-4234-8d61-64cee4c1fb28@intel.com>
Date: Fri, 10 Jan 2025 08:16:26 -0700
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
CC: <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <andrew+netdev@lunn.ch>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <davem@davemloft.net>, <michael.chan@broadcom.com>,
 <tariqt@nvidia.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, <jdamato@fastly.com>, <shayd@nvidia.com>,
 <akpm@linux-foundation.org>, <shayagr@amazon.com>,
 <kalesh-anakkur.purayil@broadcom.com>
References: <20250109233107.17519-1-ahmed.zaki@intel.com>
 <20250109233107.17519-3-ahmed.zaki@intel.com>
 <20250110115548.GB7706@kernel.org>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20250110115548.GB7706@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P220CA0009.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::14) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|PH7PR11MB7027:EE_
X-MS-Office365-Filtering-Correlation-Id: ff98212a-aae5-4d47-b016-08dd3189c672
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TmZFT0pmNFhjTG4wSWJxRVVJSXJQLzZKaldUM0hpUlFlVmowSTZoVkZPeDFQ?=
 =?utf-8?B?cVJCakNNM21qL2lNdU1TYWxzbmMvcDNMbjlyMmFXcjEvVExKYTRZMTBVczBW?=
 =?utf-8?B?L2QrdU4rejhISXU4QUF5V0FQbXRZRHdJUGFuL1Z4V3Zjdkx1amNOL0c1N3RJ?=
 =?utf-8?B?NTRnSEJOenhCcjgwNHNzYy9hSVFyUy9pZTZlYkRnc29Od05BbVQxaHlpUi84?=
 =?utf-8?B?WWtCZkVPa2ZwTDcxOGI2dU5FSGdZTHR3SFVjMnZGR2ZFZjN2ajd1dGpCckxs?=
 =?utf-8?B?ZkVWVEN4THZONW54bGVMclhJRUlZVnZaQkFPYWxHVzJZUFVEdWFBWUd2aHlT?=
 =?utf-8?B?S3dxUzU0blArY1JrUFBsWmVRUWJpQjNaaEYyeUw3N2t3Q3RjRHlvSTQ4RVB5?=
 =?utf-8?B?anVGMzJlVU1SVkNzL1pJVUhjdkF2RjVzMk5BNEwvRlFScmhwYUFHbFpPa1I4?=
 =?utf-8?B?bDJodWM5aVRxTi9LTHVTTU9mV0t5VUNQa3VYL3RaN2pWUmZxSFJkZGZjRVYr?=
 =?utf-8?B?Njd3c05rbTJlMzIzdVQ1ekw3Vml2WU4rY0llWlRmQTdGL2tta0FJSS9ob1lH?=
 =?utf-8?B?Q3NoSzZDa1FEWFIzZ2tpLzV6UFRTZlJBV2pBQVdQOVNRRjNiTnVmanVYMm1v?=
 =?utf-8?B?cGlDSlJRRmFXeUJNVDlwU0JwSERmZHpEanM5aGtTQ3NWKzc4U0YzcEdSdngy?=
 =?utf-8?B?bHQ0S3FaQ21lMG9VOHZrSlNKR1RnVFNETWQrSElJaGpQTGFjQmY4T29PNkVv?=
 =?utf-8?B?dEQ4KzdVYXN0UC9MeXRLZTcxUE8yeHg5ZXVyRU1GWFk1Y1Z3elBjMDlFZUNX?=
 =?utf-8?B?Vy9ETVRaM3R2clRPVjRkWkVNa041MEJPT1RCY0Q1NGRuQ1Q2ek5qWlNpUjY5?=
 =?utf-8?B?WXNwc0loVUNFZWorNjVBV2x5UnRrMlFQMnI4dnYvMGxCR1pTelV3YTAwdjhQ?=
 =?utf-8?B?ekppT1V2M243RWxRMVN0L3JhRG5zSWJzYkw0QjM2bTRCNVVQaGVhZjFnQ1Q5?=
 =?utf-8?B?ZHovU1h6TzJDQTQyek5rRmNBRGJWMXhSSjlKVnZmS1pFc0NpUTZJMFNJckxX?=
 =?utf-8?B?TVphZWl4QzRwY3ZhcktuMGNYRjg5b2NjbFFUbERZM25DdTRDQXNuekllRDFo?=
 =?utf-8?B?WDhXVzlzdmJmRlpDUG1oOUV2dUxhSThhUEVDeDZ6VENqNkI3UmRqeFBYdTNQ?=
 =?utf-8?B?L3hpSjVCMG1kQVdETzJ1Z0xDOGlXRXFOVS9KWS9saWU1UzZpc1BBKzNmUEx3?=
 =?utf-8?B?R3IzTGpJOHZsUlk0QUtFY2xxNWxUQUMrUFNyVkdnamw4ZHByenFXdVdjN0xU?=
 =?utf-8?B?TFlvQWpVVXgzcXNuM2taK01DVnQ5ejg5VXBQVU1zK2x4dm1BZFhza0lRRVpI?=
 =?utf-8?B?SWovcTdmbUM1UEQ4UGlicjhQUG5Xdi9BS3hnU0xmcXV2c2VqMEMvM1lDQlBu?=
 =?utf-8?B?bFFMRTVYT0xNZTlYVU1RTldrMFBPdTkwQnFEOHlWY2hvVlgxUWRqWXoxb1Zn?=
 =?utf-8?B?WVZCZ0JwM3RhaVlxRTg2U1NGR2VmNGJiaUh3Vk1RamZOOEcrTXRqU0FKcXBt?=
 =?utf-8?B?U0tNd2d2ajQxeFA4K3RFVkdPR3RUc0dMdnE1dFRWd1g5ZWZwYmVQR0RFcjhM?=
 =?utf-8?B?Y3BwVnY0SUZTTzBVb0JodWt4T29KaGF2TmJINmVHMFpOMXE0eit2WFVkdFJZ?=
 =?utf-8?B?aThRRng1L3FXYjNZZmEwT1V6Q29oWHhxcTM0Y2ZDcmxrK1dlK2J4RTZWNjVR?=
 =?utf-8?B?WkYrK0hhTk82aGR0THNxVmoxLzEyaTMrNWFMc3VPUVFGa1lMMWkvTTBtUzJN?=
 =?utf-8?B?TEpuTWRRKy9jMXhRUHE1ekNOU2lFQndLTG9TZkNUbERhRlVyRUVLV0M5ejlt?=
 =?utf-8?Q?6FKNn7qZ7kFA4?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bmFuU3lYRng1OThzWjE1TlNUYTJISmJ5TFZXbWhZTzBabGtXaEsxYmxRMzhN?=
 =?utf-8?B?c3VuVzI4aXVVbTFDY0lRZFJOQVhrcnRKZjFVR25GUTFNQWdmNkxaOE9jWWg2?=
 =?utf-8?B?WWV2MDR4Z0tMUXp3WUV3OHpVZkZqeVhHSVkrNldTVjB2Q0xJWkRYeit0cWFW?=
 =?utf-8?B?QmFUdEoxbTFWTnB6TTBOZmVJNENSUE0vS3V4aFVLSDlvSUF6d09FS0RIaUhC?=
 =?utf-8?B?cHJaaGdZcWZmVXdNQ0tTcVVzd0xYTjJXWUNNZTN6dVJaQ2taTkFEWTV0d0lT?=
 =?utf-8?B?L3RzM21KM24zNmRLbi9NTUwrdnd5NFBYVy9WRHNnUlN5RHRTNktBL3N1YjE2?=
 =?utf-8?B?aFVZZlh0bGtsRnk2NUQyYU16bW5FQjVKRWk2Qkwwb2VYcUVMdWxvV3BNQmNl?=
 =?utf-8?B?N2toZWxoQnhqelNnWDBMUnFFNWJ4RHhRbzM0RjRjR0doWERodTNjT21yT29h?=
 =?utf-8?B?bVlyVXgrdUpaU2Nxejh2UVFHM001NDRJaGpIUFNXWi9ZRWxGQnNHemUrZ0tD?=
 =?utf-8?B?WXpUQ3pPTEtBRVg1eitmaXZyZWJYaFpNc2svRmRLcmhoZ3NDOEl3WEp2dWhR?=
 =?utf-8?B?UVIrc2pxay9IWmdUeVRQeXlvK25TRm5hTGVDcFVWTnBzcHVTOS9SVGxtYmpn?=
 =?utf-8?B?MVppMVJkdGZTNWVoUTdNMjhkTFJmR1BWYVU1enBXUlN1RGpUdjR4QUZhMXNy?=
 =?utf-8?B?RXlSdUl4NkxPOGc2Qmk4cFZ1dDByMkk2OC9UbGg2VS9MMGpLeUl4MWJZaDdP?=
 =?utf-8?B?WUJtUFhPVzMzc0dhS2dZMWwxcEtSUGNERU5TRzBMYVNjYVEyVm5YZW5GcTFH?=
 =?utf-8?B?ZVFLS2RHY0c0TW1sZUZnT3BQNFhnRktERUU0bXdNNjI3UmpjSTg0Qm1KK290?=
 =?utf-8?B?NW9RWnd4c2pxZVNkb2I4SHA1Y1ljNEVHalUwa3JpeFJWWTNrejdlMmhxOFBB?=
 =?utf-8?B?NmVRWVpud0F6K1h6aGtqZHlsem9ZblRUVTM3dm5kSi9UR0I3RURhY1pJbmZt?=
 =?utf-8?B?amNZVEIrNUhwRzZ6UTlkSG5XZTBMN2x6WTdaM0lJcEE5UXRjWW1zTFI0R213?=
 =?utf-8?B?eHZYVHFXRzkxdm9zQk1hb3hsd1BwMEI0SUZ2S2sySXdDQ2k1KzVkZ3pWRE9H?=
 =?utf-8?B?YnRYRFMwWHlRMnA0WWIwTkhIWkU0eVlMZG5aM0xSQ00vb05IY3g3ejV2STEv?=
 =?utf-8?B?djNuQm9mdW9tcU02WGo2WCtCaTBPMWx3cU5icWNrOVE5MFpySko5UXYwN00r?=
 =?utf-8?B?MHVickdQSWcrZnZRMkRQT1ZUN0tYSjFRL0o5RkFNaGRiR2VPcFRadFd0TzJq?=
 =?utf-8?B?UEtkTG10MEtqb09SVFNmZFp2QUZ3dDAyNHd6Y0hkSEI5cEttMFBXRUZyT2Fu?=
 =?utf-8?B?d0Q5bmJQazQ3enJIQ245dzdxUmlieWZHN3ZxNWYrQTFKVldnL2s2MHkxRkgv?=
 =?utf-8?B?a0tqeVBzM0p2emRTaVRVcklXaUxHM25DVXJkU0FWRENVbXhFSzRRMUJhT2hX?=
 =?utf-8?B?NWFVNFFibWgxaUkxSDl1ZEMvaUlodXJhNUl3THNyR3kwdXFuNm5GSnJFSith?=
 =?utf-8?B?NkxydWZEQW5ZSzRnUHhGK3ZYUWtidFUrd0huTE9oMFdTdGt0dTlKdjhHOU0x?=
 =?utf-8?B?dy9FcXhJNG5BZzQ0UTBNRVdCNDluV1cyTTJDOGd2emV1Ris2cHVYOGFNcXFJ?=
 =?utf-8?B?Qm9WWmcyYmd6aVZ4OEZqazRjdkxnRUc3ZXlrK2V0MGxuUXpLMlFIRDhmajlY?=
 =?utf-8?B?N1NUTFN4cGdMZjRXMFoxOXB4b3BNTW02OTRLMDhLR2hxSDduU29veFIvWWpR?=
 =?utf-8?B?WnRIUm1ITEdPOXpxeUdHVFlMSTJDTlZoalBlZzlPU0FoSE8za1c4QnBFRHkv?=
 =?utf-8?B?N2J4M3NKTFF5eHZFS3A2YXpGTnJvaWdXL2pNT3dqRFlTeFI1Ym1YRjc2aXdl?=
 =?utf-8?B?QkZZT09obDh5d0tmS3Vvc3VWK25xaDY0dEN6Z1EvM3NKZW9Nc0J2L2toM1Bv?=
 =?utf-8?B?WnczUjVVK1F2ZStkaU5hZFp6WHdIaGFLTVBkVVNQK0NZYncwRHBsMXhuWHo2?=
 =?utf-8?B?NW1iMituUWEyQWdYSHFHbTJwQjE3Umg2TzF5S2RIZTUxOFdyTm5kTzhJamwx?=
 =?utf-8?B?cS8vc1BFMzY3NTY3MFJmRHE3NXdNTzQvMzg1Mk5hN3RZMTFiK1FKWWlOL0Yx?=
 =?utf-8?B?MEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ff98212a-aae5-4d47-b016-08dd3189c672
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2025 15:16:36.8457 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cgUbSJN2UBilHoESkRoOKGY2obgyXEmK0P21LqoKfu328QtBZS3imDaax2ZUzhT7jB+SP2+JZrQbrTDlSL5GXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7027
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736522227; x=1768058227;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yPU1iv9zxbD+sKPViRWIJh7EVFTKcREe4uuUEKF18ms=;
 b=etlT0x6FUH0PSRvSuqu4Rgovl1W9SPSXKQ/fE8SfmtXAOn37pb1bqQBB
 M1FUz5J3nuxLptThpZZPqJWpo9B67I1EONQGGSXozoNSxjcvpC5/8RESQ
 XQKC6CP076vnfRUSDOTNrfiugKlLifyBqOrl1DFhPrQYlJNgzLlBxWk+0
 HYC6TtRpTpb/CwT/+WVHuVdfgj+3LefEV483v3NossYM7OJw87fN3jhOI
 Fv2f362Of/lRBCLJcdM3Lp9hTQwwld/E/QE8MO8N/PnsNWrgX4uPVoKYZ
 mKtwIhzEgk7JBbov6qglIj6luh4hTDXudqwkiTgCblWpOlwya3psqK65B
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=etlT0x6F
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 2/6] net: napi: add
 internal ARFS rmap management
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



On 2025-01-10 4:55 a.m., Simon Horman wrote:
> On Thu, Jan 09, 2025 at 04:31:03PM -0700, Ahmed Zaki wrote:
>> For drivers using the netif_enable_cpu_rmap(), move the IRQ rmap notifier
>> inside the napi_struct.
>>
>> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> 
> ...
> 
>> diff --git a/net/core/dev.c b/net/core/dev.c
> 
> ...
> 
>> +static int napi_irq_cpu_rmap_add(struct napi_struct *napi, int irq)
>> +{
>> +	struct cpu_rmap *rmap = napi->dev->rx_cpu_rmap;
>> +	int rc;
>> +
>> +	if (!napi || !rmap)
>> +		return -EINVAL;
> 
> Hi Ahmed,
> 
> Here it is assumed that napi may be NULL.  But it is dereferenced
> unconditionally on the first like of this function.
> 
> Flagged by Smatch.
> 

Correct. This was probably a defensive check, I will remove it since the 
caller already dereferences the napi ptr.

Thanks for the review.

Ahmed
