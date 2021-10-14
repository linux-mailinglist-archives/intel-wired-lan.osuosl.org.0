Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FEB842D8E5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Oct 2021 14:09:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4AFA582F50;
	Thu, 14 Oct 2021 12:09:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ljyEeUvaeVyv; Thu, 14 Oct 2021 12:09:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E50B982F03;
	Thu, 14 Oct 2021 12:09:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 082241BF3C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Oct 2021 12:09:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0276A60EAE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Oct 2021 12:09:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AMxSMCn36BbS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Oct 2021 12:09:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
 [209.85.167.171])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1C94A60EAC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Oct 2021 12:09:52 +0000 (UTC)
Received: by mail-oi1-f171.google.com with SMTP id t4so8158978oie.5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Oct 2021 05:09:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3z60rehR7ZVtst9ELJ9rSkUSBJLTKGRibeWcRwMSZgk=;
 b=7lXNNZNNYtGYHVwmO2+WemStTxX0j4xElFdrkzwWQvWvnzEIvQ4yMEjJnsTZ/ce6JB
 JRir8AQoz546XfytERoM13kVbuetk+XqHmOF9xJqTbkuoze2zb7g0HMk6HbOJReo05Is
 pzPo8iEFcX3YzFyUkVD8x+UpwnE8nTBSXOxz8GEdEsGFYC1m78vntA5tFCuiy9uvjK3c
 31Sc4+UtUEHFit9FB+HazxR8zoA0E53hznmdkR9yTuS/oACUsVsCuVMNbJcw5x3waHwc
 Gp5XULMqsrC9F0frjR3RBgRHEUUnKPqY0fsFtuqDikY5i3oYv3Mjsm2JpXODIbfDm//7
 nfmw==
X-Gm-Message-State: AOAM532FUFcR5L6enl1m7coJc0zGzsoriiLIrnifH0AJ5tkHKZ8SGjcj
 evQHFTwHW8staLLa2hJ0M+ZLAcWLQ6ad+OJ43PM=
X-Google-Smtp-Source: ABdhPJxGAKTqMZdcGrmTBxMlNXrs3khgKNdNraJU8W3NnLPs+6KomixExRjU+vkSjfTKzdLZsQ1cbMQoQpDPjctKKZ8=
X-Received: by 2002:aca:b5c3:: with SMTP id e186mr12931946oif.51.1634213391218; 
 Thu, 14 Oct 2021 05:09:51 -0700 (PDT)
MIME-Version: 1.0
References: <1823864.tdWV9SEqCh@kailua>
 <6faf4b92-78d5-47a4-63df-cc2bab7769d0@molgen.mpg.de>
 <CAJZ5v0gf0y6qDHUJOsvLFctqn8tgKeuTYn5S9rb6+T0Sj26aKw@mail.gmail.com>
 <9965462.DAOxP5AVGn@pinacolada>
In-Reply-To: <9965462.DAOxP5AVGn@pinacolada>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 14 Oct 2021 14:09:39 +0200
Message-ID: <CAJZ5v0icUwksYVjKW0H5G0DNpfVHSyfm4oC782+Fsy56mQ330A@mail.gmail.com>
To: "Andreas K. Huettel" <andreas.huettel@ur.de>
Content-Type: multipart/mixed; boundary="000000000000abd39305ce4ef4db"
Subject: Re: [Intel-wired-lan] [EXT] Re: Intel I350 regression 5.10 -> 5.14
 ("The NVM Checksum Is Not Valid") [8086:1521]
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
 "Rafael J. Wysocki" <rafael@kernel.org>, Jakub Kicinski <kubakici@wp.pl>,
 netdev <netdev@vger.kernel.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org, Len Brown <lenb@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--000000000000abd39305ce4ef4db
Content-Type: text/plain; charset="UTF-8"

On Tue, Oct 12, 2021 at 9:36 PM Andreas K. Huettel
<andreas.huettel@ur.de> wrote:
>
> Am Dienstag, 12. Oktober 2021, 19:58:47 CEST schrieb Rafael J. Wysocki:
> > On Tue, Oct 12, 2021 at 7:42 PM Paul Menzel <pmenzel@molgen.mpg.de> wrote:
> > >
> > > [Cc: +ACPI maintainers]
> > >
> > > Am 12.10.21 um 18:34 schrieb Andreas K. Huettel:
> > > >>> The messages easily identifiable are:
> > > >>>
> > > >>> huettel@pinacolada ~/tmp $ cat kernel-messages-5.10.59.txt |grep igb
> > > >>> Oct  5 15:11:18 dilfridge kernel: [    2.090675] igb: Intel(R) Gigabit Ethernet Network Driver
> > > >>> Oct  5 15:11:18 dilfridge kernel: [    2.090676] igb: Copyright (c) 2007-2014 Intel Corporation.
> > > >>> Oct  5 15:11:18 dilfridge kernel: [    2.090728] igb 0000:01:00.0: enabling device (0000 -> 0002)
> > > >>
> > > >> This line is missing below, it indicates that the kernel couldn't or
> > > >> didn't power up the PCIe for some reason. We're looking for something
> > > >> like ACPI or PCI patches (possibly PCI-Power management) to be the
> > > >> culprit here.
> > > >
> > > > So I did a git bisect from linux-v5.10 (good) to linux-v5.14.11 (bad).
> > > >
> > > > The result was:
> > > >
> > > > dilfridge /usr/src/linux-git # git bisect bad
> > > > 6381195ad7d06ef979528c7452f3ff93659f86b1 is the first bad commit
> > > > commit 6381195ad7d06ef979528c7452f3ff93659f86b1
> > > > Author: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > > > Date:   Mon May 24 17:26:16 2021 +0200
> > > >
> > > >      ACPI: power: Rework turning off unused power resources
> > > > [...]
> > > >
> > > > I tried naive reverting of this commit on top of 5.14.11. That applies nearly cleanly,
> > > > and after a reboot the additional ethernet interfaces show up with their MAC in the
> > > > boot messages.
> > > >
> > > > (Not knowing how safe that experiment was, I did not go further than single mode and
> > > > immediately rebooted into 5.10 afterwards.)
> >
> > Reverting this is rather not an option, because the code before it was
> > a one-off fix of an earlier issue, but it should be fixable given some
> > more information.
> >
> > Basically, I need a boot log from both the good and bad cases and the
> > acpidump output from the affected machine.
> >
>
> https://dev.gentoo.org/~dilfridge/igb/
>
> ^ Should all be here now.
>
> 5.10 -> "good" log (the errors are caused by missing support for my i915 graphics and hopefully unrelated)
> 5.14 -> "bad" log
>
> Thank you for looking at this. If you need anything else, just ask.

You're welcome.

Please test the attached patch and let me know if it helps.

--000000000000abd39305ce4ef4db
Content-Type: text/x-patch; charset="US-ASCII"; name="acpi-power-turn-off-fixup.patch"
Content-Disposition: attachment; filename="acpi-power-turn-off-fixup.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_kuqwejst0>
X-Attachment-Id: f_kuqwejst0

LS0tCiBkcml2ZXJzL2FjcGkvcG93ZXIuYyB8ICAgIDcgKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCA2IGRlbGV0aW9ucygtKQoKSW5kZXg6IGxpbnV4LXBtL2RyaXZlcnMv
YWNwaS9wb3dlci5jCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT0KLS0tIGxpbnV4LXBtLm9yaWcvZHJpdmVycy9hY3BpL3Bv
d2VyLmMKKysrIGxpbnV4LXBtL2RyaXZlcnMvYWNwaS9wb3dlci5jCkBAIC0xMDM1LDEzICsxMDM1
LDggQEAgdm9pZCBhY3BpX3R1cm5fb2ZmX3VudXNlZF9wb3dlcl9yZXNvdXJjZQogCWxpc3RfZm9y
X2VhY2hfZW50cnlfcmV2ZXJzZShyZXNvdXJjZSwgJmFjcGlfcG93ZXJfcmVzb3VyY2VfbGlzdCwg
bGlzdF9ub2RlKSB7CiAJCW11dGV4X2xvY2soJnJlc291cmNlLT5yZXNvdXJjZV9sb2NrKTsKIAot
CQkvKgotCQkgKiBUdXJuIG9mZiBwb3dlciByZXNvdXJjZXMgaW4gYW4gdW5rbm93biBzdGF0ZSB0
b28sIGJlY2F1c2UgdGhlCi0JCSAqIHBsYXRmb3JtIGZpcm13YXJlIG9uIHNvbWUgc3lzdGVtIGV4
cGVjdHMgdGhlIE9TIHRvIHR1cm4gb2ZmCi0JCSAqIHBvd2VyIHJlc291cmNlcyB3aXRob3V0IGFu
eSB1c2VycyB1bmNvbmRpdGlvbmFsbHkuCi0JCSAqLwogCQlpZiAoIXJlc291cmNlLT5yZWZfY291
bnQgJiYKLQkJICAgIHJlc291cmNlLT5zdGF0ZSAhPSBBQ1BJX1BPV0VSX1JFU09VUkNFX1NUQVRF
X09GRikgeworCQkgICAgcmVzb3VyY2UtPnN0YXRlID09IEFDUElfUE9XRVJfUkVTT1VSQ0VfU1RB
VEVfT04pIHsKIAkJCWFjcGlfaGFuZGxlX2RlYnVnKHJlc291cmNlLT5kZXZpY2UuaGFuZGxlLCAi
VHVybmluZyBPRkZcbiIpOwogCQkJX19hY3BpX3Bvd2VyX29mZihyZXNvdXJjZSk7CiAJCX0K
--000000000000abd39305ce4ef4db
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--000000000000abd39305ce4ef4db--
