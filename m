Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E70730B19F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Feb 2021 21:33:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 258F087003;
	Mon,  1 Feb 2021 20:33:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1bgrQX+ak3nz; Mon,  1 Feb 2021 20:33:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 847F686FF2;
	Mon,  1 Feb 2021 20:33:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D1D1B1BF35E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Feb 2021 20:33:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C9A9F85D57
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Feb 2021 20:33:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZJZncjCZFsK1 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Feb 2021 20:33:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 59F2085D26
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Feb 2021 20:33:52 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 98CE964E9E;
 Mon,  1 Feb 2021 20:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612211631;
 bh=YbB8zbhMG18OcGdWvLx/HSeTnjJWEAJ0k9nKhQ2F0XQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=uy2koLzW2WRGUAUIce1HfVOKiKHDCv2p3fhigkHJ5BDlkuGMQfAes1NL66aKC7l1r
 ZFOGYN1sWt18rzwtth4RVN9hnoAX7i6TdITve5WcGI3Rpq0S9lUyqPPPd+LS6z6+1F
 4qY2nVAPaVjh88cCybVguGBpFmnJbPLkq7R+T4+MmRFQtbO09sQombpqzW+2cQUzeh
 UZJoI2il1IiJmBynucTYODUZEexAiuaE5m1XdRgVodEQx8OHlIjZ7lwKwuTUq3a2CS
 DzljJ6sw6Wpj5q6xfy5PNjyxxtMEtwXAipycQzBZ43bWleZxKYimpjcyHS3YeVVA1/
 BzZifb6pvdRyA==
Date: Mon, 1 Feb 2021 12:33:50 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Nick Lowe <nick.lowe@gmail.com>
Message-ID: <20210201123350.159feabd@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <CADSoG1vn-T3ZL0uZSR-=TnGDdcqYDXjuAxqPaHb0HjKYSuQwXg@mail.gmail.com>
References: <20201221222502.1706-1-nick.lowe@gmail.com>
 <379d4ef3-02e5-f08a-1b04-21848e11a365@bluematt.me>
 <20210201084747.2cb64c3f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <a7a89e90bf6c3f383fa236b1128db8d012223da0.camel@intel.com>
 <20210201114545.6278ae5c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <69e92a09-d597-2385-2391-fee100464c59@bluematt.me>
 <CADSoG1vn-T3ZL0uZSR-=TnGDdcqYDXjuAxqPaHb0HjKYSuQwXg@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net] igb: Enable RSS for Intel I211
 Ethernet Controller
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Matt Corallo <linux-wired-list@bluematt.me>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 1 Feb 2021 20:23:51 +0000 Nick Lowe wrote:
> I personally tested with mainline and 5.10, but not 5.4

My preference would be to merge into net-next, and then do the
backport after 5.11 is released.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
