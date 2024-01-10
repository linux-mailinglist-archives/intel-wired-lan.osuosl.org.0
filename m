Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C968A829E10
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jan 2024 16:57:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D51942210;
	Wed, 10 Jan 2024 15:57:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5D51942210
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704902233;
	bh=9ZYnQDS2/5FzdXIsOPjnH59yNpLPLfRAmFP0X+DJCHg=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BLxOvsHB0togUOnCn+hsH5qXlYs2XZD73sn6JHamwqlWMzIX/YBV09SRe2BwuUhof
	 cKCIUaZb8yO0p8jfLnHatSVeC6d19pTneiK5tlPJW5eEGXn0KX6U7NeS7T+K8hVprZ
	 2NKzKHamVW/lKVMbJacFviIV/ZsrJf12lDrYXvj9KJb9O0h776bSVRRwwykcS4+1ts
	 UL+9yHuEvNfBIydJq7zD7yn3JiRUD8qpk+dPmPfqLARn1lo/MWK23iolLMFilA6sHY
	 5p4PaLgHXbhERVdPWmNL+esvCeKLBQEoNn5Ysa888N0xbjxdSWowRftZs+Ze40lGny
	 xGJzmiN63Nsxw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aJHy_gzB_tmz; Wed, 10 Jan 2024 15:57:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 41333421F2;
	Wed, 10 Jan 2024 15:57:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 41333421F2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5C5E81BF2BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jan 2024 06:46:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4005F42547
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jan 2024 06:46:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4005F42547
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jp72fUfmczaI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jan 2024 06:46:15 +0000 (UTC)
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 08A5242543
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jan 2024 06:46:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 08A5242543
Received: by mail-wm1-x334.google.com with SMTP id
 5b1f17b1804b1-40b5155e154so49716635e9.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 09 Jan 2024 22:46:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704869173; x=1705473973;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=9ZYnQDS2/5FzdXIsOPjnH59yNpLPLfRAmFP0X+DJCHg=;
 b=itP4Xw2tNYxMreg9sBlsf+ng/26iBVctYCPvjTCKol3QNg190RgTYST2USQLUIUlwp
 bj9DtUpvEdI5/RTi8kevePOKIVBchb9hibK9EhNQRPoZyMxiypfyw9VL4sU53OC8E40X
 ZxwPV6+WQ7ndBv+26bFT07WFE/hHl9DjS8LCezKr6CFdDA+NIOi6C5ndR2VFmRs7zEyt
 jrX+oln8a5fQF5F7bnkw+Ptf65PzWvod2VYndpGDtdP3aedusP0+ipJFt2NrwJjpUE11
 n/Ngw0cESEcAoXkYxRoqtVFynot8TNNSrlgCCCt+5Wquch8G8UyxEoHuzoq+foeYI0do
 5Vrw==
X-Gm-Message-State: AOJu0YwBaykeOrcNRdkdAOLiWS8WWY4jAl0xv6phTZnqLIFft5YO0CX8
 ZcgAqsRzNPqdoj0RuInmeRVev8DO8UOkPnRIFDJ89i5mSaXB
X-Google-Smtp-Source: AGHT+IFOZ+mrTXQ+2McfOHq9ggRbCxLCGT6ka/4ljIABoDp9ZDsXEmP3BmJNIB95pKQcBV1ou++9OHf7OOGmzwEG8uY=
X-Received: by 2002:a05:600c:22d1:b0:40e:4d17:b239 with SMTP id
 17-20020a05600c22d100b0040e4d17b239mr232652wmg.60.1704869172840; Tue, 09 Jan
 2024 22:46:12 -0800 (PST)
MIME-Version: 1.0
References: <CAK8fFZ7Xi3=1HFY400firmpRWzHDPsi90cUU5bjOkF00KNZWeA@mail.gmail.com>
In-Reply-To: <CAK8fFZ7Xi3=1HFY400firmpRWzHDPsi90cUU5bjOkF00KNZWeA@mail.gmail.com>
From: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Date: Wed, 10 Jan 2024 07:45:47 +0100
Message-ID: <CAK8fFZ5xHpOr-bQsUMB+kr+pMHvF4S7G7DmEkXVf2f-J1dPi-g@mail.gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 intel-wired-lan@lists.osuosl.org, Dave Ertman <david.m.ertman@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Wed, 10 Jan 2024 15:57:07 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gooddata.com; s=google; t=1704869173; x=1705473973; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=9ZYnQDS2/5FzdXIsOPjnH59yNpLPLfRAmFP0X+DJCHg=;
 b=PXqESCutrhIwKQkTyzV1Ul4MiQVCOTGGst7hXMA96XlLTlhMv7EayE51aAlUrEpdrU
 xpqbHp57ITgh2dXxfRpka8/CzfSGVEUipv8yXq8bAKQylq1AG/2NxQIVvlzLMQgc79VG
 OqtSJFWe3Xvv+sTrnI0L4Y5117sFGgvlZCxn4=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=gooddata.com header.i=@gooddata.com
 header.a=rsa-sha256 header.s=google header.b=PXqESCut
Subject: Re: [Intel-wired-lan] [REGRESSION] Intel ICE Ethernet driver in
 linux >= 6.6.9 triggers extra memory consumption and cause continous
 kswapd* usage and continuous swapping
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
Cc: Igor Raits <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>
> Hello
>
> I would like to report a regression triggered by recent change in
> Intel ICE Ethernet driver in the 6.6.9 linux kernel. The problem was
> bisected and the regression is triggered by
> fc4d6d136d42fab207b3ce20a8ebfd61a13f931f "ice: alter feature support
> check for SRIOV and LAG" commit and originally reported as part of
> https://lore.kernel.org/linux-mm/CAK8fFZ4DY+GtBA40Pm7Nn5xCHy+51w3sfxPqkqpqakSXYyX+Wg@mail.gmail.com/T/#m5217c62beb03b3bc75d7dd4b1d9bab64a3e68826
> thread.
>
> > However, after the following patch we see that more NUMA nodes have
> > such a low amount of memory and  that is causing constant reclaiming
> > of memory because it looks like something inside of the kernel ate all
> > the memory. This is right after the start of the system as well.
>
>  I'm reporting it here as it is a different problem than the original
> thread. The commit introduces a low memory problem per each numa node
> of the first socket (node0 .. node3 in our case) and cause constant
> kswapd* 100% CPU usage. See attached 6.6.9-kswapd_usage.png. The low
> memory issue is nicely visible in "numastat -m", see attached files:
> * numastat_m-6.6.10_28GB_HP_ice_revert.txt   >= 6.6.9 with reverted ice commit
> * numastat_m-6.6.10_28GB_HP_no_revert.txt    >= 6.6.9 vanilla
> the server "is fresh" (after reboot), without running any application load.
>
> $ grep MemFree numastat_m-6.6.10_28GB_HP_ice_revert.txt
> numastat_m-6.6.10_28GB_HP_no_revert.txt
> numastat_m-6.6.10_28GB_HP_ice_revert.txt:MemFree
> 2756.89         2754.86          100.39         2278.43         < ice
> fix is reverted, we have ~2GB free per numa, except one, like before
> == no issue
> numastat_m-6.6.10_28GB_HP_ice_revert.txt:MemFree
> 3551.29         1530.52         2212.04         3488.09
> ...
> numastat_m-6.6.10_28GB_HP_no_revert.txt:MemFree
> 127.52           66.49          120.23          263.47               <
> ice fix is present, we see just few MB free per each node, this will
> cause kswapd utilization!
> numastat_m-6.6.10_28GB_HP_no_revert.txt:MemFree
> 3322.18         3134.47          195.55          879.17
> ...
>
> If you have some hints on how to debug what is actually occupying all
> that memory and some fix of the problem will be nice. We can provide
> testing and more reports if needed to analyze the issue. We reverted
> the commit fc4d6d136d42fab207b3ce20a8ebfd61a13f931f as a workaround
> till we know a proper fix.
>
> Best regards,
> Jaroslav Pulchart

Hello everyone

FYI: I try to use linuxk-6.7(.0) kernel and the issue is there as well.

Best regards,
Jaroslav Pulchart
