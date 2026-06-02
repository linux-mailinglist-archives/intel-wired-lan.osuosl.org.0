Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dT2/DittH2phlwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Jun 2026 01:54:19 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B52633036
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Jun 2026 01:54:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=09Q7Yusz;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A74D283BBF;
	Tue,  2 Jun 2026 23:54:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oYWInziqzbIH; Tue,  2 Jun 2026 23:54:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B155883BD0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780444455;
	bh=aXKF2qoc0BYRMYarNfY5vrnWSG8tGsHP53VdpcOh5mY=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=09Q7YuszYiYQhBZGLgQ9IimRuX0SDfTi9HpwjfpSnCF2lJvRG0wBBQLN1hSKEAEtd
	 fpY/UDhslt1YDqIXc90Wo7jpXGUGVuKLoy6MS7b7eJDg39B3VNd8IvUJojG413d0hQ
	 xjy/tBnJ7IkWzAE8O+xe+g+VYwrGMxIzET/Og9l8SG7eXLWyH/Up8hfrCX0GywQzLb
	 mMTWKUNljJUafnCM11SsNw5GSGh2nYRC6micYxpwCwGASrdB6YPbHN3fyAPSEmgzib
	 lIJRSBIh91XUbe6zmiCpcUYqLUK1kO91BF75IkCnkntTPdins9S5dLBDClBITYp9Pj
	 x0aBzCfhJ8unA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B155883BD0;
	Tue,  2 Jun 2026 23:54:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id AB482D3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 23:54:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9D56D61470
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 23:54:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a8zP2mTiHiKn for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jun 2026 23:54:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A9AC46146D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9AC46146D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A9AC46146D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 23:54:12 +0000 (UTC)
X-CSE-ConnectionGUID: DXWnFOxnQVms96w0rhYxug==
X-CSE-MsgGUID: oDpU4xZwRNqZa5bXvJRYXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="81424967"
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; d="scan'208";a="81424967"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 16:54:12 -0700
X-CSE-ConnectionGUID: L2zf9TwCQ9yZ3hwdA9QAQg==
X-CSE-MsgGUID: hqWd7jYjTEq8Bd4YOYrzrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; d="scan'208";a="267926293"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 16:54:11 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 16:54:10 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 2 Jun 2026 16:54:10 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.32) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 16:54:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P/3J4MopvnjDBjbWi8cVZP5f3JwOt8KaUk4ljTaPzUCaP6S2RKrpEPfIuRxjW6VG0beM30b9sqpHkt9orZtv9CeIWOhqFXMgPPIU0FP5X+YsriJpbEzK4JgwSO6acAAIDaBkTVNlNtzrkQC/1F+v7lHMtEoALjUJg+6lHn37Eg1+oNLOQjKF0jARUyW2AZ3ew3Jug9/O0ivFpYkhAkGLpWYaqypyJtzDp2zaU1mw+HiwN2sd0LO9Dq3gozdFSBgPwnFNGcXmie5lljqWQh//GG1xOr9UdXiOTNnL+6H0T4DFlnxQpfImvaj8AU8AwE6d6so2x6wlw1CF22zQY4OSkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aXKF2qoc0BYRMYarNfY5vrnWSG8tGsHP53VdpcOh5mY=;
 b=vkTa4EryMO8TUaMa9iM68PxlafPM902KmFYhdIXFaq7S/8lg3YVntxZUt8DPBGH2xID+muhXaWJDECCRLNDjYoV/GsBjVgiTuMyRum4ecLCpOikU9/QTOpGP/HkBqrxNIR88MnsIKn7KlTHOS75MMNQvNpqWyQ+ydFEHnyiauZUcrc90KwUDWAV4ALtEVeS+EGNMTR6/oXXcJxZAdXuN82bBQArrdghbNiG4xyu9st6wrKEBGGgJDmm1wSWRT6LLM2Yx6GrgUynCjCZTptSmM5ORHqoGpIeW4Hbpzps7LVyWF6GnhAnfpJWivMKIGhzsuP+hrmU5s5jWbLGdS3Jl5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7381.namprd11.prod.outlook.com (2603:10b6:8:134::14)
 by DS4PPFABF58482A.namprd11.prod.outlook.com (2603:10b6:f:fc02::45) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Tue, 2 Jun 2026
 23:54:03 +0000
Received: from DS0PR11MB7381.namprd11.prod.outlook.com
 ([fe80::4c39:dfe6:d6dc:6f58]) by DS0PR11MB7381.namprd11.prod.outlook.com
 ([fe80::4c39:dfe6:d6dc:6f58%5]) with mapi id 15.21.0092.006; Tue, 2 Jun 2026
 23:54:03 +0000
Message-ID: <30e43464-2219-475c-b4e6-4d2dfa94dbfc@intel.com>
Date: Tue, 2 Jun 2026 16:54:00 -0700
User-Agent: Mozilla Thunderbird
To: Marcin Szycik <marcin.szycik@linux.intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, Grzegorz Nitka
 <grzegorz.nitka@intel.com>, Arkadiusz Kubalewski
 <arkadiusz.kubalewski@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Przemyslaw Korba
 <przemyslaw.korba@intel.com>, Anthony Nguyen <anthony.l.nguyen@intel.com>
CC: <netdev@vger.kernel.org>
References: <20260529-jk-fix-e810-ll-interface-function-v1-1-ec84a408af7e@intel.com>
 <961dca76-3025-45a4-b11e-0ee8f241d290@linux.intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <961dca76-3025-45a4-b11e-0ee8f241d290@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P221CA0028.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::33) To DS0PR11MB7381.namprd11.prod.outlook.com
 (2603:10b6:8:134::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7381:EE_|DS4PPFABF58482A:EE_
X-MS-Office365-Filtering-Correlation-Id: e84e677f-4846-46f8-0ef4-08dec1023975
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|56012099006|4143699003|5023799004|11063799006|22082099003|18002099003|6133799003;
X-Microsoft-Antispam-Message-Info: 6gXHEzBrB2EDM0p3NN6sTg3u8BueboF/wGwlIgIh6CMUommd1hlkgSXvLuu4kFSn9Gx/bmlXc1bpyVgfYtsS4qbqXI4pikYWsnEsSirW/duNlqmNWbFkEkHKxmxCV4UdVDbcoa51dGQx5TgprxS0kq15qV9MUQDFzXG5Ry6Du9jF2xeXe9IPjk7eLy1J+70H5Y2rDWOadqx0AIZaON9cgDpO+n1UThZfrN1DXz+9bworbgvuYV8yEbiqKb+1lH8tOJT2iEpkFsvu2zlFDjDiUT6s4KyUjYNQAVjiN4kk7QSc/327FAGD4Myv6MY6rqhIoKZfuKEvDmY6Mi5tHnzqtxytpqZ0SH8zmBB6TQEbs0fGQLSHZyVJQmZM/EEod3BlPcJ1okrP9SxgA/Aa/ENMUni/JpBSYvEDlVdETmrTtr7qvdcOjE2mOFL8Q1una4HnLR7Bm5xqpIfTkNwKE+1y72DIRjy2mBIcn2mAoKpfdxvw7I4iEoYLyUFXgUNQL3JpB/SkK7UEIM4MMQS3yDlAcYqf4FiWchjGpgcX9qm0TIZrmuDzIlbFzre0tKuc9zUtXCK4Rv42Nx50sMEAtl30YZSp39MOH/w2ohz0ydfgpUkQNEPi0oTs/LeebWGV5vLSl1cwjubt45JI29VEg4hh1oUca43JZlAFw5cD+e7Uke9kmXUhv2JyUqsTDvOZmhbR
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7381.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(56012099006)(4143699003)(5023799004)(11063799006)(22082099003)(18002099003)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c0drOVpjRkJFOG53UVlyVGQ4ZjZadisrc0hSa0JvYmhWNEcwWjFvbm40Mm96?=
 =?utf-8?B?Z0R0TC9EWkJVU3F0dDVZNGZYZ2NkaWNMT2RoR3BxQ3ZGWnBONi9qbFNBdE0x?=
 =?utf-8?B?eUtPeEVGYnZGZkgvdDNJVCthM0JZUnpsZWtmOXZ5dGNqelJlWUlYSDQ0STJF?=
 =?utf-8?B?ZFVLQUZaQ0VTY3poUDRzNEVnYjg2d200Wlp5U3Zmd0hRLzB3aHViNDlNc3Jh?=
 =?utf-8?B?bFVEL2tJTWkyVldkWE1SRzRnSno2N2IrQ0tPT2VoUmNUQS96SVFRK0UySEdp?=
 =?utf-8?B?NXVtYXR5b0xvaUU5TDhHZzA1Y29oUHJBbWZ3L25yeHQ0SnFTazBlM1hsZ0ZY?=
 =?utf-8?B?N3lyNWlLY3Rxb1lDVFl6U3ZGS3hKYmZsa0FtT1R4dGNYa0o5eWZFWlJQZjBr?=
 =?utf-8?B?N3d1LzBZY3V3cWJBK3pWQzg3ZTBTRU1KdlcvTHlvemFIMm01SlQ4Szg5MVRT?=
 =?utf-8?B?YjYxNE5WYnZtQzh1UlFGWjZZK3d2L1JMTnRUZDVpSTR0ZkVXTENHRE0yZllZ?=
 =?utf-8?B?aTZiU2pZbi9SbndnSEc1dW5DM1hyNlRsbTJneStDYjAxZm5kSmRKYXBBalI3?=
 =?utf-8?B?M05qNzFUVVJ0WFcyMC9ZNHV2UkYrQ2owcEplNEo0Zk9Xb3k2MW10NTdHdmp1?=
 =?utf-8?B?bTRXN2JlSUVIVEFvV000UXcxOFdQL25YL3FqQ09peC9xK3JZYXFzYXFpcVZ1?=
 =?utf-8?B?MlFEWlA4Sm5TdUcwTzBYZjNjeXZ4L256cDR0eTJBeWV5a01ac1BWc2xVRFg4?=
 =?utf-8?B?TDdXR3FENkhycVlXTmZKcjROMFkyeEhTc2d0VlJSd04xdlA1Q0Z4RzU0Qi9Y?=
 =?utf-8?B?TzQzdkZ4dFhzRk95VWZGamxEM0dFOVp0QnM0TGlPcERFVXNOajAyTUNzVDhE?=
 =?utf-8?B?Sm10ZVBKWTlia2JJZU9wMm5aM0FRWmdGdWVhdko5Vk9oZFNCemwxWWU1NVNW?=
 =?utf-8?B?VWw4RHdvbXNxN3pKUHFhZERIZEpNaVJxdCswMGxnZ29QQk5DMDFHR3UydVZD?=
 =?utf-8?B?Vy84RG05UFVHam94RTA4ZktwdEljU3RhOWJuYmlXOGw2bGVHNWhDTVpsR0dO?=
 =?utf-8?B?anA0SnRoaVhmQXFOcVo3L3RwczhFQ2NlZisrK2hrcEtuUGkzdzBYaVNlZkxP?=
 =?utf-8?B?cmh1Rm1YWXFJZjgyM0ZzbmZ4Q1BDT0FZd2NXZGJ3V24rTnhoa29VUGRyNnJy?=
 =?utf-8?B?VGlEOUgrOTEvRHFzMUE0Y2ZCTmNLajJ4bGxGMVcrVU44WDM0cXZZVThvemls?=
 =?utf-8?B?NWVqZ3RqZzh3YzVtZS9ZTHRXK1dOSkNEQ2xRNEI5SFJuZCsrY1pzN3RtbGRW?=
 =?utf-8?B?OVlUSlc3OXpTZ2RRWlllYlMraGU2TVdCNFVmdWJzMWU0SWdiUm40Q2gvUTBO?=
 =?utf-8?B?Y0g1K3BSL1N1VVlkSzZLN1FJQXJxRFZ1aytJRGl5MSt1dDZCZGxWbVlCTHhl?=
 =?utf-8?B?bStLYzhwbi9xZ1QxTFpJS2lPcHNhbUFhNWhYbG55RmJLRk9ldFlPem5hL2ZI?=
 =?utf-8?B?WkYrQWdSOThVK2V0eUR4NU84ZVRPME4vRkFNd3NpVXU2aE4yTmMrV1IzSFpj?=
 =?utf-8?B?Y0NVK0Y3THZvNk1zVUh6ZURqaDBwdis5NlNTbmFCb0FIT1ltVlNPWFNmVFdM?=
 =?utf-8?B?UkFjM3BYSnRxdjg3TU0vUnh3OHhxTHprMmY5TGpoQldNMCtNYzkzcnhXSnRB?=
 =?utf-8?B?QURkMDVqcFZoZmp1Z2pneCtNRjY5WUpIdVRGbmFvdjNxbkpRaU1neklpSTdj?=
 =?utf-8?B?STF4V3VJTXBJTnJPZVRqblNSK09NZWRkQ3BKUEdtU2QySFNPOVB5a2E4UzNY?=
 =?utf-8?B?WXJnVFQ2alFheGJwMzlhbU5iK3hsa05Dc2Zyb1lVU05UQzZTVHdpNUtwVEhw?=
 =?utf-8?B?OC96MXE5MkFQdysxaFcvcTNWVlJwZDRxdExlTXVXODhTUGdzSHZibVJ0WXNY?=
 =?utf-8?B?VmliS2FaNWhWN0FFUDYxL3pnZzJGUGRXU0xycUdpSGh0WkxvUE9DRVMxbWFE?=
 =?utf-8?B?eTdSN0xQRVoySnBTWjJUVkx1cDJkcmR0OGd3MVVFRkhDc2hjMkpuaEZueWNt?=
 =?utf-8?B?RFZQRFNPdmwzQUxHVVA4Ym5yWHR0NGQ2N0h1aWhGcFZVbVVKcDlCMWFaMXN2?=
 =?utf-8?B?RzRkcE1WMjN0ZVdmUEVvOFN0QXpuUEs1ZDhKUkhLdVR4Vm1YZTg0b3hYM3hZ?=
 =?utf-8?B?bG11RUlENXhlcnoxWGkrTTU3M1ZYbkxGVzU2TlZlMjlQbkREck8xWGtac1V4?=
 =?utf-8?B?S0FWTThrYWxuUUhrMHVKUVdja3p1RTVhVTQ2NDhqYjNrbUNGZkFteWlJeVJ2?=
 =?utf-8?B?alJCemhjaUZITE5oVXlCMFhNV28valZ5V251RXdSU3YyLytoZE9lQT09?=
X-Exchange-RoutingPolicyChecked: SmOBJP0tfHxrGBk/vxiNqQ8euWCbHMhptK386vUTH9/wjDwtQuqvKQWuyno7sfyzdXe3otCwr1kTFLSXaJW00dIwkGGdZ1R3sJCQvJTfZ0a0GOvolWsPfLTBIU3pIv0hBvmfkjR48JxhL4JlfMtvjefiwl+CI7s2VU1/h+TuwY603Ox+Xf0r0/ZjAkoQJsgZejVkSQKibQA5Jsj6qZZBrCvAOHQoaMRflBo2Mzk5pshkSEubY/7O88vn8FV+LnsuW/6P/W79kbejm2c8qlekeR/6ty4MqUmY7pHWKJCiIFhsbwtMPsC/IuPsGK4UC5jjCVeD/zFmdI3JYc+8tCTQBQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: e84e677f-4846-46f8-0ef4-08dec1023975
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7381.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2026 23:54:03.3322 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XFjlKoJwSDBG1eQSWRTy2voPen5nnfhjbwxWxeoiLwnCHYRAIFeMGrC62ut1bGMPnFlU0fAIHfD2QKvSFY3MsjtQ1+oBq2S5vA3G6Vm4kwk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFABF58482A
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780444453; x=1811980453;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IJ+gmN3LiJum1sij1I8hO9MpaGGrFtydr8OFlUNNFEQ=;
 b=aHkIL0Vo/PngV26BF4IIBA8izkSwRY71X6o5eC+UTw5xZAEd+OYf7nhE
 PY3N2st7klGL+9S9swS1Kosl7IzNS7ig/lexdSujS6c2Wb8ajYFR3SpeR
 2ym93hlMV46WQ0CFUeQT7NndVL67d4ZRPIXC8ZqaaYIOwi84n1sZhlbZ7
 jpyRov/uupPKt+MEuC/OxQgnzD324dZEK/GzUvvh+PLRs/P9moZRxoOe+
 u8yyFH12x4Sd6jJxIQXIaOydOeGiYRTR5EUgdpT6eqzDCngpc0PNW4crc
 11+X8cTp8N4CorRbrz2zbKJ8B0pMSIkaEAy33LgyOEP2r7cuhKUqnZLt0
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aHkIL0Vo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix E810 low latency
 timestamp interrupt handling
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:marcin.szycik@linux.intel.com,m:grzegorz.nitka@intel.com,m:arkadiusz.kubalewski@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:przemyslaw.korba@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime,intel.com:email,osuosl.org:from_smtp,osuosl.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 11B52633036

On 6/2/2026 3:15 AM, Marcin Szycik wrote:
> 
> 
> On 29/05/2026 22:22, Jacob Keller wrote:
>> The driver has supported a low latency timestamp interface since commit
>> 82e71b226e0e ("ice: Enable SW interrupt from FW for LL TS").
>>
>> This interface is triggered by calling ice_ptp_req_tx_single_tstamp(),
>> which is called by ice_ptp_ts_irq(), which in turn is called when the
>> driver gets an interrupt from hardware indicating that a timestamp is
>> available.
>>
>> This function doesn't check if a timestamp request is already in progress,
>> and as a result could trash an existing outstanding requests when called.
>> It turns out that this is unlikely in practice due to a number of
>> circumstances that prevent most of the ways that could happen.
>>
>> 1. The ice_misc_intr_thread_fn() might trigger a software-generated
>>    interrupt with the PFINT_OICR_TSYN_TX flag. However, we don't enter the
>>    thread function since ice_ptp_ts_irq() always returns IRQ_HANDLED for
>>    E810 devices which support the low latency firmware interface.
>>
>> 2. The ice_ptp_maybe_trigger_tx_interrupt() function might trigger a
>>    software-generated interrupt if it detects waiting timetstamps. However
>>    it checks ptp.port.tx.has_ready_bitmap which is always false for E810,
>>    so never enters the code path.
>>
>> However, it is still possible that another Tx timestamp request could
>> happen and complete and race with the firmware completing the outstanding
>> low latency timestamp request.
>>
>> This doesn't happen often in practice because many applications only
>> trigger a single outstanding Tx timestamp at once. However, if the user
>> runs multiple copies of ptp4l or uses other userspace stack which does,
>> they might miss timestamps or get corrupted timestamp data.
>>
>> To fix this, have the ice_ptp_req_tX_single_tstamp() function check and
>> only begin the operation if the ATQBAL_FLAGS_INTR_IN_PROGRESS flag was not
>> yet set. This prevents a new possible request from trashing an outstanding
>> request. Note that on completion of a request, the ice_ll_ts_intr()
>> function will initiate a request for the next outstanding timestamp, so no
>> timestamps will be lost.
>>
>> Additionally, although the ice_ptp_tx_tstamps_pending() function doesn't
>> currently get called for E810 devices, it should still not return true for
>> devices which support the low latency interrupt. If for some reason code is
>> refactored and the miscellaneous thread function does execute, it should
>> not trigger a new software interrupt for devices using the low latency
>> interrupt interface. Add an explicit check to make this function always
>> return false when the device is operating in this mode.
>>
>> Finally, convert the atqbal_flags to DECLARE_BITMAP and use test/set bit
>> functions. This helps in clarity as we can use test_and_set_bit and
>> test_and_clear_bit.
>>
>> Fixes: 82e71b226e0e ("ice: Enable SW interrupt from FW for LL TS")
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> 
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> + some nits
> 

Thanks for the review. The nits are minor, but I think its probably best
to clean them up because of the possible confusion.
>> ---
>> This was originally motivated by changes in our out-of-tree release where
>> the issue of a software-generated interrupt was causing significantly more
>> issues. After further investigation it seems that the upstream
>> implementation is more robust, preventing the thread function from running
>> for E810. However, there appears to be a small window where issues can crop
>> up if multiple outstanding timestamps are requested near concurrently. This
>> change is motivated at closing that gap and ensuring consistency of
>> timestamps returned through the low latency interface.
>>
>> To trigger the issue you will need to issue multiple Tx timestamp requests
>> near but not quite simultaneously, and it may be quite a rare race
>> condition.
>> ---
>>  drivers/net/ethernet/intel/ice/ice_type.h   |  8 ++++++--
>>  drivers/net/ethernet/intel/ice/ice_ptp.c    | 24 +++++++++++++++++++-----
>>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 12 ++++++------
>>  3 files changed, 31 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
>> index 1e82f4c40b32..7035ea6c59db 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_type.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
>> @@ -859,12 +859,16 @@ struct ice_mbx_data {
>>  #define ICE_PORTS_PER_QUAD	4
>>  #define ICE_GET_QUAD_NUM(port) ((port) / ICE_PORTS_PER_QUAD)
>>  
>> -#define ATQBAL_FLAGS_INTR_IN_PROGRESS	BIT(0)
>> +enum ice_atqbal_flags {
>> +	ATQBAL_FLAGS_INTR_IN_PROGRESS,
>> +
>> +	ATQBAL_FLAGS_NBITS, /* must be last */
> 
> Nit: no comma
> 

Fair. This one never changes and is always last so no comma makes sense.
My habbit is generally to always include commas on the last element in
enums since it keeps things uniform but I agree it makes sense in this case.

>> +};
>>  
>>  struct ice_e810_params {
>>  	/* The wait queue lock also protects the low latency interface */
>>  	wait_queue_head_t atqbal_wq;
>> -	unsigned int atqbal_flags;
>> +	DECLARE_BITMAP(atqbal_flags, ATQBAL_FLAGS_NBITS);
>>  };
>>  
>>  struct ice_eth56g_params {
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
>> index 36df742c326c..11059deb5d41 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
>> @@ -382,6 +382,7 @@ void ice_ptp_req_tx_single_tstamp(struct ice_ptp_tx *tx, u8 idx)
>>  	struct ice_ptp_port *ptp_port;
>>  	unsigned long flags;
>>  	struct sk_buff *skb;
>> +	struct device *dev;
>>  	struct ice_pf *pf;
>>  
>>  	if (!tx->init)
>> @@ -389,6 +390,7 @@ void ice_ptp_req_tx_single_tstamp(struct ice_ptp_tx *tx, u8 idx)
>>  
>>  	ptp_port = container_of(tx, struct ice_ptp_port, tx);
>>  	pf = ptp_port_to_pf(ptp_port);
>> +	dev = ice_pf_to_dev(pf);
>>  	params = &pf->hw.ptp.phy.e810;
>>  
>>  	/* Drop packets which have waited for more than 2 seconds */
>> @@ -408,7 +410,13 @@ void ice_ptp_req_tx_single_tstamp(struct ice_ptp_tx *tx, u8 idx)
>>  
>>  	spin_lock_irqsave(&params->atqbal_wq.lock, flags);
>>  
>> -	params->atqbal_flags |= ATQBAL_FLAGS_INTR_IN_PROGRESS;
>> +	if (test_and_set_bit(ATQBAL_FLAGS_INTR_IN_PROGRESS,
>> +			     params->atqbal_flags)) {
>> +		dev_dbg(dev, "%s: low latency interrupt request already in progress?\n",
> 
> Why the '?', are we not certain it's in progress?
> 

It was more intended to invoke a note of "surprise" as in "why is this
happening??". Its obvious that it *has* happened, but it wasn't supposed
to be possible. However, I think that was a statement made before I
realized the case where two near simultaneous timestamps could cause us
to enter this function again. In the original "bug" this was happening
because our interrupt handler was being forcibly re-scheduled via
software triggered interrupt.. but that only happened due to flukes in
code that never got in-tree, and the assessment was wrong.

I think this is worth fixing, so I'll send a v2 after I double check
feedback on Sashiko.

>> +			__func__);
>> +		spin_unlock_irqrestore(&params->atqbal_wq.lock, flags);
>> +		return;
> 
> Nit: could be an unroll.
> 

Fair. I had also considered using (scoped_)guard but netdev maintainers
don't like that as much. I often don't bother with an unroll goto unless
there are multiple places where we have to cleanup.
