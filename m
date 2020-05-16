Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A6EC61D88D7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 May 2020 22:07:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1A7382037E;
	Mon, 18 May 2020 20:07:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A64e2HziLq7U; Mon, 18 May 2020 20:07:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 73FAF21538;
	Mon, 18 May 2020 20:07:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0A7371BF36C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 21:03:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EE82188684
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 21:03:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H17S6JXtUwz1 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 21:03:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com
 [209.85.218.42])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EF4128867A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 21:03:52 +0000 (UTC)
Received: by mail-ej1-f42.google.com with SMTP id e2so5385081eje.13
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 14:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ws6axd/Aepsy0S9ene5LWIHvKeAxR5u9L8ytIPkfwAM=;
 b=mrZSxPWUIraWG5QkSf6SRCPvFHTNNvYCEw5vRRqiZtVJ6E0uvb0zYUZYiH/4IQm+R5
 09xkDHBZUUdEocX1wrdMBZijqpNwfsK+S81+2hczaBpYrg4E1UL8UN9Tl+kkwhXrYReg
 NJSwCuLZYrDuAVDNzcED0tkB6GMiuYlzBjgIRjuC+Kni26ns0XCoOTjaGIevPrl2cd98
 XMbkubIbV5lV8EvxX6YgVN7avVLhh0wUwylDUxK3n0rxksFYoDei2aov6IXvB6ulPU8Z
 yjFrojQahWSNTNJHTaI5ReRjklAAR1a2q/6IJ4ZaKdpH/9ccct3r6Zhj4FfnGs7QmKQO
 G9rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ws6axd/Aepsy0S9ene5LWIHvKeAxR5u9L8ytIPkfwAM=;
 b=GxVgcfGHEzgSxdtnoIpr08Jqz9osJbca6p4ZZ+5sRRu6cAdNGEQSc6tu1/5uVfvcDt
 rTRyfbdzcEV4BjxJmFwqd/QtIaxZe3ovAmAUplQm9JztbMosfeTxona9V7Tcdr7/Sb++
 XYJfM9qWKjdssryFYKKoCSCU180sL23ocl8IEv67mGAXQo+4nNjD46OpEM8OQgujcJMm
 1IACJP3x9owIY7O+i3SBYEBxb0+BXLTnl2XhtpzXVg00nZgoZ0adSn861Ss0y51L7cAn
 r23DYS57V2C4GcdejXiJWPRWFhobr5FNYeDQYnR5w9RDHn9u6+iSeNezng/+QUabJDDu
 LUng==
X-Gm-Message-State: AOAM5302pi4rYma7V22mNSEMpKXqraFkgUIftIoV9xHtiGgOiYZvAPCm
 M9O8P0KDn73B5rHohmwXddkYny7oNRaNw3og8Fg=
X-Google-Smtp-Source: ABdhPJy4lzFA92G+xErq1tkkUhiEOQCXeFA54VJXvTPO5tal0v8lAf6jrX/Q8mY5AAylAkNMtI1QQbtB8fyXMt/GzOI=
X-Received: by 2002:a17:906:dbcf:: with SMTP id
 yc15mr8830061ejb.176.1589663031078; 
 Sat, 16 May 2020 14:03:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200516012948.3173993-1-vinicius.gomes@intel.com>
 <20200516.133739.285740119627243211.davem@davemloft.net>
In-Reply-To: <20200516.133739.285740119627243211.davem@davemloft.net>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Sun, 17 May 2020 00:03:39 +0300
Message-ID: <CA+h21hoNW_++QHRob+NbWC2k7y7sFec3kotSjTL6s8eZGGT+2Q@mail.gmail.com>
To: David Miller <davem@davemloft.net>
X-Mailman-Approved-At: Mon, 18 May 2020 20:07:01 +0000
Subject: Re: [Intel-wired-lan] [next-queue RFC 0/4] ethtool: Add support for
 frame preemption
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, netdev <netdev@vger.kernel.org>,
 Po Liu <po.liu@nxp.com>, Murali Karicheri <m-karicheri2@ti.com>,
 intel-wired-lan@lists.osuosl.org, Vladimir Oltean <vladimir.oltean@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi David,

On Sat, 16 May 2020 at 23:39, David Miller <davem@davemloft.net> wrote:
>
> From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Date: Fri, 15 May 2020 18:29:44 -0700
>
> > This series adds support for configuring frame preemption, as defined
> > by IEEE 802.1Q-2018 (previously IEEE 802.1Qbu) and IEEE 802.3br.
> >
> > Frame preemption allows a packet from a higher priority queue marked
> > as "express" to preempt a packet from lower priority queue marked as
> > "preemptible". The idea is that this can help reduce the latency for
> > higher priority traffic.
>
> Why do we need yet another name for something which is just basic
> traffic prioritization and why is this configured via ethtool instead
> of the "traffic classifier" which is where all of this stuff should
> be done?

It is not 'just another name for basic traffic prioritization'. With
basic traffic prioritization only, a high-priority packet still has to
wait in the egress queue of a switch until a (potentially large)
low-priority packet has finished transmission and has freed the
medium. Frame preemption changes that. Actually it requires hardware
support on both ends, because the way it is transmitted on the wire is
not compatible with regular Ethernet frames (it uses a special Start
Of Frame Delimiter to encode preemptible traffic).
I know we are talking about ridiculously low improvements in latency,
but the background is that Ethernet is making its way into the
industrial and process control fields, and for that type of
application you need to ensure minimally low and maximally consistent
end-to-end latencies. Frame preemption helps with the "minimally low"
part. The way it works is that typically there are 2 MACs per
interface (1 is "express" - equivalent to the legacy type, and the
other is "preemptible" - the new type) and this new IEEE 802.1Q clause
thing allows some arbitration/preemption event to happen between the
two MACs. When a preemption event happens, the preemptible MAC quickly
wraps up and aborts the frame it's currently transmitting (to come
back and continue later), making room for the express MAC to do its
thing because it's time-constrained. Then, after the express MAC
finishes, the preemptible MAC continues with the rest of the frame
fragments from where it was preempted.
As to why this doesn't go to tc but to ethtool: why would it go to tc?
You can't emulate such behavior in software. It's a hardware feature.
You only* (more or less) need to specify which traffic classes on a
port go to the preemptible MAC and which go to the express MAC. We
discussed about the possibility of extending tc-taprio to configure
frame preemption through it, but the consensus was that somebody might
want to use frame preemption as a standalone feature, without
scheduled traffic, and that inventing another qdisc for frame
preemption alone would be too much of a formalism. (I hope I didn't
omit anything important from the previous discussion on the topic)

Thanks,
-Vladimir
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
