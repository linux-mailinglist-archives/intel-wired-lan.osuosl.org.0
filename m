Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CD49C8C87
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 15:11:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A6E67843D6;
	Thu, 14 Nov 2024 14:11:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lBynxeb-9Kd0; Thu, 14 Nov 2024 14:11:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF49484436
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731593474;
	bh=0LfxpFfcwqkfqnYYdnbxR1MfhgWXfor5zHi1TKlrvyI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wJCmCIFbVttCo26BEngY4PMwc40SbRqd2p7vOCjyetjmAEYXbUbmq8iG8i1eROyvE
	 Gi/1ffuculH4OZz1TbHqz9ZFKFd7HHBC7038HU1doTHeHZ6uxfqTokCBTgXUZBflNZ
	 eVyP4Mv9acciIwaCYYRkCmp7OJqXtA8P1GDbGdfyS+GseYgyeh+ue+aze1XcnVUUSn
	 oLS6j20Yhkjhki84BqgQ/UVMEXICQr0+S/USSUmgkXSAn7iuXyF7iL09LfKiAe0Osn
	 x5MS7ypPzUMRU+RGQehczFS406K+ZKhHjidTNMtAtI/0d/1vKtJPPD24GlzPhLMxS7
	 7tILCwK9fyssg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF49484436;
	Thu, 14 Nov 2024 14:11:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 191E96C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 14:11:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 135684077D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 14:11:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CgCL_jYsWZLU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 14:11:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1B7C840784
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B7C840784
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1B7C840784
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 14:11:11 +0000 (UTC)
X-CSE-ConnectionGUID: oNsqhkesRbyjHVCF/wek5Q==
X-CSE-MsgGUID: Fmss4Is7TUaIGqvhqsViaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11256"; a="31642030"
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="31642030"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 06:11:08 -0800
X-CSE-ConnectionGUID: wH6y8qvzQbmjo8rd6UKnaA==
X-CSE-MsgGUID: ydKRPNHBSDiWeoT88EKRtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="119150930"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2024 06:11:05 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 14 Nov 2024 06:11:04 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 14 Nov 2024 06:11:04 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 14 Nov 2024 06:11:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ShX4xirkY8wfry06u4SRFSLILYwSD6Nch8EXrmUJ6H09fZUX/tOfksevmrzElvCUOTkkb01kCNviCbwSek7FvhRs2VYBQeMpBZJGKwto9S4p4o2jZs2abrjP2xcW2Rb6UlEK6u+XPG0IEHpr2caAdRoZxPGdZyeAv5ys2P3LYecgcOnU5beQIkopSduul6TfBOY14++DQFt/kXdZk/GqRfgvuqZI33THRxuRU7ibcMDdAelVwZhw4om/UCSpCfHNhoT3tJT9UXK5GiDbqnCB22IqA8elJzLR3RYGX+eMBWuuTLXf6X+49/5Inf3D7zyy2jA+yGT6pa6nIiCuetFDSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0LfxpFfcwqkfqnYYdnbxR1MfhgWXfor5zHi1TKlrvyI=;
 b=MRHBUePjv7H1Tenj+I02GPnJj6OITG1P/3vuTUUF/LzNf9aoOoYliDDfqkyVc7UdcUmzAhRun2GpdeAJgov3QpcFLwrDpDYrUwQI7+JpNQnCBJhwqc98vfVkOMGLSVitGkTpinaBengUWiyIfm1G44j5A+If4GjV9P9plGrolLV+7tRShvIn736u/MNF0n7Q/k4qc2+1adGA6U1M+WkbSyk2Cgfh7YSZguwxU8Zyju9nE2N/7dbHn5BAYlqF+mfkykKcq4ZepZOLnPKxD68voWmnJLbrUU/BHptDdi7CrEoYTUZkpGBQrxiIOnHBYTa2lgO032YWa8ZYiXXISM4eQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DM4PR11MB6120.namprd11.prod.outlook.com (2603:10b6:8:af::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.18; Thu, 14 Nov
 2024 14:11:02 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.8137.027; Thu, 14 Nov 2024
 14:11:02 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "Drewek, Wojciech"
 <wojciech.drewek@intel.com>, "Szycik, Marcin" <marcin.szycik@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Knitter, Konrad"
 <konrad.knitter@intel.com>, "Chmielewski, Pawel"
 <pawel.chmielewski@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "David.Laight@ACULAB.COM" <David.Laight@ACULAB.COM>, NEX SW NCIS NAT HPM DEV
 <nex.sw.ncis.nat.hpm.dev@intel.com>, "pio.raczynski@gmail.com"
 <pio.raczynski@gmail.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [iwl-next v7 9/9] ice: init flow director
 before RDMA
Thread-Index: AQHbLrMfvhqWC65610GM/Obir2p8CrK24HEw
Date: Thu, 14 Nov 2024 14:11:01 +0000
Message-ID: <CYYPR11MB8429E8CA7BF7585DDEC6B60CBD5B2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20241104121337.129287-1-michal.swiatkowski@linux.intel.com>
 <20241104121337.129287-10-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20241104121337.129287-10-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DM4PR11MB6120:EE_
x-ms-office365-filtering-correlation-id: 84432d38-d6de-468d-b3f8-08dd04b62bb6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?3bbMQDpHTscJTYpRSOKTVv6VJyFa7v2JmSle6fR8UHdAkv9iY881S7NJtR9w?=
 =?us-ascii?Q?8UPFBTrpt8y5nKOiU9ZY9V8XAbvzp3EwMRWGbwpxRHOQyZ7f62stdlOzrtQ9?=
 =?us-ascii?Q?aZVR3s5ty12LoZnwmY4TVaiiKDL1BuJ/Ujzot7T5FvVQkxLyAKZYZ5uI72AP?=
 =?us-ascii?Q?RUtoiwgagk2SbrO93MpofFpYZEGEOVCPFNh7qujyUlbjz1q0jeb5KUPTivPA?=
 =?us-ascii?Q?0D7RjFch2prdSUeTZsHODTRuuH85sA+5/5xjuG/2c/o8c7ywZADr1YIHgHYx?=
 =?us-ascii?Q?y077VRkFGzeYzQc83f4UwFUUx9kOUMKSwBECVcY/lWi8LEtDKoNPbuBiUwH9?=
 =?us-ascii?Q?Lxz+ECaLbLXHdBKeo7i+8evs1khXLAxH6parjjp/rvCZQdi/9xL7xCw/84Cx?=
 =?us-ascii?Q?ea5+l4Q8u9T8E/IAnbS2/gDU62BcJnbgkC/NKZZo3JUME81ni4tmX/9SUc+h?=
 =?us-ascii?Q?MMI+UJxX9TdYiQtYXILwFwNF/6dVQwExigiTdLsqN0Tru2VWCk97Xuv0nj0u?=
 =?us-ascii?Q?uVlgbllPow7xJJ9oyQscbq1rJZlBhGLkdEaWvuva7ZbH5aJY+wUIKAY2PUYA?=
 =?us-ascii?Q?sxbJHon4Tuer2R6kXQg3OOjl2wrNtyMOKkUiUEKRqTuTYWPjWZ+pDc6k6DwD?=
 =?us-ascii?Q?nZPYW802S8QXqU+WWSkTC91pRDOkYMvVSyuFeFvWL1OPaI9MJev59GzpH6U6?=
 =?us-ascii?Q?+M2uqaEggJWmr7jeDwDVTwkaa3MLrebV3olnjQNByKyAgEVMupi+ETcEf+Mb?=
 =?us-ascii?Q?gR8+7hBMPmG8+y4FrdC4LNgeCDJq8icnmKgNxdrx+FUy3Q0Mydou8fCAxqE6?=
 =?us-ascii?Q?e3CB+XbZ0rDRSq6sqMxM04anztXs6uhGsFCeX7//2KfDFkNcJQcqjjml4rJo?=
 =?us-ascii?Q?orn+vJ9+wsSX55GV4U2OQqvJi5pqEGO/uHxPoUq8myEPunb++TRWjrs/spr4?=
 =?us-ascii?Q?KHv6NGIzfeYH7UzgH9DZHXz5CBBfy8PgCHXHOSI0g4adwBaWDZZouD5PEj7z?=
 =?us-ascii?Q?fPTAFiPn6YLfRj9WHR4KnGYg+LipCZIx2bYWNfOFEZpzwBz2f4uPmZSNbfI3?=
 =?us-ascii?Q?axx2fhpsxX6Qyu3dJFa8epZHJB5IywEds4IY4/h8e/LCRa/Mfs/cRD05+KjV?=
 =?us-ascii?Q?MDxAYyzNxT3vK8bGeUImq4qRqSQCrxfFFbR54LeliOU5MlT+rXs0lSLHuxQz?=
 =?us-ascii?Q?PDlvlEtZQnJ7zh9aR+myVb5MHLwv0/E4K8XL6VwVdYKxCHipXPJMINsd7BVa?=
 =?us-ascii?Q?nMz153fhFB/YjKO7BpFRCsn+xJBf28lU5kBg2Hzea10dIj7veQ6No+BecQtB?=
 =?us-ascii?Q?0CRFVHYJ9kOPE/08tMdW4JmLoQQu3yMzki4tqhrq10mWr7VbQITuSG08Mi/7?=
 =?us-ascii?Q?WVz31TY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iWzaa+ItxG1KVmE23/+5Rb7ePT842b/03xg/XjJUGSGLw3snBeSrG0mkCLOE?=
 =?us-ascii?Q?+RbIjisXbtD3I0DnGxKUllUzMGGElJxJgnMYC9iX53YM/UIogLzY95X8IZ8a?=
 =?us-ascii?Q?c+iV36pXvxQX/37tQ/V3tFkkjzDx4D0DRY3I2VyhKCfFNy2DKyNHC2upEIEc?=
 =?us-ascii?Q?oyarbLm+1+pJx3IimzXRyvVcvw6iU7SHPYaQlqVV1JEjb0+FqtJHvlXiBoGs?=
 =?us-ascii?Q?8dOhCvyxVHUTSTEAG9eitulm+JG9bqwMbpTI+Dm5LAeKXA5mQGWcmxnTJHrT?=
 =?us-ascii?Q?VonYtiqNUeff5VVbXe5ndAUtKe3nTDloCZP7HoxoYuXxJsUz6JY+it6biiva?=
 =?us-ascii?Q?vOhT2JsaRmOm0lQT4i1vUGyooc/4UyggpJBZnhl9o/IWOI4JBwNYQdHAvgp2?=
 =?us-ascii?Q?WrcuT+XVfopTgFG8bzw68Ny8hJhyBKxUl34r0OvWxjwJywlrjDL6sCqp8rk+?=
 =?us-ascii?Q?kviSXv6R3k/BqOxY8qgz5IVnsrvwEmMaQv148B9tobQctwIS9gy1CfpSAHnj?=
 =?us-ascii?Q?LPidhgNIQji07WXWATDsWIk903S15ZSSu1bc8N1LQBJCeVznIpWKPnapyI+Z?=
 =?us-ascii?Q?LDyQjYO8bSFbIs8z4suw/IfcoJlHFxB8Pk8bZMmzJfu8FjokV7Wnq+Mi89XK?=
 =?us-ascii?Q?SJwY1SKAZzAcX7hxa5X7pCTVbe/pEewL5ZJ7rqGdYyXyt1wcWv80+LbWMRV6?=
 =?us-ascii?Q?QltkAUzZHwTwloRry2GIMr0ce7axBP1xiQuegaimPUQTTnlP3EVO0YvOjKJb?=
 =?us-ascii?Q?Wptyo4mJdKy95PMdy9pqbC8vRWISi2bIwVni3RVbqB5Yl6wXHBwXg8qlDdTE?=
 =?us-ascii?Q?rd4CHJxbcD5+Hr1roiQfdnPQVlFxma9fUs+jlZkRktQxgVDh6ijbi3QWU8cm?=
 =?us-ascii?Q?GcEXm3x4LaJ3M+C08avQGq/TgZonx28/zRfVzGaEEl18TTe8u8wU/S44z0MB?=
 =?us-ascii?Q?NRw3BbfrBPlJP7udlJdaHLXl1ySoah1lSBjOF5/8fwJZo9JagbvCUPaAp6Dn?=
 =?us-ascii?Q?zS4vVNnkHnyp4Grb04ARKkAHsPP6k/gqLH/T0ikoosJcp9/5vkkTlfJgtlae?=
 =?us-ascii?Q?EOZMq4WZ/fApkM+gEUQXtumlm0eOuzFCuHZSA8lrEMimU4+WA8wfhxedJFbs?=
 =?us-ascii?Q?9Ww3/AOQilkbmBtxjsKJcI+BT9sxeWCL6Mm+xHoaHrotNCNDbHwpHPHc6vlw?=
 =?us-ascii?Q?JjDNwedJpEsFKFaBqHgxvkVaBOkEStof5L5yGmS2NJoo4NVo/ysE61p5PwVD?=
 =?us-ascii?Q?k69/ricHcNqenGHB2/Rk21AURjCxHNHc8AyiedvIifViBP1EVFemQL/vpKJO?=
 =?us-ascii?Q?kIADaI+iodvyhQ3CMgpSny8xsF0ALMNcUjtNJzwNgtaOBpXluYfJsOjUgBMZ?=
 =?us-ascii?Q?9/ysLV0TBWlEmCb1GeFAtethyCcAVJmZ4lA2+h7I68CIDhUC4y+/+hrSYUMD?=
 =?us-ascii?Q?hZblp0aMjpKC/WeI027GQfXBzMCBl84b+iFBSMJAbvsJvPRPJ0gcrRGJN232?=
 =?us-ascii?Q?6ab0HM064aiHC9dwzXeJ/lfvkDFx/OFhiMbJ8qiDZRta6XF7knoRjN76wO7E?=
 =?us-ascii?Q?p82BoMRZkQYC68G7d8lwQB4Ju9Rhw7v0+z+8Pkdvrw/qUgilVYjCLUPXBe2D?=
 =?us-ascii?Q?yw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 84432d38-d6de-468d-b3f8-08dd04b62bb6
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2024 14:11:01.9946 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t0lkvlsK7JQ5sU9U5KHOZW21/RFbt99IUJId34Bk8BX0Vi2SaofgCKsRcCU1toUPlkDECC2115JDOoNjFwr2fOmzL3Ffcjp6nHRWIEkzy6Xyb2iNokdBMKzVSrCVVVFn
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6120
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731593472; x=1763129472;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xZhrvF7IIwLSvnHChi7iVRUDTtegcJhZ0ZcxT3RX/SU=;
 b=XsDv52AatgXP+/1RFKPKa05jxA/jnHINJqi/kMpk6Bcjldn6ejPv+A+o
 No5pVk4NG69K/PoZn3B5Qy1LfX/Fad7ivGop7X3Pw04Sh1Rp3eyvRvnbC
 dB0EJWp6I5UBtmAFB34xMLO24NuYjwMsSqIzyr0PCvbUGXRP5jRGdWnT5
 +laXOBCyzYKd9ciuJOROSaS+lzT2tcT1WJg87iOYzFpBqTyijXm85KULn
 hgwLqYB3MC90/ucAYrhvFjykaFyJwp+eE9Q8yngj/QTk737PaVPkGdkYY
 3iAz3u40vm2pl6XGbZpEh5/rrPr1utw+I/cFaahtz14xwXcoXL1QSAWeZ
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XsDv52Aa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v7 9/9] ice: init flow director
 before RDMA
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
ichal Swiatkowski
> Sent: 04 November 2024 17:44
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; Drewek, Wojciech <wojciech.drewek@intel.com>; =
Szycik, Marcin <marcin.szycik@intel.com>; netdev@vger.kernel.org; Knitter, =
Konrad <konrad.knitter@intel.com>; Chmielewski, Pawel <pawel.chmielewski@in=
tel.com>; horms@kernel.org; David.Laight@ACULAB.COM; NEX SW NCIS NAT HPM DE=
V <nex.sw.ncis.nat.hpm.dev@intel.com>; pio.raczynski@gmail.com; Samudrala, =
Sridhar <sridhar.samudrala@intel.com>; Keller, Jacob E <jacob.e.keller@inte=
l.com>; jiri@resnulli.us; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com=
>
> Subject: [Intel-wired-lan] [iwl-next v7 9/9] ice: init flow director befo=
re RDMA
>
> Flow director needs only one MSI-X. Load it before RDMA to save MSI-X for=
 it.
>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

