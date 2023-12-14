Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A075581328A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Dec 2023 15:08:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 28EB24206F;
	Thu, 14 Dec 2023 14:08:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 28EB24206F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702562927;
	bh=1i2Z6eBK0fKWguIGym1bTmqh6uGhbKoJtqLKhoExS6Y=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=T3zgBzBH5giTYtUM8sCHOOrtdBlM1gDdhPF738KpYY/0J97fxY83p3MfIpkfZEDJf
	 dSYgpQbtkqJ7aO5jkan8T/yC5YKiJ8PwIi2B1J3B7TDliRU05Zz+hkQg7wtEU5ZdFH
	 6yQycqAhmCbqSY72l9jd9q5qj5NiAJ3j1sIxd323B9UwhsIb+BPI3j4P7A++1Gh9H/
	 P35mZppDvisE5EPisHYLEvJ/HS7jlEbalBrHsAlcmDv71zS33jTsbtd8lbVSeuDbkc
	 0B9Nnpkd+YzB3G8ddAYJWtNUzaEsyGMG/V35Gaf7AEwbexyp31tKOH7aQVFhAE0Rhc
	 XBJgCO2vp9QaA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id thRQfdI3iYvp; Thu, 14 Dec 2023 14:08:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6EA341FFD;
	Thu, 14 Dec 2023 14:08:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6EA341FFD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AC99A1BF42D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 14:08:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9149683CEF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 14:08:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9149683CEF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Spn2byAI3b6i for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Dec 2023 14:08:39 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AF11E8197D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 14:08:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF11E8197D
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="1976055"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; 
   d="scan'208";a="1976055"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 06:08:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="840294635"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="840294635"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Dec 2023 06:08:38 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Dec 2023 06:08:38 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Dec 2023 06:08:38 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Dec 2023 06:08:38 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Dec 2023 06:08:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U3f6CY3KtG00GA0FPXuXdNJ+87JAWMnerreE+Hr/Bs821UqAcQ1DU/QjoDZJX3C/ED39b8zFRi95rNJn9nvNIwixjDRknqmDj2Vgnly6qMPEsIQ4LifZK4X1Qyq8TVyMm+EC0cTdfm0tXGoUnKI3X0+Q0ramJBAiFJrSrt0hBTpKhO2v+g/g50/blk5aR+HpMz6h8ThHLNKdMKDlq7i5M7QVTwlSgxE3aQ314SGzt/JSYmoKK0pXX2YTlyKzUXmKgfITleVnIk68792KiXFypy/fHaUeOSHMjKqzqrblVr47hZZxbW7xIjAly4gOWnZdcmQ5WTdJOP/e6tG8Iln1Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nsnfi1M07Geao3UeLCQC+VN0DQemmgLJD7j1UlXReXY=;
 b=Wx+s5XWZQP3/cgYXSKyLYXuWECV7mOU7i7drcl2d4qA7nqdO+NBnlCvemlR4mMIXgJbIvHR60qz5sXfkMZAymnfM5LDOMLNiqPMEJvAsrvB2afAUg08h1zwzHlIvgfhrZwx+pTdbXZn03FCZMs40LoGsUS95nj8s3SLp1OYW4vJzMaSduhce8AjZpe5no735IIKc5awwm7tlPovqTtcGEaM0jRrrk9TcQLoJnOuLcfexh8SMRAVjrsy3qkfHShtuim9pSmt1NHMmgAD1TxzcWLWAJjxBA3T6LUJSPy0EGx6dVUJSro1Zc8OnmWPjkQZ23YogtCwcoXNQOz8IVroYKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by CY5PR11MB6462.namprd11.prod.outlook.com (2603:10b6:930:32::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.26; Thu, 14 Dec
 2023 14:08:35 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7091.028; Thu, 14 Dec 2023
 14:08:35 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v21 4/5] ice: add ability to
 read and configure FW log data
Thread-Index: AQHaLYJrQokozMQdlUq/o0ubLn4sC7Co0m4A
Date: Thu, 14 Dec 2023 14:08:35 +0000
Message-ID: <BL0PR11MB3122BC48DA4C28294F583F80BD8CA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231213050715.190-1-paul.m.stillwell.jr@intel.com>
 <20231213050715.190-5-paul.m.stillwell.jr@intel.com>
In-Reply-To: <20231213050715.190-5-paul.m.stillwell.jr@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|CY5PR11MB6462:EE_
x-ms-office365-filtering-correlation-id: 23fc4e95-1c82-427e-43c8-08dbfcae2965
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HhDsiuSRZYHWPR4maC4jMPkGOhP+BngNwMEWKtGUQdC3eeaKxPgsJqbgUSzp5uHyuS8HRb9ho/BiN+IR7BzFm68nzuA5lOGE5xcwmm7G0itMx/nLOohXUTVYkd9nE+ch/zhF9Rkk/yn0dBbcPciBpMjYOWUGlodc6c/TnRnPUFz7q3A5fNjHk+ycFP72nkoMNBtNHJguBrE7J8FRB99+d1fo0ayMhESemqjl+1peCjGa0ljSLPgQMPu9ZaA7b6osCXecibXr+vm7/s6noFaS9rC9VK7jdEgRE8b69Bdt07WcYxN1jIRyM9t1B5iePlhH4IJEGSEZlqm+ar7OPp1JVb8TDbyXEE5K2sH9LeBFL8JxpjS7xF/uaG2gmZgZCa2fBBRA/OBk34egk25eDr8rhGTB6tHIlJMcMcotj65qH2NZy1L0d81w92M+doeXpqmKXSUYUFZBGYITjL0u8y0SiwxguPsYIp7j2dn02tHZ5qK9LEh5koZFzrKdPU9ldIacQ/hDpe83qiz54dDDa5MZCIUO6+yNO3aQgzJs4lZHlIbXdpYhuVzoGLJ8wpphdGQ0QGnGKxleN2He95koZvj+RYVq6A46DFc36TANW7nst0AOJnFi5bOUX+MoWj9d1DJo
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(376002)(396003)(39860400002)(346002)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(38070700009)(33656002)(55016003)(66476007)(107886003)(7696005)(26005)(2906002)(52536014)(6506007)(71200400001)(478600001)(66446008)(4326008)(8676002)(9686003)(76116006)(110136005)(8936002)(66946007)(53546011)(66556008)(316002)(64756008)(5660300002)(38100700002)(83380400001)(82960400001)(122000001)(41300700001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?i3XaBBMGSm/4/c2KX4o/z0IRCpOkeZ7aOoezqYvzpfp1ACeoj3PGNyfIKXXh?=
 =?us-ascii?Q?oucpOkBhV8v56p7PVi7eIplbDnymyXRZQMUKlWqhgBLucCCVTOgpMAvUzNrL?=
 =?us-ascii?Q?Sudfp1X38TrYjjvUSpSJBoxBR7xahmLRMvI9txXs4e3JTjiy2IafLr+b3FLL?=
 =?us-ascii?Q?6iiDOLowIACpStBJrYa1Y9uOzHAnfXb3kD0i0Xz2yaxSzQo+6soMLDqPDNB8?=
 =?us-ascii?Q?SqBYiDcRHwicRFlfiwzPxBCzBPFMvgL/WQKKS2WVnyOKkxQEj2Gns25pTf5n?=
 =?us-ascii?Q?9fhAZDITMo6LZ5IybldoQtTiOK7QV86tyew3o3UxP8cURW0CF5xrfhWnjEcw?=
 =?us-ascii?Q?NMGYvraZjS/08zB79ClmtZzDxcNsmf/OLpfDr684hdywThvQ5GSfkZnOhZAS?=
 =?us-ascii?Q?VHPjZMc84wvgAUiNuBk2UBTXYe1iyoJoL7poDuD3FX8W2Ud7dizUL2XS428T?=
 =?us-ascii?Q?z3v4txEhmGwaYfnPzbNY8tKtTp1HEoKklbIwYMGjQ1jP9EIeWIOic3PigZ96?=
 =?us-ascii?Q?/jvC7UzHhxUNleQEf821KQ8HnVuy5kuHIXr52+Di3VbRVX+XZodAvVtWn0xC?=
 =?us-ascii?Q?vXyDEqPjyu1IHsPjZDbhHgPXpf/ieJC51l4an0cBREWetZWLXk3iV8l8xeTc?=
 =?us-ascii?Q?smXXKlL9e4skkzKXxcXVp+wOMS7qKWrYMFT9zCKhyH76aCzJmMoftYIRW7F+?=
 =?us-ascii?Q?3TBTopeLnBhvKe4JQ6OdeVKPR50G72UrU08RtxAIxjNwxCgp0BOMMKaoJtY8?=
 =?us-ascii?Q?+o06HyzHn8nHGBL655pSYDZycbzJtFAgNzE39+ij8y9O/D79PsMCYLNfiJLU?=
 =?us-ascii?Q?o73ckBp/hqPGoWPHUNbWOdbtZkaRcg0jC+TrjTwlS8TybO0urK4xBbetn55M?=
 =?us-ascii?Q?uN6D+WEV4FZTQ1VvSTENmIgxdPnnzaa2C+wPmrNij561RyXHbWl1EhSmK17/?=
 =?us-ascii?Q?xnDV8lCyIHAYQCHN8GLrqC4s4GZq1vSrZ4FjOlRs+F93KYII6M+jNpyPw//r?=
 =?us-ascii?Q?4vvot0Q4w53u9lK+HVGUnn2aZChAd7ElWm1N7iGSyo+VjjYB4A8vlqX5E3NK?=
 =?us-ascii?Q?1liyR3VxZ43VjYUvhY9CZihAx3b+cqHDHXdOvQN34qaynYq8wkl+V02QjU6D?=
 =?us-ascii?Q?KtLjWk3vyXrFMbv2/RxeRm00nFWjkrK5LMW4U+kw2h/T9DEBYTJKrgnClaze?=
 =?us-ascii?Q?A9bMCtosm+VmigWWKxlRNG1eiFu7Npl09wdHJ4tk2QZjsNewSSV3xO+yMTNS?=
 =?us-ascii?Q?cTAGnHV/ND75A5jc4x9nGyuAHuu7jUa5DmeoJhGU9XyT2jQy3CGbUp3liBFV?=
 =?us-ascii?Q?US6RHcDb3p4cfF3JwesapcZgKX4/vWd+0I+BhAs3XAj3Dqu0RNc8uoXkIfjb?=
 =?us-ascii?Q?7ybmc0UVcxwq91k0KWCIC5QXYQRvfXuwBqOffOw39mVS95x1h4Z+HH4iEnFM?=
 =?us-ascii?Q?EgUBx+J7+o2cMvX/HBkxQ3A3GaDTQlvh6EHj2jBeHoIzD7eWiP1P2IBSgdUu?=
 =?us-ascii?Q?ACEYxuErYvIAYua7KKDDcJnm4asmzz/gkrcPqvPfvzx5Gtx4PmkofRaJcNfx?=
 =?us-ascii?Q?eKTnXvxKgpcUFM3FpmiEJdGjqO1gSMKfRm8AU71rQPPdkJVFK2Uw1wu1V3+e?=
 =?us-ascii?Q?WA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23fc4e95-1c82-427e-43c8-08dbfcae2965
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2023 14:08:35.1814 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Riz7r1AGv6RRz3sRcfUapjE+NcmIiXWVFdtA6Y0fYXhdyqjYAavNMNwiBQwmqzHk+7lmcYBEEA0cebbm8iYBl25PwAfVuX/JA8OfBgHNCexpiB3Yib2YPq5KEtFSSyYI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6462
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702562920; x=1734098920;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F3HXy+8++jPmpFNQuUmJ8A/vqRQQVt83qNCzRKjovtM=;
 b=gJ4s3jU5Jt+o4WojibhrSP0p5MtoYbM7EUN7sPea9G0g6zCtArPCPeg6
 PdxVR0tJ/EOdWQi0mzZ2Lhuo6bjUeLlvIAjpSWgiW2uT70jTefmoDJCua
 3+T0fL8Nx5kgOn++9zpMylds0sXi2momZPSdKzq5mx22I//KdQNyILW16
 8PyXpw3/gaj4ZWCF3ikr+SOeFHKGfY8cXJElZb6B2SR8mLQpgkqFRGRQo
 TD7OAdpspbSjwROAIBMcOFENmhaCqjw7bZ9+WGKJOJIgZL+OMBhRdn1Hk
 mZiUUYM7iAcha3BSS+GqgF87VCjooKePkIYHWwd3m3X6ShmYlD3ydNcW9
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gJ4s3jU5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v21 4/5] ice: add ability to
 read and configure FW log data
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
Cc: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Paul M Stillwell Jr
> Sent: Wednesday, December 13, 2023 10:37 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Stillwell Jr, Paul M <paul.m.stillwell.jr@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v21 4/5] ice: add ability to read and configure FW log data
>
> Once logging is enabled the user should read the data from the 'data'
> file. The data is in the form of a binary blob that can be sent to Intel
> for decoding. To read the data use a command like:
>
>  # cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/data > log_data.bin
>
> If the user wants to clear the FW log data that has been stored in the
> driver then they can write any value to the 'data' file and that will clear
> the data. An example is:
>
>   # echo 34 > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/data
>
> In addition to being able to read the data the user can configure how
> much memory is used to store FW log data. This allows the user to
> increase/decrease the amount of memory based on the users situation.
> The data is stored such that if the memory fills up then the oldest data
> will get overwritten in a circular manner. To change the amount of
> memory the user can write to the 'log_size' file like this:
>
>   # echo <value> > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/log_size
>
> Where <value> is one of 128K, 256K, 512K, 1M, and 2M. The default value
> is 1M.
>
> The user can see the current value of 'log_size' by reading the file:
>
>   # cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/log_size
>
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
>  drivers/net/ethernet/intel/ice/ice_debugfs.c  | 210 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_fwlog.c    | 142 ++++++++++++
>  drivers/net/ethernet/intel/ice/ice_fwlog.h    |  21 ++
>  drivers/net/ethernet/intel/ice/ice_main.c     |  29 +++
>  drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>  6 files changed, 405 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
