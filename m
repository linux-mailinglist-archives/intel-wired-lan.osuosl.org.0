Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5EE9BB191
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 11:51:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58329606F2;
	Mon,  4 Nov 2024 10:51:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eWTZSrk-cJNY; Mon,  4 Nov 2024 10:51:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7188F606E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730717488;
	bh=W/oC6bYxhlQXwxwDxx/IqXxDnp4ZtZeTNU/pesTphQM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1s4rB/nK9qfIaeEM7gVAvxBu0uqoFXYKjWSuRuH/PSMY7iY2owyuw03g+MJaMn0kF
	 PUnN2SSyTbcHaemdt2G7qO8IsZjD3PxaGGE7f45ZrP5QXl+LodfeVGCAkQC+QeGZXn
	 LjeGvvG/5UFYIhaQ+2nB8FP7LpiVmewE+aKo750vgt9/CmLbS02b1xiZYw50Ocr3vt
	 36/TcQfQ3/pJgu67k1o2XcKiiO1TtKev5xnR+bc13hUPiNXCGEM9VfAEzCHJ27tr4x
	 23ATJXldG5+1qEQW4iIVuzw3NEnPzJx0Kt7cLeoN3nD4jxMvm15YSdb3kOJtMdxpdK
	 dxxAGeUDGYeYQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7188F606E1;
	Mon,  4 Nov 2024 10:51:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 419CEB8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 10:51:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2A9DC40384
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 10:51:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x4m0ivTH_7vs for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 10:51:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 21E7940361
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 21E7940361
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 21E7940361
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 10:51:24 +0000 (UTC)
X-CSE-ConnectionGUID: PoY8fpTNSHCWbL7UOtVmpQ==
X-CSE-MsgGUID: uRItPHTaSiqwZ4mC50EFHg==
X-IronPort-AV: E=McAfee;i="6700,10204,11245"; a="41039188"
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="41039188"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 02:51:24 -0800
X-CSE-ConnectionGUID: ytentBfTTAeRmhjTM7YMVQ==
X-CSE-MsgGUID: BGKA/rvGSFegh446E/WBPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="88745547"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 02:51:24 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 02:51:24 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 02:51:24 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 02:51:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NCJkpvbGZlIo46Xm9Q+xlxhLQnxSb0m3spVxqqeXhzXIfhIkyGR6RXeP4tN5fB5mLXg+mT6QRl4mMfL8iSWtSK1yuFkvqQBRrzaIap13Mf2gk8IMI9Wrwi5OAIFqUEffOn8aacysCuR3LOXREdci0vov2zyr12PbBjpaAEPKM2vyxSbKCzwbLOra0f1qiE5rLjVB498FuXYvVUWwPHl7cbi/63FRXUcNXQVhaduZedzAYwgSnaLUbfMPCFDr1d1LxzENRwEfnqT3bPvoI/VYCMhFYNw5EeWcgZ8Z7d6NV8qsQ0roHEkVrln5uGsynr9t6omp4zU2vtBBlzLAqkTgTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W/oC6bYxhlQXwxwDxx/IqXxDnp4ZtZeTNU/pesTphQM=;
 b=FVV+xbQCep3DiYNRMSwH/z20DNFyCoID9QkB50AgawMEzinoNaz/NxDgndZArBbPRVjMk4HFvvn5dSV3FKMpT4Q+ocJXEqT88mh97t84nRanEcZJG9MwNdXdWQAhPo7FP4ht1JTBkWoCn1zijrw/hoE8ghkMpfWl+OTzXPc3GkhEEiYXl4bYx1vL/HXqKF7n4Gj5pbpoYSk65LqWIXTlqoeHIirDMGV+DI3LXGGNnf8MqD1p5o7Hp7J9xuXkem12OkAANh47XYcvgEptPMWYzy/wWLOH4ccXWn5wxWysk1E6Qq5dhPY8HJ/aWb8HxCMZAceCxNrWRpyskt0YZ48lRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by SA2PR11MB5049.namprd11.prod.outlook.com (2603:10b6:806:11b::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Mon, 4 Nov
 2024 10:51:21 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 10:51:21 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Su, Simei"
 <simei.su@intel.com>, "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Simon
 Horman" <horms@kernel.org>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v12 02/14] ice: support Rx
 timestamp on flex descriptor
Thread-Index: AQHbJEUhJI/szRh8SkqOEsO/nUElRbKnBkww
Date: Mon, 4 Nov 2024 10:51:21 +0000
Message-ID: <SJ0PR11MB5865153EB6CAE882F805DAD08F512@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20241022114121.61284-1-mateusz.polchlopek@intel.com>
 <20241022114121.61284-3-mateusz.polchlopek@intel.com>
In-Reply-To: <20241022114121.61284-3-mateusz.polchlopek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|SA2PR11MB5049:EE_
x-ms-office365-filtering-correlation-id: fc5215e8-9365-4090-3951-08dcfcbe9e68
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?/Yvx4fb0sD/K2DKPLIPQ9hai7zfwxEYODoDy1RrI8iUz12fU2xiWpeUvCyi6?=
 =?us-ascii?Q?bw0+2mlsxS/ohurDgSBWUyjfzsOAD2WMGoNRJKlt22/0k7sLXMeQix5phiZ+?=
 =?us-ascii?Q?4/bQo8V8Ib4TVCpoqe2x7EdcLdEkez3p5uEI2zD60As9hk1eNOFwJT/3/4k9?=
 =?us-ascii?Q?T91Pg5/lZzzvSLkS2UoD/uFNgxNIrDOq/uosNhaCZLOwM+SHobCmdQoPsjtM?=
 =?us-ascii?Q?2yIITco3H7DJwwFlkcL1iBBhKl98SctfWPXhUPOkmIo17Eb6TZ+2pZnmFiyW?=
 =?us-ascii?Q?SEIpnSzNvfBmMxTgLslEhQUnoKG8km+XDrpDa9rxudas7610pLwIuQF/zHqY?=
 =?us-ascii?Q?klXLzbzojf73MeS9zFGvKwHO4Rh94MgTshgjs9lRWBFsoN2iB14AiFjSAyec?=
 =?us-ascii?Q?RaWe2zyuxcFAoWYd8pDk+hrHYt0gywszK9UAW4M5VbyD36To5z0JT2cFeaFK?=
 =?us-ascii?Q?1Hy/tPpK/zKa7Xta8Na0Xe/5XIF/35xOk4M+e/hxtp8WDr1Hc94foPK7poZ1?=
 =?us-ascii?Q?MN3oNQ16S8xYLHKZljrrg5rRBcMxpf9lUQyxq+mXYHxZcK7zJxxKsytobWw/?=
 =?us-ascii?Q?aMG8SU1mL0QJY0c0UZ42mGM/JwO+8Dn9bjJUbuK4m816KsCxkJd/YSrbgvhD?=
 =?us-ascii?Q?UJI0xYtgiqTf0879YvHLVW9OTNRm0aYa2MW2f0Ntsipuv99UmxROBoxMaEID?=
 =?us-ascii?Q?fWwb8cPQOL4PsoJYUjjtOPTSd8nfXhLqJ3MWcN9v1uVdCGFOb4/DXhTGjRQk?=
 =?us-ascii?Q?qXUmhMyEJrnLnH/Y2uIQSTnzrTeIdydrqy+UQOtxUtYSgU751inRGJvgKoRC?=
 =?us-ascii?Q?gxb7iuLCkxWFY/9vRL7xFIyV03heCmCY0kpuWRV0lTuXhdZHaLWkyjif3Ujc?=
 =?us-ascii?Q?/T0QzO3lDtt5dBAmzqsCZjE6MVfMP9Pn8DrcMWYfvaJyyjmM3M3f4AuTYDK+?=
 =?us-ascii?Q?0L7BoYxU3YZhEQgq3Cbc7xxIymy2OJ8XPaTF68eLKLojli+Usu6Rjucv+wCd?=
 =?us-ascii?Q?bp1+FumqjMN76tv3IEX1pH7lY9bW3ep6VcxEL4l4eiZ053Krd8Wn1VDtIHri?=
 =?us-ascii?Q?OlsFm1HcNXqwctRRZ8in6XpoZKfa9YAdoWPAb/HbIFtaPXseAfC1sG57FtwE?=
 =?us-ascii?Q?GE3X/V05+fO/f1fBJG3TVha2Agyi6hGjl+VPQMYcWK71rgUq39/cMV6mdcMM?=
 =?us-ascii?Q?5UoVnWkAybQvZP6wyxoI8N37iCEvClME5f/4MDMthiZiKAZ5u/GJGa2+VOFF?=
 =?us-ascii?Q?Zn1+KGMPSA1JBIfH1uTlxGdUZ+6O3KTNl9EB0CkIvkBXYsst4fI7cE+NUthP?=
 =?us-ascii?Q?FtZyRBuioS4YTpzHMafiHEb/Tb99Qrh6NUFzGC+KspX/6E16wFpmro+jkpZP?=
 =?us-ascii?Q?JEaFuUY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mmn3m3h/YQH/C4xmnOVZIWXittDwokRi9W1sbldB5wccTz3QW+h0rtseM2Ci?=
 =?us-ascii?Q?I7HYTuBTr460bieWyt6f2ybtIu+DcpoVIE4y3FoMnfyl91COubkFoq4Wpw8p?=
 =?us-ascii?Q?VIx1lRU4haVh5vbuxeqy0nb7Zl5vLrsQzEoHx2ultQgDMyYDm/MH/9jgQ0S7?=
 =?us-ascii?Q?nEeQxtUelWcOfXvrC8C/hResZqF9vSetkVthx0CzHd93UjbhEARNSNBkCLtw?=
 =?us-ascii?Q?pHu3FNeIlaCmpIiQW0WL58lycSL6J/MdtrwAMRWUbK9b5a6JYyUuMNS2LSBB?=
 =?us-ascii?Q?Id+q0aCI+Fpjao/QAxums3OnoIPWiPdjHesOwoLKyejnLu88A6znIl+cg5W7?=
 =?us-ascii?Q?uPRwHuExD638SCbPtc0Yd099HCtWGP1HMea/FC1W9ssV4nfAW61Yko+cWhqb?=
 =?us-ascii?Q?C3+h6PGswepmyzGtJhtW20aE2oC2ZpOl0zBiVBlA8t5jqaA5ZRS6Qu1MZ4g7?=
 =?us-ascii?Q?dzw2TsHOV+Lo7dnlOkPT8dJNgcnnn1sprKYbSK4tZDePqmIwsdP3HLWjw3z/?=
 =?us-ascii?Q?iAyTg68eaJXXlfPEDaESubXwr8IvaGaM8KkdfLpObv40TXbY/2Zc0mbMwacB?=
 =?us-ascii?Q?0gNn9U7d5dyDow+jf6vl35twnULpQLlm+CrkuGBFyRCnfQX11ZCfqul98V2Z?=
 =?us-ascii?Q?mXmUZOU1yAewzAm5qYVfZLXeV7G7+nwkZIoH7rAWA+ilpbkwtSqVknErUVZc?=
 =?us-ascii?Q?fneu68Lq6wjlFzOX0T2+viPzKIeSde1z9fh7XCH8mw68X/W9o4OIWHJMMKiu?=
 =?us-ascii?Q?eFsLSmLEnZNyM7uqjI+jSDJveq/oYGPrDGePmYZ2SNXfpc5UaVoirbCzYvnB?=
 =?us-ascii?Q?hzaim9FaAgp0XG10PXGH+kwPimtIDaJmDMwraLxrORT8tt5TxigY2XrH8zpe?=
 =?us-ascii?Q?QGJGPMdrTzwI4yXnTsDTDACa3ZKhl5Ilugvvzeao9StBZq5kCSm0aMaADCpt?=
 =?us-ascii?Q?sI/QAcSNoYCR3qeOG0oQkhj2h4NvU6BTgCg7PydPie6kgkqgezVtrRDbOiR2?=
 =?us-ascii?Q?uvRIaYV8/7FloEd6ag/ZbUKkwTwoGdc7IsUA/eBxDGiUIh6SM8gBzJDVBXoY?=
 =?us-ascii?Q?pKikKWdHO//ZbcMSNXgqD0HcPerf3eQ1DHHEYnlFiYwV2Onh+xYvK5dzgPg0?=
 =?us-ascii?Q?xEsvA6rvhvPr+FR7naIWpwt/SBR24nq10muaXt72Zrip5J5eohpuOJm2/yZJ?=
 =?us-ascii?Q?eTEryBwYX1pWfLtcA8IgDbSZfY8REVxv1LZGYQymH/kxLJgeuCI2r4cJ3mi8?=
 =?us-ascii?Q?Qep67m/xjuVTfiVfGYXEOvGCncDg5toIKog+wMtc7wS+Uxz5M2uGCHQiHeH/?=
 =?us-ascii?Q?ECCiMm0Un3bwS0nnYp4QY8S/iW7nLXvcPkWkIew1Icx5LTaBWXAsx5GmviYW?=
 =?us-ascii?Q?NlyW+wGBPNr6P6Wyve4WPmKRHAYboCtrMffHqDr4sOqXtoE5b8ZsejItRZgR?=
 =?us-ascii?Q?+o0HXdWWrN9EOy2nJ/XLKXo3yj8WMcXJmerHbMjlcYLv4o4yTB/PBi/+oNGr?=
 =?us-ascii?Q?huvW7m3XxwlcOqitrarqzEGhgTuML7dt9kIpL1+o/uTqxzIWr9lDjdZzWyWe?=
 =?us-ascii?Q?wUGD2OtozTT7Xm6T6dkXE9TJb5lhNxNnwwJICqvA/L7LeqV1tibxr/t7zVCK?=
 =?us-ascii?Q?5g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc5215e8-9365-4090-3951-08dcfcbe9e68
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2024 10:51:21.0848 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hf+kmmniYhFD79Vr8+PJqRKgIpNGSOtGmtwNFjQTmmEqWiCRLW46QNPQVPjdbdpsEG2fXvf7ZeYIu2/GfkPjrrUeQE8BvLlqRYBBGsbJGEo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5049
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730717485; x=1762253485;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bJhwRGbz5cMfgZYHY6P3mdVsPKkv1iPi6kX3R0jwKIU=;
 b=L39UQPtHloryzqLTefd7N6CpoNV5eQMasbQtUGTcEt+04OPdgCmjLR7S
 BhGzGg+WK0Lc9ZX+/OlR+Ntgh8VgSa5CXQfHC7B/Qp8GTAyNZZbsC/yKr
 oKZDLIDy1kUz5pw4ndsOYWjk81Oer9PPXROp5ucWmpjsBZtUIdQgrNg2T
 cJgCnbo3EICi8VpwTmpHQVsqffMcy2pQ5jcV3votkXbalRzIbJiIxx+Qe
 XTxoB4aSN5yxKxRPF4PPY0C4eKiuDuLca9iMrFbpsBWgFiYTSNqST/Fht
 i8QlW1bX63BaCamABGEThZ/LxDQGxlU8xkQLsm21La+PGHUdTI8iXgiTM
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L39UQPtH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v12 02/14] ice: support Rx
 timestamp on flex descriptor
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
> Mateusz Polchlopek
> Sent: Tuesday, October 22, 2024 1:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Su, Simei <simei.su@intel.com>; Drewek, Wojci=
ech
> <wojciech.drewek@intel.com>; Simon Horman <horms@kernel.org>; Polchlopek,
> Mateusz <mateusz.polchlopek@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v12 02/14] ice: support Rx tim=
estamp
> on flex descriptor
>=20
> From: Simei Su <simei.su@intel.com>
>=20
> To support Rx timestamp offload, VIRTCHNL_OP_1588_PTP_CAPS is sent by the
> VF to request PTP capability and responded by the PF what capability is e=
nabled
> for that VF.
>=20
> Hardware captures timestamps which contain only 32 bits of nominal
> nanoseconds, as opposed to the 64bit timestamps that the stack expects.
> To convert 32b to 64b, we need a current PHC time.
> VIRTCHNL_OP_1588_PTP_GET_TIME is sent by the VF and responded by the PF
> with the current PHC time.
>=20
> Signed-off-by: Simei Su <simei.su@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c     |  3 -
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  5 +-
>  drivers/net/ethernet/intel/ice/ice_ptp.c      |  4 +-
>  drivers/net/ethernet/intel/ice/ice_ptp.h      |  8 ++
>  drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  3 +
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c | 73 ++++++++++++++++++-
> drivers/net/ethernet/intel/ice/ice_virtchnl.h |  6 ++
>  .../intel/ice/ice_virtchnl_allowlist.c        |  7 ++
>  include/linux/avf/virtchnl.h                  | 15 +++-
>  9 files changed, 113 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_base.c
> b/drivers/net/ethernet/intel/ice/ice_base.c
> index 3a8e156d7d86..aafcd3d4e599 100644
> --- a/drivers/net/ethernet/intel/ice/ice_base.c
> +++ b/drivers/net/ethernet/intel/ice/ice_base.c

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


