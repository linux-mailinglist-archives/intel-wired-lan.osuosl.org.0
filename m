Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 17FBA8C01A0
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 May 2024 18:01:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3EFA960C0D;
	Wed,  8 May 2024 16:01:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SouIo3386I7v; Wed,  8 May 2024 16:01:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0079960C01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715184107;
	bh=sdzT50ZXM1MlvvCEi/icBSrBmgIYZakuOTsH2/L5n+Y=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2nVQtVive0Ng17kt5WfrhrR1dVD1DPr3Z9jUd+/BcU5UJq4VMjd+iTuv9bOeKkY6j
	 yTf4BCEBsvzgxgbUhlwlbcUl5Sj/kl9kbXrqt7cquQQC8rB2SINWAmCr4K2RUnjBGZ
	 mnWzWXVIFrPJZwqnWtyHZQ5w7XiNm2TJGZBAiz3+Z756BOVhSOpr/c//4icefmfsnO
	 sZGZzeEImzf5jTVD6Yg7cW2LYnkTbqjTj4pnzjbKSNRPgJvBQ/xG5fHAO2oW3tq6cz
	 67KtC68KlHy9pWxLMaS4b+0X+N0UnYiZnkJ5AL2UUyJpD7eI0QB1UBGpHHQMsMu9c2
	 rGYiuNc4XsSYw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0079960C01;
	Wed,  8 May 2024 16:01:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7EDD51BF288
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 16:01:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 699EC82894
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 16:01:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QVtrTUPvbx-4 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 May 2024 16:01:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2703D81FCE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2703D81FCE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2703D81FCE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 16:01:41 +0000 (UTC)
X-CSE-ConnectionGUID: cCu3/e93RlOOkruJGUNtqQ==
X-CSE-MsgGUID: e6fVygiwS4eoG/Fi15QIbw==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="14865373"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="14865373"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 09:01:41 -0700
X-CSE-ConnectionGUID: Vc7l8QZiSFGP1zXcDc7FzA==
X-CSE-MsgGUID: 37jtKM5PS+yiFqHcXTuQ0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="66362816"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 May 2024 09:01:41 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 8 May 2024 09:01:40 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 8 May 2024 09:01:40 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 8 May 2024 09:01:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=feXxUXB15sdxfz9WWoPRfEN/SrHUdoFqTuPCa0x5Ak7Jkez7oRyQf3pBxLDVW/2vByvpPMQln1d1yM7xzoT12blCa65bZy+dWrVYrLclA0gjI8Y5+8PibFmIrO4RAEkUiNQpXPM2W4fRanYsdqGRTwJhGbeC/6LKW6QVKL8L+RQq3+qk3F2DAjADWAsikYzgy6PmLrHhdKCcDlOxlNOpAQNvTgPL6knQkMgXNiFmhiZb4jnr4JhpNBkS/V4/QqDM8BGz1Fwb9Izx0oRTXqtXA/7UWSuT2iZGXPOfsnZ6g7lW2BdOVa+Pjv3JDGlQHF1QnQ0DNPeVeTxksy8Dwkaktw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sdzT50ZXM1MlvvCEi/icBSrBmgIYZakuOTsH2/L5n+Y=;
 b=iQA5ux6f4vtqGls9RozCro61JnPoArlJvluMAwfUivvPNN/hn797207N/+TgG6MHH56l5sQ3DxuMqbO2sNiQ0N7G2oBtJdMvbAB/OwMXOC/mVRIS7YtAfdFR+VB33Ss0FZbNgxd2i8OpKE5zZUydrmCR4ymk9R9js2AQiRz2L0wVvza1ChhdjH5Wmk5lVowsDqDU6AGl22IaQWmu51wkUsKbylMxYBLmtm+mmCHJPd8y84uPKCBP39Fzr8MDOUlIk4KadqHFWCrGI7jhyFJZfn5GYO3rUNx2/bAQD2UECKl5/JxGih8O1DszMlbDThA1H8xGfRJ9RXksmQfDOyR0UA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DS0PR11MB7384.namprd11.prod.outlook.com (2603:10b6:8:134::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.42; Wed, 8 May
 2024 16:01:35 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.7544.041; Wed, 8 May 2024
 16:01:35 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] ice: Fix package download
 algorithm
Thread-Index: AQHaf8Hhoq2fUYLqukuK3CUGhUFVlrGNwiNw
Date: Wed, 8 May 2024 16:01:35 +0000
Message-ID: <CYYPR11MB8429A6FEFBB41C62D89E4FFDBDE52@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240326205951.1596963-1-paul.greenwalt@intel.com>
In-Reply-To: <20240326205951.1596963-1-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DS0PR11MB7384:EE_
x-ms-office365-filtering-correlation-id: fa5a45ef-fad4-4e2d-432d-08dc6f7822f0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?KAz/8+Zen+bncRr8F2o6Mmjyxib+XJv6mAv+4m6aHFa1oSlXsMvf/wC5gRKi?=
 =?us-ascii?Q?8HjFVYZzBGsCyNfOX+3YTkgAtd8T6pD9cHS2SfR8k6sEkPNg1uECJrbteGUi?=
 =?us-ascii?Q?WnOCgGhVk1gCPit62p/8MkNuRzNZwpk3BFDlR0OEDurbilmnHS+eeBNVWOGD?=
 =?us-ascii?Q?bhkZsaAmqpUlFBMlv4EOt3lmXYRMRYgW7+Esh855MugW6T9Vco/WY45W16jq?=
 =?us-ascii?Q?htTJmg1huh5aMHDr+cj4/VwdedziQqvBGZTBrGDOb5NXRY+0x8y4xCiouZow?=
 =?us-ascii?Q?MtThDYW5WKPA4o2knCZBn7VrXFBwsZ/5l2jLa+O2H44QICHW2x1MYObVPfjl?=
 =?us-ascii?Q?meQWS+mj/dgUYRddqPetDpQ6cESnQGi5uS4MHDmPm8Dt76f8r5hf25UOELB0?=
 =?us-ascii?Q?/jV104cRWDSO9BUlpCE8Jo/j6KYUMKegndz0lWl/YHG8NheYSaTB+PzG143T?=
 =?us-ascii?Q?dELtPSxZDr89bnYq9d92Y0H0yc3+BNP8RJM/RsR8PTZca64PFnFHb2lEm6y3?=
 =?us-ascii?Q?XPAyW9nBIqJoU0X1ZGROEWG4SUG/xKgWyu9d0HC9maNdC0LFbk28wWWpgfoK?=
 =?us-ascii?Q?zRjohZlFvIX/4jdMS12S0ZupLw6HuClv6l7SivWpicsUjLDm1NmDNDTbDzNd?=
 =?us-ascii?Q?XUvW/i7nSjPBs0dnWvijz/Jjr1DrmOqhc+PluEPqCbM6IXgMShg2kPN2IT4n?=
 =?us-ascii?Q?RN9/lo4JJEfK1KKVDXFbLKUWZayTO5rp40nDuGhqe11IK2YzNKGKQZfZgywT?=
 =?us-ascii?Q?3s+Vo6qmAelVchEYsIJPCZe8992XqxlIiLjRHC8mplGXH1XKTpgpv03d1pE0?=
 =?us-ascii?Q?3Z8hdIZDMKVv7ZAH82oF3nRibi2MLklb/E9QYGy5+PnmoCtTgoQBuNivqZZZ?=
 =?us-ascii?Q?N+fkxepBgZ3zIB7KW6Ogxpycvc+kwiQwhvKDuZ2yPlWtUY9WxPN9CAGXv2jL?=
 =?us-ascii?Q?2qYUQttejNZrNHjBHwkTB35YjxtqCUUwB7oJ0RqeexscvDtjMI+v4JfGdKWR?=
 =?us-ascii?Q?t9R+9bABbOkHe+tzsjAKzgQR5ja08NkyFVCB+aeaz3DIawZYvU58FqFCUAwR?=
 =?us-ascii?Q?2WrshC/B5EmzZBYiU7WnD5+TsUoEC1At9XQ7BMDrQyN8EFg1AVVkBnlAwuQm?=
 =?us-ascii?Q?tQQfqJifq6Dx0pjUqLi8l5ohUboDWWggdlbyTXTV3ONaO8plCgZUBmgA2kY4?=
 =?us-ascii?Q?0BeTwvPR6JGisXudwGVMwcIsUFoGqCZ9doenIv7nGM7DonvID9a3+5Hun/kC?=
 =?us-ascii?Q?0RzGuGL9GNZiAge53qMTJnc53YwQSjlYNxYZPyuaSYqtca81QEOodbyw83uq?=
 =?us-ascii?Q?obx7Co94vusbr0xdy/C8vWg4ftNdVlXVQHbA9PU3NM+6hA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/Cl3BxF8k6BvvEY3GwZIwwu1xPxVOZZ1iGQEC0OsGmFGX35xpNq+YxEjovmk?=
 =?us-ascii?Q?vZ13d3zJszisAeJdmNk+r69Re0fNo1gqWHokh0ORVXcLoB5J+Plvw7U0/ngK?=
 =?us-ascii?Q?Ezo6v34tAqDHzW2l7IIHeQy3U2Ri/dWvPhj3MGzaVWBt7gRMEjHE4+3m/9Dv?=
 =?us-ascii?Q?SZqId7U758ajPyaN7nUyw9RaB4ZcCGnVSM7rqMdj8tQS5v7Ih2eFhVaky+Sm?=
 =?us-ascii?Q?7yDnnma+fGjMuss+H3BLpcONecm4fCqbNPfZjecSH1Hh9hpmsxtYh2hgVUdu?=
 =?us-ascii?Q?SYhhmOC+akRD0zAUL7If80VGkMjf+PZj5mqsURmFOc0XWR6eQ/HNjTriDaGI?=
 =?us-ascii?Q?CxwNrhPDK3b8g0L31O5oOIQuOP3XTGjaI9iRnYR5cH8CDOGujLz8JHE7OZyh?=
 =?us-ascii?Q?HpOAjO5seG1uXQgwQiRwvyyLURYaxw/n7tRhjc3jmaEOybcITImN8D6U22W7?=
 =?us-ascii?Q?AHOFaLATFUYo5CpRqoZTUX4g9kikSFpzQ5y5TGsXJVk48sHqN7/IxaOyGawf?=
 =?us-ascii?Q?53yW26n6y14NU0N9m/BjSnIT+Lk7RwjquiVG6jtm7ZYLRXBzacsFl1w+08AS?=
 =?us-ascii?Q?EznJYD3PyDqQt5s6EB5cKrgc157LL6rmrSnOZuzSxjk1Huo09obTjcDJFlET?=
 =?us-ascii?Q?1RIai2o6wMgx3HOaDMYtXFMbRfU9CvRVId1IgnxEs8qCabCygeibP+i4gBVw?=
 =?us-ascii?Q?EvabNNE/5Y+ybeJkJ10LSuLf5ppYAwlwCPd7lqTpOASmUJW3Z2rKLLPAqJOC?=
 =?us-ascii?Q?TrbndKS3BdeXSUd3gUsO6Xak3K6JPnAwpsl0VwUsX3UMIki0RSTxZGlSr4wa?=
 =?us-ascii?Q?TPEqC+fK6uhSEo8pvXHESrEkFkHn7J+8Y/6fjhYN1nbAZqxUoPN4X7IAf1/I?=
 =?us-ascii?Q?htqJSne4thX8+bxodKBGARuBbzgJ1Bmtl/pDwMP+6+YEVgSYFlNTjOG5iYGt?=
 =?us-ascii?Q?A2vUXU7Rgc1xjCFkpXBPApKaoZxWzBbR/E+AubcbgmW+Tzr9IHVgAYgiYeil?=
 =?us-ascii?Q?zLfloDHE8FOrDNEQC9jUcv7b+niLwJVbIKaTBZhtkc/sFUzJMmT8RSz8870X?=
 =?us-ascii?Q?AXAxfje2Bysy5xGODbC4s/UVr9tQEWRu95oFA0IET8Fgaqixm/WlcI5EpVrt?=
 =?us-ascii?Q?a8NjsNTV30Z6PQKWRzUk2FXImcFVa0jYecSapAe9HohIVHwxt6SyjCZSlWCz?=
 =?us-ascii?Q?MhcC1d1+u/qWcapYBk1MarE6cp85f5AdHMKppMb1D1mmXPUwsHJusVSrvfVj?=
 =?us-ascii?Q?R6rYpF+5SBfMdOcOiZjQqzFPnFTU4MO6LnNw3MCq4WYjoBYvbD7ZZcfs9Ido?=
 =?us-ascii?Q?iGC2cmJpF6+H5THzW7U3UrSlIqkNtSMb9CzGrgUtQ/qKBStELHVfonsy4QTk?=
 =?us-ascii?Q?vx/9HRoBhPmsJDIF/a7BEtZBgIK8IxzRn92ACFBK06/9Gq+MT1AitcqIzjUF?=
 =?us-ascii?Q?I5Ojt77/cuotaigw3eYtj3fe3eALvmsbTHemn6r6wkA8IkPRTxmlw96Ll4HJ?=
 =?us-ascii?Q?3iAvM3Mh5sP9fvBrp8s51M0QzUsx8yrrsUdML+Nu/OPJv9HlZP7UncH5KdnG?=
 =?us-ascii?Q?aSPGgB4shfIU3B9qkS+fzLjoodNUacP9JD0ArJ37sHpmR7Y+DOGO6vdQmNHk?=
 =?us-ascii?Q?TQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa5a45ef-fad4-4e2d-432d-08dc6f7822f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2024 16:01:35.2081 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hUlrwYDVRSBz9ziDFv/QVIT2kt8hEl7KJ/hH1CUuaM90NNA5vgL4BZP2h+T9SQewCcNY2YqseiurH/th8xuU9f+bG7goBQ/j/NST+J5FXHi3oUMi3iPPu9DjxwQIs9An
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7384
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715184102; x=1746720102;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FZB8EszZ370ffbD1gsquCd9vznKAx6PQBAm8knUbgzw=;
 b=N2Ikqm+LEBuB8kj+v49UHNdPLUQ2gxwWPeS7bcNHqdwd5ooP5e/G62Ks
 TiYq8Ieer/FYctuWHzjFPqIWoJFYQ2eKlQmGIlTdoqzPZh+Zte6JChHqm
 cpx3wXQrWGAkiypGRQk4aerR6rN8XqX1RbKjP1ipvLOJ48Ij1wQSZt0Ey
 81uVW2pI2oB11382DHNlOG9jY5r9C3SQceFnLnZbhCC4tO10+qpROy7V4
 hNulXKQqqgTONjFGXMMNcd6Ia4DC4MQojdSFQvOhZ/m22gw1kvv+8tiYC
 pCVI6FZHd4KQURkuXa/YVYSCQrGrFMYv8VSndoPpeXAiIvEKNpZOWep0n
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=N2Ikqm+L
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Fix package download
 algorithm
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
Cc: "Nowlin, Dan" <dan.nowlin@intel.com>, "Greenwalt,
 Paul" <paul.greenwalt@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
aul Greenwalt
> Sent: Wednesday, March 27, 2024 2:30 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nowlin, Dan <dan.nowlin@intel.com>; Greenwalt, Paul <paul.greenwalt@i=
ntel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: Fix package download =
algorithm
>
> From: Dan Nowlin <dan.nowlin@intel.com>
>
> Previously, the driver assumed that all signature segments would contain =
one or more buffers to download. In the future, there will be signature seg=
ments that will contain no buffers to download.
>
> Correct download flow to allow for signature segments that have zero down=
load buffers and skip the download in this case.
>
> Fixes: 3cbdb0343022 ("ice: Add support for E830 DDP package segment")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ddp.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)


