Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AA73F4CAEE2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 20:41:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E050982611;
	Wed,  2 Mar 2022 19:41:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m855HsN14a8I; Wed,  2 Mar 2022 19:41:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D677D815CA;
	Wed,  2 Mar 2022 19:41:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5CC2E1BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:41:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 498C0815CA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:41:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8W9kCRyKc_J7 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 19:41:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9F6798151E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646250106; x=1677786106;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=OTtW3Dc867AxIOOSbw7dJ55AZ3KoHqQGcz7c3LMUFZQ=;
 b=mam043/St71hyj5Qc7/U+M9hfqZUMgPUjQMv4hPbXtj0FpMAvvxc6cSe
 AKtHRs3+WIOyTZOrBJk5JAoBNuOXs9tGVIi/TcIqoYErc18GM52X7qHRz
 2mumHcIK72NcIzoVBNhyfJm7F8RMq5lZnWJDloFT3La3ULoqk0JAQEOt9
 81M2D19uhQ5HpUyUSBdiRkuqhUgHMo1MsK3aGYPELBe8uT582dgLXo/7A
 IDUQ6yWeB6AU6Yyf0IAH9ecidS14rhPDo9u8ju+jScWkJ63Jg0U0Mumgz
 G04SDJZ2oHfcBsEi3k7pgP2mmNKom+pwEUGGTMda+J6ZXuLgz2xh4EZDJ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="316702883"
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="316702883"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 11:41:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="508317901"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 02 Mar 2022 11:41:45 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 11:41:45 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 11:41:45 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 2 Mar 2022 11:41:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HzLaMWpSc9ccvOFeLBiD96+izzX3mOHtRuAEWQFxQZuG+YGbQhk/7H7rTS3sBaFKsTFkdItsprOQKCNLXajbTCOSoH94PDuPhRKb3Op3gnxoZ3k6XSPmdxZS6vcpuAZtenTumE3tX8ksmksR7m/PnpkMyt1NxnUBNRZWfYGs0D54K8JxeJ56hfqNXy9osakefR9PijzrR3FXBTr1JkqTMN+8Oa6PwbylminyBshP9RztdFUWFWQF/A5n+6IDwJ7i0D8LWdhX5dLZFUlUYIRMauW9MlZax3iy31gwSJLGIUmrDt/beCW6LqAgHSCr5PYsYXAUp0zhb1TE4nEMDKNHZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/CpY12AeJKql2o6Xb5j/ZCx26GvCsAPa3Z0DjlOzAYI=;
 b=jskxcK5YV5a5TGRxWDIO46pIwP8s+a/iCJ08/kLRibo/7+tNSBoX028O5Di/q4nMWpDctBwzu0uryGpbFkCDcKNW0/anr3YdAhe5FxWKuG4YV4nKZqzQApw8KLmqK6lXGrP1hfcUsMm8nl6S9iU7MUVVOH1arpZwnaEfy0y0Cy7ISrFl4eR5d0D986/h9X1pAqe5MOpRhVZnAAuiUzEV5v4txQx1pRDabWVGSJz9Jy8n/Kl/ywItY8mEHc4znWrDJQhahiW+Ik5O14l50WJPOJBi5nY2LlOXWkILabIZnbMyGQblopYWywjHDIaNIPGj5aQVoZsGXXbfvi1wFmUbzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by BL0PR11MB3426.namprd11.prod.outlook.com (2603:10b6:208:32::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.24; Wed, 2 Mar
 2022 19:41:42 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 19:41:42 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 24/25] ice: introduce
 ice_virtchnl.c and ice_virtchnl.h
Thread-Index: AQHYKEyzhnRCh3p50UeKOf8qsZLZVKysil4w
Date: Wed, 2 Mar 2022 19:41:42 +0000
Message-ID: <SJ0PR11MB5629650A7BAFFA6417908DC0AB039@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
 <20220223002712.2771809-25-jacob.e.keller@intel.com>
In-Reply-To: <20220223002712.2771809-25-jacob.e.keller@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 20eccb92-2185-4bd9-7205-08d9fc84ad56
x-ms-traffictypediagnostic: BL0PR11MB3426:EE_
x-microsoft-antispam-prvs: <BL0PR11MB3426DEF78FC468A1EF2318ADAB039@BL0PR11MB3426.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Hu0/86WJSvo2JWYimiEvAX3wEH9ysMIJX2L9drU0oNCXOokdXx1/pE7PQlXb3TfHBUIctwBPdlZ6B1rp41z55Ven3ku+5h/1jwatst2AtANCCJkNXT8jgltTiYk5oosBtiMjXY2Z1/3pZQYm5XbZsF+gCv4TMdZ6zIKi0/jdkR7aOh0Mgzei8eOB+yu6R1kqGngvQgIa5fIbEX9AI1RJgj520Hkr/SJ3x+GFfDaJjb72UEIVI/WeoWY97RwwQIfSUAf2xh+uQvPq1SDK/S3tJ+t6rnXCMRPxBZaRBZ9AlRDDYfhOxcXVId6GATII4xqEh9zlnBwhu3a/xIAl0FkUW1ghAUT/14ulSSAhwVBfu3Kfz4K71gCDS3hDQF2lUqwD7E4v7r3qpElZseNu3L39RRYC8WCgdpkX5LdJ62sGEs6/K4+/6JvJCy2UeWISjqVVKAzoaIfwZwTQfqonPdRnqts2XZPfWpL/Ij9OtBeaM+Lqe6m4IKY0XZzWHdomO3QVa52ATsPMt70EtuPADEkvFhconePuOpBpBxwjnj0eDiW2iPFSNVKOBd79VZ+Bc+bp4OHEsPLSbcKMhU1kdrVw2OpN4280x/lhscgO9ljO+R3NiUpdq/U7g2FIrcFJGRe/8HarFVMZ7scBd26kHegnxwRCe+6dOqhaSnVJaDUfhp+c3QfCF9QAWey0CIFHv3C3b1irbQ2Kh6FE87ylpFG6tw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(9686003)(53546011)(82960400001)(122000001)(38100700002)(6506007)(7696005)(71200400001)(2906002)(33656002)(186003)(26005)(5660300002)(76116006)(66946007)(66446008)(66556008)(52536014)(8676002)(55016003)(66476007)(64756008)(86362001)(508600001)(38070700005)(8936002)(83380400001)(110136005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cwpsdId25hxIVzJGQEoDRGpsIWagHn0jXgACiMhJL6efZ205LlzcOHgObKeA?=
 =?us-ascii?Q?C1AnO5YI1Xco0ALd82cFN4gzzfU1rvsYQZbRSeSG7XFFz23QrWTe9m0btK7S?=
 =?us-ascii?Q?iyBk609y5W6/E5lhV4hs8oOiRw9mecq9vuNWgY5uuzVwdlUtYxdTegSc49MK?=
 =?us-ascii?Q?ZLCF6ODbVNfLLMg1zkoKIIAoq7TM1eI/j3CRYt20erDkZb3iy3hC6UskD45a?=
 =?us-ascii?Q?zxh99jo2wS27SlYJ0OOpgNaxnGV+HggcEZqHibG6zq4v0NLCmEMjjmaB6Jl6?=
 =?us-ascii?Q?47x0B7VkLObkfKlyuh5gHwSpmEWIQnb4bmH7+AJVqG3LBLWM9aR4vek56y+/?=
 =?us-ascii?Q?3NTAAF/PVmQQOIDDFIDIa9ugsrD6Kiue51uTJqH8xd80x3RuGsUCjY16w85p?=
 =?us-ascii?Q?bIIH5KXjjf6yYLXnj5etA6AYUwCZ/PAYTrG3BUUNBFGQNp/2DCI0aag2PjXd?=
 =?us-ascii?Q?3M7kkiOgCrxw/TUEHjH3Kq3tjUQkHFUdR0sMAG0i5NX9l7sMhLDuND2LUzdW?=
 =?us-ascii?Q?pktOw4PmDtXiciHeOEogGou1mynB6YsQ/k2WGjhfhfcE07L42l2Je4R3apuQ?=
 =?us-ascii?Q?iKenNhSJ+/UzT9vQoc+JfIuHWBgJRm9gbaoWmx0QB7ajBQapRq+n3RPJX/qR?=
 =?us-ascii?Q?svuWMnzbwjtN/qaZuk60xS+jMO4MJoSpfztz+Wr9cI/trH1wk7UaAqxCYNgj?=
 =?us-ascii?Q?/V4GvPL16qzWbXCxGsbwKllG9ENjvU6SrEV3zL4H9YTn6Sagye2iudHMTP2C?=
 =?us-ascii?Q?3WSwdaSdCEVfRy9lnEAZwK8P7RnhFLVLDzjFB77NwswHtWcfk5xcGhFPmYb1?=
 =?us-ascii?Q?J58SxK0i36yOsmRwLaRO1LpXPsQraLJD9LQAokJZkip6+UbKCRqSIsSlD/C6?=
 =?us-ascii?Q?mAfm3XJL/eXuEudVN/OSQgVoSVHlFZvVWBULtNB28nkh/J86Q0CVZmR9usyv?=
 =?us-ascii?Q?GC08+2AGopXrx8BQDV49t4WsZIkJKH5UTav6tjDWpYPu2baIxbM+yi0COF8X?=
 =?us-ascii?Q?yPnaYWw2s5O+0K4WW8mF21EQDVACc/Bu+BgLQQ/OaThpWbv1XivoOax8ZbTR?=
 =?us-ascii?Q?YIpQDEfKB1Q/kTzOM1BpGGEd/1OPJCNOglSShjX49hk9UCPKGQoKVZak/zR/?=
 =?us-ascii?Q?wfxcNIJyRa53AOsVn5xn8EtS9YSLb8ihj7wChUbgVeh6jcZzZJmlbyPmxN6E?=
 =?us-ascii?Q?0Fzm7/OOi4cT0aQiM5IeNjc5Z2KBXxB6RIyZ3YQR6kS/eME+IyI/Ln3hkZ2Z?=
 =?us-ascii?Q?PisX2EidDYkMSZKt1C97bLLUTWZCCINbb/m4uy3j8VYW3ZzUKurH1E0Sux3o?=
 =?us-ascii?Q?oF9V6qVVKXXyjrHoG9gMaSokpfQeBXpUDXgLw7P8HK6eKQprsJ6vGKRdspFu?=
 =?us-ascii?Q?hDTyCyAEzj9zeSobQaETS++JpL2uLeNEQA+OV5IeEnpyNZCT9Fo5BjOItit4?=
 =?us-ascii?Q?MrSgUWvLULZEltp3T5Kpm3b0QaIsFItrxl/Qweju6P2avPZRn/FRoRB72n+X?=
 =?us-ascii?Q?U2wiBvS8iSW3smPSBc7heSByLj8G45Tp+PSaJYyY9dQXMS7zJE4ay3i2ZgQJ?=
 =?us-ascii?Q?YvWqkjFInVkv4DbnQei3/nYs/0HIdAN7dndK+Ox7GTUNN4iEDJuHAlJyltoY?=
 =?us-ascii?Q?NlpbvWX5gz1fCMNgRwQ6etSumrin2HjIwTs6oO8zat/ezrfFnGaBHXM0sDKL?=
 =?us-ascii?Q?QhFoUw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20eccb92-2185-4bd9-7205-08d9fc84ad56
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 19:41:42.2704 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aEGy0F1fuMCnd8Gs8/AY+FjcIn2O5eOiIFvVCbb37kUxIVrh0534hTQyIkGxOAom+0502iotrNuxy82o3Mk/l5ZH6pDTBlJ02SvazemZrY8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3426
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 24/25] ice: introduce
 ice_virtchnl.c and ice_virtchnl.h
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
> Jacob Keller
> Sent: Wednesday, February 23, 2022 1:27 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH 24/25] ice: introduce
> ice_virtchnl.c and ice_virtchnl.h
> 
> Just as we moved the generic virtualization library logic into
> ice_vf_lib.c, move the virtchnl message handling into ice_virtchnl.c
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |    1 +
>  drivers/net/ethernet/intel/ice/ice_sriov.c    | 3771 -----------------
>  drivers/net/ethernet/intel/ice/ice_sriov.h    |   55 +-
>  .../intel/ice/{ice_sriov.c => ice_virtchnl.c} | 1915 +--------
>  drivers/net/ethernet/intel/ice/ice_virtchnl.h |   82 +
>  5 files changed, 89 insertions(+), 5735 deletions(-)
>  copy drivers/net/ethernet/intel/ice/{ice_sriov.c => ice_virtchnl.c} (68%)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_virtchnl.h
> 
> diff --git a/drivers/net/ethernet/intel/ice/Makefile
> b/drivers/net/ethernet/intel/ice/Makefile
> index c21a0aa897a5..9183d480b70b 100644
> --- a/drivers/net/ethernet/intel/ice/Makefile
> +++ b/drivers/net/ethernet/intel/ice/Makefile

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
