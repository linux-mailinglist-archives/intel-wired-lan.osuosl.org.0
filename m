Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4420583BD0D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jan 2024 10:18:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CDF9342F5B;
	Thu, 25 Jan 2024 09:18:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CDF9342F5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706174287;
	bh=3nnljNm1NenhRW9DSffdWUPALzZv6Lzvvj1Nx3RdmBc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9iw2n1q7yFGpVpfdvQuT9XlbOEwl/xzQl7GpNoyIT6TenMtcnETlIZuO9Rr0ocrxi
	 zqaydxeSANCWJ4Jd0VVDBw+egNUCutKKF0/An17U1SZQlYaYYkfcL9Nfk0WoQTnt0q
	 7631e138hMPjH8TT6BEZ5VXj5rKQfUxrsmNgweMht/mLfzJa4/xz7pUqTKrBn1cAzf
	 Gq4/zebT7SiUgf2HbaMIov1c/mQqlWTy9+v/HmGXWgQlef6JXTc6MaXYI7rJSK8FbU
	 l9m99esgZ3NEfSdlrO0YBD9M++ddhp6dN8QjqsWJmUValQK3hB63RZECP08H3EE0av
	 UQ6fUcaQUI7cQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wkG_GFpC6b0q; Thu, 25 Jan 2024 09:18:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9515E4012B;
	Thu, 25 Jan 2024 09:18:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9515E4012B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 605E81BF301
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 09:18:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 40CC0613D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 09:18:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 40CC0613D6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G9INuAHHbfjp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jan 2024 09:18:00 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 528A9611C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 09:18:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 528A9611C0
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="15460376"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="15460376"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2024 01:18:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="2181972"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Jan 2024 01:17:59 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 25 Jan 2024 01:17:49 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 25 Jan 2024 01:17:49 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 25 Jan 2024 01:17:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EoHT6Icn/m/Oc0Gj8DAPaGTwId5ObL3OXRozMM35wJp2EAmSf6tB5Hk+jiJIV/o/+YRtxeGSKavWlnJlNbkhSxQMshfECR8q+45Xh7h21E6b2TGTTMaa+wjeTOM72zgYxiUuoz9mjAnhiLwNJ8MozqKmHWlwL8WkX1We0WOv+qJ1yyAu39nsa2Hr3by+RDNq8HUE4/17FOAxRrQsjJ69uOjv8gZ5sVUynBXc5BWnYjipKV+EyH+gHGSLHsdtZGsCjR1+ZHc15ndV4jLoJNeSl5SCMEl2+X6P1HkaGNr8Eyszr36XMM5A/j/Qm4S28QBNX+8sZ+yLBxP/6nOWqnucZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3nnljNm1NenhRW9DSffdWUPALzZv6Lzvvj1Nx3RdmBc=;
 b=hzLDz/cgrcIfZgQRpUkHwMX4YIUl3hL1XU+ejKrqLmxSDZGWgW7jZam8KzJzL5pZpWHFBwy8ip/WD01rwCO6S2r2sNxaxRhy4RYah6vfQBucmTDmcFrIu5tbMoqAx9yi0/3fFBZovm2I3ISAeXIaOWvT927ap1lmoxCLZiGV9KCqS37ZyhVG5gsw76p1FosFr8Ts4XaY2o0xl07Mww5HceUsO+TnFwbWU5LXl/pj2cBgOsbLMyyvtJb03MmAwl5iw91uTvT703OxM9JiGfZPwVYxTsAJz9VF+tgNaQ9fCVIzZ6B+CbXpAiYsWnme7vTq4TkiCWHOboNlp+Q3AmW/RQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DS0PR11MB7878.namprd11.prod.outlook.com (2603:10b6:8:f6::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.22; Thu, 25 Jan
 2024 09:17:27 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda%3]) with mapi id 15.20.7202.035; Thu, 25 Jan 2024
 09:17:27 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v7 iwl-next 2/7] ice: pass reset type
 to PTP reset functions
Thread-Index: AQHaTepAHuSFgcSnzUeeV1HyKMvBI7DqQlZQ
Date: Thu, 25 Jan 2024 09:17:27 +0000
Message-ID: <CYYPR11MB8429E897A5E9880EFA8A383BBD7A2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240123105131.2842935-1-karol.kolacinski@intel.com>
 <20240123105131.2842935-3-karol.kolacinski@intel.com>
In-Reply-To: <20240123105131.2842935-3-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DS0PR11MB7878:EE_
x-ms-office365-filtering-correlation-id: 1c1a9aff-129f-4ab2-f103-08dc1d86733d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hY6f8urny/gkby80PhHwp5cM7jPsskNo0zw7S1KsTBQ+hFjZIiruXkYpHsfRBjCJZtrXAnqMd6FBIsi4k1h8jHKW0KenqihFjprq1jvoLUuggVOzt2n2ZOFrhZ5mASWZCQQm00Ss+cjeRqz0RE43Z0zyHJS340eR4SLgyM/tJhIQJqPJqzTUduKMe/rxMjTWmIVjXY/CeoWdZ2vhlK1KecS8e7YsnlXSfAwLMnKTREG7YSE9HBcUAUoUr3MXglAfRa4g6aaSqx2Wg6jx/FloJ9I6QCkwss+oL5h2bWoDW+VLRDGnbcu/7LpHucWBNO34PZgl0FhDMuu112bw0xMce57m48lVtE7ZI6K1rI+AicDKFNRYpVNF+8VSiYY4fo3YRH7wcj0EJoMsMEkZ3w5Cwa1snm2DHlLcIeCgUNwTP7CJHsZmHg3WKTUmwAstyqopDbl2YV9N+whP64U070p6Zke9Z4f39KPE2CbB45NIV/zGSrIigpp5uGPkon1NwhzQLFilEC/mjPmdbfkLtOy3dd7YQDUeEYMqj5wEYWq/Liz/NJicPMzXXsGSy9qW5ao3sE2Tqi307ag5yF2nmRicDIBUqbJ2Y21sAoxOfiqUACg6pJHwwULoC0j24kPUKd7u
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(396003)(136003)(376002)(346002)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(82960400001)(66476007)(110136005)(316002)(66556008)(66946007)(64756008)(55236004)(53546011)(26005)(122000001)(54906003)(66446008)(9686003)(107886003)(478600001)(55016003)(38100700002)(6506007)(7696005)(71200400001)(8936002)(76116006)(8676002)(4326008)(52536014)(5660300002)(83380400001)(41300700001)(86362001)(2906002)(33656002)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rO8LbrEfoUvrUHA+mim8jVLSTBeSABexcTwthiPnC6FQzUrispY3Y6smwIiZ?=
 =?us-ascii?Q?Q0x5YRwjgv9DFopPSSeZwBP+hJiZCaCsLT4uKoBa9C+k3fQ5bcokGVyX3eQe?=
 =?us-ascii?Q?3riLklT4fsXh9XhfoWGmOkP8q208Tut/HZ1IHa57XQe1cWRJGjPG6e+ecD5a?=
 =?us-ascii?Q?MkSsz0xdBy362DwtQibj3tLCswcnwZWuFAMM+8CQVCQZUQK50+riCaz9J9XJ?=
 =?us-ascii?Q?ef9f0zSPGTSGaMHF7XHPJH8u7EgkAYYYcZxTz6WNvTCp7WDsGJ2OKnZhifLZ?=
 =?us-ascii?Q?cDI+AMncdp9NsNLr9wfqQ2Qfp76Vcr0Q7LNdZWcWGQTl09svSWbQY4IIL0MF?=
 =?us-ascii?Q?ryOYSbTLQPcVN1fi94ayIDX5ssNhPSInx+bGdxbPl0do0T62Wemhz1qLbkFk?=
 =?us-ascii?Q?10L5uS7DamKRIDoi2oL5CNYAVBeYJmXhsNniVlaQyvZNf3Gi8GDXMqqLkegN?=
 =?us-ascii?Q?7NSHzzOK0iN/ejy5UPXhsD9LQg1Hu/I5TPgjpm6Lpv5q6rQvEqCiWz8UJY/z?=
 =?us-ascii?Q?BECj4A0Rgq+QBwpUod4+gzWrvSARepmuxtK+/5L6hKbO9BeW2MB9agdfwtr4?=
 =?us-ascii?Q?aTP7mZIWbWXzj/fEt7a0d/HMq67avpuNirRUf6RdiCPFFixvudR7OikMu50D?=
 =?us-ascii?Q?5PoyYezYEteW+dHayUP5e67wM71L+dtkuU8rgdS6QgANvLidHjTXbQvzAgVp?=
 =?us-ascii?Q?t9vM5iyBvnatddy9WCir5i7wEVY6iS7tOVXHajwEX/7YBXNwWKMvPT+O+0dG?=
 =?us-ascii?Q?9SmuSF5I44BdCpXp4MmGGAqYDScSzlPjC5L82raU0afBE97CLo/bv5jyhhBf?=
 =?us-ascii?Q?pYCEztfZY1zB2onqDLxDZeg/RdocbU5olrBWMriUNlirubtFh2f8s1BxxWob?=
 =?us-ascii?Q?PoHgplCvVfw9YWxGSB1bm7w5Ej6K/GF8xFQYCMN8yCLZ5ivuvyVZJC4KHJv2?=
 =?us-ascii?Q?5bIHmW/lOCeWfkyd4vn2I1/aAWPCzakNMr7LW7TKh7xcQwCZzQ+ugDt1Cixo?=
 =?us-ascii?Q?4Lne6HLoB+n7nidVa+zgihWmD6f93z2f8wMq3/Cwody8ecsKzXoxxxxO3+pT?=
 =?us-ascii?Q?8NYx6NHAcGAQpM5w+gnbtk/QRU0u/aofCvSdyyR+koMXtnhSPuKPsRlPub31?=
 =?us-ascii?Q?071Z8Ef3Qiktia4dBD5gnhfCJ1ENx/A16MaqSWZ0tLO0+3in2xwMWIqDBJqa?=
 =?us-ascii?Q?zw63xYsmWK1r/R+I1D48Cn3+WLH/eZa2E8ZM+ZTJl5VrMwAfQL5qQWLnRviu?=
 =?us-ascii?Q?EOA6z8g1zCOBJYaYeFQLXgkwBUWq+DgOgrzH3rk+N3Yn2P7rrjoLSaJJbHSa?=
 =?us-ascii?Q?KZe5oqJhGgBaLmItdMLRPJuC2mnGis/DUj3Az6mzXBCDQzY28R7Z/H5ib8c+?=
 =?us-ascii?Q?dwpF+FY3P/6I5Yb5GjN2jM07qDX9G2wCpO3f4LLEK99xwmelfapZ0ra6gWVk?=
 =?us-ascii?Q?Vd5yI9OY4Ei2OXDEMGdkuFoixt0LH0xF4Q3rkbJPorPTsggAIVdkFXpIjsPt?=
 =?us-ascii?Q?XJ3m4V7+L0mZQFrX50+NKM1NOuWSEBac8woFFRr72BTF876IYoLY2yCyiR7U?=
 =?us-ascii?Q?W8wmOU2EQfw5/14Wtxf7Qy3owa77YhCq1QN9Qbe3xenJVkmvAHcHM0t2MT7u?=
 =?us-ascii?Q?0g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c1a9aff-129f-4ab2-f103-08dc1d86733d
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2024 09:17:27.5942 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N+O/lNaT14JJnM18tEhtjDnReGL5410vClAgs8bv3sjHLK57Ww/m4zoiYpm2nK3TEgr9k16wIfcLIK6mHFBP94rLGJntxDJptLUnFa8zOHNsmqOrm5UOvn/0bR/tv6AN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7878
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706174281; x=1737710281;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o7VyGwrxRrtFJU/DaJL4MWRTG7Rm+DDX7D6HCVKRSvc=;
 b=mEchaWTBLdHrIc2B/Q7rsUOtGhBo4ryBHF6iiC86SG7UH1e/awT5WOWL
 72mrkqxBb2rH9ZHzMgYLHBhdEy6qqkwzdqx/3ByiI6035B2OHipIAeew2
 gHczcxCKd9fKzDPwhhdJpyjISwrjNl4ywTuyPMeVzqnGIfybnxbE8JkzN
 AUp6/P85fbL57NVvddIL2pT0KBzk5j8kJkXPznDVXRRQHrAvlaGnuuE3k
 YyMDlVSsFcvttQgPTjrA0Jf6Ze1DUVNu7JgEc1fgv+UtYQl7dKV5fCrn3
 UagBFe9N8wuiQ+Px+TDlsPdRFWHbsxfPMx90Lxe57+dTXjnhE9Ozakg4/
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mEchaWTB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v7 iwl-next 2/7] ice: pass reset type
 to PTP reset functions
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Tuesday, January 23, 2024 4:21 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; netdev@vger.kernel.org; K=
olacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l=
.nguyen@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH v7 iwl-next 2/7] ice: pass reset type t=
o PTP reset functions
>
> From: Jacob Keller <jacob.e.keller@intel.com>
>
> The ice_ptp_prepare_for_reset() and ice_ptp_reset() functions currently
> check the pf->flags ICE_FLAG_PFR_REQ bit to determine if the current
> reset is a PF reset or not.
>
> This is problematic, because it is possible that a PF reset and a higher
> level reset (CORE reset, GLOBAL reset, EMP reset) are requested
> simultaneously. In that case, the driver performs the highest level
> reset requested. However, the ICE_FLAG_PFR_REQ flag will still be set.
>
> The main driver reset functions take an enum ice_reset_req indicating
> which reset is actually being performed. Pass this data into the PTP
> functions and rely on this instead of relying on the driver flags.
>
> This ensures that the PTP code performs the proper level of reset that
> the driver is actually undergoing.
>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> V4 -> V5: added missing ice_ptp_reset() definition
>
>  drivers/net/ethernet/intel/ice/ice_main.c |  4 ++--
>  drivers/net/ethernet/intel/ice/ice_ptp.c  | 13 +++++++------
>  drivers/net/ethernet/intel/ice/ice_ptp.h  | 16 ++++++++++++----
>  3 files changed, 21 insertions(+), 12 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

