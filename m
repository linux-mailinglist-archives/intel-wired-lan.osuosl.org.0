Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 882A21F2AF1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jun 2020 02:14:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0333E885C6;
	Tue,  9 Jun 2020 00:14:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1gMzLaW+qNEE; Tue,  9 Jun 2020 00:14:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3873488579;
	Tue,  9 Jun 2020 00:14:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 281061BF349
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jun 2020 00:14:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 23C5486E53
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jun 2020 00:14:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o+W87d4cwJ4M for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Jun 2020 00:14:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8645587847
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jun 2020 00:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591661681;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=HD882eS9OH3S3VV1WViNWe8Js+sPqHEy08aEq1E9ORs=;
 b=e292e6VDfxpnOcKfNWo/X1TNPIIPwQAWNTcVckfrJVIss4/zqOX1L+NTIVxTAgotCHIbJv
 rrOoHagX7Q4hHFJo56yHhY2B/Up9MpKd/Hq8Kyh7lsHWmcHQniJ+sP9LONXeWFuMZWzWty
 wjc3pcfuMqj+xG4zT/MKsh//RlUzj78=
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-49-7Y1shgAQP5i3VMloThQr5w-1; Mon, 08 Jun 2020 20:14:39 -0400
X-MC-Unique: 7Y1shgAQP5i3VMloThQr5w-1
Received: by mail-io1-f72.google.com with SMTP id v14so4829720iob.11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 08 Jun 2020 17:14:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HD882eS9OH3S3VV1WViNWe8Js+sPqHEy08aEq1E9ORs=;
 b=Tjz63hC0khIN1EQr38kp4wYUxe4zJxS696AAagHyNOiDKHzqqWzjuxTOdfBRaTDnV4
 CKxkJLBrNTo8RSAFfF4CodHwOoj31CcZfeL/VIbu8w6xWkwdBI4t/pp9/ywtj0krLfed
 NK2JjNwq20GWITv3/tgv/xH+Efck8YMZyNkw+/cxOMdFRPmkWKLcweiTSZyCU6nFVxr+
 CbRxqis7hleXsYGwpj9H4TRoUaCWeHxEgu+usUm+s3j/nbhppXWaGi2KeWCNTE1fvFaO
 8YMCTm+ViIqM+U/fwg9VUGhtnpk8K6hgqmiJD33uMSE8oCn/hdPOkoSzDMhyiYJWYCfD
 T11Q==
X-Gm-Message-State: AOAM5333zan2sJ5QgZ39j1/ilHGmKT3pYKVBtUYw2s0NHw7D0nf27iOB
 2iVa9Y4ybCSjpIRnT3CPAw0/n6oSJBBv8MbywkqcU6kEMf5sOE0sa1EeLf0SMG+Oc5kH+6FBu0D
 QvULXsIWOGopYbA0YoGJZykaTafN3g+1qEqoiDh+79pZmCw==
X-Received: by 2002:a92:4899:: with SMTP id j25mr25560325ilg.168.1591661679100; 
 Mon, 08 Jun 2020 17:14:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzELESE+K/wYsirvszqaNXPPRRvDprGl6QEl149kIe4qX3GOTtJp+ATld3JvWRLCQNPe8wmFXSgJgJDrnUrPSE=
X-Received: by 2002:a92:4899:: with SMTP id j25mr25560307ilg.168.1591661678726; 
 Mon, 08 Jun 2020 17:14:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200608210058.37352-1-jarod@redhat.com>
 <20200608210058.37352-4-jarod@redhat.com> <20717.1591660112@famine>
In-Reply-To: <20717.1591660112@famine>
From: Jarod Wilson <jarod@redhat.com>
Date: Mon, 8 Jun 2020 20:14:28 -0400
Message-ID: <CAKfmpSfkgC20w3Bp1PCfNJaADU7Hhkk5u9+2cMH+6--b_9cn4Q@mail.gmail.com>
To: Jay Vosburgh <jay.vosburgh@canonical.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/4] bonding: support
 hardware encryption offload to slaves
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
 Herbert Xu <herbert@gondor.apana.org.au>, Netdev <netdev@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Veaceslav Falico <vfalico@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>, Andy Gospodarek <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jun 8, 2020 at 7:48 PM Jay Vosburgh <jay.vosburgh@canonical.com> wrote:
>
> Jarod Wilson <jarod@redhat.com> wrote:
>
> >Currently, this support is limited to active-backup mode, as I'm not sure
> >about the feasilibity of mapping an xfrm_state's offload handle to
> >multiple hardware devices simultaneously, and we rely on being able to
> >pass some hints to both the xfrm and NIC driver about whether or not
> >they're operating on a slave device.
> >
> >I've tested this atop an Intel x520 device (ixgbe) using libreswan in
> >transport mode, succesfully achieving ~4.3Gbps throughput with netperf
> >(more or less identical to throughput on a bare NIC in this system),
> >as well as successful failover and recovery mid-netperf.
> >
> >v2: rebase on latest net-next and wrap with #ifdef CONFIG_XFRM_OFFLOAD
> >v3: add new CONFIG_BOND_XFRM_OFFLOAD option and fix shutdown path
> >
> >CC: Jay Vosburgh <j.vosburgh@gmail.com>
> >CC: Veaceslav Falico <vfalico@gmail.com>
> >CC: Andy Gospodarek <andy@greyhouse.net>
> >CC: "David S. Miller" <davem@davemloft.net>
> >CC: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
> >CC: Jakub Kicinski <kuba@kernel.org>
> >CC: Steffen Klassert <steffen.klassert@secunet.com>
> >CC: Herbert Xu <herbert@gondor.apana.org.au>
> >CC: netdev@vger.kernel.org
> >CC: intel-wired-lan@lists.osuosl.org
> >Signed-off-by: Jarod Wilson <jarod@redhat.com>
> >
> >Signed-off-by: Jarod Wilson <jarod@redhat.com>
> >---
> > drivers/net/Kconfig             |  11 ++++
> > drivers/net/bonding/bond_main.c | 111 +++++++++++++++++++++++++++++++-
> > include/net/bonding.h           |   3 +
> > 3 files changed, 122 insertions(+), 3 deletions(-)
> >
> >diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> >index c7d310ef1c83..938c4dd9bfb9 100644
> >--- a/drivers/net/Kconfig
> >+++ b/drivers/net/Kconfig
> >@@ -56,6 +56,17 @@ config BONDING
> >         To compile this driver as a module, choose M here: the module
> >         will be called bonding.
> >
> >+config BONDING_XFRM_OFFLOAD
> >+      bool "Bonding driver IPSec XFRM cryptography-offload pass-through support"
> >+      depends on BONDING
> >+      depends on XFRM_OFFLOAD
> >+      default y
> >+      select XFRM_ALGO
> >+      ---help---
> >+        Enable support for IPSec offload pass-through in the bonding driver.
> >+        Currently limited to active-backup mode only, and requires slave
> >+        devices that support hardware crypto offload.
> >+
>
>         Why is this a separate Kconfig option?  Is it reasonable to
> expect users to enable XFRM_OFFLOAD but not BONDING_XFRM_OFFLOAD?

I'd originally just wrapped it with XFRM_OFFLOAD, but in an
overabundance of caution, thought maybe gating it behind its own flag
was better. I didn't get any feedback on the initial posting, so I've
been sort of winging it. :)

> >diff --git a/drivers/net/bonding/bond_main.c b/drivers/net/bonding/bond_main.c
> >index a25c65d4af71..01b80cef492a 100644
> >--- a/drivers/net/bonding/bond_main.c
> >+++ b/drivers/net/bonding/bond_main.c
...
> >@@ -4560,6 +4663,8 @@ void bond_setup(struct net_device *bond_dev)
> >                               NETIF_F_HW_VLAN_CTAG_FILTER;
> >
> >       bond_dev->hw_features |= NETIF_F_GSO_ENCAP_ALL | NETIF_F_GSO_UDP_L4;
> >+      if ((BOND_MODE(bond) == BOND_MODE_ACTIVEBACKUP))
> >+              bond_dev->hw_features |= BOND_ENC_FEATURES;
>
>         Why is adding the ESP features to hw_features (here, and added
> to BOND_ENC_FEATURES, above) not behind CONFIG_BONDING_XFRM_OFFLOAD?
>
>         If adding these features makes sense regardless of the
> XFRM_OFFLOAD configuration, then shouldn't this change to feature
> handling be a separate patch?  The feature handling is complex, and is
> worth its own patch so it stands out in the log.

No, that would be an oversight by me. The build bot yelled at me on v1
about builds with XFRM_OFFLOAD not enabled, and I neglected to wrap
that bit too.

I'll do that in the next revision. I'm also fine with dropping the
extra kconfig and just using XFRM_OFFLOAD for all of it, if that's
sufficient.

-- 
Jarod Wilson
jarod@redhat.com

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
