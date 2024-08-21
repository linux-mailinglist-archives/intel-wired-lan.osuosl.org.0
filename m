Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6D595A12D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 17:16:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5AB3C40374;
	Wed, 21 Aug 2024 15:16:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jqua6JF69xOu; Wed, 21 Aug 2024 15:16:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 06E88403CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724253409;
	bh=5YefFMM95UrLtT/uk4hfC9GmCTC7qIE5NZXckcFhhXw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vitxUi+BUPSztyOEaY54WPfe+SBkbfUh0cp7NhTRca/GykFhr0RcKqcCITIBURKmM
	 2HeBhc7fw10vmdEdU0+RqAx0YSfZeektyuU+AXkG+8P8DRPeDEr/NRRIZPoHc3K3F2
	 f/GAQnHyYcjAItwmdrExjFBnwRCoANZ8L1twWxixsk3xzwDlZcXWlb7G0UNg5O8H/C
	 noWnb26RpTK5wwnvuM/dEuWl9c6fAVUa4wd/G+40tH7sTAT4Ei6YJHAQOAVYUwAaCj
	 P/Xk1pIy1quKalgC5SxNIbyZ8IW3xp2WldNu6OTqNm2yNeSLtHbHe5YR7GlbFXEA91
	 /7giMRZ+//Liw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 06E88403CA;
	Wed, 21 Aug 2024 15:16:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 53FE31BF59E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 15:16:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4DB5D606D3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 15:16:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CRL8kcXGp01I for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 15:16:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EAFC460699
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EAFC460699
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EAFC460699
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 15:16:45 +0000 (UTC)
X-CSE-ConnectionGUID: 2f0t8+o3Q1iQYjJCanjexg==
X-CSE-MsgGUID: U15LIrPkTDWa7JYwQmgFSQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="40079317"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208,217";a="40079317"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 08:16:45 -0700
X-CSE-ConnectionGUID: es/GIQCHTAmDaI26qLcO3A==
X-CSE-MsgGUID: G6QPqtENTBaauvN+/dFFGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208,217";a="84292483"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Aug 2024 08:16:44 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 08:16:43 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 21 Aug 2024 08:16:43 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 21 Aug 2024 08:16:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fTZ5dZNOkgjwmzCqGDXSGpX1ygXbOHqGlAMedP9tX2k+pjoQGpd8uKIOx20hfz0FPz/4SiJfYtlImpAv2hQF1V2U7+Y7ivtEFuOW09uyMBuFTDJMjN2hAvcaRZ433Bg1c2FDn+fOraM5gqxI6JfC4rdwKW0PM5vfrnhpoeGL67kYJJ//swaxXQDBs2dqdmfYAv4xiwx6Aa7aQVeXqvjceY6Xt8P8aW3sDPRE7jq6vWTV9u7f+Pi9j4GVJsX+Nszp2MxSLQtJ+ifH4btmX49DrcjqLTSH81/Dn683s/PTbhNTn5Tvx2h28hu/5Yaa9fblqnyXBPN8XSNJ+9KJRaNokA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RZR4LuU+rV/vNr6ElAU+kwrtOB30DKnx8hoJnfHxm9M=;
 b=FRNKdNeyXCbgCVet9rMfRIo1bjvXa1Q9JGlYL19UKYz3YpLfjQlvaoMl8a36MOAaUbVJr473k84NjyLFEFvrHAlgc+VZII3jcwOC53GeTko1QhXNKSwcZkibKr1kpMasHFSDwyNLw1miCv5lQpG9jHMl7zMLVn3Mr5NzZ6vpemRSxWUj/ter2FGZjuwCE4cdoeN/yJ/Yo3BlyRP1ZKgCotScmqU7SryKFM8BxbxFzUSK5iZE4n/MRNeogVttMyZkDuUEsAq77CiE1oFQdX/67puLHFa66O1dNlWRlUfMizZbcv6jgC0zMTRK2I+bOpyZ0n47tGhQLDkukIaq9GdESA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by PH0PR11MB4822.namprd11.prod.outlook.com (2603:10b6:510:39::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.16; Wed, 21 Aug
 2024 15:16:41 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%3]) with mapi id 15.20.7897.014; Wed, 21 Aug 2024
 15:16:41 +0000
Content-Type: multipart/alternative;
 boundary="------------NFB3qkvlEJCY8M3aFOXMfkFf"
Message-ID: <1041b9b5-cc78-13b1-459a-d1d3a313475a@intel.com>
Date: Wed, 21 Aug 2024 18:17:12 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Bjorn Helgaas <helgaas@kernel.org>, Petr Valenta <petr@jevklidu.cz>, "Dima
 Ruinskiy" <dima.ruinskiy@intel.com>, Hui Wang <hui.wang@canonical.com>
References: <20240821145959.GA248604@bhelgaas>
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
In-Reply-To: <20240821145959.GA248604@bhelgaas>
X-ClientProxiedBy: TL2P290CA0002.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::12) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|PH0PR11MB4822:EE_
X-MS-Office365-Filtering-Correlation-Id: aad2e452-ad83-4d78-4f08-08dcc1f44232
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RDByajRBeWc3Zm9BQU1QZlNSQnJCdVhkeUVlUElTVDZQVkNyZ2ZRYTRCd2cv?=
 =?utf-8?B?L1pHRjdkNGxMMElGSFZ3TUkvSXhmRUJuQWJiMG5yLy8ybWErUTBySUJKTHpi?=
 =?utf-8?B?Q2JWZDBTR2hzaDRTVmV4bm12b2RVV2M0K3NwaTQyS1o5M0s1bjhybWFIejFW?=
 =?utf-8?B?aEkwdlUwQ0ZLRmJldXdId0UwSjllRXp6WktobmJuUExYa3QzNHdlNE96N0xU?=
 =?utf-8?B?UU1GWUJLM0RlNGlIU3hXZGlOSC9pNmplOFVQWkxVSzFlYzRwZFl4M2pOY1VS?=
 =?utf-8?B?MHlvTGY4UDFqZ2x2eG10MlJLNWZ5SkJRUVJDRHJjaGZPTHYydldtTHdtT0Ey?=
 =?utf-8?B?aDU1TXFwNnhLTHhIT3RwWExZcWhJWU11N0dnU2hFdTdveFZ5MXA5cE5Jd0Ur?=
 =?utf-8?B?MHNLK1ROdDVzSEI4Zy9wUEJMWVB0dEtUL0hjSW4rMDd5alF6OW1pRUZBcXI1?=
 =?utf-8?B?bDRiNE1wQXVJV0JxTDJOQk5odFcrS3FEblc2eFFkdmN3TzBVVFh6eDRLWDFy?=
 =?utf-8?B?MmhiTEpjeGdnSXlYRTJZZmp1U1pOWW05RU0xQVBGa3JpcEQ2TnpiaEFXR1My?=
 =?utf-8?B?RHFpdnZOczhsYW82SW12Z1l1ZGtCY0RMV2I4SjF1d3FDZmtGL3BMMlZuOGE5?=
 =?utf-8?B?eDZPckRJWTRTbjNtaVI4SHFOcUw4c3ZsbWdQOHB0dDhMVzFXdUdHY3dnYUZD?=
 =?utf-8?B?cDFHUWNtcmNvanhOWHRudVhwRGZ0bXdKeEV4aURHUjd5cCtUZHlUT1phTjNS?=
 =?utf-8?B?SUpyZW1iZTBZQVoyUGJDUW5TNGFmOVVKamlFVGxRSlF2R21aTkpPalU4NUY5?=
 =?utf-8?B?V2tNbUgyaVdOZXVRc2tzOWI4a252RUVEQzlVSENFMXhKSFIzYkRPcXZmNmtJ?=
 =?utf-8?B?SHJXMVhWNmdFNER6RGs4VmVuQU5CeHZDN2t5R25SRVNkOHlhUk1OSmhWejFr?=
 =?utf-8?B?QWM2M0p3aFlvQ0VKUE5RMkVtUFF3ZXRheUVXc0NUZzlpck1BUDVZbGIvdURJ?=
 =?utf-8?B?ZmFITWNBZ3VFTWlESjhmY0hvSTJ3UEJqd0dtdjVmbGpzYnBxU0NPOG1RL2RK?=
 =?utf-8?B?SG5DeWdPSGxzVVo1dU9sZnp2em5iNkRtUWFpL0o1NGprTjRaV0NIUXdlQzlt?=
 =?utf-8?B?YWI3ZURxdFBraTEyN2pFUXNiaVZ2QjB2RHpnYXRKeHVxc3pxcGRSMzZLY21x?=
 =?utf-8?B?T1B6Z3hFaTNBTXU4dFVWVXpCTlJjc0hWN0dvOHlvak12L091bzFRVTJFR1ly?=
 =?utf-8?B?MGpzckJKemN6ZVk4UE5ncGdiMGxWQnJCRTV1VDhCenVqeFJSeXVmVkIyZlg2?=
 =?utf-8?B?Nk92RlBmRmd5RzYzOFJZaXZmVFpuSWJHS2ZQT0FaRnZGb2FDczM2b1VnZEl3?=
 =?utf-8?B?YUhROS9RbUswbWh0RjBGcGJtK1cwVU91N1AwNkQvYVJzRUdaRHdPVktnUUVy?=
 =?utf-8?B?eldiaEVETHBIbUVLVGVRTHZFT3Ziam14c3htRzVmZWNqZS9EQi80TTB0c3Zt?=
 =?utf-8?B?REtUQWY3U3BuanprU2NYcnI3WFBhS2k4YkR3b3dsWHRZWmZFQUtTcmU4L2ha?=
 =?utf-8?B?ckJraytZazc3TnRvcStIdUh1cHVsc1dMcDVNL0tCYTlZZkZiS1JJeW1WemJO?=
 =?utf-8?B?RWQ2eU16MmJmd1pYaWViMGZlVHdCWTdmR0JGbjdSUGJtSDFsaDlZTUhjdXdl?=
 =?utf-8?B?YzF6WngrRENBYzM1Qk4vOXBXWXpRVVpWY21XTFB0V2ZNOUJJTEo1NjJHd1dM?=
 =?utf-8?Q?AwXXjwauusHkit/stQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a1BFejFCOE9sa1B2NGo0RGtLU0JOc0FjUndIaTE5TEE4d0dMMWxBT201Ylpw?=
 =?utf-8?B?ZGF2c3hOZCtrVHdHSW92U1NUOW9uOC9yd1ZsbFFQQ1ZRcTVLODBPaFhaaUlJ?=
 =?utf-8?B?aDZQd1JhRHJ1Q2pzN1dqR3BST1lWcXdiRnBRVFNONVV6cXNlN1g5RWZWMlpt?=
 =?utf-8?B?bUNTeXVabWRNWTdIZ0d2Zml3Mm0vbEpuS0VFVW1vQ3hEWkxaanVieTNyVFJu?=
 =?utf-8?B?aGYzbVBMMzRiZDc4L1FIVlZNQ2c1ZVZmNm1tVStLSXdTMTcxWVgyOExQaU81?=
 =?utf-8?B?NS9FY2UrdXBVZjNJUkZjQnNFQ2ttb0xBM1h1Qm4rUFVOOFBKQm45SHhjUEFZ?=
 =?utf-8?B?dVpyTGpqRUN1ODhCT29FRzZhTlpiZzFzVS9VeCsyWG9jMkFPcFlKY003TTJt?=
 =?utf-8?B?eFU0dWJYUmlHL2lGQ29iWVUxYWhCdTRoQVY0NkpRd3gzN0lTRzFzQllhOEEx?=
 =?utf-8?B?VmU0TlNkNEozSHZER3BvRjdHemN1Z2J1azJjZ1hKMmtsRVNDSlRBNzAxTHBm?=
 =?utf-8?B?YnJIbUZIdkdZbEtqT0VwSDJNZ2lwTHdqTXpzbTQvU1lCamtJUFVxMFVjNmEv?=
 =?utf-8?B?MkVJUFlwS0JiVjM5N1FYWHZDS0RwUUpHVXcxZDM5dElFWjA2NldVMG1ZU3Iw?=
 =?utf-8?B?THIzY2VPZ1FjYzZ2UWYvQkY1RlVNSHpmVnNWZm9BNnZuNTNBakV3ZFZqeGpr?=
 =?utf-8?B?bjNoSHJSZXUrWVZzeHJZMVZ5cDVaUmpSaWFrSkliQUIxc3NWbTZTNUZWZFlw?=
 =?utf-8?B?V015SWJvalJneEpFdmwwdE1ERmRNenJkZit6TXU3aUgxUy96M2ZqaDJuSEdm?=
 =?utf-8?B?ZVgxeEIyUDNIM3hDY0ZPTXhJK0JpUVptQkkrNnJERC9qOEJHa2ZPbDl1NHF6?=
 =?utf-8?B?TDRab2kwQ2ZKMC92a3J3OU8vYmU4OC91bHBJYkZObDQyUWVLYldVRHpFWDRI?=
 =?utf-8?B?aUQ5N1JFUTYzMzF1dDFYMHpFTnQ0Z244ejVsa0NVN0ovaDhmNE5ueUt1NzlF?=
 =?utf-8?B?OXQvelY2QmJQanNZZTdEdExJMjZNR0pjM2tuZ0RFQ2dqQ1QxbjBnRm1RcUh5?=
 =?utf-8?B?QXNEQTg1aEE2T3dueWVPdkRqSENYazdsdmp2L2xFZ0NEVUVTUVRpbEwzL2lU?=
 =?utf-8?B?OCtPL0xSU04xNXpEcjQxbERLVHh4VVhyS3NEWXRaL1BTWjlGaWYwQ3JDNmJN?=
 =?utf-8?B?bjBRQmE2TnNUL3VHNUhSTi9vNTY2b0xRTjNaRkIwaytQWkRyRmh2b2FFakxs?=
 =?utf-8?B?YUowdXJPdWw2Y2llU2NOTGxYKytGMnNQUDMycC8yaU5KdTBiRm41T1JGb3Fn?=
 =?utf-8?B?TlhlYmJSVmJSMWhWcjBWcjIwZExoOHU1a2x3eU9jc1ZmaDJkZlBJREhFbDJH?=
 =?utf-8?B?NzJvVEgrK0JkRXlrMDNDdzI5bkpLS3BhU0NNeFE1d1BIZTlKZDVRcExtc05N?=
 =?utf-8?B?S09yM2JLTTRLK2IzODdRR05kTWN1Yy9MeUJGaHZmcWVRRk1Ra21IK1o0WTlq?=
 =?utf-8?B?aU8zamtLa2tnUWZjZGNWSitNWTVydDA0ckV6YXdndjNZaFZrUTJZUnJEQjM0?=
 =?utf-8?B?b1Nzd0Y3SWp6M0x0Ujd0Zkl5WlFSeEJoRW9YWU9ZbGlSSVQvekl0Y3dxbzQ2?=
 =?utf-8?B?bUR5Zm9zdnYzU1hGc1poK29ndDErOTNJZml4QkpxbDd5b25UZ2twMmtMYVFQ?=
 =?utf-8?B?S2N3eWlzZUpCaDljSVpWVzZEbmRua0RrV3RibkIvTVBvVkVIZUVSRzM4ZjNa?=
 =?utf-8?B?aDhmUklzOXp3VTB0SEQxbTlCUHkzbTZ3Nm1TSlBMTDQvaUh6YVEzZXhpRkZX?=
 =?utf-8?B?TzJxbnl6RkN1clFJalFLcjRLL0V2Q1ZQUTB1ZnhjQncvaUdlUjd0cEh1bm1U?=
 =?utf-8?B?UGIyWkpWeXkxbG83aU91MTIyWG9SZUhrWkFrVUtBbGJrbG9lMUcxTjkxdUI1?=
 =?utf-8?B?Q2tBQk91NGFRZjU0Qnp2LzVVcGFKUDBaeXh6TkdQcm5ZaHF5bU4yOWtJMmtM?=
 =?utf-8?B?ZWJzZmZVNWF2Y1FqakxlbHRaYjhIQ3RCbTkrZk5vdHczR1BsVGNQV29YS1Jr?=
 =?utf-8?B?SnQzQlBaOURPemVyRXlMRHg2aFdYY01sRVRUaFhXOXkzdW0yTWZWUnRJRjBH?=
 =?utf-8?B?aXFOQTI5ak0rYlpOZkVla3lkWUtIVVNxRGNmOUp5ejRZdjFRaUxremlrVlhP?=
 =?utf-8?B?OVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aad2e452-ad83-4d78-4f08-08dcc1f44232
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2024 15:16:41.0191 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lSzjNtWRYPM9iQl9vzcsxnDWJbIa+Hvg6F64bT9J0vgYNqzWvpHfIaa1lALX2JV1i7aU2Mu3B6NG7UrJM0+58erGUmpdDfdUkCMwTcOAuKc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4822
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724253406; x=1755789406;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=HpNlm0F88vWYyCNxDY19jm63MGpaUsbjF0ZxZCC2okw=;
 b=BQU8BYEU5Z0c4Q1O8OlqdqBcB+9f0Nzu3brEHq5loUllRNlUFdPAn/Oc
 a4DOT8+yfCS8dtD2DZjdCbOZl5f613dkRN+7NZJBkMpG5qFuQq2J8OZUZ
 9d09C+Hqs4vveCWIoc08KOidTb4uaa51wqcVkdZ1pFCE+9PwXL4RnfQ9p
 ZAne3VX7s/lWZVmG5euG0WKNerjmvPRMCd5f1QKJ07YgAi406NyddnvDF
 lv9zowJCUDry9/KIQMl9Gsd057Jyu4ty8MMPDlHVMcFmQ0VlJyWp1upuo
 0DPbnM49YxzxS6uT0c7P6so9IaQoFUbm4vWido0jt7k7cAa8+dTzRX3rO
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BQU8BYEU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] ACPI IRQ storm with 6.10
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
Cc: Linux regressions mailing list <regressions@lists.linux.dev>, "Rafael
 J. Wysocki" <rafael@kernel.org>, przemyslaw.kitszel@intel.com,
 Linux kernel mailing list <linux-kernel@vger.kernel.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Bjorn Helgaas <bhelgaas@google.com>,
 intel-wired-lan@lists.osuosl.org, Jiri Slaby <jirislaby@kernel.org>,
 Len Brown <lenb@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--------------NFB3qkvlEJCY8M3aFOXMfkFf
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 8/21/2024 5:59 PM, Bjorn Helgaas wrote:
> [+to Dima, Vitaly, Hui; beginning of thread at
> https://lore.kernel.org/r/60ac8988-ace4-4cf0-8c44-028ca741c0a1@kernel.org]
>
> On Wed, Aug 21, 2024 at 01:39:11PM +0200, Petr Valenta wrote:
>> Dne 20. 08. 24 v 23:30 Bjorn Helgaas napsal(a):
>>> On Tue, Aug 20, 2024 at 11:13:54PM +0200, Petr Valenta wrote:
>>>> Dne 20. 08. 24 v 20:09 Bjorn Helgaas napsal(a):
>>>>> On Mon, Aug 19, 2024 at 07:23:42AM +0200, Jiri Slaby wrote:
>>>>>> On 19. 08. 24, 6:50, Jiri Slaby wrote:
>>>>>>> CC e1000e guys + Jesse (due to 75a3f93b5383) + Bjorn (due to b2c289415b2b)
>> ...
>>> I'm at a loss.  You could try reverting the entire b2c289415b2b commit
>>> (patch for that is below).
>> This patch didn't help, so I reverted it back.
>>
>>> If that doesn't help, I guess you could try reverting the other
>>> commits Jiri mentioned:
>>>
>>>     76a0a3f9cc2f e1000e: fix force smbus during suspend flow
>>>     c93a6f62cb1b e1000e: Fix S0ix residency on corporate systems
>>>     bfd546a552e1 e1000e: move force SMBUS near the end of enable_ulp function
>>>     6918107e2540 net: e1000e & ixgbe: Remove PCI_HEADER_TYPE_MFD duplicates
>>>     1eb2cded45b3 net: annotate writes on dev->mtu from ndo_change_mtu()
>>>     b2c289415b2b e1000e: Remove redundant runtime resume for ethtool_ops
>>>     75a3f93b5383 net: intel: implement modern PM ops declarations
>>>
>>> If you do this, I would revert 76a0a3f9cc2f, test, then revert
>>> c93a6f62cb1b in addition, test, then revert bfd546a552e1 in addition,
>>> etc.
>> I have created revert patches like this:
>> git format-patch --stdout -1 76a0a3f9cc2f | interdiff -q /dev/stdin \
>> /dev/null > revert_76a0a3f9cc2f.patch
>>
>> I have applied revert_76a0a3f9cc2f.patch (rebuild and tested), then in
>> addition revert_c93a6f62cb1b.patch and after applying
>> revert_bfd546a552e1.patch irq storm didn't appear.
>>
>> I have tested it with 3 subsequent reboots and in all those cases it was ok.
> Thanks for all this testing.  It sounds like reverting all three of
> 76a0a3f9cc2f, c93a6f62cb1b, and bfd546a552e1 fixed the IRQ storm, but
> I'm not clear on the results of other situations.
>
> It looks like c93a6f62cb1b could be reverted by itself because it's
> unrelated to 76a0a3f9cc2f and bfd546a552e1.  I added the authors of
> all three in case they have any insights.
>
> Bjorn


I doubt that it is related to c93a6f62cb1b, I believe that is more 
probable to be related to the two other patches.

Apart from what I suggested in the other mailing thread (enabling e1000e 
debug and to test if it happens with a cable connected),

I suggest to try to apply this patch and see if it fixes the issue:

https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20240806132348.880744-1-vitaly.lifshits@intel.com/


--------------NFB3qkvlEJCY8M3aFOXMfkFf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 8/21/2024 5:59 PM, Bjorn Helgaas
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20240821145959.GA248604@bhelgaas">
      <pre class="moz-quote-pre" wrap="">[+to Dima, Vitaly, Hui; beginning of thread at
<a class="moz-txt-link-freetext" href="https://lore.kernel.org/r/60ac8988-ace4-4cf0-8c44-028ca741c0a1@kernel.org">https://lore.kernel.org/r/60ac8988-ace4-4cf0-8c44-028ca741c0a1@kernel.org</a>]

On Wed, Aug 21, 2024 at 01:39:11PM +0200, Petr Valenta wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">Dne 20. 08. 24 v 23:30 Bjorn Helgaas napsal(a):
</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">On Tue, Aug 20, 2024 at 11:13:54PM +0200, Petr Valenta wrote:
</pre>
          <blockquote type="cite">
            <pre class="moz-quote-pre" wrap="">Dne 20. 08. 24 v 20:09 Bjorn Helgaas napsal(a):
</pre>
            <blockquote type="cite">
              <pre class="moz-quote-pre" wrap="">On Mon, Aug 19, 2024 at 07:23:42AM +0200, Jiri Slaby wrote:
</pre>
              <blockquote type="cite">
                <pre class="moz-quote-pre" wrap="">On 19. 08. 24, 6:50, Jiri Slaby wrote:
</pre>
                <blockquote type="cite">
                  <pre class="moz-quote-pre" wrap="">CC e1000e guys + Jesse (due to 75a3f93b5383) + Bjorn (due to b2c289415b2b)
</pre>
                </blockquote>
              </blockquote>
            </blockquote>
          </blockquote>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">...
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
</pre>
      <blockquote type="cite">
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">I'm at a loss.  You could try reverting the entire b2c289415b2b commit
(patch for that is below).
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
This patch didn't help, so I reverted it back.

</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">If that doesn't help, I guess you could try reverting the other
commits Jiri mentioned:

   76a0a3f9cc2f e1000e: fix force smbus during suspend flow
   c93a6f62cb1b e1000e: Fix S0ix residency on corporate systems
   bfd546a552e1 e1000e: move force SMBUS near the end of enable_ulp function
   6918107e2540 net: e1000e &amp; ixgbe: Remove PCI_HEADER_TYPE_MFD duplicates
   1eb2cded45b3 net: annotate writes on dev-&gt;mtu from ndo_change_mtu()
   b2c289415b2b e1000e: Remove redundant runtime resume for ethtool_ops
   75a3f93b5383 net: intel: implement modern PM ops declarations

If you do this, I would revert 76a0a3f9cc2f, test, then revert
c93a6f62cb1b in addition, test, then revert bfd546a552e1 in addition,
etc.
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
I have created revert patches like this:
git format-patch --stdout -1 76a0a3f9cc2f | interdiff -q /dev/stdin \
/dev/null &gt; revert_76a0a3f9cc2f.patch

I have applied revert_76a0a3f9cc2f.patch (rebuild and tested), then in
addition revert_c93a6f62cb1b.patch and after applying
revert_bfd546a552e1.patch irq storm didn't appear.

I have tested it with 3 subsequent reboots and in all those cases it was ok.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Thanks for all this testing.  It sounds like reverting all three of
76a0a3f9cc2f, c93a6f62cb1b, and bfd546a552e1 fixed the IRQ storm, but
I'm not clear on the results of other situations.

It looks like c93a6f62cb1b could be reverted by itself because it's
unrelated to 76a0a3f9cc2f and bfd546a552e1.  I added the authors of
all three in case they have any insights.

Bjorn</pre>
    </blockquote>
    <p><br>
    </p>
    <p><font size="2">I doubt that it is related to c93a6f62cb1b, I
        believe that is more probable to be related to the two other
        patches.</font></p>
    <p><font size="2">Apart from what I suggested in the other mailing
        thread (enabling e1000e debug and to test if it happens with a
        cable connected),</font></p>
    <p><font size="2">I suggest to try to apply this patch and see if it
        fixes the issue:<br>
      </font></p>
    <pre class="moz-quote-pre" wrap=""><a class="moz-txt-link-freetext" href="https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20240806132348.880744-1-vitaly.lifshits@intel.com/">https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20240806132348.880744-1-vitaly.lifshits@intel.com/</a>


</pre>
    <p><font size="2"></font></p>
    <blockquote type="cite" cite="mid:20240821145959.GA248604@bhelgaas">
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
  </body>
</html>

--------------NFB3qkvlEJCY8M3aFOXMfkFf--
