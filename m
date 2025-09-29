Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6783EBA81AF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Sep 2025 08:26:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7FE6A80F91;
	Mon, 29 Sep 2025 06:26:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gf_UUK1w1z0d; Mon, 29 Sep 2025 06:26:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6574B80F90
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759127206;
	bh=dj2iuTnhBsPItLztB6rAgpQBl66CRBi/fQRIqHv54Bs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jWbV9Q046+hqce6iF/Wg2Ti+KmINXSTk54VSw7vOZbgaS3w/nsuOdXJ3wxXJx0A2k
	 vMc98IYrZG62LY0y6UZ/uTLDZTZZ/I3IBNKlJM5h1TSCo+qrBFDpdWom3qC8L39tom
	 yMcheEInfB0xlZSxqDtEZy1Rlla7HhN6xb+A1+QNGe+7r1DcrQapHiQxqryTqydn5N
	 OQ0GRE6LHPNJ4oNQu2uqtVfl/8Ya28ZPPcUhRN9dFKXPh2leQD7p92uyvNtlclqw1b
	 dWUsCHD/d44DSqIRz+5zYQfscMKz4pBsNTT0TPeWqUlOp1J29rsqCzx++FIFJIh7Yc
	 hNRHeCbLd61jA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6574B80F90;
	Mon, 29 Sep 2025 06:26:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0951112D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 06:26:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0698B60A44
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 06:26:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bqyCQLkYURdh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Sep 2025 06:26:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 098E260A3F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 098E260A3F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 098E260A3F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 06:26:42 +0000 (UTC)
X-CSE-ConnectionGUID: QDPRN+2MRmWPxf8TKcc/Pw==
X-CSE-MsgGUID: x4+oU6AQQ7Gle/VjWkl74g==
X-IronPort-AV: E=McAfee;i="6800,10657,11567"; a="61072746"
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="61072746"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2025 23:26:43 -0700
X-CSE-ConnectionGUID: D3vDCAxZTaK4VbyGnZM0KQ==
X-CSE-MsgGUID: SbDuAOtjR+io3aWF3kAC+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="208881294"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2025 23:26:42 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 28 Sep 2025 23:26:41 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Sun, 28 Sep 2025 23:26:41 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.43) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 28 Sep 2025 23:26:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uCYU344t86Wh2LC1V5mM+73XJ24yPNmmEM5xnZTNjq9Pj3wNY7mAIngbKk0qcF0eMhpPYBAR77/lVLszjq9J2fmKzruzp3geL4/LxfRWlfVKTeObUnOJbszvpLpfqr4rRzpNd7kN0UxX9mCli//Cz+kOO+cA/Ch4TQHE6RG/B7jfQgRiH45xS7DYThbwgAX2IcjJTFSt6fm2QSzZtT5vjJBwgvi0jNsxLmdjoyb6skysa5+x9FXC9Cs8kfD8x7FOlmdwULp/DIU4TEW5YUrYrIAO9VjJGAQ04x6wydQHs+OAwogqtjFE2pu5/APsqme87Qpj8IFKDKz+TOF5q9rJyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dj2iuTnhBsPItLztB6rAgpQBl66CRBi/fQRIqHv54Bs=;
 b=UZF/EYn8IqT4t+1Z0h30PoQj2jEstMKXE9rkVUNRk2zOxW8jXMkqbQM74djAqbi1X0PHCGTp6Q4RGe8Km1rsIdzZbWG1zuEdI/eIaCusDvbciZbGiAji5t9JXvxV0mguQo8KCVhad+oJkLoM+LRMkSA6G/KiHm1J80Umwt4GYalY/Jm0jcDjqW0g+2ixzS2izISZiu4kJ2t8w6xI35WYYchODWsOKBja+Fgh94TKHbHh+AaaTER1gEx8yDPpQOtZ4cmoxsewC2ytYjWMBngKVfmZ6JyA0KLO0bP9sRzKiNZLIom3kmC72p0TMweMXChjNcitJGW2wr6ABSIm4pti1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CH3PR11MB8384.namprd11.prod.outlook.com (2603:10b6:610:176::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.19; Mon, 29 Sep
 2025 06:26:38 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9137.018; Mon, 29 Sep 2025
 06:26:38 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Chittim, Madhu" <madhu.chittim@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5] idpf: add support for IDPF
 PCI programming interface
Thread-Index: AQHcLxbJoErm8OJD40+9a/e17cUiobSptagg
Date: Mon, 29 Sep 2025 06:26:38 +0000
Message-ID: <IA3PR11MB8986359A7987D84D5950113CE51BA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250926184533.1872683-1-madhu.chittim@intel.com>
In-Reply-To: <20250926184533.1872683-1-madhu.chittim@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CH3PR11MB8384:EE_
x-ms-office365-filtering-correlation-id: cae9647d-9efa-4da5-7597-08ddff212567
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?lavfgLeb4Pch068yLxVobkDds8eY78lmdmiKYgwa2axrBA0YhUl0u4LT0HPz?=
 =?us-ascii?Q?VGM3pY/TlkLziEiCcUYX5Qy5Il+oWZm6mabAOBb2MtmDDC8Rckkktf6jcd3u?=
 =?us-ascii?Q?nFs5Ui001vlZA8ow8PxU8hBongLvBg59ZPApXM6qUWmcno/5eUrYZlVeCthL?=
 =?us-ascii?Q?cB0kegzMvV02rQssx2AicW5TIU3n43nhzj+3yTJXe427e1Ne5EFCBOWmtq0g?=
 =?us-ascii?Q?8EK3NXLEdOegASSlDqsa3xuBBfVEDt4y5lwVQU9xrz16cCpVFKrCZt5UmTNw?=
 =?us-ascii?Q?c/Ixc5V6oyRCxcX65DitY+58g0Y0EaPOZsz6ZkiKCg+cHgK+orKhEqnBHbt3?=
 =?us-ascii?Q?czBQ/dFJ8EDZ8PtJcwyfUBcbV1Pj19VhDtf88KrqqJoux9JWu9BmYtLTbT/f?=
 =?us-ascii?Q?MXoxqjMtKZDAYJLFpVyGa5ypiz9K4HRRztGOkth+8+TaImZCYwh6d01FDCVT?=
 =?us-ascii?Q?+wLgOdhyYg7KMmPyDCUhFZWl9PJYnNrwIKfmgPjhgfhmy15kmSoNAwxjVzbO?=
 =?us-ascii?Q?jufXArviB4H5Pb2X2DefN8wlDY2ysqqoEFG1jykdFkA8CKzHn3nV2Xarvvvj?=
 =?us-ascii?Q?AAcATJRcGqacox3MreKcw5Ygp+3CTS2vLNGCU0M3emwFgP4lGYnVGpJYVZIP?=
 =?us-ascii?Q?iAaeU8Y+oWeyqkBcT5jzOwNbWUaSti1pfiRaFRsshJoYjazwTuGfMpvMe/2G?=
 =?us-ascii?Q?C58LuU5MLpwWZEs2n/79pU/dvikh8bj4Lu1jZWtIH6OIWibwKbt6jqKnst4d?=
 =?us-ascii?Q?fSfwi2VWZn2PK6htW/ihTlwdj5Uwqw391umjmZYUznHcpxBdy8zYZ+Oq6b7Y?=
 =?us-ascii?Q?e/peQrzY56fQmS9otHBIjg7LfMJlRQs/2cgUPWxwQ7kxy+iHPUtDM2vRMGMN?=
 =?us-ascii?Q?Uzmy8q4wA4KTIjJw5daLg9AwnF6zCSEmhR5kN4lg0FOAzUwinDuC7HgJOR70?=
 =?us-ascii?Q?6MnJdrGv6mx9XdRho6KWZL2rY0BvEIxPDNvGqDtg2YKHXQKDO+90UkQ2WNBE?=
 =?us-ascii?Q?eYnK/05VGYqpG2otwJ/Ru5s9BndkOuo1wu83GI+68q0xfuNUFXs8oiBiP5BD?=
 =?us-ascii?Q?6c+RP1LRDy1A1mY/gkY/65GzKAYdNvrHNpG//MqZpkTIufSNIvaCqayS5s3w?=
 =?us-ascii?Q?u8gdm/WP9MS3H1Bsd8D2LxCGUECciiCfGTUzofrAUrMnM9P8WHsNvIHnN48g?=
 =?us-ascii?Q?ZBLkFrWOU3pK6DoeTE+rtS8v02u9RjbOhnLe7cWIQWidrXFgba2PcNuQG9td?=
 =?us-ascii?Q?HCjyqkfnyHNfW0tk+piuh/dFSOfAxCG4h86AJkev5O0QzHGtFhGrzIT3t0mt?=
 =?us-ascii?Q?jRmJshzhxbqszP9R9bciKqpLDarRYy8oBmlEdYt/zsLeemhMI/v0fSYkFptm?=
 =?us-ascii?Q?5YQpsLkbaownP0UlDNW1LX7uhx0/vZLwMEbfEJpIA6ZNsM1ptGI+B5qPs1G7?=
 =?us-ascii?Q?zoampd/l9bgcGPna6yVt2RchjMHaSqMF+Ro+z6hCxqPdGH2Wy/evvw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?l1SZoDitgNO/sStUZFeffRXF2JaC4sMK8UYzeGi62YAWG1mYRvgCPyYgBRKo?=
 =?us-ascii?Q?ZYjJM6NwN8dQYJrNzEIitT14PZel6iEdOvmb2mFr8HA7i8E00zDv9H8//Zi4?=
 =?us-ascii?Q?EW6KynR/wk0nWkBOCiW+FWb6akHb6vTk0Mta53bSwWCr9V5ymCul9vPNj8tf?=
 =?us-ascii?Q?LJNbrwWWtyOhFHcsWadw6ogEtFbeTkxmGM7wQmxXpntzICY9v5d94/MSCdKG?=
 =?us-ascii?Q?kcCpPoy4BaVSGYEa1hwhTxW2jy8WNlnUb01ofdm5gz82CX4k9shUwFLReIF/?=
 =?us-ascii?Q?FLFUzcoxfMONWSorh65zF/J5kIpclDVACYnEOPSLMlNKmY5MXjzavG2gxV7a?=
 =?us-ascii?Q?M9f4W4ru4JM9jrefFuQQW8C7l8ltn7HX85gt3W5SmaLfCm+zj5g9HRR/MRnv?=
 =?us-ascii?Q?meTmDt3kmCxB9ipWUkja1nrctzDP1WkS7ezEcHZnmB6Q9RPNljULKVyfmFmT?=
 =?us-ascii?Q?jySVV41g7qTnkDK8dAPvLlUsSN5GmzZkZAFMyOEQ93LpbOj7HYDJVzt4IqO+?=
 =?us-ascii?Q?DhzqNo0ZDvQO/VAu7x41kbl8UuXosV70pBej0pSrEINlRQ5J/12g9QKKfurl?=
 =?us-ascii?Q?k3KzxD6Anlj9pazSSjEY1q6T9SGzT08bOiKfkLQiU3w7aDWI3hxT961rqUOn?=
 =?us-ascii?Q?orwAsi9CXaoP7cT4Q9WkvKmaPOKG5c/4BRX18atmECGa9Sqd0+M99+JCrLTN?=
 =?us-ascii?Q?rwhoKU7llbv7ioALif4uXbQIfuOv9xQQK4fNwzanZ1+zUMKPcNfAULN8BXd5?=
 =?us-ascii?Q?Qw5vFHckVrdjNOa2Z8RqZn/V6cvnCwiOgsRCc/uSvguNsetZJjQdRoZl8HoR?=
 =?us-ascii?Q?ve5dnwEArhKtfEV9vQ567AGM68wrnQipl044+MXF6/i5xTNzfPfWeSYNTOjr?=
 =?us-ascii?Q?gON20GOb4gXOTubOOU0s4hQQ/RkMOcKk9bdnW4/tytR62TJN3hks3r+Ccqg9?=
 =?us-ascii?Q?rK8iksHxNOPz9Cfw+lTY6Jn/gA9Fm38YC54cKyin4002QHxEHt1gy7SQqbxy?=
 =?us-ascii?Q?eAsj0d2JrVMJMi66FcEWLZuWtvbER6BVheal9EtCFvuau1HBOyYnPaG3nhBz?=
 =?us-ascii?Q?aisJmVk0KfNO6dr4oPMPBzqFjFy9csqv53yamLWS9IV6QnRaLPTIFMgwlLSo?=
 =?us-ascii?Q?TmKQKvEzoeg8lLonBosnUkkkPDJ8ur5/Cn2vIB5TXIhNLBt+1+YwNP93pHoQ?=
 =?us-ascii?Q?E8nK6yzrNS0b5BQZMArS+C0aSbri9yhPrUyMbQtcNCFV/sWoXqE8IwVaiN0X?=
 =?us-ascii?Q?JS2EEntwIp73DF3Ik1QE+hx5f83JyG25BHIwK5YBwovxVD96fe07ZFlwch70?=
 =?us-ascii?Q?nWkwUoQpsFRMtkq0ZYhPJi5CjVdSnYoNhhuNjcU4QbncQaXm/fKaZOfIQs0d?=
 =?us-ascii?Q?1I92evLPz5ywCnH6grMjg/8lkah4vHwp9qEw9DvJ5c7LLCmRIlpGHGx/qske?=
 =?us-ascii?Q?yZCuM7mYc/JCrUUQ3Ddmb+OqL4rVhPqJ3yLKOrVrilyWx7eS2vdNEBNZ40XV?=
 =?us-ascii?Q?y+pfUGuHwuqVYflcBGRmH0wjpT++cP2/xadcmaDo2iWp591r0+FM71LXP7Lh?=
 =?us-ascii?Q?oueDxleHHEgZtwrqI7APecmT4F18nL0ZrGMX6WgjuQFLRvFrVvvWiVBF7QVH?=
 =?us-ascii?Q?/g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cae9647d-9efa-4da5-7597-08ddff212567
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2025 06:26:38.2419 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xwr9vaw5p0UnuJkTuE+6ifMDe2mlvcntkbdY8398qDvG6vAfjJ54DYabbgp5CBL7vDsjBSZ2vkCR7ROMoH04YH/eZFnx7AJswrNlMzzbKm0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8384
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759127204; x=1790663204;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SigrAIHBj5Nhl2Ugy/P17YalQLN0h2kGxY15X4U9w+g=;
 b=ESOawzW9TiQZFtXcDfwrHSWVwiywBW9eJc/6FgPx/Tbe4IruSLhCEjIH
 kJ/AReLaFkUNoULpqyzLFig63Lyp/dYiRCOxwnXGl5cNNEGZOeMjuoYTy
 UYjZ6v9kfbQzHoCCu/uKmlndXcXEeC+eMu/VQCb7Fa3bAhsViRaYJyFYn
 8ibQdgXZ0/u3gDV48wMiGSPx4Sp0ZZ0Vo4onn983NVB0fdV45uIvx92/k
 gcMieKm3Sc6KXwLABfBu99YWinWFmdkE4Q5lrJc1eSnpB4ctS+6N02bdO
 MDtI5BiyzElYrjJMilzjrErPxHSs8wXM815lfVKyn2dUFo9MdaVPDjbbP
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ESOawzW9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5] idpf: add support for
 IDPF PCI programming interface
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
> Of Madhu Chittim
> Sent: Friday, September 26, 2025 8:46 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; horms@kernel.org; Samudrala, Sridhar
> <sridhar.samudrala@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v5] idpf: add support for
> IDPF PCI programming interface
>=20
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>=20
> At present IDPF supports only 0x1452 and 0x145C as PF and VF device
> IDs on our current generation hardware. Future hardware exposes a new
> set of device IDs for each generation. To avoid adding a new device ID
> for each generation and to make the driver forward and backward
> compatible, make use of the IDPF PCI programming interface to load the
> driver.
>=20
> Write and read the VF_ARQBAL mailbox register to find if the current
> device is a PF or a VF.
>=20
> PCI SIG allocated a new programming interface for the IDPF compliant
> ethernet network controller devices. It can be found at:
> https://members.pcisig.com/wg/PCI-SIG/document/20113
> with the document titled as 'PCI Code and ID Assignment Revision 1.16'
> or any latest revisions.
>=20
> Tested this patch by doing a simple driver load/unload on Intel IPU
> E2000 hardware which supports 0x1452 and 0x145C device IDs and new
> hardware which supports the IDPF PCI programming interface.
>=20
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> ---
> v5:
> - Removed use of resource_set_range
> - ioremap only the register which we would like write and read back
> - Renamed function from idpf_is_vf_device to idpf_get_device_type and
>   moved it idpf_main.c as it is not specific to VF
> - idpf_get_device_type now returns device type
>=20
> v4:
> - add testing info
> - use resource_size_t instead of long
> - add error statement for ioremap failure
>=20
> v3:
> - reworked logic to avoid gotos
>=20
> v2:
> - replace *u8 with *bool in idpf_is_vf_device function parameter
> - use ~0 instead of 0xffffff in PCI_DEVICE_CLASS parameter
>=20
>  drivers/net/ethernet/intel/idpf/idpf.h      |   1 +
>  drivers/net/ethernet/intel/idpf/idpf_main.c | 105 ++++++++++++++++---
> -
>  2 files changed, 89 insertions(+), 17 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h
> b/drivers/net/ethernet/intel/idpf/idpf.h
> index 8cfc68cbfa06..bdabea45e81f 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf.h
> @@ -1005,6 +1005,7 @@ void idpf_mbx_task(struct work_struct *work);
> void idpf_vc_event_task(struct work_struct *work);  void
> idpf_dev_ops_init(struct idpf_adapter *adapter);  void
> idpf_vf_dev_ops_init(struct idpf_adapter *adapter);
> +int idpf_get_device_type(struct pci_dev *pdev);
>  int idpf_intr_req(struct idpf_adapter *adapter);  void
> idpf_intr_rel(struct idpf_adapter *adapter);
>  u16 idpf_get_max_tx_hdr_size(struct idpf_adapter *adapter); diff --
> git a/drivers/net/ethernet/intel/idpf/idpf_main.c
> b/drivers/net/ethernet/intel/idpf/idpf_main.c
> index 8c46481d2e1f..f1af7dadf179 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_main.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
> @@ -3,15 +3,93 @@
>=20
...
> --
> 2.51.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>


