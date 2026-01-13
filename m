Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DA7D195A8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 15:15:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 78A806157F;
	Tue, 13 Jan 2026 14:15:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UMLkCq2nfAdo; Tue, 13 Jan 2026 14:15:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77FD26126B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768313749;
	bh=fy2VDSXDVg8Cgx8yPUuNm75Dz62t1/dRMPKHc+PBx4Q=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SB7lie6JifrZSDr58BsEISuAyVikbYuqv929MXDJ7v+y22AOlzZXk47b9WYZT6QgY
	 YVTGcgwUDejj3JWItBu5hQ3stMnt5lSIxJrNujVjf5S5BYmbyEssqjJG8WW6MTxw1m
	 dykBbE4OQASHi5SEJW7INno1ol4x1UVUN0tDa0yWJtPIi0O69sBmXJO9hM7gzc5q+5
	 UFHy5Tbez5V3L5MJJdfsK7Z4LupRbKCWi5YoCpMUUieC4ximNyGVvVxw3oz0AZ4mhL
	 UOQs5PfLK7teEdbgVL2lKrgjfzL7TPrJK8QGjFNcSUBh6iD97HUeQhHV0CSl/ws6mq
	 CN1P8GXRL+qTg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77FD26126B;
	Tue, 13 Jan 2026 14:15:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C6F95231
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 14:15:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B734A6F6A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 14:15:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mw-dGkLPqcN3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 14:15:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 65F666F699
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 65F666F699
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 65F666F699
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 14:15:46 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1vffBN-002diQ-EW; Tue, 13 Jan 2026 15:15:41 +0100
Date: Tue, 13 Jan 2026 15:15:41 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Message-ID: <cb9f2295-0f1d-48a3-ab53-3d51c2930f94@lunn.ch>
References: <20260112140108.1173835-1-jedrzej.jagielski@intel.com>
 <20260112140108.1173835-7-jedrzej.jagielski@intel.com>
 <8f976990-1087-4ba0-a06d-c0538c39d2a3@lunn.ch>
 <PH0PR11MB59027E7BBF8EF6121DF24DDCF08EA@PH0PR11MB5902.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PH0PR11MB59027E7BBF8EF6121DF24DDCF08EA@PH0PR11MB5902.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=fy2VDSXDVg8Cgx8yPUuNm75Dz62t1/dRMPKHc+PBx4Q=; b=UZfhdV+U9ba1TRkED1WeHGIupU
 S08UQKpPgt+ck/NH7JRAgi5nexANFgD3E3Dp/xTahxEPUPgOs7Vo9XEgm5MCyMWXa2RaVOxDgdF3J
 s7xo0Kcj82lPGPFQvHj6oSBXWC3lYeEhSgqoZFOSBPKR8iwW5H3tvm6JPkQ0VgZkj0r0=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=UZfhdV+U
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 6/7] ixgbe: replace EEE
 enable flag with state enum
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

> OK, so you mean it's redundant? There's no need to explicitly state that
> EEE needs to be disabled when it i not capable of beeing still on due 
> to unsupported link conditions?
> Probably i would need to check how E610 behaves in such scenario.

It would depend on what your firmware is doing, but if it is
implemented correctly, there should not be any need to change the
configuration. ethtool_keee->eee_active should indicate the status of
the negotiation. If you are in a link mode which does not support EEE,
so it is turned off in the MAC, set it to false. supported_eee,
advertising_eee lp_advertised should not care about the current link
mode or the value of eee_active.

And you probably want to check for how phylink and phylib handle this,
since they are the most used implementation and so the reference.

      Andrew

