Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 181598C8E70
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 May 2024 01:18:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 813E341507;
	Fri, 17 May 2024 23:18:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PZR3EgFTaz21; Fri, 17 May 2024 23:18:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A54A54149C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715987888;
	bh=mOjouUc+J1SRl59PrXA1HhsWzjpP5QOPdR2KHcgVuaE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mHOeB+9Ek80e+God9QgrU6oHqFTb8tLKLYznwY9/9ESlcgRF9R077IOEKSyT9MoMt
	 LzZ6JK5KDQkhcFb43VRQynOwH+3GGUuyhRWZjAqHt/eYEv/TeyVt5nwmMfBvFpOwT+
	 Mesyi94d0bcD8C2lZ2ugUm8dV2ZSuZH4pJ9B4eiOwD9cEx4KHzScif08a+ZZEbmDIC
	 UONMh1yIxfvyDoo183me5z2KFkHUUpveOQOxs0sDEfLEmg9e4bCae+ixtQgtqNTZjs
	 J5olHReBR0Mcbk0qDmEcF9JbOEbNbuFwjLOJnyOSqaeOU8iQCB4Bokwbl5i53er6ZL
	 J4X2Tt7y9WA/A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A54A54149C;
	Fri, 17 May 2024 23:18:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C14341BF34B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 23:18:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AD53B607B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 23:18:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aK-0nGimen-9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2024 23:18:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 04C48607B4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04C48607B4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 04C48607B4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 23:18:05 +0000 (UTC)
X-CSE-ConnectionGUID: tfN9aQBFTqO9vLwikrjI8A==
X-CSE-MsgGUID: A8LCYzfPR0CRC8Z1ZytUtA==
X-IronPort-AV: E=McAfee;i="6600,9927,11075"; a="12362651"
X-IronPort-AV: E=Sophos;i="6.08,169,1712646000"; d="scan'208";a="12362651"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 16:18:06 -0700
X-CSE-ConnectionGUID: xsnnM+OTQj2wvsvsDRH5tA==
X-CSE-MsgGUID: NkzifrQyTOObMh/2hDniTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,169,1712646000"; d="scan'208";a="32054041"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 May 2024 16:18:05 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 17 May 2024 16:18:05 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 17 May 2024 16:18:04 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 17 May 2024 16:18:04 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 17 May 2024 16:18:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XqeawHGZLBZTRWGRfeyu7NSswslAFIdhl6vzvFcpEtXr6NFkAzjfxtgyupBpF1zNi0FSzE3ziwgI9tX1nhEH40UwRbvUxtBQdv3hfPGTLee168qCfYx2yT1je5Ie9bqg77a1vFAzacmDZMzAlOyk41gZkSRBMsqm78MzeUKuYhiKX8iIwwNBLeJkcCU89bTbO5pPoY6coqz8cnb9nlxNQ/ECbakCFwIsj1J78DaisAHcRf9nyjlNLzpujG+CzsrlIMaZa2y6yRfxkHxUgNaF9xxhcFFWD6rCMb31Bb+m8RdWA+UyujwZyVBidoZQRpadwj2T4sV62eEhNdkCnIHUIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mOjouUc+J1SRl59PrXA1HhsWzjpP5QOPdR2KHcgVuaE=;
 b=NQHTfBu6j0zpShckqqAnWYiSbBmuAbtlBi/A79q5JF8taScUO7vX4HRUMyoxl4h5xjtGL+Avml1WPpdW9evn9GAugrQcCsg9xXRX7xoIOYklh0lAW44yFt+QPmfHoeX9zjERyd0ymLZ0TLuUqmyWnn3ek0xdvCzXVWA9A8+1QgyzEffcgpV2bqKbKLSOYq/qbMqUj2vnz9uxLSDZYobbH/6/E5FgGa+SgjZYIF4EWqtnBUhnSwi8ErUSssjZ0Na01R0xpDiztYECDyJ57hdX1/DPWkbqtAASa5Oaj9gC2mw5y2IzmCAWKD++mrCaV/ZnyVX8049E69Rf4CslFeitHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW4PR11MB6788.namprd11.prod.outlook.com (2603:10b6:303:208::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.30; Fri, 17 May
 2024 23:18:02 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7587.028; Fri, 17 May 2024
 23:18:02 +0000
Message-ID: <becb8632-4d4c-447d-ac6c-0d502227a4af@intel.com>
Date: Fri, 17 May 2024 16:18:00 -0700
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
References: <20240517-iwl-net-2024-05-16-fix-nvm-tlv-issue-v2-1-fdee184ece86@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240517-iwl-net-2024-05-16-fix-nvm-tlv-issue-v2-1-fdee184ece86@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0133.namprd03.prod.outlook.com
 (2603:10b6:303:8c::18) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW4PR11MB6788:EE_
X-MS-Office365-Filtering-Correlation-Id: a3b4db31-1586-47cc-c33a-08dc76c7993e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MGNGSlNzZDZHQ3BKNTdkZHg0ZnRkaUZsY0h2dDFra2ZkRWpCSjEvM2V1dFNn?=
 =?utf-8?B?V0NoRlVQZi9DemJUbW5LSUZTYk8vcjYvRjF2N2hydVNDT3VuSlRaclNyalVn?=
 =?utf-8?B?dVdJVktCdnZ1cEhTbjMwTFd1WjFYTGVNUU1wdC9GbzM1aGNwdC9VNURpTW1h?=
 =?utf-8?B?bXRlT0daVEVGVERPRTlMcUhXMnk3TDJtSndXZDVDMHUwTWdPOForSXNZbjBI?=
 =?utf-8?B?V0h3MGVDdnVLVDFZdVVtMk1GNnBXMUVZQnp5QnBEa1U0aldRR2xCRTVrWFF5?=
 =?utf-8?B?TXk2VUpsSzB4b3FnRC9NN1BmVWY5YmxNNEdEQzdINTVkYitIbE11dFlyOVZt?=
 =?utf-8?B?eXVmdlZraGFUWTBrd0sySHZFcVVhS3BES3hzdERGYUtqaVZFMFpMMlhZWGhi?=
 =?utf-8?B?MnNFMHBxbGlySk5xR1EyTDRQckZrRmsralBMNWcweXdKQVA0TGxJakpJOXMr?=
 =?utf-8?B?Y3F0elZEZXlkci9yb1Q3MlNsTnNWRHZrYmkrd0hDOVhSYTA1Z0xPQSsxYmlp?=
 =?utf-8?B?ZHRaNkNVQmJBQ2pJeHZwUXBLYWZLaXdubG5STC8yVk03Yk5OcmE2dmFrZ2Np?=
 =?utf-8?B?YUNXNEFNOGkwUzJDSXc2U1o3UGV5SHcyU0IvVDNndjlpVzlDWDdxcG9JMnYr?=
 =?utf-8?B?dlIzN0ljQm1vMmVnTTkzZFk1SUhnbXVSZlFWUHcyd3U0ZW5FZS9nZ3REUHNt?=
 =?utf-8?B?V0xPQTdwQnZNaE1FLzdUcjBhRmgwL3NHdUZjajMwV1NyL05uZGhjRGUzdjYy?=
 =?utf-8?B?aGE2WjRvbkE1S25rNm5TWkswV1ZKaDllczdPVndpazZMS1F4Y3BnYlF5a2d4?=
 =?utf-8?B?SjRLRlpFMUpTdjNjSnVGVk8rY0VpUTNmOWN2cU9jZkUwU2ppTjBMWGxNUkVG?=
 =?utf-8?B?Q1lzclVoK1hFcisvY3hoR2g2dGhYQmI3WnNTbS9sMGVNSTE2RnJlTlFVUWlk?=
 =?utf-8?B?aEtpWUcxTkxMVWJnMDVmNEpHUmw4aHdJcnkxRkViR3lLakhYUVJEWHhVb2NI?=
 =?utf-8?B?WlZmVGJTdEJTU2NleG00SjhNSkEyS29TZFBHL0VyL0RONUxENHFoVGVkQk9B?=
 =?utf-8?B?Y2J4UUF6aFdFK25jbkVzSG1ucnk3aXVQSXk0Vk42T0orSkdtR2lUWjkxVjhW?=
 =?utf-8?B?QkNXbk95bVN6SkdWZDNsQVQzZHlDQ01ESTZaYUw3M0YwdkI5NHdyZHAyZHJO?=
 =?utf-8?B?STFCWUhYRmtYcjAvamVsUUhnUlpoa2ZlSTlBYWc4U3lSL2VSdEZjUk1hVU1h?=
 =?utf-8?B?Zzh2Z1AzZjhQdFJXdGM0REVXRVUrN25Wa0tNdXlvbS9kZ2RYMENXaEpzc0RS?=
 =?utf-8?B?RmlGSk1NVDlHU1pjUDhOU2NFTkI2M0pWNVNOREsvVTBNSWpCcDduVDBSVzhq?=
 =?utf-8?B?MUtUd0pGS2UvR21CL1BsdFRuQUc0bjNoZ2NTWmxuOTdqamdtT096U2tzbDBw?=
 =?utf-8?B?RW9TRTRrc2dzaWtwUzFDUVVPcWpvMGpCdUpheTMzT1VndHp6aWdqWmNYdk5x?=
 =?utf-8?B?ek9HQzdVTG1haHJMQlQzV0plaTNhRytpOEVCa21GRm5acEdTcGxNMkVaYVJk?=
 =?utf-8?B?Ylg0by9aUTc1UnpPU3VuWWVJVm1KOHZWTVNZelVDQzBwOVcyeDV6RCtNY2JD?=
 =?utf-8?B?bm5IZHFZUG5KNENUb3l5L2U5aHVsQncyam5oTWV3djRxNlZPalg5eXd3dnFv?=
 =?utf-8?B?clpveUc0cW90RmIzbWhBRGtvelViSnNPZ0VYcmFNd0paNFBSUHFjZ2FBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Yi9zc2NCTFhPb0RXMjFsMkttcFpHSkRGS0RLamNoMjBTVlhpRTdPNnFwbm1D?=
 =?utf-8?B?aitvWWhlQ3hrcFBaTS9MSkpTU2grMWNXZTJwbmRxVGFQNGxRYWJwN3dpdWlT?=
 =?utf-8?B?UzFGRmtxdC9vNk1Ib2ROMnhvRUF0M005UW9RQUQxSnQ2N2toaFdFUmtDK2c2?=
 =?utf-8?B?aDNZc1F2eGNGRGtsZjlPeHR0cHkvckJNWFI4bFRHU2hwazd1LzZ1aG9EcDAw?=
 =?utf-8?B?OXFOcWx3WFQ4YkJadkdEZnRZWEZoRHJZekJSSWQzaE1YczlSYXFuakdXUGgw?=
 =?utf-8?B?d3FaeDFhOW5qUUxqeXpwaUNKdklUdWliVDJhdFoxb1ZNQ0hPaDFHbFJGZEUz?=
 =?utf-8?B?N1Z5L29ZeHdRemJpV211blF5ak1kaFpGckI0aUUvV1hWYUYwcnFNMUdNMkJS?=
 =?utf-8?B?aCtLSEZVYkhiR0VHejZMSWVkZnp1a1Vza1ZpWjV1blp0ZlBXYlY1VEQvOE42?=
 =?utf-8?B?eitWdCtIWVVRWSsrL0pxNS9jUHBBRU9uOXhmbkJBSXR5WG91OU8vZDEwSXZ1?=
 =?utf-8?B?dDBBS3Brc3dLQloyK21yeWRJUGNsT1J1QTNUYjFLOFlhbTE1ZWR2VXpHeEpr?=
 =?utf-8?B?RmlONkY2UDZGZGRHS0gzOXJ0cUNQR3BLZHc1STk4RnU5WTIrdkYza09XQjM5?=
 =?utf-8?B?S0hiTWMvajN5M1lBRzRzcHdUNnlkTjF3TkxtdXIzU29LTDNHM0FaWWZMUzc4?=
 =?utf-8?B?YlpiZ3JrOFNoMzM0OG5vcEF6TWVqcGdpa3hvZlFEUkI3NlBsdXhnMmZURFBO?=
 =?utf-8?B?czhjdFJYS2tJeGdyZ2Z3NGUxMHlEbHZLbWZyOHpQM0pxb2RoSnJSTkNlb0Jy?=
 =?utf-8?B?MjR5dGorNnBMMEFtay9XL3BrUjVFYXpKSXVPODVaK2NLUndMRFUveEh3M0RP?=
 =?utf-8?B?ZWhvNmVoMit2SGxlbUhZdmgrZFN3ZnRHNndkbFpxMGs2UUQ2SEhpV1laajF1?=
 =?utf-8?B?ZXV3b21ZK0ZYV3k4TWlrN00rYy9VMVY3OXRBMTVNK3Y5RUx5WDNqVWZCcFZ1?=
 =?utf-8?B?MTlDYTJlcHNibU44VGd6TGVxK0dHalArMTIrR3VpZy93TVhuSmV2Qzd2NmdD?=
 =?utf-8?B?ZFVPMGFYQnFEVmRueVJuNmNqSCsvem9MRXhCanpSNVFZdHZjQ2dDVXNmdzlK?=
 =?utf-8?B?TU0vOXRSdHREaVd5WjZjWEZEKzVoaHZuYW5qNXcvbjZ4YUFEdk5MVU53Y1Ev?=
 =?utf-8?B?c2RiOHhxbGFQaWprRkI2YVF6VnJRd3pMZTlFY2ZTN0dlRFozTE9DTVk1cGJx?=
 =?utf-8?B?dWRnemp3VExiSFVHUThTQVVoaks5dFE3VG5Id0kwNGhrL2NIVk5ZYmIvYytN?=
 =?utf-8?B?dWtyTklxUEtETHpOcktvbWV4RGc4L0Rxb0VXK0JzaGJoRnV5S1pIK1FUUG5E?=
 =?utf-8?B?d0JaTXpiaXpZVUY1VEhDTFk5SGlWNHhNc2YxNklWWkFidURRZlZqNlA2cU8y?=
 =?utf-8?B?SVR2RXZaRy9GS0tRSmw1QVZ1N3VoSTRkdWwzL2loTGsrNEhZQ1lzcGROQ1VQ?=
 =?utf-8?B?REhOUlBUZUsxTlpYeTJqTGMwaEl0T2pTNE5RcHdzT3BqSnB1K3M5OVVGUXJi?=
 =?utf-8?B?c3lBTEVZZ29mbkF6b0c1czBTNmI5WURvZjlCbEFoZGZ2TlNZamhNT3Y4Vm1E?=
 =?utf-8?B?VzdNNS9PU1VHZkwxN1oyZXZSZG9qNUpwUkNHTHd4MFY2OTNqeDFob3lTRy83?=
 =?utf-8?B?N3lldkF2VlpBRndSbUwvMk1RYlNXVnYvSExWVFlpY3ozSGNKTlZLSk9mcUp4?=
 =?utf-8?B?Z0lJcjlsTVE3N0dMRWk0cnMydGFjSVVJcjBJYm1ONVlLWHhCOGJ1WjVRNnBN?=
 =?utf-8?B?WnExU1RDeFM3NFg4aWhDam1WWXI5ek9ZTDdQOU5XbVQ3WHBpOTBtbUdHWDV6?=
 =?utf-8?B?Um1FMzU2a051SDcrTThvVWpaZUNaQTNEWnJYOUZGMmsxaHM0RGtXUlpCd0s2?=
 =?utf-8?B?Qlp1bTJhQWthUTBtM0VPRWZBcmttVnd2aENiZ1hCOUR1MUtNcVQ1czF3WDcw?=
 =?utf-8?B?R3dIL2U2M014NkUyb3JYZWpBeEd6b016WFlzdHNPVitRYWM2WTlxOGtCb2RW?=
 =?utf-8?B?UDhBL09wam8wZmJKVFI0Y1k5cXBNckU2Y2QxUnowUkdwRE9BL3NGL1QrNjIw?=
 =?utf-8?B?REZERlJSZTVoNHp6WVJ6em02S2dqdmJWNDR0Rk1hSUg1U0tSWmI4VHJ6V2E1?=
 =?utf-8?B?M2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a3b4db31-1586-47cc-c33a-08dc76c7993e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 May 2024 23:18:02.2668 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /HPM5fzd+fkSXTF8aMhGMrwnvxdQrAN6eEghUpPivpIGH0Gd5njMgClTDG47qu+siUjoi8Rxpupb8909nCmmL3XWNKEzlAaLdwQrLqX1nfI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6788
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715987887; x=1747523887;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1wc8uJfnbWKzkhHrvoetESUAK2/ORjsYgkm9IdJlZaM=;
 b=RxKJbLdJHe+x8eorJHKuJhc9W7ZB0Yb5Oe6fdFiKKrwktbnUdCxJTU5f
 KOm3tFjL1ePWR1SGBqT/JDiuBs8+hYDzOjYm+43pvk7djhq4CVINgr+t6
 YhCSNhee/eBwV1IFdyTQC6dOq3ZjKRl8uLRcj5O4Z38wDZ7MqNqDjHOZV
 z0P6ACpaBRbOW8y90YtGZX2Q+N/oR1DMHQ+UwknH+0b003f8+NxmjSyAx
 lkOX0GTs/yRWsMSJvMA+T+Ny0uWxW0QgJGnjerO3l8MF60DnP0rIQkaSa
 X5c9P4OUN0N5jDQGcbzlGOcFu742Q/GyvEnREVzxdFJgO7ShTpOSAe58/
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RxKJbLdJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: avoid infinite loop
 if NVM has invalid TLV length
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



On 5/17/2024 4:08 PM, Jacob Keller wrote:

> -		next_tlv = next_tlv + tlv_len + 2;
> +		if (check_add_overflow(next_tlv, 2, &next_tlv) ||
> +		    check_add_overflow(next_tlv, tlv_len, &next_tlv))
> +			dev_warn(ice_hw_to_dev(hw), "Failed to locate PFA TLV module of type %u due to arithmetic overflow. The PFA length is %u. The last TLV has length of %u\n",
> +				 module_type, pfa_len, tlv_len);
> +			return -EINVAL;
> +		}

This hunk is missing a { which I had fixed locally but forgot to ammend.
I'll have it fixed in a v3 later.. :(

Thanks,
Jake
