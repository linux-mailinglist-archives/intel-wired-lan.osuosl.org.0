Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB8C7DCAC8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Oct 2023 11:28:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F1B883640;
	Tue, 31 Oct 2023 10:28:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F1B883640
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698748116;
	bh=FjIlZosBz3nC/vLQZyBCjBdbWPmHQzIS8aSSNXtKgX0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ljFgcsF9+mhwGfz6NEZhvNVoYxFNHhfk2g1GAjB+1OuZsq3CzBKls5c1m73Uzwxyt
	 mFNAavPHlXDr21Yz3Mkzo2Hcx9PFvja2RYFLyIHQCzSoOma70LmUaisZG6uJRCsk8C
	 6JPHyxRQ+PIC0AMeiTmniGikvqAan8VpsO6GiJOoQjKMfIWdEJXULFMVHOYt+IX6wI
	 6EqRsDRHudkFYcJGyw6eKgFQnL7qtFYnEsnAe1sAfwCUNkeWUhK7y0CeRt2p3FoIqr
	 06c4q4WRKj2mNoZC5eOGxYiCiOZcmYiBlDilCXBVpb0NJq+61jUFPG6OJr8iVzoZhu
	 spxVG+K3NG5xg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v3uQ2L6O98iE; Tue, 31 Oct 2023 10:28:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E884583417;
	Tue, 31 Oct 2023 10:28:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E884583417
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E7E661BF321
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 10:28:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BB9C0415C2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 10:28:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB9C0415C2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u_e5xgCGXKY5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Oct 2023 10:28:28 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 54CC340A71
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 10:28:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 54CC340A71
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="388081113"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="388081113"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 03:28:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="795533299"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="795533299"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Oct 2023 03:28:04 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 31 Oct 2023 03:28:04 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 31 Oct 2023 03:28:04 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 31 Oct 2023 03:28:04 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 31 Oct 2023 03:28:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F4cUJEiDr3jt5y3dJALnWU0OVVYGqITy8LW+zLBZKGC7cv7mcC2H2rup3eHtVL2Qyv/AMfQ0Y2UhRp569lGOYkA3u7Da0LHMe6FnERvRAVZoG3IVWZm5mdgWkBSu4Tv2fhbOatd9dxJRyT5UFyVVIEQNR7Q4dh3I5HwJKGEeBVo9D7nikR1LJ+35+fQGQo9/B/xLGBR2pxf5D2y1uYEpwGgaAdODVPPe+vNJnNllkS4Aw9pneXktMSHENBZX5ahSm+fdMwMVLjpDxQxopP1+Z/w78wL9L5JHP4Zmu+CY/oL2gQZPgmFST1ohaKOYl5+WsUXWy6vye2XhvfzDEyNbLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E86ltHk8r0dZAs5evlL42yXRn34/yyLy+AoPLNxkaSA=;
 b=SZugRiEIYLvSE9kTjXeEHHQfEEkfT7VBJkxDaB5PDKdLmeZcuKTTl2vSSEgcMbaz+KFEuPJdJ9/N0VPqZf2ztlocFMtxoC5etvCP9jMHN/2/zTc5uXweSWNfMXtNxbzmoRBE/YgU08nd+6ZtaDoRnyL0aX8BwfpjoqlFJrhBZ698lFFVWhfY2e3uRwfCeNJtVW3NL3F+EaZy4S7VsZIO8EHC3z15oPskdfGOCkhac0vBBzoZasDedgz2P9kBDjXBwp8G0uEuar5zaKSzZrv5pE8cfLvdrpyrW+iFamE032cs8Cf+IWtdMbP5GDzf8eOa87Nhz7XyOqcOyTahYRfujA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by PH7PR11MB7964.namprd11.prod.outlook.com (2603:10b6:510:247::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Tue, 31 Oct
 2023 10:28:01 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097%6]) with mapi id 15.20.6907.032; Tue, 31 Oct 2023
 10:28:00 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: ivecera <ivecera@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 1/6] i40e: Remove unused flags
Thread-Index: AQHaA40JYXB/jS41EEWBcJ5rg6s9f7Bjwm+g
Date: Tue, 31 Oct 2023 10:28:00 +0000
Message-ID: <BL0PR11MB312292CFC28888CB58DEB456BDA0A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231020193746.2274379-1-ivecera@redhat.com>
In-Reply-To: <20231020193746.2274379-1-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|PH7PR11MB7964:EE_
x-ms-office365-filtering-correlation-id: eb1072d6-f96d-4317-d0e9-08dbd9fc0ef5
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ugahF1tBVqbjEFP23AV0H/V7jrmYOrxaNikLomzqjfbqd69CGQnl3C3ELY2LvRLbYqPJh+vo0wTDLLQiRxOp8at2jTT+WkqX6FN+4HHSXuzoa+tfkVSwtdeUmnl6qpVyZ0FNWVkjqCG5jlki4WE+eZdj44RQzDMwV25FVqytpkagfOYR2q9H780rYt7FH+NGJLR4Gki5X7q1bqx1X0SHOKvUEeA5E+gi1mJ300V+SyMtWUPSxSlBvWnYvLAfnAP0JW42LLsOFo8PLjl/AB3cbJiQB6k4bcQh280hkrbghkuVcZeywkLGQ/nXjAnRDkqMHtW39gjor2uOdAcKRPl2t5x6y0y3S+E/5MlmvtvMN6vLWCzmYjczm2jgxmFikSLgLBiCIeOjndOvYY2JMhmLuIhMT/Wp5P2kA7UbI8f5DkeW7eZz4m6tWrThRrcCNKZtTnczPH3uDenmLTSTMtWymi4tIHuze2lYl7tvnaraqcF2CFsQsldjA6LaEk3iSPUvxl6SiBDa+jN6mKLWKH7+yRHLrSXh68511S2EsoDXOjyLYH5rnQ9VQLj8fa0hIQ92qhHJKTm18xKd4SzI4yy26AjaAne0rWPuuKc1pTuYlRvNt8JMjToTAEr6X4kayB6G
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(366004)(376002)(39860400002)(136003)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(38070700009)(4744005)(6506007)(53546011)(7696005)(55016003)(9686003)(122000001)(38100700002)(82960400001)(33656002)(478600001)(41300700001)(54906003)(2906002)(26005)(110136005)(71200400001)(316002)(83380400001)(8936002)(86362001)(66556008)(66476007)(52536014)(4326008)(66446008)(66946007)(76116006)(5660300002)(64756008)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zGVJ1sK3Y/mPfVQOniN+TvFtH2mviPjlzOl3oQyR13wz75AOXcRSSEEZwkWJ?=
 =?us-ascii?Q?sTjQNaB5R+TlGau/cLLaiXSpQeZTR0gw20mp/QUR4n00x7hLWeZZMuBSQsPr?=
 =?us-ascii?Q?kipL9fnTjM7Mj4fbSJg+YLzLcHeelxG7TP2Jcjp4f7cU6UC5eVj51zIIM3XE?=
 =?us-ascii?Q?Cv+7NpqTAB92xp+JIXIukHzv0GgN9/giAezOBjo53E0gA+ivY3ccV/kd1MI/?=
 =?us-ascii?Q?2+8hB5g7hb0+mSlju1K3+jZrSbE5jH5sXbThz/tW960gKJ7VLOBuoaJDp9PJ?=
 =?us-ascii?Q?e4Sqrmq2Xl/vNW0CXMcfVRUKB37HSlGN81esy4JwQxge7SzkZzS1ut+pe0I4?=
 =?us-ascii?Q?hbXlqf0U8AvuTLICYiy6wnv4OhW++gwTqq2LBpuf/AzYbf1UcwNqP6rpipfu?=
 =?us-ascii?Q?dzTrxZ/4Lf0fLuC31joRc8tu93Qj3JKW/OTLx7x9XcImDB1JRxuqGA/oNx4j?=
 =?us-ascii?Q?lbkjG/H+cdA5bVe+ZasVNhzgS8mglbWi3Pnn59+YSYic+qbqTIQLqzXQChW5?=
 =?us-ascii?Q?TUEYMtDIYmOyZorNOzPBsTl3Z0q14T5EuDmlSy06Z85nVlGQ6ShqbeaGBBzU?=
 =?us-ascii?Q?vKbFj5zKUw8e91Y+COB/xm/1ZvXU6qPwLkKBYt7VYgmdxzmW1kO4u5PK0ILo?=
 =?us-ascii?Q?HSlUQTa/YJx0GSZwZApbXyY6zapu3Mk0HAyZwMFqo+kM5BuJjApjqL2fCeuC?=
 =?us-ascii?Q?SlCwGd5H015wuAP01tbTIdQ8gC/p/a5WbngSEXhRWWlf3POamnIunl10F0k0?=
 =?us-ascii?Q?k5Z9PLLZrEG38pEu2BLxrcsEiz9T9ugzu9DXoM7YrAMvKjAZF86eKuZ7uiox?=
 =?us-ascii?Q?66Ihq61exqdxxczRSbtYw1atFmj/Mvs1zMcYY0LXewrSfiHxrOOkht1x1PqE?=
 =?us-ascii?Q?+BCdH001MZyJlxAhR2mE5+nP5ef+Zljp3gIaFylf0HOG4R81xsBBKN6zZGg3?=
 =?us-ascii?Q?UMPcNfSq6BX753Lcb8ihmbGjD/KcTsk+tbI8W4mIhyjI9MRATPQ6QCSGWDsI?=
 =?us-ascii?Q?cF4tqo61IVGW05uREonvU2iJjmfcRLKrfk9sLA9Ao4EUXBQcsx0C0bXjezGV?=
 =?us-ascii?Q?oR00XjJMgs9LfgrGhPoeuIngM2n8FUFoJDX2PIZFdv/n8rVgioDZruOGZzOk?=
 =?us-ascii?Q?fbFvObitqHOSRQ6/vOVyn+LemOPu3zKWkFhT9U/wl/Cmi3nEi81fNXBIB9yw?=
 =?us-ascii?Q?pt3tByu8PsXfiRKfmnAy99Q1qpgV1gUYlwmxa49QiJMF5tdZB4Yq9AY3AxfL?=
 =?us-ascii?Q?5KAmfeiRlT62rAbFIO+Rlm8y4fxzkixh0wiNBrGELerLDl37ENtDp0xzTnUR?=
 =?us-ascii?Q?Kbh1n7TH5wMJVYB8+0N97Vu4Y0w4C3Jtf+n2ZiOBpNuMq8Odin0t3mLRnV16?=
 =?us-ascii?Q?vMiiXcdTweBnQLgtKqRwvsYzJm3KMT+zZbWyfHhYAfmnz6BiMvtE2rBal1W0?=
 =?us-ascii?Q?2VnMPxpsk2Guq8+pcX3P2Gd6/ORzudMLHbG0BlxBz865ioUn4M42tYMtFn0V?=
 =?us-ascii?Q?lE6r3vfiJZlBxOqiaKAvvJQd47lIwBUSbu9kuHOBFNZjYRJJgkrVQ3k5LOxl?=
 =?us-ascii?Q?0nQgM0hhveGBhoha4x1e+kEStxzaviRqMygNMidF4BUHSTahUXUv1fVFyBZg?=
 =?us-ascii?Q?0w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb1072d6-f96d-4317-d0e9-08dbd9fc0ef5
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2023 10:28:00.8580 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VrnxW4roU7dIwMCPfASgxYtGVOHjHXIRPPVWMBz+LkZQa/hpJBEKc5LatfJUH98c1JNJQ4yeHlGQqsDcPBwwuLR51JNzqQv69JfBjhMxIwD05lyx//i+UH+/v5cBSo2j
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7964
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698748108; x=1730284108;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hdQYHFo3+qReQ8/FpmdpOgBGVRay3MYMWDv6JfgvwSQ=;
 b=l8C6Oc6ASFrsNAj9MGeHUNhcjcxWRbZ/aMsdKurl4ryQSEmMqrVIXjZr
 4BvaOZno3xEUQgC1gQxfxff9ul7A88/jgruFqKckHZDNSP1/IdAsSOZ+2
 HdXkSv+sCbrv7pC5PGmqMW8HcIO3W8mln2gnZ/XUrjvAksQKt84tpW0vD
 pSZ3hWElXCx/cOzJlXjbKlvul2NMPfICJp7LP5j6vG5YDL2AGjq5DQ+kv
 5Abqz69ItuwZ6MzIHzZVYVcAcYussg+JLrM+vI64QTtZlpDq4L6CYw7Ib
 dgWarYuTz7DmQphl/bvwGu8W/z3E7PzbL/CY/tRh93PMVhsU7ciCpd//U
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l8C6Oc6A
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/6] i40e: Remove unused flags
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
Cc: "dacampbe@redhat.com" <dacampbe@redhat.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, open list <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ivan Vecera
> Sent: Saturday, October 21, 2023 1:08 AM
> To: netdev@vger.kernel.org
> Cc: Eric Dumazet <edumazet@google.com>; dacampbe@redhat.com; Brandeburg, Jesse <jesse.brandeburg@intel.com>; open list <linux-kernel@vger.kernel.org>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; moderated list:INTEL ETHERNET DRIVERS <intel-wired-lan@lists.osuosl.org>; Keller, Jacob E <jacob.e.keller@intel.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH iwl-next 1/6] i40e: Remove unused flags
>
> The flag I40E_FLAG_RX_CSUM_ENABLED and I40E_HW_FLAG_DROP_MODE are
> set and never read. Remove them.
> 
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        | 57 +++++++++----------
>  drivers/net/ethernet/intel/i40e/i40e_adminq.c |  4 +-
>  drivers/net/ethernet/intel/i40e/i40e_main.c   |  4 +-
>  drivers/net/ethernet/intel/i40e/i40e_type.h   |  3 +-
>  4 files changed, 31 insertions(+), 37 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
