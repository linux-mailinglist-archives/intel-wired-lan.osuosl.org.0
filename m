Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B48E3AD4505
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Jun 2025 23:51:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 433FD4210D;
	Tue, 10 Jun 2025 21:51:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D1vFbvZjqOJ0; Tue, 10 Jun 2025 21:51:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71F104208D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749592302;
	bh=C2W5HSOLf3kIBRhX3s5KPYPCIBqqTb1erynmiXEGEuk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qhWatpW469tot6ZcMiKq2og6dKk90xcbs/L7/4+s2YEiyE8+cZy/giCshGOu19DjC
	 brmAJ8ZDg+sg22LPRHo0ST73WcrMkl8XTlHiBSJYXvbPutoAWDlg5IOrF884g7jrPa
	 YGbIl27OP1x63zlJ6T2NjyD62ailztiE2bo1FxOWXF6m0Xnxugua1fi1SARUPoZFdu
	 gVjR3bLvI8cx+YvHauIqwSMmOfZR9mUSEYi4/Z/m8LdpeCIfI4AZgsxzvontY6u4DD
	 yB0kTkAdYutjEg3P/cFpj+UVisCz06K6uu0zzm7BP8s+waejHbYmcmhsPSnsfWjZJC
	 wIHAXWXKtw2aw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 71F104208D;
	Tue, 10 Jun 2025 21:51:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 392691F2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 21:51:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1F64E40069
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 21:51:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 28TnZE1Sdua7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Jun 2025 21:51:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 51610400E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 51610400E7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 51610400E7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 21:51:40 +0000 (UTC)
X-CSE-ConnectionGUID: 9/gsVlcoSPyO2pR8GuTP/g==
X-CSE-MsgGUID: Xu9t/VyDRAerMESeTr/hOQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="69282673"
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="69282673"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 14:51:39 -0700
X-CSE-ConnectionGUID: YJEEoDvuQZurTasH589tsg==
X-CSE-MsgGUID: OXpvUsfJTiWhf6KhgCP2vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="147903586"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 14:51:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 14:51:39 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 10 Jun 2025 14:51:39 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.87)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 10 Jun 2025 14:51:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Kqtzf4wb8a35dV3AjTnuGAyU94wHHQLmvTjhWzfPoLJj0IzwfWxNk5KZhw1sOHrmNEmJS1AXsQHJjtuFEa3opgk8zdejKUI29lJewmSwyo6ESPLFlceP2f859wgI2dBA6x5a37sdDqXYe8iegEE6P16ZOTEyT05eo8CrRJZ1lpJX0b/JaATLDzm3FmdxlWTYKqR9SmSjoQpJlGrvuHdSve2iBwCsqDoAKa6U9ZHXRl0QfIB9jMeMbXU3/FL0Or5DLKL744OMyoFQCQVxpnqobsJtSi5+wUxAg0Khy6xl+Tq9mYdct5OU7bgPRgItU9tfGs2RxctCfzIwOSW39EugBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C2W5HSOLf3kIBRhX3s5KPYPCIBqqTb1erynmiXEGEuk=;
 b=zBW8mhFwdO+w/jd806m7x6kIywgHI5OUT3E21bRvuWFjZoO4z2T6YOEuSLSqennWkn98xlPUeBbI3JZlKhv4JvrysDrR5rJJZZK7g8/0n2Kf+/bghZexFno1nUb1T4gAMrp6/vIJiYGz9zOs/Ku6PbAxaMEMXcFvEEuX0SV+TeAUrMUA3Ka8HXty92nPa7himLpa1UsV9pqqeJS5x77AW7UbtvOJvULTS5S797wQ/qeU0eTRXzz5Lc+vWNKycFiqHmyA30woZZmwzy55/hkc8yoUoDhJwTMFeA4ob3M6K/c02oRMxRpi24NX8RFQggoLglJDvJ67ad7nErjw0S0h2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by LV8PR11MB8488.namprd11.prod.outlook.com (2603:10b6:408:1e7::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.29; Tue, 10 Jun
 2025 21:51:09 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.8813.024; Tue, 10 Jun 2025
 21:51:09 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Jiri
 Pirko" <jiri@resnulli.us>, "Nikolova, Tatyana E"
 <tatyana.e.nikolova@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, Michael Ellerman
 <mpe@ellerman.id.au>, "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 Lee Trager <lee@trager.us>, Madhavan Srinivasan <maddy@linux.ibm.com>,
 "Zaremba, Larysa" <larysa.zaremba@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>, "Zaki, Ahmed"
 <ahmed.zaki@intel.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Olech, Milena"
 <milena.olech@intel.com>, "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>, 
 "Singhai, Anjali" <anjali.singhai@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 10/15] idpf: make mbx_task
 queueing and cancelling more consistent
Thread-Index: AQHbxnMeOxi+DNFll0adzGqFDpVM+LP9FfRg
Date: Tue, 10 Jun 2025 21:51:09 +0000
Message-ID: <SJ1PR11MB62976C256190FA1A2DA3EA7A9B6AA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250516145814.5422-1-larysa.zaremba@intel.com>
 <20250516145814.5422-11-larysa.zaremba@intel.com>
In-Reply-To: <20250516145814.5422-11-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|LV8PR11MB8488:EE_
x-ms-office365-filtering-correlation-id: 4079f905-663a-4a32-586a-08dda868e8ee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?v0yToWzTl1C8lzg7/hE9b8d9Qef1YkSVPTIDoRP3TeHeyASkCed8YDHebvD8?=
 =?us-ascii?Q?yMLGEqwyfPFCVPevOxwlEDJzXyBHQrcwMPe5aJBTz+9mcCkHlGcXaGs9heos?=
 =?us-ascii?Q?5x+aR5rfMu9OydYEynIb94xPLUM1vrbe4SXcPu9Q6ImJ0bnzD92i3Drta9Tz?=
 =?us-ascii?Q?MV4QZ7IxXSipX/mgFHU3wfBys8MCca6T9UrMFR5J/yZVJX/FeH2nYIsGvzTj?=
 =?us-ascii?Q?TBL0FSqxqILAQsoJViCTDDkFSugyiQWID+Tw/GN9P4kJAvQoO8v6Z2vsX35/?=
 =?us-ascii?Q?pAqeDkN5XeqCh0q4u6YjTmm+KL+Mn0quDxf8Ehn4FpwWSMbuJVoWKX8mmVXK?=
 =?us-ascii?Q?+uOkE8fRCKn90wM8aaaz4Sh6WFC4zRJXHtBMuMA0QFuWy4DO6pAxU3MLeDQ4?=
 =?us-ascii?Q?ohwy3PdpmrGcE0ktP+u20yiooqx8mKYFPMaMJ5CHsqW5zrN/HsEQJkV9TcHc?=
 =?us-ascii?Q?odtlRuzmA6s2zYwyEPWhhlSOZLcJW6ZdaOg12BFSE7tx6RXJ14Ijxmg2Hsbf?=
 =?us-ascii?Q?Iade9wo+3swiqneBNEVh2XuEjjJzwk48VrO8R/O95sxrEGAA8jxBWVAH2llJ?=
 =?us-ascii?Q?O0Bf2UXv1hveHFlICEefiM7vZw10a17WXmZkKrWJr+XfAMjbLOM0UkVhyMQr?=
 =?us-ascii?Q?urA3zkEIMfmoKHYXHH8qJNEkvIOS2jLj9xgIUaWMJC9H0zVyHfcs6eISsCVQ?=
 =?us-ascii?Q?4Ovaay8chaJQX20uwLwzYhHXQPvvZ55Sx8FMXhLSqTNNv2NdsWQrXXbcZzKG?=
 =?us-ascii?Q?VtGzdz5Odui4xS9O2yM4LZuqUQfKTFBa3Q7atFWbYHcrK2Pmg+8kE4I6l/uv?=
 =?us-ascii?Q?jUkk5LVJSKb6Sigk8Nfso4nkJNC2MQDwhB8OsnZ6AcX1VDRQ7CJd39AbxdMI?=
 =?us-ascii?Q?8TJDHVZG9Ur/H0t1/jGb2VfvH53i6Qnv67ySUU7Qa5iVYZJG2jekMJk5V3lo?=
 =?us-ascii?Q?wNb7gmA5/6+gwSKnw74yBXjIX/8h+oS8CwlmZdzMEiS7onUc9ubHVnQLNFpQ?=
 =?us-ascii?Q?uJXzx30rkbKzujrToB01kb1kladzsnBodYjRim2S6G4DXKmiNzw1hoHmCtSZ?=
 =?us-ascii?Q?mlUtU4g8mIQyOSuqFAqsIl0yC3x2OpOJ5t61hlIzQm7EMs0wNhIcFWbWJIYV?=
 =?us-ascii?Q?WmuupfO+D0B2/B1/3w5y80pmlArd+arD8tbjfFDEGBdc12sHJjSy3kmFVy4q?=
 =?us-ascii?Q?+XrMTPn7q+QeSBF86zUCIMoZuJ/1ki6k+FDjeu4jak7fMeOzEzF1N0orNbCq?=
 =?us-ascii?Q?9K6RfOjmdN7uFr68Z1D0LQ3Jlj9LtfFwV/0cUFXoYW2xpnU/m1jNoXTOT1RX?=
 =?us-ascii?Q?3ruvNmSG4k9chmqpEL23HMDGrtdmhmxih2QhmMevXTw3OkTX7IDa0Z/tc4Sg?=
 =?us-ascii?Q?QqgW+qFeyESZjsymDUcLehIFlrwWrn6w2MUdHyxDuk0n0Cz/O6z1KvUZUndm?=
 =?us-ascii?Q?ZQlZwrR7JWXlAY4wSI54TbCwrBwViQe4rvb0fZI7EDKoDAZMyEOWDQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Kfx/BwIgvDqm83CNu4YGPCtV3akiYgyhyvzn9L6w1NP6y0jLb3j4Yaqkt2xB?=
 =?us-ascii?Q?vOuq+oMEETSnnpq7LvB8bkbp5CHhvr5TQ5Cd0g+N2mqt9Lk8f5cVBM13YUKI?=
 =?us-ascii?Q?va7iGwtwoDwiBNbHrnBns6JeiVciiTipKP9vr/jgs/AfaNlbAGEQnVbTfCZ0?=
 =?us-ascii?Q?yVl3c+pUE4cBybyIE4zI0L566cuWL3mfPg078+3iPmaW6yjqGBy0KskfTx/A?=
 =?us-ascii?Q?hBXk0rtszp1sUu2AtcZ2tHgSoYh7RwKbrC7XI4aDvMhiQQX1pMCTPtTaMciM?=
 =?us-ascii?Q?fBMHa+XdPc8P5rUdoCuhMUi/VgO7U9BP0Sznhh8+kDxoIVUD6akVJwzvt06V?=
 =?us-ascii?Q?xyzL9yi5DNgW776LFTtWFB9/q03Tj4eaZzP14gL8l/kGrFdRJNrErIjh637W?=
 =?us-ascii?Q?H1FlKMpnDJCcT/hbONQzdMHdt/pSwJKH24JPs/K8a7zqZGv08RFWmHRhHpgp?=
 =?us-ascii?Q?fLq7z3i2xmQVMUJfskMakYW0EMovWgYwIlcfmddMzspPGk3iHVU1RfSc+VYw?=
 =?us-ascii?Q?XI5xeDBV3xMcqokHDSriUM/zH/pgBJyi3n4uBIbpjnIUW+whoyrqTUz+HV+g?=
 =?us-ascii?Q?ieU6QkaTCg6zT17j2VR+fVUMyF3eBXBpZJN/H+s9iy1bu0RSlM5mN+DPim4c?=
 =?us-ascii?Q?WQsHozJGZ94xr/ZoIZBUO14QC06Wg5P5uqea9ldi0eD5GDncgHUbcEbknIkn?=
 =?us-ascii?Q?kCakWaymV/Ql4U2gA5NAvM81QIKemOR8GuyNO83T8MAOQDD0SLMbpivxfdKE?=
 =?us-ascii?Q?ha3ZaLUM6REBnpeN8w18zA85CqGQgwV8Oo7Eo4W3bO/AJYafayI2POU15wfe?=
 =?us-ascii?Q?gjS5PjOv4jUfkqn4E9To5QHGCE38P0Dk9MTt96WJu4L2wvNdipUfY3Wimr6M?=
 =?us-ascii?Q?7hNmRw/9mpfSW4oKs1xUIjREb1I0YzTAvkTW44woZx35QQt3phDpjquOm4fB?=
 =?us-ascii?Q?fvC+6iyLThKzqVPTDD6weJZvDC09yByFnO1Ql+p3a0BnyjVp/IkToS7rcmdd?=
 =?us-ascii?Q?FKzYMhUYtUN6QVqd2m3ZzeihWPQqhWlmT7m7PIYfxl7iMXCck5yUunr/Wlot?=
 =?us-ascii?Q?Z+A9hXTJNfNuhjb5Dk95zA/iQwIEYk2xrB5cBKLRgLqdLvzrnVezPBXHYppG?=
 =?us-ascii?Q?jNN4Wdcsj/ohitb2eSWZNpoJNvOMr4dXmT1R6ZfqdEY9QwuSwPBNN5dgGO9S?=
 =?us-ascii?Q?+QMwPpmJ1S9qiJnKue+znZ3pl58UMBqCKs63WmihFne6paNuOxshDAQm5XpX?=
 =?us-ascii?Q?m2jlvcW08CizFng3uMbxm7vSRwUHDOITs2pVbhVANjCODjjWFGbyF7wrhE1C?=
 =?us-ascii?Q?8FfDnl6k5XpaIC4Lz5201Pdjy5j5/idPh3ma3/ohvtzt6o/yaiHwJtNQ9BCz?=
 =?us-ascii?Q?xU3OW9UW/CIL519+SiqhM663Kxz5AVhJXf47eIr4bDRVrUgCtA0XSPBm/nYx?=
 =?us-ascii?Q?Cpb7zugLJarctUAZt1V90hJmJoN4cgM6WzJH73A72QB0UZ6ulPj5l4nlDIRY?=
 =?us-ascii?Q?m0V4MrC/KHq/dX4EjWTAEXTx/iVhrmcJKHuGWh3koVVGoxBpHq7hRdDRmh2n?=
 =?us-ascii?Q?5cOOSw6odGFqFxbbAfyzJxo223yrm772QiW6bRRs?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4079f905-663a-4a32-586a-08dda868e8ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2025 21:51:09.4012 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j29UpM/1aOTKy9ZDh1aYlreJBRvuvilMizp0E0ljA8tvHShhH3jY30odBkyEv+gD9nxj3l8fr4P7mCi/aLN5kg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8488
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749592300; x=1781128300;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=C2W5HSOLf3kIBRhX3s5KPYPCIBqqTb1erynmiXEGEuk=;
 b=GE8fn/SxFDvk2iuuJar5HFxdEhV8Kg2fpUczogJK9lsDF1VkCEkdA2U2
 dDIsIzOaT4Tpp4E/gEq3NvHmuBZiR/7BFWoOido6fVTCHqsJrtFQHI4AI
 i/FCwu78lLFr/kvfMWiJfgQxG2uh9Hjlxf5PJZdXGwlrdMIxvi/nnpEtk
 nY+hsZyin7N2PBh1H0qojJ5VVIbZSMGepP6LVCoVzpkEctAAfbRjpa+Bk
 iTFYKa7iEZ2smjEsqq2xRaJYtvPowzIB7ANS2Eg2O+PdbBIm/Xjnu2Rxr
 nTa1T/cwgDmeRe3F0L6VJHgtpJ8cRFySvmsvnFCbv7CsFpgwa+cD8JMlg
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GE8fn/Sx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 10/15] idpf: make mbx_task
 queueing and cancelling more consistent
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
> Larysa Zaremba
> Sent: Friday, May 16, 2025 7:58 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan
> Corbet <corbet@lwn.net>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Jiri Pirko <jiri@resnulli.us>; Nikolova, =
Tatyana
> E <tatyana.e.nikolova@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> Lobakin, Aleksander <aleksander.lobakin@intel.com>; Michael Ellerman
> <mpe@ellerman.id.au>; Fijalkowski, Maciej <maciej.fijalkowski@intel.com>;
> Lee Trager <lee@trager.us>; Madhavan Srinivasan <maddy@linux.ibm.com>;
> Zaremba, Larysa <larysa.zaremba@intel.com>; Samudrala, Sridhar
> <sridhar.samudrala@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>=
;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Polchlopek,
> Mateusz <mateusz.polchlopek@intel.com>; Zaki, Ahmed
> <ahmed.zaki@intel.com>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org; Karlsson, Magnus
> <magnus.karlsson@intel.com>; Tantilov, Emil S <emil.s.tantilov@intel.com>=
;
> Chittim, Madhu <madhu.chittim@intel.com>; Hay, Joshua A
> <joshua.a.hay@intel.com>; Olech, Milena <milena.olech@intel.com>; Linga,
> Pavan Kumar <pavan.kumar.linga@intel.com>; Singhai, Anjali
> <anjali.singhai@intel.com>; Kubiak, Michal <michal.kubiak@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 10/15] idpf: make mbx_task
> queueing and cancelling more consistent
>=20
> As a consequence of refactoring idpf code to use libeth APIs,
> idpf_vc_xn_shutdown was merged with and replaced by
> idpf_deinit_dflt_mbx.
> This does not affect the Tx path, as it checked for a presence of an xn m=
anager
> anyway. Rx processing is handled by the mbx_task that is not always cance=
lled
> before calling the new consolidated mailbox deinit function.
> Moreover, in the reset path idpf_intr_rel() reschedules it after the dein=
it is
> done. This leads to mbx_task referencing the freed mailbox and causing
> KASAN warnings.
>=20
> To remedy this, in the init path, do the first queueing of mbx_task in
> idpf_init_dflt_mbx(), in deinit and reset, always cancel the task in
> idpf_deinit_dflt_mbx() and in every flow first call idpf_mb_intr_rel_irq(=
).
>=20
> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
> 2.47.0

Tested-by: Samuel Salin <Samuel.salin@intel.com>
