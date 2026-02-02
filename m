Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wGv9DelkgGml7gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 09:48:41 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A24A1C9CD2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 09:48:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6D1E607A5;
	Mon,  2 Feb 2026 08:48:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PodwgDzr5mTv; Mon,  2 Feb 2026 08:48:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 290C4607BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770022118;
	bh=HTwQrQT+ZoBH+fw1ExFDWdLwscSVJv6fNBdaB+KAnVs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=gP8t1qaeEvs69/gSxinWluEpETlWXDY9RMSrTVU+LTfk3yziVNNapsXiJC2pph3DG
	 Vq9V+UBD3eqQPuYJabKJMHEltk8jXcb9TCcbefOQpq9DTsVUk2TwhxkqKrG/5k23mI
	 sTCz6mp/yKhk5wVLO1KqC7ZDRBlV09TByws2R33UzMnpj2Z8YANIW/uQ8I5e9eIrBY
	 lEMjzLnZJynA7iH9vKYTv8ZVzlFL10BmsKSWo5tFzS7le06yjt4tjdz7+xrE0Yeywk
	 0oOAXbcyWfNHS+xKvLLY6WTJzeegTO5EiiO0oTVwgS2oSc2mdRcufKpIG6+EFvYXph
	 J6yFeQZ09KnpA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 290C4607BA;
	Mon,  2 Feb 2026 08:48:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 157C31E0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 08:48:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 00E7D4082C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 08:48:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id byNEhXsQ4pvo for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Feb 2026 08:48:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E148340827
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E148340827
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E148340827
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 08:48:34 +0000 (UTC)
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-529-t_tByHraPmeWlBukj8Y70w-1; Mon,
 02 Feb 2026 03:48:29 -0500
X-MC-Unique: t_tByHraPmeWlBukj8Y70w-1
X-Mimecast-MFC-AGG-ID: t_tByHraPmeWlBukj8Y70w_1770022108
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id ED371180047F; Mon,  2 Feb 2026 08:48:27 +0000 (UTC)
Received: from ShadowPeak.redhat.com (unknown [10.44.32.10])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 146911956053; Mon,  2 Feb 2026 08:48:23 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Mon,  2 Feb 2026 09:48:20 +0100
Message-ID: <20260202084820.260033-1-poros@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1770022113;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=HTwQrQT+ZoBH+fw1ExFDWdLwscSVJv6fNBdaB+KAnVs=;
 b=EsmE26uIYa7Er0JUyVQSPPtIDztuEI2LeqbnLUny1bNJmVGwkTxT/Jua8zYlZg76UeOydf
 9bsHp8g0y8mQo/zpguqitFsTGDDeo5eetQKZ9KlXRcFsU562F8+qPGbc+NC5LPx3YOgaMw
 l26gGHfrNMd9gfVSDmD+SehoHIF30pI=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=EsmE26uI
Subject: [Intel-wired-lan] [PATCH net] iavf: fix deadlock in reset handling
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
Cc: ivecera@redhat.com, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>, linux-kernel@vger.kernel.org,
 Andrew Lunn <andrew+netdev@lunn.ch>, Stanislav Fomichev <sdf@fomichev.me>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:sdf@fomichev.me,m:anthony.l.nguyen@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: A24A1C9CD2
X-Rspamd-Action: no action

Three driver callbacks schedule a reset and wait for its completion:
ndo_change_mtu(), ethtool set_ringparam(), and ethtool set_channels().

Waiting for reset in ndo_change_mtu() and set_ringparam() was added by
commit c2ed2403f12c74 ("iavf: Wait for reset in callbacks which trigger
it") to fix a race condition where adding an interface to bonding
immediately after MTU or ring parameter change failed because the
interface was still in __RESETTING state. The same commit also added
waiting in iavf_set_priv_flags(), which was later removed by commit
53844673d55529 ("iavf: kill "legacy-rx" for good").

Waiting in set_channels() was introduced earlier by commit 4e5e6b5d9d13
("iavf: Fix return of set the new channel count") to ensure the PF has
enough time to complete the VF reset when changing channel count, and to
return correct error codes to userspace.

Commit ef490bbb226702 ("iavf: Add net_shaper_ops support") added
net_shaper_ops to iavf, which required reset_task to use _locked NAPI
variants (napi_enable_locked, napi_disable_locked) that need the netdev
instance lock.

Later, commit 7e4d784f5810 ("net: hold netdev instance lock during
rtnetlink operations") and commit 2bcf4772e45adb ("net: ethtool: try to
protect all callback with netdev instance lock") started holding the
netdev instance lock during ndo and ethtool callbacks for drivers with
net_shaper_ops.

The combination of waiting for reset and the new locking requirements
creates a deadlock: the callback holds the lock and waits for reset_task,
but reset_task is blocked waiting for the same lock:

  Thread 1 (callback)               Thread 2 (reset_task)
  -------------------               ---------------------
  netdev_lock()
  ndo_change_mtu() or ethtool op
    iavf_schedule_reset()
    iavf_wait_for_reset()           iavf_reset_task()
      waiting...                      netdev_lock() <- DEADLOCK

Reproducer:

  # echo 16 > /sys/class/net/$PF/device/sriov_numvfs
  # ip link set $VF up
  # ip link set $VF mtu 5000
  RTNETLINK answers: Device or resource busy

  # dmesg | tail -1
  iavf: MTU change interrupted waiting for reset

Fix this by temporarily releasing the lock while waiting for reset to
complete. This follows the pattern used elsewhere in the kernel (e.g.,
do_set_master() releases rtnl_lock before calling ndo_add_slave()).

Fixes: 7e4d784f5810 ("net: hold netdev instance lock during rtnetlink operations")
Signed-off-by: Petr Oros <poros@redhat.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 8aa6e92c16431f..d7738fb8fa60bc 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -189,13 +189,22 @@ static bool iavf_is_reset_in_progress(struct iavf_adapter *adapter)
  * iavf_wait_for_reset - Wait for reset to finish.
  * @adapter: board private structure
  *
+ * The iavf driver selects NET_SHAPER, so callbacks that trigger reset are
+ * always called with netdev instance lock held, while reset_task also needs
+ * this lock. Release the lock while waiting to avoid deadlock.
+ *
  * Returns 0 if reset finished successfully, negative on timeout or interrupt.
  */
 int iavf_wait_for_reset(struct iavf_adapter *adapter)
 {
-	int ret = wait_event_interruptible_timeout(adapter->reset_waitqueue,
-					!iavf_is_reset_in_progress(adapter),
-					msecs_to_jiffies(5000));
+	struct net_device *netdev = adapter->netdev;
+	int ret;
+
+	netdev_unlock(netdev);
+	ret = wait_event_interruptible_timeout(adapter->reset_waitqueue,
+					       !iavf_is_reset_in_progress(adapter),
+					       msecs_to_jiffies(5000));
+	netdev_lock(netdev);
 
 	/* If ret < 0 then it means wait was interrupted.
 	 * If ret == 0 then it means we got a timeout while waiting
-- 
2.52.0

