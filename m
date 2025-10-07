Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A47BBFD41
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Oct 2025 02:03:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1E4E6152E;
	Tue,  7 Oct 2025 00:03:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SMyO1T1LFlE3; Tue,  7 Oct 2025 00:03:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3DD0561534
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759795412;
	bh=q/kg9d0jMxjqifGDZGpVRLW5UGvnJBSHe+CoEH5/a58=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1Ztf+YRSz8dptwyO59ZaF75JaCw62gFPWPhKdTPohMpXyHxZkILy9e9C1F00cADkz
	 b1GOfSlrxM7UwwRNI58HD4Sp0mHC8jy4yDhls+10bzT5+7OL+hS4+uDPKgmiXtH4+0
	 xnsAVfAsSKvWXqECKb/Kyrw6p1wq2ZtnRNgf35pczWn6nfOpDWL6yrCZaBbMc7hQHD
	 zB6Pn+LZJ6Ey2vug/4etpFSrG2kX5MCFNSrT+sOVMLBQlSTKupijiGXrlx8RHwost6
	 b0OfiZ/zv0+w/KKij17J957vyv/tQl3tpnn11cI3zXhNvQ/bD9BNfzzSqbTBuX9TdX
	 0aBZX7atWnNVg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3DD0561534;
	Tue,  7 Oct 2025 00:03:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 975F5272
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Oct 2025 00:03:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 73D4E4125B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Oct 2025 00:03:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9pK_DF4yveNz for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Oct 2025 00:03:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DAD1A41279
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DAD1A41279
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DAD1A41279
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Oct 2025 00:03:25 +0000 (UTC)
X-CSE-ConnectionGUID: jQiH9VaZQHKz9/wscGNxOg==
X-CSE-MsgGUID: 1jJSgqgVQbiyl1EX+1LG+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="62020322"
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; 
 d="asc'?scan'208";a="62020322"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 17:03:25 -0700
X-CSE-ConnectionGUID: mZOsy/T0Q0WFc9AdFQ4V6A==
X-CSE-MsgGUID: v0bgv4pJSSGYBJzdX7tNZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; 
 d="asc'?scan'208";a="184286610"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 17:03:26 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 6 Oct 2025 17:03:23 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 6 Oct 2025 17:03:23 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.48) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 6 Oct 2025 17:03:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EY0Di/rUdWiKFQ8RKzudw0m7u44yivyN6SkJvFvsTwnlzgZulBw6v1g0ZSUOcsqj88VzczkMgvHiLto0g5ZMjTKUzxpj7BXAw9fb8R8EsfgEBRkWNTXWhs4hz2JOLGpfQb4qjyF4ubjkqs2SF2YBFAYkgvZXSEW21/6Yko1bRy7XgjEjWYxhutIPKfq8qIbRdj+NDot0Qrg5OBkZ0g55zImcGpfvA9WIRYvESRtsD64MDtQsBsMLtqPGk67dCS3DnmxO6Lg00jfxT8tWKs/aY4BTnrNeDLys44L06ZTk/r9XFsp/vOTi6iaTq013oRgjvQgkK1Va3k/X0Hs7nsZrPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q/kg9d0jMxjqifGDZGpVRLW5UGvnJBSHe+CoEH5/a58=;
 b=CVG/q6IRaeX7dVHSsEzGHTT49xkNJLCDVRtZTyLYOTtxOZi31NDyXJBUoxH4ZpsGD5DziXwtn79zWGh23DSY6l7PVwphBfRpCp6tG2fPyeIYy9ja24JoYOIjPIPRoYZe8SBZsHyfWnXfIpfydedU/ThGqDqBsaYs2pCkPtqfgrZR3xLq7ks+dndNaZMPYIoqTW/RSiJdry8t1ccrgzk6vLlHEDqdHREqkHGBTPsSUN2xYTyQT9FuK0HaFaLieSLpyQWoXcoVIu7bWGijbX6VsmI1y9ZwFRv5V7h6qUSxHEg10mdc4PjacIOWE1Ti+A6DXl/gMJ66tLGC7rX90z4XPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CO1PR11MB4769.namprd11.prod.outlook.com (2603:10b6:303:95::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Tue, 7 Oct
 2025 00:03:06 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.9182.017; Tue, 7 Oct 2025
 00:03:06 +0000
Message-ID: <4fc23941-7fbe-4558-9f6e-2e08630eec0c@intel.com>
Date: Mon, 6 Oct 2025 17:03:04 -0700
User-Agent: Mozilla Thunderbird
To: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>, Kohei Enju
 <enjuk@amazon.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Auke Kok
 <auke-jan.h.kok@intel.com>, Jeff Garzik <jgarzik@redhat.com>, Sasha Neftin
 <sasha.neftin@intel.com>, Richard Cochran <richardcochran@gmail.com>,
 <kohei.enju@gmail.com>
References: <20251006123741.43462-1-enjuk@amazon.com>
 <0a2efa67-0fb0-458a-970e-8957fffe63a0@linux.intel.com>
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
In-Reply-To: <0a2efa67-0fb0-458a-970e-8957fffe63a0@linux.intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------xt83gIXOvyIWD0ckaoOIZg09"
X-ClientProxiedBy: MW4PR03CA0305.namprd03.prod.outlook.com
 (2603:10b6:303:dd::10) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CO1PR11MB4769:EE_
X-MS-Office365-Filtering-Correlation-Id: ebd3c467-7ce2-4aa1-41f2-08de0534e4ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eXpDTVByQUdkeGhqM1BDN0lLTlk4alZuQ2VzRElBRVRPY3k2dm80dThMYW1o?=
 =?utf-8?B?WjlzTXltZ01PTVhRV09MMElma0syejQ5QUd3WEpOb0lBR2RrUWJvS1M4UlhH?=
 =?utf-8?B?WHVwdGNqQ3NEWSsrL29XcTdIRnJFRWlGUWVxVHBCUzVMSnQ0NE9pT00vL2J2?=
 =?utf-8?B?T1NOVmVxUldxako2RUw2UlozZTZEWEUrUGZmS1hNcDlPUmJzWVVvQTU2MEZv?=
 =?utf-8?B?THQrVUJXZFVOcGFaNU8wbnJPTS9XQzBJWm0yNng2RVNVNEh5andZM3BzR2dw?=
 =?utf-8?B?N2tEZno0OFg2UVgyNFB3MFFDM1pTUzVWdldETHdPbE1tZHFtVkJ4dWdSclpD?=
 =?utf-8?B?cVZwWXB3dHdoRFJHeUorMUhlSUFSQTJGU2xKSFk0OGlDOFBpa01ub0lIMzk1?=
 =?utf-8?B?YkpjeEJpUUJyYXVsSEgyYzN2d2FSNmVOWU8veEUyQ0FLOXlYNDhKV3pMSits?=
 =?utf-8?B?R0dGNGtHdW5VOVR1UDZQSmtQK2d3akZjTU9sQmpkTmw1NGFmS3cwd0JNVyt0?=
 =?utf-8?B?SGNCSkNnMkI3MXg4OWFwV3VIMnVvYWEycU85YmdTbCs5YjhnWUwzMTY2ejVv?=
 =?utf-8?B?aGh6eTl5elJ0SXNxdHdmMUk4bElhUmswOXhHVlgzYkpDZTFBdmlVekNrUHB6?=
 =?utf-8?B?bm81OE1TR0VFKzROZXVJdkFReGcrRDhvcm5PT0RiMk90WjQ5ekl0dStCNGNT?=
 =?utf-8?B?WUZNYWFFVmJmTWhsNWtiYy9JL3BLVU1BMldaMmw5QmRrNFNnK3Q4STlxcEpK?=
 =?utf-8?B?RW5IbGFFRGU5dlJYZWRLT2hjUHVscjRFN1lXelUybTNkMlNrSlhka082dzlh?=
 =?utf-8?B?Y1BDSHNpRzRkZjJab3VlYXVYSlN3Q2JRS2pBT1JCNFI2OXVXcGZHUUxXQTFK?=
 =?utf-8?B?SHZVWjAxaVRlODNXbGNVWkFZcExkQ0NsSlRiQ1QwM1NDc0Q0aXA4dzNiTWhR?=
 =?utf-8?B?dFhiVjZleVJrbk13YmU0Vnh6c2xRdFlMZnQ4dVhaYXlHcDQ3QkFsUmNnSzR5?=
 =?utf-8?B?YlMzNERnTnZnRWNOOW1GSjhCNzNBTU9WQ1paNEVPQkY5eVZIdjZpRTZxalpZ?=
 =?utf-8?B?WDc0Zy9YU0lUQVFTNnBBZUgzQXg4UlZUYzZBbUtmSi9UOElrWjBaV0xmY2N3?=
 =?utf-8?B?V2xScFA4UE5xdHlManRRMXVjOXJPeWdDMzZPOGpEYmJLd3VBdENHT1VUYVVL?=
 =?utf-8?B?RGJmNy9mRkhpY2EwVW1BekRTeU56TlpTemtsTGI4cWhyTERKRGZ2TzdOR1Z4?=
 =?utf-8?B?ZC9zaFBqN2xjL1Btajh2a3AxY2JCUGJHU0JYazNGcks5NDBkR2xkSnA2ZHhF?=
 =?utf-8?B?UWc1N0ltOE5EZHNjeHpENDYyaFMxOFlKSVI5aEY5OFBCVnZ6TzFhMDN1RXBy?=
 =?utf-8?B?a2R6LzRwTHRRMkxhNFlqdlFtS3FxWnJiZE03NkY1TDFFakd0MVJiNGtFMkx3?=
 =?utf-8?B?L00zb3ZMMW5EcTdhVktna2FzYjlRS3o1QXkveHVTUWpzTlRxcTVKOGRGVEtl?=
 =?utf-8?B?RXp5VjBrakk1OG41M25Nd2taM0hnVlR4QlNGVjV0dDNvdlFleEdLaTJ0Mk5E?=
 =?utf-8?B?NW4ycllOU1dkMFlpQXpQT2JQYkVzZTllaGdrbVNIZlNzV3ZOZW1EL00vSlJ3?=
 =?utf-8?B?QThlbkJtbzdtdWZuSTNqZ2VjeThVOFJwaWkrUzkweEtFSnNDUkVScUlIanEr?=
 =?utf-8?B?YkZpdEg4bkZPbjdVUWg3Z0ZaM1dKRGQxaTc3NGxMdGVsV29rSGQ2bWdQdFpM?=
 =?utf-8?B?VnF4TUdmK0VUbmxpSVd5cldrdTAwaW9SdytiMXJ0VFZwY2U3TzMxc1ZpVnRr?=
 =?utf-8?B?d01PV2tmdm9OU0hkeHJNWERtamE5QXpValVoNEtGMURMb0xmbEhIWHdrcTE3?=
 =?utf-8?B?eFptdDdZSUdDWG1wRS9Vc2VIcDQzUm9nMGFneHVvZ25vWnpUOGU5ZlFLbG10?=
 =?utf-8?Q?DSaR3KvuJmzzCmcnVF6X3N85u6GZ5A2k?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MDZxN3dVazRRWERGUjJwL0doWnBJNGZEdnpxY2RUSG82WEFSTjJLLy9ma1NV?=
 =?utf-8?B?dmJka0FqZWM5UkFFK0ZQQWM0bGdZRm95UjdEYnNyWnhWWU5OejJBLy95WDYx?=
 =?utf-8?B?S21JOFZUVGdLb1FUQ0hyMXg3bWw1YjMycmxyZ3dBSVZuYk9BeVNIQVFXNVNK?=
 =?utf-8?B?M0k1QzJyaWJORlplem9DYmtIeVlSTFd5MkRXZmhBWnkyZXhBVW9UbnN1VXBm?=
 =?utf-8?B?NHg3K1o2cjZFTGNEQXRaM01zV21EN1lyMHNkQ290eG1ndnpnb1lkcEYzYldL?=
 =?utf-8?B?UTJBOHVFZHBjT0dGNFI4WFFESnVwbHdieFljaldvQXBJR1lsdTdCSnY0VUQ4?=
 =?utf-8?B?SEhQUmtkaVVLRHFTM0dDdmlkME9kVEtvcXVzZ0lCelE0YjNlTm16WUJZczdI?=
 =?utf-8?B?akpOZ0NJRFZFNWpvaWVCaXVBVlJqd0hMWmRGd1BYaE84UVRSa0M0bENzbmFs?=
 =?utf-8?B?bVk1bUVIRWhlWWIwR0Rocks4K3h4aWhPVGhGL3Bmei9uWVp2ODAyTnJCb0hS?=
 =?utf-8?B?NitMTHFrWHdFVDZ0OXM0SWcvWnNnVDNWK0dGcW42ZWxmazNoYlZLdjl2REha?=
 =?utf-8?B?QURFQ0tZQ29ia1czTzljU1MzMWh5L1dJbWZaUHVYajI0OGRxN3lhTEVUZkVn?=
 =?utf-8?B?U3RLc1hhcEh0ZmxkUWJncDlGMFpBT1dQb1FTanUzbjlYZmdtanNzRGRZcUti?=
 =?utf-8?B?eVVLUGZpQlpzdVFjd3VxYmp5ZmlPNzh2eld2QlUxNFNoQ1hkN016Kzc4Mm9x?=
 =?utf-8?B?ZXpXVThGTVZRQ1FPcFpsR0dNNDdLWEJPMFdaaHQ1eDMrLzkrQ1FqS2hnM0Z5?=
 =?utf-8?B?YytGSmxVTjNTdU1NeE51OE15QzZlWFFOV2lKMFZZbXVBakhDeG05QlVHeVFT?=
 =?utf-8?B?eTJma3FLZjd6Z1RVMGM4VGcwKzhKUkpYVkNWQVhMbGs0SGVrUW1rbmVOUFg4?=
 =?utf-8?B?Q0hUa2krQkRibmpwaFpxOU1HWHgrVW1CV2FWVCswME15RFFnalN1T2ZTMHM4?=
 =?utf-8?B?NURYMmMvUHRUUzhWYmlVTkpRVHZuQ0RHYXhwOFlFdU04R0Y0TUQ4TnVxRXZz?=
 =?utf-8?B?UysyT0tYeEx5bnRyOGh0SHVEc0tZbll3MlM0T0liQW9EZ21FSHZhZTZjSzZa?=
 =?utf-8?B?M2x0cjhQSHV6VkNVelZYRmMydE9SbmtuWHpjYlRGZkYybFVFcmZKQWd1R1Rs?=
 =?utf-8?B?V0VrN0NhSUtrUlpLdWpnb0VCRGVYM2dTaDJlNzBpbkFDWCtQUkU5Qm9pZ3Jn?=
 =?utf-8?B?d1FiUTlJMHgyV3o5K0VZUWpqeVU2WVQ2aythQVQwcmpjUUFJVDBWbTg5eGhw?=
 =?utf-8?B?UDlNQjJ5M1U4Rzdid3liT0tiSDFHZ2VjK1RFeU1UY3lsWWZzTTNtZ3d5Y3Y5?=
 =?utf-8?B?L3ZjZEFiV0Z4OWNUZlJXTm5YRG1YRUw3UENxN2plS2txUEJqSFpsOHJndGNk?=
 =?utf-8?B?T3JRMmF5MENnQVh5U2hoeXYxNkVaZ1FudDl5VFBpaXA4VHZEbEhRc2RXQ2RI?=
 =?utf-8?B?Vno0NWVvWjN4Tno4SXNmdzVEdlN1OFdGMDRHYmxaMmxZUE85dkVBWms5eWFS?=
 =?utf-8?B?UktlYnlaSmFPblAvNWVBQ2ZqY3ZKbFlpYVRpRDFnTUJhYy9CSEFxeUNOQnBo?=
 =?utf-8?B?a2ZPYUtQYWlNNTR2bElTQmlpLzFEd3lUOERUTUNUY1o4SjhWQXBuZ2pzRkZl?=
 =?utf-8?B?M21ycWFTYVFWQUVMY3RBWEFIbXM2dGQxUXpNU0p4Q1dOdlEvNXJ0RVl3TDhu?=
 =?utf-8?B?NzF3dU5ISDFrZGtoTjJoL1BUSndBK0Z1RUpEOXZkYUMwMTRqTE9NVzRYVkNa?=
 =?utf-8?B?UDV0NjcweGlIY09RaFBHV3pIWTcybjdUTC9XMmttMDVBS2FoTG9sck9DWjdM?=
 =?utf-8?B?K3djcDVHV1M1ZFR6RmtKa21XNFc5WUlSSjFPQ05MWUIrcFo0WkJPbFRPK2xu?=
 =?utf-8?B?NkFyRUdHaEdNSUFTbWIxLzJ5YnFZSWY4UHhpSUlaWlR5a0pjUmJWWlNSRkNF?=
 =?utf-8?B?YTd0TDlPU1hBV1pkRi9EZ2czb1Z2QitmWkFONlgzRGtNUk92cnFoOVpyZ0Vw?=
 =?utf-8?B?K1JkMjF6Rlh6eGltUThNRDBhR0wvUmZ5Yi9ONFJPRXVYcm0zWDFXTEdZaWEr?=
 =?utf-8?B?d1BPNktVdTg3YWxnV3M4RFQrY2EwTTlvbkRzVHY4M0QrRVltQjRvNW5zcXIz?=
 =?utf-8?B?blE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ebd3c467-7ce2-4aa1-41f2-08de0534e4ab
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2025 00:03:06.7567 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ggbiYKEjqxaG5TxPsN9p1ySuaDOTpH0OJTz5lSCU1B/DxsC2t8JTrahy40rmZv4brtdkpbrRGxguLWA4alnGeCpoUiyvhD/Qp9URzU93vd8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4769
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759795406; x=1791331406;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=UfSjEF8UsbUSkGOzr+PbwoNs06ZULvUpF1tjG2c1a8Y=;
 b=EBF7IWK1iQtjRITf5DPB3r8ifWe96cMT4YjWdlSLm3txueQ6vU3kAOOY
 ckiAaM4d3I5AQIAkhd9zKdvqa6LW6YV1TkC5WdgXSzzQLgOvtiPo7NRLY
 6ccRFSZt4+lunSPfoydtZjI9P9d4XhqUQQ8U+w0ymWmJSerfCYbW6d0Gs
 goM8tRuALceYPv2v2L6dGe26UlKQ5fMUkH9yIUfZ9VjvssFZolLoquQeL
 qvTpBt0w+6E4IPr5tdPBUhwZfZB3BzedJv0LSg7V79To2B8dkCyVrDfZB
 3OmUAH1hgXPe0BbiDszPtM/wYjShXfGpu+WTb4fB9vY51VyXpycr0eRb3
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EBF7IWK1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 0/3] igb/igc/ixgbe: use
 EOPNOTSUPP instead of ENOTSUPP
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

--------------xt83gIXOvyIWD0ckaoOIZg09
Content-Type: multipart/mixed; boundary="------------Vfp8xRreNK48hNlVszlWfZlx";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>,
 Kohei Enju <enjuk@amazon.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Auke Kok <auke-jan.h.kok@intel.com>, Jeff Garzik <jgarzik@redhat.com>,
 Sasha Neftin <sasha.neftin@intel.com>,
 Richard Cochran <richardcochran@gmail.com>, kohei.enju@gmail.com
Message-ID: <4fc23941-7fbe-4558-9f6e-2e08630eec0c@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 0/3] igb/igc/ixgbe: use
 EOPNOTSUPP instead of ENOTSUPP
References: <20251006123741.43462-1-enjuk@amazon.com>
 <0a2efa67-0fb0-458a-970e-8957fffe63a0@linux.intel.com>
In-Reply-To: <0a2efa67-0fb0-458a-970e-8957fffe63a0@linux.intel.com>

--------------Vfp8xRreNK48hNlVszlWfZlx
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 10/6/2025 7:09 AM, Dawid Osuchowski wrote:
> On 2025-10-06 2:35 PM, Kohei Enju wrote:
>> This series fixes inconsistent errno usage in igb/igc/ixgbe. The drive=
rs
>> return -ENOTSUPP instead of -EOPNOTSUPP in specific ethtool and PTP
>> functions, therefore userland programs would get "Unknown error 524".
>>
>> Use -EOPNOTSUPP instead of -ENOTSUPP to fix the issue.
>>
>> This series covers all incorrect usage of ENOTSUPP in Intel ethernet
>> drivers except the one in iavf, which should be targeted for iwl-next =
in
>> a separate series since it's just a comment. [1]
>>
>> For igb and igc, I used a simple reproducer for testing [2] on I350 an=
d
>> I226-V respectively.
>> Without this series:
>>   # strace -e ioctl ./errno-repro
>>   ioctl(3, SIOCETHTOOL, 0x7ffcde13cec0)   =3D -1 ENOTSUPP (Unknown err=
or 524)
>>
>> With this series:
>>   # strace -e ioctl ./errno-repro
>>   ioctl(3, SIOCETHTOOL, 0x7ffd69a28c40)   =3D -1 EOPNOTSUPP (Operation=
 not supported)
>>
>> For ixgbe, I used the testptp for testing on 82599ES.
>> Without this series:
>>   # strace -e ioctl ./testptp -d /dev/ptp1 -P 1
>>   ioctl(3, PTP_ENABLE_PPS, 0x1)           =3D -1 ENOTSUPP (Unknown err=
or 524)
>>
>> With this series:
>>   # strace -e ioctl ./testptp -d /dev/ptp1 -P 1
>>   ioctl(3, PTP_ENABLE_PPS, 0x1)           =3D -1 EOPNOTSUPP (Operation=
 not supported)
>>
>> [1]
>>   $ grep -nrI ENOTSUPP .
>>   ./igc/igc_ethtool.c:813:  return -ENOTSUPP;
>>   ./igb/igb_ethtool.c:2284: return -ENOTSUPP;
>>   ./ixgbe/ixgbe_ptp.c:644:  return -ENOTSUPP;
>>   ./iavf/iavf_main.c:2966:           * if the error isn't -ENOTSUPP
>>
>> [2]
>>   #include <sys/ioctl.h>
>>   #include <net/if.h>
>>   #include <string.h>
>>   #include <unistd.h>
>>   #include <linux/sockios.h>
>>   #include <linux/ethtool.h>
>>  =20
>>   int main() {
>>       int sock =3D socket(AF_INET, SOCK_DGRAM, 0);
>>       struct ethtool_gstrings gstrings =3D {};
>>       struct ifreq ifr;
>>       int ret;
>>  =20
>>       gstrings.cmd =3D ETHTOOL_GSTRINGS;
>>       gstrings.string_set =3D ETH_SS_WOL_MODES;
>>  =20
>>       ifr.ifr_data =3D (char*)&gstrings;
>>       strcpy(ifr.ifr_name, "enp4s0");
>>  =20
>>       ret =3D ioctl(sock, SIOCETHTOOL, &ifr);
>>  =20
>>       close(sock);
>>       return ret;
>>   }
>>
>> Kohei Enju (3):
>>    igb: use EOPNOTSUPP instead of ENOTSUPP in igb_get_sset_count()
>>    igc: use EOPNOTSUPP instead of ENOTSUPP in
>>      igc_ethtool_get_sset_count()
>>    ixgbe: use EOPNOTSUPP instead of ENOTSUPP in
>>      ixgbe_ptp_feature_enable()
>>
>>   drivers/net/ethernet/intel/igb/igb_ethtool.c | 2 +-
>>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 2 +-
>>   drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c | 2 +-
>>   3 files changed, 3 insertions(+), 3 deletions(-)
>=20
> Nice write-up and reproduction steps!
>=20
> For the series:
>=20
> Reviewed-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
>=20
> Thanks,
> Dawid
>=20

Agreed. Thanks for the work.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>


--------------Vfp8xRreNK48hNlVszlWfZlx--

--------------xt83gIXOvyIWD0ckaoOIZg09
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaORYuAUDAAAAAAAKCRBqll0+bw8o6McK
AP9XSGlNcRE/5F/C5y0etgB6JGNS8+Z0aIZkV4f3rFlt6gEA9Rf1duh70BIuEKECSbl90bSgF0Zg
aKQsXQAGTHr55w8=
=hQYq
-----END PGP SIGNATURE-----

--------------xt83gIXOvyIWD0ckaoOIZg09--
