Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FCAF266234
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Sep 2020 17:34:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AFC8287952;
	Fri, 11 Sep 2020 15:33:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vq56EoTUDX1J; Fri, 11 Sep 2020 15:33:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0840C87954;
	Fri, 11 Sep 2020 15:33:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3CF721BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 15:33:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 36FA687952
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 15:33:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iX3roWuIehTN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Sep 2020 15:33:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C101D8794F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 15:33:56 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1FAC8206E9;
 Fri, 11 Sep 2020 15:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599838436;
 bh=YiXNfhjvDnY0G4ItNq/VcETvX2XaKO1hUeBu6bHsXgc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=CeF6k0Ul3j6XTLLDLgYROknjdKXeNUfLxG7N1Oa/sCpRXLQ9Meb87eJAxsCO2zYsH
 m633xlE772hKjU1UvNWCnDiTUVW7bl1Qqe6/hHGHRGttsGire8LNLV8XKEKIiHLm5m
 2RE/kUd47M+RnB9GogUb6b+zfCvNRaLmf2+Arr04=
Date: Fri, 11 Sep 2020 08:33:54 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Magnus Karlsson <magnus.karlsson@gmail.com>
Message-ID: <20200911083354.7e501505@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <1599826106-19020-1-git-send-email-magnus.karlsson@gmail.com>
References: <1599826106-19020-1-git-send-email-magnus.karlsson@gmail.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: allow VMDQs to be used
 with AF_XDP zero-copy
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
Cc: maciejromanfijalkowski@gmail.com, maciej.fijalkowski@intel.com,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 11 Sep 2020 14:08:26 +0200 Magnus Karlsson wrote:
> From: Magnus Karlsson <magnus.karlsson@intel.com>
> 
> Allow VMDQs to be used with AF_XDP sockets in zero-copy mode. For some
> reason, we only allowed main VSIs to be used with zero-copy, but
> there is now reason to not allow VMDQs also.
> 
> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>

The VMQ interfaces that you create through a debugfs command interfaces?

IDK if we should add features to those, or pretend they never existed
in the first place..
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
