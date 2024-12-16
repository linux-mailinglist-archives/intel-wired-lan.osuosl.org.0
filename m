Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 840029F35F8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Dec 2024 17:28:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5CFE8404E8;
	Mon, 16 Dec 2024 16:28:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id olNAmvmxN4j1; Mon, 16 Dec 2024 16:28:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78C764047E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734366488;
	bh=OYgWfITDnmpKZmhpOQV+m1eaKNnm6ygQzblURMa5/eo=;
	h=Date:In-Reply-To:References:From:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=db976XV2tdUGJS99BawRutaLnhJz8ZiqvlcTK4yqoVwkvYHq6EQL+iVoKB6GoCRU7
	 2YJxrTIhwE88mAJodoFpnllv41eZgXkQ11ldFkjSCVBguW/eEw/3qbbUcfddldQpN3
	 yeOtVpWhhTDEblEnUvcPUbpjX2gygbAD4Ta7I1lXrIhCbZypVFLHUxL2jpPAdpBOjw
	 nZU61uop1e0ORb2/gaiseH5aA9m9yEM3oFM7FHuzZQx19D8XDC9gQ1wr3xD6/B0juu
	 mXt1Te4jutGaJ350OdtJUKMnr2TzGVMFU9yvolIsIqTaDpAIQ+Y+uzDjeX+7qvBZ+H
	 1yEUQUafaw7hg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 78C764047E;
	Mon, 16 Dec 2024 16:28:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id DECFBC1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 16:28:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BD74840191
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 16:28:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DW2GaT6RFz62 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Dec 2024 16:28:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::549; helo=mail-pg1-x549.google.com;
 envelope-from=3e1vgzwckd4afvmerzzksskpi.gsqmrxip-0mvih-perpmwxw.swyswp.svk@flex--brianvv.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 42F0C40449
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 42F0C40449
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com
 [IPv6:2607:f8b0:4864:20::549])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 42F0C40449
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 16:28:04 +0000 (UTC)
Received: by mail-pg1-x549.google.com with SMTP id
 41be03b00d2f7-8019860a003so2898503a12.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 08:28:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734366483; x=1734971283;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=OYgWfITDnmpKZmhpOQV+m1eaKNnm6ygQzblURMa5/eo=;
 b=mthVC2OktEQvPcyuirRNJ/BQfJlnFRf9mZL9r0RS3RA7xvT2Ox/ScefcM358vKEF29
 q1rsGsUIyy/kUrSv+8xm626WNFvpI6cHYGP0VdWjjg3VZOnQHqRLYb3J9nvx+BGQkMy1
 QWC1lYUvad6OcwOKwfONRYYTX6QlBoQZtjaSVve+m9OYzcm0c0HzfWtodag2RSo+dHBE
 NJ/cu1/GP1RwtYFiXquGFffmMOs6SJKWfAqvtm6XUL8BELS4gU/2NZz4elMTyBGgEMVF
 NCu/335Kvcr3TFNDAah9rBt5afrRQiTW9t2BCTo9mNiX3RxUSSnZv+XD32vXNO+N/IPG
 3gRw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVXLy8sB5F//Lr/4In2TnhjUxZMJIPGxa4tohpp7SY5NmF6uYMCR+T4wlLS9p5p1AvSN+i7YJ+EBdqhRm9tCnE=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw2d1tMHveW/Kg9fMXWLCp9sYClNSOtPRuMQGRWRY/cN5oSxhEb
 EBbFGEMDvv2P3VxU34/GM+p9LA722LShNaXINmywGhd0KkmV+3C9Z2Rpg6YYyW9RDLq8L0ApDQA
 0rNj44Q==
X-Google-Smtp-Source: AGHT+IEDjElQVhdH295OadBi+xKcuOeHva8D7aDmG71K5yuV+Yg3mIJZGFiTDFqecjMyexx8SrTcYIANX3dQ
X-Received: from pjvb16.prod.google.com ([2002:a17:90a:d890:b0:2ea:5613:4d5d])
 (user=brianvv job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:4a50:b0:2ee:d35c:39ab
 with SMTP id 98e67ed59e1d1-2f28fd6b60cmr16772482a91.22.1734366483591; Mon, 16
 Dec 2024 08:28:03 -0800 (PST)
Date: Mon, 16 Dec 2024 16:27:35 +0000
In-Reply-To: <20241216162735.2047544-1-brianvv@google.com>
Mime-Version: 1.0
References: <20241216162735.2047544-1-brianvv@google.com>
X-Mailer: git-send-email 2.47.1.613.gc27f4b7a9f-goog
Message-ID: <20241216162735.2047544-4-brianvv@google.com>
From: Brian Vazquez <brianvv@google.com>
To: Brian Vazquez <brianvv.kernel@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org
Cc: David Decotigny <decot@google.com>, Vivek Kumar <vivekmr@google.com>, 
 Anjali Singhai <anjali.singhai@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 emil.s.tantilov@intel.com, Manoj Vishwanathan <manojvishy@google.com>, 
 Brian Vazquez <brianvv@google.com>, Jacob Keller <jacob.e.keller@intel.com>, 
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1734366483; x=1734971283; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=OYgWfITDnmpKZmhpOQV+m1eaKNnm6ygQzblURMa5/eo=;
 b=TkfKRk016ZGdMtk6rHiqxl1S4LO9wIeVH9HgbWfFQthMAR7vrj2r1JxHXn2seFKpkn
 DiQjfb08SbDmgk9CXHcHfBnthxz/GGmEGbkUB3rGkqwBdib6a7A4MZ6WOyGPf4nauft5
 5YnaD1ol44zCXS9G0yyh+v9+epO0FsqAz97fS+Tf9f8eBPPMMYsTMvw6UvULVjDyipU/
 I6UyFkQuyTyjIumNCSMgQugOzi51YPlGOrqjGnt0SAit8MEWkEaiTnTA2rHsDL1gxdDa
 DcWpVqFTpuF+Wx3IIfzvYCkjPwC4ifBwP9psJSVEUNBQ35X8QwYhw5QUxzxif6ULKFSA
 NTXg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=TkfKRk01
Subject: [Intel-wired-lan] [iwl-next PATCH v4 3/3] idpf: add more info
 during virtchnl transaction timeout/salt mismatch
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Manoj Vishwanathan <manojvishy@google.com>

Add more information related to the transaction like cookie, vc_op,
salt when transaction times out and include similar information
when transaction salt does not match.

Info output for transaction timeout:
-------------------
(op:5015 cookie:45fe vc_op:5015 salt:45 timeout:60000ms)
-------------------

before it was:

-------------------
(op 5015, 60000ms)
-------------------

Signed-off-by: Manoj Vishwanathan <manojvishy@google.com>
Signed-off-by: Brian Vazquez <brianvv@google.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 13274544f7f4..fe5468f226f7 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -517,8 +517,10 @@ static ssize_t idpf_vc_xn_exec(struct idpf_adapter *adapter,
 		retval = -ENXIO;
 		goto only_unlock;
 	case IDPF_VC_XN_WAITING:
-		dev_notice_ratelimited(&adapter->pdev->dev, "Transaction timed-out (op %d, %dms)\n",
-				       params->vc_op, params->timeout_ms);
+		dev_notice_ratelimited(&adapter->pdev->dev,
+				       "Transaction timed-out (op:%d cookie:%04x vc_op:%d salt:%02x timeout:%dms)\n",
+				       params->vc_op, cookie, xn->vc_op,
+				       xn->salt, params->timeout_ms);
 		retval = -ETIME;
 		break;
 	case IDPF_VC_XN_COMPLETED_SUCCESS:
@@ -615,8 +617,9 @@ idpf_vc_xn_forward_reply(struct idpf_adapter *adapter,
 	idpf_vc_xn_lock(xn);
 	salt = FIELD_GET(IDPF_VC_XN_SALT_M, msg_info);
 	if (xn->salt != salt) {
-		dev_err_ratelimited(&adapter->pdev->dev, "Transaction salt does not match (%02x != %02x)\n",
-				    xn->salt, salt);
+		dev_err_ratelimited(&adapter->pdev->dev, "Transaction salt does not match (exp:%d@%02x(%d) != got:%d@%02x)\n",
+				    xn->vc_op, xn->salt, xn->state,
+				    ctlq_msg->cookie.mbx.chnl_opcode, salt);
 		idpf_vc_xn_unlock(xn);
 		return -EINVAL;
 	}
-- 
2.47.1.613.gc27f4b7a9f-goog

