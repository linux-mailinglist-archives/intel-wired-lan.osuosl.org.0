Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cFtBFhO8vWnyAwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 22:28:51 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 852992E1624
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 22:28:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 205CB41E6F;
	Fri, 20 Mar 2026 21:28:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2ntKdQUkAdvF; Fri, 20 Mar 2026 21:28:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 554D041E77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774042128;
	bh=E26FYxc8wFxoRO3tK3QNRl4t1EimTsqjdbEJ3zG8sHM=;
	h=To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=MWj1MInkpKJ2Z4VkFHuVMGh6qdCv24p9KVgnOFhwBk6e5Wgc9F7uDkPtg3Qht1WZF
	 zwH48S2IvQh3vgyu+A4tjggqxUUJBrRqyPUxEMnnRemyWmoxo+gHLh5vyvY8PZp3aw
	 8lrNQty02LJ7OaCrWJgkUsIHNFu/N5oG96Tx7XOvIXftesAwpagQAwMPywhSB7qYwe
	 vM0eUmxbRINOlZzO+r6frLpY9u5W7svY8+iopoKlGRSw5S/jQ4i/E/yk3E2aqfuYE4
	 fxXYc2KGKA47JrM2BEijRhRPEHW+WshqqqpTOV+DLuNSsjzFQWi6ybtZACYqJECr1e
	 U90+5sGUM44kw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 554D041E77;
	Fri, 20 Mar 2026 21:28:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id ADF0725C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 21:28:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 93B9A848D2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 21:28:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZEq5lhUSNE8T for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 21:28:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=199.89.1.16;
 helo=013.lax.mailroute.net; envelope-from=bvanassche@acm.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7BD71848CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7BD71848CB
Received: from 013.lax.mailroute.net (013.lax.mailroute.net [199.89.1.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7BD71848CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 21:28:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by 013.lax.mailroute.net (Postfix) with ESMTP id 4fcwfh2YFszlfpM6;
 Fri, 20 Mar 2026 21:28:44 +0000 (UTC)
X-Virus-Scanned: by MailRoute
Received: from 013.lax.mailroute.net ([127.0.0.1])
 by localhost (013.lax [127.0.0.1]) (mroute_mailscanner, port 10029) with LMTP
 id X29t86ALwCta; Fri, 20 Mar 2026 21:28:40 +0000 (UTC)
Received: from bvanassche.mtv.corp.google.com (unknown [104.135.180.219])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 (Authenticated sender: bvanassche@acm.org)
 by 013.lax.mailroute.net (Postfix) with ESMTPSA id 4fcwfY6FrrzlfvpL;
 Fri, 20 Mar 2026 21:28:37 +0000 (UTC)
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, Bart Van Assche <bvanassche@acm.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Fri, 20 Mar 2026 14:28:24 -0700
Message-ID: <20260320212824.264252-1-bvanassche@acm.org>
X-Mailer: git-send-email 2.53.0.959.g497ff81fa9-goog
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=acm.org; h=
 content-transfer-encoding:mime-version:x-mailer:message-id:date
 :date:subject:subject:from:from:received:received; s=mr01; t=
 1774042120; x=1776634121; bh=E26FYxc8wFxoRO3tK3QNRl4t1EimTsqjdbE
 J3zG8sHM=; b=YJawdxt4oC9yp8KYDgd73MLR58EVim8aNX2V2S+m6t4aFOEq6Dv
 GkdfqqSnro2ZzmMUelIOfl2VbzOLX+HRTHM10Gn3bOEEEDM+dFBWpbDiAusnstiG
 jRrmeKlqPvllUQXw8/Gi3T5oUgcKDOHuP2po1sxJBeIk1FBmv/YdK/Q1XKglN2ZU
 8n0oYYzXshDPCRmhK9yH/tqIXjzd/m8RaDqdYHXzeJ/Y4UzApdjAu8/4628OX7xQ
 IlHnP28KAfghKzwKkRgkci/7uKvksYSBK6/lFSV+9xPyABP5dtZ8pGbPFXw+3OIc
 WOCtJ86PFXikdQqDY1r1hA8Mlk+GyWRUMvA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=acm.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=acm.org header.i=@acm.org header.a=rsa-sha256
 header.s=mr01 header.b=YJawdxt4
Subject: [Intel-wired-lan] [PATCH iwl-net v4] ice: fix locking in
 ice_dcb_rebuild()
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
From: Bart Van Assche via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Bart Van Assche <bvanassche@acm.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [-0.71 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:bvanassche@acm.org,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,acm.org:email,acm.org:replyto,acm.org:mid,osuosl.org:dkim,osuosl.org:email];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	HAS_REPLYTO(0.00)[bvanassche@acm.org];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 852992E1624
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Move the mutex_lock() call up to prevent that DCB settings change after
the first ice_query_port_ets() call. The second ice_query_port_ets()
call in ice_dcb_rebuild() is already protected by pf->tc_mutex.

This also fixes a bug in an error path, as before taking the first
"goto dcb_error" in the function jumped over mutex_lock() to
mutex_unlock().

This bug has been detected by the clang thread-safety analyzer.

Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org
Fixes: 242b5e068b25 ("ice: Fix DCB rebuild after reset")
Signed-off-by: Bart Van Assche <bvanassche@acm.org>
---

v4 (this patch): Changed "[PATCH] iwl-net:" into "[PATCH iwl-net]".

v3 (2026-03-20): Modified patch description. See also
  https://lore.kernel.org/all/20260223220102.2158611-20-bart.vanassche@li=
nux.dev/#t

v2 (2026-02-23): Combined the two patches into one patch and
  increased the amount of code covered by tc_mutex. See also
  https://lore.kernel.org/all/20260223220102.2158611-20-bart.vanassche@li=
nux.dev/

v1 (2025-02-06): Two patches. See also
  https://lore.kernel.org/all/20250206175114.1974171-16-bvanassche@acm.or=
g/

 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/e=
thernet/intel/ice/ice_dcb_lib.c
index bd77f1c001ee..78ded6876581 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -537,14 +537,14 @@ void ice_dcb_rebuild(struct ice_pf *pf)
 	struct ice_dcbx_cfg *err_cfg;
 	int ret;
=20
+	mutex_lock(&pf->tc_mutex);
+
 	ret =3D ice_query_port_ets(pf->hw.port_info, &buf, sizeof(buf), NULL);
 	if (ret) {
 		dev_err(dev, "Query Port ETS failed\n");
 		goto dcb_error;
 	}
=20
-	mutex_lock(&pf->tc_mutex);
-
 	if (!pf->hw.port_info->qos_cfg.is_sw_lldp)
 		ice_cfg_etsrec_defaults(pf->hw.port_info);
=20
