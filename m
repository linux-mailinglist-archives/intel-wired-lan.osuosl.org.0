Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D96902B4D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jun 2024 00:04:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C2CA81DCB;
	Mon, 10 Jun 2024 22:04:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0ssJsBzEUjnj; Mon, 10 Jun 2024 22:04:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6250381C93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718057076;
	bh=R8gITsItvXghhbvNy8nGVNzmTRuoA57YXq5agEsfYPQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7szG1+F/W7wfhhf7WKd0HGiAeQJnXH/goxgV8jljAGvJ9ZKTMK3ksheDsYBVQVCeT
	 vVN7kWZf82sdaMvKWwbrYUmBn8QaOPeO7qhQkBkImOce8e8tao9z+zCtHhg+Hajm9r
	 rdQ94KcUaaOFYgdBtltUfuHqjKx3nbUKLO3fE2Gj+/YvX/RH7Sq0scK1NdlOZyPOqx
	 ypKESB3Ef+swZF66KsrbL+MMI+wgRiTAco6UHEyQfqGpfoTNB3YFV2vA/rbpcBzcp5
	 fuHWQaLnkjJIjH+Hw4uXEs/iW4FZkJxum0fkcDrg+HrElYfKyNLVH7mlxR5mWEhMoI
	 1GzTURvmCiC6A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6250381C93;
	Mon, 10 Jun 2024 22:04:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 125291BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 22:04:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F060B40204
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 22:04:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VtwjKkeuxc2P for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jun 2024 22:04:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 49E57400DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 49E57400DC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 49E57400DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 22:04:32 +0000 (UTC)
X-CSE-ConnectionGUID: pLfBS9liTKaapMELdmrJ5Q==
X-CSE-MsgGUID: XRRIiv39TpGI969Qe0gohw==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="18524997"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="18524997"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 15:04:11 -0700
X-CSE-ConnectionGUID: S3CpQLabRxyOtunomYz6ew==
X-CSE-MsgGUID: ir634Y9STyyBFMTmMTif5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="39112543"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jun 2024 15:04:11 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 10 Jun 2024 15:04:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 10 Jun 2024 15:04:10 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 10 Jun 2024 15:04:10 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 10 Jun 2024 15:04:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PA+0wyuwh4ckIk9Fi4swinmMtCVVKwesbZDBbINFRHS59V16yj4psPsNEW25ZW0tWgnyWlfANtnTMLkCmK5Uf5ySExsl7FyIjIT4lRsbxxU8eKjBv5Iiv+s8sE+M5AVnouQFZNEBC4yvbFZkkOOBzmK9nqJGZSmZaDDTUy8iW31a49imrSKSBPev5pBMfzUiZP9GYCRfRgcgQjKwYrD2ii5qkquyIiV0dO8PZ7icrHvZpWuOHIO7patXONAwUjHCXRAnkgbVeVwLnupZHgMYY4VdIo9zjdcYhT2sKse9jmG8sHOZ3cyoiQTISYpPdnGWD6lh8NCYQBwWqe6aeaQN6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R8gITsItvXghhbvNy8nGVNzmTRuoA57YXq5agEsfYPQ=;
 b=GANFgMYM63S9m6pcFzEnRIzdjN5Pkxo1YjOM6RIGuiwvlMNnAAI/yreYXlVn1utgnZeObylbOBETwIt/25l/7TTTTSbhN3wszvsqecr1IcJdxyaVD8pVuhKEK9xlvoyv4RKeJ4pqu634bYfa4E6WHTtMvCLISA+bBAJMlKfldHHrAgrEWFiClvxQtECdglzrjSGh/47mCh0UZIdT8Oeftx1mK2LLsb91TYZyGN1Aid+6dApsghuFVHXCAHW8aUNCk5GUdeGjsPUJ6mB0JWfS8XX8HKdTLqf49dODt3ZrtFkJRi9Iuegy4uNa1lVQqPVCQF5qcKx+Zl67v/Nk7zrv5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM4PR11MB7349.namprd11.prod.outlook.com (2603:10b6:8:106::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Mon, 10 Jun
 2024 22:04:07 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%3]) with mapi id 15.20.7633.036; Mon, 10 Jun 2024
 22:04:07 +0000
Message-ID: <4f2ec2fb-5d31-4a90-9ef6-a036d16a5cb4@intel.com>
Date: Mon, 10 Jun 2024 15:04:06 -0700
User-Agent: Mozilla Thunderbird
To: Richard chien <m8809301@gmail.com>, <davem@davemloft.net>,
 <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>
References: <20240609081526.5621-1-richard.chien@hpe.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240609081526.5621-1-richard.chien@hpe.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0350.namprd03.prod.outlook.com
 (2603:10b6:303:dc::25) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM4PR11MB7349:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b6d6ee6-194f-4298-f01b-08dc89994002
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K3lMQkhGU1dKb3d4N0paaGhhWndvV2NaVVlNVUlOQ2llS2pZNG84NXBPR25p?=
 =?utf-8?B?MlRya1hRblJGSzA3TEh4Z1ZQRDU5SUZobmZqRjNReVkwbjd6OWNBYlVaa0VQ?=
 =?utf-8?B?aHl1UEFha2ZhbmJGVzhxUC9oUmM5dldKa1V1OXRtdk1ZRURpZWU4c3hJYkpW?=
 =?utf-8?B?eThaNmtLN2NuK0o1Q2RIOWMwSlZqR1FHNkJ5OTJFNUdyR01pVFVBWmNCbzhn?=
 =?utf-8?B?b25tQXkvNVI1SzVwajhHY0JBU01YRkdMM1JNUi9SY3BwSWZMTHBDa01RNDNC?=
 =?utf-8?B?akI1UExKYUo2NnV0WldNQ3pqczJaZXdDVWFYbzk1WnA4V0ljcys4OHRXbjlk?=
 =?utf-8?B?b3NiRTVTT1p6em9GZDEvdDJ4RytoTjNVVVY4RmNVc2MyOW0yN0Z4ZEc4eTQw?=
 =?utf-8?B?WXZBdmNoUXdRUlVuem9HbUJiRUw4ZUZIbTd1QVFlVVUrQ200ZlBJVHkxTVRw?=
 =?utf-8?B?K0NmeEUzWXB6UURYUG80dlRqNndVZ1V5VU1JUWwzdWN0T3ZIRDFUTW5LRGFL?=
 =?utf-8?B?b3A0d29ZbU53dTQrSlFITXlCU3Vtb2FMdGlwSUMrQjFoekF0MEQ3R0c1OU9V?=
 =?utf-8?B?WjFYa1RZZDF1djlGQmRIR05MTksvQ0NRL2VyNHN0ZDBFT2Y1L1BtT3dLV0Jr?=
 =?utf-8?B?bmJ4WGFSNHhnS1hmVXVPNG9ETEIySVR1SytwUHYyS1ZkOWlYTm4zdm9uYjdp?=
 =?utf-8?B?QUNXL1lYdERKVE9jRTMzR2t5emxHV0RJU1F4eW84SlJhei9zYXFBdlZTSmRP?=
 =?utf-8?B?ZndtWlFQbXp3Q1lISXg2b1BzMkNQV2MvbEJXc1NOSklRUFpwQWw0YmMzcjc1?=
 =?utf-8?B?cmFFbE4wbzBqTVBnYjJCYzVSREpRcE9tUEdKL1ZWbmVIVWE3emFIZ0lpTEdJ?=
 =?utf-8?B?cHlUNS95VGpTSnFFaU05V2NoeUNIYnA0WnVXRFFYU1RNSnhSSy8ralN6dTVu?=
 =?utf-8?B?Zmp3QTdvaGtZTFlGYnE1Qk1zei9pOVNHUm9lTWd4RmxjZDU1K2RVNjFlTEdm?=
 =?utf-8?B?SHVUQjZYV3FiZStmZlRlN3hXN0V3bTVFWE1RdTZ6Zjk4OWR3UUFxd29zTmJ3?=
 =?utf-8?B?SEVyR2lKSlAwMURVL3cxcklEK3JzbERGaDJyWTlNeDl4dnppVU5nQ2RGTGh2?=
 =?utf-8?B?bjlidHc3NXpEb2pvMDl6U1NabHlJWEJUREpnVC9maTVUQkF4NnB4ZTdoVUJy?=
 =?utf-8?B?VVRxUkFxRUM2bmxsT3lQRXlrSWorYzBvS2xZK3J1b2NlaTBFVVhPdkkraWVo?=
 =?utf-8?B?a3FFc2E2UGlSUk5qNHVYM3lKSE1qUmVZS0hTN0poYnNpdzNzK2NyK0w0TWpH?=
 =?utf-8?B?NFZPL3UzRXltRS83emU4QWZLTklzOTJtWEtxRldoS1o1RGpUSzViVGtPUEl1?=
 =?utf-8?B?NTRLSDVVb2JYb2d3RzB5OWordWdXdi9nOW1GYXZpMWV6bDdmVUZHQXg5SDR0?=
 =?utf-8?B?d2c2L3lCL29WM2k3SnRSSDVKRURINVpLaWEzWVhVQXRiTjFFdjhaREd5TEln?=
 =?utf-8?B?VEhFb1UzZk4wUnpPRTlZS1o5ZTlqK3pjb3RuU0xIK0tzSlN6MlFYMG9GWHov?=
 =?utf-8?B?aXVOVTJsQ1lvSjFWT2JFajlGanhaY1VrZzhBazFVZ0VuSXI3dERyT1hkMXk5?=
 =?utf-8?B?emhzQXhNZEVsMmxZcW9iMW9YVHVRSUpGS3JqTWlPeXFmVVA1alZWWno4bjl1?=
 =?utf-8?B?aEFSVXZnOU1QZGxTam16R2RGbUg0Tnl1UGdHaWluTXFnVTBTWElZcGhQOTI4?=
 =?utf-8?Q?kK4a1yr0g7ca3C/rws=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QXZMbHhIK3dTV01vbStWMDBicnZmNWhoQ010ejhCWTRCd2tlbnpUakc1WWlZ?=
 =?utf-8?B?SlZwQytzZWJrdW53UWtFTnlUalU5ZW8vMUVmN2w4UERyWVVyL0w4UnR4WXd2?=
 =?utf-8?B?eStEU3I1Mm81SHdqYlhSckRRSFZlYTRUT2NuM3hUeUQrbWFLM25SbG9NVXk0?=
 =?utf-8?B?V0pBLzhZWkhjb1VGczZaU0pIaXo2U3czTk43Rjg3YjJBSXl3Q012TnZQV1dh?=
 =?utf-8?B?SlhqV0ZTS2x2RDQ0NkNabzJlSmV3MWhVSjFINGVkdkNGNC93LzNDR0NHU2hN?=
 =?utf-8?B?dXBFL3VoWTlmOTdFL1dzRnplbmF0OW5BTmp3Y2dNMHArZ2JySmN3bVVrUlpN?=
 =?utf-8?B?QkZhRExMNDVralRycithaDhBNjl3eVppK01FdE1HQ29KM3ZlMW9XbmhucjZD?=
 =?utf-8?B?WVMvYUM3WnlPOTRwTDdrRnd4QUYwZVJUNWs4RWV2b0dDeTJGVDdBdmpBd3l6?=
 =?utf-8?B?U0J2aEY4WUwzRkVuR1hOUDRxYkVwZkRId09HRlBWNTBmTjJFcHJDcU1NMjRT?=
 =?utf-8?B?ZmxMSHQ5dmxnWmtIUkJsSFBDeGhJbDNxTm53aFZ5TGgxZ1VLeEY4eEdMUzQ0?=
 =?utf-8?B?V2o5U1Zvd0lwVnFNekNwVHlaZXpQOVpML1JVUDlQK3Q0NTB0ZURuSEt6OFlq?=
 =?utf-8?B?R3dlWjRuRWdYZmpRVjY3UWNXMG8yYkVMTzRVbTdkZTlneURGTHAzSGdVNzJD?=
 =?utf-8?B?SGFFWkJXU21ISlpObnR6TU9oWlpGWFpwNlZNU2RXa0JkdDR2Q0xibVZrVFlF?=
 =?utf-8?B?dVlJRDVrU3UzWHUyUE9OaXlZYk1pYWVsRXA0MVZZbzJlRlp5ZmFOeVhzN0RD?=
 =?utf-8?B?REtUN1A1c0prTXlBT0s2eVBvL1RwWW1VbVIzbGJvaHFidnRuenR0Z2NiUVFq?=
 =?utf-8?B?Z1ZMZnhaeGlJMUQvd2V2NHZPZEhGTmFqVFZYZEdCa2pwL1NlZVpOZEhYLzFx?=
 =?utf-8?B?ZytYRHQ2Z3VzcmpEWldYa2JwZ3NQaWtKUWZMeWVhMENPMEdrRlU5aHgvdWVV?=
 =?utf-8?B?ZmtXY0ozb3Riemd3b3owRzlRYkhybVA5RVBoQ1RsdG9nRnRSU3dBZEJPMXNr?=
 =?utf-8?B?ZzZzeXNXSlg5QWN1c2g0M0JRYVI3U2kySnE5SVNtczA0VEtFcUZNWEd2eEhC?=
 =?utf-8?B?OThWNTZrSEJoSExlZU1ZeTdZQk5BVG9vVE5KRi9wdi9qMHFoNHJRT2NBWkFz?=
 =?utf-8?B?dDkrR1RRNUdCVFFyeHlkK2pLLzZEWGlUQTNsRUVnaVJ3V3NVeSsrR2VuV04z?=
 =?utf-8?B?Z1YyK3RPanZ3ODV4OXlsUXcwbG5vSjM5WElpMk93ZTdJdEZmQTFVdUljWXE0?=
 =?utf-8?B?ckFDbklsZnN5S0s2d2JWVnVsak8vc2J2V1pETkk2WWtRb1RRMlF2K0syTmVJ?=
 =?utf-8?B?WmhhaWNCZCs1akVoaFVFcGxTdDFjSDJIK0NDV0l0MHZtNUxFNW40SUU4aVR0?=
 =?utf-8?B?S2RsQ1hvdDczT0REMmxBcmJmUGNRcjd0OHZwbnE4VG1zaTJYeU1leWZ2eEVK?=
 =?utf-8?B?U2Ftc0M3cStmeEdrdkFOSFhOQnJzRW1iL25MSEJXek5WRE9FdExpK0tSVk5v?=
 =?utf-8?B?N25OdjVva1hTRCtRUEJIbXRBQlF2VE92ckQ3YTZrR1R3QjFDVHJ6bWVXbUgx?=
 =?utf-8?B?U3JvME04MnltWnZXMjhtSDZLZGREV2RWUzBLbGJsUlkvUTJWRXZIYTRKM2Vv?=
 =?utf-8?B?bTJubHNrN3RqTGlvSHd1d0hyN0hTWXJZd1NnQkF1QkM5S0VPTnlRWmlhWng5?=
 =?utf-8?B?Z240UFExenhveHNiZ1RLY1pabnpjbmxDazFYMVgyU29NN3VCdXJLdStIVTlW?=
 =?utf-8?B?SFNFZUw4QWl2dE5iSk9wUWF0cFN1OC82SmpnV3FNd3NtWVdCRWtRZWlCWG01?=
 =?utf-8?B?cGZKVzVFbFRqOXRmYUJ5MmFzWFNubkhXOTZDNXJ6Yk5IMCsyZU1aS0pjKy9P?=
 =?utf-8?B?MGpQelJETmZ4cVM4RXlVbVlXZU9YY085dnMwOWhqbXh0aHA1QlFWN1hZUmhN?=
 =?utf-8?B?TzJLeDUyQ3BManp5VEF6VmJ4dXFyT1lJZlYrUkFKQ3dIbm5uSVl5YnQ4TjUv?=
 =?utf-8?B?TmtUVExpSXYzcjEvazVhcnN6WlBRZkVYTGtkN0ZPNDYyTEhUUm5nR3pmOTJ4?=
 =?utf-8?B?citRVzNiczA4dy9RS3F4MWpPQUx5QmlzSVlZcm1XV2Q2akNuM0hQbzVnYUl3?=
 =?utf-8?B?Qmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b6d6ee6-194f-4298-f01b-08dc89994002
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2024 22:04:07.8076 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FAT47FQ7xyG6eYbbXpRhZxNrtegCyXjgxthnjUxN89Qkf2coaguay4gQMzEDAKFSYqkzaDdB5PSsjhMpXDE2LS/kIfDxXmHhqxKG7PiusUI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7349
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718057073; x=1749593073;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8hMNB887RgZ7LZbh0YEpdpDVxYUl1YhCAgqiyZLqSgY=;
 b=Iri+86cZA3qh8yxI+FoD7oSgglan8gFu0pVMRqvhnxEyvFywscdS5Lyv
 NcPBwZSdgOgve5XNpTgMrp2jZ+owD46ksu5b+ZBOIOLPOtZgkuKh3JdvR
 M4ShSeLfb1u/uhjXXUKaMQpEr+H9Om5KCUoCO0YT93ef0C89GNOaN12wR
 ZTCUfXSbsCwNnsjfZiIUEwdB3g2UCkiVeeS30UShoyvCscGiuj3lDnVnN
 qeXVcci33oJpb6847civ2dW2mGrir0BioA+ymuqoc2VC+9PfbC4mHc5Fo
 6FuahT3Z88XXCxIZyBKth3a1nuogNncr3YXezoHap6GBB6zrjVWHDBxkU
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Iri+86cZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igb: Add support for firmware update
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
Cc: linux-kernel@vger.kernel.org, Richard chien <richard.chien@hpe.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/9/2024 1:15 AM, Richard chien wrote:
> This patch adds support for firmware update to the in-tree igb driver and it is actually a port from the out-of-tree igb driver.
> In-band firmware update is one of the essential system maintenance tasks. To simplify this task, the Intel online firmware update
> utility provides a common interface that works across different Intel NICs running the igb/ixgbe/i40e drivers. Unfortunately, the
> in-tree igb and ixgbe drivers are unable to support this firmware update utility, causing problems for enterprise users who do not
> or cannot use out-of-distro drivers due to security and various other reasons (e.g. commercial Linux distros do not provide technical
> support for out-of-distro drivers). As a result, getting this feature into the in-tree igb driver is highly desirable.
> 
> Signed-off-by: Richard chien <richard.chien@hpe.com>

The motivation to support updating flash with in-kernel drivers is good.

>  static int igb_set_eeprom(struct net_device *netdev,
> +                          struct ethtool_eeprom *eeprom, u8 *bytes)
> +{
> +        struct igb_adapter *adapter = netdev_priv(netdev);
> +        struct e1000_hw *hw = &adapter->hw;
> +        u16 *eeprom_buff;
> +        void *ptr;
> +        int max_len, first_word, last_word, ret_val = 0;
> +        struct e1000_nvm_access *nvm;
> +        u32 magic;
> +        u16 i;
> +
> +        if (eeprom->len == 0)
> +                return -EOPNOTSUPP;
> +
> +        magic = hw->vendor_id | (hw->device_id << 16);
> +        if (eeprom->magic && eeprom->magic != magic) {
> +                nvm = (struct e1000_nvm_access *)eeprom;
> +                ret_val = igb_nvmupd_command(hw, nvm, bytes);
> +                return ret_val;
> +        }
> +
However, this implementation is wrong. It is exposing the
ETHTOOL_GEEPROM and ETHTOOL_SEEPROM interface and abusing it to
implement a non-standard interface that is custom to the out-of-tree
Intel drivers to support the flash update utility.

This implementation was widely rejected when discovered in i40e and in
submissions for the  ice driver. It abuses the ETHTOOL_GEEPROM and
ETHTOOL_SEEPROM interface in order to allow tools to access the
hardware. The use violates the documented behavior of the ethtool
interface and breaks the intended functionality of ETHTOOL_GEEPROM and
ETHTOOL_SEEPROM.

The correct way to implement flash update is via the devlink dev flash
interface, using request_firmware, and implementing the entire update
process in the driver. The common portions of this could be done in a
shared module.

Attempting to support the broken legacy update that is supported by the
out-of-tree drivers is a non-starter for upstream. We (Intel) have known
this for some time, and this is why the patches and support have never
been published.
