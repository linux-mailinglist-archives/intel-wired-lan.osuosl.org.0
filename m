Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4BpyMwr2vGkt5AIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 08:23:54 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 223952D68E2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 08:23:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B8C484741;
	Fri, 20 Mar 2026 07:23:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XSP0VQG3LJDD; Fri, 20 Mar 2026 07:23:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 95E8D84704
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773991430;
	bh=4D8m+pfZLffX9URcDiB7gJVFUxX8rCCGxnaIr3WiW24=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0faF1t6eNU1PE0wdYavVBB1klLjsKJr1OR7xfIPKjv2GNUvNls8hF6rCNMXKPRMF8
	 +8Fas5H2eJLhjGym59WRH4Uznlu/J8o/QdsxQ4j+t1otLwHnC02I9IRIXuSf2Xz9FP
	 emwo3j9KgBX91nmFst7K+liFUlf29zK3l+OLFtrArQcVJqEuSXdQeho2l+Whfa6971
	 R0Q3xy3hg/Bqf4f4GVMFFbgGeHLjQNAp5sVkQj6yKSqPmD0ke8MEzbW69jWRR3coK7
	 XB0vaCcacJ9VajvPvmsEi5q+EaicnoWRa/gBp8dqm4ZRkjjmVQPLeNBdQe/VFRLU/+
	 1bv8Rs/nAAo2Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 95E8D84704;
	Fri, 20 Mar 2026 07:23:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A8BD01B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 07:23:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9A52684648
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 07:23:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VU-IfjrqFtyt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 07:23:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EC11F84537
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EC11F84537
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EC11F84537
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 07:23:47 +0000 (UTC)
X-CSE-ConnectionGUID: aazXV2eYRb65S7wANkxzbg==
X-CSE-MsgGUID: VLQ/EGVARSawyJb/7cWgAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="77680353"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="77680353"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 00:23:46 -0700
X-CSE-ConnectionGUID: 40F/bX5TRti2Em+rz5YI1g==
X-CSE-MsgGUID: WZRn/Co1QwSTsxxmcfpDiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="223233122"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 00:23:47 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 00:23:45 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 20 Mar 2026 00:23:45 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.38) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 00:23:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EQN2lCa8tcH8iMzr+vKTEZBHlwKbLVG+v9qLD8myoOESqCPo7cZjqLGj7paVs/VphATcQ5W8y6C+DJI01Qp9Sdt+FB7yZbXujOKWNvfOdyWCm9CsknWpzcoVJenDuZXmaH6ue4PiUc43BwkGLoZWmZsC/HJmKU5t8NEDgGnHSEZ9Q5U9g5bAFj+5CRoUW1pyWD+FQL8qKKKhbKnQnCDQmbBgc33mjaDPPhyK2N/zadWGCmSVyWmlJMBGUC3nlpuO+T6YVDI0KSIgRDwtxPNraxfTyBB/xD3vlgOJ7/CfM1EHRMj9qoBD/VBiNZZbw0xjiwSCrThoG9LxXxE/Y5wuOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4D8m+pfZLffX9URcDiB7gJVFUxX8rCCGxnaIr3WiW24=;
 b=JtKyVXGaV6RNPkkbNVEcWO+PaqFw9zD2RGyMpN2cic3C5x8XaoioblcX1LDPNRhWnh1qWbjYxJ7ujhEe51gYDyisdVgNmTR2QaImjYQbLKpJZxc0768iBrHwJoIEfSvfvnzVwVa8bfX1CxzW0V4MNERR+DlUhIpKhcX5ntiHbS2pHuSHIEnZomzdTwhGticlj7RoLA6G6WzZOJ/VCMDETGqhI32wQlQ0zih4fJRKspzou4CnnhrtKYJzCRgXBdYpm57IYXltLqMmj6O8CQgMBlMpVzJfBeLSxCIK+jwUUPK6Ncau9qTIWxiBel4VuO//a8CcAexfcVJAU3MH0Gcv5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MW3PR11MB4570.namprd11.prod.outlook.com (2603:10b6:303:5f::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Fri, 20 Mar
 2026 07:23:43 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Fri, 20 Mar 2026
 07:23:43 +0000
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
Thread-Topic: [PATCH iwl-net v2 2/3] idpf: improve locking around
 idpf_vc_xn_push_free()
Thread-Index: AQHct+VVMZFcw63sfkquPSLA/5lAh7W3BR0Q
Date: Fri, 20 Mar 2026 07:23:43 +0000
Message-ID: <IA3PR11MB8986DFB6D9882564D16C0ABBE54CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260319211335.23236-1-emil.s.tantilov@intel.com>
 <20260319211335.23236-3-emil.s.tantilov@intel.com>
In-Reply-To: <20260319211335.23236-3-emil.s.tantilov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MW3PR11MB4570:EE_
x-ms-office365-filtering-correlation-id: cd8ba23c-725a-47f5-aa76-08de86519e04
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|38070700021|7053199007|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: hsMq1bAA8cbZBQEwFnEuM6T49T3ZlDii0IvUfpf8H2w0/g7JxTStrhnxAiOZCQQAOLHMk7SnK9M/08l4Q0zToW0heiuPSNqs3puFeKG7vBbHK7pszoFMEOR+szpvsAfAiOtsDQc58++nUJaQu2Q71m7qQKwbBzUzo0xsNUa2P8BrpA6ioJcpT1vCGGwzFjnC56r8yxr80uuQFTzK40ftDV6PUv0zNtALFtLRZVwNBemDq6qucDDLjLMn6cMYETazvbnhf/kJrRHHmJ+fz0rTbG03IAsweV1C8KQ2h5GoJ7JuZLlYykGpTCPPVcph9FaVsE1h77AURWc7+73fV9qax90BLuqPfdxbjOe8/WF1IuI5G+gogUBeoeeW+noujX7V9VAQ7e2v26iQSL61h3evM/WHZrrG9dhKuXRSGOV6OHtABadQq+Q89HolbPXiOcqH7TaWv8AYssEyuzLMph49iY2aRvDzi3N7pceNXTOv86HsypYOlaSr5g6SwDIEFNmdmbXbsHlrNgnffZj40L1EsscWB5p+invM9iw+Iym90sWZAYcrxwXI037FzjyBw3I/34MFRBx9yrFm5z86HYxDXc27kjlRFLSQFPhV/PIolCXxTLbwJNQIYmBJ0Gw6AWtnHLfyRbNmMESR6UoYsCfR1uU+qSiBDsl4He2XawFw53gzmD4V2x8yNC910nOprHA5oLPi9j0V/irPoSb5GKhfRV1O/RiGnDIB6dq73LGwbR/C3+fIbOv7iLzp9Z+6J2zXuKnwN8/rLmP9ResKfNnJppTRlupkOgWBlFMyKpKJy1k=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(38070700021)(7053199007)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7wt5PFx6hOyw2qlQmqvlnA1pUlqDBOnoVHWI7k0z0yLVoROnL2sxXHiPgkDF?=
 =?us-ascii?Q?lFzXPK2vjnDOQDJpKiYbo0Nfxhksf6oFsVInQPLx5+sijRtkKhUJ6wFlUGyo?=
 =?us-ascii?Q?U64AlULV4Qk5JTbxDe4thsbS/6TXL1Nx4is9b9UokJuhIZKCzDWHMEDrCP8H?=
 =?us-ascii?Q?XM+moBYgAorcYWoO6EN0JQzOIwvM20aaDVPgDoNA6YjNMQD88U5VjZnrvTCQ?=
 =?us-ascii?Q?RyrSNWAuFa/JRiJNh49cE0n2WYNexjGY9SMHZ8lf95/UnUota7F8z131JKeC?=
 =?us-ascii?Q?E5qm0XJ0wWKjNp5GuDYsnXAfYjxELYPWTg5pt7l4HP1kiINo3zx4dMLOlcCq?=
 =?us-ascii?Q?i6hjbCeG+5c2k2aZaywzmbMStvF/G+C8aV6U7BAkH5a59/ZV9MQy4PWPiY4R?=
 =?us-ascii?Q?w1AbFUb4bpwSheHESpsc8nyAkOAvN+2G2mGEIlGLb4nrhYzFNSosLPtIZY5x?=
 =?us-ascii?Q?CZiTTpkEch8xY2Y+4Kz9ZQYxywN2Wn5HRq9UcsI6bWH0bX5rl7eiwvP7MjFx?=
 =?us-ascii?Q?1IRF8qFB1gcIWl/roOP0D7uWveVS2SeTJmeyAJesHb/LcRznCZCCtAjjfF8u?=
 =?us-ascii?Q?f9YcvldKD4j5NabBOaV7dw1ZayB5LrHeqgrLXsQo/m0QV8nqOQnuWNKJsOAt?=
 =?us-ascii?Q?WAenQk+rXQ6/hYHaZXIhgqJ/7+5vqkXMeFtb7lsx/oxNTjZzuGzForr1PqVg?=
 =?us-ascii?Q?bLa9F6/wOc6nNguZyf4wSzBI5Or9YGnCTyvAh3wGMFwSCWfhL78yq64s5SvV?=
 =?us-ascii?Q?mFA4Kqc+/9YHonqDF9lI2b23o1OGTxovDJIQXsVcd6I9fna7IDTtT93Xlt39?=
 =?us-ascii?Q?L6fnFMpqgWJANwQE7pAPySFAlqIyqJx0gkN6H7+MTQDXWuEHcUPQFUiZEIja?=
 =?us-ascii?Q?51T+AL10eXewKG2uJyTI06HzAsTIzLlg7395i7uSpoyf5+1QCSMWVVI5yk6v?=
 =?us-ascii?Q?f5DVLu0LFrgKnfc3EIabYzKyiL/jAGAStPVUUd8tIT5DJrvi2JWsS2RnoFfk?=
 =?us-ascii?Q?n4JNqFn5zB3VbrDzGNGvrx/fAGRe4v1pglLPCRmoXTuTxv9IU+QQqJQSyMey?=
 =?us-ascii?Q?HKF01M7IAVM7JnTBP5qDdQgJ3or42psI2hvjLLTRti/Zs/IzZ4NwXuKoRV1n?=
 =?us-ascii?Q?+PXWHdAXI/Hebk56QZ6TjDKiy7mbuECQTTyUhwIasD34EzY7cLo8i7IofizA?=
 =?us-ascii?Q?7D0bYPbHZR+q8ldf3u42ZPqCte0Qecim//JjRUWWpeVobCmJUiMF42Yx3dlD?=
 =?us-ascii?Q?0dshXREcdQ+vTRKCRVuShrcjG/Uyy3W4Fd9ukqxQ1UdjX4EPK6QuxmNHaSHO?=
 =?us-ascii?Q?Kv6Losvir8YmkiHlfOalEhrb2zPR7z7oTpsestQzC6BmdZDLjuKMNTsAtknk?=
 =?us-ascii?Q?Al9hWy4Af6+vHOkuBDeJ2wQhEWjrrIDpmZBbcVXpAUeQu1x3qBSEcXgy0RWU?=
 =?us-ascii?Q?wVKIzkBxZEiSnjSSRGJRSGeJo8kCwl9ToQ0CaMNVCuSA/Za7nc5OiP9nTFhy?=
 =?us-ascii?Q?2pPC5MarSxbe1pkuWYinqDJUuASlat3spxMdX5LmiwDgQVApjT3aFUSo50Jt?=
 =?us-ascii?Q?7ySeFXe939YFOp/9lwIak7iBOwECbtvI5T2C27AulgvQAxB/B108vi97IRyQ?=
 =?us-ascii?Q?4ufDQ0+yZ7XhrDRpA6CoOEmLCn4vnuoRlMTot6bqW13Tfae3+gTIKYReDB4v?=
 =?us-ascii?Q?LCfKFN+540jgZxADsnmVRPwBMWCP7v4+rUazLADrDLI+UPWUHJSq6wujSgjx?=
 =?us-ascii?Q?rS7Whyfjo+41XCUAaAAfMSmuTPe9Xrs=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: cbqTGWpgAQJmAWkMzZPJ4ZDu1od0xx4QKlelTBBDlAJf1P7Dx7T6npuKoPgiaAgN3IeS+wXuyIjCyXkd6k24Cnw0vEA5DheytcAl4C5sR0TD9DAtjPLMlUFcnsp8RFfrbjwYLaPnRGB/DeeS0n4xyjblH9juini9u39m7qENp3POQa4lY3Fvs5Frwy4dIgarEwTlKaj2Wck2GCYM9sdHnKxidi/K0iWopQAhkl4UAA8YNH81rP8g3In9+oh+u5x+N3f64qOHtctqLug4yM0fg4nnyZHvRoELFE9UermKilCGV+8dm9gR8TsfCgzfOcD3MMO+Qbme5ne+EWqBtWeWGQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd8ba23c-725a-47f5-aa76-08de86519e04
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2026 07:23:43.4195 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XSY2l10ufYDip9MnucyF3sXFuwlM6vJvFTnpcxsIW3gLv1ru/ROs0NDi9BBrO28BKUtv9eqD2+IDFpVv+Sj5sXwZRMZNVu+d33LR5vz+++Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4570
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773991428; x=1805527428;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=83wL1tmydkiu+S4R5OxljOPaW4hHVbf9EdRv26Niil0=;
 b=mjVb9MV4DZgDL3cKA5zm3OxrkvEsji/4KUBZugfBdrZJDrWj3kqlEyCu
 QvmWLsYEjUOi3JWpz7IUZ2HupLFoj288w0Ukc/Mc8/3w+HdRL+6iBRu9J
 0zmgaFLqwjg1FTZ6iyNzRJSuPr88M4pcRcyFoWw213JzA6Yr7GP3JcmAY
 8slZbg7iUEHUM3srVueoKMj4ESq2Vx5FNPdv3m1XbXJU79I+QPZtiDbdE
 FYNRZ7/vVZyyYfHzthZg9qhp5AG6RQGUC+5ADaagU568My0Aqg80dtYQG
 l6ZOOl+KgPZI1qWoEX7fDI/twVEphogHjtMj80YVA3Ct/LKWGcg0QIiw+
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mjVb9MV4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/3] idpf: improve locking
 around idpf_vc_xn_push_free()
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:emil.s.tantilov@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:bigeasy@linutronix.de,m:clrkwllms@kernel.org,m:rostedt@goodmis.org,m:linux-rt-devel@lists.linux.dev,m:sgzhang@google.com,m:boolli@google.com,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
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
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 223952D68E2
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
> Subject: [PATCH iwl-net v2 2/3] idpf: improve locking around
> idpf_vc_xn_push_free()
>=20
> Protect the set_bit() operation for the free_xn bitmask in
> idpf_vc_xn_push_free(), to make the locking consistent with rest of
> the code and avoid potential races in that logic.
>=20
> Fixes: 34c21fa894a1 ("idpf: implement virtchnl transaction manager")
> Cc: stable@vger.kernel.org
> Reported-by: Ray Zhang <sgzhang@google.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index 582e0c8e9dc0..fbd5a15b015c 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -402,7 +402,9 @@ static void idpf_vc_xn_push_free(struct
> idpf_vc_xn_manager *vcxn_mngr,
>  				 struct idpf_vc_xn *xn)
>  {
>  	idpf_vc_xn_release_bufs(xn);
> +	spin_lock_bh(&vcxn_mngr->xn_bm_lock);
>  	set_bit(xn->idx, vcxn_mngr->free_xn_bm);
> +	spin_unlock_bh(&vcxn_mngr->xn_bm_lock);
>  }
>=20
>  /**
> --
> 2.37.3

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
