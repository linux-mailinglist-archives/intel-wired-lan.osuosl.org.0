Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 732E5BB20D9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Oct 2025 01:11:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A51906156C;
	Wed,  1 Oct 2025 23:11:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lpD9w8L3EWGp; Wed,  1 Oct 2025 23:11:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B18761560
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759360263;
	bh=Xqe9o9mxpGnwwKLDY2zevuxv6CA+6RmBFDukkcW3dGc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZUyIGUWHAm+Z4GceTgQUtC2d1Z5qMEBoT2/liW66aBLqWnnxZGPGc8tyZj/7NVJiq
	 SLr6yh4hWH/4asw06CyrODUMLz/R61j34oE9frTHnnJDBzGa3kdwUyTWuHyQwelxku
	 uNGbuX9P8PmIgyOP/1VF6Zj1y+e4s2XS9AGC5JTTeQUIdiglXrvlN1fo9VymlttD2G
	 XYYzBl7Uko3Sz6avL/wLeiNytLBVkFYQCBck5VqeejqxH2sWaQOvYkDWK8IGdVGh+i
	 4SzMeKZjl35A3/WdNy/65xfMCCNmXK8LQmiWC5UbM10jB6bi4Ug2kGYjDMokr6ws68
	 lHHSACndNa4ag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B18761560;
	Wed,  1 Oct 2025 23:11:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9ACD0CC0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Oct 2025 23:11:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8153540BFF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Oct 2025 23:11:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i0W0sf2oMwz2 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Oct 2025 23:11:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7C64A4086F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C64A4086F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7C64A4086F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Oct 2025 23:11:00 +0000 (UTC)
X-CSE-ConnectionGUID: 9OQQ3gSyTJiQEI7fuhqqCg==
X-CSE-MsgGUID: kV+VMUAhSP2MdsQr87jVyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="60686546"
X-IronPort-AV: E=Sophos;i="6.18,308,1751266800"; 
 d="asc'?scan'208";a="60686546"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 16:10:59 -0700
X-CSE-ConnectionGUID: n3H2VG6RSuyJdOkmMW2sgw==
X-CSE-MsgGUID: Q/phzKjzTLOwuTrTaF3miQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,308,1751266800"; 
 d="asc'?scan'208";a="209855307"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 16:11:00 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 16:10:59 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 1 Oct 2025 16:10:59 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.21) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 16:10:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pLOS5S8EN7E5McZm9/JRAO+0/SfiTAw6lvY9gRiiGCZaNFtI6kBXOGKsf3VrWh+YXOXW4mevY25N2Wg3Hr5NDULxno8mulyn9iE6VQc2+bCESc6n9p2CZr+3sZi8GDAMkv8weB53rWz7zvwqTkkHeOiZpK1d0c/+JmF0bv7YUM/ssJGBqNQ6w691RHe7Zjq6zu/6fW+gngGRu3QcS7BxN03E3wgWN2cMVsvS7d6t0+LoBuUGAOOLrQb/EqT955d6MYpnNR9RookIPWWW1D370PIyZpz3hENAeIIbrxx+T73/GC5HL6n2nr4sEsQj9z8FzYKYvBKiWEH/FsBtCDVX/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xqe9o9mxpGnwwKLDY2zevuxv6CA+6RmBFDukkcW3dGc=;
 b=LAS6lGfS+NR3cf3+EMXnr6S2SnJoctWGavM+t+gCWUoadcUuMcDiTAGPTrVwb1av9tEiDJ3uUDfUoRZK24fMlIzR3wkrwN97fnyyfcvdZsdn6+lh80pq3y/LmKIyUyifqZ89htQRAtVghA3j7YYka4rgV3EoMQ273wu01oeb0cnQtcH5llhICUTsddeQI0IihSGVf33e0jzLzVbdXpmPyWgEsuF6GOvKAOAGEsNoKAvYsMqrkCtY7Gc64jrjBoj47QY1QrZ5bivljdB5zmL6FykfOJ9JtRJweqazv8kp2dq7cS8tRTrpRxSkoYZqxfl7G7KZoWwGqNfJ5SSsh6P5xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by IA1PR11MB7200.namprd11.prod.outlook.com (2603:10b6:208:42f::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.18; Wed, 1 Oct
 2025 23:10:56 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.9160.017; Wed, 1 Oct 2025
 23:10:56 +0000
Message-ID: <d15ad6a2-db2e-481a-ab16-f0358e65aa8d@intel.com>
Date: Wed, 1 Oct 2025 16:10:54 -0700
User-Agent: Mozilla Thunderbird
To: Haotian Zhang <vulab@iscas.ac.cn>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20251001115336.1707-1-vulab@iscas.ac.cn>
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
In-Reply-To: <20251001115336.1707-1-vulab@iscas.ac.cn>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0CjROvoY1QnDfyhFSqbUeL7I"
X-ClientProxiedBy: MW4PR04CA0266.namprd04.prod.outlook.com
 (2603:10b6:303:88::31) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|IA1PR11MB7200:EE_
X-MS-Office365-Filtering-Correlation-Id: 1f36d29f-3489-482f-9948-08de013fc6b0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K1A2aFY0RnNmTGlWd2lINWRBcGJlNGo2eVRJU1pOZ2d2Zmgwd21pSVZRQU1q?=
 =?utf-8?B?aHFkN3g3U1NrcE4zL2crYmF1bjFzWWxGcUpNcUNPWGJSQTB5SFZHYUlRcEdr?=
 =?utf-8?B?c2NrUEtRQXVyUkFHc0lIUTQvN2UxSG8wcWEvUjhra2NrMWExdlFNVFpqMm9S?=
 =?utf-8?B?QXB2Y21wMVd4eDJ1SFVaWSt2Wk5XM1BhaE5TNmxuUEkxajdObFdxZEZKeHV4?=
 =?utf-8?B?SXpKalVkSHVjK2lzR05pUm5xZlJFMVZ3NGhCVFNHVGhlL21FSTJvUVovV2FF?=
 =?utf-8?B?WDY5NjFZZE1wTmp5YXZ1clExVGhXSGV4VnhxYkV6SzRnVllIVkx0OW5mR1Fl?=
 =?utf-8?B?RENPaGs3MitNdjMraWNFU2s4Z3VKTzVkYjdUNUxjSjVxcWtDaE1wM3F2WTha?=
 =?utf-8?B?VENhd0poQU8vNEVxb08wSzhZcFBKam9VT0lNMjVHWStYV2x4OWx0Qkh6UDhr?=
 =?utf-8?B?VThlL2dDMi9tYVJubkl3ZHZyc2RrSHdHeXpsWWE0aHI4TXg2NWtadkE4UlJZ?=
 =?utf-8?B?WUh5OTNjUWdORjN4SFZyVjB2b0plY1hWdVl6VFllYTVWZmlaSW5xdDN6b1dp?=
 =?utf-8?B?S0VJenN2dmhlWVQ0ZC8xZWRlSlRodjhiWm1waGlkaXhLZ0JXSmZYbXpMYVRj?=
 =?utf-8?B?WTVPOXBmdC9TZlVFRkszbXRCbURyOTRmbU1sNldwbjVZN3FBcUczWm5IUEth?=
 =?utf-8?B?WGNWc1h5dExvai90T2pJS1RoRWMrRzhmL3UrZFdOa1FrZC9aR014VmpDMkow?=
 =?utf-8?B?aHdKY25XbWxPcDI2UDVLb0dJSzNwZ01kVHdmWWtaUDdvZTJmUWV4Q2xhbTJh?=
 =?utf-8?B?UVZKZXBjRzF1ZldqamQ2UXdlMmFxaktTTk96b0NPWHVYVjhDVmVvVlBSVDFV?=
 =?utf-8?B?dlppWGFCRjF6OXo4NHhOQlNDSVVhTWVTbzRDdDJxMG5kejRjbDdBK0xCdDk4?=
 =?utf-8?B?NENJUGc5N1J0RXc4N1k5NUN1ZmNHUDBYSkFTbnhSRU9TVWduZ2ZxQUlmUE9n?=
 =?utf-8?B?a1RodmtWREVqZmhRaU53YlgreDNROGhGenlHMTVXTzM2K2JIVzc1QlJSUkph?=
 =?utf-8?B?OFBtKzkvcStNbW8reVhZOENqcVord3d5VEI3ek5EekZXV1A3MFJXQkMrRXVh?=
 =?utf-8?B?NlpJeDlVVThFSmVoYTJlSFBmQjE4M2UvTUJjdnYzalhXV0hNNlpRN010Szdi?=
 =?utf-8?B?T2R4d0NpdlBLVVRFOGhrTkY5ODlMOHVsMzdIdm54azNORFNqTkh3SmxtbElq?=
 =?utf-8?B?YWlROGxFanpSYm9KVEdhQUlxdEY5eFcvTUg0NFhJSEptUllVdWJUVlluaGt6?=
 =?utf-8?B?T1BaSEEzZVdpT1BOTmkvcC80eXdJZzI5enlhUW5Zd2FvdmJBYzYvYjZjZi9P?=
 =?utf-8?B?Q3ZwbTZsWDBhLzdXQXJMS2ZyeXNBV1h6TW0yTWpMbi95Qzhxdk4wZU04OGFp?=
 =?utf-8?B?cStNN2RtWXluNGlMV3l5R3pUMXJWU3FyQW8rTXIxTHpKOURQb0YySGdSSE9F?=
 =?utf-8?B?dldvUEk1WmRKd2w4Z2ovb0MvaHBZd3JrMTErZlowaThJQTFlbENCS2dhdWZJ?=
 =?utf-8?B?cVFWdjlWMFQyaGt3eXZQNWlETlNuelhyVzRqamtWdFYya2lSaUFGY2ZKRmcy?=
 =?utf-8?B?c3EwZ0J2VXkvd0FRNitmaUN0V2ZGaTZPN2Ewcjh3MkdMWG4yaG1nSFAwek44?=
 =?utf-8?B?VXdvSDFlUVMwOFdBN2F5Qlc2Ym1RSUFTekxTOXRKUTVwSjJwUGtiSFNaK2E4?=
 =?utf-8?B?bzVlUHUwTnQzSzRWd3grVEovaVFrWFE0NkRnekh5dCt6bzloaTkzUmppb1Rk?=
 =?utf-8?B?bGdlVkJ0OGJXK2hPUlJLc01oRktvbmthd25kSVFFOGxZMDB5ajZYczZOZW5X?=
 =?utf-8?B?YmlhSWdQMGFaV1JHbkdoMG5qdHcxUnQ0empjcDVwOTkreWkrVk1vc0tWUlFV?=
 =?utf-8?Q?vlGmh8pl4pCw9DCfuOfe878arg6GmpSX?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SmhURVV1VlVBRFQ0TXZoYUUrUE1qRFVLTGRxcTg2M3FwVWIwWmEzbTJxZERy?=
 =?utf-8?B?VWRzVURHTzJWc1VRSTdYMWtaM2dNbVM5MHNpV2tnZ201QmZjZ1NxSjhsOERH?=
 =?utf-8?B?c0NQMkVIQ2tLdGttOEpSVFFzS0s2UGsreE1ENm1pTDNOZ0RydWZuSmYrNVRu?=
 =?utf-8?B?Um5mSUVwV0ZQenZUczJxbVdEUUhaRi9kNUZ2OTRBTkJkMTdsd2UzTE92d1Ra?=
 =?utf-8?B?YzRYM29Ma0JCa3R4RHZPVkIwWFdaR0Q3OHUzR3NYaWFFSEJtaTYyWEdjajFM?=
 =?utf-8?B?QktNZU5Ia2pnbkJoOWZVdy9rakk0ZHdmSlJsZHVSZnVpQTBtQXJrODdxQldw?=
 =?utf-8?B?eG1MdjRDUGpXMG1tbFBVc3dvekZwM09xV1dMREFCUThkY0NGSFlGMFdhTkJj?=
 =?utf-8?B?MDhZV3ZDVFhUZ291N1QwK29pRmpud0dDVExwNjMzTGZRMHhKbWdxY01iRy96?=
 =?utf-8?B?aEVzVUlCV1RGemFBVmhpZXBJZzlXOWsvZUM5YWIxUE16YjRSQlVjZVlua2hD?=
 =?utf-8?B?RmI4YU5OV3BPY015bklkODYxMnN3cFVMWkZEckRJYUZrYldsdm12eER2ZzVS?=
 =?utf-8?B?OVBZdks3ckt5VEFEc1N6QU9kMkJvRXlzS0p0NUFsNkN6c1VTZUx3TjdyWFJu?=
 =?utf-8?B?eW16QkszaHkvODNDVDFOcUM3cmF1YmxVVThrVk1oNjNybUFRdVVRdVRxU2E5?=
 =?utf-8?B?ajFmQUp5dkt1VlAwa1hhYW9BZUhzREdhc2t6Q3R2TXRaaDU5alVTb2hiMUc3?=
 =?utf-8?B?MysyYXhIemd1Nm1PQStnWVpubmlUM1dGeHUrQWp2aThzOXZ6bjRjVGtWdkcw?=
 =?utf-8?B?T0VPT0lqUCtKcUttclFMeUxRN3RGQ0pqWkRNMU9Ld0w3TVBwOWpTY0VRemFi?=
 =?utf-8?B?VUZmQWRYbnN4Z3pHZDBQMWNNYzVuSXBIdkdvSUNYU2FQTllQN0NOeHFnVVhC?=
 =?utf-8?B?MTllYlhQaWdFOVpqdVZOdFNyaHZsT2NxUlpsekYzOW9wTFpmUk03aGY4K2xL?=
 =?utf-8?B?bjhsZ0lWd2tUKzBzV2tSSDhINUNYRVZrNU9od2RHUHpGNHh6bGVmVmdQaGJo?=
 =?utf-8?B?cnhmOG5FRmlrcEdnUjVqa3NNcFZnbUtJQXZ5TStBTVhQblpSMDR2NVQ5YU16?=
 =?utf-8?B?eGVsTHJZM2hNVlV6VTBZWnRRSSt0eEQ2Yjc5Vys1K05sY0lwOWZjNTdheERJ?=
 =?utf-8?B?TDhvMXdncDEvUStuR3F3NEk4ejVtZW9VRVFGeWFVOWIrWnhqallIaVhOV0RB?=
 =?utf-8?B?eHNPZHJyRHNXc3Z5YlJqM1N1KzhWemp0OGtzNGJTVVhJSnl1elJYRHN6TGxm?=
 =?utf-8?B?VjRvdVlDUU40UmhaL0FuTHo4RHJFbmV5Rko3a1cramRyeFYvYzdNWmo1RVVr?=
 =?utf-8?B?cTdvOElFMktKU3E2NVljM0dnbkc2NjFEZDI5YVg5MnN1V0hZSnNpa1FFMkRU?=
 =?utf-8?B?YVVQUG1pcHJXQ0Y5UGZSWm0zOExLTGVHZ3VBQTlSUVZjUWJtbU9SWUQrUEhR?=
 =?utf-8?B?N20xSlN0U3pyTS82UnZjSTFxT09JN3JRNmV3TjhZSldldkQySmk2Q09tUE9C?=
 =?utf-8?B?OTJPaUwvUDBaTFRIOE5iT09sNWRYc1NuaWJZajJlaUZFandYSHA5bW5hTjBM?=
 =?utf-8?B?cmp1dmQ3ZG0zTE1sazVhenlNSXdzZG04biszdUI2WXZFSWtGWDFwTURVT0ZN?=
 =?utf-8?B?MW1pbTM1NFZONmRnWTM1MjVnaTdYWjN0WEVxQ0FpV3NjQjM4M3ZLUStPUDRF?=
 =?utf-8?B?dDhDbjhMZE1GM0hUYlZUMlVvZ0FRNXRwV001WmRQbzlUZ1RVVmhCYzlLRWIx?=
 =?utf-8?B?RFY1eEpRVXdJdGV5cEdvRG5mOUtSRzFQZFBpVTE3cTMwUkF4SVNSZ1pTd0t1?=
 =?utf-8?B?NndLN3ZhYTNIUXljb2tLVG9pMS9Zc3NONTFPbENPVnpEWGwxS1ozeWV5UGUz?=
 =?utf-8?B?THU0YWovV1hEMUhtTjlDWVkwa3NhL1FEdStsVUVuTkdnNGh1c3BzOWJmbjdm?=
 =?utf-8?B?S2VmcTlPRjdQajU4Nm5Ua1dkYTdjak11QWV0bnp5M05tVDJDcCttUC9TTFoz?=
 =?utf-8?B?MktCTmxoYlNjalRGbEMxZEZqdXU5RkRCNzdhU09CK1BrMWlJZkFINkxOQ1o4?=
 =?utf-8?B?S2N4eTdVTnZZSGExWFpwZUZGQ1lKY3QrZjJYcXhlWmE2N0VFY3U3NTdKdnQv?=
 =?utf-8?B?TVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f36d29f-3489-482f-9948-08de013fc6b0
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2025 23:10:56.3063 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zlS2Grap3Bn7xn6ckCnH65soxYhXnjD7RxELdJa4m3qYeWSIrUVQJ6IP+xPgDUP25nBSubgx1qDpPSJdwWG0X1WEABMtVdafME7DhCv9W2Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7200
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759360260; x=1790896260;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=zTl7eCaM4PGTpvNXQUlOjeqgRwLqL+nwOdlskYCQktk=;
 b=QOt9YZWMRreN6excHk9CdFJGtDaKwFK9gmSjXpUPMwR7PQWsVKIrVMve
 e1xQkhZ8DvpKqD/B/EmrBOgUuax8ogad9iwWHseZ9kbS0vRaujjCzMZQh
 J/gaXTjei3SBWGK4BV4zeyD6dbRqjnss7LVjFUONLpl1gPFwVPzJoX1mj
 wzhMuALqRJP9jYLsy9cb1hKd4/3nfjzmDPE3OXPXDhEWjdQ53WNwEDRmJ
 N6fMGN1OKNT9kq1Qi7av10N/B/c7Qm5PxMs3f9DHU9I0CewfxlbkKKIo1
 B1LJydU8PiXBy9+DbCF/CMdHGrDWG/gT7zoMNTCENYM2G+4LNDwPcTkaG
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QOt9YZWM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3] ice: ice_adapter: release xa entry
 on adapter allocation failure
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

--------------0CjROvoY1QnDfyhFSqbUeL7I
Content-Type: multipart/mixed; boundary="------------6a3Kg0FumdqnWL2SWPj6y15I";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Haotian Zhang <vulab@iscas.ac.cn>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <d15ad6a2-db2e-481a-ab16-f0358e65aa8d@intel.com>
Subject: Re: [PATCH v3] ice: ice_adapter: release xa entry on adapter
 allocation failure
References: <20251001115336.1707-1-vulab@iscas.ac.cn>
In-Reply-To: <20251001115336.1707-1-vulab@iscas.ac.cn>

--------------6a3Kg0FumdqnWL2SWPj6y15I
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 10/1/2025 4:53 AM, Haotian Zhang wrote:
> When ice_adapter_new() fails, the reserved XArray entry created by
> xa_insert() is not released. This causes subsequent insertions at
> the same index to return -EBUSY, potentially leading to
> NULL pointer dereferences.
>=20
> Reorder the operations as suggested by Przemek Kitszel:
> 1. Check if adapter already exists (xa_load)
> 2. Reserve the XArray slot (xa_reserve)
> 3. Allocate the adapter (ice_adapter_new)
> 4. Store the adapter (xa_store)
>=20
> Fixes: 0f0023c649c7 ("ice: do not init struct ice_adapter more times th=
an needed")
> Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Haotian Zhang <vulab@iscas.ac.cn>
>=20

Thanks. I think this flow is a bit easier to understand and everything
works well now.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

> ---
> Changes in v3:
>   - Reorder xa_load/xa_reserve/ice_adapter_new/xa_store calls as
>     suggested by Przemek Kitszel, instead of just adding xa_release().
> Changes in v2:
>   - Instead of checking the return value of xa_store(), fix the real bu=
g
>     where a failed ice_adapter_new() would leave a stale entry in the
>     XArray.
>   - Use xa_release() to clean up the reserved entry, as suggested by
>     Jacob Keller.
> ---
>  drivers/net/ethernet/intel/ice/ice_adapter.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net=
/ethernet/intel/ice/ice_adapter.c
> index b53561c34708..0a8a48cd4bce 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adapter.c
> +++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
> @@ -99,19 +99,21 @@ struct ice_adapter *ice_adapter_get(struct pci_dev =
*pdev)
> =20
>  	index =3D ice_adapter_xa_index(pdev);
>  	scoped_guard(mutex, &ice_adapters_mutex) {
> -		err =3D xa_insert(&ice_adapters, index, NULL, GFP_KERNEL);
> -		if (err =3D=3D -EBUSY) {
> -			adapter =3D xa_load(&ice_adapters, index);
> +		adapter =3D xa_load(&ice_adapters, index);
> +		if (adapter) {
>  			refcount_inc(&adapter->refcount);
>  			WARN_ON_ONCE(adapter->index !=3D ice_adapter_index(pdev));
>  			return adapter;
>  		}
> +		err =3D xa_reserve(&ice_adapters, index, GFP_KERNEL);
>  		if (err)
>  			return ERR_PTR(err);
> =20
>  		adapter =3D ice_adapter_new(pdev);
> -		if (!adapter)
> +		if (!adapter) {
> +			xa_release(&ice_adapters, index);

Strictly we might not actually need xa_release now, because xa_load will
return NULL on a reserved entry, then xa_reserve will be a no-op if the
entry is already reserved, I believe, but I think its best to keep it
for clarity and because it frees up otherwise unused memory which seems
important since ice_adapter_new should only really fail if we're out of
memory. Additionally, this is an error path and not something that
happens every run so it is unlikely to be part of a performance critical
bottleneck.

Thanks!

>  			return ERR_PTR(-ENOMEM);
> +		}
>  		xa_store(&ice_adapters, index, adapter, GFP_KERNEL);
>  	}
>  	return adapter;


--------------6a3Kg0FumdqnWL2SWPj6y15I--

--------------0CjROvoY1QnDfyhFSqbUeL7I
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnoEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaN20/wUDAAAAAAAKCRBqll0+bw8o6LZX
AQDymcfL8jAc7f+MZhj61W/FMb5VfitfYV7Aw9QKoPESCgD4op1kiniSm67ZBLUshWrM5IR5j5WL
7NL4VwTnSYzSDQ==
=Smwe
-----END PGP SIGNATURE-----

--------------0CjROvoY1QnDfyhFSqbUeL7I--
