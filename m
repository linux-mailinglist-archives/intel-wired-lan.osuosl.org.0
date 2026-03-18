Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AFUiM7rHumm6bwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:41:46 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A4F2BE73C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:41:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F21680DB1;
	Wed, 18 Mar 2026 15:41:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t7gJwSvrBaO7; Wed, 18 Mar 2026 15:41:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C057480CA4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773848503;
	bh=+PU84QAzZE5JTMd58zm2JN8wPJ+kwtovW4KZIx//MT8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UTCCU5s2vdBc1sYYUtvXCAcjJx0caY3+Mo7BrRgZ02XsJ3GMfOo7Suxp1tTdmg51F
	 bVW4qauC+j9tHg1jVw5J6Kxf0VI2t+4l7TRGmNKS18MvF4wcOPO33nK4npFBthQU4b
	 anHPERXb+65mYxi78uA5x8JJTYkuQI1FhPUYhMz2RwjK8YCyP+Gr1Du3OggoihppQB
	 prKyNQgbvwOTJqFqTAdx42MHmzQt5ne3FfuBfMllmIiBbWE8f9Ie3Qbl6lVBr9Lfl4
	 eyrBeuDvk09X90weRk7WAuGIvV24VgIjTQ+8Jt8DeIPo6GjiZtCrPDPZjoTA2KedRJ
	 r/zq8LCxE8rgw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C057480CA4;
	Wed, 18 Mar 2026 15:41:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 84ED01AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:41:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7670760A99
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:41:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QbiNdb8X1Jth for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 15:41:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6036D60A8C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6036D60A8C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6036D60A8C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:41:41 +0000 (UTC)
X-CSE-ConnectionGUID: 3jZWhsVZSziJAC1zpF2v1A==
X-CSE-MsgGUID: FtT0/HFvRriNoXqDoxw3cQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="75028025"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="75028025"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 08:41:41 -0700
X-CSE-ConnectionGUID: IbHpInGwQOixssHPd/og2w==
X-CSE-MsgGUID: Y02+OCKZQSahCM+UOAx6xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="247125880"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 08:41:40 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 08:41:40 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 18 Mar 2026 08:41:40 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.11) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 08:41:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fSrHwIAUg3ktRvIkOpEJvGsagNSLAZaGX4Sc13fjWVcTvSNEoL+m+zAR4lXMK8EASbmg8qlmHSSrWrRbe7likZ+uuB7WdXL9vcAYy+DLZXLVxYyoYEROy2PDsYuTZmpug5vWnICWGB1kdVcIS0BzyM3b+Vsx2sbgANJt95WdsvE4JTCr86/1KUMaV+GmLMKQKsMvHr12DfvdO1uRKGGcXMBzLe77GJ6mqIWNcmlsnxbTC8rZ72r5pzH7g8zrgy3OsxlILfhY8RaKRFAIYLr3bxqp8P99381T2RDix9LV8Dl8gjR3Fj9Fxvoq/QAi9g2EY+nGdqRaPTySraGS0TSNhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+PU84QAzZE5JTMd58zm2JN8wPJ+kwtovW4KZIx//MT8=;
 b=V56fZdOfG9ERY8wdhpE6zMPAPQrhMz51RZeoLK0HvS+2z1urSwcobTY4pD2mOKj61oa8bhuwpmEh9bJo0eAZWjQoFJ5DRrD/uHcRFT6tfKNaoSvd+GTHcKHWX5EvIIiL+ewkDNvlBPMe32yuPAW0m06aFBxi6jGZagq+brzHJxBDVc5VRx8pHETYANaPtmAZCsWUZ2Fl8XGIvdxXzI9tllvv0w8aYLb9h5r+tutrnGMB5SWeFWeRhsz+EcXkcNKWXhYT2cGB1LTp0Bk6MXCQ3h1EWJW+Yku12KNR/03jU2mhfzJmhwJNkM3g130ge7+azuoaZyvT3tCQlAz1P9d5TQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM4PR11MB6549.namprd11.prod.outlook.com (2603:10b6:8:8e::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9723.16; Wed, 18 Mar 2026 15:41:36 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Wed, 18 Mar 2026
 15:41:36 +0000
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
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 02/13] wifi: cfg80211: use
 __rtnl_unlock in nl80211_pre_doit
Thread-Index: AQHctuhnac+cX1DTHUev8LjCoXO1lrW0bYyA
Date: Wed, 18 Mar 2026 15:41:36 +0000
Message-ID: <IA3PR11MB898647AED422AD63361C4072E54EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260318150305.123900-1-sdf@fomichev.me>
 <20260318150305.123900-3-sdf@fomichev.me>
In-Reply-To: <20260318150305.123900-3-sdf@fomichev.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM4PR11MB6549:EE_
x-ms-office365-filtering-correlation-id: a4ef135d-014a-44e9-0ec2-08de8504d709
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|7053199007|18002099003|56012099003|22082099003|38070700021;
x-microsoft-antispam-message-info: aLEKe6ervtUcTDxbBC167CRnBuBO105EepmGZj9Q1Awa1ZXMBBnLx/TUVzNmyn55V2QFTXFQnwBwluaCQbvAyq64zKymht24kxQa/CxmKaknHhuQqZhhKh7XtJybXnQV+oi170/BK9BEUiPjZLgsJPpjwQDR/JQAiEBcZcGI3XriDaqtKQurEHqwPvJs0NOVBEmEFnTl4m4no+O3j1UywOiYmXhLutP3KnpgD3/qCyni/WBbf33RlQ63BeMlz5JnndPjeG71MYpeGqNJb2/bn+wQY6uMrOOwdXG7NgZbD1EsDffTLFcmT6GkZCfLp1WfopTQHP965XYXkLAAOQEvYstZZYPT5V+ob0Gs3yrxu+IRRYiaCUmM2ea/LjRjoOOYGEl+4te6qhQTWux2eKgKYeg9E9/RSCmQr9ks3K1TZioJcwh5fejXhDS5NTodRGw6zUXanjDrTupBRr/QBg52S1Wpryy54SId5IheXhIquda7GtmAFSX59wCwPRwxQ4FsbLN5CUsXdIedJBzjeVH2MCdBP0H1B1zjCWKARgmB0ab+IaP3IDyaWlRYrRN/0OW6eI7KeVmLcU51ycodQ5dqa4jM7JnA/kaiSO9n+DSw6IQcoyXXFJG0bw1e6wlI8V/fWPZsgkTKXmCTjiDxercHF1mmWm0VnJ6gCUkcAeuYsyuxwLdXrbV1d//3LOEe1KjLAmo+R6TdXz4YSO7fSUXMrC7gLUF5kqsaPxrjkJfLDM78MF1ZV9SK5AohJbEYT74fwg/h1epZViT1GEstokG7GnRes/btlomx9/EZCVaTCU0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(7053199007)(18002099003)(56012099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RHlX6aOASH5RAoSD66D+YsjBxCam/syOV6NW+4wtF1DxpYRII9VzFg2ECVme?=
 =?us-ascii?Q?OsJMimIZ1uVucjaseC3PD9DuH+Gye8Ls0gf6fet9irPROu61I91pNI3vDTDR?=
 =?us-ascii?Q?DX/KPFypIz9WRQ6OZRGNkMGVHiTdQiDMimpUm17IWokSwOBfegumc//mfyy4?=
 =?us-ascii?Q?mClRymA9R1evyqlC3rfvNRJrxmkKOVMhQwnh8LD7MmQKcUugCyPRxlPA/TNG?=
 =?us-ascii?Q?Gq2kxpmE6jxIe4+q4Scv/wkyAiOIo6J1BLcTRj4oiX0sYkBOVxhe3Y5WRfbV?=
 =?us-ascii?Q?LbhxXgyawlcigfMiIG+Ylbp95Rj1Seyfqy4jBgoBIVlvqrPhxdGDxdKJcCJ1?=
 =?us-ascii?Q?1U+MNMBMrkSFlqtkd89oA6ubmWcB9z6BMYeNHcA8mxYlMjAT70P2Q9sY7Gue?=
 =?us-ascii?Q?uZp4Umqk6w/nhnTRc7lm5jPeFqfkxbSvJzqTxhlifmvRtWayFad2Wd0qlxqO?=
 =?us-ascii?Q?/+ClQJujoirwUzWXRtfAVxT6BGMfjV1uvd/LN+FzJmTi8Dw8r1L1w/d1tVzW?=
 =?us-ascii?Q?FmblqOOhaihKBbzIUTYSD2Mz3TgT4+8u53hHZdN7B2aa04vBzOK9X+iVGz5I?=
 =?us-ascii?Q?WXSff3oko6KUmYhgUFr0nAQ0r4HAch7ge3VG4rWtpqfJ8/s+6VFqJbYb0HV9?=
 =?us-ascii?Q?fLvYlGGdQ5OtxVzDIO5QZYeDKy69IZjgL/Z6JWreUkWSJcwHCmPmNRLqRMnU?=
 =?us-ascii?Q?h9UdB1q3EhbmAQnaADB4zJx73c9kFhaAsmFoK80AeGFsCi8c1yL9sC1Z7Xml?=
 =?us-ascii?Q?BZMrVRqq1L7uRlt43Dvll2cBKFNJThMAPNliFCxDDbxb0gooDnfCGaxv+qRv?=
 =?us-ascii?Q?DZ/EyohylwMh4PzxldcFMHVSm+8il9i2m0XyHTuwMROJBSHzhzI8EZI04jyk?=
 =?us-ascii?Q?83HqHlL6sO4nwydMTCnHzn+cRbMMynVe6T6Az3uq3C4Xkk+T/7zdfi1ZZ6Ie?=
 =?us-ascii?Q?9RO4XEmtbLcfBRJvIs8cDM7FuO0uScS8HFhaFehB3xvRj5ieGuUudUCFxQy0?=
 =?us-ascii?Q?7eQ0bXFB8ql6+N+K8rhXIPnWQ+nNhO4G6e7dGObhWlhsyZS1cWRPCskfSVii?=
 =?us-ascii?Q?X9S3v9JK0r4QsBz6N7KzO52RUXueZc2ISNaANk8n+eCubG8+0eabyCXNL5uT?=
 =?us-ascii?Q?ahUGbaInekcgpNibQbSNNi5K8Mq2SZ+N48Intg9SErdPHO+mT+nG13dYWnkE?=
 =?us-ascii?Q?NRMzckZBPPd6Am4UT6sDstqj1sNRtsG6AdJqYjcKoBS8CWoER9uPNggrU4RE?=
 =?us-ascii?Q?5stcD/fUpefSD3MEg/Vi1rWPDZIfIHwtukCqsfViUCfTjbvplDpu2TuL7cNS?=
 =?us-ascii?Q?nI8us86PCsgMmMdN1gbq3KHF3q2dShazV5CTk4k9eiJaE0LuVSpdSQ5aQzg+?=
 =?us-ascii?Q?2fgvH7v8WZm+CbHiCIC6FsTje1wrW6TuZVftRNoxIG/CH+Mg3FnBXHlc6vRl?=
 =?us-ascii?Q?JMoDcvduUjpDgliKjw5dbteb0qsRK8kJKjQukXPMTVjBeMpWHwOrkYvt/OKc?=
 =?us-ascii?Q?mrlCf38t5BG0tArm6co4CJFw+tpH29V80gLyOGtMnwAoXaDfxEZOve6TXLPS?=
 =?us-ascii?Q?TkZK4Va3mVcByzx85/SAGfERDaaJhxf5p4lMoUCC6BSrWz7hOYXwLvSEvbP1?=
 =?us-ascii?Q?hMnqnqK2RPabpqTzOst58Es14cfE3RalfkBND7t3bWqz4dkfgQHx0kkh4NxB?=
 =?us-ascii?Q?eEQDsYtxNxAYAxdFa+/gKzSGDpKdwvJH1ri1/bvtS9Gl9cjYgxcqitWLJW4a?=
 =?us-ascii?Q?bSlSVnON+zvfPK5HgcY/UqcLhFWGqcA=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: tZ+h7cAu2bxR+dV700A/PSM/BchJrJVlq8GI/jdJl7YdAZN6sQSVyxaQMRGzx2gkNYAwe63ZJwj2dcT9TFCrtUL0QU2txoqIjR32fTuLhtj4S4upuStD0u0nsO3lijzXJ9uxlPA95HQIdNKExAbEVA/Pdq8MlBUr67TIf8D/UvZm5UeEOg2xx8TxfJ5h2yhdao/4zUMGlV7JyZoMY+QKWbDZKtevvBi0jFl7L4up2i9qO+L0Y3s6H83VH7nqiLP/hOljLdsPMHXasY6oqqX0htqgo7wZMNp31DVARtWhtStwY9xedbqsjNWOFjprNN8YPqm515x+GGTixOmo1jRoKw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4ef135d-014a-44e9-0ec2-08de8504d709
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2026 15:41:36.7027 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m+Ra/vFOKr6wV1gRJpH8dEzzv8bkLfnLeSxwM3niE5jjZAPBgfGHITfuWr7biNK0ZcDtyP28z8rODuk1399v+fTln/Yt/qQMxTNthgKVJLk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6549
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773848501; x=1805384501;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FBM1u4q0eiLpQcnmMV0Jz0JENNrXgeeSloV48uHNqpA=;
 b=NklEty612LZhEotAqx/2leDUjotO3gtL/hCyFGAfn5cIN3107wahA4zs
 TzZXHu9ivQrlIFA6tRH3R3ETC9AFTmbKfblsp68Do+QiTRZ843eMBM0Ak
 aJ9U41F+Wfry91AX9HzO+lnmXrBirr3s2OSXkoPblKlriwBkVH2m2XfSS
 8hxDy1r3pIG8gubne5dj4+OmXRyeZp1xmDTv4ea9LTrKpGIwZlumdmPxe
 qWOx0SQy/GXgSMZQl1bK2qwIiqIEPJrsmDaf618eu76r15y+Es4mrtlWs
 LCbS+edtpmdUNl7pW5cviOrzqy4qrMpir3VgaPIZS064xg5tKaIvHBXvS
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NklEty61
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 02/13] wifi: cfg80211: use
 __rtnl_unlock in nl80211_pre_doit
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
	R_SPF_ALLOW(-0.20)[+mx:c];
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
	NEURAL_HAM(-0.00)[-0.994];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 22A4F2BE73C
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
> Subject: [Intel-wired-lan] [PATCH net-next v2 02/13] wifi: cfg80211:
> use __rtnl_unlock in nl80211_pre_doit
>=20
> nl80211_pre_doit acquires rtnl_lock and then wiphy_lock, releasing
> rtnl while keeping wiphy_lock held until post_doit. With the
> introduction of rx_mode_wq and its flush in netdev_run_todo, calling
> rtnl_unlock here creates a circular lock dependency:
>=20
>   Chain exists of:
>     (wq_completion)rx_mode_wq --> rtnl_mutex --> &rdev->wiphy.mtx
>=20
>    Possible unsafe locking scenario:
>=20
>          CPU0                    CPU1
>          ----                    ----
>     lock(&rdev->wiphy.mtx);
>                                  lock(rtnl_mutex);
>                                  lock(&rdev->wiphy.mtx);
>     lock((wq_completion)rx_mode_wq);
>=20
> Switch to __rtnl_unlock to skip netdev_run_todo in nl80211_pre_doit.
> This seems safe because we run before the op.
>=20
> Link:
> http://lore.kernel.org/netdev/69b5ad67.a00a0220.3b25d1.001a.GAE@google
> .com
> Signed-off-by: Stanislav Fomichev <sdf@fomichev.me>
> ---
>  net/wireless/nl80211.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/net/wireless/nl80211.c b/net/wireless/nl80211.c index
> 2225f5d0b124..ce5f25d4c87e 100644
> --- a/net/wireless/nl80211.c
> +++ b/net/wireless/nl80211.c
> @@ -18192,7 +18192,7 @@ static int nl80211_pre_doit(const struct
> genl_split_ops *ops,
>  		__release(&rdev->wiphy.mtx);
>  	}
>  	if (!(internal_flags & NL80211_FLAG_NEED_RTNL))
> -		rtnl_unlock();
> +		__rtnl_unlock();
>=20
>  	return 0;
>  out_unlock:
> --
> 2.53.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

