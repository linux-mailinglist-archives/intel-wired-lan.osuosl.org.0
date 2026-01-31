Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id NYPXAyfQgGlaBwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 17:26:15 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A480CEF03
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 17:26:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 048E540740;
	Mon,  2 Feb 2026 16:17:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i0Irfw8wNzDU; Mon,  2 Feb 2026 16:17:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DFD2406F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770049056;
	bh=LrGZL3kwWC2bOMtcfXncyzMs8mCUoEApPzsF4rcC84M=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=9qt9IvZJwq0phuQrsL+mdPpkcOO6YG+0BBfWmbgs7DON2cht//GN8PKSw/Lnj+Dz+
	 ftfc7neiflL448P+0z+JzfNc9q+IBv/oWSIY4yrVCAMOIkpwhlPynzfnVADdUe2/he
	 rvAyXmPTW61iUdDDK57m6vTgOg533LR5/QJqzP4+wBVLc5qFh6tWmivU9MO162zwr3
	 JXtEkoapVBhDNR+klQOLd9wHm/0YoeqD9D9GfBFUPnB13GtjP1d7Hcs0QgPIQCFNZe
	 CKZNdpcmZjrJYDn/ExS7c/Y6tlWwkV2X4/VsQiw912sTBxnaS11YyqoaxTiyAhID3g
	 GKdllMQog6RNw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6DFD2406F7;
	Mon,  2 Feb 2026 16:17:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2D84F69
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 16:31:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0F3FD4088D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 16:31:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L0146ibXN1nR for <intel-wired-lan@lists.osuosl.org>;
 Sat, 31 Jan 2026 16:31:39 +0000 (UTC)
X-Greylist: delayed 604 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 31 Jan 2026 16:31:38 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9AA4B40877
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9AA4B40877
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=125.209.209.18;
 helo=cvsmtppost103.wmail.worksmobile.com;
 envelope-from=ingyujang25@korea.ac.kr; receiver=<UNKNOWN> 
Received: from cvsmtppost103.wmail.worksmobile.com
 (cvsmtppost103.wmail.worksmobile.com [125.209.209.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9AA4B40877
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 16:31:37 +0000 (UTC)
X-Originating-IP: 163.152.163.130
Received: from cvsendbo002.wmail ([10.113.20.164])
 by cvsmtppost103.wmail.worksmobile.com with ESMTP id CrrGrSfKSVmrgsy9Nr+lzA
 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 31 Jan 2026 16:21:31 -0000
X-Session-ID: pwF-SrQ2R6OZKk0RtgIb1Q
X-Originating-IP: 163.152.163.130
X-Works-Send-Opt: kendjAJYjHm/FqM9FqJYFxMqFNwYjAg=
X-Works-Smtp-Source: AZbdaAvrFqJZ+Hmmaxgd+6E=
Received: from s2lab05.. ([163.152.163.130])
 by jvnsmtp402.gwmail.worksmobile.com with ESMTP id pwF-SrQ2R6OZKk0RtgIb1Q
 for <multiple recipients>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Sat, 31 Jan 2026 16:21:30 -0000
From: Ingyu Jang <ingyujang25@korea.ac.kr>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, Ingyu Jang <ingyujang25@korea.ac.kr>
Date: Sun,  1 Feb 2026 01:21:28 +0900
Message-Id: <20260131162128.3334803-1-ingyujang25@korea.ac.kr>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 02 Feb 2026 16:17:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=worksmobile.com; 
 s=s20171120; t=1769876491;
 bh=RFGCgDzlchgbRYBER3xMRQ4n5O8oW5xKFPYNPN8Ma0E=;
 h=From:To:Subject:Date:Message-Id:From:Subject:Feedback-ID:
 X-Works-Security;
 b=c2JgOwwcc7VLmtmGRSN3Mp7dnL7Gv9oKPE7ZMg5qjKhTFrnaMKcvGLPXvIN9WVExc
 HUtCmLN+gFVvELPrkxkW9opx/IhFikrFfS3nBoRaBtxKjLNHi+muX+IxBw1C67lkBZ
 Dv8LTnzLOWRsXuLEu+VVPp3eJZ33MIDwlAnltq4KTBxEIte0gI4Rnvx13K/7+nir7X
 r9ER22F5izk3WO2DsQbK4cYVlaVRkQ5riPkSHhedaf5xsCBU6i6ED+yWJ+fCH99gs8
 kf+/Sze4jPByySZj0dQPBk7WcAnczfKDWA9Niuf2XB4wfVCTxsQ+swWKa/E35nFzf6
 B8hFAdDXawNDw==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=korea.ac.kr; s=naverworks; t=1769876491;
 bh=RFGCgDzlchgbRYBER3xMRQ4n5O8oW5xKFPYNPN8Ma0E=;
 h=From:To:Subject:Date:Message-Id:From:Subject:Feedback-ID:
 X-Works-Security;
 b=LEhQD8tCoYvnSuluDafPLLlSEnVvOBByLkeojLlHlYcIEAVAdBkDh4t5exNQL62+g
 AdH7uM+ipzPOCNeQ8v6U8AD+e7noE6fcgCLoGnskOn/q9FeQVIkXe7fVB9hRn8b5Wc
 waMLf0OsKtqgfZen6Jc/73WSD4/TZ+qjmAnnHw3s=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=korea.ac.kr
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=worksmobile.com header.i=@worksmobile.com
 header.a=rsa-sha256 header.s=s20171120 header.b=c2JgOwwc; 
 dkim=pass (1024-bit key) header.d=korea.ac.kr header.i=@korea.ac.kr
 header.a=rsa-sha256 header.s=naverworks header.b=LEhQD8tC
Subject: [Intel-wired-lan] [Question] Dead code in
 ixgbe_init_eeprom_params_generic()?
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	DATE_IN_PAST(1.00)[48];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[korea.ac.kr : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	GREYLIST(0.00)[pass,body];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[korea.ac.kr:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[ingyujang25@korea.ac.kr,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.522];
	HAS_XOIP(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7A480CEF03
X-Rspamd-Action: no action

Hi,

I noticed that in drivers/net/ethernet/intel/ixgbe/ixgbe_common.c,
the function ixgbe_init_eeprom_params_generic() always returns 0.

The function (at line 860) performs EEPROM initialization and
always ends with:
  return 0;

However, in drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c, there
are multiple places where the return value is checked through the
function pointer hw->eeprom.ops.init_params(hw):

1. ixgbe_read_ee_e610() at line 3627:
   err = hw->eeprom.ops.init_params(hw);
   if (err)
       return err;

2. ixgbe_write_ee_e610() at line 3660:
   err = hw->eeprom.ops.init_params(hw);
   if (err)
       return err;

3. ixgbe_validate_ee_e610() at line 3693:
   err = hw->eeprom.ops.init_params(hw);
   if (err)
       return err;

The init_params function pointer points to
ixgbe_init_eeprom_params_generic for 82598 and 82599 chips
(ixgbe_82598.c:1164, ixgbe_82599.c:2225).

Since ixgbe_init_eeprom_params_generic() never fails, these error
checks appear to be dead code for those chip types.

Is this intentional defensive coding for potential future changes,
or could this be cleaned up?

Thanks,
Ingyu Jang
