Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D9103A03BDF
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Jan 2025 11:10:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8474A811CD;
	Tue,  7 Jan 2025 10:10:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XrV1FChzwsOP; Tue,  7 Jan 2025 10:10:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD2D8811EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736244601;
	bh=NNixbG7sOg1TfNOAj9WClQ+4nr9vQOFkocENXWyFfcg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=44GkdUVu6KhICJGTU32DqCxOldzLe5jw44qILmiZIR51MKd3Kq6nfErTkYY8ojc9c
	 CtNIRWEs+HBVvUzzWe5jZ3bkIshnv416EeyvLVpLkVQ99lMraaHjFiAZ6M5m2B0MOV
	 t/hyWTDz3alCqa8L1j0Qrpw4fm6J2kDRhh6WfZdyrICa8RwLUthu7YJj1t+M71FNud
	 LWXu5JW04KtF5HbRn4FKhzI0SuMR6YCczQclDep+TqHBo74BdcZnP/SFdWFmH1u6rU
	 f2U172HhjxJ8zbp4XLLpGqC6zVLMRhu2zOYcy54gVlgponpg76mS62TmDSXZ4BU8N5
	 A7RykIj+VuZQQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD2D8811EE;
	Tue,  7 Jan 2025 10:10:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 79AD16B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 10:09:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 67C068114D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 10:09:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fjCeoay4YePd for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jan 2025 10:09:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 586FD81184
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 586FD81184
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 586FD81184
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 10:09:55 +0000 (UTC)
X-CSE-ConnectionGUID: BMWK5PC4Q1Ojz1z1pq7Zmg==
X-CSE-MsgGUID: lQsnZS1hR8a/cmD99albFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="36298208"
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="36298208"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 02:09:55 -0800
X-CSE-ConnectionGUID: rDTKhZv+SDm4OKbBzfP05g==
X-CSE-MsgGUID: Ux3mOL2vQhi4DewARwNO5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="102538958"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jan 2025 02:09:54 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 7 Jan 2025 02:09:53 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 7 Jan 2025 02:09:53 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 7 Jan 2025 02:09:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DuC0HMtmZ3hpOIFV/q/Sq6na2hhLOxNKZQ8++1vT7NZ+qTPz6xyUqKz0nJk2IEAVjR4hz0Qdt09DGbwEVMin8cSVrFuHLOHDSCJnh7vvrZRUM2RHLV4S6yIoSgKHMWuG+GUVZCPhriSo3KUKxNQaKquFpdq51Ws2niYYgx50mhX21dGU44ha1SV6JGyERsl6kNaxvOzUsHeDsVS//SxXAQUdK3hIzD394ZXbpD6F9hCS7FFz6XP958kcFAS6X7PkYiyTeA5SwVvFSFX8+PDOmHP/dl1utbzkFPEo/hDjEXmhB5mapwZH1inbpJm89SO3mmbcj7rOd9eCFgsXp3Bj/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NNixbG7sOg1TfNOAj9WClQ+4nr9vQOFkocENXWyFfcg=;
 b=pzpRd4dLN67Wx7StYAy2SCU7AMKEmD6cEmw+3JC8H6UcqTh77Tl+UNiz2fh+9iwM1gGXK2pzsavek8b5GLrEvGYqgHijz+RbTy+j8Jm38EYyVeGDgc6JIwtQh1O/ejZwkEIXETw42ifQ2n5ILO6f6gqDg+tmP3GtST75uprZ6b1ZP4HLVAn/DtgT8kh8yum5OVznZwFpIylUfzh7F/fes4flKyQ4jmtzyubRJCqOfWcbufzAKb3APmW4bQeW4V1yjxZ+nI1w/XZdLq7897VNSADcdujs9Fh0sMM5VomGKQPTxdQ6sIEHGaXfoqUun+It/V1PcpTMDGfB3RBt+/qrRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by SA1PR11MB6824.namprd11.prod.outlook.com (2603:10b6:806:29e::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.10; Tue, 7 Jan
 2025 10:09:51 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%4]) with mapi id 15.20.8314.015; Tue, 7 Jan 2025
 10:09:51 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Wander Lairson Costa <wander@redhat.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Sebastian
 Andrzej Siewior" <bigeasy@linutronix.de>, Clark Williams
 <clrkwllms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, Auke Kok
 <auke-jan.h.kok@intel.com>, Jeff Garzik <jgarzik@redhat.com>, "moderated
 list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>, "open
 list:NETWORKING DRIVERS" <netdev@vger.kernel.org>, open list
 <linux-kernel@vger.kernel.org>, "open list:Real-time Linux
 (PREEMPT_RT):Keyword:PREEMPT_RT" <linux-rt-devel@lists.linux.dev>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 3/4] igb: split igb_msg_task()
Thread-Index: AQHbRkHYqD2GVzzCdUGblPmBQPzBNLMLS+Hw
Date: Tue, 7 Jan 2025 10:09:51 +0000
Message-ID: <SJ0PR11MB5865FEFEA21C2D0132F0706F8F112@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20241204114229.21452-1-wander@redhat.com>
 <20241204114229.21452-4-wander@redhat.com>
In-Reply-To: <20241204114229.21452-4-wander@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|SA1PR11MB6824:EE_
x-ms-office365-filtering-correlation-id: 93577382-31db-4d8f-49a6-08dd2f036cd6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700018|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?EDJnsXJpnl9IcSwKrlVmcGK8lixy1PU73VHQtL1dyU7kYSlFMK5aWQaD/oRT?=
 =?us-ascii?Q?8UiyMF3+FHnLqlYEbLO9DtPKXZBip4A8qAx33Yxl3oRuAEI2l17xAyOIR/WY?=
 =?us-ascii?Q?adOepBIB2HONDeqPyWqCxlWJ/lVoGkLjSvSHbrkXPNToizDAXvy5ux5BxX91?=
 =?us-ascii?Q?QmLvO7eyep2wVxpS/S6IFrGKwZtM3nyeJZ/L+okxaw8pv516VYNixE9/KiWM?=
 =?us-ascii?Q?/jet7Gro8tsaIqyiGTHo+foOtJnS8cMk120ScCyapVfEI0zHs4YI0btpEn5g?=
 =?us-ascii?Q?zcSVD6YeLywl2z5eT4CvQBIt4L4zLj745dBXLD6zaqye4MsfMd5eM3t2xsBH?=
 =?us-ascii?Q?hGdd1VpuIHLaFVsl133yBd0vltsYVPxZllwbValWz2dD+kTCKoPXhNkynpnF?=
 =?us-ascii?Q?uWjp3jUdVJKZC2Ao2A/WguXiUVNBQ3BhMM+rUsIqeP9ytIPHmY2QtgIOvM55?=
 =?us-ascii?Q?dN+/aQyFx8OxWq1tEm3ov76mWUV942Bh1KpOP6JeoyQ1I3i7NWsHOzU/Qg48?=
 =?us-ascii?Q?BHpqeEBW1N6util/YEx3VrNty1CSO+UPzvSnwcfEWrkx9J6n8UyWPnclw0Mz?=
 =?us-ascii?Q?qmqFRQqKXCejFsvNG7rX4lHpyVNKOAq0FJsnpPecXbFbNZs3er7Z0vWFdbd+?=
 =?us-ascii?Q?NTEuBZLWL3kNBVPEUml2xd9NOi+ToG2Yo3i4zeH4cz0GNlOmf4heDl8mQem7?=
 =?us-ascii?Q?fs/tqmfxtr7RfnZhhsCLoMpCHLeJl2hTPBi5SA0Uw1CR8OiCeRuCrGHGL4XM?=
 =?us-ascii?Q?3kSAsLSsW17P5UhsakPdBJ6NJ60MQyDTQxvj/i3XZNHQcoAo5ZTpIOdkrdeF?=
 =?us-ascii?Q?1CipA/mYNSIgMMVDmDlNYOpIUuAEwhqv2D++3mCiqX4AfhyLkxAOWDcQGJQy?=
 =?us-ascii?Q?lR2X0rPfwsHL0MHVT3ZGd9CyMidw8ptp5+Hx4V1DF0kKWrfgM2z80GOMI1KX?=
 =?us-ascii?Q?vdhBuzZT7rScFHr39r+LKwaM/x3tAVPYmDxLW8Ivf86Sw3NYcgbArGMw1mPq?=
 =?us-ascii?Q?eFRjxmZzbmD+9Qwh7ZAkpw9PuJgsH9BxS+YzNuVzZg1jlFVkRSvPrTfDzg4M?=
 =?us-ascii?Q?scUrmSa7xG3G3eeIbggIazAY9XhEkMyMpA3pkk0RIWjLHQp6UQhkzUd3Uh+P?=
 =?us-ascii?Q?Rbzo69S30lUSouTMHI8i6NHpEUXQx3oA88aE6/gTpQZNXbxxOqo7Nc+P0CDx?=
 =?us-ascii?Q?BWp9aLzK9b4vXX3G9wx28QHDsJEyuiEp5PWs0JZiat7o6FfAv744de8Dfkn9?=
 =?us-ascii?Q?8+cro4wqmcvdrH8KoOzPhzO7GzMfc2XUydy8b/4ODPgIQgz/YzIZLTULMoSZ?=
 =?us-ascii?Q?vKC0FHShsmQrzEvF+qjLdNvGL6jmbGy3zpaXdiyJK9oC4kmDpBcrgHO2limV?=
 =?us-ascii?Q?XI/JR37FJB92zjC+uhK1HrAnTkGjmJpQMZGiNnsA897ra2R6dZYmxY7AaD2k?=
 =?us-ascii?Q?UfmABCFXpBwXumjxIq9nbSUr7hPveYgAah86RvbC3/AhlOfZvIhd5w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700018)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3nz6BwFREBboxca0CUtsLVEag8/pW8jXRfSK0/TF5FvLsflOyjFwdWuy2ddB?=
 =?us-ascii?Q?fUzhannssEpa/Pa19u3uWkRte1+fkAYCIj2iMSFdrNsV1De0r5vGALsilgxp?=
 =?us-ascii?Q?EMKDLhi8/z9gTNKOymHMR6BatLpPK55/nlZGGiPEZ9wnzTiPG+bGnIhzkvrO?=
 =?us-ascii?Q?5e538r3Ng/eVqegRxy78lY3y9geTuyqmT0O+gL9tUVu/N5f4sULJfGjGFF7Z?=
 =?us-ascii?Q?Rzki/W1q/YFeMuunQ/omVAehjZnmeO1dDa/iOeuz/65KAjJMIAd0uARFqj57?=
 =?us-ascii?Q?ZD1G1wEU0P3QKhpmm7jY7wq4YISnjKfma5f/W2+aGytw1qluyREmxnnpqq5A?=
 =?us-ascii?Q?5co28W2nd1FkMcRpuOMs87NCMuaEkwCconG9DyffWIjePRn0o5vL84AykqkS?=
 =?us-ascii?Q?zkYX0uMBV0/3jaSV8k/h+o/lodd54xCSw7QeG+SG9oxatbLUFEvNmQKN8/Ig?=
 =?us-ascii?Q?LPcdXnu6Gt0bmKsLf5dTlG0mE+350qig0mnZfy3vZ3KJLSQIVw2X4Iy/jEc8?=
 =?us-ascii?Q?yDBVePgw4M7PKot+mZ10y4LW/Yg+ZX9YNLQVRleeh9YBAk4CYCKmM0AdpZjX?=
 =?us-ascii?Q?Mu07oqTcnNUmP0GcNmIqb8v49jwxoGs/w9tVURX9P+91OtuxD/Ig7zh6yksP?=
 =?us-ascii?Q?renbBDDyuGn32kaGrUyk7ovmHyA9EyxFcJ/5latZls1BDMuDMGrMKeSJN6v1?=
 =?us-ascii?Q?FC/ft++g5V2O3mSLvNdvg8rDQyYvu8kQflMA1pUh/TGk1tY+T3KVVbh23nHC?=
 =?us-ascii?Q?XdtIlCa0oQ5PhmqUB3djsVbu+n7AOVrweQ1Eht/9unFZMeLuap2wfw0qaO8g?=
 =?us-ascii?Q?8HYBeGcOMIhmaj+l+9KZvLcKpn4aGo3F/Yjb8dNv9j48pOEAuclwowkl0mcx?=
 =?us-ascii?Q?n3wKdgw+y9orrbTfi8Wluj3nNis59F8NXWuxBrNXvC/iR1mkqTGl6K0/5WtO?=
 =?us-ascii?Q?5OmYDSUjWbpbylCK57UkerBinJteiax7cLWdTKv1OI5kQ587QLzf9ChP96O0?=
 =?us-ascii?Q?lOsBb/MKlFo05pO8K0s1Gg+/0YoneKYYEBG94o9NthvBUd6FaMzeFt1GxgyP?=
 =?us-ascii?Q?mJfXHt7PLvE4HipTnYEvyPXoW8vwCnGmeRHxsKFvUPht9Jii6YsGYLubbCJN?=
 =?us-ascii?Q?BGBANujrPD1HHPdnHEGyWzWrKT+QvZOujEPPzAUXYdqeWqBZWYoc4qotPowV?=
 =?us-ascii?Q?3Owp3rt4S0xZg6fR7CdSAB37MQVKqZNykGCTC/KR8u1DIFQ8SD0XGSRk7UNu?=
 =?us-ascii?Q?5iG+6WmmdaGD91gNOTr0KVHNV5GaPT9rx61JL/KGkQL5YzDZqYYi4RQseB+/?=
 =?us-ascii?Q?yUzI1rxrrryMCQL0LPOM8jbv/oV3maPaxeeyqdbGKe2BPvOKlvJ4pxjFNApc?=
 =?us-ascii?Q?xh+DSBBT8bBqZ92bZpSXXpAl7GveGLF1G0EG+t1ufrxFQ//7tTuaf0LoccPn?=
 =?us-ascii?Q?FxvpljZxL/QU94niZnLKJaoCbtHf9ckeF6WIcwJtvLdIQ7dBlWPblj+w923D?=
 =?us-ascii?Q?k3QAyEVvFqV46pIi53nzuG02TcxkSiD+h5wlP/ZTVLfwRPqNvmF1Xecy4GQT?=
 =?us-ascii?Q?CIALQrjRVpS+10OL5TOuctIzpmBq+XOoIJYSW4c+ToMe0gueSRSUb0XVg7Ik?=
 =?us-ascii?Q?6w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93577382-31db-4d8f-49a6-08dd2f036cd6
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2025 10:09:51.3316 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MbCLB6H0ee5pkz2MBip4i0hyi3kFeIq3PXTS1Pf1zUkLadrJbRKjda1qeCDAosty665bdAbFHZHGkP7pfLPUAyKhT1JcsfDiSjtymj4AqQU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6824
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736244596; x=1767780596;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=hNGlchzm/YDzunL9KvRNnIQoPqCZc3f0NKG3DCvMqI0=;
 b=K16koQpPDpQn4V0k9+pQwCiqK7Q+uVX9Fd44qLAlS6lw+eIemVxeRuqo
 Gg/7Yj0i1bujr13YnQc3ZSn0/icwjcmzxgl0vtazkzwq9zftq+xI1zlRC
 3MoeFHXoxzpmwBgrbKfngyttDbnV1GFeQBG7GdTiKh64bGWjJNAmZLiMt
 Sw2J2jl84hLYcqF866ozcZ46Wvxae+QPzMlPr4BDs9fiZlnKVcrWZROzy
 Y/8W9lq2w02OO9BQwdJJXvnusM36xUHfYL0gz/VVuiJjyFcm/cpm2vwT9
 1wGOh0fD+edF4FgboJ5KnhZnRa8xrJ0r+b6EcOUGR69ysLo7xGFr7o8uI
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=K16koQpP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 3/4] igb: split igb_msg_task()
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
> Wander Lairson Costa
> Sent: Wednesday, December 4, 2024 12:42 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Sebastian Andrzej Siewior <bigeasy@linutronix.de>; C=
lark
> Williams <clrkwllms@kernel.org>; Steven Rostedt <rostedt@goodmis.org>; Au=
ke
> Kok <auke-jan.h.kok@intel.com>; Jeff Garzik <jgarzik@redhat.com>; moderat=
ed
> list:INTEL ETHERNET DRIVERS <intel-wired-lan@lists.osuosl.org>; open
> list:NETWORKING DRIVERS <netdev@vger.kernel.org>; open list <linux-
> kernel@vger.kernel.org>; open list:Real-time Linux
> (PREEMPT_RT):Keyword:PREEMPT_RT <linux-rt-devel@lists.linux.dev>
> Cc: Wander Lairson Costa <wander@redhat.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net 3/4] igb: split igb_msg_task()
>=20
> From the perspective of PREEMPT_RT, igb_msg_task() invokes functions that=
 are
> a mix of IRQ-safe and non-IRQ-safe operations.
>=20
> To address this, we separate igb_msg_task() into distinct IRQ-safe and
> preemptible-safe components. This is a preparatory step for upcoming comm=
its,
> where the igb_msix_other interrupt handler will be split into IRQ and thr=
eaded
> handlers, each invoking the appropriate part of the newly divided igb_msg=
_task().
>=20
> Signed-off-by: Wander Lairson Costa <wander@redhat.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 88 +++++++++++++++++++++--
>  1 file changed, 81 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
> b/drivers/net/ethernet/intel/igb/igb_main.c
> index 9b4235ec226df..5828831fd29c2 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -149,6 +149,8 @@ static int igb_vlan_rx_kill_vid(struct net_device *,


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

