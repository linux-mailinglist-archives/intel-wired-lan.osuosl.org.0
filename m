Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 253CC3368B8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 01:31:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3374F4C714;
	Thu, 11 Mar 2021 00:31:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kk9WkcNsBsso; Thu, 11 Mar 2021 00:31:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0BBA14BA7C;
	Thu, 11 Mar 2021 00:31:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BB1CB1BF399
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 00:31:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B297E43000
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 00:31:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OxyRNpVsHh8I for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Mar 2021 00:31:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EE82F43002
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 00:31:25 +0000 (UTC)
IronPort-SDR: gm3rHs5Rc2gQxxMeKuavH0Nt2CxfDcwvy5qjx+Wei8Q7Ufdapp8IbCP1iUIXHV240+qE5md7Qa
 E1PK/jzr6ukQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="175694832"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="175694832"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 16:31:24 -0800
IronPort-SDR: IkcKBNtFq8hFZErTYYa2J8i5L9+FVy894n7W5+LbVZ/swX7zSgH4V5g6Y4Z/aDrdsXNBeKNBnQ
 37YAD0ONf/5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="509856103"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 10 Mar 2021 16:31:24 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 10 Mar 2021 16:31:24 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 10 Mar 2021 16:31:23 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 10 Mar 2021 16:31:23 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 10 Mar 2021 16:31:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AEFW1GgDQ48rXz8ZkupKz3XZyVJyuv6O3UfS58U8VVToPf1c1Qz/1KcfwGqr1I/80NMLSvFmzyyxyThQYp9r1HSAxRRFswjnKr10SCsnDzXcIrdLjj1GhOX3ibEbBT111PnTtQILaMpQ5zJc7XLyMUcIA0IHiKFE7LtwQv7J1PQKqOdzcHAcxOMWVjQaXpD9dDs9sEaqXlsHCq1FeOPj9vGyqGN0SkljilNVW/33o1Yin7o16XWJJ8ASYEDKuvLzSedE4jiEgE2CxiZKgTdjGzjpfrsklv6KHDH75WUZqcv8PI8ESHvgEhc35kP1Th7tKlgVeMXgZOUtZox7fpSi1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1CiAybRNAhbHdFeAF5zveK5dMICqUaqF04pNm5Tj1a8=;
 b=idOCRbE7VEcbCuq+tfwUQWmOvohb9PFt/HzJOaI+0za4WgcpPB+sHUNmROXocWlYsyD2X+Pm/1zMdg+ZQjaMEpDe6xZxZoaC3DXmA75BzgZo0NgfESeFpi0KcGPkWxhEpXfn9XNsQ9sg5phZnsNI5wqVWc+t5JcMuOAFhyOwrcNxKY5a+bpVoES1vVi4amxEU1FztXFGvfiqZC/yd7g8R+uGJIVAUgS8wNL394v8HtwqVL/+kKIylFpHSqRUQGfqjiybw5968VeEPQ5v4aFrvvMkU/Q0lnZH0+7XSxRJoEnX3rewu3xiYSFU/kEZSR6/GC+tdvUaBJ5+K/+inRRSJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1CiAybRNAhbHdFeAF5zveK5dMICqUaqF04pNm5Tj1a8=;
 b=DTkjzKelQH4gZlKJd1ORaiR2h9tXl4xoSXyx4uf0ahP4vDKfUFyJwiWwbpg4FRgVH3prTJvVLuPA1+VwMIBQvTveMlhS8voEJdS6zrJszz5Nn+XraOU9FqWJNWuKqf6xBqlsfGgh6zLr8CoZDMEJnZxnVsuZMR23mBdJeNPpsqA=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MW3PR11MB4522.namprd11.prod.outlook.com (2603:10b6:303:2d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.27; Thu, 11 Mar
 2021 00:31:10 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3912.027; Thu, 11 Mar 2021
 00:31:10 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S55 08/14] ice: change link
 misconfiguration message
Thread-Index: AQHXD5FP96MImbTLvkqZwLMQsmzaDap9/Gng
Date: Thu, 11 Mar 2021 00:31:10 +0000
Message-ID: <CO1PR11MB5105C3CBAFC074477AE84A5AFA909@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210302181213.51718-1-anthony.l.nguyen@intel.com>
 <20210302181213.51718-8-anthony.l.nguyen@intel.com>
In-Reply-To: <20210302181213.51718-8-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.213]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6b4155f7-ee4a-4afa-458e-08d8e424f7d4
x-ms-traffictypediagnostic: MW3PR11MB4522:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB452216D0F4452C9B03D69ABCFA909@MW3PR11MB4522.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:883;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fxuThIGbdig3eIkn4FJl9P3x2kGCEyFhUunP0ms8MPPnztIeUR9ExkUAAv+mSQmiOW7Ib7qixmX3+HMEDX4x9AD7y2IqsgqhbuqspxoaCSlicfrkmfQzRm40ktKf7aTNzswXAWSiWFpX150lK065co72RFcVeaAhD2dyTMYnNW1eQk2juv9FSufCoWZ8XbDK6/kWW8kcxbN5vtMvcoTaLu76roCHM5fongSNQ6qcDxUhH6I0A8OWg8BTo57FMsvR7kKw0WxHq9b7P8phWKqmmxPiFvFBE+BK5rmTGOpQUGFVcx/22ACSwYD4ZHsG38nuHH9zIhRbTR37SJD4Vyko0rr7P2faf5jlOQtgIr6hbBbvsmglTq7SNwDOmoZacqHTeDmHzwmVWqAYikd/nIY7DjVGDOp/QuD/T3auwE5F4JxDTT3flbA20lBb585W4hQmyV+o6pmgYwPgzmspfzdiQajMFQsCHt5Ktlh3DUZa5kHIYwfS/VHR4HQ4+d2VmrQvNlQKXirXqY42zbLCG3Pu5A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(376002)(39860400002)(136003)(396003)(346002)(8676002)(9686003)(86362001)(8936002)(478600001)(71200400001)(33656002)(5660300002)(7696005)(83380400001)(55016002)(53546011)(2906002)(110136005)(316002)(15650500001)(186003)(76116006)(4744005)(66556008)(64756008)(66946007)(66476007)(52536014)(66446008)(26005)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?EJmRCFtLZhl+CeFVTg+VyKgnvlKGENojgLglFOtejFqprbT+k/5imZPB5bbp?=
 =?us-ascii?Q?DDAK+YU5m5eE3iPQfVk/4iRP5OEtc9ixUaJrvR04OY/afCjQ7XINrTiweCsI?=
 =?us-ascii?Q?WwolyhlOO1v6Bp+3RBhX0l8bUjO7imMpcUQsaRjBMwA7OtzgUx3WwNC4DC9T?=
 =?us-ascii?Q?E+OpaE0i9CQvCvKt4mu0rCr4d6k4sd4e5V58o65NnNOrT0G/yLiNxgcgl+Ep?=
 =?us-ascii?Q?4wVDI5XcInpObODx8LH1PiTQ2F7VAJy0VBRUYJpcZA5Wva54mpJKENFChGeX?=
 =?us-ascii?Q?HU1pFrROlDVhfKeFOmc0FBJEZFN3X39DhioIGFisRqIL0f0InRO8gwZopNUF?=
 =?us-ascii?Q?nqXufLdyjngUfpFDrJu1rLgqoXC86JrSKHB80lo+MUPmfTqZvK70ixPTZp9S?=
 =?us-ascii?Q?6ZP2Qrydyp3c/fv3W8NORXP5UxGSosFEQ0AwLdtG9cCwb7CezizmwkkSQjUR?=
 =?us-ascii?Q?QZjcwjpToit5AQE5oMgGdOXKnyZEaz85RN7QaTXZHllcga8lHv+ZLbcZrsfz?=
 =?us-ascii?Q?H0F16o1dy8AQ0P1wDzEFkDVv1ZzG9tyeDHWhBVtQ3ZyEu+eo0QHzeKI11Vj7?=
 =?us-ascii?Q?wno+TKbAjmcr56CbdFZc8gE0vnvmyBNRmVMmI4IUGaKf7swLuRwlutm8/1ON?=
 =?us-ascii?Q?10QKdIdKnOIFfmqH/QNg7AK1y2wzZt+aEbVHeJpBtUFzDOYFNbGVnQx3sLCp?=
 =?us-ascii?Q?1+2bknudWRbrZ6pUcolulaj8MhPONMkE0iOvX7OoH5mafNO17TyZ0cJYHr3t?=
 =?us-ascii?Q?jVTRIXfAPxK1y7/6HdXoGX9hT4Qc78IzbgRKxOLJNBweCmRXqOuPo6fity6k?=
 =?us-ascii?Q?sbg9kSs2yEUHFG8pUjXQ6UqFiwfTdddL44nRUoHDPMrzmDKEDqla1vrbXIaq?=
 =?us-ascii?Q?RIo9vtK3lrAdRq2LLKBDq/PUAgqm5sDAusiHWl2X/p8nF+gniBGA6DcqPSZM?=
 =?us-ascii?Q?WIgxqPNM3KshRJzPoVCjpaDN6jWgNocObgmMgJoYBvUVOHtKN8jGDmxl/4xv?=
 =?us-ascii?Q?R2OW2z2030Z1PSKfZVpKMP7z0yOIPsLlF+ytrZPORM9hAXXSYS9vPnQcDcAI?=
 =?us-ascii?Q?hNphLeldXdRvoho5w3YzDPJB6jfHUPPAdUcYZwy7eLugD7gOzyss1stXjsll?=
 =?us-ascii?Q?9p3UcIyUMkTm/JSTgp5cpcqjgD5P5iFSVb5BuPd30mkz9BXkukuYkf0/t1Y0?=
 =?us-ascii?Q?ChjwTvUrD9tVqmdg/BmQR1Jf3xSzGUbVjJNtyJ2MXagzo8+mRDZwvXtgeFzr?=
 =?us-ascii?Q?ZKbjo6MLKkqOPKcgyPPTsp+b3vJ4+y6At6Q/veBwUIR2wIOVsEC8rvrJu04X?=
 =?us-ascii?Q?K+4+7NKH3cCxbMKG9qo/2Kea?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b4155f7-ee4a-4afa-458e-08d8e424f7d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2021 00:31:10.0515 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T6XC01WJNCE43SWCnlpVeK7pwvGuP61ag+DDK9Y9iKi5V53sB7XyyJ5CpRdWog8HFJnCK95makPdenqifAXibP1FRVLEuizXP/M/uTUDgvk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4522
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S55 08/14] ice: change link
 misconfiguration message
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
> Tony Nguyen
> Sent: Tuesday, March 2, 2021 10:12 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S55 08/14] ice: change link misconfiguration
> message
> 
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> Change link misconfiguration message since the configuration could be
> intended by the user.
> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
