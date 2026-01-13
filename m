Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B91D17BEF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 10:45:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B32F84D5F;
	Tue, 13 Jan 2026 09:45:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pDf99rF45jnn; Tue, 13 Jan 2026 09:45:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E430C84D64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768297548;
	bh=zUG6QxBulMA+urHaG57YEhayAhRpAqpvgaVLzCnHnrU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=g20byLNjapC4xwxLWj1qYWTWfoiaxGwRe9X0JXACitaMSmWu3vA62eufsoJbPPs6V
	 lntK3XeLZnrvrdgEcBjz+JnW2+G4plMKx8o21+hJpINFUWQOMf6qKaf95dWAYLH9vM
	 yUwnrm66Bxgvv+RWdn+3WmEpZWWWWOSZihTWIkzMxitJcqnKsoWqaqjhAmZsOKLgHp
	 2A3CzYOgBQXc3nvMJ6pVO7tIJ946s0HHaWn2Fq20gCImW0flfqX2RdTF01reTs2TtM
	 eaz+zTnmIV40vA5McumMZsz738TEr7wlDvt91lVUx0Cuy6Sx+KFpoiLQsX+uTcINI5
	 TB+nNBDEgK50A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E430C84D64;
	Tue, 13 Jan 2026 09:45:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1F49D231
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 09:45:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 05FBF40111
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 09:45:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D-AeNt5UOMVn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 09:45:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 264B14010F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 264B14010F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 264B14010F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 09:45:45 +0000 (UTC)
X-CSE-ConnectionGUID: TIDzQzreQP6JgTWiRz7+mg==
X-CSE-MsgGUID: WOKAYwmCRbmZ+lQ4iu8Gtg==
X-IronPort-AV: E=McAfee;i="6800,10657,11669"; a="69312147"
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="69312147"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 01:45:45 -0800
X-CSE-ConnectionGUID: sRXxwTblSRuGI1i9YRRDtw==
X-CSE-MsgGUID: 6Wt4HuDoTmucYY280B9RBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="235584777"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 01:45:40 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 13 Jan 2026 01:45:38 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 13 Jan 2026 01:45:38 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.61) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 13 Jan 2026 01:45:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J9n52kOq32R9dmFftcf8H3q/Jb0j5cEzpWPTDjMb89OvsX3WgQ7Id/iqBdCV67VIl7Fm6i9C6cOqqBDCcm6hbGQ7pJdSSsWa2UaXPJa6c9EDx+4O6LFKvEplV8K12qZMyk7dwjzd3ijWic6UcTJIKBvHlCakJsHcXR8dJkXmnTLRRHgBm5Kl76zss+1xHhzR6popwtvnk8fG6DQt3EwItOh1GmiHuZH0TQkLdMvW6QdL9cy9K9SK+jf3Gon9xCs/m8uc9EelnUSn4wWHgK8l3AwROUNU5Ao7bTfz8tSuA63Jq5Fv7UlCeTMbbfy7Z94+rUmxvxFHya6vMjfUp6QYag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zUG6QxBulMA+urHaG57YEhayAhRpAqpvgaVLzCnHnrU=;
 b=xs4RJN4TzT2K66muGpNUZtLYmBqLfmD2DgdqjOSQKZpM4Dy3KQs27JVyi3NJBrZafNTzfoYbADGWD0AHnmgo8Ugn8SvwJZYux626/f8h6wjvIHMAZI6t4Ze6pnpXmEA/zCjOgJUF0XdlrZ7y+8aVvAsShmgip4zkNanKBvwf/lgEPKNIkWHqWVVlwE5Jq0guzAt5ePafKVg4iUnIdI5JIdOejd4ogPTA6AelBggca5a6DzUISvMJFMF4Zwy+AuqTIb1ZMh/UPiRwpM5y+qKiQraMCARwihPAH5SKpkzw2j+isPHSEsmPfLt5gY8cWPiUJXdf2UVqymQP62RI9OHUzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by PH3PPF6E8D29981.namprd11.prod.outlook.com (2603:10b6:518:1::d2d)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Tue, 13 Jan
 2026 09:45:31 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9499.005; Tue, 13 Jan 2026
 09:45:31 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, Marcin Szycik
 <marcin.szycik@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: Avoid detrimental cleanup
 for bond during interface stop
Thread-Index: AQHcWke0GXd+dLnguEeyiIS2HvzHWLVOxizQ
Date: Tue, 13 Jan 2026 09:45:31 +0000
Message-ID: <IA1PR11MB624175491C4F380CFE0CD0878B8EA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20251120175826.53472-1-david.m.ertman@intel.com>
In-Reply-To: <20251120175826.53472-1-david.m.ertman@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|PH3PPF6E8D29981:EE_
x-ms-office365-filtering-correlation-id: 067c2784-e034-4706-c38b-08de52887db9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?fp/zRTDSk0mJ1CJtmgEqUhe4kl8VaaCCh2G3jnndhUCdGHpxTUDnqnfH0LoB?=
 =?us-ascii?Q?znj13/7BvU+sHLarBMk2VS4lvCra+ehHcX8ExsH8ZC+qzM3z9yhK4AU9kFzg?=
 =?us-ascii?Q?Lofh1j2KwUzHQs7nrXgO4lAB7IGVqWKr3wip646FBA6qD0V0uhZBBAB8IuDB?=
 =?us-ascii?Q?0Q4iRmv/2iwmuY1nUP6JlokynF1Xk9TgH96JBhVQ18LzzQsw9yS1QeBRj4qN?=
 =?us-ascii?Q?vokSc6P7I4iRu5y/d5P6lC3+bCE9xRTk3kMPmEafEqAcjmF2+jZGXDoIrrL2?=
 =?us-ascii?Q?hLjpgpvzCGkeSt+s4KkabrCJGWHI+m8qXNeWRC64nuz9Gtw9hth/JnxvNX2T?=
 =?us-ascii?Q?lRITDom/RUGd+WWmo71mVMHiNgEN6geoHrkILUnK2XireC2T8hHGbjv2UK2g?=
 =?us-ascii?Q?G7485MtGeCaYdlGHqN5Y3fxiDWtwlvJWQbjKU65qZ5Tz9rBcLlJGIJQAqgW6?=
 =?us-ascii?Q?37vCVgbunLQqvfqjYCiBuP7c32bIlzr2N1ocN96+eQKHFZJBOB/xUd8bo3an?=
 =?us-ascii?Q?RRoMRw+gHQWbCGUJRCQTYv7z7GfBputo1iWy/dLG+lxcRzmsfyKscse1pr+J?=
 =?us-ascii?Q?aaZlW0dTfZOFY80TsBL7UWZOb9HNnOk/tWlIQfPJzdxe1XgWBaolvP3snPB/?=
 =?us-ascii?Q?UpOUsp3f6qAv/92nff3u7O80pnv3GfAw1wUPGadzzsmCez/K7W+KmSS9JCDw?=
 =?us-ascii?Q?6958ylqfpHwFchYPZ/pJa+PBp4Fhl0bMud84h+Wh8DcaFgZH2zCScuGx/sA0?=
 =?us-ascii?Q?h1P4VrXgpL6TN3ZEoYDheLhJRGVZLT5wenSLHff9fZc/E0/1lvkJROj1Yvuy?=
 =?us-ascii?Q?TxwpuB99ComJRifnRJVTREeZoTCjsJkYyPxDMaSL70v0YGUP0Xnp+3dX2EDW?=
 =?us-ascii?Q?eZmK6xQZHxi2oejfL5BrguJii2dZUo/wOFL/Ewr2T7MsNmH5DKLd1bP+bLxX?=
 =?us-ascii?Q?cFjxeBly5TYzdrag18KeNpGCc5YWasQa22avZBk31qKiOmjqi8v0UioDbPfr?=
 =?us-ascii?Q?g2LYPRGKEMtu1bilL9y8qraMXEC6qEcruqnk/e1qMH9R+tZaVsD3/Glpkj8L?=
 =?us-ascii?Q?BXTjHnJC52Su2Phc6khrMEwuBHpS7zLqw5Jm8y977DhpAzPNXvQ9CjOf8kH7?=
 =?us-ascii?Q?voENQJYYnVwx+H2dWPl/SXjxkIu8K7DFiNmFdpFYav/fZqrB4X8Wq/8zA0Pk?=
 =?us-ascii?Q?t43ILsma9um7OKf4SeVbeR4DDMTOemYPQwZqdTLesT0gcyfmEky9Vd0XiRxp?=
 =?us-ascii?Q?POtqRLrhrt+WdU2HtCjs68RPQ1pQpWIDw4qE4gnEwz9jpLaszAWIzFCHN/uz?=
 =?us-ascii?Q?Pl/7QpymCVntJgsZTBjAL6DV4bvVdLH5xOuO+LDbQ2//262+XwA8hl3LRve0?=
 =?us-ascii?Q?f4k+fwl9i6t0vfJ5m6CN5D9TOos1e9b6q42L6o7FoLWjCRXHztMMNDGZe3IP?=
 =?us-ascii?Q?XkHfqZxHnNHWW9A8Pf12OIz/8+9PZJtfXVl6xT8YM5sd/2OUh/04uKwxq24p?=
 =?us-ascii?Q?3md30Eh+A8S6zCOww8Xxaw0u5HMUkODrMtPL?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?avOYDJkRmFdeoPDxZ4XPiwoWLqGy0ZuuIrodufbc8xgo9CZ+VxAPhixAODIn?=
 =?us-ascii?Q?4P/eBpAypZzf3LSfJxgYse/McJ2m4J/pdRrc27a1AAjCyPRcS0e6v6ufF8dF?=
 =?us-ascii?Q?sbXjoi/SFFOW6B4mZtTviLQ8YIo+CyVuEMOkHxDHb5a0xt8uWscwYg2pVMsa?=
 =?us-ascii?Q?PYXgDhYx/rVeRd1K3Y3XMEo+UXLA+zF0g1YzG9nRttdIcK034CrMTUjv51SC?=
 =?us-ascii?Q?ytuymYbb6Pm0QAgenLzdQ/G/UQ1qPfDC1xM/mgcSbukh0MIR4WFT04e3ozbi?=
 =?us-ascii?Q?7eCJAKvLAkXx9QpE7mPq1QlzMV5NM84Xkz0mrsadzRfDZFO+ADvWINR5peLT?=
 =?us-ascii?Q?D/eaVDjNI+IadEHX+r8OBcfmbuPYW5DBCXcj3+Wn1mTDa5ucbSE/gGJ3MaVu?=
 =?us-ascii?Q?6HGSr6aDkPDPYA5ZubzzEXcpNkqkXCe22eVDcNit/qBG9yfhH9WPt0pJtDxP?=
 =?us-ascii?Q?IdrSdQ48XOugwSR9rpJITAn5kucPNckcJA5Ld3mcbUdnEpBHFLm2vTLmKSds?=
 =?us-ascii?Q?ThGCqsJTrLHS/off+huimum+Ffxr2q1vsQG7ECGdWlBowagYVd01R/lxVUjm?=
 =?us-ascii?Q?kKN2b3G2aJdc+yaYzAe5NnoRPDVSUyTGrdZu2S0ZPPPhyEaZFBZvsdf3bQxR?=
 =?us-ascii?Q?7QdAQ6BCBGGD+vF7Eu+U9HFC5ADePqh5oVg3UFi/w2nNfHSwPvT4P/esla+2?=
 =?us-ascii?Q?xmA0MoDODwWXNErvr3T4wiPqmX5dmfrRYpoN4bypViJm1b+BL9N0LtiSkFH+?=
 =?us-ascii?Q?AQaFxILOSXTNZJCiu2u+dIRcTvqHfajV3+cYI+l5+g09tY07N6MbY99leamD?=
 =?us-ascii?Q?zXDLiHitUNBgAYZFJt8dIyTconpTLuGo/ylYV/Um/Eb/NURkUhU2jhegy5s8?=
 =?us-ascii?Q?rNM/ESgBBxy1zzErobaaDKF9z+yzOND/EXD/SpyqCjXumyZ58migcXVMXnDp?=
 =?us-ascii?Q?Xctuq08QwkBlOs3PjAo+6gluSSo7XDNG9V0TRosWMYxVToJQFydl8UJt16s+?=
 =?us-ascii?Q?oFzogJQ4RmzqJT6vVM64TKog98kdxpBfQu9A+Kjj29WGFIO30lqa5eWjk/zj?=
 =?us-ascii?Q?AxHxeKYS6i/CG5hLfmUEG9Ed+FtVJoaJTVGdmsOS7yWGEb+eE3VqAk13LWD9?=
 =?us-ascii?Q?HwTleFSwac8GLssH6gmxDJcwC9PqEDP2j6NzbEAYNR6CocSFFcybCGFfzUan?=
 =?us-ascii?Q?bDqXqLsJQF+P6EKLvblklSlGHYjGkPL/k221FDDZEWrU1NtWSRpaW/Si1wRq?=
 =?us-ascii?Q?hmE41G1+h7cqRppjc3PjBeq2JD5Hk3A9ks4WqmwvqLhuNnrAfNLsSG+uZPAp?=
 =?us-ascii?Q?/U61bQWQrCmqrvuX4fUVR3+SooiFrszLkqJr8XBR2U1XPBbJdnOJf1RRTL2Z?=
 =?us-ascii?Q?+5todSpCPRJH0GhNFf3S+Ob2AdqkFUQjPi2GqTzeQErQRiuo+1YFErJZCZ4/?=
 =?us-ascii?Q?WI1K3MLy6ADOy/YO30KuS4JXxnZ20JuQmZyVV4a50ds7vgOmCJ53N7GxACDk?=
 =?us-ascii?Q?Q3Vw7lNXyNgfLzPBs72ZexS2zCJ522OZ9ZwDNyDGqw5kkLHTTO4vPgYsOCbL?=
 =?us-ascii?Q?2eBFDmX9Hx8WNtfC3HDA3SwsQZX9O7q6CDUV2ioE6oLHpb3Xp8SAQaEN7Uzd?=
 =?us-ascii?Q?lxy0akRi7oeRPkoudZwaDVs6pr+kYsl/2bmo+1MioJwRTm9mZEhngyM6s6If?=
 =?us-ascii?Q?gqzZkEX8tgQMB5+zaLHjiZ3VXUjPPSXsw4Ov7r9UPilhaBkD?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 067c2784-e034-4706-c38b-08de52887db9
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2026 09:45:31.0987 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TpwjdsFQsdT35EETB0DAGAsEYN+361/6FuaFT70/fnM9bB48ANGe9+5qzKeiTuRtDG4+taOWXCr3odvMsYQARQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF6E8D29981
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768297546; x=1799833546;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zUG6QxBulMA+urHaG57YEhayAhRpAqpvgaVLzCnHnrU=;
 b=bXWY6KCVippJtPiSpMggIxnBNSYVHLRsTHCMxTRsJ6K2oiSXSY6fSHqA
 YUanvscfNwsQfPGUWK6A4Jt+GmeaNhJuNKX4XcXV/obb/CItR6R6xQIpI
 5K6C7UdHuPPpXjKUz5YV/55hoEoxS1Uxvbqc+84f3OuMi6WBs+XukG25X
 bHvSOUJo+1SY+6DXWNDq12+3mLfM3CH8jWT2aQoTE0oDlSrxgOMd47mOH
 oEx0nyy+oYxeQEtLi3/wVXvDhK22mVR9pE6Tl6ZvsXWXlh1SRfrauDkuy
 V07MF58dKGyjxMtsJcg4ZaEajI9I7u9Q44oLW+mI2hKSK3+nEc4KWDfUo
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bXWY6KCV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Avoid detrimental
 cleanup for bond during interface stop
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of D=
ave Ertman
> Sent: 20 November 2025 23:28
> To: intel-wired-lan@lists.osuosl.org
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; Marcin Szycik <marcin.szy=
cik@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Avoid detrimental cleanup=
 for bond during interface stop
>
> When the user issues an administrative down to an interface that is the p=
rimary for an aggregate bond, the prune lists are being purged. This breaks=
 communication to the secondary interface, which shares a prune list on the=
 main switch block while bonded together.
>
> For the primary interface of an aggregate, avoid deleting these prune lis=
ts during stop, and since they are hardcoded to specific values for the def=
ault vlan and QinQ vlans, the attempt to re-add them during the up phase wi=
ll quietly fail without any additional problem.
>
> Fixes: 1e0f9881ef79 ("ice: Flesh out implementation of support for SRIOV =
on bonded interface")
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_lib.c | 25 ++++++++++++++++--------
> 1 file changed, 17 insertions(+), 8 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
