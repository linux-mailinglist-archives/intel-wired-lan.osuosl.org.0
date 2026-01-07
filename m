Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 02AD2CFB85E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 07 Jan 2026 02:05:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A95B54090F;
	Wed,  7 Jan 2026 01:05:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WQzUA7VHyLO7; Wed,  7 Jan 2026 01:05:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBD3140910
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767747912;
	bh=rZnlneAj7hgChlZy1AzKKPt9WN3tQFEPm48Mh4Bhh+4=;
	h=Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=sN16gMTDxAs1egl1wa1L6Uc9DBXAAcDR0EcmzO1cCy32nd21vglguB4jge5smXHkx
	 WpZf5IO8b2oN3J5gi5kNkiuCt+LFhS5tT9szzOe8OaZ+HDsKRN40XneJ98JHHsg5lo
	 R0x4OfBfhS1AyxczPcmN9CETW3wAbEGXPxG7fApORun3DudCZdLppZjQ8o73Ah5QY7
	 INVLrpi32zT2XK3KL6OtDzWGZl8MAIieHwCVT4uk9RE508fV/IcGZf+rIwo7wsNIjo
	 i45XqHmjsxdIQQK8r2XfSjR2lrjQqcNCkOiiwUxA+d1doIBO/Jz5Cj34pLlsXAQ/0V
	 DU64eN3PN8ViQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CBD3140910;
	Wed,  7 Jan 2026 01:05:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8CED1249
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 01:05:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7E39F60724
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 01:05:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yNkHYfJKntYE for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jan 2026 01:05:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::124a; helo=mail-dl1-x124a.google.com;
 envelope-from=3rlfdaqykd28obbyyvtbbtyr.pbzvagry-jverq-ynayvfgf.bfhbfy.bet@flex--boolli.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CA9CC6071C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA9CC6071C
Received: from mail-dl1-x124a.google.com (mail-dl1-x124a.google.com
 [IPv6:2607:f8b0:4864:20::124a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CA9CC6071C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 01:05:10 +0000 (UTC)
Received: by mail-dl1-x124a.google.com with SMTP id
 a92af1059eb24-11dd10b03c6so1326197c88.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 06 Jan 2026 17:05:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767747910; x=1768352710;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=rZnlneAj7hgChlZy1AzKKPt9WN3tQFEPm48Mh4Bhh+4=;
 b=dLDp9dfJDjFy2BB5yKhwOVc/O8gus/zHbu9l+Ngj0cG5v1M+4GmyO6qV/yeLmT/jmT
 N2jymGcXPuDcnf9oykprTXhDwkJfX5xYM8Cibr/tRJjcxptCjnLxieDuWtnVdQs4DpId
 vpRLRP25XW9AHEdiOkZPj5rEWVFkbHYqrv575M1mheAPAnpi1VHKoLz+cv1avuM7soQU
 pymFhEhTsHHL3AMKDoqDSsyHG3OIKNvqFHvDbBzpIYAZQeKCBCtkVBOSe6peXJO+37sE
 4j37yTh14JjtoA1QKqvy/Bc1aNezwIDQ5x+LR4fFD+aD/Uu/jU/QyHmDIEWsOe6HtfpU
 4Fig==
X-Forwarded-Encrypted: i=1;
 AJvYcCUFjlmPwTSnjaUu9BM/6x6j8p9UJLbWnkz39/LlTmHiZJWB++/sR2ntPRx4Z7XhebsPE2CowCx4KAkDNfaJVyY=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yyaocb5nJUkc1kChNtwK3KpP+XBSGR5j9XZvVRjuMwQmpZOiBe+
 atXmffE4OH1Ls7/Dyt8M8dj1EZseDZZsRkKddZ3+ySRpeF8+Wiie38DCjWga2qiPX8Vjlyulli8
 MVD3awA==
X-Google-Smtp-Source: AGHT+IEIMwo+GhXyYaav4bZt4bXx4Bq/G6qliaYb7DkaK9GaSdFR8UCT1MNfsEZ7Iz4rAKjp5sPd+77dXao=
X-Received: from dlber3.prod.google.com ([2002:a05:7022:2643:b0:119:9f33:34a9])
 (user=boolli job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7022:2217:b0:11d:f44d:34db
 with SMTP id a92af1059eb24-121f8b8dc49mr645885c88.35.1767747908145; Tue, 06
 Jan 2026 17:05:08 -0800 (PST)
Date: Wed,  7 Jan 2026 01:04:59 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.52.0.351.gbe84eed79e-goog
Message-ID: <20260107010503.2242163-1-boolli@google.com>
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
 d=google.com; s=20230601; t=1767747910; x=1768352710; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=rZnlneAj7hgChlZy1AzKKPt9WN3tQFEPm48Mh4Bhh+4=;
 b=1HxyTXx2yIp1o2MpHC2CPi1trC8kOZT63mhhGi6PSCWRP5NceOyb9TE9LeRmSQhzDf
 JCA2ahpH5oF7ZlRn0JrDJQO2DbQ+nwXolzbjuT306d9zcUVOmg18xQ8EfIgUGHHAFb/i
 Pj8n0mXDVGqPD5HRZe0OdJLewCr4qCxLW0nwn1bn4dBdNxMAGzkB+61fqfIPCaHzQPX5
 NcDwPkcUrC3C0ZUAdMWnOf64ZUxNrdE+rm6brBmZh5ewroevzv9qF5oBNh02UEhOuioT
 yfterwczgOIUF7dagK8PBRgkSz3rzVLwb7ONVKtuLKNglfePpXpnK7tVcoCHlKahWYi7
 ONog==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=1HxyTXx2
Subject: [Intel-wired-lan] [PATCH 1/5] idpf: skip getting/setting ring
 params if vport is NULL during HW reset
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

During an idpf HW reset, when "ethtool -g/-G" is called on the netdev,
the vport associated with the netdev is NULL, and so a kernel panic
would happen:

[  513.185327] BUG: kernel NULL pointer dereference, address: 0000000000000038
...
[  513.232756] RIP: 0010:idpf_get_ringparam+0x45/0x80

This can be reproduced reliably by injecting a TX timeout to cause
an idpf HW reset, and injecting a virtchnl error to cause the HW
reset to fail and retry, while calling "ethtool -g/-G" on the netdev
at the same time.

With this patch applied, we see the following error but no kernel
panics anymore:

[  476.323630] idpf 0000:05:00.0 eth1: failed to get ring params due to no vport in netdev

Signed-off-by: Li Li <boolli@google.com>
---
 drivers/net/ethernet/intel/idpf/idpf_ethtool.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index d5711be0b8e69..6a4b630b786c2 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -639,6 +638,10 @@ static void idpf_get_ringparam(struct net_device *netdev,
 
 	idpf_vport_ctrl_lock(netdev);
 	vport = idpf_netdev_to_vport(netdev);
+	if (!vport) {
+		netdev_err(netdev, "failed to get ring params due to no vport in netdev\n");
+		goto unlock;
+	}
 
 	ring->rx_max_pending = IDPF_MAX_RXQ_DESC;
 	ring->tx_max_pending = IDPF_MAX_TXQ_DESC;
@@ -647,6 +651,7 @@ static void idpf_get_ringparam(struct net_device *netdev,
 
 	kring->tcp_data_split = idpf_vport_get_hsplit(vport);
 
+unlock:
 	idpf_vport_ctrl_unlock(netdev);
 }
 
@@ -673,6 +674,11 @@ static int idpf_set_ringparam(struct net_device *netdev,
 
 	idpf_vport_ctrl_lock(netdev);
 	vport = idpf_netdev_to_vport(netdev);
+	if (!vport) {
+		netdev_err(netdev, "ring params not changed due to no vport in netdev\n");
+		err = -EFAULT;
+		goto unlock_mutex;
+	}
 
 	idx = vport->idx;
 
-- 
2.52.0.351.gbe84eed79e-goog

