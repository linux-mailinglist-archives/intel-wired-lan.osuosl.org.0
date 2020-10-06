Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C282843EB
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Oct 2020 04:04:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8100020381;
	Tue,  6 Oct 2020 02:04:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3CXQDI1Q69oJ; Tue,  6 Oct 2020 02:04:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0624D203D2;
	Tue,  6 Oct 2020 02:04:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 986CD1BF401
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Oct 2020 02:04:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9102386F80
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Oct 2020 02:04:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rxQ5bVGhgS7A for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Oct 2020 02:04:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C618886F7E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Oct 2020 02:04:18 +0000 (UTC)
IronPort-SDR: oGqBQ2goSdL0QKe57AiSKxfkex6MyeqzMisg8ZZhPDFirmoA04KDgLind+RzMe1I06ZFkcINtU
 LrglvRgpSuVQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="161692264"
X-IronPort-AV: E=Sophos;i="5.77,341,1596524400"; d="scan'208";a="161692264"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2020 19:04:15 -0700
IronPort-SDR: tW3Feo6aGxQGgk0EBWvnpDT8hyUHmuZVcpSuCYbzMuVPAjLVN5fqanjKgkxB8Xug1xMNAPMQBG
 xfkGPq7DuBSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,341,1596524400"; d="scan'208";a="343482843"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 05 Oct 2020 19:04:14 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 5 Oct 2020 19:04:13 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 5 Oct 2020 19:04:13 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 5 Oct 2020 19:04:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FvV35BGSJLLBiMCN+Mw4BNj0usZTxzx+A8QD8IH3dnXchZef0s4xWHcKyAmk4Y7ZB8XfXHf3hiFqAbcohbPaZVd3fJn/DPXKpusbi/8enADIN77YKd3ufN4JgyRoQGEvBBuoKJUA/0K1d1BO6HALhtRKwc5c7VQY7J0fQtIw5TrEQChU1NtXXDu/Z0w7o+CoazytvOEZfKPBB6sLyA2dT9BevQq/rtG5TXZfvDXvsMXOIrLC3EEJZ0rjoAl85wBzq1eE8/baklntDK9yRiJoVbAXP6KsrNUOlrf3OPad8B+CTjjzsPgShhn39rZWifjzdudRw3ZeAuTlPMxY9tfPdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wby9F3hHqyiT1tmqoUjh8Y/QPwA+5S4oW7TunZxLiFY=;
 b=nUYQd95whMhjbKzDkNK+BubXbGqsscNw2IGHgfr5MAfVcK4vvqb9WE7xZtnZGMPjr364wL6heDGe0zgxE67jB5aTHiznIddEm03fpctjFpA66cRA+gljbG2Kl6vxcpNp9psQVEr8urB2Vc6iWsDHvHGWQTF8MMuOMwfC7s5jsORwEM3lbpc3cjlHh2o0esZewkNXtlx0lmQQHXtVk0JnX4qlrUExOz1+QyQaRDw/uPQEePc5nJbfFpaHd7iCu596TUD59uUQB74qET7J95ojScyJIieBXKezUd/ZMKCEjmfcAi48GAfwx59tOx8Ox+pkLwiYzDGr3jcZk5bQ2FAp8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wby9F3hHqyiT1tmqoUjh8Y/QPwA+5S4oW7TunZxLiFY=;
 b=VlXHllNT+xuGarl+jJqOoy0L3284HrfTOE4d1mQ8mZt56EzQ5Tu335Gsh0WCpCX24KDWz6XPbYUXKqmRLtFV5bCsN7DV5Pj2g4aU2VsBIDRRkZ8+nhQaLCubZcqnFOpIrBXdsUscmo6CiQKhf8ZKb3Yv2Vdgl83kRZ1LZ0aJgOk=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB2777.namprd11.prod.outlook.com (2603:10b6:5:bf::31) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3433.36; Tue, 6 Oct 2020 02:04:12 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::bdb7:3e5f:8eec:d340]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::bdb7:3e5f:8eec:d340%7]) with mapi id 15.20.3433.045; Tue, 6 Oct 2020
 02:04:11 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [linux-firmware] ice: update package file to
 1.3.16.0
Thread-Index: AQHWjgbNmXqsf8QMpkeARSO19IyhfKl1KneQgBQdOACAAKT0sA==
Date: Tue, 6 Oct 2020 02:04:11 +0000
Message-ID: <DM6PR11MB2890CBEC85332A00C18D4B19BC0D0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200918215024.87809-1-anthony.l.nguyen@intel.com>
 <DM6PR11MB2890A6325CB4C08893503919BC3B0@DM6PR11MB2890.namprd11.prod.outlook.com>
 <24d88c2b9093052aa7fe5c010542f6a51732687c.camel@intel.com>
In-Reply-To: <24d88c2b9093052aa7fe5c010542f6a51732687c.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.177.49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1514e51c-e90e-40cd-4af7-08d8699c1e79
x-ms-traffictypediagnostic: DM6PR11MB2777:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB27775C8F5DCBC0D7DDEF3BCEBC0D0@DM6PR11MB2777.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pQfY2vaTuPqextcb7QcX3a3CigFNQT4bcHsBmS66v5twdzrXyzBK0hIwa2UJkfJN50lLFCciM0nzzOCLr6h+wk6cm/KGrKZv9rl7DeLjxC+3nlghg1d9fKk+tGLSWB4baXdWSYYu+YpJzIaEJ3FPhXz07ErxbVEn1Q+dxwaUSvTgPRneysdSbDdmIaGBkmZ63YEqzYQQbbMvPNTImKt5Lnl4g2AtxqRy8iwH1qGOGl9FVHm5jH9bt5vTVsGE3PlPkUgM6Nynz8VChioJXnU2dQsXK84Z8ySzomONc55wc/MUI9ylvasYcBW48iX53J9Nz0KYmY+QZgliFv7EO8xnOPglZDetly4Dk2Ez27i1X884ucz3Iyh8PIpcFF4PWR4q5tnocYjp6un2S4TxL0SRIw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(396003)(39860400002)(366004)(136003)(376002)(86362001)(52536014)(186003)(66476007)(8676002)(8936002)(66946007)(33656002)(71200400001)(26005)(5660300002)(7696005)(66446008)(6506007)(55016002)(83380400001)(53546011)(66556008)(110136005)(966005)(478600001)(83080400001)(9686003)(76116006)(316002)(15650500001)(64756008)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: EcFki21QUHXXjDpX4nTB5cUiE84tYsfUHRNe5xASe9UBlYTaKPLy4rmHGSpvA9sPQHq7n5u4dFei32A97AJpQSHLy+nH0XZiNS+x27quC87jP2JOvIKshilGZ+4Jz9srS/DCAZYaG86fL5oVeAPX97NZRZre0Cmwmwiq5qrHihrj88upZOz/Az/VAnh8NQZlkUBt/WlH2e5W0PfT9Ge7MPA+7Ddyl+z15N/CZopfMLyRK0RO7i5doxWMSbqhZIWRquY0PbG8qat/ymvVQhinKOE0LySVjWpXaSxTC3EaHIbIXIwXW0uUc1ryZJOP1KfM1Fv6mY7u5lOGicUBbbqQeUFLxB1lHjlgraZHR69Vse/2jYnw0RdSBFs6/N5UFdF4ld6qHffmyU5dIBet5NS9/eGI5grZKC42llJhVj3OnUox1dQPZLNinLMPUMVIW2yA0O0k2Qt9XE0ORQLqyTjfc2vq57RZQ8Kcy9qbXO6GN0LLHd5mqdR6o67mW79Z8FRVqV6gKQwMP3TYryBJLLGgTIqp5NLI/QrPFi43k8aQ8SQFbKxpKMI1/VTqTXDMc+wle/5ofbjKOGrZtfTFSOJ0ZP0zd2YD4vysPfmXT4Fv7voetJ9zsfydFDpaXMYSf2jqX6OAoP9lBHr4ZmIBbIdMBA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1514e51c-e90e-40cd-4af7-08d8699c1e79
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Oct 2020 02:04:11.8836 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N6opwysHnhoXuLNQ0XHLpqiuMHXHgprf68s6GN9I2G8ibEkqKdMbdtS5OsImZjL62UPe9SvMXJjxpwI3LR/nlg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2777
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [linux-firmware] ice: update package file to
 1.3.16.0
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

> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Monday, October 5, 2020 9:09 AM
> To: Brown, Aaron F <aaron.f.brown@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [linux-firmware] ice: update package file to
> 1.3.16.0
> 
> On Tue, 2020-09-22 at 21:09 +0000, Brown, Aaron F wrote:
> > > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On
> > > Behalf Of
> > > Tony Nguyen
> > > Sent: Friday, September 18, 2020 2:50 PM
> > > To: intel-wired-lan@lists.osuosl.org
> > > Subject: [Intel-wired-lan] [linux-firmware] ice: update package
> > > file to 1.3.16.0
> > >
> > > Update the package file and WHENCE entry for the ice driver to
> > > version
> > > 1.3.16.0.
> > >
> > > Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> > > ---
> > >  WHENCE                                        |   4 ++--
> > >  .../ddp/{ice-1.3.4.0.pkg => ice-1.3.16.0.pkg} | Bin 577796 ->
> > > 659716 bytes
> > >  2 files changed, 2 insertions(+), 2 deletions(-)
> > >  rename intel/ice/ddp/{ice-1.3.4.0.pkg => ice-1.3.16.0.pkg} (52%)
> > >
> > > diff --git a/WHENCE b/WHENCE
> > > index 0bdb19ca938e..8b92bd39d735 100644
> > > --- a/WHENCE
> > > +++ b/WHENCE
> > > @@ -5062,8 +5062,8 @@ Licence: Redistributable. See
> > > LICENSE.amlogic_vdec
> > > for details.
> > >
> > >  Driver: ice - Intel(R) Ethernet Connection E800 Series
> > >
> > > -File: intel/ice/ddp/ice-1.3.4.0.pkg
> > > -Link: intel/ice/ddp/ice.pkg -> ice-1.3.4.0.pkg
> > > +File: intel/ice/ddp/ice-1.3.16.0.pkg
> > > +Link: intel/ice/ddp/ice.pkg -> ice-1.3.16.0.pkg
> >
> > I see the link being created in the patch, however I am not seeing it
> > in the file structure when I pull the kernel and check the
> > firmware/intel/ddp directory.  Everything else seems to work.  The
> > ddp package is there and a diff shows me it is the same ice-
> > 1.3.16.0.pkg we have been using internally.  A `copy-firmware
> > /lib/firmware/` command runs the script and places the new ddp
> > package in the correct directory, but no link to the file is
> > created.  The /lib/firmware directory still has a link to the old
> > firmware and that older firmware still gets loaded unless I go in and
> > move the link by hand.
> >
> > After moving the link to point to the new ddp package it loads and
> > functions as expected.
> 
> Hi Aaron,
> 
> There was a patch accepted [1] that changes the behavior to ensure the
> symlink is updated. If you rebase, you should get patch that properly
> updates the symlink.
> 
> Thanks,
> Tony
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-
> firmware.git/commit/?id=c1bef9e01060f157f95496f0cbd4edb7b68a3dc8

Binary image is still the expected bits and with this patch in place the script works for me in all the combinations I tried (upgrade ddp package, no ddp package, overwrite existing)
Tested-by: Aaron Brown <aaron.f.brown@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
