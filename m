Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE698FD7CC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jun 2024 22:51:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 04DE0848CD;
	Wed,  5 Jun 2024 20:51:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nMNmE9ZZoJqz; Wed,  5 Jun 2024 20:51:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 31ADB84637
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717620693;
	bh=X4W6Na8mG+6EcbtSQfEZMhmil5l9l+lWodIKFpw//Q0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xK24wkS+EpBzyqUXUHVXhF0+FeXlDQWYRvn55/xa2Se2TaIjS2mRwg/213RugWYQe
	 ADJAIFFFEV3Wq2RHA1FE9M87MVYWOIrDjNLEMs/JKKFFqOocf6TlGky7ZJ6EkyJr/p
	 5de8pgrLDU8Y3zq7FDluS85p8Tp85t+EbCkAC2wZ0ndX6dmj2cBQ+JZVE7hOEJhewS
	 KFMvGyUv4joQlPHdrtBQOlEQuidtxQRdg4WfL1m6KCbVKOlHlFDlNOwcj8x2Kl98Fd
	 Qop95Y8H1NqIs6PogGtpzqisQYi6/kf6or0B++bzfx6jeTEdlh9lJBoBZETVAL+lGk
	 10ftJIktScB5g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 31ADB84637;
	Wed,  5 Jun 2024 20:51:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8C9EC1BF5A9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 20:51:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 849DD40534
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 20:51:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CdkEQbe0jbco for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jun 2024 20:51:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 469474042C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 469474042C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 469474042C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 20:51:29 +0000 (UTC)
X-CSE-ConnectionGUID: ZTO+EKXSQ0uWn1vWwaPpjw==
X-CSE-MsgGUID: flnGIUphSo610/90BXgbCA==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="14138304"
X-IronPort-AV: E=Sophos;i="6.08,217,1712646000"; d="scan'208";a="14138304"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 13:51:29 -0700
X-CSE-ConnectionGUID: RUTz51kPS06sRJ3y0jE8PQ==
X-CSE-MsgGUID: ZE/PS2+2RUS2Wb1px91U8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,217,1712646000"; d="scan'208";a="60909870"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Jun 2024 13:51:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 5 Jun 2024 13:51:28 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 5 Jun 2024 13:51:28 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 5 Jun 2024 13:51:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=duoAvv5urZIGn0+eTORNZmmSSVZOe6MRqv6Xeoah28QgQSWuEbHslyyOumDHmSguxDWh+nYTXkY8vQDlOTyPMwwCI3dWdLfVQ5QS01JE1+NjUCEUF6NCXlE7Kce2itVr8fxtquPSK0Elt+GFTjIKgNO7IMMxiJxCjd8HbUeXN3OR3gxbm56lIh8ecfOC+9L1Tw27ny5Br+bnfWprCHnxjifkpEgN692cICUBHGG9epIxZwsmSl9vUTfIC8JIOHFkcNdOwtQibrU88EfxOYZ5HboYC4gWKZG5w8hHOyPDuE0qxMcy9QWJCMjmN/79w6sB77MgP3WoZ741S67agR4ByA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X4W6Na8mG+6EcbtSQfEZMhmil5l9l+lWodIKFpw//Q0=;
 b=SS/vHUV0F26vxJ2GxT/77sKZZWIKM7I3jTwL+PYbgYDDCDOqq6qspa0w2E+IO+GKhxSIEdwT+X4anpwfpew1+wmzef0tWLOUHCtUMratQSs9SlPWpSg6a8pI5h9oxye2gJf+bW3p3YnGOZJHENI7Xtk5qjx3zYRGhML9EnJbSc1ZDNjXpnt5gc1SNhd2DClDdZ1P4AmVDZSwu7juAbfT9AIl+uMiDIF81KJlH7DkupYVDCwyEaZbEbwfsrjIpRBbNJOVNb8M2kguXNIsJXVHyZEWHOChPz1LbNF953YtbW6nmWqdYBtTcZGr8PrN9PGhg67P1Kr8tYCXv8Zy0OtaJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA0PR11MB4557.namprd11.prod.outlook.com (2603:10b6:806:96::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.31; Wed, 5 Jun
 2024 20:51:26 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%3]) with mapi id 15.20.7633.021; Wed, 5 Jun 2024
 20:51:26 +0000
Message-ID: <ad56235d-d267-4477-9c35-210309286ff4@intel.com>
Date: Wed, 5 Jun 2024 13:51:24 -0700
User-Agent: Mozilla Thunderbird
To: <jackie.jone@alliedtelesis.co.nz>, <davem@davemloft.net>
References: <20240604031020.2313175-1-jackie.jone@alliedtelesis.co.nz>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240604031020.2313175-1-jackie.jone@alliedtelesis.co.nz>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0065.namprd04.prod.outlook.com
 (2603:10b6:303:6b::10) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA0PR11MB4557:EE_
X-MS-Office365-Filtering-Correlation-Id: 706efdfa-2a3d-43cd-3824-08dc85a14475
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U2MwYzZ5bGtLWk1OZXY2TUVRWWcraFZoY3U5L3pIMEJLWXBvdE9OUkZMdzJV?=
 =?utf-8?B?N0NucjBObDN4VytmNGpWK1M4and4NVZwd2dURDlNTlNNR2k4KzhpK0VXQ2Fr?=
 =?utf-8?B?TmJFYUNyNVVyZXhYVFVnUW9ScWVia2MzWHVNVTFZVnVUZzYybXpLZUc3MTNV?=
 =?utf-8?B?RHNYZC9rNEhCTytUVzhMSWVZWGhqVzh6YVVWSzN2U3NIMEJRVDE5ZGVQcFdH?=
 =?utf-8?B?aWlxSW4rODg2MCtXMy95VnQ3bnMzN1BpaDFUYjlEK2pBVkp4MVlXdDRSb1hR?=
 =?utf-8?B?T3NsaUx6OG1HUmZqRGhma3BpeS9raGIxYmxBTnAyMVEwQVVVWXV2TU1pdk5U?=
 =?utf-8?B?WThGa2J5QVhXM0VjRkdiNnR5UzVHOXNML1pCRXRXa3UxYXEvNmh5Smc2dHJH?=
 =?utf-8?B?ME5SVnE4MVJoa3kxdDhMR1JwNDUrcy9XWitqeC93alRMTjBvK2NTTFdiZ3Fr?=
 =?utf-8?B?RWxGWmMwNEpFa3BKbTZlRVlTT1ZjdnM5Z2xnZC92anVmUGZValZNVkd3K0tU?=
 =?utf-8?B?T016dnNRbFBkTXRkZ1NFMDc0SWROUitOSDRaT1A0MmxqckY0Vk8wRFp4VUxJ?=
 =?utf-8?B?VTVBK1lGc2cwaDE0MFpkOEVlbktlUkpTWmUycWxnZTdzVC9JTG5UUXZxU0FC?=
 =?utf-8?B?WHJSSVhnWERZM0FEYlJ6Y1Y0MEFPdXRxTTZXMXFHcEtPQ2wrVDkrQTRzSndn?=
 =?utf-8?B?V0NEUk5RelRYaTFic1BGRFExNTVwQ3pNb21rMlc0ODM0SmVWWmp5dURUMjA4?=
 =?utf-8?B?MDJHWlJqSUpDbWhZL01HaFFJcHNDOVFnODltcjR6M0cwWUZDMDA3alpDTnJl?=
 =?utf-8?B?TlZVbytoc3hSVVVZVmN2bWZkR2xJMmVsZFdhV1ZNSVJJMitwRGYvM2x1dmdO?=
 =?utf-8?B?OTNuMnk5U2FJQnFudk5TSkpqT3o1bVJoWVpvMGdSK1dhSVdYOFRPazhEUWgv?=
 =?utf-8?B?dGY4K0ZTamtYdWpZcWZGMmZCTUpHRDdaRFZUTUs3ZUxjM3pvUUtnRENnMlc5?=
 =?utf-8?B?VDVjb3lBVGhBMEtHNER3OVROUDZjL0N4VllLZXN5WGtRZktGTXo4YXNxUzNp?=
 =?utf-8?B?VngxblVGdVpyaFFaOGdZRFRaejdsM1JHMmtLa3U4ektXbEwvd3IvdDZxWXBU?=
 =?utf-8?B?Z3hGUXFpMlFKWERaR1p3d3dPT25wcGJzUFhFbDk2VG1MQlc0aTJ3NmIwNkt4?=
 =?utf-8?B?QlBkM01kZmhUMGZ5cTdydVRtRnlWWWFSaDYzVFpwQkExdkh2ZXJwc0V6WWl2?=
 =?utf-8?B?b2xwZ2pjWjB5ckN6NHlSMlBKanRZb2JhZDJoK0VMdzV4UCthK3hpbHNRV0Z5?=
 =?utf-8?B?MFpMMHkxMUR5NnBubXF5R1RXYzErNEM5N3hJd2pKNWFmUyt0eG5DLyszelFY?=
 =?utf-8?B?eVg5WUpwVWd2L2JWbG5TR0NIRDVWU1JZYlZXOGlXaHpYSEp2ZVJhdmlQNlRT?=
 =?utf-8?B?ZWxWQWNobGZ6b3FscVNURFRzQkcxaU14Mlh4cHBDMitLTFlrVDhTcVdob3Ju?=
 =?utf-8?B?NWtWcll0RGtieHB0L3N6emFKZjVhL0tJZ0ZCUXJZWk1FZ2JTTjRkblZVdTk2?=
 =?utf-8?B?L3VSdjJIaWM4ZFExZENmWW83L0JEekh2TzNleW1leEtjcDNuRjc4U2xtTHdG?=
 =?utf-8?B?SjA2ZTFCVzJUU3phcjloUnUwQlZ6WVk3STB1U29HNXgwbEs5ZTFXV2hGK2pp?=
 =?utf-8?B?Uk8vNEFiR0ZDMzhhSXd6dXp6aUxsM0RJVjkweFFUdWZXR2xjSXcxRU13PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VEE0V3M5L2ZreGo4d2NuUGN1WDd3djRaVFVNVHNKM3hhK3FsOGJFQnE5UE9S?=
 =?utf-8?B?cEJIK3VFR3Ntc3JJRFB4TldsNzBSVFpad2hzRWFRbzBwOE5wYldYb0F6VnQ4?=
 =?utf-8?B?WjBLU0YwVkpzS2ZjMlZxRy9EWTdzWWx4ZEFpVjVIYnVROUh3ZEhrUExpNzVy?=
 =?utf-8?B?MUU5UTdCcUEyMmNLUDAwQVo2ckljSkdIekVHeU0zN0UyR1JmSExSWGU5Qkd1?=
 =?utf-8?B?NkxOOEZ6UHVpeWw1Y1V0b1I2YWRtMXY3RkEvbWxTeVVWVTRHQW9kRHZNTVNa?=
 =?utf-8?B?YnlLRVp6d1EwaVRFamtoY1dkZndORHB1c1krZk53R0U0eHdCODAxQW5MZE5D?=
 =?utf-8?B?aGFNaHlHNmE3bUVwMjhuVE45U2FmTm9sNXN3WkpjNUhCY0xXSEN5RlM1c2hj?=
 =?utf-8?B?UkJ1UC9EOXQ1QjZmV3l0NU9QeHhpUkJUc0xmbnk3ZExLbExlVmxlUVpRQS93?=
 =?utf-8?B?bDVDUCtFbEVpYTNjN3VBU09GOEpKMDlYQVBHMHh5WVBFTnpJMko1ZXhWVS9V?=
 =?utf-8?B?VlJCeUFBVnhHN1lZRnZKR0JkbnB2bVgxbW5ManRGR293eFZzdXYzUGlwWXdU?=
 =?utf-8?B?SlJyTDNlZTV5WldWdDJ3b2swSkZIZ3hpWlEyUkhYVlp6b0twd09kN0ZnMHkv?=
 =?utf-8?B?VklPbWhuOXZZRWJrengyek96dGtXZXVra1E4K0lHMjZ0OW5tOWhZT1MzeDYz?=
 =?utf-8?B?b3EycHpzT2JFR2c4akVvTHVFVXA5dUpMQmR0SmViMXBBTDRTM01SbUNpVUIv?=
 =?utf-8?B?bGM2eS9FazF5Smh0NTUzK0JPR3dSL1NMc3IzZjZnTk92czBPTU5wTjd0NnpC?=
 =?utf-8?B?K25lTGE1SHdvb1BrNm9ZN2VoYjF0R1ZMem52VElvOGhYWE0waTNLdDFFSTJR?=
 =?utf-8?B?bVdvSFZFV0FnTUVBdnZ6UWdhL1BpRzgxanFKSHNheWlvbjF1bWZ6aWNJTXJw?=
 =?utf-8?B?WUlLZHZMcklsdnJkVWdiTG1JbktLR2VVMzlYVS9RdW5BN2lYZ2FQM1Jlc2xm?=
 =?utf-8?B?QWJrMG5uaVBWeWg5RWtWK1M5WDhTTktKTVZqRTVDWG5DclZTdkhycEJ0enUx?=
 =?utf-8?B?TFJ1UjdZSENPSWFEK3V6QXNlb05VM3V3WTFyTkt5ZHRXek9FclcvZmlLWjIr?=
 =?utf-8?B?Q0xpMk8xbzRycXBPblJyL3BPRjhzWVErc1dEWnF4dVhEck9iSGxERnpsL3JH?=
 =?utf-8?B?WnViWFZNN0FtVlZDeTdBL1FzczJTZHplVkt2emEzU2xyZ1lVdVRGaUlDcVRP?=
 =?utf-8?B?V21FSnEzL1NxMWhRanBiZlo2akNoWXVpa2MxUmYyZGRzeFkxVVc5c3Q3blRj?=
 =?utf-8?B?V1JBSG1BQVlVZDg5RmlZelJJKzg4MzU2WkpxVndqTEdBa1NVTmVDWVZ5ek1s?=
 =?utf-8?B?WnVzcnZXblVTbnlKS1p3OENDSjFGMVlUV1FpYWE0VkVjL2dKZTVRckZKNlhQ?=
 =?utf-8?B?SFJKYmh5OGwyT0t3Tmg5Vkt1cVdxRDBib2ZnQmRxeFI4TVF5V1RTZTh2bXRJ?=
 =?utf-8?B?UEpNYXpMMXR6L1ptZkR1K3ByUUMrZDQyTk5JNUp4U2J2OEdyWE1hcElNUkVu?=
 =?utf-8?B?TGZnc1FzMFlsNXZ4NndiZmU3ZmFmRHJmMmFYVmIwQUhjazR0VTdLc05WS0ta?=
 =?utf-8?B?R29rS3VublZ5VTJQS3lZZlMvM0Z2b2VRbVZxYll5bUQvUkRBcVBLWXY2SUxJ?=
 =?utf-8?B?REo0RTBVUmlkZUl1cVVjL3UvL09TSFRzSzdKdzgxNy9WdnpQOG9GZHQ2SS9r?=
 =?utf-8?B?MjQyQm9nbk1jakNnVDVZMk1WVFFNZWJsUklyWFdpeGV4dzN6bENXMWh3VUJL?=
 =?utf-8?B?dXFtWEpzWmpmQ2hBOW9uV0MyWXViNmpBb284Zk02VDFCMWVpNmhnclgyOEpT?=
 =?utf-8?B?OWtMc1dXVWVZY2hKbGtTU1MwckZnVElSV3lFa2xsdHFUeUx5RU5RamlPNU1P?=
 =?utf-8?B?Y21xSE1sTUhGNDNUUWJUczBkTUFCcEVhWlFTWEMvZ2M0Y3BjZnVZRUIyb3Nt?=
 =?utf-8?B?UmpqLzVZNjdWc1JZV3RnSzJJV3RyVGRtcnpMVkhSdi9nUjN0aXFTYkUrSk5Q?=
 =?utf-8?B?YTBwMUJtVVlIMEpKT0dQRkxRaVR1Q3Q3TmIxdjlWNURuQ1dvNEVqdVlOby9u?=
 =?utf-8?B?Y3dRTHpGWUhSWDdreWlwSFdzcU1XWjZySmJYU08vZld6T2ZTcDVUV2tvbzlI?=
 =?utf-8?B?ZWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 706efdfa-2a3d-43cd-3824-08dc85a14475
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2024 20:51:26.7284 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ed1XqdGNhdpOc9X2wkapzSY0Aml9QYiy2sJvwEnfexGv1WNdV8I8owp0li5XrOFeTZ3j4pI+ecFHGJ5iGlvDC+njqy9XGsfuv2yNtYgcIZA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4557
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717620690; x=1749156690;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pXmZ88hTQKSr6/Fg4B3HDC8n6Vy0l6ltHbDJxDCwEpQ=;
 b=F1tKXf5gG2XVRs8e9/L/sgdo51u8XKAnNnVIU99bH2Ikr74nTXC7tfey
 3tptyYeIY37my8HQRxXM1XhazC9wwZGcI08alRvAjptktL/r6QC5FaWN5
 DEdRpSAzHEPNz3Td6f4R25lesoKpqGtoLJuCmJBjMBBOSgcBngWf6Zk24
 6nwKoNsPFJA6Ze887P2Mkl308e7IlS+3aX0PKvauuKMXrt/lVIBaid5FX
 LKUVMBBjbepHMSqYr2d2jH7nJANhawCqsuzoEdiCFgyvocO/egDA5kuUU
 OQtPHL8oGCKiIIILFd9iIwJp3hmUM06pO5RALmdQf1+WMWDZC1X+ec9Ak
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=F1tKXf5g
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igb: Add MII write support
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 anthony.l.nguyen@intel.com, chris.packham@alliedtelesis.co.nz,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/3/2024 8:10 PM, jackie.jone@alliedtelesis.co.nz wrote:
> From: Jackie Jone <jackie.jone@alliedtelesis.co.nz>
> 
> To facilitate running PHY parametric tests, add support for the SIOCSMIIREG
> ioctl. This allows a userspace application to write to the PHY registers
> to enable the test modes.
> 
> Signed-off-by: Jackie Jone <jackie.jone@alliedtelesis.co.nz>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 03a4da6a1447..7fbfcf01fbf9 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -8977,6 +8977,10 @@ static int igb_mii_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
>  			return -EIO;
>  		break;
>  	case SIOCSMIIREG:
> +		if (igb_write_phy_reg(&adapter->hw, data->reg_num & 0x1F,
> +				     data->val_in))
> +			return -EIO;
> +		break;

A handful of drivers seem to expose this. What are the consequences of
exposing this ioctl? What can user space do with it?

It looks like a few drivers also check something like CAP_NET_ADMIN to
avoid allowing write access to all users. Is that enforced somewhere else?
