Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E71A7BEFB4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 02:25:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BDE21415D9;
	Tue, 10 Oct 2023 00:25:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BDE21415D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696897522;
	bh=hIovZCBc3Nat7dBZ08eX/skNgEy95TJKP9+5az5f3Vs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=mDmesw5Qv1C4NN9/PVlCRv3E/EE/krq+6+rmXdTKJMePQQj5SHrxNcBnt01V+z8Ja
	 PDQQoPvOXXdT3D9xGpJ96HKBQq+kFOXZYRF7NOTGwWTjiftLfWARxYlMd5mLZ6hljq
	 N+GtyG7l0081wYlLzQvVD5FqkwbNWyxOKDK02UxHzrZIk0zRCmUbXriX/pmZxsQytN
	 RP857Q+Am6XlfBv/yERf1nW94J99csf6cPv3todm0rEXlckSF/B96oe5zUcpWNhnjg
	 gN2scfgnfcs/I1/+qSQGACbdoVF+tIO8te+ixV3AmwRWdOhkvCb2Jl/PZZSAD+O3Xf
	 0c5cMihZEIdBA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0FX_4voZ3Z6C; Tue, 10 Oct 2023 00:25:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76CF840510;
	Tue, 10 Oct 2023 00:25:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76CF840510
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2473B1BF969
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 00:25:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ECE9A81E70
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 00:25:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ECE9A81E70
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iVQCb9VfVHM6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 00:25:14 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DC41181762
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 00:25:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC41181762
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-484-wKpxGO3fOoSOSWePfeHUSg-1; Mon, 09 Oct 2023 20:25:11 -0400
X-MC-Unique: wKpxGO3fOoSOSWePfeHUSg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F2DFD185A797;
 Tue, 10 Oct 2023 00:25:10 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.45.226.226])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 686061C060AE;
 Tue, 10 Oct 2023 00:25:09 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 10 Oct 2023 02:24:39 +0200
Message-ID: <20231010002444.43507-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1696897512;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=FABdTnorb+5+UiWLboo9uAdYDUlbC9OSmOlSkJf+7Lw=;
 b=GuojPwzLlPAr6ErcrLJ7z2QhaahylqNkOapXkj4Esg9OgxWVN5/38IGCYyw0SGmGIQXhEr
 CLznsjrSuOGEYnJc/cgwhvy4VxY42P+Xxg+W+wE9atdBhaKZz5asc+10UXqq+fGTH5Ldt+
 2QRn/q1IYplr5RF5FJxALSAHlyYnHFg=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=GuojPwzL
Subject: [Intel-wired-lan] [PATCH net-next 0/5] iavf: cleanup,
 improvements in init and
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Radoslaw Tyl <radoslawx.tyl@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Here are a couple of iavf cleanups and then improvements for the
initialization flow (waiting for the VF reset) and driver removal.

Michal Schmidt (5):
  iavf: fix comments about old bit locks
  iavf: simplify mutex_trylock+sleep loops
  iavf: in iavf_down, don't queue watchdog_task if comms failed
  iavf: in iavf_down, disable queues when removing the driver
  iavf: fix the waiting time for initial reset

 drivers/net/ethernet/intel/iavf/iavf_main.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
