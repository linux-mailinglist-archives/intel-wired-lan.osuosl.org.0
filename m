Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F13F31A52D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Feb 2021 20:17:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2D39C86F75;
	Fri, 12 Feb 2021 19:17:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4+cBeUADd58o; Fri, 12 Feb 2021 19:17:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5E7EF87663;
	Fri, 12 Feb 2021 19:17:02 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 471311BF2F0
 for <intel-wired-lan@osuosl.org>; Fri, 12 Feb 2021 19:17:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 30DA86F7B3
 for <intel-wired-lan@osuosl.org>; Fri, 12 Feb 2021 19:17:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZDyoSE7cpD3j for <intel-wired-lan@osuosl.org>;
 Fri, 12 Feb 2021 19:16:59 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 6AC206F79E; Fri, 12 Feb 2021 19:16:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9EDB46F77B
 for <intel-wired-lan@osuosl.org>; Fri, 12 Feb 2021 19:16:56 +0000 (UTC)
IronPort-SDR: GnfgRrDNp0hkVJN5AzL/y9yTN3Fg6dCFrxyVIQ7FYX+8cwRUqwVdW8iEQm9F8OZUpLLKACf5GZ
 X1cL8SfgAyrg==
X-IronPort-AV: E=McAfee;i="6000,8403,9893"; a="182594722"
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="182594722"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 11:16:54 -0800
IronPort-SDR: 9NeJ+hixOdeImor4SjW7orgd0IR7dYMaNoGvQtNLgqcFs6kpt0jtVoO68GQtwG/QOp3yEaCbVb
 3gfEg8xqppig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="398106344"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 12 Feb 2021 11:16:54 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Feb 2021 11:16:53 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Feb 2021 11:16:53 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.002;
 Fri, 12 Feb 2021 11:16:53 -0800
From: "Joseph, Jithu" <jithu.joseph@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Patel, Vedang"
 <vedang.patel@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v6 1/9] igc: Fix
 igc_ptp_rx_pktstamp()
Thread-Index: AQHW//oqPNAa5svDfUCnCh62nSvfJqpSoGaAgALNpIA=
Date: Fri, 12 Feb 2021 19:16:53 +0000
Message-ID: <f6fb65d0a78b51489323486ca218b2f3d9c441c3.camel@intel.com>
References: <20210210215848.24514-1-vedang.patel@intel.com>
 <20210210215848.24514-2-vedang.patel@intel.com>
 <578c9ceb86e0d6007cab529c4215372f61d023d3.camel@intel.com>
In-Reply-To: <578c9ceb86e0d6007cab529c4215372f61d023d3.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <67ACC4FC1869D54FB25815785DD4E11F@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 1/9] igc: Fix
 igc_ptp_rx_pktstamp()
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
Cc: "andre.guedes@intel.com" <andre.guedes@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2021-02-11 at 00:30 +0000, Nguyen, Anthony L wrote:
> On Wed, 2021-02-10 at 13:58 -0800, Vedang Patel wrote:
> > From: Andre Guedes <andre.guedes@intel.com>
> > 
> > The comment describing the timestamps layout in the packet buffer
> > is
> > wrong and the code is actually retrieving the timestamp in Timer 1
> > reference instead of Timer 0. This hasn't been a big issue so far
> > because hardware is configured to report both timestamps using
> > Timer
> > 0
> > (see IGC_SRRCTL register configuration in
> > igc_ptp_enable_rx_timestamp()
> > helper). This patch fixes the comment and the code so we retrieve
> > the
> > timestamp in Timer 0 reference as expected.
> > 
> > This patch also takes the opportunity to get rid of the hw.mac.type
> > check
> > since it is not required.
> > 
> > Fixes: 81b055205e8ba ("igc: Add support for RX timestamping")
> 
> This seems better suited for net. I can split it and send it that
> route, but is there a reason that it needs to stay in this series?
> 

A subsequent patch  in this series (f6ddfa4ba2ed - igc: Refactor Rx
timestamp handling) is dependent on this patch.  

Please go ahead and split this patch from this series and send it via
the "net route" you mention, if that is more appropriate. 

Let us know if you want us to resend the rest of the patches in this
series (without the first patch) .

Jithu
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
