Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8CF99EE59
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Oct 2024 15:57:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4511181016;
	Tue, 15 Oct 2024 13:57:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KKSu7KuCt50I; Tue, 15 Oct 2024 13:57:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D38E380FFB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729000623;
	bh=cJuW/lIJTyrbV7NpVcyI1HzN779Z0hNFw3YsExR+ltU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=xlgyV8dHtsefwM5/RPKbBZIZ08g7HyWeJHRpPvWuD/QIHHuja8drw5L8vxkvgoroK
	 HCdnaloVNIc0syEU5ScMuzmA5rKWEyT4hA97kZzcDgsvPtesbLeJ7aQyWftWQLOgbM
	 7FDZ7BIlgTMvwRpV//XzfyWvO6206JFkYge/kRBgdMLxxxj/16F22tTBygtwrUyk6G
	 BHTHQ8IiEzvVQIOAQ9vppnczqojTM/YDj3hVvk/izAA2Awq9kBZkfRpfJNLuPbNrZB
	 qg4N0c/vpKQVzvI/JPLSypR/3o2IG3wWhj+K54zFZd7h9pVoQ3aZrPOusJ3DUNYpdd
	 aig+iNVit8wjg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D38E380FFB;
	Tue, 15 Oct 2024 13:57:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7623E1BF321
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 13:57:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6FBB360741
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 13:57:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aSJJAMoKGAuv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Oct 2024 13:57:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 780466070E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 780466070E
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 780466070E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 13:56:59 +0000 (UTC)
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-27-Bqk1wIAkO2W1ervTX_13kw-1; Tue,
 15 Oct 2024 09:56:53 -0400
X-MC-Unique: Bqk1wIAkO2W1ervTX_13kw-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 489B21953961; Tue, 15 Oct 2024 13:56:52 +0000 (UTC)
Received: from gerbillo.redhat.com (unknown [10.45.224.244])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 84ADC19560A3; Tue, 15 Oct 2024 13:56:49 +0000 (UTC)
From: Paolo Abeni <pabeni@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 15 Oct 2024 15:56:35 +0200
Message-ID: <e45d1c9f17356d431b03b419f60b8b763d2ff768.1729000481.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1729000619;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=cJuW/lIJTyrbV7NpVcyI1HzN779Z0hNFw3YsExR+ltU=;
 b=eKRMep720oL6qO9D3/IyqlaEYODvmrZ8TIWEf7m+evhel3/3xLAiIChYskyHRROepyOw4R
 Lnc5cCusc5hnBgRydqN79zWXgAdqjlFLAv4ZahXoXe8jGFmomfRxwnpc5l5acHJwFGmvmC
 sM6ME7eYm9uH7Dzehp5J7jCiQ+H4Xp0=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=eKRMep72
Subject: [Intel-wired-lan] [PATCH iwl-next] virtchnl: fix m68k build.
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Wenjun Wu <wenjun1.wu@intel.com>,
 Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The kernel test robot reported a build failure on m68k in the intel
driver due to the recent shapers-related changes.

The mentioned arch has funny alignment properties, let's be explicit
about the binary layout expectation introducing a padding field.

Fixes: 608a5c05c39b ("virtchnl: support queue rate limit and quanta size configuration")
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202410131710.71Wt6LKO-lkp@intel.com/
Signed-off-by: Paolo Abeni <pabeni@redhat.com>
---
 include/linux/avf/virtchnl.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index 223e433c39fe..13a11f3c09b8 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -1499,6 +1499,7 @@ VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_queue_chunk);
 
 struct virtchnl_quanta_cfg {
 	u16 quanta_size;
+	u16 pad;
 	struct virtchnl_queue_chunk queue_select;
 };
 
-- 
2.45.2

