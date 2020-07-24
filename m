Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B933322CDF5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Jul 2020 20:44:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 38D2A25048;
	Fri, 24 Jul 2020 18:44:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3inwe5HbBcE4; Fri, 24 Jul 2020 18:44:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B260224FAC;
	Fri, 24 Jul 2020 18:44:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C93BB1BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 18:44:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B0BCC24F92
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 18:44:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ITSGy2nvdZhT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jul 2020 18:44:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 1A42724F8D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 18:44:11 +0000 (UTC)
IronPort-SDR: u5OshExRUYo8uMgYhUc1SX4L9xDRzRMUOBSVeA7m7O/MbJqFKnxOmHWb5PXQ6zStOVCnuSP/Pc
 +npz2h4y/Y5w==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="150755097"
X-IronPort-AV: E=Sophos;i="5.75,391,1589266800"; d="scan'208";a="150755097"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 11:43:59 -0700
IronPort-SDR: EHoXna6PGJdPQDt/v9ihChGJbNK+YwFL64Q6Rz5TbDUu97Y1Dy+sR/st3HdBDWivo9EfA9zGC5
 hP4AcM6e02iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,391,1589266800"; d="scan'208";a="272653634"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by fmsmga008.fm.intel.com with ESMTP; 24 Jul 2020 11:43:59 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jul 2020 11:43:58 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX153.amr.corp.intel.com (10.22.226.247) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jul 2020 11:43:58 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jul 2020 11:43:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ohb+UHMxpWkMitolfiWkcXB0BUXdfoDmF2dhSDXJH6/PggOyQ2GC6zM5hk8ReioJMXVELGSOF2fZqLZuPWoKd/5KNnRfAnUhAk1Baqa+Ty0BKnPXLQnQcBWcYUYkHAnXr+6ecv550ihzbxNmP/tzsxkEDY9QOloOkcRVOWOaSNfXslMNocgluKhFKkzQumzu6ufUPGU2OL2lRzzE8IOAj+eOOui2Om4XOxSyaDr7X5K4ubIIkQmipxUI5dBP/mU7WVoVckmCyjAIA7ACJdIhyVIaqVZ3EnkQBV4VJkLL6PkjxUMwz7akEHAPF03WMhVZyrErR3vN+KQHgmXlt9aWYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vh9wRr5Yos32FAvvSoScRrxBANV+3f4toASs7T1m5fA=;
 b=KwXwwMHPmoBLH9H8hcIbJki/pX5nU/WE2Kk5sj8Qkb9xzGwqyKXD1Elt11FahvuNU7dM8Q+27vsXeulh3zX10fbKza9geDBg9deNtCr+kw9WHULH7adCFf3HNaWNlKZmlbExICc16gjQMOdQEWoLtcsdShNYFRmUAgXEheknimAbgdljDFGUSIwvwE/4d18U3pL4T/nPNTm1A5aN0xVu9CG0sodKcwCR4C7QYgmz2/H3WOL+qGZjkVBkSAVkuzynRBQvG9k43Gy5+5U9K7eeuhRQo9CHoQfBqYiW6+3M4v+ME6bY9CYqtl3DceE5JjQHcMCq0rUe9HBtprzu8j7spQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vh9wRr5Yos32FAvvSoScRrxBANV+3f4toASs7T1m5fA=;
 b=PWLO/QxfN/tPyoFtRiI4/XopUET3JEVWSnQVYvSWn22rENZyqoLJaDEgrET/OtFOXx1Vx5wJvFnT2BXsu2kHHPxWFvaEHOmHDxsjq/LHkqKsAtBiG6b8jG7e0LxQQwEq1z92Vz72BidtKltE1oU1x06KgtzsVnQq3Z7U6OrAli4=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3472.namprd11.prod.outlook.com (2603:10b6:805:bd::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.24; Fri, 24 Jul
 2020 18:43:57 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bda3:d65a:f390:f875]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bda3:d65a:f390:f875%7]) with mapi id 15.20.3216.020; Fri, 24 Jul 2020
 18:43:57 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e: add support for PTP external
 synchronization clock
Thread-Index: AQHWW2us0pwkjCkJzECfuprR1hlt16kMav4AgAqEDgCAAC7iAA==
Date: Fri, 24 Jul 2020 18:43:56 +0000
Message-ID: <7ac0ad76dc62435842368f6628b1c37a14463ab5.camel@intel.com>
References: <20200716122107.13703-1-piotr.kwapulinski@intel.com>
 <1ad46857df3e932b2e28256a62f7ad32ae03da23.camel@intel.com>
 <MN2PR11MB3565063DFB45A14ED9C8452EF3770@MN2PR11MB3565.namprd11.prod.outlook.com>
In-Reply-To: <MN2PR11MB3565063DFB45A14ED9C8452EF3770@MN2PR11MB3565.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.215]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 850b7880-a1d4-4ef4-8371-08d8300185cb
x-ms-traffictypediagnostic: SN6PR11MB3472:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB3472A96AF7AABBB05408E1A1C6770@SN6PR11MB3472.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rLTPjsOpm6SDXk5NmliGDxRC3p4zdMsKWFTTN6EhlCcxP5NCodqolGaSekumahXDaVsdpomtitBnxkLjt1CavaS7fC454lbe1oOQwXq/1GlLoj0sPQlZmYNImdGxShjXkv4pvM15wZG9YBwiIMfjeQazzE4iN0KMw9fhWLQMBGJLdZMVwVEbjQX0TkyoiMspcCQRWlExJ7oRnz29M0UpFELREz4QnNx1YUct+O1iHXCb56ovCM4uIb1s3I8cvaZNtBnOzMvRRMEWijIvNIi8jt+JKb/rlP22TNKZkGHLa5zmVbGSQFHAcAKjw2krsK4M3hZ7L3MEQUfADCfjM10UHwHyNvxoUkOsI9KrJ0SwDgRh23aasfRFmKP7L2pJ3iTh9QKpAhpeQEaJ7/dxR39hPg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(346002)(366004)(39860400002)(136003)(376002)(8676002)(316002)(2616005)(5660300002)(8936002)(2906002)(71200400001)(36756003)(186003)(86362001)(6636002)(91956017)(76116006)(66946007)(66556008)(66446008)(66476007)(64756008)(6486002)(110136005)(966005)(478600001)(53546011)(6506007)(6512007)(26005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: WpMe5OMrOOU9N0liVO3tJGy0I85XvWIhjTPKUg3/YAQGolwUaAvsPbPLDRt1AUjjXniy0tIQQmgDQcxZvCn+aEyfWFc1g7zK4vQ+a7qtGQtWd3vlrUoLJJDHEDqTC3blep7PfD7zDSoRu5vs74vErgV6CKdZpnsm7DCj39znj8y6AyhynlLkC3njuOXe2b7uzdyLvKvQQutLVPqx6FUP0xV79R3jM/QmCLtAlmToFbJbvUjadroOWG9VA7IoXbqU8kkYlXwpjS+PBC0W1n64V8d6DT/0E74OVd/gySf3jSm+3F+kBZGLMUM4tFkvwSeu1sTl7btJoWH+UpZSF1DTEm5vQUTT9PwqL5uTj6lEJVR/UO85uxiJ228R14VRF+gh8ipJ22tY0Sn0hvD3GAEkof9thtPwAIvjXB3NfI3N40H9SHTWwV5KwUtrULz5P79hTpUMBdlYjVze2HTXSweOjUXWotxd8DpNb1yL8V/v1VYAdxOkg1YZwnrTaOGXWsRk
Content-ID: <271939A3A1AB6A4BAA9254D49F69C6F8@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 850b7880-a1d4-4ef4-8371-08d8300185cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2020 18:43:56.9363 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +orPFrPpNFOi9q1s6Jk+caRY/z+LGmVzQlpQzTwme6MtnEcpdSB7PaDpHmki/Y76Hv79yDzClQXSNROYldvoafQO3WOVP41JtByrjtnv0uo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3472
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] i40e: add support for PTP external
 synchronization clock
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

On Fri, 2020-07-24 at 15:56 +0000, Kwapulinski, Piotr wrote:
> > From: Nguyen, Anthony L <anthony.l.nguyen@intel.com> 
> > Sent: Saturday, July 18, 2020 1:21 AM
> > To: intel-wired-lan@lists.osuosl.org; Kwapulinski, Piotr <
> > piotr.kwapulinski@intel.com>
> > Subject: Re: [Intel-wired-lan] [PATCH] i40e: add support for PTP
> > external synchronization clock
> > > On Thu, 2020-07-16 at 14:21 +0200, Piotr Kwapulinski wrote:
> > > Add support for external synchronization clock via GPIOs.
> > > 1PPS signals are handled via the dedicated 3 GPIOs: SDP3_2,
> > > SDP3_3 and GPIO_4.
> > > Previously it was not possible to use the external PTP
> > > synchronization 
> > > clock.
> > > 
> > > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > > Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com
> > > >
> > > Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> > 
> > This doesn't apply, can you update to one that applies to dev-
> > queue.
> 
> This patch is prepared against Dave's net-next tree v5.8-rc4 (most
> recent)
> 
This patch should be prepared against the Intel Wired LAN next-queue,
dev-queue branch.

https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-
queue.git/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
