Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +BqpB6IL/WnsWwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 00:01:06 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 690294EF88A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 00:01:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62DB061100;
	Thu,  7 May 2026 22:01:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O6lq7tnSpWZw; Thu,  7 May 2026 22:01:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8FA26110E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778191261;
	bh=b0mdeVf4f/k0tra0/ipWb27hIKiBf4S4nVOXBPDXkwc=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=J3VSmkZt0RcbVsbdMrs5Eu3JoCXbLK3JtrYo7YCI9j26vJGFIvPeoNtGft1lbzLOM
	 F0nimUTbY3gOdwKS+cGZwhoxy24ZxVaNSzJocoCYodylCCBceduMhw8LyO0l67lU9d
	 7PHY+W5h772PkiwS1F+iNFZxk4f38GJijJJvTaj15Ajfmw+zmn0fX7C9TbltECkQ+D
	 ldvvbK6ypblf+esTZaLfIiNVAX6FTIgDkJqW7Zm9BskF3aP9dc4KM3WMMpV1HTlDBS
	 x3/Ivexpzao5v63cPYKB4KFuPfiwCg7Bo5yT5UITtRfr1hySgmPDDQ65ma6a1FDqY7
	 guuneB8WJUjQQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C8FA26110E;
	Thu,  7 May 2026 22:01:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A6341317
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 18:36:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8BA6A40840
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 18:36:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PyhhXJOK24AM for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 May 2026 18:36:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=171.64.64.25;
 helo=smtp1.cs.stanford.edu; envelope-from=ouster@cs.stanford.edu;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9210040084
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9210040084
Received: from smtp1.cs.Stanford.EDU (smtp1.cs.stanford.edu [171.64.64.25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9210040084
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 18:36:15 +0000 (UTC)
Received: from [70.228.78.207] (port=63938 helo=cs.stanford.edu)
 by smtp1.cs.Stanford.EDU with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ouster@cs.stanford.edu>)
 id 1wL3DA-00033n-8t; Thu, 07 May 2026 11:12:37 -0700
From: John Ousterhout <ouster@cs.stanford.edu>
To: anthony.l.nguyen@intel.com
Cc: intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 netdev@vger.kernel.org, John Ousterhout <ouster@cs.stanford.edu>
Date: Thu,  7 May 2026 11:12:08 -0700
Message-ID: <20260507181208.1322-1-ouster@cs.stanford.edu>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scan-Signature: 26b8f8cb9d50f38c95a96ded60a4c5d6
X-Mailman-Approved-At: Thu, 07 May 2026 22:00:57 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=cs.stanford.edu; s=cs2308; h=Content-Transfer-Encoding:MIME-Version:
 Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b0mdeVf4f/k0tra0/ipWb27hIKiBf4S4nVOXBPDXkwc=; t=1778178975; x=1779042975; 
 b=ifyuU85rqOUJgx0XpV5bRfmjSUhd8HFo6CDoZjvMeQaU6pY3Qa+JnVNPsacFI0kOBozpxg2sQhj
 POzRwKooQQN2M83MQAipofpkfmDmXX5ipS2tEq8eVKOmY+VG1vawjEEokodw4C0JSNFO74k+n/+/n
 cmOjJ3vtMAEjs2I5PdWdZCP53sF24GSxEJwiJZY8DC/2z2drFmakbJ56WoEFpPITjGpQZH3wpV3C6
 A+K9s9X2gb77kkw8EupNptki55N0HIigVlefhKwQ4IkUm6nPSUrcDEUpkBHOalC5yVzooreYGWK/e
 Om9EZPadU2qfSgPx0idwcKmghKh9haZ+x/6w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=cs.stanford.edu
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cs.stanford.edu header.i=@cs.stanford.edu
 header.a=rsa-sha256 header.s=cs2308 header.b=ifyuU85r
Subject: [Intel-wired-lan] [PATCH net] ice: fix packet corruption due to
 extraneous page flip
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
X-Rspamd-Queue-Id: 690294EF88A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[cs.stanford.edu : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,m:ouster@cs.stanford.edu,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[ouster@cs.stanford.edu,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[ouster@cs.stanford.edu,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Action: no action

Consider the following sequence of events:
* The bottom half of a buffer page is filled with data from
  packet A. The page has a net reference count (reference count
  - bias) of 1. The page is returned to the NIC, flipped to
  use the top half.
* Before the reference on the page is released, the NIC returns
  the page with no data in it ('size' is zero in ice_clean_rx_irq).
  In this case the bias does not get decremented. The page still
  has a net reference count of 1, so it gets returned to the NIC.
  However, ice_put_rx_mbuf flipped the page so that the bottom
  half is active.
* If the NIC stores another packet in the page before packet A
  has released its reference, the data in packet A will be
  overwritten with data from the new packet.
The fix is for ice_put_rx_mbuf not to flip pages that have a
size of 0.

Note: major revisions to the ice driver make this patch irrelevant
for recent versions. It applies to longterm stable versions
6.18.27 and 6.12.86; it also seems relevant for 6.6.137, but would
need modifications for that version. I have not examined earlier
versions

Signed-off-by: John Ousterhout <ouster@cs.stanford.edu>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 51c459a3e722..371e6db3c272 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1215,6 +1215,9 @@ static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
 		xdp_frags = xdp_get_shared_info_from_buff(xdp)->nr_frags;
 
 	while (idx != ntc) {
+		union ice_32b_rx_flex_desc *rx_desc;
+		unsigned int size;
+
 		buf = &rx_ring->rx_buf[idx];
 		if (++idx == cnt)
 			idx = 0;
@@ -1224,10 +1227,20 @@ static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
 		 * To do this, only adjust pagecnt_bias for fragments up to
 		 * the total remaining after the XDP program has run.
 		 */
-		if (verdict != ICE_XDP_CONSUMED)
-			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
-		else if (i++ <= xdp_frags)
+		if (verdict != ICE_XDP_CONSUMED) {
+			/* Don't "flip" the page if size is 0: in this case
+			 * the data in the current half will not be used so
+			 * it's OK to reuse that half. And, since the bias
+			 * didn't get decremented for this half, the page can
+			 * be returned to the NIC even if the other half is
+			 * still in use, so flipping the page could cause
+			 * live packet data to be overwritten.
+			 */
+			if (size != 0)
+				ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
+		} else if (i++ <= xdp_frags) {
 			buf->pagecnt_bias++;
+		}
 
 		ice_put_rx_buf(rx_ring, buf);
 	}
-- 
2.43.0

