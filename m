Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFC478E7A4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Aug 2023 10:10:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2CFCD408DD;
	Thu, 31 Aug 2023 08:10:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2CFCD408DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693469428;
	bh=h691ADkkT8WC4rDLV6cCSc7hyzzCYC8xTeuRDgH3B7o=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0S8tRS3h1eAL9IFzJl0EX1dSVziv6f7fNQbR8bJzVFK0ujnijCre/iou0E7oaaKBe
	 vvJUVsU5WjhXJTCRCyERWdtiTb8Dr6Mtewk+qAWGHrJwPn2jjl87RYiOjjXzud02JD
	 qfHETiy+vijCzGmKfRD7gDpFsa7ZeTYATHeRwZoUQbEhcFJLHWBzta4p4Hy0lRrXSO
	 l1FkhrhtRrU0ifkuJIerLbMKOhX6BAOOtUuM58ZnMc0SUwHr0I7PK1r8WxJwqpSTwW
	 /maKcdiwfovkXMwEianAuiUie7t1HzXb3nUuiV9dikdu1rA+yjHwtz0pGdY552t2zv
	 vK38ChnvAMzbQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GMEr-XRJzUkI; Thu, 31 Aug 2023 08:10:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 04120417E1;
	Thu, 31 Aug 2023 08:10:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 04120417E1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7D6C11BF3F4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 08:10:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 541F841E4C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 08:10:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 541F841E4C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fOaHktoxSjci for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Aug 2023 08:10:16 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A8D8F41DC8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 08:10:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A8D8F41DC8
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-621-piGmHIuvOMaCGdCg56_jtw-1; Thu, 31 Aug 2023 04:10:12 -0400
X-MC-Unique: piGmHIuvOMaCGdCg56_jtw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 561FE85CCE0;
 Thu, 31 Aug 2023 08:10:12 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.39.192.15])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 33AC040C2063;
 Thu, 31 Aug 2023 08:10:12 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 2D4F9A80795; Thu, 31 Aug 2023 10:10:11 +0200 (CEST)
Date: Thu, 31 Aug 2023 10:10:11 +0200
From: Corinna Vinschen <vinschen@redhat.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <ZPBK46hxIJCmuKtr@calimero.vinschen.de>
Mail-Followup-To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org
References: <20230824091603.3188249-1-vinschen@redhat.com>
 <ZOdWAdHNJzDs5ss7@calimero.vinschen.de>
 <c9bc7c2a-622f-5d82-69e8-2d24ba3875fa@intel.com>
MIME-Version: 1.0
In-Reply-To: <c9bc7c2a-622f-5d82-69e8-2d24ba3875fa@intel.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1693469415;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=GzZfhb+ViMe2Y+aVjsYJ77vB5hx7y/isbTLoHj1r+90=;
 b=DwMZIjUsXQP6Czm7V9zdVfZozafcb1LEjMRjdyflD+UHu6UeP+cZq5T08QJgZgTrKMzgKp
 55tpej+UxVFpRwoXdU9YaJPbbUSvQ6B5uftVu+MhtjTQ8GEkyus4q2JMAlVfiCL4CuZjA1
 hqSqJTd0K6k5O+MwTPLOwjkeOt72hI4=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=DwMZIjUs
Subject: Re: [Intel-wired-lan] [PATCH net] igb: clean up in all error paths
 when enabling SR-IOV
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
Cc: intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Aug 29 16:09, Tony Nguyen wrote:
> On 8/24/2023 6:07 AM, Corinna Vinschen wrote:
> > Question to the Intel folks:
> > 
> > On Aug 24 11:16, Corinna Vinschen wrote:
> > > After commit 50f303496d92 ("igb: Enable SR-IOV after reinit"), removing
> > > the igb module could hang or crash (depending on the machine) when the
> > > module has been loaded with the max_vfs parameter set to some value != 0.
> > > 
> > > In case of one test machine with a dual port 82580, this hang occured:
> > > [...]
> > > The reproducer was a simple script:
> > > 
> > >    #!/bin/sh
> > >    for i in `seq 1 5`; do
> > >      modprobe -rv igb
> > >      modprobe -v igb max_vfs=1
> > >      sleep 1
> > >      modprobe -rv igb
> > >    done
> > > 
> > > It turned out that this could only be reproduce on 82580 (quad and
> > > dual-port), but not on 82576, i350 and i210.  Further debugging showed
> > > that igb_enable_sriov()'s call to pci_enable_sriov() is failing, because
> > > dev->is_physfn is 0 on 82580.
> > 
> > Along these lines, isn't the first and foremost bug that igb_enable_sriov()
> > has been called for this NIC at all?  In terms of patches, shouldn't the
> > guard expression in igb_probe_vfs()
> > 
> >          /* Virtualization features not supported on i210 family. */
> > 	if ((hw->mac.type == e1000_i210) || (hw->mac.type == e1000_i211))
> > 		return;
> > 
> > get changed to:
> > 
> >          /* Virtualization features not supported on i210 and 82580 family. */
> > 	if ((hw->mac.type == e1000_i210) || (hw->mac.type == e1000_i211) ||
> > 	    (hw->mac.type == e1000_82580))
> > 		return;
> 
> Hi Corinna,
> 
> Adding 82580 to this seems like a good change; did you want to submit a
> patch to do this?

Hi Tony,

sure, I just sent the patch.


Thanks,
Corinna

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
