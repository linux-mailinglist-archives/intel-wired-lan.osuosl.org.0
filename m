Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B4240441C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Sep 2021 05:57:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20EDE61415;
	Thu,  9 Sep 2021 03:57:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id al4mi_sMdf6h; Thu,  9 Sep 2021 03:57:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32A1A61411;
	Thu,  9 Sep 2021 03:57:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 844CD1BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 03:57:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 61D31407AC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 03:57:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1MHyNofr2zYs for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Sep 2021 03:57:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6A6E640784
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 03:57:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10101"; a="281682662"
X-IronPort-AV: E=Sophos;i="5.85,279,1624345200"; d="scan'208";a="281682662"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 20:57:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,279,1624345200"; d="scan'208";a="513545079"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 08 Sep 2021 20:57:18 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 8 Sep 2021 20:57:18 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 8 Sep 2021 20:57:17 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 8 Sep 2021 20:57:17 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Wed, 8 Sep 2021 20:57:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FtANO19RYcNmeWJQNHJTBYBqsugHNFiRRcPrLjL1ct97kuQDt25G2yR4tOUft5DMExbqnhLqCyYYeGXJkWoxNPDSgle2hbLHQdzNp8pDNvYSOeeV9YWv6sYrx0lD8eaJmutdr/4LvQ12wQ65MT1yCMC7ayMAZrSc0i+Ni86RpWoA2965OPloFrFNE8g6gddRX2/wFzT9kl0qZagUV/xzFhV1O9VRkItGr5kXZGPMyr7JEE1nUwnfCVLKrmO4b6IJ18Ml3vN+9SS++DeEJPXWpQoJId2//T06lOHu7T7/2IjiuNeH2QZEELKnvKfCCzpHXptQilrsvCd+hgHmN3cGeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=ShzBC5iDcC0I0PQ2JfOImE6tmB3x7OP9twejVhQoAYo=;
 b=OytXEgROggTmZubRJb7drWxeks6VqcX/Fn9txDGtxwdqTcVAhxKruVGygJxe2JwUNEoj4s3yqx4un2dXzFAfTqMQ+95wTVgL16MlH50nVXiBJDEvgO5NI5m6nLuVivbG+40xyfgnYHylkbL8y+HuQK5Iy9UHUUz5vayHJQ9BkJvzOlVGDCin/qHofg+57TK7rRK65PtbL+Q5LCbS6z7oZ85i2UvG/7dRKZDz1TnN9Yvzy6yIMaXruDNocH0o/iL2fvvvg0BmqgDSZYjPR0+UOAA2X4kOgWI3kwpO8kTXziiFK6Gz/3N9C4KnULpFlsg2KazOa40CVeMC6/Tv93RQXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ShzBC5iDcC0I0PQ2JfOImE6tmB3x7OP9twejVhQoAYo=;
 b=P/j1cEfh6z+WX3A429BkEBo7seLhrZ51NJh4Hwzz3DS+6WFu6LJLbjOedOTw5z7f7fWxsANg2lS2MreTeoDg/FPeWJt3Q8UIelJgut0jgi3IIkPM8nTjs7khxX6Cs4MibgJulGerNcTFkeBHLlMS4hBBiuKLogTbEHctevN+1Ic=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3637.namprd11.prod.outlook.com (2603:10b6:a03:f9::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.21; Thu, 9 Sep
 2021 03:57:12 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::472:1876:61ac:f739]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::472:1876:61ac:f739%7]) with mapi id 15.20.4500.016; Thu, 9 Sep 2021
 03:57:12 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 4/7] ice: Add feature bitmap, 
 helpers and a check for DSCP
Thread-Index: AQHXepIgLgfbisRaFk+HEQZJQVltWquY68HwgAJ73NA=
Date: Thu, 9 Sep 2021 03:57:12 +0000
Message-ID: <BYAPR11MB33676B1EFF86E6DC70FE94E8FCD59@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20210716221644.45946-1-anthony.l.nguyen@intel.com>
 <20210716221644.45946-5-anthony.l.nguyen@intel.com>
 <BYAPR11MB33678EAAB258C5CF310FC4E8FCD39@BYAPR11MB3367.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB33678EAAB258C5CF310FC4E8FCD39@BYAPR11MB3367.namprd11.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 73a3b957-3ee5-49bd-b321-08d97345e7a9
x-ms-traffictypediagnostic: BYAPR11MB3637:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB363775C662014D290FF6CBFCFCD59@BYAPR11MB3637.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WzlpN0jLhttA/8GZPkFDVByu+OndVtfnEjLyvZD7/hxr5OuN8UQwG8OA7VrxTMYxkwEMMZa8bVSOas/VeitvhGTFlWPGr8JtzbrGxan+ak/E+qlPlj/5aTyIv1oAyd582AVVeRuc74Dmzia3es1F7ulkHRsDHkLjYhuFMPb61KKaVLeBXWL1ntyFTQsDZjvxg/h4p3R3GO5HFCeizyBWtL2q/Q1ggE4skpVjkxEx04OxbLaWIG7uLqO2d0Dw460U8bN6lGZ05hMezH1ZSOuZld40PLC1BVqoAcwUPHkfVdKAEjtemR2lK1XlAItBT5g0vL/DlzwWUcXAemtE8fAxCQxSH2jbtdjZU+zwVuNwnhzcG76qqXQccoOKhhQPr112tIP+UFU4/S5KcgKW8c7krgeLk+5GbmVLzS67wQacletDD1VJAzcKsmFqFX+fT5vg8LvHDF06sqX3bPDheWasLEPPYMQ2vxGe2A9SSeIwb8SH5hfQbt/KSjnsOsek3Nv/SgsYHDqtPqVIzrFdbfQ1MrICV73I6vKcnJklhjIQ4U5enr6hxEOLj6ZW/QpcQYxI034fUg0CIgEjSZrnk0b363XxVcIgec2aUrufOg68hkgBkRd309VGjtOYA1/D1eYNKYKYIzUPkxXCE7XiQs99Ll4PJ+lDpvpdtsA7HfRSj/pWYbY3YjGKlkcBmKfcexEYnnCyDxU0SR7LKiU4Xv+dWQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(376002)(346002)(39860400002)(366004)(396003)(7696005)(52536014)(76116006)(86362001)(2906002)(66946007)(186003)(478600001)(8936002)(5660300002)(38070700005)(38100700002)(71200400001)(122000001)(9686003)(66476007)(33656002)(64756008)(66446008)(26005)(6506007)(66556008)(53546011)(8676002)(55016002)(110136005)(316002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Jlzi4/RBtilstikziiIA3oXOTpRNL/uGVDuuinr90Vsq0EHkXxfSdGwH8Q7J?=
 =?us-ascii?Q?adnRjghsYifvNS/T1IiPPlnAQ/h3ZBMeAllwJS9eu3f/M3R1ycq70Vx7x5lK?=
 =?us-ascii?Q?FCFXoOSa+zZYU/Qb38eJcuZhYRgNjqP8VsDeC6XWPOuLF6rRODOkkUBXxTfX?=
 =?us-ascii?Q?d/vJ0uxSay8VyphtPoqIHmFg0bWqIO88w9xhPHvqd9d7ymtmZ0oTslp5mxP2?=
 =?us-ascii?Q?+F4FBdtTP2j+m3JpcuxelYrARbYrFbYa9E7RGCfb+rCdicFFmde5r5qeH2lt?=
 =?us-ascii?Q?PlKRw7QtTWmbrphT15Ep9MYVd/77WxIE9UyPV8Afefvy9HWTuGWVI8+vfbR5?=
 =?us-ascii?Q?Ce1XeWW40PNnzxjOFzhFfJNNI96o7nEP+3Dz5WQ8+DHm/NjwE31JsujVBotq?=
 =?us-ascii?Q?T7ut02bV/IVCx9NOG/H3dTvRQK47Wq543kTp3RyWCngL98Ea83xr9B75BWgW?=
 =?us-ascii?Q?Ph6MO63cGUJif/YuN/eLh+SczOJFUkWY4JLQqq65/KLJicovtQZ7TXT/66tK?=
 =?us-ascii?Q?7Ww0GXpdtf8xPXB+PbyK8el/fVWLsMubpShP9+LOP1KOWEs+UWdotdxO51EN?=
 =?us-ascii?Q?k9zFWmMelEpdmUNFgFJbO0z5W/6boNgL6tDx9Qt7vAAhTjruUqmzLnvswbDv?=
 =?us-ascii?Q?Q0Yz1ocrl2nn2OeoURWGe92yYnV4wM/S7xTjIWpZMFwZNsUeGOBLNZuY+Y5f?=
 =?us-ascii?Q?h4GiQpNPGCYmZvxELNx5T1yYiVvJ5Kj9HFzxHl8bgtyeM9rwgDaZeKIpn688?=
 =?us-ascii?Q?/w6qrRrEIb25zgPMlmO3kxqo0H3myR4a3hDLJJz7pWX9R85PCh1qUNIWEi6v?=
 =?us-ascii?Q?2WHCJtxqqSfAxb5GykKQXztjUYo+ValxXIOcK1xxQyoqSL2Z5LY5vDd/MMUS?=
 =?us-ascii?Q?YOYp8VpcTVBHKj2CEasbM9bg8AVJKKwrqF+Tu/l/lEZr9+VdY8wjy6SJLiev?=
 =?us-ascii?Q?kmUW5TRqakayMfLWXsUF6GMSEsfYTt1ySAamznbN1tCJfMN4erktINU3UX4s?=
 =?us-ascii?Q?Teju1I6E91YH2k/YeI53qWn2HnrfhF+R6+UXgXTnUGsUabRxjD69rKGuR/iM?=
 =?us-ascii?Q?W3jXDJDDvFpNW7W4miHXELxQk7A6IMgLzpT4xche+K19gvREkuPwPI0OwJ9q?=
 =?us-ascii?Q?n6CXSLy5yVC+jn6K3TwlMovS94uyEfubKG+h8yDynaRaWKPYI/YT/voMSD7F?=
 =?us-ascii?Q?42ZzZpJpH+RbmSopbfSSiFgzOw7AOkm/znDqA7j66yF6m8KHNoYoheoW3x6Z?=
 =?us-ascii?Q?J8igB0WUmdyfySawatN/Uu3HI1hLXgRECwpvo0j9+DApDXhBe79I4XYmqcSe?=
 =?us-ascii?Q?cobM6p8MVPXFVCwnfwNqfrph?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73a3b957-3ee5-49bd-b321-08d97345e7a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2021 03:57:12.5472 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s692G6oHYvF0tPFJTd8hIHIlCgcT3nunPASEoY4qZ+m51GmUyKmVhYooxs5hCXOoO0QUWBF0/0IbeATKrimNYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3637
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 4/7] ice: Add feature bitmap,
 helpers and a check for DSCP
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Tony Nguyen
> Sent: Saturday, July 17, 2021 3:47 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next 4/7] ice: Add feature
> bitmap, helpers and a check for DSCP
>
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
>
> DSCP a.k.a L3 QoS is only supported on certain devices. To enforce
> this, this patch introduces a bitmap of features and helper functions.
>
> The feature bitmap is set based on device IDs on driver init.
> Currently, DSCP is the only feature in this bitmap, but there will be
> more in the future. In the DCB netlink flow, check if the feature bit is set
before exercising DSCP.
>
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h        |  6 +++
>  drivers/net/ethernet/intel/ice/ice_dcb_nl.c |  8 +++-
>  drivers/net/ethernet/intel/ice/ice_lib.c    | 47 +++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_lib.h    |  2 +
>  drivers/net/ethernet/intel/ice/ice_main.c   |  2 +
>  5 files changed, 63 insertions(+), 2 deletions(-)
>

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker> at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
