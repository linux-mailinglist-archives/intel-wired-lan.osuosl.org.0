Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C8B6DBF7B
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Apr 2023 12:34:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 73F6A401AD;
	Sun,  9 Apr 2023 10:34:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 73F6A401AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681036464;
	bh=WE1cuU4Z9Flrabb2E/ijTGmPYhV4XbMyOQ4mlm4ST1g=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Xo+veqXnKEwBmvVl19aQt4+aMm0YJ20s35mKZXN6mxEE8Uw7pKpXLzPd1rbZHy8aA
	 poOmZlUkVdZOAvS/fumvKD+3L3CBBsXClZAn3zGMMK/qgAT0E7WbihiHHqXCVrt5ZA
	 zTWcL1rMTI/bLKx8JkiviLQ5U7OANcWm/4yo+wIBmVtggCbzno4bdZWcgc+7zlHt5m
	 cywBTdOsJRH4qz34fV9HsKYrtWo2ArPcIH99Q16ojQtcXmTnUsE8haeZwqWuIxm5Aw
	 CruVEjk1QInrIxjmyFB/WXsXZrnbMqWF5gF9nxvkcO6jpagY4+eONjFoKh3cK3mH1/
	 arJ8pO8Jxu0yQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4IEkspVwBo8u; Sun,  9 Apr 2023 10:34:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 77A1B400F1;
	Sun,  9 Apr 2023 10:34:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 77A1B400F1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4B0171BF30D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Apr 2023 10:34:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 22FB3401D5
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Apr 2023 10:34:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 22FB3401D5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T4zDjspuQdaR for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Apr 2023 10:34:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8DD4B40477
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8DD4B40477
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Apr 2023 10:34:18 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E58B361360;
 Sun,  9 Apr 2023 10:34:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7226C433D2;
 Sun,  9 Apr 2023 10:34:16 +0000 (UTC)
Date: Sun, 9 Apr 2023 13:34:13 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20230409103413.GN14869@unreal>
References: <20230407165219.2737504-1-michal.swiatkowski@linux.intel.com>
 <20230407165219.2737504-4-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230407165219.2737504-4-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1681036457;
 bh=Ycs0r3nhNTqLgTwY4wX8YJzqm75b0YNp4s5ZERM7GjU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rBypstF+RAHg2ZsPS1iN5oBl8CUzapLfWWbfUt9COR6kV6545l7pGXHWvAkDotL/m
 YwSryyYW0495rYB0XkqVNpkdI0VaJ7zwCgrvLj7VZO7rwb8oXqanx5pNHk7b93NAFv
 U8hMDRf5aOpE964TY9TxRAzF0Qtzrk99z9EEj3BQ/A3Vh+PgwG0rjGz5w7CS80rr9j
 O0xugyNA4Mi9dOuTqhrkm4sesmIX4hToIQyzMhrNjs5Ryo4bRn06bTypYqy/JMrQRg
 pVjJZnjVJpt1cm/1LLnZZ79Kfgvld+ztYZ08ZALGULWHop6d4s4AdVKBqLJw+DxTpL
 wqVgkDuzUS8SA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=rBypstF+
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 3/5] ice: specify field
 names in ice_prot_ext init
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Apr 07, 2023 at 06:52:17PM +0200, Michal Swiatkowski wrote:
> Anonymous initializers are now discouraged. Define ICE_PROTCOL_ENTRY
> macro to rewrite anonymous initializers to named one. No functional
> changes here.
> 
> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 51 +++++++++++----------
>  1 file changed, 28 insertions(+), 23 deletions(-)
> 

Thanks,
Reviewed-by: Leon Romanovsky <leonro@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
