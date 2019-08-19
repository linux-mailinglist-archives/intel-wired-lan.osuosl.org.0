Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EAD94FD0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Aug 2019 23:23:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B3D1C860FD;
	Mon, 19 Aug 2019 21:23:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZnRfx0AK-Zh6; Mon, 19 Aug 2019 21:23:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 795008606C;
	Mon, 19 Aug 2019 21:23:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A9BF51BF303
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2019 21:23:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A6217869B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2019 21:23:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eNrjVtKA64Dg for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Aug 2019 21:23:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com
 [209.85.217.52])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EAA9186AF2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2019 21:23:06 +0000 (UTC)
Received: by mail-vs1-f52.google.com with SMTP id i128so2153728vsc.7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2019 14:23:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wnGSnyBhkBUZ/OIpEEPaI4jWKLSGbkuQsB+pXjZmloM=;
 b=b5v26hrVUOL8lvUUOyiZHJzpWxYmtkgkvIxt8XDl7jqFEd0dRCmZwFCXwPm653tovx
 TS6sTh/UMW0QP85WAASDEUZs1j0zg1M6I5UHeNEq+UVGqQwxnUfI2O9ZZ36FNt3oJhKK
 YiTvmKRPPoI9WSIIXEB8t5+n8tkP8AFL9PIxz7uw1GX8geXEsj8254cF6aaX0qcq6R+Z
 vL0/7xZ+67FtGlIBbvd7PDUECQ7ea4ec6SeYNLcMFrjx8kgN9oybiwI2EDmmPdXOU5at
 7iUGZ0Jc/lntsjGzZ+XLUZMmyF8GOPkjF4mPRtwQ7fnhmMrJ3P32IN8+2w59TZDnjwUN
 s97Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wnGSnyBhkBUZ/OIpEEPaI4jWKLSGbkuQsB+pXjZmloM=;
 b=T44Og4lo+iTyjzGyU09qMYNYE8vJH5TEEcvJ6WZxBLDqKNBviJ9ByWLjfZYti5HGoi
 cBjCpt9SZIhtpidalasqsZ1L0lShcGiQKL90w/FHPyMjaVwrrAmz2TZtRcVsVISs4Ybq
 QV7oHm/eiCh9Qc+QbdJXgCWm8Ep9x7coQ+8l1PY5jrC+bkMiQwn8DVg6FBQ5SgOh/2Ka
 g3i9WQcQ1xCcsADKeVMYS6XzDKWQZSzREvxXCVObg0SDPGl5VKt4aDk+P6zzkG4BaPC5
 VGoouuk39xG5rOKvzzKvuZoc/6oEfw37cMs2tf/CbdrZ8zPos+TeTB0DuBl/StrfUVjk
 JH6Q==
X-Gm-Message-State: APjAAAVU0soUz2tP9xvPL4FzSnoW6DdmWwR5cuv7K5gurvChv/E4DK33
 P6DzCLY9MPqleiEoavipKr8fhtcDF797hvG2Gf0=
X-Google-Smtp-Source: APXvYqxcOoHIRtsHthZftaDKglyhHvTuHZ0J9YKwLNzs2FJ0jD4gd81vT2/LvKPBGRFwoW0MLhVFoqhi60+oqVtEt0M=
X-Received: by 2002:a67:ecce:: with SMTP id i14mr14593962vsp.162.1566249783901; 
 Mon, 19 Aug 2019 14:23:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAP-MU4MAwQd5bOGpJ=tu4iVB4j4FO6UWbkXg6ox34i7pb5DjQA@mail.gmail.com>
 <9B4A1B1917080E46B64F07F2989DADD69AFFB063@ORSMSX115.amr.corp.intel.com>
 <CAP-MU4PKYRP0SpxDC7SgRGCjWAyyu0vHh5W5YAsjf=JseRkAqg@mail.gmail.com>
 <9B4A1B1917080E46B64F07F2989DADD69AFFBD76@ORSMSX115.amr.corp.intel.com>
In-Reply-To: <9B4A1B1917080E46B64F07F2989DADD69AFFBD76@ORSMSX115.amr.corp.intel.com>
From: Shannon Nelson <shannon.lee.nelson@gmail.com>
Date: Mon, 19 Aug 2019 14:22:52 -0700
Message-ID: <CAP-MU4OSMbB7sbYtN3Cr5S5fTZG1DzQW3c_gUXETw23iOPr6fw@mail.gmail.com>
To: "Fujinaka, Todd" <todd.fujinaka@intel.com>
Subject: Re: [Intel-wired-lan] x
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thanks, Todd, I'll let my internal folks know.
Cheers,
sln

On Sun, Aug 18, 2019 at 1:36 PM Fujinaka, Todd <todd.fujinaka@intel.com> wrote:
>
> The problem should be fixed with an NVM update but I'm unsure if your NVM already has the fix. Let me make sure with the Product AE.
>
> However, you're going to have to go directly to Cisco for the NVM updates since the cards look like they're from Cisco.
>
> Todd Fujinaka
> Software Application Engineer
> Datacenter Engineering Group
> Intel Corporation
> todd.fujinaka@intel.com
>
>
> -----Original Message-----
> From: Shannon Nelson [mailto:shannon.lee.nelson@gmail.com]
> Sent: Thursday, August 15, 2019 7:19 PM
> To: Fujinaka, Todd <todd.fujinaka@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] x
>
> On Thu, Aug 15, 2019 at 6:46 PM Fujinaka, Todd <todd.fujinaka@intel.com> wrote:
> >
> > x722? x550? Or is it a different part?
> >
> > I've seen something like this lately, but I'll need to know which Ethernet controller it is before I can narrow it down.
>
> Sorry about that short Subject text and lack of info... someone was passing this info to me in the midst of two or three other things going on and I hit <send> before I finished the text.
>
> Since that's ixgbe printing the complaints, I'm pretty sure it isn't anything x722-ish.  I don't have access to the actual machine, but it is the same as this one:
>
> 65:00.0 Ethernet controller: Intel Corporation Ethernet Controller 10G X550T (rev 01)
> Subsystem: Cisco Systems Inc Device 01a3
> Capabilities: [e0] Vital Product Data
> Product Name: Cisco  X550-TX 10 Gig
> Read-only fields:
> [PN] Part number: X550-TX
> [V0] Vendor specific: MAP 1.86 V0.02 PHY 2.B.B MAC 3.15 [MN] Manufacture ID: 11 37 [RV] Reserved: checksum good, 0 byte(s) reserved
>
> # ethtool -i eno1
> driver: ixgbe
> version: 5.1.0-k
> firmware-version: 0x80000af9, 0.385.33
>
> We have a bunch of these machines, and I'm told we're seeing this off and on in several of them.
>
> sln
>
>
> >
> > Todd Fujinaka
> > Software Application Engineer
> > Datacenter Engineering Group
> > Intel Corporation
> > todd.fujinaka@intel.com
> >
> > -----Original Message-----
> > From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> > Behalf Of Shannon Nelson
> > Sent: Thursday, August 15, 2019 2:35 PM
> > To: intel-wired-lan@lists.osuosl.org
> > Subject: [Intel-wired-lan] x
> >
> > We've been occasionally seeing some of these messages recently on some of our machines after reboots.  Usually a powercycle clears it up.
> > Any hints as to what might be going on?
> >
> > [    2.570012] ixgbe: Intel(R) 10 Gigabit PCI Express Network Driver -
> > version 5.1.0-k-rh7.5
> > [    2.570016] ixgbe: Copyright (c) 1999-2016 Intel Corporation.
> > [    4.883541] ixgbe 0000:65:00.0 (unregistered net_device): eeprom
> > read at offset 40 failed
> > [    7.112885] ixgbe 0000:65:00.0 (unregistered net_device): eeprom
> > read at offset 39 failed
> > [   11.571710] ixgbe 0000:65:00.0: The EEPROM Checksum Is Not Valid
> > [   11.571916] ixgbe: probe of 0000:65:00.0 failed with error -5
> > [   13.922688] ixgbe 0000:65:00.1 (unregistered net_device): eeprom
> > read at offset 40 failed
> > [   16.152080] ixgbe 0000:65:00.1 (unregistered net_device): eeprom
> > read at offset 39 failed
> > [   20.617460] ixgbe 0000:65:00.1: The EEPROM Checksum Is Not Valid
> > [   20.617639] ixgbe: probe of 0000:65:00.1 failed with error -5
> >
> >
> > Thanks,
> > sln
> >
> >
> > --
> > ==============================================
> > Mr. Shannon Nelson         Parents can't afford to be squeamish.
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
>
>
>
> --
> ==============================================
> Mr. Shannon Nelson         Parents can't afford to be squeamish.



-- 
==============================================
Mr. Shannon Nelson         Parents can't afford to be squeamish.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
