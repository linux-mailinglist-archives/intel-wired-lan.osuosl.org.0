Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5914C9B05
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 03:11:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F98541575;
	Wed,  2 Mar 2022 02:11:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id psdEVwz6RMxR; Wed,  2 Mar 2022 02:11:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 704F04156E;
	Wed,  2 Mar 2022 02:11:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 075C01BF577
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 02:11:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F3FCF60BF4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 02:11:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CcAbqo_I1OwA for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 02:11:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BAF5060806
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 02:11:04 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id F2D46B81EF5;
 Wed,  2 Mar 2022 02:11:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38280C340EE;
 Wed,  2 Mar 2022 02:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646187060;
 bh=3NWrbzzJf3bmqtTz+6kp11IuUZCM+DUEgK1dpfqoK0E=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=CC5nTmJoJw0BceCNVu/c0ulePTM3ULAc0ByCAPN8mfXo2jF4Hozo3hEzWWtS9rJfT
 ZFRB0nUy+EOMV9H7n/GQoJFKvhlMe+JTzbMClbXtNKueXd1xql5NStErdUMc6zr/mR
 x/1qE9C0DZdZsV8fPqmiVWaEypyfQTW/kOwjof0cqA/ffbF2rIhowTjOF0pSj8ZQpU
 +gHArPTjIugz5NQ6Wh6mmWsgFIYfLdF/IARVaaO7HINHD48FPO6qcCANR7LCvMXGg/
 5yWKupqGUSzLECwPuY9I1G4LlcRpjt3gkSSARTTVHGN2Af6JOzs5BYQH7hiPNPvvmC
 8qteVMAvguiqw==
Date: Tue, 1 Mar 2022 18:10:59 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Jonathan Toppins <jtoppins@redhat.com>
Message-ID: <20220301181059.27021dbb@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
In-Reply-To: <370e9909d8e00d4a1c8abcd405c321fc41646478.1646146125.git.jtoppins@redhat.com>
References: <370e9909d8e00d4a1c8abcd405c321fc41646478.1646146125.git.jtoppins@redhat.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] ice: use msleep instead of mdelay
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
Cc: Jocelyn Falempe <jfalempe@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue,  1 Mar 2022 09:48:45 -0500 Jonathan Toppins wrote:
> Use msleep for long delays instead of spinning in the driver.

You should add the justification for why sleeping / scheduling out 
is okay in these particular spots to the commit message.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
