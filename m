Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B09B1AA60
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Aug 2025 23:34:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3DD11413B9;
	Mon,  4 Aug 2025 21:34:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OjjX9e57M7lG; Mon,  4 Aug 2025 21:34:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A6A4413E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754343241;
	bh=rSY/TayDx8kBzdlRDIaOIdP5CfviXi/zk3NUXQVwRkg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HrMwsLFp2PQwmd3OH160TLwwQKSIoO31dsEvh8A1BGlKzy1KMfLAUbuGfS6M3w9ie
	 XeKUYFtMknCS1Ai5ZkGDjf9sNGp1hoX/b6g43WkCus91vg6SDgKbap9hhcGZWXtd2k
	 rHMIvnuZp7abgc9VCy1zZ5lXeZ76ZKjxPK+BTqWI3ZEroa0wblXF7MxOFFmJR7xg7y
	 G7L2XXsEmN+wCWQKjVvSKmcFmrqeoQ+OqbFqjmOu5nVI12LAse9c//GbR3N7K3lw4V
	 noA7haZmpxg+rNzmasPkV557j2n+/35w2Xn3xgo+5Ze8YxTxUDhE/sbKu8gVszkrpB
	 qEKCGX8gTAmOA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A6A4413E5;
	Mon,  4 Aug 2025 21:34:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id F1DCA118
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Aug 2025 21:33:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E0FCA613BB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Aug 2025 21:33:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FFg6s6-ayrfX for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Aug 2025 21:33:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CB43060668
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB43060668
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CB43060668
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Aug 2025 21:33:57 +0000 (UTC)
X-CSE-ConnectionGUID: cjsj6Ja9TaOMwmE/+4p4jw==
X-CSE-MsgGUID: 7WEZFJhASP6VCKoy9Naojg==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="67689482"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; 
 d="asc'?scan'208";a="67689482"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 14:33:57 -0700
X-CSE-ConnectionGUID: IIQQ25VTQu2mhpvtB6DkTA==
X-CSE-MsgGUID: 2IkVMrNWQ7CqT8oGwAjCrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; 
 d="asc'?scan'208";a="195208526"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 14:33:57 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 4 Aug 2025 14:33:56 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 4 Aug 2025 14:33:56 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.82)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 4 Aug 2025 14:33:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lufddxIAPY2NnKjnkRuN/1j/8fbYV7PC4STYs0HTWyvOKAxHLkiaRJ7B80B5FjQVOxJn/uSnkgLaUSrM4I3V8AANHyUPneTAtG/6PQ5A6vxSrLjwwEBJA+r2cfuQBDrGRCuJHqzenJEIye9g/6USNKGoMbMdywAlYYpjqZpOAdYFvfP5yPfsHCMOEInaF1OPu4JoFBFhPCX55iJR50jZ/UaRTNePr/3gBfT9floCSVpF9X+PIKRlyc5UOswc0o/9GGNrQvwwUYJgLHH1Z/sgb4pw4TthcvTetLTMQCL91cP15ZcfpQWe6e4hi/bPliQMO9vi8D1f8QjWGT/lE8rYUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rSY/TayDx8kBzdlRDIaOIdP5CfviXi/zk3NUXQVwRkg=;
 b=SUkvoYBY6Smnr3290y8Lb3H1W8ghq1+CAmGuDEzBGVx/vDNkUSvHap9M1125OBXzXsHj2k7jzDAu8pcVLF20yFdMeJlJA4/FqenjFvE+ymBvlF3ZWR9aNgVDY4eXMRDmqoT3lYWw7FoOwnBut7+fyjSvBaHX1dDdVgm96WIL0dAAe9Z9geQA2q8HeDF7Ku8J48tT9dav0a1B0AE86tScypSP85ZNL6OnysIceLAXQkoa+7s9l/LzM7eey874a2xHYg8AdXmpKyjyUJMrAJ2RVivuY8VSNShpvDpxaK/pV2s6E/fvoC0ooYCuJoP77Ay7uXbOK5YsqfmFWX1diP4hnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA1PR11MB7130.namprd11.prod.outlook.com (2603:10b6:806:29f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.11; Mon, 4 Aug
 2025 21:33:39 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.8989.020; Mon, 4 Aug 2025
 21:33:39 +0000
Message-ID: <158dad4c-1eb4-4344-ac6b-7ea4737e0535@intel.com>
Date: Mon, 4 Aug 2025 14:33:37 -0700
User-Agent: Mozilla Thunderbird
To: Sergey Temerkhanov <sergey.temerkhanov@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Grzegorz Nitka <grzegorz.nitka@intel.com>,
 <netdev@vger.kernel.org>, Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, Jiri Pirko <jiri@resnulli.us>,
 Jiri Pirko <jiri@nvidia.com>
CC: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20250801-jk-fix-e825c-ice-adapter-v1-1-f8d4a579e992@intel.com>
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
In-Reply-To: <20250801-jk-fix-e825c-ice-adapter-v1-1-f8d4a579e992@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------gkdpMjYfrKsQKyxI3MPqQofV"
X-ClientProxiedBy: MW4PR03CA0110.namprd03.prod.outlook.com
 (2603:10b6:303:b7::25) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA1PR11MB7130:EE_
X-MS-Office365-Filtering-Correlation-Id: 48d484d7-ff06-4abd-5361-08ddd39e9348
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V3NQcGJCKzhta2dMQmJQR2daUlMrOEs5dDUxckFvRWthY2FqVld5TjRZNzha?=
 =?utf-8?B?YlUyWXljMThLYWFHZjUyZUxsSThyNU1CTXdXdmk4ZU9CL1FVZ1FxRDNqeUpi?=
 =?utf-8?B?OHdueDJwanNaZkJmUkZtOGFEOG90bEJ4aHkyazh5QkhFZGQ2dS92a0R2TVVk?=
 =?utf-8?B?SG51aDJtZVdyY0V2VUlZVGxtTmQ4MzJmWVpsdzZpZHBaL2J6eHRjV2dJR3pa?=
 =?utf-8?B?c1Z5T0k5M3YxTTNnYXF0L1hyMzM5dnA0RzFQL1F5UThLWVM1cEU4dUxhZGdn?=
 =?utf-8?B?NWM0QkNkaUZBR0ZnUEFXb1dYdkcwVVk4eFVEdVROTkxFalU0ZTZEc0tCUklu?=
 =?utf-8?B?ejhIVURjeStBMW5qenZmL3pMWFU2WWJlYm9oSElzdnV5VmtQQ3NzMHNmWlJC?=
 =?utf-8?B?VU9aV1FPdkgvd3RGTUlHR1NOTDRMUkZZSUhBYnNtRkJyS1hHcWk2QXFkRm5P?=
 =?utf-8?B?SUtseCtBbHFPVkd6ZURLaWxnYWdhaXZ3MEdkK1dybU1IdVRsSWhDQU1YdkNP?=
 =?utf-8?B?RFl4djQ1RnY4RXVRZThDZi9zUUkrYXJzbFJ2SkdhajVpSUU0d3R2OVdIVmNF?=
 =?utf-8?B?emdqQTBoalQ2SFJadWxTUVZ2SUdETmsxenRUTThZQmRlVVJkZ3lxQmdmOGVx?=
 =?utf-8?B?eEhXSnIzZW0veWs1QVZsWC9UQjd2T3ZaN3dCZzNOMDlxVGt6MG1PUW9sbjI3?=
 =?utf-8?B?OVZuaGFkaG15TXYwcnhrZzYzUGI3QlZDbnZFMk9XRDJkNFMyMTJyYS9rK0Rw?=
 =?utf-8?B?SVJZR25JRmttd0UwVjN4eG9hY1VkZTZGZDZGL1E1NkppWWg4dGczYmNXNThv?=
 =?utf-8?B?ZEo3aFZkK3MvM1duYisyWHlMdmZPZUJVYUJDV3lxWnFENVF5SGxNQVBlUUJz?=
 =?utf-8?B?L2x6NUFrb2dCbk5KVEhsR0M2bWtVOU1HTENud01vWGplMHhUS3l5SWRzVTFM?=
 =?utf-8?B?RzJvc0htUlR0c1JhdUoxYnQ1L3V6NGozZERpVEVQekFwaWdtcnNJb0xhUUVz?=
 =?utf-8?B?STU4WXk4TWpBaFZxTDQ5dkZBVFgyM3Juam1NVWVXaW5Sa1JGbWFmcDgydUpt?=
 =?utf-8?B?UTRmaytneUZScGVReXp4Z0NBdVRUaC9UU1NUSzB1NmlHZ0FiMHpiazdzZU9l?=
 =?utf-8?B?SGFVd0Mwc0xPeHpZV05rVXFRSXpnWGk2Y2dSazRPNkJ0eTVUekRsWmpBTTFk?=
 =?utf-8?B?ZzZGaUtPWmQ4dkphaWs1T2t2Q0pmOFY0NGRFVzN0aGxQQUpRelg5Q0pmMTNh?=
 =?utf-8?B?RmNhMUtZUUppME9WbEhWK3pnU3B2SWpMamVUbmlPc3VZNjBXeTlpQkxzbXQv?=
 =?utf-8?B?RkhHUEpQanNDSEJKZndnQjVvelZ5ZDl5c1gxalg3WEdTWXF3N1pYTFNoSER4?=
 =?utf-8?B?YmFiSkxDMW9RZXp1RUNZNWczM3oyUWFnUGxJQUNaWnA2ZlpYci9KZEFMNndo?=
 =?utf-8?B?ZjNrNElCWDJLSzdQb1lLMTBXTEVXbGJDSWllOGhXQS9wN0ZYOHliOVl4a1Y3?=
 =?utf-8?B?dFR6ZVhHTG5LNENMVllUcktoYkdJS0dTYnQ5TmYyLzk5NFdsWWFQOFhKMG50?=
 =?utf-8?B?WUZ4bWFhSy9OdmoxRXBhRk9KRE1UTDJSK29mNmptNkQ4Qll6bUdPenNBM1hk?=
 =?utf-8?B?bGdSUHk5NTVQb3V0WG02TXJFbkp4ZHo5Ujl3NHBiV0tYSzhKWnQ1cVY5S3Iv?=
 =?utf-8?B?NGwwckJWd0VPMFZzcDR6NkJzM0lyVndIaExURS9rNnluZ25aZkxZTXNzRTRU?=
 =?utf-8?B?K1dObEZNVTFWS09IOFBoL3Joek9TYzUxdFRBWmhCalRQdStEek0zc0U5NHN4?=
 =?utf-8?B?Mnp6cVlzbWFSQTd5MEVlTThtL1JwSUk0ZDdDdVZOTEJKUzNwVE9ucHQ2MWM5?=
 =?utf-8?B?Vm1wVUp3TExEWm9hZUMvTFc5a2F6TjdxcC93UUcvYjhpMmxlQUt2emdySnBh?=
 =?utf-8?Q?sx0zrek+Z1w=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NkJYTWovWHg5cGhxcUtHQ1NFbDhBUWZoeXFMQnIybU1KajJZMVlKMEVXOGlj?=
 =?utf-8?B?SHphYllOWlgzQmgrZGp2M25JS0FMNDgxSCtBRG81NU1xYlpGNDUzNWVZWnFT?=
 =?utf-8?B?QmtuZVZIZkRnV1dPVlcwQ1VsRG9MeDFESnhKYzhQS0VPLzVyWlJnd2hzUGxm?=
 =?utf-8?B?U2Z5NFFvRlRIZm5XUkkzYitBeDdDV3E3R29mOHZCZnFLZ1BmeHB6blFuYUx0?=
 =?utf-8?B?UUVrOUNtQjQ5RCtZWCtlalpaR1J6N3BSemdtby82UmFmVkZFV25udGRnMFVB?=
 =?utf-8?B?TzJzaWRUdmtsdU9OWnYxUzFGNXJ6R1lYbTVvYVJCV254MGNLaUdVcU1VQVVp?=
 =?utf-8?B?QnJkUGlLUGxZbmhRTDBYNHlnK0dtWVFKRWtlTUhOaU44WkpIUkkvMFdnaHFD?=
 =?utf-8?B?NXdwTGZoK2JiZGY1d3V3S0pCemo5QmxVR0RYTmhKa2NoelZHcmNPeGFlSnBF?=
 =?utf-8?B?NE4vWC90ZUsya3hvMnVkclNJcmJJQXcyQTRHQUdxbHV1VVJqa0ZwUGZVa0Zn?=
 =?utf-8?B?alV5d3VaZmRZazZIWlcrU1l0aU1SSjBleHAwL1NHNm9udGo2cm9OdG42aDk2?=
 =?utf-8?B?dEFvd01rd1pWcVZCTitid3pRRlVCQ1Fra2RZSzltd2F5K05MMkVOQTBpSWZr?=
 =?utf-8?B?ZTJ6bGFQSVoxd29GK2xxaTBNZkVVeXFFYWVyaHVyaFpEbFRvRDZaNmEzMUwz?=
 =?utf-8?B?RDBhZS9sREdIVzdaaGxCVERSUzcyandWNUJQQmhjajVSaWQydGYyTDM0UmNw?=
 =?utf-8?B?R1p6dVV5Z2lNbXE4REdpU0VZM0NtWklzN2R4eGtrck9vVzF4VUgvYnZEd2Vw?=
 =?utf-8?B?MXpla0JQZUVNZmVqTHdXUVA0WGVPU2tDUkIzTjA4NFdXeDJNNjdFUy9DWW1E?=
 =?utf-8?B?aHFLdUJuZVY1Kzh5bXFyeDBFM0toZmY1ZGFXQnZXdlBXUHFNMjcrTWJ6UGVU?=
 =?utf-8?B?bjMvOTZWM3NJRnJ6NkRxYkdrVkViMUpMSGk3ZUphdnE2bEU1enI2Wjg5c0Nh?=
 =?utf-8?B?c2tKL3oyakFxVkQ0OTlkT3NDaHcyLzZsYUttaGxDQVd3TVpucCtJY1BuaVBK?=
 =?utf-8?B?bFZsYlZGM0VmR2lseldVSFVpbmJFNGtPQzRlbGs1RUIvc0tiUS9ZaTdhZEFZ?=
 =?utf-8?B?YVlydGRlNkNBckw5b0FMYnAxeGd0SWh0aDhmUE5sRXU2WGN2WVZTSVc4Nkpk?=
 =?utf-8?B?cE5Helh6OTB3cmVod1VRcWhPNGFZNzhPbzYzQ0hhb2p0djdackJ0MDdCVDVw?=
 =?utf-8?B?bkNpenl5WGVQY1FXN2J1TEV1SGFWWEdEYmdFMkE2UndFRUJIWDkxUE9YMnZT?=
 =?utf-8?B?c3Y1L1BReGNjT21IdTVHVk1vaVAzMHJqc0MxRE9vNzNna1E0K3dKbm8rdWg3?=
 =?utf-8?B?V1dGZXNZVFYraFlTNW5oYU92bmM5WUdObnVQT2JPT2lFaWxQUEdOL2RVNnFr?=
 =?utf-8?B?dEx1L3pLdmtyZW9kZG9tdVlVWHl2aGVvQmhVRnBOL0hwcER6azFibWhHRTh0?=
 =?utf-8?B?RGlCdGZFNW9iNnpzeVNuODV2aHBuc0xNcFJIWWlZQkV2QlZWRnJ6aTQyVHE2?=
 =?utf-8?B?MTJTVU1kZDN2Y2Flek0zbWJUWFBDZTlxV1AzZENwSWIwWVFjS2hzNXhUUHdz?=
 =?utf-8?B?WExTRTJJOUg5YUhMVXlndGpIMzNZanhDSU0vMEVDRmxCbS83WDg4MWVEYW11?=
 =?utf-8?B?cy8rZHJqYVQwaWlaR1V2NmdnMzIvZm5ENVIrWUJEUk1XTDRtc3R6V1RUaHJu?=
 =?utf-8?B?bUoyQzNqM0h2TlhIbWNab09EUHlyUzA4Q2k4eFNWaXphSUphd2lVc1ZORklC?=
 =?utf-8?B?UjNINVE0MEZTcXJxTUIrdHpIZjhMQUlQWWdWenNvdWIxMUtaQkpuamMrbXBC?=
 =?utf-8?B?bnJBSHVkWm5YTjEvOVRIOWpLVXovZmdNWStZa1BMR0Z2eVJlRFJmLzB3R2pO?=
 =?utf-8?B?dklXbmxUQjV5Y211UW8rK2o1ejN5bFRJbVczWVVQSzhDbXE4L1VDTm92STcv?=
 =?utf-8?B?elI0dTliMHNWU0wxU3AwdVVQZUZ1QzJha2ZSbE03MCttNmg2YlNQc3JRRHlr?=
 =?utf-8?B?TS9zWnh5aUJpT215akZ0aVY5ejZNRlRIY0toaWIwSk9sQk9POXVocEh2UXg3?=
 =?utf-8?B?Q0JhVzFTQ3hsY2pQczlWcnViWnV1MGNwMTdqMDFMdFNMcFArdGZXeHhXSE4y?=
 =?utf-8?B?OVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 48d484d7-ff06-4abd-5361-08ddd39e9348
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2025 21:33:39.1654 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zGvm2gYAYBUajWaYd2f4mUrfgvD3SuYH38a7nes6dluEJf7S1rE/LcLn6pPSwBGfm3L8v5vQNQaCWtLRL/PhQn6p/x67RcCS1Z0y6Y/55A4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7130
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754343238; x=1785879238;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=XAKFnnhqK03/zh2GaOjuJwXE1GrxCG7E3Yhow4oJ3HY=;
 b=f57uTtMnE6lgKZJks3V6sV9kQ7lgZZXLYRWBn7FGhgF5pGwL+hngRGiZ
 DTXDVyGCBso1IZiDHosQWx24TiIC/Fo1HjDkJmmS35fxhCvKrQtOcPMaE
 lQYqjc62s3S0c3T0JOCkF8ETDGksLyd6Kq7JOtlepEaFGsThdqyRG+Iyv
 Ou4gWZBDa2p5w1wNo3WbkHrbAOD0xFc2OY+zj00sgc+nm1Cw43j6+slq1
 fR8xREddeiDYDXyRGgLP7cMwEd3QuoA0nvy1w9P3iJzqk1hGLKbE5PfSN
 SLW3ssuRxOoPXUYn1moZ1x237BzHxWzQiEtO/QN/onQ046JjxgkkrAiAs
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f57uTtMn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: use fixed adapter index
 for E825C embedded devices
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

--------------gkdpMjYfrKsQKyxI3MPqQofV
Content-Type: multipart/mixed; boundary="------------axD44k2K0BXrIs3lkxGs4TOl";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Sergey Temerkhanov <sergey.temerkhanov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Grzegorz Nitka <grzegorz.nitka@intel.com>, netdev@vger.kernel.org,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>, Jiri Pirko <jiri@resnulli.us>,
 Jiri Pirko <jiri@nvidia.com>
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <158dad4c-1eb4-4344-ac6b-7ea4737e0535@intel.com>
Subject: Re: [PATCH iwl-net] ice: use fixed adapter index for E825C embedded
 devices
References: <20250801-jk-fix-e825c-ice-adapter-v1-1-f8d4a579e992@intel.com>
In-Reply-To: <20250801-jk-fix-e825c-ice-adapter-v1-1-f8d4a579e992@intel.com>

--------------axD44k2K0BXrIs3lkxGs4TOl
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 8/1/2025 3:27 PM, Jacob Keller wrote:
> The ice_adapter structure is used by the ice driver to connect multiple=

> physical functions of a device in software. It was introduced by
> commit 0e2bddf9e5f9 ("ice: add ice_adapter for shared data across PFs o=
n
> the same NIC") and is primarily used for PTP support, as well as for
> handling certain cross-PF synchronization.
>=20
> The original design of ice_adapter used PCI address information to
> determine which devices should be connected. This was extended to suppo=
rt
> E825C devices by commit fdb7f54700b1 ("ice: Initial support for E825C
> hardware in ice_adapter"), which used the device ID for E825C devices
> instead of the PCI address.
>=20
> Later, commit 0093cb194a75 ("ice: use DSN instead of PCI BDF for
> ice_adapter index") replaced the use of Bus/Device/Function addressing =
with
> use of the device serial number.
>=20
> E825C devices may appear in "Dual NAC" configuration which has multiple=

> physical devices tied to the same clock source and which need to use th=
e
> same ice_adapter. Unfortunately, each "NAC" has its own NVM which has i=
ts
> own unique Device Serial Number. Thus, use of the DSN for connecting
> ice_adapter does not work properly. It "worked" in the pre-production
> systems because the DSN was not initialized on the test NVMs and all th=
e
> NACs had the same zero'd serial number.
>=20
> Since we cannot rely on the DSN, lets fall back to the logic in the
> original E825C support which used the device ID. This is safe for E825C=

> only because of the embedded nature of the device. It isn't a discreet
> adapter that can be plugged into an arbitrary system. All E825C devices=
 on
> a given system are connected to the same clock source and need to be
> configured through the same PTP clock.
>=20
> To make this separation clear, reserve bit 63 of the 64-bit index value=
s as
> a "fixed index" indicator. Always clear this bit when using the device
> serial number as an index.
>=20
> For E825C, use a fixed value defined as the 0x579C E825C backplane devi=
ce
> ID bitwise ORed with the fixed index indicator. This is slightly differ=
ent
> than the original logic of just using the device ID directly. Doing so
> prevents a potential issue with systems where only one of the NACs is
> connected with an external PHY over SGMII. In that case, one NAC would
> have the E825C_SGMII device ID, but the other would not.
>=20
> Separate the determination of the full 64-bit index from the 32-bit
> reduction logic. Provide both ice_adapter_index() and a wrapping
> ice_adapter_xa_index() which handles reducing the index to a long on 32=
-bit
> systems. As before, cache the full index value in the adapter structure=
 to
> warn about collisions.
>=20
> This fixes issues with E825C not initializing PTP on both NACs, due to
> failure to connect the appropriate devices to the same ice_adapter.
>=20
> Fixes: 0093cb194a75 ("ice: use DSN instead of PCI BDF for ice_adapter i=
ndex")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> It turns out that using the device serial number does not work for E825=
C
> boards. I spoke with the team involved in the NVM image generation, and=
 its
> not feasible at this point to change the process for generating the NVM=
s
> for E825C. We're stuck with the case that E825C Dual-NAC boards will ha=
ve
> independent DSN for each NAC.
>=20
> As far as I can tell, the only suitable fallback is to rely on the embe=
dded
> nature of the E825C device. We know that all current systems with E825C=

> need to have their ice_adapter connected. There are no plans to build
> platforms with multiple E825C devices. The E825C variant is not a discr=
eet
> board, so customers can't simply plug an extra in. Thus, this change
> reverts back to using the device ID for E825C systems, instead of the
> serial number.
> ---

+Jiri,

I'd appreciate your opinion on this change, since you were the one to
originally suggest use of the device serial number.

Thanks,
Jake

>  drivers/net/ethernet/intel/ice/ice_adapter.h |  4 +--
>  drivers/net/ethernet/intel/ice/ice_adapter.c | 49 ++++++++++++++++++++=
+-------
>  2 files changed, 40 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.h b/drivers/net=
/ethernet/intel/ice/ice_adapter.h
> index db66d03c9f96..e95266c7f20b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adapter.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adapter.h
> @@ -33,7 +33,7 @@ struct ice_port_list {
>   * @txq_ctx_lock: Spinlock protecting access to the GLCOMM_QTX_CNTX_CT=
L register
>   * @ctrl_pf: Control PF of the adapter
>   * @ports: Ports list
> - * @device_serial_number: DSN cached for collision detection on 32bit =
systems
> + * @index: 64-bit index cached for collision detection on 32bit system=
s
>   */
>  struct ice_adapter {
>  	refcount_t refcount;
> @@ -44,7 +44,7 @@ struct ice_adapter {
> =20
>  	struct ice_pf *ctrl_pf;
>  	struct ice_port_list ports;
> -	u64 device_serial_number;
> +	u64 index;
>  };
> =20
>  struct ice_adapter *ice_adapter_get(struct pci_dev *pdev);
> diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net=
/ethernet/intel/ice/ice_adapter.c
> index 9e4adc43e474..9ec2a815a3f7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adapter.c
> +++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
> @@ -13,16 +13,45 @@
>  static DEFINE_XARRAY(ice_adapters);
>  static DEFINE_MUTEX(ice_adapters_mutex);
> =20
> -static unsigned long ice_adapter_index(u64 dsn)
> +#define ICE_ADAPTER_FIXED_INDEX	BIT(63)
> +
> +#define ICE_ADAPTER_INDEX_E825C	\
> +	(ICE_DEV_ID_E825C_BACKPLANE | ICE_ADAPTER_FIXED_INDEX)
> +
> +static u64 ice_adapter_index(struct pci_dev *pdev)
>  {
> +	switch (pdev->device) {
> +	case ICE_DEV_ID_E825C_BACKPLANE:
> +	case ICE_DEV_ID_E825C_QSFP:
> +	case ICE_DEV_ID_E825C_SFP:
> +	case ICE_DEV_ID_E825C_SGMII:
> +		/* E825C devices have multiple NACs which are connected to the
> +		 * same clock source, and which must share the same
> +		 * ice_adapter structure. We can't use the serial number since
> +		 * each NAC has its own NVM generated with its own unique
> +		 * Device Serial Number. Instead, rely on the embedded nature
> +		 * of the E825C devices, and use a fixed index. This relies on
> +		 * the fact that all E825C physical functions in a given
> +		 * system are part of the same overall device.
> +		 */
> +		return ICE_ADAPTER_INDEX_E825C;
> +	default:
> +		return pci_get_dsn(pdev) & ~ICE_ADAPTER_FIXED_INDEX;
> +	}
> +}
> +
> +static unsigned long ice_adapter_xa_index(struct pci_dev *pdev)
> +{
> +	u64 index =3D ice_adapter_index(pdev);
> +
>  #if BITS_PER_LONG =3D=3D 64
> -	return dsn;
> +	return index;
>  #else
> -	return (u32)dsn ^ (u32)(dsn >> 32);
> +	return (u32)index ^ (u32)(index >> 32);
>  #endif
>  }
> =20
> -static struct ice_adapter *ice_adapter_new(u64 dsn)
> +static struct ice_adapter *ice_adapter_new(struct pci_dev *pdev)
>  {
>  	struct ice_adapter *adapter;
> =20
> @@ -30,7 +59,7 @@ static struct ice_adapter *ice_adapter_new(u64 dsn)
>  	if (!adapter)
>  		return NULL;
> =20
> -	adapter->device_serial_number =3D dsn;
> +	adapter->index =3D ice_adapter_index(pdev);
>  	spin_lock_init(&adapter->ptp_gltsyn_time_lock);
>  	spin_lock_init(&adapter->txq_ctx_lock);
>  	refcount_set(&adapter->refcount, 1);
> @@ -64,24 +93,23 @@ static void ice_adapter_free(struct ice_adapter *ad=
apter)
>   */
>  struct ice_adapter *ice_adapter_get(struct pci_dev *pdev)
>  {
> -	u64 dsn =3D pci_get_dsn(pdev);
>  	struct ice_adapter *adapter;
>  	unsigned long index;
>  	int err;
> =20
> -	index =3D ice_adapter_index(dsn);
> +	index =3D ice_adapter_xa_index(pdev);
>  	scoped_guard(mutex, &ice_adapters_mutex) {
>  		err =3D xa_insert(&ice_adapters, index, NULL, GFP_KERNEL);
>  		if (err =3D=3D -EBUSY) {
>  			adapter =3D xa_load(&ice_adapters, index);
>  			refcount_inc(&adapter->refcount);
> -			WARN_ON_ONCE(adapter->device_serial_number !=3D dsn);
> +			WARN_ON_ONCE(adapter->index !=3D ice_adapter_index(pdev));
>  			return adapter;
>  		}
>  		if (err)
>  			return ERR_PTR(err);
> =20
> -		adapter =3D ice_adapter_new(dsn);
> +		adapter =3D ice_adapter_new(pdev);
>  		if (!adapter)
>  			return ERR_PTR(-ENOMEM);
>  		xa_store(&ice_adapters, index, adapter, GFP_KERNEL);
> @@ -100,11 +128,10 @@ struct ice_adapter *ice_adapter_get(struct pci_de=
v *pdev)
>   */
>  void ice_adapter_put(struct pci_dev *pdev)
>  {
> -	u64 dsn =3D pci_get_dsn(pdev);
>  	struct ice_adapter *adapter;
>  	unsigned long index;
> =20
> -	index =3D ice_adapter_index(dsn);
> +	index =3D ice_adapter_xa_index(pdev);
>  	scoped_guard(mutex, &ice_adapters_mutex) {
>  		adapter =3D xa_load(&ice_adapters, index);
>  		if (WARN_ON(!adapter))
>=20
> ---
> base-commit: 01051012887329ea78eaca19b1d2eac4c9f601b5
> change-id: 20250731-jk-fix-e825c-ice-adapter-54428f5fcbe8
>=20
> Best regards,
> -- =20
> Jacob Keller <jacob.e.keller@intel.com>
>=20


--------------axD44k2K0BXrIs3lkxGs4TOl--

--------------gkdpMjYfrKsQKyxI3MPqQofV
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaJEnMQUDAAAAAAAKCRBqll0+bw8o6DXb
AQCpJZoULJ1ePnUfHyaSn+CgQ9mEUeZOANKzEDW6MIS5YQD/XdMF5ewngxqwO4AQjMy11aqLoi7O
azznOH2s8T0vMQs=
=B/FM
-----END PGP SIGNATURE-----

--------------gkdpMjYfrKsQKyxI3MPqQofV--
