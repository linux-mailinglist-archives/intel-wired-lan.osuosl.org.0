Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDFC409E4F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Sep 2021 22:44:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6823680E5A;
	Mon, 13 Sep 2021 20:44:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 28Ccsfy7Wi54; Mon, 13 Sep 2021 20:44:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6921880E57;
	Mon, 13 Sep 2021 20:44:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3C18F1BF322
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Sep 2021 20:44:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3608240195
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Sep 2021 20:44:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G_m921xiJvUH for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Sep 2021 20:44:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 46C1540135
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Sep 2021 20:44:35 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id b6so16622217wrh.10
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Sep 2021 13:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:references:cc:from:subject:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=uJ9c1gaOud7sGqjyc47QBp3YqMF6hd2J1/zaJtx/Ook=;
 b=XraguzSr9PUzOKTgdLzhNj8bzEBq9hUewu56ASfelTOo9DNQsc1nWwYOs5NYIewkvP
 PsAoxqVGfjQpWITjgfKcYI8AgwIsoX1j3ukVolOlSXtPJw8HmkNajioHlXq75HZZWK1j
 b2GHBQTn+9ZefbYmulECych9NQtmrdkVw5JzaAkjEyq5W7zf1s8rSI8owf7vbg5oygiz
 bOHWVZSW0o+GHrhSONWKMAEWx8+TZk0MwNCJCENFCanFANMGs7RyvaYzh3nGqOPvkRZ/
 IEK9kiADTzdXfekuzq6i1LgIWyDeLUmRlNa9N6/qrxIJt4jS1J1SNU/H4ekmsgFjmUm7
 usIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:to:references:cc:from:subject:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uJ9c1gaOud7sGqjyc47QBp3YqMF6hd2J1/zaJtx/Ook=;
 b=egEwv14eriScjf3x1Z3ZtG1hj+b8dl3NsfrgRFF34KdWK7jm0rlOcv3GRHE8BSIKU2
 cQ/qd2sm0kBxR3zKsH5JDhagYu/PShIpZRUAFJxaQRfqQYSue2Vq/eT8ELB9O1oqTgN+
 FKmUZzMFg+nv7KU9JOaV6v2cpFD5FzRovBibTnByziLmpLScRiopib6uK9+MLccbnZXY
 yVFXOki87JgrAJyR1wBFRG81IYBVDbfo0tOWORcmVbE8W7TyN5/1cnW+hMnRM4sLwc1V
 seiDNrjjTDucFaj7m8ohRnMfCWVd3X8w4tjDvZ4E2C1DqxIiO64QP1sWu4qTZmkAtD0U
 RH+Q==
X-Gm-Message-State: AOAM53070oNRZ/d8cwihfDsdod3uJ8WwyMzir79D8BVzLVerooz74fj9
 LDwTvYx/wcLRpDITJfEga0wXiFigE2w=
X-Google-Smtp-Source: ABdhPJwwTDWKWy2rTddonQ03xI/9YwGXWx2yyaKiUz0pNEzkcRz9oJhzivq4zPD4my4WgsgDIi60OQ==
X-Received: by 2002:adf:b785:: with SMTP id s5mr14648213wre.30.1631565873252; 
 Mon, 13 Sep 2021 13:44:33 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f08:4500:2517:8cca:49d8:dcdc?
 (p200300ea8f08450025178cca49d8dcdc.dip0.t-ipconnect.de.
 [2003:ea:8f08:4500:2517:8cca:49d8:dcdc])
 by smtp.googlemail.com with ESMTPSA id g5sm8407167wrq.80.2021.09.13.13.44.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Sep 2021 13:44:32 -0700 (PDT)
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
References: <CAHk-=wgbygOb3hRV+7YOpVcMPTP2oQ=iw6tf09Ydspg7o7BsWQ@mail.gmail.com>
 <20210913141818.GA27911@codemonkey.org.uk>
 <ab571d7e-0cf5-ffb3-6bbe-478a4ed749dc@gmail.com>
 <20210913201519.GA15726@codemonkey.org.uk>
 <b84b799d-0aaa-c4e1-b61b-8e2316b62bd1@gmail.com>
 <20210913203234.GA6762@codemonkey.org.uk>
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <b24d81e2-5a1e-3616-5a01-abd58c0712f7@gmail.com>
Date: Mon, 13 Sep 2021 22:44:25 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20210913203234.GA6762@codemonkey.org.uk>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] Linux 5.15-rc1 - 82599ES VPD access isue
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
Cc: Dave Jones <davej@codemonkey.org.uk>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 13.09.2021 22:32, Dave Jones wrote:

+ Jesse and Tony as Intel NIC maintainers

> On Mon, Sep 13, 2021 at 10:22:57PM +0200, Heiner Kallweit wrote:
> 
>  > > This didn't help I'm afraid :(
>  > > It changed the VPD warning, but that's about it...
>  > > 
>  > > [  184.235496] pci 0000:02:00.0: calling  quirk_blacklist_vpd+0x0/0x22 @ 1
>  > > [  184.235499] pci 0000:02:00.0: [Firmware Bug]: disabling VPD access (can't determine size of non-standard VPD format)                                                                                           
>  > > [  184.235501] pci 0000:02:00.0: quirk_blacklist_vpd+0x0/0x22 took 0 usecs
>  > > 
>  > With this patch there's no VPD access to this device any longer. So this can't be
>  > the root cause. Do you have any other PCI device that has VPD capability?
>  > -> Capabilities: [...] Vital Product Data
> 
> 
> 01:00.0 Ethernet controller: Intel Corporation 82599ES 10-Gigabit SFI/SFP+ Network Connection (rev 01)
>         Subsystem: Device 1dcf:030a
> 	...
> 	        Capabilities: [e0] Vital Product Data
>                 Unknown small resource type 06, will not decode more.
> 

When searching I found the same symptom of invalid VPD data for 82599EB.
Do these adapters have non-VPD data in VPD address space? Or is the actual
VPD data at another offset than 0? I know that few Chelsio devices have
such a non-standard VPD structure.

> 
> I'll add that to the quirk list and see if that helps.
> 
> 	Dave
> 
Heiner
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
