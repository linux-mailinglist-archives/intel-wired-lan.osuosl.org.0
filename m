Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 709F8C0C0D0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Oct 2025 08:15:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 94D5241396;
	Mon, 27 Oct 2025 07:15:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UaG_ntGpHas9; Mon, 27 Oct 2025 07:15:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 030C54139B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761549343;
	bh=ndwJsq+4ZCJ3Z40yi0rmRqVxdTIqLNRut8G1K0tgG1I=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=d8aTyvhP2C6vPJ9r6B13XDoyti3AsYkdRDQU7H9A8ZOk+oOGm6BcjZulEe3E+bBM4
	 /Gm46470z60+hoJrZJo74uqpXB3TVG8bW/BMimTIcYy+PhHIu58h0jmNSR2KbHt/8b
	 q8ZIlvA/hW8EjYAMnE/QfqCYzykIAbwQumGD+9ubesYqEXQZf387ZxBmTbVTPBXDvn
	 iyApnAou1vyTOkAD9Tjw7PgVZAjfWJjJXu+RfdlQFq/+MSxztp3I+tQzewVJq0C5vk
	 k9rq420MARuTKrvvczZhq43m4lDX7F7pjE1HUErv0eXE8RCFe1oKf9nNWhCZTCtIj+
	 4m2sHy/z7tD1A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 030C54139B;
	Mon, 27 Oct 2025 07:15:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 02BBE15F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 07:15:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DCE6E60F8E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 07:15:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fYI4_zDhumAd for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Oct 2025 07:15:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2D12260F2B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D12260F2B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2D12260F2B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 07:15:40 +0000 (UTC)
X-CSE-ConnectionGUID: UM9PtNf5SAOb4kazZCaqGQ==
X-CSE-MsgGUID: QX8t4oeaSTWXj+C+Dd29jg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="51199191"
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="51199191"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 00:15:39 -0700
X-CSE-ConnectionGUID: IM3sIbgUTqubcCo2rUtnBg==
X-CSE-MsgGUID: TExgzF1xT8+93EeCvindBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="184870517"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 00:15:40 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 00:15:39 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 27 Oct 2025 00:15:39 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.59) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 00:15:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cETAZIT4Mq1981ao9CgfM5cbvmpHOujJd/HxHuwTm25vHhYAhpnfVQcOoQriGA76yKcWMhJD8M8PB3Iz0TgQjVnIQqcX9EHeV29mvLjpFeyYH5M7FLeRLD5xuudcfAtqA5FETwlUQzJGaOxbR7MKLaze+pVZzfAIiK75j0HAGFuTzvf/rFJkzhlJ0k7s0E7hNDjZnxa1M8k9bsXPg5SRWz/tPiAufgZ7gPBTxdlBjjE2vrFF6TMLlzp1l9L8QKgNz36XstcMcl+BsxIfCnXTf9Z47HN3X5eokhlIs8XS3X6QRDqvo2okCjVkOYS3Hs/8J5W10zOPYbYx52Hk4WsOmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ndwJsq+4ZCJ3Z40yi0rmRqVxdTIqLNRut8G1K0tgG1I=;
 b=IcGR5B6FqsxQqFnAiG8mPNIMS3HwKWG4Ea/PGs7zMcWu/v8gHCM3opoYiksh0W8sv1PbfonT52QC7MNFAKMJwLNflyrNhOcYxzQBDMXGPgJkkHZ/7y86XIqrV247/CJRHzTWOpXyN/5IfA6/40D6IpreqOnIj9iGP5eiG/HAU6Ns2jCTrM5wY2hM2g7ITlZB/CvDioDChNC4RSqcl7sW3wha1vl6NmmkGP7MRSxkNfFXVp8gP8E+hE9A7aJ/87+rI9pnhLBrGuNp8soLzGu1ucbEt4+nRVH6MyWrLa6073PkUP8gDT/oGryACLJyiQ8ZUyeZyRGZYQYQ0dW4hhmN1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CY5PR11MB6533.namprd11.prod.outlook.com (2603:10b6:930:43::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Mon, 27 Oct
 2025 07:15:36 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9253.017; Mon, 27 Oct 2025
 07:15:36 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <enjuk@amazon.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "kohei.enju@gmail.com" <kohei.enju@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 1/3] igc: prepare for RSS
 key get/set support
Thread-Index: AQHcRcBmAmNRtEUrDUuxKwvxRdwsr7TVl2vg
Date: Mon, 27 Oct 2025 07:15:35 +0000
Message-ID: <IA3PR11MB898632D47CAB75E7C26BA052E5FCA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251025150136.47618-1-enjuk@amazon.com>
 <20251025150136.47618-2-enjuk@amazon.com>
In-Reply-To: <20251025150136.47618-2-enjuk@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CY5PR11MB6533:EE_
x-ms-office365-filtering-correlation-id: 09a89693-2fa5-408f-133d-08de15289ff6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?g9ADFkaNPbSJsoUFVPK1qURzSMYqe39cqPzlL1b9YrnkJEglXBBpsvS4HUI2?=
 =?us-ascii?Q?6DjatmbA9R1ppW91BGmsOyyEGZaJiYDB0VRm6bdoRbadTkg9o7v8owGW5vyw?=
 =?us-ascii?Q?IsJS9a4js84XLbscjS11Nv+Wta+/BXoy3bvr9vxX9nWj1snougDsHcISFnm2?=
 =?us-ascii?Q?Nb+OkaFwhAJRWiclLAlChcxnJmTz6PNpLJH0VWTOYhf2A1uILJihLyKZBaqg?=
 =?us-ascii?Q?vUpY1bTVotWL1AqLz3M6vcSxXPJ6+SDn1ashXVVEzYCv6FZu6zkin3Z2IIzb?=
 =?us-ascii?Q?7m3MTUjouGeEqXeNPIWMmRtCWkup8jOKdsM6QmDoevmf/J0WqD05oX+D02xm?=
 =?us-ascii?Q?UVCSYGxtU4P6orZ8oidhtyKu161dM9wS6iAOoZQhOUtb0caFuEXUHBkkK+rA?=
 =?us-ascii?Q?VkRURle6mCeJDk7vG/uXnU+WoyLwoI4WO0qFvCrwFGxmjLgevuikn1R3b+L1?=
 =?us-ascii?Q?ljQWLFYWJrTPAY5Xkgj8fUBe5h933M70ENqJiMv+b1VLH2KKz79n3s5SR/P/?=
 =?us-ascii?Q?1p41jNoaFkvii8L7pYHO+4NI8Cdyb2ihgU20Zpb2xizwnRSmoDEsIY1/jKG7?=
 =?us-ascii?Q?smLBHdoZfT60zeifmhrGCou48DvhJTYvyWWIqtI3VMdIDOJ+CefWtPUTvpS9?=
 =?us-ascii?Q?8mK5YsBwWtoD9XLHK4mhexs2uVTnCOsn+ijzlHp2Pkj9pAsdMnmsrY+8FVTN?=
 =?us-ascii?Q?Lnjaac6mR5d1ipqu+bCI7cAdcw6wyuNHAJ48zfauA+2pEiK32PgpbS5jdXLj?=
 =?us-ascii?Q?OIXcTSH5NzMLs9VoZX6rpJ7h0nnh1MyhIwTuvh9XE2iFa+Kdz/MYJu3uT1da?=
 =?us-ascii?Q?FSwxdM1qcZ70Cyo++FpdraQ68lrqoN1K1GNNd90tj896wixjCsqcp3EK5iuo?=
 =?us-ascii?Q?Q4BlLSza7qB+YUGv7lXUVecN5qcikRPYF0KIEqlqS/OaXwFEwh1Poh2OGNVI?=
 =?us-ascii?Q?YUPZA249xI5pOVFLgFtFYILxeR5pNlSTGa8uGZ6v2soY6hVrSmbL5Qo1etiY?=
 =?us-ascii?Q?/PpzT4jeybUof/QJ+XVGxQE10B+r5Fc3ws45WYudnRhaAw+daqq5GXQ7YaKu?=
 =?us-ascii?Q?6S+nD4POq9kXZFiy+UjiXmJ8hHJOnRM5xe+AxwR54hy+czgP42fB8LiSJMQa?=
 =?us-ascii?Q?+gmfkOG4I6+y3U8r/awPN/76nMqaDv9V/D0laKFYr9dDNBp3q54xNlTQMWA+?=
 =?us-ascii?Q?CB3LSvF3Z1HDIWJEk8vdg0nDHw+cpJ22TxZRzAglGjMIWy4bWTBKh5R4FCw0?=
 =?us-ascii?Q?4ObE+ggqjsKNjmEFM9XpybOOSBtmXK6Q4Ajc7wVj3eT9AW/YVLg+bg+2bTT8?=
 =?us-ascii?Q?aHDcl/jzyDJKHzAl7oyy1JWZ4U+m3quRFuCpm5TLInHS0S29rET5bUmQpoVD?=
 =?us-ascii?Q?M0XjO1FyIRVidDl3zZw8doPBUKpeBzRmTxU28DjKAmJDdDgEHAIB+ElrVju7?=
 =?us-ascii?Q?fsCPHXAk2Poily6XXChCZ4kvLjBphQWnl8eDsXWgiCTye9CVkpxJm+9No+hD?=
 =?us-ascii?Q?neIU7eArnyL+jJ45mVvO+wp5T8GphIjWm8O7?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?T64MdEwS6ZnuhRyWSwxDsuwKieUolZ4vnaMzEXLSWSH8YtSDoqVxQcefo8Gg?=
 =?us-ascii?Q?gy4oW9JbwjexHF0+V/vkKWVWyRyxPxLCgzc+wPHoD7SMHNgxAtUQHX84nATf?=
 =?us-ascii?Q?OsRhMDBMjwpJNElSrtgRkDewCVtXdem0sE0Ykht/N/3GZu3Y+gbIWiNzGgU8?=
 =?us-ascii?Q?i9E5rbMNHV6W22I4RPQLzjUnyx8YgC4CnCcgoJII7vhN5i+X3UqCHtxyKCnw?=
 =?us-ascii?Q?RoFOtHy9z/ItFqUltHOdmve8zGm88mIyTB0hpEjG4SgkvTBCozMuuw7FR6MH?=
 =?us-ascii?Q?CAU2smIbCXNG02/JwkeBjScdnDJWPB5Vz1CyWvJOFv7GWnzFLXLp6/9rSg2P?=
 =?us-ascii?Q?Qfz5+EIa12flqIBstRVBp9cXYviDN1AYL+VyjWmVV7oqf0EQsdCYao43QBLK?=
 =?us-ascii?Q?NZDJN2ImilaP/BApcRzwbCWGKbXblN7oaXUG1Drb/Hni67ED9wYU+lqONGJK?=
 =?us-ascii?Q?aKJnJ/j4IzAuHexqo2mNEVSIGfpmOn9bneAEbpWckyoYoDGt30J0paADUixo?=
 =?us-ascii?Q?h1RrBg2HTQFwr2nhR7IacWEr94/sKSQEYxYqIiXKVeXKKfjQi/+sfWFipS2U?=
 =?us-ascii?Q?QtW5HxrVmS3v6wILwckUkeL3+g/ox1DJZLqHxrkljQJOCUdZAEA9MtyqfKSA?=
 =?us-ascii?Q?Nkja4/ZQkw4IGjpARzK4/ZOoAdD7FVh9ips6li8IK/CKUHA7u5posHZpmSKg?=
 =?us-ascii?Q?QjV7QiDm6uFwaImjkCWjJHJYSX+Ltjr5fOt6gxTyKf6XVYao+1K+++Yh98ul?=
 =?us-ascii?Q?47xxdjvKc8tuCPzKZBQatVd31yS2SOItV1Fwr4K4ggWJX2KTDfWRrJcu7aFC?=
 =?us-ascii?Q?8CzoVZ0jGQQzevIllJSa1WQErIc6PCDCkuaiBK4kxbEgcSVEBV2JIUDVzHph?=
 =?us-ascii?Q?kK6m/p/f9/2VDgSpaXzstpeedKsGKpcWdXFxy3zCmbhRyNNRJKNGfBRKxr8j?=
 =?us-ascii?Q?XN6OZ5BbR5k5TvICh3DAgO/r7tcqrbfhH1jFo5K2jxtyOcU0aXRgSpwYfSl0?=
 =?us-ascii?Q?jYE8rpFZQbYrjS+HVssZ4pHv5s8riR/yDHzp8q3kqDHaFBtBWT3ahT2jtbm0?=
 =?us-ascii?Q?Ro59eqzdPsdUUhEzi3DzBdcpEUPRnu+759xUPoSg7/GJNg/ec27/0levGRWv?=
 =?us-ascii?Q?tu+eDKrZf1ZGDivZqv46x2cRwrpPxvmXdg41CtTMir0X2d2wLeSI2FD1nf41?=
 =?us-ascii?Q?rbJ2nu5McGHsltovWomwBvnnClG4TjeFDjnD9UpmiGFuDZ0X1obJSb/EjNzP?=
 =?us-ascii?Q?DDqZ6gP7z3mba2X1iI6+IOzE7T1ldeJgPLqXK/bvWnGrqBTA0sk+5SSSc3le?=
 =?us-ascii?Q?4kmlqH53JIE8/13W3Y/OVtygtZ8fABhJqm+QOkfRMvgCLCzc2Kzdu+80FWpX?=
 =?us-ascii?Q?AtxX9nryOUHuZ+kPbWeuoJPX7CvcrsDRJP0bV5/CbCIl11Nlxwk6sL8Od0j/?=
 =?us-ascii?Q?//fth45FW4vdCFbQ+PC0F8SSUVlKMFq1A4swdarVnfvRwvRvfRqgw+pjTgSu?=
 =?us-ascii?Q?k1rDipWqkTnuZ+x173/E8BbytxulG4Amn0CbMC3nKkO86lYBqVcToxZZ8uxM?=
 =?us-ascii?Q?8aNSjg1dQg0OoalI9heEpj96m7jK17/rJfkD/EM7AUfllBYozvlL4230JlKj?=
 =?us-ascii?Q?fw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09a89693-2fa5-408f-133d-08de15289ff6
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2025 07:15:35.9185 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e5Rw5Ra7Dp9nLoYaH7h5pNuHdnIgMuyVbjmyoQR41Cc++cIHBYOkt+8aL77J+IeU0I9fu2Kd0YkaEyNflcTHW7K0CAL3DmrV3H0gZ4lVkto=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6533
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761549340; x=1793085340;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/1ytgL7v2DNsl1abY/JhCXCBxkgJ7AccgUEasUKzeOM=;
 b=hqpq5+aJOueob7dcBN8SwCCyd5g+pRLwsR1Fmel4RIMBkStGIgbMOGfq
 gtLHh5XsybIGFvi7kineU8WBPooQrB36tJQgq12nabUQHOzYwWoa32ln0
 d54g3HkraORgBKZ0RVXUcKxQqK51ARx1zQPQwg9rpv3h7f80SNyplE18a
 lkYFXoL7rl2IYaK0Be1GIN4uzi1DtscIIpM+Izy0+9og2holGWlnAXSO5
 FgaBoD242MUXXwwGbmBue/GB/eG5YF9fTAqUKO/zbWEtkxzuY+dWzmlMK
 y7TGuuQ3KDzuvDYMzgkIfxAuy198iBvLPJ19ESKV34ARzOEU1RsLmM3fR
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hqpq5+aJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/3] igc: prepare for RSS
 key get/set support
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
> Of Kohei Enju
> Sent: Saturday, October 25, 2025 5:02 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; kohei.enju@gmail.com; Kohei Enju
> <enjuk@amazon.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/3] igc: prepare for
> RSS key get/set support
>=20
> Store the RSS key inside struct igc_adapter and introduce the
> igc_write_rss_key() helper function. This allows the driver to program
> the RSSRK registers using a persistent RSS key, instead of using a
> stack-local buffer in igc_setup_mrqc().
>=20
> This is a preparation patch for adding RSS key get/set support in
> subsequent changes, and no functional change is intended in this
> patch.
>=20
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h         |  3 +++
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 12 ++++++++++++
>  drivers/net/ethernet/intel/igc/igc_main.c    |  6 ++----
>  3 files changed, 17 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igc/igc.h
> b/drivers/net/ethernet/intel/igc/igc.h
> index a427f05814c1..dd159397d191 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -30,6 +30,7 @@ void igc_ethtool_set_ops(struct net_device *);
>=20
>  #define MAX_ETYPE_FILTER		8
>  #define IGC_RETA_SIZE			128
> +#define IGC_RSS_KEY_SIZE		40
>=20
>  /* SDP support */
>  #define IGC_N_EXTTS	2
> @@ -302,6 +303,7 @@ struct igc_adapter {
>  	unsigned int nfc_rule_count;
>=20
>  	u8 rss_indir_tbl[IGC_RETA_SIZE];
> +	u8 rss_key[IGC_RSS_KEY_SIZE];
>=20
>  	unsigned long link_check_timeout;
>  	struct igc_info ei;
> @@ -360,6 +362,7 @@ unsigned int igc_get_max_rss_queues(struct
> igc_adapter *adapter);  void igc_set_flag_queue_pairs(struct
> igc_adapter *adapter,
>  			      const u32 max_rss_queues);
>  int igc_reinit_queues(struct igc_adapter *adapter);
> +void igc_write_rss_key(struct igc_adapter *adapter);
>  void igc_write_rss_indir_tbl(struct igc_adapter *adapter);  bool
> igc_has_link(struct igc_adapter *adapter);  void igc_reset(struct
> igc_adapter *adapter); diff --git
> a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index ca93629b1d3a..f89c2cbaace0 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -1456,6 +1456,18 @@ static int igc_ethtool_set_rxnfc(struct
> net_device *dev,
>  	}
>  }
>=20
> +void igc_write_rss_key(struct igc_adapter *adapter) {
> +	struct igc_hw *hw =3D &adapter->hw;
> +	u32 val;
> +	int i;
> +
> +	for (i =3D 0; i < IGC_RSS_KEY_SIZE / 4; i++) {
> +		val =3D get_unaligned_le32(&adapter->rss_key[i * 4]);
> +		wr32(IGC_RSSRK(i), val);
> +	}
> +}
> +
>  void igc_write_rss_indir_tbl(struct igc_adapter *adapter)  {
>  	struct igc_hw *hw =3D &adapter->hw;
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> b/drivers/net/ethernet/intel/igc/igc_main.c
> index 728d7ca5338b..1f0a601cbcef 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -778,11 +778,9 @@ static void igc_setup_mrqc(struct igc_adapter
> *adapter)
>  	struct igc_hw *hw =3D &adapter->hw;
>  	u32 j, num_rx_queues;
>  	u32 mrqc, rxcsum;
> -	u32 rss_key[10];
>=20
> -	netdev_rss_key_fill(rss_key, sizeof(rss_key));
> -	for (j =3D 0; j < 10; j++)
> -		wr32(IGC_RSSRK(j), rss_key[j]);
> +	netdev_rss_key_fill(adapter->rss_key, sizeof(adapter-
> >rss_key));
> +	igc_write_rss_key(adapter);
>=20
>  	num_rx_queues =3D adapter->rss_queues;
>=20
> --
> 2.51.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
