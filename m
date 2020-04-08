Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 210481A3671
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Apr 2020 17:01:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C3A6887CDE;
	Thu,  9 Apr 2020 15:01:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FJ-dr3aqGkNz; Thu,  9 Apr 2020 15:00:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7E76387B5D;
	Thu,  9 Apr 2020 15:00:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A76E91BF3C9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2020 16:55:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A19F08699B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2020 16:55:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8R7rvLicUoyj for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2020 16:55:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1AD0686999
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2020 16:55:25 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id v23so3321183pfm.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 08 Apr 2020 09:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=iN6v1y3bUGTA3QAXmoYx9KRomlhUAmrnaSxlwoSLx14=;
 b=RV+bouxc7T7nCtEfiH6LQkUvzxPx6z19Q7Sl8s+bVPtUjD5EcEJmeMpNLEL9oCH88h
 Di770a0NPMoYcfAWno/89FiotZ7urwA88aFxASh2QU9kOrdOEOATJPA56Qo2nQtBCyg1
 se9jGWW/uzL7E+pfwfGlA+45452Lx0JxarKQl59mXYl9pxAZiwHZjrnznbek6awOrQe/
 tw+Ly1XXYlsuozcr7Tp6/m7fHWn7pHPkc4FXZim5DzgdahsJHNnW8m2ecwZZTTdn3lso
 /QIYuCiXUp80gJczr8uxZ4m7j1O4u1MVT0rHKJzmJe7OVD+3te3fVpkkWUyB4OTkMKtd
 nRWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=iN6v1y3bUGTA3QAXmoYx9KRomlhUAmrnaSxlwoSLx14=;
 b=mEirOqhSBZVyQbBFl7osRFhjGqLqrRMMzKwguc1AmufjmgqFIXWSOCj62FenMQ5U/F
 xmpNKL7nBAR8OXlEIDwm+13nzXS4ZhqFgizTy/NvwV4+bbe7yxxeBvumgfQdibmOCKiC
 RsdUw1cdadsqKGoMWfIrer1Bb9PCxOkDq1/t4vVt/wEjpvKgvpHRb/4eH6yv00BIChFk
 /hUdEelPExjTU+OzrMI2Obn1OkLdGMBTeNhLErjxR3tHpYN5xPE4jqyF5xLcYfyNF7Vy
 aqEwymyAoNjJUaSej4GNg4s87Gk4WfIdLwvgMkhXU8e5fKNXjYkN767QPkjBirOewsIk
 3OUw==
X-Gm-Message-State: AGi0Pua/QIijz43dUwzAfLBlBKpI1f2QywR3NpQmxAfqim4yfEwKjwU2
 EXAfXCL1XPq99jDQHgUOmds=
X-Google-Smtp-Source: APiQypLa/L3StXHwyb5YsmgRtv1L8s0LdE+QZfIRCBwHwMqCeOpFX/AlTxWi71aR3aICTr7OnDOr5g==
X-Received: by 2002:a63:7b1a:: with SMTP id w26mr7403210pgc.298.1586364924586; 
 Wed, 08 Apr 2020 09:55:24 -0700 (PDT)
Received: from ast-mbp ([2620:10d:c090:400::5:c144])
 by smtp.gmail.com with ESMTPSA id p4sm16955295pfg.163.2020.04.08.09.55.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 09:55:23 -0700 (PDT)
Date: Wed, 8 Apr 2020 09:55:19 -0700
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <20200408165519.da6dr5mclqol6g26@ast-mbp>
References: <158634658714.707275.7903484085370879864.stgit@firesoul>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158634658714.707275.7903484085370879864.stgit@firesoul>
X-Mailman-Approved-At: Thu, 09 Apr 2020 15:00:49 +0000
Subject: Re: [Intel-wired-lan] [PATCH RFC v2 00/33] XDP extend with
 knowledge of frame size
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
Cc: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 Jason Wang <jasowang@redhat.com>, GR-everest-linux-l2@marvell.com,
 thomas.petazzoni@bootlin.com, Arthur Kiyanovski <akiyano@amazon.com>,
 Wei Liu <wei.liu@kernel.org>, Stephen Hemminger <sthemmin@microsoft.com>,
 Ioana Radulescu <ruxandra.radulescu@nxp.com>,
 Toshiaki Makita <toshiaki.makita1@gmail.com>,
 Saeed Mahameed <saeedm@mellanox.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, gtzalik@amazon.com,
 Sunil Goutham <sgoutham@marvell.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Ariel Elior <aelior@marvell.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Michael Chan <michael.chan@broadcom.com>,
 Andy Gospodarek <andrew.gospodarek@broadcom.com>, bpf@vger.kernel.org,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Daniel Borkmann <borkmann@iogearbox.net>, zorik@amazon.com,
 netdev@vger.kernel.org, Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Mao Wenan <maowenan@huawei.com>, Robert Richter <rrichter@marvell.com>,
 David Ahern <dsahern@gmail.com>, sameehj@amazon.com,
 Andy Gospodarek <gospo@broadcom.com>, Tariq Toukan <tariqt@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Apr 08, 2020 at 01:50:34PM +0200, Jesper Dangaard Brouer wrote:
> RFC-note: This is only an RFC because net-next is closed.
> - Please ACK patches you like, then I will collect those for later.
> 
> XDP have evolved to support several frame sizes, but xdp_buff was not
> updated with this information. This have caused the side-effect that
> XDP frame data hard end is unknown. This have limited the BPF-helper
> bpf_xdp_adjust_tail to only shrink the packet. This patchset address
> this and add packet tail extend/grow.
> 
> The purpose of the patchset is ALSO to reserve a memory area that can be
> used for storing extra information, specifically for extending XDP with
> multi-buffer support. One proposal is to use same layout as
> skb_shared_info, which is why this area is currently 320 bytes.
> 
> When converting xdp_frame to SKB (veth and cpumap), the full tailroom
> area can now be used and SKB truesize is now correct. For most
> drivers this result in a much larger tailroom in SKB "head" data
> area. The network stack can now take advantage of this when doing SKB
> coalescing. Thus, a good driver test is to use xdp_redirect_cpu from
> samples/bpf/ and do some TCP stream testing.

I did a quick look through the patches. Overall looks good to me.
Nice to see selftests as well.
If you can add an xdp selftest that uses generic xdp on lo or veth
that would be awesome.
I rarely run test_xdp*.sh tests, but run test_progs on every commit.
So having more comprehensive xdp test as part of test_progs will help us
catch breakage sooner.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
