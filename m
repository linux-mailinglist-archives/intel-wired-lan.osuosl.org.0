Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BBA2A295D1
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Feb 2025 17:10:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EDE20610E7;
	Wed,  5 Feb 2025 16:09:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c7hl6qqBTL_7; Wed,  5 Feb 2025 16:09:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C20561003
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738771798;
	bh=1tR8dnnCqQWL22nauXw/Zd9vdZwyLsESjcC15AEgOoE=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=pCWrOH8IpNTXL3fcrD9rVRoeFcdznxXALToyilfeYeoP0IbyDxY6oGb+e3sBHXJSY
	 p3z0XYHrxLQllEjcMzMjIIBy+YZ+uwScmOYLmo7btrMomseKcdf79243hsduBOsKyf
	 1G22ohT6QF4Tn2xvNG+yF8fozVZI267efoJBZuoYQ2ZmZk/Cu6ADkq1TNxbHvwPb1i
	 Hq5okpnnOdnIuUWkimFdX/IExvyj0RDqHu3aCLuy9LPPAxytbBujwr38PINwH0qy2w
	 ddIOgbIKQ4TykXPH6GpUeB4Vtjxo9fOS9DvcRfUezDlybVV/kXlK2ycAK463A1uOYI
	 8kzGhtrtuBK3Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C20561003;
	Wed,  5 Feb 2025 16:09:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 24BF9185
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 03:19:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0939041333
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 03:19:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OmHYt6n94vio for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Feb 2025 03:19:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=qiuxu.zhuo@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9146440D87
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9146440D87
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9146440D87
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 03:19:18 +0000 (UTC)
X-CSE-ConnectionGUID: rbbv/PtrRKaucPd/QhpjjA==
X-CSE-MsgGUID: f2cOkLVzRUePEcGs3ko28g==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="43198871"
X-IronPort-AV: E=Sophos;i="6.13,260,1732608000"; d="scan'208";a="43198871"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 19:19:17 -0800
X-CSE-ConnectionGUID: p9X/CJmLTsuthfJLP75d5g==
X-CSE-MsgGUID: M+imfa43TSqNQhuqEU+72w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,260,1732608000"; d="scan'208";a="110555386"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Feb 2025 19:19:16 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Feb 2025 19:19:15 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 4 Feb 2025 19:19:15 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Feb 2025 19:19:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SqfyMAhAvwq+/2QUxVLzGMv90qdCOgEpYYjkOwKlsCZ0Eos7MVnMEodkZQqTBX5E+t5pnGYk99DgPa4cse6k96JBLeOyBsNHwfePUYZssr8+y5ahwTt+Lyw7fallQIcufy+Vjz7Qux6nJRfpdJoSS0RK0wjC1kDvmDMwbTHX2n3Rz00xJ+nmV7B3VRnCO+6ZFDocYSEyIRdI7HtCMrPMhzxRBYnOafxwcgZDiSNgAQTVJH2w2QPBMP5dfLPJb2b+sRo7aFFEe1FMt1qA4Jzlrt0Orgv50sIULBnIhcG8G1QLhTJutskOQNDEUI1U6v+kjoNlPasX3EthnCHhIl+rZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1tR8dnnCqQWL22nauXw/Zd9vdZwyLsESjcC15AEgOoE=;
 b=It60aXKYQf8R8aIzcEp1JN6DfozCnrSI+7qhd9F0X1QLpCXaJRG7ZSYWkQ4J9TSZqnA13GA5GHkTCqLzOyj9JBdYaRwWZAMHqGvCek6xzgicQABoAgPw3pohq8WBach6rF6isFHYmcM/lrmaFCdeHWLRTEF9GluekdEoREAUirOf+VUrvD9lrucKarpqMILnSMvwFzn8TbTVC/6vEQE3hzMZlf+DRSC/2HVZGgt0g2Hs9yTlX1w5oJx5w3ENiq8AVph2bPpaLy1SLcqR5LuWqhNb4C9lB2HBVG39B9dArJTsJOMO/u4FG6iB9I279Tk09uZT2E+79Lxawm51OC4Azw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7134.namprd11.prod.outlook.com (2603:10b6:930:62::17)
 by PH7PR11MB5864.namprd11.prod.outlook.com (2603:10b6:510:136::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.24; Wed, 5 Feb
 2025 03:18:31 +0000
Received: from CY8PR11MB7134.namprd11.prod.outlook.com
 ([fe80::cd87:9086:122c:be3d]) by CY8PR11MB7134.namprd11.prod.outlook.com
 ([fe80::cd87:9086:122c:be3d%4]) with mapi id 15.20.8398.025; Wed, 5 Feb 2025
 03:18:31 +0000
From: "Zhuo, Qiuxu" <qiuxu.zhuo@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, "Knitter, Konrad"
 <konrad.knitter@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: Build error on
 "drivers/net/ethernet/intel/ice/devlink/health.c:35:3: error: initializer
 element is not constant"
Thread-Index: Adt3fFdYOdEzc7CrQOSZHCldp7twkA==
Date: Wed, 5 Feb 2025 03:18:30 +0000
Message-ID: <CY8PR11MB7134BF7A46D71E50D25FA7A989F72@CY8PR11MB7134.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7134:EE_|PH7PR11MB5864:EE_
x-ms-office365-filtering-correlation-id: 482ee350-f1c0-4c5d-c0ae-08dd4593c43d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|921020|38070700018; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?F1xOlLsnDpUIesXNLG7AFhQmc1mCOIvREXthemh3PzgMPJXwj1BD4EwuoM?=
 =?iso-8859-1?Q?4X4tYlPSDxeQUQZO3LSAoni/JQrP96yVlYQO+lqImEpzPBnUoX5Ea+dJrL?=
 =?iso-8859-1?Q?jZp31q8qp8QcM2pPHMiiZ8DFxTO0EAmVtEFCgv5c84ETuGwNbxTnbxdZZ+?=
 =?iso-8859-1?Q?ssU+vqTPudnLm+6c6jjoShtezhdveCiisZO702F/c8UYn+8NgDaUv7RrGX?=
 =?iso-8859-1?Q?/Hvi304vGpkYS5LiITSM7QkxtHjRMKwU+QSdFBx0QgXfVWaaH2RuooDqKK?=
 =?iso-8859-1?Q?pkv8oml+F+CjGrGif583Bfd2jssWgSBLwqE1xnbsfnyZIDhI+kfDw/iAm7?=
 =?iso-8859-1?Q?Wwyr/ONl5coR+neaydHRwjrVNYUzTPdoAWHufUi0pPIQyWwlkWwMVfEXKZ?=
 =?iso-8859-1?Q?4O8ukIpKs1+Lc8XdkaZWkSQJ+vEgb49FwW01XjQi+J1iFObp6AZBS8gkuy?=
 =?iso-8859-1?Q?XJj4as8cAyy90tfHCyXRahnK8VvPMnAeKKyxI2cdgghx22RNRhU9TI61G2?=
 =?iso-8859-1?Q?UsNo7zP2S3w0GYNTkhqBJLCRXUJ4Ba1JxP+MDaWTkwQ+cESF26nsqXaKno?=
 =?iso-8859-1?Q?4ZpLoW4jDWpJsGDw+xnddd2T2vw8eBl7aDMFnCeCvpkDRIYYSXoeveQXJv?=
 =?iso-8859-1?Q?tLYI88joq/+zPh8lSsKk2X0Y09s8TPc0Ukcm+N98zFSzMa+Wjzbae1uygp?=
 =?iso-8859-1?Q?A68IR43RnO+vD6doJp5THsxUFJkf/dSp3eexOhScyfC5trc9u0sY35st+U?=
 =?iso-8859-1?Q?tqvD3F411Kr5+WYyVvJdGoWzrhLAnCLUsEL4PrHsA9oBAoz0u8VaK3q4xg?=
 =?iso-8859-1?Q?p4bL2SIvJtWt3a5ralyAl5PLgKFPjVJ1dUQ1LXXzvXl1/NaZHtFgmTlFJd?=
 =?iso-8859-1?Q?G4viAoYrrLmBO95BB5msvmmPAjtfEeC0AzEwCFT1qV5lqzjmuJ7yQVLJAh?=
 =?iso-8859-1?Q?rMiL3GuLVnEGOM5sgxC1AnLdTBvmjBBzlVmk7p3FjbKyQva8HLje77m1WN?=
 =?iso-8859-1?Q?Oob7zr6SVpyda+iN7td5ucs+KmPNkK8fsG0gzJoBVxextgjViJGgLHWjtR?=
 =?iso-8859-1?Q?txQTW2oZEr+/8AZYQPSxhpZ+Q9iW1KwD93FieG1QOQwT8rNzN67oQtKxHL?=
 =?iso-8859-1?Q?ryDhg7ioWyxm7exw4Fi2oI5Sta8KMZ64xerUk6+3te8QTYJLcYZ+jGh4Tb?=
 =?iso-8859-1?Q?swXzDJynzVE3xQOR3drk5Tt/6/RHm8hA6Fh8QnYTNfbXcba+KZRpC4UOI2?=
 =?iso-8859-1?Q?FO+/cYTa5eeiUd8JiZvnrG9fahykd2CvHbBTlseWIQQFsraiSfhnWMLmYe?=
 =?iso-8859-1?Q?jNfo703ZGW7xLNeR+ylohPQnN5beDlxbgztiLG4koRHGvcLwouUgDiyvmY?=
 =?iso-8859-1?Q?CVnnpgP47jdzqUtIf0McHPONUPPeshsZgJR9kIF8XRi1SetIG8x8li0Hby?=
 =?iso-8859-1?Q?YozCaJRvFthIrJhHwLAPqw2iHQFPhWE4OY2AqhG+cZ9yxfjADJySvbNDit?=
 =?iso-8859-1?Q?dzRfxbAZg8ANqCA1hlTRNhaRIUq4Bkf/EKFWQA08Wi0A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7134.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(921020)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?EJg0W7h17TK/0j0RAXIPhc5HZZINFX4W0t60JA8qZMvVT15V7WtQZOJyvf?=
 =?iso-8859-1?Q?bx3ejOBNeoEp6aj1r81SUD1V99OXA0WxaBqU1Wo6R2MlOG722xC1LjBcoe?=
 =?iso-8859-1?Q?1MalQl6/hFgjmXWKyMbayUzCv9Wgr7nQyNIhxMeO0KzC4WTgTWlPsjCOU3?=
 =?iso-8859-1?Q?0VPsmd7zaKAahcF6Bw/m9eVrZRCyZ8OPp0TTMV5W9/7PsYH4HeKWJZR6pk?=
 =?iso-8859-1?Q?ctwEKkInUn6g+g5Q/3nec1kT3g3mxb9ZDuEUhqFL9K+Afsbu3ajlpt1OXT?=
 =?iso-8859-1?Q?3WmbPRe6YV5uzoJUCIAMpUkI38bu4qTHziIBRG+6VX2hVzhPSlr6SKfTNt?=
 =?iso-8859-1?Q?acr06GcYxRXCwbH8c11IE4zMl51vZJmFk3PkYTNmCTeX5k9qIBj9FcWqbI?=
 =?iso-8859-1?Q?+mxdfRHALOopY03M3yDp/+mvkpKI2VJXUUbHopkY1cbZ+FoZQXzuUfXOe3?=
 =?iso-8859-1?Q?qTGzXMWCsBg4XMaLXSycvlouUxly0PmUG3DPvrUJ/OS4oxdXlROo4xY5vE?=
 =?iso-8859-1?Q?VwFtigcKaBBMfv6F4zxrZQ92ABpqHmud7Tu9IpWzRJPEzQXCUBR6zO/ViS?=
 =?iso-8859-1?Q?6Ji9/PHX0Jl9M+sNbJxAUtxikg52YOq2MtnN4E07MFKh+5BmfuMeJ3o6LC?=
 =?iso-8859-1?Q?t79PCzR6kwfBqVpAwR4JeEfX3zdd7b/rt5CYVEmt9tO/ib+3LEBPd6i0m3?=
 =?iso-8859-1?Q?jB0GPrcWM+Et50MAtS390aiuGC1n1xoMDlxvMov5yzPZKo7sUFX6haxKxK?=
 =?iso-8859-1?Q?3twTxU7fgZhVmNi1KSadt79SorVsHb3zn+Xliv6vQRWNUPKwUh1GDplMjQ?=
 =?iso-8859-1?Q?3W7vgbFGynskDM3n29Q2VmqXUTmn78+VkXSpeiXjBLRUImP9IewPa71oxr?=
 =?iso-8859-1?Q?6a3yIJZgbTycIv7zAKaWJDUHaaTx4bPJijPQNQTvB2mQEHCTA6bNVgrU/F?=
 =?iso-8859-1?Q?8i3Ynl64oD4oK5H2c/VIjjz2CZam+JMHDoLAFa6FLVVbD46bPhyzabHRfM?=
 =?iso-8859-1?Q?A0ADt3YdyMa9kkjkvwWXejdIQsxQMaZbum1fGzvDxFCWFqzV0u/YWz4sHS?=
 =?iso-8859-1?Q?xPaEry7L11cy3MKQERnSs+wUtfQd08SwYjWaK90C9d1J9kHzbZufH92QJU?=
 =?iso-8859-1?Q?B/cE40MWXEv2djoD0tUTZjNcIm2Yp21pbsQKadFYLNg6MK2Q6ty+4zpLKF?=
 =?iso-8859-1?Q?ZxlGMOlH8Lif3IFWLkQoNywk4zkNeykyp5Wu+NYsGp5Y71VfIY+jp+Csi+?=
 =?iso-8859-1?Q?+ChA7hgAn59eic5zUvlD4n0oYjgYlWdIcTUWFo3xC324UkjXPpNR2w90uA?=
 =?iso-8859-1?Q?APnFFF0uBoLKEX+PuROewUD+S/DskzjOLz/U6yvRY/hpfAW9UW4Ugj0PTn?=
 =?iso-8859-1?Q?GEjqbk1akP+VD2nL3V2EqzdqswOcorkzfzi4I61g5Au204hAb4I4+YbX6U?=
 =?iso-8859-1?Q?lI5CaQU4/pIDg2+ermFt60u2BJ+LpfYueNTbxSDk5y+W5y8+3EyigKVJxL?=
 =?iso-8859-1?Q?EZZXUVsY7vSMVWiaUHUYA5KeRdSQrH5bltqtHotBpRTriCv5srPDN1YUkY?=
 =?iso-8859-1?Q?d5AXZF4UmgBALvvlLWVD/nwMwhfsgMPH5Gq0VixclBHc9kKm9tdpa5wWt5?=
 =?iso-8859-1?Q?1BEBbwaMX3kH+OyFTsawAAtEI197mzU4KX?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7134.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 482ee350-f1c0-4c5d-c0ae-08dd4593c43d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2025 03:18:31.1266 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Rxr28ryLRyaAuhyyxZShIEENpN4LJK6r6XneTqxXexxZ/H3tHjQIhwl7LXsZ8ODzM4pPuGE+Ez1zwOTOMEx24w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5864
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Wed, 05 Feb 2025 16:09:56 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738725558; x=1770261558;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=zDZy29oIBpwv1WZgBYwMZ0hr8QAfxWaRWD8MSi0eJ8k=;
 b=FMWxmAg1+0Yqa58zswDKF4gqh0tTD39d9A+8AbDEJoYg1C7sIbR0fVje
 /JsjFrED1SNjz4hkL13jTvc4pUgQN9XDGTU3Js2xzUfQf1ZgCKJOanGmT
 mYJCTsw+Y3neJA8APX19oX3mgU8j8ad5rAH92UOSDy2nCt+5ZpO7bS8J4
 //Nmzpj87+uHGcR007msRSui1j048cU/5EcTONEcAbaEZQIMFJEna4gmD
 +TW16iv1yTLgL/3f0CYwLeFpn3HjA31QLhhBMQQ//MKIqFOxhgiTN+2cA
 bN3Etf4E9TklgMwcKSxCwUFWfwvwo66XRzI4p9VpoLWr7XuJJB7+QUhYh
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FMWxmAg1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: [Intel-wired-lan] Build error on
 "drivers/net/ethernet/intel/ice/devlink/health.c:35:3: error: initializer
 element is not constant"
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

Hi,

I got the=A0build error messages as below:
My GCC is: gcc (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0.


  CC [M]  drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.o
drivers/net/ethernet/intel/ice/devlink/health.c:35:3: error: initializer el=
ement is not constant
   ice_common_port_solutions, {ice_port_number_label}},
   ^~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:35:3: note: (near initializ=
ation for 'ice_health_status_lookup[0].solution')
drivers/net/ethernet/intel/ice/devlink/health.c:35:31: error: initializer e=
lement is not constant
   ice_common_port_solutions, {ice_port_number_label}},
                               ^~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:35:31: note: (near initiali=
zation for 'ice_health_status_lookup[0].data_label[0]')
drivers/net/ethernet/intel/ice/devlink/health.c:37:46: error: initializer e=
lement is not constant
   "Change or replace the module or cable.", {ice_port_number_label}},
                                              ^~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:37:46: note: (near initiali=
zation for 'ice_health_status_lookup[1].data_label[0]')
drivers/net/ethernet/intel/ice/devlink/health.c:39:3: error: initializer el=
ement is not constant
   ice_common_port_solutions, {ice_port_number_label}},
   ^~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:39:3: note: (near initializ=
ation for 'ice_health_status_lookup[2].solution')
drivers/net/ethernet/intel/ice/devlink/health.c:39:31: error: initializer e=
lement is not constant
   ice_common_port_solutions, {ice_port_number_label}},
                               ^~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:39:31: note: (near initiali=
zation for 'ice_health_status_lookup[2].data_label[0]')
drivers/net/ethernet/intel/ice/devlink/health.c:43:4: error: initializer el=
ement is not constant
   {ice_port_number_label}},
    ^~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:43:4: note: (near initializ=
ation for 'ice_health_status_lookup[3].data_label[0]')
drivers/net/ethernet/intel/ice/devlink/health.c:46:4: error: initializer el=
ement is not constant
   {ice_port_number_label}},
    ^~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:46:4: note: (near initializ=
ation for 'ice_health_status_lookup[4].data_label[0]')
drivers/net/ethernet/intel/ice/devlink/health.c:49:4: error: initializer el=
ement is not constant
   {ice_port_number_label}},
    ^~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:49:4: note: (near initializ=
ation for 'ice_health_status_lookup[5].data_label[0]')
drivers/net/ethernet/intel/ice/devlink/health.c:52:4: error: initializer el=
ement is not constant
   {ice_port_number_label}},
    ^~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:52:4: note: (near initializ=
ation for 'ice_health_status_lookup[6].data_label[0]')
drivers/net/ethernet/intel/ice/devlink/health.c:54:3: error: initializer el=
ement is not constant
   ice_common_port_solutions, {ice_port_number_label}},
   ^~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:54:3: note: (near initializ=
ation for 'ice_health_status_lookup[7].solution')
drivers/net/ethernet/intel/ice/devlink/health.c:54:31: error: initializer e=
lement is not constant
   ice_common_port_solutions, {ice_port_number_label}},
                               ^~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:54:31: note: (near initiali=
zation for 'ice_health_status_lookup[7].data_label[0]')
drivers/net/ethernet/intel/ice/devlink/health.c:56:10: error: initializer e=
lement is not constant
   NULL, {ice_port_number_label}},
          ^~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:56:10: note: (near initiali=
zation for 'ice_health_status_lookup[8].data_label[0]')
drivers/net/ethernet/intel/ice/devlink/health.c:58:3: error: initializer el=
ement is not constant
   ice_update_nvm_solution, {ice_port_number_label}},
   ^~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:58:3: note: (near initializ=
ation for 'ice_health_status_lookup[9].solution')
drivers/net/ethernet/intel/ice/devlink/health.c:58:29: error: initializer e=
lement is not constant
   ice_update_nvm_solution, {ice_port_number_label}},
                             ^~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:58:29: note: (near initiali=
zation for 'ice_health_status_lookup[9].data_label[0]')
drivers/net/ethernet/intel/ice/devlink/health.c:63:4: error: initializer el=
ement is not constant
   {ice_port_number_label}},
    ^~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:63:4: note: (near initializ=
ation for 'ice_health_status_lookup[11].data_label[0]')
drivers/net/ethernet/intel/ice/devlink/health.c:67:4: error: initializer el=
ement is not constant
   {ice_port_number_label}},
    ^~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:67:4: note: (near initializ=
ation for 'ice_health_status_lookup[12].data_label[0]')
drivers/net/ethernet/intel/ice/devlink/health.c:70:50: error: initializer e=
lement is not constant
   "Change the module to align to port option.", {ice_port_number_label}},
                                                  ^~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:70:50: note: (near initiali=
zation for 'ice_health_status_lookup[13].data_label[0]')
drivers/net/ethernet/intel/ice/devlink/health.c:72:3: error: initializer el=
ement is not constant
   ice_update_nvm_solution, {ice_port_number_label}},
   ^~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:72:3: note: (near initializ=
ation for 'ice_health_status_lookup[14].solution')
drivers/net/ethernet/intel/ice/devlink/health.c:72:29: error: initializer e=
lement is not constant
   ice_update_nvm_solution, {ice_port_number_label}},
                             ^~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:72:29: note: (near initiali=
zation for 'ice_health_status_lookup[14].data_label[0]')
drivers/net/ethernet/intel/ice/devlink/health.c:74:3: error: initializer el=
ement is not constant
   ice_update_nvm_solution, {ice_port_number_label}},
   ^~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:74:3: note: (near initializ=
ation for 'ice_health_status_lookup[15].solution')
drivers/net/ethernet/intel/ice/devlink/health.c:74:29: error: initializer e=
lement is not constant
   ice_update_nvm_solution, {ice_port_number_label}},
                             ^~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:74:29: note: (near initiali=
zation for 'ice_health_status_lookup[15].data_label[0]')
drivers/net/ethernet/intel/ice/devlink/health.c:78:3: error: initializer el=
ement is not constant
   ice_update_nvm_solution, {ice_port_number_label}},
   ^~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:78:3: note: (near initializ=
ation for 'ice_health_status_lookup[17].solution')
drivers/net/ethernet/intel/ice/devlink/health.c:78:29: error: initializer e=
lement is not constant
   ice_update_nvm_solution, {ice_port_number_label}},
                             ^~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:78:29: note: (near initiali=
zation for 'ice_health_status_lookup[17].data_label[0]')
drivers/net/ethernet/intel/ice/devlink/health.c:80:3: error: initializer el=
ement is not constant
   ice_update_nvm_solution, {ice_port_number_label}},
   ^~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:80:3: note: (near initializ=
ation for 'ice_health_status_lookup[18].solution')
drivers/net/ethernet/intel/ice/devlink/health.c:80:29: error: initializer e=
lement is not constant
   ice_update_nvm_solution, {ice_port_number_label}},
                             ^~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:80:29: note: (near initiali=
zation for 'ice_health_status_lookup[18].data_label[0]')
drivers/net/ethernet/intel/ice/devlink/health.c:82:3: error: initializer el=
ement is not constant
   ice_update_nvm_solution, {ice_port_number_label}},
   ^~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:82:3: note: (near initializ=
ation for 'ice_health_status_lookup[19].solution')
drivers/net/ethernet/intel/ice/devlink/health.c:82:29: error: initializer e=
lement is not constant
   ice_update_nvm_solution, {ice_port_number_label}},
                             ^~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:82:29: note: (near initiali=
zation for 'ice_health_status_lookup[19].data_label[0]')
drivers/net/ethernet/intel/ice/devlink/health.c:85:3: error: initializer el=
ement is not constant
   ice_update_nvm_solution, {ice_port_number_label}},
   ^~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:85:3: note: (near initializ=
ation for 'ice_health_status_lookup[20].solution')
drivers/net/ethernet/intel/ice/devlink/health.c:85:29: error: initializer e=
lement is not constant
   ice_update_nvm_solution, {ice_port_number_label}},
                             ^~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:85:29: note: (near initiali=
zation for 'ice_health_status_lookup[20].data_label[0]')
drivers/net/ethernet/intel/ice/devlink/health.c:87:3: error: initializer el=
ement is not constant
   ice_update_nvm_solution, {"Extended Error"}},
   ^~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:87:3: note: (near initializ=
ation for 'ice_health_status_lookup[21].solution')
drivers/net/ethernet/intel/ice/devlink/health.c:91:3: error: initializer el=
ement is not constant
   ice_update_nvm_solution},
   ^~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:91:3: note: (near initializ=
ation for 'ice_health_status_lookup[23].solution')
drivers/net/ethernet/intel/ice/devlink/health.c:93:3: error: initializer el=
ement is not constant
   ice_update_nvm_solution},
   ^~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:93:3: note: (near initializ=
ation for 'ice_health_status_lookup[24].solution')
drivers/net/ethernet/intel/ice/devlink/health.c:97:3: error: initializer el=
ement is not constant
   ice_update_nvm_solution},
   ^~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:97:3: note: (near initializ=
ation for 'ice_health_status_lookup[26].solution')
drivers/net/ethernet/intel/ice/devlink/health.c:99:3: error: initializer el=
ement is not constant
   ice_update_nvm_solution, {"Expected PCI Device ID", "Expected Module ID"=
}},
   ^~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:99:3: note: (near initializ=
ation for 'ice_health_status_lookup[27].solution')
drivers/net/ethernet/intel/ice/devlink/health.c:103:4: error: initializer e=
lement is not constant
   {ice_port_number_label, "MIB ID"}},
    ^~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ice/devlink/health.c:103:4: note: (near initiali=
zation for 'ice_health_status_lookup[28].data_label[0]')
  LD [M]  drivers/tty/ipwireless/ipwireless.o
  CC [M]  drivers/staging/rtl8723bs/core/rtw_mlme.o

