Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C66AB3C01
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 May 2025 17:25:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4783760AC0;
	Mon, 12 May 2025 15:25:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AmPgIVgFtuGk; Mon, 12 May 2025 15:25:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 983DB60642
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747063527;
	bh=OCK+5oBx0GiUci90p9yB8RsYW8u3QOOWvy6F6v6JF7M=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OIgpq2s8nkh40+Raq2xFFNZmK9bHfCs0T6RwFcOow4PlLIml+p8H+ARBBMQEVmcC+
	 ZbcNvTkSEuYYUExwWRUb1Lvz8pOluBodCjj0JpsLbzWc6++GyQsnWiyWdxvuX6nFYV
	 lYQMFGS+LiJByN4bf/L1CAO7HCbnwt+yUqODlJBYdCGa2Pj9S/IEqR0Wq93CySuPLU
	 fLsqBm0TcGEuviXTQTWbCrRAlcSeYHOAlfHgscuSx16u7cPUqegn/n1irARkxTT+Dg
	 CEHgnfQLsr4KgpRMWKk3SUPaUI/YFxF5N4JApiIvbFDGHAKIYCwftu2+baDBKaSYKJ
	 gjpLEhW/LZlXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 983DB60642;
	Mon, 12 May 2025 15:25:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2D8AC17D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 15:25:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 29DB44064C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 15:25:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jxPSTxpnU3dI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 May 2025 15:25:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 560EA40603
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 560EA40603
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 560EA40603
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 15:25:24 +0000 (UTC)
X-CSE-ConnectionGUID: BwYs0FO2R+2RaaKgj+t0Lw==
X-CSE-MsgGUID: vdFuw+0gS5m7lYKYZv6Heg==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="48861234"
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="48861234"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 08:25:22 -0700
X-CSE-ConnectionGUID: fb/9AEioQ4y+CjI1fQN3cg==
X-CSE-MsgGUID: snqp38RfTfqsBm8wj6onaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="142176832"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 08:25:20 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 12 May 2025 08:25:19 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 12 May 2025 08:25:19 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 12 May 2025 08:25:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VkQ6kOETu2Qawz3uuqL/7w6ggZkj9HhoTmiwb+cmdrfqF3CDrKC7Lxf1ly/RGzd8cEvFMno8hW2xpiUoczf34bTrODHLMtvebUdUdpWxnCzL+J1ua1zQackNL3OKMJH3wacFKuCfLtbzmKcZzbMtizHG9wMBhvlDeHMkNnpG4eEvyIU1Pbet31MlQCkSu90/vD0MRCOb0Uyrhi1Qga13nY2/TmwyDGzyEl8XgxjmqMT4Ch2KJhZU0E3Xe8IlTMNCTaUjU3pAnt+3YL8VNnfR8+yRvtRCIuat/VWSivWZ3AVOfYlg71f2TA+nT6TO4QmcI5e1pw7PGqlSCIs7tVp3ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OCK+5oBx0GiUci90p9yB8RsYW8u3QOOWvy6F6v6JF7M=;
 b=XNMmi7QYjqBqUnwP1Ux3+56D8Uimc/UozqyW0nNv6Y9enF1o2yO+JrTIR9bqI30EAnODtTN+3sgOo7ZbhKtBlL7YOxLpVy7kOgssL9xf/FzN3strMqBzMaIWa+ML0hOmxhCNH33mFn0w9ZGVk2ymCxVscbU5EjT+ZpZ59dMPYfeBREw3d1IGRPhXEFNqhagl1ziKvbUeSlXHrUFD1mhlkIaUMb4awXznFK2/FPbHp0/5fY7VBJrAkHI2BR+n5bMK3JOgTCSp7OiE5KNpa+fXAHRuMj3MZxXbWpYDXgyHv8trggVScPQd1UwpvT0o3fMYEySiEvHFL43+Igin8gbjFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4538.namprd11.prod.outlook.com (2603:10b6:303:57::12)
 by SJ0PR11MB6694.namprd11.prod.outlook.com (2603:10b6:a03:44d::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.29; Mon, 12 May
 2025 15:24:46 +0000
Received: from MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067]) by MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067%3]) with mapi id 15.20.8722.027; Mon, 12 May 2025
 15:24:46 +0000
Message-ID: <02cfce6a-9371-46c3-9eb1-2fb4dec1b3c9@intel.com>
Date: Mon, 12 May 2025 08:24:44 -0700
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <decot@google.com>, <willemb@google.com>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <madhu.chittim@intel.com>,
 <aleksandr.loktionov@intel.com>, <przemyslaw.kitszel@intel.com>,
 <andrew+netdev@lunn.ch>, <joshua.a.hay@intel.com>, <ahmed.zaki@intel.com>
References: <20250508184715.7631-1-emil.s.tantilov@intel.com>
 <b5678313-0ec0-444f-962f-758a35c5a46d@molgen.mpg.de>
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <b5678313-0ec0-444f-962f-758a35c5a46d@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4P222CA0021.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::26) To MW3PR11MB4538.namprd11.prod.outlook.com
 (2603:10b6:303:57::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4538:EE_|SJ0PR11MB6694:EE_
X-MS-Office365-Filtering-Correlation-Id: 72ee20f1-8e98-4558-76ad-08dd916920e7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dXNLbFBLUk40elhZcnJQRlNtSXZtTmtjQUFYMHc4Um91elRCb2ppcHVETDZP?=
 =?utf-8?B?dDVPS2lxWUFUUHpybmt5b01vWEsydmErTVZVamFlQjFKRGcxZjdGZWh6OVFZ?=
 =?utf-8?B?ckdqNnBVRzBpSFhvbWIrR1hUZTlBdmkvUnJTUlNRZ3JLVkEvWkZvMWNDOExk?=
 =?utf-8?B?TUJXRElVQlYxclVCTi9EdkxobU1jYlFJWFQ1RjFIalUwUkhabmxlSE1WV0Fx?=
 =?utf-8?B?ai8vM0gxWnpKcnpLUWNrTVJ3TU04bTU5WENIUDB2QUZBYUdhQXFVL3VZcDRs?=
 =?utf-8?B?RjNJUXRGVXpWajRQTXhZb1FkeEw5RnljTk9JOFNBUkJEQjFQc0VwQ0orajZz?=
 =?utf-8?B?dVBkQVRKNkV1OHBtQ3F6TlI1VWFwNks3NWFmbU93YUVMeTc1bHh3bFk3N1NJ?=
 =?utf-8?B?NnRTTWhKS05TZ2FtVDRRSC9ueGFZZHArTDNLSmk5N0ZLMW9iN3NUZ0RucEUr?=
 =?utf-8?B?ZTdWcEN2Y3lKbllkWGlEaW8weVZMY1VBZkxycmtFOVpMbERpc1FqYlNTTjBW?=
 =?utf-8?B?TjVIMXlFUzI3RE5DTi9yTThCYldFbFVpTVhWTjBoaHd1bTN0VjhLcVBpMmRJ?=
 =?utf-8?B?Y1kxWE95WmpPQy9GWFBzYjlWSHRwbTJyaXRYM2hoNWtEQ0cwYll3NlVqT0N2?=
 =?utf-8?B?dllzNzdvUytWQzlTemgrZ1kxcms3UXNKSldGNWhPVDZiVVgxVnlOcEU2ZFdU?=
 =?utf-8?B?Q3dXUE1ETCtkYXJKb1EzanNzcEpPb0taY1RxZEJaa3dlSEVtbmRibW5RSXJR?=
 =?utf-8?B?T1YzQUVNcWhUb01MTXNyRFpLZmQwcWIrbllFUnhNTDRpSnZjM1FCQUJOd0I1?=
 =?utf-8?B?b1J2SnRTM2hYNExhTld2bHk5TVFQb2ZHcndsQllhaUp4R3NvazNUWGFDeWYz?=
 =?utf-8?B?VzZ2UHdyZTRBQUFHYXd3aTBxSTMrbHdtSGRRVisrUStQM1VaOHRHWG9BbmNi?=
 =?utf-8?B?V0pIb1Y3L3Q1TFhRcHhUSC9DTmJQRStxUVNicnpwc2hnRngrNmw3eWVsbXZi?=
 =?utf-8?B?TjFqd2lBZ2l4QlJ0Sm5yUlBtcUUrRFB3N1Y5Q0dXcGdESnB5TGNkZVJrRjh0?=
 =?utf-8?B?ZGdqMGtSY3lJT1h5cW1jWWkwNXZqR2hMZm93VUltMnNBdkp2STdMZTgyWk1v?=
 =?utf-8?B?YXNuY1hlQk9Cb2FlVjYzZ1ljWnMwQWZ2ZVNiSXdUSjVsODlYcXRtaUY1TDd1?=
 =?utf-8?B?VUpjeTYvb0w4Zm5wZFJVdTNnMHAyQm0yUzI1NnhlSnhnSUlGaDB5TDgwRWF3?=
 =?utf-8?B?STN5ak45RGtTTWRhWkhoWlpaMzZiTUVRczlZNHVnbHRZR096UEd5emhYaFo1?=
 =?utf-8?B?cm9sMzR6WVBSWnlCUDVjaUs2NUZPeVFGK0xQZFpuVGswUWszYjNKSXlvTXI2?=
 =?utf-8?B?S0RuUTllZUErNUc4TGdPRmNQSVlwSCs2NGgvaDVzT1V5NHVCaE53cXlUQmJ2?=
 =?utf-8?B?bVBTQUZzV1BCaFc4NEN1a2tJbUQ5WUFwbHdNQUQwd2ZTcVVVTWJIOFJEMWRT?=
 =?utf-8?B?QS84R2ZEVTc3aDlYUUFBc01TLzF6VElBMXl1SXJaY1dPVC91dHZqNGMxc1R4?=
 =?utf-8?B?YUo1ajhpckFJNHZOTGpUNVc1ZmFBd0RDSFJmUUlkN0xxanRvK01ndVNWNVlw?=
 =?utf-8?B?ZXg2b1lKbWM2NFpKa2NNOS9Vb3oyblBCbklSTlhLUXI0MXJjc1I1Z1VybDVj?=
 =?utf-8?B?dHFlSk16OE55akdlMUZKQlI0YWFkS21kNktleEVCendDMDYxQzA1SEc2QzI1?=
 =?utf-8?B?R3M4K1ZwYnFLN2Qwb2F3S1Y2T0lESVQxSlN2ZGI3YzkzbUZSNGtNcFlwYml4?=
 =?utf-8?B?aWpMQ0ZBWFE3anlmTDh6b253T2JreTFjOEQ5SVhYT2lSb2lYYzd1aDlGYlJJ?=
 =?utf-8?B?Qkp5OGlJTURrbHY2bU1yVjAreDRIT2E4VHMyR01IWEdoOUZ3VVVtcVBSK1Zn?=
 =?utf-8?Q?4apCQidM8q0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4538.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Zm9UZmlSb3dVUDdpTmN0VlV4K1hYZHN1ZSsySXB0RlpRa0NzbjlTSDVqVGU5?=
 =?utf-8?B?OExWK0JQeS9od1g5dEZ2OW56QUxhVnhNTWl6eDBnSVk4Szl3M1VwaHBRUG9Y?=
 =?utf-8?B?ZC85K3lLWnA4VWpqamtlOUIwQTNUbkF0ak9FajBLYkE5M2NTYlNLNFN3a3NC?=
 =?utf-8?B?anFlRVh2QWtWRXJGek9ZeTZTKzZkY2ZCVkcrekxOQ3k4ZERFZmF5cG96dHN2?=
 =?utf-8?B?MGNYbitXbC8rOHZJUkl0NzI1dGlFNmJxc1NrTFBwVkRKaVlSUVdDYnZvQytD?=
 =?utf-8?B?d3BzT2psRlJETm1mQ3JWUXJrQmZndzQ3VU5uUmQ0aVE2YXgza2VEOUZDbTFF?=
 =?utf-8?B?RDloZ0FjV01mTkJqQkN0RXJyYWFoWC8vTW9wS1BOdTRmQmRoYzh5WHQxbnRH?=
 =?utf-8?B?NEpEMUpxK21CelhMOWpNUnVOUkhaWXlkdGdOanROWnkvc0RDZWpSVTlRQXVG?=
 =?utf-8?B?UUtnSDBzUG55aHFIWEZGVTNybXdhNFZjQzIvWDBJcDJEeWs5aTFmbksrT1B3?=
 =?utf-8?B?Nm1SendzNWZYdVFlakwzd0ZadGppT2Z2MUI4SklCTzVmQjMvRk9RWXdSM3JJ?=
 =?utf-8?B?UEhvV3dhbXlQaEJRY2ZpTGJib2JVdk1qRTNKSHAwZzZuWkpadm0yV0Q5WlJK?=
 =?utf-8?B?WXFMbVk4OGZZd1dyeXMzak03TGF5dkptc3FRZmROaW1qRTBONWV3RmdNRGwy?=
 =?utf-8?B?QXNpamFoSG5KMDNHZk1lcnIwTmdZMFBNampSK1htMXhxenBMWXVKV2lKZnFJ?=
 =?utf-8?B?YWtEYUh0Tmwvd01QTHVSZWxTb1c2TWhqUURacTJ3OXBBaExvUjhKVlROTWhq?=
 =?utf-8?B?cGp6c1kwbmRET1h6RThPNFQrU09EaFl5aVFVY2ViUzlOZGZuNnBqdU9BOEMz?=
 =?utf-8?B?VWowYzRJNE4rQSt0SXhOejk0cEZoeW16OERZTzhxZkREaXlCeG1YaW5jbVds?=
 =?utf-8?B?RzZ2bFF5WlR4b29FbHR3VkpFcGtnQ2k3bVZlMk8yVlhGRU4rd3EzVTdwWnRz?=
 =?utf-8?B?MDRJNE1lMGkxQVBDdWNyOUN1K0ZxS1JJakJZbzNlQVN1STRNendVZmYySXg3?=
 =?utf-8?B?M1BINDd4Z2o0M05LbnJicGRBTWJ1bFFtZmZRMWtGRFk1Z1NITVZ6T0xrUiti?=
 =?utf-8?B?NUhHNXREMk1BQk9LYlhlRzdGN1J6cmg1YVYxWjhQTzNWclJNZnVjTmR5S013?=
 =?utf-8?B?K1A4R1ZjZTdCM2VNSHNEQUx2ZDJadkliZ1EwSEJBTTNCeU04YlFxNk1GV0lh?=
 =?utf-8?B?MlZLa01vUGVnUEI4aVNpR3pPK1kyMTdFNDVSZythVk5aZEVobFY3bk9xdm0r?=
 =?utf-8?B?bTZURlRnaXd5RktKdERZeFpCSS9HRVBTdUdUMytEM3VFTi9ITTU4VUh1TDBm?=
 =?utf-8?B?UmFzR1J1NjJnODZiTDFYWFBuQkpHNlFwRG1DRFh3aXlrOEdDS2hYUTBleE9i?=
 =?utf-8?B?aHJqQ3RJOVJzRlRERmxRQjlCRFR3ZkdUNGdpZUZsN21PUXJPQmFTbWFINWdS?=
 =?utf-8?B?Y3pZZ0U2SlZuclQ1Unduems5NWtuSDMyeFhVS1dNM2tOdzErdGtkR2tFejkv?=
 =?utf-8?B?TnpRUU9wWWtOWEs5bVUyN1o3NHlwbGd5c0JpZnJYeGVLdEMxaDdXZXZlM2pp?=
 =?utf-8?B?bVkzSkFGNWYwL3BWd1ptUVdIM2lWQU9OK0lSOFNXMFZOdjBkdHdBRWRZbXkv?=
 =?utf-8?B?clQ2R0pQR1VUUXVYRDYrQnB0OVBRaXNIb1cyWklTT1ZhQnBReHZJNEdNanFZ?=
 =?utf-8?B?NVBRTW14eFhtU0pzUG9IYjZLcnlqTHpSOUpnNXBIVkY4WTZqQVdxdTBwTlRM?=
 =?utf-8?B?UGN1M0wvWGZqM2U3WjU5TGJRa2I4MVh2Mm5mTk1YUHk2RVRKQUo0VDFCM1ln?=
 =?utf-8?B?SWZsd0ZFbTQ5V3YvVG1RdlE1K2lyRDRJOVpUTkhLSTQ2a1VqRnNLZHdpUGc5?=
 =?utf-8?B?UjhaL1hNTUNtVGQ1Ky9jN2E1OWVRZEFGZVU5VWh0V2xOTWsxTHpBZS9BcTVs?=
 =?utf-8?B?Qzk3ZXF1OExrZ084RHZ6ZjRGOFV3d085eEVDTzFrc2k4OEE2RFluZmczOUFy?=
 =?utf-8?B?V29EcURLOTJ2WUZLTTI0NmJ6dEQ5eDMxUjR0RFk0WVhuK2ZTejJ4M1FQdFJ1?=
 =?utf-8?B?eU4yVjJzbXIwejlJUXVpRmluQTZXaWwwWWhZWHlLcXprMnJVN2VmczdQejdP?=
 =?utf-8?B?cFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 72ee20f1-8e98-4558-76ad-08dd916920e7
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2025 15:24:46.7732 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1HMHHiJSlfT+ibTt6HwGj06ma6AqnM94E7BjmaJ6XVJDNZ9H8rtNyzYVYBOQtd4eDjzQ8vK0Jte85QiHe0RZVeqdfu8Fh+aqdIXVbFcsTgs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6694
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747063525; x=1778599525;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fX7wAFRlifbr3mXaCoOuHeoiCdzXfGI+d9ufKcVC3CI=;
 b=BUrM3xRQJHgkTGKmY9BV8IKZNltmB5InEJTJKwmDXHAbGr2Gu1I9Dm+W
 qxR3EsPDUUWTEpN0i5Ko7ysfnVsLE35czDSfJfFW58xPzDDchDXomU1/L
 bzz55PVQhYicYZwA2epEIMyTykSuYAdy79NsgLhwZjW5HAHVRRoKC325f
 IxWdQWfpL4iBKQMTqRweslEXjKloNmi43hqSeArTKtbFelq59m0kHCWD/
 kNKN0hEKlP7Tza8FzP71/f5IC/JyRti5E0Ynl+I/jOPa9sSpxtocGQxru
 sCXchX//8+GG5BvzcvraYAJhQvphoyh79sSbyPPlFKyrgt8ZEnsYyii6u
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BUrM3xRQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: avoid mailbox timeout
 delays during reset
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



On 5/12/2025 4:46 AM, Paul Menzel wrote:
> Dear Emil,
> 
> 
> Thank you for the patch.
> 
> Am 08.05.25 um 20:47 schrieb Emil Tantilov:
>> Mailbox operations are not possible while the driver is in reset.
>> Operations that require MBX exchange with the control plane will result
>> in long delays if executed while a reset is in progress:
>>
>> ethtool -L <inf> combined 8& echo 1 > /sys/class/net/<inf>/device/reset
>> idpf 0000:83:00.0: HW reset detected
>> idpf 0000:83:00.0: Device HW Reset initiated
>> idpf 0000:83:00.0: Transaction timed-out (op:504 cookie:be00 vc_op:504 
>> salt:be timeout:2000ms)
>> idpf 0000:83:00.0: Transaction timed-out (op:508 cookie:bf00 vc_op:508 
>> salt:bf timeout:2000ms)
>> idpf 0000:83:00.0: Transaction timed-out (op:512 cookie:c000 vc_op:512 
>> salt:c0 timeout:2000ms)
>> idpf 0000:83:00.0: Transaction timed-out (op:510 cookie:c100 vc_op:510 
>> salt:c1 timeout:2000ms)
>> idpf 0000:83:00.0: Transaction timed-out (op:509 cookie:c200 vc_op:509 
>> salt:c2 timeout:60000ms)
>> idpf 0000:83:00.0: Transaction timed-out (op:509 cookie:c300 vc_op:509 
>> salt:c3 timeout:60000ms)
>> idpf 0000:83:00.0: Transaction timed-out (op:505 cookie:c400 vc_op:505 
>> salt:c4 timeout:60000ms)
>> idpf 0000:83:00.0: Failed to configure queues for vport 0, -62
>>
>> Disable mailbox communication in case of a reset, unless it's done during
>> a driver load, where the virtchnl operations are needed to configure the
>> device.
> 
> Is the Linux kernel going to log something now, that the mailbox 
> operation is ignored?
Strictly speaking, the mailbox operations are not ignored, they are 
disabled on purpose, because they are not possible during a reset. Only 
the timeouts will be absent in the scenario shown above. The error 
regarding the queue configuration will still be logged in dmesg.

Thanks,
Emil

> 
>> Fixes: 8077c727561aa ("idpf: add controlq init and reset checks")
>> Co-developed-by: Joshua Hay <joshua.a.hay@intel.com>
>> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
>> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
>> Reviewed-by: Ahmed Zaki <ahmed.zaki@intel.com>
>> ---
>>   drivers/net/ethernet/intel/idpf/idpf_lib.c     | 18 +++++++++++++-----
>>   .../net/ethernet/intel/idpf/idpf_virtchnl.c    |  2 +-
>>   .../net/ethernet/intel/idpf/idpf_virtchnl.h    |  1 +
>>   3 files changed, 15 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ 
>> ethernet/intel/idpf/idpf_lib.c
>> index 3a033ce19cda..2ed801398971 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
>> @@ -1816,11 +1816,19 @@ void idpf_vc_event_task(struct work_struct *work)
>>       if (test_bit(IDPF_REMOVE_IN_PROG, adapter->flags))
>>           return;
>> -    if (test_bit(IDPF_HR_FUNC_RESET, adapter->flags) ||
>> -        test_bit(IDPF_HR_DRV_LOAD, adapter->flags)) {
>> -        set_bit(IDPF_HR_RESET_IN_PROG, adapter->flags);
>> -        idpf_init_hard_reset(adapter);
>> -    }
>> +    if (test_bit(IDPF_HR_FUNC_RESET, adapter->flags))
>> +        goto func_reset;
>> +
>> +    if (test_bit(IDPF_HR_DRV_LOAD, adapter->flags))
>> +        goto drv_load;
>> +
>> +    return;
>> +
>> +func_reset:
>> +    idpf_vc_xn_shutdown(adapter->vcxn_mngr);
>> +drv_load:
>> +    set_bit(IDPF_HR_RESET_IN_PROG, adapter->flags);
>> +    idpf_init_hard_reset(adapter);
>>   }
>>   /**
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/ 
>> drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>> index 3d2413b8684f..5d2ca007f682 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>> @@ -376,7 +376,7 @@ static void idpf_vc_xn_init(struct 
>> idpf_vc_xn_manager *vcxn_mngr)
>>    * All waiting threads will be woken-up and their transaction 
>> aborted. Further
>>    * operations on that object will fail.
>>    */
>> -static void idpf_vc_xn_shutdown(struct idpf_vc_xn_manager *vcxn_mngr)
>> +void idpf_vc_xn_shutdown(struct idpf_vc_xn_manager *vcxn_mngr)
>>   {
>>       int i;
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/ 
>> drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
>> index 83da5d8da56b..23271cf0a216 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
>> @@ -66,5 +66,6 @@ int idpf_send_get_stats_msg(struct idpf_vport *vport);
>>   int idpf_send_set_sriov_vfs_msg(struct idpf_adapter *adapter, u16 
>> num_vfs);
>>   int idpf_send_get_set_rss_key_msg(struct idpf_vport *vport, bool get);
>>   int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport, bool get);
>> +void idpf_vc_xn_shutdown(struct idpf_vc_xn_manager *vcxn_mngr);
>>   #endif /* _IDPF_VIRTCHNL_H_ */
> 
> 
> Kind regards,
> 
> Paul

