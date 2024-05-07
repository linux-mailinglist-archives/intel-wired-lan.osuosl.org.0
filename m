Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A82518BE223
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 May 2024 14:31:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 40F7140670;
	Tue,  7 May 2024 12:31:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tdl1gBb_hfEp; Tue,  7 May 2024 12:31:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B89B240671
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715085106;
	bh=3Px43D9WhbnEpU5l+CqafWytQt70Xp5M2g0c30Ems/k=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zsyevhYd9Fc/2apboL7lzyOhev1UWt9pTYisWycczRp9yrv0l2mYIVTm5UlAvGkSB
	 rO0P1SoRiX6oxupnQFFZm62eUMLKyaN+AXhhV8rXQy+j/yNxDNda/ObGOLlW/dd/01
	 BfE3RrurKnCmN/TuE4CPtW4jvxH26lAF/a5oZl1EPtmzi1tH49bF689OFC12yKgR24
	 4ADGTXpfZWN7xg/hbC67laa/6u23VeDdTKH8J+DtUq3d9vISGfsutdPqS1Acr4xpJ8
	 tcaiJa76iJs63IjE4URssPPAym4UY0P4AaMyndSt/d0zADA686gLn6Zh5+6bNC7jKv
	 +N9vgv4GCG3ag==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B89B240671;
	Tue,  7 May 2024 12:31:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 784DA1BF386
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 12:31:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 644996073E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 12:31:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kxtkbBblkPv3 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 May 2024 12:31:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7D6896073C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D6896073C
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7D6896073C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 12:31:43 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1s4Jyu-00Eqvr-FF; Tue, 07 May 2024 14:31:40 +0200
Date: Tue, 7 May 2024 14:31:40 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Ricky Wu <en-wei.wu@canonical.com>
Message-ID: <83a2c15e-12ef-4a33-a1f1-8801acb78724@lunn.ch>
References: <20240503101836.32755-1-en-wei.wu@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240503101836.32755-1-en-wei.wu@canonical.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=3Px43D9WhbnEpU5l+CqafWytQt70Xp5M2g0c30Ems/k=; b=Y0NtwsojhHStF8f3VH6h1sO+2B
 M6X1WwknVEX4bCk+DZwVEJAcpUTAyL6229GYiRwaJQjCmrO6Y7UGeg05SNMu73RhYT7wqi2IvM9oT
 kV4ltxYkmYvgg0Wkbz5ssPUHTU9ySdrX+Hjni7E6zkD+yX1td1plyenWT9S3A0SnXI6Q=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=Y0Ntwsoj
Subject: Re: [Intel-wired-lan] [PATCH v2 2/2] e1000e: fix link fluctuations
 problem
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
Cc: netdev@vger.kernel.org, rickywu0421@gmail.com, linux-kernel@vger.kernel.org,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 anthony.l.nguyen@intel.com, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, May 03, 2024 at 06:18:36PM +0800, Ricky Wu wrote:
> As described in https://bugzilla.kernel.org/show_bug.cgi?id=218642,
> Intel I219-LM reports link up -> link down -> link up after hot-plugging
> the Ethernet cable.

Please could you quote some parts of 802.3 which state this is a
problem. How is this breaking the standard.

	Andrew
