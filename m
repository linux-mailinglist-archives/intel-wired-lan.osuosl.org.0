Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kHNmO5VwD2o8MQYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 May 2026 22:52:37 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D34515ABEB1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 May 2026 22:52:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF7304241B;
	Thu, 21 May 2026 20:52:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BhAHSVh377yn; Thu, 21 May 2026 20:52:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 695FC4241D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779396753;
	bh=9G7Kk0thtC/AMEyHHs7K4cNl/aPExHEm/2Pq9MXcqUs=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lKlsjWNJL8DUm7TsJcITDS1hdvLh/La2FKRUMjw6Kyx/76wQKfom7LgkKJ3UG1rvD
	 NaBE0mbuUIPCB64/KzGecE/+yO3flRJen5JXhtz1KHWhz2oYRK+XfkDXiEJFEg9bIB
	 OJus0aDoXA4FeVo1CLVU2u2pBx+WHBVgzyQAvs2E+gpfAiC5P/KD8afi9v7ZVwYF4h
	 +grAIwQ67xsXpKFvAvcUXCwfmHKMesqHuLG0vzIvzU0o1lMw4JGAzAmNKQdqny3ewv
	 chUECtjnNyrJPC5xaOK1DpfF+ELnKo2mwl+/pCnEIDeMcm+XPe+/RaTWpGPXtmm51E
	 53SNJyLa2uJxg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 695FC4241D;
	Thu, 21 May 2026 20:52:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8747F265
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2026 20:52:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6E03C41B15
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2026 20:52:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YoFlipr_U8lN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 May 2026 20:52:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 86105419EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 86105419EC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 86105419EC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2026 20:52:29 +0000 (UTC)
X-CSE-ConnectionGUID: nyZybgnLTGiBLyVBSD4DCA==
X-CSE-MsgGUID: 4+0Xa6iyQy60UMYFmbOJ4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="84180532"
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="84180532"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 13:52:29 -0700
X-CSE-ConnectionGUID: FNSURwQkS4CXJ6GBqsQq2Q==
X-CSE-MsgGUID: u2pPyZtrS2uUyV/+i0JkOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="245629680"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 13:52:29 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 13:52:27 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 21 May 2026 13:52:27 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.59) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 13:52:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BPs3ARxXYZkWbdOIzBDJpS5oAIxBzCqIJCFWpmENMuxbe+Kt8k6EE/RONaoLY5SaaqK9Cpio5cbVSiE63hisbM4Lge18X5EzID3qzEtq0kP0ky70kOZ0MlmobXLiwjG5MSIPhClz5bcwuNgjtP7xZ1LfwVJrq75DX5inKD4l2WxTHlFJMXePsDp2QOgar2cgZO0sx000D5tU6mpbugmedL+kTX94ja4perWNHrgtsqsyN31xR+fLUH7v5LAPD8EII4WEsq4FcTdlGkV+1HkQIizBISo70YMgkANjlNd4jqlcS2DAM3UvVEE81CMP03awvW6+eoQvj3KFPrzLoXQWQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9G7Kk0thtC/AMEyHHs7K4cNl/aPExHEm/2Pq9MXcqUs=;
 b=WXkDxPzOuxfM4lwROlg0T8j6PZDVZhh7eb+X5WcnHMYBJWxCpDOBhaO/WrYMOt8g942G9VstUv+xGT3j0IwZX6JBXtGLmB2noXt75f7KT0RWS3lvAHFIHRHYjK/qbau0K/+ENekQaR6B0rLxkx7snAk1G/UCnuig1WqNOdxYq+mZSynE8NqXXoZWgnxYLcrB/ILn09Qr54Jc/m4uFfr1Xu00C4W1r7ycrNDF8Phzzs52rU9c7DgSki/5WzGgqEdDlw2xj1ZmBWa/rt55brFe0HdrmZqQDchPjc8AAUdomjR1ASRH65ky7eF/ex7ipkWGB0gnbROsp3obpZCsu/8pSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7381.namprd11.prod.outlook.com (2603:10b6:8:134::14)
 by BY1PR11MB8056.namprd11.prod.outlook.com (2603:10b6:a03:533::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.17; Thu, 21 May
 2026 20:52:21 +0000
Received: from DS0PR11MB7381.namprd11.prod.outlook.com
 ([fe80::4c39:dfe6:d6dc:6f58]) by DS0PR11MB7381.namprd11.prod.outlook.com
 ([fe80::4c39:dfe6:d6dc:6f58%5]) with mapi id 15.21.0048.013; Thu, 21 May 2026
 20:52:21 +0000
Message-ID: <7acdb0ce-1553-4d65-9b54-5c406963981d@intel.com>
Date: Thu, 21 May 2026 13:52:18 -0700
User-Agent: Mozilla Thunderbird
From: Jacob Keller <jacob.e.keller@intel.com>
To: Matt Fleming <matt@readmodwrite.com>, Anthony Nguyen
 <anthony.l.nguyen@intel.com>
CC: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <kernel-team@cloudflare.com>, Matt Fleming <mfleming@cloudflare.com>,
 <stable@vger.kernel.org>, Simon Horman <horms@kernel.org>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Eric Joyner
 <eric.joyner@intel.com>, Paul Greenwalt <paul.greenwalt@intel.com>, "Alice
 Michael" <alice.michael@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20260501095717.1032151-1-matt@readmodwrite.com>
 <531aec13-c33f-4e77-ab48-de8861f9b6c6@intel.com>
 <afxbZjldi1OC3HmS@matt-Precision-5490>
 <a55c7754-43a5-4ad5-a429-61c428544b4e@intel.com>
Content-Language: en-US
In-Reply-To: <a55c7754-43a5-4ad5-a429-61c428544b4e@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4P222CA0002.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::7) To DS0PR11MB7381.namprd11.prod.outlook.com
 (2603:10b6:8:134::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7381:EE_|BY1PR11MB8056:EE_
X-MS-Office365-Filtering-Correlation-Id: 30cf2082-1fae-4f6a-b2dc-08deb77ada8e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|1800799024|366016|376014|6133799003|18002099003|22082099003|56012099003|4143699003|11063799006;
X-Microsoft-Antispam-Message-Info: N6v0mXs8UFsUCDxqZksGhGofJ3NWNYb+UX71nX3vDS02e8puAY+r9+dyDIYx2o62pOx/YL/zgQcalJziQBH3U3YM8jP7RADFTP3uh8DUJVkIAztxgSdEXTuVYSr2ZmjAO4wyXysfmMZ+bI8fgsI3ICiUVnjj83qSahJuaTpdWvKcok9LF7keyqrbEWUWHXpqt+fWF6WUMtUQ9U4nuafW8jWwNzIthD0Jk9aB3odti1MGS4GAc22lEFcnPeZDAhAnpxJKBvty4JNDG9NZi3dwXAR0OvsHxxctaMUhjmGww/rCJR8STbYDGac1g25fwmAxJipP28s3vHdiLj9VlvrsvgXO4MWXUta1nP3ybsHtQ/sRom/z0R/tkZbeRjT+qjH9tfsp2A82eEef1p+hyNWxQi4J2eGnxNG48ekS0xZbTMAGihwoLg1wdnb5KlzDY0ZGreL+pswrrwS51J3aE8DMkOZl+EN3OsYcDqjxBazVI7JLz3/geH5ni1NDX8e9lX7E2fYkpytVjB+J3ScA5XouQCqZ/6oLvuiE+dcRrMepEuITGdZ+XVDJekOvVyoZ4epnJJdy9dYjA6RQTk5y0KvgsnAOAI4o7c9RI6d8yEj/ZMmmvBAJbnreeQ0AYSbaBPAu7gXXQkMrkmIAVVPEc9MLpO5oJ/lcvjVdJWLZJCdch2STcP4iAQ3Z6TV3suX/7j0N
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7381.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(1800799024)(366016)(376014)(6133799003)(18002099003)(22082099003)(56012099003)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aUszSDYxbHZ2NTBJNkJNWVFuRko0b0x5SUlRSTlJWVJjM1pqa3ZrdXJZSUha?=
 =?utf-8?B?ZzA2dUdQbk4wb0hiWGZHR0M0OEVrWTVEU0czbFVGdjk2aml2WVNlaDUwUEhY?=
 =?utf-8?B?eVBIZEZHd04wMDR5WVZEZUJEa3VjRFFDNFNmbUZ3NDQvQTk3U0lVYVlIMjNh?=
 =?utf-8?B?d0lrNndWZHJDS2tJOTVRVTQ2MUZDTGFNTVJyNVUyTU1HT0Zib0llRSthdjFM?=
 =?utf-8?B?K2U1ZUs3N3I1dDBNQ0wyY2dXSlpOWGU4WlU5WEVJYzJsUnkvbFp1QjhKSVVJ?=
 =?utf-8?B?WTFiOEJTWDJCWmFvYnV5blNBb2x2emp5QlE2RkJEb0xoS0c3MlkyTkcwSVV0?=
 =?utf-8?B?dHIvL3BXRVdZcVAwZURCYkNvaTB4TEsyUUlyeVVlV1ZxaXVyZGZlN3NlalFj?=
 =?utf-8?B?Z00vQ2hnZENkSU5EdUdQazVzZklLUUJXczArdXV1dEx5WXJZdnR2NUc5OG0w?=
 =?utf-8?B?ZEdnMlYvUE9TQWpnSnl5M2c3Sm5YUCs4M1dMMzg1U28waGwzNFJ0WkFJK1F6?=
 =?utf-8?B?NzRzRFVUOStZclhYc1hLT1FZZWQyNm5JeEdSaEg0ZjdyLzZZZ01pTU83Sk5w?=
 =?utf-8?B?VnY4WW4vWHdnQXNYandrdThuUVVoZW5LQnltUEFtU1B6SUZoREZrVzAyUnha?=
 =?utf-8?B?N0RHUFZwazM4Zy93RTFpWGlFTHQ0dy8xSVllN3VzQmNnVHpCUlMvY1lKSFFy?=
 =?utf-8?B?c0NDWTVhY2JlakZrY0NYc24walViUXNqZFlQL3ozblVqOWRhYjh3bDRmWS9R?=
 =?utf-8?B?U1VPKy9qSlA3WWpwalk1L0xhY09kbnZtRnVTMHVBQ0tlaFBlcmdBVzNsc2xB?=
 =?utf-8?B?Mk5ScjJjdFFDMHpPdDJ3ejRONUFmT1hzbkp0bHFUbC9UQ1c0MkJmTlJOalY1?=
 =?utf-8?B?U2JrOVhXWURaakltSEpKZHFzd0p2R1B3VEI3Rm9CV2xpbnluNHRuOGEvbERp?=
 =?utf-8?B?TkxtUnVPaHNQVmhwOXB3dTlZVzVyUXNsMndxYzBrRldZUCtaRURZT0NxSW5E?=
 =?utf-8?B?RE44Uk1pdWh3aVBpV3JFK2UzbXFLTnN5OSs0UWVJdkhKTUpIUVdUQWtPZWpu?=
 =?utf-8?B?SVc5ai9aMmdVajNlZUpOM3JtaGRqNDUybVQwMkZiMytuUWN3V25jY1d4NEVF?=
 =?utf-8?B?YVdibmFqNTc0MU1LLzV2NjFNd3Z1eXdlalBVOWZOMXE5ZEI0Wld4SHI5TGto?=
 =?utf-8?B?QXlDZ29ia1doOWs1Z0RjZWczdjZBWWxqaFdPeCtGQkxncFA4bzQwYmVaOEFr?=
 =?utf-8?B?aXVoQXR2QW5MbU81dmlRYnFFUEdTeFJoTmZqRkZ4SDVPSzJKdm1wUE4wbHAv?=
 =?utf-8?B?SHBUd0NMV1FSWjY4Uks4RDAxWFRBc2lua001QWJmTjZselZqdlhEb2l0aUc5?=
 =?utf-8?B?Q0dtLzkzU1JxOEFkdzV3UmR0SjhjSWVnWEhseURzNlBtQnhHYWFTaGNqaWsv?=
 =?utf-8?B?S0lXdEN1MWNWbFQzL3IrVVNSanEwTjZMNG9la29OV0ZZeXA3bVdJTTdYRkZ3?=
 =?utf-8?B?Uy9JMmcySEc3RGV6YTV2MVpOVnhzUXRDeTlPcXhueTllOUVWbDYzMnM2MHlE?=
 =?utf-8?B?aHZ3TjRtMVp4M0JLd2RVeHd4aE42Z3I5aXNnWEU3U2F5WWljaTVINmsvQnpF?=
 =?utf-8?B?KzA5TTB2WHdCZjMrRDlwb29QcG14ZzJDZjQwRGlNbFU3Y0hCRzZTY0hjODVs?=
 =?utf-8?B?czhOTWZsK3hXVGZUNlhzNDdTa3F2eTJXRVM5c1V6dUNrMEpGU0xYT0p2clBG?=
 =?utf-8?B?SUpqUURSclkvcWtqYnBaL1VIcGJsWm10V3J1MFAwMS9QYk9mKzNxV0hJMFlo?=
 =?utf-8?B?NHY0cDgvTUVaR2ZYbFlBbUJnQ1U1ZitReHhmZVcweTlBQisybEtFclhjdXV6?=
 =?utf-8?B?a3F6RWgzdmt5MTJMc3MxR282aTZOWUJnWmZyWlVPbGFEbzRnNnR6dVdYbWQ3?=
 =?utf-8?B?SDNFOTVsckFuYkpxdGdCZXNHckJkRXJjSWgyVExZdGtrZzJhZ1ZId3VtWER4?=
 =?utf-8?B?VHdBdkxjUEZPS3J4N0NJWFZoQ3k1R2MvSTV0Rk9INTQyQm5FVkVIZ01CRWx0?=
 =?utf-8?B?anU5T2w3TkNoOHBWVEQ1RUlwVmxjZ3pVU1laSVYwVU1YZ1NGUEp5Qm5jOXYx?=
 =?utf-8?B?cVczYUc1VklrNUV1YTR3TW1pTE5yY095NW51ZUh0TEdxWEp6Z0J5K1hCVVZ4?=
 =?utf-8?B?V29lSGtXUWU4enFQZVVvY1pqS29LVy9XTmNyZit2TUdBRW5vTWpHbEFVYm5m?=
 =?utf-8?B?UVFENzc5Nk15REc2Y1gvb2YvUi9aSXBueXhTT082T0YrRDEzN0EzWnFUVXJO?=
 =?utf-8?B?clUrcUcxN1lvbXo0R3JpQWszZXk1VWtPVEtQZXJTR0xuTzhGbENFUT09?=
X-Exchange-RoutingPolicyChecked: j//b2fp0/GQAJm911NchwlkrEcXKbLn5lS/tofsrHEnxX1j+IWroeiqd9yF0EqihSYRO2JXglzDcPPNzi8OfogZiI293dE3pwuKDhGoKlryZ0OnzUqPRWNALZqpflTPvPwLzKpSQDsm73zdNglMgmnt7WbqJx2++yUtqotB2b5RC7nIOQVbfWiBxGexoiWFofQR3okXMU5VjZGiOVNC9bQPT6qxRnhuk1wzXDY7n7VzODVM/gUdX+mziUs7z/x6611DevP16yWzvGDiTFGN7Uhy1ni/ZF/1SMsbGUiwFKet3XFgwgnPjrbRuOJHk3lOp2sLQtmuS+fzF1a2esoNZzw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 30cf2082-1fae-4f6a-b2dc-08deb77ada8e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7381.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2026 20:52:21.5960 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7/NgeOIE0HaeVGbzEbPpQVlIoGpe8MyyYGssiR6+PolEv1v4/iTWYBBMAC/4bucDzaqGDedH9jT0ppef2s8iQsSJdtJcO8Us7FQMwbkaY6g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8056
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779396751; x=1810932751;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PUKhIXa5/7ggWFQuSnLclbtw8sGrmq4lfZT6PUK+0bk=;
 b=GYUd/HiNTpDhtdki91Jyi5MLqmc7xbDqIedgGDF1xf5TqHnnV/ZKD0hs
 QKQyHd5gF0x80lt4+xSHnzWT4Uu1oQVxy7fcW5wjHHSWLlN7lP6txHh8n
 yymqmNs1puT2lu8iuerYHwvm3l6m0TVhILVejrVnDsrBgu/L+fAp8nYfR
 heTVNyLLPjbtJQNCzkVbeC+F7Snf1HH+yVQ6CPcpq8gxRxRvoCm99Ymy5
 Jdhxp6S+SMtei76cO/f0svyZ5p0rkfMRA69zmoXABSLx4qM6wmRIsrnq0
 AU4idVJjX3p4Z6L6daLbLqnjW1vlYLlpK4h0yidpSz9y4fPH1nreVOTFz
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GYUd/HiN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix missing 1's
 complement negation in GCS raw checksum
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:matt@readmodwrite.com,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:kernel-team@cloudflare.com,m:mfleming@cloudflare.com,m:stable@vger.kernel.org,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:eric.joyner@intel.com,m:paul.greenwalt@intel.com,m:alice.michael@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,mgmt.build:url,board.id:url,netlist.build:url,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,osuosl.org:dkim]
X-Rspamd-Queue-Id: D34515ABEB1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 5/8/2026 5:22 PM, Jacob Keller wrote:
> On 5/7/2026 2:34 AM, Matt Fleming wrote:
>> On Mon, May 04, 2026 at 05:10:23PM -0700, Jacob Keller wrote:
>>>
>>> Hi,
>>>
>>> Based on your patch description, I assume that you've tested this on
>>> real hardware.
>>>
>>> I dug a little through some of our internal changes history and sawe
>>> that it looks like the hardware has a register setting in its
>>> GL_RDPU_CNTRL register which determines whether the checksum value
>>> reported is inverted or not. In E830 hardware, it is supposed to be off
>>> (i.e. the checksum value reported already matches the expected setting.
>>>
>>> Perhaps your device somehow got the GL_RDPU_CNTRL register set to the
>>> wrong mode and that results in the swap being necessary. Hmm.
>>>
>>> I'll ask the team to see if they can confirm this behavior.
>>
>> Hi Jake,
>>
>> Thanks for digging into this.
>>
>> I read GL_RDPU_CNTRL on our affected E830 and the value is the same on
>> both ports of the NIC:
>>
>>   0000:c1:00.0: GL_RDPU_CNTRL = 0x0020a275
>>   0000:c1:00.1: GL_RDPU_CNTRL = 0x0020a275
>>
>> Decoding bit 22 (E830_GL_RDPU_CNTRL_CHECKSUM_COMPLETE_INV) gives 0,
>> i.e. the hardware is supposedly in "not inverted" mode, which matches
>> the default you described.
>>
>> However, looking at the data on the wire I see:
>>
>>   - netdev_rx_csum_fault fires ~65 000 times/sec on this host.
>>   - bpftrace at fexit:ice_process_skb_fields shows skb->csum =
>>     swab16(raw_csum) directly (no negation), e.g. raw_csum=0xfb4f
>>     -> skb->csum=0x4ffb.
>>   - At fentry:__skb_checksum_complete the upper 16 bits of skb->csum
>>     are 0xFFFF on every TCP/UDP packet -- the signature of nf_ip_checksum
>>     adding the pseudo-header to a value that was the un-negated raw_csum.
>>   - fold2(skb->csum_at_fentry + skb_checksum(skb,0,len,0)) ≈ 0xFFFF
>>     for every packet, which means the two values are ones-complement
>>     complements of each other, i.e. the driver stored S where the
>>     stack expects ~S.
>>
>> Negating the checksum makes the failures go away.
>>
>> Thanks,
>> Matt
> 
> Ok. This is getting strange. I checked a system I was able to borrow. In
> our setup, we need the existing code (no negation), otherwise we see
> checksum failures even for simple pings, including the initial
> DO_ONCE_LITE stack dump, but I can see with ftrace that
> netdev_rx_csum_fault is firing every packet.
> 
> I have the following on my system:
> 
>> $ lspci | grep Ethernet
>> 17:00.0 Ethernet controller: Intel Corporation Ethernet Controller E830-CC for QSFP
>> 17:00.1 Ethernet controller: Intel Corporation Ethernet Controller E830-CC for QSFP
> 
>>
>> $ devlink dev info pci/0000:17:00.0
>> pci/0000:17:00.0:
>>   driver ice
>>   serial_number 00-01-00-ff-ff-00-00-00
>>   versions:
>>       fixed:
>>         board.id N31483-000
>>       running:
>>         fw.mgmt 7.9.5
>>         fw.mgmt.api 1.7.11
>>         fw.mgmt.build 0x2bbde9a9
>>         fw.undi 1.3910.0
>>         fw.psid.api 1.20
>>         fw.bundle_id 0x80017eed
>>         fw.app.name ICE OS Default Package
>>         fw.app 1.3.43.0
>>         fw.app.bundle_id 0xc0000001
>>         fw.netlist 0.0.1100-2.53.0
>>         fw.netlist.build 0xf77b1d74
>>       stored:
>>         fw.undi 1.3910.0
>>         fw.psid.api 1.20
>>         fw.bundle_id 0x80017eed
>>         fw.netlist 0.0.1100-2.53.0
>>         fw.netlist.build 0xf77b1d74
> 
> 
> I checked the GL_RDPU_CNTRL register, and indeed the checksum invert bit
> is clear, matching your report. Even so, I see the opposite behavior you
> do: we need to avoid the invert otherwise the checksums are reported
> invalid.
> 
> Interestingly, I tried writing to GL_RDPU_CNTRL to set the invert bit,
> which appears to have stuck but it doesn't seem to affect the behavior.
> 
> I wonder if there is an NVM difference here. It is possible that our
> boards have a pre-production image still installed, and that might be
> impacting the results. I've asked to try and have the devices updated to
> confirm the behavior...
> 
> 
> I'm suspicious that somehow there is an NVM setting that toggles this
> behavior and which doesn't seem to respect the actual register setting.
> I haven't been able to track down more information in our internal
> documentation yet :(
> 
> In the mean time, could you share the device ID and firmware data from
> devlink info? Feel free to reach out to my Intel address directly if you
> don't want to share something on the public list. It would be very
> helpful to know the device and NVM data from your setup so that we can
> try to replicate it here.
> 
> Thanks,
> Jake
> 

Following up on this after further testing. With the information
provided by Matt, we loaded the same NVM image and also made sure to
load the same DDP package. In our systems, this still results in the 1s
complement patches causing rather than fixing the bad checksums.

I'm at a loss currently, as it pretty much appears that the devices I
have access to need to skip this 1s complement, but at least some
devices in the field (Matt's, maybe others?) need to have the 1s
complement or get bad checksums...
