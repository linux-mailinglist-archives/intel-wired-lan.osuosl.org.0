Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA83A650CB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Mar 2025 14:28:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3BE6760B83;
	Mon, 17 Mar 2025 13:27:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J7uLjLQuHlSm; Mon, 17 Mar 2025 13:27:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7203860B88
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742218076;
	bh=vlxbDKKhJ9Fs+JPphcXfqz08rzwRGjKwRp26+O2+2b4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kTvh19fA741KOkQUG3SQI3s+X8s/Wt/QGaFEk0DUbxGfJu1+qBuBbpTVCxCmizaE2
	 5B8niidJwVUz+M6gcVidPDb9jo6M7/v03+2hr0NFXb1MgB1dCWoMh9iLyjCgXjRysz
	 MrJ7+72mVLOOaH7Ifc5sywDh8XCPqy8I/Jq3zEFpiBQoYj/dd7uSy6vd/xkrgRMA/m
	 omSv2sUQeHX50pNqcYeRFygTRWjaUcpFnik6GJ78OHqK8v0OzAKHPjx+cWvkDlbd4I
	 hZtZAbEPKOasZ3teGYIH9/VYx+BSPhwVMmpc7Vlr4BLvoEYukov7LvTj7ZCHRWm4Xo
	 o+4MHWlD8lPVA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7203860B88;
	Mon, 17 Mar 2025 13:27:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 714C712E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 13:27:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 53FDE4097B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 13:27:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qURy5raCloeR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Mar 2025 13:27:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1D7E94042D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D7E94042D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1D7E94042D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 13:27:52 +0000 (UTC)
X-CSE-ConnectionGUID: 4gJ/Rw23RxOmkF+H8TVQsg==
X-CSE-MsgGUID: aVa3vLWDRyyzFrBxZqfi5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11376"; a="47086066"
X-IronPort-AV: E=Sophos;i="6.14,254,1736841600"; d="scan'208";a="47086066"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 06:27:52 -0700
X-CSE-ConnectionGUID: d8FymJOTQ/WJgS1EmdWqRw==
X-CSE-MsgGUID: 6wpy8IpPT+SW74BzvDnUhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,254,1736841600"; d="scan'208";a="122886500"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 06:27:52 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 17 Mar 2025 06:27:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 17 Mar 2025 06:27:51 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 17 Mar 2025 06:27:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XlgjU2/paPOwmRQTvLFlRgtLPBBPRrISELmE4ebkyQ/+hAXdVhN/lTQUWigYb0ILvGuXgfXkGJ/BM4IXVHfzVtgnklH0yupCwjngvbm2rz1jj8MpYucGywAka9D+E7UynmGdG0fQ8faqYUan/8PGOayoC24EGovV5QxyluOBT+CD6GAV2NlTgOdJ+OGuikOmYnYh+efumHfB+8d+NvXX1tz6Qbal3Q6d3NLJ6QqvsOwu4FQ58d59Gcy+rErb0coANFb7XRgyVKOeBO7LjgqFNlL1mx13f3cAW2e/DaN48Ip90WGgbT1K0MXVVICvXQEWBKCNaRuONHVRR3Cca0eCzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vlxbDKKhJ9Fs+JPphcXfqz08rzwRGjKwRp26+O2+2b4=;
 b=zBqunaYPer0ynSAUndXXFB+aolnV4OWMae+/AdCZ4UjIYFQnh/bJKVaPMa0vDEfEMAWvIF/Yrd7Ws5BztFp4pZzRy6OMhdlg9+fT1VTMYGJ+g2cumlwrp7ei4c/t8RhMjz+PmV5WxSHXTx9bM31Ml4AP4yvFMG/0ALaqJgnB94CSiwwbLD6oe1kKjaZMVJn1PqR48Eak4dHd56yw064R55omjUN0zVGIXGnP2+YQbDX4wCq8c2tCby5MBmGACvBG/KVojqRBgH1B30MvMLRze7oiSuGuxgofxelFafh1fP0XH8Pvp+ionvGAIJJxwpX5HgaqsqYzVutSGPaC3b+h0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by PH7PR11MB6676.namprd11.prod.outlook.com (2603:10b6:510:1ae::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Mon, 17 Mar
 2025 13:27:37 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.8534.031; Mon, 17 Mar 2025
 13:27:37 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Czapnik, Lukasz"
 <lukasz.czapnik@intel.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>, Simon Horman <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [iwl-net v3 4/5] ice: fix input validation for
 virtchnl BW
Thread-Index: AQHbjPXwofJedwLULkGxZWHb6+VYprN3ZrWw
Date: Mon, 17 Mar 2025 13:27:37 +0000
Message-ID: <SJ0PR11MB58654D6A7569A251E4249A058FDF2@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20250304110833.95997-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250304110833.95997-7-martyna.szapar-mudlaw@linux.intel.com>
In-Reply-To: <20250304110833.95997-7-martyna.szapar-mudlaw@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|PH7PR11MB6676:EE_
x-ms-office365-filtering-correlation-id: 3d0ec80f-019b-4c92-89c3-08dd65577bdc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?DOiQvTDCmNbozWSK8SEapmyxMK9K0KRWt7aqonpN3P9xny3X6ymY5/ffLsG3?=
 =?us-ascii?Q?mH64P1Chx47aWKd2cxOQhvFwTluPeLBZMV9KJUFT4ZYgZnoUpzyf24Dm71gg?=
 =?us-ascii?Q?4j3HTxc81ZiOskh0Bg9U1KHWupN+OQud29Tm7v9hk6sq0XqZijZCunJ5lv0g?=
 =?us-ascii?Q?2MbWuEZym7QwVO27/SpPyz/rynbDtwr1D8FcpKsfxtlCKw05xxSM9D5vldSN?=
 =?us-ascii?Q?rU8PicAlLEKe2R5B1JhrG5lcsMrG1GWaLFcZCn9Z++7bGzNYZCMmH4oKzV7b?=
 =?us-ascii?Q?D2+Xb9K+sz1DBA6+pkr9wbsMJx1ushQdlypAal0OKs7sPOi/7ox3C28X7g8k?=
 =?us-ascii?Q?uFpORgcF/mnQ55ytI/s0ILz3i5pSu8QtyvXyTUkYmdaAPJ5jVKxkM+rgsOT4?=
 =?us-ascii?Q?yALGn+A7XI8zI/YViYqMq084ufHmUSVRDsyMLUrWr//OPC/X99Yxq5SgBH72?=
 =?us-ascii?Q?GzGTdcQJ8e6im+23/OaUKsmdb1jX0g0+W0np9WKm0mkshwXQike8X74cIR7Q?=
 =?us-ascii?Q?QbQMSlfN2vEb7bglrFm1ykgLFaJy0/3v2mcZuK2EEVdtyiajj7UsoDtlkCky?=
 =?us-ascii?Q?sJhEO3AY67rX2Lj7ddH48vXYfxw9tDV2Kgjgz013YgKlCSCQk0uP5ev9I4l7?=
 =?us-ascii?Q?VuHv1k1lB/LPXZn7asTLp72T4beLEtvpkDlxrDSKiHHJt6VLziAAvPFAosS/?=
 =?us-ascii?Q?KI6qqp0VfIEtxAw7vFvJaIKtH/6Bs7uCA6FllmiQVrrArFmIPul+p4aESbhz?=
 =?us-ascii?Q?G5BblqUhPXGRBqiL8eiGSNkwS+x5sLHNZ2pR007iU69T9I43t6Ot2VvX6TOK?=
 =?us-ascii?Q?ztck+drvp8EKUFuU7HhRrYlP/eWuPKdxVibdJCkcWVXrlA8jYVrN6pnfhTbE?=
 =?us-ascii?Q?USd4OnQIa3ImEaUVBmq9Sn6yNypDEKY6lpaxI2GJ+/um3cAMNiQ1gY6BQWMs?=
 =?us-ascii?Q?Sxr1rUUK2GQVEwEvugZbVMeAxmXijqmmJ/lMLHlhPeQn6A0ogdx9BHM0ysRb?=
 =?us-ascii?Q?ViKmknzzy5RsvkGqIZtb7ukxL2xDr6W3almAcJD/9uXTFPY01IH5kbBOD7Dj?=
 =?us-ascii?Q?1vIGJQ0AmqB67gNmiw/1vJIuLJdhfbzNI8aP3wPY9uDqKOfyBI/fGCew6qmF?=
 =?us-ascii?Q?rvr2eKyXsoXeg6Pd+Bat8aG+RtDGK+n65SQm5LsgiKLor2ySFkQuLjc/XYug?=
 =?us-ascii?Q?GZd8HfQ0yklcrbAf+arQs4a4Bf0Klh90Uric/mRRbAGgx1tAmkdiGK2kH8lV?=
 =?us-ascii?Q?llZCsXM47/czijzytxsd+6u5fuE5VAVTlsa3vXqIv7qT+L++RQUMJyAQZvBN?=
 =?us-ascii?Q?GKxNq8RRrfXuTNF/7sZEe20SVC+qbOM95wN714bLlbSSGpXpw0dazakWAr4W?=
 =?us-ascii?Q?b3GQIBMxChf/5+PtJuFCxvn2ULWdhFYEZLjc+5bvIg6cVpaEXbd4/DkuGrxS?=
 =?us-ascii?Q?joRqOTAvQHRMDpTK2l/Nvw693B6p7MRZ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YQl9oxo8SQ71JHNiCoKO7/da/AmI8mM8KOMp9C/VTna/Nw/t4zZW9rXmu+LO?=
 =?us-ascii?Q?sCiCtLY4SPI8XzLxgE1DXwGIFscL3ou2RjI6CQT0YN2j9eoomrgWq4QPdM4T?=
 =?us-ascii?Q?rUqnBHI+dOxrCmaES7KkYr4psC8wF2WBofQUo64qs8iszsS2CTNrhLZWLiEW?=
 =?us-ascii?Q?VH/OU+Zx3V94XgV2LT4VxusHvPJPQqFHLgfS/mUXzWOjG8ShPoipKKeA2uq6?=
 =?us-ascii?Q?ifKwE85GxcS430Y45dgaQ4P3quRMjk0kSht9Eed1C7ePFBCsNJ5clWiX1I8A?=
 =?us-ascii?Q?LgUiLjJPjtlEWl8gELK9AOr6hpjR/yOBnOBRP1l8/AC2hi0L7Mdl9cvWiAhy?=
 =?us-ascii?Q?+hN+pFwMpvL0nCCwW0e6i5BcWSb4+c9xXCp/4oqtbArKO9Ez5dZDO5vEYO+2?=
 =?us-ascii?Q?PJLccNnMNKTQy1mPoBOvmuP6vvQH4aB1G0iXNAoYGlORk3CfZAuvK12Ft0Py?=
 =?us-ascii?Q?ekdx+elURXljZQw+8zsgmX36PrHBtE0njjHUUBzvzvPM32O/n+ZpAc9UlIr5?=
 =?us-ascii?Q?uY/FOodo71QiNZic1wmcQ+wzS628lSXTVEZXwmIj+KdB2uF025Azs20EUut8?=
 =?us-ascii?Q?R8atCAceYhr6zqPGvBapIfqfxKTKiYh2SIG/vxOXEfzs7Ppw3ZGW2ynAi+eq?=
 =?us-ascii?Q?havWqqaYARb6NcDj/zG75S8j9OPz5UiUyUSkVZoyGuYr0YZs5rQrnrDoVFt6?=
 =?us-ascii?Q?GTr/pcyAG+iIBNBHFfwwFqpWMjNc9/ICetNkSMU2W/lv2oKlXe1o9RN1bCcm?=
 =?us-ascii?Q?o5okzUY04PSo8l2npfhSiF+XdUphpUFOmSWMnpPFpKHfu1ZZcuas4Ph6LlmQ?=
 =?us-ascii?Q?PnxMPjBl0oFFqYNL8TvkbMLuXi34huFkiUoMNXvQvWxd6p8Gu46h5fPsDb7x?=
 =?us-ascii?Q?8F+KSVmyi76RB6kmkFhz9tmv27bv8EB5+ee8MyzsV9ee7eo+o1ehiQ7Lxu4E?=
 =?us-ascii?Q?AuZxTgSQWeX95DYVGv0WLQBwRVqfXGjucZhF8Bm4v3x+n1e4dM4ilVwScfXr?=
 =?us-ascii?Q?mGro+l+YiOzC+tAKEfKldAqdozFn56ZGhpbbxxHEM2seah5ZS/gwYzA+9K+m?=
 =?us-ascii?Q?FiphfHVIDKvmBE4AzyxXNBAmW4YJwVbq8Z1VFkW+0Ttllbx1rKaxJBMgbtgc?=
 =?us-ascii?Q?hv9xH8f35me1W6rlV2PwJ/vKS00DM7I3/oSF0fIdkvH0EgosRipu0ymUrjav?=
 =?us-ascii?Q?r0WqQMEG1IWliDexIlftGHFf3xS5kVapT12Wz3BbskSHifbBlYE3OvJcuOKK?=
 =?us-ascii?Q?k5nm/+yTolzGAHsP/EWps1EW0fNXW6r8LwUgp4Ow+iq4fIag29pj8DJrNMVs?=
 =?us-ascii?Q?+4TejDPleUrFaOI0QuhAa8B3xlHvMzbcklZcQ78AYau4AZ6P/ZX++usFCdRv?=
 =?us-ascii?Q?1THyMF8YjH0HupFsgzFUPY82XhOIwruKtAXtr1URFZQc16kiDHPMzgv2jjK1?=
 =?us-ascii?Q?1P/GxRi8SLkoUp3SNq8Eq2bEbbg6Dv0nQm961IeEsm8O66VunClm9Xma/QBs?=
 =?us-ascii?Q?MgNfjc+yXPTGNyQJkEgzKqA2gfe3pvPW3UoOLsJhflJQvpC5x4+TFyz8SEta?=
 =?us-ascii?Q?zHD+cqNHnE5d93ulBIkCU8HF943pk2ZWkTCQw7VWlRCn9Na9Ff+a0qZ7EQpq?=
 =?us-ascii?Q?1A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d0ec80f-019b-4c92-89c3-08dd65577bdc
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2025 13:27:37.0743 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iAvbsspHFt6d+dzGllMyKD+azVp0UM9Pki9+MI5BSQDl6Xz4Jg0PyLg1/jnA6zgYKF+hLu8d6/9vQW1qNPo3u3nk8UubePWofMLTHbAfqO8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6676
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742218073; x=1773754073;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ECmdBLwy0Odf1JtMuqfhLvhlbwN9P10ydXHgZwHK1Rc=;
 b=cQEeMWn8AzwZk3/B3xmQGTlPoAhhN5pY0WfCuv0F6QD3ovVugC1SmlgK
 gflFa3KBPSLvKcueNAjeZhA/QlUPi5Gv8FOxeijVey2wdilVp/wn7uF2o
 VB0RwCSg/rXuVstLZJRIy/+5+f02vfdxeypgp7FkZgymNO435psABBV0a
 7mCCpvULt7COtTFzZ393+XNO38jOX44ztsPiodVab1jthgSm9f3DKe7dG
 JTSqgeL3Tf+wGiI6GPyDRuXrB8zlpNfiWZyr49YkobUvr+y+VoFsAx6DF
 Bvdufwv1ZRK1/zYCOR2iZKPhlkzHP4jxyibcsWgBW1QFQmCTcmXXML9Mv
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cQEeMWn8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-net v3 4/5] ice: fix input validation
 for virtchnl BW
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
> Martyna Szapar-Mudlaw
> Sent: Tuesday, March 4, 2025 12:09 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Czapnik, Lukasz <lukasz.czapnik@intel.com>;
> Jagielski, Jedrzej <jedrzej.jagielski@intel.com>; Simon Horman
> <horms@kernel.org>; Martyna Szapar-Mudlaw <martyna.szapar-
> mudlaw@linux.intel.com>
> Subject: [Intel-wired-lan] [iwl-net v3 4/5] ice: fix input validation for=
 virtchnl BW
>=20
> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
>=20
> Add missing validation of tc and queue id values sent by a VF in
> ice_vc_cfg_q_bw().
> Additionally fixed logged value in the warning message, where max_tx_rate=
 was
> incorrectly referenced instead of min_tx_rate.
> Also correct error handling in this function by properly exiting when inv=
alid
> configuration is detected.
>=20
> Fixes: 015307754a19 ("ice: Support VF queue rate limit and quanta size
> configuration")
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
> Co-developed-by: Martyna Szapar-Mudlaw <martyna.szapar-
> mudlaw@linux.intel.com>
> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-
> mudlaw@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c | 24 ++++++++++++++++---
>  1 file changed, 21 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> index adb1bf12542f..824ef849b0ea 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> @@ -1865,15 +1865,33 @@ static int ice_vc_cfg_q_bw(struct ice_vf *vf, u8

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


