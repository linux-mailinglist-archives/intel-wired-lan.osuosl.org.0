Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EF84C8B03F1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Apr 2024 10:13:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9EA3540060;
	Wed, 24 Apr 2024 08:13:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1kRLCosbjBGk; Wed, 24 Apr 2024 08:13:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E32A404D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713946403;
	bh=ih1pHHOIti3d35vGTbIH2bRKYRZgvXQOpAgCYo58GgU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9ay4pygxSBHkMJMZXnLClqbhUsDCOOOh2CkjkyFrb5h67cQDVf9D8NEuAhp0MNL0l
	 Kxves34AVKgVxTeK02tC5/OcyXLLm57bDNRDOkr1qrZKyUuLhRwh6as3GeiCbeMSJZ
	 i0kiPHGu3IRLWn8ZWekHsDi/xwAKNPTb4AJvdrlILSUV7bn8n2lrrdPAq6emctpVSB
	 CzVfjMzGAW3rRRQ7dhRauHZ1JResgcsU2J701FTzL7zvDruUUYs3+Pv6MrqBIsQDAX
	 nueDLn/gfQwfjmiXRLsVIZq/7RlGr0HgSqmYvnS87nlQbuHzrK9KQbaGXdZX0O4VDj
	 N/vH9YwXGIs4Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E32A404D7;
	Wed, 24 Apr 2024 08:13:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 327EE1BF47D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 08:13:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1D72E81EE7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 08:13:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x8J5foIv4Bss for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Apr 2024 08:13:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7F84481EDD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F84481EDD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7F84481EDD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 08:13:19 +0000 (UTC)
X-CSE-ConnectionGUID: kqYkzJOqQqGzEKEGrAXMvw==
X-CSE-MsgGUID: eIiJNEqLT/+rJRd0mXmVwA==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="9493758"
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; 
   d="scan'208";a="9493758"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 01:13:19 -0700
X-CSE-ConnectionGUID: 7aL9luB8SKC/v09XrC3y2A==
X-CSE-MsgGUID: LYbA0t/iQtSg2zDre8pFEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; d="scan'208";a="55594779"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Apr 2024 01:13:18 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Apr 2024 01:13:18 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 24 Apr 2024 01:13:18 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 24 Apr 2024 01:13:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FcGOEZikUr/HKpUs8Vuas5aiNsA3l1NDGuJ1uOO+85z5wNVbi4tXq1yLRlsis4Aa7TslwqV7JETbJgEGZjFXhB8raaSaHzEkBkV5cE72fq3Dg+7eN8r+4ChPv2aNaPoup+X+3zyZn67at324xPrsFymi1LAof/SR2nwKDq3bzaqPq0NLT60SyaN0bFh0ANYX3om6Rd6zrGm0UyAzP7eaecQAuduzTuie0h6SDivYopQ+Q37kiy2/vuDWj2tIBygn6P88KeP8J75yKXc+x8D8u6hJUdTArFrmtvRvSoCf8L8KEeBvUzSqwnwuZBOAdQqIfv+N7vHVhV8uAU+EaMoK9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ih1pHHOIti3d35vGTbIH2bRKYRZgvXQOpAgCYo58GgU=;
 b=O/PS2JJjOkJryRCR2lCjs86GowdNfZoUvrAHeXvWsNlt7mQWjDuNgz1wZb2bhmIm43QUDgCrF0X6G6yv6xY0YOyAuN5u/RK2iJomYrNxXXNnT+suziYXpZRIaMcXmGh+fwmC53mPz9UME0qrQiIOwOtyXKCaTIOA7j8fw7InW2E95SphNgV/0ig5ort487TnKGCmYzTEjiVcMBrFxDpobVmxjxqidQgOJ7bY/C6x95V+460utxJxgT84t9hpQt/IgoNndpu2dcabELwPKIypG+kfDDpgc8YEy/fLncK5l+52X8oNhdQl2xHkTOqj2P98poWQPfc2YEQ4n6JRhIciBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4610.namprd11.prod.outlook.com (2603:10b6:5:2ab::19)
 by PH7PR11MB8504.namprd11.prod.outlook.com (2603:10b6:510:2fe::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.21; Wed, 24 Apr
 2024 08:13:15 +0000
Received: from DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::e51:4d65:a54a:60fd]) by DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::e51:4d65:a54a:60fd%6]) with mapi id 15.20.7519.021; Wed, 24 Apr 2024
 08:13:15 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: Simon Horman <horms@kernel.org>
Thread-Topic: [PATCH iwl-next v2 2/5] ixgbe: Add support for E610 device
 capabilities detection
Thread-Index: AQHajx5QgnEvrJXB+kOnCO+IqFvRXrFxgAkAgAKkWJCAAIQjAIACd6Vw
Date: Wed, 24 Apr 2024 08:13:15 +0000
Message-ID: <DM6PR11MB4610524B27A9706A343DA813F3102@DM6PR11MB4610.namprd11.prod.outlook.com>
References: <20240415103435.6674-1-piotr.kwapulinski@intel.com>
 <20240415103435.6674-3-piotr.kwapulinski@intel.com>
 <20240420181826.GA42092@kernel.org>
 <DM6PR11MB461069F903C65507AB64228BF3122@DM6PR11MB4610.namprd11.prod.outlook.com>
 <20240422183206.GE42092@kernel.org>
In-Reply-To: <20240422183206.GE42092@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4610:EE_|PH7PR11MB8504:EE_
x-ms-office365-filtering-correlation-id: 7c31f392-cece-43f7-88cd-08dc64366463
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?xPXV1BoSCGy7U3RwtkeI1fAA+Haca4b2euNPC4WR94esfSXrY/lyGdQ6Oryw?=
 =?us-ascii?Q?RnV13cAYXTNkRTV44AybysozJ9/YmVubFcrWLGaukNJy5gKbu3b2FTNlo6eV?=
 =?us-ascii?Q?MIb6BFbHzyJScCKbNTwhLn77/lv3x35lI9Oq2TMmWMU5J5kgGPoFAivTlBxB?=
 =?us-ascii?Q?Gk8FZG4tiLmfL1XBwBsQv2UBvpwyME4iCBp0F55I7UoeybyRimwWiInQsu9J?=
 =?us-ascii?Q?EX3xWNIYZrjCQZwqCc37Hu+rxoY4C6UK2tRCQpTiFNW6gxhKwJLTaL1X1SoM?=
 =?us-ascii?Q?ZREE4ql+blcbKnMoX1JoF+MaDHyKxkstGjJzhkxINNJlRQEYcExfzASnxOWE?=
 =?us-ascii?Q?4iIKHZugg3E6bc01N3vHFmLryow608rpGOqrd3PCfX4QMLd8KeKN3ieVooxO?=
 =?us-ascii?Q?tJo0/wkrBXdvGyFIdGSesFf2PtOindjwTkdDocaGLv0Xev/xvZZ5XNZr8Kwa?=
 =?us-ascii?Q?u9timY2ekQdUcuHLtJhArR+8AuT3ZbrIaK47F15AnsugEku95Pn59skpITDC?=
 =?us-ascii?Q?UxOAkuk00J3xpP6AXRPcKOx0oy9Ml4xxmbIItm9yaahdkSW32d2HKfIHnBFk?=
 =?us-ascii?Q?0ajw7f5fzSEx+yJ4bKYYJCXyZI/6E+ccPOnZHl1hTREC9snWBMsEn0bcftth?=
 =?us-ascii?Q?sA6i8P7CaoAkRjtMHohk5PZWDJHJjmOt+NSkL3ucqX5b569L/vFSWjT554N+?=
 =?us-ascii?Q?YxROoRzF1i7h91NK0gu+LwanYxOADuWFVqWIe0XIkw2Bgo+TH3IHZxFiP20I?=
 =?us-ascii?Q?X6s1rP80juISq5sumkt8nUexKQK/T4OFqzg1xHOCA2AnYehTtQIkUMZnRsia?=
 =?us-ascii?Q?t4yO/jXh9GzYlh39AozJHXn+CnI2CV+US6fiqo7rDqqkT0FGU4bMpoXqYDam?=
 =?us-ascii?Q?wRAS8P75UeA1KlXg4KZxdZDlBvCcMuJo63VGtTjab2JCEnkhcwySLxWdWh/S?=
 =?us-ascii?Q?X0Suniwu33DpaOilE1aaHfIy0nZ8OfMckem8d+iSbBsCXL69b9/WUiL7WuPw?=
 =?us-ascii?Q?GS3bOTwG4g1fVjItZFDqEMhUydJHdQrSvVLM8e01OWfv2J1I/1JgR3EZtAr5?=
 =?us-ascii?Q?ONwJQEEFtUI0kwsF9kdHaYn0AQ5/Zm4jXldyF/hNRbMDMlKpmuyCW2tEIUzs?=
 =?us-ascii?Q?us+AwIDIQvJ6OL4/tCEkOpecu8PqQof1ZAOXdDPVlOmAOypVfUetCDVC/akQ?=
 =?us-ascii?Q?SBm8Y56UElgp+6g+L/TZsBjq9TXikuImAOXW6ClkSsZZ9DXjMFFJCfNws57d?=
 =?us-ascii?Q?kRIg9fYP5ilVhd4zt/RPtKjXnqK2fgoON1I7ezCeVoXo4VRdLN9u9xfwQb9C?=
 =?us-ascii?Q?1qdQboMrRAY+u/74U38fItS+Kq4HiYmoHx7edVdQvDJmww=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4610.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Z0HT1Yf/E4y2r6hd4iJvi0E8/udZjJxiwHeIdp6Eka2ndsLABo+A9F4sITnY?=
 =?us-ascii?Q?xV+iBpmK/9h5f6v7t9VS7G6XCVCblug1giMGytVR6ysv9NZVUNNBlX7jeFPf?=
 =?us-ascii?Q?Z7oC8vPZQyCc2JmAslRy2pikojSxo1ffYgjtKYqYFPN0sdEkNrV33Isxx1ry?=
 =?us-ascii?Q?uFdNWFAImGsyTW72fYAHZoUXqbP6A8yaERdhFrslc3xzDM/8ZrBh/LrnPqEO?=
 =?us-ascii?Q?yLB0UEq/49v2RcI1iKnon41bCdSWgiGSM8vejp+kqoPGBmMbqtPHlUKrKZ1F?=
 =?us-ascii?Q?OtKb596K9TWNgAC1+15EVqpo8oAitJvt9cbP9vliLGgI2BnNxK3R+9V937Lp?=
 =?us-ascii?Q?NrisezYqcvvUsLpeDHo+pZ7Qi8ys8z+H2oxPVEUBADsusyETJYvP3yEshVTx?=
 =?us-ascii?Q?mCBbEBZgK1ITNOgxRUD4wQSI366+XTHMYfNAL0Y/xtmh3kRfxp8ljOgymSgZ?=
 =?us-ascii?Q?fhoof/ic/p5fHKlp1iGRgpLudu/K9J98rBzwynyI8wsXgHY8MIM6nq4z/pox?=
 =?us-ascii?Q?E3QYwamcj4E1rMRI6aqqW77kkkAlOWXE0+ElBiZ5sLyDS78OhVdw3CgCe6Ub?=
 =?us-ascii?Q?JCYSH2UPjxbHcRRkYkP3IHPAFgm/UdyZ+hbs7swoCBszkwBrsAhLsMbxjnan?=
 =?us-ascii?Q?Cvctd7D5PYM/0ewjmjyM96XO6I+RUFF9YSggWRU4Zghzocqw1xHswYV8Dskt?=
 =?us-ascii?Q?C0WN/S5QGLz4rLvUouefUGg5d/R0Y2QKJbQc6jG3Z7gghfIAOHo9HBh+sHLI?=
 =?us-ascii?Q?7kdP87N64Po+TreCeR96tRZK7mhg/cCz8nVVUZBhE20dHKgPmIItpk9V0kpD?=
 =?us-ascii?Q?sE1nwj6tfJyX+oTQEVIfraUgSHPtlKuStBWAaD958yV+cCOaH5UjuQfQDk53?=
 =?us-ascii?Q?bBZ1VHipq+kmCdxRJypyYu//zpfqwTjdJWrUpZx+kaNfCYdIyu2Ba2EzQV9O?=
 =?us-ascii?Q?OKNnEiVjYfNhYP6rY2pVIIpvffTZJt0lYryZCoh91EBcNnuvanEVGAd5bSRs?=
 =?us-ascii?Q?jjb9PUDLkPd8qjhZfrq7/78QWvMT4IqxPkgM1dt9zf+SAh/qvccbeZdld/TD?=
 =?us-ascii?Q?2k7qNO4b/wRLLeeCfia3ajMsBGWFJlioVOp25y7LxlsbdllIvCSB8Y+m8Dtl?=
 =?us-ascii?Q?PK3iW4v5p72Rko6f59aA8CvM9YLHUwm41plwEsZu/TqwqSV7ZTo5OV46KmkE?=
 =?us-ascii?Q?qQ1D75ARHCFkVWWfmAP1YaAIDm2efhKk6449auJ0m+ugoNCFlW24Y4R/Yaim?=
 =?us-ascii?Q?jRZRqcoUkqeD1KpuqsKZGXG7d2OZIcqvqlRMrIfEIgUBqAeBqVPR19D/0ZVU?=
 =?us-ascii?Q?TjCRMLyclj6SDiFlrETIi0z1Y0itr+LU/LWbkr36tfQs/3RPQcloG1q/jP6k?=
 =?us-ascii?Q?XCRGFcewb+VXIAA/MVs1TFCxAxggLQO3xp2u9n4kkzaovC5pkecpHAthwrTf?=
 =?us-ascii?Q?Fu4/NVyj28es519nX1IKMant1yFfMhmQXPWH3TpnAufl/pPYXh3JAytb+U7y?=
 =?us-ascii?Q?ok8TBPtmqum8/sBbbgJtrgQqj5IJR68zsF9IEw0L2Kcf0fwx99qu07+bNTxS?=
 =?us-ascii?Q?QPfNfuCh9Bu3GuTpoDN+s9oD8NyKeY0tGFrfnrse?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4610.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c31f392-cece-43f7-88cd-08dc64366463
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2024 08:13:15.4752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BV1jlb3ZR7SBuB3HFVBKE/nrM89Aw9e9jlH5ma7VXMV3AV2AwE061sQyYe3FqB7P0dkovz/Y2/lrLoQHlqGv2ivzz839j92+vFIBoXSvxWc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8504
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713946400; x=1745482400;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2GH+ohLS/4eWl24M1e0WCjmahd+snPo8bKAATRNM5Js=;
 b=AP7bGgpe+qxHS8B2OEmOPMfD+oiUgF82YSVFrZBlZNCtjV247mOQ5oAE
 /eUoW/OdjDylG0TM0sl6x4n379opKDFniKjUijAneph7z+ad/agAC1yus
 3DlCstm3DMuI4S0VQKnVyS6LBpcE9LZGWsu3OfnZZvrde6FVLLFohqqZ9
 +euyNIxhXmXL7kjwX9j5QFeucx03IUumNzH6Ibch+YPo1YBh9OmZj4YjA
 OOyMMxIxEyfVN1mKRujmMAA+p4znLZVJ9IzTEWy0u1wrVM6QfywnN8T53
 2jKslWDuduSn2jZXhOwBH5OUzS9T8QfnWJ+QInC6Kxof8r/im59OCbvcT
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AP7bGgpe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/5] ixgbe: Add support
 for E610 device capabilities detection
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
Cc: "Sokolowski, Jan" <jan.sokolowski@intel.com>, "Gomes,
 Vinicius" <vinicius.gomes@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>, "Wegrzyn,
 Stefan" <stefan.wegrzyn@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Simon Horman <horms@kernel.org>=20
>Sent: Monday, April 22, 2024 8:32 PM
>To: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
>Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Gomes, Vinic=
ius <vinicius.gomes@intel.com>; Wegrzyn, Stefan <stefan.wegrzyn@intel.com>;=
 Jagielski, Jedrzej <jedrzej.jagielski@intel.com>; Sokolowski, Jan <jan.sok=
olowski@intel.com>
>Subject: Re: [PATCH iwl-next v2 2/5] ixgbe: Add support for E610 device ca=
pabilities detection
>
>On Mon, Apr 22, 2024 at 10:41:47AM +0000, Kwapulinski, Piotr wrote:
>> >-----Original Message-----
>> >From: Simon Horman <horms@kernel.org>
>> >Sent: Saturday, April 20, 2024 8:18 PM
>> >To: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
>> >Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Gomes,=20
>> >Vinicius <vinicius.gomes@intel.com>; Wegrzyn, Stefan=20
>> ><stefan.wegrzyn@intel.com>; Jagielski, Jedrzej=20
>> ><jedrzej.jagielski@intel.com>; Sokolowski, Jan=20
>> ><jan.sokolowski@intel.com>
>> >Subject: Re: [PATCH iwl-next v2 2/5] ixgbe: Add support for E610=20
>> >device capabilities detection
>> >
>> >On Mon, Apr 15, 2024 at 12:34:32PM +0200, Piotr Kwapulinski wrote:
>> >> Add low level support for E610 device capabilities detection. The=20
>> >> capabilities are discovered via the Admin Command Interface.=20
>> >> Discover the following capabilities:
>> >> - function caps: vmdq, dcb, rss, rx/tx qs, msix, nvm, orom, reset
>> >> - device caps: vsi, fdir, 1588
>> >> - phy caps
>> >>=20
>> >> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
>> >> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
>> >> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>> >> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>> >> Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
>> >> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
>> >
>> >Hi Pitor,
>> >
>> >A few minor nits from my side.
>> >No need to respin just because of these.
>> >
>> >> ---
>> >>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 517
>> >> ++++++++++++++++++  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |
>> >> 11 +
>> >>  2 files changed, 528 insertions(+)
>> >>=20
>> >> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>> >> b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>> >
>> >...
>> >
>> >> +/**
>> >> + * ixgbe_get_num_per_func - determine number of resources per PF
>> >> + * @hw: pointer to the HW structure
>> >> + * @max: value to be evenly split between each PF
>> >> + *
>> >> + * Determine the number of valid functions by going through the=20
>> >> +bitmap returned
>> >> + * from parsing capabilities and use this to calculate the number=20
>> >> +of resources
>> >> + * per PF based on the max value passed in.
>> >> + *
>> >> + * Return: the number of resources per PF or 0, if no PH are availab=
le.
>> >> + */
>> >> +static u32 ixgbe_get_num_per_func(struct ixgbe_hw *hw, u32 max) {
>> >> +	const u32 IXGBE_CAPS_VALID_FUNCS_M =3D 0xFF;
>> >
>> >nit: Maybe this could simply be a #define?
>> Hello,
>> will do
>>=20
>> >
>> >> +	u8 funcs =3D hweight8(hw->dev_caps.common_cap.valid_functions &
>> >> +			    IXGBE_CAPS_VALID_FUNCS_M);
>> >
>> >nit: Please consider using reverse xmas tree order - longest line to sh=
ortest -
>> >     for local variables in new Networking code
>> Will do
>>=20
>> >
>> >> +
>> >> +	return funcs ? (max / funcs) : 0; }
>> >
>> >...
>> >
>> >> +/**
>> >> + * ixgbe_aci_disable_rxen - disable RX
>> >> + * @hw: pointer to the HW struct
>> >> + *
>> >> + * Request a safe disable of Receive Enable using ACI command (0x000=
C).
>> >> + *
>> >> + * Return: the exit code of the operation.
>> >> + */
>> >> +int ixgbe_aci_disable_rxen(struct ixgbe_hw *hw) {
>> >> +	struct ixgbe_aci_cmd_disable_rxen *cmd;
>> >> +	struct ixgbe_aci_desc desc;
>> >> +
>> >> +	cmd =3D &desc.params.disable_rxen;
>> >> +
>> >> +	ixgbe_fill_dflt_direct_cmd_desc(&desc,=20
>> >> +ixgbe_aci_opc_disable_rxen);
>> >> +
>> >> +	cmd->lport_num =3D (u8)hw->bus.func;
>> >
>> >nit: This cast seems unnecessary.
>> >     AFAICT the type of hw->bus.func is u8.
>> Will do
>
>Thanks. FWIIW, I think I noticed a similar cast at least once more elsewhe=
re in the patchset
Will fix.
Thank you for review.

>
>>=20
>> >
>> >> +
>> >> +	return ixgbe_aci_send_cmd(hw, &desc, NULL, 0); }
>> >
>> >...
>> Thank you for review
>> Piotr=20
