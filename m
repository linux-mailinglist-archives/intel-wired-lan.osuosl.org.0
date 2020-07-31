Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B08F9234BD7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jul 2020 21:59:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6D38D886BF;
	Fri, 31 Jul 2020 19:59:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S1TSWe77BjNM; Fri, 31 Jul 2020 19:59:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 98BD38493F;
	Fri, 31 Jul 2020 19:59:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A89391BF27C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:59:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9C9B320487
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:59:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4fi6mpNo-W+6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jul 2020 19:59:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id B88E8203D9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:59:23 +0000 (UTC)
IronPort-SDR: T9DjIVCYL3JlEA3KgnMhj6CRCOAuSTn9DyhNYUlrI0FHl5ynDxZ8U6UUjXsMXmtivrPuSIOclU
 TXvEeia9Z0dg==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="151064209"
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="151064209"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 12:59:23 -0700
IronPort-SDR: Zbnszaxrmi2dgmZ2ViMJFH9Fn4O8g9mmK+8oBRCs3I0N2F8F91i2MkquXrG4o+hN/YmB6dJm1V
 mXVrpQryXZzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="465717272"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 31 Jul 2020 12:59:23 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 31 Jul 2020 12:59:22 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 31 Jul 2020 12:59:22 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 31 Jul 2020 12:59:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ddzDOUhTm6vgDrarah09MsJZFY54vuGJYl5bgYuAidmU9apK/waWo3JtN2cup+GJb4PSQo4as1b0YdjfqBIc3Ta/wEl0WwPiCSPo9OAWOwu8W4Zz2m/P2uORYxR+U+nCDRvkSDWG/SNF6+cxT5yiZ+oqTz4Pv0Vqr5xFHsPUmSuGkwBr2TE4/l74Gy16PlG3YNXt9UZkqdozqYRdLYnbBvsXWeoStx9lF0UeYp0iLzkod7AVkh1dTU5ZDREzCYwRelPiHz/xDkLRaUMz3kp9Ro5+NcM5gD1GLoNnDl7jcL1YeOVduiQFwQr0XYTBFWGbMnwvjVOVD3ZR92uM5jEIew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3wvVHmRsPf0MCGm7yY8hlYHT3Cf1BlUJhRLD9zkjJ9w=;
 b=bophs8MEqvHYXk+BHm+PfR/YGQwBaBRKZbBpOxRNLkA0Myndx8uNQtzlKx5WrARjYBFtdGO52+zqfNFPyvLT1Fqt2S9ApF5PQPnuobPD3KeaRswtOSUTTqdOSdwwetEBL2Pc6eilGJjD7KZ7unudaHPaflfx76KAaxdlrQJ2VQkRUcJxZxbPsPDlTugmr2Nvej7YtNXclo/km1f/rplnTmMbTgHhOMOjqnMA/b/uRXUn9/YqqGHKPEvbOmJ+WX9W+Uns/EnqwMFtXOPU78128q2S2NsV4RWyxXwy/T2d/itXToKwZB9eYvLxeKKLw4rT1YsYUzBsdt3uhtwazJ6bYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3wvVHmRsPf0MCGm7yY8hlYHT3Cf1BlUJhRLD9zkjJ9w=;
 b=HQAWnUVEYlhnfKYjXFIlnvxGx+hbHjs+73ZspTbCpP9mHL40aA+ILUMV1ZYA3sQFBl6sCdEvfw+y1ut0sAWC2oItpw8YATFzSgUDQ5D22mnD/UhiO/+4UTdkZ/5QquR9/kMNThLUOSjs9whTc9+cqB52sjI/h/0ncWWQ439x75s=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3763.namprd11.prod.outlook.com
 (2603:10b6:408:8e::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.21; Fri, 31 Jul
 2020 19:59:17 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.034; Fri, 31 Jul 2020
 19:59:16 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S51 01/13] ice: rename misleading
 grst_delay variable
Thread-Index: AQHWZge/YEOncPMNE0+9fTFamitcD6kiHgDg
Date: Fri, 31 Jul 2020 19:59:16 +0000
Message-ID: <BN6PR1101MB21455CB211F909E6017EB5308C4E0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9261997f-d7db-4197-ae04-08d8358c3458
x-ms-traffictypediagnostic: BN8PR11MB3763:
x-microsoft-antispam-prvs: <BN8PR11MB37639CDFD8A9EBA1186F51BB8C4E0@BN8PR11MB3763.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7rmEVByoJ3q4gylAnrzKSDLjNWznUGp1lhhXIHBLKpV4chbuQVYzdDmVP35IhUcRfhGMJm2q90AaYhJZHHWpl5d05LkIv9RoBX0m6Q6rRq/qrhr+jULFQzreE1s5Pb5R7FHm0Cku0BZK9zlhmgbQNiGrBpOAZ8Dt4T6SaM8c8lo3qWAnptjYoYYiK4J1gK+QwKAtUcVsD7+16e+5WAn4GlWEEvS9UmnG3xJ4/wTk3VjoctZY2tcTXJ/09MSMIh2NBovKvxA6aRJLiZZXbaO7drCD0rh+T7BVwE5akoVSxg9qbcwrJC3hu97SC1KJTbgRd+3VozVNatapjg60tY8skA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(136003)(39860400002)(396003)(346002)(366004)(83380400001)(478600001)(33656002)(186003)(6916009)(6506007)(53546011)(2906002)(8936002)(26005)(71200400001)(66946007)(86362001)(52536014)(316002)(9686003)(66446008)(64756008)(66556008)(66476007)(76116006)(8676002)(7696005)(55016002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 9pCKHxmeyzwBRq73O6QMaqcgT/Yysi+e3MUokxeCjZIBMHDOJBkqh5R2aFv0TredyBySUqN0RAQl5hsnxtpf0pvIUzlJ6e9x1XsM2PV1a+6N/dzZERhEah23LO2EO01C9H+DfIcvr2CSCl4/hjiUh5cELG5PQlq3AI2Uef7VQ4NCHgFHTXNkOxb4uS1tyqwYoGoflN44GbIacPihacEIBaKGEv11i8+6jIbBz1rwWWDmh2hVj/B4BV9cIPeO+ylVcT07gInBk5XfxEpvsm3nJFfF3YR6c7rCTjzNecGmV8UOw9iWxIx8a7khZYCTUUKdd8JM1vNCuK71VE07Z2/Lg+WYD/1Xp3ZoHp0j7SSgxUcZL22e18DIhrA/BD9am+UlGOo/Xz6gqocope0536wTYr9lI+Mev/2wL6hBtXRTxCUdzqQw+DqxloE5LPZDvcaQhg1eRb7KHn0zkXedmxnKayjbjUHF0bILIMfTwhDnXKc=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9261997f-d7db-4197-ae04-08d8358c3458
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2020 19:59:16.0836 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QK6WooDKD/GrX93YdJyozPR6S3W4IjTFJwqC1/T2K/WtSCn5Zmxhc4o2d5xqvWJ2Iat9fq5YUkye7kiTWgzJ6dmFEk5Yma3N2FbtbONAfSc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3763
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S51 01/13] ice: rename misleading
 grst_delay variable
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
> Sent: Wednesday, July 29, 2020 5:19 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S51 01/13] ice: rename misleading
> grst_delay variable
> 
> From: Nick Nunley <nicholas.d.nunley@intel.com>
> 
> The grst_delay variable in ice_check_reset contains the maximum time (in
> 100 msec units) that the driver will wait for a reset event to transition to the
> Device Active state. The value is the sum of three separate components:
> 1) The maximum time it may take for the firmware to process its outstanding
> command before handling the reset request.
> 2) The value in RSTCTL.GRSTDEL (the delay firmware inserts between first
> seeing the driver reset request and the actual hardware assertion).
> 3) The maximum expected reset processing time in hardware.
> 
> Referring to this total time as "grst_delay" is misleading and potentially
> confusing to someone checking the code and cross-referencing the
> hardware specification.
> 
> Fix this by renaming the variable to "grst_timeout", which is more descriptive
> of its actual use.
> 
> Signed-off-by: Nick Nunley <nicholas.d.nunley@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
