Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15013832098
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jan 2024 21:51:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB43A40477;
	Thu, 18 Jan 2024 20:51:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB43A40477
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705611077;
	bh=bRDXSn6I/hp6Tvmtx7L1Eze/oOIEVT2dyNd7wAVTXkk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=sXdABJNV5uW7Zvy674K1LlmWKX6IRe1BoMB5y0jUDrlzlO+oasw+yMfYtVKH0hd53
	 hhDZlm5erFHBq4X8L0MugGkTcK0yBuj2oGtxizEf9VfWgVlC7LdkQNI4BuBg1r5e46
	 9jm1oAom6Glgch5euLJl/p3qifgWqgTMuUwiOIbdUtoES6dXiR5MIQu92aoQnMTtVF
	 FrSfRCnZsfZwCFl9vBfe5MhSfmteX/DfjJJE//u0EyBZpBri0o7bdg/GvVPydrJA0z
	 q1C29bRfYJ6D9kWDghxXeVklLsevtJl1h0P+6oMfsAakispdgUIznqrSlz++x04jMl
	 rPMfh3esUFz3w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J6p4kOYFq2-R; Thu, 18 Jan 2024 20:51:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 923CC402BC;
	Thu, 18 Jan 2024 20:51:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 923CC402BC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 231A11BF419
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 20:51:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EDBF542859
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 20:51:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDBF542859
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XJnUtW39BJ_U for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jan 2024 20:51:11 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 40B1641EBE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 20:51:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 40B1641EBE
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-5-SdIH67f5N-6RoALllVyzqg-1; Thu, 18 Jan 2024 15:51:03 -0500
X-MC-Unique: SdIH67f5N-6RoALllVyzqg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 545D283B86B;
 Thu, 18 Jan 2024 20:51:03 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.45.226.27])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 396F21C05E0F;
 Thu, 18 Jan 2024 20:51:01 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 18 Jan 2024 21:50:40 +0100
Message-ID: <20240118205040.346632-1-mschmidt@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1705611069;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=bRDXSn6I/hp6Tvmtx7L1Eze/oOIEVT2dyNd7wAVTXkk=;
 b=daYIs4Gp3Rxok/CYTky9FkuhWLb6LuLamH9UVNe0qq5nBYjUT8upv2yqTDxV0xSEpoTfWr
 73zaGw7FVdCt0i39qqLSfQtJc/IJJcgu7Fv80aFxz35f06Wata1z3qfaEbGO70xD2WbEug
 TdVo9APVkYFrw71HPmHRWqWcV5pTvzY=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=daYIs4Gp
Subject: [Intel-wired-lan] [PATCH net] idpf: distinguish vports by the
 dev_port attribute
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
Cc: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Alan Brady <alan.brady@intel.com>,
 netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

idpf registers multiple netdevs (virtual ports) for one PCI function,
but it does not provide a way for userspace to distinguish them with
sysfs attributes. Per Documentation/ABI/testing/sysfs-class-net, it is
a bug not to set dev_port for independent ports on the same PCI bus,
device and function.

Without dev_port set, systemd-udevd's default naming policy attempts
to assign the same name ("ens2f0") to all four idpf netdevs on my test
system and obviously fails, leaving three of them with the initial
eth<N> name.

With this patch, systemd-udevd is able to assign unique names to the
netdevs (e.g. "ens2f0", "ens2f0d1", "ens2f0d2", "ens2f0d3").

The Intel-provided out-of-tree idpf driver already sets dev_port. In
this patch I chose to do it in the same place in the idpf_cfg_netdev
function.

Fixes: 0fe45467a104 ("idpf: add create vport and netdev configuration")
Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 5fea2fd957eb..58179bd733ff 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -783,6 +783,8 @@ static int idpf_cfg_netdev(struct idpf_vport *vport)
 	/* setup watchdog timeout value to be 5 second */
 	netdev->watchdog_timeo = 5 * HZ;
 
+	netdev->dev_port = idx;
+
 	/* configure default MTU size */
 	netdev->min_mtu = ETH_MIN_MTU;
 	netdev->max_mtu = vport->max_mtu;
-- 
2.41.0

