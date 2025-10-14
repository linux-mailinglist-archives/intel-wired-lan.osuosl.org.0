Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 74888BD8029
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Oct 2025 09:51:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 339FA61537;
	Tue, 14 Oct 2025 07:51:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iQnvu6b5eIXS; Tue, 14 Oct 2025 07:51:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B06F961541
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760428312;
	bh=CLSVXdgpATQhDwNb9R3DRpbRB1Iokc9cQC0if0ozv6A=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Whs8GGzlaFsBoYJyOmtJidT7VCNI97osJLggaNnkxgpkoJYJBU/f2qH05UqEpWDdU
	 1tKOnAxAFOlW43EFkm34jFQLW4nCaUJF1IyitZHqnMgNYVDP7Y8Y+/tVG2V+uAH5oV
	 rRySnY1aJntGwMJXCFaeQuxr0auGB8yIdoDugiG8mEOiYwCrWLIxeiHaZKYUJPv/Jh
	 U0kzfiorgB8HxLscpRmEMwmNo03rG4AE8oOuw/w75aZ0FCh30tD5aS4/pDcR3tc4k2
	 2FZjNOrxZYm304P+12zlUHghz3PHlNFk3SAjjCUsnfF2cXl6UqxvXJ29NcNIHB6tg5
	 KjFjpu27Ar0tQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B06F961541;
	Tue, 14 Oct 2025 07:51:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 690EEBC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 07:51:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5B37E40557
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 07:51:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zBHKfa_MBsCO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Oct 2025 07:51:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 83FE040543
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83FE040543
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 83FE040543
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 07:51:48 +0000 (UTC)
X-CSE-ConnectionGUID: 5OQF6f4EQn29/it7ob98fg==
X-CSE-MsgGUID: Bh8lXZjcSxubXm6OqXhsLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="66236019"
X-IronPort-AV: E=Sophos;i="6.19,227,1754982000"; d="scan'208";a="66236019"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 00:51:48 -0700
X-CSE-ConnectionGUID: k2j3Q5YVSuSPqMQRMHDWiQ==
X-CSE-MsgGUID: P5xdBU0PTb6apLTyc/jWQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,227,1754982000"; d="scan'208";a="181494834"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 00:51:46 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 14 Oct 2025 00:51:46 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 14 Oct 2025 00:51:45 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.53) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 14 Oct 2025 00:51:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NY94f/hwNhUiTiVQz/9CXzjkL8R+MG5oNGPg2lGSxCLjZeF39lQfGIYeFqIL8EcPvpCaopCvQqJ88z3R3atiomx11Mg5esAoQUtqm7zm/6+TJAUfTOiNWeqFP+YeOgyAW/yTHteq7bd34LWA14cFEL8I6iWN5J89jT+3wHxQ8HNX8R8GwdG9q6pPpSmM9Py2zmtECzNxUH/Re1+JBVxxLngpCm0ZlL/pqicijBVbWF/DEsdn92KSI6UmMN3v0yfIcVLYBUtlTqwHHAV4cnFUq6PVxSgitOGzobhW0O5V44jPNl9UfNrQHBHD2qB7xha4eBlMiPDcme+QsuWDV5fpqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CLSVXdgpATQhDwNb9R3DRpbRB1Iokc9cQC0if0ozv6A=;
 b=EtYnjCUnEjd6P3ELECujtNlx0yJ7fV2iKq6KToZn71do1CY1R0zCxPr8WoB83Gaq24Rwfz3oPjmrHfSnvq3EHX9z0621eSymWysZF4rgdAgDAKLSCMRfHubheFcCKx4EratONaLs3zeBef1eoLcGs9zV0YaCEd4f3BhPwLub4sN4MaA1YAHroATRaW+iRSZ7ni8ceCUlz45uWLUenuUJTqzZKu5HgM/AU2E1SFDf/yzy62tOg9iYLhaMq56B2AgQsYHfLD5LUubMGG5HakOSoe4YQyJbQU8y8J4UeQxrVyE+IWT2RP8bNLpQj4uNfW/UwtktRR5JDwir5yjoJpbuzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB8253.namprd11.prod.outlook.com (2603:10b6:806:250::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.12; Tue, 14 Oct
 2025 07:51:43 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9203.009; Tue, 14 Oct 2025
 07:51:43 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v8 9/9] idpf: generalize
 mailbox API
Thread-Index: AQHcPJaUMHKkzt/iokKzM+CxZSEc8bTBRYDA
Date: Tue, 14 Oct 2025 07:51:43 +0000
Message-ID: <IA3PR11MB898640AA3C0CCEFF69B44213E5EBA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251013231341.1139603-1-joshua.a.hay@intel.com>
 <20251013231341.1139603-10-joshua.a.hay@intel.com>
In-Reply-To: <20251013231341.1139603-10-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB8253:EE_
x-ms-office365-filtering-correlation-id: ac499f89-cb5c-4f40-c935-08de0af68450
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?aO0i2wXcGFfBaoTefuz85E0gxQXUj9ggwRrrTYTi2ObQSVyHCyJy3Ol87f+y?=
 =?us-ascii?Q?RWEqTDq+L6Z7vAGiK7hozsu9yCQgJ8boW0EYMcNxvw2TPjN2fugPG/zB2ef9?=
 =?us-ascii?Q?7PcSYcm0WOankpbpD/S3Cn60YIiHyBO23gIdF/gaxyNSfmlYfXPUQMwhu9zJ?=
 =?us-ascii?Q?gA1l0p1lSp2vP+7Q3izmcOWv55alXcYcl7W0jEP1KGRlxy7wZpZzTfjtkUss?=
 =?us-ascii?Q?KbvPZYimUq8D68ba9xnbFHsAppmi5ZZQVSbVakjhEqPKI9sf3Juh+0fsow9n?=
 =?us-ascii?Q?DrfcNjxIUcjgIx3Ze46/Gl2A6OzD8lmdrQthxYfBRmPxmOe6LuGQYxdbng7r?=
 =?us-ascii?Q?nyIAQ0Iy0rbeMG7Dh5syXeF22yQc1oyrBzvAFAjMwhLdCyf7nVE3xFMnFjvr?=
 =?us-ascii?Q?y9/tyId0ewdcgS1MnTL1J4jQkTGdQSP1CYl4r33o6863PW2iZsK8rTA0qgJF?=
 =?us-ascii?Q?clLI6BnLX5sYyaqaQrxaJdA2/MKfFCHhCdeP2vsVjJdi+bVgdPHf+LzxmnnX?=
 =?us-ascii?Q?p4LiGEzHqMkY1dy8/ptbBFlbQ3EsN9fWzInzFd3aDM5PjGUrVTcPu16dHZn/?=
 =?us-ascii?Q?TbqZX/cF6PVMGTGbYxUBnblB1IqXQn70bfpCdbO+heMiOuWy528V0YjBL4kW?=
 =?us-ascii?Q?Zt4AK2sLT8qZ2WToUryb9Q+Ueow8YOCeYJhyouae/jWoGVEXlZznyy3nRmuG?=
 =?us-ascii?Q?J6h5IsbghS2rKWIJvdkiBbUV4wUQ+3F8lDTC4ND7VSus8LnfuJmSCzphrQio?=
 =?us-ascii?Q?dWLnr5thDMVl+GfREfP/YEPcAITlSLmld6mFYSuS7Am6HXNGSZcEvMUfuPUn?=
 =?us-ascii?Q?TTQKH7Whk4jMiPJCL/7xbYTml/35QbP0kY9M+H7YQuwfC+ElVx5IEQWNkD2r?=
 =?us-ascii?Q?DpHuCltuFjt8eWlb4Gch2cMr7a+0MmQvwJ9dxprl9h9JfL31vD1mIBqXeR5e?=
 =?us-ascii?Q?2qZZXvxdPT24BuRmQmhjLWkdjxJhKzv50x7Loaa5xuzS8eQ9mDy6Wua3RAqh?=
 =?us-ascii?Q?1pL/AvFxPRoy7p/KNxaSqqUv+ELRXPi98RJDE6ozyzzrs6MdGOPUee2QM4x0?=
 =?us-ascii?Q?aRyZh+ikmUmqbKaXiKIT/6HEbR2YLwGwTV1RGWXdYuk9TOUEN3LGoHiWxEQx?=
 =?us-ascii?Q?GKKCun/uT18ya1zcD7yEvdaBX6WnN9CoC9BbK1KTqCUsDTLSP706jUv75n67?=
 =?us-ascii?Q?X59w52xP1TdAhQcXT68RcuodkMRlxDDBN3t327g/UHCzjp5Jk4VLb4n34x+l?=
 =?us-ascii?Q?YWOrmGsYiRynq+Rsp8LrcNg2REPAPMRqeqE23HeiqWEvKn86+dNrzJLiQDiB?=
 =?us-ascii?Q?YEQt4+jX7bttlJ3DgpRSvHCPFwZnX8I4aAb+8FEt5bmrNBm31xIB05i6YzAQ?=
 =?us-ascii?Q?cXOcnkIeFlLGkmxixefqKVjY8w6cbIagK08uXiCSZCSKdMKt3dbPSIqhuk+G?=
 =?us-ascii?Q?yhwKTgiQOVQhAONQMshWtKxjrX8wRlQNQq/082Jon6gBmWv1TIL6wwO937Gr?=
 =?us-ascii?Q?37JlU7tc/tvO2+gkXCYbPUFmCfZvUZi2bqmJ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2JhgjNnGeBhZMOswTvT8JOg+bds+LHyAgRpUWMsHacwsXfW5M/LTDLDQMg2H?=
 =?us-ascii?Q?rJtdVy2jZaI+OLt9y7AZ1iph2bPm1ejWDfIPvaB59w63G30f8ng692KxBVWe?=
 =?us-ascii?Q?GXGhwUkxTzpitMafrLrf8rCpNjIZ3GY4ey3ZQV4ojoQdiRUzCjDcXIeLcm6E?=
 =?us-ascii?Q?/CBwxBoxpiQkUOfGl2zDgSgtK12ds9WlQX3nibcAQIoRysIKEks2jmDVIfss?=
 =?us-ascii?Q?v5lf4vTl6tZbVH/5+/zUUnlkdv9NQbeY1FBcyaZryQFEmdpJVdceznJrpEWB?=
 =?us-ascii?Q?hYSRqrwuOCHaVEqYcLB5w93lMjiAWF43vntJ8BAAlc3Rz9GS/lVX0cuQLCpH?=
 =?us-ascii?Q?nxh5UPiL8W1AVUZvYqJ67TxStnnHmFIwuP7IqkbEVJc1kX09eGLNj2kgoJGb?=
 =?us-ascii?Q?mR5Q54IK3E1+ev4lpCx1wp6zDpDmY+ZE2yDFX7DkMX91z5pHxk5YOTRGKtyL?=
 =?us-ascii?Q?gSeks6Gvjiy0nBUJgl1ibPuPlW6IJJGoW07BNnPDBl7h8cbnYJdu9kyEQv2l?=
 =?us-ascii?Q?O3mZqsV37Afx5C5I1jpnemfJhkRE/1dKyeWYjA/raoU/VseXXqOwCTUq1/y/?=
 =?us-ascii?Q?TkYkg/q/7DiqLbrCo76k62l5mkVTcfaqEIPW/WMMRDUB6V/qDGuEAG1KYDvX?=
 =?us-ascii?Q?ZfbuPBL6S6f4ij/LOIQWosR61TH+vPHkfWpq/LFpQv2mRVYmt7HMyURG2uLf?=
 =?us-ascii?Q?my/gSE39Itsgaex5Qw8al2EjW2L6vTuBimS4RsxyoL9mYiA9wU3axLSslvxN?=
 =?us-ascii?Q?PNwv/RxsqpzuZnH2pG4EdV/TldrhVWe0XD3ke4gak/C7PnV8v4lWmbMAIib3?=
 =?us-ascii?Q?5h1t7Pp9gD8f8LPdhozSnZ3yvFJ5Klcs3kjissDVRYISQmKaxcWkMqVEm3QY?=
 =?us-ascii?Q?hkfE3evWALZG881PeHKJvvuRRVeoERCiPdPwaby8Z+T8hZwM/hR0zjzb4tzZ?=
 =?us-ascii?Q?TPKpcosSQGglKxAQcGDYdOwZXGc5xFPxGXrW4rucVFAfA6Kdea162Qf/6Y1e?=
 =?us-ascii?Q?4P1pzp2Xeg3/wtn8PuFUtnN329gVv9qikfLrXIeKd8m7c/DisjjCUc1VrERb?=
 =?us-ascii?Q?0weWN/UDwaolAPPoBD4CjIwJIPb6ZSvVXXtrnEGnyRp1IqXGLNstUKOubc3Z?=
 =?us-ascii?Q?1nyb2ryoI5CAo+QWTdebtlgCWYndh3yRzVq386j5LDB1Ttt8PxI0PdiOaBT7?=
 =?us-ascii?Q?bKYpislUnbv3n1IEXbH3BiD1PbRNqe8b9+F/gf62W97RpjQsNYuCa8uHT9/e?=
 =?us-ascii?Q?HsO+eKuIibDJPSc4k2EZbU9ZPUwOCb7usx0NinrO6w07JkPi3UcMwChMF4oR?=
 =?us-ascii?Q?BVlYoLo9W01iFpvgooOxHTZY9Wca2hUkVcf1a9h9qqVF1BR1bYY8nP41/WWE?=
 =?us-ascii?Q?YkEF1s2XxgROcjWwTw3NgODEwPV7Q5qSa5sQaqvOkroHs9HU62pulCht4BAa?=
 =?us-ascii?Q?Xekr8pcblDIkNdpxSrSyaZ1F3LV0EQgG3zPvQf1mB7Qbuh7CPOS8fmAfpu21?=
 =?us-ascii?Q?8yQkQlHTeCWT59aS8fDikC5bIYKAYJrpUY3uN8+E641EVFSp28VeVQYfTZo1?=
 =?us-ascii?Q?R92P/1UrUR6aECjmDVliq+2U1PefQDstLBBaePcbixG92x9bRSKslTfh4qkh?=
 =?us-ascii?Q?zA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac499f89-cb5c-4f40-c935-08de0af68450
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2025 07:51:43.1261 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IKo5Omp/3woBVnSVl13JI+LxsM0TKoM2d4BIXIRrm9wV8qnTrfegn9Y+HRxmM78e9k7kFexi3LXEFU7YrZdpNduPSPSzIJk2dgkQdcVJ0d8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8253
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760428311; x=1791964311;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CLSVXdgpATQhDwNb9R3DRpbRB1Iokc9cQC0if0ozv6A=;
 b=IHqt02q9fvlsTdi/nZrmd8+Q4C2Dg0JeuiCCcfDNQkZnjS10NCMzAIcP
 pKqm9fzKC9jf56yrOLiTUOO6p9Y/VoVvWKP/FbelSQicvxYst2dHDGBpv
 PJLKdnFOSLh8hibvK+dvHvMMaZU2L77WeJ1IGqPcc/foLxRLlfAPT6PPx
 WmV6XxeOjcdQR6k87jM0E7feiz7bVD3D0aEXBwzqflOjonMm0nD4mavaa
 IzTxxLHhhS1030K/Gf5h2nBoBN1JURexzCAUjNQWmBa5XLSdVFx4gwyv3
 4Ce5FyL8fgGBNwJtiuP5EU8Yf5pX2Qh/4Ijcr2Glb/LAtHhn1aj2HARoE
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IHqt02q9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 9/9] idpf: generalize
 mailbox API
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
> Of Joshua Hay
> Sent: Tuesday, October 14, 2025 1:14 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v8 9/9] idpf: generalize
> mailbox API
>=20
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>=20
> Add a control queue parameter to all mailbox APIs in order to make use
> of those APIs for non-default mailbox as well.
>=20
> Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> ---
> v8: rebase on AF_XDP series
> ---
...
> --
> 2.39.2

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

