Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F96A9702A5
	for <lists+intel-wired-lan@lfdr.de>; Sat,  7 Sep 2024 16:13:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2F844067D;
	Sat,  7 Sep 2024 14:13:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XJMIpLwSyMC0; Sat,  7 Sep 2024 14:13:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C776A40604
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725718421;
	bh=WVaGamJVODQB4gQDo+vHsqlA9m11CPc2XJWute1wpGM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ngW4ZCMsBFXG+AI3oC6qeEpZBwsixF31ftV4jAwcYUeuh4loJXzfwRe8j1zjBDeVu
	 rpfqkgaOEnK9OECLhAfNq6aKEp7juDMHfC/L6+n32VEHt66qAl6pozvEbKMKsslX+a
	 yNc+cTBYQE/B3+MLaTIA4j+oYmffLj4fT8GJ1kIJq5IwwiO4s+8y3b9dAcDm9JjUZi
	 rDkdWjb30qKbEvZHc66kQyTD3whg5Wbca0OaM38WfdH0LVMOl1gKAalpDc5XKL8DPe
	 hay6xCaznZBjU684Rpmx/ZjbGeB880ponqK+KiY49KJ7Cxoq5FHjKF9gxtWu987kjv
	 ZRVXX/Af6rmug==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C776A40604;
	Sat,  7 Sep 2024 14:13:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7A87A1BF354
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Sep 2024 14:13:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 73C2860609
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Sep 2024 14:13:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T4xb4C46EQf6 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Sep 2024 14:13:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=gregkh@linuxfoundation.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 60F25605DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 60F25605DB
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 60F25605DB
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Sep 2024 14:13:38 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 78FA25C3A73;
 Sat,  7 Sep 2024 14:13:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D202DC4CEC2;
 Sat,  7 Sep 2024 14:13:35 +0000 (UTC)
Date: Sat, 7 Sep 2024 16:13:28 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Markus Elfring <Markus.Elfring@web.de>
Message-ID: <2024090715-grief-uneasily-4aa6@gregkh>
References: <SY8P300MB0460D0263B2105307C444520C0932@SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM>
 <99a2d643-9004-41c8-8585-6c5c86fab599@web.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <99a2d643-9004-41c8-8585-6c5c86fab599@web.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1725718416;
 bh=qko2OkevnRrLYu4Aceoty+wFI+V0BJzREcrgVKbYvzA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ep1ZulgPBOi90upuj78yyY44kQrOiGBIvQGRExVuiIpavifk9h4CW4VN6a+VXbG5D
 XFlIaz9pafb+t1TlK2U8d0SDtd8NPm8XjZfHkMd0odL3HgDObmFSJzuBwZyibhCvJy
 vUe0ZeEynzzgAOETq8XSy6JYkwI2xaWpje83NRl0=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linuxfoundation.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org
 header.a=rsa-sha256 header.s=korg header.b=ep1ZulgP
Subject: Re: [Intel-wired-lan] [PATCH v2] ice: Fix improper handling of
 refcount in ice_sriov_set_msix_vec_count()
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, stable@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, Gui-Dong Han <hanguidong02@outlook.com>,
 Jia-Ju Bai <baijiaju1990@gmail.com>, intel-wired-lan@lists.osuosl.org,
 Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Sep 07, 2024 at 02:40:10PM +0200, Markus Elfring wrote:
> …
> > +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> > @@ -1096,8 +1096,10 @@ int ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count)
> >  		return -ENOENT;
> >
> >  	vsi = ice_get_vf_vsi(vf);
> > -	if (!vsi)
> > +	if (!vsi) {
> > +		ice_put_vf(vf);
> >  		return -ENOENT;
> > +	}
> >
> >  	prev_msix = vf->num_msix;
> >  	prev_queues = vf->num_vf_qs;
> > @@ -1142,8 +1144,10 @@ int ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count)
> >  	vf->num_msix = prev_msix;
> >  	vf->num_vf_qs = prev_queues;
> >  	vf->first_vector_idx = ice_sriov_get_irqs(pf, vf->num_msix);
> > -	if (vf->first_vector_idx < 0)
> > +	if (vf->first_vector_idx < 0) {
> > +		ice_put_vf(vf);
> >  		return -EINVAL;
> > +	}
> >
> >  	if (needs_rebuild) {
> >  		ice_vf_reconfig_vsi(vf);
> 
> Would you like to collaborate with any goto chains according to
> the desired completion of exception handling?
> 
> Regards,
> Markus
> 


Hi,

This is the semi-friendly patch-bot of Greg Kroah-Hartman.

Markus, you seem to have sent a nonsensical or otherwise pointless
review comment to a patch submission on a Linux kernel developer mailing
list.  I strongly suggest that you not do this anymore.  Please do not
bother developers who are actively working to produce patches and
features with comments that, in the end, are a waste of time.

Patch submitter, please ignore Markus's suggestion; you do not need to
follow it at all.  The person/bot/AI that sent it is being ignored by
almost all Linux kernel maintainers for having a persistent pattern of
behavior of producing distracting and pointless commentary, and
inability to adapt to feedback.  Please feel free to also ignore emails
from them.

thanks,

greg k-h's patch email bot
