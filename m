Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9B831524C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Feb 2021 16:03:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E5A0484AE1;
	Tue,  9 Feb 2021 15:03:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ApQM5GzPB9kl; Tue,  9 Feb 2021 15:03:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B37AE85B73;
	Tue,  9 Feb 2021 15:03:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CFC8B1BF3E5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Feb 2021 15:03:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C82EF84FDD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Feb 2021 15:03:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3O_Maf1gSNan for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Feb 2021 15:03:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
 [209.85.222.175])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6EDB884AE1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Feb 2021 15:03:22 +0000 (UTC)
Received: by mail-qk1-f175.google.com with SMTP id d85so18185274qkg.5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 09 Feb 2021 07:03:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=coverfire.com; s=google;
 h=message-id:subject:from:to:date:in-reply-to:references:user-agent
 :mime-version:content-transfer-encoding;
 bh=Ldc89grKQso4HC8jnnXMT03wGeLIELEIMCITAdmHXRM=;
 b=gKLUdXLcUQfjj4fcMwIyB8DvOJlZyfbmrMrzdsg+wjl8CDIKTskGnsCc9Oh9l62dDK
 mnkbKdENRiLOKs8H6NsuE6JrVS7nqHDuYDW+/U2fsDRKZlVCcsDZFwl05n7uL+Y65/ea
 iHSQPv1zxYBOeqdJi730wTMwEROQ/hvjVPQFhA2w77vmdUKF1sG2BduiKKZMio8hO2T7
 StN+w+Oz2nxGPV3aTS91LRxWp2OHHGvSIg2wLPzkIBsoh8l/e8H0ugX82DkttcSLC9Kj
 EDsnTNwpVxGZ9Z099PGFH9kDsQSWLe9SImOSxxrr6MpPN7rT3GobyRvJ5R9GULnChr9K
 k3lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=Ldc89grKQso4HC8jnnXMT03wGeLIELEIMCITAdmHXRM=;
 b=o7jGSmNgz+QmwjZSPRBxDAb737e/erZeYaaHgQhgELIJJRNPUDeexFSTqHFTJmksBm
 4CEGRzLz4klqFxr8XrnMz/DpgTlbF7+mJumSPVQGrM+eACh6Qmb5f2U48EoluFoaAgMF
 v+FtsbirUOxa/wW+LPTgP8l+iLRHkF/uHY22+M7xaU0Or5oTqRoqe91K7h0dUIB7KHBV
 HJdKbONaq0qkaBTgcvW9oyMOP84IvagOme8odr5QJay+SAWXr15wCJlsX8F5Q8nQr6uo
 7rDYLyoPB9BbH5irCcR9XLSxTidKjbf6o94VjAIaL0Vpfc3yeGxRZQltUY0TtzzNJC2Q
 3tXQ==
X-Gm-Message-State: AOAM5334UJzCVlzAhYizTxX1MNT2JzOKNycjd3fFrIZf98DeLulHAKtE
 gQYKhhptpl+9sUzAaQ08Fb2hBQ==
X-Google-Smtp-Source: ABdhPJw3J21xOku37+eI4SWZuo/9gkrEl4X0jIyLd/BH3k0BxgEku/+/86eLMc8UQTvFbnioAj19qQ==
X-Received: by 2002:a37:aa96:: with SMTP id
 t144mr22526947qke.127.1612883001220; 
 Tue, 09 Feb 2021 07:03:21 -0800 (PST)
Received: from ?IPv6:2607:f2c0:e56e:28c:5524:727c:ba55:9558?
 ([2607:f2c0:e56e:28c:5524:727c:ba55:9558])
 by smtp.gmail.com with ESMTPSA id 199sm2018191qkj.9.2021.02.09.07.03.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 07:03:20 -0800 (PST)
Message-ID: <d3f0614118192ba0df5ec0e845f61e092f187744.camel@coverfire.com>
From: Dan Siemon <dan@coverfire.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Date: Tue, 09 Feb 2021 10:03:16 -0500
In-Reply-To: <8c7d255047890290948cf51450b1f860e013b48c.camel@coverfire.com>
References: <fc55ca6fb012c9e36e53d2ab80d47894c38e85a8.camel@coverfire.com>
 <AB117487-C2C3-47EF-A3C4-FDCED9304282@intel.com>
 <8c7d255047890290948cf51450b1f860e013b48c.camel@coverfire.com>
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] 710/i40e, RSS and 802.1ad (double vlan)
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

On Sat, 2021-02-06 at 22:59 -0500, Dan Siemon wrote:
> On Sun, 2021-02-07 at 02:24 +0000, Brandeburg, Jesse wrote:
> > Hi Dan, I am asking around to see what we can do, will get back to
> > you in the coming week.
> 
> Thanks. I was looking at some old Intel presentations that sort of
> hinted that the PPPoE DDP profile might support double VLANs. I've
> been
> experimenting with that today without luck so far. The profile loads
> fine (via ethtool) but I don't see any change in the traffic
> distribution.
> 
> The GTP DDP package documentations says:
> 
> "To enable RSS for GTPv1-U with the IPv4 payload we need to map
> packet
> classifier type 22 to the DPDK flow type. Flow types are defined in
> rte_eth_ctrl.h; the first 21 are in use in DPDK 17.11 and so can map
> to
> flows 22 and up. After mapping to a flow type, we can start to port
> again and enable RSS for flow type 22:"
> 
> I haven't been able to find anything that hints at how to do
> something
> like that outside of DPDK.

I loaded the PPP DDP profile via the DPDK tools. Looking at the list of
protocols supported via 'ddp get info' it looks like they don't do
anything with VLANs:

List of used protocols:
  12: IPV4
  13: IPV6
  15: GRENAT
  17: TCP
  18: UDP
  19: SCTP
  20: ICMP
  22: L2TPv2CTRL
  23: ICMPV6
  26: L2TPv2
  27: L2TPv2PAY
  28: PPPoL2TPv2
  29: PPPoE
  33: PAY2
  34: PAY3
  35: PAY4
  44: IPV4FRAG
  48: IPV6FRAG
  52: OIPV4
  53: OIPV6

I found the presentation linked below which introduces DDP and talks
about ctag, ctag in the context of PPPoE.

https://www.slideshare.net/MichelleHolley1/enabling-new-protocol-processing-with-dpdk-using-dynamic-device-personalization

Given some of the complex parsing that the GTP and PPP DDP profiles do,
I suspect the hardware is capable of doing what I require.

For clarity, what I need is the ability to skip 0,1,2 VLAN headers
(802.1a or 802.1ad) and parse the IP/IPv6 flow to get the RSS hash and
spread the traffic across queues. Currently it only handles one VLAN.

Nested VLANs are very common in the service provider space.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
