Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 338BB6D32CB
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 Apr 2023 19:27:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7358F41844;
	Sat,  1 Apr 2023 17:27:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7358F41844
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680370041;
	bh=p537jXtX4UX5UdGs0aH/2oXbcw61mVur6tHNdNf0sCo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=rb//kPsJtL5jR2WUp5Xswg2yRV2YugRcsTqrBWMRUGkZYNM9ch3LFNF7Et8EHH3sH
	 9jejcgTZBeCJrHV28cDVEui0TLv4DelBS+3IxF5kebcuLCK0QwW9eAlg4YpHExv0jy
	 aUBYGZlrvEzd6bnbns65ZUvDA/PpYo8z57jQy9Uwk8ibEP6+I22gAeTwFg2F5+3iow
	 NyhQTUoCpSkI84q4ByX++X9ioHGCdvgAUtojZTxR0P81Foe65UcbLqZOKy2OJnvidp
	 9J8Y6hIZIiylh0DRHlrm54qun0owcO5vBOfToDNe6Y8Fd4twhxP77ou35BJdYVfby5
	 Qn7ifc7ka0G8g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YqV9ieDNfNTI; Sat,  1 Apr 2023 17:27:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B16641841;
	Sat,  1 Apr 2023 17:27:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B16641841
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 633351BF318
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 17:27:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3DD5541841
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 17:27:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3DD5541841
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RYKKSrCY2ipG for <intel-wired-lan@lists.osuosl.org>;
 Sat,  1 Apr 2023 17:27:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D673B41840
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D673B41840
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 17:27:13 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-110--4-w7UPHPEeTqBrChxPxQw-1; Sat, 01 Apr 2023 13:27:09 -0400
X-MC-Unique: -4-w7UPHPEeTqBrChxPxQw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 83CF1811E7C;
 Sat,  1 Apr 2023 17:27:08 +0000 (UTC)
Received: from toolbox.redhat.com (ovpn-192-6.brq.redhat.com [10.40.192.6])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9B73340C20FA;
 Sat,  1 Apr 2023 17:27:06 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sat,  1 Apr 2023 19:26:55 +0200
Message-Id: <20230401172659.38508-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680370032;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=65Iz+2whr6rjm3xLsaaHebB1Q53TG1JVRojv1Hn702I=;
 b=QToOkDzGzjmg8s92chyVyrDu4Hu3I9rgeQCNq3uStY7rDFbSSR1lGujDBpa0djv4eLuOMT
 BBO33JcnOMDk8La+eIbs8cWFfFp6C78XRAaDys0J4zPgYxy+jwlAR8TtQQLsct8a5ngeXw
 eLcZOls9NhTQmkU1u6lAH1l2UEFqDfg=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=QToOkDzG
Subject: [Intel-wired-lan] [PATCH net-next 0/4] ice: lower CPU usage with
 GNSS
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series lowers the CPU usage of the ice driver when using its
provided /dev/gnss*.

Intel engineers, in addition to reviewing the patches for correctness,
please also consider my doubts expressed in the descriptions of patches
1 and 2. There may be better solutions possible.

Michal Schmidt (4):
  ice: lower CPU usage of the GNSS read thread
  ice: sleep, don't busy-wait, for sq_cmd_timeout
  ice: remove unused buffer copy code in ice_sq_send_cmd_retry()
  ice: sleep, don't busy-wait, in the SQ send retry loop

 drivers/net/ethernet/intel/ice/ice_common.c   | 29 +++++--------
 drivers/net/ethernet/intel/ice/ice_controlq.c |  8 ++--
 drivers/net/ethernet/intel/ice/ice_controlq.h |  2 +-
 drivers/net/ethernet/intel/ice/ice_gnss.c     | 42 +++++++++----------
 drivers/net/ethernet/intel/ice/ice_gnss.h     |  3 +-
 5 files changed, 35 insertions(+), 49 deletions(-)

-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
