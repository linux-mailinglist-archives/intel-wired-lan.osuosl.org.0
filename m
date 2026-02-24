Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KIUvLfZnnWlgPQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 09:57:26 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D3218419E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 09:57:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F09041C67;
	Tue, 24 Feb 2026 08:57:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1F4CYs6wdEXd; Tue, 24 Feb 2026 08:57:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0209641C5F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771923444;
	bh=P2Qb9IhVktwM5uZy9ZznXLoVjUpkGpDb9qcG9AQ1Tyw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7cPDrbSTEY4E+KB6gwJEguMhBH8GhaC5pUOpwz8FcxSYid1dnwaSflwRDzmHSFNwp
	 PtXtpM0oLXXXPJBw0PfQt727DJFTYgZY2ICAb4IbAQ+eBkIUbBBE6ORadg67MaVsMP
	 YrBKsYzj1BZ1mgzRTyMPB6MspRFieGnnkjs3Z8pRLxT68POrpN6y4Y9hRA2SmbK5ro
	 1cQGsf4+pu3crCooqviJyJyF7V9j+Rz5VB4wurkKRaw/RQPeEht++KKpq/p+XJMqg3
	 ZD3Dv4hPegbyqwQENaZ+vZjB8TQzogjxkFxxtBR8hitOYK4bxFw4lFSHvegzYBQzQP
	 DNdHJ+MmnhxBA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0209641C5F;
	Tue, 24 Feb 2026 08:57:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2ACCB237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 08:57:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 24E0341C5B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 08:57:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7anEt5KHA3f9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 08:57:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 47B6341C57
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 47B6341C57
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 47B6341C57
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 08:57:20 +0000 (UTC)
X-CSE-ConnectionGUID: UpY3U6vISGqdHz+arb7J0A==
X-CSE-MsgGUID: X+CrOiGLRdWY9bmYjbxm1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="95547147"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="95547147"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 00:57:19 -0800
X-CSE-ConnectionGUID: VVa2XwwESi6WSMWkpq035A==
X-CSE-MsgGUID: BPF64cU8QXq8rp8VOjGvIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="246420347"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 00:57:20 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 00:57:19 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 00:57:19 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.54)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 00:57:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rW+AK/ohDBN3ZyWp98q6II6LCMiPSZEhvhwSLtIi8kzbSTivpsKIjSMdKqiTqbKc5M8TGHuD0EmURiNadJY3bW1sl/lFFiHjGL5RVyZ4Z6tiHzei0+s081n5eFO/OOc8M7Gz6B8PpDQ/Fs6XEzEpa2g5lpIF+2Q2FKtNuiOlsb0i+1q8ZlOQofVdO6E8AbM9UFjuVTFFXEQ/kGMgOEXy/OHI7XVOQ7WPKoL/BFNsAOrbeNbHefYPhwn8FixhtGZ1RGy3UsyRA0ZEAKNu6xykgEtOvqpbwtstfhQqnHZRxx3509eQg80Tl80x6pXdpkeQmndsFlpX+0RYjuxvsS3Qiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P2Qb9IhVktwM5uZy9ZznXLoVjUpkGpDb9qcG9AQ1Tyw=;
 b=J48I/wQvudc1qughk/JrDPN/uQ0SJ+xTQ2D4TT7etNd0m1QVHyyMc/XhiwLELZEiwo1x7eec9/Cu7OXukvusN4FDUIQrppEW5Z4leIMZ87MyhX6TA0uSov8B3we+mTjpRq3agcwpKxp8uH3rcV/jkZW/Xko3zeS2MXpXHVvrmrr+kH8lgjk57DvSTif/c+cb7qIssU4MHwdvJfHKCz+1lEHXMcqc/TTzszzTEOmFXfLML2/87ng8WqzP4R0YwOlzJ4Ss6mB4w9zFvPmwc+S4iqhsg7TJ6qCIgZYmP4hkyKOys23VBSTVMBlJaYoAZTmWUZpuks8v8F9eefzxSPz48A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SA1PR11MB6870.namprd11.prod.outlook.com (2603:10b6:806:2b4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.16; Tue, 24 Feb
 2026 08:57:11 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 08:57:11 +0000
Message-ID: <9e9c69b6-643b-40c4-afe5-fdbcb185755d@intel.com>
Date: Tue, 24 Feb 2026 09:57:06 +0100
User-Agent: Mozilla Thunderbird
To: Przemyslaw Korba <przemyslaw.korba@intel.com>
CC: <netdev@vger.kernel.org>, <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20260223143214.241797-1-przemyslaw.korba@intel.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20260223143214.241797-1-przemyslaw.korba@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU2PR04CA0043.eurprd04.prod.outlook.com
 (2603:10a6:10:234::18) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SA1PR11MB6870:EE_
X-MS-Office365-Filtering-Correlation-Id: a2747d98-5c03-448d-e00b-08de7382b248
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Yjh6V2VqT21HeWFjVkZWSmFOOHIxZTgvU1gzazF2eDNWQmI4Q2N1N1A3aGxV?=
 =?utf-8?B?WGV4VTZTNWRPWEJxVlhWc3VBd3hwWklZaVB5dHhsVFVJQmw0TWNxTllTeEVS?=
 =?utf-8?B?SlZCc0o1NG1HRXEyTm9DUzJsTXZ4d3JJekxycHB3V1dyNE9mNDFYU252R014?=
 =?utf-8?B?YlpPaWFFVnhFbEs4OTFjY1FqSGF0cXQ1NHVHbzBILzFrWWFOTi9BREhzcUtB?=
 =?utf-8?B?NXFDTitaSTdLOHZLbWE4T2hBQnkxZ0lkOElEUDJ3U3AxZ1hqR0EyWW1CYXZO?=
 =?utf-8?B?OEFuSnVSK1ZwYWpERlZpQkQ0OEhKNTgrT1Q3SHUzQzFBWGRMeTBsd3JvRkF1?=
 =?utf-8?B?M2dXZFdWMEl4WnY0RXBtYUlnUkpLbTZuKzBOOWdBTzdybWJRUjU3Yk5oZDZu?=
 =?utf-8?B?MUsvQmovSzIzcTF6NFpDUmNaZ3RaVFowQUs3M01aUnlJRTcvSjJSbTdhZnlo?=
 =?utf-8?B?RE5MRDc1enlXZ2IrdmlySUhON0JtS01qWDMrYmNCRDBxUWkvbnpZYzIrTjVy?=
 =?utf-8?B?c3VBSmVLZWNCV0NNU3JKblFjRjN4TUlqOWFyNXpnWDRGYWhWNWppRWdaVkhX?=
 =?utf-8?B?VUtkVExVeWp5VzlwK0xKeXB6bERWUzc3WXJFYnRuMEc0ZFlPb2l3Vi8yMHdY?=
 =?utf-8?B?bGY4TUlmTE5QeGNQcVhFSU9wTXROdWVwWC9lVjF4NEJLSkdrZUhqcXZ6d2Z6?=
 =?utf-8?B?STVURVFWN3NURkMxekZWMFV0MDdMS1VPMVFWVy9uWngwWW1CMWZRUFdKR1Fk?=
 =?utf-8?B?dWZ2RFdTVFJmMXpUT0tvNC9jTjZCbUxqNzlyaythZWRLMHB0cllmczJOUEZR?=
 =?utf-8?B?WUMvTlBSc0RpcHRRQllYYWJQUHBUZGVsR2QvNm04dTNZbFlJMS80SVJ2NWxK?=
 =?utf-8?B?R2dlODJDa3FZQy8xRm45aTlvUnZoMnJWcTRiN1VWWTJ1U3FzMHJXWjl0cm9o?=
 =?utf-8?B?VEtVUDdabkJkcUMrdnZTdFBVd3Y5ME1GREdIaHQ0bHUyYXBRbnpNK1dJeDFu?=
 =?utf-8?B?YjJaNXdDY3N6SHFPcmhFaC8yY3RmbTdSdmxTaDd6dHZnUmtBM3d5dmwxTUVl?=
 =?utf-8?B?OVVxNndHai9xUysrNzlqTVlCaWVVVHFtMFByOW9kc1RleVJRcVIzUjJZYk9G?=
 =?utf-8?B?QSt5WUhDbWdIaXNDUWFxNWZyUThUTXJqUjN0bFVtaW9lcGlxTXYxbjF3Y05w?=
 =?utf-8?B?WXdhMjBZanJMVldTakhwY2RJSTRwWnB1UGFjN3BmbWUrWHpHeDVrcFVHb2tY?=
 =?utf-8?B?WS9xN1pWank1anNVVXlYbGZId2VCaWV3N0tBLzdnT0UzZFhxMFp5R0lwTEFO?=
 =?utf-8?B?ZUNVZGk0T21Fb25wU0VJdUllL0Y2MHpsdDh4UkxkcmRLc3lQS2M1YXJpVm1O?=
 =?utf-8?B?LzUrc1RnNkRLbHNtT1RRS1RuZkhMY1JxSlBtZU9WVVdKbHc3a0ZQZEtBK3V4?=
 =?utf-8?B?V05wdWpqZUpvamxENU1GVVZYeWtRa3dBSXlBZFAydWorajhBSzdjSjdKaEI4?=
 =?utf-8?B?NjhGR0tlSkNkUnQ0MUozTElIOWMyUjYwNytuVmduYUJCcFJjWS91SlVINXpX?=
 =?utf-8?B?aVp5REdoNmg0NjRxcHJ6aEZsVkIzbDVhbFQ4NFN1ei9XVjNQcmpyQVdKbGVD?=
 =?utf-8?B?M2pRMWhjODBzUGRiUTB4WHZnTElMODJVck9yaHB3OEdRT1JJd3JyNndKVkxa?=
 =?utf-8?B?cUt3aUlqRW54ajZLcUhXVjFHMG5TUHRzQzJyb2pVTmNMOWtYRCtHcHNJYUJR?=
 =?utf-8?B?cjFPZkxSN05FREpqWjZ0STlQL2hPRTZ6UEMzNDA2c3M2UGNCSSs3amcvSWNV?=
 =?utf-8?B?NVJqVkM5cmVBTm9ZU1U0N2tvK1FWTXlMYmJrbkN0QS9UaGVncXBJVEpzek9K?=
 =?utf-8?B?eU5Wc2EwSTN0c2pZc2liMXZJRDVHaVEyd0xwOURUVTBqclZnVE54Q2Jycnp4?=
 =?utf-8?B?bThPQ2pab2pqZVVtNUJDdzVSRE1TZVdReDhaZUZJc0J1RkwvL01ESEw1aHBp?=
 =?utf-8?B?NitVNk5WbHdZRE9ocVVCU0d0OElkTDZ1WCs3anN6Q3hERFM0aENUNm5GSlp6?=
 =?utf-8?B?Ri9Rc3NhUitJclpERlp3YWxTcHg1ZjBOTHdMMG5PN2s1eG5ObmNvYjhjRXpj?=
 =?utf-8?Q?k+4s=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T0U2NUJsNGtNMUoxNkdQb3RqdVdaWjZlRDFlNm5RdkRIZE4ycmpIWEhseEFO?=
 =?utf-8?B?WHhtbm11ZW1pUy8wN0NFaHpWSXlxR0toWWNyamNCVlUxKzNJczU4VWswV1M5?=
 =?utf-8?B?SXVxMm14bGVzMnFRNUhnNkdUcDkvcSswNlRpbHM2R0FsVmdPbkFjYTlqMEZ6?=
 =?utf-8?B?TlVDbzRZUE1PdGdZQUpKdlBtZXVCakFmK20yMTJORXZ4ZTRNTkZnSm5KbjNU?=
 =?utf-8?B?SmNWNHgvQytlWWxkTlJ0MDl2K2VYOWp5QjlDaDZVNmUzMUFuY0dmY1RkbGV4?=
 =?utf-8?B?T1hoQ1AwZUVnWlEyVEp4NjB6WWdXTExRY2Mrd0JmaTAzV1huN2lyQjlWWWt3?=
 =?utf-8?B?RC90c05JN05ZMXFnUmVLa0JHZnJROEVycnVoS3pLZ2Y1Z0pFVUNGR3p5d28y?=
 =?utf-8?B?WnNDNDRCY05ZT2ZkTG9pVVZCbGxlWUFjRE5FRHJNS0U2d3hJakRPa2RXOVhL?=
 =?utf-8?B?RHd2L240cit3SGw5ZnA2NnpHREdST0N2T0dLcW5SMFNTMVBDbStCbVMxV2lZ?=
 =?utf-8?B?UUZpeS9Oamd4QTduZXA0VGhVRlZaSm1FMG5ZU25WWHpYckNuTFhET3lYc1Bt?=
 =?utf-8?B?MmEwbWVtT295SGVucXFsUFJrV1ovVjdKTEJsVkJHb2w3VkV6VUcxN2RIYjhu?=
 =?utf-8?B?V1NVZEVhc3h0ZGZYZkNnRGRNVFA3SlEyM295N2hhZ2Jya0RLT2UvK0ttSDVK?=
 =?utf-8?B?NDNXS3JiTE9iV1FHWUZOdnVKT0RJSGltcjljUmd3bHVRaHp0Q2dvWVhJbUxS?=
 =?utf-8?B?UFJudUZOZ1BWVFhJaUwvMThicnV4OHcvVDkzY21nejF2c0hBWGQwN1JXU3VP?=
 =?utf-8?B?c3ltL2Z2ay9aTkFXNXYzZDBRK0ZRR1ZHQUwvT3krZ2Uxa3Q4UVBFZVNPVjM3?=
 =?utf-8?B?ZzVuVWJncXVLa1IrSkpGOExId1BCSThLVEtaSnFHM2liaEdFb2Z4OGZMbCsw?=
 =?utf-8?B?RTRQamVOeXhrdDRRMi9Jc3U3VlBTWU9oZFdweFFjczlJRHQ0TTRHcVZHV3pW?=
 =?utf-8?B?alpyc05abmphVjJmZ1pHT2owc3l1aDBCK2RQMTF3ZDlJK1FjeWRIU0hlbGJk?=
 =?utf-8?B?a0lKT2hHY3dOUmw2WElyWWZtajRiOEtYZDdtV1dXOFFnU3g1bUJQN3dFSmhG?=
 =?utf-8?B?VVFqSzQ0eUVteDVPT2MxalExRnRwVEtnelJoNHk3V1V1bGZ1RnRQeEV0aUFW?=
 =?utf-8?B?ZnZCL2taUUNwOWRRc0tpU2xnVjFpajMvZ2x6elJQdzVtZjB2cTdIVXEzNUNZ?=
 =?utf-8?B?enRaODRuckZDQjZyWGJ4eHptR0VPR3VnZVloUk9UQjA5bEU5SG56WmY1SkVU?=
 =?utf-8?B?b25VWHQyb3hMQkkzSEdtZnduTVlvdzZwa3BmVVpNak9GQVNHbElqVFBYTkhJ?=
 =?utf-8?B?SzNTQWZwNWpjdlQ3ait5RTV3MUdWL3JGbkJzeVhaSG55ZERPWWw4L3k0MXpY?=
 =?utf-8?B?SEp4UFZEMDRiTEpKdTVBei8vKzdIejdrRnhxZWVEYnVPSmZvZEtTTkgvT1Y0?=
 =?utf-8?B?Ukg4M3J6cTJMNEU1aGtnaXRhU3l0VUVmNlFQWFpIN0E3c0pxRS84dUdJTzF2?=
 =?utf-8?B?ZklhVWc1VXNMYTY3eE55NnR1NzREckx5R3UvbVd2VTM2RXNXRHRESi9GN2J3?=
 =?utf-8?B?eU1SQUpyV1ZGSlV0aWgyQy9tL2dTcGVYblBCeVJkWDM4YlVUdmx5blhkZDUy?=
 =?utf-8?B?VjFzZlIyQUpicUNHQmRVUVFWVFcwRnFFbEg4d1hKa1N5NlRRdmdGd1AxZnFo?=
 =?utf-8?B?eHdnR2ZpdkdxT3EzUGt4RXJVSjNCb1VsTW9qODg2cVhsYTBlUG0rQUtDeUFH?=
 =?utf-8?B?M2NnTk5Tb3ZrejVpK3Ric2F3VGRmakdyTjBNSDNYOWdkaWdoTjQ1UHZTTWxt?=
 =?utf-8?B?OVZCSE82b2NMY3U4dlh6NWE1aXQ3UGtkakNUUExJSXlrRm5HajZka2VaS1Mv?=
 =?utf-8?B?WjZPWjVHVmRXZHNocGRmSXd2d1BNTURRTFhxN0w5UWxEU0tCbTJLL2I5MXVo?=
 =?utf-8?B?Y3pUMUY1cHMvVndPRVRrdm93dkVSQlJDbGNqdXVoWFhXL0Q0Um8vY25vT2lK?=
 =?utf-8?B?Ny9GMG1tU25hU3E2eVkvMkd4dXVhMGM3ZTlrR2c2WjcyODB5WWRLZzJ4ZVBV?=
 =?utf-8?B?RkZ3YmUyQjc5Z28yc0JCTVBmK09JT1JmRXhYN1AvUTJEZE9VOWJuQURCMnlj?=
 =?utf-8?B?S0F1VUJGbmpTVEpCNHVRZU85aEJkbm9HZVgyUUFZcTk0cmJYcElZUldxby9Q?=
 =?utf-8?B?V0p0WHhPYTd3eDlOMi9OcTBBaUJUMHRBSFFUV2k1NWZBUTZ6VWxJR0YvWDI1?=
 =?utf-8?B?WFM3ZnFNNVV1TGpIOVZjb0FLb1dYL0ZoZDNTU3JCY1BkYTBURlpjbXkyWmNC?=
 =?utf-8?Q?ZLy6C6lYRHKN5jmE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a2747d98-5c03-448d-e00b-08de7382b248
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 08:57:10.9552 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UCI+L2bQZMxMUk+1ZiKmt4BUaBqm5knMTRZRrRtXHRUoig20w9qyiTrVewr+dL4XCGQ8PUrHu3oKYkGbALlspAc4XH5AWnn6gtu3RtWW+dM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6870
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771923441; x=1803459441;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8CcOXLmq4/iouvhmrH8pBE9Xajkh/OTP9Cu1Ax/dELk=;
 b=SS/DqTq9C4z34v3eQQz58lWGL0lDJdo+jab2PU03Xo0VvRmXj+fCakm1
 1WaOywJv4DOQ+RJZ/hOqEUdnctonaiQDs7pCDmzj7N5c7rOcs7ne/hgZO
 sBagt2OxUTn37XBOYS09iKtnlG5DY/xaL4IW9DPWJSOLug7IRIjc6SLFI
 ak2jGt0rQW66Ub2ouOpTbb8ZrUFzzorHfbWHuATD35/BcKAY9MXma0Tn2
 K4CAGmsiIjTNPPA7URnKZiG4Bb6BX1yh+LsM3DL4mUOx5FR6tRL4DIqYN
 bJmEqeJwQ/ZQEj28gnVBo0pUlJ1RKxpxX5IR3MQOuqT6pFqnSKxV47vIr
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SS/DqTq9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: dpll: Fix compilation
 warning
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.996];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,intel.com:email]
X-Rspamd-Queue-Id: F3D3218419E
X-Rspamd-Action: no action

On 2/23/26 15:31, Przemyslaw Korba wrote:
> ice_dpll.c: In function ‘ice_dpll_init’:
> ice_dpll.c:3588:59: error: ‘%u’ directive output may be truncated
> writing between 1 and 10 bytes into a region of size 4
> [-Werror=format-truncation=] snprintf(pin_name, sizeof(pin_name),
> "rclk%u", i);
> 
> Fixes: ad1df4f2d591 ("ice: dpll: Support E825-C SyncE and dynamic pin discovery")

thank you for the fix
this is a correct tag, and a correct target

> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_dpll.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index 73a4e28ed75f..f101fdb3e9cf 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> @@ -3532,7 +3532,7 @@ static int
>   ice_dpll_init_fwnode_pins(struct ice_pf *pf, struct ice_dpll_pin *pins,
>   			  int start_idx)
>   {
> -	char pin_name[8];
> +	char pin_name[16];
>   	int i, ret;
>   
>   	pf->dplls.wq = create_singlethread_workqueue("ice_dpll_wq");

3537│         for (i = 0; i < pf->dplls.rclk.num_parents; i++) {

upper bound of the loop is u8 (ok), but we assign it as an int (good)

3538│                 pins[start_idx + i].pf = pf;
3539│                 snprintf(pin_name, sizeof(pin_name), "rclk%u", i);

compiler tries to be too smart here


anyway, it's better to have that warning gone instead of waiting for
a fix in the compiler

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
