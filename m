Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4mIZAjUaOWqcmwcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 13:19:17 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4286D6AF01E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 13:19:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=hXVQCvU3;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E684D4EFE0;
	Mon, 22 Jun 2026 11:19:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bcH2YvEcvBS3; Mon, 22 Jun 2026 11:19:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 26C4B4EFCD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782127154;
	bh=6/RyXoq1cohG7XzhiLmZCupKT36uwWtgz76/FbYqcrk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hXVQCvU3g+65q7OezIsfaxl/rEMouNTj6WuewsnFfCwq1tMHExXBK1PwSDdJYB8Ds
	 F9IalnC2TNey7WR1vbdFnNJAUdUZtveACTMdZunqMldv3kfxKJcrQrtmz0Oa4PABJB
	 aEwTdQ4nr0eQG3m19p4FDOszuQ13hRow/vrJrrHex0M6hwBcnEOc1svuYRY3OEwJz/
	 ucXRkvfCLUX1KTf6jkBihzOYti7JH6oJOtUyvKqIgmwlhONBqKOl1a4BAXFThSUo+/
	 jVcBnXDO6mGpLU0qawgNO7/R/Am0YsWAsaVISh/Pt/8B3YOk2tfMLBybBPUdkiIuqn
	 jO0ioXbJaF/gQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 26C4B4EFCD;
	Mon, 22 Jun 2026 11:19:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6DA0EF4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 11:19:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6A35D6F71C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 11:19:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZtniDuT0RtpR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2026 11:19:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 65D7B6F717
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 65D7B6F717
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 65D7B6F717
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 11:19:11 +0000 (UTC)
X-CSE-ConnectionGUID: bZgADLTPR6S1YQs2J7oU9Q==
X-CSE-MsgGUID: f64DTjA9QGeeRLT+36+mRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11824"; a="81956463"
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="81956463"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 04:19:09 -0700
X-CSE-ConnectionGUID: 0uW29eumRTmDrWbI52kGXQ==
X-CSE-MsgGUID: 76OjqJqVQbOa0uLTLVuITA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="254298697"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 04:19:05 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 04:19:04 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 22 Jun 2026 04:19:04 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.28)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 04:19:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U/HG3Gjim39GqivscGXNnHDweaaAmOGMT2LHrjzVgXzl96WQFe7vziRWxpvKs19+/OXd4RmfVDHSXvZEYRj/DWR+ZTps2fchUd3FREsUrDCUK1374cCyj6jX4B9JRrEozVP3x6Dy/3TDsi/K3JOSIjB6g8uIyvLnk/GDJvSXOWmi72bMELwsAWttimh1+jOROpXsZO+ULPoMbsI+hM7ND4IbVfLOTAM4YxlDylXko+ltTM0I2k6e0ttQRqVifXJR5E3ZEBxlxLW8LzuimWAgxxwGmvUiyzSFSJdQ+iwHbN88xynQNz8nWlLIdmSE01Qq3P13vKlKpUvZx7bSUaUp6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6/RyXoq1cohG7XzhiLmZCupKT36uwWtgz76/FbYqcrk=;
 b=gTUu1H1GFo6shs5JlUGYSavJT4H3rTNsnc3fizoUrmmdVaxLatzWGqRFIa/mmabuFtCtmM3rYK0Q9JtL0WmFCcKrlGKCvIQaJYaI8WQI8YY9G8HJsTYCsojFvVs3KjC6mc4aKnX2qY26rCkbai2fNGMopBrCXv0m8UwREKkC6pDCcNwQOvnws9jU0SGmrfG3oOeMafC9CB5ShoXssoyEOPk396/K9qNjjXYvehkViIIRjIbqW19ccOWheh2xGyfGhHjCpe3uWXgVp+cGXyNEZDmheDQLA7dyPdTPp4uX4hjH+0Rx7tyG8KWYpyJDB3VNqGa/gFQDh47EZns+YxKfKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA0PR11MB7332.namprd11.prod.outlook.com (2603:10b6:208:434::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Mon, 22 Jun
 2026 11:19:01 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0139.011; Mon, 22 Jun 2026
 11:19:00 +0000
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
Thread-Topic: [PATCH net v6 4/4] ice: skip unnecessary VF reset when setting
 trust
Thread-Index: AQHc/7LceK/tTBsRgUK0XusOw5V7sLZKcmSA
Date: Mon, 22 Jun 2026 11:19:00 +0000
Message-ID: <IA3PR11MB898604F3A55FAAA60C8217C2E5EF2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260619061321.8554-1-jtornosm@redhat.com>
 <20260619061321.8554-5-jtornosm@redhat.com>
In-Reply-To: <20260619061321.8554-5-jtornosm@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA0PR11MB7332:EE_
x-ms-office365-filtering-correlation-id: 3367ee78-b3a8-464f-9917-08ded0500f07
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|366016|376014|38070700021|18002099003|22082099003|11063799006|56012099006|4143699003;
x-microsoft-antispam-message-info: Zag2LxpJyrrPG+/9C6e39yGHXx3E2upwWnqaVctaD6fOi28NjjGM2PopEWMf8mzgrUdWzMkhr3oF/gmWEBkg6Pfh/rHY3b2F3PIbpFZYaIdfDnGUziTqt7ev+hIxyU/oaLlzP8yEgO/g9mFPtbRC27em1xL9ZsQxIMj1CvCAXAqXd8WavsXzFzagmFsmxIb5RlD3lA5ZOHv2C6BWDhe49EbKyoTa/JNYsB0Zkw2ihNB6B1O8jvMnt5LmjKnzOMVjj9n0YfswIEFhk6aeCvWnHwn9G2qRak8Vai/7sISId4yGEQk/m0sWGjVtz893CEcqE976B0o/4agZUshXydg0oUWreYHOkXcFxGr0KJ1YikET/Sh6OV/Quva/7iDaNn4n2c7bNAcXMWV7bkROYzHMF9VjD8d7J2Fzu0vthzvdn6pyg0w9/LKMcnlGUHXdGHI2UEaGFo58jN7NEyQ97x/XjJCnbcIPm8S/RhYfbIzRTFolf6j250W5lLm/CBslW05Ghn2WYU0AMJqUh70O4beto1Qey5HOCmDTQmbdEJy6/mqSCX0w9tMuqLitRrnvXbaHZLWoSrcyTKjhgJwT+p37Z6vFRBz4foo75owazOV8tTOtBn0OGJLfxFvPQ90JLssK3psOupIl3glAbBggCRoEDMnDn4oQzFhuRKeBmiMg/95fXDa1N4rxtgV2Wbe05sXZdKWwF1zFvwJrihnIuynMos9VOhD93dWiJKye4Ixt9o4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(366016)(376014)(38070700021)(18002099003)(22082099003)(11063799006)(56012099006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ixu5MHkmJ5+CKwq2F5MNYEu77caBSQIRohK/MelBx9vxyk3acRU7ao1AcLQr?=
 =?us-ascii?Q?VTttGub+BvrgcLMzRr9tjTB8zGJhySAsBqnmfw9a21FY/COF8M4Ks4FXlEUU?=
 =?us-ascii?Q?VHQuOsF4v4Mr4lujQs3UeuvXhN0fR/Y88IRb9+fuC/6swUvpkJ/Bed/P47TB?=
 =?us-ascii?Q?C6VAathEby76OuWnAcTZrD37ZPudW8Gdhd+nIrhY/JY3H8LjLm5nvgYCsrdW?=
 =?us-ascii?Q?OsM/9spRvl7orIJBrIeUdQdvsSGefL3JY3s0kg6QPadK3xQ+P4SIhnuLcdRk?=
 =?us-ascii?Q?UyunBzQJxNpJFmGn0GeCrvwQ61T/UfemdcGWxm9nt7u7bpz+K1kSS8lmTuxq?=
 =?us-ascii?Q?Sd7j2QJ33QT3wcWICH8zrr9B/jXNRVeIMFuQ7oHAyAt1++rT68Z/+m2V02V4?=
 =?us-ascii?Q?m+PAAjqQ7DegDTaqK/uOjeUQICNlgcTtkHOomLxVW6vcRj3EmLw09bZ15Njr?=
 =?us-ascii?Q?yOeaAnKFPiW8sqvr6pGKmzunjff1Ik93r2ok9gLPrZTKOYapZEmbj4GFQ7Rb?=
 =?us-ascii?Q?ly9E5dwgIhPUemqfwBc2tkjbA3siXww+cqVlWQlixQCGfDzbz2yj6hL0tN9E?=
 =?us-ascii?Q?xeV6MgGqBv/EoQRjwASkdwdkyk6PyFZVYO2iIrb6bnWtq9L1VyhkM3TzpUSx?=
 =?us-ascii?Q?nb0xXIDMT9k6Soin4kPdNTaQhjSfLm3ZSahvnoX4fD4sLJPq5qOmfc7ZOTk9?=
 =?us-ascii?Q?i/f7YIO50xA2upt49TEpe0rrOCeVK4slhzK48fOaVkQlh/5Qh5eOkuCEEXFa?=
 =?us-ascii?Q?HCL+JsDC3dLADhRQBunhufMwM/g/5cx6ejCpPfrk4pe7r5dLRHMJLrcixokP?=
 =?us-ascii?Q?tsLyrcgAv2W5edD3UUGzNBWAvd6I3166nX2//H//3hA8CGKdaIj6546LBFuw?=
 =?us-ascii?Q?vdGjhqIfP1Es42KbSJR4D6lKCRVrtxxpozbxz7b4palkRUF0ksw691NMlcjq?=
 =?us-ascii?Q?dcZ9To57hqgvaMiRXGB9pWHA+bxbeOY0S7/CnBip1Jw31dzgQmSe+RyAQJEj?=
 =?us-ascii?Q?qt/hmLo3e9lCnjXq56Jb8chK28oVC3tJVoocFc+Stw+0dhFP9NeQ5Q6FekUh?=
 =?us-ascii?Q?MrBcWTzJOMEfN4CW5mXPhMrmGoXiL4NKKHlGD/IoXYex3FhBjBJSlbSs9ghY?=
 =?us-ascii?Q?n8NglKLWNiQjjbK8nlhPVABXYtZ39UIb9kJW1x09hW2+L3LdZfr1VwwbQJv6?=
 =?us-ascii?Q?TYcuUYiZ2gAR7Z0dbjtqBMnz0Q1TvYbFem6PXN52pL6n9RrFZtFCy4y8yDkL?=
 =?us-ascii?Q?9XglyQPNE5fRGP0jl6bRT3DEwbU2ncQGLvOu/wUvwL5V3ayY6J27xz6LeYrm?=
 =?us-ascii?Q?G3B7QpCtVFsb1SdaozFwFtecpVFxyscR78z6ZKw/iKjBCnJ0M+SErj6zCDR4?=
 =?us-ascii?Q?YMUrHPvFUPbl9WfLG5Pf8l5frm1CGpgGSBl7DHB12aMF6D1iZ61CP0BGEaqs?=
 =?us-ascii?Q?LGUniZGexPrEsm5zHUJsbrUizsPbKeMuzTl65JHyT0eE3Vl8Bne2kCYn3bdD?=
 =?us-ascii?Q?jVHDVNgbBIMwdugBbQ4QVGgl6bD8b9LhSLRZM1zogOfTiqdi8Z4g5Psvb22f?=
 =?us-ascii?Q?ngifOnnvIsesehAHerAff/ag4wKgcNVFBSR/zTYXS/yuKO7HPp/qKfyiHc6u?=
 =?us-ascii?Q?YZNdDpwD/qqWWaPi7OKy3TJhHkMwTH3VC1N+3VL9N98MYwCZKW/a1DSHRH1y?=
 =?us-ascii?Q?qOFZpR2L3TXN0gY+zRDZtLKufwzdjD/n4C6Se19RorV5xmPu3ojcgCOo3fd0?=
 =?us-ascii?Q?FtrGdmLGEngidoDHlOguzbi9Rd3XSpo=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: e0i63YLIoMsdHaMcdgtGzrkLO29MT171fk21KKMKxbs8pXW3hhK+0IQ+SbV8VqLyRa0hbYr9VoqNHni4xTW/H/aHi+E6i3FkwsfR4H1oHGXORk/Gria6Q9OJ7nmpByLJF/WG7vk5IW+RdyPfiGy8MKzSGFPE0gND87pW602IusapSLnUS9BhoaA3xTJAxd8b+N3QARtiDuQHIihs8HinfkOTEktBAJ9Kpo/3ACHAv0Maf8jPqvP3hsBJWp699vQRNfDDfO7/3eJvVe1Ee4c3lUZjJCNJ1skK0rHtzoaXJdsE5tLtxQiWwf3Ac/OWWnS/CKyDLPDIwrNZjsP1lV8Enw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3367ee78-b3a8-464f-9917-08ded0500f07
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2026 11:19:00.0662 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iMZxF/KSpg+cQ5efd+4PwrNB2JFjdhuEFYDIZUcFOGQr2Lc20+q6rycBPBN05U/m1HusQOx0fVW+ImZhaxqDAjWQUlGs484V5qR61ZCXQK0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7332
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782127152; x=1813663152;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YPAbbSvQXocjMUpiHAJymvF221z4fS+SbwINVpvkyBc=;
 b=YSNd+fXrX8b1CTJOQfjzfVPUTNIcgWvl0WjsJ3gnDSxXE/AA7LmiUwYC
 pkzZbHuvLsFbkIf9A7zHC8lDW5p2JHfQRR9LqLveydMIocJqVX+s6Cu27
 yMCUZ+EQ44L5C8fg04cMgkVRUZn9byvi5qGBqejnx+5rw1viDXgCogmg2
 Hm4awYvyuHZODFAKRbWG70PXev65orbu0C4SYoxHnmtXlxdb/HF2Zrze3
 BCIMOECGFbA0aTD7yScajR+UQ7PSoAkSQACN38JFaEKUQCoNnQyBZd4wh
 rVLEfIMVR9+AXEVzRVhVM2TFSKjLS0Su9t43k6aJ2gG13FVoZaXqeVKDg
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YSNd+fXr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v6 4/4] ice: skip unnecessary VF
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:jacob.e.keller@intel.com,m:horms@kernel.org,m:jesse.brandeburg@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
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
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4286D6AF01E



> -----Original Message-----
> From: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
> Sent: Friday, June 19, 2026 8:13 AM
> To: netdev@vger.kernel.org
> Cc: intel-wired-lan@lists.osuosl.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; horms@kernel.org;
> jesse.brandeburg@intel.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net;
> edumazet@google.com; kuba@kernel.org; pabeni@redhat.com; Jose Ignacio
> Tornos Martinez <jtornosm@redhat.com>
> Subject: [PATCH net v6 4/4] ice: skip unnecessary VF reset when
> setting trust
>=20
> Similar to the i40e fix, ice_set_vf_trust() unconditionally calls
> ice_reset_vf() when the trust setting changes. While the delay is
> smaller than i40e, this reset is still unnecessary in most cases.
>=20
> When granting trust, no reset is needed - we can just set the
> capability flag to allow privileged operations.
>=20
> When revoking trust, we only need to reset (conservative approach) if
> the VF has actually configured advanced features that require cleanup
> (MAC LLDP filters, promiscuous mode). For VFs in a clean state, we can
> safely change the trust setting without the disruptive reset.
>=20
> When we do reset, we maintain the original ice pattern that has been
> reliable in production: cleanup LLDP filters first, then set vf-
> >trusted, then reset. This ensures the privilege capability bit is
> handled correctly during reset rebuild.
>=20
> When we don't reset, we manually handle the capability flag via helper
> function, eliminating the delay.
>=20
> Signed-off-by: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
> ---
> v6: AI review identified issues with v5's reset-before-cleanup
> approach. Revert
>     to original reset procedure (cleanup before reset) which has
> proven reliable,
>     just adding the conditional check to skip reset when VF has no
> advanced
>     features configured.
> v5: https://lore.kernel.org/all/20260429102426.210750-5-
> jtornosm@redhat.com/
>=20
>  drivers/net/ethernet/intel/ice/ice_sriov.c | 33 +++++++++++++++++++--
> -
>  1 file changed, 29 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 7e00e091756d..XXXXXXXXXXXXXXXX 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -1364,6 +1364,23 @@ int ice_set_vf_mac(struct net_device *netdev,
> int vf_id, u8 *mac)
>  	return __ice_set_vf_mac(ice_netdev_to_pf(netdev), vf_id, mac);
> }
>=20
> +/**
> + * ice_setup_vf_trust - Enable/disable VF trust mode without reset
> + * @vf: VF to configure
> + * @setting: trust setting
> + *
> + * Update VF flags when changing trust without performing a VF reset.
> + * This is only called when it's safe to skip the reset (VF has no
> +advanced
> + * features configured that need cleanup).
> + */
> +static void ice_setup_vf_trust(struct ice_vf *vf, bool setting) {
> +	if (setting)
> +		set_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
> +	else
> +		clear_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
> }
> +
>  /**
>   * ice_set_vf_trust
>   * @netdev: network interface device structure @@ -1399,11 +1416,19
> @@ int ice_set_vf_trust(struct net_device *netdev, int vf_id, bool
> trusted)
>=20
>  	mutex_lock(&vf->cfg_lock);
>=20
> -	while (!trusted && vf->num_mac_lldp)
> -		ice_vf_update_mac_lldp_num(vf, ice_get_vf_vsi(vf),
> false);
> -
> +	/* Reset only if revoking trust and VF has advanced features
> configured */
> +	if (!trusted &&
> +	    (vf->num_mac_lldp > 0 ||
> +	     test_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states) ||
> +	     test_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states))) {
> +		while (vf->num_mac_lldp)
> +			ice_vf_update_mac_lldp_num(vf,
> ice_get_vf_vsi(vf), false);
> +		vf->trusted =3D trusted;
> +		ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
> +	} else {
> +		vf->trusted =3D trusted;
> +		ice_setup_vf_trust(vf, trusted);
> +	}
> -	vf->trusted =3D trusted;
> -	ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
>  	dev_info(ice_pf_to_dev(pf), "VF %u is now %strusted\n",
>  		 vf_id, trusted ? "" : "un");
>=20
> --
> 2.43.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
