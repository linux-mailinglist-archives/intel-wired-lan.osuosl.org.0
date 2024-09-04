Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8CF96B627
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 11:11:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C4E0C80DA0;
	Wed,  4 Sep 2024 09:10:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lmaj-W5-WXnj; Wed,  4 Sep 2024 09:10:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E71AF80C3B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725441058;
	bh=BaxAZB/yrVW9Tl1OrQ/jbpnK7boUI5IhUL+GcOP9HXI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NMJBiiQUhFgmpsg9wTIOtVj4RrrXPAlpg2n30K3X+b27hLiYbHu+/9j2FoMlWwMji
	 1N3rczF7hKLcguIOXnvwJ0+w0UaCopN9Mb3XL6BJpu5Rd3lyu2uubnoppYaSdWoYfm
	 ynwozum4jH8Ik4/iSgY33hlUr3G4a7XFQ+68QldsXZ3j4Z4NNTXodCCduS9HlPJRWD
	 R+NRzgRbdGZcaTMoRtwsem/yNt/hQIrWB/8Hd/I20sAE5BtZgotX/iii8MnLxeSXFI
	 jF355xPLLCr2DeD84jXNBRNtHrnnOu5p6cfz/vY/2EFqW5BLkvtAKA6SB4HZzKA23j
	 VgDEmxJIa+SqA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E71AF80C3B;
	Wed,  4 Sep 2024 09:10:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CBA4E1BF577
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:10:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B949280C3B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:10:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y79f50jlaAxY for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 09:10:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CFB7580DB9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CFB7580DB9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CFB7580DB9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:10:54 +0000 (UTC)
X-CSE-ConnectionGUID: vTfaV2RlR1e8wzf0tzqD7Q==
X-CSE-MsgGUID: tcHfNu2rTMWQohK8RuKiag==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="27850240"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="27850240"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 02:10:54 -0700
X-CSE-ConnectionGUID: f+MyGSwlQQip3w/eHGTIsw==
X-CSE-MsgGUID: REqipdmdSKG9vaqCWZxl1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="70012883"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 02:10:54 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 02:10:53 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 02:10:41 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 02:10:41 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 02:10:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ttE88qIq/OaP6/SD9+fiWpwpik99KibVHIwI3CTHs/Pj8Smx8sdTBeqdBUz+7a2viq46A4NsBDRiioPkMmk2d7TabbwoB2zseGgcd7E/txPN6x5MiNeYh0aV8M0oaT0QpQJQ3kmZvqwvg5eGDD8cw6GYUqbUG1txU756S+aZt375mLHD7Ob4NXXRxjQxaXro0JxVDjqX4luZ1EtFyQGCShVLUH73xWAyzV+mYC5gyHWLVPhzCS1p3psgZK/lsru8wFFKFxBRAquAyXIVZU3oCMLk/cWZsR7WHIFWCP1BMdCm5EUln4smLKgJHCIeeZ98RZrSy8ai5VWXwVXnTHophA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BaxAZB/yrVW9Tl1OrQ/jbpnK7boUI5IhUL+GcOP9HXI=;
 b=tHyoXQmq837Z7pcS8PlwCcuRZzbqF3ePHymOWk8oMH6wkvNtKqdxRzI7NoKIFiZCfjry0J0g4vpuFLZ12CL0h9IXHlrEr198Vi1XUqrKe0gzCqhlXe1NUELXe9OoRKjQjhTfEsed6AdOBVtGQonSPtUkdVTjq22IkxrKtnv6MFSgkDyL504Y6rXi+JPiixmXNg0s6gDfVm/GrFZuMRXPZ6p8E/rzjkqY05CkdQWncbEYr1jDV5z0vDTR63e+orcdHv2sSS6nJeNOpHNKw3dGWbJ+SnBPz6W6kM1DZ3/497Tb9BO4N2NcnlKGM2BVOY2wD28nVOw3eAfKTtCKqkpJWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Wed, 4 Sep
 2024 09:09:42 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 09:09:42 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 1/5] ice: Introduce
 ice_get_phy_model() wrapper
Thread-Index: AQHa88vG5Rgszs1LMkC176pYJKsmy7JHRLgg
Date: Wed, 4 Sep 2024 09:09:42 +0000
Message-ID: <CYYPR11MB8429258415A207762F5CF227BD9C2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240821130957.55043-1-sergey.temerkhanov@intel.com>
 <20240821130957.55043-2-sergey.temerkhanov@intel.com>
In-Reply-To: <20240821130957.55043-2-sergey.temerkhanov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH0PR11MB5830:EE_
x-ms-office365-filtering-correlation-id: 11a6bf03-018b-417d-596e-08dcccc15024
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?OEdoJW+srgjKBBGG7vYHbEyUOBtomUblPjGj2WCz/V4qJTl2hmbVAMpa9FGK?=
 =?us-ascii?Q?CFHOrqta8lBVDSYHXJSf37BosH7IJIPD/wxOv20B4x6AUC3SFNjr5KRXgaBp?=
 =?us-ascii?Q?O/O8yeeQNKLHMBX1osqQGTQbqBDg8wtSN2uSQkiufU8TjiYNSwPQD4I66bAI?=
 =?us-ascii?Q?N2CMPTe6O15uflU4wm9rj4uf48xO5eiWlEo+1iLsUgdv8rhl+81T73bKu14V?=
 =?us-ascii?Q?7XQuB6LPw8Gw5f2ptX961u+np5g9IVTwM8x+G8Q6NNabTR3fzgM4tUmY2HeG?=
 =?us-ascii?Q?nUAmswKgY8qGc790S3yFyYD0/japEQ6qx/5LlNYjrPYoynxaGptF9ITv8dPF?=
 =?us-ascii?Q?eNDjZVtuDUleB5jvupeCYZcxr74CBQrSIfo7lm4bx2+2Mzo+Zsm8j89ngm07?=
 =?us-ascii?Q?sVo5tBAlwJKQjXKNpaHJ+7SCcwBnkcjdItFAlnnoFu4eJldA1+6mjkwc8nBm?=
 =?us-ascii?Q?v6m7Odhjb2fEA0VJ/tQt5opm4VtntDy4qKrP7W9ImCv8+4OxjY3iWDLfthq7?=
 =?us-ascii?Q?i3oP/j9+D+K9WK8bTU0CywSMpi4C1h7IiWl0Yon7wApVkOHCDTJE8nl1Inkj?=
 =?us-ascii?Q?K4Vqm7uY6BM12/Emgw2S9i2bSdfomZnmxqx8l3vV6UNawHYRyNb62d2DOgL+?=
 =?us-ascii?Q?zndDd31UsvXl7IWLsna61lzCfMeGRcyGm/ZzzkOnVGVIIW/iYvnwVa24JeSA?=
 =?us-ascii?Q?I5EIHGB5DUHIH79lr5jaEiGj/OzCuM9A+kJSGaAyS2pMnHh9D+pPB8mwXZ/4?=
 =?us-ascii?Q?it/92OeVz7Y3E6uhFGjDhZQs5EOFJSLlsdkdCANg5gNUjjw45gZHibK+BYEy?=
 =?us-ascii?Q?Dmqj0KcO8Xp9M/kI3pi7wBM1ToIyvTUhZP+eEK/iCKLNAKOyLe/BiFOQ3zLO?=
 =?us-ascii?Q?tjrTpxuIPrjGA4jU09M7vmPo5ed2rQGGpEmcfhhNCxmNZCQaILYqCSKBmbrC?=
 =?us-ascii?Q?dkKcQf607iyp7VUbZm1tt5ZaXTz8VMzcQTQZsOt8Iwz+FNpz0nFrl6OkIs/w?=
 =?us-ascii?Q?HH/hK3h5MdTK0HVm5gFeAxhmkwuhoPx+d/cG5plKafJKkHwGlTT7Uis+18wB?=
 =?us-ascii?Q?kWPEtzPKIJ4Qnm1L+1wgHDMij/JZkyLfI6RbALCKpPsnwlKMFK60ZVJMYSk4?=
 =?us-ascii?Q?6TTqeg5psLLFFhtz72XuZE2CkFkFebN370CbTIcNRsVRtbR9HTMec3qZPtny?=
 =?us-ascii?Q?J1Nh6S7IZvubr87grTve5GMkJTgWht0lvVeNSx/YD3/b0qzv3TZc1rtLOzTY?=
 =?us-ascii?Q?FPTJrDtn0PRzorviEuylmBfdyrXavLw3Cz5b+iIHsXg0F29bYc3e/w3ukVpe?=
 =?us-ascii?Q?cAnY+CRdWAkv6NlHU4gJHtvsQCKFNwEj8mjag6OfCeLoe70suUsSi2fjjIEx?=
 =?us-ascii?Q?pMXlGmO9S9+CTVttS3tuyFwIOgPj0meIh7HON5RKOkbaw79yNw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8/mhTmCwp6J0B4Qa3QBIgwSfHETPVRpnBtpdEOU9/TZQNuIIm8M8h5r1BmKM?=
 =?us-ascii?Q?iqjgV7wMU48QJFVAOJaZVwsEQLF32H9BM2RdxyKec0N82Lh2TXe/BgygJH7M?=
 =?us-ascii?Q?WcHL7F5bniACTTLRSaGZgSZSWvlppJkyaz9GwjebFZ8W4i4IL9S0aZgBRULl?=
 =?us-ascii?Q?c7bz8yrktA2JtSnVt+x5eitaLfNANGHaDn3yxF7kuiVfowgiMhvlhEv8gnqp?=
 =?us-ascii?Q?GDjXXmOxtxZKFuvE9FQbgGGjAXjljxEbc/rMQW1gH09sSAOA8KpKlHg4xjFi?=
 =?us-ascii?Q?P7LJclbKNt+qf/udcqzK8I3Q7P9UiANUeLQ1RqTew3swFv2aZ+Nm0zOBeBzr?=
 =?us-ascii?Q?zkgGWqtoyfUMRnkETMPD5syiJu5E/5THqGikdlcH4PcLD1MWMr0NN9PHrkd0?=
 =?us-ascii?Q?f73d+k+LbS4o057MgfrIYx/qRkHhUTvVdpNZi5YhwIjjNjSqxiAYXnSAxCfJ?=
 =?us-ascii?Q?gu4GrPYAZMVsXT/S2LhCHEfIwTzALEPfds3KtLo2M7duklyS/c6WE+0z8Ea1?=
 =?us-ascii?Q?4THAFSZG5aqI/IV7OG3teg1C19HwOcw6lb5yky3ApBDSWQcADWULNP2JB/FD?=
 =?us-ascii?Q?kOUZpke7svMjGB5JKTgLsvQY4HPMQO+G/sbrT+yppa07LAlKYYP8vIfMpM3Q?=
 =?us-ascii?Q?W90E7igpugC6jKpWXoVv4NmshUxZWUK2UJ3DKTZUNY9m4Q40Zk1t4g7D2Bac?=
 =?us-ascii?Q?WIYCKiWAEsJDkrkNjuYKRpdCnzWFLXQCXqKlTTehPyx3qmZUNb7haV3YZ+o2?=
 =?us-ascii?Q?Rz/iXu3ZodNswEJYf7KdE/5WfbM625kWSExGfYHt06yYyACtm6gkPcO1h2wB?=
 =?us-ascii?Q?YLoCZiyPRV7RxEJyEdbe1Hph18CNic05pXIbDb3G42hx2cm4G/cFCtkJjg5b?=
 =?us-ascii?Q?K+R0lM81KyzcztN6JQPdkMOV8Xfxs3lDx4RuQ7bsCu9QN8el8LCUWJDsmkde?=
 =?us-ascii?Q?F+VyalWgpVYENDcpdPIiD9/49suC9XAbcmsi88V7RTdziP8hp2G+4pEtySlP?=
 =?us-ascii?Q?BdFlD9Zdz7ts9UUsrFNcaYX0mP5X3vkY7+AgIMEdP0zhI+CdXkdEXAMSpx/M?=
 =?us-ascii?Q?oeeGmoyEOeuAzqQlSu18rL3sMuUo7nSVfghbra+ekCuAvqG3ZPbVacAT0B5n?=
 =?us-ascii?Q?FvPY5Mgy3Vlnr9A2jE6Y3k59mY6PL6JNP5InIKILz5ycT1FQga+W8PLVV11O?=
 =?us-ascii?Q?JSjR1H3kKmbCTVIpDKGbExTTtBlSOcQPRJ2mAoPsem7PFdFBXsALAKmqutDM?=
 =?us-ascii?Q?/hvie7V1nj5qUo1d0HTcOZc5+mz+et9II5SIXYonAze6ku8MSpqMmftT3gG8?=
 =?us-ascii?Q?wDJPT+vAc98PCRkZt4ElVs9+yl5fWhRou0x0xF4rJNc5FEucHYeasTfDYHM6?=
 =?us-ascii?Q?P1U+wQNSQtxzIkjXRGgPF+tY+5VVHj/jLmrjnlk+/G18oCLps4LjFiKaEzjz?=
 =?us-ascii?Q?asYL0ujrZtXE5gO/V7xvenubzuxIq3CF6RipnRN2GmSncamOyGeYnC1Eqp7C?=
 =?us-ascii?Q?b2MoTyDXpd/of/5/PCjDBsZROZD7c4A6njeM0s59p0TQK2WCaVpcENN7PFyY?=
 =?us-ascii?Q?fg76z5e3HzuHiFqde0z5HxHrkGro7JLkl7Gp+DFK3aOMu4yRWETYI+hUmkSo?=
 =?us-ascii?Q?KQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11a6bf03-018b-417d-596e-08dcccc15024
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2024 09:09:42.4701 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4BvTLrb6sveRvnpG7FQHcX84dw+QZ2whjgOx6MYp54p7tnRsW42MMP69cD2TiXnS1dKYNzZ55yPAWFGd56m9qpOKRQp3Q4xVz37o/DAtIpAvx0YC20aD2xMe6hoPZvSa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5830
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725441055; x=1756977055;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bbURehc8eRCDo/oCogFEEptohrtppUfHI4GrMwYEKOk=;
 b=CdQdNtpedbdqy3xTKIewQSeN3Zf9EwLa/h3RdprnbUq+cLbeC75ObBwf
 B+AN1ag9nnsOYS6s4x4jWP1TfeazgIvZD5rTRD6nL9lFHZLluoYVJ4qWe
 KleeImIkQbh9UJrq9sI76cSl/9cAMb0j0pI8b1lFkQHvf0Dn3ZzDEAUDv
 8bC3pS8K2WZn9o8Ym1f2KQN3UBpHsjNF3VO8ew7jzEZtt9jmHPGsklC7L
 ELmmR4AECD/6kZR138dvW4N0dS/6NQ/Sq0Kfi2bW8XLh/aFvA0Kvk6d1G
 R9Uuf6zl+T2yGYzIpVNajPjXEa20unl6CWhZDQuCBB5HeUw+icVdtLGH8
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CdQdNtpe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 1/5] ice: Introduce
 ice_get_phy_model() wrapper
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Simon Horman <horms@kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
ergey Temerkhanov
> Sent: Wednesday, August 21, 2024 6:40 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Temerkhanov, Sergey <sergey.temerkhanov@intel.com>; netdev@vger.kerne=
l.org; Simon Horman <horms@kernel.org>; Kitszel, Przemyslaw <przemyslaw.kit=
szel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 1/5] ice: Introduce ice_get=
_phy_model() wrapper
>
> Introduce ice_get_phy_model() to improve code readability
>
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
>  drivers/net/ethernet/intel/ice/ice.h        |  5 +++++
>  drivers/net/ethernet/intel/ice/ice_ptp.c    | 19 +++++++++---------
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 22 ++++++++++-----------
>  3 files changed, 25 insertions(+), 21 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)


