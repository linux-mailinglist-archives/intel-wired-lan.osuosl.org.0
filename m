Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 525EF2543E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 May 2019 17:42:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DF3FB8607D;
	Tue, 21 May 2019 15:42:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9cH5oVPsR7Az; Tue, 21 May 2019 15:42:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B9B318606C;
	Tue, 21 May 2019 15:42:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4BB101BF4DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 May 2019 15:42:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4365A85C6F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 May 2019 15:42:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LHsC0PfMtMa0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 May 2019 15:42:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from rp02.intra2net.com (rp02.intra2net.com [62.75.181.28])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BD41385782
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 May 2019 15:42:42 +0000 (UTC)
Received: from mail.m.i2n (unknown [172.17.128.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by rp02.intra2net.com (Postfix) with ESMTPS id 98326100097;
 Tue, 21 May 2019 17:42:39 +0200 (CEST)
Received: from localhost (mail.m.i2n [127.0.0.1])
 by localhost (Postfix) with ESMTP id 6CFEF84C;
 Tue, 21 May 2019 17:42:39 +0200 (CEST)
X-Virus-Scanned: by Intra2net Mail Security (AVE=8.3.54.32,VDF=8.16.15.54)
Received: from rocinante.m.i2n (rocinante.m.i2n [172.16.1.86])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: smtp-auth-user)
 by mail.m.i2n (Postfix) with ESMTPSA id 985FD6C7;
 Tue, 21 May 2019 17:42:37 +0200 (CEST)
From: Juliana Rodrigueiro <juliana.rodrigueiro@intra2net.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
Date: Tue, 21 May 2019 17:42:37 +0200
Message-ID: <3878056.TXPIU5uV5l@rocinante.m.i2n>
In-Reply-To: <d308eb17-98ab-13e7-6c74-d701288e43b5@intel.com>
References: <1623942.pXzBnfQ100@rocinante.m.i2n>
 <d308eb17-98ab-13e7-6c74-d701288e43b5@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Work around hardware unit
 hang by disabling TSO
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
Cc: thomas.jarosch@intra2net.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello Sasha,

On Wednesday, 15 May 2019 07:39:46 CEST Neftin, Sasha wrote:
> You are right, in some particular configurations e1000e devices stuck at
> Tx hang while TCP segmentation offload is on. But for all other users we
> should keep the TCP segmentation option is enabled as default. I suggest
> to use 'ethtool' command: ethtool -K <adapter> tso on/off to workaround
> Tx hang in your situation.
> Thanks,
> Sasha

thank you for your reply.

I did consider using "ethtool" to disable TSO for my use cases. However, I 
have no guarantees that a machine with the PCH2 device will not hang and 
render my system inaccessible before anything in userspace runs. No amount of 
connection outage is acceptable.

The problem escalates when we take into consideration that the exact 
circumstances that bring the device into an unrecoverable state don't seem to 
be known even by the Intel developers themselves.

This patch keeps the problematic device stable for all configurations.

So I ask myself, how actually feasible is it to gamble the usage of "ethtool" 
to turn on or off TSO every time the network configuration changes?

Why should we let the users run into an open knife instead of preemptively fix 
a known hardware bug via the kernel? Otherwise all Linux distributions would 
need to apply the magic ethtool fix for this specific PCI id.

Best regards,
Juliana


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
