Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qHKfJ4qO3Wn5fQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 02:47:06 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9272A3F49ED
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 02:47:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B360427DE;
	Tue, 14 Apr 2026 00:47:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t6ZLpsm3Dk3l; Tue, 14 Apr 2026 00:47:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 98211427DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776127623;
	bh=dByCiFUKFC0gnLHfCvFxk7BLtQXcJtwrXIIh8ViFps8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7XJ/3HDwY+N1gBPT45UzDUgByJe1gafr1LcMaxxxCB6acAWcnEr5wyhC9cwKuX2rj
	 vlOkl0jAIHrD9iDvrbG2rEifhC50fezZ49WU7S08VhOMf1NwOdXojbKFzuKJOACmMu
	 SpRRjZUAG6fPMc2vSdohPzSm7fpvQrRXYDy0HNveQl/YUrOmTckl3a/4U1aNZFUxbP
	 yI48tUg2kEBWNLs6KcO6OiAXbbqVZqTGJTi5509rXDnev/3w9OokGyFkX2i3sfeAhl
	 j6z+flg+GvbhzRNufkooxu+Dh/cF5Uw3Indap7n1xBpO2jsN41x3gIWvSofdO6FRom
	 ctwOSEASqZMLQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98211427DF;
	Tue, 14 Apr 2026 00:47:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 91217283
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 00:47:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8EF7D42332
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 00:47:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gv7_B103bBlJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 00:47:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AC9B8402A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC9B8402A4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AC9B8402A4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 00:47:01 +0000 (UTC)
X-CSE-ConnectionGUID: M4HcGgEJTtCNkoJ1q/KNwA==
X-CSE-MsgGUID: sTl779jMR9abQyg7ccNpag==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="76238581"
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="76238581"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 17:47:00 -0700
X-CSE-ConnectionGUID: 0J9HbI62Sxisd6pSvNfXIA==
X-CSE-MsgGUID: /RICMNQBRe6kxlsZT/FDQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="233965560"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 17:47:01 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 17:46:59 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 17:46:59 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.69)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 17:46:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Nrkq3KICbRK8IFu1uR17aCDwUUVWOzPafyilJaq3HyKiZNEBsLoDWpuMrYK5rUqp6YszzVTgD2P7L/RJ4DpO2P4Ut/eDgneVGw7kLujwFmfyEunD2nN0yGXe6A5P3z3Y2eV0fFPHyTa3KTKLs5PNiDwV/l5sBpkokGIGw+cb3xHodnFbDXobDV8mVnC6PQyU6m7SHKogQq4gKehzA+FD3yk3l7BiSoc66OCOwvXuaNVMTUsBi3XyFawPd7ECNICDj6laXM9gi+w+3f02U3ZMB5f0apGEIuHVF7HTDy91D35xxHRj5kCZ+BKT8dd42B/vCZ+OH6U0LcMvZPdd9wsirQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dByCiFUKFC0gnLHfCvFxk7BLtQXcJtwrXIIh8ViFps8=;
 b=lYx98lCdEkL4X0xek9xgJYULCXFQaBS6MuLQSodEyrvDaz2wS6Ftb4eV6dHpy8/2uCismpImWMgb2fiY/uWHqHNLciYDrWvFyr6JkyFcrpup1WRxuIQD/Adep/g55NMwWvSh1Xw1PNGnGJJ82zKeJnxddSUOxtT+/CA9fFi1hGBgRBrSYIaPCD313JJsyFuzg6tx4DajBcw1Sia4CbF7mLCUyHUJtPwMhuDQyaFD/Dtna+gcoO0SSGApTFB6/Hw9Ls0L0J+QdA3Yjrfbft6LRXvKIa8DeEwiF803jz5L0WAmc+/ayTzLAeHN816lVV4PL15w9IQXniAfegKtmnrX7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.48; Tue, 14 Apr 2026 00:46:57 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9818.014; Tue, 14 Apr 2026
 00:46:57 +0000
Message-ID: <193fdf9e-db5f-4ae0-9a8e-d7049fa74ee6@intel.com>
Date: Mon, 13 Apr 2026 17:46:54 -0700
User-Agent: Mozilla Thunderbird
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>
CC: <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, stable <stable@kernel.org>
References: <2026041116-retail-bagginess-250f@gregkh>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <2026041116-retail-bagginess-250f@gregkh>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR02CA0028.namprd02.prod.outlook.com
 (2603:10b6:303:16d::7) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|DS0PR11MB7785:EE_
X-MS-Office365-Filtering-Correlation-Id: e169e9db-4d55-42f8-93c0-08de99bf54a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: PP+qiXr7VRc/I4WP+9FhsQPEtbZ2Kx29OI7qQfGzszGRxVcHrt3WlodUbrAg/PtZS25aCquG4bcheC4ZNaw4vxThN6uU0GwBBq9/SvWYBIHvhwMyPZM1czZUpmwSqD83u8LpJuU6E9OXA1ymq0zftaDKAOr4zjN1TnaF3yZNPmgrvRO4JOcGdfCkXN5GXWPMsLeIq3XpffOHiHylIlZIBNeOMABlzn7O6f+weBfA6Ac/6LZwC0VvR1p5mb06N8oiD6QTXkJIj40oV6t0ueFhXlVsCWQVVgVGMPNRJj58d+CDcTf5816shs8wNHt0+ax3attyP6CxPlN8XX3CtB8vCGDlMK+emDtVwS0rrJdBuglJFOiGcgmIHMM3iBdXMXYzUQUs9EkhKO8ufJfyo2v80R53DmWNrqf5ApB5D8ngEJwl44G+q1ktfaem1ui+JgbRtEIGPdoiJ6NeJVPqwFZEnrVn+wwATFm7zV/MD/waRmFU3KPs00qF6AhP78Hnb9kdXmXnamZQoufxhYSjI1QEu+ZhKAPlPuiWs3S4eGpGhBCl9K4CFfQP/rGtttnEiP+pkWDfORhjXWEw3zBGTmuq0x3540kCgWD+SWc19YWasSXOuUnto1h4UiH2x0Go1v9tsietXeggH3QkefEOBYDoJ2BRnIUzwaCXGZjpQNaKVIwpCQqtAQeVIpeqk99ttCzLeRjB5L8aARIHoHQj2YkREmZNjljeIhvrRS9rdJMtujw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MFQwVWxQVUR4enhQb1dBdUs1ZE9neE1kNUtxMUxzeTNoYUlQWVhuYmhSYUVn?=
 =?utf-8?B?S3d0alptbGRkbmlVbG1JZndnZS9ML3dmZUZSZ1VuSDZ2ZlR4Z2w0QUsrNjlS?=
 =?utf-8?B?VnZ0OER0S0hVYUtRdnBHdU9iNHpPQmFLd0hieWhYaDYvaTRCclBnVjNXdjJT?=
 =?utf-8?B?bEwvSjl3ZWdLbWJzbjVQVHY4MlNsSjJIT2JBNjZmc0hRa085N0JvM0E4d08v?=
 =?utf-8?B?L05Kbm4xbldHN0R3N0NZdk5wcm1JUjl5L2VNU3c5WktQUjZhNi9UR2VmY2Fn?=
 =?utf-8?B?S01UVnp1dFRIZmt1K1AveEU4MzZ0L2wvSUJ0Z0pyeTZRYWxaaG9WdWU1ZzJ4?=
 =?utf-8?B?aFBaOHdUblVYTjE0RjBESFdEWWMxejRhWVYzWlYwdzRNZFU1MEhSRTcyOGhQ?=
 =?utf-8?B?bVA5VWxrcE0xb2RRSVdRMENBWVliOHYvRnROK3h0M0dsbXYrRERqeUhpTW9R?=
 =?utf-8?B?dWZtMWorclM3RWhoQWZqQXFPT2ZYZzJINDMxcUtNNk9idWljN3RDcWxsem54?=
 =?utf-8?B?R1dPbmpPdzNQalMxUFovNnI0U09NaEdtVXlzUnMzTHJhZElPOUpnSlZaZy9w?=
 =?utf-8?B?dUhyOGtMck5vQUR3aXVCb2EwaFU0dkt5UXdBVzRWRWdGRW9Eakd0NmhndW1B?=
 =?utf-8?B?bGEwUnhacjdCekRaanBQb2F6SmFPd1pYUG9vek5WYTFuUnIyaXZqcmZkS1V6?=
 =?utf-8?B?cEw2OHl1VExDRkJlNEFWY0p3NlphRHhlaEtyb1FGOXZEY2paZ2NFS2Z3eldy?=
 =?utf-8?B?MmkzTTNKTTBlNHpwMEtQc2orZGhhNktGeFFTOG85cnh5eklHSThuV3hqb2NC?=
 =?utf-8?B?L3lZQjJtNUh6SFVVS2Q0UmVWQXU1eENOVVdsRGNySzZzZ0JVTlBBL2dZais3?=
 =?utf-8?B?VFBYTkFOYjJMRjY2VUg2Y0pqOE9nYUZiV24wTVltZXJZT0Vkcy9SREh0ZGIy?=
 =?utf-8?B?UXJDZTVSdmd2dGVXM3Q5MnJXdGtrRGlLaGZadU9UTmdBdi9nb3hJeDlUZ1B2?=
 =?utf-8?B?ZVJvN1RmYmVaS0RDb0JjUVhHSWMrYUt5TmcxQ0xTUC95S3Q3aHRwU2RCakRl?=
 =?utf-8?B?c1R6eWk4bGVUM1JQR29LOXJDcXYwL0d0eUcyaGNDNDdsTHVuY2JaRTRVRGNt?=
 =?utf-8?B?UGptdUFYSlJVODkrTFdKVjBlZjZyajYvN3lmR01rR2c2NE84TVRLeTVaZVl6?=
 =?utf-8?B?ckMwbS8vakE4aE0rQVFwWWFuYTMwN1VkcDUwZVNvZ2lsZ1dqakloTjJ3cEw0?=
 =?utf-8?B?bnU2clF1b0hrSXNiSGZlNXk0NTRneWtkakVMaXR1OERjMUNoSmQvS3k5R0la?=
 =?utf-8?B?YVJUOHZRYjNDN1QxQ3JsYlVlS3lwWTZsM0VuR1RMdm9Ta0RRdExQdHFpd2FQ?=
 =?utf-8?B?SDREaGh4TjdNSVBkeU9aT203NHdtZEFIQWpSanhSaDhIYlNOQ1c3d3lVSkk5?=
 =?utf-8?B?ZFcwdm1jd3RIQ1cxY1VIenRtZWVMLy9wS0NjTWNaazVYbFlUMU9XUm9iU3Z6?=
 =?utf-8?B?b2NnemhtRGdQRlJMT3QvUFEvQnpjb29ZMDZJU2t4VEpLWmZPYmtaeHNHOFk0?=
 =?utf-8?B?enY3eGxtOGlmTWpoOERnVzBiaVppT29FTzFneWc3aHJDcnVDTlpKYlp0QUU0?=
 =?utf-8?B?enQwVk9aaTgrTVB1NUJiTTk0c3FiUUt5dzF6cFlEUEx6THVrVk52Y05WZTFk?=
 =?utf-8?B?YmZYV09ST2RYR242dXRScnFySGJnaW9DaEVYOEFpQTlaSkhhYkVRci9kcjFE?=
 =?utf-8?B?VXY1N1dZRGFWVXFiaGdTRWdxQUZKSjVxK1ZxOVlWMm1IcXFKUVovcFVXSXlv?=
 =?utf-8?B?RmRyYXU0dzJ0YVJXSGF0b0dsNUY3dVBoSU4vOE4wT3hwRUVEcFkrbm5jRnNE?=
 =?utf-8?B?L043T2U4WmJ5b3VyMEVJV1VOTkNRWE56dGdPS0QvdWVTa0V3ME9MOXBiNEJk?=
 =?utf-8?B?QThYbmhCKzFJTGNzOUhYbkpOS3NMZXd0bU1kQzJzNVRzTnllSWxxcDJxZ1Fr?=
 =?utf-8?B?WFdFMXJQd2MyVVorSlBGU3RvZ2lsNGI1TGpyQldTKzB4T21LbUNVcmtXREI3?=
 =?utf-8?B?ZVdrakc2WTdlR01kOW9JWVNyeHZiZEdTczlRT3ViSVlPZm1CT0dHMmhnM0RI?=
 =?utf-8?B?UHUzRzBINUl0ZWwyMS9DM1pPemRvUzEwWTlweUpMWW80K1pHTStSTXdHblph?=
 =?utf-8?B?NlRydTBJUzFGVTYzd0hmT1ZuSXBCTXorTG4zcGlmNzk0Vlp2T0JJYS8zNmth?=
 =?utf-8?B?Wi9TMUo3STVPSlZ6ZmZ1T1JybTRHZWIxdTFhV1ludVlYN0Z0WFNGUDZRNzRM?=
 =?utf-8?B?RzgrT0VlZXV6enNkUEFRNmQ3c0tQd1dOUVRUMkRraVBuOTI1MEZmUT09?=
X-Exchange-RoutingPolicyChecked: gZaF8nh7R4okZ1opvEO3cKdmLI5SL/IEw38tznyHjEQqRc8UPAYLAGlWxTp35S8k2HZOtfBDdv0Hrm8cWFW2eEORcoVpvCuruXrZbKAml+Y1DI/Q7rQ1iqCriX1cCFx5nAvQraJmHEHvcU82dwyCazaTSXDEunx90uiENHsqWGsjsd2TgXVLIZTQrJ/6HpjXbz1lW9Gz+YFlFqFS5VCuLg3pVWg/ai7DmItIK/nnXVZuFLZPqW63dNVrx0u75+HdHxEsfiSaD96V5iAscBrlFR/aBAYQqlo7+atu9hUTombcmyEOetL2bgmeK3yrgWK0519vyrjtzLV/EPUmmr05Rw==
X-MS-Exchange-CrossTenant-Network-Message-Id: e169e9db-4d55-42f8-93c0-08de99bf54a1
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2026 00:46:57.2707 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: esgpJdqrnfV5p1kGo20Fiwk/7LLXPRBa9xfbRKQ8xwgRPT+DLRlCJvlMyHJ9oiTqaz/cWUOpkqbyQ/dXtYvWxGAIcLivQ5M92jWTkiM5rds=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7785
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776127622; x=1807663622;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VPDLZmNy8uRtrzRATp4EDfzDAw6oGSkuJt0YKYyMQ9s=;
 b=FzEQmmezp3dHm+uT+N1MWeb1cI5vZ1WUOcbx4D0BCwg9IaSfKfSdpWR2
 8UmygW9vDDXbO3XNalyih3vexcV4DPlgLeddDirOTrgO3DmDa7j323E8z
 kzT8/SMcjVC61/D6Oa2rl4SBZRcKJUgUMeUhQz4o7bR7FPMxHdY25Wad3
 2Cg79ES1btBQ6Im8Ql+NhWk+ZBeUIwhNk0E9wAulzlfsQG/eiTQjCRtRH
 gtSW8kFnGTxChvIhYK6l6QB42krIuTKU+auZZqWNoSd1iQiM1q2GvKfIt
 R7DPa1ebn1a9m+pV4ckAQuRq9BvgNZ34V0eKSdxLS6pOkT3t87RXfRVzl
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FzEQmmez
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] idpf: fix double free and
 use-after-free in aux device error paths
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:gregkh@linuxfoundation.org,m:netdev@vger.kernel.org,m:kuba@kernel.org,m:linux-kernel@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:stable@kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 9272A3F49ED
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/11/2026 3:12 AM, Greg Kroah-Hartman wrote:
> When auxiliary_device_add() fails in idpf_plug_vport_aux_dev() or
> idpf_plug_core_aux_dev(), the err_aux_dev_add label calls
> auxiliary_device_uninit() and falls through to err_aux_dev_init.  The
> uninit call will trigger put_device(), which invokes the release
> callback (idpf_vport_adev_release / idpf_core_adev_release) that frees
> iadev.  The fall-through then reads adev->id from the freed iadev for
> ida_free() and double-frees iadev with kfree().
> 
> Free the IDA slot and clear the back-pointer before uninit, while adev
> is still valid, then return immediately.
> 
> Commit 65637c3a1811 65637c3a1811 ("idpf: fix UAF in RDMA core aux dev
> deinitialization") fixed the same use-after-free in the matching unplug
> path in this file but missed both probe error paths.
> 
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Cc: Andrew Lunn <andrew+netdev@lunn.ch>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Eric Dumazet <edumazet@google.com>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: Paolo Abeni <pabeni@redhat.com>
> Cc: stable <stable@kernel.org>
> Fixes: be91128c579c ("idpf: implement RDMA vport auxiliary dev create, init, and destroy")
> Fixes: f4312e6bfa2a ("idpf: implement core RDMA auxiliary dev create, init, and destroy")
> Assisted-by: gregkh_clanker_t1000
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---

This is targeted at [net]. The fix seems straight forward enough.
@Jakub, I have no objections if you want to pull this directly. I am not
sure our validation team will find anything when testing since this is
an error path that is historically been difficult for us to test.

I'm also fine with taking it through iwl-net if you prefer, but just
want to avoid duplicate work if you're already considering it.

> Note, these cleanup paths are messy, but I couldn't see a simpler way
> without a lot more rework, so I choose the simple way :)
> 

Yea, I didn't see a better way either.

Thanks,
Jake
