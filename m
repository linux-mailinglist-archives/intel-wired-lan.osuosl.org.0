Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC2CB0C037
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jul 2025 11:25:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7357361CCA;
	Mon, 21 Jul 2025 09:25:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j44TTnAJBiV0; Mon, 21 Jul 2025 09:25:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1225461CDA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753089908;
	bh=hjYha4zoBWE5EB3I4/+VU0TE+00fk65mmBBZ4ulQA24=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0s1eRzOkwbcnbATLZcUmT0OeOsi83W8OEOpPVP7c4GMj92i2mptX+uYnOR6y4N0yL
	 m4rvfMFd5byFis3MBze6hzhlWZW+2uaM95Dkt4y4RCF9heikqLlO9d+GKKtAJrQ0NI
	 ZtLCNaq131+GGHG6tg1wI1xx81f0FfhBOlh9fxvf5k7RXstZCPzwielOtu21NMQvcL
	 uba6R4iNdiG/JoF75LQUgl6EWYpwCs/VTTB+Htu0morObNjIQb9GjFJOsdheZWiLCQ
	 LxqV9PBOpju6FBjLEL1bRrecsIE7Yq2AlT1wX6v2beYc+4L2WApkYbQiLe9OjKeHp6
	 tDgNFkzsDRbiQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1225461CDA;
	Mon, 21 Jul 2025 09:25:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id A149E1F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 09:25:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 879C3427F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 09:25:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WNL611RlAjhy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jul 2025 09:25:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AB13B4280B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB13B4280B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AB13B4280B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 09:25:05 +0000 (UTC)
X-CSE-ConnectionGUID: 0KBcL69ISL6EY7olRcUf8A==
X-CSE-MsgGUID: EDgKbeo/TdKg6xtLTGyNKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11498"; a="65558179"
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="65558179"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 02:25:04 -0700
X-CSE-ConnectionGUID: z3gAaeK1SmeWmgsu6MnsNA==
X-CSE-MsgGUID: g4ay1Lc+QfKqjoVbyUpFkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="182492118"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 02:25:04 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 21 Jul 2025 02:25:03 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 21 Jul 2025 02:25:03 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.73)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 21 Jul 2025 02:25:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n4o2Vl8IEFJjjKbfyJzN7uhoNAWXqiZXahP+PAhjoeLXZ69zrmOo2RBh+P+m6KTCp+8AZVR4RKxOunEEBDHgg8uOggL/z/dUhcNG3c81Q9a9vrJpb/V4jMOFCRl4AjQv28311JmZ0qDVoFZCBptdhcy8KVAP0DQK/g5MvsN/JcrSm1a4Z156RZjXFlDULYfOpwBy5Au6CiAt7JzI2PObkwEl+Pn6HudiYnlCMrqYydN6v5OsA+eLWuT+wBMouquQMxwvP1HxuiG37nAvCHquo8XZZafVyRoYmODUiqrpTBGzYDDKmN/hSFG+xejTJdmAQeGpF25at4PRVpz7qhOgHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hjYha4zoBWE5EB3I4/+VU0TE+00fk65mmBBZ4ulQA24=;
 b=D18TzEsBXMfxdqmrLfSB2O/Ix71fu6C45KtciCQ+PDAgmhxgHVu58Z2IadriYO6J9q0NpzaWUxazPn/9sNA8SgaXgygGtlqkYl/CFoFEJpDV0RAFvAUXwjJzHQURxXDzMi6goToL7qsTKP+shVP2ljoXre0ierriLLSOOpt5W5x8Ppbko3eLptlHrGNDtE550Bt9Bm3hDqFWxaUI0TMYgA4xK7K9v8OscDR/PgrB23QBAwXoVZTIEZcLzJRHL26Yqms0hxWAsWUnzHNHXJkk1tZKYTr7V9UFx42EfvoYxJDHjOln3Uk/udi0BrPFWXK3OpJ5UzH/fNH5TSheTVCGNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by DS0PR11MB8052.namprd11.prod.outlook.com (2603:10b6:8:122::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Mon, 21 Jul
 2025 09:24:18 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29%4]) with mapi id 15.20.8943.029; Mon, 21 Jul 2025
 09:24:18 +0000
Date: Mon, 21 Jul 2025 11:24:06 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Jason Xing <kerneljasonxing@gmail.com>
CC: Jakub Kicinski <kuba@kernel.org>, Stanislav Fomichev <sdf@fomichev.me>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, <intel-wired-lan@lists.osuosl.org>, netdev
 <netdev@vger.kernel.org>
Message-ID: <aH4HNquLzjagCLeX@soc-5CG4396X81.clients.intel.com>
References: <CAL+tcoCTHTptwmok9vhp7GEwQgMhNsBJxT3PStJDeVOLR_-Q3g@mail.gmail.com>
 <aHohbwWCF0ccpmtj@soc-5CG4396X81.clients.intel.com>
 <CAL+tcoCJ9ghWVQ1afD_WJmx-3n+80Th7jPw-N-k9Z6ZjJErSkw@mail.gmail.com>
 <aH3rRHm8rQ35MqMd@soc-5CG4396X81.clients.intel.com>
 <CAL+tcoAQF_Aom4dn--RQzowiUO1haNPw=_Rzw2C7MJRF_sSUOw@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL+tcoAQF_Aom4dn--RQzowiUO1haNPw=_Rzw2C7MJRF_sSUOw@mail.gmail.com>
X-ClientProxiedBy: WA2P291CA0044.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::20) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|DS0PR11MB8052:EE_
X-MS-Office365-Filtering-Correlation-Id: 814d1992-c2cc-45f7-2d51-08ddc8385e62
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|366016|10070799003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YjBnaUI5bkhYRkx0RStXZVkwT0dhSy9yRk1Edk1HVkptR0xSZVVLeUNIa1VD?=
 =?utf-8?B?MU8rUUN1Rmd5NTEyMTJyOEtiTkwycStqQmwzYWtUbFg3KzVVcHpvdDdHSE9G?=
 =?utf-8?B?RHE3NnVzU2RON1JlbUJmZE0xdU11M0xvOXZYUTE5cHdnZU8xb1YweTVLOGVK?=
 =?utf-8?B?dVpaaEFMYWlsTG9INXA5WG41QzJVYXRseTZqNmRvQlBEKzg5ZWdzVisvK2hT?=
 =?utf-8?B?UjkvZHNQSWN1ajNyZUVWSk1nSjVXWmt3bVFaWmJtVHNDbmJ1ZHpKN3grVC9a?=
 =?utf-8?B?QjVSbkI4eUJWeHp5UmcxSFNPZFByMS9TRGhHZU5yOEc1K3JYNENwQXpCdk9l?=
 =?utf-8?B?V0tDM2lFNGtvOStUWmpjZTB4OXZ0blZEVVFLT21POTBIVXJvWGdaaENsSnlT?=
 =?utf-8?B?VzNkR0lVdkRZc051RnZDMGh3Mzk5QTg2b0c5dkdWWWVGVk9HZjZhUWNLTFdK?=
 =?utf-8?B?SGQ3VHA3ZE5BUkkxSVZCV0lHbVhiOXd1R2sxMkp4K1hrZHBrWURqRmN0b3Ji?=
 =?utf-8?B?Qk5ZbzQ5NmRqMGdiOW9CRGNrdFo4ZStOWGxVUHEvNzcyRklaZkMyU3pHbmds?=
 =?utf-8?B?WDVqQmxseWJmZUtkS1JaOGM4bWpNanlNNWdIOGVTSE1ZdXBSTGI4NHBrK0ds?=
 =?utf-8?B?TjNpZnV5SEJlOEJNbHU2eG9QeFVjSEtMbEpSSTJSQUh2aEdsRk5OR2trOHFP?=
 =?utf-8?B?ZUUzUzl1Q29vWCswR0E1MEthRGdNSEFHc1Z3YlNPMEtEQXRRMG5FUjZLZGky?=
 =?utf-8?B?TURGeG5rVVErUFdYUEU0VWRLb1lnd0kvSkRIUmlqOEt3eVhzYnNpMVY2b3Vv?=
 =?utf-8?B?YnhXQTJ5TTBpR2tzbTdQNkc5QlY1ZkdIbllLZm83c1NnNE9hV0JGWEYzUHFW?=
 =?utf-8?B?N3ZaQ2k5bFhFQmVvSkFiRHV5VUJwaFV3Uy91dmh0c0k4andDTWJYRStmbG5o?=
 =?utf-8?B?eWgxQ3FuUjNXVXVvZDkybUpMcnh3NHFKQjhYdFEwcUwxUlRRNzdjRHk2eHc1?=
 =?utf-8?B?enNkaWRpK2VFOUxZaFRiVHp5M0Q1M2IwRFRmd0dCNFY1UlVXWXNHa1F4NnV2?=
 =?utf-8?B?RFEzUjdxZ2JkM29RbytZajRZZTVudGswREEwOGYwSGIxejE1eUxUdjZpMStD?=
 =?utf-8?B?T2JlS2RobmpSZVk2N2xEQVJOZ2tqM3dDQW1vbTdPVjk5UE94Wk1iRm5hTERG?=
 =?utf-8?B?L3RRejJvV2RiMnkwVjBGOThaNVdEQWlkQXNtT2k3ZStRdzZweUpTNElBcTRK?=
 =?utf-8?B?YlZDLzZ2QWdISmVINWhCZXl3SGRoQ3Zjc01rQy94QnVMeWFVNzV5UG9LN3Qx?=
 =?utf-8?B?ZWYyY3EzY2FYWXRLWnpFM1p3UWJiZFFqL2E3M3hHMlZ0bGhYWUVhSmpxMURS?=
 =?utf-8?B?Z2pPa2ZHWVJ1L0U4aXVjV0RaMzZBdEVDUjRhYm1rVkxtVGMvby9MZFBDQXN1?=
 =?utf-8?B?MmJCK0paWDJVb0hpNEs0Z01tMy9GakVBTXpWekV4YlVyM3M0b1RWaW5VOXNj?=
 =?utf-8?B?dkRFdlZlRjN5WG14T1BaUHV1RkpMSi9RTEhhRnR2SEVWMS9MZ2p1Mnp2c0NR?=
 =?utf-8?B?WXFKQ2ZscXpUeW92WUwrZlhIWWdrN3JPYk4wa1hCNU02NnN6SzVlMzRHZW9Q?=
 =?utf-8?B?TmhhQTBBT3VPR3NJZ3dqMFBmMWhYV1JPVUw3UDRXOE0zVUJ6T29qZ09QNTFT?=
 =?utf-8?B?bm9Tcmk3TnRTTG1DaUhYd1g2Q3RROUdTWU9xQllzM29zZzVCM0NqcklWOWVG?=
 =?utf-8?B?MjlpMzFNVVVmeEM2RVl0OUdlU3o2bEtpN2FMMjVLSGFSY0NTN1AvU2ZMMUdk?=
 =?utf-8?B?dUc0Q1h1K2FMY3QwUlhNZmdlUGxPRGxmd3p6L2pxQStZb20zcytzaUpXUVFa?=
 =?utf-8?B?L1dndzREWG5uS3dzczFJa3pqQjhnSVhwdklqSWg2VHR1R1E9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UXBzNi92dUkxMTQ1elpPMkRlRmpWWGI3VWsrN3k4dlJjeVhhZ29zRFhxT3ky?=
 =?utf-8?B?K1FnejlQUWt1Zzk0YlY5aTVVWWdXQTNGTU9jOWRHWHoxMk5IeUlLVFFDSUFx?=
 =?utf-8?B?M3VqR0ZPL3JoVnNlWDQxT0YzbnExSjlndmdLTnNUUXRXVVEvNjN3a29RdEUw?=
 =?utf-8?B?c2lveGRLbWU0Y2Jucjcyc2E4NC9uL0RUVERYdzRqZUY2ZkRSbTViRUtSSTNL?=
 =?utf-8?B?bExZV2xWNlNnMTF0UGtQZkYyeTlRb0l3b1JVYUpoRHNaNE92UE9NUTA5Q0Fn?=
 =?utf-8?B?SmxQS3h4Yy9YZGszdkE1UTVQVDdNdkxWaXpxRjR6ODh4L1ZlbWJEODdsU2RQ?=
 =?utf-8?B?U1NlQ01nY1ZPK3RFTFhEa0k1eXd0UXNDdVJPYjRxd1ZrWTBhUHYvc1UzWmdV?=
 =?utf-8?B?TDFaalZsZ0NxTlVxVlBRL3h0amxhRXB1Y1BodWg1cWRYYm4rY2N1MVhuV2pt?=
 =?utf-8?B?ZllDeWNCWGFmWHROR21LdzFrN1VBMElVSDFCTmprQ3FtRzhvL3NtUWtVQjNv?=
 =?utf-8?B?QTFMeEN6WHh0YmY4T0o3djhuV0dyWTZzVUgxa3JRNDhheWVzTms3WXpkL1kv?=
 =?utf-8?B?c2djRjBtSktkSUlwNXZNU2NMOUVZLy9mNTRNU0pwUlk2UWVJUndueEZMcVNJ?=
 =?utf-8?B?ckRmZkdVdzZ1ckQ5ZUpNdS93QVJSRUQzSFBZVkhGczloeEE5Uzd4UTl1b3dN?=
 =?utf-8?B?OHpQUEgrWVZhVG9ucTlabWUvaHdRaFp4Q2VxNHhKaTZIRGovN050bjhnNVcw?=
 =?utf-8?B?WnJ6UlBEM3NlS1hheWhmZnhIZWVtSUNLS3VxVXp4Zlo2T0x5VUo2L3F2dmoz?=
 =?utf-8?B?ZWphZ3FlbkVrVkZYRnBtMit3aWF4MlBNZEMwRTF6bDQ4M0pQcElmekxMRk9W?=
 =?utf-8?B?Snh1WGV3WkdHOVdac0pTQ0RyY3VJUGZMSXhXOWJOMFNXV2ZXQXNjMEhVSDZE?=
 =?utf-8?B?cENHSDZBazFFT0p3TU81T0NobkNmeG1NdlFJUVNEbUVIUGE0VHlpWjhpMnFY?=
 =?utf-8?B?VUJxbmVEcUJyU0FvdEQvSzBvTXBKMkdtcmtjRUt4bzdlRElxWEFNTjRvOWhT?=
 =?utf-8?B?Zk1SRHdVYkMyMVpHazkxU0lPSXpheFBMTFdkdmE4WUx3YzdkS282SVVGbFJ1?=
 =?utf-8?B?Qzhpa2J6Y25TVjVlSjVRMU1pckZYQTNXRkpuT05PK0NhNC92NG5RcUl1QTk3?=
 =?utf-8?B?N3N6UVUxQXNjM0dac2ducEJvRC82d2pjN2Y5T3JKMUpBekJ2U042djZ2L1BW?=
 =?utf-8?B?WmVkcTM3YmxqZlR1MHlwcURScjRJN0pCMWk2aFl5OGx5dW83UG1JdW9BdTd6?=
 =?utf-8?B?UlZjQmJGRWRIZGF6UnlVd21ja0J2WGtTOVJyQkE3TWdQTENmQjVZY1RsSW56?=
 =?utf-8?B?UUxhYjBlLzVvemw5alI0Z2lBYnFGbTIrbXhjY2FFNUZBb0w2dG9yeFljRE5r?=
 =?utf-8?B?emxVNkZhTmFZWHdrUjkxRmEzcFN0RkM1c1VzR2Y0TFBpa0RyL3o1LzBWMnJF?=
 =?utf-8?B?dG5wOEVVNlk0cG9jWkZyY1RpL2sya3FXU01hRHE3UHRsaGFjeFEva2w5NldW?=
 =?utf-8?B?TGZ2UTM5d0RpeUFFUnUza3NqR1BkUmVLYm1RV1FYVHZuOThnWXVBSnU1VVRJ?=
 =?utf-8?B?Sm55VHlIQ2RYR1hwd2R0eTVuRGU0SUoycGlFeHVQNXp4Nm8wYktDeVhOSkdJ?=
 =?utf-8?B?dHpPMWZjUk53MkFGQmlrZlRsT1NIYkxxdjVHRkNVV25ncU1pNDZ0Y3E3bllu?=
 =?utf-8?B?ZmtZMkJqUGloaDVOOVRzRnhmSG1KbmxObmNxcFFNa3lTQjlzN2lPSU1oclRp?=
 =?utf-8?B?SHdNM0h1cFMwVFhlQjIxNnFta2V2THArYWJldTN0VGNKSnFaemZQWVE0aGFN?=
 =?utf-8?B?S0NWUGRtdWROQTE4V01kS256dkJSTFNtejFQQi82QVVPZFc5YkFLemx4ZHN5?=
 =?utf-8?B?UVI4Y1lSVk1XT0pIQXNPZ0lUQ2JpK3hpbkgwQzlueXRySUl2RDlwWGRhc3BG?=
 =?utf-8?B?QlR4SzUxSVBxZ1VxUTZvUXFXT0YwQ21iNTdyNi9VK1U1ZmNuSHdoeUZNb1NX?=
 =?utf-8?B?U3NHMDVTZDh5aHp2ditpQ0lZSm9SMXJaRkJVWEJzN1czQlBiS29yVUhVQm1D?=
 =?utf-8?B?NEtmbm9wc0xLT2h0M3ZNOVFaVlVOczUyYjdtVDRMVk15MlMxOWR5bWpBMEF0?=
 =?utf-8?B?UHdjQWxLd0NMVFluL1lEVTFIR2lla1EyaWd0Z2MyV0RINUlvblVSTVRwQ2lx?=
 =?utf-8?B?dkJMUW5mc2xYQlBwNkZqaWMvNXRBPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 814d1992-c2cc-45f7-2d51-08ddc8385e62
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2025 09:24:18.6572 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q5s1b++sffr/Tti0FpVpaaKOGXpcv1sw8Hznm7thj7DSX36ZGrcAgBn0IC/ql4Tpx3TcHyMwBPAxU1l83lR7xOihk9OscguMfhcNs7GpkbU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8052
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753089905; x=1784625905;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Axx4og4h4Yz2wOemaWYFPbzuR+IaimivCNdtOaHdLaA=;
 b=XowGcsiApCCOMi1YKU+JuN5RVgBBAnwUzd8o9ucszbm21uxVOG69vsSQ
 EP5wMYoqQd/CSyxJ8Hfk+0wFaZ5UUAXjepCk/896O3wS7Yk8CNz+moNu0
 mS5r5rcCVieW+FvTpK9fWa27b2vvPjn3XAPRXQjmK7gRZqdqwgYudIDHO
 GcPQ9h3seP5hBuDVNWxjA4m3QFfOHBE7dIsryt64PyKypdGFpcrjA1Y10
 q1RRhNYpmPVMV5N9LlUVoV2eFQiWeYzW060MNu0qICqnz+1+M4gtnOYgV
 Pl2I/0KcbCEwr6DBkYVCNlYyKeWbRgvQnxe3UbTLnAiNNoLzoP8sCdb9K
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XowGcsiA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] ixgbe driver stops sending normal data when
 using xsk
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

On Mon, Jul 21, 2025 at 05:03:07PM +0800, Jason Xing wrote:
> On Mon, Jul 21, 2025 at 3:25 PM Larysa Zaremba <larysa.zaremba@intel.com> wrote:
> >
> > On Sat, Jul 19, 2025 at 01:26:18PM +0800, Jason Xing wrote:
> > > On Fri, Jul 18, 2025 at 6:27 PM Larysa Zaremba <larysa.zaremba@intel.com> wrote:
> > > >
> > > > On Wed, Jul 16, 2025 at 11:41:42AM +0800, Jason Xing wrote:
> > > > > Hi all,
> > > > >
> > > > > I'm currently faced with one tough issue caused by zero copy mode in
> > > > > xsk with ixgbe driver loaded. The case is that if we use xdpsock to
> > > > > send descs, nearly at the same time normal packets from other tx
> > > > > queues cannot be transmitted/completed at all.
> > > > >
> > > > > Here is how I try:
> > > > > 1. run iperf or ping to see if the transmission is successful.
> > > > > 2. then run "timeout 5 ./xdpsock -i enp2s0f0 -t  -z -s 64"
> > > > >
> > > > > You will obviously find the whole machine loses connection. It can
> > > > > only recover as soon as the xdpsock is stopped due to timeout.
> > > > >
> > > > > I tried a lot and then traced down to this line in ixgbe driver:
> > > > > ixgbe_clean_tx_irq()
> > > > >     -> if (!(eop_desc->wb.status & cpu_to_le32(IXGBE_TXD_STAT_DD)))
> > > > >             break;
> > > > > The above line always 'breaks' the sending process.
> > > > >
> > > > > I also managed to make the external ixgbe 6.15 work and it turned out
> > > > > to be the same issue as before.
> > > > >
> > > > > I have no idea on how to analyze further in this driver. Could someone
> > > > > point out a direction that I can take? Is it a known issue?
> > > > >
> > > > > Thanks,
> > > > > Jason
> > > > >
> > > >
> > > > I was able to reproduce the described behaviour, xdpsock does break the IP
> > > > communication. However, in my case this was not because of ixgbe not being able
> > > > to send, but because of queue 0 RX packets being dropped, which is the indended
> > > > outcome in xdpsock, even in Tx only mode.
> > >
> > > Thanks for your feedback. It would be great if you could elaborate
> > > more on this. How did you spot that it's queue 0 that causes the
> > > problem?
> >
> > If you do not specify -q parameter, xdpsock loads on the queue pair 0.
> >
> > > Why is xdpsock breaking IP communication intended?
> >
> > Because when a packet arrives on the AF_XDP-managed queue (0 in this case), the
> > default xdpsock XDP program provided by libxdp returns XDP_REDIRECT even in
> > tx-only mode, XDP_PASS for all other queues (1-39). XDP_REDIRECT results in a
> > packet leaving the kernel network stack, it is now managed by the AF_XDP
> > userspace program. I think it is possible to modify libxdp to return XDP_PASS
> > when the socket is tx-only.
> >
> > >
> > > When you try i40e, you will find the connection behaves normally. Ping
> > > can work as usual. As I depicted before, with ixgbe driver, ping even
> > > doesn't work at all.
> >
> > I think this is due to RSS configuration, ping packets on i40e go to another
> > queue.
> 
> Thanks so much for your detailed explanation.
> 
> But, I still doubt it's not the reason why xdpsock breaks with ixgbe
> driver loaded because I tried the following commands:
> 1. ping <ip>
> 2. timeout 3 ./xdpsock -i enp2s0f0np0 -t -q 11  -z -s 64
> Whatever the queue value I adjusted, ping always fails with
> "Destination Host Unreachable" warning.

First I would make sure, if the problem is from Rx or Tx. This is hard to do 
with IP-level applications, because they fail if any of those does not work.

Please, try sending MAC packet with scapy using a following command:
sendp(Ether(src="<src MAC>", dst="<dst MAC>")/IP(src="<any IP>", dst="<another IP>")/UDP(sport=2000, dport=9091)/Raw(load="xdp"), iface="<src ifname>")

First, send this from host to link partner while running `tcpdump -nn -e -p -i 
<ifname>` on link partner.

Then send this from LK to host while running tcpdump on host.

In both cases, note whether the packet shows up in tcpdump with and without 
xdpsock loaded on the host.

> 
> Thanks,
> Jason
