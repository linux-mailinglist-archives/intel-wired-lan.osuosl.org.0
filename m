Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F238B0D935
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jul 2025 14:17:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC60C6F560;
	Tue, 22 Jul 2025 12:17:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cgJTdBIXJRyj; Tue, 22 Jul 2025 12:17:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 198676F550
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753186647;
	bh=JQUpsjptVU60I8VgTqrrRxVMsCJseIgBdaz2BerRMbU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CpHeu8cqu9zkfIcVqySe462IZ+v+7+mIZOzHk6/XZJVhX6f2NDN3xXl6LrHRAr+un
	 TQJDYR8MXZhhIhbx2EWE5xpIGtM7w0Oj0rA1jg3rsEpu8/PUEJmReBR24pn+YhJEQy
	 vlIHh9HFaVBCjA3aNPKFaVWLItcDV+pJVjwbfIeTEl7e6GnTvyY2SWTCwhJu+mVEAY
	 olZxdm2Ft7+P6oGKwP4P2khCkYWAUWaF2v0v77QqhMQGzT9XMrYpt7e/l64T4zDOsF
	 ibC3a+uWDDV+vN8lZnSUY6wjTJo3chFtw/j6FUG7nGXTOD37kq9CSmpvjMXlcwUbNr
	 3quhb3QjJu2tg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 198676F550;
	Tue, 22 Jul 2025 12:17:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 53670127
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 12:17:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 44EA742A31
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 12:17:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AMz_5hnzyujY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jul 2025 12:17:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8FD9642A2F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8FD9642A2F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8FD9642A2F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 12:17:25 +0000 (UTC)
X-CSE-ConnectionGUID: bPc6foGyR8istVySMpgveA==
X-CSE-MsgGUID: 8e5UAsfNTX25x9275V2JNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="55389872"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="55389872"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 05:17:25 -0700
X-CSE-ConnectionGUID: 3aceb1kJRPS56s1O0IeiMg==
X-CSE-MsgGUID: PSwswIX4Q9a6wVrqZgucGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="164597401"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 05:17:24 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 05:17:23 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 22 Jul 2025 05:17:23 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.73)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 05:17:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WDpxn3YPmF6Y1P2zZWWarMikjV5n1o8zl6uPt19WDSjplvGSV0T2xEGyVyCDVh+7JVwGaDuHSujAswgjl/SIPgzMKREkZR8WF/vyxfVHHyBoB171BDUibJxdYjNi0tVn2EbrfFbU/0XjOtQBB+69bxSHAUsns2+REVRnNxzgr6ybzG2VkKyTN9+U0uKd1lUqybhRmIn9s1a0/JygBtkV2QVq5wA57NOc9TgXpriPp33C5bIYwJZydY0xZNP1/tj6fEMLLXpFeaBIWQCx7EZUjaApvWeTnu7HOjLcUZUXK/BVVWc7IWdrXBcY20o0hzbAjxGsq0xS/mfpRxWIq50GIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JQUpsjptVU60I8VgTqrrRxVMsCJseIgBdaz2BerRMbU=;
 b=idxfyb/Q/TQAt/mQv0Sh/onhsxMSJ28gVjuVRqWRXQbdxifU6LjVK8R56AItvUP1wX4KjD5achNoyQyCmaRtZ8YsoP/fGyk45MCktJzWfUUj9IfWnaUFXDjgLQSK5Sc8instO3WSEZzv+bljbXcUvvsDFvt83BsPSivfoMfFnpgrCFjkLqGbDS1b2TiSuYn8V/QUiySIWlTxIDo7Z+s7XHZ64t3NV6+vibcWmp6t4bRd36zoZqrxO09i23Ykei/KQdkJhBXxnB1PtXemG4nbitaCzUuPwfnsvoZrh+67+64IAJenATCZ1py+zaRbI446u8nPEhgPPb5AEVdtpAWG5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS0PR11MB7580.namprd11.prod.outlook.com (2603:10b6:8:148::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.28; Tue, 22 Jul
 2025 12:17:20 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.8922.037; Tue, 22 Jul 2025
 12:17:20 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "dawid.osuchowski@linux.intel.com"
 <dawid.osuchowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 04/15] ice: introduce
 ice_fwlog structure
Thread-Index: AQHb+vjL50dBRiqSZ0i0OYvG24s53rQ+Dw2A
Date: Tue, 22 Jul 2025 12:17:20 +0000
Message-ID: <IA3PR11MB8986DC3FA814C3C731FE0884E55CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
 <20250722104600.10141-5-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20250722104600.10141-5-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS0PR11MB7580:EE_
x-ms-office365-filtering-correlation-id: 619fb942-212b-43de-2ede-08ddc919b524
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?YRnMRXE64wjS6h1gaRiIEoXy/E50fgztyw9JHxnleiKV8n14XqBg6fZx/kdc?=
 =?us-ascii?Q?Tk/uUEi5TeJCmo7AhJbYWV3d8Fnn2Ll8B3wstmVRe0J98Gya8TRM4Qi9V6wA?=
 =?us-ascii?Q?4pBYwiyBUwVt56eNsa8LywPZy4g2bF9lUbuLyNm2im0yQa6+VOsYwJoYwI2w?=
 =?us-ascii?Q?6ANb+CENsaDQ4LBp02baSGEUjoN4Xz7RRRJL8FexmFYXKJZZQSOwV/egCKGC?=
 =?us-ascii?Q?zSixvoGgg+e/WXaIGGkgNSOAWvTbWfof9m7nIZF2NHvSpU2KTRuA4p5VfjSN?=
 =?us-ascii?Q?JvOOCX47UkZ0cZBmVZGQxgsuQtS/9QhD5AbjpjCUgRN5yVpoVUWgdkDm7F9y?=
 =?us-ascii?Q?KPohes2moBO6mtVpT2P1Mz9lPnfe5pR1BFunV6TN27bpjXgu2l2eKihXy3yH?=
 =?us-ascii?Q?4rta29CmSZNued5NeSHf7+KLlRH/Yc5/zhGFzQoCeAZ3IxiVwl1/b3tnSGeO?=
 =?us-ascii?Q?dl0c9KmfqdBNANaiDgCi123dCm7jMyTU7lnKy12sY9RoxAEF7D7Khrc19sLY?=
 =?us-ascii?Q?/ZCghEyGUIrqIvFOaAINl5Zh4x20OK0P0IMZ4LXJK+Zr4g9tz3WfppLrQFNF?=
 =?us-ascii?Q?/xa8ydNk9SNBGhjgxQaUTpRmV3pdHGEs5l6QkMs6YQYHawvmJPAWrxrvrrY7?=
 =?us-ascii?Q?hNXHtppmZZUoN/EFZqfYO4oRgQb9OGe8l5kuWQpNlzGJ+2sKzbXygi1VGy0d?=
 =?us-ascii?Q?+wveH3FXJtXhqfFOYAVS3zQKMm5kI3H+XHD5kDlQhvA/bCv85iqinWtOeBxs?=
 =?us-ascii?Q?0lvugFLsT2K7un/yH8elPJ5d+Z1W6pl3SoUYAJ3zftcSQoyVbxPjA3blbGpW?=
 =?us-ascii?Q?DYvaYBsCPek7pX2WVUw2KLqY6y0+0DW+4+QLU7lQqw1aD+YH729Ebkdl6dzM?=
 =?us-ascii?Q?fj5x2XQSIBMrEclOJosMV3c0QaDAjnW9pmvWbxnmYkhZo3Ek34XOpFOzjeA6?=
 =?us-ascii?Q?hna26xjaUI25dtMKB2z+Niw5mveJp60HHYkzUXXwmuy06zXWz82OykLvuQiX?=
 =?us-ascii?Q?yXdI6yEtp4HH028ic5na2hN95byiiUTvPVebNio1wwgDvy9BjaYByrwz4RD4?=
 =?us-ascii?Q?bnvz8SkiSJbGdjpt66mbLhlEKBr0poG4uvdkNIo3OescJTna6BLtpw2L0oYM?=
 =?us-ascii?Q?IUQ4Veosh6ifisZVMIJ+S0ppSdKYuadXGagp5pafKHW4N9nkZOxCE+scTtAI?=
 =?us-ascii?Q?/Sm4CAe4b8RW2kOJYeJmZX2SyaJeieAFaVWTQwZ34PDfUkXOGHM8dXgJMWRW?=
 =?us-ascii?Q?jnfpocHbexu1XrTiFIyAfSaWkx1Ruhdhf533ySQ/sHHBmSMSquFm6OKT3AYn?=
 =?us-ascii?Q?HC8YkiKQ2LGOlTfh1PE+okjLr0656JJ05jbDYyhOEDAeU7m+G4zm7zA7AVUD?=
 =?us-ascii?Q?A3bICojK8kMe7+Fxk7cA1LX+bTATRAmxl1/3IG3pAnR3MTk6XFPow4CqLaHb?=
 =?us-ascii?Q?W6/BkQjdqIipBopwsEQ38DTvjXBgDJRtkA18u1TMwWRr27+MM3pN4w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Nnix8Dz7HQGDyFH+8rhDfJp0PR+B8Ikqq1q1Yr6aPahlEGOPDWissdRQsfVJ?=
 =?us-ascii?Q?Ds06apI5Bo/9yZc7XKA5e81tn54YEw00dHhUmx4zwiC9GVe77psljhyJDMuH?=
 =?us-ascii?Q?MaNhuYfqC6q/h2SPqx5tFGBuis1Q/jF1ZLXtckNpaKF1JrkifO0j1+MGuZWc?=
 =?us-ascii?Q?kXyu7KXRdX1l3fPH5tiZKEQVDw5l2BewEI0O/diFNSDjX2poufRcWf1CaSCm?=
 =?us-ascii?Q?8tIquCfOCmzL+aJo9nlMheMVgxc2krrsriXEWRd0GectW5j7ra1glOPvu+Nh?=
 =?us-ascii?Q?lg0xu8ViKGYlFso7YLCV7gZ0JjkeQ2QgGLs0EMCGRfHCVojeahPQvFvebh1m?=
 =?us-ascii?Q?HC6AsDLMuM+6MmRtw8RewX+2/q7VTIRRo5Z4cYw+otz/mmowNcLHw2jZPfJj?=
 =?us-ascii?Q?8fVOdMzN9pD2S2/yJSZDPLTuX+fip2Rsp7tihybGh5XKyxcvKHA1/GvcMpyw?=
 =?us-ascii?Q?4if/T1EUVYNckiHxOphP4MJU8h5/T1+YUSxRvWcEJCXrbh3d3F9qP/n3sORw?=
 =?us-ascii?Q?/Q+OeYwX8UHqZlHexU/ybf2sLcJcr3svLAFSuln6SeCgWKNIK1FzWjLVGdJN?=
 =?us-ascii?Q?U5C5Wlcd7aIor5qK/rS9cHbJO76u/k4SUpb9Z/e4AFOhilHGb+pVrlHnyIEl?=
 =?us-ascii?Q?Z1p6V/vq3VBGA45539k/bU3bRovWHXuIpK97kqidNzwcefypjbaExog+A6eq?=
 =?us-ascii?Q?8p1hDfMVyncdaGsjhZkY2PkCVTqW6eB15xXdkbTyPR3zJyxtDMxBQA+s9nyK?=
 =?us-ascii?Q?MCoNcJ2jMpY/xs8JsyZys0dw7iXhMkIYfOGCls4eTgdJzEM6PDn2q5NxP6Lp?=
 =?us-ascii?Q?NM+Jz0AegjwPqwNGOii5dWqlYVTfp9oRpYIVjYwYvd6rAHLGCkCVYXlXHexI?=
 =?us-ascii?Q?YuYqpOYHzbgylUV2HQaMD3xEkx8S/AsgaH6puCRUwjqJ6fwgoht5Q6Hlyxw0?=
 =?us-ascii?Q?TYXtM3YUPjTUozcEJF/fA1BxRH1EP+YKL4gpv5+sfIpT9ENzvmtKp66D4S2W?=
 =?us-ascii?Q?ro7TXZDF2G6QFme10CLMz6Vga25VCY4DbDu1rb/u35wSpSJWh+VnWUcpY2yV?=
 =?us-ascii?Q?ux+M1HTLhprqestTrl7ToEHGvaK0gCqXIw6AyTS2bD1vGI6dHLQ1MRNIpV3O?=
 =?us-ascii?Q?cMG1gqFYjVuP/r1p8+4QSBYek0JODQ/eSeW+Tx9OcbvMHkIXI+2qVhEGaNqN?=
 =?us-ascii?Q?EfI61ZwgNJQfmLn3qkl79R4hPkEKepEzG01S2WhAv6USaaVzPEiaqJVQXz4u?=
 =?us-ascii?Q?CZmUwoYMqGZK9t2QreE7rgia2z1M/l75YjKrGPfKTuEX1/ZgRLLae6JUnwBl?=
 =?us-ascii?Q?58xXVNdI2883UKhyOR7Ry9zMW43+CvezdlO5lhrlj4APPVJPXAX/32lPgssF?=
 =?us-ascii?Q?XHzXUlMU28uCAjVltyMK6jrM8jrmz61XRyggkmoW92anLb6rUKSgwj8g7RO+?=
 =?us-ascii?Q?MkXa3asb0LfH6PLuc4Ahu4jOWPFb0VVoONXynqo5cPQeVM4xl+BbkPhaMpfD?=
 =?us-ascii?Q?sFndlAFGlOf7AindKAkYf14a7KwOM16p7T0dO85frCdH0nb7n9iUZByGn35B?=
 =?us-ascii?Q?uQvekoeRykXMkvbKk6GIeZYdFuHkP+YB+ws1LPCJ9lTzJZK0f3RGI2RZyyeY?=
 =?us-ascii?Q?Rg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 619fb942-212b-43de-2ede-08ddc919b524
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2025 12:17:20.6789 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DiCJSDg7aIIH51FVCuD4O1Twtt8CRVDFNvTdd0lF2B+SNyl1XsfE5d0dNQg9lW78RX/BQfsBIJUw/mvaY6zjdvZZ4cWHhu7L/fzApi3huQ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7580
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753186646; x=1784722646;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JQUpsjptVU60I8VgTqrrRxVMsCJseIgBdaz2BerRMbU=;
 b=UtqaQLXBlbopQ0+u8nDIX+D+w+rUd7LZE+RaqG2k4t3xvYxiog2FEDwk
 bP3evwhvN8FwKCJpLI8RO6zd/mqms2XUbSDDHyT0c9qwYbrr6H/kyDizR
 6U/QAka02dxq5wjfjjebf1QryLZSNiiQsK60mpgtKqB4Umtn4piMg9ttQ
 jGCb8vtmcfdT//5IN6gvvLVF5eWMSwEt/7QmFWoKWmZfZN3ecsxw+GAYb
 cGTf9kT+hGuwQfcQf/4xM1aT3IPvMFTF5U+7lw73xQ23YPv3IMvy4A+G1
 dh02KHIooIVRqoonaK6ocLoI0mM+0hxvK04xTsmrEtd4XpCLF5h1eSOL8
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UtqaQLXB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 04/15] ice: introduce
 ice_fwlog structure
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Michal Swiatkowski
> Sent: Tuesday, July 22, 2025 12:46 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; dawid.osuchowski@linux.intel.com;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Zaremba,
> Larysa <larysa.zaremba@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 04/15] ice: introduce
> ice_fwlog structure
>=20
> The new structure is needed to make the fwlog code a library. A goal
> is to drop ice_hw structure in all fwlog related functions calls.
>=20
> Pass a ice_fwlog pointer across fwlog functions and use it wherever it
> is possible.
>=20
> Still use &hw->fwlog in debugfs code as it needs changing the value
> being passed in priv. It will be done in one of the next patches.
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

