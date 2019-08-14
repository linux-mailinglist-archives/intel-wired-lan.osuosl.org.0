Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A93258E0BF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2019 00:31:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5441E882A7;
	Wed, 14 Aug 2019 22:31:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tIFS8uGGW4ib; Wed, 14 Aug 2019 22:31:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B54D8882EC;
	Wed, 14 Aug 2019 22:31:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8C4C31BF846
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 15:40:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 88A168769E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 15:40:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X86rfkeCVZK9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2019 15:40:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 91BC8876BE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 15:40:03 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id 4so43853583pld.10
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 08:40:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version; bh=/MNhvAe1aUSGuYylMPVo6sUzj61ox1fF3EFAj+VYkMo=;
 b=RTcAgzOBu9fZXX4Ano/BuBGNV9xA+PIWZUvaDNY43N9xOFCR37ysTZrbfZFggwngoa
 S24BEiBpnmNhnaCuAfNnn5r6x6yx2SHICBVgr5kv5RF/w9fcpp4J8KpOqdUeK/UR3w5r
 +5davpJUkfXIDzKCsiFCZrtpQK2PfRobxT+fMtXDvdUbiRjOrjuxHLiQEdo/cROqMXcr
 KODkVVQ+IpGR2PmjDgawXSq/j+w1BocGIZIzYLZPqwRvbJn6NEWhChoDcLDu+mu8+V7B
 Yeh9fNIKgy9Ci4XzFW2wzE+8pNW+TO0+cPMaEbEBoJhrhQr3G/W17xXFewtHY1tddlfn
 DuDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version;
 bh=/MNhvAe1aUSGuYylMPVo6sUzj61ox1fF3EFAj+VYkMo=;
 b=SjcNoU1GwWLOP9egSAs4BgbRxbx+UZTOEdv5EyM2GObFSoZckyvgnXPsmxX5lkBC5U
 Wdf7dMxEdrsmHY+VYixPugLnJGXsxKuaS2c66BHQYnMAPt/+gh5p5Yy+uS+twaaoOxDl
 TxHbUCfBta25KRthZj6Ie75sXBQNr6GsepOZJrDsnhE0513FkFTXuWNyP+sEH6sPIMkX
 LPltakrdAgU/8KZJCvux932GwUyxACTNoUmJJml5YKqfGRWvPofrC5WBvtdyMj0YkFLS
 SNEGHCR0itY+e9PNAb2zaDiE2BB6JHUFelegFtKLnoNXdMqTbi/GKiTbzUK7PNiRh2jc
 dAtQ==
X-Gm-Message-State: APjAAAUjjXNkq9pIHEZozV1rJ/oT1Ydplq0HC2Nzzhgt9PZDPqbs4sGr
 t5MrOmAhqyTn0hpwyme+fJ4=
X-Google-Smtp-Source: APXvYqzJYRF+TFURVDpwNn2tIkwnGmrjFdJ1DkgdL+dqaDtOskq6PID6zwDlUObcq/nHZq601qKdQQ==
X-Received: by 2002:a17:902:e38b:: with SMTP id
 ch11mr25057plb.275.1565797202982; 
 Wed, 14 Aug 2019 08:40:02 -0700 (PDT)
Received: from [172.26.122.72] ([2620:10d:c090:180::6327])
 by smtp.gmail.com with ESMTPSA id t4sm145873pfq.153.2019.08.14.08.40.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 08:40:02 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Magnus Karlsson" <magnus.karlsson@intel.com>
Date: Wed, 14 Aug 2019 08:40:00 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <FA76BD00-F81D-453D-AB70-BDE6A4E0950E@gmail.com>
In-Reply-To: <1565767643-4908-9-git-send-email-magnus.karlsson@intel.com>
References: <1565767643-4908-1-git-send-email-magnus.karlsson@intel.com>
 <1565767643-4908-9-git-send-email-magnus.karlsson@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 14 Aug 2019 22:31:03 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 8/8] net/mlx5e: Add AF_XDP
 need_wakeup support
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
Cc: axboe@kernel.dk, maximmi@mellanox.com, kevin.laatz@intel.com,
 jakub.kicinski@netronome.com, daniel@iogearbox.net,
 maciejromanfijalkowski@gmail.com, netdev@vger.kernel.org,
 ciara.loftus@intel.com, qi.z.zhang@intel.com, ast@kernel.org,
 xiaolong.ye@intel.com, ilias.apalodimas@linaro.org,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com,
 bruce.richardson@intel.com, maciej.fijalkowski@intel.com, bpf@vger.kernel.org,
 bjorn.topel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 14 Aug 2019, at 0:27, Magnus Karlsson wrote:

> From: Maxim Mikityanskiy <maximmi@mellanox.com>
>
> This commit adds support for the new need_wakeup feature of AF_XDP. The
> applications can opt-in by using the XDP_USE_NEED_WAKEUP bind() flag.
> When this feature is enabled, some behavior changes:
>
> RX side: If the Fill Ring is empty, instead of busy-polling, set the
> flag to tell the application to kick the driver when it refills the Fill
> Ring.
>
> TX side: If there are pending completions or packets queued for
> transmission, set the flag to tell the application that it can skip the
> sendto() syscall and save time.
>
> The performance testing was performed on a machine with the following
> configuration:
>
> - 24 cores of Intel Xeon E5-2620 v3 @ 2.40 GHz
> - Mellanox ConnectX-5 Ex with 100 Gbit/s link
>
> The results with retpoline disabled:
>
>        | without need_wakeup  | with need_wakeup     |
>        |----------------------|----------------------|
>        | one core | two cores | one core | two cores |
> -------|----------|-----------|----------|-----------|
> txonly | 20.1     | 33.5      | 29.0     | 34.2      |
> rxdrop | 0.065    | 14.1      | 12.0     | 14.1      |
> l2fwd  | 0.032    | 7.3       | 6.6      | 7.2       |
>
> "One core" means the application and NAPI run on the same core. "Two
> cores" means they are pinned to different cores.
>
> Signed-off-by: Maxim Mikityanskiy <maximmi@mellanox.com>
> Reviewed-by: Tariq Toukan <tariqt@mellanox.com>
> Reviewed-by: Saeed Mahameed <saeedm@mellanox.com>

Acked-by: Jonathan Lemon <jonathan.lemon@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
