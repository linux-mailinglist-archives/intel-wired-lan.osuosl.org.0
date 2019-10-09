Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 12AD1D0529
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2019 03:20:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A08298768C;
	Wed,  9 Oct 2019 01:20:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fyoKG2O5u-Wd; Wed,  9 Oct 2019 01:20:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 579E68771B;
	Wed,  9 Oct 2019 01:20:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C67081BF3AA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 01:20:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B79978820A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 01:20:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HWO6lobMZcj9 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2019 01:20:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E6F02881A4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 01:20:28 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id u3so295818lfl.10
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Oct 2019 18:20:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KRbyZ0tnPi87vldaS6TRo3OVlH9+jJXwmzcjg+fajFI=;
 b=RLDbT01Soq8xaedkXvqavUy2kovalgrmYNgNt6lgdg0CeGi1kQC7Q6+QIdBFiQ01IV
 WurQol67uJqGzy6NVny/BCglnu97QKP8EHa8lrKwEYx5Kz2C8n9PisJ1c8wX7pZdx0m+
 Z3wgtwESsdssOkuoZtZoKsDoGJjRZ3lzdar4LgX3bZBTX/DQZMMdc0qGUrzQrnl6STma
 aW/i3idyR+J2cbwhQvT2wYZdLdtWA7XDj/SQxYnLissnoLmgAKB9GfL0g+8fqs/XNHSc
 nLlO7ggByTu3lx/nCNxuCwCbXESU6N1IH7B+Mf2ZtDRsZz/CaljXFRsNSgJS1Taopt6T
 FmAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KRbyZ0tnPi87vldaS6TRo3OVlH9+jJXwmzcjg+fajFI=;
 b=JlQ/GSz+gZvYyzVgrQVDYZRvASKAKep+jt4B6FHTNr9LXHVXe8eHjsC9t4YjCixZvM
 GMtOSFDPfMMGnd+8jaAJfxVJiI49jWPjDLocaZQLdZDUj4nitpp4vsHKAFndIeagu4No
 rOmx3lCdSSYFcqmgYyG2u7KqjLS7pOGlwEjSzqmiOFR1OuR5mt6xF4BGsaQ6S1F/yCw7
 B55d1hiXRVg8dbUx4NfEZcjgD4W8iAXJqQiH2q46VlrBNc9cSQXGU1+6+NW+rX8P+JfI
 eTeP4vzKKjrg0RwRoxTY5uuT4gdt7O1aj6h90jGVLVfNYxJV6oaa7QuSx1MtVygE/lbt
 D0hw==
X-Gm-Message-State: APjAAAXhEHFBwU6+IMW2jsDw1GbYZ1hMhhkPWAwDtvxA8+cFTMcDX4XN
 /uXlI6mtloprrZFAiEBLGbTU4nrG5/Y9VgBMYXU=
X-Google-Smtp-Source: APXvYqxBsM4HbtSkY3oBR7IDs8AZltgg36Y+uP4V36t+qJoTZS0sIl2f0CXoFqpKButEOZ8ZtyQktJhIXHUWDth1H9o=
X-Received: by 2002:a19:4f06:: with SMTP id d6mr358251lfb.15.1570584026847;
 Tue, 08 Oct 2019 18:20:26 -0700 (PDT)
MIME-Version: 1.0
References: <1570515415-45593-1-git-send-email-sridhar.samudrala@intel.com>
 <1570515415-45593-3-git-send-email-sridhar.samudrala@intel.com>
In-Reply-To: <1570515415-45593-3-git-send-email-sridhar.samudrala@intel.com>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Tue, 8 Oct 2019 18:20:15 -0700
Message-ID: <CAADnVQ+XxmvY0cs8MYriMMd7=2TSEm4zCtB+fs2vkwdUY6UgAQ@mail.gmail.com>
To: Sridhar Samudrala <sridhar.samudrala@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 2/4] xsk: allow AF_XDP
 sockets to receive packets directly from a queue
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
Cc: maciej.fijalkowski@intel.com, Network Development <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, tom.herbert@intel.com,
 bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Oct 7, 2019 at 11:18 PM Sridhar Samudrala
<sridhar.samudrala@intel.com> wrote:
> +
> +u32 bpf_direct_xsk(const struct bpf_prog *prog, struct xdp_buff *xdp)
> +{
> +       struct xdp_sock *xsk;
> +
> +       xsk = xdp_get_xsk_from_qid(xdp->rxq->dev, xdp->rxq->queue_index);
> +       if (xsk) {
> +               struct bpf_redirect_info *ri = this_cpu_ptr(&bpf_redirect_info);
> +
> +               ri->xsk = xsk;
> +               return XDP_REDIRECT;
> +       }
> +
> +       return XDP_PASS;
> +}
> +EXPORT_SYMBOL(bpf_direct_xsk);

So you're saying there is a:
"""
xdpsock rxdrop 1 core (both app and queue's irq pinned to the same core)
   default : taskset -c 1 ./xdpsock -i enp66s0f0 -r -q 1
   direct-xsk :taskset -c 1 ./xdpsock -i enp66s0f0 -r -q 1
6.1x improvement in drop rate
"""

6.1x gain running above C code vs exactly equivalent BPF code?
How is that possible?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
