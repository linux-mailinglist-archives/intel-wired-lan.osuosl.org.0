Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8834035087E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Mar 2021 22:48:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EACDB60B84;
	Wed, 31 Mar 2021 20:48:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uGP1k_odPn18; Wed, 31 Mar 2021 20:48:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E71FA60B6A;
	Wed, 31 Mar 2021 20:48:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4E2611C1189
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 20:48:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 454974045C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 20:48:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dMr4j_Qrr9dK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Mar 2021 20:48:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 376704014E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 20:48:44 +0000 (UTC)
IronPort-SDR: GbxY7nxedxtpln2a3AUVYsPEkd7TjxvhR4DUrIJYqrdCtJYtuzkcwRi8SDNg2SMqbbF45oyP6z
 7TaE+nxKVq4Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="171503986"
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="171503986"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 13:48:43 -0700
IronPort-SDR: DSzayw5brIy88c0guC3GZFAnEtuqDntxxpCVp66+brwaeqwgTYGzMJPsCs4Z6m2A/AWAGxk3jD
 g4EWzAh1NZxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="377420124"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga003.jf.intel.com with ESMTP; 31 Mar 2021 13:48:43 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 31 Mar 2021 13:48:42 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 31 Mar 2021 13:48:42 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (104.47.46.58) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 31 Mar 2021 13:48:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a4Mf4wrmwfVfOJYHbxffqzu4aq4+aomvpqY/oqBd49DaadX9Jt/qF121ZKsrT3Vr4OZekMXNpryy7XqSHv1lXCkyvdIgV9wcZCyXhRxrUrzen4nK61nwzdJsTlbZd7KyC7aznDXksvZ0fzsQx8n8gQJntx2yOvr+pzDyZ/Ye/8BFwy+XdCszDH/rzNbUPVTy98ItOZ/aOCBl5KiKuq6cz2sU4BUUHxNvCHZX8BoMj79FSMflYB6cbfIeUBHOjVp2zoc8NPrqr1P5WvglUTKYuqwBZe608I/f0cAUmFIsLIWIcznTMoXDpEt/HMFMfNeF+LLmMWolgzud6Ovv+4giIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FTtD0/0hIWOVwNIRlqPO21MGeEqmWOeF5ckT9uiil8Q=;
 b=RD+zYlnh9IjIYJ1vVpf6mbp7qx4a39yqf+KtLTS2EQEzFVNHh9+7wRP3oyAEBxKJtGGCoTIFDEeOzjdfgJKuGYLZLlT8yuNH5/RUL5yzbsl3ipCz6500ZtYuSKVKt16bptgqpfxN9/Ff0bLftqnh23Zdr5y6C0SJYQWUi/xWdTlNBf3hEC8jrAliNSOU0Hrd8HqLY8LMW9lzDtWyXAyql7A8KOVbFzy/BpxV/zq7R1hu+l6jpLMx6x0fo8/sLwsBpAmTzEvUDpwGeflHrZ3YqTyl/fgf7x6MS30SFFHzl70ZJ5NsyEtLbGs7P198MLfkWRGsMnAKjjFizzHEFGGWLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FTtD0/0hIWOVwNIRlqPO21MGeEqmWOeF5ckT9uiil8Q=;
 b=rdwHDwtZBJv7onsIB/5OYgcbFR/VGah43Pxo2QfHMpOdC3U7kr6tQT1P3N2eT8Ycd5Y+9WeqyX9OZuR0d+GovwrA5a4AQQ4qgC7BkBpc0V3o70q45EsMYuyy15nWLc6XWAxZTX3nZvItamWwuXFOJfQOnF0CrO2ntfO46QNGkrs=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by CO1PR11MB5188.namprd11.prod.outlook.com (2603:10b6:303:95::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.27; Wed, 31 Mar
 2021 20:48:40 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3977.033; Wed, 31 Mar 2021
 20:48:40 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S57 02/14] ice: Modify recursive way of
 adding nodes
Thread-Index: AQHXIciukLWoCI0XVES+B3RUgwwql6qemqTw
Date: Wed, 31 Mar 2021 20:48:39 +0000
Message-ID: <CO1PR11MB51055A420766E9B394630AD7FA7C9@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
 <20210325223517.17722-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20210325223517.17722-2-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 1df6477c-0480-41c7-2590-08d8f4865d3e
x-ms-traffictypediagnostic: CO1PR11MB5188:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB5188F48190B429ED5A6F4868FA7C9@CO1PR11MB5188.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: duuFBmvSAUVHCbHvMnnbw2dUEdcdKGKNQNwBySfTAwlzB+YdDQZNf2qBXETriU4GrK1OM0fP1BaW0xOSpQ3pRqUnz15yhqWCKyOQR+ZrPqmCbQasZ2ttTajIOJYqS+cFXWBMbyuZB8ZgtPRTl5vweOXanrdfrnlJ3PICkzFhJ0FI7bbkS02nfwzpFkHkOPGmI8j/OPkpb2Wrm+6hHm09DifuKLajUU0ToqMRIWV6VpwH2iKHzyhsXpRpcn7UhA6QB3jQAR049inZmuQhVfDSbsRvSbMsbm7XGKhK7BG0y0q9pk96s8ArZocLjlL+LLC7sYVyyyHhTr2mdMAIEKn3jLzgQyiG7CwHGRKBiywT3z2HxlGFfimPfiN4qxhVsJl1921y1I3U5qxkAKLrFzUs1NRuC1CFLLbPz3TIss6WYucLrjdDSysyZ0/ymgdlM5roRp9X8qxI4AgeyVv0VWoE6bZkbJv7s65oojX8hwLXK9rvSfAPTSPvczDHm/CY4+4GQpt8Bjtn6IA/fFPV4dDjbt+Na8Xs62GmjO88lm9dyb9qvus9nMyUrXnjQnHJX+LO+4gKL+5fNBsBXzqQJrLVLelqIm+IbQuf5kE0AFnV8uVaYnRT/bwJDkZ+09t9rJ9t/TxPcS01jpPO85pIjMIU8+ypopnw9qEsXA6LyKhTC+k=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(396003)(136003)(376002)(346002)(39860400002)(76116006)(86362001)(4744005)(38100700001)(66556008)(64756008)(9686003)(66946007)(66446008)(66476007)(55016002)(71200400001)(52536014)(316002)(8936002)(8676002)(53546011)(6506007)(110136005)(7696005)(478600001)(83380400001)(5660300002)(26005)(2906002)(33656002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?QAtLpohQNi3ahrNKIYRv505gDKjLvqgxzn7G4QXZkPSEREXxDeS3cg0SEBSA?=
 =?us-ascii?Q?HZ8mNU5fBRbdYDQN/huzuUFdHify9lLsQJhDQZcq0D8Lxn4uNoxJ/eYvZR5A?=
 =?us-ascii?Q?xQ8IBcoXY+MvbJtXNAVy2p+L0euE4vxwoIKYGSLe5Rx9WpsnWNxI+e2YJG2H?=
 =?us-ascii?Q?ExNlmR4xiFLNpHJpLSH9IQiaJ4XvuYPOUyWyQW74gaCfgZTRdWk5IVezjSB+?=
 =?us-ascii?Q?OexPEQSLWjtNPiimIczc+uHmnipm9sMiqFmTrDFHIskUxb1PZvUFYz45s3s1?=
 =?us-ascii?Q?6nWtx0lU8qvpqwtXQzJIwyDUxHf9KwuGQ+W/DGdylFAkPpXNkUzImgJFOnnS?=
 =?us-ascii?Q?RUMm07DxMQx/WJKEDIZq39X71zTbpNqRElT1HVyTYBi7xEffKOJobZEbwpMM?=
 =?us-ascii?Q?07alRdm6YXv+kF3bWeHxQ4yiUjKWw1cZsT5XoSKruP4Z9GkF3ON+jJbVYazW?=
 =?us-ascii?Q?lJOt+4Bq6DPqIJaJ8EjmvEr+3xlX63ju650iGjTjXCDA63kgerKjOc5GpnPR?=
 =?us-ascii?Q?wwcATbyIh85QkewtfvMngCqdgRvUIIcIbCEVB3H3nBOneEmTJMQilEV+9gf6?=
 =?us-ascii?Q?gyN+V3KNK/xRWEyqLkl3SqdRkMUNZTJccRj0gItu1ldNriR16f+Va4mgFIdD?=
 =?us-ascii?Q?xFi5K9/iS7XgQ2935iPDAfzZ3+1m7pX147m2xPCwUQsRmYI8fxFiDCuI1dkH?=
 =?us-ascii?Q?pkJm24UHZ9AkdfaIW7B9GmVXidMjZFjbeRjdVyf5LKTTmly2DcNdpxBfC94U?=
 =?us-ascii?Q?YVY8mSu4w5u/kOm3613AqocMr8FkB4x0epKgUrk8nuDTH+POkpyOO1ouqJIG?=
 =?us-ascii?Q?Bnw622qrTEezraUVdYs7aSy3Zz14eqngbsUX3n1DANGH5FyYBj+gnfZbUZl3?=
 =?us-ascii?Q?QIkch1ApX2Gi1FAkq30iEPVZ1xt/qg3KWLusTeU1/BM9jcSD3+hC9mvU9wr3?=
 =?us-ascii?Q?KMddv1yrX1U/DFJrSCzayGZZNMtrJABloazVQwYMsN5iM2kiUJirF/GJHczg?=
 =?us-ascii?Q?YXFse+6l1yp5SFGjTZyvfv9kPiYzH3qFtfEG0FCpEqrNCayb0L/E8hBg/IWi?=
 =?us-ascii?Q?q6sL0XqVBfZ3yUXNrWEw4R1XP/seqyJT5q9HL6GVQpyD3Z+FSACf8rPn1Ts5?=
 =?us-ascii?Q?rUuHcUqCrQCrAtBKdSB0DIHPb7QkYzoYqKnY5CblT46wAFUeyNPsclEH4xZp?=
 =?us-ascii?Q?eOsPe9fDHdBcoNkPmqKGfD/ChibqGe4x9ViX84VfI7dkCwdCJAxqQPiDouNG?=
 =?us-ascii?Q?CTxYnIvbao2WR+KlQGy64u+S0+qA8cmHlPEY2GugbpHELpfLvuRyKRHpoqux?=
 =?us-ascii?Q?Ip71R/gF4nTkS0S+2Lj9uZZM?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1df6477c-0480-41c7-2590-08d8f4865d3e
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2021 20:48:39.8511 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ggXQbkrVIWjdmpCFhiPMAgdXEKiPiMLbKdH/Wrlk18+3YN6AAiTPyJ8J8QylKnlZLN9a6IV+rskUt9YKPHnZYqcOQflzyRg2Nrt8+MLtToU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5188
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S57 02/14] ice: Modify recursive way
 of adding nodes
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
> Subject: [Intel-wired-lan] [PATCH S57 02/14] ice: Modify recursive way of
> adding nodes
> 
> From: Victor Raj <victor.raj@intel.com>
> 
> Remove the recursive way of adding the nodes to the layer in order to
> reduce the stack usage. Instead the algorithm is modified to use a while loop.
> 
> The previous code was scanning recursively the nodes horizontally.
> The total stack consumption will be based on number of nodes present on
> that layer. In some cases it can consume more stack.
> 
> Signed-off-by: Victor Raj <victor.raj@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sched.c | 130 ++++++++++++---------
>  1 file changed, 77 insertions(+), 53 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
