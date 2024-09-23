Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D9202983A20
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Sep 2024 01:11:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 417A480F92;
	Mon, 23 Sep 2024 23:11:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OTNbZZSOGH2S; Mon, 23 Sep 2024 23:11:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B41F80FF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727133096;
	bh=JA3MFocjy2DncaaP4gokWOdiiLM4njsuyY5vn3Hd198=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=O+E+xJ84/B+tgXwp1VKj30Coe+Nzj5gQ/nxMsIm0tPzVsNZ+sJ/R25nYJNspw3/60
	 L68eHXKRBk27yEPzsMbw79mRUDZ5iCCi9pHFuojfuyNXD46qnRs1TLtoRI7XVecwqz
	 K2/3KnZHRXxBArif/CEwgVD0kcLPz54oK/QXJ+YrRYKxSMZbvoLrHaAdboPQJscZpL
	 UZB4Ij2Xo/TQNbxT5yt+m5pzon1Gbyzp8LwXtcGfPRwPWP/Wl4X1iRPuBhmIFLahAa
	 QV/stVKidAdzB1/cG3iFgeq+ou0zsuXzwTC9GBzF4glbRc59wqOfqktniV1UT5kfJx
	 2GkvMxApZq5pw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B41F80FF9;
	Mon, 23 Sep 2024 23:11:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BEC1E1BF309
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 23:11:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B972060883
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 23:11:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aOLaWc5v8fDn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Sep 2024 23:11:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 769D36077A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 769D36077A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 769D36077A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 23:11:33 +0000 (UTC)
X-CSE-ConnectionGUID: 2sY+IKZLRRy5QpWzWoIhVA==
X-CSE-MsgGUID: 6ikjxZvES3C7HXWC0H10+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="36687990"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="36687990"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 16:11:31 -0700
X-CSE-ConnectionGUID: nJTch8heQ4+hUtHBFxwMfw==
X-CSE-MsgGUID: dRWVrWdfQJuttoBz4fMccg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="75744534"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Sep 2024 16:11:31 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 23 Sep 2024 16:11:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 23 Sep 2024 16:11:30 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 23 Sep 2024 16:11:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q0PNz8dX4cFKRHBvEKjEDe+SrIg4Mr7qozgY1KStwVskRqep18PFtyzdY48/SfEtrnlsB5Ud6LjimOxJ5cE6j0mOQdnOPGYzR2dm9m6ptOdE9yBLcvY8LQ2G3i4pQDb8Gg+SYdjrxM2VwBgKkTNE4jRMYEkJTnLJWWsyRLuVubBHJxEGQupSgs4HKf1fIhP6H4Ns+HZFhB7JXAZ+dY4hxcAaH+W1rYpmWcenlXHlR47TmvQR0ZAXqfwzMeH7SZtjQDOJqtbR9tPUq/uihUt/Ho5xSwiB61bGPJQD6xIvapvorgjiicLR6vRGE8qsDDI1jPPCsuKLn+tWWTf/pJQamA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JA3MFocjy2DncaaP4gokWOdiiLM4njsuyY5vn3Hd198=;
 b=kmQUS9g/tbUXuIwIbdV5ysYe3n0eQ9AZ/x9vpPfOECFglQIWHVipmG6jPPlKDJTsMjC1f9LovQy7OOocJQJEDjrD8YRS5xH9zz+QmI9DRIXoA4FUTonIFXMAiZ4555dadDENetLfgXmLdXQbT6vYS/3P5QUFFgmEOdGmrboqiACQdLHilhOaeQ73WflmD1YHnQmYsoDeTyEPc9tRm90megL7ZNuW1pPR2ynE1xKfRZvbrAbnkCiO8YteWSMXd+VUQsFBDZa4LKwoRYpGIpX1t9e17f6WVg2THJ9U0KL7tPy8cGtIzWDsVzPFry57S6Gw9R+VIPp8xmSEOeW90jfkqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by IA1PR11MB8100.namprd11.prod.outlook.com (2603:10b6:208:445::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Mon, 23 Sep
 2024 23:11:27 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%3]) with mapi id 15.20.7982.022; Mon, 23 Sep 2024
 23:11:27 +0000
Message-ID: <2c272599-6b25-4c93-86fa-ecfd8df024c1@intel.com>
Date: Mon, 23 Sep 2024 16:11:14 -0700
User-Agent: Mozilla Thunderbird
To: Mohamed Khalfella <mkhalfella@purestorage.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Yuanyuan
 Zhong" <yzhong@purestorage.com>, Jeff Garzik <jgarzik@redhat.com>, Auke Kok
 <auke-jan.h.kok@intel.com>, Simon Horman <horms@kernel.org>, Ying Hsu
 <yinghsu@chromium.org>
References: <20240923212218.116979-1-mkhalfella@purestorage.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240923212218.116979-1-mkhalfella@purestorage.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR01CA0066.prod.exchangelabs.com (2603:10b6:a03:94::43)
 To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|IA1PR11MB8100:EE_
X-MS-Office365-Filtering-Correlation-Id: 7637eec6-e683-43e4-222f-08dcdc250cd2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WEJHN0NIbFRsbGdzeWpkYkllc3V3cGFzaDFEaHJ1cFNEQkxHc2lVQi9BbGd2?=
 =?utf-8?B?dW1zR0FNclV3MTZPRkRhYlVjTVREaTdBRVUyeThtOFJZTnluSEJJZXFGcjBU?=
 =?utf-8?B?cWFCV3EzaUxDMWFkb3hQazQvQmpVbkNIUFZwQStxYndIK0VMTytLVFcvbVYw?=
 =?utf-8?B?OGlncnhkZDBQQnlTTmJ5U0FpQVE2Si9NdDVrVXJWUE84b2NsS0NUeld1R0Nr?=
 =?utf-8?B?Y01EMHNNWVFZTHBNY0RJU0dHU1kwT1VYa2JxbHkxY3lIZmMwV2E0N1JTRU90?=
 =?utf-8?B?b0g5SkVnWnUyL25wUE9DK2I3allPOXU2OUt2M1ZybU5nME5FWExOaDVFY0ZZ?=
 =?utf-8?B?T3BoTzhxMk8vTWdTYkVZVk9mQ01HeTdwWTRWVjR0S1NYU292VUZLVnJhOHNY?=
 =?utf-8?B?R2htU3lDcnVkM1FTcmRkckFjSmJHWnRDSzc1cGIzcm5BeUlYOCsvQkpGZ2tN?=
 =?utf-8?B?T25Qb3Jua1ROcml4QmZJTytPMElyY2RpMTBQNFlPUmtQc1ZZNzFUdG5FT1pY?=
 =?utf-8?B?TEZQR2lLM1RycHNoYmFIbXhxc1hFRmluOWlGK2E3eDNxdHFZeUszR0FmUEZl?=
 =?utf-8?B?SHl0UFRUaldFY1NhWWozTnBhYmNZQlhmd3pxWW1iWUFMWkNIT1hodjlmYmRt?=
 =?utf-8?B?ZDQ3WmV2NVFwUmd5N3JQNUMwbU95V0NrSlFoM0lMSEVhcEtzYmpxampzcURy?=
 =?utf-8?B?U2RrTnZMSkVaVHdwUGc5MklzQ1hEbUlSc0hWTkZUd2NkM2Y0cENud1lhbEJa?=
 =?utf-8?B?eVUybUI3RXphdFBwTnAxUjdoRDkwRjNXU3dpMWJVZ2RZUWhYdlIwZUR6dUkx?=
 =?utf-8?B?UkNDVllVaXEydFZ3ei95TU15aE9scE05R0lwK25rUkF3eTFCQ2Zkdm5mQWd0?=
 =?utf-8?B?WUIzcWN3Q3hBMHVKQnU2dm5IOXV0M09vTm4zb2hvQ3ZsWUROYlhpN005QWMy?=
 =?utf-8?B?M2lTTjA4dURjaXFFVmxkWWNwL3IzUExBNVpTNmtva0NCUGNDU1IwVXJ0SG53?=
 =?utf-8?B?NEljaVhCZEZZK0ErTFgvRmJSdk9LQU90VjZRMGhJVXhqSEtzZjNmQmlzdXhz?=
 =?utf-8?B?NUNkS1F4Z21QQk1Kd2NmUWxkSmVjdlJPcUluWDZPSlVkNHUyWmFCYTdBRkxz?=
 =?utf-8?B?UFdMZlpHcVdlYXFXSzFDbFQ0RDBXSFdHSDkra3lkdVYyK1M4VGorYUZXR3Vz?=
 =?utf-8?B?MkJzbm1jMCtEejd1UlR4VzdUbVJtckZPejRRYUE0aEc2ZFQvL3p5T0ZUTS9l?=
 =?utf-8?B?cEpXbFF2NXBmVHozVmZkanpnNUFkd21XalBsZ2orRlRHSjhhTGZhMHZnUzIv?=
 =?utf-8?B?eUIvNENzNnl0STJsTVNoSmNreWlEMWNYNFhxczFQQm1ydmxKQkd4L2hCNmNl?=
 =?utf-8?B?MFhCb1RuMWNIY0lWOEdid3lnMUU2MkpGc21QR0ZnbHBjMDcrc1RmandDa2d2?=
 =?utf-8?B?UlpTSEhBZ1JNdEpZNDN1Q1p2WnR6UG9laTl1SDdvWWpncmxhbzRIdFNDeTda?=
 =?utf-8?B?Z3Z6ZDl2eWF4bUhDb3BaeFErTWExc0dEeEhkeUVQdEhxZnh5T0M0WlcydWwv?=
 =?utf-8?B?bmQvNGhKbjd5bnpRZUlxR3ZvdmwvTGdGcjcxRlNnSEQzK0x6SFNuSjdxSGpW?=
 =?utf-8?B?d3FZeDJpZkdKalVlVDBuSHNSQTBGRTA0OWNIK3FZL1UvNTRka0xTSEw2UHRQ?=
 =?utf-8?B?UzVFNS83dTQ5Z3lkNmVrMCtrcWJEa3QrcXRYdW5ieGg0R1N1R1BySklHSk1u?=
 =?utf-8?B?VlRQRnFiWGFIaGswWFF1U2VEUitKUFFnbnR1NVZqY0k1dk9xczdWOTZNMnhR?=
 =?utf-8?B?Q0VaUHpTYXhPcStIamFPb1ZTQnNUQXBNenQ4dHFsYkQvdlRoWXhGVkc2WVA0?=
 =?utf-8?Q?YOH2is5VGvi87?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?em1zSHRHc1Z1T1lDekR2a21nUXcrdGdjYzZFeDBlSUtaSTVadVgyOVQzTUZB?=
 =?utf-8?B?YjZ2WE9vRlo5US9ldFFNU0lLTUZrSlZCcDdVRDNvREN2ekxLVzV5RHgvZkRo?=
 =?utf-8?B?eklZa1Z1dXdnYk9TWE5sb1RRZGtrQWZobkdtaThDWnAvRy8vM0d3NzVzN1NQ?=
 =?utf-8?B?ODdadEV6TXZOTnZMaTFpYzhVVVZrcVNGd0VISVc2YzhSOURscGRjMHVPejdO?=
 =?utf-8?B?cXYrUWg1bW80MmpxbWIrUVN4RUJGSXVmeFY5RzRVbllMeVlqWm5ub09pOHpJ?=
 =?utf-8?B?ZmdINm5TV01MMDEwNWV1Ym1YYk1iVnNiUU84S3lKYzByUEFpeFNmekRCd1Bp?=
 =?utf-8?B?OVRUTHY0azlZZGd5aFNvRWsrY2VXYndCa0x6RFhKU05qVksrMmtJaGtIclhr?=
 =?utf-8?B?RTc4MWVtdERBTTRnbnUzSG5FRC8xRlBjaWdLK1FUNGNCeDVJRFV3c1ZENnMx?=
 =?utf-8?B?eUNhcG85VGxOMXdoSC9NL0VkQUdEQyt4VjQrMjNDZjlrQ2kxZkhCK1FGN1ZK?=
 =?utf-8?B?ajM5eUJkcXBCemdnaUVwejA2NEJsRGphRHBZNWdiTzd5YUZFL3ByOXc0VWQr?=
 =?utf-8?B?TmNHWk9TMjc1UktyMHRIOUdWZUs1L0Zsc1hNZWtpOXFXMldWdnErNDYrbFI4?=
 =?utf-8?B?elAyZ3FoTVI1KzFvMjJmZmZKVW1ieWlxMldMSWF6amh0TDNDYU9MNXA1OWhx?=
 =?utf-8?B?MDNSV2JmeDF3Rk5aMGYvNnZxcTZKYzdsTGE1L1lTZ0xCRE1URXNDK2d4cHBm?=
 =?utf-8?B?RllaSFliMjR6QXlRVE5GUk9qQm9UcXRrQkh4UGpMdGNMUHl5elIrZk9ocTR6?=
 =?utf-8?B?RnB1UGlXcSs4MWxvb09iSEZPUHF1TmE5RG9Eb1NDWGt1djlUNWppNWFFQnpE?=
 =?utf-8?B?U2p1MXE5U1I2Q21mdFo3VmR3aVhyeEQvcEdzWldxZzNNcmhHcC96emN5dWRC?=
 =?utf-8?B?dnBUZnpLT04yWWV3SmIwM2JxVTd3VW96RlZ2cUxHN1cxcG52Mld3VTR5U1ZV?=
 =?utf-8?B?WGZTM05qblJFT0ZtZWZJUmVHQTJzODlWWFhBc1BUVEo1R0gwWVdpWWhwOTlY?=
 =?utf-8?B?eFFFN2R3ZEkxeWRqZERJK1VQdUFqZVF6SkFaeWlwTWlpVVU3Z0lzRUNDVytw?=
 =?utf-8?B?SUx0RS9Ob3lSOWtpVkJTZWFnWXpJaXVWdmxvQngxdGN1K3FORnFFUTd2VG1r?=
 =?utf-8?B?SE9ES09hZ2EvVkFsVFRuYzJGV3JsQU5PS2tGc05KMVd1dkxldzVkbjROV09M?=
 =?utf-8?B?MktYV3Q5aTMySlIvVjRQSk5KaHdsNHVMZEl1T3NERElXeU4yanFLb2ovUUJ0?=
 =?utf-8?B?MDVEdXRNd1o1YndROWw2eTBlNG9QcWkxb2habHh1dGhhcHE2MEJ5MGtGYXY1?=
 =?utf-8?B?bndCL1BxcUNQMGZnTjRSTUN6ZWVRK2o0cndmMkRvdkNaWm5QSTFJSkplSE1k?=
 =?utf-8?B?NWhYejRBNCszcXNacUordzRGZVVCSTc0RXF1alBYeGJDWnRaUjJXRWhBeDgv?=
 =?utf-8?B?ZGFVek9aUUlSNUsybm11SnVCSkZXdFE1LzVCSERkRkxPeGdRdjlZWENmUWZM?=
 =?utf-8?B?dWRFUGY3YytveThxY2x5b2pNVnlST0ZKM1JHSTYzQTR0VlprM0ZaZWdvdWNa?=
 =?utf-8?B?Vng0OVFDVWNPcXVmTEw5c01MT2hxUllCTlFpVjA1dkUrM1REL3hhVkxoWVdn?=
 =?utf-8?B?c0JBM21XSnNaWVdaN1RXT3h0QXhqZGgzZmdra3ZmbWNMNWRTZWNiMDNZU1hn?=
 =?utf-8?B?V20rN1pLUVRiSTN3TzE1OHpqWjJydzViMmw0VXFpc1poMlROeXlFR2haOE1W?=
 =?utf-8?B?bndodmRQUDN0amlTaFREUEphTmN1bUxrQmM5VC9JcmlzUEU0TlFTU0JlRUtw?=
 =?utf-8?B?Y3F3dkNkbVB6S0FIc1ovYnNNNWx2bDdQb094aURNZ0VxSnpTSklENVA3d2FR?=
 =?utf-8?B?SFlkMXFzN25QRDRKUlRUV2V2L1BRRWNlZmN6Zjg1YVZjK3ZwQlVxZnYwUmw0?=
 =?utf-8?B?VVVIV2ZSL3cyRmJmdHZudFZ2b29HczlCY211Z2V6b3FUdmVmYkovbitJQ3No?=
 =?utf-8?B?TUFnaUhWN2NtRU43Y2VtbGxRVjJOUXNuR0s0Sk1mU3hTbzRMYWNhcGZqaWRk?=
 =?utf-8?B?QVhCditJSjA1dFYrRk84MGQxTmtNdTM2TEtna1N3b28yQXpSVUR5ZDhVeWtZ?=
 =?utf-8?B?YlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7637eec6-e683-43e4-222f-08dcdc250cd2
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2024 23:11:27.1517 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TRwGCQ37XqGLJSo7z3hrkQIA1J9lERlPKOXzaFUPCZZ8VqM3xilUl4V+zixqeC7h+pAExRPBj/Ixe0X02jaI67j2seVLipD7yOEs3yrIXvA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8100
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727133093; x=1758669093;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tnewv2rx5R61sVSXUCK5h2Ka2OLsK16PBPTDs6L+IJs=;
 b=LU8cY0DhSSlsbLYJGTU3DiSlhT+BV3BMr7WdLeGk69pORX3nG3/QQFpL
 AObdj1OK6CUtHuyzB7+8KkHI3KDl+G7RYwMHgQo8Ixw3kClofElQM+pqD
 924kTgp+mkbVBdDy74A3G+uW6L4x245iVFGv5Owy4Qbqo5ixKRgIZCm6e
 7qBCzmJEKaV8SjJBVMHOLeM2TAG3mKOpPrTlvK3u3UVgI1rwg2HbA5nk6
 x0bl7hMGruW0kYVaxNoE+NzHiKMBZqeTfxLBuJ/FfVH73uhyhQ6jDcN9h
 vxvhHZwOZAaeZ6ywtMQlcnVqzl7Sj/I+34NlVSX4Rz40as0cv8uxKYeGg
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LU8cY0Dh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igb: Do not bring the device up after
 non-fatal error
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/23/2024 2:22 PM, Mohamed Khalfella wrote:
> Commit 004d25060c78 ("igb: Fix igb_down hung on surprise removal")
> changed igb_io_error_detected() to ignore non-fatal pcie errors in order
> to avoid hung task that can happen when igb_down() is called multiple
> times. This caused an issue when processing transient non-fatal errors.
> igb_io_resume(), which is called after igb_io_error_detected(), assumes
> that device is brought down by igb_io_error_detected() if the interface
> is up. This resulted in panic with stacktrace below.
> 
> [ T3256] igb 0000:09:00.0 haeth0: igb: haeth0 NIC Link is Down
> [  T292] pcieport 0000:00:1c.5: AER: Uncorrected (Non-Fatal) error received: 0000:09:00.0
> [  T292] igb 0000:09:00.0: PCIe Bus Error: severity=Uncorrected (Non-Fatal), type=Transaction Layer, (Requester ID)
> [  T292] igb 0000:09:00.0:   device [8086:1537] error status/mask=00004000/00000000
> [  T292] igb 0000:09:00.0:    [14] CmpltTO [  200.105524,009][  T292] igb 0000:09:00.0: AER:   TLP Header: 00000000 00000000 00000000 00000000
> [  T292] pcieport 0000:00:1c.5: AER: broadcast error_detected message
> [  T292] igb 0000:09:00.0: Non-correctable non-fatal error reported.
> [  T292] pcieport 0000:00:1c.5: AER: broadcast mmio_enabled message
> [  T292] pcieport 0000:00:1c.5: AER: broadcast resume message
> [  T292] ------------[ cut here ]------------
> [  T292] kernel BUG at net/core/dev.c:6539!
> [  T292] invalid opcode: 0000 [#1] PREEMPT SMP
> [  T292] RIP: 0010:napi_enable+0x37/0x40
> [  T292] Call Trace:
> [  T292]  <TASK>
> [  T292]  ? die+0x33/0x90
> [  T292]  ? do_trap+0xdc/0x110
> [  T292]  ? napi_enable+0x37/0x40
> [  T292]  ? do_error_trap+0x70/0xb0
> [  T292]  ? napi_enable+0x37/0x40
> [  T292]  ? napi_enable+0x37/0x40
> [  T292]  ? exc_invalid_op+0x4e/0x70
> [  T292]  ? napi_enable+0x37/0x40
> [  T292]  ? asm_exc_invalid_op+0x16/0x20
> [  T292]  ? napi_enable+0x37/0x40
> [  T292]  igb_up+0x41/0x150
> [  T292]  igb_io_resume+0x25/0x70
> [  T292]  report_resume+0x54/0x70
> [  T292]  ? report_frozen_detected+0x20/0x20
> [  T292]  pci_walk_bus+0x6c/0x90
> [  T292]  ? aer_print_port_info+0xa0/0xa0
> [  T292]  pcie_do_recovery+0x22f/0x380
> [  T292]  aer_process_err_devices+0x110/0x160
> [  T292]  aer_isr+0x1c1/0x1e0
> [  T292]  ? disable_irq_nosync+0x10/0x10
> [  T292]  irq_thread_fn+0x1a/0x60
> [  T292]  irq_thread+0xe3/0x1a0
> [  T292]  ? irq_set_affinity_notifier+0x120/0x120
> [  T292]  ? irq_affinity_notify+0x100/0x100
> [  T292]  kthread+0xe2/0x110
> [  T292]  ? kthread_complete_and_exit+0x20/0x20
> [  T292]  ret_from_fork+0x2d/0x50
> [  T292]  ? kthread_complete_and_exit+0x20/0x20
> [  T292]  ret_from_fork_asm+0x11/0x20
> [  T292]  </TASK>
> 
> To fix this issue igb_io_resume() checks if the interface is running and
> the device is not down this means igb_io_error_detected() did not bring
> the device down and there is no need to bring it up.
> 
> Signed-off-by: Mohamed Khalfella <mkhalfella@purestorage.com>
> Reviewed-by: Yuanyuan Zhong<yzhong@purestorage.com>
> Fixes: 004d25060c78 ("igb: Fix igb_down hung on surprise removal")
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 1ef4cb871452..8c6bc3db9a3d 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -9651,6 +9651,10 @@ static void igb_io_resume(struct pci_dev *pdev)
>  	struct igb_adapter *adapter = netdev_priv(netdev);
>  
>  	if (netif_running(netdev)) {
> +		if (!test_bit(__IGB_DOWN, &adapter->state)) {
> +			dev_info(&pdev->dev, "Resuming from non-fatal error, do nothing.\n");
> +			return;

I'm not sure this needs to be a dev_info.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
