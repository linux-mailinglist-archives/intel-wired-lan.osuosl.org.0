Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AFEC7413E8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jun 2023 16:38:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2987B41C01;
	Wed, 28 Jun 2023 14:38:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2987B41C01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687963120;
	bh=I2Pm0jF1byQmtG/i2veMzOXKKqaLyQCRIkimIyLYIFA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aAJq+9nmpUIeD7C6TrTFL6d9dGm8F5GkUb0kpV4M1Qgy+sRuZnY4hlOSenprKKd7E
	 eU3dzlQM+bf7SOl2cxGHbjZeCm535VZKQ8AaJOXrrWzx0k0bIH2dBHKWcJrif/bwh7
	 +VgtxVjhWhrX2JGgFRmJhCL9o7WEywRaRTWuXslHqCdVQttD7KlRRfYxjDZW7dxhsg
	 ZmTH3bjXgXUL/HU4CVQW9kYNVgn8dMgOz5NoslhCnXWx9i6muOsT/NcTjC+pEy9zWq
	 d8u86Agl43//rFvawUzvQ35a0Q/xqR8pmXVrlvHTX8Xk6yMSCREvXogZPYGdGI/VUy
	 0c/blLOM0GvHw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DGxNWod92xMs; Wed, 28 Jun 2023 14:38:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F2F84417BA;
	Wed, 28 Jun 2023 14:38:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F2F84417BA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C79F01BF2CC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 14:38:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ACE846059D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 14:38:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ACE846059D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cgv1byP-m6Bg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jun 2023 14:38:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1BDB1600C6
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1BDB1600C6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 14:38:31 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1qEWIh-0007qk-QH; Wed, 28 Jun 2023 16:37:43 +0200
Date: Wed, 28 Jun 2023 16:37:43 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: yunchuan <yunchuan@nfschina.com>
Message-ID: <badb3550-e157-4a31-9e49-ad184990c06d@lunn.ch>
References: <1f5652f7-7eb2-11f0-4a07-c87f2992e509@huawei.com>
 <734b846f-3235-f2e3-db06-6e852803cd7f@nfschina.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <734b846f-3235-f2e3-db06-6e852803cd7f@nfschina.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=qmTXXrFz0E6R4ltZ86kan94IWacvSfn7Y1jZEOiQyFo=; b=vs2gmnkNvAn9GHzNb9dS764WOe
 DB1It/rw3/dNF0wR12aINRAE5VH3Xt406ctOWfh1l5GT6vtm5AcmZbgSdQF8qmpo+Efh/4O0T90dP
 HB4FXssXprb06ZNzlqzzAY1IT02lN/B2p6neqT6ceHbAKSNOJSZHouYFbj3cQofBagHc=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=vs2gmnkN
Subject: Re: [Intel-wired-lan] [PATCH net-next 00/10] Remove unnecessary
 (void*) conversions
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
Cc: irusskikh@marvell.com, kernel-janitors@vger.kernel.org,
 linux@armlinux.org.uk, edumazet@google.com, iyappan@os.amperecomputing.com,
 anthony.l.nguyen@intel.com, quan@os.amperecomputing.com,
 Hao Lan <lanhao@huawei.com>, qiang.zhao@nxp.com, f.fainelli@gmail.com,
 jesse.brandeburg@intel.com, xeb@mail.ru, intel-wired-lan@lists.osuosl.org,
 yangyingliang@huawei.com, kuba@kernel.org, pabeni@redhat.com,
 yisen.zhuang@huawei.com, ansuelsmth@gmail.com, steve.glendinning@shawell.net,
 keyur@os.amperecomputing.com, mostrows@earthlink.net, salil.mehta@huawei.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, linux@rempel-privat.de,
 olteanv@gmail.com, linuxppc-dev@lists.ozlabs.org, davem@davemloft.net,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Hi, Hao Lan,
> 
> Sorry for that, I just compiled these patches in the mainline branch.
> I know now, it's also necessary to compile patches in net and net-next
> branch.
> Thanks for your reply!

net-next is also closed at the moment due to the merge window. Please
wait two weeks before reposting, by which time net-next will be open
again.

	Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
