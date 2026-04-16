Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QBjqMEim4GlZkgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 11:05:12 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CFBBF40BFB0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 11:05:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48776401EB;
	Thu, 16 Apr 2026 09:05:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KkPi-SGT2wqx; Thu, 16 Apr 2026 09:05:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AEE994019D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776330308;
	bh=jyhcoZ8QJY8VIcjL+Z2GHgCCIut5tN/b2TI88ZZSXNg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=40iAHQoFrIwiAE7ypqedRjOVLb6Jg6hAlm8JXAGggm3Vr2Aw+lvFQe09JReH+FazA
	 Sz4aLtxbUZp7zofzvRvRvCj0ipPaVNj168YIUlGFI6ZRXNq5bob1PCJh4I/YOd/5vt
	 67+D6LJQrO4BqGC96y6xpHJYOGMZ2SKJ4aQ2xmAuy996vt025yGEgQVtdUa/5J1B/q
	 8tMkLlAzQQKB3JnBN13YioNVk5LlcOOMlP82RvmJ1JP/vUEpmYjr42x7GYuQuC+Nzb
	 ZLnwIq3ujXCoIHgk2dEoJIKT0+7nbcID33Bj2W3HkqsAA3QuvDZf5GezXpeFWARR1N
	 Qx9mB8NIqqbLg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AEE994019D;
	Thu, 16 Apr 2026 09:05:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4C7CD127
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 09:05:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 32B4240184
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 09:05:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hVMGtoPdCTRx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Apr 2026 09:05:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 453F44017F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 453F44017F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 453F44017F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 09:05:04 +0000 (UTC)
X-CSE-ConnectionGUID: 5fA0OwTLQ+SXYQKuxAgrfw==
X-CSE-MsgGUID: 7YSo7LcSSMe/USsJq2okKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="76492345"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="76492345"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 02:05:04 -0700
X-CSE-ConnectionGUID: eY+mhVq7Qlm1p84yq9/9sg==
X-CSE-MsgGUID: MTcbP2DPSkWgh/0mafGgWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="261100650"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 02:05:04 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 02:05:03 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 16 Apr 2026 02:05:03 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.15) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 02:05:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TUTLF9WcF6frGn851nfkLzyPlMddqH/6+O4Adc680tquDtEi0p3MeNgp3x09xTEkGs9BUk3vQnQIwTIrRAxHbVxcsA4ltfTRsa+VkHjijGUxjE6DqppgQUNXKbE5Cnzy/T+MHJ0ZxiAgic5ebK+6oB73bPDEqtbvgzGuOuNKqFMiSBoIX6iAYsd57Yea1Qci2Rp1F5zwz2YXs4K4UhQ/ORORONFTp0Ai/bNmMGAvY12y48ROeYOBjwGokH5sZ2ONsVdDDWsCTsugwAmMNXrw35c5euaznidz9KReiy8D4dyvHUBktQ5khKrofDVt20UwnCrooed1th60BU0eRNoS7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jyhcoZ8QJY8VIcjL+Z2GHgCCIut5tN/b2TI88ZZSXNg=;
 b=EBMtyXHgzJlHCi3wFfTwIkeM8E3Uu4vUqCMvhsDHJYAJzg501AE8FoYmV+XuvxPczBEMIMtdVA+7aMlYUE40C1Cv9ZnD5TVtv7C8pKivRnl09DI6+L+J773px/tom7Za5p1dLGpaVqv1vP6AxMOQkfDSHGCN5OcWGOnCagagTd+84oz6G7fxGxyUiQvBFAIrQNP8rO6yrrxGMSTdLJY7hbx7d5zwdH+CKm7ORc25yn9926qoFPNxEhfIvSnFExvnar7McSenNf/Mr60NAvQhr1PSDIj4DK8oo7/9TBd6ETdUHd/EiCZDdHfMPbZpKHbRMYS0Cd5fWZ/+EfZaB/iWYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH0PR11MB4998.namprd11.prod.outlook.com (2603:10b6:510:32::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.25; Thu, 16 Apr
 2026 09:05:00 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9818.017; Thu, 16 Apr 2026
 09:04:59 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: KhaiWenTan <khai.wen.tan@linux.intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Abdul Rahim,
 Faizal" <faizal.abdul.rahim@intel.com>, "Looi, Hong Aun"
 <hong.aun.looi@intel.com>, "Tan, Khai Wen" <khai.wen.tan@intel.com>, "Faizal
 Rahim" <faizal.abdul.rahim@linux.intel.com>, "Looi, Alan Chia Wei"
 <alan.chia.wei.looi@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 1/3] igc: remove unused
 autoneg_failed field
Thread-Index: AQHczUdk7jvNzt90+0mWQQY7fQNs2bXhZX0Q
Date: Thu, 16 Apr 2026 09:04:59 +0000
Message-ID: <IA3PR11MB8986FBD15356E53E84F526B7E5232@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260416015520.6090-1-khai.wen.tan@linux.intel.com>
 <20260416015520.6090-2-khai.wen.tan@linux.intel.com>
In-Reply-To: <20260416015520.6090-2-khai.wen.tan@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH0PR11MB4998:EE_
x-ms-office365-filtering-correlation-id: a37d3ab6-d560-4c30-13d2-08de9b973cfb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700021|921020|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: eZVKU4leskHX8gdJMQN5Hlll/jrf2cTFNTvvFPvPhHGO8GeCnyTQW6v/Z8I65Lz/or7QbGeZYwHgQnuHFxru2Dh94hTM1AMBB3eO4qdK1XIi2W8nyhWJ+T5oE22IEp+LaYw7YTeiMgAPkpYqoRmq9mO9vXqv0Nc+nKpu9t8IVZyx1Hfjn1JzJVr9N2dE5g1kdDsT1qVA8QMcD64ssuxLyiP0LZSXHYnKPB8ocnGda5WnDHW8pemVnQaHcRMlLBmh5kEBdivT9kASbr3OcCXQr5YD2mN00D4nREe5KhZPq8aDUx/cqSdyfhr+dbrhfZ/nAPK2h7tPJLlgcJV83kYF36oPEP9igx/plNIHuElEuD5bJeR2EyRLTdC81NvU11nWFlW5+ZP48khfr4fnpVU/l8BzQn/JLRXm0JQSR1aGZ7myhhti2RjquAkZBUyxzy072ltpxeEU0qXCJjYxFwo2c5sKP8HFCDrKv2mZanGGiCAN74yxv2T/qHq62b3Lwwpxn28IZH/sGJ85Er4PGAvV0xPK+FWJ5NdZEaa8CHybX40/lDhCY5dKFvLVgJ2KG/wiZ1nfNJB7vO1gTioX9xAID3Rve0LHB4/OJ4+YI8dFLyS1+8EdRP6gJN0xCm/RjjZHpplPSFW1Ix5aajPn6tplJiS7jP3p4BRnL7hI9vCq9bvIXTeuX3lf2516+kcSrvlB6jHWis39EDd1q/k9YqPgLcblIyU+M142g13X0onRW+meqHC2e4MadwIjVWKsxmMz0PaVrrUI7DeCgo9F0yft6BHWK6HJNz91u5Pffb2T6YolnCphI3PPZfdTf8uZSxWr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700021)(921020)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4ioaICBOMlniC0uU0xCb9M1ZYMGF2MDyVxauxS9CjsmCR0EAuw0NusvXDTXj?=
 =?us-ascii?Q?c2XcMV0AZeMm3DvZ6VPvZB3AbNn92zBelmAg2q/PHh3PJhdVqkE7uLFbwScx?=
 =?us-ascii?Q?lYTdts40CXfgKU8B1nYR7LSZNYkuCB4kZtZqsbhD/UUNRWe+a16zToyN+hc2?=
 =?us-ascii?Q?FqaEstShXtSHwn4O2Px+QkHXlshhzaRicUfzRqr06xXLf2uTO1IysiOjwr5N?=
 =?us-ascii?Q?OWhGD/SgM66X8PeILs/h9ufzVnowuTKuJ04gY+reJ1YD/J9Y6f/1VK3FzsNb?=
 =?us-ascii?Q?69bvywE4eU16j2BZ1cey2LHZmzniNPt4/HBh2T1wCMeJzC9zE1Q0WXe35zBE?=
 =?us-ascii?Q?nzjToEvkZrdUyfHFmwAvf3HfyEcn8DWUVLnzzntWkrpfvZO8KkHugWAZLuxH?=
 =?us-ascii?Q?BTDg6EFNez9f7lCAWY31gJ7l/CfDC/3oQderKnZjD/GidQD8qDzzSkOCSwzR?=
 =?us-ascii?Q?YTJ38LsNDYY1SRAx5c2kJSnOMLtCJVjHcjd1wWqB8gBHnsxInxMLcfeAuZCk?=
 =?us-ascii?Q?FVeAi88V96NHKm/kikrQXEOk4x9+jwwklUHG+GJ2pxL2vvDcdbcASiaQ+gAr?=
 =?us-ascii?Q?Mbangh0JzaRnqBc/fZZWjpDLUUn/iYe0PY9l5I+7hR9GUvamhI1qIyc/HHyU?=
 =?us-ascii?Q?H1ZS/fdW78DqgJke55cSej4LCDkXIp3hQRpgnoO0w6OXZ7H/V+/6ZZ5+HQXU?=
 =?us-ascii?Q?j2zsrcFPvSFKxTUAQ3GTXrWBcUkAQZvbhpYbT1MGBe7wH5DU9pT2NmvfLRAY?=
 =?us-ascii?Q?wApefMBAmlcY0YO2RRxJOOQkxmRv26lN9j2fImQbuEUdCREW0nzYMeve+5Az?=
 =?us-ascii?Q?PmODcPmYlDA7x0WC/VTixXL1e1Gy026PTBGg7Awx9KFJEFZFzFN5UYWeJ2Mo?=
 =?us-ascii?Q?kNCeEDGw5NwzCxkAt0+EWzaITmCaDxGitLzogyAcVOCHoNu01OwtBdi6h8t1?=
 =?us-ascii?Q?MelBN68BiaQF3OuaGkvl/a6AlDbLfAEgGFQepuOOFmvkY9XWQK7tMSnYRis+?=
 =?us-ascii?Q?TQhKKfWf9tV6wfN/zxo3hmvb7WXzszsKzM8JK6TFSh0b3HSltcWC0KOaYqMI?=
 =?us-ascii?Q?oabSarLr1yqmFmz04lQlPax8IkmDpJDgPFVCLA41lNBEZcOlinAHzUE38a8q?=
 =?us-ascii?Q?ymO/tKHW/WOyh+IotqGRID77nKMNqNo8z8GPUoUPjkJapaTwTnaxHuon0vkw?=
 =?us-ascii?Q?2lG6C2QycztsePSo1ttJq9Yv+cKmT8hXQE1kXB+h3sTeYqx4WcZlcQz5cbrE?=
 =?us-ascii?Q?dfsXJUlYFIQgumJR1upGz5gRhX/vS7kYc4ku+Qlpeq63kPMQ3KOft8BU7GvQ?=
 =?us-ascii?Q?RgX9L5quY23HqP0ey6zRKmYDMWQh2iaa5raKrHR4iSFMt1vYRgruoua4YEPr?=
 =?us-ascii?Q?5OBpfMYY0W7g+ZrMLxawU2ol9F5y4hU7wP6LIdDxVO8LXnjaptepEz5ALYv+?=
 =?us-ascii?Q?LaZSOhtq66mtx+OALfYF1nG2Q36a68p6KY7/Yhcowj7kiGLz5AMgXYJ6wgUN?=
 =?us-ascii?Q?FP/jYyyEngweiatJZLHEN9AlVRxdi075rGw8pSuCc9FCy2KRdFmJ9zMKzCUF?=
 =?us-ascii?Q?BRBHYxa3TdvpmOeQVSwz+FaETT7VAEf5A9JRco69eZt3U2r4ox68Kgpak0ap?=
 =?us-ascii?Q?GtKAfQC1frxn+fyatk7E0385ftT+LAt94eE8nH3qNrUNC5emCm6aKsO0jF1L?=
 =?us-ascii?Q?1Kt9jQ6dVsKMPOhNX5/KsbOV+zMPDCIEkbKJNuyYlv+rbr73XJ3QeJyzUmzJ?=
 =?us-ascii?Q?yWHcKEgpfh7Mae93p259I5GMXei/FFI=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: c4txrZJEwtbjRq4hS2nkNc/172NsrB9dB5Ngc8ZVUtpp7CS5H9cBqwCzz0mf5ZN+oZQf+bR+oyPhF3cXvoyj2U4OcGETRDBHnTdaNbwafER4VRxbCNQKMAhOcYRoKf7U7Y1Egqj9V1aaGBR6hZb+sGMXZKsizdJF0n845rrGqxRTDDSLVOjD+e+/WEbeMpr1k31Z9sWXYO4NRu+7vq7xolsNshS2Jgda0+OfQ+Qcid2FfvUNRU74qHgSkUixX0Y+fs6qDnm3JzMOK5rVODsVjLrKML/ogBrSW1vWulCxkOIhCijzvbfz+70izys5c3bTQiISYSl9pK3iFPI63IsjzQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a37d3ab6-d560-4c30-13d2-08de9b973cfb
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2026 09:04:59.8297 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LezLDwGmiMZafJW5p0mJQKUfggXBPdIHE5lPFCGm4Y8mCdEPgjLqHZk8vXlowhR7MEtE5ta6q5XCeDhT1Sa9uASXO+BwzhGoMV9qq+L+9h0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4998
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776330305; x=1807866305;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9QxXlLBMextXSIgFJdpffG4dsUYMNrKnF13avs2g+Og=;
 b=T+kntHiX5/kD8aldhST72GZS26eEG7JjguO4Y1ebrmZEKOXR2UW7CQ1P
 YXYDTTdu+GCyrsDLERjObCRiaLo2BNvfyCANhtHEPsYbq8+0X1+cwYWQ9
 vFnpo3qLTDCUnpf5+59BoEatYgrIWLYoZY+EMPfCLdGdp9wczpFsRltX1
 D2lYIvysz/K12YUmqj1lRGbH0yelZ83il1mMt+j//ookMYecBSR/mJQN0
 s3xqXLOfMFgYgKpQIxsTaWqRJkTvSX84DMt/DtpTd97Pjv6XiAqt/NdgP
 fRzZA2sE8uwajsxqKVS/x7v28PqZfEdZIZvqdJx7+y3LrJP8mRccJnv2t
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=T+kntHiX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/3] igc: remove unused
 autoneg_failed field
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN_FAIL(0.00)[7.3.1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.1.0.3.0.8.c.b.5.0.6.2.asn6.rspamd.com:server fail];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:khai.wen.tan@linux.intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hong.aun.looi@intel.com,m:khai.wen.tan@intel.com,m:faizal.abdul.rahim@linux.intel.com,m:alan.chia.wei.looi@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:email,osuosl.org:dkim,osuosl.org:email,lunn.ch:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: CFBBF40BFB0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of KhaiWenTan
> Sent: Thursday, April 16, 2026 3:55 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; Abdul Rahim, Faizal
> <faizal.abdul.rahim@intel.com>; Looi, Hong Aun
> <hong.aun.looi@intel.com>; Tan, Khai Wen <khai.wen.tan@intel.com>;
> Faizal Rahim <faizal.abdul.rahim@linux.intel.com>; Looi; KhaiWenTan
> <khai.wen.tan@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/3] igc: remove unused
> autoneg_failed field
>=20
> From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
>=20
> autoneg_failed in struct igc_mac_info is never set in the igc driver.
> Remove the field and the dead code checking it in
> igc_config_fc_after_link_up().
>=20
> Reviewed-by: Looi, Hong Aun <hong.aun.looi@intel.com>
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> Signed-off-by: KhaiWenTan <khai.wen.tan@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_hw.h  |  1 -
> drivers/net/ethernet/intel/igc/igc_mac.c | 16 +---------------
>  2 files changed, 1 insertion(+), 16 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h
> b/drivers/net/ethernet/intel/igc/igc_hw.h
> index be8a49a86d09..86ab8f566f44 100644
> --- a/drivers/net/ethernet/intel/igc/igc_hw.h
> +++ b/drivers/net/ethernet/intel/igc/igc_hw.h
> @@ -92,7 +92,6 @@ struct igc_mac_info {
>  	bool asf_firmware_present;
>  	bool arc_subsystem_valid;
>=20
> -	bool autoneg_failed;
>  	bool get_link_status;
>  };
>=20
> diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c
> b/drivers/net/ethernet/intel/igc/igc_mac.c
> index 7ac6637f8db7..142beb9ae557 100644
> --- a/drivers/net/ethernet/intel/igc/igc_mac.c
> +++ b/drivers/net/ethernet/intel/igc/igc_mac.c
> @@ -438,28 +438,14 @@ void igc_config_collision_dist(struct igc_hw
> *hw)
>   * Checks the status of auto-negotiation after link up to ensure that
> the
>   * speed and duplex were not forced.  If the link needed to be
> forced, then
>   * flow control needs to be forced also.  If auto-negotiation is
> enabled
> - * and did not fail, then we configure flow control based on our link
> - * partner.
> + * then we configure flow control based on our link partner.
>   */
>  s32 igc_config_fc_after_link_up(struct igc_hw *hw)  {
>  	u16 mii_status_reg, mii_nway_adv_reg, mii_nway_lp_ability_reg;
> -	struct igc_mac_info *mac =3D &hw->mac;
>  	u16 speed, duplex;
>  	s32 ret_val =3D 0;
>=20
> -	/* Check for the case where we have fiber media and auto-neg
> failed
> -	 * so we had to force link.  In this case, we need to force the
> -	 * configuration of the MAC to match the "fc" parameter.
> -	 */
> -	if (mac->autoneg_failed)
> -		ret_val =3D igc_force_mac_fc(hw);
> -
> -	if (ret_val) {
> -		hw_dbg("Error forcing flow control settings\n");
> -		goto out;
> -	}
> -
>  	/* In auto-neg, we need to check and see if Auto-Neg has
> completed,
>  	 * and if so, how the PHY and link partner has flow control
>  	 * configured.
> --
> 2.43.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
