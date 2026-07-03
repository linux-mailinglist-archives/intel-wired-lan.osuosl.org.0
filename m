Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Nk7MGQuQR2r/bAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Jul 2026 12:33:47 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD5270140D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Jul 2026 12:33:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="1+HL1/+b";
	dmarc=pass (policy=none) header.from=osuosl.org;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 13098608EE;
	Fri,  3 Jul 2026 10:33:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VzmLOr3TYZPc; Fri,  3 Jul 2026 10:33:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 48C69608AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783074824;
	bh=baVj67qvtniy6b+eW//3NKKeNSe13i7J3dl8qPlTepA=;
	h=To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=1+HL1/+bckatjqXSQ74w804am8TsOctXkMQcfwpxnomobocgW05mPcuq4T449RvDg
	 PHWW11RlaEb4gTzh50ohB2rtOpVRoHobbv/qoPbquwqpyS6FsnUrqMby+zmxPvGGLi
	 VeOVx4pEsVb0qx2cNkFLx1gAzRrS/SGG2XfJ5ciXfZaABvXxJl9h0B7EH74iQNkv5y
	 8QvEPLKAilIq4uihIEAoywTmI9iQ+uOIAQs8kVerihf24Iw10eYqFbLYNrOZfRgGov
	 sWnLiYP9ArTrLAaCSmP3u2lnUlTSdXXfJsUK4hEVHwaF+NqccPQvAqJwcFB/cLYzyv
	 vyF2q6h6ZDBFA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 48C69608AF;
	Fri,  3 Jul 2026 10:33:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E4805363
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2026 10:33:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CDFE7401C2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2026 10:33:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X-zcHa2UVLzo for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Jul 2026 10:33:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com;
 envelope-from=robert.malz@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D7BD740084
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7BD740084
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D7BD740084
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2026 10:33:40 +0000 (UTC)
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 57C143FB98
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2026 10:33:37 +0000 (UTC)
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-47248bd8bc0so403733f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 03 Jul 2026 03:33:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1783074817; x=1783679617;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to:content-type;
 bh=baVj67qvtniy6b+eW//3NKKeNSe13i7J3dl8qPlTepA=;
 b=cXKS9TOlHEwyltC2L/zTPO3c0e1oJvJzlPoqA+N7saav+bwz6v0XGsihXX/RXAVT98
 DnxnqQC1fK31nZ8WhymiTyXv2UqZF/TqT3N6Agh5o3I5QkfVr6fjT45+wGtDHzZxndqG
 OuXuG9kgvOc/74L95m1QwBci+nAvxOG4MX9ayhv13ZmacdYTQIX+N17r2ETNXM8r8nCv
 hSqgO0ja+tsPveAIhzL0YG3OYa/boFd3LMGXeeKtOgnMsHAs56IegdfiFx2p6RyFjJEQ
 p0k1DpL0It+qmsh+kjNZ01TXgdF4w2lNaLJlso9V9LY162ZBRWywZ6NZ6/V5/v5mol1o
 qbSA==
X-Forwarded-Encrypted: i=1;
 AHgh+RqSp3CUQz88XebxjvMgLma0KLTzpzWhya1aovjJfZ/hayuvCisrB5WnVc/QZnNQWlUggxY4H+n4eJHJDErGsdU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzvqgG/mdTGYax4oreetLBpiBoBUeaLyIKyF4VINOmenDsFMZml
 xvKwLK/UOQDfYeTVRmsguCZk2h1rTx7ajxAOttrhXB2M7gb+zvK+Oz3pRoEQeiL8IBzE3UyeMFp
 Mws2l9HBpALkqx30UT6uS9nxgDODj7npz3iKxOi+MgPj21KuXzS8HLJ39liTE3nyjl6Afo+uKpU
 CO2YVj/XQIsJc=
X-Gm-Gg: AfdE7ckVRx3ssTW3Ng54+dRNg9BtwHNknuWe6TQ/6DsDLYxXXoTmh2KpnUhPvuEjd17
 WWVtAea+llK3MGbIP5FvsH2htbcKxiba7P8U60KxJPOMUJWC5V0yIlI36gOXBLEN5OfSm/FktDq
 PK0yebPqsKfQ/ulVySPTOS5Md3yo6iEpROxp/QX86NpGkoCzr6ZC8gob7wHb6Pdb6nOD3P0TvZ4
 a8Mevjn4DtVW00WXdwlfGGSy43uiR2iHYaYIBsqQsXjH6v2Io21Nuxw3wRamXhBr6Emnh/VH9kl
 rRmivHGQUT3o+kJih4gM/DrrlPCRj+scxgax0NGFfDJ35husf9iSjihDhZUMuHYUd7LHQD0tHTP
 Qa/Sue5sHcJTGrrkBwt/HMrU7MLE2Wqy7F+EnZ85X7qWF+fLMd+duHkEB
X-Received: by 2002:a5d:4488:0:b0:461:cd9e:2368 with SMTP id
 ffacd0b85a97d-477afbcc1cbmr10672795f8f.27.1783074816724; 
 Fri, 03 Jul 2026 03:33:36 -0700 (PDT)
X-Received: by 2002:a5d:4488:0:b0:461:cd9e:2368 with SMTP id
 ffacd0b85a97d-477afbcc1cbmr10672768f8f.27.1783074816185; 
 Fri, 03 Jul 2026 03:33:36 -0700 (PDT)
Received: from localhost.localdomain (77-236-28-43.static.play.pl.
 [77.236.28.43]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-477db3dbb79sm16482623f8f.2.2026.07.03.03.33.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jul 2026 03:33:35 -0700 (PDT)
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Jesse Brandeburg <jbrandeb@kernel.org>
Cc: Robert Malz <robert.malz@canonical.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Fri,  3 Jul 2026 12:32:44 +0200
Message-Id: <20260703103245.374800-1-robert.malz@canonical.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1783074817;
 bh=baVj67qvtniy6b+eW//3NKKeNSe13i7J3dl8qPlTepA=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
 b=Adr3wxXsfddLoio5iQhdR47jCXRJeV0zflnES7w9SkqH3r9R+DoJ4YTyYqXQW0bfT
 RwRDjIRAedd+hPbphkO/ahdLNtIAB1L331LrzHxKnio5QkyYoqdHFVkFPA/ZCqP+QE
 9MR6RfRmkrVoV9AulesVCvVfeIkazxHll5Q4NOSDaLQ4WHrE+VX+IPpelL/TSSvq8m
 A//C9ZbK9HM/dZkxUnd68qjzKVhAxxrdrpKkJxuRsptrpHQxsgcpgGwyRZWLDUtesY
 n58QHYMJjQ2vC96xvoy6GjrZciwevWluSfWhAPQqJHwuQUrsuUuDI5rrs1nq2iYZqV
 gKVoqam3lHUaQeUSv27IFoumtdQ9OX4cTB5bLvfL7MdPCDyF89tbCZwR76x/yb4DN4
 hQji+tfLHOKEuW2KgmPIMcW1jVc6JYewWPH3pYtQTfAihuEjCW7m1YtWwECnc31R3V
 wYGZggyhJNmqIsmMONny6wTTl8vI++X742Aoaaz6UEwpLuD8JIEXPVtNQ2YgH3avW8
 mfnfqnikUIcrW82ecOMftJGM3vXjKeBOEKAGTFTd4sjYWOa1u7b8uPNyZsCQMadNnF
 XMyogMWbPVpED2PwhIz8YOpWjQVSFYQEhujyaQpu7nxswMOPSnYU99eN8mkgiW1pvQ
 +mqhjAvGU4AX2yZ8+0z3t5zU=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=Adr3wxXs
Subject: [Intel-wired-lan] [PATCH iwl] ice: acquire NVM lock around each
 flash read
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
From: Robert Malz via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Robert Malz <robert.malz@canonical.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:jacob.e.keller@intel.com,m:jbrandeb@kernel.org,m:robert.malz@canonical.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[robert.malz@canonical.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:from_smtp,osuosl.org:dkim,osuosl.org:from_mime];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6FD5270140D

FW caps the NVM read lock at a maximum of 3000ms regardless of the timeout
requested via ice_acquire_nvm(). ice_read_flat_nvm() splits a read into
multiple ice_aq_read_nvm() commands, one per 4KB sector, all issued under a
single lock taken by the caller. Reading a large region can exceed 3000ms,
so FW reclaims the lock mid-read and the remaining commands might fail.

Move the lock acquire/release into ice_read_flat_nvm() so it brackets each
individual ice_aq_read_nvm() command, ensuring the lock is never held
across more than one FW read. ice_release_nvm() issues its own AQ command
and would overwrite sq_last_status, so the read's AQ error is preserved
across the release for callers such as ice_discover_flash_size() that
inspect it.

Callers that previously took the lock around ice_read_flat_nvm(),
ice_read_sr_word() or ice_read_flash_module() now call them without it.
The per-block locking in ice_devlink_nvm_snapshot() is now redundant
and dropped.

Fixes: e94509906d6b ("ice: create function to read a section of the NVM and Shadow RAM")
Signed-off-by: Robert Malz <robert.malz@canonical.com>
---
 .../net/ethernet/intel/ice/devlink/devlink.c  | 21 -------
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 11 +---
 drivers/net/ethernet/intel/ice/ice_nvm.c      | 58 ++++++++++---------
 3 files changed, 32 insertions(+), 58 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
index 22b7d8e6bd9e..7c7fe3d2e9d9 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -1891,26 +1891,15 @@ static int ice_devlink_nvm_snapshot(struct devlink *devlink,
 	for (i = 0; i < num_blks; i++) {
 		u32 read_sz = min_t(u32, ICE_DEVLINK_READ_BLK_SIZE, left);
 
-		status = ice_acquire_nvm(hw, ICE_RES_READ);
-		if (status) {
-			dev_dbg(dev, "ice_acquire_nvm failed, err %d aq_err %d\n",
-				status, hw->adminq.sq_last_status);
-			NL_SET_ERR_MSG_MOD(extack, "Failed to acquire NVM semaphore");
-			vfree(nvm_data);
-			return -EIO;
-		}
-
 		status = ice_read_flat_nvm(hw, i * ICE_DEVLINK_READ_BLK_SIZE,
 					   &read_sz, tmp, read_shadow_ram);
 		if (status) {
 			dev_dbg(dev, "ice_read_flat_nvm failed after reading %u bytes, err %d aq_err %d\n",
 				read_sz, status, hw->adminq.sq_last_status);
 			NL_SET_ERR_MSG_MOD(extack, "Failed to read NVM contents");
-			ice_release_nvm(hw);
 			vfree(nvm_data);
 			return -EIO;
 		}
-		ice_release_nvm(hw);
 
 		tmp += read_sz;
 		left -= read_sz;
@@ -1966,24 +1955,14 @@ static int ice_devlink_nvm_read(struct devlink *devlink,
 		return -ERANGE;
 	}
 
-	status = ice_acquire_nvm(hw, ICE_RES_READ);
-	if (status) {
-		dev_dbg(dev, "ice_acquire_nvm failed, err %d aq_err %d\n",
-			status, hw->adminq.sq_last_status);
-		NL_SET_ERR_MSG_MOD(extack, "Failed to acquire NVM semaphore");
-		return -EIO;
-	}
-
 	status = ice_read_flat_nvm(hw, (u32)offset, &size, data,
 				   read_shadow_ram);
 	if (status) {
 		dev_dbg(dev, "ice_read_flat_nvm failed after reading %u bytes, err %d aq_err %d\n",
 			size, status, hw->adminq.sq_last_status);
 		NL_SET_ERR_MSG_MOD(extack, "Failed to read NVM contents");
-		ice_release_nvm(hw);
 		return -EIO;
 	}
-	ice_release_nvm(hw);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 49371b065845..ddeca39d822b 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -869,24 +869,15 @@ ice_get_eeprom(struct net_device *netdev, struct ethtool_eeprom *eeprom,
 	if (!buf)
 		return -ENOMEM;
 
-	ret = ice_acquire_nvm(hw, ICE_RES_READ);
-	if (ret) {
-		dev_err(dev, "ice_acquire_nvm failed, err %d aq_err %s\n",
-			ret, libie_aq_str(hw->adminq.sq_last_status));
-		goto out;
-	}
-
 	ret = ice_read_flat_nvm(hw, eeprom->offset, &eeprom->len, buf,
 				false);
 	if (ret) {
 		dev_err(dev, "ice_read_flat_nvm failed, err %d aq_err %s\n",
 			ret, libie_aq_str(hw->adminq.sq_last_status));
-		goto release;
+		goto out;
 	}
 
 	memcpy(bytes, buf, eeprom->len);
-release:
-	ice_release_nvm(hw);
 out:
 	kfree(buf);
 	return ret;
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index 7e187a804dfa..cb1541844242 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -58,6 +58,11 @@ int ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset,
  * breaks read requests across Shadow RAM sectors and ensures that no single
  * read request exceeds the maximum 4KB read for a single AdminQ command.
  *
+ * FW caps the read lock at a maximum of 3000ms, so a read spanning multiple
+ * 4KB sectors cannot be done under a single lock without FW reclaiming it
+ * mid-read. The NVM lock is therefore acquired and released around each AQ
+ * read, so this function must be called without the lock held.
+ *
  * Returns a status code on failure. Note that the data pointer may be
  * partially updated if some reads succeed before a failure.
  */
@@ -65,6 +70,7 @@ int
 ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
 		  bool read_shadow_ram)
 {
+	enum libie_aq_err aq_err;
 	u32 inlen = *length;
 	u32 bytes_read = 0;
 	bool last_cmd;
@@ -92,12 +98,28 @@ ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
 
 		last_cmd = !(bytes_read + read_size < inlen);
 
+		status = ice_acquire_nvm(hw, ICE_RES_READ);
+		if (status)
+			break;
+
 		status = ice_aq_read_nvm(hw, ICE_AQC_NVM_START_POINT,
 					 offset, read_size,
 					 data + bytes_read, last_cmd,
 					 read_shadow_ram, NULL);
-		if (status)
+		if (status) {
+			/* ice_release_nvm() issues an AQ command that would
+			 * overwrite sq_last_status, which some callers
+			 * inspect after a failed read. Preserve the read's
+			 * AQ error across the release.
+			 */
+			aq_err = hw->adminq.sq_last_status;
+
+			ice_release_nvm(hw);
+			hw->adminq.sq_last_status = aq_err;
 			break;
+		}
+
+		ice_release_nvm(hw);
 
 		bytes_read += read_size;
 		offset += read_size;
@@ -330,14 +352,8 @@ ice_read_flash_module(struct ice_hw *hw, enum ice_bank_select bank, u16 module,
 		return -EINVAL;
 	}
 
-	status = ice_acquire_nvm(hw, ICE_RES_READ);
-	if (status)
-		return status;
-
 	status = ice_read_flat_nvm(hw, start + offset, &length, data, false);
 
-	ice_release_nvm(hw);
-
 	return status;
 }
 
@@ -419,24 +435,19 @@ ice_read_netlist_module(struct ice_hw *hw, enum ice_bank_select bank, u32 offset
 }
 
 /**
- * ice_read_sr_word - Reads Shadow RAM word and acquire NVM if necessary
+ * ice_read_sr_word - Reads Shadow RAM word
  * @hw: pointer to the HW structure
  * @offset: offset of the Shadow RAM word to read (0x000000 - 0x001FFF)
  * @data: word read from the Shadow RAM
  *
- * Reads one 16 bit word from the Shadow RAM using the ice_read_sr_word_aq.
+ * Reads one 16 bit word from the Shadow RAM using ice_read_sr_word_aq.
+ *
+ * The NVM lock is acquired and released internally by ice_read_flat_nvm()
+ * around the FW read, so this function must be called without the lock held.
  */
 int ice_read_sr_word(struct ice_hw *hw, u16 offset, u16 *data)
 {
-	int status;
-
-	status = ice_acquire_nvm(hw, ICE_RES_READ);
-	if (!status) {
-		status = ice_read_sr_word_aq(hw, offset, data);
-		ice_release_nvm(hw);
-	}
-
-	return status;
+	return ice_read_sr_word_aq(hw, offset, data);
 }
 
 /**
@@ -856,11 +867,7 @@ int ice_get_inactive_netlist_ver(struct ice_hw *hw, struct ice_netlist_info *net
 static int ice_discover_flash_size(struct ice_hw *hw)
 {
 	u32 min_size = 0, max_size = ICE_AQC_NVM_MAX_OFFSET + 1;
-	int status;
-
-	status = ice_acquire_nvm(hw, ICE_RES_READ);
-	if (status)
-		return status;
+	int status = 0;
 
 	while ((max_size - min_size) > 1) {
 		u32 offset = (max_size + min_size) / 2;
@@ -880,7 +887,7 @@ static int ice_discover_flash_size(struct ice_hw *hw)
 			min_size = offset;
 		} else {
 			/* an unexpected error occurred */
-			goto err_read_flat_nvm;
+			return status;
 		}
 	}
 
@@ -888,9 +895,6 @@ static int ice_discover_flash_size(struct ice_hw *hw)
 
 	hw->flash.flash_size = max_size;
 
-err_read_flat_nvm:
-	ice_release_nvm(hw);
-
 	return status;
 }
 
-- 
2.34.1

