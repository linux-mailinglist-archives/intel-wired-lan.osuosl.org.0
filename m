Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FB39A2930
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Oct 2024 18:41:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D50AD4072E;
	Thu, 17 Oct 2024 16:41:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bof5rqCf2M6k; Thu, 17 Oct 2024 16:41:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2470406F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729183262;
	bh=JTQ0b3Hc/tVc8EY6V17Bb7P0QpbUQ4FpxruG+CsWoYY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3gQkwU9bxp9+n7ItGdW9490Xq8AjZEPfsbLJxeXd5+Syf+2U+fzGzPG6n/ZEQIqvO
	 t73Jkt3AV1VBvIWNg/xcdIGVXBUzyIfhGuTktzCglbFnnXVyr9WxzXS/7mYLsEyqOv
	 pGzxEb2c1D7UNw0gHxSmel+EWg23SGSL0dQZJmvTUi6e2G2sFuR0yZbm0MGRUspXah
	 /14vVfflQnMWkLlfw3kcpt90B6/NyYk/yH4R/TvB77RetYNI/ssO1ocGUzCswCQ0gu
	 AFDur6BwfDvfRj2+ROViybppQdTRxpPcVQva+liRD+CpcU/c1VslzczjPfzLIUK3UW
	 7wGemV7aMSN1Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2470406F5;
	Thu, 17 Oct 2024 16:41:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4DEDD972
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 16:41:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3B1D660639
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 16:41:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z1zhR08Wqi3Z for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Oct 2024 16:40:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 207D8605D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 207D8605D9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 207D8605D9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 16:40:55 +0000 (UTC)
X-CSE-ConnectionGUID: /QKeksc2QPu52WRDiz4xZA==
X-CSE-MsgGUID: B6G5KKqpSkeGNREPg0isow==
X-IronPort-AV: E=McAfee;i="6700,10204,11228"; a="28123608"
X-IronPort-AV: E=Sophos;i="6.11,211,1725346800"; d="scan'208";a="28123608"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 09:40:55 -0700
X-CSE-ConnectionGUID: XobmILuyR4KoGnf/r5KwFw==
X-CSE-MsgGUID: 1Qia+dPISUO7xO3PzFZtvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,211,1725346800"; d="scan'208";a="83679109"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Oct 2024 09:40:55 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 17 Oct 2024 09:40:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 17 Oct 2024 09:40:54 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 17 Oct 2024 09:40:54 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 17 Oct 2024 09:40:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BVOf2zWoUuY0BquujLGgPFLU2Er8ibpMArgBYndxeyJ0x9mCJZh3pE6Hsd5pp3vP1a3qlbPsJt//R5EMD8DpxAvNJ0h6IDa0J8bzV9k+Pp6BpN6qb+xgZX+rIH5K65yXp+p7QV+dI2nrfG80XPtHqAv5VMcZr/Bny99q8chPTO5PBPcUmvWSW0jEHyfSQR3IBqbUG0TDGQUG/f8ypHpgilIdrR+GKUFrbMg4KD/EtRnUmHTzXumvPl8SfQR0C3Ehlw/DEoHZCFTWvaSZUsFqgF4PpaXXiTsWve/ymZdDqOhmm9jVl20hSd1uZog2eDg/F0dgFOwQkF7rWSRYTkpUPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JTQ0b3Hc/tVc8EY6V17Bb7P0QpbUQ4FpxruG+CsWoYY=;
 b=xpYbC2Rg4pHmsczkSj0I7tuPmBzp2SRlpJqWSSJe6uwV+9s7AsUQ8UvjYNhi5JMXzlxqreWYlrZY1Rj1IXbNlrHVcB72QtVBOJVTWsfB98NAdEca0gAfuq9PFilJNm5b3W8zD/vC6tbp8as0WnD7brfeugWVXlpJDabmn6I3Ad2Jzi5IFjL84AeBQr4bhr8igTt7lcURYMagUnUj/lViZvJ4BVUOADlNB5pxxcU7EFLCjdESN9gQjec2oqvYIqW5R6lMP2NsjHEuwT+jjYJIvJed7HHAzjh7ETXhrM5dnYlMgo1A8wtC8l2ZlSr/0WLRr0JEe06lMwXuT6jQsDuPpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SA1PR11MB8426.namprd11.prod.outlook.com (2603:10b6:806:38d::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Thu, 17 Oct
 2024 16:40:51 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.8048.018; Thu, 17 Oct 2024
 16:40:51 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Frederic Weisbecker
 <frederic@kernel.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Zaremba,
 Larysa" <larysa.zaremba@intel.com>
Thread-Topic: [Intel-wired-lan] [RESEND PATCH iwl-next] ice: Unbind the
 workqueue
Thread-Index: AQHbGQIboYEBs590xky6lbC31rs0YLKI5WYQ
Date: Thu, 17 Oct 2024 16:40:51 +0000
Message-ID: <CYYPR11MB8429E2A867619D5CECDA88E3BD472@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20241007214408.501013-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20241007214408.501013-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SA1PR11MB8426:EE_
x-ms-office365-filtering-correlation-id: 3d1d1909-7cdf-4710-58b6-08dceeca7641
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?8Pzwbeyn7neyuV3d0OE9K8CDEYFaoZrlJ3JLjsmE9b5N+2l5tLMM8MlQ+5GL?=
 =?us-ascii?Q?SlVIH+nBPhVgZ+YUIdY1MvtX1TAHgPFnmosxqObmD8ndT1I1LugiUuXpTH8M?=
 =?us-ascii?Q?4/KpVTDELKT2yPphfSL6AubZuYhEqunyoi+bPyj0Rf0fnvOXKpMdACVUZDbw?=
 =?us-ascii?Q?c3CoPxQy6rzimaFPXaC7v6DfA3KUzUnckAf7TNTn62cEJht+XxBXE06mTRG0?=
 =?us-ascii?Q?IoweM08fxoecDcPW5+6Yuy2j0fO3+XgGJhOZYIPQzRO5x2jC1+gSGy/pKIgk?=
 =?us-ascii?Q?QfJ7w6khE3kutRZSX/U0+oh5GGsSrvhz1eqiEPqWSKTkc3WYwDq+/FPzkfck?=
 =?us-ascii?Q?dNqYJERKH+ztq74LaKOfe06wonlS3JLwMIN+u+PmUz295Jo7yt6SC5Jp5boF?=
 =?us-ascii?Q?vgzLOiggMdEKJ/+BQNAtaIw6DsslKzyPrVZ1lk6rn9D13tU5le80Xyv05gAn?=
 =?us-ascii?Q?zGQUjCj+RJ0xlxYkVvUTBblzJgj5TSHCuTtkBE9ElpEKMLm+t9e6b1MguzRn?=
 =?us-ascii?Q?2bJLOYzkJ39i8Bn2XtoD82PgBzYilT64mVD+mVx4nXOBl161+RM6zWzjUH4+?=
 =?us-ascii?Q?irucI46KVGMtEq5fO8k+HBvNv8yZfx4iQOEeCYdEJLfzCCfEHQ+5LRu/knMQ?=
 =?us-ascii?Q?Nk7HJ6sX3pOz5iUk//GeVRSHJLLqOZfYEDYeU8Sgdpm5zaO8AlvzgoE/IADt?=
 =?us-ascii?Q?OK4OXGeqjpOv6zJ7oVpZKp9FHu7OZa9zwxtZHUZf/iuAxRP0s9ESgr8VIaeF?=
 =?us-ascii?Q?H6qzJDnqnavcOXSn2dhoSqHv2B41H+V9rb6hlnWdc66JPGLezYcBLVLnDGxP?=
 =?us-ascii?Q?jeCQ9cFr5v2VsDKD3KWvVUCPpmZUwODQ4XjIpfnWNu3sPq075ECm/icN2bwH?=
 =?us-ascii?Q?Pf2JoE8gTGjQ+eC6c+A4iiv2AJhFK8w88cEDu9Tvr5Gq7TM8c0Rch5PPYpWX?=
 =?us-ascii?Q?0ACdhYuA6AD4grfWckK1p4G0/m9d3cRQWYgQ+KmvIbMhbt+dDJsRxcSDF8or?=
 =?us-ascii?Q?I6pSk9mthd5oek+uVmDikPfMEII7ztVbhigHM/98dw7jlojFHY0g51PzLw9k?=
 =?us-ascii?Q?1Xa9Nsbb6LqdtNrFMNOOvcstbhWK0RekO0yPvaxXzcSyu8sqw+YoWRqhm+Q2?=
 =?us-ascii?Q?pBP9uIe+OqCoNjhrXdoEqyYNctTR4tadzqOv1F6xWTJk4ohKRURPXNXIVnoq?=
 =?us-ascii?Q?Vo496vliJCF+Cg846dJJzYHy+JRfux30mNy5eXEyfvRPBLn143OvRVeAw3XK?=
 =?us-ascii?Q?OlnRSvEotCeepsjbDSgiUGPbHJCwFXxhhpvhVQfGFtnOvc/z1RDLxIrEaEZH?=
 =?us-ascii?Q?ODBb1YytqvLC8Jy3eWULBybW7xRL3vS/Ef2SifIFUskPyjDmKHSmYVs8XqoT?=
 =?us-ascii?Q?P0CRoEA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZtmPIKqWEgVQhJq36VKhbZ7ypPkQuAzpkl8XPoPcKIdWUJHQpvhkSXK+01p7?=
 =?us-ascii?Q?3UfPzeYeIfWx8QPV9yqPdp9eYuT2tufqN1Kmob0FBZdNctTAHveqWhf23cCC?=
 =?us-ascii?Q?yC2JQZsZ0DH301p1M3Ild+w+iqr2lzjbu7aGT33YC1bUOkYinKvVZ3xgQSQA?=
 =?us-ascii?Q?Y41I++sCv0ADR/LZJNLE6ItDIrnmoD2Awh8df6uVRwbrJ0AU3dMRI9hQPldX?=
 =?us-ascii?Q?9fk4zNeueVjvI+ULzsNDXt2PgRZgfh3LNlA8CUTC26dKUbmVAF9feB0uv8o9?=
 =?us-ascii?Q?G6NvE0uP6xYb/VempwUHt7WEMOgZ0zoDFZ4Sut/PSFU8+lwvM+pxxHKjMfHO?=
 =?us-ascii?Q?IHw97FuhkN3Wirr3vVSkPu5NqJsoO4Owll4D5eqNJpzf34+7Z6el7w0MntR0?=
 =?us-ascii?Q?AbIds0a3PVXmnHWjqEKOg6SNs/eU2j/anUNLhMd4b/QFRla4LxY/1ywxq2O4?=
 =?us-ascii?Q?EfkRDAsuGTiRaUDK5MWx31/dPop8DuG+qj3dZES3jdodrm5BiDbjFK+TblbF?=
 =?us-ascii?Q?1ZgR4aw5zkI2d3dXjL1qNIlRaJhClIKwTEQI0LBqs5be77PHtq0UEAf+H5X2?=
 =?us-ascii?Q?Ikajr+PYRkw5NCV5CYLGnVe9fZCt/fpUKeobTQROiZqauo8FWYE1IN8jh5hj?=
 =?us-ascii?Q?z/oR8WLzUVp6EeIJTPdyIpP4mHFCieULUmplYHKwznSfYKdAc49TtNiW8zY2?=
 =?us-ascii?Q?OkWOouPINLQ5KZlY9f2QaJ5m3PK+2Vi/g4FgCxGvYlMB+zz8meIv3oSOFpd3?=
 =?us-ascii?Q?dWozZ5nKlUR0wLrwLNKMgHxe83DXEMOMoy2+r2ubfLufd+cwe02pc0Ww9bCX?=
 =?us-ascii?Q?8vAaBZMyi9nPYuDojgybZXfvIhKfIDjF2RsKL8B5ArAc8HK83kXXtTwUS7PC?=
 =?us-ascii?Q?1XPrZkATjxFQQPffVEbn9sH/M5Efe+X9zGuM3sZgEZoZzFkr9Gamo6o/FqMG?=
 =?us-ascii?Q?ndBGB1P6T2+JJyaY6pqlAET7wfZh5Lxb5hh81s4hmb04yQMWCr7Axn/+OENi?=
 =?us-ascii?Q?xJXi73JXosp0glCej4ZHM32N28Br8a/KVRRNTz4VZAXlaFlYM6NwJqYHQlb0?=
 =?us-ascii?Q?6hvvuaIib6ABkp6ZColEMg8X3iwYSKPpA+kan0ggcypO2hrxqb9aykYfRl6n?=
 =?us-ascii?Q?UMPBY9CKN9zrniNeGOg/LmbdOrNFjkcY1w+YOgE3WV7hIJAAYyVaW0RLhExr?=
 =?us-ascii?Q?yXJFW/NM2SEFuHF70I/sUB798iIGzfJztxi5R9zDb7sZ4quedLPVZGiBXoxS?=
 =?us-ascii?Q?tZ+yztL+Mh8sQ+m1WLSYATMHUAsmMsLMGhlKbCjRvn0iBauLlF5fRXtBLH9A?=
 =?us-ascii?Q?xELwWUns3FZcShwU1xbxjeH3LAnU8xmbUaU24Cm+j1wBEEgghWqHCUpeL675?=
 =?us-ascii?Q?64E5FN/DvbxcH3+82s71cGzD9+68+agsBLjPo9xpLxv/XRYqfYjrCYMp1UTi?=
 =?us-ascii?Q?eQZwudZ8KcBxbAf393pbOCiFqdfX6ga4dkk7WxYtr1A3qS7XHi0gm4758GZQ?=
 =?us-ascii?Q?qr2OvTK7QPxJGFej7Y9Tk0JKhzsmV44uHxNLNadThBJa6fVqR3y5xSwHiT1P?=
 =?us-ascii?Q?uQpG9p8Jnyhy0Jl1L5rYpnDtx8W9doT5lqMRpA7tPgvLcDG2bzYwRpAQ6EWz?=
 =?us-ascii?Q?Pw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d1d1909-7cdf-4710-58b6-08dceeca7641
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2024 16:40:51.3961 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BqwiQk4/03v8dhr7VjWJADGtLYiDHAeews0NNsSktYtuNeRt5SVSPbWvKouksYmEhWrLmjWYzWve7Kn0DYl4phvRIpfVcatG+4hrTgpqyIfqAD9Quugdm2485NZmoOta
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8426
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729183256; x=1760719256;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/xiBk4Hyc7//m5JkME+wVZr83xglYx82x7SnZpjnTPQ=;
 b=PIqo50bbOtWSCjDovXsjO5sDyio48vQ+j+idZffcDmOU6TBcLuXObmFX
 smx6H7hlRXsx1CIyM2GUIbZiIf9PGvlGKWge0f8KedkfUE7NtBrCbe9+n
 7F4xC/wh+6QnmCLzzO127Mfm3UpR52hcJ4KDYd/OnOaiEoivHbFOXXRdG
 sPLMRQs6hq96L1owWnGOEraEaBo6FNLoZuDxy4kCq0Q6yzdLYYW29XDO9
 uDwHV2dhqCe4GjZoY+EfHowpIsMFmYHi3hweA3TUCa10h8vKwDYPxxEIm
 oZwQ31dgq2D+kWoAG0n5on1PC8wknnw7uTUhQpAGfPm0cpV6+mmRXNJH3
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PIqo50bb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RESEND PATCH iwl-next] ice: Unbind the
 workqueue
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of T=
ony Nguyen
> Sent: Tuesday, October 8, 2024 3:14 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Frederic Weisbeck=
er <frederic@kernel.org>; netdev@vger.kernel.org; linux-kernel@vger.kernel.=
org; Zaremba, Larysa <larysa.zaremba@intel.com>
> Subject: [Intel-wired-lan] [RESEND PATCH iwl-next] ice: Unbind the workqu=
eue
>
> From: Frederic Weisbecker <frederic@kernel.org>
>
> The ice workqueue doesn't seem to rely on any CPU locality and should the=
refore be able to run on any CPU. In practice this is already happening thr=
ough the unbound ice_service_timer that may fire anywhere and queue the wor=
kqueue accordingly to any CPU.
>
> Make this official so that the ice workqueue is only ever queued to house=
keeping CPUs on nohz_full.
>
> Signed-off-by: Frederic Weisbecker <frederic@kernel.org>
> ---
> Resend of: https://lore.kernel.org/all/20240922222420.18009-1-frederic@ke=
rnel.org/
> - Added IWL and netdev lists
>
>  drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)
