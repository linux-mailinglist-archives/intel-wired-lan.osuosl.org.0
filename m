Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A57A16EB8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Jan 2025 15:45:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 73CE7834D5;
	Mon, 20 Jan 2025 14:45:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GBz9VeOW7Bu0; Mon, 20 Jan 2025 14:45:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 15667838FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737384340;
	bh=ww9o74PpojP9N7LnJCMzb5sOQJaqs1GJUQPaS1E+IvY=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QinmxiUxeNEVsL29JsQE8mwOqU8AIO5n6pKF9B6Vp60TJLNfKaBtpw4YO+P0fjAWH
	 o12S13kaHNHvwaxhMmVCI86AJSLaLBOD/X6Ki5khPAlHd1skFap67z81g2qCe0pgMz
	 aJ7YbItE6s9qakb5BsEj3uI5KoeWDzzz4RrXbsvJYNi5Gs3zwkD58ef9LyMithNv3h
	 h4YKKrlatLSk1XZHiX5ze/MNXxmWdVJpDz8JsQql0qflywHMbnG8Lp7mKVV+/FyU8q
	 2T8bv10Qlk1eNOY+PVlaGDcK9BscCrcosHOUfQpLOmyrFd27ViDF44tkj44tw3Ma2l
	 LZhuptXhccfpg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 15667838FB;
	Mon, 20 Jan 2025 14:45:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E494E959
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2025 14:45:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 821B241327
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2025 14:45:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EmqdbdypuKaK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Jan 2025 14:45:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 71E3F412CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71E3F412CB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 71E3F412CB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2025 14:45:36 +0000 (UTC)
X-CSE-ConnectionGUID: QebF5wCXRMOrnOxX85MFCQ==
X-CSE-MsgGUID: S3SWm7+GTCuNqUZOB7ebtw==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="48372785"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="48372785"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 06:45:36 -0800
X-CSE-ConnectionGUID: lcXgt9ehStGyXonRDxdcWg==
X-CSE-MsgGUID: 5F2+qRMGRZewDg/99sJ0TQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="106371254"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Jan 2025 06:45:36 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 20 Jan 2025 06:45:35 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 20 Jan 2025 06:45:35 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 20 Jan 2025 06:45:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x0w061YuGzEEaqoTmGCWiAobA1lmyC0of5XB1PUipuFk2UPQTOxF5hldaUP9RIuCVqUlUm9csDUimVTNYBJrYLuOuP1VcaKgOZgRfgTGNE5ks75dNQyKyDWo/IcgGEynzMFFbM+Sp5yBHofxRURQwtvZBlA9mG4mAtdpWERbb6R0K6vtyJvyE8f4p/Pz5pte0JJyhjslOPGAMRMUsAbN0LI0hP0YOJAVJ1oDPEomcgBIBjjcR2ZuYC/UWYMzRNG/FHMRGx+yK7TUPhMjOvxcYcGwhl4Me5lrz6wRSpeIRpbazaRNmrtSC/frWT91qM1hrCbwqH9AVtat1KLyqDIkmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ww9o74PpojP9N7LnJCMzb5sOQJaqs1GJUQPaS1E+IvY=;
 b=JQWqE6HEsutdGlU34SWkJRHp+9VGgx9De6r7pDNv7dxA/ehLsI3/dBnbTSkx35LUNUrXAEB/vjxPnmTg2z4bBG3vsTete+ajj6lLAgdHBpKJtmAYbFc9Agyej2lFSRjG+br7hN94g12wQWhXwJwN1s7WWD0r8cK8IzOLa8pzwMEacWV6m1x4Duv1MBSr0Tdvsl8J+WDgmbhof+lbT5HwmyM83JUcNYWhfRPNNlUCeJ2KmWuiaB/m1fRFdtDY+wsbllj77cvNotPzghy9BC2zG5RkcpFd868Tv+OpkPqYXXAFoHO1y8wEC7VDIpi+ANLjuhcqRr3bmmFN6LN2kFDEOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 SN7PR11MB7090.namprd11.prod.outlook.com (2603:10b6:806:299::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Mon, 20 Jan
 2025 14:45:30 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%5]) with mapi id 15.20.8356.020; Mon, 20 Jan 2025
 14:45:30 +0000
Date: Mon, 20 Jan 2025 15:45:19 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <dan.carpenter@linaro.org>, <yuehaibing@huawei.com>,
 <przemyslaw.kitszel@intel.com>
Message-ID: <Z45hfyEC6dE2Zkm3@boxer>
References: <20250117154935.9444-1-piotr.kwapulinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250117154935.9444-1-piotr.kwapulinski@intel.com>
X-ClientProxiedBy: DUZPR01CA0325.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4ba::22) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|SN7PR11MB7090:EE_
X-MS-Office365-Filtering-Correlation-Id: 97a9d780-3663-4604-bd37-08dd39611642
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?HBwSwkNDSIxL7Oom/6y/FFYDRzmJlQctHaRvNTam9/NGbVTeKxN/c79eDgPn?=
 =?us-ascii?Q?TEiYNKkqDhORjDetzDiCrRZWb+GQHRy4ATH6C4K1tsgjaVevO4lkglQP+42m?=
 =?us-ascii?Q?ikGZxQIcmI6fUpq4kD4s2f7H3bg/DsP/aYqIPxpFljFSMZlgfAxkS4X7R+0+?=
 =?us-ascii?Q?J5LmuVA3OIC7jXRqXY8+C3i6vl5YBMofVD6sNkeCbtpPVA6zX0i4y7o7g0R5?=
 =?us-ascii?Q?dS+QYeVUF0y6SXqrR0jczZDaA6rPXXs5SmxK7EI8yKd/l3mGc2uBnCkdzBU4?=
 =?us-ascii?Q?xmxztLc6OcNMTCCnEYJJZ7r9U5zHW5wztxx3fv5+LB5gaGBElBpGCaFt4JlV?=
 =?us-ascii?Q?mxB3SRP6EUcLGbPKzB+LEragKvaFJw9EO6BLJ/hUMltNW4/maMVtMExXxrup?=
 =?us-ascii?Q?PZ+d8eItOqYRb7au79T7NJ3TGJG3F66TARzamp+Xumt+qrlCtq6PaTkTqyO3?=
 =?us-ascii?Q?UYrqjFIGIqLv1PesIIBjX5KizzrUC+YStXTMlXrO2Lk79P4KNXyrBrI6LDt7?=
 =?us-ascii?Q?rQdwRUfiIR4u/BFeyWPOxosIE3JG981AJ0aDLYG+pAomcd6giib24+lFnwj3?=
 =?us-ascii?Q?fLsS4eVvEmLE1CQpw7xOpWLiTHJmY2WF4D2TEFxzNv5KJ2nvvUgZQFOjzSRY?=
 =?us-ascii?Q?3zOtrrUSoyhXnVoAF4DWeWx7N80W8HJWTKJDthdl3vSKrexhfOHqyoek7mSH?=
 =?us-ascii?Q?lORlyP3QSFnSoVXrClulUXToPf77vIsRJiDJ4jNHt7umQgVTOtJuW4KlfAaz?=
 =?us-ascii?Q?xXurY/WPrUmcuaRXB5dhsZ9U5nz5e6BVNnKkA/HSF1pWbGQYuqQLixJtmnsh?=
 =?us-ascii?Q?81ZF8E5fBXbi+l6nRhFyzbTdAv0koUQwP0JwUX+Lm5STIGzVhIpXnx8h19xt?=
 =?us-ascii?Q?6nORVNAj6Rjv9dYiOc/EQoDYEjpxf4l74mMkvLbUZ0+SkcJlVwv5XsszX8WQ?=
 =?us-ascii?Q?W6kN7s/JEwdqCRNK/OHqxF4ZU5ReOhNNZxZ79RR0CCZmOgCKM6n7oL8QPFWU?=
 =?us-ascii?Q?/pdM3uo0utirb0xMf84RbFcXdVWESrqA8ZpjgVM1NUBN8o1iYLr7xjiaNmj8?=
 =?us-ascii?Q?ihsWkhRmF7EjdQ9LAklV2qwY7TLmLJOEM/SUX0hpWorBfeEi2dBvncUywkRH?=
 =?us-ascii?Q?YdLK+vhtt+Yx0vz5g96E6fAKtJ4wHBbiNoJmF98I3zTWCZZqS8vfXKmkmdFS?=
 =?us-ascii?Q?GmbiYOuOAYYbv78g/Qz2NhoaJ0AnoyNm7dRttC1maqvadJEvvaZMBKup1gWc?=
 =?us-ascii?Q?8je0LglO9o7qtpfdQIagbShRLxiE6EJahLa7qwz1qVmNx5bLfr1b3NhfdCQh?=
 =?us-ascii?Q?TBxHoxocbupOAIMUoyYIw2YXS8lnnqIfQh+zrQyNlbqiU3DSsTKPPCDG1G0I?=
 =?us-ascii?Q?v+R7NB2aa5MI34yY7UAJa0i5U7CR?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TFx6+GXOcQLtq4rd+7WTQRvQoBqjc7SsVRVn9MukTML7J7nrsrNFosqPk6tY?=
 =?us-ascii?Q?FMvJt/TuOEyGKswFN7e+UCb5m6XGWdKo9Wi+BWFb/ZKtzEzKMemDzQ1hQD7C?=
 =?us-ascii?Q?4tCtkP7PZo0YxHLBMoaxbjIq3GjiWuhZ9Us4n3SGCVbnMQ7QFm5b2pmgcI3h?=
 =?us-ascii?Q?Haz2DJhyc0M7uTfmhSFBQImAOOAWmUOG3TwVzsMXi1wmEZXxDoABq66sXmqW?=
 =?us-ascii?Q?r4rI10vvGXGMP1L+i9PGN3bHPnydWGrsCzxVgGaNdAYSzNdGZxcD83+BQD3q?=
 =?us-ascii?Q?n2X4TMXj5UMDtfR0JqEh5G/gatryHMv3AdKvLuGrWyx4jtHtKuShNnvQXI1q?=
 =?us-ascii?Q?00ELJYW0IqrAYgmu0YhWQWyOIdkqR253BRxdOqNhsoNcX5eAV1iBVW0cBe1v?=
 =?us-ascii?Q?PdQEMq0tj4Au8B9MHcqWQJu+KgVsCbRYOHkIkwlkHobreL5sAHRjFrFP9dHi?=
 =?us-ascii?Q?lFx2hslkGj1CL+BvX48I4a5sEmNP2vFpxWPE6kVrDNYchu5XDf/FYWXDPxAZ?=
 =?us-ascii?Q?3DPqSr58thUbZ9XxYdcZlgSFe42nVbvEipK+Ks5FletsB9GJnWYCHCoaKhrq?=
 =?us-ascii?Q?+PjorbRib233icgBEMF63PzCEn842RnUFIQeXKB4+zXxKeL0c9n7dUN0nY+S?=
 =?us-ascii?Q?MfqVsTcEIqhvu9VJn1JFcbEn/2nx8bmR44TaW9p8eSmmUuTdh+9wyjeJWoF3?=
 =?us-ascii?Q?beWVyPXlvPW49tva9hiOV39/S/jAv4wsjDwXON0i250QTuCkDCyg8LWPbznK?=
 =?us-ascii?Q?2xPSTXeN8lD5sNs4iqtIBYuTWuL4YM3ztqdp3SCBW0a4+QFwyS1fGGeSvGZp?=
 =?us-ascii?Q?5Tw8eBJy1fc6fG2tBbXf7HytQU0VknwKwOgKGMMe1SUIDH1j9tpr2gTGZpir?=
 =?us-ascii?Q?gEt9iLO9bvPbc/T3H0i1aN4fX/fwDcXlwoQ5AOx9PCeFEB5QZfifAf0O2I27?=
 =?us-ascii?Q?pWxppoyYGDKLrvd84xhlsXHfpEkkscNoc37e/EYOE7QpVHCpfunAhggcME2r?=
 =?us-ascii?Q?mYgF9KSWvX889tP9uFZcxeGzOuUN/PVaBQJJ3tjj00vC9UwzVMIPeYUuFLnW?=
 =?us-ascii?Q?M8YZAFz5YF8zm0pHdunaKiQTzsVpjJr+uNcBD5DGGfAtwokXwOSfjl4wqJno?=
 =?us-ascii?Q?550Mut8WeTR3KXcfq5emvrT63F5ohDC2Fhl0MAGBg5yy6zjlr2zE57IpGRNt?=
 =?us-ascii?Q?sPQpgaYp61D++IegCHg4EXQpDKAX14xuBEVEuHA7mUFWjMkWtf2dH5LumOZF?=
 =?us-ascii?Q?zDBLkeC3E9HSGDeb8e8jMsiJ0XPNQVcXuooKsTthV2q/9yF8S5l7ArywiuP3?=
 =?us-ascii?Q?MBhmM06Wr+f/9sH+rPGnzLAaqfre9Ld4hvJ79zJu1SeqdcXjaieQppksNOgC?=
 =?us-ascii?Q?OwVBnrHY/K2WBLuJQ5cvsI7Ud3r/YvFnfUxme/9sgIL6dJ9MgGtPoihXyy6k?=
 =?us-ascii?Q?+/6rCzYnhFMKFYoyZHQLXawWJdBDrjfHeBzcTL3wvZkz0pxvYX+AtB7oUbfu?=
 =?us-ascii?Q?WZ+vlz0CqtrY9WrT2hhOrwSCRiFVsxhDWU/bDS+A+2lqLfLwvVi4l6v5kUyY?=
 =?us-ascii?Q?g9hYxCIpcqwCyrhRd3v6Unvnnc+jfWpgWoSBdBkAZfKsUQS1iJCMWrYRWi9+?=
 =?us-ascii?Q?eg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 97a9d780-3663-4604-bd37-08dd39611642
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2025 14:45:30.5815 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LfHZAOnE0dkqqBh4G4D/CXQHau92geJbtGu/QavxZPKPhruQ9hOkgPlirbn+t6UAsi0u00sMAnLaFXAngzzRrJgJyw6w4VNMtA2omEloavY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7090
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737384336; x=1768920336;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=rH9NQkZ2KkjW4arByH0Yn1aSMA4Myw6tmYr/vejRe80=;
 b=C0riXL27PJpi5evFRZsPSrowMCwjwKPyQYVqezRGmKykKm4Czzspbgh0
 H1L3wmi6T+08eRLLmqB/VwarrQctE47kqpwfrnZ582lb/nOpJQ3KmfGgI
 BYB8Kkbzs9ihFOUOzJA6x4qTDoKKSk+HrlwEWbl5zGoSbNfr+w2LUL5MJ
 VdSoJvZE8X+Eq4JaE0p5BfkficFn3b9/A1Mp9tL2LYTEI5EAmBhNzhC7g
 ccSViVHmgFIyhVqtlosM/njwoRKprvhZtbJ0Buf6z/bVubu9UNlP/Hh3m
 EKEYZHu8EvLUWpZUOBni4bBFK+YLfT7iP/raJFCsx5KyoOwKtHA6VfRio
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C0riXL27
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: Fix possible skb
 NULL pointer dereference
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

On Fri, Jan 17, 2025 at 04:49:35PM +0100, Piotr Kwapulinski wrote:
> The commit c824125cbb18 ("ixgbe: Fix passing 0 to ERR_PTR in
> ixgbe_run_xdp()") stopped utilizing the ERR-like macros for xdp status
> encoding. Propagate this logic to the ixgbe_put_rx_buffer().
> 
> The commit also relaxed the skb NULL pointer check - caught by Smatch.
> Restore this check.
> 
> Fixes: c824125cbb18 ("ixgbe: Fix passing 0 to ERR_PTR in ixgbe_run_xdp()")
> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 7236f20..c682c3d 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -2098,14 +2098,14 @@ static struct ixgbe_rx_buffer *ixgbe_get_rx_buffer(struct ixgbe_ring *rx_ring,
>  
>  static void ixgbe_put_rx_buffer(struct ixgbe_ring *rx_ring,
>  				struct ixgbe_rx_buffer *rx_buffer,
> -				struct sk_buff *skb,
> -				int rx_buffer_pgcnt)
> +				struct sk_buff *skb, int rx_buffer_pgcnt,
> +				int xdp_res)
>  {
>  	if (ixgbe_can_reuse_rx_page(rx_buffer, rx_buffer_pgcnt)) {
>  		/* hand second half of page back to the ring */
>  		ixgbe_reuse_rx_page(rx_ring, rx_buffer);
>  	} else {
> -		if (!IS_ERR(skb) && IXGBE_CB(skb)->dma == rx_buffer->dma) {
> +		if (skb && !xdp_res && IXGBE_CB(skb)->dma == rx_buffer->dma) {

xdp_res check is redundant here. skb ptr will be non-null only for xdp_res
== 0. so skb != NULL implies xdp_res == 0.

If I am not mistaken:D or ixgbe has some code path I missed.

Besides this, thanks for improving commit message!

>  			/* the page has been released from the ring */
>  			IXGBE_CB(skb)->page_released = true;
>  		} else {
> @@ -2415,7 +2415,8 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
>  			break;
>  		}
>  
> -		ixgbe_put_rx_buffer(rx_ring, rx_buffer, skb, rx_buffer_pgcnt);
> +		ixgbe_put_rx_buffer(rx_ring, rx_buffer, skb, rx_buffer_pgcnt,
> +				    xdp_res);
>  		cleaned_count++;
>  
>  		/* place incomplete frames back on ring for completion */
> -- 
> v1 -> v2
>   Provide extra details in commit message for motivation of this patch.
> 
> 2.43.0
> 
