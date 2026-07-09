Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uNsCFdBlT2rVfwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Jul 2026 11:11:44 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9064472EBD6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Jul 2026 11:11:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=hlwj476U;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B135580C32;
	Thu,  9 Jul 2026 09:11:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 55L6MRpjAlYs; Thu,  9 Jul 2026 09:11:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 352B780D8D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783588300;
	bh=UhY8h4D3eU9VoRJC9Q67Zbxz487ln+nSdKKz/Lfd3G4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hlwj476Uiq1b27/BCFA2sJQ3wbOCn4dFHGpHCsvnbos2mIMyewYJXaff2Qouz4PLj
	 ASYUBpc8vt7ktZKJ5XWkco95BEXAFjnt7HezZbAWt9jJaMNmMqgqcm6Lz01rANjMiJ
	 qhK7hO4N4oHhcaPQQv2fnedqTS+wI9v+DqZ90rLbyFe9/zUNTMaAhJPipbSyXXYFsl
	 mtBZqBraFqF6vrcIC6WYfckAzBfh5sUVxP7Oa9EOxe9XJl7MItVGiPmdEXhF1epKHa
	 wq1OM4vEdPwlrHLjo1z6cDg9BeW1EiSKD6dxuEWmGJDELNNTjTJ9UrTllOVw8TWnLV
	 /xicxtIaWk2uQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 352B780D8D;
	Thu,  9 Jul 2026 09:11:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id DBA122E5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2026 09:11:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CDC0960E9E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2026 09:11:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EtgpyLrW_4vb for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jul 2026 09:11:37 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5145560E9F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5145560E9F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5145560E9F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2026 09:11:37 +0000 (UTC)
X-CSE-ConnectionGUID: 3tbH5dnoQv2WntFhtI9H2A==
X-CSE-MsgGUID: gO6Pb2w6S+KUCfdhZtLJCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="88091143"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="88091143"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 02:11:36 -0700
X-CSE-ConnectionGUID: DU5dH6ecSrGAjcpMz7VKOQ==
X-CSE-MsgGUID: r9uGxxYzSzqAzRcf+bVDTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="251881620"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 02:11:36 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 9 Jul 2026 02:11:35 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Thu, 9 Jul 2026 02:11:35 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.24) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 9 Jul 2026 02:11:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JA2WfbrlO0Sn5HvBFYq36ZhmHFlE25XySrQCwgr0M6MO6RYO3NihfWUkgIh0LtDAanECHC2cQOVYmACqiDGv98iKUvHfbqFYf90SSUajEtkTJqHmIkOIjlVTOMsyl7VObSl9e3Mkd4Oe5ibXkq3TeYtOsxstCQ2uXcqCs+hKngITXosgIWnJrqPtvERJp4p1tfkLuEWDCGn1xdE9oKb0FQBOy+hp/dU1ZrPRR4pb3saHqI736BF/NhTcaUPi5hgI+mCtKURCpW1IjkhGMQzJYsM/s5gWo62PyVL391NQHprtqpAHN/Uwx0ZBPM3dze06d72WnjRZzNqi5GdttQLKXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UhY8h4D3eU9VoRJC9Q67Zbxz487ln+nSdKKz/Lfd3G4=;
 b=Nuf/dQ0Izfe6DFKREbWgv5YpKctGqyKxMQlemBil0TDLPMVuR2KUWQZCrzKwx4Shv5FfFbJV5DBVEdEz/vlPvPWLkqRrUmjOrvTqYFpna1Yz74n02acBSxyCr8bCrEBugup2W6fMyUQXGOQq1b+uuALcra8HCFDSLPOgTzxgTFbSJiNMTt5GHG8SWncTVRqalY0YFD+46+IbB6eMledHUz0o8G+6PRP04JS8ePGCsxuoFd+FcrDctoicWrSKnpmHCEFt5n3Xb/RXGXf65LzxFthFcDK5BOhv5foW0VTF9zWDr3fJvO0qJrjHc6QBx9fDrL0lWT0tIQb4oea2FrTHLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV3PR11MB8508.namprd11.prod.outlook.com (2603:10b6:408:1b4::8)
 by CH3PR11MB8708.namprd11.prod.outlook.com (2603:10b6:610:1be::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.10; Thu, 9 Jul
 2026 09:11:28 +0000
Received: from LV3PR11MB8508.namprd11.prod.outlook.com
 ([fe80::a1e8:1786:e5d1:8e51]) by LV3PR11MB8508.namprd11.prod.outlook.com
 ([fe80::a1e8:1786:e5d1:8e51%5]) with mapi id 15.21.0181.008; Thu, 9 Jul 2026
 09:11:28 +0000
Message-ID: <df715ec7-1780-48aa-9b5b-24eeac942ef2@intel.com>
Date: Thu, 9 Jul 2026 11:13:50 +0200
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Simon
 Horman" <horms@kernel.org>, <nxne.cnse.osdt.itp.upstreaming@intel.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20260708151327.1091570-1-aleksander.lobakin@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260708151327.1091570-1-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VE1PR08CA0005.eurprd08.prod.outlook.com
 (2603:10a6:803:104::18) To LV3PR11MB8508.namprd11.prod.outlook.com
 (2603:10b6:408:1b4::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV3PR11MB8508:EE_|CH3PR11MB8708:EE_
X-MS-Office365-Filtering-Correlation-Id: 7262f9a0-4f4d-46d1-eae0-08dedd9a0f27
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|23010399003|18002099003|11063799006|6133799003|56012099006|22082099003;
X-Microsoft-Antispam-Message-Info: PTJV2K46JJLsdUkpaT128vM5q+FGF/l88MwQuEMeV739xlSmZJ5vy3ilT6+iuNtZ8rFQUrySL3Aim8Cgj5uh1r9ke3bv6/2ouqqQL9srqi9nrs57kafSk2VPWVMr6/myc0f2v+BdgtEyCyBbJjYXH1hndvSuAcLqJfQRPTfFnQ79/6JGuXcuL2vK6Or3/QYpJxFzFPPtQ2jbKaEL3ZCkwx+o8bdnYZ0AyrtYH75QBiSghSL2hRdoM426eYuO5wFqwEbhFGpx4pQHUHgBD0DLZQzkmTmthS05qhpzcJlaKLIc4ZIhDYbe00rvEPqpE5Ojg7CLVQ53BN5qckBY3zJP9Yvl8VxTQF9+CQLiXqa+azD5H81qduGOfVZEfQj/x66mLaazBh/ACVYja13kfwitT8r2bwaKtSYflvb2+GKRipTsZIr5GF6e6elQhJmUmN1+DnGhLiaf/jNbOfC+QBfuZKr/zz4JaYh8QIceEf0yUPGU0Uom6QNQD3/60kNUx0CZmAUrrqju5yARhvGXRj6V1GzIXFWHFbIjiP/QU2EXgzlZw29RlJn4JjTgrwQUjEV45ewP5nGDzaY4xRytc/DIpYY41+HBmZjVnzj6QwoeIFrFW29Csua06ByUK9PJazn/EmHHnOLG6FzWOJGwe6wZ45AqUgfo8KuAK9PuImis9EE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV3PR11MB8508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(23010399003)(18002099003)(11063799006)(6133799003)(56012099006)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UkNZYkRueEtuUTQrZXhYc21oVkROZ0xZWWZHSHVENzRINVpZTHd5ZlR6SXFP?=
 =?utf-8?B?K3c2S2FaMGVnazdBUGdxREdOY0dhRGRGNjAvNmtPN1RzWm1wQklVclFoZm5q?=
 =?utf-8?B?bXBabVZjOHhmbm90N1JRbUk3aUtKWFBLcjdQdC81R0JCVWk3WlhKWHY1aHRp?=
 =?utf-8?B?UGRPdzlzbHQzZFdsOEJjVFJ3RTlRRTloRUJ4eE44S3c5ZzdmWWdma1Q2N1c1?=
 =?utf-8?B?QXlyQWw4eDZrSWEyZWFFdWp2cWh0b1hHS1lEVlJFOTB3dUZMQkd0YmdJUXEw?=
 =?utf-8?B?enlSNm02NVZORVAwUlF2clZsUTdWZVJlUGN4ckpCR2JPMnJLRUxTWTRRZ3Za?=
 =?utf-8?B?M01pUjc5ZmVxVnlPQU0wZmRnYXY1MVE4WlkvcUxlWGNkSmtEY0ErM2g4WFhG?=
 =?utf-8?B?dUpFRmx2RTR4QWxlQVcydHdOaWZqcG8rTDBUb3F6QWdOSEgzZHR3MjE2bUlW?=
 =?utf-8?B?bUFzcnlqek1ESkNWR2s1TnhndXQrZkZSSjc0RllpUDBNSkZwNVZUT0dxS0U0?=
 =?utf-8?B?WGRFZmJVQ0tIUmJISEFvbFhKbnlJMnFRR1NjaFZwamgzK3FmcnNGR2pTUlVU?=
 =?utf-8?B?MG5vNjRoeWY4b09ZV2NobEluOGFtUm03TnRKUUJhOXJ5NHBBR2NwYjVGTmhy?=
 =?utf-8?B?VVBIbUdFcUNPUGFvM0s2VUppSTZVZVJUaDQwdktxdTlaQjFRamZianpWTUhy?=
 =?utf-8?B?Z2drdG9pTE1UQmg5TytsR0pIKzFlOVBRQjk4NUFkNzl3Ry9QS3g3alo0cnph?=
 =?utf-8?B?enlsbCt6cTF6NVhuVVp6dFM2czhBbVZCRmVuQ0JuN0c1d3JCZEpySTNNaHdq?=
 =?utf-8?B?Q3JyRkppT0hCZkFJWmRFRGFiY0F4VVZGMWxGT1Q0NG5XS0RKSmczQVV4RnND?=
 =?utf-8?B?eHBSWGo0L2tCTk5oV2l0c25NSVNRQTZuTWxuZ1krMTY4dHZsb2Jwa0w5aVhx?=
 =?utf-8?B?eTdudWsvWkZPVEV5TnRIZ1hZS2gybzEvSlFCeHJPYmNQbjFDZFM3V3dpOHky?=
 =?utf-8?B?aTNPZW5EZjNUNU5Oeko4UW9zK2hzejJUekhEODZYQjlJQUwydEx4SXZSZ0RQ?=
 =?utf-8?B?dmZnZWk4Q1p1SjNLUWNrZ2I0NkN6SXdEVWV5eFRFSTM4NHMzKytJQVdSV2ZD?=
 =?utf-8?B?bzZMM1Z4WllzWS9ZMk4wNW1OZ0RnRkVkYWZ0Q3ZEZWhtWkZUQWhxVGhtdHBi?=
 =?utf-8?B?anRLZGViNGxMOVV2L0oxRnpzaFFFV3ZUMkd4T2xxWXdGbC9oTWNzRXI2UUMz?=
 =?utf-8?B?eFdOMHZTNGJFcERXaDd2aWFoMGcrc1FST3g1bE5OWTlsNXdveGZZRE15bjlj?=
 =?utf-8?B?SGVnQkV4ZVNEampiS3NFYXBOVlUwbWJrN0xIVUFjS1BZVTd1N0F3czZXaVFC?=
 =?utf-8?B?bzdDVDJXbU9tdWd2Nm9IUHYyMlNHVm9JalBCMkdxeDRMaGN5cWwrT2libVd6?=
 =?utf-8?B?ZVZ6aHJGNHU1UmhoMWJxa0NCZ3g3QkFoUkg0cnpSWGUxQ0lVWCs3T28ramFr?=
 =?utf-8?B?Wk16bEg4VE0wa1FTOWVzZGxhK3V5RGVIaGV1NnR3aUN4U1JaU1V4Sy9PeW1Z?=
 =?utf-8?B?Q2pmRSs4TDNpVWZVUHBXVFVFYmxtQTcybk55c1pNaWVPMnNENkZmTnJDWXJF?=
 =?utf-8?B?UVQrYUdDS2xoeEMyS3RRMVlORTBZTlUzUDh4MDVJUjkzaktHZloxdUZYTDFr?=
 =?utf-8?B?WTZoWURNY3lDSnpVNndKTlVwbnlOYXZncjFUYURRbXM1YUlWbjE1bEVydVUr?=
 =?utf-8?B?NmIxeUc0ZUZlcjlIYWtaUmc3SzNtcm04UkhweElDV3F3cU1PdENNVDVmcUJJ?=
 =?utf-8?B?V1BBZm52QkZhNnJKWUlqVzIzVUE2dGtXbElBRzhHL2p6TWxuU1dRUnI3Ylc5?=
 =?utf-8?B?aWgzMVY4Rkl4MnBxb1pBam44d2E4dWxDRmxISmwyWDJra1I1YmlOS3UzaXNB?=
 =?utf-8?B?UEJ4SFdjWnppZmNkMGdlVXhYRG1JNVducUxTL3hXWHN1QVN1TVd2cVA0bXB0?=
 =?utf-8?B?SDltNi95R3R4cGlOd2hEOHBXTjlINWxkcTNaVlZKZndCRGpKOWoyZHlwdW1E?=
 =?utf-8?B?aTVySC8vczlmK3k0NUlTUXZXTDJlOG1oU2xhR3JOQmlQOTZkd2lIczdjZTVX?=
 =?utf-8?B?MWxydHF2cTZQYXpPdzdYRXFXcmN1SzNoQ21iVWp1YUVtZGh1NkVVUFlUNkxT?=
 =?utf-8?B?SnVwMnlLd2FjOWRQd3R3YTFUNmZRdTZZbXFUU0trUTFBZHZTRWlsZDJjeUE1?=
 =?utf-8?B?M3Z5YzQycm5sY3FvVkROcUpIdi8zVi95eUYzaDRBUy9vQ01Ec3lTSkRSV2oz?=
 =?utf-8?B?V1d2bXpFV2Naay9qcmtHejdVSGM0WkFQQ25IejZvaFhxbnBLMFhWU1JRbmdm?=
 =?utf-8?Q?kuLOonF5qZaKwdzE=3D?=
X-Exchange-RoutingPolicyChecked: K8UFqlF0dnG/7gPWBNWTbIO8QjfC4CnNv6InqcRFhQvTk0dO+GIj+NTi8znHSBo+GQAeY7jrr8OIvn2N+BURtK6zdxeOST3t4nseuCPTIJYBXtQZCRPv5I8NYcEt9WOz8LRklxjctFyl6F3fvTPWPn4rOYQVfHZYmcFf4uiytF8Knf8ag3gc6kp1UHibb2NEUZiMqo+Ea1bx8MDXfdhH3qQxsDdHKeO1c5DkihK1e4mH+liI6hwheePhuleC7Xv4XPYr4gRE3skncddoM9mSLhgHHN9OWPEvq0NFiCqMljWvAySP/JojXScJQjUYqJVnjS7KVhSRGXZOV/kbajyiQw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7262f9a0-4f4d-46d1-eae0-08dedd9a0f27
X-MS-Exchange-CrossTenant-AuthSource: LV3PR11MB8508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2026 09:11:28.4291 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0y5AAroUq7FWdCtbpz+2hJ7aO49bx9B9ko6KvRq21K+mVkpvBcDEhSqGkhvUp2oQZQ5g5jPD/5QRf1nfcwqSaPUE45wa71Wg+HbG1NkM7mw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8708
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783588297; x=1815124297;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pAQAZ1HcABShqCtHQ1Q09a3BJW9sst9T3HhJcioLJlQ=;
 b=hIT7u+IDw42A/kAZnJyyXDQ6gTh7lMOScOcOb3eqpvNW22gF09WxA07O
 T1yxYFGs7c9ZS3L+1dxaeDqT8bD4X2lT+XrfzqMK2g+4qBLSUqKP71oOT
 7FeW4JCj0jSFTfvORPOH7ky0TjvTjf8/82+GSNEG6O6B2R0/BcplIS5L6
 +/4u5IPd3qn3G9lSGt1CqzMG+k0fVPSGcdWd0GYP63Rb9ZzbpEMjIKieS
 8yrO7stt0eAFAynJ5lmkz+qz6R8SO8g5igjDiJK6w57OnbOj8CHHFDYPG
 Z6DGMSIX9UUsjSs0lM2/o20Yy00Z+mlQIk9QpLafg5sK3WI2GCTY9n2SB
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hIT7u+ID
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] idpf: add flow-based XDP
 fallback for FWs without Tx FIFO support
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:nxne.cnse.osdt.itp.upstreaming@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9064472EBD6

On 7/8/26 17:13, Alexander Lobakin wrote:
>  From the first days of XDP implementation in idpf, it relied and
> worked solely on top of the queue-based scheduling Tx mode, which
> basically means simple FIFO. However, turned out not every firmware
> supports this mode and XDP doesn't work there at all.
> 
> Since the flow-based scheduling Tx mode is mandatory and supported
> by every FW, introduce a simple fallback guarded by a static key
> to not hurt the more performant mode. The FB mode generates a
> completion for each Tx descriptor and never guarantees that there
> won't be any out-of-order completions. Serialize that using a
> bitmap of completed descriptors and report contiguous blocks of
> free bits to match XDP and XSk expectations and avoid further
> code complication.
> 
> The usage of a bitmap on hotpath might sound scary, but this
> fallback is able to reach around 70% of the QB mode's performance,
> which is comparable to what ice gives us. The main bottlenecks are
> unlikely()s and one completion per each descriptor, while in the QB
> mode we have one completion per batch (which might contain 64 or
> even 128 frames), plus the size of the completion descriptor is
> 8 bytes in this mode (4 bytes in the QB mode), which means a lot
> of additional PCI traffic.
> 
> bloat-o-meter shows .text increase in about 2 Kb without adding new
> functions or uninlining any of the existing ones. I played a bunch
> with inlining and uninlining certain pieces or the whole fallback,
> but the compiler collapses and optimizes libeth templates so hardly
> so that each additional external call only makes things worse.
> 
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
