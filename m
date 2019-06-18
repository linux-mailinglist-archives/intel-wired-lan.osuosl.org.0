Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2C24A307
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jun 2019 15:58:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CFE0A846AD;
	Tue, 18 Jun 2019 13:58:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IowriuW-KUgN; Tue, 18 Jun 2019 13:58:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D7C9484BA5;
	Tue, 18 Jun 2019 13:58:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E687E1BF2AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2019 13:58:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DDF00850EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2019 13:58:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sePMbhtEPz5Q for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jun 2019 13:58:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B5769845C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2019 13:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3u1T598CsM8u4R2gZtMhFj9NuAaqaJhlE6GdTppi4nk=; b=vZs4hCUzcCwimk0bivuFBiZos/
 Ol9pTpCRcs1I+K1UT0aO73Ruho5RNdJ5B7S82/aUzmihXenb3DhOeBj1/9b+21U+4L+EGlSUd2BFY
 r19y7ZzrGPTvFKjMbHp5XBhSJlEmtijAY4KjBKEsGS1JMm7vare79exvVzqcjWlQymXc=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hdEcz-0000h4-OY; Tue, 18 Jun 2019 15:58:25 +0200
Date: Tue, 18 Jun 2019 15:58:25 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Artem Bityutskiy <dedekind1@gmail.com>
Message-ID: <20190618135825.GC18088@lunn.ch>
References: <20190618115513.99661-1-dedekind1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618115513.99661-1-dedekind1@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [Intel-wired-lan] [PATCH 1/2] net: intel: igb: minor ethool
 regdump amendment
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 18, 2019 at 02:55:12PM +0300, Artem Bityutskiy wrote:
> From: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>

Hi Artem.

The subject line is missing a t in ethtool.

> Signed-off-by: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>

Otherwise

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
