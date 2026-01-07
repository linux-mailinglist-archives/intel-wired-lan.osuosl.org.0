Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A1FCFB86A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 07 Jan 2026 02:05:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F6E860788;
	Wed,  7 Jan 2026 01:05:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0xkn4yRTM_AI; Wed,  7 Jan 2026 01:05:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 945D160A79
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767747930;
	bh=M4zvVVulXdWhqadSyWFUhE3bReQYpV8j/iFRIL/Etmk=;
	h=Date:In-Reply-To:References:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=lCR3TZiITlzFom68qOqkl7fai5yIwmG+7dCu5qwq1XZQNVn6f8029GFB0gqbHgmqO
	 ac16gdu10dqBPXAWhW4fWh3ZfyDkAwWJq+oH/hyrbVjGOs0QykQREC8JmCc9VUZXBy
	 QWLQAAmb3KNi28qgCeDa8lyj4FaRLfreJV5QHJJZjtXaaJi8rg9921FAZfn2xO/oU4
	 kEGc2dvYfQOzK5luYqybqJk/wiEKNE3WLHxSg0rAw7sPpqD1h9w3zB5CKCI3myk3PU
	 yXbpMzMfj4jvXBx1ojEuzPqAJ73r8k3Ed/XZusbXFOYasv+s/n0ZVDTNxUIgeNMEqq
	 t7LW1QuSI8HWw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 945D160A79;
	Wed,  7 Jan 2026 01:05:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id CDBB670B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 01:05:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B449F60788
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 01:05:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id noXrfv_5mQIQ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jan 2026 01:05:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1349; helo=mail-dy1-x1349.google.com;
 envelope-from=3vrfdaqykd4egttqqnlttlqj.htrnsyjq-1nwji-qfsqnxyx.txztxq.twl@flex--boolli.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C106660724
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C106660724
Received: from mail-dy1-x1349.google.com (mail-dy1-x1349.google.com
 [IPv6:2607:f8b0:4864:20::1349])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C106660724
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 01:05:27 +0000 (UTC)
Received: by mail-dy1-x1349.google.com with SMTP id
 5a478bee46e88-2ae32686ed0so3085696eec.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 06 Jan 2026 17:05:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767747927; x=1768352727;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=M4zvVVulXdWhqadSyWFUhE3bReQYpV8j/iFRIL/Etmk=;
 b=lP2Uwna0/8XYK5ple4DUjAvpTLWjmT8DDvuyHb4FowQMHg7l6qFVwWTkfLiMW1lgj/
 knF+4loHGwRhsMMK/XeMb2Qr/d2hXxq/zf6Y61Z2xFRZ8m15l6wVsaF43IgJU0MMHy3+
 GCtu2oQQaJTGPZSRrrrWR9C4H/4/2Fm4+0NFzdHVZdOa1F7hclsEo7ZDonNH38Z5NikM
 o/vQ8NTLj/DyRZZN5/r26gl3MknBfODaIDPm/ZLBvk5gDFoduOnkI1JrWE4T7z44/YtH
 Tso6dz3uC60Dubg5IKT4GUge37+Ie1T7Y4fT55XnaBnog85govc9ky7+ciM4LQPdWo/8
 tkbA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVHueK76qDCQOt9MDDQ1wU8gW8ts2e82MqureJhokq6f8HYOcopeQYfbQw+2ueXUpXrfjQe0mnLakjTvYimHbo=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzaroogTv3rCzBRa0CH62IlfkY0QmB3FmZtyz0LuGJsq69KNFKa
 EUfTs1zCGb4qyy4NTNCPJ32ZBhqU12eA416qW6JXa2LZv1433IWnr5zAwrej3vV5eQ7zoIbtdW0
 pG9lW1g==
X-Google-Smtp-Source: AGHT+IF/T2qxWGqmumi/bkN87o7jran59XQI0j+hSUBAJ3tgiDQyNNjx2d378nPm27Dc1IaYsAmT8P6LEV8=
X-Received: from dybsy4.prod.google.com ([2002:a05:7301:7004:b0:2ab:f916:f31f])
 (user=boolli job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7301:438c:b0:2b1:7486:3a6e
 with SMTP id 5a478bee46e88-2b17d20777amr392773eec.12.1767747926653; Tue, 06
 Jan 2026 17:05:26 -0800 (PST)
Date: Wed,  7 Jan 2026 01:05:03 +0000
In-Reply-To: <20260107010503.2242163-1-boolli@google.com>
Mime-Version: 1.0
References: <20260107010503.2242163-1-boolli@google.com>
X-Mailer: git-send-email 2.52.0.351.gbe84eed79e-goog
Message-ID: <20260107010503.2242163-5-boolli@google.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 David Decotigny <decot@google.com>, Anjali Singhai <anjali.singhai@intel.com>, 
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Brian Vazquez <brianvv@google.com>, 
 Li Li <boolli@google.com>, emil.s.tantilov@intel.com
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1767747927; x=1768352727; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=M4zvVVulXdWhqadSyWFUhE3bReQYpV8j/iFRIL/Etmk=;
 b=bST1ra8g6wr+9lX1QDV1LJOFQ8Iv4X1d7Q75yOl2NXDK2Kn4ONuKJfdXUrtw5tyrZx
 q9lHP3F6cabG41arpTL4igKJ2hVkZavhxhmp8PEjTNP7DzpgCaxfXLT6LeawJhxFzUMS
 aTgfB16FP6mH+qS6fQKaCSg06ejK6L27OoSCWo0l16MRRKdTMOaMM2WRHAvitN5AvZTW
 QVOGlCeKy6nkpmkbDK8KIt8gCKKEclI3zUX6NETyncbhMu5ERm6gPhh/nnZF8runMpSm
 v/TaNhwUF3RKu+aQt3HqnT7MAANol4z/lUXJKXSeRuo4eq9Rvj214rZwXo1odbSK5Hda
 vqWA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=bST1ra8g
Subject: [Intel-wired-lan] [PATCH 5/5] idpf: skip stopping/opening vport if
 it is NULL during HW reset
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
From: Li Li via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Li Li <boolli@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When an idpf HW reset is triggered, it clears the vport but does
not clear the netdev held by vport:

    // In idpf_vport_dealloc() called by idpf_init_hard_reset(),
    // idpf_init_hard_reset() sets IDPF_HR_RESET_IN_PROG, so
    // idpf_decfg_netdev() doesn't get called.
    if (!test_bit(IDPF_HR_RESET_IN_PROG, adapter->flags))
        idpf_decfg_netdev(vport);
    // idpf_decfg_netdev() would clear netdev but it isn't called:
    unregister_netdev(vport->netdev);
    free_netdev(vport->netdev);
    vport->netdev = NULL;
    // Later in idpf_init_hard_reset(), the vport is cleared:
    kfree(adapter->vports);
    adapter->vports = NULL;

During an idpf HW reset, when userspace restarts the network service,
the vport associated with the netdev is NULL, and so a kernel panic would
happen:

[ 1791.669339] BUG: kernel NULL pointer dereference, address: 0000000000000070
...
[ 1791.717130] RIP: 0010:idpf_vport_stop+0x16/0x1c0

This can be reproduced reliably by injecting a TX timeout to cause
an idpf HW reset, and injecting a virtchnl error to cause the HW
reset to fail and retry, while running "service network restart" in
userspace.

With this patch applied, we see the following error but no kernel
panics anymore:

[  181.409483] idpf 0000:05:00.0 eth1: mtu not changed due to no vport innetdev
RTNETLINK answers: Bad address
...
[  181.913644] idpf 0000:05:00.0 eth1: not stopping vport because it is NULL
[  181.938675] idpf 0000:05:00.0 eth1: mtu not changed due to no vport in netdev
...
[  242.849499] idpf 0000:05:00.0 eth1: not opening vport because it is NULL
...
[  304.289364] idpf 0000:05:00.0 eth0: not opening vport because it is NULL

Signed-off-by: Li Li <boolli@google.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 53b31989722a7..a9a556499262b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1021,6 +1021,8 @@ static void idpf_vport_stop(struct idpf_vport *vport, bool rtnl)
  */
 static int idpf_stop(struct net_device *netdev)
 {
+	if (!netdev)
+		return 0;
 	struct idpf_netdev_priv *np = netdev_priv(netdev);
 	struct idpf_vport *vport;
 
@@ -1029,9 +1031,14 @@ static int idpf_stop(struct net_device *netdev)
 
 	idpf_vport_ctrl_lock(netdev);
 	vport = idpf_netdev_to_vport(netdev);
+	if (!vport) {
+		netdev_err(netdev, "not stopping vport because it is NULL");
+		goto unlock;
+	}
 
 	idpf_vport_stop(vport, false);
 
+unlock:
 	idpf_vport_ctrl_unlock(netdev);
 
 	return 0;
@@ -2301,6 +2308,11 @@ static int idpf_open(struct net_device *netdev)
 
 	idpf_vport_ctrl_lock(netdev);
 	vport = idpf_netdev_to_vport(netdev);
+	if (!vport) {
+		netdev_err(netdev, "not opening vport because it is NULL");
+		err = -EFAULT;
+		goto unlock;
+	}
 
 	err = idpf_set_real_num_queues(vport);
 	if (err)
-- 
2.52.0.351.gbe84eed79e-goog

