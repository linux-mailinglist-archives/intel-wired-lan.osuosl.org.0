Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E649C4D01
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Nov 2024 04:04:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5730380F9F;
	Tue, 12 Nov 2024 03:04:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tx4i2-v4aB2k; Tue, 12 Nov 2024 03:04:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0CEC80FA7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731380642;
	bh=wcPpRI6zC+hpO/R+h6H8vQJOAZsapngt30Z/cdCb2Wk=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=L0g3gPXmqfY67riOHBD8YOG20Hb1jQcMxG8oWyXDqZBKsM4EcFMlKL93V+qeFeeW7
	 D99NtVYYE6ey9Er6DWrJL95B47U0o5WvKQmGZyb/IWnLYlc7bDmDw5woqjnqd0KNVB
	 HOo6k42S4HBXZPhshZUbpn+qqKnUwc7ONpVOZ0UA7MTMLBMWRKICneGV8pmmC7rHuK
	 1wWr2Kswz9f7eyEX7wuk/CJXu4JgtNA0T7DUc7LrndiTDMDRvRFVlTL/U9UK7kqDSL
	 sR02/1nTmhiCcEpS55GVY5QuPvIbHnsESfnfhBjFXRDD5flcbiRWa39cYqVe2ju88n
	 6EeS5JDP9ztHA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A0CEC80FA7;
	Tue, 12 Nov 2024 03:04:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B6C456C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 03:04:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 89A8760630
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 03:04:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W9jaI4rkpSGg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Nov 2024 03:04:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EB7766060D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB7766060D
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EB7766060D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 03:03:59 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 7BC165C462D;
 Tue, 12 Nov 2024 03:03:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E022C4CECF;
 Tue, 12 Nov 2024 03:03:57 +0000 (UTC)
Date: Mon, 11 Nov 2024 19:03:56 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Abhinav Saxena <xandfury@gmail.com>
Cc: linux-kernel-mentees@lists.linuxfoundation.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rdma@vger.kernel.org, rds-devel@oss.oracle.com, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon
 Horman <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Saeed Mahameed
 <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Tariq Toukan
 <tariqt@nvidia.com>, Allison Henderson <allison.henderson@oracle.com>,
 Russell King <linux@armlinux.org.uk>, Dragos Tatulea <dtatulea@nvidia.com>,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>
Message-ID: <20241111190356.0aefe1b9@kernel.org>
In-Reply-To: <20241108202548.140511-1-xandfury@gmail.com>
References: <20241108202548.140511-1-xandfury@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1731380638;
 bh=zEuVEOYuXvXUfujcZ5GqwkoABFSLMXkGDWxAsMEEFyE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Mv8wTLYbB0/mepIUwLysLWZSQHKkWGgpvMXFU6/G85HdVDVTKuOTFLGFdZ8lHm1PN
 gjzljxT8jQfbK2oQi4AwJfeNeMe6gcl8LWLwDttcFpDTEysNKxnpOAGAWVp89XLm8R
 eVuH4Tpzdj1asuMS0pcb8r/DNNY59gjMasG1ZAHzYiJpjDjWdhHOpORXc+gqQEu2Vw
 3BMkcFunnkZfW232l3DHw+y90hFNBw8+tOiaRSbMHJhrFUcLnijjpLF7Ab+Ul3HN7U
 AnYMdTA1ZyLFxpPSlf5Ht5f686gvLoH1V0TnzUGdNtZ4cWa4Pp+jOkiMpo1mBq1cMn
 PDgDB910rl6Bg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Mv8wTLYb
Subject: Re: [Intel-wired-lan] [PATCH 1/2] docs: net: Fix text in eth/intel,
 mlx5 and switchdev docs
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

On Fri,  8 Nov 2024 13:25:47 -0700 Abhinav Saxena wrote:
> diff --git a/Documentation/networking/switchdev.rst b/Documentation/networking/switchdev.rst
> index f355f0166f1b..df4b4c4a15d5 100644
> --- a/Documentation/networking/switchdev.rst
> +++ b/Documentation/networking/switchdev.rst
> @@ -162,7 +162,7 @@ The switchdev driver can know a particular port's position in the topology by
>  monitoring NETDEV_CHANGEUPPER notifications.  For example, a port moved into a
>  bond will see its upper master change.  If that bond is moved into a bridge,
>  the bond's upper master will change.  And so on.  The driver will track such
> -movements to know what position a port is in in the overall topology by
> +movements to know what position a port is in the overall topology by

Are you sure? The first 'in' is for position, the second for topology.
Equivalent to:

 movements to know in what position a port is in the overall topology by
                   ^^                         ^^

We can rephrase to avoid the double in:

  The driver will track such movements to know the position of a port
  within the overall topology by registering for netdevice events and
  acting on NETDEV_CHANGEUPPER.

>  registering for netdevice events and acting on NETDEV_CHANGEUPPER.
-- 
pw-bot: cr
