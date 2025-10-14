Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7986BBD9557
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Oct 2025 14:27:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44F68611B2;
	Tue, 14 Oct 2025 12:27:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hCdNfE-u0rR7; Tue, 14 Oct 2025 12:27:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B98EB611F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760444859;
	bh=QyT8a6xTN6cFhxquXbZ2kYWpr0cYAghxKfrpKvxJbOc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Yf/x58Qlg9DjcfSotNottTK4c2NPlri83VsMvxE6kLJkAtKADHHfhdRwowPgcLqyq
	 TvhEOJ/krYW0ikOa1SSB8M7Z45Vh+SSB39eFDI+rWtiipdfCeIuZi7dyfZC7dIcBSe
	 vF6y/ON4927D+ggeARR+7hSH03VyNeCatemIoE1nzXr8FMZh9zAExklVh705zAvfFU
	 02sbBhbdjMgR3pqRWz6uX3SpWzrdVTHRr9SeH7dcvagA3RCUxqiS3NAFNI7CfQO28e
	 IsWRkH+iShW0gPQ8tzXxlL8y7tZfJffVWpZdlZBQCpIuN3zS6HbTCzsUBKIP8lc6LW
	 CGOQPzlHwrhcw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B98EB611F0;
	Tue, 14 Oct 2025 12:27:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 82B29294
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 12:27:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6905E80E56
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 12:27:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W-cirO8gK9Zg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Oct 2025 12:27:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4BDEF80DCC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4BDEF80DCC
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4BDEF80DCC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 12:27:36 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1v8e7f-00AuKg-JQ; Tue, 14 Oct 2025 14:27:23 +0200
Date: Tue, 14 Oct 2025 14:27:23 +0200
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
Message-ID: <0c753725-fd6f-4f85-9371-f7342f86acff@lunn.ch>
References: <20251014-10gbx-v2-1-980c524111e7@birger-koblitz.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251014-10gbx-v2-1-980c524111e7@birger-koblitz.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=QyT8a6xTN6cFhxquXbZ2kYWpr0cYAghxKfrpKvxJbOc=; b=5KakaIofM9Ae7SVAEBCuk5tGOV
 3K3k/CHMOlFgWID0ivc+FKllftOh7XBJ0cuqH7AoidMJ/+yN/JxJoQzzq1SZpNiyTcNvhcBhq/tt1
 T4HYISk9iai7Od3T8wSMhB67EFCBcCxjdO7zaqROdNMDK7mIk1OAjyO6QgyVQG3QgPAA=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=5KakaIof
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ixgbe: Add 10G-BX support
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

On Tue, Oct 14, 2025 at 06:18:27AM +0200, Birger Koblitz wrote:
61;8003;1c> Adds support for 10G-BX modules, i.e. 10GBit Ethernet over a single strand
> Single-Mode fiber
> The initialization of a 10G-BX SFP+ is the same as for a 10G SX/LX module,
> and is identified according to SFF-8472 table 5-3, footnote 3 by the
> 10G Ethernet Compliance Codes field being empty, the Nominal Bit
> Rate being compatible with 12.5GBit, and the module being a fiber module
> with a Single Mode fiber link length.
> 
> This was tested using a Lightron WSPXG-HS3LC-IEA 1270/1330nm 10km
> transceiver:
> $ sudo ethtool -m enp1s0f1
>    Identifier                          : 0x03 (SFP)
>    Extended identifier                 : 0x04 (GBIC/SFP defined by 2-wire interface ID)
>    Connector                           : 0x07 (LC)
>    Transceiver codes                   : 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00
>    Encoding                            : 0x01 (8B/10B)
>    BR Nominal                          : 10300MBd
>    Rate identifier                     : 0x00 (unspecified)
>    Length (SMF)                        : 10km
>    Length (OM2)                        : 0m
>    Length (OM1)                        : 0m
>    Length (Copper or Active cable)     : 0m
>    Length (OM3)                        : 0m
>    Laser wavelength                    : 1330nm
>    Vendor name                         : Lightron Inc.
>    Vendor OUI                          : 00:13:c5
>    Vendor PN                           : WSPXG-HS3LC-IEA
>    Vendor rev                          : 0000
>    Option values                       : 0x00 0x1a
>    Option                              : TX_DISABLE implemented
>    BR margin max                       : 0%
>    BR margin min                       : 0%
>    Vendor SN                           : S142228617
>    Date code                           : 140611
>    Optical diagnostics support         : Yes
> 
> Signed-off-by: Birger Koblitz <mail@birger-koblitz.de>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
