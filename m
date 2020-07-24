Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A386022D28B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jul 2020 01:58:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6343087101;
	Fri, 24 Jul 2020 23:58:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9BdRVffJ8rtc; Fri, 24 Jul 2020 23:58:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6204E87126;
	Fri, 24 Jul 2020 23:58:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 242011BF365
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:58:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1FB43870F4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:58:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B4Lrd38RnF7W for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jul 2020 23:58:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7EDCF87099
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:58:02 +0000 (UTC)
IronPort-SDR: waF7/1HKVv5IdSBuoRhouyTxeoDRy9peTArwyCd7taKPYJ5TPvlGaHJuB0bOxrldEtRzWjRHwL
 GLO9BD7XZaKQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="235672145"
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="235672145"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 16:58:01 -0700
IronPort-SDR: T81dluWzEnfhr+qSUXraw7culU69hdikBF5a55xwno3IWmaCeNBDyLpjI3kyLvXQu7BJDl4ZW8
 4HrfgbozSd1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="271478151"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga007.fm.intel.com with ESMTP; 24 Jul 2020 16:58:01 -0700
Received: from fmsmsx104.amr.corp.intel.com (10.18.124.202) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jul 2020 16:58:01 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 24 Jul 2020 16:57:58 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.53) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 24 Jul 2020 16:57:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PWzSuFiMH61lQUFdndznp6QsBvNWJP6GW2VK6JrWg14jQzVjsT9ia4At1lfyACTPHGgRiia2dJFC0tlWpfXV/fE64od0TeDRD7kj+TQKxvWvN6WxA9THcLUiOZrIq7u6c6nEGqwbU+AgvDgR+wI0flGhijVxkUAh8gq9Vw2Qs7MqiSdins3KrTVAAPhTYvuUD0pndFY5+Vf+OeIuU67P/RjYb33kBVvHmdSxVNcnlZVRcBufrk44Ri1eWy4w1h30OEOYtAvHuNku03ORYxyjM07HwEEJ6D9DK01/OT7uK8nSyLD/qeVEJTELBH27HTMmpD6VnvoezCqBaf6nZsnSNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dZOdxM1la+mMtu1DX/QtIkiZz1VJIhp0iDmfuLCIJHo=;
 b=DEqIXU5wM3csqHLL4X3FgMrq3vU3OPjcOXTsv6uS24qb18WYFHaKGngL/3+tTcwpaiEbkfwX2au2NUcV93FnsSY5ghDuP8KthomFuKk7IjvQVN8t7gBtY+R+6cNsFsiUp4O8GWGJPMPbH0VlwpiwjhS1WKarBunveGArqdrsX1ZiW91D22d9+LwP/+3eZ1PQDxLcZFLcF1ZUW+Kn/PgzAE9OZtDHLXAaP4IVvpRUHH+Fu6soZBzjo7k58VSARY4eUc+tc67/crXULlwfinkB9gAyFJLDDS79WE181ZC6B27AM2Bd6u59aH4/c4HYbtb70CHcp6CFCjbUSxy3p1U/hQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dZOdxM1la+mMtu1DX/QtIkiZz1VJIhp0iDmfuLCIJHo=;
 b=PlqwJb64+I6qZHDHylqAidOFMFWnX54P5A9ZURHwa0rEz8zfXrIav+na8JLZNP7xiC1zDXBajii36qWEGIivf39rgtg9ThakY01yC2xpxpDmy4QI0jq22uexmddGqBHbV2WLY0QUqqDZO4oK+Fyiq+a5KzSQd5n5bdgBEhWXNAA=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3842.namprd11.prod.outlook.com
 (2603:10b6:408:82::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.24; Fri, 24 Jul
 2020 23:57:56 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.026; Fri, 24 Jul 2020
 23:57:56 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v6 07/16] ice: Enable RSS Configure
 for AVF
Thread-Index: AQHWW3Yf1dWTgIMBJU2130ua+PRCMKkXdXyQ
Date: Fri, 24 Jul 2020 23:57:56 +0000
Message-ID: <BN6PR1101MB21455146A0BDAAEBF407DA678C770@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200716133938.46921-1-qi.z.zhang@intel.com>
 <20200716133938.46921-8-qi.z.zhang@intel.com>
In-Reply-To: <20200716133938.46921-8-qi.z.zhang@intel.com>
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
x-ms-office365-filtering-correlation-id: 0aedf784-5a36-4a41-25c4-08d8302d6340
x-ms-traffictypediagnostic: BN8PR11MB3842:
x-microsoft-antispam-prvs: <BN8PR11MB38422AF0F83612B7B66C62598C770@BN8PR11MB3842.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NgPxn8Y9kDfe5zLPcR5BHgzRI7ONq+AAKOBESd8KmCfLWRlNgW6eWXze83E0X6cUv9CS6tfAkF2bZrk5m52eh/ZbpE2EOw6WKPsGdS530xaFKGBSN5kSRcL5ZYsEHfUX17lv+9q31CuGLQFy9TTTZpA8oXSTgawayAIlZaL+obZ9KMMVojjNYX7+PeU6PiiA1lu0rSXnZNCVNTVeCQRa+1vKfKy6qLOwIswmUw2w5uNVimN5Maw2X54wRTo1dI8DpyE6yVQNTOt/5uZT6xiOm3DYcPMYB6fU24oRksVcMyuMVKKWMso+e8VQw4IdFEgn
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(136003)(39860400002)(346002)(376002)(9686003)(6916009)(2906002)(55016002)(26005)(186003)(86362001)(33656002)(478600001)(64756008)(66556008)(66446008)(76116006)(66476007)(66946007)(5660300002)(52536014)(83380400001)(8676002)(53546011)(316002)(7696005)(71200400001)(6506007)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: yu6sU39P1aqOhRROXLgx+0u78WWuSYLZRiYUPzGHRkuCWS2X7NsdDtchtptIf+aaL7aHkAuA985rLuyFQpbGZqHAQVWkPJrIlI5GVi8/8Qdpl7ryeWrEs/Q+Zi5bTBczByfVW1pMH1urQAlNJQfqET03wriFvOsvqdyNMEDzv41lawXl4bS63lzkRxdwJdT+z5UV2JMgFRsfPVO7E3dvdNM35d/8hiaqO38nIMGx1wDp84MhvAFRo06T/AwI9fza8+FBEcH6qWJ9jW6SL5A24zixpX/r6tQLHSNSBkgNSr70KrvR1+Gh9I9fu+U0uZkZYbAbAsvlkLvmC2XZz/DQ5lQjL9fLVhpyXuRIF5ZW5GCW0T1Ttp1jUVtHQjtTFi+RV6ujpY9L9/BKUw9Z6ov/5Aua4OHMmKYIz3zb2lN5Jyjk2s6yKaswU7bkvSztFkm+zyj58xbzInCVXfzACRw2J6peD3DIFbw6tEmhGdZFRj/E918kP2IX7fCwfqEQxh0p
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0aedf784-5a36-4a41-25c4-08d8302d6340
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2020 23:57:56.9015 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f7UvuTRozq+DDew1CFJi64et/3X4qZrpbzze/waDKURRAmdeT7YbhmAcHmQyAv6NMhBWpuzPfQhoh/pEi4Mb1HxPlzF6uGew2FUKOrANipk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3842
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v6 07/16] ice: Enable RSS
 Configure for AVF
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
> Sent: Thursday, July 16, 2020 6:39 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH S48 v6 07/16] ice: Enable RSS Configure for
> AVF
> 
> The virtual channel is going to be extended to support FDIR and RSS
> configure from AVF. New data structures and OP codes will be added, the
> patch enable the RSS part.
> 
> To support above advanced AVF feature, we need to figure out what kind of
> data structure should be passed from VF to PF to describe an FDIR rule or RSS
> config rule. The common part of the requirement is we need a data structure
> to represent the input set selection of a rule's hash key.
> 
> An input set selection is a group of fields be selected from one or more
> network protocol layers that could be identified as a specific flow.
> For example, select dst IP address from an IPv4 header combined with dst
> port from the TCP header as the input set for an IPv4/TCP flow.
> 
> The patch adds a new data structure virtchnl_proto_hdrs to abstract a
> network protocol headers group which is composed of layers of network
> protocol header(virtchnl_proto_hdr).
> 
> A protocol header contains a 32 bits mask (field_selector) to describe which
> fields are selected as input sets, as well as a header type (enum
> virtchnl_proto_hdr_type). Each bit is mapped to a field in enum
> virtchnl_proto_hdr_field guided by its header type.
> 
> +------------+-----------+------------------------------+
> |            | Proto Hdr | Header Type A                |
> |            |           +------------------------------+
> |            |           | BIT 31 | ... | BIT 1 | BIT 0 |
> |            |-----------+------------------------------+
> |Proto Hdrs  | Proto Hdr | Header Type B                |
> |            |           +------------------------------+
> |            |           | BIT 31 | ... | BIT 1 | BIT 0 |
> |            |-----------+------------------------------+
> |            | Proto Hdr | Header Type C                |
> |            |           +------------------------------+
> |            |           | BIT 31 | ... | BIT 1 | BIT 0 |
> |            |-----------+------------------------------+
> |            |    ....                                  |
> +-------------------------------------------------------+
> 
> All fields in enum virtchnl_proto_hdr_fields are grouped with header type
> and the value of the first field of a header type is always 32 aligned.
> 
> enum proto_hdr_type {
>         header_type_A = 0;
>         header_type_B = 1;
>         ....
> }
> 
> enum proto_hdr_field {
>         /* header type A */
>         header_A_field_0 = 0,
>         header_A_field_1 = 1,
>         header_A_field_2 = 2,
>         header_A_field_3 = 3,
> 
>         /* header type B */
>         header_B_field_0 = 32, // = header_type_B << 5
>         header_B_field_0 = 33,
>         header_B_field_0 = 34
>         header_B_field_0 = 35,
>         ....
> };
> 
> So we have:
> proto_hdr_type = proto_hdr_field / 32
> bit offset = proto_hdr_field % 32
> 
> To simply the protocol header's operations, couple help macros are added.
> For example, to select src IP and dst port as input set for an IPv4/UDP flow.
> 
> we have:
> struct virtchnl_proto_hdr hdr[2];
> 
> VIRTCHNL_SET_PROTO_HDR_TYPE(&hdr[0], IPV4)
> VIRTCHNL_ADD_PROTO_HDR_FIELD(&hdr[0], IPV4, SRC)
> 
> VIRTCHNL_SET_PROTO_HDR_TYPE(&hdr[1], UDP)
> VIRTCHNL_ADD_PROTO_HDR_FIELD(&hdr[1], UDP, DST)
> 
> A protocol header also contains a byte array, this field should only be used by
> an FDIR rule and should be ignored by RSS. For an FDIR rule, the byte array is
> used to store the protocol header of a training package. The byte array must
> be network order.
> 
> Signed-off-by: Jeff Guo <jia.guo@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_flow.h        |   3 +
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 454
> +++++++++++++++++++++++
>  include/linux/avf/virtchnl.h                     | 178 +++++++++
>  3 files changed, 635 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
