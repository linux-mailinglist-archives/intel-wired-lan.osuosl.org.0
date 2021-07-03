Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E9CAF3BA78D
	for <lists+intel-wired-lan@lfdr.de>; Sat,  3 Jul 2021 08:38:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 696BF842DD;
	Sat,  3 Jul 2021 06:38:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dCUklmZbiopF; Sat,  3 Jul 2021 06:37:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F7AB839E5;
	Sat,  3 Jul 2021 06:37:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3C6841BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Jul 2021 06:37:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 266C6423DE
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Jul 2021 06:37:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AwbNCXarj4iz for <intel-wired-lan@lists.osuosl.org>;
 Sat,  3 Jul 2021 06:37:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com
 [IPv6:2607:f8b0:4864:20::434])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D803E42369
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Jul 2021 06:37:53 +0000 (UTC)
Received: by mail-pf1-x434.google.com with SMTP id y4so11251475pfi.9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 02 Jul 2021 23:37:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=kPmM0qinLJ8na3gWM6Uf/E9DwBH1wNRut0xI6oRNTzo=;
 b=F4WvyAQ+b/JCUbISfeVgg0jP/xWSM0rPGQu2dBDOH6E4BJ15gelzX5ktkHex6eIwip
 ZDAaRzapPcmI59Humu7exhfMsSKSs4ZMFnNY8LszEnzLGbZUxPE5G0WBCH246rEpU/36
 JVWNWBF4zNbUEqISjT9o3HEBIGOBMgo2owRUgRz2EDOfH4T5MEKjC4CFHTBrte9B0CHc
 eSAeVVyJsawzkWekJGSe6JbUtYSm4Tuhz6+nerLXU7Lc1WX8x6xtwL9wK9MlYBCz5Jhz
 ArqUOtKmUaOfrxeEC77/HI5YghEU3wKWO42O5qX1YlLBFz4919aRcKb6UGb7nYA8v/sj
 hHGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kPmM0qinLJ8na3gWM6Uf/E9DwBH1wNRut0xI6oRNTzo=;
 b=ll6z6EPxvh0cgkTZohKLLijwD0siDI7rSLc/VJqQyR09yQo0lwTFkDWwvzfp+zTDC5
 ukb5zPPQiFM4NItyw9nLmfmb5KSupCAL3LNJRSM4qnKRot1fp/RNf+yRZkVBRodgUh9X
 D+LO5Y7jm+/MOx186ramWm7JB7G85Co/owTID/XR5UZQa8Kn9/0f0sYenC2LWP2zUmlw
 LclQ7HWDfh3F01LXiIyRTAaBkGSZoCdHiwRHZ8PV8iBXVOcM1G143Zz9KtEZF+5L41WE
 +4oxIGcxKTh7TggB0NJga2peyj9rer4r7kFOfZUAz3EyIXFLxZzEk+N5Xwjyo1a19/tf
 wAig==
X-Gm-Message-State: AOAM533J/TrcWNloJoFCi1q7wTfUswnerga5mg5ePS1Mbwiq32odFQmg
 d/lIh8bJWNFU7ID43r4F9i2HKvSsThrl/g==
X-Google-Smtp-Source: ABdhPJw/YceierdDjCSnrf8pnkzyeG2vdUx2HVSaBSWuBA6mrC+rC3S2zx9k9cQltwDqt0WLBMk6mQ==
X-Received: by 2002:a65:648f:: with SMTP id e15mr3870824pgv.165.1625294272800; 
 Fri, 02 Jul 2021 23:37:52 -0700 (PDT)
Received: from [172.30.1.44] ([211.250.74.184])
 by smtp.gmail.com with ESMTPSA id p29sm5544713pfq.55.2021.07.02.23.37.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 02 Jul 2021 23:37:52 -0700 (PDT)
To: Jay Vosburgh <jay.vosburgh@canonical.com>
References: <20210702142648.7677-1-ap420073@gmail.com>
 <20210702142648.7677-7-ap420073@gmail.com> <14149.1625260463@famine>
From: Taehee Yoo <ap420073@gmail.com>
Message-ID: <27082299-0436-2f95-11b9-9ba7077f165e@gmail.com>
Date: Sat, 3 Jul 2021 15:37:48 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <14149.1625260463@famine>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net 6/8] bonding: disallow setting
 nested bonding + ipsec offload
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
Cc: netdev@vger.kernel.org, vfalico@gmail.com, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net, andy@greyhouse.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jay,
Thank you for your review!

On 7/3/21 6:14 AM, Jay Vosburgh wrote:
 > Taehee Yoo <ap420073@gmail.com> wrote:
 >
 >> bonding interface can be nested and it supports ipsec offload.
 >> So, it allows setting the nested bonding + ipsec scenario.
 >> But code does not support this scenario.
 >> So, it should be disallowed.
 >>
 >> interface graph:
 >> bond2
 >> |
 >> bond1
 >> |
 >> eth0
 >>
 >> The nested bonding + ipsec offload may not a real usecase.
 >> So, disallowing this is fine.
 >
 > 	Is a stack like "bond1 -> VLAN.XX -> bond2 -> eth0" also a
 > problem?  I don't believe the change below will detect this
 > configuration.
 >

Except bonding, all kind of virtual interfaces(vlan, team, etc) doesn't 
support ipsec offload.
It means these interfaces' xfrmdev_ops pointer is null.
So, configuration always will be failed at the following line.
         if (!slave->dev->xfrmdev_ops || 

             !slave->dev->xfrmdev_ops->xdo_dev_state_add || 

Only checking the real interface's type is enough.
So, bond1 can't set up ipsec offload but bond2 can set up ipsec offload.


Thanks a lot!
Taehee

 > 	-J
 >
 >> Fixes: 18cb261afd7b ("bonding: support hardware encryption offload 
to slaves")
 >> Signed-off-by: Taehee Yoo <ap420073@gmail.com>
 >> ---
 >> drivers/net/bonding/bond_main.c | 15 +++++++++------
 >> 1 file changed, 9 insertions(+), 6 deletions(-)
 >>
 >> diff --git a/drivers/net/bonding/bond_main.c 
b/drivers/net/bonding/bond_main.c
 >> index 7659e1fab19e..f268e67cb2f0 100644
 >> --- a/drivers/net/bonding/bond_main.c
 >> +++ b/drivers/net/bonding/bond_main.c
 >> @@ -419,8 +419,9 @@ static int bond_ipsec_add_sa(struct xfrm_state *xs)
 >> 	xs->xso.real_dev = slave->dev;
 >> 	bond->xs = xs;
 >>
 >> -	if (!(slave->dev->xfrmdev_ops
 >> -	      && slave->dev->xfrmdev_ops->xdo_dev_state_add)) {
 >> +	if (!slave->dev->xfrmdev_ops ||
 >> +	    !slave->dev->xfrmdev_ops->xdo_dev_state_add ||
 >> +	    netif_is_bond_master(slave->dev)) {
 >> 		slave_warn(bond_dev, slave->dev, "Slave does not support ipsec 
offload\n");
 >> 		rcu_read_unlock();
 >> 		return -EINVAL;
 >> @@ -453,8 +454,9 @@ static void bond_ipsec_del_sa(struct xfrm_state *xs)
 >>
 >> 	xs->xso.real_dev = slave->dev;
 >>
 >> -	if (!(slave->dev->xfrmdev_ops
 >> -	      && slave->dev->xfrmdev_ops->xdo_dev_state_delete)) {
 >> +	if (!slave->dev->xfrmdev_ops ||
 >> +	    !slave->dev->xfrmdev_ops->xdo_dev_state_delete ||
 >> +	    netif_is_bond_master(slave->dev)) {
 >> 		slave_warn(bond_dev, slave->dev, "%s: no slave 
xdo_dev_state_delete\n", __func__);
 >> 		goto out;
 >> 	}
 >> @@ -479,8 +481,9 @@ static bool bond_ipsec_offload_ok(struct sk_buff 
*skb, struct xfrm_state *xs)
 >> 	if (BOND_MODE(bond) != BOND_MODE_ACTIVEBACKUP)
 >> 		return true;
 >>
 >> -	if (!(slave_dev->xfrmdev_ops
 >> -	      && slave_dev->xfrmdev_ops->xdo_dev_offload_ok)) {
 >> +	if (!slave_dev->xfrmdev_ops ||
 >> +	    !slave_dev->xfrmdev_ops->xdo_dev_offload_ok ||
 >> +	    netif_is_bond_master(slave_dev)) {
 >> 		slave_warn(bond_dev, slave_dev, "%s: no slave 
xdo_dev_offload_ok\n", __func__);
 >> 		return false;
 >> 	}
 >> --
 >> 2.17.1
 >>
 >
 > ---
 > 	-Jay Vosburgh, jay.vosburgh@canonical.com
 >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
