Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1B4AB3095
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 May 2025 09:33:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA7BD60816;
	Mon, 12 May 2025 07:33:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NetFPrfs0GzO; Mon, 12 May 2025 07:33:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64DF060D56
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747035231;
	bh=ROVTCRdAegaIyD15x7IvCw8dW8OM7g5yi1B1T6+0C4o=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WVJZ2T0EOsGqB2F17pZZHyNHcIIsVLxgwbelGoBaPA1fN3syOQkJhyb5JzZnBdJcT
	 Hx94f2cy0IKs1bDlXGJDvFF7El9hhTTomB/Qc04E08hv6cKWl0Zq/C+4R0OaO7HAkD
	 Be4IcXg1mGxVKkB4RlegbXHrBqxFzWbJcy/XyAPwi2RtwLb7lvUnmZQ6h2PdIO9fZd
	 s5uHKvp0LTME1OfoFbkp8ERyDOQBlr+AJTuLYDZWsrympOL+lb622fSZrOrhGPAQWI
	 XWyVPO1OoIOz1nC4VnXaPo0v+mKB1Bi08wKDKdo72QyBd/vPea/2hF7rl62baERBDZ
	 01IbxsiwxAibQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64DF060D56;
	Mon, 12 May 2025 07:33:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 442D5154
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 07:33:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2FFB1409E4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 07:33:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pYG4QYk6lmay for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 May 2025 07:33:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E278B4074F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E278B4074F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E278B4074F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 07:33:48 +0000 (UTC)
X-CSE-ConnectionGUID: 6aZHFHCfR76q/cEjLRsWNg==
X-CSE-MsgGUID: QfV6oHyST8KzYd9HEsMWbw==
X-IronPort-AV: E=McAfee;i="6700,10204,11430"; a="36445439"
X-IronPort-AV: E=Sophos;i="6.15,281,1739865600"; d="scan'208";a="36445439"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 00:33:47 -0700
X-CSE-ConnectionGUID: Bs/kABObTWOlDbcDMYpfJA==
X-CSE-MsgGUID: GGRf91oyRH26wSUVk3dsyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,281,1739865600"; d="scan'208";a="137188304"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 00:33:47 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 12 May 2025 00:33:47 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 12 May 2025 00:33:47 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 12 May 2025 00:33:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yAb5ExJXsiACShkwFNQyX9zVjauEDtU9H76CyHxs+JlmRl2ro8XJwGDOntYgFHMQIjDcVD4/B475K4jgTCuQBcXR17IMVasC+KviHkdMxMmN3lUAHWn03YkPD6tkfQqqTvx2a+I9NHaIA1qIZhTLpoTVPELwFQdi9VaOKlOjfo+vEUemtglQmn7yOY0hw9Hf1Oq/rYCmNCmj/mMIqf6t9jeo9NrzN8lI/qEgFJ6pQzvGuHkB5fB9Jd8axdFDJy11f94itZ5wwg5mowDZSwz9HoAD4n70OUn+rjYfUSFdGg/5VwiLS/yioXegMxJcOuy59nXCiGPPJMx5mEnHDvWpZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ROVTCRdAegaIyD15x7IvCw8dW8OM7g5yi1B1T6+0C4o=;
 b=hhLWlZCZeIGH0cdcwx75VIItBpcqvbUj1sOkuUQ/v2DoyOnHwRE1NfNJFZXYFi2xuLNPKQtCpL0JozGSbAQEeyxktD6HKo3c9PBfvjG8xumxu60wUijcTLfswhY+ZTBwe1NcM0g4pQtkqaNIkmJRc+v61s1FYeydPN/lvop5dAMl87vM8/rc0pHcxZjAxAhUldLR5ZdFHyX5/XnAEZbZIseVuWzVK/isfgm1BeuMklxy5348VsiShEyqlDLZa+kyjJDhAV2wSzYKnd5A18kb8JCms24YcMF9aL/t6pJjTNDtscLJJie4o3J4X5W+4yB2nZ4Ityux4NU9Ad3v1KW/8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by MW4PR11MB7162.namprd11.prod.outlook.com (2603:10b6:303:212::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.26; Mon, 12 May
 2025 07:33:02 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8722.027; Mon, 12 May 2025
 07:33:02 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Greenwalt, Paul"
 <paul.greenwalt@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3] ice: add E830 Earliest
 TxTime First Offload support
Thread-Index: AQHblF/jVctGVtGWn0CcIAvs+qAQS7PO9dYg
Date: Mon, 12 May 2025 07:33:02 +0000
Message-ID: <IA1PR11MB62413C2A016858E5524AEBF58B97A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250313134606.116338-1-paul.greenwalt@intel.com>
In-Reply-To: <20250313134606.116338-1-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|MW4PR11MB7162:EE_
x-ms-office365-filtering-correlation-id: e372eda3-c847-46cc-700c-08dd91273a41
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?IFiBXcY3cUh6u9u7W+MxlwtXOsqRi7YR3sJMZoIccmgpq/Za3eTKpvEJQgl4?=
 =?us-ascii?Q?enj2MHSy6H+9TWotbQ1lXyrk9JP0KlDtiF8ki2MrDuQXT7SmeuOa3XKFpJcP?=
 =?us-ascii?Q?GyLHrA1wYAGkoyCP1998Qx/LR4sP5+n63zU8YUqKd6I3GsIMyYrwOe3nXXx2?=
 =?us-ascii?Q?eMrm3Ciy5Pwi0t2tE91qejF3ouzJNeUMD8cZrkmhih1M/Q+ypW82BhVZG0xf?=
 =?us-ascii?Q?Y++zdxEEhW+bglCkDkubvZMiaO4nr32YG+xyE3Izj7Z7km9DpaNBVXrUXyvo?=
 =?us-ascii?Q?O+8f1cqTevmWteWCuZ7t7yEKFoH/zTHrl1j/Cy9VjTa+cacW2DXQ+8SqXXuN?=
 =?us-ascii?Q?kHVIeV5PvjM0zeqS2102fliP0NUgx9edo/NIBzl2Hw0eW+2AerFdzBE5m3Rh?=
 =?us-ascii?Q?IrhHCRsGuIPZudnT3gJijtrio5OcJ816WWgFUzVMHUMEzlhBfJXVgwWq9g3T?=
 =?us-ascii?Q?L8OcWSwtkAtuR1opU6A/Y7vetGtUi8zqDwMnkFb1GWiGDSU8KQARPI2+gGlL?=
 =?us-ascii?Q?+dsxt6u78pfz5jI7v92VyAxI2KBV4l9gxR06kw7y3ELtoie6X+aVeesNXhlT?=
 =?us-ascii?Q?Stwm2cFwO6Dlth0zV85aeCGVfeD3qHRdZ95K+3h2AyluOe09zvqJzt96cW3a?=
 =?us-ascii?Q?44Zy+ukiYQtDDGnc14JIhipL8CH+fZ/Ygym2jhq7ZruRb+MddY439bejfV/1?=
 =?us-ascii?Q?D1++dB3JEEbGDD4ic9JNXcrBs513p8qBUdwFKrq6gaAMgtNVCGaA5DXwHBmq?=
 =?us-ascii?Q?Npy4c5XwpOgKAY9tF4tPZWAQJflB/b/j8LnPcAuPYxg/bm7z/L6j0piNzTTO?=
 =?us-ascii?Q?I5XqMugTr1+oK/jV3wFz39WnrdEIw8VePZpcLSHbX0tsAbUXZM17gtCPV4Yf?=
 =?us-ascii?Q?cd8TtMsMoThpdlazgTSp2HPjW++Ry7ALGw5BWa4rpZDkpHDSX+Xc4fc14I4o?=
 =?us-ascii?Q?1ZTkIRf6B2hqJbEdhsLxnAa64qfQ5SoV20xTEQ8aXrpqLaqPcefIQIMRDoux?=
 =?us-ascii?Q?8PDbdZt2ZdRyxtB6Hwwvmym+3NEfohhNG1X2swfSOJcJ+y35rbtyB8VAms/T?=
 =?us-ascii?Q?7Lf4kpNNRPOY3zrI9XPS1R4ZXDipGkr9l/zgPeDVaWTHTtdDc1PcKPGEop9/?=
 =?us-ascii?Q?mhhPneXBehmCbDYjpcacZWXzBgpTB9ayuO3hV2V9GMVVrwysGme56mmBIB7A?=
 =?us-ascii?Q?LKcmOsZWdcBllcqasIJrTFlehavf/t66blBQ/RcaX5VFCzAtSdZmWu0p+l6u?=
 =?us-ascii?Q?HJo/3QD2c/0mHs9+kFFRONGAn6DfpTc4HcjHKn3j5uNkImxNtPoGBr4Juvka?=
 =?us-ascii?Q?B/CmdTbiHzDNlN6QBUipaooxshe79a36AnorM5bDsxWe2e94/Di5rOqG6AnT?=
 =?us-ascii?Q?xDlpt666BYGxLh14CqWn3XfhZt40DCToGpTBaqWqow6+79w20GqQGNzjEJnk?=
 =?us-ascii?Q?LaqU7VS+Yci2LzPVIhmRsfcxCDv6jx9Q6vZyZKR0Pm8M8nQPr8vrLbd8rpvs?=
 =?us-ascii?Q?TvtWwp2ZDEBVsGQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QNvoi4UnOh8CxFUoCcr6lzlwdFnTIiCqMUzN0zmTH+2zAZFwWW9oGmhpLt3U?=
 =?us-ascii?Q?a2ooou9S0Lriqg4mB5sGIHCsZU6ygu0QT75p3DlUbBjYF+M/W+cE+ov3KWPb?=
 =?us-ascii?Q?cdbj4x7V7DBl6F13pu2lbCmaJ+iYZbX+DuP8V9B7MlzY5mGFd1k9XuqrEAcO?=
 =?us-ascii?Q?wYZbHbtKsKYhF4VmnUzrY6MOZvHPkasRZUMNKO5NkmRJbGmOnFBxVShqNiB/?=
 =?us-ascii?Q?tcKUtdlXiiX2ZZtu4H6kwmY+9YS+RIwbt9OQt4/7veqIZh35CnDrc9qDR5Z3?=
 =?us-ascii?Q?B/Wm/5ElyCrZAJmeNDdFGNZ1TWdDGP72K0JWG6AzxUZL2vz3bS8rFvYC2VTm?=
 =?us-ascii?Q?gcA+e4qFPrD87qMwHRNR3U+RT5yqT3JXNjlR6j7L+AEeyAONETa71ZYVVPrl?=
 =?us-ascii?Q?15EyYON8cLJgqtpD/iHtcx5mVw8RyLdoKSZIBufnipZtLNnC3R89QX2uLsL2?=
 =?us-ascii?Q?+iqViiqAQ57OJo5nnvVzAAHy35SYtYUi6BSqsNynBZCyC1FGyXNclVkFCDQB?=
 =?us-ascii?Q?rp/h4yVz/LeRCW6XrjA1I+VGb9nBZe8ObHS9kohd+0a3Txcl5YlzCyhrrTbh?=
 =?us-ascii?Q?A7kf7FFaKp2/++pWl9P0lAbEXQSpQFMn5z+JCtYs9OHiwz1AsuNe7pC4B614?=
 =?us-ascii?Q?l8Rj6XpoRFNTESDiKMci7Kn/l4XNJjStkQ8NyZtEDI6gO8l+64uXE3IjQvAA?=
 =?us-ascii?Q?UH+yTHD5mKX+ShrigRh17wb5eWonrKV9qV9xwVj9CgfIK4Wgi8yrNfPa7hf5?=
 =?us-ascii?Q?cxZqm6eI8cDw+65ApOrdorF0CRihWShQ6n2HkWXZ3slqGLx5yzlx9pSxilxM?=
 =?us-ascii?Q?My1CasAbIun9VzU4Y9HvvZz/E2OTgdKVZUxg3anr+MB5jJQlIljAAM2fI0Vg?=
 =?us-ascii?Q?tYOSFn4yYu+rmHnYf5IQwkfyo3tynfNktynXTVBUdrcT1BSl6eZUI0jAx6OF?=
 =?us-ascii?Q?RmZgAsBolPM3mT2S5FL2Vbs2Xq5WzHtPUfq1MuRBCUxh3QX47yWbrwsqmN9w?=
 =?us-ascii?Q?UUghXgLTVCIvX6pANTeg1Xt/9Cz8TwQzWxdVvKaWCy7xEWl5ur1O6YLGXl5k?=
 =?us-ascii?Q?iXFDBKY4n3oySNzCb23nzQmzDCsFRjYUTY3rjCjehVBUN9Dib0faKVHXbFn+?=
 =?us-ascii?Q?ti+Ty/bhhP3PW5SoxGoVHi+AnrcrdCVHLY/rDm7b1do/a5oGMDbGijCUkAiJ?=
 =?us-ascii?Q?HCRuOKgs/ZA6bxFVLS70O4zAqIgyTrL5D1Vvpb6cC0JyK/LkZKAPwR+1VAdn?=
 =?us-ascii?Q?rr24d9AMsNt2HQXqHpHs0XCD4O7LhXlktBxy2B1Pb23vLi5V7rjlJ1RP5C9/?=
 =?us-ascii?Q?fHEyMzJNeDlreOlMNCRCqHVsi337z9pnbI5igscOWIGiX8y6Jf1IDgVbcBqI?=
 =?us-ascii?Q?osGsLXYJL9SCynWD3kqm9kbSdnfa03s4gzDtnciOWd51LtwqdxSyvRuTX4LS?=
 =?us-ascii?Q?wQn317Kf10RF0+yAusnKDYWzr/8MDLHbmBnMgt6MO3EmpzKOiD499gw65a81?=
 =?us-ascii?Q?8Gb50EyKShE1+X8V/mWbYjJ7Fk1PECgAbQTdnxzsPTEYjAAxMtnM1XfRhIbL?=
 =?us-ascii?Q?EraBlue+8V3wnRrOROTqDnsdI/ApIorBezkcxPeR?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e372eda3-c847-46cc-700c-08dd91273a41
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2025 07:33:02.3504 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UoacXMEyd8Jbag2cvATd6rIZAGoZqdn8LkxQONv0koyKkjd5pkmSLC1LaevBtfLc5kN1DCSx/ibb8Yt5dHrdaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7162
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747035229; x=1778571229;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RHqIXv0elHJZM1SmteROKXHUP2LvPoqnyyMehL9LmW8=;
 b=hZW1xlOhWBluvowASY4uXXbvnICG7FCGaRDIsoWKkADKwC8jA76yd5im
 QfaovgYog5mqS4OXH5bdyFleIYtOo6o5BcJlWR0yK3jHzx8NuX9sJyK4Y
 D6YcIlfkPALRjL5ZOBgEAmlH85pO0vFrMFa1QDq5b1BXG2dWsJGOgxHOF
 veSBzBmHGUuU2+Cl2ZxBH7/Wyu0R9tFzFszcfPsmeIpSzo7g+QSZh+ksW
 FU4ORFd3G6zkLP+wGYsif0+JAWnRnAmJ5G4ODCsyFeJfPROfuaqXqRBsO
 pGJW3deGaJS61zdfdrUcVMUUvi1mxQHabLyZJYf/ylEsueewJLAkb5vEa
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hZW1xlOh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: add E830 Earliest
 TxTime First Offload support
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
aul Greenwalt
> Sent: 13 March 2025 19:16
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Greenwalt, Paul <paul.greenwalt@intel.com>; L=
oktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3] ice: add E830 Earliest TxT=
ime First Offload support
>
> E830 supports Earliest TxTime First (ETF) hardware offload, which is conf=
igured via the ETF Qdisc (see tc-etf(8)). ETF introduces a new Tx flow mech=
anism that utilizes a timestamp ring (tstamp_ring) alongside the standard T=
x ring. This timestamp ring is used to indicate when hardware will transmit=
 a packet.
>
> The allocation and initialization of the timestamp ring occur when the fe=
ature is enabled via tc-etf. Since the timestamp ring and Tx ring are tight=
ly coupled, both must be configured simultaneously.
>
> To support ETF, the following flags are introduced:
>
> - ICE_F_TXTIME: Device feature flag set for E830 NICs, indicating ETF
   support.
> - ICE_FLAG_TXTIME: PF-level flag indicating whether ETF is enabled on any
   Tx queue. It is checked during ring allocation to determine if timestamp
   rings should be allocated and is also referenced when modifying queue
   count via ethtool -G.
> - ICE_TX_FLAGS_TXTIME: Per-ring flag set when ETF is enabled and cleared
   when disabled for a specific Tx queue. It helps determine ETF status
   when transmitting timestamped packets and is used by ice_is_txtime_ena()
   to check if ETF is enabled on any Tx queue.
>
> Due to a hardware issue that can result in a malicious driver detection e=
vent, additional timestamp descriptors are required when wrapping the times=
tamp ring. Up to 64 additional timestamp descriptors are reserved, reducing=
 the available Tx descriptors.
>
> To accommodate this, ICE_MAX_NUM_DESC_BY_MAC is introduced, defining:
>
> - E830: Maximum Tx descriptor length of 8096 (8K - 32 - 64 for timestamp
   fetch descriptors).
> - E810 and E82X: Maximum Tx descriptor length of 8160 (8K - 32) .
>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Co-developed-by: Alice Michael <alice.michael@intel.com>
> Signed-off-by: Alice Michael <alice.michael@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
> Changelog:
> v2->v3:
> - Fix const compiler warning.
> - Fix spelling error in function header.
> - Fix Changelog verions number.
> v1->v2:
> - Resolve patch apply isue.
> - Fixes RCT, zero struct initialization, move bailout condition to top
   of function, removed unnecessary newlines, and added use of
   str_enable_disable.
> v1: https://patchwork.ozlabs.org/project/intel-wired-lan/patch/2025022711=
1333.30675-1-paul.greenwalt@intel.com/
> ---
> drivers/net/ethernet/intel/ice/ice.h          |   9 +-
> .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  53 +++++
> drivers/net/ethernet/intel/ice/ice_base.c     | 212 +++++++++++++++---
> drivers/net/ethernet/intel/ice/ice_base.h     |   1 +
> drivers/net/ethernet/intel/ice/ice_common.c   | 118 ++++++++++
> drivers/net/ethernet/intel/ice/ice_common.h   |  10 +
> drivers/net/ethernet/intel/ice/ice_ethtool.c  |  61 ++++-
> .../net/ethernet/intel/ice/ice_hw_autogen.h   |   3 +
> .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |  42 ++++
> drivers/net/ethernet/intel/ice/ice_lib.c      |  45 +++-
> drivers/net/ethernet/intel/ice/ice_main.c     | 174 +++++++++++++-
> drivers/net/ethernet/intel/ice/ice_txrx.c     | 129 ++++++++++-
> drivers/net/ethernet/intel/ice/ice_txrx.h     |   4 +
> drivers/net/ethernet/intel/ice/ice_txrx_lib.h |  14 ++
> drivers/net/ethernet/intel/ice/ice_virtchnl.c |   2 +-
> 15 files changed, 823 insertions(+), 54 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
