Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2978493B6A8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2024 20:25:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E6DD80AE3;
	Wed, 24 Jul 2024 18:25:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r3DXrSlgwI1C; Wed, 24 Jul 2024 18:25:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DFB5C80ABC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721845530;
	bh=etaa17vX7ltVKnvWwRS20qkUMAw3N9kGyO5GkN8T/Uk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZchZOeXPOR7YPAja3hrPpsSl2uCC98Z4pm2KSYxI4errjAGwJDdFrpp5T+0RhUdP3
	 DvxUass1DIJfZEVCnyfrE5A4Vv2sLzGI3sPWvFWuByiPMMBeXmPbXwludThbe8dqTn
	 qObzQjxewbbbpLZwMIaRjDHV1uofvxlfExw/pGYkeV7LTpufjBsFLccpMgHAg63E4H
	 MWfDzkq+AadouAvnfbQNtcmnhy+XlWgtH0v67WWhj6X0PCcKoSlpe3FxNBQ+n3pa6+
	 53K/2l48xrfczPNk30jKIsd7zBbUXd25DnWta6bWIlZmbAcuEXgSfr7k9wPNdd5q+2
	 i0Y7/jjk02p2w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DFB5C80ABC;
	Wed, 24 Jul 2024 18:25:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 569121BF319
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 18:25:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2B66760760
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 18:25:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UgdG-S5bWq3N for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2024 18:25:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6EFFB60617
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6EFFB60617
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6EFFB60617
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 18:25:22 +0000 (UTC)
X-CSE-ConnectionGUID: JEDOHD/VS5uU0DiRh5Qplw==
X-CSE-MsgGUID: zB4EX50UT4Kdbyc6/919yg==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="19241095"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="19241095"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 11:25:21 -0700
X-CSE-ConnectionGUID: lUEkfa8OQ0Cafqt9/LjxJA==
X-CSE-MsgGUID: It08QhDeThW/A8PoWEJmSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="57801807"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jul 2024 11:25:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 24 Jul 2024 11:25:21 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 24 Jul 2024 11:25:21 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 24 Jul 2024 11:25:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v7eayft4mBSnYQYDUcZu9p0QPtpK8xcnE+RFJ9PvMcLNgLKzzThx8kRkF+tQsaP35BC8dp7siCxdtKdKAuzJNQ0NgGrfXUtaFIFEiRiCVSx3bXDD5u8IpBTi452FSoEScBECfP776p42J5d9OJj6o6dCQO+FnFmwMR5427Dl8Ynb1CCSWR3ghGPfRliNUzedn9bHOsH3g4If8kIAB/apWD6q5wy7DyCvkrxpQHBUS/0COPSoAYaaXa+62yruwEL+ePjWWsKjD3KKiEVmlf/MxwHD/VbF6B43NRnchSdIeL7DHLLnLjzBifl++SDAUBmKJAFPRMm/FJvN/veLNJKoow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=etaa17vX7ltVKnvWwRS20qkUMAw3N9kGyO5GkN8T/Uk=;
 b=tVQTRMKEp8g3vX6Lw2cvbIaPczIR0ETfGa96SYjfy7UtTlbYyji0oSxTknBe/LIs7+owATK1AnhY3J9wbQBqFI95ylMvN59WPq5cy9KFS9DdLMofmkNPVGBwG9NQ4m0EVAGWMWnFS4NHrpQaN8dmNOxn5BoP53RdlAb1v6u1oJeJ+fWIa4Eb+xtxI0CLIciHhJPQg7/uBtp5hFg0KYVFMi/lIqUuloTuQMWdrwsfblEJ+RIbjwF1ZKoDPeo3q5KKliX4YxxJYV83+R1if369p9kztRQknRhv8ji3qw3ASMV0MyF1m4oXT0kgRshAkzqE+Wftlkkm7ZnkyVTcJaGIHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH7PR11MB6329.namprd11.prod.outlook.com (2603:10b6:510:1ff::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.18; Wed, 24 Jul
 2024 18:25:18 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%2]) with mapi id 15.20.7784.017; Wed, 24 Jul 2024
 18:25:18 +0000
Message-ID: <04b468d6-713c-4a87-9fd3-4821626c4244@intel.com>
Date: Wed, 24 Jul 2024 11:25:16 -0700
User-Agent: Mozilla Thunderbird
To: Larysa Zaremba <larysa.zaremba@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240724164840.2536605-1-larysa.zaremba@intel.com>
 <20240724164840.2536605-4-larysa.zaremba@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240724164840.2536605-4-larysa.zaremba@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0342.namprd03.prod.outlook.com
 (2603:10b6:303:dc::17) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH7PR11MB6329:EE_
X-MS-Office365-Filtering-Correlation-Id: 390325f7-aea5-4b12-fd2a-08dcac0df88b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SXphYkNyYTlzYllUaDRSVUNFZWlxY3Z3VkUrK3NSSHI3a3gwbi9VSnN6Mk1u?=
 =?utf-8?B?SUx6YTNWZEtBbkR1UW1nc0xna2xCbVdzeUM0ODc5MUp4Mjdjb1h4eUd3SG4v?=
 =?utf-8?B?MDlJbXl1dEVGNE5JQjkzTGtNZDByR2EwYUFnZnQ5ZFRNVFoySUIyUThhOTRu?=
 =?utf-8?B?M0hvb2Y5aVRqZHRwTVZJbWNTSFMyOXQybUwyNlZvSCt4YSs3ZzgxVTY5STFo?=
 =?utf-8?B?Y1p3Y09LTDgyYzdrWWh5dEpTdU8rK3ZFN25sOXp5U0hCSG9ua0NxNk1DMG01?=
 =?utf-8?B?L1hCWWwrQ1lyY1daeXQzeEFPUnRVVllpZEFleFpmWU1RcU53aHBreGRyY29R?=
 =?utf-8?B?T2hTOG01b29iZkY4cVIybDhZN1laSUtMNDdFcGJ6aWxxUGk3T2U3eC96RkU5?=
 =?utf-8?B?SGVIbE5kbFcxOHVnNVMzZXkwc3JQY0FFVGw4MHhuQ2tlVzFMT3ZXQVRvQVlE?=
 =?utf-8?B?QlJRUC8yUmN1cHl5OUk1TmtydEZwQjYzbWNNRU1iYzVvaXA2V0g2aDJvMGRZ?=
 =?utf-8?B?UGFmUTZmNUpiRWwwRjBPdVJxU1p1SnFWYnR6RlRuVnZpY3NpL1RGdlZXQXdP?=
 =?utf-8?B?MkZ1akdWamJLb0U2UjA1NnRaZzlIdkVlR2tHVEZRY2xuQVdIUFJzMlhTVDYr?=
 =?utf-8?B?N1JnRWxuTFVWQ0Rqb3pyT3czWHNwUDdDRzVyWkNWdGpzQWdDcWdIdmFtL2FF?=
 =?utf-8?B?QXJrRmpBcm1lZUduemxQcEFIazRjUTRnYW41Z3FGY3dYb1F3RnA2U3U0TDho?=
 =?utf-8?B?RE5KTU5oU1ZlVDZ6WkV5NFhDb1FNYzhxRXNvMkdab1N1Zm56ckVudnpKK2RL?=
 =?utf-8?B?R2pZRjVQQ1d0OEZqTVpZc2U3UkRkMFJ3OVRiM3NFNmpiZjNZSEJHMEVPYmJw?=
 =?utf-8?B?S1lXUXZadFNsUEJnV2ZqMVpNQzFLaTh4VHZVRkZuaVBsdHU3eit1U2R3WU5p?=
 =?utf-8?B?b2dxVHo0WndWc3pnS1JSUmF5WkhhYjJTZDhGYTgzOEFiZndjNVdpSkpxR3Nj?=
 =?utf-8?B?VFpIeVUyUjZjUGRaM0daOHVWTXJORi9GbStKMWY3NW90bXlaakhuZnRoQ1d1?=
 =?utf-8?B?ajcvUHFxMDZZSGszajJ5UllhaXhRL1hKNjRlZ2ZHWWlzQk9kRUNReVlzc0ll?=
 =?utf-8?B?V0lmdDQzdlRscWczTEVZN01sNGFteGwycUJ1dSszZk1RcWlWaU0zcDZrK1BW?=
 =?utf-8?B?S3k0MHgzMW95MGNvdnIyeWRrWEVsd09hS2Zja3VaMk9nc1lVZ3hvd1Vtc2c2?=
 =?utf-8?B?bWxNcFN4bUpuMHhSZjE2QkJiaHFDYkh5RTEyeng1eTdiNC9oazJJN0JrZGUy?=
 =?utf-8?B?dzg5VHJtYjRtc0oveTVOSU50b2RNZlp1WlRtMFMzbjhkQnNHVkJxTCtDOENx?=
 =?utf-8?B?Nk04N3JNRzN0d09GWDB6cVRIbnhrVTN4T09DVEVrWmhqZnJNWUZPNnkzN2hZ?=
 =?utf-8?B?QURNMlNKUlRvbVhiUWVPTzFKRkdncnhRYmNjREI4akVyYUJFKzJoZnUzUU90?=
 =?utf-8?B?SXJvS3VyaWI2aXBrQzRWTHpITUhSY3BuMG1zVmZ0MXM3YkxhQk5jbDlQZlRT?=
 =?utf-8?B?bHVseGMrNnEvZW5aQ3l2U2M5bVdIeVU4amJWNkhDa1VPeFRnSmgrb3BxbzIv?=
 =?utf-8?B?WVFlbDV6RlpIVCtzVENXTk9vMlFZdk1OdFVBbjMxZW9TMmYvYWozRFNyTjA1?=
 =?utf-8?B?T3ZFSHNNMnlEY2pMTUdtRCt2N3FvRisvZDROeFF2QUd6YkcxdFVtY0lMWkFt?=
 =?utf-8?B?R0hHdlFlbmhFTlVVaGRUeHFLcmhoNFdmTS9NSXVQNVdFRjRzV1d5Rnp5K1pw?=
 =?utf-8?B?bjYrYzhJaWFzVDBrZ09lUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SkVKdW9nVXpkUEFPcXNhSWdtY1FHK2E3c05WRmFkL3FTM2s3U1BTOWlDeC9Q?=
 =?utf-8?B?K3RVRUd2N3BSVVkvVWJRWDFiSitNVEgwUWhFNUNQVGZkcDVpa3Ywem1qdTdO?=
 =?utf-8?B?d1FwdTB3RDNaay9JMVZsZ3dES01nRzQ2azhRdVNzeXNkaVhYYlMvOTNjZ1NC?=
 =?utf-8?B?NW5CQWY0aWo3V1lJeEZ2TGpTWS9jK3M5eGE5MTRZLzUzNWc2NXZqRkFXcWh5?=
 =?utf-8?B?QXdpVnRrQjN3UDEydVhXL2RXaFFUQzBJalp2ZFhsVVJlZ3ZRWFNXSWdqVEg5?=
 =?utf-8?B?WkI5VGdLZG5naFlCNFpiblhjVlF5ZnlrMmFoem1iZzA5ajRXOFM0ZDNBUzlM?=
 =?utf-8?B?ZTNFWjc4eHY3NkNvQ3FmN1ordmVJUG16V3QzN24waElGRHZGNVpuanY4RW9l?=
 =?utf-8?B?VTl6SlFqNktnTU0zVTVpUzkyZmlkemI1RWdmMWtEUW9ZQkQzYVlwcUpzTXZG?=
 =?utf-8?B?aHZnRWI5UndHVFhZOTl2WE05QXd1UDIxSGpXeS9VOGhEVTYwR21QdFkxSlMr?=
 =?utf-8?B?MUJUY3NkQVMvZW5XRFVCQURERXFIN1hDeTNPeFhKb21XSnJCR2tnVlJSZkEv?=
 =?utf-8?B?RVBLWnJ1TUZ6bnhmZUtxZ1pGeFBLcnZycjA5c1UxekxTY012VmtadlcraVhF?=
 =?utf-8?B?Y2t1NVN6Tm8yclNTZUdxSnd5T3Nmd2tWMERsMTZPUmRHZHhQeklLMjQyNjQx?=
 =?utf-8?B?WVRsYWtDMDNLT0ZPbmtnL2hRbG9ZTllYbVNLdFg0TkY4eC9IczZOZk5wTkFx?=
 =?utf-8?B?dDIvaXEzR0VwdWVXbXpZZlpDREpMSmRyYzZRb1d0Wk13VDNMM2VqeFJpOTdh?=
 =?utf-8?B?V0JCdWlYcEZXbTJHaVBVd2RSN0VXWi8rWWYvWGRLSGFSS1prRlduemNXQkl6?=
 =?utf-8?B?S0lZd3pybjUzRnZ2ZTdSRTVuVVIraWVya09pRnRtMUdUajFDTk1uYW13Mkdi?=
 =?utf-8?B?a2pGWnVRUUxwbUhRbTZ0K3BNdmRtZElIZGllT21MUHMzalI3ZVFEWTI3Y3Zl?=
 =?utf-8?B?dnhKZTBUTi8wQzM3RTkyZmhCalVtaStxdlkwb253NEtUUDdCM0JHNlFmS1NZ?=
 =?utf-8?B?dVozbFNVd1Fya2NBd25hNXEwb1NsWGhnVlBJS0lTWnA0YUFXNDd0QkZpN3NZ?=
 =?utf-8?B?bWgrR3hFQWphQ1JwZno0OENzWGo5TURIMXFET01OeVRIUDN6bEh4ODdPcmRa?=
 =?utf-8?B?dWxVTGZoU1ArTVBnMkNZVDREZUNMbUFqRkZaWVpadC9hSkxPeWo5ckttSjA5?=
 =?utf-8?B?Sm94TzE1WTc5cUxsazQ1eExybHhzeUNsRm5FTnVPWk43SzBHREp3bVdzL0V2?=
 =?utf-8?B?WmgxaHhCSkVJeVN6SGJOUE9VdTFONHJOc2ZaMEVaRWRhRk9mR0Nubk5yVlV5?=
 =?utf-8?B?eVpaOW9wYTY5R0RkMmkvR1hwL3gwM0g3UkNPNFlicDNzS2F0MUx4Rk0vQjAx?=
 =?utf-8?B?azN0bks5bllVbmh2WEt6TzhFYUhScmNQRk0zdjFUM2hFeFltN1B5S2xFbTYz?=
 =?utf-8?B?em52MzhDT1FZaStWQnRUaVAzTkFMb3RURjVQK3F6NUZaVFU5WkJoVklrVkFD?=
 =?utf-8?B?dEc1QTZiTnRNRUhONGtWSW90dmRCVnhYb0x0dzVJRmhzU3VNVVBZSVpnK1A0?=
 =?utf-8?B?bHB2QWNXWjUwYnh2aVhQWjNZSmhlcTR3ZUdZUkNoa0dZZFhrM3N6RmVQZlor?=
 =?utf-8?B?RFhGZ3AvcUJuNFRMa1JZT1d5MkJ3VEFjT2NKRGRlODRxMHFqVnBRazFUODhF?=
 =?utf-8?B?K2VFZUNGYWRoRzVaYWtqaEVlUWVPSUFnQXZ0dGRRV3liV3BTVFd6b2hOUzlR?=
 =?utf-8?B?VHRTbGpwZHJRMXk1ZEsrY1JkT0xndzRCdWxPV3J0RDVFazdlUDg2WHFkU3gz?=
 =?utf-8?B?Mjdrc0RBNnRSMXRIbmw4UU9rL2wvQnllQ3dJdXpuMEtMVUF2N2ZIWkJDMUI3?=
 =?utf-8?B?U0JWQ0FqdG1hR29nLzJZdTAzYmhROUFHYU95TXd0QWJhTlBPdmJMTkFtT2Ex?=
 =?utf-8?B?cHNOQk43Zi9hNlUrbXRXL3daaG1MZVBsY1o4ZURkeGtCbzFRS0ZuL2dVdUI2?=
 =?utf-8?B?ZUdjdlNSU2tjc2Z0cHJUVXFNcGRDa0FpVjBySlpBalo0b2xsVVpIK2hwc1FZ?=
 =?utf-8?B?MmRRazg5NHZweHdWKzhpcUhTOVBONmx1SU9wZWpmbitoemU2QkFaRzFTaWZT?=
 =?utf-8?B?c2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 390325f7-aea5-4b12-fd2a-08dcac0df88b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2024 18:25:18.5385 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MfeOamS9NIyFyaCRyPotQ9lrBMIDXODFABgOudLniVrV+pzv8Ch7TgqIGs/92W+4l25WoWM+F6PFCA0rBGp9AKcKoVo9mXexmDoNU20IWaU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6329
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721845522; x=1753381522;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YJoT+oH8lNGxpW3ypUUUeWB01CPp96ZU5JZ+43Cjheo=;
 b=I8XLs3AHdOogjnjzcVn/sQEFslXuZteWopd2kCCY/WYpDZjv/YbVPfER
 sO3iujnWz59BwIBFPDHX+torZWDvDBSrTx5651UIengX2ejyh+mHdxSpo
 1vYC867V/3eimLfZM9WDEcma0L6KPfeZ7EehkQwGFMjiug5rbuK/0vmoY
 BDC+S8mWvZCtDYrN9fhBCIniRuohm0Y3rZ2PlK+mjTBYWmlpRCa9sxpxp
 6ysXjVKJISO1oAdaCaZwDLF4bvFuwNmLbRIWdfx9JK59HiufllWSCxUk1
 ywamtXCga7GggYJFRE28tCQMVirO1advsjLj3QaDLK5sYqi6kjMfPronc
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=I8XLs3AH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 3/6] ice: check for XDP
 rings instead of bpf program when unconfiguring
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, Jesper Dangaard
 Brouer <hawk@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 netdev@vger.kernel.org, John Fastabend <john.fastabend@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Amritha Nambiar <amritha.nambiar@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/24/2024 9:48 AM, Larysa Zaremba wrote:
> If VSI rebuild is pending, .ndo_bpf() can attach/detach the XDP program on
> VSI without applying new ring configuration. When unconfiguring the VSI, we
> can encounter the state in which there is an XDP program but no XDP rings
> to destroy or there will be XDP rings that need to be destroyed, but no XDP
> program to indicate their presence.
> 
> When unconfiguring, rely on the presence of XDP rings rather then XDP
> program, as they better represent the current state that has to be
> destroyed.
> 
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---

Right. When operating on the rings, we should be checking xdp_rings. Ok.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
