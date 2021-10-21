Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B69B435B83
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Oct 2021 09:16:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9C5F4075B;
	Thu, 21 Oct 2021 07:16:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h4figewRoQcy; Thu, 21 Oct 2021 07:16:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B5EB44066D;
	Thu, 21 Oct 2021 07:16:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 106E11BF865
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 07:16:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0A4F64010B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 07:16:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SPDUlqpKeQv2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Oct 2021 07:16:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6C565400C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 07:16:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="228835636"
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="228835636"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 00:16:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="527371485"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga001.jf.intel.com with ESMTP; 21 Oct 2021 00:16:02 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 00:16:01 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 21 Oct 2021 00:16:01 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 21 Oct 2021 00:15:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FA4t6BZHPYePZT+han1ZQMWy8DdWEOjuAArPAvJZlq798Byfv+sRspYhdsJMK6qz/nJWzSqGNMZOPr4kdzROG1wpdNKNs0yvRVPg8xeMLNzRHlpbML3KXWVJnRHyq3ORzn9vEjBWihlpoMpPebWR5fyXWhhA4ngjBZolRnBq7ppKMyz9H0t1zeCnsUydxL8beaSmsX05w5Z0ne5Ox1dL6zTSsNObxEd0peN+YlOAQrH5x8TwvTjjRbjzYCHSKZ9j01vlWnq7bt3PoOJDDNfEDbZWJuxBmqx8BfGD4wD1p/H1EqZiBzy+Zxe7DV0dNIjeGtyDGhQy7i4gMa5xAgbiHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V3xTtGHjikOwGEmdm5iw4MdAzPsB1TcdOr53Cg7tQ6k=;
 b=cTv/5BW2n85zgfGkIXDLqLUZaaRTWvr1Epo/K6ErIQJgexdOI5i6ebHcKe05BKuBePXbdZRqCZO8DYQb2sXr5qXDLTP7Jv6EXx4/uvG34bCGH0yAnhIueW979rScjl0dO1zQ5f1USh2es6On+yhva4n+mYimuGt8Wr1hB5sI0V2oTJ+ohADkXywWRBhxtb0oNdsXaVpAU/fpq2ur3sDtFMtBN+ryGI2wvIw0nqWcLknWsYFs829VyuGGg+hH1qQ2h0fhOHQ5FI1xOvSwnsnO2X3NpmDWFUaxPchfoBfKL4624eBrJj0IjCYhwQWHsVjaSVfFCDCdQZ98++KXtKDyEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V3xTtGHjikOwGEmdm5iw4MdAzPsB1TcdOr53Cg7tQ6k=;
 b=GYC+Um5GMYvI3cJwMtHEeSdjc5g1kkXS7hzUR7Nal3AoDL0P5VgurA1uP5EUuTlUlu1WWGb1FK2Wcy3GoJpPEj7wkciDVpI/Ll9eR1qbQmhLPqNXVqJJLK3gm/cZLn9u0I1Nj8DtKlWwgchb/8FbFxnOFLV5w9mgA2Kp4sj3TTQ=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3093.namprd11.prod.outlook.com (2603:10b6:a03:88::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.15; Thu, 21 Oct
 2021 07:15:53 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce%7]) with mapi id 15.20.4608.020; Thu, 21 Oct 2021
 07:15:53 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v3 1/2] ice: move
 ice_devlink_flash_update and merge with ice_flash_pldm_image
Thread-Index: AQHXwhpio2/AEyfn7Eya5u6N7CkEAqvdEoGQ
Date: Thu, 21 Oct 2021 07:15:52 +0000
Message-ID: <BYAPR11MB33672479843A7810004CCE2CFCBF9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211015231304.3080026-1-jacob.e.keller@intel.com>
In-Reply-To: <20211015231304.3080026-1-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f1b6cd3a-3976-4380-cc56-08d994629e1f
x-ms-traffictypediagnostic: BYAPR11MB3093:
x-microsoft-antispam-prvs: <BYAPR11MB30937668F59A56A4BD9EEE88FCBF9@BYAPR11MB3093.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cYqiJlemTyaauIz2xRK5QCpTXMoTNgy9HRxbzLjNp13jpgP+FUwj/e6L6oWA+4/Kmb9X8yJee7LIwGp5dZuCAljalUOzi27YFcxfUE5pkqm4BvltY7PMrmt6VfDal0oA0KhLK+Ttz5tDUC9VaRkXavi76vasMVc9Iop7W+5gXhZZ86KDceGF84fNOue098nlmO0xBl5jYWjBKFizJMQprFEbl3gG8Tk7qxodupUCB3NBi+32PrT24iCTzzlo/3ZhSdUeOw4iB2I3JJuuW5nE9NbQNnqOFO7qTOVBQxVGx6aYPIIHAMQqR3CMVVb0e0hy8L10auia68bO+UiqpRMgI4rU4qoEtCQS9Y5E4CpH1IerzjzkPk+FIJ5QxNhKmBCx943L3QSr/Q/dkRMRkIRT5AM1DZa21uhO7x7MXXMH79T62VLHxPLnoCKy+DP9wnhdG4kySkzrrGJHTS1D2QTgyeAJzv0mVzj35UxsK/e6QTSv0ZOOdU1QGj3wjJ3IYRZfcThVJ6FaJb5jBflTGgJRmdTveRIcGcG6x2WPJEX/ucNWBJ3p5IvpeeLUIEABEmi2QWX/M96f5gfG6l+an7qfUS9gwCjbTQ34Rl4wdYslIaSXM4B9wPjIt3CKG3xTiZPAn/Zblqn8wV3QFU4rUo3rIz0YG3iS0wtEGOTEQ6WbZ56YgLkjeVGr/voexhTWjo5CAAKtBK3cfiU54cTr/L+nBA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(110136005)(83380400001)(33656002)(66946007)(52536014)(76116006)(82960400001)(508600001)(66446008)(66476007)(71200400001)(64756008)(316002)(5660300002)(66556008)(122000001)(38070700005)(6506007)(2906002)(186003)(26005)(38100700002)(7696005)(53546011)(8676002)(9686003)(8936002)(86362001)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WGq6WoNdGXeA9PJhWwA5aeNkkwR4guVaYSKmC7citD1pWub93+qu9Min8ug0?=
 =?us-ascii?Q?pXotOxNKJlPtbqCatruTPHJP5Y7ieX7gd0rblJF4KG3+TjOyB1EuNUt6egu1?=
 =?us-ascii?Q?pIjHt4K7kLe5UX33puLrMFSmfVEfUz4iiRtI2lBLC1z03X5olIyXVMexoyWA?=
 =?us-ascii?Q?6+2gdG2pg4Mj/5vdVRz76kN2XnlZYYadHr0Bo9tssGcgeHvOaAzNHgePS50P?=
 =?us-ascii?Q?B0+tHS7tCIOlDFT3rKH2Zi6lmOSNGlBbuvWIQsESoYpimAToQSEzs+c4koLo?=
 =?us-ascii?Q?LUkBa0mY+l3/DfqjeSk6sGCxnLPgt9ChH2XySjno5w97KA9VICIgo8EcI5Wu?=
 =?us-ascii?Q?VGR/RThM6WymehrkRiZJ6QnnaVuPoRzieiI036m+jx9zQcrcHGzD4QLJJAZ1?=
 =?us-ascii?Q?D7jVGKQ8EW8UcOcKsQPbN3mVzzCqjLjSRbn7PWVBr1owrajO9U0s9OnP2kPl?=
 =?us-ascii?Q?L60NUOeE/eBhF4I5nqc7aNwfNOrxjqbnlK6kRzUMpyAkkZFAFukFueS8s+AO?=
 =?us-ascii?Q?VOJycTmYyPrZJ7amTexjRQhjyIwMyrxPGUJScEW2SBaU/uJ4s4CwF2jRhKvr?=
 =?us-ascii?Q?O4azTHBsWNVLy+rzg54YzD9WdJAI/k4dscRQkUf80rq6+aSElBG9v1RopjOk?=
 =?us-ascii?Q?R6edPUp1IDjznqU+XSWMdAa/xziqScJqSr6y3Ci0cnqaoVBW8v9WlSIL9n2S?=
 =?us-ascii?Q?GYmSTJBk12NMAQwFf+BbBK5dKMC3bGi1ZG+TgF5kFsN/xwdlEk9PPhcvr2uT?=
 =?us-ascii?Q?Shgx7941xw4suF7MckiPv+2hosQV45hZpyYGAZldHr08komaMapCu3d4NWYd?=
 =?us-ascii?Q?VN7BsBQKSoif7VFY6yvsyHTmeaxcBUpi+SUmvr59QSdpSaTJKEQRj9cnWji4?=
 =?us-ascii?Q?gVTHkHxkmkWk61+aowABitsR5M203Y6pXnRu0RZi8pVRuTY9515C/9lm3aKT?=
 =?us-ascii?Q?mrrBLWBuAZjEpJ1Rb00sQ0V3hC+FMk0GGuQ6l8T9XwYJ6l2AYSJ9fwPcSFNO?=
 =?us-ascii?Q?kuRfIk52NBbfd8+ULmVtGp/bM2L7XGec+EQR0KktD5ZSlYqoc6+4nfnHwgJG?=
 =?us-ascii?Q?/FFgcfinkZnpUN9YUkINOwU56YshNbCaa7EoeZP24KVDd9wTWASjNg9BVvuy?=
 =?us-ascii?Q?U2zA+03FycQQCF5mVJeTYz9uPmZCR7yAYyfoppfxkSt7a/8xyvvJ86kSH+WH?=
 =?us-ascii?Q?mvssyUd1WVKkT47BRxLsBup0WqKkR/c2aU89WHEW/Lbz0ajpYIM9wUc6HIe5?=
 =?us-ascii?Q?3jOBvK3lM1GDYZ80NWm12ODqXEIPAPLMM9Ax/kvdCGmpe1uR78h8MrMgYJxG?=
 =?us-ascii?Q?xLUWdXen2IHr4dvQbYHbaK7NyocJ1iDq8H3UfNyudcPxYC/7kWgCZqAJRgSe?=
 =?us-ascii?Q?U523w93sgEEEweMQXFx8H2TK9UgwPO43jIHQphhk/yOLNeGRt/VQHA1DDS/A?=
 =?us-ascii?Q?meNBCJyfvwA=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1b6cd3a-3976-4380-cc56-08d994629e1f
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2021 07:15:52.8626 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gurucharanx.g@intel.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3093
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v3 1/2] ice: move
 ice_devlink_flash_update and merge with ice_flash_pldm_image
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
> Sent: Saturday, October 16, 2021 4:43 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Intel Wired LAN <intel-
> wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH v3 1/2] ice: move
> ice_devlink_flash_update and merge with ice_flash_pldm_image
> 
> The ice_devlink_flash_update function performs a few upfront checks and then
> calls ice_flash_pldm_image.
> 
> Most if these checks make more sense in the context of code within
> ice_flash_pldm_image. Merge ice_devlink_flash_update and
> ice_flash_pldm_image into one function, placing it in ice_fw_update.c
> 
> Since this is still the entry point for devlink, call the function
> ice_devlink_flash_update instead of ice_flash_pldm_image. This leaves a single
> function which handles the devlink parameters and then initiates a PLDM
> update.
> 
> With this change, the ice_devlink_flash_update function in ice_fw_update.c
> becomes the main entry point for flash update. It elimintes some unnecessary
> boiler plate code between the two previous functions. The ultimate motivation
> for this is that it eases supporting a dry run with the PLDM library in a future
> change.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> 
> Changes since v2
> * don't hold NVM resource while issuing the discover device capabilities
>   firmware command
> 
>  drivers/net/ethernet/intel/ice/ice_devlink.c  | 50 -----------------
>  .../net/ethernet/intel/ice/ice_fw_update.c    | 54 ++++++++++++-------
>  .../net/ethernet/intel/ice/ice_fw_update.h    |  7 ++-
>  3 files changed, 39 insertions(+), 72 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
