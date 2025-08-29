Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EAB2B3B30B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Aug 2025 08:12:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D467884005;
	Fri, 29 Aug 2025 06:12:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id knkdLey8q2LU; Fri, 29 Aug 2025 06:12:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08FB584007
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756447972;
	bh=DJyOgyUdbT6ujHPifzeqoRfRS47BWo+EnNUBCtGDfl8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=li6MaCbNcZCC5MAlNUcWvlFv4jDvnZ62Sr3spOkICLazKVYvWgEODInCoqpVPgRgB
	 KRLGirExl4R9yazEY+kiIH1UesFZgnHp7W8b9G7deoibEnYCoLHGO5WUlFzwRThYlq
	 p9tgpI4SGgg9vFbZTi80QVvu1sa8YqWqX7kPnYDw4DpMoQnV2VUvQ+tG3WHfmcJV60
	 eajP+8RiGDE/LuUoZWWzG/nPvoWm7aD6/BtSbpiNUAImMuCFz9BEG0upkaHmADMyuH
	 P86ZMezi6cH93OXlE4t0zrKT9B0Z2mityrd8Xdw71X2IjgHClNEH24cln4nXamTob+
	 cyaNGSpmnbnZg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 08FB584007;
	Fri, 29 Aug 2025 06:12:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4DAA069
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 06:12:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4019241437
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 06:12:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kjuExDhd2CQS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Aug 2025 06:12:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3176241434
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3176241434
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3176241434
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 06:12:48 +0000 (UTC)
X-CSE-ConnectionGUID: 3ZFyLtq4R32NQiuW+3O9+Q==
X-CSE-MsgGUID: R3QlzhtCTf6UNvGF7LeMNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11536"; a="76328277"
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="76328277"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 23:12:42 -0700
X-CSE-ConnectionGUID: 5LAlchdLSgyW7CCJ0aFzTg==
X-CSE-MsgGUID: u+Exi9X0RBmRYIGDi8APsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="170690337"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 23:12:42 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 23:12:40 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 28 Aug 2025 23:12:40 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.56) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 23:12:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vwAXBeDSSlRZyqi7mSh09qXaqCJc8BKroMaYgMbUfw+gc9hggZ7qlj/FOGhelWwG/0TJc7KYH4/ItfVjteuiYFVQswrge4YsTGktGrT+/uP5E8mHA3mLh96QlypE9gGT8ATikaxDJB92NhMMgkP2Bdy/9JFaiSIerA9PF85OGmxgqps+Dd34ET0v2NevssXHuJYy72ykMe2CfajeTwh69LoYcCRnZf+DLUnRWkTbmJ/IRVTOJF4vw6L2+LbMOUUzDW/Y+8kutt5/VeFDiUyhWyh4f/85tVceVfpBgxkmtNAttVxt5LvDIyVwYfS7YXvhKfvVrS90G160XDAJ4RaikA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DJyOgyUdbT6ujHPifzeqoRfRS47BWo+EnNUBCtGDfl8=;
 b=aqVDZ7myruaP/zHXXIHLMi4LYt+XK4NiyqY6vshCGWRHKJ+B7xgFRhyp4c86yRDlCqVXb4WJlY9yas3tFF1+XhnUR+TS4fdIV7XZegl7IDleCMeXBZwCuW6oKV5v8OIQYFQOqhFCfSQZYhoeeuAtyi9jlcV2KcQrODE4KcHlc66Iv15OvfXwxAWaDRf3Kzg89mEpsyBKJWnXCu2CwAc7eqWFxbZjSivdKryL8ZuzUEW9uTvoQmnh07WTvM/am+jSYiPRg5rH4hGGhXiiStDH3Ed9F9RtMI3KS+7SxPQ5hKMxLd4CKn11ogEzeLmFHOPpNZVetVpjgFmxJTf+Kgousg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by CO1PR11MB4883.namprd11.prod.outlook.com (2603:10b6:303:9b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.15; Fri, 29 Aug
 2025 06:12:35 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9052.019; Fri, 29 Aug 2025
 06:12:35 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Kubiak, Michal" <michal.kubiak@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "pmenzel@molgen.mpg.de"
 <pmenzel@molgen.mpg.de>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kubiak, Michal" <michal.kubiak@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 3/3] ice: switch to Page
 Pool
Thread-Index: AQHcCH018SVQw+pl+0yQh7oVm5jvCbR5Re9w
Date: Fri, 29 Aug 2025 06:12:34 +0000
Message-ID: <IA1PR11MB62411902DEDC6ED33AC541F48B3AA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250808155659.1053560-1-michal.kubiak@intel.com>
 <20250808155659.1053560-4-michal.kubiak@intel.com>
In-Reply-To: <20250808155659.1053560-4-michal.kubiak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|CO1PR11MB4883:EE_
x-ms-office365-filtering-correlation-id: 9f1c08ec-bfd7-4487-9433-08dde6c30be4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?hh/ea7Mvpv3fhIxBUUBnvbSZmQZs3NpyJPYHPNbxj3joJYSy7SEUwxABmymK?=
 =?us-ascii?Q?f1qukxslub4p2VgYTP14zqr8cP1ewHg9eL8xWR0wZ7xDBRK5MdEZBErsDtEX?=
 =?us-ascii?Q?Q6MqRgo5lZ2iWGpg+4ryhXkP152hRq/mNkPJPtggFpbgkYUFgRkXbzzptoyc?=
 =?us-ascii?Q?DnDNscs7PcSa7MLWfQ9CI0f8CJF6LsZIu1GHy1BpfNwlnxBc+PkyT1nRHqff?=
 =?us-ascii?Q?7azKGO7hzUGWme4sMLM1zM+q/QOT52atp8JdCJqkQwwRGAUZlWZz7JPpK1T6?=
 =?us-ascii?Q?nHIRoXKQXeBVI/qS7bEoX0JHT3A8BjpptuLPR+X7Xdf4cq7s0F7elMv+a2EE?=
 =?us-ascii?Q?EfX1+KYU5wn5SECmgQluDoxSjihfoFQBjbMWAJyIkd6mBJbEGzxSyy+xvWKr?=
 =?us-ascii?Q?sF0okMgeBr0RxN6R0yfMQTcpgzEFBPPcKV7TMPLrBFSGSYg5pWM1/NCYoh2/?=
 =?us-ascii?Q?6gY+hfub1qUeM7+UK7PXyxMLszFSzBkl6TeEFJvk44zeoYpP213+9YTOGSfu?=
 =?us-ascii?Q?2C4OdAVwXSKf67b+afaAB0QjwzbdlN0/Z+WJpL3rzlWpl8EKLsLcrU+QYugM?=
 =?us-ascii?Q?Sr09V7ht86CuWk/KHY4pIiIo3W+LpOW23gV/tLCmJXgnXUH4TAy7gIc/SDC9?=
 =?us-ascii?Q?rbGbi1ogCIPVm0wko2GV2TpFcFq0wKV2FwIZhkpll/94MZIrVlvM6h2jlGhl?=
 =?us-ascii?Q?onY+K1LlVzL+mj5aSsjpxpCqTW298LyL/ahmtFa7qvA4uCJEpjEfuyc2qf+Q?=
 =?us-ascii?Q?HNe2YKuvlekLegKwodmrFK4JSby4D8HxDbCtnWiwb7wSYHjyLj1VYyfvBUvf?=
 =?us-ascii?Q?V9b3lCy4WhadAIwExTkzO17WaAe7PlO/Y2c2MPuaTKBbZ0p17sI9rLOjBIhr?=
 =?us-ascii?Q?iJcW8B0lLjZrediK2vH57OiACnBcl6fK+5kPKN8oyN2RhwT5M2GfhnwHmf4N?=
 =?us-ascii?Q?3z2nVPxqy3Z8TyaFx/ZyldkWgt4r2YvNmmbXCOA8iXQ9YCaNF0pYOtM0PwfR?=
 =?us-ascii?Q?zTTguRtvUBHd9tw3OieNyA3FHwfeWBgmvvjNapofU6jFkMqgmxkGYJKYYs82?=
 =?us-ascii?Q?bZioEoh0Xyjj0I0cB/pTcpJ0w1SKytA5rgUqPVDseFjYpmoXcpMIFhqjMT/B?=
 =?us-ascii?Q?YGWeQip/emGP3ogGbwO6kt4zj5b9b39a/u7vp4pEpJtg2aKfoTxDrXG41Dts?=
 =?us-ascii?Q?3Vb/xpC2hnTPwaaohJ/U0wglWVZpIKDLNYeOTY75JDdvFVf2ScJNsPmFgdA6?=
 =?us-ascii?Q?lrLEJeNZIhzGbrIvpzuh8et6CebFmHgnJ0w3bpf/Tfvo92olzSpK1pLsRDxl?=
 =?us-ascii?Q?fzkroXsjbzxs8enhgCvPtmPUQzH+7CMl6lOpUeHMFNyKHGTpVIGZv1hI1UmA?=
 =?us-ascii?Q?8DJ9RRWeub0+Hdr7WQHY0f59ZEaRf4nTl6gWCiGYF2uD7RKkHc/7KRSqTy8k?=
 =?us-ascii?Q?O082ti0pBN8JeQb+XfGqtqfHTDKmGibGO05LxidcmPJp9duel/hUvnbEO+uB?=
 =?us-ascii?Q?OQQyx3BtOPWU32I=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8d6XbH8VVf+qVno+bpTC6GF4RF+PvKFjyx1IZmKjCvUi55fGGazdwlB+T2P/?=
 =?us-ascii?Q?r48AVefl0wIDW6REZ2VLa84pd9CmL/cGwu3DvvRh4CZzJAs9t82K8aPN4k4X?=
 =?us-ascii?Q?3IgksyE0BpgAZJblP5d4xkWYbaaf7+ywD5h0yNp2qFXMa7nOvUYqNWabPrX7?=
 =?us-ascii?Q?1J+DrsqjTCS+//F7ELyHqOsJvUOJ8cYKPiP1td/zdgPMXqYi64514DpHz560?=
 =?us-ascii?Q?P4hpHFImclQpqtbfKaborafX7pJjiwJqahb6L0+pXDidmKbANM+DcmBrQukG?=
 =?us-ascii?Q?VirqZ4kQfFCdZkhC+ag/+CYDKX9s036P6eCh8CHO7jNo9OZ+MsNzJMPWFhMV?=
 =?us-ascii?Q?iNdiEFMpuxiKBd4soXnT/lGkADkl/NJxNO9wevy7+uccryRjcqDHr6NA7gBT?=
 =?us-ascii?Q?fSMeeF71Mqi5xarXYzeOJrDLAQ3CvwxmhsS+87Cf0ZpHZjdy3syhkrWfO7HA?=
 =?us-ascii?Q?lG9NlkJDKy6wPgYADVC01r8OVcIesDkK8b+DqSIOZ9TDHIT2OpJATGelkUYl?=
 =?us-ascii?Q?mAwISUA7VtxgG636LT+e0WOKB6BPmODLVLKmJHqcOr9nbLbIzLx0dQhZzkkM?=
 =?us-ascii?Q?Ch/lqWkkj+xlYq85jMYzkLJSBcSEBSBUzTXsBMHtayunSdb8NasoWAkfJwI0?=
 =?us-ascii?Q?5GggMWDVxGyKhsErChVVOmKLlU34c2sEBtWtaFLSgaC/CCTd+QDacDZBFx88?=
 =?us-ascii?Q?GAcnONVdMgZWu4V593O+8wSyOBUAwJC3er5/tsEqFJTkSZwlqD2IGDnm+jBD?=
 =?us-ascii?Q?PkPxcEAYVvJvZPkUNxoiaJnSxhZB5HMiM2hwJ5P9oNMt8NEjP25A6ykCspH5?=
 =?us-ascii?Q?DoBmNEqV4U7+jgqJWlMKGiaOncC2xR1qA3BY9ZcGCoGFxyYObpmDrGoG3sPv?=
 =?us-ascii?Q?I8gjVCEjUPIGDnB5loi+6iHxNLOTkZweUT0n6qhmWzpG4fBpnDSZM6mcAZQY?=
 =?us-ascii?Q?AfbewU4W2INqt2Se+lLoXPpg+GmI8feC4rAdCr8wlsOqOFaskX0XvQ3aj2Qc?=
 =?us-ascii?Q?GOypWAE0F7ormHP8VHTfXi9A8Ic1nWoRirkCS0NsIs3FL8kDbPvZII8NKvHL?=
 =?us-ascii?Q?WmFh4pWKfGbd31EgeTQK/GZTBd9OsOTe6EBtByZxRXhrKifWGjdm7WgAfG2c?=
 =?us-ascii?Q?uJgqxQoyq5cNsEVSPepU7gBq7B+Gj6Pg/CwUON50QE1dFMGHlpOMJrlqwIf0?=
 =?us-ascii?Q?hwtMZhK5LKkLkmukhFbsmnDuAJfwfy7eppJLdS2O1+PmzNzPHm8xqGEOht8u?=
 =?us-ascii?Q?BHfVXeFoz6H+VayhZXFKvg48DT8++mck10vBYqvAbjGF2nhUXdDRGIvhx9Nt?=
 =?us-ascii?Q?5w3+CkFO6UjTp29wGrSZ/NAS3ppzinA2orASnBajG2Nm6VpdSCzXCB9tveP/?=
 =?us-ascii?Q?YoGojy00kdzKvrL/yJbdE1zN7YzCow2q3rvPRg37nirME5Uz+PCuxkwZsd8L?=
 =?us-ascii?Q?1bG5NEDopmFgme62pwnCoh89p+Hv7wyEABiuXvTwyXjxQR462mRl6sKlG7s+?=
 =?us-ascii?Q?NciutzEPPnFQcIjsjtxCAjfWBqSR9mjTVAmMXvAvhKbr80JB+qFbLFNWcLx+?=
 =?us-ascii?Q?/Q5o3xvsuGIVOsoQPRU1bSbv+q2wg98gnvz4Ho90?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f1c08ec-bfd7-4487-9433-08dde6c30be4
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2025 06:12:34.8405 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P06MYQWdzcyh/hjyvryjIUV/tTzxwVePvXTRnp0cHcxxWJtUrFPXvTIAs74J/AVxXpIZowxZ5DUR0VYW3Y+1oQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4883
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756447969; x=1787983969;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9wF8KlU5FK2pG+RpfzIIB5IrSReA51ExQggRWjOBhCM=;
 b=gmCp5fhmPe2xTNdLMbKoXGFiRot9Fzj5CfrIUTGLZXKQKkxYHKlefVma
 xsl1CPb++sC0L/+Qnul1N06R8jYCMLGTXpr7nIiBgrvUJp3NEjZ4Z3RIs
 UGNm2ouzKxabAJ4b0R2i26O3o0rji+R0xW6zR6DJvsnyY03JUJlNy4OEe
 3Ov8lWmkx3dBh72HNjhVT2bMw/0PweID4k05XE7Wnp1a5by2NokKs+KBK
 rqFMMUuRh6wUZGyrB0y/IVuNODxZRkJ0e/4MQUMpCzVqRgO++7vJMX7CI
 PJeXNtHdj37QpuSdrNr/EOz1tB8OOnsu9nrmceYHMpdICwGVL4BB/zqzd
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gmCp5fhm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/3] ice: switch to Page
 Pool
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal Kubiak
> Sent: 08 August 2025 21:27
> To: intel-wired-lan@lists.osuosl.org
> Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>; Lobakin, Aleksand=
er <aleksander.lobakin@intel.com>; Keller, Jacob E <jacob.e.keller@intel.co=
m>; Zaremba, Larysa <larysa.zaremba@intel.com>; netdev@vger.kernel.org; Kit=
szel, Przemyslaw <przemyslaw.kitszel@intel.com>; pmenzel@molgen.mpg.de; Ngu=
yen, Anthony L <anthony.l.nguyen@intel.com>; Kubiak, Michal <michal.kubiak@=
intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/3] ice: switch to Page Po=
ol
>
> This patch completes the transition of the ice driver to use the Page Poo=
l and libeth APIs, following the same direction as commit 5fa4caff59f2
> ("iavf: switch to Page Pool"). With the legacy page splitting and recycli=
ng logic already removed, the driver is now in a clean state to adopt the m=
odern memory model.
>=20
> The Page Pool integration simplifies buffer management by offloading DMA =
mapping and recycling to the core infrastructure. This eliminates the need =
for driver-specific handling of headroom, buffer sizing, and page order. Th=
e libeth helper is used for CPU-side processing, while DMA-for-device is ha=
ndled by the Page Pool core.
>
> Additionally, this patch extends the conversion to cover XDP support.
> The driver now uses libeth_xdp helpers for Rx buffer processing, and opti=
mizes XDP_TX by skipping per-frame DMA mapping. Instead, all buffers are ma=
pped as bi-directional up front, leveraging Page Pool's lifecycle managemen=
t. This significantly reduces overhead in virtualized environments.
>
> Performance observations:
> - In typical scenarios (netperf, XDP_PASS, XDP_DROP), performance remains
>  on par with the previous implementation.
> - In XDP_TX mode:
>  * With IOMMU enabled, performance improves dramatically - over 5x
>    increase - due to reduced DMA mapping overhead and better memory reuse=
.
>  * With IOMMU disabled, performance remains comparable to the previous
>    implementation, with no significant changes observed.
>
> This change is also a step toward a more modular and unified XDP implemen=
tation across Intel Ethernet drivers, aligning with ongoing efforts to cons=
olidate and streamline feature support.
>
> Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> ---
> drivers/net/ethernet/intel/Kconfig            |   1 +
> drivers/net/ethernet/intel/ice/ice_base.c     |  85 ++--
> drivers/net/ethernet/intel/ice/ice_ethtool.c  |  17 +-
> drivers/net/ethernet/intel/ice/ice_lib.c      |   1 -
> drivers/net/ethernet/intel/ice/ice_main.c     |  10 +-
> drivers/net/ethernet/intel/ice/ice_txrx.c     | 443 +++---------------
> drivers/net/ethernet/intel/ice/ice_txrx.h     |  33 +-
> drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  65 ++-
> drivers/net/ethernet/intel/ice/ice_txrx_lib.h |   9 -
> drivers/net/ethernet/intel/ice/ice_xsk.c      |  76 +--
> drivers/net/ethernet/intel/ice/ice_xsk.h      |   6 +-
> 11 files changed, 200 insertions(+), 546 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
