Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7938CC64A46
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Nov 2025 15:28:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2917B60DC0;
	Mon, 17 Nov 2025 14:28:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hy3hsdDXhb2q; Mon, 17 Nov 2025 14:28:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69E7B60DB7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763389736;
	bh=56d68pUraSb0/UpPT3OLtnPTGjF68IBIvU/6srX8iZU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FULhEi41KtM5fk7gi+pZTEgdHyLqU1811jT2Ew1pX3qyCU05U2VnqqD881nOJDyVX
	 GNjsR3P5x1utq10075Wr6tAub7YTac50Y+kIvj3pc2Ed4dIt6f1D//FYJA4Ku6X62e
	 kG1+chzQP/EdowUJvewAWBDB7eCvUDqJ7ZxsRFgHFYUYA09vWZ3bMD3viqsRbdWRZ6
	 CQm8g+M/ssymDPY+1krSq4DrVMLWiYh0WKihvHDQ33XyqSGaSmPXt1pPfJymJQ6mQm
	 nPuVWINFJ++FE1XENjyWyBNhFrjqa9s69Q8ceE3nvfIjLBDZH/Md8bYHtAnYnGWvcL
	 CnixzrlG0XtDQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69E7B60DB7;
	Mon, 17 Nov 2025 14:28:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1A7C41A9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 14:28:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EC45160D91
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 14:28:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XRC5IOp9Pv_y for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Nov 2025 14:28:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 24EF660D89
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 24EF660D89
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 24EF660D89
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 14:28:52 +0000 (UTC)
X-CSE-ConnectionGUID: ZxkWST8zR++HrL13StHt8A==
X-CSE-MsgGUID: 54vLjYRPRQS/1G2T8LgOfQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="65323105"
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="65323105"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 06:28:52 -0800
X-CSE-ConnectionGUID: O1OFOTOARTSpY3WvhPo9tA==
X-CSE-MsgGUID: q2u9+bLDQRmIgzFvcUukGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="189714026"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 06:28:52 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 06:28:51 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 06:28:51 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.34) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 06:28:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qYPcR9HysgpB4yRJHFTAMGgcDE285fn6noN1XZUBoOCjBKNvAe1qJsilt9OBpH7d0EZz89OSfIqt6GleFFjtpeJQmX6oQisgmy2DT86SmEkpnz5UGGkUldzt5FwjmEXBJqr+nY5KLxq/BVJtQpiJCU3U2DarpSdIUrr/f69bmuwpDRR46qyFAt+wms5w3mJ/8QFkBJirGThssQcr53i8Dcsjs0g/qgETRM3jgaP7JjgmthCrTBovjHPA8FBaqx4AaqTh9XFXlK0DrWroGrQ3/V/ampyEbiBnNkr15mP9oBJpJGNnF2bFZxKwSWJ/kUuFXX13VpFbBoveJ4vty0Enjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=56d68pUraSb0/UpPT3OLtnPTGjF68IBIvU/6srX8iZU=;
 b=vEtBFCPP7CPdvz5rHWnFDbzOTG+jfTB4gsJIYZwkRA6ypjcJYVUr+kdLN5bylgFb/fX483fDQR2LRxnjx5TLIM6X4Ie9hJefzSL8mik0fiFP6tBUaGxaVBhXM1K3DdpqmdrAxD3fEoumS0fVms8my8gIrq76kxgVxcFDzplEUXDcdqf6ObfOi0ohCMyOLS+XVdDLA+L1W05alKvrp7kLYFr6R9f43jPSE2YPH+KmfpCEyXiCAeA/+/EdiwNUC/p5DQU5ObERa44EdrGn+i0tVX5Y2p9DooiY8u5VB4Hh60o0aAny+hXRWeUI6oPWUn+TY1yqak8rLinyjKZvR59VwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::31) by SJ5PPF6E07EBAE7.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::832) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.22; Mon, 17 Nov
 2025 14:28:48 +0000
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::67f8:8630:9f17:7876]) by DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::67f8:8630:9f17:7876%6]) with mapi id 15.20.9320.021; Mon, 17 Nov 2025
 14:28:48 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, "Wochtman, Natalia"
 <natalia.wochtman@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 15/15] ixd: add devlink
 support
Thread-Index: AQHcV8klLZ4RM4Sk1kWLqtFsrPW1J7T27CXg
Date: Mon, 17 Nov 2025 14:28:48 +0000
Message-ID: <DS4PPF7551E65529FAD5462AFC6A95035D7E5C9A@DS4PPF7551E6552.namprd11.prod.outlook.com>
References: <20251117134912.18566-1-larysa.zaremba@intel.com>
 <20251117134912.18566-16-larysa.zaremba@intel.com>
In-Reply-To: <20251117134912.18566-16-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF7551E6552:EE_|SJ5PPF6E07EBAE7:EE_
x-ms-office365-filtering-correlation-id: 9b02c441-fba2-4a5e-55d4-08de25e59f63
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7416014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?XsqD+e8R/sh3fZLZ1h0F/6LS/ESGae1Fw8W7YG03Ne/43w7/L/sA7gKJ5GBT?=
 =?us-ascii?Q?gNG8JpBaWZnrik71md6JJWpZKKprtQrGbAr2gcJBqu6fgKS+srzs5sphPCbg?=
 =?us-ascii?Q?c7sQqa5nYm8jI6nOZiSX2UPZ7P+tPCuhcUpaKrZybDTpntkqrnE4VKX3etPm?=
 =?us-ascii?Q?/yEtBgo6ju02jqJxI5Sn/hS7fAQ9oooJWSWh/Ba9nccyTeoubG3cwg3dn/Ch?=
 =?us-ascii?Q?snBZNGBywwn1E7e+jOr6jFPhGkplULYfUnK5KfjN02smP8muq+4qBD0oSTC1?=
 =?us-ascii?Q?KqT4en0t2xV8TPoH1emCZNmM8Sy0cl454g6PjdjkQp95ySfVaM8o1MdxAgfV?=
 =?us-ascii?Q?5BbE50Fc5do0AVPgJHmnWGKiPs/oEoU/QHON7p5MMlgFKfSvYHjGN3tmInRg?=
 =?us-ascii?Q?EtjE4XhoqY+5RDZmOwPthWWhNEmDS6Cd3XJ0UcRWuATIuIGFwaJHNDLWY/WQ?=
 =?us-ascii?Q?58Y7f7uYrLIqUhjdrPTHyzqzkafqPOisUjBTI6Q2dbbAwptWKL3ZvgI0gGsQ?=
 =?us-ascii?Q?ffgMK+bMEWPUbWgz25DxogGw4WvOBzHVEmuOtRKV/cZoJdJAQWgle60GR4fn?=
 =?us-ascii?Q?b/pGS+jkcqp+rkp6xu/OehqDUkzr/oUE6E8HeSKcdhZgeCUWmfEn4NcupzyT?=
 =?us-ascii?Q?0VuTtshzy1OIvHlA52NEoen82yJjWXSF82PDXezDbOqLyzOSAFMbsmEgGumU?=
 =?us-ascii?Q?51RCp6Ex2rNm4WGwQfsM7gI76il73/3MQ+Ovzg/7NPmtzaEAn3/Pl9t4Blq/?=
 =?us-ascii?Q?WwvggHtvLqHA/7X1mvOR5qn74CZ6iHOURJTU/BdlaXpsHM0pbEyx5GjQrWDL?=
 =?us-ascii?Q?fJt+z4ygSq3fTPWPT+iCE2moCA8EXy2ewJh1dzxVqd6kaj3W+6649GOIvxns?=
 =?us-ascii?Q?1Ni134asrthA+ChUYAgcXZ1K1po/hehNgc9D9xTWzZYcHf7JCrXRBXY9Ah7B?=
 =?us-ascii?Q?Cwpsds3PQf3mwS0Qq4GdU5XGtah8zrO7IENVtGRUKd2kbdMLUuYdzdCq4Ynx?=
 =?us-ascii?Q?ozQBx3uloosfxByDRe5qtZ/MFuwujya/HwwRKKqgcxfaazEAvaYb0ts/jhWi?=
 =?us-ascii?Q?tJKyqURAyNc+B7Mko9edrm5XmOriw7kXgZZVGdeQ2Vo1oSPvioSnUn7J/xpP?=
 =?us-ascii?Q?mJRa0qYy9dfyI0n23l0j6hK37WMCXgTIBTw/k50FKtczufOAtPjH9F1b8H+2?=
 =?us-ascii?Q?s9v+3Uc9pvLNeuk4elGKkCeoQG0KFj/4TqR0Po7iD7V7KXsH0psIcuFiaJcn?=
 =?us-ascii?Q?ARxQOw8hvX8Wza06zoknW7pH9aVgTmhlcsaZ7SsdPqAo4WWLEhI0m08fIZqJ?=
 =?us-ascii?Q?1MwOW3DXZbEpxEjjNDFpMVCY8MDqCAYI8p11fShMuGocmR8YPJ3SIhgmI5Kt?=
 =?us-ascii?Q?uvY/1C0gcodThK5SN+a4cLM2OHJVZkcj0F7zjFHKwURn7A5OVt31NZEwJzmY?=
 =?us-ascii?Q?pwNguGbPk+c8Tk1OYNIpLPtaU6cBXFIpX44qpfLq9TAtD3Wuw9ARgocIXbPk?=
 =?us-ascii?Q?saRp+08niKZfaYynvNiqH6Sud2qHUuDFwB5j?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF7551E6552.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7416014)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rBr6OHh30wbtkX+JTE852q2ZJnl9GBpt0Sx/e5ykobLtCMHwElzI4r6oTdiX?=
 =?us-ascii?Q?Vv6fb8ZuT9/lBr/otAXz3XBlNFSTEaz8VtsN0mBRJALyrRnFJ4cFHVdX8ARx?=
 =?us-ascii?Q?11HDLu/c964HtpcLz00VbBBoiAG+uJKs1rDR3t7RMoUdIJ5hwPjAkazQP/dM?=
 =?us-ascii?Q?oCjWM7DCYPQbBLX+YsB/6JHN+T6xuf5tGHmQEqkQOhSxNS5W2mxKd60ei0XB?=
 =?us-ascii?Q?qpzxtY4ZHqSYF7/JYA4Izt5mfNhkgtAxWihxc6LpY82gOnbdFtt+ZtY1f5ss?=
 =?us-ascii?Q?eJpQfq7+5Xrh+at6MvpBiN0LWQWY4EyyA2Ji2xUSPkwG/9ZEhHnDwQ6AGZMy?=
 =?us-ascii?Q?sTwjyy/XpnYREMgllVlI7/+JLamkWnZSvitfW4yxNfvkZUNFdMWeGUptpz4S?=
 =?us-ascii?Q?MqUSYKwRemlXUlknVhr7/K7yXQEXskY5AwivrlGkHVgbBGnYBXvFKST8TKpv?=
 =?us-ascii?Q?njiMhI1qWA3rrkNn2zycKCpBX4oyOuY0tkvWqlj+Sbd3y1YyuXxIG1vU//9Q?=
 =?us-ascii?Q?4Sagxi6Nlqo7R83KKtGZPM2WiKz6kHz+H0ELN3e4Hr2FqInhW/+KMG2xpeED?=
 =?us-ascii?Q?BXkIGMOnSauBuItNT/RHORbaMCj8N1eMm5BPUeDJf2w+Xqr8oeUhPjcpUX8q?=
 =?us-ascii?Q?ueurUDB/U+wZBkI0DzySePTd+IIQvIdIjAWc90g/QKZapOJ4mgoaDYKWiL4x?=
 =?us-ascii?Q?s7H6kgziflUFmghavZdPGoyXRxAw7vBq8f3hqQDABnBpQhEWYpRPMzrcNMSC?=
 =?us-ascii?Q?YaDcERVjz8RBZjH7xJP/kyOs7tMjIXAnWQMVjL+QMXf75HjqXFX1tVVX3RLt?=
 =?us-ascii?Q?tt1yLjyyzWgfPzGtnkmpmx6JO65gIwHpFqHetyYQKvbNaIep9JR0fhINdC3b?=
 =?us-ascii?Q?IiYLY5hL1NaS6GA3pyLOr6UAqj1RnDqPcRWw+zPedNmWfHFmSTzy0CmKLdUw?=
 =?us-ascii?Q?YqLIlKKVc15lhRZTh/e8aDkJLpZd0TIt4TA6jqaQBsQ8S04VOaFJdrqc/zs0?=
 =?us-ascii?Q?0+Esb/5GPELpC8hvW5B3z6h7IzzfCDndd+0qPsNzQg6DWj4uuyOz86TxaVQT?=
 =?us-ascii?Q?lnmZHyo91femEhi1buJlPYlHQE79NQi93w92FlWc10CHJWSEOJMhkRQlxGOk?=
 =?us-ascii?Q?zxm2kLjBZZuTVGJr6qCMcU2/MTI1CXNFbqw/lmbgZJzcnJUNv8lO05+khEa2?=
 =?us-ascii?Q?2o7fWGY3qTmE6DsTTqw6IENNdoN9Fj+PhzwUANnFL4NkL2Z9oXNVTUv2io5D?=
 =?us-ascii?Q?VeADVB1fXFb/Mu853E3s7VrZqcmt0MTsGIBIIMwuEgeJIdHcQL0hOMqSZGq5?=
 =?us-ascii?Q?9nfenb5A4oEKOUuk6PAbL2M1xmGBLU7OZkoi9zH8h8cAi7vqFyNWYid9Dvfe?=
 =?us-ascii?Q?oG2WQsDK9i6gVNp6jBbjGONfo86HAdhcRlPnt7dA+dGAAuDLCiWW0dikrj/t?=
 =?us-ascii?Q?1O8DWQBJ8M/h6Yb8vxFvSWusOt+QScVd8yzS2EAp5cXv4fY0A3+4vIw/vn0k?=
 =?us-ascii?Q?UF4YK0yj5B2vOgpH2GgBeVBDvSRZVGVi4LqSAuftgZ4vYsbPMHQ4sJ/TzMf8?=
 =?us-ascii?Q?2ZK18v4I4oTX0Ypmeq/oOKDUFWedZAXiIhHJgMgHBOIe0F6y5r6C+oR1oEt9?=
 =?us-ascii?Q?iQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF7551E6552.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b02c441-fba2-4a5e-55d4-08de25e59f63
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2025 14:28:48.4636 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 26h8/mNdGNvZ8wn50JPeKJomx82p87PvkcZvttiyoa/+mZ9r9dVILuW2zgjwfQfsix8NYuQXLLRu6FAsXpi7IBeLd2f6DsYwqc8O7XfEbZ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF6E07EBAE7
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763389735; x=1794925735;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SRFnMX0G61Qvf3AOel5e9vy3SJpZqt7dnxcDlscBDOQ=;
 b=n8ZOMWuney78yp4E0OU1yV/6GCQAqkUtpRrsZyS74rtaiEw/nJy+8wfL
 8I/6TS/HNdxnV3f6+S+RoIbT2L6MWM58hm1ixPulNBNvhu7Y7KTkGFcQU
 S2HQMhKXESIkawhXzyKGHnA6oVMu6GSgs0UW0EW2uYUH+c6C1kDrFrXrL
 OLMPRv13hY4HS6yfgsqWJzOQCi/CAz0wLOksBiSKNjnijnO26Da4Wo4Vc
 jjQ70A6WNhaw9eat1eZa17qV19z64IASVJZDiA7VoP3oshlrGICFXocUE
 u0gMbCk/jNQI3liUmHqnEzmU283yDAw2lk/PnFCLpBTLIYAqzte4c6kR8
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n8ZOMWun
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 15/15] ixd: add devlink
 support
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Larysa Zaremba
> Sent: Monday, November 17, 2025 2:49 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala,
> Sridhar <sridhar.samudrala@intel.com>; Singhai, Anjali
> <anjali.singhai@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S
> <emil.s.tantilov@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Hay, Joshua A <joshua.a.hay@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
> <jayaprakash.shanmugam@intel.com>; Wochtman, Natalia
> <natalia.wochtman@intel.com>; Jiri Pirko <jiri@resnulli.us>; David S.
> Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>;
> Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>;
> Simon Horman <horms@kernel.org>; Jonathan Corbet <corbet@lwn.net>;
> Richard Cochran <richardcochran@gmail.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> netdev@vger.kernel.org; linux-doc@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 15/15] ixd: add devlink
> support
>=20
> From: Amritha Nambiar <amritha.nambiar@intel.com>
>=20
> Enable initial support for the devlink interface with the ixd driver.
> The ixd hardware is a single function PCIe device. So, the PCIe
> adapter gets its own devlink instance to manage device-wide resources
> or configuration.
>=20
> $ devlink dev show
> pci/0000:83:00.6
>=20
> $ devlink dev info pci/0000:83:00.6
> pci/0000:83:00.6:
>   driver ixd
>   serial_number 00-a0-c9-ff-ff-23-45-67
>   versions:
>       fixed:
>         device.type MEV
>       running:
>         cp 0.0
>         virtchnl 2.0
>=20
This commit mentions MEV without expansion.
Kernel docs require expanding uncommon abbreviations.


> Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  Documentation/networking/devlink/index.rst   |   1 +
>  Documentation/networking/devlink/ixd.rst     |  35 +++++++
>  drivers/net/ethernet/intel/ixd/Kconfig       |   1 +
>  drivers/net/ethernet/intel/ixd/Makefile      |   1 +
>  drivers/net/ethernet/intel/ixd/ixd_devlink.c | 105
> +++++++++++++++++++  drivers/net/ethernet/intel/ixd/ixd_devlink.h |
> 44 ++++++++
>  drivers/net/ethernet/intel/ixd/ixd_main.c    |  16 ++-
>  7 files changed, 200 insertions(+), 3 deletions(-)  create mode
> 100644 Documentation/networking/devlink/ixd.rst
>  create mode 100644 drivers/net/ethernet/intel/ixd/ixd_devlink.c
>  create mode 100644 drivers/net/ethernet/intel/ixd/ixd_devlink.h
>=20
> diff --git a/Documentation/networking/devlink/index.rst
> b/Documentation/networking/devlink/index.rst
> index 35b12a2bfeba..efd138d8e7d3 100644
> --- a/Documentation/networking/devlink/index.rst
> +++ b/Documentation/networking/devlink/index.rst
> @@ -87,6 +87,7 @@ parameters, info versions, and other features it
> supports.
>     ionic
>     iosm
>     ixgbe
> +   ixd
>     kvaser_pciefd
>     kvaser_usb
>     mlx4
> diff --git a/Documentation/networking/devlink/ixd.rst
> b/Documentation/networking/devlink/ixd.rst
> new file mode 100644
> index 000000000000..81b28ffb00f6
> --- /dev/null
> +++ b/Documentation/networking/devlink/ixd.rst
> @@ -0,0 +1,35 @@
> +.. SPDX-License-Identifier: GPL-2.0
> +
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +ixd devlink support
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +This document describes the devlink features implemented by the
> ``ixd``
> +device driver.
> +
> +Info versions
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +The ``ixd`` driver reports the following versions
> +
> +.. list-table:: devlink info versions implemented
> +    :widths: 5 5 5 90
> +
> +    * - Name
> +      - Type
> +      - Example
> +      - Description
> +    * - ``device.type``
> +      - fixed
> +      - MEV
> +      - The hardware type for this device
> +    * - ``cp``
> +      - running
> +      - 0.0
> +      - Version number (major.minor) of the Control Plane software
> +        running on the device.
> +    * - ``virtchnl``
> +      - running
> +      - 2.0
> +      - 2-digit version number (major.minor) of the communication
> channel
> +        (virtchnl) used by the device.

...

> +++ b/drivers/net/ethernet/intel/ixd/ixd_devlink.c
> @@ -0,0 +1,105 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (c) 2025, Intel Corporation. */
> +
> +#include "ixd.h"
> +#include "ixd_devlink.h"
> +
> +#define IXD_DEVLINK_INFO_LEN	128
> +
> +/**
> + * ixd_fill_dsn - Get the serial number for the ixd device
> + * @adapter: adapter to query
> + * @buf: storage buffer for the info request  */ static void
> +ixd_fill_dsn(struct ixd_adapter *adapter, char *buf) {
> +	u8 dsn[8];
> +
> +	/* Copy the DSN into an array in Big Endian format */
> +	put_unaligned_be64(pci_get_dsn(adapter->cp_ctx.mmio_info.pdev),
> dsn);
> +
> +	snprintf(buf, IXD_DEVLINK_INFO_LEN, "%8phD", dsn); }
> +
Hardcoded buffer length.
Better pass len as a parameter.


> +/**
> + * ixd_fill_device_name - Get the name of the underlying hardware
> + * @adapter: adapter to query
> + * @buf: storage buffer for the info request
> + * @buf_size: size of the storage buffer  */ static void
> +ixd_fill_device_name(struct ixd_adapter *adapter, char *buf,
> +				 size_t buf_size)
> +{
> +	if (adapter->caps.device_type =3D=3D VIRTCHNL2_MEV_DEVICE)
> +		snprintf(buf, buf_size, "%s", "MEV");
> +	else
> +		snprintf(buf, buf_size, "%s", "UNKNOWN"); }
> +
I'd recommend to use strscpy() for fixed strings instead of snprintf() with=
 "%s".

...

> --
> 2.47.0

