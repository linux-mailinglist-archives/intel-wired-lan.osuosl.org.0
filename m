Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A60B0C739
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jul 2025 17:05:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C058261093;
	Mon, 21 Jul 2025 15:05:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tiwxAjcdQFTr; Mon, 21 Jul 2025 15:05:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 14EAC60E51
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753110337;
	bh=r1I/Qlis3Hiifpv9jqa6lQuNchCwc5Bt+yt5WDVefus=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gxa6laq7p4CpDiX+BOlvB7okHKivgC3Jc5yiq0VzWoNGUDKfBrbIaHyvFxf5aYNLy
	 Lmq2vdkNRHs3EGSjH/bIzA0y4XeHizS4ZqutIbEI2oz89iabsq7TrLTdKPR1tNLTRQ
	 KzpUVthn5HMooYJAQpvJCVahd6DUu+JeGzCS/cpbiixBMW4DdUvKofJfoPe6NecCY/
	 F7CfXyuT/KTBpZmmDvHpVMN6JrB5O+v3nF7PiyDG/w/KzcQkq8ZZS+wRmNbWkbIEIl
	 3VzlN0zdM+BOAXGpy8WUSqGnp4ypQ/YKmZaSPXuHOb4DeYQxLBlPXOkztr4mHtdU/c
	 VpAa9yuUQfWqA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 14EAC60E51;
	Mon, 21 Jul 2025 15:05:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9B6DA127
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 15:05:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 80D6E83AB4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 15:05:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UI_djdoTtDRm for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jul 2025 15:05:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C187483AAB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C187483AAB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C187483AAB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 15:05:34 +0000 (UTC)
X-CSE-ConnectionGUID: W5YWnIJoRxSlc5gFF1UbEg==
X-CSE-MsgGUID: 5MmtFMiPQBSJkCtyA/C1gw==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="80772227"
X-IronPort-AV: E=Sophos;i="6.16,329,1744095600"; d="scan'208";a="80772227"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 08:05:32 -0700
X-CSE-ConnectionGUID: m+heYQY4SGGW3t1toQViAw==
X-CSE-MsgGUID: oB4d3xmxSfmXfCJd/PN7uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,329,1744095600"; d="scan'208";a="163160365"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 08:05:32 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 21 Jul 2025 08:05:31 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 21 Jul 2025 08:05:31 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.83)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 21 Jul 2025 08:05:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K0Cvq3lrd+XFVAUqdEF3tgJBD/IFY8eZnefZ+EfnCbYLoEh2kI5zaGxoBvPCrnoyiXufm6KAUrxfm/dMX7n8obIu8PDZYQG3BHeu8hgcG/TBVBGMiK7BP2AIaakvre9ZHtfBH1kEZvR2kQyuTmDQELMsnRfc+eisad1ZhJrzDFaUykjHZ0hB1Fkcyy1yRJ7NGBnY8wYL1QWA1+kW23sxuaWprzwR0KjAknBePpUczvajRiBFoU5HFcxYhoAcLumVGwG8oRSqoFA8z9/g03iHjUeqd5Fb3pmZY9HVfKMaMvQ4rG58jHmH8FOzcRClR6eLzbca/bRgN1PqPKi+c1fvDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r1I/Qlis3Hiifpv9jqa6lQuNchCwc5Bt+yt5WDVefus=;
 b=jP6El+GvdI0x0AAn7wRNNQB0iIuhNXGA4XICAyfHFxIpMv8QL3UkMj+iFSU9R/xmHOUpuBIL6N0vvo6TnxJIVlxP3ggHX4ua5EdWzKlCxORHu5YG51kZF5fG8zkOCADXXvLO/Y4SW8sh0N1FIS9yAyTJcY1DazKPgQXhOQo1CzmvpXc+Pfvv1fokovBhbU2khypbaAk3jNIuLlVCt1Mq9GpjTD8EgWxl8StMKwjVc0VXMGP+wfYRmgdftSj68Bg3SXJzd1o789FHBk1jR4oqNHWcTrnSnSVTpjg7PXuPJPnj/cNAIHsR3HhHcoUUVY1/e/FgKsPab7DQnfHnf6sZlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS7PR11MB7952.namprd11.prod.outlook.com (2603:10b6:8:eb::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8943.30; Mon, 21 Jul 2025 15:05:25 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.8922.037; Mon, 21 Jul 2025
 15:05:25 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Hay, Joshua A"
 <joshua.a.hay@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v2 1/6] idpf: add support for Tx
 refillqs in flow scheduling mode
Thread-Index: AQHb93j6TBcyRArqsku/XoK2X2SP4bQ8spsw
Date: Mon, 21 Jul 2025 15:05:25 +0000
Message-ID: <IA3PR11MB89867C82DB5876112BCFDA44E55DA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250718002150.2724409-1-joshua.a.hay@intel.com>
 <20250718002150.2724409-2-joshua.a.hay@intel.com>
In-Reply-To: <20250718002150.2724409-2-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS7PR11MB7952:EE_
x-ms-office365-filtering-correlation-id: e854f0c8-ecda-4035-ce84-08ddc86805b8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ZVtZYTkiYilDv/rOoWRuTHRvXJaJl/w9x/6o1eRWivBxVj/Rs1gseSCz84uS?=
 =?us-ascii?Q?1ba4fydjYLddh+1X2yjBItNGpRgKOrUgrIdiJZehNW/YVTtPPLbF4+IDgrON?=
 =?us-ascii?Q?TBfxEvwKU7Yt9KZ4khVme/LPQAUrZrnmS+0TJQUgUCqYF6IK4lwBEUhH2DSr?=
 =?us-ascii?Q?deMlk6hjsGOnQfN6La7rVKT9dNRdl6+nU1ZWz+lVdcU24wHlpH3W4JuTEVAT?=
 =?us-ascii?Q?Swu94KXXK6L8FLKdpaLJPWkw8tLKqK6WtrrKZMlAh2fH2PWOJ6Ejp4VRVCdH?=
 =?us-ascii?Q?GdPkrgvyYEyZkR+5nb8HcxzONuehU7W3fUoJZHuRBqVWkUoCHhFJleB4Wh5b?=
 =?us-ascii?Q?Mgx1yCJSO2e1TXd0sIUZMP/nMa3Q/fwATV9nQ7n+a+V525pH0Fzn8H6JP22A?=
 =?us-ascii?Q?9zDFmWPCCtxVxpPQYq8AMMKJM3WqnyYc0z2TR8AEgYoCPs8QGzqrkUhUMd0h?=
 =?us-ascii?Q?RiLpNUrTtrxtTyxaSrErbtOE9FBbsftQrjdjMUhQTc/GJZYNEjyUGzCxvbax?=
 =?us-ascii?Q?4a06C4OpADoxq7mVL7OSJ78IpciZcoOxKpWK5tiWL+ejUaQ81DsZd918xydl?=
 =?us-ascii?Q?B1X+gG7WhNm19iluS5gzfode+09SB7pPrVQdHPqsyUzK64IAvbAnyG6Y0eS8?=
 =?us-ascii?Q?vwJAL7zj8drGfcpExwMLy0JcQrtLCvyBv/hc5uqgVxcX/BKxutbg4LavsW1C?=
 =?us-ascii?Q?GlYEW52yRAqEg1uJSIKxTRf6iB5SDUVe/KN8IENN1Yh8ksbJeEcrv+vK4Rdy?=
 =?us-ascii?Q?eccJbBKuueePDTg1Dac42pqu/Aserk+/LZATmXh7+z1jJb4Vm/EprusO01fH?=
 =?us-ascii?Q?5beP6ry5ZbXRM4iZ+aUGFQJfEhU8hH57AjRIeSDZAR9t30cw+nPS+pbBM6Fb?=
 =?us-ascii?Q?j1kHxv7SLOZiVif2ILkrLzZuEnqYhzPc9UxGza2m1rE3+zp6dLWaneUGH2BQ?=
 =?us-ascii?Q?ej11TD2Ns7QxAXmyfO42Oo+CG0oq3g4C28S8TtYhlm8jR6EAFsBfCIdIcXI3?=
 =?us-ascii?Q?dIKk7DqTjVt498ZpfHcfSqVLra8lBEXvamTIobTWrlKt7LQHAEQ/gDJP5kPM?=
 =?us-ascii?Q?0cTjra1HB19hI+3+Hp+QyQVBrRK9bPBJ3bZoHARmrrpcl6f2zaYPrh/+5D8B?=
 =?us-ascii?Q?EMJksuuC7WDLe6Pg7M023icy7ll/89s/f+2Bv/97P00rXmhS5nooC0qsWHk/?=
 =?us-ascii?Q?m5y3xXeuL+EjvER22iAZNKU0qNEBuA4dNJS7owz9uGPciLJBiOA0H66/wILw?=
 =?us-ascii?Q?jFVnkwvlRXp3atcq/HPx7iz8Zf/4E5UPJipJpx8dtYJEOTDR5vz1PF0/RO6P?=
 =?us-ascii?Q?k2U8pmKvvqd+A1+Q4/Im+tZIKF/mlC4h2OawepeDu6E6xAnegbOQmlm5yNo0?=
 =?us-ascii?Q?R8MK6XmKwyPaqMNhZpZC9UG04TB3V6VNKm5GidBvxQbGSDAxsPhoPWdQvfbX?=
 =?us-ascii?Q?MdEeOyvZ/1CNrLw98QKLwmHMf2PJSx1T1KUA75rJfEFvFceXaF7tIBuXYMnk?=
 =?us-ascii?Q?mTgw68290rM/rZY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ix/FjrXzdqogonhgdFqW6a1MVS67CJawJVNWCpIOkvr82r39l+E7o8P88Dlf?=
 =?us-ascii?Q?tF7WCjgl1uGsqZGobky+DMS7O5pgjCVsOUOZe+TNjZLZlNQRBoU3M9ArsM1/?=
 =?us-ascii?Q?rP6kguzJI9xdjVIilkTJXi2g6y+IdkexKauRFN4sWX4VaF2SZRlEXfAkfP4Z?=
 =?us-ascii?Q?Lj1T6UwNd5TIxQlSFeCb182H0viNUGhFNWB+udVvLh5xbLMFaUCNJADMPGES?=
 =?us-ascii?Q?SoHy8KzMrshDA1GZ196f3FB4sxT613qYJDOc0CkSXF0j+fJOn1Y3s57QDY1/?=
 =?us-ascii?Q?TfqVqprhG7I5jEtVgj4XpGA/Yz6CwJm0giDmAIUMOpLupVkBaEmyoDFIdDY9?=
 =?us-ascii?Q?6MSm2u0TT53DA5t9DXdoqQOIYoPREWxp9J7CKwf6Szj5IHAO3G0cTLMberHB?=
 =?us-ascii?Q?eV69jR9/wOa45dkuk8BA8Mh3kMayR5+aG04+uQ2xQGGFSlYaQ9MkKH83AiXu?=
 =?us-ascii?Q?LRVZ4bdhPk2X+ZfoYecSvMt2N4orkJGBNTQ/VyuJKMaLQkkzg+FWDRsbHj2u?=
 =?us-ascii?Q?f3LgF22E/Wx1Z+IARodd9kc24W+Qfnjrok0DA/i6IrICpiY1FkpESrPh4mlp?=
 =?us-ascii?Q?LRiSY0mE5fbTcKwXiUYGw1hN3lZml5qBcUPvanX1VCvRqMiFZNSM8MQPv6SZ?=
 =?us-ascii?Q?HWH2ceuXo0FLj9wUFfXUuWgZLUS3mQn32zCaeTya4sc9+aILEe3OsC6tWQhQ?=
 =?us-ascii?Q?z6xtDsyNCDNbmgCCYBcnrBovhiBnbYeULhv2QOjtx54EDGpageDFR5hdiWD9?=
 =?us-ascii?Q?IIgq3OCJfTlGUBt8ectkOgmmn3qbgy1uXk4v6j9jOWiBIl8jUMuoZgvHB0tW?=
 =?us-ascii?Q?gNT1E9R1oGPM4gBBzKf//pfjwjeH5uAAkV93FWH5jmZ+Ns9vMWEAxMEM28Xn?=
 =?us-ascii?Q?JC5iKVOGCD/F+kz9s2ngwYcr53K0cxzCJBSd/WObcE+VIZNJdvbpUgFeCAdG?=
 =?us-ascii?Q?1bAgpvjqPccCaGbrLhzXS1btNsOg3smsRfjNwvBX01iTPlq5I4uqZWpkZEcI?=
 =?us-ascii?Q?cmG0S45ew/R3tvjmiEX+FZUxOT+oy4EQpzy/JXXWa7LkIYXCo/mdI3gx1PBP?=
 =?us-ascii?Q?+YuGMx8HtXb5EzQBiJRHcogoMzNsjn+ZKrjhYRHsTzQ1NvcX9rifeMSCU+TA?=
 =?us-ascii?Q?NNBFWC4xdueOvc28r7cRp3bQmj22e69Ws9JNMjVRcd3Z/aY8U9IdNVLXiEh8?=
 =?us-ascii?Q?+LSaDpoI/QNVm+gKiqLEHFg5aQallxAGQMB80OIoC8e0WndRpkzvzbdUW2Vu?=
 =?us-ascii?Q?DpFirYXoNZBTybdPBRoyqXVIOgIcqvXEE6Da4JOiz/1ZuabG+1GpRa/2d2Jm?=
 =?us-ascii?Q?LzEITpCCrRtSSd18bLovMkG/61jzkKqIRL26ET0k04hFh9I/EGJnQxUR+nAz?=
 =?us-ascii?Q?vlupLyP3mpkHhczsvEGSWiXbBlpvuLijLStE7RAUaQK58MfWVuXar8wGRH9J?=
 =?us-ascii?Q?lu7s7xoebZvCNVtmcFmzT6P9aTmipL35Aqva7jnAi5waXcY9RpV55ReSEmEO?=
 =?us-ascii?Q?4/oVT6T4zdhOSeS8tuiKnRufCQixXR0t3m1+GKMezK9js7fG4zN7qIprA82W?=
 =?us-ascii?Q?NfcM4esPJCQ8mSPCN8cs17rCXC44CV84Mt1SCEMWVWODuCQoJiScx5QFYfD+?=
 =?us-ascii?Q?ew=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e854f0c8-ecda-4035-ce84-08ddc86805b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2025 15:05:25.4227 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cVf1hN1fgTeb2lLgReHSI+Y7q+tEH7xyTy7TA8i7gMLLnEv2I04fJq0JE6fEuwYtA7NBVddKKj9UW2Fl7BCW4MKNhIs9xbtAxvYNSunAU8E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7952
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753110335; x=1784646335;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F2okP9yjfuJHZd4pY7ass/keiv9Kud1xkhGfpKlQSak=;
 b=PNuE1Iq1Ed0dLipQLriFn6ItZVfm5wjy+7JMfB65XroPJBWVCRYQhiY/
 j3BEZpfP0/Cv7d7V4diCj54HMRBwmmZwkjBCkFPQFVjG/iSim4OXllVpp
 yGZUcfchI3PvbB5qwEDRIdQiQuy6fQLV0vavd2bD60E88q4IG3HgSbNKp
 ZkaUVtkUN4H9eySLnXVlTcmgo1vdT/PRsl3GIdqnLfhSPaAP1uKVVrC4x
 BdPkNwmPIOI+dZa30VAO2qyoe6d2VQcDtBWMQIzzN035G77IE25Nm3OAQ
 mhmzqRxazU+83rV7NXVlmePdGoNtuEHTQK2IiXnfFFkQUn6qY+b5VYylK
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PNuE1Iq1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/6] idpf: add support for Tx
 refillqs in flow scheduling mode
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Joshua Hay
> Sent: Friday, July 18, 2025 2:22 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Hay, Joshua A <joshua.a.hay@intel.com>;
> Chittim, Madhu <madhu.chittim@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2 1/6] idpf: add support for Tx
> refillqs in flow scheduling mode
>=20
> In certain production environments, it is possible for completion tags
> to collide, meaning N packets with the same completion tag are in
> flight at the same time. In this environment, any given Tx queue is
> effectively used to send both slower traffic and higher throughput
> traffic simultaneously. This is the result of a customer's specific
> configuration in the device pipeline, the details of which Intel
> cannot provide. This configuration results in a small number of out-
> of-order completions, i.e., a small number of packets in flight. The
> existing guardrails in the driver only protect against a large number
> of packets in flight. The slower flow completions are delayed which
> causes the out-of-order completions. The fast flow will continue
> sending traffic and generating tags. Because tags are generated on the
> fly, the fast flow eventually uses the same tag for a packet that is
> still in flight from the slower flow. The driver has no idea which
> packet it should clean when it processes the completion with that tag,
> but it will look for the packet on the buffer ring before the hash
> table.  If the slower flow packet completion is processed first, it
> will end up cleaning the fast flow packet on the ring prematurely.
> This leaves the descriptor ring in a bad state resulting in a crashes
> or Tx timeout.
>=20
> In summary, generating a tag when a packet is sent can lead to the
> same tag being associated with multiple packets. This can lead to
> resource leaks, crashes, and/or Tx timeouts.
>=20
> Before we can replace the tag generation, we need a new mechanism for
> the send path to know what tag to use next. The driver will allocate
> and initialize a refillq for each TxQ with all of the possible free
> tag values. During send, the driver grabs the next free tag from the
> refillq from next_to_clean. While cleaning the packet, the clean
> routine posts the tag back to the refillq's next_to_use to indicate
> that it is now free to use.
>=20
> This mechanism works exactly the same way as the existing Rx refill
> queues, which post the cleaned buffer IDs back to the buffer queue to
> be reposted to HW. Since we're using the refillqs for both Rx and Tx
> now, genercize some of the existing refillq support.
>=20
> Note: the refillqs will not be used yet. This is only demonstrating
> how they will be used to pass free tags back to the send path.
>=20
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
>=20
> v2:
> - reorder refillq init logic to reduce indentation
> - don't drop skb if get free bufid fails, increment busy counter
> - add missing unlikely
> ---

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
