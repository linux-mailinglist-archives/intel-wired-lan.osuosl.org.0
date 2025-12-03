Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7FACA098E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Dec 2025 18:45:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E930E80F7D;
	Wed,  3 Dec 2025 17:45:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sxP_dV0NLubp; Wed,  3 Dec 2025 17:45:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E23180F5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764783903;
	bh=wO97QrXVfNH2/kftFucHoa4q5MoH9q2KI8IKqrA297Y=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Kh1Ls0S9H71AADdUxwgJcBqdU/a4zHf9UDsdu0JmOIC2ql6KKs3FFJ4FzlkFQVqSS
	 K9Xmh9B8nC9ZSI+b+07ALexQumPyTgVANwsUKQfAAyuxmDrLojwdKQlo44Y0qh81q5
	 W7aFO5mPN/JHzDjpiZCvUhGtwoCNUNjldkuSx1wKZumUSOre9exowqQMh0YKGtAid0
	 4zGkil3oWo4Z7cnxvicTkCXQPwZllTKaSAq81cG7VBGyuGmlMhAscJEltJFMbXx51Y
	 xXwYLz7Dfpj+ofnqluAJR6cpFL2rRFjj3lkT7a9A11gtgTl3/CnuIfHIDINo5+8o35
	 C65tF2A3bWxxQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E23180F5C;
	Wed,  3 Dec 2025 17:45:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 75AE5D3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 17:45:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 66EF240246
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 17:45:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2ZzYRAz7gO5R for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Dec 2025 17:45:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 74E0B400AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 74E0B400AF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 74E0B400AF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 17:45:00 +0000 (UTC)
X-CSE-ConnectionGUID: dIJlMPBFRva7NMGK5ranOA==
X-CSE-MsgGUID: xIQJoiE5Q2mICxxdtcVI/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="66679061"
X-IronPort-AV: E=Sophos;i="6.20,246,1758610800"; d="scan'208";a="66679061"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 09:44:59 -0800
X-CSE-ConnectionGUID: saceDnoLTEy9cD3sqlYWBA==
X-CSE-MsgGUID: /nWGAAO8SLOltKsYRVdLrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,246,1758610800"; d="scan'208";a="194569561"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 09:44:59 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 09:44:58 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 3 Dec 2025 09:44:58 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.49) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 09:44:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xE78WjwxyI45ZyPOtAxEpjn87vXoYtTnHtMQwCqPhwc42xw6J/ArpsYpBj0nU2BT6YX8h4fd9e4tWhg6qIuv7SC99MOgNhLPaeRLDCDTNBfu8VcjkxKpheBW+urlnt3/5H388s15yG+TvCcLdblstaKIkTkzwKlMhiUxoigTSgq9J8dwHgH9hVsmLH53hNUb0oRb/tH6T0xls3GuwfHEjWMyYO8Ucmg58vZiKm3FD3VFIjnBi9heFFhgJ5HInVjeEAF3xlN7QU4fRlgumwc/JufJIRs7x93fG+rwQAE2nCcn6IYekxfk5BM6RnryGE/79Jxs+GtsEFSNe36TD11EuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wO97QrXVfNH2/kftFucHoa4q5MoH9q2KI8IKqrA297Y=;
 b=e1KSrmqYDDebrlGlsQbvxCNw1V5oJ42o8oX9anAjBKY0h/DmzduJ/roxsztHCp/xa6dF0KHVxCnle5KX4K6Ehs8KFgqp6ZSvxa7DkC7ZINyEDPUobsHwhDq7g1TDyAXlTGFHmKQPubZIpwpE2PRw/rWiGdaO+M+CNJ7qglGxdxl6lcS1z38+Hi4ckx/l3+veAIYh27Ne6UTahJZYz8MatMuUPf5vIGlmOybmTlKMxGufxV6okQqtT1q/VpVS2cIY83W1xHZWvMb2aFThdnUqh5Hfmu7Zxonp29+/+ys6ZJq+pbyCOKGoaAyJTdG+sQgVnWpKsyqTDQQ06+DCLBYM+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SN7PR11MB7492.namprd11.prod.outlook.com (2603:10b6:806:347::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Wed, 3 Dec
 2025 17:44:56 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%6]) with mapi id 15.20.9366.012; Wed, 3 Dec 2025
 17:44:56 +0000
Message-ID: <8c1b214f-b016-45dd-b9a4-7d553967d950@intel.com>
Date: Wed, 3 Dec 2025 09:44:53 -0800
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Jacob Keller
 <jacob.e.keller@intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, <nxne.cnse.osdt.itp.upstreaming@intel.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20251125173603.3834486-1-aleksander.lobakin@intel.com>
 <20251125173603.3834486-2-aleksander.lobakin@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20251125173603.3834486-2-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P220CA0002.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::7) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SN7PR11MB7492:EE_
X-MS-Office365-Filtering-Correlation-Id: 525a64ba-417d-4b36-60cd-08de3293abea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UU16b1NIZ3NpQzBlRlhsaWU0dDVoSVZpRG85VFRPakdFcUZoa3pMaE44OVBL?=
 =?utf-8?B?allObHE5amdxNk1qcFJWZlVIWFpKYldQdEg5ZlNCVkRrK0NSMlN3T3dTL1hi?=
 =?utf-8?B?b3lycDR2N3JseGxVa1hPL0JRcTBiTEtvQy8xL1Qxd0pOQndXQWFydXl2Rkpu?=
 =?utf-8?B?RGJkbHVTNHI3SFdEejZ3Y0dGN3hZVGZRelhSWWRWOTNRcWdndExlOGIzUUpZ?=
 =?utf-8?B?alU4YkVTZ3Z2Y3NYT01WU0RsYkZwZForL090c3hEQTFiYWZFM3QvM2tIQzlq?=
 =?utf-8?B?WmcrUEFLWWxXY0ZEOTFKbWlmK2h6aG1IWEY4c0RnOERZUkpTMThqWWpJdE1X?=
 =?utf-8?B?eDRoZ2VpUVJlOU1MSUEzREhCejFQZGY1dmNheDRaTHRoV3FVa21Jb2c3dTZh?=
 =?utf-8?B?QzlyTGJiSGh5endyak94RmpUM0dsbGtFcXJKK2dOc2xCQ3JVa2FOL3JadE1z?=
 =?utf-8?B?dUI5QnRFVU5SYk1VTlJEVWZXelU4L0FTRGkzb01Kb2luMVRUdWNMVHkxNzZV?=
 =?utf-8?B?QjhoWkdWNFNGNXlKaVdwREZzSFB1TXhBUjNJQVd4UVBuamxXVmg2MyttWENL?=
 =?utf-8?B?MmU2bTlURFhncDI1MzlHZjNtYy9BVmZUSEM5dDNLdlIveGlOZ3pXVThza25n?=
 =?utf-8?B?UEdETHY0M0wzTUFmSlFuWFd0TG5rZGIzcjNXcEdPNTNIR2NVZEVSK0l0b245?=
 =?utf-8?B?Y0tvTk92U0o1ZW1uWVNZQ3kzSHNybEllaTRBZHRSSEw1aFBUVnFudjF6V3Vs?=
 =?utf-8?B?dk9jc1RRTUY4R010eE41cDZVTXJTRXdFVmx1TjVwRGJHSkQ1c2dNZStocTda?=
 =?utf-8?B?MUEvb1h0NmNXdGhSRWZrc3cxZTVYMFQ2MXhwUnRrZjJRYmI0STlUTDdYTUpE?=
 =?utf-8?B?Umdjei92T3hYeDkwR3pXdDVTQ1A1MHVRYUgwWmh4eXZlT2JwUmpRR01HbGNR?=
 =?utf-8?B?MFBoUHBhYVJzNnRoMnNBTjNIUTA5cEVhV053bG9jZ1F5OW9HaWxIN1FvQXFY?=
 =?utf-8?B?dHUreGk3bWpDTnQvK096MVFjelZEc2NUeUw3MHV0L21QY3paT1Y3Qmp5aXZR?=
 =?utf-8?B?dklrMVVaZ25vdXV5K0UvKzlTaTJZY2ViMCtaQ0JBUm43cWY2ZEZKanNTdEww?=
 =?utf-8?B?N05MNDNmNXp1MG5OR0V2RVYzNTZoWUlvTS8zM3lHd0MwZVJtaHd1UndFaTRW?=
 =?utf-8?B?UlVMM2xISkdQWDZnQ2FvSjFKS0FpWVN3L1l5Nk0xOWdFcTBRdnVBNGorRUJR?=
 =?utf-8?B?WnpBZS9tbnlIVHJ4TmliZXdNWkNpMGZSblBzeUtuWnlTRjEwekU1dkZHYnJD?=
 =?utf-8?B?Y0E1a3hUa0dZaUVMTUtqZTM1TjdQWVVtb3FHN2pCb0RkWlVFTzM1S3Y0YmVW?=
 =?utf-8?B?YjlLNFQ4TWx3Ujh0dmZCVGtzQnlUZ29QZkI5WFZmL2hnckJiRC9YMFVSenJz?=
 =?utf-8?B?QXZheHJOaXc5THFaSEJsbldGOE5VcGovTzdOd01xdXNSb0JITHBQRmNpVTlt?=
 =?utf-8?B?eFFMN1FqTmVxRDdaSXVQaXFacVBQU1NQMU1hR2pSajdUdDBGSWNKN0UzTzJa?=
 =?utf-8?B?WnhNL3h1OGt2Y0JzTk9EZGxMYis3ekhvWE8vcjkvSHM5UmdZSE4vREtHamNx?=
 =?utf-8?B?SXN2NDM1Q2V3cjhuV3RNYkNpb244MlA0WnA5bmpYZWxaeUlkSWU0R1VzUXRv?=
 =?utf-8?B?NzNSWFFCeHR2RW52SE5ETzN3am94NDRQNUJwMi9ydFFjSGNkNUM3Uit1RjRU?=
 =?utf-8?B?UWVyci9kNG1VVmxXaVJoSVh5V3c5aEU4bURxeVd5Tm1ZMmcraHJsd0RqdVdh?=
 =?utf-8?B?N3NPUjJxK1V5V0dIZjk2SlpEZUJucFR4OTFFM0VJVUt0eTFNam1RcEtKMUly?=
 =?utf-8?B?bmxrQ1JLdHl4ODNZQ3VMR0tjczVWU29JTXpqR1JNSS82VkZNZS96YUc1ZVIy?=
 =?utf-8?Q?/WalANKHsngDMSRRfal9YSKaslB+i4cV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dFg1UmFjR2thcW9IM0tKdmx0N0tlbmJYRlVuMHR5Nlk3MEdTS3NlRGdBMC9r?=
 =?utf-8?B?YS96Z0MwS2lHK1FMeFRSUlpsUWhnRE00TVFiendBdmllZGZZMUVZTGJyNUpk?=
 =?utf-8?B?b1JnVlUrK0k4Uk81bUN5OS9DNCtvZHhjaVZ5aTRMVTdBMERTbG1adGcxb0Zq?=
 =?utf-8?B?amMvUTMxVTA5NDJmSDFZcWk4UDBwWVBLMGFPUHdvelJubGx6ckpqOFc2YWg1?=
 =?utf-8?B?c3dpc01XV1RSV0dQdjJCZ3B0RnNnUUJuaVkwajIvTDdKdzJtZ2F4ZCtaN2xV?=
 =?utf-8?B?QmR2cXJ3SktOYnp3bHpveHUySmhNU0lsbU1kaUlQZzVqQ1BFZWg1UGp3bDNT?=
 =?utf-8?B?R3ZHQmh3MEVIN25ucVhvZENmeWNmb0dZdC9HRkd6R2R1YXdrSHdSS05wVVdr?=
 =?utf-8?B?blBnTEN4dW9QNm5YMjhHZE8rSDBkVE9vZENnbldRekRKSXozVXhYc01HY1h4?=
 =?utf-8?B?YWc2TkFVbGgwWkdOTDNtMVlZVXM4UERIN3YycUVxdEEwQkI4b0lheGNHS3pZ?=
 =?utf-8?B?S3FqWXQ1UmdBcytpM1pPUldodVlSVkcxbVdFMmxBK1d5MDNhVTcwYnRWNC9L?=
 =?utf-8?B?RDM5ejhpZjhnaXZQSEdOWVFPTE9tb1cwYmxmbE9vOTVVL09tblRQMEYyaHFx?=
 =?utf-8?B?ZHY2c01pNmMwSEV4T2J5bmMyS0pSS0tsSFpHeUt3c0pqeTZKZXExalV0UTRx?=
 =?utf-8?B?cHMyZmxIVlN1cndIOXFSVG85bjhFS05LWkV3b1owa3Aram9HUW95MHh6SXk4?=
 =?utf-8?B?RFJVd01LWWV3VUhwT1B2b09OQXlqSlRKRkJsTkJjTUtPaXdmd1NXVmhqR1hs?=
 =?utf-8?B?aDRwelU5b0l6KzFYSjdpT3NleDZYRGhmeGJlWnU5aWVmTjNtc3FHQjB6emF2?=
 =?utf-8?B?b05rL3QrZHlXOHJLVytMdCtUM0g3cjVXTi9JZklxZDRlak8wd1ZSV3lCQjBL?=
 =?utf-8?B?M2NIbythMXM2VkpxM2hIMXlSYzBKN01peHFNQ0M4OWIveEVZQjl5dFVOY2xT?=
 =?utf-8?B?TnJxcDV6RTl4Q3pWMzY1dlFOUW5vTzc3YzFzL2VZL09KcU83VThFWWgzeUlv?=
 =?utf-8?B?REtPekhlTUxzamIrTE5rcVhvNTdKZFZxU3VURERPSjdzWG9DVWxqaTcwNDZX?=
 =?utf-8?B?OEMrKysyb21zZzIwNkE4YzNvS2xSaUtkVFZTRUhXdjNrZVd6N3NsUHVleDMr?=
 =?utf-8?B?a25qV21OajhWeC9ySjVBS1NUa2tFdjZWZ1dTNDQ3bnJHb3pXWUFDeWFpNmsr?=
 =?utf-8?B?bzdDTWxPbDFDUGZqUkRMV3ZkdEZSS2psajNZekVwMU9XS3VJcXdFOVdxNnlJ?=
 =?utf-8?B?MS9kcVBtb25OenM2Z2dpdXBHRG11anlLU1pGZkl4VUN5RUVIUmZXUXNFbFBW?=
 =?utf-8?B?TXlVZnFjclU2VjNjWXVVSW81TytnU3pwRGlCTFBsdStGSFVaSVpsQ3dxOE1Z?=
 =?utf-8?B?eHNLS05lK25oRjN4RjhtekdzdUU5dml6WFVQY0lUVnVPbmlyUWV5S2hKM0d6?=
 =?utf-8?B?N3pGYUtmQkI1dHQyUzZwMEJJeWdOL25OZVhISmtvMHZSUVE4bFB2TmkyVHBq?=
 =?utf-8?B?Wjc3emh3ZWJYb2tKaTcyeWduVlRDaTdtVzl6OFQ4NUh0RGJ0YzNpRjRiVnZ4?=
 =?utf-8?B?Y0ZLSE5nUmFyUXM4L1RRdFpjZzhabW03ajZqMmIxMEFiUDlHM21wOFAxajlq?=
 =?utf-8?B?TlBMUk55NUhTY1kweE9mNlV4M21jT0I0YnVzdkV6SmZrdU02ejE3SlRTdGt5?=
 =?utf-8?B?RjB1MHhtSWExWmsyTS9GcmRlOFJQQW9BUzNjeURXdStCdXpTSTlCTzMybGxZ?=
 =?utf-8?B?OEt1Zkoyby92QjZYalozR213OUFPcWFGVG9MRnY5Q2JTK25iNERlQXJPTTNS?=
 =?utf-8?B?SktoYWJLaUNWZXJvU3poMHNFZ0RBT284cWdQcXJuYUNyU0FyS1Zka3YrNDJ1?=
 =?utf-8?B?RVBiemlDQTd2b3BCdDdvZFRyYWJkby9tWU1ZL2JGMWRucWVZZm12dDR5K3dD?=
 =?utf-8?B?eVlNU2J3MFdSbkZnenR3cDA1U2prSm54R1EzeldmaU5yTlpOempuV3Z1bm83?=
 =?utf-8?B?RlhzenBEYmoyMUg2eEJScnV5c1IybGprT1Q2dlBKRmM5Q0l5OW5adzlCUjdl?=
 =?utf-8?B?NFNHeGJ4eHdjMTN5KzBvSjdnVmNsZnc0aW56ek5xekNXdlJjRG1pdlhIZTd2?=
 =?utf-8?B?T0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 525a64ba-417d-4b36-60cd-08de3293abea
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2025 17:44:56.1522 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7TyKVNbeaWWjhZ1JGYECELi1/+VXT8FzZOmWAGYD5IIRX6IIbqpyoHgY0ZwsTFcxgpzHphajTCq3vVsYAcHbEZLwsclkw03j3fqEXSdKwWI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7492
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764783900; x=1796319900;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o6Wbxv0HXtXPzDdvfdjUdeWdV8yF0M5mguytwlzFpJI=;
 b=VcWi25DdkeQMRgoMaN0UOIB48j35E6ns3OeNdDiobA9TvAroueyiCEb4
 9ZbeW5CrSx9e5vELwUbQfhz6S+pKcv6e+0ablu/UzaLZvJ3KSq5u2qYoX
 5NDru9A3C9FCPPlp7BMc0d5hUFTzW81rmqSCHJNSIIlKJ4s4eYckow6Vv
 tLFX2LdKAtNnaNih7cbFON0Kx2Vm/GijkdXmw+QKR3d/7+HZxWt+Vmi+x
 BmE6/G6Khun0ITc30xvYnxwMhi1H4/cuoB/U8aPfqy64H19U1DuHwps2t
 7hp0OsHgeIqeGvSLRhuIJ/VkeHhNxdz+dVkXGbrpTn6h7CJqBxCz7mlx2
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VcWi25Dd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/5] libeth: pass Rx queue
 index to PP when creating a fill queue
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



On 11/25/2025 9:35 AM, Alexander Lobakin wrote:
> Since recently, page_pool_create() accepts optional stack index of
> the Rx queue which the pool will be created for. It can then be
> used on control path for stuff like memory providers.
> Add the same field to libeth_fq and pass the index from all the
> drivers using libeth for managing Rx to simplify implementing MP
> support later.
> idpf has one libeth_fq per buffer/fill queue and each Rx queue has
> two fill queues, but since fill queues can never be shared, we can
> store the corresponding Rx queue index there during the
> initialization to pass it to libeth.
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_txrx.h |  2 ++
>   include/net/libeth/rx.h                     |  2 ++
>   drivers/net/ethernet/intel/iavf/iavf_txrx.c |  1 +
>   drivers/net/ethernet/intel/ice/ice_base.c   |  2 ++
>   drivers/net/ethernet/intel/idpf/idpf_txrx.c | 13 +++++++++++++
>   drivers/net/ethernet/intel/libeth/rx.c      |  1 +
>   6 files changed, 21 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> index 75b977094741..1f368c4e0a76 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> @@ -744,6 +744,7 @@ libeth_cacheline_set_assert(struct idpf_tx_queue, 64,
>    * @q_id: Queue id
>    * @size: Length of descriptor ring in bytes
>    * @dma: Physical address of ring
> + * @rxq_idx: stack index of the corresponding Rx queue
>    * @q_vector: Backreference to associated vector
>    * @rx_buffer_low_watermark: RX buffer low watermark
>    * @rx_hbuf_size: Header buffer size
> @@ -788,6 +789,7 @@ struct idpf_buf_queue {
>   	dma_addr_t dma;
>   
>   	struct idpf_q_vector *q_vector;
> +	u16 rxq_ixd;

I believe this is supposed to be rxq_idx?

Thanks,
Tony

>   	u16 rx_buffer_low_watermark;
>   	u16 rx_hbuf_size;
