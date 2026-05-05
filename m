Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4E+LHG10+Wk48wIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 06:39:09 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7504C67FA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 06:39:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7E1D40515;
	Tue,  5 May 2026 04:39:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D6-4DGsly-qV; Tue,  5 May 2026 04:39:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C02F40528
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777955946;
	bh=xjptxPH5mc2qFYTi30/3QW6mxgIAIPTdu0ZXTaRaqaU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uOKSnyOXfJaVA1jNmzlrVdpNpGstZvy3+CXnLmIZpkmyduf6H5Lu2eYIgXUKliLq4
	 BUEMa868m4KlmBXCzyds9MgpVnR9DawSr1BVeNtdSNZk9CIUD0i0mSJz+2dkI9snwo
	 +dmrCfLY59u46Yga+a8V1/aBk7GSrqGVlRXhsBn3G9RNn1hysmYx2lKx9Olf+bYZUF
	 9sSdgsstJqVmPew9FtLBZNhM0GBZwvZPIMJeSUIFcmznY1cj+nasvFMQhwj2vNjC2J
	 VPIeaiLZsvfxYbeVOFv1HlmSP8hQW1Y/vZETRbX7i9rf8fAC8pewhNsrfnLsw6F84E
	 5kCzWGwSYfsVQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C02F40528;
	Tue,  5 May 2026 04:39:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E5A592DF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 04:39:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E31A460793
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 04:39:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VoqTguX7ZZEe for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 May 2026 04:39:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AC44E606F7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC44E606F7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AC44E606F7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 04:39:03 +0000 (UTC)
X-CSE-ConnectionGUID: wxMrVUpkQ8+GVSLb3Rv12g==
X-CSE-MsgGUID: ks7JIVU7TImSl5suktzFAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="89124589"
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="89124589"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 21:39:03 -0700
X-CSE-ConnectionGUID: Zp/RDczkSni7GBS1NKqqlw==
X-CSE-MsgGUID: gUFZaRRZTXaFArHJjVG8Hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="259369989"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 21:39:00 -0700
Date: Tue, 5 May 2026 06:35:04 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 jramaseu@redhat.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, aleksandr.loktionov@intel.com
Message-ID: <aflzeKTaOUBy2Xsn@mev-dev.igk.intel.com>
References: <20260428070647.777141-1-michal.swiatkowski@linux.intel.com>
 <20260428070647.777141-3-michal.swiatkowski@linux.intel.com>
 <44623db1-8b86-4e8e-82a3-46d65b055ebc@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <44623db1-8b86-4e8e-82a3-46d65b055ebc@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777955944; x=1809491944;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=c1HpKxmZh/vDAAxMnUvYiCbMKTHqUgCr6R7N3XfmFAQ=;
 b=BgQJUcizWTno6HSxJmVBeE9XYe16d3vKg3l/OAjJuSkOFd8UqgmSPl8i
 Y29pctp0LNqjoFtxQD+4dwmT9s8bqyBE12u0Kpsld0ftz/d1AInUkcS06
 Lp08H+dwS94KntiMywpncCxXps4I7cUO76GNhV351Cob0PfyGxCceqbIL
 tFd6ZRd96KN3NNRaZVslsYTl1huWlT6tvBPNHd6fWXHDE7o5fG4QcH8iB
 yjTxhZda8bf3YbF2YRMSWrBNp0K1qKtUqVHzcib0gKP3GP7jq566Frlzg
 uxrubY5jG6zHYD5pBF5gHxpPeFk9EjrYLC0EwHH2t7ZyFfzddOomP5s+D
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BgQJUciz
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 2/2] ice: use
 NETIF_F_HW_CSUM instead of IP/IPV6
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
X-Rspamd-Queue-Id: 6B7504C67FA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.61 / 15.00];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:michal.swiatkowski@linux.intel.com,m:netdev@vger.kernel.org,m:jramaseu@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,mev-dev.igk.intel.com:mid];
	FORGED_SENDER(0.00)[michal.swiatkowski@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[michal.swiatkowski@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

On Mon, May 04, 2026 at 04:53:12PM -0700, Jacob Keller wrote:
> On 4/28/2026 12:06 AM, Michal Swiatkowski wrote:
> > The hardware is capable of calculating checksum for IPV6 packets with
> > extension header. To not drop such packets switch from IP/IPV6 checksum
> > to HW_CSUM.
> > 
> > HW_CSUM is also used in previous generation (i40e).
> > 
> > Previously HW_CSUM was used to indicate that hardware supports general
> > checksum. Drop it assuming that if the hardware supports it, it is used.
> > 
> > Disabling offload for E830 in case of TSO isn't needed anymore as the
> > check for TSO is done in Tx path just before preparation of the special
> > GCS descriptor.
> > 
> > The commit from Fixes didn't introduce a bug, it just shown that the
> > driver is doing sth wrong with the checksum features.
> > 
> > Suggested-by: Jakub Ramaseuski <jramaseu@redhat.com>
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Fixes: 04c20a9356f2 ("net: skip offload for NETIF_F_IPV6_CSUM if ipv6 header contains extension")
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > ---
> Am I correct in thinking that this supersedes (really, properly fixes)
> the patch "ice: enable NETIF_F_HW_CSUM for GSO packets" at
> https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20260310150557.1138437-1-jramaseu@redhat.com/
> ?
> 
> Thanks,
> Jake

Yes, exactly. I think I linked it in cover letter, but maybe I should do
it also here.

Thanks
