Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E78C9A97348
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Apr 2025 19:03:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 86933810B6;
	Tue, 22 Apr 2025 17:03:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RzlJ6-LtbQPu; Tue, 22 Apr 2025 17:03:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1D4FC810BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745341406;
	bh=h2lcNF0/63PIBryOzP+S0gn+/jBuoOne3WBLSHYRiVs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=D7eeoqPSFF8Pm6u9hBW7+oU93/XNruE5Vp0YXxABPV4sF4C1xSBQGsvaC7L8+a4cg
	 KrDEmKRRi5Oy6ugzIE3vemmQ80AruZsjE3xRElNVdH3s7yTbGRyaNahgAAHeEVipEk
	 NxSyvaBlsTV9dAHKPlXgKFDa487Wy/eAKsgRzEFjVa5LZvMgEjpGqRNa1H1cF9ZC49
	 KQkGJLva5krpesWAV0eUG/uFqSpbH/85Q7QRbku9hm6J7oY+PV0Sp1QzFtW21CGmi3
	 e4LcTaGkh+YoyjLRFA4lNiOTNMYhf7aom/1xsfIsmPUFlO/be4SI0Q/97sosoxFQAJ
	 IjsTxkLDHUI/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1D4FC810BF;
	Tue, 22 Apr 2025 17:03:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6837219F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 17:03:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4E43B40C00
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 17:03:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FJRApAjalF34 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Apr 2025 17:03:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4A49C40BF9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A49C40BF9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4A49C40BF9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 17:03:23 +0000 (UTC)
X-CSE-ConnectionGUID: fxMdc2FZRqOgjfa2UEfe9g==
X-CSE-MsgGUID: Ac0z03ZTR6mi/8mcB7CkaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="47039266"
X-IronPort-AV: E=Sophos;i="6.15,231,1739865600"; d="scan'208";a="47039266"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 10:03:22 -0700
X-CSE-ConnectionGUID: SL+xFD9BSYKxTXiSkQ4QEA==
X-CSE-MsgGUID: 0rvtHFFXTRa0TqVAnUwfDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,231,1739865600"; d="scan'208";a="137154527"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 10:03:21 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 22 Apr 2025 10:03:21 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 22 Apr 2025 10:03:21 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 22 Apr 2025 10:03:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yG1eQX0UPiiUsH+71BLIDiQmQw6F8HuYsvicRfPvAeiUAwAhazUAhMaJC2jCcLhTjz9vPpuh60ro/hYJoQ2Ua23MP7rXso4uMx14vo+35xLv8AGUne+PBj1UYYhMqbErvBxTlHF1HMBtHNY2h+M/P48qrIYno7oXGOyWlUMnk9qVKfRd96TcPyoI0wRv9KbWfc17xEx4SdRx+zkFchD0mdEygV6bUTDRPcnY11aIaTlRj2SLU+cZSml84BnPE5iHWFtr6wcKhOezf2hT1z1H73fVfkWUHZAX1YX8C505kBCd7ClmY6ZPSuYrZeW4UY6VvDkcuP8YSTetuVNjk7Sixw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h2lcNF0/63PIBryOzP+S0gn+/jBuoOne3WBLSHYRiVs=;
 b=NouWVnaufcS199x68ZMfW6zA+n/vR7EFvhAxXXU3+VZ7gZMeITs9gDwMk4LJxggdrYkPf2KsQyKCCaS8adwyATVSWCVggCH6EnSJKfVKr9yBt/4iDnCotPRl1sW7rgFPGXozEtopU7WMbhdbPilZG2oOR1bCd1qwm8AiWnHE+DGW+dhoiFp5TxLfsS994WZzXfNF5HUlQ0P7wUfDiEF62wrVfo8WT7PQq5wJfsjnkhiJHQFNHdKIksQW1p6oPSzL5Yc+JE+begVc3HR+zf8C5a/q/JOhu/oIB2VPcU+Ft5aaFciKwjyvn5RnwzJlzwtXiTx1HLZv8Ke7KYCQW0mAtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by PH7PR11MB7499.namprd11.prod.outlook.com (2603:10b6:510:278::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.34; Tue, 22 Apr
 2025 17:03:16 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%3]) with mapi id 15.20.8655.033; Tue, 22 Apr 2025
 17:03:16 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 2/3] ice: change SMA pins
 to SDP in PTP API
Thread-Index: AQHbs6C6fC0aMwpX70mJs8vMBh8+ObOv6ZMQ
Date: Tue, 22 Apr 2025 17:03:16 +0000
Message-ID: <SJ0PR11MB58667D4EC93EE07538F4C3AEE5BB2@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20250422160149.1131069-1-arkadiusz.kubalewski@intel.com>
 <20250422160149.1131069-3-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20250422160149.1131069-3-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|PH7PR11MB7499:EE_
x-ms-office365-filtering-correlation-id: b430ba8f-fca2-49cd-9adb-08dd81bf935f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?zFQUB1ttf/HVdDH1sD8r39n3o8cKAKeCQFYCPWdCUEwGb8SWTf5TzitCrtMr?=
 =?us-ascii?Q?5oJ9Y220YVJIsSfGSD+PfLMEgSPZD1XjP3FAxCM0s2cYC2Rq79joJyulFoM8?=
 =?us-ascii?Q?hqCK7UABLGA/Ij1T2jNe6CJYrf0qhVejSd13vUxxaTPd7KILNVZ4NXJrHf0C?=
 =?us-ascii?Q?+SHrzMT3WP4tQITlXhtA1CBK4zvfl9ueYS194ZZETvsbBpz9BijBq2E6ye8J?=
 =?us-ascii?Q?Znw3zuSOfh+0RWjrGuR6jDcwKniqhbGw8S8pyNU+Ib7dZQBmwv4nNMz3Ut8v?=
 =?us-ascii?Q?2qprRdFywFLgniXYO53qgvLJq0RU2o8OeeIyLk/ZuJKQjA94WXSxAV5FLYkS?=
 =?us-ascii?Q?tIYB+CPsL4g35F98eNd381MN/fl58NckwuUxD1+542toxar8rrmKmI59G3Pm?=
 =?us-ascii?Q?GZ0srK1ojjzCKMZlT1rjp5oUC01k/soN3VJ0TatRg8w0D6QhfRAb6Zski0Jc?=
 =?us-ascii?Q?Z5JkesfUEdg50Gm+Xz76SuVoCQE2rKwk/HqDWndFItF3PzihlDX7fFi/Xr3c?=
 =?us-ascii?Q?KiUmWQdx/Rgm6yCkGu1q010h1ApfPdP660Xnbpf/1yVT07gN5k3KWy/JmJy/?=
 =?us-ascii?Q?xm/NNqBzxfbXuktjzLVV+GiCvrYchsycvykKnoVWw/dEDOwQR1oNGDvttFIJ?=
 =?us-ascii?Q?WN1yPcgzF9g8Jf98Z3kyLs+Zug6wIn7earnUnXO5GfWxVZHUd4kH746I3dWU?=
 =?us-ascii?Q?IKvHTupldGzOGn1988KWFH78rLiHguZtl8DNOIveucl3INiDi79qBBcTpnKV?=
 =?us-ascii?Q?a9j6C+uLoOjzhlGFAre96jwt/wwPkrQdSCtqanJCkueYzJg0o1uH6O14+NNv?=
 =?us-ascii?Q?VOSS8yVFycPH/UgDlm/a6r32Y1he0nOgCNHZU1DxgmWOigpZbLsgULkwPosg?=
 =?us-ascii?Q?Ow6jnGm8OAvPHToR0kg6JmRLmmw9uIYf/h6FMA8HIgsFFMlXKfbhwp5rIHDk?=
 =?us-ascii?Q?hAyIKzKTFbUS6YlLhM6B54B4UONOyPLx5GymI0mCOQEqnDEkc6QtMAcNTQvQ?=
 =?us-ascii?Q?aLCWyHoNWSpx+IbRXPOwhSU3kAYTg1G3tHm2LkDIga/5Wu3ktmKT5/xb2+dM?=
 =?us-ascii?Q?ZdfZQR8bMN7CSUPXSnVGbaueqXzLNZSUxnwZJ4AzSjZYosPF0jFwMGB+HvS+?=
 =?us-ascii?Q?Oc5r0l2bOCryoEtLTM8piXy24kAmy9jXntQzePa8yGMkq+Up3n2orN4mZOmz?=
 =?us-ascii?Q?QbWukTeL/NIhVU/oXAqzJs+p5kKPzKIzFlGQI4LpT1aq3MzhwIBOch4Csa2E?=
 =?us-ascii?Q?7QD7NFeRfsSceUJpptJGXZUfjWHNSsZhyG2tI00ghkAzZ88kaqWMmO35p+eC?=
 =?us-ascii?Q?rfwR47dyUICoTJBBtBQ94gshMAnv6cUI5/cI9JKI7WhdgYKJUTIMMS6lNLHQ?=
 =?us-ascii?Q?AtT896IOkLKGKeHoHWgpzl6ELTESrWFtWLsX8ajKg6f0SArrNix63FMAbPRV?=
 =?us-ascii?Q?1//KP34cr6agTa2GY7WqAYD6rKYER5W6Prf+zdQ82V+Ht+jOdiyFOQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CZpwDIb3GU/wlaNoyWlZVIItafWIBGVbq3bEZ/6I8mKtCjKQMqSDAsqdziHN?=
 =?us-ascii?Q?OCeKIcsQ1FbRnzjNwlysNabuIfh+18/J7oWgi3yLXJEoZ/+A9K+S3WNcI6uF?=
 =?us-ascii?Q?ray1vOgyfe16vMCUvmxPIYh3Z2Fnmm2F3sAwe8oKFF2hali58+plTi7XG8FJ?=
 =?us-ascii?Q?4cjp3vFtyjx8a8gXv+ShjZIKb/K4hTvqElc5vBxms6a2tXnmbEzqSwjDhI2w?=
 =?us-ascii?Q?FLIAQZC5f8pTu7kZ8Lko1OVT2HCtP9T4rp+VTM7oWC+taUwNKhz2F1Sndg0n?=
 =?us-ascii?Q?RQjAbDP0Bz9SR6kUg4BrQ0yp1N/acTXy+WpYltGZrynT9bNi3LSfNU3/sYNq?=
 =?us-ascii?Q?9o8wwSsion4Pd8GbGH1mZdxax8gpPpSN5wp+LR+nJcBNaaj4CDZPL+qnjHc9?=
 =?us-ascii?Q?Su9qyvd59UNbEJVWtFgbpo/MRRZC7zKTbc2O5dfYLH3fmCBFnd8V52hCKQGb?=
 =?us-ascii?Q?Xin+OQwQU/T85LwBwqfLYTZ3qVOwf4zmvGmMzWF5Jz0van/H9YhY25YCY+1X?=
 =?us-ascii?Q?1k80eHugC7SCskFZT0bxbhu1T/kGrWB/Q81WqzAInaTGOJX3lcdaFvLhHYZx?=
 =?us-ascii?Q?FQKf2IsYKcSqRUZk/d+FG4KIuFBBx8XOfjfB63YIv8a0eGBFNhaDOlMWqAgc?=
 =?us-ascii?Q?off7UCIvhakbS2HDqv6jNg+aTQRBxtSp6hypH9e5xAQL8QWGN/+xmqgIl2jO?=
 =?us-ascii?Q?7JEtxmVbijbnly7Ct5Lczas1WZT7I8KWg6zVrslR3wCWIoERP5OdGZ9Xkygg?=
 =?us-ascii?Q?C4ed99uxyF3tF2vDCrd5FPPTDp4vPYyLaAjf4NxGFKb+xkY7nHD+FPphq7Wc?=
 =?us-ascii?Q?An9s6YsRqBRkPXVWARHnlllhZllOyHyQxplHj8wOZru/o8NhHScgRQUN2rxa?=
 =?us-ascii?Q?/qBwbhNjoIeVcJ43MFNQO+UKhP0EInAYPgUBHk6oJjolT4TIi/5XxfkvLQ0G?=
 =?us-ascii?Q?Lu1JJNZzGEbPCG+iLvdWtbidNKtOzj9wniTxvEqeOA2YUDshXc6XXzBG+Iyi?=
 =?us-ascii?Q?ktmmC0VSEroefboTVTSUVT6DSA0FL//hJpYj/v1hJUtJcYv7IEt7N8guhFMi?=
 =?us-ascii?Q?e0+F2j2sz2URmN6I1mWK4Zn8EbF+nSaqsjfsT7qpjqG53GVa91ZU5iXmYpl2?=
 =?us-ascii?Q?1SsNjChpw8SlOMOW5GuisTUynHHW7PgWFkAIGwOi6THly7UC/vC5vTzwumN0?=
 =?us-ascii?Q?FqKHGTZqxbaV0jYuiHpLc4SgVyuxKzLcBPBywYtj3F4Div8ScGGrKsk5B5h8?=
 =?us-ascii?Q?zllAbZE+Xi+XFwnAO8xmGX5ek1Hc3p6UgsBEcJgDUnh0NZjd8fB45/NFlYQF?=
 =?us-ascii?Q?BCKwVjjwvsxV5+oFedWwbharzyyjV+JoUmongQaJNZ+mYI8yVAB1TG7EEQh6?=
 =?us-ascii?Q?LC+9g3ZfT8OggZFvkXn/hAmpccCAWJ8W3turhJMY9EK/+zST8ofzNWBwMThl?=
 =?us-ascii?Q?ciX5fJEJnyWbZ+9OvO5vdArzXi4QdoIURfaVm4vAIwqj43+sPwg9r1c+WgFH?=
 =?us-ascii?Q?JZ5R+55kbSz+qVEgKP/h7de4qgJe6m54IFj2VwssHbMyU8Db0iV0m2WTPN9Q?=
 =?us-ascii?Q?4rSigD8Lq2JdFUqTuGrWtm6pHBZNxti2v5mRs8SWvLlmA5cA295n+FghOwhb?=
 =?us-ascii?Q?AA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b430ba8f-fca2-49cd-9adb-08dd81bf935f
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2025 17:03:16.7706 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y09Xu1cHXmCqq2fEmArP82FHnh1u89SPOWpS2Sjhg6WKasThlRbiFMGAw4AIr+rvP/lMGPCr5Eyygd/eT/iiAXhG/Jg2u9qHe9XdZsBCwxI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7499
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745341403; x=1776877403;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H2efSTDdrpOjKX07NdS1gQbYEkfX+RQbMdyOpRY1/q0=;
 b=XxBcCMe4h0nO0zdCxXPU9tFuDWeKhazz3nKWRpAnbRdr+Tkz3bnVtZCr
 jkvyypESXoecYYIqKz5ja70xQO7dl2fwjkd/1LlJRrgcom/SoK6MVzQg0
 EtGgfjLskChu2CgL/nB6YmJ46SS/cH6FSRpp6EhZfXg4PpfNjNdGNXXCM
 zNjUCi/1xEDxgfTfFMNEtBnu6ARRX6Yk4voRklYlvjmFqcuItefFS3tuU
 rajSMYt7vxBJMi7EPdfLOwL4fYKdgNiEyTBUIG/GtgUXYvXkP40oyBXan
 1D9dATV0leHAcYiUVYwgXXKJ5QgfR+GQNmeSfAL39+BSraVr7v/zPDXj4
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XxBcCMe4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 2/3] ice: change SMA pins
 to SDP in PTP API
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Arkadiusz Kubalewski
> Sent: Tuesday, April 22, 2025 6:02 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kolacinski, Karol <karol.kolacinski@intel.com=
>;
> Olech, Milena <milena.olech@intel.com>; Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 2/3] ice: change SMA pins t=
o SDP
> in PTP API
>=20
> From: Karol Kolacinski <karol.kolacinski@intel.com>
>=20
> This change aligns E810 PTP pin control to all other products.
>=20
> Currently, SMA/U.FL port expanders are controlled together with SDP pins
> connected to 1588 clock. To align this, separate this control by exposing=
 only
> SDP20..23 pins in PTP API on adapters with DPLL.
>=20
> Clear error for all E810 on absent NVM pin section or other errors to all=
ow
> proper initialization on SMA E810 with NVM section.
>=20
> Use ARRAY_SIZE for pin array instead of internal definition.
>=20
> Reviewed-by: Milena Olech <milena.olech@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
> v5:
> - no change.
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 254 ++++-------------------
>  drivers/net/ethernet/intel/ice/ice_ptp.h |   3 -
>  2 files changed, 39 insertions(+), 218 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c
> b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index b79a148ed0f2..b948a6d9226c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -40,21 +40,19 @@ static const struct ice_ptp_pin_desc
> ice_pin_desc_e810[] =3D {
>  	{  ONE_PPS,   { -1,  5 }, { 0, 1 }},
>  };
>=20
> -static const char ice_pin_names_nvm[][64] =3D {
> -	"GNSS",
> -	"SMA1",
> -	"U.FL1",
> -	"SMA2",
> -	"U.FL2",
> +static const char ice_pin_names_dpll[][64] =3D {
> +	"SDP20",
> +	"SDP21",
> +	"SDP22",
> +	"SDP23",
>  };
>=20
> -static const struct ice_ptp_pin_desc ice_pin_desc_e810_sma[] =3D {
> +static const struct ice_ptp_pin_desc ice_pin_desc_dpll[] =3D {
>  	/* name,   gpio,       delay */
> -	{  GNSS, {  1, -1 }, { 0, 0 }},
> -	{  SMA1, {  1,  0 }, { 0, 1 }},
> -	{  UFL1, { -1,  0 }, { 0, 1 }},
> -	{  SMA2, {  3,  2 }, { 0, 1 }},
> -	{  UFL2, {  3, -1 }, { 0, 0 }},
> +	{  SDP0, { -1,  0 }, { 0, 1 }},
> +	{  SDP1, {  1, -1 }, { 0, 0 }},
> +	{  SDP2, { -1,  2 }, { 0, 1 }},
> +	{  SDP3, {  3, -1 }, { 0, 0 }},
>  };
>=20
>  static struct ice_pf *ice_get_ctrl_pf(struct ice_pf *pf) @@ -92,101 +90,=
6 @@
> static int ice_ptp_find_pin_idx(struct ice_pf *pf, enum ptp_pin_function =
func,
>  	return -1;
>  }
>=20
> -/**
> - * ice_ptp_update_sma_data - update SMA pins data according to pins setu=
p
> - * @pf: Board private structure
> - * @sma_pins: parsed SMA pins status
> - * @data: SMA data to update
> - */
> -static void ice_ptp_update_sma_data(struct ice_pf *pf, unsigned int
> sma_pins[],
> -				    u8 *data)
> -{
> -	const char *state1, *state2;
> -
> -	/* Set the right state based on the desired configuration.
> -	 * When bit is set, functionality is disabled.
> -	 */
> -	*data &=3D ~ICE_ALL_SMA_MASK;
> -	if (!sma_pins[UFL1 - 1]) {
> -		if (sma_pins[SMA1 - 1] =3D=3D PTP_PF_EXTTS) {
> -			state1 =3D "SMA1 Rx, U.FL1 disabled";
> -			*data |=3D ICE_SMA1_TX_EN;
> -		} else if (sma_pins[SMA1 - 1] =3D=3D PTP_PF_PEROUT) {
> -			state1 =3D "SMA1 Tx U.FL1 disabled";
> -			*data |=3D ICE_SMA1_DIR_EN;
> -		} else {
> -			state1 =3D "SMA1 disabled, U.FL1 disabled";
> -			*data |=3D ICE_SMA1_MASK;
> -		}
> -	} else {
> -		/* U.FL1 Tx will always enable SMA1 Rx */
> -		state1 =3D "SMA1 Rx, U.FL1 Tx";
> -	}
> -
> -	if (!sma_pins[UFL2 - 1]) {
> -		if (sma_pins[SMA2 - 1] =3D=3D PTP_PF_EXTTS) {
> -			state2 =3D "SMA2 Rx, U.FL2 disabled";
> -			*data |=3D ICE_SMA2_TX_EN |
> ICE_SMA2_UFL2_RX_DIS;
> -		} else if (sma_pins[SMA2 - 1] =3D=3D PTP_PF_PEROUT) {
> -			state2 =3D "SMA2 Tx, U.FL2 disabled";
> -			*data |=3D ICE_SMA2_DIR_EN |
> ICE_SMA2_UFL2_RX_DIS;
> -		} else {
> -			state2 =3D "SMA2 disabled, U.FL2 disabled";
> -			*data |=3D ICE_SMA2_MASK;
> -		}
> -	} else {
> -		if (!sma_pins[SMA2 - 1]) {
> -			state2 =3D "SMA2 disabled, U.FL2 Rx";
> -			*data |=3D ICE_SMA2_DIR_EN | ICE_SMA2_TX_EN;
> -		} else {
> -			state2 =3D "SMA2 Tx, U.FL2 Rx";
> -			*data |=3D ICE_SMA2_DIR_EN;
> -		}
> -	}
> -
> -	dev_dbg(ice_pf_to_dev(pf), "%s, %s\n", state1, state2);
> -}
> -
> -/**
> - * ice_ptp_set_sma_cfg - set the configuration of the SMA control logic
> - * @pf: Board private structure
> - *
> - * Return: 0 on success, negative error code otherwise
> - */
> -static int ice_ptp_set_sma_cfg(struct ice_pf *pf) -{
> -	const struct ice_ptp_pin_desc *ice_pins =3D pf->ptp.ice_pin_desc;
> -	struct ptp_pin_desc *pins =3D pf->ptp.pin_desc;
> -	unsigned int sma_pins[ICE_SMA_PINS_NUM] =3D {};
> -	int err;
> -	u8 data;
> -
> -	/* Read initial pin state value */
> -	err =3D ice_read_sma_ctrl(&pf->hw, &data);
> -	if (err)
> -		return err;
> -
> -	/* Get SMA/U.FL pins states */
> -	for (int i =3D 0; i < pf->ptp.info.n_pins; i++)
> -		if (pins[i].func) {
> -			int name_idx =3D ice_pins[i].name_idx;
> -
> -			switch (name_idx) {
> -			case SMA1:
> -			case UFL1:
> -			case SMA2:
> -			case UFL2:
> -				sma_pins[name_idx - 1] =3D pins[i].func;
> -				break;
> -			default:
> -				continue;
> -			}
> -		}
> -
> -	ice_ptp_update_sma_data(pf, sma_pins, &data);
> -	return ice_write_sma_ctrl(&pf->hw, data);
> -}
> -
>  /**
>   * ice_ptp_cfg_tx_interrupt - Configure Tx timestamp interrupt for the d=
evice
>   * @pf: Board private structure
> @@ -1878,63 +1781,6 @@ static void ice_ptp_enable_all_perout(struct
> ice_pf *pf)
>  					   true);
>  }
>=20
> -/**
> - * ice_ptp_disable_shared_pin - Disable enabled pin that shares GPIO
> - * @pf: Board private structure
> - * @pin: Pin index
> - * @func: Assigned function
> - *
> - * Return: 0 on success, negative error code otherwise
> - */
> -static int ice_ptp_disable_shared_pin(struct ice_pf *pf, unsigned int pi=
n,
> -				      enum ptp_pin_function func)
> -{
> -	unsigned int gpio_pin;
> -
> -	switch (func) {
> -	case PTP_PF_PEROUT:
> -		gpio_pin =3D pf->ptp.ice_pin_desc[pin].gpio[1];
> -		break;
> -	case PTP_PF_EXTTS:
> -		gpio_pin =3D pf->ptp.ice_pin_desc[pin].gpio[0];
> -		break;
> -	default:
> -		return -EOPNOTSUPP;
> -	}
> -
> -	for (unsigned int i =3D 0; i < pf->ptp.info.n_pins; i++) {
> -		struct ptp_pin_desc *pin_desc =3D &pf->ptp.pin_desc[i];
> -		unsigned int chan =3D pin_desc->chan;
> -
> -		/* Skip pin idx from the request */
> -		if (i =3D=3D pin)
> -			continue;
> -
> -		if (pin_desc->func =3D=3D PTP_PF_PEROUT &&
> -		    pf->ptp.ice_pin_desc[i].gpio[1] =3D=3D gpio_pin) {
> -			pf->ptp.perout_rqs[chan].period.sec =3D 0;
> -			pf->ptp.perout_rqs[chan].period.nsec =3D 0;
> -			pin_desc->func =3D PTP_PF_NONE;
> -			pin_desc->chan =3D 0;
> -			dev_dbg(ice_pf_to_dev(pf), "Disabling pin %u with
> shared output GPIO pin %u\n",
> -				i, gpio_pin);
> -			return ice_ptp_cfg_perout(pf, &pf-
> >ptp.perout_rqs[chan],
> -						  false);
> -		} else if (pf->ptp.pin_desc->func =3D=3D PTP_PF_EXTTS &&
> -			   pf->ptp.ice_pin_desc[i].gpio[0] =3D=3D gpio_pin) {
> -			pf->ptp.extts_rqs[chan].flags &=3D
> ~PTP_ENABLE_FEATURE;
> -			pin_desc->func =3D PTP_PF_NONE;
> -			pin_desc->chan =3D 0;
> -			dev_dbg(ice_pf_to_dev(pf), "Disabling pin %u with
> shared input GPIO pin %u\n",
> -				i, gpio_pin);
> -			return ice_ptp_cfg_extts(pf, &pf-
> >ptp.extts_rqs[chan],
> -						 false);
> -		}
> -	}
> -
> -	return 0;
> -}
> -
>  /**
>   * ice_verify_pin - verify if pin supports requested pin function
>   * @info: the driver's PTP info structure @@ -1969,14 +1815,6 @@ static =
int
> ice_verify_pin(struct ptp_clock_info *info, unsigned int pin,
>  		return -EOPNOTSUPP;
>  	}
>=20
> -	/* On adapters with SMA_CTRL disable other pins that share same
> GPIO */
> -	if (ice_is_feature_supported(pf, ICE_F_SMA_CTRL)) {
> -		ice_ptp_disable_shared_pin(pf, pin, func);
> -		pf->ptp.pin_desc[pin].func =3D func;
> -		pf->ptp.pin_desc[pin].chan =3D chan;
> -		return ice_ptp_set_sma_cfg(pf);
> -	}
> -
>  	return 0;
>  }
>=20
> @@ -2499,14 +2337,14 @@ static void ice_ptp_setup_pin_cfg(struct ice_pf
> *pf)
>  	for (unsigned int i =3D 0; i < pf->ptp.info.n_pins; i++) {
>  		const struct ice_ptp_pin_desc *desc =3D &pf-
> >ptp.ice_pin_desc[i];
>  		struct ptp_pin_desc *pin =3D &pf->ptp.pin_desc[i];
> -		const char *name =3D NULL;
> +		const char *name;
>=20
>  		if (!ice_is_feature_supported(pf, ICE_F_SMA_CTRL))
>  			name =3D ice_pin_names[desc->name_idx];
> -		else if (desc->name_idx !=3D GPIO_NA)
> -			name =3D ice_pin_names_nvm[desc->name_idx];
> -		if (name)
> -			strscpy(pin->name, name, sizeof(pin->name));
> +		else
> +			name =3D ice_pin_names_dpll[desc->name_idx];
> +
> +		strscpy(pin->name, name, sizeof(pin->name));
>=20
>  		pin->index =3D i;
>  	}
> @@ -2518,8 +2356,8 @@ static void ice_ptp_setup_pin_cfg(struct ice_pf *pf=
)
>   * ice_ptp_disable_pins - Disable PTP pins
>   * @pf: pointer to the PF structure
>   *
> - * Disable the OS access to the SMA pins. Called to clear out the OS
> - * indications of pin support when we fail to setup the SMA control regi=
ster.
> + * Disable the OS access to the pins. Called to clear out the OS
> + * indications of pin support when we fail to setup pin array.
>   */
>  static void ice_ptp_disable_pins(struct ice_pf *pf)  { @@ -2560,40 +2398=
,30
> @@ static int ice_ptp_parse_sdp_entries(struct ice_pf *pf, __le16 *entrie=
s,
>  	for (i =3D 0; i < num_entries; i++) {
>  		u16 entry =3D le16_to_cpu(entries[i]);
>  		DECLARE_BITMAP(bitmap, GPIO_NA);
> -		unsigned int bitmap_idx;
> +		unsigned int idx;
>  		bool dir;
>  		u16 gpio;
>=20
>  		*bitmap =3D FIELD_GET(ICE_AQC_NVM_SDP_AC_PIN_M,
> entry);
> +
> +		/* Check if entry's pin bitmap is valid. */
> +		if (bitmap_empty(bitmap, GPIO_NA))
> +			continue;
> +
>  		dir =3D !!FIELD_GET(ICE_AQC_NVM_SDP_AC_DIR_M, entry);
>  		gpio =3D FIELD_GET(ICE_AQC_NVM_SDP_AC_SDP_NUM_M,
> entry);
> -		for_each_set_bit(bitmap_idx, bitmap, GPIO_NA + 1) {
> -			unsigned int idx;
>=20
> -			/* Check if entry's pin bit is valid */
> -			if (bitmap_idx >=3D NUM_PTP_PINS_NVM &&
> -			    bitmap_idx !=3D GPIO_NA)
> -				continue;
> -
> -			/* Check if pin already exists */
> -			for (idx =3D 0; idx < ICE_N_PINS_MAX; idx++)
> -				if (pins[idx].name_idx =3D=3D bitmap_idx)
> -					break;
> -
> -			if (idx =3D=3D ICE_N_PINS_MAX) {
> -				/* Pin not found, setup its entry and name */
> -				idx =3D n_pins++;
> -				pins[idx].name_idx =3D bitmap_idx;
> -				if (bitmap_idx =3D=3D GPIO_NA)
> -					strscpy(pf->ptp.pin_desc[idx].name,
> -						ice_pin_names[gpio],
> -						sizeof(pf->ptp.pin_desc[idx]
> -							       .name));
> -			}
> +		for (idx =3D 0; idx < ICE_N_PINS_MAX; idx++) {
> +			if (pins[idx].name_idx =3D=3D gpio)
> +				break;
> +		}
>=20
> -			/* Setup in/out GPIO number */
> -			pins[idx].gpio[dir] =3D gpio;
> +		if (idx =3D=3D ICE_N_PINS_MAX) {
> +			/* Pin not found, setup its entry and name */
> +			idx =3D n_pins++;
> +			pins[idx].name_idx =3D gpio;
>  		}
> +		pins[idx].gpio[dir] =3D gpio;
>  	}
>=20
>  	for (i =3D 0; i < n_pins; i++) {
> @@ -2621,10 +2449,10 @@ static void ice_ptp_set_funcs_e82x(struct ice_pf
> *pf)
>=20
>  	if (pf->hw.mac_type =3D=3D ICE_MAC_GENERIC_3K_E825) {
>  		pf->ptp.ice_pin_desc =3D ice_pin_desc_e825c;
> -		pf->ptp.info.n_pins =3D
> ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e825c);
> +		pf->ptp.info.n_pins =3D ARRAY_SIZE(ice_pin_desc_e825c);
>  	} else {
>  		pf->ptp.ice_pin_desc =3D ice_pin_desc_e82x;
> -		pf->ptp.info.n_pins =3D
> ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e82x);
> +		pf->ptp.info.n_pins =3D ARRAY_SIZE(ice_pin_desc_e82x);
>  	}
>  	ice_ptp_setup_pin_cfg(pf);
>  }
> @@ -2650,15 +2478,13 @@ static void ice_ptp_set_funcs_e810(struct ice_pf
> *pf)
>  	if (err) {
>  		/* SDP section does not exist in NVM or is corrupted */
>  		if (ice_is_feature_supported(pf, ICE_F_SMA_CTRL)) {
> -			ptp->ice_pin_desc =3D ice_pin_desc_e810_sma;
> -			ptp->info.n_pins =3D
> -
> 	ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e810_sma);
> +			ptp->ice_pin_desc =3D ice_pin_desc_dpll;
> +			ptp->info.n_pins =3D ARRAY_SIZE(ice_pin_desc_dpll);
>  		} else {
>  			pf->ptp.ice_pin_desc =3D ice_pin_desc_e810;
> -			pf->ptp.info.n_pins =3D
> -				ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e810);
> -			err =3D 0;
> +			pf->ptp.info.n_pins =3D
> ARRAY_SIZE(ice_pin_desc_e810);
>  		}
> +		err =3D 0;
>  	} else {
>  		desc =3D devm_kcalloc(ice_pf_to_dev(pf), ICE_N_PINS_MAX,
>  				    sizeof(struct ice_ptp_pin_desc), @@ -
> 2676,8 +2502,6 @@ static void ice_ptp_set_funcs_e810(struct ice_pf *pf)
>  	ptp->info.pin_config =3D ptp->pin_desc;
>  	ice_ptp_setup_pin_cfg(pf);
>=20
> -	if (ice_is_feature_supported(pf, ICE_F_SMA_CTRL))
> -		err =3D ice_ptp_set_sma_cfg(pf);
>  err:
>  	if (err) {
>  		devm_kfree(ice_pf_to_dev(pf), desc);
> @@ -2703,7 +2527,7 @@ static void ice_ptp_set_funcs_e830(struct ice_pf
> *pf)  #endif /* CONFIG_ICE_HWTS */
>  	/* Rest of the config is the same as base E810 */
>  	pf->ptp.ice_pin_desc =3D ice_pin_desc_e810;
> -	pf->ptp.info.n_pins =3D ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e810);
> +	pf->ptp.info.n_pins =3D ARRAY_SIZE(ice_pin_desc_e810);
>  	ice_ptp_setup_pin_cfg(pf);
>  }
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h
> b/drivers/net/ethernet/intel/ice/ice_ptp.h
> index 3b769a0cad00..c8dac5a5bcd9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
> @@ -202,9 +202,6 @@ enum ice_ptp_pin_nvm {
>=20
>  /* Pin definitions for PTP */
>  #define ICE_N_PINS_MAX			6
> -#define ICE_SMA_PINS_NUM		4
> -#define ICE_PIN_DESC_ARR_LEN(_arr)	(sizeof(_arr) / \
> -					 sizeof(struct ice_ptp_pin_desc))
>=20
>  /**
>   * struct ice_ptp_pin_desc - hardware pin description data
> --
> 2.38.1

