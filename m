Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 739A321A63
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 May 2019 17:16:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 32C27866A3;
	Fri, 17 May 2019 15:16:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nzVpEhUQGEgt; Fri, 17 May 2019 15:16:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 06BAD87942;
	Fri, 17 May 2019 15:16:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C955C1BF315
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 15:16:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C382E8848C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 15:16:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jSgb0efd8f-s for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2019 15:16:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6DA7388487
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 15:16:47 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id x24so5777904ion.5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 08:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O7EJOOciNikkf5PiuE4H3WoYPiyHO7ThOU93whUfBug=;
 b=VoNWRhyTiUpJGTcZo1DtkVlKLGI/9YYMnnX6vEykzx5I/hvbqm+Bp0N1y+la0Te5rh
 zhK3l3qLAtzsppcK3AA/GwIBDccL92xQcfedpg+Mn9qcHHXqQn3Y1S4qJjFQbpcxkJ2r
 K96LMQGlceMLUSCmocBIpM2nK7HB2AVWcUOzEspl0+rlX9BSe04wDRwe23qzcMLxawgI
 TLmubmLQc9a5jJaL6Z3ZvpffNVlqGTSCcZ0Xecl4fMWI2+lkosmnrt+EO1wLApiTc2ZD
 ZRKnwjIAVJeLxKFCEpmIosN+LwRGSCcc5grteFogXctLtY7rzz++Moukthhumj1Tx/Kw
 Gx6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O7EJOOciNikkf5PiuE4H3WoYPiyHO7ThOU93whUfBug=;
 b=GpwkvbrZGn+kzyHkobtlOWfoCgJ+WxPJaojfTkfWf58oTXQHAhEJbklQuMfB3ChSGw
 XJxSrv7Ymlos1OhY5ewEyP3AHj/39cAuiLw7jo6GIl9tZ9vWwL5H249ZeDxsBuwAW19g
 cfKgb9gUCLM4bYu9luS8WZINuUhiP3jiqdtR5IKgSsfjsqN+YQMUhNnkwdoj8JpHP6iv
 VpUngvoWyiYFoTnmZ3NEQb5yWCLgBWsAmqY0iM3s6r6qEYiZP5HN8xl8YyJo3ULvFQuw
 dg/Zg0WSLHYZndHOYW43CPDr7BNXSXj1fRBA2Z4vB9DPnKCRR7iWiiIVxlzb++KGLhqf
 KDFw==
X-Gm-Message-State: APjAAAWrQQrkHJ3z5pbxNbjchX7WmzItBX28ZONOBaXy3RE2IO5l6Rt4
 uu0AWriJKmts9mIg+lemPRng4SPhmLPn6fh5lbc=
X-Google-Smtp-Source: APXvYqw8t8xC+aNND57aUm26LmEwNT3jvC+cE1+OL9mdPzhwEpes5kmIIvl0zaN+QSJyxEXGF8GGzNzL/Ol3ZRLqu4o=
X-Received: by 2002:a5e:c60b:: with SMTP id f11mr718296iok.42.1558106205472;
 Fri, 17 May 2019 08:16:45 -0700 (PDT)
MIME-Version: 1.0
References: <1557357269-9498-1-git-send-email-nkela@cisco.com>
 <9be117dc6e818ab83376cd8e0f79dbfaaf193aa9.camel@intel.com>
 <76B41175-0CEE-466C-91BF-89A1CA857061@cisco.com>
 <4469196a-0705-5459-8aca-3f08e9889d61@gmail.com>
 <20190517010330.2wynopuhsqycqzuq@zorba>
 <bd9e6a93-c8e8-a90e-25b0-26ccbf65b7c4@gmail.com>
In-Reply-To: <bd9e6a93-c8e8-a90e-25b0-26ccbf65b7c4@gmail.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Fri, 17 May 2019 08:16:34 -0700
Message-ID: <CAKgT0Uev7sfpOOhusAg9jFLkFeE9JtTntyTd0aAHz2db69L13g@mail.gmail.com>
To: Florian Fainelli <f.fainelli@gmail.com>
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
 "David S. Miller" <davem@davemloft.net>, Daniel Walker <danielwa@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, May 16, 2019 at 6:48 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
>
>
> On 5/16/2019 6:03 PM, Daniel Walker wrote:
> > On Thu, May 16, 2019 at 03:02:18PM -0700, Florian Fainelli wrote:
> >> On 5/16/19 12:55 PM, Nikunj Kela (nkela) wrote:
> >>>
> >>>
> >>> On 5/16/19, 12:35 PM, "Jeff Kirsher" <jeffrey.t.kirsher@intel.com> wrote:
> >>>
> >>>     On Wed, 2019-05-08 at 23:14 +0000, Nikunj Kela wrote:
> >>>    >> Some of the broken NICs don't have EEPROM programmed correctly. It
> >>>    >> results
> >>>    >> in probe to fail. This change adds a module parameter that can be
> >>>    >> used to
> >>>    >> ignore nvm checksum validation.
> >>>    >>
> >>>    >> Cc: xe-linux-external@cisco.com
> >>>    >> Signed-off-by: Nikunj Kela <nkela@cisco.com>
> >>>    >> ---
> >>>    >>  drivers/net/ethernet/intel/igb/igb_main.c | 28
> >>>    >> ++++++++++++++++++++++------
> >>>    >>  1 file changed, 22 insertions(+), 6 deletions(-)
> >>>
> >>>     >NAK for two reasons.  First, module parameters are not desirable
> >>>     >because their individual to one driver and a global solution should be
> >>>     >found so that all networking device drivers can use the solution.  This
> >>>     >will keep the interface to change/setup/modify networking drivers
> >>>     >consistent for all drivers.
> >>>
> >>>
> >>>     >Second and more importantly, if your NIC is broken, fix it.  Do not try
> >>>     >and create a software workaround so that you can continue to use a
> >>>     >broken NIC.  There are methods/tools available to properly reprogram
> >>>     >the EEPROM on a NIC, which is the right solution for your issue.
> >>>
> >>> I am proposing this as a debug parameter. Obviously, we need to fix EEPROM but this helps us continuing the development while manufacturing fixes NIC.
> >>
> >> Then why even bother with sending this upstream?
> >
> > It seems rather drastic to disable the entire driver because the checksum
> > doesn't match. It really should be a warning, even a big warning, to let people
> > know something is wrong, but disabling the whole driver doesn't make sense.
>
> You could generate a random Ethernet MAC address if you don't have a
> valid one, a lot of drivers do that, and that's a fairly reasonable
> behavior. At some point in your product development someone will
> certainly verify that the provisioned MAC address matches the network
> interface's MAC address.
> --
> Florian

The thing is the EEPROM contains much more than just the MAC address.
There ends up being configuration for some of the PCIe interface in
the hardware as well as PHY configuration. If that is somehow mangled
we shouldn't be bringing up the part because there are one or more
pieces of the device configuration that are likely wrong.

The checksum is being used to make sure the EEPROM is valid, without
that we would need to go through and validate each individual section
of the EEPROM before enabling the the portions of the device related
to it. The concern is that this will become a slippery slope where we
eventually have to code all the configuration of the EEPROM into the
driver itself.

We need to make the checksum a hard stop. If the part is broken then
it needs to be addressed. Workarounds just end up being used and
forgotten, which makes it that much harder to support the product.
Better to mark the part as being broken, and get it fixed now, than to
have parts start shipping that require workarounds in order to
function.

- Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
