Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8F6357073
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Apr 2021 17:37:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9C9741856;
	Wed,  7 Apr 2021 15:37:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lguVpCnYOoCq; Wed,  7 Apr 2021 15:37:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB66F41855;
	Wed,  7 Apr 2021 15:37:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 37D201BF41D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 15:37:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 23B4C40210
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 15:37:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EAXO-_HHClAC for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Apr 2021 15:37:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7A650400AF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 15:37:50 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id C0A6E6112F;
 Wed,  7 Apr 2021 15:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617809870;
 bh=Qcnl1c4/Lap8XLlLJfybJvApxSxiWOM2q8GsKIuZkpo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=VeofZoFg1YoJn7MtmogtTFVgvCconFdDaKkQXpwd079sn2r/JfA5wBIvmO9hht/8d
 oJG8/yKOwMTFlp/kQZdidvf1E+D2mqkyoyBmqYAj3pL6AfZef1jcAdio2oSJMJBdt6
 UwPHQ2+MDXv1MWkTea20nwQ+lOxbGPANOKgTTfXAHcrnzUBz24KqxCPVz+nrjrf7d2
 YhOmCMmfCOL5KyE1HLHvcgy+JIK6buUCcCxYXDryvHqdB2cJ/q4Tk7lhSiiiQLh1P7
 f/IfHZZfTruYkxJTCMHyguWivXY9EWW1DwL5AnzWBwZy0q5Q1h0Vq9+rdOse8fmrRt
 r7KlPkRUonZJg==
Date: Wed, 7 Apr 2021 08:37:48 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Oleksandr Natalenko <oleksandr@natalenko.name>
Message-ID: <20210407083748.56b9c261@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210407060053.wyo75mqwcva6w6ci@spock.localdomain>
References: <20210406123619.rhvtr73xwwlbu2ll@spock.localdomain>
 <20210406114734.0e00cb2f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20210407060053.wyo75mqwcva6w6ci@spock.localdomain>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [igb] netconsole triggers warning in
 netpoll_poll_dev
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 7 Apr 2021 08:00:53 +0200 Oleksandr Natalenko wrote:
> Thanks for the effort, but reportedly [1] it made no difference,
> unfortunately.
> 
> [1] https://bugzilla.kernel.org/show_bug.cgi?id=212573#c8

The only other option I see is that somehow the NAPI has no rings.

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index a45cd2b416c8..24568adc2fb1 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -7980,7 +7980,7 @@ static int igb_poll(struct napi_struct *napi, int budget)
        struct igb_q_vector *q_vector = container_of(napi,
                                                     struct igb_q_vector,
                                                     napi);
-       bool clean_complete = true;
+       bool clean_complete = q_vector->tx.ring || q_vector->rx.ring;
        int work_done = 0;
 
 #ifdef CONFIG_IGB_DCA
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
