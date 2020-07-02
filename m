Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBF4212ED0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jul 2020 23:27:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BC51687840;
	Thu,  2 Jul 2020 21:26:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V7siRTi7Ww76; Thu,  2 Jul 2020 21:26:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0C97D87854;
	Thu,  2 Jul 2020 21:26:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B01A01BF31C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 21:26:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 98F272048E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 21:26:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tlkRoNAHivLl for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2020 21:26:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 38B472047A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 21:26:55 +0000 (UTC)
IronPort-SDR: WoyQyMzIoGFziToyWfOYPKoG6d7trulBBj/ZDFiJju7c+LxYX8fyfuxV+yGGa6QBQga83W7n+v
 rL5nUfF1ywLg==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="126643839"
X-IronPort-AV: E=Sophos;i="5.75,305,1589266800"; d="scan'208";a="126643839"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 14:26:55 -0700
IronPort-SDR: 0MZzjM4DFGHlsFVTM8qf3gqTdlV0ESr39xpt6nVRtN+B59e3c98ZtncYDrKdiDRnsdYnR0Js9q
 xqdhDQmrXq6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,305,1589266800"; d="scan'208";a="387449103"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by fmsmga001.fm.intel.com with ESMTP; 02 Jul 2020 14:26:55 -0700
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 2 Jul 2020 14:26:55 -0700
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.199]) by
 ORSMSX157.amr.corp.intel.com ([169.254.9.81]) with mapi id 14.03.0439.000;
 Thu, 2 Jul 2020 14:26:54 -0700
From: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>
To: Francesco Ruggeri <fruggeri@arista.com>
Thread-Topic: [PATCH] igb: reinit_locked() should be called with rtnl_lock
Thread-Index: AQHWTlrL81g79hVuZ0aaoDgUuhrbt6jwv/UAgABMxoCAAOZwIIADNT2A//+SuOCAAHnrAP//nSAg
Date: Thu, 2 Jul 2020 21:26:54 +0000
Message-ID: <61CC2BC414934749BD9F5BF3D5D9404498748DAB@ORSMSX112.amr.corp.intel.com>
References: <20200629211801.C3D7095C0900@us180.sjc.aristanetworks.com>
 <20200629171612.49efbdaa@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CA+HUmGjHQPUh1frfy5E28Om9WTVr0W+UQVDsm99beC_mbTeMog@mail.gmail.com>
 <61CC2BC414934749BD9F5BF3D5D940449874358A@ORSMSX112.amr.corp.intel.com>
 <CA+HUmGhfxYY5QiwF8_UYbp0TY-k3u+cTYZDSqV1s=SUFnGCn8g@mail.gmail.com>
 <61CC2BC414934749BD9F5BF3D5D9404498748B57@ORSMSX112.amr.corp.intel.com>
 <CA+HUmGi6D8Ci5fk7vyengJN4qOEH6zz18Kw6B9Us-Kav-78oAg@mail.gmail.com>
In-Reply-To: <CA+HUmGi6D8Ci5fk7vyengJN4qOEH6zz18Kw6B9Us-Kav-78oAg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] igb: reinit_locked() should be called
 with rtnl_lock
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
Cc: netdev <netdev@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Francesco Ruggeri <fruggeri@arista.com>
> Sent: Thursday, July 2, 2020 13:20
> To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Jakub Kicinski
> <kuba@kernel.org>; David Miller <davem@davemloft.net>; open list <linux-
> kernel@vger.kernel.org>; netdev <netdev@vger.kernel.org>; intel-wired-
> lan@lists.osuosl.org
> Subject: Re: [PATCH] igb: reinit_locked() should be called with rtnl_lock
> 
> >
> > So will you be sending a v2 of your patch to include the second fix?
> 
> Yes, I am working on it. Just to confirm, v2 should include both fixes, right?

Correct.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
