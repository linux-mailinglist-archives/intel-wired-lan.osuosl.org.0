Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 848C54E57F5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Mar 2022 18:56:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E98D140C2B;
	Wed, 23 Mar 2022 17:56:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JNat8dhAqbdh; Wed, 23 Mar 2022 17:56:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8F2154016D;
	Wed, 23 Mar 2022 17:56:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 03FEA1BF4DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 17:54:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F18D660AAA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 17:54:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EEeZYyTLipYx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Mar 2022 17:54:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4BA5760A8B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 17:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1648058073;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Xxzl2ScdvkeIjKfMrcClzUCpHFPprrj4UNr8e+rbG78=;
 b=Ju+OoXlF0YS/Vq0+hkUjWJ0bkR6xZYFD4FZYr2FGN03gfoq2T0g0KlWakJzKXbJPsKf4lk
 yWpU9LrQj4tQNgUVX664Cppy3Crd8RR2WCRPPVkdrTmUT8Xn1eW5vF1EGkUm5SsnwVf/Zz
 pzoSvQiPveU52LSRMT2zKYIPVNYFEeE=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-640-OQyvMCi6MOmN6bRPVb4Nog-1; Wed, 23 Mar 2022 13:54:30 -0400
X-MC-Unique: OQyvMCi6MOmN6bRPVb4Nog-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7B17828EC116;
 Wed, 23 Mar 2022 17:54:29 +0000 (UTC)
Received: from ceranb (unknown [10.40.192.65])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7BCD64B6129;
 Wed, 23 Mar 2022 17:54:27 +0000 (UTC)
Date: Wed, 23 Mar 2022 18:54:26 +0100
From: Ivan Vecera <ivecera@redhat.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20220323185426.33c66892@ceranb>
In-Reply-To: <45b155ff-8e26-fa96-f89e-6a561de01abb@linux.intel.com>
References: <20220322142554.3253428-1-ivecera@redhat.com>
 <45b155ff-8e26-fa96-f89e-6a561de01abb@linux.intel.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
X-Mailman-Approved-At: Wed, 23 Mar 2022 17:55:58 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Clear default forwarding VSI
 during VSI release
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
Cc: "moderated list:INTEL ETHERNET DRIVERS\"
 <intel-wired-lan@lists.osuosl.org>,
 open list  <linux-kernel@vger.kernel.org>"@osuosl.org, netdev@vger.kernel.org,
 mschmidt@redhat.com, Brett Creeley <brett.creeley@intel.com>, poros@redhat.com,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 23 Mar 2022 18:39:11 +0100
Marcin Szycik <marcin.szycik@linux.intel.com> wrote:

> On 22-Mar-22 15:25, Ivan Vecera wrote:
> > VSI is set as default forwarding one when promisc mode is set for
> > PF interface, when PF is switched to switchdev mode or when VF
> > driver asks to enable allmulticast or promisc mode for the VF
> > interface (when vf-true-promisc-support priv flag is off).
> > The third case is buggy because in that case VSI associated with
> > VF remains as default one after VF removal.
> > 
> > Reproducer:
> > 1. Create VF
> >    echo 1 > sys/class/net/ens7f0/device/sriov_numvfs
> > 2. Enable allmulticast or promisc mode on VF
> >    ip link set ens7f0v0 allmulticast on
> >    ip link set ens7f0v0 promisc on
> > 3. Delete VF
> >    echo 0 > sys/class/net/ens7f0/device/sriov_numvfs
> > 4. Try to enable promisc mode on PF
> >    ip link set ens7f0 promisc on
> > 
> > Although it looks that promisc mode on PF is enabled the opposite
> > is true because ice_vsi_sync_fltr() responsible for IFF_PROMISC
> > handling first checks if any other VSI is set as default forwarding
> > one and if so the function does not do anything. At this point
> > it is not possible to enable promisc mode on PF without re-probe
> > device.
> > 
> > To resolve the issue this patch clear default forwarding VSI
> > during ice_vsi_release() when the VSI to be released is the default
> > one.
> > 
> > Fixes: 01b5e89aab49 ("ice: Add VF promiscuous support")
> > Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_lib.c | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> > index 53256aca27c7..20d755822d43 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> > @@ -3147,6 +3147,8 @@ int ice_vsi_release(struct ice_vsi *vsi)
> >  		}
> >  	}
> >  
> > +	if (ice_is_vsi_dflt_vsi(pf->first_sw, vsi))
> > +		ice_clear_dflt_vsi(pf->first_sw);  
> 
> It would probably be good to check `ice_clear_dflt_vsi` return code.

Check and report potential warning when error occurs? because we are in ice_vsi_release() so
any rollback does not make sense.

Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
