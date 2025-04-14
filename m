Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 972ECA8898C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 19:16:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D92860618;
	Mon, 14 Apr 2025 17:16:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BnecEQVG8lyY; Mon, 14 Apr 2025 17:16:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 821306079D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744650987;
	bh=2CTeEp56SCctqolhN+FV6S+4tTAZf5TLl3HT7ych5lU=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NoB5L8lFsg8VatJz3XYbfGrAX2fM6/bJZMMQvNCxUqYYEx2boyjI24frqBnjdxD3S
	 LSV6S2/rtHtM2P2vITPi04M6/5YLCiWJvgro2+zKgc9KRkrwyraQiCEozXkDXelJA2
	 jRE3ofTURR2SNIkO//8jgbWcJvVj0GMoDdQtV9nyl8P3XKk0qKM/uN5AxWOvHyHd0B
	 YAkgBDb0MvUkpLXcW3oqcjVka34uSYxnMqdUVEvvSKvJcShn5uF/SVOhepgE+UzWQR
	 F+SCaLA/1Tu1KwuScjrqT5JuKJ78RxaGjrV7ZuNqGdXqJOZ2HbdJshWjlQJ+BDR+Ds
	 LasPKkD7gb3Og==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 821306079D;
	Mon, 14 Apr 2025 17:16:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3967E205
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 17:16:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1E6026079C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 17:16:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6pxvLR_suc7e for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 17:16:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1FD896079D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1FD896079D
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1FD896079D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 17:16:22 +0000 (UTC)
Received: from [141.14.220.43] (g43.guest.molgen.mpg.de [141.14.220.43])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id D72EF61E647A7;
 Mon, 14 Apr 2025 19:15:51 +0200 (CEST)
Message-ID: <559a9953-cd51-42ce-b2a5-83bd185cf008@molgen.mpg.de>
Date: Mon, 14 Apr 2025 19:15:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemyslaw Kitszel <przemyslaw.kitszel@intel.com>
Cc: jdamato@fastly.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Igor Raits <igor@gooddata.com>,
 Daniel Secik <daniel.secik@gooddata.com>,
 Zdenek Pesek <zdenek.pesek@gooddata.com>, regressions@lists.linux.dev
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

#regzbot ^introduced: 492a044508ad13a490a24c66f311339bf891cb5f

Am 14.04.25 um 18:29 schrieb Jaroslav Pulchart:
> Hello,
> 
> While investigating increased memory usage after upgrading our
> host/hypervisor servers from Linux kernel 6.12.y to 6.13.y, I observed
> a regression in available memory per NUMA node. Our servers allocate
> 60GB of each NUMA node’s 64GB of RAM to HugePages for VMs, leaving 4GB
> for the host OS.
> 
> After the upgrade, we noticed approximately 500MB less free RAM on
> NUMA nodes 0 and 2 compared to 6.12.y, even with no VMs running (just
> the host OS after reboot). These nodes host Intel 810-XXV NICs. Here's
> a snapshot of the NUMA stats on vanilla 6.13.y:
> 
>       NUMA nodes:  0     1     2     3     4     5     6     7     8     9    10    11    12    13    14    15
>       HPFreeGiB:   60    60    60    60    60    60    60    60    60    60   60    60    60    60    60    60
>       MemTotal:    64989 65470 65470 65470 65470 65470 65470 65453 65470 65470 65470 65470 65470 65470 65470 65462
>       MemFree:     2793  3559  3150  3438  3616  3722  3520  3547  3547  3536  3506  3452  3440  3489  3607  3729
> 
> We traced the issue to commit 492a044508ad13a490a24c66f311339bf891cb5f
> "ice: Add support for persistent NAPI config".
> 
> We limit the number of channels on the NICs to match local NUMA cores
> or less if unused interface (from ridiculous 96 default), for example:
>     ethtool -L em1 combined 6       # active port; from 96
>     ethtool -L p3p2 combined 2      # unused port; from 96
> 
> This typically aligns memory use with local CPUs and keeps NUMA-local
> memory usage within expected limits. However, starting with kernel
> 6.13.y and this commit, the high memory usage by the ICE driver
> persists regardless of reduced channel configuration.
> 
> Reverting the commit restores expected memory availability on nodes 0
> and 2. Below are stats from 6.13.y with the commit reverted:
>      NUMA nodes:  0     1     2     3     4     5     6     7     8     9    10    11    12    13    14    15
>      HPFreeGiB:   60    60    60    60    60    60    60    60    60    60   60    60    60    60    60    60
>      MemTotal:    64989 65470 65470 65470 65470 65470 65470 65453 65470 65470 65470 65470 65470 65470 65470 65462
>      MemFree:     3208  3765  3668  3507  3811  3727  3812  3546  3676  3596 ...
> 
> This brings nodes 0 and 2 back to ~3.5GB free RAM, similar to kernel
> 6.12.y, and avoids swap pressure and memory exhaustion when running
> services and VMs.
> 
> I also do not see any practical benefit in persisting the channel
> memory allocation. After a fresh server reboot, channels are not
> explicitly configured, and the system will not automatically resize
> them back to a higher count unless manually set again. Therefore,
> retaining the previous memory footprint appears unnecessary and
> potentially harmful in memory-constrained environments
> 
> Best regards,
> Jaroslav Pulchart
