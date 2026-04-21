Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UL1kLkkI52lP3AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Apr 2026 07:16:57 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A86943660E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Apr 2026 07:16:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 21E63412D9;
	Tue, 21 Apr 2026 05:16:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cax7ZgQ8_g15; Tue, 21 Apr 2026 05:16:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9078041301
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776748613;
	bh=7D53xtOFZWTTNmBFly2sMy6Aan/RQNTrroS2iD/6/Xo=;
	h=Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=mrXsn4mxD9an224TPjjo/wNUt9rcmgIfFfsLKjNDHGxwsQbEMtwFTwaxE4OfRuJ/m
	 kGYxcmc/dcNHBrB453LCf+aMVhKmmMepjQC/sQuCgSJJ79Kevlix86xHCBIyPEdV2I
	 mDxoVDU5pzaTd5KCub4ccSjv1MyeRbFZhst+RUbfVyjvoywgwdGayafQVYlY6Qn2Zo
	 a1j+eZFUhVTAktN0ZMtSHvPZt2iw9psYXBqBn+dt2epwehfyZ/ow1Ne/izsED1CGxF
	 Fp6BN0LJUQkoE+5x228FKMS2HwYO9otABM8YYRYsssob44VEC5C2rHQRBoH1NkEHPn
	 ARVKVEQ/npBgw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9078041301;
	Tue, 21 Apr 2026 05:16:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 178F624D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2026 05:16:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 00E4D61198
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2026 05:16:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0ovT6hNKjkMu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Apr 2026 05:16:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::124a; helo=mail-dl1-x124a.google.com;
 envelope-from=3qqjnaqykd0qhuurromuumrk.iusotzkr-2oxkj-rgtroyzy.uy0uyr.uxm@flex--boolli.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3DC4361164
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3DC4361164
Received: from mail-dl1-x124a.google.com (mail-dl1-x124a.google.com
 [IPv6:2607:f8b0:4864:20::124a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3DC4361164
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2026 05:16:51 +0000 (UTC)
Received: by mail-dl1-x124a.google.com with SMTP id
 a92af1059eb24-12db218e265so1841166c88.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 22:16:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776748610; x=1777353410;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=7D53xtOFZWTTNmBFly2sMy6Aan/RQNTrroS2iD/6/Xo=;
 b=PaVzrJ3l47uCS41HfQYMkTAMYnc/bsmCd06k70xDwOU+9t5AptY7zIwQdU09uPu+2B
 g5IG4GMgfKez1ra6U8JmHJTehPQSWYx8PuUweaDSOdGTFA/4YKlplgv57cMhc6T2D0Ku
 jfNBVUOgOlej9FiRmYsqQ6JwjD0o6/UpFJN9uI9aYYhDf7LbYiCga/2aUEeh6QDWnaXS
 ONPKcydQ4wUJc1ajYutDbD0MP6MrmQwRVmuLaX+6gyTrVq0EXKTTSYA8Q/UaLQMUWUhd
 4d+CIvy25mz57Onw3c+u+TBDdUxIehwq0+1IKIOK5VlR5OUlPij9LSZilQ9OGVywQo+U
 V32g==
X-Forwarded-Encrypted: i=1;
 AFNElJ/ICHFrAR439k54uyR5bmXQ2qxggkwHi/opz2lsbgCs1i9qitnmk4rP928WDiAIpAYNKrRl9W+/Pid/+FF8X18=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwP6RDuTdOVGVJk8Dn1+HTSW/leP08pV4QNA55fFEa1PXfj6ki3
 Xtzey0QZQwdTRIPZf+KSqX/Pp/PIKubtH2knqGuVeFoqF9ChRyGxKBd+dAP2BenhJBZE2b+pGwC
 n/rmzxw==
X-Received: from dlbsn12.prod.google.com
 ([2002:a05:7022:b90c:b0:12d:b26a:1571])
 (user=boolli job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7022:6290:b0:12c:8f92:c6ba
 with SMTP id a92af1059eb24-12c8f92c9damr3936024c88.34.1776748609630; Mon, 20
 Apr 2026 22:16:49 -0700 (PDT)
Date: Tue, 21 Apr 2026 05:16:41 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.54.0.rc1.555.g9c883467ad-goog
Message-ID: <20260421051641.370436-1-boolli@google.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 David Decotigny <decot@google.com>, Anjali Singhai <anjali.singhai@intel.com>, 
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Brian Vazquez <brianvv@google.com>, 
 Li Li <boolli@google.com>, emil.s.tantilov@intel.com, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1776748610; x=1777353410; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=7D53xtOFZWTTNmBFly2sMy6Aan/RQNTrroS2iD/6/Xo=;
 b=SkdTaGDYNQN2TuS9rQZHO1LkVRDB/3ISJbEQrvgV1+Ocn6fCf25y82Mu2OTdp2rmPw
 B8t5cvKnTj2NEW5XqzkwtjDvIXSojN3DOjqqVwjrVpvnPGyeN+p7AKAnW1l3TA+5aGRL
 pdA341g2hlwUlw2VxZ27gHJzzOVv+ZM3hXXiJivh+H9BUJcJitwM3fmiUex0VHxdXopq
 MyGofCQeqBilB/cHCmZDpGRVVVRXiKKGMXQpIam4k4KY8uyGNvp1mvWvwSCEyS9HfFOO
 SnsmLlOmp7RmLLLdVw3BA4s3M97Z0EDvCI28NXPzSCAEMVxFz79uePLUUrhaBXIpe32P
 22HQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20251104 header.b=SkdTaGDY
Subject: [Intel-wired-lan] [PATCH iwl-net v2] idpf: do not perform flow ops
 when netdev is detached
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
X-Spamd-Result: default: False [-0.71 / 15.00];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:boolli@google.com,m:emil.s.tantilov@intel.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	HAS_REPLYTO(0.00)[boolli@google.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 7A86943660E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Even though commit 2e281e1155fc ("idpf: detach and close netdevs while
handling a reset") prevents ethtool -N/-n operations to operate on
detached netdevs, we found that out-of-tree workflows like OpenOnload
can bypass ethtool core locks and call idpf_set_rxnfc directly during
an idpf HW reset. When this happens, we could get kernel crashes like
the following:

[ 4045.787439] BUG: kernel NULL pointer dereference, address: 0000000000000070
[ 4045.794420] #PF: supervisor read access in kernel mode
[ 4045.799580] #PF: error_code(0x0000) - not-present page
[ 4045.804739] PGD 0
[ 4045.806772] Oops: Oops: 0000 [#1] SMP NOPTI
...
[ 4045.836425] Workqueue: onload-wqueue oof_do_deferred_work_fn [onload]
[ 4045.842926] RIP: 0010:idpf_del_flow_steer+0x24/0x170 [idpf]
...
[ 4045.946323] Call Trace:
[ 4045.948796]  <TASK>
[ 4045.950915]  ? show_trace_log_lvl+0x1b0/0x2f0
[ 4045.955293]  ? show_trace_log_lvl+0x1b0/0x2f0
[ 4045.959672]  ? idpf_set_rxnfc+0x6f/0x80 [idpf]
[ 4046.063613]  </TASK>

To prevent this, we need to add checks in idpf_set_rxnfc and
idpf_get_rxnfc to error out if the netdev is already detached.

Tested: synthetically forced idpf into a HW reset by introducing module
parameters to simulate a Tx timeout and force virtual channel
initialization failure. This was done by skipping completion cleaning for
specific queues and returning -EIO during core initialization.
The failure was then triggered by writing 1 to the corresponding sysfs
parameters and calling idpf_get_rxnfc() during the reset process.

Without the patch: encountered NULL pointer and kernel crash.

With the patch: no crashes.

Fixes: 2e281e1155fc ("idpf: detach and close netdevs while handling a reset")
Cc: stable@vger.kernel.org
Signed-off-by: Li Li <boolli@google.com>
---
v2:
- Removed the raw code block from the commit message and replaced it with
  a textual description of the test modifications.

 drivers/net/ethernet/intel/idpf/idpf_ethtool.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index bb99d9e7c65d..8368a7e6a754 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -43,6 +43,9 @@ static int idpf_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 	unsigned int cnt = 0;
 	int err = 0;
 
+	if (!netdev || !netif_device_present(netdev))
+		return -ENODEV;
+
 	idpf_vport_ctrl_lock(netdev);
 	vport = idpf_netdev_to_vport(netdev);
 	vport_config = np->adapter->vport_config[np->vport_idx];
@@ -349,6 +352,9 @@ static int idpf_set_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd)
 {
 	int ret = -EOPNOTSUPP;
 
+	if (!netdev || !netif_device_present(netdev))
+		return -ENODEV;
+
 	idpf_vport_ctrl_lock(netdev);
 	switch (cmd->cmd) {
 	case ETHTOOL_SRXCLSRLINS:
-- 
2.54.0.rc1.555.g9c883467ad-goog

