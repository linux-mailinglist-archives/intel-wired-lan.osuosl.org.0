Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHuBJhQcc2mwsAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jan 2026 07:58:28 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C39771470
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jan 2026 07:58:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B38238322A;
	Fri, 23 Jan 2026 06:58:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zj92zwvtVcpc; Fri, 23 Jan 2026 06:58:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D115A8322E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769151505;
	bh=wNuK2/dOALJQhNEGtJ2LlGL6rosoPqMbD+3I0jKBgfc=;
	h=Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=PpMun2gtbaoZ+MJCfipHZ4L/Tp/AbrNmR9vWF+QT9i8qtKNOyrXeGs9DMPdA86zKN
	 g4zKhmx/owvT74JELXvmFOtk6BdVfHJkK6eB8F/vNjnVzirfWNEGSYYUN0E3MIqycm
	 UcFzCS9Db8f4+bj1gvBVU5oCRVprE+ZUqOkaiu0OCE2K4iYajaaJnfhzLppSlQbyTU
	 WcMcULH5c1TgvF3JJVcvOdG1f9Q5homZcgS7Qf8jaWyUv6vxlilzt+2fCEdvrpOaHH
	 mu5y5ciaOf0qyWrh3QZ1cHteEMWXX8oMfSPPgi7+KBVUVYuX0uoS6FA4YnR8bI5a4z
	 jBBu5X5qGIkRA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D115A8322E;
	Fri, 23 Jan 2026 06:58:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D252B158
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 06:58:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B585D4098C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 06:58:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jlP8PD3ys9Zc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Jan 2026 06:58:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1249; helo=mail-dl1-x1249.google.com;
 envelope-from=3drxzaqykd2qdqqnnkiqqing.eqokpvgn-yktgf-ncpnkuvu.quwqun.qti@flex--boolli.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D83FF4088F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D83FF4088F
Received: from mail-dl1-x1249.google.com (mail-dl1-x1249.google.com
 [IPv6:2607:f8b0:4864:20::1249])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D83FF4088F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 06:58:22 +0000 (UTC)
Received: by mail-dl1-x1249.google.com with SMTP id
 a92af1059eb24-11b94abc09dso2797252c88.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 22:58:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769151502; x=1769756302;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=wNuK2/dOALJQhNEGtJ2LlGL6rosoPqMbD+3I0jKBgfc=;
 b=id3/BY0Lh5eQUZeRZ0q9yYR/i2AQhBTFQR8TRbqy+Zy1bzFLDrBNR7bgMlnUDKa2Al
 7Y6Ia7Wosj/nxyvkR64GwsOv049phEdeGD+wlcO+ZKAZval1RKlr6cnTgW2Eiow9TFgW
 Dr0nm2xEvywhlq3pC2tOUP6bopza24GviRjU9aDQVrNpcplkHpCwItpM6YiPSNhqbWNd
 L3UXwpbF5tqSVtLx2Okil4j3/fjutsrg7aWHMislq5rRYGT2e9d8hn89lxt5IZunmANV
 KZ02bIp4zGzIKj6S5tCquD2HFUNwq0o7OTP95jcBCorfBHjyGjnW+noE6lhgvH1cIhyV
 DJkQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUSfuEUjlnKh5dkyqQbrYFgv80d5B3brRL4Iq/Zm9TrFVoKxyAMipIuCMKpswmCMaMymBbxdbDuXX/6WOMR+vY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwzqcrL0puPTnxh+9H+++r4FEYKUO38WSGkxPCylRcaIMbElr1F
 nqKl5D4y87SyuXfMNPfxsYWmkvT8ROkegHUgcrDS8JduWRLCy4dGo1oHecw7wO7y0aQpRZ7yqci
 hNuprag==
X-Received: from dlbuy11.prod.google.com
 ([2002:a05:7022:1e0b:b0:11f:3ccd:73d7])
 (user=boolli job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7022:112:b0:11a:273c:dd98
 with SMTP id a92af1059eb24-1247dbb0d6amr858556c88.20.1769151501761; Thu, 22
 Jan 2026 22:58:21 -0800 (PST)
Date: Fri, 23 Jan 2026 06:58:06 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.52.0.457.g6b5491de43-goog
Message-ID: <20260123065806.3858623-1-boolli@google.com>
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
 d=google.com; s=20230601; t=1769151502; x=1769756302; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=wNuK2/dOALJQhNEGtJ2LlGL6rosoPqMbD+3I0jKBgfc=;
 b=4YjMmmcVek0fEvx3NJkSOH3jngJqMRXdPHf78ofn0FYGQCPhsatnOvWRXtSY04oNwh
 pKH7R/zzEmGb/GFH1Uu5LS5BUq0DdWjOVogVOoepKc0+WAub9Qyabn2D/r6ecnVH7nlp
 xmByzhOHs0u/XJQAdnoLUQP/JVJxIH3IW3FcuyOukOwZsSYHf1GaeVT0XpDbRQKgEl7a
 fo5KUFzyJ7kde6POVKAvGykTz2GPgiJkez5xcZ+c4Z2MKuLB6WL5qk7lvQIAZJlam+PH
 SFy7e2EZQNu6tZHtEBVkaznGc/esZ9Dk5g3qTlYHgLgVsvPVWPVwOZHO2q17nYl+JusW
 CEoA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=4YjMmmcV
Subject: [Intel-wired-lan] [PATCH v2] idpf: nullify pointers after they are
 freed
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.71 / 15.00];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:boolli@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	HAS_REPLYTO(0.00)[boolli@google.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 1C39771470
X-Rspamd-Action: no action

rss_data->rss_key needs to be nullified after it is freed.
Checks like "if (!rss_data->rss_key)" in the code could fail
if it is not nullified.

Tested: built and booted the kernel.

Fixes: 83f38f210b85 ("idpf: Fix RSS LUT NULL pointer crash on early ethtool operations")
Signed-off-by: Li Li <boolli@google.com>
---
Changes in v2:
 - Remove the line to nullify vport->q_vector_idxs as it is not
   necessary.

 drivers/net/ethernet/intel/idpf/idpf_lib.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 131a8121839bd..f63ab58428d2e 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1308,6 +1308,7 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
 
 free_rss_key:
 	kfree(rss_data->rss_key);
+	rss_data->rss_key = NULL;
 free_vector_idxs:
 	kfree(vport->q_vector_idxs);
 free_vport:
-- 
2.52.0.457.g6b5491de43-goog

