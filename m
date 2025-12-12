Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFF1CB9AB2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Dec 2025 20:43:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 322A5411A6;
	Fri, 12 Dec 2025 19:43:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W1XnSAe5KhCt; Fri, 12 Dec 2025 19:43:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7AFE341196
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765568611;
	bh=dz33++c5TKebBTidvf7lfbQjCUoJrD8i98yXuaBnM7w=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mCDg+DY5aCkhaIHT11zOGKjLcLywSMFrTNDguMp/7btx5Kc4ASM4FsOKerV45oyyM
	 YNNfXHYEFEgfTo6ucPJjGDIzO9xEm6OtKUt5G8NgBVH6TZUZ3qbCXQaHfT/Fe75/uY
	 gXGKF81ENKXN0fJZq4Jq7Bmo9ldz8+N+5omZ2pPKQKaEsCjzpbbLMVZJ/jFHNBxi16
	 mRH4ZcfNL7QNYLU6NMxPEGY+tVyA1WU2kJz8SJ9ib1RD9SzocnJX+wQtQxHQWXxzXv
	 cH4waXr/bOxNaXCdPMJErIes4tn9UlCA8nwk82/2SChjuS3KrSxRdz4CAsNn3j3uAW
	 SpXUiK3uewxBQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7AFE341196;
	Fri, 12 Dec 2025 19:43:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9CD6CE7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 19:43:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 826CD82F4F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 19:43:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 29HT0PYV7IwS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Dec 2025 19:43:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 084E682F49
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 084E682F49
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 084E682F49
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 19:43:27 +0000 (UTC)
X-CSE-ConnectionGUID: kdXbuztFTzqJEd6smG4Gcg==
X-CSE-MsgGUID: EXLUD+wIRcayQLi8pHYrAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="66567274"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; 
 d="asc'?scan'208";a="66567274"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 11:43:26 -0800
X-CSE-ConnectionGUID: 0gjUDVB/RB6neDJ0Hob0NQ==
X-CSE-MsgGUID: 8OA317PeRwmhV0ybA5L0YA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; 
 d="asc'?scan'208";a="197163810"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 11:43:24 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 11:43:23 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 11:43:23 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.55) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 11:43:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VPKUpJuh5KXWfRHhsRliNDlj5Orl9dugiMTiCUb79jfCmz76sx3cCI0CzNmnYehof24X+QR0quiQLB2ZHxbUEImanPQjrtjSad59z6dKNPgp/g9HYYq2JYA6vjFVdnh1ecMqYOSuG0wfvM4smxdWWQikg+awVvXQYP61jgrP36Tn0puhhizJVfaS7lvVoOPCQdq4vMCgB5S+Gkw3b9K7XFIyVivQTAbACd0wdWr8uLNR9r6XhKGCEodv7F4FFYXI0R6AJqAxBPRnxbkksuBE3kyLT+BMYSKXc863dhn9K4lD1ZItAYt8jzyRojNGBB1JxzmpbhleaaOa4n/3dc0UtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dz33++c5TKebBTidvf7lfbQjCUoJrD8i98yXuaBnM7w=;
 b=s+Ww04zHN0cx9i6JbVhWbGndSZAxfC+YgWMtOaGcBIbci9jArc9+XYmJZPpeBuIXiSAsf4VCOMgrtYCeqIkQtzR1wVO8dY7Tc17slppRn4S0JWoRPjttnsA4JnEvO11n5KfhK9aY/nrw3zW2kvRTEXrtcSJbbWfkbwg5jNm8ue4J7CI3EwYt9NzUtuKUCbRdkvKSc47Zngs4vne5aPTqNqQmMXCN7y2+0LcKY8lgPYXxpcU4eltMOWgpl/ZS+ajkpyUPRR++0tT3oyf40G61yO3uBw12of0zbxLuBbHQjhKUlC6QlfBGI/7FcaJCj2UJ030LgXVTfwHUQl3+VZgXJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA1PR11MB8857.namprd11.prod.outlook.com (2603:10b6:806:46b::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.9; Fri, 12 Dec
 2025 19:43:19 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 19:43:19 +0000
Message-ID: <3be0dc11-8fea-4159-9f58-40594ef469f8@intel.com>
Date: Fri, 12 Dec 2025 11:43:17 -0800
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, Mina Almasry <almasrymina@google.com>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Eric Dumazet
 <edumazet@google.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>, "Rizzo,
 Luigi" <lrizzo@google.com>, "namangulati@google.com"
 <namangulati@google.com>, "willemb@google.com" <willemb@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Olech, Milena" <milena.olech@intel.com>, Shachar Raindel
 <shacharr@google.com>
References: <20251211101931.2788437-1-almasrymina@google.com>
 <IA3PR11MB8986D6D6FEB5B8D443E6F087E5A1A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <25a83e83-46d1-4a16-9383-6d492cb37c7a@intel.com>
 <684b2ce6-c8f4-4ecf-9fbc-b75137689083@intel.com>
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
In-Reply-To: <684b2ce6-c8f4-4ecf-9fbc-b75137689083@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------52yDz0nZ0emAotiA5680pBCZ"
X-ClientProxiedBy: MW4PR03CA0054.namprd03.prod.outlook.com
 (2603:10b6:303:8e::29) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA1PR11MB8857:EE_
X-MS-Office365-Filtering-Correlation-Id: aa0222c4-04ac-479b-5128-08de39b6b369
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cHMzVW9rbVFKQ0NGemZoRWhpZ0hBL2Fydm5ZeUs1NERXUC9Od0t2d2FnWjhV?=
 =?utf-8?B?RzlNYVo4L04yT0o3bFJaNWRkelppMU1xYnBSY2NrU1o2Ym5LeVlrUEFwYkZM?=
 =?utf-8?B?UWtsaWcxYkRYUVFVSmhjMEZCZWtOeHJUZzNQYkc5TVNWaEphWHVYOXBNVUNL?=
 =?utf-8?B?dnBSSTVHcDFENjd5b3hxajRHaUFLbzlKd0YveHBjeVgzWG1VVDNsckxZczdT?=
 =?utf-8?B?Q1REbCtBS0NYU3JxVG1YM0orTU5wZ0hFS0ZIRDJkcFZZMm5YdndZbTVqc05S?=
 =?utf-8?B?aDdPQ0J4dEdIdkJpK1kzUWZZczZUZk9mTXBnVXRpb2pqUjZlYlB4NjNNZkZ6?=
 =?utf-8?B?K24xYVlXZ1YreVNUcDd3ZGtqTEdBYmkwNVBqSExGZTlOYzN3VzVhSW9jaFMw?=
 =?utf-8?B?QmZKM3hKSzFCY1N5cm93UGZzeTBkeGFCMG5XcG9NN3FJL3JzeS94SFNsWFJ6?=
 =?utf-8?B?Njg0Z244T0hLVktpakNvR28vZ05FWitTN0w4KzdYSXNwQjYrVWhob1crUUtC?=
 =?utf-8?B?S0YzL0E2ejZIMktrdUpCUTJFdUgrSld4WC95SGx1dTh3MElKZ3M4V05lOHZR?=
 =?utf-8?B?REFEaTlxVkN6dnNsRVhTcHpibDJ1OHZiekdvbGNnUjcxcFozMEVoUGhaZUhU?=
 =?utf-8?B?dm10eTZyOFFvcW5ZcE1JaGxwbTF0cWZyK093SWJDMkQwZHVoUXVHU2xnZ3BC?=
 =?utf-8?B?d1FLdUFKdUdvSk1XV0c2MitNWHl1b2VoTlFSN2Rhdm1VcHl4dUw4NTR6MGQz?=
 =?utf-8?B?MmhTT1hDSnZmSlJNYVJoNmh1bFZ2TG5mTCtiQXFqVnZDTnBHSTBFWVNQR3Vl?=
 =?utf-8?B?ZTZvNnpyOFE5SWMydnFObCt4RGp0RTc4NHVOaWx0N0xuZWlHcDZ6bG5oU1VL?=
 =?utf-8?B?Vnp3cmwwTzBkVmloSkFLY3JJWDhYcXNrRmNHN1p5ZXNyMEJnLzJXQklGb3BP?=
 =?utf-8?B?cFIvb0xITzBDNk5ibkV1NjlweWQ5NHhlQnZIVHdWL0VKelFwMkd0OWRGd0t5?=
 =?utf-8?B?OXJDUHY4bEFXQjBJNkhwazRjaU5UQVI3cFJBd2VSaHVqUkZ5Z0tNUlp5bFFn?=
 =?utf-8?B?ZkRVOTZPb1dmRVcremRCeGdpN3dISEtMMEpmc3kxdTBNNlFPb2x5ampxc0NH?=
 =?utf-8?B?bmtBS21paXE1ZVV4ZWVnbXl1T3kxa1VoZEl6S1dlSlhVMUtZZUswdHBnb3Jj?=
 =?utf-8?B?ZjVWYm9wMUVVblI0TUcwSVM1WWMxTkM3amxOWk5aVW5yVktTNTJ3ckZHNmZC?=
 =?utf-8?B?bm1qYXF0ZW85bzM0WkgrWDRFM0hjdGtxTVhDL0pjWHJLWS9naURrRjB6V2cr?=
 =?utf-8?B?elVjOGZiQUcyZ3k5MHEwUW12Y2U0a1MxK0RER0JJNjZZb1F0UTRlU0VVRlVL?=
 =?utf-8?B?cnlPMWQ4ZVFKcElhRHgrQTM5M042RWhHNk5XOER3TTU3aStaQzdiZkVadDRY?=
 =?utf-8?B?VFZhbDRiVHhoWnZnV241K2lhYTZkbVdhRVZ2Y3NxVVllNllLS3dienYrOGVm?=
 =?utf-8?B?ZUNTb1A2bFN6MkJHTHYvU1VRdUc0Tkx6aVR1Y052cG0wZjl3WEtJTEhnSzJB?=
 =?utf-8?B?YTZvelh6SytIdWh2MXFjbVBORGFnNGYyN1dkVVRLUkJzWEIzRlMybzYwaXBP?=
 =?utf-8?B?dXYzN1diS2djSWZSOG8vRGZwaFVKa0R3VTl0ZERldUJsdS91MDBzMXBVazlQ?=
 =?utf-8?B?aGxuQkZPY1Bmdk9seGVRN3d4M2ZQUWl0eFFWRnFBejYzTkxqcjlqZ0J0dXY3?=
 =?utf-8?B?cjM0YS9idVJxNnVucm82dVM2RUNyblkzWHUwOUhjcFdOdzdpSlVsMEp1YUY1?=
 =?utf-8?B?dkNST24rcm53WHNYZHZ1bjlyWk5sZ252OGZNRVZMa2VUeVdJVitxQ1FLQmpx?=
 =?utf-8?B?bEFib3ZHVUJ6RFNrSWRFZGZLQ1AwbHY1enFNWWx5NXdsVEJSbnRZK1BDUks3?=
 =?utf-8?Q?KVJOM6M4hl6kCLzGnFXtduSiDWdZtyGw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eTlocnBQQzlseXBjdlQvUjR0UWZpWVdUT3hFU0h3ZytpaStxc0JrVWhVeFlr?=
 =?utf-8?B?RzQ1ejJVZUhzVXdHTHBlSHpqZS92cFZRNkhTdThid25NWG5EbDdpclk3cTRR?=
 =?utf-8?B?djhibnVDZlQxVSs1T1B5TlZqWVlyb001VE5MNWtqTU16eG8ySzVXa3g0cU05?=
 =?utf-8?B?MDJqd3Q2bTdpSjRXaVdWNlJxRzIrMTZaYXd6SnFvZmN0eWowZzBlZ1AwTU9i?=
 =?utf-8?B?UXQ4c0NqNjlHcExuTzlEMWRBaHBwVDdXOUNibDB4RFcyQjRUNzlRa0xqS2wr?=
 =?utf-8?B?TDdCb3dSSndmRTMvQlpKUGVONmhzanpQa2I2eHQxZkZyZkMzRVNhOFpST2sx?=
 =?utf-8?B?OW91VG05aHhEaXljZ3NqZjkzN1JNMHhpK2tRNlZNZ1BZaHNCK0hDaExQQXdK?=
 =?utf-8?B?aGdHMVQ2WGlCODllTXFGSWRmWTRCZnRLMWMwTlZUbFRJaGFoRWRNbm1QV2ty?=
 =?utf-8?B?OUR0T3dPK2VJNVNBUW94N1h5aEk5RmVSTXVHTFpDRWNNa0tBcHJXcXl2SnJL?=
 =?utf-8?B?NTB6cmZuelIzUUFkMDhtVnlRelJ4YzE0aEtXdUhmVnpXMFFLcmptTmtIdkVr?=
 =?utf-8?B?ZUkxUVVkZ2VkQk8vYnJnWjRPMTY0TmVjVUY0NjRseVcydnVNOE5PQjlTM3Nt?=
 =?utf-8?B?aTN1Z1pXVFFlbjM4Qk1OVmg4Q2k5WW5DUmg1eWR0SDFHTGFFSXNEbGlsdHlh?=
 =?utf-8?B?QUQ3NmorYkc0ZGM5K2JhazR0NkpDN2NPdjVYMFMzMUJUNW1QRWdrUGdPUG42?=
 =?utf-8?B?M0NZUkdjQW94S2JycWpzczdlU3JiU0diN0t6S08wK2twSW9yUnJIVW9ZSi9r?=
 =?utf-8?B?NUJLbnVwV2lhY2dxU1hzU0FwK3M5VGVoYUhmaTN3SEFFY0dHdFFlTFlRci9X?=
 =?utf-8?B?NVVMRGNOcHQwaElXVWVQajR6aFV4ZFRaTDVrckFubU12Z1d6S2FNZG13WnYx?=
 =?utf-8?B?OTN6amRtZXpxY1ZJUlMwQWpZMml1LzhodU8wMWErMzRaeDI3RE5aTzJPNnZZ?=
 =?utf-8?B?MklUdHc0eVMwUUZxdU93cExyVG9HT0RLekpkS1M1d0dIM3NtT0RVSVArbEJh?=
 =?utf-8?B?N2VMUGRwNDJDNUNCQVhvWEZPUFlVaUkzVjMxYTlwS3FtRTE5OVVvakd1Q0Z0?=
 =?utf-8?B?Z1ZvTnU0SFV0c3RRWXlwS2dwOTdoVitlQ0ZqUXRzMHg0WUhPOENUQmFMU2Qr?=
 =?utf-8?B?dnA2MDZPK1I4aloxQnJPeFZBK2xZUHM2N01QdUhKM2UvTlNqdzNWcFprRUZp?=
 =?utf-8?B?KzJ3c1ZWQmxhWGp2MjZQanQ5djFtbkhNK2twaFlMT0gvZk5Sdy9saGhUZFRS?=
 =?utf-8?B?RlRiaDd2ZCs4ZzR6UFFQalpaMW1xZ1hpcGZMbW1YY1VYNll1Z0ViZEF5Uno5?=
 =?utf-8?B?QktXU1FSdVlWME13ZncyV2xpNWpXRXYyNnkyZFFBNU9jdXRwVTd2NDRTK0Rv?=
 =?utf-8?B?UDcxRXFHYWYrcEhENWZ6THRnUy9tTW5waUJLbmxiays5QnhMcFJzcWJldysr?=
 =?utf-8?B?NUpzS3ZvOEYycWRNa1FoakRYSVF3TEpieEFWRHp4VTBaRXc3VU1SbFdLeXBD?=
 =?utf-8?B?S1NabXJRdHAzcXZtUzUxUEEwOHJEWUJrNEZhYlFmSEtTOGs0WUUySXM1d1VC?=
 =?utf-8?B?TmhjQUlpMFluMjZXVk10N2xFS3gxRlJOUGVWbFJTL2pXM2d0TEtpN3habVhn?=
 =?utf-8?B?VUM5NUxqUzNicDZuZEM2Q0J3UnhNLzh6TTdZZGxMUkRMa1hkQXM0bFNIdllj?=
 =?utf-8?B?MmhMVktPWVl4YVFoeXByeGZjSkFzUEl2MHUvRW81clV6aDFKdms0THBPMHJw?=
 =?utf-8?B?NUk4eUJXb2lZbWxGajBmb21UcXhSang4SGJrNEljMHQxWmFpZ2ZZK0tOS05E?=
 =?utf-8?B?T0Z2Wnh0N09YQ0JISjFMbjJVL3JZUkdWSDhnRTBYS0ljMWhaK09VZ2xGU09v?=
 =?utf-8?B?RHlTL1BhSlpNTWFKODF0cFQvdlNEYUNEVDVLcDZJTjZFUzZnMmxCVTAwUFhj?=
 =?utf-8?B?aWhxczd1RUFzM0svclkvOHZKMGw4Lzc4Ykw5NDNHbEJsSFhOWFJwSmV3cldJ?=
 =?utf-8?B?RG1wRG4zZWhhbTdWS1ZvUVJidUptdjZ6a2xpS205M3p3K2hZUGNjTDdKN2p2?=
 =?utf-8?B?d0ZtUXErT3gwTTE0dVN2NExYc0x1TWNNUDRjOGs2MisxMEd4L0xYVG1ab3Bk?=
 =?utf-8?B?U0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aa0222c4-04ac-479b-5128-08de39b6b369
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2025 19:43:19.2501 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5536LrT+n0we8bGvRyrJZK9BlihUhRd7W7yqBbCVT0STuT2T4iuFaNNZQm8c/s3sGJXcbIRBEijtyGJ5Hc346vBre0by29KakyqBcvTaz+I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8857
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765568608; x=1797104608;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=fKpLA7+xc1x2CVpIXM7sU7yWjRgf/Iipdb6K9KBoY5Y=;
 b=Iv7BwYc+p9H1uLqfqp858MfdBsiXIcu4E8CEIEf0xflaGCy2+rRDoEWx
 Ei0iq9JKqffNq525u9NdkcXuGCS9FFTs5I+LeucJ48oJFYqcJmbuNLgxN
 Jaw4tQ3hj7dT2nNiGDadHMC6kWuJiL4ShaZXsvnvpV4HaZmgAnFbarVk1
 hEwQvNMVmxjZLvf8YH3Jj3TQ3+dZ4RC3cSl8bYPvSlZKy8ahTHEAvIVpP
 /vGh89J0SRAO98dvEMsILGj6EgcVWn1t2JfCUq/KbVgZnmyx8lDgYJgwp
 PvabmXr9z5hxM6fsGHEGy2oOucpv0PbOQdR2OjuxEIfgOLkst06Ar/PPk
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Iv7BwYc+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] idpf: read lower clock bits
 inside the time sandwich
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

--------------52yDz0nZ0emAotiA5680pBCZ
Content-Type: multipart/mixed; boundary="------------kTlDGRdjrsjQGsUpjKonKJ9O";
 protected-headers="v1"
Message-ID: <3be0dc11-8fea-4159-9f58-40594ef469f8@intel.com>
Date: Fri, 12 Dec 2025 11:43:17 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Intel-wired-lan] [PATCH net v1] idpf: read lower clock bits
 inside the time sandwich
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 Mina Almasry <almasrymina@google.com>
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>, "Rizzo, Luigi"
 <lrizzo@google.com>, "namangulati@google.com" <namangulati@google.com>,
 "willemb@google.com" <willemb@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Olech, Milena" <milena.olech@intel.com>,
 Shachar Raindel <shacharr@google.com>
References: <20251211101931.2788437-1-almasrymina@google.com>
 <IA3PR11MB8986D6D6FEB5B8D443E6F087E5A1A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <25a83e83-46d1-4a16-9383-6d492cb37c7a@intel.com>
 <684b2ce6-c8f4-4ecf-9fbc-b75137689083@intel.com>
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
In-Reply-To: <684b2ce6-c8f4-4ecf-9fbc-b75137689083@intel.com>

--------------kTlDGRdjrsjQGsUpjKonKJ9O
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 12/11/2025 11:57 PM, Przemek Kitszel wrote:
> On 12/11/25 23:06, Jacob Keller wrote:
>>
>>
>> On 12/11/2025 2:37 AM, Loktionov, Aleksandr wrote:
>>>
>>>
>>>> -----Original Message-----
>>>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf=

>>>> Of Mina Almasry
>>>> Sent: Thursday, December 11, 2025 11:19 AM
>>>> To: netdev@vger.kernel.org; linux-kernel@vger.kernel.org
>>>> Cc: Mina Almasry <almasrymina@google.com>; Nguyen, Anthony L
>>>> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
>>>> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;=

>>>> David S. Miller <davem@davemloft.net>; Eric Dumazet
>>>> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni=

>>>> <pabeni@redhat.com>; Richard Cochran <richardcochran@gmail.com>;
>>>> Rizzo, Luigi <lrizzo@google.com>; namangulati@google.com;
>>>> willemb@google.com; intel-wired-lan@lists.osuosl.org; Olech, Milena
>>>> <milena.olech@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>=
;
>>>> Shachar Raindel <shacharr@google.com>
>>>> Subject: [Intel-wired-lan] [PATCH net v1] idpf: read lower clock bit=
s
>>>> inside the time sandwich
>>>>
>>>> PCIe reads need to be done inside the time sandwich because PCIe
>>>> writes may get buffered in the PCIe fabric and posted to the device
>>>> after the _postts completes. Doing the PCIe read inside the time
>>>> sandwich guarantees that the write gets flushed before the _postts
>>>> timestamp is taken.
>>>>
>>>> Cc: lrizzo@google.com
>>>> Cc: namangulati@google.com
>>>> Cc: willemb@google.com
>>>> Cc: intel-wired-lan@lists.osuosl.org
>>>> Cc: milena.olech@intel.com
>>>> Cc: jacob.e.keller@intel.com
>>>>
>>>> Fixes: 5cb8805d2366 ("idpf: negotiate PTP capabilities and get PTP
>>>> clock")
>>>> Suggested-by: Shachar Raindel <shacharr@google.com>
>>>> Signed-off-by: Mina Almasry <almasrymina@google.com>
>>>> ---
>>>>   drivers/net/ethernet/intel/idpf/idpf_ptp.c | 2 +-
>>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
>>>> b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
>>>> index 3e1052d070cf..0a8b50350b86 100644
>>>> --- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
>>>> +++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
>>>> @@ -108,11 +108,11 @@ static u64
>>>> idpf_ptp_read_src_clk_reg_direct(struct idpf_adapter *adapter,
>>>>   	ptp_read_system_prets(sts);
>>>>
>>>>   	idpf_ptp_enable_shtime(adapter);
>>>> +	lo =3D readl(ptp->dev_clk_regs.dev_clk_ns_l);
>>> The high 32 bits (hi) are still read outside the time sandwich (after=
 ptp_read_system_postts()),
>>> which defeats the stated purpose of ensuring PCIe write flush before =
timestamp capture.
>>> /* I think he "time sandwich" is defined by the region between ptp_re=
ad_system_prets(sts) and ptp_read_system_postts(sts)  */ Isn't it?
>>>
>>>
>>
>> Any read will cause writes to flush, so we don't need to move both
>> registers.
>>
>> The point here is that we write to the shadow register to snapshot tim=
e,
>> and it won't guarantee to be flushed to the device until a read. By
>> moving a single read in side the time sandwhich, we ensure that its
>> actually complete before the time snapshot is taken. We don't need to
>> wait for both registers because of the snapshot behavior.
>=20
> very nice explanation Jake, thank you
>=20
> I don't know if it should be considered "basic common knowledge", or
> warrants an entry in commit message/code comment
> For sure we don't want anyone not knowing that to touch the code, so
> barrier to entry is also a good thing ;)
>=20
>>
>> I think the patch is fine-as-is.
>=20
> given the scope of the function, agree
>=20
Reading both registers would take longer, and would delay post
timestamp, which would lower the accuracy of the clock comparison
mechanisms that use the pre+post timestamps. We *must* read one of the
values because we need to ensure the PHC timestamp is snapshot between
pre+post, but we should do as little work as necessary, so only reading
the low register is the most optimal.

This could be put into the commit message, but at least to me as a
domain expert the original commit message was sufficient, so I'm not
sure that I'm a good judge for what is necessary for others to
understand the logic.

--------------kTlDGRdjrsjQGsUpjKonKJ9O--

--------------52yDz0nZ0emAotiA5680pBCZ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaTxwVQUDAAAAAAAKCRBqll0+bw8o6FV0
AP9v1DL+k1VOULovFAor1lQPnYP7aKq8MM1wBVoMOUYMsQD8D8OfGdOasMbOJGJh0+x7qL5TOuUG
WXI76B433XEI5Q8=
=Osgc
-----END PGP SIGNATURE-----

--------------52yDz0nZ0emAotiA5680pBCZ--
