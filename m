Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB7F9ADE4F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Oct 2024 09:54:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E64BC4070B;
	Thu, 24 Oct 2024 07:54:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9UHwZdP5Y9ws; Thu, 24 Oct 2024 07:54:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 22F52406B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729756488;
	bh=m0D+tLE4VRnCNCPD/ehbZXgLycGO/nAfl3JpWZm/FR4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4mq9K/97YANSXaIRi+7IgLGWs2zeOInv8KXi53RFfcCRWIoWQd8iGg6wTfmjF2dCB
	 m5tdbB/VqX2+FvMti9YDtqx3HjIVxKAxJ4IgocB6/sJcK7E+P5CUfWr0b6CEt934rc
	 lIumP30x5ambSWfFD7ts+BkLcIq8vxe5yrdUmLj1WLMkGZxwp7O386soYkYItIMuvn
	 TNgAj2+b7nf87GNrjExcdrQD/5uNFU+7V4u8picB5TDw6SCQE6MLPFg7uRHZ/zH5EM
	 az4fgpexTrfMeS9AW/GFhRyB7ZFLQ2UoxFntdUpIL+PayLcJLSIs7WMaUj19dlYmNC
	 nYmivfJjg12tA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22F52406B8;
	Thu, 24 Oct 2024 07:54:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8E19C27ED
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 07:54:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7C5DB60771
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 07:54:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YCBxMrrERp9U for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Oct 2024 07:54:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A36A060715
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A36A060715
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A36A060715
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 07:54:44 +0000 (UTC)
X-CSE-ConnectionGUID: PSl3HkJZQhSi88zMJAoI9g==
X-CSE-MsgGUID: 4G1eEfFERfCHY3DI4XdLWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="40763996"
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="40763996"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 00:54:44 -0700
X-CSE-ConnectionGUID: Id8I2yh6QuKyG0uzPrQ6OA==
X-CSE-MsgGUID: 9Kbkm7BeQW6WAd5nPTWPdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="103833817"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 00:54:44 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 00:54:43 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 00:54:43 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 00:54:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KBRxIpd10bgoKVuBaUL2LjNzD4OO8VRVKaBZd7KtTp0l0pjsGqbTnOG7zyeAJBkmU/fJ0IuNuOa7kNIYQZTP9qyKfzlOJZWvpkmuRlRIQogOjD2f9fW19IHKdvY/gUQ+3cc3+F7mQTJzqZcf6H6YDb6mZfOvSAnjeuEo86bxmRNZyOlVMCBnFA6Ighm3IQMrERhMvhI48vsPuW4VQZGqnOkXqG92uGDA3aOBiH2ZYtVgyuO/JFGFSO1W2s//yRDMq6EmXWAQ/cNXZqQqvMNYf6KSVzRty6IYTaAByifHT39rnPMQA6tFgDKqQqMp0DxDJt0kY8sOJcTjR21D3fKk4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m0D+tLE4VRnCNCPD/ehbZXgLycGO/nAfl3JpWZm/FR4=;
 b=Oosv7AgLAM9+9+F7PMCt5TDLLsbTXMu4vDNYWU5qOQKRcRFazRMUkx5FrqSBU4qcMcDg1AHkr7E8mV1cf+0y3LyZxQ8ZfKs7VYPt9A+MuHXUwHegk+WCEshpSaN/fRAARONePuH0bos2n0swp+d2ChLhPfqND3S4cZi1FOufQ+WHNS4nhb8NyRJa/rTAmh1gfcTqGDLBm4JL83j/0ZDjbfKQaR3GANio52qQhHG/fkl9PRdIduWbcm5x5xTPyIJrcuXXOmL0EWzHwe/F63rl7aSRfE/1ro04RKTO2RsDGX75Qe8PsVUBkMnUQfMdxLBuIHPX73ZCvkJj9U51EgGCpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by CO1PR11MB4819.namprd11.prod.outlook.com (2603:10b6:303:91::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.20; Thu, 24 Oct
 2024 07:54:41 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%3]) with mapi id 15.20.8093.014; Thu, 24 Oct 2024
 07:54:39 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Szycik, Marcin"
 <marcin.szycik@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [iwl-next v1] ice: add recipe priority check
 in search
Thread-Index: AQHbG6vBWTR5GFs8z0a5mDQFNHTxQLKVjvFw
Date: Thu, 24 Oct 2024 07:54:39 +0000
Message-ID: <PH0PR11MB50132ACC6DC931D072512C31964E2@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20241011070328.45874-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20241011070328.45874-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|CO1PR11MB4819:EE_
x-ms-office365-filtering-correlation-id: 05043745-ab18-4846-17ab-08dcf4011d01
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?CuiUFAinUAsDNlIvKdVUfwptIoGFVD1SLJPpA7H8fdM5NiS1hHK5THR6WHgH?=
 =?us-ascii?Q?+n6lWd3cASOHcw1rEMLxngNpca4Hvggf7dlWjaBfQxyrzXaiCnL7zndUDSQh?=
 =?us-ascii?Q?O3Up2TLILxlxwb5KqiOIWCeZXgqpR6HNeXZTxHkESd97kRrIBDuqXohIA/Yw?=
 =?us-ascii?Q?4sXJgOQPlMXiNBC7hBDacxYVqxlRG8muYDAG5sr/TRoIn367CcI4HZZyu+Qc?=
 =?us-ascii?Q?r73UyyU1s2CfsmrhyGQVci5X8l5YJ3WF0Io7WJlEF+Lu7H9SSSETDUskrpnm?=
 =?us-ascii?Q?unBhLrRRO3fienbcfhsRVwGhHo8ehzaWUD7U0CI8P7qb7BShJwxVvwabZI5W?=
 =?us-ascii?Q?b90iRcoxwwKHyvO8GRpbS2Tu+m0IwrvmgrRqCravaklzcfMss/GEBVOcGfu2?=
 =?us-ascii?Q?GPOD9Z13avw1Ftsl18EMe7Xmzk6wbmLUblEFuGzdJ6DJ/Hw/d2NHbFn0Imrg?=
 =?us-ascii?Q?7OmKayEDLpMEUBpfFzcNB4cMtacwINfvpBUZhbbt7cwSlxs+dKh2sXgZqLnB?=
 =?us-ascii?Q?EJQQBH8gzNshVyiZyHy5U5Qxoi0T3+H55uyqCIP+13oIxHBlt/yyktIpMS1q?=
 =?us-ascii?Q?k5SaXbEHxvr1PwyjLbYVzrmoonMfQLI1Qxb5gWOxtt9Gc35SMaC8cSJqGNU/?=
 =?us-ascii?Q?bdqPKIjvba+CHgxXy9guQXr6R0JBBuNjE4f92X0Ch+Evu4cFReHwzcuKOsiz?=
 =?us-ascii?Q?8YrsGERVxz5nCMcRwM1796UGp7tT0hgZ9iV0PVWBkbgOVxjO0VX7iZcEuLPB?=
 =?us-ascii?Q?Wpvy8hdUEAB3qGJf4+ZQLSlr6RUfyxw8GIcd7CM1Z+2234kYD0pnBMBKfvr2?=
 =?us-ascii?Q?qQmeuKOd2VIIXnPaigK0ZAPe410SeH65yQmvA6MJH2uqFIzC5le/3/MKjpKc?=
 =?us-ascii?Q?fBfK5szCbdf8HBLWxiHqNB/Pv8vixyD/eYMuC4X7c/W3Zbw3XYl7sJ3DMRwO?=
 =?us-ascii?Q?J0/QjHDz7at5zzy+5WtIEYsx/In1NOuh9JRB5a4HdDDpNKOCQMCe1ukGRslZ?=
 =?us-ascii?Q?m6/UT/pv0Y8y+LA9XYK7DhDN45mY3pfsnYbAPmiNbG9Y4o36n5AmEa2isFGX?=
 =?us-ascii?Q?7CLAA6UktIoE4CkWKlsAb6DGnPdmvW2A74wvszW28PupshAd2aTFniHpDNPD?=
 =?us-ascii?Q?ZUbiHQOqQypw6ZV+pKxmERV+Xu31cI4U4OU1vrNKgiMcvqQ1TtJuINqvusGO?=
 =?us-ascii?Q?TFJaHuW8fVWRk/Cr7N+oU7qapnIDwh5BJfcShTjRc2v0FWomGM8FbuYcDUBS?=
 =?us-ascii?Q?co2pnua1+XB5DQnr/g3obmO/EroDV5BExDIGkZxcAQZOs4uwgoC1hriQF/Hr?=
 =?us-ascii?Q?3JLh8ivk2WX6XjF9IhdEb+MQFUVYvettAhgKNY6GxtAlfDUvm58UzkUBH+57?=
 =?us-ascii?Q?t0Ic8m8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9vmat8FjjjoS0xxQ+wCfsxpEOr74qXUdZWmXN0DzJUgsMcF3Oj9g3QNtf4Lv?=
 =?us-ascii?Q?ZgH/W1KsawH0J6krBIf0IBHHjyOV3WgNASoZ0PzAt8vaSt9L3Dfyce3n9QGQ?=
 =?us-ascii?Q?P7uWDa7KTwbVsP2+vJJOKDC4mwDmTEnQyuNggqs2BJMQ4juM3wV8HuI0M6z2?=
 =?us-ascii?Q?o3FF5QDfU5rKkuVOjucQX0hkatgUX6m9A7bzc6A9I5yOFJGOClVXn9lSy2Qn?=
 =?us-ascii?Q?Vydzo9bWdaO0BhZ98TnnQCJbaD6boyCPc+aaKXMrg0qCGhshkrNoWBbw2mSS?=
 =?us-ascii?Q?YL9aJNhG107mMAGZRbfEauRpcJZkkilb2O4AvNG74L4CgxpGYAJUgEDd6eVf?=
 =?us-ascii?Q?lEL2U3YsBIr4bn5t4GiypzIFMMhaptFN7VFPCVzcMnzsyX+DQ7r6Gj/UMimH?=
 =?us-ascii?Q?8p16vhUAiUXpqzLvzJSBHcqZ+t3WUT3mAdW9kFjSJPvNFirWoay2+rO1dBFu?=
 =?us-ascii?Q?Fsasv0GfAm+7f/Cw+F6oPtqa04gByQcLvyj5cZB9si3ibd+DVGwtlwiNofKS?=
 =?us-ascii?Q?e8RW4kTqY69raT5ch6kZDz/bVYPUd+Zxmi9CqXPwzRW1h5I5a/0arH2JqK0D?=
 =?us-ascii?Q?MJqyhnK80rjU8H/OBsM99f27pe8fA7ceJcDKYLZo3pjRYx1AhBXEoyRfZbxJ?=
 =?us-ascii?Q?dh8AMLqRdIhBVIqRle8xhQfXNZ/djQQpEgujLFq86BwiocYjQzPosnOzSFcE?=
 =?us-ascii?Q?DHY1plKuJldghVbjn/VX3Vs1tX7udrF5y1xQaxmFqbk30qeSM3yLz7NNBGDy?=
 =?us-ascii?Q?ERtYivC9jmOwYzGOr7FrEhAbNK/T1ZltxyDoHFcC+TruXTh64uzWJHX/IfjI?=
 =?us-ascii?Q?9XkCHqciHGXWxkxkdBzlQTlRbL6o1wHoQQOf9fWldNbCqGLAsb/7o2GOC+Hu?=
 =?us-ascii?Q?6nklxfQPveMeYvUV2fDRh+e7OgBXhhlnRiZbW/mh9BO1AYaqtKUZBSFxtZ3T?=
 =?us-ascii?Q?knSivTgkugG0VFYkPmLMQfNuua38PeQc06pXjO7+sHIjqlxlx1tO6J5uGZdO?=
 =?us-ascii?Q?BO+atBnfyQl1cD/K4On3CPWavgfW4Lu2aM+k0ob/Mk3knqQ0gW7YmHRC5U4C?=
 =?us-ascii?Q?s9iG8414nbzxJlg15EmFu266SdoSyt2HB1EEjlQNFpx2aGwcqKnDM4qplMZr?=
 =?us-ascii?Q?o581+wgu3iYwb7IUSf09IU/RIQmaAGNYXaUgdEXxrN7pt0XoN0v2j/UF4kOS?=
 =?us-ascii?Q?XWc0xOCqW5eWxs/E2pdIFNymK/XzHaeHLZg45qrJAA9O9pj23TMSHCGWHm/F?=
 =?us-ascii?Q?HpGZBEB2Q0UiW+S6VtxWoWwaOU33ySFRg9XZbWYzL6UXq8jcmbJHQ2Ru7iCb?=
 =?us-ascii?Q?Sp0PkbAliBtSvoYvB4zT/6D5eMTgGqEQvoKhorCxzwEvUMV7LWMjGxAlQazB?=
 =?us-ascii?Q?OvOYJZL8J2h8Dw/CUUC5R1b09zmWnjPeIFMFsJ+VruMMJXVMgTZxiS7ribWK?=
 =?us-ascii?Q?G/ABPh51BJ2dpYsa5JmqJEg93M1GEiPVgsieMPWrNwzSzldgsBadbZ9zCIAM?=
 =?us-ascii?Q?+b19w/UqBh+9OMOkMhStebJVVAY9yIPy73H3t7x+fAHzw47/bJT1gbqE/z1g?=
 =?us-ascii?Q?0U7ZD+h5NrJyfMmRNPzVQVDet57NRPUMRle8MoOVn+fnHnx0Td/1y1DbW9vb?=
 =?us-ascii?Q?Tg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05043745-ab18-4846-17ab-08dcf4011d01
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2024 07:54:39.8275 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lZm06mFBneopafD1Xx6uMzmdGFSIY+eIxa0unaxyiylm9iRU9zYsPGTWuZm+H7xlNxIkpQGGLm2HARWNGbYWoYLj6uW4Osuv60c8L73QZMI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4819
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729756485; x=1761292485;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xAmxhyOxQe8l5ksUSSWHRVKtfkoOSPA0OZ+eCvGVSvY=;
 b=i0kkB6YRlgsBu8gMP+DaA6CeksJ2zH9Dc58/qYwEsNv1qMBdSk69ftk6
 AAXOR2J0aPuQ7MVl1ElaAfxzSIiG2fxgTFn9+/ZX5NKW8fmfz5VmT2Rzp
 uaikPoKRUA+H/yPIZ8ikQ4kti5jQA2LQcXzbg9y057jQwTs9S31R+PZS5
 aBXLCU75Vwu8puj6yUQXvhkBzI4sskmq5GJn0PJ1JSxg0yzLQ3SJhqW2E
 H0bCjKT1G60818oEjwkFYhv6/bAUMfeo+91bxyYYwbiyqe9MHfo4SQGq0
 vxjQVUw1R4B1f4u/vI5m46Nw4Ls7LW3oySFZdBW/96o+/zA+QronZxvCQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=i0kkB6YR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v1] ice: add recipe priority check
 in search
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
> Michal Swiatkowski
> Sent: Friday, October 11, 2024 12:33 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Szycik, Marcin <marcin.szycik@intel.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [iwl-next v1] ice: add recipe priority check i=
n search
>=20
> The new recipe should be added even if exactly the same recipe already
> exists with different priority.
>=20
> Example use case is when the rule is being added from TC tool context.
> It should has the highest priority, but if the recipe already exists the =
rule will
> inherit it priority. It can lead to the situation when the rule added fro=
m TC
> tool has lower priority than expected.
>=20
> The solution is to check the recipe priority when trying to find existing=
 one.
>=20
> Previous recipe is still useful. Example:
> RID 8 -> priority 4
> RID 10 -> priority 7
>=20
> The difference is only in priority rest is let's say eth + mac + directio=
n.
>=20
> Adding ARP + MAC_A + RX on RID 8, forward to VF0_VSI After that IP +
> MAC_B + RX on RID 10 (from TC tool), forward to PF0
>=20
> Both will work.
>=20
> In case of adding ARP + MAC_A + RX on RID 8, forward to VF0_VSI ARP +
> MAC_A + RX on RID 10, forward to PF0.
>=20
> Only second one will match, but this is expected.
>=20
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20

Hi,

System hang is observed when creating the VFs in Switchdev mode with the la=
test next-queue kernel. Need to powercycle the server to recover the system=
.
This issue is blocking the validation of this patch.

Thanks,
Sujai B
