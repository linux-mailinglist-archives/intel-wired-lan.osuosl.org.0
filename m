Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D67DAEE4FE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Jun 2025 18:52:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A136D80CE3;
	Mon, 30 Jun 2025 16:52:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ccK3hstjZn2L; Mon, 30 Jun 2025 16:52:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E567380D03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751302375;
	bh=OcyLMCBFZtqPF8FkvrG19O/YbxwyB521FXSIeopQZnY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5epMhsvAWDUNi10U8hCScWi97bpJxrmtndmgq5t2hf+xyy8tsgOvU+UTNcbAyFFtl
	 LP6xyt5MHb4oX9tVUZIrRqKmayf8D6Zp/4MXfM9uBYrkobUdSpkvKciGJ+0v2fh5ak
	 LaD+6AHduglsJQKpZ1+ZkeafcoVB5WmpXO+JDv7CO4YNkPAr/95wKGh2SoKiOwJXi+
	 vb0Q7xfN7EM5TwgO34+i3Eu9QZeZ4JTsG8toaKrBeIh0Wf08yjGBtY5eQl1qihXZA1
	 sWSSn6cV8Gzkb07Hl3hZaNlb9l5K+OPB5lrtpofIh7NSkTir5W5o+7Gols9LKWPZZR
	 9Zh8WwkiwGLGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E567380D03;
	Mon, 30 Jun 2025 16:52:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8DCDEDF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 16:52:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7351260E62
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 16:52:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5fPiC_olvAXD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Jun 2025 16:52:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B282560E4F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B282560E4F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B282560E4F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 16:52:53 +0000 (UTC)
X-CSE-ConnectionGUID: FOpT2Wc+QHaDLyfQLK0kOA==
X-CSE-MsgGUID: Uy3Xi9XiQ627s7d/8/9eRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11480"; a="64233962"
X-IronPort-AV: E=Sophos;i="6.16,278,1744095600"; d="scan'208";a="64233962"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 09:52:53 -0700
X-CSE-ConnectionGUID: zaSvH3aTS2CHdG05UrA89Q==
X-CSE-MsgGUID: qa7tgsqZQgak4Nw9uE0uAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,278,1744095600"; d="scan'208";a="157913326"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 09:52:53 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 30 Jun 2025 09:52:52 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 30 Jun 2025 09:52:52 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.77) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 30 Jun 2025 09:52:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LRIGadVBsh/lIKWPutlUr2HJUFUnDyv0iYZEvRRlrdAVUUqnfIhpLbpDRJvjbygpTBiyRunRCR05lafPOS1/yTHNIouDYLJw93kpPFETBuzsEQ6bbOerufgFe6GwHa5RdsuxiQSHG3FTvDBWpV1P/Jl1jn1L07IDJWYP6o4AR5EGaiWt1vPNs7kvwt6pOie1hkAOGc9z1bbq/1zQgMvDai2kQ3SikkJCuZL6kLLWAXjBubFstz1J+kTrI2G4NZArm3WNNnDYh7xdPUVWT5ndBytrGYpOWJq8K+WVQ3rDDtGFIzR+hpaQn3jmWcZ6zLlFdNtdaR2P0Psyodtm07XFTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OcyLMCBFZtqPF8FkvrG19O/YbxwyB521FXSIeopQZnY=;
 b=sDCzM+tZZ/C80+rAc15R10j/i+jXf4AddWD1kga9vjyo2GVXd5SHQojLWGHe48SDxITbai37Bj8+L9QDadJLHrj3A4gdKraun0WodlCt8WQGwQhdrRCmEsxFGgtuomkJCjxVVt9VDzheRGhNqe3X9jVGdWnPXs2Ge0dnQQzJSd8dZjqSrHFYdXgghCfsi33MSVvKAsTPDns7ol6LSmsiQs8U2K1MPg48YdGy8N4d6+xd0F2kKR93XyKCuysPO/YDKdj05ekebHOwkOZjddRy8ezv4r4RzIq3avPak53l4oOUUEEV8FRUtskXawvFXG0vs+QdGNeA05k3nFyeHDhltw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by SN7PR11MB6655.namprd11.prod.outlook.com (2603:10b6:806:26d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.28; Mon, 30 Jun
 2025 16:52:08 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.8880.027; Mon, 30 Jun 2025
 16:52:08 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Zaki, Ahmed" <ahmed.zaki@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Zaki, Ahmed"
 <ahmed.zaki@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] idpf: convert control queue
 mutex to a spinlock
Thread-Index: AQHbzCUhDoeS27/Bj0ahcTK5P1Zdz7QcJiRw
Date: Mon, 30 Jun 2025 16:52:08 +0000
Message-ID: <SJ1PR11MB62974A46DC834299DD2359B89B46A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250523205537.161754-1-ahmed.zaki@intel.com>
In-Reply-To: <20250523205537.161754-1-ahmed.zaki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|SN7PR11MB6655:EE_
x-ms-office365-filtering-correlation-id: 139f9444-fc62-4eef-e95b-08ddb7f673ae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?3WFOSqAj6X0Io4EDCzHxEZUW++SSGC2AkWOn/0YQ7wKJydR52rkRHvuCyxxk?=
 =?us-ascii?Q?omLUAwMzRVpQbau/P/JDGDi1KiSKSxIZuP96OFZj0uV5crArc+rF9qQe61Q6?=
 =?us-ascii?Q?XDzDh7Qrf4yYDcnYG7FySHDF/UqOWHhAkVy6f0leB0K6moN/JI9xJZ5Pm9Ug?=
 =?us-ascii?Q?97eytakT6/hgilAMkgVdP/WMIuYhpumpgCw2tU0aosx6c+WlZuiXtGQLkGLC?=
 =?us-ascii?Q?BT1bcMvzKgOyq2C4+XOgdsVSfg2LJ+Pjd3iyp0/NKCTttVpvF1RS/qw5JA1v?=
 =?us-ascii?Q?ceHk4OqCCjCo8cS3fiR6vdE3IBkriQa4DoxGrnYmcJhwaSBSXifrC/TtNZ+j?=
 =?us-ascii?Q?K0JV5ddtOvdpA7YFLXPUI5mEjle5ZA3EDNbynFBCS7hljIR1BxdodOFZFZ9H?=
 =?us-ascii?Q?yM/vZBRNGPdxLiLWD3Yc5ATsWcjknOp+hrvEvPw62vtCmKofg/VJFNq6coEW?=
 =?us-ascii?Q?OGeFMd4iEZeQ8EILhi4XiVjQ9ySpOymlqlsC0o+GWAiEVF0yW12nfYt3Jd4J?=
 =?us-ascii?Q?QxuaFW8jQ+zFIDcjtDecPS8CqKhyg680vTEVuJZ0i0cC+Ms2uBf94g2g387U?=
 =?us-ascii?Q?fiX9S6H3PXj4fU5v1WaHYEaZ9XKyeSKHDOm3OiLaG0P5YNPifBvR9Qo/shMP?=
 =?us-ascii?Q?MF0tYys1uVJM3JUqGvYd2ik6ao7ZZtAoK8moLyRxgkClfs0eAdcia/KduxLZ?=
 =?us-ascii?Q?WS5EvT5s3XqezxQdcjJA9MaWX9FUOOjMJn3Kujx9DR2ZgxHN9rGOUtQVG8nh?=
 =?us-ascii?Q?VDyOf5ltozs7X4FbqYwuYi8xKKLybpJW1CmeGLAyLch340P5Cegkhci0f4WG?=
 =?us-ascii?Q?+c06+7YaMhPGDQFi7V3x8RkSH2iU2ROPRDLw4+c43QB9hP6kpf1HWBXqTb7S?=
 =?us-ascii?Q?akfAs0wx9/7oiDqT2QAXH5IMMsl7O3wBS2tEJVBLIvYihfP8wOT8B9EDYcVU?=
 =?us-ascii?Q?nm2Tj+g4toQqlgLpSziivmBepkc9gMnLVt6NLWX3Ffh9Eh+kW3cC1facJW7b?=
 =?us-ascii?Q?kSxN50irtghMO1DvNK0ABVvw04Db42pDwWwhuIyMtxBaA/fg+5sqvJvvWDjK?=
 =?us-ascii?Q?4wB7h70HqcYfkQCXaw6REhXqKZNZA/ak+BfMfi+uQmDMk6oLSm3ciTFon326?=
 =?us-ascii?Q?5qk7mU/ZAJ1L3mqjDvAbV1Na2zanWBeOX1sbJ35YTjrx5QGr614HgeEDAk9m?=
 =?us-ascii?Q?uRv0F+XS6k8ArR+xDBR2fz1HMHYmrGd2GvJsBs7/qIXiQBiCH/kH/X8fStOn?=
 =?us-ascii?Q?N4QyEAKBvlaqYIuMSwYrgcmSJ835iluLb1xsZwi3VkyouLKMwamn0XVSDHHp?=
 =?us-ascii?Q?W+oSI57xL7UDv67kUV2s9Kd61MgkPAXApwKez8lwBZhaLozUbvIry4+OD0yS?=
 =?us-ascii?Q?ptQVIOP//OTIVmJZINELsc5E9MRgpzHQVOTQ0LIPH0nj31lzEXSbDmo9pHEZ?=
 =?us-ascii?Q?5W7WelAi/PQrUm4gmeYLjeh0gwxLYf+k/XTJ2mTItV8LZ0aAt3yJ0rKIKL0R?=
 =?us-ascii?Q?Ms4qd7qFksUwfZM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?r4VlQnLGb+DYaoz1jMiT9SA3eZU2ZW2bE95q1OQD/Y6u3kAzklmfUyzkmGRT?=
 =?us-ascii?Q?OMUPkczqO0bflBouEt9VaF0DhXqGNctSIc6Tqf/P+tOwaz3ShYmif0x5/8Ve?=
 =?us-ascii?Q?WRsBtlgaFZDOdfHSmIX/ONJoB4iZoEI9qWtAQXIboeBYvRzngXTj5dfC4gcm?=
 =?us-ascii?Q?b1y6+if2LQEkl681nNh9eQrLmA7bB40+ExCTUW2zGbr781l/IiL1/awQji4i?=
 =?us-ascii?Q?fz7kTr+qchOOZzrNiiuwEzUOk4ygLANW19LjKUM/jE1rAaGQoJxcmyGFeNz1?=
 =?us-ascii?Q?lYoslgsyRmtrVYc6GDm1cTP19VO/KL+8zTQ5bG/OkCI7hdjApZXDNRNpQQuH?=
 =?us-ascii?Q?cP9hcqnfJNMR5hSnLOo/TZZ6R6hLmy1Pdjs8jYLkpva9iHMk0GCVL2NJ45go?=
 =?us-ascii?Q?7x2dT3yTVosnZRowYlJ3SCDHFrequUl5PXlI4C3czkQ5BZObKqYV+4YacG/j?=
 =?us-ascii?Q?2gUPNDor6WRG5V6aDfHDtgG2qCPeZoliglai2GfR9dPFoPMChRFAn6vK6tHQ?=
 =?us-ascii?Q?1ks33uumS0tDSu1YrXEA/fUtRH7eWxgK4Y3wLyQBhmzg+yPw3VEHRQy/hXDO?=
 =?us-ascii?Q?cvUSrL1sIdMPr47kSwxOn1PQWTy7vlP7aohNMlxLd2ozwmS8KCQ3jiMiymrB?=
 =?us-ascii?Q?Hzme/pV7ynWBxZ6cEQqNPFTLP3KJf0z1zHIPyTbiWZtS7EEK85b0fZg/gk4w?=
 =?us-ascii?Q?dBkDWWFYaCYF9/XNAe5at7ii+KuZOqjT63k6Y9dYxKaWlb4rv+26dltgO4+n?=
 =?us-ascii?Q?S9GZG0IqTS+zh6Yrv1oDfuE+pgLMojn6JK2bdYkt5MxhmAJQXONcIBHjJT6+?=
 =?us-ascii?Q?qbturDgE4+PF7/Z7breQnsRHtAs+rUCCkhBlEIFpVH/reYHhQFf+9rPdMLbv?=
 =?us-ascii?Q?swBjx0p6LuepYR1YCmT6o6W2mS7BRqNMMWOMU3FjOtJvdI/0CSECe4vz70T/?=
 =?us-ascii?Q?PZIJpd2B/Y7+aWop0s5/VS+oDtkjZRTpwyZuhx1ddRxNSGhj/LdjCn/MatcI?=
 =?us-ascii?Q?G3TrgH8yjnfNk+jutG/KmXQvjj3kr3XCDlzqR4zCqE95wWdwMfnSRWHe77dL?=
 =?us-ascii?Q?oNXN6Ok2v7irDP3fKQg51VPOt6F8R9Y1Z/rDcKmf/Cz3TcA1I2F50biwWTi+?=
 =?us-ascii?Q?gl6768ql1y1PDVCu9xAMoj7Ew5VkTIooJ/RMlgpIpq0L2/4z6ppFP2EYJ3ai?=
 =?us-ascii?Q?v2K0WNqikNUc0ip6A56Y3++eerDN8jN62X4H8M4wehMvIxe5OAI4KO34B4oG?=
 =?us-ascii?Q?qItKj8lUSiMeIILjNRaou+q25tsLH+osIYJgIhehF4eKn1PHbDFIorB2E59Q?=
 =?us-ascii?Q?478NDL+ZwAceB9pUZDCYJo5Pb6iRhgxE1+HQl7v+ICXLLegTjevDU3E41sYF?=
 =?us-ascii?Q?drcv84qQ+iLDzdoQyeLeNRdA/agSJV7RHxqh4AvkdWGjE+GkN4F9gBRryz24?=
 =?us-ascii?Q?CLRMu4NPZwgXuD4caQYmbNwzAbPxGSzse5lCkBJ3VHE6fHkDl9mv674xhm7/?=
 =?us-ascii?Q?iWblMnfu/kWgn4f/rb7euqVftyJsAdXV+ljKaZl6Uss07MRSa6vyuXVBTFkS?=
 =?us-ascii?Q?JiBwlIL1N0L1kcQ+cIz4VK+tUGtIT8N4AIl/1Mut?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 139f9444-fc62-4eef-e95b-08ddb7f673ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2025 16:52:08.6799 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ckz2bVV6n9vQd8vTWChSkjUYydCOI+aI26RGxGjvWu02FTSfKx0UEMVzKfcch5wbDW6eevK+zmugffiZRJR1XA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6655
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751302374; x=1782838374;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3ADuTc6ttXSRsixwmuiJAyIlBkihurtjvPuUMrazurU=;
 b=LyYagUwjukKNf30kJV/SB5OB/q81ieN8k2Z60CBPUKI+x7WusjhI+lF2
 i8aSs1EwS+ekZV7WtfpRNqJep5cNEhOYCM4H5c+h1cTRvAG5V18MImmpd
 ZMm9ECxCsyiw8NLNPbFHJHwlTa+wGhXrqFPhNYti8gzSTlENpHEzvO+43
 +ZUq5tAFeCzYVVwnXIpbKaCpsEtWpU4rdURhXKqZQ7XuOn4m9700jJVFO
 El0jJmcwZESwAXVc3VarUbA7a8ue2KhMSTaulDCkEgM/0Z/iCLeAcBs9j
 +aGhh/NgwQ1WbrI99fx/fS9trOcL1TmHx9+HXsHm2RvNdFUZe6HKv9X2l
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LyYagUwj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: convert control queue
 mutex to a spinlock
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
> Ahmed Zaki
> Sent: Friday, May 23, 2025 1:56 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Zaki, Ahmed <ahmed.zaki@intel.com>;
> Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: convert control queue mu=
tex
> to a spinlock
>=20
> With VIRTCHNL2_CAP_MACFILTER enabled, the following warning is
> generated on module load:
>=20
> [  324.701677] BUG: sleeping function called from invalid context at
> kernel/locking/mutex.c:578 [  324.701684] in_atomic(): 1, irqs_disabled()=
: 0,
> non_block: 0, pid: 1582, name: NetworkManager [  324.701689]
> preempt_count: 201, expected: 0 [  324.701693] RCU nest depth: 0,
> expected: 0 [  324.701697] 2 locks held by NetworkManager/1582:
> [  324.701702]  #0: ffffffff9f7be770 (rtnl_mutex){....}-{3:3}, at:
> rtnl_newlink+0x791/0x21e0 [  324.701730]  #1: ff1100216c380368
> (_xmit_ETHER){....}-{2:2}, at: __dev_open+0x3f0/0x870 [  324.701749]
> Preemption disabled at:
> [  324.701752] [<ffffffff9cd23b9d>] __dev_open+0x3dd/0x870 [
> 324.701765] CPU: 30 UID: 0 PID: 1582 Comm: NetworkManager Not tainted
> 6.15.0-rc5+ #2 PREEMPT(voluntary) [  324.701771] Hardware name: Intel
> Corporation M50FCP2SBSTD/M50FCP2SBSTD, BIOS
> SE5C741.86B.01.01.0001.2211140926 11/14/2022 [  324.701774] Call
> Trace:
> [  324.701777]  <TASK>
> [  324.701779]  dump_stack_lvl+0x5d/0x80 [  324.701788]  ?
> __dev_open+0x3dd/0x870 [  324.701793]
> __might_resched.cold+0x1ef/0x23d <..> [  324.701818]
> __mutex_lock+0x113/0x1b80 <..> [  324.701917]
> idpf_ctlq_clean_sq+0xad/0x4b0 [idpf] [  324.701935]  ?
> kasan_save_track+0x14/0x30 [  324.701941]  idpf_mb_clean+0x143/0x380
> [idpf] <..> [  324.701991]  idpf_send_mb_msg+0x111/0x720 [idpf] [
> 324.702009]  idpf_vc_xn_exec+0x4cc/0x990 [idpf] [  324.702021]  ?
> rcu_is_watching+0x12/0xc0 [  324.702035]
> idpf_add_del_mac_filters+0x3ed/0xb50 [idpf] <..> [  324.702122]
> __hw_addr_sync_dev+0x1cf/0x300 [  324.702126]  ?
> find_held_lock+0x32/0x90 [  324.702134]  idpf_set_rx_mode+0x317/0x390
> [idpf] [  324.702152]  __dev_open+0x3f8/0x870 [  324.702159]  ?
> __pfx___dev_open+0x10/0x10 [  324.702174]
> __dev_change_flags+0x443/0x650 <..> [  324.702208]
> netif_change_flags+0x80/0x160 [  324.702218]
> do_setlink.isra.0+0x16a0/0x3960 <..> [  324.702349]
> rtnl_newlink+0x12fd/0x21e0
>=20
> The sequence is as follows:
> 	rtnl_newlink()->
> 	__dev_change_flags()->
> 	__dev_open()->
> 	dev_set_rx_mode() - >  # disables BH and grabs "dev->addr_list_lock"
> 	idpf_set_rx_mode() ->  # proceed only if VIRTCHNL2_CAP_MACFILTER
> is ON
> 	__dev_uc_sync() ->
> 	idpf_add_mac_filter ->
> 	idpf_add_del_mac_filters ->
> 	idpf_send_mb_msg() ->
> 	idpf_mb_clean() ->
> 	idpf_ctlq_clean_sq()   # mutex_lock(cq_lock)
>=20
> Fix by converting cq_lock to a spinlock. All operations under the new loc=
k are
> safe except freeing the DMA memory, which may use vunmap(). Fix by
> requesting a contiguous physical memory for the DMA mapping.
>=20
> Fixes: a251eee62133 ("idpf: add SRIOV support and other ndo_ops")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
> 2.43.0

Tested-by: Samuel Salin <Samuel.salin@intel.com>
