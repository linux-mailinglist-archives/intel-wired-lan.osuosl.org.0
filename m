Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9527CB3AC96
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 23:14:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 56ADE412A2;
	Thu, 28 Aug 2025 21:14:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OcBhBvrEQZ1m; Thu, 28 Aug 2025 21:14:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A0F6B412A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756415653;
	bh=OzPK6+Ds/hvEdZ4LCrIdllEPDlhG1vcLBvsFjztwSEY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ni/RD3TR/2tI8Cfm1D9tW+emwz2AXK0YgY9VrSn7X6fQaK4APssmHCK2VBE6LkcY5
	 HdIxXhnzHBUk3Y7Ya6Rxigkd6EAU4bq+NtYGl9FtNobn2vfqx7eq2Kq3si8+pTkTNr
	 bh2INxHI3IYS+fZgh32uWI0UcPNxPcszkXs+sUhz6Wr4UR/dNGgKM2hwmB4krZN9ds
	 Sb99ishG59tOBo/ru67MRJhM8DuGSe5xj/lgrzbQ8kD7xE4xLmiruNjQSENXhb8+tg
	 GZS1OmQrjfW3Erswn9amhxlqgsSK5MHDdTe0Qpgm3J6LQQSGvOl1OxkMUFgkgBKilc
	 GpU0BfYqyKOwg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A0F6B412A5;
	Thu, 28 Aug 2025 21:14:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5E61292D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 21:14:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4FA9B412A0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 21:14:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dr4vu6QOMn12 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 21:14:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 873DE4120B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 873DE4120B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 873DE4120B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 21:14:10 +0000 (UTC)
X-CSE-ConnectionGUID: ocei1B/HSoieh2ei7KRtQw==
X-CSE-MsgGUID: qOi/u/ZNSJ21xrqgeAM0/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11536"; a="76148598"
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; 
 d="asc'?scan'208";a="76148598"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 14:14:09 -0700
X-CSE-ConnectionGUID: xwoqbnF/RhygtwMcxNqADQ==
X-CSE-MsgGUID: 8XsBozHlTB+BItGZeXd0AQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; 
 d="asc'?scan'208";a="169468603"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 14:14:09 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 14:14:08 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 28 Aug 2025 14:14:08 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.58)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 14:14:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s30r3G47c/x9Lkm2nv8qtKaMTGJZUZmoMFOUNxV2F+ZoI/Ohu1xDe0JeHyWCwfsItWQjCOpZdH9SyrwRfIMXKhPPVPHfr1YOaYMEAeyYERFnqEQM91MTDPn0HP6gLdYivILCDwNjaTD5hQ8v6RUIZL6aGMakxg4iihObtL4jpV9v+QkF2/TACbrpMUBeQ5HULJ10Ymq/KVPhU1r5xuOxMnPGw5eXzR8kiGe1q02J18CKUpbZf3MKH+OfAmXtJC75zZo+G9gs5lsY7qZGePvHt/m1xPjVUKAav/CIlj9asvIsggew00JqZ8je42yL4MHIrlvbyxGt4J5gniADvW0siA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OzPK6+Ds/hvEdZ4LCrIdllEPDlhG1vcLBvsFjztwSEY=;
 b=HS1ppkGyJqqzXF3Md8I+p447pTcAl0iZFQjSiIJ9VAdoFkhROJtQLGthjs3BSoD1P54b1kTviTZ5Qxnx93UYLGZT8C83mKGd6JChgoxRzxX/6b42uWCr3QZetXnl0Ij/Zjn/+GmNkxp/Q/S5CmSu/Mrco2fwxxTsdw6z0YA/eekNyEyPCGbvJg7wCnanxadW2JDwsL9HhY35BFjVu7ZLHIncRHpWSRq3xxqM4GBQ/97Fue7qk0afdeBU9V7GPGKJbrkDKEkkdm3bdiTmtrXciA9jrnTNB8MrKgcBaFs5kUaLkFK6yKEiydozzZjSEKWX5kHYHez/hcOFKpqooATDPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MN0PR11MB6277.namprd11.prod.outlook.com (2603:10b6:208:3c3::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.21; Thu, 28 Aug
 2025 21:14:02 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.9052.019; Thu, 28 Aug 2025
 21:14:01 +0000
Message-ID: <888030bd-437e-4a40-8205-41417a8df7b6@intel.com>
Date: Thu, 28 Aug 2025 14:14:00 -0700
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
References: <20250827-jk-fix-i40e-ice-pxe-9k-mtu-v3-1-14341728e572@intel.com>
 <IA3PR11MB8986CC2D4EF48CA3678C668AE53BA@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <IA3PR11MB8986CC2D4EF48CA3678C668AE53BA@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Olo7UYT390tC3hBf7pkA0xtJ"
X-ClientProxiedBy: MW4P223CA0010.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::15) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MN0PR11MB6277:EE_
X-MS-Office365-Filtering-Correlation-Id: 27dbb695-ae60-4c32-eeed-08dde677cfbc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aEhkZnRVWG5PME5XS28zNnNkYkZVVFc5MU5iN0FCMlBXc3pIb2Nka2FheHAr?=
 =?utf-8?B?OVp4bENuMDRxWEMwLzA0VU5xQlcrKytKL0xvU0p5cHNFb1lTSE8rWThwc0JJ?=
 =?utf-8?B?TWZLTExER3JmTXcycVRSTnE4eHVKL05QMTlQbUR3N0Z0UXBxY3VvaDJtREth?=
 =?utf-8?B?WmZEUjduTUV2cEpjU3RHcUxzeU04TUFuSWIzTjZLdDJCK1FhdjhXbktmSlBn?=
 =?utf-8?B?VC9JYW9YamgyR0ltVHAwbDVxcTgwWnF6ZmJoZGxwL2dvUCtQMm02Z29NemZM?=
 =?utf-8?B?L1RxQmZpYlE2dStSK2p2K3FGRXpmQzVCUnNYRStHcjVZTE1WUDFrUEZTRndG?=
 =?utf-8?B?R0wxSlA2WUlINDdscENpWlJVOUV6WW1lV3hydkZOeVk4MUR0Ly9VVEpUaGh6?=
 =?utf-8?B?MmVZUlQ0VmlvZ0VRZFhCREdPak1WekMveHJ6cm1WY3FYakN0WGFMc2ZMTTdO?=
 =?utf-8?B?OSt3Nmp0cnlHeXRldmVUUDZVcHpUVWVPMXdMdjZrbEkwQWZDZFpReUR4bWM2?=
 =?utf-8?B?QlFxOFNqblVLdWdnZklaMnZzZ2c3RnZDSVVJSjFoWTNnWWJWVlBDMzJoY3pm?=
 =?utf-8?B?cDZkN3pZUURYdzVLcmE3cXJrMHJ2ajE0Rlg4a2xLNmdPK1JQNVVKZlJxTTNw?=
 =?utf-8?B?K0ozTEZ4M3FYU3NHUHBGOE9uYm9ncVAzMitoc01ZSWFCYjFlSzlPekF0RFpZ?=
 =?utf-8?B?NlVOb29USXpHLzVFYkQ4YXMveFBsN1BqN3FDMnFHY1dDb2hFcElKbTd2NnBX?=
 =?utf-8?B?b0VZRVVudHNYY0Q0TGhDVzV4VjB4UERzNzAvRm0xQjlxRFcxdnJycng4YlFa?=
 =?utf-8?B?RzhUbDluemNDRVZDa1NuaWVCc0hYMGVvUE8ybW8rQjcvbWcvN1RoVEJQZ3Az?=
 =?utf-8?B?dU03dG9sajZlWkVQM04wMkZUNFpvVkhaZHlSUDZBMHlvOEFHZitqdytWTVlK?=
 =?utf-8?B?MUxWenhBTkRpQWR1Z2NBOTN5TWliYWFzWlh5ZFIyNU1kOFJQVk54RG1UZFBx?=
 =?utf-8?B?VVFaNTBjVHB2ejdTZWJXVzhsbXI2dko2R2t1WXlaK1QrS09XclVRZStsbXph?=
 =?utf-8?B?cDdOb0NTa0NYVkpZbzVHVDFTZXFwd01reVdWa25iMC91OWtzUUlZNlZNODVS?=
 =?utf-8?B?QXJyUnNYTzA1YUIzdi9QWGhCajNtOXJFYW9wazNIV1lXdk1zWVBkK01kaDZ1?=
 =?utf-8?B?ZmFLRUZpbmtuRkprK2pFcU9Ma3ZGWWNrS1ZTMlU2ZU12RlVyM2c5WnB3MkpH?=
 =?utf-8?B?RWprSFNFSUU1bkZmWTJSWlBrek5TbXY2N09yTW5IcmNOZFVpNXNNR0FOTEhJ?=
 =?utf-8?B?MW5semMreGZoOXpzeGNTL2hST3FOTThMOHdSYlAydG1hbG9jZUdoYmRUNUZC?=
 =?utf-8?B?ajZYWEVMWkdzUTZVc3prSXQxOUhYakY4a2tmUTFLYlo1QWxrcFYwcTZrYzU2?=
 =?utf-8?B?Q09HaFRNV1RkT1ZRNk9ZWTJhaWdCOGg5TVRuMWowRG1oL3dZOFdPbkJtWU1V?=
 =?utf-8?B?ZEVnWTIzUmJ1LzZDL0ZWNGNTQWw1dXN0VDRDVlRiOE9oWnVaRi9tNGYxVjRp?=
 =?utf-8?B?MFp5SVp6V0JkdFI5dVIrVlpObVM4dmdPMmlhQjIzSHhPbkNjcmNiMXk1dXNE?=
 =?utf-8?B?N2M0M1dxbmRzN09ycWpWMHhkNUcxTnpPTUJQSGMzdFlxQUh1SmhsL1BXWS9h?=
 =?utf-8?B?RHZ2RUhIVmNvaVA3UDNubUJ5RjMyYzJoUWJUSC8wRS9xdFdjMnNwdWg5VTNw?=
 =?utf-8?B?a1EwaWhFNGdvek10UDUrZzZseXdUOFZ1OC9HblBQamxPYmo4K21VclVETWFZ?=
 =?utf-8?B?c1F4bFVYa05uaUpxN0trc3B3ejhmbHJjUkk5U04zcThaL1JORGQwSTUxbDVu?=
 =?utf-8?B?cGlHd3VQTWhMWUZaM1M5UE4ySVFsaVZZY0J3TldTVWorR1lyNUdreGpIclNN?=
 =?utf-8?Q?sfujzsicdZ0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UE1sTVVWR3RNWXJiemhmU2FuVGZLUSs0VXdvTWFJT2JWaXFzU3BVTmV0L2RH?=
 =?utf-8?B?VXNtRlAxSm90N1d2ZlFuSTh1VHRoNWxCSDJaQUlpdzRlMTZ4U29zRFo3MHFG?=
 =?utf-8?B?S0V3cW1DMUF3bjFDbjFKTXVpZkY3azZVUTI2OCtrZG5aR3RadGxLMEZzaWYr?=
 =?utf-8?B?bmJ3M0E4cnRPNnA4bm1uTDZsQVZSdmFPY2ZlY2trZUhMc1hpU3lORTd1U0Yz?=
 =?utf-8?B?V0h5dWNObVVuRjFLc3MzWHVFdVlYQjdMSXE4RFFxdUNPQU5pbExNeW1jR00z?=
 =?utf-8?B?aS96czYyd1hRdjM4WXRaOUFReGpaa2ExRVdqUkRYcnZ4bVpFOVN4QXhyU0Q0?=
 =?utf-8?B?b3IrZGxDQyt3Vk40WW9HOEFPR1k3NUJNNzVYMnhoSjJGUVB1Z2owM24wOTFx?=
 =?utf-8?B?dmFIblVySTZKajRpMWxzUkFaMWxWaHlwQzF1UGJyRmg4Yk9JdHFTQXRRSnpN?=
 =?utf-8?B?TmdZVGg1WVcxUm1SZXBZRHpXNVdJaDM1ZmNQd2NMZGcyanh1OGpQTkV2b3Jv?=
 =?utf-8?B?cCswVEI0czR1cDRnODlWVzQyb29sa1NsbE9mYXdyZHIvTDNjeDArUVdkZ1Ev?=
 =?utf-8?B?ZExna0lndnRhdGhPZ2ZLcG5zUGRqcXhzMWdjUHUzMHFnRjhkTXBxWDkxb1I4?=
 =?utf-8?B?SWRhSzBkTnp6bjI0ZjdCdkFDV2lCOU9QTlBmZ3N2TkJxOXZ2YnNPeEs5RHVC?=
 =?utf-8?B?UUlzQkpuNGJTWGlnMnF4TmhxaXhHKzJIVThwNnlYNk1JZ2dVSzVkR0swdEVv?=
 =?utf-8?B?b0FhbjZQYjJTdHQ3SFhRdjkzZHFTN1BPUTdZbk0xV3FSWHJUU3hibm9uZDA3?=
 =?utf-8?B?QSt4SXdOQ01DalNqVm4wWW5FdVM1dEJpVTVWRmxJOFh6U2dyYi9FN2F4MzZN?=
 =?utf-8?B?dTIzUExsQTJTdTZJeXl4T1lzcGs3VmNZUjlkcW1oKzNUUnpwc0ovN0ExY3ov?=
 =?utf-8?B?TzRGczFrTWR6RUpVb21kMnZXeGZOWDlpZ1BtV2p1bVpLajBTMEkvTEpaVmVC?=
 =?utf-8?B?alhlY3ZxL0QyTG85YmhZSzVyNWpOTStIYXlabHYxU2tYM0xrOW0zWXZpeE51?=
 =?utf-8?B?a3V2RFdFY3BJTmpKNlFGcFRPQ1RaRFF2OHQyU1hxU3NaWHZ4amlFNWI0eVp4?=
 =?utf-8?B?blVrN2E5ZHdVdGxQMkt5UG9Dc0VlemRBdlFVSVNIWENzeFhJaGdaMEZxeG4w?=
 =?utf-8?B?M0NyREJYei9UUm5FMXAxRmJSd01jV0diQ1haOWtHVmtqUmMxSVRRejhlVzJz?=
 =?utf-8?B?dW4ra2lmYnZQc2ZCd2liTTl0M0pGNUxYSGxlclBXdjQyNkFkWENZYmw5Y0hY?=
 =?utf-8?B?SUhxaTQwQnhrNEhPaEN4dmhaSUp5bmsxV1BIenRFYmRNWVo2dkFaMlRBcC9K?=
 =?utf-8?B?WmtMaC94V2Q2WGN0bmJnWUJmblF2dTJISms3dGhwZjh6K3R6enpRNVpnSWx0?=
 =?utf-8?B?dERHenhlM01HVzJmbm9WYStYS0VkQXV4b1JNcWE1aXNjNmxXVzJpS2t1MHBt?=
 =?utf-8?B?SHBhRXBBVlpHbG0yY1puVEs5WFo4QldiblFiRURRdDZvN1hzdmlMR1VVcGVV?=
 =?utf-8?B?T2JCb2JydCswQXNQRVlCdkdmRU1ueEhQVzlzNDhBYlp0U1J0bkxoK1BhamlZ?=
 =?utf-8?B?SzR4ZnJtVXY5b3Uzb0NqVDdwWDFSZnQyZXo4NW9td294OEJxYWgvTDkzblJI?=
 =?utf-8?B?b1U1Z21VcHc2Uk1SOTFkTDRtTmd4Z2pYOGJDZkhnR29zUXJLOVhFbXhVUG5q?=
 =?utf-8?B?TE9JMG1MeVVLak5KYkNHSHJvd2lMVmhjRjJaNnM5Mm1kOHhCYXZWbFRoT2tz?=
 =?utf-8?B?NTExVml0SGVTTEViT3VBMUdvaDIwR2JDU0xwcVZxVTlxSExJVVpVM0thRDZy?=
 =?utf-8?B?TUtxU29JNHliakZ4cHl1c0tJemlEclV4K1NtUmdiVXhwejRMNy9ERVBUV0l1?=
 =?utf-8?B?dkFjd1dyclRjcFRhSDV1cmlHbW41T0c0eW9HOWlYZ3FCVkE0QStRVVpmeDFF?=
 =?utf-8?B?VXB0d0pla0hQMXNsZGMrS0VYMDVvNk1PT2Zjczlrb3psNEVLQ3Z2OEs1NVhE?=
 =?utf-8?B?TmQ4akpBeDVnMkw4VGVUNGdEK0xUcm5KZ1ZvTjF4bldTamZhclYxeEV1b0Ix?=
 =?utf-8?B?Nml6c0ZiTHdUZThCdVZzODlMY3ZTaWZWWWM5bjdydVZadm5nM29XK1pTSnJr?=
 =?utf-8?B?Umc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 27dbb695-ae60-4c32-eeed-08dde677cfbc
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2025 21:14:01.8748 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M8hdvEhtyxJ+lHGObRA9lt0tyElDC/6GYapjJ1uOpKNLK6VcvXteC7qZkPeN6XrjoOzNVwazJFl+sabAa4dLbelWu3Be+DYcXD43qY6pD+4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6277
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756415650; x=1787951650;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version;
 bh=jy7mY+TZPDRQJsKBmcfOD8OI577UuGskfo7ORjatPic=;
 b=Y75t8Mw1/QlTEs9nudehXI36y7JgD9Q1x6JpET2c7lrjWkXMQbnV6J/Z
 T4eo2GLKuyOEtotkYSb5ZoxXo0+QXHLVfodgB8ktzSCvLe1z8QbIxkJc9
 TshjA7Zqr2sYadWhxCQ9eRzrnf5sm30fkDq0Q/eO4hDTKhxFrKkY68Z/7
 VJ+a/04+3PePKNnGJLsFYEuDS04wlt6u7tQl7N0A0dLWYET/1qIGHDTQa
 vb82WtmFiNtuC36XfipY2v125b/F6HCYTPbDwI5VwmfUzZGSSqQF3Ra1o
 jTUEAERYuJbxhAlcaYuKVL0Pm64nszZ233AgrBrm0nysT1hQk6joW7bB4
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Y75t8Mw1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] i40e: fix Jumbo Frame
 support after iPXE boot
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

--------------Olo7UYT390tC3hBf7pkA0xtJ
Content-Type: multipart/mixed; boundary="------------YWy1v6FW5xmUhSAvTl71YFIl";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Message-ID: <888030bd-437e-4a40-8205-41417a8df7b6@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] i40e: fix Jumbo Frame
 support after iPXE boot
References: <20250827-jk-fix-i40e-ice-pxe-9k-mtu-v3-1-14341728e572@intel.com>
 <IA3PR11MB8986CC2D4EF48CA3678C668AE53BA@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB8986CC2D4EF48CA3678C668AE53BA@IA3PR11MB8986.namprd11.prod.outlook.com>

--------------YWy1v6FW5xmUhSAvTl71YFIl
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 8/28/2025 5:22 AM, Loktionov, Aleksandr wrote:
>=20
>=20
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
>> Of Jacob Keller
>> Sent: Wednesday, August 27, 2025 11:18 PM
>> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>; Nguyen,
>> Anthony L <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org
>> Cc: Keller, Jacob E <jacob.e.keller@intel.com>
>> Subject: [Intel-wired-lan] [PATCH iwl-net v3] i40e: fix Jumbo Frame
>> support after iPXE boot
>>
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
>> b/drivers/net/ethernet/intel/i40e/i40e_main.c
>> index b83f823e4917..4796fdd0b966 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
>> @@ -16045,13 +16045,18 @@ static int i40e_probe(struct pci_dev
>> *pdev, const struct pci_device_id *ent)
>>  		dev_dbg(&pf->pdev->dev, "get supported phy types ret =3D
>> %pe last_status =3D  %s\n",
>>  			ERR_PTR(err), libie_aq_str(pf-
>>> hw.aq.asq_last_status));
>>
>> -	/* make sure the MFS hasn't been set lower than the default
>> */
>>  #define MAX_FRAME_SIZE_DEFAULT 0x2600
> Can you consider re-name MAX_FRAME_SIZE_DEFAULT into I40E_MAX_FRAME_SIZ=
E_DEFAULT ?
>=20

We could. Its not in a header file so shouldn't pollute other files
which is why I originally opted to keep the name as-is.

>> -	val =3D FIELD_GET(I40E_PRTGL_SAH_MFS_MASK,
>> -			rd32(&pf->hw, I40E_PRTGL_SAH));
>> -	if (val < MAX_FRAME_SIZE_DEFAULT)
>> -		dev_warn(&pdev->dev, "MFS for port %x (%d) has been set
>> below the default (%d)\n",
>> -			 pf->hw.port, val, MAX_FRAME_SIZE_DEFAULT);
>> +
>> +	err =3D i40e_aq_set_mac_config(hw, MAX_FRAME_SIZE_DEFAULT,
>> NULL);
> Are you sure it's safe to use hw var here? Because old code used pf->hw=
=2E
>=20

Yes. I don't know why the original code used pf->hw, but we have a local
hw variable which points to the proper address already in this function.

>> +	if (err) {
>> +		dev_warn(&pdev->dev, "set mac config ret =3D  %pe
>> last_status =3D  %s\n",
>> +			 ERR_PTR(err), libie_aq_str(pf-
>>> hw.aq.asq_last_status));
>> +	}
>> +
>> +	/* Make sure the MFS is set to the expected value */
>> +	val =3D rd32(hw, I40E_PRTGL_SAH);
>> +	FIELD_MODIFY(I40E_PRTGL_SAH_MFS_MASK, &val,
>> MAX_FRAME_SIZE_DEFAULT);
>> +	wr32(hw, I40E_PRTGL_SAH, val);
>>
>>  	/* Add a filter to drop all Flow control frames from any VSI
>> from being
>>  	 * transmitted. By doing so we stop a malicious VF from
>> sending out
>>
>> ---
>> base-commit: ceb9515524046252c522b16f38881e8837ec0d91
>> change-id: 20250813-jk-fix-i40e-ice-pxe-9k-mtu-2b6d03621cd9
>>
>> Best regards,
>> --
>> Jacob Keller <jacob.e.keller@intel.com>
>=20
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>=20
>=20


--------------YWy1v6FW5xmUhSAvTl71YFIl--

--------------Olo7UYT390tC3hBf7pkA0xtJ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaLDGmAUDAAAAAAAKCRBqll0+bw8o6O2r
APwLzhkhnKEEeY9FzL0nuyv3h0OiyuAnzWNOOXNzMgUZBwD/f9nO2liKZDRHTp4kBorVMM4EmSlB
/3tlyNhwKLSZYwc=
=acIg
-----END PGP SIGNATURE-----

--------------Olo7UYT390tC3hBf7pkA0xtJ--
