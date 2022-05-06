Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D6451D193
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 May 2022 08:45:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4E034415F1;
	Fri,  6 May 2022 06:45:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q1_m3VGf-4M5; Fri,  6 May 2022 06:45:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 16E4B415A4;
	Fri,  6 May 2022 06:45:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B3F0D1BF47E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 May 2022 06:44:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9D1C260806
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 May 2022 06:44:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=amazon.de
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AU-KsOCaDWSo for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 May 2022 06:44:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from smtp-fw-6001.amazon.com (smtp-fw-6001.amazon.com [52.95.48.154])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 452E060A6B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 May 2022 06:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.de; i=@amazon.de; q=dns/txt; s=amazon201209;
 t=1651819498; x=1683355498;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FXnVciHi1BeC9OQGqN0ZXnjBw90BfiK1awUcDweGloY=;
 b=lduFOGkpM7z8KZ02JWVjZPKbeY6Yv+jlqkAUzG8UXSpJI0HhFWcIft8J
 6Uk2SrLROLCGdTx8wLef01Xikfy8ubJmHIcbki9XgXps1YnJRf35a145X
 LL56/KSsXoqD+zVpcyaDVXteWZWuoAdmuEH4dKuQr6JsFF/xOH564dGlH 0=;
X-IronPort-AV: E=Sophos;i="5.91,203,1647302400"; d="scan'208";a="200507439"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-pdx-2b-1f9d5b26.us-west-2.amazon.com) ([10.43.8.6])
 by smtp-border-fw-6001.iad6.amazon.com with ESMTP; 06 May 2022 06:44:46 +0000
Received: from EX13D08EUC002.ant.amazon.com
 (pdx1-ws-svc-p6-lb9-vlan3.pdx.amazon.com [10.236.137.198])
 by email-inbound-relay-pdx-2b-1f9d5b26.us-west-2.amazon.com (Postfix) with
 ESMTPS id 5E8764181F; Fri,  6 May 2022 06:44:44 +0000 (UTC)
Received: from EX13MTAUWA001.ant.amazon.com (10.43.160.58) by
 EX13D08EUC002.ant.amazon.com (10.43.164.124) with Microsoft SMTP Server (TLS)
 id 15.0.1497.32; Fri, 6 May 2022 06:44:42 +0000
Received: from dev-dsk-mheyne-1b-c1524648.eu-west-1.amazon.com (10.15.60.66)
 by mail-relay.amazon.com (10.43.160.118) with Microsoft SMTP Server id
 15.0.1497.32 via Frontend Transport; Fri, 6 May 2022 06:44:41 +0000
Received: by dev-dsk-mheyne-1b-c1524648.eu-west-1.amazon.com (Postfix,
 from userid 5466572)
 id 3198D4111F; Fri,  6 May 2022 06:44:40 +0000 (UTC)
From: Maximilian Heyne <mheyne@amazon.de>
To: Jakub Kicinski <kuba@kernel.org>
Date: Fri, 6 May 2022 06:44:40 +0000
Message-ID: <20220506064440.57940-1-mheyne@amazon.de>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220504201632.2a41a3b9@kernel.org>
References: 
MIME-Version: 1.0
Precedence: Bulk
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] drivers,
 ixgbe: show VF statistics
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Maximilian Heyne <mheyne@amazon.de>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2022-05-04T20:16:32-07:00   Jakub Kicinski <kuba@kernel.org> wrote:

> On Tue, 3 May 2022 15:00:17 +0000 Maximilian Heyne wrote:
> > +		for (i = 0; i < adapter->num_vfs; i++) {
> > +			ethtool_sprintf(&p, "VF %u Rx Packets", i);
> > +			ethtool_sprintf(&p, "VF %u Rx Bytes", i);
> > +			ethtool_sprintf(&p, "VF %u Tx Packets", i);
> > +			ethtool_sprintf(&p, "VF %u Tx Bytes", i);
> > +			ethtool_sprintf(&p, "VF %u MC Packets", i);
> > +		}
> 
> Please drop the ethtool stats. We've been trying to avoid duplicating
> the same stats in ethtool and iproute2 for a while now.
> 

I can see the point that standard metrics should only be reported via the
iproute2 interface. However, in this special case this patch was intended to
converge the out-of-tree driver with the in-tree version. These missing stats
were breaking our userspace. If we now switch solely to iproute2 based
statistics both driver versions would diverge even more. So depending on where a
user gets the ixgbe driver from, they have to work-around.

I can change the patch as requested, but it will contradict the inital
intention. At least Intel should then port this change to the external driver as
well. Let's get a statement from them.



Amazon Development Center Germany GmbH
Krausenstr. 38
10117 Berlin
Geschaeftsfuehrung: Christian Schlaeger, Jonathan Weiss
Eingetragen am Amtsgericht Charlottenburg unter HRB 149173 B
Sitz: Berlin
Ust-ID: DE 289 237 879



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
