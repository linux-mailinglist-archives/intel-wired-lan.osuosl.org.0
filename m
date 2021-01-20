Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29EF42FC79B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jan 2021 03:17:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C9DD886FAA;
	Wed, 20 Jan 2021 02:17:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z926PlTEUgjE; Wed, 20 Jan 2021 02:17:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3AFE98693C;
	Wed, 20 Jan 2021 02:17:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6AF591BF5A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 02:17:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 66732859D1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 02:17:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VmvJ6czWTpY0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Jan 2021 02:17:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 60232858F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 02:17:14 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6CA552245C;
 Wed, 20 Jan 2021 02:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611109034;
 bh=tzBRI2iJqo9Fxtv0cbrzLs20Vy92BRbkv584AvZjLko=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=cv+mfRRcsnT4towJsQZiceljfbpfCHnyH35v7Wp6Y6YaQpE9DwvU0dJATGr//52Zh
 7AjlP5lU0BMdvqaTTGJ0xca65nj4Ttc6x5PVnqGG2JC/F+ynF6iSHbDp3hj0lhH3rI
 TcNZS4t4vgVG0jg2bsZ4rj0AA54zrJ72VfLkkBsrWIRIgReOJHlKVXsJ2OL0t+22Yj
 LMustdP47F0s3O1hnvt+1CK5jepcMkzA48k4/w8A0rdkSOZ0nmlhL8Sxf8jmecxEeY
 wmquEIZZRd5qVCCw+AbgStqpnfhV3SQXqmVignf3tT11JmGatgHL7yFm8Sgw0nvQO2
 ttURDrx/ES82Q==
Date: Tue, 19 Jan 2021 18:17:12 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20210119181712.18f0ee24@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210119004028.2809425-2-vinicius.gomes@intel.com>
References: <20210119004028.2809425-1-vinicius.gomes@intel.com>
 <20210119004028.2809425-2-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/8] ethtool: Add support
 for configuring frame preemption
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
Cc: Jose.Abreu@synopsys.com, mkubecek@suse.cz, jiri@resnulli.us,
 vladimir.oltean@nxp.com, po.liu@nxp.com, jhs@mojatatu.com, m-karicheri2@ti.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 18 Jan 2021 16:40:21 -0800 Vinicius Costa Gomes wrote:
> +  ====================================  ======  ==========================
> +  ``ETHTOOL_A_CHANNELS_HEADER``         nested  request header

ETHTOOL_A_PREEMPT_HEADER

> +  ====================================  ======  ==========================
> +
> +Kernel response contents:
> +
> +  =====================================  ======  ==========================
> +  ``ETHTOOL_A_CHANNELS_HEADER``          nested  reply header

here as well

> +  ``ETHTOOL_A_PREEMPT_ENABLED``          u8      frame preemption enabled
> +  ``ETHTOOL_A_PREEMPT_ADD_FRAG_SIZE``    u32     Min additional frag size
> +  =====================================  ======  ==========================
> +
> +``ETHTOOL_A_PREEMPT_ADD_FRAG_SIZE`` configures the minimum non-final
> +fragment size that the receiver device supports.
> +
> +PREEMPT_SET
> +============
> +
> +Sets frame preemption parameters.
> +
> +Request contents:
> +
> +  =====================================  ======  ==========================
> +  ``ETHTOOL_A_CHANNELS_HEADER``          nested  reply header

and here

> +  ``ETHTOOL_A_PREEMPT_ENABLED``          u8      frame preemption enabled
> +  ``ETHTOOL_A_PREEMPT_ADD_FRAG_SIZE``    u32     Min additional frag size
> +  =====================================  ======  ==========================

> +struct netlink_ext_ack;

Let's move it all the way to the top, right after header includes, so
we don't have to move it again.

> +/**
> + * Convert from a Frame Preemption Additional Fragment size in bytes
> + * to a multiplier. The multiplier is defined as:
> + *	"A 2-bit integer value used to indicate the minimum size of
> + *	non-final fragments supported by the receiver on the given port
> + *	associated with the local System. This value is expressed in units
> + *	of 64 octets of additional fragment length."
> + *	Equivalent to `30.14.1.7 aMACMergeAddFragSize` from the IEEE 802.3-2018
> + *	standard.

Please double check the correct format for kdoc:

https://www.kernel.org/doc/html/latest/doc-guide/kernel-doc.html

This comment should also be next to the definition of the function, 
not in the header.

> + * @frag_size: minimum non-final fragment size in bytes
> + *
> + * Returns the multiplier.
> + */
> +u8 ethtool_frag_size_to_mult(u32 frag_size);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
