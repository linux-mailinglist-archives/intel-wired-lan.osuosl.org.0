Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 538B0B1773F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Jul 2025 22:36:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BE3AD84613;
	Thu, 31 Jul 2025 20:36:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ts_Gv0YxggnQ; Thu, 31 Jul 2025 20:36:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E69084615
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753994203;
	bh=K2loyxiAPI4/hBT8caItnAE3/ZcKRQ6gf1Bc9+z2AeA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lUovCXI6nFD/fl7kDXMqoM/MzfR+wVFXzJ9pFM7VFF3gra/5/nIurisiDauf6v9R5
	 FApt2OEZhbKET8645MZgqs8fhpYH13ijHH46PdDze7kSmkDE6e/RsU9U/SvWU89YP4
	 X2SKg2TNki5cDQn5LNdISHJ4XR/ZOcKYmA/zZx8BPa7hJJt3/nUC8NpbIpcbhGfjLP
	 Xnx06qvVOuSpVakSH5d08VnrEFhNefxGKDoF9A5KGAgus5/etJm04XsowD/ZIH1j/Q
	 cmjoid0ZQY5Z70cvgu/HYQdynJk4WpObLMj5bTAuSNoC3p7v5iDxhJBS288KXoCo+0
	 moj4vxLL8ykug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E69084615;
	Thu, 31 Jul 2025 20:36:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E6DE413D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 20:36:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CC08D40176
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 20:36:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JOuzM24LKilc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Jul 2025 20:36:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 10D504017A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10D504017A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 10D504017A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 20:36:40 +0000 (UTC)
X-CSE-ConnectionGUID: 7CCrmH1SRmqNOBlZJb/ZMQ==
X-CSE-MsgGUID: mGpjf/mPTd2iUZ+AhboWmw==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="67409524"
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="67409524"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 13:36:10 -0700
X-CSE-ConnectionGUID: q2laNfIUTVW6U1Yy8ltKPw==
X-CSE-MsgGUID: va3DjcBRQ8OwcGLb4yC71w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="163068231"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 13:36:10 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 13:36:09 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 31 Jul 2025 13:36:09 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.59) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 13:36:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dkUZ7/neBKu9MnjpKBBSm3LS8AzZd3IH2QQ7WkN17K9pNufJkwg0W/wnL+Vy3phTTFO/FOp0Xv6AIXsJoVr/Xej7jNkeiMFJtsN0ZNcRDJi94U2QcbBARc2dC1wKxPW4X4XiQthiEX16cLvSRUxeVfVCQH8h22CCdWzLA/Yj2L/efK8vVG4b8YmivwrSxgUECcGyH1epvgJYXMqUfqKWFT4LqjxVwMMsaCB8qj5oBd2VFGAAocq1pn83CMOaM94eNNFvnBWSKJZzIhHmgpzN/Rx186MDOsyFkoHeQdfEtsdpaFcFGOlOrB6WFhAgOVtc8CiWA5oYn8erHL+70wVp7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K2loyxiAPI4/hBT8caItnAE3/ZcKRQ6gf1Bc9+z2AeA=;
 b=kvRHqeXxkx2+8vbFSBBceiOwLlRNAQYVMa1No2oqy4k6mcrpGQbCslh1DI6Y3APFKcTV2qRqS7NwG/4+dcqEojTIIOXeZjY1qN80OImymKr2oYANQFI0aCgQyBnhZtDkxqlsj3u4Z2x5YghNwghfDJ8+b4baqwJ2dnF0LbPTfP8zgerLIPGCCWG8wXWPaPFunZdd3oMKRwenHHlFGkcdpwOY9U2J+WjvX6sayvC5mOfWVp9kkI+zBi5diKOCtPiv+VtIKjPVDskNK7YiWRVIoKufxTs+X2LsjRs54xEvx1jR0i6OQctCYTbja0wJjra/Hwm8N6vtQDKTSazdnEoqZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB8452.namprd11.prod.outlook.com (2603:10b6:a03:574::22)
 by SJ2PR11MB8566.namprd11.prod.outlook.com (2603:10b6:a03:56e::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.23; Thu, 31 Jul
 2025 20:36:03 +0000
Received: from SJ2PR11MB8452.namprd11.prod.outlook.com
 ([fe80::d200:bfac:918a:1a38]) by SJ2PR11MB8452.namprd11.prod.outlook.com
 ([fe80::d200:bfac:918a:1a38%4]) with mapi id 15.20.8989.013; Thu, 31 Jul 2025
 20:36:03 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Vecera, Ivan" <ivecera@redhat.com>, Jiri Pirko <jiri@resnulli.us>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "horms@kernel.org" <horms@kernel.org>, "sdf@fomichev.me" <sdf@fomichev.me>,
 "almasrymina@google.com" <almasrymina@google.com>, "asml.silence@gmail.com"
 <asml.silence@gmail.com>, "leitao@debian.org" <leitao@debian.org>,
 "kuniyu@google.com" <kuniyu@google.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [RFC PATCH] net: add net-device TX clock
 source selection framework
Thread-Index: AQHcAHbJgJtB/8Zrb0SVd65H8jea6bRKmVcAgAAm3QCAASIp4A==
Date: Thu, 31 Jul 2025 20:36:02 +0000
Message-ID: <SJ2PR11MB84520DB2400F612E1A690AF19B27A@SJ2PR11MB8452.namprd11.prod.outlook.com>
References: <20250729104528.1984928-1-arkadiusz.kubalewski@intel.com>
 <p4tnkuf3zh7ja45d4y2pas6fj6epbqdqdqtfai2vmyul3n43lf@v3e5dvvbphiv>
 <6b8281b3-a438-4b3e-a8e7-d5043416d421@redhat.com>
In-Reply-To: <6b8281b3-a438-4b3e-a8e7-d5043416d421@redhat.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB8452:EE_|SJ2PR11MB8566:EE_
x-ms-office365-filtering-correlation-id: 90e2ec83-2c4e-46ae-5862-08ddd071ddf8
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|366016|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?OEYxN2ZsayszbEJBYnQxSVkxYVJmYS8rQ1IvbmxOK2crWHY0SkhZL3g5TnNh?=
 =?utf-8?B?S2ZVYXp1L2ZCZGtFaDRsM055a0V2a1dnK1FRYU9hWW14Q2pDZVZXQnlRSXJz?=
 =?utf-8?B?ZVJTM1NKckFiK2tRQzVGK21tRXI0Yitacnh0N1UyNEF2cFE0TVVPSjdkeE8z?=
 =?utf-8?B?eGVNWTFaZG4vZVdnVHNmY0Q4Tno1MnlVdzhBdXlYUWpLZW4xb1JmRnU0dE5X?=
 =?utf-8?B?SnlrRCtRNFJLTjFSaStUcDIxUEtKSmFSeXZrZTU5WVZDUm9BbUo3U0VZdmgv?=
 =?utf-8?B?eEREM3V5MjJvWTltVlVVbjcrTDBLMzR2OXI0dGFBdnViR28yczlybXlQbjBH?=
 =?utf-8?B?Y3c4VW5GOHozUngvbVRBak44RkN4ODJ4QXIyck5ZK050bXFiRXVuN0lYVG00?=
 =?utf-8?B?NkdsZVhrb0d5SXdxTlBHcVJZM1RwR1E5MWxoTHpUZFRlU1VhTDVJbWVoZlcy?=
 =?utf-8?B?ODJ2VkFCUGRqb1VDL2t1d3BueDZEb01yWG5CMkRJTDZHQ0ZwOVBLaTNCNWVl?=
 =?utf-8?B?RUF4dG5DRjlhVi9UVWFWQ2o3UFB0akVYR21OdG1yMXhwdHE5Tk9FcVNoWHp6?=
 =?utf-8?B?QkV3WFJhNGova1FBbk5QWGNDUzk0Y0Z1MHROeU9DazlPTFEyaWZkS1c0N1Uw?=
 =?utf-8?B?ZFhlbDlIQXlPYmN0NTVQaUtnaldQMlI2UlU1cUdQZ2RjdHZELzFBRU5RTldv?=
 =?utf-8?B?MGhGYUVQQXRtQVpwNVdpQnFXQ21QZzFobjA5V3FIbHVZK1dlYmY2R05wWUtD?=
 =?utf-8?B?VWRqYldxTkdXN08yUjdqNytpT3dlRzRsRDU4MFNpVHJJNjlTZGJvd25mRlhh?=
 =?utf-8?B?S2dGMGpneHZWbkIzcEdkWkl1ZWdmZ0pXOG9DSmtvMU5IazJ2STRPMm0vZmhY?=
 =?utf-8?B?RERrUEVwZGptTkhhbjNlV2NCWTBjQjl6SFAxS3AxT1N2SDRJNy91aXMzaVVK?=
 =?utf-8?B?TlR5UC8weDVBYXF0U2Nva0REN2NuVjRYNzNXZTJDUWhCVkxKU0g1WVptaWJz?=
 =?utf-8?B?Z2dnU0Y3b1pDZk5xajUxRythRmJCTjMvNTRvemp6NWNsRUttNW1KdzVVbzJO?=
 =?utf-8?B?OFYySU4vN2ludXpFdGNRM3BZTm5FZGptMjdFdU94L3NSOHI1cytJMlN6cVBF?=
 =?utf-8?B?L2xIdHFxSEhiT21vWm5OaXU5MTY5ZS9lS2xVWWNBYjRSbm90S2VzQ0VEaytE?=
 =?utf-8?B?NFJSczBvcjFydG1PUW9vZXJ3OERsRW9BQ2JmVEhmM3NQTGthejBiZlM3V3BQ?=
 =?utf-8?B?YVpIYzYwbElGTTFQQk9qRS9ydlZsdVVteVBPQkEvNFlLZFMwYUJWWlZkU2Mv?=
 =?utf-8?B?Y1JaQVZUVlhiTkpNYm5WQldmRzUwcytLM2t0NVZBdVZUVFFEY3VRK2kxYldt?=
 =?utf-8?B?ZlM3Q0NteFBkVWVMTExzWGZwWDYzNXFCU2wyYjJzMmpoSWVDZE9FdmtWejlT?=
 =?utf-8?B?Vi9LaEc4UjByRjBrNTkvNEF6MTI1czZPZFZKcnZJbmFwZUdTcEVoWXhHTFl5?=
 =?utf-8?B?TFE3RGRlcFpZUXBkOTlhZjdwUFFrcS9pRjZSMzAxYnVLZnR3aGVISHVZOW5S?=
 =?utf-8?B?UDRZZmhkT3pablNNNmNReHFseUh6eCt3ajRXM2g2bGk1UnZhOVFsNjFVR2k1?=
 =?utf-8?B?TjllMjdmK2hXR2FjMU4rVGtHbHV1RHZsWEVZcVBlb0gwdUlMbXNMRmp5RGZn?=
 =?utf-8?B?Qk9KWG11MWNjK1BjdzBab0hNMS9xdHRUSkNlZ2hqVmlTZmRsUkdPbXFyN0Rm?=
 =?utf-8?B?Q2h0SnFZRm92TCs5NXh1UW5UZGpaUmJ5amZQcVlwUHpKTVlMalFqaGk1cGFS?=
 =?utf-8?B?d05lNXpaZ2lGRXU1NjZCSXpZS3VIQW43WGphbEwybW9TajFmRzg2bWl2MmND?=
 =?utf-8?B?NmlYVkRLTlNOTHhjVk9mVy9zclBGV0ptaDRhM1hoZE1ZV3o1R1ZyODVXR2JT?=
 =?utf-8?B?L2xRM3FHNDZyb3lhL3BEdnRlMUlPTGROSUZQSEc5bHJ6cWpXUDRYOEdSUVpT?=
 =?utf-8?B?ZkhLMTNYRTJRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB8452.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(366016)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?REdpVXlWa3YwcHR2L0JtSit0OHB0S3lsSDRHeU12Z1ZqczNHYUVsRjJhUm44?=
 =?utf-8?B?bDlCTVJmNWtOeFlmY2d0TzFuUVRLWnhmd0dyeUtJWUVkWFhmMlJDNWNBS0J1?=
 =?utf-8?B?c0dXS21Mck5SNExCMFI1TUNxVFZ6OWwzT1F1OU5kZGYrQUJJTk5relA4L2Ra?=
 =?utf-8?B?Q2IraEpXYXRiMUlrZW0zeEJGbG1makZYNEtGQ2xmbjQrRXpRTDRkcVRndXZl?=
 =?utf-8?B?ZklVMjhmUHk2Qzh5VE8wbi96NmlpeXRBVDhZV3JUYTdyMUNHanQxNGo2aGtT?=
 =?utf-8?B?RXVaay9qbHkwa3J4WmVNT3NYSWdqVnVpMnZoeVpQa21laXhXaHNkemRoUHE3?=
 =?utf-8?B?NVd1MmJocjRwZGVOTDMrSTVBZXJqa3dQZ05QajBBcW5FUEhmcTZ6RWpuNVhh?=
 =?utf-8?B?NjRjcTBuVk1kNDRhNmMxMFBQQnlJSllOcUw2d3h5WEp0YVJEeVhlQUlHbXZz?=
 =?utf-8?B?MFNzRS9Sb213OFRjbHhzQXpUeFgwQTJVRFc3M0M0SDRaR25yUTJ5YVRwSGJs?=
 =?utf-8?B?Z25wWGlhRTcrR1d4STY0aG1mcXVuNjZxNkU5RW5zbFdYbzNoL3MwTjNkOHVo?=
 =?utf-8?B?N0E2WTErU3Uwckl0azAxbmhiZUNMRUJESUx2WkxMSUlYakJUU1lxZUMyd0lS?=
 =?utf-8?B?SEZMeVExM2lIaC9oS0NTYldwMFI2OW4weDlXenV0aW9hSStzZCsrZWFBVjRn?=
 =?utf-8?B?YTlrMDJjS0xNMUR3dG03NC9qRkc5Q3U5TmtSZTdqMWNYNnJiS2QvZklSOG5B?=
 =?utf-8?B?VlorcW1wMDNXNDlZLzlUSzFzNFpEK3ROcjdRYWUzdE5ZTjdlVE1SWjVBT2ly?=
 =?utf-8?B?QTlhTlp3Ukh2K1NNRFd3dGxtWEIxMEZqQ1ZubWpuTEgrb0FkMzVqbUdXTStz?=
 =?utf-8?B?Z21Vc0x6ZEYyblNjYmszU1BHSE9QOXpWU1Y0L1FqWnhmTWQ4OHVQQlVnZVc0?=
 =?utf-8?B?KzBjbGd4NkN6SzZIWUNoYk5ta1VsaFByUHBqa1J5dmNCaERwQ0VCd3ZTSVlk?=
 =?utf-8?B?T0Q0czNjdmkzc0dndVJyUTJOSVhBYTNqYTVNeDV3WTVoOUh3eElTeEtyb2lx?=
 =?utf-8?B?QW1ta0daNEZ4RUE4ZUlSc2UrU1poTm96cTBWMkZDL2FRVTlRM04zazRtelRx?=
 =?utf-8?B?eHpoRHZFRk9vSlFkY3BDeWgwM0dvM0x3YkQ4VmNOU01uSHFhMU5xZ2tueXdh?=
 =?utf-8?B?VkMvU0crQTNQY2VqamRVN09Yc3RsVGdFYm1lU0QzR1lmQVNkblVIU2MwM3JB?=
 =?utf-8?B?ZURscFZ6dWMxOHNHZ1Y3dVk2Z3g4ckpKUThJYjZ2c0prZ2tqOUtzR1VXM2sz?=
 =?utf-8?B?aHJISEFnaEo3TkVuNm5WRmFUVHJnaUwvR2hGY3BqQWdjUDBMUzBPZGwxVWVP?=
 =?utf-8?B?T05pNEJNQmExZFJsWlVxZG1FZ0lGdlFWdTN6RTBxaFRxYTRoa3dLZFlRQjhU?=
 =?utf-8?B?SGdyM0NGeHUyRkJUVkd6aVoyTWRtYlNqUW9XbzQ5QkxaKzJiUlNMeGcyUUdD?=
 =?utf-8?B?TGV1eTRqUEFnS3VNOFhuZWJlTk9UcjNIQ1lsajZ2SWczTmRZRW8ydUM0ODZG?=
 =?utf-8?B?SzRONEsxNiswK0xKR3ZXaUIvSFZIVjNnQmlnQ1RrYm9tSmY1SW43SHVlSk03?=
 =?utf-8?B?QWpmMGx5TERQR29BdUVWalgyZk10d2tNVUhFYVEzb004L1dNTE9XeVNCVWJt?=
 =?utf-8?B?aVI0SS90eGJhVUhnamt6S3FDT3dpa205bnhEc0NCZnY1amdHN2Voait2eWtl?=
 =?utf-8?B?dERPMCtjUnpkdEZWK2lnTHpWNFhIVkl5ZzdyREdRTUZyQkppM1llQXZ6YkQ2?=
 =?utf-8?B?aFZWeDI0NytEVXQrRjZ2UTZxTGUvMVBFQURXTnNjejFxa1RMc1RpbG5CdDNo?=
 =?utf-8?B?a0hjclZ1T2g5OG0xRXl4dUFZazhDS3RUVVRhaUlWZ1E0Z1VCa0hwYzBEZXJL?=
 =?utf-8?B?SnkwNW95dWtseGhPdWNObWJsVnFJVHhqOFlPMkFacnowa1NoOWF0bnkxNER3?=
 =?utf-8?B?L29lNXBQUjhYK1FPZU9qZk1YMnN6azJFNHNwcm5lbFFGcFlJZnI4amcvM3U2?=
 =?utf-8?B?QmZNSTZpQUNkNTYxRkE3anJZdmM0VmJYekNTQXpOeXdaQXdsSFV4VTZWSEJu?=
 =?utf-8?B?UW9sZVpBZmpaWXVwV0wzTEppeitHc2dZamhtOXhhR0oxRlZoM3BEeG1yRzhI?=
 =?utf-8?B?d1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB8452.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90e2ec83-2c4e-46ae-5862-08ddd071ddf8
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2025 20:36:03.0141 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: koFrnLpYAbpCuBeAPCIIlKBFro7gwldOLJM5Q5tmrRYmH1kX2moB9NRvubATkKFyTV0anaQCvEpc0uCCjh02YtQHxbu96wE+WN+WT+Ns/Ow=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8566
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753994201; x=1785530201;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=K2loyxiAPI4/hBT8caItnAE3/ZcKRQ6gf1Bc9+z2AeA=;
 b=Q/D7bMHduvIgBatT+BHJKKja7Xl0Ei4RYf+WYqdKEw6n1MAhjQNHGNkb
 hhEefoD+tlCmRsMUri4N+EM7s8TW3UPG5nrJqp25VJkbYh/+z2/iNpSnu
 DCh+sDSyN58loiFtfeKDEzS3EO+MKj2oKARAxtYgKXjgDuECcR0KKX2q2
 r5z9NTTlWfRUQLcl5LwupuIB7o6o1hW1YeGcF9CHAXcH7hdp8x1P0EJbu
 REscM+saIcmsqHW/eYh5eQKn4q4pKcLvFG41SE8O4A42f0NNhWOM/u4yI
 elFGulpEYpoj+c26QgTqJccPgezSwLWMNFAVgqLRTDihoszmTNzmhxcpA
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Q/D7bMHd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH] net: add net-device TX clock
 source selection framework
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

PkZyb206IEl2YW4gVmVjZXJhIDxpdmVjZXJhQHJlZGhhdC5jb20+DQo+U2VudDogV2VkbmVzZGF5
LCBKdWx5IDMwLCAyMDI1IDQ6NDUgUE0NCj4NCj5PbiAzMC4gMDcuIDI1IDI6MjYgb2RwLiwgSmly
aSBQaXJrbyB3cm90ZToNCj4+IFR1ZSwgSnVsIDI5LCAyMDI1IGF0IDEyOjQ1OjI4UE0gKzAyMDAs
IGFya2FkaXVzei5rdWJhbGV3c2tpQGludGVsLmNvbQ0KPndyb3RlOg0KPj4NCj4+IFsuLi5dDQo+
Pg0KPj4+IFVzZXIgaW50ZXJmYWNlOg0KPj4+IC0gUmVhZCAvc3lzL2NsYXNzL25ldC88ZGV2aWNl
Pi90eF9jbGsvPGNsb2NrX25hbWU+IHRvIGdldCBzdGF0dXMNCj4+PiAoMC8xKQ0KPj4+IC0gV3Jp
dGUgIjEiIHRvIHN3aXRjaCB0byB0aGF0IGNsb2NrIHNvdXJjZQ0KPj4NCj4+IEkgd29uZGVyLCBp
ZiBzb21lb25lIGludmVudGVkIGEgdGltZSBtYWNoaW5lIGFuZCBzZW50IG1lIGJhY2sgdG8gMjAw
NS4uLg0KPj4NCj4+IFsuLi5dDQo+Pg0KPisxDQo+d2h5IGRvIHdlIGhhdmUgbmV0bGluayBiYXNl
ZCBpbnRlcmZhY2VzIGZvciBjb25maWd1cmF0aW9uLi4uPw0KPg0KPldvdWxkbid0IGJlIGJldHRl
ciB0byBpbXBsZW1lbnQgc3VjaCB0aGluZyB0byBiZSBjb25maWd1cmFibGUgdmlhIGlwIGxpbmsN
Cj5vciBldGh0b29sPz8NCj4NCj5FLmcuDQo+aXAgbGluayBzZXQgZXRoMCB0eC1jbGsgPGNsb2Nr
X25hbWU+DQo+DQo+LS1vci0tDQo+ZXRodG9vbCAtLXNldC10eC1jbGsvLS1zaG93LXR4LWNsayBl
dGgwIDxjbG9ja19uYW1lPg0KPg0KPkl2YW4NCj4NCg0KSG1tLCBzb3VuZHMgZm9yIG1lLCBsb29r
cyBjbGVhbiBhbmQgZWFzeSB0byB1bmRlcnN0YW5kLg0KDQpUaGFuayB5b3UhDQpBcmthZGl1c3oN
Cg0KDQo=
