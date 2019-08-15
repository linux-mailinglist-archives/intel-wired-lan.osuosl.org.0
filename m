Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7178F488
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2019 21:29:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6D9102051C;
	Thu, 15 Aug 2019 19:29:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L259Mlg42I89; Thu, 15 Aug 2019 19:29:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A0C3820507;
	Thu, 15 Aug 2019 19:29:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1864C1BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 19:29:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 055BC87F8E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 19:29:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ss2YKc0OrhQP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Aug 2019 19:28:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5DF1387F78
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 19:28:59 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id d23so2831011qko.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 12:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=qnb1kJVM+ye3vGOEYAiSOgWaI3eqtlq3N9qsMgSh97Q=;
 b=JaxEwRb54HjwKuEneJpNZxQXixF0DRverv10uYcg0cKMh+ECh1y3PYBIoVR8Ow63CY
 /WKKphuy/0ciV1fNmih3/+fh1ESfjqrk8yHo0doVrzNTOxcJMsagAdyXMS8N/hUKLJPO
 ys+xqkbDGaAu2an70dXBKE7/dX6r7CD1hTWHgLBbP8r7EYoOkBUlQbeN2jIMyj9Dysla
 wDX7CxJU3y8ZMIq76PCJUoS7kW/AF751fzeef3qiIS7S2cYClSK9dT24i7ZuQPd5uFoz
 f6s3KOUMGs1sEJvIxWN86ubo0VVUcfS6hyOVGtopxRcSTT/nWToBiiYmv8ZNyyHvpMvH
 Y0DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=qnb1kJVM+ye3vGOEYAiSOgWaI3eqtlq3N9qsMgSh97Q=;
 b=Gh+Uxnoq+daCKzoWrescajqdH+5fYjBy2s8nFfAkb4brbAl1sktpCukl1JAGsKggUo
 Ml1+XDAhXykunZawnUF42I2kxbvYEuwdsel92CFIgPAWZ/mTeHKt62XtHi1SMC2BCjZ3
 lAhwZDgYdzns0tJUP3Y6TW3wuNE0QEYxVaPgEYv2RBCtVwB41r9fggxxb077wTJVc9bp
 mME0NVNHq2dfvvrRi4Zmn7/EJl57Nzo54Nug6us+kbPUPA5laPyNL/vM15nM/NcavgCb
 OG7XDVnnBjK2Tl42T0mwVFckT19mNcGQiYDsDEfVAqk0v7WjZJY7kT/Ccq75AnkcFQqS
 zvEQ==
X-Gm-Message-State: APjAAAUVIi+PZT7c7f8+SCJgUXgXsrsDWbVXvgb89XXdeKoyAKBEnmxM
 +uTDGVXnlPZD9ZdvY3Freg0q4w==
X-Google-Smtp-Source: APXvYqwkPh8ov3QUSzCWMxSKt+ziOPYpJfoCxehX3GtP2xT/V0Zjj4WnEp5aVw6Y7vkICXjTGBM3Aw==
X-Received: by 2002:a05:620a:100c:: with SMTP id
 z12mr5528461qkj.279.1565897338446; 
 Thu, 15 Aug 2019 12:28:58 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id x3sm1885999qkl.71.2019.08.15.12.28.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Aug 2019 12:28:58 -0700 (PDT)
Date: Thu, 15 Aug 2019 12:28:44 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Sridhar Samudrala <sridhar.samudrala@intel.com>
Message-ID: <20190815122844.52eeda08@cakuba.netronome.com>
In-Reply-To: <1565840783-8269-1-git-send-email-sridhar.samudrala@intel.com>
References: <1565840783-8269-1-git-send-email-sridhar.samudrala@intel.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 0/5] Add support for SKIP_BPF
 flag for AF_XDP sockets
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
Cc: maciej.fijalkowski@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, tom.herbert@intel.com, bpf@vger.kernel.org,
 bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 14 Aug 2019 20:46:18 -0700, Sridhar Samudrala wrote:
> This patch series introduces XDP_SKIP_BPF flag that can be specified
> during the bind() call of an AF_XDP socket to skip calling the BPF 
> program in the receive path and pass the buffer directly to the socket.
> 
> When a single AF_XDP socket is associated with a queue and a HW
> filter is used to redirect the packets and the app is interested in
> receiving all the packets on that queue, we don't need an additional 
> BPF program to do further filtering or lookup/redirect to a socket.
> 
> Here are some performance numbers collected on 
>   - 2 socket 28 core Intel(R) Xeon(R) Platinum 8180 CPU @ 2.50GHz
>   - Intel 40Gb Ethernet NIC (i40e)
> 
> All tests use 2 cores and the results are in Mpps.
> 
> turbo on (default)
> ---------------------------------------------	
>                       no-skip-bpf    skip-bpf
> ---------------------------------------------	
> rxdrop zerocopy           21.9         38.5 
> l2fwd  zerocopy           17.0         20.5
> rxdrop copy               11.1         13.3
> l2fwd  copy                1.9          2.0
> 
> no turbo :  echo 1 > /sys/devices/system/cpu/intel_pstate/no_turbo
> ---------------------------------------------	
>                       no-skip-bpf    skip-bpf
> ---------------------------------------------	
> rxdrop zerocopy           15.4         29.0
> l2fwd  zerocopy           11.8         18.2
> rxdrop copy                8.2         10.5
> l2fwd  copy                1.7          1.7
> ---------------------------------------------	

Could you include a third column here - namely the in-XDP performance?
AFAIU the way to achieve better performance with AF_XDP is to move the
fast path into the kernel's XDP program..

Maciej's work on batching XDP program's execution should lower the
retpoline overhead, without leaning close to the bypass model.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
