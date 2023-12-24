Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F33E581E869
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Dec 2023 17:30:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E43F60EFA;
	Tue, 26 Dec 2023 16:30:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E43F60EFA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703608222;
	bh=HEXRHZmq8iHpgH0xBeQhv/Gusv8R2X/xEdygLERpyuQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dnpNPOjYsFpsCOzHMSC7YIA4MUP1VLUTM6vcwl9UgBoQVW9QRykjNgxKLYLhXf1dE
	 QmV761SmeW5cZEueVUsnudbhbzOIHZTraKyBYaQXax/3K9sda/jMo49xCbVLTGaNM7
	 SYpQTMkeVFZF7Cf8KXp95Z6IDc/cJpW2PCSEnLUFSavRNXv2wkrlPTBs0e9/0S4f3Y
	 +I1P/8HlycIR73zF31mWCP/RWQwMErZCzHlt6fNT/vVdnkJQPvxXU6oYRcJMa9Plh1
	 4aJzsUjVSrUI1/VGMui60ZsY9HrEbo2K42kNC0hllSHzWSwkpkUnVNmlMUIxllyxZV
	 546rpZSuoiMLQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6i_w3ze8nvZj; Tue, 26 Dec 2023 16:30:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6728960D5F;
	Tue, 26 Dec 2023 16:30:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6728960D5F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9E7E91BF279
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Dec 2023 16:31:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7C5EC81BCB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Dec 2023 16:31:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C5EC81BCB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SjZi5Wwx3CJd for <intel-wired-lan@lists.osuosl.org>;
 Sun, 24 Dec 2023 16:31:06 +0000 (UTC)
Received: from mail1.merlins.org (magic.merlins.org [209.81.13.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7212681BB4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Dec 2023 16:31:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7212681BB4
Received: from lfbn-idf3-1-20-89.w81-249.abo.wanadoo.fr ([81.249.147.89]:34258
 helo=sauron.svh.merlins.org) by mail1.merlins.org with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim
 4.94.2 #2)
 id 1rHRNE-0003Da-5q by authid <merlins.org> with srv_auth_plain;
 Sun, 24 Dec 2023 08:30:44 -0800
Received: from merlin by sauron.svh.merlins.org with local (Exim 4.92)
 (envelope-from <marc@merlins.org>)
 id 1rHRND-0001u5-1N; Sun, 24 Dec 2023 08:30:43 -0800
Date: Sun, 24 Dec 2023 08:30:43 -0800
From: Marc MERLIN <marc@merlins.org>
To: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <20231224163043.GA6759@merlins.org>
References: <20231206113934.8d7819857574.I2deb5804ef1739a2af307283d320ef7d82456494@changeid>
 <20231206084448.53b48c49@kernel.org>
 <e6f227ee701e1ee37e8f568b1310d240a2b8935a.camel@sipsolutions.net>
 <a44865f5-3a07-d60a-c333-59c012bfa2fb@intel.com>
 <20231207094021.1419b5d0@kernel.org>
 <20231211045200.GC24475@merlins.org>
 <83dc80d3-1c26-405d-a08d-2db4bc318ac8@gmail.com>
 <20231215174634.GA10053@merlins.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231215174634.GA10053@merlins.org>
X-Sysadmin: BOFH
X-URL: http://marc.merlins.org/
X-SA-Exim-Connect-IP: 81.249.147.89
X-SA-Exim-Mail-From: marc@merlins.org
X-Mailman-Approved-At: Tue, 26 Dec 2023 16:30:10 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=merlins.org
 ; s=key; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ev/AwsBshGk27Lyapy+0cmZFl40djkk5uMqzCqLFKnQ=; b=LBXNRQa7mr65+UzvHajmNA/Tw4
 E5nrhuQjrGj7X+lk/UsjtKGy8RjHewpHVidfc8eSKQ4+42/6BHCE8YFzYOfXFrw7op0X+lOfce4jd
 nBZ3QvY0dMa+2gTeyoYl78O7jGn07FW7VkgYVJzz2stb19bcA83QXtRZtTp8udm3RQ5cWhE7fB4yq
 930wLAe2nxrO36YVUj9ZyRYt2Lc9WiCy1mbQ/xGZsQnfy66SUTIvqDftDH1QR9d5bWXQpB5t1r4EB
 a9sm6R8ffB27OUOM2tGNNRA4T0b838rlXFlELBNQEjaBp/vj9efzGFKvzdoIYUqtNWp8oWvn9QhA2
 7AyH4q0Q==;
Subject: Re: [Intel-wired-lan] [PATCH net v3] net: ethtool: do runtime PM
 outside RTNL
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
Cc: Jakub Kicinski <kuba@kernel.org>, Johannes Berg <johannes@sipsolutions.net>,
 netdev@vger.kernel.org,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Dec 15, 2023 at 09:46:34AM -0800, Marc MERLIN wrote:
> On Fri, Dec 15, 2023 at 02:42:01PM +0100, Heiner Kallweit wrote:
> > Why don't you simply disable runtime pm for the affected device as a
> > workaround? This can be done via sysfs.
> 
> 1) because I didn't know what the exact bug was and how to work around it :)

Mmmh, so I need to test an ubuntu kernel (6.5.0-14) because of sound
issues in mainline TOT, and I can't boot the kernel to completion
without hititng this hang bug. I'm not exactly sure which part of the
boot triggers it.

I can't patch that kernel easily. How exactly do I disable runtime PM
from the kernel command line for "that device" which I'm not even sure
which one it is.  If it's the eth device, I already removed the igc
module to prevent it from loading, and I also removed the ethtool
binary, but I'm still getting the hang.

On the plus side, with 6.6.8 and the old patch which I understand is not
the ideal solution, I can confirm that I've been running problem free
until now, so thanks again for that interim patch.

Thanks,
Marc
-- 
"A mouse is a device used to point at the xterm you want to type in" - A.S.R.
 
Home page: http://marc.merlins.org/                       | PGP 7F55D5F27AAF9D08
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
