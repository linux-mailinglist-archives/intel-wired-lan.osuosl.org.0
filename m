Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A156670D35
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jan 2023 00:24:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 006E080E55;
	Tue, 17 Jan 2023 23:24:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 006E080E55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673997841;
	bh=ubGwSKik7h1G3CuzP4URpVhIdVViXIyOMEJfNmFIIIg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eL9cBeCIfToLuH0S6GXn88Ww8j2Qi4XhyKhBtiNiM9iyRcIqTNLjkdBMiFTXzXo53
	 LdBiqk0Yu+jzgVK56Xn305IThbiDrM6jatCeUormiCAAjDmy3tuBqUKjm2A988gudZ
	 CgjVOa3ydXJm5cYlrHzE7Lnz8Lwi7qeO4uOWPlE6HZmxhmQFNb5hW8fNs1bLvXiwD2
	 XmfPuHhvK+oeyt+rXEGtMus7QUpGUk0dwAmDU6MFfqQj8kkS7+qVaE3dLy4sC8wYvE
	 chgWhykO/4TBwXQaMIHvDLcXoQTAAFJxmgivUzgh2mhfBuP2r4YRAwS3tG1XlQf0lq
	 ez+2vIsmCe0Vg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rFfzim0jUqhy; Tue, 17 Jan 2023 23:24:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF01780E3F;
	Tue, 17 Jan 2023 23:23:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF01780E3F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A148C1BF47D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 22:05:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7A9A260DC2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 22:05:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A9A260DC2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MvY4YHYx0Wdy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Jan 2023 22:05:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C88C60C04
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2134.outbound.protection.outlook.com [40.107.244.134])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4C88C60C04
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 22:05:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G9tVDRdYCw2sETzSgm9BEJXVg1mGJ6LH1tisEeqaVn1YTgwopJzgHjofnTJOkgCpaOA/w7UcVARZykLvagOmTlyJbVmsVAXJx2gmyZksLKMfUiA7ZAC7f7UlXq73IT1RWVhk7tBy4KQho7qu1WI4gIivay71hx2WSpHEGnG98C4+xM9OeEHj5wmgB5vnFfSUDDHu+lvt0/EUGcnfJBzuDhhEog3oYmk9jFH+mK9Obz1JzbSkjsLLo8a5NO3UnQeIbq4HwMf/nvHYsshQoDYcGIb/18L9fc6PSZvkxn0R+4avqaepmfNNh8ugB9vmScQCmm0lTGWXG7ZZwC6z21zLAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4gOCf4s1i8Kq5+9cyKONMeudFOEFwL+8rOiK6UAj+6Y=;
 b=F3nE6A1jlTBoumdK5Y3w5pngHyk+Qwm8QsvMe/BgIbeR5kM86ME4l2l7JwU1bx/1WepDqH1SegslGr39lMVwA0kF7Sn3E/7Iet7D4/TE7nmPlUzXkiE7R7IkM2miVUhqnaMB4rgfekN2lti2JSN+RhKS7y3eVDt0q1uRdO6+xRGaMAeekJsZWRYCmdWRqURyAWkdeK0hylzUK+3atDsOYSuJPLk++B6lTseXdbv2PCIdJYLKjEJ7A/p28o5KEsV5kT0XSAPSGTgZNsZIsPon3hyeh2Z8leDIs2fQA0pKHAs4FfO4eX/Ohy1YxBK+cuhP+ulDjT/XK0JyxV5t0bqfBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from SJ0PR13MB6037.namprd13.prod.outlook.com (2603:10b6:a03:3e2::9)
 by MN2PR13MB3789.namprd13.prod.outlook.com (2603:10b6:208:1e4::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.23; Tue, 17 Jan
 2023 22:05:33 +0000
Received: from SJ0PR13MB6037.namprd13.prod.outlook.com
 ([fe80::a17f:495a:6870:18c0]) by SJ0PR13MB6037.namprd13.prod.outlook.com
 ([fe80::a17f:495a:6870:18c0%9]) with mapi id 15.20.5986.023; Tue, 17 Jan 2023
 22:05:33 +0000
Date: Tue, 17 Jan 2023 23:05:21 +0100
From: Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@corigine.com>
To: Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>
Message-ID: <Y8cboWSmvoOKxav2@oden.dyn.berto.se>
References: <cover.1673710866.git.lorenzo@kernel.org>
 <b606e729c9baf36a28be246bf0bfa4d21cc097fb.1673710867.git.lorenzo@kernel.org>
 <Y8cTKOmCBbMEZK8D@sleipner.dyn.berto.se> <87y1q0bz6m.fsf@toke.dk>
Content-Disposition: inline
In-Reply-To: <87y1q0bz6m.fsf@toke.dk>
X-ClientProxiedBy: GVYP280CA0004.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:fa::6) To SJ0PR13MB6037.namprd13.prod.outlook.com
 (2603:10b6:a03:3e2::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR13MB6037:EE_|MN2PR13MB3789:EE_
X-MS-Office365-Filtering-Correlation-Id: cb65b02e-9a1a-4195-3a9f-08daf8d6f485
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GWId5yEVOzJicf+DnbBKD9QSvlFnjM6LcF9ZpzJcMM9khTdqKsLOPbTiieMf7I/A5boQoibc3oRvoKt54V/Ne7eHDaktEwtPWaD39H/6brNiVIFKaLmNzaOYndiuKCG/FjVElf42q3Ckp02YmlDW9B7xIo5o8JNxjSg4NAKsOLRI7BeQ3+Xxvsb2R6YcwTgTHdSMAvNqrPkTa1fJr5dNRiM6fCJqdn4SSaTAwk2dKvGTNmeOFZnJEeL0lxlQHkxjFY1/LoqPvOV86FV9hHiFIa0eCKLuD/uQnWrj3gbA+6Dk/+egkwp6cRflDXS5ya8BOKGNqVr7zdG27nyY6dvW9gx6en8JxjODqcw3G16rvWpG9pCkyMomRiw/Ok4duzmabCq5pk6eJEpNqaSL2yc50uYu0Xu3HcOjC3UbPRGrFKp7dEOz4A2Mqk5lpmG9qG4gHRj5z89pN3aBLkilCLPv2kTXr1h2m8LU6VSj1keqkuG1KxMBwNFKxJB9y56pWMTBFO25dFPAZXFHzlIOd8M47sSlNL3xSB4jX0Q7Garoc1Qh8a7jZYJXqvugreH8RQp4At/+s0rmkSB722y4OoEJKK2m3fr6rckQTy2OwzRBjQJXzE1Gg9Qt2tVvGlS1Ifld2bc6+hjo+ZvUwTk5x3UQgj9p9L3yDGLX9X++oe35d3u4Vqe4nrHrP9vpZ1aPeCHU
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR13MB6037.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(39840400004)(346002)(366004)(396003)(376002)(136003)(451199015)(38100700002)(5660300002)(2906002)(6916009)(86362001)(38350700002)(7406005)(4326008)(66946007)(66556008)(8676002)(8936002)(66476007)(7416002)(478600001)(66574015)(186003)(6506007)(53546011)(26005)(9686003)(6512007)(316002)(6486002)(52116002)(6666004)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?loT/c7IVnqVf+9/5ou9JmRMKida1Dq0M4hZ/zksdbxtqHA3XKacE7vNi5c?=
 =?iso-8859-1?Q?p8LgCWhwiHk71VFo/BN2iuxFuqqFnJT/yAQWu2grjQs5CgGf66ZWvtICtz?=
 =?iso-8859-1?Q?l/yhM/0vHrUyS/0Aee2S1QJZzOAkIuzQhD6setZL93kws0ICMRddYqRWVy?=
 =?iso-8859-1?Q?AXRyx89uLoye8l93BFJJcj7cs/Cm2fg10mlOHNYECHA7jiI7MBMX9690kl?=
 =?iso-8859-1?Q?ayCRA59ekzpAQu9iMS+HDny+R91Pqeir2fNDYX+wPvoxyG6B7K8w+kkHCO?=
 =?iso-8859-1?Q?D4i3kvw6YrA/h7KGLaxk5MojcvKdwAUTldRe8D5n/CrOVr9YfSWsbea+Bv?=
 =?iso-8859-1?Q?Ar1aCaEHluj+DZc+BKap31inisi6yo47LKJrGkp61DJ+0y+h7EIvajZad6?=
 =?iso-8859-1?Q?TRDUUiQY7fF+VqmSZDq2gdA1SyeAH6a+qoploF8TotilLs/xsH8wu3IFJU?=
 =?iso-8859-1?Q?5iUDRJ3DDcAk6coEZi6IeLpGb06c6j1uFbGXYr3vPpE+/FDcaArN4qlpdS?=
 =?iso-8859-1?Q?P224jOS2gvAp4PP5IailSnXPeyq4dfxoHN1+kpEgltuxHmDxT/Ce+NIH6o?=
 =?iso-8859-1?Q?aduI0cyoCf+z5mcKxGdIgi0Ziq6GEVbL2oLlJfgkiCNHGBfJi84nmeM1TK?=
 =?iso-8859-1?Q?096Mox+v+6ucNoFo+aID/8l7tuXacU9NNOjl0HKReKscNkB1BGT1yAFm4o?=
 =?iso-8859-1?Q?R0gMlthkJOvpsz4Dj5GYHic6lmSqyVWm2Hc1y7cCxF8sBfe11DH9ccdCCr?=
 =?iso-8859-1?Q?QSo6uUsbXwKDSDN6H/wME6ceDiFezBRHzRC/sCMcHTUv3GFox4iSDdfFDD?=
 =?iso-8859-1?Q?7H6anpPQMZUT7DCpb7L4x4azdkXc0AvfP/6B6cSGaIBXc0myoqsc1ctPyl?=
 =?iso-8859-1?Q?mOaJbVCNHAihBgcOlenX3zwxaMkMjBU+Qx/4zkzZZjHfyKAtPNUcPY2wJF?=
 =?iso-8859-1?Q?Z0eD/t6zOYHX3K6anyPRZjXBzLpdqeD1sO+/LSUEwos/+asBDlkgTqSa07?=
 =?iso-8859-1?Q?JU93Y4Ir166fc6msDMLFEYwAGaZr3O+c4Se7/yFvqm2bX6KEtZQzgqZbNq?=
 =?iso-8859-1?Q?JIDv1tL26/UQp7VnsXDRVMKH90EvOv8/8CCjjmN6Xn7A3II6yxLieY3k68?=
 =?iso-8859-1?Q?8Ixm2NWk4yDtZa1eBZo+R+NT1WGcnYjblmrk84pAFKzIDF0Rs+ajdjnS8Y?=
 =?iso-8859-1?Q?DvDj/S313W7ISfFcAEMfnYGn8D7dpjD/w3J8mczIzfKtphfoG0QU0yR2HR?=
 =?iso-8859-1?Q?DG8L8TVNXlMFaslT9LaH/9zn7HsEUzcPDHrZfTajIJzZUHd2kH1tzzqYqS?=
 =?iso-8859-1?Q?hDDPWwz8HKoVscK0j4npwOCxU77qeTsxbVRSHwGwlgcW3Xs2m+2b60NiJ2?=
 =?iso-8859-1?Q?OyfO7tdiY3HaAIO1Do+wBMDuX7TqQtHiV/ywEnHG3P+r+FYk5GsmOw4FTB?=
 =?iso-8859-1?Q?pphzxKcPrSjc82MCexkycBaqS4+9XxpWd1xjC1s2KMEqSi673KvtFWzgvf?=
 =?iso-8859-1?Q?wMyVE8MEBd7p64L2DJIoBdFKMC0hby6lTFumScjSm7EKy4sQdcVL5VQ/t0?=
 =?iso-8859-1?Q?gZrFDXuTuDF0N1bsxBqYarthhPibaMuC+1zxyWC+mkXj8fza2DDnZv/XJb?=
 =?iso-8859-1?Q?Fd9MRK55OlvLZ0/w50qERPPaYmwd2C/b3ZyQI0M2tQE9Y/aCRGNivIFg?=
 =?iso-8859-1?Q?=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb65b02e-9a1a-4195-3a9f-08daf8d6f485
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR13MB6037.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2023 22:05:33.7595 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xKCagImwbfw7RBbJLGId7QgZ7hySkXJwf2NOJNlfXcnME6ejamfJatOZ8ndynrpGRYu6Hv8s2PUY69SkRU/bYrLOYHnxW6U9DNl//pi6XY0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR13MB3789
X-Mailman-Approved-At: Tue, 17 Jan 2023 23:23:50 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4gOCf4s1i8Kq5+9cyKONMeudFOEFwL+8rOiK6UAj+6Y=;
 b=o+Fks4u5VnjWexIMDchO4JDgEFfP53NGMeEoHNjndZxrsS8Tr9zi2H969fxAhtfW03UItACCcMkBOC8G5QU1xjXOL4B294EoehdrZzq29Ah0RPF021b9QgnGg0jXNvi0zdBxTnfFSZLsE1hcf3DVsgvHp5qs/rQqhLTwiXzYJJI=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=fail reason="signature verification failed" (1024-bit key)
 header.d=corigine.onmicrosoft.com header.i=@corigine.onmicrosoft.com
 header.a=rsa-sha256 header.s=selector2-corigine-onmicrosoft-com
 header.b=o+Fks4u5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [RFC v2 bpf-next 2/7] drivers: net: turn on
 XDP features
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, Lorenzo Bianconi <lorenzo@kernel.org>,
 aelior@marvell.com, hawk@kernel.org, christophe.jaillet@wanadoo.fr,
 memxor@gmail.com, john@phrozen.org, bjorn@kernel.org, bpf@vger.kernel.org,
 magnus.karlsson@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Toke,

On 2023-01-17 22:58:57 +0100, Toke H=F8iland-J=F8rgensen wrote:
> Niklas S=F6derlund <niklas.soderlund@corigine.com> writes:
> =

> > Hi Lorenzo and Marek,
> >
> > Thanks for your work.
> >
> > On 2023-01-14 16:54:32 +0100, Lorenzo Bianconi wrote:
> >
> > [...]
> >
> >> =

> >> Turn 'hw-offload' feature flag on for:
> >>  - netronome (nfp)
> >>  - netdevsim.
> >
> > Is there a definition of the 'hw-offload' written down somewhere? From =

> > reading this series I take it is the ability to offload a BPF program?  =

> =

> Yeah, basically this means "allows loading and attaching programs in
> XDP_MODE_HW", I suppose :)
> =

> > It would also be interesting to read documentation for the other flags =

> > added in this series.
> =

> Yup, we should definitely document them :)
> =

> > [...]
> >
> >> diff --git a/drivers/net/ethernet/netronome/nfp/nfp_net_common.c =

> >> b/drivers/net/ethernet/netronome/nfp/nfp_net_common.c
> >> index 18fc9971f1c8..5a8ddeaff74d 100644
> >> --- a/drivers/net/ethernet/netronome/nfp/nfp_net_common.c
> >> +++ b/drivers/net/ethernet/netronome/nfp/nfp_net_common.c
> >> @@ -2529,10 +2529,14 @@ static void nfp_net_netdev_init(struct nfp_net=
 *nn)
> >>  	netdev->features &=3D ~NETIF_F_HW_VLAN_STAG_RX;
> >>  	nn->dp.ctrl &=3D ~NFP_NET_CFG_CTRL_RXQINQ;
> >>  =

> >> +	nn->dp.netdev->xdp_features =3D NETDEV_XDP_ACT_BASIC |
> >> +				      NETDEV_XDP_ACT_HW_OFFLOAD;
> >
> > If my assumption about the 'hw-offload' flag above is correct I think =

> > NETDEV_XDP_ACT_HW_OFFLOAD should be conditioned on that the BPF firmwar=
e =

> > flavor is in use.
> >
> >     nn->dp.netdev->xdp_features =3D NETDEV_XDP_ACT_BASIC;
> >
> >     if (nn->app->type->id =3D=3D NFP_APP_BPF_NIC)
> >         nn->dp.netdev->xdp_features |=3D NETDEV_XDP_ACT_HW_OFFLOAD;
> >
> >> +
> >>  	/* Finalise the netdev setup */
> >>  	switch (nn->dp.ops->version) {
> >>  	case NFP_NFD_VER_NFD3:
> >>  		netdev->netdev_ops =3D &nfp_nfd3_netdev_ops;
> >> +		nn->dp.netdev->xdp_features |=3D NETDEV_XDP_ACT_XSK_ZEROCOPY;
> >>  		break;
> >>  	case NFP_NFD_VER_NFDK:
> >>  		netdev->netdev_ops =3D &nfp_nfdk_netdev_ops;
> >
> > This is also a wrinkle I would like to understand. Currently NFP suppor=
t =

> > zero-copy on NFD3, but not for offloaded BPF programs. But with the BPF =

> > firmware flavor running the device can still support zero-copy for =

> > non-offloaded programs.
> >
> > Is it a problem that the driver advertises support for both =

> > hardware-offload _and_ zero-copy at the same time, even if they can't b=
e =

> > used together but separately?
> =

> Hmm, so the idea with this is to only expose feature flags that are
> supported "right now" (you'll note that some of the drivers turn the
> REDIRECT_TARGET flag on and off at runtime). Having features that are
> "supported but in a different configuration" is one of the points of
> user confusion we want to clear up with the explicit flags.
> =

> So I guess it depends a little bit what you mean by "can't be used
> together"? I believe it's possible to load two programs at the same
> time, one in HW mode and one in native (driver) mode, right? In this
> case, could the driver mode program use XSK zerocopy while the HW mode
> program is also loaded?

Exactly, this is my concern. Two programs can be loaded at the same =

time, one in HW mode and one in native mode. The program in native mode =

can use zero-copy at the same time as another program runs in HW mode.

But the program running in HW mode can never use zero-copy.

-- =

Kind Regards,
Niklas S=F6derlund
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
