Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MCubBJQQp2k0cwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Mar 2026 17:47:16 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2681F4145
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Mar 2026 17:47:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 36DA640B63;
	Tue,  3 Mar 2026 16:47:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OADTBRgwpEfG; Tue,  3 Mar 2026 16:47:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AAEE240B57
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772556431;
	bh=9X+VA+UBZF1B/XU2CkKGU6wn+Ml6ZehV6lfQaGg3dhY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QA/TNq4JMA3SMmr/HPftO22KhNXkqU1t7vmuy85X6h+Q14nqjHjsEIyjjIB5ApNom
	 oZMr3DOpT7x5f4FJ7eXXyQP7C1nu1CA8gGVOE+Ifo4dokgUJvHOTSD6qRU6ET+n8m/
	 dfEn84qjB0+zwEQ+tQx//e1kHcr2pJ/nenMjhm9xQVdsgphCfPtJRL2drD6maqApe9
	 cwo/utVo1Zz3WrZWAUXIhzA0F1Sd7B1fAT/6lFj4CXMbo90zf0azBbnCKulFfoIqep
	 SiMgTwmCqgL6yftuPLWw9Eo0e2fVBKEfbXHBXzZzKfJlJZMFIicqkeRUIVP99wowfS
	 AN3ysHvub5bUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AAEE240B57;
	Tue,  3 Mar 2026 16:47:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 29D7F2F2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 16:47:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1C2556089B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 16:47:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aeGpAWhQ3Rvo for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Mar 2026 16:47:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 28B436058D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 28B436058D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 28B436058D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 16:47:09 +0000 (UTC)
X-CSE-ConnectionGUID: KQ3RrFelQTSx18lxhRChBw==
X-CSE-MsgGUID: jBNc32aOTHa94+/PmaOcUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="73725503"
X-IronPort-AV: E=Sophos;i="6.21,322,1763452800"; d="scan'208";a="73725503"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 08:47:09 -0800
X-CSE-ConnectionGUID: LW1P9ISZSpqal7jV/39nnw==
X-CSE-MsgGUID: 9CJ03hhYSTmpSlwhHkopOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,322,1763452800"; d="scan'208";a="217225321"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 08:47:09 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 08:47:08 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 3 Mar 2026 08:47:08 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.11) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 08:47:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W0u8ZM7IymPtNHaGET9Na2QVwt2mdbT3gVJBjZRGHMd5E4mUyM6/5pdknqzngDGwN8yUHuWCWpB9J1phXN3DFJmoSxbugBxremVRBw0f8N89K84JNYhmeyzOrZur22q4Pz+pRwZNR3bjLPD/BNg/vkTkW2KhNGAh+ypOwg1Zw9KJVxe6rGQQdwtNp7+Zu+F5NTBGvvO6hFGIZgwNaale8amuT9K8U58d4RrTclWdbQJhdqgnvyQwOsGCJVUUhtk+jGEWx58ciglJ8+hZjij2XTRm7ogOLWwWHE8vG3A5L9EqeAWQvf1Vk9CJzu+k+OmTrKiKCqhC5WSDrB2eiXAKrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9X+VA+UBZF1B/XU2CkKGU6wn+Ml6ZehV6lfQaGg3dhY=;
 b=qLKxQg4LOnMZiVjgtyLZtQAYE+HDGHgkFAF1JKTpnjWE+e+eWVjYelh6YUWetbWjZv36wxu17aAR4OHrlucED7GiCeBdLLMho7S9s2oK0UNLvGtzEDS4IU8mPkozTVz39pgtsCJ0Av5TFgq4ub9Z0fJb6JS66u5RketFCjBwklBat0RQ+SZ0bQ6T9Db3P03XRk7+Yfp9o3Fawql3albahqxPk+sLhDukDRun7IZgfn4iVNxdt0xrYywqWN7OsfW0CsIi42us9zxHYhpNuVaEeLp43YoZHipOuI7SRSDw1JCca+r/DzYsektTZvI7nCDyroA8F6dy0GwCqtD7dEVyJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by PH3PPF383C22AA3.namprd11.prod.outlook.com (2603:10b6:518:1::d17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Tue, 3 Mar
 2026 16:47:06 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9654.022; Tue, 3 Mar 2026
 16:47:06 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>, 
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 6/6] ixgbe: E610: add EEE
 support
Thread-Index: AQHcihWBSIhmnGYY8k6YT2juPKph27WdI/cA
Date: Tue, 3 Mar 2026 16:47:05 +0000
Message-ID: <IA1PR11MB6241E84D86A0A199FFD0EEED8B7FA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260120134434.1931602-1-jedrzej.jagielski@intel.com>
 <20260120134434.1931602-7-jedrzej.jagielski@intel.com>
In-Reply-To: <20260120134434.1931602-7-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|PH3PPF383C22AA3:EE_
x-ms-office365-filtering-correlation-id: 688861f9-8de0-4b8d-7ee8-08de794480d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: U2rVBSX1sXj/NxGlwzAy6YrKmtT6RveojxCUfVfvqpIo6y0wuWSW2wwDvOmVi/lyWH1tPZkU6kuccEzpuTHNFDH4uxDTco/nFBHRlnm7kmHFkMzd/Cq/QwF0LShB4+9TyE6SOFrKaoj4Q2RDIpcW5wSBfgDL2DC6B0YeS380kYBijNFyVJ6g87vU94QjzAO1GY/KOVbbjgmDx9ktTw4aFaPQZ2w+FvdPMeAudK2j21jbcVsKkFk4yaadj00ADZC3bYtIYDiiYjK59FVek1lraHr4tv+Y6u+6SYYeU4FlHBkv3MTvQhLzJHCHSsgFSgcATudBWU6v7TRLGbXJ6XUn1QAkWtSWNS7cFH0wKS4oXbLYrShcNfXgIFFpYMAfFDqMvkbf+Xt3ffOxlGyrH+JeQ48X4NHxZ5x79h8MGFH2ZZk/IdMrUlADWPRzUs1EgLZJ/ZdKvfEnh6RcguzEQH36BGWLx0IhGEo3OLSc6svAj6z/1eTRXzFlhKwvKdEh4P6+rzkREr9SbxLr92TAfRzop/HjMN4vj+hNfx/b93TRcD223PhtKnnDd/5jrfXILN+wu/meOTvaiW1an/czERc285oq+GOh3pTU8f0DkMa3HV7+LA3ASvkATS0jUKzTNTPH54xYIrOMTmGSRueMjEPPMgC7c62qmCOdm+SpQxZ+aDWemhlwAmmq3yiaqeyeKfIxZefuUjCV/u0cTPVi7uEz3A6JpkeCukFX/vHKTf8s9Tol4bTkKm2Ot2y6yJ0qjOOXYzYE4TfpvOrCAj5UJVCfrJEmtMcbvfmyDk1wBITG5mM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KY4f/0V8bZ+V8MZoAW8GNhvg5RwDq3hsTv9JDTGsLjHQiou99Yg6DP10PXCt?=
 =?us-ascii?Q?KN8HTzTn31LSHxgYpaxkUQvvkSkejcNj/AkfddZFtyparuk7c5L7Mp5GK13O?=
 =?us-ascii?Q?9Xc0B+5LMsScXmSrRAWQx+t8dUfWFk/MmXjUV/slVa9wKUSz3t8ADh6wsHo9?=
 =?us-ascii?Q?GiAkV7P4wHRWR790JQLpt9vHCUUpRAL4PQawDITmvJyjam3ckIbzC87BOMQJ?=
 =?us-ascii?Q?Thawr5Ic90RVCAsF9NpNWJlF2e27yQbCFTr0sB6z5tjpclLFiuxrz/DTLe7S?=
 =?us-ascii?Q?AGQb3wGF/1b2eFzh7TTmCbidb70ozejDnXk06IrGyWdAeo5vWirhxT0u4LPB?=
 =?us-ascii?Q?mxfiLCjSrNNC7Pf5Qt9FOGR14vzsk/8Ue+1kHW+9YIzjTfNyEU8rHDAPl69H?=
 =?us-ascii?Q?iCRFtEmqpk4ycHkS2dMs+sxMSiru5McdkxM7u9zEIptetdji8nVsH3JWX6xL?=
 =?us-ascii?Q?IoGnhuvieGv5y8+Ya2SKDERNK+8C/7wj8WlduS4RjYMK2xikv0mQM+qMpOg5?=
 =?us-ascii?Q?4VEvK3+v8ZduGmRyKzdWvlyfTIM1qQ1oeTf8R3lgis6AIJMShmhVl1kQY4AW?=
 =?us-ascii?Q?hd+picsfh0IsQtHS5hcOfpebakArdCVOjxqJG3ssRdlN4FCNnPx4cIgNEC4i?=
 =?us-ascii?Q?c+6VkjJoDYcbTS8sAdwcQqPbmFyhwS7CMSiVXWvDAGrM3fSm8bQrJikjkzFd?=
 =?us-ascii?Q?6XBeYj49l6GPMORLIoFzugrZ/3YeCMpI22C50QGvBhkYbw31mwTOCUOXr0Nc?=
 =?us-ascii?Q?p+8jHCiPP7q8zXMu7BBDwy7pLZSctE08rJ1iLK8H9v9NUxQZFqDxNOlc3QnC?=
 =?us-ascii?Q?DSveLe6xHug6W0LO197RehyMj0/VLKDHvPbWc1gGr63iSwza02QBJesqt92a?=
 =?us-ascii?Q?0eX9sshKMMqzJCoIk0WPEK8IO0UeBxT6NL+UUGGpf4A8+C06JjkOQSC8O9Nk?=
 =?us-ascii?Q?UgU/CJXmqC+WVK1XmrkYhv0SVUPg2f2QfYoffWgSlOJAz5vNblzqffwjZ9dI?=
 =?us-ascii?Q?IsvhuQepIUn6JomZqE7d7YDeGEY0EzjybdQ3GOzJq//sPVN2JR3i+T65BcVz?=
 =?us-ascii?Q?cJTxOUixof7E18UEXK7MDN/Rj5qwcdkN7wyjovB3zHxHzdtHmn7ZngPKGmJB?=
 =?us-ascii?Q?d25+alZur/9m5EVjbFQIl3LtLARxww6f0loo+aeTC86n9EPRLW2ZovCGeB2j?=
 =?us-ascii?Q?7OUj0yUkvtUbugy3gvbxqLMAYIMsbCwBcsXbt/mMxIbd62XdFQEglGPJx4Cq?=
 =?us-ascii?Q?FjD3JtGzUGdPF/uBWul/Vc6gRSkRxl3BvXs/NOCqpudsZIBIgKK0KOBjJW7w?=
 =?us-ascii?Q?yF1nCs9lxmYexu05+64UfxQnI75gir0vz2/PZ4utFz+KVUfMa+ymfG72QftB?=
 =?us-ascii?Q?ZxuUzNClpM3O/JhitVr+FuN5rBMkZKcKsytFA0PO3A52J+G+m9FoMd7a//Dk?=
 =?us-ascii?Q?RbOH92ci5gH8zEsRhErdc5uq5PuxCbQsVgGRK4epvKcrp21ZjNGcq/adLMdN?=
 =?us-ascii?Q?UCwOiYOgl1ypmpjJl1wHDY59iMHc5SoqsKUNkJvSfg4HwKtYCsw8t5ke4Tb4?=
 =?us-ascii?Q?d58zOILE0bWsL15Gjobr/VsgQuXGKzvhPMdEGF9ak4aMLnTDgbfszsFG1P/Q?=
 =?us-ascii?Q?8EVgIm9zRoHjsFiYjPnvhPlkm6XON//ysoYSu6YLOIhKfhWLUhMlTGHTYfNP?=
 =?us-ascii?Q?QhIhdtG2RiSmJLxd76pcBAWkMHiBBYtUOPo+CQ0qZHfelE4v?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 688861f9-8de0-4b8d-7ee8-08de794480d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2026 16:47:05.8362 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: inhawgwfrNbWLV6Y6+B0NdeMS0lvCspXmiYEGYfhOuubgwbELfK42s4ZpWo1H2MsrMI6GyUHQ0AGFbCNvA+ntQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF383C22AA3
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772556429; x=1804092429;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0S/m1Kf5Nh3RwggiTQFqvj3q9y8nAkZ+JAMdG4t7ZQw=;
 b=XTBZnbY5dYJ6fbWG7Y3U+kk5tCWNLZ2Pee9in0Jy7Q/ZUaFd2xKRdOnN
 oMQcnrsogQOYddcCwKWEdYcePYHmy8fSsrb45Ae9xie1m0fF64otL/Iot
 Nt6Jr2ea1dTrbYEJEUSsnSk/snZltXSsddcLI/tLIM1agkvDV+1YfcqGE
 OJE8AoP8GSbmy08anKSmqzeEgcf18AMJTd+y/MgvXe6R/z4X+fdUVxnNB
 9qZN4E8TbVosrRiutMUbTfdGblH9zStKVW3qeCemiJfF8FAtb0z1CYZRJ
 maavaddGUh/vXwALsUu3t0/DK64KYexGEi6ri3cwlcqou3isPcwMv13CY
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XTBZnbY5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 6/6] ixgbe: E610: add EEE
 support
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
X-Rspamd-Queue-Id: 6A2681F4145
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jedrzej.jagielski@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,intel.com:email,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of J=
edrzej Jagielski
> Sent: 20 January 2026 19:15
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; netdev@vger.kernel.or=
g; Jagielski, Jedrzej <jedrzej.jagielski@intel.com>; Loktionov, Aleksandr <=
aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 6/6] ixgbe: E610: add EEE s=
upport
>
> Add E610 specific implementation of .get_eee() and .set_eee() ethtool cal=
lbacks.
>
> Introduce ixgbe_setup_eee_e610() which is used to set EEE config on E610 =
device via ixgbe_aci_set_phy_cfg() (0x0601 ACI command).
> Assign it to dedicated mac operation.
>
> E610 devices support EEE feature specifically for 2.5, 5 and 10G link spe=
eds. When user try to set EEE for unsupported speeds log it.
>
> Setting timer and setting EEE advertised speeds are not yet supported.
>
> EEE shall be enabled by default for E610 devices.
>
> Add EEE statuis logging during link watchdog run.
>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v2: get rid of setting unsupported speeds from ixgbe_setup_eee_e610();
>    remove 10Mb EEE case; remove EEE control (Andrew)
> ---
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
