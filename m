Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 885EC50C918
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Apr 2022 12:15:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 13F1040332;
	Sat, 23 Apr 2022 10:15:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ptriHjuxPy_a; Sat, 23 Apr 2022 10:15:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B942740256;
	Sat, 23 Apr 2022 10:15:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C95851BF84C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Apr 2022 10:15:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B5F8D83E65
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Apr 2022 10:15:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PUgQZCqY5ryn for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Apr 2022 10:15:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 993E383380
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Apr 2022 10:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1650708932;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Nnu/RwyQm3ejKaQwoN4NCJcZ0nanUujxwSLD2x1jY2o=;
 b=M6qNGuq02Y6VfAo9DjBU1Snjr22UBdq69XxuVJmMkwvkZh9+t+MyUgzfroYY7U+dzwktXp
 gtSwbC1htWsIInuszX+pA+VFi/KHI5PCe00NGYtm+qaatYDivJIB5KtAy9aaFdJDMeOFnZ
 PQVbihNTiGE+BmIsfafEllytCxgb+1M=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-674-pshl6yfwO1e5w0rDgnjiQA-1; Sat, 23 Apr 2022 06:15:31 -0400
X-MC-Unique: pshl6yfwO1e5w0rDgnjiQA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6AFAF380670C;
 Sat, 23 Apr 2022 10:15:30 +0000 (UTC)
Received: from ceranb (unknown [10.39.192.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 27402C28102;
 Sat, 23 Apr 2022 10:15:28 +0000 (UTC)
Date: Sat, 23 Apr 2022 12:15:27 +0200
From: Ivan Vecera <ivecera@redhat.com>
To: "Ertman, David M" <david.m.ertman@intel.com>
Message-ID: <20220423121527.79fa5efb@ceranb>
In-Reply-To: <MW5PR11MB58110D02BF761C889B29CBC7DDF79@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20220421060906.1902576-1-ivecera@redhat.com>
 <MW5PR11MB581100DBD307763A92012BEADDF79@MW5PR11MB5811.namprd11.prod.outlook.com>
 <MW5PR11MB58110D02BF761C889B29CBC7DDF79@MW5PR11MB5811.namprd11.prod.outlook.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Subject: Re: [Intel-wired-lan] [PATCH net v3] ice: Fix race during aux
 device (un)plugging
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
Cc: Leon Romanovsky <leon@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 mschmidt <mschmidt@redhat.com>, open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 22 Apr 2022 20:55:10 +0000
"Ertman, David M" <david.m.ertman@intel.com> wrote:

> > -----Original Message-----
> > From: Ertman, David M
> > Sent: Friday, April 22, 2022 10:42 AM
> > To: Ivan Vecera <ivecera@redhat.com>; netdev@vger.kernel.org
> > Cc: poros <poros@redhat.com>; mschmidt <mschmidt@redhat.com>; Leon
> > Romanovsky <leon@kernel.org>; Brandeburg, Jesse
> > <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>;
> > Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>;
> > Saleem, Shiraz <shiraz.saleem@intel.com>; moderated list:INTEL ETHERNET
> > DRIVERS <intel-wired-lan@lists.osuosl.org>; open list <linux-  
> > kernel@vger.kernel.org>  
> > Subject: RE: [PATCH net v3] ice: Fix race during aux device (un)plugging
> >   
> > > -----Original Message-----
> > > From: Ivan Vecera <ivecera@redhat.com>
> > > Sent: Wednesday, April 20, 2022 11:09 PM
> > > To: netdev@vger.kernel.org
> > > Cc: poros <poros@redhat.com>; mschmidt <mschmidt@redhat.com>;  
> > Leon  
> > > Romanovsky <leon@kernel.org>; Brandeburg, Jesse
> > > <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> > > <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>;
> > > Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>;
> > > Ertman, David M <david.m.ertman@intel.com>; Saleem, Shiraz
> > > <shiraz.saleem@intel.com>; moderated list:INTEL ETHERNET DRIVERS  
> > <intel-  
> > > wired-lan@lists.osuosl.org>; open list <linux-kernel@vger.kernel.org>
> > > Subject: [PATCH net v3] ice: Fix race during aux device (un)plugging
> > >
> > > Function ice_plug_aux_dev() assigns pf->adev field too early prior
> > > aux device initialization and on other side ice_unplug_aux_dev()
> > > starts aux device deinit and at the end assigns NULL to pf->adev.
> > > This is wrong because pf->adev should always be non-NULL only when
> > > aux device is fully initialized and ready. This wrong order causes
> > > a crash when ice_send_event_to_aux() call occurs because that function
> > > depends on non-NULL value of pf->adev and does not assume that
> > > aux device is half-initialized or half-destroyed.
> > > After order correction the race window is tiny but it is still there,
> > > as Leon mentioned and manipulation with pf->adev needs to be protected
> > > by mutex.
> > >
> > > Fix (un-)plugging functions so pf->adev field is set after aux device
> > > init and prior aux device destroy and protect pf->adev assignment by
> > > new mutex. This mutex is also held during ice_send_event_to_aux()
> > > call to ensure that aux device is valid during that call. Device
> > > lock used ice_send_event_to_aux() to avoid its concurrent run can
> > > be removed as this is secured by that mutex.
> > >
> > > Reproducer:
> > > cycle=1
> > > while :;do
> > >         echo "#### Cycle: $cycle"
> > >
> > >         ip link set ens7f0 mtu 9000
> > >         ip link add bond0 type bond mode 1 miimon 100
> > >         ip link set bond0 up
> > >         ifenslave bond0 ens7f0
> > >         ip link set bond0 mtu 9000
> > >         ethtool -L ens7f0 combined 1
> > >         ip link del bond0
> > >         ip link set ens7f0 mtu 1500
> > >         sleep 1
> > >
> > >         let cycle++
> > > done
> > >
> > > In short when the device is added/removed to/from bond the aux device
> > > is unplugged/plugged. When MTU of the device is changed an event is
> > > sent to aux device asynchronously. This can race with (un)plugging
> > > operation and because pf->adev is set too early (plug) or too late
> > > (unplug) the function ice_send_event_to_aux() can touch uninitialized
> > > or destroyed fields. In the case of crash below pf->adev->dev.mutex.
> > >
> > > Crash:
> > > [   53.372066] bond0: (slave ens7f0): making interface the new active one
> > > [   53.378622] bond0: (slave ens7f0): Enslaving as an active interface with an  
> > u  
> > > p link
> > > [   53.386294] IPv6: ADDRCONF(NETDEV_CHANGE): bond0: link becomes
> > > ready
> > > [   53.549104] bond0: (slave ens7f1): Enslaving as a backup interface with an
> > > up
> > >  link
> > > [   54.118906] ice 0000:ca:00.0 ens7f0: Number of in use tx queues changed
> > > inval
> > > idating tc mappings. Priority traffic classification disabled!
> > > [   54.233374] ice 0000:ca:00.1 ens7f1: Number of in use tx queues changed
> > > inval
> > > idating tc mappings. Priority traffic classification disabled!
> > > [   54.248204] bond0: (slave ens7f0): Releasing backup interface
> > > [   54.253955] bond0: (slave ens7f1): making interface the new active one
> > > [   54.274875] bond0: (slave ens7f1): Releasing backup interface
> > > [   54.289153] bond0 (unregistering): Released all slaves
> > > [   55.383179] MII link monitoring set to 100 ms
> > > [   55.398696] bond0: (slave ens7f0): making interface the new active one
> > > [   55.405241] BUG: kernel NULL pointer dereference, address:
> > > 0000000000000080
> > > [   55.405289] bond0: (slave ens7f0): Enslaving as an active interface with an  
> > u  
> > > p link
> > > [   55.412198] #PF: supervisor write access in kernel mode
> > > [   55.412200] #PF: error_code(0x0002) - not-present page
> > > [   55.412201] PGD 25d2ad067 P4D 0
> > > [   55.412204] Oops: 0002 [#1] PREEMPT SMP NOPTI
> > > [   55.412207] CPU: 0 PID: 403 Comm: kworker/0:2 Kdump: loaded Tainted:  
> > G  
> > > S
> > >            5.17.0-13579-g57f2d6540f03 #1
> > > [   55.429094] bond0: (slave ens7f1): Enslaving as a backup interface with an
> > > up
> > >  link
> > > [   55.430224] Hardware name: Dell Inc. PowerEdge R750/06V45N, BIOS  
> > 1.4.4  
> > > 10/07/
> > > 2021
> > > [   55.430226] Workqueue: ice ice_service_task [ice]
> > > [   55.468169] RIP: 0010:mutex_unlock+0x10/0x20
> > > [   55.472439] Code: 0f b1 13 74 96 eb e0 4c 89 ee eb d8 e8 79 54 ff ff 66 0f 1f  
> > 84  
> > > 00 00 00 00 00 0f 1f 44 00 00 65 48 8b 04 25 40 ef 01 00 31 d2 <f0> 48 0f b1 17  
> > 75  
> > > 01 c3 e9 e3 fe ff ff 0f 1f 00 0f 1f 44 00 00 48
> > > [   55.491186] RSP: 0018:ff4454230d7d7e28 EFLAGS: 00010246
> > > [   55.496413] RAX: ff1a79b208b08000 RBX: ff1a79b2182e8880 RCX:
> > > 0000000000000001
> > > [   55.503545] RDX: 0000000000000000 RSI: ff4454230d7d7db0 RDI:
> > > 0000000000000080
> > > [   55.510678] RBP: ff1a79d1c7e48b68 R08: ff4454230d7d7db0 R09:
> > > 0000000000000041
> > > [   55.517812] R10: 00000000000000a5 R11: 00000000000006e6 R12:
> > > ff1a79d1c7e48bc0
> > > [   55.524945] R13: 0000000000000000 R14: ff1a79d0ffc305c0 R15:
> > > 0000000000000000
> > > [   55.532076] FS:  0000000000000000(0000) GS:ff1a79d0ffc00000(0000)
> > > knlGS:0000000000000000
> > > [   55.540163] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > > [   55.545908] CR2: 0000000000000080 CR3: 00000003487ae003 CR4:
> > > 0000000000771ef0
> > > [   55.553041] DR0: 0000000000000000 DR1: 0000000000000000 DR2:
> > > 0000000000000000
> > > [   55.560173] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7:
> > > 0000000000000400
> > > [   55.567305] PKRU: 55555554
> > > [   55.570018] Call Trace:
> > > [   55.572474]  <TASK>
> > > [   55.574579]  ice_service_task+0xaab/0xef0 [ice]
> > > [   55.579130]  process_one_work+0x1c5/0x390
> > > [   55.583141]  ? process_one_work+0x390/0x390
> > > [   55.587326]  worker_thread+0x30/0x360
> > > [   55.590994]  ? process_one_work+0x390/0x390
> > > [   55.595180]  kthread+0xe6/0x110
> > > [   55.598325]  ? kthread_complete_and_exit+0x20/0x20
> > > [   55.603116]  ret_from_fork+0x1f/0x30
> > > [   55.606698]  </TASK>
> > >
> > > Fixes: f9f5301e7e2d ("ice: Register auxiliary device to provide RDMA")
> > > Cc: Leon Romanovsky <leon@kernel.org>
> > > Signed-off-by: Ivan Vecera <ivecera@redhat.com>  
> > 
> > Sorry for previous mis-reply - hit the wrong button.
> > 
> > LGTM
> > Acked-by: Dave Ertman <david.m.ertman@intel.com>  
> 
> After thinking about this for a bit longer, I did think of one issue.
> 
> With the removal of the device_lock in ice_send_event_to_aux(), there is no guarantee that the
> function pointer will not become NULL by the auxiliary_driver unloading.  It is a very small window,
> but it could happen.
> 
> I think the device_lock should probably stay also.
> 
> DaveE
> 

The function pointer can't become NULL but adev->dev.driver can. So yeah, you are right the device lock
needs to be held as well.
Will submit v4.

Thx,
Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
