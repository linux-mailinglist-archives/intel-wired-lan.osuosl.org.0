Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 261CD2AC6B1
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Nov 2020 22:11:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B85A6860C8;
	Mon,  9 Nov 2020 21:11:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 60qEnSqzdrtB; Mon,  9 Nov 2020 21:11:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C799C860C4;
	Mon,  9 Nov 2020 21:11:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 854E41BF2CA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Nov 2020 21:11:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 638F02042D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Nov 2020 21:11:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DN1Vv9UoJFQt for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Nov 2020 21:11:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 680A8203F2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Nov 2020 21:11:09 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id 79so10370795otc.7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 09 Nov 2020 13:11:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:message-id:in-reply-to:references:subject
 :mime-version:content-transfer-encoding;
 bh=ffJlmLjI1LxmQKvS2WnW7bcoolnwblQDAh0y1MpPzfA=;
 b=Hp9lxi8B1/DgblzGap4loUDg1qIMW6662Rz2j5oJhF991vRI85wWL9W8hWuiBM8M84
 MDshGGRrejg7yviPamY0b6j1xg7/IUMF+/+2eOG6I/a0cDV661/m7ZT/tC1J3pToI8SH
 T6mjDLturs1Rb5BoXfOWeF2rpi7qNIJ4Nf4+QDHoCOrpKujjLjA2eFOfsJenllwWcALh
 1gu4OAD+BibxUPyLFR5IHyymwGnIYHkRSUjnziE9ic1AbGi/Lq/q9BLFyrULhRuyO1d4
 ocYjRAg7WI2KaKQnoy0VDm7iHgp/nWjUNJLuBWOjPQO5GlOkwSAj79gq3y9rGyma34Tq
 CsYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
 :references:subject:mime-version:content-transfer-encoding;
 bh=ffJlmLjI1LxmQKvS2WnW7bcoolnwblQDAh0y1MpPzfA=;
 b=H30VDR7oSNjjLEsOVy1wiNu7WNqYixktSPInn3iQFO1iIA+gDyzYgg3KDH/VRoXKM4
 24FgcsFw5cFI61tLZdXoMLQLhVpnd7olHLnKBAIzL6kUiszV7vnIvpTwioH97CtumYEB
 c0UlVjnktQl96KRAQKWWzhLAhS4RLDuaQzyhX7r10Q/Tph2m3XTheUQEsesyCIrpA2Rz
 CMG4nAE1Ux6SBSiYogIgK0wfIXMbjywsAhMThozuCPKW21UT4IsQeM+OZQeGBn1Dh3E0
 qE4gm/JvdHwXBIZxO4+c+KPEsZusUnNz4Nps+oSqvWhs+HeLBu9k/mX139yZ1oOPA6Jg
 gdyg==
X-Gm-Message-State: AOAM531vzMK763QVn5k3NgUpip15/kdQ2GhnvFlKzfcLCwXY6AWmwg8e
 DeNZboOzntpXwi4jhjeYRdM=
X-Google-Smtp-Source: ABdhPJyMMb0vc7gpgYWoRFFDPQ7mMhV5sYo98bKd0BJL7Hd/IXx7fTrkqclB06EXCy3S/p6RFzySKQ==
X-Received: by 2002:a05:6830:1015:: with SMTP id
 a21mr12378595otp.143.1604956268705; 
 Mon, 09 Nov 2020 13:11:08 -0800 (PST)
Received: from localhost ([184.63.162.180])
 by smtp.gmail.com with ESMTPSA id 33sm2767395otr.25.2020.11.09.13.11.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 13:11:08 -0800 (PST)
Date: Mon, 09 Nov 2020 13:10:59 -0800
From: John Fastabend <john.fastabend@gmail.com>
To: Magnus Karlsson <magnus.karlsson@gmail.com>, magnus.karlsson@intel.com, 
 bjorn.topel@intel.com, ast@kernel.org, daniel@iogearbox.net, 
 netdev@vger.kernel.org, jonathan.lemon@gmail.com
Message-ID: <5fa9b06383a48_8c0e2087e@john-XPS-13-9370.notmuch>
In-Reply-To: <1604498942-24274-7-git-send-email-magnus.karlsson@gmail.com>
References: <1604498942-24274-1-git-send-email-magnus.karlsson@gmail.com>
 <1604498942-24274-7-git-send-email-magnus.karlsson@gmail.com>
Mime-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 6/6] i40e: use batched xsk Tx
 interfaces to increase performance
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
> Use the new batched xsk interfaces for the Tx path in the i40e driver
> to improve performance. On my machine, this yields a throughput
> increase of 4% for the l2fwd sample app in xdpsock. If we instead just
> look at the Tx part, this patch set increases throughput with above
> 20% for Tx.
> 
> Note that I had to explicitly loop unroll the inner loop to get to
> this performance level, by using a pragma. It is honored by both clang
> and gcc and should be ignored by versions that do not support
> it. Using the -funroll-loops compiler command line switch on the
> source file resulted in a loop unrolling on a higher level that
> lead to a performance decrease instead of an increase.
> 
> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_ethtool.c |   2 +-
>  drivers/net/ethernet/intel/i40e/i40e_main.c    |   4 +-
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c    |  14 ++-
>  drivers/net/ethernet/intel/i40e/i40e_txrx.h    |   3 +-
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c     | 127 ++++++++++++++++++-------
>  5 files changed, 110 insertions(+), 40 deletions(-)
> 

LGTM, although I mostly just reviewed the API usage. Maciej's seems like
a nice cleanup.

Acked-by: John Fastabend <john.fastabend@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
