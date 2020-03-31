Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 039A919A058
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2020 22:59:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7FAAE253A7;
	Tue, 31 Mar 2020 20:59:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V7ca3azq8q6D; Tue, 31 Mar 2020 20:59:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2652F25351;
	Tue, 31 Mar 2020 20:59:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6D9041BF263
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 20:59:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6303E25067
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 20:59:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AoY-1ROArma1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Mar 2020 20:59:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 85B5420370
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 20:59:35 +0000 (UTC)
IronPort-SDR: qN2Gq9R9IY9BQ5YlOQGJ2lRXv3HAs9SxaOn3OEHvoglK/3R3RtwViUH8/gQlxgfi/tpib5JwMP
 pAXRudvcwgeA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 13:59:34 -0700
IronPort-SDR: HAi4Rsdligsk6Uc0XUmLPFo+zrcM0Lz2LIa5s/HwK1kR29FtTihHo9gNbSok2h2PgyNfUbVJ5V
 35AYuu0XinDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,329,1580803200"; d="scan'208";a="328204122"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga001.jf.intel.com with ESMTP; 31 Mar 2020 13:59:35 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.6]) by
 ORSMSX105.amr.corp.intel.com ([169.254.2.72]) with mapi id 14.03.0439.000;
 Tue, 31 Mar 2020 13:59:34 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Brown, Aaron F" <aaron.f.brown@intel.com>, "Guedes, Andre"
 <andre.guedes@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 02/12] igc: Check unsupported flag in
 igc_add_mac_filter()
Thread-Index: AQHV/XlOME8QqLdOjUewpGBhmRMLHahjMpVQgAAQ5yA=
Date: Tue, 31 Mar 2020 20:59:34 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9722DF36@ORSMSX103.amr.corp.intel.com>
References: <20200318230102.36952-1-andre.guedes@intel.com>
 <20200318230102.36952-3-andre.guedes@intel.com>
 <309B89C4C689E141A5FF6A0C5FB2118B9722DD90@ORSMSX103.amr.corp.intel.com>
In-Reply-To: <309B89C4C689E141A5FF6A0C5FB2118B9722DD90@ORSMSX103.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 02/12] igc: Check unsupported flag in
 igc_add_mac_filter()
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
> Brown, Aaron F
> Sent: Tuesday, March 31, 2020 12:59 PM
> To: Guedes, Andre <andre.guedes@intel.com>; intel-wired-lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH 02/12] igc: Check unsupported flag in
> igc_add_mac_filter()
> 
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> > Andre Guedes
> > Sent: Wednesday, March 18, 2020 4:01 PM
> > To: intel-wired-lan@lists.osuosl.org
> > Subject: [Intel-wired-lan] [PATCH 02/12] igc: Check unsupported flag in
> > igc_add_mac_filter()
> >
> > The IGC_MAC_STATE_SRC_ADDR flags is not supported by igc_add_mac_
> > filter() so this patch adds a check for it and returns -ENOTSUPP
> > in case it is set.
> >
> > Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> > ---
> >  drivers/net/ethernet/intel/igc/igc_main.c | 2 ++
> >  1 file changed, 2 insertions(+)

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
