Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD2435088D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Mar 2021 22:55:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E56BE60B76;
	Wed, 31 Mar 2021 20:55:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WPG-YYCMfnOG; Wed, 31 Mar 2021 20:55:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D81BD60B75;
	Wed, 31 Mar 2021 20:55:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2A3721BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 20:55:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 17F004045C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 20:55:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iYLbIzqqQ0vk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Mar 2021 20:55:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 31AA74014E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 20:55:35 +0000 (UTC)
IronPort-SDR: WoDpggRMnedQ+2mSZXub97loYssiwxdiB5FOZDPvCoCR3s+AuAAnzhfUiIC28yaNgQDr35z5GI
 Q5ZNe97Llogg==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="179219731"
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="179219731"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 13:55:34 -0700
IronPort-SDR: 7SfxdhIcCAnCj61gFcMRucEpScyi/kBLeiaqmQ1PeCUUx1r5p5UGnIBxUJZs8oySpe0FwtsGnd
 JlvoN/4SK88A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="517048949"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga001.fm.intel.com with ESMTP; 31 Mar 2021 13:55:34 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 31 Mar 2021 13:55:34 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 31 Mar 2021 13:55:33 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 31 Mar 2021 13:55:33 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.51) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 31 Mar 2021 13:55:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f8cFWGYBJQt1ClFko+6qaGia96OcHFub6RESqvpaBgic+TH6Y0KfRfcGppALG8qyJQWDzNN7xzut3WuGrK71lJVpMsxnMYxahmxAUYMqK+roeOQdkvf+haifoWxak0hVNRzz3HR2qpypR+jc4abmwmcQOoo9wgnfnTTf/J6wMDGxQsLql9vkBHZzPgaKAcfs0mOt4tBk+YYB5zjzNQj1wike87yZM8JkXG+5JcdRT/9bXUjXbgJFiK04rzAHqgLApHbJn4pipm8WsT53gigh2w9JXXXeDIEqIZpMUJZwG8sXjPZ50SuYhRDAkkTXtkAqDufm9/+71BH7Md6HBwRGNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hp9UNvb0EOmykP/fI+Tap+Z5E1pauOIBTmZ+wxwrIG4=;
 b=cEbdQ+99mAhdOMkyU4zrEft7snnowy2e1DuQgsSEmQYqTdSxans7O0oj2ybnUhdHqUfcJYJV2DQNRF7aH9F5ZFyiXHJTcisiH3iGywNd+U4A4JLO8nC4UjTShQyfFbgeoLXS1QPveo5Tq4F4MxUOw0bvWfdBhGz25KsU6C+C+OTA8sXRneXqctHMQCOKW4eR87SB3DAaW7WYcagzRRVMRe1nh3I4HgTt4Ox2X8961qA+X8ldp1r8N2qJEHp6oOCGF1Q4laU/kkqHS2rSSDS/CLDv2jwYj6lGHz1M19UGapkcsQTxBV2pjyhHxvwHjdK9Q3ljbpFiMxvjai0ucukUaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hp9UNvb0EOmykP/fI+Tap+Z5E1pauOIBTmZ+wxwrIG4=;
 b=NgqKsPtsDS9MSycW9KFEI0PTy3vpZHGegZw3wFmEcJzg6fmbttI5GRKi0Zo8mnXXu+qwqo1aVgJk5Tm3skqP3z8tms/IeXbt2dRHLrDSIa34dC4zCgovxHrZqYuP3lK85d14SGibghhMtjf13Jxre8bWbZsyThUWJ+EuOdQLaVE=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR1101MB2286.namprd11.prod.outlook.com (2603:10b6:301:5b::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.24; Wed, 31 Mar
 2021 20:55:32 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3977.033; Wed, 31 Mar 2021
 20:55:32 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S57 03/14] ice: Align macro names to
 the specification
Thread-Index: AQHXIciwhZ96VU08y0iHEZiGZrdrPaqenKBA
Date: Wed, 31 Mar 2021 20:55:32 +0000
Message-ID: <CO1PR11MB5105573AAAB057C322DB7266FA7C9@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
 <20210325223517.17722-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20210325223517.17722-3-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5232e54b-7794-4c22-752d-08d8f487531d
x-ms-traffictypediagnostic: MWHPR1101MB2286:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB2286BCC3903363C025E3A377FA7C9@MWHPR1101MB2286.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ljm8CwZl5VBJl6qlY9UNf4p+PXXU57AxJdawWHN46vCjEBzseBUqkAegKPDX6LaEwAgyKW/e21UHVTyvHqOUMZNTxic5rrRhL+62pSAfaS+2GvubL5KsoC9svSsjibNX+y8ocJEOGKTmzmkFHmxy9t7yOmC6V+sXgMc+yK990YAguF8KBnPiklwXsnLPpQdJZPlUsZyjSaCQIdUOFaCCgvKiyyYSYANoc4pLpTTZibX7pom/tUFpFy8SIJLaYjT6pS47bA3B0Jc55Ro/XKxsCkkSoQfJFB+VCzMPqSHNNAwcUBwXomOS24bzDyMpqzn5u2c4hl9LymkvNizPSaH6VLCo4FlsUOA2UBfRdopzoFQrQxlT9cNnnHcgy9sW5zz/POqLerYnbXcJ4UE9J1sJTkBRzc3kWKPH9wDMeBVEsGVHDNUWhhsP79jUv/KHVEp3MYOJXBf4WCyIjV3NmijhqIGumgymnJcmlslQSRk6Tjrdh3zUXDBeP6Fzg8/1i1lL/o7ymO1A+NutL4Ej9sgGe3CsTAhjV6H740DnqcoYbpncxMVkPZyb5xFY4eJEHg/Gpi8x/4nKswnjnegF1Yr0nPzv4hg7+mgjrA+3NtHzgopYNbjahR7H/zk6mYAYDvRLMhjPQRt4SOxUTCf1W8C5N4ive3ivU6WsBoVdhsTWUXg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(366004)(136003)(376002)(396003)(346002)(478600001)(8676002)(110136005)(86362001)(26005)(4744005)(55016002)(52536014)(9686003)(5660300002)(316002)(2906002)(64756008)(8936002)(66946007)(6506007)(71200400001)(7696005)(66476007)(66446008)(66556008)(83380400001)(186003)(76116006)(33656002)(38100700001)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?N1bZBdfyX8EIgEP1/oekbLBHUgXfOAmVC4gzldJm1eBu8A5GBRT+UwGjY2Nl?=
 =?us-ascii?Q?+MeL27UIF6aPOPa6GV9IpyVMXk2jPb4GXMKDrcdZcXQ7L4W4e5UXJIyeMZMA?=
 =?us-ascii?Q?YhyL0wMNBsmbGfYZ3F/ntX7l6XWme1QfgBXE7QQ9dENuPm95IjQtUpfnZcxx?=
 =?us-ascii?Q?mpegRNMUO3VwxTvZzAeC9k9NMB1r93kBuHIxIarWk6XtxcdHDS3xCFLGcysa?=
 =?us-ascii?Q?y72F4wkU7mRJvLwxU1SDY21y0fmEWWjgaCmi7DZHd2wlV84WoH0y2uUcATT0?=
 =?us-ascii?Q?k6AC1o4fzVHgx3lbGzvIkQAe8V+QGq1Scnv5A2hIOU33FJqukHoT1V6jUMvQ?=
 =?us-ascii?Q?AVnAZ9lA21/AHbZWcjii8q9ZOshguMAA4ybHwjRBPPdGHJiNruVoSG4TPo9X?=
 =?us-ascii?Q?AnOq1XhwcG7DDue6nnB+rOjnZ859PVjJrfmXS/I4k5dY4rdc7poK2us0wNN6?=
 =?us-ascii?Q?TKnLkgKaSWCy8lmzcV7UjcmshB2JjbHIDXuJTgyIBwKYUmjK8wP72tz3dUdP?=
 =?us-ascii?Q?XbvHkMza3p6alZFYM3Wrt/FNxOVdnvxojvNORuCiywomNYoplp/RK3Qfrk4P?=
 =?us-ascii?Q?vOFkvuN38hkc65LKuXTlGatY2bQBnVRTgUjk6K303ERvhQg//e7ARt2zwXOS?=
 =?us-ascii?Q?zgG0j1aNPfU6ENuCVt2WOzCQRql2xql6B6C1kOl6nxVawLkcjkekXZA1pITJ?=
 =?us-ascii?Q?+DNVdZmMqgTFhKsnVUDGGmn88Uqrai76g7otR9hfvQ9Uye/sH7w63gjkeGEI?=
 =?us-ascii?Q?qS2KEtYwfZP4vCqE8HP3bXyDuLqkLlQV6n8OQRuWVvgg0SVzfXA5BL+Vo6u4?=
 =?us-ascii?Q?gjV4U3jfuNTZdxDppr8InkrjV7PmEu8gxZGzgjSu6DZ5JF+J4whGRTRG+lNQ?=
 =?us-ascii?Q?9b0Lzhpt9JpEyS9Q0Nfkq4rdZ7L+peNxs9WgCYj8mnhnEE2Xb6G6qy2BKNQN?=
 =?us-ascii?Q?rZyu9dOA2r/QVWC9W+fHhyrz0d2Pv8OLO0RXHusmabl7LyEZFUOv/k4f+v5X?=
 =?us-ascii?Q?PKoya4HBtcaUvw8ZUBJtX4oCjKw+gJioCHm2DNYj9pHnpfrvCkTnddYMZS03?=
 =?us-ascii?Q?9ccFMpg0ih8244nLnDDKKdOs0etHMZ/DLFfE1GsC9a6okmYtiLc4Ik8O4Nup?=
 =?us-ascii?Q?YOatNsRrH6nz2j5PJagqMQOQpYzrjHkk3UDtpx353/CNOlUFV4pO7aj4yWp2?=
 =?us-ascii?Q?UL0YktJNxCxokjDmWv79BeMuZKUTCeh0nqNar9OWcoHdwnIGx5GxdFu8Oln+?=
 =?us-ascii?Q?J1Lm6u5Nz8ODiklrfaRxaZ4YVyjrp8P/rAdFB8Wik9NHWxXyt/EPWvywJAHe?=
 =?us-ascii?Q?+udlk53XDUN4i18SKgWcQ7/e?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5232e54b-7794-4c22-752d-08d8f487531d
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2021 20:55:32.4171 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WT64bJxLOS5rOzHe+HRZTt6dKRLxEXrYEdMbVKyBd2glLO3tU4RBNqd7x4CYxa2n+VKr2FsJBNXM1/FR6IO0u3WM/k9PZpSVSowmRgssYH8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2286
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S57 03/14] ice: Align macro names to
 the specification
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
> Sent: Thursday, March 25, 2021 3:35 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S57 03/14] ice: Align macro names to the
> specification
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> For get PHY abilities AQ, the specification defines "report modes"
> as "with media", "without media" and "active configuration". For clarity,
> rename macros to align with the specification.
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 10 +++++-----
>  drivers/net/ethernet/intel/ice/ice_common.c     | 13 +++++++------
>  drivers/net/ethernet/intel/ice/ice_ethtool.c    | 12 ++++++------
>  drivers/net/ethernet/intel/ice/ice_main.c       | 12 ++++++------
>  4 files changed, 24 insertions(+), 23 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
