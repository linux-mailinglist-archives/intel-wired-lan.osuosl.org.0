Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AC831BD594E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Oct 2025 19:49:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8B8E60EBA;
	Mon, 13 Oct 2025 17:48:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QdWT7vvxh9Zs; Mon, 13 Oct 2025 17:48:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 663DE60EC6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760377738;
	bh=/5x8dL0xsIo7cj6ap3szP9/ntLRtTJN8gwrwEdFC8g4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uqtnKrHbJqnIjU04GyAggFmkfUmD9Tfz0NeYzzOBy5xjU9MTgG8EFGRaEPg+j9Vvq
	 8TSRx28PLgr1l9oRGuY8rLNxQvvl/u/6h4LLJAWyJZgZm+9bYMT4EX98Dg8WxM84dw
	 UpbT8BzDeWfQxDoLNGAVqYBLV7NtvGZ7VgJ5+GyjE+TaCXl0pOjzIeLf0/d3zS8bi3
	 qeFjtG06PDLXv8ppG1ajjoWVT+5joxKYJlTy+wmNS1y8OH9DDUcgr2D678Orl14m/Q
	 dYM7SJwGpefKtsfGmaP4dqIbHnGjdQsqxbrx6S/oLYylTOfMPkn6q/ML26+f0JSzyO
	 xQIM57QhzErVA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 663DE60EC6;
	Mon, 13 Oct 2025 17:48:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 06B17BC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Oct 2025 17:48:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E08A441490
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Oct 2025 17:48:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dNvWZ97HbQdd for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Oct 2025 17:48:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0D0104148E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D0104148E
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0D0104148E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Oct 2025 17:48:55 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1v8Mf2-00Ap28-PU; Mon, 13 Oct 2025 19:48:40 +0200
Date: Mon, 13 Oct 2025 19:48:40 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Birger Koblitz <mail@birger-koblitz.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <3a936cc6-14e7-49f8-b312-d66330f955d7@lunn.ch>
References: <20251013-10gbx-v1-1-ab9896af3d58@birger-koblitz.de>
 <b5dd3a3e-2420-4c7c-b690-3799fac14623@lunn.ch>
 <70d926a1-e118-43d9-8715-70feebc214a5@birger-koblitz.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <70d926a1-e118-43d9-8715-70feebc214a5@birger-koblitz.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=/5x8dL0xsIo7cj6ap3szP9/ntLRtTJN8gwrwEdFC8g4=; b=vNub39RkJxbvP5HhMHbHcpVa7/
 48s+qhW9+bJg34PX/vXoRxSW+/sN3buu0xl8qFsRDigj62aQHBf6PLe8/E27eRpdYGwP5ju6uXb/z
 V4V9Vg4KHbPCh9zZeJQITKtz4AXCxLRWJFpDOZH+zHlw3y2iFgW0u6Z+2B+4MwfMdXao=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=vNub39Rk
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: Add 10G-BX support
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

On Mon, Oct 13, 2025 at 07:17:18PM +0200, Birger Koblitz wrote:
> On 13/10/2025 6:31 pm, Andrew Lunn wrote:
> > > @@ -1678,6 +1679,26 @@ int ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
> > >   			else
> > >   				hw->phy.sfp_type =
> > >   					ixgbe_sfp_type_1g_bx_core1;
> > > +		/* Support Ethernet 10G-BX, checking the Bit Rate
> > > +		 * Nominal Value as per SFF-8472 to be 12.5 Gb/s (67h) and
> > > +		 * Single Mode fibre with at least 1km link length
> > > +		 */
> > > +		} else if ((!comp_codes_10g) && (bitrate_nominal == 0x67) &&
> > > +			   (!(cable_tech & IXGBE_SFF_DA_PASSIVE_CABLE)) &&
> > > +			   (!(cable_tech & IXGBE_SFF_DA_ACTIVE_CABLE))) {
> > > +			status = hw->phy.ops.read_i2c_eeprom(hw,
> > > +					    IXGBE_SFF_SM_LENGTH,
> > > +					    &sm_length);
> > 
> > It seems like byte 15, Length (SMF), "Link length supported for single
> > mode fiber, units of 100 m" should be checked here. A 255 * 100m would
> > be more than 1Km, the condition you say in the comment.
> > 
> > 	Andrew
> 
> Bytes 14 and 15 refer to the same information, just in different units. Byte
> 14 is the SM link length in km, byte 15 the same in 100m units. BX offers a
> link length of at least 1km, up to at least 40km, which would overflow to
> 255 in byte 15. In theory one could make a consistency check between bytes
> 14 and 15 by dividing byte 15 by 10 and comparing the result with byte 14,
> but in terms of identifying link lengths of >=1km, checking byte 14 is
> probably enough, in particular as rounding of byte 14 could be
> inconsistently done, making the consistency check difficult. One could also
> check for byte 14 to be 0 and byte 15 to be < 10 to identify SM links <1km,
> but I do not believe such BX modules exist and again, there would be the
> issue of rounding for link lengths >=500m.

Hi Birger

Byte 15 containing 10 would be a Single Mode Fibre which is 1Km long.

You also say:

> BX offers a
> link length of at least 1km, up to at least 40km

which is ambiguous, you use at least twice. Should it actually be:

BX offers a link length of at least 1km, up to at a maximum of 40km.

So a 10GBase-BX module with 1Km would be allowed by the standard? A
10km 10GBase-BX using 100 in byte 15 would also be valid? A 20KM by
using 200?

Is there anything in the standard which says you must use byte 14 for 
10GBase-BX?

I think to fully comply with the standard, you probably want to look
at both bytes, and if either indicate > 1Km, enable the feature. And
if the two contradict each other, whats just OEMs making the usual
mess of SFP EEPROM contents.

	Andrew
