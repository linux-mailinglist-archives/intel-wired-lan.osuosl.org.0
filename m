Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4304DD04E4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2019 02:49:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E7D64835D2;
	Wed,  9 Oct 2019 00:49:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ct6Jj61A4gFG; Wed,  9 Oct 2019 00:49:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6CF0483713;
	Wed,  9 Oct 2019 00:49:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ECAA61BF9B4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 00:49:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E89988770C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 00:49:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cTkeB+11JgP1 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2019 00:49:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A6A6286B2B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 00:49:32 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id 3so1008700qta.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Oct 2019 17:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=WepzXzTte12+Zryhvz2uw0bMesLDlFuZ+ZK8LrsbFP8=;
 b=WLi5KXz05pP7Sw00jeg4x93ZWXH/C6pfztk/5QvWfSZksh9esr+ycyHrT7rawNs9/8
 n35C1eYJgi7afekoIsrjbjNBM/4kMK9tAITBX+j/MuUzbmog8fuqzRma4RIh9kGdYzvD
 rbvoaV+km+gVgQh47VZKtwugXG4yybAfxtaNmXErr8rOI8CTZODNBZrkw67SFmxZbfAs
 xVgm2jcP41pZ/P1dXLBd7MxAjGOLgh27CS70kNccuu8XIlRB8edEln8LN3a1/ptBvMAa
 2imGOUyf0heWM7Yfq/ufaoZGXF8jICJfrRRo4pFIzYplcejR7607jJrj2hCSW5a2laCE
 oKpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=WepzXzTte12+Zryhvz2uw0bMesLDlFuZ+ZK8LrsbFP8=;
 b=KRqc8AdJps4Nm+PFmTGq6BXs72zxY54WwOHIReGMDLWS00ibec/LIhIsSMadKkx1tU
 T2id6j7EsvzMb5Z01oOBX4CFuBA+Gt5a0H4NdpvnTZrDOJA9yhZ6FL56uxmbLXcMBWj5
 rSU3sgOh5e6iqc2xfDj22JztucE7RT4Yb5sO592uYZe0HOec/c3Sgr6cpl2+MIF083Ah
 gAcmRGR5BmYUUbtHu5E5gdxFwcSqdWMX+ojIgNFgJnKvg7LzjeSTrzPlxGV6zl+OrUfv
 xacwG6iGPwHN0952vqoY6WZrZo6xkJHzNWhfePalU5PwI3OSsOXq3t40mrHP7/b1fkMq
 uxRw==
X-Gm-Message-State: APjAAAXFaKl6KgW5alZNkmbhr3WDkf00lXHTeAwMQGXPh7XxHd18hge4
 NDvNsv/5R97Ly/mflVgFQiKD5g==
X-Google-Smtp-Source: APXvYqzYhnSh3SLldsjxkUvyH1tg1oDkQ38sFtBZHRZ9gtflcgiSDdeGd+lNzYFjWKyCOI4rtfDmhw==
X-Received: by 2002:a0c:b59b:: with SMTP id g27mr1135087qve.184.1570582171452; 
 Tue, 08 Oct 2019 17:49:31 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id x19sm212674qkf.26.2019.10.08.17.49.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 17:49:31 -0700 (PDT)
Date: Tue, 8 Oct 2019 17:49:19 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Sridhar Samudrala <sridhar.samudrala@intel.com>
Message-ID: <20191008174919.2160737a@cakuba.netronome.com>
In-Reply-To: <1570515415-45593-1-git-send-email-sridhar.samudrala@intel.com>
References: <1570515415-45593-1-git-send-email-sridhar.samudrala@intel.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 0/4] Enable direct receive on
 AF_XDP sockets
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
Cc: maciej.fijalkowski@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, tom.herbert@intel.com, bpf@vger.kernel.org,
 bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon,  7 Oct 2019 23:16:51 -0700, Sridhar Samudrala wrote:
> This is a rework of the following patch series 
> https://lore.kernel.org/netdev/1565840783-8269-1-git-send-email-sridhar.samudrala@intel.com/#r
> that tried to enable direct receive by bypassing XDP program attached
> to the device.
> 
> Based on the community feedback and some suggestions from Bjorn, changed
> the semantics of the implementation to enable direct receive on AF_XDP
> sockets that are bound to a queue only when there is no normal XDP program
> attached to the device.
> 
> This is accomplished by introducing a special BPF prog pointer (DIRECT_XSK)
> that is attached at the time of binding an AF_XDP socket to a queue of a
> device. This is done only if there is no other XDP program attached to
> the device. The normal XDP program has precedence and will replace the
> DIRECT_XSK prog if it is attached later. The main reason to introduce a
> special BPF prog pointer is to minimize the driver changes. The only change
> is to use the bpf_get_prog_id() helper when QUERYING the prog id.
> 
> Any attach of a normal XDP program will take precedence and the direct xsk
> program will be removed. The direct XSK program will be attached
> automatically when the normal XDP program is removed when there are any
> AF_XDP direct sockets associated with that device.
> 
> A static key is used to control this feature in order to avoid any overhead
> for normal XDP datapath when there are no AF_XDP sockets in direct-xsk mode.

Don't say that static branches have no overhead. That's dishonest.

> Here is some performance data i collected on my Intel Ivybridge based
> development system (Intel(R) Xeon(R) CPU E5-2697 v2 @ 2.70GHz)
> NIC: Intel 40Gb ethernet (i40e)
> 
> xdpsock rxdrop 1 core (both app and queue's irq pinned to the same core)
>    default : taskset -c 1 ./xdpsock -i enp66s0f0 -r -q 1
>    direct-xsk :taskset -c 1 ./xdpsock -i enp66s0f0 -r -q 1
> 6.1x improvement in drop rate
> 
> xdpsock rxdrop 2 core (app and queue's irq pinned to different cores)
>    default : taskset -c 3 ./xdpsock -i enp66s0f0 -r -q 1
>    direct-xsk :taskset -c 3 ./xdpsock -i enp66s0f0 -r -d -q 1
> 6x improvement in drop rate
> 
> xdpsock l2fwd 1 core (both app and queue's irq pinned to the same core)
>    default : taskset -c 1 ./xdpsock -i enp66s0f0 -l -q 1
>    direct-xsk :taskset -c 1 ./xdpsock -i enp66s0f0 -l -d -q 1
> 3.5x improvement in l2fwd rate
> 
> xdpsock rxdrop 2 core (app and queue'sirq pinned to different cores)
>    default : taskset -c 3 ./xdpsock -i enp66s0f0 -l -q 1
>    direct-xsk :taskset -c 3 ./xdpsock -i enp66s0f0 -l -d -q 1
> 4.5x improvement in l2fwd rate

I asked you to add numbers for handling those use cases in the kernel
directly.

> dpdk-pktgen is used to send 64byte UDP packets from a link partner and 
> ethtool ntuple flow rule is used to redirect packets to queue 1 on the 
> system under test.

Obviously still nack from me.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
