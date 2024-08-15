Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 005E1953D42
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Aug 2024 00:16:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA09060AE3;
	Thu, 15 Aug 2024 22:16:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lhvsLSJIpOYX; Thu, 15 Aug 2024 22:16:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA086608FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723760203;
	bh=VP/YnRUOPzxNV8WE5mKJe+H3Ff4fXhb72Q9sDuEz4gw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sy2bnWAUlvttlUBrIYV9R0l4VSFIbz+e9o9BmfWUE2Y99WHpPP+1Su/9O4rsWGzVl
	 VFVKvLfJFeihoFGW0VOuAm971J8E4VHe8hK2PJaYyVITOIc+/TTSJxC6kYidkkRTwk
	 SnsBiKBsERtU2oA3HnUDKtE6QETywt8NpqrAX6FnvKtGNwyymba0d8RdxekXV7zEHC
	 qZwcuZLFfsiGHvyQ5um0aFSHZcD1sx38kPx1mS/uGAbqX56eEZwyq5wpRGTLJO27E7
	 G5Wf4Cltp8ztW4+p0pPF+kYZSUIboOTMLLmg1S3/nFLof5d6+ezhTAoLTmTVNreYTq
	 XQ2kpps3FO2AQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA086608FD;
	Thu, 15 Aug 2024 22:16:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CD43C1BF325
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 22:16:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C7F2560AD4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 22:16:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mVFXaNihk2aP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Aug 2024 22:16:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CD737608FD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD737608FD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CD737608FD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 22:16:39 +0000 (UTC)
X-CSE-ConnectionGUID: SXcfsOdcQOezVBjjKWltaA==
X-CSE-MsgGUID: y1vwaumcS+e14hlY0/+K9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11165"; a="25844406"
X-IronPort-AV: E=Sophos;i="6.10,150,1719903600"; d="scan'208";a="25844406"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 15:16:38 -0700
X-CSE-ConnectionGUID: xmTa19OmQ2W1nL1/z0+2oA==
X-CSE-MsgGUID: Ta/rQf0wQZ+Mx32M2ZFCbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,150,1719903600"; d="scan'208";a="59510606"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Aug 2024 15:16:38 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 15 Aug 2024 15:16:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 15 Aug 2024 15:16:35 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 15 Aug 2024 15:16:35 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 15 Aug 2024 15:16:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZUlFFCNneOx+6/FTQthH0TN08yBMssRCRWiB2yBYcB34RZOmFsKpH2v4jvgZEyKPnEoqQ3zYgs9ZspiaiSFmfkHVj9MpuhIYZJqtAMqK3kJJ8veWC/dw606OrD2LfcLalFXzNMe9JRwJs77ORlCDqH1l0V2Vy2uULklkdTXZp54jNS0WWumews3Q7KB9bhyPCbBSaV6bAYlaHv1e3IekEh4pPMsdwDk5//OXvSmnBGd3DxNSrDwcl3yrrtcBHti9KOczu1p75fyNiNg9lsjW+KRMcrIcp8NnpVQP1MaX98r5IfqkzenB6pWLEHe2SUwMcQWa1dKb56Dilc0ShsoFjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VP/YnRUOPzxNV8WE5mKJe+H3Ff4fXhb72Q9sDuEz4gw=;
 b=R+668l3DAa7cesX3WS+nAOtuNm0ESzgPnZDMmjym9KX/TGyaiD/DOyrX/8cgV/Mw7GSi3D/cFjR4UYApAcDAi+dy2DCZyQ3ubY+RAY2q8SlfKedEg0mb2puO78l9mAsvg4nDLqqIifEpXEmNjtB5L6z6sTRbs3IGEjTZG86CyqORi6W2fykdKhSbnXGKiGv9WctnLMUrtq198igrNcpUGw0sXyHoF2I6gD0wT+4q7SR5ycNOJuQzxE5o5qP12Tn7KZvy884V21M1eCAGEnNPzKiw8SLOsiicXMIGkkfcLdOXP/c9yGTRyr/xhG0wBCpLpU5JXVR+yXEjFhPw9wi6Wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SA2PR11MB4971.namprd11.prod.outlook.com (2603:10b6:806:118::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.19; Thu, 15 Aug
 2024 22:16:34 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%2]) with mapi id 15.20.7875.016; Thu, 15 Aug 2024
 22:16:33 +0000
Message-ID: <ae085a90-c786-52aa-2351-c7eabdc5292d@intel.com>
Date: Thu, 15 Aug 2024 15:16:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <aleksander.lobakin@intel.com>
References: <20240813125513.8212-1-mateusz.polchlopek@intel.com>
 <20240813125513.8212-7-mateusz.polchlopek@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240813125513.8212-7-mateusz.polchlopek@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR02CA0037.namprd02.prod.outlook.com
 (2603:10b6:a03:54::14) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SA2PR11MB4971:EE_
X-MS-Office365-Filtering-Correlation-Id: 66911367-3d95-443c-deb5-08dcbd77ec01
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L2ZrVll5TEhtc2FTelBzUWpiVXVuSmYyOTRmTFh6V0pLL0lDYkl4bjFhYWl6?=
 =?utf-8?B?THR3VHFCWEJGNVRxd251Vm5PdDN2MUF1dVpiM3BmbEgxYkEzTWthdy9XTUx6?=
 =?utf-8?B?VjFNSXk1SnRaaXRzeVo3UFpJSEoyRzh5YmJib3h6L2hoTk1UZis0ZkczQzRZ?=
 =?utf-8?B?SHJUd1YvbTBGa1VzekxQK1YxaDhYOHBQMmE0cGJveCtHbzFxYVJzZ2JGT3ho?=
 =?utf-8?B?VFV5TWpWd2tvc3JSMGFQVnJLU3lacUwxell2M1dpdXVibURRUzYvUUpwcmkv?=
 =?utf-8?B?bzBHTmFKbmFHQlAzSHRIUFpYVStjZUVSdURiVEVDTkJqN2J6bXlURmE2WFJw?=
 =?utf-8?B?RzNGYW1KdXJTVUdNT1cxTHJ6STBDOC84ZStPdVprK2I2Ly9udGQ4Vmo5cytX?=
 =?utf-8?B?RGMvNVFRQ3FOQjQ0a0hYZWRMMG1HZVI2OXRnU3BWY0dtMVo3TmxIWExXc1ZY?=
 =?utf-8?B?RnhKZk1EOGpxYlRCZTJsNDBTMVNFMklTOWJLc2MvSE5JaldhYlcwWVBVaUsy?=
 =?utf-8?B?bkVIZ2Zzazh6RmN6RTJwY2E5QlgzbnYwaEVoVVJ4dVNIQWhDQ3pSVUduM2dy?=
 =?utf-8?B?THFUeTE4SkVOU0RaTUN0Y1JCVjd5NThsK2MwUVI0d05MbGJyMi9SODJRZHV1?=
 =?utf-8?B?dlVOYkpGZU42K0VwKzR3TE1WTHdCWXBEZHdtS1FzV01keU5MaFRYc1hHcFVP?=
 =?utf-8?B?aVpCbUpHc29kK2k3cGMxVUR1TnZhYllTa0J4QkNVK3pNUitSQ05rNzJlbDhW?=
 =?utf-8?B?dEo4NC9wSW5qT3ExbThCeVpzMzVtSW15NUVOSlMzeU4ya21nLzFkQk1OSjhl?=
 =?utf-8?B?RUNTMWFEYytnR3JxaHBFMFdxMS9hbFBtL0JjNDBFYVVabEppN1hIZkE2cGdF?=
 =?utf-8?B?OTc2a0lQYXBUZTRSTTB5bU1ZQU84Nlo3M2tHdUdKa3hhZXNzTVNxRnh3LzZl?=
 =?utf-8?B?a3c2YjV0TEJPOTdJSmhkUWNtWXJuZkMzR1JLODR6NTQ4OTRkVnZkNW94Rmt5?=
 =?utf-8?B?d3NDR1FqU004NHBNUkpGaklBaFFBdHhKS1FweXNOTDZGU2dnaEY3N1ZFMDNU?=
 =?utf-8?B?bDJwV2IxNStCQ0o0TWI3K2U0bStnWXRKOXRzV1hDV3F2bE52R3FudFhUUk05?=
 =?utf-8?B?WWh6bUNzVHF3OUc4VkZENlM3Njl5TkZYRXR4VStTdnBsdUZEbHpLU3AvbEVt?=
 =?utf-8?B?dHBGS0JJNHZodUZjb3gvS1dITHlrZ011Tm1CUFl3Ky9LWU5wREpvd2lKU3U4?=
 =?utf-8?B?bVdtdWNvc2FtNTdvczh5Q1FuZ202ZGcwNGdNUnVEYlIrU0dNMTNpYkNqNHpB?=
 =?utf-8?B?RFdHVVIzaG4xajZnQ1M3QWVHNi96cGdsZGxRVG55SXhCSS9wUUxNNVExcnRn?=
 =?utf-8?B?Sm9XZTZNdjlSYzBsMFI3a3JmRW9hTDhZVzlMbUJxbXZtQUlSb3BDMldGNnBB?=
 =?utf-8?B?a0M1UEIxeWNEMmF5c1B5ckJWM0VGck4yVTF3VFFYSDVqUW5zYzdGeDF3Sm5Q?=
 =?utf-8?B?aFJGMDhld0RMZE1Ma0xrR3BtWC9ZNGdOZDkvbloyb1lxcEJYWTV4cjRRbnhV?=
 =?utf-8?B?dHl6OU5LQlppUWoyNm1CT3A4a1BVUlBxNy9kNVpnNE9MbGg1R0NKelBwOC9h?=
 =?utf-8?B?TjZtNGcwTS9uTHUvRVUxdkNBQWRHRVhwMWtUMnhsNm00UkFNY05JQzk1cFhh?=
 =?utf-8?B?OWRGRTZPV1NHL0NPeFR6Vk1IV3kybE4wd1ZCdWVya3psbkl2WWpRaEpsZkor?=
 =?utf-8?B?NmRWQkVFbWVQVHgxN0tlcWZNb3V4d0NoYk04UkhnOFNDc09PclZIOUE4Y3RE?=
 =?utf-8?B?cVRJWjQrdmRtZytSRFlPUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZVlrOGRPVE1xRmFNQkFlLzlGYjhBZnpNMlFJN1R6L2ZtVnk1aStjWVhQc215?=
 =?utf-8?B?V05VZ01IaTNpc2RQZmZMNmVPOTNuN2xoNTM4UDZRYVd3ZVFPamhGbWt4R2ZR?=
 =?utf-8?B?Ump1cWswTVJ0dWh1c2FIb2VCOHdaYndOMmx4RTBlbjQ4WVBvZThERitHZ2RK?=
 =?utf-8?B?VkZuejJseDFTKzNTUy9SYXlqUU9CaUJUQldTWWcxVjc5YXo2QmhRZTM0ZkNn?=
 =?utf-8?B?UmM5Zlk5ZUNYbElWZ09FTTlvQ0VLRlJkZjR2RFpkUzM5NWwwREdlVXM3ZnBx?=
 =?utf-8?B?VkRXeDh4OHFEd0ZKN0pvOUVLZDBMcVJjS2ZLQXJUbWhQbi91Y0piQXQzNGpF?=
 =?utf-8?B?MSs5WXJHUXE0dzF1RlRKcUx2dGJiY0I1NktqSW5Jckx1UDlNeU51dnZubWZJ?=
 =?utf-8?B?RE1ZcEJpNy9QMVVBckpLTFJySi9icVN6WlJ5c0xFZ0NldDNFdlVWdUgrRTFp?=
 =?utf-8?B?NENtc0V1RjNKeDJLQW1oUGgwNlJvc2xhZ2xwUXhRejNzS3hOb2RmNnpKM1M3?=
 =?utf-8?B?Vnd2ZHE1VkNOK055Q0VnZnhTYW1vcXRvdnI5K21ac0tqTlBIajV0dkhxdUdz?=
 =?utf-8?B?OXVRWDFFaXpqSnBJd0dmNk5xR2M1clpvRzFHTmh5YlJMMkpkelVPMkh6eWI3?=
 =?utf-8?B?MWZBWUxRRVp2QWdmakY5enMvVXZTcmx4OXl3b01PRXNKZFlMSFJBVmJpazRs?=
 =?utf-8?B?aFd4ejB6dGVLOFFCbE9TQU4zdWxHeUdxZjZ1RDltT0dOZnJyRmM4R3VUMC9C?=
 =?utf-8?B?SFhEN24rc3Axalo5Ynl6Y2JPTk15NkxsTmN6ZVYvaXpPRkcwSkQvUjVRWlFp?=
 =?utf-8?B?K0c0Qk9iazFYMjJtdTVldElYeDVVc0FJRHVuUGZZSXBVMCs3NkZxdU5obUZS?=
 =?utf-8?B?STNjc0tjMWdBZGIyNkRmQUthOVpYQ1ZoREgvK3NuZ3RvMy9mNzlQMmVGbkhB?=
 =?utf-8?B?eWFHbzBhOHVSN1hMZ1ppODNvc1JRVG5LNGdhaTlzOGZmc0psVVpUOEdrVHFm?=
 =?utf-8?B?SlorcFZTM1ExMmtxSndRWjh2cFU0aTI3VDArbzlxNHgvYjR2TkdDREJEeGpT?=
 =?utf-8?B?bTNtTXFTbjZITXVJOWVjYkZsQ2k4WEQ5eC9ZMkM5dGNoZ21wYmdvZzBSTUxw?=
 =?utf-8?B?dlM4S0hWQ2VMOFRKN1VVN0pzQWJKaVNpZjdjdE9EaWtMa1cxNmRiSm94Y3p2?=
 =?utf-8?B?cVNzK3kybFFQMEdDMm5LS25LdFNwMGpVeE9uKytxODN4Ri90Y090YTA3a2Fh?=
 =?utf-8?B?dVdtMk1JYnJtamdDMzlZZ1JCd0ZlZHljbzhpTVVUdysxOXJibE5TY256aVA2?=
 =?utf-8?B?cEZDOXB4OHk2MWFrZk9RMkFnVEx0RTNEL3NiOFpDeFRRL2xlZ2NVelhCQ3p2?=
 =?utf-8?B?dlhjcjMya2tDbmhuYWF6MXU4am4rTDhtWE5nY0E4MmNEeUdSa0RJN2Vsb2VY?=
 =?utf-8?B?UHlWQi9LcFpSYi9sQmhQek95SWJ5UUwyVnc2Y1FvMHdtMDR6eVljT2RsSXNB?=
 =?utf-8?B?M0hpZmlCM09RcXFTL0xGODIyNjZlTTJHTHgzQm9zOTJUSGVPamRacEdSc1dS?=
 =?utf-8?B?Ym8yWENib1pCUEpLRFR1d04zM2tkMXYxWHN6YStWTHNPSnhlVHMydjhhaXhR?=
 =?utf-8?B?VEJyb2hrVm92cHQyRzF4VjVQUVJRQm05TnBHZFRITzdwdDlvNE4zalVOcm1r?=
 =?utf-8?B?UWtzdXJSUDE1VU9jNk5CbmdaK1luSC9tQ0dKT0FvYVlwR3dTKy83cjJCN1px?=
 =?utf-8?B?SWh2ZHpURjdtVUdtZXhNaGNuMEVRQUt0MXBKODJxNmdqQ0s4Wm11M2xqSlR3?=
 =?utf-8?B?eUJGVDh6TzkrWFhaVVVEUXI3SUVmTVUwMWNxYzltbkpIcURLZmRzVHNLVVNG?=
 =?utf-8?B?aGVuZ1dxWEV0akxpT1NHVm5uaDZpRFJKNThlaXFEdHhMUUswTEVKQ1ZPWG0y?=
 =?utf-8?B?SngxOUx4NWRqNFJlTlZKY0ZRN2hiSml5Uk10cXQ4OG81NE9KMzNQazFJb2pa?=
 =?utf-8?B?OGZsK2Q0SUJvb2ptVU5jZVZmNGZQdU41RG1MZzcvUFpzZlRrRy8wRDcwOVZn?=
 =?utf-8?B?aTFFc1FnaXFZTGswVk40UGYrZTIvTEJXd1huRzJNMHRUMU5IeEF1UDQ5SU40?=
 =?utf-8?B?OE9rc3ZLVHlwUGlCVHJ0SU0rWWRETnRISHQxbld4eWMzUEp4VmZyYmsxVzBR?=
 =?utf-8?B?QVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 66911367-3d95-443c-deb5-08dcbd77ec01
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2024 22:16:33.8974 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uJfxKmR+wkoK2uNTYFyyfOuGf3F87PSxOkTxIB1chntZPiKhNduSk4WMYShq+jo1r+LZHUUBQvIrWIkiq66yxByMmxO4yVi4b9WOX6VsKqA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4971
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723760200; x=1755296200;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tEd4oHD2dZHp5p+y0NlDXL4Vtp76q6Sx8LEKKwQ0nW0=;
 b=k9Ij3wneecGfG9FsHesD9u2eyGzNGn29N3Wwwt19UmdRkmpT9LEdmscU
 +Dzt1ojRnXXD6G7BwHnC+CJvrD8z8L880yyILWoVtg8muFdTbI18fqvKO
 o3+8+QFHMdZFzUaA1yYMzZzf5JWhrxadFcC7iyLnkif6rniSslOL+SPhx
 neiKC6fAGXvI070Iqzp43Wy4BnWO/+F/0AjOCXYV0zRYHEszKU3ZIEMcN
 HuCPEUJU0HYDoDlzR0s5odjXDXa9h4LcypWf5F3UQXJVGchupnitXLQ5k
 gE0x3IsP8j/gXh/nm8r13WmAwjUpBfotVcE0MS1EM6Kt5Ks9Ep5PaCQiI
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=k9Ij3wne
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 06/14] iavf: add initial
 framework for registering PTP clock
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 Sai Krishna <saikrishnag@marvell.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 Simon Horman <horms@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/13/2024 5:55 AM, Mateusz Polchlopek wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>

...

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.c b/drivers/net/ethernet/intel/iavf/iavf_ptp.c

...

> +static int iavf_ptp_register_clock(struct iavf_adapter *adapter)
> +{
> +	struct ptp_clock_info *ptp_info = &adapter->ptp.info;
> +	struct device *dev = &adapter->pdev->dev;
> +
> +	memset(ptp_info, 0, sizeof(*ptp_info));
> +
> +	snprintf(ptp_info->name, sizeof(ptp_info->name), "%s-%s-clk",
> +		 dev_driver_string(dev), dev_name(dev));
> +	ptp_info->owner = THIS_MODULE;
> +
> +	adapter->ptp.clock = ptp_clock_register(ptp_info, dev);
> +	if (IS_ERR(adapter->ptp.clock)) {
> +		adapter->ptp.clock = NULL;
> +
> +		return PTR_ERR(adapter->ptp.clock);
> +	}

cocci reports:
+drivers/net/ethernet/intel/iavf/iavf_ptp.c:47:9-16: ERROR: PTR_ERR 
applied after initialization to constant on line 45
