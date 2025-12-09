Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C994CAE71C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 09 Dec 2025 01:05:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 58C0B40C55;
	Tue,  9 Dec 2025 00:05:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WiX9Ye4h45zz; Tue,  9 Dec 2025 00:05:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 989B240C7C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765238735;
	bh=+pTb4piiHM99wAu4d/niogUWlXjcg2CY662nUcHlQTY=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4PkfucGC3iPK7HDI4r7fh0eXjBhNEVQHzJ31YeSa5mULDo0Sv4+BHPWuoUAdyldbP
	 ogknzajp2wqkUtNUG6r5Pq6roxL8tRzDsCRzmtfuo0VTAubn5o7Z6HhK1yCjrqVnUt
	 LH+e9xjG+wkwZBCePzjs+cCgXD6lGmy7UACSku3rQk/QmrBc38XvHt+rpfUXVttKFb
	 3QWtL3Ll4Mc+zcrRaHuqBhdX81UD2t4oMKuYbeiPi/bdqOyB1SxaZgjO+BuNWGlQdf
	 avIj7gmIzVYCy82aawTblGwReCr9hl/cryEi8JjW9vO3Lq8KpRjKqujZDwCC+G+3US
	 pPz1xANs9vtYg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 989B240C7C;
	Tue,  9 Dec 2025 00:05:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2C9FDE7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Dec 2025 00:05:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1DCF261088
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Dec 2025 00:05:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X-4RzGGBQwvn for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Dec 2025 00:05:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 45FBC60DF7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 45FBC60DF7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 45FBC60DF7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Dec 2025 00:05:33 +0000 (UTC)
X-CSE-ConnectionGUID: xeQf+ANdQ4Wz2drkMHOWCQ==
X-CSE-MsgGUID: w0n40FwPQT2b8J6Oit81vg==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="66195931"
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; 
 d="asc'?scan'208";a="66195931"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 16:05:32 -0800
X-CSE-ConnectionGUID: HG3tQBCqSrOjCOo2iAiGCg==
X-CSE-MsgGUID: Rjp/vjqhSeaHT2n1kMgRig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; 
 d="asc'?scan'208";a="219419664"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 16:05:32 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 8 Dec 2025 16:05:31 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 8 Dec 2025 16:05:31 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.17) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 8 Dec 2025 16:05:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dqHJ7Q21IRJrkSgTI758cVubCb6ywFFEKjkpIpHvxPZbQ4rxCXXxXpLpX+u7V61WNC1BbwCgjg9UMgqvZ2G903zvK2TO3775xZHuHr610f14w1G6d93414Dgm6hXeh0gzPafgF9Kb83MtYHl3/ey+IeHLVMbFog4pID4V1KsTB99OZXUWP/6qmkPFmADu2JSWgfXZQwfjwGk/yW5UaypgicP3ax04xrg66PdZ/JUBb39KVKhmf+XyhoWxbob53sS8NKArWZoPugszB6MoEF/MJVFAFb/lqVKmjjTIcdKPkSmPYfdIOdL8tCM+jXX2lwpJI/hJJ1DGibul2+Roz3oXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+pTb4piiHM99wAu4d/niogUWlXjcg2CY662nUcHlQTY=;
 b=jyS5/vKSlAlnDbIy70snAYq2akLjeJlzr1bOpMCcRJUuDrfjKdsnTiDwIvWyJ8O6pVEwM2Nq0FRsUa2dSOcz0mdjkNwDz4CncVvmTK6eid/u8c4InHnCzCrugJnVRPHrMZ5TKFQzylBmiRGGMGC3l4YZgDUEcEmvsb6PHyQC1/jeod0uei+c0gJ6rV3LMJcbqVtOPdF47E98h0DQ/UIm/JM347pst+veGJfJm60p4mD+a9rW+oQw/R41wp4So49i9DXYm9Big3YN3wUnbYFPgCTAD4DMnC6JcovgULWKmw8KUQPx1O3iMRRzAMJMksPRLNoUACPmhytNNWE1WEEjuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SN7PR11MB6828.namprd11.prod.outlook.com (2603:10b6:806:2a3::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.14; Tue, 9 Dec
 2025 00:05:29 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9388.013; Tue, 9 Dec 2025
 00:05:28 +0000
Message-ID: <67a5ef2a-83bc-4b35-9eac-5b9297dfeb2d@intel.com>
Date: Mon, 8 Dec 2025 16:05:27 -0800
User-Agent: Mozilla Thunderbird
To: Marcus Wichelmann <marcus.wichelmann@hetzner-cloud.de>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>, Netdev
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: <sdn@hetzner-cloud.de>
References: <672ab222-db78-4cad-821b-19256a7a4078@hetzner-cloud.de>
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
In-Reply-To: <672ab222-db78-4cad-821b-19256a7a4078@hetzner-cloud.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------BqQnLKE9NhTn68nEIGLf7diu"
X-ClientProxiedBy: MW4PR04CA0288.namprd04.prod.outlook.com
 (2603:10b6:303:89::23) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SN7PR11MB6828:EE_
X-MS-Office365-Filtering-Correlation-Id: c06b8d22-6794-4269-c2c5-08de36b6a941
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NFdTeXhXVzZSVUpnWGVxZzV1NU52WVhEN3A4Z0hwZytkYmw3ZGUwZkhucFJF?=
 =?utf-8?B?bi9TUzcyQ3NsRnlHR09Lb1F5b2tCNkhrZ1BHTGJXWkNSdFZBODlTWjFDTlNQ?=
 =?utf-8?B?aVI5TFAzNW1XMVZrbHNPb2FZekRqOWZCZkk5ck1NQXJKRFlKU3VwbVFqVlgv?=
 =?utf-8?B?Y3BoclRaRFByT28ycVdJT3AxUmJsOHo5c0tuR05DSUd5QnU5MWprS09MSDBM?=
 =?utf-8?B?RUZubUE1U1pncUUrMCtsOVI5b3dmVHVUU1hmOG9nSDlnNnFwOFVGckxvZ1Fi?=
 =?utf-8?B?SjRJK3A3cWVrVG8yMENsRExNakZPZk5BQWluV204MEU4Ui90RXZ1cUx2b01p?=
 =?utf-8?B?dm5xemVIKzVjTmpTNkdiR3Z3MzNXWURBZjlZMFdGeC8zd2JMclBkUzRoUE4z?=
 =?utf-8?B?NzRlZ0VOeWNXOVBsRFNKWDV4K2hyZExiUnQxcTVnWGd4S3ZsaHR4RlAydUdV?=
 =?utf-8?B?RVIvb2RRenhsQnU3TXVoeVBPK3lwcEN3dkkxT1E4MjVwK1FoL0syZWNLaEww?=
 =?utf-8?B?MlJvdlkxQ041REk1ZW5Ma2J1cytzbzdKdlNrQ1B5TFk2RmdMbVlNS0laK3NX?=
 =?utf-8?B?dXR3NmZrWk9JNE5scXFWbERuZTcxQUt1UFF0SHFRMXNwTFZTRXNLY0Jna1JL?=
 =?utf-8?B?aXRocFl6SlBQVlRZT1NTajhnRDdKN1g0RldFdWgwRHYvbFNxQllDb2dZWVhK?=
 =?utf-8?B?RFdYamE3d1VOWGliNUY0aFN0VEZOSGJnUmZybVFnZGduRGN3bzRMMTYwcWRx?=
 =?utf-8?B?ZVFBM3hCMDBGZ3NJVEpjVmpUa0pCcC9xdndFNnhKQ2xzMXl4YTMyaEhWWWZu?=
 =?utf-8?B?Z0VBa2RwNFFFYyt1SkdMckRuUWk1a3lWTG1TNXdNeVFmeEtkNTMyOHdoODlL?=
 =?utf-8?B?dXNJR2NDY3FKcEd0QUs3d2ZEUEFjMUhUYWlqQkdjTnNtM2JFK0x5VDNsR05q?=
 =?utf-8?B?RTBGQWVENXZwblRnMm5BVit1d3dVdE9lRGphUkRHMzhUV2tkOGdhNldPVXlP?=
 =?utf-8?B?VmdnM1lHR3pRZGlGVjBGT0pNYTQ5ekpGSzZ5c1MxT05oaHhaMTdSYXFvdU9k?=
 =?utf-8?B?WXpqK3BsdWc2RWZubWtKanI3dlVGZjFxQXBDbkJxUU5iS2N5bjBRcUtneXRR?=
 =?utf-8?B?eVYrZ09EQTVvTktVSWQ4eDVhYXc2KzNZeFVIcUg1T3ZqT1oyLzBxWUhoYS90?=
 =?utf-8?B?WWUzU1dMSXRZUGdueG92VUpEQjVnTWVCWFpqTXFnbERyYTJQcnV4NnJOaEJa?=
 =?utf-8?B?QlBQY0ZqRHFINWN5Z3NuMDZ4UFVGVVBmcWVCaE01NTFMZTBEczhpS25JM1Ay?=
 =?utf-8?B?N2hPa0IwVHdOcGRUVS9LQWdjS3RvbzZaTmZTVGRyRml1ZENtNHpDVWNTcjUy?=
 =?utf-8?B?SUVBZENueE5lekxOZ2IwWGlmbjR6NEU5YXBxMTE4b0FrdFNOME43N1pkTnhC?=
 =?utf-8?B?dmliZ25SRnZ0bEVRQ3dDL3dKcEdWUE1RamFGMHNGM3lnSzZkMUlxTGJ5eUNG?=
 =?utf-8?B?cVZRWXZnUHA5YWFvS0oyZXdEdmlaMHhuVXNJREtkalBFMUxiejI4cGhCOGNk?=
 =?utf-8?B?R1JCYVpWMTRpL0JFdE41RGhTQ3RRQkowNmdMZjcvVXFtRk9yazJIVUl2Z3B0?=
 =?utf-8?B?bXNBWVFRUzE5T3FmQVBkQ3BZT1RTYjk5NVBuNnRqSy9JZ3ZjVUJvOFZnMWRi?=
 =?utf-8?B?YjQ4amRVWUVWZkxXaTE5UUpxNkt0Y1Q0UEl5bFpxQ0dSQVcrUzhxMXBFT2Vh?=
 =?utf-8?B?dElZV2FFZlMva243eUN0d1NvYTBtR0tsTVJpUU1yN3B3MjUzbDNtYjhKd2s5?=
 =?utf-8?B?RkVSM1NBNkdKMTIxNzlEU1Rpd3Fpa013SU5iNEFuZzROZms0azhKMW10WjFU?=
 =?utf-8?B?dE15OHJEWDRzeTVNNnI5bXRYdVg4YlNwcEI1eElmeVlJNkNQS0NTaDNJSDFK?=
 =?utf-8?B?L1dHQzlwYjdOUDdnUUFxRVcyQlc2TG00S3ZpT01VZTNzUVNXelljZEVjZHo1?=
 =?utf-8?B?Y1pUVVBacjZJL21vTGpwWmwxR2VUakRzMU9WazNidWJ3TlQ1ZFR0WHJ1YWxw?=
 =?utf-8?Q?nwI8wY?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bkwwSldNZHJtV1RpUitCeHA4RmZoWkdhWXczVFVlaHlEM0xWbCtWbG5Qd3VF?=
 =?utf-8?B?UlArV2RzUGtTRExUR0FFUmo0Z2tGbkRINUpMeFl1MHJ6Wkd5YWY0NmVhekQ3?=
 =?utf-8?B?SXZYek11aG9Oa3dlZkQxd1plOHM5d2ZsM0JTVi82Vi96ZktIQnBTTGxXdFpk?=
 =?utf-8?B?OGwvQUZKaWdCaDROZXo4M1MvNUo5WVlRTTRHT0lVdy9OM2FVN0pqSWtYZ2h3?=
 =?utf-8?B?djlNaktZeE91TDBPaWxscEdiNXVJQjF5RitDRHV4NW5ldWdycTZBYXpwM3cz?=
 =?utf-8?B?VTZTUzZzdHpMc1BXM1JTdG1QcXlIVmJLbmIxUjZkMGFTamk1U1EvSnhsMU14?=
 =?utf-8?B?VDUreVdacFFabnIvZ0hwbmIySlV4bDVuL3NOTWNlTXBvRHZWNFZrc0VQTjBl?=
 =?utf-8?B?Nmxuc251WktmWmxObWtCdzRKS0k0eTl6QVJuZDBubjd4SzRRZWFNZ3lkRG85?=
 =?utf-8?B?NGZUUy8rOCtqcTRRbXRqcUovZTBnWHlvYmM2STlva1JwL3NyeFdJM3AraytD?=
 =?utf-8?B?TndNTHpObzJvUlFKVWZDT21FTmM5U0FZd0JxYytRVEtrNG9JQ3RKS0h4VXZi?=
 =?utf-8?B?SXUrVWxyNEZkV2xBUzRVSWk4dnJBQzVFdjJCREZXT3FockFuQUYraldFWlAw?=
 =?utf-8?B?dzIxRndwVkFTQmVTUFBCbGlORmdEaXhJZFdtMFA3VEw4Skt5cndndXJhUUFL?=
 =?utf-8?B?TTY0ampsMU12ZmlLMXZxdWdQYko3UEZvWjBGZ2NpZHNWdGd2aFJNMWJZSjBy?=
 =?utf-8?B?OWFkaUxib25RN1Z0NDVSYnQrZTdZYXFBMXFQcmRVUzFkdG9FUTBld0JTT1dz?=
 =?utf-8?B?T200V2JnaEZ5Qms4NS96bHhjdTRMTUFKMW1ZaHRURERrbU5wbFpFTXA5Z3py?=
 =?utf-8?B?NncyNGc5WW9IelNBYVhZRzl0QWM4aWUvekhQSjFlS1Q5NmQ4TUtVWVRFV3ZV?=
 =?utf-8?B?amROc0VjQ2VBb2xTV1RsVDIveExJKzA0eUtMNGtHYTM3OVd0WWtacXdwY3Nq?=
 =?utf-8?B?ZW9oWm9sTlpFN2VGaWhyRHk3UElSVHJ4ME94VzYyNktLcnFEM3JEUHlFYzRI?=
 =?utf-8?B?dGorZ0s0ZFB4anVKOTJlQjFVem41dWlXRWhQbVdyMlAyMW5JYzU1TlBoNlNz?=
 =?utf-8?B?WmN1Y0hybXUzR1l6alRuK0lBR0luNzlOdVd4bXdITUVjbCtUK29sRnVyWjVH?=
 =?utf-8?B?S0pWbUZ3ZHQ3L0lzVGRoU2MxbHFidXcraFFWRElkL0Y1cmNJRmZma0RhbnB1?=
 =?utf-8?B?VHp5OWh4cHZyT1RxM2RQT2dod0ZNL291NHU1OFpkWGxLMis2NDRPUC8zcTNi?=
 =?utf-8?B?Z1crV2NleFZab3VoVHk5WnU0UWNOMERNRGhZeUwzT3h1VmNydlpscHZHTUZr?=
 =?utf-8?B?bWViSXlhZVhYcWovZWpLYVVlWmtlWFhSS3FqeUJvbkRCQlVqR1hnVTB0L2Ji?=
 =?utf-8?B?dDJmUnM5Q3JYNXhML3BUQzJ5cmFlbkg4dlR1SlFZazBUcGhUQUZvSVh4UG1U?=
 =?utf-8?B?MUZVQWZad1lNREZ1VllIa3pXRnZrM1hiVGxkRWQ4VloydXBRZDMzSVYxRS9T?=
 =?utf-8?B?Q1Fuc3E1UjdFWWJsYmIzc1dHSTZqM1haamg4T1hGTWJhRTJGd3BXUmFQUkFt?=
 =?utf-8?B?aGVwSTlSOXpERVBnU2krUU5iZzRVamFhdk1iUndaT2lKelZJTlNpZ2czZTI4?=
 =?utf-8?B?cVhjdHBKWnZoaFVRTlZoekswNjA1b3hibC9KQ3JUZ210NVdBUlBVZ2pRYVJj?=
 =?utf-8?B?RG5ZVlh6YnhEcmc5a1RueGxqM1BINjl0cUtXKzFVMHIzOXBVWEtaMldaMi9O?=
 =?utf-8?B?RHM5REFpeTEyQTdIN2ZtNi9QNUJ3bkp0R2VFZWMxU2pxblVYNFJQd1RuZVEv?=
 =?utf-8?B?ZGRFSXl6QlQ5dDYyTWZScTN6VS9qRlFwR2pPOFo4RC9qL0dFY2I4Y3dzWFg1?=
 =?utf-8?B?QUxTVEZqc0JITmR1NmtMR1BnQUNOUnhHSXI0bzdqMGpxSEY4RExyc1IyN3h5?=
 =?utf-8?B?NFJrQnVuUU9YWlg4aDRpNkhsYno5WUEwN1ZsQ3dTM1EzUFBSNXlURFBvNFYv?=
 =?utf-8?B?RGsyWWZtM2k4SVBCMkVRcXJMVnU2ZER5VXNWNnVZTzhGNEtqYXBpK09nRnVF?=
 =?utf-8?B?RUNndDg0bENJL3pUYnk1ZnRURjhlUFBiekVHblRSaGhUQWZaMUJXRXlFNENQ?=
 =?utf-8?B?RVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c06b8d22-6794-4269-c2c5-08de36b6a941
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2025 00:05:28.7336 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ytgHIRNX8J7CHSMZNviUr/+kCtWGYk1laS8JnjKSypCRXVpcrShPpuCbC8l5VzKjAftzpN1CLym2uAW5kLiAFUjIRC8uoneXubb5fs8p5w0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6828
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765238733; x=1796774733;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=DpH2BGFeexpJRWU/lXX3VuYDmcYGZGnsuKU4V8Jalio=;
 b=Aq3lDq+q093lziyzw6pYSemh2aK61KC9VoC3Qyl1cxlLZOUeoqsfxYlR
 AuTQuPKSnVHbgcLGYRM8VZ8Ag0mopT1Ank5WW8REpzzQZ8t/Lqw6qct0h
 DUZ0wdUnDH1lEsLLau8PX7OcUXjanTerzY9hgJz+wNHR/Ls5vnxvq5E3q
 ZdbWDTvhusAf2M+LYmbOTK9dkmdf+Bb4FhR9YkjKrTGWbHyllJbMB8065
 3R0kHMwi/1plHc06tFiPiug3+S0d2zXeRiKqJWb+UsRHh7WpdZB9HasaK
 DIpzLAoiUyh/b+dJqjoRVfSObH2xOhd/Kxmc3pKw4Nnd3L+OGIxSvyggR
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Aq3lDq+q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [BUG] ice: Temporary packet processing
 overload causes permanent RX drops
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

--------------BqQnLKE9NhTn68nEIGLf7diu
Content-Type: multipart/mixed; boundary="------------502qiqP07eeUmZ3vXPGrJ6FD";
 protected-headers="v1"
Message-ID: <67a5ef2a-83bc-4b35-9eac-5b9297dfeb2d@intel.com>
Date: Mon, 8 Dec 2025 16:05:27 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Intel-wired-lan] [BUG] ice: Temporary packet processing overload
 causes permanent RX drops
To: Marcus Wichelmann <marcus.wichelmann@hetzner-cloud.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, Netdev <netdev@vger.kernel.org>,
 linux-kernel@vger.kernel.org
Cc: sdn@hetzner-cloud.de
References: <672ab222-db78-4cad-821b-19256a7a4078@hetzner-cloud.de>
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
In-Reply-To: <672ab222-db78-4cad-821b-19256a7a4078@hetzner-cloud.de>

--------------502qiqP07eeUmZ3vXPGrJ6FD
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 12/5/2025 6:01 AM, Marcus Wichelmann wrote:
> Hi there, I broke some network cards again. This time I noticed continu=
ous RX packet drops with an Intel E810-XXV.
>=20
> When such a card temporarily (just for a few seconds) receives a large =
flood of packets and the kernel cannot keep
> up with processing them, the following appears in the Kernel log:
>=20
> kernel: ice 0000:c7:00.0: AMD-Vi: Event logged [IO_PAGE_FAULT domain=3D=
0x002b address=3D0x4000180000 flags=3D0x0020]
> kernel: ice 0000:c7:00.0: AMD-Vi: Event logged [IO_PAGE_FAULT domain=3D=
0x002b address=3D0x4000180000 flags=3D0x0020]
> kernel: workqueue: ice_rx_dim_work [ice] hogged CPU for >10000us 4 time=
s, consider switching to WQ_UNBOUND
> kernel: workqueue: drm_fb_helper_damage_work hogged CPU for >10000us 4 =
times, consider switching to WQ_UNBOUND
> kernel: workqueue: drm_fb_helper_damage_work hogged CPU for >10000us 5 =
times, consider switching to WQ_UNBOUND
> kernel: workqueue: ice_rx_dim_work [ice] hogged CPU for >10000us 5 time=
s, consider switching to WQ_UNBOUND
> kernel: workqueue: psi_avgs_work hogged CPU for >10000us 4 times, consi=
der switching to WQ_UNBOUND
> kernel: ice 0000:c7:00.0: AMD-Vi: Event logged [IO_PAGE_FAULT domain=3D=
0x002b address=3D0x4000180000 flags=3D0x0020]
> kernel: workqueue: drm_fb_helper_damage_work hogged CPU for >10000us 7 =
times, consider switching to WQ_UNBOUND
> kernel: workqueue: ice_rx_dim_work [ice] hogged CPU for >10000us 7 time=
s, consider switching to WQ_UNBOUND

I am a bit curious why the ice_rx_dim_work hogs so much CPU here..

> kernel: workqueue: psi_avgs_work hogged CPU for >10000us 5 times, consi=
der switching to WQ_UNBOUND
> kernel: ice 0000:c7:00.0: AMD-Vi: Event logged [IO_PAGE_FAULT domain=3D=
0x002b address=3D0x4000180000 flags=3D0x0020]
> ...
>=20
> After that, the NIC seems to be in a permanently broken state and conti=
nues to drop a few percent of the received
> packets, even at low data rates. When reducing the incoming packet rate=
 to just 10.000 pps, I can see over 500 pps
> of that being dropped. After reinitializing the NIC (e.g. by changing t=
he channel count using ethtool), the error
> goes away and it's rock solid again. Until the next packet flood.
>=20

A reset likely causes a bunch of stuff to get flushed and reconfigured.

> We have reproduced this with:
>   Linux 6.8.0-88-generic (Ubuntu 24.04)
>   Linux 6.14.0-36-generic (Ubuntu 24.04 HWE)
>   Linux 6.18.0-061800-generic (Ubuntu Mainline PPA)
>=20

I think we recently merged a bunch of work on the Rx path as part of our
conversion to page pool. It would be interesting to see if those changes
impact this. Clearly the issue goes back some time since v6.8 at least..

> CPU: AMD EPYC 9825 144-Core Processor (288 threads)
>=20
> lspci | grep Ethernet
>   c7:00.0 Ethernet controller: Intel Corporation Ethernet Controller E8=
10-XXV for SFP (rev 02)
>   c7:00.1 Ethernet controller: Intel Corporation Ethernet Controller E8=
10-XXV for SFP (rev 02)
>=20
> ethtool -i eth0
>   driver: ice
>   version: 6.18.0-061800-generic
>   firmware-version: 4.90 0x80020ef6 1.3863.0
>   expansion-rom-version:=20
>   bus-info: 0000:c7:00.0
>   supports-statistics: yes
>   supports-test: yes
>   supports-eeprom-access: yes
>   supports-register-dump: yes
>   supports-priv-flags: yes
>=20
> ethtool -l eth0
>   Channel parameters for eth0:
>   Pre-set maximums:
>   RX:		288
>   TX:		288
>   Other:		1
>   Combined:	288
>   Current hardware settings:
>   RX:		0
>   TX:		32
>   Other:		1
>   Combined:	256
> These are the defaults after boot.
>=20
> ethtool -S eth0 | grep rx_dropped
>   rx_dropped: 7206525
>   rx_dropped.nic: 0
> ethtool -S eth1 | grep rx_dropped
>   rx_dropped: 6889634
>   rx_dropped.nic: 0
>=20

Interesting. From reviewing the code, the rx_dropped counter appears to
be the hardware Rx discard counter which comes from GLV_RDPC, which
means its definitely hardware that is dropping the packets. Possibly
because the rings are full and somehow don't get cleared even after the
traffic stops...

> How to reproduce:
>=20
> 1. Use another host to flood the host with the E810 NIC with 64 byte la=
rge UDP packets. I used trafgen for that and
> made sure, that the source ports are randomized to make RSS spread the =
load over all channels. The packet rate must
> be high enough to overload the packet processing on the receiving host.=

> In my case, 4 Mpps was already enough to make the errors show up in the=
 kernel log and trigger the permanent packet
> loss, but the needed packet rate may depend on how CPU intensive the pr=
ocessing of each packet is. Dropping packets
> early (e.g. using iptables) makes reproducing harder.
>=20
> 2. Monitor the rx_dropped counter and the kernel log. After a few secon=
ds, above warnings/errors should show up in
> the kernel log.
>=20
> 3. Stop the traffic generator and re-run it with a way lower packet rat=
e, e.g. 10.000 pps. Now it can be seen that
> a good part of these packets is being dropped, even though the kernel c=
ould easily keep up with this small packet rate.
>=20

I assume the rx_dropped counter still incrementing here?

> In my case the two ports of the E810 NIC were part of a bonding, but I =
don't think this is required to reproduce the
> issue.
>=20
> Please let me know, if there is more information I could provide.
>=20
> Thanks,
> Marcus


--------------502qiqP07eeUmZ3vXPGrJ6FD--

--------------BqQnLKE9NhTn68nEIGLf7diu
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaTdnxwUDAAAAAAAKCRBqll0+bw8o6F+y
AP4sCfEYni2gWv2IhmHlFFBw8N5LCfYROyLlIGvFEOQxfAEA90T5nSGEEDnfUaNZxlq/cFN/oWap
MbBzunNEdA1zwAY=
=mUtM
-----END PGP SIGNATURE-----

--------------BqQnLKE9NhTn68nEIGLf7diu--
