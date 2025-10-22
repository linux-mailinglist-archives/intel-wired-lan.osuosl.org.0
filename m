Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C955BFE733
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Oct 2025 00:48:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B42C160F4B;
	Wed, 22 Oct 2025 22:48:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DUat5oi7tv8n; Wed, 22 Oct 2025 22:48:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3215F61062
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761173281;
	bh=CSYWTBeT2DT/Q5T9FOodsUIYa7nVgAE37hVPnSYC6u8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NChcjbtI8y+d7Txl5RHgOirbMM+t9XrlYWhg6O1CSylh985p7ftEW3vlr3UKJu1E8
	 cJT+sJsS2anCl1DHOxoDkd1LvaHxZu70WlI1s+VBWO8+tWczqSDHsWdIYL9FC0IjcP
	 yo+VUue7pvkQB/kaFbtEjZnouCGqHVjKgAJlJJFvFK0oU6sYNDElPNrIlxZGlCm3yE
	 NjjIxC8AsnOpNBCQHaiiDorl75YxZAy/5kclkN8xCnvbeHXIovk3/DmFCK522pzp1Y
	 ENBAqOHZKPBvQbbnDMpf1UUYYB/WO3Pg6l/RVwbRm7hbI7gw8ZnkFtB9uY3SA7HbmQ
	 zQ6frG1soQhiw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3215F61062;
	Wed, 22 Oct 2025 22:48:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E213170A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 22:47:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C7CFB60ED1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 22:47:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I2ME-jgnDcjx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Oct 2025 22:47:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0099960EC5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0099960EC5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0099960EC5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 22:47:56 +0000 (UTC)
X-CSE-ConnectionGUID: dyCG8Q9lTDqtDSznypYELw==
X-CSE-MsgGUID: NTzNMNhORemDsr6pNDUkXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="66977478"
X-IronPort-AV: E=Sophos;i="6.19,248,1754982000"; 
 d="asc'?scan'208";a="66977478"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 15:47:57 -0700
X-CSE-ConnectionGUID: BheUAnh7RHmLr8zUDiX4EQ==
X-CSE-MsgGUID: wtiiHISTRX6H+qYM3DwFUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,248,1754982000"; 
 d="asc'?scan'208";a="183582986"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 15:47:56 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 15:47:55 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 22 Oct 2025 15:47:55 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.45) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 15:47:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oodhwT64WMideSI6G0HNN/76NGf7ZZR8CQJ51lDqrUiw+BdljKLqp7tmpLggRJUcrCOeQCtj2IHFkAMVs5XhMCIrCKXLy0Cz6n7cNT15SIsK8GTGPSPps8NqkbITLqHb9LR01+8lPkmYo5RjA723eh4Zacaef1gpwOVyMaQO5ZntHBXxKzxJTAaybDt0OAFvelXc+Nf3pPbGr+WDRS3QUMtEz0jyq/H2WpHCjWY6zfdMjvVGxVRCzR/uIUyyYbFIGr1rv9VWAp7GLFIpe40NeTzTj2lKvAntMgPvcpcyefVWj92LCT0U26awiNuPS+dMaGFFPGVqo+ldK5/EWrQkkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CSYWTBeT2DT/Q5T9FOodsUIYa7nVgAE37hVPnSYC6u8=;
 b=pbuhY+z63LVCxzybHRoVIpatXdcpo3mLmInjbCaElPxLlPJ5BZfylyvDjnWWosd+jRf4pxI4Rtdom9n+PygRD6Y6ehLOsikpLZlOTWI0XIX7953DRVybuHkowQrOI5FRMa9W9Bujub4JcF02Vhi51CT5NDi94rjyxNnVpRCVnEc3UoJBoaIXRCOCXPOmreYRiEm1r+BIQvvsSW9N+5OnkFRsT9dB5mV5yVbvAnjjLp4qMaj3zLsp5ENMANoDw7uvb9pWJ4zbWvuEnPbU1bqYd3deo8+P7mgWKaNyl8AwGqdJT+kcbTcZFmjfdeObYWdjaVcS2PYaByvSHPODOfc7xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MN6PR11MB8101.namprd11.prod.outlook.com (2603:10b6:208:46e::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.12; Wed, 22 Oct
 2025 22:47:48 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9253.011; Wed, 22 Oct 2025
 22:47:47 +0000
Message-ID: <967c9a87-d759-44ed-a81e-ec8b8de99a75@intel.com>
Date: Wed, 22 Oct 2025 15:47:46 -0700
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <kuba@kernel.org>,
 <anthony.l.nguyen@intel.com>
References: <20251022131225.2304087-1-aleksandr.loktionov@intel.com>
 <20251022131225.2304087-4-aleksandr.loktionov@intel.com>
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
In-Reply-To: <20251022131225.2304087-4-aleksandr.loktionov@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------WuhzVwJpLavTuaWzPsGNsEXB"
X-ClientProxiedBy: MW4PR04CA0341.namprd04.prod.outlook.com
 (2603:10b6:303:8a::16) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MN6PR11MB8101:EE_
X-MS-Office365-Filtering-Correlation-Id: a9af1e91-f0d2-42f5-70e9-08de11bd05c8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YURyMitpSFJ4UEczaldOdUFqWkZmYkt3aEszMkswRjMvSHRXclBVRENJays2?=
 =?utf-8?B?VG96QlkvOGxINlhQMlhzNVdjdlBjQWFFRVhBZE04dDUyU1poWE1wU2s5eWNv?=
 =?utf-8?B?STNheFA1dGxKSEk0T3JDN0k1R3pNTUp3Wk0wREw1VVg5NmRBeU5kaWxGMm90?=
 =?utf-8?B?WjZSZnVKbXkrRjNiWDMrdFNoeGdGOXM0UDUxTXNZWWZaMTFHTFlwcTY1S2Za?=
 =?utf-8?B?RkV5M3pjZXBXTCt3VkZ0QkR4STc1YnMyV2tyNG5zQzYxR2d0eWFTUElDWVd2?=
 =?utf-8?B?MUlGWUFja1VuczV5RE01YStCRyt0cDdFSlhzdXNmNFI0YlFWZE5INmJIUkpT?=
 =?utf-8?B?bkNuVjJ1RDFVWWlDK3VFUUJ1RlNsNmlKUjVQNitvOTZKNW91VlZjQ0FJenZz?=
 =?utf-8?B?cUNzcjVQL05CUkdyaHV5Y0RUbi8xaWdrbGU1QkIxenVGNFBBU0o2NkVKakJO?=
 =?utf-8?B?M3JuQ1dQOGlDRlJYckxrS0EvbmJuTERFOSs5Z3JXcG44TitvZmVjekhHSkth?=
 =?utf-8?B?MlZUS1NkeFRhblBDZ3pOeWh4UmhrK3cyMDAzVE5iMWxUZXBmbU9ndzYxdWRp?=
 =?utf-8?B?RHlRUXlFQzJERm96c3lkM0tSbXlaR1BwTi9udHVtY2hUOGh5aTZCNDhlV3ow?=
 =?utf-8?B?ZzAyMjZnMk9QQ25wOUQ4T216MnNIcjhYbDQwMUNxS3N3bmlFbW5JSWRGZlQ1?=
 =?utf-8?B?TXM1MGxPdmpNYXhRZlNCbzN3bTBkM0lrYmxCTkd2WFhHYVJBc0FodG9Wamk3?=
 =?utf-8?B?MjBNWXJQSTRBWktUazJVUE1xcENoSHNEcGNvbGlxdWpMWDEvN3hFenVCV3Bt?=
 =?utf-8?B?WVBRZWlaa0tGNlFPK3c2bDJyZzZOZE43TmYrdkNER055NjgxTU84RFlRMGpy?=
 =?utf-8?B?cU52VVZvcFFRUGo3ZmhyYVkreE5wOFg4V3BtY0cySmMwbnJCdE9HOVkyaytj?=
 =?utf-8?B?NUpUaEtKOGlDQTgxUFZPT29sKzVUYkJadnpVVkRhSGphcjBiV0VyQ3FqeDVo?=
 =?utf-8?B?dUV2VmQvNzRzb3dBYmFHNVVMaEJ4dEh6aGRKdDRpZ25oSkNPZlVzTUNpVzcw?=
 =?utf-8?B?Q3FUTVFxQUhjUUVtSXllaGRGL0hXd1Q0VWJFNHh1QlNub1lJSm95QkFwZE5F?=
 =?utf-8?B?YjdlSy9LT0labkp3VnVpazViOHRXSmFsb3E2RHFvbXFVd3JvZHJjMDZJS1VN?=
 =?utf-8?B?RnNyRGJZRklQZmd2RlJUbml5MVJXbVo2SUFyMDhvRmZLMmM4N1RBZVVvcEJ5?=
 =?utf-8?B?SFBLTjB5bms4M3o4NnVxdEZEMzY4SWRCbTJSK08zNmZkbTJyeThLZGRQd3lY?=
 =?utf-8?B?TjR2ZVRPbERKTjBpa1cvTkNwemNDb0lseUJHTERGTWJJOXdnbGdEYmNQZVRq?=
 =?utf-8?B?UHhUMkJaS251eGVWbEpYVHlsbmdEZysyWW5Bcnk5YmVwWisrVGJRYk1xU0ZB?=
 =?utf-8?B?TlAwY2NmWndCdGdpb3F5ejRzUUg3N3BhaUU5VndyR1lPRW9TNS9La1BGL05V?=
 =?utf-8?B?cEVGZEdtT3lkWmJzUWE5cC9RQU5yR1VlWmtZY2J4Q2hpWWswSmNickpXbjhN?=
 =?utf-8?B?TVpkcVltTCtZR2h2dDhTS0h0T2p5NERMMGJuUFpWa3RncDE1b2pRNEtBL29H?=
 =?utf-8?B?WGlWalhIdWpJMDJMRktLTHJ6M3grNk1CVjR1cUY5NjJZQ0dObzBKN0graU9E?=
 =?utf-8?B?alp0ZEQ4RG1kaUVZNTJ1U3E5VmtsUExreUNtaUVQY1YzbFFudFcvNTNCNnUw?=
 =?utf-8?B?TjdSaFNKNElZV21wNWVHU2llWDVISFFhelJpWXlQZ0xQaU9aVFZWNjNwZW8y?=
 =?utf-8?B?bVUrVXJWYXg0K2RCVlVlSTVybS9XU1JmQW5CcHhiOEw2bWV5dERBUENvTVFn?=
 =?utf-8?B?ck9GdEE1L3BJTkdZYUp4VnpRU0NyYXhMVjEzWmY0b3RnaXM4TWkyd0lYSDRx?=
 =?utf-8?Q?uPRKB3pIcaibYHjmiwEecH//i0Bb6hTv?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ak5VcnRMMXhaT0ppMHh1dUQvS1ozMlMxREdZOGFNV3dLTnlEQWsvTVRNSGtO?=
 =?utf-8?B?QUkxVWFUN0Z4d2k3WUY1Y2dRaFFLaTFVUnVOM1o0MENySnRlSDV3bTdQNGo3?=
 =?utf-8?B?YmV1K3B5WEk5OVc4Y0RuTjBRWHdMY0pDNm9TWmcvMDNLNDVtMzZRWjdOUmhE?=
 =?utf-8?B?TE4zZkVSYUVhODlYM29ETWVZMWIzT05uNEo1cHZETkhjVUIxYmRrRGxrZ2hI?=
 =?utf-8?B?WEdnVE1iOFg1T2RGL3RCME1yYWdPOUNvdTFkRHNRUytVK0tiTklsZ3JuOVNj?=
 =?utf-8?B?YVJmckpySjNpVTVaemJ3SDViM0k0S241S0kxSmQvekF2d0dWcnJ2cm5tSTJJ?=
 =?utf-8?B?UlZ3dE0xMzNjMk1qb09RaUVQa29FdUJ1a0hCYmx6aE9FZ3hSQVVYZVRjVzQ1?=
 =?utf-8?B?NTYzUDV1WGVicGRlbERQUnNOY09xRFhRWjlJMnJqaVdncGNFL3E3bnVZRUhq?=
 =?utf-8?B?dWVCdllNUlQ2R09Ia1dkVWszYmQ0bzZwbFFOWVYxV3ZSVkI1MG14YmV0Y0Zt?=
 =?utf-8?B?YnVLR1pyOEpodXFOZ0JMSXpDVklEZFdSWG1UUmxqTzVZZWlEYSsvdjRIelFL?=
 =?utf-8?B?S2NucS9od3ZISCtmMTFqd0hzUVZvY0VsVGtGV2o3VjNuM2lNR2lxL1pDTDVh?=
 =?utf-8?B?KzV0M1JRYVI0WWgxZnZZZjlaOTByWDFWb2lkdUd5Y2x3OUdOL2hWZmdLaSsv?=
 =?utf-8?B?dW5xdDVPOTF6K3lvOXptYnpxcUtDcjlFTlpxdTNsaEgyck5Jb1lIaXlpRmFP?=
 =?utf-8?B?SisyczA4dXNrdnFha1g4My9MbEh5bk5oVkNNZTBmVXk3Z1NrWGdFR3ZxcC9R?=
 =?utf-8?B?Vm9kTE93NVcwYnFHK2l4TEVJZGhPbEUyWVdmTDZ1cTgvYnh2blhRU2tvY1A4?=
 =?utf-8?B?ZXp3T2RDeDkzSzFMYTFZYzNXS2Fac2Y0NVprZXU1eVVrdkpyOFBkUUR4NW53?=
 =?utf-8?B?ZHQ2bWVjUkxBTzR0UWJSdGdkaUNuVmVZVVNZeUpwekhPYWN0bnhzSVhLdURY?=
 =?utf-8?B?QUVyNERwWDd3MGJqdzRiTDZQbVMrdGI2S1JmczZaK2syVCs2Tk9ZMUJXaThI?=
 =?utf-8?B?NmlMRlFHVjhlaUZleEdiNDYwVUswNSs4OTBoL0UzUnBtSmJ4Ri84aUsyQ1Nk?=
 =?utf-8?B?aXlJOVJqaDF5MFdPZzRHZmV0SGVRL1JVUTVWMjB4ZUk2NjNmSjYrMTZNWm9H?=
 =?utf-8?B?SW9KVFA3L3A0ZFpxdXFCejhDbHlobndPRHFxdUd1VTJqeUxWMXhoNDU0cU1n?=
 =?utf-8?B?bEQ4ZC9Yd0UwVUJTR3lIYVB6UldXa1hMSVNwZGZiS3hLeXhnZmJsbEZmd2Ru?=
 =?utf-8?B?L0o3TEN3cllLVGV5eWVTbE1kSm1RQTJaVUJZc0dpKzJYaHhnaHRqejRsMCtF?=
 =?utf-8?B?UC9kZ3ZqSnVDNVo4ZytpNEV0dWkremxTaDRsTXFrVWtpck42Vit2bng3aVNX?=
 =?utf-8?B?QUlhZXl0UXFzeXh3aGhOeDYrQkZIdk5UMms2SXE5R1ZYSFdSQjdxMU1rTlZV?=
 =?utf-8?B?dmNDbmZCa2RIbTV6T1lLL0oyZHdIRXgrd3p1VFp2SjZ0TXhMYUVCeXFQbVRN?=
 =?utf-8?B?bzk1c3ZXYXJZUGxKUEZJZW9vQVQ3SVpSeU9yL1VOZloxVkV0MklSSURnc3hv?=
 =?utf-8?B?bnh1S013NWE5cmxFaVJ6SnhRalpzY0JVT3E4TjN5enY4ODBHMUxSM1FhTG1K?=
 =?utf-8?B?OFE2b1luODNESisxbmNNMEZTQlBtQlh6aW5qaUpGR25tZjlHbVRiMkZ1NDRv?=
 =?utf-8?B?R3k3b1I4ZXUrMFEzdGdkL1BjYkZOQjJMUWd2R0hJMGh2eHBvVEsvZGJIcG1o?=
 =?utf-8?B?TmRLNFg4aUI2S1IxNHBCZllmb01Ed3FJNnNnU2d5T1dlcW9vSlV4RUxTLzBI?=
 =?utf-8?B?ZEZvajBOd3ZoNVVoSE5WMXd6SGFBY05JcEZVSUpaamd6ZllJTnVGRzlDbVpE?=
 =?utf-8?B?SENDdWFnUDY1R1hhbTlhK3R2cEFCRUhjb085cW1WUnZFVEpLN3o2RDBOTDh0?=
 =?utf-8?B?dlZCdnVoa2lEY0NlYS9yOFlxQXRJNGo1MDVPRlNNd3l1YldNUjF5QmpZK3hK?=
 =?utf-8?B?eWovb0NYU2hIVFlZRjBvOU5ORU8veWRhVUV3cGd0WGQyMHphMkU1UU5ublFQ?=
 =?utf-8?B?T2hWZXJJWEcvK0J3Snp0RnhTOVpGaXBBb1lsMWNTNnNPOWgvYi9uaUNFWmtl?=
 =?utf-8?B?bGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a9af1e91-f0d2-42f5-70e9-08de11bd05c8
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2025 22:47:47.8082 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o3aukSZ/mGhvRw5VxRcuGadL6wlqXOXDp5e+G1NRZv1ySp9DnZEXX3nhALp1Fd7HRbL77CLjxWoHEjHCpq3RkBr666yEAD8n0vreSwJ7dvw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8101
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761173279; x=1792709279;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version;
 bh=CSYWTBeT2DT/Q5T9FOodsUIYa7nVgAE37hVPnSYC6u8=;
 b=XE+Jfn3YwoEs0kcAcdynm6QVDLq28cwZcnOYtjRwBvwOVM/+HtQfuu/P
 xExZaesApgI7dV6HQNjn4UKizHMIglloOQcnA8gBzcY/DGGkMRez7UBP4
 kbeCMZ33KkuDzlSd2p60yNxSdORpJ6+Z3aQztcBwDOS8Sd31EbOP1gRxH
 JrHb9Bw++GyXnfqLcxYCpW66iwMXBzBQ9msu/WaOPRPHXP5HsjX0243gC
 B1zY4egRJPNzyDrorrBJPdgG0w7Qie1ffT4WiR9gE6R3cdFUoIc2RbtRb
 QExAxXfXf0p6Aigi2DEyB2eTu+gWEnFlk8Oq7Ydz+d620xir93FAte35A
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XE+Jfn3Y
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 3/6] ice: implement GTP
 RSS context tracking and configuration
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

--------------WuhzVwJpLavTuaWzPsGNsEXB
Content-Type: multipart/mixed; boundary="------------6L1c0bnusZf0cTdlRnE5J0Mz";
 protected-headers="v1"
Message-ID: <967c9a87-d759-44ed-a81e-ec8b8de99a75@intel.com>
Date: Wed, 22 Oct 2025 15:47:46 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH iwl-next v6 3/6] ice: implement GTP RSS context tracking
 and configuration
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, anthony.l.nguyen@intel.com
References: <20251022131225.2304087-1-aleksandr.loktionov@intel.com>
 <20251022131225.2304087-4-aleksandr.loktionov@intel.com>
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
In-Reply-To: <20251022131225.2304087-4-aleksandr.loktionov@intel.com>

--------------6L1c0bnusZf0cTdlRnE5J0Mz
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 10/22/2025 6:12 AM, Aleksandr Loktionov wrote:
> +static enum virtchnl_status_code
> +ice_vc_rss_hash_update(struct ice_hw *hw, struct ice_vsi *vsi, u8 hash=
_type)
> +{

This was explicitly called out in the version we sent to netdev last
week as being too similar to ice_status.

Can you refactor this to use integer error codes, and convert to a
status value only right before we generate the command to send to virtchn=
l?

Checking against current ice driver, only one other function appears to
directly return a status code. We have ice_err_to_vert_err and
ice_virt_err_to_err() which are referred over passing around these
virtchnl status codes more than necessary.

--------------6L1c0bnusZf0cTdlRnE5J0Mz--

--------------WuhzVwJpLavTuaWzPsGNsEXB
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaPlfEgUDAAAAAAAKCRBqll0+bw8o6O9y
AP9Pac5lxL1+TmCijCdYuBFz3ZHxQ8jky0b4GkBD3Jkh3QD9H3noY10mLUsMmVMS4grHf5osVxlT
864VyxnxIHLkjgU=
=KV1G
-----END PGP SIGNATURE-----

--------------WuhzVwJpLavTuaWzPsGNsEXB--
