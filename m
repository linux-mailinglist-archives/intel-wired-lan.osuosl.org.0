Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DE08CFC73
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 May 2024 11:07:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8777581E56;
	Mon, 27 May 2024 09:07:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eD4d04K3CSbl; Mon, 27 May 2024 09:07:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DCD6881E99
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716800820;
	bh=SCKtIbyoZ5iS1w7z3u0lCCozj1VcaZ848YlJOICdXS0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Vnf4/051GCAdpG3XDHt2E8Uoxowcfj05yjdf3D9qRTVjKr/AUlCZaIFp6IBNDZkg7
	 dK2+T7r9sEC0JL90Vzt4g3SDzm79lzl6XkiQudMUrHBNg952OgmvJsGqTiLQmz/qco
	 7FbCTNFatz5xP6nk8/KjcPL4KP+xc4Cs/0vGPhU+gKe4YSBD0JgMTKqVnFsOHwR3QQ
	 Fp6vFPXUXVO+TMsf2T7OndS6WTKAwGnf7LJpVPaZ4eCiNDP/NPOwxL1WMuEQ5iRAnV
	 biGT7UGMQvTd4B2UGGNuM6TbIh8W/5QtzCxGCGoGOokGp+H2PNi1amaT179cRwBWam
	 NmYxlrTTehW7w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DCD6881E99;
	Mon, 27 May 2024 09:07:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D0EC71BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 09:06:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BBC67400E5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 09:06:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kRUxYc1m5Xda for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 May 2024 09:06:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A8EB1400AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A8EB1400AF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A8EB1400AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 09:06:55 +0000 (UTC)
X-CSE-ConnectionGUID: mUkp/DLkQ6ensRoiU02z/g==
X-CSE-MsgGUID: x+l6YkIqRZm9aU/IDSE5WA==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="16052132"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="16052132"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 02:06:54 -0700
X-CSE-ConnectionGUID: HTuEOT7WTnSdBb1ULKwJRA==
X-CSE-MsgGUID: DB0O9NxRQdWasyTDzss9TQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="35177058"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 May 2024 02:06:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 27 May 2024 02:06:52 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 27 May 2024 02:06:52 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 27 May 2024 02:06:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jW97LuYQejG7QkcMwM7bn01mnzIEDbBv+oqY4jdI8G+dl9vuIPtPxpFV1sgojK2qicdNWYfY0v/kIRNxA1ADTroV+KBB6LlXGoZhgndIfrClUQsp/Dd2teY41aNa4tRVXezwJz8Z2+34Y/tVxSRRKkYjXvh5q5thMFtnGt2cqNTaiyU7XQ77/8Upp1Ud9JTix9D9iffbOB3/f+WZZZ6EwgNxiJojHAbdYXLAxY2k+WSDCKr/rjF2Ddx9VGYDjnayDer84aW5Orco0uKaQOshUXUyAPfuw++0HMYzKqV0dpjCto9ecbv+IL6SoTt1FH+AESWBEyChoF/q8uTzma0ccw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SCKtIbyoZ5iS1w7z3u0lCCozj1VcaZ848YlJOICdXS0=;
 b=aYWw7250ssEVRCH0FG42N5bDAHPM0bgPDgOMjYtRuLQGJrvCUVwWaFQk38OsW5xK3YGs8wSwsw9AP+eLkSc+NwZ7AtGwfrEnPOO37vxTXKNSvzeNL39D1N0KTtavHajHNTFrE+eFmrucE5GTiYQ7tUI2BKHFEcPoFv636waGeu5rtKngOdsbSPSLvRejqqcKqd5Gx9cMhGVkE4xjQ6x5IzfVrcAzI9ZLwUXywV2Zvtk2m63uDK24LEiibR4pFYFdDWRcFCKiO7nVuNI7B8zzklHoJVaaeHaTnLPJZIiNor1JozvLBGlXNzylLP/jwAhfknBd3GxWIZTX66zwvBzlYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by CH3PR11MB8591.namprd11.prod.outlook.com (2603:10b6:610:1af::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.29; Mon, 27 May
 2024 09:06:50 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%5]) with mapi id 15.20.7611.025; Mon, 27 May 2024
 09:06:50 +0000
Message-ID: <0b4e4b82-6c86-4641-b5de-a0b5bc06cb61@intel.com>
Date: Mon, 27 May 2024 11:06:46 +0200
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, Paul Menzel <pmenzel@molgen.mpg.de>
References: <20240524-iwl-net-2024-05-16-fix-nvm-tlv-issue-v4-1-4fc1da2a450d@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20240524-iwl-net-2024-05-16-fix-nvm-tlv-issue-v4-1-4fc1da2a450d@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI1P293CA0013.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:2::15) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|CH3PR11MB8591:EE_
X-MS-Office365-Filtering-Correlation-Id: ab584dbc-1e20-44a9-7b2d-08dc7e2c5864
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZG9rNzRGRU1vckZ1V2ZQZG5mYW5kWUlHU05xeE9mTko1dXdhY0tFQWt3Z0FJ?=
 =?utf-8?B?bWhHZXdLV1I1RkkrelAxVGNvekVyT2NHci9Xc2w2Z0ViQWFPMm85THg2ckE4?=
 =?utf-8?B?dnUyWnVST3RnclREWUZ6QW4zQmVjT2NLbHV2Zkx1WDJibC9uZ2c0MWFoR2tz?=
 =?utf-8?B?dDN4R1hmaXBGcEMxTk96WlNVZFNhRUxVd1ZCQVptdmJpL1VybnNtSFVpZnYx?=
 =?utf-8?B?am9saTdRSlhXcGpibTRhR1NIeVV2cmNyWjVZRzVEdWtJMzBrWmFEKzhkQ2pC?=
 =?utf-8?B?bXNnL2k3ZU5pZ0VTZ0xva0ZsSnlSVWZsa09XTVpsbU5DRzZ0L3pVRW9sYUI4?=
 =?utf-8?B?NUNnaTliRUpBaVk1VnJnZXFES3pjais3eVJXY1V3RDZCOGhLNFoybXFManFW?=
 =?utf-8?B?bmhBTUxtanNvakZhL0FCamh5aUdEUXpRUjd1MTBFM1BoZkNqZmZSYjdiQjFz?=
 =?utf-8?B?NzZvQUFVRTQ0SURLejFMMzdkN2lwbFg5NXJvL2ZMTWVlU045TkRFeXRkSFBy?=
 =?utf-8?B?NlowdnhMbmlPemdXMVVzZHp2a09JbFJ4SEpScEpPRHNBdjE2dEpBOW5LQWRr?=
 =?utf-8?B?U2cxTnpSMWJXWlFsNHl1RExQRnJ1QUl6NXB6U2h3UXBHOXhvM3dpTk5vMm9i?=
 =?utf-8?B?bTJUTkxtYlp6RG9DTzk0Vjh2UE51ZkpMa0xQVk94Rk9DZmp0eTJmRnIybHNO?=
 =?utf-8?B?UzBScFBEMjlhOGdKM1V1RjlZdjhKa1lXZDFaemRuRWRwdFRzTGRwZXdiM2tL?=
 =?utf-8?B?V1J2aHE4L3JHcXYyUVA1MXU4L3dFcGZuaFRVaFVQTzZmcDZlbjZRUzZ5QmNC?=
 =?utf-8?B?bkJNQk5JY3ZiVmU1TEZ0eWJ0Q3RaczZGSzJWVGtGOE1HbmtSeUpzUi9jelpa?=
 =?utf-8?B?VkpEbE5iS01Jb2taQ0FKNTdldktUWTJUMmRYSng0eEhFcWs0cUlQeHBiMEFy?=
 =?utf-8?B?QVM2T2pRVlEzTitvWVpRbGU5ZkswN05SQUY4QVk1WXplRnVwTElTakkxWUZO?=
 =?utf-8?B?ZGI5Y0ZSWjVkMWlUQ1dhaG14ZlMwUTlqT25ZZXFhc1Z4MjZZRXE1RE4vbDgy?=
 =?utf-8?B?c2VCUUZaSElxMm80WXk1TkdONHYvUWJjTnViZ1lSaXZwQU54dUVZWU11T3JZ?=
 =?utf-8?B?a0htQU9Ccnkvak5lTzJGOG5vY2FwK2gwVFNBWlFZNXBSc3EyOStkMDd4SDd2?=
 =?utf-8?B?R2d5TnlvTUdDWW5IT2p6VjRLNWtYQkJlQTVPOGhETHUzRzUzYVhnaXNaV2dB?=
 =?utf-8?B?U2VieXdJUEtFc1lOMjFyNXNtUm1WcXM2K3BmanY0Qlo3UWZ3d3NUWUZYdGdV?=
 =?utf-8?B?MDJUVFpxZkFMTUREcnhuaStESUJkblFsdVBNT2JuMHRNekRyTS9sR3dxOGZ4?=
 =?utf-8?B?c1E3a3RyUTEvRmZ3RE10MXV6WjhwdUpBUVNOTXNlVFY4elcyWU9qU0dCd1ZH?=
 =?utf-8?B?LytnaldzblVBamZOMUFpY1F2YVBRRGloYkVxMTBwVHdxdG01RldrbVhFSWhP?=
 =?utf-8?B?ZDRHUkhCWXdoQXY4MXRxa2FrUE9UT0JRbUdkR1UweElzUkZScG9iQzF6Tyts?=
 =?utf-8?B?cy82Y2lMNFh1bHIxMFBtM1ZXM3dPYVJydGx6ZmV6ZWxJam1YRHlYZmRTMzZE?=
 =?utf-8?Q?flWqBjLvPkICpExw6E1spG+EttzbPiZLrehGZK9vXnFU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dGxlekpoUFI0N1AwMnFkU1pXODVJV3VBOEdpVGh2VXpFMHFVUndNbUtZdllD?=
 =?utf-8?B?RTBLR2Y3RzhneWRwY0tSZzgyUjhuVlFGOWZYYVREVjZWcWduNWFXTWRSUVBV?=
 =?utf-8?B?eUQ2dkh3RmJMVXZJei9QSWIzd25EVkZRYytUVUQ3MTNhenR1ZDhmQ2FVajVR?=
 =?utf-8?B?dmtlTG45UWFCL3JHZ0xCWjBxc28xbVFEZ3NKbEpOd0wvbmZESnNwUFRhS0Fo?=
 =?utf-8?B?WnBHU2pSWUtCSWl2eHZHRFdydXAwNGV5endodzRQVGRubld6RVpOVUhYeUc4?=
 =?utf-8?B?RlV0WG9ZQytDcVZDTk9sVlVhVGRhN2kwazJLeFRhZGgrN1ZWRUozNWRsUVNB?=
 =?utf-8?B?ZUE1emJSQ1A4eWhIMlVpcVR0cFkveEZFY0tvTTJCdWVvNU9FZEl4N3B5TWI5?=
 =?utf-8?B?eHNiRnBqYlZrT2hZS2Y1b2s4ZmFaTWZpYVBrQXg0N1RYSmFGc2hoY2ROWTlZ?=
 =?utf-8?B?UHpQMWFYOUszL25rcHMzalFXVERmMTB3UVJOcGlWVHVaQ0FsR3dIbk5lNHRq?=
 =?utf-8?B?RTZtbGhyVE5XK3dFdEhUaEgvQXRzaTJjSkkyUy9XOW4rYzVEUEFKdHRnbmJj?=
 =?utf-8?B?OXBxS1NuUFQ0M2VMM1RhRUtrYXh6VnNETk41ai82RHdsMXhZdkdGcTJnQkc1?=
 =?utf-8?B?ZHYyNTdmTCtKa3Q1bVRxT3R6WGN2R25PWURCRkxLTVRIQ2FmK3FHdmVEN2VM?=
 =?utf-8?B?R2oyeFV1cUR0c256VERFSTM5T0JQY05CZWErYk12T3MwZmNaZHo1ODFmTkVv?=
 =?utf-8?B?ckY5TXB3ZUxxeEJ5WmlxRzkzOUtIcXBMbU50bWZ3MGR1c2IzdFdjNllseTVR?=
 =?utf-8?B?dFY3dmdueDAyZWp5Qm5aUFJVR2MzQ3dSMDRneWV4UXJuZjRBTG42TWcvV3pW?=
 =?utf-8?B?bFowY0pOcndVZW0vaFNDUDNhdzVIV1lsNW5XcXBZSEJpeWlKK3o3SzVVeHR3?=
 =?utf-8?B?ZHZic3RTQVNEdjBnTzBYbTh3c09SRXVFakZpVE1xWElXbW9rLzdLZmZ0NkJN?=
 =?utf-8?B?N3RNNWRkNE9YSWpmczIreGtraGdYaVBpelBobG03a2ZWcUhvSmg0bEozQVJr?=
 =?utf-8?B?ZkMvbkN6V3lSbkwzYVh3bnJFczhhZnQxd2RqdjJkbEViTHltRWpybHJHc2J2?=
 =?utf-8?B?TTI2eXNVZnpVYzQvZ2xFMC9lY3VialpoZzBMZ2ZJK3RZak5KdWkyUHp3aXNS?=
 =?utf-8?B?UFhpalY2UFRPN3BCQ2JqRjRNZVNZREthTmxIdHovcEVWTVNnQklva2EyVmJi?=
 =?utf-8?B?WE9GNEdTdjhVNzJ2WkxoM00zWWhmcjBLK1gyNWdlN1QxZmxVaCtvZHlUdUp2?=
 =?utf-8?B?dGlURmg4QUNJS3FBUnd5TTJ6d2pDMTFSdU81WDNWeUNBczk3cUNCSCtSZ3Nq?=
 =?utf-8?B?ZnE1cCs3SzdzZ1VMQnJiNkpDQUFVODYxeFFFK1hzMFZFb0FJdWxDUW5FaVJi?=
 =?utf-8?B?MmtObmhoeTJMai95U3hlYis4WjNVWnNxT1RnLzdPNlg0c0oxZC9QVjFOTnQz?=
 =?utf-8?B?YUpiMXZsU2N0NXAvZ0pmUTNZWmhieFJNYlZNdXdxTmt6VzVkcFIrQzcybE9v?=
 =?utf-8?B?dk5la2JNenpsUldHeGNaeDA2cldiWjByVkg0VzZTUWp0UzdrK3BOcFA5SjIr?=
 =?utf-8?B?RDdmd3VTZkFvVndmNG9oQnpXY1Z3TnRnOHp4QWVzSkFPb0VWMHluSUNOL2sx?=
 =?utf-8?B?Tms1WW1rY0N3ai9NaERvZDFCTWp0Z1V1c0VPTStBUHQ5eTN3NjJCcXJ5N0FH?=
 =?utf-8?B?M1BZdjg0YmtrWmNIcG5SSEQwY2Z4U3YwZ2trSWJWWm9XRXZnZjgyUmRwWHV4?=
 =?utf-8?B?UGpFWWFZN0IyOHlDdDgxKzJIYU5PcDJnNHVqMUFMMDFEZzJDU2RQWUVWMlQr?=
 =?utf-8?B?a3NuTmF0MFB2QmF5OXYwRXFTdVZEL1lLVllvMDNGVWNZMW5pdWJoUXVjLzR4?=
 =?utf-8?B?SVZWbmFsR2N1L1plS05qb3g5YlB1TVhBWUlTQWNzc2dhQmE1STRMTENlY01B?=
 =?utf-8?B?eWU2Ym9ZakZIQlBkbEUwYUpKcHpGYzlaOWJKNkV2elpDaExMVU1MZ3NxelR4?=
 =?utf-8?B?a1E2TzE0NExwVS9lem51aE1kWkQ4dE5BRGN2RmY5TElKbnJCVDFCTEhnOTdU?=
 =?utf-8?B?eE9nWFRLZEhiYUdEUTIvK0JWMDlWYlBmM0lhZmdla1lKd0pzQ0pYVTNSdUw5?=
 =?utf-8?B?ZHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ab584dbc-1e20-44a9-7b2d-08dc7e2c5864
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2024 09:06:50.8160 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rpXb14zuDiYVczzjaw1euYdxQFqV1LietdmluqjNpqLCZjdp/f0SaBPoO5UdsG6spfIztxIQs97BkKzqIxPQU8+W/Ag9oMkux7dfUZrVuNg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8591
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716800815; x=1748336815;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wF4gtRWpP2twLoGqTHVgVVYsZsT+NG/JS9iX0tmLTeI=;
 b=dP8anfaM1CAmEBAPoac/oTTjGUTl2NtShFLxaQ7zDD/MPlEXY3xYu8Qv
 BuNLCXvSPQsOnE3IDYSozRwIB/lD9rleU+jIFBFPlMXS3DxkuBT8RUsLU
 fvmiQ4GjaG39GFrfIr2tT97yjG8cCnM361T3TAxJhXNZ2lqcnncdoQuMt
 wh8uW0mgBttwb+A1bQe1Ld83BcVid+5q3DhHeuUinFFxZ6s/bt2ftL/ry
 7Vhck2KOEV6NnQkEMn8gAv1LhLrY0goylnyViCI3wFr5HRXVpPEVmBZdo
 6vFpTYXjLCdBlY5ae+n1Zb9APjqANtwYs7CFhuW+QCJR1ougYylm9T9VH
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dP8anfaM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] ice: fix iteration of TLVs
 in Preserved Fields Area
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
Cc: Paul Greenwalt <paul.greenwalt@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/25/24 01:06, Jacob Keller wrote:
> The ice_get_pfa_module_tlv() function iterates over the Type-Length-Value
> structures in the Preserved Fields Area (PFA) of the NVM. This is used by
> the driver to access data such as the Part Board Assembly identifier.
> 
> The function uses simple logic to iterate over the PFA. First, the pointer
> to the PFA in the NVM is read. Then the total length of the PFA is read
> from the first word.
> 
> A pointer to the first TLV is initialized, and a simple loop iterates over
> each TLV. The pointer is moved forward through the NVM until it exceeds the
> PFA area.
> 
> The logic seems sound, but it is missing a key detail. The Preserved
> Fields Area length includes one additional final word. This is documented
> in the device data sheet as a dummy word which contains 0xFFFF. All NVMs
> have this extra word.
> 
> If the driver tries to scan for a TLV that is not in the PFA, it will read
> past the size of the PFA. It reads and interprets the last dummy word of
> the PFA as a TLV with type 0xFFFF. It then reads the word following the PFA
> as a length.
> 
> The PFA resides within the Shadow RAM portion of the NVM, which is
> relatively small. All of its offsets are within a 16-bit size. The PFA
> pointer and TLV pointer are stored by the driver as 16-bit values.
> 
> In almost all cases, the word following the PFA will be such that
> interpreting it as a length will result in 16-bit arithmetic overflow. Once
> overflowed, the new next_tlv value is now below the maximum offset of the
> PFA. Thus, the driver will continue to iterate the data as TLVs. In the
> worst case, the driver hits on a sequence of reads which loop back to
> reading the same offsets in an endless loop.
> 
> To fix this, we need to correct the loop iteration check to account for
> this extra word at the end of the PFA. This alone is sufficient to resolve
> the known cases of this issue in the field. However, it is plausible that
> an NVM could be misconfigured or have corrupt data which results in the
> same kind of overflow. Protect against this by using check_add_overflow
> when calculating both the maximum offset of the TLVs, and when calculating
> the next_tlv offset at the end of each loop iteration. This ensures that
> the driver will not get stuck in an infinite loop when scanning the PFA.
> 
> Fixes: e961b679fb0b ("ice: add board identifier info to devlink .info_get")
> Co-developed-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> Changes in v4:
> - Update title and description for true root cause

Thank you for the fix and thoughtful description of the issue,
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

> - Correct driver logic to account for PFA length being 1 larger than TLVs
> - Link to v3: https://lore.kernel.org/r/20240517-iwl-net-2024-05-16-fix-nvm-tlv-issue-v3-1-f46c53cfb67f@intel.com
> 
> Changes in v3:
> - Fix missing {
> - Fix missing pfa_ptr variable to dev_warn()
> - Add Fixes tag
> - Link to v2: https://lore.kernel.org/r/20240517-iwl-net-2024-05-16-fix-nvm-tlv-issue-v2-1-fdee184ece86@intel.com
> 
> Changes in v2:
> - Use check_add_overflow instead of increasing the variables to u32
> - Upgrade log messages to dev_warn()
> - Link to v1: https://lore.kernel.org/r/20240516-iwl-net-2024-05-16-fix-nvm-tlv-issue-v1-1-ecbb6a75961e@intel.com
> ---
>   drivers/net/ethernet/intel/ice/ice_nvm.c | 28 +++++++++++++++++++++-------
>   1 file changed, 21 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
> index 84eab92dc03c..ea7cbdf8492d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_nvm.c
> +++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
> @@ -440,8 +440,7 @@ int
>   ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
>   		       u16 module_type)
>   {
> -	u16 pfa_len, pfa_ptr;
> -	u16 next_tlv;
> +	u16 pfa_len, pfa_ptr, next_tlv, max_tlv;
>   	int status;
>   
>   	status = ice_read_sr_word(hw, ICE_SR_PFA_PTR, &pfa_ptr);
> @@ -454,11 +453,23 @@ ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
>   		ice_debug(hw, ICE_DBG_INIT, "Failed to read PFA length.\n");
>   		return status;
>   	}
> +
> +	/* The Preserved Fields Area contains a sequence of Type-Length-Value
> +	 * structures which define its contents. The PFA length includes all
> +	 * of the TLVs, plus the initial length word itself, *and* one final
> +	 * word at the end after all of the TLVs.
> +	 */
> +	if (check_add_overflow(pfa_ptr, pfa_len - 1, &max_tlv)) {
> +		dev_warn(ice_hw_to_dev(hw), "PFA starts at offset %u. PFA length of %u caused 16-bit arithmetic overflow.\n",
> +			 pfa_ptr, pfa_len);
> +		return -EINVAL;
> +	}
> +
>   	/* Starting with first TLV after PFA length, iterate through the list
>   	 * of TLVs to find the requested one.
>   	 */
>   	next_tlv = pfa_ptr + 1;
> -	while (next_tlv < pfa_ptr + pfa_len) {
> +	while (next_tlv < max_tlv) {
>   		u16 tlv_sub_module_type;
>   		u16 tlv_len;
>   
> @@ -482,10 +493,13 @@ ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
>   			}
>   			return -EINVAL;
>   		}
> -		/* Check next TLV, i.e. current TLV pointer + length + 2 words
> -		 * (for current TLV's type and length)
> -		 */
> -		next_tlv = next_tlv + tlv_len + 2;
> +
> +		if (check_add_overflow(next_tlv, 2, &next_tlv) ||
> +		    check_add_overflow(next_tlv, tlv_len, &next_tlv)) {
> +			dev_warn(ice_hw_to_dev(hw), "TLV of type %u and length 0x%04x caused 16-bit arithmetic overflow. The PFA starts at 0x%04x and has length of 0x%04x\n",
> +				 tlv_sub_module_type, tlv_len, pfa_ptr, pfa_len);
> +			return -EINVAL;
> +		}
>   	}
>   	/* Module does not exist */
>   	return -ENOENT;
> 
> ---
> base-commit: 83e93942796db58652288f0391ac00072401816f
> change-id: 20240516-iwl-net-2024-05-16-fix-nvm-tlv-issue-99ebb2c55c52
> 
> Best regards,

