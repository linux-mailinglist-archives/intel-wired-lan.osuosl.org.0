Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B81939CDAE6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Nov 2024 09:51:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C90E94083E;
	Fri, 15 Nov 2024 08:51:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WSsMj0oEUmoc; Fri, 15 Nov 2024 08:51:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DE5274080A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731660678;
	bh=Y5I6stExWQHo2LPXjCDokOqszHj4VABsPdsjDuzTsYY=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RkPlpOhjx+Bi6i7MFvKfIZoC+uV5Op8x97PzV53IX5R8arB+cHtxCx/yOZjtMHdmm
	 I0DkXOJnwuIjmBy6Z3mDaMFO/A16VdYl6PYNyIgz4h0nlilM+XHPbzPBlNBRpjD4Rn
	 TXQDj+60wBTq5oifZJA/KI6Y+ZeQoPTaMhZFyuP462I/e93XRDuRWn1clFPGsCy7EK
	 LlO+3nQXv8jtddHCXAmuAzXGPqCoMrygHkVxmvshiP4/USZ9UbueQlEJfitL8DKTJ1
	 UcE8Q5cfnaTNovU2wDxz9XHR5ekdjN+Q9phIhPdCxMDFc/9eYPjPLsfNO6PsPFzsw9
	 chJiw8HoPFPoQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE5274080A;
	Fri, 15 Nov 2024 08:51:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2544727DF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 08:51:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 05F49607CD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 08:51:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MjikpWa7mLur for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Nov 2024 08:51:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EE3D6605B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE3D6605B0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EE3D6605B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 08:51:14 +0000 (UTC)
X-CSE-ConnectionGUID: pVQ6nXCNRXuaWrWsU8GZLg==
X-CSE-MsgGUID: Z6p5mR4jSm2Mclew9Gj+Cg==
X-IronPort-AV: E=McAfee;i="6700,10204,11256"; a="42740111"
X-IronPort-AV: E=Sophos;i="6.12,156,1728975600"; d="scan'208";a="42740111"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2024 00:51:13 -0800
X-CSE-ConnectionGUID: rv2H58ohSCasVGpk02HMOA==
X-CSE-MsgGUID: N5EgkHoXRl+ApwX2nBDOqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,156,1728975600"; d="scan'208";a="88376905"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Nov 2024 00:51:13 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 15 Nov 2024 00:51:11 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 15 Nov 2024 00:51:11 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 15 Nov 2024 00:51:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nI1KhY9Warok8b6R9I5v/27Y/zNT/ojRevIfxDeaG6SUyXbQ9rZLJ65BdbSWtaozs4cKIFt2LwNKJxzMzzU2BYw3DRvgqKxwpgvgiC0N11QbC0ZAP36/b96RK7xikcedcFTONGwMcJp9cVUA20d3gTpr9RaiqlA6vxDu1mCZshXsIrRfwn+cf56FCx73iwUQZ0AEPwaxX50N1nwdM0TM5MHDAhYfYj7dKc0MFer5D4Yr9dy7j1cXYbntR7/rt87ozabjtkAMYaj2B0X86vkG8i9vMFm4ZmeBidkxzpIQLUZuk3n1jbG1n5fyF3yQfs53v/0RaHT/DEsWU1ia0MCn0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y5I6stExWQHo2LPXjCDokOqszHj4VABsPdsjDuzTsYY=;
 b=f9EVPRamDy34FiXIr5EIPUX8NHYwZ1C3Jg0BTkp84r+E3fvsHu+0y/ph9S2Fim2hLCvw6yc8ja4hb6qZy08ng4gSBMRdC3Ghh8BQpwQIv9h0obcIYsboI+urhCDSdNIX7n0o42dbEtFJVO2SSo7uNfZmkyp6flx9TQdxpCJeFUujB2UwB7UTSpi7SwktG2ZkC6vdrNcX1yAxlo1MMhLYdeMirq3cjQ1gXjS6YdaQQkbxFHpXSvQA00Xzlbp4W8wvZdPHUpIHNtZLK93uH685N57XN6BHSY8sVzEP4Lq5y5sti3NpR3O22I15Spl7Bdi9B1fWRRWMpT6pSXTARP+LJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB8086.namprd11.prod.outlook.com (2603:10b6:610:190::8)
 by BL3PR11MB6411.namprd11.prod.outlook.com (2603:10b6:208:3ba::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.17; Fri, 15 Nov
 2024 08:51:08 +0000
Received: from CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3]) by CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3%6]) with mapi id 15.20.8158.013; Fri, 15 Nov 2024
 08:51:08 +0000
Message-ID: <7c63c3db-072c-4f44-a487-f7e7de9f39e4@intel.com>
Date: Fri, 15 Nov 2024 09:51:01 +0100
User-Agent: Mozilla Thunderbird
To: <jbrandeb@kernel.org>
CC: <jbrandeburg@cloudflare.com>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, Dave Ertman <david.m.ertman@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "Czapnik, Lukasz" <lukasz.czapnik@intel.com>, "Michal
 Swiatkowski" <michal.swiatkowski@linux.intel.com>, Pawel Chmielewski
 <pawel.chmielewski@intel.com>
References: <20241114000105.703740-1-jbrandeb@kernel.org>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20241114000105.703740-1-jbrandeb@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI1P293CA0029.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:3::15) To CH0PR11MB8086.namprd11.prod.outlook.com
 (2603:10b6:610:190::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB8086:EE_|BL3PR11MB6411:EE_
X-MS-Office365-Filtering-Correlation-Id: 5e09d4d4-4869-4d02-3f9c-08dd0552a594
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eGRJS0dIdWZhVi9DNlpwUlVsSzlBY1E5aW1uRDJPcG5qMndCdEYxWEN4MkMv?=
 =?utf-8?B?bTZiRzIrRGg0WHQ1dDlFSnVQTm5XblNTVU1ES253NjEzNDkyTTN5UDcyTGNB?=
 =?utf-8?B?dFN3OS9Gc3FQcURzVkhWR2Fpd1NFN2dpUmhxdGgvNmJvaE9MUyswblRRRGQv?=
 =?utf-8?B?MFEyUHkvV3UrOW96K24vMk5zbkpZc0NNN2RQSURDZk1VUWQ4UlN3dkUxUlpm?=
 =?utf-8?B?OHZrenZhdzh6Tk9QRDhFNk1PL0dlVndwMkxyYUlOWU9mQU50dHp0bzdJL3g0?=
 =?utf-8?B?Y2VuVnVhblZDZHg1c3UvNEpNK2pQRFQyUnUrSkVjckxCbkRKcU1pbVhiSi9P?=
 =?utf-8?B?Sk9EQlJ2bHVvdlgyWlRZR3lKK05WcnJCZVV5VFlFTFo5NWNkQmt0TlpER3ow?=
 =?utf-8?B?SG05bVg0M01BQ1FGaWpudzIxV0E4QzVNZzdPN1JDcnBHWit1N1BTdmF1dzBm?=
 =?utf-8?B?bEYwQW5wQ3NHbms3bGgweW5qbFgzVFI1WS9PUDVMYUdhRGpyQkxTanVZV2V2?=
 =?utf-8?B?engyRjA1d0ZzdUlVZHNjOVg0c2hCNjV1OGFDeTQ2V0FYQkhGS2JFV3dRUUg0?=
 =?utf-8?B?NXNpdVBhQ1FMZ2lLejFGTlgxbG8wNDFmVFYrWDJ2UmpjOG1sTWpTVVJINkFa?=
 =?utf-8?B?TnRsV0xGbDQ1VjB2ejJGeHp1cnJxLy9VU1FxR1l4Q1FhZGRDVitUczNqYjkw?=
 =?utf-8?B?QXcwZ1h1VHdXbGEwVmVuMXp4bTE3dFlXdzJPTEFWaHY2d01XZjVLTFROd2x4?=
 =?utf-8?B?bUV1OXBYWUhndmJnZjVadHk3N05mcXVvSVdIam94aSt4NjNrOUlyeGRVZU9p?=
 =?utf-8?B?Y1M0OE9GSHNKbmtmYUxuUHhmVWMycm02bXhnQUhIUzFWOENpRm5ZYm13dnJZ?=
 =?utf-8?B?bHJGdnpEdmY5UEJJdnhxQlg3aFE2R1lUMTFVVkJNM204dEthSXN2TXhIMHQ5?=
 =?utf-8?B?aExGMUJyMWpiRkxBNlFmbTByaHhFK2F1U0hxT0hLc3h0SEduT1YrWmV6L2xZ?=
 =?utf-8?B?am9POHVjRDg5bDhUVzBEaVhsNENpWVZkT0tBSGxuTFRvUmgwOWx0bmxOVXRH?=
 =?utf-8?B?Ym1uWUdwNWtLTXFGRTluU1hmNkNLQklPUENuNzBvcGFUTDJHVnFnT0FOekJV?=
 =?utf-8?B?Umd2cEJGZ0pXbjhzcGNSSWRJem9ZSTNYRFMxVER5UlQzY0xXdWV0MGszdnNW?=
 =?utf-8?B?YTVEczlOYVE4WWY5ZXFXV2dLODZUY1hTYWtxd05WNFUzMHBJMTJqOEg3bDFp?=
 =?utf-8?B?STVLc3JxMnJkdEVIVTdOaXZ3L1RNSXZtY0ZlamxJTVIzV0hOTDBZdnZMWUw4?=
 =?utf-8?B?WHpRbXlkZnh2Sk14YjRsdThOWGwyRXlyeE9lS1pSd0RRZ2pwZTJiOWd1TW0z?=
 =?utf-8?B?akhOYnUzTmlMbjg0TjJrZWVOSGlMeVljdVRwRnZOMEU3UEVyalhGWUk5OFRT?=
 =?utf-8?B?ZFh2b2piVnM1ckN3RzB3T1grR2RJT093OU9mRnNGbmNnWDgwY25zTDV5UjQ5?=
 =?utf-8?B?eDlYR1FzM1Qrdm1WbzdWVXdGQktIY2d6T3FLdXl6dDB0RERzSWFLR0ZPZkVU?=
 =?utf-8?B?NzEremp2SDNzY01XYkF2cjNLVHhvdEJNNkRURlg0ZzZwUEVsbGtnMFVzZVNx?=
 =?utf-8?B?eEprRW5hSEhZV1hvTm1NcnB0QzJvOWg0WWRVMWZYTEt0OTljTGZLb1lGR2Yy?=
 =?utf-8?B?SEZ5ZXJqNTk2U3ZKdGJERkV2VmphdGFjQTUxa1lVNWs5bEljQWtUN1NRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB8086.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SUNHY2k0VTQveE9HYTJnYU9MZUF4YVkwN24vdHA2ei9VYzJkVGRuTGtReVAz?=
 =?utf-8?B?KzZpUWdQWGY3ZkJoMVM4QjVRRzN0ZHQxNUxTRFhEZVp0dHR2a2J3VGRET09q?=
 =?utf-8?B?Sk80UEtibEErL3BVbi8rMVU2c0k0ZlAwMXp4Y0ZIT1pDdmVFMUhLY0tmMXQy?=
 =?utf-8?B?TFo1RmF2SkduVCs2YTNyemhPb2VEUmVIaktONEdaWElQR3djR1Q5S2xKVmtz?=
 =?utf-8?B?bzFQbzdOU2hYelRRVmM5bmx6ZTVKdThQNldnL2JlT29HMS8zUUkwSnhaRDdK?=
 =?utf-8?B?Z1lMOTU3aVhxcWtjQTBEcHExM1BtL2RZb1dRR0d5MzIxQlh5NkM1Szk4SmtP?=
 =?utf-8?B?M2RMa0ZrR0xxVVcxOFN5dTlIZ1hORC9lbzJaMXExSzRYYjgzNGZtMHJybFhS?=
 =?utf-8?B?WG9rTElzYjZpc25DS29WRHpObitjRFZRQllWZndwNlhiK3AySW9STGNVSzZI?=
 =?utf-8?B?d1FYaGNvZUEydTVGMktrM2EzVE1qSnFUdU9tV3NJZXdBT3JZMmRTWnFxWllI?=
 =?utf-8?B?ckFEeWhnOU1YeU5tZWtwbm4wVVBZU1JPMUxIekc3bFAyY2VvVkRnTzYwVjAy?=
 =?utf-8?B?aU5Mb0JpS0JTRzdMTkQ1cElaTS9qQmdMaGpNa214cmxodW5sL2tsZXlybHd5?=
 =?utf-8?B?KzlxQUw5Rnl0YytEaDlQcWJsS01IZmRSZklwcUdaZGN1bFdCenJTTDU0MU9P?=
 =?utf-8?B?cE9sR083REgwOENNZnQwZG4ybng2NnFBV2ZZRnhwTkFOTXdzanFSTkQ4aG5Y?=
 =?utf-8?B?QUw2eitQSUY3UmU5S1BTTjZDUDBXVjZFNzZCNjJBNVUwSFdDRUdxVXpsR25n?=
 =?utf-8?B?ZkN6Si9LeVJ3VDFuclZoUmlxZFcwWTFWN0ljQnRzWTBOYkM4R1FrK2hZVi9P?=
 =?utf-8?B?V2dFTnRPN1BXaDFZMGg4U255UkQrd1YrcE8zOU1OdDhtc2Y2bUR5UFNKd0dC?=
 =?utf-8?B?dFVNWVpVWEZwcllDdFIrTCtWUlhUTnc5WXlZdS9USWlSams4QWZNSzFKTDdR?=
 =?utf-8?B?SnVidDYrYnJvb09jdkdiUGRjbDREZlVGUnRJcE0zRGdqWUpOZEoyZFVnUEpm?=
 =?utf-8?B?ckhQNjIwbDNzMUZPVTVGRlFlQTcvUTBqdXNMUHBEYVhBc1ZsNUtvV2dKb01Z?=
 =?utf-8?B?Z2hLTGhzS290OTVDSkxKRDZqYk1MeERBMlF0Y1hCaXl2VUZ1RUxjWnNFQVFM?=
 =?utf-8?B?OVUrOHMydUQrZkRlaGRwcHA1Q2c5Y3B2ZDExR2ZUN1FaWDFobE9VTmRmRnFh?=
 =?utf-8?B?OGVBL2F6YTJ5Yi92MmxLNzVsRWhXb0U2Q2RRbU9XS0prNGZ4elhGUXpaQUdV?=
 =?utf-8?B?aGpXNjlvdmZ6Uy9oVnFrbWEvWmpla0VzNmVmZk1Fd01Jc3BFd000NThGaWE5?=
 =?utf-8?B?emZDSjl2V1JZbC9Ja3V0WU5Cb3BLTERWV082WTJwVVdBV0hsS0k4TWpYVkJl?=
 =?utf-8?B?ekV0NVVRSEpScGZyK0JMWit4Ri8xM2UwN3VVdFh2WVhTNXRFTkNqSnp4dDJa?=
 =?utf-8?B?NTRmelpPbzI4bE4xNG9peWtrTDVzWGZwS0t5QzYyU3VrL3lIRjFJRkZaZU4v?=
 =?utf-8?B?ZlBiaEJ1dC9NaW1pY3krWG1QdHE0N2FSNWdFdlRKZzd1SkRTTEVTbHEwaXBY?=
 =?utf-8?B?MWFKc3dYbkw2Q2Q0MktQWDk4ekFucE9ySWVzSnZ0aVBrUnZzNGpZcE1BTGta?=
 =?utf-8?B?Uzk4SWkxMllzNzBpbUpvdTE2RXhwZEZDWTFjaWFEYUxmTFBKaXJIa0MvUk9H?=
 =?utf-8?B?TG9ldFFpS2pobmJNMFc1aTdzUFU5UCtBV0JaczlqQndOeVVTd2t3V3lRRmlX?=
 =?utf-8?B?NUJvbnNjK3RCdk1tTzJnYUd2VHowNnNTMEZRQmZUMldseG9TOUxxQVc0b3M5?=
 =?utf-8?B?OFIvMnIyVHRoN2RWa2VYWCtUMVJQZUE0ODlCTmdjVmthZGsyR0MzWHR3VFNn?=
 =?utf-8?B?bXdpZnF0dDlmU0xkUGkvcm9oSDVjdWxWSHpzaE5WRjJpRC9GVzVCdDNVYkZP?=
 =?utf-8?B?NTM1R1RLWktQZHB6NEt2M2Z4Wk1OVTRLUlIyVHFnUEV1dVdsTUxSMHdvRXZY?=
 =?utf-8?B?dHhQby9Keko1RFFNNWtyWlVyVmgxMHdKbXNwcDk2N21ObUg4cXZPYWNONWNl?=
 =?utf-8?B?ajM5ZC9HRVp2VTR4UW0ySGNsdmJFdzNwVmxxQ0VjbjdSNXpjbjVsWVh0Tk1I?=
 =?utf-8?B?aUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e09d4d4-4869-4d02-3f9c-08dd0552a594
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8086.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2024 08:51:08.2354 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V94NeC4wMjdvXM8regPB993fjMMoYpLdPjrxScurZsd1FTz9rDrRSjkNOyKseAWN6tFBOp4fYp58aG53CFXE6mIkZz/NhBx6P1YjWIgHt1k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6411
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731660675; x=1763196675;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=N68Uvl8YaFMYcAMu4o3gNqTUihshnYfKZB3u6YAEKX4=;
 b=CvRX5B/uymEJf858PVJ3MfuSYzqcXKjVW+sND2a/qiECgQ6WVHZ9CHyU
 0Ad3zbAn/My3yX7ztVIHGNV0/4pIbcdjisodqUWN1FaQe/xHq3yCF0tUj
 SJGIhX0D+SbmZ8OrhTaFbjh26SZT3DVeFdNQ3Nw1th0sFmuz7kvkYQSUT
 8IN4Mc5kPryUJyReTkUS+9vHM8a9MunaVUCFRozSn/pw64+Xi5Z0l9KxZ
 sNdgX2qm3HdjogOQjtL24819Ah1GkLXSlWMzrP10KzR38yTg36UTy1Ee5
 jp/kAMMlv/VDfOgMw7aNXo4CvHAD5PeQM4+BqZjZ2arERUGi/K0n4ruTc
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CvRX5B/u
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: do not reserve resources
 for RDMA when disabled
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

On 11/14/24 01:00, jbrandeb@kernel.org wrote:
> From: Jesse Brandeburg <jbrandeb@kernel.org>
> 
> If the CONFIG_INFINIBAND_IRDMA symbol is not enabled as a module or a
> built-in, then don't let the driver reserve resources for RDMA.
> 
> Do this by avoiding enabling the capability when scanning hardware
> capabilities.
> 
> Fixes: d25a0fc41c1f ("ice: Initialize RDMA support")
> CC: Dave Ertman <david.m.ertman@intel.com>
> Signed-off-by: Jesse Brandeburg <jbrandeb@kernel.org>
> ---

Hi Jesse, it's good to hear back from you :)

we are already working on resolving the issue of miss-allocating
too many resources (would be good to know what beyond MSI-x'es
you care about) for RDMA in the default (likely non-RDMA heavy) case. 
Here is a series from Michal that lets user to manage it a bit:
https://lore.kernel.org/netdev/20241114122009.97416-3-michal.swiatkowski@linux.intel.com/T/

and we want to post another one later that changes defaults from the
current "grab a lot when there are many CPUs" policy to more resonable
