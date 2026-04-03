Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uOlABOTmz2kS1gYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 18:12:20 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 501E7396224
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 18:12:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E9994117D;
	Fri,  3 Apr 2026 16:12:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wViOSoK3MHKa; Fri,  3 Apr 2026 16:12:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA3DA411F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775232736;
	bh=qUIcfjIq4k203fhYDrpT5TQiRRN4LA179aX37/F+3Gw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Y+APgnLRMNOTzyYQnfmFmQR/ULaycMdayFAUxamgZCR6Lx9un9GiSuBnE+cvvXJES
	 0uRbcxLAXa+tvm7b8+5WUwdyF9QnFKsTgarO6WgzLBtQiMrNbqI9IvuFuObNqok0da
	 p4ul3K1chB1R3sWg4iqG1iqdFYbrJ0ZSIH7tmaFAxJOOqgvnrzbnEIMlASzPOvI/EX
	 vovIvYXdozlPUDZQhN1pYv52UmQ021cjqZzn5eHPd986UmpiuMavC/ta1FXhhjn6/B
	 XgB6yOm14ASnzGEp/8YD973yU4ZkhX0i8ib/WyYdc7LnZ2vW+/34wFzOXpZK6eH357
	 IIldVmecRMj8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA3DA411F2;
	Fri,  3 Apr 2026 16:12:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0453F2CC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 16:12:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EA192821FD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 16:12:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w6HI_33R5aSx for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 16:12:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C1AAC821F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C1AAC821F9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C1AAC821F9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 16:12:13 +0000 (UTC)
X-CSE-ConnectionGUID: 4GV3rfzNS86alEG46rrFEQ==
X-CSE-MsgGUID: uP4ImkxCQ8eW3kxRW7kg4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11748"; a="87749410"
X-IronPort-AV: E=Sophos;i="6.23,158,1770624000"; d="scan'208";a="87749410"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2026 09:12:06 -0700
X-CSE-ConnectionGUID: mLLh+3xlQkq/ZbAi7Kcwmw==
X-CSE-MsgGUID: LIhp7mWDQRmyfGJpW+fGOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,158,1770624000"; d="scan'208";a="232090621"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2026 09:12:05 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 3 Apr 2026 09:12:04 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 3 Apr 2026 09:12:04 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.70) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 3 Apr 2026 09:12:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E0NLoVGe0fipE9pKfg8S/5e3mNE8yARIOnkHb0dTxezUQXPT1HQIxQK00IlwxOwQH5z9BWDcufPvGRm10+/3fcldJ9PNT3QGYfQZ9Dm1jEZPKVVE9gmkEvyjnvkwVNdb76fvVYLr5/4Ca6qk0oshAicyZjFmNos+5tpHcOxmp4ABBBUr1a0htloQgd3m79/mNgxSFsUB7mOjMHMXl5h0r79fC2f9RiqAkG19oh0oOTQVvQwCuO9MgUfKVEtb3eOztgCBoDECq9D37vZMlBOMK9X6OFMAo1Rla9fwPPhLmzIpWUTtv+q92Vi8/a5IbsTP1lHDFXgooUaqG4j03XKJrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qUIcfjIq4k203fhYDrpT5TQiRRN4LA179aX37/F+3Gw=;
 b=axX2Xqyv809CFJr+/4fwIyOgYKrEtBuvy8VfjuzRdFwy8/s/1Q5VGRkXUw4AGcEuzIw2Uu5qr4km+Hy6bsmqnjrLYBUKiYAcC0fzZaAs29zDPmAmytjwxMS4dfBdUQOam/Wf1CFpuHHROuBDUjV7mUdoWJYSvOUEDNyJVUdOq78AA7OvDBD3lLfQW3JKTWBwQk8Gra6xJ9A6d89faw27M81aBMG7T8dhET4HE+CrF/5NT58Cifx0ZvUs2h3T8D5fTIiTT8UC9wSiKuLE0ts8+Uy3d0OniN+PtDILmMpeDjZQejLHhyTYFqQdid6JUDR/vZob3JMVTNcZ0U9GqeQ5DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SN7PR11MB6850.namprd11.prod.outlook.com (2603:10b6:806:2a2::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.18; Fri, 3 Apr
 2026 16:12:02 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Fri, 3 Apr 2026
 16:12:02 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH iwl-next] ixgbe: fix ITR value overflow in adaptive
 interrupt throttling
Thread-Index: AQHcvbuz3Haktp+Z30ue4HzNqLDETrXNXWKAgAAvg0A=
Date: Fri, 3 Apr 2026 16:12:02 +0000
Message-ID: <IA3PR11MB8986472BF64AFBF2191A381EE55EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260327073046.134085-1-aleksandr.loktionov@intel.com>
 <20260327073046.134085-11-aleksandr.loktionov@intel.com>
 <20260403131857.GB113102@horms.kernel.org>
In-Reply-To: <20260403131857.GB113102@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SN7PR11MB6850:EE_
x-ms-office365-filtering-correlation-id: b872212c-c22d-4c79-63d9-08de919bbde4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|22082099003|56012099003|18002099003|38070700021;
x-microsoft-antispam-message-info: zSgiK3Ff4S5j21iSHRaW6K86b6Pprs6rNHcmCljTiesAizTX4lw1GpnbIPSKhmM//H0Ka3TY5kJXqLozOdCIOkmwUXYdEgjrU6LqJhqbw+joi0hDdig4+xVecfVc15ZbhjXRjmuTGHb+XBocFelFMhb2TT3Ike3pgdtksj1h4pFHu911oPjpRdmP125uJE6fJgXpyZSSeO1CEmO+CntmSw6ZV0ko0JJOkhxMSrO6C5HH3QpWmO8GI3kbAjZ888oB3JvyqJFZHGWGtHkEDVWDqaqNuJQj+nLPK1aiGj3ABFDCvbzoCIA6m/uXXEm8Z47LbcOM1lbrwlGdAZECPAEB72+4xD1YTG2p8tUiY1NUBUyq9yciWE55R+wEaZLraWs5du1J5SGDP1cYQYDYYw5iT/jBQKm2gllk+mSSurcAey/9deQtAn+60dCZKnN6ksMrBtGUjxmpzTz/t2bFSVQurkeAyJKqtfOrXNla7304kgUJjhBmcaVULxCsvzAw7tg6WAnlOhajZpzfukTgm7z0tAqUfKjyVfreBAeaTQ0nSXu2z1KywxOHmlNN8B/6PAOdS57krRKlbrBVJ9J3HIzcwRQ1cI7xwH9kGGWdursOF7C3yPRVWT0taiH0Ft51FHaH3KNXIg+ilMhk4S+KB9ujFnN+ZmerS60zHeRABpw6vl9Sbpid7ByGUtSFKOPHl7kyGQcoAIIuzraCMv1DPkIUh+pJ1fsvDE0wmG970fF+1Wkb88uBPNgIlbSoMfHG4jt82OyJo5KVwNmEIdnLMf0PurKBJy35DuRCDuaJ7i+LidE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(56012099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MdWe2YxQmf8v3pr45EAMt0Pod5tI8mMXkUxUNpfr6ZhZZWzp8UDEcGOr6TWB?=
 =?us-ascii?Q?guJhihvIU/1ybJ+twbAJvfiasDA1TNxROkbXLYquvBYmLuL/lH/Fb80OdQjv?=
 =?us-ascii?Q?mot8V85A9kjG5nPWKBTFj5tKHgXStxsTz0o+MAexDmjbcCnwI9HCxiexLPs+?=
 =?us-ascii?Q?+gyN8lJn2cLq3Upb2gzNRbMaBMQ5s00Ywjozn0ASKXmQtY9LhCZpL2w34qql?=
 =?us-ascii?Q?cj4rtf7r+XhKnaZtWWB2SMWeDinMMpv4gAdQxPsoj7UXFEY3haOXVyRcB5+c?=
 =?us-ascii?Q?KAVAYb2wGVbgikg22k96FauFuVyWWDOGgsIh/oICu4gEzJ2d0NcW8PqYM2Sd?=
 =?us-ascii?Q?b5kkNgrsoeaU985n8APC5sfKDy+iiVNB8nJXD9GsfjciIVOgAkRBjr+eL/UI?=
 =?us-ascii?Q?iHKVAGOa2XeoneObPTtAnP9ms7LKboBljhTR2W17MYU6i/7cyHPYGtGcbqo4?=
 =?us-ascii?Q?PGUev5qgJl/2duDu0CyeIX2BVPyIokxePIeOasZdj6K2tYykiy7zvzcurttl?=
 =?us-ascii?Q?WTzfEZB7qC8dH5Y7k9a3rFfHude6i6qdiObukezMSYxodFvZspsePlY9jKlm?=
 =?us-ascii?Q?S09NvyJdnk65NMatbzEqIg+kp/VzvxZzr5J5bAMG4gNEFAs75ZZAWP35BMhs?=
 =?us-ascii?Q?44MW9YWqJtHQBOfLzgwnzLaCCmrEUqlNYRpTeb8lwYev7y9W7AJqXIEQC33g?=
 =?us-ascii?Q?pidx/RvgLYyreCHHRVY78jfSh5x++OeMMSYc6xyTikcNBOQZYxlCPl4cR893?=
 =?us-ascii?Q?eLXfG7qVi3Tzntnxzfs2puIj7mqnjVc29TWGKDSa7bnb/jOoA8ZL1thXUkZU?=
 =?us-ascii?Q?g2CUjABqeSu64ndVM9dhj5J0ttwZYu2D4YMyqPKNhto4k90Nh7O+0XTrTR5J?=
 =?us-ascii?Q?YJGubSI9l3PZdMvHrsJ0v6OxcJBNiqDomOyq3uiyIer5QF5AshdecbfuICL/?=
 =?us-ascii?Q?wmTCIXT5EqEdvR17f10ZDpiJegsElOI5+Q2b7aoCNrgDpx526pWoiKxuH4rm?=
 =?us-ascii?Q?8FpHyOkJXwkezFoonn5P9hJ6ULp9m0FHT4oHItgM+bSYodY8UavgFlopVVKp?=
 =?us-ascii?Q?MFEByqZ98q3nAQMe7puUjeb30IIeZhxXq612DXmROyKb7fWSFpaecTdsgyBN?=
 =?us-ascii?Q?y0Lpb5kSDzj0v5T/t3RdxYtFmjcB1wuOJGySc7HOF60D/1ZTokfSdIWl6YBz?=
 =?us-ascii?Q?s0v8MX2xN729HCvx+LTABy8hUbUt/44RLQL0/cQqKiE/TPZsCCKIZ3qB/U8/?=
 =?us-ascii?Q?nz9fcQdZj1gSF/1nt7fGE3D2m2k2xVDP0ccxkTZAKc+VCmGedlSiH8sQY+IQ?=
 =?us-ascii?Q?JxHhwhc2mwXBCa007tebbb06+Cahs5IcY4jnOgK5ZNyJS8VuWUsB0Zs2WHLK?=
 =?us-ascii?Q?diQVJbMNRtes7I5HnPkYM5nuYcheptqOJOLKk7QReRkqcmrvfixILwZfIVJS?=
 =?us-ascii?Q?mDFm7rFe9xB4xW+3OeSBIYYMFREV8Jff/t+HvQfxbSX523qTUY3DLQk2s0LN?=
 =?us-ascii?Q?g/knwDgHgo1PxjYvxOS5ezkhDKemcvvjIi0xE4YfBmnlczKNgSABRwQ7zGbi?=
 =?us-ascii?Q?j3tinlBReF9u/cib0TNTDy5AtRGymV1u3+DcHDBxEsu/7SAKmNyZ4qm8cNcf?=
 =?us-ascii?Q?8Il6n9JVfPpaFq6us8xadYTaYhCcsYN+qMwE89jj0gxAC/HAHMDyQid7iUux?=
 =?us-ascii?Q?9Qlf4ayUmaVl+pA8z4YcEMhDJQQ+nuyhKFjcby9Xe2uJs8mMxLUmUC+VDg5y?=
 =?us-ascii?Q?DgDajIZ2vfFggLcePUPfGqyAvfTXX1U=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: gJZLw+kpPSn5ZXy+mQKmu4GHp42mudp5npKpGoO8fTiM9vJ5Inbf7VnzUyJj0VTNDpXzk4U6yYzWyTUzeURkePHLnwX3SGcuOG7NsdgLNItIh39K78Pdl8hxU3obx3bqakDw3PJl+bdSfx5x/bFzq1gGfP85R2B8E9U71wC38qfYmtAd/MXSPBZvCqIwsNYS7dhUPnWI19jqnu/8/Ejq/vqpg7TxEPfKQrJCc/LwRgue4sDDQo2q5kkLUROJA+zB8xOWhRcewgNbS9eFkKXYVhI/T2meEeLjLcHD1tLs56jTunWlas2AZovwXzuZSyF+y4NKAoGp1mxrc/lORIQMTA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b872212c-c22d-4c79-63d9-08de919bbde4
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2026 16:12:02.4464 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eEfjt/YphusV5opNpgyU4PhjHRZ2lIXglQR8ztrCvoDVnUS8KCT9Unqrs41FUVec47ZoG7grIkujGPllC2vyVXpmrIto4BWpBnJLQizrUI8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6850
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775232734; x=1806768734;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wZScwhOz5HoZ7mTmuENdWCQB5r6/sNHRVMLb2+W+fy0=;
 b=XztlTTpT/GVXdN+wRaxofCuSn3gzZT4GUZADFrZ4KxVaxxx07mx6l+18
 no/lMIClEVznIEW008QI8mXmuuyKp7hwFpgiIISL3a8rXfzzulI+vVHFT
 Y1kRSlJIFM3VayjUhyWSq0YTJv/WpEtRIEwVClRVHzuci1AjtnRrxCpbo
 uCjv0CJBTA7xEDh39PeYQ8W7rFYsVMTQHx+gsl4z+EuoFGsE7f7ogg806
 f/A1l6tAGDeL/3WuQUYSiL60rF4mLnjwEZqTYV0R+dchdz4ExIj/EJGlo
 ApISqYgeyCCrKMTqN6aSTLr8nmkx61Ri03NQmAybCVSdADU+EPluIDceD
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XztlTTpT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ixgbe: fix ITR value
 overflow in adaptive interrupt throttling
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,osuosl.org:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 501E7396224
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Simon Horman <horms@kernel.org>
> Sent: Friday, April 3, 2026 3:19 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org
> Subject: Re: [PATCH iwl-next] ixgbe: fix ITR value overflow in
> adaptive interrupt throttling
>=20
> On Fri, Mar 27, 2026 at 08:30:45AM +0100, Aleksandr Loktionov wrote:
> > ixgbe_update_itr() packs a mode flag (IXGBE_ITR_ADAPTIVE_LATENCY,
> bit
> > 7) and a usecs delay (bits [6:0]) into an unsigned int, then stores
> it
> > in ring_container->itr which is u8.  Values above 0xFF wrap,
> > corrupting both the delay and the mode-flag on the next readback.
> >
> > Separate the mode bits from the usecs sub-field; clamp only the
> latter
> > to [0, IXGBE_ITR_ADAPTIVE_LATENCY - 1] via min_t(unsigned int, ...)
> so
> > overflow cannot bleed into bit 7.  Add a WARN_ONCE() when the raw
> > usecs value exceeds U8_MAX so out-of-range ITR computations are
> > visible in dmesg during development and testing.
> >
> > Fixes: b4ded8327fea ("ixgbe: Update adaptive ITR algorithm")
> > Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>=20
> Somehow - perhaps because there is no m/n notation present in the []
> in the subject - Patchwork has treated each patch in this series as
> it's own patch-set.
>=20
> And in the case of this patch, it didn't apply - I assume because in
> order to do so an earlier patch in the series needs to be present.
>=20
> So CI didn't run on this patch :(

Good day, Simon

I have a bunch of simple /* independent */ patches for submission every wee=
k.
Whis way you'd recommend to send them to ease /* and accelerate review */ ?

1. submit one by one
2. submit as a batch by one git command (with the same internal main ID tag=
 internally)
3. imagine a cover latter and submit as a patch-set=20

Thank you
Alex
