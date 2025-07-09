Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 773B4AFF181
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Jul 2025 21:11:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C523140A5A;
	Wed,  9 Jul 2025 19:11:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y_KjmfKlFp_U; Wed,  9 Jul 2025 19:11:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0311340A4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752088298;
	bh=+XZgKBonaXvmhDagi9qevzEitTEfi9poCC65YlyNE7o=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lotnShqdZwGm2EfCeLFOoWW+gx1I6qclsq68JBn9NDV1w/lGdDrcXftPxXvXCgr/x
	 0hmZifNVWZdwHcbWHTTp2b2gVQP0LSAXh944ZEIfv4NDVECtTLx6ibbNeYEPjmiWCW
	 uzJrSTWiJUm1jKl+j6uZolVyo6/DaG200ad9tqDAmsuCXc02Kq61OtfnOGBQw0XCrL
	 7hKawLfyMxrwWxLPSTiRxKPyh+DW9YvYizz3OI7nyyJcyZq4QNqay7nsBxXD69E7Zp
	 Hw3eseKGS/T3Z0CaLy6LV0u4zrPU+10OjCavqBI04/n5YXuI6rxuZFLzIO+cfdLjJc
	 SNOOoRHGhcyQQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0311340A4E;
	Wed,  9 Jul 2025 19:11:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B169F12E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 19:11:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A351381170
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 19:11:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vE0WDtEJUGNs for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Jul 2025 19:11:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A4D9C8111C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4D9C8111C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A4D9C8111C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 19:11:35 +0000 (UTC)
X-CSE-ConnectionGUID: UVWn1DC/Ss6cOQkD33Aakg==
X-CSE-MsgGUID: sOJN89oXRMi5x4PuUBx9EQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11489"; a="65059457"
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; 
 d="asc'?scan'208";a="65059457"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 12:11:34 -0700
X-CSE-ConnectionGUID: 0NgO3xpoTzqqzxaLQUP9lQ==
X-CSE-MsgGUID: fp+2iVdcQgW94p6q0BzEYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; 
 d="asc'?scan'208";a="160115246"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 12:11:30 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 9 Jul 2025 12:11:29 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 9 Jul 2025 12:11:29 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.85)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 9 Jul 2025 12:11:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KenhxGU7u5qEpFcGFdcSR1Jgb0gvsFw9U8j75sdDDgdeN3Ogy8D6vtp0kWbthw+AZJoJ5tfGGL8nvR/V8NnC1tdhOSiGr09sPJD0sZhBGuDM39IFOP9l2vN3q5/ZUtHyjHCm0SzI6z3Ne0kqdseFoqWrhsmn8btj+xmmWReZnLFgJUdLayJ0+JYj0UI1Ohn3+56LqufQJje20NApDnx8UzmTZx6+E96oSw7Xsi6/jl4JGVlKsfvkzqqQQ3+9CldXNKA8lQwAbVn2/Y0sRUoA57IUDKPa8rMbuymRusnV4ZZ7SknxoU7AF69jBDkM9mFMbUouBXzs3I6g0kiyB6AJQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+XZgKBonaXvmhDagi9qevzEitTEfi9poCC65YlyNE7o=;
 b=KyHRul7cffUeyDDRJMa528vzHA/OPLYM6GcBI1H0+CPs637dryqalMuCf2AMuydtvB5sARPtgzqLBCpdzCCnJ6cfhVn4zJ7x7lXY0NIjQUuoJYINcpbpyCP0rwhGNUW62HQ9CEa1AUgIHUXH0DRNJYOYUVOU0ODRpuzi/uijX3oFp2RGNkaVxeruFk7I3HVlh3LADZYdMQfAf00gW2MfUYUuf4yGdyG8OQ5o4DLf61qzK7kBM6sjb99SMbAYPMDKjwLNEAXqVeI3MLdFbPH66aQANvvTbwHBlwL5DhWqF0+ZNPemtbqmjsVcOhHoW9pZFVfKtTKoxRIEkJUcXGarTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS4PPFE99BD3AEE.namprd11.prod.outlook.com (2603:10b6:f:fc02::5d)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.29; Wed, 9 Jul
 2025 19:11:07 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.8901.024; Wed, 9 Jul 2025
 19:11:07 +0000
Message-ID: <04f3dc70-fd31-4b26-9647-c2f4ed012d8e@intel.com>
Date: Wed, 9 Jul 2025 12:11:04 -0700
User-Agent: Mozilla Thunderbird
From: Jacob Keller <jacob.e.keller@intel.com>
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
CC: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, Jakub Kicinski
 <kuba@kernel.org>, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Damato, Joe" <jdamato@fastly.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Czapnik, Lukasz"
 <lukasz.czapnik@intel.com>, "Dumazet, Eric" <edumazet@google.com>, "Zaki,
 Ahmed" <ahmed.zaki@intel.com>, Martin Karsten <mkarsten@uwaterloo.ca>, "Igor
 Raits" <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>, "Zdenek
 Pesek" <zdenek.pesek@gooddata.com>
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
 <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
 <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
 <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
 <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
 <08fae312-2e3e-4622-94ab-7960accc8008@intel.com>
 <366dbe9f-af4d-48ec-879e-1ac54cd5f3b6@intel.com>
 <CAK8fFZ6PPw1nshtSp+QZ_2VVWVrsCKZDdsxdPF9Tjc0=_gi=Wg@mail.gmail.com>
 <bdab5970-0701-4ba7-abd2-2009a92c130a@intel.com>
 <CAK8fFZ5XPQ-mW5z9qJNJhqFukdtYGJawYTYuhHYDTCvcD37oFw@mail.gmail.com>
 <d3c4f2f0-4c22-449b-9f8d-677c4671ee17@intel.com>
 <CAK8fFZ4L=bJtkDcj3Vi2G0Y4jpki3qtEf8F0bxgG3x9ZHWrOUA@mail.gmail.com>
 <aff93c23-4f46-4d52-bdaa-9ed365e87782@intel.com>
 <252667f3-47b2-4d1f-86d6-c34ba43a6d47@intel.com>
 <ee05284e-3ab1-482f-a727-981b9fd4e9ee@intel.com>
 <a4b27e11-a3fd-4df0-8dd4-60d1a4aec5a8@intel.com>
Content-Language: en-US
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <a4b27e11-a3fd-4df0-8dd4-60d1a4aec5a8@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------GKNxMQD0SR72fFpqpKhraBdo"
X-ClientProxiedBy: MW4PR03CA0001.namprd03.prod.outlook.com
 (2603:10b6:303:8f::6) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS4PPFE99BD3AEE:EE_
X-MS-Office365-Filtering-Correlation-Id: 220ed3d5-11e4-4497-0733-08ddbf1c5b3c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RnFocXpuZWc4THdsN3VJd1ZnMDQ5Y1E1RG1HSXBWRlg2OG45YVVKWWtOT1Qy?=
 =?utf-8?B?MzNjSlRjTFFFUlR4amRSbm93MGYyT0J4RWNUekJENHB1WFBPWWtLdkx6S0wy?=
 =?utf-8?B?SHQxdFBlVG8yQ2wzWHVMdW5qNVNkd1A3R2o1YUxQZUdGak5Dc2lhR1FlMTBE?=
 =?utf-8?B?Y05PaXd4bU43N0ZTcTNxSU1LNWhPcFduR3ViQTg1aXJJZUhqN01CY3V1dkl2?=
 =?utf-8?B?NmlJQUFMRzFydTBET1ZKMWZEaVh4ZTdMOWF3dkphdUVKSzROVjJKWWpMQ295?=
 =?utf-8?B?bGM4Nnk4ZWRpa2U5OC9ldnF0MUNsajRjWlFsQi9aT0JMdFZlLzRUdmxBZjZt?=
 =?utf-8?B?WFhUZmNJZ1lScHhvUm9VaTJpU0o1ME1oY09sVmJYZUEzMzJ4TWp2WUFSaTBI?=
 =?utf-8?B?RDdVT3JRQWtZN25DcnFoeVRkZXpybmVkYXVuOUxJdVU1NStmd2MrNThOZVpM?=
 =?utf-8?B?WWtsa2x3dFBkZThsK3grdFJxeG1TOTdyTTQ4OXh6YzlrUkNqeVAvcTJvNzhL?=
 =?utf-8?B?eFBLZnlnL0VXWW4vMndEWS9naUJDS3lETGc0cGNXWkIrLzdSVW5ycmZOUDhu?=
 =?utf-8?B?cVlDamp3TnNKRE9yUWhXTGZRNStMVlgvN1B4ZUZ0M1JrWkcwVFF2NlJWVjM3?=
 =?utf-8?B?Z2l1NHhaZ29oUndBbE9rMEZJQkdpRHRaRFVCa3o1MjduUDA4bXY4ZEY0bGpn?=
 =?utf-8?B?eTVRVzE4KzVIeExoRE00NmdMYjVQNXRnMWNyUkxvWDZZRWdLY0VURzBVb0xw?=
 =?utf-8?B?UHFaRERGay9yQlNKOE5yazFLakFwQi9hcHEyQjcrN2dNd2IzSlQrdGt4UHZp?=
 =?utf-8?B?amxDVTkvRENiQXNESndjR1Nldkl2eHlBZzlialNUdk12andhMmxYbUtwT3Nn?=
 =?utf-8?B?SkN5L05oRWJVY1pwYnhuRkxuY0h5MnVlT2M5NTMyelR0aHo1K1kvbDExeGE1?=
 =?utf-8?B?LzdyUEVRaGJPcFAyaUg2OThFVGc1ZmZ4MC9UdXhjcWJzSzMxQ1ZBZlAraUFq?=
 =?utf-8?B?U2podEZ1RktRN2VrUUZyS1o1VTVSMW85emtveUtySVMrOHRQdTJONG1CQjhK?=
 =?utf-8?B?YVZSQ3h5eXo4bDBqaEkyOUVUWDlnSHp3RjJZWUpweDhXbFVZeGNOa0dqTFJl?=
 =?utf-8?B?ZVZLTDdEZUo1MGZCOUwxaS9TMlp2OHpFc2VjekdHckd3S2xLT0pjY1d2RzZV?=
 =?utf-8?B?TG8vSTJHUjQvcEJUNDRQMUhMYVZKQ2tseXJzeWNwemZld2tkT09aa1ZWaSta?=
 =?utf-8?B?cmFURzBtOW5raytvOFBLdGJSUE1LYkY4MHRDSHZQa1BaTUpFR1htYy9JdmxH?=
 =?utf-8?B?cS82dzJJang0Ym0yU0Fva0d5bXExWEh5NFNJK1QwYkttenNIRWJYMzhISGx0?=
 =?utf-8?B?YVV3dG1oTWh0elNWd29Cc2U5amxrbEFEQ2wvV0JYZnFtdDFoRG16ZCtKSVJo?=
 =?utf-8?B?QVZMSjgrV1Vhcm03bFM2cFhLWmFxc2IvMUlkcDR6Z0daLzlvOFVkcVJQZXYz?=
 =?utf-8?B?MVBvdnJCdGRmUk5ic2U2QVZyV3ZuS092d1R0akx0dEpFTkZxblIwUXF2NmpW?=
 =?utf-8?B?UTBuTGZ2dHk1cVNtUUxRc0tqeTJTUkQ1Z2JMVmZ1RnVMY1luL0dkU3NBaHVk?=
 =?utf-8?B?NFN5ZTFwQ0U0NmJyUS9HQnZNSGNYWTZ2SFEwNHQxZ2grSHFZeml6azRPb3BU?=
 =?utf-8?B?U1IwN0dRNE1lMXBWQTZBdU05OGFxK0p3S3JhVnp4S08xRXNQdVZNMkxQUVFi?=
 =?utf-8?B?ejJsUDFKRDRmSndIQlJTT0t0aFBWRjFnR1hpUTlSbkhMb3RJcmN4cUY5ZzEv?=
 =?utf-8?B?LzV5dDkzQzRWY3lVUG1oWUl6citJcVliL3ExQ0RJS2F6NXlqZzZMZkhYY29I?=
 =?utf-8?Q?k71m5OVn0muAf?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UjR6Uk1kS3Z0Q050V3ZMUVFkb2Z5ZFk2SDlVV0J0Wm5yYTlTanNjLzRodmJv?=
 =?utf-8?B?cFY5WjZraHN1RHVQazJvVTNBZ1hVMVNYVXp1RG1vWVhMZkJ4YytPMkYxYVJG?=
 =?utf-8?B?eXA0Ynkvaktuc2MvVEhtUVRRb0FXaUM3MEdnUTI4WkZMcW5FWXBoTG5Vck5M?=
 =?utf-8?B?VTVBZGFINFVPYlcvVUhiYkU5enBZbDU0S0xFd21pQ1ZUSHRFWDBuaGt4UlZo?=
 =?utf-8?B?MVJrWlowR3JGVjIzMFY3YkZUNXp5cjJsU1BzbzhxOHFQS0FXREtZb0k5K1JX?=
 =?utf-8?B?R2lnVmxCL28wOG1EVUFIZ1dwMW1LRElqSkdZOFlmdmF1NVBQZy9lUTVYbVlF?=
 =?utf-8?B?d3NDb0JiKzZ4V2RqYjljRjUwUW02RWQ1amFUUGIvcmZSZjFvT0NoamNZVk1J?=
 =?utf-8?B?SGJvSXhYOUNMeVA2cndLNTgwd0YxNk1oZnJNWUZFUXp2Y3o3UWtqTzJqV2U3?=
 =?utf-8?B?eHBuV0lsUUp2WGpvdy9UaHNrTVNhQ1NQbjJqenJXZm9LTCtyZnlnK3ZoS2xW?=
 =?utf-8?B?M0tsZ0JWME5IUHh2aXJnL0o0M2dhK0FDbkowQU5OOWxpeG4rbFg1Y09NL0Mr?=
 =?utf-8?B?WDJxNDFSVi9QVkN5M1lMV3laV2NsWUJSaEJhSzg3Qnp0OVNRK2JkaFZYNU1m?=
 =?utf-8?B?WFdXYlRzczVpRFRiL2FudkRIZkozQm9WZmNXd3p6citsUkNrK1JWdGd5RzZp?=
 =?utf-8?B?UTA4ZkR2WWJ4ZWZsQjdmVHl4cEYxUXNDYVg5cCtmZlRaVlJMRVR3NmMwOXBr?=
 =?utf-8?B?YXllQi82T1FINEdPUjVYNXI4Z2VucVNVWmoyQ0FEYXhFT0ZhQlpIU3Z4WU1T?=
 =?utf-8?B?d0cxVFMrSmdqUVhaR3ErVS9ZakIrRmMwMStjS280QzgraUhGS0h4WXN0dDkv?=
 =?utf-8?B?SDhibDhHNzdCK2JydWJiWnFNMXltbTZJRVg0dDFKMWhGdXNyVVJFSUF0SVlR?=
 =?utf-8?B?aFcvS0YyMDg0WXNkRUhTRWtBNFNNQUZMaU94Q0w1OVVmZ21ubkFFUU05dkVv?=
 =?utf-8?B?aUEzUndnaUlzbWRHSG1tL1o5NHJwMC9KbGFUVHphSnc4K2NoUDBNamNMcHNp?=
 =?utf-8?B?YUwweGFLNGl3S2RnTmdTRzkwNGF5cnRxVGZOUzc4aVU3S2RxdFZkT3Mzbzlr?=
 =?utf-8?B?Nk9CRERPd29BeUQzUDZ0YVBPZVJjR1czYTZDcHcvWE5Tb0ozL1JlZnp2R3pY?=
 =?utf-8?B?RFdtcUVuR1Z4VVExUjI3YTFMOG1Fc3V6QWZ1RytJZDBDUXM0eTVFb0tUV2RX?=
 =?utf-8?B?SjRrZjg2SlNaTWRjWlBKNThPZ1RYdTVsS0svZ0NFY0F2QlpIaWZMemhFeHdN?=
 =?utf-8?B?N3VucVQ3akp1Q2VsSWxYOVI0L0NoTHpLUG02Snk1N095Uzh6RitlUmppRW12?=
 =?utf-8?B?S1ozcFJpdm5RQXNBVWpEUmcvMmxJVVROS3pVY0FMNlNJT2k0TWh1QVpQVEsr?=
 =?utf-8?B?QzNVTjVmOWlFeWxvSEFPZXQ4dW1iRHIzYTR1MTloUFZDc2tjTi82Q2VFdS83?=
 =?utf-8?B?UGRzeVoweHQ0cDAwbjRnczl5QThDMEFnYVJIb0prSHpMY241c0N4dnIrditJ?=
 =?utf-8?B?R0tObmIvM3Y2RzVodEdjQ0QwTmlWQ24zMER6TG1VYVZmekQrakpoeXhmZGtZ?=
 =?utf-8?B?OXNMZlppWldwOGdHeko2bjY1OU1WMUMwbFFTRU9FUXprUjRad3o4THFJbFZ2?=
 =?utf-8?B?NUMrVGEzLzRGbkEydFcwVm9VRDhySmlYdHduZmRVR2dlV3JVZXM1YXM3MDhE?=
 =?utf-8?B?M0lwbjRNVG04YzdvejBaSlRiZnVBeHJJMFdZY2sxMWl1elRUL3dJVkd4S2Yv?=
 =?utf-8?B?NXp0REJMSllYRG5MeEwwVHJ5TXgzaGtZYk5xN0VxNmVxckpzQ0ZpRWpRNEJZ?=
 =?utf-8?B?aFZnM09tNUoyUmdUQzBObEVPMXlMV0NiZ0JlREkrWmdDLzh1WnpCSjVlMWNN?=
 =?utf-8?B?YWd3S3Q3NCtkbTBnRXRBNG5xV21kamhDTlc1L2J3WTQ4YXlBMUVvNnA3aFUv?=
 =?utf-8?B?TFJ4QjNIUVlWRUIwVFI5VHdPYllPSFhVWSt3R1ZxRDlnL2hRZ05hZU5qcDhS?=
 =?utf-8?B?SE5uUUdVYmxlR3ZyMDBVdHdsZGFiaVUyWXRHc21NTk0yYjZWYjFxTEJDQVdR?=
 =?utf-8?B?N3ZtT3BaaldBWnAxWFJUZDFVWUgvc1ZMNzVaWU1zZ1ZISzRnSE1lNXg3OGpj?=
 =?utf-8?B?dEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 220ed3d5-11e4-4497-0733-08ddbf1c5b3c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2025 19:11:07.1517 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3OoU+7xTqKIDoUK8DKJkE7FIDheFc7ftTFrnT5GCkyAMi4C7boqImsd901no14tjAfNa9tSIGEaYdl9zMXLZXmFCGRi4JvD7rGIV7J/kXw0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFE99BD3AEE
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752088295; x=1783624295;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:mime-version;
 bh=+XZgKBonaXvmhDagi9qevzEitTEfi9poCC65YlyNE7o=;
 b=CAd9t9P/X7nVnU2rSWMmzC2nUUfve6GRjG0viI5+XR/7EpkosEeeHaQi
 fm7/fXtR41xSXjWHnLuBL3U9RoPTnezp5MrQ2asz1kDMrYdXJw02R+0jW
 Y1EYbkvJyKg6w1fXX3DmoqRpPZ/EoreJ4KPH1ItdxWKULFZpEvMLFdNkN
 Uch//Op880QbboziSabvj7ydJZwffbw+UyZMmyXTooiKBGLtMHGEj2Sh/
 HuZwyNmKBz4vOzfTcI1Q71HkhM+WFwaN3SNqSliiQCAr5i/3ZIA08Ivhm
 a29viE1Qz8L/pc+xKU52q8ARqxfzonh3vYlTalkM6334A4CDGL0+8Z2K+
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CAd9t9P/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
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

--------------GKNxMQD0SR72fFpqpKhraBdo
Content-Type: multipart/mixed; boundary="------------pbs07tEZjaF2B7yDOMU7C7hA";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Damato, Joe" <jdamato@fastly.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "Czapnik, Lukasz" <lukasz.czapnik@intel.com>,
 "Dumazet, Eric" <edumazet@google.com>, "Zaki, Ahmed" <ahmed.zaki@intel.com>,
 Martin Karsten <mkarsten@uwaterloo.ca>, Igor Raits <igor@gooddata.com>,
 Daniel Secik <daniel.secik@gooddata.com>,
 Zdenek Pesek <zdenek.pesek@gooddata.com>
Message-ID: <04f3dc70-fd31-4b26-9647-c2f4ed012d8e@intel.com>
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
 <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
 <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
 <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
 <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
 <08fae312-2e3e-4622-94ab-7960accc8008@intel.com>
 <366dbe9f-af4d-48ec-879e-1ac54cd5f3b6@intel.com>
 <CAK8fFZ6PPw1nshtSp+QZ_2VVWVrsCKZDdsxdPF9Tjc0=_gi=Wg@mail.gmail.com>
 <bdab5970-0701-4ba7-abd2-2009a92c130a@intel.com>
 <CAK8fFZ5XPQ-mW5z9qJNJhqFukdtYGJawYTYuhHYDTCvcD37oFw@mail.gmail.com>
 <d3c4f2f0-4c22-449b-9f8d-677c4671ee17@intel.com>
 <CAK8fFZ4L=bJtkDcj3Vi2G0Y4jpki3qtEf8F0bxgG3x9ZHWrOUA@mail.gmail.com>
 <aff93c23-4f46-4d52-bdaa-9ed365e87782@intel.com>
 <252667f3-47b2-4d1f-86d6-c34ba43a6d47@intel.com>
 <ee05284e-3ab1-482f-a727-981b9fd4e9ee@intel.com>
 <a4b27e11-a3fd-4df0-8dd4-60d1a4aec5a8@intel.com>
In-Reply-To: <a4b27e11-a3fd-4df0-8dd4-60d1a4aec5a8@intel.com>

--------------pbs07tEZjaF2B7yDOMU7C7hA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 7/8/2025 5:50 PM, Jacob Keller wrote:
>=20
>=20
> On 7/7/2025 3:03 PM, Jacob Keller wrote:
>> Bad news: my hypothesis was incorrect.
>>
>> Good news: I can immediately see the problem if I set MTU to 9K and
>> start an iperf3 session and just watch the count of allocations from
>> ice_alloc_mapped_pages(). It goes up consistently, so I can quickly te=
ll
>> if a change is helping.
>>
>> I ported the stats from i40e for tracking the page allocations, and I
>> can see that we're allocating new pages despite not actually performin=
g
>> releases.
>>
>> I don't yet have a good understanding of what causes this, and the log=
ic
>> in ice is pretty hard to track...
>>
>> I'm going to try the page pool patches myself to see if this test bed
>> triggers the same problems. Unfortunately I think I need someone else
>> with more experience with the hotpath code to help figure out whats
>> going wrong here...
>=20
> I believe I have isolated this and figured out the issue: With 9K MTU,
> sometimes the hardware posts a multi-buffer frame with an extra
> descriptor that has a size of 0 bytes with no data in it. When this
> happens, our logic for tracking buffers fails to free this buffer. We
> then later overwrite the page because we failed to either free or re-us=
e
> the page, and our overwriting logic doesn't verify this.
>=20
> I will have a fix with a more detailed description posted tomorrow.

@Jaroslav, I've posted a fix which I believe should resolve your issue:

https://lore.kernel.org/intel-wired-lan/20250709-jk-ice-fix-rx-mem-leak-v=
1-1-cfdd7eeea905@intel.com/T/#u

I am reasonably confident it should resolve the issue you reported. If
possible, it would be appreciated if you could test it and report back
to confirm.

--------------pbs07tEZjaF2B7yDOMU7C7hA--

--------------GKNxMQD0SR72fFpqpKhraBdo
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaG6+yAUDAAAAAAAKCRBqll0+bw8o6B33
AQCPi0g2P4QRfK/n/5++kvNEhDToRaKG9XDs7XRMCfm2WQEA4JuXKJW9fiHy+QctslXg/09LOXe/
lgOGnhEYFOCEHQo=
=mXva
-----END PGP SIGNATURE-----

--------------GKNxMQD0SR72fFpqpKhraBdo--
