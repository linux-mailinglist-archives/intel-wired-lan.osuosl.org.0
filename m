Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD78A27283
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Feb 2025 14:14:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E01CA60D87;
	Tue,  4 Feb 2025 13:14:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6VL_ld7BRZWW; Tue,  4 Feb 2025 13:14:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BCF1E60EF1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738674854;
	bh=yiMzjhOcK+wvGMug5DJP1dwKeuZvDSHuEFbOXJiK6Lk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yazxBgQwqL8tVVMRnYtb7j+UyfLwBtP0F0yBrwDbIOtNz0O2w76YPiNPkzTJATx7V
	 2LsDUw6gj5VO4Nk6h6MziQKfZAsRmyPSH1bBHoOGsgwGqM+3XcP77g8L4CJMoykgCy
	 KW8LG27nwlzq6DLrkYl59ZEb52X00sv79+Voa7hxf+lpI9kpGdmljcivOWkcUp75Lq
	 cj5l/LQhXj8mxJbhdVmIMS1ZzJt/Xpn312bMpM28juiDS8oY8djHWIc8FjJI7KUIRk
	 Nfx44JNfPzBmDsC4AmhCdVn31XhWgPaXI0HSNWm3RY3uG6LWN+Ul7jCDd223qAnsZy
	 21K+CWOdTN0aw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BCF1E60EF1;
	Tue,  4 Feb 2025 13:14:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 81904185
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 13:14:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 707DB60C34
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 13:14:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dgGvLr1FKyVp for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Feb 2025 13:14:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3AB6060F97
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3AB6060F97
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3AB6060F97
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 13:14:11 +0000 (UTC)
X-CSE-ConnectionGUID: hOR5QIiQSs6u4BJUfO8sBQ==
X-CSE-MsgGUID: yIgroRtFQZibkmXh64mAxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="49813740"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="49813740"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 05:14:10 -0800
X-CSE-ConnectionGUID: DbVcFgtOTnuTIZc5m8XJcQ==
X-CSE-MsgGUID: tIgPKwI2Sf6CwublmpOnVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="110576310"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Feb 2025 05:14:10 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Feb 2025 05:14:09 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 4 Feb 2025 05:14:09 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Feb 2025 05:14:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Tb+TMG/pzRoztEGcLMps/kp6c9VZEJhB5gSYVqpBDhl2CKzDSYpDYYyQlCAqdZwujbcBQj3BtKfbnGmXe6VrHb+EDgHlkXQlAybYonfZ1gjJVCuxM3XfacW7fQkyH1PC6AsN1Y4Y3yt+ddQdgYLEwA+TD082I+yuGrjt2TL+pNP5+NY8+EDqxw02cwR7OWw+k9DoJu0KXHG/HP6T9f7+sdVlQRv/1CuUnXtUKGIRaIUXLT1eZp3mETwN9jDDtdeQuimJkDbYfj51UhhT2xqhQ9oG9PRlbmj3iN6TYJcY1oYJRhGdJZo6CfzHBwOvPtATMekFivBm6IwmUJFwBBaAgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yiMzjhOcK+wvGMug5DJP1dwKeuZvDSHuEFbOXJiK6Lk=;
 b=bcJR83rYlAC7JhDw+/gfVxmP9543/pCid63urIymZCPzoBJhe/Tk8H4WgkrWoaUXa5Heutrh0eYiSAJwSh9rELxEXsGFFcA3oUc7gD43SgwIWz7DMTydPi9hQ8mIk8tqum4PfyscizgPCgz19ZEV2u5AS6pvzu0MB0hHpN/mIM5oWqM0shZkazmSdZWrMan0e/PNw61x0fxq1qDxYIhgVUVbfeFIHzGhM4/bISD8S4u+sxweOM1Dw7wVUOV9jSGBzEfcyLYtcsi3YBwY8PkkWy9aA3Cs70HUlujvjBnBvS7OfbFy7lwTfTmSyXdSqTcs6Il1k9g6qFbG6YBf2ASJOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 by IA1PR11MB7943.namprd11.prod.outlook.com (2603:10b6:208:3fc::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.10; Tue, 4 Feb
 2025 13:14:00 +0000
Received: from PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::c80d:3b17:3f40:10d6]) by PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::c80d:3b17:3f40:10d6%4]) with mapi id 15.20.8398.025; Tue, 4 Feb 2025
 13:14:00 +0000
From: "Song, Yoong Siang" <yoong.siang.song@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>
CC: "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Willem de Bruijn
 <willemb@google.com>, "Bezdeka, Florian" <florian.bezdeka@siemens.com>,
 Donald Hunter <donald.hunter@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 Bjorn Topel <bjorn@kernel.org>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer
 <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, "Damato, Joe"
 <jdamato@fastly.com>, Stanislav Fomichev <sdf@fomichev.me>, Xuan Zhuo
 <xuanzhuo@linux.alibaba.com>, Mina Almasry <almasrymina@google.com>, "Daniel
 Jurgens" <danielj@nvidia.com>, Andrii Nakryiko <andrii@kernel.org>, "Eduard
 Zingerman" <eddyz87@gmail.com>, Mykola Lysenko <mykolal@fb.com>, "Martin
 KaFai Lau" <martin.lau@linux.dev>, Song Liu <song@kernel.org>, Yonghong Song
 <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>, Hao Luo
 <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>, Shuah Khan
 <shuah@kernel.org>, Alexandre Torgue <alexandre.torgue@foss.st.com>, "Jose
 Abreu" <joabreu@synopsys.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Faizal Rahim
 <faizal.abdul.rahim@linux.intel.com>, Choong Yong Liang
 <yong.liang.choong@linux.intel.com>, "Bouska, Zdenek"
 <zdenek.bouska@siemens.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-doc@vger.kernel.org"
 <linux-doc@vger.kernel.org>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "xdp-hints@xdp-project.net"
 <xdp-hints@xdp-project.net>
Thread-Topic: [xdp-hints] [PATCH bpf-next v7 5/5] igc: Add launch time support
 to XDP ZC
Thread-Index: AQHbdp72yuxX8HZUp0ilKWaa9j1bCbM27JUAgAArOGA=
Date: Tue, 4 Feb 2025 13:14:00 +0000
Message-ID: <PH0PR11MB5830422207B7D3BCB27DA04FD8F42@PH0PR11MB5830.namprd11.prod.outlook.com>
References: <20250204004907.789330-1-yoong.siang.song@intel.com>
 <20250204004907.789330-6-yoong.siang.song@intel.com> <Z6HnaMQvgW+indqm@boxer>
In-Reply-To: <Z6HnaMQvgW+indqm@boxer>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5830:EE_|IA1PR11MB7943:EE_
x-ms-office365-filtering-correlation-id: 09110c4f-c53a-46be-5e04-08dd451dca18
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?+HPG31sNJNWZeF90TXyJr2GmIN5hKvY82xSNnMdk0ZoE2vank8i3JdB8zWW4?=
 =?us-ascii?Q?9y+8B2MHH0SipF1NLJj7mrldoLsu+S8Xe/F/ambnmmNd+uke0WTCyGWfjBqs?=
 =?us-ascii?Q?i6w0VuXn8DKj+thJTAmF+Ia6f618SdkYWApseE2VinzWwNOPZwJ2oqNElZn2?=
 =?us-ascii?Q?47eRGR/syeDkggL4PlW36uNR6UdcwTj1dCkW4S4WO3ny7rQEyJ1f5K4LvcPG?=
 =?us-ascii?Q?X6OICKjs/9F4bkzRVIGxZ+5s1ULAyvEf/V33RbMIemeXOcFOdUG5jWYzqdbY?=
 =?us-ascii?Q?HAwyY9rNz3JE7vr2Q/DtBg4Ws6S+H0oDLvDxktUt8anghCWY2gHXzOM+sxt3?=
 =?us-ascii?Q?vw2JG1sN0idzcYacgrRbML8nwy/nnyKBZNbJmwI7ofhN8gmO0yqf/VJnsMvV?=
 =?us-ascii?Q?gphK/zrUk6LvxLJce6jCHM81DfBrLMKwEvYwTgApetpxIz7dAWx4OSlKQmJv?=
 =?us-ascii?Q?+3kpYiAz1WArJhqQDwz3nrulkdyu577e10LRmFbaHCK4c3VOK+OtLwSN8x+k?=
 =?us-ascii?Q?JL5D7c4vaJcZLLEWnOEEZX2Uwl2VsvM2pjggXHoZ3Azf7jGC8fwGo5/lOHtJ?=
 =?us-ascii?Q?FWWEP1zssMCJEG9bCZSVwN9N4XyNvq5BUc05lbs5G93h8RA6nYzNB7aMZsBx?=
 =?us-ascii?Q?7GC1za6iMjO5CCyYTloDwyy9eNxrR0+INr0MItm4Lr/2TrZIWzbecB14CGz8?=
 =?us-ascii?Q?JWD7QdBs4rsQcHKdEc1qQVwwMkFQJiJtQiI+3VJVIWHLo54B0+zv0Cdikqtf?=
 =?us-ascii?Q?NPgbxfkmRWrPnAJJSVlZMVPZbeW+ClVm0tp91SV2SdX+xlu4nGVtYDpa/KBF?=
 =?us-ascii?Q?rdJGQd13tOp5X4MwNeQ+JrWW+abAdliYnHSf8hqjKG4S7VPP33wqJGVoEfvZ?=
 =?us-ascii?Q?PPl74J3MJoPT7ZQFoYcU18V2cm0SHxPnZOtzN4zHhMua9EBGABy9eXKuS+Jh?=
 =?us-ascii?Q?KiYOV6o/D8QkXk1vBrrYAd5LhV2lUpryU1JjCKrKjQID0K+zMbof3ndfUq3J?=
 =?us-ascii?Q?4tXJzPuFgmLPDLL2atI6doiaUG8mpcGF1mpkDUyjngjj+HAsIqyCfcThYiDj?=
 =?us-ascii?Q?jthYubb+WmOt/lMmmREgWpXsEOEBaAiXIBUbJWoTkQSROzZ+P5L2hV7Bk3mS?=
 =?us-ascii?Q?KnM25ntORHZuxLEptbA9dPb3VYqsiz4Afi4p2QsDqC2RB7xHRJ9xQ+muDUVZ?=
 =?us-ascii?Q?x+iwIOLmv8VKbetgzFy0He43NH4CHuoqPhqTcrSe+Qw99Of0IkQNx2rZA/yi?=
 =?us-ascii?Q?zvY+gSoVUIvvQ08Yd2ENffySV6MvGpzZC1EWSGv1VQ3b+IN2wrZEwWfEvwaf?=
 =?us-ascii?Q?ySX/094fa3M3OtCLcktG6XoBoZAoNOn3c8ZrNl/xYfpYSdJqkr1srtWgdm9f?=
 =?us-ascii?Q?Zak0JTKwXtKHSy+oYZL047XxB9wXg23mWhwMD9JS5qqc7q2uKq+rEujAHZzp?=
 =?us-ascii?Q?+zVvJJPDzAZoThOn1RzsMwqMRlQz0nI6?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5830.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BX0e/0Chl5wuCkNupgDhAaLZbxAbiMGzKqjy6WN4SNRsI5fAcUPtrdmmFNrG?=
 =?us-ascii?Q?NoIuq6XXoVm2UH0h7Mat70NcN9TQYT8PrrV9XbxvNwPXNvE4cprK3NdinOlB?=
 =?us-ascii?Q?BQEJGxnNACo1lMJf01GUiku6O9PBWXcy54OboWWeAN1WibCQZ6Icz7s5IFW8?=
 =?us-ascii?Q?NEXR47/FOclCufc7PNl8jmP+xWgyhQOfYx8zsadJZNi29CIeIK6Icy39v38P?=
 =?us-ascii?Q?qg+AjiQc1WxlcE47F2YGp95NAog3Q0/EUHz7f9LdYhHCaPDyYYBd44ugAeqG?=
 =?us-ascii?Q?Xko8zQFB0qMpOuOIdxC3nVR+1Cxgvj4eV+nHlnXsv6wOc6xqmQxpV+NLdu3X?=
 =?us-ascii?Q?hfadYFaVq7TJZVbIGt+GVvTnB7R28zCR8UQ4h+L1kTfS5T0zJIj74iSMyOlV?=
 =?us-ascii?Q?CUZFuXQClxFapuShRwiTviFag0ZWaErozfYohdvkmrf0/ro0ZILNHjy7o5Cr?=
 =?us-ascii?Q?7CxI/l0QxWAwTFd6P59erXgB/xGlZltCdmEY6+BC+rlxqIIiywk+wcNO8iC7?=
 =?us-ascii?Q?cHbn+vKKpoRGej3KWfodymphSlVMUsJ6Iw0kfOWHpr17Z1lAh4ckpUGX/zbt?=
 =?us-ascii?Q?HD3mbGwSf5Mt/Q0UMFHGSKYpPIufYMUw9Fgg0j0IPx6hfNFj1ZBWJgO0JkDM?=
 =?us-ascii?Q?L5G8+5jobvF+6JpdtUgZO1zz3eVjSfvKM0JcIpcq8mPSzFLQ9TWjAPwbYM9J?=
 =?us-ascii?Q?s4/N4+dyATcipJdh8tnF9gwc89LSlJLnzpyOLyZk7elJwivoofWX1bTQhM6L?=
 =?us-ascii?Q?Eu9lD7DaSm9njCWxxUw7ZyoJ4U5auvB5qAsJCZtL2WU+lU01zu1mx2pc2G7P?=
 =?us-ascii?Q?slveP7c7QcM7vNiZnyLuLU2ox1+2QCEWrO56y0BlV7Qw8/TiNFNKrdHTNn0e?=
 =?us-ascii?Q?p+ypk1UPvTRydv2sS0UigkR2ukZ/keWRv1hDH1wPgOAcyaxI5vU/00EfT+nZ?=
 =?us-ascii?Q?pKPUwSYsV/CKqDY/E1AV6wyrVFg4heIA6UHWXpVSUKnMSgA6YBlZz1JacHXg?=
 =?us-ascii?Q?ZLQ3Tv4SPbqrWjAL79C9Q9YC9+fe2VwI0vqwc1QLWPjuOULvYb49wm59Pomq?=
 =?us-ascii?Q?aLzc+4UyKhqu9e1pJuLFbKHLIbGzW6xZyXBLmK2SzZWeiJuc578ZqLsuZiLq?=
 =?us-ascii?Q?FSk8oJ19fV4VnG5jjDLIxscmkHm5ZUiflSn4beNavYCrGykPq87AFk3VBLgy?=
 =?us-ascii?Q?mtZSMtRkMrwAtDHySc0ZytMS2S00r9xpiqM5AUylor0Y1f8kFcu++kjeAeAR?=
 =?us-ascii?Q?RKiu8RkHFkPeFWqrXJ5TUZiw7F/5pa/owFRhwEYC/VnwjU4rE9/MvYa8KpN4?=
 =?us-ascii?Q?ozmn+04w2yBi5XlCXljMmJ7wQmdIlVyd6Z9awgn6ZxMPmtGeHAiJ29ZhNiAO?=
 =?us-ascii?Q?SmK5XOll1g5AUoPjXn52peub6taMaSrV+7j7FVjOEKh21SnnnQ/qSBTfsLQs?=
 =?us-ascii?Q?V6ATP1L8PjYoM+qyExEFCYlcntW+HdZwkMH7+gdKIPgJj4tBOGCXTj+UkToK?=
 =?us-ascii?Q?I/bDudHLOsy93THsJhv5bxfSgwfr5Fx3APXctElDMr/ubPLb6HILxCSmZtde?=
 =?us-ascii?Q?FEhixmgSE3QZ514Bb/B9KMcV4SICpx2Ptp6Q9+goTvrTtbrzIwr/9et9cbKh?=
 =?us-ascii?Q?Ww=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5830.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09110c4f-c53a-46be-5e04-08dd451dca18
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2025 13:14:00.3200 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RCPh3J++4CqaS9Ib7dj/iqXYJynzcS9kVq6pswqRe2NdIrzu9w5BWi7Baj0yGt4S2mPQZ9yX4hrrbclXbIJSd10SP4WV+8VsT37+U6ulYF0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7943
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738674851; x=1770210851;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/0rJVj+FIzWD4cD2w6ct+orhJg66lVwVsCrMFWO9lPc=;
 b=KHUihDUkkiRmRsD2iS8g28jXSydnVyJ6OOfmr2YQfmMOKa1OAJm4LpWd
 ki53ZDijPTRUDGfTFl3st3CexBwliqdUtuJiiYc4oWCpxqFW2PGTv1Ln5
 d4fUKIMauJRnb1lybx8yxX69TZ58oqTktYJYd3Bry1X6qxnZFbe9z1wnu
 l7O2jIIl6NK7ARgzmPMkAivDr37nd3l9roJYsuV8I8ljWEbPZ593wjcVi
 9MppGYMb4qh8brm5n0kNQOEejVrV7X1L+Ik0df1J7lYN91dNQ5XoPQI/N
 xXeP/pBEQT+gGKSiko51vb7mDpvAenOImAcqNRUk37Z3Vu+SDjwPqEPP0
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KHUihDUk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [xdp-hints] [PATCH bpf-next v7 5/5] igc: Add
 launch time support to XDP ZC
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

On Tuesday, February 4, 2025 6:10 PM, Fijalkowski, Maciej <maciej.fijalkows=
ki@intel.com> wrote:
>On Tue, Feb 04, 2025 at 08:49:07AM +0800, Song Yoong Siang wrote:
>
>> Enable Launch Time Control (LTC) support for XDP zero copy via XDP Tx
>> metadata framework.
>>
>> This patch has been tested with tools/testing/selftests/bpf/xdp_hw_metad=
ata
>> on Intel I225-LM Ethernet controller. Below are the test steps and resul=
t.
>>
>> Test 1: Send a single packet with the launch time set to 1 s in the futu=
re.
>>
>> Test steps:
>> 1. On the DUT, start the xdp_hw_metadata selftest application:
>>    $ sudo ./xdp_hw_metadata enp2s0 -l 1000000000 -L 1
>>
>> 2. On the Link Partner, send a UDP packet with VLAN priority 1 to port 9=
091
>>    of the DUT.
>>
>> Result:
>> When the launch time is set to 1 s in the future, the delta between the
>> launch time and the transmit hardware timestamp is 0.016 us, as shown in
>> printout of the xdp_hw_metadata application below.
>>   0x562ff5dc8880: rx_desc[4]->addr=3D84110 addr=3D84110 comp_addr=3D8411=
0 EoP
>>   rx_hash: 0xE343384 with RSS type:0x1
>>   HW RX-time:   1734578015467548904 (sec:1734578015.4675)
>>                 delta to User RX-time sec:0.0002 (183.103 usec)
>>   XDP RX-time:   1734578015467651698 (sec:1734578015.4677)
>>                  delta to User RX-time sec:0.0001 (80.309 usec)
>>   No rx_vlan_tci or rx_vlan_proto, err=3D-95
>>   0x562ff5dc8880: ping-pong with csum=3D561c (want c7dd)
>>                   csum_start=3D34 csum_offset=3D6
>>   HW RX-time:   1734578015467548904 (sec:1734578015.4675)
>>                 delta to HW Launch-time sec:1.0000 (1000000.000 usec)
>>   0x562ff5dc8880: complete tx idx=3D4 addr=3D4018
>>   HW Launch-time:   1734578016467548904 (sec:1734578016.4675)
>>                     delta to HW TX-complete-time sec:0.0000 (0.016 usec)
>>   HW TX-complete-time:   1734578016467548920 (sec:1734578016.4675)
>>                          delta to User TX-complete-time sec:0.0000
>>                          (32.546 usec)
>>   XDP RX-time:   1734578015467651698 (sec:1734578015.4677)
>>                  delta to User TX-complete-time sec:0.9999
>>                  (999929.768 usec)
>>   HW RX-time:   1734578015467548904 (sec:1734578015.4675)
>>                 delta to HW TX-complete-time sec:1.0000 (1000000.016 use=
c)
>>   0x562ff5dc8880: complete rx idx=3D132 addr=3D84110
>>
>> Test 2: Send 1000 packets with a 10 ms interval and the launch time set =
to
>>         500 us in the future.
>>
>> Test steps:
>> 1. On the DUT, start the xdp_hw_metadata selftest application:
>>    $ sudo chrt -f 99 ./xdp_hw_metadata enp2s0 -l 500000 -L 1 > \
>>      /dev/shm/result.log
>>
>> 2. On the Link Partner, send 1000 UDP packets with a 10 ms interval and
>>    VLAN priority 1 to port 9091 of the DUT.
>>
>> Result:
>> When the launch time is set to 500 us in the future, the average delta
>> between the launch time and the transmit hardware timestamp is 0.016 us,
>> as shown in the analysis of /dev/shm/result.log below. The XDP launch ti=
me
>> works correctly in sending 1000 packets continuously.
>>   Min delta: 0.005 us
>>   Avr delta: 0.016 us
>>   Max delta: 0.031 us
>>   Total packets forwarded: 1000
>>
>> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
>> ---
>>  drivers/net/ethernet/intel/igc/igc_main.c | 42 +++++++++++++++++++++--
>>  1 file changed, 40 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
>b/drivers/net/ethernet/intel/igc/igc_main.c
>> index c3edd8bcf633..535d340c71c9 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -2951,9 +2951,33 @@ static u64 igc_xsk_fill_timestamp(void *_priv)
>>  	return *(u64 *)_priv;
>>  }
>>
>> +static void igc_xsk_request_launch_time(u64 launch_time, void *_priv)
>> +{
>> +	struct igc_metadata_request *meta_req =3D _priv;
>> +	struct igc_ring *tx_ring =3D meta_req->tx_ring;
>> +	__le32 launch_time_offset;
>> +	bool insert_empty =3D false;
>> +	bool first_flag =3D false;
>> +
>> +	if (!tx_ring->launchtime_enable)
>> +		return;
>> +
>> +	launch_time_offset =3D igc_tx_launchtime(tx_ring,
>> +					       ns_to_ktime(launch_time),
>> +					       &first_flag, &insert_empty);
>> +	if (insert_empty) {
>> +		igc_insert_empty_packet(tx_ring);
>> +		meta_req->tx_buffer =3D
>> +			&tx_ring->tx_buffer_info[tx_ring->next_to_use];
>
>in this case I think you currently are leaking the skbs and dma mappings
>that igc_init_empty_frame() did. you're going to mix
>IGC_TX_BUFFER_TYPE_XSK with IGC_TX_BUFFER_TYPE_SKB and the latter is not
>explicitly initialized. Even though IGC_TX_BUFFER_TYPE_SKB happens to be
>equal to 0, igc_tx_buffer::type is never cleared in the tx clean desc
>routine.
>

Hi Fijalkowski Maciej,

Thanks for your inputs.

Yes, you are right, IGC_TX_BUFFER_TYPE_SKB is mixed together with
IGC_TX_BUFFER_TYPE_XSK. Regarding the skb and dma map,=20
following code in igc_clean_tx_irq() will free the skb and unmap the dma,
Do these answer your concern on leaking?

igc_main.c:3133:                case IGC_TX_BUFFER_TYPE_SKB:
igc_main.c-3134-                        napi_consume_skb(tx_buffer->skb, na=
pi_budget);
igc_main.c-3135-                        igc_unmap_tx_buffer(tx_ring->dev, t=
x_buffer);
igc_main.c-3136-                        break;

Regarding the igc_tx_buffer::type never cleared, I think the
important thing is making the igc_tx_buffer::next_to_watch NULL
to indicate no remaining packet. Since transmit function will
always set the igc_tx_buffer::type to a proper type,
I think it is optional for us to clear it.
Is that make sense to you?

>> +	}
>> +
>> +	igc_tx_ctxtdesc(tx_ring, launch_time_offset, first_flag, 0, 0, 0);
>> +}
>> +
>>  const struct xsk_tx_metadata_ops igc_xsk_tx_metadata_ops =3D {
>>  	.tmo_request_timestamp		=3D igc_xsk_request_timestamp,
>>  	.tmo_fill_timestamp		=3D igc_xsk_fill_timestamp,
>> +	.tmo_request_launch_time	=3D igc_xsk_request_launch_time,
>>  };
>>
>>  static void igc_xdp_xmit_zc(struct igc_ring *ring)
>> @@ -2976,7 +3000,13 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring=
)
>>  	ntu =3D ring->next_to_use;
>>  	budget =3D igc_desc_unused(ring);
>>
>> -	while (xsk_tx_peek_desc(pool, &xdp_desc) && budget--) {
>> +	/* Packets with launch time require one data descriptor and one contex=
t
>> +	 * descriptor. When the launch time falls into the next Qbv cycle, we
>> +	 * may need to insert an empty packet, which requires two more
>> +	 * descriptors. Therefore, to be safe, we always ensure we have at lea=
st
>> +	 * 4 descriptors available.
>> +	 */
>> +	while (xsk_tx_peek_desc(pool, &xdp_desc) && budget >=3D 4) {
>>  		struct igc_metadata_request meta_req;
>>  		struct xsk_tx_metadata *meta =3D NULL;
>>  		struct igc_tx_buffer *bi;
>> @@ -3000,6 +3030,12 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring=
)
>>  		xsk_tx_metadata_request(meta, &igc_xsk_tx_metadata_ops,
>>  					&meta_req);
>>
>> +		/* xsk_tx_metadata_request() may have updated next_to_use */
>> +		ntu =3D ring->next_to_use;
>> +
>> +		/* xsk_tx_metadata_request() may have updated Tx buffer info */
>> +		bi =3D meta_req.tx_buffer;
>> +
>>  		tx_desc =3D IGC_TX_DESC(ring, ntu);
>>  		tx_desc->read.cmd_type_len =3D cpu_to_le32(meta_req.cmd_type);
>>  		tx_desc->read.olinfo_status =3D cpu_to_le32(olinfo_status);
>> @@ -3017,9 +3053,11 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring=
)
>>  		ntu++;
>>  		if (ntu =3D=3D ring->count)
>>  			ntu =3D 0;
>> +
>> +		ring->next_to_use =3D ntu;
>> +		budget =3D igc_desc_unused(ring);
>
>why count the remaining space in loop? couldn't you decrement it
>accordingly to the count of descriptors you have produced? writing ntu
>back and forth between local var and ring struct performance-wise does not
>look fine.
>

Yes, I can check the number of used descriptor in xsk_tx_metadata_request()
by introducing a new field named used_desc in struct igc_metadata_request,
and then decreases the budget with it.

Do this way looked good to you?
=20
Thanks & Regards
Siang

>>  	}
>>
>> -	ring->next_to_use =3D ntu;
>>  	if (tx_desc) {
>>  		igc_flush_tx_descriptors(ring);
>>  		xsk_tx_release(pool);
>> --
>> 2.34.1
>>
