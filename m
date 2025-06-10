Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B3759AD46DB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Jun 2025 01:38:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D0756135A;
	Tue, 10 Jun 2025 23:38:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5j50ErKT1HhI; Tue, 10 Jun 2025 23:38:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A8FD6616D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749598691;
	bh=28qGNyjKajQNaSOfhwRRU6qb2nxWtZT/BWiB+cuMvJQ=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FbVcjZt6G4oci+/fMsgqpTuLBp2akvdmhLkOSD5e/xUQROT4KT5P2FCneM7SuaHVE
	 ULO6R6X/lam5HwwNU0SNDNAASLcONJTgewPBQ1srBg/yIVDTPb9sWBDORX8NlH7Q0/
	 UQ+LzDefVFI1DCpVHy4y3KaVmL3Z0p5HYI7WUnTlAX6NTmRAoBm3g7xmAI2gq9fQrl
	 IGhHZuga98PXSuVGPqaJGqA+NUfu/0olhAfsqVZnKl1QxryOf0f4tsagEeL/IhRVol
	 SsuFGLxMAdWG6Nc8RIExC94DTU0D/9IAS3c/p3BRQsucz+a+fRILzhmGpkBHMd7xk5
	 SOsPLuZP6sUGA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A8FD6616D0;
	Tue, 10 Jun 2025 23:38:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 43CE7237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 23:38:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 24827400F9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 23:38:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uiN_wSBVIc8r for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Jun 2025 23:38:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 96AE041D98
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 96AE041D98
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 96AE041D98
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 23:38:06 +0000 (UTC)
X-CSE-ConnectionGUID: 56VOZc65TYuL1EkV2HGm2Q==
X-CSE-MsgGUID: bK7J4ETIQH+NK0f8L5qb1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="63138873"
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="63138873"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 16:38:05 -0700
X-CSE-ConnectionGUID: Wxi+9lWyRpmQ4SiIeiysUA==
X-CSE-MsgGUID: DUliwoYgSSO9n4zOGegFlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="147919056"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 16:38:05 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 16:38:04 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 10 Jun 2025 16:38:04 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.87) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 16:38:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OGF+AsQyogJEyqf5uNqeTOhoPLjEYDI7fpJBcN2bMYPpvUj51GF/B25YhVJ+yWYe5nlhfnx/G+Yl2vaBKEASXqzXWWtho7Cnfb8WaG3TarkQ1xW9smzFcZttLWdTP4NvAus7lk4ilOVFo1z5Ck+PhAsd2V5p7g+hr1jud4ol6nLBfjSVRidLujKcWpWV4cb+BY8pO9EtO9R4gIMxZJqofc0XB24kfJR7H6NhQK6uUSMBqO0JCLtTxQbN9LkzLTI+iWYHwxqUnXCrrXBlGMzEcGJHHuGuARfbRaGiiiTURwV8y/s2wdNZCrZUDHi+gLlLxEJJAqGIb+fsnnSWt0mcng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=28qGNyjKajQNaSOfhwRRU6qb2nxWtZT/BWiB+cuMvJQ=;
 b=gPu965FtdEMZ6zrSUHKxXmdAILFpaKAoii1tshxtWmzZ04HvxIJK27j2IY/uTtNPvJQeZUI9nj2gPUH6GdfvD9GjOdY4Qx+WimuHZ8Y8CE6DjiuzJhHZX20UavcNnR3UsCKWl5yfsAoxEsj9BRa4U5fvYTuy2jckuV/LvbJNdqeXSrLCpf0livGo+Is3hI2xErEd5WM2JzgsBFkQuMih9ySNWvbDHJSd9kZIe2M5TGvMEGjZxzSJo7ZhTcItP9Sl7W1xiZlFyPr3dt0Io68u0bTYU1ql6QqbCh+G2zm5fXM1EvTPdCzLe2mpB9W8DDzByJSlO4/OWdpw3k/y5GmsKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5140.namprd11.prod.outlook.com (2603:10b6:303:9e::21)
 by CO1PR11MB5201.namprd11.prod.outlook.com (2603:10b6:303:95::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.27; Tue, 10 Jun
 2025 23:37:47 +0000
Received: from CO1PR11MB5140.namprd11.prod.outlook.com
 ([fe80::6a5:f5cc:b864:a4c0]) by CO1PR11MB5140.namprd11.prod.outlook.com
 ([fe80::6a5:f5cc:b864:a4c0%5]) with mapi id 15.20.8835.018; Tue, 10 Jun 2025
 23:37:46 +0000
Message-ID: <e32ef1e3-c737-46e9-9a0f-f80026182183@intel.com>
Date: Tue, 10 Jun 2025 16:37:45 -0700
User-Agent: Mozilla Thunderbird
From: "Greenwalt, Paul" <paul.greenwalt@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, "Aleksandr
 Loktionov" <aleksandr.loktionov@intel.com>
References: <20250313134606.116338-1-paul.greenwalt@intel.com>
 <aD7E5SdLXvhDGlFI@boxer> <e2b9adb8-c53d-465e-b351-746fb232248c@intel.com>
 <aD9CzG+w8AMtHRoD@boxer> <4702c755-c306-4780-aae1-3a940635f224@intel.com>
Content-Language: en-US
In-Reply-To: <4702c755-c306-4780-aae1-3a940635f224@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW2PR16CA0050.namprd16.prod.outlook.com
 (2603:10b6:907:1::27) To CO1PR11MB5140.namprd11.prod.outlook.com
 (2603:10b6:303:9e::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5140:EE_|CO1PR11MB5201:EE_
X-MS-Office365-Filtering-Correlation-Id: ddb88b99-062d-47ca-4770-08dda877cdda
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MXhuY3hpN1JmVmVMdHlTT296ZW5WaDVhRlFxdEozZ3VTTGsvSWg5Y1BPQ1Ur?=
 =?utf-8?B?VDNqc0N6MGFFdFJiRmY5UDY1WmZBRjFqZUNRRzlMTGVSTjJ5bXQxS0phUnVN?=
 =?utf-8?B?U3J1NnZCTXZVblVSZTJnUmtDbjlZWFdaQzB2Z0I3QXA0RXpHQzlHR1Q0ZFhh?=
 =?utf-8?B?L3lFNDduMkE0ZzFBTThtTjVoWkhabTJwWTlKZnJVRlJRdmZzNktMbDRqaVY2?=
 =?utf-8?B?TlBDbS9td1RxakNKeEJSaFlNNEF5QzhKU213a1BuTng0V2p4SFhKL0QxNHJZ?=
 =?utf-8?B?OStLOHlmNjN5M1BWMXdHOEpjZjN2U2QrbHBqUGJTWjA3eGcwbUhmbVdiMDJT?=
 =?utf-8?B?Tk95RXp5TFNQV1V1b2R1d2hPYkNNS0tCTnU4OVhQbEMxUVR6Tk5xNG5KY3Uw?=
 =?utf-8?B?QS9LU21MdVBTdHRFNTcwYU96S3RXQTRubVZhSFlNeXAzdTZnZ05RWXMzZElH?=
 =?utf-8?B?L1hZWUdoU2NYcVhrcm5GYTJBYlpMdXFEcDlwZUZFS0FETVlnNjNwM0xLdlBN?=
 =?utf-8?B?bTdMTng1VjBGWUdPaFpuYmJqL3RYa1BYNWRmS1kvRUhpekp0U2IzZklnZGVJ?=
 =?utf-8?B?N00vNnJQN2hJaXl6cjdqRkQ3SW1sWFJZRHd1MmREdU5zSWxSdW41ZHRIbUQ2?=
 =?utf-8?B?OTByZ2lQNnpDdklQMS9BbGF1K1pNTUV5VEdFUU54dHhoNDBlY0VQa2hOdXNK?=
 =?utf-8?B?bi9BbFRpa0hyRU1iVDU3UCtKV2JwRlJjMlovYlUxZW8xTVgxRTRVM25STTRM?=
 =?utf-8?B?bGVsTDBZdm9EQUJxUHlIOUlUYXVuV0VuMCtNcG5iZ2cwVHJCKytnNHpOZ0Nw?=
 =?utf-8?B?Vlo4TzlnVEhyOGN3RENPYzVrWnpkK0w2NzMyY0ZqMTVocGIzV1ljL0Z0YzJD?=
 =?utf-8?B?WXl5NTRtZkk3MExPRDQxUUJMdVQrbzk2L29MVG5jNnRZaXlyNndHUFJVeWcz?=
 =?utf-8?B?citVNno5NWJWdE5NZ1hpYjFFSk9JenNLYUdaMzVPNzc2ajRqdUxWMmJ2VjVi?=
 =?utf-8?B?WWJndWtjWm5NQ0t2dTRYQ3pkQUROcGJROUtNODZ5ZDhVYmJVK1k4ditzUU55?=
 =?utf-8?B?WUt0cmRKY0RqZlpVeWNPdEszT215VHJOWmhsY2o4ZmF2L2RnSVRSWGJkYThB?=
 =?utf-8?B?bDc1bzZNUHVXbEE5QU1qUUxML3NJODFCYm9nYXVDZEZBTVFwMWRFTVNFS1E0?=
 =?utf-8?B?NGRvWXEyK0NXWk45Zm83cVQ5ZklrOEljcG1iZW9vYmFsQ0U1ZG1Gd2YvVmtY?=
 =?utf-8?B?U1NrYWptOENPZEM0SytJclhpaG1YM0NOaVEzeWI1WU93TldkNmJMbFlYd0JE?=
 =?utf-8?B?WnA2dlBPbkdCV2Y1R2ZiTW9tTGxMZVpJRTdpVFRiTmoyVm05a2I1ZGU2UUV1?=
 =?utf-8?B?ZmJ3RFRUNHN4NU8rdEhHL2M2eElYWi9oNVY3Qm1SNDR6cGZkUEswUHc0bWdx?=
 =?utf-8?B?N2NHNGtjUzdWa0dUUFJYR2pncDEyQW9uL2FWWU5Icjd6WHBMU1Ntek50NTU2?=
 =?utf-8?B?bElMVURpVVA0Vk5KcStndnVPd3hoMFhzdmQ1MmVianFuSzdsbnNZTnpsK1Fo?=
 =?utf-8?B?S0lUVFF0V3pmajJIU1d6c2JvQ2hkdUkvRThtcU9hbHdjUjFSL1VndjE1ZGZ5?=
 =?utf-8?B?VU44S3FGNlBFVHVBbHpXSWdqdXM2d0pqSXpJMzA1eWptc3F2NWlFSDZOVFM0?=
 =?utf-8?B?RVRWMURLYWtMVFUvM25rczZtYm0yR1NEQ3UrMHV5cVpXWStUYjJFREhsUWwv?=
 =?utf-8?B?ekE2ZWR3eEdmdFg0M0FmRk5zYml6UHVteEg4UnJ6LzVJQXNhTCtMQTRPVkRN?=
 =?utf-8?B?MnVzU3phNUE0SDBHaFZyQjhUMjZ4bWc3SGRaaS9hQUI4cFdLQWpNRSt6UVZU?=
 =?utf-8?B?a1BJZEdXeXd3RjFYaHlOQ0E4aHQ1VEdhZlBLTmJ0MTd0cGVyR2JHRk94Wmpi?=
 =?utf-8?Q?23+iu21mTVI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5140.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QW5JTVRJSnRDK3pDTW1iRjdFc2hrRERiYndkMStuQVJxQXMzdlFqK0NBL0s4?=
 =?utf-8?B?ajZjc0lkRjB4aHJ3OXFNSmRwRGUvN3VhR2g4c0t6WENpZnFWdFYxY0NQekN2?=
 =?utf-8?B?YjEvQ0ZYbnpaNkw3V0xhMU1wODVKZDlhN1hBZCtoZFFJWDRsbTEvTWJudHc1?=
 =?utf-8?B?bGNOQzRIMzYwZW5EalpUb2JBRjNKYzk1N0p1NE1yMVZGNjI2MDNvNGpVNlhn?=
 =?utf-8?B?eFlnQXNFdHR4MjNGWjVlWTNFOXFyYmlMTFpzZ1A4VFo4c24rM3FsRlpISDFr?=
 =?utf-8?B?cWgwbUhxUVZva0EySTdVRmJ5RVhqNTF1ZFFnb3hoSWRzUUJoandFSTBJNmp5?=
 =?utf-8?B?WC9aYi9QdWIwZDdJZlg5dzlFWDRCVjc4YmtjYzV2R3A5YStEUnp2bUF3V21Y?=
 =?utf-8?B?VDVHaGp6U0N3cFhodFl4Z1RSUWkzNCs2Y0dRaTdpMTBNNFN5Q2JENFF3OEZt?=
 =?utf-8?B?S2UwMmxDaTlVTzJ2UHJQSjJSeHd5M1VTUk92akYzSkdiMHRtTTdnZGZySTFn?=
 =?utf-8?B?bjMyOVJ3dWhhTHRhVG5jZ25DZ3JScHlSZlJyY2ZTYWFlbFczcTloT3BMV2lO?=
 =?utf-8?B?V0ZDV05TQzFUSFdlMTFYMk9rTWdTeno4L0xDamN5UHhFTDRFMFU3a0tQZ0Ns?=
 =?utf-8?B?NmFQbHFiQmozUjlEcUN0NTFsbFhJbGs2elRrRXhxZzZpRjlRbUZmY3dBY1dt?=
 =?utf-8?B?eGQ4YUxLNERNT0J3d2gxa2Q3OUNKVnNNSWFHY2V1eTBCem1JWUhsbERXWUla?=
 =?utf-8?B?eEljTWVQQXM1d0lzN1c5eko1ZGRQeDVCeWVMNDdTdU5KM2J1eXJiaG5oQW5q?=
 =?utf-8?B?U3E0OUgyMHAyTVFMb0wzbjY3OG8wYlJrK0NCVzZrT3k2UkZIRlpsb0cxNm44?=
 =?utf-8?B?bm1sekJzczRrd21QQWJVMTJhWHN6STYyaWlxcE9vMGRMOGIvWFpycE8rdVVZ?=
 =?utf-8?B?SGhqay9nWG8wUVFrYlpJMEFxbUV4MWtQZkxzd3VzVW5sdXpnR2RlYk5MeHRj?=
 =?utf-8?B?cUZ4MjZIb0Ryd3lSKzhKeENDVjJ3a21Ud25oSlpTc0MySnVIZ203ZXVIZEZ2?=
 =?utf-8?B?VlZ5ZzRoZ24rTmhxVEEzM0pIWlNEdWplSHpIaWFBWmF0RURrdXBkWU1KZmxa?=
 =?utf-8?B?VW1LTTlSSjRjS1R5dFYzUUtpUEcyWnYrL1FoYW9HV2FyR2Fvb05VUUlOaDJt?=
 =?utf-8?B?MFM0NVRXZ3hoVXZlK1dhUXkxdGpDb1RDZG9yVEkwMEZlRlBhL0s5YXoyQ3JS?=
 =?utf-8?B?VnQ5UlJ3d3k1RVRaTTY3bzY3dXE1UXdneXFrNys2Rm5xMFVCWHBGVFM1NDBO?=
 =?utf-8?B?V0ttSHVIMDd2Y084RzZzU3ZCMk8zaEtVUHpvb2N3MW5ySGNXZ0ZzVXYrMUV6?=
 =?utf-8?B?RWRGT2VYQmhlMG1TUk9KWSs2cDgwK1A4bnJXK0VTcGFhN1M0VXhhSktlWnlT?=
 =?utf-8?B?V0JCL1lEN0ZFamNNWDdJZnVLeGI3aW1lMmJacmFBN1FTNE4xQXhYYVVlOHh2?=
 =?utf-8?B?SmYxdVNnODdEc3VhS0FOeWhzcEZSeEE0QU52NEtnUHFmYlJvMHkrZ1B6S2s3?=
 =?utf-8?B?dzgyaHd3MEtYRHNDU3VSK2llQ2NRR254OEpPWEdnSi90Y0ZFb0ROQ0d3WkFM?=
 =?utf-8?B?dkIzNlAzdXQrcFBDMHRuNEtoalZyVTR3dC96aVFBTDJVZVVVSkQrM2lxTXVo?=
 =?utf-8?B?MUJNNGhsQlFUcGtveWpIeFJWWDgwcE0ycW9ZdFdXbVh6Nk12SElPNjFNUnhv?=
 =?utf-8?B?T2Irb0pOYkRMRDlXU0N0aWxhWXpaUWdaeFlpRUtHZWF4NGVPUDlQMkVxektC?=
 =?utf-8?B?cnpyVVdPSHZ6eERUaGZCWmVoY1A4UlRyWEsvV1RMK0o2UEZmVzVPMlJqeTZO?=
 =?utf-8?B?S3Jhc0hGRVcyb0ZCQjVFNm1jS1V4bEFYUkZvWFNWckVHWWNvcytIYkp1UGhC?=
 =?utf-8?B?MzFkdWlOUkQ4ZzVCT0t2d25yQTJxcDRaejhMQW9pRE5vS0xQd1pUS2hFRVoy?=
 =?utf-8?B?VXlzYzZXWHJCTndJTzJDN3llRmNPUjEyMVoxRjlRTlQ4Ymx6a28xYmFkdGx6?=
 =?utf-8?B?ekNKTldGbmllenlQQzVLSmJ3M1ZMSEZMOGluMHRZTXB4Nk8rWlM2TjJDa3lk?=
 =?utf-8?B?RzBEWEdmYnNIVFlNL212WXZzWXFBdkpDZTcyRUJDWC9kTkVqdXU2WThLUHZV?=
 =?utf-8?B?Z2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ddb88b99-062d-47ca-4770-08dda877cdda
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5140.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2025 23:37:46.7937 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fsCZfQ9w/4k2fTtyvS8JdCeWxJbPhFvECuVioXoiOo3c1eMZPFRq/jo5EJVSZSOAvEfe8nUwxVb9UbhPOtsixD9GBpfzeA5z1iizJPIglWI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5201
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749598687; x=1781134687;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZK4aNjv9t8gVuqbHJvNa8zKdWtdvrQsVHwiwZp/nlLQ=;
 b=kFHmex+VCo6rztIAcYStmoJgwRrldjy5oK7R64YVJevGZVR7tF167xDL
 aI7BM0eKGyHgL0oHkVFzQ0s3teFZFaD69npY/UdcHfDF7jxaYY2xUsFvi
 T3R1rPrPn5UKIrzU+S+gux4XGL9sFcTEgcKZ/Z/akLttRP3o/8Sv2PP2A
 HmfLBb6jucOqpn12upsYVGyPl550NiTni0I/Ah50rnZsOoALuGQXoB6AV
 USYzP45/oj1Sk+2GZK7GTkhQJLUk1KIkR2kZD9M8Q0nDwge3uunDTPNsF
 EyPbbQ3Am1O0WPXT0MYRo8BkypquIZwnInbTT/vD68pEKGV3HmdLxLr0m
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kFHmex+V
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: add E830 Earliest
 TxTime First Offload support
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



On 6/6/2025 2:43 PM, Greenwalt, Paul wrote:
> 
> 
> On 6/3/2025 11:45 AM, Maciej Fijalkowski wrote:
>> On Tue, Jun 03, 2025 at 09:38:43AM -0700, Greenwalt, Paul wrote:
>>>
>>>
>>> On 6/3/2025 2:48 AM, Maciej Fijalkowski wrote:
>>>> On Thu, Mar 13, 2025 at 09:46:06AM -0400, Paul Greenwalt wrote:
>>>>> E830 supports Earliest TxTime First (ETF) hardware offload, which is
>>>>> configured via the ETF Qdisc (see tc-etf(8)). ETF introduces a new Tx flow
>>>>> mechanism that utilizes a timestamp ring (tstamp_ring) alongside the
>>>>> standard Tx ring. This timestamp ring is used to indicate when hardware
>>>>> will transmit a packet.
>>>>>
>>>>> The allocation and initialization of the timestamp ring occur when the
>>>>> feature is enabled via tc-etf. Since the timestamp ring and Tx ring are
>>>>> tightly coupled, both must be configured simultaneously.
>>>>>
>>>>> To support ETF, the following flags are introduced:
>>>>>
>>>>>  - ICE_F_TXTIME: Device feature flag set for E830 NICs, indicating ETF
>>>>>    support.
>>>>>  - ICE_FLAG_TXTIME: PF-level flag indicating whether ETF is enabled on any
>>>>>    Tx queue. It is checked during ring allocation to determine if timestamp
>>>>>    rings should be allocated and is also referenced when modifying queue
>>>>>    count via ethtool -G.
>>>>>  - ICE_TX_FLAGS_TXTIME: Per-ring flag set when ETF is enabled and cleared
>>>>>    when disabled for a specific Tx queue. It helps determine ETF status
>>>>>    when transmitting timestamped packets and is used by ice_is_txtime_ena()
>>>>>    to check if ETF is enabled on any Tx queue.
>>>>>
>>>>> Due to a hardware issue that can result in a malicious driver detection
>>>>> event, additional timestamp descriptors are required when wrapping the
>>>>> timestamp ring. Up to 64 additional timestamp descriptors are reserved,
>>>>> reducing the available Tx descriptors.
>>>>>
>>>>> To accommodate this, ICE_MAX_NUM_DESC_BY_MAC is introduced, defining:
>>>>>
>>>>>  - E830: Maximum Tx descriptor length of 8096 (8K - 32 - 64 for timestamp
>>>>>    fetch descriptors).
>>>>>  - E810 and E82X: Maximum Tx descriptor length of 8160 (8K - 32) .
>>>>>
>>>>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>>>>> Co-developed-by: Alice Michael <alice.michael@intel.com>
>>>>> Signed-off-by: Alice Michael <alice.michael@intel.com>
>>>>> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
>>>>> ---
>>>>> Changelog:
>>>>> v2->v3:
>>>>>  - Fix const compiler warning.
>>>>>  - Fix spelling error in function header.
>>>>>  - Fix Changelog verions number.
>>>>> v1->v2:
>>>>>  - Resolve patch apply isue.
>>>>>  - Fixes RCT, zero struct initialization, move bailout condition to top
>>>>>    of function, removed unnecessary newlines, and added use of
>>>>>    str_enable_disable.
>>>>> v1: https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20250227111333.30675-1-paul.greenwalt@intel.com/
>>>>> ---
>>>>>  drivers/net/ethernet/intel/ice/ice.h          |   9 +-
>>>>>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  53 +++++
>>>>>  drivers/net/ethernet/intel/ice/ice_base.c     | 212 +++++++++++++++---
>>>>>  drivers/net/ethernet/intel/ice/ice_base.h     |   1 +
>>>>>  drivers/net/ethernet/intel/ice/ice_common.c   | 118 ++++++++++
>>>>>  drivers/net/ethernet/intel/ice/ice_common.h   |  10 +
>>>>>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  61 ++++-
>>>>>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |   3 +
>>>>>  .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |  42 ++++
>>>>>  drivers/net/ethernet/intel/ice/ice_lib.c      |  45 +++-
>>>>>  drivers/net/ethernet/intel/ice/ice_main.c     | 174 +++++++++++++-
>>>>>  drivers/net/ethernet/intel/ice/ice_txrx.c     | 129 ++++++++++-
>>>>>  drivers/net/ethernet/intel/ice/ice_txrx.h     |   4 +
>>>>>  drivers/net/ethernet/intel/ice/ice_txrx_lib.h |  14 ++
>>>>>  drivers/net/ethernet/intel/ice/ice_virtchnl.c |   2 +-
>>>>>  15 files changed, 823 insertions(+), 54 deletions(-)
>>>>>
>>>>> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
>>>>> index 2694951a0b1d..43a34e3fa762 100644
>>>>> --- a/drivers/net/ethernet/intel/ice/ice.h
>>>>> +++ b/drivers/net/ethernet/intel/ice/ice.h
>>>>> @@ -83,7 +83,11 @@
>>>>>  #define ICE_BAR0		0
>>>>>  #define ICE_REQ_DESC_MULTIPLE	32
>>>>>  #define ICE_MIN_NUM_DESC	64
>>>>> -#define ICE_MAX_NUM_DESC	8160
>>>>> +#define ICE_MAX_NUM_DESC_E810	8160
>>>>> +#define ICE_MAX_NUM_DESC_E830	8096
>>>>> +#define ICE_MAX_NUM_DESC_BY_MAC(hw) ((hw)->mac_type == ICE_MAC_E830 ? \
>>>>> +				     ICE_MAX_NUM_DESC_E830 : \
>>>>> +				     ICE_MAX_NUM_DESC_E810)
>>>>>  #define ICE_DFLT_MIN_RX_DESC	512
>>>>>  #define ICE_DFLT_NUM_TX_DESC	256
>>>>>  #define ICE_DFLT_NUM_RX_DESC	2048
>>>>> @@ -201,6 +205,7 @@ enum ice_feature {
>>>>>  	ICE_F_SMA_CTRL,
>>>>>  	ICE_F_CGU,
>>>>>  	ICE_F_GNSS,
>>>>> +	ICE_F_TXTIME,
>>>>>  	ICE_F_GCS,
>>>>>  	ICE_F_ROCE_LAG,
>>>>>  	ICE_F_SRIOV_LAG,
>>>>> @@ -332,6 +337,7 @@ struct ice_vsi {
>>>>>  	struct ice_pf *back;		 /* back pointer to PF */
>>>>>  	struct ice_rx_ring **rx_rings;	 /* Rx ring array */
>>>>>  	struct ice_tx_ring **tx_rings;	 /* Tx ring array */
>>>>> +	struct ice_tx_ring **tstamp_rings; /* Time stamp ring array */
>>>>
>>>> Hi Paul, sorry just stumbled upon this.
>>>>
>>>> Can you elaborate why it needs to be a separate array of rings?
>>>> All of the usage seems like a better design would be to carry a pointer to
>>>> tstamp ring within ice_tx_ring.
>>>>
>>>> You're abusing the interfaces which work on array of Tx/XDP rings by
>>>> passing this additional array.
>>>>
>>>> Either work towards:
>>>>
>>>> 	return ice_vsi_cfg_txqs(vsi, vsi->tstamp_rings, vsi->num_tstamp_rings);
>>>>
>>>> and so on or carry the pointer to tstamp ring. Right now it's a mix of
>>>> both.
>>>>
>>>> You're configuring these tstamp rings for xdp rings as well? why? they're
>>>> never utilized from XDP path.
>>>>
>>>
>>> Hi Maciej,
>>>
>>> I agree this would be a better design and I will look into carry a
>>> pointer to tstamp ring within ice_tx_ring, and removing the tstamp rings
>>> configuration for xdp rings.
>>>> Does this need to be reflected on Tx scheduler?
>>>
>>> Could you expand/clarify this question.
>>
>> Yes - these tstamp rings are not software constructs but they do consume
>> HW resources, correct?
>>
>> What I meant was do we account these rings from HW resources. For example
>> from XDP PoV it's important as we need to know if we would be able to
>> provide XDP ring per CPU.
>>
> 
> E830 tstamp support is limited to the lowest 2k Tx queues (0 to 1999),
> similar to E810 and E830 LSO support. The device’s NVM restricts the
> total number of Tx queues to 2k. The driver accounts for this hardware
> limit by only allocating up to 2k Tx queues, ensuring that features like
> XDP can assign a queue per CPU as long as the number of CPUs does not
> exceed 2k.
> 

Hi Maciej,

Thanks for the feedback. The reason for using a separate array for
tstamp rings is a hardware limitation: the tstamp ring must always have
more descriptors than the corresponding Tx ring, so there isn’t a strict
1:1 mapping. This is due to the hardware’s fetch profile and MDD
prevention requirements (mentioned in the commit message).

Because of this, it’s not possible to simply add a `tstamp` pointer to
each `ice_tx_ring`—the relationship isn’t direct, and the tstamp ring
may be shared or sized differently.

Regarding the interface, I agree that passing an additional array can be
confusing. If you have a suggestion for a cleaner way to handle this
(e.g., a new structure or abstraction), I’m open to it.

For XDP, tstamp rings are only allocated if ETF is enabled on a queue;
otherwise, they are not used or referenced in the XDP path.

Let me know if you have further suggestions or if you’d prefer a
different approach for managing the tstamp rings given these hardware
constraints.

Thanks,
Paul

>>>
>>> Thanks,
>>> Paul
>>>
>>>>
>>>> No further comments below but I'm keeping the contents in case of future
>>>> discussion.
>>>>
>>>>>  	struct ice_q_vector **q_vectors; /* q_vector array */
>>>>>  
>>>>>  	irqreturn_t (*irq_handler)(int irq, void *data);
>>>>> @@ -516,6 +522,7 @@ enum ice_pf_flags {
>>>>>  	ICE_FLAG_GNSS,			/* GNSS successfully initialized */
>>>>>  	ICE_FLAG_DPLL,			/* SyncE/PTP dplls initialized */
>>>>>  	ICE_FLAG_LLDP_AQ_FLTR,
>>>>> +	ICE_FLAG_TXTIME,
>>>>>  	ICE_PF_FLAGS_NBITS		/* must be last */
>>>>>  };
>>>>>  
>>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>>>>> index bdee499f991a..2eaa4ab8e791 100644
>>>>> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>>>>> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>>>>> @@ -15,9 +15,11 @@
>>>>>  #define ICE_RXQ_CTX_SIZE_DWORDS		8
>>>>>  #define ICE_RXQ_CTX_SZ			(ICE_RXQ_CTX_SIZE_DWORDS * sizeof(u32))
>>>>>  #define ICE_TXQ_CTX_SZ			22
>>>>> +#define ICE_TXTIME_CTX_SZ		25
>>>>>  
>>>>>  typedef struct __packed { u8 buf[ICE_RXQ_CTX_SZ]; } ice_rxq_ctx_buf_t;
>>>>>  typedef struct __packed { u8 buf[ICE_TXQ_CTX_SZ]; } ice_txq_ctx_buf_t;
>>>>> +typedef struct __packed { u8 buf[ICE_TXTIME_CTX_SZ]; } ice_txtime_ctx_buf_t;
>>>>>  
>>>>>  struct ice_aqc_generic {
>>>>>  	__le32 param0;
>>>>> @@ -2218,6 +2220,51 @@ struct ice_aqc_add_rdma_qset_data {
>>>>>  	struct ice_aqc_add_tx_rdma_qset_entry rdma_qsets[];
>>>>>  };
>>>>>  
>>>>> +/* Set Tx Time LAN Queue (indirect 0x0C35) */
>>>>> +struct ice_aqc_set_txtimeqs {
>>>>> +	__le16 q_id;
>>>>> +	__le16 q_amount;
>>>>> +	u8 reserved[4];
>>>>> +	__le32 addr_high;
>>>>> +	__le32 addr_low;
>>>>> +};
>>>>> +
>>>>> +/* This is the descriptor of each queue entry for the Set Tx Time Queue
>>>>> + * command (0x0C35). Only used within struct ice_aqc_set_txtime_qgrp.
>>>>> + */
>>>>> +struct ice_aqc_set_txtimeqs_perq {
>>>>> +	u8 reserved[4];
>>>>> +	ice_txtime_ctx_buf_t txtime_ctx;
>>>>> +	u8 reserved1[3];
>>>>> +};
>>>>> +
>>>>> +/* The format of the command buffer for Set Tx Time Queue (0x0C35)
>>>>> + * is an array of the following structs. Please note that the length of
>>>>> + * each struct ice_aqc_set_txtime_qgrp is variable due to the variable
>>>>> + * number of queues in each group!
>>>>> + */
>>>>> +struct ice_aqc_set_txtime_qgrp {
>>>>> +	u8 reserved[8];
>>>>> +	struct ice_aqc_set_txtimeqs_perq txtimeqs[];
>>>>> +};
>>>>> +
>>>>> +/* Operate Tx Time Queue (indirect 0x0C37) */
>>>>> +struct ice_aqc_ena_dis_txtimeqs {
>>>>> +	__le16 q_id;
>>>>> +	__le16 q_amount;
>>>>> +	u8 cmd_type;
>>>>> +#define ICE_AQC_TXTIME_CMD_TYPE_Q_ENA  1
>>>>> +	u8 reserved[3];
>>>>> +	__le32 addr_high;
>>>>> +	__le32 addr_low;
>>>>> +} __packed;
>>>>> +
>>>>> +struct ice_aqc_ena_dis_txtime_qgrp {
>>>>> +	u8 reserved[5];
>>>>> +	__le16 fail_txtime_q;
>>>>> +	u8 reserved1[];
>>>>> +} __packed;
>>>>> +
>>>>>  /* Download Package (indirect 0x0C40) */
>>>>>  /* Also used for Update Package (indirect 0x0C41 and 0x0C42) */
>>>>>  struct ice_aqc_download_pkg {
>>>>> @@ -2718,6 +2765,8 @@ struct ice_aq_desc {
>>>>>  		struct ice_aqc_dis_txqs dis_txqs;
>>>>>  		struct ice_aqc_cfg_txqs cfg_txqs;
>>>>>  		struct ice_aqc_add_rdma_qset add_rdma_qset;
>>>>> +		struct ice_aqc_set_txtimeqs set_txtimeqs;
>>>>> +		struct ice_aqc_ena_dis_txtimeqs operate_txtimeqs;
>>>>>  		struct ice_aqc_add_get_update_free_vsi vsi_cmd;
>>>>>  		struct ice_aqc_add_update_free_vsi_resp add_update_free_vsi_res;
>>>>>  		struct ice_aqc_download_pkg download_pkg;
>>>>> @@ -2920,6 +2969,10 @@ enum ice_adminq_opc {
>>>>>  	ice_aqc_opc_cfg_txqs				= 0x0C32,
>>>>>  	ice_aqc_opc_add_rdma_qset			= 0x0C33,
>>>>>  
>>>>> +	/* Tx Time queue commands */
>>>>> +	ice_aqc_opc_set_txtimeqs			= 0x0C35,
>>>>> +	ice_aqc_opc_ena_dis_txtimeqs			= 0x0C37,
>>>>> +
>>>>>  	/* package commands */
>>>>>  	ice_aqc_opc_download_pkg			= 0x0C40,
>>>>>  	ice_aqc_opc_upload_section			= 0x0C41,
>>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
>>>>> index 6db4ad8fc70b..b94c56a82cc5 100644
>>>>> --- a/drivers/net/ethernet/intel/ice/ice_base.c
>>>>> +++ b/drivers/net/ethernet/intel/ice/ice_base.c
>>>>> @@ -242,7 +242,7 @@ static void ice_cfg_itr_gran(struct ice_hw *hw)
>>>>>   * @ring: ring to get the absolute queue index
>>>>>   * @tc: traffic class number
>>>>>   */
>>>>> -static u16 ice_calc_txq_handle(struct ice_vsi *vsi, struct ice_tx_ring *ring, u8 tc)
>>>>> +static u16 ice_calc_txq_handle(const struct ice_vsi *vsi, struct ice_tx_ring *ring, u8 tc)
>>>>>  {
>>>>>  	WARN_ONCE(ice_ring_is_xdp(ring) && tc, "XDP ring can't belong to TC other than 0\n");
>>>>>  
>>>>> @@ -278,30 +278,20 @@ static void ice_cfg_xps_tx_ring(struct ice_tx_ring *ring)
>>>>>  }
>>>>>  
>>>>>  /**
>>>>> - * ice_setup_tx_ctx - setup a struct ice_tlan_ctx instance
>>>>> - * @ring: The Tx ring to configure
>>>>> - * @tlan_ctx: Pointer to the Tx LAN queue context structure to be initialized
>>>>> - * @pf_q: queue index in the PF space
>>>>> + * ice_set_txq_ctx_vmvf - set queue context VM/VF type and number by VSI type
>>>>> + * @ring: the Tx ring to configure
>>>>> + * @vmvf_type: VM/VF type
>>>>> + * @vmvf_num: VM/VF number
>>>>>   *
>>>>> - * Configure the Tx descriptor ring in TLAN context.
>>>>> + * Return: 0 on success and a negative value on error.
>>>>>   */
>>>>> -static void
>>>>> -ice_setup_tx_ctx(struct ice_tx_ring *ring, struct ice_tlan_ctx *tlan_ctx, u16 pf_q)
>>>>> +static int
>>>>> +ice_set_txq_ctx_vmvf(struct ice_tx_ring *ring, u8 *vmvf_type, u16 *vmvf_num)
>>>>>  {
>>>>>  	struct ice_vsi *vsi = ring->vsi;
>>>>> -	struct ice_hw *hw = &vsi->back->hw;
>>>>> -
>>>>> -	tlan_ctx->base = ring->dma >> ICE_TLAN_CTX_BASE_S;
>>>>> -
>>>>> -	tlan_ctx->port_num = vsi->port_info->lport;
>>>>> -
>>>>> -	/* Transmit Queue Length */
>>>>> -	tlan_ctx->qlen = ring->count;
>>>>> -
>>>>> -	ice_set_cgd_num(tlan_ctx, ring->dcb_tc);
>>>>> +	struct ice_hw *hw;
>>>>>  
>>>>> -	/* PF number */
>>>>> -	tlan_ctx->pf_num = hw->pf_id;
>>>>> +	hw = &vsi->back->hw;
>>>>>  
>>>>>  	/* queue belongs to a specific VSI type
>>>>>  	 * VF / VM index should be programmed per vmvf_type setting:
>>>>> @@ -314,22 +304,58 @@ ice_setup_tx_ctx(struct ice_tx_ring *ring, struct ice_tlan_ctx *tlan_ctx, u16 pf
>>>>>  	case ICE_VSI_CTRL:
>>>>>  	case ICE_VSI_PF:
>>>>>  		if (ring->ch)
>>>>> -			tlan_ctx->vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_VMQ;
>>>>> +			*vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_VMQ;
>>>>>  		else
>>>>> -			tlan_ctx->vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_PF;
>>>>> +			*vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_PF;
>>>>>  		break;
>>>>>  	case ICE_VSI_VF:
>>>>>  		/* Firmware expects vmvf_num to be absolute VF ID */
>>>>> -		tlan_ctx->vmvf_num = hw->func_caps.vf_base_id + vsi->vf->vf_id;
>>>>> -		tlan_ctx->vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_VF;
>>>>> +		*vmvf_num = hw->func_caps.vf_base_id + vsi->vf->vf_id;
>>>>> +		*vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_VF;
>>>>>  		break;
>>>>>  	case ICE_VSI_SF:
>>>>> -		tlan_ctx->vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_VMQ;
>>>>> +		*vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_VMQ;
>>>>>  		break;
>>>>>  	default:
>>>>> -		return;
>>>>> +		dev_info(ice_pf_to_dev(vsi->back),
>>>>> +			 "Unable to set VMVF type for VSI type %d\n",
>>>>> +			 vsi->type);
>>>>> +		return -EINVAL;
>>>>>  	}
>>>>>  
>>>>> +	return 0;
>>>>> +}
>>>>> +
>>>>> +/**
>>>>> + * ice_setup_tx_ctx - setup a struct ice_tlan_ctx instance
>>>>> + * @ring: the Tx ring to configure
>>>>> + * @tlan_ctx: pointer to the Tx LAN queue context structure to be initialized
>>>>> + * @pf_q: queue index in the PF space
>>>>> + *
>>>>> + * Configure the Tx descriptor ring in TLAN context.
>>>>> + */
>>>>> +static void
>>>>> +ice_setup_tx_ctx(struct ice_tx_ring *ring, struct ice_tlan_ctx *tlan_ctx, u16 pf_q)
>>>>> +{
>>>>> +	struct ice_vsi *vsi = ring->vsi;
>>>>> +	struct ice_hw *hw;
>>>>> +
>>>>> +	hw = &vsi->back->hw;
>>>>> +	tlan_ctx->base = ring->dma >> ICE_TLAN_CTX_BASE_S;
>>>>> +	tlan_ctx->port_num = vsi->port_info->lport;
>>>>> +
>>>>> +	/* Transmit Queue Length */
>>>>> +	tlan_ctx->qlen = ring->count;
>>>>> +
>>>>> +	ice_set_cgd_num(tlan_ctx, ring->dcb_tc);
>>>>> +
>>>>> +	/* PF number */
>>>>> +	tlan_ctx->pf_num = hw->pf_id;
>>>>> +
>>>>> +	if (ice_set_txq_ctx_vmvf(ring, &tlan_ctx->vmvf_type,
>>>>> +				 &tlan_ctx->vmvf_num))
>>>>> +		return;
>>>>> +
>>>>>  	/* make sure the context is associated with the right VSI */
>>>>>  	if (ring->ch)
>>>>>  		tlan_ctx->src_vsi = ring->ch->vsi_num;
>>>>> @@ -357,6 +383,74 @@ ice_setup_tx_ctx(struct ice_tx_ring *ring, struct ice_tlan_ctx *tlan_ctx, u16 pf
>>>>>  	tlan_ctx->legacy_int = ICE_TX_LEGACY;
>>>>>  }
>>>>>  
>>>>> +/**
>>>>> + * ice_setup_txtime_ctx - setup a struct ice_txtime_ctx instance
>>>>> + * @ring: the tstamp ring to configure
>>>>> + * @txtime_ctx: pointer to the Tx time queue context structure to be initialized
>>>>> + * @txtime_ena: Tx time enable flag, set to true if Tx time should be enabled
>>>>> + */
>>>>> +static void
>>>>> +ice_setup_txtime_ctx(struct ice_tx_ring *ring,
>>>>> +		     struct ice_txtime_ctx *txtime_ctx, bool txtime_ena)
>>>>> +{
>>>>> +	struct ice_vsi *vsi = ring->vsi;
>>>>> +	struct ice_hw *hw;
>>>>> +
>>>>> +	hw = &vsi->back->hw;
>>>>> +	txtime_ctx->base = ring->dma >> ICE_TXTIME_CTX_BASE_S;
>>>>> +
>>>>> +	/* Tx time Queue Length */
>>>>> +	txtime_ctx->qlen = ring->count;
>>>>> +
>>>>> +	if (txtime_ena)
>>>>> +		txtime_ctx->txtime_ena_q = 1;
>>>>> +
>>>>> +	/* PF number */
>>>>> +	txtime_ctx->pf_num = hw->pf_id;
>>>>> +
>>>>> +	if (ice_set_txq_ctx_vmvf(ring, &txtime_ctx->vmvf_type,
>>>>> +				 &txtime_ctx->vmvf_num))
>>>>> +		return;
>>>>> +
>>>>> +	/* make sure the context is associated with the right VSI */
>>>>> +	if (ring->ch)
>>>>> +		txtime_ctx->src_vsi = ring->ch->vsi_num;
>>>>> +	else
>>>>> +		txtime_ctx->src_vsi = ice_get_hw_vsi_num(hw, vsi->idx);
>>>>> +
>>>>> +	txtime_ctx->ts_res = ICE_TXTIME_CTX_RESOLUTION_128NS;
>>>>> +	txtime_ctx->drbell_mode_32 = ICE_TXTIME_CTX_DRBELL_MODE_32;
>>>>> +	txtime_ctx->ts_fetch_prof_id = ICE_TXTIME_CTX_FETCH_PROF_ID_0;
>>>>> +}
>>>>> +
>>>>> +/**
>>>>> + * ice_calc_ts_ring_count - calculate the number of timestamp descriptors
>>>>> + * @hw: pointer to the hardware structure
>>>>> + * @tx_desc_count: number of Tx descriptors in the ring
>>>>> + *
>>>>> + * Return: the number of timestamp descriptors.
>>>>> + */
>>>>> +u16 ice_calc_ts_ring_count(struct ice_hw *hw, u16 tx_desc_count)
>>>>> +{
>>>>> +	u16 prof = ICE_TXTIME_CTX_FETCH_PROF_ID_0;
>>>>> +	u16 max_fetch_desc = 0, fetch, i;
>>>>> +	u32 reg;
>>>>> +
>>>>> +	for (i = 0; i < ICE_TXTIME_FETCH_PROFILE_CNT; i++) {
>>>>> +		reg = rd32(hw, E830_GLTXTIME_FETCH_PROFILE(prof, 0));
>>>>> +		fetch = FIELD_GET(E830_GLTXTIME_FETCH_PROFILE_FETCH_TS_DESC_M,
>>>>> +				  reg);
>>>>> +		max_fetch_desc = max(fetch, max_fetch_desc);
>>>>> +	}
>>>>> +
>>>>> +	if (!max_fetch_desc)
>>>>> +		max_fetch_desc = ICE_TXTIME_FETCH_TS_DESC_DFLT;
>>>>> +
>>>>> +	max_fetch_desc = ALIGN(max_fetch_desc, ICE_REQ_DESC_MULTIPLE);
>>>>> +
>>>>> +	return tx_desc_count + max_fetch_desc;
>>>>> +}
>>>>> +
>>>>>  /**
>>>>>   * ice_rx_offset - Return expected offset into page to access data
>>>>>   * @rx_ring: Ring we are requesting offset of
>>>>> @@ -882,11 +976,17 @@ void ice_vsi_free_q_vectors(struct ice_vsi *vsi)
>>>>>   * ice_vsi_cfg_txq - Configure single Tx queue
>>>>>   * @vsi: the VSI that queue belongs to
>>>>>   * @ring: Tx ring to be configured
>>>>> + * @tstamp_ring: time stamp ring to be configured
>>>>>   * @qg_buf: queue group buffer
>>>>> + * @txtime_qg_buf: Tx Time queue group buffer
>>>>> + *
>>>>> + * Return: 0 on success and a negative value on error.
>>>>>   */
>>>>>  static int
>>>>> -ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_tx_ring *ring,
>>>>> -		struct ice_aqc_add_tx_qgrp *qg_buf)
>>>>> +ice_vsi_cfg_txq(const struct ice_vsi *vsi, struct ice_tx_ring *ring,
>>>>> +		struct ice_tx_ring *tstamp_ring,
>>>>> +		struct ice_aqc_add_tx_qgrp *qg_buf,
>>>>> +		struct ice_aqc_set_txtime_qgrp *txtime_qg_buf)
>>>>>  {
>>>>>  	u8 buf_len = struct_size(qg_buf, txqs, 1);
>>>>>  	struct ice_tlan_ctx tlan_ctx = { 0 };
>>>>> @@ -944,6 +1044,27 @@ ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_tx_ring *ring,
>>>>>  	if (pf_q == le16_to_cpu(txq->txq_id))
>>>>>  		ring->txq_teid = le32_to_cpu(txq->q_teid);
>>>>>  
>>>>> +	if (tstamp_ring) {
>>>>> +		u8 txtime_buf_len = struct_size(txtime_qg_buf, txtimeqs, 1);
>>>>> +		struct ice_txtime_ctx txtime_ctx = {};
>>>>> +
>>>>> +		ice_setup_txtime_ctx(tstamp_ring, &txtime_ctx,
>>>>> +				     !!(ring->flags & ICE_TX_FLAGS_TXTIME));
>>>>> +		ice_pack_txtime_ctx(&txtime_ctx,
>>>>> +				    &txtime_qg_buf->txtimeqs[0].txtime_ctx);
>>>>> +
>>>>> +		tstamp_ring->tail =
>>>>> +			 hw->hw_addr + E830_GLQTX_TXTIME_DBELL_LSB(pf_q);
>>>>> +
>>>>> +		status = ice_aq_set_txtimeq(hw, pf_q, 1, txtime_qg_buf,
>>>>> +					    txtime_buf_len, NULL);
>>>>> +		if (status) {
>>>>> +			dev_err(ice_pf_to_dev(pf), "Failed to set Tx Time queue context, error: %d\n",
>>>>> +				status);
>>>>> +			return status;
>>>>> +		}
>>>>> +	}
>>>>> +
>>>>>  	return 0;
>>>>>  }
>>>>>  
>>>>> @@ -957,21 +1078,35 @@ int ice_vsi_cfg_single_txq(struct ice_vsi *vsi, struct ice_tx_ring **tx_rings,
>>>>>  
>>>>>  	qg_buf->num_txqs = 1;
>>>>>  
>>>>> -	return ice_vsi_cfg_txq(vsi, tx_rings[q_idx], qg_buf);
>>>>> +	if (!vsi->tstamp_rings) {
>>>>> +		return ice_vsi_cfg_txq(vsi, tx_rings[q_idx], NULL, qg_buf,
>>>>> +				       NULL);
>>>>> +	} else {
>>>>> +		DEFINE_RAW_FLEX(struct ice_aqc_set_txtime_qgrp, txtime_qg_buf,
>>>>> +				txtimeqs, 1);
>>>>> +		struct ice_tx_ring **tstamp_rings = vsi->tstamp_rings;
>>>>> +
>>>>> +		return ice_vsi_cfg_txq(vsi, tx_rings[q_idx], tstamp_rings[q_idx],
>>>>> +				       qg_buf, txtime_qg_buf);
>>>>> +	}
>>>>>  }
>>>>>  
>>>>>  /**
>>>>>   * ice_vsi_cfg_txqs - Configure the VSI for Tx
>>>>>   * @vsi: the VSI being configured
>>>>>   * @rings: Tx ring array to be configured
>>>>> + * @tstamp_rings: time stamp ring array to be configured
>>>>>   * @count: number of Tx ring array elements
>>>>>   *
>>>>> - * Return 0 on success and a negative value on error
>>>>> + * Return: 0 on success and a negative value on error.
>>>>>   * Configure the Tx VSI for operation.
>>>>>   */
>>>>>  static int
>>>>> -ice_vsi_cfg_txqs(struct ice_vsi *vsi, struct ice_tx_ring **rings, u16 count)
>>>>> +ice_vsi_cfg_txqs(const struct ice_vsi *vsi, struct ice_tx_ring **rings,
>>>>> +		 struct ice_tx_ring **tstamp_rings, u16 count)
>>>>>  {
>>>>> +	DEFINE_RAW_FLEX(struct ice_aqc_set_txtime_qgrp, txtime_qg_buf,
>>>>> +			txtimeqs, 1);
>>>>>  	DEFINE_RAW_FLEX(struct ice_aqc_add_tx_qgrp, qg_buf, txqs, 1);
>>>>>  	int err = 0;
>>>>>  	u16 q_idx;
>>>>> @@ -979,7 +1114,14 @@ ice_vsi_cfg_txqs(struct ice_vsi *vsi, struct ice_tx_ring **rings, u16 count)
>>>>>  	qg_buf->num_txqs = 1;
>>>>>  
>>>>>  	for (q_idx = 0; q_idx < count; q_idx++) {
>>>>> -		err = ice_vsi_cfg_txq(vsi, rings[q_idx], qg_buf);
>>>>> +		/* If tstamp_rings is allocated, configure used tstamp queue */
>>>>> +		if (tstamp_rings)
>>>>> +			err = ice_vsi_cfg_txq(vsi, rings[q_idx],
>>>>> +					      tstamp_rings[q_idx], qg_buf,
>>>>> +					      txtime_qg_buf);
>>>>> +		else
>>>>> +			err = ice_vsi_cfg_txq(vsi, rings[q_idx],
>>>>> +					      NULL, qg_buf, NULL);
>>>>>  		if (err)
>>>>>  			break;
>>>>>  	}
>>>>> @@ -996,7 +1138,8 @@ ice_vsi_cfg_txqs(struct ice_vsi *vsi, struct ice_tx_ring **rings, u16 count)
>>>>>   */
>>>>>  int ice_vsi_cfg_lan_txqs(struct ice_vsi *vsi)
>>>>>  {
>>>>> -	return ice_vsi_cfg_txqs(vsi, vsi->tx_rings, vsi->num_txq);
>>>>> +	return ice_vsi_cfg_txqs(vsi, vsi->tx_rings, vsi->tstamp_rings,
>>>>> +				vsi->num_txq);
>>>>>  }
>>>>>  
>>>>>  /**
>>>>> @@ -1011,7 +1154,8 @@ int ice_vsi_cfg_xdp_txqs(struct ice_vsi *vsi)
>>>>>  	int ret;
>>>>>  	int i;
>>>>>  
>>>>> -	ret = ice_vsi_cfg_txqs(vsi, vsi->xdp_rings, vsi->num_xdp_txq);
>>>>> +	ret = ice_vsi_cfg_txqs(vsi, vsi->xdp_rings, vsi->tstamp_rings,
>>>>> +			       vsi->num_xdp_txq);
>>>>>  	if (ret)
>>>>>  		return ret;
>>>>>  
>>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_base.h b/drivers/net/ethernet/intel/ice/ice_base.h
>>>>> index b711bc921928..a55653ad85de 100644
>>>>> --- a/drivers/net/ethernet/intel/ice/ice_base.h
>>>>> +++ b/drivers/net/ethernet/intel/ice/ice_base.h
>>>>> @@ -32,4 +32,5 @@ ice_vsi_stop_tx_ring(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
>>>>>  void
>>>>>  ice_fill_txq_meta(const struct ice_vsi *vsi, struct ice_tx_ring *ring,
>>>>>  		  struct ice_txq_meta *txq_meta);
>>>>> +u16 ice_calc_ts_ring_count(struct ice_hw *hw, u16 tx_desc_count);
>>>>>  #endif /* _ICE_BASE_H_ */
>>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
>>>>> index edb1d0f7e187..00d28114f83e 100644
>>>>> --- a/drivers/net/ethernet/intel/ice/ice_common.c
>>>>> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
>>>>> @@ -1454,6 +1454,44 @@ void ice_pack_txq_ctx(const struct ice_tlan_ctx *ctx, ice_txq_ctx_buf_t *buf)
>>>>>  		    QUIRK_LITTLE_ENDIAN | QUIRK_LSW32_IS_FIRST);
>>>>>  }
>>>>>  
>>>>> +/* Tx time Queue Context */
>>>>> +static const struct packed_field_u8 ice_txtime_ctx_fields[] = {
>>>>> +				    /* Field			Width	LSB */
>>>>> +	ICE_CTX_STORE(ice_txtime_ctx, base,			57,	0),
>>>>> +	ICE_CTX_STORE(ice_txtime_ctx, pf_num,			3,	57),
>>>>> +	ICE_CTX_STORE(ice_txtime_ctx, vmvf_num,			10,	60),
>>>>> +	ICE_CTX_STORE(ice_txtime_ctx, vmvf_type,		2,	70),
>>>>> +	ICE_CTX_STORE(ice_txtime_ctx, src_vsi,			10,	72),
>>>>> +	ICE_CTX_STORE(ice_txtime_ctx, cpuid,			8,	82),
>>>>> +	ICE_CTX_STORE(ice_txtime_ctx, tphrd_desc,		1,	90),
>>>>> +	ICE_CTX_STORE(ice_txtime_ctx, qlen,			13,	91),
>>>>> +	ICE_CTX_STORE(ice_txtime_ctx, timer_num,		1,	104),
>>>>> +	ICE_CTX_STORE(ice_txtime_ctx, txtime_ena_q,		1,	105),
>>>>> +	ICE_CTX_STORE(ice_txtime_ctx, drbell_mode_32,		1,	106),
>>>>> +	ICE_CTX_STORE(ice_txtime_ctx, ts_res,			4,	107),
>>>>> +	ICE_CTX_STORE(ice_txtime_ctx, ts_round_type,		2,	111),
>>>>> +	ICE_CTX_STORE(ice_txtime_ctx, ts_pacing_slot,		3,	113),
>>>>> +	ICE_CTX_STORE(ice_txtime_ctx, merging_ena,		1,	116),
>>>>> +	ICE_CTX_STORE(ice_txtime_ctx, ts_fetch_prof_id,		4,	117),
>>>>> +	ICE_CTX_STORE(ice_txtime_ctx, ts_fetch_cache_line_aln_thld, 4,	121),
>>>>> +	ICE_CTX_STORE(ice_txtime_ctx, tx_pipe_delay_mode,	1,	125),
>>>>> +};
>>>>> +
>>>>> +/**
>>>>> + * ice_pack_txtime_ctx - pack Tx time queue context into a HW buffer
>>>>> + * @ctx: the Tx time queue context to pack
>>>>> + * @buf: the HW buffer to pack into
>>>>> + *
>>>>> + * Pack the Tx time queue context from the CPU-friendly unpacked buffer into
>>>>> + * its bit-packed HW layout.
>>>>> + */
>>>>> +void ice_pack_txtime_ctx(const struct ice_txtime_ctx *ctx,
>>>>> +			 ice_txtime_ctx_buf_t *buf)
>>>>> +{
>>>>> +	pack_fields(buf, sizeof(*buf), ctx, ice_txtime_ctx_fields,
>>>>> +		    QUIRK_LITTLE_ENDIAN | QUIRK_LSW32_IS_FIRST);
>>>>> +}
>>>>> +
>>>>>  /* Sideband Queue command wrappers */
>>>>>  
>>>>>  /**
>>>>> @@ -4565,6 +4603,86 @@ ice_aq_add_rdma_qsets(struct ice_hw *hw, u8 num_qset_grps,
>>>>>  	return ice_aq_send_cmd(hw, &desc, qset_list, buf_size, cd);
>>>>>  }
>>>>>  
>>>>> +/**
>>>>> + * ice_aq_set_txtimeq - set Tx time queues
>>>>> + * @hw: pointer to the hardware structure
>>>>> + * @txtimeq: first Tx time queue id to configure
>>>>> + * @q_count: number of queues to configure
>>>>> + * @txtime_qg: queue group to be set
>>>>> + * @buf_size: size of buffer for indirect command
>>>>> + * @cd: pointer to command details structure or NULL
>>>>> + *
>>>>> + * Set Tx Time queue (0x0C35)
>>>>> + * Return: 0 on success or negative value on failure.
>>>>> + */
>>>>> +int
>>>>> +ice_aq_set_txtimeq(struct ice_hw *hw, u16 txtimeq, u8 q_count,
>>>>> +		   struct ice_aqc_set_txtime_qgrp *txtime_qg, u16 buf_size,
>>>>> +		   struct ice_sq_cd *cd)
>>>>> +{
>>>>> +	struct ice_aqc_set_txtimeqs *cmd;
>>>>> +	struct ice_aq_desc desc;
>>>>> +	u16 size;
>>>>> +
>>>>> +	if (!txtime_qg || txtimeq > ICE_TXTIME_MAX_QUEUE ||
>>>>> +	    q_count < 1 || q_count > ICE_SET_TXTIME_MAX_Q_AMOUNT)
>>>>> +		return -EINVAL;
>>>>> +
>>>>> +	size = struct_size(txtime_qg, txtimeqs, q_count);
>>>>> +	if (buf_size != size)
>>>>> +		return -EINVAL;
>>>>> +
>>>>> +	cmd = &desc.params.set_txtimeqs;
>>>>> +
>>>>> +	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_txtimeqs);
>>>>> +
>>>>> +	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
>>>>> +
>>>>> +	cmd->q_id = cpu_to_le16(txtimeq);
>>>>> +	cmd->q_amount = cpu_to_le16(q_count);
>>>>> +	return ice_aq_send_cmd(hw, &desc, txtime_qg, buf_size, cd);
>>>>> +}
>>>>> +
>>>>> +/**
>>>>> + * ice_aq_ena_dis_txtimeq - enable/disable Tx time queue
>>>>> + * @hw: pointer to the hardware structure
>>>>> + * @txtimeq: first Tx time queue id to configure
>>>>> + * @q_count: number of queues to configure
>>>>> + * @q_ena: enable/disable Tx time queue
>>>>> + * @txtime_qg: holds the first Tx time queue that failed enable/disable on
>>>>> + * response
>>>>> + * @cd: pointer to command details structure or NULL
>>>>> + *
>>>>> + * Enable/disable Tx Time queue (0x0C37)
>>>>> + * Return: 0 on success or negative value on failure.
>>>>> + */
>>>>> +int
>>>>> +ice_aq_ena_dis_txtimeq(struct ice_hw *hw, u16 txtimeq, u16 q_count, bool q_ena,
>>>>> +		       struct ice_aqc_ena_dis_txtime_qgrp *txtime_qg,
>>>>> +		       struct ice_sq_cd *cd)
>>>>> +{
>>>>> +	struct ice_aqc_ena_dis_txtimeqs *cmd;
>>>>> +	struct ice_aq_desc desc;
>>>>> +
>>>>> +	if (!txtime_qg || txtimeq > ICE_TXTIME_MAX_QUEUE ||
>>>>> +	    q_count < 1 || q_count > ICE_OP_TXTIME_MAX_Q_AMOUNT)
>>>>> +		return -EINVAL;
>>>>> +
>>>>> +	cmd = &desc.params.operate_txtimeqs;
>>>>> +
>>>>> +	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_ena_dis_txtimeqs);
>>>>> +
>>>>> +	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
>>>>> +
>>>>> +	cmd->q_id = cpu_to_le16(txtimeq);
>>>>> +	cmd->q_amount = cpu_to_le16(q_count);
>>>>> +
>>>>> +	if (q_ena)
>>>>> +		cmd->cmd_type |= ICE_AQC_TXTIME_CMD_TYPE_Q_ENA;
>>>>> +
>>>>> +	return ice_aq_send_cmd(hw, &desc, txtime_qg, sizeof(*txtime_qg), cd);
>>>>> +}
>>>>> +
>>>>>  /* End of FW Admin Queue command wrappers */
>>>>>  
>>>>>  /**
>>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
>>>>> index 64c530b39191..aefcf719e460 100644
>>>>> --- a/drivers/net/ethernet/intel/ice/ice_common.h
>>>>> +++ b/drivers/net/ethernet/intel/ice/ice_common.h
>>>>> @@ -228,6 +228,16 @@ int ice_replay_vsi(struct ice_hw *hw, u16 vsi_handle);
>>>>>  void ice_replay_post(struct ice_hw *hw);
>>>>>  struct ice_q_ctx *
>>>>>  ice_get_lan_q_ctx(struct ice_hw *hw, u16 vsi_handle, u8 tc, u16 q_handle);
>>>>> +int
>>>>> +ice_aq_set_txtimeq(struct ice_hw *hw, u16 txtimeq, u8 q_count,
>>>>> +		   struct ice_aqc_set_txtime_qgrp *txtime_qg,
>>>>> +		   u16 buf_size, struct ice_sq_cd *cd);
>>>>> +int
>>>>> +ice_aq_ena_dis_txtimeq(struct ice_hw *hw, u16 txtimeq, u16 q_count, bool q_ena,
>>>>> +		       struct ice_aqc_ena_dis_txtime_qgrp *txtime_qg,
>>>>> +		       struct ice_sq_cd *cd);
>>>>> +void ice_pack_txtime_ctx(const struct ice_txtime_ctx *ctx,
>>>>> +			 ice_txtime_ctx_buf_t *buf);
>>>>>  int ice_sbq_rw_reg(struct ice_hw *hw, struct ice_sbq_msg_input *in, u16 flag);
>>>>>  int
>>>>>  ice_aq_get_cgu_abilities(struct ice_hw *hw,
>>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
>>>>> index 648815170477..9032074a6a38 100644
>>>>> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
>>>>> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
>>>>> @@ -3162,9 +3162,11 @@ ice_get_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
>>>>>  {
>>>>>  	struct ice_netdev_priv *np = netdev_priv(netdev);
>>>>>  	struct ice_vsi *vsi = np->vsi;
>>>>> +	struct ice_hw *hw;
>>>>>  
>>>>> -	ring->rx_max_pending = ICE_MAX_NUM_DESC;
>>>>> -	ring->tx_max_pending = ICE_MAX_NUM_DESC;
>>>>> +	hw = &vsi->back->hw;
>>>>> +	ring->rx_max_pending = ICE_MAX_NUM_DESC_BY_MAC(hw);
>>>>> +	ring->tx_max_pending = ICE_MAX_NUM_DESC_BY_MAC(hw);
>>>>>  	if (vsi->tx_rings && vsi->rx_rings) {
>>>>>  		ring->rx_pending = vsi->rx_rings[0]->count;
>>>>>  		ring->tx_pending = vsi->tx_rings[0]->count;
>>>>> @@ -3186,21 +3188,24 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
>>>>>  		  struct netlink_ext_ack *extack)
>>>>>  {
>>>>>  	struct ice_netdev_priv *np = netdev_priv(netdev);
>>>>> +	u16 new_rx_cnt, new_tx_cnt, new_tstamp_cnt;
>>>>> +	struct ice_tx_ring *tstamp_rings = NULL;
>>>>>  	struct ice_tx_ring *xdp_rings = NULL;
>>>>>  	struct ice_tx_ring *tx_rings = NULL;
>>>>>  	struct ice_rx_ring *rx_rings = NULL;
>>>>>  	struct ice_vsi *vsi = np->vsi;
>>>>>  	struct ice_pf *pf = vsi->back;
>>>>>  	int i, timeout = 50, err = 0;
>>>>> -	u16 new_rx_cnt, new_tx_cnt;
>>>>> +	struct ice_hw *hw = &pf->hw;
>>>>> +	bool txtime_ena;
>>>>>  
>>>>> -	if (ring->tx_pending > ICE_MAX_NUM_DESC ||
>>>>> +	if (ring->tx_pending > ICE_MAX_NUM_DESC_BY_MAC(hw) ||
>>>>>  	    ring->tx_pending < ICE_MIN_NUM_DESC ||
>>>>> -	    ring->rx_pending > ICE_MAX_NUM_DESC ||
>>>>> +	    ring->rx_pending > ICE_MAX_NUM_DESC_BY_MAC(hw) ||
>>>>>  	    ring->rx_pending < ICE_MIN_NUM_DESC) {
>>>>>  		netdev_err(netdev, "Descriptors requested (Tx: %d / Rx: %d) out of range [%d-%d] (increment %d)\n",
>>>>>  			   ring->tx_pending, ring->rx_pending,
>>>>> -			   ICE_MIN_NUM_DESC, ICE_MAX_NUM_DESC,
>>>>> +			   ICE_MIN_NUM_DESC, ICE_MAX_NUM_DESC_BY_MAC(hw),
>>>>>  			   ICE_REQ_DESC_MULTIPLE);
>>>>>  		return -EINVAL;
>>>>>  	}
>>>>> @@ -3238,11 +3243,18 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
>>>>>  			return -EBUSY;
>>>>>  		usleep_range(1000, 2000);
>>>>>  	}
>>>>> +	txtime_ena = test_bit(ICE_FLAG_TXTIME, pf->flags);
>>>>> +	if (txtime_ena)
>>>>> +		new_tstamp_cnt = ice_calc_ts_ring_count(hw, new_tx_cnt);
>>>>>  
>>>>>  	/* set for the next time the netdev is started */
>>>>>  	if (!netif_running(vsi->netdev)) {
>>>>>  		ice_for_each_alloc_txq(vsi, i)
>>>>>  			vsi->tx_rings[i]->count = new_tx_cnt;
>>>>> +		/* Change all tstamp_rings to match Tx rings */
>>>>> +		if (txtime_ena)
>>>>> +			ice_for_each_alloc_txq(vsi, i)
>>>>> +				vsi->tstamp_rings[i]->count = new_tstamp_cnt;
>>>>>  		ice_for_each_alloc_rxq(vsi, i)
>>>>>  			vsi->rx_rings[i]->count = new_rx_cnt;
>>>>>  		if (ice_is_xdp_ena_vsi(vsi))
>>>>> @@ -3267,6 +3279,15 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
>>>>>  		goto done;
>>>>>  	}
>>>>>  
>>>>> +	if (txtime_ena) {
>>>>> +		tstamp_rings = kcalloc(vsi->num_txq, sizeof(*tstamp_rings),
>>>>> +				       GFP_KERNEL);
>>>>> +		if (!tstamp_rings) {
>>>>> +			err = -ENOMEM;
>>>>> +			goto free_tx;
>>>>> +		}
>>>>> +	}
>>>>> +
>>>>>  	ice_for_each_txq(vsi, i) {
>>>>>  		/* clone ring and setup updated count */
>>>>>  		tx_rings[i] = *vsi->tx_rings[i];
>>>>> @@ -3275,10 +3296,22 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
>>>>>  		tx_rings[i].tx_buf = NULL;
>>>>>  		tx_rings[i].tx_tstamps = &pf->ptp.port.tx;
>>>>>  		err = ice_setup_tx_ring(&tx_rings[i]);
>>>>> +
>>>>> +		if (txtime_ena) {
>>>>> +			tstamp_rings[i] = *vsi->tstamp_rings[i];
>>>>> +			tstamp_rings[i].count = new_tstamp_cnt;
>>>>> +			tstamp_rings[i].desc = NULL;
>>>>> +			tstamp_rings[i].tx_buf = NULL;
>>>>> +			err |= ice_setup_tstamp_ring(&tstamp_rings[i]);
>>>>> +		}
>>>>>  		if (err) {
>>>>> -			while (i--)
>>>>> +			while (i--) {
>>>>> +				if (txtime_ena)
>>>>> +					ice_clean_tstamp_ring(&tstamp_rings[i]);
>>>>>  				ice_clean_tx_ring(&tx_rings[i]);
>>>>> +			}
>>>>>  			kfree(tx_rings);
>>>>> +			kfree(tstamp_rings);
>>>>>  			goto done;
>>>>>  		}
>>>>>  	}
>>>>> @@ -3372,6 +3405,14 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
>>>>>  			kfree(tx_rings);
>>>>>  		}
>>>>>  
>>>>> +		if (tstamp_rings) {
>>>>> +			ice_for_each_txq(vsi, i) {
>>>>> +				ice_free_tstamp_ring(vsi->tstamp_rings[i]);
>>>>> +				*vsi->tstamp_rings[i] = tstamp_rings[i];
>>>>> +			}
>>>>> +			kfree(tstamp_rings);
>>>>> +		}
>>>>> +
>>>>>  		if (rx_rings) {
>>>>>  			ice_for_each_rxq(vsi, i) {
>>>>>  				ice_free_rx_ring(vsi->rx_rings[i]);
>>>>> @@ -3412,6 +3453,12 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
>>>>>  		kfree(tx_rings);
>>>>>  	}
>>>>>  
>>>>> +	if (tstamp_rings) {
>>>>> +		ice_for_each_txq(vsi, i)
>>>>> +			ice_free_tstamp_ring(&tstamp_rings[i]);
>>>>> +		kfree(tstamp_rings);
>>>>> +	}
>>>>> +
>>>>>  done:
>>>>>  	clear_bit(ICE_CFG_BUSY, pf->state);
>>>>>  	return err;
>>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
>>>>> index aa4bfbcf85d2..fa4b2b92f5da 100644
>>>>> --- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
>>>>> +++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
>>>>> @@ -18,6 +18,7 @@
>>>>>  #define QTX_COMM_HEAD(_DBQM)			(0x000E0000 + ((_DBQM) * 4))
>>>>>  #define QTX_COMM_HEAD_HEAD_S			0
>>>>>  #define QTX_COMM_HEAD_HEAD_M			ICE_M(0x1FFF, 0)
>>>>> +#define E830_GLQTX_TXTIME_DBELL_LSB(_DBQM)	(0x002E0000 + ((_DBQM) * 8))
>>>>>  #define PF_FW_ARQBAH				0x00080180
>>>>>  #define PF_FW_ARQBAL				0x00080080
>>>>>  #define PF_FW_ARQH				0x00080380
>>>>> @@ -559,6 +560,8 @@
>>>>>  #define E830_PFPTM_SEM_BUSY_M			BIT(0)
>>>>>  #define VFINT_DYN_CTLN(_i)			(0x00003800 + ((_i) * 4))
>>>>>  #define VFINT_DYN_CTLN_CLEARPBA_M		BIT(1)
>>>>> +#define E830_GLTXTIME_FETCH_PROFILE(_i, _j)     (0x002D3500 + ((_i) * 4 + (_j) * 64))
>>>>> +#define E830_GLTXTIME_FETCH_PROFILE_FETCH_TS_DESC_M ICE_M(0x1FF, 0)
>>>>>  #define E830_MBX_PF_IN_FLIGHT_VF_MSGS_THRESH	0x00234000
>>>>>  #define E830_MBX_VF_DEC_TRIG(_VF)		(0x00233800 + (_VF) * 4)
>>>>>  #define E830_MBX_VF_IN_FLIGHT_MSGS_AT_PF_CNT(_VF)	(0x00233000 + (_VF) * 4)
>>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
>>>>> index 77ba26538b07..cb47c5c496f4 100644
>>>>> --- a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
>>>>> +++ b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
>>>>> @@ -569,4 +569,46 @@ struct ice_tlan_ctx {
>>>>>  	u8 pkt_shaper_prof_idx;
>>>>>  };
>>>>>  
>>>>> +#define ICE_TXTIME_TX_DESC_IDX_M	GENMASK(12, 0)
>>>>> +#define ICE_TXTIME_STAMP_M		GENMASK(31, 13)
>>>>> +
>>>>> +/* Tx time stamp descriptor */
>>>>> +struct ice_ts_desc {
>>>>> +	__le32 tx_desc_idx_tstamp;
>>>>> +};
>>>>> +
>>>>> +#define ICE_TS_DESC(R, i) (&(((struct ice_ts_desc *)((R)->desc))[i]))
>>>>> +
>>>>> +#define ICE_TXTIME_MAX_QUEUE		2047
>>>>> +#define ICE_SET_TXTIME_MAX_Q_AMOUNT	127
>>>>> +#define ICE_OP_TXTIME_MAX_Q_AMOUNT	2047
>>>>> +#define ICE_TXTIME_FETCH_TS_DESC_DFLT	8
>>>>> +#define ICE_TXTIME_FETCH_PROFILE_CNT	16
>>>>> +
>>>>> +/* Tx Time queue context data */
>>>>> +struct ice_txtime_ctx {
>>>>> +#define ICE_TXTIME_CTX_BASE_S		7
>>>>> +	u64 base;			/* base is defined in 128-byte units */
>>>>> +	u8 pf_num;
>>>>> +	u16 vmvf_num;
>>>>> +	u8 vmvf_type;
>>>>> +	u16 src_vsi;
>>>>> +	u8 cpuid;
>>>>> +	u8 tphrd_desc;
>>>>> +	u16 qlen;
>>>>> +	u8 timer_num;
>>>>> +	u8 txtime_ena_q;
>>>>> +	u8 drbell_mode_32;
>>>>> +#define ICE_TXTIME_CTX_DRBELL_MODE_32	1
>>>>> +	u8 ts_res;
>>>>> +#define ICE_TXTIME_CTX_RESOLUTION_128NS 7
>>>>> +	u8 ts_round_type;
>>>>> +	u8 ts_pacing_slot;
>>>>> +#define ICE_TXTIME_CTX_FETCH_PROF_ID_0 0
>>>>> +	u8 merging_ena;
>>>>> +	u8 ts_fetch_prof_id;
>>>>> +	u8 ts_fetch_cache_line_aln_thld;
>>>>> +	u8 tx_pipe_delay_mode;
>>>>> +};
>>>>> +
>>>>>  #endif /* _ICE_LAN_TX_RX_H_ */
>>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
>>>>> index 03bb16191237..6392d27861e5 100644
>>>>> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
>>>>> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
>>>>> @@ -85,6 +85,15 @@ static int ice_vsi_alloc_arrays(struct ice_vsi *vsi)
>>>>>  	if (!vsi->tx_rings)
>>>>>  		return -ENOMEM;
>>>>>  
>>>>> +	if (vsi->type == ICE_VSI_PF &&
>>>>> +	    test_bit(ICE_FLAG_TXTIME, pf->flags)) {
>>>>> +		vsi->tstamp_rings = devm_kcalloc(dev, vsi->alloc_txq,
>>>>> +						 sizeof(*vsi->tstamp_rings),
>>>>> +						 GFP_KERNEL);
>>>>> +		if (!vsi->tstamp_rings)
>>>>> +			goto err_tstamp_rings;
>>>>> +	}
>>>>> +
>>>>>  	vsi->rx_rings = devm_kcalloc(dev, vsi->alloc_rxq,
>>>>>  				     sizeof(*vsi->rx_rings), GFP_KERNEL);
>>>>>  	if (!vsi->rx_rings)
>>>>> @@ -126,6 +135,8 @@ static int ice_vsi_alloc_arrays(struct ice_vsi *vsi)
>>>>>  err_txq_map:
>>>>>  	devm_kfree(dev, vsi->rx_rings);
>>>>>  err_rings:
>>>>> +	devm_kfree(dev, vsi->tstamp_rings);
>>>>> +err_tstamp_rings:
>>>>>  	devm_kfree(dev, vsi->tx_rings);
>>>>>  	return -ENOMEM;
>>>>>  }
>>>>> @@ -322,6 +333,8 @@ static void ice_vsi_free_arrays(struct ice_vsi *vsi)
>>>>>  	vsi->q_vectors = NULL;
>>>>>  	devm_kfree(dev, vsi->tx_rings);
>>>>>  	vsi->tx_rings = NULL;
>>>>> +	devm_kfree(dev, vsi->tstamp_rings);
>>>>> +	vsi->tstamp_rings = NULL;
>>>>>  	devm_kfree(dev, vsi->rx_rings);
>>>>>  	vsi->rx_rings = NULL;
>>>>>  	devm_kfree(dev, vsi->txq_map);
>>>>> @@ -1369,6 +1382,14 @@ static void ice_vsi_clear_rings(struct ice_vsi *vsi)
>>>>>  			}
>>>>>  		}
>>>>>  	}
>>>>> +	if (vsi->tstamp_rings) {
>>>>> +		ice_for_each_alloc_txq(vsi, i) {
>>>>> +			if (vsi->tstamp_rings[i]) {
>>>>> +				kfree_rcu(vsi->tstamp_rings[i], rcu);
>>>>> +				WRITE_ONCE(vsi->tstamp_rings[i], NULL);
>>>>> +			}
>>>>> +		}
>>>>> +	}
>>>>>  	if (vsi->rx_rings) {
>>>>>  		ice_for_each_alloc_rxq(vsi, i) {
>>>>>  			if (vsi->rx_rings[i]) {
>>>>> @@ -1413,6 +1434,24 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
>>>>>  		else
>>>>>  			ring->flags |= ICE_TX_FLAGS_RING_VLAN_L2TAG1;
>>>>>  		WRITE_ONCE(vsi->tx_rings[i], ring);
>>>>> +
>>>>> +		if (vsi->type == ICE_VSI_PF &&
>>>>> +		    test_bit(ICE_FLAG_TXTIME, pf->flags)) {
>>>>> +			struct ice_tx_ring *tstamp_ring;
>>>>> +
>>>>> +			tstamp_ring = kzalloc(sizeof(*ring), GFP_KERNEL);
>>>>> +			if (!tstamp_ring)
>>>>> +				goto err_out;
>>>>> +
>>>>> +			tstamp_ring->q_index = i;
>>>>> +			tstamp_ring->reg_idx = vsi->txq_map[i];
>>>>> +			tstamp_ring->vsi = vsi;
>>>>> +			tstamp_ring->dev = dev;
>>>>> +			tstamp_ring->count =
>>>>> +				       ice_calc_ts_ring_count(&pf->hw,
>>>>> +							      vsi->num_tx_desc);
>>>>> +			WRITE_ONCE(vsi->tstamp_rings[i], tstamp_ring);
>>>>> +		}
>>>>>  	}
>>>>>  
>>>>>  	/* Allocate Rx rings */
>>>>> @@ -2667,9 +2706,12 @@ void ice_vsi_free_tx_rings(struct ice_vsi *vsi)
>>>>>  	if (!vsi->tx_rings)
>>>>>  		return;
>>>>>  
>>>>> -	ice_for_each_txq(vsi, i)
>>>>> +	ice_for_each_txq(vsi, i) {
>>>>>  		if (vsi->tx_rings[i] && vsi->tx_rings[i]->desc)
>>>>>  			ice_free_tx_ring(vsi->tx_rings[i]);
>>>>> +		if (vsi->tstamp_rings && vsi->tstamp_rings[i])
>>>>> +			ice_free_tstamp_ring(vsi->tstamp_rings[i]);
>>>>> +	}
>>>>>  }
>>>>>  
>>>>>  /**
>>>>> @@ -3951,6 +3993,7 @@ void ice_init_feature_support(struct ice_pf *pf)
>>>>>  	if (pf->hw.mac_type == ICE_MAC_E830) {
>>>>>  		ice_set_feature_support(pf, ICE_F_MBX_LIMIT);
>>>>>  		ice_set_feature_support(pf, ICE_F_GCS);
>>>>> +		ice_set_feature_support(pf, ICE_F_TXTIME);
>>>>>  	}
>>>>>  }
>>>>>  
>>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>>>>> index 3b2233a84f2e..fbf9749cdb50 100644
>>>>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>>>>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>>>>> @@ -7292,8 +7292,12 @@ int ice_down(struct ice_vsi *vsi)
>>>>>  
>>>>>  	ice_napi_disable_all(vsi);
>>>>>  
>>>>> -	ice_for_each_txq(vsi, i)
>>>>> +	ice_for_each_txq(vsi, i) {
>>>>> +		if (vsi->tstamp_rings &&
>>>>> +		    (vsi->tx_rings[i]->flags & ICE_TX_FLAGS_TXTIME))
>>>>> +			ice_clean_tstamp_ring(vsi->tstamp_rings[i]);
>>>>>  		ice_clean_tx_ring(vsi->tx_rings[i]);
>>>>> +	}
>>>>>  
>>>>>  	if (vsi->xdp_rings)
>>>>>  		ice_for_each_xdp_txq(vsi, i)
>>>>> @@ -7363,6 +7367,17 @@ int ice_vsi_setup_tx_rings(struct ice_vsi *vsi)
>>>>>  		err = ice_setup_tx_ring(ring);
>>>>>  		if (err)
>>>>>  			break;
>>>>> +
>>>>> +		if (vsi->tstamp_rings) {
>>>>> +			struct ice_tx_ring *tstamp_ring = vsi->tstamp_rings[i];
>>>>> +
>>>>> +			if (vsi->netdev)
>>>>> +				tstamp_ring->netdev = vsi->netdev;
>>>>> +
>>>>> +			err = ice_setup_tstamp_ring(tstamp_ring);
>>>>> +			if (err)
>>>>> +				break;
>>>>> +		}
>>>>>  	}
>>>>>  
>>>>>  	return err;
>>>>> @@ -7489,7 +7504,8 @@ int ice_vsi_open(struct ice_vsi *vsi)
>>>>>  	if (err)
>>>>>  		goto err_setup_rx;
>>>>>  
>>>>> -	ice_vsi_cfg_netdev_tc(vsi, vsi->tc_cfg.ena_tc);
>>>>> +	if (!test_bit(ICE_FLAG_TXTIME, pf->flags))
>>>>> +		ice_vsi_cfg_netdev_tc(vsi, vsi->tc_cfg.ena_tc);
>>>>>  
>>>>>  	if (vsi->type == ICE_VSI_PF || vsi->type == ICE_VSI_SF) {
>>>>>  		/* Notify the stack of the actual queue counts. */
>>>>> @@ -9348,6 +9364,158 @@ static int ice_setup_tc_mqprio_qdisc(struct net_device *netdev, void *type_data)
>>>>>  	return ret;
>>>>>  }
>>>>>  
>>>>> +/**
>>>>> + * ice_is_txtime_ena - check if TxTime is enabled
>>>>> + * @vsi: VSI to check
>>>>> + *
>>>>> + * Return: true if TxTime is enabled on any Tx queue, else false.
>>>>> + */
>>>>> +static bool ice_is_txtime_ena(struct ice_vsi *vsi)
>>>>> +{
>>>>> +	int i;
>>>>> +
>>>>> +	ice_for_each_txq(vsi, i)
>>>>> +		if (vsi->tx_rings[i]->flags & ICE_TX_FLAGS_TXTIME)
>>>>> +			return true;
>>>>> +
>>>>> +	return false;
>>>>> +}
>>>>> +
>>>>> +/**
>>>>> + * ice_vsi_cfg_txtime - configure TxTime for the VSI
>>>>> + * @vsi: VSI to reconfigure
>>>>> + * @enable: enable or disable TxTime
>>>>> + * @queue: Tx queue to configure TxTime on
>>>>> + *
>>>>> + * Return: 0 on success, negative value on failure.
>>>>> + */
>>>>> +static int ice_vsi_cfg_txtime(struct ice_vsi *vsi, bool enable,
>>>>> +			      int queue)
>>>>> +{
>>>>> +	bool if_running = netif_running(vsi->netdev), locked = false;
>>>>> +	struct ice_pf *pf = vsi->back;
>>>>> +	int ret, timeout = 50;
>>>>> +
>>>>> +	while (test_and_set_bit(ICE_CFG_BUSY, vsi->back->state)) {
>>>>> +		timeout--;
>>>>> +		if (!timeout)
>>>>> +			return -EBUSY;
>>>>> +		usleep_range(1000, 2000);
>>>>> +	}
>>>>> +
>>>>> +	if (pf->adev) {
>>>>> +		mutex_lock(&pf->adev_mutex);
>>>>> +		device_lock(&pf->adev->dev);
>>>>> +		locked = true;
>>>>> +		if (pf->adev->dev.driver) {
>>>>> +			dev_err(ice_pf_to_dev(pf), "Cannot change TxTime when RDMA is active\n");
>>>>> +			ret = -EBUSY;
>>>>> +			goto adev_unlock;
>>>>> +		}
>>>>> +	}
>>>>> +
>>>>> +	/* If rnnning, close and open VSI to clear and reconfigure all rings. */
>>>>> +	if (if_running)
>>>>> +		ice_vsi_close(vsi);
>>>>> +
>>>>> +	/* Enable or disable PF TxTime flag which is checked during VSI rebuild
>>>>> +	 * for allocating the timestamp rings.
>>>>> +	 */
>>>>> +	if (enable)
>>>>> +		set_bit(ICE_FLAG_TXTIME, pf->flags);
>>>>> +	else
>>>>> +		clear_bit(ICE_FLAG_TXTIME, pf->flags);
>>>>> +
>>>>> +	/* Rebuild VSI to allocate or free timestamp rings */
>>>>> +	ret = ice_vsi_rebuild(vsi, ICE_VSI_FLAG_NO_INIT);
>>>>> +	if (ret) {
>>>>> +		dev_err(ice_pf_to_dev(pf), "Unhandled error during VSI rebuild. Unload and reload the driver.\n");
>>>>> +		goto adev_unlock;
>>>>> +	}
>>>>> +
>>>>> +	if (enable)
>>>>> +		vsi->tx_rings[queue]->flags |= ICE_TX_FLAGS_TXTIME;
>>>>> +
>>>>> +	if (!if_running)
>>>>> +		goto adev_unlock;
>>>>> +	ice_vsi_open(vsi);
>>>>> +
>>>>> +adev_unlock:
>>>>> +	if (locked) {
>>>>> +		device_unlock(&pf->adev->dev);
>>>>> +		mutex_unlock(&pf->adev_mutex);
>>>>> +	}
>>>>> +	clear_bit(ICE_CFG_BUSY, vsi->back->state);
>>>>> +	return ret;
>>>>> +}
>>>>> +
>>>>> +/**
>>>>> + * ice_offload_txtime - set earliest TxTime first
>>>>> + * @netdev: network interface device structure
>>>>> + * @qopt_off: etf queue option offload from the skb to set
>>>>> + *
>>>>> + * Return: 0 on success, negative value on failure.
>>>>> + */
>>>>> +static int ice_offload_txtime(struct net_device *netdev,
>>>>> +			      void *qopt_off)
>>>>> +{
>>>>> +	struct ice_netdev_priv *np = netdev_priv(netdev);
>>>>> +	struct ice_pf *pf = np->vsi->back;
>>>>> +	struct tc_etf_qopt_offload *qopt;
>>>>> +	struct ice_vsi *vsi = np->vsi;
>>>>> +	struct ice_tx_ring *tx_ring;
>>>>> +	int ret = 0;
>>>>> +
>>>>> +	if (!ice_is_feature_supported(pf, ICE_F_TXTIME))
>>>>> +		return -EOPNOTSUPP;
>>>>> +
>>>>> +	qopt = qopt_off;
>>>>> +	if (!qopt_off || qopt->queue < 0 || qopt->queue >= vsi->num_txq)
>>>>> +		return -EINVAL;
>>>>> +
>>>>> +	tx_ring = vsi->tx_rings[qopt->queue];
>>>>> +
>>>>> +	/* Enable or disable TxTime on the specified Tx queue. */
>>>>> +	if (qopt->enable)
>>>>> +		tx_ring->flags |= ICE_TX_FLAGS_TXTIME;
>>>>> +	else
>>>>> +		tx_ring->flags &= ~ICE_TX_FLAGS_TXTIME;
>>>>> +
>>>>> +	/* When TxTime is first enabled on any Tx queue or is disabled on all
>>>>> +	 * Tx queues, then configure TxTime to allocate or free resources.
>>>>> +	 */
>>>>> +	if (!test_bit(ICE_FLAG_TXTIME, pf->flags) || !ice_is_txtime_ena(vsi)) {
>>>>> +		ret = ice_vsi_cfg_txtime(vsi, qopt->enable, qopt->queue);
>>>>> +		if (ret)
>>>>> +			goto err;
>>>>> +	} else if (netif_running(netdev)) {
>>>>> +		struct ice_aqc_ena_dis_txtime_qgrp txtime_pg;
>>>>> +		struct ice_hw *hw = &pf->hw;
>>>>> +
>>>>> +		/* If queues are allocated and configured (running), then enable
>>>>> +		 * or disable TxTime on the specified queue.
>>>>> +		 */
>>>>> +		ret = ice_aq_ena_dis_txtimeq(hw, qopt->queue, 1, qopt->enable,
>>>>> +					     &txtime_pg, NULL);
>>>>> +		if (ret)
>>>>> +			goto err;
>>>>> +	}
>>>>> +	netdev_info(netdev, "%s TxTime on queue: %i\n",
>>>>> +		    str_enable_disable(qopt->enable), qopt->queue);
>>>>> +
>>>>> +	return 0;
>>>>> +
>>>>> +err:
>>>>> +	netdev_err(netdev, "Failed to %s TxTime on queue: %i\n",
>>>>> +		   str_enable_disable(qopt->enable), qopt->queue);
>>>>> +
>>>>> +	if (qopt->enable)
>>>>> +		tx_ring->flags &= ~ICE_TX_FLAGS_TXTIME;
>>>>> +	else
>>>>> +		tx_ring->flags |= ICE_TX_FLAGS_TXTIME;
>>>>> +	return ret;
>>>>> +}
>>>>> +
>>>>>  static LIST_HEAD(ice_block_cb_list);
>>>>>  
>>>>>  static int
>>>>> @@ -9409,6 +9577,8 @@ ice_setup_tc(struct net_device *netdev, enum tc_setup_type type,
>>>>>  			mutex_unlock(&pf->adev_mutex);
>>>>>  		}
>>>>>  		return err;
>>>>> +	case TC_SETUP_QDISC_ETF:
>>>>> +		return ice_offload_txtime(netdev, type_data);
>>>>>  	default:
>>>>>  		return -EOPNOTSUPP;
>>>>>  	}
>>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
>>>>> index 0e5107fe62ad..69cdbd2eda07 100644
>>>>> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
>>>>> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
>>>>> @@ -332,6 +332,75 @@ static bool ice_clean_tx_irq(struct ice_tx_ring *tx_ring, int napi_budget)
>>>>>  	return !!budget;
>>>>>  }
>>>>>  
>>>>> +/**
>>>>> + * ice_clean_tstamp_ring - clean time stamp ring
>>>>> + * @tstamp_ring: ring to be cleaned
>>>>> + */
>>>>> +void ice_clean_tstamp_ring(struct ice_tx_ring *tstamp_ring)
>>>>> +{
>>>>> +	u32 size;
>>>>> +
>>>>> +	if (!tstamp_ring->desc)
>>>>> +		return;
>>>>> +
>>>>> +	size = ALIGN(tstamp_ring->count * sizeof(struct ice_ts_desc),
>>>>> +		     PAGE_SIZE);
>>>>> +	memset(tstamp_ring->desc, 0, size);
>>>>> +	tstamp_ring->next_to_use = 0;
>>>>> +	tstamp_ring->next_to_clean = 0;
>>>>> +}
>>>>> +
>>>>> +/**
>>>>> + * ice_free_tstamp_ring - free time stamp resources per queue
>>>>> + * @tstamp_ring: time stamp descriptor ring for a specific queue
>>>>> + */
>>>>> +void ice_free_tstamp_ring(struct ice_tx_ring *tstamp_ring)
>>>>> +{
>>>>> +	u32 size;
>>>>> +
>>>>> +	ice_clean_tstamp_ring(tstamp_ring);
>>>>> +
>>>>> +	if (!tstamp_ring->desc)
>>>>> +		return;
>>>>> +
>>>>> +	size = ALIGN(tstamp_ring->count * sizeof(struct ice_ts_desc),
>>>>> +		     PAGE_SIZE);
>>>>> +	dmam_free_coherent(tstamp_ring->dev, size, tstamp_ring->desc,
>>>>> +			   tstamp_ring->dma);
>>>>> +	tstamp_ring->desc = NULL;
>>>>> +}
>>>>> +
>>>>> +/**
>>>>> + * ice_setup_tstamp_ring - allocate the Time Stamp ring
>>>>> + * @tstamp_ring: the time stamp ring to set up
>>>>> + *
>>>>> + * Return: 0 on success, negative on error
>>>>> + */
>>>>> +int ice_setup_tstamp_ring(struct ice_tx_ring *tstamp_ring)
>>>>> +{
>>>>> +	struct device *dev = tstamp_ring->dev;
>>>>> +	u32 size;
>>>>> +
>>>>> +	if (!dev)
>>>>> +		return -ENOMEM;
>>>>> +
>>>>> +	/* round up to nearest page */
>>>>> +	size = ALIGN(tstamp_ring->count * sizeof(struct ice_ts_desc),
>>>>> +		     PAGE_SIZE);
>>>>> +	tstamp_ring->desc = dmam_alloc_coherent(dev, size, &tstamp_ring->dma,
>>>>> +						GFP_KERNEL);
>>>>> +
>>>>> +	if (!tstamp_ring->desc) {
>>>>> +		dev_err(dev, "Unable to allocate memory for Time stamp Ring, size=%d\n",
>>>>> +			size);
>>>>> +		return -ENOMEM;
>>>>> +	}
>>>>> +
>>>>> +	tstamp_ring->next_to_use = 0;
>>>>> +	tstamp_ring->next_to_clean = 0;
>>>>> +	return 0;
>>>>> +}
>>>>> +
>>>>>  /**
>>>>>   * ice_setup_tx_ring - Allocate the Tx descriptors
>>>>>   * @tx_ring: the Tx ring to set up
>>>>> @@ -1647,6 +1716,7 @@ static int ice_maybe_stop_tx(struct ice_tx_ring *tx_ring, unsigned int size)
>>>>>  /**
>>>>>   * ice_tx_map - Build the Tx descriptor
>>>>>   * @tx_ring: ring to send buffer on
>>>>> + * @tstamp_ring: ring tied to tx_ring
>>>>>   * @first: first buffer info buffer to use
>>>>>   * @off: pointer to struct that holds offload parameters
>>>>>   *
>>>>> @@ -1656,7 +1726,7 @@ static int ice_maybe_stop_tx(struct ice_tx_ring *tx_ring, unsigned int size)
>>>>>   */
>>>>>  static void
>>>>>  ice_tx_map(struct ice_tx_ring *tx_ring, struct ice_tx_buf *first,
>>>>> -	   struct ice_tx_offload_params *off)
>>>>> +	   struct ice_tx_ring *tstamp_ring, struct ice_tx_offload_params *off)
>>>>>  {
>>>>>  	u64 td_offset, td_tag, td_cmd;
>>>>>  	u16 i = tx_ring->next_to_use;
>>>>> @@ -1778,10 +1848,47 @@ ice_tx_map(struct ice_tx_ring *tx_ring, struct ice_tx_buf *first,
>>>>>  	/* notify HW of packet */
>>>>>  	kick = __netdev_tx_sent_queue(txring_txq(tx_ring), first->bytecount,
>>>>>  				      netdev_xmit_more());
>>>>> -	if (kick)
>>>>> -		/* notify HW of packet */
>>>>> -		writel(i, tx_ring->tail);
>>>>> +	if (kick) {
>>>>> +		if (tx_ring->flags & ICE_TX_FLAGS_TXTIME) {
>>>>> +			u16 j = tstamp_ring->next_to_use;
>>>>> +			struct ice_ts_desc *ts_desc;
>>>>> +			struct timespec64 ts;
>>>>> +			u32 tstamp;
>>>>> +
>>>>> +			ts = ktime_to_timespec64(first->skb->tstamp);
>>>>> +			tstamp = ts.tv_nsec >> ICE_TXTIME_CTX_RESOLUTION_128NS;
>>>>> +
>>>>> +			ts_desc = ICE_TS_DESC(tstamp_ring, j);
>>>>> +			ts_desc->tx_desc_idx_tstamp =
>>>>> +					ice_build_tstamp_desc(i, tstamp);
>>>>> +
>>>>> +			j++;
>>>>> +			if (j == tstamp_ring->count) {
>>>>> +				int fetch = tstamp_ring->count - tx_ring->count;
>>>>> +
>>>>> +				j = 0;
>>>>> +
>>>>> +				/* To prevent an MDD, when wrapping the tstamp
>>>>> +				 * ring create additional TS descriptors equal
>>>>> +				 * to the number of the fetch TS descriptors
>>>>> +				 * value. HW will merge the TS descriptors with
>>>>> +				 * the same timestamp value into a single
>>>>> +				 * descriptor.
>>>>> +				 */
>>>>> +				for (; j < fetch; j++) {
>>>>> +					ts_desc = ICE_TS_DESC(tstamp_ring, j);
>>>>> +					ts_desc->tx_desc_idx_tstamp =
>>>>> +					       ice_build_tstamp_desc(i, tstamp);
>>>>> +				}
>>>>> +			}
>>>>> +			tstamp_ring->next_to_use = j;
>>>>>  
>>>>> +			writel_relaxed(tstamp_ring->next_to_use,
>>>>> +				       tstamp_ring->tail);
>>>>> +		} else {
>>>>> +			writel_relaxed(i, tx_ring->tail);
>>>>> +		}
>>>>> +	}
>>>>>  	return;
>>>>>  
>>>>>  dma_error:
>>>>> @@ -2368,11 +2475,13 @@ ice_tstamp(struct ice_tx_ring *tx_ring, struct sk_buff *skb,
>>>>>   * ice_xmit_frame_ring - Sends buffer on Tx ring
>>>>>   * @skb: send buffer
>>>>>   * @tx_ring: ring to send buffer on
>>>>> + * @tstamp_ring: ring tied to tx
>>>>>   *
>>>>> - * Returns NETDEV_TX_OK if sent, else an error code
>>>>> + * Return: NETDEV_TX_OK if sent, else an error code
>>>>>   */
>>>>>  static netdev_tx_t
>>>>> -ice_xmit_frame_ring(struct sk_buff *skb, struct ice_tx_ring *tx_ring)
>>>>> +ice_xmit_frame_ring(struct sk_buff *skb, struct ice_tx_ring *tx_ring,
>>>>> +		    struct ice_tx_ring *tstamp_ring)
>>>>>  {
>>>>>  	struct ice_tx_offload_params offload = { 0 };
>>>>>  	struct ice_vsi *vsi = tx_ring->vsi;
>>>>> @@ -2471,7 +2580,7 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_tx_ring *tx_ring)
>>>>>  		cdesc->qw1 = cpu_to_le64(offload.cd_qw1);
>>>>>  	}
>>>>>  
>>>>> -	ice_tx_map(tx_ring, first, &offload);
>>>>> +	ice_tx_map(tx_ring, first, tstamp_ring, &offload);
>>>>>  	return NETDEV_TX_OK;
>>>>>  
>>>>>  out_drop:
>>>>> @@ -2490,6 +2599,7 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_tx_ring *tx_ring)
>>>>>  netdev_tx_t ice_start_xmit(struct sk_buff *skb, struct net_device *netdev)
>>>>>  {
>>>>>  	struct ice_netdev_priv *np = netdev_priv(netdev);
>>>>> +	struct ice_tx_ring *tstamp_ring = NULL;
>>>>>  	struct ice_vsi *vsi = np->vsi;
>>>>>  	struct ice_tx_ring *tx_ring;
>>>>>  
>>>>> @@ -2501,7 +2611,10 @@ netdev_tx_t ice_start_xmit(struct sk_buff *skb, struct net_device *netdev)
>>>>>  	if (skb_put_padto(skb, ICE_MIN_TX_LEN))
>>>>>  		return NETDEV_TX_OK;
>>>>>  
>>>>> -	return ice_xmit_frame_ring(skb, tx_ring);
>>>>> +	if (tx_ring->flags & ICE_TX_FLAGS_TXTIME)
>>>>> +		tstamp_ring = vsi->tstamp_rings[skb->queue_mapping];
>>>>> +
>>>>> +	return ice_xmit_frame_ring(skb, tx_ring, tstamp_ring);
>>>>>  }
>>>>>  
>>>>>  /**
>>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
>>>>> index a4b1e9514632..4b63081629d0 100644
>>>>> --- a/drivers/net/ethernet/intel/ice/ice_txrx.h
>>>>> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
>>>>> @@ -406,6 +406,7 @@ struct ice_tx_ring {
>>>>>  #define ICE_TX_FLAGS_RING_XDP		BIT(0)
>>>>>  #define ICE_TX_FLAGS_RING_VLAN_L2TAG1	BIT(1)
>>>>>  #define ICE_TX_FLAGS_RING_VLAN_L2TAG2	BIT(2)
>>>>> +#define ICE_TX_FLAGS_TXTIME		BIT(3)
>>>>>  	u8 flags;
>>>>>  	u8 dcb_tc;			/* Traffic class of ring */
>>>>>  	u16 quanta_prof_id;
>>>>> @@ -497,10 +498,13 @@ u16
>>>>>  ice_select_queue(struct net_device *dev, struct sk_buff *skb,
>>>>>  		 struct net_device *sb_dev);
>>>>>  void ice_clean_tx_ring(struct ice_tx_ring *tx_ring);
>>>>> +int ice_setup_tstamp_ring(struct ice_tx_ring *tstamp_ring);
>>>>> +void ice_clean_tstamp_ring(struct ice_tx_ring *tstamp_ring);
>>>>>  void ice_clean_rx_ring(struct ice_rx_ring *rx_ring);
>>>>>  int ice_setup_tx_ring(struct ice_tx_ring *tx_ring);
>>>>>  int ice_setup_rx_ring(struct ice_rx_ring *rx_ring);
>>>>>  void ice_free_tx_ring(struct ice_tx_ring *tx_ring);
>>>>> +void ice_free_tstamp_ring(struct ice_tx_ring *tstamp_ring);
>>>>>  void ice_free_rx_ring(struct ice_rx_ring *rx_ring);
>>>>>  int ice_napi_poll(struct napi_struct *napi, int budget);
>>>>>  int
>>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
>>>>> index 6cf32b404127..99717730f21a 100644
>>>>> --- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
>>>>> +++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
>>>>> @@ -53,6 +53,20 @@ ice_build_ctob(u64 td_cmd, u64 td_offset, unsigned int size, u64 td_tag)
>>>>>  			   (td_tag    << ICE_TXD_QW1_L2TAG1_S));
>>>>>  }
>>>>>  
>>>>> +/**
>>>>> + * ice_build_tstamp_desc - build Tx time stamp descriptor
>>>>> + * @tx_desc: Tx LAN descriptor index
>>>>> + * @tstamp: time stamp
>>>>> + *
>>>>> + * Return: Tx time stamp descriptor
>>>>> + */
>>>>> +static inline __le32
>>>>> +ice_build_tstamp_desc(u16 tx_desc, u32 tstamp)
>>>>> +{
>>>>> +	return cpu_to_le32(FIELD_PREP(ICE_TXTIME_TX_DESC_IDX_M, tx_desc) |
>>>>> +			   FIELD_PREP(ICE_TXTIME_STAMP_M, tstamp));
>>>>> +}
>>>>> +
>>>>>  /**
>>>>>   * ice_get_vlan_tci - get VLAN TCI from Rx flex descriptor
>>>>>   * @rx_desc: Rx 32b flex descriptor with RXDID=2
>>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
>>>>> index b147f6cf2615..25a283c93f55 100644
>>>>> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
>>>>> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
>>>>> @@ -582,7 +582,7 @@ static bool ice_vc_isvalid_ring_len(u16 ring_len)
>>>>>  {
>>>>>  	return ring_len == 0 ||
>>>>>  	       (ring_len >= ICE_MIN_NUM_DESC &&
>>>>> -		ring_len <= ICE_MAX_NUM_DESC &&
>>>>> +		ring_len <= ICE_MAX_NUM_DESC_E810 &&
>>>>>  		!(ring_len % ICE_REQ_DESC_MULTIPLE));
>>>>>  }
>>>>>  
>>>>> -- 
>>>>> 2.47.0
>>>>>
>>>>>
>>>
> 

