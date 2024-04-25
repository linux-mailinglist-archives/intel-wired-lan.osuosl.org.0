Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E393A8B2855
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Apr 2024 20:46:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 759C740F4B;
	Thu, 25 Apr 2024 18:46:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q6F4jLBsbHec; Thu, 25 Apr 2024 18:46:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A235410C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714070792;
	bh=oHiZ5Zn9tsCqNJ1BNE+RN3qR9v/z0I5MXTQ5Y5xO2vY=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YKsR1L8G111RPJGN4ziXMQF5ZhuENCDbITI32sFe3yHzr05Y1SKOx6xH5c8FLvv5u
	 lIkNvazg4uF2YZ2GkbKPTJrZFyuxlNf/qfv1gDA4k7jlOs+YZA6/1O48oKAss54vDj
	 AsaDdLLE+nivJ35IdKNW9JCQcwHESIQ1cBi6LB1xFOCGAU8VHiZWEPpZHjYu5uyJnM
	 ZIXD6mdnPT1+f6BKeam6go2FMi/c6FySe+4Z4AWYK3bi7B4ZQBH3Ft4P6I+nldJy31
	 hvUslGEuigCU0nxIMYLmgqHlm1Pd8qWkaIrL1kBcgaN3HGhd6n9YqvgX0fbcGNDRir
	 cktf/owMO4q0w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A235410C6;
	Thu, 25 Apr 2024 18:46:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BC1A41BF3C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Apr 2024 18:46:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A7F6760676
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Apr 2024 18:46:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EEIdFWDSQcTn for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Apr 2024 18:46:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E725760645
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E725760645
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E725760645
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Apr 2024 18:46:28 +0000 (UTC)
X-CSE-ConnectionGUID: 0JKzeZztQOGEOsXuYbcqbg==
X-CSE-MsgGUID: Qe21O0OkT8WC12qmUNKSww==
X-IronPort-AV: E=McAfee;i="6600,9927,11055"; a="13569737"
X-IronPort-AV: E=Sophos;i="6.07,230,1708416000"; d="scan'208";a="13569737"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2024 11:46:27 -0700
X-CSE-ConnectionGUID: pkPPmTyARQKBAQElP1o99A==
X-CSE-MsgGUID: itgeq33yQP+DFUv66C/KQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,230,1708416000"; d="scan'208";a="25666087"
Received: from unknown (HELO vcostago-mobl3) ([10.124.220.196])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2024 11:46:27 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Corinna Vinschen <vinschen@redhat.com>
In-Reply-To: <ZioKlQR9z8RWGFAB@calimero.vinschen.de>
References: <20240423102455.901469-1-vinschen@redhat.com>
 <033cce07-fe8f-42e6-8c27-7afee87fe13c@lunn.ch> <8734raxq4z.fsf@intel.com>
 <ZioKlQR9z8RWGFAB@calimero.vinschen.de>
Date: Thu, 25 Apr 2024 11:46:26 -0700
Message-ID: <87r0etwa9p.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714070789; x=1745606789;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ZsDqYu4ojuh9VuiJbaNfZoanFnnda5qja2yT5h3wsto=;
 b=ACC6a8sYWUGUej2p+Xo+Fa7Ql0P0AUWVPs/OFKwY5+EQwuMhwkYE4de9
 9P1Dtfn0d7K2vcBwR9RhAoFQZxk/+Qwyt1wHn0DPGw14FdJ0LUFSqyvg/
 8Xd1O+Y6oT1Rd6WWjVlb/NaKFRBN6PBl+IP/BDOe5CbqFTnidfz1XK94a
 gPZY6/Btzb4d7yA02Ku3541cvoaGvxvmjetm27SlmxiHyRA3Dm6pDOyIW
 N5+FHVgNu/uYmFzeO+ylx6CBwSFf3ZQcKoskc5lArShDHbiroFIjRA8KQ
 GM225AWen+CCgcK475TXpYSYqRPfOl7U6pvskGe2AC8mt81zxVEVSouzB
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ACC6a8sY
Subject: Re: [Intel-wired-lan] [PATCH] igc: fix a log entry using
 uninitialized netdev
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
Cc: Andrew Lunn <andrew@lunn.ch>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Corinna Vinschen <vinschen@redhat.com> writes:

> On Apr 24 17:06, Vinicius Costa Gomes wrote:
>> Andrew Lunn <andrew@lunn.ch> writes:
>> 
>> > On Tue, Apr 23, 2024 at 12:24:54PM +0200, Corinna Vinschen wrote:
>> >> During successful probe, igc logs this:
>> >> 
>> >> [    5.133667] igc 0000:01:00.0 (unnamed net_device) (uninitialized): PHC added
>> >>                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>> >> The reason is that igc_ptp_init() is called very early, even before
>> >> register_netdev() has been called. So the netdev_info() call works
>> >> on a partially uninitialized netdev.
>> >> 
>> >> Fix this by calling igc_ptp_init() after register_netdev(), right
>> >> after the media autosense check, just as in igb.  Add a comment,
>> >> just as in igb.
>> >
>> > The network stack can start sending and receiving packet before
>> > register_netdev() returns. This is typical of NFS root for example. Is
>> > there anything in igc_ptp_init() which could cause such packet
>> > transfers to explode?
>> >
>> 
>> There might be a very narrow window (probably impossible?), what I can
>> see is:
>> 
>> 1. the netdevice is exposed to userspace;
>> 2. userspace does the SIOCSHWTSTAMP ioctl() to enable TX timestamps;
>> 3. userspace sends a packet that is going to be timestamped;
>> 
>> if this happens before igc_ptp_init() is called, adapter->ptp_tx_lock is
>> going to be uninitialized, and (3) is going to crash.
>
> The same would then be possible on igb as well, wouldn't it?
>

Given how many years igb is being used, perhaps "possible" is too strong
:-)

On igb what exists is slightly different, as there's no ptp_tx_lock
there, the "problem" there is trying to enqueue a job on a workqueue
that is going to be uninitialized, during this time window.

And to be sure, I am still uncertain that this is possible.

>
>> If there's anything that makes this impossible/extremely unlikely, the
>> patch looks good:
>> 
>> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>> 
>> 
>> Cheers,
>> -- 
>> Vinicius
>
>
> Corinna
>

Cheers,
-- 
Vinicius
