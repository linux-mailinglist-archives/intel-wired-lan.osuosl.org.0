Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C7CD8D28F6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2024 01:54:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 29E0440336;
	Tue, 28 May 2024 23:54:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w1fWv8Pb2vpS; Tue, 28 May 2024 23:54:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D6611404D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716940469;
	bh=ZtMDYq67avuNmnkoRORQT36nKEnkkCwmRZBT/bpFFoE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=u83KksjyzPoy6vcTmKAQAm4yQ6hwIQCAUFzUiMAns2ly0f8nb/AHzOvUP9q2+jNEV
	 zuYz/cI2mcRFZuFhCLkTlFVD202MhfMDt402dC+N+DyZFNup4czBrnyfvb6DF0hy75
	 1DclZfz/aXglIgdA2vjAchsFK/LwiU2A1Eof3NJyQAdXr4qrGD/s9ZKCfqbFgWDLwo
	 8Ya4s8LsMdntjd/txH95i49MR6NoZ/xJ+vIZ7hIdbmrNHbBu5w77FtoyInSk7KaUXB
	 pmjy1v/0sRny+GzgeR92V+8zPr4zRlWKHkF+oi+mmtHsNwppVIKz+s0P6ke5XUYDcO
	 K3R00Cq1OjiWQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D6611404D9;
	Tue, 28 May 2024 23:54:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E20F1D2E90
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 23:54:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 696E74016D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 23:54:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ifis77qrL9s7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 23:54:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 336BA40131
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 336BA40131
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 336BA40131
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 23:54:26 +0000 (UTC)
X-CSE-ConnectionGUID: 0JQlFuk7STyW32y7sLQn7Q==
X-CSE-MsgGUID: egRjiBpETb22qAhyI6h36w==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="11739204"
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="11739204"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 16:54:26 -0700
X-CSE-ConnectionGUID: vz2tzuBnQ3KqIAy84JY8Vw==
X-CSE-MsgGUID: YfXYU2U8QfeyKqAM86l5ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="35323127"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 16:54:25 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 16:54:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 16:54:24 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 16:54:24 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 16:54:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YY1QrTWHm65v6vzGtuSVAsrlL0KVPsNVZMc0FpQfc2WPc4GFlYC5sdJxqoqSqqkLJTGbh2EPYRrB4kqxrK4pq89uSRCFi4HWCcHYj+fE+ujIiF7aISQp9L1Te53qJE/XEMMfSfwXraPymMqiKp54eAqif9fYZzaJ5fHTOqTAdlASDQyVoC9/ehFeIpbkH1ahh0gtKHCuQfvlRpzMBd13SlKX2GpOdtuYrDAIGltNP6M9vEm0VChZBH4I2H1lIb+tlJdUXityec+vqRd6EbUJDFYREbBTuLV1kWsuVGkGfGF0chps6HtKx9/KMoIpGAIvpd7qObsOE7nOVzQbCMx1Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZtMDYq67avuNmnkoRORQT36nKEnkkCwmRZBT/bpFFoE=;
 b=Y00U0SnK1RyL4cLh1ratsrXCCjl5pg9JP2Ap9JVCADQ37oqCt3x8qVrDMX0GRu/GDjTuX965w+s5SUNEPyTEP8pYH4UjHmEaG9BLlfK5zIrx0zaK1FWlQveAhsjel2WsNL+GA/oYpUL/9HZ7aRDeWr0qK5sXkV/CP1whsqd0hTVzHvzSWZ7U3a+mt7PZUlZ/6hgGQVxSgXn8ZMTZEuKDSKY3XYKPy9RFNG8M6+LLvXyzOcAOtFWAyuekxWvVOrUN5HxREsV2UBVArlki1NFi1aJvvjGa+RyWzHi8SXQ/xzpO0ZJnPNNTGGhc1SZZuQRrMSMsqbj/bpk3fjzm3Zxbag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SN7PR11MB6702.namprd11.prod.outlook.com (2603:10b6:806:269::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.29; Tue, 28 May
 2024 23:54:22 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7611.030; Tue, 28 May 2024
 23:54:22 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Jakub Kicinski <kuba@kernel.org>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 11/12] iavf: handle
 SIOCSHWTSTAMP and SIOCGHWTSTAMP
Thread-Index: AQHasPL4wIy8XwbytUaP8hxFeKXT97GtEZmAgABBIZA=
Date: Tue, 28 May 2024 23:54:21 +0000
Message-ID: <CO1PR11MB508916EC8EF80A8EFE6EF19DD6F12@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20240528112301.5374-1-mateusz.polchlopek@intel.com>
 <20240528112301.5374-12-mateusz.polchlopek@intel.com>
 <20240528130055.4ecf339a@kernel.org>
In-Reply-To: <20240528130055.4ecf339a@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|SN7PR11MB6702:EE_
x-ms-office365-filtering-correlation-id: 0c066932-0e42-45a7-2097-08dc7f717f16
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?uRFUiTNq6+8D6aaxU3gtQB+P49iWsZKOlaicrq3lxm7hPXObfp/pnUa+JBCq?=
 =?us-ascii?Q?KWMz+IQlKEIUYlW+9Gqf2bIojYrLqW9ArHKV15KhfOSVxW8/c2uEVffuWXxy?=
 =?us-ascii?Q?4LP/MUVHV3gTrxzMIXpUtICCRDMF6eGexB58R2VRAqGtBjej1Zzis1KdMZvL?=
 =?us-ascii?Q?/8p0XyplONXB7uy/85MPuUSl8ok51bhO1DzUDvkw2tkRY2K2xN49CyIyg5EI?=
 =?us-ascii?Q?BpLzuTYP1GGoKRRY5ThZWyokIQTIHs0VartRD4DIqVynmu8smBTmoO6qvNk/?=
 =?us-ascii?Q?EfSH/sVIjUSQe8gBOl/tAAc+uJtL7LbA0xfoozOVsBP9MkJx1wfm9uTX+0yl?=
 =?us-ascii?Q?/j9qDjHJYcOtk4y+WLD8rSNGQwwoJLXuPV2mFitXPxbuJKQeKoKA+QCCS25y?=
 =?us-ascii?Q?+2fgtnylpkDMI9ocCLRX8oGderF3EqFf1VcWgMnexRm4ytkgK0wewc8k4bwe?=
 =?us-ascii?Q?3S4Ef0wfyy3NxoMNtKNWXDy8ZBrauKdJMuq6tZL1gDVIeAA78bnvlxK2mAUL?=
 =?us-ascii?Q?ci10mUgTO6oQ/6FRq9/y8sZQ3vzQffQvnW5yTNEmwVfoTmTN/blq0utHSG4F?=
 =?us-ascii?Q?rAbw7RdXZfHE32krqsHRFhGP1l91bFuYyIBrxByy/HGGakYapGUwhPvXGv5P?=
 =?us-ascii?Q?t3zPLBbX/V4E24VWj71BGXa7fNAYL2N+oKsUHNg6YWpiU+uIThbg5pyZ/oL1?=
 =?us-ascii?Q?wj1wS6QBpP3UBGDu74svHSgITeoQbYtas8xuJU4goPFmUTp47/AMEPGlLzbW?=
 =?us-ascii?Q?3N7K40gWmyG6LVQ4ZiZDZ5SnTdFir9/7C/cYFg/V6W9dhZc+9oI73kf6WRs5?=
 =?us-ascii?Q?JcAn8ApTJRY4T+RjXbqthVePCwkGGbGRonj80tUXYjCaa38zmv2nSuDDDVbi?=
 =?us-ascii?Q?4/glLVwvVcem2Qut83AAUWAk2wGFLagQxx8vVqdXIHtghWucpWJEQjoD3S50?=
 =?us-ascii?Q?SfPQDiET9vSSeAUmnMQKKV6wgAygX2pbwtCDJy/pc2Ve3uOBXYq7rauwk6oQ?=
 =?us-ascii?Q?XCPHGgh9/QaRkzLNNTNXTLuwAdzlz9MqYuRgMpujnQdX+MasFIUeCd7Ng6Zk?=
 =?us-ascii?Q?nAG4KeC1VNUMUf+daZTM0T/mjZk7TYMX43yPiqYizwj1IQ7bEW5ow56Kxdq+?=
 =?us-ascii?Q?ImU7QZSG1kvz6+PCE5kS3ErOXZ286T7tW0J7vsVhQKPGJDljr6AGIliCfrp5?=
 =?us-ascii?Q?0k11W1PbQ/WxAOqGCgr/5P1HeO5ubjC0C4zklcLH01BI+nhFaKQqamC3iU+I?=
 =?us-ascii?Q?em4HPg430+mKgZ5dKQSRw2UiX2YXgl2Tc5CksD5s2neHqOtG+Y3XSUY4qn2L?=
 =?us-ascii?Q?1ctcSg62Vb4go5zwykh3GI1nkk7dMQHdM7D5GOb8g0ruHw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1kvqPn5bArwN0vfR03IiECkLwiqU9ZTEC0CgwOjwR63otztv7ZfBHq9p5DL0?=
 =?us-ascii?Q?A1LHDej+9hzN+zP1NYNlv/7Oyw+qUxpJu/d3tISLmHEhgPAaossEigMgazcT?=
 =?us-ascii?Q?V5aAK/PDl3XAnVaL/Fxv41WVnDbfzhR7rKdwVeTZKhCDzA+tfFFTDlZpV8im?=
 =?us-ascii?Q?j9aLbbOu7mh7MbbeW4kegooRB40UgtQpryqcW3Kfbj69uogHpqnTqHHogycC?=
 =?us-ascii?Q?sw2R6VAVe+sxqLxQcQZEhlFpHo0qLf1I5dYnUUgg/XcZVUekLbGjj31SlQVT?=
 =?us-ascii?Q?s7Jd+fmsxke3elGifS2fxvEZyh3PrqAh8k2v1OTLYFslTT1jdxKJpRw8lPF2?=
 =?us-ascii?Q?RNVIHE7tPDaOu0/fw2thilWpjB2l1zXQDO4zcoEKSfKiE1xn3W8QuFQ3oGcW?=
 =?us-ascii?Q?mSk7TnEmc4FqBEl68w6oZRfPoSHirsjFDapnRwZxc6nmJZulho6xavz2fLLk?=
 =?us-ascii?Q?NqucWpaZyb12FOiRF2nSRpukOpAPa3emciQru+F29mGm+u/yo2UtZobkUAUL?=
 =?us-ascii?Q?UuXu34jzDjKtT/jtiVPwY96PhXU8Wyg/tok6SYrRbLxu8y4Azccm5kow8Nu9?=
 =?us-ascii?Q?iT8zbut7o+NUeQcvTukHCdILqh+DkO0GxFI/9BmL7mAFrtuVbc950algfkZJ?=
 =?us-ascii?Q?1gnwdPq8C5wuz6Y2NSb1HHrBC8/4sOF1F5Uv4p4V4Tk4QPabagLzv/9uvxLf?=
 =?us-ascii?Q?M7quzHg+Gr4vnfX3qVvvTFdadZ+A7ibJYVe6gacu0C8U3kUN+bbhWKDLiAhm?=
 =?us-ascii?Q?FeMKd9dhfX95BXlJSTBPhsQw4omHp46DcQN9Rnq1zM3CYjKgMCVRiK5FUET4?=
 =?us-ascii?Q?PWQMsCZE0qoI/9zvJGjOaYJ72NJCNgtv24rc6O99s7dgEsxRFmqYM2ckC9xb?=
 =?us-ascii?Q?KlZQt9qsXqcPRY6iW1eOxYWBsCHOqjTDTsRC9P5y2TTTMdPbE7BdlDAayHep?=
 =?us-ascii?Q?lMfqE+paAtF33TJZFkbicWLIGnMCvxWxkNHW/HA/hW6pWoCASTBnL2NLhBpk?=
 =?us-ascii?Q?IeMhXPt4Tx1Z8Sb4j5FCsZ32YqWX4ksortghxpSxLAg7Fm+650DirKQw1Wv9?=
 =?us-ascii?Q?gazM4h2op0mXbyTi004vV43pUxraN4XsthSDHlOA96FedKflvviupGcnKhiC?=
 =?us-ascii?Q?8g5khySxLooEbL483bLKcBtO/dz2amO+BD0w3RZXDATwowUEMAOIheyzL5+C?=
 =?us-ascii?Q?8tBjlTYC61DYqLUd6828942X8QzjZUpHu8EtH0fStC/MKb+A9v+vH3GrunkS?=
 =?us-ascii?Q?tSo28rv/SMaSfnS0rLOF/0Pg5OXRPriGHisovmjRhnXbHoaNPJ+fkNdsjMae?=
 =?us-ascii?Q?wwPxzZ+zhpCBLCKoWeNEMa4xCImbR8Mm+Lk3tVq9+2MaB0ucSEh9tS98G2K6?=
 =?us-ascii?Q?VJxS+9718Z7SZkquTtOTEc3ZOyLJsRzbyKECWeJS5XljqAeW0Q2lLLcToTHg?=
 =?us-ascii?Q?xD4pRwiUzguK3O4YX8NZZldRhyvI9aZP/LQJhM4FWGmLNoSlbaWkBlp8oGbf?=
 =?us-ascii?Q?Ba+vSu64ZMiGxD7zfk3KK8wmuAc+Bym6bkq+r95JtijA+bTjcb7NC5OtRFra?=
 =?us-ascii?Q?Q3s/2ba94nrLTGZ+IHNj7HT4ZAoiH1duybR1KP+F?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c066932-0e42-45a7-2097-08dc7f717f16
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2024 23:54:21.9610 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dxCrakiGK1IHaSLh36TeSInPL2P10EuvgZFwmdXk25bs5aw75Zf3p9NxgkuldsaToGhvZBzhGYmWc+XCFciItNh8Gf6xC2jb3DKCxyXhUrM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6702
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716940466; x=1748476466;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vUGNvq1LCPu1gHTMEjzSIjkRyBkXaN27Nf48HW0Fgnc=;
 b=k8xDez0OIooomahcUTyF0Uu42LZmE2q7pgUJtRDSWkYtEH/XKAs/KzOE
 sctE9ZCXxfRmR/db/STwoFNP9R2KeN3lZERCiK6R10gs3InbDdr3dTTqL
 nkboQoBdgqFvGCBPPWHf0SpXjuuxux9MDqAKsiiqRnOonEmYGmUkxxOPn
 R/uv1PXTaznaq+zbbg/z9xTYhtCzySJlPwUupojUMX+QgsRYLTq8tML5+
 ljSLXQjSGXspDXQsfYmIIYc415HswMjxC8K/i1HL9FhPloy3HocNmC1ho
 U4pCNd6KQuGebRYLjFceyV/HmO8ChmlcQKxo6QHrxpWPZK5MClHdweg/c
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=k8xDez0O
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 11/12] iavf: handle
 SIOCSHWTSTAMP and SIOCGHWTSTAMP
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Jakub Kicinski <kuba@kernel.org>
> Sent: Tuesday, May 28, 2024 1:01 PM
> To: Polchlopek, Mateusz <mateusz.polchlopek@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Keller, Jac=
ob E
> <jacob.e.keller@intel.com>; Drewek, Wojciech <wojciech.drewek@intel.com>;
> Rahul Rameshbabu <rrameshbabu@nvidia.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 11/12] iavf: handle
> SIOCSHWTSTAMP and SIOCGHWTSTAMP
>=20
> On Tue, 28 May 2024 07:23:00 -0400 Mateusz Polchlopek wrote:
> > +	.ndo_eth_ioctl		=3D iavf_do_ioctl,
>=20
> Please use the new ndos:
>=20
>  * int (*ndo_hwtstamp_get)(struct net_device *dev,
>  *			   struct kernel_hwtstamp_config *kernel_config);
>  *	Get the currently configured hardware timestamping parameters for the
>  *	NIC device.
>  *
>  * int (*ndo_hwtstamp_set)(struct net_device *dev,
>  *			   struct kernel_hwtstamp_config *kernel_config,
>  *			   struct netlink_ext_ack *extack);
>  *	Change the hardware timestamping parameters for NIC device.

+1, this is an excellent cleanup.

Thanks,
Jake
