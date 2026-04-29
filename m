Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AHCUAP/M8WlrkgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 11:18:55 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 440C4491BC8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 11:18:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 83214613F4;
	Wed, 29 Apr 2026 09:18:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2yd3OzPYEhHs; Wed, 29 Apr 2026 09:18:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CEB8D613FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777454331;
	bh=KQ3n5EYi5KT5AOicd2NsZuCygeHw/XpcWl1MIOfFFTQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Tp/1asCVGApqjaCmrsWkUGeMRWScAM7FwqouD2j7Y8Ba9jusgvDN02LdvN6jyMXLf
	 ZfWGd34wkR+bicp4kZb7HeVrD5sI8F0E8Tu4y60Wl9nRyh4V1n5PcbDNBzHMW3kD8U
	 OrgI55kh0jbWWBLMt68SPMHVpXa03di7N3wKxNkJj26x/eBixXyjnXOI375CZu/dGp
	 uEdeBTjNmwLAM2QCXSP/CfmrIu5qM/sCpQ1G+Z/USas0K0MgW42GzE0p7cyRyvabDl
	 D4hHNcDdJ7LrhqRiHfarXDCcqE8MkFzUYkNbtdEia+GRY5a14Z/3j3D0r5IQxpzTmt
	 udQViac7qNy1g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CEB8D613FE;
	Wed, 29 Apr 2026 09:18:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5F3DB231
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 09:18:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5C8FA8432B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 09:18:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NkpGxT0zoA50 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Apr 2026 09:18:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7A6098432A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A6098432A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7A6098432A
 for <intel-wired-lan@osuosl.org>; Wed, 29 Apr 2026 09:18:48 +0000 (UTC)
X-CSE-ConnectionGUID: wTmpLSJIRgeHiaVq9O7vqQ==
X-CSE-MsgGUID: qzGgq/0NTiSZ4tMo0FXM7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="78255030"
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="78255030"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 02:18:48 -0700
X-CSE-ConnectionGUID: wmIS1McHQ1eE/BaQoVeKCg==
X-CSE-MsgGUID: 400PGg00TZmha/8PchA4EQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="231072659"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 02:18:45 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 02:18:45 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 29 Apr 2026 02:18:45 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.2) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 02:18:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jOF/VTJrnoNYgQ8Eck0asJ79xxK3Pj2W7OhAEjmw+SgrpY8Dh4uh55pCYnXqLSDPfwYUUUqPZI8Tfu6jFpVi2zIxXsMKPeJ4chIXXR5RAYi45A7a471gOArSOQv8dqWhL+TLTORFAb2Te8LVlyO9WEuoQ7RQHD/6uNPBWX3XAeDINRhi+bIn11XmgR1UvnqkdypeMKYB6dKeceDhTwxH/7s1me/k1CaSeAGQDHf3T05YlnLZHApX8UnWEcohe5ken8a+BSYCGsfUZZNCoRman7wgz/gRk0C0XvedKuX+BtASJzKN9iEAm1OpiHJ3ZNo2lK9G/pxCgFdHv008MvbXug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KQ3n5EYi5KT5AOicd2NsZuCygeHw/XpcWl1MIOfFFTQ=;
 b=neizzewCnRpnfZ/HPw24nUlQTRn4sFW0G3Xw6TpPa4yz7y0gHAsdEatUHgnccR/sqr8zTkWompymw/oWecNiW4f+7etcv2i89/QikdDgl2dcLM7pT3DppoUD+mKiF471odKKBbSRQWVmkrxvFb9XnN7++oeWKWN578n+6NvMSGp/Ue0d6uoTxXWjH2QNqWXOPQ9btFfZmQrm14cYjnDaCuU3b4JbtVb0mHAAirWdNwi59qPM0ecorvqSXl6DendOYo53UTs9pF8soCJucDrMP5cKWjLENoVKCz9w906m9jKYkoGyqwOTOXPfBuoCLRXvmr1ethZER6CRP4aKZ7fFjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by BL1PR11MB5303.namprd11.prod.outlook.com (2603:10b6:208:31b::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.20; Wed, 29 Apr
 2026 09:18:41 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9870.013; Wed, 29 Apr 2026
 09:18:41 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Matt Vollrath <tactii@gmail.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
CC: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [PATCH iwl-next v3] e1000e: Avoid DMA re-mapping on RX copybreak
Thread-Index: AQHc13mpGZCrMv4CmUyGLNBxuNpCXrX1w1Fw
Date: Wed, 29 Apr 2026 09:18:41 +0000
Message-ID: <IA3PR11MB8986883A02B619BAA6FF478FE5342@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260429014325.19136-1-tactii@gmail.com>
In-Reply-To: <20260429014325.19136-1-tactii@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|BL1PR11MB5303:EE_
x-ms-office365-filtering-correlation-id: b3686022-d02e-4095-5e3b-08dea5d04ddc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003|38070700021;
x-microsoft-antispam-message-info: cl8aW51OYH+y6YKDjaSvyiZQbeoYJpO26BaHXV/NCworBKT+yAzyuGNXxvLE8S7n/hDQS9Ghved9QYUTT9mLt8AcArQYPNUfaYOT6uA9JfVZjDUK3nnYGy7IaYd99DHuZ/JFJaqZiZCgfBSGjRolnx1Rj26L7EwSQGZm07wUGS77euYKUU/KmPhr+z2E0EF71Gz/PDzhwmXrxlFCPejXSpUxPSIuFQqNwReBWI+LzmvEKdzRvPRx/OsYWDPva6a/N8HkYWe/PkIGl17NuD+3walsPzR/laM6H49HL3oBsCYFun62xcSPTEGc9e3MSJ56odtxZIBBM17pK8Izg9fYYq2M2RyRArG5tIgOa0hRL43KaQz7R8NVlyyCkPinf3yseXLTHKKx1Hex16FzYCGJQOcL2Lnq1pWi79wo7ond0tdq/jx4uJ4fkLFjZ/dmDh6tPBFTVuZy2MqlN1uJtHKiHkjam4errVzw1263Ljh51roSp+MDA4lyGAi2cEJn++15MgsDh0Dwj0h5GzSS+2jfPvlHvCK4lpAeLjvcDgYvXo6Xb/ZwYZxbhRrZmfHf9v//3EAwZX9up88LWdJJxqJMpHzK3wmkcRyvHUIORhbs+BzG0O14LbYgea083VYiYQfg62LzoB0/CRXYpovW/LjxbVLrETvrbf5zItneZ6eYjibim38H1HrZ2iT1WaYxL7KPyUMYfOM/q4+ahltic9IkhD2nDkiM2aZ0p8HCSraJqkg/3W6xMKF6tCxVc/wPc6af/FE6sGMT5WwEIv77sYJLErhuMpd03Fbod9tHYVdu8hg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qILf5s+KQtDUpHblPCqq+X4hcbnNd/1gZc0gnctYm01hyj3D8mNZ+2aGa8dr?=
 =?us-ascii?Q?wZgBUROVcPJvcnX60L4SxdjOSoyNB4/skXC+CemVUVNefxXWmcShDqYH/WbO?=
 =?us-ascii?Q?y8UXTXLHvbJfnCgebdrYDe9cYKDN2y3OuYs1QiwDvQn2WluDDETbp/sdC17n?=
 =?us-ascii?Q?XqwLvWUqjDGnuR8/3nfVM1MJ3yWlSYfX7mStjiTaRzVOnY2IKDsV4XED/bSR?=
 =?us-ascii?Q?Y0jeq1u1OB8dgDDN3D2smoEhogfSli7TyTi0Uw0V0iKhSp6roh/pYMLGbMhH?=
 =?us-ascii?Q?gX6+z4OpFgTGuMF5G9hoUNLzBGms67aRPvb2LYT1Hh/iRRgATje8po3n8skx?=
 =?us-ascii?Q?6qPUAmm/7KL/79+P7dh5bo4D6WTZW08DUAlDbS5FdaoETykhmnyAqOL4ARDw?=
 =?us-ascii?Q?ux1DA6syKT0NCins1/LKo3ONKxX3FB3sRaOKnQiRXeWX8U+N88wcOO7KHsXj?=
 =?us-ascii?Q?6gbiW/zKC6Rv5QDi2OHnEVW0erH+qQOr9rnXN09kjcHkHWjMJmNP2UyJIIwg?=
 =?us-ascii?Q?8mLcKm5mASr9xfd2OlpZfSSQqDye3FnGrVSGNBjpJwER/90OM6mJshMDaHWt?=
 =?us-ascii?Q?AznjedrlbJFWE4ePnkhYPqqii5KSnERwN/O/h/PatadmzESvDXHkVPWCsWrJ?=
 =?us-ascii?Q?HV2zrxdiPIO5COjVqRMQwtIzBIbdq5E7OqCu3rE/47HTYtereHBpqmHTrd1w?=
 =?us-ascii?Q?CLwN8ELKmuiI1ROsMKemq19+Txn5Q2TiuxN/YUnz4WXkc0PDFv6K3i8uE42A?=
 =?us-ascii?Q?tAr9a3xRbElpNG9UuxhRj4VQ0VvRUT7aek1cg9OfARppUl+uq/Hu6SdxSX7s?=
 =?us-ascii?Q?fCJDTxlxTyYwnhblmtE+9s3exDHv1othYCfyU4jLqF9qBkaQ3CbMYhQix5xV?=
 =?us-ascii?Q?g+6SDUfDwWnN7c4axZloJfk+Gaf2obwg1tZP2rfITe+KLyAUDdIgo6BlWyGz?=
 =?us-ascii?Q?+9YDOchYqfs05W+trvsCDoqy3YjvgSQWDQpNP+AucLgTtPHT0bWUdrX3MT6S?=
 =?us-ascii?Q?+3EXjvaE3W/kqTi5dfQMmipUEng3ZqfMCtsa0Q/nULVelWCsBdbxeBpp6WP4?=
 =?us-ascii?Q?pBn0BuUNCZCK49tu7uKFDIzkKbrzD2SqxSyQbydBmp9sW9nZFZ/tQJ3zjPP7?=
 =?us-ascii?Q?bIfFGhq6b0PxASQSCez7jpyOOWrp3wivUD1r7+wZgkqIEoAawXp/0PyBZWkA?=
 =?us-ascii?Q?KhtHffGGKcYyPtyWu7Khma1Stou5q5c0H+7qYHotB/CTsXqSOjDqCiolbt6/?=
 =?us-ascii?Q?ajCt2zHBGS9wGb8sIo9eUw8R1s2R1vephTepFK+UinDdjnvNit/DCAoh9k8X?=
 =?us-ascii?Q?4sdwP4oKqOGI+Xcb+8FrFFsjg4RLNg72xRbxuN20XjrRS26CWPBa8AYjJ8F7?=
 =?us-ascii?Q?M/btNzIdLbn5Ou3EWLw0I91opqf3HlVCAq4PzcjYveYnvbFbQpbmGdU5fsPa?=
 =?us-ascii?Q?ovd1SER+eq7fpG4wUTYbu5IZKN7cWsBYKoR+2LB2EsFL2fpFFtLuSHhWg6F0?=
 =?us-ascii?Q?/7aAURZRye28WRStmImDoKzY6bTMK0eGcRMKRN+LN6gUJg5Cs6v12aZrC73x?=
 =?us-ascii?Q?Ngy/BNsrOFveWwuEwcbJ4X8tGohjjnQXxrM8Fa0Bp0+z/EBUi/gg0CwBTsYw?=
 =?us-ascii?Q?pjAjF7T6TM6emHvqqY09T/sUa5/uwL7+UuRiGOtBqK+gU2HkNdvZlW0myJiu?=
 =?us-ascii?Q?Yx7OAQPijz99Jfx21IfmA609u6XZs1OO8iybcKOmFAe0INDhgcTC+62GZm1Q?=
 =?us-ascii?Q?+2a+wwlb6lk7IIYVoUN9wOkRAHL3Zmg=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: FSdG8hHVdmCKbA9e1e4x3zSm4FlJdeXrFbje+0W0vHeqOd5EFQTK/2mTymTINbNfL000MmL7jPwKpVXhEEVPDxmLAu2TqtZEmUMdRithloD/Jr4FbH6HbzR6OK0gBWkNN2A5/oppULZ6Eq3BKtUlKpF5hDCNXNkUM/0oELa6Bi/Z9o0eLaeBAo8LWqdIuShRjNBWMDw+ak4BJAWYUQQi36VZj/wMLkYWX4Z+8wPKuE328G7fEKZDjXpGHbbWJ9t2Mc+fcT3cXFuxkHLpuphWscExNym9JpRhHLtiVmr3qEMohLiiKHHdmppKees1JLVcjwmpZwGLIkex78Bu+5oeZw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3686022-d02e-4095-5e3b-08dea5d04ddc
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2026 09:18:41.1203 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ip8NWmBFKc43M5HCugVQA5K6GQBK+pKNoaY2YDQkLkmZfUUtzcepo3lA29+8wav56nEoonKqWZzb0RkurNantZUIE2vrtlDeoDogQBHqJek=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5303
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777454329; x=1808990329;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sICU8YS8e/ZECNTBdRtm9vErF5kE2sbGi1mdEyJTU8w=;
 b=Lmh2vPAmYjXDvqGrUG23gOfnZ67wEcWjzCdD4W1UpFABVc62skLIiYnL
 3PpxjvwplJ7PqBf/5+UEIj5rh0Grbd+rKQCuWwOMWCJogJ5rBiruY2IV6
 yZNo+/CjYosQzubwhX3gcGN5w8CNLqWv/kxLNz+G+MDpAD+C5Fd05XNem
 fkRqDBtdnLYhDaDghq9UGn5fh9wZ/u5yoAvyWUkluBbzwMMml2xBlWWZt
 G3VFp1m1ZD9ODlXNM2ckc+anOyH+JFgxPSauNA7ju7fxJbQ35nNfV3gLw
 U2xCzYHgd3s1K0ZMLA9xvE9yZtiPGT5OiBywYdHVfBXfEntSoZHC+PJZP
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Lmh2vPAm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] e1000e: Avoid DMA
 re-mapping on RX copybreak
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
X-Rspamd-Queue-Id: 440C4491BC8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:tactii@gmail.com,m:intel-wired-lan@osuosl.org,m:pmenzel@molgen.mpg.de,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,osuosl.org:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid]



> -----Original Message-----
> From: Matt Vollrath <tactii@gmail.com>
> Sent: Wednesday, April 29, 2026 3:43 AM
> To: intel-wired-lan@osuosl.org
> Cc: Matt Vollrath <tactii@gmail.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Paul Menzel <pmenzel@molgen.mpg.de>
> Subject: [PATCH iwl-next v3] e1000e: Avoid DMA re-mapping on RX
> copybreak
>=20
> This patch factors out DMA re-mapping for skbs which were recycled in
> the RX path due to copybreak or errors. There is only one path out of
> the e1000_clean_rx_irq() loop where the skb is consumed and DMA needs
> to be re-mapped, so don't unmap it before checking the conditions.
>=20
> The buffer allocation loop is adjusted to not assume that DMA is
> unmapped, handling mapping errors gracefully.
>=20
> On systems with IOMMU enabled, the cost of re-mapping DMA is greater
> than the cost of copying data out of the ring buffer. When I use this
> patch and configure e1000e with copybreak=3D2048, my system with IOMMU
> completes RX roughly twice as fast under load.
>=20
> Informal performance comparisons were based on Asus Gryphon Z97 which
> includes an I218-V and with a Xeon E3-1240 v3 in the socket.
> ktime_get() measurement was injected into e1000e_poll() wrapping the
> adapter->clean_rx() call. The total time spent in clean_rx() was
> divided
> by work_done to print the average time spent per buffer. iperf3 -R was
> used to saturate the RX path and awk was used for statistics. Control
> revision was set to 7.1-rc1 because iwl-next hadn't been updated yet.
>=20
>   rev     | iommu | copybreak | samples | mean (ns) |   stdev
>   7.1-rc1 |   off |         0 |    4748 |    453.72 |  155.82
>   7.1-rc1 |   off |      2048 |    4743 |    554.83 |  103.67
>   7.1-rc1 |    on |         0 |    4751 |   1139.22 |  150.56
> * 7.1-rc1 |    on |      2048 |    4737 |   1267.02 |  184.62
>    +patch |   off |         0 |    4739 |    456.30 |  146.33
>    +patch |   off |      2048 |    4739 |    538.56 |  132.97
>    +patch |    on |         0 |    4769 |   1165.97 |  140.19
> *  +patch |    on |      2048 |    4745 |    562.25 |  171.80
>=20
> No surprises here, IOMMU DMA ops are known to be expensive. For most
> users the kernel default is iommu=3Don and driver default is
> copybreak=3D256, so unless the workload is small packets, some tuning of
> either knob would be needed to see the full benefit of this change.
>=20
> The kludge of unconditional unmapping has existed since this driver
> was introduced in 2007[1], inherited from the e1000 driver which has
> since factored it out[2]. IOMMU tech was new at the time.
>=20
> [1] Commit bc7f75fa9788 ("[E1000E]: New pci-express e1000 driver
> (currently for ICH9 devices only)") [2] Commit 2b294b18689c ("e1000:
> perform copybreak ahead of DMA unmap")
>=20
> Assisted-by: Claude:claude-4-7-opus
> Signed-off-by: Matt Vollrath <tactii@gmail.com>
> ---
> v3:
> * refactor unmapping bypass, use goto instead of redundant branch
> * remove Aleksandr's sign-off due to logic change
> * benchmark details
> * cite historic commits
> v2:
> * proofread description with Aleksandr
> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c | 32 ++++++++++++++-------
> -
>  1 file changed, 21 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c
> b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 7ce0cc8ab8f4..62bf85c768d6 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -663,6 +663,8 @@ static void e1000_alloc_rx_buffers(struct
> e1000_ring *rx_ring,
>  		skb =3D buffer_info->skb;
>  		if (skb) {
>  			skb_trim(skb, 0);
> +			if (likely(buffer_info->dma))
> +				goto write_desc;
>  			goto map_skb;
>  		}
>=20
> @@ -680,10 +682,12 @@ static void e1000_alloc_rx_buffers(struct
> e1000_ring *rx_ring,
>  						  DMA_FROM_DEVICE);
>  		if (dma_mapping_error(&pdev->dev, buffer_info->dma)) {
>  			dev_err(&pdev->dev, "Rx DMA map failed\n");
> +			buffer_info->dma =3D 0;
>  			adapter->rx_dma_failed++;
>  			break;
>  		}
>=20
> +write_desc:
>  		rx_desc =3D E1000_RX_DESC_EXT(*rx_ring, i);
>  		rx_desc->read.buffer_addr =3D cpu_to_le64(buffer_info-
> >dma);
>=20
> @@ -941,7 +945,6 @@ static bool e1000_clean_rx_irq(struct e1000_ring
> *rx_ring, int *work_done,
>  		dma_rmb();	/* read descriptor and rx_buffer_info after
> status DD */
>=20
>  		skb =3D buffer_info->skb;
> -		buffer_info->skb =3D NULL;
>=20
>  		prefetch(skb->data - NET_IP_ALIGN);
>=20
> @@ -955,9 +958,6 @@ static bool e1000_clean_rx_irq(struct e1000_ring
> *rx_ring, int *work_done,
>=20
>  		cleaned =3D true;
>  		cleaned_count++;
> -		dma_unmap_single(&pdev->dev, buffer_info->dma,
> -				 adapter->rx_buffer_len, DMA_FROM_DEVICE);
> -		buffer_info->dma =3D 0;
>=20
>  		length =3D le16_to_cpu(rx_desc->wb.upper.length);
>=20
> @@ -973,8 +973,6 @@ static bool e1000_clean_rx_irq(struct e1000_ring
> *rx_ring, int *work_done,
>  		if (adapter->flags2 & FLAG2_IS_DISCARDING) {
>  			/* All receives must fit into a single buffer */
>  			e_dbg("Receive packet consumed multiple
> buffers\n");
> -			/* recycle */
> -			buffer_info->skb =3D skb;
>  			if (staterr & E1000_RXD_STAT_EOP)
>  				adapter->flags2 &=3D ~FLAG2_IS_DISCARDING;
>  			goto next_desc;
> @@ -982,8 +980,6 @@ static bool e1000_clean_rx_irq(struct e1000_ring
> *rx_ring, int *work_done,
>=20
>  		if (unlikely((staterr & E1000_RXDEXT_ERR_FRAME_ERR_MASK)
> &&
>  			     !(netdev->features & NETIF_F_RXALL))) {
> -			/* recycle */
> -			buffer_info->skb =3D skb;
>  			goto next_desc;
>  		}
>=20
> @@ -1010,19 +1006,33 @@ static bool e1000_clean_rx_irq(struct
> e1000_ring *rx_ring, int *work_done,
>  			struct sk_buff *new_skb =3D
>  				napi_alloc_skb(&adapter->napi, length);
>  			if (new_skb) {
> +				dma_sync_single_for_cpu(&pdev->dev,
> +							buffer_info->dma,
> +							adapter-
> >rx_buffer_len,
> +							DMA_FROM_DEVICE);
>  				skb_copy_to_linear_data_offset(new_skb,
>  							       -NET_IP_ALIGN,
>  							       (skb->data -
>  								NET_IP_ALIGN),
>  							       (length +
>  								NET_IP_ALIGN));
> -				/* save the skb in buffer_info as good */
> -				buffer_info->skb =3D skb;
> +				dma_sync_single_for_device(&pdev->dev,
> +							   buffer_info->dma,
> +							   adapter-
> >rx_buffer_len,
> +							   DMA_FROM_DEVICE);
>  				skb =3D new_skb;
> +				goto copybreak_done;
>  			}
>  			/* else just continue with the old one */
>  		}
> -		/* end copybreak code */
> +
> +		buffer_info->skb =3D NULL;
> +		dma_unmap_single(&pdev->dev, buffer_info->dma,
> +				 adapter->rx_buffer_len,
> +				 DMA_FROM_DEVICE);
> +		buffer_info->dma =3D 0;
> +
> +copybreak_done:
>  		skb_put(skb, length);
>=20
>  		/* Receive Checksum Offload */
> --
> 2.43.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

