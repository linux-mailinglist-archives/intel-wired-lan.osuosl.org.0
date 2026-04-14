Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +B7YBlz23WlolgkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 10:10:04 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9E23F6F7A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 10:09:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 80FD3405DD;
	Tue, 14 Apr 2026 08:01:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WFVU-gmx5HA8; Tue, 14 Apr 2026 08:01:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 94C7C40604
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776153672;
	bh=sFHWKsoMKxTHM/ceTsagg24FwpJSaNkmOaFHpvuQ4DE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AlYjVW/1kYEmC/x2vkC5ffJzX48n3TWfTncwhPlUOkWgO2WSQL5A0S5KgDqsg6CIl
	 lh26rBGVi/E62PlTvD7tf7fs+UUF3K53T+L9B/cRoJvGsaplupU4IUnnqCY0pVCfUM
	 6X9Y+YMYNCUCxy6k04NqTWVyKYkPzYeLxQOC57+JvK0cTD8Y0w4VuF/jqRevaf6nP2
	 V0m9HytEzAaPBPllFEyli/51FqsesjZwkU+BGr+h7xnyiYIJoD8hVVbdHwo+RJwgV3
	 t8VY5puatKRipzYxMtnpBOcBAKR2vfqRTLV5wVwwfYi4pwejOgXOLvMq7KkkNalgTR
	 KYwbnXWkAe0rQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 94C7C40604;
	Tue, 14 Apr 2026 08:01:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 53374375
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 08:01:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E89284079A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 08:00:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dfHXb68aN6Bl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 08:00:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=gregkh@linuxfoundation.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3B55740519
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B55740519
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3B55740519
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 08:00:36 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 466194417A;
 Tue, 14 Apr 2026 08:00:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1922C19425;
 Tue, 14 Apr 2026 08:00:35 +0000 (UTC)
Date: Tue, 14 Apr 2026 10:00:06 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 stable <stable@kernel.org>
Message-ID: <2026041432-tapestry-condition-22ff@gregkh>
References: <2026041116-retail-bagginess-250f@gregkh>
 <afefe8b5-5bd9-4019-9d12-5ee2a7f577a2@molgen.mpg.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <afefe8b5-5bd9-4019-9d12-5ee2a7f577a2@molgen.mpg.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1776153636;
 bh=wVp6VFTURygsoghzYoYKFP8ZTFf9WBviBiJBhkIUNAM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DouCmozLwuDvvUGnIMpqz0RM3dfCWjXbeibZx/ghMTjGwjW/c8XS5RUuVETaXBPAB
 KAg6/HcgBzBDtA+8G3sobBBUQ+aADKKK6j0mo7SoA12I18pmJdG5PziSWRlXKN4oPY
 rjIvhmTqjCzzD3eUE+FgBlyp2zPisfgq/i69k/Ac=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linuxfoundation.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org
 header.a=rsa-sha256 header.s=korg header.b=DouCmozL
Subject: Re: [Intel-wired-lan] [PATCH net] idpf: fix double free and
 use-after-free in aux device error paths
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [5.39 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[linuxfoundation.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:pmenzel@molgen.mpg.de,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:stable@kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mpg.de:email,intel.com:email,lunn.ch:email,osuosl.org:dkim,davemloft.net:email,linuxfoundation.org:email];
	FORGED_SENDER(0.00)[gregkh@linuxfoundation.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	GREYLIST(0.00)[pass,body];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregkh@linuxfoundation.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RBL_SEM_IPV6_FAIL(0.00)[2605:bc80:3010::137:query timed out];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: CA9E23F6F7A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 14, 2026 at 08:54:55AM +0200, Paul Menzel wrote:
> Dear Greg,
> 
> 
> Thank you for the patch.
> 
> Am 11.04.26 um 12:12 schrieb Greg Kroah-Hartman:
> > When auxiliary_device_add() fails in idpf_plug_vport_aux_dev() or
> > idpf_plug_core_aux_dev(), the err_aux_dev_add label calls
> > auxiliary_device_uninit() and falls through to err_aux_dev_init.  The
> > uninit call will trigger put_device(), which invokes the release
> > callback (idpf_vport_adev_release / idpf_core_adev_release) that frees
> > iadev.  The fall-through then reads adev->id from the freed iadev for
> > ida_free() and double-frees iadev with kfree().
> > 
> > Free the IDA slot and clear the back-pointer before uninit, while adev
> > is still valid, then return immediately.
> > 
> > Commit 65637c3a1811 65637c3a1811 ("idpf: fix UAF in RDMA core aux dev
> 
> The commit hash is pasted twice.

Argh, when I cut/paste from my terminal that happened, my fault.

> > deinitialization") fixed the same use-after-free in the matching unplug
> > path in this file but missed both probe error paths.
> > 
> > Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> > Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Cc: Andrew Lunn <andrew+netdev@lunn.ch>
> > Cc: "David S. Miller" <davem@davemloft.net>
> > Cc: Eric Dumazet <edumazet@google.com>
> > Cc: Jakub Kicinski <kuba@kernel.org>
> > Cc: Paolo Abeni <pabeni@redhat.com>
> > Cc: stable <stable@kernel.org>
> > Fixes: be91128c579c ("idpf: implement RDMA vport auxiliary dev create, init, and destroy")
> > Fixes: f4312e6bfa2a ("idpf: implement core RDMA auxiliary dev create, init, and destroy")
> > Assisted-by: gregkh_clanker_t1000
> > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > ---
> > Note, these cleanup paths are messy, but I couldn't see a simpler way
> > without a lot more rework, so I choose the simple way :)
> > 
> >   drivers/net/ethernet/intel/idpf/idpf_idc.c | 6 ++++++
> >   1 file changed, 6 insertions(+)
> > 
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c b/drivers/net/ethernet/intel/idpf/idpf_idc.c
> > index 7e4f4ac92653..b7d6b08fc89e 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_idc.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_idc.c
> > @@ -90,7 +90,10 @@ static int idpf_plug_vport_aux_dev(struct iidc_rdma_core_dev_info *cdev_info,
> >   	return 0;
> >   err_aux_dev_add:
> > +	ida_free(&idpf_idc_ida, adev->id);
> > +	vdev_info->adev = NULL;
> >   	auxiliary_device_uninit(adev);
> > +	return ret;
> >   err_aux_dev_init:
> >   	ida_free(&idpf_idc_ida, adev->id);
> >   err_ida_alloc:
> > @@ -228,7 +231,10 @@ static int idpf_plug_core_aux_dev(struct iidc_rdma_core_dev_info *cdev_info)
> >   	return 0;
> >   err_aux_dev_add:
> > +	ida_free(&idpf_idc_ida, adev->id);
> > +	cdev_info->adev = NULL;
> >   	auxiliary_device_uninit(adev);
> > +	return ret;
> >   err_aux_dev_init:
> >   	ida_free(&idpf_idc_ida, adev->id);
> >   err_ida_alloc:
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> 
> gemini/gemini-3.1-pro-preview has two comments [1]. Maybe the driver
> developers could judge their relevance.

These "pre-existing" reports are getting annoying.  While they are nice
to see for driver authors, it makes developers sending bug fixes in feel
like they are forced to do "more".  I think they are trying to tune this
to be a bit more sane...

thanks,

greg k-h
