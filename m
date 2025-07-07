Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DB24CAFBE7B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 01:03:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B704419A2;
	Mon,  7 Jul 2025 23:03:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xcfb8fU0dj_8; Mon,  7 Jul 2025 23:03:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DFC3B419A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751929389;
	bh=qCQl1KDrkXRBu1Lquvm1I7oZGzA7jFG1ukjr3UdoSug=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WcyHRQAwpRtNXveOSFEGa8vxgLsupxKa3eqOj49dbyxhshLsAVGSG7kxVIdk18LzC
	 E4WypD1EEyBjDFc1lHRx5fTFwg4v4kO4vSOxS83YYI2dMYra5W8lo4LwKFmAf9BEa7
	 ZjB6n8g8fKA9sDVQuIUUYjPoY4z/e3xWuHM1JR8/lh0sB61OFijMwXzKUHIx/EYgEc
	 6LJnt8xGbk1uuNBfgd1DRIGf91P6wIIeqHJKQkrX+5c7OzDu+Cr0lfEcvTZZIltGch
	 6UStwXVl0r28gDipieJXnySwfo7H49jzeFC26eGvqQLVhzeJ9LytlYBnWiEHUDZZX0
	 EX7GnDPbVlZWg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DFC3B419A3;
	Mon,  7 Jul 2025 23:03:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8109D1BF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 23:03:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 728DB612A0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 23:03:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WN6V46bfTugo for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Jul 2025 23:03:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D0BE961295
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0BE961295
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D0BE961295
 for <intel-wired-lan@osuosl.org>; Mon,  7 Jul 2025 23:03:07 +0000 (UTC)
X-CSE-ConnectionGUID: oru1YdFaRD2bqmmDVfbnFg==
X-CSE-MsgGUID: LZ21TYvaRjy8q4SN5JUu5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="65511767"
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; 
 d="asc'?scan'208";a="65511767"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 16:03:07 -0700
X-CSE-ConnectionGUID: t3x/obE9SwCYH5ZxS+AWyw==
X-CSE-MsgGUID: JgLGVTkkQvigV4R+x/kkWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; 
 d="asc'?scan'208";a="160883797"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 16:03:07 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 16:03:06 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 7 Jul 2025 16:03:06 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.71)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 16:03:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vCtcf6Y6J7OivrrcPGgY1dLpA/IrXaF5yqmhaF8baaxxr5U8vEstJ3ThnkVc7qi6okMTtPGN5uaL1n9tfCk2TBSlrd2OhBgSn/yEutzy3sB7tEJ2KxQD374g0e/vK3dJrNrmcZPiCfnrqT78/2m/yI3JZBazRnBikEDOr8Wato6sxWMaegLDnxGC6PrihjU27iopO9GRKcOiFPVTXNuw+CHc2htMSobpGVM097I6AKvXXJwkyvjILS2jLs4qTL3V+AmfNAWCznz2nHBPCsLZKKukf50uQvBQoq1eu57GAcJmMcTf1dGXoWeDr0/yN8l9s5HlCWRLjKHFY9Ycblh9XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qCQl1KDrkXRBu1Lquvm1I7oZGzA7jFG1ukjr3UdoSug=;
 b=d43dDkQw98Za7AWf1kA1iCtkKFG8kw0jQA340N6fEcJVr2pc4UJwJdMTvAyoUgWfLUbToPacMJLMmWcQq++k3MsIoGn2Ea5/4tlXvJh3r5cCydAoODyyuCFLmEnJ9AGFCPvwqSLxqKIV/gs9me+EgRUxUm9GJUp7CjXBpLrcl980+3SeOKMePFOkIn2CFmw29QxYPXWL1Hkd9kqzXcRJ2W2SaxxJjesVxi/OhahzXK67mV19N2GypvE0B+eFg0wNnaIm3muk2Z2t6Lplgu2o3fuxAV1E14ep1pPsR7K1marflkx/PZHGGfUWQvvk3QgeNavWyGQZddNkBDLac21YqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CY5PR11MB6415.namprd11.prod.outlook.com (2603:10b6:930:35::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.26; Mon, 7 Jul
 2025 23:02:32 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.8901.021; Mon, 7 Jul 2025
 23:02:32 +0000
Message-ID: <70ff6fc3-b0ab-4296-b23a-3d4d81424af6@intel.com>
Date: Mon, 7 Jul 2025 16:02:30 -0700
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@osuosl.org>
References: <20250704161859.871152-1-michal.kubiak@intel.com>
 <20250704161859.871152-4-michal.kubiak@intel.com>
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
In-Reply-To: <20250704161859.871152-4-michal.kubiak@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------AoYvE9x0KcUC20IguVN6XCJ4"
X-ClientProxiedBy: MW4PR03CA0279.namprd03.prod.outlook.com
 (2603:10b6:303:b5::14) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CY5PR11MB6415:EE_
X-MS-Office365-Filtering-Correlation-Id: 8cf453c2-d36f-4b4c-c9e8-08ddbdaa5abc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?THlSU2Z5V0R2d0FCbFJqd2VwU1ZwK05JV3pWRGM5UHVadXFTaVZwRlZmN0NT?=
 =?utf-8?B?YzVnM05FK3IvZDcwcSt3NTAzcHo1TlB0NjZrc0ZUNzNNM2trNWZJK25GdFB4?=
 =?utf-8?B?RzB5NXQ1eHYvdlJXTFlrUDVMYTluN3kvNTdacXY2aG9RU3g4RGY4NU01VkJL?=
 =?utf-8?B?V3lkK3RFYzVHcnM3UUhLU1lCY3pDSXZYYXNwVHAyVmt4RExGMVNMQktoZjVy?=
 =?utf-8?B?ZUd3SWFlMHAxclpJczIxeDFVVFNiY1JSd1pENzByN3lLSExoYm4yZFRBMVdp?=
 =?utf-8?B?cUJ6QWRpMCtQMFB1OVEyKzRVNWN3TmllVGdvQzd6dFdiUy84Y0dCWTJkVXdY?=
 =?utf-8?B?NktlY3FNWUhtWldSL3hlSjcrQjAwblhLT3Q5SXMxbGNydVpmcnlqODNqR0w1?=
 =?utf-8?B?V0hyWjA5OVpMTzduQjhpZ1ZibWdUb3RsT2pzWGJMdEQ3L3QwU2lPY0ZGZk1k?=
 =?utf-8?B?elpJcFFFeVd2cWhIb2FpWXM1QzFLajJqY29rV1A2Tlc3cFgrdVl3cGZHTUxK?=
 =?utf-8?B?bjk4VFY2Sm1FTmtteUJ5WDZwZngraTVaWnpYaE1FdTdEbExURE5KdjFnRkQx?=
 =?utf-8?B?bGYxMVBOV1M5YTBaaStKYitWOGgzNnFSMFVkang0bmwvTzhidFl4dDl6WlM3?=
 =?utf-8?B?TjNGOXhGd1h6bDg3bFR3K21WdWlNR1g2SDZCTHVDTWZMQTZ2QWFZTjYzTUVU?=
 =?utf-8?B?NkRid090TDUrMjdqQjAxcHpJMEFIN2p6UTVxcitocExnL01EblFzM2F6bHZQ?=
 =?utf-8?B?bHBkb3pHNHM5SFgreEMxLzM1SytObTN0Z1VFUlQvZ0VPaDZqYUJkQlJKQ2k5?=
 =?utf-8?B?STNWT05KV2I2Skw4ZDFYbjRGUFZFWHRQbzQyTDNUK0g3RmUwV1d4RnZvdHIx?=
 =?utf-8?B?Wm1OaFVEYWtwMHBiUHoydmN2L0NGeHhFd3RJZDFMRmRnaWdnVUI1WGphRUVa?=
 =?utf-8?B?SG5kU0Q0MjllWUtEQjNtWjJwdTVVVW1GU3ZqVlpzay9NQS9YbEROMkkvRFZC?=
 =?utf-8?B?YW81d0xhYlNFZ1hFQ0FEazVKai8reHh3NXcrN2hicWtNL1BPcjcrbDIwd3B5?=
 =?utf-8?B?NXlyQkxzSjZTbWN4bmxGRGsyWkR6dVNUcHcwV24rOGdNMjcyaGQzLzJyWG9L?=
 =?utf-8?B?UmlCdnlnTHpsREw5cTRWWUIwbjFyM0NEL3pMa2hFYXdlWllxV0tadFk0Vkc0?=
 =?utf-8?B?VFozbmc4STlhQWl1Znk0ZFZOU3hHZGg0WW9VZDdJS3UwVnlhS1AxZE5GdUNJ?=
 =?utf-8?B?M1dPditHbUVsSjlsSmRMU2ZJb2lJaWg3dlJiemNhSEZXcnlHODJSa3ZlSUlo?=
 =?utf-8?B?WVV1eHFmWUxBOGpjSXY4R1p3cDdCWEI4bEVTMDFTUndlekJRRkdNWmxCQUIr?=
 =?utf-8?B?bytqU1lHd2k3NVJFR1RudzZ0dEwzSnJmY254aXJUeUNkNjZuaVVKWkROWGhr?=
 =?utf-8?B?THpmbWUxNnZRS3J1QUgwb0Vld3hWY1JVV3B4MVdPbk9RR0dXZk5iSldyeXRt?=
 =?utf-8?B?WFc4MmpaSUFJR0kyZm16NzRqS0xSaHBWNXNkV2duaVg3ZC9ZYS8rV21XTzdv?=
 =?utf-8?B?a1cyN3pydmFPTzhTTlhrQzNleGJxdHN1VXRmRHUra1VEVU0rUFVyeDhSQ2lw?=
 =?utf-8?B?dXZ3R0tBVG41eVlNck1TeDhvc0NDeU9oN0F0cnJuKzNuNVBmMmxWZitlc3VG?=
 =?utf-8?B?RDR6UTVyV1B0ZHpZUDB2cmcwU1hJWnlVWkpOcExheFk5azNjMmQvZC9vOWZi?=
 =?utf-8?B?NlowYUdFY0Zsc0VrMjlXYVgxQnc4THYwUng0aXBaU3RVRElxVlpTT0ZEcTdr?=
 =?utf-8?B?M2xzdEFJL2drbUtaSXR4Y25OazlxekFhQVhDNExuaUN2YXVSaGRvOEZyc0Zh?=
 =?utf-8?B?NXhuSE8rcmdNS1V5T0M2a1JiZWNKOWl6MGZaSVpDQ0RLQ1FUWVliaXZxTWQv?=
 =?utf-8?Q?hbeDqFqABw0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NGM1UURkNnZPRE53WGQ5dFZJR2FuaHBMd1JuZzQ5aDZ2bDNyWkQrVmxIWXAy?=
 =?utf-8?B?OTRWNStjRHkvN284OUtrUTBuTjRxWXZ1NjR4aVl3bnZtQnlMTHp5SDhJWXdz?=
 =?utf-8?B?d2lBcjRPTnBNYWRHWk02NC82S1VMcnNsVU9lT0FZZkVoU2NncjRsYThKSVM0?=
 =?utf-8?B?aDRjN2tRZjJTcjlDMFFHWnV0TWVzQ2E3VmMvMFJseVFudTQ0M1FjOGNNenYv?=
 =?utf-8?B?OW51bFhVLzlRcUZGRXF0Znd0ZjZDOHJXKzluVnVJWGR0TExhTUEyY2lqbmhP?=
 =?utf-8?B?dm5leGtYd1VIVUE0aFBUN2o2eWZUYXErZGYwK0Nma3cxUHh5WVBya0tuNzVt?=
 =?utf-8?B?Y2lXQWg5TEllRnNNTjdyYWZXSU9ZUUpKWDhBcmpURDVHSkJqT0RlWGlqbEZY?=
 =?utf-8?B?bllIUERVbEhDakpqZWxkR1VReDJraDhQR1V0MUZCYzFOOEFMbEVETXRaYjZW?=
 =?utf-8?B?MVllS1IrcVZOY09wdm5wN2p4YUpCRWV6SGJsYmJTdU5JemlGaFhySDFoZmt3?=
 =?utf-8?B?cWV0dmw3aGhxTnhVUUdHdURkOFdrdWkyKytCUXFENk1XK0Rzb2VlSE56M1ZB?=
 =?utf-8?B?MlBkWEpPQ1BpczMvNzRueEJLcVFGcG0xYkt6L0lzRXZSTHQybVB3WUZPMk03?=
 =?utf-8?B?OVR6emlzR1ZlTzhCbU44WmI5MHdzRkZsb2NSMTRiRy9YMlltTGg1LzZqR3d1?=
 =?utf-8?B?VDFqNGhhOVpDeFVXT3lzem04SWZ4NlJKazdhSFNCMmZuK3IzQXBZSWRuWFZC?=
 =?utf-8?B?UzVmVXFLOE1jSGNGdG1xWlA5c1ZPd3lMTHlGQmtEU2MwZUVIN0U2NS9Vb0lI?=
 =?utf-8?B?WjFuVW1oQnczMSs0bzBjbEhHTzRxNXhPT2RqQVRpUW1ENytEellITmFtME8x?=
 =?utf-8?B?YlUrOFhIcXpzbXlubmg2a0NXa3VpSlJ5N3gzdXRCUzU0UHFPdysyNE85dEll?=
 =?utf-8?B?eUJiZW5vY05BSGRJamF5Y0dtd2kvQmJnNklUbWRYRUs3YTlUTlE4MWFkeFB3?=
 =?utf-8?B?UWJ0bitUcHlINHdVTm5IL2NrWW9odWhieGR6bVNYbHJuTTN2T2FhWG1GanhI?=
 =?utf-8?B?L3RDWTZGMlA1ZHVkWEk2N1R2b3lzMUpXTm1wSHlLTzRFK0JoYmdhY2Y2elMx?=
 =?utf-8?B?M2tLN0F5QStYU3hPMGJ4ZWprc2lQZzVya3IzYWp6RERxQ1NtQytzYnh1RmVO?=
 =?utf-8?B?ZnZMckhPOVBhY2ExOXFFZEIzQXozRE5BWHIyUWFsQTY1TUp2NmNSS0JqNzRi?=
 =?utf-8?B?RThwWE4vMFdmMHJWWVB1YXlQMzJ6eE9UdTc3VGxiVmdxcmhkL2wwemZLSWVI?=
 =?utf-8?B?V1J3ZHlOUXpCcTFENTlnRjNMT1JCblI0b003R0lXcEZhQ3FXci9Yc3FRVUxp?=
 =?utf-8?B?cnAvTEtBK0lleStMakJiS1lXNm9XTWtncHk3SVZEVm1lbWFuNkxvb2xBM0JP?=
 =?utf-8?B?NkI0Wmsvd0pCdkV6TkE5MkVtV21rVGRCSWNBWlpCc1l0aUZSTXVsR0dHMHNt?=
 =?utf-8?B?VUV0ajdYRjdzbXlIMUd5TDh6bGNQbUZsRS8zTmJ5VWlqdTliVUdyRkFTVmZE?=
 =?utf-8?B?b3Y5bC8rclhCSTdUMmd0Nk8rWmFLZXBrbjAyNnRwZEdiRE1aYkhDMGt3R01j?=
 =?utf-8?B?UkErUnF3YldYTHV6Q1IzV2hXc2FIT0RwOEQ1RVZOc2hsMExiRmhJUWVkQmRX?=
 =?utf-8?B?ZzFpZTVjRlFZeW9hblljL0o3dHlvZlY2L05kRVIxMzJIaEM1cUo0TUFGQW8x?=
 =?utf-8?B?SWNQRVRHYXNPTVN1Z1pRajRGM3dvR0lUalZpQWh1WHlka2lBQm91d2xlZWhI?=
 =?utf-8?B?K0hyUXV5TzFxV05LblpyY1ZWUkJ6Zm5ZYUF5cTBuZTJxM0krazB3K2RtaXho?=
 =?utf-8?B?L3l2eGxHZ3I2dVZzelRKWWo5d0JEYk1HckI4cGlHbm9adFd4K1ExeENXZGdH?=
 =?utf-8?B?UE9qQWJKS0lzbjZVYTRUVjBjM1E0M2E2YUVJQ3dvdm5IUjNTaG5ha2J3RXRG?=
 =?utf-8?B?RlV4MjFVQVBTcmJvNmxtamwwOEs2NVVZeDAzb05WYXg5dmZJZXRIRDJ5dWxU?=
 =?utf-8?B?b2JBUlBCMEJBM3l5alRGQURyWDRwMDdGZHlFcWYzVHppQ2hQMkZ0aTlvUTNm?=
 =?utf-8?B?N1JDVEdTYlFKSmF5c3NjMExyenJzY3NpaTVOd005dzg4dStsMVdPSzNtTFE3?=
 =?utf-8?B?aHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cf453c2-d36f-4b4c-c9e8-08ddbdaa5abc
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2025 23:02:32.2159 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CSi0zTJu8bgFNwvzD4yhz/5VPYxlKTB6ZgUB9iNn6rz5YeZxi9KgyCflxwLej4syvCw9cxwycNEVq90Vw/zaw6oEJnhOq1Qtu6xAeb4d1nk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6415
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751929388; x=1783465388;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version;
 bh=zQKdTPuA5kxJHZoDM8SYcCabGBPetrAkWxxWe88ElDg=;
 b=E6at8fV/c01wvgXkxX9Y1mle9VsjyeQmWXIaYUztBWMvYW2YcdDDkJcG
 FsgvWpfxhXcE0TunxNPz/x8NLuGjF4aaOv6aPruBZIfy9rOmY2TlhQTp7
 iACwVTB8lsjdaO3FR4Jp/25lZdM5zMVIg2haZuz7eDMCdqT0ohPGnmONM
 nDgFvUJ7jUYDAfpMDYiDcXTsVBieoTWQIPjka9P/rTOY93eEVE9JFsv1S
 CEOxbdPWDa6OwVtz0ejwNxP4gTwncAWJZYj6NF38nQ4ppnrW165BGYFJ3
 CgwF2601vOHtr0bO/up2eb1YzYfVirYd+7uZN8ms2ufKAk/f9+qbAFy35
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=E6at8fV/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/3] ice: switch to Page Pool
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

--------------AoYvE9x0KcUC20IguVN6XCJ4
Content-Type: multipart/mixed; boundary="------------Bgu3U0SI2w4D1u77OGqRHa0c";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: intel-wired-lan@osuosl.org
Message-ID: <70ff6fc3-b0ab-4296-b23a-3d4d81424af6@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/3] ice: switch to Page Pool
References: <20250704161859.871152-1-michal.kubiak@intel.com>
 <20250704161859.871152-4-michal.kubiak@intel.com>
In-Reply-To: <20250704161859.871152-4-michal.kubiak@intel.com>

--------------Bgu3U0SI2w4D1u77OGqRHa0c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 7/4/2025 9:18 AM, Michal Kubiak wrote:
> @@ -1144,27 +841,35 @@ static int ice_clean_rx_irq(struct ice_rx_ring *=
rx_ring, int budget)
>  		if (ice_is_non_eop(rx_ring, rx_desc))
>  			continue;
> =20
> -		ice_get_pgcnts(rx_ring);
>  		xdp_verdict =3D ice_run_xdp(rx_ring, xdp, xdp_prog, xdp_ring, rx_des=
c);
>  		if (xdp_verdict =3D=3D ICE_XDP_PASS)
>  			goto construct_skb;
> -		total_rx_bytes +=3D xdp_get_buff_len(xdp);
> -		total_rx_pkts++;
> =20
> -		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit, ntc, xdp_verdict);
> +		if (xdp_verdict & (ICE_XDP_TX | ICE_XDP_REDIR))
> +			xdp_xmit |=3D xdp_verdict;
> +		total_rx_bytes +=3D xdp_get_buff_len(&xdp->base);
> +		total_rx_pkts++;
> =20
> +		xdp->data =3D NULL;
> +		rx_ring->first_desc =3D ntc;

I can't seem to find a user for first_desc outside of the
ice_clean_rx_irq_zc

> +		rx_ring->nr_frags =3D 0;

Similarly, I can't find a user of nr_frags now that we have dropped the
ice_put_rx_mbuf. We assign it, but don't seem to actually use it.

>  		continue;
>  construct_skb:
> -		skb =3D ice_build_skb(rx_ring, xdp);
> +		skb =3D xdp_build_skb_from_buff(&xdp->base);
> +
>  		/* exit if we failed to retrieve a buffer */
>  		if (!skb) {
>  			rx_ring->ring_stats->rx_stats.alloc_page_failed++;
>  			xdp_verdict =3D ICE_XDP_CONSUMED;
> +			xdp->data =3D NULL;
> +			rx_ring->first_desc =3D ntc;
> +			rx_ring->nr_frags =3D 0;
> +			break;
>  		}
> -		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit, ntc, xdp_verdict);
> =20
> -		if (!skb)
> -			break;
> +		xdp->data =3D NULL;
> +		rx_ring->first_desc =3D ntc;
> +		rx_ring->nr_frags =3D 0;
> =20
>  		stat_err_bits =3D BIT(ICE_RX_FLEX_DESC_STATUS0_RXE_S);
>  		if (unlikely(ice_test_staterr(rx_desc->wb.status_error0,

--------------Bgu3U0SI2w4D1u77OGqRHa0c--

--------------AoYvE9x0KcUC20IguVN6XCJ4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnoEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaGxSBwUDAAAAAAAKCRBqll0+bw8o6NGv
APQIk4osaPaAdBZreIwGUY7DZHXtAFoWG6MdrPAbSIrfAQDXt6ZwIEBsAfD+eQjns98kaSqyJI5t
lRZQ6yzaNTNlBw==
=+kdm
-----END PGP SIGNATURE-----

--------------AoYvE9x0KcUC20IguVN6XCJ4--
