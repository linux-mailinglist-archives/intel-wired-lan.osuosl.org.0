Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 989ABA845DC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 16:13:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D97B40795;
	Thu, 10 Apr 2025 14:13:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n3lGGmYyu-w0; Thu, 10 Apr 2025 14:13:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6652408A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744294390;
	bh=EmSOD/1I9i7BIarembT17loS7/JzMJWWkr7Yhm/Ur7U=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HhPjgLdXh+RClXMT+UWU51tS+cc/rMCwNt628oKQuhU3ETfaCoBkct9lc6iwjDhec
	 u9LwUOyGjee3oCBjPnU5Wop4dj7T8jnbfMDJLr50H4LXUy9Dc0UzX3u+Py0gLTPE6D
	 MUXraLdFINpoXDEMnuLgofeI++D0tOAWx12Qh7azpLA4cyc+fm45ZV+8rfxv+detqK
	 5xU7dKMgD7x4f8lNrFtM3mGg68tLLXD+QoLip/KMC94XqT2I6qNfilnvQNypmhJckj
	 hKq0yQKR+UQSbxNu+a0LI0BqjmuxRusXqzGxKfK+kG1YT6gIF6v7Ken1ERoi0ZVUZm
	 B2+YSgtrgVVVA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A6652408A9;
	Thu, 10 Apr 2025 14:13:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9A4E4108
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 14:13:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8B53F811CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 14:13:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LqOP6OSWTV4E for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 14:13:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B214F81190
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B214F81190
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B214F81190
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 14:13:07 +0000 (UTC)
X-CSE-ConnectionGUID: KSBkpALwTbyhol4mTIFBjA==
X-CSE-MsgGUID: o3incqOISsmI6IpUC3Kpug==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="33429391"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="33429391"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 07:11:53 -0700
X-CSE-ConnectionGUID: ghbP90o2Qtar+Q8J68vZMw==
X-CSE-MsgGUID: 6u3Q4GcjSkG6pZGaMzrLHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="129859156"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 07:11:53 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 10 Apr 2025 07:11:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 10 Apr 2025 07:11:52 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 10 Apr 2025 07:11:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n2LmqJ8kKM9uY/q4L90mm5id/S2b8Wc0SZwo8JLRcJCNypY+/LndMZD4Nic2zcmLX+vDx5Ltj/kmKnx6lU47zrkppTHZ0+//AQama9RKjoKgCx/rIvjg3vtxSRkJwn9Hp4UlMzE+sncKNZHBzAwsxJ87ogsgFQ5MPT9CEuerEcV2rdBbjt73GxTbDWexbAtMAZDNZhAXo6KoiYvhzPb717A38EtPEejLIV3oUSQZcAllkx1IeWzQ0u1pR709OR1+mFNrXQFSovsO7z789HRzKmxSJ0TLB9AUUeGj7I84d5USntJpwvy2Jk9uAYY8/dFe/SdGX2dZwN0f5SSzemHmfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EmSOD/1I9i7BIarembT17loS7/JzMJWWkr7Yhm/Ur7U=;
 b=DzR9/Tn77HZUKpYNCZMmvp1trJmWy9Nr07gt00bLLb29rhuZv6nISM58k9mRzujk8P6dh8sVVhVgwxfoqJtbVEG9wDvpa9PuZikvtAonPOKVA+DC43vw+b4DMOq2v45eo1glAhGtrLJBkLJAlUDHvGSPLFjEhftcoveavi9yfie+/ubXIVZ2QNUFP07/RRWfFJRWNGuPs1xC5jOs156kbXOR3QeY8M1RitlzZLnFipv3U9TOxEje2ery+1nAsidqbMd+A/GL3wIztF3nREj2sDOdKteSIeCIL9GpHSA1a/oCu3b7BA6eFHfN1MIevQvofh12NKrZ96uGKsAU/db1Fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5889.namprd11.prod.outlook.com (2603:10b6:303:168::10)
 by BL3PR11MB6459.namprd11.prod.outlook.com (2603:10b6:208:3be::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.34; Thu, 10 Apr
 2025 14:11:49 +0000
Received: from MW4PR11MB5889.namprd11.prod.outlook.com
 ([fe80::89d6:5ccc:1dcc:3073]) by MW4PR11MB5889.namprd11.prod.outlook.com
 ([fe80::89d6:5ccc:1dcc:3073%3]) with mapi id 15.20.8632.017; Thu, 10 Apr 2025
 14:11:49 +0000
From: "Olech, Milena" <milena.olech@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Linga, Pavan Kumar"
 <pavan.kumar.linga@intel.com>, "Salin, Samuel" <samuel.salin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v10 iwl-next 09/11] idpf: add Tx
 timestamp capabilities negotiation
Thread-Index: AQHbqHOjRn8qxDsA3UaWElOPtuJIrrOaR/8AgAEU7oCAAEcKAIABTX5A
Date: Thu, 10 Apr 2025 14:11:49 +0000
Message-ID: <MW4PR11MB58897E22AD4DF1C410B9F62D8EB72@MW4PR11MB5889.namprd11.prod.outlook.com>
References: <20250408103240.30287-2-milena.olech@intel.com>
 <20250408103240.30287-21-milena.olech@intel.com>
 <757ed954-47a9-4be3-909e-5a343f453314@intel.com>
 <MW4PR11MB5889766212BD05ADC555FD608EB42@MW4PR11MB5889.namprd11.prod.outlook.com>
 <6b39d76a-b2be-4d09-a4b6-efb01c4be006@intel.com>
In-Reply-To: <6b39d76a-b2be-4d09-a4b6-efb01c4be006@intel.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5889:EE_|BL3PR11MB6459:EE_
x-ms-office365-filtering-correlation-id: 36aeb118-9536-4a24-59c0-08dd7839a2be
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?bitnOUxUclNiSE15dm1DWUxqU003SUF6TnZ3R3Z1Q01vbHNHZ09ZY3NqRUpX?=
 =?utf-8?B?V2ZzNkJnOUJDeXJDMlIzYlp6Y0pISlYzZ2xsNFNGUGdFS0JZQmo2YlJLY2Vi?=
 =?utf-8?B?dytNTUhCL0crc1JXZTNlZ0EvdEVTYzRtdHp5MmxlcVBacDM4WitBYTRZREhU?=
 =?utf-8?B?ek0rc0Y2eHVyd09qOERRblIwV0VtZU5jUWQxRTJYTmtmUW5lazJjMXk0dzFj?=
 =?utf-8?B?dlZITml0d0pteURzMmJxVEd3eGM1S0ZrV0grVXUxV0VlYllzcTFIYXVyZW1Q?=
 =?utf-8?B?ZWpYK2JuN21QOHRaTXVkMXhBdTdDWTk1bk1wYjI0aGJDb1NFRFlmNHlPSUxn?=
 =?utf-8?B?QlBMYkpKdDBadHd5S2owSzZoRzR5TTI0dnBvQkVtMGYvUk91Z05UQkYra3VR?=
 =?utf-8?B?bk90RmFWVHBSWDZDY0tKc2F4YU53T0ZWbUFTaURRMEtGQlgzMThXdThPQzVs?=
 =?utf-8?B?aThGVjJKaE96TXY1OE41dVU3bGZQYU9PVXl4bms3YXhOYjM1VWtidjkzc0ZE?=
 =?utf-8?B?MVFGa0VJQjNGQTI0VDExU3IrL0VZcWVJZE51OGZWWVV4OTJhT2ErYlpkaFZn?=
 =?utf-8?B?QmhXVGN0akhlOWZrTWtobWZjUVNidHNHcHRhVnpNZDR5TkJxUjJBNVZVNmx1?=
 =?utf-8?B?NlhOQ0YxWjdUM3d5TkZTbENxOFQyaFVTWHRmSGNvWk9Yd1M3KytsVTZnZDZl?=
 =?utf-8?B?WGJLdTJtWFdmcFd2ZUdaTG5FNERueloxczJWOWs4ZEg5d0Y2WjA0Z00wSGt6?=
 =?utf-8?B?VFMyS3pXYW1KRFhhcUtpdHllRVJoNXk4R3U1TlluNE9sUE9OaGhHK2tydFlZ?=
 =?utf-8?B?eUh4TzJROWs2L0dZNU9GZlBpc3QwZzc5eVRGdU1Ccit1aEtEQkNpTXhsazc5?=
 =?utf-8?B?QmFhNSttNDJNWmtxL2thNERkeDJCOE5FN1Q2WVBPR0RURUdRS3ByejYzblUv?=
 =?utf-8?B?bnJVRXV5aXd2U0R5QURUOWZHTzlRSEJLalVsZlU5czhZSk02UEkwVDNXaGR0?=
 =?utf-8?B?cFZKM1dmZWxKOU9nTDUzbERwK2NUeXJSUEpOaTBUTjRtZ3UvbHdtYU03ZzVX?=
 =?utf-8?B?Ry9nbDgwTEdzbUVmQzNlU0xEbHhVS2FpQkZlbkcveFpFK3hYRmtiNWZ5Z3da?=
 =?utf-8?B?TjRaQlFlTDRlWHk0ZzUrMlRuSW9udXhoaitydlhSMzF5cjVyTWRZaUFvUy9o?=
 =?utf-8?B?N0x3bWxXTWl6b3dwSVEvWktpYUhZdTZ0dXRjYWNrRzdhQkFxRmVsV3hRcWR1?=
 =?utf-8?B?Z2lLcS9qYVFRNmV6Z0NHTHhqUkZscFoxMGY3MklBNmtxOEFqcm9pY0x0S01B?=
 =?utf-8?B?T1NFYUkraW5pRUR4WWFlOSt3Qy9nZFFHWGlvWXZEd01sQnNXaHM4Yk51YW5s?=
 =?utf-8?B?a0VCR24wT2huS0k5RmE4NjdyTUJOaUN0R3RpZm5QSTVjcWpjVXIyalN2dTN6?=
 =?utf-8?B?K1ZIUDhMdDZjaU11N2xLdHJTRExQT2lYVmdPQzIveXN4MWp6UWZnY2Jnb2di?=
 =?utf-8?B?VW56TDdvcFhuZWN2eGRDakVxQnRNeDZPaDlmaDhkaTlkSXhSdlp3SWVScEtn?=
 =?utf-8?B?ODlhSDBCTlhsVnE4V1I0anY5Sm53M2N4YXZQRmZ6Yk1Zd3FSRjJZeFBGSGJE?=
 =?utf-8?B?Y1RVVUQzQ3NhQW1nZVNQNUo1QmpwNjVWUWFrbFJwNGN5aExyQzJMazhiOTBD?=
 =?utf-8?B?U2dpazJ0NlJrQlYvaktiZzNjK0FRbHoxZUNHUVYyZFRvbHRJVXRaelNxdS8v?=
 =?utf-8?B?ZEpXT3J0TnVET0VqYkpXVnpBbjBEcTZZaFJCZXdFVWg5Rk4wUGRvK3dFd0Ju?=
 =?utf-8?B?QUZDVzlxVWgxQWt4K1JLT25GVXBIVThzL29JdGpyYVlSdGNmOFZXd0lmeEFq?=
 =?utf-8?B?Ukl5SmxMQXc4dElkUWlNdi96ZngralU4N2lpaE8rWVdvNHdaaXJYMHl3TkM2?=
 =?utf-8?B?NWgraHhrd1dDcFhIb0ZLT3JmQ1NJRjMvMm0wemwrSWZ1S3lLWkkvMjVrdE9r?=
 =?utf-8?Q?68rMLY7v9lVd8bDPjXEKUFO+aT8sfU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5889.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TWl1OTlHY0ZKV2h3Yy9pYlJEUnBCM0pabDNpcDRhRk9SeVlMWVMzakJadHJV?=
 =?utf-8?B?M1RCM0QvN1MxWUs4YUNyUTNuQlczWU5pYzU1dnM5MGxWYkRMVHRFUVNGeElU?=
 =?utf-8?B?eUpYUTF6VFlLUE5haW1DaCtVOUxwSVV4WXJpL2tCOG95RCtNR21menM5Unoz?=
 =?utf-8?B?REFDL1JNNTFCTVBBWGZmYy95OCtVTnRtTzNzRGtjaDZNOGUxMWtLME8rcmds?=
 =?utf-8?B?Q0RuK1Y3L1ZQbHBDQ3k1YXFBTDFKNDAvV2lWWkVMNmV0WWthUi9DSnZySnIw?=
 =?utf-8?B?anZCeXlURGFHWkZXZkV1NGU4UjVjanA0SGFUSWJMSDlLeVVuUGU3dWw2ZmxR?=
 =?utf-8?B?Wmp6MUN2WnlNNHJ5N0JiQ2ovL0wrSWVsMkVXR1hwcmdLRDJHb2hnTVo2Z0dV?=
 =?utf-8?B?ZkRtRkI3YkJ4bTgxNmlEWlVqbkdjWVpYZ2ltbnVTZStuNm9jYmZyYUQyZ1d1?=
 =?utf-8?B?UnpxZlgvdWx6eGtUMGlMN25BbnR2ZEw4K0lTTVAzS0pWQ1E3SUhURXJIcTI0?=
 =?utf-8?B?NHhRN2JpN0VLTjJld2xDZzhwVE9CWmxvLzBQSS9SdmVjeFUreXVzbnl5WXVG?=
 =?utf-8?B?M3dFenRsNU9Ld3NHTDZ2T0w1TWE4MFYxekFFTlJFVFFVNTFpNE1UM25Kc2Zm?=
 =?utf-8?B?YW5PMFlmOFFYZGI4SlNSc3pEeG4vMXlvY2YwdUE2TWJBb0F3VVR0T3NQaU0x?=
 =?utf-8?B?TzYrL1R6cnVlcG5za0pZY1RpVUdMZk9kS1hTMzdGT09kYmZsK2xWbVF1cnVw?=
 =?utf-8?B?N3ZSalFDaGdIZEg5SW53TkIrRVc5VElQa1ZIYWJFUWJoYkxpUjdaMG8zU1Ja?=
 =?utf-8?B?Z1dyRXRhdE52UUxNQWdkMllnRDg0Zll6K1o5WGRPWVdLQWRnYXZpUGd4K29U?=
 =?utf-8?B?QzhweVVoMlRjVGxHRm1LbmlleU9LNU54eG1jQmdRUUFVT2VqdlVQdHBNMGJi?=
 =?utf-8?B?Q3ZKTG5TRGx2cEVuUmdJL2M0am03dERPZGpQUnhkUmZicnlSVzJzZ0JxaHJp?=
 =?utf-8?B?bk0wV1hvTGR3Q3dibStrV3JwbWFZK3dWYlhwSlZobVhkU25UWFhxSW5HclJ0?=
 =?utf-8?B?UnZZSENodURsakMwN0RVSHY2UnFyTTNZaUh2UzgxM2U2bzZvQy96ME1jV09m?=
 =?utf-8?B?cXJ5WHc0U2pWQm1SM2Q0WG90U3FrZU5TNng1RGY1ZDVoeU13MU4zaDhRWHJM?=
 =?utf-8?B?YjhPOXE1K3A0QkV3L2xYVzUyekJSK2dib3NzUlpjOGV4ZDNib1d6UkNqLzUv?=
 =?utf-8?B?amlWOHlKUkQ1VFN4eFNwT1F4V0tqeDZqZVRhdjVvalJVUWZYV2E2RFVLOEJJ?=
 =?utf-8?B?ck9WZnhDWDRBZ2xzdngzQno4WWUydk9WMk5KWlRVUlpFc1dxV2FKdDlDZXlT?=
 =?utf-8?B?L1ZFY3VpeWE1UFZGZjdTcHJEVWJrUDFab2FvNEJVajJtN3JNcWZTVW40M3Nr?=
 =?utf-8?B?ZzgvZXJWY1pxQ2lhdEdiN0JBdUlYNWU1eGZFeWRpbExRNUpLT09MamlCRHVN?=
 =?utf-8?B?NWJTZGtNTE43MWlab0xhc2l4MnZZQ0lRa2lWK05tWi84Ukd5V0FvRW9aeGVu?=
 =?utf-8?B?djcxSm10UlZHeFlnRnlFVURmZnlKS252Nm1DbHIzcjZuaHNEOXJINGhZc2hY?=
 =?utf-8?B?TmxuR1c4cU4wWTBuMVk0RE5Kd0x6a2lBcnNWMEFCbzFJVXdBQlF0bmtLcndO?=
 =?utf-8?B?ZFc2RnN3dmZOMlVNRTRIeTY3eDdUSW15aFZTcFRncnRwTnYxMmFmY2VZL0xy?=
 =?utf-8?B?ZnV4WXZ0eVFXVHlEN0FDbEI5M0Z3TXV5dGtVMjZ0TkNHL1dFbC9lVVFPZWkz?=
 =?utf-8?B?NVNabitVSEk1UytLOStVZzFHSlo5QWVOeG85dGpaeWJLaXJBdHNPUTR4Q0ZI?=
 =?utf-8?B?UDNFYXRoNjY0QVNmaCtrazd3SlpjWGMzN3Jtd1pSMnJOSUUyaVhLVnkyV244?=
 =?utf-8?B?YUNvdkJDWDlWM25HQ0M4L3I2QzJRYUtuMTVqeUJ5YUk5emdxRERUaGdxYnpR?=
 =?utf-8?B?QUVLT3Y5aDVPL3ZleE5NNmN3T2pKTWVMVXNtaHhNNE5PK04wYnFack03b3Na?=
 =?utf-8?B?UERVeDFCRVdQd0N6dkRRck5WQkpicGpxRUg3R0FXM3NaRG9XWmhzaXBBY0kw?=
 =?utf-8?Q?BlgQfVzJoIcFHpgCwpp9Q1wpi?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5889.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36aeb118-9536-4a24-59c0-08dd7839a2be
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2025 14:11:49.5231 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i7yhmN6D9b1Vvoq49rGNfPkr1T/ewbcb4fyCVv/7S4RK/ckExZnvoTkQ3WoTqQK5AYDjS/cW5DcKrdBhA67IsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6459
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744294388; x=1775830388;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EmSOD/1I9i7BIarembT17loS7/JzMJWWkr7Yhm/Ur7U=;
 b=XFdP+nRd4G5M0bO3MkkdXXcldAi8RZhQNsfHifAXucy3/dX58WzA8xvR
 MVb8SNwI9SBnOXwbkVC1wOtWIfvvJiBw5kf99S/h4l63uOmNXiMmW3d96
 9PGvNbNSwaMDzVwNz+qYtRsSB8Be1L5Fo1j6RPkMeNELxnu8eBpOWpgUk
 uPbe0QiWPB0J6CPwAUpJYtnnghVxMyfhUtIYd48CpGOurgSxs7uRtkyuJ
 D8+aM/Ig8cUinUEk39qCrBnnyf9lsb1mI0v+LyzRPhD1SR219kcy/fllW
 7+MYgNy/+Xvk91HhLuRHzz69CTFz8MwuuyOLEfTr/BYK28uLxH+9cBDJq
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XFdP+nRd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 iwl-next 09/11] idpf: add Tx
 timestamp capabilities negotiation
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

T24gNC85LzIwMjUgODowOSBQTSwgSmFjb2IgS2VsbGVyIHdyb3RlOg0KDQo+T24gNC85LzIwMjUg
NzowNCBBTSwgT2xlY2gsIE1pbGVuYSB3cm90ZToNCj4+IE9uIDQvOC8yMDI1IDExOjIzIFBNLCBK
YWNvYiBLZWxsZXIgd3JvdGU6DQo+PiANCj4+PiBPbiA0LzgvMjAyNSAzOjMxIEFNLCBNaWxlbmEg
T2xlY2ggd3JvdGU6DQo+Pj4+ICtzdGF0aWMgdm9pZCBpZHBmX3B0cF9yZWxlYXNlX3Zwb3J0X3Rz
dGFtcChzdHJ1Y3QgaWRwZl92cG9ydCAqdnBvcnQpDQo+Pj4+ICt7DQo+Pj4+ICsJc3RydWN0IGlk
cGZfcHRwX3R4X3RzdGFtcCAqcHRwX3R4X3RzdGFtcCwgKnRtcDsNCj4+Pj4gKwlzdHJ1Y3QgbGlz
dF9oZWFkICpoZWFkOw0KPj4+PiArDQo+Pj4+ICsJLyogUmVtb3ZlIGxpc3Qgd2l0aCBmcmVlIGxh
dGNoZXMgKi8NCj4+Pj4gKwlzcGluX2xvY2soJnZwb3J0LT50eF90c3RhbXBfY2Fwcy0+bG9ja19m
cmVlKTsNCj4+Pj4gKw0KPj4+PiArCWhlYWQgPSAmdnBvcnQtPnR4X3RzdGFtcF9jYXBzLT5sYXRj
aGVzX2ZyZWU7DQo+Pj4+ICsJbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKHB0cF90eF90c3RhbXAs
IHRtcCwgaGVhZCwgbGlzdF9tZW1iZXIpIHsNCj4+Pj4gKwkJbGlzdF9kZWwoJnB0cF90eF90c3Rh
bXAtPmxpc3RfbWVtYmVyKTsNCj4+Pj4gKwkJa2ZyZWUocHRwX3R4X3RzdGFtcCk7DQo+Pj4+ICsJ
fQ0KPj4+PiArDQo+Pj4+ICsJc3Bpbl91bmxvY2soJnZwb3J0LT50eF90c3RhbXBfY2Fwcy0+bG9j
a19mcmVlKTsNCj4+Pj4gKw0KPj4+PiArCS8qIFJlbW92ZSBsaXN0IHdpdGggbGF0Y2hlcyBpbiB1
c2UgKi8NCj4+Pj4gKwlzcGluX2xvY2soJnZwb3J0LT50eF90c3RhbXBfY2Fwcy0+bG9ja19pbl91
c2UpOw0KPj4+PiArDQo+Pj4+ICsJaGVhZCA9ICZ2cG9ydC0+dHhfdHN0YW1wX2NhcHMtPmxhdGNo
ZXNfaW5fdXNlOw0KPj4+PiArCWxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZShwdHBfdHhfdHN0YW1w
LCB0bXAsIGhlYWQsIGxpc3RfbWVtYmVyKSB7DQo+Pj4+ICsJCWxpc3RfZGVsKCZwdHBfdHhfdHN0
YW1wLT5saXN0X21lbWJlcik7DQo+Pj4+ICsJCWtmcmVlKHB0cF90eF90c3RhbXApOw0KPj4+PiAr
CX0NCj4+Pj4gKw0KPj4+PiArCXNwaW5fdW5sb2NrKCZ2cG9ydC0+dHhfdHN0YW1wX2NhcHMtPmxv
Y2tfaW5fdXNlKTsNCj4+Pj4gKw0KPj4+PiArCWtmcmVlKHZwb3J0LT50eF90c3RhbXBfY2Fwcyk7
DQo+Pj4+ICsJdnBvcnQtPnR4X3RzdGFtcF9jYXBzID0gTlVMTDsNCj4+Pj4gK30NCj4+PiBDb3Vs
ZCB5b3UgcHJvdmlkZSBhIHN1bW1hcnkgYW5kIG92ZXJ2aWV3IG9mIHRoZSBsb2NraW5nIHNjaGVt
ZSB1c2VkDQo+Pj4gaGVyZT8gSSBzZWUgeW91IGhhdmUgbXVsdGlwbGUgc3BpbiBsb2NrcyBmb3Ig
Ym90aCB0aGUgZnJlZSBiaXRzIGFuZCB0aGUNCj4+PiBpbi11c2UgYml0cywgYW5kIGl0cyBhIGJp
dCBoYXJkIHRvIGdyYXNwIHRoZSByZWFzb25pbmcgYmVoaW5kIHRoaXMuIFdlDQo+Pj4gaGFkIGEg
bG90IG9mIGlzc3VlcyBnZXR0aW5nIGxvY2tpbmcgZm9yIFR4IHRpbWVzdGFtcHMgY29ycmVjdCBp
biBpY2UsDQo+Pj4gdGhvdWdoIG1vc3Qgb2YgdGhhdCBoYWQgdG8gZG8gd2l0aCBxdWlya3MgaW4g
dGhlIGhhcmR3YXJlLg0KPj4+DQo+PiANCj4+IE9mYyA6KSBTbyB0aGUgbWFpbiBpZGVhIGlzIHRv
IGhhdmUgYSBsaXN0IG9mIGZyZWUgbGF0Y2hlcyAoaW5kZXhlcykgYW5kIGENCj4+IGxpc3Qgb2Yg
bGF0Y2hlcyB0aGF0IGFyZSBiZWluZyB1c2VkIC0gYnkgdXNlZCBJIG1lYW4gdGhhdCB0aGUgdGlt
ZXN0YW1wDQo+PiBmb3IgdGhpcyBpbmRleCBpcyByZXF1ZXN0ZWQgYW5kIGJlaW5nIHByb2Nlc3Nl
ZC4NCj4+IA0KPj4gU28gYXQgdGhlIGJlZ2lubmluZywgdGhlIGRyaXZlciBuZWdvdGlhdGVzIHRo
ZSBsaXN0IG9mIGxhdGNoZXMgd2l0aCB0aGUgQ1ANCj4+IGFuZCBhZGRzIHRoZW0gdG8gdGhlIGZy
ZWUgbGlzdC4gV2hlbiB0aGUgdGltZXN0YW1wIGlzIHJlcXVlc3RlZCwgZHJpdmVyDQo+PiB0YWtl
cyB0aGUgZmlyc3QgaXRlbSBvZiB0aGUgZnJlZSBsYXRjaGVzIGFuZCBtb3ZlcyBpdCB0byAnaW4t
dXNlJyBsaXN0Lg0KPj4gU2ltaWxhcmx5LCB3aGVuIHRoZSB0aW1lc3RhbXAgaXMgcmVhZCwgZHJp
dmVyIG1vdmVzIHRoZSBpbmRleCBmcm9tDQo+PiAnaW4gdXNlJyB0byAnZnJlZScuDQo+PiANCj4N
Cj5Pay4gSXMgdGhlcmUgYSByZWFzb24gdGhlc2UgbmVlZCBzZXBhcmF0ZSBsb2NrcyBpbnN0ZWFk
IG9mIGp1c3Qgc2hhcmluZw0KPnRoZSBzYW1lIGxvY2s/DQo+DQoNClRoYXQncyBhIHZlcnkgZ29v
ZCBxdWVzdGlvbi4gSW4gZmFjdCBpbiBtb3N0IHBsYWNlcyBJIG5lZWQgdG8gbW92ZSBpdGVtDQpm
cm9tIHRoZSBmaXJzdCB0byB0aGUgc2Vjb25kIGxpc3QsIHNvIEkgY291bGQgdXNlIHRoZSBzYW1l
IHNwaW5sb2NrIGZvcg0KYm90aC4NCg0KVGhlIG9ubHkgcGxhY2Ugd2hlcmUgb25seSBvbmUgaXMg
dXNlZCBpcyBzZW5kaW5nIHZpcnRjaG5sIG1lc3NhZ2UgdG8gZ2V0DQp0aGUgVHggdGltZXN0YW1w
IHZhbHVlLCB3aGVyZSBJIHNlYXJjaCBmb3IgaXRlbXMgb24gJ2luIHVzZScgbGlzdC4NCg0KQnV0
IGl0IGRvZXMgbm90IG1lYW4gdGhhdCB3ZSBjYW5ub3Qgc2hhcmUgbG9jaywgYmVjYXVzZSB3aGVu
ICdpbiB1c2UnDQppcyBwcm9jZXNzZWQsIGl0IGlzIG5vdCBwb3NzaWJsZSB0byByZXF1ZXN0IHRo
ZSBuZXcgaW5kZXggKGJlY2F1c2Ugd2UgbmVlZA0KdGhlIGxvY2sgdG8gbW92ZSBmcm9tICdmcmVl
JyB0byAnaW4gdXNlJykuDQoNClNvIHRvIHN1bW1hcml6ZSwgYXQgdGhlIGVuZCBvZiB0aGUgZGF5
IEkgZG9uJ3Qgc2VlIGFueSBzcGVjaWZpYyByZWFzb24NCm9mIGhhdmluZyB0d28uDQoNCkxldCBt
ZSBrbm93IHdoYXQgYXJlIHlvdXIgdGhvdWdodHMsIGJ1dCBJIGd1ZXNzIGl0IGlzIHNhZmUgdG8g
cmVtb3ZlIG9uZQ0KbG9jay4NCg0KTWlsZW5hDQoNCj4+IFJlZ2FyZHMsDQo+PiBNaWxlbmENCj4+
IA0KPj4+IFRoYW5rcywNCj4+PiBKYWtlDQo+Pj4NCj4NCj4NCg==
