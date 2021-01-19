Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD0F2FC347
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Jan 2021 23:24:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3B00284828;
	Tue, 19 Jan 2021 22:24:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2LO_7BXVkvVF; Tue, 19 Jan 2021 22:24:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 93DF08487A;
	Tue, 19 Jan 2021 22:24:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2127B1BF59A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 22:24:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 13A2F203B4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 22:24:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qeDZBDziLZKL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Jan 2021 22:24:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com
 [209.85.166.45])
 by silver.osuosl.org (Postfix) with ESMTPS id 2F353203A4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 22:24:21 +0000 (UTC)
Received: by mail-io1-f45.google.com with SMTP id p72so18214287iod.12
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 14:24:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EadHn0p5gKnVuIymeerOy3CQV3eLQ3su75tNWBGiCuQ=;
 b=MJGueoZEJZRrmN/tgyulQV0hLaATz7ozk9aLX4rafkwOmF09XAsz5r8iWl4INoccbY
 ea03blbJ1MYtpop0Ew3NRDR07gl+4ntDYz088i5XRXWdFqr1z0Z+VedmIWpsOyzhSaOh
 o7waqqB2UTGLsR/p8OPyVaAwoqVpv+ZYJaPhm0AbIsUWH+CnOH8p1zvIruWu6/9RuThm
 N9HLdbcUoewHf2MYnsBFv84VM4pN+UuuPN7WSh8dtQFrMmwhwKeaqSdKc0pFBaESQiNq
 CrbPVWpxnZzKqEK5R4bPsM1Zgj6pGxeWok0RYq2HSkb6dpmUXCi+DZcW/6CKAbgd6B/N
 xECQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EadHn0p5gKnVuIymeerOy3CQV3eLQ3su75tNWBGiCuQ=;
 b=ai1HBQWT7LcBPyCCWByxZORS80r2vSI9S73AO4FCm64uGUE8eJk5yQ5G2uOBV9xJ33
 LtObsCQo0Lh5Hjl+zmYIGjNlIo5fGgoj9jSu2v7ETm1RHFtaHlXscYAIGJuNHQUJl1wZ
 5/+7JsQjlCMIE/LX6rqRn2ZOclpbRKfisgpJjjjd8/rzeVpV94uEygqoBDg7pEWHwWVV
 i53Oucn8pZ5T2jRbHvZjpQWt/cxKMDlopR4Ox3Y2Cat+iUPnz6hbEWlZ/0IU2eP+9L3O
 f8ZNdf2aLt3hvB176nNbdg43/Lsq2yVOnlZyBkbxQV1zd2urV3FlWWDfq/iynHaapS+x
 rt5w==
X-Gm-Message-State: AOAM5327JAKmpiXUKFLLt4f9kOA+1lGqKq7mI+ufCpS7XNCkgDCY/9NK
 9wUF0OvM7zy8mwEtdeOmWxz0vS5f9ON5UDj8lOw=
X-Google-Smtp-Source: ABdhPJxrjJRymcHTUnxi5DKTrTjveAMZWdIpGoLXeKvcvoYWgVOR3KuFI2PIFyiyfIwn3LWLsIaTphGK9nA3jkCZiI8=
X-Received: by 2002:a92:b6dd:: with SMTP id m90mr4633894ill.97.1611095060520; 
 Tue, 19 Jan 2021 14:24:20 -0800 (PST)
MIME-Version: 1.0
References: <cover.1610777159.git.lucien.xin@gmail.com>
 <34c9f5b8c31610687925d9db1f151d5bc87deba7.1610777159.git.lucien.xin@gmail.com>
 <aa69157e286b0178bf115124f4b2da254e07a291.1610777159.git.lucien.xin@gmail.com>
In-Reply-To: <aa69157e286b0178bf115124f4b2da254e07a291.1610777159.git.lucien.xin@gmail.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 19 Jan 2021 14:24:09 -0800
Message-ID: <CAKgT0UencO4hnti1ShWpVUmKm9M0Y_MHHLkGvX-0UQNwYtT+ow@mail.gmail.com>
To: Xin Long <lucien.xin@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/6] net: igb: use
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
> Using skb_csum_is_sctp is a easier way to validate it's a SCTP
> CRC checksum offload packet, and there is no need to parse the
> packet to check its proto field, especially when it's a UDP or
> GRE encapped packet.
>
> So this patch also makes igb support SCTP CRC checksum offload
> for UDP and GRE encapped packets.
>
> Signed-off-by: Xin Long <lucien.xin@gmail.com>

Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
