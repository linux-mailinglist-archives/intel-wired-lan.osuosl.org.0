Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B313296D2BD
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Sep 2024 11:06:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 16E6840600;
	Thu,  5 Sep 2024 09:06:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JIL7u2ILMKYJ; Thu,  5 Sep 2024 09:06:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB92A40606
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725527185;
	bh=trNgvodz6p8Ir3P6LZRxuiIroE36EE7KAax/Kx9bjbY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AYSRLs46lqtjXoFXIjscmPsLxqK2Q3Y8ULV7Ts52cJDsLwzXJVoz0EB7z0ZqGw0eq
	 xskV60WGFn0V9dy+cvAVI+BAtHusB6aaeojzWy/Q3NGUXYfMU6zRqGmfSDGBagN9Vh
	 tA6mhYabUebi0zDVQXZADaqcx3ubufEZcPzWfK2XnfmH/spy1tH3DUlwSc89kqwJJQ
	 w4Z6Z0tu7HCxtJmV3OUX9W5+vzZEYU4PBd5LCK1QucpIKd3yfRAtHNl4MrK/vdDQ0B
	 3m2EpygRJAbKF/FXwP577S7fTR5rp+oUetIR1BbUqG2J/eZuLj8uFrw3iO0OBK8fh+
	 39WzZrkGqOHuA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB92A40606;
	Thu,  5 Sep 2024 09:06:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 22EB11BF4D6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 09:06:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 19B4A81299
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 09:06:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GB0x4AyFyR38 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Sep 2024 09:06:23 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3C62F81289
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C62F81289
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3C62F81289
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 09:06:23 +0000 (UTC)
X-CSE-ConnectionGUID: wOfk831fQYGu5jsnNiMqmQ==
X-CSE-MsgGUID: YQRiq6tXTzivRtsrvnUA2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="27983983"
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="27983983"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 02:06:22 -0700
X-CSE-ConnectionGUID: Q69MFm30TcOPGV6p3jty6A==
X-CSE-MsgGUID: +jx0jdAISW6uGg0MhVMPtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="70481386"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 02:06:14 -0700
Date: Thu, 5 Sep 2024 11:04:17 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <Ztl0ES4k0dyI7Qio@mev-dev.igk.intel.com>
References: <20240904120052.24561-1-michal.swiatkowski@linux.intel.com>
 <65f17b12-860e-4cd0-a996-459fee71b4f8@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <65f17b12-860e-4cd0-a996-459fee71b4f8@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725527183; x=1757063183;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=vVOP1mOoLSS9Isujf+VH28F2S18jITj6Qsni3mfL47c=;
 b=RFGaBO9CeAqvEQl98BJI2exw2tJdUTjSky2S8+NwVjjqq1UmY9pe02ps
 oldlSH2N69JAekk0RK4QO53B+x8HZ23m4OSJOSdI8m6RIWDLWOwhjJv1P
 U4CR5TVnqo8GGj3JPPkiS3lAwyzHAGwB6YyFo78SDHUhUYffHaeaWMOj+
 q9oOUhnGUBZXJnfCaFqlsAeZZT88Ab65KZYfIARvJ3EFgUqleeyKelqlf
 XmonRDekl8GelN0AAvTqO2xeRZhIlsYT4uWujSGMFPLlqZ4xvWDc5DT9a
 o7+auGetYwRuzqV1U5FiKiAVNvt6Lf8U5JrmcxRd+nQwIpqIckio1S7xV
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RFGaBO9C
Subject: Re: [Intel-wired-lan] [iwl-net v1] iavf: allow changing VLAN state
 without calling PF
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Sep 05, 2024 at 08:19:58AM +0200, Przemek Kitszel wrote:
> On 9/4/24 14:00, Michal Swiatkowski wrote:
> > First case:
> 
> [...]
> 
> > Second case:
> 
> [...]
> 
> > With fix for previous case we end up with no VLAN filters in hardware.
> > We have to remove VLAN filters if the state is IAVF_VLAN_ADD and delete
> > VLAN was called. It is save as IAVF_VLAN_ADD means that virtchnl message
> > wasn't sent yet.
> 
> I'm fine with combining the two cases into one commit as that is related
> 
> > 
> > Fixes: 0c0da0e95105 ("iavf: refactor VLAN filter states")
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > ---
> >   drivers/net/ethernet/intel/iavf/iavf_main.c | 18 ++++++++++++++++--
> >   1 file changed, 16 insertions(+), 2 deletions(-)
> 
> [...]
> 
> > @@ -793,8 +798,17 @@ static void iavf_del_vlan(struct iavf_adapter *adapter, struct iavf_vlan vlan)
> >   	f = iavf_find_vlan(adapter, vlan);
> >   	if (f) {
> > -		f->state = IAVF_VLAN_REMOVE;
> 
> you forgot to put this line in else case below
> 

Oh, sorry, thanks for finding that. Will send v2.

> > -		iavf_schedule_aq_request(adapter, IAVF_FLAG_AQ_DEL_VLAN_FILTER);
> > +		/* IAVF_ADD_VLAN means that VLAN wasn't even added yet.
> > +		 * Remove it from the list.
> > +		 */
> > +		if (f->state == IAVF_VLAN_ADD) {
> > +			list_del(&f->list);
> > +			kfree(f);
> > +			adapter->num_vlan_filters--;
> > +		} else {
> > +			iavf_schedule_aq_request(adapter,
> > +						 IAVF_FLAG_AQ_DEL_VLAN_FILTER);
> > +		}
> >   	}
> >   	spin_unlock_bh(&adapter->mac_vlan_list_lock);
> 
