Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACD7895784
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Apr 2024 16:53:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D032340902;
	Tue,  2 Apr 2024 14:53:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SH5mYRIaoyZ2; Tue,  2 Apr 2024 14:53:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D90BB407CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712069595;
	bh=eOYGeU8zVgOXLLkcl8kxoaRkqhvrkHQcK86uuV0YpBQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zb7rJ1eldEAJ/d5o3lKE/Ox81EHjLZQRbgOonBYeOfFV27FbDZT5wdmnjvQscU3sI
	 a8iHUO4F/hLg7FYtV6TrGYHDGfrc6iwKVn+YqZ1jejcZSUdfMYsfZ2KYc9ZDDcOkBU
	 eaHhRQtULiJ1SVo+lzoquQyTw48RMRAOFn+xK6xrqx4lhftIiCxAiD3nGdCTHnEJkr
	 5c5QoBRm0IESasBkZDhbbH/b2ij/qwp0PztEP2DdSsd3of3Tj97YEXMLJ0lIy3aH/U
	 EWnaH7Sfa8uePZE+fWtv/uaHFck5FieLvfHA+nWcsSqy+l1Lydrja5dM4ZCN/ho7w9
	 dvUB8oW5ELanw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D90BB407CE;
	Tue,  2 Apr 2024 14:53:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 618021BF317
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 14:53:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 59F2A81B35
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 14:53:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O0zn_5gCtrnf for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Apr 2024 14:53:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 62F6F81985
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 62F6F81985
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 62F6F81985
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 14:53:12 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rrfVW-00BxKe-Ab; Tue, 02 Apr 2024 16:53:02 +0200
Date: Tue, 2 Apr 2024 16:53:02 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <06f5880d-94e3-454e-b056-9bf2059a52fe@lunn.ch>
References: <20240329092321.16843-1-wojciech.drewek@intel.com>
 <38d874e3-f25b-4af2-8c1c-946ab74c1925@lunn.ch>
 <a3fd2b83-93af-4a59-a651-1ffe0dbddbe4@intel.com>
 <20240402072547.0ac0f186@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240402072547.0ac0f186@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=eOYGeU8zVgOXLLkcl8kxoaRkqhvrkHQcK86uuV0YpBQ=; b=305pCUs/ZO+uIQnNfe52Za6VL7
 Hh4K86PWCIVFnZiya076vP51zTgydYfDBJeOfCoRdQKwFYn9sbOQ5h/CzXUFXC5tmYhflPtqSX2az
 7eOZPBvaAnCrrI9SpxHzfVrCHTNiYFqT3pk9Ps3z5bDFyfmQ6c/3DGqgLWBrYYqFmVB4=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=305pCUs/
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] ethtool: Max power
 support
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 edumazet@google.com, marcin.szycik@linux.intel.com, anthony.l.nguyen@intel.com,
 idosch@nvidia.com, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Apr 02, 2024 at 07:25:47AM -0700, Jakub Kicinski wrote:
> On Tue, 2 Apr 2024 13:38:59 +0200 Wojciech Drewek wrote:
> > > Also, this is about the board, the SFP cage, not the actual SFP
> > > module?  Maybe the word cage needs to be in these names?  
> > 
> > It's about cage. Thanks for bringing it to my attention because now I
> > see it might be misleading. I'm extending {set|show}-module command
> > but the changes are about max power in the cage. With that in mind
> > I agree that adding 'cage' to the names makes sense.
> 
> Noob question, what happens if you plug a module with higher power
> needs into the cage?

https://www.optcore.net/wp-content/uploads/2017/04/QSFP-MSA.pdf

Section 3.2:

 It is recommended that the host, through the management interface,
 identify the power consumption class of the module before allowing the
 module to go into high power mode.

So it should start in lower power mode. Table 7 suggests the module
can assume 1.5W, since that is the lowest power level.

   Andrew
