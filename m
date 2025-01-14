Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B9263A1010E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jan 2025 08:01:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 348F781336;
	Tue, 14 Jan 2025 07:00:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KVtN2P_GBDhr; Tue, 14 Jan 2025 07:00:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D60088137A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736838057;
	bh=CDZy0NjngD5qVzSqtiTWH2/XlvJUJT65UGxgP0EoENE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=62uoyF+M50aBGWkWsqTFbd1aYxBvuGAtQ/iiibvXyBbMs6p2Xy1YzIv1Bl+mzjm0V
	 x2nb6gPoFmcz9iTW6eUuPIff+5JvLy4VQT6Y9T3KYO30z9JA5py/j1oLcYNB+keM9Q
	 ZEyonK7TOIF/mExvnb4njHVEJJohumhVjMRsqD2AxtomoFOpJ3vOih4vjYFCir7asN
	 yrlK3ekUoor99B2lPH7KKH6Oq26tx26vu/QjN+4fAthXKgHZ2u0xSiF6HNq/iZZE3i
	 Zz8/y9aoTUmKflYGWA1IJ7vZIBqhcv3BnqLpHCH2iYuGQ/K+ehJyKbAIzUo/SnXVf5
	 vPxriQO8jVyjA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D60088137A;
	Tue, 14 Jan 2025 07:00:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9A530B8B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 07:00:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AE757407A0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 07:00:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n0qz4qttlYcR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jan 2025 07:00:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 46A4A406C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 46A4A406C9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 46A4A406C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 07:00:53 +0000 (UTC)
X-CSE-ConnectionGUID: QMrkMCUHSmCSGPFa07y7+Q==
X-CSE-MsgGUID: cVSoSVIqRMKpXUrWBIU9lA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="39931485"
X-IronPort-AV: E=Sophos;i="6.12,313,1728975600"; d="scan'208";a="39931485"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 23:00:53 -0800
X-CSE-ConnectionGUID: wvQhL16zRaSOsVCynEzyBg==
X-CSE-MsgGUID: Ds/wHCAJQGas8YSnuUhtMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,313,1728975600"; d="scan'208";a="109708991"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jan 2025 23:00:53 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 13 Jan 2025 23:00:12 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 13 Jan 2025 23:00:12 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 13 Jan 2025 23:00:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s0bcxjESC5NbkZ84cQMt7xEMrXM+DTPfhFkA7f2mVx7gBqQ1P+NV+KQA5RhrFauNwTGcvWssDQHlK5jv1rvLkjjZ2Fy6wFeK+PURXkJ5ESkwN7DPQShza3szP3nBqSooqsAoXpIEzB0RKBVV5Z4kle7GWr9MzwQ1UPHN7xbqTKRheQUruZutRSWnh3MnUU2w2q4lLmyDS06qMBg5iA5pt5uRtveDtfomA97YS81BiWfqR3sXOfIvjQmZ5IpQiSUARTPpD5wqxF4QdWUO1IOluq5NTaHalOHzs4JoDwvCyJV9IUrxt2hUSs/LRApVMVqwZuYJM4z/Q71OEKWXpYse1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CDZy0NjngD5qVzSqtiTWH2/XlvJUJT65UGxgP0EoENE=;
 b=Au/7X0QLBRjB7y5GfCFXllZPvY3q3ot+YwM1J1ft9Ab4f63nTVESdRg7Cc8i2w3yqlSiWFl3D77dCJC0ee1KKFnKPiL3+2F4e73PrmNF8nAJoeJ0bl0nrumzAnRGsb+APQ4xU47B7YGcGcCsk7Y1dYujqXY+NfWiVAefpj9eJV4Yn6EYUiqnMLS6di3dxN9HVfFyQ0bI0iYYcJcgdzA88knldk2Xl+oakkQ7kKJ3z/IwkxzqZYWVQO4e2pzSD3f0P+gV4IaFqT3Xb6Lo7bP5Gbm/HZCHBFGxhKcZIIgto7piitAK+lE/aOvU42YQr4Q67RQuMUHl1R0oxApjmGexqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by DM4PR11MB8178.namprd11.prod.outlook.com (2603:10b6:8:18f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Tue, 14 Jan
 2025 07:00:08 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2%6]) with mapi id 15.20.8335.017; Tue, 14 Jan 2025
 07:00:08 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: Brian Vazquez <brianvv@google.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>
CC: Brian Vazquez <brianvv.kernel@gmail.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, David Decotigny <decot@google.com>, Vivek
 Kumar <vivekmr@google.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, Marco Leogrande <leogrande@google.com>, Manoj
 Vishwanathan <manojvishy@google.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Linga, Pavan Kumar"
 <pavan.kumar.linga@intel.com>
Thread-Topic: [Intel-wired-lan] [iwl-next PATCH v4 2/3] idpf: convert
 workqueues to unbound
Thread-Index: AQHbT9eFayTmtCjtakWYXrPkrnzZZrLpK/YAgAAiO4CALLXxkA==
Date: Tue, 14 Jan 2025 07:00:08 +0000
Message-ID: <MW4PR11MB5911FC818C1312F2B8692012BA182@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20241216162735.2047544-1-brianvv@google.com>
 <20241216162735.2047544-3-brianvv@google.com>
 <b81501de-7dd3-4808-920e-14b2cc817038@intel.com>
 <CAMzD94QR-+408wf+dindhaw+NMJ1GK9W-4xuiJpY2FkhtMVLig@mail.gmail.com>
In-Reply-To: <CAMzD94QR-+408wf+dindhaw+NMJ1GK9W-4xuiJpY2FkhtMVLig@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|DM4PR11MB8178:EE_
x-ms-office365-filtering-correlation-id: 08d6423e-8ae5-449a-504f-08dd34691516
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7416014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?MnQxdmFHOXp0dmtlSzk3VzhwSjhKQndiRnlqRVZDbEl4R1FwbDQ4NEs1S2JC?=
 =?utf-8?B?ME5CUUdTWGV0eXB3RVVoTzFhY3NvVkNXckFMeDZqRk9wMlhmZEJOTi81MXZp?=
 =?utf-8?B?bEp1RXBIOVo1OWw5enllSnBZZE5ZWWlncVRQVXI0eXM3YjRUYWdmcEMwRUIy?=
 =?utf-8?B?MFNVemN0MGNDYXh1dFgwcUQ2RklXeFh5V2M5aXV2WDB3RFZaVHRCa2YxSlpw?=
 =?utf-8?B?NlkyMUJKbHllVUxKaFpITGZCS1Fzak1YdDBLRHl0a3BrZFRnK29hQ1hDa1JI?=
 =?utf-8?B?L1AxWWxBZ1lmbDJMdHRnYzh1WEJkWWQ0UVkvMXRCU1h4VDZoaHV0bjl6Z1Zi?=
 =?utf-8?B?ZTRmN0RQY2tmOVhBNU92dUREMmd4c3ordGJVRkFRTUFDRWtIVHp0aHowdVdE?=
 =?utf-8?B?UzBDWm5vU2VmN3pBMDNMS0Fka0o1K0ZHYWJXVHQyWE15cFhVTFBZZC9MKytq?=
 =?utf-8?B?TXVCdU9xTjVoOEtJZkZLVG9EUnB2NElxeWQ4UkhuOUN3WVdGUWgvTmdINEt0?=
 =?utf-8?B?UnludTgxRlRMT2MydnVRWXZBa2VIc1l4Mnh2MXBnR29lSXRvVzl3UCtHT3NI?=
 =?utf-8?B?YVRqMStnN1dkZjVUSEl3TndRK3BHTW56QWZyYjA5WkhjL2xLTTY2ODNYZGZo?=
 =?utf-8?B?N3Rrd3pzL05rZ0VkOGxqV1NRSmE2ellmeUUwbnVQWnUzdlRCeW9LMytyaG5Q?=
 =?utf-8?B?R1BBeW9xZ2gzMlgyRER6Z3gvWVQ4YkZEbVcySWV1YWlDK0xNMk5HSVVWRFRn?=
 =?utf-8?B?ajBrNVNTZSsxeDMrRHRCMkNlT1A2ZThpdFlGdzJ6ZS92UHVHY2Ztejhjb3d1?=
 =?utf-8?B?MWZuZG4yWWtGY3pmdkhudlA5T1VPQlN3TTg2VHA1dW9pWlNQTkM4M1VidWoz?=
 =?utf-8?B?S2Jhakw2NnJydU84aURZN2ROQkp5UnEycnBmdjV3N1BYYkduWmhiOENQR0J0?=
 =?utf-8?B?ay9NWWV0VTdwYjIyVEprNm42Q1hkcTViVzRWZkVzQVM4djRwRHhRelNyQk9G?=
 =?utf-8?B?MytjVFRsRFlKZHUwR1hRWHk0ZURrWTNMNHg0LzQwTE9COHR0d3BjVGx2cksz?=
 =?utf-8?B?amtSNnppL05LTnVVYjkzL3hHS0VjSVBiRS9xZ01mNEhkQTRaUUc5YmsvS1RD?=
 =?utf-8?B?bFVlSmU2OS91Q3RNcWZVUTlIeHI5V0F3M1FENkFLd01namhqWmdwQVV4WGJy?=
 =?utf-8?B?T1RZdzRyV3hyUnprRzFvd0pWb29OckhzRDVLWW15cFJSNU5McVNhTnUvcS9I?=
 =?utf-8?B?RFJhcFZEZ2M1N2tRRlJ6QjM4VUhVQjZqT2dMZzNYQmRzb3U5cVYyVzFmdGlx?=
 =?utf-8?B?L3hqWXdDd3VYc3VGV2I4bEF2dTFESGtvc0pzV0kxRmxEZzE3RWVaQklDL0xV?=
 =?utf-8?B?M2pVWmFNWjBBN0E1aU00djBNVldHQlJha0Q0enhLRGFlN2JRaTBhWHRJTFJ3?=
 =?utf-8?B?VjI4cVN5RXJ0TlBuOHhtTWw0UUtZeWZra0NNT0FHVU1OR1Zta1hpSEZBVFhR?=
 =?utf-8?B?aUNndFY0MEwvVTNHMlpnR0MydUNrSnFkbDk3dzJxUzVyNSs3cS8xZ1ZuRDJj?=
 =?utf-8?B?OE9Ub0dXb2c3K1ZrbHNaUXlUZDhFVE1HNFBMUFF0dEJYbXhSTS94aGtTK0ha?=
 =?utf-8?B?d3hWNERseXlBZFMzQ1BzdWZ5RUVXU3hvYmU3QjJNNXJab3pucmxkdE1LSUl6?=
 =?utf-8?B?V2JxTTBOUXNmMDgzZlhIK042WWlrZ2RFdzRzY3BTUWdzRDdXUVg2LzE5Z0E4?=
 =?utf-8?B?S0lOYnRQODRZTitDVGdHbjhqdGRxejl0aTloV0IwRjZ6OVp5ZHZSTG4rUkZB?=
 =?utf-8?B?OFBRUGEvakhtZFpXdCtzRDdSeC9wbnhmdWEya0xVOXdMcTU1dExkM09oNTVp?=
 =?utf-8?B?a2dzRlJ1MFl1U2V3QVgzYnNrZ3NSem41TzE1d3pVRUxKV3k4Mnh5T0tmTkh6?=
 =?utf-8?B?dURtdjB0UnNsZjdYZ0RxazBaT3dzZ2hIT0VaSlYxdENLUS9IaG1SOThuNGNC?=
 =?utf-8?B?dnVpUzIzYjB3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7416014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M0pVby8zalhJMVRxbzVKVHJGdnVUaHJYNi90cUpjdkd0MGFuTS9wM0M2RE41?=
 =?utf-8?B?b3o4OEZxSWRkdHZNYlFhUXYycFg4SjVsWWt6QU9rREExUUxDbXZDSGw2MnA1?=
 =?utf-8?B?ekp1Y1k1WmxidWJRRk1EUXBzZ0J3cnZMK3RjYUhCT3laY05wTFc2SlJYcEhB?=
 =?utf-8?B?MkZWUklMUkJodlU2dEdEMDJFSGZ0UmNsQ3o3bVc2c3FRbURLMldJNm5nTVda?=
 =?utf-8?B?RW9Nc1pEckV5ZExjMU1ydlAwcXVzTXZoendGNW1FNTZwMmhLTGY2M08zWHdM?=
 =?utf-8?B?R0xwdUZoWGpvSmh1ZGVvNnBxSzFkY0I2dWFGQXJrS0xmRmlIL1I3WC9xai9Y?=
 =?utf-8?B?em5NaXNlRWpsSHE3U3ZGbTZDQU9NYy9ma2lXT2lyQXV5RlNkaTlsUUZTSHNj?=
 =?utf-8?B?dmtUeEY0YUREVHRXeEpJRjhkWU5JbUdicW90WFFnMGx1Rld3UmNsd25xNDBN?=
 =?utf-8?B?b1ZleW9uK1pPbXR6ZndBRnZpSHFSd21VR21mandJRzBvQnAvY200cTFnQWJo?=
 =?utf-8?B?U2xmQ2dnT21jNFlRcTlBK0R4OUF6bWJBZHkxem9KSzNaR3ZSNDczNWxuOVJy?=
 =?utf-8?B?dk5RaU1mSEE1bS8rSU9BSm1SNEIzYytPNloxVHVGV2dRVnBaWTAxOHdoUjIv?=
 =?utf-8?B?Q3RNd1A1bThWZ3JnQWJRM29SR212bTl2SlNVOVlDOUt0VC93dExlSmJrMTJE?=
 =?utf-8?B?ZXhpVVRFMlpqVElyZE9XbzFHdHJJQ3l0YTRFYUgzWFV5UGFFZXZlcDdXVUEw?=
 =?utf-8?B?RFNRenJpSzlSSTJIMEIwcktkTE1WVXBCWXc3R0ZrNU4xSmx2bnhJaWlObnVF?=
 =?utf-8?B?SjJqc1FPbVNyU3NzOGYrV2NyZG5rYUowZWtGWUhrWU54U2paeWlVRFprZlYx?=
 =?utf-8?B?dHI4ZlZJTnlVRSsxOElTYm11M012STJpS0hod2lCS3Bnb2xmUUNOUlljRVNK?=
 =?utf-8?B?ZVFkWnJwSmxaVVZvazBkdllwSW5SM2ZNakNYS3h1Y2NBSStEY1lYOTlCOXdY?=
 =?utf-8?B?enRJbWtPK1VqK2ZvUkxuOG9sb3E2eXhqbWE1WTg0RWtRRFhHV1ltL0JNbUYw?=
 =?utf-8?B?Si9wZTdxTmJHalRoYVp0NVZjOGowRWd5cVN4bWh5aHFiMzRZelVtbVEwWXky?=
 =?utf-8?B?SVlDVE1vd1dJM1VwaTlCeG5iT0RRL3MyYmZEYzJvamlkNEY3eEg1c3FVWEZu?=
 =?utf-8?B?Y3NZcEtuM0tuankxczhBRndzMWhCcGFGajhpNWtZdlp0WUZtUHpEYTBXbEpx?=
 =?utf-8?B?bVRBUlNteG1UNnU1QzBkZW9GT21Nakx0dHo0L2NMZXlhMzlLSWhESWVkbk1U?=
 =?utf-8?B?b3Q3RkI5eWMxSGczdGJOd2tqVGY3d3Q0TWl2YzVRTHgyNEIwajRZZDZBSFVm?=
 =?utf-8?B?aSs0RzNiM0tSNnJkN3NuV3lZblYxa0tvVGpWeWNEVlpRRzh0eGtvTWJKUHQ3?=
 =?utf-8?B?Y1VzUTMxQU5vUVhlb2ZINGxIcjhsdmdzNi8rM2VMKzF6VE5qV0YzRHBUdEpv?=
 =?utf-8?B?T2hWNklZbDRXWkE0dXB2SXNwNTF4ZXBBTjF1SXRNdnE4NnZNNldJZ2RaNGxI?=
 =?utf-8?B?d2NpdGZvNmFmWlcrZk9PVXJkRXFNRUhNalB6QUpXbDdHUXJvT3ZHMk5KWnRT?=
 =?utf-8?B?N290cW4xeWdzSVRxQWlSUkhBb3NOdzh4bnY2K09POWtMR2ZwWnVtK3Y0b1lC?=
 =?utf-8?B?RFRhR3Y3YlNMRmE2MXVuNEY1RURCbGFtdkpkZzZWWXJmUC9JL25vQ2NpQ0Nx?=
 =?utf-8?B?RUZrOXhMOGw2eGVTSHBlZC9DQ2swR1NROVIxZ0RzRFNsUTNhc3Z1b1pKQ3lt?=
 =?utf-8?B?RHdJTElubnJZZmtjNEZOY2pEeTc1TTB0V0grYk5uYWYzdDVRaDlDZURTOVBq?=
 =?utf-8?B?ZUJJZEJROEJZMHNUdlJ2c251bEdXRnM5ZkRuNXhTbVlxS3NPNnN0MGZIZk8x?=
 =?utf-8?B?cEdVeGpuQTlYYkV5Y2d1MkI0R0plK1dQWmpQZ0Y4cS92Y3YxejZ6eFJOdGRh?=
 =?utf-8?B?SWlpcDZkZGtBZmhVcEpqc2FNZVdaQm9pVktsQkRGN2YwRmtxWkM3WjJlM1Mx?=
 =?utf-8?B?d0U0dGozY0RoYytsYldJZytrbHo5aWY1S25RelRDenN4eXFxUDM0SGoyVWtC?=
 =?utf-8?B?TVBKMXNjdlRmdWhSV3hSR0I4Y21lY09lazdMZnI4MEE3OTNXTDJlMmVJN1pv?=
 =?utf-8?B?bnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08d6423e-8ae5-449a-504f-08dd34691516
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2025 07:00:08.6076 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RD/Byn2Reaz7u0PihgiF/qoALvNj1wzYxx8OvQHphclcZyzke/T3gS1HZNf6TtziO+xq4G8++/TGn4PpUOTO4c+IrX1HVjXG2V9hdBDfyWg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8178
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736838053; x=1768374053;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CDZy0NjngD5qVzSqtiTWH2/XlvJUJT65UGxgP0EoENE=;
 b=GxokJMpMCJ2/DSQjEgqjnBcUiwFstBBGCEkrKbChB6i0Nb4F6PpJK5Uc
 bQk4dPzH7mQaAA7vk3K69oX9yr3+OZYaCMfExrcsXJNny6qaQHd7BgeWp
 z1OJkYSCvnJTvApFxm1/ds19NkN+I2ReH28328ZU4fMd8zl8CSumQaaUt
 joUXxGGqaQ5HXEFhe6kq/+apz41uaNXHnboxMHnp6FRaR6F7WqSD0+Pvq
 vQ8meEOF32xD2C2J7P3pbB1rfcpAvFplkdSD9I33oVrDRCtYcwfbpWUh8
 PAOjuNXhU1+2ct74UabcUOdvlV8Ae57e/T81IaVukv7i/ZmavVSTmfhv5
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GxokJMpM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next PATCH v4 2/3] idpf: convert
 workqueues to unbound
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLXdpcmVkLWxhbiA8
aW50ZWwtd2lyZWQtbGFuLWJvdW5jZXNAb3N1b3NsLm9yZz4gT24gQmVoYWxmIE9mDQo+IEJyaWFu
IFZhenF1ZXoNCj4gU2VudDogTW9uZGF5LCBEZWNlbWJlciAxNiwgMjAyNCAxMjoxMyBQTQ0KPiBU
bzogTG9iYWtpbiwgQWxla3NhbmRlciA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNvbT4NCj4g
Q2M6IEJyaWFuIFZhenF1ZXogPGJyaWFudnYua2VybmVsQGdtYWlsLmNvbT47IE5ndXllbiwgQW50
aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNs
YXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBEYXZpZCBTLiBNaWxsZXIgPGRh
dmVtQGRhdmVtbG9mdC5uZXQ+Ow0KPiBFcmljIER1bWF6ZXQgPGVkdW1hemV0QGdvb2dsZS5jb20+
OyBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPjsNCj4gUGFvbG8gQWJlbmkgPHBhYmVu
aUByZWRoYXQuY29tPjsgaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IERhdmlkDQo+
IERlY290aWdueSA8ZGVjb3RAZ29vZ2xlLmNvbT47IFZpdmVrIEt1bWFyIDx2aXZla21yQGdvb2ds
ZS5jb20+Ow0KPiBTaW5naGFpLCBBbmphbGkgPGFuamFsaS5zaW5naGFpQGludGVsLmNvbT47IFNh
bXVkcmFsYSwgU3JpZGhhcg0KPiA8c3JpZGhhci5zYW11ZHJhbGFAaW50ZWwuY29tPjsgbGludXgt
a2VybmVsQHZnZXIua2VybmVsLm9yZzsNCj4gbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgVGFudGls
b3YsIEVtaWwgUyA8ZW1pbC5zLnRhbnRpbG92QGludGVsLmNvbT47IE1hcmNvDQo+IExlb2dyYW5k
ZSA8bGVvZ3JhbmRlQGdvb2dsZS5jb20+OyBNYW5vaiBWaXNod2FuYXRoYW4NCj4gPG1hbm9qdmlz
aHlAZ29vZ2xlLmNvbT47IEtlbGxlciwgSmFjb2IgRSA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29t
PjsgTGluZ2EsDQo+IFBhdmFuIEt1bWFyIDxwYXZhbi5rdW1hci5saW5nYUBpbnRlbC5jb20+DQo+
IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbaXdsLW5leHQgUEFUQ0ggdjQgMi8zXSBp
ZHBmOiBjb252ZXJ0DQo+IHdvcmtxdWV1ZXMgdG8gdW5ib3VuZA0KPiANCj4gT24gTW9uLCBEZWMg
MTYsIDIwMjQgYXQgMToxMeKAr1BNIEFsZXhhbmRlciBMb2Jha2luDQo+IDxhbGVrc2FuZGVyLmxv
YmFraW5AaW50ZWwuY29tPiB3cm90ZToNCj4gPg0KPiA+IEZyb206IEJyaWFuIFZhenF1ZXogPGJy
aWFudnZAZ29vZ2xlLmNvbT4NCj4gPiBEYXRlOiBNb24sIDE2IERlYyAyMDI0IDE2OjI3OjM0ICsw
MDAwDQo+ID4NCj4gPiA+IEZyb206IE1hcmNvIExlb2dyYW5kZSA8bGVvZ3JhbmRlQGdvb2dsZS5j
b20+DQo+ID4gPg0KPiA+ID4gV2hlbiBhIHdvcmtxdWV1ZSBpcyBjcmVhdGVkIHdpdGggYFdRX1VO
Qk9VTkRgLCBpdHMgd29yayBpdGVtcyBhcmUNCj4gPiA+IHNlcnZlZCBieSBzcGVjaWFsIHdvcmtl
ci1wb29scywgd2hvc2UgaG9zdCB3b3JrZXJzIGFyZSBub3QgYm91bmQgdG8NCj4gPiA+IGFueSBz
cGVjaWZpYyBDUFUuIEluIHRoZSBkZWZhdWx0IGNvbmZpZ3VyYXRpb24gKGkuZS4gd2hlbg0KPiA+
ID4gYHF1ZXVlX2RlbGF5ZWRfd29ya2AgYW5kIGZyaWVuZHMgZG8gbm90IHNwZWNpZnkgd2hpY2gg
Q1BVIHRvIHJ1biB0aGUNCj4gPiA+IHdvcmsgaXRlbSBvbiksIGBXUV9VTkJPVU5EYCBhbGxvd3Mg
dGhlIHdvcmsgaXRlbSB0byBiZSBleGVjdXRlZCBvbg0KPiBhbnkNCj4gPiA+IENQVSBpbiB0aGUg
c2FtZSBub2RlIG9mIHRoZSBDUFUgaXQgd2FzIGVucXVldWVkIG9uLiBXaGlsZSB0aGlzDQo+ID4g
PiBzb2x1dGlvbiBwb3RlbnRpYWxseSBzYWNyaWZpY2VzIGxvY2FsaXR5LCBpdCBhdm9pZHMgY29u
dGVudGlvbiB3aXRoDQo+ID4gPiBvdGhlciBwcm9jZXNzZXMgdGhhdCBtaWdodCBkb21pbmF0ZSB0
aGUgQ1BVIHRpbWUgb2YgdGhlIHByb2Nlc3NvciB0aGUNCj4gPiA+IHdvcmsgaXRlbSB3YXMgc2No
ZWR1bGVkIG9uLg0KPiA+ID4NCj4gPiA+IFRoaXMgaXMgbm90IGp1c3QgYSB0aGVvcmV0aWNhbCBw
cm9ibGVtOiBpbiBhIHBhcnRpY3VsYXIgc2NlbmFyaW8NCj4gPiA+IG1pc2NvbmZpZ3VyZWQgcHJv
Y2VzcyB3YXMgaG9nZ2luZyBtb3N0IG9mIHRoZSB0aW1lIGZyb20gQ1BVMCwgbGVhdmluZw0KPiA+
ID4gbGVzcyB0aGFuIDAuNSUgb2YgaXRzIENQVSB0aW1lIHRvIHRoZSBrd29ya2VyLiBUaGUgSURQ
RiB3b3JrcXVldWVzDQo+ID4gPiB0aGF0IHdlcmUgdXNpbmcgdGhlIGt3b3JrZXIgb24gQ1BVMCBz
dWZmZXJlZCBsYXJnZSBjb21wbGV0aW9uIGRlbGF5cw0KPiA+ID4gYXMgYSByZXN1bHQsIGNhdXNp
bmcgcGVyZm9ybWFuY2UgZGVncmFkYXRpb24sIHRpbWVvdXRzIGFuZCBldmVudHVhbA0KPiA+ID4g
c3lzdGVtIGNyYXNoLg0KPiA+DQo+ID4gV2Fzbid0IHRoaXMgaW5zcGlyZWQgYnkgWzBdPw0KPiA+
DQo+ID4gWzBdDQo+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzIwMjQxMTI2MDM1
ODQ5LjY0NDEtMTEtDQo+IG1pbGVuYS5vbGVjaEBpbnRlbC5jb20NCj4gDQo+IFRoZSByb290IGNh
dXNlIGlzIGV4YWN0bHkgdGhlIHNhbWUgc28gSSBkbyBzZWUgdGhlIHNpbWlsYXJpdHkgYW5kIEkn
bQ0KPiBub3Qgc3VycHJpc2VkIHRoYXQgYm90aCB3ZXJlIGFkZHJlc3NlZCB3aXRoIGEgc2ltaWxh
ciBwYXRjaCwgd2UgaGl0DQo+IHRoaXMgcHJvYmxlbSBzb21lIHRpbWUgYWdvIGFuZCB0aGUgZmly
c3QgYXR0ZW1wdCB0byBoYXZlIHRoaXMgd2FzIGluDQo+IEF1Z3VzdCBbMF0uDQo+IA0KPiBbMF0N
Cj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzIwMjQwODEzMTgyNzQ3LjE3NzAwMzIt
NC0NCj4gbWFub2p2aXNoeUBnb29nbGUuY29tLw0KPiANCj4gPg0KPiA+IFRoYW5rcywNCj4gPiBP
bGVrDQpUZXN0ZWQtYnk6IEtyaXNobmVpbCBTaW5naCA8a3Jpc2huZWlsLmsuc2luZ2hAaW50ZWwu
Y29tPg0KDQoNCg==
