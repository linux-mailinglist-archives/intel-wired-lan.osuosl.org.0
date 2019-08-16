Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FEA8F8CD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Aug 2019 04:19:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3519687909;
	Fri, 16 Aug 2019 02:19:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PaUjiR+xZ5M8; Fri, 16 Aug 2019 02:19:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1B62C878BD;
	Fri, 16 Aug 2019 02:19:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F13791BF2BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2019 02:19:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E994B86168
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2019 02:19:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jHkCUGrsiynU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Aug 2019 02:19:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com
 [209.85.217.41])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 190DB8615E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2019 02:19:28 +0000 (UTC)
Received: by mail-vs1-f41.google.com with SMTP id j25so2749267vsq.12
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 19:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n2tbkt4FQXcOXpxOkclgPWerXzSRTmzTHxBGJFCZorg=;
 b=N1iWJTiI9q/eFnUgM/+eDAwK2CuSPmj9KjltP/R+VbjJje8/jqn3TrINfjp7i15H+j
 Q/gPNmVU87wNhUsebYhGfA1XA+DwHX1Du5cV2EW7gers/9SwvOFeTaAqCOt//yLPyyfM
 d4O0FwCLh7GnTaFX6RIaAwAXXbkdHhoE/+fCtJl3mx7kMAOqcjsVbf1uzEaVKxMGERVA
 t8fHg5KA2x26rjHm2L1gRzuZaFWUccdTzInsWATPKf7W704GWCHG4t0I30tKZleqYEBM
 ACmD7kSWXBZHlvNu8acGMEW/3jGIg8CGykIfA4lQ5NCMGOy8EW8hmBa6jj9I+hEypFap
 /+Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n2tbkt4FQXcOXpxOkclgPWerXzSRTmzTHxBGJFCZorg=;
 b=nZKoA3+Ooe4P2gXA2AGwazH+jhEpa9OOaSQ27XhTk8q1JpL9ODjad1FJjDVhuwMM3I
 Kyqk2nirrP/0E2qEdkGKcykfmqf7zrZC8M+AKIpNTc6vVenDJ6MdafMqG2mlBL5nAhoC
 J57pdwnHay3KXBGk6wRURGiG5+iAnBivnU0dLgZiocSMmbUBPMqtKaaOmV4ZVAxKkqlg
 BJ5LuMHCgx2q/1Gj1fSlfNHdmw5jPd+DrhIqbt3zP4W3Fkj+yqRwVyYWOS9rlRaQ3OJf
 fwG3Ssvz92ldMZPdoznPFsy1Xn1vNmwNqXPbpdCaF68StQBSkkTxuaE8gO3C+SFacAET
 G36w==
X-Gm-Message-State: APjAAAWleKFGvCb25mmXjKXKMW581jTjaSoqMPUdMVsMgkusY796qm1Y
 Nz+OFdp+GXEtrysAPkCT11rl0unAT0Hc4A4Da5Uavmnv
X-Google-Smtp-Source: APXvYqx+VgLPVSJ2ICDUFtwjjPBbf40ulI8V5xe37gKsY6jbZZ4aLOal41bBdBIEfYBDdyMLTGs6IY2y4d6SQjTdgNA=
X-Received: by 2002:a67:f606:: with SMTP id k6mr5131464vso.114.1565921967054; 
 Thu, 15 Aug 2019 19:19:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAP-MU4MAwQd5bOGpJ=tu4iVB4j4FO6UWbkXg6ox34i7pb5DjQA@mail.gmail.com>
 <9B4A1B1917080E46B64F07F2989DADD69AFFB063@ORSMSX115.amr.corp.intel.com>
In-Reply-To: <9B4A1B1917080E46B64F07F2989DADD69AFFB063@ORSMSX115.amr.corp.intel.com>
From: Shannon Nelson <shannon.lee.nelson@gmail.com>
Date: Thu, 15 Aug 2019 19:19:16 -0700
Message-ID: <CAP-MU4PKYRP0SpxDC7SgRGCjWAyyu0vHh5W5YAsjf=JseRkAqg@mail.gmail.com>
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

On Thu, Aug 15, 2019 at 6:46 PM Fujinaka, Todd <todd.fujinaka@intel.com> wrote:
>
> x722? x550? Or is it a different part?
>
> I've seen something like this lately, but I'll need to know which Ethernet controller it is before I can narrow it down.

Sorry about that short Subject text and lack of info... someone was
passing this info to me in the midst of two or three other things
going on and I hit <send> before I finished the text.

Since that's ixgbe printing the complaints, I'm pretty sure it isn't
anything x722-ish.  I don't have access to the actual machine, but it
is the same as this one:

65:00.0 Ethernet controller: Intel Corporation Ethernet Controller 10G
X550T (rev 01)
Subsystem: Cisco Systems Inc Device 01a3
Capabilities: [e0] Vital Product Data
Product Name: Cisco  X550-TX 10 Gig
Read-only fields:
[PN] Part number: X550-TX
[V0] Vendor specific: MAP 1.86 V0.02 PHY 2.B.B MAC 3.15
[MN] Manufacture ID: 11 37
[RV] Reserved: checksum good, 0 byte(s) reserved

# ethtool -i eno1
driver: ixgbe
version: 5.1.0-k
firmware-version: 0x80000af9, 0.385.33

We have a bunch of these machines, and I'm told we're seeing this off
and on in several of them.

sln


>
> Todd Fujinaka
> Software Application Engineer
> Datacenter Engineering Group
> Intel Corporation
> todd.fujinaka@intel.com
>
> -----Original Message-----
> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On Behalf Of Shannon Nelson
> Sent: Thursday, August 15, 2019 2:35 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] x
>
> We've been occasionally seeing some of these messages recently on some of our machines after reboots.  Usually a powercycle clears it up.
> Any hints as to what might be going on?
>
> [    2.570012] ixgbe: Intel(R) 10 Gigabit PCI Express Network Driver -
> version 5.1.0-k-rh7.5
> [    2.570016] ixgbe: Copyright (c) 1999-2016 Intel Corporation.
> [    4.883541] ixgbe 0000:65:00.0 (unregistered net_device): eeprom
> read at offset 40 failed
> [    7.112885] ixgbe 0000:65:00.0 (unregistered net_device): eeprom
> read at offset 39 failed
> [   11.571710] ixgbe 0000:65:00.0: The EEPROM Checksum Is Not Valid
> [   11.571916] ixgbe: probe of 0000:65:00.0 failed with error -5
> [   13.922688] ixgbe 0000:65:00.1 (unregistered net_device): eeprom
> read at offset 40 failed
> [   16.152080] ixgbe 0000:65:00.1 (unregistered net_device): eeprom
> read at offset 39 failed
> [   20.617460] ixgbe 0000:65:00.1: The EEPROM Checksum Is Not Valid
> [   20.617639] ixgbe: probe of 0000:65:00.1 failed with error -5
>
>
> Thanks,
> sln
>
>
> --
> ==============================================
> Mr. Shannon Nelson         Parents can't afford to be squeamish.
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan



-- 
==============================================
Mr. Shannon Nelson         Parents can't afford to be squeamish.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
