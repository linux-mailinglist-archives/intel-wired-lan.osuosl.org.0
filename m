Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48EE466C996
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Jan 2023 17:52:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A5AAF405F5;
	Mon, 16 Jan 2023 16:52:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A5AAF405F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673887932;
	bh=NmOyqldcgAAnp/kHAhObS0rDuGhdeNKAdYySWnfnqdE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4UkdYA2wn18ew2phKofgkhs0bQ4wDEE5nv8QBVvVhSBSxMSboVXBNiFn6ndvb6alq
	 8zAvXN4CAahtxfEsme1n9kKDGCI98DM4+rGLOwRGjVHX2ZFQe8H5qFkTmqrzUBwcY1
	 RnkhrVei5xTMOXtXTCF3QuX9/i5Pz5v30TkZ+6n7ZV5FNNC84ieo+xLH29EogiT2Zz
	 e7WeXIoSXGp9QWtRXDoYjc5rfx4B1RM+Puy7RrkBMiOIPF0xGFnlWESld/uYcTF0fd
	 kXYVENOsQh/93K2HwiILNTdfr4CsQ8zDs6iVoqf8JnP7YuWzm/UQnZox+6nWLsbWum
	 iuPb5h/Sd0BOA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gJIpRufbIYgR; Mon, 16 Jan 2023 16:52:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 810BA405DD;
	Mon, 16 Jan 2023 16:52:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 810BA405DD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 96AA01BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 16:52:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7295F81E45
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 16:52:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7295F81E45
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sAZVd1ytjGyI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jan 2023 16:52:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF5D781B25
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BF5D781B25
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 16:52:05 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A281E61037;
 Mon, 16 Jan 2023 16:52:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 912F8C433EF;
 Mon, 16 Jan 2023 16:52:03 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: stable@vger.kernel.org
Date: Mon, 16 Jan 2023 16:49:48 +0100
Message-Id: <20230116154901.743823137@linuxfoundation.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230116154847.246743274@linuxfoundation.org>
References: <20230116154847.246743274@linuxfoundation.org>
User-Agent: quilt/0.67
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1673887924;
 bh=iSqDLD6V+EXFHPEBmFJh4zIKI9zQjbomE3YIKznsP8c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=xYEYsn5RcZvwF926sON9mU8NtHH0CSTiIWZkHfkWwGr6s5l4nAxXAH8kqgMQSVT4m
 5mm2tUgRmBjjr22VY4XQW4tqkTAlGYdsUAtpsEIuKYAKrAwdlSAmj7S3fDiLcGYMDj
 jln7QbJHqcBbVnhCsdo2iZFKjbpDXyeFa+lZp+Gw=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
 header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg
 header.b=xYEYsn5R
Subject: [Intel-wired-lan] [PATCH 4.19 326/521] igb: Do not free q_vector
 unless new one was allocated
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
Cc: Sasha Levin <sashal@kernel.org>, Kees Cook <keescook@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, patches@lists.linux.dev,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 "Michael J. Ruhl" <michael.j.ruhl@intel.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Kees Cook <keescook@chromium.org>

[ Upstream commit 0668716506ca66f90d395f36ccdaebc3e0e84801 ]

Avoid potential use-after-free condition under memory pressure. If the
kzalloc() fails, q_vector will be freed but left in the original
adapter->q_vector[v_idx] array position.

Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Eric Dumazet <edumazet@google.com>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Michael J. Ruhl <michael.j.ruhl@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 3d2dd15859cb..87f98170ac93 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -1211,8 +1211,12 @@ static int igb_alloc_q_vector(struct igb_adapter *adapter,
 	if (!q_vector) {
 		q_vector = kzalloc(size, GFP_KERNEL);
 	} else if (size > ksize(q_vector)) {
-		kfree_rcu(q_vector, rcu);
-		q_vector = kzalloc(size, GFP_KERNEL);
+		struct igb_q_vector *new_q_vector;
+
+		new_q_vector = kzalloc(size, GFP_KERNEL);
+		if (new_q_vector)
+			kfree_rcu(q_vector, rcu);
+		q_vector = new_q_vector;
 	} else {
 		memset(q_vector, 0, size);
 	}
-- 
2.35.1



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
