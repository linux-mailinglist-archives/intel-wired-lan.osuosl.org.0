Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 008611FBE51
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2020 20:42:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A374F87940;
	Tue, 16 Jun 2020 18:42:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2z3QuKIFIz5c; Tue, 16 Jun 2020 18:42:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C8B5C8793F;
	Tue, 16 Jun 2020 18:42:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C94361BF21A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2020 06:59:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B535D24F8D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2020 06:59:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g9Lgx1zKX7l6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jun 2020 06:59:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id B6B6E24F76
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2020 06:59:56 +0000 (UTC)
IronPort-SDR: JzTZRk7IG4A/HUpWHF2hTl2YojaneQEqRr+FjFy9a+CiT99fEj/06u5AlhELWLOfXtHzzQ/mPg
 TBsK4ISC8RHw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2020 23:59:56 -0700
IronPort-SDR: 8BLa8egR+d0BceuadNnqir5piIf7i4xRMu4AhfKEI5XBxLk8UY/y1Jgn9pwTnW/jKhpBlfHZgO
 wI1AEoIK+2dA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="420663416"
Received: from chenyu-office.sh.intel.com ([10.239.158.173])
 by orsmga004.jf.intel.com with ESMTP; 15 Jun 2020 23:59:52 -0700
Date: Tue, 16 Jun 2020 15:01:01 +0800
From: Chen Yu <yu.c.chen@intel.com>
To: "Brown, Aaron F" <aaron.f.brown@intel.com>
Message-ID: <20200616070101.GA24567@chenyu-office.sh.intel.com>
References: <cover.1590081982.git.yu.c.chen@intel.com>
 <9f7ede2e2e8152704258fc11ba3755ae93f50741.1590081982.git.yu.c.chen@intel.com>
 <SN6PR11MB2896298A90B37CEA0DC5A750BC9C0@SN6PR11MB2896.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR11MB2896298A90B37CEA0DC5A750BC9C0@SN6PR11MB2896.namprd11.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Mailman-Approved-At: Tue, 16 Jun 2020 18:42:43 +0000
Subject: Re: [Intel-wired-lan] [PATCH 1/2] e1000e: Do not wake up the system
 via WOL if device wakeup is disabled
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
Cc: "Brown, Len" <len.brown@intel.com>, "Kok,
 Auke-jan H" <auke-jan.h.kok@intel.com>, "Shevchenko,
 Andriy" <andriy.shevchenko@intel.com>, Jeff Garzik <jeff@garzik.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Stable@vger.kernel.org" <Stable@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 16, 2020 at 02:51:27AM +0800, Brown, Aaron F wrote:
> > From: Chen Yu <yu.c.chen@intel.com>
> > Sent: Thursday, May 21, 2020 10:59 AM
> > To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; David S. Miller
> > <davem@davemloft.net>; Jakub Kicinski <kuba@kernel.org>; Kok, Auke-jan H
> > <auke-jan.h.kok@intel.com>; Jeff Garzik <jeff@garzik.org>
> > Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> > kernel@vger.kernel.org; Brown, Len <len.brown@intel.com>; Rafael J. Wysocki
> > <rjw@rjwysocki.net>; Shevchenko, Andriy <andriy.shevchenko@intel.com>;
> > Neftin, Sasha <sasha.neftin@intel.com>; Lifshits, Vitaly
> > <vitaly.lifshits@intel.com>; Chen, Yu C <yu.c.chen@intel.com>;
> > Stable@vger.kernel.org
> > Subject: [PATCH 1/2] e1000e: Do not wake up the system via WOL if device
> > wakeup is disabled
> >
> > Currently the system will be woken up via WOL(Wake On Lan) even if the
> > device wakeup ability has been disabled via sysfs:
> >  cat /sys/devices/pci0000:00/0000:00:1f.6/power/wakeup
> >  disabled
> >
> > The system should not be woken up if the user has explicitly
> > disabled the wake up ability for this device.
> >
> > This patch clears the WOL ability of this network device if the
> > user has disabled the wake up ability in sysfs.
> >
> > Fixes: bc7f75fa9788 ("[E1000E]: New pci-express e1000 driver")
> > Reported-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > Cc: <Stable@vger.kernel.org>
> > Signed-off-by: Chen Yu <yu.c.chen@intel.com>
> > ---
> >  drivers/net/ethernet/intel/e1000e/netdev.c | 14 ++++++++++----
> >  1 file changed, 10 insertions(+), 4 deletions(-)
> >
> Tested-by: Aaron Brown <aaron.f.brown@intel.com>
> 
Thanks for testing, Aaron.

Best,
Chenyu
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
