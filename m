Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AC73453C369
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Jun 2022 05:38:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B673383F40;
	Fri,  3 Jun 2022 03:38:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ddLW8nrE2edE; Fri,  3 Jun 2022 03:38:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C32CA82AC3;
	Fri,  3 Jun 2022 03:38:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 651A11BF344
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jun 2022 21:37:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4B1C54021C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jun 2022 21:37:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ebC53Uge55sZ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jun 2022 21:37:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3AF9340155
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jun 2022 21:37:45 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id AB2CDB82196;
 Thu,  2 Jun 2022 21:37:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC08BC385A5;
 Thu,  2 Jun 2022 21:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1654205860;
 bh=NzPu4y+YDxo8xECiHhQ3BqLmkylZYO5LwcAKnhOKhgU=;
 h=Subject:From:To:Cc:Date:From;
 b=nA0PNAMBcDrNsrNnK3Yhr5aubXxM3qkV4YECCYgJ4DSxTlwVbC34lxKZVd2T1d7o1
 5vfMsYPGYDYHY35WLdxoRMVGmy3i9Zu4AGyEElaLdEVyJIepTdHXqPew+WUae60H9J
 6o1OjgTAOcmBDJy8LilDGh6xqqijP1vNbx5xry1qfR4l0h5NzijqdjmMEscXSeilYV
 Bw2q00b9Si5oDWZ6tnx4K1T8/ieUwwacRJDlJDU1A23a69hTkVeL99nuoUu0UN3zln
 sV3OdLHtZNdyIDjDUbeMFDBgHGWGhKLwXcSR3lFQ3EwdB0AukN1VZ+fFQRZpw0tUTc
 sGB4V0+nNGImw==
Message-ID: <8225a14538339c7b38d9da1974ebefaf4db1bc51.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com, 
 jesse.brandeburg@intel.com
Date: Thu, 02 Jun 2022 17:37:38 -0400
User-Agent: Evolution 3.44.1 (3.44.1-1.fc36) 
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 03 Jun 2022 03:38:48 +0000
Subject: [Intel-wired-lan] intermittent ixgbe transmit queue timeouts in
 v5.18 kernels
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
Cc: Ilya Dryomov <idryomov@gmail.com>, Xiubo Li <xiubli@redhat.com>,
 Venky Shankar <vshankar@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The Ceph project test lab has a fairly large cluster of machines with
ixgbe adapters:

    03:00.0 Ethernet controller: Intel Corporation 82599ES 10-Gigabit SFI/SFP+ Network Connection (rev 01)

Recently, we've started getting intermittent tx queue timeouts with
these machines. One of them is reported here:

    https://tracker.ceph.com/issues/55823

Usually this happens when we're trying to do a sync, and there is a
flurry of transmission activity. Afterward we see a lot of fallout in
ceph culminating in softlockups.

The kernels we're testing have some patches that are not yet in
mainline, but mostly they are confined to net/ceph and fs/ceph, and
shouldn't really affect hw drivers.

The problem manifested pretty regularly during v5.18 and then I didn't
see it for a while. I had figured it was something that had been fixed,
but I think it was just "luck".

I attempted a bisect a while back, and ruled out recent ceph changes as
the issue. Unfortunately, I wasn't able to get to a conclusive patch
that broke it, but I think it likely crept in during the initial merge
window for v5.18 (pre-rc1).

One other oddity: the test lab often installs bleeding-edge kernels on
old distros (RHEL8 and Ubuntu from similar era). Is it possible that the
firmware that ships with these older distros is not suitable for the
more recent driver in v5.18 ?

Any thoughts or suggestions on things we can do to fix this?

Thanks,
-- 
Jeff Layton <jlayton@kernel.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
