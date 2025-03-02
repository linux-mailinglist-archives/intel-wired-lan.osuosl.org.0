Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0D5A4B2FB
	for <lists+intel-wired-lan@lfdr.de>; Sun,  2 Mar 2025 17:14:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 797D982223;
	Sun,  2 Mar 2025 16:14:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w9qKUU1iP_3W; Sun,  2 Mar 2025 16:14:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3AA1822B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740932052;
	bh=+EEHHNKC7qnukuM0E3MdN9IeORIinbgYYPYrhGC8Q5A=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PlGE9eyC7EOoQbIvzyjadqtymuc2Hr5IQpqLoJhj+VWERP0rHaYHQwowLixmSnkNE
	 qcxwzaGCO6PVkr8xhRldIt2AZIjbuSNG4bkNXIakXvFxYGzzAqzYn/8KQimAsEvBsL
	 DEl3CVA8iRNwI///6Yz2aMUkAvNJjmoaiJuipJLwb31n9zyLR4UrONNSsPG6I3o0kU
	 M1yZ/INcl/FKTAQci/c5Oa8z2KVM6zrJ8E5sapq/36BM3XCqku4LbHxUzYf8USNely
	 H+WFz5QaYwFKWm/n09iocRz/hyHuEG1weUW3tVOUctt8FnUECGxsbgKLqKVbqEsfYC
	 PoPa5pIHfJITw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3AA1822B9;
	Sun,  2 Mar 2025 16:14:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 42D19958
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Mar 2025 16:14:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 22D6B40420
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Mar 2025 16:14:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1kjFEWqDZul5 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  2 Mar 2025 16:14:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 95E88400DD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 95E88400DD
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 95E88400DD
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Mar 2025 16:14:08 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1tolwp-001Y9j-WA; Sun, 02 Mar 2025 17:13:48 +0100
Date: Sun, 2 Mar 2025 17:13:47 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: Mark Pearson <mpearson-lenovo@squebb.ca>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <698700ab-fd36-4a09-8457-a356d92f00ea@lunn.ch>
References: <mpearson-lenovo@squebb.ca>
 <20250226194422.1030419-1-mpearson-lenovo@squebb.ca>
 <36ae9886-8696-4f8a-a1e4-b93a9bd47b2f@lunn.ch>
 <50d86329-98b1-4579-9cf1-d974cf7a748d@app.fastmail.com>
 <1a4ed373-9d27-4f4b-9e75-9434b4f5cad9@lunn.ch>
 <9f460418-99c6-49f9-ac2c-7a957f781e17@app.fastmail.com>
 <4b5b0f52-7ed8-7eef-2467-fa59ca5de937@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4b5b0f52-7ed8-7eef-2467-fa59ca5de937@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=+EEHHNKC7qnukuM0E3MdN9IeORIinbgYYPYrhGC8Q5A=; b=G8
 0g2gHmzJXHxsPgc/TCzQPVOUWge4g3qPw7PvPwmyqNelMNt9FhOURO2BwwBibYY6Wavd9NuOkrtBp
 DtG4YrCNj8AHmn+aif6O+vE5o6eyJkMuM70UrN/dKSOr3eyearHbFhYPf+4ivFHcmmeybainm4KLH
 lCgr3nj7jawHEkQ=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=G80g2gHm
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Link flap workaround option
 for false IRP events
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

On Sun, Mar 02, 2025 at 03:09:35PM +0200, Lifshits, Vitaly wrote:
> 
> 
> Hi Mark,
> 
> > Hi Andrew
> > 
> > On Thu, Feb 27, 2025, at 11:07 AM, Andrew Lunn wrote:
> > > > > > +			e1e_rphy(hw, PHY_REG(772, 26), &phy_data);
> > > > > 
> > > > > Please add some #define for these magic numbers, so we have some idea
> > > > > what PHY register you are actually reading. That in itself might help
> > > > > explain how the workaround actually works.
> > > > > 
> > > > 
> > > > I don't know what this register does I'm afraid - that's Intel knowledge and has not been shared.
> > > 
> > > What PHY is it? Often it is just a COTS PHY, and the datasheet might
> > > be available.
> > > 
> > > Given your setup description, pause seems like the obvious thing to
> > > check. When trying to debug this, did you look at pause settings?
> > > Knowing what this register is might also point towards pause, or
> > > something totally different.
> > > 
> > > 	Andrew
> > 
> > For the PHY - do you know a way of determining this easily? I can reach out to the platform team but that will take some time. I'm not seeing anything in the kernel logs, but if there's a recommended way of confirming that would be appreciated.
> 
> The PHY is I219 PHY.
> The datasheet is indeed accessible to the public:
> https://cdrdv2-public.intel.com/612523/ethernet-connection-i219-datasheet.pdf

Thanks for the link.

So it is reading page 772, register 26. Page 772 is all about LPI. So
we can have a #define for that. Register 26 is Memories Power. So we
can also have an #define for that.

However, that does not really help explain how this helps prevent an
interrupt. I assume playing with EEE settings was also played
with. Not that is register appears to have anything to do with EEE!

> Reading this register was suggested for debug purposes to understand if
> there is some misconfiguration. We did not find any misconfiguration.
> The issue as we discovered was a link status change interrupt caused the
> CSME to reset the adapter causing the link flap.
> 
> We were unable to determine what causes the link status change interrupt in
> the first place. As stated in the comment, it was only ever observed on
> Lenovo P5/P7systems and we couldn't ever reproduce on other systems. The
> reproduction in our lab was on a P5 system as well.
> 
> 
> Regarding the suggested workaround, there isn’t a clear understanding why it
> works. We suspect that reading a PHY register is probably prevents the CSME
> from resetting the PHY when it handles the LSC interrupt it gets. However,
> it can also be a matter of slight timing variations.

I don't follow what you are saying here. As far as i can see, the
interrupt handler will triggers a read of the BMCR to determine the
link status. It should not matter if there is a spurious interrupt,
the BMCR should report the truth. So does BMCR actually indicate the
link did go down? I also see there is the usual misunderstanding with
how BMCR is latching. It should not be read twice, processed once, it
should be processed each time, otherwise you miss quick link down/up
events.

> We communicated that this solution is not likely to be accepted to the
> kernel as is, and the initial responses on the mailing list demonstrate the
> pushback.

What it has done is start a discussion towards an acceptable
solution. Which is a good thing. But at the moment, the discussion
does not have sufficient details.

Please could somebody describe the chain of events which results in
the link down, and subsequent link up. Is the interrupt spurious, or
does BMCR really indicate the link went down and up again?

> On a different topic, I suggest removing the part of the comment below:
> * Intel unable to determine root cause.
> The issue went through joint debug by Intel and Lenovo, and no obvious spec
> violations by either party were found. There doesn’t seem to be value in
> including this information in the comments of upstream code.

I partially agree. Assuming the root cause is not found, and a
workaround is used, i expect a commit message with a detailed
description of the chain of events which results in the link
flap. Then a statement that the root cause is unknown, and lastly the
commit message should say the introduced change, for unknown reasons,
solves the issue, and is considered safe because.... Ideally the
workaround should be safe for everybody, and can be just enabled.

	Andrew
