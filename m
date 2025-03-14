Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F09A61718
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Mar 2025 18:10:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 37F49605F1;
	Fri, 14 Mar 2025 17:10:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K1t7Y3u3uIRQ; Fri, 14 Mar 2025 17:10:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF98D60788
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741972222;
	bh=ZlJO81I3LmZcOhWnAWvCcPsZIPZasVeLFMEhM2gNfkU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yC9tpRiXCwKIUqGBGvTGLZS5HbbGLRyLMpmbj8tIYs8/vThfmUV1YA7zFc1UHlza0
	 r7eVnq7jbt4Y9SID3xggurZp1vSVBoG9+tvY0xfU/zyxt3VyUwiLWH2vifiZBBgOM4
	 PbQqWg0CPGAYMuHThK2kxzGg/2zqN8rDwFEOplarBecsI6zhphZxtDZZH2ggnILLV1
	 IdHsH57S7m8F1tGQ7+xOmcF68HCMBRfBk2f/6QXmWPxBIZrebu8J9hfFqxkLVhFuIK
	 CWWLpQgYLYGYR8cb0AVqh0XDQcVljYt4qKpv3dcWdgKjIvQO4jSPk3uSoIACNOJTHJ
	 ZYcQb+Xovypiw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF98D60788;
	Fri, 14 Mar 2025 17:10:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id AF7CD61
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 17:10:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8D2208108A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 17:10:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 70f2B4PjcAMn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Mar 2025 17:10:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EE6518106A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE6518106A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EE6518106A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 17:10:17 +0000 (UTC)
X-CSE-ConnectionGUID: cGfxrna0S32P4qYJG/u87w==
X-CSE-MsgGUID: 0r/yq7hwT/uxs+601MnVUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11373"; a="60676011"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="60676011"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 10:10:17 -0700
X-CSE-ConnectionGUID: kFg9lrexR2WHw3TIm8zDQQ==
X-CSE-MsgGUID: eF4wRBK6QRSy7XamcIzQtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="121289603"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Mar 2025 10:10:17 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 14 Mar 2025 10:10:16 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 14 Mar 2025 10:10:16 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Mar 2025 10:10:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w8fPliSHST5gjsnAq/46wQmSQofFdWzySC6XTXxjJnxNei/yonkwvRCnXWyBDz+IdTh6NXcAvXKWMA363/wrd7pBfZyW31amcgw6r1Faru6+ZBB7KyKaY604D/qg+QvAvi1WQzOLkbGQHYfpC7+F0LHFU+7HEo9GR5kU10iOCGyZU1jeEMwkliJ13gq3sMehM4uIkv9UUxhUVffM4JDtuvSbfM9sJYPr2l++NTgRTgdQFSFFMCcHIVq6C1AOcWWzrSkibe+zrEud2VaM3k7hb//6T2d6E4t98F0YBKwzOvsNEwgE/xkSk9mU2TiHVfFV3uT5u4dZpN0RNDDZfHJSAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZlJO81I3LmZcOhWnAWvCcPsZIPZasVeLFMEhM2gNfkU=;
 b=H/lM81eBLQtx1g5WKwFXTPJqI2iUR9CThPwnFBJSvbYVn6mYoC4iMTwyx30JpvIjOrAa3ou5vbd2wvh6KSYFXAvWh7qUIIvhL7B4C0mNVTC6ZlHT2g1U8nVe0RH58sDReE9s/zxCwHcls1SIZ4fj5SFBC7F9GByvkwJeMO+RnSQ5D9JLxbI6d4Z1ha8Mr4YoGZ/uZnGM+FMdA0JmGFDpP3bvpWBp981Y44JTCz5TDLl3SqEXZzVVBWcb5lSCnWpBydgIM3d2u5njbZmyZ6+qYb4Or+Qsoxy7B1zjg9m1BQJX9gRilfxHum1gIyg+ijTKFKcaKtunB0W9bRC4hGr9TQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by DS0PR11MB7441.namprd11.prod.outlook.com (2603:10b6:8:141::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.28; Fri, 14 Mar
 2025 17:10:12 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%4]) with mapi id 15.20.8511.026; Fri, 14 Mar 2025
 17:10:12 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: Simon Horman <horms@kernel.org>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "decot@google.com"
 <decot@google.com>, "willemb@google.com" <willemb@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "Dumazet, Eric" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "Chittim, Madhu" <madhu.chittim@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] idpf: check error for
 register_netdev() on init
Thread-Index: AQHbfwTax4c3WQMz/kuolY002hpidrNLsLiAgCdYeOA=
Date: Fri, 14 Mar 2025 17:10:12 +0000
Message-ID: <SJ1PR11MB6297819D28B291C193FB87459BD22@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250214171816.30562-1-emil.s.tantilov@intel.com>
 <20250217161703.GO1615191@kernel.org>
In-Reply-To: <20250217161703.GO1615191@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|DS0PR11MB7441:EE_
x-ms-office365-filtering-correlation-id: c4706870-f965-424d-a9d1-08dd631b150b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?ZiqSqCgV1f/vU67TKI5eHulubNwKJMOHyBx6NmjYe2ZBGkAtfYWRw8VWVXrF?=
 =?us-ascii?Q?tKWA6oYvDx6Y1mq/jXRsH6hv07NULH8eGusNSsy2bgcTx0JC5JU3dqpnUK9b?=
 =?us-ascii?Q?BNzszhttP1nE6XAz0iZ4x8dgS/pDm/zaKMnh+ii5A9oHfhaMtZFIW4mqMPx3?=
 =?us-ascii?Q?KEZq4X7BRC0yB51aExWFa8A0fulY0/rb0/pwYNvpoWM8zaGSVw/Q2HuMjyU9?=
 =?us-ascii?Q?hdDzyFgjHmI5Zr7jFI+rBh0iucEsXaMZ4XOSx/YksDvqJKh8ta0xeUMnZRuT?=
 =?us-ascii?Q?z3eChMq/NLkdMA5g+XD/w0gBIpYKY4o7VL7rpTSaNTQOUZw6wG7G+ZqD1AaE?=
 =?us-ascii?Q?qFGztnd2vSIjY+wXwTNq9VSBCt/yteJ9fKdOwKpulzcakvpELzqTqj+UZS2p?=
 =?us-ascii?Q?Hb9DOw2jRNUgv5cfhUZXpofCPq+yi2+0WFQjA5UCy61qS7XLYTfGm1FEPvAb?=
 =?us-ascii?Q?/wSuraQVrv9DefRZT/e2L+cYML6YF0hcK50ZOBcK+oWRVwhAgmZE7X5EU5nX?=
 =?us-ascii?Q?ib2IYcDt4cndoik7soxeGh0Z6COZWhhkJ2QpGTVw4a1kH+8vxtZG0pemdUcd?=
 =?us-ascii?Q?LXUhh91KHNJ8l3SBaWfpr3cYsZGddlVgs7egA93HndRfwsZFWTcLCusEBn1Z?=
 =?us-ascii?Q?prTHJDS648DUuExF0NbD9QmfjgTNrtxAU4FYSp2FxJvEGmg/eTQ1UdAFxvCn?=
 =?us-ascii?Q?/UDuqFi1jdsWBvZ0Z4dLHGnbyVQsuBxwn+GpCMOlg+0HE2xvVcAyH16Jyrxi?=
 =?us-ascii?Q?3/G9Tjaso/M3HsLruEU8s06i6l/GP2IYQfFLJ0Zs7WR7lsC0Rnb5HaYYEaBJ?=
 =?us-ascii?Q?d7orXuNEIl52nivXy3k43qoVyVASpkEfEvapy+x7vECHyosiGk+q1XRakDsA?=
 =?us-ascii?Q?B872U03BfNDg0d1Dp1wlUNhuO5QsCPIrXnT1Kl+wJZZkXdzpYWCdORT98XI+?=
 =?us-ascii?Q?7QEdrNfC1UYxoByC0eIczMW8daUhzZoKoR1zM9cJxSeUdCHNds3CJi4o66GK?=
 =?us-ascii?Q?FMMd5oKb91lgvLo2QNtpwjimCsJEGzteEUy5N56p34pgdoKgPQ6SmbaHZkI1?=
 =?us-ascii?Q?yLUKnYU1MvIcWoSCg3bkcUVjxT2jWiAU1pjqBuSRgYFHm5xiI64AgQSbx3au?=
 =?us-ascii?Q?vdBVhgTtDQ9iXkGoVFMjbwg86yWOCvufDl2v1V38xYKtMiTjpIijE0TFS2RO?=
 =?us-ascii?Q?TpCZXRZpXUQODvfnTMCcXGyzCCj65wm4FuK9gMpbVxtlVDCGpoNrFakxu43K?=
 =?us-ascii?Q?n7PBdPzjx+RllbCHgH3PnMQCkFoXGcNoNbCtLZxUZBgj7KE5fuhWJZRRUV+u?=
 =?us-ascii?Q?EYkLEvBX1yzuo+eG4LTzAjirM4jZ5wQrx6UQcUAVExYTQRBhbMX6f1e7VK7c?=
 =?us-ascii?Q?/nHeTAfovgYzL0CGFLdwF950lFWhCu7sqO/W+uu0jVFY66rOSzw9HxaQy0Cf?=
 =?us-ascii?Q?r78QmfbWk8ZkrNZcQzCdKd7Us3rEcexb?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HJAvVzyftGkPp0aXiDmKPVQf9LUE7yO8T43wgewz8kB1nKPXNihcLQPK7MAB?=
 =?us-ascii?Q?ZREAHXozovZcpCfCCuzXF602+ma6d+wWtIlOEOXYO4CzStV3VRlrYeTIMNoW?=
 =?us-ascii?Q?fyiKr6TOqKyQUep+fozBkoPeGnnbOdNH7v3D6qjZHoYPR5QjegdAeUiMBgEX?=
 =?us-ascii?Q?9gEYraUqncsZPyKuNPcJLPz3c/2Y420fQpEUi4nVHTp9kdW/UPCVQed5LCf0?=
 =?us-ascii?Q?pkoGOs1QLc7JhtQA7jmFL1sn4YhaBs+szXiy03arteL44jo9p+RSBRVknjIk?=
 =?us-ascii?Q?Tz9+Y4L/jYlqT/3XXncvDYlC27TOpACS+sHMapoknj7amW0yhnXRnWOAf1zb?=
 =?us-ascii?Q?komI/ahCHZUi2Llc5JaUNsB+ZNq3Faes5ItR0yhId4Bd1cI+1jzLq9ESjFQD?=
 =?us-ascii?Q?951a5RpSQuIU+WnceDLVBJlJSXcnu2OWMLAMNBYpDX7eQY7a/JE0ZQ505rJH?=
 =?us-ascii?Q?NNdU9K/JYXndHJRH6VekAXHy5n2ntUZHeszo92+w7I9cTsIkEXd3oNLiHERU?=
 =?us-ascii?Q?LRfcOrLhBj/ShgB/A6OvkmcGmepM+pLI3repL+7gUMjl0jD4tdxcHnVhdsRC?=
 =?us-ascii?Q?vwWfTLAH9HkSmq2QyMt0fZUG6jvY2ZGC/aPzX9tlGst5f7jpAeZJQcArwbO6?=
 =?us-ascii?Q?deVSY2aJLuIp8XJbYg+VgfqitH7Je2hifYlNbXScHWhqw+YojBGTkNritz76?=
 =?us-ascii?Q?wc1ClabTFcyb8fJEQf1nON3offRVtJP3ZP1r6Mo1Mk0r9QU6acpr39OepfOs?=
 =?us-ascii?Q?rMwTedPoRy3PxpECkIqE/S8Do90vB6KxfPBgwBbG7BbtlwakyC0FZnOpLaPd?=
 =?us-ascii?Q?SaeNzj6YijDMW1ZMVziQgGy4vYaYJSotSvQIFfHTF377rfJUT2JrvLAYNSSI?=
 =?us-ascii?Q?amfQk9QbIMYPw+4T7BERXQnO8J5D2XxZFceKrZQhKUdGUW/xtie1ATSN5Gy+?=
 =?us-ascii?Q?EtAMwUYxLSI2Z3L5lxx2a4ZGHSC6tK5qNlD0GK5utmvttXVAcx/fU0eW0OI0?=
 =?us-ascii?Q?1TlhSXSWm2s7Fpa4Kx6LFRB0ChtzDOQotBOJO1NTv9g5xtncjFO1Y7gWZIz7?=
 =?us-ascii?Q?myrpb9D+zH/kalIdOC6kfs3ItMt0sWdMQNTMJNNEI6qeEQ4NwZoL2H+VtKK4?=
 =?us-ascii?Q?t1/JpnXRXqoyRX5xQiyJsR73NRwFVWK6XhOjr/78zDDxvJmEW+I/EvEhnI16?=
 =?us-ascii?Q?orP+dwXSHznuvMAdeEw6YXS9be9SWBxtGj7JsK9xESZ0Z3xr6UzQ1YGhb6gM?=
 =?us-ascii?Q?FADB7kx7ql9riOz8KwZv+JgikA4/lrl9keeRttwuGkPH3IlGRwWFi8ecnkgM?=
 =?us-ascii?Q?73ngmKv4E9cy6OFL6k/ePjaqp+E0lZCdtKIg48n+4uDbgHRJd+4Oz95Zy/p/?=
 =?us-ascii?Q?BTS9nJPXfDHe7bIcyW1exnTd9F1/zRczJDV/MuixwzBy8nJE0pIhic9ZyvxO?=
 =?us-ascii?Q?IIbvJT10GJw32/fLdv5CguZI+5MpdaZXLTk9BGESGVNO+iJJEnmAmdO490fp?=
 =?us-ascii?Q?QRUidZZiikN6G6uD9yDTxyDuiCOlb3gFwSPL2vy4zuhsb+4XBtx52xYmbimN?=
 =?us-ascii?Q?TJSKekpNAXXcSS6bfhWTg4aH/Ez/4mZAkZB3TT11?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4706870-f965-424d-a9d1-08dd631b150b
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2025 17:10:12.4470 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: serCtIgljn7J56IAGxuDP5ItYPZiClUnvVBVw2S5/P/ThtuV3Q+EPItmOFI0OvFuXdRkRNdA34DNpxSq/u0cYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7441
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741972218; x=1773508218;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=b3UJni1JJTU1hDbgeag2c2AC04DZ4+POdLdSeAgenwo=;
 b=SkGKmWgNUuVQfteyIFjJqc22ckIlg79kRstrJlE1diMbNx5k5Gp+B2YK
 AIINODlEqRIHYZ5S5L45jPYG6XfgWMbIw3FgLT9ODvaZI8JzW/G/QKvKN
 e/X9oIijrY0cgR3imh10J32GRYNr23o3m9A2ztm9gMAXzoM1jHI0gThH/
 xioMrJz9hhTe2c86xekojkUTSH6ZN2hAjigUctaLxhSy8+TJhj9KfI7kU
 mH9l2VLG5sl12ArwY6jHxKnn6xZ6inruwp4UKhS7RLq//XT2tXx+dK9lW
 4JDaDlnMs166j43zL0eGtoN4R0wPjMtCnukA0F5yzNVX76wAkFOZgd1BG
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SkGKmWgN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] idpf: check error for
 register_netdev() on init
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
> Simon Horman
> Sent: Monday, February 17, 2025 8:17 AM
> To: Tantilov, Emil S <emil.s.tantilov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org;
> decot@google.com; willemb@google.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net;
> edumazet@google.com; kuba@kernel.org; pabeni@redhat.com; Chittim,
> Madhu <madhu.chittim@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] idpf: check error for
> register_netdev() on init
>=20
> On Fri, Feb 14, 2025 at 09:18:16AM -0800, Emil Tantilov wrote:
> > Current init logic ignores the error code from register_netdev(),
> > which will cause WARN_ON() on attempt to unregister it, if there was
> > one, and there is no info for the user that the creation of the netdev =
failed.
> >
> > WARNING: CPU: 89 PID: 6902 at net/core/dev.c:11512
> > unregister_netdevice_many_notify+0x211/0x1a10
> > ...
> > [ 3707.563641]  unregister_netdev+0x1c/0x30 [ 3707.563656]
> > idpf_vport_dealloc+0x5cf/0xce0 [idpf] [ 3707.563684]
> > idpf_deinit_task+0xef/0x160 [idpf] [ 3707.563712]
> > idpf_vc_core_deinit+0x84/0x320 [idpf] [ 3707.563739]
> > idpf_remove+0xbf/0x780 [idpf] [ 3707.563769]
> > pci_device_remove+0xab/0x1e0 [ 3707.563786]
> > device_release_driver_internal+0x371/0x530
> > [ 3707.563803]  driver_detach+0xbf/0x180 [ 3707.563816]
> > bus_remove_driver+0x11b/0x2a0 [ 3707.563829]
> > pci_unregister_driver+0x2a/0x250
> >
> > Introduce an error check and log the vport number and error code.
> > On removal make sure to check VPORT_REG_NETDEV flag prior to calling
> > unregister and free on the netdev.
> >
> > Add local variables for idx, vport_config and netdev for readability.
> >
> > Fixes: 0fe45467a104 ("idpf: add create vport and netdev
> > configuration")
> > Suggested-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> > Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> > ---
> > Changelog:
> > v2:
> > - Refactored a bit to avoid >80 char lines.
> > - Changed the netdev and flag check to allow for early continue in the
> >   max_vports loop, which also helps to reduce the identation.
> >
> > v1:
> > https://lore.kernel.org/intel-wired-lan/20250211023851.21090-1-emil.s.
> > tantilov@intel.com/
>=20
> Thanks for the update.
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>

Tested-by: Samuel Salin <Samuel.salin@intel.com>
