Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F0DFBB87346
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Sep 2025 00:10:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 85D638175D;
	Thu, 18 Sep 2025 22:10:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iKk4b8by6QN3; Thu, 18 Sep 2025 22:10:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EBCC981B48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758233445;
	bh=fF8wWGOMek9b+AbMwtlZJRx6vuweXcezTzXgiQpDET8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=I/ZQqb4OFd9r18xqiGRvN3XJk9Dh66IpVk1S4sg02Qhi6bmX95HGPrb9ENJm+wWeM
	 t0SdL+i3xuLMCc79GwShV3OtndqV7OCRfNcT8jgKOVQDeZWi9ld76fE77/vf8nXBkn
	 sTM2Bvb0xf2pePmg+Dx0ZCn6a4ww1VuWnJyswNF4fmgtrJq/7a2ZMdePlOSD5qZEFs
	 u0YZBOrtjd0LyAJbIQNRLq2dzWQRIOtm46c4TEXMqT+vYay8rUUeDKacOq18uzozMH
	 C9ZpbAuj/kAspafTO0ptEPHkQVu/AgJCgIAkIV4Hphx7F8ou485cp5cbPeOKamkjJQ
	 OAGjqPx4KnHDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBCC981B48;
	Thu, 18 Sep 2025 22:10:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2FC99E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 22:10:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1537F40A8B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 22:10:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VqCo1R8z3ZtL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Sep 2025 22:10:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0F367402D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F367402D7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0F367402D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 22:10:41 +0000 (UTC)
X-CSE-ConnectionGUID: 63SVp79pQc+WuwXKDlXl9A==
X-CSE-MsgGUID: ty9hg33+Sm6fA4ybLiF5uA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60635143"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; 
 d="asc'?scan'208";a="60635143"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 15:10:41 -0700
X-CSE-ConnectionGUID: vriTkIiVQ/OXySQy0wwytQ==
X-CSE-MsgGUID: AoRIPXm1SoyyeSoXE+uGYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,276,1751266800"; 
 d="asc'?scan'208";a="212820297"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 15:10:41 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 15:10:40 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 18 Sep 2025 15:10:40 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.5) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 15:10:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZVT0/SWdxMD8zGhUESs+trHgKNiDDrDArI6IC2V8LIgSnFxkLg2DbedbdYkkyb3hnpwO70r+UWaY3RVwX4FJXpHueaaRohkGUXegi1h5wzGZ93rFs6tR1B7SIHP7R/JTF8gFBZiH30kL18V6DFZ7zfq3jV8/M83URze5iSFQian6wQogvoYWjuzTaWIRINuEESXyjz9uDNoj+6xe/zCuqdflrQeNPjuHX8VytyqzCtqbo1R+L6yAN4Xbn12stkyscQyqeZrtfD1vz2aJejccvYyXbqEx6IlUCKnNvztm6rl1/bz+feygXFEv1pSzEFvImc/TklnJu/RbH+YlIXgf0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fF8wWGOMek9b+AbMwtlZJRx6vuweXcezTzXgiQpDET8=;
 b=UvU652OFeM9RfRwdC4i1Z0IGqFfa6rox5ZQaPCeMlCKRh/cY63u0ZrRVTNq7C1MppyQXXrkweEPJ/s8JEhGmM5XVuEyBFISXytlskfKiEwvuu/iCxfeeHUQXgduQYyFqtczIDyegxG0TovHhGALH1+Cp+aH9cbQGqLyBDcSrxJJ+7m1tFLGFzdXE6AWYZPHh6FvtjbY1KJjrBMD7U+uABO1NFdof+qbNrPtmydsZCxnfm0/mW1lIKl43cnxAhFY7ujjUm9KU1cdttrSrd0K4R8/YpGRI6p1zBm3FEqnlu3sChleHGdOpUtzdnOrTkZHTvb77FDcxdDyxzmoBSwTI5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW4PR11MB8292.namprd11.prod.outlook.com (2603:10b6:303:20c::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.22; Thu, 18 Sep
 2025 22:10:38 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.9137.012; Thu, 18 Sep 2025
 22:10:38 +0000
Message-ID: <d30d7a43-ca17-445e-b7ae-641be2fcc165@intel.com>
Date: Thu, 18 Sep 2025 15:10:33 -0700
User-Agent: Mozilla Thunderbird
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>, Chwee-Lin Choong
 <chwee.lin.choong@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>, "Vinicius
 Costa Gomes" <vinicius.gomes@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Avi Shalev <avi.shalev@intel.com>, "Song
 Yoong Siang" <yoong.siang.song@intel.com>
References: <20250918183811.31270-1-chwee.lin.choong@intel.com>
 <0fc877a5-4b35-4802-9cda-e4eca561c5d1@linux.dev>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <0fc877a5-4b35-4802-9cda-e4eca561c5d1@linux.dev>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------WItSTxHYuETg844T6vGRedFX"
X-ClientProxiedBy: SJ0PR13CA0180.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::35) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW4PR11MB8292:EE_
X-MS-Office365-Filtering-Correlation-Id: c1ddc160-fc9d-4ca0-227f-08ddf700317e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S3F4NmtFYjVneFJWWFA0bWdaT2EyaWJkYWkyWWhvZFY2ODBrL2U1TnRLWUZa?=
 =?utf-8?B?S2JpSXVGcllqa1hSZ083TE4rZXJwdGp0MGk5aDl0UC9sNTZiSHFlZTJTQzJC?=
 =?utf-8?B?UGhXQWFObHRaTEVYdmIzM0o5OHdWeXpxVVU4TXBaelloaDJhMHJiOXEvZnZO?=
 =?utf-8?B?UFA1U2pCNzVCY0ExRGZQcVdmeU5MV215R2QxeENjNzBZU1dvQTNvRlJXc2pB?=
 =?utf-8?B?ekRDY0dramxWRktpT2Z5TzdNWldkaUEwNVVHdldpR215SzA3cmFDaTBPVHRD?=
 =?utf-8?B?dzVvWVBSTmNtNXhnWDNjMkRhOWhzckFINC9CMEIzSW5ibEM1Snc2ZUFueVE2?=
 =?utf-8?B?UURxbnZRYzJacGVMaVJscWNyYVRBQ3IzZnlFdFdaU09mSFFKTGpNMk1qbjVG?=
 =?utf-8?B?V2VUOUhqWDZjbWlTaHk4Z1A1STYvcWVmY2tkZm44dktVUUowYkhoOEJTZitL?=
 =?utf-8?B?ZC9wWGZVUHJFS3JSQ3BKT2IzQjA5YWhodjVlVmh1ZTNSdEVBUUliQzJJNFF2?=
 =?utf-8?B?cUZaa1NPeVNDeUszVy9xNGZmMm54SWZMKy9DNWJRUzIxSGJNa0cvZUxmRG1N?=
 =?utf-8?B?ajgzc0libmNlTUFCWEswVnZNeWU1VVRMelFoSjFDNEtPaytHcExyY0piRDc5?=
 =?utf-8?B?a1IxRnZzdzlBbVlYMEhUQ2luam5yNlhkM01XbE9tdVZTOEZ1ZnQ4ZFZpejlL?=
 =?utf-8?B?VFUrUDF2b3NJRUUvVzNSYUhhQmVlL2hDSnRjcU5WM25vU3BrbzFTa0ZpMDBn?=
 =?utf-8?B?ZXhiNFlyVWVscW5RbVRvYXQzZ3l4RE5rOGhTcXk5c014bnkySHlGZXZtakFV?=
 =?utf-8?B?MXdCTVpZV0xnYjZqTDNrdGxST0tmSnBKWDlWVUlJY1BmYm8rdCtlWVR5c0dC?=
 =?utf-8?B?b1NEZ01HanY3eGNVd0oyZkFOSnR1bEtmTnAxZXBUeDJ0bE5Zbmd6SUZFZFJt?=
 =?utf-8?B?azExYmx2WmFIU0E0c3pVcXZjVnhiOVB6MHp5NGJoWWNzWnFDQkZ3eDhHTytu?=
 =?utf-8?B?YWlNNW9MOWlweDRBTXRieUJmQ3QrL3lNWXZjWE4vREtRUm94Tm92emJTam9B?=
 =?utf-8?B?NDlCRmg4UnJZalJ6TDhkRTVWQ1RzWGVxKzI5a3VZdXpHRS9tSW5NLzRiTHRy?=
 =?utf-8?B?WngwZ3FJZFhjV1I4cDdCZU5JeDZvRlBTZmRxYXlWOWRDczRlNG83SVIvTmhp?=
 =?utf-8?B?aDZOK3pFa3FLaWxaUmdDdnF3K0R6cGVkSGZ5REJuV29WT1NtR0p5dkV6QXp6?=
 =?utf-8?B?eG8vb2dhVHQ0RlFYQlFJUGdlYUhQM1FHMEFNbXlDMlRvOTFZQ01CQUNJc3Jn?=
 =?utf-8?B?ay9NNnhmQVR2QjdydUZwTTJrTHlDWUZrdTRPbm5aYVFKWWUvWkk5N2VVbmNz?=
 =?utf-8?B?ZGxLeEpHRm9ZM0M1MUFTZTJPVUNBbm5ta1RGbXMxcXhOTFQwbU0xRUVEMTEx?=
 =?utf-8?B?cnJnelg5SHhPR3BvU29QWU51dGpkQVRNd2NTdFBlU1l4V2ROdlQxbzk0aEJo?=
 =?utf-8?B?S25YZ3k2cExvS0g4UU5SbTV3Ulc1WWt6SUdaY09ENjhkREE2Wm1vVy9xNDJ2?=
 =?utf-8?B?RUtzcUg4TnZZWFpHL0FRTVN3dEJJTTQ1OWQ2bjdmYUhzS1RvT0lmTDhROTZH?=
 =?utf-8?B?amprU3JDc0JvM2kwZDl6c1hwRTFBeVBjMzc0b1B6T0pSZlVyUHA4UVg5N2p5?=
 =?utf-8?B?UTJCWXJBRXRickVhMjlzbFlZN1BPMzE3SmxrZGFITjRaTkxVVHVaRHBNZ3Iy?=
 =?utf-8?B?dnNmMTBXU2ZMcTNTVEhuRW5rVXlORUpVdWJzdGRrU0tZUXpnUVVkNzBYRkZ3?=
 =?utf-8?B?UElLSWxaUm02VkJDMTRNcXFxSG9zZ0VUSmpYeWNwV21GVit2UktrdDlkNU41?=
 =?utf-8?B?bDVnR0tXS3NLNDJ2RE1tQVFtVmNZdXZWMUtIZHZCSWg3V25JYXVCQWpiTkxX?=
 =?utf-8?B?anVZKzdUZWJFdUx3Tk5FZFZwMlpxcytCcXRPM0t3dWM5bkVoZ3hZamNtV080?=
 =?utf-8?B?ZWNUd0hpekF3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UXRFOXhEclJmRkdqbFNyNEVnK2ZLRFJXeVR2SU5mYTluSlp4cklXNWUxVUh6?=
 =?utf-8?B?WmFMTUxaWUlKMW9kNnlUSkxYOXdjdzJwZmxEN081ckJlbUlKWW9rZGdTMjFi?=
 =?utf-8?B?b1REQXFCeEF6VzIrK3F0dk93SFkzUnFiUEJaWkxGZWZ2SVgzbi9yR0dJQXE1?=
 =?utf-8?B?L1dPUUlMNG5DeERZU0VFdkdISTVqTVFPTUlLRTJVNi9LSHdCVllBVTJYa1RF?=
 =?utf-8?B?SkNBdndVcVUvWkRURG9qdVI0SXV1UFgwcVZVOE9CMGVZdWZHblQxN1B4cXRL?=
 =?utf-8?B?Q1VBNC9TMEV3TXdocEdWNUxValFabFZ5M201SHQrdXJNbnJMVlEzZ2lFV0xq?=
 =?utf-8?B?MVBqVEIvakprdWxDV3dja2JwSFBCcWhaNmFPcldzbWg2K1RDWmZ0TmVzWnM2?=
 =?utf-8?B?SlJvT1ZQdm5KZzcyeTVJbjhwdVF2Y1lvUE96OVozRlNRTklQdVArNDV6WFNN?=
 =?utf-8?B?MmFuQ1ZwV1BFV0owVTFiMjd1elJ4QzVmRG9PdUR1ME9pQ1lkWmt5enYyQVl3?=
 =?utf-8?B?S1dRN2Z4WllHMjlBd2t1dnFnSHBNQ3hKVDdWUEEyVTNWeU9tYUNsekVGelRB?=
 =?utf-8?B?d3Rad2VlVG92YjhCYnVaU1pCRUtPUzVXTTdDMDQ4WWFtUldWaHZBTFhGYzhP?=
 =?utf-8?B?UWI2dGxmTmg2Y3VqNUwrZ0VkVTJPQ3lkK3dvMnBQa3RpelFXbkw1U2lFOWZM?=
 =?utf-8?B?UEhRaEtBQ0RBd1NiZjgrVGlKaTJ2SFdxaXR1YzdtMkZPNEJVbFh4ZTBxVUE4?=
 =?utf-8?B?dUlzdzNNNXNOc3FrYUt5ZWRJYVhBTUVZcHhsQlc0aE1SMytmZjVEa1htQ2Vj?=
 =?utf-8?B?ZDZySUVxOFBPckZvY1kyS24wR202bXlQcmRzYzZGcGUxYXBiRmlrRGR1eXRN?=
 =?utf-8?B?eE5TVUZDbHVzMGFPdll3QXhmblpiNzcwQ2MwelBwMG4vOEp4bTNWSGtLQ2wx?=
 =?utf-8?B?c0hObldodXVBdXc2eUJOaEJ1b1FNMzhqV01RSnNxRWlSTmhzUHdiZVBmZFNp?=
 =?utf-8?B?T1M5Qi95RDgrbHRQTHRwV0VFUGlEWFBVaXpmc3l0VDdyK1pVbnE1UGFNK01U?=
 =?utf-8?B?aS8xbjYreDlLejVuaHJpeE95dmU2MEwyTllkK0lXZlpsTVFzam1GWXdxb0ZO?=
 =?utf-8?B?b0tDVStWdUFJRnk2NDlYajliWUN1R3ExYzgvd3BLOFlEcFQ5UUJxNVRJdGFm?=
 =?utf-8?B?S01tcnNIRk1HSE83YXlyRXVpTWlDVW9uRHc1TWZOU1FhNXZ2TGNmZGhPVEZP?=
 =?utf-8?B?ckFoSGNEQzkvemhDYUVDOFBrRkNrUlpOVHlDck82SkZabzZkd1J2eHM5VlMr?=
 =?utf-8?B?Y21UNWIwQ2NDMW01cG1qWncyeHJEOWNKOE9teGJFeWYxd2JKNXF6MURmT1Ny?=
 =?utf-8?B?STJjYUxNMWpvOGxPbU5PTmlHSXVJNlNqem43SVU2U0VKejFsTFo2SXRvNmpm?=
 =?utf-8?B?NktDY1NMM0pnUjZvRHFXaDBRUDVyeHE0MmRHMldZVXZNOTlmSmxBeFJ1Si9h?=
 =?utf-8?B?RGhYcDF5Yzc3ZCticTVPUGNqTzFwOE01RXNnNnBiQzdocHo2VjBXNWtQMmND?=
 =?utf-8?B?UisvMHZCeU9ucExiRjdFRjJYKzEvdGZpbThWaTY3Q0oza2ZoZjA5UGUrL3lK?=
 =?utf-8?B?ZGprT2o1NUUyN0RSb1NLT2p2M0ptMW16MVFORi9yK2VGcWtVOXlsZFZsU2t6?=
 =?utf-8?B?MzdhQU9sK2ppRmVuYVlaa2NXNFFCdkJLbk9heDJ5VEs3c1l1Y0JWakxBTUNX?=
 =?utf-8?B?YjJtbGI0Nm9KcW1UYms5dlNkand5b2xiTmIwREpSRzBaajIzS1NqT1R3NW1o?=
 =?utf-8?B?NU9oM25wNFdmOTRkaC9ZSk5wSW1IdWFvRXZnOVNuMGhYYlhvWTdVd3BTMHl3?=
 =?utf-8?B?eFN1SENVcWJWQUJvVjVVTlJWSzR2RENESm53SHUrZDV0aTdxVjA2VCtOcGFS?=
 =?utf-8?B?RjdscXFYVGh2cVNtZk9DOUtaUUpNR2gzQXNEdUdTQUxhVUxKV3IzTnhhajBN?=
 =?utf-8?B?RGNuRVBmSDJEQ0FDL09FeHdqMUNHd25PUzFFd3hXNVE0MC9saUNCRVA0QXhD?=
 =?utf-8?B?TFVNeVEzUm4vVXlrVzliT2dNVjF4ZGg1NFlkNmdUTk5ueGxpY09DazYrQlp4?=
 =?utf-8?B?dmFuVUVzL3Axemtia0xFZC9QNWh0MG9WbVJKWEZUOWQ2UnRRcGFzNEI0cldG?=
 =?utf-8?B?akE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c1ddc160-fc9d-4ca0-227f-08ddf700317e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2025 22:10:38.2281 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bik0kIqx+uQOIWZYP7FprFn2FreVXFu8uDr/Cs96YqLPLgRmTIvdnJGnmy/VwN0CYj0ZeOitXNUpUwkvL0NXqIpCIMwbmIASnhT3FwgYH+E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8292
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758233442; x=1789769442;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=ONGIVNBR4dPfwF8zNK/A9c3nJYKcn+LgPnqD+SXtP1g=;
 b=JePGPzF8qxWGD9LnK9cfvcBKIJaXfCVXB/iqqcy8TJGDr1DpvG5afbUp
 COqEbYhJwBuvnK2G9/Ky9nTyeMVVXJILy5UEoSzf+NeUva4lnDbQ5lTC8
 9eACzTTZ5MAd2mgNbKnc3vI0qenKFmeaxB08/AN965h+kHa7PoQyL5dft
 nClkByZTtPUADLSN5f6ye/MQYrb+Y/3Cb4hQ+eetsyyHQ0cW8oB8AdRfG
 jQVRhrWB+MbBRxFfGMqp1smLbgpWEIkGcFx8XCxlcdl1aT5mSv/IJAvX2
 JngZO53Kg+T6w5n813eCUlwhn6lTQKYXfJaBt5C566+HGI9ePVtANgArN
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JePGPzF8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: fix race condition in
 TX timestamp read for register 0
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

--------------WItSTxHYuETg844T6vGRedFX
Content-Type: multipart/mixed; boundary="------------MDKVYXwNmKKdKiCl5nwrwzb4";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Avi Shalev <avi.shalev@intel.com>,
 Song Yoong Siang <yoong.siang.song@intel.com>
Message-ID: <d30d7a43-ca17-445e-b7ae-641be2fcc165@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: fix race condition in
 TX timestamp read for register 0
References: <20250918183811.31270-1-chwee.lin.choong@intel.com>
 <0fc877a5-4b35-4802-9cda-e4eca561c5d1@linux.dev>
In-Reply-To: <0fc877a5-4b35-4802-9cda-e4eca561c5d1@linux.dev>

--------------MDKVYXwNmKKdKiCl5nwrwzb4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 9/18/2025 1:47 PM, Vadim Fedorenko wrote:
> On 18/09/2025 19:38, Chwee-Lin Choong wrote:
>> The current HW bug workaround checks the TXTT_0 ready bit first,
>> then reads LOW -> HIGH -> LOW from register 0 to detect if a
>> timestamp was captured.
>>
>> This sequence has a race: if a new timestamp is latched after
>> reading the TXTT mask but before the first LOW read, both old
>> and new timestamp match, causing the driver to drop a valid
>> timestamp.
>>
>> Fix by reading the LOW register first, then the TXTT mask,
>> so a newly latched timestamp will always be detected.
>>
>> This fix also prevents TX unit hangs observed under heavy
>> timestamping load.
>>
>> Fixes: c789ad7cbebc ("igc: Work around HW bug causing missing timestam=
ps")
>> Suggested-by: Avi Shalev <avi.shalev@intel.com>
>> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
>> Signed-off-by: Chwee-Lin Choong <chwee.lin.choong@intel.com>
>> ---
>>   drivers/net/ethernet/intel/igc/igc_ptp.c | 10 ++++++++--
>>   1 file changed, 8 insertions(+), 2 deletions(-)
>>
>=20
> [...]
>=20
>>   		 * timestamp was captured, we can read the "high"
>>   		 * register again.
>>   		 */
>=20
> This comment begins with 'read the "high" register (to latch a new=20
> timestamp)' ...
>=20
>> -		u32 txstmpl_old, txstmpl_new;
>> +		u32 txstmpl_new;
>>  =20
>> -		txstmpl_old =3D rd32(IGC_TXSTMPL);
>>   		rd32(IGC_TXSTMPH);
>>   		txstmpl_new =3D rd32(IGC_TXSTMPL);
>=20
> and a couple of lines later in this function you have
>=20
> 		regval =3D txstmpl_new;
> 		regval |=3D (u64)rd32(IGC_TXSTMPH) << 32;
>=20
> According to the comment above, the value in the register will be
> latched after reading IGC_TXSTMPH. As there will be no read of "low"
> part of the register, it will stay latched with old value until the
> next call to the same function. Could it be the reason of unit hangs?
>=20
> It looks like the value of previous read of IGC_TXSTMPH should be store=
d
> and used to construct new timestamp, right?
>=20

I wouldn't trust the comment, but instead double check the data sheets.
Unfortunately, I don't seem to have a copy of the igc hardware data
sheet handy :(

Thanks,
Jake


--------------MDKVYXwNmKKdKiCl5nwrwzb4--

--------------WItSTxHYuETg844T6vGRedFX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaMyDWgUDAAAAAAAKCRBqll0+bw8o6LCR
AQCGQIaf4m7h+Adrf3NDLSAQGnaf/mobq8nTBqWbV1e86QEAsDV3/P2brqdSs7sUKFJ7/y6CpzzR
y/+5K0DZBt6sFws=
=LX3Q
-----END PGP SIGNATURE-----

--------------WItSTxHYuETg844T6vGRedFX--
