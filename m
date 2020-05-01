Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0471C1FCE
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 May 2020 23:42:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 924D826248;
	Fri,  1 May 2020 21:42:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lYGifHCY31gG; Fri,  1 May 2020 21:42:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1E25325AD8;
	Fri,  1 May 2020 21:42:25 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 65EB91BF59D
 for <intel-wired-lan@osuosl.org>; Fri,  1 May 2020 21:42:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 61E708857B
 for <intel-wired-lan@osuosl.org>; Fri,  1 May 2020 21:42:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ERF+ydfBzrpS for <intel-wired-lan@osuosl.org>;
 Fri,  1 May 2020 21:42:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 66A0788575
 for <intel-wired-lan@osuosl.org>; Fri,  1 May 2020 21:42:22 +0000 (UTC)
IronPort-SDR: 4Vv7bKHglBGtsydS3WkqoSNlAHhNVagISEJ3LW9LzwinwRgKJ+x3FvrhXd2jDV4vD51J5IGOvL
 gyFTUR3jVKcw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 14:42:21 -0700
IronPort-SDR: 2tB7ovEBK5qlHi0HYamD4mDyI2wLhzBxMESWNRXbsnccfYCXRNzqRt8lft+3z7+I3JU8Tx4ARz
 FAJpz790bHHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,341,1583222400"; d="scan'208";a="294925761"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by orsmga008.jf.intel.com with ESMTP; 01 May 2020 14:42:21 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 14:42:21 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 14:42:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X72GoWghRypcaOecgib8VegAaXo3K9/wOIzOriFxqoTrtjCzbDVvZM2SsNmJkw4Imwjbto+2opmLY6HBbOFkaImZgWnAfCaEYmV8qtaZV9P46qgjj7FdC9OOcV0MCIhPD2aiH6Q67UzH2Hhyy6UkZRQQCR81Al0OM/cDJssRiQiZ+29YsMG0xI7LArrNX3Prw7G9+bVZkkuQ5N2arjA/twn0x1p/DdimWNkSnq6LLqaRrGkjxfPO0St1c4e+641eEIGx1bo3tUsek4ZEdqGICSnV8lzDNdTa/i8VQMo4smIy4SnnqVpTR3u89OUpmq8gC11748AHoCXcjz9UleHBzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YLkPNbIiJsUqfXJzSvGLQxkpmaC/NaCOeT6QrbiTaH4=;
 b=nxArhSh0PQFMV2/1zaeWEqNeHpvEvckdWDqqOV+dxtwBOPIlXenXiw59T5P0pWlt6c2Yu1B0EjDZMM6giygFnljqL38fSITfvj3zlzFUB3LuMoZfb+dDgW0va+iur+qIaZ+0IBr0iBOEJCxM4DkH9BZSJJwnVMxypKjcJ3aEjm3W8LOiKQwPeJ97ECxgSOE/L2dHXKefOWFiYIHXHlW//sYdC9h0Rxie3L9ykGgOeqAmutP1Vr3grgEu0dLpM5IrzGq3+T+6OUNWMcaRjMidtEmiaXlp4Y46LcQIZc6LxOGoEfMzCBZXEi5kefQ5n/7ODTs7qDZ1+Qh45XFX5rCL2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YLkPNbIiJsUqfXJzSvGLQxkpmaC/NaCOeT6QrbiTaH4=;
 b=kkz4QrszaNSPNtZOp9MpT/XNLDvjUJWRC/Fob+Vzisoue2/VhRcZcNRJmrSWUhKwTJh1oSIzjmzAiPU1DDESjgcveWArK+fxVJIcPQwlmISdx41TWba8dDBV6cFgZQrGtQPe+Glne/obznfrelkxfexJz36j0Wi0MMEI3DrIXFo=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4692.namprd11.prod.outlook.com (2603:10b6:5:2aa::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20; Fri, 1 May 2020 21:42:20 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2937.028; Fri, 1 May 2020
 21:42:20 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v4] igc: add support to interrupt,
 eeprom, registers and link self-tests
Thread-Index: AQHWC0QREoUAbYHST0SSVE06D42ahaiT53AAgAAEgDA=
Date: Fri, 1 May 2020 21:42:20 +0000
Message-ID: <DM6PR11MB28904C37A37D025A95494FBBBCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200405121604.36654-1-vitaly.lifshits@intel.com>
 <DM6PR11MB28909C9B5CE19650132FB7B0BCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB28909C9B5CE19650132FB7B0BCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: e30e2ce0-b830-47ed-e770-08d7ee1886b6
x-ms-traffictypediagnostic: DM6PR11MB4692:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB46928DB5D311BCAC2C6F6BDDBCAB0@DM6PR11MB4692.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1923;
x-forefront-prvs: 0390DB4BDA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: I+R08f44YY2G/zEKlxX9kDWbRfpexAsJQulkChtg7wwPCB5G7fJ1TP/ASBJEN+YZmk6B5OQT+vveBW0UiEp9iU3Nm9xsQq9zpkYi0vtJjGwVz1zCAvyvIJNQHTI58J4SB0C9ispM0s8jNiFAOrvJpghftcRo9Y6xnEwRsQhOlXefkL5TqmTnDSiTHRFXNjWmkW+Cwf3fGbuC75YrkMhdhKdZ5MFPfWhlArKYe5tbnNwBjxrfgG95yE6hbCKEUK81/MHqDp3H2CVmChdeuXDkfpbxxZ2LTUPRw6QPbN4Iv+YrzBi0+wOxYsc+pze5dkHCgNPxAn4aPGraujQzC6XFZfuRBwmThL0M2oDuz54DJAbTcnJMnstlwTwgPx5esbnIMV27Zl9V37RO8P+p8Cz+ltMPtuaD5TPnDZa+FPlvfWkFKKjZK3VxvUBJ6qGUHYsO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(376002)(346002)(366004)(396003)(39860400002)(55016002)(478600001)(9686003)(316002)(2940100002)(186003)(2906002)(52536014)(86362001)(5660300002)(66446008)(64756008)(110136005)(26005)(33656002)(8936002)(76116006)(6506007)(66946007)(53546011)(66476007)(8676002)(71200400001)(7696005)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: QdKH2C5P1f845UsrIZ7VuAHX22rrYFGVpXOG+3qynyHktjXTNyHKfQL5bydWt0mkp990V70Oc/cn/tHHipdJ3asyU53UMCldRzMiE/p3+/aM/M2LIECoPtYzJikm27qGZEnbcFP+wqGRNuFzMMNjOiI6+HcCOvPuiTy4gUr4WQoeAYTtZSaMAi8gcowbev9ez983D4lIOnasC13RrM3taHCuyQjN02WRcIdJkoALEepDShIM8jV6nAhKVGkpEnvoTvzmAOph6ZOg5Sp4DWB1hWOEyoJIhzLtN+mbbV5o5ucxvxPiJEoiGkf2rIZ0GtLM4zqYrgdP3pK8jl/YjqJL7ntMUnaKxflOt87QVgVXnsUfpWz0C1RqgoGNoHt02ogpCvD/zA+9waHcvIJFYEalAHV6EIreTpsMLtL8VubasJq2k0XfaNnZZpAXZmuMatvhwvHLDkLmoF4xdylZnWe/4dRiIsYz6EpQVGO+xavm1CbSlPcK1wsZJpcpDk/zNOCqRnXotsZPzoBxvjCyn0aeJeGtX1twnptHO7GPP3EJYFYkTXBTIzxJFEjVa26/jIQasAC3TJj7taaWJG3LQLR3Aqqx9+5emjAwhnvak5PhQyUkvOJHQQobMy2tOVd3iSetT+666MYVHcCc4dGr/h9p2V7Gz1yMOkj7C/V8D9y2TyGLUZzQgIm5oKgxpr0Tddu567IAS51/YEIySvyXDlBZ9Q6bHMEYtqWvXdRCkk9duIv/toW5E9MQZJxm6jUKQVyfkDQiRH0P1OGgwuJYkNcnQFeJ4kB32Nng7NxUI83XEuApC1ybG5UJ38D0rQEnVHoj
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e30e2ce0-b830-47ed-e770-08d7ee1886b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 21:42:20.1245 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8aVvEuXJeA724QIU+7IC38ncgIdI950LCqEkVaTjgP6G45YgnjxUxv63dqry/YtLs6wHYi1jfHAlP/ExJeycvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4692
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v4] igc: add support to interrupt,
 eeprom, registers and link self-tests
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

> From: Brown, Aaron F
> Sent: Friday, May 1, 2020 2:26 PM
> To: Vitaly Lifshits <vitaly.lifshits@intel.com>; intel-wired-lan@osuosl.org
> Subject: RE: [Intel-wired-lan] [PATCH v4] igc: add support to interrupt,
> eeprom, registers and link self-tests
> 
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> > Vitaly Lifshits
> > Sent: Sunday, April 5, 2020 5:16 AM
> > To: intel-wired-lan@osuosl.org
> > Subject: [Intel-wired-lan] [PATCH v4] igc: add support to interrupt, eeprom,
> > registers and link self-tests
> >
> > Introduced igc_diag.c and igc_diag.h, these files have the
> > diagnostics functionality of igc driver. For the time being
> > these files are being used by ethtool self-test callbacks.
> > Which mean that interrupt, eeprom, registers and link self-tests for
> > ethtool were implemented.
> >
> > Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> > Reported-by: kbuild test robot <lkp@intel.com>
> > Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> > ---
> > v2: Fix return 0/1 to boolean value in igc_reg_test function
> > v3: Address community comments
> > v4: Fix interrupt test and address community comments
> > ---
> >  drivers/net/ethernet/intel/igc/Makefile      |   2 +-
> >  drivers/net/ethernet/intel/igc/igc.h         |   4 +
> >  drivers/net/ethernet/intel/igc/igc_diag.c    | 336
> > +++++++++++++++++++++++++++
> >  drivers/net/ethernet/intel/igc/igc_diag.h    |  37 +++
> >  drivers/net/ethernet/intel/igc/igc_ethtool.c |  63 +++++
> >  drivers/net/ethernet/intel/igc/igc_main.c    |   4 +-
> >  drivers/net/ethernet/intel/igc/igc_regs.h    |   2 +
> >  7 files changed, 445 insertions(+), 3 deletions(-)
> >  create mode 100644 drivers/net/ethernet/intel/igc/igc_diag.c
> >  create mode 100644 drivers/net/ethernet/intel/igc/igc_diag.h
> >
> 
> Tested-by: Aaron Brown <aaron.f.brown@intel.com>
Sorry, I was intending the apply this to a different patch.  This is the patch that enables ethtool diags, which causes the call trace I sent out earlier today.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
