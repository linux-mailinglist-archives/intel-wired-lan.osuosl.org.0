Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2F08C0403
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 May 2024 20:02:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B8802404BF;
	Wed,  8 May 2024 18:02:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xANNkwpQ8bwi; Wed,  8 May 2024 18:02:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9B4E404D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715191344;
	bh=033iBF6mVyrr2NtrIgfoboYrIjOmpynOabJJnV/2Ia4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JRi7RbGIiRSfNAIBE0FsNdihZDok6rnjD7RlkkFZmeI21TLV5tmvJH+6POw7QYReD
	 N6fK0ol+LnSkpfXIHWxGIzFc1a94f6XO0w5X1woUZ5S2IQsuepgafGh5JRLRYfF3Ob
	 4DS0LywSD4eX4+b4dgvQN0gK0s9n2hkHm3BXV8YNDRlfr9EYcTxncTfps1lddChgKl
	 8un1QnZ0I2mOkoKfhAhTO5DqOP8QBfb8PNzpSgK6eKZ60tXHC9w5ORpOc9aAkf5Hal
	 eR7vxYWGy2jzZbvgHKmMspet2dRW5DUkR6pH++GhuxoAzJzzikgvEAt2vwhUGJx5QS
	 dmvh6S/nEMZbw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9B4E404D0;
	Wed,  8 May 2024 18:02:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BE9DE1BF41F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 18:02:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A7FCA40438
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 18:02:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2y5QR8XQpjD0 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 May 2024 18:02:20 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4291B403A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4291B403A8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4291B403A8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 18:02:20 +0000 (UTC)
X-CSE-ConnectionGUID: 4uqCuOjNRbm8dlUPugEjgw==
X-CSE-MsgGUID: HKBYJ6P4RQidzyK48puGrg==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="11200204"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="11200204"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 11:02:12 -0700
X-CSE-ConnectionGUID: 5Dud2CDiTOGfUDUU5xzjrw==
X-CSE-MsgGUID: NAOZO05YTjKchJ/XBg4Rsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="28944992"
Received: from smile.fi.intel.com ([10.237.72.54])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 11:02:08 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1s4lcD-00000005X4F-1ef0; Wed, 08 May 2024 21:02:05 +0300
Date: Wed, 8 May 2024 21:02:05 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <Zju-HVbo0lMsR6Ee@smile.fi.intel.com>
References: <20240508132315.1121086-1-andriy.shevchenko@linux.intel.com>
 <6ac025de-9264-4510-ba7f-f9a56c564a80@intel.com>
 <ZjuLW8jA3MuT0oih@smile.fi.intel.com>
 <5ab7ae5c-79d2-494e-8986-d18d4a8e74bb@intel.com>
 <4038b9d4-6618-46cc-bed8-a0ccd1c92cd2@intel.com>
 <SJ0PR11MB5866F14FA9B7D02BC97942F5E5E52@SJ0PR11MB5866.namprd11.prod.outlook.com>
 <18a6a31f-bccb-4d96-8503-1d80b5eb32e2@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <18a6a31f-bccb-4d96-8503-1d80b5eb32e2@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715191340; x=1746727340;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=sY9CUVNAfqtE1KTKFXhbixYNH/fSPbF+uxQ9ZNfixXU=;
 b=nByua/OSqFS1XTHfLox3SzmttP7PcTOsPoZFi4aPbu4cqFwwldqv2qFD
 /tce95IRpmkOXvdNuFV1IXNqYHuobmkaINzLWpzAkSF4/Sl7u9nP2eB8T
 vW4hoE+Z7QvTZYaJ3z/coCfZSUqHwiS5286H03OAUpWNVVUMYrKf0fEZC
 PYOqVHdmiS1oKFczSYzzbQ7bps2R/u1qFOZ39X+pS6GPuB9X4vMdg/Gnf
 IP0eysdKWsQPtIjdljx4C16TwGX+3rZQZFc8OlF4+z39welqE4qnmCcI7
 qQFyl2LGGyFmMDknWyDuX8bx6sZoFjTqgqQqXl33048MKhbZvc7e0mrF2
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nByua/OS
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/1] net: intel: Use *-y
 instead of *-objs in Makefile
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, May 08, 2024 at 10:58:37AM -0700, Jacob Keller wrote:
> On 5/8/2024 7:42 AM, Loktionov, Aleksandr wrote:
> >> From: Alexander Lobakin <aleksander.lobakin@intel.com>
> >> Date: Wed, 8 May 2024 16:39:21 +0200
> >>> From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> >>> Date: Wed, 8 May 2024 17:25:31 +0300
> >>>> On Wed, May 08, 2024 at 03:35:26PM +0200, Alexander Lobakin
> >> wrote:
> >>>>>> *-objs suffix is reserved rather for (user-space) host
> >> programs
> >>>>>> while usually *-y suffix is used for kernel drivers (although
> >>>>>> *-objs works for that purpose for now).
> >>>>>>
> >>>>>> Let's correct the old usages of *-objs in Makefiles.
> >>>>>
> >>>>> Wait, I was sure I've seen somewhere that -objs is more new and
> >>>>> preferred over -y.
> >>>>
> >>>> Then you are mistaken.
> >>>>
> >>>>> See recent dimlib comment where Florian changed -y to -objs for
> >>>>> example.
> >>>>
> >>>> So does he :-)
> >>>>
> >>>>> Any documentation reference that -objs is for userspace and we
> >>>>> should clearly use -y?
> >>>>
> >>>> Sure. Luckily it's documented in
> >> Documentation/kbuild/makefiles.rst
> >>>> "Composite Host Programs" (mind the meaning of the word
> >> "host"!).
> >>>
> >>> Oh okay, I see. `-objs` is indeed only mentioned in the host
> >> chapter.
> >>
> >> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> >>
> >> Thanks,
> >> Olek
> > 
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> 
> Yea, reading the makefiles.rst again, it does seem that -objs only is
> intended for host programs. The fact that it works now is an accident.
> Further use of -y is necessary as we also use module-$(CONFIG_SYMBOL) to
> resolve cases where we only include the files if the configuration is set.
> 
> Makes sense to clean this up.
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

Oops, just sent a v2 to address LKP findings. Can you look at it instead?

-- 
With Best Regards,
Andy Shevchenko


