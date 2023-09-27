Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A77AE7B05C2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Sep 2023 15:48:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D56B16144D;
	Wed, 27 Sep 2023 13:48:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D56B16144D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695822499;
	bh=H8jq5WCDjIH11FaOU0oPL9y+WmdvRnUhupw1yJzWxoM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9TeV31Kz25PV2I0VOADVyTUH+CQ25qzgEtHCmkKEltsu+qpduOS36b9m1oNhaAyxh
	 KVQFGbqwbGyI0Xeuv5QMe3bW8i6g2QBaR9RLi4zj/4YlS7VzitWtEYPobI+5vJs0of
	 m8IV4OzAEV38z7g+wVZq6vpFEFeResn4tcIhGfzeN7SJespzqEfC+nn3Zfn2YsHpvK
	 ggEWZwKBA38+HQpnr72vAACyp3etRqoFx1MXZQptGl3vSQ5NfbMcjHoAjwhUoXo1+7
	 lnqMsFxGvIGhjnyIayDcnuy7SvrhvBFo2t2H+DDkf1SJpT3h3i1n8VlNF6Trw1ytUT
	 RA6X2u5/L3KvQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2cgAKU7EAXfP; Wed, 27 Sep 2023 13:48:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF04861060;
	Wed, 27 Sep 2023 13:48:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF04861060
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B7F5B1BF275
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 13:48:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9ABA241AD7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 13:48:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9ABA241AD7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XDI3as6nIGQi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Sep 2023 13:48:13 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C06EB41AD5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 13:48:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C06EB41AD5
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1qlUtc-007eMG-R4; Wed, 27 Sep 2023 15:48:08 +0200
Date: Wed, 27 Sep 2023 15:48:08 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Konrad Knitter <konrad.knitter@intel.com>
Message-ID: <7e525cbc-1f68-4826-9d70-f2f4c99776d8@lunn.ch>
References: <20230927133857.559432-1-konrad.knitter@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230927133857.559432-1-konrad.knitter@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=upWcfxFHp21c3N/P/Zf9mRzfCLqhI1aD4eMLF3ok/Vk=; b=zpKuWcYUCROCbiL5d33QV6GJe6
 K+sLFFPnrw5610zFse0PD5AcMNI/KulQXr4sbCyaWKhtAxUch9xTQa/H1xUwBbVAUQ+pSZVhU5kAO
 jjxnRVPXNdq/SzfPEAwV4rjlucaoDtkzls5m/XqHcpqX4y60us59DZeLLpLEsDXDZWew=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=zpKuWcYU
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: read internal
 temperature sensor
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
Cc: netdev@vger.kernel.org, Marcin Domagala <marcinx.domagala@intel.com>,
 Eric Joyner <eric.joyner@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Sep 27, 2023 at 03:38:57PM +0200, Konrad Knitter wrote:
> Since 4.30 firmware exposes internal thermal sensor reading via admin
> queue commands. Expose those readouts via hwmon API when supported.
> 
> Driver provides current reading from HW as well as device specific
> thresholds for thermal alarm (Warning, Critical, Fatal) events.

Hi Konrad

Please also Cc: the hwmon Maintainer to get his review comments.

       Andew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
