Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 008CE8B163B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Apr 2024 00:34:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D89CD60E87;
	Wed, 24 Apr 2024 22:34:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iuOYbMwxSOC0; Wed, 24 Apr 2024 22:34:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 432DF60E7D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713998083;
	bh=vZ3B6dq2zPnL83S+QfF4z13TMNF7T6rBVnaRE/Ud6yc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Jc9JEeGcnIqQKzCL/NIWC3AvbZgOdIjHycYmkCXWisyWQrwvXb1oAQYD013VHpfBX
	 5PCvIBkpSDtARzWphOBtiE9YqhztDViTL9VxrPlnx8FMBjLjZza308FsUHTB5xvreu
	 rCjdJTBnL07WhL16IblFqRZpzj1kivoc2k/yz+sS1F4REynqxgSB8Jw6JmSjFDqOUa
	 xX98v44cMDaCuHrUaH24bS4i5cAywi11ZnsBdvOEUzSf/o42GLgH/m/2OolyGBuTNR
	 TyBhaYkQgW1qGdG+Iv59WWy0ZX4g+1pu5q/k2tilOCP/SOzlESd3K1IfUdLDVB23lA
	 +mBbzoa11oxGA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 432DF60E7D;
	Wed, 24 Apr 2024 22:34:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 530E61BF326
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 22:34:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3D5958184F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 22:34:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9osIAMxDDn5E for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Apr 2024 22:34:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3DD1D817C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3DD1D817C3
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3DD1D817C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 22:34:39 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rzlCB-00DtSt-Vq; Thu, 25 Apr 2024 00:34:31 +0200
Date: Thu, 25 Apr 2024 00:34:31 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Corinna Vinschen <vinschen@redhat.com>
Message-ID: <033cce07-fe8f-42e6-8c27-7afee87fe13c@lunn.ch>
References: <20240423102455.901469-1-vinschen@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240423102455.901469-1-vinschen@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=vZ3B6dq2zPnL83S+QfF4z13TMNF7T6rBVnaRE/Ud6yc=; b=JyNFpLEMtqDJctphOR6y3yPRMl
 7bqs7eJ6ihFsW2Piu5j/4nFer0bvYUlZwfri6guvSjZWTbGi9vXKzirUokby+sMNCxkMh/ZVxCtCK
 KOUns3XzfYnIO07NHDbaQnxUOTxjy/gvxcLxBmfdklaCO7q4h/dbZee9C2WT1KYxDhxg=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=JyNFpLEM
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

On Tue, Apr 23, 2024 at 12:24:54PM +0200, Corinna Vinschen wrote:
> During successful probe, igc logs this:
> 
> [    5.133667] igc 0000:01:00.0 (unnamed net_device) (uninitialized): PHC added
>                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> The reason is that igc_ptp_init() is called very early, even before
> register_netdev() has been called. So the netdev_info() call works
> on a partially uninitialized netdev.
> 
> Fix this by calling igc_ptp_init() after register_netdev(), right
> after the media autosense check, just as in igb.  Add a comment,
> just as in igb.

The network stack can start sending and receiving packet before
register_netdev() returns. This is typical of NFS root for example. Is
there anything in igc_ptp_init() which could cause such packet
transfers to explode?

A better fix is to allocate the device name earlier. A few drivers
call dev_alloc_name().

     Andrew
