Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE4436072B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Apr 2021 12:32:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 65CD3402A2;
	Thu, 15 Apr 2021 10:32:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dc2YINUBN8Hh; Thu, 15 Apr 2021 10:32:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4B1A44012B;
	Thu, 15 Apr 2021 10:32:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3025B1BF333
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 10:32:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 29D5740FAC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 10:32:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BsMNKyMFdswR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Apr 2021 10:32:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D56B040FA7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 10:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1618482723;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rxu5W4NqttayWiJx0YLwC8tZ6Q9P2DOL2R7jZQALhDQ=;
 b=FpKu7fyyMZqeAOdvSIeOXSSiq7quUXVxhxZtx+AK8o1iobwFApq6Bj566EALsAb3Hkv1CV
 tT7RYXRCXfY3X0nEQc1xjh1eKfHB7Pq7R0n1y9B8CEhwhnXFNmuWdhdderTBg++U6mhUNg
 coEkGHcUTKDFwyJdNDIloCY1noXPt4Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-106-cDtOEI6tOpOGHIEIEUvbXw-1; Thu, 15 Apr 2021 06:31:59 -0400
X-MC-Unique: cDtOEI6tOpOGHIEIEUvbXw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 95957107ACCD;
 Thu, 15 Apr 2021 10:31:56 +0000 (UTC)
Received: from carbon (unknown [10.36.110.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 63BF42B4A0;
 Thu, 15 Apr 2021 10:31:46 +0000 (UTC)
Date: Thu, 15 Apr 2021 12:31:45 +0200
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20210415123145.56af01ca@carbon>
In-Reply-To: <20210414190652.00006680@intel.com>
References: <20210413025011.1251-1-kerneljasonxing@gmail.com>
 <20210414023428.10121-1-kerneljasonxing@gmail.com>
 <20210414190652.00006680@intel.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Subject: Re: [Intel-wired-lan] [PATCH net v3] i40e: fix the panic when
 running bpf in xdpdrv mode
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
Cc: songliubraving@fb.com, kafai@fb.com, daniel@iogearbox.net,
 kerneljasonxing@gmail.com, Jason Xing <xingwanli@kuaishou.com>, yhs@fb.com,
 Shujin Li <lishujin@kuaishou.com>, ast@kernel.org, andrii@kernel.org,
 netdev@vger.kernel.org, brouer@redhat.com, kpsingh@kernel.org, kuba@kernel.org,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org, davem@davemloft.net,
 linux-kernel@vger.kernel.org, hawk@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 14 Apr 2021 19:06:52 -0700
Jesse Brandeburg <jesse.brandeburg@intel.com> wrote:

> kerneljasonxing@gmail.com wrote:
> 
> > From: Jason Xing <xingwanli@kuaishou.com>
> > 
> > Fix this panic by adding more rules to calculate the value of @rss_size_max
> > which could be used in allocating the queues when bpf is loaded, which,
> > however, could cause the failure and then trigger the NULL pointer of
> > vsi->rx_rings. Prio to this fix, the machine doesn't care about how many
> > cpus are online and then allocates 256 queues on the machine with 32 cpus
> > online actually.
> > 
> > Once the load of bpf begins, the log will go like this "failed to get
> > tracking for 256 queues for VSI 0 err -12" and this "setup of MAIN VSI
> > failed".
> > 
> > Thus, I attach the key information of the crash-log here.
> > 
> > BUG: unable to handle kernel NULL pointer dereference at
> > 0000000000000000
> > RIP: 0010:i40e_xdp+0xdd/0x1b0 [i40e]
> > Call Trace:
> > [2160294.717292]  ? i40e_reconfig_rss_queues+0x170/0x170 [i40e]
> > [2160294.717666]  dev_xdp_install+0x4f/0x70
> > [2160294.718036]  dev_change_xdp_fd+0x11f/0x230
> > [2160294.718380]  ? dev_disable_lro+0xe0/0xe0
> > [2160294.718705]  do_setlink+0xac7/0xe70
> > [2160294.719035]  ? __nla_parse+0xed/0x120
> > [2160294.719365]  rtnl_newlink+0x73b/0x860
> > 
> > Fixes: 41c445ff0f48 ("i40e: main driver core")
> > Co-developed-by: Shujin Li <lishujin@kuaishou.com>
> > Signed-off-by: Shujin Li <lishujin@kuaishou.com>
> > Signed-off-by: Jason Xing <xingwanli@kuaishou.com>  
> 
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> @Jakub/@DaveM - feel free to apply this directly.

Acked-by: Jesper Dangaard Brouer <brouer@redhat.com>

The crash/bug happens in this code:

 static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
			  struct netlink_ext_ack *extack)
 {
 [...]
	for (i = 0; i < vsi->num_queue_pairs; i++)
		WRITE_ONCE(vsi->rx_rings[i]->xdp_prog, vsi->xdp_prog);


And this is a side effect of i40e_setup_pf_switch() failing with "setup
of MAIN VSI failed".

LGTM
-- 
Best regards,
  Jesper Dangaard Brouer
  MSc.CS, Principal Kernel Engineer at Red Hat
  LinkedIn: http://www.linkedin.com/in/brouer

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
