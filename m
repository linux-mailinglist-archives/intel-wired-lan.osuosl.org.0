Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C78124EA64E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Mar 2022 06:12:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7362A4047B;
	Tue, 29 Mar 2022 04:12:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nvcFMnGIxOSB; Tue, 29 Mar 2022 04:12:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7478D40207;
	Tue, 29 Mar 2022 04:12:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7A8CE1BF33A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Mar 2022 04:12:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5B19F607A3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Mar 2022 04:12:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nWxsEvgNtEoe for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Mar 2022 04:12:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9848660776
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Mar 2022 04:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648527143; x=1680063143;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GyqTrnX3MZPcdKYsV77XBXxC1FoSqVQRZJ64kpkTCLw=;
 b=hu6ECSou31gz1hr6Pc7XbdPrE7xBI4j0YfEuCiiICrexhiVF3v7pR0sK
 0owuGsV/GjmLdApApo7TvV9GHh8ZBx8cGRIUoxHqJL02F9AoHszIviUqz
 Eiu1pb9y9wyzHuSL7D+kd2Qxn+bCP3qFi+LFoybCOIz9mWwqoOoSmMegq
 G0sl2vgpPtpKlen8PMsp8EoyZIrviCJNvJuNC9R5sw0JvKsj4KdtvbHVe
 DfGBwcH2+lsFi+AP5hGJEkKr2J3eWsH0KHgx0XZFWQB1vuBNc+Xh5qXj0
 6QrUCK3LtknoUQgTEGO1U5vdLZg7/3XawFOAJ1k5BXGDH6v3GkMoIlkyL w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="284051732"
X-IronPort-AV: E=Sophos;i="5.90,219,1643702400"; d="scan'208";a="284051732"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 21:12:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,219,1643702400"; d="scan'208";a="694585820"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 28 Mar 2022 21:12:22 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 28 Mar 2022 21:12:22 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 28 Mar 2022 21:12:22 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 28 Mar 2022 21:12:22 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Mon, 28 Mar 2022 21:12:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f1MvNga2murh/LtebAUmoQ24zXCDI7Fzc8VsGNg2PvTq9kuBVqtxhpy8UtDxFToeJU3p6vPgYt/yj3HrnsP3bO6tIbIkTg+R/XjduIjFBl3Wo1pYFMK+crdt433QRjSh3sAfffpF/WjCbC5DwZA46ekyOZAsPensltp3k3+zP0fTr0uqt/wYJyqpgk9cN5c+Y0XyGISLACKKWK0W0MRN0lej0l9SXNQkkBoAqLhx/vgGhsWydKSonswL6+3DBZLchgcgBOUOYC9PmHZOt3zwqZDx2qGQGjWMzcz5MMpvOXCyDIvAkYvmUVS166fnp9Old5K65A6f1iQAQYxbg7xM+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4GmraWle751g79QlcBJ018JFXIpSscN26Sa2G15dU/8=;
 b=lKzAQ9sVp5Vt14w1u1dKGiK/31iH8AtN/rH9CWbCl8V/H5FtRNBi9l8EhAVEeK7sOG8iZr/kEcWzBdWV4wRUrKzwPHd15BI05Wz0GTFLqX7ss/rreRqSPs1JoMHFiwMOPLbe+j2TCQ7uwVlga7Z0NMU/32g5F/t7YdvC7XojcgTFBQvcil7A5Ck2bkWQfIQlHIAkcVZjcsCjuQZnjdR7cwqKO61GPeP1S3uXFlTA8rbqOpdESncXiRoVjXpDGrqz7Si8RVHyro1NzAEEZ3YvJMh1zZp5IPwhMS/56ZJhQWgDs6i+vJtl59koYXTq1rZ47xG42XwjbUZlwbO/7pBpkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MWHPR11MB1405.namprd11.prod.outlook.com (2603:10b6:300:21::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.19; Tue, 29 Mar
 2022 04:12:18 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::8113:f21a:30e7:26db]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::8113:f21a:30e7:26db%4]) with mapi id 15.20.5102.023; Tue, 29 Mar 2022
 04:12:18 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] i40e: Add Inspur Ethernet
 Connection X722 for 10GbE SFP+ support
Thread-Index: AQHYQC9554rmsXkA3EKzRrch8NON26zVxcdw
Date: Tue, 29 Mar 2022 04:12:18 +0000
Message-ID: <BYAPR11MB33673B966790C96BB070A2BBFC1E9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220325095456.20084-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220325095456.20084-1-mateusz.palczewski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cfe336d6-b066-4ff7-d834-08da113a50df
x-ms-traffictypediagnostic: MWHPR11MB1405:EE_
x-microsoft-antispam-prvs: <MWHPR11MB1405FD3B3F47BCDCC7BBE31DFC1E9@MWHPR11MB1405.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Oc7WLTTbEKWVFzD80gvIUmLSFY20MFsvv02WZAM0ODevOVDO3DJ/ZTx8bXP++xa4pk6Lo2OHhRE90mEyPml9pOyugc6/EQZTeBc4102vGMyf5wg0f6ZkaUOimRt/Yp1oA5646RiFKdxCyefMuxHeWY+p5SmxSUV+zu1FDp60rhhyoptAjbG4Ag6kT6ahREcPM2I91B/GudP5X0k2Zf6lYJWKoBilZMAc2by8mjgX4DeJcWG7aGG+o3rxwvclA1IUZcza6k/Rr2cKcHyiT+bs2Xoe4E1T8M61jY5nJtN9FFIJIHIWrGt/S/U8YyFm0/j3Rbhr8Y/oAM2AEYCyn95sN3GBVYtkVqh/I6sdQ8CdFORcR85CF3SJW0hR4Tvm7HJjsofrCfTeWDNSMfVV5vMA9Aes47AD8TNDzGWGRMSbV3lUAWo/uPXeQ3Uwh5xbvG7Re1AQz13zNetQxqgqm9h39XAUdCk3S8qIR6l1GnkVln0ZX7/i54xomKuc2IJHlWTHQohMqc0TZlcyRB9/guEWbC5/4TnSmxA59ensCJ1JzpTQkbo8IDfUyPfaAF2uN1Gdy8gAVW2MXZTxi4nV+OOu7mpY15tTR8R8axEq1VqS009CqtuUb0Gtb1OBX/zY1VuDxerutz5Q62guVD8f2aK33Lv9cu+KkCK9p4AEVW/XWzJUD3fqkSEh8yRDxDdDJ29q
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(8676002)(122000001)(110136005)(316002)(54906003)(86362001)(38100700002)(4326008)(71200400001)(66446008)(8936002)(508600001)(82960400001)(55016003)(64756008)(52536014)(5660300002)(83380400001)(107886003)(6506007)(7696005)(4744005)(33656002)(2906002)(53546011)(66946007)(66556008)(38070700005)(76116006)(66476007)(55236004)(186003)(26005)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dwbvK3UvrWjAyA6MiW5ENtaBdFJW2uqDbYqQv/rDvc71VD/I6HkIASLN7V4Z?=
 =?us-ascii?Q?MOajotrs3bKkhdaPhW3FiYtKbbiHTVF2nwGN9U9upWH7FadVmPPN8CPR82S8?=
 =?us-ascii?Q?rZBa0dSgyo8VUvnSTSSvlQKWWOECjiMl/I8jpqNyZSr6E0/Jy8lfyECD7rm0?=
 =?us-ascii?Q?tyCHnIV3cX7//fupLeSfwIDD+79Oa0QJDVglmqZSx6uCyGfjRE4vqsEJ8eIH?=
 =?us-ascii?Q?Mywb4TXXg4FBvgYKd/fJT99rYKKkEsr+citn4XNVO1LtyduvxHeL91Ihi6xl?=
 =?us-ascii?Q?h29aCdsGBwAMd49oik45uz8tOsL4ZCAMnJCnUnoJ1ekhed906DK8eeqtTsMS?=
 =?us-ascii?Q?bh5OOtTSgrrCeQHSPjKyMi6mrVXV5gLXGQjmmQKWKQ6IWIdW9KNR7K/MV9xh?=
 =?us-ascii?Q?wkD1FR65VLLOsipIEW6KUc8eG2wJuFXPWhhM+6atsv42Ptt450J5H1BvKxFO?=
 =?us-ascii?Q?G9nV6KyA7rnKCRK8Le1vWRnHFyEJVcM2PUCdx5VrdYchN48uyL79xQ1aRotc?=
 =?us-ascii?Q?SDPZspZLUVKz1aFHHPN7q10C28nLYMJkLrI09kWXqsPQzkGfOvfWKFZTr+rF?=
 =?us-ascii?Q?gMjWiu8/eZGV2CqtuB4QE8JY/b+y6YgbD5A4pNzMOQG914Q+JMs0Rdj07AK9?=
 =?us-ascii?Q?6DFgtA5FmAm3/U8tqFk/4aA8AOmraVCvssCkLKN5o4+b8hkx8LKyuD7se0E7?=
 =?us-ascii?Q?vof1m77KPbkMx2A63tvOfubwITRAejEImVula0aFqQrob3z1OO3yT5iAkOj/?=
 =?us-ascii?Q?CRzz00iUFMc6T/c8hV5brHOtLwew0MbOrBRxxC4rAUzj90YduA4P9rCQrTJW?=
 =?us-ascii?Q?qQcbpXlnPjEWhrA/aRcTiKvnaG2U+bWCv/886vPXdWHqTV4kT7iVaxWUW9zh?=
 =?us-ascii?Q?S+u+bEav3jQi0M0n2rHowJpRn0J0TSmWrnXoPJa1VOYYnJwy2JmJB3TQvdLs?=
 =?us-ascii?Q?8kqB8TcP+WHp87FXx0G1d3kg4VSgiviDUeVyuK520bWQQE8Z7WDvICkuRWUb?=
 =?us-ascii?Q?qR3KYebscP+31PVi3FRHMliPciRzFxr2jrv2wI+7nY0MpryglxcnfUqlcB83?=
 =?us-ascii?Q?z9VKV96bauJhZPQMnSbsZXPJQP0ua81pkhUNNJQ6TbX+FGWu8+ixB3TZJxqY?=
 =?us-ascii?Q?jyCO7aH9gum7dNHr6eUXFSudSM/B28yqPGsYPO1eRHCpNQgSba2vYjoyNA+b?=
 =?us-ascii?Q?IIMDtjxMM/mlH8lZ+56XHORMC3Sy5SGRHE6TGM5DwKr2QqmytokG4o/XnUmr?=
 =?us-ascii?Q?80B2VKjjZ6hzpRgY+TnzmLFmkaL6MTnbWgGFOLVccwLbkEfuXAirsJACLQFk?=
 =?us-ascii?Q?NRYx+oQKcD4ZQ8I2PwGeWW+jg8bS2T8W8IyzhHZvS/KbGVzwqRCte1mZv0cE?=
 =?us-ascii?Q?rIXycEyJsapTEP48RoQcmbK3kRPnoS+CYDsrW0IWAjenRokArkAk1USVTyjY?=
 =?us-ascii?Q?LLYi+EQRXAnNuqFeRn9qYS0XGB3rDr0ibWYDhi3kY71RSNqW9+eU8pVDjE/M?=
 =?us-ascii?Q?BHhSWi+OVS8UVrP+4zCBUSsKOvvvMVfcrAUH2biOaMPgqjinRh2UeP7FNFfV?=
 =?us-ascii?Q?aoxcghBuwWFcHh2AMp9Y7GaVo9c2ZRF4AIfKowfcYLlwOZj87xfWX/a4zLk9?=
 =?us-ascii?Q?dHkmnaVucWapDVdXzH23WqdDz/uI4asZXYoRKh34EtiB2+XSVO4z40kcSMSO?=
 =?us-ascii?Q?6+Zdl6EirxHYO5FiCP1ar8wN5TVeky1be/GB1wBp+2MduWg/UrHNXE39h6BF?=
 =?us-ascii?Q?XdKtk/vk5A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cfe336d6-b066-4ff7-d834-08da113a50df
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Mar 2022 04:12:18.8187 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c7e41L52rkOOpLPgEqQZb29vK750tM8MUXtmnqKvwGmIj1Fal8DADD/D0M+m+v7aIFqejoeJhVCN59tOpBLV2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1405
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: Add Inspur Ethernet
 Connection X722 for 10GbE SFP+ support
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>, "Patynowski,
 PrzemyslawX" <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Friday, March 25, 2022 3:25 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>; Patynowski,
> PrzemyslawX <przemyslawx.patynowski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: Add Inspur Ethernet
> Connection X722 for 10GbE SFP+ support
> 
> Add support for Inspur Ethernet Connection X722 for 10GbE SFP+ cards.
> Make possible for the driver to bind to the card.
> 
> Testing Hints: no functionality loss for other cards, make sure the device
> loads
> 
> Signed-off-by: Przemyslaw Patynowski
> <przemyslawx.patynowski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_common.c | 1 +
> drivers/net/ethernet/intel/i40e/i40e_devids.h | 1 +
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 1 +
>  3 files changed, 3 insertions(+)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
