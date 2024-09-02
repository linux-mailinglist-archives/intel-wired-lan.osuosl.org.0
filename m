Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 399D89687CF
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Sep 2024 14:47:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4D1360848;
	Mon,  2 Sep 2024 12:47:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L8vpzEohoQYq; Mon,  2 Sep 2024 12:47:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB18C6083E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725281224;
	bh=9cOI9KnOUZQfu2XmawuhNqZGtDq3Uhj8USMxBXUJLSs=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=gtjoLwVb8dZqhCGc9f8XKrIuW4LADXHLl82JYQSM8DmB0g+CKD0RiDUwtODNdAmQa
	 1yoNBLAr4RUAI76hlGYAZGtsWFDgYuNRTZfxV0ebB9ql+NQ/sRqletKVCPSElEMmSn
	 T9Kh+yUwRNbYO+13E5maGw+Tz+H18JSWIn0ZHlHQLIxlYPl3NmJnuz8TJEry3CyzET
	 dkt+4NLkrDEfdB7BlBRaHf1+Tc4hTudxF0bglBDGmCJXn72c1wa1q0RAPgJKe6MIFC
	 jR68Fyga+v0MqaC0mtxUc3oABv7ppewpvsHq1IGKAE0cD6ivIMClPzOdPrTAvd0Yot
	 4cHBksgYhAYog==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB18C6083E;
	Mon,  2 Sep 2024 12:47:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2919E1BF40F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 12:47:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0F26040226
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 12:47:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cK9_r8x8zk8R for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Sep 2024 12:47:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E20E4401E8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E20E4401E8
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E20E4401E8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 12:47:01 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 5F134A41FED;
 Mon,  2 Sep 2024 12:46:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8E0CC4CEC2;
 Mon,  2 Sep 2024 12:46:57 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
Date: Mon, 02 Sep 2024 13:46:44 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240902-igc-ss-puts-v1-1-c66a73b532c7@kernel.org>
X-B4-Tracking: v=1; b=H4sIALOz1WYC/x3MTQqAIBBA4avErBswiciuEi1KpxoIE6c/kO6et
 PwW7yUQikwCXZEg0sXCu8+oygLsOvqFkF02aKVrZZRGXiyKYDgPQUeNsZNq7UgOchEizfz8tx7
 43tDTc8Dwvh+eNc9bZwAAAA==
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Mailer: b4 0.14.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1725281220;
 bh=cqf4+ewWLaQPZ1rDZxdUXvpmttNTRtDo3EURRXc8/3s=;
 h=From:Date:Subject:To:Cc:From;
 b=CpYbUyq0rXCVJN5YCFNR7zOcujHHo6kXaNNF+cPz1JiLxw/UDLTpmOaZ0NYUC+S9t
 Bp4hMoZqqScpp8QpinyfxcBS4lA87YVUTykLgTTsgblU4e5GQs3UUD+xbQN3TB1klJ
 6QBNyjNzmxiVRZ+Cpz+qAOJ0yJRZnN9cQjpcTJYb7OfmvZ0xLyqNI0puHJBqgUFxSj
 CThPiBpzGC57q5lde6kIMHAzk/9FGX6HCAby+gKkatWmrq4nXPIm0QYpFghA8vnXc7
 tSO1yceExbdFRIMV4sV4z9jgGwiHEDB0S64wFt3acXwwIj7kz9gIJ+mcpz0Jn6HPK8
 qB6KubZnJo5mg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=CpYbUyq0
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: Consistently use
 ethtool_puts() to copy strings
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
Cc: netdev@vger.kernel.org, llvm@lists.linux.dev,
 Nick Desaulniers <ndesaulniers@google.com>,
 Nathan Chancellor <nathan@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Bill Wendling <morbo@google.com>,
 Justin Stitt <justinstitt@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ethtool_puts() is the preferred method for copying ethtool strings.
And ethtool_puts() is already used to copy ethtool strings in
igc_ethtool_get_strings(). With this patch igc_ethtool_get_strings()
uses it for all such cases.

In general, the compiler can't use fortification to verify that the
destination buffer isn't over-run when the destination is the first
element of an array, and more than one element of the array is to be
written by memcpy().

For the ETH_SS_PRIV_FLAGS the problem doesn't manifest as there is only
one element in the igc_priv_flags_strings array.

In the ETH_SS_TEST case, there is more than one element of
igc_gstrings_test, and from the compiler's perspective, that element is
overrun. In practice it does not overrun the overall size of the array,
but it is nice to use tooling to help us where possible. In this case
the problem is flagged as follows.

Flagged by clang-18 as:

In file included from drivers/net/ethernet/intel/igc/igc_ethtool.c:5:
In file included from ./include/linux/if_vlan.h:10:
In file included from ./include/linux/netdevice.h:24:
In file included from ./include/linux/timer.h:6:
In file included from ./include/linux/ktime.h:25:
In file included from ./include/linux/jiffies.h:10:
In file included from ./include/linux/time.h:60:
In file included from ./include/linux/time32.h:13:
In file included from ./include/linux/timex.h:67:
In file included from ./arch/x86/include/asm/timex.h:5:
In file included from ./arch/x86/include/asm/processor.h:19:
In file included from ./arch/x86/include/asm/cpuid.h:62:
In file included from ./arch/x86/include/asm/paravirt.h:21:
In file included from ./include/linux/cpumask.h:12:
In file included from ./include/linux/bitmap.h:13:
In file included from ./include/linux/string.h:374:
.../fortify-string.h:580:4: warning: call to '__read_overflow2_field' declared with 'warning' attribute: detected read beyond size of field (2nd parameter); maybe use struct_group()? [-Wattribute-warning]

And Smatch as:

.../igc_ethtool.c:771 igc_ethtool_get_strings() error: __builtin_memcpy() '*igc_gstrings_test' too small (32 vs 160)

Curiously, not flagged by gcc-14.

Compile tested only.

Signed-off-by: Simon Horman <horms@kernel.org>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 457b5d7f1610..ccace77c6c2d 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -768,8 +768,8 @@ static void igc_ethtool_get_strings(struct net_device *netdev, u32 stringset,
 
 	switch (stringset) {
 	case ETH_SS_TEST:
-		memcpy(data, *igc_gstrings_test,
-		       IGC_TEST_LEN * ETH_GSTRING_LEN);
+		for (i = 0; i < IGC_TEST_LEN; i++)
+			ethtool_puts(&p, igc_gstrings_test[i]);
 		break;
 	case ETH_SS_STATS:
 		for (i = 0; i < IGC_GLOBAL_STATS_LEN; i++)
@@ -791,8 +791,8 @@ static void igc_ethtool_get_strings(struct net_device *netdev, u32 stringset,
 		/* BUG_ON(p - data != IGC_STATS_LEN * ETH_GSTRING_LEN); */
 		break;
 	case ETH_SS_PRIV_FLAGS:
-		memcpy(data, igc_priv_flags_strings,
-		       IGC_PRIV_FLAGS_STR_LEN * ETH_GSTRING_LEN);
+		for (i = 0; i < IGC_PRIV_FLAGS_STR_LEN; i++)
+			ethtool_puts(&p, igc_priv_flags_strings[i]);
 		break;
 	}
 }

