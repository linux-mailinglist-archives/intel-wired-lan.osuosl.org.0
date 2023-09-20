Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 523747A7BBE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Sep 2023 13:55:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A5DF9402B1;
	Wed, 20 Sep 2023 11:55:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A5DF9402B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695210913;
	bh=BfO29yTvhOZFpkvxJJHayOaItHMLD80Q5piulb0dD48=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=SWWIgQzo44Q129KmSpBlizrA4W576chL4COEK+ksbIqPjRmFrO9QExqfjN5SQYk6Z
	 De70ahUyVtnjPixWHNuqSD1iJRppSRfNOG+upcM8dy49U1nZl9jRgS9q0Q3gMMNHZn
	 Vq6Uj/sEgj97yd8puK9zO6iyhWq6Am5yZ44kkJYHXNUVGEBoUh96PZ4XQuKaN4qsg5
	 bbDR66U5MgMbWLqIfCjNxcgGgZncVGkUuEq8IkSHkGoYeDqcYiRK6IxfmhkH7ixhlm
	 85bKJebXHlBMq8W1cGWg3v0FmN6mNADLTAbtjS2Muw6BlWy6LoAUOKbnEPbnZlTms+
	 dXKjKDOd6APNw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NMaFxI07fGxp; Wed, 20 Sep 2023 11:55:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6080940185;
	Wed, 20 Sep 2023 11:55:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6080940185
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EE0E61BF31B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 11:55:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C8CD0612D6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 11:55:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8CD0612D6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 83L2pch50Nzj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Sep 2023 11:55:00 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 30C0660FA8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 11:54:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30C0660FA8
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-412-yWqD37fVOf2OKXhamFjCVw-1; Wed, 20 Sep 2023 07:54:53 -0400
X-MC-Unique: yWqD37fVOf2OKXhamFjCVw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7DD863812591;
 Wed, 20 Sep 2023 11:54:52 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.45.225.145])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3BE43492C37;
 Wed, 20 Sep 2023 11:54:51 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 20 Sep 2023 13:54:38 +0200
Message-ID: <20230920115439.61172-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1695210899;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=FbqkaALD9koK0woUrwUvX01fiQlAL8xBltNKiAO1nLU=;
 b=Lh91Tyaxx5T9VbVdSk0nwjLQrDwztDbaXEE8C3mrxrdw72aWc2tp2Y93teJTDBOAYOImPl
 F5gLR9KQKoWj9gJxM8wLd+ZI0xSPko8t8AWbC3X3I74dueTFYbQLyAp7jwIuDArgRrIrhN
 YBFuzDk9GTcINapYV4UsQAFOLFNLFmk=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Lh91Tyax
Subject: [Intel-wired-lan] [PATCH net] ice: always add legacy 32byte RXDID
 in supported_rxdids
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Michal Jaron <michalx.jaron@intel.com>, netdev@vger.kernel.org,
 Leyi Rong <leyi.rong@intel.com>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Paolo Abeni <pabeni@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When the PF and VF drivers both support flexible rx descriptors and have
negotiated the VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC capability, the VF driver
queries the PF for the list of supported descriptor formats
(VIRTCHNL_OP_GET_SUPPORTED_RXDIDS). The PF driver is supposed to set the
supported_rxdids bits that correspond to the descriptor formats the
firmware implements. The legacy 32-byte rx desc format is always
supported, even though it is not expressed in GLFLXP_RXDID_FLAGS.

The ice driver does not advertise the legacy 32-byte rx desc support,
which leads to this failure to bring up the VF using the Intel
out-of-tree iavf driver:
 iavf 0000:41:01.0: PF does not list support for default Rx descriptor format
 ...
 iavf 0000:41:01.0: PF returned error -5 (VIRTCHNL_STATUS_ERR_PARAM) to our request 6

The in-tree iavf driver does not expose this bug, because it does not
yet implement VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC.

The ice driver must always set the ICE_RXDID_LEGACY_1 bit in
supported_rxdids. The Intel out-of-tree ice driver and the ice driver in
DPDK both do this.

I copied this piece of the code and the comment text from the Intel
out-of-tree driver.

Fixes: e753df8fbca5 ("ice: Add support Flex RXD")
Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index b03426ac932b..db97353efd06 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -2617,12 +2617,14 @@ static int ice_vc_query_rxdid(struct ice_vf *vf)
 		goto err;
 	}
 
-	/* Read flexiflag registers to determine whether the
-	 * corresponding RXDID is configured and supported or not.
-	 * Since Legacy 16byte descriptor format is not supported,
-	 * start from Legacy 32byte descriptor.
+	/* RXDIDs supported by DDP package can be read from the register
+	 * to get the supported RXDID bitmap. But the legacy 32byte RXDID
+	 * is not listed in DDP package, add it in the bitmap manually.
+	 * Legacy 16byte descriptor is not supported.
 	 */
-	for (i = ICE_RXDID_LEGACY_1; i < ICE_FLEX_DESC_RXDID_MAX_NUM; i++) {
+	rxdid->supported_rxdids |= BIT(ICE_RXDID_LEGACY_1);
+
+	for (i = ICE_RXDID_FLEX_NIC; i < ICE_FLEX_DESC_RXDID_MAX_NUM; i++) {
 		regval = rd32(hw, GLFLXP_RXDID_FLAGS(i, 0));
 		if ((regval >> GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_S)
 			& GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_M)
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
