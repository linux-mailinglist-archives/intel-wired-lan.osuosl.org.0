Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A6C826011
	for <lists+intel-wired-lan@lfdr.de>; Sat,  6 Jan 2024 16:20:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D305742171;
	Sat,  6 Jan 2024 15:20:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D305742171
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704554428;
	bh=XIFo+UKJoeIc8sAE9XG4D+EgtsoZXoRCscFuGsX4hjw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jZnR5VxrRybpwelGAbgMTb+ZkVPXreDEABi/egaGpEeo08vLAFRvBIKaqBzFozYpQ
	 BEMJbDJmhJUMF1xguwzB0/IvMoTRx7Jme0DSDrHuYUADsy4wY/MPYXzmna7+9mckW6
	 JShUQ4dq9DJQnkJx/jlu+SRhRbpjBZLcbwinsW7mkk4dqZLZ/Y9GnAOoUzWL07DJ4g
	 v4P9topVLJZpjwr/jp36wW47s2FYYB1hp2if3Nr7VW3VFHivnk5vVMH69dIaMrlUgv
	 HHOwVg9g2a3zakn+dyOopv8tOO+WwLt/GqnyaRLiYr2kKri3Y3Ob/I1hAvESYD/b8D
	 Tt/wn+o8q0csA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QDhLNHmloL-l; Sat,  6 Jan 2024 15:20:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA2FA42169;
	Sat,  6 Jan 2024 15:20:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA2FA42169
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9E41E1BF299
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Jan 2024 15:20:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 82AF142169
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Jan 2024 15:20:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82AF142169
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uXZenBpYKoJv for <intel-wired-lan@lists.osuosl.org>;
 Sat,  6 Jan 2024 15:20:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8DA7842159
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Jan 2024 15:20:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8DA7842159
X-IronPort-AV: E=McAfee;i="6600,9927,10945"; a="464064412"
X-IronPort-AV: E=Sophos;i="6.04,337,1695711600"; d="scan'208";a="464064412"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2024 07:20:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10945"; a="784455554"
X-IronPort-AV: E=Sophos;i="6.04,337,1695711600"; d="scan'208";a="784455554"
Received: from smile.fi.intel.com ([10.237.72.54])
 by fmsmga007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2024 07:20:14 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1rM8T4-0000000BwIF-3F4d; Sat, 06 Jan 2024 17:20:10 +0200
Date: Sat, 6 Jan 2024 17:20:10 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: lakshmi.sowjanya.d@intel.com
Message-ID: <ZZlvqvYQQuse_P4E@smile.fi.intel.com>
References: <20240103115602.19044-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240103115602.19044-1-lakshmi.sowjanya.d@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704554421; x=1736090421;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=JaXjLa9V7CSKfBnBChZbrxw0v/a5OfTir5VslolG6pc=;
 b=XJ6+nsSst4aNoYFRh3GmLOEg1iQk8/K16R50ST2Q/EyfS70yQro5H3po
 +HBU4OjAuNyVPCzHHwFUvSg5RChOOn4vu25kFvk0esS4rqZedVojqMb8c
 8hk98pqyyykLQ3o00Y3MEoZPbqT2d4SepNH1F5KGyRCvJKPr10eizH9Pr
 Tn4t5UJ0z7HyeAfaCc3yQ0uI09LW2w/wV5gN5ENjTacAzudpWY82F4/+/
 Fbo0oG99z21g7HvgBaqcmXvvxMoo3Xt1/fPoIFoS4ApJaaRmN0PEfXw10
 sTwhzPNEfbFczdqAI6E/DQv72ANAPDBWogqSjPaBjFa0ugtjkn0bUpZhW
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XJ6+nsSs
Subject: Re: [Intel-wired-lan] [RFC PATCH v3 00/11] Add support for Intel
 PPS Generator
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
Cc: linux-doc@vger.kernel.org, mallikarjunappa.sangannavar@intel.com,
 alexandre.torgue@foss.st.com, perex@perex.cz, anthony.l.nguyen@intel.com,
 thejesh.reddy.t.r@intel.com, christopher.s.hall@intel.com, corbet@lwn.net,
 x86@kernel.org, jesse.brandeburg@intel.com, joabreu@synopsys.com,
 intel-wired-lan@lists.osuosl.org, linux-sound@vger.kernel.org,
 tglx@linutronix.de, giometti@enneenne.com, netdev@vger.kernel.org,
 pandith.n@intel.com, eddie.dong@intel.com, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, jstultz@google.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jan 03, 2024 at 05:25:51PM +0530, lakshmi.sowjanya.d@intel.com wrote:
> From: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
> 
> The goal of the PPS(Pulse Per Second) hardware/software is to generate a
> signal from the system on a wire so that some third-party hardware can
> observe that signal and judge how close the system's time is to another
> system or piece of hardware.
> 
> Existing methods (like parallel ports) require software to flip a bit at
> just the right time to create a PPS signal. Many things can prevent
> software from doing this precisely. This (Timed I/O) method is better
> because software only "arms" the hardware in advance and then depends on
> the hardware to "fire" and flip the signal at just the right time.
> 
> To generate a PPS signal with this new hardware, the kernel wakes up
> twice a second, once for 1->0 edge and other for the 0->1 edge. It does
> this shortly (~10ms) before the actual change in the signal needs to be
> made. It computes the TSC value at which edge will happen, convert to a
> value hardware understands and program this value to Timed I/O hardware.
> The actual edge transition happens without any further action from the
> kernel.
> 
> The result here is a signal coming out of the system that is roughly
> 1,000 times more accurate than the old methods. If the system is heavily
> loaded, the difference in accuracy is larger in old methods.
> Facebook and Google are the customers that use this feature.
> 
> Application Interface:
> The API to use Timed I/O is very simple. It is enabled and disabled by
> writing a '1' or '0' value to the sysfs enable attribute associated with
> the Timed I/O PPS device. Each Timed I/O pin is represented by a PPS
> device. When enabled, a pulse-per-second(PPS) synchronized with the
> system clock is continuously produced on the Timed I/O pin, otherwise it
> is pulled low.
> 
> The Timed I/O signal on the motherboard is enabled in the BIOS setup.

At some point you should announce v1 of the series. RFC is usually being
neglected by many (busy) maintainers.

-- 
With Best Regards,
Andy Shevchenko


