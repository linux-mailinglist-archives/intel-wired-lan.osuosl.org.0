Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 39165B2920F
	for <lists+intel-wired-lan@lfdr.de>; Sun, 17 Aug 2025 09:42:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B6E3A418F0;
	Sun, 17 Aug 2025 07:42:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IubxgJiJlXRR; Sun, 17 Aug 2025 07:42:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8230B418EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755416562;
	bh=+jgK4IKBLHDah3KwaFQThTOqoxoQuXyLMKf8JVsrYH0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kRIj5k5hZD/NCMvVNKIdaok55mNIqtnUtCPqZ34OkiM+/M5knz2GfASR8eZaY4dZ1
	 1WrdTfwSvNNCHqDlpUkPR1MiSDSs9FJx4ZoND0FVDlY5kf4AQ5MhFTkN5MSkojrlPo
	 uzLA3TKVOovdqo02Hn6DlLyDmtS7xErrSes5zSTEzUhnUm3Vf6mbw3YtNrbUSSnFyB
	 3c9XOYJv/ySHYZkQTE9Sh8sw/AE5HatpALJ4a/St+TOaTvfpXnBHf7MqsbWfB/ozpJ
	 DkyJycz15+EJsjg9DHeNsrji4sENR5cPNz6YSilzhdH7UqAOcF0cTXCBRAX4V+zk35
	 msPxQRKO4aHEw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8230B418EE;
	Sun, 17 Aug 2025 07:42:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id DA0A9196
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Aug 2025 07:42:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C158D40D7B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Aug 2025 07:42:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fotOxGUyFkc5 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 17 Aug 2025 07:42:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B44A8415AA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B44A8415AA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B44A8415AA
 for <Intel-wired-lan@osuosl.org>; Sun, 17 Aug 2025 07:42:39 +0000 (UTC)
X-CSE-ConnectionGUID: vNGdmZxwTs64CkZlk/MFfw==
X-CSE-MsgGUID: ZkObDx31Tw+ZIRexlHgZbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11524"; a="75123004"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="75123004"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2025 00:42:38 -0700
X-CSE-ConnectionGUID: HvsUCLRtSFaaa5Ht3XWqKw==
X-CSE-MsgGUID: UDfvCKjXRfmUCaWWVcr79A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="167677844"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2025 00:42:38 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 17 Aug 2025 00:42:37 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sun, 17 Aug 2025 00:42:37 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.63)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 17 Aug 2025 00:42:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T8jL8ZUtlZZ4knp3QM1nfi0zNIJyhWEfnrIvI+PpVhjfUrN/1ttmSBT/vL9i1q95e2clbA/97xq3c9CnuwEFbdJrw294JKhrGYH0FXzU35Sm90etY9v/zNI+n26T8RSpqA9OnCdCCw2tFki1a054xuQtbav0EbNAFEBV0kk22lSv2CwiqsGCYq8rkBsahLnABgNqmDI4Wi8Vll8GCgN/GHVhllsM3EPgydb27B72LQISFvgM0CAhvL7hLL3gtthNYx7gocC+b19CU2txsAvEjE/DhVRsikD4bTACsL61+Eedj0sbU9EgvD8hffRBIgkNdNqFlAjMQ2WARtuvdndR4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+jgK4IKBLHDah3KwaFQThTOqoxoQuXyLMKf8JVsrYH0=;
 b=mfcKt+dYhYoFbxzmfXHpqf+zMpXd6f2yGSExoAH93bVqNaI6/v66E+NNEofU+ihyY7lYUpweLqp5MhooJlTE2ZnkKD52a24WZ7fWNOvj4lYEziYp55Pb4TSmWvieCx7u9ZjOVnHvH0DvHwzU9M9nOQyeDNkrlWRgRiySz7NHDjA4b/aT91drOkbhmuYGf00bX9U2pYSoHBWGRCgp/g0SRDDuVWkf/sRtR59yQZ8xnGIzCyOty77tXBp2N2uLTns2KS5dd3Du0lkRxGzWuugaYzECaX6NzKI9GYxrSPYdBCzCgex6NBQHBgbr+ZBgCkW3iBcdA2lTXMXtHhNdbg6Fcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36) by DM4PR11MB6527.namprd11.prod.outlook.com
 (2603:10b6:8:8e::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.22; Sun, 17 Aug
 2025 07:42:36 +0000
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::eeb0:881:72ca:a73e]) by DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::eeb0:881:72ca:a73e%5]) with mapi id 15.20.8989.017; Sun, 17 Aug 2025
 07:42:36 +0000
Message-ID: <ef08e832-9fbd-44e4-a726-c7803dbd3e42@intel.com>
Date: Sun, 17 Aug 2025 10:42:30 +0300
User-Agent: Mozilla Thunderbird
To: Chia-Wei Yeh <leafy7382@gmail.com>, <Intel-wired-lan@osuosl.org>
References: <CAEFt+UyRJrp5JyXV2atvqf_r87C4b09_8sTgh1JzP0nKHXwznw@mail.gmail.com>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <CAEFt+UyRJrp5JyXV2atvqf_r87C4b09_8sTgh1JzP0nKHXwznw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0008.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::11) To DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS4PPF814058951:EE_|DM4PR11MB6527:EE_
X-MS-Office365-Filtering-Correlation-Id: c988cf74-af1c-45e9-fa9e-08dddd61a210
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q2VPWXkrbEZaWE1RRms2SVB5OWtKd2RJNVNSYjFrdnZQVEgyRGwwY1ZmajIv?=
 =?utf-8?B?NVNPWEZCVDllcThBcTY5STB1L0FMNklJZ3UzM2N3a0dDdFpueUEydXdnc0tR?=
 =?utf-8?B?Uk9FeW1CekJPRnRXK0xhc1NvMk14V093ckJzaEFXVGNyTmRHZ0g0aDJRS3Jm?=
 =?utf-8?B?ZzV2VFVsOEFPZHdmRXhvV05PMVFvTGdDUVNDazhQRTc1cjNUUDVySS9LTlBY?=
 =?utf-8?B?NHoyQWJFRlIwejh1K0o0dU1CV29lTXlKOEcrYjFteUVndnVoS1hXVHQ5ck1q?=
 =?utf-8?B?WFdYSXJsams5ZzhxK0k0WnVFRHIzSDhscUhWc3JIcTFCNjZ3dEoxUFdKM05C?=
 =?utf-8?B?OFdqQ2VhajVvanpPWmtaUVg3K2FKS0NWR3MxSHQrMUd4eE5UWXdBeGVyVVVJ?=
 =?utf-8?B?Vm5qT0Joc1N6ZlA4d1owQ0V0bGJHK0ZZdEpDUXY3RmZ1OEFBV0ZpbEZiQTRI?=
 =?utf-8?B?QkJZMWZYWG54VzE5bFBTYkhnQ2FQRTQzT05JSklpblA4SjZ3aWhEZkg0Z3pB?=
 =?utf-8?B?SU1tVHk4UVcyU2s0eWZwbytlUUtMbFhTckFVSWpwSUpSZEErS0NUcmoyUlQr?=
 =?utf-8?B?Yi9yRVcyeklpTXRLTjQ0NEZxTENVT3ZQSFNuSmRlZ055MXZFMmdydTJHcmtx?=
 =?utf-8?B?NXZaVFl6eHc4anZHSnYvay9hZmZMRnJYYWtScWdoTWxHNXFDcHNNUlpYZXZL?=
 =?utf-8?B?Sk9ZNkxxam5RakF1dkszVWhEMDl2aHFJd0tHenI5QlVnbnJaQ3BOZWh4V1Fk?=
 =?utf-8?B?VG9kZzNxNVVVVERUeFVSNFJpSFB4VnUreGxiQzhnMXE1cGdiSEpHTXRhOFBk?=
 =?utf-8?B?MkxUTHQwNXhFS1BVd3ZkQzlvbFljWGlLT2pJYUxkYTdId1ZMUzhQM00yY0ly?=
 =?utf-8?B?Q2E2TlM0L2tkcmpXNnJGY25ZdldHU2lRa0JlbXRNSmFXMFZValN2dkRwcHFG?=
 =?utf-8?B?QmMwdVlFa0xNa0tnUGlLT1BSR2kzMzlrc01BdHlmZ1RYNVY2Y3o5OFVoMEZZ?=
 =?utf-8?B?algxbkE0UStMK1dlbHFqOFdvcnpsQXN4UkVSazVyVWZDS1UwKzNsbkFjR2Vh?=
 =?utf-8?B?NTFFU2x3c0tTYWhLcE9IY0RvU0xXeXptS0FwT1dxL3NqN3JGLzhlbnNweEsv?=
 =?utf-8?B?SjUrMFE3clVyN2lzQTFjM2w0QndCUi9tc3BzZ3hVUnY2ZFllZnFteXBCSDFT?=
 =?utf-8?B?bWVNS3cxN3lRRmpmSE81aTBlZ3FJODVZbFV5a0FRTStBbzJRZlhSVlExSDUw?=
 =?utf-8?B?NG1JNWJLSTd3Y1ArTXJKNENtbCtrcWl5UlRZSGNJN2ptbXo3d25INkRJTTdH?=
 =?utf-8?B?SWhZT1lJTG9MNTRISGNWdGo5WmRvVTBzSDdvTXEyTjJTakd2Tm5aRFlEbG9R?=
 =?utf-8?B?YUpnVVlQQ0hLdis5UGJSWGF4U0FJbmRDcWE0M0NoTithWEgzS0E1elUrUlZk?=
 =?utf-8?B?RmYvbUhleTJRSGwzUFVlMkQ0KzlXNGoxMVZWTjk4cGMvUTJJWHFRK0hJSEVN?=
 =?utf-8?B?TGcxZUM0andHT3BUeVkvRjhWbjNYRUNQc2dNNGdoQ245VHJuVGhZOVhhaVY1?=
 =?utf-8?B?dzJnY1l5WGJnZ1YvM2xqK1dnNmw4VzlHZjJpTEEzSUFkaW5xNkNVaEpOYzBa?=
 =?utf-8?B?b2ZMZ1dUQ05maCtHZmRqVFJSVjFvTjlGQU5PYkx2RmVSV0plZW54SHlRQTY0?=
 =?utf-8?B?S3dnY0ZMWE9Ec3RLemlkUWZvbWVCVnBIYkw4bStaYXQ0THdGaVlLeEVXYWhr?=
 =?utf-8?B?OFJZZ2tIcDdwUHQwZ0dKak13MkVQdU9JS2kxcnpuM3NNSFZQYVg1RFY3QlJF?=
 =?utf-8?B?T21BelhpNkhHUEtxOXFpREtJTk5CcEtHRUxpSk9ka3JicXd4RWZNTHV2eUVo?=
 =?utf-8?Q?4UxKkLtdPTTp/?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF814058951.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bzJBTlR3Uk0rVW51a2pFcGJHdE9udlFxbFQ2OGpORUx5WW9jVUo4NEljcUpW?=
 =?utf-8?B?S0ZxRDRGNTRCbVplV0swMHlHMFZZVUVDYWhEMFNNOHV3UVJ4YWpGaGZPZlZW?=
 =?utf-8?B?YU9YUE9iWldiNDFiNTFzNlV5NHM0SEM5RFpOUWdjRFFSc0NCOVdXd0xyYTc3?=
 =?utf-8?B?bkhva1dtWDlDR1NBclBKdEd2RVZZckkydFFrTWVkK0s0VjQyWW9vdjR2K3FL?=
 =?utf-8?B?anRPTERaRFM0WGJsd0tCNU5Ob3A0WDRKSmk0Ty9NSlpBcEREWjhFa1RraEts?=
 =?utf-8?B?eVkzWmNscFNRK3NEWGZ5VDJlSEY3NGZDQ1Y0RUVuSTgzNVhBb2pSeVFjRDB2?=
 =?utf-8?B?ODNoTUs3bWxEcVhEcXlWSTdqcnJueGIyQm5mQzdKZnFta2FMY2VOeWkwdzJV?=
 =?utf-8?B?c2JUNTI3bzlBaW1ENHZKUWVqNXJVL1M5aVlxdy90a2duSXUvRXFKL003WS94?=
 =?utf-8?B?M3Y1UkNSZ3NUbm1UN0I1UitSSWNPVFkzS3I4ODYreUc1K2lTLzJtVWhLc1VV?=
 =?utf-8?B?b3U5WFlnenBtMW45SnkzdTFmUEhVNU1XalM5TzVBVWRnL0JMcFp3TlJoRFQ3?=
 =?utf-8?B?WGUzeUZERmdQMHFZaFN3QTh2OXBIWkwraWhVMWd4SUJjSzNFME1DSCtETUtC?=
 =?utf-8?B?cVBobWJBTituNWhueVU1aHlVYmRtbGRmT3FvUGF6RlpCOXFwZ3YwQWVMUUFX?=
 =?utf-8?B?MlBCcWNwVmM2QThNTytPR2tYZDJwUHVWN1RUTk1rNWxzUEtyNTV3bEM3QXJn?=
 =?utf-8?B?Y2ZZY3FMdFZnNm80azM5ZitPbngzZ3RTSCsxNng1elk5MldjSmJrWko2V3VZ?=
 =?utf-8?B?RklCUzM3dGFoSlVvRHdZVWw0aTZMazc4NWNoSG5aaDU3dEhhT085REoxOTZa?=
 =?utf-8?B?RHRMaTZGNHpEQk40dW9CR1RyaXNUcm1OeldIWUU2c0RQN1J0M1dWUjRjMmJi?=
 =?utf-8?B?QlVkUkt4bndYeEo5QzVXTldHWXI4K3FqMXBYTjVXcVZiSGp6OHRtZWhjb1Zw?=
 =?utf-8?B?d215d1dUUlA3RlN0OERmTXNSL2V3SEZpRytJczVWRCthaHBiRnF4dXlzV1NB?=
 =?utf-8?B?K3VUaVR2ejgwcXZtZXpNQjZvemdBNGNxSytZZTI5bkpiM1JVU0hReDJQRmJa?=
 =?utf-8?B?a3hoS3NUeFJvMFJMY203RlZtV3YxY1FwaVp6TUZvOGNWU0FWOU9qcVpwRGVm?=
 =?utf-8?B?NTllL3pTcDFYK0RURlhYL01pZFgvRlFSV1ZoS1BINGttZ1BzNHl5cUxFOXdi?=
 =?utf-8?B?M1RCOWEySWFrVTBCQzVPL1NHWSt5R3VKc3F2eTlRUmNsekZ3K3JhZENCYkUv?=
 =?utf-8?B?aFlVcytSQ0J1LzdWenVKVGZjZkl1YlV3OWpTOWhGZ2FBanpqcHlGdlJhTW9B?=
 =?utf-8?B?TUVRSWxOQ1o4NnRBQldiN2dTb0ViZ0V2UUR4R3RLaHBrK0h0UGFUOHVJczdX?=
 =?utf-8?B?SGRabWN1VERSdzg4M3M0MXo4cXBDNE9tem9OdnNqLzhzL2dhODdNWVFPdFdx?=
 =?utf-8?B?ckVCeDVPUVFybWJ2TlpJbUhCMmJ4QmVITVBIcS9rQWIvdVJ0UkJSSSs3YUlV?=
 =?utf-8?B?TXA0dzdRTEdKSDBWcm1zeEN2cmpHZWR1Q2J6SVVjME94QldvcE1Xb1BvZFZL?=
 =?utf-8?B?Nnd0ejhzdTNlMDdzMDZscFlvbUFhTWtzRUY0SHl5akc1akFvL25QMmdRamxx?=
 =?utf-8?B?UzRHMmhXSzNhOGM2dys5RkpQc1RkMXFvQXJxTjZwb2RDV05LdHVoR0J2dmxG?=
 =?utf-8?B?R3FLWGtlaHFlMVRQVWVTbWJhdmZVbmE1Nk01NXVyWFNZUE9XKys3b0p6Tmh4?=
 =?utf-8?B?R21VV2xkOUFhN2VCQVZGV3RidnM2dm9lV1JvamZQR2Fwb0x4NkZMM3Q0NXA1?=
 =?utf-8?B?N0tTMFlhZUV2bW1zcG5VNEVCTWtEeWZZeEJoVmw2SWd0aG5CZFI1SnJXbEV1?=
 =?utf-8?B?T2hlOUxyV0JoZW1GcXlGVUVYWVBlYjJvdjFsZ2VYU0hDNWZLYVkyYWphM2No?=
 =?utf-8?B?VjFqcXV2M3UxTDBQamVUWHlKZDhuYWJUSnZDU09uY1phazZia3BENlhHa29L?=
 =?utf-8?B?VXdEVjNyRkkwa3dWQ3VObjZzZm9zNjcvZHA3UkVKZ3d4SERsaEVtL05uRFdv?=
 =?utf-8?B?TU5BTXZINDdIajA1cVRreUpkcDAraldPMHRIbDFOODcxY0gwSUErejdLYzky?=
 =?utf-8?B?ZVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c988cf74-af1c-45e9-fa9e-08dddd61a210
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF814058951.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2025 07:42:36.0189 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LuafXWyKqtcSuNwURntgs4X7vP6prEh2O3vojyCtoYv6W40N4ZZh1f0fJiPLVEq20kC3LPKfbhy4kWwabWF+JcwMR4+uRLShvuchExpyN+E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6527
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755416560; x=1786952560;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=uQQJU2gLchRoyKPieTNyEcXAB3CjHDKTIkEbtaVPTrM=;
 b=T+q2cRadyXYIYcNA5VPLxb3yHVD6ulHDkk5s1P7vL9cw0Rd67auXHHRc
 Pp2jj2Xg02/4j7Kr+b/0owcbFDvC9xVD+wSVmbTtKipEBEbfH/m3mgS4E
 OuRpk47jL7ZwLk8Y7ANoDQHtxPU3C1xs4fE2OqBpks2j10bWmMBjnK1Rn
 L2NtZvJft0XFy91sFJlA+3FgFTH2wTOCiZfnz0PsDReM6iB56zSCFt81L
 2pJ2WFvv2pl5w2GKdAPYYiBRyVdJae3dtBwJSW7sVVOKdK5Z5DNr6+ygH
 aUIP3K7dBAuefv3I3iZk1aUjduvKm92YGys1CNKg4Pc0IKkvmd0OvhHh1
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=T+q2cRad
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] igb: I226-V (rev 04) frequent connection drop
 with Linux 6.12.37+
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

On 8/12/2025 4:08 PM, Chia-Wei Yeh wrote:
> Hi Intel team,
> 
> I run a home lab server on CWWK CW-AD4L-N V1 and recently updated my kernel
> to 6.12.38 with an upgrade from Debian Bookworm to Trixie.
> 
> I've observed that using the new kernel, the network connection drops every
> couple of hours, and in the worst case scenario, the connections would
> completely disappear and the machine would have to be rebooted.
> Going back to 6.12.31 fixes the issue. From
> https://launchpad.net/debian/+source/linux/+changelog it seems that only
> this change was between .37+ and .31
> 
>      - igc: disable L1.2 PCI-E link substate to avoid performance issue
> 
> 
> This led me to this thread
> https://lore.kernel.org/intel-wired-lan/cb7776c8-868f-4191-8b77-8ebbdf674aaf@valdikss.org.ru/
> and
> it seems that the fix is for i226V with speed cap. But in my case, it
> wasn't capped to start with.
> I can easily saturate my internet pipe using the 6.12.31 kernel without the
> fix.
> 
> Idle Latency:     1.15 ms   (jitter: 0.12ms, low: 1.04ms, high: 1.38ms)
>      Download:   519.37 Mbps (data used: 397.8 MB)
>                    7.27 ms   (jitter: 0.55ms, low: 1.28ms, high: 11.43ms)
>        Upload:   522.60 Mbps (data used: 235.1 MB)
>                    4.96 ms   (jitter: 0.37ms, low: 2.77ms, high: 5.75ms)
>   Packet Loss: Not available.
>   Result URL:
> https://www.speedtest.net/result/c/bcacca17-8666-4bcf-8300-10c6920ab420
> 
> Output of 'lspci -vv -s <x>' w.r.t L1SubCtl1 is:
> 
>   Capabilities: [1e0 v1] L1 PM Substates
> L1SubCap: PCI-PM_L1.2+ PCI-PM_L1.1+ ASPM_L1.2+ ASPM_L1.1+ L1_PM_Substates+
>   PortCommonModeRestoreTime=55us PortTPowerOnTime=70us
> L1SubCtl1: PCI-PM_L1.2- PCI-PM_L1.1- ASPM_L1.2- ASPM_L1.1-
>    T_CommonMode=0us LTR1.2_Threshold=138240ns
> L1SubCtl2: T_PwrOn=70us
> Kernel driver in use: igc
> 
> Can we hide this behind a module option so that systems that aren't speed
> capped won't be affected by the patch?
> 
> Happy to run any test or debug if needed.
> 
> Thank you,
> Chia-Wei Yeh
> 
> 

Hello Chia-Wei,

The patch you mentioned cannot be responsible for connection issues due 
to the following reasons:

1. Disabling the L1.2 link state only affects power consumption. It 
actually improves functionality by preventing the device from entering a 
low-power link state.

2. The patch itself was ineffective, as it always returned that the 
device was not an I226. You can refer to the discussion and patch here:
https://www.spinics.net/lists/netdev/msg1115398.html

Regarding your specific issue, I recommend checking for errors in dmesg 
and NetworkManager for further insights.
