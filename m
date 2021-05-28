Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6435F394390
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 May 2021 15:51:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A8F0060899;
	Fri, 28 May 2021 13:51:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8L2MYSUjL2VJ; Fri, 28 May 2021 13:51:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AEA7A605C8;
	Fri, 28 May 2021 13:51:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6DFF71BF423
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 May 2021 08:34:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 67DA54069E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 May 2021 08:34:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JuYFWllEMlrg for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 May 2021 08:34:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com
 [IPv6:2607:f8b0:4864:20::730])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4F5D940651
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 May 2021 08:34:48 +0000 (UTC)
Received: by mail-qk1-x730.google.com with SMTP id 76so3332024qkn.13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 May 2021 01:34:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=n3Y5rFOY8ng6rR4eh1BMeunvKaj0igaUH7MDrp3oilc=;
 b=f/ZJsRF5hw88ZRTfvA1+FLom/3aGv09nXjj+qwvw1e6vplaVKiSmsGM1WhiUj0/4fD
 +bpnAIWxbyiGYHsu+LxeAMGgYVuqtvkigo8rbYNAlesaBf3c5vB/1DudHnahX/e42j7v
 oIxq+VElOF2bzN3BZKuHMmQF1axyS/Vxt7Np+vJL+WhS7WmkISq8QmO84pV5kxGnu168
 C/vd6Hq2dQ8qpVJNt/IZjj7QS4v7iNm2Y+dkUmXN7LQqyDDOrTUkVLCW5DMVKkrMX65O
 diE7pyj5omGcpHCcn6Bkv1+TMViWH8kW4fyuKEP8CC3XU9NvdKu77EURsba8aFTGXLJe
 QE2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=n3Y5rFOY8ng6rR4eh1BMeunvKaj0igaUH7MDrp3oilc=;
 b=Kw47VeyUp+RQsma3X+aJBBSDzrInRJbmZx3uqnrJn/jyi4I3tkqNQ1minI44ujnA6y
 5r5hFUuXFUeKm7wAhk0+5pAhvxIh48n8LpLye/QDPtOU/BRoLktws85e1ZLbHnqa1/da
 c12vhpwaV8xEWmX8wwdgT42yRStYZQsjtDtw4KAWsZ5jZLPLq3qoDqjXZC4yUZOcjSDy
 rQJjrRm4YsIOhfp8I2sShgDSVvZhCH7+c465+Al8nr9uzF/HvBaVVlwOTzew7K20w9K3
 9dSYxmSsd+QfHwxLigYaEltkM3wNTABF1xmNibGLglzRZzZ+sVXMeg/qz5wO7C6j6CVY
 KKCA==
X-Gm-Message-State: AOAM530QdxiwTk0ICNxtzeIPnOWcZfhGRqwl3sPUP3FRnKPYYeNh7ZPK
 F3NVdHGvgUHCUQ/dHZtRIVROvOkCVTioprfLzw==
X-Google-Smtp-Source: ABdhPJy1sgepE6y6npW74EZRB/c8OoUq10EoDRIx+J11VZOrYgj0HUAf9EnrDBE1VWiTedJwCYjWXohIIfD720bpVrQ=
X-Received: by 2002:a05:620a:1126:: with SMTP id
 p6mr2894546qkk.120.1622190886995; 
 Fri, 28 May 2021 01:34:46 -0700 (PDT)
MIME-Version: 1.0
From: Jussi Maki <joamaki@gmail.com>
Date: Fri, 28 May 2021 10:34:36 +0200
Message-ID: <CAHn8xckNXci+X_Eb2WMv4uVYjO2331UWB2JLtXr_58z0Av8+8A@mail.gmail.com>
To: netdev@vger.kernel.org, robin.murphy@arm.com, jroedel@suse.de
X-Mailman-Approved-At: Fri, 28 May 2021 13:50:49 +0000
Subject: [Intel-wired-lan] Regression 5.12.0-rc4 net: ice: significant
 throughput drop
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
Cc: Daniel Borkmann <daniel@iogearbox.net>, intel-wired-lan@lists.osuosl.org,
 bpf <bpf@vger.kernel.org>, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi all,

While measuring the impact of a kernel patch on our lab machines I stumbled upon
a performance regression affecting the 100Gbit ICE nic and bisected it
from range v5.11.1..v5.13-rc3 to the commit:
a250c23f15c2 iommu: remove DOMAIN_ATTR_DMA_USE_FLUSH_QUEUE

Both recent bpf-next (d6a6a55518) and linux-stable (c4681547bc) are
affected by the issue.

The regression shows as a significant drop in throughput as measured
with "super_netperf" [0],
with measured bandwidth of ~95Gbps before and ~35Gbps after:

commit 3189713a1b84 (a250c23^):
$ ./super_netperf 32 -H 172.18.0.2 -l 10
97379.8

commit a250c23f15c2:
$ ./super_netperf 32 -H 172.18.0.2 -l 10
34097.5

The pair of test machines have this hardware:
CPU: AMD Ryzen 9 3950X 16-Core Processor
MB: X570 AORUS MASTER
0a:00.0 Ethernet controller [0200]: Intel Corporation Ethernet
Controller E810-C for QSFP [8086:1592] (rev 02)
Kernel config: https://gist.github.com/joamaki/9ee11294c78a8dd2776041f67e5620e7

[0] https://github.com/borkmann/stuff/blob/master/super_netperf
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
