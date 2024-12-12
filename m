Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 449749EEC6E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2024 16:34:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4885341577;
	Thu, 12 Dec 2024 15:34:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yNqxaoaCp6u3; Thu, 12 Dec 2024 15:34:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C12741561
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734017691;
	bh=13o4+w2vc4IAOvLwv/U7eV9+p2jKQE2IuJHiuMKJebc=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=i0MU7yhaXas6HDqOE4ZHO2WHiuM9HsBL5Z8PkFeScG/AxqhzVKpRXKRe/f8nk5DTd
	 +6jOA6OzFI1sEllHyaGyMx0GDfnY+9mY6UDTeYXE/IYMP4Xp34CbX/5sYNP84zxb67
	 xP/LOkzqA6zPGvyAB6+XRlE6fUg0GevlT5JsuCkQWjfE9B+DYuqfHTHbPD9U7+fDsz
	 6gqWQwS+dA2A4gRAX6b/U3xYJZKE3+OIo4CFnEahInAD8MHpdGSraXJQ20oxO+cj+X
	 Y9mNep+GlaXRQ6PHsGqAEy8e8ORVdIiZob9ecodMDohnEF7btYosJMaOA+VQs/P/df
	 ZhKKNwO/nXOYg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C12741561;
	Thu, 12 Dec 2024 15:34:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B581D1147
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 15:34:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 95C91402E6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 15:34:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B4Es4kw4msWT for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2024 15:34:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C5B5E40204
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C5B5E40204
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C5B5E40204
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 15:34:48 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-76-TDDFPdouMC6x2B9vLguTvg-1; Thu,
 12 Dec 2024 10:34:44 -0500
X-MC-Unique: TDDFPdouMC6x2B9vLguTvg-1
X-Mimecast-MFC-AGG-ID: TDDFPdouMC6x2B9vLguTvg
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id AC96819560AA; Thu, 12 Dec 2024 15:34:42 +0000 (UTC)
Received: from rhel-developer-toolbox-2.redhat.com (unknown [10.45.224.236])
 by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 691D81955F3C; Thu, 12 Dec 2024 15:34:40 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Thu, 12 Dec 2024 16:34:14 +0100
Message-ID: <20241212153417.165919-1-mschmidt@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1734017687;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=13o4+w2vc4IAOvLwv/U7eV9+p2jKQE2IuJHiuMKJebc=;
 b=VCKxGluHlgfNfuD/AMik5sUZcXq101d6L3/t5GlPvWp/UsBZT/YNnMEiXR3oMamdOskCd7
 hcBuS5XvNCa9XfxYrsCXwUDcelqpLkRMmFZryzFjWgZn3Gi5wdATsvjqHL3IUUaPm/QqQs
 vKtTpj+cs8bzud5xGcQ6TswksCA+Cvk=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=VCKxGluH
Subject: [Intel-wired-lan] [PATCH iwl-next 0/3] ice: GNSS reading
 improvements
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

This improves the reading of GNSS data. The main change is the lower
latency for received GNSS messages, which helps ts2phc do its job.

Michal Schmidt (3):
  ice: downgrade warning about gnss_insert_raw to debug level
  ice: lower the latency of GNSS reads
  ice: remove special delay after processing a GNSS read batch

 drivers/net/ethernet/intel/ice/ice_gnss.c | 34 ++++++++---------------
 drivers/net/ethernet/intel/ice/ice_gnss.h |  7 +++--
 2 files changed, 16 insertions(+), 25 deletions(-)

-- 
2.47.1

