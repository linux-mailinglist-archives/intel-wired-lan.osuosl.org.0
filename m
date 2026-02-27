Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yE2kGGauoWk3vgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Feb 2026 15:47:02 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F691B9301
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Feb 2026 15:46:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 879FE80EB6;
	Fri, 27 Feb 2026 14:46:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qv_tbAYXPCYz; Fri, 27 Feb 2026 14:46:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 724B780EB2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772203614;
	bh=PNBn4HZdv/3KoB8cATvfXIYMtA8uSnvvq427rwl5mOo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LJ6xxe6HpR8Xh0+/JgfDinMCsEPFo51gPlNl4YXDMqAghFFzDFOxHGR1/6stuOCa7
	 WBshqhutiqdslxbemKpW3nHDSEaszuLjPgZCurmDTFN+2O9D24gmz/dN85WhjDNpiJ
	 ablRq9j1FMDjNVozMjEzKb+cl3JKsmgoD88DA4xFCag5FEDEhWjqp6NbfmQIAVcREn
	 0Te9cICYl5CmIiuy9yLO9ssXDsoleMoUAQ7aTA2IJ8m6bW1kLtJF7Oxe1hxf9jc8S3
	 WxOTon1aR83HpcmW8VINYAWCagsRkH4nAALrf1AiJ6vereeJLnDnKnq1e6wzxGi6tb
	 iCb33yJ5CVXwQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 724B780EB2;
	Fri, 27 Feb 2026 14:46:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7B8C9131
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 14:46:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 616D280E80
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 14:46:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jgg1z8myk2Uq for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Feb 2026 14:46:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 62E2280E6F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 62E2280E6F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 62E2280E6F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 14:46:51 +0000 (UTC)
X-CSE-ConnectionGUID: 0FWATsEMSJyXw8XAcnxyRA==
X-CSE-MsgGUID: sl8uao2MRX+z9NzT4wmgqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11714"; a="98753574"
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; d="scan'208";a="98753574"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 06:46:49 -0800
X-CSE-ConnectionGUID: RuyeKUtkRZ+/GXpr8Sk4+A==
X-CSE-MsgGUID: wphG4fiXTQuSZRWeas0ldw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; d="scan'208";a="214759880"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 06:46:49 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Feb 2026 06:46:49 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 27 Feb 2026 06:46:49 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.30)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Feb 2026 06:46:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m8fEi/HBbrtSbqqKY84bjqyWQ+hSRUfikPHmUv5icFcPWGOPZ91ffgI0AmT4UDu10oTw/r4QIehC0ACZhDSbFJLzTZ0wDlR73tBNNDxoqKJAqwaZrWp9xCnCSjwqPz416Jy8zVQo/v07OKo+TR0unc466d7Mu8bJCU81+mcv+nvmXEtX0a3k9Cik20jRMMWlW3Aasbyh1XjalLAtnGmzvE3QgBZUdYExashf57rkn7amrJ9NaTcsYwVgxe5Rab2XAieXnBVSIm51Owd1l1lS3l783SQFHWOWiaCBKZdGdO3e/iqlp8KFZ7X68nTsXAa/9pfQfiwNbaDREIhyC7N7fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PNBn4HZdv/3KoB8cATvfXIYMtA8uSnvvq427rwl5mOo=;
 b=svP2RLpGjSB87hMEn/tiifCjtWONwFFRkZiZM4CSEuD1YTfaJ6B5Ru2hhKZLYaRVuyi3ZDqtH8QYRL0dFcCZsinyrDn5TeJLS95FVFxLG2MZESWnMkH+gh/4JhgG8/gqWLj9oUjIvhVcUOBUXj+u/2DCedfeI5zjIi4gtNH1dQ3U+/XvoESd9XywTlw+In2Zk2Gma8k+n/KoLpB+uZu6izhvaAFHFmQ7KN4KJD3UNNIpBNyaP7ymldv0Q/uD/hjpQONtDFQYRyJjOmlaBd5Qzx+Ziw4YBma6cvHm541noACq1KxqN89GTsmtHTaqU51ygbzVY0wusbwePhWM2LWq8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB9485.namprd11.prod.outlook.com (2603:10b6:806:45e::16)
 by IA3PR11MB9374.namprd11.prod.outlook.com (2603:10b6:208:581::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Fri, 27 Feb
 2026 14:46:45 +0000
Received: from SA3PR11MB9485.namprd11.prod.outlook.com
 ([fe80::cf2c:dcfc:b6d3:57ba]) by SA3PR11MB9485.namprd11.prod.outlook.com
 ([fe80::cf2c:dcfc:b6d3:57ba%5]) with mapi id 15.20.9654.014; Fri, 27 Feb 2026
 14:46:45 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH iwl-net v3] ice: fix missing dpll notification for SW pins
Thread-Index: AQHconKGFMsGP+O/qUOFdklay2O6uLWWqorA
Date: Fri, 27 Feb 2026 14:46:45 +0000
Message-ID: <SA3PR11MB948594FB98369E2FC7D6FC189B73A@SA3PR11MB9485.namprd11.prod.outlook.com>
References: <20260220140700.2910174-1-poros@redhat.com>
In-Reply-To: <20260220140700.2910174-1-poros@redhat.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA3PR11MB9485:EE_|IA3PR11MB9374:EE_
x-ms-office365-filtering-correlation-id: abd12ca2-1067-4fa7-13e6-08de760f07ab
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: MFRCzKAK/LbJrm/0hpsxCdc/8ydwUiR2UFPxh9a0i5fGh/iEyxnuSMxR/GA6IVdcbI3711GbqC439LJMARFG0guZeUfV7qbHUVgqkKLVK4qBi6nmb1pDYLjH0wUO2ZCZsFQeqEp1YQCI3X6+NyIFiRSzvqr97f4mkCWFlo0g5MrB9zUls/TfG15DvK/sh/ekpAHlnWTzLc3aiq9Co2v2xVHCMKRzvyK6rCNWNMenZQfIB1O1JJpRm0JtpHaA4MxTlhVNrn8OU5w7F8Xi8gUv40q11HDSDyRM9nTCPRGyNHtsERXkzusI0j4HGVT3V+m1BivjUIuuuDb9r/MuloHCi5b0u0QoAWC5NFsXfUgYojafjthPBPnxTVJ2W0T2I+a8mJt0rCLwfGpgOdFV5TKDv0shjy9dKk994MFk6idrHhKzoh5P2RqzYvXWsksvLazJLAcLvCqyqGHP2EFrPiURwXPJuvu2viN39NjO65ePkQ0ZS5RKdZsXAClxKk5/TJhQJaOXDy/sgm5SNz5L6Z+PlTrgCQ1IbOa7WWYVfF/5ZMmavR9zt2LdMIfOMpf+Tluicmnps8EdlRAMpNY7HaWY/4kzkier03rFw3HRKyaTneaagz1ICKJJRgo+iB5wuD4OU2vXwpoV+q3tGgJFjsg7TvSSDSm2H1qRuxY1i6uz0isNqCI3TgYtBi250MteYF2xdPsi/ZqtW3aaMrtOkTeGj0X2N6Chpep8qt2Kb1GEra4NAQ8iUEB9DwNqUP/dvDwnQ3MMc4QWVooir01CrhbWBb0It7rXXTtut5Pnrl3iuN4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB9485.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1Y3WFdWhEu5hQAvomSUwewd9j3iVq2vHlXcu0ARHzFyDXpntAp86zml6BqjW?=
 =?us-ascii?Q?qAfoo4dnetY7pu0cAqDdahWz5gEh90O4kkxToqf735E/Ez81zpUJ6h0AP7zL?=
 =?us-ascii?Q?G6fgGFYxMRRLQLW+treTtndoxn+sg/B0Y8KWICVOGfTQYSIXd7V9qjt4LpLx?=
 =?us-ascii?Q?3esfKJQu+gUQpJjfr7qIVt1wLIGR4MUme7DMRVhRCS5UdbawuB17ZvWHd54Y?=
 =?us-ascii?Q?JU82MUxmmnqXIxOls4ZvoDf+DIOG2Ge7jeWRlWpIXBv5cyq1mqk0b6fSZOoM?=
 =?us-ascii?Q?BF+qNEuq8ZZ6DPEtzxndYux0VnHxZl5OAhKC2xjFOeRLVFZxPXkIqp4L/QW+?=
 =?us-ascii?Q?DLaqh8EOL5aEnFLQbd2l11KPPtMpZuSPMd8ILVPe7VD0zN0mdvh6OKFWug13?=
 =?us-ascii?Q?ONy1dLKe6SKHwImgpqHBUQjT2NvSGT0KQodIhTnjf2wY+yoaJST2dL0+oegZ?=
 =?us-ascii?Q?cPP00I3iXYfLW5P4B79je+oFVDV+dyhKmc+6o+C3vsRctGjz35BrzDMASOXS?=
 =?us-ascii?Q?wWavJ/hmybli9d5pi/83fH6U6F5z4uqxZwreIfrGvjuJG9CDIoUZFPJ+lZ/X?=
 =?us-ascii?Q?0EtcAI20sxWagVVezkhPRdBT+iHvrx9UJSM+d7AwOnBm1spBdUsFu2kAaJFq?=
 =?us-ascii?Q?8Rmga1pBhK33K2VuhgV2VxiGeFuWPvFSWKsEo3Yy7grnPX6WInM8Nf9O7Z2A?=
 =?us-ascii?Q?0jtGgaEQiwVcU5cPaHKnH6ZcOrf1hyP0R7UDm0q1Om+FtpdxjlHBzIlx9hOC?=
 =?us-ascii?Q?+PQxdi4y4/oRoBzv1FQbaui+s5X454RaBL3umxK64j0NSiX5XxXyFn2prY61?=
 =?us-ascii?Q?aSb6UmtbipE0QEgYg4r2cvzVn42RoIzA6CYyfL6UhOv0U+r/YiwLxaRu6T9z?=
 =?us-ascii?Q?2+qqAMkebEreOKyhjFbfMWWEPWcQIV2maYhLkZ10tbTMYbB20lNrFDe0DIO0?=
 =?us-ascii?Q?FaOQMi9W0+0Y1oBG8jxEtgtvkzFjTeZvfRBdlnNL/Zl71S2GgnscLSlO6xYE?=
 =?us-ascii?Q?NNT33MxPpwdWGkyKAzmqU3N+lpNjBkuLI4y9qifj3tnsSeUKcMIzAVUnGKlD?=
 =?us-ascii?Q?VtIpWzz9DNVlFjvLy5evGqzBgRpXfniHPmf/NTQ/48ONtsu4bVDLTbMx+pZi?=
 =?us-ascii?Q?BjTTe2+UMlt+VmYxt0etpmD3o3LX8s/jTFfhPkEJ4kTgfwybdF1e4+Dtk9Us?=
 =?us-ascii?Q?vMiCUvMs+lfccfPjxNGKU2eWE8drTuqAB5jDRGUTv/dWkzFmI1co2HxConXh?=
 =?us-ascii?Q?T8/iCDhDkawv8aH6V7a7lILeofoonoTfVC/B7xY+lf8LPTwhR1r0NiPiNhMb?=
 =?us-ascii?Q?gVxrvEriMlrLBG6XvbfzvWwsRgBl+45P1lOduwof+THv//ec5Ptjsikp3uxL?=
 =?us-ascii?Q?udLMHUyr+hE3Fc5jOH3ilA1V6mDNLbVJF+2cJKYeEKmhUiNcd0U1MpLuqXPO?=
 =?us-ascii?Q?9TAOphP8VPCxzPyBQhlaUagKvwE4Vkj42PMOadnUMIxXe9jZPQQEMIqHTxBP?=
 =?us-ascii?Q?UPGkQOSG3bGk4/EpzDojI2cDMRJ1BYYA6mTFt8l69PP61Ac0fxnb1qTDCvGf?=
 =?us-ascii?Q?ciawO9Xb5duomUk0ReYTROJg4fLFFQE7GwMf25Vj+CUWtI/PcRrOSdsT0qm+?=
 =?us-ascii?Q?mMTyW9thMpCyUBngVKeQkwmWDjSWQU39qDEXfr7T9VkfDyKFIT6aehn61K1G?=
 =?us-ascii?Q?I8DNzLGreavtC9rJAamfnj5CH/2975OrJIv8lKpJeXxSqdWEzAWcfS0aZ3Nu?=
 =?us-ascii?Q?YuAw5z7USfPAdSV51iRauf9W0S62IW0=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB9485.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: abd12ca2-1067-4fa7-13e6-08de760f07ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2026 14:46:45.8000 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G8KP5bNGy007g5SEaR1d5tw+r90qZxUMW4QdHIOiY/KDHmTMsututy85NWQlEEIjxdvOM9lwd7SRyeve8m1X4kidsjm69hT6JcAogUnhFxo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9374
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772203612; x=1803739612;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+9dKlWa/ygZRKAzMOOVYu+zpTf2RR3gvhr6LrOJnqPw=;
 b=Sn2zhYrUG84TVfjNZx9b1kDQmEM86KduGvtKz15MGFAAS+yAtOZ2j7KF
 daJTn/ubfdDQX4gaMTscctITWtP1iLFkHJAT79Nhw7DwUdE/Q3fejjHcd
 jSUkGst3H+Vkyj9gP6kkjNdUojy7waIG/sKIeGEp1DYucEBzflTs2wep7
 kPGVgZnma6hka/mSZ26nH3w2nYg2p+J/XNj+3ucL/zBHbx0O9wZsA9/1J
 M4ocVond2YsrZsi4YT7jCPtAIOrVERa8kddfHMReD8QMSsGWV0uaqkbT9
 agjcUVkLqOKCqNbOLcxadQcpCYlVlG2j56Q4n2N+N3hFWMUAntBfzyix9
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Sn2zhYrU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] ice: fix missing dpll
 notification for SW pins
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
Cc: "Vecera, Ivan" <ivecera@redhat.com>, "Kwapulinski,
 Piotr" <piotr.kwapulinski@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, Eric
 Dumazet <edumazet@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:piotr.kwapulinski@intel.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,SA3PR11MB9485.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 90F691B9301
X-Rspamd-Action: no action

>From: Petr Oros <poros@redhat.com>
>Sent: Friday, February 20, 2026 3:07 PM
>
>ice_dpll_notify_changes() sends dpll_pin_change_ntf() only for the
>direct CGU input pin stored in d->active_input. Software-controlled
>pins (SMA/U.FL) are separate dpll_pin objects that wrap a backing CGU
>input, but they never receive a change notification. As a result,
>userspace consumers such as synce4l that monitor SMA pins via dpll
>netlink never learn when the pin state transitions (e.g. from
>SELECTABLE to CONNECTED), even though 'dpll pin show' reports the
>correct state on demand.
>
>When the active input changes, also send dpll_pin_change_ntf() for any
>registered SMA/U.FL input pin whose backing CGU input matches the old
>or new active input.
>
>Fixes: 2dd5d03c77e2 ("ice: redesign dpll sma/u.fl pins control")
>Reported-by: kernel test robot <lkp@intel.com>
>Closes: https://lore.kernel.org/oe-kbuild-all/202602200046.SGwK2tWh-
>lkp@intel.com/
>Signed-off-by: Petr Oros <poros@redhat.com>

Petr, many thanks for your patch!
LGTM.
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

>---
>v3:
>- Add kdoc for the helper.
>v2:
>- Extract ice_dpll_sw_pin_needs_notify() helper for readability,
>- Move loop variable into for() scope.
>
>drivers/net/ethernet/intel/ice/ice_dpll.c | 29 +++++++++++++++++++++++
> 1 file changed, 29 insertions(+)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c
>b/drivers/net/ethernet/intel/ice/ice_dpll.c
>index c2ad39bfe177db..a9db85a1026388 100644
>--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
>+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
>@@ -2462,6 +2462,24 @@ static u64 ice_generate_clock_id(struct ice_pf *pf)
> 	return pci_get_dsn(pf->pdev);
> }
>
>+/**
>+ * ice_dpll_sw_pin_needs_notify - check if SW pin needs change
>notification
>+ * @p: pointer to SW pin (SMA or U.FL)
>+ * @active: currently active input pin (or NULL)
>+ * @old: previously active input pin (or NULL)
>+ *
>+ * Return: true if the SW pin is an input whose backing CGU pin matches
>either
>+ * the old or new active input, meaning its state has changed.
>+ */
>+static bool
>+ice_dpll_sw_pin_needs_notify(struct ice_dpll_pin *p,
>+			     struct dpll_pin *active, struct dpll_pin *old)
>+{
>+	return p->pin &&
>+	       p->direction =3D=3D DPLL_PIN_DIRECTION_INPUT &&
>+	       (p->input->pin =3D=3D active || p->input->pin =3D=3D old);
>+}
>+
> /**
>  * ice_dpll_notify_changes - notify dpll subsystem about changes
>  * @d: pointer do dpll
>@@ -2470,6 +2488,7 @@ static u64 ice_generate_clock_id(struct ice_pf *pf)
>  */
> static void ice_dpll_notify_changes(struct ice_dpll *d)
> {
>+	struct ice_dplls *dplls =3D &d->pf->dplls;
> 	bool pin_notified =3D false;
>
> 	if (d->prev_dpll_state !=3D d->dpll_state) {
>@@ -2477,6 +2496,8 @@ static void ice_dpll_notify_changes(struct ice_dpll
>*d)
> 		dpll_device_change_ntf(d->dpll);
> 	}
> 	if (d->prev_input !=3D d->active_input) {
>+		struct dpll_pin *old =3D d->prev_input;
>+
> 		if (d->prev_input)
> 			dpll_pin_change_ntf(d->prev_input);
> 		d->prev_input =3D d->active_input;
>@@ -2484,6 +2505,14 @@ static void ice_dpll_notify_changes(struct ice_dpll
>*d)
> 			dpll_pin_change_ntf(d->active_input);
> 			pin_notified =3D true;
> 		}
>+		for (int i =3D 0; i < ICE_DPLL_PIN_SW_NUM; i++) {
>+			if (ice_dpll_sw_pin_needs_notify(&dplls->sma[i],
>+							 d->active_input, old))
>+				dpll_pin_change_ntf(dplls->sma[i].pin);
>+			if (ice_dpll_sw_pin_needs_notify(&dplls->ufl[i],
>+							 d->active_input, old))
>+				dpll_pin_change_ntf(dplls->ufl[i].pin);
>+		}
> 	}
> 	if (d->prev_phase_offset !=3D d->phase_offset) {
> 		d->prev_phase_offset =3D d->phase_offset;
>--
>2.52.0

