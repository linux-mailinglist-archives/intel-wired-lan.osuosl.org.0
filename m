Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sK9lEt/1vGkt5AIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 08:23:11 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E362D68C4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 08:23:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42C3284537;
	Fri, 20 Mar 2026 07:23:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n5tR9EVAD8k5; Fri, 20 Mar 2026 07:23:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 92F6384583
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773991388;
	bh=BUTjo6h9TlpgbpWkoXbikzGjnB74V6dErAee9NnKZF8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nDUlmVRqG47Agb6F4DHT/a/P2rvKtuRVXgx9cZA1m1MHKJHOW4KIfqRZ2/BS7qq/2
	 V9crH69g/aQ+w3wNVLvj9m6KW0iVD/U7oLn9OrD0iV5yC9rFtKfAhvuL0n9CEAYzGw
	 vs1+0B1awnhS9jk/7XzQkm56C6O5sp/E93cvwGCAguDO+wsZElLUDy23k/H67AFimz
	 XvusWhQ420PJqBSqtG6w4f9KVA8nTcrzIhBBy2eYBKPr3sJaLlzYWVgqggIunKriJ8
	 jjCH2ZhRXtezNo2wHOkuCqKOhxlZF4/JUNdBhEFNAIlunrC2YCZaYwDXePQJKyZCW5
	 DyYe/y+7XYMWw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 92F6384583;
	Fri, 20 Mar 2026 07:23:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 51A2C25C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 07:23:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 35D2784536
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 07:23:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UAP2658fo80a for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 07:23:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 40A1484535
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 40A1484535
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 40A1484535
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 07:23:06 +0000 (UTC)
X-CSE-ConnectionGUID: MLHuK4eZRqiszHLeJwPa6Q==
X-CSE-MsgGUID: h3CyHJS9Qm2ehEdZHy7qFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="75145512"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="75145512"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 00:23:05 -0700
X-CSE-ConnectionGUID: bNMkfukoQVujooptENVlIg==
X-CSE-MsgGUID: +COXl7/VS0uvEq9dYe27HA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="222300927"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 00:23:05 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 00:23:04 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 20 Mar 2026 00:23:04 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.57) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 00:23:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q+fVbTRgdmZl+5hcxuhrtwTDzP+1Mxjm4/qs/gbVl0VUB6HZ5wGsGlOdakT2N0Z4tf/WIA8t+G93AdK/21qD4gw0wtyV0zI2Subh7PFa0SJdNDgZs7Sy382+H4knBIHk05bnH9JZe/UG9WOY2rOthBloAeFNEcJIOVaNuEBWZDiR2XAyh+viOyK0ALuDC8rjOqG/aN9y9KEAgqspBbGbN/Q38Fn47rw9Tmsf3VK+NRTrBtipLSlpIVKoEBurqdmklt3p6m0TLC92YkS5uGbjk+6E2E2k2ruDhKpWSDGH/rkOxQ5EiSWH86bxCiBqsHNJKoKBztz0FUu8wFX9Y0MJHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BUTjo6h9TlpgbpWkoXbikzGjnB74V6dErAee9NnKZF8=;
 b=dpu1x63cb+a5TfTVqeRAPcCt0GxPqrvEAQ02qcVUz/Fm8Pf4n3Oj160GO4jAR9js34xkKkiGhS+aA1/MwxN8+lbm7P5uSGeuXr3RJn6xo3pf4cH/3wgf9U8h1JzeBiRE4vsmvgYiKwVjiTgQiOVDf8InWf1grkMjdSyyUikpOI/ICfZmSGLcEsk2DxthxXVy5uOAF1VXFxt0BW4KgZtY4K8wIiCmxvlN5in4NnAVaefyO2L+HkkI2K00/gc/mK9xzRx2PNBWwDTLkuy/6gJSppcbJgN3aPuSZNt1X8SSv/H5ACZrlDOJDtBgGe8gaXIbi4/ajFD7cBP67gxFn/bmJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MW3PR11MB4570.namprd11.prod.outlook.com (2603:10b6:303:5f::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Fri, 20 Mar
 2026 07:23:02 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Fri, 20 Mar 2026
 07:23:01 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "bigeasy@linutronix.de" <bigeasy@linutronix.de>, "clrkwllms@kernel.org"
 <clrkwllms@kernel.org>, "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "linux-rt-devel@lists.linux.dev" <linux-rt-devel@lists.linux.dev>,
 "sgzhang@google.com" <sgzhang@google.com>, "boolli@google.com"
 <boolli@google.com>, "stable@vger.kernel.org" <stable@vger.kernel.org>
Thread-Topic: [PATCH iwl-net v2 1/3] idpf: fix PREEMPT_RT raw/bh spinlock
 nesting for async VC handling
Thread-Index: AQHct+VVCnxDZqYRPUO+VLwoPB7yFLW3BMxQ
Date: Fri, 20 Mar 2026 07:23:01 +0000
Message-ID: <IA3PR11MB8986B4C8A0E0BB5A14BD0400E54CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260319211335.23236-1-emil.s.tantilov@intel.com>
 <20260319211335.23236-2-emil.s.tantilov@intel.com>
In-Reply-To: <20260319211335.23236-2-emil.s.tantilov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MW3PR11MB4570:EE_
x-ms-office365-filtering-correlation-id: 94602bdf-f673-4cb8-7308-08de86518515
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|38070700021|7053199007|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: ZFbZ0MrJOH0ObE261gk4npoX0gQ5A9iY23QXg1FzRBeuGGGKI7ZkttpFMvQAl/LsDUFHf0vDhpoTlRRpea6W+OB0RtUl93xj3c227CZUWY6EoxYgQ66ZAAl65ykHUtfV8SQUwdDVAAUSxFVnoguf17CJ/IEZ9yDICEH/Dvc/XJ1Loc3MjXpclbFKNpLEnh4lZxairzeMzAKFjy+K/k8jGFG86lvTZU5fVWJgYGnPIi6m2Dwg3eu+ofTv+pc8ZIvf9iGcalHH0ZCTwAQqNnx/tZw1WHOVgxzFM8KKzpjlzSv14COpGgIqUHogcSRESEPeFBFZzMj6UuNRnOGXzc3BFTuIKMO+vpzs+FhLNtsoTtiHWbD6x61U9IB4Nh8/4scWYXQB+wy8R+bU+pyKT6UhicRndHLQw1p3ZoPMZayLJkA5E3A/yN/qZxUZxfPo0hhhPDjgFx0vYCXXL/KSRMqY8Qd+qkdPexl/nO4dgQTEEhZxP1yKA27P36WUslZ3b7uDlebzjb1L4S66MK9erpQ8ENQrDs2XSnaFS4VDjhtLFheD+e7C4bWq5y99uXVf73qrWRCALZh40DxRp0EEDOfrrg16yzdu1NJsMUfEoNRTvKhf0LiAtv3AIAwlmr5NkgMOx1X/9oPNdZq/Dx5cu7xbgHDV8oGHy47IpwC1DYr7VHkWtR1Fk4bfdqCDUiLo2nSHWXe1srZtnxgBHthzX8zu0xPjgkQHXk3cD71DIIAqpTrU2wB0VxtbxDcxbn/6Hjpuu2OworJh6zNteKkdJCL7Dw+ek4YPTj6ZV4zY4YpyLJU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(38070700021)(7053199007)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NOQtPy43HrdvYDnIOtmpkRoop+bWw73t7H0hVaPzWOpbu8ZlkODkX4cR0Q6V?=
 =?us-ascii?Q?gXQWogY6F+zN6bG2eSJY4DaUZBy/pcdCathsHjnnfCMPXm8qZxqBfHWKNmEf?=
 =?us-ascii?Q?2Lvx6e5EoGT0I29D5RqzedgMk9pE25hSHT55iTr/7njW8O1Go+M1q52223hf?=
 =?us-ascii?Q?Zj8xpUVQ58GqM1HzH98Zn3FuWNP+iuk2EmOlVAGRPryZs32ksyshflXunyAw?=
 =?us-ascii?Q?bUeN0NS5O3Wia9jeCvpWUFiKKRrX7JcQAdDZPHRSngPCvu8zuRsOvfFQkP+Z?=
 =?us-ascii?Q?8Rygdu+wJ4MEz6+R082a+4HVNjRTmEYoYBBCw8tA96rptIgxm4Osox301VeL?=
 =?us-ascii?Q?hm54eSck4hOu0yy44bIz05yT+dH+7Am8z6PvdXIePqNFucUkdTQtqD/KeOlC?=
 =?us-ascii?Q?P0sdSIFAH8w+s+7I2A8CvKNIp1fD1LpzF+opNxcdNBtbk0glFINmWgSyYr3Y?=
 =?us-ascii?Q?tKgY7tIIqlG0V+ulq6PDv4cN6aJHM4lRrUaUr/ykI9qrq3Hi+7NVCZ26gT3M?=
 =?us-ascii?Q?7YFwCzX5j1fK23qIOiGO+t8fGZeh8FxZHpCl3KqeOntTKKzAdPJWecGm2sAW?=
 =?us-ascii?Q?qJt1gaZuMxFU1RIIv9nY3fZl5zfmN0MlFf/ICbEllk+BLa+Abikc+eQc4EL6?=
 =?us-ascii?Q?3T+R7qd5Tc6VPW567IhT6kxT2pzYrz0Slsi2wclrPGwkXN/nImrKpZYUjgtO?=
 =?us-ascii?Q?uh+UNpGr83Wr5TI5NlySpHH66q1VHNs5XfODlgjRlMeobyaJrH4aMpaVQNEv?=
 =?us-ascii?Q?Sh5HdZzVYyads3Vo79bFz/IkWap/XF46VReU1ofpwtw6xIb/nDn7NUttN/bb?=
 =?us-ascii?Q?oR6tKnVIj7A5E27I44QIZ72slgMia+ZQXEGhyBiAbfjx/VXxUNECEHxei0+3?=
 =?us-ascii?Q?ba5eB078WxdbXif0ks+PyVGi12i5Uj/PnsxDPoO+fw80HsndWqhZ/AD54v7H?=
 =?us-ascii?Q?6CghQZHo+2UnHq1HTVE1bVKSs7+BIqciexzihbstmpQVjkrl7pJgx5E08weq?=
 =?us-ascii?Q?jZgChdHFhAJysKz3vsIr2se22srAiHFN6CpknTWh9/YOhLAw9Xq8MVLx9SPA?=
 =?us-ascii?Q?nOe8I2aWSCQtTTyGKkAvyEMqDRDFga1FeOEGT3CsfOS0G1AqSbZ9pcUK9MK/?=
 =?us-ascii?Q?5VFBYLO24N+Z9m3hEmbJCuquVSZa2VC5JA8ryoCPzUtbx/HkJUFPln6QSedq?=
 =?us-ascii?Q?7ldgSFQM3q3Df2rhqVEoS1APj8eUOKVT2fLUAm260ZPAoK2djWM+mGgmHJA+?=
 =?us-ascii?Q?L3PeWKBkEcqePFp2sYJ6IUjwbvsCcONxttsDABEgcl7LqK3OGeOWy6kLcgYr?=
 =?us-ascii?Q?PN4mo9+53ZF5xs5HQopG4W+tYH+nH2/Ti8vconT9fFQq5RVY4ZpB0IaBUu2o?=
 =?us-ascii?Q?qGHtqX/of+Supwixl6QhsFnUC65ApFDvBHoSQZ4QTFQPFkA+OV0KsVUtx9lk?=
 =?us-ascii?Q?0VcgQuzjo9cOqm61BpS/jqPUmW+xlGYcHDSeAAn6cBPduMcGDkJSK2Lgv9KX?=
 =?us-ascii?Q?JyUqbvXsy1PiB3rJOrZOMCjExHYEYLIyXMCBTy/mkbKrxFu8t8zhxfztxR37?=
 =?us-ascii?Q?+tvJl0ogr6GqpM8kvJqHGFI0zKMkohD01PpcPbM3JWWam508vhyT3RQpGiXL?=
 =?us-ascii?Q?gWJ8Aq6RJQbuu5VjK6wvWSUm4nl56x3JEByHMyQkYbZD/pyH97YeFhTu3RAY?=
 =?us-ascii?Q?I8PjsBpka1acxxeFr3TOpOD8GMeN39vgoAeqiteJoS9I4o61bvw4yGpCDFtB?=
 =?us-ascii?Q?lApArz+xewxO8SO3USJGezBNgbtrnPs=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: WqvC35HBvujMAPhBA+MPXrF/r4dgnl/sDkPFjBkj9V6FjjzdrzHbboGL2BvqvFVZd6Pl183ousQx5XFtizje8SOruay9oGfTsE3Iwnv7atu5ulS0rOEaoa6uEy77HzlFOyNz18oyKNWv3ixZIVtzLYPzzV6QMqJI5xyoWwSoWGh4r8yZFnT9qhmR60gcpPcwQCvTStsVRyt1ChIC03p62nf+b6d623R812vlGybpoodzhBHaOUuOyXnLLy/Pnn2P0klTL/DH4PYpQsOI9iDi+ZWIRo5yfZHeXZP434Xt+Xsfmy0W8V2/ds980spMhhTtCzNMH3y2lyg6CqyITCcViQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94602bdf-f673-4cb8-7308-08de86518515
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2026 07:23:01.6154 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZdmnFQf6BqhNNfMWQQULd/gB9bASIgNv0/YvfVUBxJ2CDlMIfby5qCQKndMwzk6GScMeuQx0/FPkQzODgZL2g+TEX4XYft6JevKy+fKdrkg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4570
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773991385; x=1805527385;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MuSyiSqBIPtfvLTWay7lY6suuOzhM7ZlQnT7gJsgFA4=;
 b=k+TTYgPjHxZJTzmsiTMdSYPXpN0fIxZPwvHVyHZQv6hxLQxYaBnCUclX
 v3C86Efk0RirK9opm1GyEDF/wBZf/3w6JlPSr5OJBr1gxSUHpfzIkqflf
 q9dTLENGMlOLw4mWVlof/gJAZd43W4Z8IPVYIJ155Cl05iotgkvAaPgWs
 Ty/UwX/dHPYSWNPmRGSQTeAkV9Fb77fu4JFJvlKLvWWxtOCFsq/CpnQLg
 TQeevGOZoU0OJLYc0SdI2k7UKcml44ru5hCdtDMCXEVOciy6363szWg8M
 gESBEfMIiZ5n69LxmJI7PDiKx57K7i02FWo5rrnH1b2HXtw+Zy+TyF/aF
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=k+TTYgPj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/3] idpf: fix PREEMPT_RT
 raw/bh spinlock nesting for async VC handling
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:emil.s.tantilov@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:bigeasy@linutronix.de,m:clrkwllms@kernel.org,m:rostedt@goodmis.org,m:linux-rt-devel@lists.linux.dev,m:sgzhang@google.com,m:boolli@google.com,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 93E362D68C4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Tantilov, Emil S <emil.s.tantilov@intel.com>
> Sent: Thursday, March 19, 2026 10:14 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; bigeasy@linutronix.de; clrkwllms@kernel.org;
> rostedt@goodmis.org; linux-rt-devel@lists.linux.dev;
> sgzhang@google.com; boolli@google.com; Tantilov, Emil S
> <emil.s.tantilov@intel.com>; stable@vger.kernel.org
> Subject: [PATCH iwl-net v2 1/3] idpf: fix PREEMPT_RT raw/bh spinlock
> nesting for async VC handling
>=20
> Switch from using the completion's raw spinlock to a local lock in the
> idpf_vc_xn struct. The conversion is safe because complete/_all() are
> called outside the lock and there is no reason to share the completion
> lock in the current logic. This avoids invalid wait context reported
> by the kernel due to the async handler taking BH spinlock:
>=20
> [  805.726977] =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D [  805.726991] [ BUG:
> Invalid wait context ]
> [  805.727006] 7.0.0-rc2-net-devq-031026+ #28 Tainted: G S         OE
> [  805.727026] ----------------------------- [  805.727038]
> kworker/u261:0/572 is trying to lock:
> [  805.727051] ff190da6a8dbb6a0 (&vport_config-
> >mac_filter_list_lock){+...}-{3:3}, at:
> idpf_mac_filter_async_handler+0xe9/0x260 [idpf] [  805.727099] other
> info that might help us debug this:
> [  805.727111] context-{5:5}
> [  805.727119] 3 locks held by kworker/u261:0/572:
> [  805.727132]  #0: ff190da6db3e6148 ((wq_completion)idpf-
> 0000:83:00.0-mbx){+.+.}-{0:0}, at: process_one_work+0x4b5/0x730 [
> 805.727163]  #1: ff3c6f0a6131fe50 ((work_completion)(&(&adapter-
> >mbx_task)->work)){+.+.}-{0:0}, at: process_one_work+0x1e5/0x730 [
> 805.727191]  #2: ff190da765190020 (&x->wait#34){+.+.}-{2:2}, at:
> idpf_recv_mb_msg+0xc8/0x710 [idpf] [  805.727218] stack backtrace:
> ...
> [  805.727238] Workqueue: idpf-0000:83:00.0-mbx idpf_mbx_task [idpf] [
> 805.727247] Call Trace:
> [  805.727249]  <TASK>
> [  805.727251]  dump_stack_lvl+0x77/0xb0 [  805.727259]
> __lock_acquire+0xb3b/0x2290 [  805.727268]  ?
> __irq_work_queue_local+0x59/0x130 [  805.727275]
> lock_acquire+0xc6/0x2f0 [  805.727277]  ?
> idpf_mac_filter_async_handler+0xe9/0x260 [idpf] [  805.727284]  ?
> _printk+0x5b/0x80 [  805.727290]  _raw_spin_lock_bh+0x38/0x50 [
> 805.727298]  ? idpf_mac_filter_async_handler+0xe9/0x260 [idpf] [
> 805.727303]  idpf_mac_filter_async_handler+0xe9/0x260 [idpf] [
> 805.727310]  idpf_recv_mb_msg+0x1c8/0x710 [idpf] [  805.727317]
> process_one_work+0x226/0x730 [  805.727322]  worker_thread+0x19e/0x340
> [  805.727325]  ? __pfx_worker_thread+0x10/0x10 [  805.727328]
> kthread+0xf4/0x130 [  805.727333]  ? __pfx_kthread+0x10/0x10 [
> 805.727336]  ret_from_fork+0x32c/0x410 [  805.727345]  ?
> __pfx_kthread+0x10/0x10 [  805.727347]  ret_from_fork_asm+0x1a/0x30 [
> 805.727354]  </TASK>
>=20
> Fixes: 34c21fa894a1 ("idpf: implement virtchnl transaction manager")
> Cc: stable@vger.kernel.org
> Suggested-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> Reported-by: Ray Zhang <sgzhang@google.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 14 +++++---------
> drivers/net/ethernet/intel/idpf/idpf_virtchnl.h |  5 +++--
>  2 files changed, 8 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index 113ecfc16dd7..582e0c8e9dc0 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -287,26 +287,21 @@ int idpf_send_mb_msg(struct idpf_adapter
> *adapter, struct idpf_ctlq_info *asq,
>  	return err;
>  }
>=20
> -/* API for virtchnl "transaction" support ("xn" for short).
> - *
> - * We are reusing the completion lock to serialize the accesses to
> the
> - * transaction state for simplicity, but it could be its own separate
> synchro
> - * as well. For now, this API is only used from within a workqueue
> context;
> - * raw_spin_lock() is enough.
> - */
> +/* API for virtchnl "transaction" support ("xn" for short). */
> +
>  /**
>   * idpf_vc_xn_lock - Request exclusive access to vc transaction
>   * @xn: struct idpf_vc_xn* to access
>   */
>  #define idpf_vc_xn_lock(xn)			\
> -	raw_spin_lock(&(xn)->completed.wait.lock)
> +	spin_lock(&(xn)->lock)
>=20
>  /**
>   * idpf_vc_xn_unlock - Release exclusive access to vc transaction
>   * @xn: struct idpf_vc_xn* to access
>   */
>  #define idpf_vc_xn_unlock(xn)		\
> -	raw_spin_unlock(&(xn)->completed.wait.lock)
> +	spin_unlock(&(xn)->lock)
>=20
>  /**
>   * idpf_vc_xn_release_bufs - Release reference to reply buffer(s) and
> @@ -338,6 +333,7 @@ static void idpf_vc_xn_init(struct
> idpf_vc_xn_manager *vcxn_mngr)
>  		xn->state =3D IDPF_VC_XN_IDLE;
>  		xn->idx =3D i;
>  		idpf_vc_xn_release_bufs(xn);
> +		spin_lock_init(&xn->lock);
>  		init_completion(&xn->completed);
>  	}
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
> b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
> index fe065911ad5a..6876e3ed9d1b 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
> @@ -42,8 +42,8 @@ typedef int (*async_vc_cb) (struct idpf_adapter *,
> struct idpf_vc_xn *,
>   * struct idpf_vc_xn - Data structure representing virtchnl
> transactions
>   * @completed: virtchnl event loop uses that to signal when a reply
> is
>   *	       available, uses kernel completion API
> - * @state: virtchnl event loop stores the data below, protected by
> the
> - *	   completion's lock.
> + * @lock: protects the transaction state fields below
> + * @state: virtchnl event loop stores the data below, protected by
> + @lock
>   * @reply_sz: Original size of reply, may be > reply_buf.iov_len; it
> will be
>   *	      truncated on its way to the receiver thread according to
>   *	      reply_buf.iov_len.
> @@ -58,6 +58,7 @@ typedef int (*async_vc_cb) (struct idpf_adapter *,
> struct idpf_vc_xn *,
>   */
>  struct idpf_vc_xn {
>  	struct completion completed;
> +	spinlock_t lock;
>  	enum idpf_vc_xn_state state;
>  	size_t reply_sz;
>  	struct kvec reply;
> --
> 2.37.3

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

