Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C6EC7442607
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Nov 2021 04:28:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 398714020C;
	Tue,  2 Nov 2021 03:28:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9VD3d99JwjOa; Tue,  2 Nov 2021 03:28:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CDDB040204;
	Tue,  2 Nov 2021 03:28:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7D98D1BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 03:28:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6B77180CB0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 03:28:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=canonical.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ktnsn16I9B5B for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Nov 2021 03:28:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8949280C29
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 03:28:17 +0000 (UTC)
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com
 [209.85.161.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 793543F1A9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 03:28:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1635823694;
 bh=svkrf9ThmGXqx3loLNGudDhbzyCRrGw2gRzWF5i8jOE=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=SjBVwlupuL4Z3Dd9BkNHzmoLkzv6dsftm0vATlA1KHHrAAkZ9SD7g8w7iLUP2He4l
 PkxQb8TcpoeQoRJCq7wLChn1ZC6EOhhgl4+7Ji5vuNB/JRDUeguCM/KkU2uyABm8pb
 NJAuNEOGOBsyWKUDf7Zit2sTzQy0YKeCNHaJOWQPfDcGvhBpF/YoQVFXlV1BA/u4PR
 6Ni6mOdshlmbfd1NpmoaNlL6At0YzKqv8CuITbQwp9dX+23Ae6qXsbYJUpzLTPOXEQ
 gJJ7JtTOVkB7nUPCttq7ZKAusu18354OgsSvQPglDSB/Xsj5rnmhrKjIIHlmB0wlOo
 SBJP4dXoBqlqg==
Received: by mail-oo1-f71.google.com with SMTP id
 w19-20020a4aded3000000b002bb9d980127so5362044oou.21
 for <intel-wired-lan@lists.osuosl.org>; Mon, 01 Nov 2021 20:28:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=svkrf9ThmGXqx3loLNGudDhbzyCRrGw2gRzWF5i8jOE=;
 b=At1sr6mxG381vupzMpEfywkvS3zszJiDFf0fSxfTw0BPvD5ApoWEI7cctuMoANlSdc
 UAqhZinMiNknPIpMkWzKXB0ktAFlVss59CT1WfyVBCcMtiT36ipmGmqz40gbhU6gqTT0
 zRr4jIySCJNBKzXmnC++l9NjMrl8Z04lOzHialzl0SLa6Y5se3341VtWlr3nXzX1AeD0
 eMWzC/r4oiVjCXdTjXlF/AJWwcqJ9aaG4r+mmRPPF4+u4Rz7H+dZafFQ0kiWPJ2eUatS
 y+IJcUD57RdKRVMWt0vIZW62Zvem18ebu4VjTpwfQUSbbo9BoUgQaE5eu8YKD7MMDyDI
 N1dQ==
X-Gm-Message-State: AOAM532EsysuBOO2PqFpka9CG2GkgFRMpA8n/+3Qxtfob0ce7mtVMyxm
 aRChIO1zTVFyVwmZwh6ycQZ/RGOdNjcBAWD+BF9uZxAI13H/a9KtQ917GrY/bBzZOqY+1x1Ueft
 RL4+PnwrPwCVaBLgevafK8RNmB0FMqxuFRX13NRu2QJyxK2j+HB6BIBhpOe8FY78=
X-Received: by 2002:aca:41d5:: with SMTP id o204mr2729116oia.41.1635823693347; 
 Mon, 01 Nov 2021 20:28:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJziLF2fKQbGozE05zq1iPKDXPYLKD4cK+KvuN0uo9RPXL2qhYcbKB2btA8w6xWHmTnAqnkEI7GX5LOYpirAq4I=
X-Received: by 2002:aca:41d5:: with SMTP id o204mr2729083oia.41.1635823693070; 
 Mon, 01 Nov 2021 20:28:13 -0700 (PDT)
MIME-Version: 1.0
References: <20211026065112.1366205-1-kai.heng.feng@canonical.com>
 <04ed8307-ab1f-59d6-4454-c759ce4a453b@intel.com>
 <CAAd53p69k-2PVw5RpJOAbe=oBh11U_UqzsyMjxHFbo7xqNBDsQ@mail.gmail.com>
 <f6a4d53a-3ec8-b5cd-9b6c-b14c69d20248@intel.com>
In-Reply-To: <f6a4d53a-3ec8-b5cd-9b6c-b14c69d20248@intel.com>
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Tue, 2 Nov 2021 11:27:59 +0800
Message-ID: <CAAd53p67dehgizx1h0ro40YRmKNsbv3Ve=2987kyMUKs7=LOpA@mail.gmail.com>
To: Sasha Neftin <sasha.neftin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v2] e1000e: Add a delay to let ME
 unconfigure s0ix when DPG_EXIT_DONE is already flagged
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
Cc: "Fuxbrumer, Devora" <devora.fuxbrumer@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux Netdev List <netdev@vger.kernel.org>,
 AceLan Kao <acelan.kao@canonical.com>, Jakub Kicinski <kuba@kernel.org>,
 Dima Ruinskiy <dima.ruinskiy@intel.com>, "Avivi, Amir" <amir.avivi@intel.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Oct 29, 2021 at 5:14 PM Sasha Neftin <sasha.neftin@intel.com> wrote:
>
> On 10/27/2021 01:50, Kai-Heng Feng wrote:
> > On Tue, Oct 26, 2021 at 4:48 PM Sasha Neftin <sasha.neftin@intel.com> wrote:
> >>
> >> On 10/26/2021 09:51, Kai-Heng Feng wrote:
> >>> On some ADL platforms, DPG_EXIT_DONE is always flagged so e1000e resume
> >>> polling logic doesn't wait until ME really unconfigures s0ix.
> >>>
> >>> So check DPG_EXIT_DONE before issuing EXIT_DPG, and if it's already
> >>> flagged, wait for 1 second to let ME unconfigure s0ix.
> >>>
> >>> Fixes: 3e55d231716e ("e1000e: Add handshake with the CSME to support S0ix")
> >>> Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=214821
> >>> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> >>> ---
> >>> v2:
> >>>    Add missing "Fixes:" tag
> >>>
> >>>    drivers/net/ethernet/intel/e1000e/netdev.c | 7 +++++++
> >>>    1 file changed, 7 insertions(+)
> >>>
> >>> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> >>> index 44e2dc8328a22..cd81ba00a6bc9 100644
> >>> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> >>> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> >>> @@ -6493,14 +6493,21 @@ static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
> >>>        u32 mac_data;
> >>>        u16 phy_data;
> >>>        u32 i = 0;
> >>> +     bool dpg_exit_done;
> >>>
> >>>        if (er32(FWSM) & E1000_ICH_FWSM_FW_VALID) {
> >>> +             dpg_exit_done = er32(EXFWSM) & E1000_EXFWSM_DPG_EXIT_DONE;
> >>>                /* Request ME unconfigure the device from S0ix */
> >>>                mac_data = er32(H2ME);
> >>>                mac_data &= ~E1000_H2ME_START_DPG;
> >>>                mac_data |= E1000_H2ME_EXIT_DPG;
> >>>                ew32(H2ME, mac_data);
> >>>
> >>> +             if (dpg_exit_done) {
> >>> +                     e_warn("DPG_EXIT_DONE is already flagged. This is a firmware bug\n");
> >>> +                     msleep(1000);
> >>> +             }
> >> Thanks for working on the enablement.
> >> The delay approach is fragile. We need to work with CSME folks to
> >> understand why _DPG_EXIT_DONE indication is wrong on some ADL platforms.
> >> Could you provide CSME/BIOS version? dmidecode -t 0 and cat
> >> /sys/class/mei/mei0/fw_ver
> >
> > $ sudo dmidecode -t 0
> > # dmidecode 3.2
> > Getting SMBIOS data from sysfs.
> > SMBIOS 3.4 present.
> > # SMBIOS implementations newer than version 3.2.0 are not
> > # fully supported by this version of dmidecode.
> >
> > Handle 0x0001, DMI type 0, 26 bytes
> > BIOS Information
> >          Vendor: Dell Inc.
> >          Version: 0.12.68
> >          Release Date: 10/01/2021
> >          ROM Size: 48 MB
> >          Characteristics:
> >                  PCI is supported
> >                  PNP is supported
> >                  BIOS is upgradeable
> >                  BIOS shadowing is allowed
> >                  Boot from CD is supported
> >                  Selectable boot is supported
> >                  EDD is supported
> >                  Print screen service is supported (int 5h)
> >                  8042 keyboard services are supported (int 9h)
> >                  Serial services are supported (int 14h)
> >                  Printer services are supported (int 17h)
> >                  ACPI is supported
> >                  USB legacy is supported
> >                  BIOS boot specification is supported
> >                  Function key-initiated network boot is supported
> >                  Targeted content distribution is supported
> >                  UEFI is supported
> >          BIOS Revision: 0.12
> >
> > $ cat /sys/class/mei/mei0/fw_ver
> > 0:16.0.15.1518
> > 0:16.0.15.1518
> > 0:16.0.15.1518
> >
> Thank you Kai-Heng. The _DPG_EXIT_DONE bit indication comes from the
> EXFWSM register controlled by the CSME. We have only read access.  I
> realized that this indication was set to 1 even before our request to
> unconfigure the s0ix settings from the CSME. I am wondering. Does after
> a ~ 1s delay (or less, or more) _DPG_EXIT_DONE indication eventually
> change by CSME to 0? (is it consistently)

Never. It's consistently being 1.

Right now we are seeing the same issue on TGL, so I wonder if it's
better to just revert the CSME series?

Kai-Heng

> >>>                /* Poll up to 2.5 seconds for ME to unconfigure DPG.
> >>>                 * If this takes more than 1 second, show a warning indicating a
> >>>                 * firmware bug
> >>>
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
