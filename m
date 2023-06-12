Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C04D472D412
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 00:05:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 80DB3405AB;
	Mon, 12 Jun 2023 22:05:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 80DB3405AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686607536;
	bh=kSVL6U+ipCVMxCw6ZBIBqvRYgKip2VmbMbuvLzZpAD4=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QDdLQzf2j0ITN4EwHX83i0VgGiGvB86gIN0OlT20NosIBtVkdF1AgLZj3kg7QHhg9
	 SckUsb0uah7VEG+pdmbMfmqyzI2X2jDv2PiY2T1jEK/jrpHHOSDeBApxKSM0tp3Dvs
	 ciFxheftl1fM23Ke/Pv3tWIyY9uXyH40UARcAqKniqSGz0cceTZvG6FisVtm/Z5rQN
	 Qvw+lblN8ioN3fMaOMcXXpLQwI060NO2UwGJBoN9LAq8Qc3LEeQio0jfdks6Zr7V5I
	 Aq+17p+zAhPEVkfs6Gzog8Q+cuen69lyshMCj1K3yZoNvu+4ZA84Fe3FYe/D7ZHEOS
	 YW+q+GKNEf63Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vsYOzFMuchmL; Mon, 12 Jun 2023 22:05:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 778A54053C;
	Mon, 12 Jun 2023 22:05:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 778A54053C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2C7541BF286
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 22:05:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ED89B409B6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 22:05:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED89B409B6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JseZqhYwcv6c for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jun 2023 22:05:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00C61409B1
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 00C61409B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 22:05:29 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id B9455618C2;
 Mon, 12 Jun 2023 22:05:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C74BAC433D2;
 Mon, 12 Jun 2023 22:05:27 +0000 (UTC)
Date: Mon, 12 Jun 2023 15:05:26 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Tree Davies <tdavies@darkphysics.net>
Message-ID: <20230612150526.10ca14ac@kernel.org>
In-Reply-To: <ZIZI5czU2Qv5KrPA@oatmeal.darkphysics>
References: <ZIZI5czU2Qv5KrPA@oatmeal.darkphysics>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1686607528;
 bh=67j+zg7ffLZr8d1DjU5R47Sa/2k7qREoVr6vB5Cd3Ak=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hatKJDtMvsdi7USGKbReD6lLZDJamN3rTvZ/af6LWTc9abHe2bv81ZiFuwsFTvgdV
 WvbJk6hoz3MePv8iMRZjT6erUwQfTAeTOUniXNm7WBUIswCSV4+HQn/PamoS5zHPbj
 9oUBAr7bY3yUJW9zLCdQHp7/LjjpQwppjP/Bwp7WcOsHRl2vbALIPU3Gq1AVkXv53N
 5fWnV4fNE+5/PxWb009SHsqJga4tZbqUzRyRVpvKP3KxlVxmtzS2FKQAJsn4XDNuTI
 THOSvXA1XDbdPG5xE+eqKzOTaU/ySDaAeKYDBL4EDJRvcEYSlO9ZXjQpS0tgUum7WM
 b9QSonWi2YC3w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=hatKJDtM
Subject: Re: [Intel-wired-lan] [PATCH] net/e1000: Fix single statement
 blocks warning
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, 11 Jun 2023 15:21:36 -0700 Tree Davies wrote:
> This patch fixes checkpatch.pl warning of type:
> WARNING: braces {} are not necessary for single statement blocks

We don't accept pure checkpatch "fixes" in networking, sorry.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
