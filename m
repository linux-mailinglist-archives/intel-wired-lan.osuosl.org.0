Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4817892AF
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Aug 2023 02:23:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5351283D23;
	Sat, 26 Aug 2023 00:23:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5351283D23
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693009398;
	bh=MQ1DcQ2h0bAjo3HMTwhMezec4r5/5LAB+WWCZCR1c4A=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ebuxD3lvrARRFGiltBSwznxY4P6ab9x5NpJEG3z7nsm0IZJMOVyWzA0UCnQWi/AXX
	 lmBya8lolDOVS8JUGi6tnNtr0J6fe2NP3eKOq1tGamIVyzDhRTOC1ksQNUsDV2q92C
	 5GiQ9K3D+waR4ONb8DMz9YrKeps4tauIZB/3TqpMYhPn1S5vuPQKK0+299SfsIto77
	 p+GXmmpjjbDH3+VwYVN9Xx3hmnP4NHRhcbjtQLV4r2n/NGg4HwpCLkasxvZG9hLD/+
	 tovglqA8EE2/Kbn7yFG8JD9fPPHtPaL98Ej1w1E370eurinx/aLXq71uIYOz8tnxON
	 KvY+KrF0Bl+ug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DL-34FUq-yGb; Sat, 26 Aug 2023 00:23:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E88983D1C;
	Sat, 26 Aug 2023 00:23:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E88983D1C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 17DEA1BF995
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Aug 2023 00:23:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EE0B8401B7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Aug 2023 00:23:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE0B8401B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qKFD1x6L_FjU for <intel-wired-lan@lists.osuosl.org>;
 Sat, 26 Aug 2023 00:23:11 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 17AF940167
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Aug 2023 00:23:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 17AF940167
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id DB96761F6A;
 Sat, 26 Aug 2023 00:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F9C1C433C7;
 Sat, 26 Aug 2023 00:23:08 +0000 (UTC)
Date: Fri, 25 Aug 2023 17:23:07 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20230825172307.7fa89fc7@kernel.org>
In-Reply-To: <dbdc320e-bd4a-eb49-5c6d-8f861602046f@intel.com>
References: <20230823093158.782802-1-junfeng.guo@intel.com>
 <20230824075500.1735790-1-junfeng.guo@intel.com>
 <20230824082039.22901063@kernel.org>
 <dbdc320e-bd4a-eb49-5c6d-8f861602046f@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1693009389;
 bh=p4xIvRkjsP9NejGidMaUBSV/bjLaTX6t/uNfobhVURc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=s6RxF9vmYN7wRvFsBmjaD6//Sx1aBbvsMqJhznTc89BIBniNi/npaZW+jmy3MdfJi
 8ZSVuCIKNvTd8Qsw9+S1ZZ5SkTOcMRPlMdwwGqgqGkNBAloLrRfzN7luzVWZ86oQkW
 HvkY/3Ac1A7H8krnpnHHc64TE72kmMVNOEnxEvlfqPGaBNTaJOlbRJ6IRr4aL91WUO
 ZszwEsrVteO4SOgXs4XyStWyISTb+zgBIf39kWw/EG/D/cxXx1mMehiSh/YgoZ6+Qe
 K+vS+W6hvmLWmTQWTMiEix8yAMUpVa6nIg8RZ6pWeCnpy5HgJWQdwizkZdME5ESdSp
 HU2lyi+78gfSg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=s6RxF9vm
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 00/15] Introduce the
 Parser Library
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
Cc: ivecera@redhat.com, netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 qi.z.zhang@intel.com, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 25 Aug 2023 12:52:27 +0200 Alexander Lobakin wrote:
> > You keep breaking the posting guidelines :(
> > I already complained to people at Intel about you.
> > 
> > The only way to push back that I can think of is to start handing out
> > posting suspensions for all @intel.com addresses on netdev. Please  
> 
> Ah, that collective responsibility :D

I'd call it delegating the responsibilities :)

> > don't make us stoop that low.  
> 
> But seriously, please don't. Intel is huge and we physically can't keep
> an eye on every developer or patch. I personally don't even know what
> team the submitter is from.
> Spending 8 hrs a day on tracking every @intel.com submission on
> netdev is also not something I'd like to do at work (I mean, I'd
> probably like reviewing every line coming out of my org, had I
> 120-150 hrs a day...). I know that sounds cheap, but that's how I see
> it :z

Intel may be huge, but this patch is for ice specifically. And the
author knows enough to put presumably-internally-mandated iwl-next
tag in the subject. So how about someone steps up and points them
at a manual before 4 versions are posted?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
