Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wDAWCOgGsGlregIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 12:56:24 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8517224BC65
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 12:56:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A36660ACF;
	Tue, 10 Mar 2026 11:56:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2OVmmRixx1Am; Tue, 10 Mar 2026 11:56:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B6B560B19
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773143780;
	bh=2Tl0rqhKy3+HoN9UE1g3Gni0kMosYIJ5CSDPC/4uRtk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IwOuqgq0Nlrt89gZuwEg1Sj1346CRw6WfUQRve/9+83fiJxye2+aAtrc0NDQzYqay
	 r7XscEItlFwuqgkQeyDZJH/MPd5et7ePPybLcSFupNVzpg9eQlXKMmuFIsyOqkn1Mh
	 8kYsNvmZXXdaWCTfe4ICZUhuIT88s3VSNeS28J+Kox1vukL6CeH8jMo2+bRy0Q97oZ
	 p7JvRMBTcHD3BRmhJwZ1MtkbUvMQyBHDQ9/9anPngcrtaEfsF5CxZjzS6sBbRG80iB
	 YCSMUYStPeNGA3C4UfJW/IRNKHsgQk6aNt5skbkVKYnE+sPIbAJRwF16x0jNZxSmuB
	 p65ylU+UTMZzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B6B560B19;
	Tue, 10 Mar 2026 11:56:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1009B35C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 11:56:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EA63560B10
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 11:56:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7W6Rwv0nWmln for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Mar 2026 11:56:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=jramaseu@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DE28260ACF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE28260ACF
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DE28260ACF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 11:56:17 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-104-gzfeU9fbMz2c57R595sXwg-1; Tue,
 10 Mar 2026 07:56:13 -0400
X-MC-Unique: gzfeU9fbMz2c57R595sXwg-1
X-Mimecast-MFC-AGG-ID: gzfeU9fbMz2c57R595sXwg_1773143771
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 4D64619560B7; Tue, 10 Mar 2026 11:56:10 +0000 (UTC)
Received: from jramaseu-thinkpadt14gen5.tpbc.csb (unknown [10.43.3.226])
 by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id B055A1800576; Tue, 10 Mar 2026 11:56:08 +0000 (UTC)
From: Jakub Ramaseuski <jramaseu@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, przemyslaw.korba@intel.com,
 Jakub Ramaseuski <jramaseu@redhat.com>
Date: Tue, 10 Mar 2026 12:55:56 +0100
Message-ID: <20260310115556.1004263-1-jramaseu@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-MFC-PROC-ID: 6_56xbRpHvkKxoS1wFbXYq0FwELPM6yX2bfHDb-d3Ug_1773143771
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1773143776;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=2Tl0rqhKy3+HoN9UE1g3Gni0kMosYIJ5CSDPC/4uRtk=;
 b=WEngUJCjp1fx7ocS2VuBtYvZwVVErO/KMuPqN4OUCWn5wM+fxNfxsiRCuXNeUYOua0yi3t
 jEk5dmMA/H6LhvaxtzMF5SwXztOwPE4fSRyhCRYrB8CVFnQ6eC6pgN1spop7Ka++Ov/0Ho
 DocOD8P86o5CMfjrpJPLrLhFKkOWvns=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=WEngUJCj
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: enable NETIF_F_HW_CSUM for
 GSO packets
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
X-Rspamd-Queue-Id: 8517224BC65
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	RCPT_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[jramaseu@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

IPv4 over IPv6 GRE currently fails on E810 with skb_warn_bad_offload,
while IPv6 over IPv6 GRE falls back to software segmentation.
This happens because the kernel's GSO engine requires the generic HW_CSUM
flag to trust the hardware with complex encapsulation offloads.

Add NETIF_F_HW_CSUM to the device's csumo_features to satisfy the network
stack and unlock full hardware segmentation for GRE tunnels.
To prevent checksum corruption on standard traffic, evaluate the packet
in ice_features_check() and dynamically clear the NETIF_F_HW_CSUM bit
if it is not a GSO frame. This forces the driver to fall back to safe,
protocol-specific checksum features for non-GSO packets
while preserving the generic offload for tunnels.

Signed-off-by: Jakub Ramaseuski <jramaseu@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e7308e381e2f..9b4ad03e1a32 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3565,6 +3565,7 @@ void ice_set_netdev_features(struct net_device *netdev)
 
 	csumo_features = NETIF_F_RXCSUM	  |
 			 NETIF_F_IP_CSUM  |
+			 NETIF_F_HW_CSUM  |
 			 NETIF_F_SCTP_CRC |
 			 NETIF_F_IPV6_CSUM;
 
@@ -9789,6 +9790,14 @@ ice_features_check(struct sk_buff *skb,
 	if (skb->ip_summed != CHECKSUM_PARTIAL)
 		return features;
 
+	/* Hardware requires strictly-typed Tx descriptors for non-GSO frames.
+	 * Leaving generic NETIF_F_HW_CSUM enabled corrupts checksums,
+	 * causing TCP drops. We strip it here to force safe,
+	 * protocol-specific IPv4/IPv6 offloads instead.
+	 */
+	if (!gso)
+		features &= ~NETIF_F_HW_CSUM;
+
 	/* We cannot support GSO if the MSS is going to be less than
 	 * 64 bytes. If it is then we need to drop support for GSO.
 	 */
-- 
2.52.0

