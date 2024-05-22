Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05EF08CC64B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 May 2024 20:25:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7179E4018F;
	Wed, 22 May 2024 18:25:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RNZxe5l3wd7X; Wed, 22 May 2024 18:25:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44E57402E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716402351;
	bh=xZ6Eocav1adzqGIBWU5TptBv6wxYf7nk5S0LD+MEgJ4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rI0+GHbb9uyf/PqamQJzVkzhgsr4VQTX8xDItiMckuoyvoN4UVg9K1aLgypZhHfGp
	 dFBKDrLwf8vmYCKBGN3d5KsS/NcHgodEboZNNyb2IbXR6OYNawV41gzOCgO6yb0LSq
	 tPLxd2CDnS2fx6k4Ji6EEPepVoenqJ6kmpdQ8I9duQLM46A0FcGjliCcJJdT95aNlL
	 B2KCxXmP+FsjdQ7wZxadQztYp+LrPUG5XLUojQmK+2z83ANWE7p7fe8jYC6AvA1EdG
	 A7UES7UpeRIc/Zf6UWkozIVBLAc4CJqxM1gSXr43B8tDzdunGwy8MwY7J814wyUcVr
	 qMYdbti0VE5eA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 44E57402E6;
	Wed, 22 May 2024 18:25:51 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1D2101C5E4D
 for <intel-wired-lan@osuosl.org>; Wed, 22 May 2024 18:25:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1527640188
 for <intel-wired-lan@osuosl.org>; Wed, 22 May 2024 18:25:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rw8NrOA9uBFc for <intel-wired-lan@osuosl.org>;
 Wed, 22 May 2024 18:25:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E5329400BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E5329400BA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E5329400BA
 for <intel-wired-lan@osuosl.org>; Wed, 22 May 2024 18:25:46 +0000 (UTC)
X-CSE-ConnectionGUID: QPuoXIRaTV+fBGR1b/HOiQ==
X-CSE-MsgGUID: D14JkRw/RG2s4W9uOqrtjg==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="12795735"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="12795735"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 11:25:46 -0700
X-CSE-ConnectionGUID: 9og4YXsWTl6dLS/AGJ304Q==
X-CSE-MsgGUID: 39gB+eYlS7WR+oADMjdgLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="37959775"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 May 2024 11:25:45 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 22 May 2024 11:25:45 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 22 May 2024 11:25:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 22 May 2024 11:25:44 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 22 May 2024 11:25:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hFr2vsycusv7H+7CsV71WZkehCYMSgUIfIfMDzknbZkPY8Gw6ADh0a4jjQrDAPi6olgoo/76eWyecqgJ5d9d9+P1Y0d3zbu+x5UQ6GOny2eWfS/E4JFzozaUq9sIWLD/ZntnVJGGrQgg1BDNpfmcCC29owCRPhpH1Uf2V5aWj6iYI4OxEIrm3Tyy+8IBQQP1PtkH5BstUEneH2Eb9u+ei9fzlmqj8M1OLrhtsLTDwUED783e26sjr85NBmkIIFFK65uGDZeO0SE3Ulf9IiD+VYyEsONGpfWzHL164top+y8hjfbBYjBJVEThdQgaDBJoJMhfIENFJE/plUtH4u1GwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xZ6Eocav1adzqGIBWU5TptBv6wxYf7nk5S0LD+MEgJ4=;
 b=UoC8OSY59jN4kPmvnUbgxtX6ryGDIqdLdb9mdXeHlD5uqTA5eT3kfhczl5gqBm1Lxut69FzPa85QTZ+2PxnkyMUzjtYzei+nI5wyp59v9b897QBPEV6jAFxBeMfUfKfO3YvoZgbFDOnPCU1XVplXPyL2vyD+/KgP1E7uTsphY6QGYqOhhIx4OZqA3bRTpKxK6b544XcLmlKNELnCibWvbY2L3eKfh4ZT+PAkNZbIO78n9Z93K+eydX6MiVy58kduECNqqNfz8MzhWFrV6+ke0IIttnEwP0EN7aK16q0Y9ApGvBvPXNzzxJMac0FAzj77ek5awfOoWQn7thOfW6A8Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.19; Wed, 22 May
 2024 18:25:41 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7587.035; Wed, 22 May 2024
 18:25:41 +0000
Message-ID: <555e60a3-af43-4d57-945a-c29a9c0096ee@intel.com>
Date: Wed, 22 May 2024 11:25:40 -0700
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@osuosl.org>
References: <20240520-iwl-net-2024-05-16-fix-css-hdr-len-v1-1-7607a0752b07@intel.com>
 <04eb421b-fe87-494c-927c-0436bdc68c75@molgen.mpg.de>
 <edc0bfa4-7aa5-46b6-929a-7bfe8009b0a7@intel.com>
 <3d98a74c-8813-4008-b473-cd560c4dd75a@molgen.mpg.de>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <3d98a74c-8813-4008-b473-cd560c4dd75a@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0284.namprd03.prod.outlook.com
 (2603:10b6:303:b5::19) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS0PR11MB7579:EE_
X-MS-Office365-Filtering-Correlation-Id: e6501810-68a4-4ca0-d52b-08dc7a8c9650
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?akZqWUtad3FOVUdSVTErV3BUc0t2eUZRK2tRMXZLM1g2Zk1YcmprU0l6SnNK?=
 =?utf-8?B?c0M1MWVOdjhuUlpKQkpMQitqWHNpUTc0SWNnUDRqQ29PVUdxcUd0czdZd21n?=
 =?utf-8?B?YUpDZ0tabksvZm4zREZ4WXN1Ri9LS20vd09HNXV0KzZQemNJeFhCei8wWVV6?=
 =?utf-8?B?TlZxNXlXRUNZdm0yaXNLSTVVdGwrVEwybHJ5UGJKYUw1cXVMc0pvTFBxSXVx?=
 =?utf-8?B?R05YMUhKRldmdDhaSndnQWdrN3p0eXZUQTFKQlhOVktNZGM0c3VubUJSRm5W?=
 =?utf-8?B?bkYxOTJaTVVhRlBKVFhFR05IdlZGdm1qeHFXcWZRV2daRjQwNnJUK3lWMzBq?=
 =?utf-8?B?cXpYVGVjV2pna1E1b3JRQWk3cXlYSytHSkhTdnBzZnZ2REpoODhyMTVWQW9t?=
 =?utf-8?B?ZGVNWlhER1RyUGkvL0tPUVQwUi9icmVPS3Yyd2lpQnlRSWQ1cmVEVythaUQr?=
 =?utf-8?B?ZU0rRU1ibWREZkhCTWY4cDdJR0wwNHUyUHQrdzg2Z01EdXp6NTdlWTlXOXV4?=
 =?utf-8?B?S0Zia3k3Sk9NbjJyTjJvdkJXK0EyTmtwenVWaXJCd3Z2QUEveWtnQmpST3d4?=
 =?utf-8?B?enFSRHhFY2svVG9ERGNGK1QzUU14S1YxY3NUaDRpckdyb0VXM2Z3WFMwbjVr?=
 =?utf-8?B?SzkwUHlsTGtTMzBPSlo1MHczd0xaMWpvSEFFWjhUSWtuZDdCQWlIWS9xRVVO?=
 =?utf-8?B?RGZITUJ6dGJHdjRoYVpwNEx6VGlDV1VUckw3UytBdjZYNkNlNTFLYlNRR2ZZ?=
 =?utf-8?B?K25CYWdsOGVhbEJhMDkwV0NOU2ZkNnZQT1hnL2tkOTlnK0VBYU9JMWZCRm4x?=
 =?utf-8?B?Yjk2cG9MaUlrcVE5dTVCUXVQNE5yR2dqbUxOV2JqZVFFUEFuVGtKODZjVDBs?=
 =?utf-8?B?WkVOUm5MYmEyNmRUMWNSSGhpeWo5VzFiaVJuOElSMjVocmVZTzNMSjZGM3lp?=
 =?utf-8?B?dWpNRTNkRkNPc0k2WThyUW9lMUVBMjNqUC9TZDBVYkxyODY4dks2WnBDazVJ?=
 =?utf-8?B?YWorZEs4RExIbEFpUzFZeXpvR1RhZ1V2OW1MUmkvSXJjZS9rb3lNeE5NRW1X?=
 =?utf-8?B?OHFxL05hK2JkZDZLa0JOcW15MlBGT01aNzAyYmVZU1ZEaGl2TGpSelJZRWtx?=
 =?utf-8?B?eTMxdmlTbHArQUNHZFk3b09DVC9DdmRRL05PU1dobCswMHA0bHk3TC8wZkdP?=
 =?utf-8?B?R1ZUV1p1UDdnMFR4UzlBM1lxV2haNmc2T2FLcDhNeDBGcFlZVmUvZTYvS1RG?=
 =?utf-8?B?OGwwVERlWldOZ1lINnlEUW5UbEM2Y1NuT054aDR4TFVlemhmbGp5L01IVDYx?=
 =?utf-8?B?NVBiVTZLT1FOYm5TRGVvSXREVnE5RWdPRHNEQkYrZkpOVzQrQXBSZ0ZqK1Fx?=
 =?utf-8?B?MlRjRE11a21Dd2U0R05nQ2Ftb3dlc1kvVWxtNmpZTjE2bnlQaW5DL3RLMTc1?=
 =?utf-8?B?N2l3c1lNbTFzQ2lUeGVHYlQ4TWpDZlM2NnZBZ3FhNy8yamR4dEQ5QU1wVWpF?=
 =?utf-8?B?eGpJMU1tYm50UkNRMG1MdXl0aENOZGJrWmZ2dUJuQm9vM3o2NGtPZWk5YmtF?=
 =?utf-8?B?MEJXVXg2MUViZEhWQW1vcmdDdENpSXN5SUxKeHE4VlQ3MjU2Y05VSTNYWTVI?=
 =?utf-8?B?TnRMd0R3RS90eWltMGRZQlFEZ1BMRGdXZWNINEdmcit0N0x3cUtVY1pUWEJw?=
 =?utf-8?B?YjVnZGg3VGM0VW1reGVhQUFNeDQ5VncwcmJuYWtoYXdFYllObFV3VFV3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OG50RjQ3YUZVa3FPNG1sVVoxWVo5WkdUV0V2SzFZZElVVERiWVdlM1pvRDJy?=
 =?utf-8?B?em1CdFFPeVkzS0hzQUtGTmpINGMyRDVac1NPZ3BKOHZDVzU3Wlhab3hjU0FY?=
 =?utf-8?B?U3Z5a0pENlR5bFdGMURrc3Vya25CNnB0eGF1OFVrMFpCMTJ2Vk9PVlh5cUhz?=
 =?utf-8?B?QW1kaFBqb3UzK3NWN1FDVFFvbFJyZDJML0JqbXdkSXB0Q0Qza1pMdU14N01x?=
 =?utf-8?B?dWJ1cnFyTnlCS1hqaE16NmFneFNjNjF6WHFPdHNpL2kwWEd4NWRNSk83TFNU?=
 =?utf-8?B?T2IzZ2FaTEZqYVQ3Nk16eU9DYzVMRUlWWVVwRjJqQXBEVTBUaTZDM2tmeTZk?=
 =?utf-8?B?ZTNod1hWelZYVDZ0OG1BOXE5VVZXRDhuaXFybWVERnpjNnBJYndhMEljd1JV?=
 =?utf-8?B?VmpTOUprQjFsSWlIc3dyVVp6Wjg1UXIwZWJxYkFNY3NMemJsdkxTMjF1UDJ3?=
 =?utf-8?B?VlBqQWZPZ1VlQ05jazQyWlV5bmZOV3diV0syU0RHRC9kTUE4azBMNkFhSFQ5?=
 =?utf-8?B?d2dhV0tQeUJNNDZmUWUyREFPOWorSCt0VHh6aFhLV1ZTL0R5SDZ1RzUrdEo2?=
 =?utf-8?B?alBiODVrd3hyQm9TeUxYUzRtL2JWcXhxMXcybnJaaXlOMDhGOWtOZ1FTZEhy?=
 =?utf-8?B?elpGZmdXVzl3SStyWjZIbDMxOE4ySE80a2Y2ZVFOQUR5U1daT0I4djc3dCtv?=
 =?utf-8?B?Sm9DRnRXNzJDL2hjaFBmR3dxcDIzbzh0YmIzdFREYzMxY05uay9KYjV0VkF5?=
 =?utf-8?B?RTF4MS9ML3MvazhsdkxkbjlrNW9YSWdqNE4xNXVTSHh0Tng0aUJCL1NlazlT?=
 =?utf-8?B?Wm9uRWd2OXFDdm1UMXJIc2Rtb0o4RStUUDFiUFlnMStTbWtDR3pIZ0hIaGpm?=
 =?utf-8?B?NUVlV1pnMzgrNkw0OWlIeU1sMHNkU0xzR2ovbHdRSUZCMWFVcjBOSlFDbjhO?=
 =?utf-8?B?ZmVpZURwdHkzWTVjcFJ3WGVLeHVaT0tzOVFhVFVxd0pYZXVnRDVPQXovWFE1?=
 =?utf-8?B?TFVBSDZ2RTlSR2g0cmlEakpaRHlvWitiYjVtZjZZUHNMVWNhN3RpMkpHSExu?=
 =?utf-8?B?NDRlTlhWWXVtZVVlQ2dqRnFIb1BxQ2RMM2NjME40SjZPRk8xbnhlRXhvMlNL?=
 =?utf-8?B?V2Vua0xyTHhaM3JzVXhRYlhGS3VGMytvKzRMb2E3d2t2Y1M5UGZYUVJWbDJB?=
 =?utf-8?B?Z2R5OEhXVEtlUnBsZXV0b1VNZjdFaFlDZlNNQTIrdGhvN3NpYjBjVHZpRDRk?=
 =?utf-8?B?YnFxVFFQdm5wMDZ2OTdudURzcDl0alJFM1kxMHkrQnpZYnJGNkhNZWVuL3Ry?=
 =?utf-8?B?elpRaUFZQkNrd0l0VythM3BWOU96anVsejFHWEJyQ01nMWx6b3M2SndXY2Zv?=
 =?utf-8?B?NDdnbUlFelJTbXdXczh3dml4OHdjMWJwSG9wM2ZkaUJWdXJTYi9LQzFFYVNj?=
 =?utf-8?B?TXBxVTRHbUlxV2FkSERHMTBhRHJRRkdJMjFLQ3RpVExOWDJmeWxmQysxVGR3?=
 =?utf-8?B?bFJzeTNEamM5RDBoWFZMb1dGbUI3UmJ1SzdkVVR4TGNVV2cxbHNHUzZMdW56?=
 =?utf-8?B?NGVJa1RQVzZrRGVsdnYveE9nc1NaOE84YmdXV2hwMDZ5d1lMVDZyQzRJQXdR?=
 =?utf-8?B?dnRUemlNNGJPYmpRb1RSQWxvejh4TENvVENKZXdjbkkwbkl2Q1h0MDR1ZCtC?=
 =?utf-8?B?TjJOR1kxMXloSGdrRHU3Y2FiNkMzSFY4YlB6ek1PelFxS3ZndDRsa3RVaDR2?=
 =?utf-8?B?NE9XVUZ0YSsrelZYUVEzTG1iQ25LdC9VaExaa1FGWkk4cGJOYitDWktpdTJa?=
 =?utf-8?B?U2JCS0RGVTBLbTZRVFBja1hXczBBRTNyUVdlV3dxdDVXV2FtaVhIRkVmVHhV?=
 =?utf-8?B?TTI1dGNGdHZvSVk2SW0xMmgzemRDYzVRWlVTSUU2VHNlSFVXZE5XSWZ5WUhL?=
 =?utf-8?B?bTB6aUxYZElXYTVyMDV6QjgyZ0VZYjgxcUlhSFNhMTAxVlVRMHB0ZVJuQTVq?=
 =?utf-8?B?NllacitxNHdhVnNML2hiRVViQnlPc20vNnk1VElrK2RXekdpMkgxS2crOWZh?=
 =?utf-8?B?UGRiV0pOWFNtMElwTGp5eElrOWtDd0phSlYycCsyWDVncE1nZE4yWE1YNnVs?=
 =?utf-8?B?V0xUOXZ2SUMyU1lUTWl4OXlqUTZrNjd6d0pvVjlHTWpNUmYvaUx3Nmx1SkdU?=
 =?utf-8?B?amc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e6501810-68a4-4ca0-d52b-08dc7a8c9650
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2024 18:25:41.6684 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U2nqeC2/36aqsHJwhq6ydGm6N93by2C6OXj/xo7MThqPwS71pv4fi368xLO0o630vkuXPi/rAq50kkWX7Ycd0Oln3gEDKfRXBIlvpEoCihw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7579
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716402348; x=1747938348;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=p0GaCwmpm3PQ4Qyc1PeWW/clDOqn2jofEHhMoe5gMGk=;
 b=l7KcmqGDOJewEeXBKltgGu/ONCtZq0G5G2zxzfv7A7YJSLJfYkr+m1s7
 77AjcUtGxVfvSIKDCGxq5yPl7J7EpxeSBB/ELlDhlsakXSyoqlmERRX+v
 AhDOj50K1m9fyUoOMX0mBl9UoAzTmn0Ztia1FCHvuGQ/qd35ETfXZx65s
 G+hbvBK/L1jBVO8P7rzlg53tdRYGj8VpAdCCoDHibf0WV9EYrcZd0d4jU
 yijOhMsNN4ESX7unQCMuJBfL9Rp/ZeoOJGQ0L0ckaygc4uRT060hgjnk4
 C3MKBxVl8zQ5A4gOlcZ0g2hfC4gqEmDE22LIRKXt5cjR288gdFL7o9i7g
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=l7KcmqGD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix reads from NVM
 Shadow RAM on E830 and E825-C devices
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/21/2024 9:11 PM, Paul Menzel wrote:
> Dear Jacob,
> 
> 
> Am 21.05.24 um 21:27 schrieb Jacob Keller:
> 
>> On 5/20/2024 10:55 PM, Paul Menzel wrote:
> 
>>> Am 20.05.24 um 23:39 schrieb Jacob Keller:
>>>> The ice driver reads data from the Shadow RAM portion of the NVM during
>>>> initialization, including data used to identify the NVM image and device,
>>>> such as the ETRACK ID used to populate devlink dev info fw.bundle.
>>>>
>>>> Currently it is using a fixed offset defined by ICE_CSS_HEADER_LENGTH to
>>>> compute the appropriate offset. This worked fine for E810 and E822 devices
>>>> which both have CSS header length of 330 words.
>>>>
>>>> Other devices, including both E825-C and E830 devices have different sizes
>>>> for their CSS header. The use of a hard coded value results in the driver
>>>> reading from the wrong block in the NVM when attempting to access the
>>>> Shadow RAM copy. This results in the driver reporting the fw.bundle as 0x0
>>>> in both the devlink dev info and ethtool -i output.
>>>>
>>>> The first E830 support was introduced by commit ba20ecb1d1bb ("ice: Hook up
>>>> 4 E830 devices by adding their IDs") and the first E825-C support was
>>>> introducted by commit f64e18944233 ("ice: introduce new E825C devices
>>>
>>> introduced
>>>
>>>> family")
>>>>
>>>> The NVM actually contains the CSS header length embedded in it. Remove the
>>>> hard coded value and replace it with logic to read the length from the NVM
>>>> directly. This is more resilient against all existing and future hardware,
>>>> vs looking up the expected values from a table. It ensures the driver will
>>>> read from the appropriate place when determining the ETRACK ID value used
>>>> for populating the fw.bundle_id and for reporting in ethtool -i.
>>>>
>>>> The CSS header length for both the active and inactive flash bank is stored
>>>> in the ice_bank_info structure to avoid unnecessary duplicate work when
>>>> accessing multiple words of the Shadow RAM. Both banks are read in the
>>>> unlikely event that the header length is different for the NVM in the
>>>> inactive bank, rather than being different only by the overall device
>>>> family.
>>>>
>>>> Fixes: ba20ecb1d1bb ("ice: Hook up 4 E830 devices by adding their IDs")
>>>> Co-developed-by: Paul Greenwalt <paul.greenwalt@intel.com>
>>>> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
>>>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>>>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>>> ---
>>>>    drivers/net/ethernet/intel/ice/ice_nvm.c  | 88 ++++++++++++++++++++++++++++++-
>>>>    drivers/net/ethernet/intel/ice/ice_type.h | 14 +++--
>>>>    2 files changed, 93 insertions(+), 9 deletions(-)
>>>>
>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
>>>> index 84eab92dc03c..5968011e8c7e 100644
>>>> --- a/drivers/net/ethernet/intel/ice/ice_nvm.c
>>>> +++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
>>>> @@ -374,11 +374,25 @@ ice_read_nvm_module(struct ice_hw *hw, enum ice_bank_select bank, u32 offset, u1
>>>>     *
>>>>     * Read the specified word from the copy of the Shadow RAM found in the
>>>>     * specified NVM module.
>>>> + *
>>>> + * Note that the Shadow RAM copy is always located after the CSS header, and
>>>> + * is aligned to 64-byte (32-word) offsets.
>>>>     */
>>>>    static int
>>>>    ice_read_nvm_sr_copy(struct ice_hw *hw, enum ice_bank_select bank, u32 offset, u16 *data)
>>>>    {
>>>> -	return ice_read_nvm_module(hw, bank, ICE_NVM_SR_COPY_WORD_OFFSET + offset, data);
>>>> +	u32 sr_copy;
>>>> +
>>>> +	switch (bank) {
>>>> +	case ICE_ACTIVE_FLASH_BANK:
>>>> +		sr_copy = roundup(hw->flash.banks.active_css_hdr_len, 32);
>>>> +		break;
>>>> +	case ICE_INACTIVE_FLASH_BANK:
>>>> +		sr_copy = roundup(hw->flash.banks.inactive_css_hdr_len, 32);
>>>> +		break;
>>>> +	}
>>>> +
>>>> +	return ice_read_nvm_module(hw, bank, sr_copy + offset, data);
>>>>    }
>>>>    
>>>>    /**
>>>> @@ -1009,6 +1023,72 @@ static int ice_determine_active_flash_banks(struct ice_hw *hw)
>>>>    	return 0;
>>>>    }
>>>>    
>>>> +/**
>>>> + * ice_get_nvm_css_hdr_len - Read the CSS header length from the NVM CSS header
>>>> + * @hw: pointer to the HW struct
>>>> + * @bank: whether to read from the active or inactive flash bank
>>>> + * @hdr_len: storage for header length in words
>>>> + *
>>>> + * Read the CSS header length from the NVM CSS header and add the Authentication
>>>> + * header size, and then convert to words.
>>>> + *
>>>> + * Return: zero on success, or a negative error code on failure.
>>>> + */
>>>> +static int
>>>> +ice_get_nvm_css_hdr_len(struct ice_hw *hw, enum ice_bank_select bank,
>>>> +			u32 *hdr_len)
>>>> +{
>>>> +	u16 hdr_len_l, hdr_len_h;
>>>> +	u32 hdr_len_dword;
>>>> +	int status;
>>>> +
>>>> +	status = ice_read_nvm_module(hw, bank, ICE_NVM_CSS_HDR_LEN_L,
>>>> +				     &hdr_len_l);
>>>> +	if (status)
>>>> +		return status;
>>>> +
>>>> +	status = ice_read_nvm_module(hw, bank, ICE_NVM_CSS_HDR_LEN_H,
>>>> +				     &hdr_len_h);
>>>> +	if (status)
>>>> +		return status;
>>>> +
>>>> +	/* CSS header length is in DWORD, so convert to words and add
>>>> +	 * authentication header size
>>>> +	 */
>>>> +	hdr_len_dword = hdr_len_h << 16 | hdr_len_l;
>>>> +	*hdr_len = (hdr_len_dword * 2) + ICE_NVM_AUTH_HEADER_LEN;
>>>> +
>>>> +	return 0;
>>>> +}
>>>> +
>>>> +/**
>>>> + * ice_determine_css_hdr_len - Discover CSS header length for the device
>>>> + * @hw: pointer to the HW struct
>>>> + *
>>>> + * Determine the size of the CSS header at the start of the NVM module. This
>>>> + * is useful for locating the Shadow RAM copy in the NVM, as the Shadow RAM is
>>>> + * always located just after the CSS header.
>>>> + *
>>>> + * Return: zero on success, or a negative error code on failure.
>>>> + */
>>>> +static int ice_determine_css_hdr_len(struct ice_hw *hw)
>>>> +{
>>>> +	struct ice_bank_info *banks = &hw->flash.banks;
>>>> +	int status;
>>>> +
>>>> +	status = ice_get_nvm_css_hdr_len(hw, ICE_ACTIVE_FLASH_BANK,
>>>> +					 &banks->active_css_hdr_len);
>>>> +	if (status)
>>>> +		return status;
>>>> +
>>>> +	status = ice_get_nvm_css_hdr_len(hw, ICE_INACTIVE_FLASH_BANK,
>>>> +					 &banks->inactive_css_hdr_len);
>>>> +	if (status)
>>>> +		return status;
>>>> +
>>>> +	return 0;
>>>> +}
>>>> +
>>>>    /**
>>>>     * ice_init_nvm - initializes NVM setting
>>>>     * @hw: pointer to the HW struct
>>>> @@ -1055,6 +1135,12 @@ int ice_init_nvm(struct ice_hw *hw)
>>>>    		return status;
>>>>    	}
>>>>    
>>>> +	status = ice_determine_css_hdr_len(hw);
>>>> +	if (status) {
>>>> +		ice_debug(hw, ICE_DBG_NVM, "Failed to determine Shadow RAM copy offsets.\n");
>>>
>>> As this is a new failure path, should the user be warned about this, if
>>> it cannot be determined, and NVM possibly be broken?
> 
>> Possibly. I'm also trying to avoid spamming the log with failure
>> messages which are more useful for developers who can enable them vs end
>> users who may not understand.
> 
> I agree that logging too much is also confusing. Excuse my ignorance, 
> but what happens if NVM is broken and the offset cannot be determined. 
> Will the user get any error message and know what to do (replace the 
> device or call support)? Or another view point, is the bug report with 
> the Linux log messages included going to have the information, so the 
> support folks or developers can pinpoint the problem without replying to 
> the user to enable debug messages?
> 

I'm not sure. In this case it probably does make sense to warn, since
this is unexpected and is unlikely to result in spamming the log
multiple times.

> 
> Kind regards,
> 
> Paul
