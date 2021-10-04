Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6754211E9
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Oct 2021 16:48:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7ECEE61B90;
	Mon,  4 Oct 2021 14:48:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YrNKJE1kkQIS; Mon,  4 Oct 2021 14:48:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F80260632;
	Mon,  4 Oct 2021 14:48:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AA3721BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Oct 2021 14:48:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A16B660639
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Oct 2021 14:48:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AFk6qtblOt9s for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Oct 2021 14:48:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx4.wp.pl (mx4.wp.pl [212.77.101.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2EC406060D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Oct 2021 14:48:25 +0000 (UTC)
Received: (wp-smtpd smtp.wp.pl 17921 invoked from network);
 4 Oct 2021 16:48:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1633358901; bh=mJTnMjfJmvIn1Zpqq4jdCdLeL3jnYqRReCvSseChmXc=;
 h=From:To:Cc:Subject;
 b=hOhn2Fp4JtJSjtZUM4aHv/LW3ZK9R4PynfMqzGxdJDXghrM1v9nqcrOdJYKPWgqa/
 BnpmtXl6NeOnvymiiBKlL2eeCauKfrG8hRvNyKgk2OPFL9GrgTn9Ly67NCZ5DdkgUA
 m+KzOkwxM85lLwqaGu69YTBhJoMN5vbA/qWHmGFI=
Received: from unknown (HELO kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com)
 (kubakici@wp.pl@[163.114.132.1]) (envelope-sender <kubakici@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <andreas.huettel@ur.de>; 4 Oct 2021 16:48:21 +0200
Date: Mon, 4 Oct 2021 07:48:14 -0700
From: Jakub Kicinski <kubakici@wp.pl>
To: "Andreas K. Huettel" <andreas.huettel@ur.de>
Message-ID: <20211004074814.5900791a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <1823864.tdWV9SEqCh@kailua>
References: <1823864.tdWV9SEqCh@kailua>
MIME-Version: 1.0
X-WP-MailID: af7271ebdfa632b73ad526844b541f54
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000004 [kWfW]                               
Subject: Re: [Intel-wired-lan] Intel I350 regression 5.10 -> 5.14 ("The NVM
 Checksum Is Not Valid") [8086:1521]
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 04 Oct 2021 15:06:31 +0200 Andreas K. Huettel wrote:
> Dear all, 
> 
> I hope this is the right place to ask, if not please advise me where to go.

Adding intel-wired-lan@lists.osuosl.org and Sasha as well.

> I have a new Dell machine with both an Intel on-board ethernet controller 
> ([8086:15f9]) and an additional 2-port extension card ([8086:1521]). 
> 
> The second adaptor, a "DeLock PCIe 2xGBit", worked fine as far as I could 
> see with Linux 5.10.59, but fails to initialize with Linux 5.14.9.
> 
> dilfridge ~ # lspci -nn
> [...]
> 01:00.0 Ethernet controller [0200]: Intel Corporation I350 Gigabit Network Connection [8086:1521] (rev ff)
> 01:00.1 Ethernet controller [0200]: Intel Corporation I350 Gigabit Network Connection [8086:1521] (rev ff)
> [...]
> 
> dilfridge ~ # dmesg|grep igb
> [    2.069286] igb: Intel(R) Gigabit Ethernet Network Driver
> [    2.069288] igb: Copyright (c) 2007-2014 Intel Corporation.
> [    2.069305] igb 0000:01:00.0: can't change power state from D3cold to D0 (config space inaccessible)
> [    2.069624] igb 0000:01:00.0 0000:01:00.0 (uninitialized): PCIe link lost
> [    2.386659] igb 0000:01:00.0: PHY reset is blocked due to SOL/IDER session.
> [    4.115500] igb 0000:01:00.0: The NVM Checksum Is Not Valid
> [    4.133807] igb: probe of 0000:01:00.0 failed with error -5
> [    4.133820] igb 0000:01:00.1: can't change power state from D3cold to D0 (config space inaccessible)
> [    4.134072] igb 0000:01:00.1 0000:01:00.1 (uninitialized): PCIe link lost
> [    4.451602] igb 0000:01:00.1: PHY reset is blocked due to SOL/IDER session.
> [    6.180123] igb 0000:01:00.1: The NVM Checksum Is Not Valid
> [    6.188631] igb: probe of 0000:01:00.1 failed with error -5
> 
> Any advice on how to proceed? Willing to test patches and provide additional debug info.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
