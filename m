Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KKXoMO8eF2rw5AcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2026 18:42:23 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 219795E7E9A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2026 18:42:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A568B6144A;
	Wed, 27 May 2026 16:42:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JjklJ4Bc6DkK; Wed, 27 May 2026 16:42:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D34961448
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779900141;
	bh=t/nqjozYYMm7jK4vGmmIzhCzUZwVNPbj9Pp4dpG5X+s=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DwjIOFBku4D+1H0sMm6KbDoeCBQEE8EQcMj+ed2sZ1eFt/Tndn7tR406GHA8TGc2E
	 nd3boRvLCTxlYpbycZTi5QcTti5ZNWrMoXQmw0J9tGl8VUImbP25l6iX+bMyI7ec1R
	 QSIa9JUyjR053zh0sZ/gbDxXdRzl3FGetzDpQ7vxl2yLSClkb8LV3MW8A3y1G269K5
	 z7GKN92ZgTtNz1swPcb0CyMO9FRU5fil4hI1YkvrY/fz7RuqsM9mmDrc5aE99p9LqU
	 mXMXdbkcQN83/BjQrSCspCjChY+AV2F1O8WmOdhcfOcEJVN2Kie+QOjmPpcJ2iirSc
	 +x/Dfw+L3Q97A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D34961448;
	Wed, 27 May 2026 16:42:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 03924344
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 16:42:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E70CA41F02
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 16:42:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 33lsvfz1tyml for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 May 2026 16:42:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9D58940D66
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D58940D66
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9D58940D66
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 16:42:18 +0000 (UTC)
X-CSE-ConnectionGUID: TEUWahyFRmaf+8I2fI3Cpg==
X-CSE-MsgGUID: 6yRSErDPRgCeekNVSNvMQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="92123210"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="92123210"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 09:42:17 -0700
X-CSE-ConnectionGUID: /qj8+YyWTcuVGka7qAJlqA==
X-CSE-MsgGUID: wp8FGYytRiyGxMESZNvdrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="241249608"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 09:42:17 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 09:42:15 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 27 May 2026 09:42:15 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.31) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 09:42:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q5nyousoU6CVV8glaoYUTXtRZX9pwM3hUAvLuhx/AQElNqiJHJMFVgq+PsR/tOXac3go1Z4PLpDvWj0OIwcrJntpBBDC7DRcxBGz1LkpSZn8zU6vfV5o0jeAfiEYbgX2h3X1OCfu7cfxeB2NMYWc67Q0lorl8dn+TOatW93G/Cag9VX4datqGqUyqAS6yB8YeT7/Xwim/wKFyWzxznmhiyP3h6ApAfdrUA340wCQVSvsZH8O2Wcuz57NDJvwhZsH4Iy18+MdhMxDw6O/LMdMo/V2ua0kRblFhsJ/ADIh/eToayoZM+6kCGQeXLwoLp3boeaa1zNOwRaKCQRQonHW9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t/nqjozYYMm7jK4vGmmIzhCzUZwVNPbj9Pp4dpG5X+s=;
 b=Qry4IqiEFrKCqgjBw4UE2/QlJ8OggLoi4ABl44jEZELQgugLYZ9eQO5nEdXpAwjl9gTJdD+fEosSdkrDwd/b6b1zDuMLHR72D7v5GZ1t9CkgCENM86Tsi4xEV2pxSFG4wzrTan6otBcdhBvH25ZNcrlMGXXxMCA91Ifkzvq6XycOirWxvYwwdqUpuUwcHWl3xwTayU/dQfFw7ImdTmOClPxKkSIUDETwc8a2Sf9pgilxGYCbNFsLqaAo07yNJBGFWcHo4dRghIFJm4eGgQVN/6L+HiRn4Piug6ajd/+UK09KrN7hhkGmvXuypzCQG8Iq1S+zrZdVYgbAtEURCgiZ7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by DS4PPFFF98E87FA.namprd11.prod.outlook.com (2603:10b6:f:fc02::63)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.13; Wed, 27 May
 2026 16:42:12 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%4]) with mapi id 15.21.0071.010; Wed, 27 May 2026
 16:42:12 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Simon Horman
 <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 8/8] ixgbe: use int instead
 of u32 for error code variables
Thread-Index: AQHcx1lvQnc3vOps1ke8IWBtQqnTErYiYJkA
Date: Wed, 27 May 2026 16:42:12 +0000
Message-ID: <LV1PR11MB8790F9098114D2B11F7F68C490082@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260408131216.2662245-1-aleksandr.loktionov@intel.com>
 <20260408131216.2662245-9-aleksandr.loktionov@intel.com>
In-Reply-To: <20260408131216.2662245-9-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|DS4PPFFF98E87FA:EE_
x-ms-office365-filtering-correlation-id: edd59e10-22a1-4681-c5e3-08debc0ee6d2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|6133799003|22082099003|18002099003|11063799006|56012099006|4143699003|3023799007;
x-microsoft-antispam-message-info: b7qNtJRlwZ+MaRgW66LQu44Na1+zDHUQuDx+AtOrI14US6YG88n8XmR5JifeSRiSOPEECRLW91Cc/y4sqh0YLluOBnFIwfqSeNpd1WmouQku0uwnlLIKuZRiXsx6I5INXM+qyuSMOdXxqUH8DD3GucrYbJ8KpgcabYr7x2l9OBUrY1722t0w/lbFm9AVqcbHsyRLt4J5cHgkgtKTZ8pqD4OFgikHUUIspNTsi3AVkhpGe5YQRBFfrCmlkeqginJlIM/k400TssUBfGFE7S7UvFoD28wA/f6MHn5WPnAlG7RPBlYVqq+NOx+mdCbo5YIEYsBBGG6iCrwjWvpJ4OAk0kA39xdmoKlmVvx0bDRhhxGFI+RGr+C4fc/oT2Ph0IshL/UnMB9exLWGhVPv3KPIlUTn9XtPzweOWpDC0TqvVoMVa5CI1yaBvq4H6JCgrwEiBJ7yzD4sLBVDGEz0dif3Wqd9Uoc++HkZwkX4a7jOSBFZIn5zQfImBe+IbGD7BYSgh6G+8ZaqZqqtru2Hg5ymUGLKKuEvGlSA/i7uRkH2Uo5tZPfv51appGxS9axrlBFPuoL1VbVziv2tq6ADPTXxBvF58x8MvXwO8l9JH24WSdA47sU6caY1yURg6ALKdcBwNM29xflEXrKfhznOjL4H/cjQzin6x+DOv9S3feT2Ak6Lm/7Qnlo6Mq1J2+cr/fCamoFPuFkCz7elp+Ajv1QOG21mipHvOmkWcbQYO628treCwzZJBUdkdai4FtYlYLcq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(6133799003)(22082099003)(18002099003)(11063799006)(56012099006)(4143699003)(3023799007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?59Gzwrdr148+bHU72KCy/gLiOY6Q/puboTuOV1jZsCRjapaYTaln0uBc1jYR?=
 =?us-ascii?Q?n5HbNC96OP8D9m29WK4yp+QpPlBRxTY/aSr32e8dVMSq1dosQ2x1StFoxEOy?=
 =?us-ascii?Q?nmckESsnjwZTdWHXZtPSOEW7vJ5PaTm9ryaohIOrn38R27cHy1MY2rpHD1xM?=
 =?us-ascii?Q?CeFckb7mfyQAbFiZklxzblDRkj1Q5bmyTbAfUa18APzUG4XOuAEDf2B2BqT8?=
 =?us-ascii?Q?XZryBf9hrIXENj5cJ1+gI7HKGSuRwnsq0Zhb/OSuQTrqdUevZWzivCf5aMTZ?=
 =?us-ascii?Q?plV/YplZFiQjF8gdeO/NImpUg9MQWcMy6jn40IBUoUHYOegh7qOABTcM8rSK?=
 =?us-ascii?Q?eJw6k+R4TIYKmtGbX7hIF/CWzF5sRJ29YpqbNIeeHiAAlzNyycqUbP9L6qyL?=
 =?us-ascii?Q?m5mhSxFie/Izjfqta6nBuYbTIhf1Fkj42uuZ5VAmYdljMIBNiLcw/pG1aT1Y?=
 =?us-ascii?Q?2o2Uc43ERFYHKd23y7DuzYX3nWbODq4sQaE7XF7M+DWcgQY3+Dj99RfeMdpQ?=
 =?us-ascii?Q?8DAPtUodSFnhKhd5o5nbjCbSmoelDj+SF/J+sCtzuCY3jPU+j2KjVOYNpaZ4?=
 =?us-ascii?Q?3DB4nE1f3V8CsAduuV6PBAA16W2tQd/jjMTf3Yt52AOVJXonTHgFSjahQetI?=
 =?us-ascii?Q?HAWw5EDzafC/cMSStdUcn3LPtzSQKGjrATcyTIUax9BfXKyB/LUXG5np8Feg?=
 =?us-ascii?Q?1F9mlMTWXMGt/J0/hqdibpLS53VwyiSfe0B5k6e378oMn4m1Jq8v1raWfvY0?=
 =?us-ascii?Q?LLezqFgNw5PZOgys5tCAZQ6U28NK1iagvO4/lRneejCobxPO8pF7EwPXKRLE?=
 =?us-ascii?Q?hfoCK6SCryNQhcrdc1AURHaNCc1beSBTEJ5sb+QMAOUP5/4Ha3aJ9RCCZNNO?=
 =?us-ascii?Q?oAkG4K2iZ2VKy8Jj4jQmZpYOL0IPteStTaYmy7zo3K2gNhHxZGOzpS97DwAF?=
 =?us-ascii?Q?Kyoxz6Z4A6optcCCe7OgdzwYW70ljGlJm8Co0QHr2WirwUoxTNz6F7bQgbL9?=
 =?us-ascii?Q?h3srJYpxxrSTMeqz6BBUkGlOYwzoSeZoza5oHkONRmF6ZPmq/LwNVbEKGhtQ?=
 =?us-ascii?Q?hvJbezWKAsJvvoMB56RhIitJqUYCXlZEN0NoKbdIA2TryaRI3ilP9G5EVwS5?=
 =?us-ascii?Q?MeJJZ2y07vZSWjet3XAwFFijGFTEeSCnrUvjOhlZAm7dM7LLZeltvaOHzPYG?=
 =?us-ascii?Q?oBk4XzSyTbzbmxetCPF2d7dN5t2MgQcFlAS2hnD/8PH/KxEX5HL5CD5U9QbS?=
 =?us-ascii?Q?4Pd3AINHApbrwDKvJ2rrSCWfzrIxc/kWKWsRWnXfJGrZpJUurtM9EmbvMEHx?=
 =?us-ascii?Q?XI2DqSkq1W4NlyWIuO+MyJD5naJSxYZ1DCbFgvvBhptb6YE70qaqJYBixDZ+?=
 =?us-ascii?Q?+7s5kSVjytRQ3tUOb9SD16rokovSBsN+wOiCQZtcF0tZ4qy7GnMGNBu40Lf/?=
 =?us-ascii?Q?SNeddMVPLwd6K2t+0U3vZ/HHMEY1SMmiKpFiVzkECKbIb5EXAd9rscH+b6/e?=
 =?us-ascii?Q?vJMfo0E9gcwi7XnYSMSpIe+ngIUyFc7QB+1nmkaoGmcgk6QMSkRVbhoriWI0?=
 =?us-ascii?Q?1UI0QQMXorBLQ3cBCsz49M9yNBRp8f2SzMca/kijmwUyrdG6FarnuHapDZm1?=
 =?us-ascii?Q?LuUneKjD26heACsbZNPUkruU5NhFoq/I/cl3RGdt+FTNueTxqe4carpKt6Q3?=
 =?us-ascii?Q?9r0LPQXIf13aopL9TtAuS9Gi2a5sWdtc9FTeKm/ZzDRzlnNwzn0clok54B2z?=
 =?us-ascii?Q?JGA5PuSCpQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Z32uNHg4zAtbUzZ2Wl0d+8ex2MLzGld2v49RnO3N6IHJHBcqLZSaFAUNODqnzufO19CCfEDNzKbc3VqdC4b37udO0ILtj5/sVMDnHaIKXbWP3dlIl8s041aD3ft8E5xRzoD632T8gNAZiHFp5l38h0SzpXkDNoZbj2+bF8tEuds19OzlVME5MCEkuu4CCzppwi8zx49sw/8wCu3+N+qpFfx//4hVNGTyrWOfzPm66ZJ3zBS3707m3aT536X1T63MVJ4pNHEyuLJpKtEsx3/lF++BOTNOgZjMP2unqGfJsXsMaWOA/Q93g6JEUWGIi2eS6GUlE5Y5Y5gdk61jb+NxLQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: edd59e10-22a1-4681-c5e3-08debc0ee6d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2026 16:42:12.1108 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kFChKhyOQyv5n+A+9Nk3MZiDL/JbR2wnoHUwdaK3qMmcrHyHxml0hWZJlSfAzmTsp3lK4PTELd0f3TNxvwuRmy+oOk0sxxDhcoB2IrJV7h8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFFF98E87FA
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779900139; x=1811436139;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QyUFnPrwsYiarNDduTKY+N8Dz0zg+3Zvzx8HlSNscRw=;
 b=ey4Zx9FqnnJNM6rG0xykgD7lL2IiU0nUAcN1WnrwT9wd67WG7ozSvX/B
 8Y1dnIAzuM/7AOkpjaV723bXAqqB11LZ9heQhXMLHo689fcPajBeW9cbR
 bBeWvxdiu1TG58NYR7CKteoEXwZXe0uc7SKWc8mp9IJj6MarPvNwcHVSA
 GES3EFzUxwwU49rIY/F1LygKIlqKL8V4GeP71NWuR5vnvI1s02oqq/3z8
 3nd7leBscPWC0Z53/EPITjckro9od0K2Avvhi/WYj676sKZClA8LBp3JX
 W4BF0PT7qx4euqXgvkcDYjqXmWLSniXbOvF9+bFZTpKIqEIf9/uDZHdo2
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ey4Zx9Fq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 8/8] ixgbe: use int
 instead of u32 for error code variables
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:horms@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,LV1PR11MB8790.namprd11.prod.outlook.com:mid,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: 219795E7E9A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: Wednesday, April 8, 2026 6:12 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Simon Horman <horms@kernel.org>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 8/8] ixgbe: use int instead=
 of u32 for error code variables
>=20
> The variables used to store return values of kernel and driver functions =
throughout the ixgbe driver are declared as u32 in several places.  Such fu=
nctions return negative errno values on error (e.g. -EIO, -EFAULT), > which=
 are sign-extended negative integers.  Storing them in an unsigned
> u32 silently wraps the value: -EIO (0xFFFFFFF7) stored in u32 becomes a l=
arge positive number, so any "if (status)" truthiness check still works by =
accident, but comparisons against specific negative error codes or > propag=
ation up the call stack produce wrong results.
>=20
> In the Linux kernel, u32 is reserved for fixed-width quantities used in h=
ardware interfaces or protocol structures.  Using it for generic error code=
s misleads reviewers into thinking the value is hardware-constrained.
>=20
> Change all such local variables from u32 to int driver-wide: one in ixgbe=
_main.c (ixgbe_resume), three in ixgbe_phy.c (ixgbe_identify_phy_generic, i=
xgbe_tn_check_overtemp, ixgbe_set_copper_phy_power), and > six in ixgbe_x55=
0.c (ixgbe_check_link_t_X550em, ixgbe_get_lasi_ext_t_x550em, ixgbe_enable_l=
asi_ext_t_x550em, ixgbe_handle_lasi_ext_t_x550em, ixgbe_ext_phy_t_x550em_ge=
t_link, ixgbe_setup_internal_phy_t_x550em).
>=20
> No functional change.
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1 -> v2:
>  - Carry Reviewed-by: Simon Horman from the IWL posting; add [N/M]
>    numbering; no code change.
>=20
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  2 +-  drivers/net/ether=
net/intel/ixgbe/ixgbe_phy.c  |  6 +++---  drivers/net/ethernet/intel/ixgbe/=
ixgbe_x550.c | 12 ++++++------
>  3 files changed, 10 insertions(+), 10 deletions(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
