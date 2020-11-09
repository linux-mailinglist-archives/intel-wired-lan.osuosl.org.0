Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A4E2AC627
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Nov 2020 21:47:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EE323866AE;
	Mon,  9 Nov 2020 20:47:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3eR1VXZ19ls3; Mon,  9 Nov 2020 20:47:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BC1F4866DE;
	Mon,  9 Nov 2020 20:47:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 619071BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Nov 2020 20:47:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 58B03872FA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Nov 2020 20:47:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GRlpe5VFsT6d for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Nov 2020 20:47:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
 [209.85.167.172])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 98A9B872FF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Nov 2020 20:47:40 +0000 (UTC)
Received: by mail-oi1-f172.google.com with SMTP id t143so11687850oif.10
 for <intel-wired-lan@lists.osuosl.org>; Mon, 09 Nov 2020 12:47:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:message-id:in-reply-to:references:subject
 :mime-version:content-transfer-encoding;
 bh=Pu3jH2lz4/aHz11/lZmOnPGy2ngd1re4TGNzl/qDjng=;
 b=pvBHxUjqoNi19gCKutnmqMrB7RPRgFUK4YePaHcl2A3nPiQLXQadfvn/RpvUClTiUk
 uZuGDwlPaSYOorKS9Vha++wsz3MY+ysB5rS20spBy5ehwwFC0J5gjpUZnmyzNSayQKnQ
 H/stTCPqEm34/KreDppUz2XIuOhYLh2A4fyrudnVqkEmcmDnKWJqy5ChZlmdUH/6JkAl
 DRp6MtyvtBn530jiOUDlfjc+dwxZSORcju9MnYwGQPWjCiqymn/lXoR1lhjuZCzMjBYW
 fdKwMg2XxKgkIVBEkJaXo6YstUKQM11hwMszW682xywrkfES6+wfKgFAo+AJGG/iQSA0
 e4TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
 :references:subject:mime-version:content-transfer-encoding;
 bh=Pu3jH2lz4/aHz11/lZmOnPGy2ngd1re4TGNzl/qDjng=;
 b=A7zudkhDH9RAGdYKRpIe7l7NF8ulPGMue7d0Gd+Skzdm3tegxhNMPBkQwQMcywWNga
 eBDkAbbdnLoaGRRm7h7Xu8VaiCrfWTOH3hcLaK73UGnviHv7XD8yo84kSJ2E8nXZlRzF
 E4COyC5V9Y8atnZ29W//FvBzAFuhJtAWIOiUzmbQ8V8+0frLgE1cPYchUR704TPVNcRF
 PGGYkmvwEqjoaOJb65VuQPNb1BG80NnkbtXx8VcHkqSr9p0kdaWRbYDwvOHLeAQI24Ya
 lr3ruPO7/1AK4nqseP2WVGfuGaEH/+0PL9XcTUdBW3F84BiV9YW3ARavI4kWmBuR8f0G
 r5OA==
X-Gm-Message-State: AOAM530nB9HbHA6hkxdRYbQhlCIaBGZn/CnWB4dT7PCkXa8XXkXIKyuv
 70ZI6JW7Svhjucx+bYnXnet86jYGJzE4uQ==
X-Google-Smtp-Source: ABdhPJwQu88ixW27YnfsTtPxhcBhyX/XDGy49u3xYIsO4KJMqsk1NkzGQdLdP1YzHxxg8uTrxCON4Q==
X-Received: by 2002:aca:e187:: with SMTP id y129mr654712oig.61.1604954859874; 
 Mon, 09 Nov 2020 12:47:39 -0800 (PST)
Received: from localhost ([184.63.162.180])
 by smtp.gmail.com with ESMTPSA id j23sm2772770otr.80.2020.11.09.12.47.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 12:47:39 -0800 (PST)
Date: Mon, 09 Nov 2020 12:47:32 -0800
From: John Fastabend <john.fastabend@gmail.com>
To: Magnus Karlsson <magnus.karlsson@gmail.com>, magnus.karlsson@intel.com, 
 bjorn.topel@intel.com, ast@kernel.org, daniel@iogearbox.net, 
 netdev@vger.kernel.org, jonathan.lemon@gmail.com
Message-ID: <5fa9aae46c442_8c0e208b5@john-XPS-13-9370.notmuch>
In-Reply-To: <1604498942-24274-3-git-send-email-magnus.karlsson@gmail.com>
References: <1604498942-24274-1-git-send-email-magnus.karlsson@gmail.com>
 <1604498942-24274-3-git-send-email-magnus.karlsson@gmail.com>
Mime-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 2/6] samples/bpf: increment
 Tx stats at sending
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
Cc: maciejromanfijalkowski@gmail.com, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Magnus Karlsson wrote:
> From: Magnus Karlsson <magnus.karlsson@intel.com>
> 
> Increment the statistics over how many Tx packets have been sent at
> the time of sending instead of at the time of completion. This as a
> completion event means that the buffer has been sent AND returned to
> user space. The packet always gets sent shortly after sendto() is
> called. The kernel might, for performance reasons, decide to not
> return every single buffer to user space immediately after sending,
> for example, only after a batch of packets have been
> transmitted. Incrementing the number of packets sent at completion,
> will in that case be confusing as if you send a single packet, the
> counter might show zero for a while even though the packet has been
> transmitted.
> 
> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
> ---

LGTM. Just one question then if we wanted to know the old value, packet
completion counter it looks like (tx_npkts - outstanding_tx) would give
that value?

Acked-by: John Fastabend <john.fastabend@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
