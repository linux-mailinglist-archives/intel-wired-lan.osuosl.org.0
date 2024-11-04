Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 436FF9BB333
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 12:27:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E118B606F4;
	Mon,  4 Nov 2024 11:27:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pkx7bPX6ecAi; Mon,  4 Nov 2024 11:27:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F3D05606FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730719646;
	bh=bdv4pRMNhKguS/k0c6ThBw6Iu2lFS2diyChBC4slE7I=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1tbcIVo4tx2VSkQcZA4z3P1KlYBHqQ35iNilXvBLL0QKzT1ueD/YB7827jfDtX5nQ
	 eWygh4s++5Ai6KkuG0CuTHfY6CyLUp6hj9V4TvKhDqZ9vFdiad6G6L4xWWxNsTEcbI
	 IZIraXKv6md+9QPXLM2+H6K5qTQZ/pXWLVidl1TaZZ3BpwShBCNyB/68Ld3lH3KT3W
	 bc9soeI65SYuijug4FOok220FCY7Ko8Q8CPp5+OwJvNH+E5t6aklGeQFkRPyOYLzos
	 LavEoGpPTsgA85raTG8h0J39WD28Vsgqpc+7w4S7y90T5BeXDNgtNRf8buO6UWVlgj
	 ksq2TFsdmOy5A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F3D05606FA;
	Mon,  4 Nov 2024 11:27:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 21A7C723
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 11:27:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1C0DF403DB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 11:27:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 99k4krBoR69x for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 11:27:23 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7E107403C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E107403C9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7E107403C9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 11:27:22 +0000 (UTC)
X-CSE-ConnectionGUID: iFRiDiPgR7GNNEZWFYZ4Bw==
X-CSE-MsgGUID: CiQwagFAS+a20O/DCNfOZg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30589068"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30589068"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 03:27:21 -0800
X-CSE-ConnectionGUID: 6dM8c9XQRPa5zvtVi6vc4Q==
X-CSE-MsgGUID: /SqGGiPXQHuBuF+PQwm5GQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="83559045"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 03:27:18 -0800
Date: Mon, 4 Nov 2024 12:24:38 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: David Laight <David.Laight@aculab.com>, wojciech.drewek@intel.com,
 marcin.szycik@intel.com, netdev@vger.kernel.org,
 konrad.knitter@intel.com, pawel.chmielewski@intel.com,
 horms@kernel.org, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com,
 jacob.e.keller@intel.com, jiri@resnulli.us, przemyslaw.kitszel@intel.com
Message-ID: <Zyiu9phq8/EchHxd@mev-dev.igk.intel.com>
References: <20241028100341.16631-1-michal.swiatkowski@linux.intel.com>
 <20241028100341.16631-3-michal.swiatkowski@linux.intel.com>
 <CADEbmW0=G8u7Y8L2fFTzan8S+Uz04nAMC+-dkj-rQb_izK88pg@mail.gmail.com>
 <ZyhxmxnxPcLk2ZcX@mev-dev.igk.intel.com>
 <ad5bf0e312d44737a18c076ab2990924@AcuMS.aculab.com>
 <840b32a0-9346-4576-97ba-17af12eb4db4@molgen.mpg.de>
 <478248d8-559b-4324-a566-8ce691993018@molgen.mpg.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <478248d8-559b-4324-a566-8ce691993018@molgen.mpg.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730719642; x=1762255642;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Fry7u0FCV7hEmGhDdvK6TiCYO+iZUrJRnhJBv25/1aQ=;
 b=l25Z6U4OUlcVA4esnEEAfDrj7K5uABteHXTRR7A2uinba0bv9Vr6Omat
 UViUj+TJag3R7AAOQLxp6+sJkJ6UzMgtnyyoxE4Uf2OA0w3yaov2UhKkc
 nGgI6HYmsTJN3Sia20nZsLkE+UzK41vxMqwL2ZJR171aO2Tc9UgD5ndF5
 ECOQwiru095FOPLvZUJEG5f8Ft5Dj4ejRxamDdl9yyhVx09Ex2QYhTggV
 xVytFN7ig+QndktCR1xAr0zceOtiVE70OXEIBlTAAAqPPr5QU0WL95rZ/
 qR46Jhlhq/sSNYSVm/yOjeaAZtfOajcUcBqtQrnVe+6Qkp3U8goXMm9ZV
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=l25Z6U4O
Subject: Re: [Intel-wired-lan] Small Integers: Big Penalty
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

On Mon, Nov 04, 2024 at 10:12:14AM +0100, Paul Menzel wrote:
> [Cc: -nex.sw.ncis.nat.hpm.dev@intel.com (550 #5.1.0 Address rejected.)]
> 
> Am 04.11.24 um 10:09 schrieb Paul Menzel:
> > Dear David, dear Michal,
> > 
> > 
> > Am 04.11.24 um 09:51 schrieb David Laight:
> > > From: Michal Swiatkowski
> > > > Sent: 04 November 2024 07:03
> > > ...
> > > > > The type of the devlink parameters msix_vec_per_pf_{min,max} is
> > > > > specified as u32, so you must use value.vu32 everywhere you work with
> > > > > them, not vu16.
> > > > > 
> > > > 
> > > > I will change it.
> > > 
> > > You also need a pretty good reason to use u16 anywhere at all.
> > > Just because the domain of the value is small doesn't mean the
> > > best type isn't [unsigned] int.
> > > 
> > > Any arithmetic (particularly on non x86) is likely to increase
> > > the code size above any perceived data saving.
> > 
> > In 2012 Scott Duplichan wrote *Small Integers: Big Penalty* [1]. Of
> > course you always should measure yourself.
> > 

Yeah, I chose it, because previously it was stored in u16. I will change
it to u32 too, as it is stored in structure that doesn't really need to
be small.

Thanks for comments and link to the article.
Michal

> > 
> > Kind regards,
> > 
> > Paul
> > 
> > 
> > [1]: https://notabs.org/coding/smallIntsBigPenalty.htm
