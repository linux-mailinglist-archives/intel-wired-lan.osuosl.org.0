Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B4319B9841F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Sep 2025 07:03:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 182CF81319;
	Wed, 24 Sep 2025 05:03:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WGRtPucjozY6; Wed, 24 Sep 2025 05:03:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 505708131B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758690190;
	bh=9OX2aHOamq9Nf/CoOMyH6F2vOudVM+sZgEEgqbpaMuA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fsewyuI4ZRNz1JV81hwO20rtm6JLseaHticXrInVlZWq/GVp6I38bFLrHq8oFHhEK
	 zy4Bo+gcKVAQGf4lVmSmpYo8yacddYfSPD0iR6CfoCrF0Ln8c4RsBsrqfHNW40Cq6b
	 OOauXpMI0IVd2cDQwRDOnvTOoBtegor8gfA0pgYx2kIO7f9Sg3XMA6EWBs5UlNtxKd
	 DRAO+KQkXBnPFGida8Jo2LPgz6oFUSUKX4WpU0wV3Hq/Ic3PsnRXkKP/BgfaflVk3U
	 zZ+Za4E2Ity3mclaq61baw8VQkqkh/o5PAKID2Q9ejriYmCDGtyjHMAcDf0I13AHMS
	 yR/P+bFRQMgnA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 505708131B;
	Wed, 24 Sep 2025 05:03:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C664A129
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 05:03:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AD1C94085B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 05:03:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WrY2p39-5Cir for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Sep 2025 05:03:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=ramu.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9D4BC4084F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D4BC4084F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9D4BC4084F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 05:03:07 +0000 (UTC)
X-CSE-ConnectionGUID: e998xrR/SCqe4SwaBtmrrQ==
X-CSE-MsgGUID: 30FDnM7yQya0KNwz7XNarg==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="60869169"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="60869169"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 22:03:06 -0700
X-CSE-ConnectionGUID: vbQaIK40Qv+rCRhzSA9ATg==
X-CSE-MsgGUID: iKB/Q1DrSb+6mkcQ3LvoqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="176061178"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 22:03:06 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 23 Sep 2025 22:02:59 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 23 Sep 2025 22:02:59 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.29) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 23 Sep 2025 22:01:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kMG/xxSnSB2nUc8wIIXoGishA2mtjx/loB7t9iY2k7nBXjdICA4NDIUcPRpNkNPmjpFin5sFh/mI1EiCRHd2y0mEFfBey8QFUBr5yLK2hF5ClPP6uvyo2uTcoJXVE+n4QB00Z9lSnUpFWyd0MtqDuNA0YY0j/+gcbqKinGi3TcPS7iOeMkM2DXGJH7dQbqFZBoiw6bXMf1tfKVLeH8o+K5sa7aKnHv+Tq8hG9LopbyKIaYJQVJFRHqHlWG5Oh02ciioDcO25rLlNE2Av+rnota4XuilStVAveFmCQHoDkrjOWoewJ9m1wXB+V4QOTCKQn+TPowPUvZ8BqKC5B3x2lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9OX2aHOamq9Nf/CoOMyH6F2vOudVM+sZgEEgqbpaMuA=;
 b=eLExfJy+mP9aDu+w4T8C06n9bn4qMNghBppRqfwD5RNPyRVHjq0pzTz8svS22YWqDFQKHVMxIpuZ6hey2Ji7Zivfy0FvyMQn7/f0qY2tKriOUeyDbDyCpj1W1ISKu1znT5c6WArGAR823Zy211pzYwipss6td0YfI5D6jZhb58eaKmtK9VuZZTAkaHPS5FGYTJ0mxqYHO3FEJiC4fxnuZOC+eaNWwyBVBQewbTq9L7XdsrPxcf8t0QbcY1/3iHxk6subSE/UscAqkIGq3LQ0WvoIXZPyHSHvJuU2QvdTR75g+jUM/vhfRmsahT1k4QfNBY2SbVQn/JpLQ+MtDMqbDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6455.namprd11.prod.outlook.com (2603:10b6:8:ba::17) by
 MN2PR11MB4663.namprd11.prod.outlook.com (2603:10b6:208:26f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.20; Wed, 24 Sep
 2025 05:01:23 +0000
Received: from DM4PR11MB6455.namprd11.prod.outlook.com
 ([fe80::304a:afb1:cd4:3425]) by DM4PR11MB6455.namprd11.prod.outlook.com
 ([fe80::304a:afb1:cd4:3425%7]) with mapi id 15.20.9137.018; Wed, 24 Sep 2025
 05:01:23 +0000
From: "R, Ramu" <ramu.r@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, "Simon
 Horman" <horms@kernel.org>, NXNE CNSE OSDT ITP Upstreaming
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, "bpf@vger.kernel.org"
 <bpf@vger.kernel.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 0/5] idpf: add XSk support
Thread-Index: AQHcIzhxe5hNML6GvUOHGESX/BSC37SggIhQgAFViUA=
Date: Wed, 24 Sep 2025 05:01:23 +0000
Message-ID: <DM4PR11MB64552622709ED75C9A0B136E981CA@DM4PR11MB6455.namprd11.prod.outlook.com>
References: <20250911162233.1238034-1-aleksander.lobakin@intel.com>
 <PH0PR11MB5013A6FDC4F3DF3FA1D338C9961DA@PH0PR11MB5013.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB5013A6FDC4F3DF3FA1D338C9961DA@PH0PR11MB5013.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6455:EE_|MN2PR11MB4663:EE_
x-ms-office365-filtering-correlation-id: 0212f66e-7a93-49a4-61c9-08ddfb276882
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?0YFGmXR+NZPc4Qgl9GkjB9GPS7XcVTEyWHWtN2LguHLP6JIGVoj7q18hQ0ZW?=
 =?us-ascii?Q?dJHUy/HIZJGXik0kO3Wb4oD6tl4rBAoS+uoRyx9CBetbIlfH/h3iuZG1tVbA?=
 =?us-ascii?Q?Ce9wo4cJFYvEDUIPatG+QjwwH5HWLfgACmEOcVUB/S1GUWwUh+pAFbARLT+S?=
 =?us-ascii?Q?mIkQ3Ee6FPESSfXa40seD85ofo0QrbCVcum7RGpV7IX/adDF1t+vX637B2o1?=
 =?us-ascii?Q?Z48qRFYXHoQasbHdEcE7shEvegCLFzfeG2+Wr+rwQIR0AvihpvS1ocqy8xgZ?=
 =?us-ascii?Q?rhpqdOrVqrDUHHIXf0fkmN4D71A9HiUZ9Y+ibOy1RxLzgDu/NkUPnafHUpxc?=
 =?us-ascii?Q?HxdU/6tpHefgeIk6Qg50ObacPdmmbYIRUQ9H3wwnMEJWwUNnd7ZANhu/sT3M?=
 =?us-ascii?Q?P9b++Oj9xHSkikBv7D2KXm+qkbO9bSM/7ZWtHL+K3i+6OK5Y/TsaucbUVibO?=
 =?us-ascii?Q?XiDbaDcYoIxkjdZVlEj30oxBs3E5dUxGBeveRItGAlnRYsB4ArCS4Byz4ydc?=
 =?us-ascii?Q?kNTcNdFHs6J2AZZpis3mxv/uv+CZzZQCiP94WK2a4u8mseq++c2R2+I3Bnpm?=
 =?us-ascii?Q?csEr8nkWI4BZrW2Jk44ahJhE1uZ3Y43q9ScnD+Ab0CemoVlHy6EEeHk4khCB?=
 =?us-ascii?Q?oBhfh+D1/uKzbOKwbto+Qc2LMaoBzRGMP/tWHiswOQLZD86G27MZVeJmz8pX?=
 =?us-ascii?Q?btNd0ODDw9A3bmUm47VItt9dSvQqT52tej5rYaE6NVMEG16VCPU2TUBeUX9b?=
 =?us-ascii?Q?3jctwhGdSzdyvWf/HgCICfTBJFWdwXQbj38hmtWCnHmb/Aoo88ytuAUObFjg?=
 =?us-ascii?Q?gtf/OdnMTBd52EfwC7yP+tlOCRUGLyZygS4qOs40aDlHvazvBMYyCqlmphVy?=
 =?us-ascii?Q?LFvNFlSa8jIzq16G4citeQdyMziIvjqkOX03zXFeo7NAO3rMpmbaDr4Qiut5?=
 =?us-ascii?Q?fs93r9LN6K9hvmqM5RSft7q4zMaJOcAu4By5kK/FyhLlG1bxi3EYF8hcOdhq?=
 =?us-ascii?Q?74YLbKWhhwPmbq0iGyQHCVeCAXXEWIQ4cNf93I1TpG0uEoRh/yzZ6B2XUkXH?=
 =?us-ascii?Q?8Ob5dJ3eCYy7hb/kxWMEpHaoALnfJCutQFqBjTqyuTrjhuRE8Td9tGjf0DSb?=
 =?us-ascii?Q?teXZlwUIlTcwxqLayC0eZn+H8vq0OIKvGwAxm38mBDxYdO+IqHmfRMv2VMPJ?=
 =?us-ascii?Q?trTmy0CC+70gAbBhvuU79DCPBI2jW85Lk/BA/bs7+U7y1qd1qxT9oZOnZtRn?=
 =?us-ascii?Q?f1k7UkYl6LD/ZFITY0t4EoQmfc+UE604apie59mGvUz3kBXWAUYtPMecOYtb?=
 =?us-ascii?Q?1ahy/n9U1FpPsBGXeOydjrq/0VBDIreTW9W9LH/j9oF8dwfoB1uJ4henlRD/?=
 =?us-ascii?Q?VvjgIhhF4OeZnBTNS4ahkNVVTxGRoAub0ct0aRxXVMR66wZ9JHvXGWQISB+U?=
 =?us-ascii?Q?c/DVAHhXej8cZ5VqUel4KYW8TGXxQRbYH8Phi3jl6U1CHI6a+LhLn63m2/xS?=
 =?us-ascii?Q?MALmeqrTSZzyBBU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6455.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MzgK4MgyKNWWy2yhsyj6MUGLqhk8iAy9WPyOB+PfkYQGu1qS4MOSo254pXFO?=
 =?us-ascii?Q?gyK5wTbJV7YEBLE8Eh/OTY/+ov+DtDsioXNQrtgvsGq2JFr5LSKprhT5jQTM?=
 =?us-ascii?Q?Ixw21YFT6DgkVm97Bf5smiEj12zbvq8O26OxmzSJ/LnXJarB5pYIo1r053fj?=
 =?us-ascii?Q?6dD8ZAajkbsqF/ouTBaukU2GnB5ivguwAwuKkevoqodqphJtLh21Ysedv8qe?=
 =?us-ascii?Q?xsDwph1syR+nOSrPzp3em1iMlgtSiS6ZQEHGT3e5kzeqgtFZHA1nt+y44zBI?=
 =?us-ascii?Q?s/W0Um2A0R923t8rWTKE7MeJCHsiu8tHjB9fyxOoyLmqoOI5lLpzmRkSKcXt?=
 =?us-ascii?Q?vD/WIzSpweirSCSfGdBK+aNaxsmTM/qanCmah11pPtAuizvK1AQlXd7aRLDb?=
 =?us-ascii?Q?yQ4Dy1woYQAmkvz5pB851M/Q7OhYzKajlqcSAMf9LbW2N+ZEUiiT8Y4xOsEp?=
 =?us-ascii?Q?GmhhsVuVWYHmvPr5hNhqdnUJ83YUe/vQ+IURjW5Po3o6wGLTJkigkqBgif3d?=
 =?us-ascii?Q?oEIayr74rax9Ol/WqxEWLNLvkekSmY2kNQXjsJRM8rKb8dIHh/0UBCIKPC+P?=
 =?us-ascii?Q?pxSFBgNaWLSUj5zgqHzq5OdkkML32erGknwQFd+KGlLsuxsKxkq0qgKIpqjX?=
 =?us-ascii?Q?uIC7IyImOMUCyqUo9qdVIhp03vb7OxR84vMoAC0j/mWeUob6xKrD/aAJ8UiL?=
 =?us-ascii?Q?6U3BBsYiJPA6kEPjB24qlSo+eSyL3WMb3KsWHuNM2jyksPfJQHBYAn84x1Bh?=
 =?us-ascii?Q?3oQVTGQS6eGv2ILJcaXFGyU+R77jU57yUWcvtqccnhTxBoVTKcBJmfuS5Chn?=
 =?us-ascii?Q?MgTDIrLNnubiuvmN9D8x3gk7lWpzgtKQVlM+ll5JeyOyvgxUTdwQmZw4ct+p?=
 =?us-ascii?Q?IeXTL56GuEmv3nHjG9LOtGDqLW4sVvJwAPzR467v8Mw3JqOY3v+/1n8MZnOr?=
 =?us-ascii?Q?UnVGExNlwHm1EaMcMG8ai3cfU67dijiKdl0WEEZY1Gc/Vk94zh5FDabKzDrF?=
 =?us-ascii?Q?6YYVkmnQB1nxdf4XnFlPvt7XJXqZkJSZdVjIYMJL/Sejxqn44AShjnz7LbeB?=
 =?us-ascii?Q?SPHrIx7HeEi+Pjlw2JqwON6rR22nnn7Avnf6WY0vImYoRLwRvCCmePW5+5Tp?=
 =?us-ascii?Q?NKamiUmYvaP5KUlPIOCN2h7/d06X1ImRddS8uquQsGDX2oKf3XoxBY2CxQc6?=
 =?us-ascii?Q?q/xar7eYGG2VNPDEMkdJTnAjumAQ7wpM+YrCafFISP5QG4RyDeGqMTW8jfqE?=
 =?us-ascii?Q?2MnsrOPOz8n4B/+A+AzdlJI+mnb185VBPgbS8IEPzJIaHrpjlygcSfJS4aZ+?=
 =?us-ascii?Q?+hJn4zA5rQlKsVX97KZpjgLus7zthUXAjrPf07YhlGGklmTxRrlPOpgfujH2?=
 =?us-ascii?Q?IWgwLuo6twAnnOJWkje6UcMpbYyWTkBZI9O5uFpIwBWYQ5fQgMNPees+52R+?=
 =?us-ascii?Q?pfSV0bbxvWaBPhi156P/KZyTNi/C/XkIx1QPWC4zgAKEOpyd3/K6/Dyle4nj?=
 =?us-ascii?Q?BDiOrCoHog/ARqDapkvFIBr7vuJXAHmJqBWTDizRSAoPnjDzUIEKAiJ0a1Di?=
 =?us-ascii?Q?a0M9yxOg+I0NFQHSUXc=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6455.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0212f66e-7a93-49a4-61c9-08ddfb276882
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2025 05:01:23.1511 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j0mxg54WNZXigVQRU/UUkOTelrO2fXAbOtSJsp1oxKFhmP+OeV2omwgJKNJX5eU/Kxi78yczf0kcHQnuekxB2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4663
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758690187; x=1790226187;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GEfIPkFKqZrKDG4yva/zhvV1koIAu3kBUwMNGUnhmUg=;
 b=eSCemo6xDzfTDJ7owxe89oFOMPcqkbr2lrxBiXHffhdLVYCHQxCRlREU
 CPLSoY771HbPvUBXAYlLs7mEH64sszlDNv7yR4La2sw1E+80fe3S1rM8o
 y+26nhYxPp8SC3cfm6X5dBdn4LKrScuU8+2hGZSljjKiRtJ40tat3jCtO
 E6hvqW8oW99QcgSqlNHSpw4PuhmlZPnC3RHISgXn1/ljWBz7tDPhkQ+zG
 UirTsKtl1kzMaqOy4ph8BqkkSryRpQvmEEQdu+G2hsZE1KQi247elFbss
 XhI4JOl2w6N1347Ttp5XUk3Fxr3jYOsJKL1ORni6R0TetA0HKhOJ60dP+
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eSCemo6x
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/5] idpf: add XSk support
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
> Alexander Lobakin
> Sent: Thursday, September 11, 2025 9:52 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Kubiak, Michal
> <michal.kubiak@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Alexei Starovoitov <ast@kernel.org>; Daniel
> Borkmann <daniel@iogearbox.net>; Simon Horman <horms@kernel.org>;
> NXNE CNSE OSDT ITP Upstreaming
> <nxne.cnse.osdt.itp.upstreaming@intel.com>; bpf@vger.kernel.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next 0/5] idpf: add XSk support
>=20
> Add support for XSk xmit and receive using libeth_xdp.
>=20
> This includes adding interfaces to reconfigure/enable/disable only a part=
icular
> set of queues and support for checksum offload XSk Tx metadata.
> libeth_xdp's implementation mostly matches the one of ice: batched
> allocations and sending, unrolled descriptor writes etc. But unlike other=
 Intel
> drivers, XSk wakeup is implemented using CSD/IPI instead of HW "software
> interrupt". In lots of different tests, this yielded way better perf than=
 SW
> interrupts, but also, this gives better control over which CPU will handl=
e the
> NAPI loop (SW interrupts are a subject to irqbalance and stuff, while CSD=
s are
> strictly pinned
> 1:1 to the core of the same index).
> Note that the header split is always disabled for XSk queues, as for now =
we
> see no reasons to have it there.
>=20
> XSk xmit perf is up to 3x comparing to ice. XSk XDP_PASS is also faster a=
 bunch
> as it uses system percpu page_pools, so that the only overlead left is
> memcpy(). The rest is at least comparable.
>=20
> Alexander Lobakin (3):
>   idpf: implement XSk xmit
>   idpf: implement Rx path for AF_XDP
>   idpf: enable XSk features and ndo_xsk_wakeup
>=20
> Michal Kubiak (2):
>   idpf: add virtchnl functions to manage selected queues
>   idpf: add XSk pool initialization
>=20
>  drivers/net/ethernet/intel/idpf/Makefile      |    1 +
>  drivers/net/ethernet/intel/idpf/idpf.h        |    7 +
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h   |   72 +-
>  .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   32 +-
>  drivers/net/ethernet/intel/idpf/xdp.h         |    3 +
>  drivers/net/ethernet/intel/idpf/xsk.h         |   33 +
>  .../net/ethernet/intel/idpf/idpf_ethtool.c    |    8 +-
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    |   10 +-
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  451 ++++++-
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 1160 +++++++++++------
>  drivers/net/ethernet/intel/idpf/xdp.c         |   44 +-
>  drivers/net/ethernet/intel/idpf/xsk.c         |  633 +++++++++
>  12 files changed, 1977 insertions(+), 477 deletions(-)  create mode 1006=
44

Tested-by: Ramu R <ramu.r@intel.com>
