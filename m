Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A851A7F9FC0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Nov 2023 13:39:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 10A3D4088A;
	Mon, 27 Nov 2023 12:39:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10A3D4088A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701088789;
	bh=shUUnBbsjpNZ6drjZ7vPSozS4ylpRyenqZeMj6dfflo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=G4Y/FKF7FI8wx0AVSEUiEcxxV62B1/JnmA9ICPYb7nOYzkrfUERSL/bOn79FDThVk
	 dSoKxISGbdTHfK+CLJeAQnbB5pI2fxCUUdwFcswlvNiEcgrP9F4V6RXbODGBMXmRyB
	 v6QuUVlCvPr9mWOj4BlEO1MDKPlgt3SDxSxtnAJ4St6j0HeOlQv6j2swNzbQSVBbcD
	 756lDbZ7tLr74XoOqS2F06J8NF2t5134/pwAspPNmswa5wDQAO0XdFhk8cGPrU3lRJ
	 rNbdQ/gAjOjbqaOoVYEyRCXW8GgxmtoNzOwDetlMJpN3pHJl2T4w0BwG82g7w31y3T
	 3+ssEVm26gxeQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8C5djGDYZ7Hb; Mon, 27 Nov 2023 12:39:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2B3740883;
	Mon, 27 Nov 2023 12:39:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2B3740883
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3DAB81BF3A8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 12:39:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 10E5D4059F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 12:39:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10E5D4059F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N7RJs9oIvXLH for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Nov 2023 12:39:40 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9975940547
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 12:39:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9975940547
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="377728223"
X-IronPort-AV: E=Sophos;i="6.04,230,1695711600"; d="scan'208";a="377728223"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 04:39:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="838693173"
X-IronPort-AV: E=Sophos;i="6.04,230,1695711600"; d="scan'208";a="838693173"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2023 04:39:39 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 27 Nov 2023 04:39:38 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 27 Nov 2023 04:39:38 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 27 Nov 2023 04:39:38 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 27 Nov 2023 04:39:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F0R+wZXLe5kIoofBNj/PJAuSrNK4BEosuDp4qKFUk274ObVU/6YJvkLwL2xAyt//7u31m+C3DFhrV1Is3ndELJzy4I8uE5fKUn/YenoVJC6hHXFd3EtEqcwe8rSlR4UwN4VaN+McmXkA00lI5OAIhxK4jygyKDsRdYMJ8H+nvHujnBUzHHHeXWDWFHNUwfxfsE7SlME7GkaNgppY3h1jDrIs14QqIDdZVKdTd8uS9Hep5ku7Lb3UmTrHK7JLsnLHRLvSUJU2AdFLVpDqaIYEIINpphsYubbjRg9inzcfnVAnAkRdE6QMkzO1dW8Ra8wVGCkt8/O/Tq9wwngfEEdv9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q0HMiOoVi7WUqipaYV5xWctpReAoBSaH0j/ctGU7E2o=;
 b=nGbh3u8ZgKoJ3IYjkTWqHsM2aHvRs8xcmeOLdJJ9y+Z+KTESul2gG0mVG5lj8VylztryFsVQjXwJmaT9oFBlCoH4cfxV/F28rFxOHVH6KuI6UiiibTkejTTwAaWK/5yHzy7rO7HPexICjpZ30WsbQjs4UMjP2dUoZjDJ2D63ONFny/fKwjrOrlGROOdyjMQ0FgOxVR1sjmHrU2RjzP7ib7kPj5jybUScwKw/amSZW+JZ448M/2b/Tp4qvjZsoXCjLA8VedSQooN2kRzzgk83xakY43HmNtmmlyn9bUkyi45BcNtbabvbh1RJZcpvJ+8f3YloAD1sSEjRQYgRShN1LA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by SJ2PR11MB8587.namprd11.prod.outlook.com (2603:10b6:a03:568::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.18; Mon, 27 Nov
 2023 12:39:36 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::1498:c32d:2d2:975c]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::1498:c32d:2d2:975c%6]) with mapi id 15.20.7025.022; Mon, 27 Nov 2023
 12:39:36 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, Marcin Szycik
 <marcin.szycik@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: Restore fix disabling RX
 VLAN filtering
Thread-Index: AQHaEYHEgZPug2WH202HFRjlEJddm7ByQDaAgBv6RMA=
Date: Mon, 27 Nov 2023 12:39:36 +0000
Message-ID: <BL0PR11MB352154FC9A4C359C136510788FBDA@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20231107135138.10692-1-marcin.szycik@linux.intel.com>
 <20231109172437.GA568506@kernel.org>
In-Reply-To: <20231109172437.GA568506@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|SJ2PR11MB8587:EE_
x-ms-office365-filtering-correlation-id: 03e6a1a1-106d-4605-f6b8-08dbef45ea0d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4vM8zBB7zCYKJWJw8wuRb3FIWLeKZW5OMjqph0+Xp+u4yi3vqDb65GEB6I6FgahcztAbxl1MUbob3OuMx1/Ef8P1kxYnmpqTQgsaHssAGtavx4UAH0WNFI2kAjuIxC7YYqdwKslAeXeXyHvw05irxY58yU8pCOIi7bdeSbuivyQXXF/gEXDcxa1r/C+QDPwYbRsDsBqZAc/Q7cko85j9h9sAk4xNHYWUxxLz8wWw6pmlbHk3frV/IvqCyQ3w+ajZPaXgkZstvLBBXulLEoSxLRsffZnd62tUPnJQG8aRadpFnrRAUeYqDjT4zndjDlQhfCIU4UEivJ5I3EZ09qIMUbL86yhJ8fzwhXqZIRxmGuDCjRN0okIV7/fdhOLSt/gEUmWLhwf9KbUztGmRS8uD3AmQSmEUW+jWoEl6cg0AfwVdfbjELEglJuGGTfZ/2KcG9nqUzzMRHH7Csd5MvJQg5r8teTEgLt0vmOHFDxR/aDwv5ieldfsnZ1TSkUv7q1UsOQafIT7/MrTG8Eax4Iinu9JEswgQ7LvgZpQiejnDxTOsxCjwjRbSnip8kQZPnjmf/e4ZH2rKRWujasHni/UPX6aa3f1ebhNyVB4qQS1+Nx4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(136003)(376002)(346002)(396003)(230922051799003)(186009)(451199024)(1800799012)(64100799003)(86362001)(82960400001)(38100700002)(33656002)(38070700009)(66446008)(66476007)(54906003)(7696005)(478600001)(64756008)(55016003)(966005)(66946007)(26005)(71200400001)(6506007)(5660300002)(53546011)(9686003)(2906002)(41300700001)(4326008)(52536014)(8936002)(8676002)(110136005)(316002)(76116006)(122000001)(66556008)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jrgpe89zsNcNxreq1+pjM+2oeYxHHKxaswtF6GvOMSq1M/s0ugWxEBwUmO3I?=
 =?us-ascii?Q?n26DwVpO9nJleShxhrkuRPc5vKfrDlCSKqqUhhbs3+pDr7oegCViHjYRrW3I?=
 =?us-ascii?Q?5afByPlAFZiPaNIXL/TCwa2dRLvRen9u+EFK+iwJq/YgWvOlXjHNJCDa/mf9?=
 =?us-ascii?Q?/WGTdonthZbr33OBF5K58nlaYx6PlqsFxy6DE+hNjrcFOyP+HiEEjiaSxdeP?=
 =?us-ascii?Q?oPTDOb+IdDibKvufLU6tRVY0HHbNOqcFN3NMjdmEIar2tM1lpfM0MmSAukXx?=
 =?us-ascii?Q?ivJKQCIXD4O3giPtPyF6dRdXvbnu0JRj+PabrLLZ0rGFLMBpo2WBLTb6E9SX?=
 =?us-ascii?Q?TYpv2ygCVp8xUiPMHuaZHQQTzrZVZ5CFoCuuQDFicpVvyJ+SGWGxAVraGl7d?=
 =?us-ascii?Q?+pB3sC34ngns1+mNruEqvf9RvJggNvtABFLyJnc8MmfWEAACjFgJSUQLkBVT?=
 =?us-ascii?Q?BXK9KqtwnN/G45WKNgM72bklmJv8gybYah6/89afJijOrMzvDGIt/KscrinN?=
 =?us-ascii?Q?Uu4ydP515k92mMm+Nt4zXnwPhmIksXM5a/8W7BsOz5GPBFswO7CduZ9YWgqU?=
 =?us-ascii?Q?9OF9ipp/Qdolq81VueUcodIl4qp4+hsKKRtEzJtmWQ7X/XjCDjL/10Y/MgzB?=
 =?us-ascii?Q?FPP1Dt6s2wkZ7D/g4bzhozBDRVsyUl/pSN5YwxsWUfNDeae2RKw5PXULVlPm?=
 =?us-ascii?Q?FJEbPS68+dhTZSBKp7Wlx/Y8xZ8UG0McekC3MmguUqzrzxEvVoKSifrD+qwo?=
 =?us-ascii?Q?DAbzKaZQdHGmShsdhUDklDOa6C1fIh9m36Z0sRJksMQdIQJHqe1kwxeWGBE+?=
 =?us-ascii?Q?NwM2oeCnFkIsuIn+A4PDnr0n9LEXIoJnRZo5EitsNjwP2/wP/VIUvfYhmzq8?=
 =?us-ascii?Q?lOXEWfFlgqtyUdr0iSqEYsiUGyGyqLbcyC55XeCfmviIrNecFF5fg2Q4FtEt?=
 =?us-ascii?Q?R26gE7A5AoKTQ/C9r8wbPVjaRWnJP2uKePzoAORU6mutsXp7d/Kb2bma+jte?=
 =?us-ascii?Q?TtwqYCSaoExVKxyFvQgsGBb3Nme0OnoTR5k32x0xIrScI7xLeRyhOV7WnhZH?=
 =?us-ascii?Q?npojSvnomm+FpYRhowVX40aVOAv3VuNQlgbuPnSVjAnwUDyPrYR80HSj9iNV?=
 =?us-ascii?Q?kSpQkzJ06+XwHp5t9NypmIfxZTP+7ppNa5FEHfxIx9Tw7vjVArbrqNeGhm4V?=
 =?us-ascii?Q?wVIpF3wShTN0nLvI39NdefZtEiLr4C3yJpXyFhiGaxb/6SuO5cV3PJHHv9zw?=
 =?us-ascii?Q?fEtz+LEYwAfndtss3y0iwgR4wdKgPy0ErSSVhb0fB/ywswpFcOtzWOIjeOzk?=
 =?us-ascii?Q?o8W8XNM6osrHO/9dQMAqAfK1FdqxRS0wbEu+KW1EVikRqhlmbwnoOv9d5QDO?=
 =?us-ascii?Q?mmqhnUyumRL9S15iV8xF9ti7AUrcQLAaW6me6isAYwrUTNxuMfVuNr+I38Ac?=
 =?us-ascii?Q?V4EJvf4RZw+hYuJGP+y4cm92Cmu+u4/Or44cR3dT+vnfQrc5PI+5X0MR5OS2?=
 =?us-ascii?Q?WTeWNYZOC9FAiphvY6VnZx5moQtYh1AULN7IHOli32Q04D6Dmk1DxQZnnNbG?=
 =?us-ascii?Q?GvHiVUmfsZNRoazjKJuCTYmpixLBIOjuW8585OdoG0V2NwNfkQVby7R9HEK4?=
 =?us-ascii?Q?MQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03e6a1a1-106d-4605-f6b8-08dbef45ea0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2023 12:39:36.1411 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NU4zRoIpAcUdF5QQfneuqi4TKuQIXHyRq9Ij/hwrMDhJJVQAPHda0bP9bql1DWXO2/WXbJ7B33XDNv2pbXE3T0C68rzS7rOs8kG53z/Lj/Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8587
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701088780; x=1732624780;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=q0HMiOoVi7WUqipaYV5xWctpReAoBSaH0j/ctGU7E2o=;
 b=eTeX9NrKS8jNKmntlLxqwuoUQQokV6OhkXssAUaRHX5d1lsCLo1Rb9PX
 RIE3DDkFjt27nVPqvUlYLh3sc0ZFi4lAZvvqZd3Z8Vg9gL4Tfpt5fRHB3
 ArlhScbUBbxO/Y1Ftu4CI/imJKwCgGVbudw805EjgGqhmhJDGgiyszpQ+
 G5EtTIz0zOJvzaA/z1Fmj6Vns0phDZjZQq822H22FRvx6g2moVxIKAwDl
 WxjJm/8g0hYaXnMXltt7OsQOtee7RYY0PElWNLOhvBE8RobdUL3dTaCMu
 YSq9mW578w3zlkxKenRtUgrZEMcTncwK9p6+UtcB/5mi42u0BkVUADsbf
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eTeX9NrK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Restore fix disabling RX
 VLAN filtering
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
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Simon Horman
> Sent: Thursday, November 9, 2023 6:25 PM
> To: Marcin Szycik <marcin.szycik@linux.intel.com>
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>;
> netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Restore fix disabling RX
> VLAN filtering
> 
> On Tue, Nov 07, 2023 at 02:51:38PM +0100, Marcin Szycik wrote:
> > Fix setting dis_rx_filtering depending on whether port vlan is being
> > turned on or off. This was originally fixed in commit c793f8ea15e3 ("ice:
> > Fix disabling Rx VLAN filtering with port VLAN enabled"), but while
> > refactoring ice_vf_vsi_init_vlan_ops(), the fix has been lost. Restore
> > the fix along with the original comment from that change.
> >
> > Also delete duplicate lines in ice_port_vlan_on().
> >
> > Fixes: 2946204b3fa8 ("ice: implement bridge port vlan")
> > Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> > Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
