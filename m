Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B980FA8458A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 16:01:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7251181028;
	Thu, 10 Apr 2025 14:01:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tFzKEoxIq11a; Thu, 10 Apr 2025 14:01:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 88D8984099
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744293667;
	bh=WDz8nATkteAlEVHTSQJscJKtw2zifqj+Eeg7IK7JUYI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AsJxO0uX1wt57rmLEqeUgbJDioReeDiQeaPyy5fEiI/xFEkaGlceaONTRtXmUKPPJ
	 vNNCLtc3HKIixNW3w3eCHOh3ir3ajRcx5/9BFUJ9IZk7vw0Bm4UKSQlE1RkiGS8IGO
	 JvhknDqKWeWSEkGu+FA9irFE7/I9uZx/lRMi5EkHunWNZEpMNJdf8cnqtBrfcGf6GF
	 uwuxn7SmqEQA5bM4agZHbNN5EwA8DvGIdD1o5LWw8h7H5AMlV74UVlDkRwbAuJfHm9
	 nBvfQ3Uc+dZuoGjfj3Im0rWjRvv+DKa7u4Bi9S9x6qd40Y+mVuU14ClmPbhGIAed8a
	 4qhlFtTqFY8Qg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 88D8984099;
	Thu, 10 Apr 2025 14:01:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id AD233108
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 14:01:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9DE6040C05
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 14:01:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jwlm9N4RrVMg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 14:01:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6F1594120A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F1594120A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6F1594120A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 14:01:04 +0000 (UTC)
X-CSE-ConnectionGUID: sZ4ymZEhT8Kh6wxDvwnRZA==
X-CSE-MsgGUID: /4I5J6H/S12fWC8OFhwqaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="57187885"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="57187885"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 07:01:03 -0700
X-CSE-ConnectionGUID: k5JkJooBRLSE0hld3Qy7DA==
X-CSE-MsgGUID: +9jb03D6Q7mxun29TwYjMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="133031663"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 07:01:02 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 10 Apr 2025 07:01:02 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 10 Apr 2025 07:01:02 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 10 Apr 2025 07:01:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QnoiudLJcixs5q15Sd8NTTuXrTUSQRmeZ9ebgdUsyR/jnkZCBj2uqUjXQE2vjyOYaTSqTGrBkRlwuzsCCzBe/caiPOVIVF/JAvjhGbnQRN6I8nB9FFXoSxJpt71x0zwwHDm65QcezVchACwXZwgAn1uMn9ub8D8HJpOXxBCbcB+LCQudXAwOzq1MWIza63ZKIvZriK+gC73yRZjSNMvdOkhhLgdOVpB+3DNGNr6X0t+8bo3cACvsOVurYjS5OO/OAWS1Cc7GxE219HlMV4CR8DcCq8GIvPsImmFQSSYR9r1Q+I/J8bW7DoFoqyD6rZGX0atHkrVVsGzw7b5qEiSz4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WDz8nATkteAlEVHTSQJscJKtw2zifqj+Eeg7IK7JUYI=;
 b=F2wSLCJQu87sDg78f6XyQQfP0ny1nwplVNTLF1dxYNro55Xatckm1A1oDdGPM6GDAMMH5lgebgmIIVrktj83lWCRm2e6C68q1iA9a606FEpsNLb6VDb+3ghBf7Kq3Gexv2xPTktcgZt9PqR5pZ/PgytnvOoJGOzDO/dmvL4DW+AxIj8n9HkOLe0u2eua5FGzR2CMOJlVPGOIBHeCF6GQ/RVpZm92Nie6n8aXX95vHQ9qGxbDCYDjoLMfvepvoNgCjkrGRHJEJRsM9P/vdWp0nXT5yRlIVvMrVwO1F0FzdUfdX01MG0VU+RHC9sPlFpO1lXntztsZYnZ6X9t+2mzZnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by IA1PR11MB8149.namprd11.prod.outlook.com (2603:10b6:208:447::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.23; Thu, 10 Apr
 2025 14:00:54 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.8632.017; Thu, 10 Apr 2025
 14:00:54 +0000
Message-ID: <0f3a0ddf-8095-430c-a880-d5cab11b032e@intel.com>
Date: Thu, 10 Apr 2025 16:00:44 +0200
User-Agent: Mozilla Thunderbird
To: Leon Romanovsky <leon@kernel.org>
CC: Larysa Zaremba <larysa.zaremba@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Simon
 Horman" <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Jiri Pirko <jiri@resnulli.us>, "Tatyana
 Nikolova" <tatyana.e.nikolova@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, Michael Ellerman <mpe@ellerman.id.au>, Maciej
 Fijalkowski <maciej.fijalkowski@intel.com>, Lee Trager <lee@trager.us>,
 "Madhavan Srinivasan" <maddy@linux.ibm.com>, Sridhar Samudrala
 <sridhar.samudrala@intel.com>, Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 <netdev@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>, Emil Tantilov <emil.s.tantilov@intel.com>,
 "Madhu Chittim" <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>, 
 "Milena Olech" <milena.olech@intel.com>, <pavan.kumar.linga@intel.com>,
 "Singhai, Anjali" <anjali.singhai@intel.com>, Phani R Burra
 <phani.r.burra@intel.com>
References: <20250408124816.11584-1-larysa.zaremba@intel.com>
 <20250408124816.11584-6-larysa.zaremba@intel.com>
 <20250410082137.GO199604@unreal>
 <Z_ehEXmlEBREQWQM@soc-5CG4396X81.clients.intel.com>
 <20250410112349.GP199604@unreal>
 <c1ff0342-4fe9-44ec-a212-9f547e333a5e@intel.com>
 <20250410134443.GS199604@unreal>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20250410134443.GS199604@unreal>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR2P278CA0069.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:52::15) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|IA1PR11MB8149:EE_
X-MS-Office365-Filtering-Correlation-Id: 7ac0615c-4423-4bf9-29f6-08dd78381be4
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dFNRNDl5N3ZtbkVFKzhSM29ON2VFOGx4NGY5ZXU3OXM5dVkzNDV1SmdONkJi?=
 =?utf-8?B?V2FsNkp2OGZBVEllU1ZzMzk1dXZxUXp3Y3FCTGVDbDE0SXAwZ3pyRUorcmND?=
 =?utf-8?B?UWtjdHp2ZG9RQkFnb1pqUE56LzZVeWRGU0VlQ095OFA4Nmdad1FpeGo5ZS9Z?=
 =?utf-8?B?YUgvU0lYSFNLN2VxUTg1YVNmQ3Y0c0JkU3NlN0tYS0c4aXk3djRMZ1dHWENu?=
 =?utf-8?B?VElPaXljOU9Rd3UzWm9ZZ0w3RXdTck14bXB2R1lXUVNUVldaR1ZqVThUY2Qr?=
 =?utf-8?B?T3RRdHBwRWVjTng4L3lqb3E1SGwzSE5wa2ZOV0w3RUx1YVZqRW1pMHdzUC83?=
 =?utf-8?B?WTB2eVZMZXhDdklYc2RaRUFZVG9WZ3VyanFKeXBXWUdRZUxmK1dkNDJMTWxB?=
 =?utf-8?B?bVJwKzRZTXlxSHZvNDNxRnVNUFZYQlNsbDdDUlErdFJJM2lnVXUrekErTVZY?=
 =?utf-8?B?UkJFUWcxM0xTM1cxTGh6eGV4Q3JzUXgwa3IyZTIrYjE3clMxekZ5elN4a1RT?=
 =?utf-8?B?TVE0UGpja3RTd0lQb29NSG1PT1ZkNHVmY3o0UERLVmFQbHMxSThhd2NOVWN3?=
 =?utf-8?B?UTVpb1RQL2pnL2h1cXN4MXFBdi8zNzhlT0k0R0c4OWtRWVVON2dtT1k1cXhw?=
 =?utf-8?B?Yzl1T0J5bWVkaFBadVg4dS9aRHBtNDZDblhJZ2JReEF5K1ZsTXowbm82VGpl?=
 =?utf-8?B?T3lPN2NkVURFVzI2Wk1hcTJTclZzNXFWTWx2THRIMjBieFJQcXg2eFo4QjBJ?=
 =?utf-8?B?c0xNMndLcUdveUZqMm1pbDZmT2hIejZuaWo3V2tBSEtGQ1cyeHlkMDJQa1Az?=
 =?utf-8?B?eVc3cDA1TUlZL1FjRGZLWW1CWmRhTUJlbG1QYXY1Sm1nc3J2V3FnL0Z4RUFZ?=
 =?utf-8?B?VFNUaW5uMUwwQmhzaHg0Y2NRam9HS29SeGRRdzRXdE9OK2ViNWx2ZUMzc2kz?=
 =?utf-8?B?TGtpd0dSU3J1SjdZTjM2WlVJdDBld2hBSU1TcS81QmVsWnQzMlB5cUVLVGhV?=
 =?utf-8?B?NVBwV1FYT1J0MzdYTEZXQlJHcnhEci9PeW5pMVA1dUxweFRNdE5IU3JRT1JU?=
 =?utf-8?B?MmxabTBnR0VhdzdyNlRxZkEzT1psVUgrQm5QTmRlR05VRkpVdzVLMkFaMjlO?=
 =?utf-8?B?dTNJbHBIOTFaUDlKeEg4Um9PZDJWWmNIVGphZFlFV1BxQjV1UXg1R1ZHYmxM?=
 =?utf-8?B?QzdhZ2RvRER2M0ZXMEhLcEwvakRaNHJDanZTTi9sSjRncm55L082TTNQWHU1?=
 =?utf-8?B?ZXNzQ1ZRaU1CWUFxM1ZUcFdCeXFxVk9mcXZuWEZzUnU4dVhRaTA0bUo0dHBp?=
 =?utf-8?B?VzFsVU9lTk5oQ24zaGFZem1IY2krRnJQeUUwWVBGZWJCRWFLUDhpdEpGT2Fi?=
 =?utf-8?B?aTBNTTZvSzVJdFllVEYwQ0xBMUp0Z2M3SkJlMFp3TTJzQVlFbnZreTZZRW9W?=
 =?utf-8?B?aG1DK2ROQzJNWkZVUHRyR1NpYWQxMTB6NkZDWmFqRU1SQ0w1UHVrTUc5eEFB?=
 =?utf-8?B?Q0p2S3RIZ2tnQ1RmVTg4bnhDd25pSUtRUjk5d2hyaEpNN21wV1VFWk1YSkdQ?=
 =?utf-8?B?c293MWcwM2I3dTd5cEFwVWVwMm14c29KTjU1cHRQRGlzQjBjZ1dRcXB5RFJ1?=
 =?utf-8?B?eGtQQXEyaTZoc0g1czZpNmNVbTZEQVBPU2xhMm5NZEswRlhRdVlhVVBINUJs?=
 =?utf-8?B?NE5NS0JjR3hXRWp4TjJ6dlByWUFlWkdOVWJWcEI4VmhxT2dBaW1MS1d3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SzdKUDZGMW5HRThBWVZDVWZVbnZCMzg3VENNdFdLY09DTk94QjFFVVZNVXdK?=
 =?utf-8?B?Q09qdGFNZ2dGYVF0aWVXTzF3NGF2anRwOXdZam9nNlRFL0N1aFg1dGVvb2pQ?=
 =?utf-8?B?VTIwZTc1ZnI3MGRsUUJRSCtPNThab0hXdXBPV0l4RFRQaFZuZS9yVjNjdXc0?=
 =?utf-8?B?Rnh0NERrcnZkU3VTN3l3czRDUncwdVJZRmN6MXRyajFTZys2OVV0UTRpWFlQ?=
 =?utf-8?B?L0Nac093ekh5OExBcUZPRWpFbElsbEhsd3pmWnlXQzV5ZXlER2VjRWdpRTFN?=
 =?utf-8?B?STNwcHJlS3U4Z0pLRUFiUlNuSmd5Yzdqclp6TUFTMDZ2Y2k1SzRSdllUMTJk?=
 =?utf-8?B?VGxOaENteSttZFF1bEx0dzdBeWJnUHpkbW81Z2EvQlpRYmFrN245R3QwKzh1?=
 =?utf-8?B?S2F1aXFLZWs5UytCZGFET2xCWTR4d3FPNVNvLzNCZ3N0V0R5bVZUWjNGMEN2?=
 =?utf-8?B?cERpaUhrVGFzczZNRzRvN3pLODhnZ0ErSDNzU2JVWFZ6ZUJ6R1BFQ1gwbmRF?=
 =?utf-8?B?K09LQkFydlF0NlFPOTRLdHNld25ybHQwMGtVMy8yTE8yTU9UYmQwcXNwdi8v?=
 =?utf-8?B?NG9VZWdINEluWWtYdmdxZldoMCtTZFRvMEo4SUxSTHljYkFVbGk4T2xwRDNz?=
 =?utf-8?B?aitSaWg3MjJOYzREV09hWVROMUFob3BVQjJDbjh5NGVmMUFRaVJOei9CSkpw?=
 =?utf-8?B?VFZMcjBkUmsrTi9zYXROZlovQ2M3Vk1pc01OUjllVHl5c3hEUkZ4WVUvdE1Y?=
 =?utf-8?B?eGJTRWw3RjlhbmRabmIyNkVwZWZIblFoRDI0TTA1TkV0L01NVkR5U1lQT21p?=
 =?utf-8?B?QncrdnY1NmU3dm84R2N0cEsrWUl2Z0xoRHVhdTdXQytlRzVCbi9MZlFrMXZS?=
 =?utf-8?B?TGc1cTZndkhpSCt5N0swU0cyaVFrTU5ueTIrajhlU1VxcG9FYzI1ZDhRMWN0?=
 =?utf-8?B?TEIrQ2p5eVUyYjFjTFNDTElDQTFiVnlFMWJESTIvWGh1dCtvNVZLME5KVUgv?=
 =?utf-8?B?SWRwTXNhdG5KR3daTXpjWjVqR2o4bVJEOHJmYkgwUTU3Q29EbStNc2JOL1BZ?=
 =?utf-8?B?N2xiS2pLdktlTktIV24xUFBrNDEzRjlhRjE5d20xNnV2dllFOWxpVWRaZHZY?=
 =?utf-8?B?ZHh1emFwTU9IeEZzNHU2WG9CcThQYkpBNUhvMFVBY055cVcyU0ZMYTIyVEFS?=
 =?utf-8?B?RmRFT3Zxc0lHanVEY2RSd0ZZaGFEcGs1WmxJbXowa2JCcllWYmM1S3JhcHNm?=
 =?utf-8?B?ODVqWEdFZXlzb2svb2pZQkxsMmM3TC9TWHprQXR0T1FoOC9hbzdsZkNCeDZD?=
 =?utf-8?B?ZjdNSWNnTnNwTFYwVWJoWWYzbVYrTjZZcUkvMkJxTFJ2S2EvU01tMm1RYXFG?=
 =?utf-8?B?OTB6d2M1MVZTS0ZVU2NETGpGaU1TcHZVeU1XTVNTeVZkSkpRek5tOW12eitC?=
 =?utf-8?B?ekFxRDE0TGNiU2liWXB3U0dwMEZFcGV4aVRleDR4TGpkemU3SmI1WDRTdjBU?=
 =?utf-8?B?WSt4SE9wZko1eE9hODlva3RkTE92NlFqVXF1OExadWdtV3lRQWVjdTh4a1Y4?=
 =?utf-8?B?YTVlakZGdThlTjZMYlIxRnRKdGF5U1VQRW1rZkRpc3Faa1lnc0JQMWhZZGc4?=
 =?utf-8?B?NjZoc2duYy9GenFDN2ttSGhlZmovK2hwZC93VnJHSWZmNUtuampoVDdJTHZX?=
 =?utf-8?B?emtIVTdoY0xDbXIyN2V6aTFRNjNtUVNFT1IxZDN2TUtIY1E0THJhdTNremkv?=
 =?utf-8?B?RzAzRHdaNHRjZGZ0Y2JVdGtmcUZvZ3FKeEUvenBldVJKaGgwZ0dkd1U3ZkVY?=
 =?utf-8?B?SVkzOHJYTDBGQ3R5QzRLemNsRFVJUklURjdOSnR3Vm9oN2dKTGo5RERVWC9U?=
 =?utf-8?B?WXRkT0t6SWhGTlN5YWZ5eVRPaXM1MWd1UUVwWE0xa0Yyc0xjV0hVMHF5NnRH?=
 =?utf-8?B?bFVTWEIxTHI2UEM0S3UxMFlyREpFSStxZXU5amI0R2hzWjdkN1ZPMXBrKzU1?=
 =?utf-8?B?UTJVbzBCN0hnaU1XY2xkRHpRWE1VWjZNeFlDTTJGNUNxY1ZUeWN1eEh0dFhZ?=
 =?utf-8?B?VHFtSUpMaXZnTjNQTHVnVFp5Mm1MSnNIZ3p5RzE0OTYvQVVocmpuVnF0S1hp?=
 =?utf-8?B?c00zbTd4K042OGlDdGI1MlZrQ1ZvY0Y1QU52QnM3eEhnZUVDSmhWWmlqdlVL?=
 =?utf-8?B?Smc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ac0615c-4423-4bf9-29f6-08dd78381be4
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2025 14:00:54.2241 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0BfMmUtlPzc9NKOAyOeK6g2RHKEeAwGvPvD0GrKYOcb7zp7l5ddOdRR5wEu2mjHEoT6mEC8T1RtvBZ7JOW72s5pBp5fLMfNobvW6XqBYbqY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8149
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744293664; x=1775829664;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o+CeWSE1JRS2vUvO8bojev/Dz9UQlnb2MiwnQ3Ez5FQ=;
 b=cfITw8iegYxkT6I9Dw2u8Lqg+fR9/I8qZRjG/GAxoQvhevpjmXWQhN/W
 Ko5gHibFLL0QcBeQSzAJXsiE+EnrnVc3CBWw0nAcWz0TayT6YP2KOx9Mi
 RP4aoZDJNjQxrvVPOXSw0AQUeOuHnVOo9I2iGGNtWcQYEVp/7hYUdmzzr
 qX0di0+hsP2hPWmwIBgUWiBGYhr3Q/y7fnht4UF1Frp1vAP06ox2iFzod
 Xum8tECms9jDe7xjL67Poq9ARKpeTLxf0s8rTvGCUgiIxTWnYMn0mS66f
 I9wA6EOaHSvsP8GFk7beNDOMoexecb1RJifha6NNsBmX6QFeLvYbjLckO
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cfITw8ie
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 05/14] libeth: add control
 queue support
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

From: Leon Romanovsky <leon@kernel.org>
Date: Thu, 10 Apr 2025 16:44:43 +0300

> On Thu, Apr 10, 2025 at 03:05:19PM +0200, Alexander Lobakin wrote:
>> From: Leon Romanovsky <leon@kernel.org>
>> Date: Thu, 10 Apr 2025 14:23:49 +0300
>>
>>> On Thu, Apr 10, 2025 at 12:44:33PM +0200, Larysa Zaremba wrote:
>>>> On Thu, Apr 10, 2025 at 11:21:37AM +0300, Leon Romanovsky wrote:
>>>>> On Tue, Apr 08, 2025 at 02:47:51PM +0200, Larysa Zaremba wrote:
>>>>>> From: Phani R Burra <phani.r.burra@intel.com>
>>>>>>
>>>>>> Libeth will now support control queue setup and configuration APIs.
>>>>>> These are mainly used for mailbox communication between drivers and
>>>>>> control plane.
>>>>>>
>>>>>> Make use of the page pool support for managing controlq buffers.
> 
> <...>
> 
>>>> Module dependencies are as follows:
>>>>
>>>> libeth_rx and libeth_pci do not depend on other modules.
>>>> libeth_cp depends on both libeth_rx and libeth_pci.
>>>> idpf directly uses libeth_pci, libeth_rx and libeth_cp.
>>>> ixd directly uses libeth_cp and libeth_pci.
>>>
>>> You can do whatever module architecture for netdev devices, but if you
>>> plan to expose it to RDMA devices, I will vote against any deep layered
>>> module architecture for the drivers.
>>
>> No plans for RDMA there.
>>
>> Maybe link the whole kernel to one vmlinux then?
> 
> It seems that you didn't understand at all about what we are talking
> here. Please use the opportunity that you are working for the same
> company with Larysa and ask her offline. She understood perfectly about
> which modules we are talking.

She described to you how this looks like currently. No Larysa didn't
understand how scenarios like you described are possible.

> 
>>
>>>
>>> BTW, please add some Intel prefix to the modules names, they shouldn't
>>> be called in generic names like libeth, e.t.c
>>
>> Two modules with the same name can't exist within the kernel. libeth was
>> available and I haven't seen anyone wanting to take it. It's not common
>> at all to name a module starting with "lib".
> 
> Again, please talk with Larysa. ETH part is problematic in libeth name
> and not LIB.

Do you think we don't talk internally? I wouldn't write all this if
Larysa agreed with you or understood clearly what the problem is.

Don't make her responsible for your own words.
I've still noticed zero proofs for both topics.

As for libeth_, there are no generic code which would use this exact
prefix. Not "lib", not "eth", but whole "libeth".
There are no clear rules how to name or not name the modules. If it's
free and the subsys maintainers are fine, it's fine.

Thanks,
Olek
