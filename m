Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEF691AD4F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2024 18:58:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DA4326075A;
	Thu, 27 Jun 2024 16:58:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0BKDKMvgRdUt; Thu, 27 Jun 2024 16:58:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 22C6F60770
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719507487;
	bh=PenMp7vS8XlisAM41TFuzVihkYFaLUEzYIJvh+AQm4M=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WRr0OqsogZp+PFPry/x2LggM/flGwCDzE2GaJhR4+wQdZZc1hTECxVcfh9ge4dKMG
	 wqRe/NPxbIbY1hr2ukQZRmXXGCTu3Oo03YwTvnHtZ5LlhEVYjRnqc+scRP8R5HDkN+
	 IUFOtlcN5DQMprBKc+xctWdNlzAQsHDLqvpwMNKWE+B/981XnKQ269y2b073538a5l
	 gIbWKkSSHXEZSdJb3w8tV5h6z1btst96RFgdrFW5VCB1SSXulhSHaR8xeJncfWqtR8
	 5mPdcDjJCQHdnN4ChsKK9ClSi6o5AJ2yBoZfXT4zbrOJCgePGlYanQMNQymbTBf/Kw
	 nciXBsZRp9eAA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 22C6F60770;
	Thu, 27 Jun 2024 16:58:07 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2F29F1BF3E8
 for <intel-wired-lan@osuosl.org>; Thu, 27 Jun 2024 16:58:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1918A840BB
 for <intel-wired-lan@osuosl.org>; Thu, 27 Jun 2024 16:58:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rTvTroEKgyp4 for <intel-wired-lan@osuosl.org>;
 Thu, 27 Jun 2024 16:58:04 +0000 (UTC)
X-Greylist: delayed 522 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 27 Jun 2024 16:58:03 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 095CD83F25
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 095CD83F25
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=88.99.2.238;
 helo=mx0.woks-audio.com; envelope-from=benjamin.steinke@woks-audio.com;
 receiver=<UNKNOWN> 
Received: from mx0.woks-audio.com (mx0.woks-audio.com [88.99.2.238])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 095CD83F25
 for <intel-wired-lan@osuosl.org>; Thu, 27 Jun 2024 16:58:03 +0000 (UTC)
From: Benjamin Steinke <benjamin.steinke@woks-audio.com>
To: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
Date: Thu, 27 Jun 2024 18:49:16 +0200
Message-ID: <3253130.2gtjKKCVsX@desktop>
In-Reply-To: <878qyq9838.fsf@kurt.kurt.home>
References: <20230804084051.14194-1-sriram.yagnaraman@est.tech>
 <878qyq9838.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-ClientProxiedBy: EX1.jas.loc (10.100.2.20) To EX1.jas.loc (10.100.2.20)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=woks-audio.com; 
 h=cc:cc:content-transfer-encoding:content-type:content-type
 :date:from:from:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=woks; bh=PenMp7vS8XlisAM41TFu
 zVihkYFaLUEzYIJvh+AQm4M=; b=lt3HoQarHo9VA33X7Km44EYZTJn6MR3RS5ju
 rGkivuCCAtTecsXv27sxu/+Ly0vBKd54+wsKHEPeoo/fdlVvYH/+9ZX/69bFcP8+
 ID4IeSVKR04lRSgCMQMUrJ8gOMNpwEbnpJdy/PB1oG0vsbfs9b1XuDAEhsSQnvom
 xIX1IbeUQbvJ0HgJaFImNkt4VQQYKfdyWzhaKGgyyfWOn0IjjmDGW/BulTFAEQA3
 U+TjFRObSC55+3aiU3XOgEwHNeB6F3QuVXMpvQzstyUAqhQEc0YNwWuBMV2PUqnj
 aiTMcl00EPJzsBoIeA0Ak1obnUSYo70cSa5myqjl6t+sWU1bUw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=woks-audio.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=woks-audio.com header.i=@woks-audio.com
 header.a=rsa-sha256 header.s=woks header.b=lt3HoQar
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/4] igb: Add support for
 AF_XDP zero-copy
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, intel-wired-lan@osuosl.org,
 Kurt Kanzenbach <kurt@linutronix.de>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Sriram Yagnaraman <sriram.yagnaraman@est.tech>,
 =?ISO-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thursday, 27 June 2024, 09:07:55 CEST, Kurt Kanzenbach wrote:
> Hi Sriram,
> 
> On Fri Aug 04 2023, Sriram Yagnaraman wrote:
> > The first couple of patches adds helper funcctions to prepare for AF_XDP
> > zero-copy support which comes in the last couple of patches, one each
> > for Rx and TX paths.
> > 
> > As mentioned in v1 patchset [0], I don't have access to an actual IGB
> > device to provide correct performance numbers. I have used Intel 82576EB
> > emulator in QEMU [1] to test the changes to IGB driver.
> 
> I gave this patch series a try on a recent kernel and silicon
> (i210). There was one issue in igb_xmit_zc(). But other than that it
> worked very nicely.

Hi Kurt and Sriram,

I recently tried the patches on a 6.1 kernel. On two different devices i210 & 
i211 I couldn't see any packets being transmitted on the wire. Perhaps caused 
by the issue in igb_xmit_zc() you mentioned, Kurt? Can you share your findings, 
please?

RX seemed to work on first sight.

> It seems like it hasn't been merged yet. Do you have any plans for
> continuing to work on this?

I can offer to do testing and debugging on real hardware if this helps.

Thanks,
Benjamin




