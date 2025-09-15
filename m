Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B98E3B5877B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Sep 2025 00:26:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5BEAA60B19;
	Mon, 15 Sep 2025 22:26:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M51a8T5tAQy0; Mon, 15 Sep 2025 22:26:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5BCE60BC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757975201;
	bh=qutFDH5AvhjUCtR9E58HNRlktZv1KC4yJ84b9Qo4VN4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JoXJCdaT9lhdVQy+OSRClVbJUPSWr+IRqOuCuxWoibeOMVxqSroy16q6PB4s4vvUl
	 4ZbeJ4tsHz0NF2E5HXbA3fB+XK0HFDNGurUMTgF+sHM6I+LLD4kTLMdpa3AXPkcT7d
	 39rRWwxG7rrHb3yCfJCE6Ax4mo8qhWGPuzTmsmyv05584DWEUpxkijFvxilWkjsXaC
	 7AtQSvT1FdQnft1ADQLnJ+szISeWv9P6tiVUTptJVScVHyAkZE7EKKzFFeLpw/ldUq
	 taVIH/AHRl0AXdUlBpouJ0pYopO3mVMLgYVU9kktZg7JvmCezkh6NDBt5NKZ6Jn+cU
	 6+/2cO69TIuJA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5BCE60BC4;
	Mon, 15 Sep 2025 22:26:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 05ED922F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 22:26:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EB6EB81293
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 22:26:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oevr8j3xrJtx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Sep 2025 22:26:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2E8BE81292
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E8BE81292
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2E8BE81292
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 22:26:38 +0000 (UTC)
X-CSE-ConnectionGUID: eZyvXWAJSwGD/faFWqdg5Q==
X-CSE-MsgGUID: U/UnAjTITgmK9LJTF6ubXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60194202"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; 
 d="asc'?scan'208";a="60194202"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 15:26:38 -0700
X-CSE-ConnectionGUID: t/WZIMkxSzSXjDhDaMPDhw==
X-CSE-MsgGUID: F8SuHiw6SkOJPgAh84l7Pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,267,1751266800"; 
 d="asc'?scan'208";a="174066123"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 15:26:38 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 15:26:37 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 15 Sep 2025 15:26:37 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.21) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 15:26:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X9jqVZieHXF1Up2ne8spaRcNBMDD6bSIJwOpWaREQEqbNBxbIFhvZwImVL3gIxN04nKALgyOiqz99DERxlflZLjgV2R1hJj1K9oclHv5gH4qQYdS2ElXMbHUNvtbAESg0AFsu0LCT7A7raoFuvUf/1SyOO0uDHtfIgT72sT/0gznOv19KKsV/FZtn48Nol2cqqZ1Y2vQaslebzA4VzGRbUFxHEuAyJrmLTac0cc9lcOf81Ml9wub1Z0UZvcecwyCypncZCKPMUbqrsqHgO1yCFhseojap7wOb/dBILKqngPPqwV/Np1AnAf2L9aGjEvPpb2JhSe9xqkCq/DISfxs0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qutFDH5AvhjUCtR9E58HNRlktZv1KC4yJ84b9Qo4VN4=;
 b=FO1jIzhv4qKCHgqfm/uctHf2U0uOXxNbIv57+W3qqIWNMy1JUEyCVy6pFlAllgE6Oa+CNJFFvRcrUJw3qrgXkc53A3C6JKUJFJezeVuXY0+N4kJvYjHTqR2BtcgITVXueWXALtHeZQVjNh2QSDEFPcIoxd3qjwZH8SatpavcYaivAlIHUFJGu+/NdFH8U5BzLKtdsMuEKWUexSI0QSKBPJZ1/Hax9Byoy65akcsiDxLKo/CgxpI1IzOPO00XEZyGB4ARD/jmKFdM8xIXOF+J5KsTHZqfLwZO0zsJvgU4TyPOizObfopZHUh04P2Td87AEFDUekWX/5d22N4HwwEfOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ0PR11MB4815.namprd11.prod.outlook.com (2603:10b6:a03:2dd::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.22; Mon, 15 Sep
 2025 22:26:33 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.9115.020; Mon, 15 Sep 2025
 22:26:33 +0000
Message-ID: <9d64e487-7678-4bf3-903c-d3349d0cf220@intel.com>
Date: Mon, 15 Sep 2025 15:26:31 -0700
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
CC: Jesse Brandeburg <jbrandeburg@cloudflare.com>, Jakub Kicinski
 <kuba@kernel.org>, Hariprasad Kelam <hkelam@marvell.com>, Simon Horman
 <horms@kernel.org>, Marcin Szycik <marcin.szycik@linux.intel.com>, "Rahul
 Rameshbabu" <rrameshbabu@nvidia.com>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <linux-doc@vger.kernel.org>,
 <corbet@lwn.net>
References: <20250911-resend-jbrandeb-ice-standard-stats-v3-0-1bcffd157aa5@intel.com>
 <20250911-resend-jbrandeb-ice-standard-stats-v3-5-1bcffd157aa5@intel.com>
 <95c067ea-6c48-4a94-8f76-ae4cdbdfabeb@intel.com>
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
In-Reply-To: <95c067ea-6c48-4a94-8f76-ae4cdbdfabeb@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Ehzo8gq2yObw0ky9PhxjR9tW"
X-ClientProxiedBy: MW3PR05CA0026.namprd05.prod.outlook.com
 (2603:10b6:303:2b::31) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ0PR11MB4815:EE_
X-MS-Office365-Filtering-Correlation-Id: 9d490806-9397-421e-1b27-08ddf4a6ecb1
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WDVOYzN3MS96eVBHN29WL20xZ1FKRE51S3JvNzN6NTFnajVUWGtZSUdwWXRV?=
 =?utf-8?B?aEEwRXJzK1lWSDFZRk9OSUtBaEtqa3c0N1E0VndtbzQreXdlUS9TazB4SU9P?=
 =?utf-8?B?S2wxb01PVW9lU1Fickw1UGNaand1WCsvTHZsRW5PZmVMeXFBVHVTN004U2Rh?=
 =?utf-8?B?am11eEVoaFl5czRPcFlEWWVKQ0dBVWNGdjZEbVQ0ekhTcDN2VzJmU0hGM3FH?=
 =?utf-8?B?MkFWa05HVTJWL042L1JNd1diRENwWWYwNXBENU5JV0JQVGk0Y29yeUVXUU50?=
 =?utf-8?B?MnR2Q3dLSlYwb1U2Q0l2azAzcmNUMmJaTVpJS0tqN3F2WTVpSitjOGI5aFlk?=
 =?utf-8?B?Lzg1dXdYK1lFWkRzemtCL3RTR1F0OEZ1SWh2d3ZobCtuMVFBOFN4VnlwbWJE?=
 =?utf-8?B?THNlQXhrMFhhT0Q3NVRWdmRjbmFPVTUrdTdpcmw2bHNzZFpJM3NCWmhrb2JE?=
 =?utf-8?B?VXlyS2N4UFZyYWs3cVRjSVd3L2NBWnRZQXY4Rlh2YXlqTVlveFpHNUNFZXpO?=
 =?utf-8?B?N0ZoTllYU0JIbStRUXdaa2RiR0RoZ0dkTHpGTmxBZkVrL3d5VmFTS0hFWnVi?=
 =?utf-8?B?TGhQQ3BneUJMMGVhNmFqMU9jNDRQRlp1SWRRR1BJWmFMQitwczBORzdpaWo0?=
 =?utf-8?B?VHRUci9LOWc3T1dyS1VOamtROHdaUnV5UFhCY05iNDNhL0YwaUREdU80S2FB?=
 =?utf-8?B?V3cwRVZFMGkvaE50bm5RUWRNU2tLNEpzUis5Sk1Xa3lEeFdzMmlxZlVjTWty?=
 =?utf-8?B?QWwvckhVUUJRenYwVWRJNzBLc0FrSXlUWXZXNEhqKzcraFlidks4dmhKdUQ4?=
 =?utf-8?B?MXNaRzFFRjJ6a3ZEWTdJZkhQSU1PWCtBc1hBWVNCTUtVM2ZIMkNwNGVwdmc4?=
 =?utf-8?B?TG1pOUdnanhBL21vN3gzd3REN3RJMEV5djljQ0l6Z01LTENVWHNzaFBvMlNE?=
 =?utf-8?B?LzFjem8yemcxTTZ4YkhBenVOblQ0dWoxZTBJSGFzVVJjcTJWT0l5ZDdzTmIz?=
 =?utf-8?B?amVwSFlsVUNZQjdUTEkvckNBVlNiSWp3UkRSNTJnY0tHSitrTWF1cFVUZ0ps?=
 =?utf-8?B?UVBpQlRIOFB2alUzbmVja1A4cDhrMWczckp1cmVMZDdkTVdnaEIrUUxMTTJa?=
 =?utf-8?B?QS9vbWUraHhUQVFGUzQ0RHFZbU5WTjdvTjJ5aE5vOHl2aURoaDJZZXRqdWhz?=
 =?utf-8?B?NWE5RXZ0TDZCb2VjM1B4L01Ta3lJOVowR2VjMy9jTTBENlU3YWNUM2VRQTFW?=
 =?utf-8?B?alV3TnhpN2w3VzRJS1h6blp2NjNuRW9lTnlEUTc0ajZMM29nRUd1aXRleVgv?=
 =?utf-8?B?bTNpNmZ2eEV2cHNjbHFEd1FPS2FibUM3ZU9zbjZzN1VtZkpJcVBmWTJUOUgy?=
 =?utf-8?B?VWo1WnFydFdSRVZnOGdleVJ6RHNMRHJ6UE5NMEJNTWJCOUlETWUyYXlhVzMv?=
 =?utf-8?B?NEpFNHVxRXpjb1dleTl3Y0YzTUt4OUxZV1crb1dKQkVWTTRNeW1vRUJzQkQx?=
 =?utf-8?B?dTFkREIyaGRBNDQ1YllBRWxtYThmK2xmN01YeC9WL1lJVGVQa0ZpazFZbnli?=
 =?utf-8?B?RWZIWDI0bFlCTGR3NC9weEVWZzNqaVRucWtCRjhrVG84Z3phcDR2ckdzSFBR?=
 =?utf-8?B?RXpiekRKVW9hY21xRk0rS05HOGR5bTZLUml0aWllV0poU3YyUWJvbTJVMHJp?=
 =?utf-8?B?eDFCSExmSkE0TlBQN3JvWUdoTDVIQ3NOVUZIUVJiS3FqUi9pMmhKTWVLc1Qr?=
 =?utf-8?B?b1dhSlVpUEtaczdrM09EeG1kM1JVTjFhdU9TSWFicExCRmJHMXRoUUkzR0lS?=
 =?utf-8?B?QWJPRHFnWXdpR0s2VTUzMExSbWRqMkRSa2xFN2FmTVJEUzljQWsrRmZJYk5J?=
 =?utf-8?B?NmZuV3R3a3BEcmM5aHVkUDAyVkh3cDNzaU52M0ZqRVFNc3YvdEJ1cXRkNEp6?=
 =?utf-8?Q?Pe3ssybbP9M=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MFFXcno5eHQrTjdmR3h0Q0ZQb1lRcFVNQW80cEROeDBxaTBBTHVRRzZESXRj?=
 =?utf-8?B?U1ZrbXc5YnlQRkw3MWtLamRtYXBBV1hOYzJVZHVMWnYvTEpzMmtycDRwOGRq?=
 =?utf-8?B?akZYWGhjSWxsRVhvYStycmZGR0NLZklIUnFUMVpFdmRBRXBUWVVuMEJQeVhm?=
 =?utf-8?B?eUUxSUJZWVRDRjlXc09LR25wSG9UMEg4RjFSUFRmNmhqM2FsMWFXTWVDVm95?=
 =?utf-8?B?M0F1ZE43WmFZZDY5OXlHYzQwZkhJLzVsMWFPMm9XbnhKbDNONWdraFdkZjlC?=
 =?utf-8?B?QkhxaDErNnR6QmIwR2czKysrOTlXcUdFbFZxYkVNbEY3eUdsbXM5TnhLNjhm?=
 =?utf-8?B?b2t6T1IvS2oxeElvUkM5dld4a1hsR0lDclA2SkVUOFltL284VEhzbkYyZUZa?=
 =?utf-8?B?d1hTRHh4NlNITUZ0YVFsWHAvUTNYelJXbEtNci9QaWtLcno3T1IvRnBtMXRy?=
 =?utf-8?B?VU1ZTDRyUWVkSGVkSjRPc2szakQySjVYNWRxcU8zampPQzgyRzBvZS9TSFFH?=
 =?utf-8?B?RzdMcUcvYmZBdW8veDg4cG5VTWY0UWlQWTFoNU1tajJISlR5VUhwWUI3SklQ?=
 =?utf-8?B?N1hOYm5FbFVGV0lOVkcyenpUdURiNkpjOHVjSXRVakJMaVBrYkFjdklYSUIv?=
 =?utf-8?B?VjVIVkJKVzlIRmFzMU1EeEJrVHlwcmVNWlprWXRiRjd2THgzTFBHMmo0SDVH?=
 =?utf-8?B?UStLRGdJWGFVcll1VjJta2JKUzVlSnA5aXFRajNRUEU4U1c1dTRwYWxFR0cx?=
 =?utf-8?B?T0NsUFVNUFg2T0lBVXhiODFIRjhLOGZ2akoxejFxYS9vWHI2Zll4TVVHbTRR?=
 =?utf-8?B?SEtFa1lqOVhHUGRWOTJWUEFsZDVCT29uYlV6TGJ4U1NGcmRld1V3SHNsOStX?=
 =?utf-8?B?MTU1MWh5VThMcE1hM1FPV0oxLzZxUFVFSnkweGwrUk8vRXV3a01ld21EK1ZC?=
 =?utf-8?B?QXBoS3hDc2VHMzlyOUdrOWNmWUpFRWJyTklVMU1ic3JKN3dpY3J0emFRUS8v?=
 =?utf-8?B?SW1sd0g3QnE2TEhrOXp4dmdldjBXRC8zanlBaXVxUW9zRXBOVE5ESEtWU1N1?=
 =?utf-8?B?Rktyaytkb3Z2SG9jS2pNMDd4QjF5Q3FNQ1o2eFFCTHF6UkVDampHK3VHR3FW?=
 =?utf-8?B?NXBXc3JwY2ozaWFGK3hjVHd4STJrL2VrU3MzTlcwZWZ4RHVVZFVIdjhSeUtk?=
 =?utf-8?B?d3hoaTRLQy9LVWo5U3RFMkN2eGFmaWI5TDdscmJOTi9oWjdTL3JuOWZZS0Mx?=
 =?utf-8?B?M1g0U2VPMFREVjhzQVBVc2VGZDJaYlpIVVZoRHdhWEY0SmlSZWVRUE5QRlZP?=
 =?utf-8?B?YThHU3Y1Q21LTmJIR1FpMHlhTmFQRzhKbHZlWHFzdWhqU1JHSG8zbkEreWJo?=
 =?utf-8?B?eEVDVWpPSGhjQ2xyT0JrOUNCMTkwRnVOYktGcG5STExxT1pkc0hIWCtkRCtX?=
 =?utf-8?B?SEpYbFl3QS9Fajdsa2RHQ200K0tjeW0rMWxWckxLK05NWWpjODVKYkhZeEI2?=
 =?utf-8?B?cW4zYUNtVFoxU241YTVCTG42ZUoyMkFXdUdnYm44TGpacVJlcUpPOFkxYnR6?=
 =?utf-8?B?VzU0MHBGNHoya04xMHZwUmErdHRZelQzMFhkNTBZUnRJOE5sby94TytZOE0v?=
 =?utf-8?B?ZUJlczJNQlVLOFJjMFQxcDZFOWErQmVVaWRJRGVVbmh5M2wrWkZCcU52MDdw?=
 =?utf-8?B?Q1BUNVhqOEVkcmc0RWJWb1pDQStzelVCY3dqMFRyR0xkUjFNUFZJUTdoZjEw?=
 =?utf-8?B?YXcwSmwyKzlGdW5QNmV3TFFjeXg4dFVvSzVhT1NDemlnUzFVV0M4VXM3WnAw?=
 =?utf-8?B?c3Q0VWZWZXlnWVQ4TFNDZkIzd01FVWNwMXJuUDRHRUtyMWMycjViT1hOSmpx?=
 =?utf-8?B?UEgvdmE5ZURlYmphYVFqTmxuZExHZjZoamNKN1kxUHFtbS9ab09objRmQnAr?=
 =?utf-8?B?bVVvS2MySE9xMUJMTnpMMjg1bURwMlB1eVNGajdESlRVK1dxOTIvVTcwUGFj?=
 =?utf-8?B?OTJvcWZoUnFlVjNsY3BDV3JjV0lVT0RsYlNDeXVabXdGamMrMnh1M0RBb1Bq?=
 =?utf-8?B?VzRQWStKRWlNZEVWamxjcjlIWkZzRmtTNEUzOWJtYjFoM1Fsc0dnU3VQRFJy?=
 =?utf-8?B?dzlIczVhSCtnYmhERkhFVi9jczJzZjVoaStWQk13T2p3bkJjZUZkcFRwdE9O?=
 =?utf-8?B?Unc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d490806-9397-421e-1b27-08ddf4a6ecb1
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2025 22:26:33.1795 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FwFMOzoiPBC1HzfCEkVaxKYrHrW7bnDz3ghcw9LV76qpSkf6IrNgXzf0HQ5j9Avlr/r4HblLEADvm5pdqwC8E7FOFGGHMau5l0kfkbEIw/8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4815
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757975199; x=1789511199;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=qutFDH5AvhjUCtR9E58HNRlktZv1KC4yJ84b9Qo4VN4=;
 b=fe6JdzPDr3vjutuel43PmxWGw7qnaLQNJF73qi/fIubIxWnntjcxIifm
 oGHfVbyBSHYZOYntJ2bG3oMqAlrFtwBZCOX5nEqLgdmbfPHcW/gk+uDlS
 ADFBmW9ADSRWcRbBOlvFqsmnM9DO0/t7flP76ElGSimipdRvAX3HKFsMK
 1Mz8W87Ta4Mf/dpwpFHYXyDaa4hndsI4CuVbLu99IMbPd42tKxxKgN2hF
 qVMjqm510VZFQdeH30i5Asi7hubYJIS/MKgLfckqlvrqSNlPXXi+vA7BK
 Lcqk3MHTgsw/pVd8UBXMr0nXOsdgMt26X1Bu8HM+8/XvKOfe1K/FyQoj5
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fe6JdzPD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 5/5] ice: refactor to use helpers
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

--------------Ehzo8gq2yObw0ky9PhxjR9tW
Content-Type: multipart/mixed; boundary="------------Ss61feXb9EUjowW7k99Ed0Jh";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Jesse Brandeburg <jbrandeburg@cloudflare.com>,
 Jakub Kicinski <kuba@kernel.org>, Hariprasad Kelam <hkelam@marvell.com>,
 Simon Horman <horms@kernel.org>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-doc@vger.kernel.org, corbet@lwn.net
Message-ID: <9d64e487-7678-4bf3-903c-d3349d0cf220@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v3 5/5] ice: refactor to use helpers
References: <20250911-resend-jbrandeb-ice-standard-stats-v3-0-1bcffd157aa5@intel.com>
 <20250911-resend-jbrandeb-ice-standard-stats-v3-5-1bcffd157aa5@intel.com>
 <95c067ea-6c48-4a94-8f76-ae4cdbdfabeb@intel.com>
In-Reply-To: <95c067ea-6c48-4a94-8f76-ae4cdbdfabeb@intel.com>

--------------Ss61feXb9EUjowW7k99Ed0Jh
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 9/12/2025 12:46 AM, Przemek Kitszel wrote:
> On 9/12/25 01:40, Jacob Keller wrote:
>> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
>>
>> Use the ice_netdev_to_pf() helper in more places and remove a bunch of=

>> boilerplate code. Not every instance could be replaced due to use of t=
he
>> netdev_priv() output or the vsi variable within a bunch of functions.
>>
>> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>=20
> no controversies here :)
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> (assuming this is for iwl-next)
>=20

Yes. Forgot to b4 prep --add-prefix.... Woops.

Thanks,
Jake


--------------Ss61feXb9EUjowW7k99Ed0Jh--

--------------Ehzo8gq2yObw0ky9PhxjR9tW
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaMiSlwUDAAAAAAAKCRBqll0+bw8o6Of2
AP0R839nH9JN7whg7iaIgr8iGlaUME2nl41bhb8jo6/H/wEAp/twUueEkVxXK4KR7soh2hf8jzzB
hFjPDuIdQQnnrAM=
=0orF
-----END PGP SIGNATURE-----

--------------Ehzo8gq2yObw0ky9PhxjR9tW--
