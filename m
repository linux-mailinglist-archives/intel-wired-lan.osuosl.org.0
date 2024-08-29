Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A4382964896
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Aug 2024 16:35:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 55758418CA;
	Thu, 29 Aug 2024 14:35:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X1B7lct5xXbu; Thu, 29 Aug 2024 14:35:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E592A41963
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724942106;
	bh=mHTIc2N+4f3SuMgVuIq7jiE2zxpKGlrblaZu8j/PiEU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GdZaq/poBl6VqypTPgbei71R6lbrNk6nyzAz4HsXC+CDY/UnoehwKoQIxxjf6gNsj
	 JG+gUL0iS4yoXrXe4bwlrZL8iG1NZCPCMmjO1wlXFdNHtaxWV+9773YBSeMijQY0gG
	 3XoOUsZ8b3kHw6Mo+PQBks4+sPbzn73aWbimF4sF8fDhdTHq3hs7sZbQLSy8FVnli0
	 t3NpX8YfF4ZpcOkw9BtsKYlibJfM6DdkPig6t/UKOixUC78yX4xM8vGT84izYuKKaH
	 Lb5FQnVBkTicPw42Nv6rA7zHcFZA0Eu1xlqdjGnZxSI6/IZhtlDPGJmKAk1QcrF63B
	 XLg3tf0aHqdmw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E592A41963;
	Thu, 29 Aug 2024 14:35:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3C31D1BF31A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 14:35:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 351B440B67
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 14:35:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 610I7raxT1nJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Aug 2024 14:35:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F2B56409F4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F2B56409F4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F2B56409F4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 14:35:01 +0000 (UTC)
X-CSE-ConnectionGUID: WfvRXt2sQACZurhcPeMD4A==
X-CSE-MsgGUID: LvhOkFrDS2683pEHt2U05g==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23701330"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="23701330"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 07:35:00 -0700
X-CSE-ConnectionGUID: ztXzJka7Qp6E8F9K4EX92g==
X-CSE-MsgGUID: XdlOddMWTEmKQ5WguovHAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="63789696"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Aug 2024 07:34:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 29 Aug 2024 07:34:59 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 29 Aug 2024 07:34:59 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 29 Aug 2024 07:34:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T4vaAuCUbbjDgTOflOnaHhd1NDf6kAau8i3qKqoPGFv9CSnHKDuhvA6IMvc4dba4N4r+pfd0TCML4/8D8A+mIgQfKbXI1jiSlGp1STfkPAFDkr4AggUKmncSdKvLA75QiQuiJbCcIjCNA77pkJiS7Mwafwt4BQG5zERBgtxjLWualmdyYS8oIlrTtbtYcXV+oyorCF9ntLq+IPVG2qt5mOsUdvFIjw6vbjY0dDln6d0VbB831F7qwpTR3M1L7rbNV1cY3QHUhuknBRiKaKz8S/1aJFLMS7CrXzvL5iJbPg2rOZDSKwGT8JA58FTvd6PcsfiGpev481U/kAjB2hB1Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mHTIc2N+4f3SuMgVuIq7jiE2zxpKGlrblaZu8j/PiEU=;
 b=CPd6ckRSxspPWRayc/yNKMKf2mSD3TfvwxlxKTnA12fGk+Eh8j2BpO1WoQoUByIew63Ibm8eV+BMwz7lmMZaC/A3+jTtz4GCzatRS6Tqtb+X5QQr1YGdoSDTxiV6VKwRwv1xNqR8430TTxff+dLdS/JsvCfN3NtXMlhJWcAZ14gZmD7HJ3aVY4SWqIfMtYEuAb2cXiiEyzlrSdQXgUAtamW/RzngP77H1ypY5CIwzR+zS47Evfnn65sKYZVTvhVS+R/1Q9JYmxoCnCqM5RCVqyRhRyE9LKr2mQqL+PUCwfXL18wfcqebo0L7C8IDFkJVCfa6YNnroRdJjL5OZ7q1SQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SA1PR11MB7038.namprd11.prod.outlook.com (2603:10b6:806:2b3::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.28; Thu, 29 Aug
 2024 14:34:55 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7897.027; Thu, 29 Aug 2024
 14:34:55 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Jiri
 Pirko" <jiri@resnulli.us>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 5/6] ice: dump ethtool
 stats and skb by Tx hang devlink health reporter
Thread-Index: AQHa88+HUdqg51Yh402sbc05pHHckbI+WUHg
Date: Thu, 29 Aug 2024 14:34:55 +0000
Message-ID: <CYYPR11MB842931F6813DE0EF8C9F383DBD962@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240821133714.61417-1-przemyslaw.kitszel@intel.com>
 <20240821133714.61417-6-przemyslaw.kitszel@intel.com>
In-Reply-To: <20240821133714.61417-6-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SA1PR11MB7038:EE_
x-ms-office365-filtering-correlation-id: 62e7be7e-8afb-48ad-f518-08dcc837c059
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?RUFhyOSc1QWslC0uTEcN1WJYCliJ43RzAf86aDPeFTNO2irwaYaZJ4vGfl+p?=
 =?us-ascii?Q?0Ko/FrjV6uFH32qGgqot2IywqfWn3jzbJw37QKT8ch5Yk+aW93CsVoqYonV+?=
 =?us-ascii?Q?1li1+mjHgQd4WZUMkpgoewRfwoYJRhx3BWUd3rYzyuDPeA8Totch4/APpbyF?=
 =?us-ascii?Q?qK/fL0tJhT48Qhf6imOuibTD02sApgWl0Z3jB3QlSOYa59KytJOMpC3rtB0Y?=
 =?us-ascii?Q?OU2INZUM7Zd2L+7wE4WqK+tq9zd4H3FgIMEY5LvwJJF/SJc2ficeZ2E614Jw?=
 =?us-ascii?Q?7E1MaI1ZTxBZfmXbhDTdvX1feGixsUSaZF4e1AKXXFR38Kbc2Rrv6T38rkG+?=
 =?us-ascii?Q?knJHeHzmqo6Zz5rPCWgGjfJSz5cguooSH9l/QzUYCiHObf7XeFyQoQChUHMj?=
 =?us-ascii?Q?DpoUxM0gWrUlcTvwCdyFsumtfgcIV5cSLwP2Rqn8n2DpurnkDZeKTwgPleJz?=
 =?us-ascii?Q?hglD4WE0a5aLKyjtJF+KmHqnZWIkL/qyETND87X/btb/XQo4kpoh5b6ZHJpU?=
 =?us-ascii?Q?serKQlY6dllgv9bsHb3knhu4BDS1U+cmHxErkYWEKz5hRdhbkVuySkzeUFsZ?=
 =?us-ascii?Q?ZfQq1WF7lKDlO5hDFbfhY/cUwpe+/nH8vvDoGKYfBS06z4ItM9hUcocSVlZC?=
 =?us-ascii?Q?dclTqY4VWzI296r2vjELdbkoQGcG6m86r+HhZg/UF9C5ogSrLLAD2WH/CWGb?=
 =?us-ascii?Q?ZfaydS6N6Q86R6fZrhRZkiiobek1t5dmUOoPpi9mZMqTf3ZKSOMoCKXmIl0i?=
 =?us-ascii?Q?4cS34yyvR6u5aqyS9Gmaf7JyQmjRLZi99fmUMKNmksohjJU8sz+wh7gSea1v?=
 =?us-ascii?Q?iP8IuaKQO+yPmLpOJcZHeKEzCzQcrv6BlTwMjSH/GYYDr4HYhVrg7kSwh3Rr?=
 =?us-ascii?Q?qIXFqNyA3Zs5WF3B0XLIhNJPjFfhR6mGKeP0sxFLpHrKZNybpdf3DEn8OIt9?=
 =?us-ascii?Q?FlNJlcCsjOEpyI/aS7IY9w/PR56Em2mNDE4INW4WCh5+m+bnWPCSWmZ+i4hu?=
 =?us-ascii?Q?WIk12FppjSQZnqfuT+x/ojuVku4OkvjgC1Is67ut8VvdPUyfV1jXzLLuCKvZ?=
 =?us-ascii?Q?P3UWlVFI00pNuBBv0sBdpEiTyNi3e+BddH3sDe6/GtUZqYUZ0xaiJc244DPC?=
 =?us-ascii?Q?QUbGF7RBJjrh7tBzNGcFBx92AYxyhL30mo7iOod9bc6wxVl28VKgQQyW11Cy?=
 =?us-ascii?Q?X/PMKgsS2Z/r72wLbKyRScEtE/ddWwcZM7MwfAnq9o/199Ds3pJRxIWlznPh?=
 =?us-ascii?Q?dvmbJ4oFzbDYXGZTc9O60c4S83TJ2ZS4LAJSfppMWwbSpau0C37aa3q1DmaY?=
 =?us-ascii?Q?qxQBzZ3g+B40swIWiAHYTAQwaYmZvByhCy8PlTekbBZho1hMNg1AIPRQkqDy?=
 =?us-ascii?Q?YEcbEfQ5i0tyaVC5ZpinGNuF9hcI5V5MMN0sFa9fJX3lwzEamA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ltp5t68ydl+ViRoZbY3PvTyonee8dxnxPYUrtoCArniu+eS29SJwGWoilQNN?=
 =?us-ascii?Q?p2z1vlymUcZMdTWSeMcrgBC0Ct3KthlzqfBZCou+rTaK0HaD0czIdMMRxuCx?=
 =?us-ascii?Q?ya94Bc7gf5KjrGuh3XZ6OdUgtaNopPErK7xv7WT/wEDO6vUtfRRVGctiOAwG?=
 =?us-ascii?Q?XZZsz2fZfnrrrGHY2gmK2FGjftJZKCPsHl2fVujyCYR6g7d4uAz/afClxiop?=
 =?us-ascii?Q?C+al4vXHEf4p6WUwhbjiNAX1GBKERt46etY6QB3KrZZCehs2j9YrRC8hGU0w?=
 =?us-ascii?Q?fAXIz7Yemr01SbO5z3gBQWW31oxd337M4bhntaFChzMfwVEFOfZ6ZaYpTgP+?=
 =?us-ascii?Q?uBfykHP6X7RRvxsMp2fy65vlRN8EDWc0loNa8MXxXwckdPrcqXCoafL2EQ1N?=
 =?us-ascii?Q?Mg/bU3nMDhlaCB9/QIAuPqjDT6edUjzGrqVCY1cip2ARGctveh6mu2EsbwSX?=
 =?us-ascii?Q?9L2ZQrb1DHlwVztP9Y1v1B1oB0MttrB0sMgZPtNP7HpANmIfR64jsepW0FU8?=
 =?us-ascii?Q?MKbLTIHjI620zu6/UWjM0wBQVklSFpbcyrllbXwYEyHrsW0GOsSO0xAEltMA?=
 =?us-ascii?Q?PfM2QmGtyqxnjGAdpRvyYoyIMbmPUHn3ANiIb4M31IrT7I2d2Yk+1DxaNXQK?=
 =?us-ascii?Q?fjd3oyQsokIZHDxfx6ZQyEfYNw74n+xzeFebWrFjk4gy7+MFCgI4dbCXE0j5?=
 =?us-ascii?Q?t27+RfmDlmr4BaR4Nbo9trkTru1l9eelAjWoaB7nZdyLGdPGOLP0e8odrdAD?=
 =?us-ascii?Q?QzRSgdG3RI7i3xR5nVFa3h5C1VXsKCL0i6e6+8iZV75yF1C8Edi5sWdW5auF?=
 =?us-ascii?Q?i4gMzI1TsNami8AhADKhDRsTHPVK+/tRoQTVi0Ar7Bt85DsUfPESsoMjw+u3?=
 =?us-ascii?Q?F/N4KIXzMlOoBasbB4a2JGA3Dyj6ezBByVsq4aCKsmFgbe6bvVLGbdP7W38j?=
 =?us-ascii?Q?32okNcij5bt3R24VSUG/hlYfkjE9C4nIbPHUC7Xlko4ya+xrZ+MqMqoGehHt?=
 =?us-ascii?Q?zDeJjhZTP1UFA4pZu+QxJ96y++n1uiObKr4meZbbU3/PwaHbRB2wBgQeM7yW?=
 =?us-ascii?Q?lhe+lIuDce27ubyJ6uFweRTNqtE9+BhlHF4Idx4ZNpYBshSYDMpRn0gIlxML?=
 =?us-ascii?Q?sV6JDfe32qQWCz6PP3jLPibmmVGYXMCF/5S/BBDgAu6SxCANpEJS8SrLPG2k?=
 =?us-ascii?Q?/KqsFSYJYqfFLfOis36RpP8XMuGi0KGs6p8d08x5Ivm93F3ISO5kXmfNTxjM?=
 =?us-ascii?Q?yVFK2K0Vuy2OF2gSb3GN6/H4rKCH41tKl3WE5yo5eOotrPfMIipAXCXoXTJe?=
 =?us-ascii?Q?BHXCnfJRxFXsXLWfsvWUaSyDsn/GtMQihTXol0FWBDgw9kIeRR+2qZtysgh9?=
 =?us-ascii?Q?11HvtWKHtWZyxmCiEoy21fX6o2321JzDRG16Z2JYJTryt4ydIKPk7ffzUYVs?=
 =?us-ascii?Q?LjPUJI5zcSmTNNE/kt3X6jZJe/IwleLyQgsPfHjxvoyipdok1v+Tp+6k5hkt?=
 =?us-ascii?Q?g2U9qqotaaN/jrIdZaquKXjZ1n4N1Cwv0dSAOZI/GUR6AzfOsdbSotI5HWam?=
 =?us-ascii?Q?8WwFCMBNxNV8PdLOFfCoc4V66JQ+Q2UoXB8AibDqt+JiXsRPYk/zScCP387S?=
 =?us-ascii?Q?kQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62e7be7e-8afb-48ad-f518-08dcc837c059
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2024 14:34:55.5038 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v3Xnj3t748yYS37L6hcT1qpxrGP+bfZwFYBUcFPDAuh9vX7kQEK1w4lCUI9hfPxi3dFkiRvPGfvu1r2HJl41QS1hWA8KVnYMaONnek5WV4U2Bg1vtky/e56W9pzMY7t7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7038
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724942102; x=1756478102;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=omMVfwgQm9Xb5uPZJOpXk29SgehLnwRVRrPnC0VZZNg=;
 b=Ht0tKPStVyuw9UPBRppBsPxlUYWBMC7Jmw2ylwH2bYA+No3ew45P1Uds
 3BHpf4n4DgDYOcMz1P8f5HyuMoCyXW0t3BvuIg8ptw4vXk/+jkflwrGKH
 HL1IUy+jPFz5H0BOwotaVqb29wcEBpKvpGJOnoiquQMIbj5EO3/y1N82I
 LoQjZ5/WTmWvdEP3vABaGeUiZp0WNvMl8XcRrOshdI/sVgGYzbBYC0ozr
 N/ZZZ7Xm8UhoCdLjUbbnUhOYmKlkx9UtwoKGErq2znEOG3cNgz9Sqm55B
 U6P944jJ3CaSTpGu3b+L6jXpEpIrbXuRR223lvIJ0JFGhQykbQqVCBSwo
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ht0tKPSt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 5/6] ice: dump ethtool
 stats and skb by Tx hang devlink health reporter
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "apw@canonical.com" <apw@canonical.com>,
 "willemb@google.com" <willemb@google.com>, Jakub Kicinski <kuba@kernel.org>,
 "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "dwaipayanray1@gmail.com" <dwaipayanray1@gmail.com>,
 NEX SW NCIS OSDT ITP Upstreaming <nex.sw.ncis.osdt.itp.upstreaming@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "David S.
 Miller" <davem@davemloft.net>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, Eric Dumazet <edumazet@google.com>,
 Simon Horman <horms@kernel.org>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>, "joe@perches.com" <joe@perches.com>,
 "lukas.bulwahn@gmail.com" <lukas.bulwahn@gmail.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 Paolo Abeni <pabeni@redhat.com>, "Bagnucki, Igor" <igor.bagnucki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
rzemek Kitszel
> Sent: Wednesday, August 21, 2024 7:07 PM
> To: intel-wired-lan@lists.osuosl.org; Jiri Pirko <jiri@resnulli.us>; Nguy=
en, Anthony L <anthony.l.nguyen@intel.com>
> Cc: lukas.bulwahn@gmail.com; willemb@google.com; Drewek, Wojciech <wojcie=
ch.drewek@intel.com>; dwaipayanray1@gmail.com; netdev@vger.kernel.org; Polc=
hlopek, Mateusz <mateusz.polchlopek@intel.com>; Bagnucki, Igor <igor.bagnuc=
ki@intel.com>; joe@perches.com; Eric Dumazet <edumazet@google.com>; Kitszel=
, Przemyslaw <przemyslaw.kitszel@intel.com>; Simon Horman <horms@kernel.org=
>; Jakub Kicinski <kuba@kernel.org>; apw@canonical.com; NEX SW NCIS OSDT IT=
P Upstreaming <nex.sw.ncis.osdt.itp.upstreaming@intel.com>; akpm@linux-foun=
dation.org; Paolo Abeni <pabeni@redhat.com>; David S. Miller <davem@davemlo=
ft.net>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 5/6] ice: dump ethtool stat=
s and skb by Tx hang devlink health reporter
>
> Print the ethtool stats and skb diagnostic information as part of Tx hang=
 devlink health dump.
>
> Move the declarations of ethtool functions that devlink health uses out t=
o a new file: ice_ethtool_common.h
>
> To utilize our existing ethtool code in this context, convert it to non-s=
tatic.
>
> Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.h  |  2 +
>  .../ethernet/intel/ice/ice_ethtool_common.h   | 19 ++++++++++
>  .../intel/ice/devlink/devlink_health.c        | 37 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  | 10 ++---
>  4 files changed, 63 insertions(+), 5 deletions(-)  create mode 100644 dr=
ivers/net/ethernet/intel/ice/ice_ethtool_common.h
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

