Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A95D6C7347
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Mar 2023 23:46:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 79AD460BCD;
	Thu, 23 Mar 2023 22:46:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 79AD460BCD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679611588;
	bh=KpSj8Ww+NKGqrZ4i6I4LZK1nhDGU6EHYlGLl9xnw23k=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CFl9+eYwDWhNPDlEyUNEvhFAZCeOTIRdor0vbOwCcXbyHNBbSfKZp/vEZMgdNIFr9
	 lwOEW7OIiNIxqci7ckeJ9Xs1LoqvbrcKWLBjtnDkSbpVaxfNFLKfeb9KAJJZFrOA9l
	 Q+7pvItvXiQBveTkQalEZo4ycD7ipP/XaUyz/2j8T4ec+K265hohhIErFqnlMhQvWS
	 WgUZbtfO1QHNjvJkZOASNdW4/zjbpQLhVFW0BOjRPuKIAjhVl7WQlBweA68wImR0JU
	 U5CWuhBuT0FoCxPO/lOf95Xo6mMYwkB2UfYprdR8xV3g8EPeUxz+B7OTs3AO4w4Fc0
	 m0I7W/z9tTZxQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WrFOdpRzYDX6; Thu, 23 Mar 2023 22:46:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A05760AC1;
	Thu, 23 Mar 2023 22:46:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A05760AC1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 430311BF38C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Mar 2023 22:46:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1AA7160AC1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Mar 2023 22:46:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1AA7160AC1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fNqVSfyj6Djs for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Mar 2023 22:46:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4AD3060A63
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4AD3060A63
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Mar 2023 22:46:21 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id C8551CE23CA;
 Thu, 23 Mar 2023 22:46:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACE8EC433D2;
 Thu, 23 Mar 2023 22:46:15 +0000 (UTC)
Date: Thu, 23 Mar 2023 15:46:14 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20230323154614.6c24afca@kernel.org>
In-Reply-To: <fccbd0cc-f760-4f1a-8830-64a245b228dc@lunn.ch>
References: <20230322233028.269410-1-kuba@kernel.org>
 <06d6a33e-60d4-45ea-b928-d3691912b85e@lunn.ch>
 <20230322180406.2a46c3bd@kernel.org>
 <fccbd0cc-f760-4f1a-8830-64a245b228dc@lunn.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1679611576;
 bh=gQbvpHZewx2gEFZP4SRhYieRcGI/sz2SjdLybk0iNMk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Cvq1PelldySmHLuJ3SUwumG5X2qybeHEjqZPFggYr8rEwkqCftxoBQItdMZs1nY4/
 6ROUGYunh1evy/4aC0mgW49D32IeGTFy0R3CML/l/4LD2NI8u1tSPPMfJPPXc2+mrS
 YsSEcTL/HxMUrK3Hgz4ANfgS4Q3luOhTciIB7qY1NpeVbNoVOTKTzNRWsDEV9tkGUy
 jUvwC05p9fI3Pu1GNoypdaNIhLhMoi3zR8zvE8vX3EOB70OsQwtXRypzz1AVbrCumd
 vNLexHCW3j975wDtTNpj1CNNq6P8dtHplBeNhJZWy9fW4l49BaJY2eHaMWMfiYCgGy
 nMLATzp//UGtA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Cvq1Pell
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/3] net: provide macros for
 commonly copied lockless queue stop/wake code
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
Cc: willemb@google.com, netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, michael.chan@broadcom.com, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 23 Mar 2023 22:02:29 +0100 Andrew Lunn wrote:
> We do seem to have a policy of asking for a 0/X. And it is used for
> the merge commit. That is my real point. And i don't see why the text
> can be repeated in the merge commit and the individual commits.

Alright, I'll respin and add a cover. But I think we should be critical
of the rules. The rules are just a mental shortcut, we shouldn't lose
sight of why they are in place and maintain some flexibility.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
