Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81919327E24
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Mar 2021 13:18:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1FB474304B;
	Mon,  1 Mar 2021 12:18:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gg4TyzK0-ys9; Mon,  1 Mar 2021 12:18:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 338B142FFD;
	Mon,  1 Mar 2021 12:18:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 975DE1BF343
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Mar 2021 12:18:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 92FC042FFD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Mar 2021 12:18:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CPCTu1gh65Fl for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Mar 2021 12:18:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4866942FAC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Mar 2021 12:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614601126;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=IQ8SkpbybHRznaTl0Uenfn1wUumFqztJRwqFO4Yd650=;
 b=ZsAz5n3CDbIfNAv/yCw+0jtOWMTXdRR6kzfScLEGAx7piqed0w3PzQuKGa0hTdZGDe3vLc
 ZPwAnk81Pasi8A1R4S8AFEKd6MzCUNcAz2HJ7dIH+KgNk7/T5Q4qgfVx2qkXd0hQlmVrOf
 B7aF7KYjqGS/7DDCAo2ANq09vBB+oCQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-376--5pmkRJBM2ivr0WYaDLOCA-1; Mon, 01 Mar 2021 07:18:44 -0500
X-MC-Unique: -5pmkRJBM2ivr0WYaDLOCA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5E9AA804023;
 Mon,  1 Mar 2021 12:18:42 +0000 (UTC)
Received: from carbon (unknown [10.36.110.51])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6815C5D6CF;
 Mon,  1 Mar 2021 12:18:33 +0000 (UTC)
Date: Mon, 1 Mar 2021 13:18:32 +0100
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: netdev <netdev@vger.kernel.org>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?=
 <bjorn.topel@gmail.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Marek Majtyka <alardam@gmail.com>
Message-ID: <20210301131832.0d765179@carbon>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Subject: [Intel-wired-lan] Driver i40e have XDP-redirect bug
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
Cc: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@redhat.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, brouer@redhat.com,
 Jakub Kicinski <kuba@kernel.org>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi i40e-people + XDP-feature-people, 

The driver i40e have a XDP-redirect bug, where is it partly broken. It can
transmit a redirected xdp_frame (from another driver). But broken when
redirecting a xdp_frame that is received by the driver itself.

This reminds me about lacking XDP-features, as this "state" is actually
"supported" (for Intel drivers), when running in 'legacy-rx' mode.  This can
be configured (via: 'ethtool --set-priv-flags i40e2 legacy-rx on').  When
running in 'legacy-rx' mode the headroom is zero, which means that xdp_frame
cannot be created as it is stored in this headroom, but an XDP-prog can
still run a (DDoS) filter.  (Hint grepping after xdp_redirect stats is not enough).

The BUG I experience *is* that headroom is zero, but 'legacy-rx' mode is off:

  $ ethtool --show-priv-flags i40e2 | grep legacy-rx
  legacy-rx             : off

This is clearly a driver initialization bug as the headroom should not
be zero in this configuration. Further indication that this is related
to init order: If while xdp_redirect is running, I change RX-ring size
(e.g. 'ethtool -G i40e2 rx 1024') then redirect starts working again.


I will continue to find the offending commit... (to-be-continued)
(p.s. testing on net-next on top of commit d310ec03a34e92).

-- 
Best regards,
  Jesper Dangaard Brouer
  MSc.CS, Principal Kernel Engineer at Red Hat
  LinkedIn: http://www.linkedin.com/in/brouer

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
