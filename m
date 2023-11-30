Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A444F7FF429
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Nov 2023 16:57:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2A148435FC;
	Thu, 30 Nov 2023 15:57:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A148435FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701359823;
	bh=xZdB//mSXkV2BL2I767jXjxZdTTSjleTvrxfCzYbAOc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jkpmDPA94M/KFuz8kdxJcsKCa4xefHVDB/xsLu8fIpmfoNA7qjJcMUz3/Bi4jSMo+
	 CEsre6qey4qcLQCBfkyjLMv/gEICtuUmgMfd+sxTSgPLfUHsZ4eISziIW1wRzI7O2U
	 5CHToJkYomQZRCHqNYntHOBPK01zGjeaLeCUh9bLzBi/dTR5f3Wwwk9KkAhxHf+7g0
	 xx9FIMvAuy+jQPjqfgjZTXITBg4g6ssrkleRB17o4E/19YHGwf1lf/soLgG4e44KS+
	 BRkNdVAahZOkri0+bdTmsvhcLKdPxdeGT5yZdOqRhtCpkyMmqz7xUKO7dHQXXArxgD
	 080bGX3r/BZzw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MIgnUa6gqfJZ; Thu, 30 Nov 2023 15:57:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D7AEE435D9;
	Thu, 30 Nov 2023 15:57:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7AEE435D9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5C6861BF37F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 15:56:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3E7D9435E8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 15:56:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3E7D9435E8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ISXgvQ-9nWN2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Nov 2023 15:56:56 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EE58D435D9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 15:56:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE58D435D9
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1r8jPH-001g9o-D0; Thu, 30 Nov 2023 16:56:51 +0100
Date: Thu, 30 Nov 2023 16:56:51 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Sachin Bahadur <sachin.bahadur@intel.com>
Message-ID: <6404194f-3193-49e0-8e46-267affb56c24@lunn.ch>
References: <20231129175604.1374020-1-sachin.bahadur@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231129175604.1374020-1-sachin.bahadur@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=vvjsEOQej4SMoOpa4ZlLrjIRD//hxAlCwhwhZBCdgUM=; b=RuTYBgvZABCqx5XpLLk37YLAET
 0jP0ZH3EpamYDe8uFIgkha+rnfuWJwv2o/wbM/GEurHpsE+aYRY39AVfZ+Llr88CJdqccDUA8do/X
 HoA3hQpK3Wao+dx+kQl1gTz5HUKHp7m+/k2W5xeEkbyQp8GUOqa01dcU8vFT6a4hIWNs=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=RuTYBgvZ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Print NIC FW version
 during init
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Nov 29, 2023 at 09:56:04AM -0800, Sachin Bahadur wrote:
> Print NIC FW version during PF initialization. FW version in dmesg is used
> to identify and isolate issues. Particularly useful when dmesg is read
> after reboot.
> 
> Example log from dmesg:
> ice 0000:ca:00.0: fw 6.2.9 api 1.7.9 nvm 3.32 0x8000d83e 1.3146.0
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Reviewed-by: Pawel Kaminski <pawel.kaminski@intel.com>
> Signed-off-by: Sachin Bahadur <sachin.bahadur@intel.com>

Is this information available via devlink info?
It has a section to report firmware version.

   Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
