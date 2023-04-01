Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B556D3327
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 Apr 2023 20:30:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CBD4141770;
	Sat,  1 Apr 2023 18:30:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBD4141770
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680373808;
	bh=INn0r2LPGc8dV34KswfDvXWy89P12CGsIgaE5nr/HRg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UlrwAZHjSFozG+vOvlx1MkLZV+acYKu/3XuXRIzIXlu8gOSlmF39btPYEQoz/2Oeo
	 I2/WJUMdyueiD8KEcLJDU/brafYh/k8BzdOZNb73EDndrr/sR6rYmzxEGXEsxuDMSR
	 wRVt+yIFoNXj22fZg/BtY7OOgcx301QC1d687miFxJj4NY3NEOnCBn2FuZuzupwGuQ
	 jMcn1Gv9nng3yy4swfBE7yxeaF3y6K6KnfGMn/Ci6ZgCYqtyx79bYu0f+Cgse/zaTF
	 KQwfb/vDDUIeYTeOK6DM2qW7VNDQ63d3lWoMoPWAcpMkMhAGYHDHeXU0YDPikl4+jx
	 n1vonIGF8M1bw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EjwgIvKfDUDS; Sat,  1 Apr 2023 18:30:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA10241762;
	Sat,  1 Apr 2023 18:30:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA10241762
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1D1AB1BF2A4
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 18:30:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E60C960C33
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 18:30:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E60C960C33
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e1mC1M2p4603 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  1 Apr 2023 18:30:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C387360812
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C387360812
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 18:30:00 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1pifz9-0099SI-2i; Sat, 01 Apr 2023 20:29:55 +0200
Date: Sat, 1 Apr 2023 20:29:55 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Michal Schmidt <mschmidt@redhat.com>
Message-ID: <d8de0d9c-6ccb-4fce-a954-177e6603cb46@lunn.ch>
References: <20230401172659.38508-1-mschmidt@redhat.com>
 <20230401172659.38508-2-mschmidt@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230401172659.38508-2-mschmidt@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=CybEhp7RyV+B9ga3DD1z6HprYG3wKyWRKNMWiB5PB0Q=; b=LGFyzxNsNWeW9sPclPRIhtC5ht
 AJI7q5NVtQkATrny8MbYyQcyygFRDx8+yPnsuLCjEuUovQIOSPZp22h9x0c33PviOPVoESXwNEyEz
 VCT0p03o5PT7r4IKXPKN46fadz7BSV9oIPtaHcDkLrhXOOtLHW8uNT3tdGw2ZN/CZWS0=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=LGFyzxNs
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/4] ice: lower CPU usage of
 the GNSS read thread
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Apr 01, 2023 at 07:26:56PM +0200, Michal Schmidt wrote:
> The ice-gnss-<dev_name> kernel thread, which reads data from the u-blox
> GNSS module, keep a CPU core almost 100% busy. The main reason is that
> it busy-waits for data to become available.

Hi Michal

Please could you change the patch subject. Maybe something like "Do
not busy wait in read" That gives a better idea what the patch does.

    Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
