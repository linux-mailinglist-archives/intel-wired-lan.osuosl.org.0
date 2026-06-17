Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 85VTHr4YM2q89QUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 23:59:26 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5992269C9A2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 23:59:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=8n0kbF35;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0537240651;
	Wed, 17 Jun 2026 21:59:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4y-bQDVpuVXg; Wed, 17 Jun 2026 21:59:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5274840656
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781733562;
	bh=jMonf+rXiG8HrnRO3rIefxf82NtLEt6HiAMh+pfQIFY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=8n0kbF35owcUeLRnW3WLXMTN5XOmrutijCIdB/F+B3JUJp9UKMxL2AiaA7gX0RGX8
	 GpU68sMFnTEIfV7tscDuWsWsRJUnNV7/ssjYgdfUviZ86hDxuVuyQTq5zPu1Z+P8nP
	 0RxbAqiAdksfQHvBDzqnt/WhuAyBWSe9gY4vOWRhA2xpcN7i4a57PD69aAoCKskf/Q
	 QWRBQa0z7OAHVpW7KrKMx1vLg3azXFWny9v/Jp6M5S2GbWJt/PJAp9FLejw5Wxfm4m
	 64oOU9jHA3BCjYPdFka4RqsBy0N2iqyS0eU+ea0/tRHL/7Uj7500r1fbIPhLaeVHpo
	 UAX/878MO5aVQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5274840656;
	Wed, 17 Jun 2026 21:59:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7BCF61F3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 21:58:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 61E4D6084E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 21:58:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T__XjAjxqG7Z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Jun 2026 21:58:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::733; helo=mail-qk1-x733.google.com;
 envelope-from=michael.bommarito@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 89B5C60844
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 89B5C60844
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com
 [IPv6:2607:f8b0:4864:20::733])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 89B5C60844
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 21:58:00 +0000 (UTC)
Received: by mail-qk1-x733.google.com with SMTP id
 af79cd13be357-9157ec935c5so41543485a.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 14:58:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781733479; x=1782338279;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jMonf+rXiG8HrnRO3rIefxf82NtLEt6HiAMh+pfQIFY=;
 b=VxJgdLzoDSS5XPkqRvqFiVqxfxe2egLgoBSacdD+MceBP50jUJxfopZ9ANMpJWMEUh
 SoiJPfreWfjUPYO6WF3NV5aDRou6jJFliINC2h6nM0T8UAo5qADxgREoG2m/+zb78Alx
 nT5H2VNNp83d/881XV4QNVhO2/Kq6b4YxS3TvaSblXqchJ/NSWILj6TUC4F/G2RYcCMo
 R78w/YKD/mMm1vy96F4AXGq/5AVrYG+m75uXzCES9hwf+G2lY004N0hziB9BX5dri6s4
 CkcZFjtlKElKkLjeH3TwVQ+3pp0rvPoVzSTSsGL4HntKfmgDGz2FZfAzMznkAO1oxKWy
 ehaA==
X-Gm-Message-State: AOJu0YyHREBiM/tfkEF6KXbzZpG38g9kN6c/k5K0FtZAuwhOuKSWjb/z
 M6fcfrxzizsesYhF3gqHVBNWhdvEYlYo48VbN5U6tW5pg0CrFIBImZYw
X-Gm-Gg: Acq92OG6z535t4UqsYRS0s4nXvqfrdk8SJGlmWUxalK1/Mvuo5VQ3LLqLxSvqqToJH+
 qsRrPyzJ60zZqzJGWS96oOTk6b3PFXVD3HRJBadSEOvqlt1RlNX9UH+RGFCX92J+Qbn/PRkBRdG
 6lB0c2lY+wxaMribH+EqwR825DWlEPAgIBh404MbUgio0ZJ+xECl+64Lk4loktCdDG6+MTpKp4Z
 YWeBi+leOoznA0URGBy0hf7995s6Z23SLXesph3rGwGdTPRy160o2LJC1M+huWTv3VujpxT8ktC
 E2uXd6GZHSNkGKXxs79RSZ/o2/bYbCdgQ1AugMFTWKdaHw1+HnakcT6DyIFLdd0VyzKeZDyFbae
 bOlXMHPeBwUEzEE4JAi/4PWrL074VNFgZ4//8DWSmXycz2k0BUYN7geOtytM8lKGqFT833xaSre
 hMj1oLSTk2hhLZ+pzeSIF9u87N0d51MSz35v7m+p2xbTy8Js0msyamXmDCiXwdFkVal77tNE/dW
 3JsKXK6Ridl/v5dub1CXOkx72kr/Dhb
X-Received: by 2002:a05:620a:4390:b0:914:cb07:447e with SMTP id
 af79cd13be357-91f25ca3283mr148838785a.5.1781733479183; 
 Wed, 17 Jun 2026 14:57:59 -0700 (PDT)
Received: from server0.tail6e7dd.ts.net (c-68-48-65-54.hsd1.mi.comcast.net.
 [68.48.65.54]) by smtp.gmail.com with ESMTPSA id
 af79cd13be357-91619f1c851sm1874547085a.16.2026.06.17.14.57.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2026 14:57:58 -0700 (PDT)
From: Michael Bommarito <michael.bommarito@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Joshua Hay <joshua.a.hay@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Wed, 17 Jun 2026 17:57:54 -0400
Message-ID: <20260617215754.1117178-1-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Wed, 17 Jun 2026 21:59:20 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1781733479; x=1782338279; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=jMonf+rXiG8HrnRO3rIefxf82NtLEt6HiAMh+pfQIFY=;
 b=ItcVUShK4kr+qjjegphU6ZneoAIDemQ/vBYBKIBevh6OqFiOEJfaOwdQDl1+MsJsej
 mw3TlGQArs3LRYstQjOqnQ1Tl8R8XF2Thcxi0irIgOgGaFkpya0USJGIPhdn2o6I2Aoa
 QoUZrnTIwrtcdy4fzt15NZa1HmkJH2v8hlEK0A2qEXjX7bOxun7j1EDKClGBygWO4YFJ
 Y1NiDijdsmMLN0rMsAv/vtayaTVCUMK1310WkV/ZrTxBhZmTi/pXKYr7YEB0dJofjj4B
 pfIUpDgBDNS+RQkgZYMaqt26q4aICBfpN2PntK9yEEsU18Xhw7w60hSuQX8Pn3jKEwji
 ayog==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20251104 header.b=ItcVUShK
Subject: [Intel-wired-lan] [PATCH] idpf: bound interrupt-vector register
 fill to the allocated array
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:joshua.a.hay@intel.com,m:pavan.kumar.linga@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[michaelbommarito@gmail.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[michaelbommarito@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5992269C9A2

idpf_get_reg_intr_vecs() fills the caller-allocated reg_vals[] array from
the VIRTCHNL2_OP_ALLOC_VECTORS reply in adapter->req_vec_chunks, bounding
its inner loop only by the per-chunk num_vectors. The array is sized
separately: idpf_intr_reg_init() allocates
kzalloc_objs(struct idpf_vec_regs, total_vecs) from
caps.num_allocated_vectors and only checks the returned count after the
fill. The sum of per-chunk num_vectors is never reconciled against
total_vecs, so a reply with a small num_allocated_vectors but chunks
summing higher writes past the end of reg_vals[].

Impact: a control plane (a PF or hypervisor device model) that returns a
VIRTCHNL2_OP_ALLOC_VECTORS reply whose per-chunk num_vectors sum exceeds
num_allocated_vectors writes struct idpf_vec_regs entries past the end of
the reg_vals kmalloc allocation (KASAN slab-out-of-bounds write).

Bound the fill loop to the array capacity passed in by the callers,
mirroring the sibling idpf_vport_get_q_reg(). The existing
num_regs < num_vecs check then rejects an undersized reply without the
out-of-bounds write happening first.

Fixes: d4d558718266 ("idpf: initialize interrupts and enable vport")
Assisted-by: Claude:claude-opus-4-7
Signed-off-by: Michael Bommarito <michael.bommarito@gmail.com>
---
The reply originates from the control plane (a PF or hypervisor device
model), which is trusted in a standard deployment, so this is a
defense-in-depth / robustness fix: it bounds a malformed or internally
inconsistent ALLOC_VECTORS reply. It is a genuine trust-boundary crossing
only where the guest distrusts the control plane (a confidential VM or an
Intel IPU posture) or the control plane is simply buggy. It is not
remotely or unprivileged-reachable.

Reproduced with a KUnit harness that calls the unmodified
idpf_get_reg_intr_vecs() against a crafted req_vec_chunks reply
(num_allocated_vectors = 1, four chunks of sixteen vectors) under KASAN:
stock reports a slab-out-of-bounds write 0 bytes past a 12-byte kmalloc-16
object and the test fails; the patched build is KASAN-clean; a well-formed
64-vector reply still fills 64 entries on both. The KUnit wiring is
repro-only scaffolding, not part of this patch; harness on request.

 drivers/net/ethernet/intel/idpf/idpf_dev.c      | 2 +-
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c   | 2 +-
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 5 +++--
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.h | 2 +-
 4 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_dev.c
index 1a0c71c95ef12..4079a787657f1 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_dev.c
@@ -87,7 +87,7 @@ static int idpf_intr_reg_init(struct idpf_vport *vport,
 	if (!reg_vals)
 		return -ENOMEM;
 
-	num_regs = idpf_get_reg_intr_vecs(adapter, reg_vals);
+	num_regs = idpf_get_reg_intr_vecs(adapter, reg_vals, total_vecs);
 	if (num_regs < num_vecs) {
 		err = -EINVAL;
 		goto free_reg_vals;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
index a07d7e808ca9b..6726084f6cfa0 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
@@ -86,7 +86,7 @@ static int idpf_vf_intr_reg_init(struct idpf_vport *vport,
 	if (!reg_vals)
 		return -ENOMEM;
 
-	num_regs = idpf_get_reg_intr_vecs(adapter, reg_vals);
+	num_regs = idpf_get_reg_intr_vecs(adapter, reg_vals, total_vecs);
 	if (num_regs < num_vecs) {
 		err = -EINVAL;
 		goto free_reg_vals;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index be66f9b2e101c..ec7330603ff84 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -1318,11 +1318,12 @@ idpf_vport_init_queue_reg_chunks(struct idpf_vport_config *vport_config,
  * idpf_get_reg_intr_vecs - Get vector queue register offset
  * @adapter: adapter structure to get the vector chunks
  * @reg_vals: Register offsets to store in
+ * @num_vecs: number of entries the @reg_vals array can hold
  *
  * Return: number of registers that got populated
  */
 int idpf_get_reg_intr_vecs(struct idpf_adapter *adapter,
-			   struct idpf_vec_regs *reg_vals)
+			   struct idpf_vec_regs *reg_vals, int num_vecs)
 {
 	struct virtchnl2_vector_chunks *chunks;
 	struct idpf_vec_regs reg_val;
@@ -1346,7 +1347,7 @@ int idpf_get_reg_intr_vecs(struct idpf_adapter *adapter,
 		dynctl_reg_spacing = le32_to_cpu(chunk->dynctl_reg_spacing);
 		itrn_reg_spacing = le32_to_cpu(chunk->itrn_reg_spacing);
 
-		for (i = 0; i < num_vec; i++) {
+		for (i = 0; i < num_vec && num_regs < num_vecs; i++) {
 			reg_vals[num_regs].dyn_ctl_reg = reg_val.dyn_ctl_reg;
 			reg_vals[num_regs].itrn_reg = reg_val.itrn_reg;
 			reg_vals[num_regs].itrn_index_spacing =
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
index 6876e3ed9d1be..9b1c9c86f6eac 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -104,7 +104,7 @@ int idpf_vc_core_init(struct idpf_adapter *adapter);
 void idpf_vc_core_deinit(struct idpf_adapter *adapter);
 
 int idpf_get_reg_intr_vecs(struct idpf_adapter *adapter,
-			   struct idpf_vec_regs *reg_vals);
+			   struct idpf_vec_regs *reg_vals, int num_vecs);
 int idpf_queue_reg_init(struct idpf_vport *vport,
 			struct idpf_q_vec_rsrc *rsrc,
 			struct idpf_queue_id_reg_info *chunks);
-- 
2.53.0

