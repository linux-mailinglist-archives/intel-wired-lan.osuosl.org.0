Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D40A78C6D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Apr 2025 12:33:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2198D60A57;
	Wed,  2 Apr 2025 10:33:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pAfVP7SoRPW4; Wed,  2 Apr 2025 10:33:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 74ACF60BFF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743589998;
	bh=eUvCGED7xu+Is2PLjm8dDuOWzRFSd+JT+RSSDf85Q6c=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TDKMwejuA4OrNLO0W+6ysuEXw9TxXVm2tWEwJf3nFhXSTkWTHYbOsPnJHV/ODMiES
	 HxlJFV5iQcCOWjHHsTBFO0tFnoN3q3t3GgLIelJ+9/x9nojOqKGlkEozwd3TFtVU6j
	 jziCkTs1CpDD42E8VsaIq9N1tO02wVAj5YGyzZ7Io8Guwcv/pLuYGZPIVsv+X75ElD
	 HCq98chk/ecKmDLrEK6dsbBk5lmrj4JvS+wcW8kRUvRhVaV2M8HmDieffNESsjwXT+
	 WlFxcmBMSreP41ito+DFdxisu45ozqeeZmcEcgPeli2bTFtBNpa9QoNVh3jMAcX7JF
	 N61K/kq8Dtdhg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 74ACF60BFF;
	Wed,  2 Apr 2025 10:33:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3D1F411F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Apr 2025 10:33:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2271340C54
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Apr 2025 10:33:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xeZ6goE3hEEt for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Apr 2025 10:33:16 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4977941276
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4977941276
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4977941276
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Apr 2025 10:33:16 +0000 (UTC)
X-CSE-ConnectionGUID: bogLm6yfRVKXWaVjh2oi1Q==
X-CSE-MsgGUID: RMFFgB12RiSunYIKuou/2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="62346685"
X-IronPort-AV: E=Sophos;i="6.14,182,1736841600"; d="scan'208";a="62346685"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 03:32:58 -0700
X-CSE-ConnectionGUID: jnKqawtdRCC7ytoiJ+6FvA==
X-CSE-MsgGUID: 9Y43AS5zQbiCJvtQWGGu+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,182,1736841600"; d="scan'208";a="126417413"
Received: from smile.fi.intel.com ([10.237.72.58])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 03:32:55 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1tzvOu-00000008RE3-0xzR; Wed, 02 Apr 2025 13:32:52 +0300
Date: Wed, 2 Apr 2025 13:32:51 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: linux-kernel@vger.kernel.org, linux-mm@kvack.org, vbabka@suse.cz,
 torvalds@linux-foundation.org, peterz@infradead.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <Z-0SU8cYkTTbprSh@smile.fi.intel.com>
References: <20250401134408.37312-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250401134408.37312-1-przemyslaw.kitszel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743589997; x=1775125997;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=uzgVRHkC0/6oVwMh4YG7sDY5ZqY1Wc1ZMefrtNkrfxw=;
 b=ZNR0e/ifFoCRm1YcC0C88pk/IH+Dcn6W0RkU9/gTTAMazpwH9jGK/Y13
 wg6swhSoOW0cgtHgTKG/QcIIjBFpD2EWpoN020W1DrKMh1ghAWMeT+Wjb
 MMYK+CZta4aywY8/Fbizu8kDhAeryyaD4GxWzkOfWpew43RL7t5FxkYFo
 B0sTQGMTfx+1hEBvbJQCZmxKZK9D7JgoifMQAFb0MM/JHzPMxizko/dON
 bxwSa9KsmscELSLPtmSEBm4ie5PS706Fl+rmYBANnFDYdzWlPnRi6d8+m
 RzQcQRHDDIegGuPeh63sROJwWsIaCuEzhuR52dpPlKBlvVvp6K+l/YnWD
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZNR0e/if
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

On Tue, Apr 01, 2025 at 03:44:08PM +0200, Przemek Kitszel wrote:
> Add auto_kfree macro that acts as a higher level wrapper for manual
> __free(kfree) invocation, and sets the pointer to NULL - to have both
> well defined behavior also for the case code would lack other assignement.
> 
> Consider the following code:
> int my_foo(int arg)
> {
> 	struct my_dev_foo *foo __free(kfree); /* no assignement */
> 
> 	foo = kzalloc(sizeof(*foo), GFP_KERNEL);
> 	/* ... */
> }
> 
> So far it is fine and even optimal in terms of not assigning when
> not needed. But it is typical to don't touch (and sadly to don't
> think about) code that is not related to the change, so let's consider
> an extension to the above, namely an "early return" style to check
> arg prior to allocation:
> int my_foo(int arg)
> {
>         struct my_dev_foo *foo __free(kfree); /* no assignement */
> +
> +	if (!arg)
> +		return -EINVAL;
>         foo = kzalloc(sizeof(*foo), GFP_KERNEL);
>         /* ... */
> }
> Now we have uninitialized foo passed to kfree, what likely will crash.
> One could argue that `= NULL` should be added to this patch, but it is
> easy to forgot, especially when the foo declaration is outside of the
> default git context.
> 
> With new auto_kfree, we simply will start with
> 	struct my_dev_foo *foo auto_kfree;
> and be safe against future extensions.
> 
> I believe this will open up way for broader adoption of Scope Based
> Resource Management, say in networking.
> I also believe that my proposed name is special enough that it will
> be easy to know/spot that the assignement is hidden.


I understand the issue and the problem it solves, but...

> +#define auto_kfree __free(kfree) = NULL

...I do not like this syntax at all (note, you forgot to show the result
in the code how it will look like).

What would be better in my opinion is to have it something like DEFINE_*()
type, which will look more naturally in the current kernel codebase
(as we have tons of DEFINE_FOO().

	DEFINE_AUTO_KFREE_VAR(name, struct foo);

with equivalent to

	struct foo *name __free(kfree) = NULL

-- 
With Best Regards,
Andy Shevchenko


