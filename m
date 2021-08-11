Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F523E89B9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Aug 2021 07:26:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C39908321B;
	Wed, 11 Aug 2021 05:26:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W_sWOARFn7Zf; Wed, 11 Aug 2021 05:26:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F2CD82771;
	Wed, 11 Aug 2021 05:26:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7BE241BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Aug 2021 05:26:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6AA098274D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Aug 2021 05:26:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oW0wnWPhuKXL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Aug 2021 05:26:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4C11782725
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Aug 2021 05:26:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10072"; a="276092310"
X-IronPort-AV: E=Sophos;i="5.84,311,1620716400"; d="scan'208";a="276092310"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 22:26:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,311,1620716400"; d="scan'208";a="439599370"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 10 Aug 2021 22:26:05 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 10 Aug 2021 22:26:05 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 10 Aug 2021 22:26:05 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 10 Aug 2021 22:26:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VqIoPTtVY4qW8BOLU3K2kDqnIKa0k5BDD3sWOigecyLshmgKFl9JaNLBEutAK8DNPw5XPcVf5f++Mt3H+KG1GxBSF6c5/bRhFkLkvCa5SUOMBQeWzFktbWPpF/fZBpKYewuft81EaPtxhoDJOic5dh5P30EgB+dRhMYaYXrlkuMeZmaIwSiVYLo8fG8EqveniCICl16S32rGtjx7P20Vit+xrapnJgF0bnVYISAEpemKK70oxx1FyMMLZxXNjX/vCbslrNCM4vgHn+NNgfvPpFfDNDuiz13r+GHv9koC3SHoTdr6WCN8axoXYps+Pjcr+nKHF7aRMqK5KNorXVUtbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c4yTQHwYu0A5PpqB4b8UAJuh6w/vJv2RAy2zdTVInK8=;
 b=RenD9jndCLib6G0jpBccImshhqj1MREV0dYUJg01R9EGqnOm5/X3DgLx1sQ/wPjUGNmTvFjD5X28R9+InKDj3Oawr9UO65ykV02DuVe6yRMkp+nFGIDWey2ZpgTDikTdT48vP7DbLnTy4njUdP3biFn0VCN9TZb+uIt//9qj8W3mx/KQQUJZoWDyaU/dBFiMbPX8IPfpPrg21HxnYFp5ldzohCu8fCmxVI2vy6uXT67bFjWCqTTQj/cbkXnLyf5KtJg+uROAl7friBkKKnzFbqK/qUH0LVecSCBI7MBylqYeXY6ZptNcEBiRbZ7yIICL7Z0er7XkrrPWghwHa+ho4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c4yTQHwYu0A5PpqB4b8UAJuh6w/vJv2RAy2zdTVInK8=;
 b=WmY5vu1ug3y0qYydCv49AoKD6pMx/kEKrIOXujmhBMSS83V3qJOkdfTitCe7g7TgSCd9XnS6uX1vbVHKoZyZWda0faL3nbSo7TG33IgPmXzJmhqbNgOvxOtFA46AYI2ZNEdkNhEVtMLi1RhhpAuE5eX22WuvD6oEh6gJ/chyLPI=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MWHPR11MB1486.namprd11.prod.outlook.com (2603:10b6:301:e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.14; Wed, 11 Aug
 2021 05:25:59 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::c890:d669:a46d:eb03]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::c890:d669:a46d:eb03%3]) with mapi id 15.20.4394.023; Wed, 11 Aug 2021
 05:25:59 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 08/12] ice: introduce new
 type of VSI for switchdev
Thread-Index: AQHXaauaE4DyYiuHu06H/k1cqQDoA6tuD0rg
Date: Wed, 11 Aug 2021 05:25:59 +0000
Message-ID: <MW3PR11MB45542C9526EE932496D77E249CF89@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20210625024501.6126-1-michal.swiatkowski@linux.intel.com>
 <20210625024501.6126-9-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20210625024501.6126-9-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2a42066a-3d13-4bfd-d402-08d95c88808b
x-ms-traffictypediagnostic: MWHPR11MB1486:
x-microsoft-antispam-prvs: <MWHPR11MB148649090D55CE294A5C83219CF89@MWHPR11MB1486.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Hecs4kENkNL6qckP+i2quoYuvZPLWsvyJYcfDntBiQY6LMpYDj80vu2dKuoRk+zfFjI0iPwlLTZG//lBbOEZJEVvwDSpNHzkvtSaPJhSDstkCWHPSYAN/8Vd8/8dOr35a+JPtupsNkcSI9x7Bof8z/aDCO2FBvDXlnA1PC7cZXjehPC3kSjGg/Xe+dvd5/IqGqdKADan6y8dlala1B6N2pr29pV3byufFTHU6R/u38JzTspwbc2ql0vFJ9TvXxppjw+irSEosCgdIKKtEOnWLO2G3EjvCSZcK1WPNlrjWwuPGlSAj5pdJ1yU2W0fhIl+ZUdjOEEdn2Lox7kNsel1jf1FtM1Ta+rsIUAVoaZoI38lZrYW6xXqzWcoxv+Do2oN9obWQx5Xy3kC/S06+3AeDUKU/I0/n3bWPwJDOfh9JKJi7cmgbMOSG7ZMZ+kiKX2uZ4OA5wJk0IsklBrFsyH3Z8XsknzQaIINNqGY/89B0b+k5uDC+4fRkGIoZTYx+3+6hW8Vvdjf3EMptIeqIgTBUjVCLXidWAwHWEhXJ1IZjboXrOODolrMda1PZwcJZZ3zjUswy7rP+U8UiAbQellyZOFZKMtFIqTENvHQkYdI1t5TtoCjSRwNTsl3EusWFEEiu0DmtTluC7/xcHR+sbtFaTIc0bu41wdnPdz3eb2BJ7NW0mOJsxw1Ulsx+1WVs8ZS6nkutJzy7vEcNULSMK8IJg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(136003)(39860400002)(396003)(346002)(376002)(478600001)(2906002)(52536014)(6506007)(38100700002)(86362001)(33656002)(8936002)(122000001)(5660300002)(71200400001)(26005)(64756008)(83380400001)(186003)(66446008)(55016002)(110136005)(66476007)(7696005)(316002)(66556008)(38070700005)(66946007)(9686003)(76116006)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?v0hWiqp3nGx8YgO6OqgUHNlOpD+EqaA2Evg6Cq+qcXcbXVpFDftaZltIYSRA?=
 =?us-ascii?Q?oWYeaXxfEuFmA3O7ddiznGBcov0kvbKgeoBzRq4bQVsFVok+okMO6Exnxc/f?=
 =?us-ascii?Q?4f90fMRcZgEIT58L565El2M3jR+55PQFfbiSHThGkXGur2wNQCkc3G7ksMAY?=
 =?us-ascii?Q?DUu0mhhovKLot9NvdeoH8baGb9ltcRt9sIVbjaXyHGcu6gBWw23+UC8kUWWE?=
 =?us-ascii?Q?8xFxJpq4Z4RkpsBFqeWCW3HVHsUg7JIdUPEtCqQEGdjjqfwtrXpJ6WrJvq6s?=
 =?us-ascii?Q?SpSEloPLmS8nGE2gbe3YH0RBWEVFOvQg3il+rVI+CnYmgfK4T5c3UQHKEZkn?=
 =?us-ascii?Q?MyXk3z+qY4FYp4is0lABYgcTDegfSRs4XOCWF8elcTsFvy3o1GPamDuKUA7k?=
 =?us-ascii?Q?WMdiX6ips+nhYUGlPd3VUYMP/U8heRcf1M9GYeBH4PbffJm04HEaYxjpG67W?=
 =?us-ascii?Q?m0iNCk5IyVE52hcwy1blft+lbFreV/N5JWM0a3YIvOK5Zr+KNXS5PxGhM6EP?=
 =?us-ascii?Q?GmSKAGFo3HJSi8VEBz3C8DBtGmfJ4uKmnroYs/saniIQIEwevpP/lfJuzNXn?=
 =?us-ascii?Q?avyrmpXIEPzGhkoi49yMo9ypZj8nZ0VL67w811iY6EdO55WZ02hZn/tm7wRG?=
 =?us-ascii?Q?FpB+cnxRM7U9J0uk6+vqthgVolamFNygXoiyPziIUaJM+l5k+UkRrSuvaRnc?=
 =?us-ascii?Q?ZyvHA/NBpZrhFrS69TF376clvyBhv489WIHkiQVFEDMajvnII7l2wOtbc629?=
 =?us-ascii?Q?IjIkScuDWMXDYSqIQncxuIchkgdIwFWiJWZwfyvseqkboRoMNl6Dd0ylrxF6?=
 =?us-ascii?Q?hGXnHJ1Q5WJZ6hihRA7kBtx+C20vhL+aHKS8AZFMzBKWXOM3sjz6cw8Js/6C?=
 =?us-ascii?Q?0/Xtzu8DYeezMPtiHRtidfQCHyFv3zIoTBRWqGqfhos0EpQ4WJg5mwhlHcsj?=
 =?us-ascii?Q?jRCoNYUUUZ4mYc0WI6u+IYB86IrQA/DiySpd2HQx66DDITuK+zUkgHCty51Z?=
 =?us-ascii?Q?NlQj5Bg+5t2hr6fge1Sn78TErHNh8SorVb46boZS+z7GdGnBpxQ3Tckk+N5x?=
 =?us-ascii?Q?SbP9RBKXojMPR4d0feYoMxyRgnHZnsZcZFx/TB4UmKARXHxzkODhuk4dhQ5J?=
 =?us-ascii?Q?2vkTuAICMRTwjmA5Wwg3Zn+XKtigk70k+Zn1bLVZR2AM72NZZGgV/XSv39sv?=
 =?us-ascii?Q?2aL3IXbQw0Edw1x4t7OFSpJee7RQ9i+wkkwv8Yv0Q+sY1/VnbOz3gApYHF9D?=
 =?us-ascii?Q?AxwKWnqoKbS+V+bDDM7GR3godf3VNSi6cIdXnUszVi1ZtJTuSItJzF1511w1?=
 =?us-ascii?Q?+T48TD8xklbHwdLPIlD11dFD?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a42066a-3d13-4bfd-d402-08d95c88808b
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2021 05:25:59.0535 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gkru8g6a4OltDqFLVLhIlBXggArsLsjKIW02hpBcalxsiB5no1DPY1fJfOUtjiuQBELr/gOqFLYtOenw4/Pas3FTvQ/AjRnt81eNOTGQBWM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1486
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 08/12] ice: introduce new
 type of VSI for switchdev
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Michal Swiatkowski
>Sent: Friday, June 25, 2021 8:15 AM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next v3 08/12] ice: introduce new type of
>VSI for switchdev
>
>From: Grzegorz Nitka <grzegorz.nitka@intel.com>
>
>New type of VSI has to be defined for switchdev control plane VSI. Number of
>allocated Tx and Rx queue has to be equeal to amount of VFs, because each
>port representor should have one Tx and Rx queue.
>
>Also to not increase number of used irqs too much, control plane VSI uses
>only one q_vector and handle all queues in one irq.
>To allow handling all queues in one irq , new function to clean msix for
>eswitch was introduced. This function will shedule napi for each representor
>instead of sheduling it only for one like in normal clean irq function.
>
>Only one additional msix has to be requested. Always try to request it in
>ice_ena_msix_range function.
>
>Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice.h         |  1 +
> drivers/net/ethernet/intel/ice/ice_base.c    | 37 ++++++++++++++-
> drivers/net/ethernet/intel/ice/ice_eswitch.c |  2 +-
> drivers/net/ethernet/intel/ice/ice_lib.c     | 48 +++++++++++++++++++-
> drivers/net/ethernet/intel/ice/ice_main.c    |  7 +++
> drivers/net/ethernet/intel/ice/ice_type.h    |  1 +
> 6 files changed, 93 insertions(+), 3 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
