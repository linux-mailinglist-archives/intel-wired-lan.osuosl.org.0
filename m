Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9FF26A6B7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Sep 2020 16:03:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6AF862153D;
	Tue, 15 Sep 2020 14:03:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xejanfXGWHY6; Tue, 15 Sep 2020 14:03:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DB115204B0;
	Tue, 15 Sep 2020 14:03:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4E4081BF32C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 14:03:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3D33786F12
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 14:03:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YxX-bX6PdbN5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Sep 2020 14:03:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B69E586EC8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 14:03:35 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
 (envelope-from <andrew@lunn.ch>)
 id 1kIBYM-00Em7H-BY; Tue, 15 Sep 2020 16:03:26 +0200
Date: Tue, 15 Sep 2020 16:03:26 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Saeed Mahameed <saeed@kernel.org>
Message-ID: <20200915140326.GG3485708@lunn.ch>
References: <20200915014455.1232507-1-jesse.brandeburg@intel.com>
 <a28498acdf87f11e81d3282d63f18dbe1a3d5329.camel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a28498acdf87f11e81d3282d63f18dbe1a3d5329.camel@kernel.org>
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 00/10] make
 drivers/net/ethernet W=1 clean
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Sep 14, 2020 at 09:24:28PM -0700, Saeed Mahameed wrote:
> On Mon, 2020-09-14 at 18:44 -0700, Jesse Brandeburg wrote:
> > After applying the patches below, the drivers/net/ethernet
> > directory can be built as modules with W=1 with no warnings (so
> > far on x64_64 arch only!).
> > As Jakub pointed out, there is much more work to do to clean up
> > C=1, but that will be another series of changes.
> > 
> > This series removes 1,283 warnings and hopefully allows the
> > ethernet directory to move forward from here without more
> > warnings being added. There is only one objtool warning now.
> > 
> > Some of these patches are already sent to Intel Wired Lan, but
> > the rest of the series titled drivers/net/ethernet affects other
> > drivers. The changes are all pretty straightforward.
> > 
> > As part of testing this series I realized that I have ~1,500 more
> > kdoc warnings to fix due to being in other arch or not compiled
> > with my x86_64 .config. Feel free to run
> > $ 'git ls-files *.[ch] | grep drivers/net/ethernet | xargs
> > scripts/kernel-doc -none'
> > to see the remaining issues.
> > 
> 
> Reviewed-by: Saeed Mahameed <saeedm@nvidia.com>
> 
> Hi Jesse, 
> What was the criteria to select which drivers to enable in your .config
> ?
> 
> I think we need some automation here and have a well known .config that
> enables as many drivers as we can for static + compilation testing,
> otherwise we are going to need to repeat this patch every 2-3 months.

Hi Saeed

I would prefer we just enable W=1 by default for everything under
driver/net. Maybe there is something we can set in
driver/net/Makefile?

	    Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
