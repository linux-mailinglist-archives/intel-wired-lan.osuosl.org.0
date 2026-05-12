Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iArNJ1hvA2qI5wEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 20:20:08 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C66527574
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 20:20:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 75A2B40AE5;
	Tue, 12 May 2026 18:20:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Re1Psjms4H3Y; Tue, 12 May 2026 18:20:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D6AB440B04
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778610005;
	bh=9EMCSMOi07l+ZnuteFa+6ZsS8B0SIfV/WFo73CXQMS4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0JHErUhvBtXELNjdOpbR7jrlOecqrBJX/TgfpAi6r/oV07RCNmbO2l/D7lSbLaF1r
	 Zse604v4vNSqFMVKxXRui8vNd9uXsixS+a8iSeMCYIRFeraqD+0wH4xVcnKByrTP73
	 UwT7XXf78/zG6oeHCYYZPFo2wqJC91TSZj7HoWJdV4oZQqGmOFWgEEuj6ku+bt6G6I
	 Jn40cCY45DWGGKxh/pa58YD2DNF4KVzyKng0zR306IcWRrYGEIuiGzgbolwD2sLni/
	 afMmUmKkGDWVA+uBfyeoNzmZ4PpTNGn3hSD3GkZBqqFkZRvcPwChHIj/SoFvIRORdu
	 F2/Smc3lDX5sQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D6AB440B04;
	Tue, 12 May 2026 18:20:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9546E15F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 18:20:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7AB3D82324
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 18:20:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iZDd_z2pk8aS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 May 2026 18:20:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=171.64.64.25;
 helo=smtp1.cs.stanford.edu; envelope-from=ouster@cs.stanford.edu;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AE3BF82268
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE3BF82268
Received: from smtp1.cs.Stanford.EDU (smtp1.cs.stanford.edu [171.64.64.25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AE3BF82268
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 18:20:03 +0000 (UTC)
Received: from ouster448.stanford.edu ([172.24.72.71]:57789
 helo=cs.stanford.edu)
 by smtp1.cs.Stanford.EDU with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ouster@cs.stanford.edu>)
 id 1wMri5-0004dE-T7; Tue, 12 May 2026 11:20:02 -0700
From: John Ousterhout <ouster@cs.stanford.edu>
To: stable@vger.kernel.org
Cc: anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, netdev@vger.kernel.org,
 jacob.e.keller@intel.com, John Ousterhout <ouster@cs.stanford.edu>
Date: Tue, 12 May 2026 11:19:53 -0700
Message-ID: <20260512181953.1689-1-ouster@cs.stanford.edu>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scan-Signature: 0858a923cc4ba3562bb802375c61c59b
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=cs.stanford.edu; s=cs2308; h=Content-Transfer-Encoding:MIME-Version:
 Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9EMCSMOi07l+ZnuteFa+6ZsS8B0SIfV/WFo73CXQMS4=; t=1778610003; x=1779474003; 
 b=WSu1buYeXDAYSsLSPMpKrokRAg58bMO/0mOJWhMU5XN/Zhw7BGkqTpdYC/oNvp6lKzwrAM/cwOS
 NWMSF1elmeLrE+Yn+DW6jbTzq8Kh2rvQDllxzMebltcPjFY//L60ID23hrgX+eaqsS3H5uEysdu6+
 +QDORwmVhAnAZhTYVjlpfFrXypoRQJ54hvejetlpvsqFTnUl1VqPEFMslaCkVgi/y8EYMiwxrrG9I
 ZpKQ59INJeH/C3k4ekDRcPDSFCe65T7ylsEz2DNBrod0+V5SdeWJD7ZAejT68NkwhC70a9f2SD4b1
 Viv1GYIe5Zjk3UFCA3axuKYVnxn9f+nvDTHA==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=cs.stanford.edu
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cs.stanford.edu header.i=@cs.stanford.edu
 header.a=rsa-sha256 header.s=cs2308 header.b=WSu1buYe
Subject: [Intel-wired-lan] [PATCH net v3] ice: fix packet corruption due to
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
X-Rspamd-Queue-Id: F1C66527574
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[cs.stanford.edu : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:stable@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,m:jacob.e.keller@intel.com,m:ouster@cs.stanford.edu,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[ouster@cs.stanford.edu,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cs.stanford.edu:mid,stanford.edu:email,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[ouster@cs.stanford.edu,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[7];
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
* Unfortunately zero-length buffers occur frequently: they seem
  to occur whenever a packet uses every available byte in a
  buffer, ending precisely at the end of the buffer. When this
  happens the NIC seems to generate an extra zero-length
  buffer.
The fix is for ice_put_rx_mbuf not to flip pages that have a
size of 0.

This patch applies directly to longterm stable versions 6.18.27
and 6.12.86; it also seems relevant for 6.6.137 but would need
modifcations for that version. I have not examined earlier
versions.

Unfortunately there is no upstream commit id for this patch because
the ICE driver has undergone a major revision (libeth refactor and
pagepool conversion) that eliminated the buggy code. Thus the
problem no longer exists in the main line.

Cc: stable@vger.kernel.org # 6.12+
Signed-off-by: John Ousterhout <ouster@cs.stanford.edu>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 23 ++++++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 51c459a3e722..081c7a7392b7 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1215,6 +1215,13 @@ static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
 		xdp_frags = xdp_get_shared_info_from_buff(xdp)->nr_frags;
 
 	while (idx != ntc) {
+		union ice_32b_rx_flex_desc *rx_desc;
+		unsigned int size;
+
+		rx_desc = ICE_RX_DESC(rx_ring, idx);
+		size = le16_to_cpu(rx_desc->wb.pkt_len) &
+		       ICE_RX_FLX_DESC_PKT_LEN_M;
+
 		buf = &rx_ring->rx_buf[idx];
 		if (++idx == cnt)
 			idx = 0;
@@ -1224,10 +1231,20 @@ static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
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

