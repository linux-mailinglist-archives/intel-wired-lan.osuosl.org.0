Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB8095A549
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 21:27:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 363FB80E02;
	Wed, 21 Aug 2024 19:27:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1eTAQwbjvuPY; Wed, 21 Aug 2024 19:27:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6121081068
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724268422;
	bh=tH90nv45vcliSJcWh6Jj2zVF77ZNIzcHCfFm7yxo/Hk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=d8w6DuI5Vrh8whoQwARUp8iTU/5gumFWllE/i649iDxXuPlnbBkDpyYrIvmXdrZ0y
	 MSsaa8x6BTFnF05nqJd91LxuO+58DIhDssG6bJnf22ruS3w1EU3MvaW7OTC67Nu86Z
	 mzaWyQpzsPgGzB/9RtHJ+wtObrftWEhLfNTCXxFuI4Y9JqPAgZ9AVZ7c1DNZAKb5k6
	 tmmjgbVVZorcXlDK5WFPxdloYCu92lH8X4+/rYEEQKPpgIG2pZK6cXulYIb7J5DIQG
	 ldWny4size5pmPxzePufDhH+BRczGWQbTIdFraK2NKojZJXhfcRxym9UfNYMbF65pI
	 ymJSG6VkvEuSg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6121081068;
	Wed, 21 Aug 2024 19:27:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 86BD71BF379
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 19:27:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7366F60757
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 19:27:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mdv_wvXG-jB2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 19:27:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B00C36074F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B00C36074F
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B00C36074F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 19:27:00 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 5DFD66113D;
 Wed, 21 Aug 2024 19:26:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECB9CC32781;
 Wed, 21 Aug 2024 19:26:57 +0000 (UTC)
Date: Wed, 21 Aug 2024 20:26:55 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20240821192655.GH2164@kernel.org>
References: <20240819092756.1113554-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240819092756.1113554-1-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1724268419;
 bh=ylOCmaplzGHqEO1m4kZtLVYPg9/Dtj/6J1o30seDo50=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RGcBogCIIhv98MRVjfpeoGmlbLRYpSXcRS3qyG66fD1LRCDDuQP5nEwSRNKNsDORp
 Vc+Mg81IsUT9lSUDfx78GRSqrI2/SrOM6y4lMmeOQOdywZK37xh6yMq4o6ukP4WNmO
 8sqZt0DsirNZo9Neqnl1CJCyYA29oLcKvdfgj1KFU3pGQORGNJepXQqk06n59puQnN
 oTCFUAhMUmERLE58HLT+TuufFS1eNCLNYYz4iYAk51hBgxi34XiZZu6qSsXWkjXpyX
 rQhh5oFvmlWEe2fnngwi0K92HOoLOwwafP7IixlZjtppFjA3uwMQkbMTRK5A4eB3Id
 zzhoO+hOkYFAg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=RGcBogCI
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] i40e: Add Energy
 Efficient Ethernet ability for X710 Base-T/KR/KX cards
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
Cc: anthony.l.nguyen@intel.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 19, 2024 at 11:27:56AM +0200, Aleksandr Loktionov wrote:
> Add "EEE: Enabled/Disabled" to dmesg for supported X710 Base-T/KR/KX cards.
> According to the IEEE standard report the EEE ability and and the
> EEE Link Partner ability. Use the kernel's 'ethtool_keee' structure
> and report EEE link modes.
> 
> Example:
> dmesg | grep 'NIC Link is'
> ethtool --show-eee <device>
> 
> Before:
> 	NIC Link is Up, 10 Gbps Full Duplex, Flow Control: None
> 
>         Supported EEE link modes:  Not reported
>         Advertised EEE link modes:  Not reported
>         Link partner advertised EEE link modes:  Not reported
> 
> After:
> 	NIC Link is Up, 10 Gbps Full Duplex, Flow Control: None, EEE: Enabled
> 
>         Supported EEE link modes:  100baseT/Full
>                                    1000baseT/Full
>                                    10000baseT/Full
>         Advertised EEE link modes:  100baseT/Full
>                                     1000baseT/Full
>                                     10000baseT/Full
>         Link partner advertised EEE link modes:  100baseT/Full
>                                                  1000baseT/Full
>                                                  10000baseT/Full
> 
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v2->v3 removed double space from code
> v1->v2 removed some not mandatory changes, some style improvements

Thanks for the updates.

Reviewed-by: Simon Horman <horms@kernel.org>
