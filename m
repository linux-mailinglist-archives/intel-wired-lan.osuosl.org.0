Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4088982A7
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 09:59:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F0BA582CC7;
	Thu,  4 Apr 2024 07:59:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ukF98Ya1KnqJ; Thu,  4 Apr 2024 07:59:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5612F82CA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712217581;
	bh=Ne5O+kLXAYiWdUCUDf3J7afXMactHb5xvcMlkba4fGY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=9jZ2cbu+oF+DN7CmlFGILfFuhjJycIYB+7ARSC6zMOi7Dd3tzn3b4MGnYjpXeSxaA
	 LV4JUYcFmZK0oz6TCaBun/SSBButYFOdhsQ5fislTDD2QVsFhxPVSkqZI0EiaJq2IU
	 8NugtVBC1s4g0yxBWgNL198bVzYj5RJ9r9H9G6oCVWmjFuOZ8OjSZ915lrM5zzEEDc
	 nIfIzCsMvPcUem2hTR8dR6BuOgj0esFgn8A19wEQAQOutUMEfreT6XYRwJ1svbun3q
	 VwJifPIIKpYGo6edF+2BVQcm9khJlNrDoh8TV/D8Akn+i7j0GXvDBIhnM0bLkIHCZg
	 Mn+w99NUpOR4A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5612F82CA5;
	Thu,  4 Apr 2024 07:59:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AB4A21BF239
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 07:59:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A382F60F66
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 07:59:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4JoCU1ONW1rQ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Apr 2024 07:59:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ksundara@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CBE0A6080C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBE0A6080C
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CBE0A6080C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 07:59:37 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-145-PncMlps5OsaZhvpF4hXbMQ-1; Thu, 04 Apr 2024 03:59:32 -0400
X-MC-Unique: PncMlps5OsaZhvpF4hXbMQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
 [10.11.54.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0B46485A58B;
 Thu,  4 Apr 2024 07:59:32 +0000 (UTC)
Received: from ksundara-mac.redhat.com (unknown [10.74.17.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E17202024517;
 Thu,  4 Apr 2024 07:59:24 +0000 (UTC)
From: Karthik Sundaravel <ksundara@redhat.com>
To: jesse.brandeburg@intel.com, wojciech.drewek@intel.com, sumang@marvell.com,
 jacob.e.keller@intel.com, anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Thu,  4 Apr 2024 13:29:16 +0530
Message-Id: <20240404075917.4347-1-ksundara@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1712217576;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=Ne5O+kLXAYiWdUCUDf3J7afXMactHb5xvcMlkba4fGY=;
 b=VXaOQPu5NPDNJLJpKlDRza3Mt2iiNqbStT9bgNWoPSWwLz5Ghv2Pw0ZpxEYxuC6mjPtfmI
 MqqaRYizErILHj5sQ+U8JigPloNxO1zlyMdAYi4HXrjRyN/Gl+aZB/bJ+fSXsvTLesYxhm
 mqAMiDsUou1j9yMg5ytxDn2Zx1nnKoE=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=VXaOQPu5
Subject: [Intel-wired-lan] [PATCH v8] ice: Add get/set hw address for VFs
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

