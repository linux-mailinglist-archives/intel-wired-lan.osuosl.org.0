Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8AEF212D96
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jul 2020 22:05:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5FDB2896C1;
	Thu,  2 Jul 2020 20:05:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TX+5qIqodoMo; Thu,  2 Jul 2020 20:05:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CC709896BE;
	Thu,  2 Jul 2020 20:05:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4F0D81BF397
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 20:05:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4947887906
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 20:05:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id id9WawrWnigM for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2020 20:05:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A49C5878FE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 20:05:33 +0000 (UTC)
IronPort-SDR: L5DBB+tp/qt3dyKTL/rpnjNxCcU5z3EzBH2doGoShm1y0mqgi0eO9K6Jy2QGJU30W91Nq8xV/X
 MQf6R5V3B74g==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="212047366"
X-IronPort-AV: E=Sophos;i="5.75,305,1589266800"; d="scan'208";a="212047366"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 13:05:32 -0700
IronPort-SDR: Q/gMPJiB6RjmXVuXgFEPbhUuLmyUUtjMCNwUQ7XfBya73W9GOueOE2SPvpa4bXF+cDwKsCTH60
 7srsWZ0HJW3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,305,1589266800"; d="scan'208";a="455640157"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by orsmga005.jf.intel.com with ESMTP; 02 Jul 2020 13:05:32 -0700
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.199]) by
 ORSMSX109.amr.corp.intel.com ([169.254.11.7]) with mapi id 14.03.0439.000;
 Thu, 2 Jul 2020 13:05:32 -0700
From: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>
To: Francesco Ruggeri <fruggeri@arista.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [PATCH] igb: reinit_locked() should be called with rtnl_lock
Thread-Index: AQHWTlrL81g79hVuZ0aaoDgUuhrbt6jwv/UAgABMxoCAAOZwIIADNT2A//+SuOA=
Date: Thu, 2 Jul 2020 20:05:31 +0000
Message-ID: <61CC2BC414934749BD9F5BF3D5D9404498748B57@ORSMSX112.amr.corp.intel.com>
References: <20200629211801.C3D7095C0900@us180.sjc.aristanetworks.com>
 <20200629171612.49efbdaa@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CA+HUmGjHQPUh1frfy5E28Om9WTVr0W+UQVDsm99beC_mbTeMog@mail.gmail.com>
 <61CC2BC414934749BD9F5BF3D5D940449874358A@ORSMSX112.amr.corp.intel.com>
 <CA+HUmGhfxYY5QiwF8_UYbp0TY-k3u+cTYZDSqV1s=SUFnGCn8g@mail.gmail.com>
In-Reply-To: <CA+HUmGhfxYY5QiwF8_UYbp0TY-k3u+cTYZDSqV1s=SUFnGCn8g@mail.gmail.com>
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
Cc: Jakub Kicinski <kuba@kernel.org>, netdev <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 David Miller <davem@davemloft.net>, open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Francesco Ruggeri <fruggeri@arista.com>
> Sent: Thursday, July 2, 2020 12:35
> To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>
> Cc: Jakub Kicinski <kuba@kernel.org>; David Miller <davem@davemloft.net>;
> open list <linux-kernel@vger.kernel.org>; netdev <netdev@vger.kernel.org>;
> intel-wired-lan@lists.osuosl.org
> Subject: Re: [PATCH] igb: reinit_locked() should be called with rtnl_lock
> 
> > Do not worry about the other Intel drivers, I have our developers looking at
> each of our drivers for the locking issue.
> >
> > @David Miller - I am picking up this patch
> 
> There seems to be a second race, independent from the original one, that
> results in a divide error:
> 
> kworker         reboot -f       tx packet
> 
> igb_reset_task
>                 __igb_shutdown
>                 rtnl_lock()
>                 ...
>                 igb_clear_interrupt_scheme
>                 igb_free_q_vectors
>                 adapter->num_tx_queues = 0
>                 ...
>                 rtnl_unlock()
> rtnl_lock()
> igb_reinit_locked
> igb_down
> igb_up
> netif_tx_start_all_queues
>                                 dev_hard_start_xmit
>                                 igb_xmit_frame
>                                 igb_tx_queue_mapping
>                                 Panics on
>                                 r_idx % adapter->num_tx_queues
> 
> Using in igb_reset_task a logic similar to the one in ixgbe_reset_subtask (bailing
> if __IGB_DOWN or __IGB_RESETTING is set) seems to avoid the panic.
> That logic was first introduced in ixgbe as part of commit 2f90b8657ec ('ixgbe:
> this patch adds support for DCB to the kernel and ixgbe driver').
> Both fixes seem to be needed.

So will you be sending a v2 of your patch to include the second fix?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
