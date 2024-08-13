Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 948F495092D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Aug 2024 17:31:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4452C40A75;
	Tue, 13 Aug 2024 15:31:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YxDlVFtJtYEN; Tue, 13 Aug 2024 15:31:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7822640A64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723563114;
	bh=JvGuBTyd6CkM/JfeBAVqM5+z3M1momT5EW03Ng3jRC8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7OYQzCuKWxytESBbfb/GtjDWdweaBiJBlyYcnbFVs71q2TKOek1COLHRUHHvckA+c
	 pphxvan5c0KyCWMa9SrQ8ELc40ljlvQkwojlPqGOTus5psM1npoqU8bnhKpmcgOI6M
	 vYf4olmzLauHtIopIDRI3sJ6oRNt2vQC89zf3yx/88dmDG/gQmMZ0hpUl3Te3TbMu5
	 jLYU5gD12yeOQGom+KEXbB9UNqWNrSPXfXmxXpZ4ChgCDn0gdgSdkhqPxeEPebynru
	 G5JCO6O9e4djVFD/ZCLfRzs96ja9dbel2DbsE1GJK99gawrsidy54oWpP0BX5ppE0O
	 5enu2NcJ9sQWA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7822640A64;
	Tue, 13 Aug 2024 15:31:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 51E931BF295
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 15:31:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3DB1840277
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 15:31:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5i1SquoXHTPH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Aug 2024 15:31:51 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 332174024A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 332174024A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 332174024A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 15:31:50 +0000 (UTC)
X-CSE-ConnectionGUID: GaIjXyAjTiO1R00OSnCMdQ==
X-CSE-MsgGUID: gwX8G3HnRKKPJOa0s0DEoQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="32879938"
X-IronPort-AV: E=Sophos;i="6.09,286,1716274800"; d="scan'208";a="32879938"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 08:31:44 -0700
X-CSE-ConnectionGUID: 4Y+QaE7mTeSdplh4nLkVzg==
X-CSE-MsgGUID: WMHq63J7REOVJFrcKSFZ/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,286,1716274800"; d="scan'208";a="63122719"
Received: from dosuchow-mobl2.ger.corp.intel.com (HELO [10.245.130.66])
 ([10.245.130.66])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 08:31:41 -0700
Message-ID: <1c0db79b-dd8c-4ab8-b108-42395a737836@linux.intel.com>
Date: Tue, 13 Aug 2024 17:31:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
References: <20240812125009.62635-1-dawid.osuchowski@linux.intel.com>
 <ZrtIO2durwKP7ue/@boxer>
Content-Language: pl
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
In-Reply-To: <ZrtIO2durwKP7ue/@boxer>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723563111; x=1755099111;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=q1Fbv9kYJD8YduTv5pSps0LqCNpWxgRip9oCIXzAb8U=;
 b=jwDayWftkYYvg7+xEPO295SVqjAmrLpT5HeUDtxhepFiGLP3ITXS7O2Z
 kiUK9WbCJqsJ5Z2MyhWplyk3ZHQIGJCn9urFHmmk67kev6iDVVj1W5Pvb
 c+/mLIFtBsM3OM6vgNiLx6W4b1pVCQgEolfexwhLCNuvADoecwKJxEvhi
 Dmxtb8u9aETDSBtq2ov8TAiGYkBxpvyAgwuDoLUXtbl2k8gKGnrMA0olk
 UxMWnOuAV8N0n079yX+D/6GHVi7SyP+BuVKxEd+hwuzZAkUspeG9SZMUd
 4/8NRlUO2XJye1XarS5TNnfdRdGgo8GaW9mGXQVXknzC5KoZPLNt4u2Oz
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jwDayWft
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: Add
 netif_device_attach/detach into PF reset flow
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
 Igor Bagnucki <igor.bagnucki@intel.com>, Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 13.08.2024 13:49, Maciej Fijalkowski wrote:
> What about other intel drivers tho?

I have not performed detailed analysis of other intel ethernet drivers 
in this regard, but it is surely a topic worth investigating.

--Dawid
