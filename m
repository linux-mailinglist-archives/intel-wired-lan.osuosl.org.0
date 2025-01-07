Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 727B3A03BE9
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Jan 2025 11:11:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F1BD402EC;
	Tue,  7 Jan 2025 10:11:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EMzbLG9ORAOF; Tue,  7 Jan 2025 10:11:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C200401DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736244678;
	bh=DfVDC/aQZH7kdOFb0weFvHRhTy1RxA5Ov/POP7mmVIs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LuE7aMQ2Fe97beWg0BfX+XjCC99+Y2vsQwa1hvLs9fFp/WP+5Klw8yWdIq7iDaEo6
	 IyA8jVeFpdzOCXN2KiCLsy5nUmAOyy1Zv2M2imP5c+i3GA4LM7VT8FC6773Kp2+/Ay
	 biI3q6wEHJUi9RlLB5OAZOZ37w5RBLkRUGjKg1BerxII3M67m7KHQclB9FNd/UkTYA
	 j+//TKAkDD4jtVEsy3wZHWnmFb5SQKTz7ZugoNtYRdZF6HKawvAJNIYfNnhNE7XA4j
	 t/PftAlhXD9MCDnlqOaROmeu0ir92imet1kEWrjVpb5ZkxCs5zc1OyoOJUcV1QLUuc
	 ngESmLmx61ZBA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C200401DA;
	Tue,  7 Jan 2025 10:11:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 26F1E7AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 10:11:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 137DA4023D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 10:11:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vHVd9QS_YGcn for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jan 2025 10:11:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D2D04401DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D2D04401DA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D2D04401DA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 10:11:11 +0000 (UTC)
X-CSE-ConnectionGUID: tmchFmL4TCOQsnpiG4K2CA==
X-CSE-MsgGUID: ZuQjokRaTkmx0/6Hs7K86A==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="36298431"
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="36298431"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 02:11:11 -0800
X-CSE-ConnectionGUID: lM+bCp06TL+Btr5Klp2u3Q==
X-CSE-MsgGUID: Rgi6lseCQGi4NRqJJLaIBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="102539328"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jan 2025 02:11:11 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 7 Jan 2025 02:11:10 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 7 Jan 2025 02:11:10 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 7 Jan 2025 02:11:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H8PKoqfJPteaQ8WjmrwpVDmQTtEs8E2eK3gpRqvWDHgmED1CoihnhWCSJ+qhjdeOmH84j3K1S5qh95Xgl5cxvMHhPaFV9x/pX7fqXWRvnWcvWFELoLHWETSTUxS2n10VefRN8QM63OgIkFzPEPpxFohlsEIMxRECfclCjRpHVmKdlgzqaCp31o3fB4k5wTsqZEnMbpQ1XeDPPfw11MPF+qKxGKzEefyIB90MPoq1Va5wHOXf4j9/GFKGaT5JOhzhR3B5V8F9kWxcI2g9RUzbPeua5elzXYIhhDvZFsYQkVY8h5BoY4zsOVXDI3HVljkrAo8PfZiuXhuYZAALc9F1Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DfVDC/aQZH7kdOFb0weFvHRhTy1RxA5Ov/POP7mmVIs=;
 b=maWOWdlouB5z/Av+JRzK5ZoAEBnf+vrQP0xaJ6dBPkN4i3IgHcuqfAXW9ErRCN62yhX1rYwshZ/2PVSvQxCviX3mbPtPkx+Uydq1DDOfvbFCd21WiaTw167eSZZNVIxoYqtbc3NVn2HbF+6iXal/ptm/RGkbZZIrJ1giAYWhq9jwO3m/QkEe7FqxFNy0vpVkZZQj4Pum8kOmYD2cxo97oKi1obzILjM9MUhXSHpw7KuUGvIWeqpjaTuDZj15ClLptkw+KzdMy80gvKlNEloUGVNWBwFzVxza2pVNhS2diCzU1G9YP/bGyCNNKO5t2KVi2aRZvclNlu1+Yiv6XXpVaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by SA1PR11MB6824.namprd11.prod.outlook.com (2603:10b6:806:29e::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.10; Tue, 7 Jan
 2025 10:10:41 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%4]) with mapi id 15.20.8314.015; Tue, 7 Jan 2025
 10:10:41 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Wander Lairson Costa <wander@redhat.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Sebastian
 Andrzej Siewior" <bigeasy@linutronix.de>, Clark Williams
 <clrkwllms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, Auke Kok
 <auke-jan.h.kok@intel.com>, Jeff Garzik <jgarzik@redhat.com>, "moderated
 list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>, "open
 list:NETWORKING DRIVERS" <netdev@vger.kernel.org>, open list
 <linux-kernel@vger.kernel.org>, "open list:Real-time Linux
 (PREEMPT_RT):Keyword:PREEMPT_RT" <linux-rt-devel@lists.linux.dev>
CC: Yuying Ma <yuma@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 4/4] igb: fix igb_msix_other()
 handling for PREEMPT_RT
Thread-Index: AQHbRkHXTfKDaIcCtkaOmIOj7XQVGrMLTCuw
Date: Tue, 7 Jan 2025 10:10:40 +0000
Message-ID: <SJ0PR11MB58658982D4C335A092538D6F8F112@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20241204114229.21452-1-wander@redhat.com>
 <20241204114229.21452-5-wander@redhat.com>
In-Reply-To: <20241204114229.21452-5-wander@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|SA1PR11MB6824:EE_
x-ms-office365-filtering-correlation-id: 74f036e8-33d3-472c-c434-08dd2f038a6e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700018|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?RA6R7p58q9rvQ+U/F8Wi21f9qMWipkyA8vlQdcule09Kv/dWaJWOZtxEK/oM?=
 =?us-ascii?Q?ISWPdKgJOFYB2Dgr/qEnYnfLe2rfctomG0fNxDCo9eU6buJ+kep852jCGF0h?=
 =?us-ascii?Q?Ge9txeIY2bdoM/gUd9qZX6yW7Hnv8+tLdhVUKTo1deaNoiOpH/EQRzzACeZI?=
 =?us-ascii?Q?n8ppoSfEDgP3xqZbh6Pq6qiKAFvUgfCBVtMHMd2SIf88EevJgExTmhWLkW1p?=
 =?us-ascii?Q?XNa70nM/wxYD7ECEvjPFgdUdXlz9LFqTu0XJ3OdWVSoGSuCQHFCDpaDwolRp?=
 =?us-ascii?Q?Moh/3ruF3Un8gzRIJzx9KR0/ey/8um9dNOWONxbcSIuaxl66IJU4hRcmf+PG?=
 =?us-ascii?Q?B+bFlmr5iuRPNmypyPhJ+/4IlfZqumKhCPaERbCyhRO0aONCDGG+FRQYZXu0?=
 =?us-ascii?Q?eobhj0ABUT93K4Poa35ty3hNEGY6yPuxGCdQRHHjX0IpnQ1JNAgkU+YVH/le?=
 =?us-ascii?Q?iwOs4U4hV7hhbKMvJSq3NtLpfi+6SJnFrFdH7V9HGmaelA2Pa31P9LQsJ5U1?=
 =?us-ascii?Q?IS83ulbTp+VAZ09G1mh15WOmGJWjREtWHfJ2hFKRXGOHlshnYGLcAWybUDZA?=
 =?us-ascii?Q?0BhkiLDqrdYRaWYCIpy0iUMhOOztCNHsHIjaCpxtztmzkArMy/qO94artxc3?=
 =?us-ascii?Q?XPIo+50+r+CjkmuBoKSGtuhfGiZCMCy4BfjG4hSs04ATgRaLGqvWc37YXOeY?=
 =?us-ascii?Q?tC2k0Ky73Di2HO8q3d4Io1+yFktzy+dqatUeQhif1/R4y9zOip+yAk0prf7l?=
 =?us-ascii?Q?3TysCQogxmjfJ7LnTK7AOGaeMn4fbG9FRXkqJWlO9VsYkDkuMBzJ1eZciiq/?=
 =?us-ascii?Q?hm4yHUEn8YlNo+vGN9ykgX5R1LlmxFo1aKyZHggbJZnvC/l2BvXp8OrtoY9t?=
 =?us-ascii?Q?1lxCMaPMeKZVTCBch04Js4yRNC1mScO+Z5maQ3iM17ENeDe/CObl8Cp90N9U?=
 =?us-ascii?Q?g4b1l1GH3U8g1829yX4dvRgT3cEQ0cEHQSeUqkC8d57k/kNA8jr++RVjt6pp?=
 =?us-ascii?Q?K8a7q/5vGJY1lNy1eMcN5g37fNbgEkGxlcc93I5JxGp7rpqfCV3jqURTtsCJ?=
 =?us-ascii?Q?dsx2ydiwwZClnp9kGFvdR4cLiYcm1eMcWtsH3EyG+Qx5e8DbwTRslaAYZZlM?=
 =?us-ascii?Q?pGGg3K1gwHTQyZccRQ6JijPqzBNn/LZ2N255ASi8WZkoxwmG57EKvDZPqq3D?=
 =?us-ascii?Q?4G2grHZEzKwrkpNgkeqJsttnOaRr7OynKJUyGn0kI5fHwt1WAMfHUn2F5Dkk?=
 =?us-ascii?Q?W8iamRIBAo8PNm/QEXbIDudOYp+hg6iaY4/aPQIGS39lbjCINqfFwTtPgRRm?=
 =?us-ascii?Q?1QJqEI4PxsQw+MwEdJRsu0Fc4zh47zDQqaon/YN1iVdkt1AKJ9uFJdFZTGlX?=
 =?us-ascii?Q?yb00LD3mN3a2Vnz62n0CajRcMkmE+q09GwabF6HhN57EMJddPay9CzP2+d+6?=
 =?us-ascii?Q?C0d1Gu1z0+XDQbigi3DHVsgvr0UWs52qVm562zAbjSio7URg670xSg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700018)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?V7zPXMSz6SYkIkXwhiK7VKPNAZhp3VIuUH19zDi6RRtry7pdlt6zm7t9wxb0?=
 =?us-ascii?Q?wcRpOtgmsXfOfHZAVUULXdNVP+Lq8ZJVR+lrLYT/Yod4JyNvQzDD+pSFF+g/?=
 =?us-ascii?Q?2UCXSbr7tF2jIiCS54BY2M/LNmb30YIVW2cu5TZCogcgYRkKOmjxVrYisPr9?=
 =?us-ascii?Q?YEuIUtz9a/DdlPfQYFeKJ2eR/l+wAiuRZ6L5OOrMoDO9B1hlPfOBTd1oJZhC?=
 =?us-ascii?Q?AO7KFatfyTOobO7nV0zz/qFM8eaS9JKEmYSLWgw3jvHP4orpnQCkezSoAa9w?=
 =?us-ascii?Q?StUDVLjD9EpADDNmBcWB3Yz7ae/P6cqbCY6q6FEYDVcVNSvtPD3g1q25VDw+?=
 =?us-ascii?Q?ypH8g6SVWfofNAZsBLd7ISFP5aluVftta8zYMPBKJ7GpfVkG5Zq3hvrMr11j?=
 =?us-ascii?Q?bK3kItTjKSc7paa6aE4KMO6htWkxVHDYa1ADhJ5m6hZPDSogZn91Bz1VXfVk?=
 =?us-ascii?Q?C4lMqYYarlDKm7PRQ84rpAhHK2NB+Kqv8TQPhxsQPIpRSFrC3LxQGq5dwtTg?=
 =?us-ascii?Q?dcgKfjdwYKWusCbJkrpVFbutPtArK/a7HddqWLpw9PIB9OwE0XpPfmDFstOU?=
 =?us-ascii?Q?NrGFJ7YMkxR/0vNsYqAaMYpozWGYO+srhl4Td84lHlxJs22jxmpWkL9Lc+uD?=
 =?us-ascii?Q?v5jMaPSDZyYV1WB9XPnMUiMeQ3lTBayq2ivv6Oidy6qzR9t0w2ZkkoVNmy6/?=
 =?us-ascii?Q?8w+vTFYCJnDogHfxiKbJvXRraNYOKdBgg40fGzKwaVybKR68vMYrjShlEYq4?=
 =?us-ascii?Q?LnCEKoRBP0Myy4LYL2lmc+OHMI1SYCgaIX8kVUxlvvqqumfHxOokGFWz5ryZ?=
 =?us-ascii?Q?UZeCH17y4FVsdnZr4KrABrNH+e45QAIYrTl58UIG3AqRpPvmVr2S6ANLIR+G?=
 =?us-ascii?Q?3/Lj9O8/KFXzrgJ3XatnS3k0ZtGgUaeiGLI5Q84poRWJ8WHqLAnbmxmrnWdp?=
 =?us-ascii?Q?WB7J7Qvlx7/m1vG88AYC9CzTbSEhlcPb/2OvF64qjM1Z4sFJ1gvIsL+ivEsD?=
 =?us-ascii?Q?mrhP41rFh5oqGSJtC0eqIVeSU7Eeyz3627b7xh/VbR6De0u7VLeYeMnDrYix?=
 =?us-ascii?Q?0ceo7Au5GLOq5JqzVe9t0I0WaqZCm2VJEKEmLUGwT/vX+sYXRRbAeBqnio2P?=
 =?us-ascii?Q?IDCBg3YbXCVIswM1yB3MEXz6Sy9SMRFnCWdNetzLlDJk6c2nYfFoNJDXlmrB?=
 =?us-ascii?Q?RSIIxDV0RzxbvC/+2hi4Fca0XJmvuG1gw5+v2PU7vDQTNCOOb4GLq/qrN6hp?=
 =?us-ascii?Q?ZHmYfUwlqg5xBDlJKQypRiWTd/I1tVnb4R3756jNBN0gfeGzbtbSrneuLOvd?=
 =?us-ascii?Q?W5pRfVN3hYq3pPQZ0aCqQYp/UDs5vKfnpXbH1JOJLYAgxAu6dVrUX0K7dO10?=
 =?us-ascii?Q?0+QTlTNm8tf31NUqcTwhz2EqUrbKJmitxPHf3CvpoPsv4eiG+jQnTyRcgnKE?=
 =?us-ascii?Q?FZ+VQyfnG2MEy5fWsADyJ2V5l81DLFzFaUFDBFjdlytD9PS0WZY3WMJvgwHX?=
 =?us-ascii?Q?vzYuo/JU2fPsIZRWv51nkAO02zksWC+SbKs9YCJmWAsVjF/2lR1lVMdZqQUT?=
 =?us-ascii?Q?EOoopTrVULtjq5+2lvOVODiPgJZQp0qb+a6Vhb6/Fu8/zhCCBsese2C+vvUg?=
 =?us-ascii?Q?uA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74f036e8-33d3-472c-c434-08dd2f038a6e
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2025 10:10:40.9932 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YlX9VLIMO6xN8iU0Ot3Tr2HAnrfjqxTntWvPU6Eb9DtN/DsALZB3uHlSNets48E2/pt9NJtzpkuw/9P2B982fXRd7mzgORT9iLi13Oljb/s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6824
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736244672; x=1767780672;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Nr39+/iSmjQhSJgpDHsqA3SMQb7eGBndUFOqVBtuhBk=;
 b=B/DVjVzFWlvWZysPYGerNyLKxGBwKLGoityHFdhjQo+k2V8R8/T6H3Lr
 ymyq7y6uNHdu296w5uZVHGduNBekLbmXUmgul5oBzlqQKSkMxTQl1TId6
 /ohMItwx2x53LKL6QYzT7lyuMr8bx6OkEIKmB2B7h372POlODs+lmY7QP
 9EYZADBs785Q5s1fBX5Aeb0AMpIUP31fBDvT5Wp0nJv7yQKFGtf167eut
 RlgnKYzbvEPccJ5f3ws5hO30RNlNa4esbDc9JJiJZyb4ockQ3fgRoPFbo
 M1Oqcpq+bUjgdVDiFY4z/kI5fNsBvfmtE8vd8jpp31XMxFIMVgZ5Tq1AF
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=B/DVjVzF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 4/4] igb: fix igb_msix_other()
 handling for PREEMPT_RT
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Wander Lairson Costa
> Sent: Wednesday, December 4, 2024 12:42 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Sebastian Andrzej Siewior <bigeasy@linutronix.de>; C=
lark
> Williams <clrkwllms@kernel.org>; Steven Rostedt <rostedt@goodmis.org>; Au=
ke
> Kok <auke-jan.h.kok@intel.com>; Jeff Garzik <jgarzik@redhat.com>; moderat=
ed
> list:INTEL ETHERNET DRIVERS <intel-wired-lan@lists.osuosl.org>; open
> list:NETWORKING DRIVERS <netdev@vger.kernel.org>; open list <linux-
> kernel@vger.kernel.org>; open list:Real-time Linux
> (PREEMPT_RT):Keyword:PREEMPT_RT <linux-rt-devel@lists.linux.dev>
> Cc: Wander Lairson Costa <wander@redhat.com>; Yuying Ma
> <yuma@redhat.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net 4/4] igb: fix igb_msix_other() =
handling
> for PREEMPT_RT
>=20
> During testing of SR-IOV, Red Hat QE encountered an issue where the ip li=
nk up
> command intermittently fails for the igbvf interfaces when using the PREE=
MPT_RT
> variant. Investigation revealed that e1000_write_posted_mbx returns an er=
ror
> due to the lack of an ACK from e1000_poll_for_ack.
>=20
> The underlying issue arises from the fact that IRQs are threaded by defau=
lt under
> PREEMPT_RT. While the exact hardware details are not available, it appear=
s that
> the IRQ handled by igb_msix_other must be processed before
> e1000_poll_for_ack times out. However, e1000_write_posted_mbx is called w=
ith
> preemption disabled, leading to a scenario where the IRQ is serviced only=
 after
> the failure of e1000_write_posted_mbx.
>=20
> Commit 338c4d3902fe ("igb: Disable threaded IRQ for igb_msix_other") forc=
ed
> the ISR to run in a non-threaded context. However, Sebastian observed tha=
t some
> functions called within the ISR acquire locks that may sleep.
>=20
> In the previous two patches, we managed to make igb_msg_mask() safe to ca=
ll
> from an interrupt context.
>=20
> In this commit, we move most of the ISR handling to an interrupt context,=
 leaving
> non IRQ safe code to be called from the thread context under PREEMPT_RT.
>=20
> Reproducer:
>=20
> ipaddr_vlan=3D3
> nic_test=3Dens14f0
> vf=3D${nic_test}v0 # The main testing steps:
> while true; do
>     ip link set ${nic_test} mtu 1500
>     ip link set ${vf} mtu 1500
>     ip link set $vf up
>     # 3. set vlan and ip for VF
>     ip link set ${nic_test} vf 0 vlan ${ipaddr_vlan}
>     ip addr add 172.30.${ipaddr_vlan}.1/24 dev ${vf}
>     ip addr add 2021:db8:${ipaddr_vlan}::1/64 dev ${vf}
>     # 4. check the link state for VF and PF
>     ip link show ${nic_test}
>     if ! ip link show $vf | grep 'state UP'; then
>         echo 'Error found'
>         break
>     fi
>     ip link set $vf down
> done
>=20
> You can also reproduce it more reliably by setting nr_cpus=3D1 in the ker=
nel
> command line.
>=20
> Fixes: 9d5c824399de ("igb: PCI-Express 82575 Gigabit Ethernet driver")
> Signed-off-by: Wander Lairson Costa <wander@redhat.com>
> Reported-by: Yuying Ma <yuma@redhat.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 35 ++++++++++++++++-------
>  1 file changed, 24 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
> b/drivers/net/ethernet/intel/igb/igb_main.c
> index 5828831fd29c2..b2894cebe2c9e 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -131,6 +131,7 @@ static void igb_set_uta(struct igb_adapter *adapter, =
bool

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

