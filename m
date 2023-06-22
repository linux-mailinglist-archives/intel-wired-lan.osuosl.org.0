Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3525573995C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jun 2023 10:23:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4DA5883B76;
	Thu, 22 Jun 2023 08:23:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DA5883B76
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687422191;
	bh=NmXMfVNisW2aJRdf2fQ2qeGcMRDv/fpz48o09b8lrZ8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xMmUwPN5PtzmYVxZmwKk0DzQxzsQQScqQdxNu3j4HT1g6/0XvwLMSm6qX4CkJDfOA
	 L7OWLRIBQrOtaxdzs4jiaq/ueLyk+bvZyLFqzozflHOzIDVOcD//UenVep8D6XUdoq
	 r47lBBiadpRxcTBWUI1uTi9W07ZFsdnWmRenzpoz0M68cMMhmG0znYSi55mOeaSc1z
	 Cu0XOz1Rw/3F1pE+V1mN7okEZJ2vAqOAjblPXEFFnWKHF2oHhcaMhM7zrIGvVVkP5x
	 FhWly+PEP4mAWrnVimUu6oyhQ01F42tYaR/DUcZHEllFjaGTpqgAJB2dVVWqBU9RLk
	 tcUrUnaJ0wHhA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gFluMyMj2Qci; Thu, 22 Jun 2023 08:23:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2432F83B67;
	Thu, 22 Jun 2023 08:23:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2432F83B67
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 661941BF336
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 08:23:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4B55060E8F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 08:23:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B55060E8F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vhhMBxqM0ggi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jun 2023 08:23:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7AB2960E61
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7AB2960E61
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 08:23:01 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 5b1f17b1804b1-3f9bff0a543so15887305e9.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 01:23:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687422180; x=1690014180;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=aieGnSRt/Al2RSH4zix5cydCGGwAPEa4pZ2MuD6YlxU=;
 b=XXL2i1lJUrOhyoPrNXx/FjDL1+572l4af0T4Rlj/KUf1dmIc9gvJ2krUMGp5XvG2V5
 Kl5HqEKBk7fiDC9QQ8BtWFfsHlViZIIGL2HuNDuCOD5RXFT7ZYlYmJMkZixvaCnJoCG8
 DcOp75J3IArU+/kgcux/uWRKt1qV9szYeX/Fdaga3DEeiB0qG/ANIxBE470IMPqoiDdl
 9VK7w42AFd5HDo0q6WX8kbAa/XlLp51mZ/O2kA60fkb6kUYd/bEAENpJuDm+y7QnCnBa
 xNpRtnfUaL1sCdq5bMi+TT7KMrY1WFud6aS/jy+LvPRVlHMEpJPHH98l4S7uq0xDGavv
 Yetg==
X-Gm-Message-State: AC+VfDxqdJmOTY/jePKb/LqY04dlvkd7XqtXDvLD/xXpJ3SyuZjRuZI6
 pyn38lWS4YBj7holyC23j1/lZA==
X-Google-Smtp-Source: ACHHUZ7Eb8abrSnKsPkGKg/b3Yq3hgltd8UBrqBkk6qCafAWFFSZ5neoD4ghj/pKM56a8gdLRWHhvA==
X-Received: by 2002:a1c:750a:0:b0:3f7:cb42:fa28 with SMTP id
 o10-20020a1c750a000000b003f7cb42fa28mr14287444wmc.28.1687422179974; 
 Thu, 22 Jun 2023 01:22:59 -0700 (PDT)
Received: from localhost ([86.61.181.4]) by smtp.gmail.com with ESMTPSA id
 l5-20020a1ced05000000b003f70a7b4537sm18098727wmh.36.2023.06.22.01.22.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Jun 2023 01:22:58 -0700 (PDT)
Date: Thu, 22 Jun 2023 10:22:58 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Piotr Gardocki <piotrx.gardocki@intel.com>
Message-ID: <ZJQE4ieud5Mf8iGi@nanopsycho>
References: <20230621132106.991342-1-piotrx.gardocki@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230621132106.991342-1-piotrx.gardocki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1687422180; x=1690014180; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=aieGnSRt/Al2RSH4zix5cydCGGwAPEa4pZ2MuD6YlxU=;
 b=kWz5+kgIc/E2hEpLAVbY5+omy7+x1NqoWi+Cf8iKlWuYQr+lQIMlAgGjJDwT3tkWf2
 C56myJOOPRd5wEB9tI3tsxFTbbSSqhp9SSgArvELQJatEl9tviyIzFuV5JePmA0s5rrV
 wZ0JuO9iYLrjDYW9g0Yfup1zZOMAAEH/FC37I6kjQqd1O3O/FnmwhL/fdtYnvocOmTb7
 g/k4WBSYP3x7NfgS1XV4n7YIpFlfxT2IP5O5rCMpdtSZ2N+xSlvNmV+kqESGj5pw03Iz
 LKY61jhR/UcDS0lqRDkUhuzBZc1KFyIhJ6GOjbglN76Sz0kbkmF75yF01F7WL3xH4i/I
 ylFw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=kWz5+kgI
Subject: Re: [Intel-wired-lan] [PATCH net-next] net: fix net device address
 assign type
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, gal@nvidia.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 simon.horman@corigine.com, przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Wed, Jun 21, 2023 at 03:21:06PM CEST, piotrx.gardocki@intel.com wrote:
>Commit ad72c4a06acc introduced optimization to return from function

Out of curiosity, what impact does this optimization have? Is it worth
it to have such optimization at all? Wouldn't simple revert of the fixes
commit do the trick? If not, see below.


>quickly if the MAC address is not changing at all. It was reported
>that such change causes dev->addr_assign_type to not change
>to NET_ADDR_SET from _PERM or _RANDOM.
>Restore the old behavior and skip only call to ndo_set_mac_address.
>
>Fixes: ad72c4a06acc ("net: add check for current MAC address in dev_set_mac_address")
>Reported-by: Gal Pressman <gal@nvidia.com>
>Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>
>---
> net/core/dev.c | 10 +++++-----
> 1 file changed, 5 insertions(+), 5 deletions(-)
>
>diff --git a/net/core/dev.c b/net/core/dev.c
>index e4ff0adf5523..69a3e544676c 100644
>--- a/net/core/dev.c
>+++ b/net/core/dev.c
>@@ -8781,14 +8781,14 @@ int dev_set_mac_address(struct net_device *dev, struct sockaddr *sa,
> 		return -EINVAL;
> 	if (!netif_device_present(dev))
> 		return -ENODEV;
>-	if (!memcmp(dev->dev_addr, sa->sa_data, dev->addr_len))
>-		return 0;
> 	err = dev_pre_changeaddr_notify(dev, sa->sa_data, extack);
> 	if (err)
> 		return err;
>-	err = ops->ndo_set_mac_address(dev, sa);
>-	if (err)
>-		return err;
>+	if (memcmp(dev->dev_addr, sa->sa_data, dev->addr_len)) {
>+		err = ops->ndo_set_mac_address(dev, sa);
>+		if (err)
>+			return err;
>+	}
> 	dev->addr_assign_type = NET_ADDR_SET;
> 	call_netdevice_notifiers(NETDEV_CHANGEADDR, dev);

Although I don't think the notifiers here and
dev_pre_changeaddr_notify() above have to be called in case the address
didn't actually change, it restores the old behaviour, even with the
netlink notification, which is probably good.

Reviewed-by: Jiri Pirko <jiri@nvidia.com>


> 	add_device_randomness(dev->dev_addr, dev->addr_len);
>-- 
>2.34.1
>
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
