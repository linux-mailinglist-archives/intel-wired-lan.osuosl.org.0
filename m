Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D78A3654BCF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Dec 2022 04:50:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BDA9B40168;
	Fri, 23 Dec 2022 03:50:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BDA9B40168
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671767402;
	bh=lYIPEhvwIZUlA7WUt99cc1CMgMOYZ1mvKBBQodQ9QOA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jaAN40pz8nRPYw4ssCK8oWXE5F1Yo3xYOTua56/upWvGeu23BdPf3huDAL2vsMRRe
	 VaTDD6b+gsgaTyrrEKk1FgxovQ2ep7/zPcD/B9ZxY5GX+vxXeqliecWeFgeLuezM9V
	 F4Ig1UbYeo1L2/fq4JLN3IngU4mFgSXIWq4LBqW37yYqhjxRiZHyoAC7IOZhaOV7de
	 9ntcUB4G0oMRuhCyzuUwNF9EzXUJN5WBBw331nrHTxXHcJqoh5MBcLVQsLxWgEUeMt
	 Ell8RL0TRauG+ohFXZLI6s/ZmcBpxBqdHVslrI5ESXLwGj9CPQ5bUixp+FzTUA0C6G
	 7MnHrd/Q/PQ4w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZLknSQ9MEoTx; Fri, 23 Dec 2022 03:50:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ABE66400BB;
	Fri, 23 Dec 2022 03:50:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ABE66400BB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 707101BF909
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Dec 2022 03:49:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4974C81ED5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Dec 2022 03:49:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4974C81ED5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rAD_pyWyGqFe for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Dec 2022 03:49:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7106281ECE
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7106281ECE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Dec 2022 03:49:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="322208968"
X-IronPort-AV: E=Sophos;i="5.96,267,1665471600"; d="scan'208";a="322208968"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2022 19:49:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="776249854"
X-IronPort-AV: E=Sophos;i="5.96,267,1665471600"; d="scan'208";a="776249854"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 22 Dec 2022 19:49:54 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 22 Dec 2022 19:49:54 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 22 Dec 2022 19:49:53 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 22 Dec 2022 19:49:53 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 22 Dec 2022 19:49:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I3NjGXU8I9JkXnvd7DqNv09y5qODtJvmEjSJtUKbLX/kCzKZSX/keXJrTT3EwEFhCklOXX1EHOpa10CusNErtRknPEGC/NgHQCD8sS8i2wGgDT+SBGPooB00CBFppbqdVE/UKJ8wmX+RsKKJ6Y9F6M6k8d3Vy3O5z7jajeBJWCRhcjGBkGTyk5YAfj+pxSZ0bK4pV3i9ceFQPyNRG0mshJQ4sf+HSsInsHORtTvsC/Jleus9YE/2kAK98+FiqOqR0EduLs6ehV7JcRk4pyePHVpgefW0cxmyN3wtKuL8T6aacgCZg3hMXWJHazIzXfUHGvD/XXyosMVkQO4hac32cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LUOo1Vp2CuSPgwoCpgICywrvV9BHPoCxHLBlp1kazs0=;
 b=lZwemes0jWb2TnlRuL8P/MxT2Mk5Opb1aWdvUrdnvtLeffO8nVK6yLHk76f2h1PE94sW83F4kPmJFHJLEC65AFwHAGRM9RITTtjSLDIXB2ItxpeVAWZPFqFxcI0+kBmyfDS9VtxVfejULtzwEiNzrdtiHz2U3StWkqWiQvheZBJJsbE+zrzQ3OwLXhiLUW744kOgejzpylHE8doV7jW9EKkflDRP9Ts9e8qCghbhDRQme8ySzMCMb+9WwTaSY4yXee01HGOkKQU+VIIr7oAaViY2H36TRE5gWGiNs5r0Dk44C+reVIlm0LU9jVdszLKRnfxxrto0iBIh7TLLcvbuyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM8PR11MB5639.namprd11.prod.outlook.com (2603:10b6:8:24::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.12; Fri, 23 Dec
 2022 03:49:52 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%5]) with mapi id 15.20.5924.016; Fri, 23 Dec 2022
 03:49:52 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] ice: Prevent set_channel from
 changing queues while RDMA active
Thread-Index: AQHZE9ZS9VYJJ4GRSE2VZRnw/GZc1q5621fA
Date: Fri, 23 Dec 2022 03:49:52 +0000
Message-ID: <BYAPR11MB336780FF8D5C39DB576E8BFAFCE99@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221219181803.1060129-1-david.m.ertman@intel.com>
In-Reply-To: <20221219181803.1060129-1-david.m.ertman@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|DM8PR11MB5639:EE_
x-ms-office365-filtering-correlation-id: 58a2da12-bc77-4fe4-316e-08dae498bf43
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JlOxdYt1QsdxFnUPmCmT/UYUNM95WGjNbDfvk9lBpiWKZ4IpLJluZrUPf7omDvGCqk/zMq3eqLfk6hLLqSQvnaN3hqwo0MTKZMfls9vz7+8rbgvfHRtpXbZyKHzKk+NOl7+wUws/wAro6/UlJlnuaMy+WNR0XP8qTxZRWO2+FSKlUK/8tWotfR2X3CXjZEO3mpyFCNcd1XHhZclgc3B/uqL7iI1SRyiMqheW0PrKzn8KadyD2MbIHs3JC3Hdg8JvYjHGwT0TByqG4xhET39D6RMAck+R6M5XGIU5VfwZTVgOdRZCiNusqeFxCN0hu026/oZbdk9n5GunLyOQcvPHpazsQj70uc3PbNGxTeJ1LVGEMr06EAjqys+LSIHnrGtk/vWoQ9Z0lo8Q8W2L1M4qNVyMHeObkjSiLqfyJS8t1lxIkNBvcvG99TIAM4SZvzFRNriSC86wH2cuqZSBTBLSsnpR/QFmRgV0pxtVb1C21z4ihMbcEmVqhOkPKLf5C+HGD9UVpvaNfbDj7EKOOKuNpekeLESOMkw6yQsxCX6iYRfq6CUrT6iOK4kdZTIf6g1N7sjBKsVHeald32W5ziWfYoTl+iIW+mqfYdgRmc+HYReQ514LeZ2qOS8KaFAlHp+OZep4lxtbgsOftQP/C/YREMo+GbwubTYaBv9PHHH5+HsGZ4HDHj+5iCiTAdrrbaTXKmAUJfSzLtyMy+lW29a/pw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(39860400002)(366004)(346002)(136003)(451199015)(6506007)(7696005)(53546011)(55236004)(71200400001)(66476007)(52536014)(478600001)(38070700005)(9686003)(186003)(26005)(110136005)(64756008)(66946007)(66556008)(76116006)(8676002)(66446008)(316002)(82960400001)(86362001)(38100700002)(41300700001)(4744005)(55016003)(8936002)(83380400001)(5660300002)(122000001)(2906002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iJ0v+FY+L1xkCR6xN51nFmYQwHz4QldqG/c99HQOsNgb8la8eyM5y8+PnAK6?=
 =?us-ascii?Q?Ls2ToAxakOWQBBnHElLiLLfUvUv7RJDdvaFe9oAT16SMi5Bp6/o1jpCCP7OT?=
 =?us-ascii?Q?T8Sha8Q1ucHNgFvUEo++Ni0/ILiLLINfo6akExIPc4M/1J0yN0r79oukabmP?=
 =?us-ascii?Q?WXjYsXZWn/P2cPszqTnsTYVpVF7bllWt04wpOX9fCQGPAjqRPvTR1kGQSrih?=
 =?us-ascii?Q?XRbRSoImtbp6hMkLKmJXl1/+4zS4wF16JwN/A5M26rAdGXOLISf7f1rw4apd?=
 =?us-ascii?Q?chiDbEQEJwS/sDe5r5PYTSDZTK6kbomvCuJieniJRezVEeDD0YqaTqLKDH/4?=
 =?us-ascii?Q?Um4b6ALM9NlvnbKstjZpp3NMQQGuyA9ig9PfAc31eJvLd/8UQLFZyu3O/6rb?=
 =?us-ascii?Q?a87PA2AkV66MIJDv9zQKvN8e2J45hO/Hc+XlrD0qIJciO9uLhSKGMFUaNtW9?=
 =?us-ascii?Q?URV4KYjpOX/yPrE7gVDPdaIBavIUI0BOhDy9vBHeM+83sC68yWqdstdkWYAc?=
 =?us-ascii?Q?CaloEAmKLgbxMEIZgoZxnvdnVXo82LgoS1hUzH0sJNUjmn2do2ZoSZ9dsys3?=
 =?us-ascii?Q?9QeB7sXPpA2/yXMeLgZAuhUCgePsVmi43xuUEy55qLI384WF37nrk3Q0h5YJ?=
 =?us-ascii?Q?hdJ2wwuGEYrG4OgC7Nf5UvjhCTaLCdznnzjUoN2YKFRUglLvrLm1G8ksSJ7o?=
 =?us-ascii?Q?iklyB3SMrTiGhUKEM8oatRmyR6g3+EHIs0XmqSLAspqYzBKazOBIjWxaoDDL?=
 =?us-ascii?Q?HfW5QQOnxbdK7dGLzS4vjXIm7Jh9AXrcjUQu/YS5eekAVEZMr7fK7ychGeqp?=
 =?us-ascii?Q?zBgkqYBICDGJgSCtUhEEVZgLMdqXtvcIu1VuUzCTqfO+p8hs6pqFedkuSL4m?=
 =?us-ascii?Q?o7ZLN4hs2XuANW/zq2mAiQBiY2Y3JV7K8vKdAwq11LfNMcmHIa0Akneciz81?=
 =?us-ascii?Q?i2v1mq/FuRcJFoeQdGfECLlH7ufGeSQC+xrxtqcKW0Z4iDjs9H5ju0Wz0yLs?=
 =?us-ascii?Q?7+z56H+1bGiBVlP8A9MHv5a8x9nQ729mRTZv5I8VXUUQ/oa5GxdQxHQ47KpJ?=
 =?us-ascii?Q?kBznffOosyLRq3FZcefSK1x6Z5ne9pv3I7lkXKohXvh8hKnIAatddwGh1JMt?=
 =?us-ascii?Q?x4WMSpgln3RYBgPdijwkFc26bWTUbMvIUshk9fg8b8er9n0Hm+zUrowgsPDp?=
 =?us-ascii?Q?gAvSAeLypGSNhCwkSKLh7dZ2nRTHQj5tkRbUs/dIA7Mn3QI2t5xDw4400diP?=
 =?us-ascii?Q?Hmk0Sm1Hf5+Uj1dK4zPkXmi1mEiD0Bcafrzn6THt0siid91DByZFa2oRDx2H?=
 =?us-ascii?Q?X7dG3r+9BVHlLNDuESxs3M9oZy09ZJs9s19xxSSIr7PjPGiJkjbp7Ef50I4E?=
 =?us-ascii?Q?B1gV9OqrD5LMDm6K3HQWnp1D9GTqONeXdcIYLgbgMJ5+viTM/Q1E8arcn59s?=
 =?us-ascii?Q?fjbrpIy0hdE8AgSTvW1nX8oIheFz96Qr7M5jCTMgUElVs2ehwI+MaZ9L5JLO?=
 =?us-ascii?Q?/gIq9c56bl3b4JQ5MXDsCLmhUARCtQjbjAvHbp7D412Y0N2hWT63ICG315nY?=
 =?us-ascii?Q?L3EouZM+itVNom4weO+l+HirLlOPIMefllShYr+3?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58a2da12-bc77-4fe4-316e-08dae498bf43
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2022 03:49:52.0891 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QWx8U5nyc5f1wP4BiQHa1gkOyLoOdwidP6wOMzQi4kJTXDX5r3atO9Xug6MxtaQGPp9kWtGZlfrTpJPz/+uYAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5639
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671767395; x=1703303395;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=j+9MTNVjWVRAVrzPor0nCfti08MFjVrkmd4Z+zJLOWs=;
 b=QK4gu3CdIMN4PYYngqjpm+i4a7HmL+oAAi/fbumLPF0/PbOes85ZcFZs
 x+VeXabWyUUoUHkFn0qLizASVFIc+GT7PFQHY2RwT51qvBaAtqEme94JJ
 NTRXZ1D2HPZD97kFT0YC0CY/1mU8PnDp2NQh5P7Ui0CqvZ9x5vDbNDZxb
 CPDTwOG38k4PQaw5g9YyrWaVtTmP16ptB6k/aA0Q5NhbyUrtH6mwNmj0G
 2N8TtCbNLe6xvrUAGUpXMv3AHQLCvTZpBD2aW7xrmtxx6tYG/UxDLYnBF
 gEWcfx4LlLSsBMxqspa634u/hTRu+KthLNWPwBbqMJrMXrmKtCj6NMDOs
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QK4gu3Cd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] ice: Prevent set_channel from
 changing queues while RDMA active
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Dave Ertman
> Sent: Monday, December 19, 2022 11:48 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net v3] ice: Prevent set_channel from
> changing queues while RDMA active
> 
> The PF controls the set of queues that the RDMA auxiliary_driver requests
> resources from.  The set_channel command will alter that pool and trigger a
> reconfiguration of the VSI, which breaks RDMA functionality.
> 
> Prevent set_channel from executing when RDMA driver bound to auxiliary
> device.
> 
> Fixes: 348048e724a0 ("ice: Implement iidc operations")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
> Changes since v2:
> Added check for NULL pointer
> 
> Changes since v1:
> Fixed typos and pointer reference
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 18 +++++++++++++++---
>  1 file changed, 15 insertions(+), 3 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
