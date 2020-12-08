Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 424DC2D29D9
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Dec 2020 12:39:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EBD53864DA;
	Tue,  8 Dec 2020 11:39:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8MxEjvm7fQSy; Tue,  8 Dec 2020 11:39:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B3D2B8688A;
	Tue,  8 Dec 2020 11:39:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 10A0E1BF834
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 11:39:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 03F15875F2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 11:39:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qlH5Tw6lYMJu for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Dec 2020 11:39:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 11CE8875EE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 11:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607427558;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mztAL0IbDNTerxOKqrjs7RBlEmfpHYSq6RMdJCS9850=;
 b=JGo4LBtGxHY6MV0/pYNelTFzs7Iquegx9CCwkYxTiI97X2V/S0rBqJRZuC2IUUjejZdm0S
 Y5Ft0t3wfKXXUs8IozlKnYmoGXG2zEdkOKdZhRh0t4s1sm+IiWf+4ZWE1bxkvnAClEbybS
 QYc7+c8qbQ/Oflb6osufa92tcFaBlKA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-278-1dU4fq_MOYe02b5FQc8kiQ-1; Tue, 08 Dec 2020 06:39:14 -0500
X-MC-Unique: 1dU4fq_MOYe02b5FQc8kiQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9B5B110054FF;
 Tue,  8 Dec 2020 11:39:12 +0000 (UTC)
Received: from carbon (unknown [10.36.110.55])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3ED335D9DE;
 Tue,  8 Dec 2020 11:39:02 +0000 (UTC)
Date: Tue, 8 Dec 2020 12:39:01 +0100
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
Message-ID: <20201208123901.20e87ee5@carbon>
In-Reply-To: <MW3PR11MB45544E9B9B610CC6553F246B9CCD0@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20201111170453.32693-1-sven.auhagen@voleatech.de>
 <20201111170453.32693-3-sven.auhagen@voleatech.de>
 <DM6PR11MB454615FDFC4E7B71D9B82FA29CF40@DM6PR11MB4546.namprd11.prod.outlook.com>
 <20201201095852.2dc1e8f8@carbon>
 <20201205094213.p64bkcmd3lr4iejl@SvensMacBookAir-2.local>
 <MW3PR11MB45544E9B9B610CC6553F246B9CCD0@MW3PR11MB4554.namprd11.prod.outlook.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Subject: Re: [Intel-wired-lan] [PATCH v4 2/6] igb: take vlan double header
 into account
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
Cc: "nhorman@redhat.com" <nhorman@redhat.com>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, brouer@redhat.com,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "sassmann@redhat.com" <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 8 Dec 2020 10:52:28 +0000
"Penigalapati, Sandeep" <sandeep.penigalapati@intel.com> wrote:

> On Tue, Dec 01, 2020 at 09:58:52AM +0100, Jesper Dangaard Brouer wrote:
> > > On Tue, 1 Dec 2020 08:23:23 +0000
> > > "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com> wrote:
> > >  
> > > > Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>  
> > >
> > > Very happy that you are testing this.
> > >
> > > Have you also tested that samples/bpf/ xdp_redirect_cpu program works?  
> > 
> > Hi Jesper,
> > 
> > I have tested the xdp routing example but it would be good if someone can
> > double check this.
> > 
> Hi Jesper, Sven
> 
> I have tested xdp_redirect_cpu and it is working.

Thanks this is great to hear.

You have tested with large frames right?  As cpumap just creates SKBs
based on xdp_frame, and send them to the normal network stack (on
remote CPU), you can just to a standard TCP-stream throughput test with
iperf or netperf.  That should hopefully blowup if we screwed up the
boundaries of the two packets sharing the same page.  (In principle we
should verify the content of the TCP transfer, so maybe a scp + md5sum
is a better test).

-- 
Best regards,
  Jesper Dangaard Brouer
  MSc.CS, Principal Kernel Engineer at Red Hat
  LinkedIn: http://www.linkedin.com/in/brouer

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
