Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iJpPOCx4ummTWwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 11:02:20 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CADB42B9982
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 11:02:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6911F60720;
	Wed, 18 Mar 2026 10:02:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VU7Yrivo4srp; Wed, 18 Mar 2026 10:02:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B6E8D60738
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773828132;
	bh=S7dbzR7QtmACasPgBEnAgRVUYLNNPq01j+e9E9cOp18=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SKvIvHLpZPKuZVB2Y8MZpZUcpMEVwg0P9GKZGO/WpO/HBP5ZBzRy4vrO5MdovxlLk
	 NBk+4J5AWCjEjmx3ze35+xC7+wnBY0xu4IhywOe1kB/hFEZPKGkVG05V2975qsSlRR
	 KYQM/r3o3WqguDO+Neu190Avl/snoJtYvLCoRI7YSHCfGK/RTeEb6oZj83ALGQ3Hev
	 OixBnMpoH5KCxYARp1F/O6V8VDPQqpSM6XQdNOkCfql3TZLCNHKD31coPcaiqqOgoJ
	 XYJHMRFXac7KGHYPbbBo+cSgXe2pVkd7xln0Kj5pOOEdia0bHYuT1mUHHNaQFqIuLN
	 lsvRz80GBrQUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B6E8D60738;
	Wed, 18 Mar 2026 10:02:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 489791B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 10:02:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3A5894080C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 10:02:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nDTXsWu0g9qx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 10:02:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5A4FF40802
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A4FF40802
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5A4FF40802
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 10:02:09 +0000 (UTC)
X-CSE-ConnectionGUID: oGTz6JxOTP6Nx6xKcYfgTQ==
X-CSE-MsgGUID: Itq9VBwISUqzxpMhNm24Rg==
X-IronPort-AV: E=McAfee;i="6800,10657,11732"; a="92259535"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="92259535"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 03:02:08 -0700
X-CSE-ConnectionGUID: GSAwOA+2Rbect30edeJ4Fw==
X-CSE-MsgGUID: n/kKJeQcQA6RnRrS+akFdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="221812525"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 03:02:07 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 03:02:07 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 18 Mar 2026 03:02:06 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.20) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 03:02:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F4Z81aIV7+P9JWEkwdEVep848eRj4xLEn2C9yDgMSyKVy+JUtNES02szjlYlYPzq1J0IxR/S1RUeXOyVdobespnZLyWCjCqgnbfi2VJpQq8A/xwrdPpJXwzVzjyRior8AKX7BXfey4Y/Xbcs/nXXQ5Z88X928EmDBpXeo0LeQQTXN8dHgW5aqB3hMfn/qq22tej3tk1syB5M7lWmJMwl8D6NhjEDW9Q3BSNX0dc2LaI7JYG/P9RsUKShFx5sQ3H1a+gaEErYlthiRiIGYZLm10+Ft9yzRm6Pn0mk1GaV0krRr4zEcEPtCejpNE/OFZxLfgcuFfYa/Rzp5Wwp7U9mQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S7dbzR7QtmACasPgBEnAgRVUYLNNPq01j+e9E9cOp18=;
 b=UQo9RFX03MrQRic+zpBuA3kz+5jApWd7/tWrgCiHcy2wolXPUKG0zVf4S2Dd/rFI1cMObGU98rpAVKHpk7npSfO3o9ja5m6CevUyR6Maw37lM6OoIx7rDnid2h/D/uXJDPc/Qe7LYgI11JPLriUrAxNNIuxCRgJM880+ue/r4sZv7VquDc1TCVurlHOsUXutquwbZt8RnMuB/Hh/fnVFBe7eoC4xT3tcnS4GQ3TkMcALnMGf3j+qY6IAOEQ80W71YSByh+aRdX4LAVU0yYVtz0zMqjKiT1tpyol3jYtErn8nrOsgtftDTP78/mzM6GaDnvAFeU61WIOo4zbcjJ1nqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA1PR11MB7293.namprd11.prod.outlook.com (2603:10b6:208:42a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Wed, 18 Mar
 2026 10:02:04 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Wed, 18 Mar 2026
 10:02:04 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "kuba@kernel.org" <kuba@kernel.org>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "richardcochran@gmail.com"
 <richardcochran@gmail.com>, "donald.hunter@gmail.com"
 <donald.hunter@gmail.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "horms@kernel.org" <horms@kernel.org>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 7/8] ice: add Tx reference
 clock index handling to AN restart command
Thread-Index: AQHctrdDZQWZrdHOOU2Eg3dsQdBx37W0DwLg
Date: Wed, 18 Mar 2026 10:02:04 +0000
Message-ID: <IA3PR11MB898675A56BEBCD559D2FEB4DE54EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260318090654.611349-1-grzegorz.nitka@intel.com>
 <20260318090654.611349-8-grzegorz.nitka@intel.com>
In-Reply-To: <20260318090654.611349-8-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA1PR11MB7293:EE_
x-ms-office365-filtering-correlation-id: 6edd1f45-b916-4746-b01d-08de84d567f9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|7053199007|56012099003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: 0sNHK3YPBwU26hlqwbMGatSZIWgmRh4aUjNSAzVhQ0ZSVK3hlPMPePg8d4NLrJzil1eB2z6qAHB4kq5DgYIA+sRjgzIHniSzBL3jNxVyG2NUESAYWF9tpPc1dXGu2RlSZ5O8KKG34LT2UjkNpvdGklrmeX6jrBvo2xge1e9EdQFXFeo7Sm/uQfBJwhcicJ1UOglhtPo2Nu7iUytB88NA9DLW69sQ73V4j0qVLZW3tsNskPUEatfFuEJ4ALr6tKwYL0dm3GGjxcmu8z2Natfuy43B3vCoR0hPNX3vxBCczJiRyNQnO6dpOGs/GPk1mGtt3E+DgOyGVkNTadcYZavNz7AtS3szDUMfkyfAXjXT5MC3esuMLb8agIjQY1vZOie4lExNe1FygkQvQ5zlpKOEJ/2Xe1WMhLx//ncPSnw7QlnQZHgmhaf8cfT/dWIPXqvzC6no0XTgJF4NWQ/ygrND2d5zNWSsJM614uUEkjtJtY97LVsPGmTcbBAxZYpbvpSmGCP3O8CHfihWLBgK6vjjAuwBQ4P2Mhl2iZf1LItJaNLpdwP7rR3VkGPttcOhxCw0Lzybqjxf/De+J2TEXo4d+MNekLiktGiArOAfJcuMwM1hcfoGAtBOLPVsmHDUKUvIH9xR28YuSQdtvsQ0JExn4rficHfGcoSD/KgZIRMbF1CTE5lOlfUwXr9BU2vOVlV/87QvhvwmGClZIwbtmG4m4PTCNVgePGjpvXMvn/gX3RnBwKBJ3XgyttQJ3df7XIRCHoxOeL+uwrjjJ3l5jWUrZCRYPob/GNZjk5eUxFmihik=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(7053199007)(56012099003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?eoqOIuEdixvVBoMQsdNJgg+dyqUE15+gr9KIW471TdHKCPNq6fWNUlgHEftY?=
 =?us-ascii?Q?/aYZ/TCOkahSoizidwsBQTPjMM+0mXeJkIi/tsR0AvvVR8tiz/dCJq958e3I?=
 =?us-ascii?Q?HkCexJ8iad9suSZKmq7gdhWgp9HgdVpijUHXLZQf5Z3p7GLIzjaDs0Z+feZ3?=
 =?us-ascii?Q?lzK9oIzPPwAf92lwuLgUqtjystKt86PfrEL8SnLEY6MneQiK+RcwETF5o6P/?=
 =?us-ascii?Q?nXPqcfx3FAnXc3KOANNdRxO/kuFnRn5Ms06TxBwkM3dt4d1IFDcbpJQmTkDT?=
 =?us-ascii?Q?5eeUqwYF2USNIFqChSdebFuG877umM850nxpRxmjWXjFMhUuADQuIKtmH10V?=
 =?us-ascii?Q?EOmcBXZGwXv+os/jOaiFeeBbloQzrc0tFdtrcH5qtURqK4lUGhrcoU+xrh+u?=
 =?us-ascii?Q?8RhqAb+Tp+ynb2HL/JiKc7CK0EBlAK6w+PXgbiYVcbhIQijhhwfgsjdNhwbK?=
 =?us-ascii?Q?A3For+XFAlkn0xJ+HQWfG16Hg9Yf/CkGZZErMv2woCF+I3M8FhnuZOjq/Kkf?=
 =?us-ascii?Q?WVyLeJDztZo4NHH4neI9A8g1dhSgYcPq22oxLoYoF+0TKNoCCWTHqepvdCdR?=
 =?us-ascii?Q?qfwwhN2ZRwHFZFMUvZLeu3Rq4Ulwkj2Cf7KYgqFqCzgjeAAFY4slOVnYVar6?=
 =?us-ascii?Q?fjGXM3+X6NmsyQ3PFe8nhG4zmEG+gGJtMCrdqK0rFsqiei4NeG/wsniyWTDy?=
 =?us-ascii?Q?RhsYDutPbbFvtyRfw6qz1SwttFRhmSYY+OxmkRaz/cf8HoVhLeUi5jBVzxzd?=
 =?us-ascii?Q?y5KgGS62yzcxms3KKMhbyA7rx9Ht2BrXAfS02P3sn31CIvlCEoFb19RdWT7T?=
 =?us-ascii?Q?N/LyyYN2PzNqHIIghtY+kzwAaWRe1NDDFlIfnFmmAax+bUQCkmTULEy40Z+b?=
 =?us-ascii?Q?PHRcof/570NxWuB4+gEuQF7E3DJwR0bpXKHJxRnhaIW8XbeAoFaoVppViWUP?=
 =?us-ascii?Q?e5eWz4vnmVsDvwei8DqhKc1fOLnWFWmwvi87gfWK2gocKv3E87HC1e/YyArY?=
 =?us-ascii?Q?YbWCX1S19SJ8RxGVwIxk28V9VK//msTdBUt3Mt9tT72+gqt3FSFTkl0SuGvj?=
 =?us-ascii?Q?oNVFmsrSKY+TupuSVLp82wY0q25nzck2bROIXdEVya5fbwimcVgtPd9qb6yG?=
 =?us-ascii?Q?VFTkc2+LsSOJYOv7oojfgcLYsmySa3xSnDn3hcNzoN71i1sOsmWwInvWuWDj?=
 =?us-ascii?Q?LiFPdvvbXZ62GUH17/Sp2WYKQU72UkcR6uNnphQSslx/q/qNjOKe4xEVTI4G?=
 =?us-ascii?Q?PElwEtE7WEdmxuN4YVcFBQEkQrrh45LQ6RaEANM2z8P2s8j10EDe30EQLl+Q?=
 =?us-ascii?Q?8jYDcjXkSK1uBkGZ+816fBkg6I9LntxVpQl7kH5IXSPzF0WaLHjx1l4ad/V6?=
 =?us-ascii?Q?uP5jtgqIWL08QOdv4n4DyrQWgyWmk2Hx5ptIrLxLRzk0OsOMTQdS0sSZgj+0?=
 =?us-ascii?Q?s/eUIjH7KPcV1L0cUdAAWQJbvs1BtEuPiVn99P2ICIcjeTGUEYz4vZHf0GuZ?=
 =?us-ascii?Q?0Qg8/BtYtqjTsXjPRe2GHjFB2wgFO+TSCSoSQ6LgFhWZKSjdC8qzEBZl97Mo?=
 =?us-ascii?Q?Lbwpw0DB/Dn99tIqd832yOhqmeF2gOLb/7NIQaj582RXau10OIXNsRHwtw0N?=
 =?us-ascii?Q?x9UPX+J3WxOvHsDNgFfQhPxwHvtMRDp2hO+RQRwPG8xK57T4c8pdSByzBo8Z?=
 =?us-ascii?Q?ggPfxRZvK08c7GoO6vJLP9tsiTB9cLcOIoK7Sd00zoC3Y415YXhGfBh4G09C?=
 =?us-ascii?Q?s9FLxX6QB2a2oj6jwfNPjui0S0GBTAY=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: R/hvUsaqyDW7PLGERhMoj1/aZJTQar+3HW6+08tHDm1HCsZTnMReIVBGfSR9F00hkKXPO/wDknqGsYSJ336t3c59affS0F1Y+2KdWHtCxW7Qb9QrfcIeYeCPByHlHAKCtXLilWxIebm4S0LLFSArNRerBlXrnehZ5RQmHv8mmZPFJzv6oiW23SPnCpGtbsgmdxrFOufzGGrsWaq5RZYHLJ1hxGpt6O5VKAyEeUUYOQSTrA6vfsnU5wRtxguOxZDSi4JXQn/JkRUkIf/D3uoyk5KNOS92e4EpaZVRJbtJw5J9o1yZ0XNzd3R8LRvMBZFQjU3ijnuHeTHNLT9KXkgoCQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6edd1f45-b916-4746-b01d-08de84d567f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2026 10:02:04.0464 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: joxLD/jdVOwro7UHBdhdFsbx4sIE4hEOnyiUz6hT5cbG0VOE0w4syKrvojmmlFTOmeoLomchZfUoVDNIy44J4cZHK1xRiWZXVjRpo7k7fho=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7293
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773828129; x=1805364129;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ccYnUUo8LnhHUUrjnPJApi0WWsFHseLGrmHuMPvoNMQ=;
 b=AZQ2IV8RPYETHQIxBJl+S2hkyBMii5qxDlVtPNzoPH19XegSLbyndFbG
 XY+5K6T2YQ+6utzwVmpra3VcLg36Dgm2aVWucZi5dsorpy5MNUuGR2WDn
 TkYMNo9LWYokGx+8G9zrZzZkOQloR3pLeGzpUOTre5BsCwx5h83jUn9Zk
 xKFSxShONW4kidACij1PXjYk+08EiHHQFNIoHMharEbnfmM8ypANlsAPK
 8XkzoVXeCppEnRATMoO84rEaCMwCYSSLPPGz3Rq1eCKGowht794RlduLT
 /4LwnRbpDpW1/zA3nSAsgutdFLcsmFeaN+CF851uxF3h+fXKmrMUJyStM
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AZQ2IV8R
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 7/8] ice: add Tx reference
 clock index handling to AN restart command
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
	ASN_FAIL(0.00)[6.3.1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.1.0.3.0.8.c.b.5.0.6.2.asn6.rspamd.com:query timed out];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,microchip.com:email,intel.com:email,linux.dev:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,IA3PR11MB8986.namprd11.prod.outlook.com:mid,resnulli.us:email,lunn.ch:email]
X-Rspamd-Queue-Id: CADB42B9982
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Grzegorz Nitka
> Sent: Wednesday, March 18, 2026 10:07 AM
> To: netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> kuba@kernel.org; jiri@resnulli.us; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; richardcochran@gmail.com;
> donald.hunter@gmail.com; linux-kernel@vger.kernel.org; Kubalewski,
> Arkadiusz <arkadiusz.kubalewski@intel.com>; andrew+netdev@lunn.ch;
> intel-wired-lan@lists.osuosl.org; horms@kernel.org;
> Prathosh.Satish@microchip.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; pabeni@redhat.com; davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH net-next 7/8] ice: add Tx reference
> clock index handling to AN restart command
>=20
> Extend the Restart Auto-Negotiation (AN) AdminQ command with a new
> parameter allowing software to specify the Tx reference clock index to
> be used during link restart.
>=20
> This patch:
>  - adds REFCLK field definitions to ice_aqc_restart_an
>  - updates ice_aq_set_link_restart_an() to take a new refclk parameter
>    and properly encode it into the command
>  - keeps legacy behavior by passing REFCLK_NOCHANGE where appropriate
>=20
> This prepares the driver for configurations requiring dynamic
> selection of the Tx reference clock as part of the AN flow.
>=20
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 2 ++
>  drivers/net/ethernet/intel/ice/ice_common.c     | 5 ++++-
>  drivers/net/ethernet/intel/ice/ice_common.h     | 2 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c        | 3 ++-
>  4 files changed, 9 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index 859e9c66f3e7..a24a0613d887 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -1169,6 +1169,8 @@ struct ice_aqc_restart_an {
>  	u8 cmd_flags;
>  #define ICE_AQC_RESTART_AN_LINK_RESTART	BIT(1)
>  #define ICE_AQC_RESTART_AN_LINK_ENABLE	BIT(2)
> +#define ICE_AQC_RESTART_AN_REFCLK_M	GENMASK(4, 3)
> +#define ICE_AQC_RESTART_AN_REFCLK_NOCHANGE 0
>  	u8 reserved2[13];
>  };
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
> b/drivers/net/ethernet/intel/ice/ice_common.c
> index ce11fea122d0..de88aec9137c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -4126,12 +4126,13 @@ int ice_get_link_status(struct ice_port_info
> *pi, bool *link_up)
>   * @pi: pointer to the port information structure
>   * @ena_link: if true: enable link, if false: disable link
>   * @cd: pointer to command details structure or NULL
> + * @refclk: the new TX reference clock, 0 if no change
>   *
>   * Sets up the link and restarts the Auto-Negotiation over the link.
>   */
>  int
>  ice_aq_set_link_restart_an(struct ice_port_info *pi, bool ena_link,
> -			   struct ice_sq_cd *cd)
> +			   struct ice_sq_cd *cd,  u8 refclk)
>  {
>  	struct ice_aqc_restart_an *cmd;
>  	struct libie_aq_desc desc;
> @@ -4147,6 +4148,8 @@ ice_aq_set_link_restart_an(struct ice_port_info
> *pi, bool ena_link,
>  	else
>  		cmd->cmd_flags &=3D ~ICE_AQC_RESTART_AN_LINK_ENABLE;
>=20
> +	cmd->cmd_flags |=3D FIELD_PREP(ICE_AQC_RESTART_AN_REFCLK_M,
> refclk);
> +
>  	return ice_aq_send_cmd(pi->hw, &desc, NULL, 0, cd);  }
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.h
> b/drivers/net/ethernet/intel/ice/ice_common.h
> index e700ac0dc347..9f5344212195 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.h
> +++ b/drivers/net/ethernet/intel/ice/ice_common.h
> @@ -215,7 +215,7 @@ ice_cfg_phy_fec(struct ice_port_info *pi, struct
> ice_aqc_set_phy_cfg_data *cfg,
>  		enum ice_fec_mode fec);
>  int
>  ice_aq_set_link_restart_an(struct ice_port_info *pi, bool ena_link,
> -			   struct ice_sq_cd *cd);
> +			   struct ice_sq_cd *cd, u8 refclk);
>  int
>  ice_aq_set_mac_cfg(struct ice_hw *hw, u16 max_frame_size, struct
> ice_sq_cd *cd);  int diff --git
> a/drivers/net/ethernet/intel/ice/ice_lib.c
> b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 689c6025ea82..c2c7f186bcc7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -3769,7 +3769,8 @@ int ice_set_link(struct ice_vsi *vsi, bool ena)
>  	if (vsi->type !=3D ICE_VSI_PF)
>  		return -EINVAL;
>=20
> -	status =3D ice_aq_set_link_restart_an(pi, ena, NULL);
> +	status =3D ice_aq_set_link_restart_an(pi, ena, NULL,
> +
> ICE_AQC_RESTART_AN_REFCLK_NOCHANGE);
>=20
>  	/* if link is owned by manageability, FW will return
> LIBIE_AQ_RC_EMODE.
>  	 * this is not a fatal error, so print a warning message and
> return
> --
> 2.39.3

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

