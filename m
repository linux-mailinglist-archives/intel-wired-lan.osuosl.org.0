Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCE9988FBA
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Sep 2024 16:40:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3DC32813D0;
	Sat, 28 Sep 2024 14:40:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s4iXkcLKHKfZ; Sat, 28 Sep 2024 14:40:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C6B281444
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727534429;
	bh=lw4dvJzkXWf5R2r30t9Baq0X03C53buXFg3gE3ZL/cM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Jd9Kx2i0e8MHSCgUqergnQ7XAApSfPosfyvkatKt6bB7qw0HB5XtzeFLbnpdjRAef
	 v+7fNslP6PsSED3PxvnB+0a6WRG2AqFiS8M71Nfq6uyfYA/vkxZ3JDQx534wyFkTPy
	 sYPxlbJ4P7aC6xLVEFn2O3JryiwFnkpbzsjl/113me8Z0dPAEDhaFSQ22GmVyWBNh6
	 af7LvJCkxI6TcpChFbatVVe17rzRQ81HJsSgLcpqizeiFi/ceyX1v5e2uMaAWncOgb
	 F33TgOC5vYqwC20SB1iGgTuChbThF0at/CQiZpZ9sOPqKZ7p/63fRQ01yOjVOKBLPH
	 cBGWMJBw92wpw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2C6B281444;
	Sat, 28 Sep 2024 14:40:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 570D81BF3E5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Sep 2024 14:40:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 42C3C40442
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Sep 2024 14:40:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N3_FVVIZQpnE for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Sep 2024 14:40:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EF94C402CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF94C402CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EF94C402CE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Sep 2024 14:40:25 +0000 (UTC)
X-CSE-ConnectionGUID: zRw1NGvJQtivRBGM1/J4KA==
X-CSE-MsgGUID: STaoRqSUTEqueyKJnKb7xg==
X-IronPort-AV: E=McAfee;i="6700,10204,11209"; a="52083696"
X-IronPort-AV: E=Sophos;i="6.11,160,1725346800"; d="scan'208";a="52083696"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2024 07:40:15 -0700
X-CSE-ConnectionGUID: DP335C5ZRNacOV+9aUWNdQ==
X-CSE-MsgGUID: HNabEfPyRgWB9dtYQdq9sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,160,1725346800"; d="scan'208";a="72396786"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Sep 2024 07:40:16 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sat, 28 Sep 2024 07:40:15 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sat, 28 Sep 2024 07:40:14 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sat, 28 Sep 2024 07:40:14 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sat, 28 Sep 2024 07:40:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jZ4AscCKz/sCgbq5HZmTr7L+hnZjZ9e4fIo1U8RULWFCZ+rBjsPp3gmnWpXixjUiLZVoTKVbZWm5/wTweTja4VtWBkJVhpMtiX6xi+9OfvuHZtyH9CWtcORDvG8NPOk/Nc3h/LRJlVwt5SXBadMJLk8HJ2qdltASJkJd3hR+uHZSNi/dcazsiNeUuXmhUypQILPEcRIZ4fpxJApl5iQIS3MxOo/lLlWAD6EgfmXO2lBX48iNufCMh/875h9pjhGtPIdgiPkpOlOG9U1+QT7SmX6rVzlG755ehEZkxaWsXNU2yS4OcD0+3HZuJBDmCVqeyoqCk5jkkrdrALZjpjBpCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lw4dvJzkXWf5R2r30t9Baq0X03C53buXFg3gE3ZL/cM=;
 b=Vj8qmuVd/VjjAiRRYSgD2mmD3FHU/q+4HwXqC3tewuCmOzZIjZCktHcdm7NjIge76aCRhFyO0cxNdVSfXVJbyxyrunL78lhphRSvNDiLuvv3ElHzGZksx40ENvjSdwnDpY3RausqiQrff0Pw4hsS35asoPv+CqLQR/HzLZxz3gCJENHvsQ9h4TlxKtLOVQduGm6bWzwzWK+J142zaznDdVqo29NI+9HojHSyROph8fDSu99WuXVC/Lxnqq77r6UVsnqGeMqfkLeNzcpdJHjheDo7go/93RqzTHWjBbhnpp7v5LmOLHVAEbAMvWQCa+SaAolOneUqYmYnLd8FmdX+AA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by MN2PR11MB4632.namprd11.prod.outlook.com (2603:10b6:208:24f::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.24; Sat, 28 Sep
 2024 14:40:06 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.8005.021; Sat, 28 Sep 2024
 14:40:06 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Mohamed Khalfella <mkhalfella@purestorage.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "David S. Miller" <davem@davemloft.net>,
 "Eric Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 "Paolo Abeni" <pabeni@redhat.com>, Auke Kok <auke-jan.h.kok@intel.com>,
 "Zhong, YuanYuan" <yzhong@purestorage.com>, Jeff Garzik <jgarzik@redhat.com>, 
 "Ying Hsu" <yinghsu@chromium.org>, Simon Horman <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 1/1] igb: Do not bring the device up
 after non-fatal error
Thread-Index: AQHbDsW+fxXahknZmk2DkrojY1IZebJtSiLg
Date: Sat, 28 Sep 2024 14:40:05 +0000
Message-ID: <CYYPR11MB8429494B65C5E9A025BF8F96BD742@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240924210604.123175-1-mkhalfella@purestorage.com>
 <20240924210604.123175-2-mkhalfella@purestorage.com>
In-Reply-To: <20240924210604.123175-2-mkhalfella@purestorage.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|MN2PR11MB4632:EE_
x-ms-office365-filtering-correlation-id: 9e17bac2-a7a1-472c-a872-08dcdfcb71d4
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700018|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?wEAzQ8bAYGFBUZr2vhgdW9JMm7FlJHyn28SOw5bAznP0DNejBP6klUqLdZPP?=
 =?us-ascii?Q?6FfnKDis3H047b88zYgqEDd2UbxXXNO7WkhL4SiQBCw1dPYhoY9tplu2J0o/?=
 =?us-ascii?Q?BaIm4p63TiZl3FjHCYxpJueaJ+RHN3WQeMzLS4LfGenwoVF7mRQuKLQGsVfO?=
 =?us-ascii?Q?RJ0O3AUVeJdtub6sHWvI9Nu5M+zpRBr0E1phM0XP1fx8MXzqFyyFrqqGIbA9?=
 =?us-ascii?Q?3vQizpuYErspZ1TumLBVQukEJUtcetXN1sN/qukgsfLoSxd/qDbXi1gOoODa?=
 =?us-ascii?Q?Dt+i7ZxZGKX3SnRU0zk6orVxLijqFuT+WjLQLY+Uc2/5ABNG8hkX46QqFySt?=
 =?us-ascii?Q?ABGeVIxKm9FGTEIXEjbkjFQ3CYYeMc+BiY5veo1thdeRPxoH4/BrxzPMow5P?=
 =?us-ascii?Q?FBFWsGcUv6D9ai94BqbuYyVVyYl1qM4MQa99BUKJWAJTNqUMXjDyfzcbL32j?=
 =?us-ascii?Q?GSh2wmM1tGOrZidL0RjCwbuDzPM8jKUgqtV3rReWGPdIc6NkTovowRDsFD8r?=
 =?us-ascii?Q?NbiXaM/f9obk0UT8+bLEL4dATzhb0iBVw3tK8xf7LaqZtOq7/JW/Aw4b4Qed?=
 =?us-ascii?Q?IZ5D6hkYbND/eJOKVfDZKevgtwjh10ac/yZBKQmqL1vXRqzZBo4lgmwy0GV1?=
 =?us-ascii?Q?4/8gFq/nipk27+0rEVT7/4PXtCi1a0+4/FOQtnBwTHlBCOnr8n6jm4urPEZQ?=
 =?us-ascii?Q?hRpPGhooG4bBGo+FE0z1AT05FM/nzKoZZ1oZ6ZIFewytOBuDJNbpXjdbhJ9M?=
 =?us-ascii?Q?ZpkK3VZzEO6IxOU0+sDULbn/XPDGlLl1PM8Bf+Lg/imk06tZxLBEJnnTIql/?=
 =?us-ascii?Q?57zf8DPs+57SLDpscYIx+JaFHUthdnjiV2CAcHbJiI6ziFZy1URN58tnIfM3?=
 =?us-ascii?Q?dWnAv4ZmTXSrsXAm7X1Y/qg1qx/Fvya1UAftEbFU+0SoAU2xN8BCXpZdDgam?=
 =?us-ascii?Q?TpoIMUbW2cQHZGgWcCNMj0lFCckTE7u/hWR3uLjCL7uQnD/SS694/OAtjN5l?=
 =?us-ascii?Q?XXYZIt27qUMvt+6veeEzYHEDo6sTVea/WyA2xisWUlIHPnZA7LSWZKv6qdxA?=
 =?us-ascii?Q?Tu87JNK0/4CKxDkWwSzYjfwKE62HBAQBGj5WVZjkZ8dNTmgBdgr93dY+XOUH?=
 =?us-ascii?Q?yDhHmdBimxQTNFHiobsL8MmUBFoG0AU8R4QGAH/81Tv3I4Da2uBSueg9iXTd?=
 =?us-ascii?Q?ABxrU0On7waFNDg6kRm3QsGKrsmi7JrU/NCSdCEvDncxjkEqe+DrdPPVhnQp?=
 =?us-ascii?Q?avct7b0TxZdUYW/l30L15uLOnY1C85qPFQsqfiNVFrMeKrNGBM96fWYnwVMq?=
 =?us-ascii?Q?g7/lF9s1F4lFrslrqKnLjG1wGq842tkPRTVrs4tFVcC5yAHvjBraAFh6JTnk?=
 =?us-ascii?Q?jWiibRQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700018)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?T3GD/xbDJYPtM4NySC5huCqOCBycoEWtHTUm3SyLFKPrNWaYhbwImb+fp/QL?=
 =?us-ascii?Q?A+CPgTRjHueO87c3dbyBQMmSA9yDQC/NG4qrHKDHl9nAFEnhRVR5Z1rM+uzW?=
 =?us-ascii?Q?LwZaDusIdH8IfHfHkuVZZ2UrqRPNiZvdpy54UsHRAWUpGZqFmEGa4yfr0Pob?=
 =?us-ascii?Q?bZEyJHYzLHp0Nq4jFzRwIvviPzmjI9Lp0bGzGXBKSAprPtiAYCI/QsNaJUH1?=
 =?us-ascii?Q?d3ba1exHN5/eDzglf4FDlp2MWKtI7xN1KvRfA48uJ+hwmqEfIQQGZDMM/U/O?=
 =?us-ascii?Q?PkyTtkvoZdsyCB3OPIv7ityF1ntuXBRDBkW0va91JV//TIr99Aq+zkMqSUyP?=
 =?us-ascii?Q?7h/cYOGxgqdO4Dq6rETAigrYmgYrddvXrtSlyQEgRSdA6iDiABjV3eUndIJ2?=
 =?us-ascii?Q?189XfX01zKAWcE2xf9vEVBD1eoOfNg75FfijxdGjEKpqYi/KnzgtBpToyGpH?=
 =?us-ascii?Q?eRQPnEyEFzMH8gKkSvHLn6N1QWTxPDKvHmswWs3RY7GvM/9xrSAbvUMINkcc?=
 =?us-ascii?Q?sPyKXLLTqrlmafB61Paqshawho/JjLpdrmc2ynD4YgxwEJxlkTUKQ7xkHgTm?=
 =?us-ascii?Q?Vpc/m+c+AiTjahQisZxPLtj3tsk922aHdO5XvsEWJotUqwczhPaZ3duBlYCO?=
 =?us-ascii?Q?qUL4YPWFdlLbXU6EAaTWZwYRNT5deu1Ror20pJyMc6HtjqRL2JhyWfnmPddT?=
 =?us-ascii?Q?zdbeLZlMuWu9gyVL5TO21FAk7fp7InbdluSekD1P+FEJmQ2Hhr8XTeKg5szk?=
 =?us-ascii?Q?2bQSJHFcJ+vsaakcJEE2hoGOVSW2qC4aB6bEvEEzBuB+cu9LHMMuAVnh/Mh2?=
 =?us-ascii?Q?ec0uV19BV1Eh7r0ypaHz8RK0SMr2DzxpUGX3b2h8PaN9VELclf1L9jLWU33d?=
 =?us-ascii?Q?3ByqJ7s7iaNCHc9mOXnCZT9xPyFJrLadMqgzUF6AM5NYCFwH0sBIe4PxqMp5?=
 =?us-ascii?Q?B3y5SNq+kLaODd4HkRGI08nUPl4lxzV0LRXmOduEI+CfrzHYqJgKMQskMCVs?=
 =?us-ascii?Q?5odauu+FVWQXHZHXzuwtcxMdVXIIJvuAMEBM9VV+0RB0bpQGrAnnGKSxXHQa?=
 =?us-ascii?Q?HXmglxyt5Iv9A/0OYsfLzxsfXnNSXyzxaCBS83ufEFM9gG+zkMIj7gKO8c0s?=
 =?us-ascii?Q?/vdwy4/t8d14/25+EbWmFbIG7RCcEYCCfeAQbBbdOqQhPO4mptj2bmlTa3rH?=
 =?us-ascii?Q?8e1zdpr2FejRDRQFqSMBRC8HohaUdXgbK8kgEmqPAIXXSBUD1GtoOKQ9zQgN?=
 =?us-ascii?Q?CE1v8d/dHsBEsXMEBYN+VIaPq28xpM0Srcv9qC8LITCHRbbojpzJFN74E4HI?=
 =?us-ascii?Q?g7u1KohVC7j8/nhAh9psaVtMq8g5ityHSLXzadlC1Fq1hUuHP4iefYkjqRuw?=
 =?us-ascii?Q?rIn+PNFIThNQxaATnE21fdc8jZ8yFrR/2umeVcsc8AVOa/FM8SPqFgOlLrxl?=
 =?us-ascii?Q?HqlcWkDHo90Gz/nAecu3gXmHqh7Qr/drptrZ1f7LxbsPeXi0BQHyMyCsjs1Z?=
 =?us-ascii?Q?0qqPae7nw+h9Lfxpjh0z49z8BfAvdmUPlzwS5tDouzYgD5LoYLa4Nscj7SxN?=
 =?us-ascii?Q?vrT0Wi48805OpTffa7iES3xjx4xcl8q1RWeniIp8Nymuv5hecPw2BjXOhOkS?=
 =?us-ascii?Q?tA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e17bac2-a7a1-472c-a872-08dcdfcb71d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Sep 2024 14:40:06.0263 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SnFg+yReU8XQ04PLntbBP4jg+nUIdqcEpAL6ot3HR3rTUCxAjaRcNjmbwV/Sa9cQ4K0iOxSZpmlVmBf7984Wo6yk5Cxg88FPNyng6JQ33jWoTMWTuS+quKocJFD8wl+X
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4632
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727534426; x=1759070426;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DiF0EFzNpl3NN2nYMlixJVCZMHpzhETIETxvMdk2xZM=;
 b=ZEilG74etqMloYzQzPM2Ysy/x99310/uvESs1vfsBldRMc6dMjUpEhnD
 Pet3+Vc6gyxtMgA8Kl8UmmALyLtY2n/6ezAtKNtXeECeZYtC/MFNh/9Z1
 8zgJT2wl9XN2gx0JpybSgnS11D92AQ5O3piyHion4m8t27HQ9rxF9tKtd
 AS9V2hVawwpLY/rvJnEXK5dPFOyA8AySuHllv+PtuE0qRAgqQQ6vOmd/O
 0ChUnYPWBRg/34M+NIwXOkpQ29qX21rgC3pe/4V/dMWD2uNxLdySDXV0S
 rFPz4lTCwjibL7KJ2OQU8yAgePpPNfz1rHuW7EZLlJnZ3eAw3pNbqMWTc
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZEilG74e
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] igb: Do not bring the device
 up after non-fatal error
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Mo=
hamed Khalfella
> Sent: Wednesday, September 25, 2024 2:36 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>; David S. Miller <davem@davemloft.net>; Eric =
Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Aben=
i <pabeni@redhat.com>; Auke Kok <auke-jan.h.kok@intel.com>; Zhong, YuanYuan=
 <yzhong@purestorage.com>; Jeff Garzik <jgarzik@redhat.com>; Mohamed Khalfe=
lla <mkhalfella@purestorage.com>; Ying Hsu <yinghsu@chromium.org>; Simon Ho=
rman <horms@kernel.org>
> Cc: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org; linux-kerne=
l@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH v2 1/1] igb: Do not bring the device up=
 after non-fatal error
>
>Commit 004d25060c78 ("igb: Fix igb_down hung on surprise removal") changed=
 igb_io_error_detected() to ignore non-fatal pcie errors in order to avoid =
hung task that can happen when igb_down() is called multiple times. This ca=
used an issue when processing transient non-fatal errors.
> igb_io_resume(), which is called after igb_io_error_detected(), assumes t=
hat device is brought down by igb_io_error_detected() if the interface is u=
p. This resulted in panic with stacktrace below.
>
> [ T3256] igb 0000:09:00.0 haeth0: igb: haeth0 NIC Link is Down [  T292] p=
cieport 0000:00:1c.5: AER: Uncorrected (Non-Fatal) error received: 0000:09:=
00.0 [  T292] igb 0000:09:00.0: PCIe Bus Error: severity=3DUncorrected (Non=
-Fatal), type=3DTransaction Layer, (Requester ID)
> [  T292] igb 0000:09:00.0:   device [8086:1537] error status/mask=3D00004=
000/00000000
> [  T292] igb 0000:09:00.0:    [14] CmpltTO [  200.105524,009][  T292] igb=
 0000:09:00.0: AER:   TLP Header: 00000000 00000000 00000000 00000000
> [  T292] pcieport 0000:00:1c.5: AER: broadcast error_detected message [  =
T292] igb 0000:09:00.0: Non-correctable non-fatal error reported.
> [  T292] pcieport 0000:00:1c.5: AER: broadcast mmio_enabled message [  T2=
92] pcieport 0000:00:1c.5: AER: broadcast resume message [  T292] ---------=
---[ cut here ]------------ [  T292] kernel BUG at net/core/dev.c:6539!
> [  T292] invalid opcode: 0000 [#1] PREEMPT SMP [  T292] RIP: 0010:napi_en=
able+0x37/0x40 [  T292] Call Trace:
> [  T292]  <TASK>
> [  T292]  ? die+0x33/0x90
> [  T292]  ? do_trap+0xdc/0x110
> [  T292]  ? napi_enable+0x37/0x40
> [  T292]  ? do_error_trap+0x70/0xb0
> [  T292]  ? napi_enable+0x37/0x40
> [  T292]  ? napi_enable+0x37/0x40
> [  T292]  ? exc_invalid_op+0x4e/0x70
> [  T292]  ? napi_enable+0x37/0x40
> [  T292]  ? asm_exc_invalid_op+0x16/0x20 [  T292]  ? napi_enable+0x37/0x4=
0 [  T292]  igb_up+0x41/0x150 [  T292]  igb_io_resume+0x25/0x70 [  T292]  r=
eport_resume+0x54/0x70 [  T292]  ? report_frozen_detected+0x20/0x20 [  T292=
]  pci_walk_bus+0x6c/0x90 [  T292]  ? aer_print_port_info+0xa0/0xa0 [  T292=
]  pcie_do_recovery+0x22f/0x380 [  T292]  aer_process_err_devices+0x110/0x1=
60
> [  T292]  aer_isr+0x1c1/0x1e0
> [  T292]  ? disable_irq_nosync+0x10/0x10 [  T292]  irq_thread_fn+0x1a/0x6=
0 [  T292]  irq_thread+0xe3/0x1a0 [  T292]  ? irq_set_affinity_notifier+0x1=
20/0x120
> [  T292]  ? irq_affinity_notify+0x100/0x100 [  T292]  kthread+0xe2/0x110 =
[  T292]  ? kthread_complete_and_exit+0x20/0x20
> [  T292]  ret_from_fork+0x2d/0x50
> [  T292]  ? kthread_complete_and_exit+0x20/0x20
> [  T292]  ret_from_fork_asm+0x11/0x20
> [  T292]  </TASK>
>
> To fix this issue igb_io_resume() checks if the interface is running and =
the device is not down this means igb_io_error_detected() did not bring the=
 device down and there is no need to bring it up.
>
> Signed-off-by: Mohamed Khalfella <mkhalfella@purestorage.com>
> Reviewed-by: Yuanyuan Zhong<yzhong@purestorage.com>
> Fixes: 004d25060c78 ("igb: Fix igb_down hung on surprise removal")
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 4 ++++
>  1 file changed, 4 insertions(+)

Any reproductions steps for reproduction of these issue?

