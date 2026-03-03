Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QAA8JI0Qp2k0cwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Mar 2026 17:47:09 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE121F410C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Mar 2026 17:47:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE4C06139A;
	Tue,  3 Mar 2026 16:47:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k-bOKyzEFdxj; Tue,  3 Mar 2026 16:47:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A6236139B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772556420;
	bh=jbGZ5WXr39ObqnhvaT7l18Oww2/bdVOFl4fDbZTDDQg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3dMjdffimIfuOhhWbb369vKK2NVy3N0Frql+E8xLZwz2ECNGG0C5BfkV+y3nWj2L5
	 Rtrw+amqqxzLkyaMEPuMtKyL/tAMhOx5C34nJxWkSbGpE5EFoXDIkAzkmIVj2gFXo0
	 MSqTQmbf2MZG1XCSa8N5jFv5CtHY9CltXkmXHsVqwhtddGuJtJDOQl9FIwNSnnPw+c
	 jf1kxjnPvbGuu7GgBx0WHg+vWEsPuWr0VsPxWVNl6R0VLDf7yj2kQzh74eTDaWh9Eu
	 S+SVVOwrhq+547P0yrc06BOmDFRWe294K0kkzIcm724Adn7B3nSPCmyZys/XORF0dr
	 HB0i2fgREsacQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A6236139B;
	Tue,  3 Mar 2026 16:47:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 758F82F2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 16:46:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 580046089B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 16:46:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7DtRgF4H2_FJ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Mar 2026 16:46:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 87D5B6058D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 87D5B6058D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 87D5B6058D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 16:46:55 +0000 (UTC)
X-CSE-ConnectionGUID: 3R6A5yb4QLCjaD8DDn7ycA==
X-CSE-MsgGUID: /gavh90gRvSGyebZf+Fd5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="73515544"
X-IronPort-AV: E=Sophos;i="6.21,322,1763452800"; d="scan'208";a="73515544"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 08:46:55 -0800
X-CSE-ConnectionGUID: GQR0Klf1SwigjwFhsanbYg==
X-CSE-MsgGUID: IM5EcRx9SuCZlZqh4XY5nA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,322,1763452800"; d="scan'208";a="215111673"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 08:46:55 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 08:46:54 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 3 Mar 2026 08:46:54 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.54) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 08:46:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i5dDkBe2yNOnnjMgJUn+mi9/0KgDoVA91B5LXdzfq/Day1zen7QSl1g/oMccsZfM4Hs9ToEvjalt0aRSoHRepH4gij80u+UcXO0yeLOndCJEFzZO/171dUm2Lu5khtUknK5kCzst4LajZORFZee3GpeeoOwrWQafes8cmIkmT3RozY6BhVqN3ei17dq2DBX3dkM2NCBmelKDVYwFLryO5m4ex7yO/kN/ZAZxDkr22g8TKMWYgar3PspgX8kyJW+2UNWExfZbO67yPCm1tuYQVs7qETW51T3GmeNXgZiKtONvUGk3V9nDN/sJm0pTBvdUb+0XeFbmx3shqYBoMrif0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jbGZ5WXr39ObqnhvaT7l18Oww2/bdVOFl4fDbZTDDQg=;
 b=oK+iuNPSb9Z/pXECkJo80ATvly5+07usuMepxgAxHa1T3rvfaWpqKPVq/95xhk+VDuerYyRMRYsZk/KnAD+1qOsIwF8U5fEyiOPRsiXqdRf90lOqdrHHgcPaR6wYoqhlUXn4GPgq6aCyjo/bpxIz1OalW06Wye1lWx/LSteMPO3EZu1NI8JsytrhTc39dmu3UVHKYyH3AZs/OlDBfCXRbwxsoYQFlnQIeJj83PwM1hrKXgcYO25tVqEeEQBgA4LXaUKDw7oNdLS4o+vkfvaJKNnWeXMYNb9+xF6H87Kd9iqLekgDHob0Mo6dtlWZLOZWhJNXnVAO8gIYA4hPs+6iQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SJ2PR11MB8513.namprd11.prod.outlook.com (2603:10b6:a03:56e::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Tue, 3 Mar
 2026 16:46:47 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9654.022; Tue, 3 Mar 2026
 16:46:47 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>, 
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 3/6] ixgbe: E610: update
 EEE supported speeds
Thread-Index: AQHcihWEuWx1l8QRTEyNrKPXBi+L7bWdIrPA
Date: Tue, 3 Mar 2026 16:46:47 +0000
Message-ID: <IA1PR11MB6241A35D7179D61A4FD1018C8B7FA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260120134434.1931602-1-jedrzej.jagielski@intel.com>
 <20260120134434.1931602-4-jedrzej.jagielski@intel.com>
In-Reply-To: <20260120134434.1931602-4-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SJ2PR11MB8513:EE_
x-ms-office365-filtering-correlation-id: 262cd0e4-e6fd-4568-5715-08de794475a9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: eF9C9UeO9Cq3x72xLYFU4nAe/4EQP2RMZ902bKwOdenqgak5siyY+W0NCW2GdvG6FUp6s/CWqHxDxONDwDExiP4GJYgMdk5SNpb6VWL6WgnuMkyfND3ZypulfsNJeZLOAnSIy/st3q+RN6FpRW4YeHgxpkIR/uC+vnFqUmMS/AwGZqhh4Z363bjWH6vzVmMC2qkCgSFSf8F09/Th/wCc0oqrDkuKAeHzJE38srMPn6+uMPseF9ESdwQy9Tq1Wjzgz/hyMfVjcYGDZ165QURO2vPn8KPigCUaqnbXUT8Gc2Eg/JoZGYLPBs++E/NxMz8fhkVK2gVrfrdO8YnHRQhPtiVqEs39hpJE8Osr1qru1INsJKnjUAKyM3oQF9o25kIrWORmrMiZMGD0ULMbtGuVRXjc1yce3aiTJJRtzrRg80W9wg0ePtULs1gLEkN2nHXmEtm3puB9I9sQ1Yn9BMEkIu+ZkR+LZ860Up1oJr3L7prutshZPqxpuhUeTBkFYKvdYcmfDaK6t40iJVI1mnaxdy6uuvYwDX+spAxwGLxDvJx1Yj9Y0HRsKLtZ3mtYoQ4rWDcahhe7ja7ivba3zDWPWkjDiZLGpbXn5cbk7kBS8mcdlm+P6wovkNiEkYBh+gKGpjWprBzmPt9WF82nsfRplWOK1k7u2wJTfDaweMSRRtAcvV3LRkKhgOPN/+8qNTx6S9YoW1H3QieHJ5ajTQ+pNFq2uBuTE4QbZHx/yUtCKPEqdOib2LQ+oqGB6oaurxu9Zcx+xpodMTg6DAprNFoWYILpN6P11Pjvslo1ZhKE0pQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bC7Mq2A42BRJOYHisFTHhCZF/+OXkWQcN6SHy5sZ1mBALVNESNByIBfVh7fr?=
 =?us-ascii?Q?vTKjr2iatYj8mQOXwz5KoTwY21Qmnwdq666kL+aQ3u0KUvys0QgyMsR+EuPx?=
 =?us-ascii?Q?3T+ONPcXA3OcTauGuHvTd5r9z24H7zPCZHjC0hjWaURuDcFsBz1qsSBU+Iiq?=
 =?us-ascii?Q?mXabQVQgCjinPiDF5Lh4X1mpXKHJ6MjyzZ+XeehjlX/DfiQj07XkS1Z49x/M?=
 =?us-ascii?Q?mndKPR5Z+DFgwzGonj/3Vo7PTCBO4qPEawmGjxLSA3JrLnN/KbLSxmZqCS0r?=
 =?us-ascii?Q?bBJORFKdW/pdvH9Ae3POpzoYNy36zK3bBFk/3YL22jlQouKpblwD1tmULZIt?=
 =?us-ascii?Q?j7S2eulloX8kkgKyTKjC073H0pXShrOQ1Xd4Aj9yTLOh91o/06R0LcJQhubO?=
 =?us-ascii?Q?uFYaEkz5qO01zgYXYBWXeOEAUkYXZi3jHxAUSXWAk/FgU0XkUp+Ro+97rKuz?=
 =?us-ascii?Q?h7c3/iHAcyTaeL2fTcnv5rThGf5EUTb+M5yaTQy8bTRYqMr8vjw2nAVPMNVf?=
 =?us-ascii?Q?FDH0W56d0J5vMLEFrehLHMzKgvqYGIz9GSj7iqOFr9eQphYEVPIdTL1stMhd?=
 =?us-ascii?Q?JYRDwwxFpZS50KnuF0lOsb0oRzkqK8ezLcYE2sPp3uP8rnJsinTEnQ2oFXAi?=
 =?us-ascii?Q?PKeIK563hfs3G5p3ph+Mh1utW4bKAM8gumyyqvU3OmClQRF1BbJFGS5fdJtm?=
 =?us-ascii?Q?1RVXzqwSuiMgixKBcKkCV5oEK0NV2LeoLw2QW+1/7d1iewPxWH6/4UKmhj3f?=
 =?us-ascii?Q?x4YtQ845s6F7xsqNyxIG57l+ox8BViMLGyqzH4q+tR6ikKkWCKAry45xGuye?=
 =?us-ascii?Q?B5uD8OowD/HktXqYaeShQgedt4SN6k4P4W5G/gmus6DuFDsFk1cuBCfOjgJt?=
 =?us-ascii?Q?QUwdDjp0TBPY1dM9OtHSOxZYlRKEV8PYFc5+fMHz+EPexQeVJR8lejwdoRLO?=
 =?us-ascii?Q?wsqdh3+Q5Zx+61lKPMzp+Bzedgw2MQyc+633LUEw/emP+2GfdoaAVet7to2k?=
 =?us-ascii?Q?C4JS1XM/YequDkiouyhLJ9qVGkFefvKpgx/6A/rwa32U+XrhouJ5IM1YYCKT?=
 =?us-ascii?Q?VNVztwS4/Mwu9YkEOB2XDgt/OyHVeOsRRbn+ylodF8TB9GLUnbQuJ5mfeRG5?=
 =?us-ascii?Q?sf7u8d7hE58MT2LNzp5HQ30N9A0DYKktv3xsymC+CY3NpT3L/+Osu/b4nm3D?=
 =?us-ascii?Q?L9fkwlp4rnTm6I8D0wLpN1V69yE7Bkpv6/WekIgoXqGdLwaaU20qlSRwjEEl?=
 =?us-ascii?Q?bywdU/sxa7yKSo9oyaE3gcgJdhbuXNwuxGGEEwoS6BdwFanaVFCEaDzkFGmP?=
 =?us-ascii?Q?LZynwBbuSLbSBzaWcFNDVIJHBNBVTQeIXbvbhC8rznPTc479fqNGoQFZzP5V?=
 =?us-ascii?Q?N10w0B+EYqY3Hj0PXoK72i8z7/BaI2JqBiPKdDiKiWcU+cUZBwW1EnTVsJ2F?=
 =?us-ascii?Q?I3svAWAwefl/er/kFjHtCVgbj7QiorxUPGPjfJtYTLpOX6MewV/6Aoc0tAki?=
 =?us-ascii?Q?aatgJnHW2yNC39QrcnuYLJ/cK7pbzF5sP2ZxDntheCvPjYEem7t98qS2LYbO?=
 =?us-ascii?Q?ut1YQnxUo3qWoNSReaAlX5SSbJXfpmBb9v2fENETQiWor8pb+SsUbg76Cl7l?=
 =?us-ascii?Q?lNNbjYRSy48DRbEGVkrES54dKmnxoJA8iSpvt61LoCAap/tOKgWyXtL2oObz?=
 =?us-ascii?Q?EJ84Jzv7BORaFQXc2uv6slWubx9nGWdfvrFtULTdwsosWAs3?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 262cd0e4-e6fd-4568-5715-08de794475a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2026 16:46:47.1497 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LPJB/wd/2gEmnDFOm3TLHt9t9aoMd9tFZNB1LOIeJ1Ce/VaJ6ZQRUPNYd21WXSKBV25xuWDFFJn7TL2/tv6mlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8513
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772556415; x=1804092415;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Wt2Rrdhg4Jz8vK83utinH0JEDwVzdbkHYmkucswX8Nw=;
 b=CZ8H9Ts49P791WB2pRBiBB6Az8uP7X16ro3yh84vND7182miUIW5vt8e
 +Hm3y7Y0OBGeDRI4x4efDAfJZMul0KfLFZ3lw+xYwm90uvSue0rFP2mLk
 mX7qIgbcG9Yy8wbMveoBAcnfFnACYlL17IcDIfWll2CApe/e+AKcSo8z+
 cc/ImgCY2gh3zMG2idmXscXuV3OaXnHkKrJph1InihrJg7eAq9jVM/hz1
 hL04YZcBBTS1Jx0Se9fM4QOG5GZvY45lomlLoBo5RukioUo1u2AIurHDC
 tI/JrWs5Jl2bkcQM03NLFdsQdpJXssaBiVXodAfHgAdg3TC7CHjsvSXAP
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CZ8H9Ts4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/6] ixgbe: E610: update
 EEE supported speeds
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
X-Rspamd-Queue-Id: CBE121F410C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jedrzej.jagielski@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
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
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,IA1PR11MB6241.namprd11.prod.outlook.com:mid,intel.com:email]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of J=
edrzej Jagielski
> Sent: 20 January 2026 19:15
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; netdev@vger.kernel.or=
g; Jagielski, Jedrzej <jedrzej.jagielski@intel.com>; Loktionov, Aleksandr <=
aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/6] ixgbe: E610: update EE=
E supported speeds
>
> Despite there was no EEE (Energy Efficient Ethernet) feature support for =
E610 adapters, eee_speeds_supported variable was defined and even initializ=
ed with some EEE speeds.
>
> As E610 adapter supports EEE only for 10G, 5G and 2.5G speeds, update hw.=
phy.eee_speeds_supported. Remove unsupported speeds - 10M, 100M and 1G.
>
> Add also entry for 5G speed in EEE speeds mapping array used by ethtool c=
allbacks.
>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c    | 11 ++++++++---
> drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c |  1 +
> 2 files changed, 9 insertions(+), 3 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
