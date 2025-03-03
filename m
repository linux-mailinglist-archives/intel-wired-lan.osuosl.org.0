Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D9124A4C25B
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Mar 2025 14:49:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2ED940DB2;
	Mon,  3 Mar 2025 13:49:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1IMGeDuesFLW; Mon,  3 Mar 2025 13:49:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F0C140D5F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741009742;
	bh=fQIWx2nmMG91M2bKYSGCCMU7fUeJQJZ2n9bIALNGd4I=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xAruVolwbsD/hwB2c7ANkCoeoPcFO2Tz0GQsOzSAr1eldZ5W16Jbm1d4Ph3SVl5Np
	 P1IGkH0tYTAtuGC7+l3n7yJPv868UpHi1o5SOV/eOZ7Z9IMsVMMYxCBVdm3QR4TawF
	 jHStdmLIrHKdVr2fRputi4eS0j4S3gONFIsfpVx/K0A4X6fA3zef3DyGkzojSmB603
	 ymWDRT1rF4PxIzeSEydr1nPOXHqSGr5tIdd3EBFaBfPvlY64Ibl1yAwejaKSZuuO+K
	 v45mnWT4wYh4NM+QAApqxY/u04DJbmJSCKHZC0n0nCoYyEoO1w0d7FWg45YVb9IsHO
	 dorIankhgBgHg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F0C140D5F;
	Mon,  3 Mar 2025 13:49:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 79AC4D2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 13:49:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 68DDB82062
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 13:49:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rgv94MNHRSpv for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Mar 2025 13:48:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9FBBE82061
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9FBBE82061
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9FBBE82061
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 13:48:59 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1tp6A2-001oqB-J6; Mon, 03 Mar 2025 14:48:46 +0100
Date: Mon, 3 Mar 2025 14:48:46 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: joaomboni <joaoboni017@gmail.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <de6bcb17-964e-475d-b535-ce153760d9dc@lunn.ch>
References: <20250303131155.74189-1-joaoboni017@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250303131155.74189-1-joaoboni017@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=fQIWx2nmMG91M2bKYSGCCMU7fUeJQJZ2n9bIALNGd4I=; b=3hivcp3hyikl1qgpt2K1DfODDd
 HqQjl6fQN9JIlWmtUUsTt8EBoZkGu/Ckdz39k91YUBofEcKYafu/WEtVyeSvj2kA9YpjKKMZmlPY/
 Hqaqwpg9seKtd1Qjxv8JShHhcQhnvlEdpCt1pb7a42/KCURdRkAC2x4dNWFhRmwIW82g=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=3hivcp3h
Subject: Re: [Intel-wired-lan] 
 =?iso-8859-1?q?=5BPATCH=5D_e1000=3A_Adicionado?=
 =?iso-8859-1?q?_const_para_melhorar_a_seguran=E7a_do_c=F3digo?=
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

On Mon, Mar 03, 2025 at 10:11:55AM -0300, joaomboni wrote:
> Signed-off-by: joaomboni <joaoboni017@gmail.com>

Sorry, but the Subject: line needs to be in English.

And the name in Signed-off-by: needs to be a real name.

The code change itself looks sensible.

    Andrew

---
pw-bot: cr
