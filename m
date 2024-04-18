Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 17AF88A9D79
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 16:47:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A30FD40F48;
	Thu, 18 Apr 2024 14:46:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1JS39qAMkmtW; Thu, 18 Apr 2024 14:46:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8305C40198
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713451617;
	bh=UidkOAshEim037ZZ7LLl+GCjTR1UgPLpnTNS4DpQY/w=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kuMQrgjaXruDnLW3tB+9xB0nhTRXqvpVqvx8e5fLnPiMRGELfsbjLiclEYl/DScjP
	 MxD2acZqgekv78xmz2++LQLXSvXwluhKfLsRtsP2E7+Gineriwh6nO1AxLHRAMRccc
	 Sr2jGUeMcmBKq5rZfCDvd79+/1xC0TeZsraceQDTbLPNz5hCVdOUxSgzHgtIqYwlXE
	 CnmL/GhRUsyuc+gqbxB+mHPA35bIXdLl0+zBD7Ze47BkFQ8RtgIdHC/rZAcFv8oDiv
	 lq/yBMdQiJYjHnnJNTKrOXOz0aEO1D8L9XFjBcmXiARoTOnbysW9xwSsW9twP908Hh
	 kLAFwVQHS2yHw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8305C40198;
	Thu, 18 Apr 2024 14:46:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B46161BF38A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 14:46:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9F88E60BC4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 14:46:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rQMt0DTVJU-P for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 14:46:53 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9F3F1608C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F3F1608C4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9F3F1608C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 14:46:53 +0000 (UTC)
X-CSE-ConnectionGUID: 7ejTwTOPR5O+cpqKYXFpMQ==
X-CSE-MsgGUID: 4SPBNPmNTiyd9kN1yD5C7w==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="26461368"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="26461368"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 07:46:53 -0700
X-CSE-ConnectionGUID: r8nwLN+HS5yQx2yEsGB8Wg==
X-CSE-MsgGUID: bMgJDw1IT0G4L5Q7ldIoOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="23615599"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 07:46:50 -0700
Date: Thu, 18 Apr 2024 16:46:23 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <ZiEyP+t9uarUrLGO@mev-dev>
References: <20240417142028.2171-1-michal.swiatkowski@linux.intel.com>
 <20240417142028.2171-6-michal.swiatkowski@linux.intel.com>
 <ZiEMRcP7QN5zVd8Z@nanopsycho> <ZiEWtQ2bnfSO6Da7@mev-dev>
 <ZiEZ-UKL0kYtEtOp@nanopsycho>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZiEZ-UKL0kYtEtOp@nanopsycho>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713451613; x=1744987613;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=3goLA/LDs/swhXhob3N4VYmH4WhAH75ffb2SGuLSFZw=;
 b=hPgyKKxYEw7f2L8I4lEZdmFr7xl3X+lF0k59/OklOr1jRc5l/zqMFr+v
 5r/m0lJZmNUfqZyqbYtSl7tT2i32bxnXGheX4gR1euhfPEt1KCSL686Aq
 FPnPFN33Z0P/hPfirNm0RCS9cKvVSmDeISmrK2+Bk3ool+QQB01CFdv//
 yhhakpY++kNe5++MeU1w36xlE/L0k5tv1OuXf6FcXHcZSQHBjhzjLdYX0
 iWZ438Z5nTxOyWtdZox3C5HF0CtMKLVjB5DGo+CClIEO5kKcAl/buQMSK
 jYu8bGub8h0aIQwWotjwGTFlG7nfQGRz+RwOarQyh46ozccES/0Ajj2TQ
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hPgyKKxY
Subject: Re: [Intel-wired-lan] [iwl-next v4 5/8] ice: allocate devlink for
 subfunction
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
Cc: maciej.fijalkowski@intel.com, mateusz.polchlopek@intel.com,
 netdev@vger.kernel.org, jiri@nvidia.com, michal.kubiak@intel.com,
 intel-wired-lan@lists.osuosl.org, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Apr 18, 2024 at 03:02:49PM +0200, Jiri Pirko wrote:
> Thu, Apr 18, 2024 at 02:48:53PM CEST, michal.swiatkowski@linux.intel.com wrote:
> >On Thu, Apr 18, 2024 at 02:04:21PM +0200, Jiri Pirko wrote:
> >> Wed, Apr 17, 2024 at 04:20:25PM CEST, michal.swiatkowski@linux.intel.com wrote:
> >> >From: Piotr Raczynski <piotr.raczynski@intel.com>
> >> 
> >> [...]
> >> 
> >> >+/**
> >> >+ * ice_allocate_sf - Allocate devlink and return SF structure pointer
> >> >+ * @dev: the device to allocate for
> >> >+ *
> >> >+ * Allocate a devlink instance for SF.
> >> >+ *
> >> >+ * Return: void pointer to allocated memory
> >> >+ */
> >> >+struct ice_sf_priv *ice_allocate_sf(struct device *dev)
> >> 
> >> This is devlink instance for SF auxdev. Please make sure it is properly
> >> linked with the devlink port instance using devl_port_fn_devlink_set()
> >> See mlx5 implementation for inspiration.
> >> 
> >> 
> >
> >I am going to do it in the last patchset. I know that it isn't the best
> 
> Where? Either I'm blind or you don't do it.
> 
> 

You told me to split few patches from first patchset [1]. We agree that
there will be too many patches for one submission, so I split it into
3:
- 1/3 devlink prework (already accepted)
- 2/3 base subfunction (this patchset)
- 3/3 port representor refactor to support subfunction (I am going to
  include it there)

[1] https://lore.kernel.org/netdev/20240301115414.502097-1-michal.swiatkowski@linux.intel.com/

Thanks,
Michal

> >option to split patchesets like that, but it was hard to do it differently.
> >
> >Thanks,
> >Michal
> >
> >> >+{
> >> >+	return ice_devlink_alloc(dev, sizeof(struct ice_sf_priv),
> >> >+				 &ice_sf_devlink_ops);
> >> >+}
> >> >+
> >> 
> >> [...]
