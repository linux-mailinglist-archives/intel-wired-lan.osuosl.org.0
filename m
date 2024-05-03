Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8548BAFC3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 May 2024 17:28:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D850041FDE;
	Fri,  3 May 2024 15:28:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SEQLLOlJhlhK; Fri,  3 May 2024 15:28:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0885D41FDD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714750095;
	bh=J/8NphP69CYn7y0E9BgaTkpdRNJnL8TNbGcSVbX6lXA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xIb50Y7lUXnBrY0AlMh2YdgZBc93FHfsfVEH9a+UhCb4f64jg6DOPSoHIGQc1b5Du
	 kfHLL5p0z+N5RMh9e0Guow5pDUT3pYXjranwj8GFZaspNko03v3Y+JGHDLlHU72wlN
	 Ok3COJjf/vJiXvIUKTSv3Il/pVMap0JNB4Fms0Qcjq/rs44kG0iqKfcc9h54Eal4EM
	 9tBMsHdaE30UE5KO9J0PPXnA7+G0fxnGpbA3epmhA+qTW9Eo8md4ACvGT7//P0Zwcc
	 b2LlLdLW0mi2fTeM48z3nOnhGDZk5vf1u1e9nNLHqbP9c2fsyadGBfjZSNuN0z7N/s
	 zHPf554J6zTpQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0885D41FDD;
	Fri,  3 May 2024 15:28:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4C9841BF32D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 13:09:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3669D41D44
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 13:09:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xG4obGyINmwb for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 May 2024 13:09:14 +0000 (UTC)
X-Greylist: delayed 486 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 03 May 2024 13:09:13 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A33E041D41
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A33E041D41
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.83.229.9;
 helo=mail.ycharbi.fr; envelope-from=kernel.org-fo5k2w@ycharbi.fr;
 receiver=<UNKNOWN> 
Received: from mail.ycharbi.fr (mail.ycharbi.fr [45.83.229.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A33E041D41
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 13:09:13 +0000 (UTC)
Message-ID: <bf100765-5930-4dd5-9004-aaf7e9f2eaa2@ycharbi.fr>
Date: Fri, 3 May 2024 15:01:00 +0200
MIME-Version: 1.0
To: kernel.org-fo5k2w@ycharbi.fr
References: <8267673cce94022974bcf35b2bf0f6545105d03e@ycharbi.fr>
Content-Language: fr
From: kernel.org-fo5k2w@ycharbi.fr
In-Reply-To: <8267673cce94022974bcf35b2bf0f6545105d03e@ycharbi.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Fri, 03 May 2024 15:28:09 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=ycharbi.fr; s=mail; 
 t=1714741261; bh=MEqUzqDW/TOiMz20Ph7/o+xIaZvFQabwFkxkR6vHIjQ=;
 h=Date:To:Cc:References:Subject:From:In-Reply-To:List-Unsubscribe:
 From;
 b=opUPuwgMYTXpG0KaSvmWRuzl4+ua604kWLHy8R4cAHjCS3IDTPcwjFLkAxSIEOUv6
 QYAH6AdjSI4lkqHNN0NjBYLFkRYdDEGusO7GnqSXCpwRu9VU67S2pMv0v79Y9XkBSE
 wLGzPpCERbqeVFV5aex9yG8Cv5V+OOOHNT+M4f9E51tZwuRVt06XjlQznUcyR2R3XX
 Q2Wi76yVLBYzu58ptALokOyhS7l056QqVvczjxdaJVXzIN5a6+nEuXfqlyGUhb4MQr
 PlLUcBF8wPlV3SqL97V6C4OnS9Z+XrA88UM9c/ZM/Nwho08PSDQ/rrftRwZ9CDtWSG
 JtyB58yq0Hrcg/SeNRu217/jaQyakwuh7/gIk0AIEYRg5IxDazntccxQb8MdLTR/H/
 ErXEnui+gE+ZCcQXUlsMW0IzmQG2rln1kDwAyet2oPgSs4PAp3nVk63SJahmwHhAXw
 GlH004LpK2Jve/e3rINPnswjT9X8RzG+g8FA0ms41opRgOFok0bPA9xXOmLFFLceWO
 /EW4oX5cI58nkt34MrMAAyoIeg1FDetF0YyecOzvr4EJy2RDqexPitr2LcgIHtAOOf
 Z+t9Gunjws0cnGppEahUmMrpnt36zO7BFTpg4cBY/nsCEV8JuhGBipgtW13lLlpNjj
 WzG3DowCqmt+M9xDisJoIlB8=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=ycharbi.fr
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=ycharbi.fr header.i=@ycharbi.fr header.a=rsa-sha256
 header.s=mail header.b=opUPuwgM
Subject: Re: [Intel-wired-lan] Non-functional ixgbe driver between Intel
 X553 chipset and Cisco switch via kernel >=6.1 under Debian
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
Cc: intel-wired-lan@lists.osuosl.org, debian-kernel@lists.debian.org,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello,

I have not yet received a reply from you. This problem is blocking many 
users and is a major handicap when using Intel network cards with X553 
chips.

I'm always available to carry out any tests you may consider useful for 
resolving this ixgbe driver bug in Linux kernels > 6.0.

As a reminder, here is the link to my original message:
https://lore.kernel.org/all/8267673cce94022974bcf35b2bf0f6545105d03e@ycharbi.fr/

Best regards.
