Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mBlyIqHez2mn1QYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 17:37:05 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A691A395D63
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 17:37:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44388411DD;
	Fri,  3 Apr 2026 15:37:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KMzz4lL0huul; Fri,  3 Apr 2026 15:37:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A2B1411DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775230622;
	bh=/Hwsyb9gwO71U+g3WpsqH0sVD4sm8EvzPkDoi4phcB0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uycJkGg9qe2EWcMASxuJpx4kCUzYtCYkfrwg1eAD1RaW9zoj3gMKfE3NKIk6oKQCM
	 4rzdmSApDVprRtaGUfT1RuTjqPLQmPLkuHfFsp10iP71kHBGAkMKhdQ/jfia2K7ZGX
	 r2cXfMrFJQMRUkwm/BopNP6YJXJeC80IQ/DkDytz1hA8G+F5so2+JZpwGBWchAnTx0
	 0PUFMqDOB+gGFEc5dxa/kxBl/ijRRx37rLGxnmMF9HWh4CgV7gQ2cb0KrHhuwVfwjQ
	 FqCOX9s3uBhtgiOoaZbiQykev1UmYAl+SArLeqok3hqSPzux3EN9kE6cacXdmsdkkl
	 NCPKEEQ1eJZNg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A2B1411DA;
	Fri,  3 Apr 2026 15:37:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5A6EE1A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 15:37:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3FFEF401EA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 15:37:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rHXxXjNIAmsS for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 15:37:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 613914003D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 613914003D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 613914003D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 15:37:00 +0000 (UTC)
X-CSE-ConnectionGUID: JbPK7evYQXyE+5ajqKMugQ==
X-CSE-MsgGUID: TQrEce4oSLKz1fcExNKb7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11748"; a="76310344"
X-IronPort-AV: E=Sophos;i="6.23,158,1770624000"; d="scan'208";a="76310344"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2026 08:36:59 -0700
X-CSE-ConnectionGUID: NZB8yFaYRL20p7YxKDGClA==
X-CSE-MsgGUID: CVf+tuTFTM+M/dJmdpJzFA==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2026 08:36:59 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 3 Apr 2026 08:36:58 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 3 Apr 2026 08:36:58 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.60) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 3 Apr 2026 08:36:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WVQeGS+N/5Ltsg2YNbwCH2ay7Q7nHU2hgtOsEmlZT0nnoxtoiR2NeBJ5FZyTDar2uScapT7CxOnh6YG0KZuYqcwlYGIAUDMSf9I02ZRMY7hZw/IRLxgp4YZP80Nkq0GYTGwga+9cZv8UMKD4y2gXDT2hoSeGiobvNYr2VBCfa/FouOGoa4MBqyUWjCXA45dIYx7Lff9FRsJwDHU2WEGV3xbE+XdNKTlwBusra8GRqX17DBEQc2m6rS8pO5AJMM6aE6+sNHMivXOEtzaNGS7MG4WDOP4Od3vZiY/8p7TkZ1xaOypn9RdVZlgaziPCxg1PGbUOnGtRh9xYkULBUWotew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/Hwsyb9gwO71U+g3WpsqH0sVD4sm8EvzPkDoi4phcB0=;
 b=WXX0frlw9UKVKpJggqxUCSiqhlPYw5kRXNxXecAKQ0tfxeKYE2Y60iS6gMOSb3u9y3/l6lOXveJUP1x6iIxgB8uiPyGI4tWSUu0yl0Mh6/jMrCncosHTH5KX7H2QieceV6+tO3FT7N+RJy+Z9d70JkErg8LbT5eBMEjWBuAMdjXejJXomWqUCUOSoOlNGhpPRALKsWyv27ISdaU+dA1i2FhWqhCVbE00AYhnrVAqoEGiS8XIXwSfQHxq2RAcUx40FI2Z7VKIvVFVxPf/+0uutvor8/Tc5hvce4snZZtTLS5f8ZBc4zFClhFgCqhGzAAo9oYyYIw0WKbd7pzTLxvunA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MW4PR11MB7161.namprd11.prod.outlook.com (2603:10b6:303:212::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.18; Fri, 3 Apr
 2026 15:36:50 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Fri, 3 Apr 2026
 15:36:50 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, "Olech, Milena"
 <milena.olech@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "Ilichev, Konstantin" <konstantin.ilichev@intel.com>
Thread-Topic: [PATCH iwl-net] idpf: fix read_dev_clk_lock spinlock init in
 idpf_ptp_init()
Thread-Index: AQHcw3+F4e6WxAXyfEWS4RlTAH+0E7XNeEnQ
Date: Fri, 3 Apr 2026 15:36:49 +0000
Message-ID: <IA3PR11MB89867E058C1DF423893E850EE55EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260403153538.11516-1-emil.s.tantilov@intel.com>
In-Reply-To: <20260403153538.11516-1-emil.s.tantilov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MW4PR11MB7161:EE_
x-ms-office365-filtering-correlation-id: da7a70e0-c461-44d6-e7e8-08de9196d2b9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: Ym001hiypvbZk8xqf1p+6fEs+i5LGLz+4l+AOk1JktxXv0unin0XI5JR5nlY5ZfiV89+19w//ERgJNj6U9t66sZLd7a078Hb5bRMosoRqqiZdD33R33da/Sxd0W9yBQ6uj6y3AMgHEKW5bQ7w3V8vBeyqXIwg0RtiaJKHRT9+3yJV1Vz626mWDPLCTkN5ajlxtR9GnccYxDi6KUrUkfID18unhOrgAuCsl43ZrNEBV+AV0pAxp8Ti695tz++NNeAYcsYmlUPY9OxYqiC60xccj+36NFzjfYpTwOfSqYdhs6YJa5SpORqoEOX62uQHnzjW8M92FfQgbp0UASW6En/ZjomASlQWkO9BZkTm7yUPblKMQiO++pc366D/H8sK7ApSwEcCWfYdD/ihpk6vOch6aKA58OmHeoVcKzkYQbsemGvOi//13/IUppF5URLFjmE+nCGC/FSK6S17g88VNYy/f7YF+ahL5m5isfSnr0rZ9MRiwiylFDkXgcy0urduZuYY2hqHntR6arR6GQ8kcaxiZrKULNmuaJV4tDE6xemDDFqTeh4kdCF2yWIR+E2X9L9uAlGBiXNbNb+/plbsraaz/MqGwdOgx8pjKkrOz8jfME0KCxtVmXuLh7zi7vgDSgjylAMX9tZ9mGTrJOW9HGXgT+5ynPo44dMIswoFvu3jr9U8K5j8k0v6Aedxip1uBkKtSQa02WNf+X1RtNO5AsaDoYTcwkzLawGXjH98Ms4J06dRx4YT8W4ghMrvN2UCEmKRgwLaUIHcrAto0hBHNM3ry4c2cSGCfR9zxWWS7zblPY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9bQyLRcOgzDU7SQyJLTGKPJqsCCMMNzyYI3CeboLdAVv2nrodV22nMepxPXR?=
 =?us-ascii?Q?kpYNQFRxS37zTAJ0nwyIWZB2l+8RlKV/twTL4oMQ/ecnrhSXGvm69/bzd0oF?=
 =?us-ascii?Q?JiByoqH/4CwGFkze7ATZ7SAsdrq4hCUsLTu9AAPPP5j9rMW/bQOB6sDyWw8N?=
 =?us-ascii?Q?pOPftujhVLz+Q+tNXBbZC8OcLEIGtV7SkC9o1c4wYOv9RGCvdkSRkylDPd+o?=
 =?us-ascii?Q?WY5kqaLnEhCLDv7D/nir1ASOzLmtTmmo3MtLZW9tE1OVsVJKN+qA0XBG5ntt?=
 =?us-ascii?Q?/cBIhaukJAdFHIn/xdInO/wfp6+JvN/T7nVOAGra0DqJ9NIvTyaWlN5PhhAQ?=
 =?us-ascii?Q?vYpsDsXGOmuXVuaUaGHCPe79kct8ZPTlmMZ6VZP1bFfgeXkgCC36fULceQSJ?=
 =?us-ascii?Q?NRJOHIlpkhu971Elyhs/RMh4CfwycKAH2EZsM2B0gbFCRYj8+2purOVAuCuD?=
 =?us-ascii?Q?hxVfwmgxOESt/PkPdM82Y2i4JVkX5ZPOTBHrT9vh8h2V4JNW5gR5LcfKFbe7?=
 =?us-ascii?Q?1FgaMkA/lSCVX7bxanwnTagHvaYWRphahN9bODLs6gBoAmriay4YA2MUDJpS?=
 =?us-ascii?Q?k680e1AwaqgRCgaJ92hVoIPAj6f+YThwcB9lxQOYT2PInBnKItwpYQ31XwuX?=
 =?us-ascii?Q?vZakwQ8cGwO61CANVMN/kfhVtCZM95rVazPvKCGqgd36I9gcDo9VjPTfjwRZ?=
 =?us-ascii?Q?ewGjXjJ5bSKpFf+FJPwASvrz/MjOxuQLzyvcD0h7JLPCp4QSWQTxiAut3NSh?=
 =?us-ascii?Q?1PMwtPamvwSiB5+1M3cvexaVyQKCbu36APf8REhCjJG+SCwfiXYbISrIMxuE?=
 =?us-ascii?Q?IUtlCPD/D3y0nTdOEGSnWlNCAu29hvZ2O4xvFza544nIQkL7ZBcOxi+x9qYa?=
 =?us-ascii?Q?yN4SJXwQ0OUoHTXPimr0Mqnq3qoiFfBKOllHyeAOHUBMGun25godxXtGckBy?=
 =?us-ascii?Q?OhT+1aPJuOWIFtJm0x/BpFfx2HSyzQAhp0VT71cyQS3fQcl1zTYwlRKtJ91h?=
 =?us-ascii?Q?6CwuvDTEl+DQzUIVfGTZIALWfLzjrVLjfvlwFLV2y0dbHUpsWS9hNGgpEVbf?=
 =?us-ascii?Q?p5rBumo32txlw59lLHW8hPV7+lsT64N6kA/v47ndXronUx+/NmXNRQLSKnDj?=
 =?us-ascii?Q?cXgEz0BoHkmIcr0M5wtoaZUZ88yJGYrVMeGr5r5GVQG3mbekLGimYM+4Tqkl?=
 =?us-ascii?Q?CYVXBySXdjiUWHZJmtObFc146q1Jj7uk11CJpHL2om+YnkAtHjppEjkhw+q0?=
 =?us-ascii?Q?pwXCfPLhJYZpoMPvkpjXYXQCQ9d2pP158J+5QFd5PcWqcXm2pB7tjHtlskwb?=
 =?us-ascii?Q?co2nCLQXyxjxhchyOwTuqLZo+ziwDbRhl9oaKga3gVBanisIWACSqz4G9JCq?=
 =?us-ascii?Q?AAHb+fLMif766InK6jx06dKAxXvRwfcTwPUuTuSP3Qm3QgHUmemM5NR8iHQO?=
 =?us-ascii?Q?DJXX775YPBHEsFsLehBhBw18I/rLbkZ2vPAn5BqSuWb7DEz3LhevCHcpmLTE?=
 =?us-ascii?Q?6WCA0smsHB8sduG8oA6YV8Y6jnG7qYtZo1wyQG5vGAIGhZ5oEICSPuT7qnG6?=
 =?us-ascii?Q?Zu2+igZts1w8qehVyFsxYcv1SzXaF5N7tuKBMr0+zpimzx7wGvQ/AuEL+Wwo?=
 =?us-ascii?Q?5vUFLIUz/YE77RdRDbUpup7XuYB7sjr1Mww2NWc56fb3McbAj28QNv3EluYg?=
 =?us-ascii?Q?fmg+kwkJX/VMPOfGZmaRGeMFLbuLEWccAIX0bwFrnHz9/tXtdIpVqcXQWqrk?=
 =?us-ascii?Q?a9lCVwjYz98NdI0N1BwGGkpZEwPX1HM=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Ib+OA+YNTzOS6BM6sKBl4zZf60EeHIzcbaXIta/H9EAJ9Jh4vwRpxJ30o6NNcijMfUIMO9W5UbpYzVt1/HW5MqmdqTB3ocqpadtZf+zY5Y2WuouKdTcqJz7nnUzfznODF0wRE2JjVff3LsfBVZMKxla2qWhDPMZk3SsHq36jI5y2BIj1ZgMPNtZvVEjChUi+0/QIK0Yv8GufVirxLmoYBcXZ9Yw71NGoKG6xoHePledq0BmUNk5DTTQ9waGg+i0NawGiL3f0w9AI3qw6TNCGb5aTOvs/F9+/PRrB06SldjPsaO30AyDnOuZAKKhmhGnueRi2k/ZXjmHSvtcDdk85/g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da7a70e0-c461-44d6-e7e8-08de9196d2b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2026 15:36:49.9536 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wXnCO7igow5WGhdy+gCmwtQTqfySqqD4DJgBdgGKuVGLO2Y+PEfDuuKqFYMkRsUs0i1Fr0cKgClZInNRj9TpdE+vPoUbWb7r5GsIB0lhr3U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7161
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775230620; x=1806766620;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CgRaT+HvBx2aWMrt2yhF0ueJaGmlEBInpHDvI4wpLA4=;
 b=BiiCA28ykbbY3H6f2BmReYp4ymDg4qeD3/chbTH9KocRd+BmSiLXpv3+
 BTCO+zq2elHrKdLe7qY3GbHCrVo1Re+Gr5eBuUfrYhX/SOQoWkGbYsn4n
 VkjQtMSxMW8lF6H/6ZsN4gAWlc9OC5n3MTEkjd81ygLcjZG4R2OH6oDHI
 HS5DxKBqQ/0kzcklZjoAvew90ZN4ItbGYkM2YSbADGqRHfk80XUkxCEtp
 9sz/8BVwS3yjAFwNHKCFTPNk95p3IgQDnlhc4YbXEW7KM38H3W4A6c/Xn
 NAP4nU+GzUoXOcY52CelNS1q2AUJdhV70eprD9BO4vMMyaoBEhgy7BSv5
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BiiCA28y
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix read_dev_clk_lock
 spinlock init in idpf_ptp_init()
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:emil.s.tantilov@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:richardcochran@gmail.com,m:milena.olech@intel.com,m:jacob.e.keller@intel.com,m:konstantin.ilichev@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,lunn.ch:email,intel.com:email,osuosl.org:dkim,osuosl.org:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: A691A395D63
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Tantilov, Emil S <emil.s.tantilov@intel.com>
> Sent: Friday, April 3, 2026 5:36 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; richardcochran@gmail.com; Olech, Milena
> <milena.olech@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
> Ilichev, Konstantin <konstantin.ilichev@intel.com>
> Subject: [PATCH iwl-net] idpf: fix read_dev_clk_lock spinlock init in
> idpf_ptp_init()
>=20
> In idpf_ptp_init(), read_dev_clk_lock is initialized after
> ptp_schedule_worker() had already been called (and after
> idpf_ptp_settime64() could reach the lock). The PTP aux worker fires
> immediately upon scheduling and can call into
> idpf_ptp_read_src_clk_reg_direct(), which takes
> spin_lock(&ptp->read_dev_clk_lock) on an uninitialized lock,
> triggering the lockdep "non-static key" warning:
>=20
> [12973.796587] idpf 0000:83:00.0: Device HW Reset initiated
> [12974.094507] INFO: trying to register non-static key.
> ...
> [12974.097208] Call Trace:
> [12974.097213]  <TASK>
> [12974.097218]  dump_stack_lvl+0x93/0xe0 [12974.097234]
> register_lock_class+0x4c4/0x4e0 [12974.097249]  ?
> __lock_acquire+0x427/0x2290 [12974.097259]  __lock_acquire+0x98/0x2290
> [12974.097272]  lock_acquire+0xc6/0x310 [12974.097281]  ?
> idpf_ptp_read_src_clk_reg+0xb7/0x150 [idpf] [12974.097311]  ?
> lockdep_hardirqs_on_prepare+0xde/0x190
> [12974.097318]  ? finish_task_switch.isra.0+0xd2/0x350
> [12974.097330]  ? __pfx_ptp_aux_kworker+0x10/0x10 [ptp] [12974.097343]
> _raw_spin_lock+0x30/0x40 [12974.097353]  ?
> idpf_ptp_read_src_clk_reg+0xb7/0x150 [idpf] [12974.097373]
> idpf_ptp_read_src_clk_reg+0xb7/0x150 [idpf] [12974.097391]  ?
> kthread_worker_fn+0x88/0x3d0 [12974.097404]  ?
> kthread_worker_fn+0x4e/0x3d0 [12974.097411]
> idpf_ptp_update_cached_phctime+0x26/0x120 [idpf] [12974.097428]  ?
> _raw_spin_unlock_irq+0x28/0x50 [12974.097436]
> idpf_ptp_do_aux_work+0x15/0x20 [idpf] [12974.097454]
> ptp_aux_kworker+0x20/0x40 [ptp] [12974.097464]
> kthread_worker_fn+0xd5/0x3d0 [12974.097474]  ?
> __pfx_kthread_worker_fn+0x10/0x10 [12974.097482]  kthread+0xf4/0x130
> [12974.097489]  ? __pfx_kthread+0x10/0x10 [12974.097498]
> ret_from_fork+0x32c/0x410 [12974.097512]  ? __pfx_kthread+0x10/0x10
> [12974.097519]  ret_from_fork_asm+0x1a/0x30 [12974.097540]  </TASK>
>=20
> Move the call to spin_lock_init() up a bit to make sure
> read_dev_clk_lock is not touched before it's been initialized.
>=20
> Fixes: 5cb8805d2366 ("idpf: negotiate PTP capabilities and get PTP
> clock")
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_ptp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> index eec91c4f0a75..4a51d2727547 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> @@ -952,6 +952,8 @@ int idpf_ptp_init(struct idpf_adapter *adapter)
>  		goto free_ptp;
>  	}
>=20
> +	spin_lock_init(&adapter->ptp->read_dev_clk_lock);
> +
>  	err =3D idpf_ptp_create_clock(adapter);
>  	if (err)
>  		goto free_ptp;
> @@ -977,8 +979,6 @@ int idpf_ptp_init(struct idpf_adapter *adapter)
>  			goto remove_clock;
>  	}
>=20
> -	spin_lock_init(&adapter->ptp->read_dev_clk_lock);
> -
>  	pci_dbg(adapter->pdev, "PTP init successful\n");
>=20
>  	return 0;
> --
> 2.37.3

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
