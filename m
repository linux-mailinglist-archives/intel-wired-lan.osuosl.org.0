Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4CDA23E62
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jan 2025 14:36:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 44AAF813D0;
	Fri, 31 Jan 2025 13:36:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qi5K3NtV1DQz; Fri, 31 Jan 2025 13:36:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6AA01821F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738330616;
	bh=91b+UyU31KdgZKsWthpBIr4XlJukDYUhn/fB7DRF9Fs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dl9Sp8yo/hBHq198tlqQwsZR/bmvGxQYY93RXahuYHtCkwTuMrlPgK2GQbCA4r4d3
	 Oar/1sy3YG26rTytx+PY2o+/0+udB2b8dRjtrI4iM2ZJ/BcEQd/e83nmO74oTuYoN0
	 JUcEmUy2l+L7AX4KYXZ1eRI7L+kwRkLDqRyCQWLLkp4HkRtIzrRIdVcO61sHG0eYlQ
	 zgF2AEpOzrcB2eIAMANf9jd1nrGkpKhDza360mz7LYmVAjjefaF31cEi6zZt0ZgxvB
	 44pL5uelMyOXhgJpUMfPaiqSV6Bei7yNXE0XNA9ZOv05WT/m2xGFZp2nDI3UJv/ONL
	 iV6AvjWKPzdAg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6AA01821F1;
	Fri, 31 Jan 2025 13:36:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8076512C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 13:36:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 631D640E4A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 13:36:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AANa--KrqE3Y for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jan 2025 13:36:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 409DD40E1B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 409DD40E1B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 409DD40E1B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 13:36:52 +0000 (UTC)
X-CSE-ConnectionGUID: NuEwqMjUSfqDefmQwx1iag==
X-CSE-MsgGUID: Hx4fAy9KShm1TwkwKg6HXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="38780507"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="38780507"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 05:36:52 -0800
X-CSE-ConnectionGUID: UPU2E9jKQpKrhsoyWBBVmw==
X-CSE-MsgGUID: xCrqmEM4S0m1nBFLQiwK+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="114627804"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jan 2025 05:36:49 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 31 Jan 2025 05:36:49 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 31 Jan 2025 05:36:49 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 31 Jan 2025 05:36:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b3d3CAnqLQB2YwpGGeHnrzHdoHzDrE4+6gH0tj43Wi8IKihpVh2bF6qKMI5HQJtPu3FE1C5RwBjHJTd/lrLA5W++0RFJ0YsHovH/V8lMtV+AMKxbSV1PlBxh0KnIDdI9GyfzAOfkGzyYJlFXLEBCDeFTECLxExSf6L+BCh7bVIUdCUa2RXddKVBgPLUoCUEhg+AGuLgY5x5JTK2fK/UXoZYzqEnNNqmu9w3kv65DlhXslZoD4IAF6RGu4qSfGEDqGpQY0S1phk/OoEPTNajMlTVU7o235pSXcFPPDcZKxWTLukUSeaVWcVC4QRLnNVFnQAs9cPlxoK9sMAdgEUz+bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=91b+UyU31KdgZKsWthpBIr4XlJukDYUhn/fB7DRF9Fs=;
 b=xtusrpYc6jOHPAvzFuJgd2jOqzXVY+yM2h+weKT66u/JvRNaH55ZjbbzCLUZ73WIEx3vktf99a79ixKsuJzJ981NKfdzIA1ZSYWPKBaEIP6L0oR7iWd2Yu0G4ps19ZOsbzMCnWcJwTSF+vys74evWDzNCau6cZgNbOF5uKizubLE2vYWE3g+vWrI1xrcZzrVFOdf2s0WzzsAOcxbU2NPRDcdxr1w7Bjwj132dUqGqfcKrWQqnkxGtazTOlicUJVoDmFCg5c2phrDQBQuz5S2OxB1Ss1MPspg473sR5aiF1OpRHwWC4XpnX1+TjuhEgQuXsEI0Vjgyo86lbG36bwhfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 by PH7PR11MB5886.namprd11.prod.outlook.com (2603:10b6:510:135::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.20; Fri, 31 Jan
 2025 13:36:46 +0000
Received: from PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::c80d:3b17:3f40:10d6]) by PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::c80d:3b17:3f40:10d6%4]) with mapi id 15.20.8398.017; Fri, 31 Jan 2025
 13:36:46 +0000
From: "Song, Yoong Siang" <yoong.siang.song@intel.com>
To: "Bouska, Zdenek" <zdenek.bouska@siemens.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper
 Dangaard Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, 
 "Gomes, Vinicius" <vinicius.gomes@intel.com>, "Bezdeka, Florian"
 <florian.bezdeka@siemens.com>, "Kiszka, Jan" <jan.kiszka@siemens.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, "Bouska, Zdenek"
 <zdenek.bouska@siemens.com>
Thread-Topic: [PATCH] igc: Fix HW RX timestamp when passed by ZC XDP
Thread-Index: AQHbcYAFtaGmOopQfUC6olQIF3c5yrMw5iNg
Date: Fri, 31 Jan 2025 13:36:46 +0000
Message-ID: <PH0PR11MB58302B932136F6E27A3F7712D8E82@PH0PR11MB5830.namprd11.prod.outlook.com>
References: <20250128-igc-fix-hw-rx-timestamp-when-passed-by-zc-xdp-v1-1-b765d3e972de@siemens.com>
In-Reply-To: <20250128-igc-fix-hw-rx-timestamp-when-passed-by-zc-xdp-v1-1-b765d3e972de@siemens.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5830:EE_|PH7PR11MB5886:EE_
x-ms-office365-filtering-correlation-id: 45820207-755f-46d2-ffa7-08dd41fc4eb5
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|921020|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?bjFwNU9CZjFHbFNXdGs1Ui85Q0lrOEM1V0RqMDhRTzdyc3NHQUk2c3NON25G?=
 =?utf-8?B?MHU2M3UwU2tMM3FScExjMGhvTUFUUThhQ3ZFVkZsMWk1bEc0MTZCcEM3Z1Bt?=
 =?utf-8?B?ZkNaNHVTdHYrWE5pck92dWpXZEtQZHBrR3MrZ2htR3p6M0VFaHV2WDFKU2lD?=
 =?utf-8?B?c1paNlBWaGdBOTNUbjNsRHJzLytIMm1WMUJjVUtSNk03VW9TQXZCaHJwaWl0?=
 =?utf-8?B?SVkwRkVmYzNQMVlNaDFhQllCR2ErbDFWWnVidVF3b2ZaNkxISFJ6WkhRdWtk?=
 =?utf-8?B?S2luNXdxTFY1VytjejhnVGp4dmEyeEdrYi9qSktsMDBRTkVrcWFuTWlrYlVO?=
 =?utf-8?B?K0VHdFpjZmtkZWw5RTZXN3h4SFZKOTdma3o5Znk2Q2RieUk1SGQ1M0xyWTU4?=
 =?utf-8?B?TVVBbytJTWpRNzZJK0pvaUwyb3RoS3VFY3Y0emM3MlFLL3BZbjMvQU1jOGM2?=
 =?utf-8?B?aWVDeERwRkhTTFRTS3R3cDFDYTI3c05hUmxPN3c2WnEyRVdSZWR3T1RDZS9i?=
 =?utf-8?B?MEdtdndsL29sNzl1cGY4QTZBOHFpL0pKbTdWWTdMLytDRTY1dm5BcTdCNTN0?=
 =?utf-8?B?ZkQxTmNRbUVjMGc2TzdmQWNTNUVmdUdiMlRIZE93ZzJaS0NoZ1FOc3FJekNC?=
 =?utf-8?B?YXMyaG9iT0d6MTJ3Zi83N3dyYTE1dkJqWlY3ZmJBT20wcXFmRzN6bHJXOE00?=
 =?utf-8?B?TTRTOWF5eFdVc2x0SG5ubVJhb3FqcEZRajg4eXFkeEFYL0Z4cWxQcDZENUNX?=
 =?utf-8?B?Z2RhR0tLc1ZReU9MN3M2MTY2K1ZhTytYUHNCQ0NnTThpdHFzUUs4eVRpRHYr?=
 =?utf-8?B?RDRRU1UyaUYrekV3WmRBNWFENG9nVXpIVDUwT0d6dTk2S2FHenpZenN3Tlk4?=
 =?utf-8?B?MHFXUFp6YkxrSXN6R09VbHBmU1ZZWnFpVU5uK1ZmY1E2MFg4VlpkeUhkdDJI?=
 =?utf-8?B?WjFKbXljT0IzdjRKRW5vcW9NZjVWekRmYmRibDFJckdsUUF5K202WWQ2UGtH?=
 =?utf-8?B?MEo4cExlRGt3d0pXc3lvazF6TkRjUUozN0ZoME1KMW5Da3RSbkp3RVczWVlF?=
 =?utf-8?B?bTh1TGhKNTFEVjMxckVGMXlxSEV6U3k2M2J5MlFEVFpOR3gxWEEyQ3JacFFq?=
 =?utf-8?B?UGdXSG5jNXNiYVVIWnFGVHJqSlhrWmxZRWFHQ082WEIvRHAvS0VmSEZaYmxG?=
 =?utf-8?B?Y2xuZWxGczNmWFpNNDhPZ0lheVRLdFJ0aDhWMjhqR0t3SzA3emlMRTFUTW1S?=
 =?utf-8?B?elVEVUlGUHdBaUZrU08vY1dMQXJyS3h2QzA5eVcwWUhTYlpNZEhJZWkzbzRi?=
 =?utf-8?B?OFpGWmJ4RkFXcUo4aU5KcFBURVZBUHNpTXdUZjJYc1hCdE05Z2ZZS05YRGZQ?=
 =?utf-8?B?a08zNndFOGFXemx1bUcvN2F5VUU3TjRxQWhrTmIrZ2p4Rjgrb29pcXE2dW9M?=
 =?utf-8?B?bVFwMnByZDlXMFRReG9oUUJRZUlrRzFWc0hNdE5oR2tsbzNMbzI4NllVbzhE?=
 =?utf-8?B?azNXMmRQd2Vqek5Qd0VMSFc0OVc0eW5Gc1kyeFN6NGFpTXdYZzhDb1J6TURZ?=
 =?utf-8?B?aHB1YllaVUF0eHdBSDRIcG12a2o2d1dvUlptVHFJQlZtSzllWGlxWEt6V1hD?=
 =?utf-8?B?T0tGakJrd0NNV1ZRR1BUSmxxOFE3T1JCVXFBYlBjb3J6SmJGdXlCajB2MnFU?=
 =?utf-8?B?UTVNL3JtdDZDTDdZSHJ3Z2FrSC9jYTgxS3NneFU1aGY4OFYrSlBPRjZJc0Jw?=
 =?utf-8?B?KzM3dENFT1FtN0RLMzJKTkNwUlY1cHZ3N0YyTjV0QnZVUXVvZnlxc3lHL3hD?=
 =?utf-8?B?Wm1CSFc5MEREQjZCYTNuUlM3Z2xaelVCbUNuVGVTT1lGbUtETGRNdHdjVlhY?=
 =?utf-8?B?d1NqTlNUS1lPajIyOHRnRnRZNnE4a2dXZmpPS2YvbkpCZm9BRDN4Z1djZyt1?=
 =?utf-8?B?bk5YS2lqNUM2S0lBMjNtSHhzT25ISHBoQzRMODNIaTJMMkV1WTRqU3ZPeEN3?=
 =?utf-8?B?bHI5dy9uOE1BPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5830.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(921020)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZU5TbEFVTGtseURBdUxXTEp1WTk3VVgxclFnaW0vN24xSEoxRThPemtOV2s3?=
 =?utf-8?B?bFdnbW9kNzBZczV3VDVJUXpoai9ETmpQOFlENDExb251aEdja21VTy9zRk1x?=
 =?utf-8?B?WDkxbWo5OUZmNlBuNXQ4OG9QcmxWckxUZWxzeEhqbHA3U0tDSzZ6RDhOdjJh?=
 =?utf-8?B?UGgxRUlVVGtSL3VPOXlYU29qYTNtaDBqMmNlc05RRzM5NmlxcjdHWHZ6dTRL?=
 =?utf-8?B?bkh1czkwbk9UOWx2ZFJSMVFRS1VhWFFUdVlVdEI3THN4bEVBaXdDZFQxZXdP?=
 =?utf-8?B?aWUwQ0pXUW9vbHRrNEtaeWl1S3Z4WjZNTjgzNm9Nc00zbTg5M1VQdENPZmxD?=
 =?utf-8?B?U1hPSGZuYWsvVlAvb2xTNVNOTU9tN0duM1liUDRHYWZMdDZ0MHRTVEFOS3JO?=
 =?utf-8?B?eHQvdGZNNE1IU2dJTy9MbThxWXJJamtvdzlQK0grQkdFcjd4RW8zb0VhUlVn?=
 =?utf-8?B?Y3F3d1NNa25aRGdzZ1ViU1hDN0Z0UkI5aHBWYVFpNE9qbXRWNWMxQW5WNnIw?=
 =?utf-8?B?NlJvMXpNY1dsSXFRMzhHVGhNc0pZSUpVeUF0REFoWVhobFArZm5pUlFkMkJk?=
 =?utf-8?B?K2MvWWxWU2xyY0pzYWtOeHJTbUlRM1YwcTZac1NNNHUrRDlpOTZkOWY2ejA5?=
 =?utf-8?B?RjRpY29FNDZGTUwwYzAvMS9DcjZzUmdZVkE2eWttVjZZczJ6RmQ1Q0Rhc2xS?=
 =?utf-8?B?dGlhaTZYVm01M00weVhhbk9SUmhqVUxMYkpYY0wzcStlcXdUMXdPWkRqMUZV?=
 =?utf-8?B?Q2hsT1dqS0cyQWxva2RxM3NoWTQxRCs2LzJoZERGYUN1cFpYNTVnMG1aK2My?=
 =?utf-8?B?c1VpejZMY3hHV2x2QTdHSVd6T1RSaSsybGdCN3hTRWJPVThzbmJlUS9KeGJZ?=
 =?utf-8?B?NjJwbVhXUEVJZ2MzVzdJMWlITy8wODdqMlZWbFRBZlFLY2pPd0pDS1lSUkVE?=
 =?utf-8?B?WEZuTkpoWTBLb1dLUkFXYWRjR0tSK0JwNjRXalZ5OGRmT1B4alRmdS85Z05r?=
 =?utf-8?B?VXR0NXF1R0FDS1JjVzJTNFhxbUdhbTJyQ3NZd1Z2SkhIeTZBZ3NCNUdVSnJS?=
 =?utf-8?B?ZTIyQUk3T3JQOFQ4UTY3WkZLVlg1QTN4U3pXQkpnZkE0M0FIQzBKZjhNOHY2?=
 =?utf-8?B?dUZ5R25Uc2tvRnRjMjVudFMwL0ZhVFRpWlNHREN3WVY1Qi9OTytqaXZGODVG?=
 =?utf-8?B?U3Z0NDZTVWtQWnd0MmZHSkxWOWF1K2Z3ZHZaUThFc2wyTVIwRkU0clU1L1Qz?=
 =?utf-8?B?RnovUkhyY1Zsdjc0ZmhUM2lSL1JyakloaVNSOVBNUlB5ZmEzZ2FmR2ZsM2s5?=
 =?utf-8?B?Ym5TbnNHV3NnalRmUms0TlpySktUT3ZPSEE0Sk82Vm1FUDcwbExxaTdJVzNj?=
 =?utf-8?B?Umd5M3EwS0l3Y25OQUVGU0FuSlA1OFJUNThaRmhPbkRieUNVd0V3OE1vM0h2?=
 =?utf-8?B?YzlMQUFRN2VML3ZDMzlBRURTYk1iaXRLcWVtZHlodnh0Z1g2cEJiYmJXTDd6?=
 =?utf-8?B?VmlLSUFDeHgvaEhwNHJQQkppYUFqWHhUNmo3VXRZbGM4aEY1akJWbmt6YlJ6?=
 =?utf-8?B?ZVdhcUNmL3B4Y0dlTXRjUmF3N2p2TTZmQmZuRlBRWElqY0l1Z0U4VGhCNXlC?=
 =?utf-8?B?QlhhYW9BVTdxUE9JbTlSTEc1SVVlRExTV3lFWjh3K1BIRlFGUlZmQ1dNTlJH?=
 =?utf-8?B?cmczWlhqd2t0SXhWS3ppZEZPZVE3R1M1ekZub09DZlR4MlJMYTQ5U2ltcG1x?=
 =?utf-8?B?SWRqVEhOaUNGcEEyeXcrN1dIWXJiVUJyeXJ3dVdzMCthcHdYT2Yrd2g5ZTNj?=
 =?utf-8?B?bndQcmloMy95amVTcUdCcWxrbDFnL0s4RzBhaStpV1lmaE1xTmFIRzAyU1hY?=
 =?utf-8?B?NmRONDRLSHhtaVVMcUQ1WVplNTgreS8zL1NIYWIxQ21pZHFOUkpBR1dtbVdB?=
 =?utf-8?B?NWlZeWVrSXJHUVlFVVJGMzVnTEFmbS9ISGt2SFRXQWFWZ0UrVDNGMXB1Q05J?=
 =?utf-8?B?d0ZkdTdkbFlLVTVHc0g1OHYxenczOTB2N1hzeHhrMWZ2L0RER1FMeTVubDgv?=
 =?utf-8?B?TSttWjIzaWZvdjJ6NUhjcWN2b3ZJZU81U2YvYXgxKzlOemI5WFp5RURFUjNq?=
 =?utf-8?B?QlJnN0FyWGxTVTd6TTBBL2dOZjBNRkgwQk5yMnpZM2NFeTBBY3RUSDlOZlZp?=
 =?utf-8?B?dGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5830.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45820207-755f-46d2-ffa7-08dd41fc4eb5
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2025 13:36:46.4106 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n1ucmBEnHoUikh/CfxysBAk2X94PpH9IXcYrM3wFpEe9itfmqd878Ox5mBefUfERwU1YS3CaJ8YOa3A6O/BtGJ3VIbYb2M9KNn04iAVnazE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5886
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738330613; x=1769866613;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=91b+UyU31KdgZKsWthpBIr4XlJukDYUhn/fB7DRF9Fs=;
 b=Omb3suNSWjvKyt8OiRlnn7jOvR6g7u7isWKIcYxfXyN44C50M68GFs1i
 Zb2xQaoBHWejW0fKa1XNmDeeHkWLT56wMuZtcsXcPL9YFw63yQMYzAjPA
 CT89jGQa1CvydowvNpNXLhU+jDPkQJBY5kaCcCfZBtHmTbQb23isa0OwC
 lPycKzyOfKjP8vGIrLrZ0ogNMLhe6AuAF0rROYUCSVZt3aypZ3HBsCepB
 PUx7SsGLjRqccBKCS5vUcII/NnPnHLydRV1XKEu2kIxo09sGrKIx1fWTo
 Rm8jUBHjwlhChGnm+IAUHbwLeCoPJFP2moMXCjIjVFJH8ebnftF+4dG4E
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Omb3suNS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igc: Fix HW RX timestamp when passed
 by ZC XDP
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

T24gVHVlc2RheSwgSmFudWFyeSAyOCwgMjAyNSA4OjI3IFBNLCBaZGVuZWsgQm91c2thIDx6ZGVu
ZWsuYm91c2thQHNpZW1lbnMuY29tPiB3cm90ZToNCj5GaXhlcyBIVyBSWCB0aW1lc3RhbXAgaW4g
dGhlIGZvbGxvd2luZyBzY2VuYXJpbzoNCj4tIEFGX1BBQ0tFVCBzb2NrZXQgd2l0aCBlbmFibGVk
IEhXIFJYIHRpbWVzdGFtcHMgaXMgY3JlYXRlZA0KPi0gQUZfWERQIHNvY2tldCB3aXRoIGVuYWJs
ZWQgemVybyBjb3B5IGlzIGNyZWF0ZWQNCj4tIGZyYW1lIGlzIGZvcndhcmRlZCB0byB0aGUgQlBG
IHByb2dyYW0sIHdoZXJlIHRoZSB0aW1lc3RhbXAgc2hvdWxkDQo+ICBzdGlsbCBiZSByZWFkYWJs
ZSAoZXh0cmFjdGVkIGJ5IGlnY194ZHBfcnhfdGltZXN0YW1wKCksIGtmdW5jDQo+ICBiZWhpbmQg
YnBmX3hkcF9tZXRhZGF0YV9yeF90aW1lc3RhbXAoKSkNCj4tIHRoZSBmcmFtZSBnb3QgWERQX1BB
U1MgZnJvbSBCUEYgcHJvZ3JhbSwgcmVkaXJlY3RpbmcgdG8gdGhlIHN0YWNrDQo+LSBBRl9QQUNL
RVQgc29ja2V0IHJlY2VpdmVzIHRoZSBmcmFtZSB3aXRoIEhXIFJYIHRpbWVzdGFtcA0KPg0KPk1v
dmVzIHRoZSBza2IgdGltZXN0YW1wIHNldHRpbmcgZnJvbSBpZ2NfZGlzcGF0Y2hfc2tiX3pjKCkg
dG8NCj5pZ2NfY29uc3RydWN0X3NrYl96YygpIHNvIHRoYXQgaWdjX2NvbnN0cnVjdF9za2JfemMo
KSBpcyBzaW1pbGFyIHRvDQo+aWdjX2NvbnN0cnVjdF9za2IoKS4NCj4NCj5UaGlzIGlzc3VlIGNh
biBhbHNvIGJlIHJlcHJvZHVjZWQgYnkgcnVubmluZzoNCj4gIyB0b29scy90ZXN0aW5nL3NlbGZ0
ZXN0cy9icGYveGRwX2h3X21ldGFkYXRhIGVucDFzMA0KPldoZW4gYSBmcmFtZSB3aXRoIHRoZSB3
cm9uZyBwb3J0IDkwOTIgKGluc3RlYWQgb2YgOTA5MSkgaXMgdXNlZDoNCj4gIyBlY2hvIC1uIHhk
cCB8IG5jIC11IC1xMSAxOTIuMTY4LjEwLjkgOTA5Mg0KPnRoZW4gdGhlIFJYIHRpbWVzdGFtcCBp
cyBtaXNzaW5nIGFuZCB4ZHBfaHdfbWV0YWRhdGEgcHJpbnRzOg0KPiBza2IgaHd0c3RhbXAgaXMg
bm90IGZvdW5kIQ0KPg0KPldpdGggdGhpcyBmaXggb3Igd2hlbiBjb3B5IG1vZGUgaXMgdXNlZDoN
Cj4gIyB0b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYveGRwX2h3X21ldGFkYXRhIC1jIGVucDFz
MA0KPnRoZW4gUlggdGltZXN0YW1wIGlzIGZvdW5kIGFuZCB4ZHBfaHdfbWV0YWRhdGEgcHJpbnRz
Og0KPiBmb3VuZCBza2IgaHd0c3RhbXAgPSAxNzM2NTA5OTM3Ljg1Mjc4NjEzMg0KPg0KPkZpeGVz
OiAwNjliMTQyZjU4MTkgKCJpZ2M6IEFkZCBzdXBwb3J0IGZvciBQVFAgLmdldGN5Y2xlc3g2NCgp
IikNCj5TaWduZWQtb2ZmLWJ5OiBaZGVuZWsgQm91c2thIDx6ZGVuZWsuYm91c2thQHNpZW1lbnMu
Y29tPg0KDQpUaGlzIHBhdGNoIExHVE0gYW5kIHRlc3RlZCB3b3JraW5nIG9uIG15IHNpZGUgd2l0
aCB4ZHBfaHdfbWV0YWRhdGENCnNlbGYtdGVzdCBhcHAgb24gWERQX1BBU1Mgc2NlbmFyaW8uDQpU
aGFua3MgZm9yIHRoZSBwYXRjaC4NCgkNClJldmlld2VkLWJ5OiBTb25nIFlvb25nIFNpYW5nIDx5
b29uZy5zaWFuZy5zb25nQGludGVsLmNvbT4NCg==
