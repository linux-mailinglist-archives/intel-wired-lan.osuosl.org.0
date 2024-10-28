Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A479B2C4E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Oct 2024 11:06:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2CD1F60AAD;
	Mon, 28 Oct 2024 10:06:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tubjCuDDSOq3; Mon, 28 Oct 2024 10:06:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1567A60BA4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730109962;
	bh=wGVwSLHtp/ojs2jDMTPo8L8P5dif8e6zDE/LAoE99LE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=j9ZNu9B2qpPwux3cXGn9RZET/PO7PkaCGCUmu0fbYtJNQRqX9dMPGuG5bARiXImMx
	 KvkxXnHlilF/L0LJxIXSOltcNhR4k9gcF9zfR6DUiNht2aMb/rM7UuuXDrnEGyURBk
	 yu8gKBBhR9wO5NcTPo80pe9YnHwvspOXZyzOlQVq++sI0wLOHd+Ur7e5qzCsVbuu2P
	 30mB8M3RFs/QTowVPI+u5CkYZweB7sdhNy9QgH/go2UzoS3Q//s7ShxW2SxnL4Pj9+
	 LKdxq/sWNJsGwgkiaY0WMYm2oUY0OxCd5QayIYS39H266Gx6i/CB18vz5ewnnEln02
	 KPmx/PO3jUqMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1567A60BA4;
	Mon, 28 Oct 2024 10:06:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 858A5112A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 10:05:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8027A4089A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 10:05:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0GlDhU1xdBGU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Oct 2024 10:05:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 14318408A7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14318408A7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 14318408A7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 10:05:57 +0000 (UTC)
X-CSE-ConnectionGUID: 0j4BLVIDQGSADiltjcLS7w==
X-CSE-MsgGUID: dk5xMfVgRx6j4TxyvFIahA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40800497"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40800497"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 03:05:57 -0700
X-CSE-ConnectionGUID: zYcrrPEJTOiaNUl++z2gRg==
X-CSE-MsgGUID: G400d7ZxRySq7G2xsK4n5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="81731880"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Oct 2024 03:05:23 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 28 Oct 2024 03:05:22 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 28 Oct 2024 03:05:22 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 28 Oct 2024 03:05:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NFBl9SzzjplxXm1SsKgZdx2l9SGSCevkG0ZANoU23bVgZFkB6n8KUQaosa/bpn/LymjO6B76P6KvP8bl0q2N0JeRC0ArNfQqWJwgSdjZoigy0wXG4SislqyAPDHBmkh1Udw0aiN72WYvEQXhkquVpnPSA0OYR6HOpw4NNoKC+kHX43WRkaI0NwvuwUmnnglh9N2g/52guWCv5xC+Uai5N8WKOMPuxssKbKOFYD7j54h5Fqykg3cHhXH1XuzoJHwNNUKnpsWg7Ac9mmT7ToqmASaMqFluJZ/ap9WsWpSKjAOQwuUympOzvhBr43gVNPz3VrW/8Kt8C9bo7HIZZwkntA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wGVwSLHtp/ojs2jDMTPo8L8P5dif8e6zDE/LAoE99LE=;
 b=gTKjJUTjwEMJW0GHVPu9QbCpih8oDnjNR6KJFYnkGRULMb09XY56CiRW0Xscjqxk/rMBuTOV+RXqRBZBLdbCF4bK4euWXF2M7SBu8jHqW3LR6qfTJYNaXrxDks2Kq1qqEv06XESvD2Mq44f6oTW0E2dEPly0kKOfPpMc+Malez61biTgH4RRDsj2WG+Q4zNVIAPB4qTfHMv+6Lck70ql3u5KT2pvlrV2pCfvXm5NSqY48iG34XKgGSeMKFxdPemRsl9OPQ3pvQiSGt2RDjPJGq+e6Y+1GKTB7fEPcBGsU9CNm3bhT5ht57bpiZezpK8bAn4bLschs53cAQol4N3i4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by SA1PR11MB8840.namprd11.prod.outlook.com (2603:10b6:806:469::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.21; Mon, 28 Oct
 2024 10:05:19 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.8093.024; Mon, 28 Oct 2024
 10:05:19 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Diomidis Spinellis <dds@aueb.gr>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ixgbe: Break include dependency cycle
Thread-Index: AQHbIHR3kzROggvz5Uy9uoqHc36uPbKcADen
Date: Mon, 28 Oct 2024 10:05:19 +0000
Message-ID: <SJ0PR11MB58651AC933D3D32A943207EA8F4A2@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20241017085851.1800065-1-dds@aueb.gr>
In-Reply-To: <20241017085851.1800065-1-dds@aueb.gr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|SA1PR11MB8840:EE_
x-ms-office365-filtering-correlation-id: 7bb9fd03-47f6-4e2f-63e2-08dcf738075e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?fIDxfuTGAjvUI9nBHGJ25ybQxDW4AzXR+lQuV2Rce6SP/gQq1aj1UOStxF?=
 =?iso-8859-1?Q?+mUYWAlTh8BQHUZfCQqVZFm2aoAYukresKYGJFD3lfCx/OdVbdh7MdsqJv?=
 =?iso-8859-1?Q?p2idNPX2gZLLk5cUR1yRFkq/uk3PnPebFYlgjL9skUtgfQxOBEPGKK1Sez?=
 =?iso-8859-1?Q?pFt7KqK7Mqq3dC+BsZHIlwEqxka8ml5vyfppDwef8b/rQCJ4wVgHvFoilY?=
 =?iso-8859-1?Q?ejDODkeFmERE7iG6eENTgJkzdVjB63r490hs+HjvUR8wnXEdXbi45fecWK?=
 =?iso-8859-1?Q?PP4XCQtnCumIMIySV+CYm47zPpDLjrnZ8/lyn0/YTCJfdPs4NVumgPHWnR?=
 =?iso-8859-1?Q?Z/LR3F8LAKxYZnfSzaexL0Crq7i8dhCeLGnbAaQXN+DtlNgBxntFr4C0ik?=
 =?iso-8859-1?Q?R4WCgXZsuvFcmbmmAOUt2fXTldi7HRXhPbkxdOZYFs7oeIuE95vwl4aAFC?=
 =?iso-8859-1?Q?5zGSUkQmIWp+0GaQbshryyFtR05oVtfuhQRI0Tufwo/AflzrFrTpvtVKCF?=
 =?iso-8859-1?Q?q2hAGXrNPjuT4g8jJGMgi344W04S/Ofl7QMVp+UnSaEc+CixUn6e/WCOfG?=
 =?iso-8859-1?Q?mbAcKvsSrGkYhE5EGFu6n47bq1x+yAmgMh4KMfbzpJ4n4Sl4akqxF726ur?=
 =?iso-8859-1?Q?RNFhNPZRMb4RQSbJuXsII9bBuGo3fuLD0OjkWo71BQ6OHmzHkU5GjLUzOu?=
 =?iso-8859-1?Q?F44wV6V1ZGC9S4FOHeYaAYIn1Ua82DvjbCsH9YDFgZDMIh55P6WSjP9nK3?=
 =?iso-8859-1?Q?E0EYimeUPwXQQS2e6A3AuXcHIQz4mDk5rqC31Pmgq5TE+HgHw2tkeRa/37?=
 =?iso-8859-1?Q?ECBh+HKE+s4fFTehSSpM2kZpGxm9kqHoRYUX9cPuuJ5TjZtO3hJKZNWcCj?=
 =?iso-8859-1?Q?+uMKJSSvviqG6sW92w0UBxeA2jVt73K1Z2ixz5z/TWklCVGKtRiomc5hBQ?=
 =?iso-8859-1?Q?d5EQ3JlsRGGb6yRnv848MIsrg/ujdQXp6HykFXzghQyuWfJFg+k3GGiZU1?=
 =?iso-8859-1?Q?KYx/kd5l3oRMEZ28iSDRi45LrNI/ND8OYdROpPETG0PEYeNETEC7+6w90V?=
 =?iso-8859-1?Q?ZIxn6q03oYCe5Fsgxsq7uQog8k44h5CPgmIT2bSoCaFxOAyRgT35cxJjpM?=
 =?iso-8859-1?Q?a2imI/HMoeqFG/oEkJo5Y1INmqsn1vuMl2f2gszUJpcDTs4PeAPAr2zE94?=
 =?iso-8859-1?Q?4qJHcN9iD9vPo5UBe6IdoADH+JF0bjALn1J1elrqklscOyUwlHSX8N6yMh?=
 =?iso-8859-1?Q?umepxU1fnoSAkuXDpKhuTlOK+825tUDR+9gCAI6sR1KjMyavpnIGKYlp4k?=
 =?iso-8859-1?Q?bvzh1q8+bbnNn44IHH11vI+hjy3zfono8SkUHmdANKX9C0uBzE/zUO1LsO?=
 =?iso-8859-1?Q?GE+lxg9DhEdrAmEaArlCDTM7xuDpUcNUAu5khazs0iJx5lozk/Q6o=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?NHKXLrjJ+iSvxm6K3LCNlNoyyEgGawArcTxeZ/RbJJ/Hl8qBsXaNI7+ElT?=
 =?iso-8859-1?Q?dD9ZEb/daYelQXQLbdNpATVZk5Awjpau2V44qF+ZTLG2TpOhakDvs0ZxWb?=
 =?iso-8859-1?Q?JosSX3IOLedxVu/tN4sJQo9u38SSOjhE/w4p5yCY5DpxVM7d8gcEgqOBir?=
 =?iso-8859-1?Q?CTU4ZkN+EFjtj/5cIHZmWSao5OLEs7EHIhaKuFdfkCRVkhorGqIlYSE6au?=
 =?iso-8859-1?Q?FOQbJZ7f9dJe8VL44f6rxX9H8d2utbq1VTe9cM3mm92XS4773dpUa7NBgf?=
 =?iso-8859-1?Q?sd7KX5ko5I4aY5ClnyOekz08QLy2MFxrfLEyfHKQ0kkNTnQOMxoIVS1s6J?=
 =?iso-8859-1?Q?ll0oGElVuSp+ZSW2C0ZhdRm1rv5SuQXx26Ls0CrNhdN+Amv3lHsUev08Zg?=
 =?iso-8859-1?Q?QKksNhrTVa4v6cQEaCukYfeuSgcWpkCkrbUEkW5Sgffnu9c3/wlGXfOhAe?=
 =?iso-8859-1?Q?A6Qp3swYGplx5pjNlwKJv/S2yLXnwicjm0TR+HOBuApC2ADxQ5wrip0AwW?=
 =?iso-8859-1?Q?QyVqBgS32tV+an2D4ynBRMraVuASRlMbvE+q2DcoZKsQmrjjKsNLSu7+a3?=
 =?iso-8859-1?Q?n50sqUEZklqCjQGm+d9ct8xUAopkY2TJSSqReMda3TefhfPEnilYi5/1Uy?=
 =?iso-8859-1?Q?cmRSBULW9cMYnGx0VQ+loDv7ChcdREQrWjGZ0T1alRi5eukTp/uoqm3kDg?=
 =?iso-8859-1?Q?zZyH79hMqkK8H9OhBFIijAVzfujLjlpokpcuvqkFA1zspuTpO/zEpcD1QI?=
 =?iso-8859-1?Q?4MCeIf3swVU8HWi1bAalTgQzLJubkbG3NcfTlD67rOLqq2h0RbLaeH5C+W?=
 =?iso-8859-1?Q?oEVLyGACeWsM84/0mcldQkw9MflCWhT6N/Zf6sb4/1VhH7QHLi5giX467X?=
 =?iso-8859-1?Q?9kH2s7SFc3wrXhMeW2psj+252F2bGL2Qz7gKqBr9NFvoQFFCCtfFggp+wx?=
 =?iso-8859-1?Q?owWwUkbdcJ6oJg4arR1UVTtAGzUrcAUvjWlDQRRhNl447VCsj9Lcydqoan?=
 =?iso-8859-1?Q?FjbdhC+yIoYhFJuMGm4a2jhOpLNEtcG5SjHKtHFQc4NKfYPFSnA5Hl8L3n?=
 =?iso-8859-1?Q?ZMF8To6rbEQNqH1feHb1em6eVEbyT40FCiYk2GssoOzZPpQhYpeY99kft2?=
 =?iso-8859-1?Q?d3J0ijJnptQ86C+S2RMnm/nE8ACHXJ8RHFjbxe3XjVSAhnWpp5uPJg+s3i?=
 =?iso-8859-1?Q?UGqxAAXQEfYsMELQN3fQob7Sf+CDNjL33v5TSz/t37t4quwxVD5BaTwAJA?=
 =?iso-8859-1?Q?F3OJUC+b1YrBiHFPVlqVSA8O29RNr3huAQ3E1JTICXYxvyMx7FeXPw9Hjr?=
 =?iso-8859-1?Q?26NY5xGPC4texX/E6gbFF9DbCdGw2jhq6HbmsG7b+5QYKj7BIm+vPzJIZJ?=
 =?iso-8859-1?Q?f0mRdFCRyEokN2QI4mgHMdYbZNVup959UisLnp1Q5sFfKYTbjdvAxC49Rm?=
 =?iso-8859-1?Q?LKdjxGgmCZbJJQlZETowuAzea5HgeVVt3ORT3IdRUo7UfnKwgwgbxraBy+?=
 =?iso-8859-1?Q?FTDLwQhxYXj1CcnzDOEDCI5pZHzqYDENh566+FVbLfnbRlrnlsLJO0JF8Q?=
 =?iso-8859-1?Q?CjdypE5UYjxFHEN/oODcaCvaBGrAnRMjlcbRuVYVlU5PTLA9GeHqlx5U8V?=
 =?iso-8859-1?Q?NgNvI6ONGuSOnCMtzLI1uw9dW6aza4zH5OvRKTLA+g1clUjTDRQONqbw?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bb9fd03-47f6-4e2f-63e2-08dcf738075e
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2024 10:05:19.3459 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: STDR+hFrT5twdgiLPv/rSc5UuwJfKeihWX+zUSyPKcbHyE5dQYy211vpY0BF5DYP/B3ENVi7j9ZTF85AXj+a7KqQnm625hBK03f2KEIfuCk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8840
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730109958; x=1761645958;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wGVwSLHtp/ojs2jDMTPo8L8P5dif8e6zDE/LAoE99LE=;
 b=kPBdil//x9Y5Zxh6XPchBRwIT4+DT9z7p4RUsT6OrgxwXtI/55W9FJQX
 DldxeF6jq44N1s7Wd7nCs22+P9QDiI9j+7bdPk6jvR616+luPFc+l4p12
 +t6BIn7xuX39kGGMgiHricHHaDmBDTyBeCBJPemc2f4R3RB87qPoWQ1Jo
 MGxxf/yZY4MSV2mGnDcG2wVZeC5cuxTUiMwpjNcSouB7+zc0rupnaaGQW
 rK7kCE8nG0MLMNY2XPmFWncZ71/f6IQubrFIrSfzcZ/c941/aF6yoXPk4
 sUw1wcSBmR1L+RuZn/Zv7MT2vPFx3cklhWwgacV0Fszve2a+yrGPtiDqF
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kPBdil//
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Break include dependency cycle
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

From:=A0Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> on behalf of D=
iomidis Spinellis <dds@aueb.gr>=0A=
Sent:=A0Thursday, October 17, 2024 10:58 AM=0A=
To:=A0Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>=0A=
Cc:=A0intel-wired-lan@lists.osuosl.org <intel-wired-lan@lists.osuosl.org>; =
Diomidis Spinellis <dds@aueb.gr>=0A=
Subject:=A0[Intel-wired-lan] [PATCH] ixgbe: Break include dependency cycle=
=0A=
=A0=0A=
Header ixgbe_type.h includes ixgbe_mbx.h.=A0 Also, header=0A=
ixgbe_mbx.h included ixgbe_type.h, thus introducing a circular=0A=
dependency.=0A=
=0A=
- Remove ixgbe_mbx.h inclusion from ixgbe_type.h.=0A=
=0A=
- ixgbe_mbx.h requires the definition of struct ixgbe_mbx_operations=0A=
=A0 so move its definition there. While at it, add missing argument=0A=
=A0 identifier names.=0A=
=0A=
- Add required forward structure declarations.=0A=
=0A=
- Include ixgbe_mbx.h in the .c files that need it, for the=0A=
=A0 following reasons:=0A=
=0A=
=A0 ixgbe_sriov.c uses ixgbe_check_for_msg=0A=
=A0 ixgbe_main.c uses ixgbe_init_mbx_params_pf=0A=
=A0 ixgbe_82599.c uses mbx_ops_generic=0A=
=A0 ixgbe_x540.c uses mbx_ops_generic=0A=
=A0 ixgbe_x550.c uses mbx_ops_generic=0A=
=0A=
Signed-off-by: Diomidis Spinellis <dds@aueb.gr>=0A=
---=0A=
=A0drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c |=A0 1 +=0A=
=A0drivers/net/ethernet/intel/ixgbe/ixgbe_main.c=A0 |=A0 1 +=0A=
=A0drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h=A0=A0 | 16 +++++++++++++++-=
=0A=
=A0drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c |=A0 1 +=0A=
=A0drivers/net/ethernet/intel/ixgbe/ixgbe_type.h=A0 | 15 ++-------------=0A=
=A0drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c=A0 |=A0 1 +=0A=
=A0drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c=A0 |=A0 1 +=0A=
=A07 files changed, 22 insertions(+), 14 deletions(-)=0A=
=0A=
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c b/drivers/net/e=
thernet/intel/ixgbe/ixgbe_82598.c=0A=
index 283a23150a4d..4aaaea3b5f8f 100644=0A=
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c=0A=
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c=0A=
@@ -6,6 +6,7 @@=0A=
=A0#include <linux/sched.h>=0A=
=A0=0A=
=A0#include "ixgbe.h"=0A=
+#include "ixgbe_mbx.h"=0A=
=A0#include "ixgbe_phy.h"=0A=
=A0=0A=
=A0#define IXGBE_82598_MAX_TX_QUEUES 32=0A=
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/et=
hernet/intel/ixgbe/ixgbe_main.c=0A=
index 8b8404d8c946..c229a26fbbb7 100644=0A=
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c=0A=
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c=0A=
@@ -43,6 +43,7 @@=0A=
=A0#include "ixgbe.h"=0A=
=A0#include "ixgbe_common.h"=0A=
=A0#include "ixgbe_dcb_82599.h"=0A=
+#include "ixgbe_mbx.h"=0A=
=A0#include "ixgbe_phy.h"=0A=
=A0#include "ixgbe_sriov.h"=0A=
=A0#include "ixgbe_model.h"=0A=
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h b/drivers/net/eth=
ernet/intel/ixgbe/ixgbe_mbx.h=0A=
index bd205306934b..bf65e82b4c61 100644=0A=
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h=0A=
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h=0A=
@@ -4,7 +4,7 @@=0A=
=A0#ifndef _IXGBE_MBX_H_=0A=
=A0#define _IXGBE_MBX_H_=0A=
=A0=0A=
-#include "ixgbe_type.h"=0A=
+#include <linux/types.h>=0A=
=A0=0A=
=A0#define IXGBE_VFMAILBOX_SIZE=A0=A0=A0=A0=A0=A0=A0 16 /* 16 32 bit words =
- 64 bytes */=0A=
=A0=0A=
@@ -96,6 +96,8 @@ enum ixgbe_pfvf_api_rev {=0A=
=A0#define IXGBE_VF_MBX_INIT_TIMEOUT 2000 /* number of retries on mailbox *=
/=0A=
=A0#define IXGBE_VF_MBX_INIT_DELAY=A0=A0 500=A0 /* microseconds between ret=
ries */=0A=
=A0=0A=
+struct ixgbe_hw;=0A=
+=0A=
=A0int ixgbe_read_mbx(struct ixgbe_hw *, u32 *, u16, u16);=0A=
=A0int ixgbe_write_mbx(struct ixgbe_hw *, u32 *, u16, u16);=0A=
=A0int ixgbe_check_for_msg(struct ixgbe_hw *, u16);=0A=
@@ -105,6 +107,18 @@ int ixgbe_check_for_rst(struct ixgbe_hw *, u16);=0A=
=A0void ixgbe_init_mbx_params_pf(struct ixgbe_hw *);=0A=
=A0#endif /* CONFIG_PCI_IOV */=0A=
=A0=0A=
+struct ixgbe_mbx_operations {=0A=
+=A0=A0=A0=A0=A0=A0 int (*init_params)(struct ixgbe_hw *hw);=0A=
+=A0=A0=A0=A0=A0=A0 int (*read)(struct ixgbe_hw *hw, u32 *msg, u16 size, u1=
6 vf_number);=0A=
+=A0=A0=A0=A0=A0=A0 int (*write)(struct ixgbe_hw *hw, u32 *msg, u16 size, u=
16 vf_number);=0A=
+=A0=A0=A0=A0=A0=A0 int (*read_posted)(struct ixgbe_hw *hw, u32 *msg, u16 s=
ize, u16 mbx_id);=0A=
+=A0=A0=A0=A0=A0=A0 int (*write_posted)(struct ixgbe_hw *hw, u32 *msg, u16 =
size,=0A=
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 u16 mbx_id);=0A=
+=A0=A0=A0=A0=A0=A0 int (*check_for_msg)(struct ixgbe_hw *hw, u16 vf_number=
);=0A=
+=A0=A0=A0=A0=A0=A0 int (*check_for_ack)(struct ixgbe_hw *hw, u16 vf_number=
);=0A=
+=A0=A0=A0=A0=A0=A0 int (*check_for_rst)(struct ixgbe_hw *hw, u16 vf_number=
);=0A=
+};=0A=
+=0A=
=A0extern const struct ixgbe_mbx_operations mbx_ops_generic;=0A=
=A0=0A=
=A0#endif /* _IXGBE_MBX_H_ */=0A=
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/e=
thernet/intel/ixgbe/ixgbe_sriov.c=0A=
index e71715f5da22..9631559a5aea 100644=0A=
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c=0A=
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c=0A=
@@ -18,6 +18,7 @@=0A=
=A0=0A=
=A0#include "ixgbe.h"=0A=
=A0#include "ixgbe_type.h"=0A=
+#include "ixgbe_mbx.h"=0A=
=A0#include "ixgbe_sriov.h"=0A=
=A0=0A=
=A0#ifdef CONFIG_PCI_IOV=0A=
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/et=
hernet/intel/ixgbe/ixgbe_type.h=0A=
index 346e3d9114a8..9baccacd02a1 100644=0A=
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h=0A=
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h=0A=
@@ -3601,19 +3601,6 @@ struct ixgbe_phy_info {=0A=
=A0=A0=A0=A0=A0=A0=A0=A0 u32=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 nw_mng_if_sel;=0A=
=A0};=0A=
=A0=0A=
-#include "ixgbe_mbx.h"=0A=
-=0A=
-struct ixgbe_mbx_operations {=0A=
-=A0=A0=A0=A0=A0=A0 int (*init_params)(struct ixgbe_hw *hw);=0A=
-=A0=A0=A0=A0=A0=A0 int (*read)(struct ixgbe_hw *, u32 *, u16,=A0 u16);=0A=
-=A0=A0=A0=A0=A0=A0 int (*write)(struct ixgbe_hw *, u32 *, u16, u16);=0A=
-=A0=A0=A0=A0=A0=A0 int (*read_posted)(struct ixgbe_hw *, u32 *, u16,=A0 u1=
6);=0A=
-=A0=A0=A0=A0=A0=A0 int (*write_posted)(struct ixgbe_hw *, u32 *, u16, u16)=
;=0A=
-=A0=A0=A0=A0=A0=A0 int (*check_for_msg)(struct ixgbe_hw *, u16);=0A=
-=A0=A0=A0=A0=A0=A0 int (*check_for_ack)(struct ixgbe_hw *, u16);=0A=
-=A0=A0=A0=A0=A0=A0 int (*check_for_rst)(struct ixgbe_hw *, u16);=0A=
-};=0A=
-=0A=
=A0struct ixgbe_mbx_stats {=0A=
=A0=A0=A0=A0=A0=A0=A0=A0 u32 msgs_tx;=0A=
=A0=A0=A0=A0=A0=A0=A0=A0 u32 msgs_rx;=0A=
@@ -3623,6 +3610,8 @@ struct ixgbe_mbx_stats {=0A=
=A0=A0=A0=A0=A0=A0=A0=A0 u32 rsts;=0A=
=A0};=0A=
=A0=0A=
+struct ixgbe_mbx_operations;=0A=
+=0A=
=A0struct ixgbe_mbx_info {=0A=
=A0=A0=A0=A0=A0=A0=A0=A0 const struct ixgbe_mbx_operations *ops;=0A=
=A0=A0=A0=A0=A0=A0=A0=A0 struct ixgbe_mbx_stats stats;=0A=
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c b/drivers/net/et=
hernet/intel/ixgbe/ixgbe_x540.c=0A=
index f1ffa398f6df..81e1df83f136 100644=0A=
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c=0A=
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c=0A=
@@ -6,6 +6,7 @@=0A=
=A0#include <linux/sched.h>=0A=
=A0=0A=
=A0#include "ixgbe.h"=0A=
+#include "ixgbe_mbx.h"=0A=
=A0#include "ixgbe_phy.h"=0A=
=A0#include "ixgbe_x540.h"=0A=
=A0=0A=
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/et=
hernet/intel/ixgbe/ixgbe_x550.c=0A=
index a5f644934445..d9a8cf018d3b 100644=0A=
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c=0A=
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c=0A=
@@ -4,6 +4,7 @@=0A=
=A0#include "ixgbe_x540.h"=0A=
=A0#include "ixgbe_type.h"=0A=
=A0#include "ixgbe_common.h"=0A=
+#include "ixgbe_mbx.h"=0A=
=A0#include "ixgbe_phy.h"=0A=
=A0=0A=
=A0static int ixgbe_setup_kr_speed_x550em(struct ixgbe_hw *, ixgbe_link_spe=
ed);=0A=
--=0A=
2.39.5=0A=
=0A=
=0A=
=0A=
Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>=0A=
=0A=
