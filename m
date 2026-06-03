Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YmluDIjrH2qdsQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Jun 2026 10:53:28 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCFF635E1D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Jun 2026 10:53:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=lwqFi0e3;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D92060ED4;
	Wed,  3 Jun 2026 08:53:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T4OWxzmauqRE; Wed,  3 Jun 2026 08:53:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C81D6110F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780476803;
	bh=Lo80vNk7w/tKDC4hqOAGG6c5iPM/NdVkFluLq0wrd0A=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lwqFi0e3rwjkMPJsMK8vJsbzmw0TYl9+bLn24bLHJWL3etTaei2vMa9qjwILKiCG8
	 dtCaFMU9Q+cr7lJu7heomwaFdjbGcmXF+LYOCazrfhq8qSiRYPC616E4qqRdVsD69w
	 uZ/8zjHVf3jv4+xWPMegb83eHa0flMQwmxtvy4llB2MnHNowMIHuqmfnzRdTxr5MTR
	 Fy+HhInxXjNX0n1+DhE8KKrsXgtnJ1j0CQWY21tOosuoU7GKT7JQt3SVY54PJkaWxS
	 KJIeiDY6juDF2KxFMXRxYG2LbtVv5u/bY6s6/UrVFTmkOfI51/rai4JE/i6ASfkNo4
	 dQ7t6Km0THYfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C81D6110F;
	Wed,  3 Jun 2026 08:53:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 825CA353
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 08:53:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6851642359
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 08:53:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id euBO3JYa9B7a for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jun 2026 08:53:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=patryk.holda@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6728142358
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6728142358
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6728142358
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 08:53:20 +0000 (UTC)
X-CSE-ConnectionGUID: qBuoPO9rRrCtpUKA53TpNw==
X-CSE-MsgGUID: YDWKQdXuTQyvQ4HMYUfC0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="98842811"
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; d="scan'208";a="98842811"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 01:53:20 -0700
X-CSE-ConnectionGUID: 25eX3MIaRPuHFWGQPsCSBQ==
X-CSE-MsgGUID: BezYqIdJRBOuxGycqgzPNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; d="scan'208";a="243313426"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 01:53:20 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 3 Jun 2026 01:53:19 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 3 Jun 2026 01:53:19 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.62) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 3 Jun 2026 01:53:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZYiq9jVJP0MOocqJcRiK5dDmBwSlzPH/uxjsJ3HfYIfj73WWiTek1pE8OtCAuMVPngyl+T1JyoBv4akowZ9KC44gYIaMgPrYobN/cCcod5im9YNxFAbwZhnalYXHKrHhVTau8Do2VMdSGzeKspXpFMDJD7qzVAvoII9eUsD0fXKkUHGftSh+0QwqBOoLW3aME+mg+RekDmZxkgYI1J6472HG0EYbWbqM+BkxAYZkINnXvhlubt8riwiXRVMk2pD4kFwVzHywdqAWBsuHzQbbKSas8ipzOUlpJOclU4LHPAYWB7oHzBGPxrrvEpn7xw1+AFBaTGEsN3CPw+vCNHZjCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lo80vNk7w/tKDC4hqOAGG6c5iPM/NdVkFluLq0wrd0A=;
 b=vJqLst9RtkYF/uzolvjfFhR7gpU7lFQH3XLWFYqFM/VuAYKuX4Knl8bPY/WL/R38UH4AjSJiWtgeIxnoiGezibh5UZw3QTCwRE2Vs2mSymhdJgC+abr3QT4MHySEmAy+WZuQcxBv1B76GfGRiDHjkssNoGOnfCWPPL7N/+8Q1kcJxwTpOs7ubrFMoMWuZNO1Y0+TbW1uvR2silRmoWpNA+TYrx0a6BqgdAgFeY2rBzRDN07CIPZd1g5DnOR1PhV5S9+gQEjK/w0zqA+vpjx/YzGEqtsJWbGGHZ0NAL8QfUyjdcdfmNKlI0Jlm5jlk2bg+pDtUqm+Q7BsOoDgOQqrKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9301.namprd11.prod.outlook.com (2603:10b6:208:573::20)
 by BY1PR11MB8006.namprd11.prod.outlook.com (2603:10b6:a03:52d::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 08:53:10 +0000
Received: from IA3PR11MB9301.namprd11.prod.outlook.com
 ([fe80::714b:7d3e:aa0:104c]) by IA3PR11MB9301.namprd11.prod.outlook.com
 ([fe80::714b:7d3e:aa0:104c%6]) with mapi id 15.21.0071.011; Wed, 3 Jun 2026
 08:53:10 +0000
From: "Holda, Patryk" <patryk.holda@intel.com>
To: Simon Horman <horms@kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] iavf: convert crit_section to
 DECLARE_BITMAP
Thread-Index: AQHc5DWCPXEXkafsc0K2ROOWeHRDgLYVzMmAgBbXcAA=
Date: Wed, 3 Jun 2026 08:53:09 +0000
Message-ID: <IA3PR11MB9301BAC9152FB8377858EE598A132@IA3PR11MB9301.namprd11.prod.outlook.com>
References: <20260515063836.3300442-1-aleksandr.loktionov@intel.com>
 <20260519200347.GL98116@horms.kernel.org>
In-Reply-To: <20260519200347.GL98116@horms.kernel.org>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB9301:EE_|BY1PR11MB8006:EE_
x-ms-office365-filtering-correlation-id: bd2ab569-53cb-4c46-2cb2-08dec14d89af
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|22082099003|18002099003|11063799006|4143699003|56012099006;
x-microsoft-antispam-message-info: lZjqFrg4s8qAWwK8jrY8cYJzytbH9egELA0YAj5Mh9P4pbXPfxPL9Qw7XGfjqWfXhty/8TS1Nx4FojuIOFH8NSb4H8CFZLBxLBg/TKVLiNExugH6FpSgzsOHQA2nHWjvrdK8Op7gYyx6l6RRHoozTJMIYSiBVkqOviWA+rsb0iqSUHzn2brbtlryT+vsKjmJGoBAnIoBw5lus2gKf81ePJthIFCaE5LB0kKHqkJ8ripNQ9vQx9/i0W1igps6zIRm7tyBVCdlipMx8myb4f4ld8JWcln4iIj6E8qf9m6RC+SzWFJWqQXAxtmbQ/JdJjofGdgi1eDe9+27SWoLtfYqjj/gIUIezb+q7j9aweT0DkH1S42xALMgjql0k3tZr47nPd3eBvLcMj6MonVUqUZ57LkOujJMsD8QK+D1RYTGiAV3pcdt1rO+dIPOPKhaMrBBSTcpVO3M2w9uT4SxtT/ZWHkD2hM0WzK9uXfuGB5HT8p21BzU+newfYc9fXL9YaU1XeNJBl/hAonE0yJ+8IZEjK7FHwhSKjgjYVPv8Z9RlDs9lShd9vHT4snZeB6xKcgNV+gSK4Qk3/ChYjjrWRBeDEjG84aYzeN4BnYd/r1dRX/eDP2i8IH5uL3bKXXOein9SgGrF2G5TvdluQD4KaR7puDGcl7GNQ1x1mCNJNMJxpLNnFxl1DgnSpXGJWJtja1icIkOvY4cXZNLMcuVMRWa02sokgMGXCrS0uRRv68h93mwVItG3LYkBClzX+L+Rgvt
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9301.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(22082099003)(18002099003)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?lgN1bVwUFolw+nf0zi81HSp+Qw7dNFvYyDRqALEpWI13qlokQZidGLhJfp?=
 =?iso-8859-1?Q?KU9uXJKAypTWr+UlIMCMSqmb2cehDrtUKJ99ahg6rtNEL3RcTtZHTIE1Ev?=
 =?iso-8859-1?Q?Pxj6bYwGV6UOpS5B3oSMu8up5NHV7E/PH9X6gupz34IIY91C6iY10oySrp?=
 =?iso-8859-1?Q?2mxIdQ+DIxbX/WTUrbumV9mO9/ypyDlP/GsBOr/7geHwkdY/QWZuu69xNe?=
 =?iso-8859-1?Q?5fQayKo39Z3mDMYtITJNYQ7k2oI/sOao6lgHsCmLmIG4Vr/GvsjBGwqnYj?=
 =?iso-8859-1?Q?fsZRsG3TzOrq37DeQ1C7EKeS5SsKTYJYYEx777jnGHzXewqltbTmARo5fu?=
 =?iso-8859-1?Q?nQerm+GIySanD0+ZW/uiHu9EqljHCcUJzAQzpt/gTdnaFFaFLCy3Osj38a?=
 =?iso-8859-1?Q?P/d1cyM+/2Hv5quDvea/2mbQI5va1gitOqD59TJVWUwq2/ZAo8VJHAuycV?=
 =?iso-8859-1?Q?Xx+d1Cf/JnYP6mves+C7DwcAqQSi3WaCI2nJ6+GEtnY2l86GyktJB2VBSH?=
 =?iso-8859-1?Q?GFS3L0mn+5yvc05eLChYEjdvMYxqPDZD6/DFvCnbnjNUHWCgQBsFK+Shm7?=
 =?iso-8859-1?Q?e4DRB2NJOnELtSFR/8VUNwC3sV6MoWK8W3Xsh4KhmX7CsROB0e0QmqJLJ6?=
 =?iso-8859-1?Q?pPiehm7ZyzqiNDRMP6WwvIXxw1xneM+BWWNNVGIgO4NQwxVvueI/1VpPbX?=
 =?iso-8859-1?Q?WXWEWDzgA2NikPIYWrVboFqF1TwLQHdJk7ijgo8na8cnbjGfzX10WZE2qh?=
 =?iso-8859-1?Q?LxKyIFYMB2gUtwEsSnsQKZFbucHy3PAV1nZ7zxnGkeM9Vz1COYj+uVTgEm?=
 =?iso-8859-1?Q?FK7+ttDZg+G4jeGRSFe73i8QoLeoL5sc1lMw1WrNejuaeECf4W8hXUZ3zC?=
 =?iso-8859-1?Q?zoMbaZvlli/3y0H7YMcViGSTiy/m25bCzMg94AgHpABmttoSK+qnvbE9tk?=
 =?iso-8859-1?Q?KNz4GQSvhpiHsyw8Ugeh70d/qS8zuZu4c+SxzEcrdBA9P8/C2ZbOf0WLVS?=
 =?iso-8859-1?Q?o/oet6mli+AHKnland24nwAfE3H7fxYZi1X191vA0gwS1rPSiYNtAspHRb?=
 =?iso-8859-1?Q?rXSBs2xsqj4bmuDqjV9SvUScukIpX/VOvvy97UztXVH/JIFIyQwhVWO9VW?=
 =?iso-8859-1?Q?O5RxTRiPnjXrDjHib0o72Gu0aGCgxDYz5Y+yYPehw/xJuZRNQ7d5i9pEmV?=
 =?iso-8859-1?Q?B/TruNMdPPse4nWoyN/cXxuKg7qFjNfHqaDzsy8F2XCZsQ0vcVMdNYj9uP?=
 =?iso-8859-1?Q?ufPYZC7P0Xn4wG537rFWXEfdM1uu2YXHtSL/MOqL95alP91Fkr5bVxIJpE?=
 =?iso-8859-1?Q?FqnuaNgOtczCxwberrnMgdZv3SemhU+C0RrXhbF7/p4wfpzVvHAWNzQkmV?=
 =?iso-8859-1?Q?oEx0mGbJIzaXE7rCQwMgyNGNchLHDe4oXXKX+zx+pW/CdlRXZyUl/Jp1yh?=
 =?iso-8859-1?Q?/gGmHVafef21oRnF4qi+7lMxxD0Cl6KjiNHcaYOEjfLN5zrvSPDOZsTSq+?=
 =?iso-8859-1?Q?m6y7AZD6lHHN3OZa11qATrDI1PrFHP1u+pDKKRhqo7b7S4WvoBnhSeDKC1?=
 =?iso-8859-1?Q?Pe1K4p6AvIItHbQUfV4JNTGBJc1t+OZRhfDVoD/W5rwyvo0x78omr3rgmH?=
 =?iso-8859-1?Q?E6Ut4JOPpSQcjknsIUfrxzcEE3bCisihG+RQ9WXIAACz1xZhhGgxEJwNm8?=
 =?iso-8859-1?Q?U+PVBoC6SwTkZvtTkeBzeS5/91d/TeQ2MHfbLA7bqYBLINJOKBRyGIgq1R?=
 =?iso-8859-1?Q?Ug6yF3JZUxbZJ7jF4WZZPB97AG1r7tljXSF+0vzsneeiFv?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: UER8hPl9nvp61rI1wQ3U/DM3kFYfZ7K8PJZtBcnjxzfCb8zBMlcp39lnH+HgdAH88iTW4ba14e+NJYIRJ2D4DUOPg05dn31yJy6LLJSeJwk2NCMHqVWRy8rBlAYTocnZZEIeI3GuPnmeeLx1+fZtmVf9wQ5DmekmGhUQODTgb3P0N4REyzoRdbD6fJ9ZxmKgvUZr4gmczoRqbraOI35zYd3ieBeOoLXgBw81Y6k+M3NGwAMaj9wb0vU0wgXRNq1M8CzcLaruMNZMDubUg6v0TTb4t15fhJT8SwkLAbrSv4PGRIFUMSTGUWm7xyjQ3vyO94BELWQj/I5FoAKA666trQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd2ab569-53cb-4c46-2cb2-08dec14d89af
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2026 08:53:09.9564 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yGf627copufe2nY8bwlRxOTZ0gCzOTLeClJyANTEY9Qj7zDNKX5VMYfrCO6p3rSBunjhBZDVk64iiuua5H+MlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8006
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780476801; x=1812012801;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Lo80vNk7w/tKDC4hqOAGG6c5iPM/NdVkFluLq0wrd0A=;
 b=YTBapx0ZdskFnLFOkrH6srCk0I6kBUmrOsp06G5GPKvO6pqF1fuxL8Q0
 WPTS9gBwSbM8LNicLJfVQPsTbR/4Pr/aYVJpvGKvs7eVpAPh+pIxHdBe5
 YwPPUaUyPqvakA/+rIzRngVrWA7Wf+44hMgDWXvQbwXlIH50I28ngEZPr
 LbBmoinZCPIQS7+m3QNUW9yVGABC1svXJtzjDFqGHhc/l+220tWiCgnjb
 MkanlcRpTOKSiGRJNQwODII1ZldktPms2Tt4hqx28PrcFdJqVCkR7uE05
 yyP+vOuM03emxTWdp4HfaZFm2nhV4F5jj+0eyGwXVdGHMdKCoIE1FLZE2
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YTBapx0Z
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] iavf: convert crit_section
 to DECLARE_BITMAP
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
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[patryk.holda@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[patryk.holda@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EBCFF635E1D

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Simon Horman
> Sent: Tuesday, May 19, 2026 10:04 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org; Kubalewski,
> Arkadiusz <arkadiusz.kubalewski@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next] iavf: convert crit_sectio=
n to
> DECLARE_BITMAP
>=20
> On Fri, May 15, 2026 at 08:38:36AM +0200, Aleksandr Loktionov wrote:
> > struct iavf_adapter::crit_section is a bit-lock container indexed by
> > values from enum iavf_critical_section_t (__IAVF_IN_REMOVE_TASK).
> > It is manipulated exclusively through the kernel atomic bitops API:
> > set_bit(), clear_bit(), test_bit(), test_and_set_bit().
> >
> > It is declared as a bare 'unsigned long' and every call site passes
> > '&adapter->crit_section'. That is functionally correct -- the bit
> > index is a compile-time enum value well below BITS_PER_LONG so
> > BIT_WORD(nr) is always 0 and only the singleton word is ever touched
> > -- but it relies on layout coincidence rather than on the documented
> > contract of the bitops API, which is defined in terms of 'unsigned
> > long *' arrays.
> >
> > Static analyzers that model the same contract flag every such call
> > site with ARRAY_VS_SINGLETON because the address of a scalar is passed
> > where an array pointer is expected.
> >
> > Convert the field to a proper bitmap using DECLARE_BITMAP() sized by a
> > new sentinel __IAVF_CRIT_SECTION_NBITS at the end of the enum. The
> > underlying storage is unchanged (a single unsigned long word on every
> > architecture Linux supports), so there is no functional or ABI change;
> > the type simply becomes 'unsigned long[1]' which matches what the
> > bitops API expects and silences the analyzer warnings permanently.
> >
> > Drop the leading '&' at every call site, since arrays decay to
> > pointers.
> >
> > No functional change intended.
> >
> > Suggested-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> > Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>

Tested-by: Patryk Holda <patryk.holda@intel.com>=A0


