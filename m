Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9EAB373E4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 22:32:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39DCA6073C;
	Tue, 26 Aug 2025 20:32:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lNDEJthsttu7; Tue, 26 Aug 2025 20:32:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 411606073F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756240364;
	bh=mhgk0wSAQ4xBmp/G1cSa2mMKl/E0HU5CFSEWSCxTjRU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cK2VnnxvnPceWtTxPvzpqFcibJgRKZg98+W5rlVHbNwm5cJ6erh1bVv0yAaJfXCsH
	 CivZe/ww+REtQc41cjjDkV1hPzCwweijIiSiqaIBD/YwdSj75Ij8koH9PaeHIrmqEp
	 CjundiFPye8MazOEhZIXzwlEAATkrTCHqLvIz6uAtiDVz5k4XVRug7myeSXeUuTKnD
	 /9uKI6K0glYwx8V//y37mA0YYILPq22SM9nGGZMjZNAmIV+Pbz2iT9Gd55n2+x8eJC
	 StDflh1hJgQYMBW1y+p6FbX9foO+1SQgL5r3qmQNCoa1rlTQLWsVXsZx09/Tp9mBLa
	 niKIxYFowI8xg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 411606073F;
	Tue, 26 Aug 2025 20:32:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6541E114
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 20:32:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5636D60739
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 20:32:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1AMCJerMNT4I for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Aug 2025 20:32:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2FC2360738
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2FC2360738
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2FC2360738
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 20:32:42 +0000 (UTC)
X-CSE-ConnectionGUID: 381H+YUeRNeEhSP9IbaunQ==
X-CSE-MsgGUID: dBqGzx/RRz+2Z750GHfjjA==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="57691586"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="57691586"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 13:32:41 -0700
X-CSE-ConnectionGUID: UC8+EUT7RI661PiAM0p+zQ==
X-CSE-MsgGUID: I+WJ3kXgTAStyhjPNhEQRw==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 13:32:41 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 13:32:40 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 26 Aug 2025 13:32:40 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.68)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 13:32:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TyrxMvsdFb3u+UT26KxJ89qw3R9HrA7tFFi+DmLS/OObgTYjlhvhE6UvWRlMepVZTb01x4crpdftbmyW3n3F4ecmWp/wcQnUFJxXlc63HIo1coab22zqET61c4KZpbA5PMCX+MVRX3+MzUYkGOVSddVsHPj2IW2ckNOGE1u13D1S4q3U8MTfWdLTGBmDZ1NsXhnQ7n9+iFantRTwDUcf9NY9BiZPs6GDGHRGLtLPOyRvSTByXPvLUg/mWrjWKXtdLkkZ9kn2PJXhzZbi5YjTXiszYwa6xtGkreAXU3LWMdZzDaydV/OiEKAn1oVJ6JKVvi5npu7TH+oDqnQjLF87Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mhgk0wSAQ4xBmp/G1cSa2mMKl/E0HU5CFSEWSCxTjRU=;
 b=TwlGCEzn7WFASpkMRE3H5lOzAfi1QiwY3n4xEDF7Wx3VjdMqMbuQN3/DiSItTgB+PEl5MnjgZfxreqd8bOYOcp1Jp32keCpAImPUwjnZd0CsuDVumAsM96tq8fQh3igN4Zfa7fGpMZi3soSV4gq7o6ru8BW1k2DceKF41Wy6yPco15ob0BdAkUQwHx9FU2wci5PeoNgFBYIl4F3CKVMUxSdylJS0rQnCQGXYdBuYGfpmcA41FpFpwPgeTtPUDpno+AdsOJUva7T2XntOQ7Zs9yxsxmfzDUAGvE0Co72OHaIfaKYb/Q+W2iY3lSFi7Q+HIz8VsLDIr0K+FKAjUctKxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by DM4PR11MB6191.namprd11.prod.outlook.com (2603:10b6:8:ac::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.14; Tue, 26 Aug
 2025 20:32:39 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9052.019; Tue, 26 Aug 2025
 20:32:39 +0000
Message-ID: <f94db328-fe7a-44b4-8fd9-bda904bd9540@intel.com>
Date: Tue, 26 Aug 2025 22:32:33 +0200
User-Agent: Mozilla Thunderbird
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
CC: <netdev@vger.kernel.org>, <anthony.l.nguyen@intel.com>,
 <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>
References: <20250826153118.2129807-1-arkadiusz.kubalewski@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20250826153118.2129807-1-arkadiusz.kubalewski@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DB3PR06CA0029.eurprd06.prod.outlook.com (2603:10a6:8:1::42)
 To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|DM4PR11MB6191:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b42fe4c-44d4-41e4-cc42-08dde4dfb30b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S2NySzJCcktIeXdmSXM2OWtUWU82MFNzdkhBL3BPQ3ZFTTBLZG9CbU8wYVhG?=
 =?utf-8?B?VGNRbE5LVXMzOGlNZ0h2NEM4NVBSRWtWUXlqREt5SFRNQWRqcE1Xd3I1TEk4?=
 =?utf-8?B?K0NxWFprSHFqOUZOd01HOE1oOXVmbm1SUitaL2NudnN2S2luMndVUHZaUHdB?=
 =?utf-8?B?QjYraUxjM3FxbzBSN3kxcHlhTzgzNiswWWx1S2pYN2R0Z3hGUDFYVFJDL2s1?=
 =?utf-8?B?WDFDOTh2VzN5WXZNbVluMTBQbzVuMzQzZElzKzhNL3l5MTBiMDlEUzlDMytj?=
 =?utf-8?B?YmlnV2g2TUxlR00zaXlQUHJidmViSDlNRjFHdS9YUWJ4NitIa2xYNkFuNTdx?=
 =?utf-8?B?MTU0TldrVThyTDdDOWd0TkVEbm9CbnY2Z0NObCt1R3o4dkJyL1Q2UENVcVNR?=
 =?utf-8?B?NFZ2STJqQWNMV09DYkNBQzFYY0pwUVFaNVBQWTQ2MVY2WTY0SHNqZ3hldjNC?=
 =?utf-8?B?aG81ZnBZV3ZMTUhnRWUrZVNPSGVUVTdoaHRWQTBkUGcwb0dQTjY5bWZvMGpz?=
 =?utf-8?B?OSszMzNsSVk4Q21PVjhZdlRuMzVCTWdCNWRuK0pVWlJGZ1h2aUhQN2pmSjdP?=
 =?utf-8?B?Tnp5MU9waGdibHIzMTI0Z2FFVTQrSHR1eHNlQmNYYUFiVnk0VnN2M1RKSEZE?=
 =?utf-8?B?UjZ1cWFzV2pNU1M5YzlBNzI5L09VSnFSSnpZMG1jSnBFQTdXdDNZQmFMU0pH?=
 =?utf-8?B?RE9wL0YrUHdvb2JQc1JXbE5GaXdkOVJtZEdwTUFkaXFPQlVhd0F2SWNpZzcz?=
 =?utf-8?B?ZGJNWksrUkwrYXRTZ2YxY2JSVSthQmU4b0V0RDVXZmE2Y1hla1ZZYTJYMDV6?=
 =?utf-8?B?cTlUQXdGT1I4UG80eWdXS05ZUE4rMUtBVnN6aXJqOFBqM3B1d2lQd1dUUDh6?=
 =?utf-8?B?aGQ0c1pQOVUvMWw5c05HQmZ1SFJIQ1V4QjRESENlVUw4RmxoK1Zid3NWcWVi?=
 =?utf-8?B?QmhCOHFPSFVKTEMzTEhsYzRMdXRNc1RHZFhabTNYSFNqN3FMemM0QklsVUNj?=
 =?utf-8?B?ZjU5S2dPbHAvS2lZUTFxb1NySDhncEFTcFphenRWcXIwd0FWZ01ta3hTMUF5?=
 =?utf-8?B?dFA4ZHJpeGNZSWowR2daWURWWmN2Q21ZYWpWMi9VTnc4TUUyVW9PWXY2TVlQ?=
 =?utf-8?B?SlpoRmMrZUNxUnBVOUp6ei9aVENudjZGZzB5ZHVEWFZyOFNvbmNCN29mUlRB?=
 =?utf-8?B?L21uMVN4OHF3bm4wVDZ1V3JGZ0JuRnhCWk0vL3g4KzdNMDd2NVg0MW50QkY1?=
 =?utf-8?B?WnAwdkdqWXMzY2lES2JUMzQrM2UyL21haGZlRlMxL1R6TEc3bFhhMG5FVjNV?=
 =?utf-8?B?NjlVd2gwZjVvWUFXZzR5VlNIYU5xSEpBYnpUS1gxOUpweG5NY2h3WjZSb28x?=
 =?utf-8?B?dnpBWDNWZkNDbWphZDJxb21jdnA5SEttZ0c5b1R4L3cvNkg0Q1lWcVVwZklI?=
 =?utf-8?B?WkFIV1pwSW1KQlFMSTR4akJEZ2szM2sxY252K00zbjVOU3lCaWUyRHE4NU1O?=
 =?utf-8?B?WjI4SGx0MWcxZWdieTQxLzMvVmNaUHhHbDhDeHpVcmx6bmFVRDdLbkRSS3Ny?=
 =?utf-8?B?cDU1enJBK2hyR2p4ckhmcDQzQzdqUlNTYkxRa3hySktMeUtseDJlZEd4ZmFu?=
 =?utf-8?B?YnJWQnlqcWRETUEyK2RxTlBvMHBIakhtOW9WVzVoNk5TYlltdXhLTXgxbU9i?=
 =?utf-8?B?MVNneG1uWm55N0g0SW5raTF0VHNnSFBQZmdRZEpreVZBZmN2R1k5b2hoWGox?=
 =?utf-8?B?YTJyeEh5aDFIMVRuSURmeXJ5R3dwOS9WOEJJU0hrVHhGdUNyL21JZVltZzZn?=
 =?utf-8?B?YmRFL0ZjL1ZMMm9ic2xDOThiWnJjNWlDVmNlLzNCSlJHdS92MFJwOWo4VjZV?=
 =?utf-8?B?RDlKaFkyTHBwZ0FiTmQ1c2w0TkprKzBDTUpmVnhBNjdnMlJSQWR5Mk1WS0dG?=
 =?utf-8?Q?hwXrs/IDIlA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S0IzZEJvTCtDS3M1MVhTa1lPQzlHaFoxWVBCWTJlTlk5Wm5mREViSGVmSnJo?=
 =?utf-8?B?Q0JtNUhxZXQ0OVdpZ2hMenpJM0JSWkpidk9UUzVDZmZFTlJ3dUlkK0FtN2JU?=
 =?utf-8?B?VlhxQTVtYUpCcEkySUdOREx1WXprTmF1amMrTmNhSERnOVJhbWszREVhTnVx?=
 =?utf-8?B?VXdOYUtrYWVNV3pQcWxwa2h2YkhTZkN6emZZMzQ1Q0VnTnRWcSt3YVptQm1H?=
 =?utf-8?B?eVc0Nmw5L29BbThVVmhBNER3WnhFZkQzWjBYd0laazJyMU83c28xdVErd0ta?=
 =?utf-8?B?TEZnVkROblEwTG9jblR2YlJVamZZM0ZqMGNCVlNodlJMUzRLT2dsRUVUZ1RJ?=
 =?utf-8?B?Y3NZeFB4L0JGN0h0dDBlQW9kVzlpcXhxWjNRNHBrRzQ3aWdJdHgza3BaUTFM?=
 =?utf-8?B?ZDFLdC9IbjNBSEpEaUJJV0pDaHZZMlNpMVNCemVhSWM4N09VTGQ5eWVLQmVh?=
 =?utf-8?B?Ujl4RmVzY2VFZWZsT2ZWVnhyOUJpZTNOVXRsL0U1bVNjeUZqdnRuL3gvMzYy?=
 =?utf-8?B?UkgzQzhGdlAxZnhBL3FPQkVpVkNqLzdORDI3STVJTk1RMDJzN29POWtobWFl?=
 =?utf-8?B?dko1Rks2aVQ2Y0VRQWluYTBhM2FkZXpWdmdRN3c1WDR2ckJnRm1GV0RrZUU4?=
 =?utf-8?B?V0JLZndKMmZ4YUJRK09jMVZmeFkzMGw1K2c2VVVhWEVXcFJXL2srbnBWTjBt?=
 =?utf-8?B?YitOd1VOSFVBOHA3aXBxNHVCM3EvMW8vYXpmSHgyTEJtS25vcWlpcHRORTJT?=
 =?utf-8?B?UEJNSk4wVGxDRVR0ZnlydERFSlNJUFZoMlpReEZrbC94ek00UkRrQjZhcHE4?=
 =?utf-8?B?WFhCdHNlL0RMNXJyeTV6ZC9zK1dkeGUrdTBycW02UlhIeDQ0cG1QMnJKMmJs?=
 =?utf-8?B?a25WMHBTSnRHdWwySzBLbnVVL2dhdGZYU1I2WGM1dmJLT0U3NzRzVy9Xc01G?=
 =?utf-8?B?VFhLUGplRU5wQS9Tck1FZUtBRjdaU1lGNXBEMHdFNDduSFg3RXMrVHVGRy80?=
 =?utf-8?B?d01hV0p4NjVTMlI2WTZrS0R6SDRFR0RkZ09vMVcxeTZaOHV4UnJ2eGZkUnRQ?=
 =?utf-8?B?dnpCQUYwem1OcEZZbU9udG9hSFdiSjB3RlZSaG1wYWlrOHNSd29XVFl6RW1i?=
 =?utf-8?B?NEszcjA3YmVJVFUrLzdCOTlkL3RzR2tRWkFiYm0rbC9zUEwrajNSM0I1Uzh3?=
 =?utf-8?B?Y2FuTDZsd3RManc5dVNwbS94d00yUjVIblY0R0VORU9rVkVxdzJXaWRGajM0?=
 =?utf-8?B?eXN6KzdDdEwwbmZEYWdzUXVBS2FvSFhtazlYdy9CWHhrUFZBVVp6TTRWellG?=
 =?utf-8?B?TEZKU0dpMEkvWTFXMUY0eXEvbTRIYUFzb1VURWJRMmlRSENsdHgzRUtiYlIx?=
 =?utf-8?B?aWU2cnNxTW9hQWU4cldXcGkzNGdQR3grSEpxdWxVUXhkaCtacDRmMDQrM3FR?=
 =?utf-8?B?Qy8xVDdEdlFid1BKeGpEZ1FXdkVQbTRKYTc5WHpkTEF5NmpHOU44VkF2dFJR?=
 =?utf-8?B?N2liYXlxQTB5Yk1jR1pIY2hlZWZ3T0FXaXJlank4MW5BNElwbTV6V3puMEhl?=
 =?utf-8?B?VGlhVTVWVGFaOGovd2hEamIvN1FsTXRXaGVKWnAwYWFnTEZLUDR0YndYK0Vh?=
 =?utf-8?B?ZVFLaS9Ea0t0aDR4WW81cVNCaUxLeGZmQWNkUU11UlluWW5kMzRtT3plZGVF?=
 =?utf-8?B?emhvMk1pYXlhSDIrNnFiNUtOSVYwSmptNW9IaEdSY0Y2YlcrekR3R3d3V3Fw?=
 =?utf-8?B?Umk1NmZUWjh2TlN3UmJENmQweEdIR011MFc0Y2xZRlRvSWdVZTVqcG9oRzRz?=
 =?utf-8?B?dngxdWY3SHFBSm5xSHFFRzFyOXM4VWkvelFrbWxoQVlvT1lBQTdUZzUzQkli?=
 =?utf-8?B?amJ4ZmY5a1NWNE9GMkZaZjNDZHJxckVYU2FCNFl6OVJ4c2dxTlVrOGp3Q2Nw?=
 =?utf-8?B?cFhMUUJXOXF2OXFXQ2ZnSTUzOGRISjJCdFgvL1JXallXMlVIYW91d3hVZzFL?=
 =?utf-8?B?dG80VnY4MkZBTm5sTzZNODBFVFBSKzE3SDNCTUVZNTZoaGVPY01GVWFjRnp2?=
 =?utf-8?B?NFZybFlyS3VBOTIveENQdEJNenJlcEN5dWIwcVc5YW5yOHI1MGZ0QTBHdThR?=
 =?utf-8?B?alRVSjJDbzQxY0RYZlU3VXlUZFZsUlhObHFrM3VnbTZ4eXpZd1I4bk1MZVpj?=
 =?utf-8?Q?uS4geKcYMm3QWInPgR5w0dE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b42fe4c-44d4-41e4-cc42-08dde4dfb30b
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2025 20:32:39.0252 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eO+hMQ9sy0wLx1Rzq/26dOsoRCPFFIUx3KlXMOawf5L+EVuglCdRRVAXXjyd3sftuWuGX64TX5+puL+5sLw/j2jwJxFm5ncQ+diUzhIyVms=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6191
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756240362; x=1787776362;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PglwnPquXkcDmkkdO+Z9bMcP9Qovz4XxcvrEThjSVj0=;
 b=RaHExA7i151jl7ZsSi4dyEPT2sbfQCrd29GdN6Ns2ljeQ913bc2zg6jJ
 23daMziVN8q7zCeb4JH8zQVY6nednwgQGjLestuzkoVZkQzwT/SjidnZX
 wf1Ho8wlBUqJOmw9XcHuczWkCKIfYrsD9kpVEFTb5ZC37ZwLJh1j6vC2H
 NGFeELW2SqZKe1YUqnryVxsvr28BwDT5VkuT9s4OgrTwSbcS1heD/RWrW
 KST/O5/TQ4PzkewIKq2BWM80Y8qZ87Odp9XdWUeOf2++IEyIXSxLiBT6m
 r+TdYnEsf0NTrHOscVhhlVTaSvKwEyKFnZvUZXV8DbWj9+mVLn7UC1XBE
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RaHExA7i
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: add support for
 unmanaged dpll on E830 NIC
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

On 8/26/25 17:31, Arkadiusz Kubalewski wrote:
> Hardware variants of E830 may support an unmanaged DPLL where the
> configuration is hardcoded within the hardware and firmware, meaning
> users cannot modify settings. However, users are able to check the DPLL
> lock status and obtain configuration information through the Linux DPLL
> subsystem.
> 
> Availability of 'loss of lock' health status code determines if such
> support is available, if true, register single dpll device with 1 input
> and 1 output and provide hardcoded/read only properties of a pin and
> dpll device. User is only allowed to check dpll device status and receive
> notifications on dpll lock status change.
> 
> When present, the DPLL device locks to an external signal provided
> through the PCIe/OCP pin. The expected input signal is 1PPS
> (1 Pulse Per Second) embedded on a 10MHz reference clock.
> The DPLL produces output:
> - for MAC (Media Access Control) & PHY (Physical Layer) clocks,
> - 1PPS for synchronization of onboard PHC (Precision Hardware Clock) timer.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>   .../device_drivers/ethernet/intel/ice.rst     |  83 +++++
>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   4 +
>   drivers/net/ethernet/intel/ice/ice_common.c   | 110 +++++++
>   drivers/net/ethernet/intel/ice/ice_common.h   |   7 +
>   drivers/net/ethernet/intel/ice/ice_dpll.c     | 306 ++++++++++++++++--
>   drivers/net/ethernet/intel/ice/ice_dpll.h     |  11 +
>   drivers/net/ethernet/intel/ice/ice_main.c     |  14 +-
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  46 +++
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   1 +
>   9 files changed, 560 insertions(+), 22 deletions(-)
> 


> +int ice_is_health_status_code_supported(struct ice_hw *hw, u16 code,
> +					bool *supported)
> +{
> +	struct ice_aqc_health_status_elem *buff __free(kfree) = NULL;

observation: netdev maintainers don't like __free

> +	const int BUFF_SIZE = ICE_AQC_HEALTH_STATUS_CODE_NUM;
> +	int ret;
> +
> +	*supported = false;

it's best to don't change output pointers on error

> +
> +	buff = kcalloc(BUFF_SIZE, sizeof(*buff), GFP_KERNEL);
> +	if (!buff)
> +		return -ENOMEM;
> +	ret = ice_aq_get_health_status_supported(hw, buff, BUFF_SIZE);
> +	if (ret)
> +		return ret;
> +	for (int i = 0; i < BUFF_SIZE && buff[i].health_status_code; i++)
> +		if (le16_to_cpu(buff[i].health_status_code) == code) {
> +			*supported = true;

so, this line should be enough

> +			break;
> +		}
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_get_last_health_status_code - get last health status for given code
> + * @hw: pointer to the hardware structure
> + * @out: pointer to the health status struct to be filled
> + * @code: health status code to check
> + *
> + * Return: 0 on success, negative error code otherwise
> + */
> +int ice_get_last_health_status_code(struct ice_hw *hw,
> +				    struct ice_aqc_health_status_elem *out,
> +				    u16 code)
> +{
> +	struct ice_aqc_health_status_elem *buff __free(kfree) = NULL;
> +	const int BUFF_SIZE = ICE_AQC_HEALTH_STATUS_CODE_NUM;
> +	int last_status = -1, ret;

nit: variables with initial value set should be on the end of given
declaration line (here @ret should be first)

> +
> +	buff = kcalloc(BUFF_SIZE, sizeof(*buff), GFP_KERNEL);
> +	if (!buff)
> +		return -ENOMEM;
> +	ret = ice_aq_get_health_status(hw, buff, BUFF_SIZE);
> +	if (ret)
> +		return ret;
> +	for (int i = 0; i < BUFF_SIZE && buff[i].health_status_code; i++)
> +		if (le16_to_cpu(buff[i].health_status_code) == code)
> +			last_status = i;
> +
> +	if (last_status >= 0 && last_status < BUFF_SIZE)

second part of the contidion is always true

> +		memcpy(out, &buff[last_status], sizeof(*out));
> +	else
> +		memset(out, 0, sizeof(*out));

weird, but let it be

> +
> +	return ret;
> +}
