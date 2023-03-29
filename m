Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 177E16CD88D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 13:36:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 20F2641DD9;
	Wed, 29 Mar 2023 11:36:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 20F2641DD9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680089767;
	bh=6gjtfde+YByzYNgx0zsO1iKudR1wmK8KsTZbbS+EaX4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZlzMaXNLFNAy174zCPv2lC71C/yiqLW/RbTe8hT2w0QvhwAwox1OAu5FUfvKUHMuB
	 2qI35xCfQt04V2eSJhOksDAj6Mr6lWopFjeFUzpZN0zoMfacSyN2MJId6AFBSMIB2a
	 VPXDKKcu9XaukC6gZQ9rFqLpGMq4gpmc3ATOIPSUDaYlqwwhHxChKVcBzfJKlsFgcT
	 KJ9Y/wJNDB+qALy6mjzJnCNmVYJBlTkwGL0LcIHNlR2bqPM3q6TwkF6PKztBIAidA8
	 Q/Aq1Zu8gdqbfVs7mZXwF2y2YclOoY/0FOhnJjuXikd3O/bde1BOtcG+iz4HvcMzF8
	 Mhmz/km5FS1sg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ubdZc8Ssfr3h; Wed, 29 Mar 2023 11:36:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 927E441DD8;
	Wed, 29 Mar 2023 11:36:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 927E441DD8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5D1931BF301
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 11:36:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3307341DD8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 11:36:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3307341DD8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T0Z-xiy4ZQbb for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 11:36:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA49E41DD4
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BA49E41DD4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 11:35:59 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id E96FEB822DE;
 Wed, 29 Mar 2023 11:35:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BDC6C433EF;
 Wed, 29 Mar 2023 11:35:54 +0000 (UTC)
Date: Wed, 29 Mar 2023 14:35:51 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Piotr Raczynski <piotr.raczynski@intel.com>
Message-ID: <20230329113551.GN831478@unreal>
References: <20230323122440.3419214-1-piotr.raczynski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230323122440.3419214-1-piotr.raczynski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1680089755;
 bh=z/x7LnEKtW9FQfCWGQ8ALFdFf+D3mta8rcpYAy1Iy3c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A+Ms2xkVBRYr61Wan4XUIfxUpH1PPns1a7VAh0+cCcqAopcBivhA2YK/me/IGcPhD
 FCwmdiRfGD/Kh84qVjUWEpxxLbPyaDdzplZ/8WlVo1dg0/hxzUdI5HjdG4mCyEXNj1
 ecPSmnGjPxtvvag7GNvHb3cjVcr/r9kfVBkvvCZqdnHiiUgcOVNypXz9UgrYPDL2Tb
 6jPNUFupOsc0OujXEYfzIBH1cx9PTG7Zns9paOCMLYwKQmpmFXvztzPR7JV8jvprJC
 Gn0HJPyha/9YQ05f7lBndWZW/qmul/09Ku8QF/wcR/BqhDC/C9JwtSi8s+9rNfHpxc
 ZIpRyFR45Vj5A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=A+Ms2xkV
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 0/8] ice: support dynamic
 interrupt allocation
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
Cc: michal.swiatkowski@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Mar 23, 2023 at 01:24:32PM +0100, Piotr Raczynski wrote:
> This patchset reimplements MSIX interrupt allocation logic to allow dynamic
> interrupt allocation after MSIX has been initially enabled. This allows
> current and future features to allocate and free interrupts as needed and
> will help to drastically decrease number of initially preallocated
> interrupts (even down to the API hard limit of 1). Although this patchset
> does not change behavior in terms of actual number of allocated interrupts
> during probe, it will be subject to change.
> 
> First few patches prepares to introduce dynamic allocation by moving
> interrupt allocation code to separate file and update allocation API used
> in the driver to the currently preferred one.
> 
> Due to the current contract between ice and irdma driver which is directly
> accessing msix entries allocated by ice driver, even after moving away from
> older pci_enable_msix_range function, still keep msix_entries array for
> irdma use.
> 
> Next patches refactors and removes redundant code from SRIOV related logic
> as it also make it easier to move away from static allocation scheme.
> 
> Last patches actually enables dynamic allocation of MSIX interrupts. First,
> introduce functions to allocate and free interrupts individually. This sets
> ground for the rest of the changes even if that patch still allocates the
> interrupts from the preallocated pool. Since this patch starts to keep
> interrupt details in ice_q_vector structure we can get rid of functions
> that calculates base vector number and register offset for the interrupt
> as it is equal to the interrupt index. Only keep separate register offset
> functions for the VF VSIs.
> 
> Next, replace homegrown interrupt tracker with much simpler xarray based
> approach. As new API always allocate interrupts one by one, also track
> interrupts in the same manner.
> 
> Lastly, extend the interrupt tracker to deal both with preallocated and
> dynamically allocated vectors and use pci_msix_alloc_irq_at and
> pci_msix_free_irq functions. Since not all architecture supports dynamic
> allocation, check it before trying to allocate a new interrupt.
> 
> As previously mentioned, this patchset does not change number of initially
> allocated interrupts during init phase but now it can and will likely be
> changed.
> 
> Patch 1-3 -> move code around and use newer API
> Patch 4-5 -> refactor and remove redundant SRIOV code
> Patch 6   -> allocate every interrupt individually
> Patch 7   -> replace homegrown interrupt tracker with xarray
> Patch 8   -> allow dynamic interrupt allocation
> 
> Change history:
> v1 -> v2:
> - ice: refactor VF control VSI interrupt handling
>   - move ice_get_vf_ctrl_vsi to ice_lib.c (ice_vf_lib.c depends on
>     CONFIG_PCI_IOV)
> v2 -> v3:
> - ice: refactor VF control VSI interrupt handling
>   - revert v2 change and add no-op function in case of CONFIG_PCI_IOV=n
> - ice: add dynamic interrupt allocation
>   - fix commit message
> 
> Piotr Raczynski (8):
>   ice: move interrupt related code to separate file
>   ice: use pci_irq_vector helper function
>   ice: use preferred MSIX allocation api
>   ice: refactor VF control VSI interrupt handling
>   ice: remove redundant SRIOV code
>   ice: add individual interrupt allocation
>   ice: track interrupt vectors with xarray
>   ice: add dynamic interrupt allocation
> 

Thanks,
Reviewed-by: Leon Romanovsky <leonro@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
