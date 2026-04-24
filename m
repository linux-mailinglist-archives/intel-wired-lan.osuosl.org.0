Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +A2zHsuU62m7OgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2026 18:05:31 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EFF5461233
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2026 18:05:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3A6784D23;
	Fri, 24 Apr 2026 16:05:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DhV6He6sLpzk; Fri, 24 Apr 2026 16:05:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A22C584C75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777046727;
	bh=7tu7aM+MO3DjqboGvcjliEB5LSK7ux5pXVVfXocHqXU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lbxyas+L6Qb0NrlK7rWQ9e/AGOrSADFASqGG/z2ZRbIxmHSiinbv/WgsUQI1UrSkc
	 XPt6w1JWppzqr5N6YWPWgNJD25Hl0BTWJiuyHgvZXZXVcY4ZwH5H1qUhDdp4Yv9qSS
	 uPcO3pGsAwleIqn/IToo4XC1i6PuzGmyhDYRhPNWp+vOYFTWsJpqxFdFNFbvBmXYeA
	 87gUOUVprrx9FJ0PdG3IODsqAdyJWyJPbM4NSZxOvEcJ1JSscC5WjF/iIPryvjvgh4
	 AkXT/AejyRVrkVPHAil+eD23s4yj+3MwihSnrJPTKcMOBefvV+9tawtskzS3ffr77I
	 fb+kQX7S61+Sg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A22C584C75;
	Fri, 24 Apr 2026 16:05:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 73D69206
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 16:05:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5A0C884BCD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 16:05:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZrxeBclPU0_f for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2026 16:05:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3D92784B90
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D92784B90
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3D92784B90
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 16:05:23 +0000 (UTC)
X-CSE-ConnectionGUID: 1u9Bqq51S62JDAd1pxAU5g==
X-CSE-MsgGUID: Sct4xHvHTVq9I9xhwiOX+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11766"; a="89412681"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="89412681"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 09:05:17 -0700
X-CSE-ConnectionGUID: RxeC76ENQQ6ma/cXhVf4yw==
X-CSE-MsgGUID: /h4JMixUQmOF4cUQu9ICpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="228648119"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 09:05:16 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 24 Apr 2026 09:05:16 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 24 Apr 2026 09:05:16 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.10) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 24 Apr 2026 09:05:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WZ00tKMzhS7BHUOYBoIFuL0Ulyd1p/JVLDjwrXGs+NHSX+Q9njj3wgbVrpoi0/nYjBGx02RVPxjKwl7IlxrJAX+V+V4FOhMGgkb79sV/78hfx9RWNFcjAjjyRQK1zSHmUzJOtZWJ+MhDuT0JhwcD3OMfX0nGpF6DcR/NMImVtsQQnhXIgNFFBfNdUaLSP2/GekJwoTq/U/UxjH/iabwxqcZ59NZL8ntmsgsFsHIq19HFAo/gw3fED4YUkRh8BGmxFOzURH7tL5cZ2wIwyFBgqMFhoz0IznJx7Ff3iDFjUSIvEPSt95KeelkDYwNfBr6bZZqZOTiXiZWfATWKYFoqtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7tu7aM+MO3DjqboGvcjliEB5LSK7ux5pXVVfXocHqXU=;
 b=F+dQXVfnQcQhMLpKB7lvCnaBB20tb784BLIXz69BAOlo8pgPVvsapLZOEfYZ77gc8uobrL0FiBF8bHZEuO5IxVcd/DTsY6Glaozr+LqVNef5uyzOGVV7PLWEHFiHPk4htPb75rO16NkzVZ/OtDl4NjEgXo+kuUv9p1khxj3DwqGvAx4TynKWT/fJ/n3skX/txp7SayNoT/wdGAzEd0MuKDYGMAyGH/hZS7cAz0vtfyOUAl65vsfyGN3pgncZwN3R7NbWKs7wTZ38NUJMSngHmjbCVEyWpzgRBNNoXvTMMxfW5ZcIDGHYJQu1vOnqIh7kTI83WuALWJYLNIdQJKMmSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH8PR11MB7141.namprd11.prod.outlook.com (2603:10b6:510:22f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.20; Fri, 24 Apr
 2026 16:05:13 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9846.021; Fri, 24 Apr 2026
 16:05:12 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Jose Ignacio
 Tornos Martinez" <jtornosm@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "jesse.brandeburg@intel.com" <jesse.brandeburg@intel.com>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>, 
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>
Thread-Topic: [PATCH net v4 4/4] ice: skip unnecessary VF reset when setting
 trust
Thread-Index: AQHc0yHPL3usVtJTakKErPoC2Bf5x7XsoCewgAHBkWA=
Date: Fri, 24 Apr 2026 16:05:12 +0000
Message-ID: <IA3PR11MB8986BB8F2B8FBA03679590AEE52B2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260423130405.139568-1-jtornosm@redhat.com>
 <20260423130405.139568-5-jtornosm@redhat.com>
 <IA3PR11MB89862412A9F682D59474841DE52A2@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB89862412A9F682D59474841DE52A2@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH8PR11MB7141:EE_
x-ms-office365-filtering-correlation-id: 907c5e9d-d3d6-44b1-2fb7-08dea21b445a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: NpI1I/nsq4C7w6uG+I7PK5PShzVo9aVWFmGQx0zE4VohZxP+3auMDoxbw9zooEEy4g0n5BAF+BM68EdrujlnmmIIiKpYJqU6ZFh7ipKU68Ul5QzCEWH4aJnrhVQUfO9JvJT3xcY5wcJRqe81SLt0uUgbYdUsPkwoh1AYncHLFOGlNPd3woSUNO8bKFno7T0D2+Kx8JvIO3QpTPupNmEihfJSiun51TNL1sd/P/Eq3sklXeIeBtW/Mcojhs36eQ2qjoAPmLQ7rxe6mOhQol3kIwiX6E3VbSLezGA2Ooxv3nXiu6stbo8dLXBVuGra8iIXI1Gl8j9wwBvPq34/PQxnj8+URrbnv4VUX830fFL1eqJ2mGN75gHLewEeH9Fjx8ERXXXuuXH8I5R1xQpFEY1lvtRD9qEAM2m/K0rLe0Eq3o0foQDDGsjS+N/6R3HuScc+eES9mSOd5F9sqY0YbPxD5aSyrJb+NuDH8qiucOgHFJdKkFdGZy7bsEeNWqXPquCW/Kg/QVxLJGyumPSq9SujN1ffYbX47VGK1WG6JniZW/E3tph/YTKr6rJeTTViR0ZiZGVHOz4rM3WCelWlmwYb/p9mEakyTGRrpcZxYUzo6vw0vhEH4/umfHpSNQ4PQXAbJ/BKEAsNJ1pqGr/wpHVnU5io0I4JTfYpP3I8u7fc05IJbWRlhaGN40FYF8feZifbE0VxEDDgP9LJqEMJXbPfSh0n9jh4j1bR0RP6vZBNtou8KpIFegtKH158E/jXEHuTPyvlb4CGh9ULQWLcapuf+BFIZ2yw5bvWO4GHofFd6GI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BXac2LqX6lFG7rCXRUAdJSi0gY7EO5EQ1FR/iviO/+y12had70cF4d3dcV/d?=
 =?us-ascii?Q?uAT6ErIkloXQDap+PLq3Xpn/XNyHldMKheBAIvBEmXg/4GgvfV2VeEYr1enJ?=
 =?us-ascii?Q?EtsykyVMGve+9N/rHsV+1i6rhM1I2iLPDnDP0KFy3hrJ0b1slVncueXMULsy?=
 =?us-ascii?Q?7XrHYlbRuj8tcoLOCNHy9PNOl8DllWWD03jCnD5BQKXW85jDkocdxNehRux3?=
 =?us-ascii?Q?YCU7x6lNpAt0bVa9tccPDTGz/Kc/ZU2xChbphShNZs9kFJeK2Tf46ceX0IIv?=
 =?us-ascii?Q?PMJiQBImw38r4L2Wbb4C7WCcpgy6O2d0wF4jetRhFCoJ4m17s9dZO10XmEy6?=
 =?us-ascii?Q?2+oA1865z9tcq/Jl7iITXJbpRZnCz9h6Oa0OOwlHOviCtUPwwA6oWthWLbng?=
 =?us-ascii?Q?iLeHu4C0aTRBuCsIB3Dr62wIkyeK2NCN5GocMaRVN5TIhRucqjwdDO/SGJVe?=
 =?us-ascii?Q?RWkE//afXwcTGM6yF/gbK5WK8arhhgPsDQdzqcA2JK8vzDxskkIpy9o83tRP?=
 =?us-ascii?Q?w5HuxaCaEV6m3O19iauEV+nMscq4yOcmLQH/j0EqETh1fQVIWwQJqAqgeiZ5?=
 =?us-ascii?Q?aGeD+vGCS15QJV0XHEV5TC2xVM6C5R0Pt08mxPCb7eaf1sbzb+JK1smMIviT?=
 =?us-ascii?Q?O/zaskS6H2SUo1PejC10OLVuLPTfP096Z0HTl3X14dN0ivfJF6+VGA5cyIST?=
 =?us-ascii?Q?iGw0sLcxGB2heBbTO3ygn6/Rl11+PUpFhvoXsrnsyNlh0qLby42aNyB1zKN4?=
 =?us-ascii?Q?JXghC6CRikpDuPKGjvwV7kX9tQjX+zwsCsSdA/8pp9bED5K09YmRVop9DZOy?=
 =?us-ascii?Q?1Hk8r5xHxxJwx8T7K/lyK1iTiJ+6Otv9ArUslbn6KZFICFn9FpgURat8cygK?=
 =?us-ascii?Q?ySJ1Fi4iGY7Ljh8FzOoYqo2okWJw+M+n6UimA03/th16QVyZ6YPPD6QyHU19?=
 =?us-ascii?Q?1ww5XImmjACA42F/698JtY1DTFsG8qUIENB2LH+G8El9XBKYzSC9xBD+QUQf?=
 =?us-ascii?Q?1KQcgc7h9diqCP0uJPy9+jV/SvyjDUvFzFZd/X39dA7hkthV+TjskE59JWNY?=
 =?us-ascii?Q?2d9MculRZ4yr53R/0ZR9eCMnw01c4b2Y0PvwYIPfm7LNs3/DO78ID1pxHS64?=
 =?us-ascii?Q?KcmM2lx1aXy2GRQp+iRkHbWSmKxiuH2VI48wQWPun7E/otYvEFGXiLPqRezH?=
 =?us-ascii?Q?nXulJfir+QK6Aiqq7y9OwIeuUCsmRwISzWB/pZCWpZS6S4K81w1iFJBmYr0o?=
 =?us-ascii?Q?LjvMoqWIoFGmZTRJ7LJGXK3+YFGznJQlbHPquRHDIo6un8xqL0s38cuZu9I/?=
 =?us-ascii?Q?duFRxAKmIJh+IKselKVkCRhuhdqkmsYFKJB4o8hfW0QYYSn+f30qWfpj+Op+?=
 =?us-ascii?Q?AbSuURvPlRixjxUis29MhgorvdFv6iWFGCjZX6BVSj6aEySUORMzUgo2V3Mm?=
 =?us-ascii?Q?Oz4PdUUkgbMbe1iScaYEAIp7T8OipmMnGzyvm+El/+GETUyODJ6lSCLV7Uim?=
 =?us-ascii?Q?Flyw1r1MLI2kxk78IKEr2cPIRh+lRQgLOylM3n+CJdGCkM59Ha3sFlTSHB7Z?=
 =?us-ascii?Q?Z6GXcZEnEBu5EsSF0YOWAyBJhoOkf/0eRrwkinEh1et4rJ2mbof2oHAacbY8?=
 =?us-ascii?Q?kLbnxV4qM0vOYNDr1Xp3pSQxWoQtj9jGqlVX2seDN/pXSW/D/LqVLuwPun3j?=
 =?us-ascii?Q?OrOLBia4e4RrO05e11R8uPx4oEBBBeF9JSGpOtn3YNIZ8UqzVqett2FjKIIY?=
 =?us-ascii?Q?U64wmklTj7S4aocF8iXUKsbyjSSU2qU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: oS961Ham+9BmpwCpekRCTMNxrGEQ9FuqtHd2e68xz+1JqGJc0Wzdq7fjIM4VDnZdtJo+jU3zOg/C3Y0Swq05R6yc02U/UMPtSrmYdE5SPn9XAU3j27PJEnqXbmkOtniiVHbXYvwfuEU/T+rOWdBhTveEygdi6bJHe5fgiNx0IUxi44cCDBPModxxIDChW4leIGm9yeYV01gVR/aXaab8nFr07h+ACrasU+IkZS5HGjarb25iKOaXy2l2MFsThrgarw6IyAsQwFPDzoFhL5G+PpVUr5ZJhBuJMoiVmTSdXOnmdoHutoyqUQT5bEBb/ONkP38MesH16YrTnpM6RPaDuw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 907c5e9d-d3d6-44b1-2fb7-08dea21b445a
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2026 16:05:12.7280 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h8NM4WnOp7KdXJnR/TSx6ZhzJkkamUtqUGu5E1F5kJj+lq4wNNgMgMpaQp4NQ9gQ1ILfAVLhNWKuXRj43Hu4ULPXuIxWHB2kwW/1cLolel4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7141
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777046724; x=1808582724;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tLRlenOljrKy3iMdn06AwdeABpO7b8HBkmlxDbvQiqg=;
 b=ARpAzeSR+R82H0vodHcL1A5DQR1/tHGvo2EtZxlNiUidGHY61YGkZhgc
 g8zxCjZj/NvSydX0CeduYH0828F2u795UxCNtgG+L3qtSnHvcfXKEThgJ
 bSWqt006YCdfOwL6kYPt0E+OSsxzKd1f0EunNC1SffJIj1rTWxTHWFIBM
 dzd99BzQjoX7DSQK3OH9R1S+3CWM4bPYAQIdPZPI3K/AjUt8lLu6dv5lk
 W+SYHFVTs+ZNSmIClcGOiNZpYcOgAnkR4gjUy4UlMOgA7N2qPwOBAqw9F
 Km1pm9wN31Hjpl4bWkrlLWSv5Xv2Ng7X45oS4GjB1XRzn/UzQ/06NpAmc
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ARpAzeSR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v4 4/4] ice: skip unnecessary VF
 reset when setting trust
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
X-Rspamd-Queue-Id: 5EFF5461233
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:jtornosm@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:jacob.e.keller@intel.com,m:horms@kernel.org,m:jesse.brandeburg@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Loktionov, Aleksandr
> Sent: Thursday, April 23, 2026 3:17 PM
> To: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>;
> netdev@vger.kernel.org
> Cc: intel-wired-lan@lists.osuosl.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; horms@kernel.org;
> jesse.brandeburg@intel.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net;
> edumazet@google.com; kuba@kernel.org; pabeni@redhat.com
> Subject: Re: [Intel-wired-lan] [PATCH net v4 4/4] ice: skip
> unnecessary VF reset when setting trust
>=20
>=20
>=20
> > -----Original Message-----
> > From: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
> > Sent: Thursday, April 23, 2026 3:04 PM
> > To: netdev@vger.kernel.org
> > Cc: intel-wired-lan@lists.osuosl.org; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>; Loktionov, Aleksandr
> > <aleksandr.loktionov@intel.com>; Keller, Jacob E
> > <jacob.e.keller@intel.com>; horms@kernel.org;
> > jesse.brandeburg@intel.com; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; davem@davemloft.net;
> > edumazet@google.com; kuba@kernel.org; pabeni@redhat.com; Jose
> Ignacio
> > Tornos Martinez <jtornosm@redhat.com>
> > Subject: [PATCH net v4 4/4] ice: skip unnecessary VF reset when
> > setting trust
> >
> > Similar to the i40e fix, ice_set_vf_trust() unconditionally calls
> > ice_reset_vf() when the trust setting changes. While the delay is
> > smaller than i40e this reset is still unnecessary in most cases.
> >
> > Additionally, the original code has a race condition: it deletes MAC
> > LLDP filters BEFORE resetting the VF. During this deletion, the VF
> is
> > still ACTIVE and can add new MAC LLDP filters concurrently,
> > potentially corrupting the filter list.
> >
> > When granting trust, no reset is needed - we can just set the
> > capability flag to allow privileged operations.
> >
> > When revoking trust, we need to:
> > 1. Clear the capability flag to block privileged operations 2.
> Disable
> > promiscuous mode if it was enabled (trusted VFs can enable it) 3.
> Only
> > reset if MAC LLDP filters exist (to clean them up)
> >
> > When we do reset (MAC LLDP case), we fix the race condition by
> > resetting first to clear VF state (which blocks new MAC LLDP filter
> > additions), then delete existing filters safely. During cleanup, vf-
> > >trusted remains true so
> > ice_vf_is_lldp_ena() works properly. Only after cleanup do we set
> > vf->trusted =3D false.
> >
> > When we don't reset, we manually handle capability flag and
> > promiscuous mode via helper function.
> >
> > The ice driver already has logic to clean up MAC LLDP filters when
> > removing trust. After this cleanup, the VF reset is only necessary
> if
> > there were actually filters to remove (num_mac_lldp was non-zero).
> >
> > This saves time and eliminates unnecessary service disruption when
> > changing VF trust settings in most cases, while properly handling
> > filter cleanup.
> >
> > Fixes: 2296345416b0 ("ice: receive LLDP on trusted VFs")
> For me it looks like  cc: stable@vger.kernel.org must be added
>=20
> > Signed-off-by: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
> > ---
> > v4:
> >     - Address AI review (sashiko.dev) from Simon Horman:
> >       vf->trusted ordering bug
> >     - Fix upstream race condition when comparing with i40e code
> >     - Apply capability flag and promiscuous mode fixes from i40e AI
> > review
> >     - Add helper function ice_setup_vf_trust() for non-reset path
> >     - Export ice_vf_clear_all_promisc_modes() for code reuse
> > v3: https://lore.kernel.org/all/20260414110006.124286-5-
> > jtornosm@redhat.com/
> >
> >  drivers/net/ethernet/intel/ice/ice_sriov.c  | 41
> +++++++++++++++++++-
> > -  drivers/net/ethernet/intel/ice/ice_vf_lib.c |  2 +-
> > drivers/net/ethernet/intel/ice/ice_vf_lib.h |  1 +
> >  3 files changed, 39 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> > b/drivers/net/ethernet/intel/ice/ice_sriov.c
> > index 7e00e091756d..d0da7f6adc23 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> > @@ -1364,6 +1364,34 @@ int ice_set_vf_mac(struct net_device *netdev,
> > int vf_id, u8 *mac)
> >  	return __ice_set_vf_mac(ice_netdev_to_pf(netdev), vf_id, mac);
> }
> >
> > +/**
> > + * ice_setup_vf_trust - Enable/disable VF trust mode without reset
> > + * @vf: VF to configure
> > + * @setting: trust setting
> > + *
> > + * Manually handle capability flag and promiscuous mode when
> changing
> > +trust
> > + * without performing a VF reset.
> > + * When reset is performed, this is not necessary as the reset
> > +procedure
> > + * already handles this.
> > + **/
One more nit, kdoc should end with '*/' not '**/'

With the best regards
Alex


> > +static void ice_setup_vf_trust(struct ice_vf *vf, bool setting) {
> > +	struct ice_vsi *vsi;
> > +
> > +	if (setting) {
> > +		set_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
> > +	} else {
> > +		clear_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
> > +
> > +		if (test_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states) ||
> > +		    test_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states)) {
> > +			vsi =3D ice_get_vf_vsi(vf);
> > +			if (vsi)
> > +				ice_vf_clear_all_promisc_modes(vf, vsi);
> You declare ice_vf_clear_all_promisc_modes() returning int, but ignore
> the return value.
> Looks suspicious isn't it?
>=20
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>=20
> > +		}
> > +	}
> > +}
> > +
> >  /**
> >   * ice_set_vf_trust
> >   * @netdev: network interface device structure @@ -1399,11 +1427,16
> > @@ int ice_set_vf_trust(struct net_device *netdev, int vf_id, bool
> > trusted)
> >
> >  	mutex_lock(&vf->cfg_lock);
> >
> > -	while (!trusted && vf->num_mac_lldp)
> > -		ice_vf_update_mac_lldp_num(vf, ice_get_vf_vsi(vf),
> > false);
> > -
> > +	/* Reset only if revoking trust with MAC LLDP filters */
> > +	if (!trusted && vf->num_mac_lldp) {
> > +		ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
> > +		while (vf->num_mac_lldp)
> > +			ice_vf_update_mac_lldp_num(vf,
> > ice_get_vf_vsi(vf), false);
> > +	} else {
> > +		ice_setup_vf_trust(vf, trusted);
> > +	}
> >  	vf->trusted =3D trusted;
> > -	ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
> > +
> >  	dev_info(ice_pf_to_dev(pf), "VF %u is now %strusted\n",
> >  		 vf_id, trusted ? "" : "un");
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> > b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> > index c8bc952f05cd..81bbf30e5c29 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> > @@ -623,7 +623,7 @@ ice_vf_get_promisc_masks(struct ice_vf *vf,
> struct
> > ice_vsi *vsi,
> >   *
> >   * Clear all promiscuous/allmulticast filters for a VF
> >   */
> > -static int
> > +int
> >  ice_vf_clear_all_promisc_modes(struct ice_vf *vf, struct ice_vsi
> > *vsi)  {
> >  	struct ice_pf *pf =3D vf->pf;
> > diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> > b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> > index 7a9c75d1d07c..a3501bd92311 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> > @@ -310,6 +310,7 @@ bool ice_is_any_vf_in_unicast_promisc(struct
> > ice_pf *pf);  void  ice_vf_get_promisc_masks(struct ice_vf *vf,
> struct
> > ice_vsi *vsi,
> >  			 u8 *ucast_m, u8 *mcast_m);
> > +int ice_vf_clear_all_promisc_modes(struct ice_vf *vf, struct
> ice_vsi
> > +*vsi);
> >  int
> >  ice_vf_set_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8
> > promisc_m);  int
> > --
> > 2.53.0

