Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uGYPNuyRfGk4NwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Jan 2026 12:11:40 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1ECB9E36
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Jan 2026 12:11:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C5C4E408FD;
	Fri, 30 Jan 2026 11:11:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GVbWetG8KhcB; Fri, 30 Jan 2026 11:11:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 21EF940AB7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769771497;
	bh=84U9cDxJZkxBlvCVJ1RVfWqPxJgwISY+QwB/hC8Azo0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2scmI7XmuJ9ooLYV9LoJK294RaW+G+Ni3xb7D59OtFdeB1Q54nNqs5xT7KM5OYTGq
	 pz5i9tCXY0L7mwZ7bLBX0fxEnGoePWBF47XnLA8Uuakrg/6XuBONE9MRd/Gg8Ioiga
	 H/wmSgUPbmC51KBM79o2swj/ALr0eOeAK2h8Je+ge/Atco7NgyaiDn2dEorHz0cSK9
	 RlFsJTb/li4Exx6dO6qjtVZVuZaRFkAidYAZKkGzuA0VI2IfDtCjqBhAZQ9I32nlr5
	 ipeeqdKAvnC1FL7gbdMFQ8nzxgO/xJ3LRSGeI6WAfZmEgAKbc/zil3GXyyz+KxIfa3
	 YhQXIkKGw+6cQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 21EF940AB7;
	Fri, 30 Jan 2026 11:11:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4679D195
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jan 2026 11:11:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 353A740690
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jan 2026 11:11:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5ncX7GS99PEG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Jan 2026 11:11:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CDD0840689
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CDD0840689
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CDD0840689
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jan 2026 11:11:33 +0000 (UTC)
X-CSE-ConnectionGUID: VOUesLMxSe6TdE4ypyP/lw==
X-CSE-MsgGUID: E+YtBRbjQ+G9aakjrJ+RJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="74872770"
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="74872770"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 03:11:33 -0800
X-CSE-ConnectionGUID: ZRuH46fjQ3GUQfwQWweH2A==
X-CSE-MsgGUID: c1F9UbYeTTSv3XCCh11ROw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="213782128"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 03:11:33 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 30 Jan 2026 03:11:32 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 30 Jan 2026 03:11:32 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.53) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 30 Jan 2026 03:11:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xahE/D7FBHndxsP/laekGt13Q2lKrlwhxdwskofnvKwLijxk2hj2Jgz1KCdxy6C1f0Jz3X7gz3Q71CauZvuBo5Yq2MfyAOlyLZcChs5a3QIXJt66YE3aCiF70LkrUUsf07t1TxsQ+od1DpNmn7c7JM6gyAhwpY0lZ8Y/R/GKjj03HIFYAKtnIq8J7w59ps7G36jfGAGs+o7hHu6wq2L92jtNrmKZQ70f/RhZy13sBL6XGxh81o69sGaFS4B+hOOdDsfnE3IGGBReZIQmBNyB5ZaV65LABn5gN3lBMDmeAICdGYVEOB7tnfSsWfYMyLCrJ3zwWuLRmuGfFDF//Z2Iqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=84U9cDxJZkxBlvCVJ1RVfWqPxJgwISY+QwB/hC8Azo0=;
 b=MuvUpaY/UwdtNDdkjyK8g+al4x3CcIyJMTuml28Modvjt/PmPfUW2QIOf7Hu9i95Rnw4GT/BtJLAG+s0mExrsgEJYtzeoMEmOEwBwWWwt6Vxtuin+4e0wR4x/xTrLHd5lRTISkB4LvvzXfPZ8KMkKM2lErUajtY/ZUy5TuNOqUfs2WuxUcivU9//T7HAHJ5zC2nIAqzYztDP/p3wS2L4KaFgYTu89cYOJH2+0KAjXvr6pJuLgGGBqrj7lFOsPTcsvRHV4LsgsQYj7C/gFvqZV7u3x9MqVMyF0IsKhW++N+4amfD3KXIZAoVSmyyN2GmHIQPfJYbizYgrCfMH+5fOdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5983.namprd11.prod.outlook.com (2603:10b6:510:1e2::13)
 by BY1PR11MB8007.namprd11.prod.outlook.com (2603:10b6:a03:525::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.10; Fri, 30 Jan
 2026 11:11:29 +0000
Received: from PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240]) by PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240%4]) with mapi id 15.20.9564.007; Fri, 30 Jan 2026
 11:11:29 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Randy Dunlap <rdunlap@infradead.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 19/30] docs: kdoc_re: make
 NextedMatch use KernRe
Thread-Index: AQHckPaU+16WdF1k80ap4WH7YTIlT7Vqj09w
Date: Fri, 30 Jan 2026 11:11:28 +0000
Message-ID: <PH7PR11MB598356D94CDC4CA9EB6A22EDF39FA@PH7PR11MB5983.namprd11.prod.outlook.com>
References: <cover.1769673038.git.mchehab+huawei@kernel.org>
 <8a7da8d12e69a5a70d63f85a3d4ea11af6ac782a.1769673038.git.mchehab+huawei@kernel.org>
In-Reply-To: <8a7da8d12e69a5a70d63f85a3d4ea11af6ac782a.1769673038.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5983:EE_|BY1PR11MB8007:EE_
x-ms-office365-filtering-correlation-id: 3f9282fe-8677-4c5f-b574-08de5ff0510c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?ZjAxZVJVY2N1WVEvNG9RMkNEUTE0THYwWGkwcGpSNVVzUXJvdFZSTnFsNVZW?=
 =?utf-8?B?UURPQkxRbEE2Q3hYS0dhQ1l0Wkw4TjhjbEN4NTRoeENYbmw5a1VKVDJnWHN1?=
 =?utf-8?B?MUowU2pZdmZVbStsK0lBOXVWYStoeGkySEQrYWZvWmdRMzh1MnV0Z1Nob1FR?=
 =?utf-8?B?c24zYTMzV3kybkNvaHlQcmZQN3I4VUlEYXY4NDVpdVRjd1BvYW91aEpTY3NJ?=
 =?utf-8?B?Y0hORStjdVBDSk1zTkthbzh4K1J6anY3TlljSTc1bkFnWnBKMm5Lb2VHSXhV?=
 =?utf-8?B?UEZxdmVlRkYrTHlWdiszQ1ZBSDJPekI2aHZuZFFsZkNlVS80SG5WT214UHBZ?=
 =?utf-8?B?SUJlMGJvenZROFlmamNjd3NBdEd5MjVRMEdrdCtaaWgyZnF3YlQzMVZpbU16?=
 =?utf-8?B?aHgxWWNKUFdSL3R3VDFXTS9YUThraUdLbWZIaVIwMFhlNndzaUZ2ODMvblJ5?=
 =?utf-8?B?UTBmQWQvZmFKSVdpVVFnZ2NnWlkwR1FxV1V1eWpWZVdPZDA0bmZkc3ZnS01T?=
 =?utf-8?B?aGIxaC93YnBHWXFHMEgvb29meDB5U3ErUWdXOHJ0SHBYbHBYdDgvWjF6bHNm?=
 =?utf-8?B?UncwMVZ5R3l0NVdWdHpqTkNwa0JrckFHdHRXVzJXejJKTXdWdlQvZ2lZSWIr?=
 =?utf-8?B?NjAyWWU5ZmJ2MkwwZVpPbGVFRGNVSUVoczdKOVd3RUR1YnRmN2FFdXFtWGdq?=
 =?utf-8?B?OG5mZEtON29STVg2SGJITHN5WExudEFKSDlYZDJDMFY5SWZtcDhBWEIwYmI2?=
 =?utf-8?B?cTVkMzBIMWlRZkdNRWVCU1VETm1uTkV4b0cvdFpZajhFS1RSR05oV0pUTnd6?=
 =?utf-8?B?TmEvVHZrYjZlOElBcU1SV3JiNm9CRVBWRC9mUGxZQmlDWEhhMmVRQWlhbFZX?=
 =?utf-8?B?WEhNNWJ6aXZvWEg2dnZCbldpb0xyWHlmTGhoU3Y2bzl0ck5XY0dra0VsQ3d4?=
 =?utf-8?B?LzRMRHA5VkdFc0RxczdLemJYU3VhUFc3MVhSWjUwZm9kWDh4Y1NkV2krdjNI?=
 =?utf-8?B?Sm5qUE4yNmNwNHBuUnVNaE04Y1NJQkdJbHlyNEd4bkhuckhScWVwcHlFMnow?=
 =?utf-8?B?cmYzZ1o4NXhDdzl2Y2h5WEhibC90UjFZaERmck81dGtoWElxMittMEYxaEtH?=
 =?utf-8?B?RHQ2WTlUT2dZdXFvV0ZUKzdMamM1eUxONDg2anRoMnByOTF1cTV2NGFZdm5L?=
 =?utf-8?B?bHpJUnFUaDNJZXRVZ1BTRG8zWndPY1RGeTN4N1NBVS9MSExtS0ZOSC9TOCtL?=
 =?utf-8?B?QnpCWXF1bVR0a3BzTFI4UU5hMHY1K1dKSTFzTDgxbnVNU2x5aDMxV0hSYmk5?=
 =?utf-8?B?K0dXTlpRdkwrMzZYSEZDaVhBeml6WklKRHg2dis1UENIcy9wcHlCRDBuQkVY?=
 =?utf-8?B?RTN1VkJnQ2pna3ZTT2tZeE9hWHlsVTJodVRyQWxRVFFyK0g0MytmOFYxTG85?=
 =?utf-8?B?cVNuaTIzN1RNZnoyZzQzQWNQNERhaDNvZkhxYjRGWFhPbWdHREUwblhYeVNN?=
 =?utf-8?B?VU9sZGZzNmJJSWVGYzFIcjVwL3pzM1RpT2twOVVYcnhXTDZyVmVGTzA1TnBp?=
 =?utf-8?B?b2d6c04zVExMTDdib0JpMmEvNFE2NitSM3ZoWmxWTzlKc2lvL2ZyVWkxN2c4?=
 =?utf-8?B?dUVYcGRqZkxWWnFocjdwUzg2Y1ZneXFuVWlYaE5zbkdOVXFGcFhhTi9JKy9u?=
 =?utf-8?B?eWJlTmEwd0Jya0ZicW1TbzBqUkE1c2pwNEx0cXUreStXMlJScVNmcmJWQm9s?=
 =?utf-8?B?RVp1SmZhdzVJMDlTVVZSVC9DUjczcExKejF0STE0RzB5aUpqSGtrUGJSKzdH?=
 =?utf-8?B?akp3WDlZREZ3WHdLZzZnMmhmY0ozSWxuVTFUZmtic1E2OU1HZHZBZ2svUjAy?=
 =?utf-8?B?TGhySGpUTDQ1dzNEOTd5amlZc0Q0dmNqNGs5QklCWFV4V1g0akZWcXBIVkhZ?=
 =?utf-8?B?NW1pNDZjR0FHOFVpeXZNcm11T01TLzdFcUhyOXdrbGZ4SGhPbmMvZTBqcXI5?=
 =?utf-8?B?RDFQSVlsNEJnTUU2TXQzWDNpZC9YMTBDNi9RWDA1VDBucFk1OXlrR0gzbjFm?=
 =?utf-8?B?WEplN1UzeXdNN3VvRGtFbGpTVmZNdXAzR3k3VkV2T052eXp2VWZmZVJYbFNI?=
 =?utf-8?B?YTg3djFDM1J4SzRtcWZQck9Bci9SdUQwWXRiSVpGMjZONWNZM0NWYnhTRVFj?=
 =?utf-8?Q?FuDTux9img3ANVEp2yglscU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5983.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cExocnJhNGd1b3F2cXJGT0x2eTYyQjFQNEFlY1VkczRpclBiNzM3eVlnOVIz?=
 =?utf-8?B?eElwdDFzcDhFS3Bsc0ZSUnBKSVRyL1VxU0hrR0NVeEc2UFNvUGplbDQ0VFl2?=
 =?utf-8?B?UVMxdG0zQTNUZndJb0pPSUhEb1VDbm5raEs4bURMbVI3YndpYk4rZWJHNHJm?=
 =?utf-8?B?K2dUMmJGY0MvQ2RndVpCSEF2ZTlzelpINGQyYnNlV01Yb09CVk5iR3V3YjdF?=
 =?utf-8?B?akN2TUt6TDVqdnVSM0V5VUQ5bXFmNXBSK2RsNEt3NUpRT0RuRE5COGMvaVlK?=
 =?utf-8?B?SUpKMjB1UVdoWU0zV0M5OCs2aXo2RTFuTVVmUkZTZ1hvSmI5U2wybXYvdGtV?=
 =?utf-8?B?RHdaT2RSSEVoazNFKzdRamFMOXJOalVDTXVpMWhYK3VvREpNTkFhUit3V2lW?=
 =?utf-8?B?NmVlMXVoNG9RbnFFRzNjdVQ0OXhHV3FiM2VpZjZTRXUydGw3YjNaSExkNUZ3?=
 =?utf-8?B?WU1kRkZ1RzdlaVM1MktpNkk2K3ZsWWJ3WVBlRW1VZDVNcFhlaHFkY04zaEdN?=
 =?utf-8?B?dm1RY1Z6d1pzUmVBbWRiT1A1ZnlXU1ZSVUJvUjBTS1JlWTdSNDJpaDRUUXpK?=
 =?utf-8?B?aHc1T2h5VVBGWm5DTnJnb1NyeTdwZ09hS2FrVlFzZFFVbHJBcjZoY2lxUjJP?=
 =?utf-8?B?OWVLRDBCYWt6UEU3cXhUbUFMOUw2Ri8yTzhhR3htanNmY1U2ZE1DcFcxRkNi?=
 =?utf-8?B?MXh2K0dvdlpIcUZYWFhhWTk0OEJDL3RvR29lRDVoYVZlUzZpbGlZSGdZY1VP?=
 =?utf-8?B?eW8yRm5MTVNydnl5T3NOUUhQWE5LNHpPSnNkL3pFK0lkZEZUQ0I3REZtMjV5?=
 =?utf-8?B?MEVod0NQZDZYaG5BV0FaUTF0ZmJDQ0phMlNtcC9ZNXpXOEJZUzZjTGYweHhl?=
 =?utf-8?B?c0gxNWtxZmRSYldaZDRiTzVNekJtbWN2bmRNSmw3VDB4Tis4MnVkc0x3UHdl?=
 =?utf-8?B?NCtodTJJeEhxM3htRW5jcWJ5dHFTWWU5b3FTaXY2cjdidVdsL25nTEtDSGhU?=
 =?utf-8?B?Q0ttYnNqWGlRUnQvcVhIVUdMT1pFRlpzVkZ2QmREYU9SL1k3aTM1MitGLzZZ?=
 =?utf-8?B?enZ0SUxQVHkycjdWNTRIZWU2UFo3blNEM2N2cmVTZjFCVjRYTWNUTDlRVlkx?=
 =?utf-8?B?M0d0VEMvRU5JRGZ2a2RHYXJOUlNXRXJZT09Kek4rb1dpKzlEYnpISGVQamVs?=
 =?utf-8?B?NHd5OGVQb21YQXZtWVQyUTB6VXR6YVZRbm1zV3A2VTM0OWpmZ3FSN2xsaVE2?=
 =?utf-8?B?azByZjgrN1B1cEltM3A2blVSYlBMVDNHcG5iVjJraG5sY3FYb1FqbE53UXNR?=
 =?utf-8?B?Z1JqTVM4Vk1zTzc5WDZuNlFkYjU4RjdiMzVHZnBwNnQzSGJMa0d1clZETnVo?=
 =?utf-8?B?U2Vqai9WNCs1SDFpNFppN1NvKzRFN0EwRXQ2T00xL1pKNlI4SUhUQmpsWHAv?=
 =?utf-8?B?VDB3b1ZwaHJLSmNQWktvNGRvbUR1bTA0YkRJV2ZKSDRFZVA5NGt1M1J5NlZ0?=
 =?utf-8?B?Q2F2MlplL0M2Mm9qOHhOUGJqSGhBb2RCdkw5bHJYbnU4cjV3YzdBOEhwNG82?=
 =?utf-8?B?YmhFWTVSSFJJMUJtcjF3NFNEOTRSMjBrQVgzWlBxSVF5bC9UUlRESGxnMitK?=
 =?utf-8?B?cEkvVmp3MW0yY0RXcEd2YmxrbzJsMUV4MXJ5SktodHNkWW1KTHZPQ2JvdGh6?=
 =?utf-8?B?VGl2UGVtTEw2UXJUOWptWWh5cUxKRUF2Q3cvTXFUdElFZ1luUzNRWWFEV0pj?=
 =?utf-8?B?STZ0N0dEem1EbHNnbldncStxeW1uZ3I1ZU00a1BxUDd2L3FGOEIvZGxUSUdm?=
 =?utf-8?B?eUJPVERRVUtXOU5ldTMvaUthWG1LdFhyWndPK3pYbzRUeTJEeFkrNllVa1Rj?=
 =?utf-8?B?eU15cnZ1R2pEcVRXSzdkR0h1NHNJa0RjcHFXMzlQS013cGRxYzhmUjhwbzFD?=
 =?utf-8?B?TDFUdklFVDlqcm9mQnNUM1kvLzVtR0wvTXVtckhZNmpCL1VCeTBiMFl4cGZD?=
 =?utf-8?B?NWExUDNhQkh1ZGNoV0hteEtQeTFlUTlFeTlvV3RkWW5FSkQxNWZYZnl6a2M1?=
 =?utf-8?B?K1RaQm1ScGZYemM5d1ZmbkNWTktPUVRjV1I1NTQ0VE15T1dMcGhlNnYwNDV4?=
 =?utf-8?B?T3I0Y1JmRU50eVpDNExHSjdrWGVNNDNhU3FTYjgvNklFamdrRkxoOURQTWJj?=
 =?utf-8?B?RDlVUitkbWNYWlhIZDlpbjRyMmpxSmRWcWQ3OG1mcjNrbU0wdE1FK09vOW82?=
 =?utf-8?B?R3EzRm9hV3IzOWRCVzM0K3RWSktoMlY0NDBlRTdreEVha2J4Z2dXWTg5Q2Ft?=
 =?utf-8?B?MXJBMTFod0hsWGloRk5iNmNaM3NEWGUxM25VZUU3eUk4UGlFSVQvQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5983.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f9282fe-8677-4c5f-b574-08de5ff0510c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2026 11:11:28.9739 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GjWvmAw8tN/SEvxx57FaAhBMWaZVlEB92g6QTSURjGvLAgwgJxC3fSUrPOgUTsm+MaVIuMc7o03nq2C4KD29hDBuhWUEcoWcvwD74OovLpk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8007
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769771494; x=1801307494;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=84U9cDxJZkxBlvCVJ1RVfWqPxJgwISY+QwB/hC8Azo0=;
 b=IGKJOv40ULeo3mAn0yN4VCF7EPULzaxXX8UZC9hZ/FN9Nl2BCorJvvvs
 lAfZAgJUjt5aw3NxPaoPHuY7qMR8wvcx0odJmd/Dd4Dth1lsBX4RcFNU1
 TiDzAh3k5zElhxMT4JzbjkxwYN2tLFvefw2IyNpg/WBsf2bOs5OgOnPfA
 AmJUxmgKMYnQxYwHBGQFQ10iLpPquBc5KVFB+id0ihPsylYctg2tQE9rN
 NrLpppg+sdraRlDDkLS1CZMPOAM2JPHS2nn/7LEm0yx5f7oHjqyl/ipr0
 c73MLsU30+3bYXfn1PLTLgoyhyXACS28GrGuVMv/MqbPMXaK+Bjk3JIH4
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IGKJOv40
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 19/30] docs: kdoc_re: make
 NextedMatch use KernRe
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:mchehab@kernel.org,m:rdunlap@infradead.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,infradead.org:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 3C1ECB9E36
X-Rspamd-Action: no action

Pi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+RnJvbTogSW50ZWwtd2lyZWQtbGFuIDxpbnRl
bC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YgTWF1cm8gQ2FydmFs
aG8gQ2hlaGFiDQo+U2VudDogVGh1cnNkYXksIEphbnVhcnkgMjksIDIwMjYgOTowOCBBTQ0KPlRv
OiBKb25hdGhhbiBDb3JiZXQgPGNvcmJldEBsd24ubmV0PjsgTGludXggRG9jIE1haWxpbmcgTGlz
dCA8bGludXgtZG9jQHZnZXIua2VybmVsLm9yZz4NCj5DYzogTWF1cm8gQ2FydmFsaG8gQ2hlaGFi
IDxtY2hlaGFiK2h1YXdlaUBrZXJuZWwub3JnPjsgYnBmQHZnZXIua2VybmVsLm9yZzsgaW50ZWwt
d2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IGxpbnV4LWhhcmRlbmluZ0B2Z2VyLmtlcm5lbC5v
cmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7
IE1hdXJvIENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYkBrZXJuZWwub3JnPjsgUmFuZHkgRHVubGFw
IDxyZHVubGFwQGluZnJhZGVhZC5vcmc+DQo+U3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BB
VENIIHYzIDE5LzMwXSBkb2NzOiBrZG9jX3JlOiBtYWtlIE5leHRlZE1hdGNoIHVzZSBLZXJuUmUN
Cj4NCj5JbnN0ZWFkIG9mIHVzaW5nIHJlX2NvbXBpbGUsIGxldCdzIGNyZWF0ZSB0aGUgY2xhc3Mg
d2l0aCB0aGUgcmVqZXggYW5kIHVzZSBLZXJuUmUgdG8ga2VlcCBpdCBjYWNoZWQuDQpUaGFuayB5
b3UgZm9yIHRoZSBwYXRjaC4NCkRpZCB5b3UgbWVhbiAicmVnZXgiID8NClBpb3RyDQoNClsuLi5d
DQo=
