Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D0483CFD316
	for <lists+intel-wired-lan@lfdr.de>; Wed, 07 Jan 2026 11:33:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AEF8681BD4;
	Wed,  7 Jan 2026 10:33:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SUp0x3xxgnxa; Wed,  7 Jan 2026 10:33:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1633481198
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767782022;
	bh=1xm8m3w7PY6XJA7mTN7mW5mgZYZ7krAIU6GM7er9DXI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bfVj/jsA4DuXLhClkb8EKHL5s4TuCG1+f0i9SszQx/gRBWJpawIr8MFdOZotDkidp
	 tHdcZ26qWl+QWnnd856hFuk0rlHelZp+pkOSb75Dr1Hh5P2ID6LYTmk1E9dOAB0MNm
	 ot5XXOop9i7YmQju9lsGtg+wAHojgq4n6ub68Jq+O/vHimKdNOFAZx2ktSEEyFBoae
	 fSbnnxBdyQT37rtk94i425pFRzrO4w67GgQOJ4jWpJDlrWsJ2GIMGOM7ahW++F31MB
	 C1R+Pik69G7LcqACvn2Sw5ciGhn9lCsqoQh1S5g9GHzv+4YdOEpDn1ec5yKApC2yM8
	 w1jsg3V3lI5Nw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1633481198;
	Wed,  7 Jan 2026 10:33:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 47AB7436
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 10:33:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 39BFF4073D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 10:33:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zErbu2tkCbPq for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jan 2026 10:33:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4FB62408DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4FB62408DB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4FB62408DB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 10:33:38 +0000 (UTC)
X-CSE-ConnectionGUID: FABHUaZNTxyf+0bj3idTQA==
X-CSE-MsgGUID: 0E6/362LTfq+hjIbTRlW3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11663"; a="86736136"
X-IronPort-AV: E=Sophos;i="6.21,207,1763452800"; d="scan'208";a="86736136"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 02:33:37 -0800
X-CSE-ConnectionGUID: AejGSbM/TxSJBTQNV6/zkQ==
X-CSE-MsgGUID: U8NyriooRnG9+XRriS+nuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,207,1763452800"; d="scan'208";a="203342382"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 02:33:09 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 7 Jan 2026 02:33:09 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 7 Jan 2026 02:33:09 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.34) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 7 Jan 2026 02:33:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wElH0ZaMZyVrdLMHdyGiDtI3j2+xv4RzSGRVQRDX230kSzEYb2s3Q5WwyRU8OsPlei9R+L/rBXHTxZYaSSDzHBrfAuQ2HQQpJcml0fUlGtK81g97+B9iVw500zCIg9AqXm/rvXXBcGaNM1reLIPvTmqHNENNIOhKOZyX0TXxgrXfz8/9nBns+ZaO2lTK0AcuC8oJMb9mDg0wg9TTsUl/ooripPJQVJi3xkE36GLl/8K+XqqvXl97Ud4qqwWxtRFafFt8B7cFR3bsPs0+ZSDprIvzUxThXoKUEA9ujIGyHWSWyYCQwq1pu1JYf9/45yNByVlSG7B0HYKnPeeqYLxYrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1xm8m3w7PY6XJA7mTN7mW5mgZYZ7krAIU6GM7er9DXI=;
 b=e63yar/eK6F/B9uiUT5VWVR/uP2MHEn5Sy+rlSHWDs7L32yubIhCk0zvB7vqbbhG7AtEq5+zvNPpfnujo6kL85nFHBKm1suiIBaINFISlAQObYYPF0qyT1L3Xun6VROkkQy3IalI3CNskvlQNbsQGH/id/knd4yrh4vGThI/qbyXNAozEPoMM+lZLyC7aTd4M9q54ZfNgCzTUP+nrppchaWqiCppnGIf20Z47CKq3Kt+4M6nWsZEhd8Qa3kaJ5RWnI21uJJMrlyYIl/vZnKIjZSTSPbdYNC1KH2BunOU0Y11pWMHTC0xqMPZz/hiWXoGGXWV8TYyJ3Qkaw9vhOE3FA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH0PR11MB5926.namprd11.prod.outlook.com (2603:10b6:510:14d::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Wed, 7 Jan
 2026 10:33:06 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9478.004; Wed, 7 Jan 2026
 10:33:06 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v4 2/2] e1000e: clear DPG_EN
 after reset to avoid autonomous power-gating
Thread-Index: AQHcfxbTDQprsAp0lUOB1JGtOfWwbrVGg5dQ
Date: Wed, 7 Jan 2026 10:33:06 +0000
Message-ID: <IA3PR11MB8986C6B202B37A25791A0974E584A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260106141420.1585948-1-vitaly.lifshits@intel.com>
 <20260106141420.1585948-3-vitaly.lifshits@intel.com>
In-Reply-To: <20260106141420.1585948-3-vitaly.lifshits@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH0PR11MB5926:EE_
x-ms-office365-filtering-correlation-id: 97ba08cf-501b-49f8-5c8b-08de4dd824ff
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?4miQytbdNT5Q8NwRBz6LI6g1QPgPKLArmUOs+mVZ68iRc7SVJWQLMJdzMNqi?=
 =?us-ascii?Q?sesf96u0fULE+GTQjdBmEyQSfUVeQq1pbxucbwpDB3bP8Y4z9c1CzvvkWGqV?=
 =?us-ascii?Q?G8KtL5O69TaHn5pTSi0oDqDuVUerIdLKCd14vpZAai5bx/3lz09BSBRwc5gu?=
 =?us-ascii?Q?KJSaUmg4tVGvoYkwT5ENIdA17QrI2SZASUlgh3B6AKElrSbhZmjgp5qBoVua?=
 =?us-ascii?Q?yO7P2Nd+TKjSzdhwKeHbOIV4gaU6KpFOr0mw6/IWuJ8iouu5RDZ/y5aqhbBT?=
 =?us-ascii?Q?8NCdY+l9QXTKUE0QY6rYxuYVxy9Qq8OT32NktFvuzhNOA5w9UPZ9endC6oqB?=
 =?us-ascii?Q?YFInYPcOljRuhUsP+unNLKcxfAqtSd+cpD3dN02rGbtqJyCalfCtU/p6+wgH?=
 =?us-ascii?Q?BzF+NciPdhwbRVxOxfK0VcBvSsCbi1spBlPL8AKSlNGV3+nYP/9K2AjvjNZN?=
 =?us-ascii?Q?beKHXtef00cAofcHpqi9oc9oRD606PHFpMwoSH/PJ2m4+y9KIbQddDAIZ4DP?=
 =?us-ascii?Q?pgPp6lCCP1Pi/MUCqMrAeHDz+qSzEqwTOoYoOhdnEAsDqTsi7bDxuKG2bxmi?=
 =?us-ascii?Q?m3vERfZzLCyZHiOp+hgsNVU0HAYuNJBfcHS1g+HdGLWJz3nTAluaM+zqNjRZ?=
 =?us-ascii?Q?zohp3oJaeEHpPlJNbswMsQ+541O0ddz6ru732Rgffq85Uwn65ngAA2ajW/vI?=
 =?us-ascii?Q?AnnIGbP9/xGZGlZgjjWhaxjB9Nvj0EmWTlwb7IofSo53QPvdBYoN238mzaC8?=
 =?us-ascii?Q?3tTPjjKtTLkA12cCyQ+ndo66xwbK4YMsyMC2h+il+UzLQuvSZqynHu7USMrD?=
 =?us-ascii?Q?l27IrL/o7zpPIZTN9kaK6v54Uwwj02/eGiXAsX17mtImwKI4VRniJt/1fKF+?=
 =?us-ascii?Q?pm8QtJMdriAY55dcqrqnwRJ5AvnTj89hX5acfHmFAvvW57/edAw+FRqQNu68?=
 =?us-ascii?Q?AgYC+D6kUBjD3ULpfwtmfX9Nhp65Ah6RZ2iQJQmxtljVLzFfBT6CNjpe3a0O?=
 =?us-ascii?Q?xSbHXjtK1JPXe8Q7zSZ6+8h0ve2k6colMU/FETDDLEnVoJPQog26l5guorgs?=
 =?us-ascii?Q?c75ASHr5SwFtYZzn+OdDlW6eeSatAh0skRu3K8o1goB2jnnjn32eXF3PZd5m?=
 =?us-ascii?Q?1ZVaGgwpV1lYEBoEYxkLx2TguwNQDrPvN9dAKagHFpVODySMy9+XWrOj41QG?=
 =?us-ascii?Q?mxkZ12fgJSBMo0zFLlNJ1XLEhRRWTcZ35b+JvE9eirmKynH00KaltfJUuIVg?=
 =?us-ascii?Q?R2jhVXmx5/TWV17g/caNn8CRZtmD6eHVd3Y4wAQzGpv7SGQMCaFVEThGJHjc?=
 =?us-ascii?Q?q/Tox3kNpQeHJHXVMVUFdSdr5SIakUrMJWfO6+Cjreou00J9eNa65wSswpyP?=
 =?us-ascii?Q?EiqiR8lsuF3EmxkgC8hZAMXh3XNa82vKvtWIjLWceoMHK9ZtobBguZWt4cR5?=
 =?us-ascii?Q?rF6Wy4lkKNkq/+CXwRoFi+SU2U7xzvKn/mntk1Y8hLmWevobqEi6GdLiZpmt?=
 =?us-ascii?Q?IUqz2BdqfofdnEDo4gDQOC/sS8zO9gADbxD+?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?m/IBeb7IHRfGIxtldQqOFyNqRzYRSD8/J53HaPO9b3VT7m5P+y2gERZ5veiO?=
 =?us-ascii?Q?8WmjbiHgTIwu7GXm8w5lQY8XSt1kXsOTGsVOJ54ToENdKcPLiWWdc+hI1X2h?=
 =?us-ascii?Q?nXqZc2KcBe4nD/Qf1NX7dTvsQ4/61/Mmr/Wse9rQhaS1PK7qv0fRAAMbSdb0?=
 =?us-ascii?Q?hF102YDFIUIZJERv4QApcfp3TpeXRUro2d98yBtpbo4S/oWZjvTfo+l/AY1g?=
 =?us-ascii?Q?l4ZGhgnaiiUFa1uDyZ+BYu4thEILOaN7hp0WqBJ7oGumUbE8VH8oNqu0piBh?=
 =?us-ascii?Q?s0ftamrzxcBpmgZEIN2iTK/7PQoe6bSlO4aI16mETEjroES0aejhXrOS0cKH?=
 =?us-ascii?Q?GKlFVqZoV9+/jU6YDjICBH/il9seAeCDR9geuXKZpjFMo6NEJDJRVIgNcBsE?=
 =?us-ascii?Q?g2BeU4gZXi9tbslhyRH7fBXNl4VGqykH+5W3d7RTugDzARurfxRTyqzQufKL?=
 =?us-ascii?Q?+HoiuSisbdVCkQkKksVYCeA9Dn/WsHzEWEKc+sGedr7f5YgqaG9XjUkMlxea?=
 =?us-ascii?Q?GbV4ogTaHUi203/fycqTA5j9in8ByFAO9Wse0tqfW1iKc7E4cKK2n2oRUIxx?=
 =?us-ascii?Q?n6zz0uaeW4ubZu1ITSVm5tn7740U+9xaSDBNzP72XdmTm37IuOzvbg8U4mDf?=
 =?us-ascii?Q?jCkeJlQbbkraEKM6pbhdD5jRkX/NU8LbAtUH1AF1HGoLMgpH5m7zWiKvhCcR?=
 =?us-ascii?Q?op4HKTMR0fGIn97RosSoGW0tzb/6aTok0lUzJs9dJW/6MnyB5Uh58q2sex6H?=
 =?us-ascii?Q?ljL4I81XBTK1h8fdywD/FRjjsobAiq+wpAtkTp0q5mhcw+49Phc7+X11+NZl?=
 =?us-ascii?Q?DIJw1ir+dQ35fD9cUl0fhC1CnmDUIngJLVT2+yBj/xgsCkoEixkeb9PORKIO?=
 =?us-ascii?Q?WEHzvTyBmb9b+PmY/ALhujNV5DOs5z+ZFbK4NMnP+kD8iwebBr80Msz6f6sq?=
 =?us-ascii?Q?qrXT96HnCZgjwaByJvKSrXMGL0tZJW+Eq3krMr3JaLalq3LZ83ffPfNIqYZd?=
 =?us-ascii?Q?kFleI0EUsciFwiymT5R+G1I+H/qVJmz1ZwhtkO4Yvjvpqiin9HFtz1zyTiJ8?=
 =?us-ascii?Q?WGzuS2GH+09DqGT9ZIw2rQZXGumQBAkd1hBB26uuPMlQR2qKROTW/+wZgFRH?=
 =?us-ascii?Q?Ayqy+xLd7FmjdHK9W0XaJbeobIjVA2WegSwB4Nx7q/4tamyDDdDgDs4em9Xq?=
 =?us-ascii?Q?ZOM9xJCtB4GmkFtZwNqy/YHVtD15aEQQG0XUffGSEMnvZWfFDjVZ6dQWa6PW?=
 =?us-ascii?Q?YDncIzxCgEVRcnvq79M1K1MTABzgPMb1sQIaOC0HgVIxooSXv6O5YLS4npI4?=
 =?us-ascii?Q?K2QOF1cW272LnyDWGhrR6dqohY159cI7tv644a6Ek4B3eDzF6XdiXMph8M7b?=
 =?us-ascii?Q?mcK/XxY7oRg5fIhryUnM7zvjjxZGfvQSS86BIL2pakLQRNaa6jDk4d95mBiv?=
 =?us-ascii?Q?SW46Krw5gSaR4MK+rNaR3INBh0JYKNPRURRFGezyuYc1Lvs6fks+HQwk2XzX?=
 =?us-ascii?Q?QHhbmp5hfbpwoueEofButWKQQaCkcTQOZoO61VeJVJ13b3iSYnxdhusIjrYO?=
 =?us-ascii?Q?sw0z9ZYTf4P2eoqWl54xNSJCObQV/znAOAjl/ansjeLhrd6z+MsSUTo+1dfg?=
 =?us-ascii?Q?VlVT+QZycRe/iPTBGTyId3eJe+lLO065l499Fm2fmOO75igi0IfBXA049wJS?=
 =?us-ascii?Q?cGZ2sjqEe9iF9WOVMwevEes/ccmqZnVjFwl28rwIUMTL8aKADUO5r6gALOvc?=
 =?us-ascii?Q?Ign7m/bgM8w1J8PgmlFqZQt0Dhl9iQ4=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97ba08cf-501b-49f8-5c8b-08de4dd824ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2026 10:33:06.1957 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1C3Jb8CJpyC61TEnFizqEMKhtlMEPuXW1Lc5DDTvS2U6TeL+ut9notp1y6EG5y0od3wARtxPL8/5YA+a2x1WpnPR5ihvN022MVyG+Qy5LHg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5926
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767782018; x=1799318018;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TYlK2Xsy4rXLFsFPzp54S9tWQ4Ls0ipNx3apiPoZ3eo=;
 b=S0fyA1VH9vEairO0RPTqmeQqnUPhAzh2j/6nD9lQ0M3ppvmZiKlqQ0kY
 UfTGxkoY95RhuKqNCFeh467jyxuzKlzDIwZRyvwMkLDqDsJ6+f2vadCQp
 vpkRgTLcz0phhu5T6pMcaFjUxiWC2007PHPY70c4EjKpbwBB6v+YvdXxk
 9HKcJBlNbLIuQdr/HYho5OoLoi6GuKYyI8TQMhJxgKsSVUUuq9rdc5IXk
 etAORSh0UyahJStLp2QQcNcpCO2K8lRnTIX1rHYdJlEOUryOJ5S1Oezgq
 T82viUkzIa+ImW1+bw5xyeVLHA1dTNXlPLh+Lt4VgVDEn8hgXvLwc+gMi
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=S0fyA1VH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4 2/2] e1000e: clear DPG_EN
 after reset to avoid autonomous power-gating
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
> Of Vitaly Lifshits
> Sent: Tuesday, January 6, 2026 3:14 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Lifshits, Vitaly <vitaly.lifshits@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v4 2/2] e1000e: clear DPG_EN
> after reset to avoid autonomous power-gating
>=20
> Panther Lake systems introduced an autonomous power gating feature for
> the integrated Gigabit Ethernet in shutdown state (S5) state. As part
> of
> it, the reset value of DPG_EN bit was changed to 1. Clear this bit
> after
> performing hardware reset to avoid errors such as Tx/Rx hangs, or
> packet
> loss/corruption.
>=20
> Fixes: 0c9183ce61bc ("e1000e: Add support for the next LOM
> generation")
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> v4: fix commit message
> v3: rephrase a comment in the code
> v2: fix a typo in a macro
> v1: initial version
> ---
>  drivers/net/ethernet/intel/e1000e/ich8lan.c | 10 ++++++++++
>  2 files changed, 11 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/e1000e/defines.h
> b/drivers/net/ethernet/intel/e1000e/defines.h
> index ba331899d186..d4a1041e456d 100644
> --- a/drivers/net/ethernet/intel/e1000e/defines.h
> +++ b/drivers/net/ethernet/intel/e1000e/defines.h
> @@ -33,6 +33,7 @@
>=20
>  /* Extended Device Control */
>  #define E1000_CTRL_EXT_LPCD  0x00000004     /* LCD Power Cycle Done
> */
> +#define E1000_CTRL_EXT_DPG_EN	0x00000008 /* Dynamic Power Gating
> Enable */
>  #define E1000_CTRL_EXT_SDP3_DATA 0x00000080 /* Value of SW Definable
> Pin 3 */
>  #define E1000_CTRL_EXT_FORCE_SMBUS 0x00000800 /* Force SMBus mode */
>  #define E1000_CTRL_EXT_EE_RST    0x00002000 /* Reinitialize from
> EEPROM */
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index eead80bba6f4..13841daba399 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -4932,6 +4932,16 @@ static s32 e1000_reset_hw_ich8lan(struct
> e1000_hw *hw)
>  	reg |=3D E1000_KABGTXD_BGSQLBIAS;
>  	ew32(KABGTXD, reg);
>=20
> +	/*
> +	 * The hardware reset value of the DPG_EN bit is 1.
> +	 * Clear DPG_EN to prevent unexpected autonomous power gating.
> +	 */
> +	if (hw->mac.type >=3D e1000_pch_ptp) {
> +		reg =3D er32(CTRL_EXT);
> +		reg &=3D ~E1000_CTRL_EXT_DPG_EN;
> +		ew32(CTRL_EXT, reg);
> +	}
> +
>  	return 0;
>  }
>=20
> --
> 2.34.1

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

