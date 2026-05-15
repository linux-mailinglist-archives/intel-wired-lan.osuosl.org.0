Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SFYrBAoOB2oLrAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2026 14:14:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B86AF54F427
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2026 14:14:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5396B610D6;
	Fri, 15 May 2026 12:13:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7YaIIciIcV8c; Fri, 15 May 2026 12:13:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B40BA61246
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778847237;
	bh=RhRnepgPOxAU+Oh9kciB3pyk8UBMiijxBlEhXYMeIT4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=U3I6jBNgDFD6xHMTq268G3M3cRWRRvZQc/AQnSl5Fk1dTV53Lt/HOzWjCVPGANCBM
	 R6JrTT1S5+WWPVbkmjs/1b1toaebTs+STYdwAW4MJeLYeO53Buis+R5Lc9Z6E+jkVE
	 SyYtBYX3+FTT6KVRPdbvuUC+0JIjMWy219hrv0ydkB+hRK57Dc9t9EbYsbbNve1EkH
	 XKo/0sMgWlJIVmqFnKPBZaP3MzW3V1ydoSA3yVxUFPxDRIB9HHz8BslfxRBgXdT2VK
	 bYvw0rsixrznZsM1EIxCZqH+1ah4Qg8H9FOcFuz8FM+I0XokFn1AYeYOUXvx0XnPZV
	 DdA+Sw7gBuObQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B40BA61246;
	Fri, 15 May 2026 12:13:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0AAECE7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 12:13:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DBC288414A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 12:13:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZKCbk4KGRo-d for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 May 2026 12:13:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 106B884149
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 106B884149
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 106B884149
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 12:13:54 +0000 (UTC)
X-CSE-ConnectionGUID: nCStHK/dRwqNs12qMT0L8w==
X-CSE-MsgGUID: jgjP27vsRF6d53pImdVjhQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11786"; a="90905237"
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="90905237"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 05:13:54 -0700
X-CSE-ConnectionGUID: I2fEgyFNRzuXRObMsle1pg==
X-CSE-MsgGUID: 7rEaOtDNRuabFpq7kX1QSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="232275888"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 05:13:54 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 15 May 2026 05:13:53 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 15 May 2026 05:13:53 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.58) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 15 May 2026 05:13:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Vlpjt1AgBT92ynd2YaaCkZ2t7GzHM4+qW6s/1wlJHwwKzLmeR/Z4U4txteDzDP0uFYyJNO2WMOaYMtlmC93b6RuzeBLWKgDklrQhbP8O7n2CBgQTbIHbyxLEd9j0yr42yTm8duWqPFL8r6038tl8t1UaUWZ41tM/upHrRfHbaN1wGKFQ/yD6oMcqCXkUNbOW//GBtqrp+ZGcGA02FCMK/xhOR6Y7VxWEMxZB+uvSAINGJ0ObLnjqzJsLfwAu1dq0/OZBepytNcH9jaLFa7ScxRRUw1ElaZJ2STYrdYwVrGW8IDYJS2TLOdh9A5oDGMCrU1FPXObyykjyYqNiRO87kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RhRnepgPOxAU+Oh9kciB3pyk8UBMiijxBlEhXYMeIT4=;
 b=Ib/m+Uir52in5KpIqh0S2NuYa2noBo1KKHylFJ12ZJO6AbeRLnm3rFVkurHE/26XqsR9TwLiPdBUdy5cXDCLryvGk+68z6HRfWQK1g9eswwzbyOD/iw2B9ollyScUXuUJJ+amZJnWw5Z89/8k7Nyvi8BSHTbCmjAut9k/zA+bWxtQxwqgXjjZ/YuAilH374qkTpTS7ToWPQj5s6jwv7hx0xBVQcQRlGcHT8sKuwW2Uien4/Kz5LKj4ULpvKVV87itkwVs7DwXwPNcXEicGmYJuRmb+EvNidoU2ZKT7A8C/pbc58FxzXKEUfP2az8LyPADwN3KwjtAVxiJfQhwonQzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CO1PR11MB5121.namprd11.prod.outlook.com (2603:10b6:303:98::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.12; Fri, 15 May
 2026 12:13:49 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9913.012; Fri, 15 May 2026
 12:13:49 +0000
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
Thread-Topic: [Intel-wired-lan] [PATCH v9 net-next 0/8] dpll/ice: Add generic
 DPLL type and full TX reference clock control for E825
Thread-Index: AQHc4/YJ+bUkYh6dtkm8AzZ/R8/pBrYPAFXw
Date: Fri, 15 May 2026 12:13:49 +0000
Message-ID: <IA3PR11MB8986B93163E2FEC79BAB36EDE5042@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260514225946.2885623-1-grzegorz.nitka@intel.com>
In-Reply-To: <20260514225946.2885623-1-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CO1PR11MB5121:EE_
x-ms-office365-filtering-correlation-id: 57f66805-6c3e-4577-0651-08deb27b6bf8
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|1800799024|376014|38070700021|18002099003|22082099003|56012099003|11063799003;
x-microsoft-antispam-message-info: 2b+cV8ZpI6sOiV4x0oVtXrMRsyZhkRc+vjf7j3qQZRZmFZZ/skOYZ7d8ZQU+NEr5fXvOv5dnk3QK7V4wRy/yv1D4gWGeuUhLQe7k5RIOfDLUTVTUKGiJljRwoGORf8MxLbjODZlwv2mwLz4GcAmp5CyYr+Fa0yq3HMm//CVPy76wOEdG/r9GNMtqdYWibljQoQp3gfTChQbB/jlw7uZOEKBMpP3QljF/eI5qrmM4ytpy9CCsU9MQEtWF80mB93Oskarg4wHWQfJrlpvRoVbPecQp9TECNHzZ21533nezwhE5hq+sAY3snK+EITGmMoC3X2b/7UWXuOqkdMzc/1p5wjl3rTfGj4jh5bp+MboI6dWJ6WxTTgxS0VT0Mls9tToHIfgeW5Nf40aSAhavgmoz3sYiTJScgxr9pIsKW2bS5BaKLIJxFcsgh+4Nv2vuaNrAAuqkqdxZ+RR8jUCeuBqIbvgFoHmGykhwv6gAUZEZ6s4hzaTDkOTUBdTnYkLwUsYf46oJ0cekOfq7CF/M4fnz2mdaA6G0M1mqSrQoLbonMXA5VAyOlegL2MTusIcG/0ogtvkcfdsY1vRieExHDB501ubjHLEUFi4jqwgGtAOxglNfw6Jc+eS4IoxWKNuHOrCpfKJA8HUbiu1gXusmnqiNhVu3lAz1hEQmSuExMvoU7aiP85w+U6zHx5RrRUJQ9ItBSvg7xmsDlV1jaz9Iybi7t0qe8hjQ06JlEnfckYxhWrYNmZOZJpkZk6AndUvDxH1q
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(1800799024)(376014)(38070700021)(18002099003)(22082099003)(56012099003)(11063799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kaNMwdDOGjI3+QmodxwbwplmDI90BkSYMkm20axxQ9QfaJpix65fR5H2TWws?=
 =?us-ascii?Q?m4TtKo+FbNSDz1eJHO0AG8gyg7DUZovYgHWZQOHC9oHgzkiWog8d0UkAJivX?=
 =?us-ascii?Q?sW+Z3dkKBPpJwxaf4o9hhmen+UlCnVPa4edKNeinX/3uFIYv8ARbT+rScCxL?=
 =?us-ascii?Q?RbhQqxL5s3FURqniUG6O6osrEPAIfVXeelCZu/XSRBel04AQqJIXXdN54YJt?=
 =?us-ascii?Q?+bAlwuRdvGRfAa6X3KxHoNf3P9dcujcz468/Nvo4bdKacDkcNMda/FyLzpCa?=
 =?us-ascii?Q?cGzeA7CcrsD4bEpwF7TG/dRtwF5nK+1zfQ1VSJ/ZKv7FSnCwxOn/Df3QVRW+?=
 =?us-ascii?Q?SZh50X/hZsG9O23NzV8Hs4oU4przoxlcwQ/Rqn54xoAr5fx/pYgxiRbt5Hf5?=
 =?us-ascii?Q?8P/uiVSa1gjXsPmBj+0LKoYvJzvmtMK3HqNS40eqKYQaPjsCvpP278yH3uFp?=
 =?us-ascii?Q?nUYHAlo813GzMQ7XpJk7DlOZ3LpDLgiWp3RF8soAw5apaokPXyXRJgHxpUYS?=
 =?us-ascii?Q?ZT2WBIomhfzeyX7Pah6Zd7IXYdAAZGX3xTL6hErM+KVOngR3EdcwFEnzCNpg?=
 =?us-ascii?Q?j9EmBj1HrqVr9Eq+NJ4P4k/guh4jfiLCbfR4jyh3DBWZmmKMzMD5IdK3P5XB?=
 =?us-ascii?Q?LH6RBZAolOex+z8n+8GxNvGGg66WsMD/I154u5oYule6jt53x2bTOH0ziH1z?=
 =?us-ascii?Q?gTgOqXit9bhilVkOhEXcw/JE8+lUJPgl44yYhkpX4fCdT86l0qzj3JFEynnf?=
 =?us-ascii?Q?HAjvQH55TsRwMhEZQGrIJJoxQLzG51d+l2mvVG/C3dy2nL8rr1Jsug2RyqIk?=
 =?us-ascii?Q?Uf1/URRylg6Kc0VngXfot3YuXYcYhvY5OqNsJBaQ6KZ2AeO/JO2szvhMQUKV?=
 =?us-ascii?Q?DLr0RTuGpsHA+tXTZNIK48f9yQe7MLuj4tQMtELwtKAXoG0buSuQQ8qI3znE?=
 =?us-ascii?Q?oZ29vBaF4/v/K1XOmhqz6Fewq5iYKU2Ck2sSybYO/aPAFA8FbTGg2EjEGJJL?=
 =?us-ascii?Q?pLOW34rH5gBzwgRf9fQyplkJLl9ZFhjtY0xwYPfyRo9Cn9pOAPYJ4jzya2n+?=
 =?us-ascii?Q?JM1GLKpFp9M/iNNfQ08Jw98HB7kSFRr/dLRfnS1kvC2mcdAMyYJLYYSU4yAT?=
 =?us-ascii?Q?XSdeshYREh4Gtro1fYuSMFj1WPhibfGSXxRLPfzA1wYU64ClqAVgziDZVmiZ?=
 =?us-ascii?Q?a3ooIvC4VUjFPfn8XRHPgW1jfHhQL9Uocx9v7nqtG+GLG7dIFs/R31Hk/gsG?=
 =?us-ascii?Q?Ibtm03gRxRQp14csb/FAdC0MMN859iswXl08UgkActK7tRrXphF+VmGYY0xz?=
 =?us-ascii?Q?Ctt1EIZqtvwQG2lDRzaROMjRizdmrX1wVZGF/eee8ZXJvKfb3d05oL+cWFJy?=
 =?us-ascii?Q?psqc+MV7krqJSt2eLciT0J+Ra186HHGN38sg5Vf8BtQS4tSs4bT3hoZeFsxS?=
 =?us-ascii?Q?H8Fo8otx35rMOs4c7+3yWO/wbG4IqdYNU/QykMQ3Pu0Ekr6sdEa2wl6v4Rbx?=
 =?us-ascii?Q?wUmmlg5TELOEqWqI0dRi0aBXXM8AHGrVOwXpMKyYJmvRcLNYBJcAgLGCcaAF?=
 =?us-ascii?Q?1WlqyXAxyRLgWFna9fde4xJMfbCcArGN1JPvKmiJ4mcZvL7Z6Tasmtsl1vO1?=
 =?us-ascii?Q?4LLfHwtVDSXH2kpyursFeFB+YZ78pJ1O5VePUbsBqwDY1joYDmcH6WIpGEys?=
 =?us-ascii?Q?OrCFlHyguuaccvEeESmrvSpJHXrxCY0AxXssLyFBdh99uZl7TrkWzi08CSQH?=
 =?us-ascii?Q?ziGyIFspInYydOP3anoi+9KczYNYJPI=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: nG8Gx2AcnPoyGES+ErUhllJiKsvokhmKaI/TswANY+eOjfhLGHzUY+nYwg2UEE3SEqgvUMzepBPmiBsD7YSBHlfxlIgXtAuAWOHsXLw2oqoZzfLxploWLRYXUWhg8IplcfLYvLML0GadthkzibPQnZs3KYBlSiShhAH2v/4LAt29ugg9tazi0FXuVUjuycNOML2eMtzxG1hLeW/DjeGqiNzC8n53+QdUbrqHFF1+kpAUq/pmffUUxOhS2XHkEYT+0tv2J1O0HsvRyn7kWwy2uPDaE1XzVhK7+AyDBL6Fojiv76xJJS04cVVVLhY26STCEgakY7/b/4067AiG3So9wQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57f66805-6c3e-4577-0651-08deb27b6bf8
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2026 12:13:49.5288 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fXarNEuJZz4F6WqhHrBEaNKAwaVaytjMcZShkJbuOx+39oHOscpCa3xLRDKLoV2Mj9eFdRPJrUNg15wd2NawTLcXSkfTeCZeRTNYSqqeFC8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5121
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778847235; x=1810383235;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=O+LqdvyeSD7oE9VEyS6dLY7ZVSJHIgTvck8QHFaLp10=;
 b=grca6jcSiPwpldL4AsN39qFFHldNHdQ7SpiHnkfTuTWgaW4sfbWBxeIB
 F4Cc/zi9M61CWZLCEcQfQUtcfVHLYKGg4QTwD8hc+VtmOmSjptWOeg7lF
 uE4JKROmTrgXDFAlDQekf182au1ciUCFzAicehhDwIcMQpDiehNJqembb
 3g1Ncv8VogqkM+RSh1Mj1xqx9pbBXTyIFvbmE1/0GFsbEblufahMoK910
 iMmAYzS4sY4AZR2CgDIWTS+H0GKxzAvuMtZOLSKIf5k+q45Vfh0a+odk0
 juYagtLRGfh4gam7dYUfX6aDdw0rrHj1xCHIo1cYO+E1iwhMPaUAfp01R
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=grca6jcS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v9 net-next 0/8] dpll/ice: Add generic
 DPLL type and full TX reference clock control for E825
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
X-Rspamd-Queue-Id: B86AF54F427
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
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
> Subject: [Intel-wired-lan] [PATCH v9 net-next 0/8] dpll/ice: Add
> generic DPLL type and full TX reference clock control for E825
>=20
> NOTE: This series is intentionally submitted on net-next (not
> intel-wired-lan) as early feedback of DPLL subsystem changes is
> welcomed. In the past possible approaches were discussed in [1].
>=20
> This series adds TX reference clock support for E825 devices and
> exposes TX clock selection and synchronization status via the Linux
> DPLL subsystem.
>=20
> Here is the high-level connection diagram for E825 device:

...

> ice_dpll_deinit_txclk_pins and
>   ice_dpll_pin_notify_work() that is about to register the SYNCE pin
>   (patch 5/8)
> - resolved potential path deadlock during driver probe and error
> path
>   (patch 5/8)
> - relaxed kernel-doc regarding cpi mutex usage (patch 6/8)
> - fixed ice_cpi.c header (patch 6/8)
> - fix retry mechanism in ice_cpi_wait_req0_ack0 (patch 6/8)
> - fix potrntial leaving LM.REQ stuck asserted on the hardware (patch
> 6/8)
> - fix kernel-doc for ice_cpi_ena_dis_clk_ref
> - removed unused CPI definitions (patch 6/8)
> - fix header inclusion (patch 6/8)
> - addressed Sashiko issues for patch (8/8)
>=20
> Changes in v7:
> - rebased
> - replace TXC-specific DPLL type with DPLL_TYPE_GENERIC (patch 1/8)
> - update TXC framework to use DPLL_TYPE_GENERIC instead of
> DPLL_TYPE_GENERIC
DPLL_TYPE_GENERIC instead of DPLL_TYPE_GENERIC
Something is wrong

...

> --
> 2.39.3

