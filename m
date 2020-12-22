Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 550442E0796
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Dec 2020 09:59:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1846387114;
	Tue, 22 Dec 2020 08:59:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jciXTau+u+LN; Tue, 22 Dec 2020 08:59:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4AC9387245;
	Tue, 22 Dec 2020 08:59:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D0F961BF280
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 08:59:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CC85680CE5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 08:59:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zsaBlkPhdBK6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Dec 2020 08:59:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5EBDA847DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 08:59:10 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id F34022251F;
 Tue, 22 Dec 2020 08:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1608627549;
 bh=Dyk8LinvwccB3LsrSKP8imoT/WARhd4gsqmIsWMXlNc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XUtv1x4Cy70kM8JIhJrYNWYTmCnH14ydp+Gvk3y78S84bC6mEZayv6JWrfkwi/6q6
 aWAANbPxwf2TE/so0EY0VSrqKGtaJlDHdd2fDrt0lw1malEKr4vCHF40aMJxF+ZPfG
 eAEVeizzIPLIff2F4fmU0pOUH87O0cZdzv5DlFpE=
Date: Tue, 22 Dec 2020 09:59:05 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ben Greear <greearb@candelatech.com>
Message-ID: <X+G1WVz0qorjegSa@kroah.com>
References: <BYAPR11MB3606E48BA821185142354D67EFC30@BYAPR11MB3606.namprd11.prod.outlook.com>
 <3bcba0ca-8f3b-8428-861a-86aaff1688b6@molgen.mpg.de>
 <c54c8f2c-a295-c691-466e-07ae8f41b0ac@candelatech.com>
 <3c8510fb-af8c-b5f9-2af1-64584a667ac8@molgen.mpg.de>
 <BYAPR11MB36060F3889C66AE55092DA01EFC20@BYAPR11MB3606.namprd11.prod.outlook.com>
 <8635a2db-0d38-c088-321b-27bc4bb21ec4@candelatech.com>
 <MN2PR11MB3614FD0C52705864C05EFDF8EFC20@MN2PR11MB3614.namprd11.prod.outlook.com>
 <2108932e-ee2e-cadf-52cd-0cd11a6aeba4@candelatech.com>
 <BYAPR11MB3606A702240D0A1614AA6585EFC00@BYAPR11MB3606.namprd11.prod.outlook.com>
 <1d9e12e5-56a5-7921-e4b6-b67bcc180942@candelatech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1d9e12e5-56a5-7921-e4b6-b67bcc180942@candelatech.com>
Subject: Re: [Intel-wired-lan] 5.10.0 kernel regression for 2.5Gbps link
 negotiation?
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Dec 21, 2020 at 07:52:54AM -0800, Ben Greear wrote:
> On 12/21/20 7:20 AM, Fujinaka, Todd wrote:
> > Nope. The timing of the PHYs means the switch times out while we're trying 2.5G and 5G and the switch goes to its default lowest speed of 1G. Then we go to 1G and by that time bonding is broken in several of the cases we ran into.
> > 
> > Basically, we can have that switch work, or we can have 2.5G and 5G on by default. Not both. And since we're selling a 10G device with other speeds as a bonus, we're prioritizing the highest speed. That plus the very high profile customers who wanted this solution.
> > 
> > The solution for one camp or the other is to use the ethtool command at boot (I've forgotten exactly what that was) but the high profile customers refused to do that. Sounds like you're refusing as well?
> 
> I'm not refusing, I just would rather patch my kernels than use ethtool, that way my older user-space
> would work fine on newer kernels.
> 
> Would you accept a patch that makes this a module option, defaulted to disable 2.5/5, but which
> a user could enabled to enable 2.5/5 by default?

Module options are not ok, this is not the 1990's.  Please use the
proper configuration methods instead that can work on a per-device
basis.

thanks,

greg k-h
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
