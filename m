Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD137E7016
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Nov 2023 18:24:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AC1A6416EA;
	Thu,  9 Nov 2023 17:24:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC1A6416EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699550692;
	bh=ZHiokbaMrHxzsSZNi1G3Hiy8EE98CR93mHn6CNmhitw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7e6E2uXmmaWsRhz/HeFNbSXub8RmR4KJPcDPyF++o6TIl7mMC23y5DC1fJXjyNQst
	 yf7OffOMv2GJlDwz/bFSjOAofAAddBPK9xklt6rhTIQZrtJ47tDLnoGL9/nNYuQQrS
	 llyhIlD5dP2NY8MV9/0Y0xLLkf3TX1QmroBQgXCPM1n0vo9bGH6fm6tmauNzE+D+4e
	 Pg6jwV/KcbkwLZeTmhiRxZOowdo/dyG5GrLdTEJt3N9CkTOoZ0Gj0RjHjrWUzA3WC/
	 6NJI6EjPMjRTdiWIi0in4we706AnYQbPtAZN2429vwC6hE5CGY2u7G6lBe3XvlWhnp
	 yzIJfODKozRMw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bHo_h43RjEDb; Thu,  9 Nov 2023 17:24:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5CFB7400AF;
	Thu,  9 Nov 2023 17:24:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5CFB7400AF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BD6631BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 17:24:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8A74B60F2F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 17:24:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A74B60F2F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uojkUS0GbV3D for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Nov 2023 17:24:45 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4BB0060F0B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 17:24:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4BB0060F0B
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 4B87DCE10F6;
 Thu,  9 Nov 2023 17:24:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73749C433C8;
 Thu,  9 Nov 2023 17:24:39 +0000 (UTC)
Date: Thu, 9 Nov 2023 12:24:37 -0500
From: Simon Horman <horms@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20231109172437.GA568506@kernel.org>
References: <20231107135138.10692-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231107135138.10692-1-marcin.szycik@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1699550680;
 bh=4AC7xT8UfVmqEObBWK/O+N39jg5BZfkGx+4KZmKJrHw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Rym9sDWVnkkWjGGZyy+H39XZaTrYcXcpoiZg9wuG/szqZ8cZw275MzN9jE7soVGBY
 65//GD6PRHsGfXQ9Kxyt35HscJt8xkXqQTE/bFBn2ltjgV6ZyDhmL1Lpi2iIDr7MIr
 mK5gj688SwvNy42ngYM9Sjp9yO/AdJP81gD/iERBSmUgl57sH95yhH3Bkcz4zoxttD
 PZ6ipcTClSB9G4R1l0EZVLsOXA1Ye1PFYkRiJxKmYcnoLYTG/G1H7uP829tlfYSXlF
 3S0yt2OXYjg6JplCT1szHCo+CycIOKkcSs3iHbHGL+DdX7iZaXO8MJhacKf/xIxVhL
 obWueYElGUBkw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Rym9sDWV
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Restore fix disabling RX
 VLAN filtering
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
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Nov 07, 2023 at 02:51:38PM +0100, Marcin Szycik wrote:
> Fix setting dis_rx_filtering depending on whether port vlan is being
> turned on or off. This was originally fixed in commit c793f8ea15e3 ("ice:
> Fix disabling Rx VLAN filtering with port VLAN enabled"), but while
> refactoring ice_vf_vsi_init_vlan_ops(), the fix has been lost. Restore the
> fix along with the original comment from that change.
> 
> Also delete duplicate lines in ice_port_vlan_on().
> 
> Fixes: 2946204b3fa8 ("ice: implement bridge port vlan")
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
