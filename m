Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D5ECFB861
	for <lists+intel-wired-lan@lfdr.de>; Wed, 07 Jan 2026 02:05:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 10C084094A;
	Wed,  7 Jan 2026 01:05:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PsMI5_tnB3M6; Wed,  7 Jan 2026 01:05:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7CCF240941
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767747918;
	bh=DVMU6yQcsBfSJN4wWGFbhK9cF/Gmku+mF1OJ5kiuDgE=;
	h=Date:In-Reply-To:References:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=nJqGBDiMS3hg0o8BwPcOf03fdPY4qGQRfqv3EghbonBPZWWIHo8/13IV85t6jGSpV
	 h2tOKnyJSs4xyf2LX7PQZor8LARMiIKm9lFIcasFudRyS7cLXSUNNAQ5PjMxyysn5s
	 tLPLhVry9ZYumfBb2xLXqhttjTM8OeQ488blf9005dFCGVtuTHGJU+hCBZtNJ7Vnn6
	 MLTD8yGW/P7WCAdikxzLjHRPOeTHm9cg5c46h/CloKPd3Kw7UzRpCxiALJFAkKuJfO
	 ygiOftswpoqa2R0Qr0lYjRNJrgUvA6C66VonGiC2K0QHf2zgAZsIFPo5rL/20RatvY
	 ubZ2FLb4CembQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7CCF240941;
	Wed,  7 Jan 2026 01:05:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 38DBA249
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 01:05:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1E8AF4025D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 01:05:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ou42GhRsXrZs for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jan 2026 01:05:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::124a; helo=mail-dl1-x124a.google.com;
 envelope-from=3sbfdaqykd3qtggddayggydw.ugeaflwd-oajwv-dsfdaklk.gkmgkd.gjy@flex--boolli.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2514740079
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2514740079
Received: from mail-dl1-x124a.google.com (mail-dl1-x124a.google.com
 [IPv6:2607:f8b0:4864:20::124a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2514740079
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 01:05:14 +0000 (UTC)
Received: by mail-dl1-x124a.google.com with SMTP id
 a92af1059eb24-119db038ee3so324519c88.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 06 Jan 2026 17:05:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767747914; x=1768352714;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=DVMU6yQcsBfSJN4wWGFbhK9cF/Gmku+mF1OJ5kiuDgE=;
 b=TUhHxCvKEvY/u/qC1DYxNM3ev573kBv9Hxksc+gxq+xHWX/v22ue3zfScAYNV85HnK
 wPIIV7UgGK19kHchdG/6CV7F9GS16C1yy8gIREXLkWGPXHIcveI/0MRY5IKyoHP+4WnY
 EXi1/AKgC55ii/2ZF3cC1KMVxZa4fd5DWHXSazX661TId19F2jhjnTp2cN2FLpO0zFfx
 rQAGp6dCYxD6CjB4TWUZnKQ5cBa239LN1muExD+rp9FYA3RF78daPU5Uk7AK+/+A9LAA
 S4uMMigYCUSwWyoPrKnIHd8WTXZwjNbzCy7gFd0nzqX6lra+urFtsbBdwOKGVKjVALHP
 Mjqw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVS6GwInyIJtYIsFeizZZY56da55wVl6B+jNsIUc0r9vwftdU3oXjL55jUpTFjK9wo1mvYD/2tcZfnp5Pkt1IY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwRZ9YXCPif1aM/n8ZJCXg/ogbvnTtr8eGuCj1/+HLOAkdI/CIW
 E3RJJojFKm/G5Uv7gPc5RXRe/PtDEKLadWmRJj424GVtMU8FNdVWpZs2szwbmiS8kBW111xNVwx
 z5nKrhw==
X-Google-Smtp-Source: AGHT+IEimtIxB0kDVopi3uqHoc0Swa3Du9lb+RqD1lMp8iOBNaJDFMF2YObFUEkWmzhx8yWtOHWSy33uHcg=
X-Received: from dlbcm23.prod.google.com
 ([2002:a05:7022:6897:b0:11b:1a9a:d2e8])
 (user=boolli job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7022:249f:b0:11e:3e9:3e90
 with SMTP id a92af1059eb24-121f866f776mr891858c88.25.1767747913845; Tue, 06
 Jan 2026 17:05:13 -0800 (PST)
Date: Wed,  7 Jan 2026 01:05:00 +0000
In-Reply-To: <20260107010503.2242163-1-boolli@google.com>
Mime-Version: 1.0
References: <20260107010503.2242163-1-boolli@google.com>
X-Mailer: git-send-email 2.52.0.351.gbe84eed79e-goog
Message-ID: <20260107010503.2242163-2-boolli@google.com>
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
 d=google.com; s=20230601; t=1767747914; x=1768352714; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=DVMU6yQcsBfSJN4wWGFbhK9cF/Gmku+mF1OJ5kiuDgE=;
 b=Vx9KFsj4hinax7nWpPvUyoBjW7OV81wen2+IrOd9a2xtjSiizUDE/FvQlVEL7F8Yd3
 rHg746Dwc5HUu/f36gDcOhiy9cSrzJr8uz4maz/H3dbq71kjA6fwCpWHTp14Ohrz4Cfy
 gsIU6BK/ljJjCj/psI25aNqNw5yzcYmMqN+/140WxK/7nY6UkX79IzqSReLq4fN0INcB
 SiIyhmh7l7nwManzXYc/Zjis0guHoRhxOKAELI9GUBVFtlBEWvHY56bZ7O/ZffTTzr62
 X482YxCrIhn92zWiGi7r0j+d3POb4neU/TjOICUEoIoy8gEqCyXJTzUN37BNUOv59S96
 FNgA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=Vx9KFsj4
Subject: [Intel-wired-lan] [PATCH 2/5] idpf: skip changing MTU if vport is
 NULL during HW reset
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

During an idpf HW reset, when userspace changes the MTU of the netdev,
the vport associated with the netdev is NULL, and so a kernel panic
would happen:

[ 2081.955742] BUG: kernel NULL pointer dereference, address: 0000000000000068
...
[ 2082.002739] RIP: 0010:idpf_initiate_soft_reset+0x19/0x190

This can be reproduced reliably by injecting a TX timeout to cause
an idpf HW reset, and injecting a virtchnl error to cause the HW
reset to fail and retry, while changing the MTU of the netdev in
userspace.

With this patch applied, we see the following error but no kernel
panics anymore:

[  304.291346] idpf 0000:05:00.0 eth1: mtu not changed due to no vport innetdev
RTNETLINK answers: Bad address

Signed-off-by: Li Li <boolli@google.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 57b8b3fd9124c..53b31989722a7 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -2328,11 +2327,17 @@ static int idpf_change_mtu(struct net_device *netdev, int new_mtu)
 
 	idpf_vport_ctrl_lock(netdev);
 	vport = idpf_netdev_to_vport(netdev);
+	if (!vport) {
+		netdev_err(netdev, "mtu not changed due to no vport in netdev\n");
+		err = -EFAULT;
+		goto unlock;
+	}
 
 	WRITE_ONCE(netdev->mtu, new_mtu);
 
 	err = idpf_initiate_soft_reset(vport, IDPF_SR_MTU_CHANGE);
 
+unlock:
 	idpf_vport_ctrl_unlock(netdev);
 
 	return err;
-- 
2.52.0.351.gbe84eed79e-goog

