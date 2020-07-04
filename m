Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 13815214772
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Jul 2020 18:37:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 936A28655C;
	Sat,  4 Jul 2020 16:37:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RsICw82erHLe; Sat,  4 Jul 2020 16:37:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CCA8E866C4;
	Sat,  4 Jul 2020 16:37:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F1D611BF4DA
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jul 2020 16:37:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 922B4863F2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jul 2020 16:37:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ax84J7tn5APB for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Jul 2020 16:37:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CA45F85FA7
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jul 2020 16:37:17 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id r12so35871920wrj.13
 for <intel-wired-lan@lists.osuosl.org>; Sat, 04 Jul 2020 09:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NGM5We0s6d91iAHT6ccX0Y+8JiIRTw5ExhXAZd/KucE=;
 b=DnNHdo+tr+7acCeB3NZNGPinQRrKbRX81uLIAqtL5Hkt/3NH6jV4gGOIFxZUdhPXJ3
 VPaI3R/0RsZ7/M9+bOEWBDmBixytA1fLy5NFct3WKqZfjVzWaWOXA7fuKI3qWCRUU8te
 urDZtriR2Xff+nOwTMemCtle3CH2b/MRLP2OHXjPLdKcqfZWpbUWezB3y5Q9k/azKuFC
 TJWcfJNHW1DTRx/rjXUcxD23vts4lMFHuaLDd3T/7MOPIFWcxft2CQHL4+ymm0neAX5M
 CmM5LCfw392tt+EEnwsm0wiNQsP/u7Mb0AEudQgZFrKnqVpT7YisWpBYRnmdqxK7ieze
 z2sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NGM5We0s6d91iAHT6ccX0Y+8JiIRTw5ExhXAZd/KucE=;
 b=Yl5FLj4whITscpUjRFvU6cwtyIGXYHyWHsbhU5f+Bn0YVk5A6mctk5QF/uLc0VLYaA
 TcHYtqaIXuEdiNA763mt8juLUa/N+5MKciNr8ptIQ2RQop2mesBibkLqgpQvC+6PLhUx
 qlOK6TupMOHmvA7UDq1nUwVjpdsHNzQ2RHZxBFifMytp4RAIPx20duWgKKnUb6gMa3lw
 zK1NcTAnPm9sgBGxp6BC+UJ2R8pjZ5m1awe1dWp9+wpdpaZEMU1nipYulYM085YhrWHm
 +RtH2QcemPAcfIIKqjBBcpwCC9AA6ywYM/bungZTv2PqQEIPQDDYYlfwIuWISMjWr8Q9
 gwhQ==
X-Gm-Message-State: AOAM5323U/9Z7Bca1PIpyQh92c2SN3P+4+X2h77ma/COb2Unv3eJyovX
 3q5+/JvYY0Qr0EQIdzVVcGKa4uNqYuGCXcA+yX0=
X-Google-Smtp-Source: ABdhPJxCG5R263EDYCqlklp/8pFwN2e0CRcdTF3YD9+FvcUrMqsic+O84r6XvCvWiGvxyIUtusxMqbrPX6uf876EGvY=
X-Received: by 2002:adf:ee0b:: with SMTP id y11mr18837573wrn.360.1593880636134; 
 Sat, 04 Jul 2020 09:37:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200703182010.1867-1-bruceshenzk@gmail.com>
 <CAKgT0Uc0sxRmADBozs3BvK2HFsDAcgzwUKWHyu91npQvyFRM1w@mail.gmail.com>
In-Reply-To: <CAKgT0Uc0sxRmADBozs3BvK2HFsDAcgzwUKWHyu91npQvyFRM1w@mail.gmail.com>
From: Zekun Shen <bruceshenzk@gmail.com>
Date: Sat, 4 Jul 2020 12:37:04 -0400
Message-ID: <CAHE_cOvFC4sjVvVuC-7A8Zqw6=uJP5AAUmZOk5sQ=7bD+ePpgA@mail.gmail.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH] net: fm10k: check size from dma region
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
Cc: Netdev <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Jul 04, 2020 at 09:05:48AM -0700, Alexander Duyck wrote:
> The upper limitation for the size should be 2K or FM10K_RX_BUFSZ, not
> PAGE_SIZE. Otherwise you are still capable of going out of bounds
> because the offset is used within the page to push the start of the
> region up by 2K.
PAGE_SIZE can drop the warning, as the dma allocated size is PAGE_SIZE.

> If this is actually fixing the warning it makes me wonder if the code
> performing the check is broken itself since we would still be
> accessing outside of the accessible DMA range.
The unbounded size is only passed to fm10k_add_rx_frag, which expects
and checks size to be less than FM10K_RX_HDR_LEN which is 256.

In this way, any boundary between 256 and 4K should work. I could address
that with a second version.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
