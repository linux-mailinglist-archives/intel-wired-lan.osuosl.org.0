Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 680907A91F0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Sep 2023 09:12:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 358AF83BA4;
	Thu, 21 Sep 2023 07:12:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 358AF83BA4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695280360;
	bh=/vqrKQgcvkaBsqLQoeBFePGTvK0BFZxYbTPU7PxDxiI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XwkpHtz4m4wlsLSmXHLYlHbZeuuDMOD0zIMYM/RiC5SxfBk0V/7EbYEUaK1TY9Fxl
	 JTMIhoOuPHQBHDpskEHU+VdJ4QY8/x19qKmJah/v4sbmz5vRu8oVi4/YgyAC/O28yB
	 LFCJyOyFbJXqnx3U3taMikz2UEH8zYwUu+JT/wQbnupUTj1mptf5UUsqRaeNt5xCLO
	 GwxwH0JjAsZHQ3qKr72hU+Hv66JkCUKkvqToK6w9MR3qta9hZ7T9y0przJFKhwVaW2
	 cVezbFTwqDk4q3CK2RShQ1ZzZUmgnI34bb+JC90upRGBtyXgfFxYRK02Df91tvwtZ4
	 cjpoSmOhfAG8w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qtu7k_LUdiI7; Thu, 21 Sep 2023 07:12:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 15A0F83BA2;
	Thu, 21 Sep 2023 07:12:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 15A0F83BA2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4F1871BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 07:12:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 326EC41F85
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 07:12:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 326EC41F85
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JoXuqkpewWxc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Sep 2023 07:12:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0E48241F76
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 07:12:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E48241F76
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="379322881"
X-IronPort-AV: E=Sophos;i="6.03,164,1694761200"; d="scan'208";a="379322881"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 00:12:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="862337341"
X-IronPort-AV: E=Sophos;i="6.03,164,1694761200"; d="scan'208";a="862337341"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Sep 2023 00:11:42 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 21 Sep 2023 00:10:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 21 Sep 2023 00:10:51 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 21 Sep 2023 00:10:51 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 20 Sep 2023 23:22:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L/P1qiouccdvNXUyrIC47fvdT7hYmomXjXdwkcD3q8MIe/MnqKdunfKzlK3JnIl+dvUzGtBPtKzACwo5EKq2gBKpVn9iVr1eBW3FNsbZOD4DSIxD+/ChOVlg0ZjEV6+Wm5tFoVHOP/B0VsNy0Chi+us6eoI1vmY23k55W/y4cF8pmKDDGGK8Flfo/YyjCbBQw54wrn5q8v6qUnRk+7W2uXOB5WBeXSbBG+Wm8aAsPkVY7toDQaW1O7D2eB3zfsLOw73RUWdo+hCiMZHyPfvHq65z8ZuZbkM4P3uCfex6wB7MQWf+qbBRIDhqh1fpsO4E8edDSFLEbbNm0neH6Y1Gkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K9kiWvJPKJWnlZxb6iDLkFuM4D4s5xMkKr1lAUs6TK4=;
 b=EXvA8oaNGoJFbSsx/monaYzaJn8QdyMl0AKMIyQGg3IUEl7O2TjfrDhY8LHNSJJ7qf9FK6J/LPWcHzHzGEQWeZ0/ITdP8DXc9P9hsUVL3kkE+sULGMPlgejRweDc2fSrO6sbT961XCcYhPd9ifqY3iayjzLcqng+VX5DOmN9w4OMH7bqpaXwb6TYMOzhEhhpFBqHlzJkAEtxVqMotq2hhcVSya3cMjID2r+GLGrHaBg5GfcKFnLCFoUVkE2dM8gr/Sy6Aw/fAfPWs1PM5cs247JspBV63iZHr4quuYixHeAtmXg7n64xc5VXF7av0LgkW4bli0CetyPTZRamdzfiMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5354.namprd11.prod.outlook.com (2603:10b6:408:11b::7)
 by SA1PR11MB7088.namprd11.prod.outlook.com (2603:10b6:806:2b7::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.20; Thu, 21 Sep
 2023 06:22:21 +0000
Received: from BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::b847:9728:1c20:4631]) by BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::b847:9728:1c20:4631%5]) with mapi id 15.20.6813.017; Thu, 21 Sep 2023
 06:22:21 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: Yajun Deng <yajun.deng@linux.dev>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e: Add rx_missed_errors for buffer
 exhaustion
Thread-Index: AQHZ4NPdm+DTwtxydkmChnYWzy0kHrAk4XMA
Date: Thu, 21 Sep 2023 06:22:21 +0000
Message-ID: <BN9PR11MB535438EE5F3F60347E89648380F8A@BN9PR11MB5354.namprd11.prod.outlook.com>
References: <20230906072757.3929754-1-yajun.deng@linux.dev>
In-Reply-To: <20230906072757.3929754-1-yajun.deng@linux.dev>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5354:EE_|SA1PR11MB7088:EE_
x-ms-office365-filtering-correlation-id: e6f92439-cba7-4b89-650b-08dbba6b1cd7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: p4L1Xl5vcK3UUrAZfbMMQq2+t4qXdhvEeparzUeIfD6sBIwrTEd68NMNRoGMZl+juzzC9rSwCCWwLZnGmTEN+uuVKE0XPKO996M2eB4OBFmeZuUSwyScKM+9bkWmz3VFUlJJmN282fNKYVAm6SQzLdotkVpmwxqA52p+z9gM5J1PVd5zRQ4v+so4wzXIWay/7QzL024A9U5GeK3ZQhIBgJr9Q/xe4uqccVMC0qBOekT1OYlOUAZRKnKnS8VMgEagHlpR0Z73zV+RFGqJ9kG39GAqrHyODHpOUa4yvUBFlTwtrgKBfgQ4p38Tls+FBUlq2FrMpLZwC3+yamesdD6uyzCVWcK4gFA0f7TcnASDaipDyC9JNCoPkVGj31u9EQ3EHyGUmogdbMWX0MnMtsAlQoxYk7SNrGjOlosgyaGbTRloQdg4f9mHi4TpF5F/kjNIbNmoJx7K+neWqV2ZSi6faLOtkgDjpoVBWP3QhPtQFJZaSyIIY0i21HnWLsytKzn97xN+cOKhMfspkyYnNUOESp11EYv/EB+qpr6hA90H9Xwjd6kQUsuLYGxHpLlZeHhWTAIpu7nQOVIqksOvC9Krzk2jQIt4MajRWMwMoq5I0rs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5354.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(366004)(136003)(39860400002)(346002)(451199024)(186009)(1800799009)(2906002)(33656002)(83380400001)(82960400001)(4326008)(8676002)(52536014)(8936002)(5660300002)(86362001)(26005)(316002)(38100700002)(38070700005)(66946007)(110136005)(9686003)(55016003)(478600001)(122000001)(55236004)(53546011)(7696005)(6506007)(966005)(41300700001)(66476007)(66556008)(64756008)(66446008)(76116006)(54906003)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HkgobYtLPJ7gFcmOjPJBLrwGZLSQb7PpJhGXyfZYTrMpLbuJfVxvI6zgyiM4?=
 =?us-ascii?Q?IsWdYl6uqGHiWZYRSn9I07Ag1hA/biEHZreLYZoLu6mGMn9utviScekiReZX?=
 =?us-ascii?Q?GoKsQVUy2xGjKqUt0Ol7hn+z728ie6iwU//gK7/01DCO8kPMjT3M+e3COcIq?=
 =?us-ascii?Q?1/wz78U7j778ZHAR72LFjOD9eN3uKp8gj8HdTU+LOVaJSkbr8S846e/NYHYb?=
 =?us-ascii?Q?NtDis1ai4thyATHL/YYDqgLS0bdZEyQfAD3CL+t8X/172GbZCZNPViBULGNX?=
 =?us-ascii?Q?lZATsKi1DI10xpWWp1Sk944BC7kQoar3srinmG9jY04W0GeJqBYjGb9UYDe+?=
 =?us-ascii?Q?yUidsKZiZwryuvRdy28ZyPDhCnJ4oroENQiFC7n56ZULkIuwjA70vPfFIF8i?=
 =?us-ascii?Q?ZyRf/eAg1/k64RRyrzNizOC3CJPhJVUWyQNGLRSYuI6oFrR5wrHx/WXriQ5Z?=
 =?us-ascii?Q?r7+/IdeoQPQP71psRtzkWCkI5d5lNnxH3H91I22kpcbUkKvf4ecgkGixyEVl?=
 =?us-ascii?Q?ODaCHhJHzpRIsayo+fzQGBgz0Gw5yq7WoUDb5JUAY2WIFWPD3vOsXjNOZY5C?=
 =?us-ascii?Q?L9I9PlHY9unCDrzp8/3qQ39nNdLaF/xyHt5Vf0qlygKUnrpPfpTCVgfWbYWx?=
 =?us-ascii?Q?PPA34MuHZSwl6Gpzdnjhqz5xmgBJNONjxDg+fGd/fGxDShZrWYZFk4i7CDFM?=
 =?us-ascii?Q?rW0P5zWuB/1KNlb2ntYjbn7hOiFVxn+4eLK7pTrEAX19VtpyyaL0dBjIlZoe?=
 =?us-ascii?Q?P6AcYD8xIS4uDKokm87HV0d3PVw7Q2BTLJybNF8B59592z2ICNKZnM3UBLg5?=
 =?us-ascii?Q?/3NdX5YLXN1SkoWkHX94apNVdqlPU9mzpZFw9PlRxLbQsWggr87WYtTscVQG?=
 =?us-ascii?Q?Ix3nyL+6APW5kOHN1pt9T+inLiSazd4D6eTweWhRDWzmb/nocLgF+fcekPj3?=
 =?us-ascii?Q?4mK3jpdHYHogrOyGRQVguxrg7W6v9j5XR6ZUXqCQFuVzm6la+uVt+AUuCNs/?=
 =?us-ascii?Q?JuNJ+5Mw9xOfInVLxj0/utqHKNY21PRBxrZf8FEktLZ9o9PP2OkFoaRZ2cYV?=
 =?us-ascii?Q?mO6wD8/Yiei9lIteuUyvK50NKauVnNFKnXMb4FVPwLHV+UrhlX/KkRvM/oB+?=
 =?us-ascii?Q?2q3D+6PXWATp/fZ5Ul2H1epWor6b+/B1NrHTa1zA+zBICCIA9/FbUZ3mdDCa?=
 =?us-ascii?Q?qXO3nH98APZ9Je/bn7+pfqFJtP4EuJu2BeC8UTlDZKBk/aynQ8nOhJhPPoZy?=
 =?us-ascii?Q?lvcA9H3NmMrLQAhLWo43BkpL0YnD5y7CcwFbneDEyhDh6byAvGEpaBXpJ5iF?=
 =?us-ascii?Q?h8P3TMOkUp3N6+K42Vcfrvq6T3/Nf7+z24BVkww60t0exCQ+ZmZi9kROTDQ2?=
 =?us-ascii?Q?9u7n91PrFr8OYPIRxO7XHJqAmj3541Eo65qu0PYoyaZNgGBUykE+G4uTXHO1?=
 =?us-ascii?Q?0OOFZ4lGDNf5coj7jCCgardetZZlnHUo+IoMPauKZkHS5Q3wONoWJjXYa5Ai?=
 =?us-ascii?Q?xFuCjjtNLLBfWgkJLeRQ019CNFOaZ66PuMM0ubiIN78yJbj4lJEzYgoTHwYv?=
 =?us-ascii?Q?UYDwoeOKjHYF+Olj/DMngLzsGl/EuVfsTlIsTKqT?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5354.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6f92439-cba7-4b89-650b-08dbba6b1cd7
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2023 06:22:21.0635 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bv5UiRZZ1mTyhwMaXFYM+KHiWJMpM2yJiAHcvaAw/k0cYGiMjn/ne2xuJJfy4Hs6Wj3y5ZMJpvVynqU6IPMD9n+djNZAoc9i9NFFvrnfJVY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7088
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695280352; x=1726816352;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=E7AyNpY0o9fmONx2yx/XVoMLOh4nlF2FIvOEG0qZ/MM=;
 b=iJ87rY4AReZ9HFkPUy+VN5N3JXhZtNKhZ2H5TMsFhi4BIdeWAbPbxe5y
 85XL6wqGHVJFcIu+8CCFSt8qbfaoNXDULt8EkeRDGpMh4MlDbtisL3JPE
 87wr6aHTNP+NoAjeVd3aC+RmYOTa6nIOXnAkL1kkee87+s627jAuRsajZ
 G6A897Gej62vGXDDMrdBNmObGmO2+0nS0X4BlUAlyH2i4RphDUyFhYHth
 VaIT+v+RyvrJz74BDuXeETC8eiQHA9toje72apBWD1psWVYnXXOWifmsm
 HXBFYXrMzifXeuXBlK8cDuTCVMmDM7MtObalRPDGkWCKS7fdU+RtlxWxE
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iJ87rY4A
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Add rx_missed_errors for buffer
 exhaustion
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Yajun Deng
> Sent: Wednesday, September 6, 2023 12:58 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; davem@davemloft.net; edumazet@google.com; kuba@kernel.org; pabeni@redhat.com
> Cc: netdev@vger.kernel.org; Yajun Deng <yajun.deng@linux.dev>; intel-wired-lan@lists.osuosl.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH] i40e: Add rx_missed_errors for buffer exhaustion
>
> As the comment in struct rtnl_link_stats64, rx_dropped should not include packets dropped by the device due to buffer exhaustion.
> They are counted in rx_missed_errors, procfs folds those two counters together.
>
> Add rx_missed_errors for buffer exhaustion, rx_missed_errors corresponds to rx_discards, rx_dropped corresponds to rx_discards_other.
>
> Signed-off-by: Yajun Deng <yajun.deng@linux.dev>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_ethtool.c |  3 ++-
>  drivers/net/ethernet/intel/i40e/i40e_main.c    | 18 +++++++-----------
>  .../net/ethernet/intel/i40e/i40e_virtchnl_pf.c |  2 +-
>  3 files changed, 10 insertions(+), 13 deletions(-)
>

Tested-by: Arpana Arland <arpanax.arland@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
