Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D56A63FCF77
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Sep 2021 00:09:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 831C480E7F;
	Tue, 31 Aug 2021 22:09:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WwI1mS8nCwaD; Tue, 31 Aug 2021 22:09:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2926D80E34;
	Tue, 31 Aug 2021 22:09:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F3B101BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 22:09:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DE64780E26
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 22:09:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9JGTWJLXVxrp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Aug 2021 22:09:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 90E8F80DFF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 22:09:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="218624542"
X-IronPort-AV: E=Sophos;i="5.84,367,1620716400"; d="scan'208";a="218624542"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2021 15:09:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,367,1620716400"; d="scan'208";a="427635916"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 31 Aug 2021 15:09:21 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 31 Aug 2021 15:09:20 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 31 Aug 2021 15:09:20 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 31 Aug 2021 15:09:20 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 31 Aug 2021 15:09:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gBAgllNTmPMFj3wYF7od6H8jNclc2mTGJYs5b0NbMGPlYiTO6IzFJH3BegL+6EUiG/QmRxv/42Lnidk1pkSD6pmgsmQYAFMiVbIulzYTBxxwfuBzI+ggLDlht5i8nbMTB9yxem4gA5oyi6OP60tFA3fIkq2Lm9TSrsZez41eOEYZo5Y2RsYWfeEEypSJxY++ByoM2DfLrNDLOKpAEs+iBQjfC7JmcUIt+ng1aRQwsFVaC+kCFQHwvCgADFKVRe1greCyA84l5yZNXumzL2LT8QMQF32vFBgS9XnSHvy6UiTMu3yegtAKtCw06UQ9M6d5LRU5NxC/z/Vk+BiFiHwQ4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fhKk/k34YgZP66XUOL7/D9W4J1gc8TdO9w1U8gjuUl0=;
 b=IKZN3tlqrFP5Y4uIJf0+1QMAiISFP3EDtDVjljreKh/EqkmdSRCStcIM9qWtHVRonartbbt1RVXNDqfwq0VlVUg8mx0ikzsEAtYD0LPFM50J+bNnZr6nFhXVzDDNPn3PumA63/sCJT7EyYhk+jC614ff5ZGcI6AlIfxgt5chil10bUFgxf2HnHaNKLrpvaMeKeVQDOCfCtQwXCE3Yoxme6eX6J9uiy3PbHlCE+x+HSfiuUxOLnFec3fCfXP7HgWK0RjF0YB7Oh3RQJU2UW3aBDwdSGVlQ6yvCo/Fyna5aQUMYnhymGHSVcuYJ5Qlc///UfW/qDIMqlCILj2ak7Vpyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fhKk/k34YgZP66XUOL7/D9W4J1gc8TdO9w1U8gjuUl0=;
 b=kGYiOmcLuK56bKZNwN6Zdt4xh+LYucA1qqhj6TP66eVcOV9PSkyeeg9umP3wr2QPr+Pw1sMd0W6vY2x6YVFHRXmA9Mo+zUJUjeuQvXn/YBuGn+9x5s+80XjR73Yq+fobBzrVQDzK3Ryc/3dUGoJPcdKeNBw3BZNDfWwDAE2gviA=
Received: from SJ0PR11MB4958.namprd11.prod.outlook.com (2603:10b6:a03:2ae::24)
 by BYAPR11MB2566.namprd11.prod.outlook.com (2603:10b6:a02:be::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.23; Tue, 31 Aug
 2021 22:09:18 +0000
Received: from SJ0PR11MB4958.namprd11.prod.outlook.com
 ([fe80::7865:f66:4ed9:5062]) by SJ0PR11MB4958.namprd11.prod.outlook.com
 ([fe80::7865:f66:4ed9:5062%7]) with mapi id 15.20.4373.031; Tue, 31 Aug 2021
 22:09:18 +0000
From: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
To: Richard Cochran <richardcochran@gmail.com>, Jakub Kicinski
 <kuba@kernel.org>
Thread-Topic: [RFC v2 net-next 1/2] rtnetlink: Add new RTM_GETSYNCESTATE
 message to get SyncE status
Thread-Index: AQHXnK7K1rkxJTKXbUG0z9L1S2fbo6uKlpWAgAANa/CAAeYOAIAAKj6AgAEaRoCAAEla8A==
Date: Tue, 31 Aug 2021 22:09:18 +0000
Message-ID: <SJ0PR11MB4958D55CB9EDD459AF076525EACC9@SJ0PR11MB4958.namprd11.prod.outlook.com>
References: <20210829080512.3573627-1-maciej.machnikowski@intel.com>
 <20210829080512.3573627-2-maciej.machnikowski@intel.com>
 <20210829151017.GA6016@hoboy.vegasvil.org>
 <PH0PR11MB495126A63998DABA5B5DE184EACA9@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210830205758.GA26230@hoboy.vegasvil.org>
 <20210830162909.110753ec@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20210831161927.GA10747@hoboy.vegasvil.org>
In-Reply-To: <20210831161927.GA10747@hoboy.vegasvil.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 53f3b0c3-2f35-48df-53b7-08d96ccbfaae
x-ms-traffictypediagnostic: BYAPR11MB2566:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB2566952FBC31A9298D5B39CCEACC9@BYAPR11MB2566.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ug9sRiBNqxHLRcCdSzP2trLw3kaz1shMvMQ63KtyarEWCe2wuPUSdfs+PnpAQtlHFOcuZAftU4ihP5auM8rasunmxCa4qQ+P5xRVfVlWoswwe3wMCfPgVHAn5j/ZXg0KQwVF71eBWzR1rhsMPQlSWNzUskd5PN9slU/DC6RiZO8sfDo+8MYX6NIDH793vn7UyFXMnJoS4PIWXmg+85D8uxMWzd9Fdk06OhMp5YCV+rLFmkjTUskmhdmAXVxZuuo9oUvGOTsixY3mj9yzaBptQPqKWet2+5fAGC4DueYH6c77VN/gXmmt2/r7nXcsrA1Fy2Pjm5vprp3sBZzcYxGNTdRbfTvbBUGV8mar2yeP7nMDZvqQCPOf1IV0SnqDeXH6fYj8Im6F67LRWlN0tw3IxdaXV8uRQCJepIQ3T2IHtHGxXsihDM2k/MHzy9JCrdDfzeR/B9edXiDcbjEYhv/bwrVweOW9vzWxJxY2upz4KbdCO7iy4h3oG/7NcpqnUMVQAOs8HmcC94jnfBy/M6sxyFsv80vPiHcEEcRSi5ND1EnYb7RLNqDtWlKI9d7VYHX6QDLzqq9JFF3vJyNHubDpOjRLRFBl+/x4FJyhsBOA96QA9kogbmmXjGXYsWv4ExDEP7PCO7as7SojACso6vRofsBBmk4mBalZLzKIWETXEWjSkywnud5DCK2uTlTOJPtvaMWJtRVszR1fPfVdqkkP3g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4958.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(376002)(366004)(136003)(346002)(39860400002)(64756008)(52536014)(66446008)(55016002)(66946007)(38100700002)(186003)(66556008)(66476007)(8676002)(53546011)(6506007)(86362001)(7696005)(33656002)(38070700005)(122000001)(83380400001)(54906003)(15650500001)(478600001)(110136005)(71200400001)(9686003)(8936002)(2906002)(76116006)(26005)(316002)(5660300002)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qGWIYkqdg0eweU42QRFV63urZ8gHh2yMSpRc1gt3SSQKFctd4RAk6WDLccba?=
 =?us-ascii?Q?l6MdwBc8ivfVi7wUy3Vn/llYfm+7s0sYVaHCSAds6vuWsg3au0zA9fWX73VJ?=
 =?us-ascii?Q?y7rvwYG76ZlqI3SHgJhItVFFYKXYiVwYANCOyWVs0YqFen9nkmDBLLAGcqGG?=
 =?us-ascii?Q?/hgHmo5Nwu4q/F9rrogjIFwIcL+xKHkN6+5U/0FrDef+Rfq4BqXchEOyBIZB?=
 =?us-ascii?Q?/2i4PV2oLvhKXPJnsgNQWwlwqArDRm/KBzlNWU+g9Uu+M+rgxUgjsrsuTSTa?=
 =?us-ascii?Q?9Ebp6XxHI3JjKScAUnavkWFXaYK25XES7xtAZJdomgi8ArIHra/nok7369Y5?=
 =?us-ascii?Q?4T26zSm6VdtTapG2paWQfZrjcLPxKA+9JF8v/BcZvf696Xrv0iqS+msvhePg?=
 =?us-ascii?Q?cqHh7b1LuuNBhf1kMiQNfYQIyo+H0VydF2eCYJ4O1T5+K8mkFPyVKVyKevvs?=
 =?us-ascii?Q?ibPSEBf6fIQShQZaDKwix26tWYnjy0RH5umtcVpZomyZoc7IRTkb+36DmjKU?=
 =?us-ascii?Q?YhJ36rlU/iH3QMbkD7MHkzgbRv9qN7SrF76H7mwKirc/vtB/PljHm0pbUJbq?=
 =?us-ascii?Q?KN+z+61Wo0mMAFEiaseau9yKtHIaQcG+ptgQB+RwII+MPNK8atWQVIIAM+Yg?=
 =?us-ascii?Q?/TBC5v7M7kkvc6FOWtmlJKo49VfTLjom7Lr1rrYvNz7Xd1ccWdQ+PjKlWyuD?=
 =?us-ascii?Q?o8DDwm4pd6iy7U4LQq2oz/QNsf26hA5IyVPPtbN/6S2a1+yazAfbt3ijQ8Fd?=
 =?us-ascii?Q?g6Tu4xmz062EpmquQKrzeTva1dnLJMkIF39pe/KsqKmDJZDYek4K7ishp6DE?=
 =?us-ascii?Q?mflhTYJNjp+eCtUXJEilE/TxjIWpRdq6/dLfau4DW0t60SJJaV1CAmRjiUb4?=
 =?us-ascii?Q?tNVUFQx8jSisax9MwXD8wQtXYZAZ9uJiVFXgY8T4y1aEqPyAtOZ80YmMVKqu?=
 =?us-ascii?Q?8NS0cwpL7iGSnbDbe5fA0Vowmfu05IpTgH3wAFzN5wuqzUDn5KVeqwYjOZvU?=
 =?us-ascii?Q?L8hPMew1kO1K1XGaFseRsShJgIRf0C4E11Ycaa+n9CmoRsjAR0lyR7A5J0Ew?=
 =?us-ascii?Q?+W9beXAUI3cvd6sZexio+jrk0bAEIdc/aqZ+1PEVe/13WJ7hJziLAozvYdsx?=
 =?us-ascii?Q?PnX2qfQOVkxS7ZxUTGEdcqu3rAOM8jZ1IYkwwWyMdqOfe1Ipj22/9Y6Odl8I?=
 =?us-ascii?Q?Kh/5COZX9CaMCj6BopcOccqDX/40X8G1CTmNIfirw+bgvuYJLvl4SbTpk/bW?=
 =?us-ascii?Q?d/d+mRjuBD2c9v00gOBBesU8/1lEnfCje0jdTQQNVmJPgmocUmWbNI6h68La?=
 =?us-ascii?Q?q8Q=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4958.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53f3b0c3-2f35-48df-53b7-08d96ccbfaae
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Aug 2021 22:09:18.8808 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HU/7ysD7F1gCkKxh/iWv/tQFwmnH2+W9MYrR6L4jYxgPrdQCWaPyhEXSmmN1bmmbz4tL7CUcXCADnhvUHzHZIH4jWJP2glWq+szSIJtIZRk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2566
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [RFC v2 net-next 1/2] rtnetlink: Add new
 RTM_GETSYNCESTATE message to get SyncE status
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
Cc: "bsd@fb.com" <bsd@fb.com>, "abyagowi@fb.com" <abyagowi@fb.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Richard Cochran <richardcochran@gmail.com>
> Sent: Tuesday, August 31, 2021 6:19 PM
> To: Jakub Kicinski <kuba@kernel.org>
> Subject: Re: [RFC v2 net-next 1/2] rtnetlink: Add new RTM_GETSYNCESTATE
> message to get SyncE status
> 
> On Mon, Aug 30, 2021 at 04:29:09PM -0700, Jakub Kicinski wrote:
> > Can we add a genetlink family for clock info/configuration? From
> > what I understood discussing this with Jonathan it sounded like most
> > clocks today have a vendor-specific character device for configuration
> > and reading status.
> >
> > I'm happy to write the plumbing if this seems like an okay idea
> > but too much work for anyone to commit.
> 
> This sounds nice.
> 
> As you said later on in this thread, any API we merge now will have to
> last.  That is why I'm being so picky here.  We want new APIs to cover
> current HW _and_ be reasonable for the future.
> 
> I don't see a DPLL as either a PTP Hardware Clock or a Network
> Device.  It is a PLL.
> 
> The kernel can and should have a way to represent the relationship
> between these three different kind of IP block.  We already have a
> way to get from PHC to netdev interface.

OK I can strip down the RTNL EEC state interface to only report 
the state without any extras, like pin. Next step would be to add 
the control over recovered clock also to the netdev subsystem.

The EEC state read is needed for recovered/source clock validation
and that's why I think it belongs to the RTNL part as it gates the QL
for each port.

Those two interfaces will allow a minimalistic ESMC support
(receive the packet, extract the SSM from it, check if my clock is
recovered and my clock is in locked state, if all are good - pass
the message along to other related ports)

In parallel let's work on a proper clock generator subsystem. 
For starter It should handle:

 - reference configuration
 - reference status
 - reference priorities
 - output settings

Optionally:
 - NCO mode (here we'll duplicate the functionality of PHC in some 
    deployments)

Once we have that in place we can simply 
- reroute the internals of the EEC state the clock generator subsystem 
  on more complex systems,
- keeping the simple state-read for those who use other simpler
  Implementations of EEC.
- be able to support any hybrid between 1 and 2

Once we get there we'll know what else should this RTNL return and
extend it if needed.

Regards
Maciek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
