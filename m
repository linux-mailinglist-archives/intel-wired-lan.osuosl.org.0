Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 68DD0A89456
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Apr 2025 08:59:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF3B6608BE;
	Tue, 15 Apr 2025 06:59:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pOs0L1i4u_dN; Tue, 15 Apr 2025 06:59:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2CA5F605E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744700391;
	bh=/4DddnPVge9/03hGcVhj2b0OGOQ590RpyA8OzYtklTQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WzUjhYIfGdPeSGlUrpxYydRwz6LHCP84MVmpve07s8ueUTfcrNBh/VaWY3rHBCBjL
	 EyFSBA3SPMNdQUP8VkY70y8IWKzaK0U1a2sY8aifs3rgoPj1yBthxwoJByFKhfJwGY
	 ejaATzNC5ufmAZBMl8XGXZHNrEadAq3E3YdpHAgDD2ntAmNAjPu/tt1nLxYlZLhFow
	 KaCuyWj3uTpmVxcfq6AiKlamycaH1nOdtDu8qKuAXiGDT1MfOdjgQ4xz6VLDrBEs9D
	 75oLUKWYjHF9RCFxLMUhv3Rvb4yKCk5OQWSUjl53U7jMfrM3dyOi5bdaoQ3wdt8Dcr
	 uz1rWsWFNuXVg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2CA5F605E7;
	Tue, 15 Apr 2025 06:59:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with UTF8SMTP id 3BE10200
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 06:59:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with UTF8SMTP id EF02A4049D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 06:59:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024)
 with UTF8SMTP id NpeLKEZ8kp1b for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Apr 2025 06:59:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=t-8ch@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5A0E84049A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A0E84049A
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp4.osuosl.org (Postfix) with UTF8SMTPS id 5A0E84049A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 06:59:47 +0000 (UTC)
Date: Tue, 15 Apr 2025 08:59:41 +0200
From: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
To: Brian Norris <briannorris@chromium.org>
Cc: Jeff Johnson <jjohnson@kernel.org>, 
 Loic Poulain <loic.poulain@linaro.org>,
 Francesco Dolcini <francesco@dolcini.it>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Saeed Mahameed <saeedm@nvidia.com>, 
 Leon Romanovsky <leon@kernel.org>, Tariq Toukan <tariqt@nvidia.com>,
 ath10k@lists.infradead.org, 
 linux-kernel@vger.kernel.org, ath11k@lists.infradead.org,
 ath12k@lists.infradead.org, 
 wcn36xx@lists.infradead.org, linux-wireless@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-rdma@vger.kernel.org
Message-ID: <20250415084250-8f385935-6e23-447d-8e94-3170d0d3ec9f@linutronix.de>
References: <20250414-restricted-pointers-net-v1-0-12af0ce46cdd@linutronix.de>
 <Z_1XiNY2ujreEo69@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z_1XiNY2ujreEo69@google.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1744700384;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/4DddnPVge9/03hGcVhj2b0OGOQ590RpyA8OzYtklTQ=;
 b=vuYrOTc8QKwZILdPxE6nlighse8j5czreAU0NRRwXH1YPWLjdY3d2rgnmIBklwUTnZbJ4i
 mW3R7pbaGwblKuKhbYK+OyBN9orQD41H6M9HZkoPc4O2ZMShfJnMzwW56/2sxT762VPUye
 aoqHwtWY4NDMT4NWwcxAQZfSIloQ9K2b2iIiWhS2I1RGuC5Lz+VELCRHaU/4HJqS1JI5MQ
 yu/N9j8P9SKznAzYMKnOQeS03+PcDgn9hh7n5XkvDCVBT6vagGsuYB6cWn4m+MemWbcuQW
 AJiGvabKv5fvy2QuNIpq1ErGhlQhvivTDiAW0SW6YixSCrVD6XPUsVBEftmjyA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1744700384;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/4DddnPVge9/03hGcVhj2b0OGOQ590RpyA8OzYtklTQ=;
 b=NvPKiU/NFg6b2GvIsSSHtwZXG+jiIVYcV6xItmZvYPFCDeSuQXxyHYGrI0ugX2vU2lvaot
 V1nhHULnntqIsxDw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=vuYrOTc8; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=NvPKiU/N
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/7] net: Don't use %pK
 through printk
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

On Mon, Apr 14, 2025 at 11:44:24AM -0700, Brian Norris wrote:
> On Mon, Apr 14, 2025 at 10:26:01AM +0200, Thomas Weißschuh wrote:
> > Furthermore, restricted pointers ("%pK") were never meant to be used
> > through printk().
> 
> Is this really true? Documentation/admin-guide/sysctl/kernel.rst still
> has a section on kptr_restrict which talks about dmesg, CAP_SYSLOG, and
> %pK, which sounds like it's intended. But I'm not highly familiar with
> this space, so maybe I'm misreading something.

The wording about dmesg, etc was added in
commit 312b4e226951 ("vsprintf: check real user/group id for %pK").

Its commit message also notes:

    This is a only temporary solution to the issue.  The correct solution is
    to do the permission check at open() time on files, and to replace %pK
    with a function which checks the open() time permission.  %pK uses in
    printk should be removed since no sane permission check can be done, and
    instead protected by using dmesg_restrict.

Doing this is my goal. One of the later steps is to replace %pK completely.
Probably with a function similar to kallsyms_show_value().

> (I do see that commit a48849e2358e ("printk: clarify the documentation
> for plain pointer printing") updated
> Documentation/core-api/printk-formats.rst.)
> 
> In any case, even if the advice has changed, it seems (again, to an
> outsider) a bit much to say it was "never" meant to be used through
> printk().

IMO "never" is correct. Using %pK through printk() was only ever a bandaid to
get at least some of the security benefits of hashed pointers.


Thomas
