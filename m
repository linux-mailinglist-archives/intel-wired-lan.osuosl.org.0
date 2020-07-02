Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C3FC2212DC9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jul 2020 22:20:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A948F204F1;
	Thu,  2 Jul 2020 20:20:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XxB1CgzOWhzF; Thu,  2 Jul 2020 20:20:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 93387204FC;
	Thu,  2 Jul 2020 20:20:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0A7901BF397
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 20:20:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 05E1688CE7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 20:20:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lBgwnILVWwNV for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2020 20:20:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5DA9488CE2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 20:20:30 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id c139so26865385qkg.12
 for <intel-wired-lan@lists.osuosl.org>; Thu, 02 Jul 2020 13:20:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Dg7b2Gpb1xwhbPPAs3f/5zlrWsmCaI8VPFPJDIO7oCs=;
 b=LpHBpy/61tYHcbDhOlQTjymqaKpK8J7rjMk4O+FxTS5NK5wsajUBEDiNHJEIxDNrmb
 A/vjKlla5gFM9d87viW/fHklmhK1tz+CtGJjuLrOgKm1ZEF2DF0uohGaSUa3Od6uFgwF
 IwHbe9Uqjfw7uPuVBoh6o2uO3A9wCt0Y8mEwBxwU9GfTM8E8u1sUqDN/34Q6gUmbE6EE
 ziMKMEkt0n4svSAzY7929lErAeLqCQMYa4VIMUTzg5NGv46LiX8uJXvBZ8rB8C3++1H4
 P9iDLw5QIGqyZfad3TJGYKL8vyWL6exkLjaf4NXLoRBjSGaOQyIA7Z8ANbrxEJFmW8s1
 EKsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Dg7b2Gpb1xwhbPPAs3f/5zlrWsmCaI8VPFPJDIO7oCs=;
 b=Mw/7NZI7c8y54+vx8EthhFi0FThhSUeLK8hRRaMqcsrDTyerqeK9t6ml6GHh5q6Nvw
 nLct1VTRub8lMAuFLwoFy+mcAkfGesEUIpCO/Lu1ySnrPPedRuvOa+kZgRFAaO3h4D/f
 Thkt3KxybJieWe1rbHdoUChQercRHYnpq84KAvkk01Y8PLiW818lKkq2Xo4Njoj7WAPI
 5U3Ijwl2bXtMKku0CAyCKw7Mwo9HjMe6y17juK68LA80ALZxSY/OYJ42ehBxso9l+umT
 hJp0pUQZSMJCmx5kH8z9K0b0OST9QmA/Rg5d3Y2UdSVCSwPC4etOY63cAxzcML/PsmmG
 zN8g==
X-Gm-Message-State: AOAM5300mEdBKkurc0DFoPz0a1NmKU7sq5T7KpcuHsrRTXFPvlgAFe3O
 rw/kEs3MXC0EiFsJqyJDyQOxHj8K62n6aK/z71U5pQ==
X-Google-Smtp-Source: ABdhPJzESDQ4tCGpwJuT9gwjDr5sMmtLBgj+5Xday1tr8AbXF/DNxfrO2eOsGxU2iUNCm4NFuhVI4oXEJD/1BRXoKqY=
X-Received: by 2002:a37:a5cc:: with SMTP id
 o195mr32699648qke.326.1593721229404; 
 Thu, 02 Jul 2020 13:20:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200629211801.C3D7095C0900@us180.sjc.aristanetworks.com>
 <20200629171612.49efbdaa@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CA+HUmGjHQPUh1frfy5E28Om9WTVr0W+UQVDsm99beC_mbTeMog@mail.gmail.com>
 <61CC2BC414934749BD9F5BF3D5D940449874358A@ORSMSX112.amr.corp.intel.com>
 <CA+HUmGhfxYY5QiwF8_UYbp0TY-k3u+cTYZDSqV1s=SUFnGCn8g@mail.gmail.com>
 <61CC2BC414934749BD9F5BF3D5D9404498748B57@ORSMSX112.amr.corp.intel.com>
In-Reply-To: <61CC2BC414934749BD9F5BF3D5D9404498748B57@ORSMSX112.amr.corp.intel.com>
From: Francesco Ruggeri <fruggeri@arista.com>
Date: Thu, 2 Jul 2020 13:20:18 -0700
Message-ID: <CA+HUmGi6D8Ci5fk7vyengJN4qOEH6zz18Kw6B9Us-Kav-78oAg@mail.gmail.com>
To: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH] igb: reinit_locked() should be called
 with rtnl_lock
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
Cc: netdev <netdev@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>
> So will you be sending a v2 of your patch to include the second fix?

Yes, I am working on it. Just to confirm, v2 should include both fixes, right?

Thanks,
Francesco
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
