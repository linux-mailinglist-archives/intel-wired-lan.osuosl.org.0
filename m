Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6BB8C72C5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 May 2024 10:27:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1656141C7D;
	Thu, 16 May 2024 08:27:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m3cOI6a1IQo2; Thu, 16 May 2024 08:27:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA0CE41C9C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715848075;
	bh=Wp3xz/jEXktsfVHXaP1pl4p7Vr0VDUO5oIkhNKKtxrw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=vqdF5tBJL3FlYcxby0sdgMBF/XmXVJBWRWdX84g8eJTzUimJQ8Tkl5k9cEcA+NhtH
	 YrHSoCvqZG+082Ce+K7O2D4j8H3lDGi4eLqujNR6esrivnxkXkhoEm8lYJQW31nkJ+
	 G6RsKAtyb3nW7J2gGgnE/cbK/rWEwfe4QDfloTc23vvZUEopmdJ5UWj1qLU9XeJtSQ
	 0523nFudbyqcr6dymjFTEeP9XDCxR2lUAFKpKNxAR8arUwDP6HAqltPTtp0jIk/Xw5
	 tIi2f40xgLj6giTjX4lrJDBciiuS9TUMOku3ijJBiFVMmRZbuKHMb0dKyPVuX3AMyo
	 HYNGNX6L7GiYQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EA0CE41C9C;
	Thu, 16 May 2024 08:27:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EB4621BF855
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 08:27:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D74E241C91
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 08:27:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZpfdcP9F7mpc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 May 2024 08:27:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ksundara@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5E66C4092B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E66C4092B
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5E66C4092B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 08:27:51 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-349-yw0N3rezPtq1pnTrowYLiQ-1; Thu,
 16 May 2024 04:27:46 -0400
X-MC-Unique: yw0N3rezPtq1pnTrowYLiQ-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 974C83C025B8;
 Thu, 16 May 2024 08:27:45 +0000 (UTC)
Received: from ksundara-mac.redhat.com (unknown [10.74.17.49])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E4CF85ADC45;
 Thu, 16 May 2024 08:27:37 +0000 (UTC)
From: Karthik Sundaravel <ksundara@redhat.com>
To: jesse.brandeburg@intel.com, wojciech.drewek@intel.com, sumang@marvell.com,
 jacob.e.keller@intel.com, anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, horms@kernel.org
Date: Thu, 16 May 2024 13:57:32 +0530
Message-Id: <20240516082733.35783-1-ksundara@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1715848070;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=Wp3xz/jEXktsfVHXaP1pl4p7Vr0VDUO5oIkhNKKtxrw=;
 b=MtotPSTE4VgaoccBj3njR9y1e63N1t2kB0U/Uc6DF2konp5FwOQgXLgMfY46HrItQkHPZW
 uY/fcaU34W3fV9ad/B4N0cD5T+GJ7C4kwnUoAaHIb4IeareO9SmEb6UAREvf7e9lZ1K6vl
 zyxKcpmrRNe5kpXSloT4/hXKOPC+yBY=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=MtotPSTE
Subject: [Intel-wired-lan] [PATCH iwl-next v10] ice: Add get/set hw address
 for VFs using devlink commands
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
 michal.swiatkowski@linux.intel.com, bcreeley@amd.com, rjarry@redhat.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Maintainers,
    Thanks for the review and suggestions for my patch.

v9 -> v10
--------
- Refactor ice_set_vf_mac() to use reuse the common code blocks
  for setting the MAC addresses in both netdev and devlink flow.

v8 -> v9
--------
- Rebasing against dev-queue branch of next-queue tree

v7 -> v8
--------
- Added const keyword for the parameter ``mac`` in ice_set_vf_fn_mac()

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

