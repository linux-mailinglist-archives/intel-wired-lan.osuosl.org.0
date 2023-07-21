Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB3575CB7D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jul 2023 17:21:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 302AC613A9;
	Fri, 21 Jul 2023 15:21:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 302AC613A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689952885;
	bh=5dk2TUzFFxX4+OO069u+dgzSmXwLUNFRBWqd2juOaWk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YWEM/OH7DPvwtpcrIOY5Wpq6fAT32RiU5FDKxpzV2sKIT60SEmWHYkmOopYd9hFUD
	 ob+Yoyx/PDTpIJp66Ni8khR11quxOvjFPun0WO9vb0qsrgdFu7dfaeV8mQuI6EgV5g
	 if6uKW0qfEyqzqUlXT+iDIb0tmO6G7OnEYkA/IkTarns7wWudLm+o0N7BaAHOO0xH8
	 aJR7M+A68n4z+kgASphCEFHEWM+80wmNKxuEq83axEp1fBLmAl+k4uW7Rhhs6M9mSR
	 7xxosLaodwnguKjHcPsp/isndXARRFE8U1jFDxDgTgUP2Txd8b3n6cwhUc9Qdlj195
	 FPbBD6+wFX8Tw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mBrJJdugT4D0; Fri, 21 Jul 2023 15:21:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0660D6134B;
	Fri, 21 Jul 2023 15:21:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0660D6134B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EAEAF1BF287
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 14:29:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BEFAC4178F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 14:29:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BEFAC4178F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3g-Ej-Za6eEG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jul 2023 14:29:02 +0000 (UTC)
X-Greylist: delayed 424 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 21 Jul 2023 14:29:02 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0803D41785
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0803D41785
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 14:29:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="346632489"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="346632489"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 07:21:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="718837285"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="718837285"
Received: from smile.fi.intel.com ([10.237.72.54])
 by orsmga007.jf.intel.com with ESMTP; 21 Jul 2023 07:21:53 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
 (envelope-from <andy@kernel.org>) id 1qMr0x-0085eg-2U;
 Fri, 21 Jul 2023 17:21:51 +0300
Date: Fri, 21 Jul 2023 17:21:51 +0300
From: Andy Shevchenko <andy@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <ZLqUfwKkRH85uPlT@smile.fi.intel.com>
References: <20230721071532.613888-1-marcin.szycik@linux.intel.com>
 <20230721071532.613888-2-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230721071532.613888-2-marcin.szycik@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Mailman-Approved-At: Fri, 21 Jul 2023 15:21:09 +0000
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 1/6] ip_tunnel: use a
 separate struct to store tunnel params in the kernel
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
Cc: jiri@resnulli.us, netdev@vger.kernel.org, idosch@nvidia.com,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 simon.horman@corigine.com, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jul 21, 2023 at 09:15:27AM +0200, Marcin Szycik wrote:
> From: Alexander Lobakin <aleksander.lobakin@intel.com>
> 
> Unlike IPv6 tunnels which use purely-kernel __ip6_tnl_parm structure
> to store params inside the kernel, IPv4 tunnel code uses the same
> ip_tunnel_parm which is being used to talk with the userspace.
> This makes it difficult to alter or add any fields or use a
> different format for whatever data.
> Define struct ip_tunnel_parm_kern, a 1:1 copy of ip_tunnel_parm for
> now, and use it throughout the code. The two places where the latter
> is used to interact with the userspace, now do a conversion from one
> type to another, with manual field-by-field assignments.
> Must be done at once, since ip_tunnel::parms is being used in most
> of those places.

...

> +	strscpy(kp.name, p.name, sizeof(kp.name));
> +	kp.link = p.link;
> +	kp.i_flags = p.i_flags;
> +	kp.o_flags = p.o_flags;
> +	kp.i_key = p.i_key;
> +	kp.o_key = p.o_key;
> +	memcpy(&kp.iph, &p.iph, min(sizeof(kp.iph), sizeof(p.iph)));
> +
> +	err = dev->netdev_ops->ndo_tunnel_ctl(dev, &kp, cmd);
> +	if (err)
> +		return err;
> +
> +	strscpy(p.name, kp.name, sizeof(p.name));
> +	p.link = kp.link;
> +	p.i_flags = kp.i_flags;
> +	p.o_flags = kp.o_flags;
> +	p.i_key = kp.i_key;
> +	p.o_key = kp.o_key;
> +	memcpy(&p.iph, &kp.iph, min(sizeof(p.iph), sizeof(kp.iph)));

> +		strscpy(kp.name, p.name, sizeof(kp.name));
> +		kp.link = p.link;
> +		kp.i_flags = p.i_flags;
> +		kp.o_flags = p.o_flags;
> +		kp.i_key = p.i_key;
> +		kp.o_key = p.o_key;
> +		memcpy(&kp.iph, &p.iph, min(sizeof(p.iph), sizeof(kp.iph)));

Seems to me these two deserves separate helpers to avoid such a duplication(s).

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
