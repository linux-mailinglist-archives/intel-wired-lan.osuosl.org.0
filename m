Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B21E48112C1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Dec 2023 14:24:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 38C6943638;
	Wed, 13 Dec 2023 13:24:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 38C6943638
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702473873;
	bh=v2Byh94agAWLmrPRskZxtl6qBB2o5WJP/rlLuY9y9s4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ge5pUzUtuZyaOEoU7Q5TO5Erj4qV3hWLKAFD+Hrq+WDNDcJmCkXPpjyJv40rg7YgE
	 fpNZ3Q6u4VOHB+HpHy3miRZp6ZQFGIhk0LDxNoqsPaDIQxNd+Ep0yFDBH1D8qFah6t
	 MS91diqkWm/uXmyIeXfl1zgnc7Ludefxs7aJqXVSLZMYs3ASUlkp0oBhjsXdw4NxqB
	 hgPcko+RgZr6RRX/8uIuxvLkzIDTac1BSt2nHQndz8U1DoYyhpr2VsHbsn0J4JtkWN
	 B5Ug9ZeB9Jn2EudkV8FYkDeKmU9JNOiRJnX3xxdUuWxvkIfi1Uy6h11lF8xUoknEd2
	 N2Qhl3xydcUMg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rfxZeq697A0a; Wed, 13 Dec 2023 13:24:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 851D843627;
	Wed, 13 Dec 2023 13:24:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 851D843627
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4CE5E1BF4DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 13:24:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 234F5615B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 13:24:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 234F5615B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y6h4JFmE0ThX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Dec 2023 13:24:23 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3131160EC1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 13:24:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3131160EC1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="398805309"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="398805309"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 05:24:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="777504880"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="777504880"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Dec 2023 05:24:20 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Dec 2023 05:24:20 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Dec 2023 05:24:19 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 13 Dec 2023 05:24:19 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 13 Dec 2023 05:24:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YE5XdwcgiSz+BfMxDafopgc1JxL9AMWJnwaXsxgUIRcBE0kqWRxbzzeI4OcvZEZaxElLikrbiBIwPKOYKqmQGJpdiAtSPt6ylNkltxr2UFmoaO81LDbPQz2CGhWjt04KaJ9al5Cd7e6/lP5BwAjAOnLFD5QyO3DC5blJrVmXJcQiBWUKeoLJ477Khl0JOBXhDUMUduoiDBtyUpLynVIaDUBrn9T6fxEV3fTjOEvzYkGIswj4Jd4Kyh2eCk751oQxAFhZWWvNtO7urOQrDXBKVqdI8Hhqeam6/gdfzqvQ5FI/j1g2IKe1hmUSuu+oR5qNylAyM3R1Zehm5zSCPBNm4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6sMWDUBvO+pWc35J1cRV0ANhmv7HMMluIcqYDS+a/+k=;
 b=TFbiEr75VxV6PNpxQJJUtPl6rzKNLKClmbl3RAQovQWf9wAVSgDwbYtIBhaJJJX4SYkWTCxKntaty2LsEUIX2qrkDK1gTOpFSpZXQ0JC2Je4XLjg7e6ZzLoHcH7f1aTMewfjBuQA7PLm19FrlFsUlGfJaQLfOgQJiUKWGc2DKM8Q+5jfF3UYM0/h+n342BsO1uRjcbHwwg6qS3Pj3lwx0xHm2T2w7Wu57/8u0S8B5FIK70ZAvLHUgxNHVqQAJ4TvMwOLkqrGU/med4GMOoX/F+9j+JLlKfkrick1/cF74xb2yKGj3GOfl4r6LFYnsJ1xBI6WOfwAV6GI70ala6Fv7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5819.namprd11.prod.outlook.com (2603:10b6:510:13b::9)
 by SA2PR11MB4937.namprd11.prod.outlook.com (2603:10b6:806:118::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.26; Wed, 13 Dec
 2023 13:24:13 +0000
Received: from PH7PR11MB5819.namprd11.prod.outlook.com
 ([fe80::8856:800f:b10:e0c9]) by PH7PR11MB5819.namprd11.prod.outlook.com
 ([fe80::8856:800f:b10:e0c9%5]) with mapi id 15.20.7091.022; Wed, 13 Dec 2023
 13:24:13 +0000
From: "Sokolowski, Jan" <jan.sokolowski@intel.com>
To: Ke Xiao <xiaoke@sangfor.com.cn>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>
Thread-Topic: [net PATCH] i40e: fix use-after-free in i40e_aqc_add_filters()
Thread-Index: AQHaLbNAaiSkUQ2v6Uyk3weQeEBU6bCnM94A
Date: Wed, 13 Dec 2023 13:24:13 +0000
Message-ID: <PH7PR11MB5819C780DBDCE7874637E280998DA@PH7PR11MB5819.namprd11.prod.outlook.com>
References: <20231213104912.16153-1-xiaoke@sangfor.com.cn>
In-Reply-To: <20231213104912.16153-1-xiaoke@sangfor.com.cn>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5819:EE_|SA2PR11MB4937:EE_
x-ms-office365-filtering-correlation-id: 1109c750-1ff1-465b-710b-08dbfbdecc83
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SmMICUYsN9yBJE+zcn72s3Er36qgcz7RG6TOpRmDXuZV9kQRHLU1nJEZaNev1IoU0omnm5ezgQhVINwKgSpjZHF5ZmilDkxzpb96ApBx+rAgV/1Ec2/aQzpm1K//tMubYw8Q43gR4er+O8loTDDSUE8qfKgNLv95w3xj/Z+vQ4TxL6zTI0o5urjrQFentwhrVHvRgA20uWP0iAOtgJkNFfD7G3WHaGM0wa9OX/wMlQJXjg+Wh87v+h9n3vbKucnofZcIvTdJXdDZc80NursdEeQv0jFVfVCj0ww8ceOkj5P0OfVMc2AwVoZLOdEmJI41tQTGqCLSztAwKd9W+V7IlEUcLOHZlqqfEx+bVEO6Ut732KExT/yjf/N0u0NbMHCS4/BmrT39/I1Tm8mLn0R4Ow7asr7pbIXU0j7lIqH7DOJAwl9vacIMVrEX9XTUpts4B/TOIAmr7MS7PUKviALQ5YqWvhPH5x+AXSCMOmourI7qkVIxIjaQciRsVKESNP4dJSJyQiS0GwkRMqW+8JqoQ5F8aNoPPgNxVo27bf9dmNi1w5GHn4XC3GB1Qvju4gSh+kRrc06WoOeO2Z9HGSlGBBUEgOb4NtcdRqCjLlPcply8YaboNTtlUUXMaVtqLECB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5819.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(366004)(346002)(39860400002)(396003)(230922051799003)(64100799003)(1800799012)(186009)(451199024)(2906002)(41300700001)(82960400001)(66946007)(66446008)(33656002)(64756008)(122000001)(66556008)(76116006)(38100700002)(86362001)(66476007)(9686003)(6506007)(478600001)(7696005)(71200400001)(26005)(54906003)(83380400001)(7416002)(5660300002)(38070700009)(110136005)(316002)(8676002)(52536014)(4326008)(8936002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1cg4b142/sMClskYkzoGgIgJP8/B6922eUAOBpFF6ryR6BePy4OyNxh85sIr?=
 =?us-ascii?Q?5dwRc4STcx/ypZV36hiIAgxdfj3oyzb2ZUo270gR0uJ1gB6ZF4f8FT//48r/?=
 =?us-ascii?Q?EENqwgwzVz/LutznTOuiW/OcxveNVRmlYyRgjCdrSa3rAgwVquLHxgp3GpJk?=
 =?us-ascii?Q?zwX9qFfuB+RAlLrIxSE0utS9fT3GUBRKS9siE+kbXmUO4lRNophdQ+PGt4tS?=
 =?us-ascii?Q?NYFOjJcazO2Ke8GQZuaP7ayC4x5i41Td2pShq96LH/+eYtIOWZOZ1xbZdyBk?=
 =?us-ascii?Q?nF8n9UUY2cuVFt9YCOer0ozcAPfB0PXJfoBu/5Bx/phxf8m+UtL9mw/Lbs8C?=
 =?us-ascii?Q?SJPP9h4f2YAGjSNmmUgd5WNGYdCHqwAA7t+r3cL88dISeFAJw8yanx2aRT2I?=
 =?us-ascii?Q?4ah2eFjBCOq12H40UvCryG2M4qLVVMIsGuaKzn2BBPI0Hbi71M7sj/ocJAOX?=
 =?us-ascii?Q?4ffxAIVhD2a1GOJ6Riqf0bBC1nYgMxdr0odOJ6YMT/q6hWyVTKrVbWmPVeiy?=
 =?us-ascii?Q?xOZSz1f7iVm+eJZ6FEg61DtDWtszPyriRTIDfQKcz6C+nGJ2i7VAE2xIm0XG?=
 =?us-ascii?Q?BB66LZ2giOy0UYHswZOUZPqUUdHz3iLnf9ba84TFqsma/GxxXhst8bBInDh4?=
 =?us-ascii?Q?pmWslW2JsBJETooqUckqLx6iz3Fgd+Kb7nUvfcJW/jV0cZ2Ae6iq5nTvJ2Qe?=
 =?us-ascii?Q?GAqTkOMdn1Qg4BEK3ZoMMxRmV6BqL/3bq8tMDT0zEPiuQs+Jdul04rmscWqI?=
 =?us-ascii?Q?P+pVqUJ6IcZw6IXWpzDpaJPgptK948ioGOl/xA4zbVezTlTYEuCgE6M014fP?=
 =?us-ascii?Q?nC46XP3tTriOMDoVt8Y3K4i95PK071R8nP50HCU1U+L2sBdMABe1WxdobMwM?=
 =?us-ascii?Q?tc2UxdPsWCKK1LauDrr+qUeT52VVFCN7XXba5wpzwALQZqKc+uDUHmiTFr9/?=
 =?us-ascii?Q?/QLMcERj0Hv3Fotc7+dj2RzYeG3gqQvHbTbX8VeF7KzVXv9iVx1YY0oBlMa8?=
 =?us-ascii?Q?B8wHHCHa+/l0wPfqxmVgT55d1VNIXHnsm1RSJTfkvfOnKuY/wvsPAGwMI9p/?=
 =?us-ascii?Q?SMWwI7gbMSWyutI8TJ4BREM9MI4AHNjemOPf5diD4hn9yKRN8OXfn9fm3JTp?=
 =?us-ascii?Q?p2U9y/UOwCABVD29kIEoEpOZZmP3GKNBRsmC9GTmT1GjHOS8Rfh1+FpSS6wD?=
 =?us-ascii?Q?4bKGjFaDDm5u5ZS65rZuUYz1PvpyMFZjhgSwy0U0YMNKy0+MUWe8hWzavGwn?=
 =?us-ascii?Q?/4bhC7/FWKF+ZwB26IWopRffbsm6LLExO4Y82HMK9BRmzUnCTt6Gb0PFfq70?=
 =?us-ascii?Q?UHX3mlcG+CcjV3g1OXa1WyEroCQscb5Ve7nhCWaNi2r/zaOJk+KlfoXadEHF?=
 =?us-ascii?Q?eV/vFf+ZUQaBrBXuPJ3NZIJNP4pf/RvGvltnueYR5XWH0SOoRj5npePCTtK+?=
 =?us-ascii?Q?JXq5EBtKM8T80mZT6YeWX7fEwIp3ahngGllXyQpzjpe5Gar9PoG4zMtWDl65?=
 =?us-ascii?Q?W5dItff226C9Dgr336w6bmW53V4wrfsQod9aBzFb7kzslufM0EKc/ga2Pu+6?=
 =?us-ascii?Q?GlrnT8uNt1jxhNx88XALGqHcbiRNxm6g1Y7jfK7n?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5819.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1109c750-1ff1-465b-710b-08dbfbdecc83
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2023 13:24:13.5353 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SjccN2JGPNLuxgZXRr8kqarL8FYioO3/svSi5PqlxC/PaGLlI+eh+Qj+LARaW7nDQiBScgwQcV7g1+aKteqofWQVGtWbn6eA3xdoDK1C2WQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4937
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702473863; x=1734009863;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TptscijRbGi1I7sWolir+ug/OBQ6eM9ZI6PgdnLobNU=;
 b=F3Ae+yxml5jEo5LMhkFSmUwvtfsCjfa+olLl2gknINM2bNyY/xGNFrln
 vDYuwhsX5TnKm6XCJetlnsHnlYt+m7+UZ71n/1beUAIswCKvHsktB1zFy
 coauwNBaLnhYHWEY7/0PFmBs/Cok8u8d5D9h++y0qqhJ3EdtrEANGdESw
 iHVVQIVm5B8fzow8vXh5h1sUZBJGm2HUKbJZDg7ngqFpiOt4V4671VtKE
 Zi+cKk8dg5rf4RcTWNT86Wkiz5JIedEBwWAkgIbDWT9yvQ8JA0QhBhQLf
 RY5P980759gfY8j8Mk56F6h5Yc7abBM3F2XOm9dnYDLuEb8EeUk7gRynt
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=F3Ae+yxm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net PATCH] i40e: fix use-after-free in
 i40e_aqc_add_filters()
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "zhudi2@huawei.com" <zhudi2@huawei.com>, "Ding, Hui" <dinghui@sangfor.com.cn>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>Commit 3116f59c12bd ("i40e: fix use-after-free in
>i40e_sync_filters_subtask()") avoided use-after-free issues,
>by increasing refcount during update the VSI filter list to
>the HW. However, it missed the unicast situation.
>
>When deleting an unicast FDB entry, the i40e driver will release
>the mac_filter, and i40e_service_task will concurrently request
>firmware to add the mac_filter, which will lead to the following
>use-after-free issue.
>
>Fix again for both netdev->uc and netdev->mc.
>
>BUG: KASAN: use-after-free in i40e_aqc_add_filters+0x55c/0x5b0 [i40e]
>Read of size 2 at addr ffff888eb3452d60 by task kworker/8:7/6379
>
>CPU: 8 PID: 6379 Comm: kworker/8:7 Kdump: loaded Tainted: G
>Workqueue: i40e i40e_service_task [i40e]
>Call Trace:
> dump_stack+0x71/0xab
> print_address_description+0x6b/0x290
> kasan_report+0x14a/0x2b0
> i40e_aqc_add_filters+0x55c/0x5b0 [i40e]
> i40e_sync_vsi_filters+0x1676/0x39c0 [i40e]
> i40e_service_task+0x1397/0x2bb0 [i40e]
> process_one_work+0x56a/0x11f0
> worker_thread+0x8f/0xf40
> kthread+0x2a0/0x390
> ret_from_fork+0x1f/0x40
>
>Allocated by task 21948:
> kasan_kmalloc+0xa6/0xd0
> kmem_cache_alloc_trace+0xdb/0x1c0
> i40e_add_filter+0x11e/0x520 [i40e]
> i40e_addr_sync+0x37/0x60 [i40e]
> __hw_addr_sync_dev+0x1f5/0x2f0
> i40e_set_rx_mode+0x61/0x1e0 [i40e]
> dev_uc_add_excl+0x137/0x190
> i40e_ndo_fdb_add+0x161/0x260 [i40e]
> rtnl_fdb_add+0x567/0x950
> rtnetlink_rcv_msg+0x5db/0x880
> netlink_rcv_skb+0x254/0x380
> netlink_unicast+0x454/0x610
> netlink_sendmsg+0x747/0xb00
> sock_sendmsg+0xe2/0x120
> __sys_sendto+0x1ae/0x290
> __x64_sys_sendto+0xdd/0x1b0
> do_syscall_64+0xa0/0x370
> entry_SYSCALL_64_after_hwframe+0x65/0xca
>
>Freed by task 21948:
> __kasan_slab_free+0x137/0x190
> kfree+0x8b/0x1b0
> __i40e_del_filter+0x116/0x1e0 [i40e]
> i40e_del_mac_filter+0x16c/0x300 [i40e]
> i40e_addr_unsync+0x134/0x1b0 [i40e]
> __hw_addr_sync_dev+0xff/0x2f0
> i40e_set_rx_mode+0x61/0x1e0 [i40e]
> dev_uc_del+0x77/0x90
> rtnl_fdb_del+0x6a5/0x860
> rtnetlink_rcv_msg+0x5db/0x880
> netlink_rcv_skb+0x254/0x380
> netlink_unicast+0x454/0x610
> netlink_sendmsg+0x747/0xb00
> sock_sendmsg+0xe2/0x120
> __sys_sendto+0x1ae/0x290
> __x64_sys_sendto+0xdd/0x1b0
> do_syscall_64+0xa0/0x370
> entry_SYSCALL_64_after_hwframe+0x65/0xca
>
>Fixes: 3116f59c12bd ("i40e: fix use-after-free in i40e_sync_filters_subtask()")
>Fixes: 41c445ff0f48 ("i40e: main driver core")
>Signed-off-by: Ke Xiao <xiaoke@sangfor.com.cn>
>Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
>Cc: Di Zhu <zhudi2@huawei.com>
>---
> drivers/net/ethernet/intel/i40e/i40e_main.c | 8 +++++++-
> 1 file changed, 7 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
>index 1ab8dbe2d880..16b574d69843 100644
>--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
>+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
>@@ -108,11 +108,17 @@ static void netdev_hw_addr_refcnt(struct i40e_mac_filter *f,
> 				  struct net_device *netdev, int delta)
> {
> 	struct netdev_hw_addr *ha;
>+	struct netdev_hw_addr_list *ha_list;
> 
> 	if (!f || !netdev)
> 		return;
> 
>-	netdev_for_each_mc_addr(ha, netdev) {
>+	if (is_unicast_ether_addr(f->macaddr) || is_link_local_ether_addr(f->macaddr))
>+		ha_list = &netdev->uc;
>+	else
>+		ha_list = &netdev->mc;
>+
>+	netdev_hw_addr_list_for_each(ha, ha_list) {
> 		if (ether_addr_equal(ha->addr, f->macaddr)) {
> 			ha->refcount += delta;
> 			if (ha->refcount <= 0)
>-- 
>2.17.1


Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
