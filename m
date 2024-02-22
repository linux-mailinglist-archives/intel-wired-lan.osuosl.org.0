Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 127F785FBEA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Feb 2024 16:11:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BCFEA41B49;
	Thu, 22 Feb 2024 15:11:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GTsTxW41QGy3; Thu, 22 Feb 2024 15:11:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F0A4D41B5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708614672;
	bh=wMH/YxCjPZ+y9HsN5oGyh1S5l+4RS/ggKj3jV/RYk0o=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bqXrbv1xpdomcjquTB+MtayVlqLg060I0eJmv+89beoAGqdyHOV3skTKrSxnIeWMc
	 1h3nHjQn5eOnxhSAiUgPOfv+CGl5BERILxvzznav5sbRp5eODHp0UpWb7LEnzjqW42
	 C85X7Ql1yu4kNjxiK0KDCDc1c4kcwvzDlgZjtXSqZZUM5fBwCIgUw0hcD96U982ZSp
	 nPnM2BBvvazRj0pOBC8sjbufxnU8AYjeFLI/0REz0y6Rsa0zcEnxybeKuLU5yS4CL4
	 wBK27bf4xm497VDqGT8xWQ1fLymI3ObTPRK4XwGsxS2K/6xnS8yv4mfrttphaPNfBj
	 y42OJ0TnRfsyw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F0A4D41B5B;
	Thu, 22 Feb 2024 15:11:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2FF0A1BF40B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 15:11:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 27BA341908
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 15:11:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fTcpxxCibQZ9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Feb 2024 15:11:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 33EC14029F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 33EC14029F
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 33EC14029F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 15:11:09 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rdAj7-008S6N-L3; Thu, 22 Feb 2024 16:11:09 +0100
Date: Thu, 22 Feb 2024 16:11:09 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Simon Horman <horms@kernel.org>
Message-ID: <68088998-4486-4930-90a4-96a32f08c490@lunn.ch>
References: <20240218-keee-u32-cleanup-v4-0-71f13b7c3e60@lunn.ch>
 <20240218-keee-u32-cleanup-v4-3-71f13b7c3e60@lunn.ch>
 <20240220124405.GB40273@kernel.org>
 <a52361ef-66ab-41bd-b245-ccd26fcbd957@lunn.ch>
 <20240221102851.GA352018@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240221102851.GA352018@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=wMH/YxCjPZ+y9HsN5oGyh1S5l+4RS/ggKj3jV/RYk0o=; b=PlwPp4qsKfFwbW6SZDrR5NPnMQ
 bR7XdWqPB+3yentT0+DlCP3iWQUbcAbX468on34w/o/3vMxOcbjXYYQWet4npgIE2qKzq8kE44oHM
 JT5IhGFCO0YIF5P7A3+uL6bdTE3C3jSwdtnPLreSxTDspO8QL54S9WVu7na1/VEbCscc=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=PlwPp4qs
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 3/9] net: qlogic: qede:
 Use linkmode helpers for EEE
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
Cc: Ariel Elior <aelior@marvell.com>, Manish Chopra <manishc@marvell.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Feb 21, 2024 at 10:28:51AM +0000, Simon Horman wrote:
> On Tue, Feb 20, 2024 at 03:45:28PM +0100, Andrew Lunn wrote:
> > > > +	unsupp = linkmode_andnot(tmp, edata->advertised, supported);
> > > 
> > > nit: Given the types involved, I might have written this as:
> > > 
> > > 	unsupp = !!linkmode_andnot(tmp, edata->advertised, supported);
> > 
> > linkmode_andnot() calls bitmap_andnot():
> > 
> > static inline bool bitmap_andnot(unsigned long *dst, const unsigned long *src1,
> > 			const unsigned long *src2, unsigned int nbits)
> > 
> > It already returns a bool, so there is no need to force an int to bool
> > conversion using !!.
> 
> Good point, sorry for missing that.

> I assume there is a reason that the return type of
> linkmode_andnot is not bool.

Either i got it wrong when i added the wrapper, or bitmap_andnot() has
changed since then?

It probably can be changed to a bool.

	Andrew
