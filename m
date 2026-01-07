Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 69622CFB867
	for <lists+intel-wired-lan@lfdr.de>; Wed, 07 Jan 2026 02:05:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F7394090E;
	Wed,  7 Jan 2026 01:05:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LV70kz3fRGaE; Wed,  7 Jan 2026 01:05:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F1C134094D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767747925;
	bh=uYuKjIoFITh34belvsUGGdGwbr0H2yT+hfJIc/2t9is=;
	h=Date:In-Reply-To:References:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=xNfArUccdmP5GPBfhqC+CN8BbOSDqNNZAmW2/n2icoBlVXno1zsPSEEVM+S8P3xwU
	 iLkZGAg56M2x6hcvjvZu45ZqAnEYToZgXxFTowGAi9c02nMxF3uQXo5ey6OnHEWnT9
	 5vI8+gIdSi71T4NIYBPAv5UIgeX8X7xwGaGZxAlht5xEeZ+UGzSsgal3LaaZkDNWxe
	 3lEXYTNTH8G8U3JfsuDjNjJvfBpUHOSmtLHWw9YAlAOfL9bbe+5UszRYF/sHCWgnGl
	 WLs4TWdb1UI/snRN4jbT2VkxsPEEwY810kDxqa88ZzlMSYPBJZQ0csGvNMRA8ZLz6u
	 9CMA30JCHnmPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F1C134094D;
	Wed,  7 Jan 2026 01:05:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A90AC249
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 01:05:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9AB4F8176B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 01:05:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S773yESauYSD for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jan 2026 01:05:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1349; helo=mail-dy1-x1349.google.com;
 envelope-from=3ubfdaqykd3wgttqqnlttlqj.htrnsyjq-1nwji-qfsqnxyx.txztxq.twl@flex--boolli.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A2F2281768
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2F2281768
Received: from mail-dy1-x1349.google.com (mail-dy1-x1349.google.com
 [IPv6:2607:f8b0:4864:20::1349])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A2F2281768
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 01:05:22 +0000 (UTC)
Received: by mail-dy1-x1349.google.com with SMTP id
 5a478bee46e88-2b0751d8de7so1160143eec.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 06 Jan 2026 17:05:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767747921; x=1768352721;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=uYuKjIoFITh34belvsUGGdGwbr0H2yT+hfJIc/2t9is=;
 b=ievM3J+5F6z7lnRsz4c5UoJFHigYtME5lkh8sKZnMvyB66ubVjqFhoQ/vYRPz9KI3f
 8sM2Ph1w8dApNFBoDXZTcl7L9c5u2TV9EKB4F5pcLEGixbnPYDLaTNBhcZWnWJoc3sMj
 xHFLfibQOm4mB5X3OiAOKR3rqVXhjamJ9gcOrhstQ4mDYRiBkRlMjEqYMwFIlsKvQuTH
 5p5FWy3V6V+Eggtp6T2IoBtW+gqtBEUlSJcb1+sAVXLxRz0NZD+A1z/p6A7znroD2B9J
 s3/rqXLPPX/ZPaAEdKcVieCFP1yweM82XAQnsXmsaRVUeskKVQVrPKR4r+Ga7qIIdsJN
 UPCg==
X-Forwarded-Encrypted: i=1;
 AJvYcCW9X6lXrvmo8OZnaysRu3BMD9pEJxpXkgNncc/qffK7TADWyIYFXa/whnPo5W6P4uU/slQgCDF4rAfUT8iYQsI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwW4D4DDqQFRBV1UQVW7F0Yc0AvBfeWQhs4TUPIaqmgTjMbGxX/
 2TIap8zvW1aQnPz/GP0lUQ+F8iVdcLz8GdIK/041ji8A1JbVK2EIWyuWsvv/CYTLUKMrf4O5VHQ
 TVHZPSQ==
X-Google-Smtp-Source: AGHT+IERehY56UWpPh//i5oxfb0HeZGQNoZ+QgzVqNukRsBFB/92C9fjnGE+fl3jAJe6woD72AFL9kZCyck=
X-Received: from dlkk2.prod.google.com ([2002:a05:7022:6082:b0:121:7c06:d4b5])
 (user=boolli job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:701b:2089:20b0:11b:2138:4758
 with SMTP id a92af1059eb24-121f8b2bc09mr583152c88.21.1767747921545; Tue, 06
 Jan 2026 17:05:21 -0800 (PST)
Date: Wed,  7 Jan 2026 01:05:02 +0000
In-Reply-To: <20260107010503.2242163-1-boolli@google.com>
Mime-Version: 1.0
References: <20260107010503.2242163-1-boolli@google.com>
X-Mailer: git-send-email 2.52.0.351.gbe84eed79e-goog
Message-ID: <20260107010503.2242163-4-boolli@google.com>
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
 d=google.com; s=20230601; t=1767747921; x=1768352721; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=uYuKjIoFITh34belvsUGGdGwbr0H2yT+hfJIc/2t9is=;
 b=174273Zc/lrmsE1vMBlAyyl/jdVZHGtkAh2DEkdfZy2IkIUJespXDVh6rhjBqRwcvU
 mXY3b+oN3BjNygWTnH1171b+vyMgyNmFOSdI3KZtmTuA/ii9w8IPkjM0mXq4wjr7tTQO
 fT7V1iFVAB5zNaHpPypbFW5VMANOdOmch5dbFnLN28xcXt0VBQLe2Dx2PpYgvsePqWtG
 Tx2NCUZ+S5L/qrfdKTurVcXK/TUUvDItsoCF5zGd6aOmKHT0c7+tYgFDkiUrYLV+FsZf
 fGwgzVV3Ompx18ZtZipc6RAKr5CqwE3hL3E33H5MD2YAQM+JVBvVMJIhd1KhxPWIzhW3
 /6Og==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=174273Zc
Subject: [Intel-wired-lan] [PATCH 4/5] idpf: skip setting channels if vport
 is NULL during HW reset
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

During an idpf HW reset, when userspace changes the netdev channels,
the vport associated with the netdev is NULL, and so a kernel panic
would happen:

[ 2245.795117] BUG: kernel NULL pointer dereference, address: 0000000000000088
...
[ 2245.842720] RIP: 0010:idpf_set_channels+0x40/0x120

This can be reproduced reliably by injecting a TX timeout to cause
an idpf HW reset, and injecting a virtchnl error to cause the HW
reset to fail and retry, while running "ethtool -L" in userspace.

With this patch applied, we see the following error but no kernel
panics anymore:

[ 1176.743096] idpf 0000:05:00.0 eth1: channels not changed due to no vport in netdev
netlink error: Bad address

Signed-off-by: Li Li <boolli@google.com>
---
 drivers/net/ethernet/intel/idpf/idpf_ethtool.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index c71af85408a29..1b03528041af4 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -580,6 +579,11 @@ static int idpf_set_channels(struct net_device *netdev,
 
 	idpf_vport_ctrl_lock(netdev);
 	vport = idpf_netdev_to_vport(netdev);
+	if (!vport) {
+		netdev_err(netdev, "channels not changed due to no vport in netdev\n");
+		err = -EFAULT;
+		goto unlock_mutex;
+	}
 
 	idx = vport->idx;
 	vport_config = vport->adapter->vport_config[idx];
-- 
2.52.0.351.gbe84eed79e-goog

