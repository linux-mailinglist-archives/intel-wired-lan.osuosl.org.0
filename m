Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 724B47FE89F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Nov 2023 06:23:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E76661B29;
	Thu, 30 Nov 2023 05:23:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E76661B29
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701321809;
	bh=9ATpG6peTdpXekDdBUfB8xIGznUEg2N8mR1rUHgYEQc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tB4yd3N7MGa/fH2uLkzJPeLMi1z0xl8F8BcGr8t10ioVGRAJ4yjVKy5Ehk4fEX5ad
	 4Y+GiQps1uNu9O16DxQcmUTv2Cv1O34r9j+hNlBzTK2Ybko/k5hmYjSOxf1fIwQXBe
	 +hD5WVZwVzuowKEwtcVEj4XPO4MEtYvKdGkNGFwijrMjJNHldqzIH5H0gaI2VzQbCP
	 4640tqRiKND760Majw31uLuP/YybF1v3DGqwf/vP61ilx73xhp4qrSWghSWwIjTGjv
	 YpTzERt9kMH2wxoPrGwgOITLGk+jHRhu5HYtZ/Ph/akqQtJuffv6WP9BkpT7dGztzA
	 ZmJfjnvjzLfAQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5K3F5fGuiZSH; Thu, 30 Nov 2023 05:23:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5DC26006A;
	Thu, 30 Nov 2023 05:23:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E5DC26006A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9BCDA1BF84C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 05:23:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6B36B40103
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 05:23:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B36B40103
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CXd4NtqyM3ti for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Nov 2023 05:23:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D0D8E400D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 05:23:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D0D8E400D6
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="390429508"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="390429508"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 21:23:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="772936757"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="772936757"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2023 21:23:13 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 29 Nov 2023 21:23:13 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 29 Nov 2023 21:23:13 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 29 Nov 2023 21:23:13 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 29 Nov 2023 21:23:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DHwwb7Ca/FD3mUbDhfUq38fPcVscTypbQfyWEu58ODf7Bo1cHdCcnCfemEWi+ulaQKE7xyOvL5U2D9ymuFXsWzOrZZRUeromo7P/RccNA61MCeAAIA16XjA47jKpgqs0IbM8hXaaGIP+V3gU84VRfW9FulwglP3UbQ1ry3XtQkzdfPzjoC8MnHdKzdOeg2/NszLom8wRwJ571ATMvXamhZvUnUBY1PTEktCPsahx9LnaQXmR6yeeWc2DtRFvQ+Zfe8TIUAkOiXdg5939eqRkPSpa66aOywgdPoQAz5rc7pgEpJUny953McVjgDD6kuurk2oDlYBy0Y1Z1a2ftaUcdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DBdDvVDqITGxtg7rgf4YHLSJoIcFljumjxMkcPJAdTQ=;
 b=a2k/lGGEEykesv9zFxnraMmJXhP2W467dYqmN0u3TSDY3XHAsYBTT5d51nG8F5LeurodX2Gl94CyomyX1GTGpyMPRrw56BzoEYcD+USJadsLwL0eIyNURUlowd65jZQ2/CaDZOW4PuquMnTOKh4feUVTXwcKz9vL1lWjuTPrHn0tByoK9B9nB30OYTpWCV+DWPffNj0b/S4wTlyvyEPhoAPidGfnW2oKgUgcAzwdudAiqPCAm2OF1MUIwVuzPrvLHuahZOXR+pkXKEK+ynn1GBOsMXnRrW9c97HadsAwOWagvajVdUQe3hfZe42WoiKR1LRT8ww9OhcuReOiwYQP9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by DS7PR11MB6198.namprd11.prod.outlook.com (2603:10b6:8:9a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.22; Thu, 30 Nov
 2023 05:23:09 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7046.023; Thu, 30 Nov 2023
 05:23:09 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: ivecera <ivecera@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v5 3/5] i40e: Add helpers to find VSI
 and VEB by SEID and use them
Thread-Index: AQHaHueZIXDan26oM0GJQd1ShUCnwLCSWAEw
Date: Thu, 30 Nov 2023 05:23:09 +0000
Message-ID: <BL0PR11MB3122416C6364DCDA0BAD8E06BD82A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231124150343.81520-1-ivecera@redhat.com>
 <20231124150343.81520-4-ivecera@redhat.com>
In-Reply-To: <20231124150343.81520-4-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|DS7PR11MB6198:EE_
x-ms-office365-filtering-correlation-id: c1d9e33b-11af-4849-934a-08dbf1647101
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: V4o4peMbDrNCJoNpDHXChCTsuFwfqEIZlCD+NWg0Yof5QS+YTMGoQ6lBd+dfUA6OOPyx1piz/GToV9mTHrgCOIUfBzYt5li0JjpyhSawVGcEQruvD7YrvGrhyTAPNRjKTPgDyarAbr0Lk6iMGSMZ7Yv4phJbuMO3+VA4FfOViRXIdltmsOYtKQCR1z2AAgeohYCMOvFOx2Bf4uDJ4Ty82TMn2h559QV2DddCw7LWrnF0elisCjeRStuvB2LXx9o6tcgqLvB6pNEABTX/eXitdPIOEikjXihetElo7ZVRRDpoSV8+vQBkKtfMqoaJIq523d5Gk4lUz36l96C4SJ59kvICmrrI51+VsESQOQsfsOc8MYyvPbgPmYcVTxtUrZX4Ew8wS/9j5edQ+2gK8EFKIaKdgPzNeZsREMrvbjHrpYr0nNpaiYEVvWJTgb8EqnEZZpE2GOx+nxtW/jL3VLJZ2kALlhILEqZA2VNWTa0Q3nDzYDGV+iK9GOmC3Rq5ad4gup8HdqjvSQSlJlqthhQLHXmP+aB2vvlas/+4ARVy4IUWTHNiy230o9cpNqdOeWfb95ADX7SB4jW0kF7X9majTsUl2YqWvwVEIUktCChGU9hxv4rVMOiNEiGwRK6vXq10bNoSkhgKNGYTYacQX9QfS7Groa4o/LJ+soKSJLOF6K5Tar/p0pRLeDZEC34fbHno
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(39860400002)(396003)(366004)(376002)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(478600001)(71200400001)(9686003)(26005)(53546011)(2906002)(5660300002)(41300700001)(83380400001)(7696005)(110136005)(8676002)(8936002)(66946007)(52536014)(66446008)(66476007)(66556008)(6506007)(76116006)(54906003)(316002)(64756008)(4326008)(82960400001)(122000001)(86362001)(33656002)(38100700002)(202311291699003)(38070700009)(55016003)(37363002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ldkc+wL3gu7pJjSHDQDv/eJtWVXPg4iSdeS8FAtcD5/hO+NUvlVGB8eae6gW?=
 =?us-ascii?Q?bro6YnieIuiUSOiV91g/zTt0ElGmdbc/ByplmWAQ0KrQZIOJ4BGdhtiFTT3X?=
 =?us-ascii?Q?pOSHqvC/MtuAb/gO8vP9mpcjs+gsIpG6cgMGEYyXDH/6tB9kwar7mai5+Bvb?=
 =?us-ascii?Q?ZYawgKBAyMrqjr6/3aeejL4wr5OfRJhOWNnN6xSMh+421/C2XCFr0eJqOLM0?=
 =?us-ascii?Q?7TNXlvDnGb+VVuJCd53EynkAOfkVVAqnbyF0W2ky85wSYjGK36pST30cnlVH?=
 =?us-ascii?Q?gS0q/Kv2NN5we/yD1Eytr9K7RkjZ09w0rd4f0wV4OeHQv3YT6DOjsReTXihF?=
 =?us-ascii?Q?9k80mWnUM9del5GJf5dhzElxxqHjumYDEzenRtaNEKrwA9YMuEhoYr6KSXOg?=
 =?us-ascii?Q?BKgqSEHdft05s4sXb6/Z/AItdxQdQ2Fkea722HOryl0He15u9K4ufo3wM3qF?=
 =?us-ascii?Q?iGxpVK2A/VFlt4gFUOoOrDVnRVGzdxYaUBL7b3V05yW6MJ4zUc+ZkN1q8sdA?=
 =?us-ascii?Q?XYuEFquIXTBaYzjKX2LNKRqsBAw161ml15Mu2ED2CE11X7hPLOt5STMZDtCJ?=
 =?us-ascii?Q?0fbnJ624hfGKB+xmk/pIxx+HdF0Jtc9bFa/XRYCpMNsZ12bNpHLM9SLEEzOG?=
 =?us-ascii?Q?JjSKDsxEoU/jWkMKzuwveyJPWu1C03vXha1dvM+OeLhPix3fGKblEJtnEG9y?=
 =?us-ascii?Q?fd1flq8YldLWbO3e3sHUvu2fqMkP2vvUrsZYTYI8PHREXNPTkjYMjUd4tY3S?=
 =?us-ascii?Q?5woJvGK/didgJqQBjFlAIFwcVC+QZSN+oiiA+tfprbhQ2fSPMM9f5cQoLPnc?=
 =?us-ascii?Q?u3IwTIEPQCExEi8TfXupCnTYTDPAxXiSbcE5vXnG7GNDjIA6wNO3/V7flUIq?=
 =?us-ascii?Q?yeae1X6lCFqRD/MpxTu1TjTfvhYX5vzD+dh/0kjclHd/fl/ipthvVykInRt8?=
 =?us-ascii?Q?m6iJyboq1o+YzNEQRtrcrzpBZjQviTz9o7Bm5biV5jKTuLx460Kw/5L8yV7I?=
 =?us-ascii?Q?g4HJe3H2um9uoY2zhwAmUXNQ1NjfrHigKlaKMuYnSbLnO9bLBEhZy2sPa3N5?=
 =?us-ascii?Q?Y0qyhxFBn/CSPviknU99X2c9Jnb1cOYWU8y1cew3R/MuiTQm512Q8B67vSV1?=
 =?us-ascii?Q?vphQQy8A6BrBU+eeDuN0SR9/aLpJTWCuhWi4x1IoRvaQcXzAXUXl8l76zSMq?=
 =?us-ascii?Q?+7DGqz8yYlMSXVRwUS5DR3iJD2ybWpwDR9t/YsNlqcDzx2l3Gl7ZZaQsrKSS?=
 =?us-ascii?Q?9BitljDjnziQqPUQZhHS9et8AGF8EvXByYfPpR5J4LB/NHR3L2T9caJhvGJm?=
 =?us-ascii?Q?i/WAVJCspvYpISPwxortX8SoY5sGOCcn5Hc53qHgxLOwIyPE5GtoRK7g8voo?=
 =?us-ascii?Q?OVHRbEnoqBOzGkssynUeDJ1aC1V9lc9Q+cWL+RIPHcC7uvL1jbC+QyFFW1zb?=
 =?us-ascii?Q?JJBYxF6ftutV+6vkm6FmubBz1NP/31JDkANKgl13eKaFgCRmzGGGRIBfogKm?=
 =?us-ascii?Q?641JPF4Ayf5pPOC8sgaJN4UlI6/xVhpTDkLyRmRu1a5xTgtdW49F/FUuk0gM?=
 =?us-ascii?Q?LX8YCmjRUf0kfIkunDCgZkF3zh1/a2kx4UbxD+aMIpFOKqe3su5RFFwDV0UF?=
 =?us-ascii?Q?WQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1d9e33b-11af-4849-934a-08dbf1647101
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2023 05:23:09.7807 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P/BmtKFXndDthRNRQBj8X/ONt4rHwRfRAy/ycehxIQ+8IjF3TFVYYAx7Ncx7RNev9XuJdvgGKMaCrqdUNnnc0er4Nt6txOPz33WmyjmVpcjxL/me8xa0ExE5/5vqpZ/I
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6198
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701321800; x=1732857800;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PUZ00spTewTS5lawZpzKaCBvMwTxQBXn9Ql51ayyJLo=;
 b=L0jjP4dMaaNLUu6YCL0MTOHMrGSSqVOGMFM6xWsxJV3qS2mAN710iDSs
 W8+l7AeovedlTaijfYosrgds/U33xhKABFPz65zcfbivh56wlBOdYq9M5
 0VYMCmhw8Lb2FHxLQsev5aFUzq2n6RGr/lfTs0B5O1hgbRSngohUXqRpx
 eUaoXgOiMBiwXr969oKfmn0jeamCYBt0yYM4KZbSMOqOTJl5sfgoT9qXS
 hgca7H0ArmKGYqZEO4mL75vj+Pi/6zybTs33hw8QNCTYvaQfLHIaQhjvj
 LaSyBK/3wbYyAWlXgTQdGjwgvw/U1AvF22XW3OUY6pY7kG3iVPtf4Ih7H
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L0jjP4dM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 3/5] i40e: Add helpers to find VSI
 and VEB by SEID and use them
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ivan Vecera
> Sent: Friday, November 24, 2023 8:34 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; netdev@vger.kernel.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>; linux-kernel@vger.kernel.org; Eric Dumazet <edumazet@google.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Simon Horman <horms@kernel.org>; Keller, Jacob E <jacob.e.keller@intel.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S . Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH v5 3/5] i40e: Add helpers to find VSI and VEB by SEID and use them
>
> Add two helpers i40e_(veb|vsi)_get_by_seid() to find corresponding
> VEB or VSI by their SEID value and use these helpers to replace
> existing open-coded loops.
>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        | 36 +++++++++
>  .../net/ethernet/intel/i40e/i40e_debugfs.c    | 38 ++-------
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 80 +++++++------------
>  3 files changed, 68 insertions(+), 86 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
