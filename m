Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E32C7D309E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Oct 2023 13:00:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B1D7C82A72;
	Mon, 23 Oct 2023 11:00:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B1D7C82A72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698058836;
	bh=ZlNtfBPrWyVi8NSkkPH1oS1PFw3YU0AvHLBz7TDrpyY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=CvmzKFSUGZTqXaQ5kC4mrmHfK67QB6GN7NY0RyCATWnDcqFJXS3G8Qc8xfJixkXD5
	 TZ2Te26xvfU6/VRYq7X2cq5/hqjbloNlZO0/3uAsT07qucU170H0m3PZ3XdAKEQQs8
	 aZxr0dWr04IgwgpIel3CN8vXbIcvLY73G0cM7yGSJ9zWL/GWSSGomDut6AKQIC55dh
	 DEHg6JbbDzrlYKQ2WC7ScDNe3gWfVAr9jWlUGopMh4gO10xLRLD6Pd1VUHB8S3KDNY
	 e+7u3/J329t54UqXBqANYRNbnaUIX3JWVMRAdajS5acMJ7GsPdP+5m6UlCU+ioZv+l
	 fNdHg0DXzpZUg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F3lYHnJH9iR8; Mon, 23 Oct 2023 11:00:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 864518293D;
	Mon, 23 Oct 2023 11:00:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 864518293D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 385A01BF418
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 11:00:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0E8A5402E6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 11:00:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0E8A5402E6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RD9IIlmx9Rew for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Oct 2023 11:00:29 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2377241020
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 11:00:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2377241020
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-526-3SiTYdThMmCpfI7IPxkf8Q-1; Mon, 23 Oct 2023 07:00:14 -0400
X-MC-Unique: 3SiTYdThMmCpfI7IPxkf8Q-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1EB0D857D07;
 Mon, 23 Oct 2023 11:00:14 +0000 (UTC)
Received: from toolbox.redhat.com (unknown [10.45.226.177])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 640C7492BFB;
 Mon, 23 Oct 2023 11:00:12 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: netdev@vger.kernel.org
Date: Mon, 23 Oct 2023 12:59:53 +0200
Message-ID: <20231023105953.89368-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1698058828;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=Da6pkJhRBkjuIiEbnBGvJD8KVGzcpPqXspbLjyfu7Dg=;
 b=UGIxTG0aWl6VYj7GGrTuLIgLrP0iax9cqwMcEle0cve30MGWxZZ+VhIn28jS4syFAAPkFn
 8e2FYYRs6WdHdnxxNZN3rTcs6CsKteQHCbzS6Ozqh5fh8A2JnsfiJr1RqPlyLGQaZrfdCp
 5S+IzLOTPgj70rsTHmBJvKdpA9n5opw=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=UGIxTG0a
Subject: [Intel-wired-lan] [PATCH net] ice: lag: in RCU,
 use atomic allocation
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
Cc: Dave Ertman <david.m.ertman@intel.com>, intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Daniel Machon <daniel.machon@microchip.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Sleeping is not allowed in RCU read-side critical sections.
Use atomic allocations under rcu_read_lock.

Fixes: 1e0f9881ef79 ("ice: Flesh out implementation of support for SRIOV on bonded interface")
Fixes: 41ccedf5ca8f ("ice: implement lag netdev event handler")
Fixes: 3579aa86fb40 ("ice: update reset path for SRIOV LAG support")
Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 7b1256992dcf..33f01420eece 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -595,7 +595,7 @@ void ice_lag_move_new_vf_nodes(struct ice_vf *vf)
 		INIT_LIST_HEAD(&ndlist.node);
 		rcu_read_lock();
 		for_each_netdev_in_bond_rcu(lag->upper_netdev, tmp_nd) {
-			nl = kzalloc(sizeof(*nl), GFP_KERNEL);
+			nl = kzalloc(sizeof(*nl), GFP_ATOMIC);
 			if (!nl)
 				break;
 
@@ -1672,7 +1672,7 @@ ice_lag_event_handler(struct notifier_block *notif_blk, unsigned long event,
 
 		rcu_read_lock();
 		for_each_netdev_in_bond_rcu(upper_netdev, tmp_nd) {
-			nd_list = kzalloc(sizeof(*nd_list), GFP_KERNEL);
+			nd_list = kzalloc(sizeof(*nd_list), GFP_ATOMIC);
 			if (!nd_list)
 				break;
 
@@ -2046,7 +2046,7 @@ void ice_lag_rebuild(struct ice_pf *pf)
 		INIT_LIST_HEAD(&ndlist.node);
 		rcu_read_lock();
 		for_each_netdev_in_bond_rcu(lag->upper_netdev, tmp_nd) {
-			nl = kzalloc(sizeof(*nl), GFP_KERNEL);
+			nl = kzalloc(sizeof(*nl), GFP_ATOMIC);
 			if (!nl)
 				break;
 
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
