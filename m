Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 139F2BDC9B9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Oct 2025 07:34:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F3B0740F9B;
	Wed, 15 Oct 2025 05:33:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s-d0iUtJS8NP; Wed, 15 Oct 2025 05:33:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2571540FA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760506422;
	bh=cv5ALGStrOBrdaroePoB5k8Foxl8/fuhTMXQrq+P6O8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jYx9fFJpxg8z4Pxf9zlyRvURf2L5rYcXge00UZ9YiLDAKNsvFkkC/pHo/C8gAiq9K
	 pyT5T6ISrPpUZsllYaqdGTyC8Bk5tbekRnRUoR5dBMvQDvBgGBYhfSnCf/JWviQmbA
	 U3dfTqNOm49UmCu53cXf8TfYgWHrbfpDCWPZ/Y44sNKTcs+MX2t7+7o3YipoPYSi9a
	 siGkQgdoRGZ+C143F/4kdVJ8rhguXh3icrjbbrcjk7utbfHStfHQgYx+b0btiT9F8B
	 F7WwCHQNTKpm8na6SoW4k8rfXLAjSk6O0Aj+z1hewhda5YJYs00HE0645r0z+TI/Wh
	 nLwquvkNIMSDQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2571540FA3;
	Wed, 15 Oct 2025 05:33:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3A7784C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Oct 2025 05:33:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 35DCD40F45
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Oct 2025 05:33:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id djuZnWkYCIEi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Oct 2025 05:33:39 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 15 Oct 2025 05:33:38 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0FEE840F3E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0FEE840F3E
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0FEE840F3E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Oct 2025 05:33:38 +0000 (UTC)
X-CSE-ConnectionGUID: nPV//YA3QQWwdCPHemEznA==
X-CSE-MsgGUID: dmI79+04TNyDyVE/a/T3wA==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="62568943"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="62568943"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 22:26:30 -0700
X-CSE-ConnectionGUID: Gm74usyYTzy8Qm24W+ta6Q==
X-CSE-MsgGUID: 0YHKjawzQ5eRor79W+kOCQ==
X-ExtLoop1: 1
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 22:26:28 -0700
Date: Wed, 15 Oct 2025 07:24:30 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>
Message-ID: <aO8wDmPWWEV6+tkZ@mev-dev.igk.intel.com>
References: <20251014141110.751104-1-michal.swiatkowski@linux.intel.com>
 <11eac3d4-d81c-42e2-b9e3-d6f715a946b2@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <11eac3d4-d81c-42e2-b9e3-d6f715a946b2@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760506419; x=1792042419;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=hrl3vFnKAOqCCVFG9AbVN3NMQWug1hhBxWaMMxlGFJI=;
 b=Kq2yfBKRpHHd35SPtC4zdcFUAAYXei0z5D+GpW09i7TN6Lx/9gqVK26F
 oU6W3bsHTTq3wm/DVm5UJfzt8z6ixZJ6r0WrCtXmY+XuZebFM5FfSCzlQ
 uy0OKommRlQzdGpoJPuYfBtFHaHV6twoF+fecl01Cx9cNLctWOhyyFLc2
 SIQdqA4110CJty17Go9rBUZxJ/lsBJC4czskeK7BDx70DOJLo8R9UyFRh
 6O8MEJALBuPtNDnMsw237XofTBs0r5AVfxwg5CCZOdY8EsZxk7D/WPD+v
 8KH/V9gW1eIUQkO5JHCbKrql5Vr17k+auiM/XogAZx7qdoKgcFdBFmOfs
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Kq2yfBKR
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: guard fwlog code by
 CONFIG_DEBUG_FS
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

On Tue, Oct 14, 2025 at 04:41:43PM -0700, Jacob Keller wrote:
> 
> 
> On 10/14/2025 7:11 AM, Michal Swiatkowski wrote:
> > Building the ixgbe without CONFIG_DEBUG_FS leads to a build error. Fix
> > that by guarding fwlog code.
> > 
> > Fixes: 641585bc978e ("ixgbe: fwlog support for e610")
> > Reported-by: Guenter Roeck <linux@roeck-us.net>
> > Closes: https://lore.kernel.org/lkml/f594c621-f9e1-49f2-af31-23fbcb176058@roeck-us.net/
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > ---
> 
> Hm. It probably is best to make this optional and not require debugfs
> via kconfig.

Make sense

> 
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 2 ++
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h | 8 ++++++++
> >  2 files changed, 10 insertions(+)
> > 
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> > index c2f8189a0738..c5d76222df18 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> > @@ -3921,6 +3921,7 @@ static int ixgbe_read_pba_string_e610(struct ixgbe_hw *hw, u8 *pba_num,
> >  	return err;
> >  }
> >  
> > +#ifdef CONFIG_DEBUG_FS
> >  static int __fwlog_send_cmd(void *priv, struct libie_aq_desc *desc, void *buf,
> >  			    u16 size)
> >  {
> > @@ -3952,6 +3953,7 @@ void ixgbe_fwlog_deinit(struct ixgbe_hw *hw)
> >  
> >  	libie_fwlog_deinit(&hw->fwlog);
> >  }
> > +#endif /* CONFIG_DEBUG_FS */
> >  
> 
> What does the fwlog module from libie do? Seems likely that it won't
> compile without CONFIG_DEBUG_FS either...

Right, it shouldn't, because there is a dependency on fs/debugfs.
It is building on my env, but maybe I don't have it fully cleaned.
I wonder, because in ice there wasn't a check (or select) for
CONFIG_DEBUG_FS for fwlog code.

Looks like LIBIE_FWLOG should select DEBUG_FS, right?
I will send v2 with that, if it is fine.

Thanks

> 
> >  static const struct ixgbe_mac_operations mac_ops_e610 = {
> >  	.init_hw			= ixgbe_init_hw_generic,
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
> > index 11916b979d28..5317798b3263 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
> > @@ -96,7 +96,15 @@ int ixgbe_aci_update_nvm(struct ixgbe_hw *hw, u16 module_typeid,
> >  			 bool last_command, u8 command_flags);
> >  int ixgbe_nvm_write_activate(struct ixgbe_hw *hw, u16 cmd_flags,
> >  			     u8 *response_flags);
> > +#ifdef CONFIG_DEBUG_FS
> >  int ixgbe_fwlog_init(struct ixgbe_hw *hw);
> >  void ixgbe_fwlog_deinit(struct ixgbe_hw *hw);
> > +#else
> > +static inline int ixgbe_fwlog_init(struct ixgbe_hw *hw)
> > +{
> > +	return -EOPNOTSUPP;
> > +}
> > +static inline void ixgbe_fwlog_deinit(struct ixgbe_hw *hw) {}
> > +#endif /* CONFIG_DEBUG_FS */
> >  
> >  #endif /* _IXGBE_E610_H_ */
> 



