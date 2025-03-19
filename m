Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F341A69346
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Mar 2025 16:26:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DABA360E51;
	Wed, 19 Mar 2025 15:26:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nJJBn5dVknGc; Wed, 19 Mar 2025 15:26:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2144060DF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742398006;
	bh=18r/U3qPxWt0/K2MEw0Y6VOY6RfQjzH3EhBhWQ4fTI8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=b6t9tjtmuNfrKOlkKSbpLB4V3uFLfwGKLdAPL6N7G0o73/ooNNqxU72asiE0dS8NF
	 4BJvRSRZe2nXrpXwi6HDRbas/9v87LZdsQhNmKV9nfMKmC17GmUmam++LFAO54U/EO
	 gyhPrAkdas6qr1QP93oudOKIZNYuyMaRpNSeuacDCUPRiPWfEU4Je5y2kWp8nUetac
	 tYPT3IrKejrsLkXgVtTzCl4Jg0BLHLiZdtc1i3nQqZIF90RglgTRoL1x3mUtekKlbI
	 wiyd+j1ShwHL8pOUvuExxorN22aNZYCxzvWYdj0P6BvHUUQsEH7XptdG11j/m/ZXp1
	 c8TGN4qxN6Aig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2144060DF9;
	Wed, 19 Mar 2025 15:26:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B475B1A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 15:26:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A15E5401AE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 15:26:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QXA6v1YDvxkG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Mar 2025 15:26:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8D48B40134
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8D48B40134
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8D48B40134
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 15:26:43 +0000 (UTC)
X-CSE-ConnectionGUID: vwW7KbZ8QjmR9OSduPI16w==
X-CSE-MsgGUID: VFF5zsi+SbK2rwg5pkgzIA==
X-IronPort-AV: E=McAfee;i="6700,10204,11378"; a="53807616"
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="53807616"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 08:26:43 -0700
X-CSE-ConnectionGUID: 0XMVQQiKTC+aCG6+1Jksgg==
X-CSE-MsgGUID: okPrlMxWTGKB7nujKkj9iA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="127356236"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 08:26:42 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Wed, 19 Mar 2025 08:26:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 19 Mar 2025 08:26:41 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 19 Mar 2025 08:26:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yVhbhj+bOruYX10w8xmyfzaVpTSTvvVKs1aL6QnQW2PeJXFxLtrL424hHNqxIzuuGWR+shVAsRKV0gaET3kZyQh4N0BhdEAc8g0wJds1zilNGxslFt5UW9wQppBuYGU82GfRKoQctkbyCmTCZDAt8X3J42HvQ5yJ7WUMDKobWLQPExFP9pyykQ41BUmTwjtvthfsYx0QN+KcuVtCKaOIJd/P+0YGZDgB4uQGjYGZpZBP78YZ1iyOqGUBw87tfGTNWYLtchAsAkkqEUOYQldO1X2SBTaTBvSUwc44HE/S1EpsPDunAo+glpUBXYGGxbWeB7RJij9Ck7zOIpfxfnFiAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=18r/U3qPxWt0/K2MEw0Y6VOY6RfQjzH3EhBhWQ4fTI8=;
 b=CMhRsJ3RRMGaPy27LhZkhoJjOlASV9hgdTjgnYW4mjA4/kwknGMVa8CMQCTWLQHZK2tQ1WFrCCinQXtPtNo3Of4uZYKc/UVQ2OwkIMF5XHD1ohgYBpSxDuPRQbTzKbvGQXJVFCa96vkyBrqHnGUMVN/RQsmQgsv/XNRyjrHsUk41RHzVS/OMgQaMrBmANAyg3orkANnRQZjCftjSTbACTo9/vDV+hERGfrsqQUx9oMYyhI9OYXCXK19t1tzvihPcqER8Ns9Wrd0d79a39vMl4uaujSVrrPrySMxNwNmCSxnkPxj3TA/TcLdbE0Fa5Ks7Gc9iDyIc0NRUumraofGGyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by SJ0PR11MB5769.namprd11.prod.outlook.com (2603:10b6:a03:420::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Wed, 19 Mar
 2025 15:25:50 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739%7]) with mapi id 15.20.8534.031; Wed, 19 Mar 2025
 15:25:50 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v8 13/15] ixgbe: add FW API
 version check
Thread-Index: AQHblCtAtQmCWckhNEizc9WdGcyACLN6ncLg
Date: Wed, 19 Mar 2025 15:25:50 +0000
Message-ID: <PH8PR11MB796535F9D4EF68F547CA4FCCF7D92@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20250313150346.356612-1-jedrzej.jagielski@intel.com>
 <20250313150346.356612-14-jedrzej.jagielski@intel.com>
In-Reply-To: <20250313150346.356612-14-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|SJ0PR11MB5769:EE_
x-ms-office365-filtering-correlation-id: f2ad2432-6728-47f2-a134-08dd66fa549b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?hSV9ohyphTSvmnsM5SM+KIoDspg0z48jBohGgdCE71E9KhvWJnJIIcI1GXOM?=
 =?us-ascii?Q?wV90mHu36rMng+PNd8CirFF9tKJ2CUkCshqbaDjlwk/d8QIjAIlDvgsF/Dnw?=
 =?us-ascii?Q?DpXzQ0Zbgqi/YOr8hnTbN/LR+FJAhcUfIJDKKXWC3Tut9uNYLS0pyavNWJ48?=
 =?us-ascii?Q?eosJMJaG7pORvqkfW4tagESQXcFee8Xex4h8M5cLH+T5vLZ6CJY7RN+N1DiU?=
 =?us-ascii?Q?QXv0AAcrihaUrhFahM7K0VwvNcsc0iaR4f8r2vsQU/WxQ45R16GnsY+HwrSh?=
 =?us-ascii?Q?gMnFis4sDv1tm//6DU64cnoD0hRWGHqIZxJMzuRzlH89WMpjw6SsBu7CxZCv?=
 =?us-ascii?Q?I1wyBBdy31lEYmI1OhAxsryNgqzOmmQ/eKiLQvfNu2gLgGQB7K3GTL/BVezp?=
 =?us-ascii?Q?fnXSBNxUH83meoeD7WW2A0qgsXusiHDgjDHopNpn25L1OqKX4vNCja64hoBv?=
 =?us-ascii?Q?Mtj1IDjmgeJEZLEbyNpDJSQOEpybR0/2U/Ik+9nW0LbbNyES9tevxmiQtxOa?=
 =?us-ascii?Q?jGWX/FmXcB8z7n13MBcx9dkhx9DbtLA37p9YQ5SxpJuhiyPzbRfohPPGex/p?=
 =?us-ascii?Q?ugjE42BskM47DwwP2Is3/RC9QeiuSyUA8u9xmgDqMHsk+c97JOIlDuMgXr1b?=
 =?us-ascii?Q?krxQpq5PYovmQx1HczqsLjyfe7qQmKvHBbWpBDMycTLD3d8yXcihCNLZv/W5?=
 =?us-ascii?Q?Oc8ZtbAXJi+4X7nWRAYB0nBkdC2HYU8lUhWZrhXU0Uvxbb1Y9J2E5WURcMc0?=
 =?us-ascii?Q?ooP1j/JlRB0yE8pcogv3rcO/Xdpo+ebAvGSMyzxiI2kUhJHCEh84NB+CrdPV?=
 =?us-ascii?Q?8akk7pYwbMksyXvGiGt8zWWAvuaO9zfNpk2njUE1qwOKUBE0IQ2/YJUZKlhd?=
 =?us-ascii?Q?EvmSFjkC6FxWqMr7zCloiN4yUA77FbmzJ/JsRu/Xk4H4OiGsZXYQyTJkftco?=
 =?us-ascii?Q?9mnEyNSSYO1/M9g8SaqQyRCgh3IGScfv7RX/MJznZMiYRoaNaeqdG/2YA6KU?=
 =?us-ascii?Q?3MzRScvk3Wo0zO/EASHn2BPIwkGnDSNbcE81O/WNPnkTzPrmj9xX6PZQDNsj?=
 =?us-ascii?Q?iXe95Z2n9lntvXu2zhNZeeRDPfx2XmTbpRxPkIPUwWUxNpLrdxVF0CdZ6m4e?=
 =?us-ascii?Q?HG7eKRilv9YQHqCEfpl/vF4wPpFGaTTEec5T9MjjA2cni+ViTYa8u0K59BU/?=
 =?us-ascii?Q?ySHX8MKcBBgplrjBg9mZpbA7Gz0ry1gcQZEnUeK2T1PkjbkJctk8qlp4H6wp?=
 =?us-ascii?Q?bJX++sxavM8/9Kwy84qANYAwp5XIR6Eju9gtdwJNZokQ45V2py/E001io8wX?=
 =?us-ascii?Q?RSCq67xa8KBkvQ3Rl/mVvZp6LlcyUL5RjYsbmzWz5jH8jPZQwFQpxPOdlV95?=
 =?us-ascii?Q?CncNuHEtAol9T2dHKBnHbh4w3ckdB2XT2aK0YiDL++tUgfonnlRORwc+rcil?=
 =?us-ascii?Q?6y/PR6W+EpoKpe7vz2fKQIw+1+PYiNLv?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RN8WADXKj5DzROMC/ivVBgOXIkJjsIFIkpYrW0BAmyZa6KcCCVvPiMM/Xe7u?=
 =?us-ascii?Q?8zKag1eKm3Jw6DEeXF67zsWTFY/O+qq+r4GWgDzG2OGSvy/KMOsKf1bdzpu7?=
 =?us-ascii?Q?zgKPNpcP5x/ZbZI/S1c648T+uhYA2REHA+V8odWR21RWl/ZcL5WfLa4k6syn?=
 =?us-ascii?Q?7Jklo6nQYtR/DOPuCB2acBEblBW6RjB0F69FlXAaxWTkhcnchbih+zpmkExF?=
 =?us-ascii?Q?hPVYVc8QXxES4Q5Vned7rjpKCnwMM6SLbjFIhbyKA3r80rrBopzYbBQY8JJl?=
 =?us-ascii?Q?+Mh/j89NOJ2ZyWBub7tPD7UUSdya3oQ5ElGvKWH7zZidLYk3fMX2ejKwvUos?=
 =?us-ascii?Q?kmjHmQXZv8miiqr5ISJWDLygtYXwdgwP2yHGSlZTqNdJu+1eelUQ6tUb3gSt?=
 =?us-ascii?Q?n7Sb+6CYSgU50gQsEOD86oprGYUZoThrEsYEhFoQhLC+IhC/9VSuSfuzH23X?=
 =?us-ascii?Q?hHW7kxuiaCdAtl2MYAcs+EKJuLQhBmO8CxK2OcEvVDpq9LAhselXBlad9/je?=
 =?us-ascii?Q?+j/PkDXKLAUroIaUfm55VmjFMInU8UN8xezrrnjwXFXF1Vv0X9MMTKGXHGC+?=
 =?us-ascii?Q?uwpvV0erqpjdy3LIsPTz+4gB7GBIqltcfuxOukRX5uNHgVOFd0nilJWogSlj?=
 =?us-ascii?Q?ow0P3MBXR4nGifJsrgrYwaY1wLMpoeATMGmexpHsGl3/JHN/pq9iNlcMR+M6?=
 =?us-ascii?Q?F7ArlT2FpL+/zOgmn2SZBLAHWsy8P29j32Tc8dTEQwVSB4VaS4w4hFPz7ap/?=
 =?us-ascii?Q?LpeLCedw8p5/jvZ5nizTaeFEtaTrHQ/mIpEUFEsNIL65Dv31mrLBCT+K9mCe?=
 =?us-ascii?Q?mGc1BUysoUmQi5or1oUDHSiLR4J1mBriXIaMM6RGR6P1wEpW+zmXHrHp3h98?=
 =?us-ascii?Q?a0xHEwHkWGAMcyQTLzjTrz40pUIrHsKcyHxBdE7VeQqbGR4b4nOTy2fFtOVN?=
 =?us-ascii?Q?lHNbuuixTtBwuEimKRwKYVVo/EgijC6m7KozoEBzLFWF6MyqJ+FK778K78Nb?=
 =?us-ascii?Q?YbLAmltb/ueGIaWm6GkkFd8HUdMBxhT6zd5KkLiriZBvd+9jmPBU6inE5YU9?=
 =?us-ascii?Q?n+MVyyjFk/zFKKoqiH3RV32uDoLlYlIYA7CwQbwdsk4bOTxM3XFeDTkpeEtL?=
 =?us-ascii?Q?b5GVpuIqbuJuFlI40whQk/eG+6lIZp3Uk41E+LXUhSgAiiJL+STNJf3mHd3w?=
 =?us-ascii?Q?x4uDbFECgZSdZSFmJ+pJ1knQx1HhD/tcLcdBCLZsmrCcyIoU2xYW/Rl98/hh?=
 =?us-ascii?Q?ntUQj3QeP15suKEWhaA8Nnwck8VCunUiFmK6ZYJDOaOnDMisTDlRfw64bz5k?=
 =?us-ascii?Q?z+MgW+qY9OtHPNGKFf3z+88iEbpjG4zy626L78hEDWT2LigDkY45os98dsy+?=
 =?us-ascii?Q?bjufP2A4x0udVQNg6CExDBegS3oFepkPJCQIApk7PGHybtsf0ZatgHVvAUhO?=
 =?us-ascii?Q?bAS2LEUsc3q1EoDvpUBEFTiQz9HOY17QGUUM8Lam6VAa8oqUpXq4KCrPJV+9?=
 =?us-ascii?Q?VUi3lwZr0b2qgTHySWa6vbr/zVUuteRBprdRyKEHnQezULeaFwFhXFSeo0vt?=
 =?us-ascii?Q?qp9P23wbpJuRSZ7ykbMMJGjBiheMP4A2CFSFORKF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2ad2432-6728-47f2-a134-08dd66fa549b
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2025 15:25:50.3287 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7Rk1wpBu9/EaS8FcTOIFQw6Yf2T/6H3Eo1COwzm0yJsTkGzbFGGf/3Kgzmc/B8sF/te7vjLbWHvNX2ZOjOdwZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5769
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742398004; x=1773934004;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ReSFiik3aHz6PHumEZgTUTgjVEk1AguUMUvYLtIJCCs=;
 b=Ub9nZ5NVY1bL7QFVuz3h3O8rvK5UY6LT/Rog6l+3PBxUwoOMampMZ33N
 0cK/nsiPN/bFd5MqGA/I3HoxraMDRXFel/AMVggczoK3WOrK1GzgGuw1Y
 9dlmqNc2aSSHf1w+tDXMvsl32aIGNN7Kp/txwNBe8av2rFSvx447uZ8O1
 NeFWWmp4ZiDRjHSjVjR7ChbPpkK+wDGUXGZKr600ZJXzeTjk3vDdKwhg3
 S8DDtElZqLEImU0t8SldKSCnnGveh6k80kvIqglykh5SnJJ0l79LUnDu8
 +JAh/VFjyZ1inm80LozJFI3iNcDM+6WHcKqOricq2viMwSOUzaOAzfw3C
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ub9nZ5NV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 13/15] ixgbe: add FW API
 version check
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
> Jedrzej Jagielski
> Sent: Thursday, March 13, 2025 8:34 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> netdev@vger.kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com=
>;
> horms@kernel.org; Jagielski, Jedrzej <jedrzej.jagielski@intel.com>;
> Polchlopek, Mateusz <mateusz.polchlopek@intel.com>; Kwapulinski, Piotr
> <piotr.kwapulinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v8 13/15] ixgbe: add FW API ve=
rsion
> check
>=20
> Add E610 specific function checking whether the FW API version is compati=
ble
> with the driver expectations.
>=20
> The major API version should be less than or equal to the expected API
> version. If not the driver won't be fully operational.
>=20
> Check the minor version, and if it is more than two versions lesser or gr=
eater
> than the expected version, print a message indicating that the NVM or dri=
ver
> should be updated respectively.
>=20
> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Co-developed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v5: add get_fw_ver
> ---
>  .../ethernet/intel/ixgbe/devlink/devlink.c    |  2 ++
>  drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  1 +
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c |  1 +
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 34 +++++++++++++++++++
> drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  1 +
>  .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |  4 +++
>  6 files changed, 43 insertions(+)
>=20

Tested-by: Bharath R <bharath.r@intel.com>
