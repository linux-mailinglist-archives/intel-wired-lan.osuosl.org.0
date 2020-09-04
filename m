Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 787FD25DF76
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Sep 2020 18:13:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2FBE386EBB;
	Fri,  4 Sep 2020 16:13:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0CleNowvjzJ8; Fri,  4 Sep 2020 16:13:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1BD4E86C92;
	Fri,  4 Sep 2020 16:13:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8C4F01BF9B9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 16:13:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 70A5780CF7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 16:13:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rAlHOr2Ksyhc for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Sep 2020 16:13:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AF1F5866CE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 16:13:15 +0000 (UTC)
IronPort-SDR: hmFm9GvTaByBF9j9EkNpNUSYlvpUSw9G7XVtNItRp0Pl9LSnGuDzuoTWGtV4xbtarqHybMvHqD
 pwmokdZX4BWA==
X-IronPort-AV: E=McAfee;i="6000,8403,9734"; a="155277261"
X-IronPort-AV: E=Sophos;i="5.76,390,1592895600"; d="scan'208";a="155277261"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2020 09:13:15 -0700
IronPort-SDR: /9d1kKYYvZtbVLOmytsIbnjlm320SsmBMO5PRuKwo8oJiwX9jtJ2WabAu3Z4/G8EqasU1koTaw
 dobysyTpiSFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,390,1592895600"; d="scan'208";a="315892740"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga002.jf.intel.com with ESMTP; 04 Sep 2020 09:13:14 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 4 Sep 2020 09:13:14 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 4 Sep 2020 09:13:14 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.57) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 4 Sep 2020 09:13:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lrUxiQ4YKbzwfDYGrozYGgK0EWNzuyDGvS8Kf8wHaU5PfBJNh5yD8Iwv+wm7aj+plwCW6FXNA4c+pQJaaV5Y19d0V+e228qoW08KH8so8UK8tWuXsRYFEdTG4eZXTmD/1SxZMOVm6MkgzFklLU2H7vnDBf+uuppyweOVcIPiJyu2Z1W4FVsA53XkspWPkcJo1ovqwSTMri6WaZc5J7GnFkdZ6hDI4j8NglzmDSUPgt3nr/4tzmbN3WDen/HKipFAHcyDxes4W+EKHp/KuB4P+1kXPAc7iQIEq+/oscuzRSNW8jYnw5Qm1TarxMkNW/hcWhAh3Hzi/W/XiMgcjGEjBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HI7Qr4EupUQShpnZ5k2PxVCWY/w/djukOttBGqYSVc8=;
 b=EmrU99+prOdM6tDD9HBR7uvt4t499PNzZ3K9cd6Ol+uO2uiCRMyjRQdGjRZI/UlIv3ueMJkT6H0s1YrjMvyRZXkl30+uCuVOHUDSrQ+byZOR/QQnvAKdIT5Y3lvq9upoh8LPxsMPyIZweGuUverX70xRLke4/UjxdOh4F3Nl6h2SkVtIyJYHYOwbpVqf1XzT/VuFqNxreme7iHwyqzkPIMZvpySdh6TUi+K1h2/KLawwKt2T/oHI1dpMww7rFIxdfWwHnyD/dKBsC8AEBg6E6yQIFzZcAr5u1ZWtNOmVG18+0YzD2lB7cn9aCNLQmNSG8jlETkIHRZ596+lIXyOgmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HI7Qr4EupUQShpnZ5k2PxVCWY/w/djukOttBGqYSVc8=;
 b=A0FsnDv7BukBRJzkFmmbBfdcXYD1Qwtigo7CdqKKw5qDiQjNRYP0eoRFKquFTHwL1INmw8i1KHZbi7dgwHl0Y/t5X6B917SX4oRBQiC2ME7DQwYyZ2UaEFMZ5SZVG9UIi+n3dPue3Mh5GXIUdamcCkVGLpyuLm1m9RyAUku9le0=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2670.namprd11.prod.outlook.com (2603:10b6:805:61::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.15; Fri, 4 Sep
 2020 16:12:48 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7147:6b91:afe3:1579]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7147:6b91:afe3:1579%3]) with mapi id 15.20.3348.016; Fri, 4 Sep 2020
 16:12:48 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "kuba@kernel.org" <kuba@kernel.org>
Thread-Topic: [PATCH net-next v1 0/7] udp_tunnel: convert Intel drivers with
 shared tables
Thread-Index: AQHWX8dIqfLMKTfuhkiHDJfcuSiXjqkUHOeAgAF8+QCAQji1AIABGlGA
Date: Fri, 4 Sep 2020 16:12:48 +0000
Message-ID: <072865141ce38105a12f47051585dc8deca2b3e0.camel@intel.com>
References: <20200722012716.2814777-1-kuba@kernel.org>
 <1af4aea7869bdb9f3991536b6449521b214ed103.camel@intel.com>
 <bfa03cf8613ada508774a2e6e89b9b01bfd968dd.camel@intel.com>
 <20200903162220.061570d0@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200903162220.061570d0@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.215]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 68552d88-8c16-4dc2-d070-08d850ed5ddc
x-ms-traffictypediagnostic: SN6PR11MB2670:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB267061224A7BF6A95FDA96DAC62D0@SN6PR11MB2670.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mpIhh5LCnh367sDX4I/rrnYhkkmyvFYfpQOy2IBvb3DLom48Y8+7PZmEbRGxeOVq12Yp+YJK9lEVW4KtQoIDEtRNIa8p0PUwIxJFYp2y/QQCYMK5Rpo1SvU8mcDMbbcM97QJTtGjNBRBQ9jhrEe1FcXCr0gmkVutAmxiu2/qtGq1BIyOi6TL3iJZKJi+Dc2x9RlDtV5+/HG6NlYJVXf0MFgpVBBrvHroFFed6v0xX4E0PNdGRPhc+ePI4Ik4KK19FMpKfMMA5m1XgmUPDAgxNTKiuHh3RXUb8GO0UFVPV+hx77+INmd3SiF1tS+pU4FK
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(136003)(366004)(396003)(39860400002)(346002)(8676002)(5660300002)(54906003)(186003)(316002)(8936002)(6486002)(478600001)(6916009)(36756003)(71200400001)(83380400001)(4326008)(6512007)(2906002)(66476007)(66946007)(76116006)(2616005)(66556008)(86362001)(66446008)(64756008)(91956017)(6506007)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: aO8i3NM64gBtbB1hnnx1jfimqfiia5Gh2tp6oeG9UCvqIkzEcbDN4wSZIL8dF4OlPTOJSJqWgUr/G1BK+JvY+sE+kkfgZT6uRaWR2VsGYPPfwfkhYiAE/QSxav/RJ21IKbw+w9Xj4ALMf+RSop30BkzOq8kX9umZc+xHTZIRzm8zdeEFz/fSOwd/ZlR7SJZOGWtvS48e1QWTFMQ8WHc5W1fMYMAmi+e7zx5v2p2b8R13tdHvTy/7Gq2VDufJMKzO5wAPph0sHEg3HkkeShmnAF5BQ3os/FRN7POXaWSArgbJr8Xkm1iikg15NJvDErkQnT7/dPRVKKSfndzZ+6hBFIlcmKdoeIxH4ApoJ9BIrhWELtaDBqeXUfZakZZZtOg7t9/rO0V7uUBmFJzB09PNFKIFpd7kbXRJoAVL7nYLLoFobKF11j2fBIG5egjgMrso+JIm91mtWLZzXhkbNeEgVhP4qlCY+ShPGVlCQYzfkr63fgG1mSpwsaCOlQXD4+yP5wUG7Rg1JPsTILKqD/Nmv4EM6G6rqhmsghFlVQ4FMsZyCzQphZdUgK9w784N+a7wqTTRwhALZIgd88cCpBsghLMsHcwd41uTBQ+uy14WmBLTKsjUwqPsePldkDsQllRh9qQpTn/cMIlnf5Lp6m9xSQ==
Content-ID: <5465B1625216164C94C15E8B808448D9@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68552d88-8c16-4dc2-d070-08d850ed5ddc
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2020 16:12:48.4029 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j0Hh73HzjL0KkdRSR4DXCzc5+abikcxnRVkJl0LPIJfBlWQHYBXlYicXv5mvHmZfjeoC5dgfuP6NzSxIAJdUHv43Ma4kmjZbVfHW3lP2MQ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2670
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 0/7] udp_tunnel: convert
 Intel drivers with shared tables
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2020-09-03 at 16:22 -0700, Jakub Kicinski wrote:
> On Thu, 23 Jul 2020 20:06:15 +0000 Nguyen, Anthony L wrote:
> > On Wed, 2020-07-22 at 14:22 -0700, Tony Nguyen wrote:
> > > On Tue, 2020-07-21 at 18:27 -0700, Jakub Kicinski wrote:  
> > > > This set converts Intel drivers which have the ability to spawn
> > > > multiple netdevs, but have only one UDP tunnel port table.
> > > > 
> > > > Appropriate support is added to the core infra in patch 1,
> > > > followed by netdevsim support and a selftest.
> > > > 
> > > > The table sharing works by core attaching the same table
> > > > structure to all devices sharing the table. This means the
> > > > reference count has to accommodate potentially large values.
> > > > 
> > > > Once core is ready i40e and ice are converted. These are
> > > > complex drivers, and I don't have HW to test so please
> > > > review..  
> > > 
> > > I'm requesting our developers to take a look over and validation
> > > to
> > > test the ice and i40e patches. I will report back when I get
> > > results.  
> > 
> > Would you mind if I pick these patches up into Jeff's tree? It will
> > make it easier to test that way.
> 
> It's been a month. Any ETA on these?

Sorry for taking so long. Let me check on the status and get back to
you.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
