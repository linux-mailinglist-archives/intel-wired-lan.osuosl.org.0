Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 629FB3899DA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 May 2021 01:29:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C1D1783C9F;
	Wed, 19 May 2021 23:28:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jYHn-X1p2wfN; Wed, 19 May 2021 23:28:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC77883CB0;
	Wed, 19 May 2021 23:28:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 347B61BF578
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 23:28:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 226B740166
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 23:28:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IaKS8jxSIgy2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 May 2021 23:28:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D78FD400D2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 23:28:52 +0000 (UTC)
IronPort-SDR: /Ak4zDL9dVYYPUcp8zN0ewPPU6BhcQjUJ7pirtdt49j9cclZ8ZdR3q5bGEtZRaCFRvp3eEBvFx
 bQtjIXurThbw==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="286629316"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="286629316"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 16:28:38 -0700
IronPort-SDR: WBRC+MQJ3DAogbWBU3oHMITbe0v5+N9feocBILpWfO5zDpQWpto7K2Zq1N15iM/GbVTsFJPmJJ
 HIQ2AQL3UGKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="627865585"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga006.fm.intel.com with ESMTP; 19 May 2021 16:28:38 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 19 May 2021 16:28:38 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Wed, 19 May 2021 16:28:38 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 19 May 2021 16:28:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HPYh/PXLzJ9R4er0NOLGvBwUca0oPI85JQiKvQPS+4qCRSpS6Km+x64fUZkiAHZ8qEKiLcwOZOF+r5JP+0osAxqbQpdW/Gzz1BaX+rKdymCvAxhuFLGZgFOeRJPV1ObmcUZXiE+QzTtc7NAUg8mX6rCFWkTD3EDxgXIojaI3ISsi1di/ofRk5VC0wwE19Hx0guC0snrN4x/pyF0NBS8YizJT3QPm8A40WpOYlLJ7LlNmOBk0xMIhBCc3WBd4rqnQLOvOfZ6Ojjz54Xp8UPuXoQtMYBiBpzCOCD3Db5qxIZlbufIBVX+l75OcxjB1xP7jRx8Rd4YJoPKn5zlXXDpTtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C9PvlzCuGQDmak+ZXtGrdNIC2EgZAReXJqnPQ4CNXtw=;
 b=jKXmfP6MS6r5tj1RY8oKPFeKWYasssvgWLPvwNoSVxB81OH/u+5ASq3lLfy5tfAN2huUTf5xY2LEZ6Kxj/dLVO2m4P9313g8o8avbGGaWSUN6QZvIzYkjCbOSkTFQtiCF5pgd2oDAupnMSVBWybLnXuCbTbMtlOmr+c0WTy5yMIg1JlUqXlZ/xoUTnOnk6cnMSK2gESxIiZXtQYLH5RmgZJ0uxT3H+wIPhWOFQdsbfjY8qdBzVT3KYZ47mW1LqBb/W+af8j5ENS4hsrV5uUfsPqDduhy2HvQSWADN8TGqog/18Fx1SXJjBr+NObZwGcoJkgwf/5omnO81k+fdyJvUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C9PvlzCuGQDmak+ZXtGrdNIC2EgZAReXJqnPQ4CNXtw=;
 b=v+EaGhXKgS70Uf14JGwRLMbRajyFBHQ715ZT0Mod8dusQm0TUR1uTar1kKN7qeTH4aJLuvJsfxZUH1DZ/rh7JeplcyOleKKAVIvPxr6+VZgeZCq7e2NgW8jwhQSiGVFFxF7jcegAlCLjvf9ChTQbVw9MiuRjrugsHnZWYcOIu/c=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1919.namprd11.prod.outlook.com (2603:10b6:300:106::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.28; Wed, 19 May
 2021 23:28:30 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43%7]) with mapi id 15.20.4129.031; Wed, 19 May 2021
 23:28:30 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 3/4] ice: Allow all LLDP packets
 from PF to Tx
Thread-Index: AQHXQfW0943TYXlDQUGWGeeph7uj2arriVKw
Date: Wed, 19 May 2021 23:28:30 +0000
Message-ID: <CO1PR11MB51058B559CF7B516FDF7374DFA2B9@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210505211800.11908-1-anthony.l.nguyen@intel.com>
 <20210505211800.11908-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20210505211800.11908-3-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 37b51b59-25bf-4398-839c-08d91b1dcfcc
x-ms-traffictypediagnostic: MWHPR11MB1919:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1919BF4EB1490CD5E638A5B9FA2B9@MWHPR11MB1919.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dVTHeQQ3rfh5csj1EJsLQEbQ/AmKoG0tWps8YLiaDuzxe+nuDzq7fYLfgj3ENgeqNOjv27EHKp/G5FEv+xPBByo9PqcR6Fc8aaMeGiphS/Ww1FhDWMzizbTdalJwNOJloVGMGv2no+xcTYvnnint34HJvcECH2sPoL4TvIN7uNd4kzlYO93UCwWCjUXYjWcV7XP35hDdctGXyUAqdg/b0jaKKB0hsMmbIn/qRx8Xl3xtCFKzRkBYWDcD8ZI84c32iqW9P7Ysb1f7/TBnM+rSve5svCzW0HDsCItsShU6JwH+9l26eo/GkMWUAs+qC1IlZOH67V4NxOKC9+Ny70tDl9FPqW7cNu7kUzeSWPjtbwWlu+zzz+7GZoyUDWzkRrjCN9+DcrvnVxszPuYipFc9CeNOKRmQLvrEfL0T1a+1NNsY5wNYB7O7WGbW6CkIauhEGOjhINdG/R52bq3wn/8ILIVtzf75SLJDal2OnpJigiFr6mtmcJEgReU/8Dbj0ea/G0a3GBNkpFkKJnvb0r34H7GlVUWp43Az+vB39Tgq9R0SfY1uWQDhsib1WuKcz7rVSxw5r8aiyLwKw2qnWArkqy5yS126vAGTAce+sNMkJ0k=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(366004)(136003)(39860400002)(346002)(376002)(33656002)(66476007)(66446008)(86362001)(64756008)(66946007)(76116006)(83380400001)(66556008)(71200400001)(316002)(2906002)(38100700002)(8676002)(9686003)(8936002)(122000001)(55016002)(53546011)(6506007)(110136005)(26005)(186003)(7696005)(5660300002)(52536014)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?wUvjPN1ze+qO2ztHdgTbEq13CtWnNhrm8k7hjXxifu5VRKb/LLTmQ74IE5Sk?=
 =?us-ascii?Q?+2nmUdOto4DApb8gxCVHtJYEofSqj0SLLOqggTXmSphT6AuBLJFJi3+kZaYd?=
 =?us-ascii?Q?PEvkDoApjQ9Ic7JbwS01P+jFpvgxCLt5PuhmSa2YCk9n9f4L8pG3nNcBFTY0?=
 =?us-ascii?Q?UaloQSeFje0grhWScxz3jk9GVULxWzKJwNowrGEH00gQjoQMvcebbZh5DBgf?=
 =?us-ascii?Q?mhVblHdIdq9BCt4iiVxeEUAQQ/SPO9sn1of7ly/NeXYYRha50sJG5HEV6NgE?=
 =?us-ascii?Q?jEj6CRNtHhsjnVa1Ed6fcwMXq2lWxrTZRygWoOOCA0zLlzxzHxj9UvGMereR?=
 =?us-ascii?Q?pbb7UEQ2B4g9a6/HRoWcKJA2skq4kXrdPvX+DqNXIUkp1dtaR8nck0aUlYE5?=
 =?us-ascii?Q?gB68UzKQnF8pMyUZqMSCzgxQkDurRPp2/dlq35xq+CzR6zN0BTCVKpJuTb/P?=
 =?us-ascii?Q?GFpDb2WbCyDEoS8y1FYTK+DSA+gvQVpA2U46UqirsKfU2NkqAhIWMn0s4lpv?=
 =?us-ascii?Q?GWme3QcRlgLgbGiurhE6/G/MDKhsWS4F0fl7v710C3c0HTAKLLoe8hP22sEJ?=
 =?us-ascii?Q?xWwXPiKFxUsHwsydEy1SJrJmVLB7ppll+K5+qNfTitQq7hO+jHPuwwWWyn9b?=
 =?us-ascii?Q?dpoxvDduIYVV/npuRHxG7gnQKeCMlG/7Nz4J5K069dXB8ry21uYI3vd0ixtn?=
 =?us-ascii?Q?dDDjzSgpAScUTJlqxHidWFwOurFsbDZ8Gb2wRUXbBcyOBY7iahYFLUrpGsVj?=
 =?us-ascii?Q?pNdSKznkW2trMDYHFIsLmI13qzGS4HyZZYHE1hZQrfGifvTlI36IYl7H23ZU?=
 =?us-ascii?Q?xvitixmPT2rG+2kTOKmMyMNDd7ZcsIbqJJLYmnPQJur1GfPQ9/8pARGgffBM?=
 =?us-ascii?Q?mjA3LsvCAvR9rv0UJ81CIP91QsCf5ANBIoi+C7NNnDVAxCQr4ysMcIOnmjTU?=
 =?us-ascii?Q?PKLFeoyLqFtm4BlCbxE7N6LBZgj2lfme77zegdNQgdekw66pOMy5pTbnwAFa?=
 =?us-ascii?Q?tEbJkQLUHMU0nb7tK5mgvSDkHLSZ8/eZDbxfg6ottFRIFzxQdlifbO277U2Y?=
 =?us-ascii?Q?9bEjY6wIg6MVVTS7Z93AlXycOcuERGYzym90MJiC5yHvEgT86HxoR7bITp83?=
 =?us-ascii?Q?SbasLNCGGljlfDWfGoigriO7bXXeanfybabxIOcNCJ8jzOHIIyFo07XaREQZ?=
 =?us-ascii?Q?Z+/g5q0SmjnDgC+SPSrHEma69iM3YqHC/dsWRIdFWM8xxc8PrsmKjEbNBD0n?=
 =?us-ascii?Q?Valkkm0cUAQAH0inasQMyCl1iWyhLhYq+4Dh+weoO0FqUb+2GIBbf3Q+hW/G?=
 =?us-ascii?Q?rKI8ifiTWMpoIKr/rS9fpeQX?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37b51b59-25bf-4398-839c-08d91b1dcfcc
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2021 23:28:30.2360 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UlHa7wxHGM7s89kfKxH2hxgTucx21/H+hMF+ldChN/Xb9tiwQ4proqMiLjVM4cXFjGAAAtRWqaY6pTTCHiKfUNIvIV4QZcYHWtre1Pch8nY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1919
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net 3/4] ice: Allow all LLDP packets
 from PF to Tx
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
> Sent: Wednesday, May 5, 2021 2:18 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net 3/4] ice: Allow all LLDP packets from PF
> to Tx
> 
> From: Dave Ertman <david.m.ertman@intel.com>
> 
> Currently in the ice driver, the check whether to allow a LLDP packet to
> egress the interface from the PF_VSI is being based on the SKB's priority
> field.
> It checks to see if the packets priority is equal to TC_PRIO_CONTROL.
> Injected LLDP packets do not always meet this condition.
> 
> SCAPY defaults to a sk_buff->protocol value of ETH_P_ALL
> (0x0003) and does not set the priority field.  There will be other injection
> methods (even ones used by end users) that will not correctly configure the
> socket so that SKB fields are correctly populated.
> 
> Then ethernet header has to have to correct value for the protocol though.
> 
> Add a check to also allow packets whose ethhdr->h_proto matches
> ETH_P_LLDP (0x88CC).
> 
> Fixes: 0c3a6101ff2d ("ice: Allow egress control packets from PF_VSI")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
