Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC48C23481
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Oct 2025 06:06:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E1E3C416AC;
	Fri, 31 Oct 2025 05:06:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zPPt4XkSlef8; Fri, 31 Oct 2025 05:06:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F0F39416AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761887180;
	bh=tTt5E09oJALRO7o9tSAs3mDl7suf3brvY7sn/we29uk=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=HVbQAFRevqEQqfyDlgu3Z7dnkwUHfHuK6ik764Ic1XcD3oyoByWTKS+s0zFVcaZ6u
	 fi4gkV6vCu9whMP3TC+wjc5Bp/XL4Zm9GDUBn6Lc2b6zOatCWAa/AF0FpjZ1aIqyE1
	 d5efiiG4EYYF2jNQ39KcbG2rmvlOP+Sm6FXoFsCfUAO2NEacCDl5FPH3qMFIJQf+oI
	 t/2GuSaK4q+bmBCCwHs5nFRa5Pb3GflV+Jw/rVp4dhmrUgLMPnP6r7t+Dt+sb3TBHv
	 0jlWfUw05nZXMpYuILmsaBcjE7+Dj9k+X4AQyOYiOIvUOhLMB69vZMrOLLIjowM2cE
	 WdsTnnLV/oTRw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F0F39416AA;
	Fri, 31 Oct 2025 05:06:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 236A9160
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Oct 2025 05:06:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1506940ABE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Oct 2025 05:06:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GvZVCS2VLYXs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Oct 2025 05:06:18 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 31 Oct 2025 05:06:17 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D857540211
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D857540211
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=sarithax.sanigani@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D857540211
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Oct 2025 05:06:17 +0000 (UTC)
X-CSE-ConnectionGUID: rLWdDeatS3quEEh7mSasig==
X-CSE-MsgGUID: wp6xy4b2TuiHSZSJOH5F4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="86665350"
X-IronPort-AV: E=Sophos;i="6.19,268,1754982000"; d="scan'208,217";a="86665350"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 21:59:10 -0700
X-CSE-ConnectionGUID: LTwI8KSxQs+1V7Nuq1W/Dw==
X-CSE-MsgGUID: /feT9fjfQVCwV5STrM+mHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,268,1754982000"; 
 d="scan'208,217";a="186077273"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 21:59:11 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 21:59:10 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 30 Oct 2025 21:59:10 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.50) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 21:59:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DHoGdqjIhJ+V/Kv/mrOL81zObnOvrKusyprdRuue108H/sf+M3KKsap0l7SVfgmbOfrmBidI6JkA72LZuJzND+CTLBUBoqBeT959g+RRe4Db0ZkF21XbEqFkO1NNL08YgOFzNcnsEqBNiDnHMOsIKIYI9sUmgr/LPLJCjy26GCyCtaaY3de4+L1+ZAlduJa+sPRJhXoqQ/+qOSgt8TZPe6e0Fr/+21P7736RYeriAEEsAnf5wvoCCd8B9N0jzJulAZH2EQT7fCBupQ51S5YYvBbQktcxPWcpMMsMYiIaugFEDmcnRcnJC5T19fC3THwySpP1wRU0r9g8b5UPvOhqow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tTt5E09oJALRO7o9tSAs3mDl7suf3brvY7sn/we29uk=;
 b=DBAeAldmsKPR11rbH/HO7qVD7L8BFqQ0z4IY0/+ANX0bLxx2N5kClJFd5pkW5hKRHTkvrXxMkYJAPsIMxIc03nh6egI7rSOarjpadM6XCHrGrtCKIRAQ+OLzgsoFtT+LkqIq0BwntktWnhHgGX1bexC1wMIeulCB5OejpMVzKR0Qzw/Ff4dtzc5+7p5J6fOEj5bvfj6Nl5xDQf2u3Av23vdMJIvYXvW0LRcxUwrBzqHlvdEXo2MzlISDEntg4jihyyof8dvk1TLVfLswCpC2BlboaNkXGLsTWQiwjOwZV/p28yb4j3IrhGXbOFpT3Gh1rmFrGADoCegqiI3ZnHejDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB6976.namprd11.prod.outlook.com (2603:10b6:510:223::5)
 by SJ2PR11MB8321.namprd11.prod.outlook.com (2603:10b6:a03:546::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.14; Fri, 31 Oct
 2025 04:59:08 +0000
Received: from PH8PR11MB6976.namprd11.prod.outlook.com
 ([fe80::61e2:ff5c:490d:9152]) by PH8PR11MB6976.namprd11.prod.outlook.com
 ([fe80::61e2:ff5c:490d:9152%4]) with mapi id 15.20.9253.013; Fri, 31 Oct 2025
 04:59:08 +0000
From: "Sanigani, SarithaX" <sarithax.sanigani@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kubiak, Michal" <michal.kubiak@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 2/3] ice: drop page
 splitting and recycling
Thread-Index: AdxKIuFz1E1Jn0VhSMat/xm2aobTRg==
Date: Fri, 31 Oct 2025 04:59:08 +0000
Message-ID: <PH8PR11MB6976E31413A8D0031FA99651F9F8A@PH8PR11MB6976.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB6976:EE_|SJ2PR11MB8321:EE_
x-ms-office365-filtering-correlation-id: 9b42ae7f-00d4-4aa8-cdac-08de183a3952
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700021|8096899003; 
x-microsoft-antispam-message-info: =?us-ascii?Q?q/CVt2v9Ve5QoiqUcmH9gI/yllFyZDAu7CJ+pjbJV4KFDhSiL3TXx3XrQdXq?=
 =?us-ascii?Q?UFphC+QnbrgwAnCRz1414kHnMzj6Ddhzk5gpihCFXIJZprU6Y7wvXva35DmT?=
 =?us-ascii?Q?GJiW2OLjytfEu292fhpnKY7Ts0ktqDLYMMKoRWC2oOPQcQwdU5Nkb1FyvKLW?=
 =?us-ascii?Q?ryxL8ZIMgjQz0FPN/fDm6DIRdWrf/l8EO13lddHMLImomXDvJhSXwT0NUsFo?=
 =?us-ascii?Q?me7adZitjep1vYy7cIQ6cK4Jc1fxN1Q+nhKSsIg/5wJndVnSELHDi/QgaZob?=
 =?us-ascii?Q?53/o4Yq96Paglu7hlzBXIJLNgQCAlyUfuXRDF7p/VcC1tvmi2D7yKBt3GWqp?=
 =?us-ascii?Q?eZgSznhDM2mjXuIVYQtUAnzOGyvPWUJXOl+NDVzQhXhYJnhsYU75xJSsWwL9?=
 =?us-ascii?Q?iestZ/7GAWdFqSCGjwHImI2W3mkr/F9332jKqpUca7kJYSMANqEUrO7owE4e?=
 =?us-ascii?Q?DVeWPlxGNM2GCwjIBKWQOZFRnobP3h1sbLNatAuPrKMmO+OC3Ia+Pgnm4BjG?=
 =?us-ascii?Q?9r81V2eUzxcqtJpcTjF6O0PM3Kzz3/rXrMXgO607n+0rDkS+USOLSP0AQzwd?=
 =?us-ascii?Q?mL1B1AeyUrrJzjEfoT0iQh5npjQMqxIeUwnSxPlHZdw6PnLX1LmdqYgTo5xR?=
 =?us-ascii?Q?w2ujiLMmmzY4hF46urmKItx7Z4Cebf0Qps36oDGjQR0T3uF2ra/xHfY9FDAU?=
 =?us-ascii?Q?f3ptF6rKQ9Eu3kzF3mlA0DfX1dJ+3TI86r2zPiUswaxvjElHfFmEKFJg2R/j?=
 =?us-ascii?Q?YUedw9xHMsTx7whNWjgkvANjJ7FnUcxv8d60fDJkfNQX3LTID+SdMRKjKNZ3?=
 =?us-ascii?Q?YefH64AsNIOIZs+7aLcGg6NkwjjFTaSsBLfXwgSdZbax4Ce9OmE2TB7zmjpi?=
 =?us-ascii?Q?U+vqHkhIdIHOuuosjn5FRMoAb0sMSwglr6tHEB2Zc7IsOPKkSFUl6Nk+AjWm?=
 =?us-ascii?Q?Zh3pvgVdMkUjUqFcjKLiSxNA9ocZxFmfGkbIEd+diyK+WfQies5ASmeN/Fpd?=
 =?us-ascii?Q?aP54CZ7TNxgEFWAL9SYTVqq37C6/0dFMDxf7Xm4BRDhA2zG4RAWh7p3ap9VL?=
 =?us-ascii?Q?9msyCSgMsD+oJrTpT8Kn6LeYLYhRI8g74YrhQXjcobBqaaXHkgMUsP8OcAGK?=
 =?us-ascii?Q?ToBoxcRKdVs/lLqZvCxDLBpaZLZTMAMrZxVNW2TN7XiNHBOnHi4qG0V5/p5k?=
 =?us-ascii?Q?7VzlMbPUaBgX+ohPGR57VYaXqir5HaNSnncJIZlFlBB2sd7hylqIQSDAqDAK?=
 =?us-ascii?Q?ukMankbOVZdxmpddQBFNirJR8yPF2FNz+ZsHJp2vgSax/4HrJOQjpmd3TQb+?=
 =?us-ascii?Q?KT89m52p7d7cizYN6zU6R79UPyyDUyEIHdgiwBllt86s/VTsB2+dAbHxe4Mu?=
 =?us-ascii?Q?Od1zUSfjD7fmkAx4Fj9l9YeAQiwzsDY6ICijXuMGU1uEZ33wznN4K0+OsIIr?=
 =?us-ascii?Q?TCUea3zO0FB4gwjWmZUwQEayEPMazmrOL2P9kpOu6PgLsN5JGsyl24S8dogW?=
 =?us-ascii?Q?3VLyOsPi5Vc2N8HIkAh1+rb8f8KL+9UuG+oN?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6976.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700021)(8096899003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TFHpfQQwiux28DVbLWeO0PZRChF95wtxacI5nHAVja0dGkME5udEekkDFiLw?=
 =?us-ascii?Q?fctqzoTlzNmFMqQwBCrnmJLVWU7PgmOsAppfY5zzZK6xc+VoveAntDieCnuA?=
 =?us-ascii?Q?MjQDjGMleTCxDhgedIOg/kfguuXJ0hq2h2iGUg3hYeB3NHnMmH/a5nZTqyJQ?=
 =?us-ascii?Q?gi1OK0z5eqUm9xo3wGcOHov4FglcESP8irj0Oqt8JSqTtqYhb5bycOQP4tMZ?=
 =?us-ascii?Q?/da185YagJ9lvh6WkJmD5WzlTpj1vgxSb4Tz7iOug7JmzgknbfJeetp9rXFV?=
 =?us-ascii?Q?feVrCRtTLWO4jjomATT2GoUWXXdx8GWEqPOEZgRFPPPeenNIEGSSecUxVwX4?=
 =?us-ascii?Q?ac9OzheN1w9rA+h0B6gAHGCh/IBoz+I7RQEElIlLbB6hh03Dp1ZEmKVD4N6d?=
 =?us-ascii?Q?4xdkjVQb+QMJZfmdRRHu2Ej6PNcGbw8u728lGtX+MHhEjmex/TQZZwLr53w+?=
 =?us-ascii?Q?lJn4QYddOHeVsp4zWBQYxkCaU2yWmSdLroi4apZc/WQa/ZgX30mRNuZ3ewa1?=
 =?us-ascii?Q?0WdDZ6NkXYHiFfU3Sa9lzzUAQt5yFUABH22TIQGN6a3UHSJi9HcMru4n8y2b?=
 =?us-ascii?Q?a7Glp41mD8CMnJAfGS6iViGOwodtZT+j10H+33525+J0Eg+a90ziKrwhkey4?=
 =?us-ascii?Q?Us+l9H4thfOcG0IpUMRYfzhD+XLypRmLbheLTHl6/SRlHAfrL/+SbKwdCt1N?=
 =?us-ascii?Q?9o/JPB3YeCCG9A01jb1Qrtd39eEVBdlI8HwXuJ5A6ZOgF6R6FMbx5avWxjUG?=
 =?us-ascii?Q?QPJBXy3GJli7rM8fAHIfI0gJtZi+a87olKgxbFDj/ek6C7TOzWwRt1QlDydC?=
 =?us-ascii?Q?R78mZDjnWu2xHRDW+4GA95yEMFog5DQRCj6cMwR09ZSSEuEjBxQWPzY6VSH5?=
 =?us-ascii?Q?p3XVAFFiXp5vNamMfGu03mmDyYX+udWnKxJLNaaF+zqJCkLkY0kU7h4/B0Ia?=
 =?us-ascii?Q?527VodD0OM1hqzStfiIcf/kx8Zj2UqENcqLkkdGDqbQvc2GETsKeExP2HBeC?=
 =?us-ascii?Q?rdsVGsuABA3/1yf/n764wGR1b+ufL6qnS+Rexsr5cUqnbtEG9+gHXE76sdyv?=
 =?us-ascii?Q?9txj9Kd/QNKWQh6MW4qYamTw6hghqV5HrajetTHT3lMxSLGPj6hX/sxV0it8?=
 =?us-ascii?Q?p7KHdcobkLCxY4As1Gxust18wclME91PcsYrkV5swm7sGQVOYaf9USpL4Xja?=
 =?us-ascii?Q?dApx1hvhTVwMIsVgrH39YuXuZlR2mTxpI36LK7nnKtrhIzqx1N6gpQuFMz4y?=
 =?us-ascii?Q?LUXrNqD2UxmpQZA8Ak2YWWbUQQy1J7vczi1u5Rrc1ZQJxo5P/yzqLMNbgnj6?=
 =?us-ascii?Q?b3vPmCdJu7QBnQkylgmpd6svja6+ojJKpAPURkEwSQZzgju1NcnA1box8X7l?=
 =?us-ascii?Q?irX+0ON+MY5jAAl8Zkg+gG8dRHzZkDrY+GP5GRWNN7tgW4QOF6f3tdvCwRAl?=
 =?us-ascii?Q?5ZOfCQht4XdikUQjXKVTzUPEeniCq1Kcxn0GPR6COKAtEk6IkU0UNzwk5ksI?=
 =?us-ascii?Q?4u5fO8brr+z2uOJXWVd+x/j4jijN90CrOTFN8IMwbKpok8ua6IoOjKoMaDa2?=
 =?us-ascii?Q?IE0dxw5iHajjW17V8LCdwyULOnO5YuFxmH5FqHFji47zko93GFEh03BtU7eG?=
 =?us-ascii?Q?2A=3D=3D?=
Content-Type: multipart/alternative;
 boundary="_000_PH8PR11MB6976E31413A8D0031FA99651F9F8APH8PR11MB6976namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6976.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b42ae7f-00d4-4aa8-cdac-08de183a3952
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2025 04:59:08.2048 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rvbl5vcwGCcI7wffsq9qBvbQO8k4IM+s7JsWGdOWCzjw7a0Xkp31k5tCaB6ErVgcpEVqXXYzJxvtrMJEc6hq6sLFniCxMiaJPkiREfOf074=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8321
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761887178; x=1793423178;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=ivjnPu5SGpjIPh2YGXAGSHlakCDc+0v4ftwpJZErqds=;
 b=Yg55w5ieHguwGrMAL7bgy8+Y1MHtCs2YMK56GhSv8oh59KqiV6Kt95EJ
 4vbuthSIACCG9dmghdVbzmvIrtkyJ5ecBpPhPGVhmuED9MxEHVG6vcSBC
 9Mmxd+NxLipLpW139ZU3RLgegCIv3D2H8CsXhoIqd/4G2AGnfvV4Lv3lQ
 fbEH6xMS08MCW8RMX/55pyieD/5d+EDdW1MJQfqoKPW4Tntl2a7S1ERoV
 4OjNrSxFsgmYVIYiOcvTAMTE+JlqeRjeEVs8nBbC3Nhax16vHK+zpKQhh
 MigcTsv/bnAvbB12f1HLeHhWLgjeVcYxcnK09ZQWKXC5er2xkUTecqnWu
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Yg55w5ie
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/3] ice: drop page splitting
 and recycling
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

--_000_PH8PR11MB6976E31413A8D0031FA99651F9F8APH8PR11MB6976namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org<mailto:intel-wi=
red-lan-bounces@osuosl.org>> On Behalf Of Michal Kubiak

> Sent: Thursday, September 25, 2025 2:53 PM

> To: intel-wired-lan@lists.osuosl.org<mailto:intel-wired-lan@lists.osuosl.=
org>

> Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com<mailto:maciej.fijal=
kowski@intel.com>>; Lobakin, Aleksander <aleksander.lobakin@intel.com<mailt=
o:aleksander.lobakin@intel.com>>;

> Keller, Jacob E <jacob.e.keller@intel.com<mailto:jacob.e.keller@intel.com=
>>; Zaremba, Larysa <larysa.zaremba@intel.com<mailto:larysa.zaremba@intel.c=
om>>; netdev@vger.kernel.org<mailto:netdev@vger.kernel.org>;

> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com<mailto:przemyslaw.kitsz=
el@intel.com>>; pmenzel@molgen.mpg.de<mailto:pmenzel@molgen.mpg.de>; Nguyen=
, Anthony L <anthony.l.nguyen@intel.com<mailto:anthony.l.nguyen@intel.com>>=
; Kubiak, Michal <michal.kubiak@intel.com<mailto:michal.kubiak@intel.com>>

> Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/3] ice: drop page splitti=
ng and recycling

>

> As part of the transition toward Page Pool integration, remove the legacy=
 page splitting and recycling logic from the ice driver.

> This mirrors the approach taken in commit 920d86f3c552 ("iavf: drop page =
splitting and recycling").

>

> The previous model attempted to reuse partially consumed pages by splitti=
ng them and tracking their usage across descriptors.

> While this was once a memory optimization, it introduced significant >com=
plexity and overhead in the Rx path, including:

> - Manual refcount management and page reuse heuristics;

> - Per-descriptor buffer shuffling, which could involve moving dozens

> of `ice_rx_buf` structures per NAPI cycle;

> - Increased branching and cache pressure in the hotpath.

>

> This change simplifies the Rx logic by always allocating fresh pages and =
letting the networking stack handle their lifecycle.

> Although this may temporarily reduce performance(up to ~98% in some XDP c=
ases), it greatly improves maintainability and paves the way for Page Pool,

> which will restore and exceed previous performance levels.

>

> The `ice_rx_buf` array is retained for now to minimize diffstat and ease =
future replacement with a shared buffer abstraction.

>

> Co-developed-by: Alexander Lobakin <aleksander.lobakin@intel.com<mailto:a=
leksander.lobakin@intel.com>>

> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com<mailto:ale=
ksander.lobakin@intel.com>>

> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com<mailto:aleks=
ander.lobakin@intel.com>>

> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com<mailto:jacob.e.keller=
@intel.com>>

> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com<mailto:michal.kubia=
k@intel.com>>

> ---

> drivers/net/ethernet/intel/ice/ice.h         |   2 +

> drivers/net/ethernet/intel/ice/ice_base.c    |  29 ++--

> drivers/net/ethernet/intel/ice/ice_txrx.c    | 139 ++-----------------

> drivers/net/ethernet/intel/ice/ice_txrx.h    |  72 ----------

> drivers/net/ethernet/intel/ice/virt/queues.c |   5 +-

> 5 files changed, 24 insertions(+), 223 deletions(-)
>


Tested-by: Saritha Sanigani <sarithax.sanigani@intel.com<mailto:sarithax.sa=
nigani@intel.com>> (A Contingent Worker at Intel)





--_000_PH8PR11MB6976E31413A8D0031FA99651F9F8APH8PR11MB6976namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#467886;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:432671176;
	mso-list-type:hybrid;
	mso-list-template-ids:-1683483016 -1667074472 1074331651 1074331653 107433=
1649 1074331651 1074331653 1074331649 1074331651 1074331653;}
@list l0:level1
	{mso-level-start-at:5;
	mso-level-number-format:bullet;
	mso-level-text:\F0D8;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;
	mso-fareast-font-family:"Times New Roman";
	mso-bidi-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1
	{mso-list-id:437601636;
	mso-list-type:hybrid;
	mso-list-template-ids:603768172 1808297650 1074331651 1074331653 107433164=
9 1074331651 1074331653 1074331649 1074331651 1074331653;}
@list l1:level1
	{mso-level-start-at:5;
	mso-level-number-format:bullet;
	mso-level-text:\F0D8;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;
	mso-fareast-font-family:"Times New Roman";
	mso-bidi-font-family:"Times New Roman";}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l2
	{mso-list-id:821652690;
	mso-list-type:hybrid;
	mso-list-template-ids:1892322160 -1944911926 1074331651 1074331653 1074331=
649 1074331651 1074331653 1074331649 1074331651 1074331653;}
@list l2:level1
	{mso-level-start-at:5;
	mso-level-number-format:bullet;
	mso-level-text:\F0D8;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;
	mso-fareast-font-family:"Times New Roman";
	mso-bidi-font-family:"Times New Roman";}
@list l2:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l2:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l2:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l2:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l2:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l2:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l2:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l2:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l3
	{mso-list-id:1054818828;
	mso-list-type:hybrid;
	mso-list-template-ids:-821104680 1115865806 1074331651 1074331653 10743316=
49 1074331651 1074331653 1074331649 1074331651 1074331653;}
@list l3:level1
	{mso-level-start-at:5;
	mso-level-number-format:bullet;
	mso-level-text:\F0D8;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;
	mso-fareast-font-family:"Times New Roman";
	mso-bidi-font-family:"Times New Roman";}
@list l3:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l3:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l3:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l3:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l3:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l3:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l3:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l3:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l4
	{mso-list-id:1091201179;
	mso-list-type:hybrid;
	mso-list-template-ids:-1549898646 -15068500 1074331651 1074331653 10743316=
49 1074331651 1074331653 1074331649 1074331651 1074331653;}
@list l4:level1
	{mso-level-start-at:5;
	mso-level-number-format:bullet;
	mso-level-text:\F0D8;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;
	mso-fareast-font-family:"Times New Roman";
	mso-bidi-font-family:"Times New Roman";}
@list l4:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l4:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l4:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l4:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l4:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l4:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l4:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l4:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l5
	{mso-list-id:1106999256;
	mso-list-type:hybrid;
	mso-list-template-ids:1092139474 1018984096 1074331651 1074331653 10743316=
49 1074331651 1074331653 1074331649 1074331651 1074331653;}
@list l5:level1
	{mso-level-start-at:5;
	mso-level-number-format:bullet;
	mso-level-text:\F0D8;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;
	mso-fareast-font-family:"Times New Roman";
	mso-bidi-font-family:"Times New Roman";}
@list l5:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l5:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l5:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l5:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l5:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l5:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l5:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l5:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l6
	{mso-list-id:1142885685;
	mso-list-type:hybrid;
	mso-list-template-ids:-179561482 1120187866 1074331651 1074331653 10743316=
49 1074331651 1074331653 1074331649 1074331651 1074331653;}
@list l6:level1
	{mso-level-start-at:5;
	mso-level-number-format:bullet;
	mso-level-text:\F0D8;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;
	mso-fareast-font-family:"Times New Roman";
	mso-bidi-font-family:"Times New Roman";}
@list l6:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l6:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l6:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l6:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l6:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l6:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l6:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l6:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l7
	{mso-list-id:1210923370;
	mso-list-type:hybrid;
	mso-list-template-ids:-396034770 -1282786006 1074331651 1074331653 1074331=
649 1074331651 1074331653 1074331649 1074331651 1074331653;}
@list l7:level1
	{mso-level-start-at:5;
	mso-level-number-format:bullet;
	mso-level-text:\F0D8;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;
	mso-fareast-font-family:"Times New Roman";
	mso-bidi-font-family:"Times New Roman";}
@list l7:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l7:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l7:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l7:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l7:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l7:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l7:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l7:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l8
	{mso-list-id:1599866831;
	mso-list-type:hybrid;
	mso-list-template-ids:-113445182 -421638148 1074331651 1074331653 10743316=
49 1074331651 1074331653 1074331649 1074331651 1074331653;}
@list l8:level1
	{mso-level-start-at:5;
	mso-level-number-format:bullet;
	mso-level-text:\F0D8;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;
	mso-fareast-font-family:"Times New Roman";
	mso-bidi-font-family:"Times New Roman";}
@list l8:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l8:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l8:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l8:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l8:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l8:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l8:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l8:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l9
	{mso-list-id:1667708953;
	mso-list-type:hybrid;
	mso-list-template-ids:462178376 -53983596 1074331651 1074331653 1074331649=
 1074331651 1074331653 1074331649 1074331651 1074331653;}
@list l9:level1
	{mso-level-start-at:5;
	mso-level-number-format:bullet;
	mso-level-text:\F0D8;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;
	mso-fareast-font-family:"Times New Roman";
	mso-bidi-font-family:"Times New Roman";}
@list l9:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l9:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l9:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l9:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l9:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l9:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l9:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l9:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style>
</head>
<body lang=3D"EN-IN" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoPlainText">&gt; -----Original Message-----<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; From: Intel-wired-lan &lt;<a href=3D"mailto:=
intel-wired-lan-bounces@osuosl.org">intel-wired-lan-bounces@osuosl.org</a>&=
gt; On Behalf Of Michal Kubiak<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Sent: Thursday, September 25, 2025 2:53 PM<o=
:p></o:p></p>
<p class=3D"MsoPlainText">&gt; To: <a href=3D"mailto:intel-wired-lan@lists.=
osuosl.org">intel-wired-lan@lists.osuosl.org</a><o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Cc: Fijalkowski, Maciej &lt;<a href=3D"mailt=
o:maciej.fijalkowski@intel.com">maciej.fijalkowski@intel.com</a>&gt;; Lobak=
in, Aleksander &lt;<a href=3D"mailto:aleksander.lobakin@intel.com">aleksand=
er.lobakin@intel.com</a>&gt;;
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Keller, Jacob E &lt;<a href=3D"mailto:jacob.=
e.keller@intel.com">jacob.e.keller@intel.com</a>&gt;; Zaremba, Larysa &lt;<=
a href=3D"mailto:larysa.zaremba@intel.com">larysa.zaremba@intel.com</a>&gt;=
;
<a href=3D"mailto:netdev@vger.kernel.org">netdev@vger.kernel.org</a>; <o:p>=
</o:p></p>
<p class=3D"MsoPlainText">&gt; Kitszel, Przemyslaw &lt;<a href=3D"mailto:pr=
zemyslaw.kitszel@intel.com">przemyslaw.kitszel@intel.com</a>&gt;;
<a href=3D"mailto:pmenzel@molgen.mpg.de">pmenzel@molgen.mpg.de</a>; Nguyen,=
 Anthony L &lt;<a href=3D"mailto:anthony.l.nguyen@intel.com">anthony.l.nguy=
en@intel.com</a>&gt;; Kubiak, Michal &lt;<a href=3D"mailto:michal.kubiak@in=
tel.com">michal.kubiak@intel.com</a>&gt;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Subject: [Intel-wired-lan] [PATCH iwl-next v=
3 2/3] ice: drop page splitting and recycling<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; As part of the transition toward Page Pool i=
ntegration, remove the legacy page splitting and recycling logic from the i=
ce driver.
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; This mirrors the approach taken in commit 92=
0d86f3c552 (&quot;iavf: drop page splitting and recycling&quot;).<o:p></o:p=
></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; The previous model attempted to reuse partia=
lly consumed pages by splitting them and tracking their usage across descri=
ptors.
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; While this was once a memory optimization, i=
t introduced significant &gt;complexity and overhead in the Rx path, includ=
ing:<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; - Manual refcount management and page reuse =
heuristics;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; - Per-descriptor buffer shuffling, which cou=
ld involve moving dozens<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; of `ice_rx_buf` structures per NAPI cycle;<o=
:p></o:p></p>
<p class=3D"MsoPlainText">&gt; - Increased branching and cache pressure in =
the hotpath.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; This change simplifies the Rx logic by alway=
s allocating fresh pages and letting the networking stack handle their life=
cycle.
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Although this may temporarily reduce perform=
ance(up to ~98% in some XDP cases), it greatly improves maintainability and=
 paves the way for Page Pool,
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; which will restore and exceed previous perfo=
rmance levels.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; The `ice_rx_buf` array is retained for now t=
o minimize diffstat and ease future replacement with a shared buffer abstra=
ction.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Co-developed-by: Alexander Lobakin &lt;<a hr=
ef=3D"mailto:aleksander.lobakin@intel.com">aleksander.lobakin@intel.com</a>=
&gt;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Signed-off-by: Alexander Lobakin &lt;<a href=
=3D"mailto:aleksander.lobakin@intel.com">aleksander.lobakin@intel.com</a>&g=
t;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Reviewed-by: Alexander Lobakin &lt;<a href=
=3D"mailto:aleksander.lobakin@intel.com">aleksander.lobakin@intel.com</a>&g=
t;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Reviewed-by: Jacob Keller &lt;<a href=3D"mai=
lto:jacob.e.keller@intel.com">jacob.e.keller@intel.com</a>&gt;<o:p></o:p></=
p>
<p class=3D"MsoPlainText">&gt; Signed-off-by: Michal Kubiak &lt;<a href=3D"=
mailto:michal.kubiak@intel.com">michal.kubiak@intel.com</a>&gt;<o:p></o:p><=
/p>
<p class=3D"MsoPlainText">&gt; ---<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; drivers/net/ethernet/intel/ice/ice.h&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp; 2 +<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; drivers/net/ethernet/intel/ice/ice_base.c&nb=
sp;&nbsp;&nbsp; |&nbsp; 29 ++--<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; drivers/net/ethernet/intel/ice/ice_txrx.c&nb=
sp;&nbsp;&nbsp; | 139 ++-----------------<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; drivers/net/ethernet/intel/ice/ice_txrx.h&nb=
sp;&nbsp;&nbsp; |&nbsp; 72 ----------<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; drivers/net/ethernet/intel/ice/virt/queues.c=
 |&nbsp;&nbsp; 5 +-<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; 5 files changed, 24 insertions(+), 223 delet=
ions(-)<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Tested-by: Saritha Sanigani &lt;<a href=3D"mailto=
:sarithax.sanigani@intel.com">sarithax.sanigani@intel.com</a>&gt; (A Contin=
gent Worker at Intel)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_PH8PR11MB6976E31413A8D0031FA99651F9F8APH8PR11MB6976namp_--
