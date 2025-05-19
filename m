Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C54ABBDC9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 May 2025 14:31:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 13AAD4078D;
	Mon, 19 May 2025 12:31:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RuhgwwfoTgQd; Mon, 19 May 2025 12:31:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 197DE40770
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747657873;
	bh=y0TnV269TNY7PPTLxe+8nTw7j7BbJyg1HLSE+CjJGTA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZOYgaw3naV/XCSo1qMfs0gDMAoTiL79rrInzbgmHv+ZqxKcsQVMIzDQnW/6oYFqLX
	 C+9nBOx17RyEix7icWvJjq5IWxEiiZdlPIly+Lx5qmSCDfYZ4G8RgGXv7FSujtB1zn
	 M6E3VzDQlB6eTxHfNKUuul2TDqGstYIDpicaymB6mdS/njIcdC1fTh8qGb3IVdkakk
	 L+abEjuGgweHGjp+cNU48/Z0gKke1BgaRsuDgE31OB0lWi9Q309f1A8yIT1tpE0vR7
	 VNc8EI+WwToKm/xa+Byc4iOuukeNn/WZ+RlYkRgMEwsOJ/ZAUrY+C9YimltwPhiWej
	 jZ3VkzhVK/ViQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 197DE40770;
	Mon, 19 May 2025 12:31:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3028E193
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 12:31:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 21E79818D4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 12:31:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VIi9TodAbp1C for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 May 2025 12:31:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5A11981E0F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A11981E0F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5A11981E0F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 12:31:10 +0000 (UTC)
X-CSE-ConnectionGUID: TcNtnjNbSmaaYPk33xLTag==
X-CSE-MsgGUID: 04nGJYz5TyC2UK0V4j0gMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="52187388"
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="52187388"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 05:31:09 -0700
X-CSE-ConnectionGUID: E/GYE+plSsCrwLNjES4Zxg==
X-CSE-MsgGUID: KhbtS+HXSyK70R/50CmNdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="139869415"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 05:31:09 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 19 May 2025 05:31:09 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 19 May 2025 05:31:09 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 19 May 2025 05:31:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FNYCoBbz2zgphOunlON7jiak64hV1CF2FINMkW9xGd7aSjwz6CB1Gyzsv+1iDzVXia0KH/onj2bD3u2Y4xdU08J75RTGVL75SZ0a4zBAaFCrWL24xhJ6qYJI9SxYTVC9EMpJtudvqYg7d8iYrkgQcVJ3IV3XsC9Y5hwSxwo2Um4TvwUlpTVuEexvZ2fwfSl481bhdvdCgkGJMrWCS51ketsoTucJz2uhiUw+P46/5adreNYwx8LuUAriHOYu76bZzsKZR7au2pC+w7e5lCvKk4FVvDTUkz205T4fvkP505yCp+p0X4RQIH6XVxxWAXuNsY/g1lEfaY5463I8IMY9fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y0TnV269TNY7PPTLxe+8nTw7j7BbJyg1HLSE+CjJGTA=;
 b=Bb/HZwbTxFZKs0V4r+5bEv+VWvLNWOzkSaP5rPRK4/AD+Uh4Ibac5s3txtZ7gjcUKpIS0j+eFZOYAzgs5xjJbTd3C1QTbftuFxBGo8iCkUiqrdKl+/AKyGr2WS5534F1cEd5eDQRWGUDNrGdJ/WzsefutimMl/ooaxTHotF7Z5R9XRL83Il5VwAWqq5xgDYp2buJ/TCzCyzAxU8OEywi3r8QwTNtGeePpi+cQTTd6eP7cHDSPm072GJePZCe0xhSHnBBEkqdSOoTf12IoJfliVVvmLUIr6G8DmFGBHzk/RwJ5uJrVIbxmMy9bYvlaMfPosIw+vzsHX71qAKzAjOObQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by IA0PR11MB7401.namprd11.prod.outlook.com (2603:10b6:208:433::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Mon, 19 May
 2025 12:31:06 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8746.030; Mon, 19 May 2025
 12:31:06 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "kuba@kernel.org"
 <kuba@kernel.org>, "dawid.osuchowski@linux.intel.com"
 <dawid.osuchowski@linux.intel.com>, "pmenzel@molgen.mpg.de"
 <pmenzel@molgen.mpg.de>, Kory Maincent <kory.maincent@bootlin.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 2/2] ixgbe: add
 link_down_events statistic
Thread-Index: AQHbxYdCfVkaqbBu1UuIr2sJPYlaV7PZ5HpQ
Date: Mon, 19 May 2025 12:31:06 +0000
Message-ID: <IA1PR11MB6241F0A6ACCC078483065F638B9CA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250515105011.1310692-1-martyna.szapar-mudlaw@linux.intel.com>
 <20250515105011.1310692-3-martyna.szapar-mudlaw@linux.intel.com>
In-Reply-To: <20250515105011.1310692-3-martyna.szapar-mudlaw@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|IA0PR11MB7401:EE_
x-ms-office365-filtering-correlation-id: 10991728-5cff-48bd-16f8-08dd96d106cf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?k8VWy87xymFesu7wa52F6osYRuoFToTnRE23O0ZDPh10AjV3M2ISWcQ+hvk9?=
 =?us-ascii?Q?VyL9ilUX1Za1YKRL7CnhaRyrZE6nlnU0Vw/oEjIgLR8/wIgtDpUyHbSPCtBs?=
 =?us-ascii?Q?oZZ29zktt3P2oPeDE4I6SLD2irrO0AvGBMAIqpJUvvvuqzhNrHiowkpnmIeE?=
 =?us-ascii?Q?MBaF/SYK7t46vj8oEx8ZUAuGWco/1OwOwbIJCngkF3/GCD5sj+9RBaiwUzRY?=
 =?us-ascii?Q?Uv3nxN255VtGP7WjmDbkY9hrF+mKRRlaVSlfRUolIzyaaDjlz7EtJZlEeGTn?=
 =?us-ascii?Q?0002iJdh+MnEAL8oAwEjXbOLh6nh/ubIRcSfh9FKXmd76lNMT06D6+BSZfsK?=
 =?us-ascii?Q?I2jBQVmQYRYR5m5wE2SwaJYCrqqPNHmt1fXKhxlArc2bfJm19s266zufApVV?=
 =?us-ascii?Q?6FKh1MwMTB2Bq/dXfd29iKAYGh/lYVMOkAjAT8F/egbFwubazmNXN7iCNhIn?=
 =?us-ascii?Q?+38w6p83t73NO6axMKTTfERLb1JMob7XLgd9qP/38AvLHNTr4MiaoN3QdHmo?=
 =?us-ascii?Q?n+9uHubJlBg2LTK+jhAcSYHp2gSyhkXOU3om4zfsQ4CCJpH8/ip+i+YtFL6w?=
 =?us-ascii?Q?8LOMXipxcOhK7GKnk6LBI+CYJcq3ZGmRrjWccj1VzESNX8X0R27HB0LvZdmx?=
 =?us-ascii?Q?5XhPIhcSmUc1fk9kSrURN6ZTczNrs21fBxRw4BkgRkn6RHV5ZIAiWSOFapxE?=
 =?us-ascii?Q?2y8zTDSP0JXMl+cLXKnSuGR/yj3pIQENScEu/+txok3WDI+o9EMpD9AgO6mP?=
 =?us-ascii?Q?M6eJt61gS7RxMA1voi/AKCL5FkwwW4ZPeKKYODqkWEV5oYvPfMnbpVWm+VEf?=
 =?us-ascii?Q?/p9j5gIm8SA0ZUPi8vFK5jmnRwYWzpsEGYQY4DN3MdDzU3+Bw2wzoD13s8P1?=
 =?us-ascii?Q?ujizL4PzmYpHWtqYbtpmirUZzY2lLB/bvU9gHqjivEny0XurbYA8DnzkCprD?=
 =?us-ascii?Q?kfRz6s6fI/tyrNpNkRq3TTYpf4RKnteF2et6UDDXbJP+zfMqa/e3w+I87jIV?=
 =?us-ascii?Q?NJlmVRMEJG0D1mVxWIWtm1miLaZIlNNZJkNLVX+Lw/IoZjQ9srjNM7KsoLDK?=
 =?us-ascii?Q?WOVJPtr9ZHXh3hUMNQovI99/pH5DkUO2uL+Qo/2M/4hiPWbAT2N1gK9rvR+5?=
 =?us-ascii?Q?cisED91Pqk1cCXxc8gh93LStkbFxRW39RNewKolXCyCUyQ8d6XBoMFr7zFny?=
 =?us-ascii?Q?OcFhCvQqOvvE17G63A6vq8QhlhdGTtrvE8YvaYqHVqTMTlOXyqCubaXYlgfe?=
 =?us-ascii?Q?rxd/Nk/ENJ+1dYOyTH3RXw5U6gmGPyWZr5L8trV+Ktwnic6VWRzvytoTIyhE?=
 =?us-ascii?Q?w8EXbj2bjJIo/9zAFjpS9SkaWpIDRZrOCpI/tt4I54bVdcbCVccy3bEZPnJn?=
 =?us-ascii?Q?pdPvGAZWk5BZJdyZPyOabsXRpmASFe2vq4kbngIQlyvH5rK0e9GmQlZ0H8KK?=
 =?us-ascii?Q?ey1hEjIMwt4vEP37MHDOut8PMS00lVfvhVOOFrXoGL/mAmWaJYl+OA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?INNEP0u0WQRBEIF02/qnYikgeqQ6/LMqajaSb3+Nn9WEs89ugIMmblLowMNI?=
 =?us-ascii?Q?Fgrv3s4r+RTypF6cOMYMmLZHaw7qcwG65ExLFXC8HqP/sHvXSRjnLP79Ob/J?=
 =?us-ascii?Q?LUEEH8F4wUIXuwrSMJHrr1q1OvH62RvjU5Te8B/M/Au9JZZWkF4WD7kn+Jk6?=
 =?us-ascii?Q?GK4OqIaE7Lz/suWgMVt+5sEZQ7wPRRBh20qB/tqzS0XEYJALJTEgla+zSCBP?=
 =?us-ascii?Q?bKmO5GJA8cVOHbBHKV9M2JEW0AC24E1aWA3wcA9AlIy8fe2g66ZfBgDh8jDm?=
 =?us-ascii?Q?uR1x9yOO9j2THGXiZO5ME3SBQUjztF9z6B+AiBV58IuOZEmUnOTgn472yKI2?=
 =?us-ascii?Q?zIDkf22r7JcCZSADgb7lWHecg7i789oB2xwjguZjNag1vy32mmnLQGxOgC/E?=
 =?us-ascii?Q?YO1QtDCGKopxUigI9wMACA9DrDLVcm0i1Cj1Y+XCk64A9xvW6bR8kY9XoHdt?=
 =?us-ascii?Q?doDDfsNYZlb998V4ZdDECLLYLKz5PmmF1IF+v1JSJ9w8d/n8m3di2ojnugWD?=
 =?us-ascii?Q?6MYwmqd4/t9FWvr/R2xbXggjrIjrCvBFl54DOtAY59q8DL4mZGbwPYvUJ8mQ?=
 =?us-ascii?Q?F1ACMTo3/1x+1zSg1+yWDDZVipeGlOxybzdILswUvvaCHwU66JBhdi1aT8KB?=
 =?us-ascii?Q?irSTUh3rq4o9NH3AxvCWuy0HavdHu+VMN27sUDTY4jN0r1JWCdzMf9tsNoQE?=
 =?us-ascii?Q?QIlSJVM0rvuP1IcmYSGvsEb5nEDTgmOVy/l4BK0R7PdVyAbISgRL6I2ZZgXc?=
 =?us-ascii?Q?UwtoY8o2tPWP16sp7ySqW6z0xMDPUEF+ZEvBsMc67hEhpq2IQ97mkU5lXCI8?=
 =?us-ascii?Q?fmKSFAfZA8DGbqNxMLw5vvxH1yAWeXi0ftoPhEC5KMrymoeToAB9RYPd0Zbd?=
 =?us-ascii?Q?Z1EDz0BO7NpJyT0tnDxsAZNUt25gsfwLC4G1/cAXeYPDSBJGQHcTNwR9+yy+?=
 =?us-ascii?Q?p/Ix5GMhCAD8Acc7Z5nVtxqBrytsWAJp8qoWxunb18LIJ2lVsgcJHczMrNyW?=
 =?us-ascii?Q?xp6egCYDLU6sDdXHeRl/lXzGUgn7AJl720Uq6+qJZVaK4QERgA4cI0Oxed9I?=
 =?us-ascii?Q?TyiqvqavAs/57rEfJq99J48OyZWkNCK2HuIstd+hAgF0PMeM8N0rAqpTDhKP?=
 =?us-ascii?Q?9Uz2+njGxPuziHRHXvrtd8KG6OrfLYvMITiWQDz47AiKl1KuPncspzsExtsU?=
 =?us-ascii?Q?ylyqd6+Rs6cHcRT5sALVVp7e68CpR5EsK6ftQHYlxOHzNXgZN99JXK7mGyod?=
 =?us-ascii?Q?lAAx9AQkwxSM3FYu4Yu2JSdhe2s1gMRHWNiu3z0jv4gsqOKodYx8SIax48NY?=
 =?us-ascii?Q?TneNLJ399NE9nLRBueeEK6mkIlOJccYFopMQ0/3ki2Rfa6jG4fAT1C9oOCyG?=
 =?us-ascii?Q?L2ICUoIGnwcXPVR1A634z0aitSjCDhXXjylNaMc6YHkpOxEEpheVBFU34E1k?=
 =?us-ascii?Q?qTKhT3/9lKfT3ktzt2nD7UHmah948jdMkjObnHbpNfJbaHKE0VBaHanYlzhe?=
 =?us-ascii?Q?XJeDTN0zaWCg9ma+pQrLMK5VTZg6rjJf3LUUhlYFEAWud9/5QxHiS0abPCbS?=
 =?us-ascii?Q?YCElI/n/2MUhxlGI7ETBCGt5P0DMkToqbP2JzyJTaNPf1zLw0JU2qBa9bY37?=
 =?us-ascii?Q?L3jKAUHIj+gHcDJPy+Ck0GCDIJ3PGKm36OYxQppwkib0?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10991728-5cff-48bd-16f8-08dd96d106cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2025 12:31:06.2603 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CaKNabwwKbSAyUQ3HQt6pkp+SLH9RiED/jYhQmoy/UnmlAKENhpdp/adfMP7dvv1vEVtqmbPI+gOUCE9Kr9QTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7401
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747657871; x=1779193871;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rJrcj66FaLF9RJTr4HKh8TaTkh2rXeXVmdSU5ZBq8cQ=;
 b=nkuE3y23fTZleV/QUTfdz/QUefkUZHSFckkC3DcX58iQttRUh9qoWIUz
 SIeiOeT6hLjULOQLPXrmteDyFSvCEnXN9DlGf7Fz9aHhDDdQmhQkXKXm8
 jyzoFBa5G7jM29IE3RxvMvTQ8AU2k0Ruo8trzf1Y8A2B7aV0UwQwdED3W
 v1PVcyk0KcLZpQ5bMLIczadNcTEiLXcD1/HQJqmYnJRFpAlorsd3473Er
 BLIr+0QggXUheBfY6o6HYAkcGwFXkkfLr4Ekt9PfHXkAhxGcqtNIeX56g
 Ffsdjmv5QSs1OaKYXa7mYONY/rmgIY2KdIKlzdBi2M3TaT7N7gc8NZnTl
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nkuE3y23
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 2/2] ixgbe: add
 link_down_events statistic
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
artyna Szapar-Mudlaw
> Sent: 15 May 2025 16:20
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; kuba@kernel.org; dawid.osuchowski@linux.intel=
.com; pmenzel@molgen.mpg.de; Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@l=
inux.intel.com>; Kory Maincent <kory.maincent@bootlin.com>; Loktionov, Alek=
sandr <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 2/2] ixgbe: add link_down_e=
vents statistic
>
> Introduce a link_down_events counter to the ixgbe driver, incremented eac=
h time the link transitions from up to down.
> This counter can help diagnose issues related to link stability, such as =
port flapping or unexpected link drops.
>
> The value is exposed via ethtool's get_link_ext_stats() interface.
>
> Reviewed-by: Kory Maincent <kory.maincent@bootlin.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.c=
om>
> ---
> drivers/net/ethernet/intel/ixgbe/ixgbe.h         |  1 +
> drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 10 ++++++++++
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c    |  2 ++
> 3 files changed, 13 insertions(+)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)

