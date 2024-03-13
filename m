Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F55A87A8CE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Mar 2024 14:56:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 46D5860B36;
	Wed, 13 Mar 2024 13:56:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ggmkQn5Gbguz; Wed, 13 Mar 2024 13:56:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8FE2060644
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710338188;
	bh=YY7GeN9xZf21MLc2UbS3lntZ4saklnuJyBZ7lW6jh1c=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=yDZNImjNy/mvyiCKT0Fd2WIS4wj+9NDn1tBasVTbRwG0pIEtx3li+Z/9xO+K8Ll6A
	 NmHK3Guy4efvQ85qHClMVInTGG9ix26sb9ETTr0fQXTPNGTjvwukQnhtpQMKFaq7+9
	 Pr0efUHLdIVgN8aKYez/9WQJ0t9XXExjwkZbcSl5/NRZ6KDnoPaAlc3mQypGR+M8Nh
	 TBSrjni4J9jeo9L8tJ3CuEPS93I78jilzmNlsKbfAAaz1ftILW5KFXnYbN23hhLM+2
	 Bt6bxhmJY47Mibo+FuDLTFmjcNCjgrIpncOXggUpPoBW5rj4lM0Uj6b0t5s5tIe5Fg
	 YPfZEJw2vEqVQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8FE2060644;
	Wed, 13 Mar 2024 13:56:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 098461BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 13:56:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EA060405EF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 13:56:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vVvUTUYnk3-T for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Mar 2024 13:56:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 96A8B407E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96A8B407E6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 96A8B407E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 13:56:24 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-635-VcupKPbuOvKv81gJxYr70g-1; Wed, 13 Mar 2024 09:56:21 -0400
X-MC-Unique: VcupKPbuOvKv81gJxYr70g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
 [10.11.54.5])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C65B01875701;
 Wed, 13 Mar 2024 13:56:20 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.224.236])
 by smtp.corp.redhat.com (Postfix) with ESMTP id ECA6517A93;
 Wed, 13 Mar 2024 13:56:18 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Wed, 13 Mar 2024 14:56:17 +0100
Message-ID: <20240313135618.20930-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1710338183;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=YY7GeN9xZf21MLc2UbS3lntZ4saklnuJyBZ7lW6jh1c=;
 b=G67HmaXouPJHKEspmF776tVVsZsXdmHdAALITb2O/huEH9+x6TMbnO4zVtWTa5BvVJghkw
 7sDRhyp4VvK36AatUHrCrypegpJ6J8TH66rLU2yqwPswzc+ZylzX9EKI8RK+JPk2mpYayX
 MY+5IU8Fh8qvfp6Pz05xz2RAht3kmQs=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=G67HmaXo
Subject: [Intel-wired-lan] [PATCH net] i40e: Fix VF MAC filter removal
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
Cc: "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>, aleksandr.loktionov@intel.com,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 horms@kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit 73d9629e1c8c ("i40e: Do not allow untrusted VF to remove
administratively set MAC") fixed an issue where untrusted VF was
allowed to remove its own MAC address although this was assigned
administratively from PF. Unfortunately the introduced check
is wrong because it causes that MAC filters for other MAC addresses
including multi-cast ones are not removed.

<snip>
	if (ether_addr_equal(addr, vf->default_lan_addr.addr) &&
	    i40e_can_vf_change_mac(vf))
		was_unimac_deleted = true;
	else
		continue;

	if (i40e_del_mac_filter(vsi, al->list[i].addr)) {
	...
</snip>

The else path with `continue` effectively skips any MAC filter
removal except one for primary MAC addr when VF is allowed to do so.
Fix the check condition so the `continue` is only done for primary
MAC address.

Fixes: 73d9629e1c8c ("i40e: Do not allow untrusted VF to remove administratively set MAC")
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index b34c71770887..10267a300770 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -3143,11 +3143,12 @@ static int i40e_vc_del_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 		/* Allow to delete VF primary MAC only if it was not set
 		 * administratively by PF or if VF is trusted.
 		 */
-		if (ether_addr_equal(addr, vf->default_lan_addr.addr) &&
-		    i40e_can_vf_change_mac(vf))
-			was_unimac_deleted = true;
-		else
-			continue;
+		if (ether_addr_equal(addr, vf->default_lan_addr.addr)) {
+			if (i40e_can_vf_change_mac(vf))
+				was_unimac_deleted = true;
+			else
+				continue;
+		}
 
 		if (i40e_del_mac_filter(vsi, al->list[i].addr)) {
 			ret = -EINVAL;
-- 
2.43.0

