Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D20129C598B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Nov 2024 14:51:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D5613402DD;
	Tue, 12 Nov 2024 13:51:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dpBbO25gXsHz; Tue, 12 Nov 2024 13:51:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B58D4035B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731419468;
	bh=Bo4ln2j5VyRr7H/wpO6nyeU+rXgllX3U5BEmwb0ef1I=;
	h=To:CC:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JUtxXh482ej4SfbgL9d5ApogpyAsq/a25aBQQLsRHBUcJ0OceDZb9WmxNXg4XqrFA
	 9Mrh9ZrOoQmWOaaOBD0p9PBOJdKWqtIXICugGJPwB2t2dYXqNqsLSl0MFpgVe2W8kl
	 3UEdt0jFuUoTLFS90kh+YXqoqcoDPbOpsd40Sv1oqYCoI5kQWSgZGdhPU0X+N9LUqo
	 mYGaIBEkOq9j2eiTcRHXLeTGsd2DJ+MY96RRvl5iyc04R9rU0H1Ibh7pp7YdZwPIz7
	 kbEcS4JMTbE0d7bOedFFKDMFH3uyRP3qf+cgVtDzlTrJVRHXyd2enFyfQrxk7mrUqg
	 FijZrtDoMGviQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B58D4035B;
	Tue, 12 Nov 2024 13:51:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 262CE6C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 13:51:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 20EEE4034D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 13:51:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MrbgBbZ9SNYY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Nov 2024 13:51:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 184DC402DD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 184DC402DD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 184DC402DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 13:51:00 +0000 (UTC)
X-CSE-ConnectionGUID: IRymE02ZRg+r8NSv6HtTUQ==
X-CSE-MsgGUID: FZF1DjqIS9KeYYLf0M1IkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="30653657"
X-IronPort-AV: E=Sophos;i="6.12,148,1728975600"; d="scan'208";a="30653657"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 05:50:59 -0800
X-CSE-ConnectionGUID: kbtwX5lnSN+W3Fhmpx2YJA==
X-CSE-MsgGUID: p7mQdvHjQBuF0swGS7HY9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,148,1728975600"; d="scan'208";a="118311878"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Nov 2024 05:50:59 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 12 Nov 2024 05:50:58 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 12 Nov 2024 05:50:58 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 12 Nov 2024 05:50:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R0/azT36WxJOdfy73VgkZe/QPfmJ2rIXKKb/kKytUaS+eN+WlF2rWXRH7Zm7v83o9o0OXp2y1XbQJO8/PLQN5usdV7wqkF1psHxZlL5/8U+DNmvXCWqPK7xUZBdE7bGccMMh+6G8kDCJMqhfope6El2pbvBfu7Sce90lFmKY3zB5LwPdc9m7SWc8ENrm7xAV/O7NWnUwboiQobaRokh+YURJ7IAit2BfQwZ5gvz6BrMmftek5z6h0Q1kFoAGMdNqXMYbrTTDaNwVq59dJ/rXkNQkZIAL906+BMM4aB8SRpwFHQBZhZ8G8JpoO3+Ux4+DphnMDnlYVKtG2oByWRCLfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bo4ln2j5VyRr7H/wpO6nyeU+rXgllX3U5BEmwb0ef1I=;
 b=dTC1azD8Q6QVjmCXyvnQ+gNYoiRcyOQnKEu3GW0Ebanczbbj99wb4m2dXD6zksJ4zQuS4DBoVjiG0+FpDB6FV+rsiswXXwdTsa/gk8h36ou61B3PWuopsM+5cAjTfDrsEB/4ULqOrlPGm0AxsNSWol7NDuW53y7JuZ2tSN9SdM1WxtqxhaIer+z1tedPzYL3hVtJOzIrmA+6YH4BnFTu8AZISO5KbpHv+xY1lBReWyvNCuK7EGD3nCrVn1P8ytnxcybpSLkQDzi2A4//E86ZlPQs9kF+to36JCi0iUtl69CuTKwSfh9GHbW0VTMOm97hqSGwfeTeObU1x71RZYBO0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BY5PR11MB4194.namprd11.prod.outlook.com (2603:10b6:a03:1c0::13)
 by BL3PR11MB6532.namprd11.prod.outlook.com (2603:10b6:208:38f::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.17; Tue, 12 Nov
 2024 13:50:55 +0000
Received: from BY5PR11MB4194.namprd11.prod.outlook.com
 ([fe80::9d17:67a6:4f83:ef61]) by BY5PR11MB4194.namprd11.prod.outlook.com
 ([fe80::9d17:67a6:4f83:ef61%6]) with mapi id 15.20.8114.015; Tue, 12 Nov 2024
 13:50:55 +0000
To: Joe Damato <jdamato@fastly.com>, <netdev@vger.kernel.org>
CC: <vitaly.lifshits@intel.com>, <jacob.e.keller@intel.com>,
 <kurt@linutronix.de>, <vinicius.gomes@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, "moderated list:INTEL ETHERNET DRIVERS"
 <intel-wired-lan@lists.osuosl.org>, open list <linux-kernel@vger.kernel.org>
References: <20241029201218.355714-1-jdamato@fastly.com>
 <20241029201218.355714-2-jdamato@fastly.com>
From: Avigail Dahan <Avigailx.dahan@intel.com>
Message-ID: <3897f64b-9bb0-b6a8-5528-3dabe2e88b7e@intel.com>
Date: Tue, 12 Nov 2024 15:50:47 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <20241029201218.355714-2-jdamato@fastly.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0010.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:2::8)
 To BY5PR11MB4194.namprd11.prod.outlook.com
 (2603:10b6:a03:1c0::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4194:EE_|BL3PR11MB6532:EE_
X-MS-Office365-Filtering-Correlation-Id: b4e8c543-24a7-4727-2704-08dd03210767
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a2tPOURHQlJSd3FNdnR1WmJWamxLbWVINEphMk5rbkwvMmFXc2l4TzE3WWJi?=
 =?utf-8?B?M0dmaDlKYWtiWlVPczhreGNuR0lFM0dZRWhjZ3BTbTJZazlVMEtGUTdhUGZn?=
 =?utf-8?B?aWI4eHpVV2lWNXBhQlNhaHRGTWlvMlFYdlFqYUc0NHFscDY1Q2pTUTl1TDRs?=
 =?utf-8?B?eDJiclBRUnlqa01aeVdDWVltejgrbE5UcEo4WjNyckFiMnE3NDhjcGw1SXZo?=
 =?utf-8?B?cythczM4ZEl5QmJVRVNGbkhaaFZkcmJFQ3JBSWpIT2VxUkptdFV2bmFoR2E2?=
 =?utf-8?B?eG9DYzE4K3VORjdnVlJsZTM4c3VGYUxNNFVWc1lQbzNDRit6ZDBCS3ZTOGc5?=
 =?utf-8?B?TGl5bzYxSGIxTWxmTi9jYk9HQmRvOTlGc2MvLzhvQkhhR1FVUWlLSmZPTlhu?=
 =?utf-8?B?Q2pPUmRqMmd6alJFL1E4V3JnUjMzc0R5SDN2Z1RUZS9lZUJ2dlN4dGkzZm5x?=
 =?utf-8?B?TWQwSmpQTE9jL3kzcVFiWHRhcm5DdXZ4T3pWdmhEa2gyT3Y5ZkU4MWhHN01Y?=
 =?utf-8?B?VjBLZU45SHlwT0gxcG91N2RWTU9ud0hWL1Rua3dFSUZ6bndBclV0a1VER3gy?=
 =?utf-8?B?alNlNjg3K0I2QXNET01QUytYUFRmbUgzUHlqVFdCQkJWTUduRFBmcGZaNHVo?=
 =?utf-8?B?STQzWlhtWDVubWZUdDlXNUlhdW0vQ1FKLy9Wc0sxOWxRVFVOR3NabmVuMkZZ?=
 =?utf-8?B?WGVlSitLbUtQRUUweitUY1dCOEVXUTVXUzBIb0htMk5Uanpud01VTHM4ZjdF?=
 =?utf-8?B?bHkwQnRHcE5UZGpSOUZla2NuaG1IY1BOaUNsSExWczJMTWk4cmxwMGNwYkcv?=
 =?utf-8?B?ZXdNTUxRcWZ4ejlkVjFpUDFvdzgxS1pkUzlaZXo0S25WTDZ6dk1QaDNhdng3?=
 =?utf-8?B?NElkYXpaVTdta3FlUHY5eUNheXhVbXZJaTZtRFFmTytlOU1wWEZLQ1FrdUxw?=
 =?utf-8?B?U1Y3MVh3OTJhSDFpZXQ2LzdBRlE5WUl3aWhDcktvRlpEMFRFb0pRRTNuYWJY?=
 =?utf-8?B?ZkYyM2lhUko1UG5KNGVvNERHemNqQmw1Yk13bExkcUFUcGlodDA2QnRQQ2wv?=
 =?utf-8?B?V1VZVWl0TXN0cUd3YUI0TTNuNXkxYjZhaVJJZEphQ240d2tUOHlQVWdPdmF4?=
 =?utf-8?B?YjdIMERyWWg4eWp6L09vSmFLNHRjQkpzUDMxUnB3azg4ZldxYytNMGZ6ejM2?=
 =?utf-8?B?d2VPQUV2amlxOVo1dGp0NXR0K2VoWDdDTXI2RFZBc3I0STQ5Wjd3dzNGYjVS?=
 =?utf-8?B?c2NCbWFqeWpCeGlydFRCLzhQaFBXSDhiNEVSQmxXREFJRTZ2T09Ici83NlVh?=
 =?utf-8?B?OHo2STlDa2p1b0lNRWdGVWhINjhaa3NRTWtaQVZ6bG1CelZ6RjNHa3RGaW5Z?=
 =?utf-8?B?MFRIMDkxVy9yQmZkUTFNQ2kveVZ2RUhLa2EwTlJTS1RMeFp4MGExakNKRzhr?=
 =?utf-8?B?N2duUGFpa2hvRXVJekdlZlljZUo4TCsvQjY1YWlORUtMUWFSaVlGcE9HVFBT?=
 =?utf-8?B?OXFLbkt6M0sydXB0QnB4b3p0MjZkQk5Na0FOcWpTYkMrd05aYStnU3pFSFFu?=
 =?utf-8?B?S3RwbW8vbW5ReGg5ZDc0THQ3Z2xrN0I5MmY0dnRGUUpScWhrRXBBQVJqU3VX?=
 =?utf-8?B?TW14RFlQdnc3Z1dPSFY2Ky9ZZVNtbEorNnN4R0Jmc1N3dHdTYzBQYnc4VHVy?=
 =?utf-8?B?RHh3UTFpVUprQlZmUHp2eGx5RUZpcy9XK0t0TlFhdG5IWUZSRWFSS2x2djRp?=
 =?utf-8?Q?DSYRGhC/t6a89UKD4GH1/MM9Xe43LFra52iurLP?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4194.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VlB3eW5CWlFJcmNKWDdReFRjNDdzaHlrN2lyMGxyTUFaejYrbXNUamY5Mkxh?=
 =?utf-8?B?ZzBTME5kSDgrRUJ3UlorV0NpL3VTbjNKUnhpUjZLUUxsWklsMGR2ZEU0Mlhl?=
 =?utf-8?B?Z2JHT0MxZVNrN3ZzZXNYays2K1pwSTltYTdvR1RxQVM3akRXWE9tcnZqMlZT?=
 =?utf-8?B?TmdvWG1VSjJMZzhiSjNtVFlLY2VsdTRDa3pIdGRQcUZFdkR4MEFUbm5nWUFy?=
 =?utf-8?B?U1R1ZFZHd3VpMnNlV0FlUUswQit6L1BaZDBFK2Zrd3FSQ2YrQVlURzQzK1dR?=
 =?utf-8?B?QXdLWjZXN0FtUzBYNGU1TnBCcDI4dUV6bkt1MmpkdjlydzhMbXRJbjluNGhQ?=
 =?utf-8?B?L2lTRmdFQjVsNlg0N3hXWjM3T1VSanNWV3Fob0p6ekJEZ0FLYjFseEFNRjJa?=
 =?utf-8?B?UHgvK0MvazBoMkh4TmRTWURpaC9jdCs1T0h4ZGlndU9iU1pqbitHc0FwaXho?=
 =?utf-8?B?YlRUdDA3bk1kTFBUZkFwYUJkWWFybnpJL09oVDZySkRuMzFUYzVXamtaajQ1?=
 =?utf-8?B?Tk1WT2FwMllwdDNLWnlTTzkxK1BFbzhkYW52Wm9kYWF4bWtIOE4zMjFWclJr?=
 =?utf-8?B?aHhQYjRTYTVJS3U0N3owc2dncTYrRFF0Zzc2SnNNYVZZRDVrN1ZxTnlTRmpn?=
 =?utf-8?B?cktEYytsaHZDbFY3OUFRK0JPekIvS2hEMmMya1JUaXRoK01WR1NrZ0lNdFVo?=
 =?utf-8?B?L3N5RWZrRTQwcEx2RENXaXV0YTRwNVZzUndOQmpSTmtEd0lBZDJ6QXZzaGFz?=
 =?utf-8?B?WVhFUVhlWmVDV1g0bXY1U2JNMDU4dytDbTR4WjVVYnFNaURBM3ZmRVFVS1Vh?=
 =?utf-8?B?SnduWkdicVFFdXArTTRFK2liT2YrK2FIK0FleGZVVnhCUTJnYlBJdXRRZGhE?=
 =?utf-8?B?b3lPc3RXcjBTdU5rN0hPR3prM05TbVFsS09vdjNPSEg2cXJqdnVyek82UW1z?=
 =?utf-8?B?endiVGkwL2pYeUcyMXVXK0ZMLy9nVXpuKzhORkVSVnJJWUFMZW1qQnd6ZXVo?=
 =?utf-8?B?a1VqR1FiQVp3SVIwaDRqZUU0WjgveWhlalJGZ2N3dnZiWGJCaVBXNmFNdFVl?=
 =?utf-8?B?M0FPajI2SFhGa25PdWVmd3U4VC9iNTd3U0cvK2IrMVFlY0JENncraFIyVlgx?=
 =?utf-8?B?WnkxN2twZVE2T3JrZEdJR1FQbzR1L01iN05XWWVtUncybkpvcjI4S0tYeTZl?=
 =?utf-8?B?dWlsL1BlYU9JcEtSaXZ0cXVpcDhoWG1ya0RLMi9uWkFlS2pab2lBa2FFZWd3?=
 =?utf-8?B?Mk9vb0E1SDBBVk1mSlUrdmR3TExORENBOENXUFpRTkV1VVpZbFhUUVZFdkFs?=
 =?utf-8?B?THBRdFh6NGc0T05rNGJnclovV1RHVlJDQnFFNVltSVRqWlFJaGlUSDNHdDBZ?=
 =?utf-8?B?TUhYR0NaNDJ4UnF3SVpiNm83bXVkbGV1K1pxWmR1T1lmOUIzR1ZCZnMrK3JG?=
 =?utf-8?B?QVd6d241bkpCdCtsbGFxYXh6RXB5MXA3d2tKYk5yUm01T0VOMWo1V3Fsa1ZG?=
 =?utf-8?B?WEtuT2hmR1pOdnRiT2did3hIbVdoTFhGZER2SnFpSkgzNmJxVnFGNDJ3TEN0?=
 =?utf-8?B?NFFTa2ZobWdKNFpiOHcyQnYrb1FVTFhuWUc2VzN0SjF0ZkpEUUxmeHJYMEsz?=
 =?utf-8?B?R2FVeTZaN0krd1liR0tBK0FiY3pFQXNwaWkwNm9zNEJrTW8vS0lRYjhGMDRK?=
 =?utf-8?B?b1puN2VzZDFrOFZydEZGb0FBZEw2dVBpQ1A2dy93V0QwbXdHeEhIUzNYVHZR?=
 =?utf-8?B?K1lmOVpERkt4QzRyTVVxSFpoVmg4MVl3eVYzaG4rR0wzNlBqclA2QXN1U3ZU?=
 =?utf-8?B?TC9IUlI1cHlORnVpeXNsc0VWQUNreFZDRTJxTTd6QXdyUlRSUmQyWk1EaTlp?=
 =?utf-8?B?a0dtUld2akt5TnVtNGFHakdtTEM3RmJYdFpZTCtUNVVoYzdtSkdGYmhZTzFF?=
 =?utf-8?B?VzYyRUpESm1NQWxQY1l4eVE0OXNyWm9aV1A1OEV2SWJjRGwzSVpIREJnUG5E?=
 =?utf-8?B?cE1uMlVub3BBUU11SW9tMGJ6RlFxMFVabHRuK0NRTVp0Z3daU1JhQXN6SU1j?=
 =?utf-8?B?YTQ1L3lTMG02T2l4djRxRVo4bDdRd1J1dlVEZjFoTFMwTmY0OGh6Ui9QM0U5?=
 =?utf-8?B?bzladkRMb2kvMU1YTmNxTVhIODBHQnJvQ0tLS2JVVDZ0cXgzdGFyTTV6dVRN?=
 =?utf-8?B?Snc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b4e8c543-24a7-4727-2704-08dd03210767
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4194.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2024 13:50:55.0724 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cnLESXo0hUzp1xQHcCCkdlry2xWQY7XPssYbmGw6x/FRzTP0fuGvkw7pTpImy8PuNdEQyPaxnpjKZRemHPxPLLgoaMd37VS3ueSkjzu3biw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6532
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731419460; x=1762955460;
 h=subject:to:cc:references:from:message-id:date:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IOfVHHh+373gfrDXrAJ+mmgYzkeVndmeuXbVvqEttWI=;
 b=X00EHDuSypKJUKcifG4+OVPFAJkPJf1EDi+/+4KL7A9nZ5Ww1i9lUDO8
 0cDB5eZxCGv56bdnAanO2cg/y7srEXTBrMOv14OBTni0uU90V7V8CmyU0
 svBUfVv4V8PT6DuVFGmzvC/UUDSCsUfajr+ksx3RH20htfAzrgTBla9/Q
 R6juWm/7MOC6jIsyuAqkcdV76Y/GGC7Qncuu8SVanEiVwK+cZ7UC3fFXG
 M3xG7AcHljfiMVtySYlx8qrMr/owC8LK6tGsr6XJsXexMhdF2gj5FoLSi
 4xe0mQpYtWTVmWRfOiDjpJ3aDE/Rhg6RMeNmiJEP9/b67gSA6a4slkRuY
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=X00EHDuS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 1/2] igc: Link IRQs to
 NAPI instances
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



On 29/10/2024 22:12, Joe Damato wrote:
> Link IRQs to NAPI instances via netdev-genl API so that users can query
> this information with netlink.
> 
> Compare the output of /proc/interrupts (noting that IRQ 128 is the
> "other" IRQ which does not appear to have a NAPI instance):
> 
> $ cat /proc/interrupts | grep enp86s0 | cut --delimiter=":" -f1
>   128
>   129
>   130
>   131
>   132
> 
> The output from netlink shows the mapping of NAPI IDs to IRQs (again
> noting that 128 is absent as it is the "other" IRQ):
> 
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                           --dump napi-get --json='{"ifindex": 2}'
> 
> [{'defer-hard-irqs': 0,
>    'gro-flush-timeout': 0,
>    'id': 8196,
>    'ifindex': 2,
>    'irq': 132},
>   {'defer-hard-irqs': 0,
>    'gro-flush-timeout': 0,
>    'id': 8195,
>    'ifindex': 2,
>    'irq': 131},
>   {'defer-hard-irqs': 0,
>    'gro-flush-timeout': 0,
>    'id': 8194,
>    'ifindex': 2,
>    'irq': 130},
>   {'defer-hard-irqs': 0,
>    'gro-flush-timeout': 0,
>    'id': 8193,
>    'ifindex': 2,
>    'irq': 129}]
> 
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
>   v4:
>     - Fix typo in commit message (replacing 144 with 128)
> 
>   v2:
>     - Line wrap at 80 characters
> 
>   drivers/net/ethernet/intel/igc/igc_main.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
