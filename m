Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B1AB2A40F0B
	for <lists+intel-wired-lan@lfdr.de>; Sun, 23 Feb 2025 13:48:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EA9638107C;
	Sun, 23 Feb 2025 12:48:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i-APIDLPEO6O; Sun, 23 Feb 2025 12:48:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE849811D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740314920;
	bh=xBZZDEkMdf9hI2sDbpeO6mGDRiFXnFoPHJnvNJUNfRI=;
	h=To:CC:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bI2y0I6rm2XVpCJRvKpue5rL6WCiKQIwsOfVX3P2nhF0DtV8gIAySLAHIXaK1sMUA
	 odQSy77qC0R3/ogW9Y0QhKt3Elb/flc9ZoDsx+leJ0nTSz38agvD5pHTuvjT3aYjca
	 0+CGLSULOXwgRxfJuJLu5s+rQNb+XD9U+F+Z5Gd4VBqMIcgszkVdu96oh59IZ9quUk
	 G63aO7u1cRRC9S0bjQY/lVj/9YkM6w83BKlXYkrrcnMvpudchrDpkSR1CnVrztTaWd
	 5MOLiL5sqM1fYJSAt8kACNEK+skgmFXcxakxPko2IpL/H2xYDBJ7KxlX1RIqIuGskW
	 Zaxo64p0oIXKA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BE849811D3;
	Sun, 23 Feb 2025 12:48:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A13B0920
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Feb 2025 12:48:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 90AC281139
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Feb 2025 12:48:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ilG1av6D6Xco for <intel-wired-lan@lists.osuosl.org>;
 Sun, 23 Feb 2025 12:48:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3C669811D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C669811D3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3C669811D3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Feb 2025 12:48:36 +0000 (UTC)
X-CSE-ConnectionGUID: InlQSgVcSbOOotKWNqN6xw==
X-CSE-MsgGUID: 8nq/UgapRF+4ixoLjmczbA==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="43909321"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="43909321"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2025 04:48:36 -0800
X-CSE-ConnectionGUID: glmAtr0jSdCZF3XI43wlrQ==
X-CSE-MsgGUID: HdHTcZuHScmxoOXR5Xe6Kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="116327365"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Feb 2025 04:48:36 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Sun, 23 Feb 2025 04:48:35 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 23 Feb 2025 04:48:35 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 23 Feb 2025 04:48:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wtb6hpwlaeHfHbZjll7E6A8q/oam+i+DG+/knOWhvvQuTMuGVsM1A3Y5JGbaktAdG2HFN0fvauxBo9uyjOBUXV2UVUTQ/jFFYpqJj+B6tHjwwt5aFdiOS8fKTMsNe55MGj4Q70AFRNYJcnajuxA6FajgsElTyZVgkh747FZI//OdhfjQgVz2aV9HoTqgr5JVykgGbTlIhW83VINNEaBM5Y92rGES/O+r1Y85f2SYJ58EUMuc8kMtHsJDe1zsGvXrR4d4rhhhAbtsfWoQrXsfAyh/ERjkIyS48acTSR5fNwQnUs3iy+HZEyZbX2H2rXcPaiLjgo4kzbu06sU/S1LqdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xBZZDEkMdf9hI2sDbpeO6mGDRiFXnFoPHJnvNJUNfRI=;
 b=TLI4kqswQMAwJKPLEkqv8jliFZ/N8weelOFjekrzL3xVlM8n0wHtCixtVCFuCNkjn1mNamyxyMO3BIRnymg6WApN4x1KQgeedN0Kg5awbWAmCFrhbLtve81sxVA0V3/DDlTRViZf1W0AytK8Pq9lt3ZKGjoL9D8Uu7FAGUIaRNeG9AOfMdYrpcJBzaOQ5ILphgllciPnZEeMUw+YEwoZW5/fZG9KADx9zH8c3kznHLx8SDAAC0+tE0RYEOXzNO7Kp0YUHXg4WL7gpZX6X9e9bUiTRm9/qDTXo076fbAlqusYdG9zBRYZ6lsgsDfsbVRgRKr53HbknwUpYORXg7fd2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by CO1PR11MB4866.namprd11.prod.outlook.com (2603:10b6:303:91::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.15; Sun, 23 Feb
 2025 12:48:28 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%6]) with mapi id 15.20.8466.016; Sun, 23 Feb 2025
 12:48:27 +0000
To: Paul Menzel <pmenzel@molgen.mpg.de>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>
References: <42adcd29-3433-4e38-a28e-7f00dac328aa@molgen.mpg.de>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Message-ID: <ea28324c-1da9-f12f-5513-e2973777dba9@intel.com>
Date: Sun, 23 Feb 2025 14:48:22 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <42adcd29-3433-4e38-a28e-7f00dac328aa@molgen.mpg.de>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL2P290CA0012.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::16) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|CO1PR11MB4866:EE_
X-MS-Office365-Filtering-Correlation-Id: 3984c05e-92ea-4a97-e65c-08dd54085e26
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T2JwUlgxSnBuWDk2R2R4U3ZCWlBvSmE4UElOUENLL1NwSlEyd0FNWGdmWlN3?=
 =?utf-8?B?MGFQL3pJRXVNd1lEL1UvVmxjUjltdGVBajZqR2cwdE11RE9HZzVzZzFxaWxj?=
 =?utf-8?B?TFIzbUxXVitUSk5EVmdqWmkzanV2MHZCaVBNdE5kYi9TRFVVdFhJSndnakFw?=
 =?utf-8?B?dmw4T21aTFV3SXhubHc4NTdqTGh6am5Kc05RZ3dqYTJ1eENlWjVOenJZRldL?=
 =?utf-8?B?NkgyVnFIM1A0VWtXMmN4bVNqdDZKRDArUjlORVVEbDRRdHYzNEQ3QmtsaWxa?=
 =?utf-8?B?RWdreCtyN3VSdm92VjEyQW4wODVmcGloQkpwWnVZUkdPdkpMbGtKVWJlSUdz?=
 =?utf-8?B?RndOK1kwdUVLaE1jQlI1UVBiUDMvUHFPSHlGMjQwa3YrTWpwRlRaOGZGWlla?=
 =?utf-8?B?YU0yaWJqN3R4OVpRejZrMngrZml5UTRKK2RYU2NJaVM5aE8yQWtMTk45SGE4?=
 =?utf-8?B?NUgxMWxXMEtIWGk3SEk1R0VlZG9MSGVjbUJGdWpvUGcybzh5NUV1N3ZKRnQv?=
 =?utf-8?B?U0s1U08xR3RFKzgwZWo0RVVlNWF1RVhkRlErclEvaFB0bENGaEZSSHFvWHhi?=
 =?utf-8?B?NlV3aHpIQ2NIa2hsTXRXVUIzZjhlcWJkTnc4M1FkcGVSTWduczIwTW5RcmRQ?=
 =?utf-8?B?ZHpzUXJTdlBqUGF2Y3Exck1BQ1FMaXQ5aFBJOFRpczBUNldGVU84S05OK3JW?=
 =?utf-8?B?VTNVVE9Rb2wxWGZ3N2dtRGk2U2xnSVkxcmo4RGU4MGdFcXNZMS8vbUxRc2Uw?=
 =?utf-8?B?ZjJtUGR3UlF4VkpIQmgzdUtzS0NsRGxxelRrWHl4ZlNybnJZeUxxalp2NFdS?=
 =?utf-8?B?dlBabEloaVg3K2poUG0yVUtnRHNnVU5HSGJ1QUFHL3AzWHRZS0dUTEFhVEdw?=
 =?utf-8?B?R3lPUG4rN0l2YlhzU2M4emVJWWdTYVYyRlJSVEd5NXVEaEd6T21OM2Q5STJB?=
 =?utf-8?B?WXN4YXlJa2xadGNtd2NXNnhDdmpwMklsZy9oRSt5MTFtT05nQW9XemQ2SzAv?=
 =?utf-8?B?Nk80dnNRRGZOalRNRmtMOStEcDlxaDlYQTdkMlEwWElsY1Q1ckVuYXEvZ0hC?=
 =?utf-8?B?b1pra2JjUDVEOGRMSEZKSmdKdGtLMU5QM2IvVFRSa0xaYm10cTgrMzU0Wnp6?=
 =?utf-8?B?L2Z0Rm1GVDY1SXVrYWZ0NHBTU1ROdUdKVk5CMVFpNGYyV0UrMWNVank5SnZ3?=
 =?utf-8?B?S2cyZmdUOU8xRUVWQmRyK3dlRFBLL0pubWpIRExMVVFZNGl1OXIxV2ladW1L?=
 =?utf-8?B?TWMrY3ZUcklqVnRmWnRJRDlEcmhYYjM0MkIzcnQvaGh6d2hoRW1XenkvbHVF?=
 =?utf-8?B?VTBPM0hhaW40WlR1RWtEbFYwa3k5WEoxL1pFajRCQmJWaSt0K215YzFGaE1a?=
 =?utf-8?B?SFczQktpMWgybElvYVJ2VmxOTjFIbllkRXQ0b29DaTluVEVlWklNM1VjdEYr?=
 =?utf-8?B?c3Faanp6cVJ4UXNuSHVVbkhHN081cFhHZW1LaEdGKzRlenpFWnBKVEdRUTJ1?=
 =?utf-8?B?QzdJaU9rSVIrTXQ0U0JqejY4ZkhveWZwNE0vR2h0S2V2aG1NTGl6dTUxOGlH?=
 =?utf-8?B?bXY3RGtQSXNBUnplaUF1bkZhU3ZITmo0UmJ4QWFEakFuMGw3N3A1THVvUzMz?=
 =?utf-8?B?ZGo1Y2tWWElzdmNHZmM2Qk1IRGVaanhyVnhuQzByOFVLdEUzcENTaGZ3WmJu?=
 =?utf-8?B?MHhsZ0ZjM2lLQlVQVmVuTjJSRjdSWHkrWGk1RUxpcTBVL0Y0elN0a1JaMmpm?=
 =?utf-8?B?Z2dIcHQ0T2RkOWVKUy91TDZPaVpkN01kbHZ0ZWtLR2ptUThFNVVPQlh5YU5s?=
 =?utf-8?B?VnNMTmlqcENSNlFVUk1MZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aS9ZczdVMDQ5YTJVMUVRTzNLclJqVWR6TVhkTFFySThoUW1iRWZxd2pDL0hD?=
 =?utf-8?B?VUg1aDZFMTA4Qkk1VitJOVp1aWNKSVlpNlBFMko0ZGpnOVQ1dmtEdURiakI2?=
 =?utf-8?B?b05yS2s1Y3JBZ3JJWlZvS1cvcUJKNlFYeUd4MXYrUUdoZWlNOTlRUmU0NVN2?=
 =?utf-8?B?bEFYYU92M1N2c0M3OGQzNkV2bzVNaGF2TkNhWVVSZCs1RWRqdllaTlJvOWN2?=
 =?utf-8?B?OWJwaTNxNExWRnVYVTlpZDFBLzcyZkpQR0JmMjdySDVKemVvL0VkWlYyRURM?=
 =?utf-8?B?b1ZTVFh3c0JlSURVbjRyTy9Xcm90SnRPZUdEN3RybWFuYlQ0R3l0Z3pLd2lp?=
 =?utf-8?B?RmRmOWlYMVEzVlBFOCtwOFZidzFCdlJKK0hFMG5YWFd2TWVJV0gxekIxYkl2?=
 =?utf-8?B?MlZnRnp5M3NmNW5LTGRNcThCbVNiZG95R3FpQ1BZRDliWmVoQWhUSVdlRmlP?=
 =?utf-8?B?dGtucnRxa2tnSW93VG9LdmZ6czd4cmU1VjN0SHRjSjR6TjZCQVErSkIzOGpG?=
 =?utf-8?B?R255c25VZ292d0pVbXV0U3kxeE4xOXBDaVlpMEZLT0lHeHBHbWFNaFdaT2lQ?=
 =?utf-8?B?OERrQk42aUlsQVgwT1JRNlBXQUFscWVid0FQY2Yyd2tLdXR1bVlNNnRpeEdQ?=
 =?utf-8?B?YlVxNmNEeUxjRFFreDh6N1JEOHNNczFTMERlNVRFaFhHZzlrVmU0cDNZREw3?=
 =?utf-8?B?WFZuUmxub0ZMd0RYOWsrRVZPUTNONkNyVXNxL3NCRVlxK1NGYzd2QmEzWmJz?=
 =?utf-8?B?QVc1emlBaXpjSDZta0ExSm1qaFBSZE5UZ2RvV2h3bXlPMFYxdFQrNFN0YUw4?=
 =?utf-8?B?TlB3MVNOcXQyeHo2WFc2K3hxdWF3c2xLWmd3YXRTcExTOHVNaWxjQW9qdG13?=
 =?utf-8?B?WC84Vy9hRnd5Z0E3L1oydnYzRlRkazEwMEw1dFBtb1VTb1Nha2dKZmgycUJ3?=
 =?utf-8?B?L3Q2a2p1T0t1dCtGcVdDc1FRRWNGMS9RTnFlRHBzaGJnekMvVDRuZjUrd0hv?=
 =?utf-8?B?RjdXZk9MT2h2emVLN3VYUFowcmJUbHVwRlpDdklzd2dFWU42cVU3WURJTGtI?=
 =?utf-8?B?VzlqNFJYczV2dnNhRGpVUEtKbFQ1NEZUdW1jd1orYU9aQXAwbmJBRFdFMUJy?=
 =?utf-8?B?MnFFM2NLQXB1YklndGpRem1HbkdQZmV0NElJdHVtTjZPaklMbnk5Tndibisz?=
 =?utf-8?B?Qit1WXF5V1ZZMEMzbmlDTDc3d0xkZVZiYm1kWGYyQnh5Mk1hSkJ6aTN0Q1Zr?=
 =?utf-8?B?UW9FN0JpbEFkLzNqeStPSHJaUUtKQnl5OW4vci96L3ZTT1VkOG13VEhEaDQ4?=
 =?utf-8?B?QndXOC9SY2V1MnJISm1IS3ZwNEdzWlYwZmZOS0RJQnY5VEx2YStjVWYzTW9k?=
 =?utf-8?B?dlJBZVZkNjBrS0RvTzlRR3JPanpJZG1JTGxBbyt1TURSOHViTkF0YmdJenZY?=
 =?utf-8?B?TzNqTVdxeWwvUUV1RFQ2aSt1d0J5QURUcnFlcWVFOGEwTDJLVmphMXo2NHp2?=
 =?utf-8?B?K2lvQWg4L3hKYzVtV0VtN2ZBREd5WDI0MFJiL21OSDBRdVMwYUZZdXlRclJK?=
 =?utf-8?B?YnkrSHN1cVU1TlhVek5JRFdMS20rWFh2WkZ0d3k5WGxNd0psZjlFRFIrYTlF?=
 =?utf-8?B?RXJ2ZDNWekhXWWozdDUzTVlwcDYwZzRJV1k3aFF2R3U2VVlWT0IwbHdYNjl6?=
 =?utf-8?B?WXg1ckxKV0hVSnNXdWZPeEtESjBIdXdXd0tIZXJ0MWY0NDA1T09yNGxmMTMz?=
 =?utf-8?B?cE5RVUlCQVp1Vy8vZlVvZm9sMW9LUlJCSWJUZjRyRmJMQXJoT0psMDhZdWtN?=
 =?utf-8?B?OXdGQ0xpd29GS3ZNbDJIb2pkd3JSc0tETzJxNXpsRXo0d211SkIvbVR1Sm9r?=
 =?utf-8?B?cWRkVTRtSXBjS3IvZEV0aXplV2RVUi9zMVFjWUx4aUcwK0NSaHZlaDR1SjQv?=
 =?utf-8?B?b0FMdGNNSFhFSGtUc1pHR05oS3pYdU0rd2UrMjk3Y3NaYmFac3QzWC9NdXJ4?=
 =?utf-8?B?azBMU0h6cFMyRDNOck5tWXNDUU9DVjB5M29ueUdaenpkQ3NYRGJ4YWh6Y3FI?=
 =?utf-8?B?aHlYekczdkc1YzR2MlFRU0hxdndtMEZ2Nk15Wk5WZnp3QStiVkhwblR0L1M0?=
 =?utf-8?B?YkF4UTcvSjQvSTRlazhQWUtOTXo3M2gxMVN4VHFpeStwNzBTVjhqQVJpcmwr?=
 =?utf-8?B?ZFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3984c05e-92ea-4a97-e65c-08dd54085e26
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2025 12:48:27.5684 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EAhNSbAmSyLpXad4SXuGz+zYi8kq6vQtspMH+71RvRl77xzHy2HV6rSTsc0rrp/z40W+lVESmyxjC8EYeIlYB4mmFiGqpPgEWMPyXyV5xqM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4866
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740314917; x=1771850917;
 h=subject:to:cc:references:from:message-id:date:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Il1Ei3mQdrtHD/qxCKm4ygXjU2p9PXAEf+jbaIPqiz0=;
 b=E1u1B9zt/vt87/h0WAGEslyr/BdF2mSz4wHMlXzZD1M/ib15isW8xn+u
 9kiKy24XlDnex2Zd0hS264duXoR7zl4d26ffRLxFfD7J/+IEFgfzR6Kpb
 YdMyGFjYGk9uEmMKKPpk5ibqxvRYl/j+mv3hqmbQUzQV83rrIIDDK33sv
 Leyd5l3wqHgzGzUH98CSH1mI0DBJhMqhfXRvYwAlZ/0FXcMrbXMzoxTCz
 u4Q5mjzDprW9giw9pF3eLq9w6JhjiO9p0MPsRpDCCx6IQqDVAFrWolv4b
 DFaOIuA6cwiO2gOj1YWm4XVwLaDI6NN3r2uFK/CTlAgA3eyW5iBytLS9J
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=E1u1B9zt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] e1000e: How to set parameters using sysfs?
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



On 2/18/2025 5:59 PM, Paul Menzel wrote:
> Dear Linux folks,
> 
> 
> The driver e1000e has several parameters [1]:
> 
>      $ modinfo e1000e
>      filename: 
> /lib/modules/6.6.35.mx64.477/kernel/drivers/net/ethernet/intel/e1000e/e1000e.ko 
> 
>      […]
>      alias:          pci:v00008086d0000105Esv*sd*bc*sc*i*
>      depends:
>      retpoline:      Y
>      intree:         Y
>      name:           e1000e
>      vermagic:       6.6.35.mx64.477 SMP preempt mod_unload modversions
>      parm:           debug:Debug level (0=none,...,16=all) (int)
>      parm:           copybreak:Maximum size of packet that is copied to 
> a new buffer on receive (uint)
>      parm:           TxIntDelay:Transmit Interrupt Delay (array of int)
>      parm:           TxAbsIntDelay:Transmit Absolute Interrupt Delay 
> (array of int)
>      parm:           RxIntDelay:Receive Interrupt Delay (array of int)
>      parm:           RxAbsIntDelay:Receive Absolute Interrupt Delay 
> (array of int)
>      parm:           InterruptThrottleRate:Interrupt Throttling Rate 
> (array of int)
>      parm:           IntMode:Interrupt Mode (array of int)
>      parm:           SmartPowerDownEnable:Enable PHY smart power down 
> (array of int)
>      parm:           KumeranLockLoss:Enable Kumeran lock loss workaround 
> (array of int)
>      parm:           WriteProtectNVM:Write-protect NVM [WARNING: 
> disabling this can lead to corrupted NVM] (array of int)
>      parm:           CrcStripping:Enable CRC Stripping, disable if your 
> BMC needs the CRC (array of int)
> 
> Unfortunately, only `copybreak` seems to be exposed via sysfs:
> 
>      $ ls /sys/module/e1000e/parameters/
>      copybreak
> 
> Adding `e1000e.debug=16` to the Linux command line in GRUB also does not 
> seem to help – at least no additional messages are logged by Linux.
> 
> The StackExchange thread *Debugging why NIC link comes up/down 
> constantly* [2] makes the same observations. Regarding the reason, 
> LinuxQuestions.org has the answer [3], that the permissions are set to 
> 0, so the parameters are not exposed:
> 
>  From `drivers/net/ethernet/intel/e1000e/param.c`:
> 
> ```
> /* All parameters are treated the same, as an integer array of values.
>   * This macro just reduces the need to repeat the same declaration code
>   * over and over (plus this helps to avoid typo bugs).
>   */
> #define E1000_PARAM_INIT { [0 ... E1000_MAX_NIC] = OPTION_UNSET }
> #define E1000_PARAM(X, desc)                                    \
>          static int X[E1000_MAX_NIC+1] = E1000_PARAM_INIT;       \
>          static unsigned int num_##X;                            \
>          module_param_array_named(X, X, int, &num_##X, 0);       \
>          MODULE_PARM_DESC(X, desc);
> […]
> 
> and from `drivers/net/ethernet/intel/e1000e/netdev.c`:
> 
>      static int debug = -1;
>      module_param(debug, int, 0);
>      MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all)");
> 
> Could you please share the reason, why these are hidden from sysfs, not 
> allowing them to be changed at runtime?
> 
> 
> Kind regards,
> 
> Paul
> 
> 
> [1]: 
> https://www.kernel.org/doc/html/latest/networking/device_drivers/ethernet/intel/e1000.html#command-line-parameters 
> 
> [2]: 
> https://unix.stackexchange.com/questions/662578/debugging-why-nic-link-comes-up-down-constantly 
> 
> [3]: https://www.linuxquestions.org/questions/showthread.php?p=6305802


Hi Paul,

This part of the code was submitted in 2012 b3f4d5990bfc8 ("intel: make 
wired ethernet driver message level consistent (rev2)"), we don't know 
why the perm parameter was set to 0.

Anyway, in runtime the message level can be changed by ethtool -s msglvl 
command.
