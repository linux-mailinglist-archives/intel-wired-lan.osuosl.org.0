Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8974C98B55E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Oct 2024 09:20:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B1BFD81224;
	Tue,  1 Oct 2024 07:20:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l6FlXDIFOsFT; Tue,  1 Oct 2024 07:20:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7456181225
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727767228;
	bh=7/n/wB0rFjubiS8v5xWB/Q3UcFqV9K7PgT+22UkH76c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j00vvCfnshFQagsXE3S+39jCw4XIeG7mfWV7HVF2eAdWKgjQXVlh3xBn2CeXbm5CA
	 AF/g+jFpdbAavVN8QkXR9EFmRVJuufvLFivqs2+MyLQ0UHK0NN5utKdnQ0BxNfTjI3
	 OFQp9I43aySmeQb53iDOoV6bnl8Dj87qUyeyQXxWuhZdee0cGqWo79wYdWj2jU88N3
	 S5fStCq/2Q9fmY3xosNFMa5UdSyhjHWSgqWT0LyJo92i451cUrc2MKx2xAWcnGwxmP
	 nQd1UY4S7aEVb+fLacbf7KV3/XhV4iwx8I23gSuHLnk66yHl0sg8EqO+Tt3itt7wGJ
	 1vV0fsgQviP3A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7456181225;
	Tue,  1 Oct 2024 07:20:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DB70E1BF284
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 07:20:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C9025607CC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 07:20:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3GbUEZMfm3P9 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Oct 2024 07:20:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BDE74607CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BDE74607CB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BDE74607CB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 07:20:25 +0000 (UTC)
X-CSE-ConnectionGUID: tFoPhuzbROCOvNyB9qltGw==
X-CSE-MsgGUID: PNpZQN7yQvqtatSn2PBWqg==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="29768143"
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="29768143"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 00:20:25 -0700
X-CSE-ConnectionGUID: 6rA7PtoRRpeVt4n94/kpgA==
X-CSE-MsgGUID: Udru5pvtTDyxKmydSeEEeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="78535750"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Oct 2024 00:20:25 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 1 Oct 2024 00:20:24 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 1 Oct 2024 00:20:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 1 Oct 2024 00:20:24 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 1 Oct 2024 00:20:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lSZHS7Nwh92jL3wEMzL+0+TbChEvlGurodAJMh08VbueZCD77sUm0FdjQbeyj6m7P34e81/dEjNy1KEPtLIsb1idVlnyGWZPn+BGNJ7RdACAhPWepXmE5hU2g6+EwnU3S5cvAJ6Tg1QoLkWFihtO5QWlRPp/N7p63/rBIVmqEdAe5Q1HstdKlAGX6TO335QkqXFthba6/rgg3HTTrdssdDLhPLOQ0tu/EBZEeuqXcCL+e0lSCV4QhOzILLNGzhaLtQDveLj/1cCwaTEJb95nmcGAwDixDKIt/7cTdVfrsYB23QhkM0J9xNOAJy8gL2eGx9yXTTQmTxzHDuPbW7s+Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7/n/wB0rFjubiS8v5xWB/Q3UcFqV9K7PgT+22UkH76c=;
 b=cum6h/0jbv2h1igKyf3PnrPk6+jC+hzzaXfawav+8pkXJvyi/EXgr3gGYitjpT5dJZQVXrkv30dhwvko+nKGiflOFz/evR3y6uvC2TPaVtPBhSjx3S4+DXAIyOYAIxRNZ2slYufawCG71jY4coCG2ENUkMIwl9JcU9c9jSHPGJ7UPlm/9DVG9Uqd1fOHlVTD4RMrca+qyJaIaK+Wi1YyqzYGsJP24hTDAZMe6w3rOMNHTxVgExSMiuEsyu9ejxqCneS3e48SU8NGOW9gX3nNlBHcre8aFYTeP/rhVXlkFYnSzYxx0FBUSvoN1+igCwnLo7JwwsZv1LLUa552Fdmrig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by SA3PR11MB7535.namprd11.prod.outlook.com (2603:10b6:806:307::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.26; Tue, 1 Oct
 2024 07:20:19 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b8f1:4502:e77d:e2dc]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b8f1:4502:e77d:e2dc%2]) with mapi id 15.20.8005.024; Tue, 1 Oct 2024
 07:20:19 +0000
Message-ID: <1d4f2504-efa2-4121-b176-11777d043b41@intel.com>
Date: Tue, 1 Oct 2024 09:20:14 +0200
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>, Wojciech Drewek
 <wojciech.drewek@intel.com>
References: <20240821121539.374343-1-wojciech.drewek@intel.com>
 <20240821121539.374343-8-wojciech.drewek@intel.com>
 <9e708174-d6c0-4b8b-9a0d-5807463d6c43@intel.com>
Content-Language: pl
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Organization: Intel
In-Reply-To: <9e708174-d6c0-4b8b-9a0d-5807463d6c43@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0016.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::12) To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|SA3PR11MB7535:EE_
X-MS-Office365-Filtering-Correlation-Id: c44bdb13-c2fb-4776-d07d-08dce1e9813c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V3J0MWZXcmh5NFh3OEtKdTRySjR0YzE4d3Iya3E4K09vT1pRY2xJZXlpeUY3?=
 =?utf-8?B?a1ZUajhPbmh4QldkMXJJbTBpM2toS3FQQ3prZjAzQ2x1ZTBWU0ZFRDRSOWEy?=
 =?utf-8?B?OWxINU9XeERzcHk2ckQvb0pGdEVWUDRsczJIZ1kzYzdlOFVNZ1ZNMk5KT1No?=
 =?utf-8?B?SVRSZVJzQ1JuNTlQSDVaK2tBbkhCa2pnTnNmSTk4clJDVERJOXhROWxkUEVy?=
 =?utf-8?B?MW5pTEpuczB4Y002dm9qb2xyOWQ5QkwvamZtbExrbmo1Y1FQb2piUlFSMUJq?=
 =?utf-8?B?WWtJK0I3SDNQeTZmSEFWYUpoOVo2ajdjd3V0UERPQTJFcnBiOVA2V2hSM3dV?=
 =?utf-8?B?SUFPVHd0b1k0ak5PY0ZWcFI4MVNJczQ5STh6L3VqSEJzM0UrMjZ2NVpvL0JZ?=
 =?utf-8?B?RFg0N3JwcUlKWkdIL1lzS0ZtVHVqWkdIRFdMVlZDK1RyR2lGOXMwRlZQTHhN?=
 =?utf-8?B?SC9WVk9BclJnMmloVGNHMGR2WFpMVnF5amNubG9XZnBBWFJaRzJ3WVFOdGVX?=
 =?utf-8?B?K1JWYnlUaHA5aTdGdWVjMDlNYjFvWjF6VGtpYWdtY2lHYkEzNXNGQUlZSjAx?=
 =?utf-8?B?NWd5c2ViQm9EUWhvam9yZ3FnVmpCYjVtYnE3eFNMZE5TZkRyMS9PQ0lxdWZF?=
 =?utf-8?B?aFNSR1hZZVFydVlHZysvT29rSWZQb3VMOVRIWGl2VGxGNktLT0pjZkU1Sngy?=
 =?utf-8?B?WTUzaGo2MGx2ZlRaTlJhejNVQk43U3NmKy9sZm1peWRVaUFnQ1NXbStEUUl1?=
 =?utf-8?B?bHUvUTdpenY0MlRWRUQxN0JudjNaYmt3dnpmRlc3UWNZdkRwMk5TK2xiTlU4?=
 =?utf-8?B?S3d3VG5TMHdZVWtZU3F2RmRGVzcvRStOUEtIUTdpbk9Bang2Z0c5YlZlUXBE?=
 =?utf-8?B?azZBdjc0eDNXUTlIdHlqYmtFYk5FNjVueTFrWG5YeG5sdzJKdWFZUU04OExL?=
 =?utf-8?B?R3N0d0JUZkhXZElQVjlhTEExdFE2L01rL3A4c29CdWNldGRhUS9CQnVIWlQ5?=
 =?utf-8?B?UGMySU9BUXA0R2FCYUFmaG1WbHZXemdLNmR5endvTW9aLzVuLytGWTVNMEN1?=
 =?utf-8?B?aE1oZjRMNVNNS21TalRJL3AvZjdrd0dMRFVmS1NEdGFGSFJHa2cwTW5MUVRu?=
 =?utf-8?B?QjFWTUZFZWErSUtvVmdqOFBWS1hRSUNNeStnMlo1M3JqUERkOURhejhBS0ZM?=
 =?utf-8?B?TkMrcHJabFk4OVB6T0Rnelp2ZWczZFZkTGtxVkdzSzJrOG1ZcHBtWlJlQWZU?=
 =?utf-8?B?UWJQSzJ6OUxsZnM1bEpaeDhodDhvS21vZDloR0JxWDRsMytvNll5bjBFMXlQ?=
 =?utf-8?B?R0kzeFZHSHFranFaSWc3RUVsYkxLaXVNMzgxVFk4QkRpUXd4Z0tXNlRKbDEx?=
 =?utf-8?B?aFFPbWpWdnp4QkdxekxjT0M3RCt4Ykpqdk5aaUxRUjY2YXpFb3Z5WWZpQUZK?=
 =?utf-8?B?RXJyVmhNNUNQSXpmRHNaZm5nSW9JbjdBcUVLRWlWb25vYlIyaFBLeHVNQU8r?=
 =?utf-8?B?VUNMTC9oVEp3eE9Uc3AvYVJSRFVJVnVwTEc1QUkrYnVrL1VxL1hza1YvcFlB?=
 =?utf-8?B?Zkw1a1AxNWNUcXdmNVFoengwMzEva1dndTdZcm1iOTY4NmhsUVlJU2NsNVRn?=
 =?utf-8?B?RDJKQzRxZmtnYnZBT1p5NkE0eGliYWhCQjIvKy92cktFemNSeGNrN2xmaXJm?=
 =?utf-8?B?Q0hKUmpZZHdBSjlhR292N1FUTU8rSWpZUWJVOWhoV1NDVGZTdDZxNjlrRWdL?=
 =?utf-8?B?bWlGTXB1bTA3a1NrMEo0WW1uTGYzZERCN2VnT2FMK2NCZHBmbkVXMnVNaVAz?=
 =?utf-8?B?WUdUQVhvYlRUK21aVEFidz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UE1kYWpXQ25XUml0Q05yVlhOYTltV0dMby9nV29WeE1hbjNBa2ZBYWxJaUky?=
 =?utf-8?B?Z3NIUitLWkxuTUU4SFhHUXdYZ0FOMUF4Z3dWaFp2c2lvVGlBUTZkOHlobGxt?=
 =?utf-8?B?Qkc0eU5QeEc1S0prQkoxYWNiZFhtWVFtNzYyOGRBMG45SmNVaFlYZGZCRTZI?=
 =?utf-8?B?MFdwS21MWDlmcG1mQ3ZxZ0hlcmZST3Rta3NIaGZyaXJkWDhsRjd2WENhTmFP?=
 =?utf-8?B?cHdIbTZiWTdTNHpxYlF6K1RmczRzY21lUzJ4SllaSStmRHNuS3Z6QTVsOE9T?=
 =?utf-8?B?RWRUTFI1eU9JOFcxWE1GZitTbklNbWFaUmZpcWk1Kys5czljR3pjbnNuL0c4?=
 =?utf-8?B?WDRzZmlZem9yTVpRNWZWRDlNV1dPYkk5Z0JYdzJrNHNsNUo0ZkhlK0tmeUpq?=
 =?utf-8?B?cW9jZWExME5SdUV0RENaWEp4VHM4bE1tTlRJb2wwOUEwbnFxTEtlYjVPU0hG?=
 =?utf-8?B?bjhtcHFYaXZWSU9oRXFQa21QMXBLaDdVb2FRMjR0dld0amFLeDBpZ0lqQTlG?=
 =?utf-8?B?M1hFZElHNG9BQ0NBU1oyeEh0KzRaaWFDeXFJTUkxRDBQaXVwVW5PWFl0cGhI?=
 =?utf-8?B?ODBGQnZMTWFWSnN4OHFuVzhwbFIwL1gvYnNYdXpkSG9sN0kwaU5NSnBiZVNG?=
 =?utf-8?B?RlY0OVBLN0pNcmNSTkZ6TWNvLy84Y1hWbkRDMVpnMW9oa0N3WFo0UlpMRmZz?=
 =?utf-8?B?SFQwVkp2SWMrUldUQTNPUDBmSVF4a0NrZUtmWmFkK0ZiYmVOeUQ3cUtZam1n?=
 =?utf-8?B?cTFFRkhTQ0ViSW1wWjBxVDBGZndjbkFWMno0OUpvbW5qdDNKaU8vOUNiQkFu?=
 =?utf-8?B?MXliNmtNZ2YyNyswdFlUMGo5VkdUcjRRYkRwWTd1S1RhdVliZTErdW1zSmNu?=
 =?utf-8?B?UkF4c0hDeEVMTy9KemF1K1V5R04vR1RDSzFKMEVpYkh6eW13Q050OEt6ZS8w?=
 =?utf-8?B?bTI5MHMyb1RkdHRFT1VZazJRckFlc1RaL05DN0Jpc1FFcC83WnVYYkxtZEtK?=
 =?utf-8?B?V0ZoaWJYRHAyUFh0QnVGM2Zwc2MzMEJYV2VsQzNVb2dIQVloK0xjMUorY2RI?=
 =?utf-8?B?Sm9HbmIzVXBmRFRRZ2NlcEFaMTQrcDZJWmc1L2lZcFpSblROQTdzaW1ZMFNI?=
 =?utf-8?B?RTd0TVJva085ZHo2QU9qSTBQdlJyZG1JQTQyMGU2N0c5Yy9LRy9IUmtwMnR0?=
 =?utf-8?B?a0M4OFh6Y2FmRW5nTERDaXdDNW5SZzNmcDYrbzBQeVRRK2o4UDVyckk4UTVl?=
 =?utf-8?B?UUdPN0xKV0hwWEI4ZVhNeGM2RjE3bTE4WVhUNXBKS2VqNU9XckFRdXN6YXdh?=
 =?utf-8?B?aHBNUEFQKzJtRlJEUGdUZFBYZHhhSDZOeEtkd0trSDF5aWt5ZW9BeUhZSVJt?=
 =?utf-8?B?ZE5FREZQVU9NU09GWG01SjgrejRJV0V6U2hOcDI0R25uMHpjZzc2ekpweVVj?=
 =?utf-8?B?b3QxbGFneVVLeGhicExQanlqaExXOEEvTEo0YUI3SUxSWWVVTUhiclMyRDZa?=
 =?utf-8?B?VW1IVjRRWTFYRi9kcTlLVW9NWmVXeEZmbi9oSlZaY0s5YlFwVHdNaCtLY0Zj?=
 =?utf-8?B?ekhkeVR3b0wyZFBvTUxPRjJaa1Q5WENUM3JKTGlqTnZOeVlKQ0ludXN2aExj?=
 =?utf-8?B?QlpuaU5uTTc3cWFrckpHTlg4NFluY0M3aStZSlRNbmY0bG1RQmpGMzF2dmdH?=
 =?utf-8?B?Rm9XbjZ0ak5YejVtWkhMQ1BkNFROYmJmTURJa0w4VGh2ZGhadklNRVV1NWNn?=
 =?utf-8?B?RFZsSWl4U3RBWkVTV3hFN1NYUXpZZ1dhZThyaWFIS2F4STcvUTRrbzd6Q1N5?=
 =?utf-8?B?bEsrV2R3aDJZTW12RERrbEd0YWVuZWlvWGxmWlBjQjNpUE1UeS9MamFVVnJt?=
 =?utf-8?B?eXFiVmVRaUVWa2xXQ1NBd2R0bGR6MDhONXpWZkVPYzVHejN2NHBTN3pTeUVN?=
 =?utf-8?B?SU1LTENkZUNWNjI3MXRya08wMFpITWNCc2tVb0YxMWlkNk83VjIxV3hxbzl0?=
 =?utf-8?B?dTc2MEpqQXppWEJjTjFub0dlNzY3K0cwbkN3OVhHWWtpbW5pTFU3cXZscS9a?=
 =?utf-8?B?T2lnUndkdDR5YUV1SmZmVE5PbldvOG44Mi85cWloSnVaQjl1c3Buakd2aFJ1?=
 =?utf-8?B?U1krMFQwcE5pRWlJTjZxeEVUaiswS0xwc3lBb1pLT0hLUmVDZ2NXSGRBcXRv?=
 =?utf-8?B?UFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c44bdb13-c2fb-4776-d07d-08dce1e9813c
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2024 07:20:19.3765 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GbPMZz3r3Ud+Q1+Vdc60JeeMy8pY7ONayarCiU/RiMcyqLt1gis7vk+iJTf1hL15m43qvQxwrB5OEUFfU4x9MAwAXuakSxhkjG2345karPA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7535
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727767225; x=1759303225;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+c1/OmlRIBq4vB14C2l6QW2HZ2MUWhO+wVxo9dyXPws=;
 b=Jk1xcQTbojq9HXSd9ZerQ75RsGQJKSYmulwgHBHefSxyAJaA9t2Y3frH
 ty/b5nGy7Cm6eATV5o9LVJ0YIVuOo9gdELHX60nXfi/IYSDbQiz/vi3DQ
 1Pw0J5e+lLPPnAoy8voVrNeGmCV+b9q+DvWmuKHm8w9EbmgcZDF6aCs0y
 unIrbeV/pOEOmaEMNCizNzNR3bCaI0m2VMMLIhRj+e59p3UkWxNuEXIDg
 WjUG0bacv0FM20E7pCs0JnnUTPeubUlFK8fBKBr7AwNhwWzKJ4DEJ8XCY
 7SJStGDZn+5qF+ag7TfYNRF9aiPY1YVC7ziPcW5RlYZVtTbHqPmGSmRyA
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Jk1xcQTb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 07/14] iavf: add support
 for indirect access to PHC time
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
Cc: netdev@vger.kernel.org, alexandr.lobakin@intel.com, horms@kernel.org,
 kuba@kernel.org, anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/21/2024 4:31 PM, Alexander Lobakin wrote:
> From: Wojciech Drewek <wojciech.drewek@intel.com>
> Date: Wed, 21 Aug 2024 14:15:32 +0200
> 
>> From: Jacob Keller <jacob.e.keller@intel.com>
>>
>> Implement support for reading the PHC time indirectly via the
>> VIRTCHNL_OP_1588_PTP_GET_TIME operation.
> 
> [...]
> 
>> +/**
>> + * iavf_queue_ptp_cmd - Queue PTP command for sending over virtchnl
>> + * @adapter: private adapter structure
>> + * @cmd: the command structure to send
>> + *
>> + * Queue the given command structure into the PTP virtchnl command queue tos
>> + * end to the PF.
>> + */
>> +static void iavf_queue_ptp_cmd(struct iavf_adapter *adapter,
>> +			       struct iavf_ptp_aq_cmd *cmd)
>> +{
>> +	mutex_lock(&adapter->ptp.aq_cmd_lock);
>> +	list_add_tail(&cmd->list, &adapter->ptp.aq_cmds);
>> +	mutex_unlock(&adapter->ptp.aq_cmd_lock);
>> +
>> +	adapter->aq_required |= IAVF_FLAG_AQ_SEND_PTP_CMD;
>> +	mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
> 
> Are you sure you need delayed_work here? delayed_work is used only when
> you need to run it after a delay. If the delay is always 0, then you
> only need work_struct and queue_work().
> 

Sorry for late response but I was on quite long vacation.

Regarding your question - I think it is needed to have
mod_delayed_work() here, at least as for now. I agree with your
suggestion to use queue_work() but this function takes as parameter
work_struct and in our case the adapter->watchdog_task field is of
struct delayed_work type. It uses the function iavf_watchdog_task()
which does plenty of things (including sending ptp cmd). Changing
adapter->watchdog_task to be just struct work_struct is not applicable
here as in iavf_main.c file in few places we add it to queue with
different time.

Make long story short - I agree with your argument but as far as this
0 delay is not causing performance regression then I will stick with
this solution implemented by Jake.

>> +}
>> +
>> +/**
>> + * iavf_send_phc_read - Send request to read PHC time
> 
> [...]
> 
>> +static int iavf_ptp_gettimex64(struct ptp_clock_info *info,
>> +			       struct timespec64 *ts,
>> +			       struct ptp_system_timestamp *sts)
>> +{
>> +	struct iavf_adapter *adapter = iavf_clock_to_adapter(info);
>> +
>> +	if (!adapter->ptp.initialized)
>> +		return -ENODEV;
> 
> Why is it -ENODEV here, but -EOPNOTSUPP several functions above, are you
> sure these codes are the ones expected by the upper layers?
> 
>> +
>> +	return iavf_read_phc_indirect(adapter, ts, sts);
>> +}
> 
> [...]
> 
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.h b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
>> index c2ed24cef926..0bb4bddc1495 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf_ptp.h
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
>> @@ -6,9 +6,13 @@
>>   
>>   #include "iavf_types.h"
>>   
>> +#define iavf_clock_to_adapter(info)				\
>> +	container_of_const(info, struct iavf_adapter, ptp.info)
> 
> It's only used in one file, are you sure you need it here in the header?
> Or it will be used in later patches?
> 
> [...]
> 
>> +void iavf_virtchnl_send_ptp_cmd(struct iavf_adapter *adapter)
>> +{
>> +	struct device *dev = &adapter->pdev->dev;
>> +	struct iavf_ptp_aq_cmd *cmd;
>> +	int err;
>> +
>> +	if (!adapter->ptp.initialized) {
> 
> BTW does it make sense to introduce ptp.initialized since you can always
> check ptp.clock for being %NULL and it will be the same?
> 
>> +		/* This shouldn't be possible to hit, since no messages should
>> +		 * be queued if PTP is not initialized.
>> +		 */
>> +		pci_err(adapter->pdev, "PTP is not initialized\n");
>> +		adapter->aq_required &= ~IAVF_FLAG_AQ_SEND_PTP_CMD;
>> +		return;
>> +	}
>> +
>> +	mutex_lock(&adapter->ptp.aq_cmd_lock);
>> +	cmd = list_first_entry_or_null(&adapter->ptp.aq_cmds,
>> +				       struct iavf_ptp_aq_cmd, list);
>> +	if (!cmd) {
>> +		/* no further PTP messages to send */
>> +		adapter->aq_required &= ~IAVF_FLAG_AQ_SEND_PTP_CMD;
>> +		goto out_unlock;
>> +	}
>> +
>> +	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
>> +		/* bail because we already have a command pending */
>> +		dev_err(dev, "Cannot send PTP command %d, command %d pending\n",
> 
> pci_err()
> 
>> +			cmd->v_opcode, adapter->current_op);
>> +		goto out_unlock;
>> +	}
>> +
>> +	err = iavf_send_pf_msg(adapter, cmd->v_opcode, cmd->msg, cmd->msglen);
>> +	if (!err) {
>> +		/* Command was sent without errors, so we can remove it from
>> +		 * the list and discard it.
>> +		 */
>> +		list_del(&cmd->list);
>> +		kfree(cmd);
>> +	} else {
>> +		/* We failed to send the command, try again next cycle */
>> +		dev_warn(dev, "Failed to send PTP command %d\n", cmd->v_opcode);
> 
> pci_err() I'd say.
> 
>> +	}
>> +
>> +	if (list_empty(&adapter->ptp.aq_cmds))
>> +		/* no further PTP messages to send */
>> +		adapter->aq_required &= ~IAVF_FLAG_AQ_SEND_PTP_CMD;
>> +
>> +out_unlock:
>> +	mutex_unlock(&adapter->ptp.aq_cmd_lock);
>> +}
>> +
>>   /**
>>    * iavf_print_link_message - print link up or down
>>    * @adapter: adapter structure
>> @@ -2093,6 +2151,39 @@ static void iavf_activate_fdir_filters(struct iavf_adapter *adapter)
>>   		adapter->aq_required |= IAVF_FLAG_AQ_ADD_FDIR_FILTER;
>>   }
>>   
>> +/**
>> + * iavf_virtchnl_ptp_get_time - Respond to VIRTCHNL_OP_1588_PTP_GET_TIME
>> + * @adapter: private adapter structure
>> + * @data: the message from the PF
>> + * @len: length of the message from the PF
>> + *
>> + * Handle the VIRTCHNL_OP_1588_PTP_GET_TIME message from the PF. This message
>> + * is sent by the PF in response to the same op as a request from the VF.
>> + * Extract the 64bit nanoseconds time from the message and store it in
>> + * cached_phc_time. Then, notify any thread that is waiting for the update via
>> + * the wait queue.
>> + */
>> +static void iavf_virtchnl_ptp_get_time(struct iavf_adapter *adapter,
>> +				       void *data, u16 len)
>> +{
>> +	struct virtchnl_phc_time *msg;
>> +
>> +	if (len == sizeof(*msg)) {
>> +		msg = (struct virtchnl_phc_time *)data;
> 
> Redundant cast.
> 
>> +	} else {
>> +		dev_err_once(&adapter->pdev->dev,
>> +			     "Invalid VIRTCHNL_OP_1588_PTP_GET_TIME from PF. Got size %u, expected %zu\n",
>> +			     len, sizeof(*msg));
>> +		return;
>> +	}
> 
> 	struct virtchnl_phc_time *msg = data;
> 
> 	if (len != sizeof(*msg))
> 		// error path
> 
> 	adapter->ptp.cached ...
> 
> IOW there's no point in this complex if-else.
> 
>> +
>> +	adapter->ptp.cached_phc_time = msg->time;
>> +	adapter->ptp.cached_phc_updated = jiffies;
>> +	adapter->ptp.phc_time_ready = true;
>> +
>> +	wake_up(&adapter->ptp.phc_time_waitqueue);
>> +}
> 
> Thanks,
> Olek
> 
