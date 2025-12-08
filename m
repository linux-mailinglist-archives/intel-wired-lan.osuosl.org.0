Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B8ECAE507
	for <lists+intel-wired-lan@lfdr.de>; Mon, 08 Dec 2025 23:21:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F302402D1;
	Mon,  8 Dec 2025 22:20:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wUyXYp7r0MlG; Mon,  8 Dec 2025 22:20:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E88B7402B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765232458;
	bh=Kd6C4zaGRceALn2ahfjglt3/VHIaKqfNn0M02WGFKyM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9XhbmXV7zY691nDBi1OVZlnT83H5Y2otU/0LUDYgYhyz8TYU7qE4OSi7331ElxLtE
	 9C49IvUHk4aDISz8+nGfj/Bjys69gctMeR/KO4onCo6WfEhcNUPqV8eqlwACmpqHfK
	 Z279UyJI4OiRtwAgffgpAg54mk+JHayVaMmSnOVmluIfmXMF9LNuTgQDPP8uJ2IgX9
	 wMOl1uSsMUHgL7hcE3MhmHWjySBDIpPzIWZJAc6sOTS2Ud7XAb3VgNkG7evZNXMYJk
	 LZhcJJhE5OBBYvTCQGshZEX3cVESRDkGzg+NhiIOPxqSvdW1+Y9f8s8RxLYSjHIb6d
	 4DTimCfIb8DXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E88B7402B7;
	Mon,  8 Dec 2025 22:20:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 47637151
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Dec 2025 22:20:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2CD2160755
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Dec 2025 22:20:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4KLLwBbip2Tv for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Dec 2025 22:20:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3B1E560721
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B1E560721
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3B1E560721
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Dec 2025 22:20:55 +0000 (UTC)
X-CSE-ConnectionGUID: fcpNRkmiShWNjw54Ps1xyg==
X-CSE-MsgGUID: txnloL8QTSiBYKHJLwesug==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="67350464"
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; 
 d="asc'?scan'208";a="67350464"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 14:20:55 -0800
X-CSE-ConnectionGUID: DEHk5wWLTzmSblDaKjaKng==
X-CSE-MsgGUID: wv1jtxnrSQ69NJT601V8ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; 
 d="asc'?scan'208";a="227083373"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 14:20:54 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 8 Dec 2025 14:20:53 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 8 Dec 2025 14:20:53 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.13) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 8 Dec 2025 14:20:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rhZFRUc1H+tnUOSJlJ/fpldyt71Xt37NSN7zEtShwZa0zonrNj8zy+j9eeGZ34SOc9whKFpBI689s4X7+iCeFCcRfyApvVWHDeun8pRzVBz/VL3TiSDdCuf5ty8LFZGoXy85vNXY29qsBRPa6SclBQdPTZ9Tj1id4j1cpW/AAV9RZikjfKM3nzdAiEUl0+kHggt7gJPqIIgVs2PE7BF0RPKT989y6SWKexu1gmlFVPbx8UJvhKMjUcYAsqLmLeG35vM0E3h/ztdu58didUxiHKMk2wF9FqMOlX2zQEucmMPlAmjXiOMFMWA776xjdrT5SZieVvtQT6kBqxMHUewZ2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kd6C4zaGRceALn2ahfjglt3/VHIaKqfNn0M02WGFKyM=;
 b=pAmLhP/2Oi8EgjuUwiltEX7e71TaV2p+wtixrh/ZouC2jQ/LLvlKvk6uDxC18dhSmk0NFiIElYecMVyNtdQnnuXipFsO/jkEHM2nx1sruXi6GyfIKq9TJrzR9HDHiL317bwt2Qu7DLHajKS0iLbfPrjtKVi+Zf4oMBW5Um9/6HofWOQLGMtKIquteeXyLW/h8f7AZ/hfHng2jzAfJJROZQ4GBdeR8BLqAAFFW1NUikLwmAYeEbm08GmfpYDsjEJQH+Yt1pnyG28YGb9NA/lObkFVt9iJvih+PweK0DO00zy6b1icAI1sI3H3BJwxq72gtmInqpUxM1gTNAMzipCoUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM4PR11MB6216.namprd11.prod.outlook.com (2603:10b6:8:a8::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9388.14; Mon, 8 Dec 2025 22:20:44 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9388.013; Mon, 8 Dec 2025
 22:20:43 +0000
Message-ID: <17575378-0c3a-481d-ae8f-e0136509defb@intel.com>
Date: Mon, 8 Dec 2025 14:20:42 -0800
User-Agent: Mozilla Thunderbird
To: <jbrandeburg@cloudflare.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, Jesse Brandeburg <jbrandeb@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, IWL <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>
References: <20251201233853.15579-1-jbrandeb@kernel.org>
 <IA3PR11MB8986697A94FB36E893C7E87FE5A7A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <d6dcd835-7564-481a-a854-25b187893e6c@cloudflare.com>
 <IA3PR11MB898654344D883B1CC06A7636E5A7A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <a2abd596-f8fb-4c2b-9181-7c2c9f0b9936@cloudflare.com>
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
In-Reply-To: <a2abd596-f8fb-4c2b-9181-7c2c9f0b9936@cloudflare.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------xq0snKiTIhF3iZXl0HX1y2dT"
X-ClientProxiedBy: MW4PR04CA0374.namprd04.prod.outlook.com
 (2603:10b6:303:81::19) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM4PR11MB6216:EE_
X-MS-Office365-Filtering-Correlation-Id: 1210a697-28c1-4fb2-e68b-08de36a80739
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|921020|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SFZZcWdjang1dVhwbWVzQSs3cHgxSkEwcVE1YmFGRzlhZE8wZFlqdzIrTjJG?=
 =?utf-8?B?eDBIYVVVMmxtYmFrZ3VOMlFLd1N0N3YraEF2bCt5REZkK1J4aE42ZTNaN2pm?=
 =?utf-8?B?VUE1ZVZoR0UwWEh3THpJZWlvNGJrd3VRNlZ3QUZHaHhqMkQ4SW9uM29sa3JV?=
 =?utf-8?B?eGQ0NTVRL1pScDRuN1Jld3BRS3ZGczNZNVByQy9CN0Q1cVkvK3VQeXFheXBO?=
 =?utf-8?B?UHZ0a2o1Q0ZKZ2xMV3JhYUk5VWJucmNNejJLYzVNNmRVS2xJMExGM0psOWlH?=
 =?utf-8?B?WHlxdEoyeVoybXFNU0haTERpOHNBM2NTazNoRmNyV2ZRUWUydUU2ZWN6empJ?=
 =?utf-8?B?WlQ4YkVZMXJ1UEpDRmVSV3ZseEVSTVFIZ0tPb0ZoSEZqRlVNeUVxdEdNTDdE?=
 =?utf-8?B?R0V6em5FRDJ1bStwbW1kcm5mbHVOMFZ5QXA1VUc3enI3M0VvQTN5VlF1bmRT?=
 =?utf-8?B?dFkrZm5Da1QzdExZdEViZWNXYU5wam9EaUcxVUNxU2RiOEM3K3BKcGk3Z0cx?=
 =?utf-8?B?cStuUThSTWR3dTM4TEdIRFR5WHJhSnd2bnJjSlNhanBGQW9oZjZmOGJkZ3hz?=
 =?utf-8?B?YThZeVY4VklWYms3ekhkVjBjTlNESVJiWnROTGx2M0ZNdDA4cFNidUtDSklP?=
 =?utf-8?B?a3VLdy91YSsyVmNacHN2YjNIM1UvblF6MGVleDNVbG9zUWpGZTY0aWtqTFNx?=
 =?utf-8?B?ejFQMFNUYTJFZmw2ZFBVTm5rNUNZS0prdHdXcVRoYlFsNXd6SEtQSmxXeW5L?=
 =?utf-8?B?VlB1NWlkYlpsUzk1alRLUHJPWEJKd0VEWlQrT1d0N0JFNTNzcDMwZ09SYnJD?=
 =?utf-8?B?VFhGQ3JyUU01VXg3ZW9wQ3AzWWh2aVhlN0thQlh3bzg3YXFWdDFOa3J3aWNk?=
 =?utf-8?B?cWNCVmZLOGx5YXJ0MkZydjFaOVBOSTJLV1pPcGl4akJuaEtnNk9nRWFPNVpx?=
 =?utf-8?B?SFo1bmZiYk1LMm9SNzVRa3RvMDlLcWNsRFJWMkl6ZkJQN0tveGFOTDJNL1Jo?=
 =?utf-8?B?a011N2xkR0VTcmdNMUZ5cURPWXYrYlNDMWV0Mno4TmI2UGloUGtJUnlHR21s?=
 =?utf-8?B?cGVxRW9KanpMeS9BMkhVM0k5RXM3SnE0bFVGS0EwZ1dtV1c0MzErdTJTRitM?=
 =?utf-8?B?TndVNHoyWm5NV0FtdVNkU2NMWlUvTy9NUlNFL1NxemZaVDhBdjV6SVRQOEdn?=
 =?utf-8?B?QVJ0b054QW1VRG9uZ2J3RGQrM1JFK2poTXNhdWtaSENpeE1OZkJJZUEvam1O?=
 =?utf-8?B?T0pud2NvNVRMWGdMcUZZUkhqUmFyZ0JESUk1MUVPekJPVGR5UFg5UU50UFpz?=
 =?utf-8?B?a1Y0TFNXazJFbEVKNGJLc1NEd2VpcHZESGJhYWNsSjc4R0dtTmMzYjRTTDMy?=
 =?utf-8?B?QjU2MC9PMGxOVHd3WG03NmJmeUlhNG1CMHRIMnJqNW5YUmtjTm10a2RRbE9s?=
 =?utf-8?B?WjlHUXBvQ0t1dFhMeDFJeFVtQjcyMldrTVU4aWM5RGNZaWh1ZlpuZEFNU2g1?=
 =?utf-8?B?RU1oZUtPZ2dxZFduUGNEZnRjYUJ4NXR4b1lWYVFuVVhiMDF6eHgweHl1YXVJ?=
 =?utf-8?B?bmhPbEEyNXNrSnhyUmFFZ0RiWitoNGNKSFZpcDhLUG45WkJSbjVHYnorOVpM?=
 =?utf-8?B?NGphT3h1WWZITzVsV1l4cG9halZTRnQzSGw1V2VSZ1FrMCsvNTV0NXhJSkU2?=
 =?utf-8?B?NFR6NVFiaTg0ZVZYR0pNNytlSFBxRkRwSXN3dVVMN2FDUFNOeEtNUWJHeDY3?=
 =?utf-8?B?REcwdDFUUVBFMzM3QURqYUpLU2xQUGl2VVpWdTBMN294d2gxT1pqRUhRdmxk?=
 =?utf-8?B?VnVxSXU1RnBLL1JsMHRHb0JTWXB5TXMwYysrUWgyTTFkQzR3Sk1tVmcyMkxC?=
 =?utf-8?B?SDZpbE1pRmRMc3RKMDZMMzVQYVBaL28zNDFYYVo0c2JuSWxsWVBOdXAzQ2ZZ?=
 =?utf-8?B?VFNuUFZ2dmhOTmU0YWdqR3lnczJTRkVVVmJDOWRNTnNoZkM2eGFJK1ZqMmxq?=
 =?utf-8?Q?GfjqqwFrET8GUpU1flz5pjjkpCFlLQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(921020)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YUNQYVZxZUFqQndQTHJLZkNhdzF3dkN0ZEtVbk5EcGVxbTJNMEV2eVlWTEdU?=
 =?utf-8?B?ZzFWcjBKSWZNWE5tUFhZNHV5MkVZZ1pKR3R4T1Z3dW5JRkxBeG55SW5kRU5G?=
 =?utf-8?B?bTRiYXdQcGxyWDVCeHVxaDVpMXpweHA5RVhDYTFmZGl1TzFyZmhrL3RvMHpE?=
 =?utf-8?B?NFhuWndpM2JhZWkyNitsR2d1bTVabFJoS1RIQUllZ3QrYjNocHhEVk1OK1pN?=
 =?utf-8?B?UzhOWXg1NVc3Q2lRVVA4VmRnYVkrMzA2VjV3TnY0dklLampGNFUxTE9EMnF5?=
 =?utf-8?B?M3BLVVNGTlBJWm5kVnpzNnZnMHVUR1g0WkJTRUxvUWVWc043Wkp3K1B2YWZ0?=
 =?utf-8?B?ZVBTVm11bWkxVGRoN3FUUUFCbGtFSjAwOXY0ZmgrSndmMWlqMlVGVzJscnpw?=
 =?utf-8?B?cVZCMm5qSUpiVXdkMUwxTlovRVJlVlQ2Y21MOURGUTdGRVRHWE5vY0tTWmdG?=
 =?utf-8?B?ZEJ1V1NnNUtpSHN1cVpBU2FnYk04eEtlOW92T2hpVEo2NEM4WE1rczBtMGdj?=
 =?utf-8?B?cXgxUW52Q0VKelZPdi82Ynk4WkdyaVRtZVBobGlNdTc1czhVNy9KdmJLODZ5?=
 =?utf-8?B?ZEJjZXcrQ3lzeXpOUGVab0xvNkRDdEF3eEhCc2xUTEl3dmxKWmhxVmY0aVo4?=
 =?utf-8?B?QzRSWjBaMjJLTERVT240bXh5c1dSU1hmdnVUaVRSRG5XdHB6bjF5WmhlTnRh?=
 =?utf-8?B?dmU0S1Zhbkg2QWV6VStVMkY5R3lHeHRHdjVLaDV0N1lybzkwMUZpMUM2L2Uz?=
 =?utf-8?B?UmtmL2w1YkNhZzVsWnVxdndqVmZTaEJsZC9uNGxZenBRTDFvUHJwWnNKSGo5?=
 =?utf-8?B?Z3J6QTdtSHFuZU82TCthTi9jb1pzaEV6akVDOEh2Yjd3VVJlUk1zNVlaQUMy?=
 =?utf-8?B?WTI4YlRyZVU4ZVd2NldxcktCQ09sZWhiYUUrNEtaTG11TFRRK210Q1grMW9Y?=
 =?utf-8?B?YU9yYk80WmRuT01LWWk2T0xFbTBGVmJIVnBVRDl5V2JZZGVuWFVZa3NnVTQ2?=
 =?utf-8?B?dWZKTmp5Q2lhNlY1SEgzK0JQa2R3RDFEZ01GK20xMGdPRVlFR0l5bGMzY3Aw?=
 =?utf-8?B?NnV0Myt6dC9YZE9NYzVGOHBMc3BaQW4wb1pwdytIVjh6NUZLa2NsNnlLNVpv?=
 =?utf-8?B?ZUx5am9JbWtTT2tPTFo1d0JsSDlyK3RHbk9IekMxQkFJUUtzSVVNQ2psSVIr?=
 =?utf-8?B?akxxSUN0eDBBUG9XZmFHQXc4Ujl3YXhLTmN0USswaEdtNTR0MVFRcFJuUktU?=
 =?utf-8?B?ZHdFMStaVEFnbHhyWTJleDhscjJ2Ry9aL2lPSnQ5UWxtendreE1ndjZ6ZlFQ?=
 =?utf-8?B?eWlDaXpiUlgxQ2RKcHp3L05adEpUcHZjT3NNRldES1VJaEU1akFTb2ZuTzdB?=
 =?utf-8?B?S2VCRmdyYXQwZkRLNy9HWklMUGhadlkrQnRaU0ZRL1VYUHFHRUI1cklKdFdt?=
 =?utf-8?B?TzhId2I4QU5oT3pPUGN1WGtGcVR0YmlHZTZrVEZxWDNqTzB1OXdYTTJPZHR4?=
 =?utf-8?B?aEFSdHZIbndINXdvWFhhWnRmdjJzWTlUOWZ5QTRUalRMWlJaYldHbGY2K3VK?=
 =?utf-8?B?eXpOSzhOVjE1Tmx3UHBYZHpmNDZUblFxMHZRRnBuUlNRUmFEOFpNTktFZkJo?=
 =?utf-8?B?RTc4UVhONmZXOXJjeTgxdHMzeS9sbHJINWY3bUFtYm9pRTFzSHFmSTBLY3lt?=
 =?utf-8?B?cHBiYnR1aTRGTmZBZkxlbG15ZjNxWWJsdlZBSFNDelFCMi91dnpKSWpqMStX?=
 =?utf-8?B?OWZYWEk1R24zUEdpK2dBeW1wUU51bmpWMmFQSzl3ZnBGMTNNVmtpUnhuV0Vt?=
 =?utf-8?B?Q2J3czd4OUZ1emdUK1pxQXFSalMrL21VYlU1cWVCNmR5TWxjaFc2YWpxVloy?=
 =?utf-8?B?QndCNFFsUEMyZHRnT0NJK1FyVnhoZk5RcHlBUlhIR25EQThwZm1ZOXJKT20v?=
 =?utf-8?B?WXdUemRJV3FmUVQwTHRUZEJCb0gvU1p1TjVOaHp4c0NYMlVqU2N5UEhtQVlv?=
 =?utf-8?B?Mi9FVXVZcldjckl2RWdyMVh5NVJEb2d2Q1phaGpZOE9KaldPQVJxVXBrV0JJ?=
 =?utf-8?B?OVY4eUt1d2o4N25FUUJTbDNXYjlNelVrNWplT3g3d3o2YmFmZGMxcmJhanpl?=
 =?utf-8?B?d2pwZGNoVzhLU3Bnd0FiWHhDaXhwQTI0MUZLVERtZDUvdHQ4ZFQrVXVReWpj?=
 =?utf-8?B?V2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1210a697-28c1-4fb2-e68b-08de36a80739
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2025 22:20:43.8183 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r4yeXV5SwflSEemoziyp3XCzR6WOOZtzc+8bpDwOb3V3A5pRTtD3K65r3N5Fs06yyQo6cKhrEXd+6hO2hJ6tgAPyTaaWfhpFVmCIkpHA7wA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6216
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765232455; x=1796768455;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version;
 bh=GDj0z8D9ukW8qxAjX3xyz9uJKO6hMvdIsLzALqFUKIM=;
 b=Uf4AM2wGcGTMUGm+1F9XGMnflxJoiWmYA/FhgOu0ll1ZC2b1yPgoUFg3
 oEgJKFpN4aPE54BiI29In0s9eo+GQcXDPDUtI+eT24iQAUG7cEKIGddUn
 ZzgEbud/p1cZEMKaKI2/D43cA22ccy6dMcbYYhTRyddVI4EZlYLMyoxr7
 zpNfNiwCsXatL8+lF5OfI+/qSylA/KBCGQYdzBqZ/XMkXWHm3+nkqHf/z
 c/Voh0RUGzUiUDXnipT4gxvrImwvMnUg/AFqwaX0wDdGCLOybwmUOvwT0
 0JjLOpT/oWGPr7b+yvV/AHojBFdtl3CtgJZsNABWHRef6A2aa4Y11TQFN
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Uf4AM2wG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: stop counting UDP csum
 mismatch as rx_errors
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

--------------xq0snKiTIhF3iZXl0HX1y2dT
Content-Type: multipart/mixed; boundary="------------Q1QwK8sI8d3ZStrmnoKybd0E";
 protected-headers="v1"
Message-ID: <17575378-0c3a-481d-ae8f-e0136509defb@intel.com>
Date: Mon, 8 Dec 2025 14:20:42 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: stop counting UDP csum
 mismatch as rx_errors
To: jbrandeburg@cloudflare.com,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 Jesse Brandeburg <jbrandeb@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 IWL <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <20251201233853.15579-1-jbrandeb@kernel.org>
 <IA3PR11MB8986697A94FB36E893C7E87FE5A7A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <d6dcd835-7564-481a-a854-25b187893e6c@cloudflare.com>
 <IA3PR11MB898654344D883B1CC06A7636E5A7A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <a2abd596-f8fb-4c2b-9181-7c2c9f0b9936@cloudflare.com>
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
In-Reply-To: <a2abd596-f8fb-4c2b-9181-7c2c9f0b9936@cloudflare.com>

--------------Q1QwK8sI8d3ZStrmnoKybd0E
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 12/5/2025 2:44 PM, jbrandeburg@cloudflare.com wrote:
> On 12/5/25 12:56 PM, "Loktionov, Aleksandr" <aleksandr.loktionov@intel.=
com> wrote:
>>
>>
>>> -----Original Message-----
>>> From: Jesse Brandeburg <jbrandeburg@cloudflare.com>
>>> Sent: Friday, December 5, 2025 8:05 PM
>>> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Jesse
>>> Brandeburg <jbrandeb@kernel.org>; netdev@vger.kernel.org
>>> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Keller, Jacob E
>>> <jacob.e.keller@intel.com>; IWL <intel-wired-lan@lists.osuosl.org>;
>>> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
>>> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
>>> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>;
>>> Paolo Abeni <pabeni@redhat.com>
>>> Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: stop counting UDP
>>> csum mismatch as rx_errors
>>>
>>> On 12/5/25 12:26 AM, Loktionov, Aleksandr wrote:
>>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
>>>>> b/drivers/net/ethernet/intel/ice/ice_main.c
>>>>> index 86f5859e88ef..d004acfa0f36 100644
>>>>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>>>>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>>>>> @@ -6995,7 +6995,6 @@ void ice_update_vsi_stats(struct ice_vsi
>>> *vsi)
>>>>>    		cur_ns->rx_errors =3D pf->stats.crc_errors +
>>>>>    				    pf->stats.illegal_bytes +
>>>>>    				    pf->stats.rx_undersize +
>>>>> -				    pf->hw_csum_rx_error +
>>>>
>>>> Good day , Jesse
>>>> It looks like you remove the single place where the '
>>> hw_csum_rx_error' var is being really used.
>>>> What about removing it's declaration and calculation then?
>>>
>>> Hi Aleks! That's not true, however, as the stat is incremented in
>>> receive path and shown in ethtool -S. I think it is incredibly
>>> valuable to have in the ethtool stats that the hardware is "not
>>> offloading" a checksum. As well, all the other drivers in the high-
>>> speed Ethernet category have a similar counter.
>>>
>>> I hope you'll agree it's still useful?
>>
>> So, the hw_csum_rx_error still will be visible in rx_csum_bad.nic as '=
private' ethtool statistics.
>=20
> Correct.
>=20
>> But I mean it will be not reflected in the standard "/sys/class/net/<i=
f>/statistics".
>> What do you think about it?
>=20
> As the commit message said, no other drivers reflect this stat in net/i=
nterface/statistics (also there is no where to put it). I think not showi=
ng this is the whole intent of the patch. If there *was* a bad checksum i=
t will be reflected in the kernel's checksum MIB stats, because the drive=
r will have passed the frame to the stack anyway.
>=20
> Why should this driver be different than all the other kernel drivers I=
 mentioned in the commit message?
>=20
> BR,
>  Jesse

Right. I agree with Jesse's proposed change. We still keep the stat for
the ethtool but we don't report it as a full error to the standard
statistics. This matches other drivers from our own products and other
vendors.

Thanks,
Jake


--------------Q1QwK8sI8d3ZStrmnoKybd0E--

--------------xq0snKiTIhF3iZXl0HX1y2dT
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaTdPOwUDAAAAAAAKCRBqll0+bw8o6Dv1
AP43HP0M8X9A6UrdOprZCJl8YHmA37F7MKbz5HOyoKuTGwD/XLLS/IYkz4Het6rcZehFG8MoDrjF
sau/EOr81I3s8wQ=
=LjZQ
-----END PGP SIGNATURE-----

--------------xq0snKiTIhF3iZXl0HX1y2dT--
