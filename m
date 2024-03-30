Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F83892D98
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Mar 2024 23:14:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D2FF6075B;
	Sat, 30 Mar 2024 22:14:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rtbekrVkvfUp; Sat, 30 Mar 2024 22:14:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2711260781
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711836858;
	bh=E3M9C94KlYgWkxVnJ7peUnv4RFU6IKeHU/i44aG+ovM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=c060Y6r8ToUhLFgCAYPDPMPXvlG8sSXSG0boDbTOU2FzYwgMP1NdXLTkK5JBJFvMw
	 Wmqbp983zMrxmtC5Dx36T24GKTFiGjJ4W1gvYhChhjxargMow6DCQGJbfJYho1PO1/
	 FD9PpzBVlG1vPx2i+o0Mdqoa0JGeVziTHSZ9udJFTwbsbuBSrUrkKmOjboAxWOrVTM
	 Pfluwh5Z6+nC95+hPjBa+hF65g98aTs6QOB+lue3Di15TtulHwi9w40UjyUR1Dwwe/
	 MQFHjGMB3Q/ObnKe3K4aqgxi1q6WLpFfVqlJTQb9yXEIVEIC3JL8W7s+UUv/88AOmN
	 QkQ2oZfNL1faw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2711260781;
	Sat, 30 Mar 2024 22:14:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 185821BF239
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Mar 2024 22:14:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0479A81287
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Mar 2024 22:14:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4hu5M_jyTD7i for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Mar 2024 22:14:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A1EC68126A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A1EC68126A
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A1EC68126A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Mar 2024 22:14:14 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rqgxm-00BkRL-2u; Sat, 30 Mar 2024 23:14:10 +0100
Date: Sat, 30 Mar 2024 23:14:10 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <07572365-1c9f-4948-ad2f-4d56c6d4e4ab@lunn.ch>
References: <20240329092321.16843-1-wojciech.drewek@intel.com>
 <20240329092321.16843-3-wojciech.drewek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240329092321.16843-3-wojciech.drewek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=E3M9C94KlYgWkxVnJ7peUnv4RFU6IKeHU/i44aG+ovM=; b=WAQ3uGBNwM5q1A2jNEp8fqa4y4
 JAPFdkTelMrUfMAR1POls1sGXQYtQhs18rv/qsFXdzweD1Q+mSVouU8wxfgek9U/hyINTk4SSk4Kx
 yGhGJ2J93d1KR7+sE78wwu9AikmLOwitEiZB3TRceJ7vybO9GqK7qDxwvkkMuc+q6+TM=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=WAQ3uGBN
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/3] ethtool: Introduce max
 power support
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
Cc: netdev@vger.kernel.org, idosch@nvidia.com, edumazet@google.com,
 marcin.szycik@linux.intel.com, anthony.l.nguyen@intel.com, kuba@kernel.org,
 simon.horman@corigine.com, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Mar 29, 2024 at 10:23:20AM +0100, Wojciech Drewek wrote:
> Some modules use nonstandard power levels. Adjust ethtool
> module implementation to support new attributes that will allow user
> to change maximum power.
> 
> Add three new get attributes:
> ETHTOOL_A_MODULE_MAX_POWER_SET (used for set as well) - currently set
>   maximum power in the cage
> ETHTOOL_A_MODULE_MIN_POWER_ALLOWED - minimum power allowed in the
>   cage reported by device
> ETHTOOL_A_MODULE_MAX_POWER_ALLOWED - maximum power allowed in the
>   cage reported by device

I'm confused. The cage has two power pins, if you look at the table
here:

https://www.embrionix.com/resource/how-to-design-with-video-SFP

There is VccT and VccR. I would expect there is a power regulator
supplying these pins. By default, you can draw 1W from that
regulator. The board however might be designed to support more power,
so those regulators could supply more power. And the board has also
been designed to dump the heat if more power is consumed.

So, ETHTOOL_A_MODULE_MIN_POWER_ALLOWED is about the minimum power that
regulator can supply? Does that make any sense?

ETHTOOL_A_MODULE_MAX_POWER_ALLOWED is about the maximum power the
regulator can supply and the cooling system can dump heat?

Then what does ETHTOOL_A_MODULE_MAX_POWER_SET mean? power in the cage?
The cage is passive. It does not consume power. It is the module which
does. Is this telling the module it can consume up to this amount of
power?

	Andrew
