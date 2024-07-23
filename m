Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD19939F5F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2024 13:07:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 58DAF4048F;
	Tue, 23 Jul 2024 11:07:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NbDjuBkxCijA; Tue, 23 Jul 2024 11:06:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C4CE40457
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721732819;
	bh=eZWIVSWiZEuT7x3Toh8GeddCVi0G4Wd8FXi1q9Cekpo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nJtMMxN9j89IRwFHMlP++PaGasVXcTxtcdCqJ+2ZyypGHX25gMFQGRky8dJdbPzjv
	 eL7I1z9xiFZYW+yDIKkOgDTB0SjJ9Tj5r3Bg1djgNf0oMIDBsEoULKGp75R7IAfZb2
	 MnL5EoOdE1PGC19UQDL31y+oIJVMTx5n/tNqSMY+HZoCii6sdS76sxfWIGBddX2WSV
	 8oIZaKvM4jjnrPDRUa8KKEIamm8Vz8cbioxgsHT5NbO5ATSuc1/V0aDFmLPdCZoIdN
	 ajH98X6/PzPe/TdAXcwcLyIPduXUv0P4OyzJQzF/GWfOakDDqbPLckZEN7+zb+Rs6i
	 FbAVGqofWIP2g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C4CE40457;
	Tue, 23 Jul 2024 11:06:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E63151BF28B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:06:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D0F13606F7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:06:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MYzqYvaCiZ_8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 11:06:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BEB85606B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BEB85606B8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BEB85606B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:06:55 +0000 (UTC)
X-CSE-ConnectionGUID: QNm6pmBNSO+uqJzR9SQYMw==
X-CSE-MsgGUID: 1JzMm1T4QxuqctSEYtyd+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="22248614"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="22248614"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:06:54 -0700
X-CSE-ConnectionGUID: +iwIKjD1QLSj8JaTTPnLYg==
X-CSE-MsgGUID: 08He2d/1SCaaJ2DrmShS3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="56500679"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 04:06:53 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 04:06:52 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 04:06:52 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 04:06:52 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 04:06:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eHOjnONQLQ3iMCh0nr1SVMiiLURrQ/twKoulVK5HMY5K5AR/aS5GVTpq2O7PJINpzUTjdCZJEt3+0InVsxiPKWWN2NreHgrtn7OvrSjgpmdYD8u6BC10Fmu7Ki8ihiiklL29/AgaHdaR23YUd+P2Lf2BRK5HfNbPKLL/SrSBYcAmsvZu494z4BkggPASHeynDDN5MvOApZO1QR2HF7cJVAqbqFxi1WYYWlP4ZKyNw98PvqZOX7HRANVfAZPn8WktTMXNMqgJJzFIzj4si6xVmKkQScR9LA0klYTwi4RwsGLX2tK/qYvJXhBWAewcYOxir8vxoj7gXnMmyv/veeLhXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eZWIVSWiZEuT7x3Toh8GeddCVi0G4Wd8FXi1q9Cekpo=;
 b=O4nBwdNntVo3y3KZKCjM6YmdBGj8ShV36GLOjkVNlDUaXXIpD3lAeBtsIj8I2DUoJNsOpOz9qdSqVAUedc9kE6cOuNqjo3LiZjHpGdOYxz5qjmSMfrjtxuq2Q+TNpHbYm1RgZqb3W4Hp7BwDABwFbrFII1YKQP9plDZx8q3CNdbaieuxOwIVlr7vs4L3EKmKJJ9jpR2fKYtVK4Uxd7+yULjlnJhttt9bAsc7fQ88VaDUR+hj155vjY11Yxr5NV6s933UNzMUjAwwp5PXNI669UOWL9L8YHu3QZ1qTnwACj+AvyARN7uS29dWPp2dru6sR2GEYhl+uFhRTARBFIUmNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by CY5PR11MB6115.namprd11.prod.outlook.com (2603:10b6:930:2c::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.17; Tue, 23 Jul
 2024 11:06:48 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.7784.016; Tue, 23 Jul 2024
 11:06:48 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [iwl-next v5 01/15] ice: add new VSI type for
 subfunctions
Thread-Index: AQHauAOPUmA1LlfrwkuOOxEtHG4CzrIEcKzw
Date: Tue, 23 Jul 2024 11:06:48 +0000
Message-ID: <SJ0PR11MB58650ACE104FE8CF0EBE5E0C8FA92@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240606112503.1939759-1-michal.swiatkowski@linux.intel.com>
 <20240606112503.1939759-2-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20240606112503.1939759-2-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|CY5PR11MB6115:EE_
x-ms-office365-filtering-correlation-id: 2a209afe-494c-4cb4-1f44-08dcab078c2d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?C8f4j37K72cptUem9vgjrrzOoogPWWqncOJOrQnnWxIQObSixdDyYC4LRu9n?=
 =?us-ascii?Q?yrsP+HOO3PnjK4FHbBCF1PO2HEZsOT+Cf2zZ+pkS55J/O941J1Yu6s+aqufY?=
 =?us-ascii?Q?gcZboL1biInj55O6YFZLQpz6iqwx9tMdRCrUtzfJFJDlgFH/aifqrvts4HHh?=
 =?us-ascii?Q?6dpyp7WtFewatSilORnI+G6185nFqW5SpUjuciQD81cyiKE6rHsTYwZpCd6B?=
 =?us-ascii?Q?+w59wC0pNRiHZaIGwHT3QS4F/2xSC/Psn+36iFFjHVdNtw6inU34n4VD8pf6?=
 =?us-ascii?Q?m47sCbgYhF18A/h3UN2bLEmsvpyYcpx1/yDzWr7opkRZw9P+P/dP3QD5/NjZ?=
 =?us-ascii?Q?FwrvvYfuUc/NkxRbiZjpDzsu0EKYjrM4XYO64QPuX9lx0Gr6b2QdEGgAayQT?=
 =?us-ascii?Q?F9UMj07/N2Urllt88HNgfnPsBpBUZPgHxVrANZo/7C0Mx+ECbDHvB6ECglI6?=
 =?us-ascii?Q?yc4oQ3O+dLEI2v25uiQNzGxfPVDGo1YdCg39rNBJYeeRBVblG9NPuWlGIKEv?=
 =?us-ascii?Q?iVcRm1erTeksP5xJhTICjyvmoc/B4eS5Q8gYy2Z/disW1zY4d0rVdNVCa23r?=
 =?us-ascii?Q?TnSNibvz3TMtNpSf4hLQJIQp8QPPIa4bQf5MKKUiRsw/njZx473iitCGFsAz?=
 =?us-ascii?Q?Y595KiGr3N2n2nByDWCibmIC8VD3GwkqWVU6AeU8GRdo5pZLOyVYmhKCSaOK?=
 =?us-ascii?Q?QRVZP8qbzCO9082QgdbAJvxM+0k9RpmtLp8NsExvmg/Vcjsq1oFSP5N66ema?=
 =?us-ascii?Q?86+cguuTFrvoCljkpkvuM/k2/Onz8TNtVLkPGnzPSaQncVWBYcfAMiuCj40W?=
 =?us-ascii?Q?ChYGN/ZAybPDfA+I3DPeaTEEVB6hX1xou87IbH/djfjb5KCQI/nVjiNQaemw?=
 =?us-ascii?Q?bm7aWdO0Gl5pj2OkucicwrGbYxUtdXcJOK3N36sFEOqf6Wze5BZzihuQVHWm?=
 =?us-ascii?Q?3sH9JkImhwrYQLcQwyiwb1QLcDZJ31w20glOOZQ2MEJYw6G5NKD8y0TR93Jc?=
 =?us-ascii?Q?t1CBZZV38GXTQIyRvnFCVIY3NzMQ+nSz7c1v+ItiF1DUy2mPPGS+0KHGEJjB?=
 =?us-ascii?Q?oicuEXFtoQMUOgeK+J8vjXfRwAeFTI1R38B85ypFDXnQTFeryVN3HsuxjD+Q?=
 =?us-ascii?Q?SdeJmdnsRekchppID5e9lybCx7JYwk7Ndns++pTUIi2ViPDToOurP6urn17q?=
 =?us-ascii?Q?wvWMDXG5Kh4s0kbG3WDcBQTYciR1hFWXWTj1q828EJAiWmjQamIBtx/ggaYO?=
 =?us-ascii?Q?S2+oLoYBFT34Om50ZS3cIFTaxNcB89Pw2XH6lsvRDBouoxn+6qxNtxxf3W1O?=
 =?us-ascii?Q?543+GZbd47zSpdTsZzltpYR4r0rBty77z1CFmi/co4SjHdy1u5eXUKVnLnTn?=
 =?us-ascii?Q?4LHGSTgEdEconK6BZ+Co//P3H37PJpRjZ5Jxn4MM3B1TaGPgaw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SnSt3aygx/b4J1mkWdmcRmOZjEZhNeo5XLG9NIQOOq+KsGgqUGVpZ74jd7mZ?=
 =?us-ascii?Q?kW98KlJ5B/gCxYsAECtz7ILY4v40Q0Uyo6pAbg5z/xWWz+l3AAtvVin08rfe?=
 =?us-ascii?Q?2al3qhyXzPb8I9GVUDoDVjREFisM9eTGJmLTKoF+xGGqDoAorTpRVN6u0Q+q?=
 =?us-ascii?Q?zcc21LsYbt4i/a3RE3uyoiWwUq3NSnw7kH2cRUnQlt5nsQT231kBfdpAFtRp?=
 =?us-ascii?Q?/sDK55AqCKLbC7znKrl30pUyuD73uVjIViWjLnRJL8AVE7mP3DFP+Tr+HcKO?=
 =?us-ascii?Q?8Ij8FUM8BpXC+SS7gMzo6PpK33APc6R+GnnREXWdb7fY+Mx2wggqO7KaKbs5?=
 =?us-ascii?Q?cLCQwKJwNLrdCXVxy5i2wbs5uRRkBMBWwlhrGQLasVVmz7G9hIcf70p93Ljj?=
 =?us-ascii?Q?Ptg8uh73vPsWA8E1D8nkES25Ktldq+nALDFxuGXidD2AlAdZZh/b9lxXgV6Q?=
 =?us-ascii?Q?/Di2rVrN0gVUvglm4myWwl4qS/N5Pnok9b40jLs0SRTs13ZgoelsrfBOZh6X?=
 =?us-ascii?Q?F/zFDTlo23mDoywkgiR6edM6F/rMxnaVUR8+6BFC+0n/mEPJUQBZknk60DPt?=
 =?us-ascii?Q?NPVCvRHY+cgCCvm2d6/MYwZJh19OuRcOat2+8ObNYU6eZw69rncrm55Zdmb3?=
 =?us-ascii?Q?nNPx71Qb2db6Yp1+IZMdAzQoxGXjvzXxb+w23PNKsT6UoxPrW2TQDvBKOhua?=
 =?us-ascii?Q?EWEnnsdL+8b1yDX8SGvVr3usSbbe9OS5lEA2P3pL9jJ2qYYqiYaxn708TU3V?=
 =?us-ascii?Q?0XpLuC6mRj+Tlen30xzixCVachBS5+D6KiFO5YEFsIMm8Yg+8gP+Lhoq5bw/?=
 =?us-ascii?Q?hHhqRbWndBZSsp2QZQQST7y8dOkj7tNuroFYm5mbKdVMZGJFHl00TJzURo0A?=
 =?us-ascii?Q?aEVToSs5agBZLK8FcGhTJ8rgJrWsnjIsBBCPhqDJqgS+mi6fQrdDDd8Vg4Xh?=
 =?us-ascii?Q?BFRyQEcxCiC7R1LrdyfICMowJEDZLftCe7UwMBRSeMN+eOKgVV3ClnJTQ0fp?=
 =?us-ascii?Q?azsjybmJPdgwDciN2oKz57ky/v3yYemJ7kr0LPrHWnIqQwFqrAUrHdu5IP4o?=
 =?us-ascii?Q?eq7K6XtxJJCQ1ph4b/CqCfh/MRD/f/Vne8Jh0iXhY5g+doVIPBpPQwG4fs4k?=
 =?us-ascii?Q?tKV2vS2HkepjAUmfjSa+QfFAxveYDj8Yw885CtsPLO1wGDXDubcFUMVrbAyZ?=
 =?us-ascii?Q?D+InsNZaZEnhk4laemFt2Jk+WBsuJoAsHW/Xp18DyakGyfPLMMefWUY+4ofo?=
 =?us-ascii?Q?zgtgXo9muvYPZsm+5C92IpWoflGGaKG+aSoxLnXQPyQnRbN1Twr5GSNk0gtB?=
 =?us-ascii?Q?GKQ6KHgbxGuiqs9hce6sd+ewz7feu6Rs713Br+3lAAbDQMaD53jrWoY/OZfw?=
 =?us-ascii?Q?8wwZvHUptPhCfJa5l8xqkH2/KJD18iGx7kUyZL9ms35cRX+kIiebd08Vgpj1?=
 =?us-ascii?Q?qZgIRsVWDrXo3lI3TXC132bRa4Rtoi/AhIFGbJECZyFb8+bv9pgy5PZtjMgm?=
 =?us-ascii?Q?twbNDh7NosbVwpa0dDv9yTqdfs/X8QUtQfpgJfvrRDdddMQkv/9SgifSjYp9?=
 =?us-ascii?Q?Kvn2FAEfJuHnbAV3dT52Or7cCmzo34WhnIF1K+UOhOz7ZuZPrSiELzfMz0pr?=
 =?us-ascii?Q?rw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a209afe-494c-4cb4-1f44-08dcab078c2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 11:06:48.4234 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /rDaBcrpvyyu54cgzFfvGEvwERx6X0jba+JBr5EjSC5PvYrjJ4C/z7WXP5CQlWQGoFeg8xduxNdxnZIJgVmqCM31s/pE0TzIU5GVbu/ggJ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6115
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721732815; x=1753268815;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PRhcsnSa2BmNXtCnfNa95Zoh+nU5yjNbUwfPYYist4M=;
 b=DAXqQjXAzm+ezKlWzzI6Ex02/mEMvB1mXoqa/hqOODobhBq/D+IGWrQx
 jQ7wZ52wpy9jKQ56hX2K5AIYyuz7NLeZ93X5UKhOLYOWZZZe+2I4rD7wH
 L/4t2e51pI4JMrC7uDOP6O1+lBts/G548CRDrLyFCYWcGWSyw+39V7g2y
 PZ2snfbGSOt37i0d9J6mhbmccKf4FZYGc2ieMAw1H08lGx8kpYXqENADO
 mNd/7dHOXxZfXVCWUmtlz+Vba9kXuVBn8rq9l8c05xZB/Msq5PSkyP2MG
 jQAi86Wo/uOBLGRld/pYzG40u9H3c4uhJtEcFWGOX4ejXIDlxKFLMLbHL
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DAXqQjXA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v5 01/15] ice: add new VSI type for
 subfunctions
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
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "pio.raczynski@gmail.com" <pio.raczynski@gmail.com>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>,
 "kalesh-anakkur.purayil@broadcom.com" <kalesh-anakkur.purayil@broadcom.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "jiri@nvidia.com" <jiri@nvidia.com>, "shayd@nvidia.com" <shayd@nvidia.com>,
 "horms@kernel.org" <horms@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>, "Kubiak,
 Michal" <michal.kubiak@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal
> Swiatkowski
> Sent: Thursday, June 6, 2024 1:25 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: shayd@nvidia.com; Fijalkowski, Maciej <maciej.fijalkowski@intel.com>;
> horms@kernel.org; Samudrala, Sridhar <sridhar.samudrala@intel.com>;
> Polchlopek, Mateusz <mateusz.polchlopek@intel.com>; netdev@vger.kernel.or=
g;
> jiri@nvidia.com; kalesh-anakkur.purayil@broadcom.com; Kubiak, Michal
> <michal.kubiak@intel.com>; pio.raczynski@gmail.com; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com=
>;
> Drewek, Wojciech <wojciech.drewek@intel.com>
> Subject: [Intel-wired-lan] [iwl-next v5 01/15] ice: add new VSI type for
> subfunctions
>=20
> From: Piotr Raczynski <piotr.raczynski@intel.com>
>=20
> Add required plumbing for new VSI type dedicated to devlink subfunctions.
> Make sure that the vsi is properly configured and destroyed. Also allow l=
oading
> XDP and AF_XDP sockets.
>=20
> The first implementation of devlink subfunctions supports only one Tx/Rx =
queue
> pair per given subfunction.
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c    |  5 +++-
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c |  1 +
>  drivers/net/ethernet/intel/ice/ice_lib.c     | 25 ++++++++++++++++++--
>  drivers/net/ethernet/intel/ice/ice_main.c    |  7 ++++--
>  drivers/net/ethernet/intel/ice/ice_type.h    |  1 +
>  drivers/net/ethernet/intel/ice/ice_xsk.c     |  2 +-
>  6 files changed, 35 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_base.c
> b/drivers/net/ethernet/intel/ice/ice_base.c
> index 912e92c060f6..70f079f279a4 100644
> --- a/drivers/net/ethernet/intel/ice/ice_base.c
> +++ b/drivers/net/ethernet/intel/ice/ice_base.c
> @@ -330,6 +330,9 @@ ice_setup_tx_ctx(struct ice_tx_ring *ring, struct


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



