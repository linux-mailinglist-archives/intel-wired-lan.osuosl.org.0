Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9AB83B483
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jan 2024 23:11:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3CA934035D;
	Wed, 24 Jan 2024 22:11:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3CA934035D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706134302;
	bh=xZieFivIRR+qZkM66u8Vp/j+fHUnHH2DjcGNne9o7Pw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Su4AobRHLKNwhSvsnbAW7hjqgTM/qBkFkIiNfiHtE4r5+Wc1eUdY6n6mtL2q3z1E+
	 pr09RbGKd6gcBxnNvjwyVjokVtt7OoeiDRp1U7Rfm5LiUkyMDDNfaaUhv4/hFffFx9
	 vUsI5mAyiVE9prcLXzbuxY/8cvGC2xV1VM/urlt16hkFEz5MZouStMKhTGvsMt3k5Q
	 xHb+rhyDaXa6iCFUsNWVPDhJjgI955Flxh+qrRmSx2FPTFSt0M1gh8hxJRDOlEoIVo
	 bCshD48vkEDR9XGw24Ne0cTkuL+tIqJASTtidzq5fUnc20QPKcqbp2q6b2KGd6dy5z
	 gf200E8xnP3vA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cnJP0zIB7DQQ; Wed, 24 Jan 2024 22:11:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 41F5840181;
	Wed, 24 Jan 2024 22:11:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 41F5840181
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DA65F1BF831
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 22:11:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B0F834185D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 22:11:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B0F834185D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tFhEBbH_OCRK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jan 2024 22:11:34 +0000 (UTC)
X-Greylist: delayed 1157 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 24 Jan 2024 22:11:34 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3113141755
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3113141755
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 22:11:34 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rSlAC-0062A2-Bq; Wed, 24 Jan 2024 22:52:04 +0100
Date: Wed, 24 Jan 2024 22:52:04 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Kurt Kanzenbach <kurt@linutronix.de>
Message-ID: <de659af0-807f-4176-a7c2-d8013d445f9e@lunn.ch>
References: <20240124082408.49138-1-kurt@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240124082408.49138-1-kurt@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=xZieFivIRR+qZkM66u8Vp/j+fHUnHH2DjcGNne9o7Pw=; b=Z73P74dmS+p7IF5kAvwIfSg0pW
 lvDNRIOCT67DiIF7F20bUP4PxnviUbgJvtC4Wiw82zvwpkrBC3gQMNfbSoeetELXBUkRBqzoSiIaz
 ArEvHTBPage3x14c2mL6c7XSfUiAQ5UBbKiTVxF7g0rLc8O+Uv3qTWipWMCp9A7YyB1U=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=Z73P74dm
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-next] igc: Add support for LEDs
 on i225/i226
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
Cc: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jan 24, 2024 at 09:24:08AM +0100, Kurt Kanzenbach wrote:
> Add support for LEDs on i225/i226. The LEDs can be controlled via sysfs
> from user space using the netdev trigger. The LEDs are named as
> igc-<bus><device>-<led> to be easily identified.
> 
> Offloading activity and link speed is supported. Tested on Intel i225.

Nice to see something not driver by phylib/DSA making use of LEDs.

Is there no plain on/off support? Ideally we want that for software
blinking for when a mode is not supported.

	 Andrew
