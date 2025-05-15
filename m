Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F537AB828E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 May 2025 11:28:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C239F41558;
	Thu, 15 May 2025 09:28:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lm9MLIiLheq3; Thu, 15 May 2025 09:28:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A12141559
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747301301;
	bh=z8oV/4SgjcQvHdB+Y2TJ5+I9DECPvgkP/ut6Iev6BHQ=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=M7gTZfeF1LFBe+fCU/GhFJU00eDjLp3y0cxYb6gwFfGy1DVSBkaI+nFZLgz75oygh
	 JFQaqWql06wIxIZ0gKD12R7/v4X/HwDNbVOmAMrUz45uOr7ORhTGjU3/nPZSbOQT/F
	 60QrRmtvt/U60VzVpVmvixRnKBSzxs6hdhq+dbSMnmnibbxss22aEqbIZdAIWcG00f
	 +4dOfKAuPiG4WAfr8NXdP3oQ8lOgMfRJTKZpNHy3cKF6sPkIFVe1+NXgRkrC8BuHmV
	 3H9AoovikfdEoO4r3jPzqS+gS5Mbq9cyaxS2ygxg/BYrXsTrhS25strfDH7S5ydj5y
	 Dvqj8yH3jOebA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1A12141559;
	Thu, 15 May 2025 09:28:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A00AA119
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 09:28:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 85D3581314
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 09:28:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mb9MMOextqDH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 May 2025 09:28:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C72DA811D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C72DA811D3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C72DA811D3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 09:28:18 +0000 (UTC)
X-CSE-ConnectionGUID: G6/xxrWSRQGCxXqLMHvttQ==
X-CSE-MsgGUID: pnTTwzXFQvGnu0GJ3Est5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="48478695"
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="48478695"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2025 02:28:18 -0700
X-CSE-ConnectionGUID: I+3tKmxPRMuGHN3K5TorTw==
X-CSE-MsgGUID: KqIYbrVARGmJ2SIUK4DI0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="138196400"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2025 02:28:17 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 15 May 2025 02:28:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 15 May 2025 02:28:17 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 15 May 2025 02:28:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wk0AOYZoAw/sD2A3vI3YyJq606iz5b0CBoQiGglEIQb34D+Ua6UqDkP/eHCtLDrrz+k4VvOnn8Qbc2f21KmBP5CslHPhX7qEvpu/TjOTF/AWxpftJjlGt+RdJsaH6dTK8yPTXNME20YvFU8PICiu+eT+6WmEn+f8l14p0j+4zmtKcBUaOMciHFSt+3tHfUYCakptnco9PDdAcpLHEJKpqp+WwikWlI+s6KVGJLpYrMInK2Fqo8Au1XNGglK0/nKw8vSoOtYbinnYfn/yXCrUJojCUvmgJCuFnUdYw/gATma4oVu1qwuisbhC7jc2LvZ6L43Pw5gIOpTl9Z7khAJodg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z8oV/4SgjcQvHdB+Y2TJ5+I9DECPvgkP/ut6Iev6BHQ=;
 b=KMnSoWGPKi18Ztj87aVtusTXyaNcSfk2qngZIpETLd/IvtSN7Rq7BKYr+yU+ZmiOg1fWUa8tQIrsFX2bCI6ibJtumObH4xJpC0TwCDj0WI/OxYNiED4cPIpcBByW49fiX2J5hJK5H9wHmdBifWpSChzSWK4djQYXWI1+i3CE/DXyGhUQzj6B+kxannVW394B1AfF7L8urMPZwgXEOojE4dqw11CddtUfbn475cC9ysEVyYUgBm+OVrLV4u0/gr8wVbhbfxDH2o0WTJ4clG1ygVP0PGHueH/zvBoJ5Sa88DhTmbgbxP34BiEyRZV+bp+GfXpt/Y9KUw3wHpiLaYOCNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SA1PR11MB8256.namprd11.prod.outlook.com (2603:10b6:806:253::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.31; Thu, 15 May
 2025 09:27:28 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%5]) with mapi id 15.20.8722.031; Thu, 15 May 2025
 09:27:28 +0000
Message-ID: <9dd26263-54d9-4abb-bb46-d3cb089a9c21@intel.com>
Date: Thu, 15 May 2025 11:27:22 +0200
User-Agent: Mozilla Thunderbird
To: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>, Zilin Guan
 <zilin@seu.edu.cn>
CC: <andrew+netdev@lunn.ch>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>,
 <intel-wired-lan@lists.osuosl.org>, <jianhao.xu@seu.edu.cn>,
 <kuba@kernel.org>, <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <pabeni@redhat.com>
References: <170f287e-23b1-468b-9b59-08680de1ecf1@linux.intel.com>
 <20250513133152.4071482-1-zilin@seu.edu.cn>
 <a5274434-83db-4fa7-b52d-a0ca8dd16a68@linux.intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <a5274434-83db-4fa7-b52d-a0ca8dd16a68@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0185.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b3::11) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SA1PR11MB8256:EE_
X-MS-Office365-Filtering-Correlation-Id: 407a5e00-4f26-445e-861c-08dd9392b5a3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TjVRc2YrT2laR3dYNmI3d1VSWGdVVmZYMUtwWllrRkl4TDJhMkE4ZUVIRGR6?=
 =?utf-8?B?TEN4ajI2eEpLeEs3T3NDdTdvbEtVdEVDNk92ckptMnlVWVRLeFRoa2lPWXZi?=
 =?utf-8?B?bHhnODQ4RVJEVy9Db1VTVFkrLzNONitWUlpVaUZXUExTSFU0K05OVEFqeDlE?=
 =?utf-8?B?WWQvR2cvVTNodWh3NzZ6dnFmMVhrNWdiOERPNVRhNzVBSUZMcll0NlVLUnRB?=
 =?utf-8?B?SEZMdnE3Sk0zWks4cHZBVyt6OHNyTjUzNCtOMTZqZkFLWklENnEyQWVyUGJQ?=
 =?utf-8?B?d2pyVHE3dGF1ZTg2SjE2dGN4d0lYbXI3c1VpRDJBRWxwQ2lwcE8xdlE3MjFQ?=
 =?utf-8?B?cjlQRCtmRUIwZzgxRFAwS3h5SElHTkM2dXhseWNwS0NyR3IrZHpRR2ozNXAy?=
 =?utf-8?B?RG1CdVg1SHgvTzE5WFdWZkxsTVRqWFhUNnlOK2RMYVZnOGxWQVpPQWhqLzlx?=
 =?utf-8?B?ZFYxWC81SkQ0dUpuS0pweXQ4SHhCeVZtNTRlRmU1My9ESGc5UG8weHlHdVRv?=
 =?utf-8?B?Nk5MTnE2bEpLRm5PdGR6c0ZYTFptQy9uSmZCbFFDZmFSTkN1dUdlcWpmM0Jh?=
 =?utf-8?B?b3Z6Y21JUThodmhIZkhTVXVxb0JyVDk4T3Bnbk4rUnVTTEc5cEdDdm4xWXQy?=
 =?utf-8?B?SkNKdUJ3RWlybVliSmVnN2krcWVCU3JvYS94aURQSmNTOTMyaEMydXZ2Nzc4?=
 =?utf-8?B?d3RicHFmT0tCQ3BMQmFkNHc0TXlBdUcwTkdvaEJSMUVxaTRjNWRJQ2Zic04x?=
 =?utf-8?B?OUd1K2Q3aVFGMFg1eTA0NitLQnI2djE5aGxPZXpZcUdSbWl1MWhxa3gwY0JZ?=
 =?utf-8?B?a1I3R2dzZW1uLy9FZ2NzM0Y1OGV3aW13NGtGbGpZWHQyRXdQZ2pPMVlFSFNv?=
 =?utf-8?B?RTk4YXNTMlBEWXZjT05lQTV1Tjc1ZS84L1NKdWFmM0IzUm1Za1EvRFBtMFdF?=
 =?utf-8?B?dFBCOGtmYnMrU1dHQXVYS3pvTjVqdUdCNnUvL09LZXVTUDZwUzAyclE0WVB3?=
 =?utf-8?B?SVVmQzErWEhIZmQvVis2RXNNNVVqRE0vNmJpT2dNTDA5c2NoTzlFVUQvNlRL?=
 =?utf-8?B?czcyL2ozaDNZWmJ3ZXphendId3hvWklueW9NRWQvOGZ1TDk0ZFlxTHVURCs3?=
 =?utf-8?B?LzBGTUZVanBwUUVUVmxSc0pmU3U1UUViUHYzTHJuazNwUkVJNWdiUllXNzM1?=
 =?utf-8?B?Sm9xZzZESkpka1pTM1dvV0ZNZU9MYkE0d0pkU0xaaFhUTndxaDZrZHNMWCtu?=
 =?utf-8?B?MGFPUHdFY1VMdnErSUN5SDRMQWJvZ21qczRiV2NrWWZYR09GcmU1N2w4cEhm?=
 =?utf-8?B?bWRYOVVNSzM2R091dHMrVW9CK2Q1TXRkaWwrTEZSVmVjSkZrbHpqMTBIektV?=
 =?utf-8?B?ejhTaStoTnRSVG0vU2E2REZVVVhCMVNxK2JsL1l4WVlRY2NTY2JFTG1SVnk5?=
 =?utf-8?B?LzNNU0h0ZWFzL2ZkaGZKYWw1U1lzcnRzUS84emMvQzhXVy9oakJqdys0SCtF?=
 =?utf-8?B?OHhGdG82ZThwVDdQc2pOVFU1eHh4Y29Eb3JvQ2c4cGtyOTB3SkN5UzRZMlg4?=
 =?utf-8?B?cjYvMllLRjdydzlINEkzUXQ5UTdOZFRYc0NUWVFiNENlc1V3elpEc25OaVpU?=
 =?utf-8?B?U3hOVkZNN25idXpwMjFBQmVOR2RRSUtKWXdQZlcxWjJxQWp5ZXRyNlJWZEor?=
 =?utf-8?B?b1BNdzFJTWI3R1MwS2NWeFAxM1NIRUxkWmhxN05pSCtiSC80SVNLb2xoY3hC?=
 =?utf-8?B?S2dPUGthMHBmM1FRQzZialgyZFpQandjcVlwZ01XcHhKNFZqZFMwZUZJU2hJ?=
 =?utf-8?B?dnFnYzZQU29NNktaMnlkMTBmM05lVXNYeW0zYUVtWU1pYmFWSmZEZkYrNnFp?=
 =?utf-8?B?STJQQSt6V3lOeWlNeUlFVWxpUHhsSXluZjJmVUd4WnlnbXhodldPSU01eVVY?=
 =?utf-8?Q?Nz/n/E67+zA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eTJRQ2hMMVdRZFJLUDZWa042TTZCbjBXYXVtajJxZGsrakZTaFFrMkpmVXhJ?=
 =?utf-8?B?dlFSQ00vQ2k1OFoxWXlETk41ZGt6R3Q4YStnZDFpVk9LSTBDcnIxNW9Manpx?=
 =?utf-8?B?eHFBQ0JqL3lXM1IvSU5kRkFtWktMbDZkalpyRFZxNHVMcDE1ZktKckcvc0RK?=
 =?utf-8?B?dkNDcGd5ekhlRjl0aE9uSUFhQy9RajcxZGtjRmV0b1U5My9DenlmUXYvdUZV?=
 =?utf-8?B?WEozQmVSaE9CN0tVOXdrYTRtQkpnVXBnK3F0YVYrQ2FGK0pFNXFuQlUvOTV5?=
 =?utf-8?B?dHFzR0NiUlMxQVRUZWZqdmsram4wbzdNS3ZLWTJBVkJpempZUkxCaHl6c24z?=
 =?utf-8?B?a25xaW5wMy9jWm03ZlNhaVBCb01vYWhmSCtReWpqd2NRc3U0YmFDZktoZUhN?=
 =?utf-8?B?aWNWbzFLT0tSV3hrbndhVE5WSjlRU2xyK0YwTTExdHpMTXNwTTNNNGt6bDd6?=
 =?utf-8?B?blhCTEUzYWNsRmFEYnBnUjR4YUZFNDBmeHZnSFE3bHhaaU5rNzYxMmM2Y2FE?=
 =?utf-8?B?SVVGVGR2ZWJYQ0V2Y3VvMGpMcHowK3E3M2k2cHJPTHIyQUlmRTMwc0ZWVVhC?=
 =?utf-8?B?SEdiTG9jaUJnclQzT2c4QUVYYmhSU1lSWmIwdEp3OVA5WFQxWGUvcmdjSGNN?=
 =?utf-8?B?RXJzSTNNeGNpaisxWEhsRDVFblFPaEFqOUl0cEt1USt5a0tUaitZb2lNczZC?=
 =?utf-8?B?aTBmd2k3WTVwWXA0UlgwU1hFZjlyT3U1U3ZsajFqNlMydmwyMW9qTStmenN2?=
 =?utf-8?B?dnVGakJtK3lwY3dLUFp2d2cvVER4aVhNaE4vNWJaanMvQTNUWFRma0g1Qmh1?=
 =?utf-8?B?YUFWSG1HcitWSkgxdDlsNFk4MEVqNU9mUzN6aGRFelFrY2hYeWU0Z3hvTVE1?=
 =?utf-8?B?ekNxYjA3WXRBYzQxRTZndzBTdHdhc2FZOGtBOUd3VkFydUowelg3amdadkxO?=
 =?utf-8?B?MXc3TjlYK3EwNmIvTmFYb1JxZzdKb0k5L05ZY2dzTXJ0RkIwbzVXck82ektm?=
 =?utf-8?B?aW0rdWdLdUJmc0ppcWdPanFIU3Jrc1o4d2RCUzlhTmF5cDJUa2o4OGJFZGlk?=
 =?utf-8?B?RllUUUFndlN1SW1mTlFPU0h2eEF6dVA4aDdMZDRtL0dKakk1UldNOHI5NUt1?=
 =?utf-8?B?Uk5wVU9nRGM0NGJsSm9tcWc3ckxSSHpMeXgvU1RlYXdaRy9pTW1ENEgxQTFB?=
 =?utf-8?B?eW1QRkFaSm9LSWh2b0JDZ1c3L25LWElPYUlNZmRQVUFLNXdsaVdHNk5YWEpV?=
 =?utf-8?B?T0EyZXYxcWt5L3M3N2NZK0pUeThMT1NtcmhYWVhvaUdIbjcrekh4VTdZS01v?=
 =?utf-8?B?T3VVcmcyNVZBMmRmL1lFa1I5WnFBQTNpWUt5dENVYWtwbHAvRkxmampFUENl?=
 =?utf-8?B?ZG1lcjF1dUhNQWJJYTZxZ1R6Um9wZTJyRTVGYWxYQjJudlRPUk1SdHBOemtH?=
 =?utf-8?B?cXZNUTI1eWRFSjE0ZUZUSnpQL0lkZnJWT3pRV0hTa0RxZ21oaUlBYzFqWlJk?=
 =?utf-8?B?cFpCNGlzRWRxQkNiTExXQVMwWjVGSTNtd0o0RGMvK0NhL3hkcEhjeWpPQndH?=
 =?utf-8?B?TE1KS3VNQjU2Y0lTV3pwQkV1c2VEdUlDZmpKNmFlSzlIWENRYU5QK05nWHJ5?=
 =?utf-8?B?NVJXZ2tTdHpTcGFUYWdjWVlCdnJEa2dkVkFobktlZENhSXhzRmhsc2paZDNt?=
 =?utf-8?B?UDVzclV2K2ppK1lQMWUrdzF6OFpKOFdJVWdNL0RiUjNTR25FOHR1amRraGMx?=
 =?utf-8?B?N0hYemdHTnZBWklWVWxZanBqWnFnM3VERHVOTW9CVGNmQm5VOXV4SFZJbjJB?=
 =?utf-8?B?cmt1a1czaVI4UnBhbmNqYUs0Wmt0S3ZmZmNtWk1tU3BiNFpEazJ4N2lTaFlF?=
 =?utf-8?B?a0ZpQTBVNkIrcldqTHdtT3FjbHVZR1hYdDdHUXNDeC9IcnErNm5OQ3BxSnUw?=
 =?utf-8?B?d2VZSXNUcnBzK2VOUTFxMUJTSFRkS1hqZ2NDQXlUazN3WE1Rclg0M0Rsc0NI?=
 =?utf-8?B?WnJRL3FYeEdnSXoxZ2lHd3UyTjVjbk82Y05IY3BsRlJPQlY5Vks5dXFydlVT?=
 =?utf-8?B?MzZwbGJhL1NDVUZscURjRWhuWVZYOFJ0bEdCYi9mTGhTMDQ5djlTWHh5UGQz?=
 =?utf-8?B?eCtHaEpaNldJVHltd2hWUDQzSXZpR0ZLTmJSMUtoR0ZSVkxpOW9JOHAyNHB5?=
 =?utf-8?B?MVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 407a5e00-4f26-445e-861c-08dd9392b5a3
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2025 09:27:28.0636 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Zajp4mz9pK5CVDDxnzHuRDAs44aA54y4/pUN4tPcLnWS+4xeCQNDiIsRSzGhHAd0raXtzxb5Md4/I8yQ9HVbEA7Kbzyg3kObpauN/lB/dzk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8256
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747301299; x=1778837299;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6Ybjo+MXRPZf5b+6HgSj9OlOsTOuX/wOl6pUb2YMHTc=;
 b=BvQOcqvmUMKCQ3J2j5VeYGtXK2pcVxL1upNerr2dDvpaMC9bQBmTel3F
 GczpfkZN0TibsrGL8zsnx/eAGO89g41QsgglW6WOR6e92OV3+zBDxYX3Q
 SQ0Ah40ECNig+KagN1lUrwUmTvmH81XLY0D9+ktfo//6+LpGmWi806Uk3
 hDJfAbOAafAhOlvtrIBdLoA792zYXntB/L9KpEvbLZ8ZaQ63t45UnoNir
 Ztl6N/raXhJAQ3e9+oHCsnTQmhrDxeT+MKHpDhsyv+BvQO953hltuZABw
 2vlvre91UCNlcG3lAebtzl4wXmgk27j9OR6MO+wK4EaTAqI4Id7qLWfZM
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BvQOcqvm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe/ipsec: use memzero_explicit()
 for stack SA structs
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

On 5/13/25 15:54, Dawid Osuchowski wrote:
> On 2025-05-13 3:31 PM, Zilin Guan wrote:
>> If this change is required, should I submit it as a new standalone patch,
>> or include it in a v2 of the existing patch series?
> 
> I think you could include it with the v2, as it touches the same stack 
> SA structs (if you decide to reuse memzero_explicit() on them).
> 
the general rule is to memzero_explicit() memory that was holding secure
content
--
to have full picture: it is fine to memset() such storage prior to use,
it is also fine to combine related changes in one commit/one series

re stated purpose of the patch:
I see @rsa cleaned in just one exit point of ixgbe_ipsec_add_sa(),
instead of all of them, so v2 seems warranted
