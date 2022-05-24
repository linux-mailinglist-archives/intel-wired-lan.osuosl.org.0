Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D42532FEB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 May 2022 19:58:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF0936124E;
	Tue, 24 May 2022 17:58:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 39-kfRcvB-Gc; Tue, 24 May 2022 17:58:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E9AA06124D;
	Tue, 24 May 2022 17:58:00 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 367851BF3D5
 for <intel-wired-lan@osuosl.org>; Tue, 24 May 2022 17:57:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 22EBD40438
 for <intel-wired-lan@osuosl.org>; Tue, 24 May 2022 17:57:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id goTL0mLh4hmy for <intel-wired-lan@osuosl.org>;
 Tue, 24 May 2022 17:57:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 70AD34040D
 for <intel-wired-lan@osuosl.org>; Tue, 24 May 2022 17:57:55 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 4CF98B81864;
 Tue, 24 May 2022 17:57:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADF54C34100;
 Tue, 24 May 2022 17:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1653415071;
 bh=eg0N2/yPxi9Pc0epjBxRy7XA62HE3hr1H9ejUyHsHqg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=mJ+iGIDjTKWVblTbASJ7D3SEyARQlYYTdBRt5pC239+EAFIaWuGMlXS3dGkGcRhEu
 O+HzwEW/4y3TYiRdeCWzs6F60mBU+eimORD/rdX/7FBWZmT/oSaWLn/11huNxv89q0
 q6mEUsN7CQLDiAPlzGmO+aqM/XJ1OutysvdtKFKp6lDo2pUWDsceE6y+uwxTkKt9kb
 QYIiudnMESlxCbtc0nMPcoyOMtPNNCbD8n7CxloC7RvbOGubHSkm+v4eMxzVtwYg1K
 44ZP+qP81aYQDjVgcv9kv/zkleLLlXvu/9iCJ3h2Pkvnzz+HVl8MuI3CcpcOY6vVRy
 209S+jFuFAe4Q==
Date: Tue, 24 May 2022 10:57:49 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Olivier Matz <olivier.matz@6wind.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20220524105749.6690938f@kernel.org>
In-Reply-To: <YoyLUEk9n1uXHscH@platinum>
References: <20220406095252.22338-1-olivier.matz@6wind.com>
 <YmaLWN0aGIKCzkHP@platinum> <YoyLUEk9n1uXHscH@platinum>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net v2 0/2] ixgbe: fix promiscuous
 mode on VF
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, netdev@vger.kernel.org,
 stable@vger.kernel.org, intel-wired-lan@osuosl.org,
 Nicolas Dichtel <nicolas.dichtel@6wind.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 24 May 2022 09:37:52 +0200 Olivier Matz wrote:
> On Mon, Apr 25, 2022 at 01:51:53PM +0200, Olivier Matz wrote:
> > On Wed, Apr 06, 2022 at 11:52:50AM +0200, Olivier Matz wrote:  
> > > These 2 patches fix issues related to the promiscuous mode on VF.
> > > 
> > > Comments are welcome,
> > > Olivier
> > > 
> > > Cc: stable@vger.kernel.org
> > > Cc: Nicolas Dichtel <nicolas.dichtel@6wind.com>
> > > 
> > > Changes since v1:
> > > - resend with CC intel-wired-lan
> > > - remove CC Hiroshi Shimamoto (address does not exist anymore)
> > > 
> > > Olivier Matz (2):
> > >   ixgbe: fix bcast packets Rx on VF after promisc removal
> > >   ixgbe: fix unexpected VLAN Rx in promisc mode on VF
> > > 
> > >  drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c | 8 ++++----
> > >  1 file changed, 4 insertions(+), 4 deletions(-)  
> > 
> > Any feedback about this patchset?
> > Comments are welcome.  
> 
> I didn't get feedback for this patchset until now. Am I doing things
> correctly? Am I targeting the appropriate mailing lists and people?
> 
> Please let me know if I missed something.

You are doing this correctly.. adding a couple more Intel folks.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
