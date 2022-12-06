Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A07C964413F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Dec 2022 11:28:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7B27C408E3;
	Tue,  6 Dec 2022 10:28:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B27C408E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670322536;
	bh=0M076l5H7oX2GAtwoig0A5UIoNuYPBiAvSh/cSZ4jaw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Haxf8bJ7OlAjqNDnrIzrP3ejJCFIslTkPr26NUVYQDmjfRmgTshFAba8Ea6D5fbqE
	 wCKbQ2U2x0o4lPsZmIBxfuBSn4E01qXjbWZk1nGTnafhTA2qRX+bIZDZ+bRW69UbJ1
	 OnkIpOaqI4LV31tmkAmmXqQOfBopqvXWTaW5AtwMqcu0CKdMyzg7q65lKbe46W0P3i
	 GlSTx/9qeV6SlyYj/jQZLd/adbzZTevCM8bJ4QbjwFGWldDeX3LqbkI2aQyHjRy2dw
	 ZUDc29pm8HzQZAIwzEyn/bt+aYvvy1nXDVSCd3+eQC/6aQYaQVRYCZQ05CD1ONh3to
	 fZUG9Q6msmmyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8RMtEgtnbjsh; Tue,  6 Dec 2022 10:28:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8FFAA40641;
	Tue,  6 Dec 2022 10:28:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8FFAA40641
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A8F661BF215
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 10:28:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8FE1F41694
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 10:28:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8FE1F41694
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oW-2nPRNr7Nr for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Dec 2022 10:28:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E235A41686
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E235A41686
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 10:28:48 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id t17so5132871eju.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 06 Dec 2022 02:28:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jCEM+y7m5f5Vlw5yuLAzR/mUK1WXLosujaDAqDy6DB0=;
 b=SJ+tPbQg76vgZO//xt/XfAbLNP/gipEKYV8o0CgNt6t/hfAnDPYpfTRo1HmDWw3gt7
 U+/RTarBvqj2qXfasV0LE80+qmK8SfVPxkstGJFVBGCYOy9FMoKlaRtUvwzeDVkllFK+
 MO+slZoEqQjHSJiaBf8ltfDt7UmJpfAeC+ZRJjGIWwA1mTCl0uyd0MLSl+WoxjlUPkOE
 /B8r/jpNvh0jaXMEGpawFBiSsiFcU3ust6lt7hghyRlqVxMm8VYFtpNZ82knsz0bKa46
 pT2fSFCOyHwAvNceOy7YcOwPniIINCwk1OVtnnkpzqYEniJKpM4gVscH16xGPx7YCfyg
 ocfw==
X-Gm-Message-State: ANoB5pmMbTvZjZXy2+i3Jlj2ldZ7qS+uQakcPuG8BOgGxvANzt1y80uU
 +donMGZE2L5DtgQPxYAlTOcJ1g==
X-Google-Smtp-Source: AA0mqf6IsWpflW9B9WFeWkAQqQcqhwTo/1/N1Ws9JQRo5VBUfWelaqnccAT2GCh13VeuvEhT2QShrQ==
X-Received: by 2002:a17:906:fa89:b0:7c0:bc68:c00a with SMTP id
 lt9-20020a170906fa8900b007c0bc68c00amr17209630ejb.665.1670322526480; 
 Tue, 06 Dec 2022 02:28:46 -0800 (PST)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 e24-20020a50fb98000000b004615e1bbaf4sm798259edq.87.2022.12.06.02.28.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Dec 2022 02:28:45 -0800 (PST)
Date: Tue, 6 Dec 2022 11:28:44 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Yuan Can <yuancan@huawei.com>
Message-ID: <Y48ZXIjtsXu/FZQR@nanopsycho>
References: <20221206092613.122952-1-yuancan@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221206092613.122952-1-yuancan@huawei.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20210112.gappssmtp.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=jCEM+y7m5f5Vlw5yuLAzR/mUK1WXLosujaDAqDy6DB0=;
 b=XOGe3fJHve4wrmge372jlysw/hdgH71trCrue3aF4/+//xQdsKmDQTAoDtHrJ77Gup
 86VGj6JalrohzUXQQhGV3b4qZRsdd8+ThySianusEJMBuo9U6gcnweerM+72bPEoXew5
 d2pL4838T7ZwqhzjLZGBt2PEZ3pU1mzp2yp9lWttsT2Gee6P8u2VBvtDmdQrqoxk7zIK
 sT0rm2CA7bJqTU8hODIuK4uoQvXfgcr+i4hlVEU8D5ERnuoOtWElS2pejLGKaUgWydev
 eufeEe/1aUG8roTvYPgQbR3SJvyHAGFYtBFDPK+axOjbWhUIZCihn7WF8OrsVd9uw/EX
 Ax+w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20210112.gappssmtp.com
 header.i=@resnulli-us.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=XOGe3fJH
Subject: Re: [Intel-wired-lan] [PATCH] intel/i40e: Fix potential memory leak
 in i40e_init_recovery_mode()
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
Cc: intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 edumazet@google.com, netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 jeffrey.t.kirsher@intel.com, piotr.marczak@intel.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Dec 06, 2022 at 10:26:13AM CET, yuancan@huawei.com wrote:
>If i40e_vsi_mem_alloc() failed in i40e_init_recovery_mode(), the pf will be
>freed with the pf->vsi leaked.
>Fix by free pf->vsi in the error handling path.
>
>Fixes: 4ff0ee1af016 ("i40e: Introduce recovery mode support")
>Signed-off-by: Yuan Can <yuancan@huawei.com>
>---
> drivers/net/ethernet/intel/i40e/i40e_main.c | 1 +
> 1 file changed, 1 insertion(+)
>
>diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
>index b5dcd15ced36..d23081c224d6 100644
>--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
>+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
>@@ -15536,6 +15536,7 @@ static int i40e_init_recovery_mode(struct i40e_pf *pf, struct i40e_hw *hw)
> 	pci_disable_pcie_error_reporting(pf->pdev);
> 	pci_release_mem_regions(pf->pdev);
> 	pci_disable_device(pf->pdev);
>+	kfree(pf->vsi);

This is not the only thing which is wrong on this error path. Just
quickly looking at the code:
- kfree(pf->qp_pile); should be called here as well
- if i40e_setup_misc_vector_for_recovery_mode() fails,
  unregister_netdev() needs to be called.
- if register_netdev() fails, netdev needs to be freed at least.
Basically the whole error path is completely wrong.
I suggest to:

1) rely on error path of i40e_probe() when call of
   i40e_init_recovery_mode() fails and don't do the cleanup of
   previously inited things in i40e_probe() locally.
2) implement a proper local error path in i40e_init_recovery_mode()


> 	kfree(pf);
> 
> 	return err;
>-- 
>2.17.1
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
