Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 143DC4EE9F1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Apr 2022 10:47:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EAD774060D;
	Fri,  1 Apr 2022 08:47:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MIjTo9Dc8iNi; Fri,  1 Apr 2022 08:47:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E2E21408C4;
	Fri,  1 Apr 2022 08:47:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 780221BF35E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 08:47:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 57A60842B1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 08:47:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fc2JQ57l44Pl for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Apr 2022 08:47:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 30496842B2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 08:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1648802858;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=37yAvQTIEV1IvNK0QI/IF+EVq5TLZBtgSkNUfD0vZVo=;
 b=EbY18xH6SNShobEIvKYHtqKe3jnSFCmwYcfxgxNCwYyi5gnSiLX+xpioA3ZzxZqPwz/RiA
 caQ9lQwjvekQ9hk5IB8zriJlVzcyVDcHd2t4O8dgPFVhRlo4wtSpzPpqxFvBUDZ/8VrQnT
 gF5cCRJhtyqQCsfqP4dAAo1du20k57A=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-622-cqP0x8lDMBuv4wQq1Nu4iA-1; Fri, 01 Apr 2022 04:47:33 -0400
X-MC-Unique: cqP0x8lDMBuv4wQq1Nu4iA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B9C36101A52C;
 Fri,  1 Apr 2022 08:47:32 +0000 (UTC)
Received: from ceranb (unknown [10.40.192.123])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E73405E194A;
 Fri,  1 Apr 2022 08:47:30 +0000 (UTC)
Date: Fri, 1 Apr 2022 10:47:30 +0200
From: Ivan Vecera <ivecera@redhat.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>
Message-ID: <20220401104730.44cd443e@ceranb>
In-Reply-To: <CO1PR11MB5089888D13802251F6830A8ED6E19@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20220331105005.2580771-1-ivecera@redhat.com>
 <YkWpNVXYEBo/u3dm@boxer> <YkWp5JJ9Sp6UCTw7@boxer>
 <CAFWUkrTzE87bduD431nu11biHi78XFitUWQfiwcU6_4UPU9FBg@mail.gmail.com>
 <CO1PR11MB5089888D13802251F6830A8ED6E19@CO1PR11MB5089.namprd11.prod.outlook.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix incorrect locking in
 ice_vc_process_vf_msg()
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 mschmidt <mschmidt@redhat.com>, Brett Creeley <brett@pensando.io>,
 open list <linux-kernel@vger.kernel.org>, poros <poros@redhat.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David S.
 Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 31 Mar 2022 19:59:11 +0000
"Keller, Jacob E" <jacob.e.keller@intel.com> wrote:

> > -----Original Message-----
> > From: Brett Creeley <brett@pensando.io>
> > Sent: Thursday, March 31, 2022 9:33 AM
> > To: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>
> > Cc: ivecera <ivecera@redhat.com>; netdev@vger.kernel.org; moderated
> > list:INTEL ETHERNET DRIVERS <intel-wired-lan@lists.osuosl.org>; mschmidt
> > <mschmidt@redhat.com>; open list <linux-kernel@vger.kernel.org>; poros
> > <poros@redhat.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> > <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>; Keller, Jacob E
> > <jacob.e.keller@intel.com>
> > Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix incorrect locking in
> > ice_vc_process_vf_msg()
> > 
> > On Thu, Mar 31, 2022 at 6:17 AM Maciej Fijalkowski
> > <maciej.fijalkowski@intel.com> wrote:  
> > >
> > > On Thu, Mar 31, 2022 at 03:14:32PM +0200, Maciej Fijalkowski wrote:  
> > > > On Thu, Mar 31, 2022 at 12:50:04PM +0200, Ivan Vecera wrote:  
> > > > > Usage of mutex_trylock() in ice_vc_process_vf_msg() is incorrect
> > > > > because message sent from VF is ignored and never processed.
> > > > >
> > > > > Use mutex_lock() instead to fix the issue. It is safe because this  
> > > >
> > > > We need to know what is *the* issue in the first place.
> > > > Could you please provide more context what is being fixed to the readers
> > > > that don't have an access to bugzilla?
> > > >
> > > > Specifically, what is the case that ignoring a particular message when
> > > > mutex is already held is a broken behavior?  
> > >
> > > Uh oh, let's
> > > CC: Brett Creeley <brett@pensando.io>  
> >  
> 
> Thanks for responding, Brett! :)
>  
> > My concern here is that we don't want to handle messages
> > from the context of the "previous" VF configuration if that
> > makes sense.
> >   
> 
> Makes sense. Perhaps we need to do some sort of "clear the existing message queue" when we initiate a reset?

I think this logic is already there... Function ice_reset_vf() (running under cfg_lock) sets default allowlist
during reset (these are VIRTCHNL_OP_GET_VF_RESOURCES, VIRTCHNL_OP_VERSION, VIRTCHNL_OP_RESET_VF).
Function ice_vc_process_vf_msg() currently processed message whether is allowed or not so any spurious messages
there were sent by VF prior reset should be dropped already.

> 
> > It might be best to grab the cfg_lock before doing any
> > message/VF validating in ice_vc_process_vf_msg() to
> > make sure all of the checks are done under the cfg_lock.
> >   
> 
> Yes that seems like it should be done.

Yes, the mutex should be placed prior ice_vc_is_opcode_allowed() call to serialize accesses to allowlist.
Will send v2.

Thanks,
Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
