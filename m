Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qJNcLzyCR2pTZwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Jul 2026 11:34:52 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EDE700B17
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Jul 2026 11:34:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=We5XHsqe;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 43AB482E9D;
	Fri,  3 Jul 2026 09:34:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jI0if4Ho5opT; Fri,  3 Jul 2026 09:34:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0AEB382EAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783071289;
	bh=fOMfg/hLaRIh8YSOUtMa9BVWD7sF8wnQ18peF7q5fAM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=We5XHsqeqRgTzEKpQlPr7RVNC+qYoxDijBuagqBniyCJG8Y38MpZqQkkskq0ozFx2
	 +gXcfo7F5oicrr2nfeM2/shWXpOrSlJ7U5zDNp0R6xVh+sWRb77e2dNug84tiRC51e
	 R3C12g++U0kvvQ1jvng721HYzfzDOAUkaqUFWED4eMY5eX+vuj5rCgCo9V/wMqQtQb
	 Ba8xIBNJjnWxBaEDe4TmqlnppRgp9nUPXBVhwI/AnH9jorOoY1+5y6na1jivjArXTB
	 1+bmfp7+saOUT8a3F5+0vQBpM4K3JO0P22nRMb50566NCzxhIBET0dh3bcbSD8pNt9
	 oGhNuGnecKBvA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0AEB382EAD;
	Fri,  3 Jul 2026 09:34:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 450B814F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2026 09:34:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2EF89401D6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2026 09:34:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LZVdhxPX21BN for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Jul 2026 09:34:46 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E8BB7401C2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E8BB7401C2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E8BB7401C2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2026 09:34:45 +0000 (UTC)
X-CSE-ConnectionGUID: Q/87Z3M0TLSeqhxtd4EENA==
X-CSE-MsgGUID: RxRthq6WTtKsLhWMvZFsgg==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="101364433"
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; d="scan'208";a="101364433"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2026 02:34:44 -0700
X-CSE-ConnectionGUID: LXl3SMZxRFqElpX5JJfqdg==
X-CSE-MsgGUID: xa0otkENSVSmlDjmZtf2tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; d="scan'208";a="252615513"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2026 02:34:44 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Fri, 3 Jul 2026 02:34:43 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Fri, 3 Jul 2026 02:34:43 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.70) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Fri, 3 Jul 2026 02:34:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JcDI7VjTG/NEBdZRL5HDtsHq87JUcxe6l3Lmh2A4K9/bvSHyFP6RsuSjFsYOxr3vBbnGHvTZ+eiAFzkUJ+9QMmoz8rnknykxvTbBwl1rOCdXnZOm5BHYM33JMyN/5rSVqL0wsXtzBhsQqIQbZKHB7XjyXstE+U1mIfcbAILkfHItMqK6ohfAd63wUYTCqYl6IV35TN+eLX0+XmrEdUZvfBhQvOGzYIbSa0m2zcatiAXu3ChjB+ZxKwxBTqYMHMQMIYmT8MZneeFkdIIuM9Gw7WdENJl6gE0OinwUvqM3/WrsV9d21IIAAX0hiNUpMl+1cilRYd8QKp1K3ibcYA02Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fOMfg/hLaRIh8YSOUtMa9BVWD7sF8wnQ18peF7q5fAM=;
 b=o4dfyBPBy9qWUERVcAYeL8syk8F+gIoll6CBrGhUvJuDoWTlbb/vJP7fChTFXIsK0O9TUbCqX1t90f+ISBMdIhkUEXfmI+eGeTZaqbzfVSYI1rNgvycFRIEFXzTnSOi8AsT5dZJEadIUpE6poRsKnL3YjYh96Nl7ZiUFnUUEQZjiNFexavDs8UMYDlvzo9b/P+uLwHehS88EWmyt2f7CV/nCZBHt9hpmw52WsohPIWM3/ZgjoVDA4wLQQSzXVvc9M/VFLvCGwrycTCD5OQ7NBamWItxkWSVJG8jDUbVOHGlIcyuZkhRtAYw30fU4WQWtQ7PLADz4vkZw0uhdT0OKag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV3PR11MB8508.namprd11.prod.outlook.com (2603:10b6:408:1b4::8)
 by LV8PR11MB8605.namprd11.prod.outlook.com (2603:10b6:408:1e5::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Fri, 3 Jul 2026
 09:34:34 +0000
Received: from LV3PR11MB8508.namprd11.prod.outlook.com
 ([fe80::a1e8:1786:e5d1:8e51]) by LV3PR11MB8508.namprd11.prod.outlook.com
 ([fe80::a1e8:1786:e5d1:8e51%5]) with mapi id 15.21.0181.008; Fri, 3 Jul 2026
 09:34:34 +0000
Message-ID: <0b79ccce-641a-415e-83bc-b4050bac6b95@intel.com>
Date: Fri, 3 Jul 2026 11:34:27 +0200
User-Agent: Mozilla Thunderbird
To: Mike Rapoport <rppt@kernel.org>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Manish Chopra <manishc@marvell.com>, Paolo Abeni
 <pabeni@redhat.com>, Edward Cree <ecree.xilinx@gmail.com>, Sudarsana Kalluru
 <skalluru@marvell.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <linux-kernel@vger.kernel.org>,
 <linux-mm@kvack.org>, <linux-net-drivers@amd.com>, <netdev@vger.kernel.org>
References: <20260701-b4-drivers-ethernet-v1-0-58776615db6e@kernel.org>
 <20260701-b4-drivers-ethernet-v1-2-58776615db6e@kernel.org>
 <d2c75404-a87f-4bb6-b17c-c921d08a1f15@intel.com>
 <akZ4dBzkuoKPkIZT@kernel.org>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <akZ4dBzkuoKPkIZT@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0019.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:46b::10) To LV3PR11MB8508.namprd11.prod.outlook.com
 (2603:10b6:408:1b4::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV3PR11MB8508:EE_|LV8PR11MB8605:EE_
X-MS-Office365-Filtering-Correlation-Id: 92df8611-8bf5-425c-dbc1-08ded8e64ac0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|23010399003|22082099003|18002099003|5023799004|4143699003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: bhQRcUQWHOyLgbp9e9SyNGtGFaP9rtBXUtdf1nMl9SZMyasiKM6QLmCfDt5w/OEW3J4PcFLSyHaU5/MpV01q4CJN44mFgOp7m+gRVKlPpRh0AEFE+o9c6kH+NOMHXKKOQfmGPyRnVVNaVQejgb+UUlQrWRIF3dVyhDMU9mM1NZILFs7NGvY6E7UOYo5FNLqjgQAZqGE4vINasx/AMPucaaFS4pAcxcjXaMq5yfPdaSlNOmfLZsb7YuGXkGbMZT/CaJXhR6BlogsOf/uCTLYaLWvl7r+h4+HLKY0NSzMx18mBR8IBpSvkqcftJE94e2HBeGqrAeOp9WdbB5CYV/IvBjJBvylmu+ARIPF3MJkENaEWyiQR5g0639ap0y7NsRTUwdTfx8PTVtFAh/er4IsB53IGamakZoA92vWkN/2ydkwrNlz9NCTnAh4zE5QwIUsFHJ+Jw+im+qaP5SGh/MyfS5Ob13SW7JNNALSJBvfumaSO882LpYQQYf79DnUQFQ2FQ6P2eUexy3zsMKfxPGpKt+JO0G4vx0KjcH6qdWmD4fKsVgKcgxmZHC6onTckgNLaw3Uhf9ygwEWO8xhubrM7QpL52Zk+GT5dodhuZ1Twwtxjmh2wiXCe8RponPi3GKx270lZZ/6wBKqpEUW2HnF514Mub65jhx12oUpS/PQ21Xk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV3PR11MB8508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(23010399003)(22082099003)(18002099003)(5023799004)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZG16VUhkSldTVTZLMDZVUnh3aGp1OVpnTkgrbUgyTXZlV3hqak10ek9BRXZs?=
 =?utf-8?B?QWFybDJqQnBxQkQzTVovaW5RcDJMM0x2bkYrTjRVTGFrT1BJUEt6TUhTUXdo?=
 =?utf-8?B?WWZZSjJiQVF4T25kSFAxZUp2RVN3ZzdlUlhaUm9YMnUxblBhd3RmS0pnNnlr?=
 =?utf-8?B?YVM1NjlFOGVmZHAvUGtaSzlMODRYbHBRVjJ5YVpWYVRzWWxuVWp6aHN6eGRQ?=
 =?utf-8?B?RElFcXF6bnhQbkQxZDI3ZThtSWdDSk5rbnFKb2wzOXM2Nng1VVE4WmFjbis4?=
 =?utf-8?B?T3dSUWlVK2dKNDZCbk55dUlHTVZUclZGU3E2V1V2dVB5MHhOTTVvaXY4K3pp?=
 =?utf-8?B?QWNBZUdwNmFGbmhDck1zWTlVbjJrS2VIMW9TWU9oVnY3eE5adWJrdnlHN0lp?=
 =?utf-8?B?bERENWtKZzJHOUdFNE1TWTVHa25lUTVXWFRabmF3V29yUk9KQytsT0hxTnBP?=
 =?utf-8?B?V3UvN0NqcjFxWkR1M2N4V1VVU3lSUFl2TW9NcTJaaVV2dmlMRkh1cFhHdkZO?=
 =?utf-8?B?TkVpVHVEbVdNUm1EU0pVTEx2ZTVVYWYvaGR2TGZNMFlsNjBnTkc4MS96VkZx?=
 =?utf-8?B?Z24wd2RBU2VPT29maUZSL29EVlNwK29VQ0xRR1ZYTXg4TVlWT1dHWlJJczU4?=
 =?utf-8?B?TkttckhnbldLM25tb05sSFBpVlhWQnpWUjFvdllaYXpuVWMrSVpLMUVXdVpL?=
 =?utf-8?B?VWFESVhVamNBTEl5ZjlDbkhpaFlySit2Mkx0bHF6ZG5XVFpVZEVxUWxOanhZ?=
 =?utf-8?B?THRpMDRHYXZlQ3lsQTVZb2IwUWlQYks5N1NNNDF1OG0yMkZhZVp4Z3QxZGpU?=
 =?utf-8?B?dmcyT1lVMWgrSlpZNHdYKysvK25wb1ZDazNFVmFLYkE1L0Z2NmtIcTlIaHBR?=
 =?utf-8?B?ejFENW5Fb1E1ZXdmdmZDcHllZHFNb1hRbXZweGhQYjdDK0xFT3JKZU1lWk1u?=
 =?utf-8?B?S2REak1aai9NM3N1eGN4NnU1N3ZqVE1KTXVFeWJmcUMxOUZGZ3pKcXM5N2J0?=
 =?utf-8?B?WmNqb0wzdU1mQTRTOHg1Y1l6eVFMQXpMYUhETmpHVFNac2pRWU5VOVM4OTN5?=
 =?utf-8?B?cVk1WGFuWWxWcDc1SnNIL2VTb21nelVpakhLTnBGQkpzSGtIWnRyUUFRY253?=
 =?utf-8?B?ZU54c2c1Yml1SFN0VkdDZlNCTmhEQ2svaXFsd2toRXRmakVJME5vS3FQQzZN?=
 =?utf-8?B?QW1ZNGdpajVBZ3R5WnZTU2VKTGdWN0JPOWI3Ri81T1FVODVGNlMzMXNrdDJp?=
 =?utf-8?B?R1drbFZXWEUwWkVlLzArR3gyNzN4SXJSaTlpNDh4OVdNWGlOb2ZuVWYvUkpm?=
 =?utf-8?B?SHpxLzRtMWR4QUlSc1pyVjIwV2svS1M3Ulp2VWVCZjR0SHVKQW1SbDF0ejRS?=
 =?utf-8?B?Nm4vakJEeU83V2VrMnM1TlVEZWFQcCt5OFVYd1piNVZHUSttNzJweVd0ajFE?=
 =?utf-8?B?UlVBak5RMU1ZZkFTeHN0M1JtdU1xLzVOU3VidStRWkRhWHlnVWxXZWRSWVJi?=
 =?utf-8?B?cUNRR3RHL0RmVEloSHB6ak9sQVQwbXJWbytXZXZ4dG5tRGcvanVPSnVHbzZx?=
 =?utf-8?B?Z2NGZjhNbzYyM2ptYmhJemtzVDUxL09oWEpqUkdWYzdKVCs5THhnTmFFc3Uv?=
 =?utf-8?B?M3Qvdk9qbGIwaWwrSnFPUFBBTkgzSEZaSlpGaTRmVDQzUzlKRXhJckV3ajhO?=
 =?utf-8?B?QkJYemlTdFFxMmlzbVpCNDF6TW9uNDlvZVpMRVF5Ni9kQjFMOFZrR2J1RmVa?=
 =?utf-8?B?TjVKQkF0WG55cGlIc1dwdStPeWFmTFo4T2dmWUJZalFDVzJjY2R3YXprd3Q1?=
 =?utf-8?B?WEVFdWw3d0xlZzdMdEZPd2V6ZUdrbk1MTTUxU0JrRGU4a3pEbGx5QUU1QzQ3?=
 =?utf-8?B?SFVuYUFhZEFaN0VYK0xFYWh3d2hLaXJoZjlQeGNscHJxUVJUSXBCamVDanhX?=
 =?utf-8?B?L09XcEZ6NDNvQ1gwUjM0Q0hRK1hGWlNFdm9TSEV1MllzYU9aT1lYR3ZXbXV0?=
 =?utf-8?B?V0diS1A2bG5tM3VLMlJYbDcwaVd2MXVGQWxCMlk5cnlaMVlFeTNGcUhFNVI3?=
 =?utf-8?B?d1dBaFRYcEs4c0dyWmVGZkdzVzFSeHRyUklnQmJ0SW1jQWtTcWh2T1RZT0dP?=
 =?utf-8?B?RG04N25LODBJQzFYcEtadDNTc3VEL0MzZlp2RzhVWUNud1RsNFcrTGJha3pk?=
 =?utf-8?B?eHdEcnFzSVowNithUDBjbEU3b20yQ1cwQWxPZTg4Zko0UldLVUlEYkhJNnhS?=
 =?utf-8?B?a1IzU3p0eEtlc3VnVnlGWUYvUGhVQk45dHF5VEpiZzFvWmlMWVBXUWhQYnN6?=
 =?utf-8?B?UnVPeWZCakxqWW83aGdtUHVLRXBCZWVYZWpnY1VBdVFZVThlVkRwYUhMcnZs?=
 =?utf-8?Q?HxUIet5Ncqv+7Da4=3D?=
X-Exchange-RoutingPolicyChecked: bMLjM2M8DhtP4EvQzD+Li+YoPzDLBbVdeyIQ1WRvG3uKLXkWyahOymwuhdcrO9zI2A4vI/Zmoewc0hI2DFxERESYUAkg3W8qEH1fcDvU/EbwCodwHzopHznPnYagkquilkoAafuJq9wX48BZoLTRtdbo2Aiq4BTp3E10zu80+daMKFC4lLoaDl7TnWWpGkHgHy3dD5dmwyMObOOn0sUH7pivIV+YEmNv51UaneRuWX94v3xpUxAuIX7iyhTRpfb+DZPvPDVrxvcOhAr01fK781npr/RE4N+q9UfBRz/qIgISTGuTr3ovQA9epbx/deWIV10YzJ4ZBiztAftUGDN8ZA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 92df8611-8bf5-425c-dbc1-08ded8e64ac0
X-MS-Exchange-CrossTenant-AuthSource: LV3PR11MB8508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2026 09:34:34.3600 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JKcvFfV+nvnV4r7dBEizOXYjd9zXUngLk7zyhCZpR7+gUaUxti4G09KG9trGf2fJKITUQJz7nFHHw8M6CsvQchuYp2zNWunldA7nV/YtIk0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8605
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783071286; x=1814607286;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yHxOJyxHivqn0SYPBeJoEMENSra+VwXZ2vmsH/ACAVg=;
 b=dPsLOPGbkZCVbKY4MNgMW9Gj1D/9TVMMvmXywNabhKH8ukAphMYhFWB/
 6yESX/pWB4XsOEZaeqttMI9omwyrsbdaQ746bdSbNU/M9VnThAQVpL3co
 gT4TiKFu+SwxVfXeNsEntNinTQVtissmY8WSK3kKFp+LfNrQ5gn3HbGhp
 nCsi1hzczf8CUyfQlan9w/vHV3df9X1j+m0X4e8pV7AMotnNdYvOIMS51
 iri29TXp6rBx7xoEJrQ0L3lWVZEqWsIIw6QV+LBtGX5MVkpYFUVXANh+0
 Av9EN9e9PyxUWDNj1CAzTDxEijZHblYq/+K9/Sh4ghyv4WPxidLpwOkHl
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dPsLOPGb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 2/4] ice: use kzalloc() to allocate
 staging buffer for reading from GNSS
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:rppt@kernel.org,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:manishc@marvell.com,m:pabeni@redhat.com,m:ecree.xilinx@gmail.com,m:skalluru@marvell.com,m:anthony.l.nguyen@intel.com,m:linux-kernel@vger.kernel.org,m:linux-mm@kvack.org,m:linux-net-drivers@amd.com,m:netdev@vger.kernel.org,m:andrew@lunn.ch,m:ecreexilinx@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,marvell.com,redhat.com,gmail.com,intel.com,lists.osuosl.org,vger.kernel.org,kvack.org,amd.com];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:from_smtp,osuosl.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 97EDE700B17

On 7/2/26 4:40 PM, Mike Rapoport wrote:
> On Thu, Jul 02, 2026 at 03:49:36PM +0200, Przemek Kitszel wrote:
>> On 7/1/26 15:57, Mike Rapoport (Microsoft) wrote:
>>> ice_gnss_read() uses get_zeroed_page() to  allocate a staging buffer for
>>> reading GNSS module data via I2C bus.
>>>
>>> This buffer can be allocated with kmalloc() as there's nothing special
>>> about it to go directly to the page allocator.
>>>
>>> kmalloc() provides a better API that does not require ugly casts and
>>> kfree() does not need to know the size of the freed object.
>>>
>>> Performance difference between kmalloc() and __get_free_pages() is not
>>> measurable as both allocators take an object/page from a per-CPU list for
>>> fast path allocations.
>>>
>>> For the slow path the performance is anyway determined by the amount of
>>> reclaim involved rather than by what allocator is used.
>>>
>>> Replace use of get_zeroed_page() with kzalloc() and free_page() with
>>> kfree().
>>>
>>> Link: https://lore.kernel.org/all/635405e4-9423-4a25-a6e7-e03c8ea0bcbe@redhat.com
>>> Signed-off-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
>>> ---
>>>    drivers/net/ethernet/intel/ice/ice_gnss.c | 5 +++--
>>>    1 file changed, 3 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
>>> index 8fd954f1ebd6..7d21c3417b0b 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_gnss.c
>>> +++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
>>> @@ -2,6 +2,7 @@
>>>    /* Copyright (C) 2021-2022, Intel Corporation. */
>>>    #include "ice.h"
>>> +#include <linux/slab.h>
>>>    #include "ice_lib.h"
>>>    /**
>>> @@ -124,7 +125,7 @@ static void ice_gnss_read(struct kthread_work *work)
>>>    	data_len = min_t(typeof(data_len), data_len, PAGE_SIZE);
>>> -	buf = (char *)get_zeroed_page(GFP_KERNEL);
>>> +	buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
>>
>> nit:
>> from the code it is clear that we read at most a page, and @data_len
>> stores the actual amount needed
>>
>> comment:
>> I don't know why we limit to a page, it's outside of the scope of this
>> series, but likely you have removed the limit (which will go into the
>> loop - single AQ call is likely limited by a PAGE too).
> 
> Not sure I follow how the limit changed. buf remains PAGE_SIZE regardless
> of allocation API.

data_len passed by the caller could be bigger than PAGE_SIZE, we cap it
to PAGE_SIZE, likely due to the old allocation method
but I don't insist on any change to this patch (esp. given all other are
fine)

>   
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> Thanks!
> 

We are fine to merge it directly via netdev.
