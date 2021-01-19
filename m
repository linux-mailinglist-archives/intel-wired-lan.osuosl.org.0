Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C022FC348
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Jan 2021 23:24:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5781586DEA;
	Tue, 19 Jan 2021 22:24:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AK0Bru3MjWeY; Tue, 19 Jan 2021 22:24:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ECC1786F64;
	Tue, 19 Jan 2021 22:24:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 54C3B1BF59A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 22:24:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 50D4C86DF1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 22:24:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H+Oez7CqY4G6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Jan 2021 22:24:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
 [209.85.166.49])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DA32986DEA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 22:24:44 +0000 (UTC)
Received: by mail-io1-f49.google.com with SMTP id n2so25802976iom.7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 14:24:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vUaNEpj3UB7GS8SZkE2GtWpYrUEQMNzq+HaXsNRFN30=;
 b=ZXOuGzre+celxLqmxUEfCU+oA92M6GPrrUso8iCbe+bmE7VJFzjWihurb+60w4tw4s
 J8TFiYOu4qS1HDaIlsH0nMWywPC1YQ5DxjYlULQnQltrFEyO50jO0YQyV3YVQ+IYCYRO
 rFp57insSklU9Lwg0EtjTfbUak0VreA/XBntYVTy1FD4jXnSvnXV6PF3V2Qlnxcdi1im
 QftfFlL89rPW7MECDdO0fruaN8pSPzJFIuujjr9ec7hI/NxRrYu+j8oKjDBVCzIqeG4c
 eCGWe8vYdot+vS2o18eVNT7PjqYoz3i10FhKeIXtXONnNTlfWGiaBLeWj5wMViGsJ5eD
 P1/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vUaNEpj3UB7GS8SZkE2GtWpYrUEQMNzq+HaXsNRFN30=;
 b=StpDjF086KiuRtCnmweqWdbIKhQiz1uuA8n8tURfMkySsfqNw6CN2KMyDJW1gYtcRF
 oa4YqxkMu4egfzB4B8bTZXwFi3Ix2770YugZsR1vzL7Rp0ZhJ8Wb4F8iCv1HmEzmmJx4
 8Kmyb7wf5ZxULtUXuub4nEo3ZslbRiYK1i76fe1ULY6NCYbbKCpu10DYkTKUmaTwy3Jp
 hmKSIObHEHv8Ws+pFTl1+5X5S5T51AvobhgkTI+mjNB+gRMQSBDUxcVXBGK7bOoHAQs9
 rkUWQXywTRvpwRCDzHfdSpmLD/6P0aWxHeS9DjlgdzNq41FlKTWRgy8JLRy0VgYCjPcr
 hBXA==
X-Gm-Message-State: AOAM53193djO3tHMkYJZShgpllx0D7coll5fesa5U5oS7t1ef+0eKwOP
 hBYr774KvOW2shsxM1GWlAZfEeZSI7gXLaMEGMY=
X-Google-Smtp-Source: ABdhPJwJp3Df/eyCiTVTsT4bfIm3u6N07L+MRIFBIAeyvHbl2bfnUhbN0j9rMEHohQwO5nZ3iryFFmwm5w2LohB5e64=
X-Received: by 2002:a05:6602:2c52:: with SMTP id
 x18mr4585008iov.5.1611095084212; 
 Tue, 19 Jan 2021 14:24:44 -0800 (PST)
MIME-Version: 1.0
References: <34c9f5b8c31610687925d9db1f151d5bc87deba7.1610777159.git.lucien.xin@gmail.com>
 <cover.1610777159.git.lucien.xin@gmail.com>
 <aa69157e286b0178bf115124f4b2da254e07a291.1610777159.git.lucien.xin@gmail.com>
 <c1a1972ea509a7559a8900e1a33212d09f58f3c9.1610777159.git.lucien.xin@gmail.com>
In-Reply-To: <c1a1972ea509a7559a8900e1a33212d09f58f3c9.1610777159.git.lucien.xin@gmail.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 19 Jan 2021 14:24:33 -0800
Message-ID: <CAKgT0Uc-a37D7hxYY7kgk-mP8rX2=b8yt8fayr81NbNHWyV1_A@mail.gmail.com>
To: Xin Long <lucien.xin@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/6] net: igbvf: use
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
> checksum offload packet, and yet it also makes igbvf support SCTP
> CRC checksum offload for UDP and GRE encapped packets, just as it
> does in igb driver.
>
> Signed-off-by: Xin Long <lucien.xin@gmail.com>

Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
