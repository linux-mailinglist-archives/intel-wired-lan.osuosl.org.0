Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EACD7A1D0C8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Jan 2025 07:07:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 421488144D;
	Mon, 27 Jan 2025 06:07:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xwIc2sDJazwR; Mon, 27 Jan 2025 06:07:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C1F781454
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737958032;
	bh=3Wq0eId/w8FYxbHov1nwTbhXSlGqXwVwjRjQA8u824Q=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=T/oFQV0sVcOB+hYxpLYDArjsy3HCO6NgtU/5yPF/CKsJnsJ6x3fTQM1Ue3+g+ksNo
	 tfk+0mGOezoc7A3b0B8cp19f5H/ax2enIv6Ib7wGakB8tZl5Mznf1wR7rnxqpcE98T
	 hpORtbZpikoCdXTdvXMxcDg84QXeWyMcdLnehCcj0Fc1ZSB8v+0GC6lOOHH27ycg9b
	 Rt1E9F4zpnsvLuOCEZ5afjtFJTtuofemlsVOXY+m6E6imv2uco9MTR6xcmG/qwiTyN
	 +NPz3bMx3AhmLS6hQ1qlRiMjOS8+mmIgOTVQXXT8QYddxyw+h75AmZbwoCmP29BfbO
	 LjoZsXamaKOTQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1C1F781454;
	Mon, 27 Jan 2025 06:07:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id BC5E4AF7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2025 06:07:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3AC6680A6E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2025 06:07:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ANeN5jTuejTz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Jan 2025 06:07:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 745878144E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 745878144E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 745878144E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2025 06:07:04 +0000 (UTC)
X-CSE-ConnectionGUID: gqsdIDY0TginK92m2ec4ig==
X-CSE-MsgGUID: bfwF069zQauX4DYFc2c01w==
X-IronPort-AV: E=McAfee;i="6700,10204,11327"; a="38319547"
X-IronPort-AV: E=Sophos;i="6.13,237,1732608000"; d="scan'208";a="38319547"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2025 22:07:03 -0800
X-CSE-ConnectionGUID: Zf5X52JITGm+wHcEcTHFPw==
X-CSE-MsgGUID: 8n6dhJ+LSJqglDbXZ13ceg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,237,1732608000"; d="scan'208";a="139224927"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Jan 2025 22:07:04 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Sun, 26 Jan 2025 22:07:03 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Sun, 26 Jan 2025 22:07:03 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 26 Jan 2025 22:07:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=djhXFp63obdrg9nuN3EF7G2HFSlZ4+ZJSwYbpErpe0dpEUsW+DLH3nkayM9M0pT0ovTI7fwR7/x382lcYVrVd7s595QvMPZbmHEMGJLpjmOdkGKw1CvQqnQR4BCoXC7s7gTDA9HJjDro6wsmwzUuqMiKuluBQaxKIOxZpZhU89thEUWGrQThEryce/Um1DkM+7E1FCWRWcYM3kh+xoN8CkI+D1okIt9dLaSdLbkOIkxLzPF4V56eJwXqiWMmD0dezk+E2st2T/C+S/wKO0VWRfgaBdCQj2LtvH9CfisTNjKMVuvEtm2yMWbE/YqQ/DX/rXjDkTT1M+MfvDiMAgkxrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3Wq0eId/w8FYxbHov1nwTbhXSlGqXwVwjRjQA8u824Q=;
 b=vNzSH/izdS+FgSB0gepGomxY5fhw1x9FAr0h1NhIrt7f9hguUe6If09nt/w1IRNMzikyYEP94eZ7W61BWSDuUbG1pYmmZvVhKFtwzxnIPGPBNAt9S8oA6ENan1bLtY+uCDA8eoYn8ehI+TddInZj0COapaIJXMElKhHtYuxC1YflcJEVRw9JekO1t7tSQkodmWE2nG2a1aWDJ6fw2B5nY4RLv3yQYanI1DbLXA4tW369i45inYzZowwEMqMgPcbWJTMHhZsENzjT8GxDxj6Yo/3KmMP8y8eoQd2sSG5du067TPSoen9hfgmfqAbB2c/ht3Olvsi90rjIldDpS8I9YA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by DS7PR11MB6128.namprd11.prod.outlook.com (2603:10b6:8:9c::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8377.21; Mon, 27 Jan 2025 06:06:20 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2%4]) with mapi id 15.20.8377.009; Mon, 27 Jan 2025
 06:06:20 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: Tarun K Singh <tarun.k.singh@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH iwl-net v1 0/4] fix locking issue
Thread-Index: AQHbL8ybR6VjMtQ/m0in9oRrm5+t3bMnU+GA
Date: Mon, 27 Jan 2025 06:06:20 +0000
Message-ID: <MW4PR11MB5911F6BAECF5DAC79199B362BAEC2@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20241105184859.741473-1-tarun.k.singh@intel.com>
In-Reply-To: <20241105184859.741473-1-tarun.k.singh@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|DS7PR11MB6128:EE_
x-ms-office365-filtering-correlation-id: 54b3fc22-1003-4255-6cb1-08dd3e98b851
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?5kG+XADAOwT8qY7F+oTp8ty9sGDYg4irbQmtJoTAP96Xb4PvBpSSrUYfuqr4?=
 =?us-ascii?Q?qPzfZeNOEnpUcJLl6n/cVNQERmmTqfTxr9YGoZEccDafDZMeFLnb8y6xvQeS?=
 =?us-ascii?Q?Dn65VlxnamaMaLGKmj0s1kfZxG7DNnBKifJEQ+O9Grqnm6CjMOlB27McnE6t?=
 =?us-ascii?Q?4grHR+WigWWK20iVjqEtrT/ahiuJcccsicRgrcdhg69UB6nYbUoo/M0LI+i/?=
 =?us-ascii?Q?cZpBfLv1qc2vhdyLSq7rnvPhgiRhnICtFi1oKfgYIWqRsGSrQA7AYyNLMhJS?=
 =?us-ascii?Q?ly7nb0wkbMzPz3ICYAQEmW/MOeUUXwEGMmlZohqmMfl4BPTDDArVitka4yHO?=
 =?us-ascii?Q?ROJ+BE9QbcT+pyZnOH85ilga2IxX5ZV8MIk8wWPaCqr8H92Uk3WbxRnWWOG2?=
 =?us-ascii?Q?DcM+q7ojSCStFSPKc8TwAP3JwqdpeQyxVk1KfqBnMY4aTwMGcvc2BVyAH7EA?=
 =?us-ascii?Q?PpBekFEOlYOlx3U4Huxc5huYqHLO0551cvlNjYoyA38+Jj042fH9GLb7GlFN?=
 =?us-ascii?Q?JgUEDBdzg4TfWQuUSsdpax4Zc839MNWtHzXGt87UIhOplzqspJk7YqLbNG1T?=
 =?us-ascii?Q?sDtCSiHfRE6/Fq2jge4wNnYO8IpbX5mtmbHRh54ofbOmHpRk7L+q6gTOsUvC?=
 =?us-ascii?Q?TCwc44xw68eUE3xzwhGfGEl2nLhTP2oKReEd4qwdprU/OnFtS7ptglNDsTL7?=
 =?us-ascii?Q?GYumMjW7z4eAjh8bK4a9Xkv3UqvpNn9Q7/ND/7Le1zHLQnkiDCdTYTE9TPUc?=
 =?us-ascii?Q?E/TIaivcZIaxSrP7D2lowGgxJT63PoFkNitku/Qm2gCMC1nzgJzIxGrr7JHi?=
 =?us-ascii?Q?024Bj7f44Atwuni4Fx4q/5tMS+YVmfVgZJQJfV7bfPZxjIx13j24DWQw/wMM?=
 =?us-ascii?Q?6Hsc1WPs2L78T2VAbRJDaQmavA0G09Hsujuj+bIo7AH8cMZAL4Eg8ZzZdxUb?=
 =?us-ascii?Q?9+s2E70VwT7WAAYu9ClbYRGsQL4M4c2rAEzxZ9nMd9mrcFY7pdJfuxrz/vit?=
 =?us-ascii?Q?b7n9OzvE1AylOeHJIIFk8Q2PVNRdT35EFT++QFddA2g/ipde5UiPMWehIqqs?=
 =?us-ascii?Q?TAP/opPJXPxR6ZadDs/vjpuz1hwSTdHg0gayfTZKjSUY+81ocNeJXwXsOpxp?=
 =?us-ascii?Q?t+jqrMLCQvHHrXE8aYYL54aMvSDifOod9lScNQ9BAosQ9FrShBjpHAtzS2UA?=
 =?us-ascii?Q?IvqGSpAm8+djXzlebPKvzFHs4FhthYqdvx81harL0Ygdv0iPukYkcblwjQrw?=
 =?us-ascii?Q?cUz8Opge2eTtpjBIpTHLfHyqJjSEJ/j5xo1w54MMDVnWjP1XZDMZiJxZHg+Y?=
 =?us-ascii?Q?suGvLqTmve32DEjU2R1Uaa+r7Gf6ceDes6r73lGrdp4g7RDrsCIKLj07WNYe?=
 =?us-ascii?Q?46zQ8I+Ab3skOZFAt1sxqP6vXTGd72AL4xZn7PKN5qyj6UxZe8lMUaVt3lOj?=
 =?us-ascii?Q?69Jpt+oLSPjCghtSTmap3UO9DEWwfvdz?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PXx2G88nysyCo2IepU28T92MPHbzq2kqNJS2Ts/leM4dNTx9z35jivT0yPIL?=
 =?us-ascii?Q?QyY2kxi4mMxVpTFosaePRXvwuhevbQXjE4gAl++bBldtNMLV/Ktryn0tQDDs?=
 =?us-ascii?Q?Zd4+BTw3T/NSfy2yhxd5q1xeGNjqTIGdb375iHYwNicseq3JoDA4VWNa96tb?=
 =?us-ascii?Q?PvyLPsPPxiZKFeOO8jPry+P34G8ID0pD7IwI4L5mPspji5zKkFVRJRdQ/HxR?=
 =?us-ascii?Q?8giuQNkiCptsHAJ8kRLPMUQVvC29rSPslVbbyopJb2zqyCXna5Ec678TLpe5?=
 =?us-ascii?Q?eI020QYFa8iYJSjjZurXkv3VqrggofifpGXTSytn+lfeFQD22Qo1WirZLrMg?=
 =?us-ascii?Q?83q5Of6+mYG1SLM5Md/31vB+CGnHS4ywP9omnbKrOgpZ0HoBMpe3y4HHQ3Wb?=
 =?us-ascii?Q?tySDno9kEQRLOTW9i+lAj4thmT7Mx7L2lwtqt2+tzBFsTt9PuRoEXL+xBU0Y?=
 =?us-ascii?Q?S2Yk7bP+sLb9otSPqDDvibqDZRAgWPtbTjosSAxDb7VKmEmGW10bzh7fy46k?=
 =?us-ascii?Q?roniPMWLGUBrei8QpPYSZAY+5OV52PVtRwwQ4rG07sX7STJv7tZoT5O2ihNi?=
 =?us-ascii?Q?jfGYLEaIMbTAAWi3AigaN6KOCdFzOq3cW+TB2sWsYJwU5SKMkJp5qxTKAQqh?=
 =?us-ascii?Q?gU71eT9cmbC13Sv/DyOTqbprAPDjWGUEyjwvTzlqiPNur6aJuU7/WoRZQ/ol?=
 =?us-ascii?Q?VrlcMgFcToo71pITH37rRF/7MbG5YZmfQtv3yptPG51tbzL5e74FOWnKRqV3?=
 =?us-ascii?Q?SbGurWc43W49ZImpsRUEyKOZ4dopVZ1DXg9XDMvCuGuXPJ5taAkk4Fciz+l+?=
 =?us-ascii?Q?ZCr7Jk15tD9N3xBDp/ovX+vJdkvr8LKhhBSGWRVQQb6iw2FOzSAQnuv+VKie?=
 =?us-ascii?Q?XRydpfdgsVh6kztGnox9T17TvgYc0AODeOpjBhvxDjyYKrF/YbKo4lhKkOFz?=
 =?us-ascii?Q?UsZmq9wRsyOxSHQbSKDAw05pMaU28MRPM4+kGFvSf538uBVokxZRvPCzwYP5?=
 =?us-ascii?Q?T6Rv5MyRrGNPgoLmD1HdfB0vHLL4cxL4CoNpDntfP4mMJCeWZsOWVvaw9CLO?=
 =?us-ascii?Q?G5EP3fy8yxekjnetx/obzOiAi3mgRMcfwLAuDKM4qcrEPQRDKfyN/kHdpzz+?=
 =?us-ascii?Q?NCimF1b/X0L9Qj+5nQexIs4wOwFBbWHZX36bwc3F7ELrAPZ6eqWCBLgp/E02?=
 =?us-ascii?Q?2J/ad+I7imK/aZk/fCxcpVXInj19MOJtuqCjSFXN3AMbF/lQSRn3RpsAyIsZ?=
 =?us-ascii?Q?ILDJwyJTmDFF8DFRXYmX5iLi60Ooy7VqePcf6gfRcIFEbDa+luZqVlDJf4SY?=
 =?us-ascii?Q?UHXioo5BUn2w70hp6zUjZTkXbPqRvjQqk4puJYW2mBqiD4hb8cZsrTinxAJF?=
 =?us-ascii?Q?sK84Ic/ivuA46z78WdrSfEZdktFgFg00Fh1JT3upICbmHJzfFpcAjTh0pxHg?=
 =?us-ascii?Q?jaLKdULA4GHOBHNgDLQihugzHJEH84mYr4EydqIV6ktUHN2Id19JO6edsa0w?=
 =?us-ascii?Q?PO1LZe/waBFvzrNUgSapqSHSORF04XddhGYbD4nl77SSXF5pSD1eH+NQa7q+?=
 =?us-ascii?Q?1gD7RDSAZLtKtxHg+O6Ue4a9owfRBymJVVbKW7ar?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54b3fc22-1003-4255-6cb1-08dd3e98b851
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2025 06:06:20.4261 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NaapDhoaRWnZle7Iuf8dMkTl1DMBMBaFX97F8k8J8iu9YzuKhZssyuhFCK+S/HK4k8U0sV7kN5E4FFXVp1BBttX8y++Q0BTsSi0OjrV4z1k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6128
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737958024; x=1769494024;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=n5GTvwzPcBU+UhEMRto/Z/SNcQsbVP1ff4WT50RFtUU=;
 b=YHEX42iYp429zcio67Jq0RU3sXPoqqgeWZxeTwjy3VmO3fJ6vS6homj0
 bkMdjdFCawk1GVlhhVpwF7MDNAuo079+dzHTK8OnTJA0MVSLEtQ8EmvBn
 74yqAoKhnk/LvABTjRMy+4L6DH7f5k78Bj7GJzCc6sl//tYIBpWM480DW
 V8AEX103U0q4DoBLesJJXfHOOrwUiKokW9Mud8/eS9uNg8iwlL+64tJfw
 nXXBjL1AEoWO65v//7YK4/jf1uugKLgaWbqCotbt6XoOkEnvPYRYIxpsn
 iMkD214EBoMTrOYZhVWSfN1ZCfLdyLgT5TmRpBzUxxybnn9rTC/fc4xNR
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YHEX42iY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 0/4] fix locking issue
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
> From: Tarun K Singh <tarun.k.singh@intel.com>
> Sent: Tuesday, November 5, 2024 10:49 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [PATCH iwl-net v1 0/4] fix locking issue
>=20
> This series fix deadlock issues in the driver. The first patch changes
> argument of function 'idpf_vport_ctrl_lock' to adapter. The second patch
> renames 'vport_ctrl_lock' to 'vport_cfg_lock'. The first 2 patches make t=
he
> third patch easier to review. The third patch fixes the locking issue,
> and the fourth patch prevents lockdep from complaining.
>=20
> Ahmed Zaki (1):
>   idpf: add lock class key
>=20
> Tarun K Singh (3):
>   idpf: Change function argument
>   idpf: rename vport_ctrl_lock
>   idpf: Add init, reinit, and deinit control lock
>=20
>  drivers/net/ethernet/intel/idpf/idpf.h        | 49 ++++++++----
>  .../net/ethernet/intel/idpf/idpf_ethtool.c    | 59 +++++++-------
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    | 80 +++++++++++++------
>  drivers/net/ethernet/intel/idpf/idpf_main.c   | 39 ++++++---
>  4 files changed, 149 insertions(+), 78 deletions(-)
>=20
> --
> 2.46.0
>=20

After additional testing on this [series|patch] we discovered an issue afte=
r doing ifdown while device is in a reset, which can result in a <null poin=
ter dereference(?)>.=20

kernel: idpf 0000:af:00.0: resetting
kernel: idpf 0000:af:00.0: reset done
kernel: idpf 0000:af:00.0: HW reset detected
kernel: idpf 0000:af:00.0: Device HW Reset initiated
kernel: BUG: kernel NULL pointer dereference, address: 00000000000001a0
kernel: #PF: supervisor write access in kernel mode
kernel: #PF: error_code(0x0002) - not-present page
kernel: PGD 0 P4D 0
kernel: Oops: Oops: 0002 [#1] PREEMPT SMP NOPTI
kernel: CPU: 77 UID: 0 PID: 303278 Comm: ip Not tainted 6.13.0-rc7-p18.g587=
9fe0+ #1
kernel: Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C620.86=
B.02.01.0015.032120220358 03/21/2022
kernel: RIP: 0010:mutex_lock+0x1c/0x30
kernel: Code: 90 90 90 90 90 90 90 90 90 90 90 90 90 90 f3 0f 1e fa 0f 1f 4=
4 00 00 55 48 89 fd e8 ce e7 ff ff 65 48 8b 15 c6 7b 20 6f 31 c0 <f0> 48 0f=
 b1 55 00 75 06 5d c3 cc cc cc cc 48 89 ef 5d eb b0 90 90
kernel: RSP: 0018:ffffb73e43907768 EFLAGS: 00010246
kernel: RAX: 0000000000000000 RBX: ffff8df786a37000 RCX: 0000000000000000
kernel: RDX: ffff8de876922f80 RSI: 00000000fffffe00 RDI: 00000000000001a0
kernel: RBP: 00000000000001a0 R08: ffffb73e439076f8 R09: 0000000000000000
kernel: R10: ffff8de823b5e000 R11: 0000000000000100 R12: 0000000000000000
kernel: R13: ffff8df786a37188 R14: 0000000000000001 R15: 0000000000000001
kernel: FS:  00007fe6f6a30740(0000) GS:ffff8df73fe80000(0000) knlGS:0000000=
000000000
kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
kernel: CR2: 00000000000001a0 CR3: 000000011bb58006 CR4: 00000000007726f0
kernel: DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
kernel: DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
kernel: PKRU: 55555554
kernel: Call Trace:
kernel:  <TASK>
kernel:  ? __die+0x24/0x70
kernel:  ? page_fault_oops+0x158/0x4f0
kernel:  ? exc_page_fault+0x77/0x190
kernel:  ? asm_exc_page_fault+0x26/0x30
kernel:  ? mutex_lock+0x1c/0x30
kernel:  ? mutex_lock+0x12/0x30
kernel:  idpf_stop+0x39/0x60 [idpf]
kernel:  __dev_close_many+0xa9/0x150
kernel:  __dev_change_flags+0x114/0x250
kernel:  dev_change_flags+0x25/0x60
kernel:  do_setlink.constprop.0+0x215/0x1030
kernel:  ? avc_has_perm_noaudit+0x6b/0xf0
kernel:  ? cred_has_capability.isra.0+0x78/0x120
kernel:  ? security_capable+0x58/0x90
kernel:  rtnl_newlink+0x7c2/0xb90
kernel:  ? avc_has_perm_noaudit+0x6b/0xf0
kernel:  ? cred_has_capability.isra.0+0x78/0x120
kernel:  ? rtnl_lock_killable+0x3/0x20
kernel:  ? netdev_run_todo+0x6f/0x590
kernel:  ? __pfx_rtnl_newlink+0x10/0x10
kernel:  rtnetlink_rcv_msg+0x361/0x410
kernel:  ? __pfx_rtnetlink_rcv_msg+0x10/0x10
kernel:  netlink_rcv_skb+0x58/0x110
kernel:  netlink_unicast+0x247/0x370
kernel:  netlink_sendmsg+0x1fa/0x440
kernel:  ____sys_sendmsg+0x3ac/0x3e0
kernel:  ? import_iovec+0x1a/0x20
kernel:  ? copy_msghdr_from_user+0x6d/0xa0
kernel:  ___sys_sendmsg+0x88/0xd0
kernel:  ? set_ptes.constprop.0+0x28/0x90
kernel:  ? __memcg_slab_free_hook+0xd9/0x120
kernel:  __sys_sendmsg+0x6c/0xc0
kernel:  do_syscall_64+0x64/0x170
kernel:  entry_SYSCALL_64_after_hwframe+0x76/0x7e
kernel: RIP: 0033:0x7fe6f6b5cc94
kernel: Code: 15 a1 41 0c 00 f7 d8 64 89 02 48 c7 c0 ff ff ff ff eb b7 0f 1=
f 00 f3 0f 1e fa 80 3d 6d c9 0c 00 00 74 13 b8 2e 00 00 00 0f 05 <48> 3d 00=
 f0 ff ff 77 54 c3 0f 1f 00 48 83 ec 28 89 54 24 1c 48 89
kernel: RSP: 002b:00007ffe89733418 EFLAGS: 00000202 ORIG_RAX: 0000000000000=
02e
kernel: RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 00007fe6f6b5cc94
kernel: RDX: 0000000000000000 RSI: 00007ffe89733480 RDI: 0000000000000003
kernel: RBP: 0000000000000003 R08: 0000000067941450 R09: 00005560018342a0
kernel: R10: 00007fe6f6c21ce0 R11: 0000000000000202 R12: 0000000067941451
kernel: R13: 0000555fd0b8d040 R14: 0000000000000001 R15: 0000000000000000
kernel:  </TASK>
kernel: Modules linked in: kheaders idpf libeth cmac nls_utf8 cifs cifs_arc=
4 nls_ucs2_utils cifs_md4 dns_resolver netfs xt_conntrack nft_chain_nat xt_=
MASQUERADE nf_nat nf_conntrack_netlink nf_conntrack nf_defrag_ipv6 nf_defra=
g_ipv4 xt_addrtype nft_compat nf_tables nfnetlink br_netfilter bridge stp l=
lc rpcrdma intel_rapl_msr intel_rapl_common skx_edac skx_edac_common nfit r=
fkill libnvdimm overlay x86_pkg_temp_thermal intel_powerclamp coretemp kvm_=
intel kvm rapl intel_cstate iTCO_wdt ipmi_ssif iTCO_vendor_support vfat fat=
 acpi_power_meter i2c_i801 intel_uncore joydev ipmi_si acpi_ipmi lpc_ich pc=
spkr i2c_smbus ipmi_devintf ioatdma ipmi_msghandler mei_me acpi_pad mei int=
el_pch_thermal dca nfsd auth_rpcgss nfs_acl lockd grace sunrpc zram ast drm=
_client_lib crct10dif_pclmul i2c_algo_bit crc32_pclmul drm_shmem_helper drm=
_kms_helper ghash_clmulni_intel nvme sha512_ssse3 i40e sha256_ssse3 drm nvm=
e_core sha1_ssse3 libie wmi sctp libcrc32c crc32c_intel ip6_udp_tunnel udp_=
tunnel fuse
kernel: CR2: 00000000000001a0
kernel: ---[ end trace 0000000000000000 ]---


Thank You=20
Krishneil Singh


