Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IKFwLZwtwWmbRAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 13:10:04 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1042F1B08
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 13:10:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C653D40C6C;
	Mon, 23 Mar 2026 12:09:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lXIUOV0P3NQ7; Mon, 23 Mar 2026 12:09:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 25FC340C60
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774267798;
	bh=31YXfd9NPndSl9wmD87geKN/Mr87Pk+ueS2W4D8Q8M8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HBG0Ip0wIHsHs9/1cNKDxbqIlfhvRK7rcY3Af6c1vsGNyL6aFQgXl2hl+4HgS3l92
	 YjUzC8TNAIbN7MuEHmk/Im83II514B4IHVgKDq4Ct/+MfpmiwZIazlE0oG3WJ5S/5x
	 He1P5pZI2H3BvjmNPpkFOpmkxodvmvu9b/OpD36pxni3YK13qbZ8LpuWvlZRDPfbiK
	 QD8MT3b4AnrNrBSpGMbQ30AmgJAOMV6ESAW7p6PNj6Qt700DDR8lit2qnU7NcXcW3V
	 2cHX/r0VNXW1sn+iZeMMZ8dd3BfJf7sh8Joz0J0oTpS6AK+7R2bG4KEJaefIsiAeol
	 8vwKaVGogw4Vg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25FC340C60;
	Mon, 23 Mar 2026 12:09:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 55550F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 12:09:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 46B0B606D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 12:09:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DbyGoLZMW32k for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Mar 2026 12:09:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 42F3960651
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 42F3960651
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 42F3960651
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 12:09:56 +0000 (UTC)
X-CSE-ConnectionGUID: 3a3YztK4SW6M4zVyOtYqUg==
X-CSE-MsgGUID: AF3vmKpDSJmf2ba/WICGVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11737"; a="75232207"
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="75232207"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 05:09:56 -0700
X-CSE-ConnectionGUID: x9fhiXCPTaqrVWG4O8dJQw==
X-CSE-MsgGUID: +/Jje1HvRwWCScTZN45zcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="224023693"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 05:09:53 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 05:09:52 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 23 Mar 2026 05:09:52 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.22) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 05:09:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=njPdjujNKqbrV/B1tJmbywGnbyaggoQAxjSMnvrbGi8P/VFkQ7La0Cgq2edERvmSQVtY5vV22M1c8XL7XLThZY08DPZg2qk7uEBQYJeFxP/5Y7v2WnVmg8ViKx6WxbV5Ufn2GWI7j3E+O2Lsys0/Uu6w+hjXBOAb5Xa+/xCnwCK3ivgYVxAeLoKDlESwbMFIkEWoITMpBecbrcUW8vsujW5le3nRUIMQs1gB5WIJ+BMxBkhzrB0ulSmwuVQB+jZKJ/ZoXQ3zMMSuO68krKUXsh/tCOzjytjDdDQZwhtEeTeBU/QynXCMcVk+iyM7y27k8G6pCQ8wZfnjx70o1TGQxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=31YXfd9NPndSl9wmD87geKN/Mr87Pk+ueS2W4D8Q8M8=;
 b=Ivf2BGhqMe2x3a10B4xFbIxU6KORq/j/M8fALHGhzX5FXRogxxDbXvEcSOIr61eugQRxMiUTN3smwR6FEneP9CyQlPyzJAP8AYUl3oZFk/r7q8tDAUcHO2arS8o0nDn1qeA9vNwdGhsmO3jYl5ti03iLs9z5qAWxDD3u9ZH+oIi/yThnjAeYXXYEd8WEsSdU8uYP/yr4ND9uERhhROek3TvuXicCIxEsM8k2ZGtQRmZJciE14yFsAcgh39aKbHSUhihNDdWfKHk/TOQAOwqjvzUlEQ1toqyAMZHLyL/rLwiuF+PxxtKdRwoJ0RcLugbJPv0N8xXlPtxCBwjDBzqyxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SAWPR11MB9733.namprd11.prod.outlook.com (2603:10b6:806:4ca::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Mon, 23 Mar
 2026 12:09:50 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Mon, 23 Mar 2026
 12:09:50 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Stanislav Fomichev <sdf@fomichev.me>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "davem@davemloft.net" <davem@davemloft.net>, "edumazet@google.com"
 <edumazet@google.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "horms@kernel.org"
 <horms@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "skhan@linuxfoundation.org" <skhan@linuxfoundation.org>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "michael.chan@broadcom.com"
 <michael.chan@broadcom.com>, "pavan.chebbi@broadcom.com"
 <pavan.chebbi@broadcom.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "saeedm@nvidia.com" <saeedm@nvidia.com>,
 "tariqt@nvidia.com" <tariqt@nvidia.com>, "mbloch@nvidia.com"
 <mbloch@nvidia.com>, "alexanderduyck@fb.com" <alexanderduyck@fb.com>,
 "kernel-team@meta.com" <kernel-team@meta.com>, "johannes@sipsolutions.net"
 <johannes@sipsolutions.net>, "sd@queasysnail.net" <sd@queasysnail.net>,
 "jianbol@nvidia.com" <jianbol@nvidia.com>, "dtatulea@nvidia.com"
 <dtatulea@nvidia.com>, "mohsin.bashr@gmail.com" <mohsin.bashr@gmail.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, "willemb@google.com"
 <willemb@google.com>, "skhawaja@google.com" <skhawaja@google.com>,
 "bestswngs@gmail.com" <bestswngs@gmail.com>, "linux-doc@vger.kernel.org"
 <linux-doc@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "linux-rdma@vger.kernel.org"
 <linux-rdma@vger.kernel.org>, "linux-wireless@vger.kernel.org"
 <linux-wireless@vger.kernel.org>, "linux-kselftest@vger.kernel.org"
 <linux-kselftest@vger.kernel.org>, "leon@kernel.org" <leon@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 03/13] net: introduce
 ndo_set_rx_mode_async and dev_rx_mode_work
Thread-Index: AQHctuhwc+65en+LXkW7/ZJyOjrTuLW8DZqw
Date: Mon, 23 Mar 2026 12:09:49 +0000
Message-ID: <IA3PR11MB89864D233E1C90E5E5A26606E54BA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260318150305.123900-1-sdf@fomichev.me>
 <20260318150305.123900-4-sdf@fomichev.me>
In-Reply-To: <20260318150305.123900-4-sdf@fomichev.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SAWPR11MB9733:EE_
x-ms-office365-filtering-correlation-id: cd84c15c-84a1-42b9-281f-08de88d5155a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|366016|1800799024|376014|18002099003|22082099003|56012099003|7053199007|38070700021;
x-microsoft-antispam-message-info: groKjJgV6lsSivjU9CPIIC3+vobQtolv92PuFcISmjGCjlfPzALAutPdDX+DB+W2sHx4vvxaG85ZiQBanETmFd4RU+uzPa+LxTrOmk5hOGA8un9h9BZKv+uE3ifOFkcyZLjnFuz5XmkOFQeHVhZWLxCrJ/ifPenqMiuxHe4qN8ol75tedEf6gCRCC0TrktsIxIbGWLBIpkO7SzoEDeOicVTRjjoRdFmyU4LKaeuHKAdpP+LNobr6mJU9rB/yLQmG/CUGlaxSeLchqiLvQwMCSYhndHr7aUqwIM8fdaiqlJ9hqjWf0bfS9orsf78ziCW6qOnnNaMnyn2vKbhckTh5iqDfsM4SQnOIlXz5bGRIhmXpFXYLFMEULHQZxq5yTGGvbh8dY1KvEVuKt/kNBoPKejpSmK2eY0Hu+IUDG1z6kemwoGRuD5b0Fphc3N10fWB2F9xCACNvIEFA5N8WOS8thpVkkXDgevZ2TkCbzawJZv2+QRDqXuHA5/yZ2+potziqP01VK5WWQdeuA8RR49fRSl0NCawCeRogNorKgYy40X5tu2YdJbZJRev23aFi31zlNf6q3l+8sHitgKp+VyKN6KRH7sZ6ZnsiONruI35eqW30dGybjx6Fij9B0hUzTm4AcGK5kPtJEyFgalOWJa3QH60GbCjcrxafNCfxb3SykIpZPYzkcsGLLjCU9k2rhZ43FJEzr1ZXmauywk8GU/ioiS3oKwpzLm2RB9wsvSusrn+aaSTFnLpWcJiEcRepAh8hj2ZsK3fDktUGiZuRri8DGFami6v5z4S2Ur8wSbRnr6s=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(1800799024)(376014)(18002099003)(22082099003)(56012099003)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NyQJSJTxxiC3UAv+nOHYY3wATQmalzp5KT9VHjEcFHdjyf8Om+5zxSVD8pco?=
 =?us-ascii?Q?kSLL3RfWWNtU/zqPCb3xN+nwtctOTX0ZXJcRYJ1GbWoCTOwsoO7V9Iu/OCXc?=
 =?us-ascii?Q?bWMFZNYnbyJMN2HoUqhemiJTtDTFgEH1XlcG+0aQREe48RhguiaHUzDd+aPb?=
 =?us-ascii?Q?p2vnDv1u2PN+GefvaWX6mrdfXwNqAkpONAZ+M8QuccgqI8gDTn++2NlENrBf?=
 =?us-ascii?Q?78wVBU63cgBfs7KZRpcF+m4cdBHUgYAQTtMBOrBlBVCTpdb2EBlL8MogiAgO?=
 =?us-ascii?Q?aTDj3QxObYTnCFtpyln6U9aTzJ7Owi3BOqJrydQ8U9gIObHDVfKcwMbXL52M?=
 =?us-ascii?Q?Nea+kuhyMp4rHTuP5SKergetBbyufogoUX5J6JdLb79b1895w7sgyyJ2FpkI?=
 =?us-ascii?Q?3/qFdG0nPVHUAAZwLhDh17W5HK6O1g74+jbf5TgEPRL5+iOKPJVOW71iA+6q?=
 =?us-ascii?Q?LPYfZYB6ExAiB6vK24BqRn5sK3+RbjeF899wMroIxBYZxxWMsgNQrm9bO7LW?=
 =?us-ascii?Q?3UeFX+ZaQ6j3iLsUY2gkbbVj9aaivbcKn4q/DMGI3mI+htJVIFtgvbyLqUtr?=
 =?us-ascii?Q?FVkn6awhDoZl9qyMabtVivzaZv23vHAm7aYVnXzYJDWsgmGHr18rceUSA50D?=
 =?us-ascii?Q?gur35HZf/Zv12vb7JIOLCOUsA33N5EfzLa40N59SskCMfSGnCZ1K1H5W4fkE?=
 =?us-ascii?Q?c8FJCYNq8GNAiLvZfN3hQYitvICwaawbR8skE+l9eiMe/l2b38QpS93ghoqq?=
 =?us-ascii?Q?zYjQ3tODC+1oSQmnKMY0COCticugtcH16f/smm60Cj4h2OPUVRlCLLCFSr1F?=
 =?us-ascii?Q?1Qg8W4I7sqDfz1talX5fMSLRhFxSU6rICI/06HXDPTkzasnlwtJNaY1iliSS?=
 =?us-ascii?Q?/xtHC9S7Cfb1fx98CoUOCISMfZblfZc5lLRtUflEy5PUxssDWf89QyALslDN?=
 =?us-ascii?Q?NntXhFgbnUuec8Sa6Ts2lBFBpFXzobJcFvI+DsyLkloU7r0oV6Z97D7i6fBY?=
 =?us-ascii?Q?GIvMWCPwRZvBCYm/FG04bcjr+2sIKac6FUr/Ixn8IxgfOnlEakiLNGrG3kh5?=
 =?us-ascii?Q?oCYXLOCY33J4EYFnqqgS/4tWDjyOO2vczy0uNOf0T0G5syFjG869Yljb+beU?=
 =?us-ascii?Q?WL4NwBPP4mTur752x/gv5ZmznVZcyUKrW5JQAtQpStGJLUOxLw8mrIRbmXiO?=
 =?us-ascii?Q?Oi+xFlFa50Jwh7UAGgMptXBQle4VA3UfoRwtapWS8KqRfczJvUszyHBvYiHS?=
 =?us-ascii?Q?xqVGAH9frbLNDbMTtTuzyj6iwQsVeRRGw4w+GrIKXtz6WSxEI0yKYNLhxfVY?=
 =?us-ascii?Q?j3VEpRMfEszKEDsjOwAMvCRJU3ZQ6DMZUvHnNNY93+ahQBX1VDv5z0YWlSOp?=
 =?us-ascii?Q?kBQCoM3VnrJY7blNf4vd8nreWqxVmMawSR/FSMrxmm9Ioch0QBdhIjRhm8gX?=
 =?us-ascii?Q?GpqsqdotNN1nQVbd4kX6KvqYXR0tlSsKre57K4gY+YSWq4KrdxG813yXT7gr?=
 =?us-ascii?Q?rD18MV7VpQtT8MiAB/nAoe58yunmh/Eb2ta6HiQE/1TYXOnT+gHZEy+Wqo7S?=
 =?us-ascii?Q?+zw/cUOPqI/ODrTjFcWoOmkELLs8o6EtfSjxrOHreiSTBP/NH3dp7h3t87yr?=
 =?us-ascii?Q?l5MWcM6tXX42eZfv9TLIybCoEfPtopYkDH8gsk6bXHrDUfpAZGIZ4qh040Hc?=
 =?us-ascii?Q?9+wV899I8xj4NXFSk6UTfGZaLMa2TJ1XZFzKA8UsM0cz49SJIgr4xSwp2+H6?=
 =?us-ascii?Q?8ogi8tTrYtUbgndOVEg0OvhAxXAm4oI=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: YA+edPw/4TducWFsC6Q2xkuLdQfPKni1Cf0/WZtEzujsqMy42H0M3FSrV1laS3FXP7JG85Vy4YOqVclfZSCi1XJbOwmOq+eLpF4tiONgknYezd2/1OVnTtkJqSZVGjNMB8xGd0FFrkWOZPwdL9dg7jk/3GZD10CpTgTgGurxoYmFYSkMqFO1GsJo/BwFpIgm+F7b+O85Dyej2UkEIosdTYOv6IV4/4V+yI+7ygxPr0fuH6s41+ZtXewlDBZJfIM7hJB6lSayCT8VMhnBXNbvBDgq2zuSx7bREXSiHT1iSYceYiZ/jjIdxo+nfeULD+x76KkWs8VT+c7PL44kNZEn/Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd84c15c-84a1-42b9-281f-08de88d5155a
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2026 12:09:50.0211 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BdIDHjIhKNyurO848MQxdBxPkyOrr1TYxtiP3J2QKGSrb3GkkovQPpflpEd/Z5ZCyNdgFlO+vlkEGDBwk0UBhcs53wFiZe6t1tWHMkqBu8E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SAWPR11MB9733
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774267797; x=1805803797;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rnDKU82b2spcPpuDijtkce+QFidSHe/UfcTR8JdyGaU=;
 b=I+BbcvSOzbcocSEC5ZQsb4YPh7X5ODPTtCM+wNqXOUPrCVXbZIIiKNgB
 55Om20Vf8fWmfJUbqkaJHbuWj7yWgzwNhNiIaE6aHrJAA9wCgALrNwW4z
 wGV8/zs48xRUFaCisMiJEa1LdJ+vneWoT3HeVnK6A1dN1GSYCz11Mk4H3
 IOucVN3ZddLMj5mtIPKAQv+6TLTPJJmuNIBPToztJXRY5V0THzj4Gq6LN
 /V18mzcsCZgh9cZvSg7jZF5bQ4tkwgsjRXH8LSRZke7qzP4AyPgnrbK48
 dz+oB+N6r0AvD1riKiqkXDa3K9/aXyI4Cli6ssetD54qsPNlmrFbujoxc
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=I+BbcvSO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 03/13] net: introduce
 ndo_set_rx_mode_async and dev_rx_mode_work
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:andrew+netdev@lunn.ch,m:michael.chan@broadcom.com,m:pavan.chebbi@broadcom.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:alexanderduyck@fb.com,m:kernel-team@meta.com,m:johannes@sipsolutions.net,m:sd@queasysnail.net,m:jianbol@nvidia.com,m:dtatulea@nvidia.com,m:mohsin.bashr@gmail.com,m:jacob.e.keller@intel.com,m:willemb@google.com,m:skhawaja@google.com,m:bestswngs@gmail.com,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:leon@kernel.org,m:andrew@lunn.ch,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[davemloft.net,google.com,kernel.org,redhat.com,lwn.net,linuxfoundation.org,lunn.ch,broadcom.com,intel.com,nvidia.com,fb.com,meta.com,sipsolutions.net,queasysnail.net,gmail.com,vger.kernel.org,lists.osuosl.org];
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
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 9D1042F1B08
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Stanislav Fomichev
> Sent: Wednesday, March 18, 2026 4:03 PM
> To: netdev@vger.kernel.org
> Cc: davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; horms@kernel.org; corbet@lwn.net;
> skhan@linuxfoundation.org; andrew+netdev@lunn.ch;
> michael.chan@broadcom.com; pavan.chebbi@broadcom.com; Nguyen, Anthony
> L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; saeedm@nvidia.com; tariqt@nvidia.com;
> mbloch@nvidia.com; alexanderduyck@fb.com; kernel-team@meta.com;
> johannes@sipsolutions.net; sd@queasysnail.net; jianbol@nvidia.com;
> dtatulea@nvidia.com; sdf@fomichev.me; mohsin.bashr@gmail.com; Keller,
> Jacob E <jacob.e.keller@intel.com>; willemb@google.com;
> skhawaja@google.com; bestswngs@gmail.com; linux-doc@vger.kernel.org;
> linux-kernel@vger.kernel.org; intel-wired-lan@lists.osuosl.org; linux-
> rdma@vger.kernel.org; linux-wireless@vger.kernel.org; linux-
> kselftest@vger.kernel.org; leon@kernel.org
> Subject: [Intel-wired-lan] [PATCH net-next v2 03/13] net: introduce
> ndo_set_rx_mode_async and dev_rx_mode_work
>=20
> Add ndo_set_rx_mode_async callback that drivers can implement instead
> of the legacy ndo_set_rx_mode. The legacy callback runs under the
> netif_addr_lock spinlock with BHs disabled, preventing drivers from
> sleeping. The async variant runs from a work queue with rtnl_lock and
> netdev_lock_ops held, in fully sleepable context.
>=20
> When __dev_set_rx_mode() sees ndo_set_rx_mode_async, it schedules
> dev_rx_mode_work instead of calling the driver inline. The work
> function takes two snapshots of each address list (uc/mc) under the
> addr_lock, then drops the lock and calls the driver with the work
> copies. After the driver returns, it reconciles the snapshots back to
> the real lists under the lock.
>=20
> Signed-off-by: Stanislav Fomichev <sdf@fomichev.me>
> ---
>  Documentation/networking/netdevices.rst |  8 +++
>  include/linux/netdevice.h               | 20 ++++++
>  net/core/dev.c                          | 94 +++++++++++++++++++++++-
> -
>  3 files changed, 115 insertions(+), 7 deletions(-)
>=20
> diff --git a/Documentation/networking/netdevices.rst
> b/Documentation/networking/netdevices.rst
> index 35704d115312..dc83d78d3b27 100644
> --- a/Documentation/networking/netdevices.rst
> +++ b/Documentation/networking/netdevices.rst
> @@ -289,6 +289,14 @@ struct net_device synchronization rules
>  ndo_set_rx_mode:
>  	Synchronization: netif_addr_lock spinlock.
>  	Context: BHs disabled


...

>=20
> -/*
> - *	Upload unicast and multicast address lists to device and
> - *	configure RX filtering. When the device doesn't support unicast
> - *	filtering it is put in promiscuous mode while unicast addresses
> - *	are present.
> +static void dev_rx_mode_work(struct work_struct *work) {
> +	struct net_device *dev =3D container_of(work, struct net_device,
> +					      rx_mode_work);
> +	struct netdev_hw_addr_list uc_snap, mc_snap, uc_ref, mc_ref;
> +	const struct net_device_ops *ops =3D dev->netdev_ops;
> +	int err;
> +
> +	__hw_addr_init(&uc_snap);
> +	__hw_addr_init(&mc_snap);
> +	__hw_addr_init(&uc_ref);
> +	__hw_addr_init(&mc_ref);
> +
> +	rtnl_lock();
> +	netdev_lock_ops(dev);
> +
> +	if (!netif_up_and_present(dev))
> +		goto out;
> +
> +	if (ops->ndo_set_rx_mode_async) {
> +		netif_addr_lock_bh(dev);
> +
> +		err =3D __hw_addr_list_snapshot(&uc_snap, &dev->uc,
> +					      dev->addr_len);
> +		if (!err)
> +			err =3D __hw_addr_list_snapshot(&uc_ref, &dev->uc,
> +						      dev->addr_len);
> +		if (!err)
> +			err =3D __hw_addr_list_snapshot(&mc_snap, &dev->mc,
> +						      dev->addr_len);
> +		if (!err)
> +			err =3D __hw_addr_list_snapshot(&mc_ref, &dev->mc,
> +						      dev->addr_len);
> +		netif_addr_unlock_bh(dev);
> +
> +		if (err) {
> +			__hw_addr_flush(&uc_snap);
> +			__hw_addr_flush(&uc_ref);
> +			__hw_addr_flush(&mc_snap);
Shouldn't here go cleanup for symmetry?=20
			__hw_addr_flush(&mc_ref);

> +			goto out;
> +		}
> +
> +		ops->ndo_set_rx_mode_async(dev, &uc_snap, &mc_snap);
> +
> +		netif_addr_lock_bh(dev);
> +		__hw_addr_list_reconcile(&dev->uc, &uc_snap,
> +					 &uc_ref, dev->addr_len);
> +		__hw_addr_list_reconcile(&dev->mc, &mc_snap,
> +					 &mc_ref, dev->addr_len);
> +		netif_addr_unlock_bh(dev);
> +	}
> +
> +out:
> +	netdev_unlock_ops(dev);
> +	rtnl_unlock();
> +}

...

> --
> 2.53.0

