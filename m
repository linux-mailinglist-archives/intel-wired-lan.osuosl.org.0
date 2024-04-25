Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B07AF8B17B3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Apr 2024 02:06:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3790A60EA9;
	Thu, 25 Apr 2024 00:06:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A9YxXkyM9b_U; Thu, 25 Apr 2024 00:06:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8501E60E7C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714003571;
	bh=2KED9dezxKYAmjL76tpQ25Uepeg/GMVgtRndyOkDXJA=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xa1WQB9i2tnumUm2y3fCTV8FD7WSnCGYA8T9eg7Mf9fG/IhWeH2Bcw27BPBRHb/KN
	 VN5xbytNg56b54pVB8RfOTB7WfIY627CdR1RAVGSiTPryvsRHp1FwJFwR8m8VA48RJ
	 MXewry2XLloZ7j/tFd+gYX8EjZnzUMEeJB0Cg3ZEMF1FiDlsdjHCre8fmjyTRnvZur
	 P5XP5WB9OnrAa/lyU7laqU8Kz0whjMXm8F2g89bdxKGdc+mBFM8ii/bIPBn/jXJT0W
	 kg5ouFfzzgKLrxIO7u9CfmBTbR4IlYjzgS54eYRLP+JuzE7mhkkQrE9+Hr8sfIY1Jh
	 BzVXDr+LHFfOg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8501E60E7C;
	Thu, 25 Apr 2024 00:06:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6999C1BF293
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Apr 2024 00:06:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 529F44086F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Apr 2024 00:06:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L9NdeC5oUJWf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Apr 2024 00:06:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E6E004071B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6E004071B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E6E004071B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Apr 2024 00:06:06 +0000 (UTC)
X-CSE-ConnectionGUID: uAhPuaC7RAmiFg8k5zpNLA==
X-CSE-MsgGUID: IeTVlfjoQ8u4Byd6OAs47Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11054"; a="21087136"
X-IronPort-AV: E=Sophos;i="6.07,227,1708416000"; d="scan'208";a="21087136"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 17:06:05 -0700
X-CSE-ConnectionGUID: uqinV3YNRRy49oLmFbxb7Q==
X-CSE-MsgGUID: Jz4t50uZSVuM8BA5pHh9XQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,227,1708416000"; d="scan'208";a="29671636"
Received: from unknown (HELO vcostago-mobl3) ([10.124.220.153])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 17:06:04 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Andrew Lunn <andrew@lunn.ch>, Corinna Vinschen <vinschen@redhat.com>
In-Reply-To: <033cce07-fe8f-42e6-8c27-7afee87fe13c@lunn.ch>
References: <20240423102455.901469-1-vinschen@redhat.com>
 <033cce07-fe8f-42e6-8c27-7afee87fe13c@lunn.ch>
Date: Wed, 24 Apr 2024 17:06:04 -0700
Message-ID: <8734raxq4z.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714003567; x=1745539567;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ZMJttUgpiTRRlwWUHCP4ks5oVHhmAM5wLTfN/UD/W0c=;
 b=dlC7BnbOGzHPidfccAF1AwWkgvEHICzfCZKgrd4lC+zfp1jYPfgeOepQ
 jsbVBhBPirIFWHxw/ki7RNarF3SaiWK38C6MKAd/X6K9VAU7/Kp3NjCMH
 ZIMMN9C6ohV0NhHpNnsSeSJN9W2c3U/WttkzQVch23r7lPFfwlVLdHknY
 +vqOqeaW482zijPENnJ/c+T9YhFWn1nbtPnJKjVAHwS0LN4tFqw8yyINg
 7HYm5AzzU3HTzLHpal37XMTVAjB0oFLzct1x0nwECZ8lcbgBUhfOPPiyo
 Cungoh/I3w2MC8qjmsTwFa5aB8yx508pJxaR+CfPxRZ8BnPmypPI5LQRI
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dlC7BnbO
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Andrew Lunn <andrew@lunn.ch> writes:

> On Tue, Apr 23, 2024 at 12:24:54PM +0200, Corinna Vinschen wrote:
>> During successful probe, igc logs this:
>> 
>> [    5.133667] igc 0000:01:00.0 (unnamed net_device) (uninitialized): PHC added
>>                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>> The reason is that igc_ptp_init() is called very early, even before
>> register_netdev() has been called. So the netdev_info() call works
>> on a partially uninitialized netdev.
>> 
>> Fix this by calling igc_ptp_init() after register_netdev(), right
>> after the media autosense check, just as in igb.  Add a comment,
>> just as in igb.
>
> The network stack can start sending and receiving packet before
> register_netdev() returns. This is typical of NFS root for example. Is
> there anything in igc_ptp_init() which could cause such packet
> transfers to explode?
>

There might be a very narrow window (probably impossible?), what I can
see is:

1. the netdevice is exposed to userspace;
2. userspace does the SIOCSHWTSTAMP ioctl() to enable TX timestamps;
3. userspace sends a packet that is going to be timestamped;

if this happens before igc_ptp_init() is called, adapter->ptp_tx_lock is
going to be uninitialized, and (3) is going to crash.

If there's anything that makes this impossible/extremely unlikely, the
patch looks good:

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>


Cheers,
-- 
Vinicius
