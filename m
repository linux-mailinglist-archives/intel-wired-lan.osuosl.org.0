Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6Kv1FXGTR2rbbQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Jul 2026 12:48:17 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A73F701686
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Jul 2026 12:48:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=FBR9b3zA;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=linux.dev (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DFD1660AA0;
	Fri,  3 Jul 2026 10:48:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dM2OFUX60Wur; Fri,  3 Jul 2026 10:48:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64F6660AC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783075689;
	bh=IErgOCnY357EdDsvHsbdxH5kQFV9ptIXeCqdksR3JFQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=FBR9b3zAFRVQaXM2idC6qApIFjB0kIf+kKU7BY2Cb3yYC8scWUlqeOG60AgxN9/RT
	 Y656oC43pjIv/SZd1J+8n8kVfgn0AOdXCATgIc8kX9s490JTD1xbxVooPJQLcDKfTt
	 9kwBudixhHo8CWKC7pmKoloBuNbAchhBiKZ0DjI7Mv/gltaXG9Uyq0xZ0//eAO4E4q
	 fGZkv39dUMXNP3D2dqIcKzk5fxO+MMt7m/b/Bm3NzmsmDXX3PdMG9e6Dboz6g3Isz0
	 zLaQDcQZfzZmsRHpr6IV7Tx4ZCt0Sc+YMSmrFegH3IDagzBF8ZzjEjOODDiWAPcO22
	 2bQyeU82Uyy+Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64F6660AC0;
	Fri,  3 Jul 2026 10:48:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E9D2714F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2026 10:48:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CFE4F401C2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2026 10:48:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 859arxxI15Za for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Jul 2026 10:48:06 +0000 (UTC)
X-Greylist: delayed 335 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 03 Jul 2026 10:48:05 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5C1E240084
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C1E240084
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=91.218.175.179;
 helo=out-179.mta0.migadu.com; envelope-from=xuanqiang.luo@linux.dev;
 receiver=<UNKNOWN> 
Received: from out-179.mta0.migadu.com (out-179.mta0.migadu.com
 [91.218.175.179])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5C1E240084
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2026 10:48:04 +0000 (UTC)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: xuanqiang.luo@linux.dev
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Joshua Hay <joshua.a.hay@intel.com>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>,
 Xuanqiang Luo <luoxuanqiang@kylinos.cn>
Date: Fri,  3 Jul 2026 18:41:32 +0800
Message-ID: <20260703104132.47419-1-xuanqiang.luo@linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1783075346;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=IErgOCnY357EdDsvHsbdxH5kQFV9ptIXeCqdksR3JFQ=;
 b=PjaGuWCMQ5Z9bxU5aLGaW9YuAYEwMv2+XTf5jLNkAnKtiVt2M05n4pfTPpWg4lh8nwh68r
 kPNDSgJAi1otYtU9xhPo28qnPfFUE1TMa+xGmibjw4u0Ao8eTyDx9VvOBm1VyBLxEaopr5
 5BMUt6NVSBv/4YMoo5eo6bjwp2isaYw=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=PjaGuWCM
Subject: [Intel-wired-lan] [PATCH iwl-net v1] idpf: fix lan_regs leak on
 core init failure
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[linux.dev : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:mid,linux.dev:from_mime,osuosl.org:from_smtp,osuosl.org:dkim,kylinos.cn:email];
	FROM_NEQ_ENVFROM(0.00)[xuanqiang.luo@linux.dev,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3A73F701686

From: Xuanqiang Luo <luoxuanqiang@kylinos.cn>

idpf_vc_core_init() gets the LAN memory region layout before mapping the
regions and allocating vport resources. Both layout paths allocate
hw->lan_regs, but later error paths return without freeing it.

idpf_vc_core_deinit() does not cover these paths because it returns unless
IDPF_VC_CORE_INIT is set, and that bit is set only after core init
succeeds.

Free hw->lan_regs on the post-allocation error paths and clear the
pointer and region count.

Fixes: 6aa53e861c1a ("idpf: implement get LAN MMIO memory regions")
Signed-off-by: Xuanqiang Luo <luoxuanqiang@kylinos.cn>
---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index be66f9b2e101c..da49bb7b7e671 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -3479,6 +3479,7 @@ static int idpf_vport_params_buf_alloc(struct idpf_adapter *adapter)
  */
 int idpf_vc_core_init(struct idpf_adapter *adapter)
 {
+	struct idpf_hw *hw = &adapter->hw;
 	int task_delay = 30;
 	u16 num_max_vports;
 	int err = 0;
@@ -3550,15 +3551,18 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to map BAR0 region(s): %d\n",
 			err);
-		return -ENOMEM;
+		err = -ENOMEM;
+		goto err_lan_regs;
 	}
 
 	pci_sriov_set_totalvfs(adapter->pdev, idpf_get_max_vfs(adapter));
 	num_max_vports = idpf_get_max_vports(adapter);
 	adapter->max_vports = num_max_vports;
 	adapter->vports = kzalloc_objs(*adapter->vports, num_max_vports);
-	if (!adapter->vports)
-		return -ENOMEM;
+	if (!adapter->vports) {
+		err = -ENOMEM;
+		goto err_lan_regs;
+	}
 
 	if (!adapter->netdevs) {
 		adapter->netdevs = kzalloc_objs(struct net_device *,
@@ -3624,6 +3628,10 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
 err_netdev_alloc:
 	kfree(adapter->vports);
 	adapter->vports = NULL;
+err_lan_regs:
+	kfree(hw->lan_regs);
+	hw->lan_regs = NULL;
+	hw->num_lan_regs = 0;
 	return err;
 
 init_failed:
-- 
2.43.0

