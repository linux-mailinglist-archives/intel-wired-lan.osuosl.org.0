Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7D461752A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 04:41:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 864DE81EAF;
	Thu,  3 Nov 2022 03:41:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 864DE81EAF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667446882;
	bh=oX2KNKizz5JJg+wlknGEHUkGfjhY82rYVvNHNePId4s=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aA8hcQZ/nEVIri0CLNndCYTW4HCGIGEoR4Z6MCv1wrOUXQaEPAOCOj00PYCVAHdBH
	 XcVEU0UhZXslm+kF9KvV2yDtm8fY2c+pqybKqdnK0KQgW0q7vEBhKfCTJsG71anwS3
	 NsECG2tZQbWYoAuL6GoRl5ynCbdPbOSjsH1M5ZFmtmfuHAeSw9MnbSLjJHjjYg2t9u
	 zvjJg5sq2vw/7X53AY/57fw6qjNmL2cPZez8+TU1ncvdfwuyX4LdT8on7xGo7ISuZB
	 CeRpV9AWth6vfTf8L8KTVdsCaSC2iRSZtXPqd3TePxllgSEm5xy3ZWZdoeOqxete8m
	 RDTpClvufHalg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bE9gfhOaYqIK; Thu,  3 Nov 2022 03:41:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9EE2781EA4;
	Thu,  3 Nov 2022 03:41:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9EE2781EA4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 26C651BF390
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 03:41:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ECFBD60E4C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 03:41:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ECFBD60E4C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ivOThjBoTbD0 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 03:41:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3294A60BD0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3294A60BD0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 03:41:15 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id D41CDB82611;
 Thu,  3 Nov 2022 03:41:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A80CC433C1;
 Thu,  3 Nov 2022 03:41:11 +0000 (UTC)
Date: Wed, 2 Nov 2022 20:41:10 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Jiri Slaby (SUSE)" <jirislaby@kernel.org>
Message-ID: <20221102204110.26a6f021@kernel.org>
In-Reply-To: <20221031114456.10482-1-jirislaby@kernel.org>
References: <20221031114456.10482-1-jirislaby@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1667446871;
 bh=nsTfwD5gRN1YSFyu2J0cf3RCKnhDy5xYPwQ07MtcAxk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=cWJjytBlmNO3TZmOfdeRYkUNCo7n1TIOowx5NVLPqQEc+Fd0bEY7odMeMRqudSK/7
 gtozysYMAAB6/pzeFPhXkC+P0syy4/QGH+H7rNB7VbW6Cf1hjY/YEl+Xtqrark1Is1
 7cMVgwV6z7H1Dp1LBryzU5S6e09wWNRSbt8+xnuD6uq5gK8YzJK3aCEEHOhWNMEKhA
 jHextKlJmd0pKVio5J+giizZrIPV1/HN89KRAh3cGNuoMyORjy6vKMnYa+vt2Ml+2T
 sfkFVjFcGIV9g1ZdQTD0PuwTE36Z/Ls5N2TAmTfKWTstue4qLBS+W3toZ2nO4ikLCY
 LXUmwlcXrxnPA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=cWJjytBl
Subject: Re: [Intel-wired-lan] [PATCH] i40e (gcc13): synchronize
 allocate/free functions return type & values
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, Martin Liska <mliska@suse.cz>, "David S.
 Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 31 Oct 2022 12:44:56 +0100 Jiri Slaby (SUSE) wrote:
> I.e. the type of their return value in the definition is int, while the
> declaration spell enum i40e_status. Synchronize the definitions to the
> latter.
> 
> And make sure proper values are returned. I.e. I40E_SUCCESS and not 0,
> I40E_ERR_NO_MEMORY and not -ENOMEM.

Let's go the opposite way, towards using standard errno.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
