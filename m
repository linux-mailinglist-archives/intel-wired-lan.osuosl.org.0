Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 934104AA892
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Feb 2022 13:15:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0201481ADE;
	Sat,  5 Feb 2022 12:15:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RDZrev6mU6y5; Sat,  5 Feb 2022 12:15:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0603F81A5C;
	Sat,  5 Feb 2022 12:15:00 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B9AF81BF2E3
 for <intel-wired-lan@osuosl.org>; Sat,  5 Feb 2022 12:14:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A052881A5C
 for <intel-wired-lan@osuosl.org>; Sat,  5 Feb 2022 12:14:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pKLkQNXxGdcK for <intel-wired-lan@osuosl.org>;
 Sat,  5 Feb 2022 12:14:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C47FD81A29
 for <intel-wired-lan@osuosl.org>; Sat,  5 Feb 2022 12:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1644063293;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=TyNPl/BS5Ojb0LAkSOubv8BDmPxJEZ5jeJYKCHOdoM8=;
 b=hTpWRmtV4hQW9Jmp5FfDHV2or29+AGtHpvMqsjVZHr3JTrsQKUK751BRY43vBVvbeK3Jt0
 yE8cvVClukohjLZ70s1KZJeXn8lQpw5HP8LZE28RB+KcvoH/qCw0AqHW7bUJagJX0c6gNM
 HXv5Pamm2mt1bva2z1fD0ncWBQ1qdt4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-125-l4PPduCpMxGeq-HNVnP4pw-1; Sat, 05 Feb 2022 07:14:49 -0500
X-MC-Unique: l4PPduCpMxGeq-HNVnP4pw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B4BCE189DF50;
 Sat,  5 Feb 2022 12:14:48 +0000 (UTC)
Received: from calimero.vinschen.de (ovpn-112-15.ams2.redhat.com
 [10.36.112.15])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 766EC28570;
 Sat,  5 Feb 2022 12:14:48 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 11698A8076B; Sat,  5 Feb 2022 13:14:47 +0100 (CET)
Date: Sat, 5 Feb 2022 13:14:47 +0100
From: Corinna Vinschen <vinschen@redhat.com>
To: intel-wired-lan@osuosl.org, netdev@vger.kernel.org,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <Yf5qN/AAv2gQLWyf@calimero.vinschen.de>
Mail-Followup-To: intel-wired-lan@osuosl.org, netdev@vger.kernel.org,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
References: <20220119145259.1790015-1-vinschen@redhat.com>
 <20220119145259.1790015-3-vinschen@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220119145259.1790015-3-vinschen@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Subject: Re: [Intel-wired-lan] [PATCH 2/2 net-next v6] igb: refactor XDP
 registration
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Jan 19 15:52, Corinna Vinschen wrote:
> On changing the RX ring parameters igb uses a hack to avoid a warning
> when calling xdp_rxq_info_reg via igb_setup_rx_resources.  It just
> clears the struct xdp_rxq_info content.
> 
> Instead, change this to unregister if we're already registered.  Align
> code to the igc code.
> 
> Fixes: 9cbc948b5a20c ("igb: add XDP support")
> Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_ethtool.c |  4 ----
>  drivers/net/ethernet/intel/igb/igb_main.c    | 19 +++++++++++++------
>  2 files changed, 13 insertions(+), 10 deletions(-)

Any chance this could be set to "Tested" to go forward here?


Thanks,
Corinna

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
