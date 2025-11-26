Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F14BEC884A3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Nov 2025 07:39:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C54E80B45;
	Wed, 26 Nov 2025 06:39:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O7mCjCggzKDU; Wed, 26 Nov 2025 06:39:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F21CC80B64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764139196;
	bh=pMs6tcdNQTF+Cn6OymZGq3gLvDjKjDhdriOY9hZrID4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=y8Ug1+O7/p/Gu3IRHZYBZhRsgoFSOvpHDtj/DCBsh4Qq4Xnu2QnBV4y+Y41AxBb8R
	 zsaxbzPAIi/vQTIQ/IVKl/lsAiqgZ4QwaWq1ArvvxLmiXEC1dKrX+I7vftraT8qtUF
	 rV2Bc4sDUQebUKV1k3ZbDy8oedn3HzBX1vzFcOGsomwN81adCStMbAbRdou7My3wFI
	 0L+/52/+nWb0ocDMdkw5PjMNR7pjOawGgDilLYK93UishDJtm/CYp7J9C7pUYD5WSR
	 Cr7YSZAEIN1jxdtI4HpvjMu1wZliqygBdzExWjLuLs+DvXRFVjP7NOTpvrwDnnFdBp
	 Ha/VuYvlfIvuw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F21CC80B64;
	Wed, 26 Nov 2025 06:39:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 41D97359
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 06:39:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 33CB680B24
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 06:39:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IRnKbI0_Di2f for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Nov 2025 06:39:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 43B3980B08
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43B3980B08
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 43B3980B08
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 06:39:52 +0000 (UTC)
X-CSE-ConnectionGUID: +TN19Qp/TO2Bciasa4JI2g==
X-CSE-MsgGUID: e3cvhUt/RWiFBaflV5D2XQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="65876012"
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="65876012"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 22:39:50 -0800
X-CSE-ConnectionGUID: Vy/WidHvQaKLNKHMSx02UA==
X-CSE-MsgGUID: jyiVWWu/TAiiaYdOp/sulg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="192490808"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.22])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 22:39:43 -0800
Date: Wed, 26 Nov 2025 08:39:41 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Message-ID: <aSagrR6mxkRexUDe@smile.fi.intel.com>
References: <20251124174239.941037-1-andriy.shevchenko@linux.intel.com>
 <abf25d3d-30af-479f-9342-9955ec23d92f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <abf25d3d-30af-479f-9342-9955ec23d92f@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764139193; x=1795675193;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=cmHqlZLrccBE/De0C42TuewRzFkW23E9YbzAIfFHCb8=;
 b=M6FFcu54JCzC075YCDW0tZGxWrMahu4MKCv+VI4/59T9QYeWgDY23UnB
 YmgLrSOEu1q2I8UYtiv/PQmxAJWDPRBVWKv1u1ZivZipMhQXfiL+QRpBm
 9o8jDPz2GBlNoywzM4jcrywdtfRJukSU+Ad4IoGQVLE2vh/orFSIRbeAY
 p/jYCJ47H/9b/K5H0lC4GCf9EDAqNRhkC1g9h4+ou3h4Wj5gV6QKBRdy7
 FK2dtRcwvSW6FAdDj0ZMazgoGV3/8dKEPXfnsZKPV+G7yu3qeXHZcETvm
 CikEdCvFUm/E/ywb6h3SbP14mdrNPjchK2QVCQH5+eUr0iWbqb5/MQZAX
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=M6FFcu54
Subject: Re: [Intel-wired-lan] [PATCH net v1 1/1] idpf: Fix kernel-doc
 descriptions to avoid warnings
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

On Wed, Nov 26, 2025 at 07:30:18AM +0100, Przemek Kitszel wrote:
> On 11/24/25 18:42, Andy Shevchenko wrote:
> > In many functions the Return section is missing. Fix kernel-doc
> > descriptions to address that and other warnings.
> > 
> > Before the change:
> > 
> > $ scripts/kernel-doc -none -Wreturn drivers/net/ethernet/intel/idpf/idpf_txrx.c 2>&1 | wc -l
> > 85

> this is small change and leaves the driver good for long future to come
> I think it is net-positive in terms of minor annoyances for rebase or
> backports, so:
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Thank you!

> side note:
> Alex did analogous work for the ice driver, and I stopped him going
> public, as it was counted in thousands lines changes for little benefit
> 
> usual rant about kdoc warnings:
> agghr!!

(And usual rant about warnings in Linux Next unrelated to my code)

Yes, the problem is that there are warnings and, if your tree is in Linux Next,
make Stephen's and others lives easier by not having / producing new ones.

So, please, send fixes for ice as well at some point. It can be just a single
change (in case one wants to backport it). In _long term_ it's much better than
(what is happening with ice case) increasing a technical debt.

-- 
With Best Regards,
Andy Shevchenko


