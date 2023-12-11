Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF5080C066
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Dec 2023 05:42:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70E85821AB;
	Mon, 11 Dec 2023 04:42:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 70E85821AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702269741;
	bh=nQRrs7w/LyanwpUX33c/B3FbdWx7A1gW90HqJpJd044=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=o2MzBCqfUYJv/FjfqZqEJd+PFGKbAjbMYFX261DxM0wmVaMkEJEkufizTMVd6VSkQ
	 O1EXl0T37JdSOtCr7DGizpEyCY4pGwvAwHbrGajf0ppB7TfWYjHatx4khG1luWDIJc
	 G/QhZwAzJURGOySScpeQMxqr5QBwVAJcbniPJJ0OjQLhiJGRmwgC97UOptUSxy3ILn
	 G1H07U/Gm/Ajm0EcTZHYR4+afBFbG7/3r4/cBIO+vdhKIeZT1XLgpmDVQtnJRG/wcL
	 8I1YLeiPjFJPkcqnIEo/MoVg3m2OBE1QH/+Bfb5aIBlUrFRc7KKwdWnyXZBPZJjcsI
	 e4O1OkC154Psw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pIN6PKYydk0n; Mon, 11 Dec 2023 04:42:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 18A5B82180;
	Mon, 11 Dec 2023 04:42:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18A5B82180
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9BD9A1BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 04:42:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6616740386
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 04:42:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6616740386
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZtkBWJJhrkfB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Dec 2023 04:42:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 47F7840102
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 04:42:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 47F7840102
X-IronPort-AV: E=McAfee;i="6600,9927,10920"; a="480784179"
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; d="scan'208";a="480784179"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2023 20:42:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10920"; a="772896927"
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; d="scan'208";a="772896927"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Dec 2023 20:42:11 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 10 Dec 2023 20:42:10 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 10 Dec 2023 20:42:10 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 10 Dec 2023 20:42:10 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 10 Dec 2023 20:42:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wbtn/BmZ3UyHckjeF838wa8Fed6joOT76kgJ3EWj/jOS6c2S0+zwlwrR3ZsklzrzkanNomaX1jsN3dcYzBPyvY/UGkAba84+O4ANxwuW0H820TO/3/PI5cSpluZ/Hx5CRNHFqP0fgkwFYUxZKyDInsWKicFhP2szDJzz34v3erC8/PeaV9h8s0YXUZjz3hUq6Oju6vejffZUGXyY6AkG6K0kl+LviYprB//tZbIt/oIT0rPrc+MjQIlxu1ZSETRVyJMdyvuyBjtnQRdZiaExYgYh8pObOuyUSygkMWC0mGiIWuO0f4UG4vtZnT+Hr2c67shxQVWP6Cu3BOl0688CyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7M4ANUXBV1K3gSqzANXxyGNdCghXpXp9CtUpxR7hrbA=;
 b=WjTXGHbL8NP6z66dHCsEE282N6aO/lDNPDYic4Xg6M+m/vuN+rgq9GNg6ei8t6BTGJkzVBTgYGpAuloHpELlHiFIwZ3DvAQQWiJvG6KdX3Z1sRRnThNQacUvOr7wI9gIBwHQjCPDYkTj83kmceUt5Vz5UXVkxxx04fEHy7bxW1qKdE7ljpMtTHTpF79WFMCN6W1xOx3nqhTNDaqtjMuNPPpP0DTzOZ7tWyZdL/CVXMiXAp2eZLNJ2y9pjlZwTt7QFzCyNFDokN4+bZ2svcE8Z7jbAPWK3oFz0kvDM7omKE+sAAqpmIaqwSK/hjRPzdLYPfjzSD13JWjUqikmqEyIIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by CH0PR11MB5690.namprd11.prod.outlook.com (2603:10b6:610:ed::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.32; Mon, 11 Dec
 2023 04:42:05 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7068.031; Mon, 11 Dec 2023
 04:42:04 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 iwl-next 1/2] ice: Schedule service
 task in IRQ top half
Thread-Index: AQHaIsFX0uZdUdRikkaTz6AY4o/bOLCjktDg
Date: Mon, 11 Dec 2023 04:42:03 +0000
Message-ID: <BL0PR11MB3122ACC8A0DF4F77DF5EE3BEBD8FA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231129124023.741299-1-karol.kolacinski@intel.com>
In-Reply-To: <20231129124023.741299-1-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|CH0PR11MB5690:EE_
x-ms-office365-filtering-correlation-id: 984a2b63-d88a-4813-9611-08dbfa03858e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: N/8f2zDfIiHIfjZ/a0oULuAghUiK2uHDyjZVoBxy9iZ9TI0mKgSdq+7UySAMUWPbqekIcfKROV3Giu7zAIIxCep8EjCrBZxgzH+KoqwMUGC7765MWQmgxn4ma16mSDkVj4oJ2lCcff9Z/QCE+Z9folnhwizBvxfJmrI2PPeAF+8oyQ9YJB/fpkrcuQCJkNwtllJK0HKrS/dO57rum2r5Ai7cGfS12zr6yWJJfyKyGGcMUb5UlIaIVpgCSDnA74ivURRHNUftAn8YQF1btEiDcTdREy8X/0Zna4Lmq2zpzq1Qdbk40cgbJuAGqEtWALSYW5U1IB02c/XlLLLH+mArX1j1n5LHGSupFNKQKx4BRVxMftbG7NRtD3zqScj5aLG9guG+5wqGZBaX57PFuMXuVXyR8RNklsvHps4B8ddcXWe1GxAtq3VjBwOIZKnu8z2gb5tBrJ9AePOyxpW04Sxou7CWRLu5tXTgKjuRr6ubW1gtVy+ju6q+YX7Oopj7Ud/5tSkfdr21jW2u9pJqnQuqq6zkLp8WNJ8Hvic1UmtCNNBj20zLQDOnTfUosRCP/Th16AIdpcCBn80RjcJYVSqJUKjXqzkJjRlVWuNDxd8+XqkmiXS3+kYg1xRgOypFDSrL
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(39860400002)(376002)(396003)(136003)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(4326008)(8676002)(8936002)(52536014)(5660300002)(7696005)(6506007)(53546011)(71200400001)(107886003)(9686003)(66446008)(64756008)(66556008)(66476007)(66946007)(76116006)(110136005)(54906003)(316002)(478600001)(41300700001)(38070700009)(4744005)(2906002)(33656002)(86362001)(82960400001)(122000001)(26005)(55016003)(38100700002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?J9IQZgZFSm4dD04bIVKdPEbl/GTIW8w4MDB4UV7wm4CSH80b7lSp2IxBQFIV?=
 =?us-ascii?Q?HKYsv2QnPL3PDL7oz7tD1h86xqfcOh/nlgG7GXCmYgf/ley4aKkD9zZ+L/9H?=
 =?us-ascii?Q?PhDw3D12z86Lm1ftA8tNABQ6y8a5vuJyR0OYZEPz83pq8ipI/zbc3vyi6GbP?=
 =?us-ascii?Q?ybu5nqn6H7296za/3+D2ng9q+n2J4Aggy7CUL+e2OWd4teadYgxcVFk+/AKx?=
 =?us-ascii?Q?fHKfEegMSvivjzlEXx49FY5uvkvDJ0bj2/B0xm3BirmEfJy0WT1KoH9Z9adU?=
 =?us-ascii?Q?ZdQBFKu9UbfahgkNR8FXB5pSthVX9t483di5KOgLwl0Uxvg/g6kqkQFbspm4?=
 =?us-ascii?Q?8r4KCK96eEz05px5sekBiyMCGml2xIZxoYZs0nwypVmhlYivWxAunwWqFHXQ?=
 =?us-ascii?Q?ZNbpQ8VzSfpHRNdFlubb5F0uPyuHzwhgqaL1UsF9VpBdvONuCeenOI/kL0GN?=
 =?us-ascii?Q?Y1VQB11MaMUdhS1BKBfB9WCeirKcpVa1O1pKNUpoDANcsGtUand2PG8xdP5l?=
 =?us-ascii?Q?KOtOqaxVdxXmRiL0NUWmSTQj2ouTe/ygrWbQ/zPBv/NKSqHeS8Y6dIY2N0oP?=
 =?us-ascii?Q?XacroM2WapZFsfaAxhvxhhpimPQ3wXKqTiHTVixnJPs1/j93NZYMzWpN1k0Z?=
 =?us-ascii?Q?ZC7mr5VYaVvO3E53ir2gUFVpUUIaeHfnfaUHH2taIszS4vxtJ62eFMK5yX1t?=
 =?us-ascii?Q?5R4G2S+UedxxiXV0Wv2ER/P60GNWARFn4mt+N39/eatmIiIRZIvXMZIBM1df?=
 =?us-ascii?Q?HlIgQxoUI8LZMnqcHHl2/Re4WiMZKdVgUCG2Xc2dNLF4BUgaNOT+AWJAm0pK?=
 =?us-ascii?Q?eU4I32Z0r/l0w/JMH7W5f05uvP81bgOLs+QcTG0h4tmJGsMscxC++vrZ+Ost?=
 =?us-ascii?Q?xK9ti75p+ChjSJa0oBEs3DjMTxb544La+ZHgrz+1aLAHGmPqCMvmi0chhdoN?=
 =?us-ascii?Q?PzHTy8Noakw1phYFh6l9r83BCrQDxNcc1cEK+4eoSQdGcELAAnugoNabDxUh?=
 =?us-ascii?Q?wkyy6Boml7j3PVUybv5fIbDs8bINy60u3ogJw4BsGpkUJSCkVKAAEiQGn6O4?=
 =?us-ascii?Q?wufgEt5ZWcU2o/DKJukahWhPC+/8tqTBQ+a+CW7sFowz53AUynU5560oNb6F?=
 =?us-ascii?Q?LgJMu2f3CnEBlnasxrNIIFB7TO+tNGyImEOkJSkFdG6nWGmcrYcHLyxE/8en?=
 =?us-ascii?Q?UACt2KUxqrrJsLMBuxFcsQ7dLUKTLw60BwsPkbpPx7UKXNPXsYzrkkkB/3TN?=
 =?us-ascii?Q?UEN6VuBqAE9n2Wft2P85DeALCvdIQ571xZrRMVGgDTAZ0hyKR4Vp+K+TBPh5?=
 =?us-ascii?Q?lAG8oIAKh4MLFPWqVIPzLBfZXHCZPlNJDOXURPCXPmQ30QH3hDRtt6lToroc?=
 =?us-ascii?Q?cuhkRJG0vsf0woq1UU3lWRY9/NfAjb1gONhdcpl22vuMN8YUPlJ6JFGqXwfC?=
 =?us-ascii?Q?fR/rB4MqqLqYuDjCkU4CzkH/WBmrYPFLvYDcUf0ivTPdbThEQyo19cBh65QD?=
 =?us-ascii?Q?OY+zzy51llZmzW5R+6x0GkwW6pxQ423lHoga4oT5d8ybhnR//onH8/pxzJN3?=
 =?us-ascii?Q?x7OnkRyv2D1OH16FJbrZVd80j2NJsS/9BUF3iEUaa4ASZt5t/ny1jsaeNuwW?=
 =?us-ascii?Q?8w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 984a2b63-d88a-4813-9611-08dbfa03858e
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2023 04:42:03.5588 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SQ4ZrYYPfM9jygrE/mjCFbo3L6t80Wdh5bBtEzPyqqUYXLqSNjwURMXzLadWFJkK3cw4v3eFTVpSDtle2YwVxecmFfuDKI8RAT4jYM0GsWvrLzef2KWBLKt0zxG/RB73
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5690
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702269733; x=1733805733;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yrY2cZgTPIjQGF3OUP0jtzAopAthM8CfcMv5TjbSQmc=;
 b=klOSGWK0MGZBeutKCcIsO1DCGb07keocKNpBusmA9M7dZ37ykTDEzMkR
 BKQ+dMAQdsn/f24iLDQGbDxNh8/hhWpoya1jOqD2LGO0yqrKgADq4vk8u
 4FGVcwSvinh5nBueRK6Jq3QzeuRNjQz7aSsREoE8Rvkbw/pJst6mcDpuE
 bit0sxr09AiHoO1b0uUHvkxKiJFo57B1F21E5xHi+fcNqUXwakwLmawEM
 i5UDNPEk/YeIic7B9M4GJB56Fk59tGfu2djY5aXG65Kqw/ykRBCAdmWQl
 z+zgkvFsFttNKa12GdjmvrIjP1XqJrFy4X8TCQsC1Viv2u56mwtxIR9bK
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=klOSGWK0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 1/2] ice: Schedule service
 task in IRQ top half
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
Cc: "Michalik, Michal" <michal.michalik@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Karol Kolacinski
> Sent: Wednesday, November 29, 2023 6:10 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Michalik, Michal <michal.michalik@intel.com>; netdev@vger.kernel.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>; Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2 iwl-next 1/2] ice: Schedule service task in IRQ top half
>
> Schedule service task and EXTTS in the top half to avoid bottom half
> scheduling if possible, which significantly reduces timestamping delay.
>
> Co-developed-by: Michal Michalik <michal.michalik@intel.com>
> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> V1 -> V2: Added missing opening curly brace
>
>  drivers/net/ethernet/intel/ice/ice.h      |  1 -
>  drivers/net/ethernet/intel/ice/ice_main.c | 20 +++++++++++---------
>  2 files changed, 11 insertions(+), 10 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
