Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A82D2C81CE0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 18:08:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 79E558077B;
	Mon, 24 Nov 2025 17:07:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hTn5AGvxwlMy; Mon, 24 Nov 2025 17:07:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 01F5480781
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764004069;
	bh=5v7BQjWawKKrPHxq4i8nzpP/B3Mdv16JsE+KsPRfWn0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=74grETk0qshRkvSvECBtFD2iZKwyonPaPNeh81OqFlUl3yAt7Tm9bqZYrN+PeldWH
	 rYx2SDQNpn4TC3Pg0GDw9VyGEtBJllpOOIuZ/ojIbd2yWhN6VGy8TFJSClXjpp60m7
	 PVYEpP/OAz/WQGnrXdY3YP7jpiJW395JEQD9VNr42z9F58RtrSO/+uS//Wd8bqniNd
	 6FdDicqzCvv6jUFxqIvXlXE9/1SmyR06DDscN37SKABCANbJNIuT8FHAOWz3qVbxxj
	 4lnaM6HyZm+V7UzHytqRe/h/ak/zVPtiIqAE/KqClkYr8JIEWFbwZQw0D07nFAFbSx
	 O/FA+VO3gq5zg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 01F5480781;
	Mon, 24 Nov 2025 17:07:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4D30C34E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 17:07:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3015580745
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 17:07:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G9b963mRlEjh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 17:07:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4224280723
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4224280723
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4224280723
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 17:07:45 +0000 (UTC)
X-CSE-ConnectionGUID: Cg8jWGtmS5u+SdJHhtAPdQ==
X-CSE-MsgGUID: eWtXtCA8QVy0lb4HnZ1Y7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="76624265"
X-IronPort-AV: E=Sophos;i="6.20,223,1758610800"; d="scan'208";a="76624265"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 09:07:42 -0800
X-CSE-ConnectionGUID: z01ubougQoSeAkqOXtwOIQ==
X-CSE-MsgGUID: 5RI1lQkfTQuxcKbwgOc2wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,223,1758610800"; d="scan'208";a="192398148"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa007.jf.intel.com with ESMTP; 24 Nov 2025 09:07:39 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Slepecki <jakub.slepecki@intel.com>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Mon, 24 Nov 2025 18:07:35 +0100
Message-ID: <20251124170735.3077425-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.51.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764004066; x=1795540066;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sgaKmsLcJdRp2lwCT8p7j/CIA3OHxc4UJJjuxYQK+qA=;
 b=fJ8SFr/Nka0F8BwTDuN4IA7ICcMfGn3o+/Awu72ikKo11whDLrMYLxk6
 W0GK9vCKCKzolrJs8cPdL/PVzZGfUGhhgjG2toSqfTWeusbl26DtGR2cy
 Iv2S8qc5ADFyLjW+gqcLkUsnRc67rBn5dNUihDbJ4gG1wZpqLBIaAsRLv
 WlJZDsJAOU8hOoDC7glzPO1xxCfvpbnwxUR1ITEsZrRe40pD4DazkjFF8
 EXznxbsQbFHn8JhWf9XJMk3p3ESZylMn6Lao3OBW/uXRXGWleqsI3DGWa
 uqqZUGnFepqSuqbRF1RnnuDM+V52bEUu/SEP8gWWdTmbcn6w+l2fDHFKE
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fJ8SFr/N
Subject: [Intel-wired-lan] [PATCH net-next] ice: fix broken Rx on VFs
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

Since the tagged commit, ice stopped respecting Rx buffer length
passed from VFs.
At that point, the buffer length was hardcoded in ice, so VFs still
worked up to some point (until, for example, a VF wanted an MTU
larger than its PF).
The next commit 93f53db9f9dc ("ice: switch to Page Pool"), broke
Rx on VFs completely since ice started accounting per-queue buffer
lengths again, but now VF queues always had their length zeroed, as
ice was already ignoring what iavf was passing to it.

Restore the line that initializes the buffer length on VF queues
basing on the virtchnl messages.

Fixes: 3a4f419f7509 ("ice: drop page splitting and recycling")
Reported-by: Jakub Slepecki <jakub.slepecki@intel.com>
Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
I'd like this to go directly to net-next to quickly unbreak VFs
(the related commits are not in the mainline yet).
---
 drivers/net/ethernet/intel/ice/virt/queues.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/virt/queues.c b/drivers/net/ethernet/intel/ice/virt/queues.c
index 7928f4e8e788..f73d5a3e83d4 100644
--- a/drivers/net/ethernet/intel/ice/virt/queues.c
+++ b/drivers/net/ethernet/intel/ice/virt/queues.c
@@ -842,6 +842,9 @@ int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 			    (qpi->rxq.databuffer_size > ((16 * 1024) - 128) ||
 			     qpi->rxq.databuffer_size < 1024))
 				goto error_param;
+
+			ring->rx_buf_len = qpi->rxq.databuffer_size;
+
 			if (qpi->rxq.max_pkt_size > max_frame_size ||
 			    qpi->rxq.max_pkt_size < 64)
 				goto error_param;
-- 
2.51.1

