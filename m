Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 79159917C76
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jun 2024 11:28:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45C72811BF;
	Wed, 26 Jun 2024 09:28:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EK9FdNgAKjHR; Wed, 26 Jun 2024 09:28:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 162C5814B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719394107;
	bh=1AmBxHGQ+otOrcKTURHnHLLDYh1jX+V+PpH6hn8NICs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=p4oIrG3OK7NArypXbXLpYIdwoGY5wfNQMPHrrVw9f8YLtyAs6BXVp+3ZJDDNA8VPU
	 TNBYDA1Haex0vS8pp+tobCmkllP/7T1NpDWiX91jwkIez1wW+ODQdP3JmLjf3+Y+ZM
	 RD6dkTwpChaoHKDmFQ027rOM5sIhKqILy8GZQqS17eHkPvD+zrr1/w9fCa/i2WDFtG
	 b5gPbaGgQ2wpkj7KKN5k2vqGCZLkS6sJTXsvCUjBrgYbwFDYzhIgx9NoxBVbCoJIY5
	 5zkifynPgiqbfSu3YjA+LM++YBcS7dUqS7JzER3qb+o9ahxrnWMHbDf/av21HlRJiM
	 VEwDfKbzYb+xw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 162C5814B7;
	Wed, 26 Jun 2024 09:28:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2F2841BF423
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 09:28:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 259AB40B47
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 09:28:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i4gfVvYpEPP9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jun 2024 09:28:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7690640017
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7690640017
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7690640017
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 09:28:23 +0000 (UTC)
X-CSE-ConnectionGUID: 0J/rJl/MSKGW2VRWIR+cdQ==
X-CSE-MsgGUID: nGXjKnBCSyW7YzWUjhULXA==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="16584265"
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="16584265"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 02:28:22 -0700
X-CSE-ConnectionGUID: N1rnLVFRSumcWm+k1AfTpw==
X-CSE-MsgGUID: weDJrEevRAWgekd/Cd41DA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="43832514"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Jun 2024 02:28:22 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 26 Jun 2024 02:28:22 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 26 Jun 2024 02:28:21 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 26 Jun 2024 02:28:21 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 26 Jun 2024 02:28:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AUFjSCO7u/gn6aCLVVTcb2AsSGvtnjf+5QSYvT28ijMdYSkKC2CCCrQKOS1f50IUg4CO/vRfep72LaVP2IQLlq7VkjPLqfRt+n3m3rEKFyzGQpj9Ov0hpqEYljhb+1do50QSleFLB0sacw4npdxffADPh4SOjkaNlx5YYEML5w82qRocz1Dm73a/CzbMEFcb9bJvC6kUbZaryANW5wvtvmvgJ55ERW2K0ycCfXxZc+E21XHYoXJmTT3eMJEIMn8B3IJp7DX2IxbNGlgJgkFFypbx+BH/MbV2tW6LoZLY+0iRsgDTWRCl5GvE6VBB4jxK2qUVXL4fcy4EPTsISHT0Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1AmBxHGQ+otOrcKTURHnHLLDYh1jX+V+PpH6hn8NICs=;
 b=JLz7NwpUMYiJST/lEf5oZUN6GgpQsUvnl4lnxaZqR5FqwqbvqFxhMTTTA6ie/Uq3NqGtWdEVY1OUHnhoEGStfN94jsWTe5DD/2/nyYh/nVDiBFhVs1YxckFdW0V2PoGer9g0kO11OYQg/kKYgevtxZ2TRgvZ8OfpoyXWnjA40VCt1enZ6kO4OIIzzauBmEGX47azO/ngnt8c5oDDgsEBciPOWe7wjrsXuyDxyHMVc5aFSiXhcL8em738VAl7A2p5EahtXsiMpu/oT/WeHkHKbtcnuL65xo1VxSni89tYm7EN3+avOOvttgHtv/kWuTpQM+QAUsPKWIE6NKMzZCTgmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.32; Wed, 26 Jun
 2024 09:28:19 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.7698.025; Wed, 26 Jun 2024
 09:28:19 +0000
Message-ID: <9bb9c5f1-8e52-4b89-9c17-1f6726678581@intel.com>
Date: Wed, 26 Jun 2024 11:28:12 +0200
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <anthony.l.nguyen@intel.com>
References: <20240625184953.621684-1-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240625184953.621684-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1P190CA0034.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:802:2b::47) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|DM6PR11MB4657:EE_
X-MS-Office365-Filtering-Correlation-Id: 928134c1-79e9-42e6-5570-08dc95c250c8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230038|366014|376012|1800799022;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?azJoSUpGakFtbWdsMitJaERNdEllSDUvMFN6SUZLM09uUHd5elpFVU9EMXpS?=
 =?utf-8?B?NUY1SitKVGpCYTJwdzVpb1NkMHNsSjA4dGhjRXdoTmpNalRab2pWWUladHBT?=
 =?utf-8?B?ZEJmT3hGeG1tMGV2bVBSZEY1bHBLOWhmZHpxVEVyNHVYTjNVNk1BV0lBL213?=
 =?utf-8?B?VVpqc1dxTENCWEtKMTRoenB3bGtNM1VJUk5tY01hdmh3ZE5pQ1FpTEU4S1VG?=
 =?utf-8?B?K2NYYzlqNEhwM0UvYlNpek1aMVU4bnlBSEx5WGMvVWFVbC9KU1NqcUF0cUFF?=
 =?utf-8?B?TXhDSWZ0dXgzUkNnNFNZNUdEUnB0WlBPT0hxblNlT2VBNUFhTjYyM3JURkVu?=
 =?utf-8?B?R2cvMlRGVFBJQzBGRUZ1NXZNTldjQ2V3VG1kQ0ZVVk9jMEdtMmZFRDc3a01r?=
 =?utf-8?B?a0hGdDByZ2NWMkFiMGFDSmVIK3J6Z3YwOFZiVHFIdm10TGV5S3JyN0hFQjF1?=
 =?utf-8?B?a003MU0vamVRd2EzTzVHc1laZmYyMkR3eDdaczNZMnBKZjNwYlFZK0NGN1Yx?=
 =?utf-8?B?TloxV29zTlRwMDdXVWw1MVJyQSs3Tno0Q1lyTTVaTzNZRDBEVHRNLzNGVVVZ?=
 =?utf-8?B?K2ltRG0wTHhlNGhNMXNzV2M0WElIb2IvNytHeGJXYjdSRERyZjRQMHZvazJY?=
 =?utf-8?B?YjB3bjFLbFB1NFpkc0NSQVpRZ1NLZ0FlQUVGQTJmMm53QmNINzdMWGZpT3Vi?=
 =?utf-8?B?VGxXeTRCQTJWcUVmM3pLWEsvWGZWMzkza2RzTUpLaFVZWGFkbWF2Z2YrVkU2?=
 =?utf-8?B?a3lLejVZcHlGK0tFWkg2RVRza1QvR21EbC84bzV4TlZITmlYb0JPWEN5Y1Y4?=
 =?utf-8?B?ajdvNTNoRmJaSStrOFNLd2JlKzNzMDNlUHJ5S2wxSWpSa0JXbFk1YXNhVU5n?=
 =?utf-8?B?MXptd2RjNlJ1QVZONkxQRDdCTDd0Y1J2TjJYazB0YnAvUGkrcTdIWDg1UFpM?=
 =?utf-8?B?eW9DYUs3WmY3QktrbHl4VTBjSHE1Lzkxd25HVlRUVG1xbmVub2JjVlFBRmdw?=
 =?utf-8?B?eHJCV1VCaE5kQXRzNWhOQjAvbU5pTGpRSEZIT3hqdHV3bU5Nc1VIZWViK2w2?=
 =?utf-8?B?bGVrak16RElDQkhIT2VxbGduREREVFowMHhKQ2FDUngrV0IzenI3cU0zRFRl?=
 =?utf-8?B?b1liRmlzc3BJQXVqemFWeDFjeVdRbXN1TTNEemdGV1hTQ1FROWZPTDFOOE5p?=
 =?utf-8?B?T2hsTXNSVk1MN2xtVzNWS2FuR0UxWW5oVVJ3L2VDekZyZGpTYUROV0xacnE1?=
 =?utf-8?B?UmJ6VUxVS3ZkV3JxZkNpNU10RjlSaStwcHBFVHNrbFRiSi9iR2EwRUhiZXpQ?=
 =?utf-8?B?RE1YL2pVdHk5UitQVjU3Z2pDWlZCdmk4N2piMUxUV0NkemsySVFIYXlpdlFR?=
 =?utf-8?B?KzdITWdhYnNDTkZJa3BLRU5sRVVvK2EzTzU3VDFIdjZWbUxXN1N3ejlYM2tR?=
 =?utf-8?B?SVBrNTE2QWczUlZGTk5BdW8wU2xNMmZ2YVFhRU5SYThCenRjVnhhUFpDMUhU?=
 =?utf-8?B?a3Y5WVJjVVVJUUhyRnhWdUppbEg4c3p4ZS9jaU5WNnJCMm85YkJSNmRoVkRE?=
 =?utf-8?B?MnAwV1hYZzVid0ZLY05SVWQyQ1lRdjhKOThoNVJpZHlqdjdDeHJCU1hVUmJt?=
 =?utf-8?B?RlhDcEV1bnRYaldkNmdBLy9xUEdsYXd4WjRGNW9IbzVRUjJvR0Q2R1lrVFZY?=
 =?utf-8?Q?AFBpolKlMK46npku+cAM?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230038)(366014)(376012)(1800799022); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eHhiNnVXa0lVRWwvSkp5azRWZDl3bWkxTWtHMlYzbGJiWUlaNG13WFpSR2tk?=
 =?utf-8?B?V05rZmwxMW82aXVWak5Kb2E5dnJwMWE3eU1OT2tIR1hmSjVqcVRhKzVjVitm?=
 =?utf-8?B?TlNVNXFubFBJZ3VHWlFlbkV5YkhRN1Z5SEpuVWE1bTEyTXdFaVUyWW1ZMnI3?=
 =?utf-8?B?ckpMR0JERjNPRkFXQ0drQkdhN3YzUzRUdkIwR3NUNG40UnVXTEp2dVZxZUZh?=
 =?utf-8?B?MGlpdFBwaXRKRzlyUjVaRDl5SnNGVkNnbzlCdnlDL0FqY283SVU0dXFrRjVv?=
 =?utf-8?B?bnE1Mk5pcnFtenVJRXJJaFE3STUxbk5LZWFiODI2NjVFUXpNcjN3dWFxQStx?=
 =?utf-8?B?c3RkOTZkaHV5SXBCVjg2Smt0YXVvelRlMkRBanVXR2pMUjJaeW5xZzJvR1U2?=
 =?utf-8?B?QzVpdzZqREZ4N0FMNUdaby9naEFzalRza2lDK2pUVzVleUFabXEycGZkdCtK?=
 =?utf-8?B?cGFnRklBOTVPNlg5U1VIRUFkM0JIUGFiUjFXN3BVK2U2OFlqbzZCcTBCa2pj?=
 =?utf-8?B?YjVlcDBFK2FQY0pndXZJZXJsZmtvdSswbTNVMVpaRnJsdkdDbE1NemtaSkF2?=
 =?utf-8?B?SE9XcXQ3TFlYZk1YVXQ3dEZLMm9Ib2U3ejB0N1pYNmVaV2FTelI3QnVpQW5K?=
 =?utf-8?B?MWwwUy9DQlhqY0pXc05XUVhpT0hXRWtMOXNISHBvampzWnhRaEVkd3dyQTVv?=
 =?utf-8?B?NURXaG02aHJwRk9vMGF2SEhkbzQ5SmhnZXFwWis3TGl2cmRXWFAzK1pzTHdn?=
 =?utf-8?B?VGFrZVhONnZQaHcxL2Z1dy9ORmo2QkYxdVdoR0IvWmJxRk5NSUtZNWF3OXc4?=
 =?utf-8?B?NTY4T3I0b0k1UTZEUUtWTy9aQ29PYk1XQ0hjT3FKc1VZdUZkZ1NyNHpsOEFI?=
 =?utf-8?B?b0E4T2gwOWtkWUppeW5jUjAzRDJya1hBWTI3ci9SRlZVbXVDUWxnRGZ2S1li?=
 =?utf-8?B?eGk5QU1pTW9hdXhzdDFaTlpqZjJ0SjZYbkEyS044S29JMFdEdUs4T1RqK2hT?=
 =?utf-8?B?ZTk5WVBacTF3bGhCTFNMb1c5N3ZBRlNZSXhFYURwa1hYL2lZVzFGbmc0TVRh?=
 =?utf-8?B?N2h3dDVXTTA2R2NNdWhNeFNGMjFZRXJCS251dHExZmEzY3NiZC9GMFAzR0g4?=
 =?utf-8?B?blJEcUJscm5Eb1pVNTJDbS9qYkswTDVOVU04Q05NM0F5RnU1OXFyWjl3U0Fp?=
 =?utf-8?B?RkEwMkxLOUtpRWRIeUlxbjZhUmJtck8yQmZSa2FXaDY5dDg5WDZPQlFhbGNW?=
 =?utf-8?B?WDF3QzBhYlB5VVkrM08wN1p0S1h6MUxXOSszTFRNWWlId1hoRVgwS1lGalla?=
 =?utf-8?B?WE96TWlBbzlTa09ycjh4MEI3NWpLSzM5UFRnZi9BUE5qTnJ3QVJSOUFBL1VU?=
 =?utf-8?B?VVBjOXh2bWRxSDJuTzNIUy9oWm9ibm9SeUw2enUxVFZSVDd2cjVjVVBjeVkz?=
 =?utf-8?B?U3dESHJDQ2hadHgwM1BwQkl3b2VtN01iU2k4N2dWMHhBZXpmUVliU3FDdFBW?=
 =?utf-8?B?Q1VWbXhuQktIYjdMWGtWNCtsbXNtZU5HSzZHWXVzTGN3UVJBaWhzODJZYzlK?=
 =?utf-8?B?ckhvRnFPeHR5UzVIQ1FxTjdmSG5sQiswaGVDR3VCR1E0amNPRHNvY1krclJR?=
 =?utf-8?B?Ri85U2RCUng0eFQrZmx3aWZ4YjNHT2dtd2RlUVBsV1kwRlZqby9pVHZLQzZv?=
 =?utf-8?B?Ym1BdnlpeG0wNXZ3K2NNNm5HaFZqWEVDMTVBcUIxSWU5c2w4djFMMTBhUWcy?=
 =?utf-8?B?enZpR2JRM0pXVDZjejAzazhtcEtMb1dYclgwcVNJRUxSdjEwdTRaUFV1MER2?=
 =?utf-8?B?ODBMSGFOS1N6RXlLTEVXYjRYMnJsVkZaaVNQeVczV2NwNnNuaWZlOXBUNzVE?=
 =?utf-8?B?M3ZIZUcxMy9uUG1HSk1FTk9hUWtRbmVwRTQ1SkxUdE1NTkR3d3ZFZnZscFFV?=
 =?utf-8?B?Y0ZWSzF6b3UrYUt1Umh0S0hYTC93elNCdnU3VmdDSTlXVjhvaXhkNUcydmRi?=
 =?utf-8?B?Snd6MzVnbUpXQmxaSFc0UUtDZzZYZEEzREp6cmszejQzSGVmU2lLcXdsbURQ?=
 =?utf-8?B?M0xEdHdTSHNud2FZMzI2VFQrL3pxR04zYU1vU0VKZU9vN2gyS3kxdmVYOUpO?=
 =?utf-8?B?UkJYL2Q0dXc4dmg0K0cyNG95YkZJRlB6OTRtZTM5bWpZMEIwSkJ2WVBmaDFX?=
 =?utf-8?B?Q0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 928134c1-79e9-42e6-5570-08dc95c250c8
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2024 09:28:19.2280 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /ig9/b/8ripzXqUa0EXmRkk6xjOakOHADxrsyyzUQR6oVNoJd1CQfY1iuDEFKUzLIjAuRUrV/m99xgrzZsT/GpBFirBVw5zadptQ/dezmnY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4657
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719394103; x=1750930103;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XcdScJF8MDNlkWaeDN5mLpcqA1yvoodsMuvV6cTUTzA=;
 b=eThgb5779TTVJWIdwsqfUL7lUhBtKo4T5Kf1B7MNAp3lnJCslH3dCFtq
 gdL9QFS9vgohP55FL2re7xx6PWOkixkv8Ou+bNZAqetWAIMFlbPkIF9Ki
 fupdzoZNzR4+nCLm+9FF5RGKOPnX2P+LOPVwI/PfeZHJwGW1d2lyifHIR
 5yUJyoX5c0pYuhpd2ROTSSAuz+ZhFZ3b6M4W1/xVxyBSnmijUnTK+j1Ls
 EpjVg+nQ2Q9GP4NBpPZjHBwS4mNIFgxe+4A3NcDXhpWt7nf/JIWfUB1OS
 hoM6qdZ5mtNbuC3qIHXdraq9Eh7F8iJfATYs267rkFBKBFXTpaeIQSNSG
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eThgb577
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5] i40e: fix: remove needless
 retries of NVM update
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
Cc: netdev@vger.kernel.org, Kelvin Kang <kelvin.kang@intel.com>,
 intel-wired-lan@lists.osuosl.org, Arkadiusz
 Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/25/24 20:49, Aleksandr Loktionov wrote:
> Remove wrong EIO to EGAIN conversion and pass all errors as is.
> 
> After commit 230f3d53a547 ("i40e: remove i40e_status"), which should only
> replace F/W specific error codes with Linux kernel generic, all EIO errors
> suddenly started to be converted into EAGAIN which leads nvmupdate to retry
> until it timeouts and sometimes fails after more than 20 minutes in the
> middle of NVM update, so NVM becomes corrupted.
> 
> The bug affects users only at the time when they try to update NVM, and
> only F/W versions that generate errors while nvmupdate. For example, X710DA2
> with 0x8000ECB7 F/W is affected, but there are probably more...
> 
> Command for reproduction is just NVM update:
>   ./nvmupdate64
> 
> In the log instead of:
>   i40e_nvmupd_exec_aq err I40E_ERR_ADMIN_QUEUE_ERROR aq_err I40E_AQ_RC_ENOMEM)
> appears:
>   i40e_nvmupd_exec_aq err -EIO aq_err I40E_AQ_RC_ENOMEM
>   i40e: eeprom check failed (-5), Tx/Rx traffic disabled
> 
> The problematic code did silently convert EIO into EAGAIN which forced
> nvmupdate to ignore EAGAIN error and retry the same operation until timeout.
> That's why NVM update takes 20+ minutes to finish with the fail in the end.
> 
> Fixes: 230f3d53a547 ("i40e: remove i40e_status")
> Co-developed-by: Kelvin Kang <kelvin.kang@intel.com>
> Signed-off-by: Kelvin Kang <kelvin.kang@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v4->v5 commit message update
> https://lore.kernel.org/netdev/20240618132111.3193963-1-aleksandr.loktionov@intel.com/T/#u
> v3->v4 commit message update
> v2->v3 commit messege typos
> v1->v2 commit message update
> ---
>   drivers/net/ethernet/intel/i40e/i40e_adminq.h | 4 ----
>   1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.h b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
> index ee86d2c..55b5bb8 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_adminq.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
> @@ -109,10 +109,6 @@ static inline int i40e_aq_rc_to_posix(int aq_ret, int aq_rc)
>   		-EFBIG,      /* I40E_AQ_RC_EFBIG */
>   	};
>   
> -	/* aq_rc is invalid if AQ timed out */
> -	if (aq_ret == -EIO)
> -		return -EAGAIN;
> -
>   	if (!((u32)aq_rc < (sizeof(aq_to_posix) / sizeof((aq_to_posix)[0]))))
>   		return -ERANGE;
>   

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
