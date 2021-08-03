Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE0D3DE911
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Aug 2021 10:59:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D58F9402AF;
	Tue,  3 Aug 2021 08:59:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 118VwTMg12uJ; Tue,  3 Aug 2021 08:59:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9347B4016B;
	Tue,  3 Aug 2021 08:59:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 26C881BF20B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 08:59:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1F3D74016B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 08:59:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id prOwchirD30e for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Aug 2021 08:59:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 93CE5400E6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 08:59:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10064"; a="200826013"
X-IronPort-AV: E=Sophos;i="5.84,291,1620716400"; d="scan'208";a="200826013"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 01:59:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,291,1620716400"; d="scan'208";a="510953327"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Aug 2021 01:59:07 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 3 Aug 2021 01:59:06 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 3 Aug 2021 01:59:06 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 3 Aug 2021 01:59:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RtKikHICe4BQHUgHf5o8Rd4+BijJgMXB5Frd4UdUFmcrOxjgVhPStK3WO4grHuyxZf+7zRsmjV1CkK//DBOQkY98heHE2+bG7MEK77TStWxfQ7cAi2Z8dXezH2THJIWPrT/tqVbfQqeiWJ3BvroN1sqnSugOTAtjF5Dn0l8VUjRntlYnK2yzWnBWjq7C+4FJZljBNLLzGwQiql23T2b7FGCfxe5B8xBhaUTTsi7xoCHN3vg2CV+Jnr/lyvwmy3SYpGK4gD1yCjduf9REE8FyZ4UUiiLK2ZVYpQhKJvLEO0GkDxqGV7Zfzm2H+fgHgPWUBL7dw/gU7GeOkZQHmvk0yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1pCMDZX7c1XETd6QhtA3CKKxg6B03yvqDDEhA5aJiYQ=;
 b=WhGGeNWvlJGvkEWfFSfKX08yZU18NK4h3pv7Wy7wrqbWcHh6kx8PIyttQrTnqY+SXAmTyzkUX43ktYpn/J8H7pDPXcAJpq0MiT/R1KvTvuF0QCJI9tT8PqtlElW0qRBnA0fRuZaCwuANcFFCHI8NDfYSrAtNUnd3FPCbSZd/qWamCpBc+3aTgurN/Qlr1U7zMtSndTPaWfdmqLVPJo0XDAKMgSFgQGuaoJzfvojFUe6wHKP7ncJe3gFkd4ue/rfHqov7COYokmyc+YOD8beKiczbl5twHYRjHzmv+v5fv7+FFp7RDlEkGkuNaKklyorYVn1YGLtEjZo8gc4Bn6yFbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1pCMDZX7c1XETd6QhtA3CKKxg6B03yvqDDEhA5aJiYQ=;
 b=ib0jJFW81obzpOHkWkPshHzww5ybZvVfsc/quGglPCMtE5E1ckRj+YIORSipIPQ3Hj/KKSe6ChqJxgXYKgtQ5gadoEfP2NVPVnW/UohJFbPhPp1nOxFIrmexMy/LYTG7f5NesFWOBP10k4YGZeo7vh8NJPeHsxbEaKFtsOHQSxM=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MWHPR1101MB2238.namprd11.prod.outlook.com (2603:10b6:301:55::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.21; Tue, 3 Aug
 2021 08:59:05 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::34d4:c1f3:599a:6b88]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::34d4:c1f3:599a:6b88%8]) with mapi id 15.20.4373.026; Tue, 3 Aug 2021
 08:59:05 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 09/12] ice: enable/disable
 switchdev when managing VFs
Thread-Index: AQHXaau0dbxEsmaLwky8JRIHmlro2Ktht/Og
Date: Tue, 3 Aug 2021 08:59:05 +0000
Message-ID: <MW3PR11MB45541A553269F4F14ED88D7C9CF09@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20210625024501.6126-1-michal.swiatkowski@linux.intel.com>
 <20210625024501.6126-10-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20210625024501.6126-10-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0a2ea6a8-b7bb-463a-310b-08d9565cf2b2
x-ms-traffictypediagnostic: MWHPR1101MB2238:
x-microsoft-antispam-prvs: <MWHPR1101MB2238D4B6DBD8B544E51EBB559CF09@MWHPR1101MB2238.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1850;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /MOD6hdXTq6CekIkRYVHxobaEQQehnOqwjipmXNoqjmx2ChjPGp70HUgy+ZbE5kVSQZmhoJj6FTelD4kvP8/4ZDU7/gnsANecBsl0Qn+/A2hB8Dz+9HyxQQOiDuDRYr1Kshzilcmuu0VUbdaqtZlKGlX4NYQVxRnIlxjIpVrK4uN8jaZ3p+uKZZ8Ikq3lI6j3R1Bo6B6Fr0GkJX7tl2289MbOP3QRHCHN14Nzo7NW5qWw8/QmIwYHesEqW7bGo9DmtRz1Q6jykgG1i0L5f+wu4+psl54KCshWNrVhKgNMhkcWFRftd12DBXHUT24/tjn1vJK4CMcRMa6z+jeDjZIRxxxD4Ll5sueLWxE684CL8LUpOn85JzZbRaV5Ziy0WEMLiSYunEUgAHlcxS+z1aMw+xul1QuxYGV7N7Dki80+qnLY4kQtHuehvFNth09OKm4JHGvy0HWm3U1NLrEHFGK0YPQOjI5Mrj7EP2HmmTOaVbG+kly7UiJNgof/zqjSyJBPKR+2ku/C73jDxBGNqlC51aaMGNIkT2ifFpwhbVl89i7H7X0qvgcg5cAUAkMHC8iKL3ENluoGdgget5HVcVyVgsycIe8662rxQD9WWxJWwDfAHec6f0lqv1u/+sHozCQHMeUNMzDI2Ps4vjrsMGuRbEEOglsA+df1YS7HUnfqRg9pAYicyF1/AHKYO30kjRN7rVFzS1a6KCzerLwH/s1XA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(86362001)(52536014)(8676002)(8936002)(186003)(66946007)(66446008)(64756008)(66556008)(66476007)(9686003)(26005)(38070700005)(55016002)(122000001)(83380400001)(76116006)(6506007)(508600001)(316002)(2906002)(71200400001)(38100700002)(110136005)(33656002)(5660300002)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TKcF/LKL9wea5CjXss/HX+XxwbKMqBON7+I5cysojqhLiHnsoHtSPXNglF3c?=
 =?us-ascii?Q?nQefk9cWwnMmMbWzTj6Xxyl86kbrjbHw84CHByNIUzQgvI/ZjpHyWuFkRfXp?=
 =?us-ascii?Q?VuWzgMif899jsDHbl/6/ggWyPWj8jXZwKoCukdiGox2tEWMhaKn50c89PKmt?=
 =?us-ascii?Q?CgcsFSnxCGR27Xm1FSGQmbezMbosueVGdJaTBXrakeWSegR90VWkn7jxJrv4?=
 =?us-ascii?Q?41E0idlm5XEqUbLtbI0Ok7XIizR5Z3KK1DRX8zDhixmqb1l1myIQup1xUv/p?=
 =?us-ascii?Q?HfqTRvFiZ1Iv7x+XzAGf8GhUYzsXpAsF7GkdkGjB8lsUmyuZ4mCaEUfcI7aJ?=
 =?us-ascii?Q?PhJfq99qtnVe9Emg50RSwXelcUCPIzIitUqhDExaQ0T72AfDz+aFMHqdEcDR?=
 =?us-ascii?Q?RTcCy66nWsKTz8rEo4EHWgKVN/W8hh7MuHXVX2YhhPGBe9bCqrxhVkrk88BI?=
 =?us-ascii?Q?MCmx9EI78E18YliCvRcSw4eWrcfvXyGruO0hTg0YG2eWwwAW7ik9EYcBgpjR?=
 =?us-ascii?Q?YyWell/CigAtqz3DGtNwET/c+oZO8M01X1X6lx8eGSNv7Cb92l5+HYi9dsEI?=
 =?us-ascii?Q?kTXclijjBOybBQJf8EiKmXuUI40CQZsY9UN7oF6mT6ByRZmOxUFn5XUVFcwo?=
 =?us-ascii?Q?1UDyQTxfnwgtnCpymaqYEYOrJgu32DF8VBgHpEN2N8tWzXoh0oHtrPn/FwJ/?=
 =?us-ascii?Q?mAHE0sxtoe3kCBxv87YLbNmbbM2srK8KtrHy9fTVFR118jD0nRQQpqdqP4Qs?=
 =?us-ascii?Q?qDYGO+Eje8QafuvwukQHu0DBuSqhQ4xTAYLfqchR2QGI/MHLtnOATTNBpZfT?=
 =?us-ascii?Q?AFbtRhI+1XKSGb8+1fyOPeXS81sShLFP58TG8R2/DQYFDa0eqN9f+KvP7UGO?=
 =?us-ascii?Q?Ur1Pq4uoaNndeOEqa4ubMO1QQcUm5M78LoNqKY1LdxQiew0aYjENkoVGtPCb?=
 =?us-ascii?Q?oejUzo7Tg3aXKGJ8YOkGvuLvBa6dLD8mTWSMI3xYYUOan4dtvbgO4DaOp5aD?=
 =?us-ascii?Q?BgUyS2+uzuGjpfAl28fPXIjLHz5iNDuQrWLKWrglhBH3MsAZw0xFOyljw6oV?=
 =?us-ascii?Q?4ZLBhgELi00efrmsBN5SSq1Nn2nnj76eiCkmEh1vA5lDUUl+T768YTjVElwH?=
 =?us-ascii?Q?LDBVzNbqcXPs8HCmNoziBQ7PYnDLuQR+ccKQVN9UokeZ4aYyVtB+vcN2+MbL?=
 =?us-ascii?Q?SGFHsV/9QsRxvJ94MEoP0mIQjGIMMjV3463HbluD+K7GhKQEVcYHIWpgI/ki?=
 =?us-ascii?Q?xzVnqN5ZUy9nG4sJUhi+BeRWZSRmMglTvyaOdIWho4ResvEVkwPa+LzSc+Op?=
 =?us-ascii?Q?dYlKwbAPkwWM1gdb59RPylMn?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a2ea6a8-b7bb-463a-310b-08d9565cf2b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Aug 2021 08:59:05.7543 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7HmDwfF54SaWFKP1xKhVX62J3nmBb/UkthGvnCWz7QtaezsoDSy23vO2cFK77ElpDndmq+F/4OftMYw3+XhtfpJcnbVYSDJUvWdF7ArQmI0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2238
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 09/12] ice: enable/disable
 switchdev when managing VFs
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Michal Swiatkowski
>Sent: Friday, June 25, 2021 8:15 AM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next v3 09/12] ice: enable/disable
>switchdev when managing VFs
>
>From: Grzegorz Nitka <grzegorz.nitka@intel.com>
>
>Only way to enable switchdev is to create VFs when the eswitch mode is set to
>switchdev. Check if correct mode is set and enable switchdev in function
>which creating VFs.
>
>Disable switchdev when user change number of VFs to 0. Changing eswitch
>mode back to legacy when VFs are created in switchdev mode isn't allowed.
>
>As switchdev takes care of managing filter rules, adding new rules on VF is
>blocked.
>
>In case of resetting VF driver has to update pointer in ice_repr struct, because
>after reset VSI related things can change.
>
>Co-developed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_eswitch.c  | 38 +++++++++++++++++++
>drivers/net/ethernet/intel/ice/ice_eswitch.h  |  4 ++
> drivers/net/ethernet/intel/ice/ice_main.c     |  6 ++-
> .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 18 +++++++++
> 4 files changed, 64 insertions(+), 2 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
