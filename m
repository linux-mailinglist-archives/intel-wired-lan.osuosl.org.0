Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 606538C45DB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2024 19:17:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B638F4011F;
	Mon, 13 May 2024 17:17:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0ulYUGJtme1O; Mon, 13 May 2024 17:17:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 97F184042C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715620672;
	bh=kat9PfXQHTpWcmnzIUnLFRT8Ol171C09OwLL2tg1hrw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W5NybEYGX9H4+jyz4X+Dia+jLctcyFMxJdxo1olOJRIK/klVs952dKhEyV8+QQN2T
	 ShQAg7Zn7gjpjo2jI/8oVwq4GnUIi3mrcx1XXUozjPWHjSxJxodNj8RFYLIXK1gCTe
	 UbYbQwbZLyPvjy2bXs2+P3Jg3m/Weu+5snsXShxahzYhaaKi1kM5LzvGCtH4ENsy8P
	 1GfB/bNBLJ+lyetmP5T2VVwoYid6NO4zZW4FObR9SZ3nmvcKl56NvTv0A2s2jpTyoK
	 AjNI+ZvVkINtCHeYOQ5tP+gy0Z0lSrPT0VYkLnyCTpFc3sMv673ehGE8KtAfYk3rFo
	 VbvsxRVBwml7g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 97F184042C;
	Mon, 13 May 2024 17:17:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 757E01BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 17:17:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 60BD76087B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 17:17:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HzeH-NtuVTJo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2024 17:17:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6781B60863
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6781B60863
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6781B60863
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 17:17:49 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1s6ZIy-00FKAr-I1; Mon, 13 May 2024 19:17:40 +0200
Date: Mon, 13 May 2024 19:17:40 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Bagas Sanjaya <bagasdotme@gmail.com>
Message-ID: <b2897fda-08e8-40de-b78a-86e92bde41db@lunn.ch>
References: <ZkHSipExKpQC8bWJ@archie.me>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZkHSipExKpQC8bWJ@archie.me>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=kat9PfXQHTpWcmnzIUnLFRT8Ol171C09OwLL2tg1hrw=; b=trH6o5dcxGkLEy9v84ytt6FOIY
 kpCeijP2gdbDv0W3Bvhdj1zpaKTrLZ4rgImC8Rz2Ao8HVsxX4k73KQbJ7Hn0a011q7D1L3t44JQXP
 INwRLsIUmHJUoUQ1Wi+PAND3K4/ySulbQrgDoPErM9Ncy9cFnfpDzru4GoX9S8/Uqys4=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=trH6o5dc
Subject: Re: [Intel-wired-lan] Regression of e1000e (I219-LM) from 6.1.90 to
 6.6.30
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
Cc: Linux Regressions <regressions@lists.linux.dev>,
 lukas.probsthain@googlemail.com, Linux Networking <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 13, 2024 at 03:42:50PM +0700, Bagas Sanjaya wrote:
> Hi,
> 
> <lukas.probsthain@googlemail.com> reported on Bugzilla
> (https://bugzilla.kernel.org/show_bug.cgi?id=218826) regression on his Thinkpad
> T480 with Intel I219-LM:
> 
> > After updating from kernel version 6.1.90 to 6.6.30, the e1000e driver exhibits a regression on a Lenovo Thinkpad T480 with an Intel I219-LM Ethernet controller.

Could you try a git bisect between these two kernel versions? You
might be able to limit it to drivers/net/ethernet/intel/e1000e, which
only had around 15 patches.

     Andrew
