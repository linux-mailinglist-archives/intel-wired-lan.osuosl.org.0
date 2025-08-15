Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 106D9B287D3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Aug 2025 23:39:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90F63611E2;
	Fri, 15 Aug 2025 21:39:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PfYQqixpZs6K; Fri, 15 Aug 2025 21:39:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8BE3611D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755293960;
	bh=p95nceCrL0MS59Fba2WHxzVeFeosW3oi4FRZDQLMF1w=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cG2uoAP7rj3vSY0YSvEYHc9lESTWtL5+eKG5I9WEYH5Qi+9YytYZnpCQkb58nHS2d
	 FxBkVJZC7JjmxJHGoVJ/cCx5hpqjehqFbHF8LEbbTwfbyaa23F5A6jCWQGBZVjEQFb
	 75sMNtpOabKw0JkUX1PTC/yZBFSRaLhd6RRf8SReVAeA7MpX9xNTq1NkaH14dgtJ43
	 BeilBLcF8KcFofAdRk66Kb2nnQfSNTTfTv3E9S0PhicQ9jH5cIkGgjtkUckuTQAECL
	 xWA7cCTRrpZ/2FGq9laIQAZuUlQPL3jy4rymnXY12jfoLNc9FmOzPCkwLBsmdCCW9R
	 PbRxfCp8fzg8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8BE3611D3;
	Fri, 15 Aug 2025 21:39:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0C931959
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 21:39:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F229E611CC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 21:39:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z2ai9IJC12Yf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Aug 2025 21:39:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7E39D61114
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E39D61114
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7E39D61114
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 21:39:15 +0000 (UTC)
X-CSE-ConnectionGUID: 9p4y0shMS+a+9g1l4uvWuQ==
X-CSE-MsgGUID: Ng0xnaGhQO6jb/D/Pmj3Mg==
X-IronPort-AV: E=McAfee;i="6800,10657,11523"; a="83044777"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; 
 d="asc'?scan'208";a="83044777"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2025 14:39:14 -0700
X-CSE-ConnectionGUID: ogU59iLnRrGvD6Ax/KkTOA==
X-CSE-MsgGUID: w4HOMYXpQXyAoP076vnp+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; 
 d="asc'?scan'208";a="171298553"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2025 14:39:14 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 15 Aug 2025 14:39:13 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 15 Aug 2025 14:39:13 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.48)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 15 Aug 2025 14:39:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ifQLZ5bsV9EEZXa2OUT4NWHQ5fwNykwB0WpIHMsBH5QLAwKGv9bv7iZi/E22R2Enc/Yg6rHbsyz/KjaUSXnEwkHjessWthY0ZpQfE4VOqi1Q6eif84RfNUYvbLOIcreF8/ZyyjiuBHHMzedGkSvpaOpUFsHEhTDNanzfUpWEZ6cc9A7xobzX4lPw+QiG5tN3QxSWUPUm8GirSllj6mBTxAvaX8fEpfhS9XUbllO/M2TbRot1MkhA97xApjLKJFG/OH9MOqS2L3n8wj4b3iFdLworTOYePwBKtt7fpd/O+dCAANZo8FuKy0I9yf/55vxfrPUEKUE0KiABim3ksjgNfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p95nceCrL0MS59Fba2WHxzVeFeosW3oi4FRZDQLMF1w=;
 b=V7ojPNdLSBLTWHCWTJ9aSGJIWhACuFRGTX5fByHZdGRStKSgIw9SMP4TxXtQm98jtN20c4v/ZJV6JFN2pFYtRPPgRI47V538DBrjWNkl2wod6HdQqT6RqKdYnW4PIcCfdW6aNcBK1x3vFpXrrteda9uwi+rnYurvGZYKSHflgzem2ERuXsstEMYP/Vto6ZjTjahkMpeREkgADm3poBjm73ju1uvqET0uPTY3WVwIlHua0rRITptxBf21gnvMo1hJXlzK8gJg2UjfyRq8+wcyrjQCrJRNv1fPODGcAjWDIkycJZ4kHJ6n4hIsRNW6xWWbabWHtD/sKDn0s6/SDDAo+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW3PR11MB4665.namprd11.prod.outlook.com (2603:10b6:303:5d::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.18; Fri, 15 Aug
 2025 21:39:06 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.9031.014; Fri, 15 Aug 2025
 21:39:04 +0000
Message-ID: <a64c85c4-f78e-4dbd-b07a-9a032398bff2@intel.com>
Date: Fri, 15 Aug 2025 14:39:02 -0700
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: <kheib@redhat.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
References: <20250814-jk-fix-i40e-ice-pxe-9k-mtu-v1-1-c3926287fb78@intel.com>
 <f9ef51d9-9a55-40f0-8073-dad5eab741f9@molgen.mpg.de>
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
In-Reply-To: <f9ef51d9-9a55-40f0-8073-dad5eab741f9@molgen.mpg.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------dvZOxkUILZijxgXrmxo23At9"
X-ClientProxiedBy: BY3PR05CA0050.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::25) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW3PR11MB4665:EE_
X-MS-Office365-Filtering-Correlation-Id: 36a88548-bbea-400a-9bca-08dddc44281c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ME1XdTRtN1YvL0F4OEM4U1BrSXB0N01PWlhSemFqSTZLZzhDU3A5Ym9tcjVj?=
 =?utf-8?B?NGlpa05aaXJ4dThjK0VML2ZldnBYUGQ0N3drbG5mZDFUQmRJZXBNRVpyUENw?=
 =?utf-8?B?b1ZDTnF4elhkQ2JBeUw0ajFMY1dKVHJsUHUwMG5ZYzNpZ3dCOWhSR2l4M2Uy?=
 =?utf-8?B?MUJvSXhrcWdNNGZOajFhZkQrQ1hRUllJRW45V1BUYW5CUTVGb2MzYVM4eWhD?=
 =?utf-8?B?SWYyQVZ1eEhZMGNHS1B6Y1BJeVRzRzUySmUrbWM2aFNRUWY5K1gybkI2RGZQ?=
 =?utf-8?B?VUl0VnRSRDl0NTA5SmVzbk1Ub0RDdWlPWWdqSlEzbTBYRThrcTRBYkNLcUtS?=
 =?utf-8?B?Nm9ISUo0UVNJVDV1eVNKeTBWSjFEYkRWb3RPb2JWdWZkeVVHNVUzemkvSzQ3?=
 =?utf-8?B?cFoyNXFQd0djdGE1NTk0NU9Id0UyenZMV0JDbUdGTnAxU09qY2N0eUY0QnBN?=
 =?utf-8?B?NG5wNzhNRjBWL0k5Mm1WRmd2WWt3ZHl5cmVnQ1p5TzJ4VjhZQWVBVHNsbndZ?=
 =?utf-8?B?L2VKM1FIZHRoTk1sd1JTMGRpZEluK2haSlBvcjFxenlxVnduNXp0T2tuTy9j?=
 =?utf-8?B?QnVhclV6UStabE5wQmplM3ZWQTVXUjhEeFdvQmErVnB5aitnNjNPbG9YNGMr?=
 =?utf-8?B?bjE4dDRjS0NwWmNGbjdTVnRQUGJNSFB2SkV2bzVyZ2dZb0tldWdpTzJaaVJC?=
 =?utf-8?B?SnFxWGVWbm5LV2Y4Y3BTVU1NL2IxUkJaNXRwT1JXT1FEMDg1cVhvNmNhYkUy?=
 =?utf-8?B?VEpoRHgzU2JrL00zWXg1b1owRnZwSmdWVi9FU3d0Z2dzdGV0L09LbHpGQUtV?=
 =?utf-8?B?Tk83dmV4UEtxcGJFR0NtV24xaVpnLyt1MjlLUGcydEtqclkxSmEzUUhwV0J5?=
 =?utf-8?B?bEt3SlZOVjgyRG1iOEFDRmlueTA1WENIN1Fsd1I4TGI5eVVGaUJhMWxoRlFa?=
 =?utf-8?B?LzY0Z3JzdnBZZDhrL3lyRlBaYWJONGhESlMySEhDRTRqbldvL05uRm1rbktq?=
 =?utf-8?B?clA3cDdiaHc0Um5IOGxUOEthV3Z5TVdhVURTVTJTMlRMUDFFV2F2L1ZGZzRP?=
 =?utf-8?B?Y3dUZ2c0VkdvbG40UEtPaW5oOHlPM3RlUHRaOTluU1M4S0F0blErK0VZYmpX?=
 =?utf-8?B?Um5nWDBSWTY2RVBINlhlL0JSWTEzVktzQmN3Uk5lWkUxWjUxU3AyVU9rcDgv?=
 =?utf-8?B?MGQvK29aMjhqYjVmOFZDTE84RmpRaXUvd0xhQStocHQ0WUptL3dQajFkVUpu?=
 =?utf-8?B?bW54dEROV2g2b0ZaSEcxL2FTbUxxaGdZckFzY2ovL1BleEhxV2dhMXMxcU5w?=
 =?utf-8?B?V0ExOGhFWm9ubEJ5OSt2d0ZWMERpcHd0Qm4yZ0Ewck1CanBUQW5vVWRmTHRE?=
 =?utf-8?B?eERqTTN3YjM0WnV3WGp6Skp4VWdpUGJwUnJsWDAvbGlZYkxwaE5XV093UWo3?=
 =?utf-8?B?TTBDelRYdGxzOWlJbmlXU1N5bUMvNWhnM2grOTlTVDdiczhLRWNGMzZXWGdX?=
 =?utf-8?B?QlZJTkM1ekc3TXdvcjR5OUs3YkJQcmdEUWRuYytqU0kvRXprSlV2Zi82bFh5?=
 =?utf-8?B?Y3B0UEdxT1F2RkFhNXVtclhzM3N3Z0JKU1RYSE5oVzFwaHZOZlZoZmNlWnVr?=
 =?utf-8?B?THNlVTA1Wk1HZWUwcm9iMTJLbVEyWmFqR1dBbHRjRlRURllXcXk4aDRiMU1j?=
 =?utf-8?B?QnUrZW5Jd29LNDNWNlZzYXArajZXdWdMT3VpcVZBbEtkVlh5REZqNGF3ZnU5?=
 =?utf-8?B?Q1dYek9WS2QzQTYwVnpOWWRXSS9GMUV2Szk1Mjk5dTRUZmN6ZnpzWFl4TUxi?=
 =?utf-8?B?cnFJekFHalpVWFhVby8rWlBNYTllTTYxWHBNclg5V3pzWllKMmxMMlVkaUlW?=
 =?utf-8?B?SFg4NUo1YktXYTV4cVZuMGM2Z05RcDl4ZzI1MzFFTEtOZENEOHVFcGw4enJE?=
 =?utf-8?Q?gdpxXw5pE9tafC2d1BUHSTngMNeF9O1s?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bE9naXp5cVAvQTgzQzZnTkswVk1GMTJVSFVVb0oyL0xvOVJZSkF2L0F1dEF0?=
 =?utf-8?B?bmRaT0YvNEdqODRuNjR2aGE2bzBYU2JnSmhZT2RHNkpUcTZxTmx3YUJlMm8x?=
 =?utf-8?B?TzJDK2IrYmMwZG1KVFpHUURMbHlCSXZKWCtZbUU5RjFyTUlXWnF6ZlpYNW16?=
 =?utf-8?B?dUxLT2hINkVUMnNGSmw1dDRpUC9Xa1NROGk4R0tvOEQ0cHc5clVDSzVYQ0pL?=
 =?utf-8?B?TDJ6d3dVN0MrUHZKNGl2SGdCL1g0T3c1blgzb1F2QjRSdFpINWUrWGFxUUlJ?=
 =?utf-8?B?TUNjUFNDSUNBL2xGQkhoU1BBQU5TN3lqWWIrOThWU1VtSHdlQUVROWlOMmpE?=
 =?utf-8?B?WVlGTFo3Sy9DSUxiNXlFbC9STkkvMUp4T2RXMUg5SFAvRnc1c1dzbG1zRkc0?=
 =?utf-8?B?cFFlSFovbkM0SUlnaWVJSGZTWi9aVGZjdWN1UWtTN1p4b09YL2doMmJMU3E1?=
 =?utf-8?B?Qkgxd09DejB2Wm1LRkZXaERyaWt6SkYvOU40bU9qZDJ0RkczckRMQ0EwKyt3?=
 =?utf-8?B?WVNYTnR2QXFNelV0MHZtcURkcjZQZVFoT2ZjMW5qYTFBOVBERWg2RTYxUDRK?=
 =?utf-8?B?QkU3enJZc3NPVStpaFhBa0ZJZFoyUFA3cFFVWjBoU2FVblJEaHJPVmZLaFVV?=
 =?utf-8?B?VUF1dGo0RytIb0R3QmFtVFRTZ3BYWDVDU0sxRlgzTy80R3JKVDdFRUJOU3o0?=
 =?utf-8?B?V0I1aTZ3Y2VGK3A5alN5N3FlUHZvRzY5eTd4dndvYVpyZHFycXl2QUpWVHk3?=
 =?utf-8?B?QmxRNzkycFJhVTJRVzRaTmxtb1J3Mldxa1FmL2lkeE5tQW9EVHlJNFJuWlRj?=
 =?utf-8?B?MDU2Y25TcWpPcThldENlU3NwallUWWdmc0tRcURraGpRNUMwYzAwZkRiL3pW?=
 =?utf-8?B?eXFGZXBiV2g3Y1BDQmdtM0tKc1QxTTVETldlVzhRcjNxb0MvMjdpQ2xZZEhz?=
 =?utf-8?B?ejZQdGxiTFBNTnlQWHZxZDl2VkgrVm15NzJnVGlCbE5jMU4reXZTNVRwUXJC?=
 =?utf-8?B?RmJHVEpXU3RNcjFBdXkyUVZvSlkrSXdaU3RzN1IxSjhMQ21URGp3SVlqOEFn?=
 =?utf-8?B?SXlEdU94Zy9GbVB1S2lUbUczNWM2ck5WazM5VEtPQWJJRHFUZktmL092WDJk?=
 =?utf-8?B?Z3hSb096bHpiT096Z1FwL3RjNU9meXpzQkJMazU3cjl2aXB3ZEZ0M0V6ZzRN?=
 =?utf-8?B?Rmdrb2NNanhRRTB1V0dyYjUwQkhPcWtWWGNQTWhJSU1hUzRTMTJHdlI2NEVy?=
 =?utf-8?B?Qzd4Ukp4R2o2UUJHRVdrRVdocFA3OW5veVZQWnB2MVBaaVBsRlptQ1JwOEpK?=
 =?utf-8?B?ZHFBamRtZ3lkVDNxaldZZlR1NXdiSDkwdXlkQVhrU21rK09ER2NzMS94T2ZH?=
 =?utf-8?B?bjJWczNKM2RVVXNnWHFvY0ppdk1GMitSeGVYblRvQVdzVGgwSjM2Q2Y3MDlV?=
 =?utf-8?B?aUtPZk1jYnFyMFJ1cXRhWHFSMXFjUVVBZGlSdWhQeWR3M3hwOXF4MktSbVNH?=
 =?utf-8?B?b0JZVWowclIvWkV5RlNCTnNjOHhSVFRYOEx3WndnZjZoK0VqTHlWMWcra0FC?=
 =?utf-8?B?VlNEVlgrS3NKU0M4R2JoOTdsYUNiMk5zZ3J6SHhQTW9tMWNYWmdJSW5LcWVD?=
 =?utf-8?B?SnA1MUI1cXVzcVJIazF6ME05bksyWUhpaE8yMEFkOUI5WjlZbER0ajdJeVVh?=
 =?utf-8?B?dlJybW8wN01QTXJFblhhd25YSjcyNzJROFlwam9EeTlrUGtZK08zU2p1MEF1?=
 =?utf-8?B?UWVmTFVpRW9ETktSZEdwbmxPMlpsaUwwUFl2OU0wNnMvVXBrMzhWVmIreGZ6?=
 =?utf-8?B?OUJKSXlDSU53ZW5nVVh3MnZZNjFIaUR5NW5GTmZhekVxMXhMTjhWRExpbEZS?=
 =?utf-8?B?TkY5Wno5Vm9yREtLZytJdEFZaUpGQVM1bWoxYTMrbGUyRGtqU0JoR1IwakVk?=
 =?utf-8?B?ZGV6ajMwdzlUbDh2VTJIeEt6c29tV0IrNCs4dTFYbVVrZlJHeFJ2eFVYZDZV?=
 =?utf-8?B?Y0pPbFpINUJJaVBIV1V0TkdjK1hUZ09nWnVwZDZINVcxWnlmUXlHZFVUU2Za?=
 =?utf-8?B?dE04UVN2Nkplc1NCYVpsUkZldGhCeTBCdExUT0NWSjcwREg3Rk5DSllPV0RW?=
 =?utf-8?B?YlZSN3hmekYxVkdvSHQvd1BzRFRuMHhZbUdZNDlEc2xxeWY1bkRhdXRaclpU?=
 =?utf-8?B?Smc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 36a88548-bbea-400a-9bca-08dddc44281c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2025 21:39:04.6995 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FhZU7dexVVOEwwByIRhOGyCvAWs2D8CNfCVjaS5F8fJi3W45skRMy7oKWMa1gNRz7drVnboEXAu6wsCpWlLaWLvlsOy++8SbwhCERauVOjw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4665
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755293956; x=1786829956;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=CoSydYgsFbBI+MBP8NxzPdgvZkTpcgR78Cmo2CZsn9A=;
 b=f+zqklUTdy/au92/8Sm/L0bxbciUKOjisEgoizaWw7BELm6vQ+67lUuh
 o5MwVOMdinn1Vx57ikXqHu2HypfleztsKrLagHZoxt61ci2kMz9N1Qsd2
 ymo7G+V0ylfEsjRpa2x+mm/yeK8BfHL+h0VIP0GvNl1Ni1aUzyyZ1ymC2
 eNQKkAO4KBwoRyMfV0O3pVCnkNd3c6aj+D7JF/8uCVZIyR7+6D9XY01JT
 pQjudehrQ8KiG1FElAl4u/9H7H1ilLlVELgz0HNPkL6nw19YUY/7PMY9q
 o5XgKnmQTEHIHXr8MQf9wfPIUZy5z6xd+udyRSHy0QjOp7NVIGpG2Bb7e
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f+zqklUT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: fix Jumbo Frame support
 after iPXE boot
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

--------------dvZOxkUILZijxgXrmxo23At9
Content-Type: multipart/mixed; boundary="------------JBFCVaOYc0iXG7cc09WlppWe";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: kheib@redhat.com, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <a64c85c4-f78e-4dbd-b07a-9a032398bff2@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: fix Jumbo Frame support
 after iPXE boot
References: <20250814-jk-fix-i40e-ice-pxe-9k-mtu-v1-1-c3926287fb78@intel.com>
 <f9ef51d9-9a55-40f0-8073-dad5eab741f9@molgen.mpg.de>
In-Reply-To: <f9ef51d9-9a55-40f0-8073-dad5eab741f9@molgen.mpg.de>

--------------JBFCVaOYc0iXG7cc09WlppWe
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 8/15/2025 5:07 AM, Paul Menzel wrote:
> Dear Jacob,
>=20
>=20
> Thank you for your patch.
>=20
> Am 14.08.25 um 23:21 schrieb Jacob Keller:
>> The i40e hardware has multiple hardware settings which define the maxi=
mum
>> frame size of the physical port. The firmware has an AdminQ command
>> (0x0603) to configure all of these settings, but the i40e Linux driver=

>> never issues this command.
>>
>> In most cases this is no problem, as the NVM default value is to set i=
t to
>> its maximum value of 9728. Unfortunately, since recent versions the in=
telxl
>> driver maintained within the iPXE network boot stack now issues the 0x=
0603
>> command to set the maximum frame size to a low value. This appears to =
have
>=20
> Maybe add (MFS) so the abbreviation is clear.
>=20

Can fix if there is a substantial need for a v2.

>> occurred because the same intelxl driver is used for both the E700 and=
 E800
>> series hardware, and both devices support the same 0x0603 AdminQ comma=
nd.
>=20
> Do you have a link to the intelxl change?
>=20

It comes as part of commit 6871a7de705b ("[intelxl] Use admin queue to
set port MAC address and maximum frame size") which can be viewed here:

https://github.com/ipxe/ipxe/commit/6871a7de705b6f6a4046f0d19da9bcd689c3b=
c8e

This is a prerequisite of the commit to add 100G support:

cad1cc6b449b ("[intelxl] Add driver for Intel 100 Gigabit Ethernet NICs")=


https://github.com/ipxe/ipxe/commit/cad1cc6b449b63415ffdad8e12f13df425610=
6fb

Strictly speaking, the 100G support is part of a separate driver, but
they do share substantial code with the 40G intelxl driver, including
the AQ command to set the maximum frame size.

The problem is that the addition of this AQ command did not play well
with the standard i40e drivers such as the one in Linux.


I will update the commit message to better clarify these details.

>> The ice Linux PF driver already issues this command during probe.
>>
>> Since commit 3a2c6ced90e1 ("i40e: Add a check to see if MFS is set"), =
the
>> driver does check the I40E_PRTGL_SAH register, but it only logs a warn=
ing.
>=20
> =E2=80=A6 if MFS is set lower than the default.
>=20

True, this could be spelled out in full.

>> This register also only covers received packets and not transmitted
>> packets. Additionally, a warning does not help users, as the larger MT=
U is
>> still not supported.
>>
>> Instead, have the i40e driver issue the Set MAC Config AdminQ command
>> during boot in a similar fashion to the ice driver. Additionally, inst=
ead
>> of just checking I40E_PRTGL_SAH, read and update its Max Frame Size fi=
eld
>> to the expected 9K value as well.
>>
>> This ensures the driver restores the maximum frame size to its expecte=
d
>> value at probe, rather than assuming that no other driver has adjusted=
 the
>> MAC config.
>>
>> This is a better user experience, as we now fix the issues with larger=
 MTU
>> instead of merely warning. It also aligns with the way the ice E800 se=
ries
>> driver works.
>=20
> Is there a regression potential, that users won=E2=80=99t be able to ac=
cess=20
> their systems over the network, because there are faulty switches or su=
ch?
>=20

Yes, but only for situations where larger frame sizes are used. I do not
know exactly what the ipxe driver sets the maximum frame size to, but it
is lower than the default 9728 for 9K Jumbo Frames.

> To save people search for it, how can the MFS be read out from the=20
> command line?

As far as I know, you can't. We can read the PRTGL_SAH register in i40e,
but I don't think anything actually reports this. The i40e driver
previously expected this to just always be set to 9728. We limit the
size of transmission with other per-VSI settings such as setting the
VSI's maximum allowed sizes. The MFS is a port global value which is
independent of the VSI settings.

Worse, the PRTGL_SAH register is only one of the things impacted by the
AQ command. Previously the intelxl driver set the PRTGL_SAH register,
but did not send the AQ command. I believe the warning Todd introduced
was intended to at least catch this with the warning message.

However, with the addition of the AQ command, other device configuration
is set (Unfortunately, I don't fully understand what all gets changed by
the firmware...), and as a result changing PRTGL_SAH on its own is not
sufficient to restore functionality.

Thus, I believe the best fix is to do the same as what ice does for
E800: issue this AQ command to set it to the maximum 9K value.

>=20
>> Fixes: 3a2c6ced90e1 ("i40e: Add a check to see if MFS is set")
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> ---
>> Strictly speaking, the "Fixes" tag isn't entirely accurate. The failur=
e is
>> really the result of changes in the iPXE driver to support both E700 a=
nd E800
>> within the same intelxl driver. However, I think the warning added by =
that
>> commit was an insufficient solution and we should be restoring the val=
ue to
>> its expected default rather than merely issuing a warning to the kerne=
l
>> log. Thus, this "fixes" the driver to better handle this case.
>> ---
>>   drivers/net/ethernet/intel/i40e/i40e_prototype.h |  2 ++
>>   drivers/net/ethernet/intel/i40e/i40e_common.c    | 30 ++++++++++++++=
++++++++++
>>   drivers/net/ethernet/intel/i40e/i40e_main.c      | 17 +++++++++-----=

>>   3 files changed, 43 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/driver=
s/net/ethernet/intel/i40e/i40e_prototype.h
>> index aef5de53ce3b..26bb7bffe361 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
>> @@ -98,6 +98,8 @@ int i40e_aq_set_mac_loopback(struct i40e_hw *hw,
>>   			     struct i40e_asq_cmd_details *cmd_details);
>>   int i40e_aq_set_phy_int_mask(struct i40e_hw *hw, u16 mask,
>>   			     struct i40e_asq_cmd_details *cmd_details);
>> +int i40e_aq_set_mac_config(struct i40e_hw *hw, u16 max_frame_size,
>> +			   struct i40e_asq_cmd_details *cmd_details);
>>   int i40e_aq_clear_pxe_mode(struct i40e_hw *hw,
>>   			   struct i40e_asq_cmd_details *cmd_details);
>>   int i40e_aq_set_link_restart_an(struct i40e_hw *hw,
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/n=
et/ethernet/intel/i40e/i40e_common.c
>> index 270e7e8cf9cf..f6b6a4925b27 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_common.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
>> @@ -1189,6 +1189,36 @@ int i40e_set_fc(struct i40e_hw *hw, u8 *aq_fail=
ures,
>>   	return status;
>>   }
>>  =20
>> +/**
>> + * i40e_aq_set_mac_config
>> + * @hw: pointer to the hw struct
>> + * @max_frame_size: Maximum Frame Size to be supported by the port
>=20
> Mention that it needs to be positive (or non-0)?
>=20
>> + * @cmd_details: pointer to command details structure or NULL
>> + *
>> + * Configure MAC settings for frame size (0x0603).
>> + *
>> + * Return: 0 on success, or a negative error code on failure.
>> + **/
>> +int i40e_aq_set_mac_config(struct i40e_hw *hw, u16 max_frame_size,
>> +			   struct i40e_asq_cmd_details *cmd_details)
>> +{
>> +	struct i40e_aq_set_mac_config *cmd;
>> +	struct libie_aq_desc desc;
>> +
>> +	if (max_frame_size =3D=3D 0)
>> +		return -EINVAL;
>> +
>> +	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_set_mac_config=
);
>> +
>> +	cmd->max_frame_size =3D cpu_to_le16(max_frame_size);

One of the bots complained about possible uninitialized access here, so
I'll need to check what I did wrong. I think its because of the libie AQ
conversion.
>> +
>> +#define I40E_AQ_SET_MAC_CONFIG_FC_DEFAULT_THRESHOLD	0x7FFF
>> +	cmd->fc_refresh_threshold =3D
>> +		cpu_to_le16(I40E_AQ_SET_MAC_CONFIG_FC_DEFAULT_THRESHOLD);
>> +
>> +	return i40e_asq_send_command(hw, &desc, NULL, 0, cmd_details);
>> +}
>> +
>>   /**
>>    * i40e_aq_clear_pxe_mode
>>    * @hw: pointer to the hw struct
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net=
/ethernet/intel/i40e/i40e_main.c
>> index b83f823e4917..4796fdd0b966 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
>> @@ -16045,13 +16045,18 @@ static int i40e_probe(struct pci_dev *pdev, =
const struct pci_device_id *ent)
>>   		dev_dbg(&pf->pdev->dev, "get supported phy types ret =3D  %pe last=
_status =3D  %s\n",
>>   			ERR_PTR(err), libie_aq_str(pf->hw.aq.asq_last_status));
>>  =20
>> -	/* make sure the MFS hasn't been set lower than the default */
>>   #define MAX_FRAME_SIZE_DEFAULT 0x2600
>> -	val =3D FIELD_GET(I40E_PRTGL_SAH_MFS_MASK,
>> -			rd32(&pf->hw, I40E_PRTGL_SAH));
>> -	if (val < MAX_FRAME_SIZE_DEFAULT)
>> -		dev_warn(&pdev->dev, "MFS for port %x (%d) has been set below the d=
efault (%d)\n",
>> -			 pf->hw.port, val, MAX_FRAME_SIZE_DEFAULT);
>> +
>> +	err =3D i40e_aq_set_mac_config(hw, MAX_FRAME_SIZE_DEFAULT, NULL);
>> +	if (err) {
>> +		dev_warn(&pdev->dev, "set mac config ret =3D  %pe last_status =3D  =
%s\n",
>> +			 ERR_PTR(err), libie_aq_str(pf->hw.aq.asq_last_status));
>> +	}
>> +
>> +	/* Make sure the MFS is set to the expected value */
>> +	val =3D rd32(hw, I40E_PRTGL_SAH);
>> +	FIELD_MODIFY(I40E_PRTGL_SAH_MFS_MASK, &val, MAX_FRAME_SIZE_DEFAULT);=

>> +	wr32(hw, I40E_PRTGL_SAH, val);
>>  =20
>>   	/* Add a filter to drop all Flow control frames from any VSI from b=
eing
>>   	 * transmitted. By doing so we stop a malicious VF from sending out=

> The diff looks good:
>=20
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
>=20
>=20
> Kind regards,
>=20
> Paul


--------------JBFCVaOYc0iXG7cc09WlppWe--

--------------dvZOxkUILZijxgXrmxo23At9
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaJ+o9gUDAAAAAAAKCRBqll0+bw8o6PBs
AQCuoR7/WeRHZ7/EmRGz+gdNUzPda6MPX8f/wsBa+R0CeQD/R/WGaahY7dTNZnziZXYOYeftaJyB
VPp8JKPwTXuQiQ8=
=vPA4
-----END PGP SIGNATURE-----

--------------dvZOxkUILZijxgXrmxo23At9--
