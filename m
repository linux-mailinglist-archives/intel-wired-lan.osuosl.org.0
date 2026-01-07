Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A92DCFB864
	for <lists+intel-wired-lan@lfdr.de>; Wed, 07 Jan 2026 02:05:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E138E4093D;
	Wed,  7 Jan 2026 01:05:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sj2Tcq10J90D; Wed,  7 Jan 2026 01:05:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6778240944
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767747922;
	bh=QgCM4PdeMwtaGAjDdJiUYbxQZ0vj4v9BcNHM8Ys9aos=;
	h=Date:In-Reply-To:References:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=RTD7bwCj3fHwfKP3WbJQh02SjiIC8+IeyZr4SxtJxWQVNA5TiGNN3GP11fxVKia2D
	 bXwvP2pOH17T6KOnMepPdnXNtNu7XGITVn0sindu7iTDCXK/dclcAQYPXE+Q7zeOKj
	 7rrvjC/9EaRYtlxvF++IA1CKGW4Mb5EAFTvHjmEdppiZhMpQQt8RJ8hW6rAImpjisI
	 duCXnGAu2uoxhcue679CcPuACdKcqqrqILwaS2jxAUY/4FMCloWO/oPfrsdb4OGdDI
	 J03Az21zM6zTXp+kFR24H750+jdMonsoVAwwmJSotyhyZn1uDbewMP16+Te1kjUnTP
	 bjNzvwRM7NaiA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6778240944;
	Wed,  7 Jan 2026 01:05:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id BDC1570B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 01:05:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AFB484093D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 01:05:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vhvvnCBL5YZ6 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jan 2026 01:05:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1349; helo=mail-dy1-x1349.google.com;
 envelope-from=3trfdaqykd3kylliifdlldib.zljfkqbi-tfoba-ixkifpqp.lprlpi.lod@flex--boolli.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 07CCB40911
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 07CCB40911
Received: from mail-dy1-x1349.google.com (mail-dy1-x1349.google.com
 [IPv6:2607:f8b0:4864:20::1349])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 07CCB40911
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 01:05:19 +0000 (UTC)
Received: by mail-dy1-x1349.google.com with SMTP id
 5a478bee46e88-2ac3019faadso2481358eec.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 06 Jan 2026 17:05:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767747919; x=1768352719;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=QgCM4PdeMwtaGAjDdJiUYbxQZ0vj4v9BcNHM8Ys9aos=;
 b=iPaRbsXYrvvrAeCL+wvn9xS0IIxsDr+atdWuqA3Y6dwMn60mxrJqrZ+AI5VHFWbUF5
 aV29B6KuovaxscDTYTOcHLJrjmwnmy7K54tpqOtuVzUtQ86QJ3UvsD/Q2Cb2rZ7A/G9Z
 TE0ZAnQ5PK3mVf21hI2u5dxGqk5CCA1pg75YE4mOXqrNt/dOngo0P5og9DwmS1N2M834
 mXRIphiESgu8mylYs+odCjYPAMZVbGXBHg7VYe/roKtaaGSqGF2BiVTm4zzcn57tSaIp
 ZlQH34mcaPEgjxBI/iqWZzmVNnZ+P8JbmuwlTIsaFXwoRGjSUyoTmjdTTVNbO/6DcOn5
 t6FA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWjHXWemerW4ASWKxozlzCa75jTdaYA9qwOVTgXMCvcZPcz+zGWsSH2cvfWv4JwEpQtoGpz//7bLOXCAHU9I/k=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxhCqnsen2imz/IuoKeloQ8aMtXrGfMEJpeojyzxMQU/NmKon32
 9x46RfiVAM/L4pixJXc4LZsWp3mwtXdeuQSOePkI+iiftBlq4HAJJRMF3z6fBkOQMKpoe+ZRyLp
 Uxl8Q5Q==
X-Google-Smtp-Source: AGHT+IFj+b4aF+K3rOjN8KEbm91uYV5xlFvkogdLWnfIxNCoV4dVQ9b0ZLkt2gOYISLMhV6VHkw1LvhmW/8=
X-Received: from dybcp4.prod.google.com ([2002:a05:7300:a144:b0:2a2:4eb1:3771])
 (user=boolli job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7300:e42b:b0:2ae:4fd7:ba56
 with SMTP id 5a478bee46e88-2b17d2951e1mr608048eec.23.1767747918938; Tue, 06
 Jan 2026 17:05:18 -0800 (PST)
Date: Wed,  7 Jan 2026 01:05:01 +0000
In-Reply-To: <20260107010503.2242163-1-boolli@google.com>
Mime-Version: 1.0
References: <20260107010503.2242163-1-boolli@google.com>
X-Mailer: git-send-email 2.52.0.351.gbe84eed79e-goog
Message-ID: <20260107010503.2242163-3-boolli@google.com>
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
 d=google.com; s=20230601; t=1767747919; x=1768352719; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=QgCM4PdeMwtaGAjDdJiUYbxQZ0vj4v9BcNHM8Ys9aos=;
 b=NGolVRHOtwvkfvdcRm3LqZ6Wfnvi6ZU59oL33UGKzL8ce1nB/Tf5LZIS3zr7Hq574G
 Owo4xP5f03cXpf/tTnknowz70Hy1Ic3uyD8IBDTljIX2l3CwYLLz1gwMegwcY92DZ2hu
 i6x3C8tjCgDgn+emtZS6/uOlvtKM7R4Od/bhBmZhehjZbEJa+X22KpT+rOD919uvN7nE
 uiHEWULggsB+fE6kZxCcHnmkT1S3A1PbQGoS/ch+KyAI7ZDKohfN6pfqPb+n+CdVZto5
 VAQfNiB5NG4bEcSEg8kpDSt8K40oL99DnLK0el6zGCJ3xW9w5dTNQWORv8aRNrXn0OoR
 kSaQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=NGolVRHO
Subject: [Intel-wired-lan] [PATCH 3/5] idpf: skip getting RX flow rules if
 vport is NULL during HW reset
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

During an idpf HW reset, when userspace gets RX flow classification
rules of the netdev, the vport associated with the netdev is NULL,
and so a kernel panic would happen:

[ 1466.308592] BUG: kernel NULL pointer dereference, address: 0000000000000032
...
[ 1466.356222] RIP: 0010:idpf_get_rxnfc+0x3b/0x70

This can be reproduced reliably by injecting a TX timeout to cause
an idpf HW reset, and injecting a virtchnl error to cause the HW
reset to fail and retry, while running "ethtool -n" in userspace.

With this patch applied, we see the following error but no kernel
panics anymore:

[  312.476576] idpf 0000:05:00.0 eth1: failed to get rules due to no vport in netdev
Cannot get RX rings: Bad address
rxclass: Cannot get RX class rule count: Bad address
RX classification rule retrieval failed

Signed-off-by: Li Li <boolli@google.com>
---
 drivers/net/ethernet/intel/idpf/idpf_ethtool.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index 6a4b630b786c2..c71af85408a29 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -45,6 +44,11 @@ static int idpf_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 
 	idpf_vport_ctrl_lock(netdev);
 	vport = idpf_netdev_to_vport(netdev);
+	if (!vport) {
+		netdev_err(netdev, "failed to get rules due to no vport in netdev\n");
+		err = -EFAULT;
+		goto unlock;
+	}
 	vport_config = np->adapter->vport_config[np->vport_idx];
 	user_config = &vport_config->user_config;
 
@@ -85,6 +90,7 @@ static int idpf_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 		break;
 	}
 
+unlock:
 	idpf_vport_ctrl_unlock(netdev);
 
 	return err;
-- 
2.52.0.351.gbe84eed79e-goog

