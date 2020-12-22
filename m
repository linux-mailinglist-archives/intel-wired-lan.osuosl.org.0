Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 815172E100D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Dec 2020 23:17:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 484B985F33;
	Tue, 22 Dec 2020 22:17:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B-dABUyTVmFq; Tue, 22 Dec 2020 22:17:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 90F2C85F37;
	Tue, 22 Dec 2020 22:17:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 976381BF3AB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 22:16:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 929DB85F08
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 22:16:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qUnM52SMJpQa for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Dec 2020 22:16:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
 [209.85.166.49])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F28A784F8B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 22:16:57 +0000 (UTC)
Received: by mail-io1-f49.google.com with SMTP id t8so13369423iov.8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 14:16:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vcuCwqWsHQ0Jro60u5SF/gPTaAVB4GUgkYUHbcvSl/0=;
 b=IAVF8kPRyM2u8xrdPfII9YxGhOpLPRXwwaYaOMnBazAcx0tVHO+bF3eMEojveuULcR
 cad0e+XShOoDA1Aomwy+kXreMF9BBpIXWa6ZT3NPcBKChmnmU2yXR2CskLx5jkTiZgme
 gwZIns+gso20Fln6aRZXw6iMqncW7QM6vsMOrmsWv8FKic4NeyG4aDswwFnk9jPJ08ha
 H2GQaxp/K9OEWOduvZB7+mBOKz3T4rsNqSZ0Oda06UW+HTSfo+6Vt/mZY1IROgWHGOF9
 TKOrl2wAab2zP+GkTRGVce+La61TVT8d5lstnUHr/kaEA6uRKoCb+TRrOfoCIqlzwW+K
 JuWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vcuCwqWsHQ0Jro60u5SF/gPTaAVB4GUgkYUHbcvSl/0=;
 b=ESpznPnC+KV2yIhD9NKIcLNa6RsDzB8NM4Fm9uVXRAzPA7+WG8rpEyczA4qyPiHvH0
 iTvot1rH06Bg/XZZBzPB8joA06Ofq3ZRV1nz7Ry87HPKd6uLE5If7WPoW+nA1Gk8VGc/
 Ll0PLyjHx6Bvy056C/5vpbRzn53IsiJbhtrB/iS2udrN7HkuBpCjlknbeRS2hY1fq0K8
 ba1qQTesH7M21KvxLy2F3xLUFuLv91CZAvTgayKPK3IfbAv7+JPQvlJQtjD1M1Sd/nJ2
 3Z1cnhoK7zXdmGib5cFwl1iirTS4OhG4zyj8pqfxRKdLjJKboC6FAiXbbpcJQs/pnLBV
 bhEQ==
X-Gm-Message-State: AOAM531/DXhTFE4ZPnj9/+OrZGoUCGP1e2YkeXrplGZZyRFqDK5+hEB7
 9DupJUvlTi7ou9Q3t0+Erugs5S81qqGwx0nRlKE=
X-Google-Smtp-Source: ABdhPJxSS8Ck1wKKpqAF+9lUA7Bj6TaXUPuyvnY+wgT+0U4WaUJmmAliC02tO6t3wSxSPcGsEksAKSFlTDD/QO4rKNc=
X-Received: by 2002:a02:7a50:: with SMTP id z16mr20532413jad.87.1608675417178; 
 Tue, 22 Dec 2020 14:16:57 -0800 (PST)
MIME-Version: 1.0
References: <cover.1608670965.git.lorenzo@kernel.org>
In-Reply-To: <cover.1608670965.git.lorenzo@kernel.org>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 22 Dec 2020 14:16:46 -0800
Message-ID: <CAKgT0Ud66UtBxQ6a-DKbswB6tNSGojhoSi81YEWHtO03qx97XQ@mail.gmail.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v5 bpf-next 0/2] introduce
 xdp_init_buff/xdp_prepare_buff
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
Cc: Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, lorenzo.bianconi@redhat.com,
 Saeed Mahameed <saeed@kernel.org>, Jesper Dangaard Brouer <brouer@redhat.com>,
 Jakub Kicinski <kuba@kernel.org>, bpf <bpf@vger.kernel.org>,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Dec 22, 2020 at 1:09 PM Lorenzo Bianconi <lorenzo@kernel.org> wrote:
>
> Introduce xdp_init_buff and xdp_prepare_buff utility routines to initialize
> xdp_buff data structure and remove duplicated code in all XDP capable
> drivers.
>
> Changes since v4:
> - fix xdp_init_buff/xdp_prepare_buff (natural order is xdp_init_buff() first
>   and then xdp_prepare_buff())
>
> Changes since v3:
> - use __always_inline instead of inline for xdp_init_buff/xdp_prepare_buff
> - add 'const bool meta_valid' to xdp_prepare_buff signature to avoid
>   overwriting data_meta with xdp_set_data_meta_invalid()
> - introduce removed comment in bnxt driver
>
> Changes since v2:
> - precompute xdp->data as hard_start + headroom and save it in a local
>   variable to reuse it for xdp->data_end and xdp->data_meta in
>   xdp_prepare_buff()
>
> Changes since v1:
> - introduce xdp_prepare_buff utility routine
>
> Lorenzo Bianconi (2):
>   net: xdp: introduce xdp_init_buff utility routine
>   net: xdp: introduce xdp_prepare_buff utility routine
>
> Acked-by: Shay Agroskin <shayagr@amazon.com>
> Acked-by: Martin Habets <habetsm.xilinx@gmail.com>
> Acked-by: Camelia Groza <camelia.groza@nxp.com>

The changes to the Intel drivers look fine to me, although it might be
nice to have someone from Intel provide a review/ack. I've added
intel-wired-lan to the thread so that someone from Intel can hopefully
review and also ack this.

Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
