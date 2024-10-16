Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC089A1627
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Oct 2024 01:29:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 48C51605F9;
	Wed, 16 Oct 2024 23:29:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yuPk_H1QV_aU; Wed, 16 Oct 2024 23:29:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8323260617
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729121373;
	bh=21sXX2Z3puybKeeA/bW1WBAentSxZ4JnSItedsPPE+Y=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6fRb/iWw5SQ+PRwqHsa6c7wsOnTFwW0MAw7Sik2UhHfgM8lPncEijvc5tBKfPmxmt
	 yNqR6MZTYgoX95Cst+agaSIms21OBjtqYqhiz2BqtDe5ScT1eFNCDYBNRA7hu19FuI
	 uHv7m7zmI8PPPtBr79yOADQunfCwXh2bUmSMOKPcV/v7zh7MWDuAWPuRCUrMAiLhix
	 sQLZWBdtUG1Y+v1bsg7RNfJxBScCtHZ8d+fjuplcGdhX89KBtI5sdCl5jt7VTm1jSp
	 kGQN6LQG/1txirfPjJZzEIxnAMgZJDAuUNcelXmYnLVX43AVkh2xeglx9N1ZBTlr1B
	 6ugXPZnsVJvJg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8323260617;
	Wed, 16 Oct 2024 23:29:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 560952316
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 23:29:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 42D1F605E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 23:29:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ib7HO5iiVUPL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Oct 2024 23:29:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 80563605D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 80563605D8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 80563605D8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 23:29:30 +0000 (UTC)
X-CSE-ConnectionGUID: 6ffvmlywQm2+nefyg1SKUw==
X-CSE-MsgGUID: BoRt0R+0R5qomUh2qDxL6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11226"; a="32519459"
X-IronPort-AV: E=Sophos;i="6.11,209,1725346800"; d="scan'208";a="32519459"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 16:29:29 -0700
X-CSE-ConnectionGUID: eVb2886eQpO7v5Qud45fVg==
X-CSE-MsgGUID: aP/BJPj+QRu1f0qucrwqQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,209,1725346800"; d="scan'208";a="78714459"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Oct 2024 16:29:29 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 16 Oct 2024 16:29:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 16 Oct 2024 16:29:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 16 Oct 2024 16:29:28 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 16 Oct 2024 16:29:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vhZqA9F5BDGaKLP9D59DfhIXZKuabzD5Kqnl1K4pTmoc1GZCKzkxtCo+GuDmdMaRJ5EBI/jWNOiohsPmI+O2iq8ROTKTRAEFWc1N8faB2r7wcD1dfU4cdF7YoJ/KBCLiLDyoXAFPfzM296XZ3GSH8565grxZRuNuviFLxbFYsdiAH7GKgyjCm0TvHbNdFlvPgWZS8VWzS+asYJeV6RRkt73wo38VaNoR3AUB5gTtOKohgWP3HO4xNamvO03itsMtxWOqfZc1QOeEyE4Bg8SfAoyAU1cPf5nOSkUGftvTjQEGo3h49umcCueAOvYFSZeHPtlx9ZTnnlyX/2skMC0E6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=21sXX2Z3puybKeeA/bW1WBAentSxZ4JnSItedsPPE+Y=;
 b=ucf0tvFWzYJxr0zomkdO6Bsvdftogady6Qj0jShcR5flLpr6MAuLJnBAnfDAsKOJA8S9tD1VcLyFbtPw2LeNPHHQ9FQylnFBYoc7wYNv0FEZzlH23Vjbx8AwMSEvAfXyeZWR9ZA9bdR+z/djbewv7AcaHE5T25GVgMWRpHRqR+1KWMLstSO6dgj/jk+UUobK1wdYRlChW/CRsBahdcyV7a1pnBXSs31Y9Qj9XFMPHuhjXP6/Hp3+rP1J34kWLkmL2i17n3BkQ3SkQnSHxCcMJTB+cWPE501fkrirc8BhurvzZKCZwXir5FcTFXRZpJDe+nr4Ns0cNUR5VXBA8bqpSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA1PR11MB8811.namprd11.prod.outlook.com (2603:10b6:806:467::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.27; Wed, 16 Oct
 2024 23:29:19 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8069.016; Wed, 16 Oct 2024
 23:29:19 +0000
Message-ID: <e2ed6973-cccb-46be-b847-3f18c85b3bf0@intel.com>
Date: Wed, 16 Oct 2024 16:29:18 -0700
User-Agent: Mozilla Thunderbird
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, Arkadiusz Kubalewski
 <Arkadiusz.kubalewski@intel.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>
References: <20241010142254.2047150-1-karol.kolacinski@intel.com>
 <20241010142254.2047150-5-karol.kolacinski@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20241010142254.2047150-5-karol.kolacinski@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR16CA0063.namprd16.prod.outlook.com
 (2603:10b6:907:1::40) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA1PR11MB8811:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ad00e24-961a-43da-1231-08dcee3a5baf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RXIyZm1oc0dreWpnOUdYOWthMm9PQzlSb3lFM25mcE1nWDROS0lDSlZyQjk4?=
 =?utf-8?B?TkdYQ0hsa1dndGRPVDRWRUE1VmpNbmNHZ01NajBtVzluQko3dWI0dURYLzV3?=
 =?utf-8?B?OFkybm5FY0xjc3BSUkpIRFRBVVhCc2hJeUN3NklIM0pPcWg4ZTdLdVRHM2Jq?=
 =?utf-8?B?TUx1WFUxaGJLWHlvUk4rdm1vMlhYRnJyY2ZWbkplSVpKdWJOaElhOGttbEFI?=
 =?utf-8?B?UW9KbU9aUUUzaUJVS2pPeW1naDgwSys0RlRpL1BBNHEvdnArbDgvejhSQktz?=
 =?utf-8?B?Rzc5VWFxRTcybytsZW54ZHpMZGlNeHN1S0ZvMDNWdmNZbXlLMThncUJ1dCtl?=
 =?utf-8?B?OFVJeWFGTEFKYjJRWWdjbVhzNUlGRFZUa2cvK3JpOTl1WW5WOTJoYldtalB4?=
 =?utf-8?B?L1dOZHlVTldvNzFkOEdkcUNWNGJEMXBzbnkvaHlqazB6ZmE1QjRrUUtHZDdZ?=
 =?utf-8?B?WC8wSWV0bFhLRm4wRDFGK0hVVzdJRzYvTFNMeklPeXR6THkvODRRMkNtdGNH?=
 =?utf-8?B?YTZBUWhOS3p4NGJpNVhVZVlncW8xdTI5S0ZyV09yS1FsTkduNU1yeWk2WmJr?=
 =?utf-8?B?RlhYMzdJbTN1QUxTeGZRcTBhU0RxanlLaXVzdm5NTDdPQ0ZrWEw4VTFwamhV?=
 =?utf-8?B?dzh5VzJlMFJDT293KzNSMFJWUmdLaUhyQVVablRudkJ0WmVITXF1YkN5amlO?=
 =?utf-8?B?c3h1YkNIYm5Xam4rN3FORWhNQ29XQXdrUjF0ZW9BTk85dXRBUERqNzBScmNr?=
 =?utf-8?B?ZmltcVRzaitmSnNoWGtBa1hGc3hKODA1aVQ3bWJPZXpmMmNEZFNlaVVFTlVE?=
 =?utf-8?B?YlBqS1dQRUJqbXdOQUFSVjdTMXg3SWp0ampteEFJemhLRnZHUUYrYjRmWkFu?=
 =?utf-8?B?Qkl2RVpQZjRKMVdORFpwaDE5dlhHbFFCSW1oQ1dJbEFTRS9CRWlRK0lTT3pM?=
 =?utf-8?B?MEtXdkhMR1VTMjlzSEdDNkc3Y2pJei9mZGQ5anZmc0ptTFZkTmRaaVNhOEds?=
 =?utf-8?B?VzBvVXRMOTcxeUc1L0JUWmowU3k0eWJXN0pNZE4rYlQralVZd3ZyQUtIMXI3?=
 =?utf-8?B?a3Rld2JOWmJlQXhRQ0pvV3JHMmNUUDE5TERpNDVHQldMN0Ntc3Zia2M4VWt2?=
 =?utf-8?B?aHB2aTJiSlVRd3BpK01FakVRTGwrdFoxcGxtblpta1ZtT2FsTlNId3JqeXM3?=
 =?utf-8?B?ZWFNRGdGbCs4czFScHRVVFVuNC8xQmRPUFlGRFU3MVRUbEVGcWZhUVRxOFZr?=
 =?utf-8?B?bE1BaHFTOVp0bitSckk0dlJIQVZ4YjJXY2p5anFUc0dydzdOeEtUdUk4R3Ix?=
 =?utf-8?B?V2JnWlBCWC90MUJJc2srdHdUUVZSc05MbXVPYmZEV1ZSR081b1UyWlRHZVVO?=
 =?utf-8?B?dUdjZHJ3eDdTQ01yVWswVEV3NGVYMzBaZU14SWNROUY4U0NKdXVCSEdBNVhR?=
 =?utf-8?B?L0tOeTBBdEpUcDRTZkhRQXhZM0RXVFZ6YVkzWkV0UzV5Vk1RdTNsVVcyNnVm?=
 =?utf-8?B?dTBNbU9XTGVoU0hwTWR5VDVTYUFsVjNLa1ZvZU5vbVhha0VEMjM3WS91ZEFu?=
 =?utf-8?B?eFVybnNub2lRclNpVUJDbWVaY0hNYmFXaGg0c0pVZGNmaFVMeHE0ZG1DeG1p?=
 =?utf-8?B?eHArRWp4c1E2MmxtL2pyaE45NXh3VXhPR053MzYwa0htSjlmbU94bHJjRzdt?=
 =?utf-8?B?eUpHQWVEb2ZrOGdhT1hUR09hbXJScG52Ri9ZNE02VFlqeFFtcXZaVmIyQmk5?=
 =?utf-8?Q?+aVFLmUciON5hzkl6o=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dnJOeTVsMjI0MFhmRXJxNC9FZzYyZnphcWRFR3h1QUQrdE5kNk4xdzdqa1Z4?=
 =?utf-8?B?MjBaSCtQNHdmb2NrVUMyRTY1WUxWQnpGTGFvZGM0aW14bHpnbm5wbnl5a29M?=
 =?utf-8?B?Wm5tWGZ0NDhsa0tpeVF4WDZtOTNGUHN6VkxYVTNFQVd2dVJUbTY1M1F4QytE?=
 =?utf-8?B?QTJYVjU4NmhCcSsvT1RxaTF1dE9yMCtibVRGZnlJL2RoYnJGVzJsc2M0QTJH?=
 =?utf-8?B?eEg3L3VLSzAwYStPZjg3cFF4MThFUzVYUWlVVTJmVUJ4Y3hmZFQ5MDlDdDda?=
 =?utf-8?B?eXUrelJmS2ZXbE5selRzeWdIVnM5Rk15aG9jVmM1Smo3V0hHY2VBSUUvU1Q4?=
 =?utf-8?B?L0dmR3FGYU1zWnU5N0NmNzVscThFak1OT2FDaGZMV3E1TXRNVWVuZ1F1Q3Fh?=
 =?utf-8?B?MncrWlBiZXJYWDRCV1FaUzZIc2xiZUJ5d3RiZ3NiSG1mOG9pc0NsYUpNZ2cx?=
 =?utf-8?B?SjNCeDdVVzk0T2p0ck1RSERxOTJVSTFGQlE0b3NqaWZacSsyZEo1YytIVGR3?=
 =?utf-8?B?Q2hpTEVjWDdralM2bjJNSFU2MlNCanE5OHVnS3dTRTVRSDdydjJmSXRpc3Vs?=
 =?utf-8?B?eGp4Ym5XYkpRd3NPYmJ2clV5ZmoxVEVtQ0hMOVBoU05BckFwK0IwRnZSaU1D?=
 =?utf-8?B?S0V3My9nbW92YmVOWDdtRTVvM2NWVFNwSDNnZSt1T0srUUtnanU1S210bDc4?=
 =?utf-8?B?NG50cER1OTdzdkxyTjd5V0RMQm9EWTJFR1ZOVXdHTU45MUJjTm9hRGpja01W?=
 =?utf-8?B?ckYrLzBiOEUvU3dhTTRrZUhldGhpRGZYTWNWdkhzMENBNUx6ejZKbUl3NjA1?=
 =?utf-8?B?d1NrNHo3K3ZmV1g0UVh3cW9kR2RKQ1ZVTjMyZ1VNMVA4bnVPUHljZVlROGFo?=
 =?utf-8?B?dEs2OUZrMDRMenl0YkFYMTl4MS9KV3BWV2ZGNjZtYitVUHVLTEhLcVpIc01r?=
 =?utf-8?B?aUZvR3pBS1RKRERrS0s5M2VFOGZQM1VtZjJwVkl4QnlqWmkwaWJBNU9IMTlX?=
 =?utf-8?B?a2NkeGw3RERONEJabHZyNFNHYXpPc0JndXF4aWVSandSUHBsMzMwNURmanBw?=
 =?utf-8?B?OU5XT3BCRWhteTUzTHI2MGtsM09DRVhCMlByaGp4THUzMXZNUnpNY2crU2Z5?=
 =?utf-8?B?cTJYenBZR1kxT1RESlhtMDFuNy9QVGJYTkx6V1h6YnNuSFdMKzFkV2kyWUtY?=
 =?utf-8?B?eEpRSlRBekhoWDFhaUI0VFNYQmNWWm1nNnlVZzVjdlBsc1NXaTlGdnVWcExL?=
 =?utf-8?B?cnA1Smh2WSs3V21vbkhCeEt5cGtBeWNkU0RKc3RFZHVyMUxrU0U5QnNkMm9N?=
 =?utf-8?B?dnJxYklXbU5uMDZOZUhObU9TUDY3TnZlVnU4SnN5dThlT3BqcjQ1cGJ0QVlL?=
 =?utf-8?B?blh3QS95cklpTXpsaTZ3U2o0WDBWQ3Niamp0eWx0OUYzZ2QwZ3U1NjB4ZHN1?=
 =?utf-8?B?SVZhSnRSa3ZYSjQyZ0szeEZmdldnaEx1WXFTK0V1NzRPa05wNlVTNFhKWGRJ?=
 =?utf-8?B?OUFMS21xSUhKK2hhbEhSL2JHcFpSaWxSRUQ3Y3RFeUJiTmRLZnFQQ1A2NWtM?=
 =?utf-8?B?N0MxYzBBZmxRL3ZDK3NyN25FTk1BRUJLdWkwbGNpTG00YnUyaiswZXE3aGEv?=
 =?utf-8?B?NEJ1MlA4ZytvUFQ1WU1xczdnZ1FqSkVUcmdwdi8rRXFyR1Z2VEtaQndhd2Fx?=
 =?utf-8?B?dzM0VzhpUW9WTjhIcFhvM1lXbERFbExmb0Vsa1k0dTI2V0ZmeERvODlNR291?=
 =?utf-8?B?WHBGNUpwYVJmTWdGOSt5dWZ4TmMrUlQrWTNkWTdwc1QyMGFiMHFvOHY3bWF3?=
 =?utf-8?B?WnVtcmwrZXdaNDJNOUp1U0R3Tm1Zb0l1TEthRkdma2ZwbThvRExVcG12dHNS?=
 =?utf-8?B?U21SZlFxb1dwLzJkNGJGUGJHKzFNNlZvcjFZNGRsa0pYbzhMZkMra1NGa1Rx?=
 =?utf-8?B?UTM5cnU4WDN2c1cxd0xqYW1WY0dLNENtcmdpQlBld1Q0a1l6dlpZOEMwaW1Y?=
 =?utf-8?B?d09pZmVCTmdWcDJ5SFNJSzFpdHk3Sms0aVluOGM2a2Mxa2Z5TTlZaDl4Y1J1?=
 =?utf-8?B?L05XdkMvYWp5c3JSSSt1dGxSUFBxbDgwaUhsSGdZQ2NWYVA3YWVMME5vN0VJ?=
 =?utf-8?B?dkZZYVE2YnNSZGxvaDA3a1ZQTXh0WVZTMkJuVFJ0R1p1alJPSmFGa2dYVk1m?=
 =?utf-8?B?elE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ad00e24-961a-43da-1231-08dcee3a5baf
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2024 23:29:19.4586 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iz/nia2nwDryn0RB8gKVP3iIW7I+9I1588D3puY6cSn6hU4JYfxow1Ak79JiCa8foNYGvMp4oPfGzX+D8KGE8VxjqO/hovBHgsOJA2p2fZU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8811
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729121370; x=1760657370;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AQiGs+65NBGgEcUbzkOrVUXblxK7PpTvJnt5dqlgVb0=;
 b=QuIjNceYGjfrAUwH92gWeo8Mlsrw7QOeBRrayqZKRs6ZnzArKa9NiA5Z
 jBsiioJH1Yv8Anu7rC03yqi5iI395rQ9pKcaBFPeQvKsTAI1CySqbScTi
 TxfEBMJZ8BBMcmYneS0+Vp8p6FGNRbpRtaYfB5vCkHtbVTRxGXLZDoUSV
 4fvvXHlB8JciXA5YXji3UkxitAMyqfgaz23NpQXNRMK3h3tYsr1NtbeK7
 D2g6DJ9HYlPuE7qzz5rV8OI81IauIw2mWU8Xp06wE+l8FYHo3+tnQzGQo
 jgQQe7lFQeCH9r93k9Eern51A4qc2lxS8mamCpEOP6qb6thkfhkN+7M39
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QuIjNceY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net 4/4] ice: Add correct PHY
 lane assignment
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



On 10/10/2024 7:21 AM, Karol Kolacinski wrote:

>  /**
>   * ice_ptp_init_phy_e825 - initialize PHY parameters
>   * @hw: pointer to the HW struct
> @@ -2743,8 +2723,6 @@ static void ice_ptp_init_phy_e825(struct ice_hw *hw)
>  	err = ice_read_phy_eth56g(hw, hw->pf_id, PHY_REG_REVISION, &phy_rev);
>  	if (err || phy_rev != PHY_REVISION_ETH56G)
>  		ptp->phy_model = ICE_PHY_UNSUP;
> -
> -	ptp->is_2x50g_muxed_topo = ice_is_muxed_topo(hw);
>  }
>  
Once we remove ptp->phy_model, this check for the PHY revision seems
like it is meaningless?

Thanks,
Jake
