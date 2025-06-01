Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 77433AC9E54
	for <lists+intel-wired-lan@lfdr.de>; Sun,  1 Jun 2025 12:19:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C528360AA2;
	Sun,  1 Jun 2025 10:19:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pQzvj9ChvxRM; Sun,  1 Jun 2025 10:19:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C0F160A43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748773177;
	bh=+JWd2erGpnfw1Ky2QOssXYgCMWBVwCO/NbUJ1mUQAHM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=r9y+yuwWSLUiY/M33Tisqk8jXNotBbZZ9lAdeyZA/imSz2l4KEsmi5LPYNI98Ypy9
	 W3yU6v/ncKTV7qlacUIaL86A2MpNgppijleo/4VChtFA1Ks9bYsa13plx6bGXJLsCc
	 +vo/9rmin4E6v8AE+w4ETWM9gy0EIT6oglIpDpC4+PTKxmPC0uWPzuAtWA8fxOx10Z
	 tqXh5p1f8HNPK3cFcc/LPOiYQXIBOGc/pbdFcPngFBpjdri1eXgTssPHfbKSlIJs7I
	 o4vG80u7sFblvJiikY/Cpg1Qj3FzEOZvykPrx4BVT25cJewr5zVZPwLIlU8QvbGk8d
	 Va5aNFUoqETDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C0F160A43;
	Sun,  1 Jun 2025 10:19:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 694A9127
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 Jun 2025 10:19:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6618760A40
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 Jun 2025 10:19:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Lvr_hjl40ZCz for <intel-wired-lan@lists.osuosl.org>;
 Sun,  1 Jun 2025 10:19:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3B91460A3E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B91460A3E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3B91460A3E
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 Jun 2025 10:19:34 +0000 (UTC)
X-CSE-ConnectionGUID: tXH2sA4JTBy96EZFsBKgnQ==
X-CSE-MsgGUID: QsESQ2HrR7OtvBwfrI67OA==
X-IronPort-AV: E=McAfee;i="6700,10204,11450"; a="50505474"
X-IronPort-AV: E=Sophos;i="6.16,200,1744095600"; d="scan'208";a="50505474"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2025 03:19:33 -0700
X-CSE-ConnectionGUID: 35E7KpDlQbmCh9OMcetpPA==
X-CSE-MsgGUID: 86Ek9gcqSbKiwY4nacSC1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,200,1744095600"; d="scan'208";a="149146289"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2025 03:19:33 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Sun, 1 Jun 2025 03:19:32 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Sun, 1 Jun 2025 03:19:32 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.47)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Sun, 1 Jun 2025 03:19:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LwM5vGF1/Gv4hqYGrQ4U6rPJgqtxwp6ihORbXSrD6VRBmBiEaqg23gOP5JejxU3oovgp0+EQXy4Brr6yLutw11ccGupGhLflwpl89VrAuHztUdN1s2z302YMC0H46tcmnP7M/mHtZ7dihxpzT2IzM1CbHt/aP6m/+wbqccy94IiAC1ysibR7IuOFgCNrFlMmXU6xeHPoXwB4tJ0FuHbK98dXVMUNXAO+r+c3oE+3HHJbVTK/vaRCYPL3iinLOiqBahZqvULgMM3mSJ3tZZE4POG7J8hoaEq9hMY3XbbxzcBGgQtcylGI5TEjy+A8t3AZemDMe4tAWmcQ+Ugse9Qtzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+JWd2erGpnfw1Ky2QOssXYgCMWBVwCO/NbUJ1mUQAHM=;
 b=HgClydtQX+g7ARGMq5etTD07T1OnhwEgaymOkLhW7QeUhnxp2i4Ft0784u4lISJEj/GOSFsEy2hSnWXG71is6XLAJMxnpllqXzJUJG5+NkHAJYSG2mXYOzHga59FcFNcW0m+XYgaQ5loFvu6TR8r56fOGoTiTB9p+M5j2jyLPl2+KHj8Z+w5r1q67rzYyzmNQLrnrbxs/SFwQ2ofS2dKtIbcj7RYwzYt3SAqgfwLB/2O0gHMNTgJ1vDeC/DitsMugZAqngBgVb7td0vEz3f1Apfz5hyHDWuNrUMvgv+EFNCpj7AO8XB3NySbBkGVIfw/YNMfN+0XVeHFFxsU8h59Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9013.namprd11.prod.outlook.com (2603:10b6:208:57c::9)
 by DS0PR11MB7191.namprd11.prod.outlook.com (2603:10b6:8:139::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.36; Sun, 1 Jun
 2025 10:19:29 +0000
Received: from IA3PR11MB9013.namprd11.prod.outlook.com
 ([fe80::112f:20be:82b3:8563]) by IA3PR11MB9013.namprd11.prod.outlook.com
 ([fe80::112f:20be:82b3:8563%4]) with mapi id 15.20.8769.029; Sun, 1 Jun 2025
 10:19:28 +0000
Message-ID: <8adbc5a0-782d-4a07-93d7-c64ae0e3d805@intel.com>
Date: Sun, 1 Jun 2025 13:19:22 +0300
User-Agent: Mozilla Thunderbird
To: Vlad URSU <vlad@ursu.me>, Jacek Kowalski <jacek@jacekk.info>, Tony Nguyen
 <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <5555d3bd-44f6-45c1-9413-c29fe28e79eb@jacekk.info>
 <23bb365c-9d96-487f-84cc-2ca1235a97bb@ursu.me>
 <03216908-6675-4487-a7e1-4a42d169c401@intel.com>
 <47b2fe98-da85-4cef-9668-51c36ac66ce5@ursu.me>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <47b2fe98-da85-4cef-9668-51c36ac66ce5@ursu.me>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL0P290CA0006.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:5::9)
 To IA3PR11MB9013.namprd11.prod.outlook.com
 (2603:10b6:208:57c::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9013:EE_|DS0PR11MB7191:EE_
X-MS-Office365-Filtering-Correlation-Id: e9ece6cb-6742-4f70-b14e-08dda0f5ca6b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NzNrVk9hMzNOUHVJSmozc2dHM3FoS0F1T3JIdy81MWVtNFJmRHRxVXY4cGxp?=
 =?utf-8?B?bFVwWTJuUU0rNGlXaC9HNE4vVGxSRUlwZCtGYXZERGxIemtUQW1UcytDWlhV?=
 =?utf-8?B?UTlocE9lZmdoRUZUaFBLMDlBNU1VclF1WTdROUNYeUdSa0d0blRLeHhaTjZz?=
 =?utf-8?B?dUY4L2o3RGV5SmVZNU5qQzdjMFNWWHpaSWdGQVJTYnRGM3ZXZlNYQkhXVTdS?=
 =?utf-8?B?N3dFakNsSG5pTU1EMkt5ZC9NaFc0SWloVkI5cmdjeituV1RsaVVyZWlqRmdY?=
 =?utf-8?B?ZUtKczdRbENPNVl0NVdDcC9uVHJXd2gyRlJ4QlYzTVVKdERXUlhCb2R4Mmdr?=
 =?utf-8?B?R2lZZVBsQVh1c2dXLythTjRqOGJaRWY2NnN3dEVvQzAzelZQbi9INXJTSmNP?=
 =?utf-8?B?cVNBSkUwaTVyOWF6Vzk2T0FmNnpVNCs3VEtqWWoxY2hFSTJqU1lITjRlUkZt?=
 =?utf-8?B?QUNrOWM1eXZndzVWbmMzQ2NqMVVVTER6TU1aV0ExV2g1VFpMUFUxMTJoaENh?=
 =?utf-8?B?YmVXbVRyTzh6MTRaNVNhc1FjQWdTbW1UMXRJdkpSak4xMVhGUURQNkRweGlD?=
 =?utf-8?B?QVNwY0ZqOEo0UmZWRG1leFhJN0FJWElEamRsWlVTUkdnaTRxQjBMUDlQN2Jt?=
 =?utf-8?B?WEVjZUhRQ09kWGRGdGdYUzdDRmE4T0dmTGV4R1BvT3cvMlB5dXJGZDYwUVNZ?=
 =?utf-8?B?ZFl2OVhOMmF0THo1ZmJEMWVXOFNvb1RGTWpKK0xES0p2YlFRY0wvUFRKeWZ6?=
 =?utf-8?B?bWNJUmRVTjMzZEwrWFd2S3I4ZkRhMnFLTnNYeDU2blFuanNIL3l4Y3pLcGpq?=
 =?utf-8?B?N2dmalg4Y0VRRGk0dWUrUXFrVWNGUGVzU1o2Y0R6bnhHT3YvYkdibDdENzF4?=
 =?utf-8?B?OERmb1NlTnkzaHJLdjFLRWZQOS9uL1lQYmhLdUZpWW5zRy9IbkVyeURNcUtp?=
 =?utf-8?B?ZTBPM1BPaXIzSHoxZmJwVFdEK0xISFhuQmQwMmdxSHhmZW0yRVRyL2lYT1pY?=
 =?utf-8?B?SDhPWHJBMVVPeG9YLzUzdGdWZk1DMmxrZnc4KzZRUEJkRnd0VHlxTjdQL2dr?=
 =?utf-8?B?dnUrN1Y5d2FkWVNid3ZYcldFTHpUNG94clh1cjNjeSsyVUNreGtmdjZSdXJq?=
 =?utf-8?B?MVpzRTA4TUVFbnBBdlN2NENUdHJPQUJFK3hMN3k5blV1NUpic1J5dGlWU2Nh?=
 =?utf-8?B?M1BhVGRlUFZTSkwrUUFqczdSQzBrTjUxOE1DUWt4KzEvWEtyQ0prdWxiRmt2?=
 =?utf-8?B?Nm5jMk9BRFFRN1dlckc1QzFxc25tQzFhMHhLUWJtV0VtTmN3ZENKT0czWjJY?=
 =?utf-8?B?YWpER3lvR2VwOVJBVXV3OXhVNVdhc0hEZlZIUXNvVE1uVGVHc3ljMEV0N3J2?=
 =?utf-8?B?UmM5cE1YVG5tSlJPK0RkS1lrTmJwOWRyS3g1Tmo4VDJDUmRubkYxc1JIM2Z5?=
 =?utf-8?B?NFQxOW54NEFFby95U0R6VWQ5SThYZkhBT2RpWlovWlIxbUQyWUlzMzBFZWtR?=
 =?utf-8?B?TUFMM2dld1JIN21hUE5RNHJKQkRNV2VTTW1EUDJ6dm5CMHk0SmN2cnQybGxt?=
 =?utf-8?B?TGRYbzZMV0ZMR0UvU01QcmhEWnYzQktRa0ZRM1l4Vjd3UzI0aVJ6WTlJMFd5?=
 =?utf-8?B?c3RxUjBISXl2Zkt4dVhlT2taVWpFenJHbkpCWTI3elRDVDdrNmRRY3Z6OHlo?=
 =?utf-8?B?T1BxQkZuWFJiVUtCWEwwN2k0RjZKWlVCUG12dmdRK2hSZGhmV29KNVBzTHJ5?=
 =?utf-8?B?NXlZSzBzQTQ0eURFMXpucXNSODZ4NWhFUVFWNStPUEd2ZHhMODRCK2ozMUhB?=
 =?utf-8?B?MHhOVWFIT1dEdE03Vmp3NWRTNVFkV0FCUVgvU2R5T2ZrSkZsbmYxQU9nZmhu?=
 =?utf-8?B?V3hQZUhIeDMxK0xQWTZSbGtzWTA2cE1ZYk5TakdJQ0Z5MVpyWXpES1I0ZDlV?=
 =?utf-8?Q?3cPUCDeoh30=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WGYzaDNKeVVkSVRhcjVtZHprNVRCVTRXcjFoRVIxMHNzMlBRbVJhamN0K05j?=
 =?utf-8?B?VWhVdEtvMm81WDJLVlQwNUtYUXF4RC9sRkhUaVROSGVUcHg4T1RMQXQ5SVFV?=
 =?utf-8?B?cW52T2tKWHR2YTAxVjNwZWpWSWZtR2lEclNYRWtYSU5oSWRFYm5KYmVBaFla?=
 =?utf-8?B?NFUzNjJrTkNPZFh0QlNBM3hTZG1JM3JvaDdLSmRNWVdiTDByN3pKM0t5YnVU?=
 =?utf-8?B?LzRGTkh1K1FJVDlUSm9URkVuTWRNT09jN0d5ZDdpYU0xWm00U3IvZjFHSCsv?=
 =?utf-8?B?Q1lZWjRyRGRVbWdCaWQrSDFISVpVUldMS05tSFFCblhRQzMrQW5DbU16OFlU?=
 =?utf-8?B?Q3E3ZjZqOHFuazRPaSt2bUY1T3dIbXE2aVRhN0QwUVYwR0gvUEV6RDNBUWRo?=
 =?utf-8?B?N0Z6dktVUXdnTlp4VVB6RVhEQm14OS9yVTJaTlN0NDQrdjZqb3hXMUs1K2lt?=
 =?utf-8?B?MTdVTk5SUkswUkg4Umt1ZTdHUjd5dUR3RWZFbm0xbjZsTlpVWmJ6MWN1NUZ3?=
 =?utf-8?B?RUkwUHRMVzNhMTZ6S2xTTG1jaUovbEFGRUw5SlR6U1hkUFhGbW1FUjVubW9k?=
 =?utf-8?B?eUs0N1U2Vkd3bmNoRVR4eWlTQWJoNFQ3bG0vNGt5cEZsVFpuWlIxT3A2bzh6?=
 =?utf-8?B?RVMxRCtQN2hlZElhRS95Q0FXWHI1dmY2TE41aU0wU0dPMDkzVmx6c0dtcHMx?=
 =?utf-8?B?VFgrQkF4VTBXSDFJa0I4QmhmNUdHM1VyWlJYbnRuZjF2T0dNY3FZYXBnRTNh?=
 =?utf-8?B?ZndNVHBzbG1lbGJZaFFiMHlISnNEVHptRWtWR0tZb1UveVRaWDZKUmlCZWg4?=
 =?utf-8?B?ZzQ2andsbmt5ejdPZ3ZQSGxVYll4N1hKNUs2aGJNcjNBejJpSStsQVdPWEZ1?=
 =?utf-8?B?M0syMVdDVmdzdldzbHVjRURNSlVpS2hMeFh0cjdUYlZpK01ZaGdhRkJPYmVY?=
 =?utf-8?B?NjZpbVUzRlM4UU5QemtUVGw3Q3JmWUt0WDlOSGZ3ZHV4NFpvd21USnZ1MjBH?=
 =?utf-8?B?Q1gzSVJWa3NiV0hmRllzMjVqQjRHbmwvN1hxV3Azd0E3Y3FXSUJTbHFzbDE3?=
 =?utf-8?B?UnN5VkNuR09Wb3F5UktwLy9pV3M5WFNOZDUrb0sxd25qMkVwc25xOENlRUs2?=
 =?utf-8?B?YzhQdm4yczgxNjNUSEJyRmpEdEJkdGx0dWdmLzdDcmw0clBCUnNkeXMyQ2F5?=
 =?utf-8?B?Titsb2JFYm12cnZ6UG56MEpHNWRiMWpieGJEVmhsMGNIQ1RpRDhSWXA1bU9H?=
 =?utf-8?B?b0ErT2NwR2N2bjYrV1draUVpMVlBSjBaa1BDMWVxbTJvQlE0U3ZCeHQ0WHZW?=
 =?utf-8?B?YUE4NFN3K0tzZ3ZZTzQ0VGZEWlNFeHlRZ1lib1hvL2gyVGh1aXY0cHBaRnEv?=
 =?utf-8?B?NCtnN1NsUmhaSGZ5dUdqc0w4YzFHQWM3dGpESnRPeGc4aUZyOHUvbFIrVVFy?=
 =?utf-8?B?WGhuMzllaG02WUJ3QUxQRzQvcWFhQ0FtSXRlR25rVFVHc3MwemdnanlTMmxs?=
 =?utf-8?B?VjZvOENnWVovRmZKaWNVT3R3dHpUN0tySUlEdGhSRmZ6d1NwVXN4OXdTVmR1?=
 =?utf-8?B?ME1xd1cyTk5uT0tKMUh4bk1STWZjbU9pMEo2TnlJVXN6RVJ4OGl2Y0pVY3lB?=
 =?utf-8?B?ZGNBZGpuZXdnaXdjUzFNUVNhWUtUZnE3ZHdJSnpuQUd0QnJqa3NuT0VSbW4w?=
 =?utf-8?B?SGJjVHBubkpqUlNodERpeGZLN2xCOHk2d0Z0V1pDalIxaEZ6STZPYVF2aWRm?=
 =?utf-8?B?Z0Y0TGZNUnM0T3hyeXhCMTV1dDlBS29oVk5FamRjV0s5WU1id2JYcDkzRUdq?=
 =?utf-8?B?VENTK1Bkd1JtSkw4OUtMSUpwTHQ1YWQ5VXV6QjVGN2JsejZ2SHF4TnFwcDVm?=
 =?utf-8?B?dW56S0dYN1U0TEpMbHVmMEhCM0xmc0RiZlZ1aGNXa3ZZSG1kWVg4ZTFuUXBs?=
 =?utf-8?B?TmR2RzIyVUdCNkMvOWtkQllFQlVFMld2TTlxNEJFZ09FK1N4S3BIcnJMenBN?=
 =?utf-8?B?VjdxVCtuL1hZemU5N0ZLYmo2eU5PaCtxekdOZTU0WDlUWlJWYWpmUXZMcjBR?=
 =?utf-8?B?REtueTFGSTQ2YnZ4U2V2cW5jQmoxZjJXa1JHOERQTEJ4Tnp4b3JBUjVSRlFQ?=
 =?utf-8?B?Y01TTUd3a1lhTEd3WUMrMEliSjFXVnBnT01EOExCYUcvblRIVitCWUFuUmtk?=
 =?utf-8?B?YUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e9ece6cb-6742-4f70-b14e-08dda0f5ca6b
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2025 10:19:28.2837 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x8CDrkWR9cIvgKEjPeQUT78mD6az/XVq8DxsI1iRV1eBS6nE8edrXmJ5juvjb/ACGHR/Ac/Z506z/sUI/LmzQJK7PCcyytwmZ0vy2CIhiBE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7191
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748773174; x=1780309174;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gOrbRHc5e97mXu5KI+cjpc6ihyA++dASZnRl0jKT3+w=;
 b=j/E8muhqTo/jPTV9NXy2vba3PuYXY9A7tGyIrwrn8ouZEgUTkJeR9L8R
 9uKjRO0C4Snbs1FXcQh8vYUE9sOGHDc3kMJIwcYQIlCqiQWtZcLd7e9N2
 nfqYY+sp5anPHIHEGDXcACF6oz7mdQfK69xWiY8oPCQVbgPuH7OQIGk6m
 qwPv8UO6ieh1tgfizvyiLnPF5YqTON7zMEfqsYRZnLq+H6bou3f75yBxb
 jKp7SEtG0chLuBJfiMZBkiq6+ajH43ASvQvlpzfCeMgAGvf1sJ66ynz8H
 azwmCMRKcGeiexnmgjUHmg8PPmoHhGGV3EXJ+/dRfD0UbRvb2CTw0RJFj
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=j/E8muhq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: disregard NVM checksum on tgp
 when valid checksum mask is not set
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



On 5/15/2025 10:07 PM, Vlad URSU wrote:
> On 15.05.2025 07:39, Lifshits, Vitaly wrote:
>> Since the checksum word is 0xFFFF which is peculiar, can you dump the 
>> whole NVM and share with us?
> 
> Sure, here's a dump of my NVM
> 
> Offset        Values
> ------        ------
> 0x0000:        d0 8e 79 07 78 c8 01 08 ff ff 44 00 01 00 6c 00
> 0x0010:        ff ff ff ff c9 10 54 0a 28 10 f9 15 00 00 00 00
> 0x0020:        00 00 00 00 00 80 05 a7 30 30 00 16 00 00 00 0c
> 0x0030:        f3 08 00 0a 43 08 13 01 f9 15 ad ba f9 15 fa 15
> 0x0040:        ad ba f9 15 ad ba f9 15 00 00 80 80 00 4e 86 08

You're right — I see that the SW compatibility bit is set and the 
checksum appears to be incorrect.

Since the NVM is part of the system firmware and typically managed by 
the system manufacturer, I recommend checking whether a firmware update 
is available for your system as a first step.

If no update is available, perhaps we can consider ignoring the checksum 
on TGP systems if one of the following conditions is met:
1. SW compatibility bit is not set (current Jacek's approach)
2. The checksum word at offset 0x3F retains its factory default value of 
0xFFFF.
