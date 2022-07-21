Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAB057D771
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Jul 2022 01:53:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B0B2B60E35;
	Thu, 21 Jul 2022 23:53:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0B2B60E35
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658447586;
	bh=cGN4qL0CwB51kon+SSCJD2p2MUjtROPvU7WhA84ExFs=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=11B5+4IvoX+2eF2uwbeosFuuiVPN5h1f04IcEfpzDDKe/mu619zghF9Kms++R3eqL
	 IoBWbxTLv3Z4xwskwoPeQNKYvFgw3whoGTEgFzPgkCm+kCuUG3PT1ZMAZENlyeUF+u
	 rVg82bzLmZP12rs33Ccb1sZrJos0XWLRkoVSCnD77QxcfrET6Zm7xKcTGt0FHpSPgF
	 xUgrnru8lv3vyvBTDl2v5cq3HOlL/QG+NZAF8YTY6qCED/049UzJWgVivkeK+cixnb
	 Ab0kDYkV2qvp+CdAbJcX7nA1sc5EDoYX+qoJgNXyedW7dtDFCypvKujfEkaPGdz1t5
	 axXVZU08FbDBQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qEIk871G1TAS; Thu, 21 Jul 2022 23:53:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BFAB560BFD;
	Thu, 21 Jul 2022 23:53:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFAB560BFD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9800E1BF340
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 23:53:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6FAC5403AA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 23:53:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6FAC5403AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iemCxWlDRvra for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jul 2022 23:52:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E7C24023F
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7E7C24023F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 23:52:59 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1CDB661EA4;
 Thu, 21 Jul 2022 23:52:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 190D3C341C0;
 Thu, 21 Jul 2022 23:52:57 +0000 (UTC)
Date: Thu, 21 Jul 2022 16:52:56 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20220721165256.02f83fe8@kernel.org>
In-Reply-To: <20220721211451.2475600-1-jacob.e.keller@intel.com>
References: <20220721211451.2475600-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1658447577;
 bh=yK/2aQwcTmWjKegD+naXKwpgN28c2N1Wm1Ikhzqp8T0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=a6ar49SmtZ+Qeblvh9vslHjtBhAxbfKiw+TqxcyzG8PgVwW26AjXOrZ2XqyZUKGRR
 4rbeEk5nmqWSiikSqCu/CLmf37QWXMLVBJCjBrpi+zQeYvQVWF1hEiDOCx9cJho4mS
 X/Ax02+tUpj5o2R7/p57KDmIRr3rFT0gpOqtBDdSPTxkl2QuqGjX1YW19utgQUARuV
 ejfMzr4YNovBmx9figGcqP0zx+DEMk6OZYowmFA4wnkHP5JJba3wAL2O93o5J5R5TW
 umXAqAk6kAih+uwefwoKnqwcgmSZifwEHgtZS1OQAF1kqPQC5kSs/NmO2JxjNP0FSx
 QYHLqH2MNP0mg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=a6ar49Sm
Subject: Re: [Intel-wired-lan] [net-next v2 0/2] devlink: implement dry run
 support for flash update
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
Cc: Jonathan Corbet <corbet@lwn.net>, netdev@vger.kernel.org,
 David Ahern <dsahern@kernel.org>, linux-doc@vger.kernel.org,
 Stephen Hemminger <stephen@networkplumber.org>,
 Eric Dumazet <edumazet@google.com>, Jiri Pirko <jiri@nvidia.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 21 Jul 2022 14:14:45 -0700 Jacob Keller wrote:
> This is a re-send of the dry run support I submitted nearly a year ago at
> https://lore.kernel.org/netdev/CO1PR11MB50898047B9C0FAA520505AFDD6B59@CO1PR11MB5089.namprd11.prod.outlook.com/

You confused patchwork, please post user space in separate thread:

https://www.kernel.org/doc/html/latest/process/maintainer-netdev.html#how-do-i-post-corresponding-changes-to-user-space-components

Tomorrow:

https://www.kernel.org/doc/html/latest/process/maintainer-netdev.html#i-have-received-review-feedback-when-should-i-post-a-revised-version-of-the-patches
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
