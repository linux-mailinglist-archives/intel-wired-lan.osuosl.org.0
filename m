Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D7581A0BBB3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jan 2025 16:23:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8922181026;
	Mon, 13 Jan 2025 15:23:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GEwMew6N6vuu; Mon, 13 Jan 2025 15:23:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF7D580F3B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736781835;
	bh=4nEARYuwW5XGRN8zscS87yxTpT7ifwo6fwJnaf7IKtY=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1eQ9iAS084Fg/esQ11jRoeRFLUCY/+c24T+ocIP30+0OMltxhQ+52BoSA+D0bbrQj
	 +3TbjjHcs0i5AzT6Id8x4E080UCYhKHc7zvksjcOXGyK4yZrUSqb0Rk2Lwc1s0CRpW
	 Wypg9tbwGe3NiXMGKPGUqBKtABSKi4Uu2c7YXYw2nfPmtO6MWdXsOf8a9kridr4kb5
	 kTUr0akA6Cd8t2jjtrZ5ZWN4vpExXSnizak0JeHnSU/2COg4v41bverKSjgYDJ2sNi
	 q8UX/+KvyQNpSYRiKiHQj+Yda+QXXmvkisjYZAQVO8ahUz0GGK8CUmhszd2fXQpLIF
	 yMBHQwRCR70nA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF7D580F3B;
	Mon, 13 Jan 2025 15:23:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 794F7940
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jan 2025 15:23:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 59DEB607A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jan 2025 15:23:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aDTVxwqTEegp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jan 2025 15:23:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 03E3760790
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03E3760790
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 03E3760790
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jan 2025 15:23:51 +0000 (UTC)
X-CSE-ConnectionGUID: pkeczKSeRt2ZMcb06a8k0A==
X-CSE-MsgGUID: epoiOxgdQviYP3WPef1xtw==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="40987580"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208,217";a="40987580"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 07:23:50 -0800
X-CSE-ConnectionGUID: EyVt58I1QXCIxUkMsgM+Lw==
X-CSE-MsgGUID: PPFC8geVRPeBPm3Dal/3nQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; 
 d="scan'208,217";a="135410503"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jan 2025 07:23:50 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 13 Jan 2025 07:23:50 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 13 Jan 2025 07:23:50 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 13 Jan 2025 07:23:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s6WmOaSbiVWavltt9ozAzn1CPPAIsGooTPU3cURAzw2C+PEXXL88bkZsEfQ0A5cx8wRWM1aW+bhidStu/GA5ly7avYVp9iv8euhG9hpDHxLEGhPJMU4WXprkkH8228hkMSGU//3aXItJDHfmuDg1SSR98XAqNzFChxtlxU0kICPGGI2B9Sb+WejHbob0kz+WHgSOvyCWiIZUSzGsnmoOolfLul2EGXwfRsRWM6wRarTfy+oML2booSw9IHMGa9LGDrOer8C3a+UBbx0Q+xh1Swd6rvV2ILownJsmSXHnl4EdF/FUXkH7Mr6kTUMNVw1Hy7/auUDnWqbxWxvKUvmz+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4nEARYuwW5XGRN8zscS87yxTpT7ifwo6fwJnaf7IKtY=;
 b=mgijtzU4PcHeJ8QG43SWOqrun8HQdOdr/LuRFhJi6u/hj4z4vWNOx9N6rEL0fesaIEzOfyhJEieJUsQD39/kQ25DsXgcI7ZdPT1TNIR5SlbKRHeV4VEIjRjTUwvIJtskkLZPLZSeHU65B/r+hPsCWLPe40SUczQjuMKIyi4lD5zjXBu0QKd5JBZ+iGVOcv2HkCULZCqhWMhm6UizEZK6jm3/wRS1pDzSD2I5TQPoKzKD9xqdnDWLYu0uZOy9p4y/2N2O2lfXVg5mmtxTkFyKmkSA08uEnwRsZWg6MBmoIBe1Op9rCsUgy0SD5PmYc4xs8wkbnkI2Xki4B8Fr9BSeCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4610.namprd11.prod.outlook.com (2603:10b6:5:2ab::19)
 by CO1PR11MB5091.namprd11.prod.outlook.com (2603:10b6:303:6c::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Mon, 13 Jan
 2025 15:23:31 +0000
Received: from DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::c24a:5ab8:133d:cb04]) by DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::c24a:5ab8:133d:cb04%7]) with mapi id 15.20.8335.017; Mon, 13 Jan 2025
 15:23:31 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: "dheeraj.linuxdev@gmail.com" <dheeraj.linuxdev@gmail.com>
CC: "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Swiatkowski, Michal"
 <michal.swiatkowski@intel.com>
Thread-Topic: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: Remove redundant
 self-assignments in ACI command execution
Thread-Index: AdtlzFIHasKXlSLCTFS+XjJivtz/Rg==
Date: Mon, 13 Jan 2025 15:23:31 +0000
Message-ID: <DM6PR11MB4610108A2FA01B48969501D8F31F2@DM6PR11MB4610.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4610:EE_|CO1PR11MB5091:EE_
x-ms-office365-filtering-correlation-id: 8e6eccd0-85a0-4eab-b47c-08dd33e63d08
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|8096899003|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?LuwaT9QmfcwBhMKuxhW5vFxxmBtfWtERfYmT8stErjI6Jo3CBHFwv/EJ8jeH?=
 =?us-ascii?Q?HGfG1ATIJ4n1D2OsC243SQOZhEBJdGnzhsjAxNX+CSXuNDAF6KfRUgBvyou9?=
 =?us-ascii?Q?rxeWv7580G3GZClJUfa1no78pOX79wwHTxhENBsrvD8G6mo4stF1wnqguMzw?=
 =?us-ascii?Q?bfSz0dV8kKBfkOxRDfYZ+3yiMoqAWivfA9QaxSom/44YELt49qhcCo4SGR3b?=
 =?us-ascii?Q?9rwXLu6DKC6C0NBH4bk+XGZgovwLC6Rx4sb/W05o/dQPnnrQjtFfEIISBgTe?=
 =?us-ascii?Q?NXC2C4v6VqiIDHRhY/BHlgMxJZk7ckYnmIsx9VzNccVjeB2hafXWBwjWngM2?=
 =?us-ascii?Q?8SI9KIZhx89wn6dTHTSswJpzigi4sAIzi7S2z65Zkva7hbeOroa7XDz4o+Y4?=
 =?us-ascii?Q?tuXAYSt/6YNCekVVqpRqt0jtY68EDnE0yFxUJFGS1mxqq8TOx8gY2q9FBXT9?=
 =?us-ascii?Q?WeK7oBxCOy9rIdiAbcW21bCog69BzbFy9GJE2PdjG1/yaHAuJ6JO+G8/wiWU?=
 =?us-ascii?Q?+04/PkFamirorYvx6vT6FRXHnO4VJzOSfmtuEwE81ERNXgFs2T2sWjtzT/e4?=
 =?us-ascii?Q?31cKf92iObQF91I/Pva62Me/+SgiOv3oan1VtQEEXzWYUKt9Q2W2ezA3c5qU?=
 =?us-ascii?Q?U860CruTpk+rgepw8WkIQaIi0RHugyWZmE3D4Xa5MA3AVbbeZ317Umyx9omp?=
 =?us-ascii?Q?1scXzvdG8k5OTK8Z2w/2BoCoNlMGUuEAtukngIHKsEk7u9EiTU0dPUnHk6jC?=
 =?us-ascii?Q?UWEtGkBK21YbPAihXWDDKYVALPlH91KhtbYz3G7LjJvP22flCOqlI0U2QrqK?=
 =?us-ascii?Q?9MMejBXNG2qIcAklX+XqQqDyP3nIcE1j1JxFv4O0oQW2WH0WbHC0VRa1HAh1?=
 =?us-ascii?Q?LqU0bOMulf7Zwz6bgGhPIedi/3U7JKPCRWwNxQmjaeih7hdsTh6fWWklhdSu?=
 =?us-ascii?Q?KVC6JXM7TdXDJSeaYeffqJY/jQcs/n+yv1ve7RrswxAjUCuMvi6Vx8vQiFjT?=
 =?us-ascii?Q?Lc9qzJC2ktp5geOqED2QnUg49sUrTUNpX9IcIup94fkqDXTfd5FYOLMHxWGW?=
 =?us-ascii?Q?b13KAJ7uCXCE4ELJJa/wYdMciw3+NQOFuatbRLL1pBpAc97xL/PzCC6MxXos?=
 =?us-ascii?Q?0VESVq5JQUMK3oSX5I0lDnvEqr4wTcZyu1FZhINVaZWR3gAOgqYW/Wqq38lc?=
 =?us-ascii?Q?Brf3WNlqgrDy0D17bXbaobACBYff+5Y+P0rsgeIFU9X5myjkLKJiwuMJwtgC?=
 =?us-ascii?Q?XJ9h14uiXI5a13t+g/dDTsR3af49gSEd1KpmoTpwwwDbuDWUvz/o0H5jDY9X?=
 =?us-ascii?Q?K0wY1ePTfOFSkLT/dBON6W2gEnqqnb945W2eIZzaCdfRWPBYWwj3iu1DkOGE?=
 =?us-ascii?Q?42N1DTw28RW/DsjC5PWGMx9i2bzP?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4610.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(8096899003)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hUNm8BQdh4nHBD0MVEqU3Z5WopmPHAjjX8fxQolMYmY2lqWrCzjk2FkuFSgS?=
 =?us-ascii?Q?FrWPUrsRwpdRyjb8//GV+h/3/xI6zWDq5dH+OORWU4sRo9qLE44HCCFkbn1V?=
 =?us-ascii?Q?f71xfhzYCraxnGOjXil+nmmwTjeMoyQ9o4WXFY3Yx5qvhJI3ZVpxLAT7bDCb?=
 =?us-ascii?Q?J9obl+ip6q7Sw2V2QAvTXglMZ4o1TWOJNB3YksPijm+lx6UTYNS3+sbB7N+e?=
 =?us-ascii?Q?pISA8O7htROGntIUzcWnvrdpxP2RGNyagwXZK4G6KWTw2VL2kmAtKK0c8D4u?=
 =?us-ascii?Q?rT7xDHbRiungbfk86FDnizCAZmKDge8pKCMmneJlwM1x7FJu+7VhHUaAzp9y?=
 =?us-ascii?Q?UrsZ/eT0HRcokG63s1om2TbR+73y0gA+99yeI4DOYAa6LWnla16MPqA4a+Lj?=
 =?us-ascii?Q?C3J4299llgR3QcPAit1S63KfnB28KjYwueYB1Ip0kX/wD2Lb+mB0rDwG4AN1?=
 =?us-ascii?Q?ZPn+DXIXxkr6h4h8Q8LWaaHPMfc35BZ049K6C/vnn4uhuSU+pBE2wI/Y6hzi?=
 =?us-ascii?Q?MXqaWl4SxNJyTd/lwogkTwPjTyWkztuBtoiroYt+qKdVQTy+l36O1Xvj3NFp?=
 =?us-ascii?Q?MWpHlpw3VQZHQrUyTjHln3xdmv2EUYZr3PMl0P64rgPNfcoMnvwz+ynNd/LH?=
 =?us-ascii?Q?6am8ILjNupYtKdVMCHWUZM0WEskFrbx0ufeaAhYkiIgq+CbD6PxL8TmmrFk+?=
 =?us-ascii?Q?PXHtIlUC4VLpadgep9NyMOuyR8ndeYfgPvzOqYLZAs/4JCYGML8I/sx65k2Q?=
 =?us-ascii?Q?wROjuCq1A8Q/pxBqYX/DODwarXSCJOY+5rT9U0RSNab6DUtVRXbm9jjX2c+7?=
 =?us-ascii?Q?pqJGseME0EMF2C4U2nwTKCveqRvG+XzPN1f2uxWIVXgrsiuABZmAfu3Pn46P?=
 =?us-ascii?Q?Lw8RSY+9UsFss0SbetKmOhvyMpFqPvQ/jgJ1oUHn0Uka0Fbbf4Jxizxyj0K9?=
 =?us-ascii?Q?D1Dgiurca8i5oP3TurUFSq3mbsIlwJv/kxHCrxG7W+Gup8FsK/Kyi8j9u7gj?=
 =?us-ascii?Q?XpSNC9hJzYHs6U7x59kXC6QuBulqlRRezKlcPz5ZSBxqe1VIIfUVsIP1DDPf?=
 =?us-ascii?Q?GJtbEiTkV2P5Iakyg07dJvh2OEt/uyj3qgjf1ELI+iMpWxU8UN/NnEozaacX?=
 =?us-ascii?Q?TF6nw2XMNgrqW2ZT58N6hTs1nGcZg9DeQcVSNxcafAPqegsbuQ1aHR6CuHcL?=
 =?us-ascii?Q?6hePSKfOjyBSkTpfyz74MoeF2He4reywC+EXVc8kgBcXpqOdTm0abOLXueKv?=
 =?us-ascii?Q?QLIvp13UxNK1mdxkZC3AEffniPk7CvHuh/RCWAo+IyJ3WwchXvOoEAVDgRGO?=
 =?us-ascii?Q?kKfEOtm7TXyZthzorJd5r16gBoIdUL6DA9tCeTHKW5WMvR1xFWGwdaD9qttf?=
 =?us-ascii?Q?+wbILgGBPqZkdbej+p5EU1zr93Qvra3WRCNi7hTmsNAlHA6ye6jDeVDkLlJq?=
 =?us-ascii?Q?4afb3JJCDI12blpJcDfjFUg6IH1RT3arYAidPPiiBy3sX46VihHPKB/1YCgn?=
 =?us-ascii?Q?3pjF6ALOI6mP0V9nd9A4GXL+0YLr0mCoJgk99wDtQJg+8HjPQAt4ZdTqltjv?=
 =?us-ascii?Q?AZFmdhfU54yXwASWv9MBEBasbXvrt2a6+3PYWcSU?=
Content-Type: multipart/alternative;
 boundary="_000_DM6PR11MB4610108A2FA01B48969501D8F31F2DM6PR11MB4610namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4610.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e6eccd0-85a0-4eab-b47c-08dd33e63d08
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2025 15:23:31.5485 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R6EiwMqDKpfnv4/r6mOsRITeSSLNZDfv+uYoH+eGqaXCubkEuQ1V0wlySqkdtm48tvujGkw6CvF8TesRyByI+gnHdsa0KPjVQ8F3Rtl+4/0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5091
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736781832; x=1768317832;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=U2LWmBIh+QlczNirse3pj771p0540myIij+7lnM8jdI=;
 b=jUUE0KVkADzq8SXRorbzo0O5FopBWb8pYcrTFfpI7QOrkE9liC48lJeu
 FDDpZfDY+wZrgP8ODXWc8a4mTLHxTrslTY0oAnnIDiJRL9NGAlXE09CIH
 J7rCetYNBRFsxvZ9+gzW4q7+Nu+Es01ZutJgYQ7ptiOHq280aZOiD3//Q
 z1sSlTL6t8H5AKcwmGjYwAHCY8Ul3B5Ciy1lJJECwQ5VPocigQhTXQiNJ
 G9dTRsfHbd5pIP4cweWR/J3C/mHv/TdCQ5/IXevvwyXfJ+IJRw4Y0Y70m
 xzFpfcb03QcC6HGIuAc7Ns0AVFhh+lDGIQXZLUmdLBWt6DS61NahxPp9S
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jUUE0KVk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: Remove redundant
 self-assignments in ACI command execution
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

--_000_DM6PR11MB4610108A2FA01B48969501D8F31F2DM6PR11MB4610namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>[Intel-wired-lan] [PATCH net-next] ixgbe: Remove redundant self-assignment=
s in ACI command execution
>@ 2025-01-08  5:36 Dheeraj Reddy Jonnalagadda
>  2025-01-08  6:29 ` Michal Swiatkowski
>  0 siblings, 1 reply; 2+ messages in thread
>From: Dheeraj Reddy Jonnalagadda @ 2025-01-08  5:36 UTC (permalink / raw)
>  To: anthony.l.nguyen, przemyslaw.kitszel
>  Cc: andrew+netdev, davem, edumazet, kuba, pabeni, intel-wired-lan,
>             netdev, linux-kernel, Dheeraj Reddy Jonnalagadda
>
>Remove redundant statements in ixgbe_aci_send_cmd_execute() where
>raw_desc[i] is assigned to itself. These self-assignments have no
>effect and can be safely removed.
>
>Fixes: 46761fd52a88 ("ixgbe: Add support for E610 FW Admin Command Interfa=
ce")
>Closes: https://scan7.scan.coverity.com/#/project-view/52337/11354?selecte=
dIssue=3D1602757
>Signed-off-by: Dheeraj Reddy Jonnalagadda dheeraj.linuxdev@gmail.com<mailt=
o:dheeraj.linuxdev@gmail.com>
>---
> drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 2 --
> 1 file changed, 2 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/e=
thernet/intel/ixgbe/ixgbe_e610.c
>index 683c668672d6..408c0874cdc2 100644
>--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>@@ -145,7 +145,6 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw =
*hw,
>             if ((hicr & IXGBE_PF_HICR_SV)) {
>                            for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORD=
S; i++) {
>                                           raw_desc[i] =3D IXGBE_READ_REG(=
hw, IXGBE_PF_HIDA(i));
>-                                         raw_desc[i] =3D raw_desc[i];
>                            }
>             }
>
>@@ -153,7 +152,6 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw =
*hw,
>             if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
>                            for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORD=
S; i++) {
>                                           raw_desc[i] =3D IXGBE_READ_REG(=
hw, IXGBE_PF_HIDA_2(i));
>-                                         raw_desc[i] =3D raw_desc[i];
>                            }
>             }
>

Hello,
Possible solution may be as follows. I may also prepare the fix myself. Ple=
ase let me know.
Thanks,
Piotr

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/et=
hernet/intel/ixgbe/ixgbe_e610.c
index e0f773c..af51e5a 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -113,7 +113,8 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *=
hw,

        /* Descriptor is written to specific registers */
        for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
-               IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i), raw_desc[i]);
+               IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i),
+                               le32_to_cpu(raw_desc[i]));

        /* SW has to set PF_HICR.C bit and clear PF_HICR.SV and
         * PF_HICR_EV
@@ -145,7 +146,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *=
hw,
        if ((hicr & IXGBE_PF_HICR_SV)) {
                for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
                        raw_desc[i] =3D IXGBE_READ_REG(hw, IXGBE_PF_HIDA(i)=
);
-                       raw_desc[i] =3D raw_desc[i];
+                       raw_desc[i] =3D cpu_to_le32(raw_desc[i]);
                }
        }

@@ -153,7 +154,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *=
hw,
        if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
                for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
                        raw_desc[i] =3D IXGBE_READ_REG(hw, IXGBE_PF_HIDA_2(=
i));
-                       raw_desc[i] =3D raw_desc[i];
+                       raw_desc[i] =3D cpu_to_le32(raw_desc[i]);
                }
        }


--_000_DM6PR11MB4610108A2FA01B48969501D8F31F2DM6PR11MB4610namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#467886;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:11.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">&gt;[Intel-wired-lan] [PATCH net-next] ixgbe: Remove=
 redundant self-assignments in ACI command execution<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;@ 2025-01-08&nbsp; 5:36 Dheeraj Reddy Jonnalagad=
da<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp; 2025-01-08&nbsp; 6:29 ` Michal Swiatkowsk=
i<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp; 0 siblings, 1 reply; 2+ messages in threa=
d<o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"PL">&gt;From: Dheeraj Reddy Jonnalagad=
da @ 2025-01-08&nbsp; 5:36 UTC (permalink / raw)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"PL">&gt;&nbsp; To: anthony.l.nguyen, p=
rzemyslaw.kitszel<o:p></o:p></span></p>
<p class=3D"MsoNormal">&gt;&nbsp; Cc: andrew+netdev, davem, edumazet, kuba,=
 pabeni, intel-wired-lan,<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; netdev, linux-kernel, Dheeraj Reddy Jonnalagadda<o=
:p></o:p></p>
<p class=3D"MsoNormal">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;Remove redundant statements in ixgbe_aci_send_cm=
d_execute() where<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;raw_desc[i] is assigned to itself. These self-as=
signments have no<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;effect and can be safely removed.<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;Fixes: 46761fd52a88 (&quot;ixgbe: Add support fo=
r E610 FW Admin Command Interface&quot;)<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;Closes: <a href=3D"https://scan7.scan.coverity.c=
om/#/project-view/52337/11354?selectedIssue=3D1602757">
https://scan7.scan.coverity.com/#/project-view/52337/11354?selectedIssue=3D=
1602757</a><o:p></o:p></p>
<p class=3D"MsoNormal">&gt;Signed-off-by: Dheeraj Reddy Jonnalagadda <a hre=
f=3D"mailto:dheeraj.linuxdev@gmail.com">
dheeraj.linuxdev@gmail.com</a><o:p></o:p></p>
<p class=3D"MsoNormal">&gt;---<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c |=
 2 --<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; 1 file changed, 2 deletions(-)<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;diff --git a/drivers/net/ethernet/intel/ixgbe/ix=
gbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;index 683c668672d6..408c0874cdc2 100644<o:p></o:=
p></p>
<p class=3D"MsoNormal">&gt;--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e61=
0.c<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e61=
0.c<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;@@ -145,7 +145,6 @@ static int ixgbe_aci_send_cm=
d_execute(struct ixgbe_hw *hw,<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if ((hicr &amp; IXGBE_PF_HICR_SV)) {<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for (i =3D 0; i &lt; IXGBE_ACI_DESC_SIZE=
_IN_DWORDS; i++) {<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; raw_desc[i] =3D IXGBE_REA=
D_REG(hw, IXGBE_PF_HIDA(i));<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; raw_desc[i] =3D raw_desc[i];<o:=
p></o:p></p>
<p class=3D"MsoNormal">&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; }<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; <o:p></o:p></p>
<p class=3D"MsoNormal">&gt;@@ -153,7 +152,6 @@ static int ixgbe_aci_send_cm=
d_execute(struct ixgbe_hw *hw,<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if ((hicr &amp; IXGBE_PF_HICR_EV) &amp;&amp; !(hicr &am=
p; IXGBE_PF_HICR_C)) {<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for (i =3D 0; i &lt; IXGBE_ACI_DESC_SIZE=
_IN_DWORDS; i++) {<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; raw_desc[i] =3D IXGBE_REA=
D_REG(hw, IXGBE_PF_HIDA_2(i));<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; raw_desc[i] =3D raw_desc[i];<o:=
p></o:p></p>
<p class=3D"MsoNormal">&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; }<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal">Possible solution may be as follows. I may also prep=
are the fix myself. Please let me know.<o:p></o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Piotr<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_=
e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c<o:p></o:p></p>
<p class=3D"MsoNormal">index e0f773c..af51e5a 100644<o:p></o:p></p>
<p class=3D"MsoNormal">--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c<=
o:p></o:p></p>
<p class=3D"MsoNormal">+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c<=
o:p></o:p></p>
<p class=3D"MsoNormal">@@ -113,7 +113,8 @@ static int ixgbe_aci_send_cmd_ex=
ecute(struct ixgbe_hw *hw,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* Descri=
ptor is written to specific registers */<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for (i =
=3D 0; i &lt; IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)<o:p></o:p></p>
<p class=3D"MsoNormal">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i), raw=
_desc[i]);<o:p></o:p></p>
<p class=3D"MsoNormal">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i),<o:p=
></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"PL">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; le=
32_to_cpu(raw_desc[i]));<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"PL"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"PL">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; </span>/* SW has to set PF_HICR.C bit and clear PF_HICR.SV and<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * P=
F_HICR_EV<o:p></o:p></p>
<p class=3D"MsoNormal">@@ -145,7 +146,7 @@ static int ixgbe_aci_send_cmd_ex=
ecute(struct ixgbe_hw *hw,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if ((hicr=
 &amp; IXGBE_PF_HICR_SV)) {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for (i =3D 0; i &lt; IXGBE_ACI_DESC_=
SIZE_IN_DWORDS; i++) {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; raw_desc[i] =3D IXGBE_READ_REG(hw, IXGBE_PF_HIDA(i));<o:p></o:p=
></p>
<p class=3D"MsoNormal"><span lang=3D"PL">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; raw_desc[i] =3D raw_desc[i];<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"PL">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; raw_desc[i] =3D cpu_to_le32(raw_desc[i]);<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"PL">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>}<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">@@ -153,7 +154,7 @@ static int ixgbe_aci_send_cmd_ex=
ecute(struct ixgbe_hw *hw,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if ((hicr=
 &amp; IXGBE_PF_HICR_EV) &amp;&amp; !(hicr &amp; IXGBE_PF_HICR_C)) {<o:p></=
o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for (i =3D 0; i &lt; IXGBE_ACI_DESC_=
SIZE_IN_DWORDS; i++) {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; raw_desc[i] =3D IXGBE_READ_REG(hw, IXGBE_PF_HIDA_2(i));<o:p></o=
:p></p>
<p class=3D"MsoNormal"><span lang=3D"PL">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; raw_desc[i] =3D raw_desc[i];<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"PL">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; raw_desc[i] =3D cpu_to_le32(raw_desc[i]);<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"PL">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>}<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DM6PR11MB4610108A2FA01B48969501D8F31F2DM6PR11MB4610namp_--
