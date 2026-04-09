Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UCxcInAh12npKwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 05:48:00 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D07DE3C6142
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 05:47:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D90D607AC;
	Thu,  9 Apr 2026 03:47:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U8jEXhYN3J6J; Thu,  9 Apr 2026 03:47:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC6BB607A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775706477;
	bh=jLuqq2c/RwxVD8YjILK+d1b1C4YbbSNwMDhbK1EDhSE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OFqjyOO1hfuwzAZGDtbelp/TSF11MKrD+DO58o02G/GMNEhtorNCiJRox2ohODIfP
	 CD8640yeSzE9XM5/Sw+GzlSGurXFcp8SG6cx3HycEKkJGN4TyGq2pK4bUJx/IVLKoW
	 PD6x6L7hUHjMn/+v6ZhGxNzII0FTJF63ikALiJtehy+UhgCMxs4qQQgBzzxVsUBOm9
	 kS6Ki6BEi0IFYMqDzRDKPfbky7O6K/3EIo41uGI4qHihZ9ZAogEM+cfVNG9B37QKJY
	 5goBsqPQWP82MPj+DpOwqonLsMfEoVXCdt6g3lqv3KIqr3BKsYD+2EM5GJlGEN56ek
	 QKjN0KgiED6/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BC6BB607A9;
	Thu,  9 Apr 2026 03:47:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2652A1F6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 03:47:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 062CC607A1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 03:47:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EBmrlDeWxL5L for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Apr 2026 03:47:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4167460762
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4167460762
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4167460762
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 03:47:55 +0000 (UTC)
X-CSE-ConnectionGUID: qavu2HKjQxCC8ASn+aYQFg==
X-CSE-MsgGUID: +lOjQE4FROaEW/yRQCquAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="76774552"
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="76774552"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 20:47:55 -0700
X-CSE-ConnectionGUID: todwbISsQWOhRjGQf+LAlQ==
X-CSE-MsgGUID: UrejNz6TRGyY2PVlWkZ/ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="223899565"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 20:47:54 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 20:47:54 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 8 Apr 2026 20:47:54 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.19) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 20:47:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=deTiQVogYlaSwPIz/zjusMHdR9B9rCXYC3mMOVNtIbIkuMkK5DG2DhYBvlBdrr1uLiVp4C72YPMCcHEywIk5r56pjHi0tfqeMOt0lsE5r5CbjztZGIMRz44Cojbinpuk/qyDN/tUea3IrpaLppJwrzj6CXF4SUdKf7ci85ib+UHecxg7Wha5nk/KFFHBWak3B9c94jLMuvonzLQrdvvjv5IFUoJpymCYubAvatldDGobxUmiJgvQq5X0GXxHiHxOndaus6fSbbpFlQyoFliEK7GtSZIy4w05K8sAR9nWeC3ruHRIwLBIB6p9pFPi4shps/kGIORmlqK+G2rcag82lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jLuqq2c/RwxVD8YjILK+d1b1C4YbbSNwMDhbK1EDhSE=;
 b=D7mqr8lew09+nMnEM8M6vjxHgu54DZYZjSsdE12jXR8xMBnli+8JuQoPQbvKuGlOjiqsU9pnM6VCun55w6xKln9V8BCp1e4DFrQFjJGIa6/zvYZUSvRF82gcfGZY+lg8kuVDZP7CO6tq/4nQj12u1AJOlu3/R7lWG8XKCVm0Y542BKyv63axkYoyXvxIfow2Eg0GxxpUzJPB8CQUFwnpjOKIBrRuas6XsrPV7sCGu3dnBp6soLCWKDirxvOK5tWRMZYmJGEwMqN4ItyABLvyxNO3+jV6cCIveQC4YZkzNWGEkEJPr1zypdVA4keLKHzk/vZIx3X6XlQ91Z3ZlCot2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by DM3PPFCBDC4B878.namprd11.prod.outlook.com (2603:10b6:f:fc00::f4f)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Thu, 9 Apr
 2026 03:45:44 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9769.016; Thu, 9 Apr 2026
 03:45:44 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Kohei Enju <kohei@enjuk.jp>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, Alice Michael
 <alice.michael@intel.com>, "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "kohei.enju@gmail.com"
 <kohei.enju@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH v1 iwl-net] ice: fix potential NULL
 pointer deref in error path of ice_set_ringparam()
Thread-Index: AQHcopiFqIhUxjzJeESVUXroisa3/LXU64jg
Date: Thu, 9 Apr 2026 03:45:43 +0000
Message-ID: <IA1PR11MB62412B7B0C1193BB6C6038FB8B582@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260220184031.60113-1-kohei@enjuk.jp>
In-Reply-To: <20260220184031.60113-1-kohei@enjuk.jp>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|DM3PPFCBDC4B878:EE_
x-ms-office365-filtering-correlation-id: 82b03b8c-2a8a-4c19-5b01-08de95ea7a5b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: 0swGyW86nT8RCSkCYo2V7QGd/bBWQr1Ki8jGKopmcWtXqJ9cBg8EKmMfAd8hfbqsIjsAd516J5SPWrq6ErolqgkixrBgZDVdxVj/SnGRQ2Hau4RFIpfvwIWJTPKA+Ktg+0L1TwrkNaYrus6LhfixEaeUoYgfEEmbO3AovMygm2dDrcHhjOqDBBqhntfUXby5RIwkRvXB41Ldc8KqUEJQL2NS5ZqmbIxFctQFZfTPs/4P1E0Hl/n5MwTu6IvJI58NSN2HO51jHGOonUWT7mIlQRzYLLNIDyYLrvwpG2BjmWxE/+8dfwwEaJjp+G5m/K8wqi/fvEfXpvzFWVtw5j8RjoE1kn0uziB5WKnhlB6BScDB5wJJQXiadI1U59f4KoGAvRPGeNVIUhoMJ9kNsw0pCPsQ4PN1kRfxyCVjY9LpTrb6Rm+SZ4UMkOOVivACaz4lvgo9iPXevVY5gK5Vqh4f0PBRSpE4AVkewUGJ7Cesug6oyUqJWxOTh98S4iQYOdjT2jvGxpwVuldYbiPYy5P8TZIYUnsrnxBuyWkAxXcA5du5HP+BvW6epUonu0JnLLh0DzkoUEQ2T93qBs6vVKhwSHT0OJ8Nmw3gOussASV3lIbg3oC77xGOiRVEigVDteQsInBQYi6f07Ml5vX5x9h4h9EAWAx6fBR0g4YVcUyOef5IWdfQykH74a0wCSEs58OmNdBv4yjPqmL6CwQRzVyCgFtS6oDBWfbuaEFUwvcEf/BRI3IYnMStja34rFIyh1SCQmkNyIlXyBLsS+0VYS/DTOLVQE6BrS1BFXRF+ed0St0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mRSs0kKmklnLWI3kuDg2mxNNJ5XBg7lbkfDi15d8Te5xh+HjkFmWJBbBy/CH?=
 =?us-ascii?Q?MiCpgx3PwTziCxT+yBiVRFdzkqekAv9d9iyKLtX87ZqaogzQ1niwwoVcQSLS?=
 =?us-ascii?Q?zzYBssyhQr5rcYRSxkWZMzfCuYy3LuYHT34ve/a4vHolgX3aGKSXb5Xxb5Jh?=
 =?us-ascii?Q?I2rRbwz1EutFX8gW1MDerYOd6T+8oeJNbG9PfvUXaxuJI0qDwMS2MQhmqtHM?=
 =?us-ascii?Q?kGPZrEYqGTSLdTGwKEqbA8JJbDlt8KEk9Kw7Ypj5DZMCf+J0/p31tSMLt9OI?=
 =?us-ascii?Q?HgYu2LiI2pVAT2hwNS2cs7g8dLW2/PbZn2AP6aYfNSCwUwee/60Teor3L88h?=
 =?us-ascii?Q?Pz+byUuRhvSASWP30of6w6o/F8gW3DMi1FyY6ePy2C80AHLW6mXybe33qAEa?=
 =?us-ascii?Q?+ZLeQVNzkSRjdFI/bURzwM+KMbGexB8oWQk8E1hhjnCYXt7xePqlc4Lq1pl6?=
 =?us-ascii?Q?H8UbvyH0UyDKPBSsJwI6dGQEfDHP9428ekVjjS/ehmn5roCUg2/mMU19Jn4p?=
 =?us-ascii?Q?5NsoFr0hKHAMBOCqMHdnrX7mx+sSLI0waZlUDxN+GiDWSflknZKco46JpD48?=
 =?us-ascii?Q?6qfZUBRVlGuucV1xgHoey9lgUF6CiKabC/N+4z8Io75/7cE9V1X6cUHOW4xT?=
 =?us-ascii?Q?6Vn3CSvWOcDfCylIQgZiETln8fr26sxSMxTI4E8wrwp/sIDh3lbrvbBHddhH?=
 =?us-ascii?Q?66WJ32OMk7h4PKEgDa1zUmkXdLT0w3xARFhPx4ByeCHnSA93OW/FKLhMKkAS?=
 =?us-ascii?Q?M+7XAqG06CmgXpTAY3byKOkUODrAvLtK14JZ3W3fBjoVnjmc5rqe4BgncL0K?=
 =?us-ascii?Q?5yRqt5hQDJ72xL4hMnUx4gmzQOfAy3GA1RuuuTVDmSromaFxqAAX6PYAZTa0?=
 =?us-ascii?Q?N6zWMclfKBp7lfUXl+5oWZrbPHgcWtbGiGmlGVdYLqDHbiZ1gtY4T2qLKcDL?=
 =?us-ascii?Q?ER+PuQGpw0oFjj/LATzntAXa4nTjYPm4wtXUIORTCUbq+tfVGY+X7TsBTVYZ?=
 =?us-ascii?Q?E8FascK/+dBpjJJxuovyPsrp4qoYXwnmB+awfBnlcLNUdkyLGaWvKURFp1pD?=
 =?us-ascii?Q?5VK/8KTQkWKPEMV64az2wlnq59DRxDzaky6sGTO1Y2qbVpVjXHg+yLsIzwCm?=
 =?us-ascii?Q?4ogS5LzTBaQK4zAJqlEfpiBCp5s9DJyX9gLCP5Beqn6eSn+uCC9Sb41yCH+Q?=
 =?us-ascii?Q?dy6TiFVE2xVGRdyfx5g4+dUDlNJKTY+mMSfOT3BHGiw7DusbAfk7sopikRcO?=
 =?us-ascii?Q?EJweM2UituIFu3GY4iST20ZImqH0bFpZRT+W6hkEhFtxvPI0AIMrLmtCQpdt?=
 =?us-ascii?Q?8tdJWRpHn62zXz5d2rMhgk7c+kK9Af1kLjI0ZP9G/gUdUU2qerDOXemO/VFh?=
 =?us-ascii?Q?ZB10wuVBuLpiKAjcV98cKg0GkEq1n6yNuaxS5tfU7i6+sZ8BJug2/a9inFvQ?=
 =?us-ascii?Q?O+0x7L8UpTn+rBFtSbQ0/KjJV73wW/AzL8IO4AMBBkAjwMzRxX8ilc7GTUlg?=
 =?us-ascii?Q?0gtpVODLiDDtsLQStNv7Sg0HGDdtcmjUz4k0feEprd8BTD+C/XdPIChr3CEB?=
 =?us-ascii?Q?rUIvwXWbTA9VmRTJeGu2jjj3AWaLldpliHRUjtLXvVL+GnxpZe23rKYVtdJv?=
 =?us-ascii?Q?rpgbbTX65ZbPfXeufPpLcxlQhw7XB5lOc9TnInQhOmCnl+yUyg1b+uenlcxU?=
 =?us-ascii?Q?uvgasMGa89dwOfltyCg25LnjzRPfWohj3U814cTqcKPd5VzD?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: duvP+78cwGS9VjI7OlCULZBVSj7nKBuAj0DOQpeQ10oW2g85lyiMgMd7Cipvs4San33sW2qAn88r0IA/spJjELf7s6d1pfh0kpTC7mHmhxWM2/CTbmBYBd3aLELj2+dP68y4codF00n3qkJ5FiNVTZwmEMT+cjH372kwUlKqbvLKZAQzhsM4+ttu9D+FZnvOn+Zuea2FkrvPHkWsNcWYiMqzxtEPX0LkSQuMQvOHJ3YEC1kvGgjWY/6VqYZeGUISDZ1jmpqywizWLxE+TzjAwplu2kgJVsfL8un66r9rTh9ASxc+iQYVEnjjpChnScMIIv2u+JOli/vFFKOT/mring==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82b03b8c-2a8a-4c19-5b01-08de95ea7a5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2026 03:45:44.0338 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KAplCHtXOE7IYALPvxM/75/lIO4SyQjkXrzf1oHs1XJfFAjr6VwcJCVzBf1xg0NykotMW9fskqI5HmCaPJcg/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFCBDC4B878
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775706475; x=1807242475;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AUplrJCXv7dtrUhq15ArzstwBO5Elle1lqW91XU2jXM=;
 b=g34YEb1KmgtYrnekCIttCrSN4dGURkZa6Ppmc7h3OAJRJM1+u6Ivo5CR
 CpZI1FQT87wuKLe2K7kg/kFpLbKUlilQTEjRYcP7CB7QjW1gvEYYLJ5qO
 w+d3ROw79udKTVFqZWz6SjEOyZfL0oOSkZkvV9dMg/n3TWqsyL+CLq+Er
 5Ngwd7008cjc3yXxbZxLvg+sp2V7SB7JoKo2YsaTiS5oyWrMo9tynvKNJ
 848DG2TY/093Isysejoba3df7xr8dd348qDfa4Nopeb9p3zkSUsjqIMnR
 MX09SBYdTFFrekH3S0JrKRt4PkpE/KPUg5rYG8fAbwQe0dUPSTrNGLVEd
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=g34YEb1K
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] ice: fix potential NULL
 pointer deref in error path of ice_set_ringparam()
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
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksandr.loktionov@intel.com,m:alice.michael@intel.com,m:paul.greenwalt@intel.com,m:maciej.fijalkowski@intel.com,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lunn.ch:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: D07DE3C6142
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
ohei Enju
> Sent: 21 February 2026 00:10
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>; David S=
. Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub K=
icinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Loktionov, Alek=
sandr <aleksandr.loktionov@intel.com>; Alice Michael <alice.michael@intel.c=
om>; Greenwalt, Paul <paul.greenwalt@intel.com>; Fijalkowski, Maciej <macie=
j.fijalkowski@intel.com>; kohei.enju@gmail.com; Kohei Enju <kohei@enjuk.jp>
> Subject: [Intel-wired-lan] [PATCH v1 iwl-net] ice: fix potential NULL poi=
nter deref in error path of ice_set_ringparam()
>
> ice_set_ringparam nullifies tstamp_ring of temporary tx_rings, without cl=
earing ICE_TX_RING_FLAGS_TXTIME bit.
> When ICE_TX_RING_FLAGS_TXTIME is set and the subsequent
> ice_setup_tx_ring() call fails, a NULL pointer dereference could happen i=
n the unwinding sequence:
>
> ice_clean_tx_ring()
> -> ice_is_txtime_cfg() =3D=3D true (ICE_TX_RING_FLAGS_TXTIME is set)
> -> ice_free_tx_tstamp_ring()
>  -> ice_free_tstamp_ring()
>    -> tstamp_ring->desc (NULL deref)
>
> Clear ICE_TX_RING_FLAGS_TXTIME bit to avoid the potential issue.
>
> Note that this potential issue is found by manual code review.
> Compile test only since unfortunately I don't have E830 devices.
>
> Fixes: ccde82e90946 ("ice: add E830 Earliest TxTime First Offload support=
")
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> ---
> drivers/net/ethernet/intel/ice/ice_ethtool.c | 1 +
> 1 file changed, 1 insertion(+)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
