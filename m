Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6BdgJ+GteWnTyQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 07:34:09 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E649D720
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 07:34:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4048F40B34;
	Wed, 28 Jan 2026 06:34:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ADjQoWJjhJJL; Wed, 28 Jan 2026 06:34:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 41D3F40B3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769582046;
	bh=yVo96DUdI/4qv8QQBIfeIU4oukRewjQaXx0GmTEl48s=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MMi05Z2K2iJ58x1EMnQWDyqG1X1A0v3JQ0nRcUuHbBBcDqWZT9OgPeQb8WehkqJZK
	 a5o4o5/GkIG0a87brvtwBMLsiEtyBkdyNMVG5FoOMWOz/+aWsDxEsZsvPWOsdETlZf
	 F3MZ7okSFWgOvDeWZIsAPGAHPWA+NM5e9CNhFm207P+Nr1Bl1EGcloRD/pJwg7Ky3k
	 ZnohqRWR8G+nMCwWqanwZ0077HWLqWSEzb/SlflkTCQOrF+KIEUdlEcPxu5ruGQebX
	 1K2EPozoBZjfzQHppdbxIzDbs2ev8XvBFm6QvLWK1RFg4UKsvFIV2wtrNsFIjetnIw
	 U2O+gWi/2T9Zg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 41D3F40B3A;
	Wed, 28 Jan 2026 06:34:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5F89B118
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 06:34:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4EFB6400D9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 06:34:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LcOjR82NcRIN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 06:34:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0ECC040064
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0ECC040064
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0ECC040064
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 06:34:02 +0000 (UTC)
X-CSE-ConnectionGUID: Cd7lTI84SBSqr4FgMiztSA==
X-CSE-MsgGUID: AddJVy8dQz2JfrRXdY823A==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="73382198"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="73382198"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 22:34:02 -0800
X-CSE-ConnectionGUID: XZXJOeeqRtOZ0bs4EgMysg==
X-CSE-MsgGUID: dCgIDEDUT8mEdun9b8wmvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="207319959"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 22:34:02 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 22:34:01 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 27 Jan 2026 22:34:01 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.2) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 22:34:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wpcDF/MmqkdHa8p/CauBTB0LbZRb227iRjeMzIM5mpZn3PwfbzNaZn8rEJnEw54FNcltE/+c0avJ/pvEAq7VUFlKW8KbnvSPRHpuTpaSxX34uRJK0vs9JzLdVvE/RzVxFEsIr+3CkaHgIly17qan7T6GjDIrpi5sRB7zGS6cqjqCjEAD2PQE6foI2aZcfWUJWrhc1L8nfMzqcTWt8vDZjdB22wNwlckBwpfoaymFIHnxFoAT9XvrVWo3q1ZnhIhit0AyEgYYvXL+NBqgNfP2SX3hYl6I2Eq7fpOH2x3uRdEn7eIBW1juZ3vvqgNwVqhoiRwP5iDMLL7PTKw0bqJK1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yVo96DUdI/4qv8QQBIfeIU4oukRewjQaXx0GmTEl48s=;
 b=Yn/A4uct7TLNGBuGkFlDpwhorTQchVVashGqfEQ+hLyQjT1Q987l1CDndc68/fNdnaZ58itWVPlIElqoIk4G8M5HNgLo8JJA6kKOBWWCIn74saVHqdistgLk1WLme52q2Y1S9nIdgM08mOyvJdR9r49eNK8TtSRM1HjWR++XiZvHy//ajZO46pq93589tZtdGt0vYQt1M332oIykXKfEosEHAgK1HV2gFGlXKYIcQQVVwUny9ZbdrD9o3gJYKKHaGMzcjt/MybPe4fO/NFqE9rUg3VTNQbPNCvoIsCOYQNcu0AYrBYJ/x5vjEdlqorlDEHFcko5fS09TbDh07hp7jQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by BN9PR11MB5226.namprd11.prod.outlook.com (2603:10b6:408:133::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.14; Wed, 28 Jan
 2026 06:33:58 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Wed, 28 Jan 2026
 06:33:58 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Simon Horman <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Richard Cochran <richardcochran@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: Make name member of
 struct ice_cgu_pin_desc const
Thread-Index: AQHcj6hz3Xrz2IlDh0ijd+PXOdCCdrVnILww
Date: Wed, 28 Jan 2026 06:33:58 +0000
Message-ID: <IA3PR11MB8986BA1E402B881F5576DEBBE591A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260127-const-name-v1-1-9c84615c55a4@kernel.org>
In-Reply-To: <20260127-const-name-v1-1-9c84615c55a4@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|BN9PR11MB5226:EE_
x-ms-office365-filtering-correlation-id: 16167c13-1b13-4a7d-bc84-08de5e3737a1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?Ylp1UElOVlEvSC82SzdWc3pMZURRMGNEOTlOMG1oZzF2b0phc0thdVBBV1Vz?=
 =?utf-8?B?TXdwL29iTGxUVUlIUzJ4NHVwMThHNkMvVWFXQ2Q0UnZNaEpraDcvVGsrUGU0?=
 =?utf-8?B?dXU3UFBjMkJOWnhEUkFwNkV6djFzQmJVKzdVNXVOejBsdlIzMFhjQWRpRmRi?=
 =?utf-8?B?SlEvL2w3REVySFZiWlFZMFk3STVjS2FNVVpIeHVDQnN6TkwzYytGT3NoN3lB?=
 =?utf-8?B?ZEtZaG5jclRpVk5oMmprUW9jUGkvMkVqL0hVelByZS93ZjdDSzFwY3V0cnRC?=
 =?utf-8?B?WmZLQXFYTzlBRHoxeUNkVkFLdHk3M3dFa05BblkrSyt1b2pPTSt1STY4Sk5S?=
 =?utf-8?B?RElyZGc0MFNsN0QvWms5elRGVS9iUzlvQW5pZGtyeG1WUWZwekkrYVZVczFB?=
 =?utf-8?B?S1lmb1l6blVVNUxRdmRVYXVUSjNpWDB2ZEc5TXBpNjg4bWs3R3ozYnBwUERC?=
 =?utf-8?B?Z0l0VDlSVWdNT3VuaXJpTWxTNDh2dU0vN0VKZ0Y1d1ZjNlY1RVdKUk5ZSGRm?=
 =?utf-8?B?SyttK25JUmVzNUNCVzA4WFd0ZmgydlBXOXJKOXQ3UTk5RzlSdmdXdGZxUlVV?=
 =?utf-8?B?WWhHMmhKTXNTNGRmSU8raStXSEthcVRSNWdyejE4ZDJLeXc1cmFsT1hCbkxG?=
 =?utf-8?B?eHlURFVwTGFKemFzdnZCdHVOQS9CN3FxSzAxcmZ3OUg5YU5INnJDNExqckh4?=
 =?utf-8?B?L0MxTERwcDFLTzIxVmJmY2luL1IvUXhUcFRMbWRqejJURHV0TnZTTlBDOGlM?=
 =?utf-8?B?MS84ZmZ0T3pXNE9tU3NYam9Qa0xxTWU4NjZhOWJmZEpnaG1Kc05FVTNlbEty?=
 =?utf-8?B?WHYvZVJpU3pWS1FERXNpYmhpTFlidk9hTlk4OGpZK3Fydk90b0VFUGVxd09G?=
 =?utf-8?B?NjFUNVJhNmpmdm82OWNtTDhhY3pTT1llcUg1RDZvM1dlWVhkMytjSGJhNGFh?=
 =?utf-8?B?dTVXNmptdSsyOGR2dDRKZ1BXRmtjUFc0WlU2S2ZHWXBES254a24vbXpSdnVH?=
 =?utf-8?B?Zk9VWEw1OGtOVXdTUWVGY3pmNXFsTjdrSVFmRk1wbjdhakxtdytzMjNxbHo4?=
 =?utf-8?B?RlNtdFEzZlR4Y0puU3FnU2pPOWJtS1pIWk91czlPRXdxVjRkaG9uY25LdktU?=
 =?utf-8?B?OTNvNVI3eElwWkZEdTdldUVpNnpIWUkrdXlFT1AvYyt3NnVTbEtsUW9uZ0sw?=
 =?utf-8?B?dTNEc2pVeXBFZ2xjRlVFdUtsNkVkR0pXM2NFRWttSEtQUVpOUHRHN0NWcWNj?=
 =?utf-8?B?aVNXR3ZSOUdaak00dHF4Lzl6NFgzZUVMUGpJRUREd1FBRUFHV0JzcFFvUllP?=
 =?utf-8?B?a2FycUYwbHc1VGtJQng3cDNTditXZE5mVGNPaUs1S0dwblZZTkFzNnZUN0RI?=
 =?utf-8?B?QmRtMFpFRnEyQUgrT1NLaEdxVjRHQVJac1B3MFhBcCtQVGxhNW5FSzA5eXZy?=
 =?utf-8?B?ZGVYTno2bDY1YmkzVDh6Q3BPQVBxb1VBcFJ0ZDZ4TlMrNm9ZNXJBNU1tZ0Qv?=
 =?utf-8?B?MUFFK21jVWZOcitPU2tMRGN1NU5KQ1JPMUtCNFY1aEk2QU1ROW1ZSVVhRHJS?=
 =?utf-8?B?SE1oWFI2VHN1QnR0T01lVWwvbFpqN1A5elE1TkczWnl3Vm5pa1JPT28vMkda?=
 =?utf-8?B?LzdCbkYvOHBYYkxqVnVZWEpOcEY0MVQ4S1hFaU1lZTZpOEpQMGR1K21DYkw5?=
 =?utf-8?B?b0ZHalhkMWhpKzdqVVNSWTZXMUxiR2NHSkxKeWdKVTdIdUVIUWROY2NtMFJX?=
 =?utf-8?B?VGRyNjQwSmNEM20rTThnQTFlbmh0aEpUcUdTZVVnQmk2UVlPSGZoUmUzN0Q5?=
 =?utf-8?B?T1dpTGNDNmNGaEtSbmR6N3FYUXJiV0EwcWd4cVBSMEpQandIR0RiU0NkdUph?=
 =?utf-8?B?d1pPT1AzbERzeHROT21OZ3RZMkNGQkJ3R01PK2p0cnZJYnFYREI4WHc3OFl2?=
 =?utf-8?B?UmhzcWJlKy9xK0ZqU3FGNEdvS3hCSmMzc2RIVFl2cUNyVzlyWFNVblR0V1hS?=
 =?utf-8?B?T3ZhZXRVQlFzaFFDbTgwM1JDK3pDdmVySWJMeXRkQjNmY0dvOTFMWlU0YTRM?=
 =?utf-8?B?dUdibUhUaHcwampLaDlFVUtObm5LcnVPM0dWbE5FTnoxdFJ6SnZQNmgzVkpC?=
 =?utf-8?B?YmdvNi8xT2FhV2xOR0xPNFgxZE5MVnJUV2J0dEdwYktjMGVocW1lU01DKzJv?=
 =?utf-8?Q?wyUX52gTLQkGeE4bgO5/0O0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dGxEZ0w3T2wwSzVaQm42dDR4S2lvZUtjWWJUZ2ZtWUJzd2dMSE90a1FmQ1BG?=
 =?utf-8?B?dEZVZzRJeGl6aXlwajlXMExCYXpZU0RZYllvcTVGNXoxbThDTldiVkg5Nmhy?=
 =?utf-8?B?bmhXYUxGT2w5YVFaSHlRaStCRmNxSjluNzBHTGxiNEpjK0lDT3VDVHJaMVkv?=
 =?utf-8?B?VHN6dGNZcVVkNnloZlZMQ2hSa0hqSW1DVzJ0QkNWZTErcnBYRnJBeUFXNzdr?=
 =?utf-8?B?UFgzd3dTWXlpVmVPSHZhaGdYTS9nYzBPUmVUTGdoNmM3MGwxS1hLcFN2UnBr?=
 =?utf-8?B?RFFjeVBEVjc3V0k1aVplSUNEU2FHdy93MGJ3bk1oL1JrVXlITFk4bE5zM05i?=
 =?utf-8?B?WmFlZ2VDWWxkMGdwWkhBa3NzS1VkSmRLU25GS0ZJZ1d3Rmx1K2VXOWVvcExX?=
 =?utf-8?B?a09lQ0d6NU1CQVFTckxCanE5MmVhcUVOakF2STIvUThIZVMwQk1IQjJYdVpq?=
 =?utf-8?B?b3ZGZWRmRjJPYURMbkRmMGdoRGRjcmxNLzk3UWoyTGs3R2c5K0Z2ejlaTHl1?=
 =?utf-8?B?SHFuWnRiZ1VpM3AvbzV1RU02eVZpMSsrdlY3SEdUN3FpOVZFTE92UXVHalht?=
 =?utf-8?B?SzRmRFhzK0EvOTFPVWsydFpWendpY2ViU0tnaHVLSlRYT29FaDNTek4zRzhi?=
 =?utf-8?B?R0tvOHl0S3VHTHNwN0VyV3FvcU9FdkZJVFcwcThvbEZEQW5aRTA3MGlTM3Ex?=
 =?utf-8?B?eHpvRjF5QndPS25CcUIrWDdwSzNUTDZvMlZlVjZQREdYUDRxRHJCRWR0Q3Vw?=
 =?utf-8?B?M285S0pEeG9uSkpVdDNoTlp3L0w4SmpvMEczcmd2c1djenJXczFDV016V3cv?=
 =?utf-8?B?eEY2U1NKcmZ3YUZHc2toSkRET0dma3BqdTFUak5qQTlja1MxSG9HakFqSEtw?=
 =?utf-8?B?dTlReEJ6emljYnVVWWhQUXZjNVdXREFYVzQ0QmUwaGptbWpzYUZ5Vlk0ZVdx?=
 =?utf-8?B?MllWanA3VlFQVDBDQzRzdk9LZzM4V25uVTJETjRXTlZ6ZStJYTFvRG54dERH?=
 =?utf-8?B?RjBrVWl0cHFJY1dHamkzREpydjJQMFliMnRrVjBtOGYraFBQU2JQOGdGZk9k?=
 =?utf-8?B?eUpXWTRsTFpJL2tyWmVXY25nQ3JjL2g1WmZNVU5MUWdsN3lqUGxwWjZNVkZY?=
 =?utf-8?B?RFV0bnFtYlk3V21tRzNWRHFwdXMzeXZNVEZ6ZE1wR2EydnUyU2hmWUxGdVlZ?=
 =?utf-8?B?YnJpZWlHdG5Hb3kzK0duckY2TE12TU04TCtOUzdhRTd6L2llMzhtRzdvQnVB?=
 =?utf-8?B?NGwzbW5rbTJ6NmI5cDM5YnYrWFdXOVFRSDNjTm40T1hXV2FTZkhXSklpdEwv?=
 =?utf-8?B?QmZOMkswSko2Z2hsTG96bHpMcVAraGFPc2pTLzB1RFZMZDlzbHRYN1phdGRC?=
 =?utf-8?B?R3BzWU9jVWMrcjZBSGJ3NStFbjA1Q0RZcGRIbVBBVDFMTzRtaWQ4MEU4b2pv?=
 =?utf-8?B?SjgyUFRnVkduak5ORXFzS01CK0N2dVphdDJYWlA3VS81bnJYdldjWDFGbE9D?=
 =?utf-8?B?ZjYyMVg5dlN3dDV1cG5kRjJWY2E1VVBSRkZjRVNrN2Zpd1I3akFSemsyMHJk?=
 =?utf-8?B?NGdYZmRYSVVrNjJNSklBcmJEZ1dKK0h4dWYwRUl4UUpwVHRqcm1LaEM4a1Iw?=
 =?utf-8?B?dTFvYmpzNlJIZm9reGRaNnh4NUZNdFNDeHorUVdNUUtPQWFUOGNoSGYva2RN?=
 =?utf-8?B?ZjJLc0dIQloyOGxzY1JQUVAzMVRxZUFjbFA2NXRVdktoVGNZMjhycFFXQ0lT?=
 =?utf-8?B?aVlIbnJ0S252dE9Mc3JkZXNkd2JuaitkRW9mVng2OXpoeFRwZkJ3b2daSjhH?=
 =?utf-8?B?b25QUU93c3A0QXN6ZzZ0aTZ5UnZXZklvdDRJNXVsRDM4bmNpSVZUTzBLQ1RI?=
 =?utf-8?B?TlJGSStOcE4xQ0hncStJY0dNaGRIRlcxOHpwUlpqSXh3ZFdIWjl0bUVmY0NB?=
 =?utf-8?B?ZUorL0ltN2k4VXFHaENvQXNranV6SkgvUEV4aXEremY2cmp0OTNHNEE5S21H?=
 =?utf-8?B?OCtmMGVtMWlVUzhYUkprRGpTNERaN0tIa1RMci9DNXJLUFVqOHhTaGVPTEdO?=
 =?utf-8?B?dmwrU1czbS84QWh6NTR3R1FjWkJJUm1KSHpoREhmeHgvMmNuUDdCWTRNUzJi?=
 =?utf-8?B?dXJRWVpLSy84cHVRRk9PL2xHakJYMFBhS2ZiUG9zN1FhUExTY1NBWHJqeWky?=
 =?utf-8?B?RnZGckd0S04yc0RGZjY3c2l3R3NKRlh5czB2TXk2MEhWOC80RUhUR3J5UlZT?=
 =?utf-8?B?bEdTSUJ0S1dwNklDT2xQeWxFTDZUejNJdEhVU2M1alJMZ1NJMWpPSFExd0lG?=
 =?utf-8?B?SVZMbFRWa1o1RlkxYnMrQ1ZLOHNuVXZ3UVN1eksydUQ4TDdVWEdjQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16167c13-1b13-4a7d-bc84-08de5e3737a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2026 06:33:58.2610 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bfzidgrvatOZWbcW+OixhlA7SLRoDXb8dwCJS0x1+960R5j/n1ChSwJLL8bY9MRB42UNPLyG407n7ZScA5IsykW5ITu0D6fE31e5WUyRQdA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5226
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769582043; x=1801118043;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yVo96DUdI/4qv8QQBIfeIU4oukRewjQaXx0GmTEl48s=;
 b=Q43cdRPTpX3Dnu+wXxcdM7PZ7zi7gxxTHxVzHUGBW/57oxUsoLSaHqLt
 g0KiwSgw0wmjw/eJ98G5kq9joNurQJ+O95FuIbYaZsFLuSaeIQ08sYyk1
 4yfAhlHuuq73uegleRTOYHpZecpK2tenO4gAWMbAhmAJo+2cbW+F7Z092
 Mdz7DrIy6hdq6xOJgLAf+7P2ELSrQ+yvJdDZFrbA8ykcffF9knjlmzJRU
 Mms9ckZshXhCFfzF0ojIESmba/aeDupTAYttpRF0n9kEZeEN2HsMtgRUO
 Dkgq1t6y/4xVYhgiUzGueed66Zlzx9IxRBCFHq2yysvwz870dPNqcuW6P
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Q43cdRPT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Make name member of
 struct ice_cgu_pin_desc const
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
X-Spamd-Result: default: False [1.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,gmail.com,vger.kernel.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: C7E649D720
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgU2lt
b24gSG9ybWFuDQo+IFNlbnQ6IFR1ZXNkYXksIEphbnVhcnkgMjcsIDIwMjYgNToxNyBQTQ0KPiBU
bzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gQ2M6IE5ndXllbiwgQW50aG9u
eSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWwsDQo+IFByemVteXNsYXcg
PHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBSaWNoYXJkIENvY2hyYW4NCj4gPHJpY2hh
cmRjb2NocmFuQGdtYWlsLmNvbT47IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmcNCj4gU3ViamVjdDog
W0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0XSBpY2U6IE1ha2UgbmFtZSBtZW1iZXIg
b2YNCj4gc3RydWN0IGljZV9jZ3VfcGluX2Rlc2MgY29uc3QNCj4gDQo+IFRoZSBuYW1lIG1lbWJl
ciBvZiBzdHJ1Y3QgaWNlX2NndV9waW5fZGVzYyBuZXZlciBtb2RpZmllZC4NCj4gTWFrZSBpdCBj
b25zdC4NCj4gDQo+IEZvdW5kIGJ5IGluc3BlY3Rpb24uDQo+IENvbXBpbGUgdGVzdGVkIG9ubHku
DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBTaW1vbiBIb3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+DQo+
IC0tLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHBfaHcuaCB8IDIg
Ky0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwX2h3
LmgNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cF9ody5oDQo+IGlu
ZGV4DQo+IDkzOTAxYmNjZjFjNGFlMWUxNzgyZTdhMmFmNDMyMmE2Nzc3ZDBiNmMuLjg3YWE0Y2Zj
NWE0NjNmNzQ1MDllY2M0Y2ZiYzANCj4gMGUwNmYyNmNhYjVjIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cF9ody5oDQo+ICsrKyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwX2h3LmgNCj4gQEAgLTI1OCw3ICsyNTgsNyBA
QCBlbnVtIGljZV9zaV9jZ3Vfb3V0X3BpbnMgeyAgfTsNCj4gDQo+ICBzdHJ1Y3QgaWNlX2NndV9w
aW5fZGVzYyB7DQo+IC0JY2hhciAqbmFtZTsNCj4gKwljb25zdCBjaGFyICpuYW1lOw0KPiAgCXU4
IGluZGV4Ow0KPiAgCWVudW0gZHBsbF9waW5fdHlwZSB0eXBlOw0KPiAgCXUzMiBmcmVxX3N1cHBf
bnVtOw0KPiANCj4gDQpSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRy
Lmxva3Rpb25vdkBpbnRlbC5jb20+DQo=
