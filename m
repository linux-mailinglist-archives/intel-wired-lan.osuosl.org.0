Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6DFA5E283
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 18:22:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D06784130A;
	Wed, 12 Mar 2025 17:22:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1SA25hZHzb9G; Wed, 12 Mar 2025 17:22:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 16FD941308
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741800143;
	bh=DwL83zbxZePN75NIyjyhsKrbk7g4gZZkvtgejudToq0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=J2ucLGZDG4y5iuie9XyxJYS9YRytPMn7rYpWXIUdGk9C+mpaFAfLLQCH2z0nwzBu1
	 xpK3Vnywb+Qx64W9PgunKLnErNMuZd5Yr6M4Mu76v3qxAI6+Y+eFGRpb35+eYKFl5w
	 63t2+3Rvj3M+hbst/8MXAVaHk6hEYqa6/N1TDccOBviCEPAxniTm2iTAop/gBNE350
	 NCkXynusnWPaPAoi7eEU2UVxjYv17h7Q1zjs3ixyNiNadFC6xmkijLKUKcBC9CIu0Z
	 lnh5ZotLsDkzzrnBkV7hmo/O3NQjrUtpyw7AFdTxjplolnlQ7P3JZ+sf+3OzNec4QE
	 AiJf2SBrMq+9Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 16FD941308;
	Wed, 12 Mar 2025 17:22:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 502AF128
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 17:22:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3FBBC412FB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 17:22:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wv7niTOXa9RR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 17:22:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 20FC4412FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 20FC4412FE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 20FC4412FE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 17:22:17 +0000 (UTC)
X-CSE-ConnectionGUID: t3kBPY+RSNWnMUSBmvhRQg==
X-CSE-MsgGUID: Tr1Yucs2SuiDmh5TQvT9yA==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="46542315"
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="46542315"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 10:22:16 -0700
X-CSE-ConnectionGUID: xw4GwzhnRySiGgwE7h8MQg==
X-CSE-MsgGUID: 6LdvLrcGS9GtDLZDyPB1yQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="121202090"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Mar 2025 10:22:16 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 12 Mar 2025 10:22:15 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 12 Mar 2025 10:22:15 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Mar 2025 10:22:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ByjuQ976yDWxGjxHZbnn8BvmYlNfgxjlrsH6m7M9mfy5EwPrGsQaGCsODeIsVEdmK/EiImTP1MFIK1rcEJyvN53ODHdpEI3QJgrfj1PVWOEZAe73OSTHcwjLOC8xqToOdpQrvUtz0Vg4gbKkXv4B+4utYV/mb7AF4Rhzp9otcYg6pBewg67EiHvjSACpu4NrKozdA6yOpFO9r6CV5pNmovHz8vJIbl76jfDaQ0v8KLdK41vhn7pNmD3SChACsw0GCdTSsdGOCcdcfejoIHOjj19gLAAOYrlXns7x3hPDJw00nbe3xiCU0epvVDPaomBudemDTcYIyU0Fcm3C+Bqm4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DwL83zbxZePN75NIyjyhsKrbk7g4gZZkvtgejudToq0=;
 b=UeodBpE+dUKV0jmqqlODU0/7DdDHgcBW8lV0OKF+LFMv4M8gNGJuUnzMNAFt6vCbERbxxu7MhqKzyVTbxcQDdV8qpeitx7Bq7oukOg9qNlA4d+n/2Yap9Hb2hQyCeAxSf/1MZnzzfF8JtgsCCJR1eKYvAgOezOYA7hgkVsUu9KVMrlFqhgXyg5TROsTcXCujDpd41JEi3aAPh6gHhp78Fl8uVnOGbe6TkOXImMKOP/aPyEtRkkDQbEj/dMFnZ7Q+CcVgSYX/rU96vgRXQN+JmQP8Ar2papQ6rOTv02Z3iqJpSOyUCqBa7Vxpc1CQkVb3O5nVLdTm1x5iUHX0oP5Rig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH0PR11MB5112.namprd11.prod.outlook.com (2603:10b6:510:3b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.28; Wed, 12 Mar
 2025 17:22:12 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 17:22:12 +0000
Message-ID: <ae42f7a3-10dd-4b5a-8bd0-fbab0148a419@intel.com>
Date: Wed, 12 Mar 2025 18:22:06 +0100
User-Agent: Mozilla Thunderbird
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, Michal Kubiak
 <michal.kubiak@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "Przemek
 Kitszel" <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 "Jesper Dangaard Brouer" <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Simon Horman <horms@kernel.org>,
 <bpf@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
 <20250305162132.1106080-7-aleksander.lobakin@intel.com>
 <Z8rLLwZlRACyA49U@boxer>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <Z8rLLwZlRACyA49U@boxer>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI1P293CA0018.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:3::12) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH0PR11MB5112:EE_
X-MS-Office365-Filtering-Correlation-Id: 9d21e701-a67b-43bc-9459-08dd618a6d2c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NmlzL3QvSENkUjVMVG9aOGp0ejAxdERyaHFGNklwWUNld0tMa0k5cFNPUTJO?=
 =?utf-8?B?aUpVTEdyMkdyTEpSWWtOWXlUV1BXVHNQTXBKcWhCZWtwVFl4eXlQSThjU1pB?=
 =?utf-8?B?TEZRYVVZbnk3cml5cS85QkN3TzZROFpRZkxNTFI1TnJmWFl6dHZlV1p5Tm9T?=
 =?utf-8?B?NE9pNytNTU1VN1pzMlVjdE1YM2UwcC9ZTVZDNUNHd3UxMWZRWUVpRWZLN3Zp?=
 =?utf-8?B?OVlrUnYzQlY1WG9abVdqTm1QdVpSSTZ4RjdMQjBNUnc0T25VMUt6MDBhNDZo?=
 =?utf-8?B?ek83RjVGWmIyZUtnL01RQURWSUtRNjJTQVkvdDc0bzZFV1B1dHlrUVFlQjJM?=
 =?utf-8?B?N3hSYzI0bDBSY2lydUg2YkR4Q0tuNWtwVTRKamx6dVdhYXREYjBZTXFTSWRY?=
 =?utf-8?B?RFhldnlJRmZmckFza1J2V3dLbFJhSTdvWGJCUzlHT1k5bVZWWmc0Q2dXSVZF?=
 =?utf-8?B?VU5DY2wwSjBVWUlBbG8wV3JESEpXNC85RWc0TWlieGhpbHRVTjFtR0RMeFAr?=
 =?utf-8?B?ZC9VNDdzOEdKbmtlWHlSNGhPaFNuT2R4aXN2R3pnN3RTazBGZHYvRkRCVXR0?=
 =?utf-8?B?cGRKS1E3VkhERzUyL0txSUxEd1VhZlEvVjRTR2Q3U2NmY3pMNTluc2QyQ0VH?=
 =?utf-8?B?bC9PeDdSQVZuS3NlRDhkSXNQNHBJalZTaUxqdVE3QmVzV056dzc1NlU0YTZS?=
 =?utf-8?B?QkEvM3F5cVJvenEybVpzRXlNYm5lcEx0TXUzelA3TWFzNThvUlBXZE50YWxh?=
 =?utf-8?B?eTZoVDFmbnlPcnBycjhaR085MGN3TmdGRXNISmZsZkxLYzlGbFVFTmJwbUt5?=
 =?utf-8?B?SzJDOHU5dEI0K0haUHo5OCszd2NZWlp4R0xqdTR0ZlhDSUFyY3VxRXhCRjBw?=
 =?utf-8?B?WmNva2s1dUYvOU40UnJWR1lYbWF1Vm8rVTNpeFBxMlc0VVF0Q2FXZktrR1hD?=
 =?utf-8?B?S0ZSTlhRb0lyS2xWeFlMNHdrMElGVUk5Q2UweUlKdDVULzVITTY1aWdGdXVG?=
 =?utf-8?B?RkVKQjRsQkNUaXFUZDQ5citqQ29ESXBVdWlINzV3dGVWUWtQL01qTFpLa3BY?=
 =?utf-8?B?RUNKT0oxQzNCSTlsenBSV1FWOHBMc3MrT1lvTlZUYXd4dW9zQnluVjQwb2RJ?=
 =?utf-8?B?TmpLUGxkK3pIV3pROGZxYXNKRXU1bzlJR1BxSWJWYzFLZ0tTNXJheFB4M1d2?=
 =?utf-8?B?eGpDc2NoM3l6U2UrR1cxMXJuaG5Ca2gyaVNJMEpaSlFWNWxMU3JwWUQyVTY3?=
 =?utf-8?B?WUNOaEV1RS9pWnBvaTNLRGFjRERSNTF3YXlxQVByWVRVdkNkNGYraUJsRkZs?=
 =?utf-8?B?S0FnK1FzZmZQdlRVcGlPWEo2NjI3amUzaG1NazVEOWw2SmxicTJqV1FrMnN5?=
 =?utf-8?B?VXp5S3FrN1lQcnRUMm9KTjVGdnhWVitieGczZm1neHVMeWVLcXZHUjlqSExX?=
 =?utf-8?B?enZxOVpmc1ZlMlYvS29wenV0LzhCZXQ0RUZ0UHJueEFQSVlwZWJ6RzhGZnJ3?=
 =?utf-8?B?UVFVR1J5dFJIZXRuVFZUV2ZKQ2IxWGZyOHZpWHpjbU9FZjR2TkRkVGZEOHJa?=
 =?utf-8?B?ZUpXdUxvMVY5MUlEM0hndVVYUUhvU2x3MjB3cVEzcGVQb29sa3REQThRQXZq?=
 =?utf-8?B?WDFIVXl2SVl3clRuSHdxWlNnQjNRS2JvaEdjZmtpaUVoZUo2OWhmWFhneGZP?=
 =?utf-8?B?ckxkeGdreUZ5THZMN0JTN0hld1pXaHprN2k0bng5aXNtdXordW5HOURBczR0?=
 =?utf-8?B?azZZMUs2UnNBWlFDT29VQlFSUENuNGhuV0JlZDZ4d0E3SitWRENXSElBNnMr?=
 =?utf-8?B?SmJaQTJqb0ptVHpyRmtzMno1aUdPeEc0UkpmWC85MFRtb0QzSHY5Y0dQRFNo?=
 =?utf-8?Q?lEADhtE8FqA4r?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UlU5OEp6Y3RWcXN2c1VTS0RVdmNIU095RFl3MlVZei9sZ3pCeVE0cUoxUU0x?=
 =?utf-8?B?VkdoY1RwbFRKNm5wT2dHSkhkdW5lWkJ0UjhHL0pBbUNsaGFxcmQxZWZ0Y3Yv?=
 =?utf-8?B?Wi9MK1RvQmtkcW80MjUwd1hLMFk2TTRqc0x1YVpMK2ZYSlVSVzJoUHJzb3dF?=
 =?utf-8?B?QjhuTGtJYWZyWUlqdXljMzZJNU0yYkcxVUU4WGN2WUlMUVI0VngzL01WRGdu?=
 =?utf-8?B?UlJJdnJrWjNNd3ozcko0OWFBY0JyM0gxS280WEJEaGo5NEgwQkVkM2d5NUJZ?=
 =?utf-8?B?Z0s3NGFmUGlDQ01lbHd2QjVqYkljQ09KOG12TmUxYTNwRXNhODJQdW5ydXJF?=
 =?utf-8?B?YVNBOVZXeW03djNZL2g5SDNzYkJ3UkUzWU9ycmVSRk1abzRuVFpKTFF1cXVU?=
 =?utf-8?B?WWx5SGFZejNpUUd0MG1UNXBtenJhMkxySjVhVWxxKzZIS2d2RHBPN3I0WWMr?=
 =?utf-8?B?S2tIRzYxditDSDkvbFFRWVF0WkRpUDdaNTdDdVozQVYzQVVhYzcvcEZLTFdF?=
 =?utf-8?B?RW50NXFMZWVvZ0h6RlpLdTJJWGllbFVmMEJWNGZMQ1pEbHlBRFA0RHYyeW5y?=
 =?utf-8?B?YWhyYXpzOW9nTWw4eVZBaThBN1V2SHgva3J1VjI2UU9hVHpNdzVSRDJQc0xX?=
 =?utf-8?B?TDhFYmJ4d0Y4NHJsejQ3TnVPUzVxRnBKSTRRcTZTOHVQMXROcmdudjJZSUMv?=
 =?utf-8?B?d2tWNnV1K2RNSk1XOUROMzFpUW1RZUNTdzJiYjdBcy9qc2dDUkFmbWQvQXF5?=
 =?utf-8?B?TFFyS1ZGT0tCREtiTStWSWdGWXplelJnUkl3MnpzOGdDUTFKZndNWFpXM0No?=
 =?utf-8?B?SFpyT0EremF4UFdsQ1NJT3krSEtJbnZYUGpkMmlnbEpXTURwcDlPQVk5ZjBj?=
 =?utf-8?B?dW9uZGRRT2o0bm4rd3hrSzVpQmJmb01wRm5mTFA4OWpXM1VyU2p5MndmV3lF?=
 =?utf-8?B?U2hHYUh0bUY5ZzUwREg5NC9PdEthWnB4QURjdGs5QkFpVklyK3RyUVFucEhq?=
 =?utf-8?B?MGVtMVl3ZDQ2U1hFdVZlTXp3T1FWWkhKRk1rU0lMSmhmNXUyTVRCb3F2RnNT?=
 =?utf-8?B?OUloUVlUbTJteVFpREQ5REMvMFhqeXBVVWgyVTQ5YUpQUjZORmNpWFc5elk1?=
 =?utf-8?B?MUF4bkFuZndaTGdCNjdPNEFvU2sybUN6anJLbExodUZ2aFBHcnE5T1pxQ2lx?=
 =?utf-8?B?QnowekxJRjNIK0x5aDJXc21zZUtDRGp5bVpZMG9vMXdMalRJZ2hTT2FhUEJP?=
 =?utf-8?B?Q0JxSk1zeWthTlhkTmFYU2ZzZHNLQlRaTHQyY3IvQktaVTV0dks3VHZZbHJo?=
 =?utf-8?B?WTg4MzFZdHpsWnFhRVA3M3JJWWhOL0hxcWdFQW15SmxFeXVoak1TcG1WL2Vj?=
 =?utf-8?B?ODZIelpUYWQxTEFBa1BNYVdrR0RPelcvcUM3TmdqMXpMT0xKTEVGczhsakww?=
 =?utf-8?B?cFYvWStPcElzZjVIWFVySUNaN29WQ01wdFk0TWUwVCtjNUdsNnN3a1pMdEMw?=
 =?utf-8?B?TGpGZmZKNXJnS3V4dllvSjZKOVZHYjhIZnYxQUhRNEVzSlZwdHpNeldXVStL?=
 =?utf-8?B?eEN0NHdZU1k4MkNuWDRCcG8xUmdKWEM0enM0MWR2TXpxcDh2RGJ5eVhnaEkv?=
 =?utf-8?B?dXl5bWlGWmZPak9TYytsWUpXY1Roek5ncEpPdktvVDJ3QStGWDFHc0NTMWJz?=
 =?utf-8?B?OU9pUnNRZGhSSGJRdVJlcUk1YWdoRkJZSUJOUzdXOWhyVWNlVUFMOU1MdFd3?=
 =?utf-8?B?QnhtQktyOEV0bUsraEt3NzUvMytsTmcxV1VZVkFiZDNleC9OMkNWbDd4eVg0?=
 =?utf-8?B?Unl0a25JdWphZ2Nqa3FBcG9iQWFsa3JORmFRVXVvczVDZmFlU25QSzIxczJP?=
 =?utf-8?B?SjRGeFFPQmxnU3Fadm56dGxhbGlKelFHYmZoK3Z5WU1seE5xWlk3dTJMenda?=
 =?utf-8?B?UGkxbUNPRko0em5vR0toSEROYmJaU2VVZm96NmxEYTJ2SHNLeFI4dHpnZXRo?=
 =?utf-8?B?SU9peXZXdklPclIwNHVpRFBrTnNMVWh5VWV4Zk93dit4QnJLR1IyTXA2eGRN?=
 =?utf-8?B?VWFCREdZM0tsYlZ6dU04OEpLaVpRTWhmZTBQTTNaMmk2eWk0dFZGZWEyNEV4?=
 =?utf-8?B?WjZnZ2Z3bUlvWDlXdVRSQWw4OXFVcUtXRG4vTGpBemNHS05mT2VuL0NXNWNP?=
 =?utf-8?B?N1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d21e701-a67b-43bc-9459-08dd618a6d2c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2025 17:22:12.4154 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z02UdseMT/38T7GOIaKIsg9QLC03zCw/k4GfHRViP1GMNp15gYMkv0b69ZdSlB6gsMJpmdamL8CjO/63d6zW+IFUWaBGs3YBkEGHuUgXQlM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5112
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741800139; x=1773336139;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1pXgbsNxKRbEPGmvwj8dxW1vpp8nl1mC7gUAiZPnGyg=;
 b=STRQy29IHUbiDs/+6GQybY7ecdw4hcDrPaeYi+secXxTfwJFlBJVvtwK
 xCJtkmMDpcjaF84dM9THkdluwfawo5cIS6MTqmA4gH+2Yzgc5h9A5ju1s
 YVJupXp3o/UUTlZY4tXCYhlcWMHODeVHuwFiO89NhmvvdeMpN1J8O6+VW
 zgQXQ5F+JCyuS3sgqgps00U+ASmnR1cCApVe2cMeoAIX2EOL+QemSK2vV
 fSvUs4BpLpuBMnmUN4QWBSzkDKnR3+/Y1tNj6KI3cvtvYjQCWJhwApWcg
 WKdUULEipy8nKbbJYpiGRyO/qvokRJH7BoizB8zbOxShfqs7oOSlSs1cU
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=STRQy29I
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 06/16] idpf: a use saner
 limit for default number of queues to allocate
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

From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Fri, 7 Mar 2025 11:32:15 +0100

> On Wed, Mar 05, 2025 at 05:21:22PM +0100, Alexander Lobakin wrote:
>> Currently, the maximum number of queues available for one vport is 16.
>> This is hardcoded, but then the function calculating the optimal number
>> of queues takes min(16, num_online_cpus()).
>> On order to be able to allocate more queues, which will be then used for
> 
> nit: s/On/In

Also "use a saner limit", not "a use saner limit" in the subject =\

> 
>> XDP, stop hardcoding 16 and rely on what the device gives us. Instead of
>> num_online_cpus(), which is considered suboptimal since at least 2013,
>> use netif_get_num_default_rss_queues() to still have free queues in the
>> pool.
> 
> Should we update older drivers as well?

That would be good.

For idpf, this is particularly important since the current logic eats
128 Tx queues for skb traffic on my Xeon out of 256 available by default
(per vport). On a 256-thread system, it would eat the whole limit,
leaving nothing for XDP >_< ice doesn't have a per-port limit IIRC.

> 
>> nr_cpu_ids number of Tx queues are needed only for lockless XDP sending,
>> the regular stack doesn't benefit from that anyhow.
>> On a 128-thread Xeon, this now gives me 32 regular Tx queues and leaves
>> 224 free for XDP (128 of which will handle XDP_TX, .ndo_xdp_xmit(), and
>> XSk xmit when enabled).

Thanks,
Olek
