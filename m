Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B32E337205
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 13:06:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B212644352;
	Thu, 11 Mar 2021 12:06:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7ajZb4WRUJC8; Thu, 11 Mar 2021 12:06:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 720A74EC5B;
	Thu, 11 Mar 2021 12:06:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 87D231BF321
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 12:06:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7391642FFA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 12:06:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YybBe8l2Twth for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Mar 2021 12:06:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9D08C42D1D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 12:06:44 +0000 (UTC)
IronPort-SDR: FH/mCaXOvAHyKmEaxQLx8UA5gHFg966xQiSMyj5jdENGzm2JvZgFVfMBm4WtoSO8s1GfFfeJkU
 G88QR1cGiqKQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="186277529"
X-IronPort-AV: E=Sophos;i="5.81,240,1610438400"; d="scan'208";a="186277529"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 04:06:43 -0800
IronPort-SDR: EX0berOGlFbGI0wgdebQ9lEUX62CA9upaKn20rln2EcriXjWdnPBmcuCLQZHPdzmX/9h0lmXDr
 C6rfkHOMIvAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,240,1610438400"; d="scan'208";a="409466931"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 11 Mar 2021 04:06:43 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 11 Mar 2021 04:06:43 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 11 Mar 2021 04:06:42 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 11 Mar 2021 04:06:42 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 11 Mar 2021 04:06:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P8JT/xlPTbBN15Gj3ztVS8bAAJDFCYgDNxGpJi/pNuVro5GQQ5JPThrwj3sCpzudTy34lUmS4ipDG3gvNyYfurpqfnSVGrvmG23Q86BhlsnMI+nakCUfZFtEDEqPZOARpnJT6kmmkUfhZZ38YsPoKFLaVRCtMI8ORkVgbJjZN6yjBhcxKFWGQ7Q0VaUyNixTUD436m0LRkoHhhyGokXl3uvNQKRZ459y9wz/vyl4WB4GkmPH53ImSQsnKtiYLvLn6epdWTr7WEALXMu+25he4Krw01sHHJBM6IBKnH/9Tjv7V4tIL4xQuPIuBN/CSig2LySMUlCOKwuoKIRbRP9Isg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+0VOcfQDxBq9Cgi/BEWxol+ifKngPcHmIIWiTBkmKME=;
 b=n0ToxlLEvZwKSgtocr7FO2RoSbE982rjoHppsYD3RhhWgsvGCymSYE4/5K5wK+ZKzzxJsdxuBQS7qmEWwmv8dl6dEvhuj2lMjwuKEy4vU+eI4uhpf/9bmuJyaQeqEdMJR557VKuxtQrpHYMZW7ihVd4ND4dzJby7knvUCZYfvBzhjkuCYO2/IHI3Fgrri++J0kpsux+zoxBd0nVWHormwWcXfwB+JxPv27si6uceGc2upu94JBJvnkAnmldXLE82/KqmqIhEvyvPkO//0NFC0apUVsKeGEXB6xWcFSkaX4Mqkh/z5ca38uz2NEdbXE1psYgVeMEg+jMXZJwDR0naNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+0VOcfQDxBq9Cgi/BEWxol+ifKngPcHmIIWiTBkmKME=;
 b=QwrQ5/7fLesnCklCHDuC3gYVo+gBshnTmMpvHben6azwmlA9HhLAp6xCQDhrc25qW19K/HZmxqgnIypmauVN9HjCMkk0IzGf/Y/uDZySCAzxrFGXECFwHM04RMRQXN5/Mw0MzPn0BGjBygTZVtDndy0c/gh5G+RYqFEs826AvAs=
Received: from DM6PR11MB3292.namprd11.prod.outlook.com (2603:10b6:5:5a::21) by
 DM6PR11MB3354.namprd11.prod.outlook.com (2603:10b6:5:9::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3890.28; Thu, 11 Mar 2021 12:06:36 +0000
Received: from DM6PR11MB3292.namprd11.prod.outlook.com
 ([fe80::49d7:5128:e3cc:695a]) by DM6PR11MB3292.namprd11.prod.outlook.com
 ([fe80::49d7:5128:e3cc:695a%6]) with mapi id 15.20.3912.030; Thu, 11 Mar 2021
 12:06:36 +0000
From: "Bhandare, KiranX" <kiranx.bhandare@intel.com>
To: Magnus Karlsson <magnus.karlsson@gmail.com>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>, "Topel, Bjorn" <bjorn.topel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "maciejromanfijalkowski@gmail.com"
 <maciejromanfijalkowski@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH intel-net] ice: fix napi work done
 reporting in xsk path
Thread-Index: AQHW+57OF1OS2Jx8Y0uzMIh6l3h+y6p+5eew
Date: Thu, 11 Mar 2021 12:06:36 +0000
Message-ID: <DM6PR11MB3292201BF7BF036D5A55D9AAF1909@DM6PR11MB3292.namprd11.prod.outlook.com>
References: <20210205090904.20794-1-magnus.karlsson@gmail.com>
In-Reply-To: <20210205090904.20794-1-magnus.karlsson@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.79.164]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 17c51a06-80d7-4df0-e51b-08d8e4861ec2
x-ms-traffictypediagnostic: DM6PR11MB3354:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3354B29EF4E4F881F886AD81F1909@DM6PR11MB3354.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ACRnHos8+ttn02s1/2uGav6+Dj1SQrw2gvokdMq07Eb4HByeKYLLP1M0bSDPg8ZR8jj11p8qRyGw5pByjrdoWj40jHIm32aZ/XSBVuLLUiD+YOQX4ojU85679r+nmgUWzD5MwJA+JKr89QH3ls4DjQ4FMZZ75C0owaMYOw6xYZDv/6b4taWCb8Y874PflCqcpiBq0XiLrCxSZfsHjLB6kDiIq9AeVm8s/FH2R/FSwcrwtTaq36BAwFlUJpvmmCzlctSixdL9Mb1+ikdi6W5xzHNo35tBmlPS4vfl4LhQZQ+bV6kB1fBrrU+2/NLe8v7fqR8uSGzY0Pwj7gFMcOS/+UaUeDw+Lr8xIDAVZwk5N/o3/beVAMmS5FpMwSaG84qS0YSpUsLf2TGw0yZAsrUu6PW6m9Ez7srRByjnJ4XY9rggwDMIS6Xs6WUWof/jX/zoQ/xS7maxKtuoi6VeTorzd2enM8hPdYUpP3zDWn0ecDHXcxPrat0gLJW8Aw6wb8VYl1kBiNEpD9lUbqtkEniWIPmuigXk98ZCaPmegNVJbMhMJxJ1Rlx6Tet+Cqh7Nx3U
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3292.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(346002)(376002)(396003)(39860400002)(136003)(4326008)(186003)(55016002)(71200400001)(2906002)(66476007)(478600001)(86362001)(53546011)(83380400001)(316002)(110136005)(9686003)(6506007)(66946007)(33656002)(76116006)(921005)(7696005)(8676002)(52536014)(26005)(66556008)(66446008)(8936002)(5660300002)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?eaHKgPQApc3k/IkYHTk2SlZYjRPU68LZE7+N73h5114AQ2mWlDQxDXdCUitB?=
 =?us-ascii?Q?wk10sYEgxDZYwzwwucJeUO+AHRLN9W1BPO5RvozNfAR+tlKjJXvYzaXFwUu0?=
 =?us-ascii?Q?Mf5EPj8no39yNLJL7gtMjkIUvyz9pTMwv4Y4sfyfW7dUiFpmR9idQHnQMDX9?=
 =?us-ascii?Q?qcDN3FC66r4abDQ1CSW57ENMG2yEJfpvOk3iD89/+cDAcZ6K9KVq+/NmS7YU?=
 =?us-ascii?Q?J8IUKSxmXxk9+shswzyWFWktBX3VcFvHaZG2riG4M42XIhcDrZovNPLHDDNK?=
 =?us-ascii?Q?mXI5qHTO+f72IoFr/6DoLAOegxWcULVQe6F9sXt+gccCFk4uO8QetXNOsfyb?=
 =?us-ascii?Q?IE3YA4mWQmi/cPts0XHtDpf/qC2nU0bq3Zxtyxnh7LkXxGPpWSoPW0yPFCB/?=
 =?us-ascii?Q?Z5hAZ1Ta5SNOEq+K0gzi0/m+AMPf9uOcpLxVEcSyq33GM7v/JcylZmmCqlSj?=
 =?us-ascii?Q?QNLqkcRQuoh1YUqzAHvzgZzoJPKZ9bl7u3Nh5zgR1/5VTGaqIxjDmykCZkZ9?=
 =?us-ascii?Q?63oGWswWWQ+6TRKJkDaP21q3uDsyNb1hzS5xcd1q4LugH5OsXfMYtVrAN2LB?=
 =?us-ascii?Q?2Iaf0UrFND+xU8Zriqdxb3BjT2gwMeXrwuASKWWpRT//GOMirHsS07YmeQRV?=
 =?us-ascii?Q?f/Q3hHb2NxSqFOkzbOw7hnte62Z1jG96Q7a7wIvwAIJLuL2zeH/CGZ84Ka1B?=
 =?us-ascii?Q?saYFZuFef6jQws0EZ7rVdF9DYv9GINS/zj3FRC+m7JCvlMYdDoCfexlnbHK0?=
 =?us-ascii?Q?CikwqkbmjfrU742p7MoBGqpFV2nLcy0UTwUHwSMF+IQdnv1fKJgSnISRQCI+?=
 =?us-ascii?Q?U7DmonEJ0sPLtQFFMxDgHbz05nN/dFc7tJf/q4wP4GinSUC81X+aYOP8Cp1R?=
 =?us-ascii?Q?vRz6CIRcdnlgowqucOo1l/5yxL3fvIFvfAt0AwYL2U7PhoEaC+yk+G4aZgt9?=
 =?us-ascii?Q?imCihUZEyQSab8uXPEA7r+H9cBRWZgwvfeXw2ZyiOrTgLudzqnEW1aCC1FiZ?=
 =?us-ascii?Q?bLgIe1MMUyCKC163x3qE7SnStxbxW5XT5PQnq7VcImFgLhoQD1boNQB5z+Rc?=
 =?us-ascii?Q?b8fhwrX22rTL41ktedFAjklzbK3jM1v06eW4llYr+dz3lEJ4Ycx4X+3xH/Nh?=
 =?us-ascii?Q?rtxv2WXIapcxLitt1j1FZCDyn4eTgZpC7hiMf7HLcfeJiZkF/lROPI9iCYcq?=
 =?us-ascii?Q?WsqVYsHq8FIrpvJYKyrY/w/QBB5jskSUclpuBqKn9IR6aAf3DEeEknDfgGWk?=
 =?us-ascii?Q?MySdJLKjBFPZU+ijIQ+DaoA1yPbjdDwDRsVzul/BC855wTWnfsfhcxw67Vr0?=
 =?us-ascii?Q?lzQKIHajlVFNyPZXr1oG/bfK?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3292.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17c51a06-80d7-4df0-e51b-08d8e4861ec2
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2021 12:06:36.4705 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bpYKnOSqOnNW37LIS/moERu+spqYchUuIvsJbNkwOoPrljSBpSJGVdOUjkfgTVS05HUE26sz8cJHPtu0i246utIIxGq+1iJBAzy5PH3UaHA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3354
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH intel-net] ice: fix napi work done
 reporting in xsk path
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Magnus Karlsson
> Sent: Friday, February 5, 2021 2:39 PM
> To: Karlsson, Magnus <magnus.karlsson@intel.com>; Topel, Bjorn
> <bjorn.topel@intel.com>; intel-wired-lan@lists.osuosl.org; Nguyen, Anthony
> L <anthony.l.nguyen@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; maciejromanfijalkowski@gmail.com
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH intel-net] ice: fix napi work done reporting
> in xsk path
> 
> From: Magnus Karlsson <magnus.karlsson@intel.com>
> 
> Fix the wrong napi work done reporting in the xsk path of the ice driver. The
> code in the main Rx processing loop was written to assume that the buffer
> allocation code returns true if all allocations where successful and false if
> not. In contrast with all other Intel NIC xsk drivers, the ice_alloc_rx_bufs_zc()
> has the inverted logic messing up the work done reporting in the napi loop.
> 
> This can be fixed either by inverting the return value from
> ice_alloc_rx_bufs_zc() in the function that uses this in an incorrect way, or by
> changing the return value of ice_alloc_rx_bufs_zc(). We chose the latter as it
> makes all the xsk allocation functions for Intel NICs behave in the same way.
> My guess is that it was this unexpected discrepancy that gave rise to this bug
> in the first place.
> 
> Fixes: 5bb0c4b5eb61 ("ice, xsk: Move Rx allocation out of while-loop")
> Reported-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c |  6 ++++--
> drivers/net/ethernet/intel/ice/ice_xsk.c  | 10 +++++-----
>  2 files changed, 9 insertions(+), 7 deletions(-)
> 

Tested-by: Kiran Bhandare <kiranx.bhandare@intel.com>  A Contingent Worker at Intel
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
