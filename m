Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D57958FA6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2024 23:27:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F18FB40B4A;
	Tue, 20 Aug 2024 21:27:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QcXh6QLM1snY; Tue, 20 Aug 2024 21:27:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4FA3540B5E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724189244;
	bh=p8KyzqyC2bdqL0WWlYNdMQFxuw4eFuKQmH3x414TgfU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=haBaTuMMk/ACOG81Nifv8yHJSeKT5gWPM+BRXdb47DXp2D4fvavv/N59t5VYnUuiH
	 kQWp4bEZ775TH5HVkeHnr9TyMdIERis9d/dkVO+yKKHzs/Xg+rfz67yMQtfR0qGImT
	 1WKJup4iXWTfl8PVswOGNZxE6gLnf686KvF0+N63N9f/N1coZKVPMr9B1iPN4RAElP
	 xykCBfYkNp2k1CwS1bRuNqj5X7Z6Klom3ZfV1KfTfD0T9jIQec7jaRD+nQafqATt2s
	 Qs+KYRP7rrG67c86llEnFtlT8++IM+jZID3TodO1uxzaSCJQtSELJ7ajMa7y9HChOD
	 ylGlSwVNYzZDA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4FA3540B5E;
	Tue, 20 Aug 2024 21:27:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EADB51BF3B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 21:27:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E44F760622
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 21:27:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LD93qutWkqpB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2024 21:27:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EE7CD6061B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE7CD6061B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EE7CD6061B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 21:27:15 +0000 (UTC)
X-CSE-ConnectionGUID: qIVHLAAMTaSY2iysuU9vUQ==
X-CSE-MsgGUID: imQ0xUYoSDSHfjESt1nxeQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="22684459"
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="22684459"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 14:27:15 -0700
X-CSE-ConnectionGUID: K3l+QjHLSXiFFm6oBzwwgg==
X-CSE-MsgGUID: 6nSI7SJpR0ua55DUz3uqrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="65707354"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Aug 2024 14:27:12 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 14:27:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 14:27:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 20 Aug 2024 14:27:09 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 20 Aug 2024 14:27:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z/La7iiVhJ6A//8NoujlhUWD3+MThByPLkxT3GY1SDA6Tnc58uMFqxcyWd9NJDgnTRkfpQkhfAn3JVpMVRslAaUz7gyWaRy677+3Ygm9rR9b93UGcZjT3JleHclE83ADi0jL+0c2VyuUbqBYb3X2RJFVHXE7E6+/Qy1RxoBBQpV+OBF4rBwxyp69sA4JqjTJR/Uaa1ssgh55MeFmU1drwkn8PTAdtUxu/fYQZQluzemh6KiP9h5Nkorjc2RqSzhTsMXjCzBmEg597A1h3rD2oEIDk7td+f/pTWkMk5jkJubGruQ+kSlYVjYjOwx79F1bpoDYPcy+4BVaXvLeUROyKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p8KyzqyC2bdqL0WWlYNdMQFxuw4eFuKQmH3x414TgfU=;
 b=ewjEthzywAlkLn7YAOiVbb79IhwRDP2N2qQmsNUMKqHJqlAmhC6dX7ucLSSqI5BDMSPtklXjrFHesMLcCmTwwFeU8DclNRN/hxueb+nh07BarKCb4yJB/wpm567itbfo44A8Cdh13EbOk8aPIA8/H6yJoILTg88e7LS9ETqVZotiqGAjc0fCwUlY2JcZeTjlJOLH9DsT4zOiz2nYBGkx/GFAz+d32BAljYccQ0L6MB4zXkRkZc3Dw8Rab+il2M7KCD9YjGShnknPFlTcJP/oH3pH9vaJEKtgUsgeXuwKsBOZGWQAJgTOVBjwRwRJT/dYBlyqOAeqjZcnuYzJDe0ZfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CO1PR11MB5075.namprd11.prod.outlook.com (2603:10b6:303:9e::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.25; Tue, 20 Aug
 2024 21:27:07 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%2]) with mapi id 15.20.7875.023; Tue, 20 Aug 2024
 21:27:07 +0000
Message-ID: <412062ad-837b-4d79-a1af-7a51e070833c@intel.com>
Date: Tue, 20 Aug 2024 14:27:05 -0700
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240819071742.65603-1-michal.swiatkowski@linux.intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240819071742.65603-1-michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0179.namprd04.prod.outlook.com
 (2603:10b6:303:85::34) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CO1PR11MB5075:EE_
X-MS-Office365-Filtering-Correlation-Id: 29f7b2bc-00f0-4aea-4b6e-08dcc15ed7d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y3h5L3h4YVc5RE9ZdUx5OUNwbVlIamxPRHlCTCtDNkpvNjlkRlc5YWZKcGJ1?=
 =?utf-8?B?RXliY0QzRTZZUXhCQnJXWXNIaHArTXNLR1FSNDJVaVZyZkhDWVhqTnFlcWNq?=
 =?utf-8?B?VGNZUXJQV0lGc1JnWCtaY1g4UVQ5WmZnWWFqUDhYZFpsNDhLQnZFSGNTNXJI?=
 =?utf-8?B?SG9FN2U2VXIvMWc1ZGpOWjdrZVJlbVZBWit6cmdmc3NkZjdFKzRyeXJHYjlk?=
 =?utf-8?B?bW1URTZRZktYM3FGaGxENjhMSndramRVQytHY3MzbGM1bU1zYnlic3NEczVm?=
 =?utf-8?B?N0pIT05MSjNJNjJYL2tDTzBPSkVLM3dLQXdQMkN1cHdsb1FadE0vb2VYUlZs?=
 =?utf-8?B?WTZleHZDdTFUc2h6SUg1Q25nNjlmbGhhZmRBWC9wWDlScENQak1zWW1YWDVC?=
 =?utf-8?B?UVlWcTd1UjZoRUxIVXBsT2syeVhZam42Wk16Wk95YXo2UUNCYmIzOXM2UXlL?=
 =?utf-8?B?QkZtd2pUZTBvY0FZcWRIRG5KYkJkSEp0Y3hyQm82UEl0dTVtOGkrSC92RlpK?=
 =?utf-8?B?MlIwWFZzYTdPWmd5YjBaUWRycWoraXpVRnl0YjYyUU1LUElpbDNQWElRbHV0?=
 =?utf-8?B?S3lNc21XdC91UTI1OUF0TTlsZWh0Tks1cFd1UUZLc01INldwSWdsU3dONjBJ?=
 =?utf-8?B?Q3lhZnN2MXM0UGdkTEJuWUpadzZpVnllcDlseXBmdVRKNUZYb3dFbW5Ud01W?=
 =?utf-8?B?M3gxcTJndExwZlFPbUJ5alQ3eTNLeldPUDR4UTNmZzRscWZkcjVCZlA4bDBy?=
 =?utf-8?B?SUUwN2RncVF4VGlubGdXTnVPZlc3YS9aaXVUdVJUNERUcTNuR1I1dXFIbzBJ?=
 =?utf-8?B?TXBUSk1TbTFSbVNieFNtejRCVDdRWkt1MHN0OXdURGtGUDUvWHVHcENiSE54?=
 =?utf-8?B?TGVsODJyTHVPWXJPUzNEbXpzTUMxVDVqY0drSjA1bVpibTN3OWRPL3hEZFpr?=
 =?utf-8?B?SWc1ZW1ZNmk4RWdRcVVINEU4ck5OUHJJRTU4SDh0c1lVNDk4TXczN3M0cmxB?=
 =?utf-8?B?QXhTUmFCMWtHVEl5bDdXK2lIUGErR1BBek1hVlVMbmhtaVF1NmJKVVovOVFT?=
 =?utf-8?B?VkIwVVBFSkh6aUZvNm5BUDFvVDlLNHgvNW9RTDRtbU1CYW8rbFFtL09ETlVp?=
 =?utf-8?B?MW5BNmtuNlhaeVBaTHVGYTRKZGE5dHNzUlNqMEtqZzVjOXBIcG1UWHRYWFdS?=
 =?utf-8?B?QnRETlZCVUU0T1FDSW5kSW9DV2I1MGZ4MUoyVlRxaHJGVEU4Nkx4d1RDNWdI?=
 =?utf-8?B?QUc0eUpNR1BWUUU3TjZ6dUhDdWM1cmVOaGRnNVo2YmhzZjR4aWQ4UkY2SnAw?=
 =?utf-8?B?U0xVN3Ura05FS25QSThKYVFXYjVWY1NHWXluNWk3YTU0NDMrbE5oTDA4bEZ2?=
 =?utf-8?B?V1Avc2hDaHNrclBmcDhLSlRESlhLaXlrSFU4bW5GOUsyVitjNWdSODZ2M0Nv?=
 =?utf-8?B?YVppVk8raUlGbDdlMVhpejQzNTZ5d1dqaGdISkZZOHBtQkhGaFl3WUU0RFpX?=
 =?utf-8?B?YkJOWUVvSzYxQUZnb0dHbWpKcXgzSU82cDBacndvRlNWY3RIREtaN3I0ZG1j?=
 =?utf-8?B?WGt5YkxjbGxkV1p1YzVzeFl0ajFzSitqVVZjVUVNaUlVY2crQjNERzdhY0Ew?=
 =?utf-8?B?OGZ1c2NuekJuZGxUK3JSaDFSdUNaYU9XZzdSdXp2a0xZOFB5VlBMK2xhNVl0?=
 =?utf-8?B?b29PK1BiUVVOcDhNbmlGak1SV24xWWI2bU9uMkdMMkorUnJpQUltSk56K05s?=
 =?utf-8?B?Yy9HcVkzdVVlVXQzWDEyajBRUVhscjdjMkp5aGo4dm9QQ1NFQ1B2dWN0RWJk?=
 =?utf-8?Q?l2n+4DP1VYklqvN6aYDywB/MmK1fh9rx1TPnY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a0NIRTNxbE9weHBpN0lZQ1JYbGYvQkFGTUoveVlpem1XMXE2QTQyRjlLNGND?=
 =?utf-8?B?MmQrMVIwYmhsS2ViU1B0NW9VMDZhOGdlUUM5Wkt1aGgrc2ZiUy8xMUlCZU5m?=
 =?utf-8?B?cEo4RlJ1eFBzajhucklMbEk1WHNmalFHQnFSd2I4ZFdRT3RTWU1tQkg3N1Uy?=
 =?utf-8?B?S2RuM0dNbmpmY1pteGpLZCtjVnlXdHNEWUl2OTJ3bEVtVEpGZmRCdVFjYnJ0?=
 =?utf-8?B?OXZyNFJEWEFwYVZEWnI4bnFZTjdJYUF6UmNuVXBZT1QwZnVjeGhJOHFwQ3lh?=
 =?utf-8?B?WlZaRUFWdmpkQm1JdjNYeDVpZU9GNHArOUY3cVpLYmlVYjlBa2xyTEVSbmhr?=
 =?utf-8?B?VjREdHVKZER6Nkd3UzRlTVVMZXlxWlRFOTBhMUJBZDVtSjhSSkJGWjJEQ2E2?=
 =?utf-8?B?eWl2ajVBWDRsTHlYNStwaTBtbDNXdzdDVjNYMy9mTHhLUzRXSGJjQk85NzJF?=
 =?utf-8?B?SmlZVUdqZHdhT05RelVUK3JXV1NmWVBXRmRWQSt6WSthcXNydFNQMkNiM3Y1?=
 =?utf-8?B?TE81SWZtTFNRc1dHNGZiNzlrRnZNWnAyRFVFMzRFc1VJaUQvZEh5bkIxTnFY?=
 =?utf-8?B?UWovRW12Q0ltbWZNZ1lKVGo2MXZiQWpJcFF0M2ZQRzlXT0Jxc2VJbjhnbkRq?=
 =?utf-8?B?NXBucmh5VEo4UzZ3VFlraDR2Z00wQjFaSjlodnZPYjlCYThPejhvTEErR3ZX?=
 =?utf-8?B?Rm9sbXZRSGYxMmRxYm5qRTFBbHlUQTU5ZHIyVnFQcUtrbmVabWVKVXJ6ZUF1?=
 =?utf-8?B?YzkxaTF4MEUzWWMxNi85Y0dCdUNnbzA4VmxLMjY2Mml4d2twOVFYWnRlbVd2?=
 =?utf-8?B?c3dUV2tteUttUjJ2UytKQmxYWEFzdFY3ZnhBMkFwZGhET2UvdVpRS2tlR1Ft?=
 =?utf-8?B?aThGVmlDRkkxSVJnQjVjdW1NaUwzcG1NTVpVdUNMMFNHZEdkQmJKM2wxaDhQ?=
 =?utf-8?B?OHlUalpPQmNWTEVsRDF1c1EwWXVFaVdVbHdZaU5RS1ZIOFE2QUpueWJpNHZh?=
 =?utf-8?B?bUJsMC9VRGtRM2VvMmlIdk1yVnlLSFRHQ09uSWN0RC9GUGJ1aEt1MktTQ1Jx?=
 =?utf-8?B?VGZIM1ROeHI2a0hnb2Q5T21PVi9XSklmVE5ibkhmRmJaYTJjZlJGcG1HM0RF?=
 =?utf-8?B?Q3FsOFR0M3ZDdG53czVZS01CMG9MTFJCWnlXbElZVUV5NTZUeUxhbEo0OHpX?=
 =?utf-8?B?a3RDOHhSUEJpci9JSnVraHZrMUs5anplNC9yclJXenFJSmFDKzZuWFcyc2No?=
 =?utf-8?B?dElLdmNJek05cStNQkpwR05QdHlnQlVYQ1FvZmdNUTlvT1R3c0RiUExEbXR5?=
 =?utf-8?B?RWpKL1M5Z1p2cGdrZWZhTEdhQlk3Zkp0SHp3UjR1VGEyWEZWRGQ3NFpHQklP?=
 =?utf-8?B?L3Fzd0E0dlo1bHFmTm5EK0ZnNWd1Zjk4eXRvbVZzdXdMQnZ3Q1VFcWpYaFhQ?=
 =?utf-8?B?OTVtVVhkMU1aL3ZPZ3FXWjZRSjlZUEVFaWdNZFpBVkhVOThsS0prSlN5M2FS?=
 =?utf-8?B?WGZOeUQxSnpUVVIvTXd2NjVmSUxWUXA3aHpEN3VKWUlTb1BsMmVhY0xFeVdm?=
 =?utf-8?B?dDZVREhlenBXcnd1V0NxSnQrOGN6Tzg1a2VTZk43bWgrUDl0TEFPZEJsNTRT?=
 =?utf-8?B?Z1NPcnZObDNyWEE5Q3NtbXM3aWh0SkROc3dXd0pEU1E5NWhSSWlwd1B1TDhT?=
 =?utf-8?B?ejNBU05mK0xwb2p1Vk5ZWFRIVUhMalJsMXRibkJKMzI1SHE3ZXl5L3lwWU9J?=
 =?utf-8?B?djQrL05OcXpOZk1FWlBGWmhyUjAxQUJWVDRUZTZhejdqbE91YnpUdXNQUEhE?=
 =?utf-8?B?d21mQUQ1bVgzQnRUcmpLNEdoS1JIcTd1R0FsNHJDVUdoMU1WVkJkNGxsK3Ey?=
 =?utf-8?B?eFhFbk1LTXRHMHJ3TmtwSUtLT0JGUFpPOHRSdWdZNjJuOFBrRXkwalp5OTl2?=
 =?utf-8?B?MUp5eDZSaXp4eFVIYnJuZFo0T3ZPMytCc3ExTmtVaWgyOG5lbUNPQ2NoaUlG?=
 =?utf-8?B?SVhDUHFaQ3FuZVF1UjJsZVRTenVLMi9RUVMrcUVFV2wvYmJUMGV4OUMxdjVP?=
 =?utf-8?B?Q1BuRDJ5MTYrSTErZ094czFkZ2VIcS9xWWtXbzRpNzM3ZitsQXg2OU5Ea1Ba?=
 =?utf-8?B?VmpEbXYyUUdBN0owOUdDTnJNaVVGaUZ3czlGUThNSHZtQnpudVhRcytYd3Qy?=
 =?utf-8?B?WVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 29f7b2bc-00f0-4aea-4b6e-08dcc15ed7d3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2024 21:27:07.2860 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tKJzU0SQaXkscn1eG16TZ91wWUS7BeL47xVi9wNykvkup5O6FO4a8N6yX6ZWZ99b3salNpLXJQqlrxudjYk9EFDWZIjTIlWK+BPmiA7YHds=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5075
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724189241; x=1755725241;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WytnA8mq99bogN7RdPr0arIbAXGmpHHZzJfgQ1eXQMQ=;
 b=Euj11l+LGX0h5Hw2Ri89KgC1GmDRXTmYPfTM3aUSfFfAgwJhg/AQ8L1J
 Aw9M9dqzNfLI8Jb4ty7V3+9w/k6zTCMCdBDeMYOpNNC3KFrU7/LTpGDBK
 4G5FS+JK1I2fLGPuOzLwp5Ht3fKs9DFzRuSM9QcwjaBSaVPfXSv5K6v6t
 TGC+AuqLujXIeeWTFxiTs3Idcr8Qd8SgFVBRrZAj5oZqvARfD3etngYmQ
 5a65SYlGUonZt6o0Nl6fm0vk8Pnddc/DZUi7uOBoMaCbGepRBgIhB06LI
 0V7EO4Zi42EEIs2eo96RH4VAgdJWniX8dpxZwJ2V5qfGEmW0t0vXwHpUd
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Euj11l+L
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-net v2] ice: use internal pf id instead
 of function number
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
Cc: wojciech.drewek@intel.com, netdev@vger.kernel.org, jiri@resnulli.us
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/19/2024 12:17 AM, Michal Swiatkowski wrote:
> Use always the same pf id in devlink port number. When doing
> pass-through the PF to VM bus info func number can be any value.
> 

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

> Fixes: 2ae0aa4758b0 ("ice: Move devlink port to PF/VF struct")
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Suggested-by: Jiri Pirko <jiri@resnulli.us>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> v1 --> v2: https://lore.kernel.org/netdev/20240813071610.52295-1-michal.swiatkowski@linux.intel.com/
>  * change subject to net and add fixes tag
> ---
> 
>  drivers/net/ethernet/intel/ice/devlink/devlink_port.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> index 00fed5a61d62..62ef8e2fb5f1 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> @@ -337,7 +337,7 @@ int ice_devlink_create_pf_port(struct ice_pf *pf)
>  		return -EIO;
>  
>  	attrs.flavour = DEVLINK_PORT_FLAVOUR_PHYSICAL;
> -	attrs.phys.port_number = pf->hw.bus.func;
> +	attrs.phys.port_number = pf->hw.pf_id;
>  
>  	/* As FW supports only port split options for whole device,
>  	 * set port split options only for first PF.
> @@ -455,7 +455,7 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
>  		return -EINVAL;
>  
>  	attrs.flavour = DEVLINK_PORT_FLAVOUR_PCI_VF;
> -	attrs.pci_vf.pf = pf->hw.bus.func;
> +	attrs.pci_vf.pf = pf->hw.pf_id;
>  	attrs.pci_vf.vf = vf->vf_id;
>  
>  	ice_devlink_set_switch_id(pf, &attrs.switch_id);
