Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D225AA9083B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 18:04:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5628541441;
	Wed, 16 Apr 2025 16:04:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s_gNc5PSSvU0; Wed, 16 Apr 2025 16:04:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B272D413E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744819464;
	bh=JYV2YfoZxV6cmlZYG1eaRjyp1P5MIDzBdiE9loxsevs=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=T8/j6qW7KzY+IFhuklD4IOR2Fx2xCfXO4BeAvrb49HMa2M7uhaXo0AE2HR9p4O40E
	 LuqWQZhoTnelwStLGzU5bJFHjGIbQgCYZqra04Yb62v/IXNiflpvElGEi4S/VIsmcy
	 lMS+oijHP0bRF6t8d/YWZ2uG7T/YzViF/wS1RRVF6wamG23N2ah0/3V7sZEguHO/iz
	 PsciKNVUZjq409ySWgLGThnYqTrwRwjEBpwyYp4Xk2CX1l4yULuAPHkpGu1UPVJNjL
	 edRpRA0Ntfj4Qcj6vNoMMvVKjKaiw5VY+mcwK3UDbL9Dv8QvCIjVCP4vn64yZqEXI3
	 CNMR5ZasGGuJA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B272D413E3;
	Wed, 16 Apr 2025 16:04:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C4083DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 16:04:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C05C2404B1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 16:04:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 42Fn3EQmtvno for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 16:04:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62d; helo=mail-ej1-x62d.google.com;
 envelope-from=jaroslav.pulchart@gooddata.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 615914051A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 615914051A
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 615914051A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 16:04:21 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id
 a640c23a62f3a-abbb12bea54so1313285766b.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 09:04:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744819459; x=1745424259;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=JYV2YfoZxV6cmlZYG1eaRjyp1P5MIDzBdiE9loxsevs=;
 b=BU2EnXBE7O0SJxiHI1NbXuc92B6oy6dnUxKbZpKhs70mmnC5kFw9H8YG8HXVXeC54K
 WcWVGe8+CvS0D8S2HJkMY6yBnrb5ZML9T1PjyXt8NVkLDDJY88Yyalt1hHWFXpChYLCC
 IDWu3QOp9C4C8AsDnSxJCNrOS/bbQWUwtuH1UgbqtrIK44St/PtVAo9bzlzzIy8Tw/EV
 0fc4VUsxpVB2rQ0vDtHMf0DYR/lHFJ9pQ7XOpkgujnhtIrGdDHRwGIGy+55Z4YKTMRiX
 LQ3cfp+rTjdVcPf7xGtNZmHM9xikBBmHyiSH4m+WIfJY3zXgF1bFhWZ1rxoKac8C7RY/
 J07A==
X-Forwarded-Encrypted: i=1;
 AJvYcCWGaFybBUMDob4YGn1fdsA7/wY6xBz/bqqyDUWOfDPF0o8VJKCAkTZt78Loc4hmPHvVkZ+bvQw1TUE/X3FI2wU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YypsLeLRfiioNUoG7T1GmQ5dK1Mt49AmIAtZJyiLqU/nJl88D9m
 1nirGyS4ruFSXTAKCW/cMmGyRImpc37cW5uffgFPWq5Jru/kvusf7+thYZCdFjCcIGhWUjU2Ufu
 cHtdK5VzjN5JNxTYHvJf9nRbm1QDnHZ89ePxj
X-Gm-Gg: ASbGncuMTelsCdaW4wmasx+iHzLnROmR/0EffIbua/QyMapihK6hGAaOnyQF9iQ/WGP
 jkP9MXe3134eB/HbxNJ8VkaiCI63jCDeOqNHWQ1stDbpnakth6CovP8xAltbiRd7Bua6pMJo8Hh
 q23YrPPH3Mtglxq5gvKwKDAao=
X-Google-Smtp-Source: AGHT+IGncNZvmh1zggR2ZA5SYcwXb/6jZ7bilseZP7TepYPQc+1RvP/za9Wavn8V2PX769uLjcKWc6BbJXunJuVgov0=
X-Received: by 2002:a17:907:9689:b0:aca:a539:be04 with SMTP id
 a640c23a62f3a-acb42869efdmr267496166b.4.1744819459018; Wed, 16 Apr 2025
 09:04:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <4a061a51-8a6c-42b8-9957-66073b4bc65f@intel.com>
 <20250415175359.3c6117c9@kernel.org>
 <CAK8fFZ6ML1v8VCjN3F-r+SFT8oF0xNpi3hjA77aRNwr=HcWqNA@mail.gmail.com>
 <20250416064852.39fd4b8f@kernel.org>
In-Reply-To: <20250416064852.39fd4b8f@kernel.org>
From: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Date: Wed, 16 Apr 2025 18:03:52 +0200
X-Gm-Features: ATxdqUFIO7SEg8KIulZBKOWrb3zZAW3bG1D6EzHU7dm30dFH8OsgyiorAAvSh6Y
Message-ID: <CAK8fFZ4bKHa8L6iF7dZNBRxujdmsoFN05p73Ab6mkPf6FGhmMQ@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, jdamato@fastly.com, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, Igor Raits <igor@gooddata.com>, 
 Daniel Secik <daniel.secik@gooddata.com>,
 Zdenek Pesek <zdenek.pesek@gooddata.com>, 
 Eric Dumazet <edumazet@google.com>, Martin Karsten <mkarsten@uwaterloo.ca>, 
 Ahmed Zaki <ahmed.zaki@intel.com>, "Czapnik, Lukasz" <lukasz.czapnik@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gooddata.com; s=google; t=1744819459; x=1745424259; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=JYV2YfoZxV6cmlZYG1eaRjyp1P5MIDzBdiE9loxsevs=;
 b=Ts+nKjfvuOHnbvp8Ft4QTemgtBU09+PidpYWUWpJPXe5VpG5kswry/4nEY/zFrn9Mp
 1E/ih0XOtYHUlShdy7xuaF93iVs5zG6DBpnrPV4XrkXbqzK9uagR0rBQEMGXYHwMlnYt
 y72x9o8/9vnBUVeSuxMF0FmcISf7ZQyjyPTAE=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=gooddata.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=gooddata.com header.i=@gooddata.com header.a=rsa-sha256
 header.s=google header.b=Ts+nKjfv
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

>
> On Wed, 16 Apr 2025 09:13:23 +0200 Jaroslav Pulchart wrote:
> > By "traced" I mean using the kernel and checking memory situation on
> > numa nodes with and without production load.  Numa nodes, with X810
> > NIC, showing a quite less available memory with default queue length
> > (num of all cpus) and it needs to be lowered to 1-2 (for unused
> > interfaces) and up-to-count of numa node cores on used interfaces to
> > make the memory allocation reasonable and server avoiding "kswapd"...
> >
> > See "MemFree" on numa 0 + 1 on different/smaller but utilized (running
> > VMs + using network) host server with 8 numa nodes (32GB RAM each, 28G
> > in Hugepase for VMs and 4GB for host os):
>
> FWIW you can also try the tools/net/ynl/samples/page-pool
> application, not sure if Intel NICs init page pools appropriately
> but this will show you exactly how much memory is sitting on Rx rings
> of the driver (and in net socket buffers).

I'm not familiar with the page-pool tool, I try to build it, run it
and nothing is shown. Any hint/menual how to use it?

>
> > 6.13.y vanilla (lot of kswapd0 in background):
> >     NUMA nodes:     0       1       2       3       4       5       6       7
> >     HPTotalGiB:     28      28      28      28      28      28      28      28
> >     HPFreeGiB:      0       0       0       0       0       0       0       0
> >     MemTotal:       32220   32701   32701   32686   32701   32701
> > 32701   32696
> >     MemFree:        274     254     1327    1928    1949    2683    2624    2769
> > 6.13.y + Revert (no memory issues at all):
> >     NUMA nodes: 0 1 2 3 4 5 6 7
> >     HPTotalGiB: 28 28 28 28 28 28 28 28
> >     HPFreeGiB: 0 0 0 0 0 0 0 0
> >     MemTotal: 32220 32701 32701 32686 32701 32701 32701 32696
> >     MemFree: 2213 2438 3402 3108 2846 2672 2592 3063
> >
> > We need to lower the queue on all X810 interfaces from default (64 in
> > this case), to ensure we have memory available for host OS services.
> >     ethtool -L em2 combined 1
> >     ethtool -L p3p2 combined 1
> >     ethtool -L em1 combined 6
> >     ethtool -L p3p1 combined 6
> > This trick "does not work" without the revert.
>
> And you're reverting just and exactly 492a044508ad13 ?
> The memory for persistent config is allocated in alloc_netdev_mqs()
> unconditionally. I'm lost as to how this commit could make any
> difference :(

Yes, reverted the 492a044508ad13.
