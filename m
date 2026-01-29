Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OHXYASg2e2mGCQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:27:52 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 30312AEA60
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:27:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 781DB6086F;
	Thu, 29 Jan 2026 10:27:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GRPjLmzHcx30; Thu, 29 Jan 2026 10:27:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E149C60872
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769682468;
	bh=hT54oonxxZVsB07IzRgS7umbZzjSEjkhDeGxSPQ1LEk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LRc8LwSwyBtlUuYrdaydRjXzIZz271nH22j0bsSIsMDvH6Oj2eryM8BYTJLNtp3WI
	 /Jx/V7ViCK6hiMTGWNfgutE8bzCO6/ZI1Gf6ZwzZRTnxERuG7OpC+1ygLfoMShVOWq
	 2q+jjUx5bxeUkt0reaISPjUQhgUNd4FjuKrIdnTcRVHbyQhHq/Lp2DPYLp8v0RJOnD
	 smzMV6PGoEBywjH0q40ZKC7Q/GgTcDTy0BEQvNJa7syde9OaUyZ+yYCRTHhbDT87bV
	 qPEEuEfjuXppOmHLaNYh0EpEX6M9d2yae6VGOnQTOomQ5ADZs1FptVS2GriA41HlzQ
	 HdX+JdY4/hqGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E149C60872;
	Thu, 29 Jan 2026 10:27:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id EAF3C118
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:27:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CEF3640437
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:27:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zoZb4FX3Di8r for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 10:27:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0EFA8400F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0EFA8400F1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0EFA8400F1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:27:45 +0000 (UTC)
X-CSE-ConnectionGUID: VzgurjJFQHS1UEZUnUHMoQ==
X-CSE-MsgGUID: MrZBqTVuSB6ZZBnU4qncZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="88330998"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="88330998"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:27:45 -0800
X-CSE-ConnectionGUID: 2pZjAcTlQZiYwYcPkvfB2Q==
X-CSE-MsgGUID: wYZX3GydT7mD/gXqOmAusQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="231461233"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:27:44 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:27:44 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 02:27:44 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.54) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:27:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lhcxUKxH0Yg4b/JuDIwJP/eLi7iGU38QU8sykxNbsQBMmHxrqd3IuzEtZg45YS/heesHV/Vg/FY8kEro0B9Xxd2rzsxfiIu2hK64FMeOeyH2NuDAMBfXqU26XCCS3vIMinhkDDb28JGT5aoFd2kFt/SvmFuRbUChvfqBFQfQ3FzS67ZQ8rhJiOx/4NTXYvd60x8Vkiaa/8UgcGiruzIqGeacKI9cTzBkL85teWn98PJLQzczMRgZ/C/bJopCKcL/EUbQ9GG4t5/vboHS+3amEtuwuDUuZFW2fBHK7oKBpejTCwV0i3VXr6lrD0MlOVHeSUfG/pJQfYFlLNUQqfQutg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hT54oonxxZVsB07IzRgS7umbZzjSEjkhDeGxSPQ1LEk=;
 b=kCOqLULcRH/NOyKHmCK5iqBhpQ7zEGQTDh2XlqhIuYjNvEZemSnc1e0dbTqtgOnhryMHfqJtNuVA/7MkUOOSn8J40eLi5Z7LzcDNZO0gAsJZ1vc0kxq6zLn5Mqksf0eopCQu2i5VdYaDcA1AZAKAGjzdkgaLIM/8Be7+T3xNwCe6N5Sf2gNb8tALJx/6KzDJXFQlh/V1lUSMpemfreo29UdqsR/Xk0SVKH64usZHRr3A5JkBW3wvYP97ltuQSaDMejhzquPDDhzan9ZJ0fTaAmDkpjaFWqvjIlDCCxh1omG72MNrU3lM3A1hMU4h7SN6WDbTJzZS/+Xt8hxAUJ6wBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ5PPF8225D2149.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83a) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.14; Thu, 29 Jan
 2026 10:27:42 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Thu, 29 Jan 2026
 10:27:42 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Randy Dunlap <rdunlap@infradead.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 06/30] docs: kdoc_parser: use
 NestedMatch to handle __attribute__ on functions
Thread-Index: AQHckPaVkkJW+aKwY0CSdtP/75hjw7Vo8dmQ
Date: Thu, 29 Jan 2026 10:27:42 +0000
Message-ID: <IA3PR11MB89860EE07AD64FD0E8568A37E59EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769673038.git.mchehab+huawei@kernel.org>
 <aeffb85481cd2ee13d68377d4bed03cff1e7b378.1769673038.git.mchehab+huawei@kernel.org>
In-Reply-To: <aeffb85481cd2ee13d68377d4bed03cff1e7b378.1769673038.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ5PPF8225D2149:EE_
x-ms-office365-filtering-correlation-id: 8a138b3c-7136-45bd-edf7-08de5f2108f8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?LzJ2T0xvT1J1d0gzNHlPalRpZ2p1RzdwdG5NOEtlLzdLL1U5c1JzaERuT0wv?=
 =?utf-8?B?dTlOVStRMDlXcm9GNkQ4MHliK1ZDSHhnOTI5RjRVVnJaTy8vcldLR2hDYXh4?=
 =?utf-8?B?UDVpZGxJdDVFOVlNS1ZzekxiQ2ZNbU1rNkFObFd6MVMxZlNLa1FlSVcwbHd2?=
 =?utf-8?B?Y2ZwSVg4eHZsZkw0b3c4ZnY0Tk5wWDVhbG9mY0N6RDFFVjJzRTVkT3AwZjlC?=
 =?utf-8?B?WXZtSHMxK3VzNi9MVXVRQ0lCaDRoTlNyaS9LWCtKMDhKcUFsSkdvN292THJl?=
 =?utf-8?B?WXlROGVwbXJPWW94OFQxTEtZS3dsYkFIL3VXMXNtQW1SVHhuVVI4Vmw1Nloy?=
 =?utf-8?B?VTQyL3VqWmpGYUFOUy9JNUEyZEZKU1B1d2lYWmhoOEw2cERETXEvbmErWm10?=
 =?utf-8?B?Ym5uQmIrU3Vpbk45TG9KYUF5ZVhKdjZpSVVSaWI4czFxNXd4cWM3SkNGUWVl?=
 =?utf-8?B?Vy8ydXlhYk1VQXpJYUFVNVZZbzhjVitWNDBrRmVRUndROHFjTHl4dEMvTWRM?=
 =?utf-8?B?QWR0NnE3aDBpUUdVaDUrZDEyQWIxTkQxa0wydlR2bXhaaFpCQTkyQUNwR1lB?=
 =?utf-8?B?dlhmVnd6WGNSclBYaXNOWWM4MEEzZmFHKzJDVStCVWI1aUlQMXJMRk95QlA0?=
 =?utf-8?B?WUNqVC9hUUcyOHpyK3FmK1dTcmlBakpyV3FlV0xzSTdUM2s0c3VlenMvUHIx?=
 =?utf-8?B?VDBZamVTQWhmbUwzYzlBQWI4K2tnR3R6dEdRRFhyMjdsY05CYVFYNU9QQkh2?=
 =?utf-8?B?NHJERWkrSzBSOVJLVU8xcHNSRkprYU9MY1NFMkJUbEh6R3l6K0V0MnRiaDV5?=
 =?utf-8?B?RjNZYzV6dDIzVTNmWDlIbzdHd0RFc2ErS1RHdHhlelduZjgzUHJhd1dpTGxn?=
 =?utf-8?B?TGZ1OUFqQThuaFk4SnBXTURYY3gvQk1VWGRPU0MrMmtZZk1XSUw3WU52dkJG?=
 =?utf-8?B?T2toNUplQzhTbEx0ZVdSWDAyVzh2aUN2NE9TbmppVENzNDlsUC9VZHhEYW9J?=
 =?utf-8?B?QlEvWGZreHZFeUFkYVdDZ2ZCUitEcjUra2VUYWp3WjhmdEZETENHMkErYzE0?=
 =?utf-8?B?ZUszbFp2QzJLMDVKRG1YUWJJSDViUHNJUkY3R0ZRcXFEN1hiMDh2TzNrVC81?=
 =?utf-8?B?eDB0VExHVnB4TXd6ck03bWJ0eGZUKzkreWFSRGJ0OU5Gakdjb3djY092dmk1?=
 =?utf-8?B?NDRCdmpkUm9LT1hwWGNzYmxHd1pvWnpTUDE0bkNjTWdmckdtOWlieUVJcHhF?=
 =?utf-8?B?dmR5NThFNTFHSHZpcW5sVFVQTjU5aDE3RHJGV0c4K2cwRGlEYUpkRk1TUmts?=
 =?utf-8?B?NERLVGU3SG9tWnk1LzM2WkxVckFVKytjU3VSRVd5Q3MyaDBzUUhibDVGUEdy?=
 =?utf-8?B?MUsxNUtFZVhQS2todzJyTy9RT3NhRUtzWDZlMHQ1U3pDT0htUW9laCtFMFBL?=
 =?utf-8?B?czZ2SFNKNzN0YmY5MzRiKzFHK0pGeTR5NURNajJsTFRyb3lMbDBYb29BQjFF?=
 =?utf-8?B?bEFCUVFmZDRGSXJSb1JzejQ4TEZGaVQ2YWlmY3VoOWZpZE02S25PdC9RdGE1?=
 =?utf-8?B?YU1FU2hMd2lIYVJZUHd0S0hwaGhpcDFwYWt3UVNsYjI2alJ4cDNRNXFDS2lu?=
 =?utf-8?B?NTV1THBOTzM4TFlScVNwUnJOS3hUdEtiT2xZRmZ4anozRXBJQmVQdU00ZGZJ?=
 =?utf-8?B?MkZld3RNYTNhOVQreVlQV0pLQjZBYWREdStCay9NVnJNMFJocU1wRnFoL0RZ?=
 =?utf-8?B?MTRvQy9lbGtRKzFVNmJDT2E1NXJTbVdXNG1qbHU5K3phVll6OE5EekNLa3h3?=
 =?utf-8?B?Q1ZCNHV0Qm55RzhuWHpIV0ZMcDByelhYaDZlYUdKdnVqSTdjQ3hXdGFZYVdN?=
 =?utf-8?B?ak9xNEFsUkhzdzYrcjdUN3ZVRDIySmJxaFdXVllmbHU5a3lmSlJuV3VpRDdn?=
 =?utf-8?B?U2xmZklGaXdaTlBYNlYzTnl3VitObHY2WmR1bFRtMVJtMUpmL2YzcDlEOGgw?=
 =?utf-8?B?NG41NTRLMUNRWUxuSVpaclJKdUttMTErRC9PVlJ1SEFsRXhyQ2ptTDQ4b2ph?=
 =?utf-8?B?UFVvVDllQ0IrNWJST29QOGVaR3c0QW9OR2NRYkg4OUZubkJobEJ3V2p0bFM2?=
 =?utf-8?B?QSswa1hHcEVUL2tnbUgvNmJ0R1FSK091Q1hCa0h3L1EyKzIvSFRteWZPMXAy?=
 =?utf-8?Q?6MhjS6wDnOv0GkIGpk+wkXA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dUFjcnpHMTZGR21XSE5PV1dJOUVvVENxWXpvc2FjbkxqQThQVjBZcUltLzAv?=
 =?utf-8?B?Y3J2UDRqNXBmNmRRNHdtRCtnTVJWU2U5b0RYQTlSTjdtWUxBbStGZC8xKzRw?=
 =?utf-8?B?T2Y4TFRJa0VSbGF2aEUvdW5MWkZ2dFFoVlJBZzh2SUh4ZzNKQ3NjenZDaTZM?=
 =?utf-8?B?R2hLRDVwVjhqOHJlMXNQMEVRb0FZcWFBYS83N1RXb3REZ2g5b1JjU0FpYlBt?=
 =?utf-8?B?ejdBREpiVllPWkM0NnlrWHJiVUR6UEFHL0RmN2Y3NCt0Vk40QlI3SGNzdVFS?=
 =?utf-8?B?b0h6WElZV1Z6WjI0cFJGYkVMaWxvS25rZ01hbDZTNlY2Nk5jQzQ0S09WWm03?=
 =?utf-8?B?cU5zRFRUVFBFWExrSHhNV0x5bjhVellUaEJFMW1Hd25TTVpyR0RnYXhmTGhv?=
 =?utf-8?B?WlE4N0VsdmxOeS9HWXUzSTBYU2IyY0QwU2h2VHkzRmMzU1pjcEgySHJQK1U2?=
 =?utf-8?B?VldVWXl2dGZ4OWdTblE4VDhaTW9Jb0gxeDhtQU9CWFBHQWFyb0ZsZmYyR05E?=
 =?utf-8?B?a2s3dWRsTm5jTjNBWU9mN0ZHdFJDdHBIZkFEK3FRbllWbTFSMTZSTUlPL3d6?=
 =?utf-8?B?T2p1OWNaR2lmR3VBaWF1bFVUdThhMFY3SU8xak1UVmZJTGsydTJrT2JIR3Uz?=
 =?utf-8?B?T1RETkJkaHV3ZU4wWSsyOGpzRUg3V0NYWmZGeHUrQnpJRjU4TnllQUhneHVa?=
 =?utf-8?B?SjlCNlFDNjc2SXE3ZWhCUGhJYzRXOGN3UllxTmJFaXFWeGFRZUNJY2VBcmE1?=
 =?utf-8?B?dXJmbllUWFQ5Wm02VUhQa0o3VUNFQ1ZRbTZUbG9XRkdlTlNwa0hINXI3QjF4?=
 =?utf-8?B?MUQzTmR3azZBQThrUHJQNHlRRWJqMkZiYUJHMG5jU3ZidHFNYjlzZFVvMFdS?=
 =?utf-8?B?ODhvQytod3FrejE0cTNKR1F5UFlPWEZGYUJtbnA3ZUtQSndVQmI4Tml2dmND?=
 =?utf-8?B?bXhnNmp0L2N6SDZOVkVQY3liTVJUcVhqbWpCMEdpbnMyeWxzZHZmUENMNzlY?=
 =?utf-8?B?OGt5UHNxbWxWYU5NN2RJUEZReDBOKzdjMVBYdkptSktKL004eU1aYkVVU1Nt?=
 =?utf-8?B?aVNucGRobXBCdzIva0lYcFNlOXA0TW5weGg4MGJENDZyWTJybWNYRHdhYktv?=
 =?utf-8?B?b053L3VidklYem5FN05obVcwbnlpbWZ2WU1tanpJN0hZK0pZNDJNOVY5ZU1F?=
 =?utf-8?B?VEJxeGJkTE5hV2JPOUE5Yjljb3l3VEZpeDVxYmhVclg4TVVPalFOMFFjYkVq?=
 =?utf-8?B?RktGajNEQmVFNE5oempMTWNDVzB2SHZZNy9Kd3c2NzNMdHBqT2Nyck5kWmsr?=
 =?utf-8?B?SnY5ZDVRZWxGc1JtYjdWOXFDVjFpRzh5YnVzU2VzZzVHbENabkVDb3kwTnZk?=
 =?utf-8?B?V3JIazJaYzV5U1FRd2pwSEJRVnhnSXNsTVAxNHY2Nkl6SlpLZlVjOEJkNzM2?=
 =?utf-8?B?dEoyS1dMa0V3d2d6V0NTMWROOWxac241UTd6YjhmZzUxOGpJSUh1dURXVldG?=
 =?utf-8?B?N25nQjhCV21hUHFmS0pYQjBJa1dDSTA5ZHdEdEIvalNDSWhPTzBQd1lDNHhz?=
 =?utf-8?B?ZnpWY3FiaWYrY3N5aU9Qd3IxVVZwUldEanYxRWp3R3Y2RTdvTWZMN0hxZDdx?=
 =?utf-8?B?WHZXbndPSkxOU1MvTndPS2pMclowMW5maEZKRFNUTUtsM3V6bjRjMXMyOWds?=
 =?utf-8?B?NFhmaW0rRE9NMXlmLzQ3eU9NRVExcmtIa3BVN3JwUkIxc054ZDNOYUhPR3Nh?=
 =?utf-8?B?NXJVSkJmVnJVY25lWnY3NmZ6Rk9QSmkvL3YyWkdYUEJaMlpwVVZRa216dC9w?=
 =?utf-8?B?YmtQMENtRGxjc25OU3FRRHdScm9CbWloOVQzTnpoQzA1cys0dzFTYWpiMlRn?=
 =?utf-8?B?KytrVlV3eGpsWFoycThoZUgvL3JkWUhnaE5RWnJsT3RkeUNMeXo5RitoZXNx?=
 =?utf-8?B?b1c1QU03VlZkVzNlUXJCdzJmbktzNEVPRENTWFZNZ3pZVCtpYmhpbkZGblFW?=
 =?utf-8?B?K010eGJHekY5bmJWR2hhL0dZOStCRitzYXFYdlpwOUxPSjJrZEQ4SlFtRG1E?=
 =?utf-8?B?Y0FWZXVsSEFKalQvL1hrRnAyZXdocm1peEw2Z1ROKzJLWXpRaTAvVTNGelZU?=
 =?utf-8?B?dms3R2hDdFFNWnpIUVh0Yk1NVkVyRXhFZ0VVOHhibGl0cHBPR1dNZmxmUXBO?=
 =?utf-8?B?SnpXUFRTM044NlUycVY1VC95am81L2VJeWFTTDF1eU0yWnVFNXdNQk52Q0pD?=
 =?utf-8?B?bkhReW5MMTl6aWVJY0J2UHZicTRKbHZHNUpaOGUvNnFlWkFLNWxQNTFiZitu?=
 =?utf-8?B?ZXVsNVN5RUc0SnNYRmFOL3NrU29UT1FSenR1V2F2dUptYmVRZzlGVHFNSjV4?=
 =?utf-8?Q?3w38/CLtOGKDg4KU=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a138b3c-7136-45bd-edf7-08de5f2108f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2026 10:27:42.2239 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6om6uqxG+NcfkjIejOf+9C8az9VKwCI93IAcYQZ4OFB+Zp3pc9jTDzOzEcjc3zaSKdvKg0nHQn/uHLc5tYZmTPLht5DbWTNeoSrQvcOOHjQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF8225D2149
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769682466; x=1801218466;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hT54oonxxZVsB07IzRgS7umbZzjSEjkhDeGxSPQ1LEk=;
 b=UnzanA+N1/YZCFrA9+WtGWkl0Q+fG9DPWdaTiYpn6SFkpsCtnNMpN9OL
 cJSApqLuJz2KsRBqLXsfbe4Xpjumi1TXzQRmMo1+KnRCZVCmqBvudadHi
 H0sLCVklhxrp2n2oaN1TbJlnBHAd17PnoAx+XaMRcIb6HhxBd7FSRh2He
 jAlbOhx9wSE9Xt7G2HUE4pJrGeI9Rp7vakXdm+4KfEqDtEjTuBFc72otn
 lmtOhYQ+cE4QKEnjLqp2poByNuYW3VoK00LlRRkbQrYxlOJi3Mc1jMqU9
 GRgVcna9oInnG6gKDcBO7rUqHsr9otxP2BvVq/ZcJji5BPQuiXemBdCzE
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UnzanA+N
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 06/30] docs: kdoc_parser: use
 NestedMatch to handle __attribute__ on functions
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
X-Spamd-Result: default: False [2.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:mchehab@kernel.org,m:rdunlap@infradead.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,intel.com:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,lwn.net:email,infradead.org:email]
X-Rspamd-Queue-Id: 30312AEA60
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFRodXJzZGF5LCBKYW51YXJ5IDI5LCAyMDI2IDk6
MDggQU0NCj4gVG86IEpvbmF0aGFuIENvcmJldCA8Y29yYmV0QGx3bi5uZXQ+OyBMaW51eCBEb2Mg
TWFpbGluZyBMaXN0IDxsaW51eC0NCj4gZG9jQHZnZXIua2VybmVsLm9yZz4NCj4gQ2M6IE1hdXJv
IENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYitodWF3ZWlAa2VybmVsLm9yZz47DQo+IGJwZkB2Z2Vy
Lmtlcm5lbC5vcmc7IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBsaW51eC0NCj4g
aGFyZGVuaW5nQHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsN
Cj4gbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFi
QGtlcm5lbC5vcmc+Ow0KPiBSYW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4NCj4g
U3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIHYzIDA2LzMwXSBkb2NzOiBrZG9jX3Bh
cnNlcjogdXNlDQo+IE5lc3RlZE1hdGNoIHRvIGhhbmRsZSBfX2F0dHJpYnV0ZV9fIG9uIGZ1bmN0
aW9ucw0KPiANCj4gU29tZSBhbm5vdGF0aW9ucyBtYWNyb3MgbWF5IGhhdmUgbmVzdGVkIHBhcmVu
dGhlc2lzLCBjYXVzaW5nIG5vcm1hbA0KPiByZWdleCBwYXJzaW5nIHRvIGZhaWwuIFRoZSBfX2F0
dHJpYnV0ZV9fIHJlZ2V4IGlzIGN1cnJlbnRseSB2ZXJ5DQo+IGNvbXBsZXggdG8gdHJ5IHRvIGF2
b2lkIHRoYXQsIGJ1dCBpdCBkb2Vzbid0IGNhdGNoIGFsbCBjYXNlcy4NCj4gDQo+IEVuc3VyZSB0
aGF0IHRoZSBwYXJlbnRoZXNpcyB3aWxsIGJlIHByb3Blcmx5IGhhbmRsZWQgYnkgdXNpbmcgdGhl
DQo+IE5lc3RlZE1hdGNoKCkgbG9naWMuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBNYXVybyBDYXJ2
YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+DQo+IEFja2VkLWJ5OiBSYW5k
eSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4NCj4gVGVzdGVkLWJ5OiBSYW5keSBEdW5s
YXAgPHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4NCj4gLS0tDQo+ICB0b29scy9saWIvcHl0aG9uL2tk
b2Mva2RvY19wYXJzZXIucHkgfCAyICstDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS90b29scy9saWIvcHl0aG9uL2tk
b2Mva2RvY19wYXJzZXIucHkNCj4gYi90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19wYXJzZXIu
cHkNCj4gaW5kZXggYWU1YjJlZjgwZjc1Li42NDE2NWQ4ZGY4NGUgMTAwNjQ0DQo+IC0tLSBhL3Rv
b2xzL2xpYi9weXRob24va2RvYy9rZG9jX3BhcnNlci5weQ0KPiArKysgYi90b29scy9saWIvcHl0
aG9uL2tkb2Mva2RvY19wYXJzZXIucHkNCj4gQEAgLTE2NSw2ICsxNjUsNyBAQCBzdHJ1Y3RfbmVz
dGVkX3ByZWZpeGVzID0gWyAgIyB0aGUgc3RhcnQgZGVsaW1pdGVyLg0KPiAgIw0KPiAgZnVuY3Rp
b25fbmVzdGVkX3ByZWZpeGVzID0gWw0KPiArICAgIChyZS5jb21waWxlKHIiX19hdHRyaWJ1dGVf
X1xzKlwoIiksICIiKSwNCj4gIF0NCj4gDQo+ICAjDQo+IEBAIC0xOTUsNyArMTk2LDYgQEAgZnVu
Y3Rpb25feGZvcm1zID0gWw0KPiAgICAgIChLZXJuUmUociJfX2RpYWdub3NlX2FzXHMqXChccypc
UytccyooPzosXHMqXGQrXHMqKSpcKSArIiksICIiKSwNCj4gICAgICAoS2VyblJlKHIiREVDTF9C
VUNLRVRfUEFSQU1TXHMqXChccyooXFMrKVxzKixccyooXFMrKVxzKlwpIiksDQo+IHIiXDEsIFwy
IiksDQo+ICAgICAgKEtlcm5SZShyIl9fYXR0cmlidXRlX2NvbnN0X18gKyIpLCAiIiksDQo+IC0N
Cj4gKEtlcm5SZShyIl9fYXR0cmlidXRlX19ccypcKFwoKD86W1x3XHNdKyg/OlwoW14pXSpcKSk/
XHMqLD8pK1wpXClccysiKQ0KPiAsICIiKSwNCj4gIF0NCj4gDQo+ICAjDQo+IC0tDQo+IDIuNTIu
MA0KDQpSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25v
dkBpbnRlbC5jb20+DQo=
