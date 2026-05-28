Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2NaHKAk0GGq4gggAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2026 14:24:41 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D805F209D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2026 14:24:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C69F98203D;
	Thu, 28 May 2026 12:24:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q9gURtdUkNNr; Thu, 28 May 2026 12:24:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC4FE81754
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779971077;
	bh=NcP5AAHfvM9rfByWRs4zCj6awbnuPKHym0lYmmCJ7c4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EEJkt04jwkRv8o9Opmtv5UBfi0n7XdbkmIbhLhR9glL8sDW5pmFEAFwnB/hJ5XRqD
	 4TDD1yUivGCZ8NYBsesuMrBhoMM7780AqNXTZuE15sS65IBxQBQF7cE5hezcJMZtPY
	 oiT3PBOEUMhFRn2XwxxEazZrrMpgSGaxdRZxBYUOV69zDk7vdy/k5IQFL5yGSMOXRz
	 qlfYX5KLDBl1Esenc3S1HOWNcP7uG9ns6f4KA2yccLzpO0qNvfWGraEBhzQ0cDn78r
	 5Oz9/3YK/HHOp/91/7KaSKVVQFKfbfoDO3zpsn1V49ax5z5dMLZAxBq4f/UJUzpfCh
	 VpSNmds3nrhWw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC4FE81754;
	Thu, 28 May 2026 12:24:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 261FA288
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 12:24:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 19DEE40376
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 12:24:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s92QRxU8NZ5j for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2026 12:24:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2AEEF40375
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2AEEF40375
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2AEEF40375
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 12:24:34 +0000 (UTC)
X-CSE-ConnectionGUID: MY2ABbuYTx2ORcsN5EQbGg==
X-CSE-MsgGUID: amQHoHaAQguihrpcd+0ulQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="79844897"
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="79844897"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 05:24:34 -0700
X-CSE-ConnectionGUID: +4eYuljZRhqVlWA4yQdFlg==
X-CSE-MsgGUID: q3aK8Sf7RvS+niwHZ8PpWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="280644879"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 05:24:35 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 05:24:33 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 28 May 2026 05:24:33 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.42)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 05:24:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zi4MWHOsDXMlLehNSYcM6nlI62wur0L/n2rzk143iANTtFLVyh6PRsWK+mwxSkmf+KAFE6fLF0rPn/A1Qrkrq2fvEoKap9hojNPaIpiaMLT7TfceRyYIx5jMmCnRdk5AnHuV6jaPvPPPPZlLVx4WTDPygJ9hfkyqMlxeG2pamCiCDf7VsNfSi3idVcdcUMPrVBgW26v0Q5gapLF7nHwYUmcdoxeI2tiQ/KP7citZiZgHPlZRd4ZYedsU5luxbTvgwxiWdf0DcRPjXJld3aKSqqrSYIe7swmSiZzIuKS9/gacaDUd90HrXnCG6YEUutDU/gko81NV+OBkH0LjZKuZQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NcP5AAHfvM9rfByWRs4zCj6awbnuPKHym0lYmmCJ7c4=;
 b=Ph1MVX5Lnfiu36j3lvyO8wpI5eEWu9M1nvtQRVLDlEq1xExiM7A7rtSUDDbTAblILPKXoftbCuQ0Oa3E9KcQXvApY88kavVx9Ec5Hbn1sd8o482/eoJLs/gL4L7Ba3o06o9Oul2ySc9gEU+a/i7oQHoP/hMgUFhyYuzukIhrl1heA2sICTMI14+rENVRqlmU1ZbQlSWyGXBjKGT0T9DUtjCLn+ECY++OB8+uJEdPwt+dSkJ/8zdQYcJvQOED2b4XqtBKvNRJmpWUyPDXKnCGUXs17HayHoOzrDgjfAn80xWkMGhDtlgk35ZGK2rbMaWlnymlEBNWPHvjAkODiaSElA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.14; Thu, 28 May
 2026 12:24:27 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 12:24:27 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "kuba@kernel.org" <kuba@kernel.org>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "edumazet@google.com"
 <edumazet@google.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "horms@kernel.org" <horms@kernel.org>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH v11 net-next 6/8] ice: implement CPI
 support for E825C
Thread-Index: AQHc7POk6TbJgGf/UEa9Z9x9qysYnrYjX2yA
Date: Thu, 28 May 2026 12:24:27 +0000
Message-ID: <IA3PR11MB8986E5975D2800EAC6132E92E5092@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260526093419.639220-1-grzegorz.nitka@intel.com>
 <20260526093419.639220-7-grzegorz.nitka@intel.com>
In-Reply-To: <20260526093419.639220-7-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CO1PR11MB5105:EE_
x-ms-office365-filtering-correlation-id: 623556df-95fe-4027-42f2-08debcb40f69
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|38070700021|56012099006|3023799007|6133799003|11063799006|4143699003|22082099003|18002099003;
x-microsoft-antispam-message-info: +O7xGbzP7FrfQiEMR0mWTaxDXsFtNQj7jVdSgNKd1qQddhmWjqsMevgB8snr2jCwgs19Ns7nxpYI9O4RiE7HHgiP0snxHYre5gDt7NW2R9FyYhc53cBEUasgUDIUuTOV4kEHunXdZCq4LzitPOhmQ9TsKmNerspL4/+WndwSSdIO9hRhap4UZ/WecL+RA2WNlWAn+8fbvOYAEFurB2/rpY2UnDzbgXzNUG01cPRGhzHPSj7XYxUzcXqTTx5+nN4dmfsLhdLZqNtviW+J99PF27CvdwC7BJoItQ0eAvW8reRaGswn98mud1BWPp6WOQ+jrVFP/k0zh+f9JD7bCYwo5aNtqliUDV06PKgWX9uS1dixkqVYyVceBVNbNxswT5kR+5XbeRH6EazPR167odqH29ZqjCyv8YeNPAP8AUcBwY+Y4BZyF3GMMuhGdBw2m8OL9M1Knkjqr6FHijXOJXmcNvi9wAFtr+LoAGSyG8t/wcjpgU/cBc1WZJFyyi2uXj63Wqwl6KyVevd/h5/qPwrm/c+Z2iX6Y29Zdc+ATbbxGf+An/+GDjtWgl7fIfZGrvaO3lSGnOnefguzujMXqJNoGjX/nFmROH7MKolBAqlg7sMSd1+UqawVBD7bKT9F2v1Z/F4/mKaks/YDqTlku3KR2OZqNudeNbVftK1I1Q72BQPHggW5gjQX13jW+Z6H+6PLKjATNaVFW8Ry7gRD9LTsZoPika8IndeTapoN84JPfT+HkGkurrAOZLTdd+NuPxxF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(38070700021)(56012099006)(3023799007)(6133799003)(11063799006)(4143699003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rrbKTsCAEc9x6zd0bFhfJ8uTsw/4DCRijxIUh9GGFjuLT82/CPcH8xyACu/c?=
 =?us-ascii?Q?i0LvmuRtS5fHmP0T5E+b7in23TCH0Mvr3+xajmddMmZXdXGhlwSp9h1wJlp9?=
 =?us-ascii?Q?EHnxxTsI0sjAdDTzqvwMh8SlRH3c0Z3XEv9JInzDIsPlO8pi3HNjcyxzj7X6?=
 =?us-ascii?Q?aACfulMhgrDXWO21P2N5+IgtX+R/szsMFoc7bIgkHYr1a2PmidMcelCVfIhK?=
 =?us-ascii?Q?7ks+MFk83eIYNANpMjCPTmllOAJ29KRA06UnJgpnQJ3hv/p/xwBTPib4sSCO?=
 =?us-ascii?Q?ahCPTe+eV8N1PpsGqJs07NubPww6cABjA/oi3BPcZjWGKG0XKSXm1gQrp+eY?=
 =?us-ascii?Q?TANH0rKD8UqsP3yPQWaMHaLtu9AXrhDtVC5DEkmkK5hJncvytXdIikCgoRvC?=
 =?us-ascii?Q?yejYc9O3zj8Hu9Bich8nA5njddCe8ELJmmMLpeLbFV/G4klOeymgPIZs2PYj?=
 =?us-ascii?Q?+Q6/P0s6iOUs9Xbgey5LdDbCdW4qoMm59b8fm98nHcY1cS2n5/7j8M+QDKuM?=
 =?us-ascii?Q?KzEn1vWOlSx3hV3hkKfB808pwDG0u3HJ93M+iC7HPG7716XivaQmJt8rz3fI?=
 =?us-ascii?Q?Y2i0qvPmoDg3df9zpxyOwLpzNUCZilzbuXW43tL5rvCRUzvoe6AvGiWcK6M+?=
 =?us-ascii?Q?t0lUMD4Nu0WKUyb+XvfInMCqxvQa7PZMqUhm8I0n8ls7+g8zcXGsNzcE8QXa?=
 =?us-ascii?Q?jEjycyOfNo1Y+Jn83s8aO4Ukp3ZpBYEVTW/GtMsApZXJZJasyhsMBtOJMVRM?=
 =?us-ascii?Q?ZMguioxri7ne0NBZB4UZMeGuxnM34Rtbb7g8w27pkx1ZBiuW+Eg2QWsa1g+j?=
 =?us-ascii?Q?uD9caeQDHB3Mn7whiMEJHKtykjvy4hzsonT8+sl0GbaWX+rP7MhKN6P4b3EL?=
 =?us-ascii?Q?T0FMh159zEWDqSOf3JD1kIJY4pG2noMLPeIEYmwxBH3S2xY58bOvtPYKnyXk?=
 =?us-ascii?Q?bLx6ti1K7BjLkkYaxm1D8KDzJHShVL0EbEt94peA/B143j7d3sxZL7KeOd/Y?=
 =?us-ascii?Q?Q4dZwdZT7Jpl2fAkDp8J0NGqkpiuaX4L4woJi1bv9UdL7SXXJ8bQ8i2OyeOW?=
 =?us-ascii?Q?7g8kGEhbHi3ziyjxV8XaxJ1+HNkQLjRp5Qv7ywYqvrcTYNxYwwNVIm9c6FE6?=
 =?us-ascii?Q?8NOGthkvflRBy+pr0Lv4X70Lx7ubk67l16am1TFzIPCXyKaUJXpMsD4LxpFE?=
 =?us-ascii?Q?W7IZKl6ClUatBhan1auq6Cf7ZYjlb/wq4UqsnXCAlZ1j3WnYbequbIzLlM+0?=
 =?us-ascii?Q?pUyg0vcvggBwP6LOYD4B+KLPYNmuacdwak6UkF6kdhFnpBePj3tEHoPlH6eI?=
 =?us-ascii?Q?0u3LPQ2sgZzvGOwhoBBvT75VXGqAH/MtO3U0H6+QtNReBBp9dVmCG1+mUgcx?=
 =?us-ascii?Q?qsmN6r5apW2TJKlIS0Mv/CpuUY8svRcUdaSmRCmm6pnzV12PbGohsRQXCjZ3?=
 =?us-ascii?Q?93hVF+wDagI+gTS9IYA2sffAOv+t/cWF3CgmFysxKcBSed18qhrUKlMmtoMq?=
 =?us-ascii?Q?GHfmRTLSxn3gbIy1BwGj7/rzcmZ0NV5AZeq6G6vXY6i856UlJKGRXAv/GeuF?=
 =?us-ascii?Q?Xs3FrVjZkV4uYPM7qEkYb00h7EXr9RXwl8Xv9DSA3Pe4d2XqmpSRHc6+uuDv?=
 =?us-ascii?Q?UYBvd7omdwXugN/ppGNrS4gE/aoF4VSO58OQ2mIFC8cyIJEOeRYl2am8j6zj?=
 =?us-ascii?Q?6+hFTAyMCysFjBHppLWRsdb59dovorUVLaKeJGjtER1eexFy6F0fHeXlLXN0?=
 =?us-ascii?Q?vcXOzNzzMaEQVUR45ryGlBIrzOtorJU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: W7qmvw/mds3F7osXNDmGZHa8a2lc5BUEu8nYYodaWhldoUUlEeT9G78AUtBs3A6yGVnbbUrnIHENbjSOrfGrMJ0lFVTQUItY74J2ND9nmnPRxS+lw61mHQSdAxvtZYbtdRXxVJ0clgyL25M0NSfflBwgBxB+ksaGBfV7FS8Sr62XI009X8hrThyGbn8B+V494Yg9d92fpLrp3iJGgVwS9utAtU5GRwqO3tsD7NKMzzTW+9u14oZzUAKxysdQlw/q8pKGnR0DQ/9i5Un4sSpQVOvxkBJVrtBNyNedMg4a30PTFNBLSpIE5VXPk1SBJOF7B6vR+VXXO6URGhGracG/0A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 623556df-95fe-4027-42f2-08debcb40f69
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2026 12:24:27.1366 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Pv0lG1DKcl0ZERh6d18MaIDv6XRE25iLj/LSUMvvPX59GiT/XgPis0bxO3AZ3CCdyvWEfhpMAsrkN0+uop63q6UgcsGwP6uknAoBAsQ5JfE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5105
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779971075; x=1811507075;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=izvz8rgFj4MMOHQuIYZb2Iu0HhgFptA2ZBzvhnFzHu8=;
 b=Tq9SlrT/DkfupPN+OPUG9MnkY2/JcQE/0ReVlRTE1BrkgPL9G7Dm+W1J
 JLZOgMLKLNWVoO7aEn4E68zOj48p+7QKSiIPDmAWbBBKzfTQnSjFt6BrF
 3x01SgbnV0LWbJyCeU2dsn+vN5JSpMwb5RhnKNCn4HMx68FIv0zQmMf82
 GDFADm+jeJahLkJCnpx+HE+huOr5HIBCOnqYO3Z1x45/YM1PAmGj/zEVr
 dwFwqUatZ9PuXxB5qSk3vNmzYu4RBlK3VjUbY3EppfJONUSFFjBbVDt46
 FrwWzik5p9Xdq8UQW9sywQvgEEtT9k65ih47wXMPXNQ/IzfIKFA6w9F1O
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Tq9SlrT/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v11 net-next 6/8] ice: implement CPI
 support for E825C
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
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
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
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: E3D805F209D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Grzegorz Nitka
> Sent: Tuesday, May 26, 2026 11:34 AM
> To: netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> kuba@kernel.org; jiri@resnulli.us; edumazet@google.com; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail.com;
> donald.hunter@gmail.com; linux-kernel@vger.kernel.org; Kubalewski,
> Arkadiusz <arkadiusz.kubalewski@intel.com>; andrew+netdev@lunn.ch;
> intel-wired-lan@lists.osuosl.org; horms@kernel.org;
> Prathosh.Satish@microchip.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; pabeni@redhat.com; davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH v11 net-next 6/8] ice: implement CPI
> support for E825C
>=20
> Add full CPI (Converged PHY Interface) command handling required for
> E825C devices. The CPI interface allows the driver to interact with
> PHY-side control logic through the LM/PHY command registers, including
> enabling/disabling/selection of PHY reference clock.
>=20
> This patch introduces:
>  - a new CPI subsystem (ice_cpi.c / ice_cpi.h) implementing the CPI
>    request/acknowledge state machine, including REQ/ACK protocol,
>    command execution, and response handling
>  - helper functions for reading/writing PHY registers over Sideband
>    Queue
>  - CPI command execution API (ice_cpi_exec) and a helper for enabling
> or
>    disabling Tx reference clocks (CPI 0xF1 opcode 'Config PHY
> clocking')
>  - assurance of CPI transaction serialization into the CPI core.
>    CPI REQ/ACK is a multi-step handshake    and must be executed
>    atomically per PHY. Centralize the lock in ice_cpi_exec() and
>    use adapter-scoped per-PHY mutexes, which match the hardware
> sharing
>    model across PFs.
>  - addition of the non-posted write opcode (wr_np) to SBQ
>  - Makefile integration to build CPI support together with the PTP
> stack
>=20
> This provides the infrastructure necessary to support PHY-side
> configuration flows on E825C and is required for advanced link control
> and Tx reference clock management.
>=20
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile      |   2 +-
>  drivers/net/ethernet/intel/ice/ice_adapter.c |   4 +
>  drivers/net/ethernet/intel/ice/ice_adapter.h |   7 +
>  drivers/net/ethernet/intel/ice/ice_cpi.c     | 362
> +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_cpi.h     |  58 +++
>  drivers/net/ethernet/intel/ice/ice_sbq_cmd.h |   5 +-
>  drivers/net/ethernet/intel/ice/ice_type.h    |   2 +
>  7 files changed, 437 insertions(+), 3 deletions(-)  create mode
> 100644 drivers/net/ethernet/intel/ice/ice_cpi.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_cpi.h
>=20
> diff --git a/drivers/net/ethernet/intel/ice/Makefile
> b/drivers/net/ethernet/intel/ice/Makefile
> index 5b2c666496e7..38db476ab2ec 100644
> --- a/drivers/net/ethernet/intel/ice/Makefile
> +++ b/drivers/net/ethernet/intel/ice/Makefile
> @@ -54,7 +54,7 @@ ice-$(CONFIG_PCI_IOV) +=3D	\
>  	ice_vf_mbx.o		\
>  	ice_vf_vsi_vlan_ops.o	\
>  	ice_vf_lib.o

...

> +/**
> + * ice_cpi_ena_dis_clk_ref - enables/disables Tx reference clock on
> +port
> + * @hw: pointer to the HW struct
> + * @phy: phy index of port for which Tx reference clock is
> +enabled/disabled
> + * @clk: Tx reference clock to enable or disable
> + * @enable: bool value to enable or disable Tx reference clock
> + *
> + * This function executes CPI request to enable or disable specific
> + * Tx reference clock on given PHY.
> + *
> + * Return: 0 on success, negative error code on failure.
> + */
> +int ice_cpi_ena_dis_clk_ref(struct ice_hw *hw, u8 phy,
Parameter named "port" in .h but "phy" in .c.

Everything else looks fine for me.
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>


> +			    enum ice_e825c_ref_clk clk, bool enable) {
> +	u16 val;
> +
> +	val =3D FIELD_PREP(CPI_OPCODE_PHY_CLK_PHY_SEL_M, phy) |
> +	      FIELD_PREP(CPI_OPCODE_PHY_CLK_REF_CTRL_M,
> +			 enable ? CPI_OPCODE_PHY_CLK_ENABLE :
> +			 CPI_OPCODE_PHY_CLK_DISABLE) |
> +	      FIELD_PREP(CPI_OPCODE_PHY_CLK_REF_SEL_M, clk);
> +
> +	return ice_cpi_set_cmd(hw, CPI_OPCODE_PHY_CLK, phy, 0, val); }
> +
> diff --git a/drivers/net/ethernet/intel/ice/ice_cpi.h
> b/drivers/net/ethernet/intel/ice/ice_cpi.h
> new file mode 100644
> index 000000000000..f73329237a7f
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ice/ice_cpi.h
> @@ -0,0 +1,58 @@

...

>  /* Port hardware description */
>  struct ice_hw {
>  	u8 __iomem *hw_addr;
> --
> 2.39.3

