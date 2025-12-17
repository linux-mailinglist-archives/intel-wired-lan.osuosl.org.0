Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A21ACC9C6A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Dec 2025 00:14:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D19740F2C;
	Wed, 17 Dec 2025 23:14:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id soaWT4_6t3t8; Wed, 17 Dec 2025 23:14:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 830D540E1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766013297;
	bh=zOG9Ln+/Oy4/kH5ejN0x2T05ex/cv4bVoScZGdvX3uM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gRCwpmgtE3VAalY6fPYHm10qLf6efmKK/25SZ3eAgkIs3lZ5u0SkQx52Qge6fuSGl
	 WiakOjKEmH2WqSQrtFBmovMEqRnwF3abDKltE+tBlQPi6Hwo72fD1pSrslFaA6WowZ
	 tRMaP9JSzxn3tbcQQkrbMWPA2lgNrwafM874XOlDigVY31MjMNmdo/xwIUO/h89LjS
	 I2o17zG/mvW/9Xeap/Fs7fO/rPVhfxSG0tbJbqKeVSrSiYnN2vBuPXkUy1MR1U78S+
	 2rgqjFUjFbM42q8QJ1z6ZQHYacSTLd+z+gqk/CImf34A8iEDa8VaSHrESUl9JYb6OH
	 gatySSU7caFTQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 830D540E1E;
	Wed, 17 Dec 2025 23:14:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C3A00375
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 23:14:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B5CCA40DE8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 23:14:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EwYQgIP1Zohs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Dec 2025 23:14:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C4DF040DD4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C4DF040DD4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C4DF040DD4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 23:14:54 +0000 (UTC)
X-CSE-ConnectionGUID: s8dsaoluSsCpBTr/CpZwHg==
X-CSE-MsgGUID: CiXveMTPS9GqEyuoJU0o3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="67157340"
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="67157340"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 15:14:54 -0800
X-CSE-ConnectionGUID: lqu9p/GaQhysxaZ/htDYhw==
X-CSE-MsgGUID: kSpsDKN6SSOKtn02rq45nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="198039518"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 15:14:54 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 17 Dec 2025 15:14:53 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 17 Dec 2025 15:14:53 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.64) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 17 Dec 2025 15:14:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tCZtYiRcN30EWCaFl6J06Bvfd9idLYBkN+sFC5XMtUK/xeJwkhOCpmrRk7i2w52OIsp7yZZEPICNsTCFlW60LUfJ3Jaahs5f68ugy9HrkRLUz02SBWhn4vUw14a76/wpIvLlEIoduha86mSBhgKpYRcWoDMY4xea7eAiKmbKy28MaWJseGDYcI4Ara6yaPYZezEtlLerW63Y+4Xs9dEtv8oM3YgwvFKpm3ZDxEoalJ7NN8uu0JBPyFbXPTkITqaE5KOGVH+eFz+KZ7uTCQpVSFC1Z+YCHS4Kxav1ujMvDH0yYyOd9krExeej+B8JzpNG+K08kZEVXS/Ep232V4ryhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zOG9Ln+/Oy4/kH5ejN0x2T05ex/cv4bVoScZGdvX3uM=;
 b=ZhOyUIZXWm3cbyB3FmNNsOcnaykMnhyKcGDCx1eKcdXVgqbAnVuwESmMu7DVG/aSw+nqh8azgNmHM+3+kPcMXer+TdHKfRyoGVaqgrlFi0S5NpoPEt0fp7y3FoQxoJGpPoxev3jiwwueeXx1bk19It/Mb9xYKqtEOOlwIcmmtk46jVFFq9HipeFi0gwhsHGva8vCaoC1QqZA8k9xypHVv9OLb1aIrlT1tm525p2vX+N5kiRTYjxcK1v/mK1uYOg9tPSXkXvVq19IS7TNVPl2DfZU+AvlgRGv207IaVDi81UremdQOZEe2Uvb1uxbbhza/wpRWzz7yqhdiBSbfnhKQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6454.namprd11.prod.outlook.com (2603:10b6:8:b8::5) by
 CO1PR11MB5202.namprd11.prod.outlook.com (2603:10b6:303:97::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9434.7; Wed, 17 Dec 2025 23:14:48 +0000
Received: from DM4PR11MB6454.namprd11.prod.outlook.com
 ([fe80::5fce:2082:bf1e:4fb3]) by DM4PR11MB6454.namprd11.prod.outlook.com
 ([fe80::5fce:2082:bf1e:4fb3%5]) with mapi id 15.20.9434.001; Wed, 17 Dec 2025
 23:14:48 +0000
Message-ID: <3d40d617-a31b-4a7a-86af-66d2c938c114@intel.com>
Date: Wed, 17 Dec 2025 15:14:46 -0800
User-Agent: Mozilla Thunderbird
To: Jesse Brandeburg <jbrandeburg@cloudflare.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>
References: <dddf6b9b-74f0-42cc-bf1d-5fc8b8d4df8b@cloudflare.com>
Content-Language: en-US
From: "Greenwalt, Paul" <paul.greenwalt@intel.com>
In-Reply-To: <dddf6b9b-74f0-42cc-bf1d-5fc8b8d4df8b@cloudflare.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0083.namprd04.prod.outlook.com
 (2603:10b6:303:6b::28) To DM4PR11MB6454.namprd11.prod.outlook.com
 (2603:10b6:8:b8::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6454:EE_|CO1PR11MB5202:EE_
X-MS-Office365-Filtering-Correlation-Id: dba9fe86-2dae-4c5c-6b62-08de3dc212c1
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QUlwNW5HOGxScFMzdXRidUgzekpaejFwd3pIckU5SFZXMzgxYTkrbjBERkJ6?=
 =?utf-8?B?MUNYbFlpcjM2TmFIV1Z3NTNBek1abUtVYmlnazRhY2tSRGU5cWFjRElVd0pn?=
 =?utf-8?B?TWNFNERhT3N5K2xUbHFIV0cwRldad0drZmxBU3AvaisrLzQ0aTYzQ29ES2JX?=
 =?utf-8?B?UkZib3FENFZTNHplTWxCckZvb1hRNlhwaFJNTHNDTUJXeC9ibENyVFRMRXps?=
 =?utf-8?B?dlQwWFFKMTU1SEIyaHlvTUd6VDJUelRrUWIrQTRBYWJYdTV5cktKWGFSRHN5?=
 =?utf-8?B?NExjYzV6S05yaDFJeGtVc2lmMUJraTg4TUZxWGg0S2FaU3JkSmtEV3NQTzV1?=
 =?utf-8?B?R3kvamZtaVpVaTQ4MzNrK3RiU1p3cVdVcU43L2xSSGhLZGQ3dU9XWUdtdXpI?=
 =?utf-8?B?enFVeDNWUk52QTQ4U1hEMy9xYVpHNzIyNnNGYURpSlp2ckZOUzFGTCtHckZ1?=
 =?utf-8?B?Q1l0N3BBZ0hSaEoxNHFKNlM0MlVWV3lpeTEzZldUa0Z5M05UTGNQSUxzRGFl?=
 =?utf-8?B?OGJEVGJmS2pZR0FNY0VDV0RDMkhxajJuSzI2S3Q3Q0xKY0QwbHd4L1Z0OHBo?=
 =?utf-8?B?Z3NpMFowY1R5YWdYWld1UitPbm5Ga2hOZUsvaXYrdHNRZTBGYzlJa2RBZ1Ez?=
 =?utf-8?B?b2h0VWt1b21lbU5XYjVRRDZVb2VGSWp2UW1pcWdVZHZQa2drczBhNDRxN2ZQ?=
 =?utf-8?B?bnR4VVAzTHNjZGQrY0o3WjRzSEY0OVZrUkZmOXJJa0QzdlgrZTNwTzJ1OUdt?=
 =?utf-8?B?OGl2M2pZbS9pZ3JqWmVyK0FGenRNRks4UVhCbjZoQ3VScE1FVVBzSnZZMDJw?=
 =?utf-8?B?Zzc3TmZGeExWQ3RuZml0OTdiYlZoQWFKd3F5WDVXM0MvZ0RwU2ZIVTlYN0VB?=
 =?utf-8?B?d1k1RVlJWC9rVmg4ZXhvKzdmWGhwaE1UMWhTOTZRWlFKb2dYR1VhVWxNRklH?=
 =?utf-8?B?eDZsMXRVMHdVTk9WRE1aMjNPUitja3VMdC9WdVlJM3pZRWJCSlEyWE9Pcmd0?=
 =?utf-8?B?UXdFVU11OTdnYVpXbjNHMG95OTdJbFMzNEdYMWlYMVVJbzR5a3pvS2t2TnF2?=
 =?utf-8?B?OGtEWFAwaUEvYU9qaDJQTkUxTmJMRnZVVXJ5OHdLSUw1NjZtUmFtNGxvbm92?=
 =?utf-8?B?eVp0L29KOEk1NFF1V0hJbGVURjFiWmZSTVFRVVErTTRWZnZHSUlnSlJwajc5?=
 =?utf-8?B?bjFQMGhLR2d0VTNzZFQ3UC9VS0l6eDZvaTR3d1pvTzVkRm91UVNkR3VYN2RY?=
 =?utf-8?B?cE1HQUJiTmM4cmQ3Y21iMnh3Tndxd1d3czA1SUJjK2lDbjdmdDU0bmNQeUhB?=
 =?utf-8?B?b2NBRFVRSmh3dU5ETTgrZHlCZzZRSlp0VDVFY3pVK2pKcmpyQlZ6YUhFNW1X?=
 =?utf-8?B?RnNBMVV1SVVNdU5QU2Z6dHVVWlZ4MFkrMUlEOTh6YWtjeDNBbi9GYUVRbWwy?=
 =?utf-8?B?Ukw3RGozaEpkcGlwRzlHR3lxZFpsem5hZ0I5RzRoR2ZRUEhybi9vQ0V1cExR?=
 =?utf-8?B?ekF0Yit1c2xRVGVCRTJkcjJEbTRHbUptbFV0eEZIWUZkWXE2aDdYc1FMdExn?=
 =?utf-8?B?TlByK280ZEgyZTMzZWRHNDdTQVhrT3l2Rmh2QVozYzNYaCs0OUNEa2ZQU0wz?=
 =?utf-8?B?Ym5TWHlSa1kwTWYrRXkyL0pkK1NkVlVZQ1NZclZabHNqdGtXYWc5WHdxcloz?=
 =?utf-8?B?Njkyb216QkM5azI1REo3NHdsUnBrZTdLNVV1V2hSSkRmRy85em9JNXJOMlJ3?=
 =?utf-8?B?aXF6TmRqWENmQklLNS9QUy9BSW40VmhsdmZUK3A5VTB4OWlSUFJ2UEwxU0xL?=
 =?utf-8?B?dmMzM3pVc294cGVCa3lSaWJGM3Q3U0VZTDBWN0JPczBXUHgzM2MzT3IyV2RS?=
 =?utf-8?B?V0QrNCtiTzh5Um5sd1ZNMFZjZWFZdXdTejdudlJHZ3VFeXNXWG5peGpXbTRX?=
 =?utf-8?B?TzR0aFVWWlM2MXE1TWlySi9NRHVyMjhDazAwNElVVTJ6RGhWTG1sQkRGdXRj?=
 =?utf-8?B?WlZSNXVkTUpBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6454.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QlhBTHZyMnZJV1lGbHpzbWExY0RYMXc3bm1paTludEkvb2RWbmR2dFpsWEk4?=
 =?utf-8?B?a2tsdlYrak1zN1l1bForWkwxVWJsYkJlNlNKZmU3ZVQzQnZWSWdPYzhteis0?=
 =?utf-8?B?aWY1QjJPU2llamthVkhTenI2V0JYNDdEVjFaalZMSjJ6YnFLT2FDMktINWFr?=
 =?utf-8?B?T1RaeHNUWHNtMm9VM1FVZUM2ZmtEYmFaK0VhcU8zQmdtdFA5cmpGQ0JzQmpj?=
 =?utf-8?B?YW15RnZDNDg4Mjd0SUFENW00S3grYkVqWjEwNXRtMjZMR29LT2lEZnhVTzZK?=
 =?utf-8?B?SG1IN3J5L3dUZXhOMVBYTlNLamdlT3NURFdSVXZ5K0NsaitNSDJJbFMvQlJn?=
 =?utf-8?B?OHpkODlzMEtIcWtoRXYycE5vOXRWU0h2TXhwNTYzQjhsd0JWZ3dsaDBqQ2hy?=
 =?utf-8?B?MnJFWWpRbGpxNGZxbzlYaDFqbHZqQUQxWW1ac0RPUS9iTTlUcUJvQWRNZ3hC?=
 =?utf-8?B?U1JNNFR4WEVxQSs0dzVKOTJZVktSWVBRSmJqQkY4bWdZNlJmcS8ySk9yOE4v?=
 =?utf-8?B?UzJpQzRjZkJhV2hTSFBoRUZsZllWWVlyMXRzMUFZVlY3WVFGaFpxTGtoSnQ0?=
 =?utf-8?B?dDQ3RVRGUGNoSnBLRlp5SjJudDYxMmdtTnEyMnhLNzZ6RFJXQ2dCRllQeDZH?=
 =?utf-8?B?blB6UGFUMUc1aW5UaUFVdHpKQTQya00vSmlkZlJyM3lObS9HZ0V0aWlaMDFs?=
 =?utf-8?B?YS9LZ1RtMjJFOEMxWlJmRSt0UzkwRjNyNEdydEl2WnlINHdGbjg1L0ZROERS?=
 =?utf-8?B?d29laEw3OWlZZE1wUVZTYnpRbkZJSUlZbkNwcUlveXlqQVNjMTFkK2xpTk9P?=
 =?utf-8?B?T2xmYXMwSkQ4U2svcTIxV1MyQTBRZTlrMjQrNlFla1VTcVJYclZwZndob0Zt?=
 =?utf-8?B?ajhEK0lqODNWa2V5NUFTRVA5MkdwSkRDSVJkSHJQbkRBbHlhcTlQa3p1cUxH?=
 =?utf-8?B?Z0s5NGxieUVkblNjbWJ1eXpXazZnTTNya2thbklxNUdUTUE0c1hpbXVnNzBG?=
 =?utf-8?B?RUxWK1RicWQzMFc1bXk1K0hCbXV5K29zdnJGelpraEN2SlhZL3lGS0RmWjRQ?=
 =?utf-8?B?eDA2Slp4b0E1dGw3cTBRWWx2M3hvT0tzU3JrMGcvWWxNaWhUdm1sYUJCS1lu?=
 =?utf-8?B?K0YweEI0cjRPS3gzYTV0Rk5ZeG5CczlZa2VTa1lwb1ZsWTRzRU5IZ1lhRXIy?=
 =?utf-8?B?c001Y1JLSlJoYzFnWjBDa3NBb0xrWjQxVThicWd1NkFibTBvbXhvaTJZTEJq?=
 =?utf-8?B?MmVBbThWTXJCcUVIcENBWURud0hYaXFYclRxNHpROVpqc1FiOUNONTdtUXRY?=
 =?utf-8?B?L1UzeUt6dHhrK2t3a2RKTEdyUVBLQWwvSWpVMndUREhqNVFOb0k4dk1VMnVR?=
 =?utf-8?B?bkNnQnoyY0RyU0xLdGpOL3NNTGRHMGZybXc1ZkU1RFdKR2dMbDRkMEhtcmpp?=
 =?utf-8?B?THowNTI2MG1DOGZOUGZoQ25uMGNUN0ErMzh2NzErajhDbDZvM2lMUWNBR1Bt?=
 =?utf-8?B?QWZ5aFFvbVVjZmsrSzdRVmJrUmpLWXY5VitnbEV0NWRVdXN3WUUvVmFmS3JJ?=
 =?utf-8?B?aDQ4TWVlK3RPZW5KeHJZRWVBWmRGRDVXWGVxRlVwUUNzNWhybE82OU53S2Nw?=
 =?utf-8?B?NjdSaU1GcndoOCsxc09ydTR1RzA5eHpuK21wRjFtOFdtbEhTVVFCMi9WeTRn?=
 =?utf-8?B?cU94eUhJWGJqTTkvVVB6WldSUmdBU0RBOU80ZS9EajZERER0OFlvdG5ma1Zy?=
 =?utf-8?B?enM5QWhweUptcms2ZENZZmxTb1d6aWRRSEZXdlZGM1p6cVc5Z0N0Vm9MMTRS?=
 =?utf-8?B?a1VUMHFGNHZpWEdFUkNKQ0U4YXRMZFZQbGdFcFhodzV6VUtnY1dlenhkdFhW?=
 =?utf-8?B?U01OVDhqaWVqZWh6NDVoV2ZFdSt4R3FWdUIrVktkREZoK0t5ckVnQXhpUy9i?=
 =?utf-8?B?R256c2w0MzhGQlNOZEMyWUsvcEpSMkR1c3cvQlRvVDFJcWl1bFVXY0lIdzY5?=
 =?utf-8?B?NkNGellOcW5Vd0NxaEM0YTRTa0JTazVPblRNeTl0aHROY01EcW9La2NRZEgy?=
 =?utf-8?B?Y1ZSSzRjSTFpQVdPQTNQaGdLUmRtVHRkZkVZM3dqSEVXRCs5bmtFcDNjUDlF?=
 =?utf-8?B?WXNrcjZtQ1VUQTU2WjNNczlueDNXdXBZUjRrdFRZWWdMaEovd2R3aE1EQ0lG?=
 =?utf-8?B?NGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dba9fe86-2dae-4c5c-6b62-08de3dc212c1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6454.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Dec 2025 23:14:48.3275 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mTkFAERjyyeOAu49/ALFI/c5eVvtdnTjiCaPS6Ctr/kNbpsd9jMAgRsIvtkWx47iLeiStusST+7r/oMEcu2L+vI0WzZIELJyLkuJsh6TG7c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5202
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766013295; x=1797549295;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=xuujiNyVitiN5gsksB+/lfS5ddmmtIeMmXHfcB/Uo9k=;
 b=XgLT3dc1jESGnrK/4TwBFv2EH/wqTqEkSIdnuqjh31EdmoU0eDjyCAMJ
 1WzmmvWPVpsp9eW5bnTZPSoev28ep5N8NH5BHoKPRJWOjSv/nXUp4L2om
 ThOyoomhbIPPMsaX7AbvF3U+cP1+M3KQqCnR8VHZF5/Rb9hehSgSh+AU2
 f/3nFMe5rCLllb3D1GcY5xY4le7J5Pub3obPJoHf/vG4LlszW1Z8UU5pr
 TKv+IGdke/iE1Kvu3AAor8YB+9dC/R6gncRQ6UqTjc6DmCF8NjlTshmML
 pl69IFYyeLxkb2/BqFZWehqBGDtdPeQxp1aa7PO4KXefciNBmqI6+i44g
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XgLT3dc1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] BUG: ice: E830 fails RSS table adjustment
 with ethtool -X
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



On 12/5/2025 11:37 AM, Jesse Brandeburg wrote:
> Filed at:
> https://bugzilla.kernel.org/show_bug.cgi?id=220839
> 
> Kernel: stable-6.12.58
> NIC: E830 100G dual port
> 
> When trying to adjust RSS table # of queues on E830 with
> 
> ethtool -X eth0 equal 8
> 
> we see this error in logs
> 
>    [ 6112.110022] [ T303140] ice 0000:c1:00.1: Failed to configure RSS
> hash for VSI 8, error -5
>     [ 6112.528002] [ T303170] ice 0000:c1:00.0: Failed to configure RSS
> hash for VSI 6, error -5
> 
> This command works fine on E810 nics with the same driver.
>

Hi Jesse,

I have reproduced the issue and I'm looking into.

Thanks,
Paul

> Firmware/package, and NVM version info attached to bugzilla.
> 
> We're already trying this on 6.18 but data not available yet, however
> it's still a bug.
> 

