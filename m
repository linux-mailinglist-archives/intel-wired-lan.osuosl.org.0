Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9D0970289
	for <lists+intel-wired-lan@lfdr.de>; Sat,  7 Sep 2024 15:52:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E77224067D;
	Sat,  7 Sep 2024 13:52:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KP0AnTeMizPI; Sat,  7 Sep 2024 13:52:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14D20402D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725717133;
	bh=X2twUjQyoR/uhU+swGNqIlL2LZ9+rvbldIvPKsJuRDA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jSbrhicLbs2mJGLBpwjfG36BxQm+SdQv6snyuiR+tODlN6epSs2w9lVW8Gu7uWwyb
	 hWw0G8mxWF2U9TQ00QASqMeoNArMGVpUmRgF3jLUD0PQwZFofjfvlxW6I0iVIb+Q/x
	 VDV2Lc2sst91yr2wTnGGb7HJI96DupVbMNm8MgP9WVZ5DLr8PY1RlW8ihGf30UGtaF
	 atbSgPszqFWmQRkNeKHxQU1COutIVy7sxtsIBUD5VZ8K8wfLK0VcLmM/245mXVFE+a
	 g/U/Y4dXkEkXnb+9Rgi6UAaAnSKupR6mfU4KNQDs7MWiPSn3IE5VnjQYpEn+sI9ZFA
	 PUI0Wq41TSQeA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14D20402D4;
	Sat,  7 Sep 2024 13:52:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2D4131BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Sep 2024 13:52:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1933B40230
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Sep 2024 13:52:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5e7rZHQMmwOI for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Sep 2024 13:52:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4327340226
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4327340226
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4327340226
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Sep 2024 13:52:10 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 3B1A7A403BD;
 Sat,  7 Sep 2024 13:52:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9089AC4CEC2;
 Sat,  7 Sep 2024 13:52:05 +0000 (UTC)
Date: Sat, 7 Sep 2024 14:52:03 +0100
From: Simon Horman <horms@kernel.org>
To: Markus Elfring <Markus.Elfring@web.de>
Message-ID: <20240907135203.GQ2097826@kernel.org>
References: <SY8P300MB0460D0263B2105307C444520C0932@SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM>
 <99a2d643-9004-41c8-8585-6c5c86fab599@web.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <99a2d643-9004-41c8-8585-6c5c86fab599@web.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1725717128;
 bh=MYrO/3eKljHyoKJjSw8BBububPsJc6vLPebzXA5ILLM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bRshFzzihKz7KcoG149wshja98LfJ2ZGlpiI96+3s2DvdHyw6EeJiCLWqjhfJo8oq
 wjtkprMaMTouRtQTTTIMBSH3qnJeSK+PnANQat9T3C0FKPuAmLfX0snkJ+OcWwDYJa
 dxuV3baL39uwwsocxhbDXzN4z87U+h2KF6U8vCddICIx8CbZrzsT5Y9vC7mU5N+EeJ
 uYYeQZe4oMj1N976JWokknF7Rm0ilKPneEjWo8Y/4js0rqutlpFgHDPZ/Z11QnvTKr
 fpNgN43LC/H6Hn0hSDUxLX/IoSSCbev6FmrEnqXXlqwfVXJ4/Rv0nkUqJCfzr+fiy3
 RvVXgZSjMHN2Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=bRshFzzi
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

Yes, I agree that might be nice. But the changes made by this patch are
consistent with the exiting error handling in this function. And as a fix,
this minimal approach seems appropriate to me. IOW, I believe clean-up
should be separated from fixes in this case.
