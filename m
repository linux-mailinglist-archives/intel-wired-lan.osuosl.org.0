Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DBBF58D237
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Aug 2022 05:05:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0CAE860A80;
	Tue,  9 Aug 2022 03:05:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0CAE860A80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660014348;
	bh=WheL/jpd34sPWjADObZ+H3zq5RXZ/SNnKyI85Tw/rtc=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Vo7Z7s4rvRSJ4DrZDdhCOWGP6TfdBGkrobenIP/ZJttk/2aQu4ziRd2X9ZaH96DNY
	 zTD/dhXEH43dUqUHLjHYio8Goc7TPOSYH/8nwKl9xFR8kM30Fou7v2OVpXgv5jxrnE
	 K4bBS40Y9l7eWFrG5xXFe4/proTc3CFEIzuFzEVogwHarUxKRz9LVIBfF1JhpHG6pu
	 72HGZLWhkswq5nu4vg1yYHVc8/n34wxVT38hSxd9Z3Ds0P76UaDOVzQkeHVkoIs1tB
	 59YjoWwVHylAqj98qe0LKcgPvAmnHHcZw/VOKgsqWxE9dFfl/EajcshN13UaCRn6si
	 3eXj3HFPG2jfg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eRCZamSuGvKd; Tue,  9 Aug 2022 03:05:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0102C60B32;
	Tue,  9 Aug 2022 03:05:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0102C60B32
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 93DC41BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 03:05:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7A7AB60B32
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 03:05:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A7AB60B32
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id owcS_ycQaspJ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Aug 2022 03:05:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D45BC60A80
Received: from zju.edu.cn (mail.zju.edu.cn [61.164.42.155])
 by smtp3.osuosl.org (Postfix) with ESMTP id D45BC60A80
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 03:05:40 +0000 (UTC)
Received: by ajax-webmail-mail-app3 (Coremail) ; Tue, 9 Aug 2022 11:05:19
 +0800 (GMT+08:00)
X-Originating-IP: [222.205.1.5]
Date: Tue, 9 Aug 2022 11:05:19 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: "Lin Ma" <linma@zju.edu.cn>
To: "Jakub Kicinski" <kuba@kernel.org>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.13 build 20210104(ab8c30b6)
 Copyright (c) 2002-2022 www.mailtech.cn zju.edu.cn
In-Reply-To: <20220808115511.5b574db2@kernel.org>
References: <20220808081050.25229-1-linma@zju.edu.cn>
 <20220808115511.5b574db2@kernel.org>
MIME-Version: 1.0
Message-ID: <35502986.7352e.18280905841.Coremail.linma@zju.edu.cn>
X-Coremail-Locale: en_US
X-CM-TRANSID: cC_KCgC3vQzwzvFiBWTEAg--.39254W
X-CM-SenderInfo: qtrwiiyqvtljo62m3hxhgxhubq/1tbiAwQCElNG3Hi-jgBBsW
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
 CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
 daVFxhVjvjDU=
Subject: Re: [Intel-wired-lan] [PATCH v0] idb: Add rtnl_lock to avoid data
 race
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
Cc: hawk@kernel.org, daniel@iogearbox.net, netdev@vger.kernel.org,
 john.fastabend@gmail.com, jesse.brandeburg@intel.com, ast@kernel.org,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 pabeni@redhat.com, davem@davemloft.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello there,

> 
> What about the disable path coming from sysfs? This looks incomplete to
> me. Perhaps take a look at commit 1e53834ce541 ("ixgbe: Add locking to
> prevent panic when setting sriov_numvfs to zero") for some inspiration.

Thanks for the advice, I sent the new version of the patch which uses a new spinlock to avoid race cases such as described in commit 1e53834ce541.

Additionally, I also keep the rtnl_lock to eliminate the races that come from netdev core. Although this can also be handled with the newly added spinlock, I found that adding the spinlock every time accessing the VF resources is not trivial.
(If you think that keep using the spinlock is better I will craft a new version of patch)

It seems that ixgbe_disable_sriov also suffers from the mentioned races from netdev core. If you think the rtnl_lock solution is fine, I will also send a patch for that driver too.

Thanks
Lin Ma
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
