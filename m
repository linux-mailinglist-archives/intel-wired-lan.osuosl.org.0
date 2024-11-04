Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 015E89BB84F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 15:56:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B6564014F;
	Mon,  4 Nov 2024 14:56:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fLM_pTUunjrM; Mon,  4 Nov 2024 14:56:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 04AFB40135
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730732191;
	bh=YTqK7gmDUjPyS+6eWvoKYCAIkTIMa1t0BCu2uUGRunI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2xIK1uJok67DGMDEH/SVkMMzHv+W8rnD/9dpN+JePh7skowi2OmKi51Mq3nXg4dzw
	 grUNDNTtge+qgqsItqZsNHUVrH+Yo4hkP3zaBSrdNYW49DF49vDvRoWyKJ0kXvnvCi
	 z8i71Buhuyrhr/WcHzODrnGuM1ruhAbafFa5UlSwuhN4ADlp4jRoDEiEZzDI4BeYXe
	 AwO9WQVfbJgKlpUueGCLipYbgLS52WO9GHCF5FZpY+Rk3q1IOVzhzTUKmGH94oQ74W
	 NEFizLOmGH6hEgdu/tdL616zDaPVn6C8fk70DlXLm7ftpd7JvIoTFl6vDhp9leRlsm
	 +EqFlneFWLSSQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 04AFB40135;
	Mon,  4 Nov 2024 14:56:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id BAFC1B8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 14:56:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 641354005C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 14:56:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a-U8DjAAjVjx for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 14:56:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1A96E404D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A96E404D2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1A96E404D2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 14:56:26 +0000 (UTC)
X-CSE-ConnectionGUID: SVdTWxkLT9KxVul6aYMevw==
X-CSE-MsgGUID: nHndKm/dQmaowOCYNZcshg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30378109"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30378109"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 06:56:26 -0800
X-CSE-ConnectionGUID: m6qzcaHvRyWZ1H1VCtE1Bg==
X-CSE-MsgGUID: kyhmRtdmSjO/14Qu99K4rA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="114482097"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 06:56:25 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 06:56:25 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 06:56:25 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 06:56:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LUJilxFnqLfe6uzsUFIqsjAuHwLryZQsRSuS9RxVmq0+hXZfjZQ3GCjcSaRhNSBLHosJh1Btw17wXrqo7ClpTEhIVarENcbQBh029o90O/Aezb4AHJIZ9Omk1Heii4PtYlEmOrHEoQArMIFVocO0o8+hpC/YR0Gd7Hxuy2Oy+sLVvbb/S5eoZe6RXs/jyCkkpWlSltRUyHtbcZ6o4MT2QPgw2fFx+8Qy8+6jOcorr/zVaXIUvsm9H9ZtOp7LXzR7IK+2nfbPiWuXtiSq6YitFrYouEXVxE3j3/LmOqU27gyVG125Y71rSHEOWGF+0A9cjPZmzw/oHctPzdLL0f6jwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YTqK7gmDUjPyS+6eWvoKYCAIkTIMa1t0BCu2uUGRunI=;
 b=KgbzlXgfLmGlNf9LiGXOlg81uK8zDXS68Qxgy+cEisQVc8i/nZ0WwjiuBjtqcpNewDaQ+mbhjVu599yJjE+sDrEzt0Vl8fEYzs1aybAlchNcfJjfdiL3jWEFNDGVFZatEzli9j70tin0tTPWw9tW68nXUgJcban802uqvjEh/okKM9w70UaIJrFwpD99NwICS1yA+x80qjHjusNcZ0OVzIutjGp3q4FLnvvP9Sz7oBPhWEKoGeffWy1VMlbrP2Spi8gWaeYsIhrly9sEBz+ufSliZ/dPitxYyAqAInC0Ea7O2KDfgrXvgMzRmPfAG2F6KWD9JNaW+ByvlqMqFp64+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by PH7PR11MB7004.namprd11.prod.outlook.com (2603:10b6:510:20b::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Mon, 4 Nov
 2024 14:56:22 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b%4]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 14:56:22 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>
Thread-Topic: [PATCH v3 iwl-net 2/4] ice: Fix quad registers read on E825
Thread-Index: AQHbLTln6479DBd9P0SDv30WSDU03LKnOENQ
Date: Mon, 4 Nov 2024 14:56:22 +0000
Message-ID: <IA1PR11MB621956F4A8D8A33D5B33B04592512@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20241028204543.606371-1-grzegorz.nitka@intel.com>
 <20241028204543.606371-3-grzegorz.nitka@intel.com>
 <20241102151033.GP1838431@kernel.org>
In-Reply-To: <20241102151033.GP1838431@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|PH7PR11MB7004:EE_
x-ms-office365-filtering-correlation-id: 82437dab-8ab3-43cc-37e1-08dcfce0d8e6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?4ZHie8o7kCPgOB+2tLSI2+IlpaCy3kV+a7C0LBGVBX0Xg+nTA4vvn6ep32HB?=
 =?us-ascii?Q?ecHMHPvscLdpn+dh7P612c8veV9c6MF/4F2Y2NAevZzYiYMWRiwKi/2Vm4KF?=
 =?us-ascii?Q?tewWsPyULDrZQBAsVhR246Q3DiNsMct8wzfcB/DTkbwoejisNasvclg+1f8L?=
 =?us-ascii?Q?VwJX0VaLszi/emJhzKylTUq7Hyn+y1UFutalBZAKL0NZLodnqWuQy/ma1B+h?=
 =?us-ascii?Q?6rM2ik1Kmox6fwbJIqScv9yf4yRwJ7GEEca8y6AJQAfxolnFl4IuLTUcUj9d?=
 =?us-ascii?Q?g7ra6i0D6QheMdithFzDj5y2CcS+AzZ8VgyKd4DC0CNrasH/XqtA12VgSjQQ?=
 =?us-ascii?Q?qLqv1xKoj/FEYFzdPF3UuAM/r+3jRNtgjgVfw3Pa3Q23HWVBpi5mXVXW0I9U?=
 =?us-ascii?Q?STtzfBMmjyMtAUKTcLg7QNksP8PSD0DtDanwnWLbFjV+fvvgH7+E71IQRW7V?=
 =?us-ascii?Q?u3qnSgaF5fgFCoN+2yzgCbY1knjyAM1urlY4h0OK1/RqCb+9B12pP8Sx6dVJ?=
 =?us-ascii?Q?jKscszcbInO0I7meUxQ34XTEHbzZfrLwDq07eyJxImGCugyQbohOn6KV3fZW?=
 =?us-ascii?Q?1bzF2D8AiJL1P67wZSf1Ai6dF9aXx6pmfIHtLYZVybOx7X/It4XtdghGBl1G?=
 =?us-ascii?Q?++IPoYNcy19/udV5hGktFRExxtZM+eXLC5DG64M/lppR/gHfgDmo5KGY2u21?=
 =?us-ascii?Q?VvC7urep/ZpUxSTMXc3umR9ot1rYG2y8vfb189mb1agvNHdQXIt8x7WLt2GR?=
 =?us-ascii?Q?vlprh7d5TJCc9wsU60zad8I5y3HiOPDRRHdz+nKAb4UVzbp4vYgAivEQz885?=
 =?us-ascii?Q?md8pTcZ5Wrnsu92kiLOUZGxryHYt4MsGGdtErh45Talw4D96UaNCOE5ORlUR?=
 =?us-ascii?Q?z4Ltu5CClpCl8VrJ6dj+PfGIaixXiECeFSBYHyoLrS+XKnk/pFBrPeqHT8Ew?=
 =?us-ascii?Q?PsFFAEpRHLv4IDb8o5nROWJdSQ6FhXmahAip2VEzK4H6k/6aJn6xk3D0lHu2?=
 =?us-ascii?Q?tqzhhD/E34fsNaJ2kVUQkHAO42rz5VjNzyeWldwB7VqfWp9QOIy0n7GXxVCZ?=
 =?us-ascii?Q?9ovIBP6xKeFvnnhxlT2sg3v9jvTC0JuK6E6JqScCVLkIGmrCoYeest15fEOp?=
 =?us-ascii?Q?76MUGxjPt4W9p5vXlPpwuCs5WPiUeqfyVQtL2lk4ilGaUjFTmOQCXDZwmtGW?=
 =?us-ascii?Q?vAPp4E+Nu9vpJq0B5EFkxcoL5R74+HaVdxfUYnTHbVgj3tiOoGbauHiYnbxP?=
 =?us-ascii?Q?cGCrFdKPf9JyMyZ3y6zUjv33jBr0WUM2evZ1lT7HttoT0nfOU72Jbea1m4gt?=
 =?us-ascii?Q?VXyAaV29QNzxWjcXpqMXJyRFfgq0ecGD+lV+ka5KL6zFcWn6OpnI2t41HsZO?=
 =?us-ascii?Q?rGh81uo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?91VVjWmbwLLPQ+aXYR6qE57PoiV4q0Y7AzDgLu4WAREof66JOLyZiYKgpC3T?=
 =?us-ascii?Q?lql41fd8KvfVAire0Fa4u5AnBU3uchi1AP9XY9aHyCaEcEPXUIEYc1KBzkce?=
 =?us-ascii?Q?uhmYM89m5shjxGb4gMxDISPq06R6rTzOwF18NbwjvFaYjWLCe0J26RH9605o?=
 =?us-ascii?Q?Lb+ft9uEPGWTRLVx2O0oU7wsTopbMxalYuaOozaeFj76dvtIjJuYwIJRxR1g?=
 =?us-ascii?Q?R/Y2C5jA6NaMk2yFRokRRMeCtoI4Ri/fR6kPX0fJgFMS57V7yBJnZz4ewyAo?=
 =?us-ascii?Q?pTeod9BIG4ea2DeFXxJvt6q+l7s2QgJNksnwtVyFq7gdM4nu5zBVQJXxUVRx?=
 =?us-ascii?Q?g3QYg+5BHAgJP9AT64SFgRIQ4bwU3UTA6hEYuxgmc1PymoLYlzntUAG9qs4H?=
 =?us-ascii?Q?Gw/ypB7L7rgl1t6Zxh1/3KvpsARVFjALj/uIQr8iwySQCAHRYqkSOWgpqumo?=
 =?us-ascii?Q?T4yQbV0BfO/WzCSPL2KRQkx6H1HdhCt964pPcrbzi61hj/fDxurYT72jWykt?=
 =?us-ascii?Q?4eOAeAqCrxuEX6ekxkdra0CM/5I87XWUW2HcZiCHnQstwDZE27WbLnJrxV6B?=
 =?us-ascii?Q?wTaYTjsX7QtxjfUO8XKMqdDUy8YyLdWHQx/d3NSvNMPBM/P1JqOMwHH/h22L?=
 =?us-ascii?Q?uv1NaRul3prhXUwMaRL47VMgkeyE/JTqfVaIC9kOozkHl3qlnfO77bULMf3L?=
 =?us-ascii?Q?S/+dWI3VDMWqdi7pCICmnT27ABDlnqcsfN/BM/KHd7dPdKHQpRdpjOD2MO34?=
 =?us-ascii?Q?Xaq/ARdwiojCCYhjfc/A5xyFVKRrk/5UNyj415H8bEYXD0TukjTanBaJmG9g?=
 =?us-ascii?Q?V/AmD6IxOx+X9yhZ3U9y/TbGEJS5QrZMKTvy3AIX1k3nS7c3EK7Gy3CMPPEg?=
 =?us-ascii?Q?bs3007Wdbs2pQ+YIB6sk8sMb91GacWaYfu8DQJOrgQeH5QV32wyWkc50jd36?=
 =?us-ascii?Q?hcf/B4lahL3vLULURAtqJ0MURtvkPxwW/BfpKBklbDTd3XxM70uH/mQ5haMG?=
 =?us-ascii?Q?5AgNUAOkBsC88A4XmOrHtVc7AsJpAmpCPuyWptvnLRIWxRI7qQMNayTbmtlM?=
 =?us-ascii?Q?odsdmgZaFaKOXxKtYi2CCFJXzkDQj8XHxd4B8xlNzmqLapAjGKfy8vL1UVXB?=
 =?us-ascii?Q?45EuKCUudMMDHu7l/zpf1loMTM3OrS45jEStRfwHLQScit6NMwix14O+bKQ/?=
 =?us-ascii?Q?dtILf2oVonF6X/OVkbdBaylzzU47burQtQUppj95AgRuTI0D2C5+HxRpmyku?=
 =?us-ascii?Q?QUgOpTuoNJFdR46lkxqU+tJkrCfRO8jQqk/l8T139HU5AU2OwzdfChBR4+/C?=
 =?us-ascii?Q?2KPlKUX1UhxnDF+p/l6hWyYIT5B67iJbvcphZaRaAHTyO4m+5JDicen/52I6?=
 =?us-ascii?Q?2kP/797ynv4MPhmppA6zs7RkyHvdQtvlOAzJqrGVygxMtSoB9gHiJ/VtBc84?=
 =?us-ascii?Q?/KUTSbj9jkHq+xMAqeApNKmkn0PoxHqp3ZNnGv7eHcTxzVuLJz3EY7zuuC0E?=
 =?us-ascii?Q?gj3OM3s09Pf1/RKHGhS6GJKeQWrTqUOk+pl7aVOvX20rztiCZvKEDfxP/FPU?=
 =?us-ascii?Q?MfqpNGoV/scF9fVgsLc2bDqoG4I8IKxYzW9ih2Y9?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82437dab-8ab3-43cc-37e1-08dcfce0d8e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2024 14:56:22.1171 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6P/oBNJ/FQDRLe6o75LNODWuuD9+IXL9n6UUJnIn9bL406TnXVN2/dt6WJpfPAP/RUjjCRIW43mUe8afflktDM+E4qcAAQfVesDISefvDRs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7004
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730732187; x=1762268187;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=O1yQVSZBuT1Qy9hWXovhefLGSfY33ZG/Twwa+U8uubc=;
 b=cUcNtMTuuM93ANb55ftcVknPzM0Eaisg9HNH7MLLXt2HM+KGx2pGhrPl
 ZFmb1PDIdHU8ra53F0Umi7s3cvTpr77pbWximBzV5VQJZJ1P9iioejcua
 cGJSGRobWw8aT1AnHHqm476wBDwTylcqxJNSOK+A6M0SIEmmRlAxy84WF
 HhUu9Gv5nJJoEPBIwFShSE7ZxFyRfHfB3Q0I8VS//2BqvYNF6emoedf+u
 EE08UPhQO/CC7SPpTPRKak81LC56lZRWd+TGjq7GcfzA0b6xoupgTlzcc
 nv+n3rlOSgI6Q0aisEwPqMS3UhsSdpuXxUCDs99Vds/dYvuY/kYR4fW/B
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cUcNtMTu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-net 2/4] ice: Fix quad
 registers read on E825
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
> From: Simon Horman <horms@kernel.org>
> Sent: Saturday, November 2, 2024 4:11 PM
> To: Nitka, Grzegorz <grzegorz.nitka@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Kolacinski, Karol
> <karol.kolacinski@intel.com>; Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com>
> Subject: Re: [PATCH v3 iwl-net 2/4] ice: Fix quad registers read on E825
>=20
> On Mon, Oct 28, 2024 at 09:45:41PM +0100, Grzegorz Nitka wrote:
> > From: Karol Kolacinski <karol.kolacinski@intel.com>
> >
> > Quad registers are read/written incorrectly. E825 devices always use
> > quad 0 address and differentiate between the PHYs by changing SBQ
> > destination device (phy_0 or phy_0_peer).
> >
> > Add helpers for reading/writing PTP registers shared per quad and use
> > correct quad address and SBQ destination device based on port.
> >
> > Rename rmn_0 to phy_0 and remove rmn_1 and rmn_2 as E82X HW does
> not
> > support it. Rename eth56g_phy_1 to phy_0_peer.
> >
> > Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C
> products")
> > Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> > Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> > ---
> > V2 -> V3: Replaced lower/upper_32_bits calls with lower/upper_16_bits
> > V1 -> V2: Fixed kdoc issues
> >
> >  drivers/net/ethernet/intel/ice/ice_common.c   |   2 +-
> >  .../net/ethernet/intel/ice/ice_ptp_consts.h   |  75 ++----
> >  drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 237 +++++++++++-------
> >  drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  37 ++-
> >  drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  |   7 +-
> >  drivers/net/ethernet/intel/ice/ice_type.h     |   1 -
> >  6 files changed, 177 insertions(+), 182 deletions(-)
>=20
> This patch seems to mix bug fixes and cleanup.
> Which leads to a rather large patch - larger than is desirable for stable=
 IMHO.
>=20
> Could we consider a more minimal fix for iwl-net.
> And then follow-up with clean-ups for iwl?
>=20
> ...

Thanks Simon for reviewing this.
Sure, will try to adjust this patch to include only minimum changes to addr=
ess
the original issue.

