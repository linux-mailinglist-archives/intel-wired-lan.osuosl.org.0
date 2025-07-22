Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A60B0E733
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 01:28:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E22DF6124C;
	Tue, 22 Jul 2025 23:28:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 08DTWwPeybw8; Tue, 22 Jul 2025 23:28:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C56E605E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753226915;
	bh=T5BPK2nOsqk+5QU+EOdQFKdQ4G9dbJkHP7LP57ooJHk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=78agvAEVbkN2BEPMbowPSR6fD3S95KCdFDJwhK5awYaF71Sh4/X6IEWAEd4v/3TGT
	 F8SN3n77bctWQagoYWPyQ9MrqeFv6uSdi5uZ2HQspLlgc1KRGYfH9Xl8W9QUogKCfJ
	 QbH0Z68Y6OgJKF8CSK8jtNmdKl0VEcM8axHBJtpgS6tTItiEHZgRNXXagWe82Easf9
	 E1Yf4u4GaBgug/+T32QErwgfYd/EQRfNrjM1T5Tk7aA7SeG3fViWqN/3MUlO8IUjkb
	 2UG/kdMYoEI48g/GaPKVVlKsAwyxX2Ko/prjWtz/OQyoPNIYY18U82COFBqDAeGF5S
	 cT0NiPdNoiskA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C56E605E8;
	Tue, 22 Jul 2025 23:28:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0600CE0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 23:28:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 02CB660A37
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 23:28:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vl2FdAKj4nc4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jul 2025 23:28:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0C0B2605E8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C0B2605E8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0C0B2605E8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 23:28:32 +0000 (UTC)
X-CSE-ConnectionGUID: j0EN9jwGT8KZK59em8TVLQ==
X-CSE-MsgGUID: lSUJPrpQQsGs5dGsL+e+YQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="55199552"
X-IronPort-AV: E=Sophos;i="6.16,332,1744095600"; 
 d="asc'?scan'208";a="55199552"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 16:28:28 -0700
X-CSE-ConnectionGUID: qRLuq3mIT3OwCwNkjjRqTg==
X-CSE-MsgGUID: qr1zXRuPSXm7lgwKht/iOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,332,1744095600"; 
 d="asc'?scan'208";a="159831477"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 16:28:28 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 16:28:27 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 22 Jul 2025 16:28:27 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.54)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 16:28:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iVPEBuiY/g8tMn5YFFaqdmP68y1yZvv4MvwaR8C+yKzwkO24CCkuEhJztqYrava8XeqzcDWD89RnC+tltGMPAlHrJcMv4g4ybkqP240Y/v4Ywr5WR8CZK5uAscf1GlyPuTGLEmotMQe/av81Ozp3nZ8ozukPFYQF8CvUojCT9s+d9hRg1wk7FvaC98TfMIxxd64Q0sNa9T4yF2GnEWfk+M3FodMZPa0KCifQsc0fOGvV8GdWQrWKwhXAOf9URNGIgy5i7/MQD3lwJFgeEUg/Yy9fihn0OHjKyLFpSl19UPowgDXnHV8g9K7dMM3EvWC3SOoYjitN5JyIXiA0MUCXYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T5BPK2nOsqk+5QU+EOdQFKdQ4G9dbJkHP7LP57ooJHk=;
 b=j0FZIUZMoV0531o1J9RBo4XJxOeLtDIWoJYhzF6YgU8Oy3b7FRtAGZUBPn0coRGpM29b9iBsmEarsWsv+0cEoUvFI3j2GELO7ZIPjVs2iRh8ryHhesZSK/VVA4gaMiSYr2GW9P4jJrvrWdC5MtMB2+S9NGbW6vMhlAdNlRyMN73n2Vi1R4fsamIO/gud2Of5DXFl9Duiyw8+8w6qAUERUZP0dwFfucY4wqIhVC3knFVanL7j/qaxW2NdgP6nQh5KJ0r0bYakdJruP2p64xsywYFn3kL4DHPuZPdB4ExlGTfAOIlzD5KOs4Rnq0jEEmw548UrAIqnnVHe+kbtmI5jmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS0PR11MB7926.namprd11.prod.outlook.com (2603:10b6:8:f9::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.21; Tue, 22 Jul
 2025 23:27:58 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.8943.029; Tue, 22 Jul 2025
 23:27:58 +0000
Message-ID: <38c52f32-cca9-4458-a285-33bc142d58c1@intel.com>
Date: Tue, 22 Jul 2025 16:27:56 -0700
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>, Amir Mohammad Jahangirzad
 <a.jahangirzad@gmail.com>, <przemyslaw.kitszel@intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20250722115017.206969-1-a.jahangirzad@gmail.com>
 <e76d2af6-40d6-4169-8ec9-aeeee31b3aaf@intel.com>
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
In-Reply-To: <e76d2af6-40d6-4169-8ec9-aeeee31b3aaf@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------AzAKmTInADH04xaAftTcpApv"
X-ClientProxiedBy: MW4P221CA0015.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::20) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS0PR11MB7926:EE_
X-MS-Office365-Filtering-Correlation-Id: e87442c8-f7a0-4765-0fac-08ddc9776440
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UzUrNW9NOVN5UzlMZGF6ZFVsR25TVmo0OHE4b1JodXV1QmZTZlBnQmFTTlZh?=
 =?utf-8?B?Nnl5OG5hSHlGK3FuSWdmemZOYzZSb1pzU09jR0haRm1TRy9RSnlUZ2dRWW9n?=
 =?utf-8?B?aWJ5TWRtbXMxZmRUbWRHamZoNGpweVNWanZxOENicFpoV3JlQjIvOElobjhC?=
 =?utf-8?B?R2lDZkZCeFFkSTRzUy9qdHdoSXFrT2FtYXJ2ZC90b01kNFE3dVdud2RxaWxH?=
 =?utf-8?B?ZTZWK2RnNUsvSGNWbkY2R0REMmVBRE1MWFkxMVpIREdQY3czWmVMdlVQdlZJ?=
 =?utf-8?B?RmhjVXZ5OHdGd2twY2lZd3F5NURXUm13dHU2NWhZRVJlNUw1bG1PVDNyQUR5?=
 =?utf-8?B?ckVNbDFrT1Z5bGFnYW92Y3JjNUJ4UHBYbXdGRFo3UEc5Z095aHc2NFJGb2NN?=
 =?utf-8?B?YU43UWRxSE9jWmVmZjlnN2E3K2pUUnNrekpPUTAwVDF1OEpaU3pIUll2b0wr?=
 =?utf-8?B?djJoeisyZG9yUVBWRVllcnd6UXEwRlVZd3dJc1lpUzhIR1ZYNmVsQmVSaXFx?=
 =?utf-8?B?R3QxYTlsZ3ZBRlQyTEZsRURScGFILzZRV3NFY3Nld3RHNk1oU1JEVldTamlV?=
 =?utf-8?B?aFVkWVZQUlNmNm8yYkZDRkVUWTh5eW83amZpMmFpbXk3SDkrL3Y4NzBmMlRY?=
 =?utf-8?B?WGhUVXVZek1zQitOS0JHUXhxaUZqNGtDV29pWXJQUHRMNlRLNEIxcXFiZUFN?=
 =?utf-8?B?dTVEVlo0RW1FRUltVjNsSUxITFUxdSsva3pqSURHeW1NeDA5cmxaQUh6T01I?=
 =?utf-8?B?RTJKWkdpY3JXWENvLyt3OXZzSE90MXZCSzJhb1V6RlJjYmRRRkN3NVBreFow?=
 =?utf-8?B?KzhtbGYySEFRZFJyOUVYS2JoUVZSSEl2dVBxYzZ5d213Q0dWQ25kOHBWL2lj?=
 =?utf-8?B?MyszeHlGcHp4VnduUnM4SGgwOWZzUFdldHFod2ttUVA3b2hmSHRMdGV3R0Q1?=
 =?utf-8?B?THRHVXVsZ2YyWlFlc3lXcXJPYnUvRFB0a0VyT2c2NlFjMHlUTEVtUGVIQ0VS?=
 =?utf-8?B?ZjFWYVZDRGwxSUU3bW1INWJPN0dkQ3RxZE15YVdmTDZJYUlkdUEzNEF4QjdW?=
 =?utf-8?B?OHk0YkVHTWpkS09LRGFpSTJmSC9qb1F3R2pzS0NuTFVTeWJTUTZmemFuZkpv?=
 =?utf-8?B?ZTNFb1QrVUxJRXBraFpzM1B0MkRaTWpNR3ZrWVJlRWp2UTcxWjNUUlhmT3BH?=
 =?utf-8?B?aDhuNCtFeWVONm5QYkd3azFkYVlyZmVOdDVzK0s4dHlLd0liR2ozcDgveHFz?=
 =?utf-8?B?MjRaazA4ajVJSmpuaklhWVo4Qkh5Mk5CMHFhY25uWWVwbjhDdWhHYlZydThF?=
 =?utf-8?B?UzllZ0hGbHorTUVZcU9iYzVYY3c2QnJobkswSHMyTytraTNkS0RlUVRydGpl?=
 =?utf-8?B?NHhQOGNoQzRBVGdrK1Qyc21uaFJ0YW1iOGlDRHhLVTR6YnNnbDZoQlVSSnUr?=
 =?utf-8?B?cUVDQUR1T09qKzV4RXVETXJYWldkNWNNWE9TRzdzLzQ0NW5vR0ZWLzhXdnZm?=
 =?utf-8?B?RDlqbFQyUUxJMkc2N3QxVWU4SDJkbTg1M2ZLVCt0a1A1bjFrZENjNVpuOFcv?=
 =?utf-8?B?N3NYQ1FwUlZNbVZ5aERBTkkzWXNmc2VCYXozZUx5M2JhQjJTV3BsclowcjZl?=
 =?utf-8?B?czJ0bkRwRGZiRFFtbHQzQm01aHYzZmtHMXJFVHcvbUMrdk9mOWFDNDBqc3NV?=
 =?utf-8?B?TnIwZGZpM1lYWWQ3cm0xZi9IV240WHp2Q1h1ejQ0eFBRbXVZMVBYNnFwR2lv?=
 =?utf-8?B?R3lsc2ZxWnIvQ21RRStwZ0Z4eDFCZ0hvcXYwNzdYR01rZFMvWHU0QXZjUnBt?=
 =?utf-8?B?NXpEV2Vic0x6VXoyVjhOdDBQMitLVkYyWmw5Ui9DWDM4TUI5Snl4bTJoeHVE?=
 =?utf-8?B?M3NMZUs3YzU3OEhFdkdFb1pzSkh3MmtaSnBSamZxdGNXZE1ZUUtqTVhXeXRx?=
 =?utf-8?Q?vdKC4l4utjc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dDVKbjY2VHlyYWZ5RHF2cytTOU5uRStSK1N2WFdxL2xzeDdOdEt2RzlaSUdK?=
 =?utf-8?B?WkdYaC9jMGpFc0JNNVJlSXJPbGI0SksyUEEvRDJCYTduY01NVHVZaXRtRjM3?=
 =?utf-8?B?aFAwZmcxMzVvK1ZtLzZ4R2xxMmpVQnhVUmdEZ20xNnRwRzhWNS96SVRpcVNP?=
 =?utf-8?B?aSs0MVk4WExET3Vzclh1VXRUS2dzTzZSZWVkQWlxcFRzZ29FL0plWVpvbXkx?=
 =?utf-8?B?ODk5NnFRSElhazQ5WndDamhldDVIRWtRN3JyQytNWVZlQzlJMi9lR0VDWW94?=
 =?utf-8?B?YkVpL3JVeC9na1NYY2lpUWRMWFlQdWt2bS90VVE1aFVxU0l2K0RzTlQ1Si9q?=
 =?utf-8?B?WEdJZUpnRGpaQUpORldObzNMb1RoRHkzYlRCNmE4T3ljY29qNi9OSmFPTk5Y?=
 =?utf-8?B?clphWGRLMThySjRJaEhNWHNBZW5uaGJ2SFRxd0F2Nnhwanl0OEwrWG1YQ1du?=
 =?utf-8?B?c3o3MDZSMHFGL01CZnEwWC9zS01PeGR5NEtBR201ajl1UW9MZjE3Rjc3Zmhq?=
 =?utf-8?B?ekdtczd5QnZ4RnZiVk9CV0o1b3FPQ1FZYmFhUkRqMHdTMVBGRmduQUxIaXps?=
 =?utf-8?B?T0pBNGVReXM2bEpMc3JKOUpYci8wbE0rNlIwNzZnLzA2OU1iT3BXNTh4elhS?=
 =?utf-8?B?NStjT1VXSlh3dnhIM0FtN0ZhNFlLWjYxc0ladEhtUzBYZ1FwMk10bkUycVJo?=
 =?utf-8?B?OFMvUVZtMnZqVGptVFZwc1RHNUZTS3JxT2NhNUdiS3UzR0F1NVZQVnFZbE9i?=
 =?utf-8?B?L3lLakxkWW5kNjVuc0ZaMmZCS0pZRTNuSTZ4dHAxVHY2S29FWXBsR280ZmJG?=
 =?utf-8?B?eGJZZ0Z6eUZzMFB4aWZHWTJRRFhOb3daVXZVcklUQVQvSlk4dkJrMDNzMTY2?=
 =?utf-8?B?Qmo5L1IzbUVFQnBJMGxZZkYrdmtrWTJHNk1qQzllRENpRzJZOXZ4UHdFZWEr?=
 =?utf-8?B?dEdiQmIyYnI4RFVrcTNNaC93ZWFka3Z1SjZhK1B0MEQvSVdqZDh0d0ErZEZU?=
 =?utf-8?B?UE9jcDIvSWxXWHIySTlPaXRPZG5ZQjNxdXRwTzJET0lhbkJ0TGRzR2Y0ZWlG?=
 =?utf-8?B?WWg1TXQyV096YWZ6bWNuRUozc1ozQ1BGVnlvcmpYVFI2YzYveVBHaGZiU3J4?=
 =?utf-8?B?UVJPRE9Say9KaUdqOEhpT2FFTlhETUcySFV2czZHbXJreUR2Nk5YUTNRcW15?=
 =?utf-8?B?cmdLaXoyeHhkek4xNkFHbGNLeEF5eU9Udm1LNTMxdnM4M3dvU2lGSXMvVGto?=
 =?utf-8?B?WWpnNW90cHV2clQ5eWR2NDQ1SWhWTnROQkJmbWs0MGpObVVpK2lYV0h3QTdx?=
 =?utf-8?B?OVo1WHJDbVZYNVpIOTd0bXU3NzlLaTViL090REhGN3hKVDlJV0pPUkt5Qnhw?=
 =?utf-8?B?ak5aVmRndkhya1BYYVhXSnBDSW1aRU0yMWZIaEhPeU55YWN2WXdoU05OUnNP?=
 =?utf-8?B?RkxVSTFGblZSVFBTdzFFVGJCb25MQzVCVitQZnFMcmFMUXhkOVN5QllCMDUv?=
 =?utf-8?B?QUF3MTZJN0JyV3ZFVnlYUStjbStnNUE1SitaTlFwK1Zackh4WHdYRW5kd0Fy?=
 =?utf-8?B?TUErL3gyVXpweUJ2cUxha0cxUUFXdGRxd1hyc3dyUkJyRTMrWk1qbEgyOUxQ?=
 =?utf-8?B?ajlyeG5MYk5WV09oRkdiYkZNQWg2ZjJqTVlMdm14VmFKcHR5Qy9OQndOOUxQ?=
 =?utf-8?B?aEJtdjdZdk9XdStZZGo0ZVhmME5rMkN0MEg2NHpNR01Zc201czFuL3pYZkZH?=
 =?utf-8?B?Ymh0ZXgzbDVSSXUxVVVMV05IL2lUS1ZRYVdBSUJ2Z0xlN3o5K3ZOcC83OHpR?=
 =?utf-8?B?Y1ZJVktMbmJ0WXp0MjB0Yys5SnRHdHo4SHVWU0ZDWmxOVEFiRXhiQllKMjJr?=
 =?utf-8?B?eDZ0WnVDUitURHkvQ2d1T3FqRWxzakg0elk4eWRnR2N3akVJOSt3U3U2UEk1?=
 =?utf-8?B?eXQ3cExkU2NqUzMyTUE4azFtaElzQmU3L3UrV0pGKzhvQzJFT1FRZW0wSFlo?=
 =?utf-8?B?S05NYlFkWjNOL1FiWms0bW9NM3pGZlUxVC91WXhPazVvWlRlaU9TR0IzQ2Rt?=
 =?utf-8?B?Q0t2UjVMRWR2dHdOcU1MZjNJNk1qbndwdVdwWW9TdmkzWWZmbjNlcmFyU2Yr?=
 =?utf-8?B?SVFUSFlUV0laK0xLYnF4U0hlQVUrQVVUK1J1NlF2K1lNSWY5RHhXb3BESWU4?=
 =?utf-8?B?VXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e87442c8-f7a0-4765-0fac-08ddc9776440
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jul 2025 23:27:57.8791 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Avp/1Vu8i/ZN4xa/dA+34W0Cdg0cuh/b6nKVwE3GChNc651xBJ0dDuwG+EkokUPn7oqA8ROMTLBvIRqFs1GHvVYuXv5PrjVvFojxEQG2/b8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7926
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753226913; x=1784762913;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=T5BPK2nOsqk+5QU+EOdQFKdQ4G9dbJkHP7LP57ooJHk=;
 b=nYX9cnnddctBvaGBTQJyjw0LZFG11Fn+1ttEU8BoXTh054VXovhKYN+N
 JAF+xiZDu62+8BN3WeGTkDn83Si5lAk+lRA0WZ1A///k6eo4wpv3c8RFD
 gWwJ7JyysSSh3043++0xutLEhy4tZdYWpBlr2SY8ymL4oTs0DiqCG8Y3S
 tjinO+CyASWEbQQUKiIGXTS2XL+u80nWPui7nmMHYPZgj7DWIn5iX95FB
 DY13bg04jHmdC1fg5qx/shJZaNALjE0pJG5w6UisXdHXjB50exryp10zc
 ZqiBTuj9uCckAot3E5jfkka3dvRK/xPEojY3U+uzeCswqomonQ0fPIUq1
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nYX9cnnd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] i40e: replace snprintf() with
 scnprintf()
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

--------------AzAKmTInADH04xaAftTcpApv
Content-Type: multipart/mixed; boundary="------------wy9LDulJgNKCRbt2sfIq7Fq8";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Amir Mohammad Jahangirzad <a.jahangirzad@gmail.com>,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <38c52f32-cca9-4458-a285-33bc142d58c1@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH] i40e: replace snprintf() with
 scnprintf()
References: <20250722115017.206969-1-a.jahangirzad@gmail.com>
 <e76d2af6-40d6-4169-8ec9-aeeee31b3aaf@intel.com>
In-Reply-To: <e76d2af6-40d6-4169-8ec9-aeeee31b3aaf@intel.com>

--------------wy9LDulJgNKCRbt2sfIq7Fq8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 7/22/2025 1:17 PM, Tony Nguyen wrote:
>=20
>=20
> On 7/22/2025 4:50 AM, Amir Mohammad Jahangirzad wrote:
>> In i40e_dbg_command_read(), a 256-byte buffer is allocated and filled
>> using snprintf(), then copied to userspace via copy_to_user().
>>
>> The issue is that snprintf() returns the number of characters that
>> *Would* have been written, not the number that actually fit in the buf=
fer.
>> If the combined length of the netdev name and i40e_dbg_command_buf is
>> long (e.g. 288 + 3 bytes), snprintf() still returns 291 - even though =
only
>> 256 bytes were written.
>=20
> Hi Amir,
>=20
> Thank you for the patch. In practice, this won't overflow [1]. However,=
=20
> this code can be improved. If you follow the thread, there's=20
> conversation of the changes that will be made.
>=20
> Thanks,
> Tony
>=20
> [1] https://lore.kernel.org/netdev/20250714181032.GS721198@horms.kernel=
=2Eorg/
>=20

Yep. I have patches to just remove this read interface entirely. I hope
to post them later today.

--------------wy9LDulJgNKCRbt2sfIq7Fq8--

--------------AzAKmTInADH04xaAftTcpApv
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaIAefAUDAAAAAAAKCRBqll0+bw8o6DoA
AP9fokmC2FDStG8y9lTK0o3pvDf/MUvrXYI2nQQ7gvUWqgEA+9MdCaw4BY8reFLeThFmkh/K/JbR
fB2oo1WEfl/dmAQ=
=1J+u
-----END PGP SIGNATURE-----

--------------AzAKmTInADH04xaAftTcpApv--
