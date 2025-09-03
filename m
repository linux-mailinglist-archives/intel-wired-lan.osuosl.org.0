Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A58C7B41993
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Sep 2025 11:07:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B6D561436;
	Wed,  3 Sep 2025 09:07:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y2NK8hFUrJ0g; Wed,  3 Sep 2025 09:07:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64180614B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756890464;
	bh=Rc5br7W3apYblfua4d4//V90OALcrOhc3dKN6jgmA5w=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Fcw7cA3M7NPvKAEFBYSKBL8Wk3kwu4bK6VcuGBT4tbxdHyC391ek5LGibXgdY7HgS
	 /dmbE6g2cB6OhnkaInd1Y4VuT3zs6oR3PPb3aiZsWvfRNnLgJmYuG7h3sv1EjIDJa/
	 mvXSw9Rakb243DXY8dD4azQLrce86vilPxRpl+ZDkklOntAxQw6FhHirpBzWvAvRUc
	 caNS5oqMLhaA6warxoIBBQPG4+mBR+ezq8fZhSRTQAw9O3EcU9cG1xtp+AwCeDSt+o
	 46nG6Liduq7spL/6eCJ2PIQMgvDYRQW67Ebx1ZfuGvf/s63BGPEV81y/v07be/6aeP
	 w3oY6Xm3oX7Bw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64180614B0;
	Wed,  3 Sep 2025 09:07:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 24FC010E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 09:07:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 16C5241F1E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 09:07:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2upWJjJaA5th for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Sep 2025 09:07:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 26D8E411EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 26D8E411EB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 26D8E411EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 09:07:41 +0000 (UTC)
X-CSE-ConnectionGUID: 8B3iZGucTNiCkOrquwismQ==
X-CSE-MsgGUID: WnwO6C0RTPuga3Sk5cic3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="69809696"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="69809696"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 02:07:41 -0700
X-CSE-ConnectionGUID: dK9phIHFT9+lbUugnVUD1Q==
X-CSE-MsgGUID: zZ93XO9jQvWw0Fr9c912ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="170817199"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 02:07:40 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 02:07:40 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 02:07:40 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.75) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 02:07:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=US2s0Q3xNVJ+ZBZSjLFa+TGeZ1UxujhAvDUOCvInt+ZZj809jqr1GgpN1bLYH5Q1og/YkK6XDR+RSt9qYGFk0oCS2hS4rcVHcsyCIVvReYhAHfxgzotcX2qW5AB3oHAUCnTllscwxk9mOXSHFVvb482/383CaFcZjs2yfn0uElP8zYWprduOkd+jPPAzfa6z5oh9BlKW0NBYOav6yQzLYgV9Wr7NZhnkiCRu54L3TYhpk2bGiGrE0kk5+oC0leez0vrcK+8wc4K0aZoXQVFSMdrCiS8H5dRieFt3vGTAKZDkULapACmk89drxnjj0NhbFENjsmd2vynwNkF97YPL2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rc5br7W3apYblfua4d4//V90OALcrOhc3dKN6jgmA5w=;
 b=dO7sm3pRLoQmogue3rqTTaD6rPwT2R/yyT2yONC4XZ3QjdiUQ40vkAheKrl/JvvzMWtFkhKyNL0nbxqoGPQp9wgOPE4vq09ZUybYVYFtCpFrNBAtGZMJ5uLt3q3FxX3bn4EdfVPxC0v6V+MFPrFNiJfDEU/vpPeYuFH3KM7U7yvthBiXq72mDpW4NK9OwHyhpVh3OH6GQ15WxrPwpOX5ITY27X6QTzU5hY4QbJjBpoRbg/K2AXumr/RDeu2w8Fn+pB3bj//2uU9dIsAOlY1MBB5vz7CBe9lcFdrO6qs+QCVwGS692xpmx2cR/nOumroU0NlJt7Ex7Gk+iFrl9lfnzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH0PR11MB5192.namprd11.prod.outlook.com (2603:10b6:510:3b::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Wed, 3 Sep
 2025 09:07:37 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9094.015; Wed, 3 Sep 2025
 09:07:37 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "mheib@redhat.com" <mheib@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "przemyslawx.patynowski@intel.com" <przemyslawx.patynowski@intel.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "horms@kernel.org" <horms@kernel.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [PATCH net-next,2/2] i40e: support generic devlink param
 "max_mac_per_vf"
Thread-Index: AQHcHKifPsqylKSysUmMvQJReHnaf7SBKEMw
Date: Wed, 3 Sep 2025 09:07:37 +0000
Message-ID: <IA3PR11MB8986F453579349C3518B312CE501A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250903075810.17149-1-mheib@redhat.com>
 <20250903075810.17149-2-mheib@redhat.com>
In-Reply-To: <20250903075810.17149-2-mheib@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH0PR11MB5192:EE_
x-ms-office365-filtering-correlation-id: 61d70c90-7410-4e68-a36d-08ddeac953fd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?1fTbuicoR6zpwg2cu7BTKr8ZFCFtjnjav+e4Iy2NlEwBiw/mVunv4tEuLuSX?=
 =?us-ascii?Q?V3knWyj27xtu/de+LY1WpToNRyYDcxoNPTBE2N2oqgIKXpnW3irHcOHaNBAg?=
 =?us-ascii?Q?W7BAhVqZ9XmtDW0eiqCnarKt8a9FMDKaCSIVWc+iXN1rjz8/EuauCfFnq1ln?=
 =?us-ascii?Q?D2CXnfFP2ku9SFkJyMYDSrMzUrcHAfOfO3NaqQROY+vsixbm7BJFiinCQ72G?=
 =?us-ascii?Q?dTvcZHAaIs7S4qBBiQ8X0kwYUMTqAk85toWaG9qtYU1oB1XsZmHbp/iIxB0e?=
 =?us-ascii?Q?hNtJ4NT2EaWhZ3m/MYVQ5SerSXo0Y9lGn6nYuvaXiyBL7fTM1BrMXZD7uf02?=
 =?us-ascii?Q?EAhX1rniGyMdJeEFz7n5hsAfYhJq2CEF3ZyW0iBcJFGIlVL0zRYfwevo2bAa?=
 =?us-ascii?Q?CrH1iYsDc6MJXTDYnar8DRdg7p9yhfPmgcQW7oifWdRJfS0M8IHee/oeZlf/?=
 =?us-ascii?Q?pVbYsrMu/gxbE7bpRWukzEN9tBZ1R9SeL2pUOBt7gNlYLcHRuopn3FL9Y2Ay?=
 =?us-ascii?Q?Ybk8eByDtOu5cuKjfMwD6SR160rVlB9nuWkcLXQQ45OGLW1iMnB2af8sRw9O?=
 =?us-ascii?Q?jIiIu5K9334ntixN8GrMe5pN6okCqYAJOBcEhRExV86XxPQ02NRZPE1rRK5p?=
 =?us-ascii?Q?QH8HOV1WtNsxxFIQqY++JP5emprGGr5/PnalUUyX4YOAaqHWIADca1Hfyf/K?=
 =?us-ascii?Q?PIGEEDbNn+pZ+f7nt407VoTG3CBRJG0JoU7uFWicONLp8z+3hcZHBTvZIotv?=
 =?us-ascii?Q?Hwmw/bIo3sHtXaPfwZG/acbRW9ptWqwtYYVrJGIIHF4S9BTbXRlqbbQC3/OO?=
 =?us-ascii?Q?eqFFoxG7aDqpG35T3Vxibn6EAYy07ymC78GXKcIsoE6MhxT20hGbuA1AM/WQ?=
 =?us-ascii?Q?b9Tc4Q8hRhlv9wOa4e6sAKprPYOuE6s0qXhwJqvcyB7ruTD2KcsquoojB4Yy?=
 =?us-ascii?Q?L/HbecWyxjEjb2N4nRFKFTyBLue2qyeuW/ndz6F/y0HDAAyX8BtK4FLYRbgc?=
 =?us-ascii?Q?sQLAb7XsCqfQF9QawoDEAz4SuYTbDKCP/6p0rPCu8f1Zez7zP+7Ssj2thHE/?=
 =?us-ascii?Q?dIYq5oscd00WMJ/DtyoD9Hj/+6GYkKumBeyn+E1tkevwJGbZhsDYXuo61lqC?=
 =?us-ascii?Q?UcmnCz9eaK/GrmEzeDQCCEWl12DL84MPDOBZQ4dOihl6mKBe9JmpK0RQC1IA?=
 =?us-ascii?Q?g7Qx22F6no8TjrrN8KuT2aqiTwPqmD5x2O9m7kqLnfPg4+mOJ9DubhHFajn7?=
 =?us-ascii?Q?bUq6ymQshYulkeagYAeLIgI5DNkmIA/eyuzPDzFSRL15ATFUAT/iezKYgQ/q?=
 =?us-ascii?Q?hHt1Z1Xo633nLbhSv04VSNs9ogJWjiO1COME88fMaK6gD1LQwVIgk9+wib6j?=
 =?us-ascii?Q?nZ3D/ME2ZyQ4OMd8d8JBOBW0sA6jpR0kdJLzRlzNe2jE9Nn9YnLJLfiFYke8?=
 =?us-ascii?Q?X7skAprOhPvHC+yeWZcJxztiODgVv5huALW5pGGQyfTJXZp4jIdxCcgUrGFr?=
 =?us-ascii?Q?4evXZoUUJ5zQuFo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Wke2s+nPOWBHinsPRj4yYbFL7CtLbSCgDI6SB8FEU81Ff1PvoxaJFTPlhyhY?=
 =?us-ascii?Q?N0iRbU8PjcFYMELeI+lukTklUAwQ7G0RKal4/KhqPCr+UXEMyMyNguGtdHGt?=
 =?us-ascii?Q?WL2Tlc9ehhsiCMRd+NhPRO1w5HRvUz3Ja8/XXpgaYpD5oeVdSya18bOge35K?=
 =?us-ascii?Q?aSXwFLFH5G8XCOTlLWlm1spZBTcZJtC6B8vkqOSwARJSxf4VJGCbi/ay9G1q?=
 =?us-ascii?Q?3bnyFUWC368/SoG8AWfYI2pWprwsfgAPlY736vmHvXbf8PE9brQU379l/27O?=
 =?us-ascii?Q?pKe0jHUeSS3Y0NJNDm1tmG3GufrPq1x/XgGpD+NV64PvggrdLI4nJePBsx4r?=
 =?us-ascii?Q?L5nx/776E2+3EpBl53Uiow38p4ndJTOJHB1cDoupJ/pWSD6GTh76oBx7NJaI?=
 =?us-ascii?Q?WaVj4K+P0H0xxOKW46EzosMMQKs1l2+4IX5g01t5Lx4zO6QYAhnETMTqUwzb?=
 =?us-ascii?Q?0gM8Khkix95rMyaOYvP0txnLyCfpqlcWAxXNxiPwFp5kfSfy+K8eHyQdSMiS?=
 =?us-ascii?Q?npu4vl5lOqeBBs4Wegga5DCDjy2IaHfRa4Rjaq8xJ8Sb0bc6OyQadbK+10t5?=
 =?us-ascii?Q?Fn4yKH4wveepvTLoGiv3QMAZ+vXgws0SIpHyvtsX8yydEDaSlsrazRMZSZfZ?=
 =?us-ascii?Q?LITr42r2pXnsF6iO3dEgpNZyD6RC3HBve1esL2Gqe9XEfxqyWEG+VqYKbC7F?=
 =?us-ascii?Q?9AoC60xDTT/Ac0W04n6Z5nwd98gjf4Gd0tumRsnWpjX8vozE3FWv+HoS+NKx?=
 =?us-ascii?Q?8bStOL/mPBxL8vwY5WmTG52A6kZNXQ4dd+Q3RK+K7F0poXGD7l9AqU8T4Okh?=
 =?us-ascii?Q?z5BrU0epQa+kGuiw5atuhINalHK1Qt+LAYfHQYrwp507rXfqanqvXIkUuWUQ?=
 =?us-ascii?Q?abnhMWmIwB09cYjjanKlTPdthfgO2IKMkckPxTMpzvWcBB+MLMHjd4I293Cl?=
 =?us-ascii?Q?YI32xGrRnnhWvu6x9idFhifVqbOECJXpaf3OtEPv0Vqg6uwqqUWGi0nyFrbS?=
 =?us-ascii?Q?vh3hu+ohBbuzEClBdegRIvfBpW7w6r71PqGIBk8uTME1kZEc6//cF/Korhxd?=
 =?us-ascii?Q?WJ7DqBYxPR9t2ze9sQB9+Lg/5x1S66vMo6DYv0NG0g30uYS3uWKTd7LWEQSi?=
 =?us-ascii?Q?tbmuJIkL5G8wW3L1/syAtE2stsjuRDfj5FqKFcVygeYFLS3N6+8LsSPvft+X?=
 =?us-ascii?Q?gB56fN30NjQDe8Yab5r6DTZlFD4zsLkpqRc2fbvTwmKoIPK4snzbfT2xUZoY?=
 =?us-ascii?Q?ILFn7UfssaQgfHCD7FBH0v3z2M1Nhef6gBbujS1ofcq0+Z3KQJK6I8boGkM9?=
 =?us-ascii?Q?OXLu87vosOfknWvmHely+hiVCQzSmktPBqtYzwo4386Yh7sGWQZyDwCa4+Yf?=
 =?us-ascii?Q?ulM0jeUnSOxhNwy9TASpNFv3tgqOxbvmSM5DMcAo9eNcdyytG5LRwzjsyAou?=
 =?us-ascii?Q?VkgkD7px7tFIZJSRmI3EEQtTyS97MfEo8UuTHo6HOFZ0NV57oH8vtySqEAO3?=
 =?us-ascii?Q?nhCPFiXYDDjDp6XoOM/MzuwYCRWzt+Ha+e7x6h4ycXDirn+Hd3fMZGzecnGZ?=
 =?us-ascii?Q?ZQL4oo4w4juRadG+REcU7jJx0Gwwy2cSaTjSoK5XQAzvucI44IiIWIrgoupE?=
 =?us-ascii?Q?6w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61d70c90-7410-4e68-a36d-08ddeac953fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2025 09:07:37.4395 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RbAoKxOue4E6acWbU7lI1vOnXOEDQjS0YtKhbMbQCe9jV6y8KE2dFk6K5ISZkoUdiMWV3aJRWBwyu/bbE+LVv1qbe6yBbcJFWZBPCjNa+IQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5192
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756890462; x=1788426462;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r40QFgbTSkr3sgXTws0By5c+aDwFzqdX6/YPvaVFcdk=;
 b=YM+VniBnDjvLB+AWKb45SidIoCm6y9jA1QC4mk/h7DfrYK2zmkq1mz4n
 S8YOlEilOWZZywvAgIVagkahs4WSu4UghMplpDsqNtaQJjwRtI6Gy/dBy
 Bg7F4831zgPUw0rlb47uokxRlYmC2sVj8CQv91/tyyaGXLKiEtjyDMyHz
 ThrM33dUwzh1IEKIxIP885NGtw0HxY6qPGHqWRn/bad34R7jYdqj6whpo
 CHzJ6JPX3OKyXBcsqv08Y7yaHfe1454r2myRz8nuFy4AVuN+7Zw2WW2M1
 q2ChCiEj0S6ymlZQDEQ8rM1fu8txcO3sQyD5QjxPXZNh8MYZ+5N489C9p
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YM+VniBn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next,
 2/2] i40e: support generic devlink param "max_mac_per_vf"
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
> From: mheib@redhat.com <mheib@redhat.com>
> Sent: Wednesday, September 3, 2025 9:58 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: przemyslawx.patynowski@intel.com; jiri@resnulli.us;
> netdev@vger.kernel.org; horms@kernel.org; Keller, Jacob E
> <jacob.e.keller@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Mohammad Heib <mheib@redhat.com>
> Subject: [PATCH net-next,2/2] i40e: support generic devlink param
> "max_mac_per_vf"
>=20
> From: Mohammad Heib <mheib@redhat.com>
>=20
> Add support for the new generic devlink runtime parameter
> "max_mac_per_vf", which controls the maximum number of MAC addresses a
> trusted VF can use.


Good day Mohammad,

Thanks for working on this and for the clear explanation in the commit mess=
age.

I have a couple of questions and thoughts:

1) Scope of the parameter
    The name max_mac_per_vf is a bit ambiguous. From the description,
    it seems to apply only to trusted VFs, but the name does not make that =
obvious.
    Would it make sense to either:
	- Make the name reflect that (e.g., max_mac_per_trusted_vf), or
	- Introduce two separate parameters for trusted and untrusted VFs if both =
cases need to be handled differently?

2)Problem statement
    It would help to better understand the underlying problem this paramete=
r is solving.
    Is the goal to enforce a global cap for all VFs, or to provide operator=
s with a way
    to fine-tune per-VF limits? From my perspective, the most important par=
t is
    clearly stating the problem and the use case.

3)Granularity
    If the intent is to give operators flexibility, a single global paramet=
er might not be enough.
    For example, limiting the number of MAC filters per specific VF (or hav=
ing different limits for trusted vs. untrusted)
    could be a real-world requirement. This patch doesn't seem to address t=
hat scenario.

Could you share more details about the use case and whether per-VF granular=
ity was considered?

Thanks again for the work on this. Looking forward to your thoughts.

Best regards,
Aleksandr

>=20
> By default (value 0), the driver enforces its internally calculated
> per-VF MAC filter limit. A non-zero value acts as a strict cap,
> overriding the internal calculation.
>=20
> Please note that the configured value is only a theoretical maximum
> and a hardware limits may still apply.
>=20
> - Previous discussion about this change:
>   https://lore.kernel.org/netdev/20250805134042.2604897-1-
> dhill@redhat.com
>   https://lore.kernel.org/netdev/20250823094952.182181-1-
> mheib@redhat.com
>=20
> Signed-off-by: Mohammad Heib <mheib@redhat.com>
> ---

...

> --
> 2.50.1

