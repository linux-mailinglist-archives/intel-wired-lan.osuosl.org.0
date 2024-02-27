Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C9686A0EC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Feb 2024 21:37:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D276821BF;
	Tue, 27 Feb 2024 20:37:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K6xVjiZZ_6ro; Tue, 27 Feb 2024 20:37:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A5D9821CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709066274;
	bh=nZU6Ol1wj9X1WeOMwzgnegH/2vn+30hINy6icETe54Q=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Hb0dYmR5rEisvfOBGmjL8l3TBOsWb28asljHUe2AWiqSBDfVzJgPPlKGdO4otcAYx
	 anOE0rL+ADXXPam2d6oBDXDiYg/aqWB+o8Cg21YVw0bTppf3Pqsyx89lKXz/pBKOz2
	 flZ2HpMRyvtiBALnSbGrRbeVfrL7RTPfFM+GO/o//TPSdbVZqqaoEZRV4sqX4dpumT
	 BmB5vBptuoJ6TfLfCB6fUb6T6ZEXw5KP+r9bH8vQOWrzNDMMbPkY1Rel4pu539S6/X
	 RFcj3eEE76NappPEmz0O5Dy3eNpnRhxoj1nB0PZ3WVBR2Slxyv7I129RpQILuXiN0h
	 /wG7AzBpidc+Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A5D9821CA;
	Tue, 27 Feb 2024 20:37:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EC2EC1BF294
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 20:37:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D76FA821BF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 20:37:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w-iXl9eVVraW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Feb 2024 20:37:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BE28D821BC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE28D821BC
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BE28D821BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 20:37:49 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rf4DB-008t4N-V5; Tue, 27 Feb 2024 21:38:01 +0100
Date: Tue, 27 Feb 2024 21:38:01 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <332882f9-f23c-4528-9582-51e9aea49a92@lunn.ch>
References: <df7b6859-ff8f-4489-97b2-6fd0b95fff58@intel.com>
 <20240222150717.627209a9@kernel.org> <ZdhpHSWIbcTE-LQh@nanopsycho>
 <20240223062757.788e686d@kernel.org> <ZdrpqCF3GWrMpt-t@nanopsycho>
 <20240226183700.226f887d@kernel.org> <Zd3S6EXCiiwOCTs8@nanopsycho>
 <10fbc4c8-7901-470b-8d72-678f000b260b@intel.com>
 <327ae9b5-6e7d-4f8b-90b3-ee6f8d164c0d@lunn.ch>
 <Zd4IH1XUhC92zaVP@nanopsycho>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zd4IH1XUhC92zaVP@nanopsycho>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=nZU6Ol1wj9X1WeOMwzgnegH/2vn+30hINy6icETe54Q=; b=KnR8IC0XW7SlsOOvg0CoSlICI9
 cRsQxPkNVtnUFMrpBPb8pSOClSpA6ZdJtUSquNYt+omsqKD+izwN/h480cwbFC/4TStIgZwThULvu
 yT8ejvfFpKKTu0Gj3QS+ag8ywq8lSeOiGlYag/CWJesJWiAHb5gIUhQCpHmrbIzLveDQ=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=KnR8IC0X
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 4/5] ice: Add
 tx_scheduling_layers devlink param
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Feb 27, 2024 at 05:04:47PM +0100, Jiri Pirko wrote:
> Tue, Feb 27, 2024 at 04:41:52PM CET, andrew@lunn.ch wrote:
> >> What if it would not be unique, should they then proceed to add generic
> >> (other word would be "common") param, and make the other driver/s use
> >> it? Without deprecating the old method ofc.
> >
> >If it is useful, somebody else will copy it and it will become
> >common. If nobody copies it, its probably not useful :-)
> >
> >A lot of what we do in networking comes from standard. Its the
> >standards which gives us interoperability. Also, there is the saying,
> >form follows function. There are only so many ways you can implement
> >the same thing.
> >
> >Is anybody truly building unique hardware, whos form somehow does not
> >follow function and is yet still standards compliant? More likely,
> >they are just the first, and others will copy or re-invent it sooner
> >or later.
> 
> Wait, standard in protocol sense is completely parallel to the hw/fw
> implementations. They may be (and in reality they are) a lots of
> tunables to tweak specific hw/fw internals. So modern nics are very
> unique. Still providing the same inputs and outputs, protocol-wise.

I think there is a general trickle down of technologies. What is top
of the line now, because normal everyday in 5 - 10 years time. Think
of a top of the line 10G Ethernet from 10 years ago. Is its design
that different to what you get integrated into today's SoC?  Are the
same or similar tunables from 10 year old top the line NICs also in
todays everyday SoCs?

Every PC is going to be an AI PC, if you believe the market hype at
the moment. But don't you think every PC will also have a network
processor of some sort in 5 - 10 years, derived from today network
processor. It will just be another tile in the SoC, next to the AI
tile, the GPU tile, and the CPU tiles. My guess would be, those
tunables in todays hardware will trickle down into those tiles in 5-10
years because they have been shown to be useful, they work, lets
re-use what we have.

       Andrew



