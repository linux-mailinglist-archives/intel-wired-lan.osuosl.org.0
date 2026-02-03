Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SAj0OMjLgWl1JwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 11:19:52 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E330FD77FD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 11:19:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F2BE780B3D;
	Tue,  3 Feb 2026 10:19:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pfsd2CwDAC2z; Tue,  3 Feb 2026 10:19:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F4F380B52
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770113989;
	bh=WieV98s4Hwd9AHcjiFcBAensIwzuDJx4IAM+rs5v7Nw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fKj+6cckoTZ2nvmyV2SMH6EfPPRwQSmq5sduZwM/vomdcSRnThi1TJEmdrRbhSGBf
	 4V1YzFcqKt5XBc5qBfu9X2A9BjU1iqDItl+D2p4vZPS7qyYv5ABAGFCT+QBb5F8eTr
	 kVVDj02edtzwCV6EA3sawUdz7sKtqdHN0G0XSqykEAfhdrykzigcuHRVzvBKYWeiq0
	 M33w/lTWsJ5s2hPa0KITH15K+4561poeqVFpZ6gWvyI94FL9FG23NhFdiOHUGIqPM5
	 dimSwkBFpNOlFKljcUkRb8jutBi+aSoHnNgA0uy36PnnqpW1VLpmOVZx6pjb/cBhnL
	 gvjZktRQcdHLA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5F4F380B52;
	Tue,  3 Feb 2026 10:19:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C0B56F5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 10:19:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A2E1060E80
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 10:19:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W3WSAf2kP2aA for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Feb 2026 10:19:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B67A060E68
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B67A060E68
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B67A060E68
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 10:19:46 +0000 (UTC)
X-CSE-ConnectionGUID: Lvz8j6fcRBGsYrvwtPl6Ag==
X-CSE-MsgGUID: bmgODYfpS8CncrLuMx60NQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="82018740"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="82018740"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 02:19:46 -0800
X-CSE-ConnectionGUID: cHZG0DbsTlKHSWpSEw3Imw==
X-CSE-MsgGUID: OfFdcTGNQH2nDQxk8LdC/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="209594217"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 02:19:46 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 02:19:45 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 3 Feb 2026 02:19:45 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.62) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 02:19:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MlYxiXwgJxv2+dmqyUgWfaKBoLD2sfrYWYdIFRhq6RhuS1WXqSzX2KpZtBOCkvkrU2CZzNzASybsc5Rp6SYetd4F1Ze5I/iaAIKDcslk1Cfm+Qvv81q38NOg0FPc5iDGn3bwgzsnFQJG9IO3Jn5aKwiPDXMIBKAFCKtZkc9ql88pZNWAjCIgeRvlLxVi8S1phh5ADSqxmFUEnHrSd3xPQ6sQE/7uKk60fUUfa+gVq53p285d6jkwmcRiSPViuxULg10A3qp3m1hhkQRxwTz4vQPiPUa8Yqre5wPIL4vFYZ3gaHNIbcA/XLky8sOr/yypESEPKfAegVmRcScEiey5wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WieV98s4Hwd9AHcjiFcBAensIwzuDJx4IAM+rs5v7Nw=;
 b=OhNKsXeYAEKcEmo6mW+wbSq2k5S5xgrqarM7/UNxwpOz4U9tb2RNb0/kE+gKhrMjfcPGLrHIDdvP9xqkMjttrHiHu78gp2FT/KakhtmvQkY4chaZI6JvWY2uJo1R6pZvkgyd0PlXraV+rdHSWP1voFyPAR4DyJH9ZQO87CAK/gncTm0j5ii4yJUXPZthNRHI4BvgvNPBRTNMqGIN/sm2RlAKUK8MobpE+ycD9+TaOLnRdoVftbsyRY9ixrkXd58QYwBL4Jss+ObQAf1XM5hDQsluFMW4zo9BulF2xMrYQVMy/E96uJuXgf5HGBIjlgPF1yqKIlJOyWthkzCHwlDOug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB8086.namprd11.prod.outlook.com (2603:10b6:610:190::8)
 by BL1PR11MB6002.namprd11.prod.outlook.com (2603:10b6:208:386::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Tue, 3 Feb
 2026 10:19:41 +0000
Received: from CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::2769:b184:69c6:6eb0]) by CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::2769:b184:69c6:6eb0%5]) with mapi id 15.20.9564.016; Tue, 3 Feb 2026
 10:19:40 +0000
Message-ID: <7907d42e-4805-48bc-aaf6-16cbe46eb1d2@intel.com>
Date: Tue, 3 Feb 2026 11:19:33 +0100
User-Agent: Mozilla Thunderbird
To: Petr Oros <poros@redhat.com>, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>
CC: <ivecera@redhat.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, "Eric
 Dumazet" <edumazet@google.com>, Stanislav Fomichev <sdf@fomichev.me>, "Tony
 Nguyen" <anthony.l.nguyen@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
References: <20260202084820.260033-1-poros@redhat.com>
 <20260202155813.3f8fbc27@kernel.org>
 <b064ca33-1d94-4c7e-b0d0-78430d8cd0ac@intel.com>
 <14cb0b22-ec39-43e4-a35b-22ad558b2e34@redhat.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <14cb0b22-ec39-43e4-a35b-22ad558b2e34@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DUZPR01CA0067.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c2::6) To CH0PR11MB8086.namprd11.prod.outlook.com
 (2603:10b6:610:190::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB8086:EE_|BL1PR11MB6002:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b2f1d5d-9902-4357-cc4a-08de630dbd2d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OVJRSWxBcGpSSnBjTHVKeVFrTzFTcnVlSndGNGFxY3pBTnUrU1B4bjhUUlpC?=
 =?utf-8?B?amxXcm1FZTYzOExCWnFXVFJ2Y3JYa0lEbHh1a05PKzIrTWlXUXpZSTBqN1lH?=
 =?utf-8?B?a1lNTXNLaWNBaldiQUJJNTJ4SUFZdmhUVU90amdSL2lHcmgyVGtERldzSzJm?=
 =?utf-8?B?aVdTV0FLVlBTV25laUh4U1M2MjA5Y3JKdlhjK05HaU5icHBqQk9LMTl2QlVk?=
 =?utf-8?B?cnFpS3BydFB6aE4yNDJlWlc4N0Y5MW5EVk5sbTVGZzYwQnRYY0xqMlJTYWNK?=
 =?utf-8?B?cXZtdS9SeFdNR2J5R3F4MlZBNW9kU0ptbU45YkRYOTNOVG1BN21OaUpJNldP?=
 =?utf-8?B?Mm13bks0RUNYQ1lUMjJvSWV2OVdyNE5lVXFaYmRqZXpPeHdCc1FGMHFjdUVU?=
 =?utf-8?B?UFhiS1Rxa1psbzlQQk95d1QyNjdYNUZEVUtiZFFyUDc1VnJvU09GOGN2MklU?=
 =?utf-8?B?SnJ1alRFRWx2THdBMitvVm5pejJReXpValppQnI3M3RxWnB4UENFVlRUbU94?=
 =?utf-8?B?b3R1a0p5dVJPMnhWN2lrUmhySmlNeWZiRzhiWXVqUkpVd0NZOUlySWxoVUFW?=
 =?utf-8?B?UUlnZ3NJdytUVGtUekJIcjc2MHZWN3M2OUYvY1lCOXhYSFM2RjZORjFjUHpr?=
 =?utf-8?B?UFExeUVIU2tkejJrMk5QV210b1RjTTg2L20vQUI2VDNzMUtxRkNMSUlTQkV3?=
 =?utf-8?B?ZHBGS0cydFVwQm9VNVo3YmRVbzVLV0dyZktYVFNlSmVZelo1WGc2Zlo5eEtp?=
 =?utf-8?B?dFg4bTZWLzBveHkwa2MwUlhub3hMTE9XVG5scjM0d01MSnptcjNreGUyNk42?=
 =?utf-8?B?TGFqYkxheDhrZEs4ZWFxMjI3eVVBWHl1alM2dzBsaVpZZ0hHclJlK24vMWM4?=
 =?utf-8?B?YU1CaUZMUW9HRUNoUjEyRzlCTnEvQTVhTWJNLzNDR1NtWUhyWGtVWU00YUlh?=
 =?utf-8?B?WXFkb1VBa2VUSTE5OUVCMU53eStEMVNmdElmK0pVb0xOdGFvQnphVTBRcUhj?=
 =?utf-8?B?aWJQTFNPN243cjVINXBnUUhPby9qZDhxVDc3OTZDTHh0OHV1dGpqd2lDbTlV?=
 =?utf-8?B?Sk4vSlBybDQ1YWx2S1RmanlWSTAzQXZYUDJlRTVkOE1aSDhKYnJFNitxYVBR?=
 =?utf-8?B?WFNqZ2IzMzVjb0VURHp5SnlqcldiT2lNZ0w2TzE5V0dCU1A2NWw0bVVuYzF3?=
 =?utf-8?B?bysxOGdZZ01LekttNmVNQ01KYmxJMzhObGtMNU9oU3BZN2ZtS09ZdytQTW5i?=
 =?utf-8?B?bjczbUs3Tis5dExuUVpuTUN4L2VCbUZaY0o2ZmNlSFJJeVgrUHJuOUVJelN5?=
 =?utf-8?B?amxLUzZvV1JNU20wemJtRE5zRzlZVUxGRTVURFMweTRXdm1qWmZFcmg2cWFi?=
 =?utf-8?B?OUJqSnZaTnB1ZzNHMmE3UnBCSTVEbHVMVWN3Q3QxcWo4OCswMlJkTFFCd1Rj?=
 =?utf-8?B?M2tLWmhCenA5OGtsVm9yRElnbTdOMGJvS0VJQUZSSUxsSkdTaEkwb1R6U2pB?=
 =?utf-8?B?MjYxc2hPY3BxNjdDbWsvd05MMXExNzFjTXBYSWNrT3llNytWcnlFV3NyTEN6?=
 =?utf-8?B?WmZreUUvckFQeEJwc2FlMC8rT0U5K1hPdUFZL1lYaUhQVGJNMzhncHY0S2N2?=
 =?utf-8?B?SXFKc3FSZnkxdnJJSEdvMk5OZW1sVnZHTEFXT1pnYWd4bm9YeUU3blhVTWZ5?=
 =?utf-8?B?MEFldU1xaHo1UXFBSmFvN1QzVzRPbGlBSkRTZGw0YzF0RHJDaER3TWJQYWZC?=
 =?utf-8?B?eXJ2akpWa3lLVjJMVGxnS3l5NXhuRmpGTExGSThpTm1vbTlpWXlSdktndFVP?=
 =?utf-8?B?K2dmR2t4QVRvVSsxT2NLQjlZMHhCVkR2MTlxaUwzdnduenJSYWhONWljamc1?=
 =?utf-8?B?Umc1d2JXZHd4bW1CT29MakRSUmFoWXZZMFBVKzM2TWhHRUxURElkMEpTT1Bp?=
 =?utf-8?B?SUdXNUVKODBpaFBTU1AvdzA3OUdyZHg4SHYxREVtUkFxKzVUa0xCcUJjajRE?=
 =?utf-8?B?cHBzR3pScUpJK3hGTmowSUJtcThEMTRLN2IwMEptd2ZnZVBPYTBqLzRWbExs?=
 =?utf-8?B?eTVad2NCK1cyV2MwSHR6QmV6Tzh3Y1NVcjVkTkoyeHkwYzBXTUJGTXBYbzgz?=
 =?utf-8?Q?xTd0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB8086.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VkpxazQ3bEZ1WXZNUmF2YlE2bWVDSWl5bUUxMWw1VWJDbTlTMU00MzF5N0JC?=
 =?utf-8?B?VjV4azJnNzJpR3czVWlYNW95a0ZwVGRNNjFqY3o5V3ZxQURlc1lVby9Fa0lO?=
 =?utf-8?B?WTVibnJYKzdGM3hLeHNSN3hpMWZOanpZOXkzQXRjUC9Za2dYckdkZjBSUFNP?=
 =?utf-8?B?ZmRtNkt1d1dmQUo3bFhtMVcrZUFRVThaMHpScVN5MDFtUmhscS9zb1pVMUFG?=
 =?utf-8?B?MCtVU1BNc1RYVk81aE9jMDY4bm9QcXpwVVM3ci9xRk1KdkRUTkt1TGRsbnVa?=
 =?utf-8?B?U3dPSUdvOVlYOXdTL1BvaTBBWnBSSEhFN21rWkZHLzE1UWtCaEtjWUxnWmQx?=
 =?utf-8?B?TVluV3MvcU5TZmJ6U0xsdDRpdlpHMFVRc3VmVFQyaVZnc1lGNnlTQ2JuN3NG?=
 =?utf-8?B?WjBsMUZURkhzNXJDK3dXQ0k0Q3I4U3E0a201OFB6WHZNdFp6N1ZGdXV5QWtE?=
 =?utf-8?B?TTkxWEIrQUU5bzhyVlEyekZQSXpxMXNyS3VPbW9NdWVHejNlMHp2dGoyUUk1?=
 =?utf-8?B?dU1hVzVVMEw0RHFLTkhnZzZHQXhnT0tNendicklaUTBoaFY2c3Y3ZnBPQWds?=
 =?utf-8?B?SStLS2VOQi85YmhUMDgyV2kzNFRkTXB2QVIxd2NKWkhwaUlXY2pETGZWSE9Y?=
 =?utf-8?B?SFBvcWVJazFBNkgwc2hwejREdXhPVXBNeXR0TmFqTmc1ZDJSdXJWdUp1YkRU?=
 =?utf-8?B?SXkxZjFhTE4wblVpOEdtR1VrdmZONE5oVU55UmJxTjRjNXREd3JnT2lyZEVw?=
 =?utf-8?B?OWtrTWYwTjJ0WVlRZnBqSWRxWTVIdGJ6ODhlbXdwSExCTW9ZNzg3UEFNbElS?=
 =?utf-8?B?TzBFL1VIZXZoRWNBWXVzazVSU3JLMFZaN1lWb0RkbW9QMlovdUNsbnl4a2Rk?=
 =?utf-8?B?YjJSSXM4RmhRU2ZKVFl5b3JBYi84ZHA4OWYvaHNDbU42ZUp6ZGNqZnNiQ1NW?=
 =?utf-8?B?Q2dMcXhkMEpScHZoZGExaDllSHU0NzZCRjBuYi9lcU56T3d2V25ESHlQdHh2?=
 =?utf-8?B?SWVpQzNWZ1lFaGg0TkxycmJNQ2ljYW81OWhCUHVEZEIrdmxaWVJXci9BanR0?=
 =?utf-8?B?UEhtOEhwdmZLOWpsL1EyN08ydXVKM2wvSGJFQldHcmlndWtjRndyaVpTQzNs?=
 =?utf-8?B?UlZxMVZqL0lFUTEreWtXQzFmaXlqK21NTm93eCtYbmw3S3lzYUpqWXIyMjgv?=
 =?utf-8?B?bHFzTGtLclBMTytrd1dzd2VFLy9UZHl1Q3pLUzhqc2E4d1lPWDZNakdia3dI?=
 =?utf-8?B?QkRZQU9PRzA2U2psOU1OcFF0dDNRcDJFRmFCeDM2MGRpd0l1WjlxOXZwYzNq?=
 =?utf-8?B?d2pnd0F2NXZFMDR2QWdwZXhEaWV1aXhIdjhFZDlCMzdKeW16Nm80UjQ0L3Z0?=
 =?utf-8?B?TU15d0YwSWJ1cTVTTWxmbWNzWEFqN1hJbE9WdFlEakxrMXVMWEpFU00zTVcy?=
 =?utf-8?B?ZVpZOHVoWUVKaXhOaEduN2R2eWZUbWtRUmZrZlZYSHI0cS9kQnJJMDlYeWx0?=
 =?utf-8?B?akZMSDJESkxzRUUvSGZFandEOWlHY29Kb2dKaFltTjJIbWhtTVlQeExjUEFn?=
 =?utf-8?B?WUVyVmlEaHhVNklHcHFQdW1nYzl1M2U1WWNzeXV3UVkwNHkwZGZzcmE3NDB6?=
 =?utf-8?B?akd5K1poaThoSUFQUm91REl2VVdNRFpTSkhQWG5hL1hWUklsYTgzMDVlVkVm?=
 =?utf-8?B?bkxZcm9mamlUUTd1dEk0TFh2SlBiOWYrdnF5OTlJOGNzNDg2VnhzSGs0MTZP?=
 =?utf-8?B?b1YvVHRHRnBncDFDdlNEYmgwTW5tL0lEOFFlVTlwSzJnOUdSYXlsZFliNUdC?=
 =?utf-8?B?SnBXZ3RDMER6SXB1VGlnWFlFZGZRbWlld080ZE0vMDl1UFowUjlqOU9jWGhB?=
 =?utf-8?B?SDczd0tIS2dvd3VObGVGRjRuSjhtcGRYR3ZDbEprTzB2WlhTNURPeHdSSE95?=
 =?utf-8?B?ejB4RTdnTnVFaHRtR2gwajYwUjYxUEdEU2FiTWdpZE82VlRKSUhCRGRRa1NO?=
 =?utf-8?B?ZUxwczNuU29YamlWcjhGbCtFc2VjNHlBS3NnamdieEV0aHBIRVdQMlRweVdr?=
 =?utf-8?B?UW02Y0pkYW9VZi9kRm1DTTdKRFhpbjdMOEMwTy9tQmtGdEdHWmN1SGlWcUFi?=
 =?utf-8?B?dElRWWs0d2l2QVBMcTQvc0pUbVFWVm5UbFRlODFSUEdtN3lraFhVcHROYmhT?=
 =?utf-8?B?eDdCN0M2c1IyclZQYlhLSjRDeloybStJSllpdWFMTHBMZUt0VUZQdFJodlRt?=
 =?utf-8?B?MEpYcGw2Wk8xS0Ywc1oySUgxdDNxS0pLK3VpaHBlMFlwVkJGUURHTjNtNzJF?=
 =?utf-8?B?d3dvNDhWcXI1UFFDRUdSN2l0eHgyclRraG1EREtKZnRMcE54Vjd2T0wxeGJo?=
 =?utf-8?Q?LZBlbnTOCC+Z8h9w=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b2f1d5d-9902-4357-cc4a-08de630dbd2d
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8086.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2026 10:19:40.3991 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lP7iJ09dWxMicQkcH68hwWxh/5VHhO+VoxIatFqHc/sn7lMehXXLgQ+zGU1uB5PY0kmgJnLMOZxnTEP1J+2/KShWFInKdMozztAaQACrZuY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6002
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770113986; x=1801649986;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cPUV7ntU2fNLPyKXpCHGs6iMZclzKBHX72haKbgEjWQ=;
 b=jxL+Nk8AEaJQ/km7TZLeILc1atClwdvQdZWeMgeFQCNwLsL9MqWOiV63
 X7ShkKUZT3R1hpkLYcLVbLWgBXfFgM9E/ETpllUc8BL8LNrhT4fx/3Ecg
 q5Ajw0/o0TlEEoUSjQGhn9bzrC7E1u6AU8q+EZFI5FeO5vV1QNaP234nH
 D0JZqYpSAglqV2E44+IdeZ2m5WswROf4t09nzaKc7CLp6Z9ztb5XapNES
 h03njeHCODchIpF5exKBQ/tQyKzPUINRSwCQ04cWDE/fSE7rJeQ8sBTXV
 ZGWN9eIPdjKdp6AJPAPCNOQOi+VUPaQ5ykzy6iyIY7iX0YzbWm9uEvEEE
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jxL+Nk8A
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: fix deadlock in reset
 handling
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:ivecera@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:sdf@fomichev.me,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.985];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:mid,osuosl.org:dkim]
X-Rspamd-Queue-Id: E330FD77FD
X-Rspamd-Action: no action

On 2/3/26 09:44, Petr Oros wrote:
> 
> On 2/3/26 02:00, Jacob Keller wrote:
>>
>>
>> On 2/2/2026 3:58 PM, Jakub Kicinski wrote:
>>> On Mon,  2 Feb 2026 09:48:20 +0100 Petr Oros wrote:
>>>> +    netdev_unlock(netdev);
>>>> +    ret = wait_event_interruptible_timeout(adapter->reset_waitqueue,
>>>> + !iavf_is_reset_in_progress(adapter),
>>>> +                           msecs_to_jiffies(5000));
>>>> +    netdev_lock(netdev);
>>>
>>> Dropping locks taken by the core around the driver callback
>>> is obviously unacceptable. SMH.
>>
>> Right. It seems like the correct fix is to either a) have reset take 
>> and hold the netdev lock (now that its distinct from the global RTNL 
>> lock) or b) refactor reset so that it can defer any of the netdev 
>> related stuff somehow.
>>
> I modeled this after the existing pattern in iavf_close() (ndo_stop), 
> which also temporarily releases the netdev instance lock taken by the 
> core to wait for an async operation to complete:

First of all, thank you for working on that, I was hit by the very same
problem (no series yet), but my local fix is the same as of now.

I don't see an easy fix (w/o substantial driver refactor).

> 
> static int iavf_close(struct net_device *netdev)
> {
>          netdev_assert_locked(netdev);
>          ...
>          iavf_down(adapter);
>          iavf_change_state(adapter, __IAVF_DOWN_PENDING);
>          iavf_free_traffic_irqs(adapter);
> 
>          netdev_unlock(netdev);
> 
>          status = wait_event_timeout(adapter->down_waitqueue,
>                                      adapter->state == __IAVF_DOWN,
>                                      msecs_to_jiffies(500));
>          if (!status)
>                  netdev_warn(netdev, "Device resources not yet 
> released\n");
>          netdev_lock(netdev);
>          ...
> }
> 
> This was introduced by commit 120f28a6f314fe ("iavf: get rid of the crit 
> lock"), and ndo_stop is called with netdev instance lock held by the 
> core just like ndo_change_mtu is. 

technically it was introduced by commmit afc664987ab3 ("eth: iavf:
extend the netdev_lock usage")

> Could you clarify why the unlock-wait- 
> lock pattern is acceptable in ndo_stop but not here?
> 

perhaps just closing netdev is a special kind of operation

Other thing is that the lock was added to allow further NAPI
development, and one silly driver should not stop that effort.
Sadly, we have not managed to re-design the driver yet. I would like to
do so personally, but have much work accumulated/pending to free my time
