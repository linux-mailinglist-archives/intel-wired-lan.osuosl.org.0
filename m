Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 05FD7BB0493
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Oct 2025 14:11:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2880361308;
	Wed,  1 Oct 2025 12:11:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KCpsBQ8eepMm; Wed,  1 Oct 2025 12:11:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8B1E761349
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759320676;
	bh=Hy5BOKXC/Z2CWYAAhlkS6Sq14+S3XgROQj+ZpLXgsUM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xj26fcEB+QPuh0L6V80MFECrKePomUE6CznY0cw0pfCET623oMqtt8AhTYpknzbGU
	 LmjLTwInWHU+xtxknb5dgeONhUJdGUnQDftL0GA8O9gZWH2VYp6IdGcgLg7tN1GjPp
	 mZ3lc59yYDlmVH7uB6bMU7cPFp7hzAm4KWS6QfRg2thSv4l6qnWrhxAXoDX5DwfYU6
	 MeGm1C+MKUQRVXo88UzgqB+P6Z0t9GuueZha3UtTKUO04n+rAFVyrfgRhVK1jVAlZG
	 CIFaLxg0K5ymV968pvkWPtKihxpiprtGb/3r/L1nbm6d6BlEqQgjmPrRY8+2WIzFrp
	 ZskYdgYMrKd0w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8B1E761349;
	Wed,  1 Oct 2025 12:11:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 630B893C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Oct 2025 12:11:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5FADC406AC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Oct 2025 12:11:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id utvdWKkDfFXp for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Oct 2025 12:11:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CA217405EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CA217405EB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CA217405EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Oct 2025 12:11:12 +0000 (UTC)
X-CSE-ConnectionGUID: J3iCHfwbTG670JzJjDrPUw==
X-CSE-MsgGUID: yt0X6fBSQM+rT7GKkxdfBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61551440"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="61551440"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 05:11:11 -0700
X-CSE-ConnectionGUID: AFYL71BOQCyQVetIq2PTKg==
X-CSE-MsgGUID: J5TbuQ4LQFqVDNIkNX9BuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="178576605"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 05:11:12 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 05:11:11 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 1 Oct 2025 05:11:11 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.3) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 05:11:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M2mpyf/D2Gp0+Mrg+BKeji4mxIxIGP1UJX1nP0LLCKrmx5OiSCxZJ2hlOHIU/a8aTBlzxaHgpPKtbvSJrS5uRHaP/u29h8ltH/WtSc101EGjMRvyBtDaFP0hCsXUmOmSh33JwT7WHl3Nk1+EYtUfareVXZie4/dAYSO1l7k0gprOTA1XkSxDfReDoynrL0eIsbaWrpZJouiPeTP98Wulx3TUh5OhPsfqyy7z2ewzxSWtfKFDog4iOb5vBg9wInVR0HLI4FWQfdWvrlqms12XgHrCafSHbcvic8SjCyTLGjWZkgVHKfSGTBGf7tkv7SCEt0TGI1o8sFJx70W2yaHS3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hy5BOKXC/Z2CWYAAhlkS6Sq14+S3XgROQj+ZpLXgsUM=;
 b=MQS7q9qmhmzPlcFuqAqhu2HgJ7opjd2sReBpyHWHt1Wod0vRGW68jNKU2qiC+QRMGRQXoI6BJIQhQNrivmIbngq9llaY6h0Ba/AIiqRWV06+rk3EU3wo4j5IswkmJZPdS8LBpzQ38RgV4rN3mSwfam6quZ15/wjVtlWKaZTvUK+9kwWxrf4N2TGh2RWW86yAWhGodsvUjjMcEK0cSFWcYCY01H5KxTJdG/fgLTRAo2v4cAthACbxZhvRjCbXfv6JLOdMErYVoVX/w3xXjPvF3nalSr4uE44DMDuRl+5eVsc+aHVu85XTluqyHt12J/M0lVvm2n4NNkNvRh2Zi6KR4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CY8PR11MB7393.namprd11.prod.outlook.com (2603:10b6:930:84::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.18; Wed, 1 Oct
 2025 12:11:07 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9137.018; Wed, 1 Oct 2025
 12:11:07 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Haotian Zhang <vulab@iscas.ac.cn>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3] ice: ice_adapter: release xa entry
 on adapter allocation failure
Thread-Index: AQHcMsojc+alFDpS0EKTLmJTbkNxKLStMyEg
Date: Wed, 1 Oct 2025 12:11:07 +0000
Message-ID: <IA3PR11MB8986E04DF6C3B1DF2CA823B5E5E6A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251001115336.1707-1-vulab@iscas.ac.cn>
In-Reply-To: <20251001115336.1707-1-vulab@iscas.ac.cn>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CY8PR11MB7393:EE_
x-ms-office365-filtering-correlation-id: 79bc670e-16b5-42af-8e41-08de00e39a14
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?M/HtW2EkOmz+CnJghVI4iXvaPPYnKNzdDOGzCZLf09WdPh9R2Ew0emj1UQD8?=
 =?us-ascii?Q?O3O2/UvVWU9cgvpCGZtN1uXQqVh7TKBjSzanPMAytI1repBcfoxTBKOK6LJl?=
 =?us-ascii?Q?wTZRYKECuYMrrpOZU0Jzd+dakpdwfU6QVsrBZ8aYUhbFbW5YjnucOJU+3Yo2?=
 =?us-ascii?Q?TzfnFqkHnBNNJBJZPbgp5G3nlGw8XFt8E3sb5F/EIJajAgthhzH7DlGPhgcL?=
 =?us-ascii?Q?UkXI4ZJVKPH52qY/IsqWQ5ZvL0Zhbkp5HWGIDTWn9/7zx/p6adAE8X91yf/V?=
 =?us-ascii?Q?LUAks2one+8Z8Pvr73CBaryoqUTljA+KOv+HMau0J7LM/KxRKpO1nM9vozyw?=
 =?us-ascii?Q?OMaCfYhwI2qY+RB7vWac4nHO0srugje4md5ms9nnyQEJ7Ay2wIyBB0zAm44N?=
 =?us-ascii?Q?uFK+9F2t48jmHOSmF0mWRFNyeRVBAsXZhNL3AgQz7S0fXMX0o/rQy2sCi8JH?=
 =?us-ascii?Q?XZN/59WgfDGK7HH3lBQzP0RiLYAHjTLRdu1/xYHcQ3xo30WAWUYxelwfNssb?=
 =?us-ascii?Q?vMd3MV9wVHIxJjny5U4Gyf4ZFIPeWSzpJ7EXReSxuvO/OEypl7/rZ3sH6iil?=
 =?us-ascii?Q?qX3+kraeH+GNUYI/s79AOu3FxJB86TjhTxMwS+JFJckzwHHYzYWuGCkVy2cc?=
 =?us-ascii?Q?sYbltfQAqoaJOHIEG9sxOz4Ufd+4ujts0l93JQoK3VSrBQJ4Dh3SE5HsUiNa?=
 =?us-ascii?Q?6MkxYNEEeAyfl6FBtLzfmZXrDG/+9rVMD7W9K84mW3/Rt1mEEQn1ylHz8Fzn?=
 =?us-ascii?Q?ctIlzVUhtz8dtzPlNMrbxwkj2V3XDVCMbGAb1ZJZq3otjWoJ7rieA159+OIB?=
 =?us-ascii?Q?iaKnpDAPNHY/8q3bKCqpYfKu2G6umG5x5YL/3t33hixX6iDTUtjXmDd0Wy4u?=
 =?us-ascii?Q?T7swBGOfTjDqxU4f/BisGwUCTKVq02QrpoejqcJxiW9CqssTkoGGWVA0sblH?=
 =?us-ascii?Q?pIY2Jjlyt+eU8T/Vjk70bd0lIZWSHofDxIk0sq7EEtsHUEfC4yR6yXGPkKP1?=
 =?us-ascii?Q?B/6E2mneyC+kup/4SYUX9mhTCKwfaQLKnVmjZFYr1gVehfICHYstAQURs8g7?=
 =?us-ascii?Q?rNn3ycvIGV4LwAbKH/5B6VuhEadsPhDoSk53atHtpeUlVHebFijTsvES/VxC?=
 =?us-ascii?Q?iNYHYhp/BT+eBn0lAYmS8NGiYUWxI3pckfM42uxkc60d6inIq22qBhPV0rYF?=
 =?us-ascii?Q?hi+B6qv0JAQdD1U+bB3S02PagTq/7TcixBHMTRogaLpbwkGP9R4HKICZMJes?=
 =?us-ascii?Q?DEBPkWedxwLzFKYGcIvP8PpzxNmxtRssnOdXXVfbe+YlQxKKFZaUeI8GqYuW?=
 =?us-ascii?Q?rpmUy/DD+Xhntk7K8Q+Q5QR+IJLuyaklsC9eKLUkDyBkRhw7kKaw8NLnRuov?=
 =?us-ascii?Q?A+BWBoSyPkGK0p2QqULJYdRGzDb34jKHN8mxyvyHXPjwm0lmcvrSWsWZQO3U?=
 =?us-ascii?Q?OcBZMIaCxD7We8LpBQVVw5MaQRghosUWlZVdnHGXHu24i/zzAZTnlnG3ztuF?=
 =?us-ascii?Q?bvhKibt7C47Ybo6egpXQ/bj6kbNTzZSWWs8t?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8IBmivUlZBtLMlFCMrkZK/6C9uorkBEY/A50LnIOP0K+AKWNR0WmY4XrSHsE?=
 =?us-ascii?Q?0l5odtueQy6JbVsXpktU2mpLrDfghsdQY8tKhfn4j7DfD4baUtcdoKIy0K0c?=
 =?us-ascii?Q?5RJWmUwaTM/JCZCTAIBMg+WmUsBD0UdU3fNOD+9s4WZpWS+3acyc7BpPHsL1?=
 =?us-ascii?Q?G99Nry/WcNaZsW4y2K26xVMQ1J63FMJmSeMFTx9paf/CYWpqx6+NBfacJoHn?=
 =?us-ascii?Q?RC2dAjmNo3CC92ShsBzc2Kl42oahlnqWmpVLlIub59/HdMEv495wgCvo9blV?=
 =?us-ascii?Q?f417UB1nEEqpWkmx8fBsdS0SwqNCWyOdTX47aGGbXDAMszjPA4LE5DTn+C7A?=
 =?us-ascii?Q?FfaSM+CALzDHBQhvRMpvetxyFZe8m1RpnLaW2ugkMQFImnYndSPFHYW7WnLe?=
 =?us-ascii?Q?MxaYFmSR+Pd/buw0TGkhFK3Yu/h8VJgy+aCadQmoBj1zev2C1kyPGzFYsDgf?=
 =?us-ascii?Q?ZBbLN4XQ+1TxRe/kq9p504oAk4jz1VnLOsS8/xgU8/Qt2hUiv58wcxhCt5R1?=
 =?us-ascii?Q?2q0JryTMWkbdeTT8CxJgl8Yxb2KGpMHV9x8vcAx1IMPmVLL0r9bdFSEserja?=
 =?us-ascii?Q?uqd69/dXaDjaAeDI1Y/zcis7ADVoYnuSOTspd/mOjs8gyfh5X4iAIfRH/Hnh?=
 =?us-ascii?Q?kygC5t29rkJ4k1QUcpDJHKrluqQJ8T/Zuj7tg0SpPVpQIlp8mLoa4no2tivC?=
 =?us-ascii?Q?RnPYLuvfa7U7dsN73LiW8gmWEFDBB9uzgc0Q8f8KfB2JTnOdmqQOnoat2Hx7?=
 =?us-ascii?Q?51V8FEXSHFZ43twzVcr+rSvZn7LXt/ytgh+B7QDEcLIHeZYf4WWTfoxW0oSh?=
 =?us-ascii?Q?9j/U0QkMftWd4ZeODuPWQzR4aEqqYFy+GtaFoTb2B4wySU4FLhxJSXbFbN51?=
 =?us-ascii?Q?AYr7fj0rvd51kMXbYLV0StiZNhu7+P1ot9+RNF4Rl2BXxbxaIqZjlOMDRZAt?=
 =?us-ascii?Q?g1jRbwEyRBuT6TlvDgZ2dMaUd8bDwByKxhttQ0XABa2O9QKGyPy0L30rntyx?=
 =?us-ascii?Q?q6RL0wHZcFRwEqwnNrZVvbu8HL1+yceBfgjJk3y1VciK2/rEtLaVaykhG1M/?=
 =?us-ascii?Q?+bNwLhnqtGdfStcwpVCG15IKcjU1Tc7NDNYe9BE+rncid3l8fgf0vAA6XXzK?=
 =?us-ascii?Q?6H7OTDft6bhXy5a7BF1Hs6FIH2uuDWhemaFZj89lvgVRhswzu9SkYhXD0X+G?=
 =?us-ascii?Q?fz0KHO6yTsInTtnp2k+iTumjxOt91EjozsIY5rVCABx9PJVD+IOq/4n5lVuz?=
 =?us-ascii?Q?sloM7BMBTuepn36902dup3Fa6r68JOVZPbEy0kVAShw2s5YAAucgXvGFapig?=
 =?us-ascii?Q?QdPv/30dAinQ74EgKm3nM3dl2HQS5EoQ+Pb1HIXJREiUhFsllcni1iLEzC/+?=
 =?us-ascii?Q?RzE+I4d2xgez3CdGfQqiES5NwMqjZwmxBYQE5+2B4t1/KRn3CbHPaNSTe5EE?=
 =?us-ascii?Q?zLCbW4LxJd60BOokeGO/9gxrrCGoE9t/5NOP/i5JDO2Gg+Q1zTdtI2aRVnZK?=
 =?us-ascii?Q?yuzV9UyW/QTPrCGCgSB+8QA/A15XeaTEjxobKOygzPlG+ADEtCqgp2gk1kqP?=
 =?us-ascii?Q?UY0xzC9zQ+GuBJHJUq596gNsZlZkRc81R83Jwpz9XNFJmhjO7MtNp9ySyqQk?=
 =?us-ascii?Q?Zg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79bc670e-16b5-42af-8e41-08de00e39a14
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2025 12:11:07.5755 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 95h5/zHCfr4LEUwTRwQgFsHloxyGc8InaAZFdcoJa++mk7tnf2gcg8euBc3Wk6qx+Qr2vfkRshnVg2R1ecjLSLbYZ8bDu9FyMr0yz1xn5Fk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7393
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759320672; x=1790856672;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Re6peXDW7hfXtC6xTGyISSkVvEcANdsxebGefsiNEn0=;
 b=QZ6zN0RSeoXhtNKQAIJNdtrSCSVgKkBmR/YYHQEKsyid+gvHgKJDkTZ9
 CA+jP+KHYvZ+5Ryxg0fGaTOu9DywuOF51o1fkfdThPD24t1zmHVQQ49BI
 3zeZHi8G3QjUn0OYv0vwbvN4fphMhfeANjaGXQtjtM9r7dhrNvpdvWC3R
 DDdI4Xkpvqr2sXFupiyejJQDVaYI6XsMh5nRGkyRsEamjKYVrmVhSGfN3
 rhxLGitFa1jWmEDIXDSe8xUPrVQaxQFNEQjobjMyrB73C9CnFqJjVSZKt
 gtgluj3FSH/kpUiP9onhOUGMxauxwZj9Jp94J08dhcYO9qhYzTbfFo6fu
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QZ6zN0RS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3] ice: ice_adapter: release xa entry
 on adapter allocation failure
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
> Of Haotian Zhang
> Sent: Wednesday, October 1, 2025 1:54 PM
> To: Keller, Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Cc: Andrew Lunn <andrew+netdev@lunn.ch>; David S . Miller
> <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub
> Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; intel-
> wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; Haotian Zhang <vulab@iscas.ac.cn>
> Subject: [Intel-wired-lan] [PATCH v3] ice: ice_adapter: release xa
> entry on adapter allocation failure
>=20
> When ice_adapter_new() fails, the reserved XArray entry created by
> xa_insert() is not released. This causes subsequent insertions at
> the same index to return -EBUSY, potentially leading to
> NULL pointer dereferences.
>=20
> Reorder the operations as suggested by Przemek Kitszel:
> 1. Check if adapter already exists (xa_load)
> 2. Reserve the XArray slot (xa_reserve)
> 3. Allocate the adapter (ice_adapter_new)
> 4. Store the adapter (xa_store)
>=20
> Fixes: 0f0023c649c7 ("ice: do not init struct ice_adapter more times
> than needed")
> Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Haotian Zhang <vulab@iscas.ac.cn>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

>=20
> ---
> Changes in v3:
>   - Reorder xa_load/xa_reserve/ice_adapter_new/xa_store calls as
>     suggested by Przemek Kitszel, instead of just adding xa_release().
> Changes in v2:
>   - Instead of checking the return value of xa_store(), fix the real
> bug
>     where a failed ice_adapter_new() would leave a stale entry in the
>     XArray.
>   - Use xa_release() to clean up the reserved entry, as suggested by
>     Jacob Keller.
> ---

...

> --
> 2.50.1.windows.1

