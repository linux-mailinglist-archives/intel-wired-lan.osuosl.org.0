Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Smo8NhzuOmqfLwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jun 2026 22:35:40 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6866BA0C0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jun 2026 22:35:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=WYwuWwyS;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B2B5A81A73;
	Tue, 23 Jun 2026 20:35:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cR97hEpTH8Xx; Tue, 23 Jun 2026 20:35:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D25EB81A8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782246936;
	bh=nlm3oEF58aL25NkgNmR5KZYpnfYvl6QDm4EHMbmSyB4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WYwuWwySU1SpiTKQripja9Ct2j7+1vYJitB37QnyKvAap54/1ktpUyswEfaCy+DEr
	 dYbBV+DCRkPOrIud6DZ5UC/+ZbGv3tMKhIwvYHgr3yj9dYJqKwwDCDxvb1tvsInuFk
	 AjrZoJbb54pQwNQ3XR95kn1lXQSRx+0nyJljJ6wFNursjYL2Vyj0g5xPQrS15HPjII
	 No2Pm4DAcwGubGnL6KsgOQkpq8Um8WpDlTm1GMaFWp87JIOBmWzn2Mu2HmhMd0Q86E
	 bqpEUDX5blAGLZYpB5FyoMo6sC3OT4OXbUvd1oV2AHfkmvdmrYDM/6m30Xg/HXEVbC
	 D/PU6PXSTWa6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D25EB81A8E;
	Tue, 23 Jun 2026 20:35:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A1481256
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2026 20:35:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 92EB3819BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2026 20:35:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wr_p422kdSXk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jun 2026 20:35:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 707E0819BC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 707E0819BC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 707E0819BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2026 20:35:33 +0000 (UTC)
X-CSE-ConnectionGUID: gp8EzhyQTWio8q4UR98Lyw==
X-CSE-MsgGUID: 5R0vqubrQ3SmobKSAEd3Dg==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="100552175"
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="100552175"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 13:35:32 -0700
X-CSE-ConnectionGUID: mdm1YdoTSc2Uhm3GkQ8SNg==
X-CSE-MsgGUID: 0W43Te3OSwm9+XFpZgtuYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="249731330"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 13:35:33 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 23 Jun 2026 13:35:31 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 23 Jun 2026 13:35:31 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.7) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 23 Jun 2026 13:35:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uMLZbsG6buPxKm7VbtyC1+WBO2gOYtc6+8WrGpyQE3P7tFoI/RBnBX9A0piK15CfZQkYy9tJdu5IOmAGPleMHwxugyrnxX77zvdXqqP16VPQdSDeZJKAAZ3O+eqy/c5NmUgCLlbXKWcV14vPDfLFaTvkZfVOpopaanmLpNLC3KsQ9o2k+8PcE6JaBDAN+6bisRtAyWZ159T5SR0EeMJjI9lwNF1QINlvWaS6AGSuZ5Mc/N2Au3wmRgzB22epTZxZqTzPckPCMSLhSbJ8ye67ft0ifk2QXimW/FsejpFASjU91QJoD/UNIaFIKeA5Ff9SC1NNRchKK6RugfAcnKk4pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nlm3oEF58aL25NkgNmR5KZYpnfYvl6QDm4EHMbmSyB4=;
 b=UK7uVcA/S4zku5a0Z7xt+Lcd9Ql2+ZFP+dKrsDbhS57iGIn4v3876+FdR83CFgK01NbC8g8LsQQWAIoasPR6LuZjMJ7yerHngF99hNs4J2TO02Rh3b95j+syhzvzXMRGi5w6O2DRHAklE2PbvNJubE/ZYJm3g5RIENl6YiiSm+G1ySDKRU6rNCEuYeYgmTCj3jyZJmV0KRHZ+N/14SPXh4u3rLU0bOocwI6Zr4t7FIg1tWzvFSw9WaqjNGpxDzWfm8KOwh0vXKwpqYyIS0jFz3hAPWyDmUJ3rCepvJTvBxUY+kd3FrpTNISTcVruwjr82G67z/R2JGUWFQ5LWXyS+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21)
 by SJ2PR11MB7518.namprd11.prod.outlook.com (2603:10b6:a03:4c5::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.13; Tue, 23 Jun
 2026 20:35:21 +0000
Received: from DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40]) by DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40%3]) with mapi id 15.21.0159.012; Tue, 23 Jun 2026
 20:35:21 +0000
Message-ID: <50b43434-c569-414f-b525-ffbf3546073f@intel.com>
Date: Tue, 23 Jun 2026 13:35:19 -0700
User-Agent: Mozilla Thunderbird
To: NeKon69 <nobodqwe@gmail.com>, <przemyslaw.kitszel@intel.com>
CC: <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <horms@kernel.org>,
 <piotr.kwapulinski@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20260617072155.1172432-1-nobodqwe@gmail.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20260617072155.1172432-1-nobodqwe@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P223CA0007.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::12) To DS0PR11MB8230.namprd11.prod.outlook.com
 (2603:10b6:8:158::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8230:EE_|SJ2PR11MB7518:EE_
X-MS-Office365-Filtering-Correlation-Id: 113788fc-8a9c-412f-d9b5-08ded166f200
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|376014|7416014|366016|22082099003|18002099003|56012099006|11063799006|6133799003;
X-Microsoft-Antispam-Message-Info: uAVPbinYQgNpiT5hUbpwN4Qyus1xvUILGguqHY6EAbtv8oD9iaEQWFbUHcB8t3KYRM6xkQUmeIswExzB9uBPjlKGBVbywGRIjq38Um7j2Ei9Lj3KFsE4VdNapFSneAK5TAXtM8EFRPxhtW1nahLnF8++oS4p9rXN/WoqWsoZZc1Ng5h6usw1ZFLdCP6Xz97vL9JkrSn+mNMfxKonaPBPyNrnIhgElfypH2IyI0JRjPV4M52KMy8ePMSSoL4QmnolxNatH8z2a9M3R7nhtNmnzUEfyfk8T/9xpHTDh5hlBIfqK6CiwTmWyH3IfD9FFGeunZMEa5HfF32IItoosmeEbbpRgkOaCW5bX89LMdztq10knv3TEQx4veG5dk6kTBi1AndhQqBMjFK+g5vlyAqKL7Zq/IJEdqmBGpINXUeEAxatymscajNhNEk3oA5jZETY+hEL4JoE2rRidtj8kiWArxyOvpqj4rBUP6A8R4IZO3mk2Yhn+zZZV25vfpUwgQf28dqubRbBuV/bwWe+dQ+79XN/RC/haLOF6y1sQkGcJuSLoyOSqchUCoKHUTahz3VYy7P4BwJuL20bzZwORzyBhdHTqorzLGF4Y1Seq+U4c/T1xKBMPsdyaAcFh9b99zvHTZ1E9By75Z0Eywcn+sXqbC+so2hgeaAXRqVXg7e6uIc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(376014)(7416014)(366016)(22082099003)(18002099003)(56012099006)(11063799006)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dlk4N2RhRkJhVDkzMUxpMDRSMDNNZ0U0NjlFczhZSWhFVlczMjZKZVZ2L3Vt?=
 =?utf-8?B?RDRhRWdxZDR1TU5WR1JLbys5cVB6SHhWZHFQMlUvL2wzTHVJLzdEamhuaEFB?=
 =?utf-8?B?a2RkYTVzS2FDVDh1Z3FwbkNPbkEyRmMxMDR4eHVkM1hNeUswQnlWNFJQNUxY?=
 =?utf-8?B?UHcrOFIvWFEwVGxMTkVGZUJFbXIwUmVhc2F0elJ0c2trMzJJU2RUZWdlWWMw?=
 =?utf-8?B?dnlzaGFoaFppSkpEOEE5ZGttOTF5ZTVEVlhpRi83aGo4dVUzTHp6YjNJT2pB?=
 =?utf-8?B?MEhMcjUzZnVEbzVudStnbnhBTTVPQ0VhVXJyVkFFaFpYZzRCSXVhaGhIQUNI?=
 =?utf-8?B?RDU5SGJmdTh3eTdFdjRxVkJCTkRRQ2t3VElFakRmUmhUU1NrTXo4M01uaFFO?=
 =?utf-8?B?Umk2cm9yV0VnbmhwanZtYmtJWVBYZnh1VE1ac2JRcEUrR2tvbnhrK3lxd1VP?=
 =?utf-8?B?c2JtaCtueDJFQ1BsMk41dW1yeTUrYUpXUnZQcW5uMUtCc09HdnExOUJlSnho?=
 =?utf-8?B?TURReXRKOFh3QkJBemo0MnZaU1lLVFl1QjdaUmJEbFhnUnczU3p2SU85VzV4?=
 =?utf-8?B?R3lWRTYzYTk0OHBMWUF3R2JldHJaekNHSHBMaEExUUlkN2NUaHkwcU9HNUdP?=
 =?utf-8?B?bU5SMEh6all6a3Ezc3Q4dHJhRWZ0Q3lWY3hMM25Oazk3bnM4M1V6MUw5dFdo?=
 =?utf-8?B?WWVYdm44K2hPNS9oYXlTM2kwcTQxcTJEMUpKRlJIeSswTXNFR2JtVnA2c2pJ?=
 =?utf-8?B?MnNsdC9zbW10dXBHSFhxaFpVZU45V3BxZStWWTRzUnFZQmZwS1d3bWt1UldY?=
 =?utf-8?B?T09nUklHTWFvQ3ROTnZSNFAzM3RiQkNUOWFSQUx3cU9zZ3d6dE1mRkk5c25l?=
 =?utf-8?B?YVR0NlVzbGk5ZHhwNWxIU2hBWHZJNEgxeFZTRXZwQXJDRUMvQ0tlYnNtZWx6?=
 =?utf-8?B?OVdNK01HdjVUTW1Yb3dySTF4TTlHUzFoZ3dxT1BWSVoyRkRUWmx0TlVxaVdj?=
 =?utf-8?B?WURDeVJlQWVjSEVRNy90TjNPcjNLNjI3cEZQYXVOZGlGZUo3MW5YV05HekR2?=
 =?utf-8?B?VnZOQ0JvbE1yc1BQNU9LTkprWDQ0QjNtdkNLZ2hHZkNqdTFKZ01URWIzQjM2?=
 =?utf-8?B?enMwQXBSQi9BQ2cxNXhMWnNxN1VBekdIR3g1TTJuSnhTYmhSekFUZ2VDeHYv?=
 =?utf-8?B?ekVMdDdMMzlPVTlyYmxjTnhFS0h5OWRRRVlHMFI5WlNWV1RaV2JpMHZrZno2?=
 =?utf-8?B?ZW9UK0cwRkszN0o3ZFNLemVsM3ZUbGVSN1oyc041MitkOXRHZnE0eVFBcEta?=
 =?utf-8?B?TGlvQlE5RW1EREJpaTBTaUoybTNKN0JhMkxudFlQUEs0ZU5yakdvdWFGbmxT?=
 =?utf-8?B?Wi84TVg1aENvSEJXSzFBdE82V0l1NVFoNTdTUmdhaGJPNGI3MmhmaWhQYXBV?=
 =?utf-8?B?d2d6eS9JcVl3Y3o0ekZZN0twTUdYaHJFaENoem1vamJuc284VnRnNXNoQjl0?=
 =?utf-8?B?TFFqWHR4aDR6Q3dvaXhLblRCejBHT1NBOWtvNHFmbWRXb0psQURmWkdCTUln?=
 =?utf-8?B?SmFoOVFXUVhEb0QwMVVTeWFrYXJUd0Z1UXlXRngxYi9PRTM5by9ZTm0rbXRG?=
 =?utf-8?B?YkZjeUdOZ1c5aCs3Ky95azMwSXMydlA5a2lqRzdoSDlsMlVrWGNMT25JWTJK?=
 =?utf-8?B?K1N4TWxtS0F3bjBSMnhFWlRXYWR4dzljdXJGYlU1bGZQcUdOMFZpRUVMem5j?=
 =?utf-8?B?V2RXc0VTaVJxdHR2dHQ2VFBoREZ2K0xvL3FneFZVVDNzNXlzTmdZbUd3cTIv?=
 =?utf-8?B?M1pNUWRzV0JHZVhlbEplUTN3b1hxRXF3TUtsUERTUXVnOTkzL3ZwUk10OVJa?=
 =?utf-8?B?dnpTOFhzS2pqN1ZQM1NSdittcG5ndEFZZmM1RjQvYkUxY3VWWUJodi9pM3Bl?=
 =?utf-8?B?cytLcGVYT05vaWJndFd5T3FPcW8rOUFkSVArVVJJUHZPMExLc09Lb2RqNEdj?=
 =?utf-8?B?bndhTHJmRytIVHdnQkJXb2dzd1d2YmhBeHFzNU5RSStGRGw4YUNFbGdmNDdw?=
 =?utf-8?B?WE0xbVVtb1owSkpQSm5mUFRibjRaMUFHK3ZDYk5xSkZQN3N0Yi9ycnJkanhU?=
 =?utf-8?B?K0drY3BjT2NiNExuQ0RBcjdsQ1pUbURpM0ZtQTdic294MFR6SUFvTFU0KzZW?=
 =?utf-8?B?aUkyb2pwZEh6MmtNTElHWGQxclprMXhmemdGdjBOaXdpQlZ6WFc0VjVGWmdB?=
 =?utf-8?B?Z0p3aXFzVUxEc1dDdnl5NUVWYXovQlBRMHpPRHV2WFhGZStoei9HMHBYQ0lX?=
 =?utf-8?B?OXA0S1c3ZmpUMXN6TlFUYXg5ME1ORk9LeTl5cU5IaWZaRStsTWk4b0dZUVhz?=
 =?utf-8?Q?5t7HEKMlNp1qXGFY=3D?=
X-Exchange-RoutingPolicyChecked: j+m4ISwEb4O5lCLfCgmww0BNlrN9hmqoG4Wowiw1kwLkyUiq4ZDQFOUClNLA+1vuzY+sgA+DhPCHazvOu0qy60dAI4gcIdy7bTlvnWS7B+MLjDkXigMBhI0y4S22anSkj0bRzB14prlXkkjZ+m4ASveL7qs0QPp4hPONtQaHj3abRKmS1Iel7LlsGUC0I/pz5+3ouGU8mXJUjNNT48fLAt23Oh/6Pe59hbGvzZZmmF5i0oyMNnNw3IZj+CMQ2AWYXnKOsNoMulW7ErF28VB3k84JfIxHxSIN4IefkECCcM7JvX8k5xP41nZTCd3p5i47oVKsYTdCXlsp8hfXMPkXaw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 113788fc-8a9c-412f-d9b5-08ded166f200
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2026 20:35:21.1949 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LYabSkljRbsXy/cGXjwRphLgtl0OrQDALp0l/edxJHYm9SaYQ0Ea23AkXOwYqIUdxObRJpEqV90BTMUsae5/pzM5znIy5oFJQkNS5E8QScs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7518
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782246934; x=1813782934;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F6CJrCy2BTJLZwmM8gXEY/IPhi6wDzmZ6IUSpIIZYK4=;
 b=AqN2/4T1w9kgh+Xly6AYAiakl9hrjn6O2cjanK2DTIwL9XL/E0D3LQjM
 jxGrfv8eNDf9k69ShkeiKHMu2CZygY/53K7tjjryvsdRrM26aCewi6g7I
 QoXwvrBDFrgumMkZduQDjhIbOeCKDZ3O9rA2N9MRfnRHVfMkdLX1f38Mn
 1QQPWS4zVxvu7bPJpli0EU31aF46ZMI7Gu543Mhw0mJVBdhW5tGmBOm4h
 X0sGIShU0N1AbhMmEIjEVVfHWaND9Ab47JWe6SilDVv+SXJ2lwo24Frpd
 KUP6hFMCLk5scPBNRWqzt/tV2DbIPyFa114hwefSHAsX3NlEqxifI3Ddo
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AqN2/4T1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix use-after-scope in
 ice_sched_add_nodes_to_layer()
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:nobodqwe@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:piotr.kwapulinski@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,intel.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3F6866BA0C0



On 6/17/2026 12:21 AM, NeKon69 wrote:
> Commit 7fb09a737536 ("ice: Modify recursive way of adding nodes")
> changed ice_sched_add_nodes_to_layer() from recursive control flow to an
> iterative loop.
> 
> Inside the loop, first_teid_ptr may be set to the address of a
> block-local variable:
> 
>      u32 temp;
>      ...
>      if (num_added)
>          first_teid_ptr = &temp;
> 
> On the next loop iteration, first_teid_ptr may be passed to
> ice_sched_add_nodes_to_hw_layer(), after temp from the previous
> iteration has gone out of scope.
> 
> Instead of keeping temporary storage for later calls, allow
> first_node_teid to be NULL when the caller does not need the TEID.
> 
> This was found by Clang with LifetimeSafety enabled while testing C
> language support on a Linux allmodconfig build.
> 
> Fixes: 7fb09a737536 ("ice: Modify recursive way of adding nodes")
> Link: https://github.com/llvm/llvm-project/pull/203270
> Signed-off-by: NeKon69 <nobodqwe@gmail.com>

Hi,

The patch itself looks ok but I believe author/sign-off should be an 
actual name.

Thanks,
Tony

