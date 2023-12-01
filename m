Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0459E80050E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Dec 2023 08:51:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 892294208E;
	Fri,  1 Dec 2023 07:51:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 892294208E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701417077;
	bh=ullrcc5Mr17F0akYkuDWKBYsPi9Xo6h4mCvS+fQbVEk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=0VpocwpnKVnWztf8KWP92hgRq7vbrIkKE6a77PW03/y02MrSFhdehvYcwvh3PbPSY
	 XvFZaXwIARgo74XcVKx1IPfi0Qm5kMWdHx/QfLTgdseQ/q75o0iryUo+aiNV921h8k
	 PUhHDNwvPazRTyy3EpU6p9Ak/KSYvOGzbOvHEpu7ruy8pqB4OxeSUuVGWak8olQfJw
	 ypYHuTu0Hw33y7LkxX9VgpgBry6XuNqdfT8z+LEeU0R354D+k8Q4clpvKmwGU1ijLE
	 1CzCCMiLQmT8ZWN7x4DvG1e2zeZlTDFHElZ6X3IxxAheJOPXXUae2lxnKRibOUZWDj
	 I4GEEDnJmiY1g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P3hofcLJGRSS; Fri,  1 Dec 2023 07:51:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 726384207F;
	Fri,  1 Dec 2023 07:51:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 726384207F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B55601BF98D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 07:51:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8EA2C4207F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 07:51:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8EA2C4207F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F9df5IXTE9DS for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Dec 2023 07:51:02 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 292554207C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 07:51:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 292554207C
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Fri,  1 Dec 2023 08:50:41 +0100
Message-Id: <20231201075043.7822-1-kurt@linutronix.de>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1701417059;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=EqwBLovC5ct849IeQWIt3omI4kJ6O9qsyWxt4uWuYCc=;
 b=SssFFLM/u5i1R8h3UodZcrGSPlEXNIbgBJLBiIrnipg1dXAz/v6fLYLMdezGgB86mILedE
 F0mjHhyf8DHgF34gTGN0fZANdcKsnsstUBFgOWq2uYayzd5DH/LCb4TlkI4Uy9EX5dQavk
 5vg01L085IvcAqgA3W8woVyakkMM7Fl5XFQGvK9XyTk+dS3CwZRiP6Lo4kjz/sIGkaljKb
 fR31m/pRyHf0ygYt9TEdp9H1Qvb9H94uQ7SaR0SZXgrgNO7Eo5oAsGyCcaq6MJxiPWeurH
 W6cj67vKxaYxpa/wN5o9n3ld93dXHntlRSKt24UzZk7t4lrY/oTLVO60ENcRtA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1701417059;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=EqwBLovC5ct849IeQWIt3omI4kJ6O9qsyWxt4uWuYCc=;
 b=LRDUF9T+tuvT0Y2WWu751P6bOu42eJSknaAjZ2rlQNtU07K44tGHqzymNBpX0kGftMu5SQ
 uL66Dy6lpTzQLPAQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=SssFFLM/; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=LRDUF9T+
Subject: [Intel-wired-lan] [PATCH iwl-net v2 0/2] igc: ethtool: Check VLAN
 TCI mask
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
Cc: netdev@vger.kernel.org, Kurt Kanzenbach <kurt@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

currently it is possible to configure receive queue assignment using the VLAN
TCI field with arbitrary masks. However, the hardware only supports steering
either by full TCI or the priority (PCP) field. In case a wrong mask is given by
the user the driver will silently convert it into a PCP filter which is not
desired. Therefore, add a check for it.

Patch #1 is a minor thing found along the way.

Changes since v1:

 - Split patches 4 and 5 for -net
 - Rebase to -net
 - Wrap commit message at 75 chars
 - Add Ack from Vinicius

Previous versions:

 - https://lore.kernel.org/netdev/20231128074849.16863-1-kurt@linutronix.de/

Kurt Kanzenbach (2):
  igc: Report VLAN EtherType matching back to user
  igc: Check VLAN TCI mask

 drivers/net/ethernet/intel/igc/igc.h         |  1 +
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 34 ++++++++++++++++++--
 2 files changed, 32 insertions(+), 3 deletions(-)

-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
