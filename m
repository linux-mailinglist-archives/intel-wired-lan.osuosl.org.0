Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C482F9A86
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Jan 2021 08:31:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2A94C858FB;
	Mon, 18 Jan 2021 07:31:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I2Jp-jS5GA1d; Mon, 18 Jan 2021 07:31:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CE25585955;
	Mon, 18 Jan 2021 07:31:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D8E781BF983
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 07:31:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D2FD386B2C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 07:31:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NHAnEapshcpa for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Jan 2021 07:31:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com
 [209.85.210.173])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 440EA86AD4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 07:31:34 +0000 (UTC)
Received: by mail-pf1-f173.google.com with SMTP id h10so9687398pfo.9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Jan 2021 23:31:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uMxNPxAc5Cn9KFySg+fY1OeEicAZhM0J6k8NTwRGK+A=;
 b=iaZzS8C3aXT2rIpu9BDwTtgQwNYsgOCzOvQDRtzptqNJcQ1WjV8yNGStDuo1Ak4rcL
 ywzDfzx/r6vY6f3V/q4yAmYqEFoVUK4cS4vN06qjRFknPyaksz78sYIr9SW4ZN/aWn0x
 iBoQ8JC8o3eSC3Tvjpi6T7COqH1Khrh88rGCAcUKtLntkWBdTg0ZqrzR4nIClItEL62e
 bEbvoToX7ZZvP0+xCVgDBmGYiQnHZfyuv7PNhfWrsqZ4NXIj1qXllhrKPX3O+/5Mx3dz
 NVWVesGTz5MdNRQV5ajQJEp1t03XT1JAjNeWNQ8zdj63XXJfWK29GBtH86YAbdW2HbRA
 4vzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uMxNPxAc5Cn9KFySg+fY1OeEicAZhM0J6k8NTwRGK+A=;
 b=dz6xPGAWnGn0Qh4NYmGscaoh7W1wnd5hMXd9lDyph2YvQTDtW07e68oarJpOcZpBId
 BwlZepXeB68kNJyTsq1RxnCoaqMhwA+qJ5n9ySkTVG6BuC0sp6575Q+mxNUrTlLdzcBS
 68FKcq3uyYZ8ZgPh2rB+aI8bsx76PPRzUbAm7cvB8MABbGlDV10E0By2BHOUWJ49gxjw
 0+niOt4ErQwPgOUkQ+kx5A8P2woO4+RXiaWjE0SbavcXX8RP0htQAKdwmWjWgeFVszmu
 StAb7HEKylKnnmvk+uAqdptXmnCkfcci5YSfd87FZ5xvL8x/y+t/AFkLf7ixxZ1GqRZE
 UALg==
X-Gm-Message-State: AOAM531wfbiKwWr9lEgtqfz4QQyejTccw6wazos08sZRZXzpb5tkKeEY
 KkvVgkz5U8D+Dqd2Fx5w0OiJEI6XCurSS/15eJQ=
X-Google-Smtp-Source: ABdhPJxEtJGajVP4thclN6C/pO5f+COjssAshj2axTP4UepwJmqqj22e5d0d5dcx9ef2uoL6nqyNdqO6muZfhKhx51c=
X-Received: by 2002:a62:2e86:0:b029:1a6:5f94:2cb with SMTP id
 u128-20020a622e860000b02901a65f9402cbmr25225451pfu.19.1610955093909; Sun, 17
 Jan 2021 23:31:33 -0800 (PST)
MIME-Version: 1.0
References: <20210114143318.2171-1-cristian.dumitrescu@intel.com>
In-Reply-To: <20210114143318.2171-1-cristian.dumitrescu@intel.com>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Mon, 18 Jan 2021 08:31:23 +0100
Message-ID: <CAJ8uoz3YSuPj6F+GHkk6yXHryUEOUhVSg2pDVEVrFA6b8Hgu6g@mail.gmail.com>
To: Cristian Dumitrescu <cristian.dumitrescu@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/4] i40e: small improvements
 on XDP path
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
Cc: Network Development <netdev@vger.kernel.org>, edwin.verplanke@intel.com,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jan 14, 2021 at 3:34 PM Cristian Dumitrescu
<cristian.dumitrescu@intel.com> wrote:
>
> This patchset introduces some small and straightforward improvements
> to the Intel i40e driver XDP path. Each improvement is fully described
> in its associated patch.
>
> Cristian Dumitrescu (4):
>   i40e: remove unnecessary memory writes of the next to clean pointer
>   i40e: remove unnecessary cleaned_count updates
>   i40e: remove the redundant buffer info updates
>   i40: consolidate handling of XDP program actions
>
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c | 149 +++++++++++----------
>  1 file changed, 79 insertions(+), 70 deletions(-)
>
> --
> 2.25.1
>

Thank you for these clean ups Cristian!

For the series:

Acked-by: Magnus Karlsson <magnus.karlsson@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
