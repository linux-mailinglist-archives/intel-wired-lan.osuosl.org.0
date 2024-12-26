Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 03DF49FCB28
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Dec 2024 14:25:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D672C80FEF;
	Thu, 26 Dec 2024 13:25:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jgarWMgL9M8O; Thu, 26 Dec 2024 13:25:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8F5B80FB8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735219504;
	bh=XT1lRnhXlXD21/E0zejBEol4+u5gRnt3P8KO+08FkPg=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HXjh1e14G7beK/wEyiIBZ4wHjbEph9Tu9KOhrSRG5JWnqucEWlczJ/i5zw+WVj1en
	 SptblOnJM/1hvNYiA1dVD070OtizzsNjYj677k6OH+z28u67BSiDBhxQ+RN82Dreh8
	 G9xsGwtgd+XKsToFQwmcTZ5iEvUHdNm5kodGGXRiyLFarf/OeSNNAobHu8au3c77Ni
	 ispO+szj7nwDOzUjlpSCCYQjZIfcFI5I9h77jEz562jg9Xu7zJrF6sySpKN3RfeTIB
	 dagAs60tcSCP33UVlWPPNDCavsb5NP3ra3F6eBzIoaVBwVrcdQVyL/ZieRV/5yGPTf
	 k9tc8Ot3VouEg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8F5B80FB8;
	Thu, 26 Dec 2024 13:25:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id CBE24F15
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Dec 2024 13:25:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9F0766069A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Dec 2024 13:25:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VebpJKpY8WHN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Dec 2024 13:25:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=wcosta@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 775D060619
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 775D060619
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 775D060619
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Dec 2024 13:24:59 +0000 (UTC)
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com
 [209.85.216.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-447-u3MaMtogOtedqGGIZsx8MQ-1; Thu, 26 Dec 2024 08:24:56 -0500
X-MC-Unique: u3MaMtogOtedqGGIZsx8MQ-1
X-Mimecast-MFC-AGG-ID: u3MaMtogOtedqGGIZsx8MQ
Received: by mail-pj1-f71.google.com with SMTP id
 98e67ed59e1d1-2ef909597d9so11835952a91.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Dec 2024 05:24:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735219495; x=1735824295;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=XT1lRnhXlXD21/E0zejBEol4+u5gRnt3P8KO+08FkPg=;
 b=ub6e+T65WcxJVqQfLVAr6HMZ56CvnmZ43H9iwAZVs8waDGkkTV+UMi2y7Iw5SprTEN
 QbcxD4yyLqegFeupaScw0OlfbKbNjlCEtW8wJdu7IOI8IkY9J2KUu+FQoCKhxuhD8pPf
 Jq9tble1RXwsASfJojN6uMo71CKMDLQf5IiMpMg91fspgouqYHWECZNxSTEty2h4w5qe
 VQ98TeLEN1gZc+DukSYBI3g7+ufMEPsOnXA98z3yFCm1XByDyxGzmV8A6rjXnjRb+bpr
 TNmo6XoLz7nKhjEOIWrtXU09akS32CBgsrj2gk6dEhbCZsVA9DdHzr+QtRgxaDi9BdfQ
 Mybg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXrsWE81OKEYOYKEWIGU0jb+Alrtw8yVKMRxUdoioxa1IJlHh001+PgjNAjT6o9ManaDeYneO7G2po7twrPCng=@lists.osuosl.org
X-Gm-Message-State: AOJu0Ywwyk6wslilHQl6g/SvXum6kY17j7omE9pgweW1KewbMM5e/S03
 2MbYYXHKzWjKJzot3hpcHPgQ1PAAiPfq4fZjLrLqaXeiT4tv7z6b2u2cf/ZLi/Vrdj7GV6Rqrtm
 XrjylIFHanRy0/TIyAKUval0Q0+gZBTcmyE3+tiFKYxwmAxtIm7CgTKm4G97gwTKEky1DtH/kUI
 /Smku0Odxkkts1Jx4dV30LrSsbARPVjYjt6oRr+0Q06w==
X-Gm-Gg: ASbGnctqZTG+kOstKeDR5x2opYTIivF8cSFgdviBOR+mio1eq0sPxbIxJhsCe18xYV1
 tuvbL+saG9s1hGILVMddcIhmm90nP5JWBKrSjog==
X-Received: by 2002:a17:90b:534b:b0:2ee:c91a:acf7 with SMTP id
 98e67ed59e1d1-2f452dfccdcmr34514429a91.4.1735219495457; 
 Thu, 26 Dec 2024 05:24:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGu5/eqaIpVwwwa50DqmMKrB39NKhlZwdLHtsYGthsNbvbf6Td7aNviqn3EUtwWhqMcPArYWUXX5P9Nsr3evBk=
X-Received: by 2002:a17:90b:534b:b0:2ee:c91a:acf7 with SMTP id
 98e67ed59e1d1-2f452dfccdcmr34514409a91.4.1735219495183; Thu, 26 Dec 2024
 05:24:55 -0800 (PST)
MIME-Version: 1.0
References: <20241204114229.21452-1-wander@redhat.com>
In-Reply-To: <20241204114229.21452-1-wander@redhat.com>
From: Wander Lairson Costa <wander@redhat.com>
Date: Thu, 26 Dec 2024 10:24:43 -0300
Message-ID: <CAAq0SUmVn57F5hc=iJkS1-8WPrguOcEYrirZ7hFgiFxhcTCowQ@mail.gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Clark Williams <clrkwllms@kernel.org>, 
 Steven Rostedt <rostedt@goodmis.org>, Jeff Garzik <jgarzik@redhat.com>, 
 Auke Kok <auke-jan.h.kok@intel.com>, 
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>, 
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, 
 "open list:Real-time Linux (PREEMPT_RT):Keyword:PREEMPT_RT"
 <linux-rt-devel@lists.linux.dev>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: jZoUnkKjpOiXqUSLgqNw-ujur-P3mfoTL1EG-lmth7I_1735219495
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1735219498;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XT1lRnhXlXD21/E0zejBEol4+u5gRnt3P8KO+08FkPg=;
 b=c6xQuj7s/NlFTY4CILLKQFdIcXFWNRgKLSQTomGgqUzm9z/jfOZjxX91XO3ha6SLAxJtru
 wcptxBGpWUq/0FdzTWOZnPxYWRMFZTyenBJxYR3AblSkuLgA2kneuP71WOIukSlnDPXNXp
 JpZPeR8i/af7KBHZCHN5TcUpefMD9nM=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=c6xQuj7s
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 0/4] igb: fix igb_msix_other()
 handling for PREEMPT_RT
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Dec 4, 2024 at 8:43=E2=80=AFAM Wander Lairson Costa <wander@redhat.=
com> wrote:
>
> This is the second attempt at fixing the behavior of igb_msix_other()
> for PREEMPT_RT. The previous attempt [1] was reverted [2] following
> concerns raised by Sebastian [3].
>
> The initial approach proposed converting vfs_lock to a raw_spinlock,
> a minor change intended to make it safe. However, it became evident
> that igb_rcv_msg_from_vf() invokes kcalloc with GFP_ATOMIC,
> which is unsafe in interrupt context on PREEMPT_RT systems.
>
> To address this, the solution involves splitting igb_msg_task()
> into two parts:
>
>     * One part invoked from the IRQ context.
>     * Another part called from the threaded interrupt handler.
>
> To accommodate this, vfs_lock has been restructured into a double
> lock: a spinlock_t and a raw_spinlock_t. In the revised design:
>
>     * igb_disable_sriov() locks both spinlocks.
>     * Each part of igb_msg_task() locks the appropriate spinlock for
>     its execution context.
>
> It is worth noting that the double lock mechanism is only active under
> PREEMPT_RT. For non-PREEMPT_RT builds, the additional raw_spinlock_t
> field is ommited.
>
> If the extra raw_spinlock_t field can be tolerated under
> !PREEMPT_RT (even though it remains unused), we can eliminate the
> need for #ifdefs and simplify the code structure.
>
> I will be on vacation from December 7th to Christmas and will address
> review comments upon my return.
>
> If possible, I kindly request the Intel team to perform smoke tests
> on both stock and realtime kernels to catch any potential issues with
> this patch series.
>
> Cheers,
> Wander
>
> [1] https://lore.kernel.org/all/20240920185918.616302-2-wander@redhat.com=
/
> [2] https://lore.kernel.org/all/20241104124050.22290-1-wander@redhat.com/
> [3] https://lore.kernel.org/all/20241104110708.gFyxRFlC@linutronix.de/
>
>
> Wander Lairson Costa (4):
>   igb: narrow scope of vfs_lock in SR-IOV cleanup
>   igb: introduce raw vfs_lock to igb_adapter
>   igb: split igb_msg_task()
>   igb: fix igb_msix_other() handling for PREEMPT_RT
>
>  drivers/net/ethernet/intel/igb/igb.h      |   4 +
>  drivers/net/ethernet/intel/igb/igb_main.c | 160 +++++++++++++++++++---
>  2 files changed, 148 insertions(+), 16 deletions(-)
>
> --
> 2.47.0
>

I had requested Red Hat Network QA to run regression tests on this,
and they recently reported that no issues were found.

