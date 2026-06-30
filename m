Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5peAH/O8Q2qcgAoAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jun 2026 14:56:19 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 377936E47FF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jun 2026 14:56:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=9RsnrWLw;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 48AE382974;
	Tue, 30 Jun 2026 12:56:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fgqfxerr9L2V; Tue, 30 Jun 2026 12:56:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C6698295A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782824174;
	bh=6epwRA6SvUlj2e11QaXtfLMMkcIQKRqDU4yAT/t6Xgc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9RsnrWLwRAIhKjri6qZ/fTWIPLDVHrb7ocHDNQzNH2C0IZFdTwclHB+5pafPWTHX/
	 978y++cH2dGjSvcCXBVcweCEzFfvuGUBqaq5ZNpS5EmadGUwYm9otjXrv1ngpYcbRr
	 +JyLRuSSMND24pWrM9dXJK9GwtSQJjngzCdrk3SjG3X5uWkky4rcdPmAQ6i7ym/f6m
	 L/9pNY0spHejEp/zDCqoLgfU5a8Vag2cLMoQwTUIDS4TluRPW6dNWMWw+4ab8gQ9ck
	 oIckWiSdkLdkQ6S9QY2ocYFfPerImV/ovLYofaTDB3o10MgD8T6YER6GOO3ft4N/EF
	 7kWwomXgnx6Kg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9C6698295A;
	Tue, 30 Jun 2026 12:56:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A7412149
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 12:56:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8CB264118E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 12:56:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bn79HQ-LhCs1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jun 2026 12:56:11 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=adrian.pielech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 84684410F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 84684410F9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 84684410F9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 12:56:11 +0000 (UTC)
X-CSE-ConnectionGUID: dZTgWzQaQgC4zkSxW8hlFA==
X-CSE-MsgGUID: 4z5Pnc5iTIeU0eJ1SYdJLA==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="101079513"
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="101079513"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 05:56:11 -0700
X-CSE-ConnectionGUID: Ci4EPcL/Sy+gKr39T1anBA==
X-CSE-MsgGUID: 7UZS+x2xTkKllcM5y0YjMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="252395153"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 05:56:10 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 30 Jun 2026 05:56:09 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 30 Jun 2026 05:56:09 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.51) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 30 Jun 2026 05:56:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=owYfuaS01keq5Z76PKipuWs+dDkKtrgJEFWXdiOHXebVlUlnQaUcgZKtn3A696vLoLBZO0f1jhDrd7FtfQn2l2HCZD4SoFHxnRAXUupoooWXudWabWWbBuhBZIBxgrxpfeAdR3IugXhl1FfNp7VQJ43puapRqH5uCHl7At6DN1XCJilhXJPTZDqHalOVp19vOmE8EwnBMwfCcvIEzwmVCIaLE6JVlQszvk8BydOWQtOzwaD1zPaRiJPM2mf9EmRM040tsA8JwMGm8m8r7FKoLodsJGF+GAs1cMSUAUuK+ivsx2UJvvNN4NZPRXLY/t9t4wG6XXgg9Q+D85Ybji5jSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6epwRA6SvUlj2e11QaXtfLMMkcIQKRqDU4yAT/t6Xgc=;
 b=htDPwWX8d/jdDuu1GqbyZFJw2j94jqrb41PsSKF3ShS4AVnn14bdHmgkhA4QM8NKFwyaTXUA5lNoVeBHXucUm8xu/OEFKLNyi0GafqO4wTn399TpryLyLSk1sKYK0GEeu4Im0zWQghTFhqBgjmMHjxt7SBIvvi+L3a1zlHIFw403zvU1BRs9CTPdk3xEnsHq6xvIkEjeBic3vFf+yF4s65h6ubHElRYKfjhL/W4n4iyy6pcxL5b0K/6qC9Md7rSFpOcr52REzK/9FdltW5yaNWDIZi4QmYrihNZLrWSE7BImmBi0gNBUWdYwjvm49eitPBiMKbxNRRrnX5HEMpSLyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7335.namprd11.prod.outlook.com (2603:10b6:8:11e::9) by
 MN2PR11MB4677.namprd11.prod.outlook.com (2603:10b6:208:24e::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Tue, 30 Jun
 2026 12:56:07 +0000
Received: from DS0PR11MB7335.namprd11.prod.outlook.com
 ([fe80::10dc:9cac:bbf5:72c4]) by DS0PR11MB7335.namprd11.prod.outlook.com
 ([fe80::10dc:9cac:bbf5:72c4%4]) with mapi id 15.21.0181.008; Tue, 30 Jun 2026
 12:56:07 +0000
Message-ID: <35ccefb4-a588-4556-87c0-ade880eaa8d6@intel.com>
Date: Tue, 30 Jun 2026 14:56:02 +0200
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <leszek.pepiak@intel.com>
References: <20260627095400.3c3d9f80@kernel.org>
Content-Language: pl
From: "Pielech, Adrian" <adrian.pielech@intel.com>
In-Reply-To: <20260627095400.3c3d9f80@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0012.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::27) To DS0PR11MB7335.namprd11.prod.outlook.com
 (2603:10b6:8:11e::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7335:EE_|MN2PR11MB4677:EE_
X-MS-Office365-Filtering-Correlation-Id: 8e859813-4373-44dd-3007-08ded6a6f342
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|23010399003|56012099006|11063799006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: dRBfUU7azIAHQAbTt8fmRRyXAbk5Qw32pmBIkA35HxF6kZEUsC9ZoEBUA8HYxVPuxwujCb2+iSKrf5RfGd7dXDxPkYeYG6Zaup9MGwxDrWa4bPqfPCkZQcgWbxHg2yBLy1tOs3/8ubvTAFn5s9Fw2f+gG9lX6rieOEAswbyphV6+SsEykRptPc5SR8pp7XCGAxSi0O2lUxF0X9RT0HS8vCfqBjfXeSdfGaW8aQp+2IBv/eWnQchnYwxtJSSvMz5G2jDnmHN529GdOhFzxFhG2oHj2RzcWCqvEQRhFczPnu9uVNqt02IMwKevDs2BEEyvJ7dmVbE64S8JL+JPOR7IDFI6niIe5+bhkWkyeaiqH6/o1JU3nGthrrEXRuYpI0DfjqzFdFCfys6XP7KC25JFiXFB4h306WWqF0jbtTojq5njPzeBo2fBwFqRv/8oYdq9RBK/dE7bxnvocaOxBeIV+AW+6fAm23cp98g8shI23lUPxkriQnmCqIhNwGZjERwiwGa4t0cEeQmo/En0NXQ9neBXHGzpRzSwtXQxf78Xy6+mFsoE8P/xIcfXa2x2P6ioHMYC7UJm3C/TIhlewgLw/wRbThuH31zyYTdhLCpF8vDGNzwSSiIB5UnnrhTuL9hPWaEU7nthCm52MWrvx8wNoyM0Mjj0I3qGNYE34HVq3zs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7335.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(23010399003)(56012099006)(11063799006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ckx5YTc5b08zd0c0ZW91WDdGSm1oU3FCV05UZkRja0RPSnpaS3EwTDN0aDl5?=
 =?utf-8?B?dDJHWC9qVXFoSWcxQjR4c1RhWkg4eXluMTBxaFVlRE9yU0E4c1FYNmEvOWFZ?=
 =?utf-8?B?VTZUZm1yd3ZmUVpEUWk5eDJaOCs5Tk5Ib1drZVpSOXcraklMMnd5YVk0Lyt2?=
 =?utf-8?B?R29DVDZhbXhMLzZobUZuMm5JWElwWWdlWkM2UEN1VmYwRlArdnUvQzJ0U25p?=
 =?utf-8?B?OFhlQnY2QTFvdGZvcE1jNHREU3F2SysyV1NpTzlFZVFmazBLWDlNcFhLWCts?=
 =?utf-8?B?RUtBYkNnV2J3OU1KNWZWZzVNUEpGYnFYRUJXQlI4cG1wYS9XcGw0MVdzS1VE?=
 =?utf-8?B?SVdyTDhwenFVc0RRVG9Tdk9xWmhXWEpqQ2F2eEExK1NMYk16QnJBS3Z4N1VF?=
 =?utf-8?B?RldQWXNnWU05T3k4aVdhQm03UEU3Z2RHcHZOdDJoaFVYWmhTVUdFTDZ1aWpo?=
 =?utf-8?B?L0UrM1BMSHc1R29lWXgyWXFUK0pneWhOcDhjNFk0RndSUGVmYTBkL3JESDZX?=
 =?utf-8?B?NFgwWnp0UzRpbnJuN05OaEc0bCtBS0JJVW9kYXkwWkpyVzZmWmNjY3V1VTZz?=
 =?utf-8?B?T3JDZ1hBMFFoM3NpN1NWbFREL0NYNW9EVzRobDlkdUJ4YUhDdHcvRHBhanpq?=
 =?utf-8?B?ZGRNczVaT2VHRjJCTFlSb2Z5d1VPQ05wdzFsQVhJV1hyVXdyMGVTWmM2M1hz?=
 =?utf-8?B?c3RFMTR2TkxEYVpaY1p6U3A3ems4ck4wek1FZ0FSQWpTUUJiRmxWNVM2aVV5?=
 =?utf-8?B?ZmE5MFd5aUhrK0dUK004UlFtWkZ5MGVCem1kWk4rR1MwMUZpWWc2cmJTc0Zj?=
 =?utf-8?B?Skh6YnBLS2tTQitXUmR6eWpvUS9FbFhNQ3V0UEk5WDJRVHhBWEpPR1hiU0Qw?=
 =?utf-8?B?R2VkMXl3eXBjSTU4UGhJWnNGeWNPYlhYa0xLcU1aQWY1NG9jd3JZWFAxa25E?=
 =?utf-8?B?bVJDc2NxcURXZnZBQ2tDZXVkV0ZqQlBRVFFGR3hrMGNxbUFqNWlsMC92UDZK?=
 =?utf-8?B?T01VZUs1TkxRNGF3TWVWcUtiRFYvSjFPMUovRktEZkllNkM4S0hLSENIWVZB?=
 =?utf-8?B?RldZdHRhUTlqY3cwNnpQQnR0RnRpVEI2UWJOMGhHQzZodkpNcTdiYk03a3RL?=
 =?utf-8?B?VTJPdHg1dmVEQk12TUVTdFJ2MmMwM2NWV2JFNkN1dlNkOWROYXJOem5Tb01k?=
 =?utf-8?B?djliS0NaakpqVXgwK09qd08wWm00ZnVDMlZUeElyQkpjczMzREZUMnloOGFy?=
 =?utf-8?B?aC8rNVpreDV0SDFieWZoR2tJUWk5NHJuYTJZaVhxN1IxbHdYTTEzdEhCcEx3?=
 =?utf-8?B?c1hOYk1McmxtL3l2ZTZveGYvSlFUazdVQmxIc1RKU0pBYTNDWU9aNmljSXh2?=
 =?utf-8?B?U0E5anQ3TjE1b205bmdRc3ZnSmd3eW5EZ3VVOVU1UDJrbXlDQmRVckNIdHdH?=
 =?utf-8?B?WFl0ZGNFTnQ0RjdYdDNTcC85Um5nOUZFRE55WmVMa3ZrWlRMVlNvZnBzU05C?=
 =?utf-8?B?WTNkV3hFVlRGRm5sTGJJOTNQVXN6WE9HcmdYWk9lVEp0VWxiS1hPTG0yd29p?=
 =?utf-8?B?emlsUXZrTU9CK3h5eFJTY0VyUXFnUTh3c2ZsVGJBMHhSZVhGM2NFRDRLeHhL?=
 =?utf-8?B?RDViMDl6R09PQUtrYzcxcUQ0UGlBNnJ0VExUR25XUVY0NUx0bGJESXZ2a3hM?=
 =?utf-8?B?WWk5UGNuR2JaOUNKUEZDRkVYMTFhZEhLeGZtbzdSS0o3Zkp6a3U2Nk81V0Uz?=
 =?utf-8?B?RzB4VWV1eXV0TnRQR3M3RU1XT2lqbGJyd3VjWFBGbDJHVTNUcE5laVgvUVAz?=
 =?utf-8?B?U0U5MGdTdDdYbzJORlJBQjBkVGR0SnBXVDQvUTlOZzdDZ3JwenlmVitvVk5F?=
 =?utf-8?B?L0Z1ODFhekJHY3BJVWJUZHRQaW8yV05VcHdSZ1BJeTMzMlVhSWxJUFh0SmJ0?=
 =?utf-8?B?cjBYeDBGOGVjU2NyNVpMbElpR29IQmhpTDFkTDBNM2Y0Y2dkQXdaWHBoUFk2?=
 =?utf-8?B?WXNDWllrRjA4LzdOa2I1bERkNHNSS012NnM5UFVUZjRUdGx1NVZwZEtVMjRX?=
 =?utf-8?B?S1FicFVGa0xTR2N4VmMzMVZ4TzJlV2M3QlhVSmNha2lZVmhPS0k0MWM5Wk9Q?=
 =?utf-8?B?SFo3UHd0cDlmTHJub0E5Q2RtTFZLbDhjRUxMUjRrUmJCb1RHc2VRTTgxMlZa?=
 =?utf-8?B?ZDJMTXZSRVBidXNyYzBaNGpKeXlNSThOd3N1dUZOS2U1L0VrR2psSjFWN2ZS?=
 =?utf-8?B?VWw1c1FSb1VwVXNQNGh2MDh1U25hZFRBWUdhVWpvdUJxeS9oUEhsN1NoN1hP?=
 =?utf-8?B?S3FITS9kdkJpTTUwSjJWTTIvZDZQbENTWnpaQUhnMG5IY2JFMFZFZz09?=
X-Exchange-RoutingPolicyChecked: UnOOD/1wnFXXjgyKGChgM/2JA4rKSXf+bdq36W0uHtdA3k2f1GXoqogv9kSLPML0AwR0t0Iomut0iFNILyQNnJQe8/U88AhduLgTSsQxRoAJeioQnE0iIp7FnLuUb+d1EgS2H7bv3a/fa/fHFJ7DlRv0uFAI8GZdxkasmNxtu5LB8m4mhOWAEocNatmZrAhiume0nVxLgTmDq4D6i0vprwfvxf04KDzM937ORfaPSrdKG5U6BHJhjSD+v/FTWZ7jsWCFsuRqSfxN4bRvruBjmDf6EDc/iRi5kak/PWAfsk5uibaJwmSeoP1UbTiXE0fBaDsavsei89v7mdCy58vhTQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e859813-4373-44dd-3007-08ded6a6f342
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7335.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2026 12:56:07.4323 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m4Ew4/80vV6NUyoNihuoYrAEFOHSVSI56JjVazz6zurmIzMJB0l0hWsp0/l82wCw9vGwJ6SNQloWwenXtGYeaoNB6e+vMzgyxdbUsHpPkH0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4677
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782824172; x=1814360172;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sQrOkqaK+HfvD/ZNrEjv3kHuXKWYJY1jTX/XROnbg5c=;
 b=HcgQqZi8CCoHVTfUc6lDqJCIkQfHoGbiLSm/nY4/rVdxGlawVYqQYj2e
 sXI7VmfOVBBhXP2bx1cRgqZokat4MWqGvLu1nkm8mQ/jDC0ss4yAHl0w7
 AUnk2L9ZdZhyNuiWSJtU9V39HD99HANNxWo2XjO914Cyb1eGct5Zu6Dj8
 zEwVFOcT6dkrntKzD7ReICMesSDzCn/uwHRD9wDVIbrZtopcvzG6DUBHl
 I3QWhAAEeBwlWPuGk1AjLdC7b0BaRXw7Ta2v5M5Ds7htp3Wl0ecxMaJJs
 9oQkruw1LyOA3X3z7+4nq/Zk5opuScrwJBqbNbHXxY8RlaOVLo7hEbj2w
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HcgQqZi8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [TEST] intel: low timeout
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,m:leszek.pepiak@intel.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[adrian.pielech@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[adrian.pielech@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:url,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 377936E47FF

On 6/27/2026 6:54 PM, Jakub Kicinski wrote:
> Hi!
> 
> Some of the tests need more than 5min, could you increase the timeout
> in the runner to 10 or 15min? Looks like it's hard-killing tests right
> now after 2min:
> 
> https://netdev-ci-results.intel.com/ice-results/net-next-hw-2026-06-27--16-00/ice-E810-XXV4/xdp.py/stdout
> 
> which leaks config across tests:
> 
> https://netdev-ci-results.intel.com/ice-results/net-next-hw-2026-06-27--16-00/ice-E810-XXV4/irq.py/stdout
> 
> BTW the JSON reports the timed out tests as pass.

Hi Jakub,

I've increased timeout to 10 minutes per test run. It seems to help with 
XDP tests score.
I'll later take a look on default behavior of runner in case of timeouts.
