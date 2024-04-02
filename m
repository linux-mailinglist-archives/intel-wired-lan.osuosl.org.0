Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53AE2894E98
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Apr 2024 11:23:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 12B3040CA7;
	Tue,  2 Apr 2024 09:23:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pQtU0PP3nmkT; Tue,  2 Apr 2024 09:23:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 70A5940C96
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712049794;
	bh=mPRN7R9lh26MvPps2r6V6QRCUDsWvQ9Nt6UYtfHL0SM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=h6SVo+Sttb2GDCCD9iZZQEyrRn55m86SVO2Ju7cS0Bc2yM/1WCNLtL1eqURNqivme
	 3SRhkqr3wotOpl3OeddlSigQXPsmNvd+2N0n8IDq4HIiNR+PdB42i7T0hrPP4glmm5
	 0aWEWwOisbzeNC89AMW7s3TMNtzUVd0S+x/3eI71bNFO5YMi4LRlbV9xusEXLa4pb+
	 NZrwAGohkNxGhR4kTlPwBnGJrPlc2rmz2MRUqE6D8tt3dnfvqzZsvISuqefOq/E+oh
	 G8Ew4B3z9HkVA85fj1Jg+yRULUJOhR6pCnTkPb8hZ4YxpdBXFWkys3sP99XT7YBGUP
	 YQyqWzjD5MKTQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 70A5940C96;
	Tue,  2 Apr 2024 09:23:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E440B1BF33C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 09:23:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DA90F60670
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 09:23:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DP3eeEX_KxF6 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Apr 2024 09:23:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ksundara@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 22EEE605A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 22EEE605A8
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 22EEE605A8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 09:23:10 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-516-06wZo3tqMmKfKGCFN73DQw-1; Tue, 02 Apr 2024 05:23:04 -0400
X-MC-Unique: 06wZo3tqMmKfKGCFN73DQw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2192E85A58E;
 Tue,  2 Apr 2024 09:23:04 +0000 (UTC)
Received: from ksundara-mac.redhat.com (unknown [10.74.16.172])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 347E32166B31;
 Tue,  2 Apr 2024 09:22:56 +0000 (UTC)
From: Karthik Sundaravel <ksundara@redhat.com>
To: jesse.brandeburg@intel.com, wojciech.drewek@intel.com, sumang@marvell.com,
 jacob.e.keller@intel.com, anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Tue,  2 Apr 2024 14:52:53 +0530
Message-Id: <20240402092254.3891-1-ksundara@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1712049789;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=mPRN7R9lh26MvPps2r6V6QRCUDsWvQ9Nt6UYtfHL0SM=;
 b=IR56ada78qhL4UmnnMsXIx/lFmU08IhzbfuDF499DqF+k++5JrTFRavu4agVSRKdfosPJK
 kKydNjBwcoDT9wZnJYrReAO6/C4OuUWaIWguH7KdRZSlbzX+dL3OOOK+yhVtVTkUKUzFqa
 SpHXhMFcl+QYeW/rKRsDrp7EUw18hW8=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=IR56ada7
Subject: [Intel-wired-lan] [PATCH v7] ice: Add get/set hw address for VFs
 using devlink commands
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
Cc: pmenzel@molgen.mpg.de, aharivel@redhat.com, jiri@resnulli.us,
 cfontain@redhat.com, vchundur@redhat.com, ksundara@redhat.com,
 michal.swiatkowski@linux.intel.com, rjarry@redhat.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Maintainers,
    Thanks for the review and suggestions for my patch.

v6 -> v7
--------
- Addressed Smatch and checkpatch issues

v5 -> v6
--------
- Changed data type of vf_id to u16
- Used container_of(port, struct ice_vf, devlink_port) to
  get the vf instead of ice_get_vf_by_id()/ice_put_vf()

v4 -> v5
--------
- Cloned ice_set_vf_mac() to ice_set_vf_fn_mac() so that the
  parameter ice_pf is used instead of net_device of vf
- removed redundant error handling

v3 -> v4
--------
- Released the vf device by calling ice_put_vf()

v2 -> v3
--------
- Fill the extack message instead of dev_err()

v1 -> v2
--------
- called ice_set_vf_mac() directly from the devlink port function
  handlers.

RFC -> v1
---------
- Add the function handlers to set and get the HW address for the
  VF representor ports.

