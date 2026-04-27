Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wKjMELDy72k5MwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 01:35:12 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7465447BE0D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 01:35:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0273F80FDE;
	Mon, 27 Apr 2026 23:35:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5eAwIJyptSFs; Mon, 27 Apr 2026 23:35:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B4E480F80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777332909;
	bh=gp1K2EXsXJjLmVYIVoTLMJ2MCl9E+BqqW584mODwD4o=;
	h=To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=gHmIAHU4Xe4xZcR8NLbRF3Gwg0f3Iw5rcRy9d78IcHzKFH4xNswbDjEWL70OY7SaX
	 +AI+3H5KAl9ObKHQlm6lSZq3vrDE+HB7BFAGfm2OXVDvsWHI1xmBup8KnLOKLPqWHv
	 fgyipHPusld/C7ZQntvWdGvIlWwJOlVn+T/jTUvPUCjjPahaGmYb+Zqd5fqK6UsgAU
	 jXooradBf8rk2GNzfkARtlin8pF6syFIeMNwxCFQFiUqAhVgTgmhjvE0U+UvDbllCv
	 +yX4I+BPtqzDZ8BhPlXFLpzLoOgCY0xcRPb6v65ijBl6GPSWDLumIqqZm4bAI6ZHHy
	 x/IfTHzDFoy6w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B4E480F80;
	Mon, 27 Apr 2026 23:35:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 222CE231
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 03:12:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 080C285250
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 03:12:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F_g6dmKk3oUB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Apr 2026 03:12:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::52e; helo=mail-pg1-x52e.google.com;
 envelope-from=vincent.chen@sifive.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5D8C58524F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D8C58524F
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com
 [IPv6:2607:f8b0:4864:20::52e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5D8C58524F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 03:12:14 +0000 (UTC)
Received: by mail-pg1-x52e.google.com with SMTP id
 41be03b00d2f7-c736261ee8dso3489092a12.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Apr 2026 20:12:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777259533; x=1777864333;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gp1K2EXsXJjLmVYIVoTLMJ2MCl9E+BqqW584mODwD4o=;
 b=JFXSx4vWN1OhtcGpVU+DtNktsh5ZwZRaJbTJZMoe71/eAy+jrXnlyUw+XaLBxGigCB
 pIsMH3bU6eeFXjF5e/Vudx05KoSWAPI6ZeltOdpTXM9UMHeBVRbSIzgwlaxloFJve4Gn
 /PXKdEW/CZac/MNRKurgWSZlLMQf/QQBTMFrD1wKSisXijOwEoY0PeNpnv3Qjadsy/+X
 lFHpbo5/cgzptLLWqFojFu7TZztWwVYaoMx3EREfUCQZg9kiofUbtWSsLsODWwhOssy9
 uJZLpTYP5/cTsfxyvdAU1UdOKnm1Rte89bGzHN1gmkgIfLoZiV6KsfT5v9BjgszFHZd1
 iMZA==
X-Gm-Message-State: AOJu0Yz2z0H1JrUgpGevaMjxXu6YHoK52F4yk5PoXzr+89FgtibG1WeR
 N0RcK8eRvpO4ZVKoyHt0HvjHV3OhtyQSY4GDf/+/LLEu9O3G2VuTr4dqkM4EFewSMjY=
X-Gm-Gg: AeBDietY+uIRG81dWr6lI7oMTKet/nJwEzgFIzcqk2QR0WADNakll1TpAA25TzvsGjN
 sNFycm5VdvLMzDXwZW75fPuZEbu5wsiI3UGuhvjdavw9VfZ5IbUMRCC9bdeLq9SMCqFbjKodNlC
 EAhVIg+tunDd6nBEt0eyUJnBBCReQZyrYx9mHNkYamqOl7upJhXA/507TNcKgZ+0VcRy415ypg3
 UYVsM5UmjCXZ5wkTywWgHtXKDoTo/9tPnxlWzuI5e9V3ORvXgJhwCSg96sWON0cHNqE6T4i0gU9
 nl7/Qo0jUIWOeKl75kgwtAEAtQgMV2htpyN8DOhBlkzKbUhrCmQvmvbcWfazvauSora8NwyNuxH
 6P9YqXo4Ms8MOdjTLj4KZAfdAF74K4CuDHzRSdqV2YKMijiTC2ciUQBfZG0vsmXmfM1C4zNGuph
 QeiKMXzpEUIs9kkGWB2W/SaAYeapXpgclJRwCMPDaPcfJY6YSUywmyBopzmVQCdO52181jYCUJW
 4/A
X-Received: by 2002:a05:6a20:2590:b0:3a2:e8f1:b873 with SMTP id
 adf61e73a8af0-3a2e8f1c216mr27643860637.36.1777259533362; 
 Sun, 26 Apr 2026 20:12:13 -0700 (PDT)
Received: from Vincent-X1Extreme-TW.internal.sifive.com ([210.176.154.33])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-c797702fbfcsm23211560a12.22.2026.04.26.20.12.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2026 20:12:13 -0700 (PDT)
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 vincent.chen@sifive.com
Date: Mon, 27 Apr 2026 11:11:58 +0800
Message-Id: <20260427031158.2665916-1-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 27 Apr 2026 23:35:08 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sifive.com; s=google; t=1777259533; x=1777864333; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=gp1K2EXsXJjLmVYIVoTLMJ2MCl9E+BqqW584mODwD4o=;
 b=Sth4fhXDXhcrh9HNBeEkvkq+sjzdc8Smta3+PeCqDP2rqhNicBmXsaklLvQA7baaUO
 aF4uB2af1kZVCMOOHmqG9XJaQ9iaTOo6cprCMaf9iAfCqJRtKhPgD8Czhv0PgZnZSHoc
 r4RQvSAsFUkIipEivimD+vVu6EQXefpBrfv7oLCUpfO+6S9IosgcPqwcBrkphCJc5E2M
 1RvF8btKrd/QqaXvcWGhAv337osGai4W2TjuGx93p6bhQRw/N0JRQuRq0orsWPCjQO2v
 DIJfdtr8EJsr/E4KIeCZfewwu9QpcgmnV1Ni85wFTWvB9PdFLifhemOutrr5Nc3KB+tE
 kwJw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=sifive.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=sifive.com header.i=@sifive.com header.a=rsa-sha256
 header.s=google header.b=Sth4fhXD
Subject: [Intel-wired-lan] [RFC PATCH] ice: allow creating VFs when
 !CONFIG_ICE_SWITCHDEV
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
From: Vincent Chen via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Vincent Chen <vincent.chen@sifive.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 7465447BE0D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:vincent.chen@sifive.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[vincent.chen@sifive.com];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]

Currently ice_eswitch_attach_vf() is called unconditionally in
ice_start_vfs() and ice_reset_all_vfs(), which causes VF creation
to fail when CONFIG_ICE_SWITCHDEV is not defined or switchdev mode
is not enabled at runtime.
Fix this by adding switchdev mode checks at the call sites before
calling ice_eswitch_attach_vf(), consistent with how
ice_eswitch_attach_sf() is already handled in ice_devlink_port_new().
Also remove the redundant check inside ice_eswitch_attach_vf() itself.
This is similar to commit aacca7a83b97 ("ice: allow creating VFs for
!CONFIG_NET_SWITCHDEV") which fixed the same issue for the previous
ice_eswitch_configure() API.

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c |  3 ---
 drivers/net/ethernet/intel/ice/ice_sriov.c   | 14 ++++++++------
 drivers/net/ethernet/intel/ice/ice_vf_lib.c  |  3 ++-
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 2e4f0969035f..c709decb26d5 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -512,9 +512,6 @@ int ice_eswitch_attach_vf(struct ice_pf *pf, struct ice_vf *vf)
 	struct ice_repr *repr;
 	int err;
 
-	if (!ice_is_eswitch_mode_switchdev(pf))
-		return 0;
-
 	repr = ice_repr_create_vf(vf);
 	if (IS_ERR(repr))
 		return PTR_ERR(repr);
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 843e82fd3bf9..6a0b724e46f9 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -484,12 +484,14 @@ static int ice_start_vfs(struct ice_pf *pf)
 			goto teardown;
 		}
 
-		retval = ice_eswitch_attach_vf(pf, vf);
-		if (retval) {
-			dev_err(ice_pf_to_dev(pf), "Failed to attach VF %d to eswitch, error %d",
-				vf->vf_id, retval);
-			ice_vf_vsi_release(vf);
-			goto teardown;
+		if (ice_is_eswitch_mode_switchdev(pf)) {
+			retval = ice_eswitch_attach_vf(pf, vf);
+			if (retval) {
+				dev_err(ice_pf_to_dev(pf), "Failed to attach VF %d to eswitch, error %d",
+					vf->vf_id, retval);
+				ice_vf_vsi_release(vf);
+				goto teardown;
+			}
 		}
 
 		set_bit(ICE_VF_STATE_INIT, vf->vf_states);
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index de9e81ccee66..71595410174c 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -807,7 +807,8 @@ void ice_reset_all_vfs(struct ice_pf *pf)
 		ice_vf_rebuild_vsi(vf);
 		ice_vf_post_vsi_rebuild(vf);
 
-		ice_eswitch_attach_vf(pf, vf);
+		if (ice_is_eswitch_mode_switchdev(pf))
+			ice_eswitch_attach_vf(pf, vf);
 
 		mutex_unlock(&vf->cfg_lock);
 	}
-- 
2.34.1

