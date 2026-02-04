Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yPR/HW1gg2mJlQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 16:06:21 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A11F9E7E69
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 16:06:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E427060D98;
	Wed,  4 Feb 2026 15:06:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sg1eGas9xTo7; Wed,  4 Feb 2026 15:06:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0216660D9A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770217578;
	bh=P5m21OuHi5pyqEmc/SqrIJh40/ru0AOgT+W6hAmS5E0=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XJjlIPLOeUKrUzS0ZNqBzhIKOnPBkOBOI++0EcRS5qCkORd1n0TabRn2OVEXXiu/M
	 JzrlogCNpxyZXlZ2U4rhYuTdbEhm5MC49Il1zx2PAHs8iRclNCydJbx9j4Vs5NWpQf
	 1uvGW6N/FfZ1nF/NO33k6o2BW7T2V7fyMGwAFwJlwSGpSEWg+azak19SxU+oOT6yQO
	 VbQ8NV4HrQPqGqCV21vz08Od1AUP2UAhjRFKA4Yq4fSizmeLH7WKGbcltWphuIqqtz
	 9mmbKLR4YPr6SWHBUDHXpeHshI/Yc5OB1VYwaHzlTK4Lxlc+NpZ5L1lxPHip9OXIxr
	 zbJRbOF5MgkRw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0216660D9A;
	Wed,  4 Feb 2026 15:06:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BAEF7173
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 15:06:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9A51A40667
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 15:06:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AGnRY19LcUkw for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Feb 2026 15:06:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8A0DA401DD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A0DA401DD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8A0DA401DD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 15:06:14 +0000 (UTC)
X-CSE-ConnectionGUID: KA1uJBRoSf+MOlwmp567FQ==
X-CSE-MsgGUID: KyRgstiMRVWzjNEN5/Sdcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="81720013"
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="81720013"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 07:06:14 -0800
X-CSE-ConnectionGUID: 9HNlPI+GTGGD6cUHpy7aNQ==
X-CSE-MsgGUID: +Monf+FqRbGZwYn6Q+y6Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="209765388"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 07:06:13 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 07:06:12 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 4 Feb 2026 07:06:12 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.23) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 07:06:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bowwVXD2gFXZZoj8Eios1LxbUKZhx3MGPAqGCKGosiXJq3wWA/AcJzE2lzhleAVWwsErKUmTx+Pw7NnpmZtDMw/i4gM6jMIRgPIN09mC1j84mksRP77IIp26kY0TicEhxV3coqURQf8eppPx8FerMpvVlYrLO+jtf7AvKNDlZSXvXrkQR5W8bEusBkfHTxmIIGAuITW85GCvzgHfmgjLKvApYtJEubt0rXJU9f2h8I5QmrKoij/J4c6iVaN/U8/cHKaDlIybMME33pRbkHwqfPfD8Ko8efw6SMgWn5WNh5nvNZnMtwzJl2nuWKodlMUEVTpRiqgM3acoBSYLZfEjcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P5m21OuHi5pyqEmc/SqrIJh40/ru0AOgT+W6hAmS5E0=;
 b=sNbwEyYLDmK53cQwiwHcOsEZJROb9Om2EBOhlOg3/1VN6RSeKI7nAqA9w58y6w1NfoJjv/gahm5rIbaJd8IxyFTlOcMdZmvu2oqcxi/WtEHv2nIpB63DrJj1Bh3mwKcWx17aI+lqDW9moRebYP55JDEMubwIZS5J14J73+8lOAFwNiQWbzAxJOdNixg4FQhC9c8HGWN/gBDinquglUoV1CrOdL+Il/iIrjKgQwg2Xqi8CGWxIAaSQg7/b54EbV8w3mM5IEUm9OFuKNfnRkErHqwkFDK64rc2nRLBe6OFHm+2+vyOPyIBl8Ro+BhifMcU7WgwFkbU1K9IG5FdKGeDEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH8PR11MB7046.namprd11.prod.outlook.com (2603:10b6:510:216::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.8; Wed, 4 Feb
 2026 15:06:09 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c%4]) with mapi id 15.20.9587.013; Wed, 4 Feb 2026
 15:06:09 +0000
Message-ID: <635a79b4-28a3-4052-b69f-bded7496d5aa@intel.com>
Date: Wed, 4 Feb 2026 16:04:40 +0100
User-Agent: Mozilla Thunderbird
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Jacob Keller
 <jacob.e.keller@intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, <nxne.cnse.osdt.itp.upstreaming@intel.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20251204155133.2437621-1-aleksander.lobakin@intel.com>
 <93f55dd6-44a5-4309-aed1-30e352cd2825@intel.com>
Content-Language: en-US
In-Reply-To: <93f55dd6-44a5-4309-aed1-30e352cd2825@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DB9PR01CA0027.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:1d8::32) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH8PR11MB7046:EE_
X-MS-Office365-Filtering-Correlation-Id: a5ac3505-c305-441d-40c2-08de63feed70
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aGpmOGp4eks4VFlsOXNCNzV3N0o1ek5rTnhXVmM5WkNZQjM1YjVpbTlEMHlX?=
 =?utf-8?B?MUh1dzByWlNrVmU1SGVwclN2NlY0UTZhazdEQXY3ZTFsbE5FS05XdVNLTlRP?=
 =?utf-8?B?bDJkQ1Fma25Ud1R4OTJ3YU1GSDE2Q1ZKM2VlZ0pFK3lRdGpwR2ZqNFIzcGc2?=
 =?utf-8?B?aHJXb0tmT2hqc2dURnRXR2tMbEVEZlFzam1GRkpvNFFabWJETEQ0OTJIU2g2?=
 =?utf-8?B?ZThJSVlWZktNVENDZVV1bGhpcEkvaEJCeW83TWRHdkFxVFB2QzdtTVBhT3NY?=
 =?utf-8?B?Vm9Id1hLb1VHOU9KRHpncy8zVG90NzJUamY0anRlb1p0SmZLR3RRV2c2OTZL?=
 =?utf-8?B?TzNYMVgyMldxdmVHQXRabm1zM0s0OTFQNFFLL0kvY01SY2NBQk5NM2N5KzJo?=
 =?utf-8?B?eWxoVHFPOFJPVDBmZWVLcVpRbXdsQ3l0a0N1bnlXRXRvUm1BZk5ObHZGVXp5?=
 =?utf-8?B?S0pqRzcvWnBkSWhkNWdyUnc0WGNuYWgrblBaWWsvSGlSbU5yZTJ5aldXRCs2?=
 =?utf-8?B?QkoydU1rLzYwSE1XUFNnOE45SUNqRE5QS3M2U21IYnBEZUxzQ09DZHVpMzFW?=
 =?utf-8?B?Rk96K0pZSWx0TGdzeW1pWXpmUU5ReGdGa2M3aEpVc2RZVDB6NGx5NUlNb2l6?=
 =?utf-8?B?V2ZTWEQva0RtU3ljVnQ2MC9xYm5ta2NtYVVxQ0xBMWxua2F4UEVZdDR2RGtU?=
 =?utf-8?B?ZlFxenYvWStCUGloSFZJYUxWdDZXT0IyOU8vVVFuMVFrOWtuR0I5MGh5Ym45?=
 =?utf-8?B?TExTb1I4RElBaHE0RXhwMGNBSy9ucW5Md3VUWkV3YWg1ZzdRY1BLazdJdHFn?=
 =?utf-8?B?RjZhZ2VhR2xMd2luZzkvN2YrRUdkaWRNU3picXdVK2E4U1c3eFpzVzNFZEgx?=
 =?utf-8?B?Wjc3QS93VjVNN1hvdDU2OUQ4aFNvZGM2UGRDb28wK09EUzdJYTRuNDFIZFhU?=
 =?utf-8?B?dVo5NDBRRk14ZmZHMXc3eVp6RG91ZHFpKzhMbGVEU1ZLVjZ0bkRxa21IeHJG?=
 =?utf-8?B?OTF6QmFlUTl2MUJpRk5GSXcxZ0JTaUNkSmRYYTFRd0dWdzY5ZnloSXYvbFRM?=
 =?utf-8?B?Z2dlZmp6Q3RzVzBVaVFpS3N0YW5rTWNxMXZZVlcrWk1hOVQ5azhZbjFmU0R6?=
 =?utf-8?B?NkdJazV1Um9YelBMandtb2pQcHRiQnl5NnBEN1JkK2lVejZSUGY3UjFSQ2pp?=
 =?utf-8?B?ZmdpNjh6ZXBUaDRXR09VSE9OQTVnSXFrK0FCcHhGMVE1bjhHdnFsN0Q1VE45?=
 =?utf-8?B?S3RQYW00NFNxRVI3NCtVRzZmdFhHM2VnSGhrdGIzTENXaWg4U2o3RlM3cXp6?=
 =?utf-8?B?eFhnZE5VUlRMc3VCOFoxVXRRcldXWVhmcTc1eVl2VGRHV0w5WDJHTi90d2Zs?=
 =?utf-8?B?ckYxVVV3MHlBbnpUYWdtalpLVzBPSUdiSzJmUmJhWkpDdWlzWmU5c0tYQlQr?=
 =?utf-8?B?UGs5dmU4TEIzTkJCdkJNWmVzcWVQL21YRkpickxvbEtnTTM5UC90QXJzUHBm?=
 =?utf-8?B?V3k1Wi9Iek9qaWoyTUxVcVlYZ25iUmJaT0x5RStHY0xNdVQ3TUpGTUsvY1pp?=
 =?utf-8?B?NU05bHpqL1Z4R3hxMis4bkg0UGpZVzY0Zjd0ZktwaCtqMXg4YnNvYUE0RmpX?=
 =?utf-8?B?WlJyVDVLamlneGRNd0swcmFFZUZSY2MzRkpJMUh2d2F6dWNpdHdtNzJPbUZx?=
 =?utf-8?B?MnVYWTRtOE80YSt6YUgzYUJuVE5PUVVmeDRFSGVXdHdYWTZwVEU3emQ3VEZE?=
 =?utf-8?B?UW91M3NYdE5CcndoQ2F2MFBLdWorZFE5TlRZVjM0WkFhZHFMdHBpZ0hnbGVy?=
 =?utf-8?B?QkU5YXhGVk52Zm1WTUlpbVBQRzhrY05abEVmYTI3d3haOWdyR3JRQ2pnOWsz?=
 =?utf-8?B?MEhHc0p0dnJDOXcyNG90MGpvQ2hJWnp0T1BSYlR0YXB3dldiaHBtbk5oam4z?=
 =?utf-8?B?bHIvWXUxV3laQ0FRclpWRjZxdnZnTHJJL1VlQk1LOVJ5Zjc5STZLVzF3VlRH?=
 =?utf-8?B?RWNNZW8vOUVVMlpQWlk4Z3Y5YlFpK25pcUFYTGs0M2Noek9VZjZhZExwVkla?=
 =?utf-8?B?cURneW01QnN4bC9xcUdLMDFBZk9KSHpWVVlRcWpOaURSMW43YXBjRkVLZTVn?=
 =?utf-8?Q?k7vM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YUZlRnR3cWVlbm1CalRlUStVTDZ0QzRCeHdhcDlXb1prM2FBMmErMFJobmd2?=
 =?utf-8?B?dHBFRmZvR1dKaFFhbWJLRzRpMU16b2t0RzZjTDlmdC9SVWJKUjYxaFhPaFk0?=
 =?utf-8?B?ejVxMGFnK1pkdnJXN1J4RkVCb0pIR3ZKcWRxSHpPNDVoNDZIbUQwSHVDTzcz?=
 =?utf-8?B?cUJUOVFTbExLWEowdERSazBYR3h6NDU5L0xJUEN2RUYvdE9rODhybnMwejJN?=
 =?utf-8?B?dnN4UFFjdVIxNlhkeXkwczZjYzJzMFJDQm5TNzVXWnF5MTVTRmw4bXArWGx1?=
 =?utf-8?B?cm5ReGI5c1N5azYxN2ZOVDM2OEpKOWZUMjBHUGd0aTdNTWI3Q1lyWG5wWDNN?=
 =?utf-8?B?Y24vaXNsV1NEMUxzVmhNd1l4STBFN0hPNHVNSjJ3SXkrYmhXRFBQaUR3bmdj?=
 =?utf-8?B?eXJHKzhIWkpybnVvSUdSWWFWa1YzMjUzNC9IYU85anJ3THovSTM5R01oQzhO?=
 =?utf-8?B?RFdEeEE4bzdhanNLUjlJQlFhOGZidzFRNzhqYmhIblhtdDU1Sk5lL0NBVEth?=
 =?utf-8?B?aG9jSHVMM3BOVGtmL0REeC9iUXJ4OHZGNHZ0Qmk3TmJ0VDQ2UHVKc3BuQ3pw?=
 =?utf-8?B?dTNoMFRuc3Ywbm1wcm43ZnVsUGRDNGFBT041bjhYOWx2czRWWWljdU1oRVdk?=
 =?utf-8?B?SFpKd3NzZENQaVBxbVFXZXNUUDlHNk5iYlhYV3NYZkJUZmVkRURaMmdid3Bk?=
 =?utf-8?B?cUxaRXJWSXM3Q1hzTGw0UE1uVGhtWUNUV2JsOGYzaC9QUHRDZjM3MU1Nc3Z0?=
 =?utf-8?B?Q1R5R0NpekFhWkt1WkR6cjVrb1lOWmVkYnd3OWtDcXVKWWxJR0ZPcjBZT2RO?=
 =?utf-8?B?T3Z0TUo4SVViNUpKVXJ2VWk1UnRaWGtDSGV0ajhURCtPNVgvTm5MQWVIYkwx?=
 =?utf-8?B?TDZpWkYycnEyK1BaUUc2VXVZWkl3OGpzWUxGQmdlbVRCR1BkcldlSEQ3SkVx?=
 =?utf-8?B?VStDMkl0MWpCODFQTzl3RkQ1cittZnVJaUxWYmhrOFJjTUMxOHNFZWJDWTBU?=
 =?utf-8?B?L25ISVhLcmRmYnREYlVVaUFsMFhYUHdYUmRpVVkvNmphUCtRd3NBUG9KWEEz?=
 =?utf-8?B?WnR6NUdaTkpQN1lmdCtPWmV5OHFoSzUwNXR0ekFUVzF5TFR6c3VhR3pIbTlv?=
 =?utf-8?B?bFVBZExlRktjM1MzRGhXSGF5ai9xUW4vMTZEeDgwUXNGQ0RYSWQ1b2cxWVJQ?=
 =?utf-8?B?R0FLdGExaklsOTdiVS9PSVlkQ2xOY3VFL1ZDRzdUdTNnSFpYd21MVGkwK1Fp?=
 =?utf-8?B?enVEOVJwWWVFcEs5UEZWVWg3cU1PMHJiQjJ6K1ZMdjVrMFJSMjNBa0Zyb2Zr?=
 =?utf-8?B?TTdUMkE0SWg4R24vUk1FbHVZNWV3YldraGU3R1BwdU8yN3RTYnJhbmNDSld5?=
 =?utf-8?B?M3A5cFJVQkpTNnFXbzhJWUwvYXFWWHQreFlnV01HcHlXSmpnU1kvR1gxKzdT?=
 =?utf-8?B?eFptL3pQRDdreDhLYzI4TFBQN1hQZVc1enY3aDExYk12eWdZVHdqY3lBZDlK?=
 =?utf-8?B?MVdPTjFrRDZWbUhYWHlqdHRVOGVoNHI5STJYcTM5dDhzSzVQZzVxaWhSb28w?=
 =?utf-8?B?OUgzSzFoQ0ZSbjErVW5ZRkdjZmtKL3dXY3ZORE1yNEN2WmFzTndXQWpMY0Fw?=
 =?utf-8?B?QXpDN1dwRWhvNXhmaXZuNVdzZGF4dWQrTHNvTC9rRG9WVXRTSU51Z2p6RnAx?=
 =?utf-8?B?Z1Z5ZnpFb096dVFFSmRsVE5NV1YrbmFZU0xFRDBmQ3QyQ0tCU2dFNkgzMStX?=
 =?utf-8?B?UExyUGk2bndiRkJ2bXFGS3ovRUNZd0hHbHlBVWVHQXZLZkhmSkwvazA3Umli?=
 =?utf-8?B?UnFWcXdIM1pxSHhDWU41UXdaWlZma0p6cldVOW9kNFZpZlVsb1BVaEhJUjZo?=
 =?utf-8?B?b2xHbUIxSzk1WUo3cmkya1YwcktwZ3M0VEkwOURGemViRSs2cHZPNXpSSVRY?=
 =?utf-8?B?akw3bktoczhacWQyb3N0bEt5b1Y4YkJMNDlYc0dhNkRQYzBvVEgyVFppRXlp?=
 =?utf-8?B?eGFvUTB5cUhtVEkwRnBqbmFudWpvYmpkeDdJM2gwZWdRcmVDbXFZWWJ6UWhE?=
 =?utf-8?B?ZzhuVzdlS0xoSk5hWTM1MjZaelRqK2JVcWxLQVVGRnFSWHVGZkptdHlBNVBQ?=
 =?utf-8?B?UWtHUjVYSlJLV0F4ZWVreUNpaDJobGV4aEtPLzR1TXROZ1l2bEtFWldQUlNH?=
 =?utf-8?B?amZWbjZHMFhnUk5XY3U0NndqSkhQYUpUZzJLWGRmYnJNc1FaaGpXRmJXUEU3?=
 =?utf-8?B?Rm4rQTN3NWVRRzVGcXdSVVU3V2ZEM3A5V3ZyWVNHUXJIRVJtbUFnajA1TkNQ?=
 =?utf-8?B?L2hwbk5PeFFKdnVUR3VIRXNOTFVjaWIxaTJMWUQ4WjNTc1BXZkZOaDlTd3NW?=
 =?utf-8?Q?i7/xr7UnkeBwI1cM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a5ac3505-c305-441d-40c2-08de63feed70
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2026 15:06:09.2376 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: geenuArTF3gr+yCXoDok0hSyaJjfY4deIDsQlO1/erBodiOQzZVX9Bbmku0H/cVX4//v1m+XSd1/tVocSDEFCgW88GHTCf1c9p5L4aJFBmY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7046
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770217575; x=1801753575;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fUPwVdgMpyw4Wgn0Wyb9OnuFFXxIuV0Ric6OX9BCFmA=;
 b=CKyeKY4gxLH9YVmO307HYTTJErEYMBjBHDHDIsMH2r4z+8nA2C5Vw6BW
 sGAanfXR3YjzvvAWSPuybpFiS+dXmYcFUJIbEoLkXnL6EqjUtRG+Cn4JB
 oegUqi9JK7nyzI9V3ISsC8PRVmqcW8lW1lTtGoC0fN5BSfCD0DqsiDraE
 V1mMDyJPn9edr+etxMHXaZ4dQg9PhdWL5kqF3d1K3mX4IvEC0h5tT0dNy
 90BtBAPAK3B7WL9LodcIWxUny+DvgPAqJY1OcjuSqsAlaG9WB5G4iro5N
 rKO0gB8swdKz/2UpJeDC7PZtBEtLDeClBYZoONTKCA58mJSbQ3p5sIqkr
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CKyeKY4g
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 0/5] ice: add support for
 devmem/io_uring Rx and Tx
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:aleksandr.loktionov@intel.com,m:nxne.cnse.osdt.itp.upstreaming@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: A11F9E7E69
X-Rspamd-Action: no action

From: Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Thu, 29 Jan 2026 12:03:28 +0100

> From: Alexander Lobakin <aleksander.lobakin@intel.com>
> Date: Thu, 4 Dec 2025 16:51:28 +0100
> 
>> Now that ice uses libeth for managing Rx buffers and supports
>> configurable header split, it's ready to get support for sending
>> and receiving packets with unreadable (to the kernel) frags.
>>
>> Extend libeth just a little bit to allow creating PPs with custom
>> memory providers and make sure ice works correctly with the netdev
>> ops locking. Then add the full set of queue_mgmt_ops and don't
>> unmap unreadable frags on Tx completion.
>> No perf regressions for the regular flows and no code duplication
>> implied.
>>
>> Credits to the fbnic developers, which's code helped me understand
>> the memory providers and queue_mgmt_ops logics and served as
>> a reference.
>>
>> Alexander Lobakin (5):
>>   libeth: pass Rx queue index to PP when creating a fill queue
>>   libeth: handle creating pools with unreadable buffers
>>   ice: migrate to netdev ops lock
>>   ice: implement Rx queue management ops
>>   ice: add support for transmitting unreadable frags
>>
>>  drivers/net/ethernet/intel/ice/ice_lib.h    |  11 +-
>>  drivers/net/ethernet/intel/ice/ice_txrx.h   |   2 +
>>  drivers/net/ethernet/intel/idpf/idpf_txrx.h |   2 +
>>  include/net/libeth/rx.h                     |   2 +
>>  include/net/libeth/tx.h                     |   2 +-
>>  drivers/net/ethernet/intel/iavf/iavf_txrx.c |   1 +
>>  drivers/net/ethernet/intel/ice/ice_base.c   | 194 ++++++++++++++------
>>  drivers/net/ethernet/intel/ice/ice_lib.c    |  56 +++++-
>>  drivers/net/ethernet/intel/ice/ice_main.c   |  50 ++---
>>  drivers/net/ethernet/intel/ice/ice_sf_eth.c |   2 +
>>  drivers/net/ethernet/intel/ice/ice_txrx.c   |  43 +++--
>>  drivers/net/ethernet/intel/ice/ice_xsk.c    |   4 +-
>>  drivers/net/ethernet/intel/idpf/idpf_txrx.c |  13 ++
>>  drivers/net/ethernet/intel/libeth/rx.c      |  46 +++++
>>  14 files changed, 325 insertions(+), 103 deletions(-)
>>
>> ---
>> From v1[0]:
>> * rebase on top of the latest next-queue;
>> * fix a typo 'rxq_ixd' -> 'rxq_idx' (Tony).
>>
>> Testing hints:
>> * regular Rx and Tx for regressions;
>> * <kernel root>/tools/testing/selftests/drivers/net/hw/ contains
>>   scripts for testing netmem Rx and Tx, namely devmem.py and
>>   iou-zcrx.py (read the documentation first).
>>
>> [0] https://lore.kernel.org/intel-wired-lan/20251125173603.3834486-1-aleksander.lobakin@intel.com
> 
> Current status from the validation:
> 
> * io_uring tests pass, except for tests which try to setup RSS Rx
>   contexts -- after recent changes in the kernel, seems like at least
>   some of our drivers return -EOPNOTSUPP when trying to configure RSS.

Ok this might be due to that those scripts try to create new RSS
contexts. In fact zcrx works.

> 
> Tony, did you have any related reports or planned fixes?
> 
> * devmem -- only the Tx test fails, may be related to our complicated
>   .ndo_start_xmit() logic in ice, I'll investigate this as soon as
>   I get some details from the val.

In fact it works, it's just that by default without isolating TCP Rx
flows the completion packet may finish on any queue, not only the ones
bound to devmem. So ncdevmem reports "Ok" when the completion actually
hit the devmem Rx queue. Actual devmem Tx always works -- the output is
visible on the receiver side even when ncdevmem says "missing Tx
completion".

With that said, the only issue is that the bugfix was sent today for.
I'll merge it into the series and respin it once the window opens.

Thanks,
Olek
