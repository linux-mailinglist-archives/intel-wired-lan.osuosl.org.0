Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B769B2C79
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Oct 2024 11:13:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7291A60E06;
	Mon, 28 Oct 2024 10:13:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZCPDKK1t73eQ; Mon, 28 Oct 2024 10:13:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1948760DFE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730110395;
	bh=20OG6lenfavrf6MaChfFs1RdVmmi/rnUn+m26XGirvE=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Hnp6UJfTeFdN/8CGjWIsc3TTzPfcXApZ03zzEEm0En1IOwvQQ5l6XD7dlrFpPBRyu
	 muBqiD0hqlbHfNuqxmWIoaEY6ACZRsi3YRU5L3YAbQTY68ACQgZZazrqHhsdZbv9Yf
	 Uixs/jXIFlA2wsY0Ko0VmqfRc7J5D+je+EzsT/mkcKvGDL3b/RwzMN822Tn7UPEECm
	 fIUdcDmSMqBmld3D15DL7aedzS5IYa4Hx30xVDbD9LorqRcjFbLrc8QqHVhgLAkgtF
	 P8op/rTmZEs3kdK+iQOgVenMCnxtj37W+ncsc2bzQIWwN2nUGdyrsAKL1zSfGU4dXy
	 T/yTjFn3XWcgQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1948760DFE;
	Mon, 28 Oct 2024 10:13:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 04046AEE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 10:13:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E63F881F10
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 10:13:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T-7Bu3JcrsUY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Oct 2024 10:13:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7073781EFF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7073781EFF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7073781EFF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 10:13:09 +0000 (UTC)
X-CSE-ConnectionGUID: TXQyxsw+TC2O6oQeIXxx+A==
X-CSE-MsgGUID: WL2OHIy3SRCzyyOpAzgAYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29891113"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29891113"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 03:13:04 -0700
X-CSE-ConnectionGUID: RAGBedtzR3WNGR6qwS0RYQ==
X-CSE-MsgGUID: uf67+c96TYiORETnEhFFfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="81673980"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Oct 2024 03:13:02 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 28 Oct 2024 03:13:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 28 Oct 2024 03:13:02 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 28 Oct 2024 03:13:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e8ag03qTLdxU+npEDNwC8BidUL+gVQRX2eeSrhnAvUNH6Jv/PtVGWuZK0ZEIiXiYNOsBvJLnTg/ycoe1pXjP71dwywytovDYv4KvzWs49Xz7g48qx8bTNJT/892vjyaj8R7hBhBbicV+Z+qXGKeHmA/TzZD2fy7igo0eQei6PE2DVZCc6EhInaHiTW8xLKq6i6u+6P6HJsOG6hFZoKDtpan470rST1YLXq9qu9kuF9MDuy7OzUycUefzhyMqkRzrQz8Kn5tgX9Znf/QaRtvVmt0BxZS4NyB/w1q+hqo7gdC9RvFyaOuY6cF+9IMy+CDRvlHNB2Cd1rDpYuHN95voPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=20OG6lenfavrf6MaChfFs1RdVmmi/rnUn+m26XGirvE=;
 b=dFpKQeMzdnwFiZvmGmMtkwOndknzKBXjAksOxHZtjhRCVaOLG9aYpLDmtXLBp14Kk0f28oC3j3D+iHIkeZTT1G/WqErKPpiSyPQjEUBj8PDzgN8A4+Oeyscm2A9XFENQehLECFXfzhfi2R9TIY9q5i0SnvHRm3tn8fLRWzxzrOQmvf7Z1rOMtssezSs2mD65bCWCggS63fe/kQRMosz2mEFI3n+mSq0Nt9LHJO0jB03kMMFnHrLjYp9KxKrHgSuFlRlRxzdTZCy9qu3EM3V7E6KZoygLLeLyxlUGXkQcE4UeU5gX98dyrSeaJ46REr2rjI9uWXRpECB2/aESKURmIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by BY1PR11MB8030.namprd11.prod.outlook.com (2603:10b6:a03:522::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.18; Mon, 28 Oct
 2024 10:12:55 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8093.024; Mon, 28 Oct 2024
 10:12:55 +0000
Message-ID: <ca89f03e-6dc1-44fa-bfd1-aac95ede0cbe@intel.com>
Date: Mon, 28 Oct 2024 11:12:49 +0100
User-Agent: Mozilla Thunderbird
To: Rosen Penev <rosenp@gmail.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, <netdev@vger.kernel.org>,
 "Andrew Lunn" <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, "Eric Dumazet" <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov
 <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard
 Brouer <hawk@kernel.org>, "John Fastabend" <john.fastabend@gmail.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>, "open list:XDP (eXpress Data
 Path):Keyword:(?:b|_)xdp(?:b|_)" <bpf@vger.kernel.org>
References: <20241025201713.286074-1-rosenp@gmail.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20241025201713.286074-1-rosenp@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0013.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::14) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|BY1PR11MB8030:EE_
X-MS-Office365-Filtering-Correlation-Id: 95fbf5f8-e1b2-4483-2acd-08dcf73916da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RnBXZ0lUVTloZ2ZaR1FsVVlzdlJiWjRxNGcrS242aGxNdUg5WVlSaHk5S09q?=
 =?utf-8?B?Nkt4Q1NDK2ZSSHlLWmVESncvNzZ3WS9OQ05rMnNzT0N3TEJ1b0o1RkpqMDJN?=
 =?utf-8?B?dEFoMHZ0cWwxWCtxbW9aQ2tmZVF6bUVTUDU5YTVBU2FscHlVVVpwb3JEV0Jo?=
 =?utf-8?B?VGhEQnN1UlZBSTYrMWxpbFZBeUQ1S0dSRkR4RDlSVDR1RGxiWlUwRUdiN1Vu?=
 =?utf-8?B?U3B5SFJXamd1NEdoc2hGTkJ3MEJCa2tva2thZ3pWa3BuOHNDQjdGTlVOcjAw?=
 =?utf-8?B?eUl3V256NVcxUXdxMk82QnBCYnRmdlJxdUVjMXhqU0ZvZnF2dXNnVDJrQnN5?=
 =?utf-8?B?ZmE4U2pjeXNtdnJQZnN5NTJZMjFrU0RjdzVrYTRubGg3dXB5UXB2eGltZERI?=
 =?utf-8?B?ekswRGpRV3g0aTlIcmJmKzI0MzVId1ltSFY3bnBKNi95UkRubjlEQW5SY3BV?=
 =?utf-8?B?Zm1YVS9DQ09pL0RiT3FFeHlKa3FHd2FUQnliNENkTkY0NVk5OWs1a1Z6YTgv?=
 =?utf-8?B?YmMxUmkxdG1DcEkwV2UrcmRSTi9oY0J5cEdxTnh1VEVzdElCMEkvOU9Qd00z?=
 =?utf-8?B?YmtYMnZxcXNORDhOZGJSRlI1Q0RjNG9yQk5iaG4vd0JxRk9xOHlTc1cyUkhW?=
 =?utf-8?B?dWEzZ2xqTEhnL2poR3B5N0tLSGI0eE5JK1E4ZjBZV1NnMFF5bmxla2RoMHF5?=
 =?utf-8?B?cng0YkdlRW5HTGF6VWRjN3Iybk5YWnVRWWZNTTVLTXdjR1dqbjdxbU9mWmtQ?=
 =?utf-8?B?ZnBsSUNrVHNuK0JwYnYzTnY1VUZMM3VxcVQ5TFJsWjFEMVlXZFdkejRTY0xi?=
 =?utf-8?B?ZFMvckU3UzBmTU5iUmx2ZlVrSE9kS0Z6WUVoaWlCeEpEeWVJeWEzUTRWOXNR?=
 =?utf-8?B?NSs1a3pFS0xoN1pjYllidUs4WjdZV2s0c3ZCbXhvQUhCTlFaZ0gxc3BaWHlV?=
 =?utf-8?B?UGVqVjUvUW0ySWUrTG1TM3JJdzJYTFJFWXpENHVzRlNoSWhKeU9Td21SMEc4?=
 =?utf-8?B?Q2tQL2FRL0t2dS9YeFAvb1ZJa1EyR3hVcS9Yd1F4TVBOa1RoT0REM3hiMXlR?=
 =?utf-8?B?M3o1SzJxMmloUnFOajM4UGJkVzF6STVTelBUWFZUTVRxSFEvUHhiZllCY2Fk?=
 =?utf-8?B?bEk2djE3dmgwc2JLZVA4SSswbUJCWS9hN0pUdDBOaStRVjBBSE1vV0hkRzkv?=
 =?utf-8?B?UmhVblNFMHdFK2t5RUZGNTNEVXk1UTNGSTdNSHZhTGI3bWNIa2RFL1pycU1V?=
 =?utf-8?B?emtLM1ZFRjdZcitSSHM1V0JTOWtqdGwrVXc2ZjNMeGhIVUNRRWpXTk45NE5Y?=
 =?utf-8?B?TjdvNHZZa0ZpMVE5cU1UZHdQRWhJWHQzeDByRGwzaGo3K0VGSWpjRlZFeE1G?=
 =?utf-8?B?Ly9Nc1NNNlM5VmtxOFhkV0pONytpUE9qYzUxRU5wZHBoVnJkY0pCN0s0cm1u?=
 =?utf-8?B?VFhRRGF3QitQZ1BOdHRoRlRDTVZvdDdadXBxa0puUkMzSGVsRDZ5b2dmTnpl?=
 =?utf-8?B?eTJmWXVYa3JzVW9WRDJKNUU4SytqOE5mRVg5T0FNTlVZRHFnS2NTSGxHczNi?=
 =?utf-8?B?YXEyNnNaQ0dGMW9kWTdZV3BYOUxMakU0SkNVVzllVGZLa0ZDQWJva2U0eG5U?=
 =?utf-8?B?a1l3Yk5sUkpoaUZwdmxPVDcrZzhudkxMRWtSK2N6VmVlWC84Z3JnQ25ZLzBV?=
 =?utf-8?B?WERVT3lQS1ZhS2pEbUlISFhnNTlvVThmdS8yOUpyUDBkWWo1NW9xd1Yvc2Zm?=
 =?utf-8?Q?4W/eJ0C/HAc2BQmyeba3tWf9rew3lKkC+V8anCL?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VGhxVzk4OTFmQ0FUbDV3VFdMQ016cG00MHgyYjNpK203QiszUjM1YW5Xa09i?=
 =?utf-8?B?WVJYZ2JwNDhraWpMbEx1Z3JRWjBvZHVNZzVXL1Z4d3FXTkVGcHNxRTdyVUVo?=
 =?utf-8?B?WElDTnJ1TGxCbHZ0c0FIeW1mSmpmK3AxMTcwT0NyTVhSaENLandkSVRQenVq?=
 =?utf-8?B?QTk3NWZuQ0xVL0dpRlBlU3VXUTZIbFRzTHQxZjlNVmY4RFI0R1ZQdjdxYXAw?=
 =?utf-8?B?VzZFR1Z1b0lFYWFXbENhZk9ZRTF6MUhxdldzYWIzbGZqLzNHNC9RRmJQU3dL?=
 =?utf-8?B?Wk45bk10ckl5UVFDRzRmOVMxcktiTXZxZWdWMy9FWTFEZ0VVSXJjRzF4VmtO?=
 =?utf-8?B?clBRTEMxUmpvQno0eElMUFVEbmJPdTNRMHdjYzRYakkvY0VsN25neVRVcTZj?=
 =?utf-8?B?bTlITW9OQlVCMFhlTk11U1RSQVUya3poZTdzMGM1azI4WWpmN3RTd1R6NURy?=
 =?utf-8?B?bnovakNVRGc5bVZuZE83c1AxT29lTkZGUzU0TzFxUUY4VC9ZaVVnTG5HeUd4?=
 =?utf-8?B?MzF2c3VpZVZvMlZIM0p0Y200b1kxd3N5UnppV0VSeUdNK0J0TkxaYlJ0N0Jo?=
 =?utf-8?B?SjVDSzFkbjRYZ3lUTlZhNjBzaExYVFplbWZxVjNHQ3BjRmxRazJ6NklCeWRy?=
 =?utf-8?B?eS9OZ1ZzYyt5UFNaWW4rT3hQdjZxMXB0ODc2SXI3K0IybVdaVjNpNmwxYS9w?=
 =?utf-8?B?UzBUU3M1cy9NTE5EdlZqdkRaY2lqdWIvRUlOS3hGbnpJYTBwV3hPcjFoNU1z?=
 =?utf-8?B?VjVCQTBMQVNaMUNYNkorckxzL2Vua1JIMGZDbGw3bENJb0VmNjY0aHVKVlI1?=
 =?utf-8?B?ZUI2bkdid2Y1SE5kNGdiaGhqb09XSkdoWlFpUCtaSVA3dXJzelgyMkg1cU1a?=
 =?utf-8?B?VTNmOHgyVTM2T1lscjZ5ZVpUREFZVXNYZTlUZktHVGVyelprNXJSQk80Tk4z?=
 =?utf-8?B?dkhRU2dKUWgrNU1TWlFCK25FR1V2OVBmUEdzMlR0VE1PQTlINDAvdjNBcE5p?=
 =?utf-8?B?ejRZS0pLNWkyWTA1RFNWdTU1SkdGb2MwNmtYQkNjSGhHSkZ2MUp2bmptZmVB?=
 =?utf-8?B?UFluN2sxaWs3T1cyYUlqMW9NN3B2Vmw5TFluS1JZaHRwVkRrR1NwdmozNHd6?=
 =?utf-8?B?bG9RQlFxWXJTWDJZYko3aUdudjJuamlCWnZ6bU5YTGVac29kdW1ETXJwQSth?=
 =?utf-8?B?MVlhclk0Y24vMG5kYXYvODRvc2taM2RyUGFrSmZpcngxcVNwM3BkSUhMbVBM?=
 =?utf-8?B?d29yZzdRR1FuQ0RnUW82eDU3dXZEVG03clVWWE94V0xzMFFXbnFtQ29GNkxR?=
 =?utf-8?B?K2t5VnhHQ2VtSVcwd050djVlVk45ZnBNVExXTXpPK08zOUZkRHdlSlI4UGdr?=
 =?utf-8?B?YlY2Umg2bVY1eCtqSm1QdmJWamlQRkNENzlyaFc3amFpRTkrR09OSzNEVHFu?=
 =?utf-8?B?TTJPRWhNMVpwTjhhV2h6b3RESVovcTM4N2w4SWhhck12Z0p4VndDTFZSUEpG?=
 =?utf-8?B?NnY3bStxVjdqZktYazJLWnNpcVE2YUxhVnY0UlNKYUJ6KzRHQzIvcldMd3Va?=
 =?utf-8?B?bW1HYWhRVnpuT1JuajdHQWlSTUlxZE42K3lySjRaWkFQMWw1c3MxTnJZdFhu?=
 =?utf-8?B?aVdnVk1HVWZuN09jbTZvZDl5UUhvck1YdHVsaUxTQ0FFbGZyaG5lWXJqTlVn?=
 =?utf-8?B?Ym1hY3plbHFwd29FUlYvQkNOWEYxVjUxZDlOZlBES2lMUFJtdlNobXE1Z1cx?=
 =?utf-8?B?SlVCOFh0ZTNlVndZQjRCOC9xOWRHb0Nkd1BYaTVXbXcxMGFzY3BRWW5UMms3?=
 =?utf-8?B?c1VIQzlSQzFSZWRpZzd6NzZmZjlPTDBQT1ZCSWczYUpMTzV2Q0dOSktyVEVD?=
 =?utf-8?B?eFYxU3hpVEE4dVpjei9McjB4WE5xaXRHZGgvL21aMUg2ZDlvN29QNWRGWHE0?=
 =?utf-8?B?cWV1NG93bjUyTGVjazBud2lXVkRYN2M3ekI0TWRRSkJ2bkwxeUhJR2k1NU1h?=
 =?utf-8?B?MExSZFgzb01ybjFwUmM3c0M4b0hUWUVGZlNZUU0xc3ZnUWIvM1l3WEpzbzhL?=
 =?utf-8?B?U3EvSWg2bXEvMkRDalROcVJRdUR6UW51blpzTlZLMkxlZVdsdFhOeDZ3enFO?=
 =?utf-8?B?ZlVaTWl5SE9SRkZNQ1BiWlh0YWtaeW9UMWx2TTFzRC83NzUvM2h6MEpvM0o3?=
 =?utf-8?B?dEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 95fbf5f8-e1b2-4483-2acd-08dcf73916da
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2024 10:12:54.9280 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zEnQQdXPjDZTYw4wa+oGaq+9n8HolnCgyVEg+I8geQ5Fmk9Xykw4w7yr6BYTsrUNVfOYAf1GVfd2aETu9N2XAma8HXry/PE5iqPPPsVVEHA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8030
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730110391; x=1761646391;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B8ExPmSr6q3IMugXvvmcWyTxZAasA32H249WSo7PWMs=;
 b=gUduXjm9c7X3tR0eO+NjgqKO61mhv+R3w7+tnhWkc7SrmQJWZYDFswUa
 VE5NYdZvxypvyiUlELmagdseAerLpsre92M19CVNwwlBJ4qE+oMOxRfu4
 impHUPosqKiDQWNsZ34Z93fvPNy5+cXL8TL6SR3yGH3ayKzmz4/mo0fgo
 9GUwdy7FDJI9LFrUb5yrlsSvuDtmhcpFJmZOamBWuMZpzfVcQySUcoJgM
 5cK6qqfRTq3mnkmGKNqfTveiybvS6L/bR2wA3Ca33NFs9l2fmP1xUoEFs
 eH7Zfdlhkq60Ae/FaWYK7Yd84tGBWXfReSliOI6rP08zfs5ThniE0c44h
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gUduXjm9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCHv2 net-next iwl-next] net: intel: use
 ethtool string helpers
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

On 10/25/24 22:17, Rosen Penev wrote:
> The latter is the preferred way to copy ethtool strings.
> 
> Avoids manually incrementing the pointer. Cleans up the code quite well.
> 
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>   v2: add iwl-next tag. use inline int in for loops.
>   .../net/ethernet/intel/e1000/e1000_ethtool.c  | 10 ++---
>   drivers/net/ethernet/intel/e1000e/ethtool.c   | 14 +++----
>   .../net/ethernet/intel/fm10k/fm10k_ethtool.c  | 10 ++---
>   .../net/ethernet/intel/i40e/i40e_ethtool.c    |  6 +--
>   drivers/net/ethernet/intel/ice/ice_ethtool.c  | 37 +++++++++++--------
>   drivers/net/ethernet/intel/igb/igb_ethtool.c  | 35 ++++++++++--------
>   drivers/net/ethernet/intel/igbvf/ethtool.c    | 10 ++---
>   drivers/net/ethernet/intel/igc/igc_ethtool.c  | 36 +++++++++---------
>   .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 32 ++++++++--------

for ice, igb, igc, and ixgbe the current code already uses ethtool
string helpers, and in many places you are just changing variable name,
"p" to "data", I would rather avoid that.

sorry for not spotting that earlier, and apologies that we have so many
drivers to fix up in the first place

> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index 2924ac61300d..62a152be8180 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -83,7 +83,7 @@ static const char ice_gstrings_test[][ETH_GSTRING_LEN] = {
>   	"Link test   (on/offline)",
>   };
>   
> -#define ICE_TEST_LEN (sizeof(ice_gstrings_test) / ETH_GSTRING_LEN)
> +#define ICE_TEST_LEN ARRAY_SIZE(ice_gstrings_test)
>   
>   /* These PF_STATs might look like duplicates of some NETDEV_STATs,
>    * but they aren't. This device is capable of supporting multiple
> @@ -1481,48 +1481,53 @@ static void
>   __ice_get_strings(struct net_device *netdev, u32 stringset, u8 *data,
>   		  struct ice_vsi *vsi)
>   {
> +	const char *str;
>   	unsigned int i;
> -	u8 *p = data;
>   
>   	switch (stringset) {
>   	case ETH_SS_STATS:
> -		for (i = 0; i < ICE_VSI_STATS_LEN; i++)
> -			ethtool_puts(&p, ice_gstrings_vsi_stats[i].stat_string);
> +		for (i = 0; i < ICE_VSI_STATS_LEN; i++) {
> +			str = ice_gstrings_vsi_stats[i].stat_string;
> +			ethtool_puts(&data, str);
> +		}
>   
>   		if (ice_is_port_repr_netdev(netdev))
>   			return;
>   
>   		ice_for_each_alloc_txq(vsi, i) {
> -			ethtool_sprintf(&p, "tx_queue_%u_packets", i);
> -			ethtool_sprintf(&p, "tx_queue_%u_bytes", i);
> +			ethtool_sprintf(&data, "tx_queue_%u_packets", i);
> +			ethtool_sprintf(&data, "tx_queue_%u_bytes", i);
>   		}
>   
>   		ice_for_each_alloc_rxq(vsi, i) {
> -			ethtool_sprintf(&p, "rx_queue_%u_packets", i);
> -			ethtool_sprintf(&p, "rx_queue_%u_bytes", i);
> +			ethtool_sprintf(&data, "rx_queue_%u_packets", i);
> +			ethtool_sprintf(&data, "rx_queue_%u_bytes", i);
>   		}
>   
>   		if (vsi->type != ICE_VSI_PF)
>   			return;
>   
> -		for (i = 0; i < ICE_PF_STATS_LEN; i++)
> -			ethtool_puts(&p, ice_gstrings_pf_stats[i].stat_string);
> +		for (i = 0; i < ICE_PF_STATS_LEN; i++) {
> +			str = ice_gstrings_pf_stats[i].stat_string;
> +			ethtool_puts(&data, str);
> +		}
>   
>   		for (i = 0; i < ICE_MAX_USER_PRIORITY; i++) {
> -			ethtool_sprintf(&p, "tx_priority_%u_xon.nic", i);
> -			ethtool_sprintf(&p, "tx_priority_%u_xoff.nic", i);
> +			ethtool_sprintf(&data, "tx_priority_%u_xon.nic", i);
> +			ethtool_sprintf(&data, "tx_priority_%u_xoff.nic", i);
>   		}
>   		for (i = 0; i < ICE_MAX_USER_PRIORITY; i++) {
> -			ethtool_sprintf(&p, "rx_priority_%u_xon.nic", i);
> -			ethtool_sprintf(&p, "rx_priority_%u_xoff.nic", i);
> +			ethtool_sprintf(&data, "rx_priority_%u_xon.nic", i);
> +			ethtool_sprintf(&data, "rx_priority_%u_xoff.nic", i);
>   		}
>   		break;
>   	case ETH_SS_TEST:
> -		memcpy(data, ice_gstrings_test, ICE_TEST_LEN * ETH_GSTRING_LEN);
> +		for (i = 0; i < ICE_TEST_LEN; i++)
> +			ethtool_puts(&data, ice_gstrings_test[i]);
>   		break;
>   	case ETH_SS_PRIV_FLAGS:
>   		for (i = 0; i < ICE_PRIV_FLAG_ARRAY_SIZE; i++)
> -			ethtool_puts(&p, ice_gstrings_priv_flags[i].name);
> +			ethtool_puts(&data, ice_gstrings_priv_flags[i].name);
>   		break;
>   	default:
>   		break;

really no need to git-blame touch most of the code here

> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> index ca6ccbc13954..c4a8712389af 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> @@ -123,7 +123,7 @@ static const char igb_gstrings_test[][ETH_GSTRING_LEN] = {
>   	[TEST_LOOP] = "Loopback test  (offline)",
>   	[TEST_LINK] = "Link test   (on/offline)"
>   };
> -#define IGB_TEST_LEN (sizeof(igb_gstrings_test) / ETH_GSTRING_LEN)
> +#define IGB_TEST_LEN ARRAY_SIZE(igb_gstrings_test)
>   
>   static const char igb_priv_flags_strings[][ETH_GSTRING_LEN] = {
>   #define IGB_PRIV_FLAGS_LEGACY_RX	BIT(0)
> @@ -2347,35 +2347,38 @@ static void igb_get_ethtool_stats(struct net_device *netdev,
>   static void igb_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
>   {
>   	struct igb_adapter *adapter = netdev_priv(netdev);
> -	u8 *p = data;
> +	const char *str;
>   	int i;
>   
>   	switch (stringset) {
>   	case ETH_SS_TEST:
> -		memcpy(data, igb_gstrings_test, sizeof(igb_gstrings_test));
> +		for (i = 0; i < IGB_TEST_LEN; i++)
> +			ethtool_puts(&data, igb_gstrings_test[i]);
>   		break;
>   	case ETH_SS_STATS:
>   		for (i = 0; i < IGB_GLOBAL_STATS_LEN; i++)
> -			ethtool_puts(&p, igb_gstrings_stats[i].stat_string);
> -		for (i = 0; i < IGB_NETDEV_STATS_LEN; i++)
> -			ethtool_puts(&p, igb_gstrings_net_stats[i].stat_string);
> +			ethtool_puts(&data, igb_gstrings_stats[i].stat_string);
> +		for (i = 0; i < IGB_NETDEV_STATS_LEN; i++) {
> +			str = igb_gstrings_net_stats[i].stat_string;
> +			ethtool_puts(&data, str);
> +		}
>   		for (i = 0; i < adapter->num_tx_queues; i++) {
> -			ethtool_sprintf(&p, "tx_queue_%u_packets", i);
> -			ethtool_sprintf(&p, "tx_queue_%u_bytes", i);
> -			ethtool_sprintf(&p, "tx_queue_%u_restart", i);
> +			ethtool_sprintf(&data, "tx_queue_%u_packets", i);
> +			ethtool_sprintf(&data, "tx_queue_%u_bytes", i);
> +			ethtool_sprintf(&data, "tx_queue_%u_restart", i);
>   		}
>   		for (i = 0; i < adapter->num_rx_queues; i++) {
> -			ethtool_sprintf(&p, "rx_queue_%u_packets", i);
> -			ethtool_sprintf(&p, "rx_queue_%u_bytes", i);
> -			ethtool_sprintf(&p, "rx_queue_%u_drops", i);
> -			ethtool_sprintf(&p, "rx_queue_%u_csum_err", i);
> -			ethtool_sprintf(&p, "rx_queue_%u_alloc_failed", i);
> +			ethtool_sprintf(&data, "rx_queue_%u_packets", i);
> +			ethtool_sprintf(&data, "rx_queue_%u_bytes", i);
> +			ethtool_sprintf(&data, "rx_queue_%u_drops", i);
> +			ethtool_sprintf(&data, "rx_queue_%u_csum_err", i);
> +			ethtool_sprintf(&data, "rx_queue_%u_alloc_failed", i);
>   		}
>   		/* BUG_ON(p - data != IGB_STATS_LEN * ETH_GSTRING_LEN); */
>   		break;
>   	case ETH_SS_PRIV_FLAGS:
> -		memcpy(data, igb_priv_flags_strings,
> -		       IGB_PRIV_FLAGS_STR_LEN * ETH_GSTRING_LEN);
> +		for (i = 0; i < IGB_PRIV_FLAGS_STR_LEN; i++)
> +			ethtool_puts(&data, igb_priv_flags_strings[i]);
>   		break;
>   	}
>   }

ditto

> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index 5b0c6f433767..7b118fb7097b 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -104,7 +104,7 @@ static const char igc_gstrings_test[][ETH_GSTRING_LEN] = {
>   	[TEST_LINK] = "Link test   (on/offline)"
>   };
>   
> -#define IGC_TEST_LEN (sizeof(igc_gstrings_test) / ETH_GSTRING_LEN)
> +#define IGC_TEST_LEN ARRAY_SIZE(igc_gstrings_test)
>   
>   #define IGC_GLOBAL_STATS_LEN	\
>   	(sizeof(igc_gstrings_stats) / sizeof(struct igc_stats))
> @@ -763,36 +763,38 @@ static void igc_ethtool_get_strings(struct net_device *netdev, u32 stringset,
>   				    u8 *data)
>   {
>   	struct igc_adapter *adapter = netdev_priv(netdev);
> -	u8 *p = data;
> +	const char *str;
>   	int i;
>   
>   	switch (stringset) {
>   	case ETH_SS_TEST:
> -		memcpy(data, *igc_gstrings_test,
> -		       IGC_TEST_LEN * ETH_GSTRING_LEN);
> +		for (i = 0; i < IGC_TEST_LEN; i++)
> +			ethtool_puts(&data, igc_gstrings_test[i]);
>   		break;
>   	case ETH_SS_STATS:
>   		for (i = 0; i < IGC_GLOBAL_STATS_LEN; i++)
> -			ethtool_puts(&p, igc_gstrings_stats[i].stat_string);
> -		for (i = 0; i < IGC_NETDEV_STATS_LEN; i++)
> -			ethtool_puts(&p, igc_gstrings_net_stats[i].stat_string);
> +			ethtool_puts(&data, igc_gstrings_stats[i].stat_string);
> +		for (i = 0; i < IGC_NETDEV_STATS_LEN; i++) {
> +			str = igc_gstrings_net_stats[i].stat_string;
> +			ethtool_puts(&data, str);
> +		}
>   		for (i = 0; i < adapter->num_tx_queues; i++) {
> -			ethtool_sprintf(&p, "tx_queue_%u_packets", i);
> -			ethtool_sprintf(&p, "tx_queue_%u_bytes", i);
> -			ethtool_sprintf(&p, "tx_queue_%u_restart", i);
> +			ethtool_sprintf(&data, "tx_queue_%u_packets", i);
> +			ethtool_sprintf(&data, "tx_queue_%u_bytes", i);
> +			ethtool_sprintf(&data, "tx_queue_%u_restart", i);
>   		}
>   		for (i = 0; i < adapter->num_rx_queues; i++) {
> -			ethtool_sprintf(&p, "rx_queue_%u_packets", i);
> -			ethtool_sprintf(&p, "rx_queue_%u_bytes", i);
> -			ethtool_sprintf(&p, "rx_queue_%u_drops", i);
> -			ethtool_sprintf(&p, "rx_queue_%u_csum_err", i);
> -			ethtool_sprintf(&p, "rx_queue_%u_alloc_failed", i);
> +			ethtool_sprintf(&data, "rx_queue_%u_packets", i);
> +			ethtool_sprintf(&data, "rx_queue_%u_bytes", i);
> +			ethtool_sprintf(&data, "rx_queue_%u_drops", i);
> +			ethtool_sprintf(&data, "rx_queue_%u_csum_err", i);
> +			ethtool_sprintf(&data, "rx_queue_%u_alloc_failed", i);
>   		}
>   		/* BUG_ON(p - data != IGC_STATS_LEN * ETH_GSTRING_LEN); */
>   		break;
>   	case ETH_SS_PRIV_FLAGS:
> -		memcpy(data, igc_priv_flags_strings,
> -		       IGC_PRIV_FLAGS_STR_LEN * ETH_GSTRING_LEN);
> +		for (i = 0; i < IGC_PRIV_FLAGS_STR_LEN; i++)
> +			ethtool_puts(&data, igc_priv_flags_strings[i]);
>   		break;
>   	}
>   }

ditto

> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> index 9482e0cca8b7..b3b2e38c2ae6 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> @@ -129,7 +129,7 @@ static const char ixgbe_gstrings_test[][ETH_GSTRING_LEN] = {
>   	"Interrupt test (offline)", "Loopback test  (offline)",
>   	"Link test   (on/offline)"
>   };
> -#define IXGBE_TEST_LEN sizeof(ixgbe_gstrings_test) / ETH_GSTRING_LEN
> +#define IXGBE_TEST_LEN ARRAY_SIZE(ixgbe_gstrings_test)
>   
>   static const char ixgbe_priv_flags_strings[][ETH_GSTRING_LEN] = {
>   #define IXGBE_PRIV_FLAGS_LEGACY_RX	BIT(0)
> @@ -1409,38 +1409,40 @@ static void ixgbe_get_ethtool_stats(struct net_device *netdev,
>   static void ixgbe_get_strings(struct net_device *netdev, u32 stringset,
>   			      u8 *data)
>   {
> +	const char *str;
>   	unsigned int i;
> -	u8 *p = data;
>   
>   	switch (stringset) {
>   	case ETH_SS_TEST:
>   		for (i = 0; i < IXGBE_TEST_LEN; i++)
> -			ethtool_puts(&p, ixgbe_gstrings_test[i]);
> +			ethtool_puts(&data, ixgbe_gstrings_test[i]);
>   		break;
>   	case ETH_SS_STATS:
> -		for (i = 0; i < IXGBE_GLOBAL_STATS_LEN; i++)
> -			ethtool_puts(&p, ixgbe_gstrings_stats[i].stat_string);
> +		for (i = 0; i < IXGBE_GLOBAL_STATS_LEN; i++) {
> +			str = ixgbe_gstrings_stats[i].stat_string;
> +			ethtool_puts(&data, str);
> +		}
>   		for (i = 0; i < netdev->num_tx_queues; i++) {
> -			ethtool_sprintf(&p, "tx_queue_%u_packets", i);
> -			ethtool_sprintf(&p, "tx_queue_%u_bytes", i);
> +			ethtool_sprintf(&data, "tx_queue_%u_packets", i);
> +			ethtool_sprintf(&data, "tx_queue_%u_bytes", i);
>   		}
>   		for (i = 0; i < IXGBE_NUM_RX_QUEUES; i++) {
> -			ethtool_sprintf(&p, "rx_queue_%u_packets", i);
> -			ethtool_sprintf(&p, "rx_queue_%u_bytes", i);
> +			ethtool_sprintf(&data, "rx_queue_%u_packets", i);
> +			ethtool_sprintf(&data, "rx_queue_%u_bytes", i);
>   		}
>   		for (i = 0; i < IXGBE_MAX_PACKET_BUFFERS; i++) {
> -			ethtool_sprintf(&p, "tx_pb_%u_pxon", i);
> -			ethtool_sprintf(&p, "tx_pb_%u_pxoff", i);
> +			ethtool_sprintf(&data, "tx_pb_%u_pxon", i);
> +			ethtool_sprintf(&data, "tx_pb_%u_pxoff", i);
>   		}
>   		for (i = 0; i < IXGBE_MAX_PACKET_BUFFERS; i++) {
> -			ethtool_sprintf(&p, "rx_pb_%u_pxon", i);
> -			ethtool_sprintf(&p, "rx_pb_%u_pxoff", i);
> +			ethtool_sprintf(&data, "rx_pb_%u_pxon", i);
> +			ethtool_sprintf(&data, "rx_pb_%u_pxoff", i);
>   		}
>   		/* BUG_ON(p - data != IXGBE_STATS_LEN * ETH_GSTRING_LEN); */
>   		break;
>   	case ETH_SS_PRIV_FLAGS:
> -		memcpy(data, ixgbe_priv_flags_strings,
> -		       IXGBE_PRIV_FLAGS_STR_LEN * ETH_GSTRING_LEN);
> +		for (i = 0; i < IXGBE_PRIV_FLAGS_STR_LEN; i++)
> +			ethtool_puts(&data, ixgbe_priv_flags_strings[i]);
>   	}
>   }
>   

ditto here
