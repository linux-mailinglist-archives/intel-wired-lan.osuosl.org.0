Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yLONGZzD12mdSQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 17:19:56 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB5B3CC864
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 17:19:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 06F7560907;
	Thu,  9 Apr 2026 15:11:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mVM_k9v7mXY7; Thu,  9 Apr 2026 15:11:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7948F608E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775747490;
	bh=Fxy9eCg2BDClTRLYbOVTj4F8EbvnnhW1/tW77Z1U57c=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=mBscFD2KV+jBeOkTwEi6BseZMiUTTeD47mz/nHQwOmarMxFPIRX3bb/WVS+Wd7EES
	 naS+2DrK/JbEJHjOAVx7O+d9dVeXAwztfbEexbvpkD3hKzci/5mJcCoNFKXbrt/Sxb
	 2/ZvdD5xhGvHexArseAt8NVKGqvrLOvCRiKpFyV2jX4cBbpCDaAHmi4P7MUuMY3GS2
	 hdCae/oCHogrcqETgtv2r/EHpSnnqs89AImY1McfQ4PBveJ1gIxKIJaA12Esq3dBGP
	 1HwrGg9VuMhMZ/vPra0dlxpAfuRg1MZbwtSnsffLol6Fmkox/ORm87tGFha14Py1/H
	 4y9lkUwJcoYdQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7948F608E4;
	Thu,  9 Apr 2026 15:11:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id EA9561D6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 15:11:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DBF6482105
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 15:11:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z85lCwoAZ-Hm for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Apr 2026 15:11:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=gregkh@linuxfoundation.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0087B82060
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0087B82060
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0087B82060
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 15:11:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 02E5960103;
 Thu,  9 Apr 2026 15:11:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35BDEC4CEF7;
 Thu,  9 Apr 2026 15:11:25 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Piotr Raczynski <piotr.raczynski@intel.com>, Jiri Pirko <jiri@resnulli.us>,
 Simon Horman <horms@kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 stable <stable@kernel.org>
Date: Thu,  9 Apr 2026 17:11:20 +0200
Message-ID: <2026040919-junior-glue-10d0@gregkh>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Lines: 47
X-Developer-Signature: v=1; a=openpgp-sha256; l=1839;
 i=gregkh@linuxfoundation.org; h=from:subject:message-id;
 bh=ld3ezbMvVsNELdIRgsT43RqN5vGdmDKDso8u1ZYLZMA=;
 b=owGbwMvMwCRo6H6F97bub03G02pJDJnXD05fFnv6UNmHJrlpXC+r/93mOC14dpthbqKszUIHu
 cVp3GbeHbEsDIJMDLJiiixftvEc3V9xSNHL0PY0zBxWJpAhDFycAjCRnkkM86O+Mf12sp4Z6hch
 cP6zTt0xxacTghkWLLw+v0Z2V8rEAoPLYR3rgqxl5uswAAA=
X-Developer-Key: i=gregkh@linuxfoundation.org; a=openpgp;
 fpr=F4B60CC5BF78C2214A313DCB3147D40DDB2DFB29
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1775747485;
 bh=ld3ezbMvVsNELdIRgsT43RqN5vGdmDKDso8u1ZYLZMA=;
 h=From:To:Cc:Subject:Date:From;
 b=P9GyPh1RHg21nZpKuzGezt9h1an5z7/4COuTMcsxGjmPs58NwXcbZkSyaeJE9mwU/
 8Ce9H6ftVM1KJNnMgzs9ZvlLrwxka9Z7m3oECpk0GY+xuAxylFEuKy1DCBPa+RD3PV
 lIuZ1EKyRHq0+MiGcCWhKx87i2Fja0CPxlCDe24w=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linuxfoundation.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org
 header.a=rsa-sha256 header.s=korg header.b=P9GyPh1R
Subject: [Intel-wired-lan] [PATCH net] ice: fix double free in
 ice_sf_eth_activate() error path
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
X-Spamd-Result: default: False [5.89 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[linuxfoundation.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	GREYLIST(0.00)[pass,body];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[gregkh@linuxfoundation.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DDB5B3CC864
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When auxiliary_device_add() fails, the aux_dev_uninit label calls
auxiliary_device_uninit() and falls through to sf_dev_free and xa_erase.
The uninit invokes ice_sf_dev_release(), which already frees sf_dev via
kfree() and erases the entry from ice_sf_aux_id.  The fall-through then
double-frees sf_dev and double-erases the id.

This is reachable from userspace via the devlink port function state-set
netlink command.

Fix this by returning right after uninit because the release callback
handles all cleanup correctly.

Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Eric Dumazet <edumazet@google.com>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>
Cc: Piotr Raczynski <piotr.raczynski@intel.com>
Cc: Jiri Pirko <jiri@resnulli.us>
Cc: Simon Horman <horms@kernel.org>
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Fixes: 177ef7f1e2a0 ("ice: base subfunction aux driver")
Cc: stable <stable@kernel.org>
Assisted-by: gregkh_clanker_t1000
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/net/ethernet/intel/ice/ice_sf_eth.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
index 2cf04bc6edce..6bc8aa896762 100644
--- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
@@ -304,7 +304,9 @@ ice_sf_eth_activate(struct ice_dynamic_port *dyn_port,
 	return 0;
 
 aux_dev_uninit:
+	/* ice_sf_dev_release() frees sf_dev and erases the xa entry */
 	auxiliary_device_uninit(&sf_dev->adev);
+	return err;
 sf_dev_free:
 	kfree(sf_dev);
 xa_erase:
-- 
2.53.0

