Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A57BE5C2A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Oct 2025 01:03:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7C5F40722;
	Thu, 16 Oct 2025 23:03:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZM4IFd1-VrdM; Thu, 16 Oct 2025 23:03:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E3E5F4072E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760655816;
	bh=CT2Sz0FxjxvcYovqj3jUGTgYT6n7H9E7S5yLhKfomkA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=v86BrRpFmkMJ7By8ypcGXzaI1lfgqMdC8F+fkAKfEctWiwAOSegGgHUUzG/7MGBMM
	 e4NfHeMWRQv/x5m8iACl9VJRJaysrPrng0G/weNcHSRjEtBxf/Y6h9T3d5W/T+1AW3
	 UgHQNxld+FHfEy72Vgdo8VVgGmeKtoW0l+soj47TEl8V8q+upw9QO/G+SGIB6jfhmO
	 AHYNly89ORKz8piRzsqvZKgWVgTAPD2y6x7XElX+oGZ8way1ZMrLKispg/2GBrPCgv
	 SykaWOnBIhX9nOjR2QXUAIryVVpXI1Eg9WdGM7wlGvTbSw2FHI6wXurfg5AXEoVCc8
	 cxxC/naLfZ2DQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E3E5F4072E;
	Thu, 16 Oct 2025 23:03:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id F0EF1D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 23:03:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E1DCD4071F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 23:03:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ojletZe-Gr6L for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Oct 2025 23:03:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0BF80406F4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0BF80406F4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0BF80406F4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 23:03:32 +0000 (UTC)
X-CSE-ConnectionGUID: qdkk6gzfQImjV34O2+5lmQ==
X-CSE-MsgGUID: mkd7Wp/WTeKWrlG4KRKVxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="62073456"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="62073456"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 16:03:31 -0700
X-CSE-ConnectionGUID: C70zOJPpQTe66vug4oYDnQ==
X-CSE-MsgGUID: mFLCfBHXTHS7FqI1RPgLkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="182515802"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 16:03:31 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 16:03:30 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 16:03:30 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.30) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 16:03:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jFuyINHCIcPpiDgsKLO5vXfEsw1P0LdXdYJ/9hWiBckriLicK87q+OYMwEjQjcGv6VGo9d0Eq+A+6qNzorfrGDXwxuDDW0cJrrdUY1vrmgCQ4mEOuleC5zNaZUBPgxzYiW5HrfJDlJt3Y3IzDC1MAotMrbvWDoH7YWDdF1GJZ9oEybpSVhddqeAldJF2XCMIHmpJ6icMNfvmQ79BQ+kkhy/C7vksMP5bj9K57pObatLreacbWi2SHRZDsXvf+e8AcfXQlXhrSc5FbepDineO9kVLbwUZ9+xi8VtAxoZq6fTq8ETY1n8EEVM6PC2f/eMRGZT8lluOhOHtIQoNHZCfUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CT2Sz0FxjxvcYovqj3jUGTgYT6n7H9E7S5yLhKfomkA=;
 b=pUzEP3ow1DNY6tq6JOUOAZTPG/dOQj7pSMl2Itpqx6CzTzGipMOp5HI+LCYucWQeioqSgy9YbV6Gm++lKj01QqZ7RW2V5u170q0jsXqSxuGBP4sV7tUaqol0ehVzc6ALu917j8FDGtYYQozcXzsiVAuabQ7z+AgM2ag3ZdGCta4DozzS45BAOErKhWd2h3lYQtcHmPy7OCPCettJX9kGCQyv/L6XH7XZFIbvm/7I1agnt4xZhw95GS/PFegFqrUgdFCLy8x62vg0pOOUene+MlJJrFqM0my7vH4ys/eM7eR1TULEwPAqYQQG34A2zr2H5/9P6Cxw7OLz5LCMxUSIzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6502.namprd11.prod.outlook.com (2603:10b6:8:89::7) by
 CY8PR11MB7825.namprd11.prod.outlook.com (2603:10b6:930:71::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9228.12; Thu, 16 Oct 2025 23:03:28 +0000
Received: from DM4PR11MB6502.namprd11.prod.outlook.com
 ([fe80::21e4:2d98:c498:2d7a]) by DM4PR11MB6502.namprd11.prod.outlook.com
 ([fe80::21e4:2d98:c498:2d7a%2]) with mapi id 15.20.9228.011; Thu, 16 Oct 2025
 23:03:28 +0000
From: "Hay, Joshua A" <joshua.a.hay@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v8 3/9] idpf: move queue
 resources to idpf_q_vec_rsrc structure
Thread-Index: AQHcPaR5dRdB7x95AkyEl11gFm0XW7TFGqpw
Date: Thu, 16 Oct 2025 23:03:16 +0000
Deferred-Delivery: Thu, 16 Oct 2025 23:02:20 +0000
Message-ID: <DM4PR11MB650248B56B99080A2AEBFE0FD4E9A@DM4PR11MB6502.namprd11.prod.outlook.com>
References: <20251013231341.1139603-1-joshua.a.hay@intel.com>
 <20251013231341.1139603-4-joshua.a.hay@intel.com>
 <a49a045c-b01a-48d2-a02c-23540f799f8a@molgen.mpg.de>
In-Reply-To: <a49a045c-b01a-48d2-a02c-23540f799f8a@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6502:EE_|CY8PR11MB7825:EE_
x-ms-office365-filtering-correlation-id: c029f46a-a978-4469-932e-08de0d0837fb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?ck5SVmR5OU1yUDM4YkhQMlI0UEJkS3RnNFNFWWtJYnFDdlFZZWhaZ3c3R1VF?=
 =?utf-8?B?QUlKUWUxZXY2VnhheXd0SkFNQ0tDd1pUTzhFOUx2MEx1a3c1b0ZrNGo1YVlz?=
 =?utf-8?B?T0tvZU5uSXJjdHBZMDJ4YU45QzhuNkZpOGFqZDliVm1KeWRlZUg1aVFUMElU?=
 =?utf-8?B?eWE0eGIrb21HOTMyc3I1MDZFVit0QVg0bWJ6WHhoelRZZ0JmeDdyUXY2WkhJ?=
 =?utf-8?B?ek9ITUFPTkkrc2ZYc2NTSDhuMkxoajhKMG9sSDRBWWtRZFVSbjBreWI5QUg0?=
 =?utf-8?B?T1dUOXBvWXdacEJSWFJtM0hyUVBIWmo2NHplRE5UdkRIdVNlNzg4UW5kL3BM?=
 =?utf-8?B?dVJGcTRNaG1ta1dFU1Fjbk5Lb1htUXA4VkFYUDdQSzhrSThnTFAyUnRpYTRG?=
 =?utf-8?B?ZkdpNDF3Zjd3bzJNR0hTK2FQVUlDNlJaK1NUOXJHcFRIR290cDJ2Z0pISXF2?=
 =?utf-8?B?VXFqMlVvN00waWJqQWx5RE1EZGJ3SENoTzBJTC9ZUndJV2h6Y1ROUVBLL2JZ?=
 =?utf-8?B?c2lVRXBoOVJiMnF3TGsrajU0NzVaOHJwQkpqbng0NmZWUm1HYXlISllmeFJx?=
 =?utf-8?B?RFd4QjRFMjMxN2ZLeDBRa0NOT1ZlQWxXUHFkQVZndE16alo0OFN2MlJBS2JF?=
 =?utf-8?B?Q0VxK1BzQ3FCMjl1NC9Nc3dxdVkwSlJaRTd3d202ZDM4TGdYSjd1aTBMRndV?=
 =?utf-8?B?VmIrVU03enp0MG4ycGpvQy9JVHNYclhORUZrLy9CWVpNNnFMbEpBSnFwY0FI?=
 =?utf-8?B?L1lWc2ZjSUxDMkVhVVl0VS9RU3ZIb1dUTE52dzhnRlhOem8wdVZaM1ZObFZY?=
 =?utf-8?B?aHVKQzhKNlF0cGI0aU43cXVSTTVYOVhXOW5VbVEwVk1vU1FCZ1NFdUtLNlRJ?=
 =?utf-8?B?QlcwZlByMldYN2dGUDRFcWNDQ2Y0RDhiamRjaGdKNGg2MnhkaSt2MVJlQzkv?=
 =?utf-8?B?cnVQMDduU3N5Vk9Ra0NSNy9nNWFUQzRDbHJKaUUyNXVGZTlraEVQTTBYVzAw?=
 =?utf-8?B?YlVIdWUrNEVhb0FxOGRjMW92WFBRamlMREMybkhGOERISVhYQTlrYnhiOXFy?=
 =?utf-8?B?OEpjRFI0VHhOYTRRM0hiZEIvd2hJZ0RFT2JySlFlRXRaRDBQOTFqaHZJM0RZ?=
 =?utf-8?B?RjhWMldHOXByUnkzVnJKL281Um9Td0JhRytOdU5tWFdGazRCa3FrMkFIbUZK?=
 =?utf-8?B?S2FoZmw3b1pyaGk0U0VNWG1zczV2TlFaUlB0TTV4SkU4ajRoN0h6bDBTZXMr?=
 =?utf-8?B?ZGMxeG80K0VZdXk5dmt1MnBXTmdKUGwzY1pJL3RXaWZSeksrdHZrYnkyK2Fh?=
 =?utf-8?B?dHdMb0JKQjFsRENoZkR2L2FVVjFiS0RDUVNyVUhmV3VMOUJzZnJoTkRtT2JW?=
 =?utf-8?B?UXh4VGp6T3A5ZXBPbFMyVEM3M0gyQVFwM2duZkRVNmFMU0ttUUljTEU2ZW40?=
 =?utf-8?B?WE9RQ3preWFBVHhYOFdRUGhMK2ZFUlNtekpoUDkwRTZGQkRZRlhtTElxWlM5?=
 =?utf-8?B?eUt6Tml3SE1tWmZYRVA5ZndKNFYvcExPcEJleHB5K2xBYVUzdlBRaDNGT3RN?=
 =?utf-8?B?akFVTXk4RzJIRUk2bUg3VFNVckxMOVVzMWp4TlJNazAzU3p2YzJMd0ZOb2ZT?=
 =?utf-8?B?TFNld3RZWElRdGNrb2FFSDQxdXhlNTlFVEdnQm9RYVBZU1UzQ09UZEFsNHl6?=
 =?utf-8?B?TGJxU0JUOHpxY3pLWndPUEdJZDhmSWUvZ3VaeHlxMnBGeDdWMWZXYnVZSlpP?=
 =?utf-8?B?cFZiemNHWkg3dkk1SGN1akk2cFlqZ2RqWjhVbUpQN2hJNk81bDVGaGRQMDZM?=
 =?utf-8?B?U3l6Q2NPbytnUHRlODhCdXhyOW9Vd2pRTDBlbDNJOFdmbXNsejRRTUt6cWc1?=
 =?utf-8?B?ZDFBRUlyMG1ITzJMWTNMcDVNVmdsRVpYYUFqTVk0QXk4eXhiTVU0VHcyOHhh?=
 =?utf-8?B?ZUIvd3BmZGhYMmtHcUU0cVlYUTJ1RllNU0dERzNHajNJdXFXbFAxdFM1bCtW?=
 =?utf-8?B?UXNQWTBRT1NDQTFFTVpzc0tGNWZ6K3RKdW1lTDN3MkRHVlpLYVNnRDRTNlYz?=
 =?utf-8?Q?h6o+xC?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6502.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RnZGUnF3US9Xa0ZpbVJnSTRWaHNqdTVHNWdmNEppUk9tNWNLenIrb1pnT1VK?=
 =?utf-8?B?WnR1Z05uQkY1V3pidkxhQllHWnB4K1M0WmdWQlZrNGZpY2gxWXQ4MEdHazR0?=
 =?utf-8?B?aWcyUUlxV09tVDJ3ejhFUGNUR29rcTZ0NkRQQmg3dUVCTkk3WjlmelBmWCtL?=
 =?utf-8?B?ektzZHV5TlVkTHBuWGtTeHBxaFJVSGlQckU5eGpnSU40RVM0UnFKcVY1bUhF?=
 =?utf-8?B?T0twRlYwUTFnbUhXcTJIVnhiQ1dZakZUaEQvWCtaN1BpRTlEeFFQNHg3Ukps?=
 =?utf-8?B?NW1vQ2JlOWhjTFJnSXNLM3BGNVpXdWZWYjgrZngvL0pvV1dVSDNnNEpFazcx?=
 =?utf-8?B?M21kVk05ZHhTdGpML29GQXc4dTJtQ1RLZ2dyWGc5Yk4vVm1KRU1kUjRBUVRU?=
 =?utf-8?B?U3hQWmsxU3I0RlBiLzhCMk9BK05vM0x4bDg5S0NDM29MSUJuei9DMG5mZkcy?=
 =?utf-8?B?NUJuNTZoRlBLTytHSHczWUwzdktOY0tWWVhFWWpGQUFjWDQ4NktoQ1JOTi9O?=
 =?utf-8?B?RWY5bC96VmhGSjJmbFhNdTlZSkJnK2dQNkszWG9rQkgzTzNQcUNZQlN5Q25D?=
 =?utf-8?B?TGExSis0cHBoc0QwdGovVHM0SExZNlpjTGRXYjZ4aDZjZ21McDZ6TmxvVUEv?=
 =?utf-8?B?Z00wWGdRRHRiNi82WThKQnJ0TldNcitEOU45VTk1K3pyYWdZMmUzVERVOTdH?=
 =?utf-8?B?STRXaHQ1MDJKVWlsM01MMHNYaU15MTMzWmRRQUNzTXE1VEV3TXM5MFBrR0dE?=
 =?utf-8?B?THBFZ1NKVHhLdGhTZWdDWHlnR0pGZlZaN3lCbmhMWlFlcldRanBFbFByWXh6?=
 =?utf-8?B?bjd1QkpFVFFXZEtCUS83UTFaYkpOSzhMeGhSeFp4UXhhdUVWYkxuMUFEZ013?=
 =?utf-8?B?V2oyaWRjUjdBSk5YZnk0cVgxcERRMk5LdGVVanQvNDB1MkJFU3NiOERma0sz?=
 =?utf-8?B?RU9keUtnWWIvVXVQaFFOeG5rYXd0VExTaVZITm9nUlhIbSsrV3AwU2dNeFR4?=
 =?utf-8?B?UzhGRWFBeEtXb1RXZU50VlFsZmpaYWt6d2NBbDlqZ2s3OW85dTA1WGFQZHlY?=
 =?utf-8?B?YmUwWDJTMkdMMXgrUFpybVJEYnRGT0FETk05MDlBY0g1V2ZuOXdUY2tmRkdF?=
 =?utf-8?B?MnRQblZUd3ZqM2tucDJSekFuQTg4d1QrZStvdEVrS2dGNHJ1QXcxekU0QnN0?=
 =?utf-8?B?Uk5pU1JiWHI3eTZYZ2xFLzBlWDNOcVRCaHA0ZHVDY0d3bitaeE1jOVlpVkdr?=
 =?utf-8?B?TXFwZEFpbGYrUEVtckV0RVdoREg4bk4rUVRXWThTTXhOQTJmS0I3b0MrY21G?=
 =?utf-8?B?NUpPYS8wV0xsS1RRYkhXNjRSZ3Mwb1NLMU5keTVCL3ZneWZ4RWF2RU0rZTNR?=
 =?utf-8?B?dWVlQWZ5Ym9kTTRXSkpKdjJ3TzFUeTEvelJ5bnZ5alYyLzdBVEJhTU1DTnhG?=
 =?utf-8?B?NFNvdFNmT21hcmtLNVI5WC9Oc2xuMDg4NW5GamxsWnBEeDN6MFI3YUtkR3c5?=
 =?utf-8?B?QTYraXlDZDdpeGNrNTE4WXhvQ2JydXhMdSs1WE5aK3g1dHNTNlQzMTByZGtx?=
 =?utf-8?B?azJkMS9zVzRjZnIvajA4cVF0c2F5Tmd5alF6Sng1T0x6c0N5aEdweWJncjRi?=
 =?utf-8?B?OWd4Y1g3SGpOaHZRc2xDWDhrQmp2eE52c1F3M1RSYW4ycGxNWWkrMXV4ZGhh?=
 =?utf-8?B?YmJsSk9SQUtVRGpFbm84eW1oZDRDcXdISmZhbWdyMzJNVEhlUWt0MzczbTE1?=
 =?utf-8?B?L1JwUHdmSlVITkZjUzljWXY3UVMzcXpTK08xZnVDVXNubXYrdjN3NGxtcDAr?=
 =?utf-8?B?K0pET29qRURiSTg4QWZFa1RvaEk5aEQ4SEpVeG9XcC83dlBFdGM2ajFweXJO?=
 =?utf-8?B?QU1Gc2RzcVZPWlcxcHMrREJPOWJsSlRoVGNzV210ZGRNTmk3c1NBR3ZBMy9k?=
 =?utf-8?B?T1pLTXozYU9OYnBRdGNha2ZIb1hSYW95VjFwNFRiY3B0bTYzZFJ2MGJ1b1Iv?=
 =?utf-8?B?UElGZldSTG85SnYvQUxPUTdrTWNscmgxSVpjU2ZBM3dCcnBDTHhrSW9nQ3lw?=
 =?utf-8?B?S1V0Q1VGOHdkRXpoLzJBSVlrRE9xUS9NM1JKV3RRSHZHUFczOGdkV2hJUUYw?=
 =?utf-8?Q?2upcw6WK7yt1bm7RDej2EqCvh?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6502.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c029f46a-a978-4469-932e-08de0d0837fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2025 23:03:28.2839 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3Am2ScSCWnuNgOCb2XKYHi0kWHxjZuscaws26bU3kv8B4v3PpEoKZ8Fo8HYY+VAfqIPSe6YiXIoalWiev9v+/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7825
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760655813; x=1792191813;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CT2Sz0FxjxvcYovqj3jUGTgYT6n7H9E7S5yLhKfomkA=;
 b=LXrAVSZY17vqzWhfxj3Ur164fnxWnBKizNxb9gNocM5yVJnQ/JTDTcCe
 jRMIaZkQwYZcJ//qMW2smGfeXyeRsa14/HQpf3nkqeQkDsgRzPFiLE53D
 xu3fg4AsB+R0WMbjQAuDAuppIPcqMjVG2XLjnc9R//NM6HVNh8YougT1V
 RbffUec6UP8P5T+KmOrhbbVInBuTzZJCqe6JGOkBwqJFk63X21L7fdEHD
 9ItrRg2J4pegEu6eWdpP3boTdktb4bZjWDhwDamHfEojc2VLDl+vi2xGx
 TNL4q7PU11GnPipYWdA9GFDMmcs2tp+AgMT82a77f2Q37UIt3LHSddvgp
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LXrAVSZY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 3/9] idpf: move queue
 resources to idpf_q_vec_rsrc structure
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

PiBEZWFyIEpvc2h1YSwNCj4gDQo+IA0KPiBUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4NCj4gDQo+
IEFtIDE0LjEwLjI1IHVtIDAxOjEzIHNjaHJpZWIgSm9zaHVhIEhheToNCj4gPiBGcm9tOiBQYXZh
biBLdW1hciBMaW5nYSA8cGF2YW4ua3VtYXIubGluZ2FAaW50ZWwuY29tPg0KPiA+DQo+ID4gTW92
ZSBib3RoIFRYIGFuZCBSWCBxdWV1ZSByZXNvdXJjZXMgdG8gdGhlIG5ld2x5IGludHJvZHVjZWQN
Cj4gPiBpZHBmX3FfdmVjX3JzcmMgc3RydWN0dXJlLg0KPiANCj4gV2hhdCBpcyB0aGUgbW90aXZh
dGlvbiBmb3IgZG9pbmcgdGhpcz8NCg0KVGhlIG1haW4gbW90aXZhdGlvbiBpcyB0byBkZWNvdXBs
ZSB0aGUgcXVldWUgcmVzb3VyY2VzIGZyb20gdGhlIHZwb3J0IHN0cnVjdHVyZS4gVGhlIHByZXZp
b3VzIGltcGxlbWVudGF0aW9ucyBvZiB0aGUgY29uZmlnIHBhdGggZnVuY3Rpb25zIGFzc3VtZXMg
d2UncmUgb3BlcmF0aW5nIG9uIGFsbCB0aGUgcXVldWVzIGF0dGFjaGVkIHRvIGEgc3BlY2lmaWMg
dnBvcnQuIEJ5IG1vdmluZyB0aGUgcXVldWUgcmVzb3VyY2VzIGludG8gdGhpcyBxdWV1ZSByZXNv
dXJjZSBzcGVjaWZpYyBzdHJ1Y3QsIHdlIGNhbiBjb25maWd1cmUgYXJiaXRyYXJ5IHF1ZXVlIGdy
b3VwcywgYW5kIG1vcmUgaW1wb3J0YW50bHkgb25lcyB0aGF0IGFyZSBub3QgYXNzb2NpYXRlZCB0
byBhIHNwZWNpZmljIHZwb3J0IHN0cnVjdCwgZS5nLiBjb250cm9sIHF1ZXVlcy4gVGhpcyBpcyBj
cml0aWNhbCBmb3IgdXNlIGNhc2VzIHdoZXJlIGFkZGl0aW9uYWwgY29udHJvbCBxdWV1ZXMgYXJl
IG5lY2Vzc2FyeS4gVGhlIFBUUCBzZWNvbmRhcnkgbWFpbGJveCBpcyBvbmUgc3VjaCB1c2UgY2Fz
ZSwgd2hpY2ggaXMgbmVlZGVkIHRvIGltcHJvdmUgUFRQIGxhdGVuY3kuIFdpdGggdGhpcyBjaGFu
Z2UsIGFueSBhZGRpdGlvbmFsIGNvbnRyb2wgcXVldWVzIGNhbiBiZSBhbGxvY2F0ZWQsIGNvbmZp
Z3VyZWQsIGFuZCBlbmFibGVkLCB3aXRob3V0IGhhdmluZyB0byBhbGxvY2F0ZSBhIGR1bW15IHZw
b3J0IHN0cnVjdCBhc3NvY2lhdGVkIHdpdGggdGhvc2UgcXVldWVzLiANCg0KPiANCj4gDQo+ID4g
V2hpbGUgYXQgaXQsIGRlY2xhcmUgdGhlIGxvb3AgaXRlcmF0b3IgaW4gbG9vcCBhbmQgdXNlIHRo
ZSBjb3JyZWN0IHR5cGUuDQo+IA0KPiBQbGVhc2UgbWFrZSB0aGlzIGEgc2VwYXJhdGUgY29tbWl0
LCBhcyB0aGUgZGlmZiBpcyBhbHJlYWR5IGJpZyBlbm91Z2guDQoNClN1cmUsIHdpbGwgZG8uDQoN
ClRoYW5rcyENCkpvc2gNCg0KPiANCj4gDQo+IEtpbmQgcmVnYXJkcywNCj4gDQo+IFBhdWwNCj4g
DQo+IA0KPiA+IFJldmlld2VkLWJ5OiBBbnRvbiBOYWRlemhkaW4gPGFudG9uLm5hZGV6aGRpbkBp
bnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogUGF2YW4gS3VtYXIgTGluZ2EgPHBhdmFuLmt1
bWFyLmxpbmdhQGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3NodWEgSGF5IDxqb3No
dWEuYS5oYXlAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IHY4Og0KPiA+IC0gcmViYXNlIG9uIEFG
X1hEUCBzZXJpZXMNCj4gPiAtIHJlbW92ZSBkZXYgcGFyYW0gZnJvbSByeF9kZXNjX3JlbCBhbmQg
YWNjZXNzIHRocm91Z2ggcV92ZWN0b3INCj4gPiAtIGludHJvZHVjZSBwZXIgcXVldWUgUlNDIGZs
YWcgdG8gYXZvaWQgdnBvcnQgY2hlY2sNCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lkcGYvaWRwZi5oICAgICAgICB8ICA2OSArLS0NCj4gPiAgIC4uLi9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWRwZi9pZHBmX2V0aHRvb2wuYyAgICB8ICA5MSArKy0tDQo+ID4gICBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfbGliLmMgICAgfCAgNzEgKy0tDQo+ID4g
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfcHRwLmMgICAgfCAgMTcgKy0N
Cj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl90eHJ4LmMgICB8IDQ1
MSArKysrKysrKystLS0tLS0tLS0NCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lk
cGYvaWRwZl90eHJ4LmggICB8ICAyMSArLQ0KPiA+ICAgLi4uL25ldC9ldGhlcm5ldC9pbnRlbC9p
ZHBmL2lkcGZfdmlydGNobmwuYyAgIHwgMjU4ICsrKysrLS0tLS0NCj4gPiAgIC4uLi9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3ZpcnRjaG5sLmggICB8ICAxMiArLQ0KPiA+ICAgZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi94ZHAuYyAgICAgICAgIHwgIDM3ICstDQo+ID4gICBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL3hkcC5oICAgICAgICAgfCAgIDYgKy0NCj4g
PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYveHNrLmMgICAgICAgICB8ICAgNyAr
LQ0KPiA+ICAgMTEgZmlsZXMgY2hhbmdlZCwgNTYxIGluc2VydGlvbnMoKyksIDQ3OSBkZWxldGlv
bnMoLSkNCj4gDQo+IFvigKZdDQo=
