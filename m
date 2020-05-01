Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF38E1C2019
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 May 2020 23:54:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6831B8908C;
	Fri,  1 May 2020 21:54:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ktL-4u3CmcAo; Fri,  1 May 2020 21:54:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1F433891D8;
	Fri,  1 May 2020 21:54:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DD98A1BF59D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 21:54:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D89F68913C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 21:54:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sA3vCaAvtNzl for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 May 2020 21:54:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 696758908C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 21:54:35 +0000 (UTC)
IronPort-SDR: bz3O0NJ/EvtfM1YaVXFdrENoR6UPI9b+/5XcoN9HX2ZxffEXSQoHyzDA59sSemwZMxCbNqk6Mf
 /Q/xdx63cWNg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 14:54:34 -0700
IronPort-SDR: MqsiSYVhwRXqnaB1oO0KxkPBfWKmydcCqyADMuZRj1Ya9/HuyZOyAprvPIluV5D6M2TFAt4vBJ
 jast7aL2cyfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,341,1583222400"; d="scan'208";a="303646664"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by FMSMGA003.fm.intel.com with ESMTP; 01 May 2020 14:54:34 -0700
Received: from orsmsx155.amr.corp.intel.com (10.22.240.21) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 14:54:33 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX155.amr.corp.intel.com (10.22.240.21) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 14:54:33 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 14:54:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M0YG2uq3a0HKsLYq17eN6p2Pn5mk5LkPLmtc+5xa0d7j4bJNvWxm/VKKd2v7l/iWdSGuNefzaB2NJpMjFGE6kDlTqcKQtBn/PUd0RnL28N7knmt4+9XQlGu2fsGRHIa4ILwE7dWBtHyvoRqUBjklaG2GBluPMK//7bWMKjLB+vYboOvTf/BjZYb5QhyWQl1LgDzo7v0k/SVb7qtwLOCKb4RNG2OeY93KZK5dSBHAG1L+f4aIkrMlOV/IG1Fj6G/BSe8P/jtz3SZMxWisR287K3aNxNTzmN9sTNNA6gGqPMAMmrofVOi2mMEX6qDsqluIESpD+dYXAdAU/lqBCwNvsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8g6MN+D3rEnJuojQAp+TSn0T0BXUDburpPo8AbQo4D4=;
 b=Gz6hL8oT4BnZmpnQ6U2lgKKcEcu05c23maZdpocmVShS2KGQ3ifO10PlUYALpV7lzu+VwoxSeNvyjXrq4n+HjIQGRj+c2UQS9XTNE50RY3BUXeMSsGWLTsbktZdu1wIqrZFWwpUIlue9OH7l0pP10ZjKDpvLzGD1YnxExnBcaOSLIu88gkgMHiYUmf4pAp797sMkd6sDLZrIsv2RPi6M11q5a8uWy3GR9fnR8s30IllETdatWoPQf/3ZXQq0P1ZdrKPZ1TWYBvmEuVZw7GTE3NDphrwhhMC6BIw7N6jI1wwr2fe+PpR5hXmtdLUe+FOmMeywYK6u5do/nwT2cXqRUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8g6MN+D3rEnJuojQAp+TSn0T0BXUDburpPo8AbQo4D4=;
 b=uu4lwQoVJBzFY5685X9KVNT29O+WY/kC2cuE+5wwKgHOm+UE4T2XkoL63c35JHv6/57F/nz9Uh4idFeNIJIFX8amiR5ZHAhJUpVR1FQHfU7QCJj2+WwOw0sonVZAaPikcX1ewzOv5iyI1mcYoK18rfEBWihjGzosTWQFv82AoDk=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3820.namprd11.prod.outlook.com (2603:10b6:5:140::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20; Fri, 1 May 2020 21:54:14 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2937.028; Fri, 1 May 2020
 21:54:14 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove per queue good
 transmited counter register
Thread-Index: AQHWGJN5bmafb8jO40OWsQO0p1YelaiT1NWQ
Date: Fri, 1 May 2020 21:54:13 +0000
Message-ID: <DM6PR11MB28908EC5BC7D7429E21E13EBBCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200422104647.27290-1-sasha.neftin@intel.com>
In-Reply-To: <20200422104647.27290-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 672f07f7-5643-45f3-31d6-08d7ee1a3070
x-ms-traffictypediagnostic: DM6PR11MB3820:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB382094E0E4D66995F2E504E0BCAB0@DM6PR11MB3820.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1265;
x-forefront-prvs: 0390DB4BDA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bRJXcF/Ww3kDsEWCq/FcqTOSg/eCP8gw+dUkZQs7qEgC1Ein1DsKtZGDteY5i/Pm5WqrnZTFqy7WYsBT21Yg+TFJBAOyYGxc2aMaezHcG3l3PXd1cx4c3OBctbSuNuwlz/Dgmnz7Aj/7aSvvlEkgaNTD2xoSui0XY+vlUAsgGB/L3Q2Jz+9XJh+B/x2hN5xyYOkEWNfdKxHfKt7bCGd54stNPTTLqN4oIuaNuHHM7jjwIrq7/Bi30SYSa0BWD90u2cOWuLxK0bxvBe0rw5WT5s23LT068Jtm0N0nzHRdH64XF5Icic/+AA3sf3tmD+6Z7Vmqo5QcGlxCkp1MeDhDL1r1Th8hes4aPVFtk6ms9XpgE9CY3+/2Njk6XwBOST/6JxLkW9gQul01TZzPaw1urscCLIQXYGcYaWkCifsPK86G+T1EhaRpEml4OOhwbRfS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(396003)(136003)(39860400002)(346002)(376002)(110136005)(8676002)(316002)(8936002)(66946007)(76116006)(66476007)(66446008)(478600001)(186003)(64756008)(66556008)(52536014)(55016002)(5660300002)(4744005)(26005)(9686003)(71200400001)(33656002)(53546011)(2906002)(6506007)(7696005)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: xhOd8P3hBzb01/4R7Vbsb2fQ9+QzyC2pVdDuGKYP9tbUAYF2kN5Lnb/3cbkaBR/1qvavXTVEhaagSvbWVAkaaGLBMpbNtJRfaCjfk2ceRE2YEkB1ZapHinvdcCQhuz/ymBJLWTEXY9+rao53rLQ9mUW5DeKn2hyUoRRiEduiJEqLEA2xJ9y2Xhii+aEQIll9Obj84gT2xzs2UfhgCVyv+SGjzqtBsJ+lpmyoH29E0vyWHIpkip3KpFz8Ea1Lkno4BtYoN3pjDzCdtFt52nbsZkhduxPLc9w8vbKTPsX8g0YsVb3/wP7BXgXCgtXvAJrMTngfZBJzMTx28K6pPvqlf3leKPlEv71EvF58sMWFu9LbxTLIk39Lp1eaQsthP8Np00oLtj9B2vTqoNWboKK37gKzQxAXOMt0XTho8Zfjqf5Qa8s631kaFufCw/l+2L9BzRgp7SezvBDkGJCS3S9jAQXFKpEiV/e4TcakV1amSpUgbyUJnwpHkztM6QoX2/MNuSj0jNhRp7zFwuriZSoec+5TzTYoL3nVVawLVtfQOrYwOjV9dsKuMpajlWGx0+MKsga98yNckM9FzFhME5KpUEwEygBymbuqLmP+CNew9km0FRlx2MAi4CX4YHANiBofyLRq+4sKx2yc9qVCgjBqz+EMFL4DIJYhpYJh/Ubxu2MlPYHo3w+27DoEGwHAOWyxNCARoUyTCM+odtkpTsHTaMv64UTdd3aWnbH3K2Qu/iX0FrQIvyrhUuoFjXaIgKuNAzOs+0XgzH37lp6WEe4FPmfsetfdUui9EzJBYaUShi6WQ6GY+XzF7r2/0NVj0Rmo
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 672f07f7-5643-45f3-31d6-08d7ee1a3070
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 21:54:14.0426 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pzWAw+4cRPjVv1QfaQAGSWuCoqcuz5o9sdKPoFHNXxdZR8tAL8XgKAyrh+HXgi0YpjKXYrDk8LCdl6LjbXpafg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3820
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove per queue good
 transmited counter register
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
> Sasha Neftin
> Sent: Wednesday, April 22, 2020 3:47 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove per queue good
> transmited counter register
> 
> Per queue good transmitted packet counter not applicable for i225 device.
> This patch comes to clean up this register.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_regs.h | 3 ---
>  1 file changed, 3 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
