Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D3415BC6AE4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Oct 2025 23:27:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0491C82259;
	Wed,  8 Oct 2025 21:27:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WyG5bIlRXDtY; Wed,  8 Oct 2025 21:27:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2CF568225A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759958865;
	bh=xlSjJCs7A1ERmjbEvfSkW/CmM7q/PE2PcmG+9t+wYEo=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=J9IeUOlrXpzHcfmeqJ6HluVXx/HMI0iO11sB9+7iXkxPoLqyax2nWBj2re8zFzu9K
	 bo7bjZ3KwIPyC29mYvZ9mNJAdgCKsvNCEFEBvYP2tXOOz3xdDVEvNJMINs51rche3v
	 EL94MGxKMUXZcf83OWJh3JxjorkmlDKs8fuvXxwNhYu+VWVGN3Kwiw+sr2CicM0a+c
	 yi4zE2Q4aOtLsWppOsMsunz6C8274fkG46P9EWe3kd7nHInGP3NugsD92aBbVgHuHv
	 h9Zd9uMwbi7FvU1ngN1Y6jAxTZCzeoLzT42ScMxqwTzZBtXXuQ1KpNE2HAfpi+OqjA
	 72T8x2JAmBpcA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2CF568225A;
	Wed,  8 Oct 2025 21:27:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E1E0D9DA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 08:44:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D361E40930
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 08:44:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wm-jsiHXmwD0 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Oct 2025 08:44:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::829; helo=mail-qt1-x829.google.com;
 envelope-from=glider@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6445B4092E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6445B4092E
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com
 [IPv6:2607:f8b0:4864:20::829])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6445B4092E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 08:44:30 +0000 (UTC)
Received: by mail-qt1-x829.google.com with SMTP id
 d75a77b69052e-4e06163d9e9so72041551cf.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 08 Oct 2025 01:44:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1759913069; x=1760517869;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=xlSjJCs7A1ERmjbEvfSkW/CmM7q/PE2PcmG+9t+wYEo=;
 b=NHjnO3N++dfXnfqnjnqQBcBwEHbXFNO/zYaklde7ADmY8g7MGSGhf81dvcoD5gkbOQ
 FoIuCcFOcpwK5yjRuTs2LzepKmpYEiBv4d5u6zYcENJnyGvY7mSZgnNBBUE1f1tLMgEZ
 NvoOkJDSptMcUUoOZJkNxwi9sBBOuvxceNePP4yoH3qq0pFZVz+JNLOKhUeyLNyPdmqq
 8OohU8yjRGn31TZQRPhzQ3kMzHdCKPjpnNwGMUSq13CZYbSGvWcgxnYmzyM7+g90wxf4
 gcDwwbNcu3P9cajDZwqgLuazFQZkl7ZwwzCSHQDilEq68l08VULk2KS58hQqwg+cTg75
 Dkpg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUCnhAMh4+1OnHfz4/JZ/nfaGazCsrNYVwR1jv3Q/XJFk3C1m+7zlYeBhxxdGaI6fa9w2+fYE6MC3aeRx19j5U=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy6KreItjK/1tdGt9qC62oniTM2i7jn7BW2vn3Yc00o/3pojhvl
 vwGsG1c/w6z0lhoTSf6dClnme0dcbPpYMP583ShfgzQQPBvOckuy4zTeL9C90XTTcR0sv3Z6F0L
 A4+GHY8xMMD06eKhtf3SFUVvSEHBU1MsOLE5izMQN
X-Gm-Gg: ASbGncts2zfR1X7UNbu29pKYa+oKcPR4448fra7Q0uLwQPqA/p9dHq6+ICOtm3w09b6
 /vHlBVAq0xfBXWnantAGC682KEtY4oN6W1eovoJECWDIGoPjW79VfXuRYxMt3CbmYICFQ4Aekz1
 jxe9ykcE855BY4BeO2Q2P6uDWj6ZN8HpmS6TjX2hh7ZQszMj395qu5VZ+YWbkuusOiwbNTn4a/9
 FXfBtQXs1KacgkbDgP3cBUeEl7Zz4K2t1fK5acQstb7SifcsUS2Oq/uI/Kn6DBQbmQgfU7Qnljx
 O1k=
X-Google-Smtp-Source: AGHT+IH6T8Z0phHUrkW2LYomzcuIMTigkC4dYVy2h9gd9Ou0VM87Kj2q+2642RYcQOs3k9cE8zHQiNe+PBbwdD28j0U=
X-Received: by 2002:ac8:5914:0:b0:4e2:cb29:22c6 with SMTP id
 d75a77b69052e-4e6ead46a0bmr35675251cf.53.1759913068856; Wed, 08 Oct 2025
 01:44:28 -0700 (PDT)
MIME-Version: 1.0
References: <20250925223656.1894710-1-nogikh@google.com>
 <CAG_fn=U3Rjd_0zfCJE-vuU3Htbf2fRP_GYczdYjJJ1W5o30+UQ@mail.gmail.com>
In-Reply-To: <CAG_fn=U3Rjd_0zfCJE-vuU3Htbf2fRP_GYczdYjJJ1W5o30+UQ@mail.gmail.com>
From: Alexander Potapenko <glider@google.com>
Date: Wed, 8 Oct 2025 10:43:51 +0200
X-Gm-Features: AS18NWD2m7wRQRTYoE5oa91q74s9ueKa5gBPaHOd5rYELKrxuXExAl7EfwP9pSs
Message-ID: <CAG_fn=WUGta-paG1BgsGRoAR+fmuCgh3xo=R3XdzOt_-DqSdHw@mail.gmail.com>
To: Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Leon Romanovsky <leonro@nvidia.com>, mhklinux@outlook.com
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
 kuba@kernel.org, pabeni@redhat.com, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, syzkaller-bugs@googlegroups.com, 
 Aleksandr Nogikh <nogikh@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Wed, 08 Oct 2025 21:27:42 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1759913069; x=1760517869; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=xlSjJCs7A1ERmjbEvfSkW/CmM7q/PE2PcmG+9t+wYEo=;
 b=2iNtckO2ZUSTHNwQM59QylaNlmdpuGWRitwLUmbImMoZmK2rgQkSIhpG0dhnernWft
 rcKR/TB3V88ExUFH+jVnYUY+vJj9oLZGiyzArAZQ+g5k0gy1tVaqVAO+OTAiBx0OHC56
 VvEeLw9MUef6Gv4ScBsFzCAWMC3qsZtsr606Kd2xM9q3S7PtvcyYpRbYFz5QixsPWnMw
 sDfmNP4ZAIh14U64XD3O1YDv8MzmTSKxmsPAFTp2dGEUdHqFGUE0m/BeRBqNgiUKh/5Y
 cPqL/5KC6jlpmuSemYkraD1jJiTSWzXi8cNrTQvgUyxTmqTPmALw7ZWYSKjNnnBwdbqz
 9Jrw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=2iNtckO2
Subject: Re: [Intel-wired-lan] KMSAN: uninit-value in eth_type_trans
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

On Tue, Oct 7, 2025 at 8:51=E2=80=AFAM Alexander Potapenko <glider@google.c=
om> wrote:
> Folks, as far as I understand, dma_direct_sync_single_for_cpu() and
> dma_direct_sync_single_for_device() are the places where we send data
> to or from the device.
> Should we add KMSAN annotations to those functions to catch infoleaks
> and mark data from devices as initialized?

Something along the lines of:

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
diff --git a/kernel/dma/swiotlb.c b/kernel/dma/swiotlb.c
index 0d37da3d95b65..7f59de19c1c87 100644
--- a/kernel/dma/swiotlb.c
+++ b/kernel/dma/swiotlb.c
@@ -42,6 +42,7 @@
 #include <linux/string.h>
 #include <linux/swiotlb.h>
 #include <linux/types.h>
+#include <linux/kmsan-checks.h>
 #ifdef CONFIG_DMA_RESTRICTED_POOL
 #include <linux/of.h>
 #include <linux/of_fdt.h>
@@ -903,10 +904,13 @@ static void swiotlb_bounce(struct device *dev,
phys_addr_t tlb_addr, size_t size

                        local_irq_save(flags);
                        page =3D pfn_to_page(pfn);
-                       if (dir =3D=3D DMA_TO_DEVICE)
+                       if (dir =3D=3D DMA_TO_DEVICE) {
+                               kmsan_check_highmem_page(page, offset, sz);
                                memcpy_from_page(vaddr, page, offset, sz);
-                       else
+                       } else {
+                               kmsan_unpoison_memory(vaddr, sz);
                                memcpy_to_page(page, offset, vaddr, sz);
+                       }
                        local_irq_restore(flags);

                        size -=3D sz;
@@ -915,8 +919,10 @@ static void swiotlb_bounce(struct device *dev,
phys_addr_t tlb_addr, size_t size
                        offset =3D 0;
                }
        } else if (dir =3D=3D DMA_TO_DEVICE) {
+               kmsan_check_memory(phys_to_virt(orig_addr), size);
                memcpy(vaddr, phys_to_virt(orig_addr), size);
        } else {
+               kmsan_unpoison_memory(vaddr, size);
                memcpy(phys_to_virt(orig_addr), vaddr, size);
        }
 }
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

should be conceptually right, but according to the comment in
swiotlb_tbl_map_single()
(https://elixir.bootlin.com/linux/v6.17.1/source/kernel/dma/swiotlb.c#L1431=
),
that function is deliberately copying the buffer to the device, even
when it is uninitialized - and KMSAN actually started reporting that
when I applied the above patch.

How should we handle this case?
Not adding the kmsan_check_memory() calls will solve the problem, but
there might be real infoleaks that we won't detect.
We could unpoison the buffer before passing it to
swiotlb_tbl_map_single() to ignore just the first infoleak on the
buffer.
Alternatively, we could require callers to always initialize the
buffer passed to swiotlb_tbl_map_single().
