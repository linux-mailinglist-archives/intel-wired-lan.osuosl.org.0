Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BED566751
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jul 2022 12:04:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B66160F10;
	Tue,  5 Jul 2022 10:04:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B66160F10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657015467;
	bh=X0X/MyLbgVum/A0OMGKa94c10rg6elsa0pVVS7RtgkQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5ZUrBacW87vJ/RNK73zk6lXMqrhJjK+Aq1WZx8wsX9lw0y1oT1v5pKuCkd6NYSVcA
	 KsP0yDSI4wUp19cVRm50mNOkRprnwPHtehYh9i8hyu+kaFUu7eLzqh450+LW5CQONq
	 7MT6+PJRNvQR0ZcEQCMYKisuc81XZE9vV0aPCSM2NvW252uIoE2NuWqgvUeuwVsACJ
	 3TyeqSuD7dbKH/rfINsVOhTCvZyJw8xyjTVEqi4Yn0GvKrTMjBNXXtXgERGPnUK4VV
	 UhHU67NZV2ahpyrBOpDdgB22cfQQ28k472uLRZIDxmoBhnP4FrDp68Z+899FTy/33J
	 Vx/CQfL8k38og==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YSbDQyE-13mb; Tue,  5 Jul 2022 10:04:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 265F360E72;
	Tue,  5 Jul 2022 10:04:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 265F360E72
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 887881BF48C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 10:04:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6EB3082FBE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 10:04:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6EB3082FBE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KMcsW-wV6HHI for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Jul 2022 10:04:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8AF2681466
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8AF2681466
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 10:04:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10398"; a="280866119"
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="280866119"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 03:04:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="567548609"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga006.jf.intel.com with ESMTP; 05 Jul 2022 03:04:16 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Jul 2022 03:04:16 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 5 Jul 2022 03:04:16 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 5 Jul 2022 03:03:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R9WShKgNpW8C1O2ZURqN3Au/UjLRaBSfvbu/MYo4CuXXFo89eF0hJeH1AUZvx+JTRmzN8fi/rV4pe1Pgs2NnSp1B8szZEY6vjI/VruCu3O/Vemdr2nBPnOuexGVwMw/+5G0NPS8NkgIPMEQb/crXQBGnsDPkn4nc5UtAGZNAgYoKJ1Lyb0iGgXJjx1082Hoe4ZDLgT4jWEiDbi/KqRRVTzjXU5UNdRa4R1To6Pc2oopg9/dRFOeYPHJvHeM35tBsXtFrmkhblQMyZhENrSLI5JHebN+J8DjC4jCopNgVn90bVLFzZMTNbmcrk87Yesdo1gciXFM4WtKxInPgeveE7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O4HFm3rZXRRvZTUrZjtuvoOOkTmliOZQr+/4Ybu6j3c=;
 b=Z6UWzdR36qmRY/svwWhvAg30BpLCaef38akVlMLQezPzNuysf+eFo2A1o8UbIXkPDt/ZQ7XXVSnxuYPwbH1eoneWDF1sYQmLfEzHBv2Ecl89vpTIy8D+5io9PMIJmjrZ5YiMZLBHmpBq9Ka+PHhVRwR+x8JvzoiOsxBwg1lNqZWzgJsKgchgUrXCdnuZ+/QYjLabtZwalN1Hy7dNPct1i/BDozenijZQS6ip9TouEuPq1d8u8WuzTWGuAsPYVgh75K9DXQLFdDaOBKeCC6v8y5QhQ17VrrQsFcc2w4dlaYcH6ZW2T7Eg3Q9w4yfLxrTae5l7d4R1eJ54mJ7jPOgeog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 MWHPR1101MB2173.namprd11.prod.outlook.com (2603:10b6:301:5a::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.19; Tue, 5 Jul
 2022 10:03:44 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::f161:acaf:6be7:8087]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::f161:acaf:6be7:8087%4]) with mapi id 15.20.5395.021; Tue, 5 Jul 2022
 10:03:44 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1 1/2] iavf: Fix handling of dummy
 receive descriptors
Thread-Index: AQHYiCtPi58GjN3zuE+Iq4z0hg4yVq1vnJfA
Date: Tue, 5 Jul 2022 10:03:44 +0000
Message-ID: <DM8PR11MB56213B671C429EB07E1019A6AB819@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220625003302.3501801-1-jesse.brandeburg@intel.com>
 <20220625003302.3501801-2-jesse.brandeburg@intel.com>
In-Reply-To: <20220625003302.3501801-2-jesse.brandeburg@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 052763aa-4356-4390-1b2f-08da5e6da55c
x-ms-traffictypediagnostic: MWHPR1101MB2173:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /lEFyP/QEC6fLALuD78xSWOHk4/Vl/gzUBOD+NyA2a3+/7vd79XgvpmzY3GIi3yfcONLn8gGvBTDRiNHksjm8PhN5AikgbdkiGSg7bXuIz6uDyAMSA2iQAYHbUHor2hbC/xq8Rmw0o8OMFOR+3c4kxN6A2jNeUEZIEZvrbTcmrofmmB9KTFIMCBUsu45VPM+j8PRVksmSJye11aCsnrTR0kV5voRGxtx6mXmej+UEAjxSuzWneS8b5TAsgZdvy2CYg+fZL4+dTLEayr17A9MYUB3kwZQWzz1Od1nUCN9BOJ89dLjc8zn/zz+wZiAJ/gjE11KVrKiDUvQURAp4ErSb3Ae1EDG0I3S+eZs44YuwMrFEgWlwUjlUCyoNap3eAipGu1/t0nQ3c8FjyOndcH1ESUm2T8R2lBViFBP7i8AAuPo7x7lzAPtocDHgIrDtN+YtQreu7GCb+5TV+KXxTWOmjOd0plFKv/XuHlWyNeFVX2pfRwHOnfkT+uE1EcPhUPd+OQfJdVrZL8XTYtM/sLfAF/8fzxA6nNEIQk4f7aHWU+EpxVOCR/tGCZdark5W4iYA3+R/hUfkMuBJ+varlKZSHN2fTEC9FNse5LNtv99PbvsgUlDC7cyM2C6KroG+X4c+bgHZ1Ju1Ogr0yjZRtqA9cNHNvslBL3Zkha4WxYxPzyOG+l3fPcEDqZJGk+p5Y9Nng/0VeU+CtxdmAhUsbKGQuey00YqVPff+uL3nx2zvXG/Hl3Xvu2G2oim9poErFifESUIVUvlzw+G/InydJvTa5f+PhcaWbqzpAeKDgiwW0Opc9tPSTMY5PCCcxAjfMlr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(376002)(396003)(136003)(39860400002)(366004)(52536014)(478600001)(5660300002)(8936002)(33656002)(53546011)(7696005)(6506007)(9686003)(86362001)(26005)(41300700001)(2906002)(82960400001)(38100700002)(122000001)(107886003)(186003)(38070700005)(55016003)(83380400001)(71200400001)(66946007)(76116006)(66556008)(66476007)(110136005)(64756008)(66446008)(54906003)(316002)(4326008)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nwklaS2KafD8eSsHbBcj8cw/WGxzgN8IKMwNGhA/G5ouKujqnBv+PVmqnjNZ?=
 =?us-ascii?Q?DqiMecBnmC3YLphgrFsc/YNXQizOU6IeyIVBYby44Goo+LR+PxDHGgrxrk9N?=
 =?us-ascii?Q?ZAC9UxGTogE0KS7GKZ3Z5eBR0mV2lPp9uLzWWybvNIsJdTtmysLSl0BcJXBY?=
 =?us-ascii?Q?OkJF6JYQe44tP6IDi8NskMWZEHYw1KSNOQEGqf6rnl1aeR2YkoqT/lmOlFEg?=
 =?us-ascii?Q?9t4m9EUsnqI/vrxHYIjCD8AYScKvh9xITs0oOH0fdz7u6M8xhjuxqRDlox/y?=
 =?us-ascii?Q?9/ZQXmRqLXLFd4y4hsCkLd1LIWXmES1JNSxGT7PjnhkdP4wl7yrT2ArnGrFd?=
 =?us-ascii?Q?pIvuMZaRCrQKNAZcZAJlqm3SC28GN09EA7fBhL9alZHaY6TatOCaDn868xES?=
 =?us-ascii?Q?OW/Ea7gKvGFZIYfV7ovLHb0RnBBhnaOO1sUhRV+ufMspzRbU9ddYMpEtbFYS?=
 =?us-ascii?Q?OV460nHjS50d7TnZp3m+agZUCC6RLGhtz2JcfCcp26f19vxiqzj4A3zIhw7f?=
 =?us-ascii?Q?PxqkYvoUZrBtjec5RZOU0LKLV6QIS4OLGXkbQ1rKyy4WwaruweCLrApYWo+L?=
 =?us-ascii?Q?Jh0CsYVhkGE+2Ppuq9kidlZNPLw7cmXI8qBTW3Jsc3imF5bQCDtcDb6eCCbh?=
 =?us-ascii?Q?Gc4To+KOTjzqKaz2RQ4RxEI5M+ZHwR2gfJogZANJ7Iba3aitRwopy4BRXAI9?=
 =?us-ascii?Q?/d2Z1zgLL9JJxsyZEcNt9N+31Bd5nSSF0ikZvMxwY63USc8OZX1pH5FEEs2z?=
 =?us-ascii?Q?4h4mO4mlsbqtZvHYnY5UekYoQ3Ozh3H2KiWtvbLTFNJWuERz103Ina0P6vMC?=
 =?us-ascii?Q?8zGloo64mAxWP6PzSXXFYYGxGNOXkVhwzbmP2UB0hg+UzRNUmTuENh6RxMCM?=
 =?us-ascii?Q?8F0QpGyt6XW4PzZmYudGHLLcX46KJg9/VuJNcUHQplj6p2+eyqwkxbI7E3QB?=
 =?us-ascii?Q?OlJwtvYTmXZ7NcN1vvCh2+ud6wCqTEZ9Psv0sf+ip3UpaxlIwOXmgBtwgWRA?=
 =?us-ascii?Q?TZqfjYdZU+m081wSQBaOiYYKcLsOSkpC2CqQ+Jn66ChGZp+MMecT/DXae6Bd?=
 =?us-ascii?Q?nFsVCrJ/HbIiVZxJo1BUvWKVLRlyKLM/lauIIDTuHKABO68jrEJq5H0hOmII?=
 =?us-ascii?Q?T8E9E2G+x1WBAMLDz9ifQAVptRCFxjZHDeuaZeB0YR0A25FV92UlLj8T27SO?=
 =?us-ascii?Q?oUmpZoW550+KPqVDiTt6HIEkDa8MqEHzoknqIw6imBizUx2Zv3Yxl2KZCpK0?=
 =?us-ascii?Q?chQzJjIjdOxyGNMz+/TQ7iR50lG9bIWf4fx8KlxM0psRqAVUuEvQmJgNt6uZ?=
 =?us-ascii?Q?U+Qm3Fs5vSo7t4pCsr4xdL1OffTMApc/O/AX70/S1C1irrBQo7RQiBAapigR?=
 =?us-ascii?Q?37IWp667kcDrMEo1Y1vevn4AxePuN+Xhyyp98FEYp8TdHDV+373RnEwCoi2g?=
 =?us-ascii?Q?TygQS4W9zeuR5TrBW54OwkHsKwMW/q8zZfDpFIym/gpr+wPS/2xu9vvqTzyJ?=
 =?us-ascii?Q?RAJPhmUIiPkcUdWk9t+XeltxeKf78+qmG27CUBHp/dEPYN/ZAPcj5pDBEt2g?=
 =?us-ascii?Q?NUgm2NMzwxQHe31bYO7vV1xqY5rh2Skc1N7UeN0a+GG3XLUHlYcnTZJfNHt6?=
 =?us-ascii?Q?sw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 052763aa-4356-4390-1b2f-08da5e6da55c
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2022 10:03:44.4601 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JuB7I6oXIHvV9AWSFHthcLmFQlJTkyGDsf9P2v0dp9m1DCxUZgnRfmdZXz3AucRBAUiLE7vGM/bMXm73eYj9PmkJEQhDu2rNoUsytxMIRvU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2173
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657015457; x=1688551457;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=52J5gwqcav21Q0jpvMGKNQvBhkafzeJzn/hyePxP3GU=;
 b=DVW4R/TKzDpfT6ktj5JTMfwcYz9recKdVm8f4siNnb6XjiYUFv+A479A
 9KV3MXzULMpFikv5PszCyYf+GMv5bLt+ichdrSNkfpNy7oey1uvB1KQ+e
 v9mjvRWEyGhJmYNmRHiQ6eRTH5DZ/2SS2TU8jhCZ+GZemZBpNQGNk4Wk2
 FUnS6JXkKOzyqyhWl/CSqtIS2LdMHYhrkUyXMsrbTlvXldsCURavr2d1e
 b3SfGYOkuQZVfPT94R6Oz86YaK+HOdZGvPPmfMamjqRXyAeIK6tsgC1RC
 LBAPVrjjtxPr5aMFZIkgNEVAyTiqo40GynWfwHO3XT673E70n/oDznY4d
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DVW4R/TK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1 1/2] iavf: Fix handling of
 dummy receive descriptors
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>, "Brandeburg, 
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jesse Brandeburg
> Sent: Saturday, June 25, 2022 2:33 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Patynowski, PrzemyslawX <przemyslawx.patynowski@intel.com>;
> Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1 1/2] iavf: Fix handling of dummy
> receive descriptors
> 
> From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> 
> Fix memory leak caused by not handling dummy receive descriptor properly.
> iavf_get_rx_buffer now sets the rx_buffer return value for dummy receive
> descriptors. Without this patch, when the hardware writes a dummy
> descriptor, iavf would not free the page allocated for the previous receive
> buffer. This is an unlikely event but can still happen.
> 
> [Jesse: massaged commit message]
> 
> Fixes: efa14c398582 ("iavf: allow null RX descriptors")
> Signed-off-by: Przemyslaw Patynowski
> <przemyslawx.patynowski@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> index 7bf8c25dc824..06d18797d25a 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> @@ -1285,11 +1285,10 @@ static struct iavf_rx_buffer

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
