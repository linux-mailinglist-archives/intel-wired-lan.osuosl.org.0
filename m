Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AA01F2FC34A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Jan 2021 23:25:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6614586252;
	Tue, 19 Jan 2021 22:25:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OJQTbLjd7rT7; Tue, 19 Jan 2021 22:25:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C6A61864F3;
	Tue, 19 Jan 2021 22:25:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0DF071BF59A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 22:25:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F0EB2203B4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 22:25:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kK8YSqtU9LEf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Jan 2021 22:25:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
 [209.85.166.42])
 by silver.osuosl.org (Postfix) with ESMTPS id AB43D203A4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 22:25:25 +0000 (UTC)
Received: by mail-io1-f42.google.com with SMTP id d81so27795838iof.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 14:25:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ckQsUQ1LKR1mQXUCM/yL+eZIKUoNzImIqmnZkfMbC3Y=;
 b=CERfv+nwmEmSScikj66V2CkDoFpDpYI273t4hfbNwjoqpuqJy9+uV5ZOUEP/6ZEQn/
 M9MwbTFJ8zUi7qq1AvPhMPT5JrPWzTHi1Kg1gzenf5FoWEBwis2cO911+05j85VgWPeq
 hLaBGPGfxLbZvTftWrjPp7j6GlKYoqMyuKcIkZfZwqpYS33iMWln1NGlFGBJ2jx5LUCL
 VwZgVh/CksTySsbKCzQEWIj+NZIizbVYxIZnFEAB/URgvREpSlsEG7TePH5vay2Ys88E
 0uGAXUeWA3IUTpdi6plUnYLtnoCDo0v+BB/PGEHnbeKRXY/Mawzqpfw+qkw++xN24JLy
 yn7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ckQsUQ1LKR1mQXUCM/yL+eZIKUoNzImIqmnZkfMbC3Y=;
 b=cG0pB2GtooomMG8CnudeMjTEBtlZrCacB+8SYmPEhuzXFC4p5VG24EmhP4CnrW1aGT
 UDck8Iw3KP7PoQJPePAogg8nVp+ft31JlYNqnvF2zM3YI5hqA//9T1HyFV/qfyAE7Rs0
 Kcfxe0JrnjNju6KMwkZOR4/M52Crc+NAPqkt3iGNth8YJ+Ceb5q3AfZ5GwXCIRT9UMWm
 0QX0CDTL2aXZ0Q5n/C3bWxlP8FSs4/eC3YHAxCxZyz7+/z+fQZ3oIa8AvOADnkAll9iu
 HUhunfFYB5PZnbPUE/vvUEELPTg8rGamVB9diDPoR3r6TAymMTXI7wxbV9OLdwvX3VaP
 OQoA==
X-Gm-Message-State: AOAM530y1mGRhzO6GUGyo0ZTMB9Y0qAFwN4NelHPW1sLgrnWhiWhQATu
 Nvs2iRwyM/OAEpVy+z3j2WjkpCXbCBToZDeVpaY=
X-Google-Smtp-Source: ABdhPJylN6iYGS9pZS0XhZW5StN63C1HfTKCSdFeDNy6fAtLirkNvErTelv9k1RwWpw+XADvqOjsuXK7VyUDytCgRuw=
X-Received: by 2002:a02:5889:: with SMTP id f131mr5339131jab.121.1611095125034; 
 Tue, 19 Jan 2021 14:25:25 -0800 (PST)
MIME-Version: 1.0
References: <34c9f5b8c31610687925d9db1f151d5bc87deba7.1610777159.git.lucien.xin@gmail.com>
 <aa69157e286b0178bf115124f4b2da254e07a291.1610777159.git.lucien.xin@gmail.com>
 <c1a1972ea509a7559a8900e1a33212d09f58f3c9.1610777159.git.lucien.xin@gmail.com>
 <cover.1610777159.git.lucien.xin@gmail.com>
 <7b4d84fe32d588884fcd75c2f6f84eb8cd052622.1610777159.git.lucien.xin@gmail.com>
 <f58d50ef96eb1504f4a952cc75a19d21dcf85827.1610777159.git.lucien.xin@gmail.com>
In-Reply-To: <f58d50ef96eb1504f4a952cc75a19d21dcf85827.1610777159.git.lucien.xin@gmail.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 19 Jan 2021 14:25:13 -0800
Message-ID: <CAKgT0UciYR6t7nUpAiAi79LSbqg048g_ZKCi511KDXUnXo2e5A@mail.gmail.com>
To: Xin Long <lucien.xin@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 5/6] net: ixgbe: use
 skb_csum_is_sctp instead of protocol check
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
Cc: Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 Neil Horman <nhorman@tuxdriver.com>, network dev <netdev@vger.kernel.org>,
 "linux-sctp @ vger . kernel . org" <linux-sctp@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jan 15, 2021 at 10:14 PM Xin Long <lucien.xin@gmail.com> wrote:
>
> Using skb_csum_is_sctp is a easier way to validate it's a SCTP CRC
> checksum offload packet, and yet it also makes ixgbe support SCTP
> CRC checksum offload for UDP and GRE encapped packets, just as it
> does in igb driver.
>
> Signed-off-by: Xin Long <lucien.xin@gmail.com>

Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
