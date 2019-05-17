Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7A021186
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 May 2019 03:03:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 84D5B84E24;
	Fri, 17 May 2019 01:03:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id asFaHUVIu7aH; Fri, 17 May 2019 01:03:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6836984F2B;
	Fri, 17 May 2019 01:03:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 884401BF339
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 01:03:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 84674882A2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 01:03:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zN41Hb9KlpdF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2019 01:03:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from alln-iport-3.cisco.com (alln-iport-3.cisco.com [173.37.142.90])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 98EDF8829F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 01:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=1954; q=dns/txt; s=iport;
 t=1558055014; x=1559264614;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=CdtFlPdIxBflewxo8eZNJ3cZUeGIx4ZiQQJbr+jUzY4=;
 b=WOjk/eere5PRWzDTT3VJUyDBq8E7bDzCd4zQx3/nZZ3NiUoMtk7ckeJF
 jOpZUQ/ot1kWluWITbaMXLp10Dg7sJPXsnF/axGv2iwJvYCXaMwnVMycf
 P39Mbh14OSY8RqNRUgzHdmrqmmzjyRFbCZzLN0vHC9jiIcwK6qXqWfFus 8=;
X-IronPort-AV: E=Sophos;i="5.60,477,1549929600"; d="scan'208";a="277980231"
Received: from alln-core-11.cisco.com ([173.36.13.133])
 by alln-iport-3.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 17 May 2019 01:03:33 +0000
Received: from zorba ([10.24.21.190])
 by alln-core-11.cisco.com (8.15.2/8.15.2) with ESMTPS id x4H13VMX014537
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Fri, 17 May 2019 01:03:32 GMT
Date: Thu, 16 May 2019 18:03:30 -0700
From: Daniel Walker <danielwa@cisco.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <20190517010330.2wynopuhsqycqzuq@zorba>
References: <1557357269-9498-1-git-send-email-nkela@cisco.com>
 <9be117dc6e818ab83376cd8e0f79dbfaaf193aa9.camel@intel.com>
 <76B41175-0CEE-466C-91BF-89A1CA857061@cisco.com>
 <4469196a-0705-5459-8aca-3f08e9889d61@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4469196a-0705-5459-8aca-3f08e9889d61@gmail.com>
User-Agent: NeoMutt/20170609 (1.8.3)
X-Auto-Response-Suppress: DR, OOF, AutoReply
X-Outbound-SMTP-Client: 10.24.21.190, [10.24.21.190]
X-Outbound-Node: alln-core-11.cisco.com
Subject: Re: [Intel-wired-lan] [PATCH] igb: add parameter to ignore nvm
 checksum validation
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
Cc: "Nikunj Kela \(nkela\)" <nkela@cisco.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "xe-linux-external\(mailer list\)" <xe-linux-external@cisco.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, May 16, 2019 at 03:02:18PM -0700, Florian Fainelli wrote:
> On 5/16/19 12:55 PM, Nikunj Kela (nkela) wrote:
> > 
> > 
> > On 5/16/19, 12:35 PM, "Jeff Kirsher" <jeffrey.t.kirsher@intel.com> wrote:
> > 
> >     On Wed, 2019-05-08 at 23:14 +0000, Nikunj Kela wrote:
> >    >> Some of the broken NICs don't have EEPROM programmed correctly. It
> >    >> results
> >    >> in probe to fail. This change adds a module parameter that can be
> >    >> used to
> >    >> ignore nvm checksum validation.
> >    >> 
> >    >> Cc: xe-linux-external@cisco.com
> >    >> Signed-off-by: Nikunj Kela <nkela@cisco.com>
> >    >> ---
> >    >>  drivers/net/ethernet/intel/igb/igb_main.c | 28
> >    >> ++++++++++++++++++++++------
> >    >>  1 file changed, 22 insertions(+), 6 deletions(-)
> >     
> >     >NAK for two reasons.  First, module parameters are not desirable
> >     >because their individual to one driver and a global solution should be
> >     >found so that all networking device drivers can use the solution.  This
> >     >will keep the interface to change/setup/modify networking drivers
> >     >consistent for all drivers.
> > 
> >     
> >     >Second and more importantly, if your NIC is broken, fix it.  Do not try
> >     >and create a software workaround so that you can continue to use a
> >     >broken NIC.  There are methods/tools available to properly reprogram
> >     >the EEPROM on a NIC, which is the right solution for your issue.
> > 
> > I am proposing this as a debug parameter. Obviously, we need to fix EEPROM but this helps us continuing the development while manufacturing fixes NIC.
> 
> Then why even bother with sending this upstream?

It seems rather drastic to disable the entire driver because the checksum
doesn't match. It really should be a warning, even a big warning, to let people
know something is wrong, but disabling the whole driver doesn't make sense.

Daniel
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
