Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MMzaN6YJB2oLrAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2026 13:55:18 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCAE54EE02
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2026 13:55:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CED3961547;
	Fri, 15 May 2026 11:55:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5B70mgA2ly86; Fri, 15 May 2026 11:55:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38FCF61544
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778846116;
	bh=rMSL4ZvvGUbDsn9hDjStoMRzaUzyiFApom9hrY/m084=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1akeYSJUoMOIOitipuJXWhs6rLfg7gSVjcnZ3puJ1mNbs5Okj7QLpkQyLlcy88GbY
	 ySVSybGekQjT48x6lQpZgtOS9o+dg21Kl3DVf5eJfnt6salUMTkR87C+eZDccnOZ5V
	 24vghOxEgZ3PyHzZBrvZSvD2peBpkq0tHRqcBzY0JcFVQxaZWTPS7QFIFew1Y0SS9W
	 lqe14hirjMVhuShrad81tzhjSU6nsX30tkiXoPfvxLLDT8nGdMEx4gLBB8iBcKE/es
	 OODOje+KiXQN9lWm0bG+SX2rX9fARcedwaLM5hNXaZVTlhTFoh5+6XKAg3nNWwD48L
	 KEpHIEVv/ETVQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 38FCF61544;
	Fri, 15 May 2026 11:55:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id BDE9336E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 11:55:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A444C41A48
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 11:55:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PblselUiv1yH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 May 2026 11:55:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9A92941A47
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A92941A47
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A92941A47
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 11:55:13 +0000 (UTC)
X-CSE-ConnectionGUID: JJ5SIJYnQ8yaGmWQfOUj1A==
X-CSE-MsgGUID: h9MPVWSfT8mJh17oK5EzpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11786"; a="79693674"
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="79693674"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 04:55:12 -0700
X-CSE-ConnectionGUID: E4Tvo4iGTvqTvGWFBvkvQg==
X-CSE-MsgGUID: jwqLXDrFR+y1ZPiJbYScvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="269024005"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 04:55:12 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 15 May 2026 04:55:11 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 15 May 2026 04:55:11 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.45) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 15 May 2026 04:55:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AU7SsvTvyg7JKIZYVbgvAk5eDQCqvmsLA9Z/z6yAubJZyLUBGfNW/+kRitcq5dZv9RPUJCOnxljy1HCb2iY0cMbizSGk1wD54ZHG3k979SnATi/upI2vflaRpdUKfVolnS2I9A5EYsDGf0eYpbGiSRGBMgFZdk2no+DhFjDBjjgBNxkOapyUEReboNiqtIKyqMzT6eJ/hExp/F7NDubkSJg+rZ/wO0QyGldfwPxP29f6F+Dp+ldcxTpbo05GY9VeQ4RmxleROgB77k6P6tV42wbSiJ8Ijkj3YJXWVh8coCtP+ZSVneXxE1MnxEKBeLa511BCj3HGUbnQxl/oT/VtPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rMSL4ZvvGUbDsn9hDjStoMRzaUzyiFApom9hrY/m084=;
 b=XeJON2/kQOwDfBY9EdWRUJgpQVPAy1RwBtbQ6oPvMuN9JDgiDxFWcKojArEDGBugB6L30ZxbF1CK7rEEqFW1LbqZcU8krAIEgS1aunwrHU6F6hw9F05P/qDZuybP/JXVUPuqPSW0+gWdJFxCIiq7cO6O7SwpNEiZJCJVlgmv7cgNt2V7hPQ+i+t7kgPqI4X53d4XmhpSH2dSGjeEBoTuBNWrBM95ySalu5tcK9mX9Iam6BaVUIbN+LcAAD8f3Cqf8/sHZlH5RTPoTDkbgWjc9IMphneMWOg9GEs72LLH8ZUK+GfAPE+De3TGeePMk99msIrEBUGILaApCyuREjWEQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CHXPR11MB9652.namprd11.prod.outlook.com (2603:10b6:610:2fb::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Fri, 15 May
 2026 11:55:03 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9913.012; Fri, 15 May 2026
 11:55:03 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "kuba@kernel.org" <kuba@kernel.org>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "edumazet@google.com"
 <edumazet@google.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "horms@kernel.org" <horms@kernel.org>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH v9 net-next 1/8] dpll: add generic DPLL
 type
Thread-Index: AQHc4/YPiT9hePMErEm0Y5We4c1Eu7YO+1DA
Date: Fri, 15 May 2026 11:55:03 +0000
Message-ID: <IA3PR11MB8986D0C908B4621D0BC84504E5042@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260514225946.2885623-1-grzegorz.nitka@intel.com>
 <20260514225946.2885623-2-grzegorz.nitka@intel.com>
In-Reply-To: <20260514225946.2885623-2-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CHXPR11MB9652:EE_
x-ms-office365-filtering-correlation-id: 58a484ce-6eed-4a50-a177-08deb278ccaa
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|1800799024|376014|366016|4143699003|22082099003|38070700021|56012099003|11063799003|18002099003;
x-microsoft-antispam-message-info: /RIit4/3yJ4qqjSm8neB1o9jh2Rh3+UUa/Pox9G3PrzHSNPkNMqYHCj+3jO1XYcYK/DvbuPwDy97zMb+AkzmhzODQ7oBbjOd4khRDtcSuRm3YPPZ2GlBlfkg4g7Nmtk2EvtVD8HnxhEahCFR/yAa9TSk355+cqHClTtTUakBgxuw1u5q+wSlejC8mGa0qSaXknFe6cKSdglOltwVbkjl4UlXtV7+2s2GM1BhkkOmVTWGZBRWe0OPLK57m/tWKkvonodb9XGeAwnR2ahVhbnJMKJU0CE8HhMjwYvQx766QnaZnXJhwoFLo8sudF6wjX13LyNE+UusGa2qg5le7Gedxmt07BgmuoQ/oFzuOxBcB37GD5Si4M+t8AIX2PxIWoxWnauqtHqgb/VR+LRFJQasBh+UYcHtCrA+9MMo5awHxH0sK0fZzknowp+EQuHCmGkM6hDnwKtE9HZ3U6twERFVi5orbR6p5TvIBQPQ1CWcasF9lzW/IoM76c3AXrp0T/bOpe9gdWTlV/VKHTukZoMmFawgLNQCIYCzHRFWtzvC3gSOyFh3YrZ97XBDMuxeCQgluqryiUdsTkpzFSCBnS5XpLHFY8p5AtMLVatEHImM+Yu5vCrMHGmz4lpV3o76j/yPazdYIZB+BRXsTYzgA10rH94hk0VrdX4Yt38Zch52zREDlE0YC6vW6MDJXYm69t0xmzCAdNwBiuLTP9QmZzc38dX5O4Dt4QgpgW9xICpXZsBmsfVhx2xAaTk9HnL4D7uC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(1800799024)(376014)(366016)(4143699003)(22082099003)(38070700021)(56012099003)(11063799003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EMKJ1yz4jQ1/WJ75W88Sovce+/8J04vVfnoE6k85lnq1yJRn5aRr1PGCuDfM?=
 =?us-ascii?Q?UG0WZ1fDK8X/pxfq6ueknaWkbvZgxQgWw1OTZW2+Nz5X69Emw11MJryDAmiM?=
 =?us-ascii?Q?Ew4MWAGXM0U2XI8HfE7Smf5BB8lE8kclxfuhUPuGEd4Wv9QxECjpYTxteRZo?=
 =?us-ascii?Q?9oqCcxBKYDGaX6hNjVKhb3OGkQdMoa+L9HI7yjCO2INgks7A4MgiQ/rjuuMK?=
 =?us-ascii?Q?jOtMbHzM0dxorFrLofN7Ovh3IJrjDzZlNWCVbkbUdwIc+jT+896uMaFZZpSD?=
 =?us-ascii?Q?lOdOZMw95/tt2jfse25lvBtDu6Z4RvbVgysCg5AMtgIDgxRCwVhRAQZDl9ej?=
 =?us-ascii?Q?8XkE75JRDVlqXEtdThXY0mZWIFPYR7tZE1vddBD8oGpqsnkEBT3SKhGUCmmS?=
 =?us-ascii?Q?ELcafx8ekDpOkawmFbCq7FPYt7OXfenLppA7cmF7j6KtK51vhxc/uLotw9Bx?=
 =?us-ascii?Q?AgivTaiaBb4cx/HUUPdZgMNPgFCaJo72EYH8ps6/e2eVX7AXBW75+LD+w0sm?=
 =?us-ascii?Q?XH2kgpK5/6/1v70z0esOHYR5DNJTgE2OWcppZpzGDzqmO8yl5b36DPsKRX6s?=
 =?us-ascii?Q?VxXjqPLQ2+XsVLfGE9H56T2Y8iE1fDBL3E4f+lwS8XStpxoA9x74R0h+XC4E?=
 =?us-ascii?Q?n0Jd5/yYTwH3K8dnGE25Fl2dYMzbYhZDF+y4KkYFTOXIwjtgz/pxF3ah1a5E?=
 =?us-ascii?Q?4VU2Ht2CiNeR1EalNGUDnaj6wuvOcrjwCMA0gPGQ4iPVWV4eau7mFE0oNBor?=
 =?us-ascii?Q?i6G2VMyN2dsRdBdtt3r91w4BeqUhj2Jqiu+UzWiO9iM1wZqU7iqKwEdwRR+j?=
 =?us-ascii?Q?/AP5w39UrRLu+v+Ut+xMUmWY6FPKW+FslZmwIZAt2etVJmnUcQRWnQ34+q5B?=
 =?us-ascii?Q?40kUM78ZZToPFWVhwAbYrVbL6BtNmDnQgpv506YH0oYBHG5EDLz1NMYk0OUC?=
 =?us-ascii?Q?OFfJ7SJ10eEUXAVipRO6JBfqDXsXwaM6DgiYRIgmkT5ZjcI/IWQ+cQupslR0?=
 =?us-ascii?Q?/cJLh9k1QnsT4EnE4lFBZ8M5j3PmUTvnBWP8LVi9C+J8y+QXLXqxMTJKTjVr?=
 =?us-ascii?Q?3/7hYFrgEZnytlulq8+MhIAalCHTfW8RXGG83RyID21lU40mBGjrmLftmE0M?=
 =?us-ascii?Q?WNy/1yZLicUiWNs7rVSs1PTYDeK12Qci8crmViveAAzmxUN6en3KVcJhqHfp?=
 =?us-ascii?Q?BpAoQ/PUTzTydSxkpudzckwWhhSWVbvkeuRBPAYEM69UZgytZA9TW+5HITkd?=
 =?us-ascii?Q?FkoGq90RwXfgnLIR7b+BXP3laBQF4HKkJHEdDcRGTCGxfTqoF7/Z0Vly2wit?=
 =?us-ascii?Q?Zsn44pS9wmvgij8fIu0wp5PvTk5PGChhUaIk6rj19n6qqcSKNIBZoJX4NeqO?=
 =?us-ascii?Q?unLfGq38bbGrvEuzFyG5uAuneHvHjbDYuqL3zn4IKfRcEiyl315gu+tVLEgx?=
 =?us-ascii?Q?p2Ay0CwF/P4mg+EGDd5peC3dfPFIgpPNkeHmosbWqZldPu9oPefQemk4ZeZ8?=
 =?us-ascii?Q?TFfTTAHn88++z+LZhoR4nvv8orC1Opa5Jx1bPslSTh99oR8brMU4ROTU24z6?=
 =?us-ascii?Q?MrA/zMn2UslmqPtUz4tVQDq5T6JKpjtfLTkztHWv0JxY8WxnImVqdLpJBD+j?=
 =?us-ascii?Q?y3MZiU3UEFjN710VeEHXSvr7OnD9Z6+BJYDaEmTANzAXQ/WDnlVDWx0l55qc?=
 =?us-ascii?Q?LRFIGDaMEB/rEJ5sspHKXBMHz0GP2mzbiZzLNdDTPoRD2F0tEkvr/LaX+iL4?=
 =?us-ascii?Q?dwgEWcLPfvibt0ybewiVf0RNgomL97k=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Xw7xvExHGbkz1QF/Flqip+hypXcrYntjPwuIQL0xfyL96ZfiSMIa3PdQJjhQQk89+Lw3uWBjYyBy2wyTKxJ4TGVNNX4Ikc+XfyZtuOm+bzYkVeJG+TIdQrOJvLUTYPlP9OhXtWkFV4eRcM6Z+gA6uZTSuTcXPDUUcykP4FnwNxvrSw3VXp4dUVWs07fibRw0MWoiSD8z1AYl9CjVATY7nlrDQsU1heb5gNddRq0cPs2dJ+u+VOkw/hFViJNipbzDH7MXb86dBl1Om01WZ57NDLz6Obg6uWLGQavYiUU7Z689fIwdOiypvZhNGtonXZdsilzTW+Prp4KzXeISgdua6Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58a484ce-6eed-4a50-a177-08deb278ccaa
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2026 11:55:03.2204 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1nQV9ypXWvT8CkOsbeGytWnhLPUk1b5bXhu4Rlns4i+QOlmOrTlHyOlt5JQAcywqBcgN8ixM0zvPeH8zlWh95th6XZNwV/Pw0F5dTddMHY0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CHXPR11MB9652
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778846113; x=1810382113;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aY2EtuhXuiK3sWnq56OlvCTTeYRSEp2hkgbZOvAfm3A=;
 b=m/XpuVVNANajxv0R9vrMle4iMPyfQd2xopQinUO2ABCpd5+G7wDG2/U/
 CJotbONYeLOfNDq4QKjFD1foOB6oId/Px+1SfZ00bA7ezBlrmY6gaUOuA
 37G1hWZkxfOaPFeLDkP5cYYP1DuNMAskKVHHSR6lvJ3EAlVDgwksDlA+j
 jyIdHqQ6BYU6HHOfIcuP3G0N21Sjraw+IWJXxuY540TqfmA+6GuvBZE9N
 PTEA/b9SSmlkGLTFZ04WV3xSrrciyGmBGE3PiRJZjBcgZC/FfvYnh6riL
 lvpDXiVI4TgrswALavndMDp86miJjfb9rySGpv4riDEoot7msJC99wdMX
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m/XpuVVN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v9 net-next 1/8] dpll: add generic
 DPLL type
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
X-Rspamd-Queue-Id: 4CCAE54EE02
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
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
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Grzegorz Nitka
> Sent: Friday, May 15, 2026 1:00 AM
> To: netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> kuba@kernel.org; jiri@resnulli.us; edumazet@google.com; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail.com;
> donald.hunter@gmail.com; linux-kernel@vger.kernel.org; Kubalewski,
> Arkadiusz <arkadiusz.kubalewski@intel.com>; andrew+netdev@lunn.ch;
> intel-wired-lan@lists.osuosl.org; horms@kernel.org;
> Prathosh.Satish@microchip.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; pabeni@redhat.com; davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH v9 net-next 1/8] dpll: add generic
> DPLL type
>=20
> Add DPLL_TYPE_GENERIC to represent DPLL devices which do not fit the
> existing PPS or EEC classes.
>=20
> The UAPI type is intentionally generic. During netdev discussion,
> maintainers pointed out that introducing identifiers tied to a
> specific placement or single design does not scale across ASICs and
> vendors.
> The role of a DPLL is already inferable from the spawning driver, bus
> device, and pin topology, without encoding additional purpose-specific
> taxonomy in the type name.
>=20
> Using a generic type keeps the UAPI extensible and avoids premature
> naming that may become incorrect as new hardware topologies are
> exposed through the DPLL subsystem.
>=20
> Expose the new type through UAPI and netlink specification as
> "generic".
>=20
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
>  Documentation/netlink/specs/dpll.yaml | 3 +++
>  drivers/dpll/dpll_nl.c                | 2 +-
>  include/uapi/linux/dpll.h             | 2 ++
>  3 files changed, 6 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/netlink/specs/dpll.yaml
> b/Documentation/netlink/specs/dpll.yaml
> index 91a172617b3a..2bf83f6732ab 100644
> --- a/Documentation/netlink/specs/dpll.yaml
> +++ b/Documentation/netlink/specs/dpll.yaml
> @@ -138,6 +138,9 @@ definitions:
>        -
>          name: eec
>          doc: dpll drives the Ethernet Equipment Clock
> +      -
> +        name: generic
> +        doc: generic dpll type for devices outside PPS/EEC classes
>      render-max: true
>    -
>      type: enum
> diff --git a/drivers/dpll/dpll_nl.c b/drivers/dpll/dpll_nl.c index
> b1d9182c7802..ed3bbe9841ea 100644
> --- a/drivers/dpll/dpll_nl.c
> +++ b/drivers/dpll/dpll_nl.c
> @@ -37,7 +37,7 @@ const struct nla_policy
> dpll_reference_sync_nl_policy[DPLL_A_PIN_STATE + 1] =3D {  static const
> struct nla_policy dpll_device_id_get_nl_policy[DPLL_A_TYPE + 1] =3D {
>  	[DPLL_A_MODULE_NAME] =3D { .type =3D NLA_NUL_STRING, },
>  	[DPLL_A_CLOCK_ID] =3D { .type =3D NLA_U64, },
> -	[DPLL_A_TYPE] =3D NLA_POLICY_RANGE(NLA_U32, 1, 2),
> +	[DPLL_A_TYPE] =3D NLA_POLICY_RANGE(NLA_U32, 1, 3),
>  };
>=20
>  /* DPLL_CMD_DEVICE_GET - do */
> diff --git a/include/uapi/linux/dpll.h b/include/uapi/linux/dpll.h
> index cb363cccf2e2..55eaa82f5f98 100644
> --- a/include/uapi/linux/dpll.h
> +++ b/include/uapi/linux/dpll.h
> @@ -109,10 +109,12 @@ enum dpll_clock_quality_level {
>   * enum dpll_type - type of dpll, valid values for DPLL_A_TYPE
> attribute
>   * @DPLL_TYPE_PPS: dpll produces Pulse-Per-Second signal
>   * @DPLL_TYPE_EEC: dpll drives the Ethernet Equipment Clock
> + * @DPLL_TYPE_GENERIC: generic dpll type for devices outside PPS/EEC
> + classes
>   */
>  enum dpll_type {
>  	DPLL_TYPE_PPS =3D 1,
>  	DPLL_TYPE_EEC,
> +	DPLL_TYPE_GENERIC,
>=20
>  	/* private: */
>  	__DPLL_TYPE_MAX,
> --
> 2.39.3

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
