Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC65436B69
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Oct 2021 21:38:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7388C408C5;
	Thu, 21 Oct 2021 19:38:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CssnxUsxEw03; Thu, 21 Oct 2021 19:38:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 81235407BA;
	Thu, 21 Oct 2021 19:38:21 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 24DC31BF360
 for <intel-wired-lan@osuosl.org>; Thu, 21 Oct 2021 19:38:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 10A0840100
 for <intel-wired-lan@osuosl.org>; Thu, 21 Oct 2021 19:38:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rcO5xOSB-OcO for <intel-wired-lan@osuosl.org>;
 Thu, 21 Oct 2021 19:38:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 11104400ED
 for <intel-wired-lan@osuosl.org>; Thu, 21 Oct 2021 19:38:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10144"; a="216288329"
X-IronPort-AV: E=Sophos;i="5.87,170,1631602800"; d="scan'208";a="216288329"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 12:38:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,170,1631602800"; d="scan'208";a="552816022"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 21 Oct 2021 12:38:13 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 12:38:13 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 12:38:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 21 Oct 2021 12:38:12 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 21 Oct 2021 12:38:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KsSQ7P61Vj9zZL55rnMUI/COzyNqtQcRSJ23JBWbeirtj0gPskPrnpxqz8XYH1tGZCIDV/1Y8J+ng/G8Tr6km4L5AUjykHaUT0Zu8y3q9l0Y5qIYPqD6kfNjU8R0GlwyqTmbPT6Sjs34ucOR9G+FErgHljVAkF74Yvqv48EXer7hlta6rRfyigpOZjX3bapttzoVPLh9VzvVhojzmxlqyvi9pPgTyA0VazjnFVRoJIfVWo++AYOaGRvg+cU5bCHMsAZmD8evaz8PQGuTNCdjeF6ZWWmz8jw2vNSHtLXghaDafWFn12Y+Pj32UCir4mrDxxsHWROvHOmBcwu3Ry33+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PYNotc++fZQ6G6KhYPznrxTzulB9VzU9H5vNl892kS8=;
 b=kM26UgQkaZdQJMNBBZo1Sy10jMoGIZLjP9elyHJVcVe1DS1IDyJpQbzeaNByfu49HqYB7jEooMDW4t8dngucjGQNVAVnJ0CraZ6+MQdnE8HLHZD4lmXNRYex00B7q1QJsLbDAhcGRHjnaa4EuhUppwxMOn4KbxV7hTGQSbplYgiQvsIr34W2KnFEyMUKKmn5G16fE4uXLhLsLlBQfih9SUxmIh7WHBvyNGNcKdxmUX5lApQI6n5DdnFDj9Wao5TebCPFw47QenbRj9CO34x+zLwtrbFoVASI5ASBSZnmCuJXHfumO6JU8r0nCkc+96RubQ5IxYidt7WTurwpWii9Cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PYNotc++fZQ6G6KhYPznrxTzulB9VzU9H5vNl892kS8=;
 b=EFVJkbzfgtbQsI439BHuN9ECXMv5g9eXGvBxIc4J736AgMgFIJoTLEq5JQIcAwprAkLGwT8usvJ8J8SXX81gOXgK2jv40rk7cbx7IJl4RC9vIFkxi8I9PRlVBnmBA0BJn4QGHcEnwSXIMRYQP78UBgaccFgB5lX6VnVee6psJPQ=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by BL0PR11MB3153.namprd11.prod.outlook.com (2603:10b6:208:6b::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.18; Thu, 21 Oct
 2021 19:38:11 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4608.018; Thu, 21 Oct 2021
 19:38:11 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 net] ice: Respond to a
 NETDEV_UNREGISTER event for LAG
Thread-Index: AQHXu+eeK3UZ9HpVu0ySHSIr9wFblavd7kXg
Date: Thu, 21 Oct 2021 19:38:11 +0000
Message-ID: <MN2PR11MB4224DAE1D7B8E52E641841D682BF9@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20211007154031.52038-1-david.m.ertman@intel.com>
In-Reply-To: <20211007154031.52038-1-david.m.ertman@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f26f76d8-8e63-428e-95b6-08d994ca5136
x-ms-traffictypediagnostic: BL0PR11MB3153:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BL0PR11MB3153502D5FA7CCC7BA99856182BF9@BL0PR11MB3153.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Q410bgFo6ue9JEkOEiA4ePNWIi+1jbZATLayQWlTIGU21TqJ9UiuL3YxVd8bXP3inqzTmb1mcePT7801bPnctuwSqZpwS7iwPa5aoeE+CaAWELrDgnZrvviH1gyAnhnaxG0h2lqE4D4mUgWw+Nn/50A01UAsZXDynNjNSM+lnf+SEFXdqbw7N4l7uPazMexUKaNVwWrQ6rka+z6XCTg3hQ5nR4w2R9ASSIPVx13SwJktDBgdKv3bOTPd/HNCqHUQpNVyqQ7foz5LK8MGx/Ge02B+SQxcLW3XZ+ZS+L9q8XuIKGs0qmYgHgMNYhNYNiKnsqRgh3wk04LvQV9Dsm3PAbRT4OYfIwc0PLNpQxTrGSDkZrVSAv/lXbtIHUbLFmOluIoKNqHRtRnj2qP99J+wr/iVp6P8GvcLL/FcfPPTveDtA/xcPYRic5Wieo/u+u7EclxuGRXGQfRr607a601cgiwjCpQtlmwELptBa8FkfVypv8A4UlEjOu4qSi+bBYq/RvbTw5zidk3/9/fu9qT/UjmLRCRj2gg3iAZ+kj4j7UBbx25r0RbeDOrx+SCRuWxpnRs0689emEXUWG7udJb4u1FFGlck7bpUYpbatb/pdKQakscKgYdx7Vwp6l+VCxiQTwS9BPAppmpIPCGLaEYpVnUWspzRagDe6rUixKkQr6EcojQTL6avz6hyvLmy98amLx+FUH77Wwlar81YcN9LJA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(5660300002)(7696005)(508600001)(55016002)(26005)(122000001)(9686003)(33656002)(8676002)(83380400001)(82960400001)(2906002)(8936002)(110136005)(52536014)(316002)(4744005)(186003)(76116006)(86362001)(66446008)(66476007)(66556008)(64756008)(53546011)(71200400001)(38100700002)(66946007)(6506007)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vXwNTxYDV1mNtzR7C8al/4u4DD5+aM3DaouOkMFwUxAemMDybAHlm5/AY1lu?=
 =?us-ascii?Q?T4z8Oft5XHkkK3biY7ldFsWbNwYPJTJ1UOjm6cpC8bZ3Fla0XOXSMSKedw+7?=
 =?us-ascii?Q?X0LRwzgtWZUvT44DVmQCp6P7xmdMzj+hGNgytzwdVY6yGJg3g+Xk0LdVS/Sr?=
 =?us-ascii?Q?8w6emt2+OBHy9D0OIx32DDEGi12kq3ZvExu+Gjih1tYFY6LkrzGoqf2ezYAQ?=
 =?us-ascii?Q?Gr1Wlh6cDVjh/JE2JjyHCsw9vxvbRaWc+H32w+3jWbX13fX1GXj8Dk6sOrpj?=
 =?us-ascii?Q?OszDvy9ucbETED+mCmPzOcwSSc5rdX/rtZWuP7vFrUZDsIxiNqwGj7t/eiF2?=
 =?us-ascii?Q?fyM4gCE59p7M7e7f3IFnHFBTNMULqNyhdL7ScLUXmjAmiq91ZRB3CJivZ+EP?=
 =?us-ascii?Q?c0efHGDgk7YkyI1VJb4YK/GCx/hrua02f1VIYsSanlv6sK3dFJcw+tVJ6EOC?=
 =?us-ascii?Q?wRgTK65yHqU9bIjtSDxeetrgaTurLvnI48FpQ0lHWRN3JJpHFFMsMojOxFlD?=
 =?us-ascii?Q?P29zpka/uk7dh6PW0Fkxa1QaSrBQu4zUSu5/AmoofRRTYE1AOYs/4DV29jFw?=
 =?us-ascii?Q?21sjniIWE8JWZ2apmvv1tZd9/IiRofsfa5ON4wYjgspK8kjlCvOHEWjZ/Vz4?=
 =?us-ascii?Q?U58SecHjRzszYfMVswxQY8Izf0rjWJhhB0Sem1ei5D3vVlTU8G4cWWVe2HVN?=
 =?us-ascii?Q?9TS1l5uI2zUqNMa3ie4VKgIczu8AGPly1wA/aIPehs/te6HakwWb2METySqC?=
 =?us-ascii?Q?+aiDUyxu3t7NHrxQoq54BbwzKwWArHFerq0nBztz7xDOelXnCJmOtxTdWhwH?=
 =?us-ascii?Q?9txrQAyMRMDsvi7Utw0MzlthEI98z5zP/yvTBn18V/VWpeA7XoeGmMKzComX?=
 =?us-ascii?Q?X7j3PHxRi+tz9EsicvLZH3QiISHEX8OnWIUOhz30bEFXEugvZ6bKzjxUFr0k?=
 =?us-ascii?Q?KrtTbfx421I9+uVbzaAets0F/eNrlyPSr7YHmbjLqdRPMSYxR7g4IB1/4bj1?=
 =?us-ascii?Q?CsQ30gDG4XpEqIvOup564W31kDy2NjyvLqCWNGoUdmPekZlkf8r96Md8fm/I?=
 =?us-ascii?Q?3yVDP27aIpz9kSZQCnkTBTETQMUss90SXw3IDMj0x44v4h7raDHsVEffeuW6?=
 =?us-ascii?Q?gnfg7Fy7x6VBBsUJk9eDDnJ0/3G7dPJkKh3BFup8fsyiZdKMSMPBBFPi3hu7?=
 =?us-ascii?Q?UdE1fjGhKDCgC0TXmwb5Vxdt5A/GP/Hx8YyUZ+3N8lm8FtwVB9Su9QPQf/ja?=
 =?us-ascii?Q?sTFFuXQ37B/13NvjQo9F+VgsDNXQ8DLszq6QwIH23nnMmUM53uaMQNBfOmIr?=
 =?us-ascii?Q?chL39L3VYd5WK0HQ+weTheds?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f26f76d8-8e63-428e-95b6-08d994ca5136
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2021 19:38:11.5432 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tony.brelinski@intel.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3153
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 net] ice: Respond to a
 NETDEV_UNREGISTER event for LAG
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Ertman, David M
> Sent: Thursday, October 7, 2021 8:41 AM
> To: intel-wired-lan@osuosl.org
> Subject: [Intel-wired-lan] [PATCH v2 net] ice: Respond to a
> NETDEV_UNREGISTER event for LAG
> 
> When the PF is a member of a link aggregate, and the driver is removed, the
> process will hang unless we respond to the NETDEV_UNREGISTER event that
> is sent to the event_handler for LAG.
> 
> Add a case statement for the ice_lag_event_handler to unlink the PF from
> the link aggregate.
> 
> Also remove code that was incorrectly applying a dev_hold to peer_netdevs
> that were associated with the ice driver.
> 
> Fixes: df006dd4b1dca ("ice: Add initial support framework for LAG")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
> v2: remove the code placing dev_hold on ice specific netdevs
> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c | 18 ++++--------------
>  1 file changed, 4 insertions(+), 14 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
