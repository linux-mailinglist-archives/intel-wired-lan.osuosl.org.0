Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 211751C6436
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 May 2020 00:59:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2863220512;
	Tue,  5 May 2020 22:59:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AYHYzsTKgU+x; Tue,  5 May 2020 22:59:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 157AD204E9;
	Tue,  5 May 2020 22:59:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A70841BF21A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2020 22:59:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 99A4A8869B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2020 22:59:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EUS2NwxNEJj8 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 May 2020 22:59:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A219C8869A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2020 22:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588719559;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vLmdw3LXI4CtXnPp/sh022YqaVJWK6SleAWQvTfde7A=;
 b=OS0M6mAb3fQQeGBkMEgcBgKq+mrglQAn4+t+4QfT26j45EXN11A0mhkFv7toOFl30csyF8
 86Z501B+vSVCwQUpEQXFo51vvxI4uu7wENlhIHuq0DdsRmZ9pAzj74g/yywGAtrFQzFJQM
 9+qasUh/HZpbTqsEtNHKiRJIcOYyYg4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-20-B6M9_wFJNq6Ytglhin6_Vg-1; Tue, 05 May 2020 18:59:15 -0400
X-MC-Unique: B6M9_wFJNq6Ytglhin6_Vg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 389A1835B8B;
 Tue,  5 May 2020 22:59:13 +0000 (UTC)
Received: from hp-dl360pgen8-07.khw2.lab.eng.bos.redhat.com
 (hp-dl360pgen8-07.khw2.lab.eng.bos.redhat.com [10.16.210.135])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 592885D9C5;
 Tue,  5 May 2020 22:59:11 +0000 (UTC)
From: Jarod Wilson <jarod@redhat.com>
To: linux-kernel@vger.kernel.org
Date: Tue,  5 May 2020 18:58:35 -0400
Message-Id: <20200505225838.59505-1-jarod@redhat.com>
In-Reply-To: <20200504145943.8841-1-jarod@redhat.com>
References: <20200504145943.8841-1-jarod@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Subject: [Intel-wired-lan] [RFC PATCH net-next v2 0/3] bonding: support
 hardware crypto offload
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
Cc: Steffen Klassert <steffen.klassert@secunet.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Jay Vosburgh <j.vosburgh@gmail.com>,
 Veaceslav Falico <vfalico@gmail.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>, Andy Gospodarek <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is an initial "proof of concept" functional implementation for doing
pass-through of hardware encryption from bonding device to capable slaves.
This was tested using an ixgbe-driven Intel x520 NIC with libreswan and a
transport mode connection, on top of an active-backup bond, using netperf
and downing an interface during. Failover takes a moment, but does work,
and overall performance is right on par with offload when running on a
bare interface.

Caveats: this is ONLY enabled for active-backup, because I'm not sure
how one would manage multiple offload handles for different devices all
running at the same time in the same xfrm, and it relies on some minor
changes to both the xfrm code and slave device driver code to get things
to behave, and I don't have immediate access to any other hardware that
could function similarly to update driver code accordingly.

I'm hoping folks with more of an idea about xfrm have some thoughts on
ways to make this cleaner, and possibly support more bonding modes, but
I'm reasonably happy I've made it this far. :)

v2: fix build with CONFIG_XFRM_OFFLOAD disabled and rebase on latest
    net-next tree bonding changes

CC: Jay Vosburgh <j.vosburgh@gmail.com>
CC: Veaceslav Falico <vfalico@gmail.com>
CC: Andy Gospodarek <andy@greyhouse.net>
CC: "David S. Miller" <davem@davemloft.net>
CC: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
CC: Jakub Kicinski <kuba@kernel.org>
CC: Steffen Klassert <steffen.klassert@secunet.com>
CC: Herbert Xu <herbert@gondor.apana.org.au>
CC: netdev@vger.kernel.org
CC: intel-wired-lan@lists.osuosl.org

Jarod Wilson (3):
  xfrm: bail early on slave pass over skb
  ixgbe_ipsec: become aware of when running as a bonding slave
  bonding: support hardware encryption offload to slaves

 drivers/net/bonding/bond_main.c               | 111 +++++++++++++++++-
 .../net/ethernet/intel/ixgbe/ixgbe_ipsec.c    |  39 ++++--
 include/net/bonding.h                         |   3 +
 include/net/xfrm.h                            |   1 +
 net/xfrm/xfrm_device.c                        |  34 +++---
 5 files changed, 160 insertions(+), 28 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
