Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 389FF93B503
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2024 18:30:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E07FD40DD9;
	Wed, 24 Jul 2024 16:30:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uNTty44MBBQV; Wed, 24 Jul 2024 16:30:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E97B40DDA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721838627;
	bh=4kh6x9Iey6kF6Po/248f5rIjlPd1yMJFiOC97vENo7g=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=620E+/p20WNFRZUw40SDwNg/RrysHFaQZPT+Kwuuo4qq7ryDdVFETVUdabYcD/50/
	 P5u6pSrfKTvPYpvuTpy3O8rHhwGfG4xoy4XGgcZaHWvUGSMj+R1erc3WoEi71wyhO/
	 p9eNIQSJ4qXHmLMJwpalLI9gRBngQDfDjs67VQq4kZYvsyEr/6A1gjakszMGyZTcMv
	 t55YfzCdwX8iJshEBsUTuVP8FWJ1Vt/u7wSdJDuvjK83PfGS/uYX6LxsR3X9rhqItH
	 T/lp1wssmzxZ4Fwke1oZCHlB6SOqwfKf2NoFcF5oAni6JTG/XC2FQpfL5jm9ObAvFs
	 MbGfy2HJam8+A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4E97B40DDA;
	Wed, 24 Jul 2024 16:30:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B32C41BF29C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 16:30:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AC886607CB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 16:30:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1-WfhOnuyymQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2024 16:30:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D12B660622
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D12B660622
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D12B660622
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 16:30:24 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 0A2AACE11AA;
 Wed, 24 Jul 2024 16:30:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 042E8C32781;
 Wed, 24 Jul 2024 16:30:18 +0000 (UTC)
Date: Wed, 24 Jul 2024 17:30:16 +0100
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20240724163016.GB97837@kernel.org>
References: <20240710204015.124233-1-ahmed.zaki@intel.com>
 <20240710204015.124233-13-ahmed.zaki@intel.com>
 <20240722150431.GK715661@kernel.org>
 <4691e62b-0597-4184-8e85-0e74d8cdab85@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4691e62b-0597-4184-8e85-0e74d8cdab85@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1721838620;
 bh=pdloUzkhjOyyHbG95eWHh1DIEfSYhXIR31SEwN6htKM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hY5k8GqENKG0OR27HYyUIxDVN8GPu3pDYZS1R/j9pCzxr7qolas9c3+CdVjq/cxwV
 RGYc3u2SSjb/ahXnIJa4x46hRtuOwhwgZl8dc4VUud2+nSnwPqZI+zaAtsqzhRXQhb
 Onl4uEPRwBS7btndxhck60b61WDVAIesjxdYGUTflLCqiCQNcG51Ja1enAm2SxyeX7
 1/ZRkyI+SSzn1ep71a5J/r6W6DUIi59Fbk5QPQUWsgWlfdhakms6NGCJRTDfnIGCBR
 AUUk/9R4BtNP5WOxRxZEWEbbCrcBZlGGBTVJ1dhF+eh2TbfaNpsJm1h46xSW+97fSs
 gB7uHDacJ3x/g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=hY5k8GqE
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 12/13] iavf: refactor
 add/del FDIR filters
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Sridhar Samudrala <sridhar.samudrala@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 24, 2024 at 10:14:19AM -0600, Ahmed Zaki wrote:

...

> > > +/**
> > > + * iavf_fdir_del_fltr - delete a flow director filter from the list
> > > + * @adapter: pointer to the VF adapter structure
> > > + * @loc: location to delete.
> > > + *
> > > + * Return: 0 on success or negative errno on failure.
> > > + */
> > > +int iavf_fdir_del_fltr(struct iavf_adapter *adapter, u32 loc)
> > > +{
> > > +	struct iavf_fdir_fltr *fltr = NULL;
> > > +	int err = 0;
> > > +
> > > +	spin_lock_bh(&adapter->fdir_fltr_lock);
> > > +	fltr = iavf_find_fdir_fltr(adapter, loc);
> > > +
> > > +	if (fltr) {
> > > +		if (fltr->state == IAVF_FDIR_FLTR_ACTIVE) {
> > > +			fltr->state = IAVF_FDIR_FLTR_DEL_REQUEST;
> > > +		} else if (fltr->state == IAVF_FDIR_FLTR_INACTIVE) {
> > > +			list_del(&fltr->list);
> > > +			kfree(fltr);
> > > +			adapter->fdir_active_fltr--;
> > > +			fltr = NULL;
> > > +		} else {
> > > +			err = -EBUSY;
> > > +		}
> > > +	} else if (adapter->fdir_active_fltr) {
> > > +		err = -EINVAL;
> > > +	}
> > > +
> > > +	if (fltr && fltr->state == IAVF_FDIR_FLTR_DEL_REQUEST)
> > > +		iavf_schedule_aq_request(adapter, IAVF_FLAG_AQ_DEL_FDIR_FILTER);
> > 
> > It seems that prior to this change the condition and call to
> > iavf_schedule_aq_request were not protected by fdir_fltr_lock, and now they
> > are. If so, is this change intentional.
> > 
> 
> yes it is, fltr is member of the list that should be protected by the
> spinlock.

Thanks,

I would suggest moving this into a separate patch: changing locking is a
bit different to refactoring.

Or, if not, at least mentioning it in the patch description.
