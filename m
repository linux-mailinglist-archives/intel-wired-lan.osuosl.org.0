Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wI8ZOOIeOWqRnAcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 13:39:14 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A85D56AF29E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 13:39:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=XFItu8k0;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3A188640E;
	Mon, 22 Jun 2026 11:39:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 98HVVUqJcD6H; Mon, 22 Jun 2026 11:39:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C1CD286411
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782128349;
	bh=+j+fYOHhg3J5xY+SIbtppqTBczt15vfEMmy09UuCNiU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XFItu8k09atipnuwYm7aJRBu0Ixp5FMKJSTyuFJDY39bQaF7PhWLR8ALXBSdqDBCn
	 OYevmYFY0bmV4TEfbDSzJktbooNYisMQHlGDkaxP/VhXdqYLLIoBmqGTBwrSR1hFXO
	 FIqykUjLWhe75OrrZluxq+L8PIB0plrwoO4MAXZFHhxaltNAmKKeWIrRulA1JQTAAj
	 dWDJKZP8fYA5AcQX0mCC/Q6nAGHdf0l3dOdIe4mSKanQDtazsilSGBhBz1l7NiBOLN
	 xZOMd5Kj5mZVaTt6Jk3x26clMUZD+GKmnk9a7uH8TtRdCyDLEg1OsqNSv3lorMR3tP
	 zB8dPpncy3SBQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C1CD286411;
	Mon, 22 Jun 2026 11:39:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7E9B5367
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 11:39:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 67E526F6DA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 11:39:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 85-NiYRVyE3p for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2026 11:39:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 181586EAA1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 181586EAA1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 181586EAA1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 11:39:06 +0000 (UTC)
X-CSE-ConnectionGUID: UQe3DPwsRgS/1SG75tc88Q==
X-CSE-MsgGUID: /RJ3yByMRvapg3H+Fv30Ew==
X-IronPort-AV: E=McAfee;i="6800,10657,11824"; a="93509580"
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="93509580"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 04:39:06 -0700
X-CSE-ConnectionGUID: /6WHYKP5R9KDNqnNpFAjJA==
X-CSE-MsgGUID: ETF6ReMeSI2LQ8diopB0Rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="272908489"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 04:39:05 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 04:39:04 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 22 Jun 2026 04:39:04 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.14) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 04:39:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DDSG88aOV2rJU7ghaiDpog1G2AY+SZHCDC/tfPvPY4K0rL7tIVuixO/I/wR3CjN/35jFvQhJVoCQnLmEYcfB8zPBfei9wngzwcb83x5MpOYUwyxBon586Hr2QpFHREQ855BqQPblucPcM8wt4BNH2vZ+bQE9dQMgxOuWCk9zibC31Xn0YQIZ5fkxIxMeEM+aomUhvxjfGOfCi6Q/JORuZYtYg5psnfbt3pI4vnqw6I7TTHdCr02g10g16wEwbaLPGT3aGVCga2+FSBvOGOINMcX4W4FedP4PacnjfjmL9XdqDCOZO28IzzDY3UERFtsLsRAY1VnXrpA4eNe5jjhmBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+j+fYOHhg3J5xY+SIbtppqTBczt15vfEMmy09UuCNiU=;
 b=dWHGodfcDri7obua3RUlFiImgWuee6BLwo+6CyZJnnuOyC7NfK5nEvgqUPS4D5nR9bw1RxrLnhTBwsrJIHZGetsI1JUIPhOvuwSVhfO8NARrTDCY1epMzBzX8sP1lXnrQXWY6+RnlWGD3eYHCJKSHmYj1N58ZA2CKGaCCdA+dGk4zTrnOSBy1j+M7XZKwWBMwWJjJ/2ue+r8hYIthqiJWNhZ25l10bhhWs8mLmMfUcNGZqwre+jzOuuqW6UtjA98zgINGtVpVyFShDO2YEwU3oHsev7EyLvEmo1W40TuH0Pu/VZTc2Aw4BPPeLr1j6jIduGVleQY3s9OuHj5w3R9ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV3PR11MB8508.namprd11.prod.outlook.com (2603:10b6:408:1b4::8)
 by PH8PR11MB8039.namprd11.prod.outlook.com (2603:10b6:510:25f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.18; Mon, 22 Jun
 2026 11:38:57 +0000
Received: from LV3PR11MB8508.namprd11.prod.outlook.com
 ([fe80::a1e8:1786:e5d1:8e51]) by LV3PR11MB8508.namprd11.prod.outlook.com
 ([fe80::a1e8:1786:e5d1:8e51%5]) with mapi id 15.21.0139.018; Mon, 22 Jun 2026
 11:38:56 +0000
Message-ID: <55f9e2af-54fb-4257-af25-dc9c0fbeb72c@intel.com>
Date: Mon, 22 Jun 2026 13:38:49 +0200
User-Agent: Mozilla Thunderbird
To: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>,
 <netdev@vger.kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, <aleksandr.loktionov@intel.com>,
 <jacob.e.keller@intel.com>, <horms@kernel.org>, <anthony.l.nguyen@intel.com>, 
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <stable@vger.kernel.org>
References: <20260619061321.8554-1-jtornosm@redhat.com>
 <20260619061321.8554-4-jtornosm@redhat.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260619061321.8554-4-jtornosm@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU2P251CA0030.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:10:230::30) To CH3PR11MB8496.namprd11.prod.outlook.com
 (2603:10b6:610:1ba::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV3PR11MB8508:EE_|PH8PR11MB8039:EE_
X-MS-Office365-Filtering-Correlation-Id: 1aced944-b4fe-41ee-69d1-08ded052d6f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|23010399003|22082099003|18002099003|11063799006|4143699003|56012099006|6133799003;
X-Microsoft-Antispam-Message-Info: LcqaF2Da4zOHfmBI5fad//mqzLhWD31/dwZnZtN/J4QFKTazmro5QxjzJjys9lLvGipvZ8VQwRjABKMrI2NVqjdm8dxoRRl/5613Ns6BQi8T4S/irGsIgJsdH+MD8W69xdQmejCcN97tcAI7F/lDNLDIFXFy51k+MQfwTCMJ1aghEeZg3YBfqQ1VNf7XLZLUG3eYNPFmy+vlVsb/mQN1nFk3u32iTUa8SSB4SO+Lyq8ItR3hxlnSqwoZzLfjIzUrkI0RFQcZG0gEK9n82KFdVgBWC43tAGdiMtU/Zta4TH2esPIvfD6OHRxD4T23tSQlA4FcXglbm6+QxcxUSM16Wyc8+hErc76ykHqVrMXJW0PL11sbb8GApGR+utj0+9b1AHxWqpHV2sqItqWKZgHQYg4Hvbg+yBZe0/rbSpcK2w6wWGjQ0u8FHadHV04vwI//WuV5B3pr0r47tlLLtl/x28AehQ60CPG6vs+GDDak4II08seqWg5qhHK38Xyu4w6+HEzPVGl6X0QBKRUJyQiYEL/WM0k/fCtQbgYk+y0oAffW8PkSEmvnSBIww66IJXI9KO8KP02gpBWdjrRjkSE0+Nny0I6o3sQzEjvsPboSXpErxlieRrqm6pzZtklGONK9v60fzjmZq/fvmFEASr4xNiieem9tV46l8OHT4J/nzVY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV3PR11MB8508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(23010399003)(22082099003)(18002099003)(11063799006)(4143699003)(56012099006)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N1dDR2tieElQa2JlMzBMMHQyNVNBMlMrTEZwckNTbTI2Ym5obDNucGNtcng2?=
 =?utf-8?B?T3ZwdHZkQkpsMXNaYXJvUkxjRVJKUWxVRHpsWk9NOEVkUVdDVzVja1dIREtE?=
 =?utf-8?B?NGZCbWpKZUg3TzhNQTRnUDNhN2p3SllDLzV5R0N3L3VkRE95K0VqUG12ZlZH?=
 =?utf-8?B?d09aV1ZkLzdiTDBoblRibWdNNXBGUXlnazc2ajZkVU9RUmRFWm9TYWdnUXQ0?=
 =?utf-8?B?UzlGNUJHOHl2bVM2Uk1aV2JpVEV2emJIRHN6YmZPNmVJelhoRVdpcUJxNGNL?=
 =?utf-8?B?U1Q3dEFQZW80NXVBNG1YQ1pVNU41VnNwYVNpUUlMZlpkQTVaSWRsQnBmYlcr?=
 =?utf-8?B?Kzc0U3hlbzdCUXgrTEJ4K0RrVTh2Q3JCblF3MFNRZ1p3OXZKbGd2MEdXNjRY?=
 =?utf-8?B?Mm1HZXVYdGlBRks0dnQwemVVSTZUdFJPeFBtVnBBLzVXVVFwdUlJM25CMHV4?=
 =?utf-8?B?YzR4M0FEQ2FCUmxJOXZTSzZJRTFuV3hXU2hWMGFCNE9jK1lMaWxTbXBQelZG?=
 =?utf-8?B?SDJvRlljWk9QYzhXdlFWakNUREN3U1g5NkNvSnB6RUQxVGRGZVJZUmJnc0N4?=
 =?utf-8?B?N2hUN0x3QWQ5cVN0eTc1b0gzRm9qTERIMWczZTRLVDN3ZjBLMGkrai9wRVJp?=
 =?utf-8?B?cTNWRmRPT0ZpaU85dm1tUCtZRVdHem9aSDc4N3NEajFKd21XTU5zRVI5YlF2?=
 =?utf-8?B?OXBlWjNTbzd2RmFjcjloNU9xMTdLaUNQby9BWU51cytHS1pSblpMTmpMamMv?=
 =?utf-8?B?bzV0L2x3ejRFUUtxODBjd25IV01NOHlTOXFIV0xEc0tmRFhXMVYwaGNneVRS?=
 =?utf-8?B?TUFzUHlnNjJyQXpZU0Zuenc3Vnl4S1hkWFdiQWptaVB4aUsvbFlYZVZOa21z?=
 =?utf-8?B?SnorU0k1QTQ0UWRRL21QWlhvTk1jczNoVkpwWmZpODg2eEZCY1l0c2hEa2tx?=
 =?utf-8?B?UjArUnBqSjZsL2hGT3FNWTQvMm1ZNVdVOUxtaHpMQ0FoaXdNaHBXWEkzVnpw?=
 =?utf-8?B?cUp5RTNRUU5oQXdRTXNaODlGbXlYQXd0Y3k1blZlVU1QbkozVUJ0a0NwR2Iy?=
 =?utf-8?B?T0N3Z0FjTXE4V1VGVEpYOFBIUm1OL1JCVlovTVdKK2lJMHRpeXVQRVdEV3Aw?=
 =?utf-8?B?Znlpd0k2MGUvU3pKZGRQZzRtLzI3eHlPcXpMOVMwSHZOR3VBc3o3NER6c2Js?=
 =?utf-8?B?TDVRazlBZFBCcndzMlJhbVU2NGUvejk2Q202SHd3bDJCUmh4M2JxZ2lmOVZC?=
 =?utf-8?B?TWplR3dmclhmYkwvaFdzK0xlUUdRSHJlbHNLSDhqVS8yZ0wyNjZ6Z09aSGxO?=
 =?utf-8?B?SmM3U1M0N2d4OUt2MC9xSWJOcyt4bG42NGpLK3pNUHFtUVZYdzExMlE3aEJs?=
 =?utf-8?B?V1BndGlhblNRVWtvZDFVemF6dlVMUkZnWWtXTFlsWml5dkxXYTh5YU1oUVlt?=
 =?utf-8?B?YUF4YW9hSTZtQmppVGp1L1hqL1lSMDlGVGVkTitJR2VtUHgwSmQyUGIvM210?=
 =?utf-8?B?U1ExVGNXblJNaldKZDF0amdsVlJHUk84QWZLdkl3bWkzN1krVUczWTdzdzhS?=
 =?utf-8?B?ZTRQdXBvM0daeDFFOHd5WDlibU8yMnptbU94a1NwYUpWbHhzZHYwL3hOL0Jr?=
 =?utf-8?B?NW83c29DRW1XNjRNK0lUR1AyRHM1dnhmU2NsdVh4UmFVUnRzUVJlYXhHTkVr?=
 =?utf-8?B?d2Y0VWYvcVZCclMxREkzcDd4RlgzeXVCWVBUM21laTJtTHNWbG9QZ1FoYkUr?=
 =?utf-8?B?Qk9zMk5qNU9KK1ZyZUNUVlVseTdYNjZaSXNWS0R5QnhRd0hKRFpSenhmR2tw?=
 =?utf-8?B?OVRUYzFxQWIxRUdMdUtaRFBhSFowdS9SRTJBdVlEek5XeHRCenRGUjB4Rlg4?=
 =?utf-8?B?RzkvZ254ZGRhTXBVSEdyTnFGaEI1RVgzM2N5eHBQb1EyeXV5TnM0Q201OVBM?=
 =?utf-8?B?V3E2L0tQemgwbDlZbUljWmwrZlRyblJ5S01HVURERTJteC9hdC9zb0VMZXVh?=
 =?utf-8?B?U2NKb05zdk9oUUYvWnBjeGRWQkVTaTc1MmxzcFdTbjc5N1owUVZXSU9LQjBS?=
 =?utf-8?B?WDcrM1VBcTVoc0hDSVFnUlB6YTVKcCtzRjRJKy9TODdkYlBBS3QybFh4bU5K?=
 =?utf-8?B?ZW5PS2VUNDdTRUs5c0VQV1IxMGZMWXRmOC85UHVsMTRBSGo5VnlEemU4M0w4?=
 =?utf-8?B?ZzdTOGkzZ3FQNlBtcEN0enk5RUlxZExrM245QjBCc1dqTkI4M0h2cXBpV0lr?=
 =?utf-8?B?cEx1Q3IrQ1ROZzR4dGtkaHlxT0hMM3dQc2tFTnF1Qlk2b1BNR3JUQVZjdWtN?=
 =?utf-8?B?cmNWYzUxdG00Q212STk4VTVMSEY5b1pObTFuYUpIRUIvZG01S3o5TU1lYkJX?=
 =?utf-8?Q?tuyqulACFLmczE3s=3D?=
X-Exchange-RoutingPolicyChecked: fhmWDPnijw09E8A18D4xvv+nRP0ddU/uOepSGqI0mhH5fgw+6T3z06GVaYIL6IvgEG3+ZZ2KinQ/yaXsQkStlJlriNtqL3EOMe737zLGYvPLFRYL2PNo+JxTVj3N3xeE1Fc1t0aVI6FqznRqL9iE45QulipOAxhtsIkWIuYzGtEeCeIMfZqBvSlBOVdR6bXH+dRBecrETAtfCRZtgov93DZVJBLja1nDWAaJ1bAAd6j+++AK/zanAGp6FVQglDs34iU2AZ2j2XJz6K5E5rGlyWEsCR5kzvu457ifapE0E9OqocHvTyTqPsaxmwba7C7TTLBrft+ZVOQgb8xI7BzqVw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 1aced944-b4fe-41ee-69d1-08ded052d6f5
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8496.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jun 2026 11:38:56.5456 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tUecltkOJ0cWeJR0x1S9ugGHTzeHBj94GFcfbDXrsYQ6BYY5qbRgcnYsM6Vn+kK8jUO+OkEQIoUqbFm6EzeTsyqGWJdw1YBCpd8ARt6uYbo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8039
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782128347; x=1813664347;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WokoNI27lhUv0gUd7N6JT+GbZ2lPy1whq1G9Ds+m8Xk=;
 b=aMH/3SqGn9HayJxoB9zpayNNGNnP2COXhN3Xf77IVhZwsSK8zg4BAGBl
 Q76MKXICE1Gon3Xtmm6xGQJlQGseqhKpHKSRAdYSM8A0eRxOst/tztCmI
 z1KSTh+UI3xUsYm3hcbZQx4MM9i92JP2NBrbDwh4Hc0quUw6eHVZt7ym4
 sXeLNIfUX5cQ+vuqMJneeE39dX+j6A3/Q63/H3rCObG3f0EmubEGTXlUC
 TjkGUceGqLeM+RzalQgyPEWKNZOjtcrCDMqmB0HOxhFCYqUQ5njtmLMZD
 tA8oIZ8jT2r6w03vzw1F0dgsM2Iin4+59LRpkANGcrNMXjY1Gffbc5aPa
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aMH/3SqG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v6 3/4] iavf: send MAC change
 request synchronously
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
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
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A85D56AF29E

[-Jesse, he moved to another company a while ago]

> v6: Address edge cases found by AI review (Jakub Kicinski):
>      Although unlikely in practice, v6 adds robustness for corner cases:
>      - Allocation failure after message sent: allocate event buffer BEFORE
>        sending to PF (theoretical - allocation rarely fails for small buffers)
>      - Multi-batch scenario: add loop to send all batches when >200 MACs pending
>        (rare - most configurations have far fewer MACs)
>      - Timeout rollback: only rollback on send failure (ret != -EAGAIN), not on
>        timeout where PF response handler will sync state (transient inconsistency
>        during timeout is acceptable and will be resolved by response)
> v5: https://lore.kernel.org/all/20260429102426.210750-4-jtornosm@redhat.com/
> 
>   drivers/net/ethernet/intel/iavf/iavf.h        | 11 ++-
>   drivers/net/ethernet/intel/iavf/iavf_main.c   | 91 +++++++++++++----
>   .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 99 +++++++++++++++++--
>   3 files changed, 171 insertions(+), 30 deletions(-)
> 

[...]

> +static bool iavf_mac_change_done(struct iavf_adapter *adapter,
> +				 const void *data, enum virtchnl_ops v_op)
> +{
> +	const u8 *addr = data;
> +
> +	return iavf_is_mac_set_handled(adapter->netdev, addr);
> +}

[...]

> +static int iavf_set_mac_sync(struct iavf_adapter *adapter, const u8 *addr)
> +{
> +	struct iavf_arq_event_info event;
> +	int ret;
> +
> +	netdev_assert_locked(adapter->netdev);
> +
> +	event.buf_len = IAVF_MAX_AQ_BUF_SIZE;
> +	event.msg_buf = kzalloc(event.buf_len, GFP_KERNEL);
> +	if (!event.msg_buf)
> +		return -ENOMEM;
> +
> +	while (adapter->aq_required & IAVF_FLAG_AQ_ADD_MAC_FILTER) {
> +		ret = iavf_add_ether_addrs(adapter);

I believe that this change (made in v6) is wrong.
(just an observation: AI review made this series worse vs v5).

the second step onward would fail a check:
"if (adapter->current_op != VIRTCHNL_OP_UNKNOWN)" and thus return
-EBUSY

watchdog would not kick the VC/AQ queue since we hold the netdev lock
here, there is need to manually ensure forward progress by calling
iavf_poll_virtchnl_response() within the loop

I think it should be fine to stop when the "iavf_mac_change_done"
condition is met, this will simply leave the rest of the changes
for watchdog (as we do now).

> +		if (ret)
> +			goto out;
> +	}
> +
> +	ret = iavf_poll_virtchnl_response(adapter, &event,
> +					  iavf_mac_change_done, addr, 2500);
> +
> +out:
> +	kfree(event.msg_buf);
> +	return ret;
> +}

