Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2312565CC6B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Jan 2023 05:41:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4914D40A8E;
	Wed,  4 Jan 2023 04:41:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4914D40A8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672807307;
	bh=56ahw+4vyTqz+xp8/GuaicHkPc4flKSQ4ZEbNlf+q3I=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rmcmZUYF/Qc9aotRgOs9fGfUBwiwPL5E0gxZgE/DV4q2Bzg/z877mfqBGF0EMOAMO
	 UL7pn3Zig6GZZ3uCRS+S1aV/5txV4+iC4ufPlQVw/xJFO08mrQkpJUa8RKcDxdzcZd
	 gNA41idmwwLrNSfpsRsV7sUvKc8SIuxmm/IaoUHEYKDaLl2oeCUj4fVLzdZNxmRtR8
	 wg89PYA2i+ykU9k8hG4YlSME+5gZsNCL1a7emR6PX2w19pyRmFeM/4FXzV6+QFvaQE
	 2xSv3h9OhMCBSJdXNhFP9csFdwUyI8J9WL2WFoZ2I/n52j6J7o93H1ovhSOnUBLPTn
	 KDI7CWtEdVCRQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TgRgBVv_mVS0; Wed,  4 Jan 2023 04:41:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 49EAE40579;
	Wed,  4 Jan 2023 04:41:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 49EAE40579
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CD5021BF418
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 04:41:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A661C81F0D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 04:41:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A661C81F0D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XQliISc4J12X for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Jan 2023 04:41:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 453F981F05
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 453F981F05
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 04:41:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="309599568"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="309599568"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 20:41:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="655046237"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="655046237"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 03 Jan 2023 20:41:39 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 20:41:39 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 20:41:38 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 3 Jan 2023 20:41:38 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 3 Jan 2023 20:41:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RBMz3yGD0j0wSpaNbSw17WKfx8ysNUr+marlrQklx/tBDblArwppZGXOHmmhpCEz5/0lAx23BULSwppEpxFUmNupp3Y03aptSxu5WsntOfLxBtOpMiedZ2tfMyRG+F052VWP6o1VbhByGkMK3ym8INca7uXTVPZYLFcrOx3hy7FoG/pMnRf1aypXQyqaMTvfLnOflCxezO4oGzYtnsU5WhEPLF+ZeUvZ3B+bPDAfHNyH3wjaF9+xiXVCklOxFq1XaE9LcGrQ59oRUIc+xikXOQ/Je7tEnx4rUTb1R4nik8AT15CjduKxINLOJXWszoQTc+DosgHVukJRYUV0+nLfJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hfoz5vw9142qaFOX58qlB8ZgxoL3BzMAvaItQf3qyJc=;
 b=a21SEBRM73FKQNtM2pcbYUNuI6M2l5g44gedc35Vtw6pNBp2gw21UcRLWhI+omSiA0ScZOXMRpIo5IXV8Fw7OM8kRT0ZFX3/id2rdYdKMCDI+Rm4OnNLgw+nAtsiSnbDUHM3oyIKKzDs5vwxz+qvT+xZEEtHnz0YiFrFSm/m2Tc+07wB0OrGHq49hbLvslfUbyqHLzrkQB/LRwoOsa1WUJKCyKEXil9pWx/85Qwchhpr6uy8lDxp/ppaKPTiuxLPEKguizmlxWBfX6sRPEaspG7PeRmjRvmkUqhLGTbk4WOeRU60O9hUrB18sN1+rSPS4dFz9RavVSsu6Gk0soVlWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MW4PR11MB6957.namprd11.prod.outlook.com (2603:10b6:303:22a::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Wed, 4 Jan
 2023 04:41:30 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.5944.019; Wed, 4 Jan 2023
 04:41:30 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next v4 1/1] ice: Move support DDP code
 out of ice_flex_pipe.c
Thread-Index: AQHZFIx8v6gvdzhK/ki6sgwEvKH3PK6NwuRQ
Date: Wed, 4 Jan 2023 04:41:30 +0000
Message-ID: <BYAPR11MB33671758987FE5D73DF0D625FCF59@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221220150114.3803424-1-sergey.temerkhanov@intel.com>
In-Reply-To: <20221220150114.3803424-1-sergey.temerkhanov@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|MW4PR11MB6957:EE_
x-ms-office365-filtering-correlation-id: 649a1c98-7cc8-4ea9-b2eb-08daee0df2cf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8Qe//ZS100IUyewkdRuQDgjbxNjp/cG38VhaVimJBmU44UvHUBF7w1fbZ2XhN7oZvOWGNXW70AIgG+MCaHRwev082sUXSlulxORT64uPbilzFgBd2feHKFtwAR4HPzP46mBSIbSJEX29wmUfW8mVZOUPngWfZbC07l5PP0muXDO/zAgQAHcc37qgZdhsr2BT5IK0Bj/wWF86bGD0MA5FQtYFhKWQxHq+qk7FLfc630n2srCkfgVWUc4ieXkRmQOQM8C/16s5/fzRrx9/1DXcCrD4/LbjxB2WHP8gmm9dQLSds0bodCptV/N/SPYGg/0SSBMRI2rj5JDJLJvpoZxs2mWHhyc67cqVywXE1mgRiKZ4oLv97fJV6oW4WNxwu23kptGN7ix9h3Y3yI9OgN4MU6MNHMsYTi/1nh9bfStpMgRzqlHZ0hfgU6NeGuPrFe0ZETFfi71rxTDWmZmaCWF3FF/KlluSxL25BUMhutqafKMdYFlzoSOivfappS0YsBUS4ZzbGYimyYLzlUS4yc7Ubd2jd9GrVrMZRu7PCdNpUWD6sl6VMGrSBBOU011Natenhtj2FJ8VHguOhJDw5G0hfcMrxL30fAKylp8L5VYp051ChCoy+veFScKdkyBsWaSmZnQc79EfKTByYrzCVEQ3OgqHGHv0bYPFhTAj4IeP0MM1a/W4djUNsABlBwTHK84v6Cdj0QKh1o1hTHLwnrHgqQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(376002)(396003)(136003)(39860400002)(451199015)(186003)(26005)(9686003)(55016003)(86362001)(83380400001)(33656002)(38070700005)(122000001)(82960400001)(38100700002)(478600001)(110136005)(2906002)(5660300002)(316002)(52536014)(8936002)(41300700001)(66476007)(76116006)(8676002)(66946007)(64756008)(4326008)(53546011)(66556008)(107886003)(66446008)(7696005)(6506007)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?g8KDGuUvVV07qkn8HDuyi+1dBG0EjMzQBIctnSRVRTGbAwZzdWSfOvZytjZB?=
 =?us-ascii?Q?E7athu7kAywWWT7GKKWX9cgyIbjfd2t5Vf7IKiTSQQVP/ddrUUprMllcR7bn?=
 =?us-ascii?Q?d7p4pCMSX3cMo8K131H/PnEZI+42U+myt2GCvBOa2K8YXfsEzKvoAV1/zHro?=
 =?us-ascii?Q?Eh7i14qEVwSolbXbkmn7cfdJKHa61J+bbhPYZNcwCxpM5OMoxmLm7gPCMMxL?=
 =?us-ascii?Q?3zvimgPxYtHwgh/z9mP+u3NHDnqf5uEJvvvkHDmWcP9AvZaC24rPkttV02gp?=
 =?us-ascii?Q?z9Bva18zo/UE/USf3yu17zRt8kOsdj7kMCj4jCAlu+7klUBK+JFZ4o2gdKOF?=
 =?us-ascii?Q?TChN/EgrglHj8pVNNxQUkDjganafUPxUkI3xKIWVyTod0LiX/tAPeu6NVLAU?=
 =?us-ascii?Q?81OEa/Ptlr0zh/9DPa9Bf7qNlAHKCnBhmauOVXJGXGU7iW1T/KggkqyYeGGb?=
 =?us-ascii?Q?02N2qDx4SMKx0YHpialDU7xp3HgThDuKZyJwVOMnK7oN7DtEZ4TFDNqqg6NN?=
 =?us-ascii?Q?Sg0og88zWOpIyVC0kHRDv283v0WHR8lZTfsqQ6HK1MIeH+g4yODCBKVvuhuH?=
 =?us-ascii?Q?UDWnwaEj8QLoNIN103x5QzcAvy7A8dg9rBGqeB5dvKKtNKr4KXGyrsprIugg?=
 =?us-ascii?Q?E3fJbJf92TA3A+QBDw1KOQrCppPqsl0dIkTJnMLo51mBQerMD1VRvk8UsWBi?=
 =?us-ascii?Q?o2k1hVbbdRnaJMV4DYUYFA9RzFudmqd4fpxQUNuEeAKXrh4cXH+4WZVHIMf3?=
 =?us-ascii?Q?WescB8fa1v/rVkgFvk4RarPdkUh0caTisBJhcJ8XOhyhOF4a6YH3lHHStrbI?=
 =?us-ascii?Q?ExbQVPjlyB2JsBggMYpR/GuPQRkHsog0JgnkDrl/YxaJAwlL03VXB3aN7GI7?=
 =?us-ascii?Q?swaGAcAqmZlJm8gay+wltPnpP9haHXEXtFt3tU5Wr4z8bYFn56EUmeLtabpZ?=
 =?us-ascii?Q?Z8pukzghODfeuJK7C8Dm46Q5w1C4ax1/5ia6edlNm5Cg5hdzD18I3Tcwiu+E?=
 =?us-ascii?Q?Q2I7YoJP2UcuQaQfZX1klX3je/+30i/7uONIwsez+p9C1r7J2P8f66ft0FhA?=
 =?us-ascii?Q?ti5W6G8MlYCDJT68ept9NCGbN+xuN6r9QVEDKvd/SsIx2VNkIG8CSACMC8zY?=
 =?us-ascii?Q?AhSiaxK4GzD7cncbGeuGSDaT4P3J+6Gq5KSm7DJxeg367ncuVFVz3RVdRJ0P?=
 =?us-ascii?Q?E/9gUm+6x3X8Z9oyIzAEdrB4+TvXffC4eqpM4wh317EaCJTR21nSokv1I/4f?=
 =?us-ascii?Q?95k63GmW5Wea5r3uV0fT4xOMIPd0oHa5QkEjakow/UGy4dRI0ZSzvDRr60db?=
 =?us-ascii?Q?fRA2E+nW7mxq5YdtWwVxxfOBQQDkGyBX2gTKMEYIkOq5pZ2Xqf9TvZevz0iB?=
 =?us-ascii?Q?T6PQsSptfFq2TF8hHfWEckkEf3mU7TiGsNrJiSMC2Njvp5LflzPZbUFyCVll?=
 =?us-ascii?Q?yOjXV1ISRE8ceCp848jc7O+jDCG0Xm1CPPCFKui6zfg/jw3QRC/sZv0ucKy9?=
 =?us-ascii?Q?tDIeakuYOUodURYvFQZeaE/VFl+esKXnA88hhtB53bBhZOoErQoWnlT/nT9V?=
 =?us-ascii?Q?gEGxtCqq7zv/MZ8L6FC6n+BdwA31JAYRVLeicwsn?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 649a1c98-7cc8-4ea9-b2eb-08daee0df2cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2023 04:41:30.1405 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dJanGXc6cic4d7sGbyxxTy9kQBwPifnzwHpydfjPv6cU4LaFTKpoK/5s6CyytdEDNgXfXllCSLDGJ09hX7Dqyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6957
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672807300; x=1704343300;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=blrxr7Pl0U1ECrNpVbX9zXyVVPNSAEjARbyvJ//PEnA=;
 b=GrpxXD5GfhpUFuoP4kU5zSyXmsQpOp16hyxWY3/42Rf3/pEP5UnX4069
 Me1BaJE8jK2P3xVf0k0s5evGFNFBlO/w/6YGSYWahkIdC30eZaNfxHp1f
 3UFHOc3VvZ2+kBWUoD7Sd7XGIdLaWAd/PZ7JVvr54nrfbOKc6OrRTp89i
 w9DZOLz8KxAbDyokOOt4jJ8NIRMsVqthOx8QbpSNp8NxH82xEIZKj6IoR
 wNPj4k/0q4bVO+n+sxViSv4lAcBo9x8aRHel4HHlvtR8uRvm6PO7yTBiH
 rG1RKuse/fc3KsGHaYgL7gegR4Y28SlWqZpOZpah/ckCiQfCh11Uy4LLw
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GrpxXD5G
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next v4 1/1] ice: Move support DDP code
 out of ice_flex_pipe.c
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Sergey Temerkhanov
> Sent: Tuesday, December 20, 2022 8:31 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Temerkhanov, Sergey <sergey.temerkhanov@intel.com>
> Subject: [Intel-wired-lan] [net-next v4 1/1] ice: Move support DDP code out
> of ice_flex_pipe.c
> 
> Currently, ice_flex_pipe.c includes the DDP loading functions
> and has grown large. Although flexible processing support
> code is related to DDP loading, these parts are distinct.
> Move the DDP loading functionality from ice_flex_pipe.c to
> a separate file.
> 
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> ---
> V2: Incorporate latest ice_flex_pipe.c changes
> V3: Remove double documentation leftovers
> V4: Reformat the code
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |    1 +
>  drivers/net/ethernet/intel/ice/ice_ddp.c      | 1897 ++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_ddp.h      |  445 ++++
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    | 1904 -----------------
>  .../net/ethernet/intel/ice/ice_flex_pipe.h    |   69 -
>  .../net/ethernet/intel/ice/ice_flex_type.h    |  328 +--
>  6 files changed, 2344 insertions(+), 2300 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_ddp.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_ddp.h
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
