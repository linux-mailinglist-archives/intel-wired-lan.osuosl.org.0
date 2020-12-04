Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 969362CF61A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Dec 2020 22:27:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 46AEC87A26;
	Fri,  4 Dec 2020 21:27:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8giTrSo4gwsC; Fri,  4 Dec 2020 21:27:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8CF8F87A1E;
	Fri,  4 Dec 2020 21:27:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EA3741BF280
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 21:27:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E5CAA87EA1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 21:27:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 10OKN14q9EDF for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Dec 2020 21:27:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3235B87E81
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 21:27:19 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id j23so7236030iog.6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Dec 2020 13:27:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VqW5xuV/1lTxGcHmiBHYwvfv9PS2BZOwQspVUNm6Gmk=;
 b=GjGyHwMC38/OQ/ofgcFBN2zOLpxvl8SZ/3FV1TRE1dZu/X5yHNG1V2qUruyFFcK6F1
 qcMPYVeyov/gm9K0GZPgx0ouS8gZFYopuu9Frs+wSfINvNtlmnQv5Vc8FyLPD01RKgHg
 EpOFk4FJneu7Ko/sYtfFpkcb1/8T6VHKMGl46rUpAh0CQqNLAANqb6dFlLLUv+JGChC7
 YuQAhJz/qZK9W78y2Rb7daxZY3w3l/LxZw5Rlffq0qKfguJKoY3JT4Q8uEAmwkDiK0Yk
 RozQcbWSqFp/ME1xxYgvan2CZA4kYQRi2Q58dhMDprZfvV0G5RZIFkbt7OxSdQUg4SrD
 Takw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VqW5xuV/1lTxGcHmiBHYwvfv9PS2BZOwQspVUNm6Gmk=;
 b=eUk6W7zs/hJSay69qOp6V/t8FzTu9iiUdM4JvmTCLSiQRdUN/nBBkgbJe68YvhT7TW
 95h5p5DLoNtFKkiL3S7AHsM0hDEeuqaYZFVSPV6O5hdrJZyECILlyDqp15bUXyxQ86sI
 FWfz9hoCQJUdh416LxeWYmAQnHqmW+3hiSIM2jm12NmoRd9lc21PWezOpHP0ftX0Izrj
 uIvCR0llNHxkIZxgwn6MejtOAkjnCRDMHY2WrxMGUOSBxRK3R7GwbgkepBYM04LGZHtX
 hTFZXhmEu1l+QznDRWY6F9XSFrEI+sWCpAKOsKNtU+U2rfVNxoDRj6rNUE0rGRxeiEAD
 HWVw==
X-Gm-Message-State: AOAM533sPp3z8hZ4Ey2UolblxuY75iGQWMScoJ0b2iAx4+KrxFZ9OCBF
 E6RhRpzVovTXp3QbY9Cb/RAD+vdbbyiFg6mWAUE=
X-Google-Smtp-Source: ABdhPJxIMC1a82H6iLiyCFqEN0vjxjwh8XlAwFQGCRVIUw7bOduA99DaSEZLqbBT0opev2aRmHTxlyRn4kB3zOeMqcM=
X-Received: by 2002:a5e:9812:: with SMTP id s18mr1553635ioj.138.1607117238450; 
 Fri, 04 Dec 2020 13:27:18 -0800 (PST)
MIME-Version: 1.0
References: <20201204200920.133780-1-mario.limonciello@dell.com>
In-Reply-To: <20201204200920.133780-1-mario.limonciello@dell.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Fri, 4 Dec 2020 13:27:07 -0800
Message-ID: <CAKgT0Uc=OxcuHbZihY3zxsxzPprJ_8vGHr=reBJFMrf=V9A5kg@mail.gmail.com>
To: Mario Limonciello <mario.limonciello@dell.com>
Subject: Re: [Intel-wired-lan] [PATCH v3 0/7] Improve s0ix flows for systems
 i219LM
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
Cc: Linux PM <linux-pm@vger.kernel.org>, Netdev <netdev@vger.kernel.org>,
 Perry.Yuan@dell.com, Yijun Shen <Yijun.Shen@dell.com>,
 LKML <linux-kernel@vger.kernel.org>, anthony.wong@canonical.com,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>,
 Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Dec 4, 2020 at 12:09 PM Mario Limonciello
<mario.limonciello@dell.com> wrote:
>
> commit e086ba2fccda ("e1000e: disable s0ix entry and exit flows for ME systems")
> disabled s0ix flows for systems that have various incarnations of the
> i219-LM ethernet controller.  This was done because of some regressions
> caused by an earlier
> commit 632fbd5eb5b0e ("e1000e: fix S0ix flows for cable connected case")
> with i219-LM controller.
>
> Performing suspend to idle with these ethernet controllers requires a properly
> configured system.  To make enabling such systems easier, this patch
> series allows determining if enabled and turning on using ethtool.
>
> The flows have also been confirmed to be configured correctly on Dell's Latitude
> and Precision CML systems containing the i219-LM controller, when the kernel also
> contains the fix for s0i3.2 entry previously submitted here and now part of this
> series.
> https://marc.info/?l=linux-netdev&m=160677194809564&w=2
>
> Patches 4 through 7 will turn the behavior on by default for some of Dell's
> CML and TGL systems.

The patches look good to me. Just need to address the minor issue that
seems to have been present prior to the introduction of this patch
set.

Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
