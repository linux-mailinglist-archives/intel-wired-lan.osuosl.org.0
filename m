Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFEB9BB236
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 12:04:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 85719607C2;
	Mon,  4 Nov 2024 11:04:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id giiV8fgyJtNU; Mon,  4 Nov 2024 11:04:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47138607AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730718277;
	bh=ah9OuKx63uprcXICmiZgEJg/AOAzpAyC1phRN1YNPxo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yDEDh7/nzgcIZQcdQIhArkMkhHd72MGYGo1KyCW5QbmAwzXZuAv/tF2zuVQDzLG2Q
	 Tbepho99eV/cTVCvDdVSWkK1xMpm5y60Nlm0cWz0J9xll3/T64mi8P4mRgwwiBwv0y
	 XGHwWEQ4MkqymmrP1Bz0Vq1Lt92Q4CGHxPI0QtfK+oPhTBCFPE9mc7m/Op56y+vWA7
	 nEXZNYko3xVFCD+oQwvaW5XW2mbCwO5+H7Ynmrga83FVg4JFWrx+OobuL/qiuATZ59
	 9dtp5MEfzl/W5vSPhcEdaCmvXrYtUedEsN95eC0uOsuQOO6jdEtuZV0DpVP/S2rrD8
	 1hw9XOOWJwN5g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47138607AB;
	Mon,  4 Nov 2024 11:04:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 17C5F723
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 11:04:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E24B8607CC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 11:04:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nq90e3zWj3Me for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 11:04:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A7125607B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7125607B9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A7125607B9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 11:04:31 +0000 (UTC)
X-CSE-ConnectionGUID: jk3xMuVYTjyPnFkn63rYUw==
X-CSE-MsgGUID: 4EycvGU3TeyQj0w3v3zgWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30586254"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30586254"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 03:04:31 -0800
X-CSE-ConnectionGUID: lowNIwujSRyMsJbIWXRLaA==
X-CSE-MsgGUID: 0AqgcJGOQVeNQWt1hdjaCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="114407681"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 03:04:31 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 03:04:30 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 03:04:30 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 03:04:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GUOwVmfw6jci2UOjSBn0cgFcTgTEkjDrLJLJCI/WdDxpD7uqbGxPh9BQa1MZAoBra17P1ojm3ET0pOSxOGfOpHILe3CxNWG4SuJG9QbjiGq1e5s0Z5AC0BS+RKcXt7ty2xNKgZNkExBs3jjjZNIcmPrZ+3Fq9PRVdnuN+7JUxZwQNBiw8sMTbw39fncp2cabN2EqH4iwHrpvAUiRR9NfpdX/GQTvbPGw6Or6ur7A0o5XPB4DlzAQWKJYfj7EG2s6F+xLo0caNr1uHjgMmRGgjg88ynPvF672xYvNpB0X9m75rivTrDhSCrnsNtdEN2jLp7Bg6i08m1WrS/zeBH3NWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ah9OuKx63uprcXICmiZgEJg/AOAzpAyC1phRN1YNPxo=;
 b=WPQ5wdPvVQkuY7aCAFixfWIqRGTB2SF+16qxwSj7GP6YyIxhNKtxwS6ShXPIAqG+6GNJf1D0a/xYS30zVT2aLs3yUAzMaWSJeNZZbS/lwWdyyqNevPxzSosf7kbb9O1Un2dC6LJkQLNK72ZZ1/J4FoBQxYwTjxeUZO/EMjdY5uy3Trzdv7k1eZWZxDE5hBOuCLYdz7mK7wMh4ueTvog7UOlj6j6lIxC6vbLuRHCaogOvp453ShJuuswWjJZfqfKaVEtT5J0Vpqk2FvNtgVvLyVQeWNebLIFOuqnGOJfbBjRxHo9oWcQ57MNNxh6+RPwNBKhtZKNC+HgaUipl1YzReg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by CY8PR11MB7082.namprd11.prod.outlook.com (2603:10b6:930:52::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Mon, 4 Nov
 2024 11:04:27 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 11:04:27 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v12 11/14] iavf: refactor
 iavf_clean_rx_irq to support legacy and flex descriptors
Thread-Index: AQHbJEUaXsHSRrsiTkKfuGKQIJJa1LKnCgJA
Date: Mon, 4 Nov 2024 11:04:27 +0000
Message-ID: <SJ0PR11MB5865582655B88ADFDFB4393D8F512@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20241022114121.61284-1-mateusz.polchlopek@intel.com>
 <20241022114121.61284-12-mateusz.polchlopek@intel.com>
In-Reply-To: <20241022114121.61284-12-mateusz.polchlopek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|CY8PR11MB7082:EE_
x-ms-office365-filtering-correlation-id: 27e134ff-3eda-493a-cf9f-08dcfcc07319
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?T7GH2ivpReLtQujZXMEunu90OiPA59vJOs90toipvjpZ6z+1TiY3UVBE0mzr?=
 =?us-ascii?Q?PpPISOOZp6WN59zbt8snoWjn9z0sDXGdtFq/VwaO8q9+NxPpPTyxAMPdk3ao?=
 =?us-ascii?Q?eh1l3DC0FNUeIdemW/o2dtrnB2Tcx8vDRXDztTWiJCnplGgBT/FR1EcseTg0?=
 =?us-ascii?Q?1/XlUFx1O1tvU1mIw4DfdK6XLCBsDUhPDGCP0k1ELGwDGH0Zq2GKE4O1kq1e?=
 =?us-ascii?Q?x6vGD3tstk3Opqo30ulWE1A6y8dsWUnoDYn+UDZvUYOaeXKfpjHQ11LZ4eYZ?=
 =?us-ascii?Q?q9MirVOJmw7SxMBydZWNSUOLCEGnova3a9DAmOrq1VfVys+vmnMW4UYJfwsD?=
 =?us-ascii?Q?pfAPct/PMnguW3tTbI9fMhj2VlmWP/7b/JiMxbe8cQUCgbm5p2YTe47hGDb3?=
 =?us-ascii?Q?Y0P5g3KxZwJnJVKnRaRRmfSvwQJ5Rb8IP/4GiCfBr4QJ8+f+8kZf8+2tdzN8?=
 =?us-ascii?Q?qK31fqCqZ2jwQonRrhT3zu+RJhEd6dgj8CvdCmiRqKi2nXlg/rhRtdcOz98X?=
 =?us-ascii?Q?rGsjlVcDKoE0qsP5GDHP8VitfJX7yyhsZLO++xkg0b4HLJDJHxLBSWtNxzWe?=
 =?us-ascii?Q?6SoU2uj0XemgO8EpvnQfm7TDAas6xTuqkKRsQCpBp7PVOw7CE5EGQmB41Wx6?=
 =?us-ascii?Q?wi5mSlTMDeSP+jVp4pE7Fb99z4ir91NXtbxboW+nAoUsL5I3pHmfwaS8GOxM?=
 =?us-ascii?Q?l1VcSqjEaqKVsqZPAcmMs7pIqtyNzj0j88e19FCOZkTfq8Z8wKGip9NThsDV?=
 =?us-ascii?Q?INUypt1w49X1Dn1VjLbO53bmiFKiFr5EH7CHVxAyA33ioaQBkA25O5jE3LxX?=
 =?us-ascii?Q?BLJYGi4flfPxnYVMKwtJ3TJv02PuZo4ByZzbh0HmfSGS2Ki0AbjkE5olQJcS?=
 =?us-ascii?Q?yzCURCoBr5noqxpIS6GMgOxZ4Xw4zMFQ5N7NZVZ+ahowfd8ibp66TyuDJn+/?=
 =?us-ascii?Q?lxRdm1ioosqWxHQgJhTzOgMYXAmx6xRksZpP40WpDRoEr9vnz+1211ikBWZ2?=
 =?us-ascii?Q?3lgrgPJz4mFXYwhQbianCNiyT/Lp+OmWip9FycyRK9naElOsxjZ0xyoXwo/Z?=
 =?us-ascii?Q?f9zunpVZg+iMWoy46QwoDVw+SfS63km+HJ5tzDe2aphexJhljq3pCVtrgtV4?=
 =?us-ascii?Q?tZHfLsQnv1bcHtw7DmySmJC6t80lwIV2hzjnDViA2yEieQhWiHvdYeAuJm+I?=
 =?us-ascii?Q?WuPY5LVtpmcD+z+b+w2ul0lyF8RyQiGfXicwpQYGzVmTaMeff6araEd8JNy+?=
 =?us-ascii?Q?IbC2xKqHhuOs3r6tQGPZoYQbZRxr/he7/nFwfgeqUF8mvRj/aqE322QzhJ7A?=
 =?us-ascii?Q?UyMg3JbGqR2xgQsY/zbn9BS7aczaVkvtLsSiAgembWqmefy64W/GpX2mAz2r?=
 =?us-ascii?Q?mKs4p/U=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?39nn6rrcWZOFY83YNsGdEW6SB2kWkivMzhK+aArtAXnhK5PuDJmrF+FCOys6?=
 =?us-ascii?Q?vw7CkLyPC7OgBTpXE/K1glM0mJWwYHq1U1bLq58lxYG1WDqOw5U33g50q/Lj?=
 =?us-ascii?Q?gB8L9cGpRZrfSz2YPPWiwu+Z6cDnF1SMQes0rlssVO7xYcI/X6CtB/3by3eM?=
 =?us-ascii?Q?KvA48QYcBSz4sPiPZILGmGow/7jqreuFGOhf5Evvp3vicfE0SXLRSO8/uAKq?=
 =?us-ascii?Q?qYHZd2QyvvsLkLK83z6LffEbF2liytUgwVcVEfdFaOhQ3j8zx2Q90K3mgZlX?=
 =?us-ascii?Q?B37N/K7H/ST2HYqSTVEJf2JgvSMdPcBxzG78HofTHr0BbJkp/YSXAZYqIcxt?=
 =?us-ascii?Q?AeX6CWIEYgSisIGPRNIkjJgZxeVDUmIfFZZcv7maBGjBHTn9lW5D8yI8mxaj?=
 =?us-ascii?Q?dHbCrK54ZLzpKAiPsOek6tKuAbTnjXvWv1SZLShuKYfkwfJdYJMT4hYxGMrC?=
 =?us-ascii?Q?Ntsh/m2lVdOFla5jZKHKKnUl4+JW0/lD7wrkY+/McPBv0rlo0dZ7GIGqCg7y?=
 =?us-ascii?Q?/d+s+z3kbxtzgUkB+abHm23GzUPiOq3/N1nyCrgOsQt92+S2Ax/7HXUpFmTm?=
 =?us-ascii?Q?/2sLqquz6KYIoPWGNgobvW7zfKMCSVL0OQ764oE9rmIAV56Js6tRg+1evpWl?=
 =?us-ascii?Q?dr/+Rq2iqEZGxa+UcE55SHHA3h2kAIApqaqGVxr7Tr3tPI2PnRWYF4lxs+sU?=
 =?us-ascii?Q?gfFrMl8xT3O5n6qJYwcyvS5aMjlsHMvawQjfhDqny1207oRGp2hbI4Zu4nHI?=
 =?us-ascii?Q?Y3JaBFCe4qxyzay+uPea/XELDBZuD3HEWykv0/mgYbRVLIDojYjxID7A8HO5?=
 =?us-ascii?Q?SWJKY+pctrd5a91YzrpchILrzWvZ6lMQKeqT5oUZ/AX8vjMLN6cY18ubQdm9?=
 =?us-ascii?Q?q8eDV0v9X4Hov9DLHM4zynnN+xnN0Q7f4ebsenSF0C1/HeMJOBtMssP2BRMb?=
 =?us-ascii?Q?opUzKkHiyr/ONC0HKd9vgU23rhbKYAMA4w1Dp12ADmEz7s458PSy2k8Pm8/W?=
 =?us-ascii?Q?ToUhkLKl1qSnPaRDbc6twoKabDybDdBOgDKHJ0yYQtd/KSS/rIi+jid1W7/n?=
 =?us-ascii?Q?TsDDedxEg7BN/xm+MgQCdxc/w6RgcyToftx0pO1gzBKSSSIJJ/F3aTZNI+EQ?=
 =?us-ascii?Q?AZblDGpcs0f5CWEs6LQelW6oTJSbND1Nq7+Bee677NUa+QgHxJ/ulhsKORHu?=
 =?us-ascii?Q?FZgstnjs8vwsU0qRjuMujp6E2IUUHO/cVo9bhbijhLAou0tZu4w3XqebZPN4?=
 =?us-ascii?Q?+fjdHVcfvYPysPzZRLrgRoF8phzCmTNiFSDyBjqazgcMHvb8/6OXH2I8OQ8k?=
 =?us-ascii?Q?7VS7h7slsKb0EVKJKlzDZ2+QXP/WvIhTFGnpXQSZk/vMqEUSJR87rJDWq/3t?=
 =?us-ascii?Q?cfl0C9c9h6YykWqTTcOr8hU/eQO9f8L6etCL8rvtnC4/ftDhGhovI/7YpoDG?=
 =?us-ascii?Q?lU2yUAiT4gymBBkVK+7oY3QLB2sQcqezdxgJMA9xNl3tVJ85WXExZGWBnXMZ?=
 =?us-ascii?Q?n8ETWQb9HYqbOJy7vq6a9PVweGpHi5ckVCnLQ/42EloFWwzSYJHFbGi0I2dz?=
 =?us-ascii?Q?ZrF95vh6M2njJFe7HeMMlTzuOzTBEaNdt9vrMPQbr2JwDDL7A9Ycoa3iNKb8?=
 =?us-ascii?Q?eQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27e134ff-3eda-493a-cf9f-08dcfcc07319
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2024 11:04:27.4339 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dyox8P2Gyy6Q/5VQSdW58j1M9vVGJRm93ZUoPwVmqnmhis3Orkkw2yo0BFIfG3zv2b/6kqK0vmKyUn4rkdZUM4dWf/YW269cYh9QnMIjFoM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7082
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730718272; x=1762254272;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=k4Ct4RLSEdS4NJT+GJTCaXKnnZZD57m84+T0ZwzSjIM=;
 b=Th3Kqi/OK3lEirbuR3tsQjckKVXu7CEyEdObhQFRd6Iw6litT5F8z9Ul
 KFJzeJ96nl95MwUlRo91NPfQrVVqKwyL6zfI94IUbmuHQLQSp9Y3rz6zi
 XIgV4xiruqcyw/sdLUfWcqEDC285TP/hr5oJSmjrWu/mqclEOW/6vghyV
 jgoaRa/cfHMUHIVdWNuY+ojXz75hHPemIzcomdWzfqB4aGgnryZckDlDP
 yL9XV1Bi1w0DquuTxLpgyaKsXbnjou/+pzlwoWyoM32Qcy5nDSubQnNYl
 gQFHCFCtYZABdeYIQKobpqpXxoQC1JYi/MoCVdr3CEPoj1fT2BHJ98Z0p
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Th3Kqi/O
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v12 11/14] iavf: refactor
 iavf_clean_rx_irq to support legacy and flex descriptors
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
> Mateusz Polchlopek
> Sent: Tuesday, October 22, 2024 1:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Keller, Jacob E <jacob.e.keller@intel.com>;
> Polchlopek, Mateusz <mateusz.polchlopek@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v12 11/14] iavf: refactor
> iavf_clean_rx_irq to support legacy and flex descriptors
>=20
> From: Jacob Keller <jacob.e.keller@intel.com>
>=20
> Using VIRTCHNL_VF_OFFLOAD_FLEX_DESC, the iAVF driver is capable of
> negotiating to enable the advanced flexible descriptor layout. Add the fl=
exible
> NIC layout (RXDID=3D2) as a member of the Rx descriptor union.
>=20
> Also add bit position definitions for the status and error indications th=
at are
> needed.
>=20
> The iavf_clean_rx_irq function needs to extract a few fields from the Rx
> descriptor, including the size, rx_ptype, and vlan_tag.
> Move the extraction to a separate function that decodes the fields into a
> structure. This will reduce the burden for handling multiple descriptor t=
ypes by
> keeping the relevant extraction logic in one place.
>=20
> To support handling an additional descriptor format with minimal code
> duplication, refactor Rx checksum handling so that the general logic is s=
eparated
> from the bit calculations. Introduce an iavf_rx_desc_decoded structure wh=
ich
> holds the relevant bits decoded from the Rx descriptor.
> This will enable implementing flexible descriptor handling without duplic=
ating the
> general logic twice.
>=20
> Introduce an iavf_extract_flex_rx_fields, iavf_flex_rx_hash, and
> iavf_flex_rx_csum functions which operate on the flexible NIC descriptor =
format
> instead of the legacy 32 byte format. Based on the negotiated RXDID, sele=
ct the
> correct function for processing the Rx descriptors.
>=20
> With this change, the Rx hot path should be functional when using either =
the
> default legacy 32byte format or when we switch to the flexible NIC layout=
.
>=20
> Modify the Rx hot path to add support for the flexible descriptor format =
and add
> request enabling Rx timestamps for all queues.
>=20
> As in ice, make sure we bump the checksum level if the hardware detected =
a
> packet type which could have an outer checksum. This is important because
> hardware only verifies the inner checksum.
>=20
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c | 354 ++++++++++++++------
> drivers/net/ethernet/intel/iavf/iavf_type.h | 127 ++++---
>  2 files changed, 327 insertions(+), 154 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> index 46745ebc9c1f..89b71509e521 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> @@ -896,59 +896,43 @@ bool iavf_alloc_rx_buffers(struct iavf_ring *rx_rin=
g,


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


