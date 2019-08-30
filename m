Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7B0A3AC2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2019 17:45:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 811A887D77;
	Fri, 30 Aug 2019 15:45:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6spBQMZrl4vp; Fri, 30 Aug 2019 15:45:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E7A4E87E9C;
	Fri, 30 Aug 2019 15:45:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9C4B61BF284
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:45:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 965B587E3E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:45:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mjv1ogGJfEF8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2019 15:45:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F0EB887D77
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:45:37 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id o70so4895527pfg.5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 08:45:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version; bh=AQcszAxJMGmzr9mcXZyzTqKFncOjDmo3mtAAwMQbfK0=;
 b=AFjjIfia0spTV6b4E9ZloJREqJlMRAGat+xANwqw8sWD6RbrfWq1uOVmZOqNWc7aNR
 aNotby77LKePdQECAx6xTE9dXfASNAqCQuJRUW6q+BqQViRPsNy9uPuvz1R4mU0k2nBo
 xh8FsNTZ7oC3rTr2O069gxAb2WDijZhNjzBMZXQ43g1epzZod4Dz4BTIxEVWCo60JuxO
 gMHvddyxBJjreD2fJXnhTWxiwnSCUBcoFlfJISfZcRR/T3SghTFOnJGwvQgbvIt6OWeZ
 UmY1QBRSAlhXB/ANdRfizXKmmfTc+wPeOnWtziXzWw92dOTYnVEYig+fNiGb7oYDFBdW
 oJTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version;
 bh=AQcszAxJMGmzr9mcXZyzTqKFncOjDmo3mtAAwMQbfK0=;
 b=Kz+DVEdAyAOx/hcn90warWFc+70U5N63comUs/GeSkd3sMA6En/JBLwJaDl5qpYSW4
 HUXG+boNwYQRU6PcYdthJUxFK2DVbflf8YYYtpC+BWH9zMrRI1myd79sqNBIG4fWzeLu
 SHntJaxNSRxCzK9chitTxBh76UZp/qwBZ/mj+3+jzz15wGFmmEq0lXAqOKNbYpNaMFwZ
 FJbIKgXHOT4TRupX67nNiWmjcYMyHTG9Nv738xE7aSwN59BaiLt0ciprPxyYokb6CGDL
 XeD+TaAA8PwFj17vAx6ayRdghM2VOuilF++v6nME4ooXF+rggoeP0JfW4qCHSMLc8d2i
 Hs9A==
X-Gm-Message-State: APjAAAXIAv79U1tBIPD1jmMwX+9DEa0xyyW6RyPMnvsDrFhV07vFnev5
 8feUBwf3aAUWO1x+EN6GsBo=
X-Google-Smtp-Source: APXvYqztZbEcpjjL+pO9jnW+VurgE/+k1BJo2dvvu4XMbmkpdKaLXzDKOtW5gTMEu1j9ffQfGnhYlQ==
X-Received: by 2002:a17:90a:f986:: with SMTP id
 cq6mr5023902pjb.48.1567179937659; 
 Fri, 30 Aug 2019 08:45:37 -0700 (PDT)
Received: from [172.26.108.102] ([2620:10d:c090:180::7594])
 by smtp.gmail.com with ESMTPSA id i9sm4920390pgg.38.2019.08.30.08.45.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 08:45:36 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Kevin Laatz" <kevin.laatz@intel.com>
Date: Fri, 30 Aug 2019 08:45:35 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <C5FEBF55-CC52-4489-955E-1202BB4FF193@gmail.com>
In-Reply-To: <20190827022531.15060-8-kevin.laatz@intel.com>
References: <20190822014427.49800-1-kevin.laatz@intel.com>
 <20190827022531.15060-1-kevin.laatz@intel.com>
 <20190827022531.15060-8-kevin.laatz@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v6 07/12] net/mlx5e: Allow
 XSK frames smaller than a page
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
Cc: maximmi@mellanox.com, jakub.kicinski@netronome.com, daniel@iogearbox.net,
 netdev@vger.kernel.org, ciara.loftus@intel.com, ast@kernel.org,
 stephen@networkplumber.org, saeedm@mellanox.com,
 intel-wired-lan@lists.osuosl.org, bruce.richardson@intel.com,
 bpf@vger.kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 26 Aug 2019, at 19:25, Kevin Laatz wrote:

> From: Maxim Mikityanskiy <maximmi@mellanox.com>
>
> Relax the requirements to the XSK frame size to allow it to be smaller
> than a page and even not a power of two. The current implementation can
> work in this mode, both with Striding RQ and without it.
>
> The code that checks `mtu + headroom <= XSK frame size` is modified
> accordingly. Any frame size between 2048 and PAGE_SIZE is accepted.
>
> Functions that worked with pages only now work with XSK frames, even if
> their size is different from PAGE_SIZE.
>
> With XSK queues, regardless of the frame size, Striding RQ uses the
> stride size of PAGE_SIZE, and UMR MTTs are posted using starting
> addresses of frames, but PAGE_SIZE as page size. MTU guarantees that no
> packet data will overlap with other frames. UMR MTT size is made equal
> to the stride size of the RQ, because UMEM frames may come in random
> order, and we need to handle them one by one. PAGE_SIZE is just a power
> of two that is bigger than any allowed XSK frame size, and also it
> doesn't require making additional changes to the code.
>
> Signed-off-by: Maxim Mikityanskiy <maximmi@mellanox.com>
> Reviewed-by: Saeed Mahameed <saeedm@mellanox.com>
Acked-by: Jonathan Lemon <jonathan.lemon@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
