Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cCnZBdg/sWmtswIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 11:11:36 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 42604261D66
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 11:11:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5031A61680;
	Wed, 11 Mar 2026 10:11:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jdnMk7kBga4N; Wed, 11 Mar 2026 10:11:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 810C661681
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773223891;
	bh=1N/E6rO6Z+wUaRFKzKofctjXlinnkAqFPkb5eOZAweE=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7jSXEBbB6Mp3rCfTlVcU08+WoHNlLyRq5rfUhA5wGevgvjQa4Y/gE14alMppYD6Yq
	 mxGe+GrYLlWiIei29WjVAYcFqd/suS7RzZTJYdmKPyPM0loxmbCaIoR+F0H9CIjU3z
	 QLjj8/+2epic1WLj5sUqmpLih/E0KZink+/CuKBKtx59cm3PEXv4Al1sIpjCK0+lfS
	 FPPnB777Sl2t9+OIpdoiSKOeEUGPN4NJGVwNXhk3rcEDzf/fUlxpDSWI0NoPCoHrwz
	 /hyVgFnUnlgWcm5g6onu6U/qnyeAE2lLXBGgdZJNgDc39sAOJoeG5NCilVIDFllNg1
	 FmqOEOuIpTD/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 810C661681;
	Wed, 11 Mar 2026 10:11:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id BCAFE33A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 10:11:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AE3E96167E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 10:11:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pNCzZZHzrAdb for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Mar 2026 10:11:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 630496167D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 630496167D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 630496167D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 10:11:27 +0000 (UTC)
X-CSE-ConnectionGUID: p7Vg2zgmRl+USYp+oUYsoQ==
X-CSE-MsgGUID: vEDgSWu1Qt21cF0CH0uYhQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="74163607"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="74163607"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 03:11:27 -0700
X-CSE-ConnectionGUID: 23qZEi8pQt6cNYs8eBFOqw==
X-CSE-MsgGUID: cwvdVA9HQMqotnpQScOOzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="250916399"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 03:11:26 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 03:11:24 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 03:11:24 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.71) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 03:11:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d7Y+Eo8JdXzTQJjeGews0muxS4tfBAgdkEdBSgyD1KBXDTCcQJkAApsOjdf6EDPBQQ2OLYtaO0Bofpvbhkehl9lOFKUyM5KGiWxqiPnJ1HYj6GcjmvQ5QDhGYc2Q7w5L3kYIxGx3dewlLT9o9UQxHlUG2tsMCtQdE47vSbvyiIXYVMA/BMkG+7JcSrQstPOANXQu9edDt12AAm5535AhmHeAZkQYyDho+8gVOac0iMKquAy8oWeN63A8fmPkJtc8Um+8jVK/qCgl6A0c2uSGCWWYujoV6uxsFBLQscDkh9c+rC+sAH9+uitxN2qFoc94S87Cz8QtvBSOYpwi2RwSnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1N/E6rO6Z+wUaRFKzKofctjXlinnkAqFPkb5eOZAweE=;
 b=OH1j3OD4sIOSSPu/++zEHNtEWsBkofU6Mymr75F6Mf7wdjAzei97glsT2Dv+FM97VbLDxZcm47SMXC+ENLXASPo3dB6UOYM5p6rWzoQAmMVDLpQvPyyatgqXVOFh4+0gp8A1rNYhm/RG5jok030rriccEeJ8upF7EQp+3yOk27uy+KTScArMBq5XMveMJRQaaIOxl+pyaNQueFczcrGrSJyDfPyxowI8qVF2huRZQRZ/b/EABv62CanIQAVAclSeX9Ic8jgqE7oIfKJW9g2nC/2z6ALRB6LRc6g+42O0tlDaW4DQKWQZAjPtoYcy/G0ssyrWN/Ne3grEuPKYD8ajlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8013.namprd11.prod.outlook.com (2603:10b6:510:239::8)
 by IA4PR11MB8889.namprd11.prod.outlook.com (2603:10b6:208:565::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.5; Wed, 11 Mar
 2026 10:11:22 +0000
Received: from PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572]) by PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572%6]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 10:11:21 +0000
Message-ID: <c3767280-4741-4c48-92ac-6dba6260ed41@intel.com>
Date: Wed, 11 Mar 2026 12:11:12 +0200
User-Agent: Mozilla Thunderbird
To: Zdenek Bouska <zdenek.bouska@siemens.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, "Daniel
 Borkmann" <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Stanislav Fomichev
 <sdf@fomichev.me>, Richard Cochran <richardcochran@gmail.com>, "Song Yoong
 Siang" <yoong.siang.song@intel.com>, Lai Peter Jun Ann
 <jun.ann.lai@intel.com>
CC: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bpf@vger.kernel.org>, Florian Bezdeka
 <florian.bezdeka@siemens.com>
References: <20260225-igc-fix-xdp-tx-tstamp-pagefault-v2-1-bf797ec20f3b@siemens.com>
Content-Language: en-US
From: "Dahan, AvigailX" <avigailx.dahan@intel.com>
In-Reply-To: <20260225-igc-fix-xdp-tx-tstamp-pagefault-v2-1-bf797ec20f3b@siemens.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0014.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::13) To PH8PR11MB8013.namprd11.prod.outlook.com
 (2603:10b6:510:239::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8013:EE_|IA4PR11MB8889:EE_
X-MS-Office365-Filtering-Correlation-Id: b6bbce03-7e93-439a-e950-08de7f568b5e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7416014|7053199007|56012099003|22082099003|18002099003|921020;
X-Microsoft-Antispam-Message-Info: CIGfn2ENZ78ao9Z9JpLSjxA8GzUN7drSZoXkF6FOLuS5/Vt7CFaflNQJKMrx5CK/5YJARqadTMVexuS3+a+9qxa1Xabl5ohQEWl1R38TNWqLlXjikbcqeUSvexs+iwFgOrKIbWUiSwYLTXMExSB8JQVJM87XftRWqwSPlu/w+6Qk4+YbExm5QpTQ/KJojdpM8u5INV8SwOT0i91VWTGf2b7a2KARLM4IG3AKB0wcd5t9dwkrPLzyw7Ci2ScM61B64dsEL7WGdN7VGIIJAbbD8fKT0FHzwQGKSAyF+i0E3gETHzf3PY6t2Sxs7mYjGD1nYI4LWc4atBNP5dr+tBtUyIHkqOTRRtD1be1SSOfiK1k8bjikGK4VL/M148CjL/5fwubNMj9iSmVmwPKZ94sSSv12Ghtu3eiFLlgNXUxAeRwZz4bBpphCGYbBI7dzRaQqsoc0mRjbtJhRLXQQihvyjZ6oHM6yLAABSXVKzhum4MJba7KtAGtpXNJB1LYe5v43TSJLmZimDXgouiVniIu1D5E40J2eQq5CS1oeEHyavklzn1vjGmE2/ri+TWE4aadNK8CaM2mupMJkeSJVJme/w84STKkx8vGyJEHlpjxnzUJEkSYGWrbsbFmsLJib1B4qKwPOj7b5I9xVpJ8HUuNJ/vhLO42+KosqJ/UmE5lQcYH0uwpMVVNycOOltWTeFVCgCfCWMfTtJ1Z74EjQpfWwHYTTN6U8P80Owl8K6ue7MMhsa3oUvRXpA8svMgUXYGHpGzuHHlPi5TSlIj97D8L2/MUZ3QACgHIZbVW0u/4omGo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7416014)(7053199007)(56012099003)(22082099003)(18002099003)(921020);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S2RIZDR4amE0NU9mWnZPUGRMZ3g0SW9kYU5ObjhsQXRiaHdIRzZYb3psd3Rj?=
 =?utf-8?B?bTJZamcvTS9iL2h0S0pod1lDZXN3Sm9jR3ZmeFh4T2kwVWhEMDZYNjVBNTZV?=
 =?utf-8?B?ZWtZT2RpcStSTmd6NHZhU3BWNkFwcEYyK3VhbDhwVHBjOWgxVXVraTc0N05o?=
 =?utf-8?B?TjV4MXdEOFNrNW1SdWRhc0x6UE9SZ3h4Q2cwekQ1SjB0STJSa1RVQnB3Wkd3?=
 =?utf-8?B?QTl2VkFiTDBwdkJFaHhTRHRJakVCNUoxN1ZJSmtWMDJRMnRSbGFBSFFqcS9i?=
 =?utf-8?B?SnFaVTBoTU9NcnVpeUpKWWdvS05SZ3BJQ2JINmFsV3U0bTVEOVduV21KekZM?=
 =?utf-8?B?T0E4Z01FaUVMNTFwUU9sV2grQjhCWHVrWHBzMVhKOXB2RzdLWE9pNmk0UlpH?=
 =?utf-8?B?Z0FIVnh3bzhKcnN5OUNuTzlYWWVGKzdmVkJMZ1NzSHFCQU45R0JvZlczN0ZD?=
 =?utf-8?B?eU9GUm4xZ0lZdzRhNXlLS2dvQU40VTNNS0pGeHFLM3dpQzJCM1loUDVpakI1?=
 =?utf-8?B?dGlZN3kvZ1ZuQU1yenNreEthQ1c1SWcxV3pvV1FXanFSOXhBUmtEand3KzJq?=
 =?utf-8?B?K2dldkFESEM2czlyTzhBVk5HUE9tMCtCV09FWnRCQlgyQjlmSWZWOEJjUEVx?=
 =?utf-8?B?b1g1Yk1iTFF6bW82NVo2eGh3UjZzckRTSjdmOE9RcjI3K2FRV1lrOFhtNG5N?=
 =?utf-8?B?VmhOSjZGWXhiMCs3dDk0TFRiWjJjRElQZmVsZ0NxUUxXTmExUVpSNW9zUVNy?=
 =?utf-8?B?Q2ZaN09PU2VDeUdsR3RMS2tJSUhFZzZoYTVSc3ZZeG90ZncvRUpsR0lqK3I3?=
 =?utf-8?B?Zm9BeG0xY3c4WWVnVmZmbFZFRmVRLzk1VTJ5YlZ2SDJQZWVCbTBrWkF3VzlM?=
 =?utf-8?B?R1ZpeUJQaTNrbFFPQUpHWnc4TGpJN3FTOHdMUDVndmpCRWJZWkNlN1dPZTRC?=
 =?utf-8?B?Mmc5eGxBaUZkRXIrREJJSnRSRzd6UjF3bmxhMUlhR3krc3U1SG9nS1YyQUl3?=
 =?utf-8?B?djFsMzNENEpFMmJOTm5SWFR3R3FWOWFmdG1pMzJSa28rbURCUlpvaXhuYXNU?=
 =?utf-8?B?MEF0SGhSUUYvbkhCTnFMbXoxb2tqU0xtM2gwaU0rMTIyNU15c3RsMnZyUk8r?=
 =?utf-8?B?VVgyRTlsOU5EUCtLbXVlREhmU20xUDFkU2FTZ0poTnQycnNxSU5BMHpjbnFQ?=
 =?utf-8?B?ZnVPSDRhMGVpWE1oLzhjQ0tTbmFxMTZtTXRpNzlhRjg3WWNsRU1IdVF4VllG?=
 =?utf-8?B?dGVsaER0azdiSVlha3JiV01Jb25XcWh4VDBJT1NDZXRpajZJZUlEMDhyeUFi?=
 =?utf-8?B?bG9PallFOXhnaGNiUHhsZWVmMzlpdndiNUtmL3VHOVhGRDIrekd3WXI0WWcy?=
 =?utf-8?B?QXZHazVucC93cERRd3gzWXRKbmQ2ZVFiZis3UGdLbFo1T2NuM0lpN2I5RG1h?=
 =?utf-8?B?VFp5Q3dPWTl1V0pmbU41WERmTzBtMXh2QndhajRyZ1lkYThOR0JZMWkyM2J2?=
 =?utf-8?B?R3hSMTUrWkovQ3A4YkVqdHNNbTdGMUhkMGRxWVlwbmZTZUMxcEZnTVVibGxG?=
 =?utf-8?B?NGpVcXk1T2RBeVkzQ0JoTkl5LzFwUG1xMnpRVXgyTWQ2Nm1vOHYrLzhCUGhs?=
 =?utf-8?B?RUJIWm56M1cvclRMS01lWW1SM0txWWFIZk5YNFBSTVg4aXpYalVHcEd0alVu?=
 =?utf-8?B?cDVVMVVrdjZlbUZXYXNpcmRvZFpPbFpPUGhMR1kydkpBQWtIVy9RYS9PejJM?=
 =?utf-8?B?Y3QwZGFCNnZPcjJCcnBTM0FXZWtSOFU5VWRrTWRicm1xM2FkQ0lsY1kvU2VB?=
 =?utf-8?B?WGVXSnY5TmpoUUNVTHRWMHAra0hTam9RMFpQVml0aXA0SFVpV0doRkF6Yjd5?=
 =?utf-8?B?azBXSEs0YmhWWk1NRVhxc2xxSnVXeXFIUlBCRkQvMTcyQlQvY3VwTStVc3Z1?=
 =?utf-8?B?NmVmYUR0bWp0SnI5b2JBYUN6aWt6a0p5ZDllZ3dzc1dya2EwSXN4Mi83YVJ1?=
 =?utf-8?B?a0tpdU5rbm8yK2tEbUlFZWpRMktpQmdSY2NqaFIrREpsbnlpZURyUUM1dEVP?=
 =?utf-8?B?SzdKZEx6a0ZoSDAxeDN5MTV1TFlISmdkTTkvRHhhNVV4cS9tSWxzYVFnZGtM?=
 =?utf-8?B?WkcvVGY4Vm1ESlR2RnVLTElyVTR0ZHFqSUJJSzJoU0Zsb3hWVnlOSWR5R3JY?=
 =?utf-8?B?Ujl5M1BRZkdONTRhV3NRRVBJK2RqU0plRnRjd1o4bDlvS3pGUzZZNmlnSnlN?=
 =?utf-8?B?UnNaZXN3WGVpSVFqUHBZMTMxclA1WUhjMGtzOUZCbVFvdkhER3VIbzhjR244?=
 =?utf-8?B?blhZdWVRZ0JCZXhZSlJRNEovUmphdy9RYndzSE1OVVJJRUEvbVFIajhUeTBw?=
 =?utf-8?Q?PuHMhxJ4e2AQjNzo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b6bbce03-7e93-439a-e950-08de7f568b5e
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 10:11:21.8583 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QgB1GdSwKcW9qTG/GlU0pPm5DW7chyQeSwn2f1mThFa1avWzAIJSNxM4I7lK8qfXl/WeE9Z6MeeTDCh57oTr3jeTyUEarCzFmK72iWIhw00=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB8889
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773223888; x=1804759888;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7NICEsy8CDLHrMa4LYzW0Cx6aSudgtOhrE0z8r7ZQL4=;
 b=Q49zFzrhxS3fn4UKJNHIsvKcwJ7gjj6cOO0nslzlKeSda1bDdRFX1y34
 ocwE3WhJJQnxJgKN/VC9pN6R7QQdebNR1WdddMNmWB5mu376Fzl/DTdad
 YBIBvNY8xGJNITTgyX2KhQP6fbzRK6QQxVPA9PlEbhE0rlOwSMBanTp78
 K7fGVBc3KEeYSpSeWoO1qsNz3uzeeU7pma8mtVKUtWqCJS1OIzGGLjAeE
 3v+BiTHnHrvRQ4BGMUUDXQRTSzTEsaD92YIqXTLrMnJ+vU0ewqAKe3Aa5
 XVTEiCtAJE3EgeyDmX/ZgAhjDhDtTHxWBu9c+EO81QcptwI9Gw+3XXxRg
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q49zFzrh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] igc: fix page fault in XDP TX
 timestamps handling
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
X-Rspamd-Queue-Id: 42604261D66
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:zdenek.bouska@siemens.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:richardcochran@gmail.com,m:yoong.siang.song@intel.com,m:jun.ann.lai@intel.com,m:vinicius.gomes@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bpf@vger.kernel.org,m:florian.bezdeka@siemens.com,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_TO(0.00)[siemens.com,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo]
X-Rspamd-Action: no action



On 25/02/2026 11:58, Zdenek Bouska via Intel-wired-lan wrote:
> If an XDP application that requested TX timestamping is shutting down
> while the link of the interface in use is still up the following kernel
> splat is reported:
> 
> [  883.803618] [   T1554] BUG: unable to handle page fault for address: ffffcfb6200fd008
> ...
> [  883.803650] [   T1554] Call Trace:
> [  883.803652] [   T1554]  <TASK>
> [  883.803654] [   T1554]  igc_ptp_tx_tstamp_event+0xdf/0x160 [igc]
> [  883.803660] [   T1554]  igc_tsync_interrupt+0x2d5/0x300 [igc]
> ...
> 
> During shutdown of the TX ring the xsk_meta pointers are left behind, so
> that the IRQ handler is trying to touch them.
> 
> This issue is now being fixed by cleaning up the stale xsk meta data on
> TX shutdown. TX timestamps on other queues remain unaffected.
> 
> Fixes: 15fd021bc427 ("igc: Add Tx hardware timestamp request for AF_XDP zero-copy packet")
> Signed-off-by: Zdenek Bouska <zdenek.bouska@siemens.com>
> ---
> Changes in v2:
> - Moved 'adapter' variable declaration into the if block (Vinicius)
> - Link to v1: https://lore.kernel.org/r/20260224-igc-fix-xdp-tx-tstamp-pagefault-v1-1-7c729ef61ee5@siemens.com
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |  2 ++
>   drivers/net/ethernet/intel/igc/igc_main.c |  7 +++++++
>   drivers/net/ethernet/intel/igc/igc_ptp.c  | 33 +++++++++++++++++++++++++++++++
>   3 files changed, 42 insertions(+)
> 

Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
