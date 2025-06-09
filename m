Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C70ACAD18E1
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Jun 2025 09:12:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9849C40BB3;
	Mon,  9 Jun 2025 07:12:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IvIpZq9yB472; Mon,  9 Jun 2025 07:12:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11B21408A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749453128;
	bh=VZPppG3PqE+XFpA02SkSUdC5/CDC9HpOKj2hhc+dYyM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UKKrcchxMtPeQTg1xP51rLfPtyHSFMcE579lV7d1ZYoxQGzrUyd6xyEJ9J0mcJxjb
	 7Bd5fiVmfMvlKYIANrD0hSjxI8IgHHoNK+Vx2TspM2TSaSvJrjKv3lLFjb61UDbH41
	 G2hdo+O7aXwJRJULpJckDoQsScrcVXzQZvLUyx0BZCkdG9nBvd4jYv5ROsX3KxsU/J
	 LhCDTuZtNrs1wvl+UZDkJ/cBK9IRyhH9LIa3xAqdIqvJHxnxB2eXtzxjSBGsGSZPc8
	 aIvIzyKSdT7Q6dzDra/qoA17ZV4Z7M1uLB9zf6050kKK2DiSK8PkHfOMaGxb+myaNx
	 EM89yL4/MMlQA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 11B21408A7;
	Mon,  9 Jun 2025 07:12:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B89B01A4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 07:12:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B578440891
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 07:12:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lHRKUHDQ-VtH for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Jun 2025 07:12:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D0C3D40767
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D0C3D40767
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D0C3D40767
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 07:12:04 +0000 (UTC)
X-CSE-ConnectionGUID: ucwT4JP/R/OceljRQUsbwQ==
X-CSE-MsgGUID: t/fKZaM1RH6+uGPyu/FUMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11458"; a="62136917"
X-IronPort-AV: E=Sophos;i="6.16,221,1744095600"; d="scan'208";a="62136917"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 00:12:04 -0700
X-CSE-ConnectionGUID: Dan1x+f+R4GHvYoA9Q//OA==
X-CSE-MsgGUID: 4sY6FHyPRDS39ggP9BqQkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,221,1744095600"; d="scan'208";a="151583648"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 00:12:03 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 9 Jun 2025 00:12:02 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 9 Jun 2025 00:12:02 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.74)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Mon, 9 Jun 2025 00:12:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MPGbooNrR+Yxh9vBJh256vIFKlsiwAHVeHjKWhQOHnpUlnF2+WZ/6BNM1Sq8c8i1sp/jDC2kQlaQsxYKQSUAL5IPT2R6naXKbvyHSmY4fS8THk1RSIUgQqR6Bo/85R0Kk7L4Np3U0KWSYaAId9KhEfE+3y/JCF94DLMjfZOqXbVS7EXIfYozyVcFINCWwbQufUQBUhfoaWU0xcFWk6DauKr+pA8IJQw/U7dpO5oVLQynbYo/Ben/Te8fkJQ3R9QxQXOSCpsZxwc4RAtvJxJ1sqCIDn0UetfZSLGx5aY6t+VDH7GOc7ecDHDkHw29k0NHYGSol75k7TGXgvNSjsVupg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VZPppG3PqE+XFpA02SkSUdC5/CDC9HpOKj2hhc+dYyM=;
 b=JmD29e9Z16SOHPbxUR8mVbj3R4E4DYen8fB0HfJbm8v5b4KJKTWw/BpW8s1CyHRySVg40KGM37rfKN6a6Rivoi1hk+2V0f8PlgmSvquVUYHimTBxDFEO1X0BLnmTtq8LOeN/XtZ3BTSW+1KKvhe1sh115N2gtjWEEBEmFfF27FvuMeDaPoKfX5X/mlvKzHoyRbCWQRFuPGPuZfAzo/IMBaXg7PrVldt7UDbb7sxYc9qD/UEJGZWVVSGA8fywR+XEPx3dxGJAxyWGl+mndPJNcWtzhNNSYcdwxXuL73MNkjM29Z+kf15KEKXSQNBnNVmGcE+eQmrQBtah5VizSLs+cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by PH0PR11MB4855.namprd11.prod.outlook.com (2603:10b6:510:41::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.32; Mon, 9 Jun
 2025 07:11:59 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%6]) with mapi id 15.20.8769.022; Mon, 9 Jun 2025
 07:11:59 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Robert Malz <robert.malz@canonical.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "sylwesterx.dziedziuch@intel.com" <sylwesterx.dziedziuch@intel.com>,
 "mateusz.palczewski@intel.com" <mateusz.palczewski@intel.com>, "Keller, Jacob
 E" <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v3 1/2] i40e: return false from
 i40e_reset_vf if reset is in progress
Thread-Index: AQHbyWG2oGJSIj3PLEGIy5NVhSVzA7P6iL8Q
Date: Mon, 9 Jun 2025 07:11:59 +0000
Message-ID: <IA3PR11MB8985FDFAD4E99DB7E554EF5F8F6BA@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20250520083152.278979-1-robert.malz@canonical.com>
 <20250520083152.278979-2-robert.malz@canonical.com>
In-Reply-To: <20250520083152.278979-2-robert.malz@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|PH0PR11MB4855:EE_
x-ms-office365-filtering-correlation-id: 0b3ce531-12c6-4954-6672-08dda724ed4d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700018|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?fOxKkgE7prcFpkNfAFUJr65n7h65LXEFgMGelEwu6fs/Gcnr7q6/FQTChd6/?=
 =?us-ascii?Q?H3VGYy7Zi6kVEK/jOeoaSjelkjC7AvjWr12zE4R8WfZcZo11rhn2l2j4Miuu?=
 =?us-ascii?Q?I/gEP2DBQgSo5GzZ2Qhh+2/vQ8ovOIPPPbWkREnHynaqvK74uAAE7ShJjuNl?=
 =?us-ascii?Q?9n+dvuKy79qCDeTxBqz1N0LxZO8HmknLK8crH8ZvHssCndPP0bwcKxBogWpJ?=
 =?us-ascii?Q?lirLLuDtathjccuTf2uUnyt95JZj10xw8sZo0BxDX94AkmH1Iew19tV0a0Bg?=
 =?us-ascii?Q?qzcCST/WioNSxtwSnO+NKjC3GQQEL48xZCOKN7VmB2smSNenVnex91ZgwxM0?=
 =?us-ascii?Q?vYPL0E1J5V7vrNvXtE+6eWcp6E7Mr/uP4Msa5nDAp1hAgvms7bDL3jTzbYM1?=
 =?us-ascii?Q?b2wCBeTCkhUGAeHd/hEQhWgWdhnyO9PEYnzmz869JLa6b2sVES2GnVn4lPpm?=
 =?us-ascii?Q?d8Z7gc5AqTd9qWa1UFefq+kWFXMPRRVlJ9UoxT3xHqDV5jGeGnw+U7sMl13Q?=
 =?us-ascii?Q?5gJR4kBF3egJ+GfOzxZf0Dv2zszcC+E3NWMP1dnxGiXrmzbDGZvT6a+59CUN?=
 =?us-ascii?Q?CM9KGIlUSNmCmmVx6BEvKj09aE4kQreS2zMKJmyMA7L2MdHbF4tBjvMGsRlI?=
 =?us-ascii?Q?/emWgn+GVNRLdfxDtKYVDpYRdk0mw9zKe0+Zk1L3dLOzxmflw49NdpO91Jf2?=
 =?us-ascii?Q?0ZxJ7W6sZHxmFX/lFPacVM3IqrbFGnkVUkbEk+7NVYSzwQOQj5N4x+2OO8Bm?=
 =?us-ascii?Q?CguFD7qFaJm4/YUhHt7wowDEyQFwGTIBoZZS8EVfpfmOUX5wfjek9crHvT1e?=
 =?us-ascii?Q?5KvfUeZNj9tyI/6k0nL8rZ6USTximas4+YqvNBujxFfDwLGJTfuqThWOjTU2?=
 =?us-ascii?Q?KLwYTVFKL0fNqlUIBAZY8RY/OZXgHA2L3Dc6tfhsJqlYirFl36arD0J/c/MY?=
 =?us-ascii?Q?ojzvJv60vlZv5X+XyRvxzsJi+EIb+p3mOBPTT7SXJHRFJRlTe8yA9w5kXzLA?=
 =?us-ascii?Q?TgyPP/pJrLjxg2ddyEQw62inM5NTSP+2tk3obLRTBKKQ9S8/7WH7OfZUIQCl?=
 =?us-ascii?Q?tsvOzz8684gb969KEJoS+HdQWxNTKjhTazR12wJ6HTBv9e1utouSNtpRSqpU?=
 =?us-ascii?Q?S5eECwzSIG/dRkpUdQzfL0agFDctLKmZa7BRi4Mu0dC5bXR2Blo62se9efXv?=
 =?us-ascii?Q?o0YJLGu2I9zPK1igjZW9MJVKy0x43CvDehGpG84dlrIH+yaOIPXtOwnA4GUw?=
 =?us-ascii?Q?2JrF3jig1s5Pj/QyJbYbQN5isoRpi0p9pLmVzD+99rgP4tODDEX/D/z+P8y4?=
 =?us-ascii?Q?ynWU5K7hdAGTIdDpMCxNR8gWNuSZOI1qUoSmfJw2m5Nz4OPG4PzW2xDjcfxM?=
 =?us-ascii?Q?/1ppdyAkqSHzGzHYnmqPOPwWs0QzUJa01TTHSbVxrjZkVp6b/ghf/3/xGV8a?=
 =?us-ascii?Q?3/yPodgMz7Gj/R19wOtnGVG+fJnVNamFQIxj/3TKoDSnJD2kAfGaIUPuk80P?=
 =?us-ascii?Q?E1+zdhwNLVTx7bc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7YAt4a+TugsEi7oL7PUk6HckUX4Q55UkO/A1Et+/IUgsS4JD6hh7OfXtKqiH?=
 =?us-ascii?Q?gK7xztu6XhioLacaty0dSVg0E97yyvgAkc0iJniCCnNOc2Jy3h0VKjJwr5Zp?=
 =?us-ascii?Q?rk1J7r7OynZV0koedTb7049GuSKtIcl5Sa3cehpzQDAwBJUwqD3TuCVpn4+6?=
 =?us-ascii?Q?gTyYd0182dqrz5qqUAF4ADOpcrIXsz2Kai84/Ae0bwngCfNTDfPYRE1jLzKp?=
 =?us-ascii?Q?hQoc+jmj7SEe+6saw4Pk/e1FUXpt+1i+TfLV3wjuSMCSivgZXgeB59soa8+K?=
 =?us-ascii?Q?1zU5G/Obq1qeSMH/iDUgaocJeqi8tynLBkHakyT8FR3DLvp5+j6qBlQwplCT?=
 =?us-ascii?Q?VEJBrSLlM6rZiCrgew/HcJYV9ECg19s06LYMb+sSrhovIX28J1ClBOlioqJ4?=
 =?us-ascii?Q?3mIJrC31GLk6317EiHy3IuIm7nRj/XHZpDIYLZ8vi7G9fmhP/CcXm1lkJGWf?=
 =?us-ascii?Q?/+Z5yDMTmpd8EdwuphxjYss2FVA7dzXlofL1xGjzR5ELJHP0lQ+7Jw1bSeCg?=
 =?us-ascii?Q?jCZZgHMXCJRf2PXYbQHVtEUzWxKFkR1kT52HcMUCh4OcqvU6N+tp2z0TOnsM?=
 =?us-ascii?Q?oaN1TGHXMScRiFCTBtGmwWDi+vsi3W7ZLMcS5Ca+lDm3p3XoEvGOWoMBXgUT?=
 =?us-ascii?Q?S9SblDL4XKbuyeO6jfPNDQgW4UOUmW3nIOLTcdrkegMB0P8htqHPHOBgfOOj?=
 =?us-ascii?Q?18CSC8Us9ZLZtwvNbWGrQV+PhCrD6UjExIeMn31yZgdNFPcRarsO54E88iNv?=
 =?us-ascii?Q?WgQ9XzSZT9ylBygdtgL0RGm0cK7XOCY3aw8nOd6CAUwNwtzf5YqNMHHDggDw?=
 =?us-ascii?Q?sj/t7FH/y0fpYojdQuQDyOMk1H6uwG5HrFDwsApIPJ5x0BA04TvY3+7IFAL3?=
 =?us-ascii?Q?pHeBKqtNcy1M57+5z5ooPGjLBUsfRt0yehTa8aXs+bOuBafnZHCq7CeuGp7i?=
 =?us-ascii?Q?/ghLnsnzXYpAkzV/C/bj5NNAt8HEYGZscT0yfXTXUENlSK3qJZfPN1cLYKXX?=
 =?us-ascii?Q?Vvg7Zd7VurB25c6wDretNwCJ9MJ2a4JJu+K5VYf5oiJOSnARUnmIeZRS6dH2?=
 =?us-ascii?Q?UHFgzCSYfLrGzd1hvm7054j0Fbt5lpPr2NP0msN7YzC33oqt/wWNzdtF0kUl?=
 =?us-ascii?Q?Ak+OntnpzFlTCdhiDsC9+hre8wPsXZNo2xFAYQxvbPaPoHRdZXZUvt9vNjuT?=
 =?us-ascii?Q?EjarKBuwky1vGGN2PIkwMqpeJIBe32crthZQCeNTq3e6GAygoODlil71HxWa?=
 =?us-ascii?Q?J00gdnha+bBUk55ol5/x0zc2G1q7E0rq6ZfTm34Tfs3onl0I5rBx4+JSg/js?=
 =?us-ascii?Q?8DSrThpW2zx5L6VAlpy8f4QmL7HRN5/TzchdFWM1JL9ME7SixqQPYJbIKkuM?=
 =?us-ascii?Q?sRIj/t715IqotlgnBycSTGaGhRX/1GxWAHENob2w5cqxtx4eBTvyrj4pS8TC?=
 =?us-ascii?Q?G624Gvn1GFm5BUObxxex+3pPPcG6RS4gJBj0JCKAsA9BuQlVA7vaxbiDsxdN?=
 =?us-ascii?Q?y5kp0FU/DCSzx2ePuCRd2Ebggw/maFoGjg3F8i6iA9xt3i7SXZJQvFz231Gx?=
 =?us-ascii?Q?ek43P0WAbI9c/cIcAnuBKCkTsCdO+FboNdjtmLE2hYtOMNQm2Yh8o3X8iVR5?=
 =?us-ascii?Q?gQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b3ce531-12c6-4954-6672-08dda724ed4d
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2025 07:11:59.8254 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qhuzq0B29f1QK6yvPioWfEmHDPj5WMGx6tFPngIk8CY63Gx7nU6cvtXqOSTsPs2wST+3LhMxwLNbATyfLI7umGgaHGYqJHiwUTLAAGVLp94=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4855
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749453126; x=1780989126;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lA2zdhuxnsQ52sjKDwP2G/NKE5flUiQT4JTQhjU2Osg=;
 b=NoNSaP9KjG9rzVeXNLwTf4+NE/Azuy8Vq7aR6k9OsinWqUzPFIlU4eiG
 NDvA0tlYHA6YBhMLLZcXRJUEAJjaKaVGSObB1prcvTGnif7/7LwReVAuP
 6R8Co5XqijTwi6ZjtMnE0nwd6sdFh8q4NU98mTNxYCtPE3nuTyh8D3CgW
 SKjPJLyFPcg1bBWIyhViBvba3y5YD20s7xvtOqb8Y6P/dvY3olZn5hzHp
 FnggEBtID4GJz15pYLF0B0dHjifY47Xhtai7pwBVAx8AcCUZlfvMCsIlu
 TigMZDD1QJuvlXzxLIVnQp3iLB0cFjEu4XCxHa8HeK7EQOaJdATH1Opvb
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NoNSaP9K
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 1/2] i40e: return false from
 i40e_reset_vf if reset is in progress
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of R=
obert
> Malz
> Sent: Tuesday, May 20, 2025 10:32 AM
> To: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org; Nguyen, Ant=
hony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; sylwesterx.dziedziuch@intel.com;
> mateusz.palczewski@intel.com; Keller, Jacob E <jacob.e.keller@intel.com>
> Subject: [Intel-wired-lan] [PATCH v3 1/2] i40e: return false from i40e_re=
set_vf if
> reset is in progress
>=20
> The function i40e_vc_reset_vf attempts, up to 20 times, to handle a VF re=
set
> request, using the return value of i40e_reset_vf as an indicator of wheth=
er the
> reset was successfully triggered. Currently, i40e_reset_vf always returns=
 true,
> which causes new reset requests to be ignored if a different VF reset is =
already in
> progress.
>=20
> This patch updates the return value of i40e_reset_vf to reflect when anot=
her VF
> reset is in progress, allowing the caller to properly use the retry mecha=
nism.
>=20
> Fixes: 52424f974bc5 ("i40e: Fix VF hang when reset is triggered on anothe=
r VF")
> Signed-off-by: Robert Malz <robert.malz@canonical.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 1120f8e4bb67..22d5b1ec2289 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


