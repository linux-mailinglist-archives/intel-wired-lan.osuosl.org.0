Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 404917D689D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Oct 2023 12:33:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8655E850B1;
	Wed, 25 Oct 2023 10:33:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8655E850B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698230021;
	bh=1JzsMtJ3rDJuLoZ13QN+xdsvRVtDMiG8crZXcNaPV60=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=BhBTnUEjDEScZx3Nx/w53HNTMF/6raRjycJYzWWin+aE38bO77frAOy2bOIkGXrPm
	 fM6rR/Z0fRCdC65jKed+fHRpuVHBsH8aHIrzwKWwprlofIcDAEtsNaxlaIUFAHggDH
	 HSzTByBIjwz+SyABN/vvSIo4reHPWHyQeFkTFpn2yePoomjZxgM5es66/zA6AJOFOW
	 nuDL1h2TGTsgRvmAxCu/pivNT6+z04vOQK1ZwIg75DoqDDahZuWJ+of5hy9/vCD6WW
	 eK3qHE5Jn/EIDxwgQI8H18ULpZi0G44h4PwOsyQugSQdInt0T9QgzRc3vZakNBNq8H
	 7gZ0mWgzAbRew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 916I_9yFD-tm; Wed, 25 Oct 2023 10:33:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 757B184F30;
	Wed, 25 Oct 2023 10:33:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 757B184F30
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 475F21BF48B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 10:33:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1F7C184FC1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 10:33:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F7C184FC1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id txMLib9pf7W4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Oct 2023 10:33:31 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 68A9984FB8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 10:33:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68A9984FB8
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-689-M_ahc-PIPiGpIOmS0EWofg-1; Wed, 25 Oct 2023 06:33:17 -0400
X-MC-Unique: M_ahc-PIPiGpIOmS0EWofg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4DF36891F28;
 Wed, 25 Oct 2023 10:33:17 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.62])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B1F971121320;
 Wed, 25 Oct 2023 10:33:15 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Wed, 25 Oct 2023 12:33:13 +0200
Message-ID: <20231025103315.1149589-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1698230010;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=sLw+xTXfry5r3/ti5ulvPxarMfCsTLFS8WTKCXQP2us=;
 b=YxDX/UmRGVUDt0vtix2wkvtG2e4KCtrJIKEQQ4ext7KYi+HAj0jNDmn5Lss5T92c4zyXBV
 9jiyk7xFz+NCPxscl2v/3qGXN7nd754ydgBxyvZh3UKS1PVl+RIyqmhBTK0LdvDHzsAfIe
 aMzpDzjDYx/urTLN+8D7g9mvPqPKFVE=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=YxDX/UmR
Subject: [Intel-wired-lan] [PATCH iwl-next 0/2] Remove VF MAC types and move
 helpers from i40e_type.h
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The series removes MAC types for VF functions and moves inline helper
functions from i40e_type.h to i40e_prototype.h

Ivan Vecera (2):
  i40e: Remove VF MAC types
  i40e: Move inline helpers to i40e_prototype.h

 drivers/net/ethernet/intel/i40e/i40e_adminq.c | 33 +++-----
 .../net/ethernet/intel/i40e/i40e_prototype.h  | 70 +++++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_type.h   | 76 -------------------
 3 files changed, 80 insertions(+), 99 deletions(-)

-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
