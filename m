Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F153922D28D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jul 2020 01:58:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AEA9888BBC;
	Fri, 24 Jul 2020 23:58:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dyO8zwuLrzzM; Fri, 24 Jul 2020 23:58:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 487C588C17;
	Fri, 24 Jul 2020 23:58:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BC6561BF365
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:58:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B554888BC4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:58:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UzO08Ls53Bt4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jul 2020 23:58:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1B1CA88BBC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:58:38 +0000 (UTC)
IronPort-SDR: pjHHVLAamVhtKmTED1ZFbNnj9TfBY8UPHqU9UAhDlU1A7VanSSB8E7Ui//ERjo8x7izlhaB8Hj
 ghBsyQJedhYA==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="138853277"
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="138853277"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 16:58:37 -0700
IronPort-SDR: vkB5EIQSWI9RQxhIuL8pf+PPwEMeWSzRr+gN2jBuwvuHc67sI7g+dPARDBpp1oK2lO+6nXgfiO
 YLPXzTq3T7yA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="311577046"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by fmsmga004.fm.intel.com with ESMTP; 24 Jul 2020 16:58:37 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jul 2020 16:58:37 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jul 2020 16:58:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M2Hj/Gl5kAYsQez17hBs3mbRIwRvQb3cmCNuzo5XEpXQ50RZy8DDT0c5VzzHMoLh/mGBEWMUjTpRfaH30cva73MOXRwIqdViFgAjf4gU7bQsN27QgxK85zpueG/H1l+Dx5hudHGzLH18aAmSPS8x24iJ4gpP7PoRAkmUNfChzrrpShZZZE0mIZzfWE57LXV0blkugwz9pR83tUmc2gqIHlEJZVGMwM1MA4/dKPg8NnFLOsCud8f2XFZq5dhjsR2BcCq5HDyVinGCS3gKSmEbYnzKA7KUjrIx6YSnJdgL6AhAHKAc/66mUEQ4O1GEprRPRkXI+V3PTZgjxluIhZ1j9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CqXagKoXS0D93YKYG9VYPri+awhcmnTWRVSBzJxr9Vo=;
 b=NFmmSV/OLofOeXRQ/oYPPvtLnjP5bw41QPl33FXjr8OAkcyNcINoyKqdNajubWGihsp/BZ8T0DGGeDNRjMI6df8UgeVr9yTXqBDLkq0aCDxqTqC6sXTZKHfiGzpDnU3W2Dx49uD5cUkJP6+J0Zhy3fJ2ZxIaOdH7APkXfqMl0/rkjoZ0qTDp7ZLITrexVl/C3ZDCG4/qg/28v+1eKOZgSyntBsmBM7UZEjA25wGD/GxszQS0b4cNNbJ+V/OKfa4PQjnd+UBpxKerifyjbvsvSPHtuqQ8y0049ZxPw0IcQCiy2EhSk1XFIQVE97oeQDr7YsEu8Qo/K+VJ2tnwUD41kQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CqXagKoXS0D93YKYG9VYPri+awhcmnTWRVSBzJxr9Vo=;
 b=W/O07xhuDX9HrmOu6ZFOEbrWqO7xX+UY4C97S6gBDK/wpmKWXs3HJYmfUangx4Tt9+Q8WqxbbFvQBpSqrPf2Y3sytWd9UnUyJg9dQy30OpBT9/O+oHTAImMGwmh3+eKVrBijFxS+KLJ4ltrfdvV6Ka53in+GO5UG5ng1106Qi+Q=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3842.namprd11.prod.outlook.com
 (2603:10b6:408:82::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.24; Fri, 24 Jul
 2020 23:58:35 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.026; Fri, 24 Jul 2020
 23:58:35 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v6 10/16] ice: Support FDIR
 configure for AVF
Thread-Index: AQHWW3YmRx66NVlWbU+DxJ5p/Af7IqkXdavg
Date: Fri, 24 Jul 2020 23:58:35 +0000
Message-ID: <BN6PR1101MB214521F83DE4C71574E728CB8C770@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200716133938.46921-1-qi.z.zhang@intel.com>
 <20200716133938.46921-11-qi.z.zhang@intel.com>
In-Reply-To: <20200716133938.46921-11-qi.z.zhang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 62dbb256-f2cc-4f74-5595-08d8302d7a60
x-ms-traffictypediagnostic: BN8PR11MB3842:
x-microsoft-antispam-prvs: <BN8PR11MB3842559E7A2E670F225587CA8C770@BN8PR11MB3842.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3oXYIoVe/k9BVCWV1s+5sQs7K5Ms8KWHySzrqrg236OiBlMlg0fuTa/whKABxklB/5Ppf6Hp61aARXPxapx7FcXGYKL50p6BFpgGU9Bqin7DST1CkMGaG2FpUbgakrxz58Adv3XC66snSM2QoWY8kimnLONnHtI8vmG23cv0fxSAk8r9SvviIuQj25Azj0RYTJSMOifeQXJfD9m3jg6xt974Qpxv99X1pXFzIUheJoJtBKEVDF74qeKm0crdyOR6OgsqjPRHTGBYfFgaJV4fpU4/7B7D4mRU/59FKvRnhlvJTLgO+tHCjTbKMBjAAAYv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(136003)(39860400002)(346002)(376002)(9686003)(6916009)(2906002)(55016002)(26005)(186003)(86362001)(33656002)(478600001)(64756008)(66556008)(66446008)(76116006)(66476007)(66946007)(5660300002)(52536014)(83380400001)(8676002)(53546011)(316002)(7696005)(71200400001)(6506007)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: mtHqqnJMw1b9s4flLDE0+Ds/BGJBUUTB20KWTt9O9U5ZblIWBxdVwfi2Aa4xYPlur1fobiqz34zBATXw7YEqfAQN9/D9sO2vu56FPsuRV9hqCKSepdsP+cT6oSdp8zDS19Yyx6aToFB8X8loSdo68oGSJ+qk7ZPhedgcGuRQUNVfUNJfraLeHuNrcuwlh3fOiBQlvIkSeUatUXw8JXiIpYWhDsXxGLjzFlJ1xsaP5c/V8UrgfcMFMxHBxfeTKMUo4eahFjMTWea/CJ0+8hxsHpG85QresCl+hojLkQAQk3eG+uU2rE2f8D96m/s+OxJnUroE/uugyLfAXXEENr7jZl/z+i1bkROfvJG6bhae5tkyBXGgQ9h8Ra8HVVz5Svm0UF6hZXOt7OTIBZ9dc8KkLCqGteREF6+FKMkT23rKHjewTJQN0tiYMIgkToaBEaUIyIg+opQpeRnJvkioyM0jvl/LrprdhUPPplgz+8st6aNMELwfmNoI7rt9uxuJssU5
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62dbb256-f2cc-4f74-5595-08d8302d7a60
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2020 23:58:35.6431 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nsBuGbD/cs+KoktgoX1Rs5tqHJQw9kbb+FuRrsdIxiDAW+HlVyjfHWVACUpnRJJzAtEdlBn4p12vvYoZSDDI00nw2wZaj2CaoY0priBP8+4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3842
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v6 10/16] ice: Support FDIR
 configure for AVF
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Qi
> Zhang
> Sent: Thursday, July 16, 2020 6:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH S48 v6 10/16] ice: Support FDIR configure
> for AVF
> 
> Add virtual channel support for iAVF FDIR add/validate/delete filter.
> iAVF FDIR is Flow Director for Intel Adaptive Virtual Function which can direct
> Ethernet packets to the queues of the Network Interface Card.
> Add/delete command is adding or deleting one rule for each virtual channel
> message, while validate command is just verifying if this rule is valid without
> any other operations.
> 
> To add or delete one rule, driver needs to config TCAM and Profile, build
> training packets which contains the input set value, and send the training
> packets through FDIR Tx queue. In addition, driver needs to manage the
> software context to avoid adding duplicated rules, deleting non-existent
> rule, input set conflicts and other invalid cases.
> 
> NOTE:
> Supported pattern/actions and their parse functions are not be included in
> this patch, they will be added in a separate one.
> 
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> Signed-off-by: Simei Su <simei.su@intel.com>
> Signed-off-by: Beilei Xing <beilei.xing@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile            |    2 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c  |    4 +
>  drivers/net/ethernet/intel/ice/ice_fdir.c          |    6 +-
>  drivers/net/ethernet/intel/ice/ice_fdir.h          |    5 +
>  drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h     |    2 +
>  drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 1035
> ++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h |   24 +
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c   |   17 +-
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h   |    6 +
>  include/linux/avf/virtchnl.h                       |  120 +++
>  10 files changed, 1215 insertions(+), 6 deletions(-)  create mode 100644
> drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
