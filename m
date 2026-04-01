Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLbUAwb9zGnRYgYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Apr 2026 13:09:58 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 00EB33791FF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Apr 2026 13:09:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6FFBE60B0B;
	Wed,  1 Apr 2026 11:09:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mWFPOOgjkg-e; Wed,  1 Apr 2026 11:09:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE640610ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775041793;
	bh=dBY9+sm6ptZ1WPodepS+it4mruk6rpsVbkSyMJyFFEQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=YOTHtMJgT/3DXMr2b6lKfeSeZc6d0WUhcQD9Wb66GI9TVq3FBj/kCudQJvTf2vp2o
	 aygiOGiJGdaU9Rk7TOfxFfSK43SW4pXTAhqQ6UR4BROj8M97LDu8LLNhxFArJC7B5h
	 p2xtjROXk4C40sJNMedprm9mWdyR7e89AFA00tfEYnICT4OqAAySe+6sYlSa2TbRJ9
	 SEKlhYisGYluIn3LdqH4ZhxoS86IqExJ0IR3jNyoTumRBRdNBv3WDsW08uI7K54N0D
	 bhgp0FJ2Uq+GB0kFU2jWjmcDadRK9DEsgldzCvpi3HZEvPKcxwb6wMJY6YmqEHNGxv
	 CNIF1zNdO+kuQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BE640610ED;
	Wed,  1 Apr 2026 11:09:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9FCC025F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 11:09:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 855FC807A7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 11:09:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ijo4Pt9O6vcg for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Apr 2026 11:09:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 63DA680761
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 63DA680761
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 63DA680761
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 11:09:49 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-607-gMSFGJ5uNaSUn43PCFK_Zg-1; Wed,
 01 Apr 2026 07:09:44 -0400
X-MC-Unique: gMSFGJ5uNaSUn43PCFK_Zg-1
X-Mimecast-MFC-AGG-ID: gMSFGJ5uNaSUn43PCFK_Zg_1775041783
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id F10F6195604F; Wed,  1 Apr 2026 11:09:42 +0000 (UTC)
Received: from ShadowPeak.redhat.com (unknown [10.44.32.161])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id B01191954102; Wed,  1 Apr 2026 11:09:39 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Wed,  1 Apr 2026 13:09:37 +0200
Message-ID: <20260401110937.83497-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-MFC-PROC-ID: t0oknfWcSoRDQmyv_ML3HAEKu09ujOphEUGYv-B-olA_1775041783
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1775041788;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=dBY9+sm6ptZ1WPodepS+it4mruk6rpsVbkSyMJyFFEQ=;
 b=HMFUWIUn5NQNbR7nPENJ8JwqNrGiR6F5A1keYsItSuitjf/MkNoZsb5aCn9o58wFIJl5AI
 i8icsKrOx4FQgJshIRcfYRBoY9TvL8s3QIfDsTw2DEOWEx2YJQz4nNQ+8pydj7m4t/1XJ1
 P+IVbntGkv2Wffn1kSdPpCGk3yHkM5I=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=HMFUWIUn
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix NULL pointer dereference
 in ice_reset_all_vfs()
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Brett Creeley <brett.creeley@intel.com>, Eric Dumazet <edumazet@google.com>,
 linux-kernel@vger.kernel.org, Andrew Lunn <andrew+netdev@lunn.ch>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [3.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:brett.creeley@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCPT_COUNT_SEVEN(0.00)[11];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 00EB33791FF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

ice_reset_all_vfs() ignores the return value of ice_vf_rebuild_vsi().
When the VSI rebuild fails (e.g. during NVM firmware update via
nvmupdate64e), ice_vsi_rebuild() tears down the VSI on its error path,
leaving txq_map and rxq_map as NULL. The subsequent unconditional call
to ice_vf_post_vsi_rebuild() leads to a NULL pointer dereference in
ice_ena_vf_q_mappings() when it accesses vsi->txq_map[0].

The single-VF reset path in ice_reset_vf() already handles this
correctly by checking the return value of ice_vf_reconfig_vsi() and
skipping ice_vf_post_vsi_rebuild() on failure.

Apply the same pattern to ice_reset_all_vfs(): check the return value
of ice_vf_rebuild_vsi() and skip ice_vf_post_vsi_rebuild() and
ice_eswitch_attach_vf() on failure. The VF is left safely disabled
(ICE_VF_STATE_INIT not set, VFGEN_RSTAT not set to VFACTIVE) and can
be recovered via a VFLR triggered by a PCI reset of the VF
(sysfs reset or driver rebind).

Note that this patch does not prevent the VF VSI rebuild from failing
during NVM update — the underlying cause is firmware being in a
transitional state while the EMP reset is processed, which can cause
Admin Queue commands (ice_add_vsi, ice_cfg_vsi_lan) to fail. This
patch only prevents the subsequent NULL pointer dereference that
crashes the kernel when the rebuild does fail.

 crash> bt
     PID: 50795    TASK: ff34c9ee708dc680  CPU: 1    COMMAND: "kworker/u512:5"
      #0 [ff72159bcfe5bb50] machine_kexec at ffffffffaa8850ee
      #1 [ff72159bcfe5bba8] __crash_kexec at ffffffffaaa15fba
      #2 [ff72159bcfe5bc68] crash_kexec at ffffffffaaa16540
      #3 [ff72159bcfe5bc70] oops_end at ffffffffaa837eda
      #4 [ff72159bcfe5bc90] page_fault_oops at ffffffffaa893997
      #5 [ff72159bcfe5bce8] exc_page_fault at ffffffffab528595
      #6 [ff72159bcfe5bd10] asm_exc_page_fault at ffffffffab600bb2
         [exception RIP: ice_ena_vf_q_mappings+0x79]
         RIP: ffffffffc0a85b29  RSP: ff72159bcfe5bdc8  RFLAGS: 00010206
         RAX: 00000000000f0000  RBX: ff34c9efc9c00000  RCX: 0000000000000000
         RDX: 0000000000000000  RSI: 0000000000000010  RDI: ff34c9efc9c00000
         RBP: ff34c9efc27d4828   R8: 0000000000000093   R9: 0000000000000040
         R10: ff34c9efc27d4828  R11: 0000000000000040  R12: 0000000000100000
         R13: 0000000000000010  R14:   R15:
         ORIG_RAX: ffffffffffffffff  CS: 0010  SS: 0018
      #7 [ff72159bcfe5bdf8] ice_sriov_post_vsi_rebuild at ffffffffc0a85e2e [ice]
      #8 [ff72159bcfe5be08] ice_reset_all_vfs at ffffffffc0a920b4 [ice]
      #9 [ff72159bcfe5be48] ice_service_task at ffffffffc0a31519 [ice]
     #10 [ff72159bcfe5be88] process_one_work at ffffffffaa93dca4
     #11 [ff72159bcfe5bec8] worker_thread at ffffffffaa93e9de
     #12 [ff72159bcfe5bf18] kthread at ffffffffaa946663
     #13 [ff72159bcfe5bf50] ret_from_fork at ffffffffaa8086b9

 The panic occurs attempting to dereference the NULL pointer in RDX at
 ice_sriov.c:294, which loads vsi->txq_map (offset 0x4b8 in ice_vsi).

 The faulting VSI is an allocated slab object but not fully initialized
 after a failed ice_vsi_rebuild():

  crash> struct ice_vsi 0xff34c9efc27d4828
    netdev = 0x0,
    rx_rings = 0x0,
    tx_rings = 0x0,
    q_vectors = 0x0,
    txq_map = 0x0,
    rxq_map = 0x0,
    alloc_txq = 0x10,
    num_txq = 0x10,
    alloc_rxq = 0x10,
    num_rxq = 0x10,

 The nvmupdate64e process was performing NVM firmware update:

  crash> bt 0xff34c9edd1a30000
  PID: 49858    TASK: ff34c9edd1a30000  CPU: 1    COMMAND: "nvmupdate64e"
   #0 [ff72159bcd617618] __schedule at ffffffffab5333f8
   #4 [ff72159bcd617750] ice_sq_send_cmd at ffffffffc0a35347 [ice]
   #5 [ff72159bcd6177a8] ice_sq_send_cmd_retry at ffffffffc0a35b47 [ice]
   #6 [ff72159bcd617810] ice_aq_send_cmd at ffffffffc0a38018 [ice]
   #7 [ff72159bcd617848] ice_aq_read_nvm at ffffffffc0a40254 [ice]
   #8 [ff72159bcd6178b8] ice_read_flat_nvm at ffffffffc0a4034c [ice]
   #9 [ff72159bcd617918] ice_devlink_nvm_snapshot at ffffffffc0a6ffa5 [ice]

 dmesg:
  ice 0000:13:00.0: firmware recommends not updating fw.mgmt, as it
    may result in a downgrade. continuing anyways
  ice 0000:13:00.1: ice_init_nvm failed -5
  ice 0000:13:00.1: Rebuild failed, unload and reload driver

Fixes: 12bb018c538c ("ice: Refactor VF reset")
Signed-off-by: Petr Oros <poros@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index c8bc952f05cdb5..51259a4fdda4b9 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -804,7 +804,12 @@ void ice_reset_all_vfs(struct ice_pf *pf)
 			ice_vf_ctrl_invalidate_vsi(vf);
 
 		ice_vf_pre_vsi_rebuild(vf);
-		ice_vf_rebuild_vsi(vf);
+		if (ice_vf_rebuild_vsi(vf)) {
+			dev_err(dev, "VF %u VSI rebuild failed, leaving VF disabled\n",
+				vf->vf_id);
+			mutex_unlock(&vf->cfg_lock);
+			continue;
+		}
 		ice_vf_post_vsi_rebuild(vf);
 
 		ice_eswitch_attach_vf(pf, vf);
-- 
2.52.0

