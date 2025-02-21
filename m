Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F7CA3EA65
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 02:54:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 617A66089A;
	Fri, 21 Feb 2025 01:54:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FJ3bC1vIqEaE; Fri, 21 Feb 2025 01:54:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 949A960852
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740102876;
	bh=W35pBp7CuEGk4YqK7rno9qhfgk9CDbdoparZYKGbp+k=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oF/fS3JsVAzHIkAz/TZ+cppo+GQtzg/HEZW8TsOOjjL9IKrbqgXo/ang/AJXFXHBl
	 6UwRIwqWNZdSXGhbNMeqg92bTnYbP8qKW/AWTsw+8P5A59dCBFLjdUI/R/B6p2GGBp
	 fVFyGBCvMkYRfoxEm/Gr9y1l5VLVvdY++36UeUYlIJNMSerDprIOBu0JxxK40SVACo
	 ukCp4vMaPxO7twxikemwv5/PjFphkfHApknrzizPT+rqIhKrzD9jhzJwnODEr3qn+t
	 2aZ5nhZdtoAGXXAn5KWfebCyBZ2wcGDasQuRZLGv9rkK5xf8UC/WPbuy9IqW0x28B1
	 0QvvGHZffoThQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 949A960852;
	Fri, 21 Feb 2025 01:54:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D93E1CF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 01:54:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BDD3E81F0A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 01:54:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WLShex6LdjtV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 01:54:34 +0000 (UTC)
X-Greylist: delayed 559 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 21 Feb 2025 01:54:33 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 12AF38202E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 12AF38202E
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04::f03c:95ff:fe5e:7468; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04::f03c:95ff:fe5e:7468])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 12AF38202E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 01:54:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 4F084683B8;
 Fri, 21 Feb 2025 01:45:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E736CC4CED1;
 Fri, 21 Feb 2025 01:45:12 +0000 (UTC)
Date: Thu, 20 Feb 2025 17:45:12 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Jiri Pirko <jiri@resnulli.us>, Cosmin Ratiu
 <cratiu@nvidia.com>, Tariq Toukan <tariqt@nvidia.com>,
 netdev@vger.kernel.org, Konrad Knitter <konrad.knitter@intel.com>, Jacob
 Keller <jacob.e.keller@intel.com>, davem@davemloft.net, Eric Dumazet
 <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn
 <andrew@lunn.ch>, linux-kernel@vger.kernel.org, ITP Upstream
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, Carolina Jubran
 <cjubran@nvidia.com>
Message-ID: <20250220174512.578eebe8@kernel.org>
In-Reply-To: <20250219164410.35665-2-przemyslaw.kitszel@intel.com>
References: <20250219164410.35665-1-przemyslaw.kitszel@intel.com>
 <20250219164410.35665-2-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740102313;
 bh=MflqgNRZC8HrjsqgYUo/6L/lKQz+zC1RrHrV1YTvXLw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=IsgqRGkRkqab7x+//LL3zBUQa+DGNxA0eecHXBF0PN7ugub8SScfvs2pDK+RwNt9H
 dDJkJSeY1tWmMxQxT6NoyrYT1MrbmoiSJDVtuK+m2qEJRAPXW1D7Dq+HEGH97lCB/F
 K0JHTOO8bmqsbjB8oABevXonfVr0acuVszlkpxG0tnoFl6X8MYpjSKcXpow0CBJFub
 8BZMSBV7nGCUTHdXlYjySIeggjjmy189vgaDgwq+hybnPkJUetRy/WFJvK4djp6GOF
 Bj0EyFgpPTWfVs2cpq+mfsnzOuPWhER9TSc0i4Gj5evdkfTkqjYgFMgBE+CNHxE9QS
 c/1NauROVApCQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=IsgqRGkR
Subject: Re: [Intel-wired-lan] [RFC net-next v2 1/2] devlink: add whole
 device devlink instance
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

On Wed, 19 Feb 2025 17:32:54 +0100 Przemek Kitszel wrote:
> Add a support for whole device devlink instance. Intented as a entity
> over all PF devices on given physical device.
> 
> In case of ice driver we have multiple PF devices (with their devlink
> dev representation), that have separate drivers loaded. However those
> still do share lots of resources due to being the on same HW. Examples
> include PTP clock and RSS LUT. Historically such stuff was assigned to
> PF0, but that was both not clear and not working well. Now such stuff
> is moved to be covered into struct ice_adapter, there is just one instance
> of such per HW.
> 
> This patch adds a devlink instance that corresponds to that ice_adapter,
> to allow arbitrage over resources (as RSS LUT) via it (further in the
> series (RFC NOTE: stripped out so far)).
> 
> Thanks to Wojciech Drewek for very nice naming of the devlink instance:
> PF0:		pci/0000:00:18.0
> whole-dev:	pci/0000:00:18
> But I made this a param for now (driver is free to pass just "whole-dev").

Which only works nicely if you're talking about functions not full
separate links :) When I was thinking about it a while back my
intuition was that we should have a single instance, just accessible
under multiple names. But I'm not married to that direction if there
are problems with it.

> $ devlink dev # (Interesting part of output only)
> pci/0000:af:00:
>   nested_devlink:
>     pci/0000:af:00.0
>     pci/0000:af:00.1
>     pci/0000:af:00.2
>     pci/0000:af:00.3
>     pci/0000:af:00.4
>     pci/0000:af:00.5
>     pci/0000:af:00.6
>     pci/0000:af:00.7

Could you go into more details on what stays on the "nested" instances
and what moves to the "whole-dev"? Jiri recently pointed out to y'all
cases where stuff that should be a port attribute was an instance
attribute.
