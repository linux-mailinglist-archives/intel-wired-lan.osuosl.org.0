Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E3393C61D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2024 17:02:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2D6D381E97;
	Thu, 25 Jul 2024 15:02:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ugLHxJuGKi26; Thu, 25 Jul 2024 15:02:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 11A1481E39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721919774;
	bh=TaFIzvZlVL/K9vd9yjL18pA4FwoCEvVritJCq0wOces=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AL7r9ajSyMSnu3k6JFLugZDrsBcUtcxHw0PrPFLTk09gWdMKm++B369mc12+18mA/
	 pT/tOjRKeBqHJL2KQRmBhhkiXQjw/AFs03yOA5Oj0okR5gAsx5/VnBRmynL3tFed/P
	 GsdUXiK53I3PL3+P36Z8xY3LHiTvkmhfq8gPwZcqN7E4MXwXX02Fdh5wtgi/WYvM1p
	 OGdyZ2ETST94qWarOlDjZfrh0KAmXHEP37bsTI71Cbun2pKqbTOjg33y/PpOMgnWp8
	 wu2y7ssHKLNPUTmUWeCIDdxHeu441H1XieaAadWVF1aP8noXajObjrZ+pCDkP/DqCM
	 HsnHkAx/JPN8g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 11A1481E39;
	Thu, 25 Jul 2024 15:02:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A2D861BF20D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 15:02:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9DC2C81E1E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 15:02:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G1kpcJ7l0-j9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2024 15:02:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1FA3281DF4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1FA3281DF4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1FA3281DF4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 15:02:49 +0000 (UTC)
X-CSE-ConnectionGUID: I1gbi8iQRc2WjD5paAz+VA==
X-CSE-MsgGUID: FokWJhXHQ6ieADf9h1yMwQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11144"; a="19803991"
X-IronPort-AV: E=Sophos;i="6.09,236,1716274800"; d="scan'208";a="19803991"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2024 08:02:49 -0700
X-CSE-ConnectionGUID: CbYSwdUiS4iOQFWv1sqxYg==
X-CSE-MsgGUID: sjFIA+InRbe75I/XMnLLLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,236,1716274800"; d="scan'208";a="83549052"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Jul 2024 08:02:49 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 25 Jul 2024 08:02:48 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 25 Jul 2024 08:02:48 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 25 Jul 2024 08:02:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P/ZOAVkRVoOG/BbTms2G356DMlao2oveuaIRg9avO/NEoDm+lyJmCHE0XA6+VNWwLQmg+w1RS6qo8+XN8KDuF4ysOQDBPfgIHkUshExeLjebTwP45cr9+O22daRLHqTIS8SX0xQrNKq5LbiLCK8zypdqAPaJC/00ONsufsLxtxL9cW3uK9MHSNNAyqoCy3kakSubGdd+YuNsl5T+acWyMomN0XqkI6Pa5VRP77dpQnXXGSC93fh+GvEy90FR1JW5ovncL3GTAylJ0yEYQqgwMtR0mcFYax5qr7uXp2bJtnWBWRZgXWN+zYQvmehPT69FbGso2zJFNhHU8r0qXsoLJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TaFIzvZlVL/K9vd9yjL18pA4FwoCEvVritJCq0wOces=;
 b=X3x2ejwa4kLdgFk8ec45u/cR0yVi6Ue6yNMjhR7S3g7xDNx9+yv7k0arChkw7Vfz1+htSmwuesL1S8IQP1zZT4CXK0ed7p6GfQzkUrRdbHbbjO5oUrWJLVtOXS1hYfjrMaDMbuWfH8rc/AsYCuunWculRibhMeRVevmJRbyAUKybNfKvDVGzlnYmM+FykadvzdQZv4GntcW7blJ2PjY7E/eghFckUIlLHFu2DbqUKNjKMdNGH2VpBMDNHcLnqk8J3rgBp+54Q32ncbI+eNm6KKyX7DvVlqhSskgYT8tcCE5t1K0bAfJHsgeBQLvBTCSQtjRAFYCaYp/J3b0rZrMfbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB7429.namprd11.prod.outlook.com (2603:10b6:510:270::7)
 by SA2PR11MB5001.namprd11.prod.outlook.com (2603:10b6:806:118::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.28; Thu, 25 Jul
 2024 15:02:42 +0000
Received: from PH7PR11MB7429.namprd11.prod.outlook.com
 ([fe80::e3c4:5e77:2591:f12c]) by PH7PR11MB7429.namprd11.prod.outlook.com
 ([fe80::e3c4:5e77:2591:f12c%7]) with mapi id 15.20.7784.020; Thu, 25 Jul 2024
 15:02:42 +0000
Message-ID: <282dacf3-7b0f-4668-b8a4-e7ca1003808b@intel.com>
Date: Thu, 25 Jul 2024 09:02:36 -0600
User-Agent: Mozilla Thunderbird
To: Hariprasad Kelam <hkelam@marvell.com>
References: <20240724213623.324532-1-ahmed.zaki@intel.com>
 <20240724213623.324532-14-ahmed.zaki@intel.com>
 <ZqII9R21qpL0Hezy@test-OptiPlex-Tower-Plus-7010>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <ZqII9R21qpL0Hezy@test-OptiPlex-Tower-Plus-7010>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BE0P281CA0007.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:a::17) To PH7PR11MB7429.namprd11.prod.outlook.com
 (2603:10b6:510:270::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7429:EE_|SA2PR11MB5001:EE_
X-MS-Office365-Filtering-Correlation-Id: 353de827-b430-4e89-2a58-08dcacbad58b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aDdIbWpUN1lLMXR2OU83V01aWXAydnNKcmpxWW1ITll2WENlOSthU2xnaHZr?=
 =?utf-8?B?UnJlN1ZnSDh3NnpaUjBCWTNtcnFJc0VidWdDV21uWGNaRlZWbEtRRmh4U0ZK?=
 =?utf-8?B?cVduaWZrem9KWkR0OXZZSHJXbjdQVDBBUG1qSWIveUJuaTZOdlF4UkFzOWZE?=
 =?utf-8?B?Nk1taXliUWpjU3N4WHJYNldMbkJCRlZlVTZkK2ZLL1FsRXZ6d0c2aW9MVWRB?=
 =?utf-8?B?QU81NGxtMVlHaU9HejdKaGVqRzFjSG1SakdTU01oaTRnN3ZxZUd1MmduQUlV?=
 =?utf-8?B?eG5FL1dwOXVPOHpWb2xBZWtQOTViNkdOTFBvYmhkTTJFTTlLQjIxWENrNjh2?=
 =?utf-8?B?WTlSM2N3VTNheFkvUTQ0ZlM0T3pjVmdDZGdic0tvRm5uYko4VEN5MnNuQVBN?=
 =?utf-8?B?bEc0ODRQTkdURHRTOGZHV2lzYnRwREgwR1dhREU4aVNJWUlRTTVKZ0tkdksz?=
 =?utf-8?B?OGVUNG4wNm92RCtRZmZiREN4VWFkL1dLdE1BeTkwc0ZPby9ldUNWMGg5a2JB?=
 =?utf-8?B?Z3VlQ0lzRTZRS2JwTFV1Skc0Sjk1ZUxlNVdjMjJjUzNDVlRKWDBoNzhMRkJO?=
 =?utf-8?B?dkY5ZjVXcGRtMVJ2SWZhdWY0VlJKZkJ4L1dtbElyckxBcGVsMitRUWlDT3hE?=
 =?utf-8?B?SVQzancrbUY1NW5BY1l6dWpaRXpQaUN4N2g2cldRT3VpVGNBMDZ1SUhCemZr?=
 =?utf-8?B?ZU1pMUp0N1UzTlRaS250VTBPSktnd2dVSUZmQkpTcndPbFZYYzRjTFhKdk9Z?=
 =?utf-8?B?Qmx1Y2p3THl2S2RUcXgyUWVXbVVZekVsUDNmYTBEYk8zSXkwQmh6WXRsMFI5?=
 =?utf-8?B?b05xK3oxRFNUTjBJRDNFK0NyL2ZOc1REU0E0VGVuUmxka2lOTjVNV0xCd24x?=
 =?utf-8?B?S1NRL2k2UUlab1h0ZW5yR0llMU5hZjZFOFhsS1dwcVBLSzlKRUlYQldRUHFN?=
 =?utf-8?B?QXVDdTBLVllvcFRyb2N0aVJvajBtOGttZG1hcCtVb2JUZzZON3h3SUszcU9V?=
 =?utf-8?B?UEpPRGhmWWxxQklWLzRZTjcwVzhZVzI3V2tRWE5vV3FnVFdNYU5XWVpLaStL?=
 =?utf-8?B?aDVNcEtHYVRFY0loRy9MK0I2TEJVVDhGQW9tYjF5YWdjaDlNalNJS0Jtb1Na?=
 =?utf-8?B?UitTeFFHSEI5QVVZNGN6V1o4c2NTSUZGQ29vZWx1SHF1M1ZWK1NrekM3VDZj?=
 =?utf-8?B?clJudE8vRU1BdXRtbjdJR2dhUkJNWTdNQUYyVzM2ZWg5T0pkN2cvQUJzMFpo?=
 =?utf-8?B?TGdEd01jVFBVWWFUK25PWnpGc084czdwWDBicVRKMVhVTnZUbVpuYlBlUGRI?=
 =?utf-8?B?b05JekxvcDhQVFJqU01WRFVvd0JFd1NjUTBoOW05UXlaSmYzYm5pbksxSzRT?=
 =?utf-8?B?S3haYUx3clA5SGhXK3NDOGVUcGFvdDlJM29oZlJNZytzZ3doMWN2ZUhWQnZz?=
 =?utf-8?B?MG1ycnRmQmdGOXdRTHdrUkphNDdlUGRtRUJhY0kyL21jNFNWZmF6bklBSzNo?=
 =?utf-8?B?dHhidVZ3TUc1K1FQZVhISXVYNVFsckZKWExid0V4ZmQrOHY1NitITjl0QlRH?=
 =?utf-8?B?V0czWkk4elovYjFDV3VtNHdGK25OT1I0cFRZV2t5emdkaE9GeEE3SEhucFNR?=
 =?utf-8?B?OTFVMjdWNXMvWTRtTXl4dUpHZ09aL3pJeFFQNlB4TVdkTmZ0NFNFY1loWHR3?=
 =?utf-8?B?VVRvWVprSHZ1Nzgza2NOWEVKYkY2Z3JDVVRnS1YwNXZKc3VMcHZjT2dVVmtD?=
 =?utf-8?B?ME5NSXBqN3dvMmk2L3J3OFliRGsvcjJUZG1BZDIyU3kzbHpvOExpZnRlYnQr?=
 =?utf-8?B?ejdidDBCN1kyRWpwZEJOQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dEE4amRva3V5MmpiR0FrVDJaZDY3MHRkanJtdkVYRndvd3owNTlRUDNFMlVQ?=
 =?utf-8?B?TGpUMFNPMk1qY1F6cG83VS9oTjJZTk9TWjNTcEM3ZWZQQnZzNVFXTXJ5aWxY?=
 =?utf-8?B?YXdod2xnbDlSbkoyUUNQVHFJZlA4MVBmSjM3VWhsTE84a2ZKYnI3akVTS1F5?=
 =?utf-8?B?WGR1K1hQOFpGU2Z0OUJ6ZG05N2wvcDdNL0JEbURNV3pQd0hJc2IyZ2pneGdT?=
 =?utf-8?B?eVNoSXZxQ3N1Wi8yOTNHWG5KN0dOWC9rYlFLMFZ3WlhHSGtQd0NaTWhBc1d0?=
 =?utf-8?B?NDRDU0ZINjdZSm1NVGk1SnpQVUZVK3puSDArQlkwY3k1TldHQ1BXSE5MeWlO?=
 =?utf-8?B?akRpd0R4bTBTSzZNOFUwU2F5TTFRWUtTNGZCc29IcEYzQzlpY2dBRFN5UzFF?=
 =?utf-8?B?VTRINU5XTFVRYUxhOXZPcGhLVDNUaCtoRm9QeWJzSW1UbGJVbVh1Y3ZZNC9a?=
 =?utf-8?B?SXJaaHRFUzI0VlhSSHd1UWNhcHZtQTlyWlFIbFBQWkpzUzhxenc0VXhNcE81?=
 =?utf-8?B?aDgzU0ZEYXRadGhqSVhGQlZpTHlzVmVtb2ZndHJlU3ZkNktiSHJEcTd3VDFr?=
 =?utf-8?B?eFNHZ210eHVlM0VHMDZwRXhSeDFsVXNNTUdLMXd2cGJSNDlHdy83V0VkcjdZ?=
 =?utf-8?B?N09yaWZUdlZPTHg2YzRGR1hYSDJZOEl4blJqN1BhZkFwTE5zcExUcnF2cCtR?=
 =?utf-8?B?UzJUR1VkTm9YTysyTUdtYVgxY2N1ZlJDc3RmaktaWlJPQ3pTL2F2V2JpNnBk?=
 =?utf-8?B?eFUwb2hOYlMzU3paNEFneTkvdWdtZzRnNUNWRUZKc3ZXQ3NOOWhWbXptTlJW?=
 =?utf-8?B?TmRockFSYk5kcS9vcnRlQjdPbFJjZ0pmYXpzSFJacm1jTEhJY0hOWU1zdHlQ?=
 =?utf-8?B?My9UMkw0UUtPWjhFMUZ6d08zMC8rNWxjQUE3Y2ZGOWV2V1hRU2xjOWJYNEUr?=
 =?utf-8?B?ajNPT2h4V1o4S0tDSUtNNis0bEU4Tm1TNGxvMG5Uc3h0Z2U3SEdNc0xTdk1s?=
 =?utf-8?B?Q2I4VHNyY1ljcHNOK3lsenhLSUdQZUEyR2QwZVNMeTVHbm5sY3dsZjJwbUdU?=
 =?utf-8?B?RWFpWFJZT2hOV0h3QVZ5cnIrVGMzRjVQcVFuNGNpNmJ4NXhiSWxENnk0cGtP?=
 =?utf-8?B?eVA0ZFZ3WDdjRGhkTXZlV25EeTdEeWpMOFVlQUVsTW1wOXN3dnZmV1RmVjQ4?=
 =?utf-8?B?UTNGSGVZSnpPelhoaWt1NGtIMm1ROE9ZTDN2VVplSGtuUEtZemptSEZTVC9L?=
 =?utf-8?B?T0VKbGZGMXhBR3lOeERFNXVTRmlZMDI0Q0p4b2RnNkw3aWgrSzlSRzRzR0Mz?=
 =?utf-8?B?U01MZ0RTd2Y5UXJzdGZzZEp1VFBDOTZZcFdlTDRKYXNQdXlaOFhXT2VkSkFn?=
 =?utf-8?B?OEF3SFpWQUIxTGNtSE1YeHNRQTNmWThTRytPR0VNcWk4N3BnRS9ZcDBSRzRo?=
 =?utf-8?B?Z2hmbnFOZ3dYTlppdWpvR25uVUFVa0s4RHNvSXFuNnYrVDdjVTdiQlFzR0p4?=
 =?utf-8?B?RVE3cTA4T2xGWm9aWGw3VVVQelp0ZFVVQ3dBWlpMT1U0VlFjM280aUw1RWRh?=
 =?utf-8?B?VEo0WmFaeGZnL0JsRlFnUklJay9ObGwrcldOMVRscVMxYzdiWGx3U2VoUUNG?=
 =?utf-8?B?eEFMTzR4Zk9MeUlOKytDWStsVVkwVXlEQ0JCdExBdnpOc1J1R2tNOXBCY1Yw?=
 =?utf-8?B?TnJ0VVhqWUV2akVpWjl0T3AzVllhSjBtZ01DUzIrMEtCUUo4RVp1djMwdjF0?=
 =?utf-8?B?NmJrRTVkKzdFMVpTNjhOUUJTN0Q3Ly8wUzBYS2ZZSjJJK1BtM0dKNVBoSlVM?=
 =?utf-8?B?bUFBRmJ6SzM1SytGUi9PaFNzMTBiSjZyWnlQdzEwanFHbmJTWnBEQ3hrYVRH?=
 =?utf-8?B?L1pMZ0JFeVVVU1Y4UkdwaVRNOUo1akp3c0txTVduSVJvOXNUdXlNZVNrTTMy?=
 =?utf-8?B?Z3dPRHkyd1hUSXhTR0ZTNEVpOU5tK1h1cFM4K0l1Wk1WLzEzbEc4SnEvbEpv?=
 =?utf-8?B?ZnVRVW5BZU1uOUh2dUg0T3lTc1FxUUhPYVZ4cHdHWGVaRjRnV29IUXVqWlJW?=
 =?utf-8?B?T2hPUnkvZ3NuVlNvUXBxMFViQ2diOHZnSi81eDJ3aWdtQTFKT3lnTU5hd1Fl?=
 =?utf-8?Q?QuDHGP5F2r/mWBZDJhImW3cF+?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 353de827-b430-4e89-2a58-08dcacbad58b
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2024 15:02:42.8692 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6K3Lzn+9izDffIrudBGyPEBo3g+wLf1vIoJBBtxUkXIrnCP9MdeU8wEmCENJB8esX4TVKOzBhaGAvtViNrAI5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5001
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721919771; x=1753455771;
 h=message-id:date:subject:to:references:cc:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q9laGL6nP+D0PB2RVXOfvQhGJOYC4kTFDc8RXWxCV+A=;
 b=gIjYt0PiIzi3ExzbeMGVUKq4q+NQ3r89tNVoLoBNKiTYO4fV/gOKg5u8
 WEUuAhXymnZHNsAfgrP1Y35QDju5fX+SMFH6FlCOLtuG00EuyKuthq2X3
 KaABxKHnwYvnUTdYd4x9MRBqDxgGm0Z7q5nL3d+Oz8RYOunTeDU7y5qc7
 brVXFwPtYKIuesM+hKJRHK0GBZYUU6twrL2vk2V0R6ui1hRTyW0r+HThy
 5amu4hQu0bcI7V70aErjSiPf2AylVmq/+uL+VEkNw3r9hA6Cxj2pTf31q
 cdUQ6WALZ5r2gsvfUfe1vuEYBU1++ejhUUjMATAIau8weeo+0iiFJDm9Q
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gIjYt0Pi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 13/13] iavf: add support
 for offloading tc U32 cls filters
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2024-07-25 2:12 a.m., Hariprasad Kelam wrote:
> On 2024-07-25 at 03:06:22, Ahmed Zaki (ahmed.zaki@intel.com) wrote:
>> Add support for offloading cls U32 filters. Only "skbedit queue_mapping"
>> and "drop" actions are supported. Also, only "ip" and "802_3" tc
>> protocols are allowed. The PF must advertise the VIRTCHNL_VF_OFFLOAD_TC_U32
>> capability flag.
>>
>> Since the filters will be enabled via the FD stage at the PF, a new type
>> of FDIR filters is added and the existing list and state machine are used.
>>
>> The new filters can be used to configure flow directors based on raw
>> (binary) pattern in the rx packet.
>>
>> Examples:
>>
>> 0. # tc qdisc add dev enp175s0v0  ingress
>>
>> 1. Redirect UDP from src IP 192.168.2.1 to queue 12:
>>
>>      # tc filter add dev <dev> protocol ip ingress u32 \
>> 	match u32 0x45000000 0xff000000 at 0  \
>> 	match u32 0x00110000 0x00ff0000 at 8  \
>> 	match u32 0xC0A80201 0xffffffff at 12 \
>> 	match u32 0x00000000 0x00000000 at 24 \
>> 	action skbedit queue_mapping 12 skip_sw
>>
>> 2. Drop all ICMP:
>>
>>      # tc filter add dev <dev> protocol ip ingress u32 \
>> 	match u32 0x45000000 0xff000000 at 0  \
>> 	match u32 0x00010000 0x00ff0000 at 8  \
>> 	match u32 0x00000000 0x00000000 at 24 \
>> 	action drop skip_sw
>>
>> 3. Redirect ICMP traffic from MAC 3c:fd:fe:a5:47:e0 to queue 7
>>     (note proto: 802_3):
>>
>>     # tc filter add dev <dev> protocol 802_3 ingress u32 \
>> 	match u32 0x00003CFD 0x0000ffff at 4   \
>> 	match u32 0xFEA547E0 0xffffffff at 8   \
>> 	match u32 0x08004500 0xffffff00 at 12  \
>> 	match u32 0x00000001 0x000000ff at 20  \
>> 	match u32 0x0000 0x0000 at 40          \
>> 	action skbedit queue_mapping 7 skip_sw
>>
>> Notes on matches:
>> 1 - All intermediate fields that are needed to parse the correct PTYPE
>>      must be provided (in e.g. 3: Ethernet Type 0x0800 in MAC, IP version
>>      and IP length: 0x45 and protocol: 0x01 (ICMP)).
>> 2 - The last match must provide an offset that guarantees all required
>>      headers are accounted for, even if the last header is not matched.
>>      For example, in #2, the last match is 4 bytes at offset 24 starting
>>      from IP header, so the total is 14 (MAC) + 24 + 4 = 42, which is the
>>      sum of MAC+IP+ICMP headers.
>>
>> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
>> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
>> Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>
>> ---
>>   drivers/net/ethernet/intel/iavf/iavf.h        |  27 ++-
>>   .../net/ethernet/intel/iavf/iavf_ethtool.c    |   9 +-
>>   drivers/net/ethernet/intel/iavf/iavf_fdir.c   |  29 +++-
>>   drivers/net/ethernet/intel/iavf/iavf_fdir.h   |  10 +-
>>   drivers/net/ethernet/intel/iavf/iavf_main.c   | 154 +++++++++++++++++-
>>   .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  25 ++-
>>   drivers/net/ethernet/intel/ice/ice_virtchnl.c |   4 +
>>   include/linux/avf/virtchnl.h                  |   1 +
>>   8 files changed, 232 insertions(+), 27 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
>> index dfed22baebf8..48cd1d06761c 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf.h
>> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
>> @@ -33,6 +33,7 @@
>>   #include <net/udp.h>
>>   #include <net/tc_act/tc_gact.h>
>>   #include <net/tc_act/tc_mirred.h>
>> +#include <net/tc_act/tc_skbedit.h>
>>   
>>   #include "iavf_type.h"
>>   #include <linux/avf/virtchnl.h>
>> @@ -393,6 +394,8 @@ struct iavf_adapter {
>>   			     VIRTCHNL_VF_OFFLOAD_VLAN_V2)
>>   #define CRC_OFFLOAD_ALLOWED(_a) ((_a)->vf_res->vf_cap_flags & \
>>   				 VIRTCHNL_VF_OFFLOAD_CRC)
>> +#define TC_U32_SUPPORT(_a) ((_a)->vf_res->vf_cap_flags & \
>> +			    VIRTCHNL_VF_OFFLOAD_TC_U32)
>>   #define VLAN_V2_FILTERING_ALLOWED(_a) \
>>   	(VLAN_V2_ALLOWED((_a)) && \
>>   	 ((_a)->vlan_v2_caps.filtering.filtering_support.outer || \
>> @@ -437,6 +440,7 @@ struct iavf_adapter {
>>   
>>   #define IAVF_MAX_FDIR_FILTERS 128	/* max allowed Flow Director filters */
>>   	u16 fdir_active_fltr;
>> +	u16 raw_fdir_active_fltr;
>>   	struct list_head fdir_list_head;
>>   	spinlock_t fdir_fltr_lock;	/* protect the Flow Director filter list */
>>   
>> @@ -447,7 +451,28 @@ struct iavf_adapter {
>>   /* Must be called with fdir_fltr_lock lock held */
>>   static inline bool iavf_fdir_max_reached(struct iavf_adapter *adapter)
>>   {
>> -	return adapter->fdir_active_fltr >= IAVF_MAX_FDIR_FILTERS;
>> +	return adapter->fdir_active_fltr + adapter->raw_fdir_active_fltr >=
>> +			IAVF_MAX_FDIR_FILTERS;
>> +}
>> +
>> +static inline void
>> +iavf_inc_fdir_active_fltr(struct iavf_adapter *adapter,
>> +			  struct iavf_fdir_fltr *fltr)
>> +{
>> +	if (iavf_is_raw_fdir(fltr))
>> +		adapter->raw_fdir_active_fltr++;
>> +	else
>> +		adapter->fdir_active_fltr++;
>> +}
>> +
>> +static inline void
>> +iavf_dec_fdir_active_fltr(struct iavf_adapter *adapter,
>> +			  struct iavf_fdir_fltr *fltr)
>> +{
>> +	if (iavf_is_raw_fdir(fltr))
>> +		adapter->raw_fdir_active_fltr--;
>> +	else
>> +		adapter->fdir_active_fltr--;
>>   }
>>   
>>   /* Ethtool Private Flags */
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
>> index 7ab445eeee18..74a1e9fe1821 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
>> @@ -927,7 +927,7 @@ iavf_get_ethtool_fdir_entry(struct iavf_adapter *adapter,
>>   
>>   	spin_lock_bh(&adapter->fdir_fltr_lock);
>>   
>> -	rule = iavf_find_fdir_fltr(adapter, fsp->location);
>> +	rule = iavf_find_fdir_fltr(adapter, false, fsp->location);
>>   	if (!rule) {
>>   		ret = -EINVAL;
>>   		goto release_lock;
>> @@ -1072,6 +1072,9 @@ iavf_get_fdir_fltr_ids(struct iavf_adapter *adapter, struct ethtool_rxnfc *cmd,
>>   	spin_lock_bh(&adapter->fdir_fltr_lock);
>>   
>>   	list_for_each_entry(fltr, &adapter->fdir_list_head, list) {
>> +		if (iavf_is_raw_fdir(fltr))
>> +			continue;
>> +
>>   		if (cnt == cmd->rule_cnt) {
>>   			val = -EMSGSIZE;
>>   			goto release_lock;
>> @@ -1263,7 +1266,7 @@ static int iavf_add_fdir_ethtool(struct iavf_adapter *adapter, struct ethtool_rx
>>   		return -EINVAL;
>>   
>>   	spin_lock_bh(&adapter->fdir_fltr_lock);
>> -	if (iavf_find_fdir_fltr(adapter, fsp->location)) {
>> +	if (iavf_find_fdir_fltr(adapter, false, fsp->location)) {
>>   		dev_err(&adapter->pdev->dev, "Failed to add Flow Director filter, it already exists\n");
>>   		spin_unlock_bh(&adapter->fdir_fltr_lock);
>>   		return -EEXIST;
>> @@ -1307,7 +1310,7 @@ static int iavf_del_fdir_ethtool(struct iavf_adapter *adapter, struct ethtool_rx
>>   	if (!(adapter->flags & IAVF_FLAG_FDIR_ENABLED))
>>   		return -EOPNOTSUPP;
>>   
>> -	return iavf_fdir_del_fltr(adapter, fsp->location);
>> +	return iavf_fdir_del_fltr(adapter, false, fsp->location);
>>   }
>>   
>>   /**
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_fdir.c b/drivers/net/ethernet/intel/iavf/iavf_fdir.c
>> index 1e1daf71dfa0..a1b3b44cc14a 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf_fdir.c
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_fdir.c
>> @@ -796,6 +796,9 @@ bool iavf_fdir_is_dup_fltr(struct iavf_adapter *adapter, struct iavf_fdir_fltr *
>>   
>>   	spin_lock_bh(&adapter->fdir_fltr_lock);
>>   	list_for_each_entry(tmp, &adapter->fdir_list_head, list) {
>> +		if (iavf_is_raw_fdir(fltr))
>> +			continue;
>> +
>>   		if (tmp->flow_type != fltr->flow_type)
>>   			continue;
>>   
>> @@ -817,18 +820,21 @@ bool iavf_fdir_is_dup_fltr(struct iavf_adapter *adapter, struct iavf_fdir_fltr *
>>   /**
>>    * iavf_find_fdir_fltr - find FDIR filter
>>    * @adapter: pointer to the VF adapter structure
>> - * @loc: location to find.
>> + * @is_raw: filter type, is raw (tc u32) or not (ethtool)
>> + * @data: data to ID the filter, type dependent
>>    *
>>    * Returns: pointer to Flow Director filter if found or NULL. Lock must be held.
>>    */
>>   struct iavf_fdir_fltr *iavf_find_fdir_fltr(struct iavf_adapter *adapter,
>> -					   u32 loc)
>> +					   bool is_raw, u32 data)
>>   {
>>   	struct iavf_fdir_fltr *rule;
>>   
>> -	list_for_each_entry(rule, &adapter->fdir_list_head, list)
>> -		if (rule->loc == loc)
>> +	list_for_each_entry(rule, &adapter->fdir_list_head, list) {
>> +		if ((is_raw && rule->cls_u32_handle == data) ||
>> +		    (!is_raw && rule->loc == data))
>>   			return rule;
>> +	}
>>   
>>   	return NULL;
>>   }
>> @@ -855,6 +861,9 @@ int iavf_fdir_add_fltr(struct iavf_adapter *adapter,
>>   	}
>>   
>>   	list_for_each_entry(rule, &adapter->fdir_list_head, list) {
>> +		if (iavf_is_raw_fdir(fltr))
>> +			break;
>> +
>>   		if (rule->loc >= fltr->loc)
>>   			break;
>>   		parent = rule;
>> @@ -864,7 +873,8 @@ int iavf_fdir_add_fltr(struct iavf_adapter *adapter,
>>   		list_add(&fltr->list, &parent->list);
>>   	else
>>   		list_add(&fltr->list, &adapter->fdir_list_head);
>> -	adapter->fdir_active_fltr++;
>> +
>> +	iavf_inc_fdir_active_fltr(adapter, fltr);
>>   
>>   	if (adapter->link_up)
>>   		fltr->state = IAVF_FDIR_FLTR_ADD_REQUEST;
>> @@ -881,25 +891,26 @@ int iavf_fdir_add_fltr(struct iavf_adapter *adapter,
>>   /**
>>    * iavf_fdir_del_fltr - delete a flow director filter from the list
>>    * @adapter: pointer to the VF adapter structure
>> - * @loc: location to delete.
>> + * @is_raw: filter type, is raw (tc u32) or not (ethtool)
>> + * @data: data to ID the filter, type dependent
>>    *
>>    * Return: 0 on success or negative errno on failure.
>>    */
>> -int iavf_fdir_del_fltr(struct iavf_adapter *adapter, u32 loc)
>> +int iavf_fdir_del_fltr(struct iavf_adapter *adapter, bool is_raw, u32 data)
>>   {
>>   	struct iavf_fdir_fltr *fltr = NULL;
>>   	int err = 0;
>>   
>>   	spin_lock_bh(&adapter->fdir_fltr_lock);
>> -	fltr = iavf_find_fdir_fltr(adapter, loc);
>> +	fltr = iavf_find_fdir_fltr(adapter, is_raw, data);
>>   
>>   	if (fltr) {
>>   		if (fltr->state == IAVF_FDIR_FLTR_ACTIVE) {
>>   			fltr->state = IAVF_FDIR_FLTR_DEL_REQUEST;
>>   		} else if (fltr->state == IAVF_FDIR_FLTR_INACTIVE) {
>>   			list_del(&fltr->list);
>> +			iavf_dec_fdir_active_fltr(adapter, fltr);
>>   			kfree(fltr);
>> -			adapter->fdir_active_fltr--;
>>   			fltr = NULL;
>>   		} else {
>>   			err = -EBUSY;
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_fdir.h b/drivers/net/ethernet/intel/iavf/iavf_fdir.h
>> index 5c85eb25fa2a..e84a5351162f 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf_fdir.h
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_fdir.h
>> @@ -117,12 +117,18 @@ struct iavf_fdir_fltr {
>>   
>>   	u32 flow_id;
>>   
>> +	u32 cls_u32_handle; /* for FDIR added via tc u32 */
>>   	u32 loc;	/* Rule location inside the flow table */
>>   	u32 q_index;
>>   
>>   	struct virtchnl_fdir_add vc_add_msg;
>>   };
>>   
>> +static inline bool iavf_is_raw_fdir(struct iavf_fdir_fltr *fltr)
>> +{
>> +	return !fltr->vc_add_msg.rule_cfg.proto_hdrs.count;
>> +}
>> +
>>   int iavf_validate_fdir_fltr_masks(struct iavf_adapter *adapter,
>>   				  struct iavf_fdir_fltr *fltr);
>>   int iavf_fill_fdir_add_msg(struct iavf_adapter *adapter, struct iavf_fdir_fltr *fltr);
>> @@ -130,7 +136,7 @@ void iavf_print_fdir_fltr(struct iavf_adapter *adapter, struct iavf_fdir_fltr *f
>>   bool iavf_fdir_is_dup_fltr(struct iavf_adapter *adapter, struct iavf_fdir_fltr *fltr);
>>   int iavf_fdir_add_fltr(struct iavf_adapter *adapter,
>>   		       struct iavf_fdir_fltr *fltr);
>> -int iavf_fdir_del_fltr(struct iavf_adapter *adapter, u32 loc);
>> +int iavf_fdir_del_fltr(struct iavf_adapter *adapter, bool is_raw, u32 data);
>>   struct iavf_fdir_fltr *iavf_find_fdir_fltr(struct iavf_adapter *adapter,
>> -					   u32 loc);
>> +					   bool is_raw, u32 data);
>>   #endif /* _IAVF_FDIR_H_ */
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
>> index ff11bafb3b4f..7000d72ac65e 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
>> @@ -4013,7 +4013,7 @@ static int iavf_delete_clsflower(struct iavf_adapter *adapter,
>>   
>>   /**
>>    * iavf_setup_tc_cls_flower - flower classifier offloads
>> - * @adapter: board private structure
>> + * @adapter: pointer to iavf adapter structure
>>    * @cls_flower: pointer to flow_cls_offload struct with flow info
>>    */
>>   static int iavf_setup_tc_cls_flower(struct iavf_adapter *adapter,
>> @@ -4031,6 +4031,148 @@ static int iavf_setup_tc_cls_flower(struct iavf_adapter *adapter,
>>   	}
>>   }
>>   
>> +/**
>> + * iavf_add_cls_u32 - Add U32 classifier offloads
>> + * @adapter: pointer to iavf adapter structure
>> + * @cls_u32: pointer to tc_cls_u32_offload struct with flow info
>> + *
>> + * Return: 0 on success or negative errno on failure.
>> + */
>> +static int iavf_add_cls_u32(struct iavf_adapter *adapter,
>> +			    struct tc_cls_u32_offload *cls_u32)
>> +{
>> +	struct netlink_ext_ack *extack = cls_u32->common.extack;
>> +	struct virtchnl_fdir_rule *rule_cfg;
>> +	struct virtchnl_filter_action *vact;
>> +	struct virtchnl_proto_hdrs *hdrs;
>> +	struct ethhdr *spec_h, *mask_h;
>> +	const struct tc_action *act;
>> +	struct iavf_fdir_fltr *fltr;
>> +	struct tcf_exts *exts;
>> +	int i, status = 0;
>> +	int off_base = 0;
>> +
>> +	if (cls_u32->knode.link_handle) {
>> +		NL_SET_ERR_MSG_MOD(extack, "Linking not supported");
>> +		return -EOPNOTSUPP;
>> +	}
>> +
>> +	fltr = kzalloc(sizeof(*fltr), GFP_KERNEL);
>> +	if (!fltr)
>> +		return -ENOMEM;
>> +
>> +	rule_cfg = &fltr->vc_add_msg.rule_cfg;
>> +	hdrs = &rule_cfg->proto_hdrs;
>> +	hdrs->count = 0;
>> +
>> +	/* The parser lib at the PF expects the packet starting with MAC hdr */
>> +	switch (ntohs(cls_u32->common.protocol)) {
>> +	case ETH_P_802_3:
>> +		break;
>> +	case ETH_P_IP:
>> +		spec_h = (struct ethhdr *)hdrs->raw.spec;
>> +		mask_h = (struct ethhdr *)hdrs->raw.mask;
>> +		spec_h->h_proto = htons(ETH_P_IP);
>> +		mask_h->h_proto = 0xFFFF;
>> +		off_base += ETH_HLEN;
>> +		break;
>> +	default:
>> +		NL_SET_ERR_MSG_MOD(extack, "Only 802_3 and ip filter protocols are supported");
>> +		status = -EOPNOTSUPP;
>> +		goto free_alloc;
>> +	}
>> +
>> +	for (i = 0; i < cls_u32->knode.sel->nkeys; i++) {
>> +		__be32 val, mask;
>> +		int off;
>> +
>> +		off = off_base + cls_u32->knode.sel->keys[i].off;
>> +		val = cls_u32->knode.sel->keys[i].val;
>> +		mask = cls_u32->knode.sel->keys[i].mask;
>> +
>> +		if (off >= sizeof(hdrs->raw.spec)) {
>> +			NL_SET_ERR_MSG_MOD(extack, "Input exceeds maximum allowed.");
>> +			status = -EINVAL;
>> +			goto free_alloc;
>> +		}
>> +
>> +		memcpy(&hdrs->raw.spec[off], &val, sizeof(val));
>> +		memcpy(&hdrs->raw.mask[off], &mask, sizeof(mask));
>> +		hdrs->raw.pkt_len = off + sizeof(val);
>> +	}
>> +
>> +	/* Only one action is allowed */
>> +	rule_cfg->action_set.count = 1;
>> +	vact = &rule_cfg->action_set.actions[0];
>> +	exts = cls_u32->knode.exts;
>> +
>> +	tcf_exts_for_each_action(i, act, exts) {
>> +		/* FDIR queue */
>> +		if (is_tcf_skbedit_rx_queue_mapping(act)) {
>> +			vact->type = VIRTCHNL_ACTION_QUEUE;
>> +			vact->act_conf.queue.index =
>> +				tcf_skbedit_rx_queue_mapping(act);
>        User can give any queue number right, dont we need to check min
>        and max values of queue id?
> 
> Thanks,
> Hariprasad k

Yes, you are correct. I will send a new version with queue index 
verififcation.

Thanks for catching this.
Ahmed


