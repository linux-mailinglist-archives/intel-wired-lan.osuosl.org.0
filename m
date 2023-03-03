Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 065CB6A9E43
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Mar 2023 19:16:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 227C34168E;
	Fri,  3 Mar 2023 18:16:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 227C34168E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677867395;
	bh=DyaILZi0cVvNkbgnKKRUwPfC76s6scmId7oDG7t6bz4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZKRecEil54VgAYqWlyoUZ3AIHRNqZ1byhpjnCLa5nDGw84PT0hqu6jhn8tYYlFDnn
	 CCQrFCNWKccwRODKWH2fGkQfHLM5cNZuqd91iTDOzHr4hlufhmLmn0ATe/ZYIRyOs1
	 vz41GwfHu77YIW5ZU/M+2T3NjFpbWt1tgIyq9ZFEgDYr0LmIcsj12hkNQmCwotonAZ
	 bjUl2ZlMNViC6UAkqSuUMyEzEdEjdb4zPqvKg9DvNHw8DbmjsyiKLERvznTH4z1fXQ
	 90nKgnireyysBeODBJQvJQubd8edj2ufy1B8KXdnd5V4YvVQX2DcAcMuiDmIsK2GwO
	 hpFzE8xRh2P+w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K0uJGZSyQmeE; Fri,  3 Mar 2023 18:16:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E996640407;
	Fri,  3 Mar 2023 18:16:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E996640407
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5BD1E1BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 18:01:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 40D38822C4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 18:01:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 40D38822C4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IXZ-JO72p0J3 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Mar 2023 18:01:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1EE96822C6
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1EE96822C6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 18:01:52 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id l25so3130952wrb.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 03 Mar 2023 10:01:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1677866510;
 h=in-reply-to:references:cc:to:from:subject:message-id:date
 :content-transfer-encoding:mime-version:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=BEHt2nqbh8iSr8N+DHlVLwrkMHgGpGHvyGaNrMsaTek=;
 b=2M4mLD4LtPzlsJmzjgQcHDsiEw+0AI0o7PvvRRktbbSQPJ6E+VuMWguptInrOeZshM
 Ma+l8xSmS/84shRuXyaDzwTSerriOJ3ooswS1gAQYgr9rkHZVK6CyzEzJN4XH3cr5kH3
 WXtweW1TklRzCnWB43OGklavX9mky28+AQRhyHTeO5oCPhU6P+ullwFsKAaQ3A5kfzu4
 VMYUtJFAfoh8e/C6qoga3GjFgDbHQZ1z7+wVK1kxcSrtwIqRilC7BHIcDtM6DUiwx6qy
 6TPTpfAHQkxwRL1o0AJT57CYZKMPhdJW1mpMGxAQjzHcDEN0IS2y+wk28deECuCi72g5
 Q6aQ==
X-Gm-Message-State: AO0yUKXucEK4pO21a+wBkUasOTvsX6vzEFadNX2KYu5VofPf4gujCUVO
 v+qLTylfAvMDtQA9MCW+GZI=
X-Google-Smtp-Source: AK7set8H6vRsK8VR8aFhQ06k8RjPQuWBqUGuXiqsKp34zmquuUsytzOFw9Gd4+AfjI6DVapHQXGIKQ==
X-Received: by 2002:adf:df04:0:b0:2c7:169b:c56d with SMTP id
 y4-20020adfdf04000000b002c7169bc56dmr2066766wrl.17.1677866509977; 
 Fri, 03 Mar 2023 10:01:49 -0800 (PST)
Received: from localhost ([2001:b07:5d37:537d:5e25:9ef5:7977:d60c])
 by smtp.gmail.com with ESMTPSA id
 m14-20020adffe4e000000b002c54c8e70b1sm2883865wrs.9.2023.03.03.10.01.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 03 Mar 2023 10:01:49 -0800 (PST)
Mime-Version: 1.0
Date: Fri, 03 Mar 2023 19:01:48 +0100
Message-Id: <CQWY1CVZCN1L.12KQJHY2ALZN8@vincent-arch>
From: "Vincenzo Palazzo" <vincenzopalazzodev@gmail.com>
To: "Paul Menzel" <pmenzel@molgen.mpg.de>
X-Mailer: aerc 0.14.0
References: <20230303150818.132386-1-vincenzopalazzodev@gmail.com>
 <bd0a8066-9360-7440-9705-68118eb5e0ff@molgen.mpg.de>
In-Reply-To: <bd0a8066-9360-7440-9705-68118eb5e0ff@molgen.mpg.de>
X-Mailman-Approved-At: Fri, 03 Mar 2023 18:16:30 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1677866510;
 h=in-reply-to:references:cc:to:from:subject:message-id:date
 :content-transfer-encoding:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=BEHt2nqbh8iSr8N+DHlVLwrkMHgGpGHvyGaNrMsaTek=;
 b=K/fh8E76hHdCMDt7xTSKSd/lIyTQD3rivncuKODPEHLpFaQ3GnQYErje8gOQ4Ovt9v
 RwP4MwqXkuzrWCphhWnpJYdM3XStcPPnvuG8XuZXnuMsRYw6mOVVBtGK0/8C2q9J1WKK
 Z9A+xDkocZ9cZ6uLjYN82skBAA7T3nYc2Ynl8p/7GHrQHU1edhuKoL2CYY4PPaCXHZr1
 oY+qi7/cmIba2UJwuPAs7z3Bywj3K24/5ZLGLviPNdeyHa+gvbHQamzSrOvmxDKIM20J
 BcUz50Sg5nKnyNXg3Qo8rr6nB+6vw/t5bBKhKV2xum3RJHMsaL9KyOUI0sJTKEVhMLyz
 bBmA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=K/fh8E76
Subject: Re: [Intel-wired-lan] [PATCH v1] netdevice: use ifmap isteand of
 plain fields
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Linus Torvalds <torvalds@linux-foundation.org>, davem@davemloft.net,
 jesse.brandeburg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri Mar 3, 2023 at 5:48 PM CET, Paul Menzel wrote:
> Dear Vincenzo,
>
>
> Thank you for your patch. There is a small typo in the commit message 
> summary in *instead*.
>
Ah, I also tried to pay attention to avoid typo! Sorry, I will made a v2.

> Am 03.03.23 um 16:08 schrieb Vincenzo Palazzo:
> > clean the code by using the ifmap instead of plain fields,
> > and avoid code duplication.
> > 
> > P.S: I'm giving credit to the author of the FIXME commit.
>
> No idea, what you mean exactly, but you can do that by adding From: in 
> the first line of the commit message body.
>

I ran git blame to find the comment author because the 
refactoring was suggested by the FIXME, but it turn out that was a very
historical one (before git) as Linus point out git blame is wrong in
this case. I will also fix this in the v2

Cheers!

Vincent.


>
> > Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
> > Signed-off-by: Vincenzo Palazzo <vincenzopalazzodev@gmail.com>
> > ---
> >   drivers/net/ethernet/intel/e1000e/netdev.c |  4 ++--
> >   include/linux/netdevice.h                  |  8 +-------
> >   net/core/dev_ioctl.c                       | 12 ++++++------
> >   net/core/rtnetlink.c                       |  6 +++---
> >   4 files changed, 12 insertions(+), 18 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> > index e1eb1de88bf9..059ff8bcdbbc 100644
> > --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> > +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> > @@ -7476,8 +7476,8 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> >   	netif_napi_add(netdev, &adapter->napi, e1000e_poll);
> >   	strscpy(netdev->name, pci_name(pdev), sizeof(netdev->name));
> >   
> > -	netdev->mem_start = mmio_start;
> > -	netdev->mem_end = mmio_start + mmio_len;
> > +	netdev->dev_mapping.mem_start = mmio_start;
> > +	netdev->dev_mapping.mem_end = mmio_start + mmio_len;
> >   
> >   	adapter->bd_number = cards_found++;
> >   
> > diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
> > index 6a14b7b11766..c5987e90a078 100644
> > --- a/include/linux/netdevice.h
> > +++ b/include/linux/netdevice.h
> > @@ -2031,13 +2031,7 @@ struct net_device {
> >   	char			name[IFNAMSIZ];
> >   	struct netdev_name_node	*name_node;
> >   	struct dev_ifalias	__rcu *ifalias;
> > -	/*
> > -	 *	I/O specific fields
> > -	 *	FIXME: Merge these and struct ifmap into one
> > -	 */
> > -	unsigned long		mem_end;
> > -	unsigned long		mem_start;
> > -	unsigned long		base_addr;
> > +	struct ifmap dev_mapping;
> >   
> >   	/*
> >   	 *	Some hardware also needs these fields (state,dev_list,
> > diff --git a/net/core/dev_ioctl.c b/net/core/dev_ioctl.c
> > index 5cdbfbf9a7dc..89469cb97e35 100644
> > --- a/net/core/dev_ioctl.c
> > +++ b/net/core/dev_ioctl.c
> > @@ -88,9 +88,9 @@ static int dev_getifmap(struct net_device *dev, struct ifreq *ifr)
> >   	if (in_compat_syscall()) {
> >   		struct compat_ifmap *cifmap = (struct compat_ifmap *)ifmap;
> >   
> > -		cifmap->mem_start = dev->mem_start;
> > -		cifmap->mem_end   = dev->mem_end;
> > -		cifmap->base_addr = dev->base_addr;
> > +		cifmap->mem_start = dev->dev_mapping.mem_start;
> > +		cifmap->mem_end   = dev->dev_mapping.mem_end;
> > +		cifmap->base_addr = dev->dev_mapping.base_addr;
> >   		cifmap->irq       = dev->irq;
> >   		cifmap->dma       = dev->dma;
> >   		cifmap->port      = dev->if_port;
> > @@ -98,9 +98,9 @@ static int dev_getifmap(struct net_device *dev, struct ifreq *ifr)
> >   		return 0;
> >   	}
> >   
> > -	ifmap->mem_start  = dev->mem_start;
> > -	ifmap->mem_end    = dev->mem_end;
> > -	ifmap->base_addr  = dev->base_addr;
> > +	ifmap->mem_start  = dev->dev_mapping.mem_start;
> > +	ifmap->mem_end    = dev->dev_mapping.mem_end;
> > +	ifmap->base_addr  = dev->dev_mapping.base_addr;
> >   	ifmap->irq        = dev->irq;
> >   	ifmap->dma        = dev->dma;
> >   	ifmap->port       = dev->if_port;
> > diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
> > index 5d8eb57867a9..ff8fc1bbda31 100644
> > --- a/net/core/rtnetlink.c
> > +++ b/net/core/rtnetlink.c
> > @@ -1445,9 +1445,9 @@ static int rtnl_fill_link_ifmap(struct sk_buff *skb, struct net_device *dev)
> >   	struct rtnl_link_ifmap map;
> >   
> >   	memset(&map, 0, sizeof(map));
> > -	map.mem_start   = dev->mem_start;
> > -	map.mem_end     = dev->mem_end;
> > -	map.base_addr   = dev->base_addr;
> > +	map.mem_start   = dev->dev_mapping.mem_start;
> > +	map.mem_end     = dev->dev_mapping.mem_end;
> > +	map.base_addr   = dev->dev_mapping.base_addr;
> >   	map.irq         = dev->irq;
> >   	map.dma         = dev->dma;
> >   	map.port        = dev->if_port;

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
