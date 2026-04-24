Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6GH1GkiM62lBNwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2026 17:29:12 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC60460C72
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2026 17:29:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 418EB84CBC;
	Fri, 24 Apr 2026 15:29:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KMbKdZ8UJJfU; Fri, 24 Apr 2026 15:29:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE5FD84CB7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777044547;
	bh=NJZAKdufuLjKRr0MTqb8rqYc5sofzWfB53/iQRNlnfw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cv4oVhi/eZPLxACd3X+uV9fCtGX+d9+KdI0QNlyB3i8aI2vr6idjtUiuK3kD4SGYr
	 Tl65155HqXdkr4lZL9gRhv3pqsCYIUwcYcjgw1MKrvQ2YmZ/MhHlGXSIJMI5ChJ6mT
	 Loz4TNhDB4b+WX8Yqx2uYvN/mSpoECHau7cebWF3fYeZat+785+drH5sdPMUB2F5Aj
	 9quDgvbSkNSVtibKI9ro2wkYaSE5sdTHC4MMB+wVa+hs9VvckHrgUF4dZ5WqQW1idJ
	 2w/xsOJbm/LmG7n77nhxlGg8yZ8wGUdEKEN5LIThFEvUrEttvNj50Cncf3TyRGJXja
	 kby+H9vZ4iJIQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE5FD84CB7;
	Fri, 24 Apr 2026 15:29:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 12650206
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 15:29:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EBF3861BE2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 15:29:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CsPFjphtMPJv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2026 15:29:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1C44961BDF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C44961BDF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1C44961BDF
 for <intel-wired-lan@osuosl.org>; Fri, 24 Apr 2026 15:29:05 +0000 (UTC)
X-CSE-ConnectionGUID: 2YdTQWt1Rluy9AYa8W9dUQ==
X-CSE-MsgGUID: kfWFsY1YSLu01/XZmkzFNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11766"; a="78083710"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="78083710"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 08:29:04 -0700
X-CSE-ConnectionGUID: /W/IDDNhR6m7P5HD1J8iKA==
X-CSE-MsgGUID: JAqxvCeORZ2RcGIBunscvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="256498504"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 08:29:04 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 24 Apr 2026 08:29:04 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 24 Apr 2026 08:29:04 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.44) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 24 Apr 2026 08:29:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hbV9a+MwFDfPbvEU9n7T9U+bpFr21yxM/+iZXALNG/O8iMlVF0HZcFhPrjolwyEyLlYMGfpBE/DCvLU33xSLr4Rrq0qE1K++HA6edXIFEM04gdph0qQ8PoseRYVn50ZgU9Qm8y4zqF7VphtjLgTx5O6YS9+axwrmj4OUh/QaCFNSIxky085Q6aNNoEU2UAiyO61G5AzV6fc7JVs6a3Y27TiRRXdiHbPymHAS0bipfFC9f5zaF9K7W8Lp+ABF7zMQDSlGEwMnXW+ROJF9NX6nciZmBmJsCxX6rMKCl1smLG32gTznLViPC4Tho/g0VSTpPE6+wRmV1/EGAOzoWkwdeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NJZAKdufuLjKRr0MTqb8rqYc5sofzWfB53/iQRNlnfw=;
 b=UfRaZ7NexDK7CfEsdgwCVur6eUNDWrQn72X6GVT3aL3uw0vNMKCwig0CWfJuGcGcCaG7n25keQzg4Y8YTv196qK1HGViyPMx4XKEaHCp5iIFZwJdnK2MJlpFDYeUNw3J0FHbV9V5xGnx3bApP0hvGcuP+hveyxvSUhJSLlM5x835aD+DDNdukQImarfL+ZUmZ4R8a3N2HHpKHsEX4OIALaWv9uxbwVHSYWpxifkEDEgei6OuzsdryoneFkKjCCtlhmkZyr0wWPdIog1+haQSd6CrGl+H8MeiJK2cGSB6nQKN/4QQZBVcizbT1/p8mECNaSNpKkd+mhI5V33G8Xmj3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ0PR11MB5183.namprd11.prod.outlook.com (2603:10b6:a03:2d9::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.21; Fri, 24 Apr
 2026 15:28:55 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9846.021; Fri, 24 Apr 2026
 15:28:55 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Matt Vollrath <tactii@gmail.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: Cleanup PTP registration
 on probe failure
Thread-Index: AQHcxWC99YPuWedefEunKEgmqpaT0bXuc0xg
Date: Fri, 24 Apr 2026 15:28:55 +0000
Message-ID: <IA3PR11MB898683CC860B7CC90DF73960E52B2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260406005830.2250373-2-tactii@gmail.com>
In-Reply-To: <20260406005830.2250373-2-tactii@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ0PR11MB5183:EE_
x-ms-office365-filtering-correlation-id: e16c71e7-66b8-45d1-0d3e-08dea216329b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|18002099003|38070700021|56012099003;
x-microsoft-antispam-message-info: qyumyV5tHxXyocI3PasKYWe1YNSGJQfcxDJVzL23+cvpm/8s1HOIYJI+ja1UArCOFkTBlk11mlZHX1qMnNL9GHplJKA8liEegkOpcbWNclrFNnC2EWDFvFahFEHUm0x5tSRyCcOoQvxBTogEPd5mLYbnrOkcnjZIgKN/lyMEMzAxEYSUt2jjUaaUC56OKQvWskYorFKbLfop/gj0RghUpCn+vi3AIm7DDBgjkBUGsiN6BchK3yCo3XmUAe8aUzU4XUXTxqWKgOR0mTzA4npf6VXjBL9Ffyou9N+cWXgPIaNRQ98+A4B9iUnQoKqIAAYpUvhrYYapr03evI+a+4mFnRHAVsUY7Gf6NCoQc8cAiEm7iSKny9JYtaMrPhq9TbrqsO6NMf9cHrmubsvKu5zB8ni4DjOfyazRvvvP1zKp5oTidJmUwoS4CNuGwsnZ9bSvdlgZDgIIKRijYc1hRztByT1EiGRN4qoj9unTkQbSwIE8i+Iejv6lExMsE+DxuvqPIvKV63ppbUaQwcsWLDstopUtW5zp8IuqYVqHUEUNKczXII1EaHa0gubnvzt/iVncbYa5lzexbdqiDW1s65AmUyLkKVltKeGhJAvv3esVWE9/hiQzhEq3zIrvqnxVGbVVCwbaF24y3bOep7/ssKDVYrkMflc1gqj3AwYw8RV3w7If+1XZl+zDAkK2NQqZluKlpdah0W8lD7sWnypmbh/9arnkDinIZ1sl2LvBhYXXZ2K5/wk/5mktya+GPS8DhlECShzfm9RyoPav73rH54fnXTMRe4AHB2cGnS1ar3VMRi4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(18002099003)(38070700021)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9aEtZF2ALOTBHjB6PLHex6zKuLdNSdQktFHuooQBJa8JFd1QEuAF0GngK5TH?=
 =?us-ascii?Q?CVdyc8iRLoCCisI92bhZY7MdyE+jrFTPD5b18t3Rvjin2DSlPEtxsoygXGF8?=
 =?us-ascii?Q?FdAm021mBvVxNdv7xnIaz9LBEQOs3B7vqME6afgROyvLnX6SfIsYe55zsL5s?=
 =?us-ascii?Q?iZTVDgRGHQdEWfuAixqhdPiLgx3U4hnlmy1f9Mpo179s7v9jkkv7wlFlx0+j?=
 =?us-ascii?Q?FE34Z2EXcpPuMwM22YRxu8215ENjLfJ5g/YwGNEpXSEF7w1eCUldZADGj98T?=
 =?us-ascii?Q?ZCelz8JSNj/tCyRFx91JI51j//7AwXK17fXFfoj4kWW+nzOn5WwZEETbZ932?=
 =?us-ascii?Q?/48yH3I68NimM/7Cwgpt/lzlnAe84FMA/fptspe/Pb6wlfU5kPp7+Zd5yEjq?=
 =?us-ascii?Q?CixbqiUWUQ1AXROlGIomZwsX5S6yEB3aCsuLAsw0rHHRzCMqu5wR/rjJEo9D?=
 =?us-ascii?Q?0gy75TokCOA5BmnnA7XKW3Cen/MGY0/svFLioE9tHhgcTfszmYCipUDbM+Sx?=
 =?us-ascii?Q?PL0gUGqstK9Bl24XTvLWlvLL5u48R+vjoCl1CpuRLvpIg1BC5faeNTrpyScs?=
 =?us-ascii?Q?rM8cPpdVJIw22IGOF3ElcC9j+wVpBHRD1pJQiFFwi6cWQxyTu4eFnNmGISVO?=
 =?us-ascii?Q?VKauPzFi8ghaY0DShUBFwLtVesIZ47yJ7OZvPXjr6yGIvDXRu9pvKxSg7sz8?=
 =?us-ascii?Q?LkgBLWr3WGkI/y3rUzXAG3vpsh9mZLR/mIr/6Bh7xIpEz+a2oWoozvdMftiY?=
 =?us-ascii?Q?J5gnNmcSgYCSoXB2fjciO21+VkIdPX5hqtJpRIUmEnuufyV9WyK02p+LYCxv?=
 =?us-ascii?Q?JATqQw7Di92T0b+A/z6n72Pzkfw0t2JXkb9uRrf8pP+eySuldot3KcWTD11t?=
 =?us-ascii?Q?LL+rAELpf6Y+ICe+JXD8FtScLmFhzKWWOhYLTaYp3691Txb/3WDC/IqyFFIp?=
 =?us-ascii?Q?QSoATGyZ39UdJDj/pKCCOBcY2cH++DrYZqdo8GRY1mKN2nIL9eWbQhIatKWC?=
 =?us-ascii?Q?VWUNMl3lXq5F4SKEcma8bXGGl77CFYzA1iAqJHRccPYWvyPwPsbjzDsHjRwS?=
 =?us-ascii?Q?htYCI7mt6JcyBOEo/SfDprn79pnq9ibaD31swxRqUHhLZfatxyIw3TuHw83l?=
 =?us-ascii?Q?QdU5ZKDIlGg/dAxnGaNnEFuu79krcQu51scpEayytxcTwdU//N2+6xbyE0gp?=
 =?us-ascii?Q?I8/dGNjJKuduTFnQ9xFKZvLyHuKw0nsYMeuJaKPA0J3g5UDhqiRIhMf/OA/+?=
 =?us-ascii?Q?NUT30tboz6QBC6FbWU1T+AtDi0573Q9c/ZArkfL9p8jXCvmGw+1n4urPdt0R?=
 =?us-ascii?Q?UNy85OeRMXrbibVG2v/3GckKH8Zjhxa8LBalKyGjav2rTl8pw5cHQ6dgpSFZ?=
 =?us-ascii?Q?MKia2HDsqpZXFapKj1VlfsrZ8b7eq28kbrIw/H4q+JumD2K6KwbmZC+6hctd?=
 =?us-ascii?Q?3vwvD/QQzvsFMFPukpm0r0Rwv9nPM7Y7sejcq4Vpo2ResHn809CQ6KoLh7us?=
 =?us-ascii?Q?yCQRTQrER4KwAl0F5r3vxs84LM2HrOghrqETRJatIhucsZD9yliaG9NJdgNw?=
 =?us-ascii?Q?8t/SIlsEpUI9wAv2AhT2dDhNIT8RkLnP7EHghReCJuF869szf02h52yn5n8A?=
 =?us-ascii?Q?EPNArjc+80+dlap3hGt0vAIm8rQmXD2/9lyFPvcV0THnclVBjoBVB2Sl8kLy?=
 =?us-ascii?Q?LN6fFrcBSYB/m2Iut4XDXaBvY567VIhOph7hA5Ybx5MBHzw67QAgTij6YguQ?=
 =?us-ascii?Q?0kd/UvDcZbIB/dO+ygjNbE3N3cFKtA8=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Jq+4Jw6QJuS3JpRpfEw2yf+X+IxzNDsc86UkRWpVMf42Ed4vZ2wmtE67UNWhk/5KKQTahkqEJT1tLQcEFTvrACYbMhDl5Cz/iH9m7ENoB+CPC8jBCpX25GDhSU3bnYPxq24QsEmQg0gbi7DTC5tWjX3yFzcq0dR3mFQec3AXGa27IT+JRPVJzphA6AcHuE3oZ4Wj5xB7zMcdIovyEljHhDdc7zPCmH5c1cbzgyvr7jyQQ9wivMqkb3H5R3j8JK61WvCoIP3qRzu53VtXon7HWzGbhLQAXDuCOf2FJfnORuYIrJl6uUsoP0UsfXkXEDKLiQSS5PXRrYp7JXC1m6swTg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e16c71e7-66b8-45d1-0d3e-08dea216329b
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2026 15:28:55.4775 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9CUjsDRFod/DfS/27MyLduatzDMG+m8uMzgwn7iluWBj4sm+0k5ST1FGYzp+liK5eY/LBnL4leLcj9JjNVscBBuPuTWiAAI/KWm/aradqa8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5183
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777044545; x=1808580545;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=wVcnGelr+jrDfoWBYUAIPzBTzNA+s2WdjXM2fkOg5gg=;
 b=VfsEYdNmET9EOg0l7MDi+hc35egnUHpoaVLjG4dncA2ObJRzVe8TmdWR
 pW2el/QjBdnt8/yFq1r4EuG8kfk+1uM1znlmk5BrTRRQB43qME7ELoAdg
 oJy7ltspwNfY+uJ0V87Pa0Qc8N+hkC0G6qQ+7OmEzQOMusxV88YxIejxV
 ngfwhxDQa0qIz1KuxMJ0zaeXezNm1iSblx8FkMNCUdXy71SE1XSgrN7Yk
 ruzlcfTOO+zsUp3pw3apzuOxWrrqE6iCRxytSsi9M6Sag7ENwSU6OlBp3
 2BbWzPDJLVl+NSYBihEhGIaAMvLTQsvHymcHeZuSsJyMF/IULWOvaKn52
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VfsEYdNm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Cleanup PTP registration
 on probe failure
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
X-Rspamd-Queue-Id: 9EC60460C72
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:tactii@gmail.com,m:intel-wired-lan@osuosl.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,osuosl.org];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,intel.com:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Matt Vollrath
> Sent: Monday, April 6, 2026 2:59 AM
> To: intel-wired-lan@osuosl.org
> Cc: Matt Vollrath <tactii@gmail.com>
> Subject: [Intel-wired-lan] [PATCH net v2] i40e: Cleanup PTP
> registration on probe failure
>=20
> Fix two conditions which would leak PTP registration on probe failure:
>=20
> 1. i40e_setup_pf_switch can encounter an error in
>    i40e_setup_pf_filter_control, call i40e_ptp_init, then return
>    non-zero, sending i40e_probe to err_vsis.
>=20
> 2. i40e_setup_misc_vector can return non-zero, sending i40e_probe to
>    err_vsis.
>=20
> Both of these conditions have been present since PTP was introduced in
> this driver.
>=20
> Found with coccinelle.
>=20
> Fixes: beb0dff1251db ("i40e: enable PTP")
> Signed-off-by: Matt Vollrath <tactii@gmail.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 926d001b2150..f3de147aaddf 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -16109,6 +16109,7 @@ static int i40e_probe(struct pci_dev *pdev,
> const struct pci_device_id *ent)
>  	/* Unwind what we've done if something failed in the setup */
>  err_vsis:
>  	set_bit(__I40E_DOWN, pf->state);
> +	i40e_ptp_stop(pf);
>  	i40e_clear_interrupt_scheme(pf);
>  	kfree(pf->vsi);
>  err_switch_setup:
> --
> 2.43.0


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
