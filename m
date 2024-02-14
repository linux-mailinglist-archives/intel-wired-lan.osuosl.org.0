Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD8885473C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Feb 2024 11:37:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5CA660E73;
	Wed, 14 Feb 2024 10:37:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YYz1Qj8Ig__A; Wed, 14 Feb 2024 10:37:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD12060C1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707907051;
	bh=Qk2iUMxEQkMma22cPCS2VL3Iz6gAkCuTHbhzVW4eiLQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=feDtimHUgxdEfBvRHhc0o6vf3mUy4mqoXSsjwX2u4PHSQdrAo+FPmyrc8zKS9mMnL
	 m6+sC90dUlZhZLQBR6vmV2RMN8uUfs9Q8yYyvbLcrrra9RsyVrn9nRorO4W+Rxnc7D
	 eOZdsxUZOV+imCz+1of3Ojg5VCtNDT1nUqZohYcD8uDjSD5d8hdCEkPH5qiN+VkUuI
	 Wbk8WrqQJvFqN8OcEkwplptooX2MOmg8qPaEKhfejlpCkjL6V1Pf6olSFkCDMobR6I
	 hpDJVsBw0EmunAmAEDrB3gIPejfW3nefe/IFs0OHHQaTC2ezNd59RaQyGjWQLoKprR
	 m0FmOPufiHqAg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD12060C1E;
	Wed, 14 Feb 2024 10:37:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9695A1BF5B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 10:37:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 800DD60E13
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 10:37:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kmeAhkciabnR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Feb 2024 10:37:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B03AA60C1E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B03AA60C1E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B03AA60C1E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 10:37:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="2088605"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="2088605"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 02:37:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="7729446"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2024 02:37:28 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 02:37:27 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 02:37:26 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 14 Feb 2024 02:37:26 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 14 Feb 2024 02:37:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mIMD/6bM3pqasvCtF5HZFj/tUq7Fd9VxCQKkSev4nNGQbBayqP/UrXokXcelLsWDx8YuLsKfVXm+i9yWY95U1WKOqJsRk0zHEcM7eJ+OaKRAmIA8q9tW11N125vXDR2biHeahdnzEUQWcUFkBGqwG+HBlmX3TVW82pp9WuBpFsE8E8bgLUL94fvjMYnO5bKJTBm2E9Ai/9qAlSxo5nmBXp4Csg/5kF4Zb/ozQo24SRUsyutK2YdXqWhBO8jrBmU9TmGEXSPfbEI7rtabUifgEC7DqMNMwr6+tSt+VIb9P0mB5qfd5ByDPzffORD16U/1COyH4gpjjRhLezRevojyhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qk2iUMxEQkMma22cPCS2VL3Iz6gAkCuTHbhzVW4eiLQ=;
 b=GvvzgxWxB+jdM376FN/shURE1lZ9KO0k9yX4psQk9Oz4H4NXLovrEP5N0Rhh8OBuoj+dAEKsdJUXuzptoUTPz5yDKDXAhW66/QsJYh5R2iGyHriuuBqp/lVchM3LAawnPsVG4NVhJVJh/FOxPmQB0UxPape+pPz9tvCAFg7eTzdLSQcbXQDHa1Yww3DD25j8C4P2EEwXatG0Cyh10lwItQ9d39loWdglK7KWvcP9+mxfA5KWDBgspKPrfj3BYwkr3Vft8CgYRPwJSkhJhIMqZgRUtRi3ayVSNSM5MzEe3HEbGFLwtc3EVimrUhZNK+adonwlzE+iFvGbRGI4eY5STA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by IA0PR11MB8400.namprd11.prod.outlook.com (2603:10b6:208:482::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.35; Wed, 14 Feb
 2024 10:37:23 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda%3]) with mapi id 15.20.7292.026; Wed, 14 Feb 2024
 10:37:23 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 2/2] net: intel: implement
 modern PM ops declarations
Thread-Index: AQHaXG3CJK/fET2ClkmEv7o6gl3u9bEJqgLA
Date: Wed, 14 Feb 2024 10:37:23 +0000
Message-ID: <CYYPR11MB842952F7E2FBED64113EC899BD4E2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240210220109.3179408-1-jesse.brandeburg@intel.com>
 <20240210220109.3179408-3-jesse.brandeburg@intel.com>
In-Reply-To: <20240210220109.3179408-3-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|IA0PR11MB8400:EE_
x-ms-office365-filtering-correlation-id: 7171f796-f83f-41aa-2802-08dc2d48ee20
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wYdQlmpu56CzmTQrDlFPycP1wPgy6PKlSsGICIjZex29BRri65rHp1ZSUn5xKTN+08+b0bFB02nmB39MYLoS5UGThxJJcuw8ElPAMh5SE7RQrjXRfKWus0VYWh3IRaMlQ0ElMna3G7S8S+QMtgsKPJyNhxxADDm/iEQuTJrraAdUgnPf5DylL40uWn/ORJBRxVoKp7aVkr2Ba/rcR7JJ6dQnrlSVsB/e+6U6U7d3Q4Ei4bzCWzwv3gRyQ1agbNoFEonuxMGUryhQoquzgP1h1u94s1AnfjdrTqmz0dlflAzvIDvt/Ezw2m1oI7HL4cx3DmOfAnycMGPp5pV7wBDI6dR+2NZOA3uDSvipwSWoB9BcKlHvtVdhePvqEeEppk+j2Q25Q5cH+g5J0NA3KLmN+dH83vYyVjKfVa96GRT7+eVYyF5YATfosjSBraOJqOfSQ+i+hGaKg2Jxe7vh+APjDWTLuU2PcpHZGn6gFFgFA8GxJTvO4lsXMqtfK+KNxEwPHquouNcGv/OBOuG+RYZ/G0akSMh70Ta3Rx5VjonsrkQIHaQr9/HxI6UyrD9pBa2SCCgTZg4r53Ufvtk1teLs+OeOpSxF5Uq775xfpF+QUFWzhYyhOl06MSilOlU7Z0ki
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(396003)(366004)(346002)(376002)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(33656002)(38070700009)(55016003)(41300700001)(316002)(64756008)(66556008)(8676002)(2906002)(54906003)(66446008)(478600001)(8936002)(4326008)(110136005)(66476007)(66946007)(82960400001)(38100700002)(86362001)(122000001)(76116006)(9686003)(5660300002)(52536014)(26005)(71200400001)(7696005)(83380400001)(6506007)(53546011);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?v9/tgqrHPwk160eli58w8bznSEUi5r5KpcgGMKfKP6ZTaEPpVzXFiX726sn1?=
 =?us-ascii?Q?BqzJzTACQrtSKbBFAk9owcAU0QLuuhg0vo88EPs515wMSDjIXai31pNTrPwP?=
 =?us-ascii?Q?5tTCd2KhZouC+mZnj0W3WDLJc2helskMgmQXAS8vZ15NEdT9ABzR1Obn7tiz?=
 =?us-ascii?Q?pZtU75DcEkpHVZRZhhO0Y0y/dVLz6R9GenkxbWMHYQ51PCc7a/972T4jNjWq?=
 =?us-ascii?Q?s5vnYbw6JshXOCZAKhZEkF5L3DFJGIPnNhDL+uX/6TTy+NqJKr8H3ZGEZvSJ?=
 =?us-ascii?Q?oBES3frcFmQM46v7+V1LAahueCB06w205ee7P26bnXSfYDiW2sTaF7qoIsdq?=
 =?us-ascii?Q?/r09nqRNsdUQBzXRRApCm9Grik/QTCOtRwZdyyiADSp10EyGT0IJ0MXnNjfg?=
 =?us-ascii?Q?ieJUWZlmXwQzjkn92SW4dItb8DC5VRL0Gl92ddTQKohZD98UVYcaGcmXd3Wb?=
 =?us-ascii?Q?oWiskHk5W70ELK+/YiUhS1l29CYkZSVrcm9kyWXdrUNiFoeJOFPG1fbLBVbJ?=
 =?us-ascii?Q?lFmlnmg4Zob8RBvx+AaDZ2aYNCk+SroKnWLdez5VnH0fbewZOy+ssfl7xtcK?=
 =?us-ascii?Q?Q0oF8CNsj3W7tW6wFeWocl8+/8NC3pRu30bApnLpAnu9zwIGp/Hnc1uVwedA?=
 =?us-ascii?Q?jyDz2RFWhugKXNApPDQLEfahA7WVIj1MSwGmkvc/N1Dst/b+fv0uU8STjhmz?=
 =?us-ascii?Q?0GOAOtXnabs3/suB2qfJJh3duENxMvFMKX5/xjSmuqvS9+dUqiBtjGKRVtSU?=
 =?us-ascii?Q?sFKSlceEjVFgzkVnOXw2cosrxIGRJaRDxmdd3/Qnnu4IApKHWoTZBlG2hyIV?=
 =?us-ascii?Q?Q3OeG/bJ42qdY7YlteftmCMjXsmdL/q9r2Oq6QDbSO72eIm+utjrZKOJIVdu?=
 =?us-ascii?Q?rt+RTmewtJ+7ehCkvR/GRkKjXwIpobQvGri/SkMayPX3NMDhDuisowfh9dUm?=
 =?us-ascii?Q?Bw6VmDe4EImOjGuJmKSXGAc8j5sgvCCHAnmYjHRByd7oKEB/1t8eq1RD3i81?=
 =?us-ascii?Q?p4QvYkqPJ/G6Att9FNMqEWnoiiHgT+CgoSmLeccZF6Z2uWg6XZWoE95jMwDf?=
 =?us-ascii?Q?ulrZf6I+3Y+LLCpvXW7fEcFoPS7pb4+M0qiyGbGGAria91YmWZjV5dz/zC9u?=
 =?us-ascii?Q?IN0O9Xb99b+86GXdUOg3wxa3q3eru4h/PsObeYCc1aUu5u5dIogVqEoXf0tC?=
 =?us-ascii?Q?amprRyQ/HsNhO+ny4UU++FEbIhNayjojWSu8YsT/bVR8RLrQtUdOTuVH+lWH?=
 =?us-ascii?Q?8PJoLbsv3G5mdLsVdOlvpnsfnFKhZ1p99pCPS9Dce+c3tgFlIMLNWh/VG9O9?=
 =?us-ascii?Q?xxXdI8Je7+bkKSVcFLjx+LwV4NMDet4QrMlw+mZ+hin9bclqlc44j1ViCa27?=
 =?us-ascii?Q?JK+wGbBupzsGQcLIG9qYLtWi7SnoGrca2gAsZz28GSNAN8VfKdXwVI5hJHp6?=
 =?us-ascii?Q?oQJRKs0Y3cnRE+SpmdshjvDXma7a5K8YrnjUi8Dh0w0+wVP26vl82VNdqz5y?=
 =?us-ascii?Q?a18KfcdwnEWkhFfPk6go9u16hXKrCrHv/J7yTlvJoVMApQqkWPZB40SGr6hF?=
 =?us-ascii?Q?dsA2lbyqsoSNg/VSaHAC6hlpvJUAR+fSBKY3GtcjQG5Ktv+KE9NyQucyAQjJ?=
 =?us-ascii?Q?lw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7171f796-f83f-41aa-2802-08dc2d48ee20
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2024 10:37:23.5404 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aUhOLwCPOvURu4XtFFFxBTJ1xnY9HJJOCYmo89xwSZpHxjf+6F2kvxFWTWmNigxaNB6XC+EMR04rBoC1ouZMTzvBGGxY2a9MlkTCEbXOtUmwZNvYZwNz9HWG7pi3AYSZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8400
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707907049; x=1739443049;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ndaukq0/WuzEYK6rwsLEyLunfXEzfGS2aWnUsAoN8Cw=;
 b=Iu+4uJExjR3nV2GAeQEWdCjIaWvTUVq+3vKkZhA506NiqP6s1pSQPhMA
 8sMsCA9h4be7x4u/ZpbOEQRWj+G2GJp8U7Yd0mhV8JDPq/88i8yqJ7wm2
 Cu1BcSjDjHYgGk6ocdWRIn4Uz0rfUr+4Yi698bl9cX3dVCW0JDanx31i8
 U62Vd+XpLoFT8v+6WJaqVfDkkKvyLLlvP+4cFIlFumfciZXp6iTUKt2S0
 thx5gFowgiPWu4Skht76mAIN1tVMslf43MXeXcgtdzgjQxUPF/wEDO4md
 Y9L5LtyyuWcaAznLPxN32cXcjkDr5CIv1mzxiCHNb7pWpi/ZOu1CIoOn2
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Iu+4uJEx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/2] net: intel: implement
 modern PM ops declarations
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, Eric Dumazet <edumazet@google.com>,
 "Nguyen, 
 Anthony L" <anthony.l.nguyen@intel.com>, "Brady, Alan" <alan.brady@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of J=
esse Brandeburg
> Sent: Sunday, February 11, 2024 3:31 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Brandeburg, Jesse <jesse.brandeburg@intel.com=
>; Eric Dumazet <edumazet@google.com>; Nguyen, Anthony L <anthony.l.nguyen@=
intel.com>; Brady, Alan <alan.brady@intel.com>; Jakub Kicinski <kuba@kernel=
.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.ne=
t>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/2] net: intel: implement =
modern PM ops declarations
>
> Switch the Intel networking drivers to use the new power management ops
> declaration formats and macros, which allows us to drop __maybe_unused,
> as well as a bunch of ifdef checking CONFIG_PM.
>
> This is safe to do because the compiler drops the unused functions,
> verified by checking for any of the power management function symbols
> being present in System.map for a build without CONFIG_PM.
>
> If a driver has runtime PM, define the ops with pm_ptr(), and if the
> driver has Simple PM, use pm_sleep_ptr(), as well as the new versions of
> the macros for declaring the members of the pm_ops structs.
>
> Checked with network-enabled allnoconfig, allyesconfig, allmodconfig on
> x64_64.
>
> Reviewed-by: Alan Brady <alan.brady@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> e1p-v2: dropped errant idpf change, updated after v2 1/2 updates to
> move the declation down for igb_pm_ops.
> ---
>  drivers/net/ethernet/intel/e100.c             |  8 +++----
>  drivers/net/ethernet/intel/e1000/e1000_main.c | 14 +++++------
>  drivers/net/ethernet/intel/e1000e/netdev.c    | 22 +++++++----------
>  drivers/net/ethernet/intel/fm10k/fm10k_pci.c  | 10 ++++----
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 10 ++++----
>  drivers/net/ethernet/intel/iavf/iavf_main.c   |  8 +++----
>  drivers/net/ethernet/intel/igb/igb_main.c     | 24 ++++++++-----------
>  drivers/net/ethernet/intel/igbvf/netdev.c     |  6 ++---
>  drivers/net/ethernet/intel/igc/igc_main.c     | 24 +++++++------------
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  8 +++----
>  .../net/ethernet/intel/ixgbevf/ixgbevf_main.c |  8 +++----
>  11 files changed, 60 insertions(+), 82 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

