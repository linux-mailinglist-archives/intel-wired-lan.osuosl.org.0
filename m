Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0B9A3F65B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 14:51:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A3B781FF5;
	Fri, 21 Feb 2025 13:51:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6NHu2JQyBAbp; Fri, 21 Feb 2025 13:51:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2EF3181FC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740145894;
	bh=pLuX1W4iYt1Cx0jwmlk4Gk+zj4GKM3ZVQPEF7gVrxcY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CzxOgD8mSQDWcj74KbKIpYiqS+tYamjej5eMS482XQt99k0LqlUIGqRmpkCFf/KJj
	 AN6tnpitMfCsaW7rajUl60N3zvcN7WJhjpiaCP+UIBghjdf+5NZS6jkWMHfEZTFxs3
	 6Moa3nnXQG/G/py38hp5fuzBaS7uHyCDGOGvDkfLkFFjVcWAfwpx0c5AmQILwIzAkn
	 i6W9sh99zcyC9cEdw8DasV7lnmC6gryk9PP8YobkoI/264mPgxcGJcaJyzlZZ900Wv
	 f1G8u8Iry+aeGXkcQRpQuJ7PnQBEFGUHhn1m8C82P7wpOhPjT74FQK3KTMhak1bOcC
	 ZWA+20f5toKhw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2EF3181FC4;
	Fri, 21 Feb 2025 13:51:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6319B194
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 13:51:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 53413606C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 13:51:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ylRRZZLFPieo for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 13:51:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4152F606BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4152F606BA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4152F606BA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 13:51:30 +0000 (UTC)
X-CSE-ConnectionGUID: 2Bczb0igSouaE+ZPKNOOrg==
X-CSE-MsgGUID: XX6y63S+SIWzAEVTPWGPbQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="51606404"
X-IronPort-AV: E=Sophos;i="6.13,304,1732608000"; d="scan'208";a="51606404"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 05:51:29 -0800
X-CSE-ConnectionGUID: u8fPzBWDSeyj+lcLZqWG0g==
X-CSE-MsgGUID: bp2UqllYQeOAic0uHN/8aQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,304,1732608000"; d="scan'208";a="120306671"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 05:51:30 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 21 Feb 2025 05:51:29 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 21 Feb 2025 05:51:29 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 21 Feb 2025 05:51:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W8EunlrL4WfPpb1jX/1a5xE2QsOaL7aLB72mTFPf5BzHk83mJ3rNkmGuqIaYbMqoI7vVfNLVg2tMhi/ym51iN0NfW5NVhnWtfm/z5jzuHAnWEghVxmuDEcj0jJNmwrtgVYS83wHmK86TIk+nXac1T0RpF8HsPfDK1G2uycIgXgYP5he29/UPw2QpqQYltB8lZ47CGwpqFHXaqlYH3HP7k+6RuH4LWHY62kDgmkxICTJDAPPL1zo+kXahIjo2VKPMTd0SiwFXkWCpauVxO/y/SZrzBMB5DHe0E3T7uZHbK7myMCMAupQHtktiSXwErVminJ+ax2Wyi9fn8uYwyDaoGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pLuX1W4iYt1Cx0jwmlk4Gk+zj4GKM3ZVQPEF7gVrxcY=;
 b=A4OD4s/M9Ae3Cli7c7H2N/Uo6fAhvtJ/Vo2QhGObw/GHfeGq2C0UyzaRv5WTIWJ3kPZqR9+zy69XBVvrvb0ERg3qJqxk/fsuo2IL5oJy+pct4w00PASVXzN7BCDbDfKeTdu7nneOiqY2HnRAOrmxeqlFMxQg68Kv94KHiMBHEZ4tpuhSpBmlgEamk8qZdlqW3uTJFe3c7yc2rl4tJfas6/WiuoDuFkhZG6jFvxzyXsdqZjUxb+t5HFE9JJVzHMKNoGK8mBza2vn6jVm54Ljl3qDWBo0hBAebDZ7vr16VxhE6rInwAZYRzE7yBoY9rJx1vn+evhBb8u68jQPMZKXCXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by DM4PR11MB6479.namprd11.prod.outlook.com (2603:10b6:8:8c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.15; Fri, 21 Feb
 2025 13:51:26 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%4]) with mapi id 15.20.8466.015; Fri, 21 Feb 2025
 13:51:26 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Damato, Joe" <jdamato@fastly.com>, Kurt Kanzenbach <kurt@linutronix.de>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Sebastian
 Andrzej Siewior" <bigeasy@linutronix.de>, Gerhard Engleder
 <gerhard@engleder-embedded.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 3/4] igb: Add support for
 persistent NAPI config
Thread-Index: AQHbgS+LHkO17VzUqk+5drVD2uzj17NNkgAAgAQ68WA=
Date: Fri, 21 Feb 2025 13:51:26 +0000
Message-ID: <SJ0PR11MB5866C1D10FDD48A5DCA3FD89E5C72@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20250217-igb_irq-v2-0-4cb502049ac2@linutronix.de>
 <20250217-igb_irq-v2-3-4cb502049ac2@linutronix.de>
 <Z7T4XHtw9-EN-ifm@LQ3V64L9R2>
In-Reply-To: <Z7T4XHtw9-EN-ifm@LQ3V64L9R2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|DM4PR11MB6479:EE_
x-ms-office365-filtering-correlation-id: 610bef4d-067b-48e9-91c4-08dd527ed5c5
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?nFP2OARmEy86k/Kzr8rOkAueYI4orxL53BYILPEiKNiV6gLjgX4A/35laB3d?=
 =?us-ascii?Q?1kiw+g0c5FIcoc+9ZkpKTejwoCWSiAV/2nPzua0gYutxi9GV++7fuZYv2wIt?=
 =?us-ascii?Q?gXh+m/lnZ1pSZF0LvEa7iEtJqx6CQJ0mQFzOeKFSeffq2M3VTZP+5LstCF0u?=
 =?us-ascii?Q?ZCMi7bUIYS+bj3VmlC6pJfL7mH9PPpT23Spt8q9Dkp+ozrbQvLbn6XOU0B6x?=
 =?us-ascii?Q?LhNHbx5D7SmePLGhgOe9caDL2AGw7sq1iQ8RLDfmOEH8C4BwIEoE0L61f1cD?=
 =?us-ascii?Q?zQzNorr84/qlcNmv4DH0REBHsdpALZRr7pM6RUP4fvQizuUt2thlE40SXfYB?=
 =?us-ascii?Q?9V9pPHLwCCtIpCEaOFQ4un2KkDzui8gF5j7tZf/qEqa4TmHl5n6K7PlgmrhM?=
 =?us-ascii?Q?3hkaEUg4Xbc96ihoP6RscNn/56qY/NACkA6ZRpgYl04a8nikb7jwu+jO+F43?=
 =?us-ascii?Q?s2dAoL2x8SRY04jtpbEIL0v3+k2JUpGSV0XelAsYCbDPRG+Q0w1RZoFNkoKy?=
 =?us-ascii?Q?dDp6Yqmf+LKgyH+JyYoWSM7BXs+bpBFPt79ypdHixZc/Ho7vmEQa1elkt0sK?=
 =?us-ascii?Q?3F7zrk2OWju0WpHWxaqTHWeEbzYugLamqPQT+cP51uXP/005vwKh4y2IBd1x?=
 =?us-ascii?Q?RMGd82ApIVfzsdIkCSBoqUePkVtT/C3mgsefrIUFAgoYEAGVfaL8U3uY0p//?=
 =?us-ascii?Q?m8uNbMQNnZ3tgzTd8fsr/NDjtAzmHIQdJgTLOPkh1d5Ds2LBD6FwPs25fvX+?=
 =?us-ascii?Q?0j+7bwBnoqVNobWjJ2Q8Sm4PdSUNFpy+MCuL9Xaz653wkHmmdwjdGYwi23Ay?=
 =?us-ascii?Q?52i/oyDSbSJ5bsMwkI8UI5jNhAka6WPf2cuTjn2appZoIhefxf1+jQmyPLJB?=
 =?us-ascii?Q?srhXfjDSdwaqhx+bESdszKtHUTACPt0Ac1yaYNYmWt0cLhykEVhupmy4VcXe?=
 =?us-ascii?Q?mXKTW7EfSyN+naX4ODYcPG45ToP4BUVM9wKIsYdpPW1uTArBsJ7BDt35tac6?=
 =?us-ascii?Q?TcshVKXn4f+f09iP8ZXLSHElw0OdqgjM2nAzHjt2znWs5ksT1T8RrmgXkKFw?=
 =?us-ascii?Q?N6XQs56DOL5b5wO2BnUNGFpVUrTagBA8dhyGSP1i7RcVW5ae2y+XPI2WBrug?=
 =?us-ascii?Q?G54nhBfYhfDILaQ24iQYmITyHtiX0pCWEky6X8yK6yj+OfkPoUNZr4BEWmyw?=
 =?us-ascii?Q?F1dkIQeSz3ZcZvTFU4LWeXpYBvlVPPnLef/NQt/juweZP+5spzADS5Y3gjpg?=
 =?us-ascii?Q?64L003l+/1DP+mNzHGToa8ERd8wNdFtDlmq4asOpzcSvOxV2hF++g1jFhggm?=
 =?us-ascii?Q?ic9qzUi0iqxT44nkl58r06GoNF/TaqpyV3IkL1M5lMwJ+pHhVCZ8dUQJ9Bhe?=
 =?us-ascii?Q?OW2xv7T0SlxBEoO2ff9wDleh0KYfk9GNrkjv4zhPdcwi5s30D9B56qMSCKXy?=
 =?us-ascii?Q?bgnfRqUhWUWYh1QIGuKyDgQCQPup9xT4?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ssP8vfq3NR8RFQqUJaTy7uxz3EKrkkQXY+Nwz/9SR+kWaEPGASQvMDEcooSm?=
 =?us-ascii?Q?XMsnXfGhbP+bcvQp8DH45aEH+bIvoqAJ+meHSu+x0az7uf3zoeM1XaLb9FDG?=
 =?us-ascii?Q?kLZT7gQCkr/kWXJFhXSJiryEoAP3GsQ5IFPBwpMNcshkHbcC1745Uvp4ZQVF?=
 =?us-ascii?Q?yL8ppB5gzuj8ndQ62+ZMRn2SRpSvJx0DWiLeab7wHZS2wOi3HpYVHgGSlfuQ?=
 =?us-ascii?Q?fXwdHFtJAqSGFVtWVP8m4QhpZ9EygECqRoqmEN+w1Dx05UED+i4UYGGuH55F?=
 =?us-ascii?Q?whXplBjaAHWlRad/44rM++dEArijLjx9Ssk5f6gsz8b0KNbPL2dGSbB2lfpn?=
 =?us-ascii?Q?qkyvR99M7YmtIrv14milHVHfw5fNWlhpIgh2Xn7Knbj2pbiOk3m9mtzH8tg5?=
 =?us-ascii?Q?zkrOwRBMpNuxXPV8EmhFqO6lZzHMuTuG4sp6iRjqqoAu38sh+318XY3C/b+Q?=
 =?us-ascii?Q?VZP4L9CDZnrVibE25j6aRzvoLi/W12qfKb37c32HB5tqlOQHq6HDlLAWJn1M?=
 =?us-ascii?Q?FWW5izJzG+NwvRvvsPP7WeQQivUOQmL5gDWv8GvmoYRRJg7NjyqAk888IiCP?=
 =?us-ascii?Q?S9wQrn4pe0yVVOaCi+YjIWBOzqdvaR6M9+s8/9eQ+68Ofwbwa4ilhc5rQGwH?=
 =?us-ascii?Q?l8pQ5m9j4uJ+KHJ+Sx6djzKyobJFNk2gYcyoEJPUB3DfLHiEtimKP8dhpBB1?=
 =?us-ascii?Q?sqhwgTJmLaB6k1XISm8BQ166LkbbqPByMGAcx0iPKGi7Hi5ORaG10TbhBewL?=
 =?us-ascii?Q?+CpIV/iB46AqDfoOpelsLZvpWgjlI/M9Jl6wLuKO95uaL3E8VrK7veIIvvUh?=
 =?us-ascii?Q?jnuqV2IgLEg0bsu1cdQq63Xx55ZqMTddHy5Tbh5nx2UT016Wy+OQvE+RdI6e?=
 =?us-ascii?Q?eJ1uV32QFmyZ+tZx0TlsEpbgNO2AhltNWeSuzF/PF7JesiGVpFpAskn/wdJe?=
 =?us-ascii?Q?I7SI+fqHCklZumLMXQOm3GV7N8onsmcP/6dLxcX+FSfA8sfV+Mo3szUtjVE3?=
 =?us-ascii?Q?eNax74mleFIDC178W5tFZY7xP62bWWRiOVXafLR7CC5EsPiA/JomDrzvMU0p?=
 =?us-ascii?Q?VDmO5z4nKCMmHk2iSLCAGaaCDxXRZUiIeh0E3C+EH6KFxi87rXerhEenOOfy?=
 =?us-ascii?Q?bgwVehoGqU+X5NgMan1FUlft5NHWtb5qH+FXL7NU8zFOUX4X2Z9wUWaDO9JC?=
 =?us-ascii?Q?4G0cMGAk01q/txE11yREygBEs6aPQbCUUkh2P/2AYDcFhmZ20e57YzY96HWq?=
 =?us-ascii?Q?W6QXmYxl9YsrSzc8v6bbJU5vzWCIKIi8my76D/cvFcADQw5RB7afkbEl+8Iu?=
 =?us-ascii?Q?ZAPjdqxVvdxFlTmrFIgWaya/tb8zDyllvi3qDFVQa2gBIud8oOzJtwZntuE9?=
 =?us-ascii?Q?UPpqJ5gM+su/xE5QrhtVyQ4hHtpN+J7bgM2Mi1+veaKmNvvFpPue1tLa8o2X?=
 =?us-ascii?Q?JwXxjaMl07ukXZp+ZwZSBatzD5LY7MAQAlUuR09oiN5fz8wIYyCW1aFvjAN6?=
 =?us-ascii?Q?m7wpHThD5w31+wNeDvPvlGuJTJI9r49wRDZCCiCGmun9/+8S6Fi8AJAOyJJf?=
 =?us-ascii?Q?BuJpzf9XmKGWaTWtdbKUU2RBPEMXhvo6gn8HjJnwuXDDQQGrN7dRcOVPwHOC?=
 =?us-ascii?Q?mA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 610bef4d-067b-48e9-91c4-08dd527ed5c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2025 13:51:26.2246 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VRFm/IOWc34vztdyCK+SEgVcCXhG2F51hjFx0sf5cZ4jBlTmtLMjvUBZxThmJB1urOOaqheYYTpVRJy2AOg5cApKc5dP0ewN0iG/9J805oE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6479
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740145891; x=1771681891;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m8BB/IhpaezHp86bzuaZ5kCaSQqr2EYHBpRMNwxB55U=;
 b=NgIdQr+vY5GjOj6Mq/zNYp7BKGzucRPcavgrPNhG5+mfsqYBhYeMVF8W
 1K3G24dT/LUp3m3t1JPLw58+kzjSS4YX+8hE6F2RvcoKpwQROFnv7ghGs
 MJmty+m6dFGkO9wvhSUCKSdK4+uSJvRR5n2xfSlbWZ0acGPAWiSAjZys6
 AjEVJh0qD92p33xVJwGxXSKJSbzIpLPz0vpTUlsXpdD3KJX3OvOvtkWZj
 CuXWFTmB+wJorLNkhebRHz9Hk3rJEteYgZLEQmOAX6KTNDOUlwhHdGNm+
 gdGV6A8ihBJWwHo281SJOSy9o9TS/DqL0yyuWiE8s9dsJAwdan3EWSc8b
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NgIdQr+v
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/4] igb: Add support for
 persistent NAPI config
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of J=
oe
> Damato
> Sent: Tuesday, February 18, 2025 10:15 PM
> To: Kurt Kanzenbach <kurt@linutronix.de>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Sebastian Andrzej Siewior <bigeasy@linutronix.de>;
> Gerhard Engleder <gerhard@engleder-embedded.com>; intel-wired-
> lan@lists.osuosl.org; netdev@vger.kernel.org
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/4] igb: Add support f=
or
> persistent NAPI config
>=20
> On Mon, Feb 17, 2025 at 12:31:23PM +0100, Kurt Kanzenbach wrote:
> > Use netif_napi_add_config() to assign persistent per-NAPI config.
> >
> > This is useful for preserving NAPI settings when changing queue counts
> > or for user space programs using SO_INCOMING_NAPI_ID.
> >
> > Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> > ---
> >  drivers/net/ethernet/intel/igb/igb_main.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
>=20
> Thanks for adding this.
>=20
> Reviewed-by: Joe Damato <jdamato@fastly.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
