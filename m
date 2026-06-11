Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IouMKHt3KmrLpwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2026 10:53:15 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC31D6700C4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2026 10:53:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=VgmbMeI8;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D6584409CF;
	Thu, 11 Jun 2026 08:53:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FrJxv53gva_s; Thu, 11 Jun 2026 08:53:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 41BFF409E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781167992;
	bh=Gd821YAXjIko06kfhDELlbpNFK6vzDUHQW82ZqkNz4I=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VgmbMeI8pLmNI594xbi8C39x2eXeaJK3W7/C7SL1AdeedWjYZxxCqK9tgs5QbGpms
	 Np4G8G2xbfmRDJxtzJqRCxIUmOKRBhYENAoWN0QJCVKuLq7WqQMadH9z4UZFt90huT
	 /kI8NmxkcGuNpKq8U8hPiDUFJhxSMn7tMF8xLj2vKahpxNNHWYr+83VXL+mSvs5fss
	 aDsLcyg+vLJQha6vQSAANsb+605aS9J3mzgIsedfsmUwcRbWDqw/10XZKKDysuHz3N
	 qFwbECvCbo1q6XS2aFnmdx4oquNmc2LZ62E2gRXH0+YA8rcRENnuPB0h2C+s/6pUiH
	 izjPFRwgVm2nQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 41BFF409E9;
	Thu, 11 Jun 2026 08:53:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id F07A612F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 08:53:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D1E5D6062C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 08:53:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tvqqxO6eE0CK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jun 2026 08:53:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 150976062A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 150976062A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 150976062A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 08:53:08 +0000 (UTC)
X-CSE-ConnectionGUID: LB2RGQFgTNaNYoWU4kpPBQ==
X-CSE-MsgGUID: J2kawHFZQwquXOt3Q1QjvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="81955919"
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="81955919"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 01:53:09 -0700
X-CSE-ConnectionGUID: G6V8z47hQ/ilRIO7ajSn1A==
X-CSE-MsgGUID: Umcya433QYeESH17LW8APQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="243976262"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 01:53:08 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 01:53:07 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 11 Jun 2026 01:53:07 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.44) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 01:53:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i3ycqyNTIF9IJ4wzFcUlV6abNGh7A+TqEednY8/bNkqpPTVFUdWJ7/MiPKGHkB5HSMPXg5yuJvSP3v074/Lywkw8/uN8JMH76ZtN8wXCjEBvRE4Zz+rGn0VXeok18sFrf7cSdO4lkGHyBFd8p34rcaOlgKNjB+Gr2R6eKkp1B927PlX7UxcrASWcaLtRrjE3xcBrIW2k7aRIhyrt3UH7myfE7/DRjO9UZcaUcwscx4EN2LdTE9nZgYTF9y6TgUfOqoQ7Rl+q5oHNEJqgywdIoew/pS7zMgIU7llFvjz4bA4eFhuOuKl//TzZ1nuZv86n3fbqolpzWbHt9ieXk2f1cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gd821YAXjIko06kfhDELlbpNFK6vzDUHQW82ZqkNz4I=;
 b=geyJkoI9lzHkuIp/y9oZL7vvzJERZSYEaOEY3K4gGAXq0TkAuI+VMltwd5ssTSJL3VAkEGYgWToM+xzaGB1BdkYRHE3b0iTj71pdn5/H//TIbXPCMcYX65zfPC5I5HoaqDNjP33xX25BSDvTfn85X+NB/w1zznxyUkRHMZOgZobp4HIkoOOlOZk+UXkkZd+tJyfffmq96JcnsWxpg5ZISjXo0OxwNDW5TvLrWA7a5s1/JsNl+TlPcWuQHOfVw9L/nS2VYKdlTQemOyMlGx7FdwSRBm9AwLsYHVAKIvcxDRRjbb7LNUcY9tJoiHbbzpVrQO5U3mFamHjXKzDAECeKWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by IA4PR11MB9371.namprd11.prod.outlook.com (2603:10b6:208:56a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.12; Thu, 11 Jun
 2026 08:52:50 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%5]) with mapi id 15.21.0113.013; Thu, 11 Jun 2026
 08:52:50 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Lichwala, Tomasz"
 <tomasz.lichwala@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 1/4] ice: fix asymmetric pause
 negotiation reporting in ethtool
Thread-Index: AQHczjOyT/jnXrnlU02+wZhmhays57Y5Ft9g
Date: Thu, 11 Jun 2026 08:52:50 +0000
Message-ID: <IA1PR11MB6241CB4DFFB3143B68E42AB78B1B2@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260417062954.1241900-1-aleksandr.loktionov@intel.com>
 <20260417062954.1241900-2-aleksandr.loktionov@intel.com>
In-Reply-To: <20260417062954.1241900-2-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|IA4PR11MB9371:EE_
x-ms-office365-filtering-correlation-id: 5e74a514-bee7-4036-9eba-08dec796d16f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|56012099006|38070700021|6133799003|22082099003|18002099003|4143699003|11063799006;
x-microsoft-antispam-message-info: rz1gpv+KPntsLylUiAqGlrMWn6I6G1s3X0Fqa/LaLlPT1FkgFeQEgUy0PwPuk3Caw1ZVvveMShiAT6fgUb7CZgokFLj/qZl9RCwUoF+HUPDYoIovUHbtxwR7hePQLAI97Sh4oaiMZjq/Kbd7Ng4XsXKZVLAV9g13Ns6U9yh4gqsZ/rxnvW1ET2Drh8sswIJ6Cf0J+qe8Y/giK3RvA+xQ0FeH0IC3QiCMeX0/rVkf6NMfgyFzHVpHr0yW4w74bt9ow9ire//r8m+5Xc/6DD/p1dXXKuc3MkztxlRfh9sjKMPKosiGcuOijcKwzLs38Y3z6x20oSaBEA1AGGmhpAE6cFTe3ITtMfcmjL8qZ4C8oh3tj+rB3vAFvGe7WbtbeTGbSdQ2sRTFOy0CXh3NHwTxMIIG/cwU3UXUh7mfWSMu9LrPM6mmhoDZ1D2RXUxL7o6nmiXJa9p568KwD4ElilKomBdfmy+vHBxX7e/Cfr/hrl3dfGBhf8V6mlAfFjaaMd+mQ+62h3N1XiwPom9ZD+ViJZ8sc/5r9IBWvq0zpETSoDWTNgVtB8QlbyZFkpzyFv4SfYIr5VYbDbtK0tiyuqj3QCQEJ6n1fT/ee9QXqJhGFCQ2PWIn6L2QmKwTtdF1RbrUz3FKavBB52L/uwSo2bbBRJI0J20qhbEnKUQyImnvyHzSAjy+NH9Gj3Fpcm2Y/zgBIPYK7Tiy+ZY4pY+n7MU/S0sP0BwlE9GTjXdGPjLPTuSUmXNYcJUrDcUeNMjagH5b
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(56012099006)(38070700021)(6133799003)(22082099003)(18002099003)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iCwncwlvNHcNRqOUN1aB7iQUO/Pda9kXMNH21erzdgIbv6u/Mc7Aj3XTu4mQ?=
 =?us-ascii?Q?FZlldNb7bFfcwwvgZssDk66Z6RFQeVCkdoeoGyNdeNx2LN1L3wDzTyAzH/yE?=
 =?us-ascii?Q?QlroogWDsmb73/ZA/2w0qfRNR7SkB7ldQTg/yhzz+3Wfp1NrWYDvcWyduurP?=
 =?us-ascii?Q?cunsxRnsMXrGs32+ABfI/UV8cWBHIAo7VwdKjaXoxZyzxKmKrYRQgZqhZrem?=
 =?us-ascii?Q?BiGyRAS84AoGYl222SrZsbRhwZxdlhLZDO9RE7yUdl+ujMKhxRkHuyZTDyn8?=
 =?us-ascii?Q?HGaWtk3AT6HxxDcCOj20Pu1i3n7iVPp0Qrbg6ocWnGppDmAe5oMQYHTH2HNw?=
 =?us-ascii?Q?A0UzwZhqkWI3lw2hre+E97XL2sPbZT0zaH0MFiS1vSJRP0PY7+Vk2fCQt33V?=
 =?us-ascii?Q?MSTZue1ZGYzLnGSIt1z1J56jxbC70MxuFcrMuMKpDxLqfCi+2ATfdjfWOI9P?=
 =?us-ascii?Q?NanhGMdxFYSS/iZaKF0In4KpEv5eBl9Gw/b7FA+C+pJXTsTym/NKSTEbDRCr?=
 =?us-ascii?Q?aCbETJW0Z0N74t6KhPbLOzb7ECxQTp5IUEi3QUmFW2Sh7X3E4JTMQLvU/gIp?=
 =?us-ascii?Q?z7q57SHLa0ufZSyB2xM1hClcYcxxO5XUYsGiD/jplskM+bQRA62JPXUZeOsm?=
 =?us-ascii?Q?YYMeaFAGqLQyfCTgX7HeMqC209XP1OaQ//jYWhUfdgyxfkB5mwat3ef6FTP6?=
 =?us-ascii?Q?7ch9xHL8zhHbDuKa4rLjgG4LNsUG1aWwhRlFfzYLXIJVZMyQXvDJ1GeIwoW6?=
 =?us-ascii?Q?kts7rhxPiR/D1oOzw2+woSjx/wzXNyoOxn1/nMvRjP0foN6cZ4b+WIiUCMvD?=
 =?us-ascii?Q?dO2ZXhc7Hc2JUw5MErKxOr6uxfDWm2hv1MkbWGQshHHDqJTdWbFWD+FfiTjQ?=
 =?us-ascii?Q?KrgRDleI+Kq370rWRDsipNxqm09U2zLRL/pGpn2dkXq+7Bk5Dn5x+fl/yLf4?=
 =?us-ascii?Q?q2A0etQrVXz7kFOKxt5v3CW8I4SW6hIwrlSyQaOkB09rCYnzGNSSNV/2cxfD?=
 =?us-ascii?Q?Wdym+QlaVEkMka/5qvGzZE0erhoIY9BLyIvzCqUFM4fIr8Zxr75u27jnFgmK?=
 =?us-ascii?Q?BRt0kFYUdWj35uOTgQ0/YuOh3fswOxL1t2VDUdF/IiNMmKw9rXgCxLQ5xmA4?=
 =?us-ascii?Q?vh6hXd98bG2kVxpaM+UL+Iywu5soiVUFSzlLUSrb9W0VMbu5WD0aUdxQFIpC?=
 =?us-ascii?Q?8iW0ayAlSaAUmExjFfld3zlEhpo6Fq0i201JfISWK5siXJca50DGnliLhxe4?=
 =?us-ascii?Q?QaK9SqBwcVxrcnP+2HTfLzmUNZg7AXTi5jrf/MhRDwMfq4ot2NBUEHMu0nNj?=
 =?us-ascii?Q?jXX7U78HLKDpOTzkSMgxpCquxMYY6O68Ic2QGJQYthe3Zwz7v9A1IjNyPSqr?=
 =?us-ascii?Q?qXLLISvBQV0pTzRf7+I3t09CbRJhtKtvcfKsbUxcrKYJhPELrfoi3OBwsYil?=
 =?us-ascii?Q?2m8gfANyAAhFnJE/LBon3q5TxyNDX4FtmRrE00POZDqyN8JvUMM1GuaiQ1j8?=
 =?us-ascii?Q?zOdLpM+f37oKE7K4bINFDjzjFLvpACGry45Nut4lssFruQ4hoK0UfB1Y4eao?=
 =?us-ascii?Q?ed46sZU7WQDOOriHyHFGigxLO/Y6OKnHIPedG7ZCu3wDD6dMmHnTxchlK+zS?=
 =?us-ascii?Q?sMInBe+WWxbfNVneTqjk7mEMfWEOVvwc6HWsIs8BQyn7m/6wq1obtQwFkKm4?=
 =?us-ascii?Q?mW/D47N8Kv1w5lXlvQfnsONCSRGwqq4gFEK4423XGR4Sg7Vk?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: D6Zv1GoBVKMARl8QaeL7Zt0sIDwdfz1g0Qc0d0BuzATxReIh8MqkU/ZOMcbUw+KZlVHcr3HpsjrhA/HGCEOgB5u9bhqpJZWGXRjwmvlOSCSFCMWGLJ5dK4F5x1Dr5/iqfO9W00EG8OzcjxEEK4NUmYwH28Bm73PcCTpNcsiJ6aiGhD3dsA/DcIoNpAzqZoPFwhmg3XsfUWQNQB/xW4eXRmO9PTP5LXkRWwFyp9/eAmKhwoDn++nbgX3Z++TK/IJ/jP+ZVIWsClEN9IBqYmgziOzndc2n2ci6jkTFSQd1Z0EpdyG8+OL3SYfZWQ++tuWLtPNOg2W+BQWMMv9agRIj0A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e74a514-bee7-4036-9eba-08dec796d16f
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2026 08:52:50.5404 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sHo329k1BzzjnPk1MzgKPqbqbhvGbuqYpQ5bYRZbJVtET26Kn+8GA/yfGwRh2+bzP+DSDvUEvurXwDMUxCwAhA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9371
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781167989; x=1812703989;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Gd821YAXjIko06kfhDELlbpNFK6vzDUHQW82ZqkNz4I=;
 b=leVSwh9zbW99ziimX66alkQWI5YjfGXNSHGd67kCko5ugifB9EQfHNOd
 ouBybBMoExOcbj1g3PJ37BUl5oSaZODAwPVTulduSN/tYJFEtneC6iLTb
 WpkUpGJdaW6kXOhRj7Uq8Ubkbe8j51gzGGsx1CEKsW2+gWF/W75m8z/qQ
 etCjVwchV9co/W+fEckPJhl+gWbpHzPRlGVm+B/9JSpi4fLEKcGkSpt9K
 UI1X4fEx4u2Xt8mgv9tfanNzTIwUNjT+qHtR/WHF5DsnJpNFrWDk48SFp
 QIEdyShPJVPs+L0e7JHoohEuQHOXEuRYRzKe9D+micPEiQXlupwqkUXc4
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=leVSwh9z
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/4] ice: fix asymmetric pause
 negotiation reporting in ethtool
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
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:tomasz.lichwala@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,osuosl.org:from_smtp,intel.com:from_mime,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DC31D6700C4

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: 17 April 2026 12:00
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Lichwala, Tomasz <tomasz.lichwala@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net 1/4] ice: fix asymmetric pause =
negotiation reporting in ethtool
>
> From: Tomasz Lichwala <tomasz.lichwala@intel.com>
>
> Add Asym_Pause to the supported link modes so that asymmetric pause negot=
iation is properly reported via ethtool. Without Asym_Pause in the supporte=
d modes, 'ethtool -a' incorrectly shows 'RX/TX negotiated: off'
> for asymmetric pause configurations, even when pause is properly negotiat=
ed and functional at the hardware level.
>
> Fixes: 5a056cd7ead2 ("ice: add lp_advertising flow control support")
> Signed-off-by: Tomasz Lichwala <tomasz.lichwala@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_ethtool.c | 3 ++-
> 1 file changed, 2 insertions(+), 1 deletion(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
