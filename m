Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wBRcC0Ab6mmUuQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2026 15:14:40 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6871C4529D0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2026 15:14:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C5CA40FC7;
	Thu, 23 Apr 2026 13:14:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IuuoDDO3Xfhy; Thu, 23 Apr 2026 13:14:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11AD140FC9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776950073;
	bh=xNoNjWmkW/QG86USpOOODpHYbIHqG3OAzNONPCy6bAY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7cxuZtMPOesU/QbtY4RTxyXf9FU6FiobTkY35BTf52tw7tG3wokVhV3kI7RnnWaW0
	 KHYlz1Rf50VyqnWULF+sIeSKACVeA/bUbrA0/lD4Vw/rm4H8TlFiGcH1Iqnvs7uotf
	 Jk/y44nbeMq9jSzmZ+bGHnGWmwmSKi2U6u1Fmzx7K4yDD98YiWYqaIbEdKhB8afpLl
	 kZ6uBvLX3tcrwUfuCVFbAQqd8AKvIauThSGJFEOFU7kEGKEB2zfF1NRQjMmIlxsExH
	 F4TrNFW8aqrt16mtw9OLxTr6F2JctOR3C5q+gknZrwA6E0Mha7IAU6Gx+cLZLUwRx2
	 Koq/IBIP3Ud3Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 11AD140FC9;
	Thu, 23 Apr 2026 13:14:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 25002206
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 13:14:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 167B780662
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 13:14:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h11ChICPM9HK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Apr 2026 13:14:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6777383B92
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6777383B92
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6777383B92
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 13:14:26 +0000 (UTC)
X-CSE-ConnectionGUID: YEbIgPTQTySVztHakCQMcQ==
X-CSE-MsgGUID: vOPzuiznRfGHyQj8rGkrJw==
X-IronPort-AV: E=McAfee;i="6800,10657,11764"; a="88224104"
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="88224104"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 06:14:25 -0700
X-CSE-ConnectionGUID: HZP87rlOQW2CF3KCyqQaGw==
X-CSE-MsgGUID: 31pQ0rqZRqijmHsGFH7hSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="234441792"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 06:14:25 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 06:14:25 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 23 Apr 2026 06:14:25 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.6) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 06:14:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bjM7GdMcvb8+Yz8ZWjFUYPImNIJuVEjnLhhUuJWDejJeu72GX8JQEVlN3b6NOg+/H15PKcHeK0GCEX3ArgvX2/gs5zSQbOXE9SBN4QLixLHlL7bxVprf1l2NTpE9jPspW/9SKGdc23Mf/eW3KDmqtMAed1nrhkBnum+PfG0NFOMk3OQB2o60b1ZPmduBoijE3Fy+vngf+MkDp9lvAKeZ1AosnpVcR6KPoQRA4sb8tVkBLtablXalrzu/uUX+vHCqYkK9KclMMaUXLMaY/teo3xDU2oaMnKKyrzhpImqvtNLcIWirtDQdnqab4ga3973twQtWPaI2w44XDYB49XNy9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xNoNjWmkW/QG86USpOOODpHYbIHqG3OAzNONPCy6bAY=;
 b=S1XB+8a3tEYAEGEai3ntMK/ZOdh6720g+xXozS/pAMn9hUgYfCfX4hU22wxfptDuLGlCWynf2yHKPLZ/1EvNgmLJ83Eph7bikY6kpxCZHhqjSLSzOSv3jYVrmts8S+hz1BrCU1MlZbSupeYoYw8WWDxy9CIOCATmJwfABkXzJ/VT5oCNXZe74Ysq+GUmttonnubHtSVRiXobsP5Mo5hwDWfQz+w5AxlLnnHjaZCy85HZwBnxiKJtSQ5WlCruCv22RRK7eF39O7qkql40aLjiORL1cYL3Xw1nED1kAzV/1m8GZyW/1iRurRNCjdqngEr4ZEH50PBxrmE8E3MO0PKwZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA2PR11MB4891.namprd11.prod.outlook.com (2603:10b6:806:11e::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.21; Thu, 23 Apr
 2026 13:14:22 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9846.014; Thu, 23 Apr 2026
 13:14:22 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "jesse.brandeburg@intel.com" <jesse.brandeburg@intel.com>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>, 
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>
Thread-Topic: [PATCH net v4 2/4] i40e: skip unnecessary VF reset when setting
 trust
Thread-Index: AQHc0yHEjKjsSrSJEUG7Io18xr/7E7Xsn+bg
Date: Thu, 23 Apr 2026 13:14:22 +0000
Message-ID: <IA3PR11MB8986A66C33543166CD996935E52A2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260423130405.139568-1-jtornosm@redhat.com>
 <20260423130405.139568-3-jtornosm@redhat.com>
In-Reply-To: <20260423130405.139568-3-jtornosm@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA2PR11MB4891:EE_
x-ms-office365-filtering-correlation-id: 32235200-a642-4a40-287c-08dea13a3c60
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|56012099003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: iRO6WzHQ4+gKprTxOj6xHycA6JZSYlUZFcV02Xp8ZwpY+hmnLkKjczjgSiyELt7PMEDNf3YJWcelcenaZfyj0y4vACPd+t3GtXo03RHVZW981/fwhsu0c+kpTJFcIWEd0LhKIO5/gCUDSNWLr6UwN567/0YJh+Op8X9RyVmEYG9zvFn0JITt+rw9goUS3t+ufu5MFKmD4d78NZqih3TFpoYvKn5zAqEyYEq+qLC/SdgIJpoTz+GU6H77tFtwrVabjXkLxTNg6NYDWBm/Y6a2bajVKb4X8gvR0Sts5zL3ZUE1wutC/wMuXZJM4vaE1o7niRE/HuFS0Gd1sdY9yB3eeqxJt88bEer1bPBpKXxj/ko8tXOgIlkCQh2QsDqaWZ6mVmU0WJp8EQTX3BA0GzEIfKc9gPDlARv0Gg1FGyl4zT3DGgfOYbTWKtvOg1Qq1w9rsbVorqFhMI2oDiVY0oSMw7AtKBPXPSAaQD+y6MPd2RtiHPdLoQD1qRFH7/P33Eh9o2QTRjU4fcO8Nsn0VskMbFay6Eq/O9DQxnL+oAbPaPbjC+Zr2UwinjBGNUOEPm5lpyeEd/0aZ5zyLZJ9CiLem/bQ6kqIuZP1gQhW9J1FXVMn8Xonm0helFCvHposH1zc66+aKA/Vvcf6IbW2bke4BaWXRpkBJGeGQd+Nhevtx+o6+BGk5uugx0QAS10pqFeJyZrbdWpBu0AQzFcewPx7vhC684xqtI/kSupg9k4m4Y81KUxbiIt7R5ejLX3JlzD5WIcKPmVKzyawBp24PNjT5pDlo7tAMemFMErYGDgTAms=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(56012099003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xZBmlyWWJjXHg1xKE9xadKKJx2fNqEkbfzvr0UdyIcaLKcH440mjyqomUqRr?=
 =?us-ascii?Q?x1Z69NHNbpbsFsm+1TXXMyVy+AwQOiOglxcoCegrKQeR8q8WPMF59fCkL633?=
 =?us-ascii?Q?W7OafZfFrW9kZRbPQfVOFJnRZtuKHcyhFBghNf3Ug3bp8Ny9cpwkb+Y7XIky?=
 =?us-ascii?Q?Ns2dbivEGdh4nntyYtMBxClPeky5QGHuRa/PzqifxalOKbvdfddvI+9MO0Fy?=
 =?us-ascii?Q?TBhZ9nYJ5RKjcVEolU0a4V6t4adpEsvYeIRidZFxzKAtDOTQiBIDU78prPjy?=
 =?us-ascii?Q?9xHPI6h1Iqj15IWLU6cDH0JZs0rmq7PUWFGRdADeLIY1bGvnW10QdvOXnWK7?=
 =?us-ascii?Q?ADjZgO2Pd31fJA+X8qTz5c842uXITVb/oiaIYRzYsaJEa+QY3huN26A1vauM?=
 =?us-ascii?Q?hvVzbTuLR7tfNn5PFb350r0daef4Jwr+hlFxUwyf5fU84MlrTAtWy9Yy/JLl?=
 =?us-ascii?Q?xTJZ0e3UXcUgS6gQ4MynAjU11UPUymRXJxcWJC8UhRvKGiRfi4er+xlvoDPw?=
 =?us-ascii?Q?5ZqLC+ZYzvyEYUMSBYrw/WcMbRiHjprGVI3JshRCqB+7g1pEakIs05+14waJ?=
 =?us-ascii?Q?netULMCJLC71DYGtAdqILQOZOChisop7CYLijSmhoxVlmwO/SNjbUcTc+5RB?=
 =?us-ascii?Q?sSGwW+yMsdVSX2MQeDzWXGaZccU2gQfn+JNQTZZQIEPG7g8igmmHpkzZ/THr?=
 =?us-ascii?Q?dY5d6kQ+CYz0T1EFPQ2oxb8PnLyycseVMXte8A3yUQajf+KWornaMQ42ZrXL?=
 =?us-ascii?Q?Y+dw/0AJa/F1R7IvdLKQpjR5sS1QMDLZQtTWcw37bV3vxgxU1uY+gJptF6LF?=
 =?us-ascii?Q?JtpgmPW8xuWzUxeQVBjJVNWe8Ydt4suIbGUUxdB8RrsRPMfhFHLz9TmBaeXJ?=
 =?us-ascii?Q?pH8j0ClxD4T9dw66Xe6E8veIvvTXODgXjgmhrPRNLn72InHlNr6wiBzIGlTD?=
 =?us-ascii?Q?Blr+ofWEPKVbQAjd+iQFSvcBdqlC4luch0KKM1wUgy+ubquOPPCVhdEzYTZb?=
 =?us-ascii?Q?k3nVYXvGWPz9ym+VD8wohLaJnSGSckSu0gllQ4me1tjFyN+e9g2MIcLdwmkt?=
 =?us-ascii?Q?/BBzmy5szid+wgZEoBJo+py4OdGmxp8PWQAioDG4Sgnt9Id9zGVKQ+xvMNcc?=
 =?us-ascii?Q?QyTbL8slPI0Keirn0Q9AAiWNugHJai0nUrjlT6A9Ts7nsvdmdj82rXRLOXWX?=
 =?us-ascii?Q?KwqwuSDZvaCNFOGG4VLnPaoag/aibzWIwWB1qTyMnfFfLz7uSelVl3sMU7YC?=
 =?us-ascii?Q?1/LvyQs69Bf6QbLZt/WhBUaaULXVts5gWHXBxaHB80GKahuolDmexD7KaZKy?=
 =?us-ascii?Q?fP/uZFwEfOuIqXBjzl9J4BBtfefA2az0icB+gkE6fefi1G1Y+qO4XcmyX9Mf?=
 =?us-ascii?Q?saU/ykpEzCtrKXHyAFdzkwcc1EauVzT56UQVp07NKRNhFvTWjkLFsijYelpa?=
 =?us-ascii?Q?8zJQM4hoRqkaQHh3n5EPCgjzEYdhlOcku/Y2iYz7siDqHSxjJXWLm+hEwTY8?=
 =?us-ascii?Q?HOVxeLppU/xoEVZVXNBB0zeWTPAPbA3XG8pwaIlJL4z/M6OJbzOgANi11xIV?=
 =?us-ascii?Q?3KX1JhgfDWKPJpKAt348iQTnu8+0EX8cqxWd/YG0IedJ8LBrPphXRy2HpUvi?=
 =?us-ascii?Q?vfPC/5eoJXiIZe9jznw89mEdm1Il9GldeFj7aaFkI5Shz7tYLGY04bu5NBG9?=
 =?us-ascii?Q?mmcdc40R5m1lXBhI55exehV/zvxGv3d1LjQc2tIrp+KC+7PnmlvS2wUaDn1M?=
 =?us-ascii?Q?Kng0MiEdI97nO0PLK6xzsaydQRF0vdw=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: DRaf23+S1VR6YX7XKT+6qrDaU485i28tYiobzEc2rnAhbUs7zItvxA+SNTZx3LfwNsF89xs1j1iwntuh0RxL8dZC6NgMV358GbBSlsM5Bzatx2MLKUDCzGJ9qsJ4XkLj0s215RpC1LsxVPf+caZUxjLgd4FPhuFDpmVJwAEhJBNyewrUTcIvNz6WEbirat7p/9XJ31P9Xwc43qo1iGWrDTyfx0BNDAAMaE8T5MR+w7Z5qCOiN25nd1pCowHzr25XLQgK8yoGTWnlhtuYKfjr0a3wOmgGwvQbSMfoOauTKoIwqILNJQxIMHjSab3NhA6x2UpaHY3lQTaXD2MvmF7MZw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32235200-a642-4a40-287c-08dea13a3c60
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2026 13:14:22.5713 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tkajXmgHj1YyXWEUdGSBMR9prLEST/Fba3YHi+D2GtBzyybH2EWeJWqaHl0Z3GmJO4niWnxo3xZCHnC0zjUiG5CN7ydIM16h3PfgQOwJKxA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4891
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776950066; x=1808486066;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6K2mmaqbuGIzItYSvyNthdOn5sSbkags5iBC1nU+cZ0=;
 b=DXU/0oqc9FYuMIZJfkSXCjPB0LunCIsewac6jLkFdGiRnigAkIaGN27D
 DN1N7d6UFR8XG0A2Nsme3m9lEIDdPEbiQb19NCuBm3j9zBzGyahqwbX70
 J8vtwKs0Jn/7n/xhzZVkojH7o5RIQzjcuSg/WKdR8XX18Xd/tCNnD/FbZ
 2lEIOoqXnVzDawnX4gMchvsvefksBSIfRLRhA895c4C8tZBSNyE/vFSbZ
 bOPTiRqG9n+rZ2dvvy+bUhnod1jnw2i4MyPmXtOUN56udFp9bkoSXQnB9
 hoOzbGNkQiWKnXJr4eAxVo539GpBHC78lDQYmqVHQGm8Xe92Ukt/e2TeJ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DXU/0oqc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v4 2/4] i40e: skip unnecessary VF
 reset when setting trust
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:jacob.e.keller@intel.com,m:horms@kernel.org,m:jesse.brandeburg@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 6871C4529D0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
> Sent: Thursday, April 23, 2026 3:04 PM
> To: netdev@vger.kernel.org
> Cc: intel-wired-lan@lists.osuosl.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; horms@kernel.org;
> jesse.brandeburg@intel.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net;
> edumazet@google.com; kuba@kernel.org; pabeni@redhat.com; Jose Ignacio
> Tornos Martinez <jtornosm@redhat.com>
> Subject: [PATCH net v4 2/4] i40e: skip unnecessary VF reset when
> setting trust
>=20
> The current implementation triggers a VF reset when changing the trust
> setting, causing a ~10 second delay during bonding setup.
>=20
> In all the cases, the reset causes a ~10 second delay during which:
> - VF must reinitialize completely
> - Any in-progress operations (like bonding enslave) fail with timeouts
> - VF is unavailable
>=20
> When granting trust, no reset is needed - we can just set the
> capability flag to allow privileged operations.
>=20
> When revoking trust, we need to:
> 1. Clear the capability flag to block privileged operations 2. Disable
> promiscuous mode if it was enabled (trusted VFs can enable it) 3. Only
> reset if ADQ is enabled (to clean up cloud filters)
>=20
> When we do reset (ADQ case), we reset first to clear VF_STATE_ACTIVE
> (which blocks new cloud filter additions), then delete existing cloud
> filters safely. This avoids the race condition where VF could add
> filters during deletion.
>=20
> When we don't reset, we manually handle capability flag and
> promiscuous mode via helper function, eliminating the delay.
>=20
> Signed-off-by: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
> ---
> v4: Address AI review (sashiko.dev) from Simon Horman:
>     - Manually set/clear capability flag when not resetting
>     - Explicitly disable promiscuous mode when revoking trust
>     - Fix cloud filter race: reset FIRST (clears VF_STATE_ACTIVE),
>       delete filters AFTER (no race window)
>     - Add helper function i40e_setup_vf_trust() for non-reset path
> v3: https://lore.kernel.org/all/20260414110006.124286-3-
> jtornosm@redhat.com/
>=20
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 42 ++++++++++++++----
> -
>  1 file changed, 32 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index a26c3d47ec15..69f68fec6809 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -4943,6 +4943,30 @@ int i40e_ndo_set_vf_spoofchk(struct net_device
> *netdev, int vf_id, bool enable)
>  	return ret;
>  }
>=20
> +/**
> + * i40e_setup_vf_trust - Enable/disable VF trust mode without reset
> + * @vf: VF to configure
> + * @setting: trust setting
> + *
> + * Manually handle capability flag and promiscuous mode when changing
> +trust
> + * without performing a VF reset.
> + * When reset is performed, this is not necessary as the reset
> +procedure
> + * already handles this.
> + **/
> +static void i40e_setup_vf_trust(struct i40e_vf *vf, bool setting) {
> +	if (setting) {
> +		set_bit(I40E_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
> +	} else {
> +		clear_bit(I40E_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
> +
> +		if (test_bit(I40E_VF_STATE_UC_PROMISC, &vf->vf_states)
> ||
> +		    test_bit(I40E_VF_STATE_MC_PROMISC, &vf->vf_states))
> +			i40e_config_vf_promiscuous_mode(vf, vf-
> >lan_vsi_idx,
> +							false, false);
> +	}
> +}
> +
>  /**
>   * i40e_ndo_set_vf_trust
>   * @netdev: network interface device structure of the pf @@ -4987,19
> +5011,17 @@ int i40e_ndo_set_vf_trust(struct net_device *netdev, int
> vf_id, bool setting)
>  	set_bit(__I40E_MACVLAN_SYNC_PENDING, pf->state);
>  	pf->vsi[vf->lan_vsi_idx]->flags |=3D
> I40E_VSI_FLAG_FILTER_CHANGED;
>=20
> -	i40e_vc_reset_vf(vf, true);
> +	/* Reset only if revoking trust with ADQ (for cloud filter
> cleanup) */
> +	if (vf->adq_enabled && !setting) {
> +		i40e_vc_reset_vf(vf, true);
> +		i40e_del_all_cloud_filters(vf);
> +	} else {
> +		i40e_setup_vf_trust(vf, setting);
> +	}
> +
>  	dev_info(&pf->pdev->dev, "VF %u is now %strusted\n",
>  		 vf_id, setting ? "" : "un");
>=20
> -	if (vf->adq_enabled) {
> -		if (!vf->trusted) {
> -			dev_info(&pf->pdev->dev,
> -				 "VF %u no longer Trusted, deleting all
> cloud filters\n",
> -				 vf_id);
> -			i40e_del_all_cloud_filters(vf);
> -		}
> -	}
> -
>  out:
>  	clear_bit(__I40E_VIRTCHNL_OP_PENDING, pf->state);
>  	return ret;
> --
> 2.53.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
