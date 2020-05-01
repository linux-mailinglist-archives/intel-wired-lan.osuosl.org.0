Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F09E01C1FDC
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 May 2020 23:43:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 83AB3873DC;
	Fri,  1 May 2020 21:43:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K6YTLtwpeV2Z; Fri,  1 May 2020 21:43:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A1837873E3;
	Fri,  1 May 2020 21:43:51 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E7A1B1BF59D
 for <intel-wired-lan@osuosl.org>; Fri,  1 May 2020 21:43:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DF1858913C
 for <intel-wired-lan@osuosl.org>; Fri,  1 May 2020 21:43:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7KNhbix+5Trb for <intel-wired-lan@osuosl.org>;
 Fri,  1 May 2020 21:43:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9FD798908C
 for <intel-wired-lan@osuosl.org>; Fri,  1 May 2020 21:43:48 +0000 (UTC)
IronPort-SDR: 5mUrdWaQ9cj7JwCSltWjDHNAUwlshe06O/DRZSHQinG13+mnqJV0Qg0lnfQ75Bgsw7B7OY/HGz
 xU15FvBTFXew==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 14:43:48 -0700
IronPort-SDR: IQyFwQMn7AAsgNg/pbz/5wErYkOR1mz8eoVhHXDIRBwXVBsZG4jUBMQiUEqOA36HX99c/Lfrvh
 idvSyyxO+0Cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,341,1583222400"; d="scan'208";a="294926096"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga008.jf.intel.com with ESMTP; 01 May 2020 14:43:47 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 14:43:47 -0700
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.248]) by
 ORSMSX151.amr.corp.intel.com ([169.254.7.25]) with mapi id 14.03.0439.000;
 Fri, 1 May 2020 14:43:47 -0700
From: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>
To: "Brown, Aaron F" <aaron.f.brown@intel.com>, "Lifshits, Vitaly"
 <vitaly.lifshits@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v4] igc: add support to interrupt,
 eeprom, registers and link self-tests
Thread-Index: AQHWC0QKxo4NgtqI5km7wdkUtsGK7KiUXPAAgAAEqAD//4rjsA==
Date: Fri, 1 May 2020 21:43:47 +0000
Message-ID: <61CC2BC414934749BD9F5BF3D5D94044986827A1@ORSMSX112.amr.corp.intel.com>
References: <20200405121604.36654-1-vitaly.lifshits@intel.com>
 <DM6PR11MB28909C9B5CE19650132FB7B0BCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
 <DM6PR11MB28904C37A37D025A95494FBBBCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB28904C37A37D025A95494FBBBCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Brown, Aaron F
> Sent: Friday, May 1, 2020 14:42
> To: Lifshits, Vitaly <vitaly.lifshits@intel.com>; intel-wired-lan@osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH v4] igc: add support to interrupt, eeprom,
> registers and link self-tests
> 
> > From: Brown, Aaron F
> > Sent: Friday, May 1, 2020 2:26 PM
> > To: Vitaly Lifshits <vitaly.lifshits@intel.com>;
> > intel-wired-lan@osuosl.org
> > Subject: RE: [Intel-wired-lan] [PATCH v4] igc: add support to
> > interrupt, eeprom, registers and link self-tests
> >
> > > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > > Of Vitaly Lifshits
> > > Sent: Sunday, April 5, 2020 5:16 AM
> > > To: intel-wired-lan@osuosl.org
> > > Subject: [Intel-wired-lan] [PATCH v4] igc: add support to interrupt,
> > > eeprom, registers and link self-tests
> > >
> > > Introduced igc_diag.c and igc_diag.h, these files have the
> > > diagnostics functionality of igc driver. For the time being these
> > > files are being used by ethtool self-test callbacks.
> > > Which mean that interrupt, eeprom, registers and link self-tests for
> > > ethtool were implemented.
> > >
> > > Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > > Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> > > ---
> > > v2: Fix return 0/1 to boolean value in igc_reg_test function
> > > v3: Address community comments
> > > v4: Fix interrupt test and address community comments
> > > ---
> > >  drivers/net/ethernet/intel/igc/Makefile      |   2 +-
> > >  drivers/net/ethernet/intel/igc/igc.h         |   4 +
> > >  drivers/net/ethernet/intel/igc/igc_diag.c    | 336
> > > +++++++++++++++++++++++++++
> > >  drivers/net/ethernet/intel/igc/igc_diag.h    |  37 +++
> > >  drivers/net/ethernet/intel/igc/igc_ethtool.c |  63 +++++
> > >  drivers/net/ethernet/intel/igc/igc_main.c    |   4 +-
> > >  drivers/net/ethernet/intel/igc/igc_regs.h    |   2 +
> > >  7 files changed, 445 insertions(+), 3 deletions(-)  create mode
> > > 100644 drivers/net/ethernet/intel/igc/igc_diag.c
> > >  create mode 100644 drivers/net/ethernet/intel/igc/igc_diag.h
> > >
> >
> > Tested-by: Aaron Brown <aaron.f.brown@intel.com>
> Sorry, I was intending the apply this to a different patch.  This is the patch that
> enables ethtool diags, which causes the call trace I sent out earlier today.

[Kirsher, Jeffrey T] 
I was just about to ask why the mixed messages...

> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
