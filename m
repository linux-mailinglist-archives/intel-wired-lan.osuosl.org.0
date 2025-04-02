Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C34DAA78F2C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Apr 2025 14:55:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 785B181FD8;
	Wed,  2 Apr 2025 12:55:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mj36xVwe56U1; Wed,  2 Apr 2025 12:55:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EBF8781FB2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743598548;
	bh=TdLDn5ebMoi5IoRX1UfNhgFBupSSImHmHddQcCj5OlQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=axpJX9tv483JA+CCP0Aeo7nRkJjHtIAdQ+5NQ1G2k0bk2BHHUPYxs40KGvvW8Oloj
	 w4A84vCBRL2V6Ieoctk1G2ERrtMq9YMYHu77ynU8vWAak1hIO0P1tQlaHgRBvr1nbF
	 mv83Yxx39KP5blHlfwknhvHAFFfB45hKlZfXILeXN/eWfO9vux/dnh2pDmB7drOwVf
	 z9TuUnKAxh9nqLnBHXbsBw2tcpJIq8EfK1OeLFDIkxZz+ojjKrBTbppmhq5LcevxCK
	 MRHbPgk/PNr5JR79WlLqSJ9a/F7opuvpJBfPuTfQ7Ob4pD8D/EBS2T7yimnxp7bdEp
	 24mraWZUmteTw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBF8781FB2;
	Wed,  2 Apr 2025 12:55:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A28C6117
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Apr 2025 12:55:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 88475413AA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Apr 2025 12:55:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B1DC1FwdZ4Hy for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Apr 2025 12:55:45 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D534B40B53
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D534B40B53
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D534B40B53
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Apr 2025 12:55:44 +0000 (UTC)
X-CSE-ConnectionGUID: 0LUhTadLT9CKoOAef9W9YA==
X-CSE-MsgGUID: EC1vIAeKQdeRsdt747YORA==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="55955137"
X-IronPort-AV: E=Sophos;i="6.15,182,1739865600"; d="scan'208";a="55955137"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 05:55:44 -0700
X-CSE-ConnectionGUID: zOjX9rwPToG2JDLyvrPKUA==
X-CSE-MsgGUID: LT6rlRGDQG61zNwAkljtKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,182,1739865600"; d="scan'208";a="126650218"
Received: from smile.fi.intel.com ([10.237.72.58])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 05:55:42 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1tzxd4-00000008ToG-2Zb4; Wed, 02 Apr 2025 15:55:38 +0300
Date: Wed, 2 Apr 2025 15:55:38 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, vbabka@suse.cz,
 torvalds@linux-foundation.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Message-ID: <Z-0zykUvrF-73MXI@smile.fi.intel.com>
References: <20250401134408.37312-1-przemyslaw.kitszel@intel.com>
 <Z-0SU8cYkTTbprSh@smile.fi.intel.com>
 <20250402122104.GK25239@noisy.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250402122104.GK25239@noisy.programming.kicks-ass.net>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743598545; x=1775134545;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=TXtLquoRRAqtrc02VbnTtQ9X9BjOAMh9LtUpk4wHJVY=;
 b=LSs8p4TLXKntODjuiLjsV3xe8XE1hMKVbTOLuYg7aLvJJZWapRbXcjU/
 XKNgUjBDeOEykp+XFBr2koeVRtETY7fCI6KooWWQLdYYAHsxwVwD/MFfD
 nJ13QaRIod5DKhI7dPECALqveoW4yDloFIW+D0XOqQPnaZFXiWSY299u7
 6iPitRKgev4ou10EZsuRyqAoTUAZ7s/MZP8tmNIi3pBSpZMqNXKBibFk8
 yNPPIllo/iCiVvCLcHJnUQcrUT6MECkWu+0vOWb7bSXmQdV+CsOiBhrSW
 F7huz5TWeXUbHaBCX7JgHHnw/W6WdbEHkuzTaKx8lTtPiwtlT2X7ZdgxU
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LSs8p4TL
Subject: Re: [Intel-wired-lan] [RFC] slab: introduce auto_kfree macro
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

On Wed, Apr 02, 2025 at 02:21:04PM +0200, Peter Zijlstra wrote:
> On Wed, Apr 02, 2025 at 01:32:51PM +0300, Andy Shevchenko wrote:
> > What would be better in my opinion is to have it something like DEFINE_*()
> > type, which will look more naturally in the current kernel codebase
> > (as we have tons of DEFINE_FOO().
> > 
> > 	DEFINE_AUTO_KFREE_VAR(name, struct foo);
> 
> Still weird. Much better to have the compiler complain about the
> obvious use of uninitialized.

That would be ideal!

-- 
With Best Regards,
Andy Shevchenko


