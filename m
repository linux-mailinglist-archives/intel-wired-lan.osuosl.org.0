Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C2471F3CC
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jun 2023 22:24:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E8A761586;
	Thu,  1 Jun 2023 20:24:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E8A761586
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685651075;
	bh=NUuaObrzrMtEzWRwy6ueQAFl85PUnU4MVpBY4fv599Q=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dP3Sx2gC5EMc8jf6C2NTUe9kKbupen7kAG9qXYeKmsycyncQ1NwTruwQmXjPB9xa3
	 kcNisf+7MkpLRfxm9vhG0wmpNpy2zdBx5J0j1U4UmRsmgmRObaqkFIiJWI+zSn02/6
	 hJBYhxqCRvTPMTS6T1S+JZZ08e6MvWLNez8sZ/o3Z282PPCpWL9KNNrBEe4I4f/Wuf
	 RPTdmBkZykTEBKUVkujmKkY7P2eSusWdrROGjuRD5SXWO2Q6MiSzIX2YWw9NTAKY7E
	 R4m3Za2VKzcztV5EabaTIUa2+1o1kN3+DJNx1CCtErZhZK2WXzjaCufkLZb9AjpMQs
	 Moe41gXvXfgwA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SO4BbUxsy6Cx; Thu,  1 Jun 2023 20:24:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BADEF60E2E;
	Thu,  1 Jun 2023 20:24:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BADEF60E2E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0CE361BF575
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 20:24:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E176A60E2E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 20:24:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E176A60E2E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i6OF53xqq-HP for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Jun 2023 20:24:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A278B60A81
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com
 [IPv6:2607:f8b0:4864:20::530])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A278B60A81
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 20:24:27 +0000 (UTC)
Received: by mail-pg1-x530.google.com with SMTP id
 41be03b00d2f7-54290603887so247314a12.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 01 Jun 2023 13:24:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685651067; x=1688243067;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=jr4QoGMO1QTzHP9BeseO541cUPfP+RsuPOsza+Ci6zg=;
 b=QZihluykTb6KRK8wiaW5CPV75RMf+S1d4aFYXOrbjNUu7ioRXjrjKMKbxmrlTRO6Me
 r2etWp+wrXMtCAn1t5y5f7YIUvFfkKLiPEZ+UyVqLz2Ou4FBa4tBQV5dDyqiA8JSNxBc
 in/zqZHcf8Ph513TaRYq/gqVQm4nWJK4Oan68Ift+zWeS7oyXyS2VSb7OjkteuzzW2q0
 e0vSQkWVvBez2qCDRtYFlc8G1un/7nDYqBixS+FJxLTwI/JYaKTOkmoxiZY6TJnpL+F5
 UnLDWBiG4myJmGc0bORUDhAIpGvpYrUCmgelAA8D1tTNPsmxSofe9RvPkyjGgx0mXzcO
 /H5g==
X-Gm-Message-State: AC+VfDwo65E1l6kDxSuS6kzsh4cx87fEj43dQ4xz2EAtSmSQjIMYd1Dg
 WxJMCzYkgsUZUBbFUB3PPJQ=
X-Google-Smtp-Source: ACHHUZ73Ubusk/S2VWgqOC4SdykzigIl9jroTRyTqEbZOYA6hn4V9gHTTznzcAG0r1MhWfSay382ug==
X-Received: by 2002:a17:903:2603:b0:1b1:bcc1:bcdb with SMTP id
 jd3-20020a170903260300b001b1bcc1bcdbmr23072plb.53.1685651066747; 
 Thu, 01 Jun 2023 13:24:26 -0700 (PDT)
Received: from ?IPv6:2605:59c8:448:b800:82ee:73ff:fe41:9a02?
 ([2605:59c8:448:b800:82ee:73ff:fe41:9a02])
 by smtp.googlemail.com with ESMTPSA id
 t14-20020a1709028c8e00b001b052483e9csm3898254plo.231.2023.06.01.13.24.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Jun 2023 13:24:26 -0700 (PDT)
Message-ID: <269262acfcce8eb1b85ee1fe3424a5ef2991f481.camel@gmail.com>
From: Alexander H Duyck <alexander.duyck@gmail.com>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com
Date: Thu, 01 Jun 2023 13:24:24 -0700
In-Reply-To: <20230601162537.1163270-1-kai.heng.feng@canonical.com>
References: <20230601162537.1163270-1-kai.heng.feng@canonical.com>
User-Agent: Evolution 3.44.4 (3.44.4-3.fc36) 
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1685651067; x=1688243067;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
 :date:message-id:reply-to;
 bh=jr4QoGMO1QTzHP9BeseO541cUPfP+RsuPOsza+Ci6zg=;
 b=dxhgsvLIy1s+XWMQCTe4+xlGB+vnb45lA6Lh/e+U/FPOFMSsIYKCAlmWKHZKA7o+ou
 xEdJ04wbVmkLV9mo8/IKkR9sGGVHQ/yYrheMbzknJhogN3Ld8SKhDk7g1Mc4HLpoXIJI
 huZVxAOXQ8yZkB5UTEIC/aSV86GrtltiamEuPf7ZrZTCLWyrTd/kXDDwSOpqFiOUHvuj
 bv+Smf92g/THGIV2uuKEIdAwkcH/C/9VQJ2msvWja1E2BT139RiUMFAbf0T25JEnAhE/
 /xwYwEqwGdieHB7zYcQHYH8UXIHJj4/7c1ooecRq3eOi9BkWY0+4JfxLSyp6P33DHXIo
 t/IA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=dxhgsvLI
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Use PME poll to circumvent
 unreliable ACPI wake
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
Cc: linux-pm@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 2023-06-02 at 00:25 +0800, Kai-Heng Feng wrote:
> On some I219 devices, ethernet cable plugging detection only works once
> from PCI D3 state. Subsequent cable plugging does set PME bit correctly,
> but device still doesn't get woken up.

Do we have a root cause on why things don't get woken up? This seems
like an issue where something isn't getting reset after the first
wakeup and so future ones are blocked.

> Since I219 connects to the root complex directly, it relies on platform
> firmware (ACPI) to wake it up. In this case, the GPE from _PRW only
> works for first cable plugging but fails to notify the driver for
> subsequent plugging events.
> 
> The issue was originally found on CNP, but the same issue can be found
> on ADL too. So workaround the issue by continuing use PME poll after
> first ACPI wake. As PME poll is always used, the runtime suspend
> restriction for CNP can also be removed.
> 
> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index bd7ef59b1f2e..f0e48f2bc3a2 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -7021,6 +7021,8 @@ static __maybe_unused int e1000e_pm_runtime_resume(struct device *dev)
>  	struct e1000_adapter *adapter = netdev_priv(netdev);
>  	int rc;
>  
> +	pdev->pme_poll = true;
> +
>  	rc = __e1000_resume(pdev);
>  	if (rc)
>  		return rc;

Doesn't this enable this too broadly. I know there are a number of
devices that run under the e1000e and I would imagine that we don't
want them all running with "pme_poll = true" do we?

It seems like at a minimum we should only be setting this for specific
platofrms or devices instead of on all of them.

Also this seems like something we should be setting on the suspend side
since it seems to be clared in the wakeup calls.

Lastly I am not sure the first one is necessarily succeding. You might
want to check the status of pme_poll before you run your first test.
From what I can tell it looks like the initial state is true in
pci_pm_init. If so it might be getting cleared after the first wakeup
which is what causes your issues.

> @@ -7682,7 +7684,7 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  
>  	dev_pm_set_driver_flags(&pdev->dev, DPM_FLAG_SMART_PREPARE);
>  
> -	if (pci_dev_run_wake(pdev) && hw->mac.type != e1000_pch_cnp)
> +	if (pci_dev_run_wake(pdev))
>  		pm_runtime_put_noidle(&pdev->dev);
>  
>  	return 0;

I assume this is the original workaround that was put in to address
this issue. Perhaps you should add a Fixes tag to this to identify
which workaround this patch is meant to be replacing.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
