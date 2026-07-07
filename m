Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RH/iAO0lTWpNvwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Jul 2026 18:14:37 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A572071DB7A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Jul 2026 18:14:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=hKHFLj6U;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D1B65606AA;
	Tue,  7 Jul 2026 16:14:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zIIyMMv9pKNq; Tue,  7 Jul 2026 16:14:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2AF3860789
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783440871;
	bh=kBFTMAyl2/aF5ijNjXWpDbQyh1y4TuNRSv82+2IYflY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hKHFLj6UzddgcRFfx4H9j5P836uKsWv1hNknu45S7QRHMaHulxfxQ4TR+1pfyZnWT
	 NBlsnixn6LqMax7BeVrbVMLCRyo2ys+NozLMMkAe1l2qA+pxz6P71hBR/lhVneTIcX
	 thxc++T9N+DZsqAsS5Xo79xmUgxcHlFyZtieSIcWAtcPmaejpliNSbrLSRp6d8M7+L
	 saiR0Tfz5jhLaMzq38PgAGBuF32XMNSdIolJPTnii+WweiUUDBVfuSdtDu1J+oEBbi
	 TnMPC2feNt3TXxpWFpRuu8VW/LpOa4zk6VIqbg+SybLieH+oOS08Huze18OW0gMdQx
	 plS9RyePLjsQg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2AF3860789;
	Tue,  7 Jul 2026 16:14:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 440BE315
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 16:14:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 351DD6069C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 16:14:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kMmKbhQkbRf4 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jul 2026 16:14:28 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 57D5360635
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57D5360635
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 57D5360635
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 16:14:28 +0000 (UTC)
X-CSE-ConnectionGUID: ysVG3RbsTBKcN5ZWga33ZQ==
X-CSE-MsgGUID: Xnb+CVdQTme35MNR8DzNZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11840"; a="101639306"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="101639306"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 09:14:27 -0700
X-CSE-ConnectionGUID: zTCAllrhTLyuLdmZmhSM5Q==
X-CSE-MsgGUID: FMACM8A4Qi+yYssycpF6hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="257614949"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 09:14:27 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 09:14:26 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 7 Jul 2026 09:14:26 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.48) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 09:14:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=avBvbsFdn37Zs53AGTS4k5y8zh9AwUyCb+H3BU0ddoI5iJrS64kRGmaSlvh2gaatprwQj6zfgb19+SPct4H9ridYlcDNbJLfb6cjxFsX4FOuVON/IwruRcEElYAF91CnTwGazfTowEYit47W3P1TZoedPj+CaJznJmLtfShccmFGNqI6+mdhYz62umgaaQ1paAYVd0DlcG2adqzujTvN6LV26yQ3Eh4WUFPir4c+zUBSBjwyhl3FGyVoxFmMernRdIqXOn7A3k0geEWZnRp97r3zQFLMEuqnOhbptWxhpIRmyQ9uaSCFK7bd558is3z2vW3CJ8PM9KsW8IIbHJpOEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kBFTMAyl2/aF5ijNjXWpDbQyh1y4TuNRSv82+2IYflY=;
 b=xW+upEGqJUehLnSmtnaYu4Q/hGhT+1DE5N9wOJFW/9bF6Xy/+k0jIGfX83VhNicYeHyPSyCTm8BrEXtxud1aRI3fBNqvUohMbIbiUpAjnJaoLtwL101VVTeDu+5E9KJvZxPBNC2NXTF2yTTIsfXtbZv1nWhjn+hWeEL1/yhwKFzPaZVTjf38XsnsJqcdwXhEXJQld/yXQ6q3HPE6tM0rpM/N7tBJ5yzt+/d96BR/DKioOx92/M39+0OWzoyhFtVcu69dI/DuyPa7tyb2+cc1ugI3+uiIJu6R5Vz2LfVG53AA9xYyk5VJ9LWnCJ//xOYOjBz1c+8DLuSg4VkbSZ072A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by IA0PR11MB7882.namprd11.prod.outlook.com (2603:10b6:208:40f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.10; Tue, 7 Jul
 2026 16:14:22 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e%3]) with mapi id 15.21.0181.008; Tue, 7 Jul 2026
 16:14:21 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: Simon Horman <horms@kernel.org>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, "Chittim, Madhu"
 <madhu.chittim@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] idpf: fix max_vport related
 crash on allocation error during init
Thread-Index: AQHc/1f6nBfOykuzDEmsuiOwssf+vLZKM3IAgBglCKA=
Date: Tue, 7 Jul 2026 16:14:21 +0000
Message-ID: <SJ1PR11MB6297207C146736EAA932C4449BF02@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20260618192325.8694-1-emil.s.tantilov@intel.com>
 <20260622073058.GY827683@horms.kernel.org>
In-Reply-To: <20260622073058.GY827683@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|IA0PR11MB7882:EE_
x-ms-office365-filtering-correlation-id: e2e88d8a-877e-4913-afb2-08dedc42ce36
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|38070700021|4143699003|5023799004|56012099006|11063799006|6133799003|18002099003|22082099003;
x-microsoft-antispam-message-info: QGNB1PLTM5u281PF9MdtsnfwXfLwpHVUlbsEslJjBHiUqj02nKVj1D7OSY147H34VSjruCx26jsLqCCEbsu/sbSo5POzaf2TDnDFdbu4+q2QJfzrDdiFWSt761czjpuK25lglpYer+QgnwG+EEsYsNR9Kjg/tU4LKCy+SLAR2AYnd8HAozG4zf/5slwHU6Ov82ZgMV9J0oew0tpZq4ymOVVLTsURyxlTpipxGs8aCZjO6EG9Ou2qbJZrq63lejlCQolIak4RaAwUa97DgIYzjPM66Cxmd3oFY1ypat8N+Tn1L8OI0HscZTXvgSo4IRHodRH/WyjIgOr7bdWLt2sLHer+w/MrY70OPm1qrv362Sqqitz9YUpE0d/uaVODiipNWx8YlQgLWgT/jVp/QK+AKmwii9NK8zoIj58to5ylMqW+sLDlAhsMbZ5E8r9zDaE3iFvK3aaf8ZRqmSBsnaMO1Hd3syDGplKNPjzENJ955H331SLc5pAMD7zZVfKThDwKGh2IXBzUtu2p4FSn9LcPPXhRqtcyr9nFa921A9fHty26H+etsYCOEifXQjWBl2ICqeP53h+dwEY4vmQdLFrSb+cLC6BtCSP+v0uFgVo04ZuvuSAWaxcLzq+Oo5Nb+XDNpOgj8XYK8o3NLQSHDps1yPS1cGfGoxrvsfPlryg/qro/+HzZWzfMHjlIePbDHC0DMezdUgokhsZtCa0o9xin+T+eKMOsDmEss4wYvmGD9ao=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(38070700021)(4143699003)(5023799004)(56012099006)(11063799006)(6133799003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DETMECavf7raY1g5v+C7zxNrxaN9qTD7lorWxg3gUZwbI9xyfkFQq14ZGvlW?=
 =?us-ascii?Q?FaTqeqEY5CLALdpVlpvxfIjNvSaUxZljZU6WuWcs9nM0W/JAzzbQNMz2g2qU?=
 =?us-ascii?Q?KxGfp8KQNXvWn+iYecg9n3FFu3RNIJZob9k8GjIKHpukeD1YjMGa5+05IzcW?=
 =?us-ascii?Q?m9xk9zTh3bUBV382t/dsg7jwD40JLDICxSUgX3UTqaewEYB9xpJS7UJxrhEL?=
 =?us-ascii?Q?MsEtshuy8PDo9sH3c4JbPcS9mmgZSlPSOwA/T/c7BnpYrHFesNNUhaGgRO2e?=
 =?us-ascii?Q?MewvlhB2jEZkaN2bATKZvr8qz78siC5aYBKoR4fGjyQh4fTe9TpTPslUf6lf?=
 =?us-ascii?Q?K4FspHqGysXZUZRAZE1eZIy4mpzZmGUrPnkxTSsdPH+6v8fx56/s7a1G7r/6?=
 =?us-ascii?Q?cM9Dp0fceSc5PDEFpourAipqoz87BFJxR2/fjcBGBpfstKkrKB0mJSTTxV9h?=
 =?us-ascii?Q?UCT5m5Hhn+jMTJtqUA+PAN3/4nFvKuIovJFyxGBlWXL40mBZMM0/LQNrj8B4?=
 =?us-ascii?Q?nl5ZkUV5JrlI0W9wcxewkXiTqZh+/pfyOgcKWkpHrhdRYZYZLPKRCWBHpamO?=
 =?us-ascii?Q?W+Xp6aS0RWUfF+jA3L7llMkRHjnOfQ4Ry+2Mz6vIaXfnlsIhlCyjPHnMVwvw?=
 =?us-ascii?Q?hfotoXZhY71KeDwpNdQnNbsyS8V9eLdiDgRWIuxHP4SlDKHJlqK4JjZxidZx?=
 =?us-ascii?Q?cWRwslqCUrmifFU9ERrINBRDVgkmp1lNnYn9N7p4dHufpVC6heR9Kqu1q6CU?=
 =?us-ascii?Q?jyADx2xtxAKA4TbOmjwsjm0EqSuFRXNxsXcHruB30a7NjAfRN++pRe8ueTFS?=
 =?us-ascii?Q?AmlisUlV0Vjti/d+/e0iyINjSv8nXy1z+1ViaBRtHULbHcyW5rt5y08YWaG9?=
 =?us-ascii?Q?JR+EBPA++nIUyDxr7NWwjKeLPWY6RfTdXWKQgi6YqrYfbbbWYSCJcVxh+K8I?=
 =?us-ascii?Q?lvwRTon/WQEaRvnKz2m8mgupz8dr/Ey05+K8RY4uCeGGwW/mpAyy5aBn6R0o?=
 =?us-ascii?Q?WEkpOOvHY27GRx6AGQ0CFQvTVPAnWstnAopXg8/NCUFc3pgVguR8PBTAlNOi?=
 =?us-ascii?Q?TFP1uXAH3+qImHkx25L6If8QAMdd4BsvVhZsTmA0fZ+Kg+CSb1fQ/cV6U2u4?=
 =?us-ascii?Q?+nYitiF/wqmXHw+plLYg2t9UzdrmrnEYD98ClFu4TbfxLBbRzZNTwIK+QB7D?=
 =?us-ascii?Q?h59lexFVlZCOxcyId97NnvBCTXsV+vqSvPAzx7SuiyIkzea31GXznaJ8hcLt?=
 =?us-ascii?Q?wnG09IaEhnqY+GSEBx3V1/9rpgfIEQIeVRzzQiKXAe4puHa+PuaL4D3v8oxz?=
 =?us-ascii?Q?SWRaxuCqIcTJxrFFTSs/3Q9+ROW+go09nPqIqoxlusebXpiDQxzEzCCjPKPO?=
 =?us-ascii?Q?GLxRKLsNzff+5kqNwoVDhZqFD/ubLjhoW5OahpW6lBnBp1lcgPcGsKmt3O84?=
 =?us-ascii?Q?tAQj0jYmIDc9CGKB2Q1Z1TfosL8MqSbTUJOaaEvk6VxCVcYsItLBiwOR+ULo?=
 =?us-ascii?Q?Db0OYMi66znIxQwRsKdN2/SxscGBX0ItHf2NTtTAZmY+pIgA5IDjBm9hsTWh?=
 =?us-ascii?Q?/fDwud8Es1Fp90xZeAwwf1r9JOP/u4RSYX3tMNZ0NgM7LeuB7UOInN6yk/TK?=
 =?us-ascii?Q?fwBr/6kWvVHUwFjky5ilLU8IGWjXSFEUIOGPAakr4fwXW75FrEdhTCaiRqL0?=
 =?us-ascii?Q?4s6lrQQ6n0vo0aLyJ4StGr6a0R95z2wYvakXvVabIkrC/KPk?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: o8nriK6LS+K+EM/u2jJxIDMouGMgNNw58fLMoByDUoxy0WLoo4p/1GopGG6LkFDNv8izY2q1f4BjcV1e76Z+Joi4uO7S1OvYlnDB/Tfb/IVST+gNfRaSMMrbSBZe2W/ZPBsjNpwAx3bkD3qEgKr5eE1wBN8b6Q8W8sGh8gYhoV204qvMfx440qCQkbdXvR/0EW+TNg9PGNd+01we5BVLcLfSgh6NCIe4alqtwYOrCWLCslBLmkfx0PHEJcAqNcDYjKFN7coc+4KafP4Uhz4us1Zj34vJTVJZcAsgx2Hq7t4kdhkjRp8Uvwmjqd5fgcFKfvrhSl4bcEMS0YyrCx9Jjw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2e88d8a-877e-4913-afb2-08dedc42ce36
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2026 16:14:21.8306 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z2eBU7lVWfkAJqENePaVw7KJH/IVjABe0j7nnGlu0T2r4KsgTdmZBQCrM3z7Ge7XOrpbo4xDzS+1h8s/xjreeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7882
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783440868; x=1814976868;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vkaLXs6RWpls23//qIfGnrzTccACHwibjJ/69HtS8L8=;
 b=KtYyrd0KHZcC58CSwY0SDdFWgm+wUevB+cjqfn+mn+XIv7gqYaDxEe5o
 zg68ydXklxXFbYargHM7gy+AxPxoZh+y66kZ1aas3SsDygSqNJw2z3qG2
 1lN16cSxZNlI58sXGiGQ+PWW2z4iSdDIV54rGHUj8VMzg3nvcfoky7NjY
 qLeMFh866I+F1/pUSX8eN417w1mvhpDpaRpDo/2qnSXxlCMGUmkNACgOr
 KbxsQginpVS7Rd1cUYeLP8y2ASOhrUK0tkgTBjnkhXj7gTu3sONFF3KC6
 ffDQP7ZbD5tX4R4dFV0EDEaIucbe/3dt+zEV4f54KkLJ22jc1QOzjeZgn
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KtYyrd0K
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix max_vport related
 crash on allocation error during init
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:emil.s.tantilov@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:madhu.chittim@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A572071DB7A



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Simon Horman
> Sent: Monday, June 22, 2026 12:31 AM
> To: Tantilov, Emil S <emil.s.tantilov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; Chittim, Madhu <madhu.chittim@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix max_vport relate=
d crash
> on allocation error during init
>=20
> On Thu, Jun 18, 2026 at 12:23:25PM -0700, Emil Tantilov wrote:
> > Set adapter->max_vports only after successful allocation of vports,
> > netdevs and  vport_config buffers. This fixes possible crashes on
> > reset or rmmod, following failed allocation on init
> >
> > [  305.981402] idpf 0000:83:00.0: enabling device (0100 -> 0102) [
> > 305.994464] idpf 0000:83:00.0: Device HW Reset initiated [
> > 320.416872] BUG: kernel NULL pointer dereference, address:
> > 0000000000000000 [  320.416918] #PF: supervisor read access in kernel
> > mode [  320.416942] #PF: error_code(0x0000) - not-present page [
> > 320.416963] PGD 2099657067 P4D 0 [  320.416983] Oops: Oops: 0000
> [#1]
> > SMP NOPTI ...
> > [  320.417093] RIP: 0010:idpf_remove+0x118/0x200 [idpf] [  320.417130]
> > Code: 8b bb 98 09 00 00 e8 17 0f 5b e5 48 8b bb e8 08 00 00 e8 0b 0f
> > 5b e5 66 83 bb 28 06 00 00 00 48 8b bb 20 06 00 00 74 49 31 ed <48> 8b
> > 04 ef 48 85 c0 74 2f 48 8b 78 20 e8 66 58 91 e5 48 8b 83 20 [
> > 320.417183] RSP: 0018:ff7322212903fdb8 EFLAGS: 00010246 [
> 320.417205]
> > RAX: 0000000000000000 RBX: ff4463de40300000 RCX:
> ff7322212903fd4c [
> > 320.417228] RDX: 0000000000000001 RSI: ffffffffa7f7d100 RDI:
> > 0000000000000000 [  320.417250] RBP: 0000000000000000 R08:
> > 0000000000000001 R09: 0000000000000000 [  320.417272] R10:
> > 0000000000000001 R11: ff4463de3a638f58 R12: ff4463be89ac7000 [
> > 320.417294] R13: ff4463be89ac7198 R14: ff4463be94fc7198 R15:
> > ffffffffc0f10f20 [  320.417317] FS:  00007f963c0e6740(0000)
> > GS:ff4463fdd65d8000(0000) knlGS:0000000000000000 [  320.417342]
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033 [  320.417362] CR2:
> 0000000000000000 CR3: 00000020ba674002 CR4: 0000000000773ef0 [
> 320.417385] PKRU: 55555554 [  320.417398] Call Trace:
> > [  320.417412]  <TASK>
> > [  320.417429]  pci_device_remove+0x42/0xb0 [  320.417459]
> > device_release_driver_internal+0x1a9/0x210
> > [  320.417492]  driver_detach+0x4b/0x90 [  320.417516]
> > bus_remove_driver+0x70/0x100 [  320.417539]
> > pci_unregister_driver+0x2e/0xb0 [  320.417564]
> > __do_sys_delete_module.constprop.0+0x190/0x2f0
> > [  320.417592]  ? kmem_cache_free+0x31e/0x550 [  320.417619]  ?
> > lockdep_hardirqs_on_prepare+0xde/0x190
> > [  320.417644]  ? do_syscall_64+0x38/0x6b0 [  320.417665]
> > do_syscall_64+0xc8/0x6b0 [  320.417683]  ? clear_bhb_loop+0x30/0x80 [
> > 320.417706]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> > [  320.417727] RIP: 0033:0x7f963bb30beb
> >
> > Fixes: 0fe45467a104 ("idpf: add create vport and netdev
> > configuration")
> > Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> > Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>
>=20
> FTR, an AI generated review of this patch is available on sashiko.dev.
> I think that the issue raised there can be looked at in the context of po=
ssible
> follow-up.


Tested-by: Samuel Salin <Samuel.salin@intel.com>
