Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 462AD2ADDCB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Nov 2020 19:07:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C417822C51;
	Tue, 10 Nov 2020 18:07:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id krHx4dM1B+sK; Tue, 10 Nov 2020 18:07:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B9D6222CCE;
	Tue, 10 Nov 2020 18:07:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4E7BF1BF57C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 18:07:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 40EF822C51
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 18:07:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AhH+phDy7Ig1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Nov 2020 18:07:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by silver.osuosl.org (Postfix) with ESMTPS id 983CC20104
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 18:07:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605031646;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=DhGEWOUCw6Y5w7w85ABenFAQ6PkZ6O0n2/ot5sVRJt4=;
 b=QAKaE8eLiOjiJPeFyIPGisaCpvSfgnvUBWk2e70hgvA2E/arOr0yUo+pbFH+xD+Q0w7HXj
 jT4dcy0AMF8ObsiehMTDK44i34a1CrAwW7///FthAhS5LbdgNIHTxWpHJu/HhiRXdI/JhK
 fjskjNTQfjU7sG7prxXwHFLNudOMHp8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-427-IyGqkGDQN26k-Y3d0MYp8w-1; Tue, 10 Nov 2020 13:07:24 -0500
X-MC-Unique: IyGqkGDQN26k-Y3d0MYp8w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CD5051074654;
 Tue, 10 Nov 2020 18:07:22 +0000 (UTC)
Received: from localhost (holly.tpb.lab.eng.brq.redhat.com [10.43.134.11])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5F1B55D9D2;
 Tue, 10 Nov 2020 18:07:21 +0000 (UTC)
Date: Tue, 10 Nov 2020 19:07:19 +0100
From: Miroslav Lichvar <mlichvar@redhat.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20201110180719.GA1559650@localhost>
References: <20201110061019.519589-1-vinicius.gomes@intel.com>
 <20201110061019.519589-4-vinicius.gomes@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201110061019.519589-4-vinicius.gomes@intel.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Subject: Re: [Intel-wired-lan] [PATCH next-queue v2 3/3] igc: Add support
 for PTP getcrosststamp()
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
Cc: bhelgaas@google.com, linux-pci@vger.kernel.org, andre.guedes@intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Nov 09, 2020 at 10:10:19PM -0800, Vinicius Costa Gomes wrote:
> i225 has support for PCIe PTM, which allows us to implement support
> for the PTP_SYS_OFFSET_PRECISE ioctl(), implemented in the driver via
> the getcrosststamp() function.

Would it be possible to provide the PTM measurements with the
PTP_SYS_OFFSET_EXTENDED ioctl instead of PTP_SYS_OFFSET_PRECISE?

As I understand it, PTM is not cross timestamping. It's basically
NTP over PCIe, which provides four timestamps with each "dialog". From
the other constants added to the header file it looks like they could
all be obtained and then they could be converted to the triplets
returned by the EXTENDED ioctl.

The main advantage would be that it would provide applications with
the round trip time, which is important to estimate the maximum error
in the measurement. As your example phc2sys output shows, with the
PRECISE ioctl the delay is 0, which is misleading here.

I suspect the estimate would be valid only when the NIC is connected
directly to the PTM root (PCI root complex). Is it possible to get the
timestamps or delay from PTM-capable switches on the path between CPU
and NIC? Also, how frequent can be the PTM dialogs? Could they be
performed synchronously in the ioctl?

-- 
Miroslav Lichvar

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
