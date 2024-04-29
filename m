Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D7F8B510B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Apr 2024 08:13:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A976606D4;
	Mon, 29 Apr 2024 06:13:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VImm1K_BNmJx; Mon, 29 Apr 2024 06:13:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A55E0605E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714371185;
	bh=mu9k6z8aXL98RayJBVTPTI8L0pmVmqwyjEhKhzaLpYE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6tpQrCa90NzLiSrm2Ix5tP05wIVEhXQogaZs/ea6BRCqczjCZr1oaUoix8Gjf44Ri
	 hqK5XeHMYrcJx62sJg90KR1aOwbSpKvCQdWhUqkLOkpJdAIdxzAyTlDBpFh+48UL3k
	 0UitS5+j2KrAleIU4HG8jyPHrrp46dvFFvqkHUkbsLvPBCPENIQPQ0i+mgnV8Kb5io
	 iNXFKVy1nNwm54DWh3qMPS19Ug/WL9nUx75VWcPJ1akH2OAzMFx4xVRzx2ufCi0Xjr
	 dxIwnONVGIwsktNnN3THvSQ+g5ByaqAD9Ab6xGz0lLuRbah5ikKOcSFImDdCq3Qkrf
	 z785MWMj2whIA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A55E0605E6;
	Mon, 29 Apr 2024 06:13:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D7B341BF4DA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2024 06:13:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C2CBD605E9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2024 06:13:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aoyYWVnbbY8I for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Apr 2024 06:13:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 068BF605E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 068BF605E6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 068BF605E6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2024 06:13:01 +0000 (UTC)
X-CSE-ConnectionGUID: l2k/BfbLSOKLvBsl5Gi6dA==
X-CSE-MsgGUID: yBHzbZrSRCecDEHwaUFWHg==
X-IronPort-AV: E=McAfee;i="6600,9927,11057"; a="35411919"
X-IronPort-AV: E=Sophos;i="6.07,238,1708416000"; d="scan'208";a="35411919"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2024 23:13:00 -0700
X-CSE-ConnectionGUID: SDjhM24pTjO6pqvhDgchug==
X-CSE-MsgGUID: BjkMwG4jS3CQT7DBL8PafQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,238,1708416000"; d="scan'208";a="25995830"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Apr 2024 23:13:00 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 28 Apr 2024 23:12:59 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 28 Apr 2024 23:12:59 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 28 Apr 2024 23:12:59 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 28 Apr 2024 23:12:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l7JKY7n5BVz1EVHm7DCAcYt8XHqvl7TpZp8IsENd4sEMo7VKSN0v8D60Fj771mmRBQdSyrPd90RIYzb2CLTOnCu8s8ti1klneyDCbsEcLSnzH0UN0TZoqwnnyck/rSaD6BBpKzqaAUa/vqHoMJiq2mS94GV8nHb1q1afrceWrm2N3Utmrn2CLDMQmIelfMv3tHv6Tlfm17C8oO5nB4S1Ntw0bp4icsvkpcWieNpP5EPB+MpXz0soyiOKMArMmNOwz62LbUiFakN3Es+re2gAzXUb3idcmWKxcFPUQjJl3xSXdkdPMAqR0MsUxJr48xeofG5v8xliGpRvUR9+Mztu0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mu9k6z8aXL98RayJBVTPTI8L0pmVmqwyjEhKhzaLpYE=;
 b=Ktq/FqNuvvcHC7+8hOaVVjDiiLBhGbpojEUUu3BHwoR3o7tTJ41I4Cm5azndeCrbCwGHaeDAF06BUzFzYHwCNuSYroTlBLsW3/htf0KYCkCvc/67+3vUj4LvXyhMg04sgCLGkD3kisgbiwWNHv1i/2t0u8sOzDAjK8GQkqnxRwG6HKfpz5bNFe0LoQX4dlCwGn5A9P07KgULKmuetv22Af/5IPDUR7PXTxWu/skcr4b6CnZliSWMc071wKbcyC7hQff+APdeH5hJrWxwNugBt7Ob3AG19WKlWO0+XXISGHNsCH9gZomq8m6kbyATzBAeRTPHrOT9SDRYqfC2UepQHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by LV3PR11MB8741.namprd11.prod.outlook.com (2603:10b6:408:21d::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.32; Mon, 29 Apr
 2024 06:12:56 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7519.020; Mon, 29 Apr 2024
 06:12:56 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 2/2] ice: update E830
 device ids and comments
Thread-Index: AQHagXbAZ3uRPYC3l0mSYD5s9/q3kbF+9U/g
Date: Mon, 29 Apr 2024 06:12:56 +0000
Message-ID: <CYYPR11MB84295221E3E7995119B9C440BD1B2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240329010708.2805384-1-paul.greenwalt@intel.com>
 <20240329010708.2805384-2-paul.greenwalt@intel.com>
In-Reply-To: <20240329010708.2805384-2-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|LV3PR11MB8741:EE_
x-ms-office365-filtering-correlation-id: 87c4c207-defc-42c2-3ca6-08dc681369a5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?6qUYxEMwAUyi+HNcEHFY5joE9eCOyfBCG8eJgDcHR8on3Evn1VtmuZx7ciBF?=
 =?us-ascii?Q?3J8tkEjxqDUhNVWaFaC+O8KvnSy5237dgYr7ie0mbjP6/TfGxL6a1LF1EZkI?=
 =?us-ascii?Q?3aukSq52ASYef4zw+yeyOMNNLPWrUPhOkHn7qlwX2vydb8Ylou+uFwg2E+56?=
 =?us-ascii?Q?7+Jo8CAsktsCuNWjyzkm14wX+Hw+TEHetwNk74fjBVaEhp2O8oPRghgxUBiS?=
 =?us-ascii?Q?VteXKWbzrrpXzAeEQedIsDWJKm6LbZEldoUAMZ2fVlVXSqlgAYVF1RbY+0I5?=
 =?us-ascii?Q?wYGFJCLhFi5iJxHeQKVdQU9U0/M0A+z4LLEfQCZamHYOozW5moklV2saFEbH?=
 =?us-ascii?Q?79e4YTcaCH5X4yeddeXd9BgtpkcP/mIPivAwhjBSD4Gd7WNUGlSvlQflA+WH?=
 =?us-ascii?Q?3mdhx0Z3k2BSp+eG4KQSiXtkOX//zkWO8eodhOGYpnqYAAo+DFXacFIMhGMN?=
 =?us-ascii?Q?smQIMHrLSCGAvJyutfLoVcV4U8jEN25/Kiatuk6ajVI8S34nCELwi7I1YaSD?=
 =?us-ascii?Q?s1gKH15ZWaKwEijxchm1c2yH6GPIDdjgFPa4LrSbEDJA7mvkoe9usx7T580a?=
 =?us-ascii?Q?OJnbvSktZLM4NCweKF3P9QdbtUOLKrxzEZ2+/PonDscD3qH6sqRI4e03pRH0?=
 =?us-ascii?Q?t1eTAWNOveM5n5knmn79pFP307DhDoBZMtRYbkcW+TGTOKv97AHMID5GXbg7?=
 =?us-ascii?Q?0LfuihyHYYns8LjYCW5hk1cCuDAmJcpVcPA/9WAcQDwl7INitMih0UDb82ka?=
 =?us-ascii?Q?4zIw030PI0GlHPsJNYjfYXIFaEYEqa9jFzgJ5PGBbSdNhxAawVB2CBU4gU4R?=
 =?us-ascii?Q?IxXhnqoN9aCr2HW/eHMRIRHOuGLCkillrYELp2FLZ5IJGA0gz5TdVDnzqNTX?=
 =?us-ascii?Q?SWNqGlhoWCWNC0b4r1UqLw/7hDFPsRlp2RHtZxV3O9d3sjrY5hsaZ6wLh+Tm?=
 =?us-ascii?Q?pcj93X6BToY6mF3rD06H+0LdPCTbAh+6N6VUZbkDuD76fR2P3SOvRLh7Bg/a?=
 =?us-ascii?Q?BsT3MDaNX9a/oX6DE45PurHVAlj4i0KFmVOftIIRiSZ9a5qacauEniVlb0B8?=
 =?us-ascii?Q?9yoCchwa7/GDmogTXZFu9i1FpvbGVmdvSvrOXXAW/Ex6hTVcL8a4GymnK5tI?=
 =?us-ascii?Q?xSuG3/2OwBah/bMN1eVUZb2h89zI2MQ6Qt42F0DBNLOl3bHZbKo0Ir+n6pWj?=
 =?us-ascii?Q?A/ptcK5kSDlXoCLnwt27YEs0rBG/+wpElyQbSR6cYQpIMNXZO/1zB9EAj0Hb?=
 =?us-ascii?Q?DhwJnSh/vn7QYikCorB6u5GWXFeei7QL6VJIlR+waAVl1y9CRwlLSBDWdNf9?=
 =?us-ascii?Q?nXXshg877m+Y+Uuai6t9FCCs?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HD4iLFxE1vktk8JN9Wvr+p8BeQdtu18rvASbr6bqgTszV12Yrgs0PbuACJQu?=
 =?us-ascii?Q?AaYo1GoDkOxdFClOPpfwxrTQygQCg944mdCR6raZDGTQbTUkYMiQ3pUokzXA?=
 =?us-ascii?Q?SvYeDrj/zXHkigpjcVeXa+wE4cxznxxXG7k4FKmZIQREGV7fmUFJttiCa3i6?=
 =?us-ascii?Q?wcAIgpGhGMoCu3ssXvWKjP6IfZsIiSiOWuMeER17xGjnZLAhxRNI/wN19fdH?=
 =?us-ascii?Q?4SxHZ/vXkl5lipz/z3LURmthccq8GuROucNSHOGSV9Q0rJ1yVaMOHA9h8SvU?=
 =?us-ascii?Q?+YbTPJ5i3IojlrXJ339UIri5grDaySMTaPsWlU6X6df77o/az4srdzB+/ZEb?=
 =?us-ascii?Q?zz5kpCxtQOp0GLyCy8FmZpkWmWbjUVvJzH3RWOIh0QgU55mu01JHUbjIM3qF?=
 =?us-ascii?Q?JY7/DKP/Ecwqg0gBvMQ2wlRpvaUIgRXeWLpHUPCUjiUH3sJ0n1k6JFFd8dzF?=
 =?us-ascii?Q?QsH3uVo1AsMYjgNgalo66lWMvBPUApDEXNW89PN/I69eMToyhXf0PrqcS/vK?=
 =?us-ascii?Q?7PV2YLWDQhQ4d0/WFQJ7ZKvAeel1cCsDNwGWsseVLu51pbggx2Jpo6Sl11Y0?=
 =?us-ascii?Q?/ypBnNb/DdOhkS6Bc5DTdy9lb7X+v/cjhC8uAyxIOAHdrbThacJcyqWbT57o?=
 =?us-ascii?Q?c2iWb21Qh8n1Z16FyEUxdGWkeIiN/fUTU0ok0s23W8gj9aEPDQ2M9ago+Qky?=
 =?us-ascii?Q?iRAxJyCOGWJecceT7QX9QU571NZJ3vh8XbkV1mqdXgtvla2fhJzVk+XjregO?=
 =?us-ascii?Q?8NmuH1OBlGlU9t1f6SYZmKXhSPiUOSigKNnyfD+rx/oppLeoBzd48JypYUFo?=
 =?us-ascii?Q?HcM3KgfQO0/pyjea522+HRUkmw3Xt6vpr/8HOWlLsCKo9TWl/3x2Z6wyrtrj?=
 =?us-ascii?Q?MXWSOBb47yMlKocZsoxQJh1hd5Xa73GWV5Q4VwW3i1UcX55sfHRgLCbVhbWd?=
 =?us-ascii?Q?NON5sqQfa74oAEDvRd1L3yBq1cLnntoI5y7tYsr2dVcszvlO0HBBI2oaJ3z9?=
 =?us-ascii?Q?QGOUmihirQeSFQb4A03aWnnMgNqNYsloCTvZdvfxZ94Yqy2+SwMIgjMTi61i?=
 =?us-ascii?Q?EckZJFqkoOR4PShFKYRe9Stq9xT63Wyyk26MeGjiFr+eXLNt7Y5nRqOUnVut?=
 =?us-ascii?Q?ZIL/OoiF0a4RIKMXuFhfGJeJbIP+xneX0ntY4DocgF9VvS/Eye8/LYFYziJC?=
 =?us-ascii?Q?yDcm4Jy/341ft2qqdxoFSySrLzJ3Qreya7y+pBOkVtZue46jk8ojKzJPcTuY?=
 =?us-ascii?Q?iFMKsJCVF3KKOJVcSTWkvh7OiMuOflNAUn0LToitb3a2wGt3hBlrREGoocUV?=
 =?us-ascii?Q?6vCE2Htuw8q1HEG9oMNonBnPeYsE5qmFqw7POSKC9kJ1okUKPGmKm/x1DtxJ?=
 =?us-ascii?Q?hySsbaEGSfm7kwXnIJjdkpMqVwbmjQdEym9+vQ8m4ycp1TBQtRMpQtej0n3w?=
 =?us-ascii?Q?QBBW7ImytVza1x1Py65IJVoyJcvNmP/JT9acgIM7Xw8DxUMpp79rlQ/Nlzks?=
 =?us-ascii?Q?zMjybptGah+Z+z6a1ypoloCHUqctG3fo6nUqUCNNsBzMRVNjrIJ+yPwMxRVb?=
 =?us-ascii?Q?Uxj0rdtJbMCXWS0q01GRvQ30lbfjBf0efOEu7ZgdCZssive3+ZxGhGFNU4E5?=
 =?us-ascii?Q?SA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87c4c207-defc-42c2-3ca6-08dc681369a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2024 06:12:56.5410 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iAaYr0i6sgUhZaGIF9pTFqh0WI9R8Y3yhObsml2qSs+D4L+A1LFc8nJbikB9LTxiA4ri8vn/ltK1q2RvKP0ZKKygcjxpPmaopH9r9aIWgwuCyK/YQ4ck0Grkfhltzaui
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8741
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714371182; x=1745907182;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ChI3Cw54dGC+vdvacNWobbM+Ej4QeufneA9UgB757dY=;
 b=N6M3VlwiBxgfFymCvjl8MmELiQMh+NcGAZcKwrXke0N/7DSXmkCQMmed
 Mtv8Egzbs7pGo2QLszeRuyTJ1tX7OzVkxR10ifjS1YSheUYVemb6AaVcA
 3QVJzmsSKH1urjJiGna9fpQqtU6xj6nqSL4VyzyTBUlJO0sdfAMkFVhxw
 cqaPnsmy0f93wqcPxUqfisRYlvrg6VN24mll7kj0rjmGqdnF/XWYPRf3S
 JLU/qygzmPYyF/KiAeJis+Tmuqll0/tyiagE3tLy4HDOGoP90OsXScWna
 RFZ0yre79d13W0SfkmtkGU63FMFYw/8lvAryrcK/Rd6Mq7hiNP76PI/36
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=N6M3Vlwi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/2] ice: update E830
 device ids and comments
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
Cc: "Greenwalt, Paul" <paul.greenwalt@intel.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
aul Greenwalt
> Sent: Friday, March 29, 2024 6:37 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; Greenwalt, Paul <paul.g=
reenwalt@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/2] ice: update E830 devic=
e ids and comments
>
> Update existing E830 device ids and comments to align with new naming 'C'
> for 100G and 'CC' for 200G.
>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
> v2 -> v3: fix compiler error
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c |  8 ++++----  drivers/net/e=
thernet/intel/ice/ice_devids.h | 16 ++++++++--------
>  drivers/net/ethernet/intel/ice/ice_main.c   |  8 ++++----
>  3 files changed, 16 insertions(+), 16 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

