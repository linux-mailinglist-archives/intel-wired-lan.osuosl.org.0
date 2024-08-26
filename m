Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A92695F7FD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Aug 2024 19:25:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 08D3F60793;
	Mon, 26 Aug 2024 17:25:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jCxTUOICD6bY; Mon, 26 Aug 2024 17:25:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C725F6078E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724693129;
	bh=vXB9I1RDogYdka/7ESImEOew6DkiGl3Ct/MkOkP43JA=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gDNXAKdwdB8eotY6dZ1ux+1xGWgViXd395nihugXiTI0o3ACaQXAhJUlxCWeZgjpa
	 Z2VcWIgOi5+0PZ4SVM+HopPkbHFj6bn4wM0wftRmTAINpeuEJ4fsnVeqYz3K4E6fac
	 j7N51ujlli/N/NvTr/d/LZ5BCy4GnNwwqg6YHO9wP6G3R72EbOagHh4R2oPrX/XfZA
	 1MkFHCmWECIHjFllObDwmemd+lHu9hqtDtORrIZNUrwTQ8btUM0NEE6ZaRQkWF0rue
	 N3pzSAkWetind5USW6IQ6xm1TZwvnZTvOc6ULo7e1GAxxdMxjGdqQUJkCT0dp1KBoA
	 fDHMBemEpcdOQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C725F6078E;
	Mon, 26 Aug 2024 17:25:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A392E1BF336
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 17:25:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 906D580B4E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 17:25:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lOgVIW0tc5a4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Aug 2024 17:25:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8E82680B4C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E82680B4C
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8E82680B4C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 17:25:26 +0000 (UTC)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-60-_wtJLcwzPfi6xqH368UwRg-1; Mon, 26 Aug 2024 13:25:24 -0400
X-MC-Unique: _wtJLcwzPfi6xqH368UwRg-1
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-42808f5d32aso7192135e9.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 10:25:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724693123; x=1725297923;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=vXB9I1RDogYdka/7ESImEOew6DkiGl3Ct/MkOkP43JA=;
 b=RdLxh6NL1kdPsnDEMBYGmbHvyJvFwAAGpRKH37QEOIm2oGq72QipAbYAUK4ENDD17P
 TtK8Nen9fLuunKZC9lfOWs20aHDEaHneCBrLZmsXz19+2KaG691e94HQHvWVQnE5eqnj
 nfcVnYMkP3HPblHWpXB/BSYwysKtRFH4KCW50/iBh0grCQ3hoDcKfVzqltOH7pUyNwd8
 0hNZYweqp4NQpoanZkMDJ6OC0vQ+IZ3XTG/SWjyXo5/9VLHv0lVhuSPVMTjcYyhntKQL
 mnaZezCepMsHE3ZSNr4SF0OXyGyhSOAHh0T9CRqpwVGqvfjHUay6sE7sODNpJWyK9MvB
 C7LA==
X-Gm-Message-State: AOJu0YxS4aIwGBmKJmajPcCZHlst01tGV2czR0V19ZuYQKGea4/VXk7y
 pPxmPa5VRNOHg5kBq25xHlfdN9ENNk26llQ9RMB1rqzpdJkxKHXwhx1It/a83M7au78JRsdP2cT
 vPLCrN3WhwKTWmxjjPXI+FRss1WnxLhkT9pC/K2FO40XxqhLGwk2Px9+T89rJLiDGdkH3NxXPPm
 Ldto0PDtcFPdVCHH1Ps8aMT5PTOI1gCWzUZJ4vezvfrw==
X-Received: by 2002:a05:600c:3ca3:b0:426:6358:7c5d with SMTP id
 5b1f17b1804b1-42acca0c1c8mr45894745e9.4.1724693123149; 
 Mon, 26 Aug 2024 10:25:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHyo+gPmcRRqLioaJdl4QFYbOq6EHctF1LM1UYeexkm0D8aNQrr/L+i8vEQVt4zZEV1IJ4ZrHk0TmltECafqh8=
X-Received: by 2002:a05:600c:3ca3:b0:426:6358:7c5d with SMTP id
 5b1f17b1804b1-42acca0c1c8mr45894475e9.4.1724693122031; Mon, 26 Aug 2024
 10:25:22 -0700 (PDT)
MIME-Version: 1.0
References: <20240821160640.115552-1-dawid.osuchowski@linux.intel.com>
In-Reply-To: <20240821160640.115552-1-dawid.osuchowski@linux.intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Mon, 26 Aug 2024 19:25:10 +0200
Message-ID: <CADEbmW3kk6bfn0BFz6g5FPEPg3gOnSXW42r53K27RsKF53pi9A@mail.gmail.com>
To: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1724693125;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vXB9I1RDogYdka/7ESImEOew6DkiGl3Ct/MkOkP43JA=;
 b=Rde1H0oNgl+03xwCxWKT5oTFe9AwwPqxInuXzWBqysjlVI2XBxZ+McdllxwqLG4H8Ehe/2
 60Ia8fcpghw4kfedWyZLdt9Ed//f/T8olh6jYgti5IoQWR+kbK5rKyvGwt8oxo/rutj3yl
 k851djUFTOWmWgPcgABTwf+WGsHxovo=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Rde1H0oN
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5] ice: Add
 netif_device_attach/detach into PF reset flow
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
Cc: maciej.fijalkowski@intel.com, larysa.zaremba@intel.com,
 netdev@vger.kernel.org, kalesh-anakkur.purayil@broadcom.com,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Igor Bagnucki <igor.bagnucki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Aug 21, 2024 at 6:07=E2=80=AFPM Dawid Osuchowski
<dawid.osuchowski@linux.intel.com> wrote:
>
> Ethtool callbacks can be executed while reset is in progress and try to
> access deleted resources, e.g. getting coalesce settings can result in a
> NULL pointer dereference seen below.
>
> Reproduction steps:
> Once the driver is fully initialized, trigger reset:
>         # echo 1 > /sys/class/net/<interface>/device/reset
> when reset is in progress try to get coalesce settings using ethtool:
>         # ethtool -c <interface>
>
> BUG: kernel NULL pointer dereference, address: 0000000000000020
> PGD 0 P4D 0
> Oops: Oops: 0000 [#1] PREEMPT SMP PTI
> CPU: 11 PID: 19713 Comm: ethtool Tainted: G S                 6.10.0-rc7+=
 #7
> RIP: 0010:ice_get_q_coalesce+0x2e/0xa0 [ice]
> RSP: 0018:ffffbab1e9bcf6a8 EFLAGS: 00010206
> RAX: 000000000000000c RBX: ffff94512305b028 RCX: 0000000000000000
> RDX: 0000000000000000 RSI: ffff9451c3f2e588 RDI: ffff9451c3f2e588
> RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
> R10: ffff9451c3f2e580 R11: 000000000000001f R12: ffff945121fa9000
> R13: ffffbab1e9bcf760 R14: 0000000000000013 R15: ffffffff9e65dd40
> FS:  00007faee5fbe740(0000) GS:ffff94546fd80000(0000) knlGS:0000000000000=
000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 0000000000000020 CR3: 0000000106c2e005 CR4: 00000000001706f0
> Call Trace:
> <TASK>
> ice_get_coalesce+0x17/0x30 [ice]
> coalesce_prepare_data+0x61/0x80
> ethnl_default_doit+0xde/0x340
> genl_family_rcv_msg_doit+0xf2/0x150
> genl_rcv_msg+0x1b3/0x2c0
> netlink_rcv_skb+0x5b/0x110
> genl_rcv+0x28/0x40
> netlink_unicast+0x19c/0x290
> netlink_sendmsg+0x222/0x490
> __sys_sendto+0x1df/0x1f0
> __x64_sys_sendto+0x24/0x30
> do_syscall_64+0x82/0x160
> entry_SYSCALL_64_after_hwframe+0x76/0x7e
> RIP: 0033:0x7faee60d8e27
>
> Calling netif_device_detach() before reset makes the net core not call
> the driver when ethtool command is issued, the attempt to execute an
> ethtool command during reset will result in the following message:
>
>     netlink error: No such device
>
> instead of NULL pointer dereference. Once reset is done and
> ice_rebuild() is executing, the netif_device_attach() is called to allow
> for ethtool operations to occur again in a safe manner.
>
> Fixes: fcea6f3da546 ("ice: Add stats and ethtool support")
> Suggested-by: Jakub Kicinski <kuba@kernel.org>
> Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
> Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
> ---
> Changes since v1:
> * Changed Fixes tag to point to another commit
> * Minified the stacktrace
>
> Changes since v2:
> * Moved netif_device_attach() directly into ice_rebuild() and perform it
>   only on main vsi
>
> Changes since v3:
> * Style changes requested by Przemek Kitszel
>
> Changes since v4:
> * Applied reverse xmas tree rule to declaration of ice_vsi *vsi variable
>
> Suggestion from Kuba: https://lore.kernel.org/netdev/20240610194756.5be5b=
e90@kernel.org/
> Previous attempt (dropped because it introduced regression with link up):=
 https://lore.kernel.org/netdev/20240722122839.51342-1-dawid.osuchowski@lin=
ux.intel.com/

This v5 passes the tests that the previous attempt referenced above failed.
The patch looks sane.

Reviewed-by: Michal Schmidt <mschmidt@redhat.com>

